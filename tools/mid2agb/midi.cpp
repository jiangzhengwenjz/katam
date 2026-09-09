// Copyright(c) 2016 YamaArashi
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#include <cstdio>
#include <cassert>
#include <string>
#include <vector>
#include <algorithm>
#include <memory>
#include <limits>
#include "midi.h"
#include "main.h"
#include "error.h"
#include "agb.h"
#include "tables.h"

enum class MidiEventCategory
{
    Control,
    SysEx,
    Meta,
    Invalid,
};

MidiFormat g_midiFormat;
std::int_fast32_t g_midiTrackCount;
std::int16_t g_midiTimeDiv;

int g_midiChan;
std::int32_t g_initialWait;

static long s_fileSize;
static long s_trackDataStart;
static long s_trackDataEnd = -1;
static std::vector<Event> s_seqEvents;
static std::vector<Event> s_trackEvents;
static std::int32_t s_absoluteTime;
static int s_blockCount = 0;
static int s_minNote;
static int s_maxNote;
static int s_runningStatus;
static int s_pendingNoteOffs[128];

bool EventCompare(const Event& event1, const Event& event2);
std::uint32_t ReadInt8();

void Seek(long offset)
{
    if (offset < 0 || offset > s_fileSize)
        RaiseError("invalid seek offset (%ld)", offset);
    if (std::fseek(g_inputFile, offset, SEEK_SET) != 0)
        RaiseError("failed to seek to %ld", offset);
}

void Skip(long offset)
{
    if (offset < 0)
        RaiseError("invalid skip length (%ld)", offset);

    long current = std::ftell(g_inputFile);
    if (current < 0)
        RaiseError("failed to query input position");

    std::uint64_t target = static_cast<std::uint64_t>(current) + static_cast<std::uint64_t>(offset);
    if (target > static_cast<std::uint64_t>(s_fileSize)
        || (s_trackDataEnd >= 0 && target > static_cast<std::uint64_t>(s_trackDataEnd)))
        RaiseError("event data extends beyond the MIDI track");

    if (std::fseek(g_inputFile, offset, SEEK_CUR) != 0)
        RaiseError("failed to skip %ld bytes", offset);
}

std::string ReadSignature()
{
    char signature[4];

    for (char& c : signature)
        c = static_cast<char>(ReadInt8());

    return std::string(signature, 4);
}

std::uint32_t ReadInt8()
{
    long current = std::ftell(g_inputFile);
    if (current < 0)
        RaiseError("failed to query input position");
    if (current >= s_fileSize || (s_trackDataEnd >= 0 && current >= s_trackDataEnd))
        RaiseError("unexpected EOF");

    int c = std::fgetc(g_inputFile);
    if (c < 0)
        RaiseError("unexpected EOF");

    return static_cast<std::uint32_t>(c);
}

std::uint32_t ReadDataByte()
{
    std::uint32_t value = ReadInt8();
    if (value >= 0x80)
        RaiseError("invalid MIDI data byte (0x%02X)", value);
    return value;
}

std::uint32_t ReadInt16()
{
    std::uint32_t val = 0;
    val |= ReadInt8() << 8;
    val |= ReadInt8();
    return val;
}

std::uint32_t ReadInt24()
{
    std::uint32_t val = 0;
    val |= ReadInt8() << 16;
    val |= ReadInt8() << 8;
    val |= ReadInt8();
    return val;
}

std::uint32_t ReadInt32()
{
    std::uint32_t val = 0;
    val |= ReadInt8() << 24;
    val |= ReadInt8() << 16;
    val |= ReadInt8() << 8;
    val |= ReadInt8();
    return val;
}

std::uint32_t ReadVLQ()
{
    std::uint32_t value = 0;

    // MID2AGB 1.06a accepts non-canonical VLQs longer than four bytes and
    // performs every shift in 32 bits.  Several real FE8U MIDI files use this
    // harmlessly to wrap a sequence timestamp back to an earlier value.
    // Keep the 32-bit parsing behavior, then reject only a final event stream
    // that remains non-chronological and would trigger the official binary's
    // out-of-bounds duration-table access.
    for (;;)
    {
        std::uint32_t byte = ReadInt8();
        value = (value << 7) | (byte & 0x7F);
        if ((byte & 0x80) == 0)
            return value;
    }
}

static std::int32_t SignedFromBits(std::uint32_t bits)
{
    if (bits <= static_cast<std::uint32_t>(std::numeric_limits<std::int32_t>::max()))
        return static_cast<std::int32_t>(bits);
    return -1 - static_cast<std::int32_t>(std::numeric_limits<std::uint32_t>::max() - bits);
}

static std::int32_t AddWrapped32(std::int32_t lhs, std::int32_t rhs)
{
    return SignedFromBits(static_cast<std::uint32_t>(lhs) + static_cast<std::uint32_t>(rhs));
}

static std::int32_t LookupWaitDuration(std::int32_t diff)
{
    if (diff >= 0 && diff <= 96)
        return g_noteDurationLUT[diff];

    if (!g_emulateOfficialWrappedWaitBug)
        RaiseError("MIDI events are not in chronological order");

    // MID2AGB 1.06a indexes 96 integers before its duration table for the
    // wrapped -96-tick delta in SA2's mus_final_ending. The adjacent bytes
    // decode as this value. Reproduce that one known result explicitly,
    // without performing an out-of-bounds read or signed overflow ourselves.
    if (diff == -96)
        return static_cast<std::int32_t>(0x27732527u);

    RaiseError("unsupported MID2AGB 1.06a wrapped-wait bug pattern");
}

void AdvanceTime()
{
    std::uint32_t bits = static_cast<std::uint32_t>(s_absoluteTime);
    bits += ReadVLQ();
    s_absoluteTime = SignedFromBits(bits);
}

void AddNoteDuration(Event& event, std::uint32_t delta)
{
    if (delta > static_cast<std::uint32_t>(std::numeric_limits<std::int32_t>::max() - event.param2))
        RaiseError("MIDI note duration is too large");
    event.param2 += static_cast<std::int32_t>(delta);
}

void ReadMidiFileHeader()
{
    s_trackDataEnd = -1;
    if (std::fseek(g_inputFile, 0, SEEK_END) != 0)
        RaiseError("failed to determine input size");
    s_fileSize = std::ftell(g_inputFile);
    if (s_fileSize < 0)
        RaiseError("failed to determine input size");

    Seek(0);

    if (ReadSignature() != "MThd")
        RaiseError("MIDI file header signature didn't match \"MThd\"");

    // MID2AGB always consumes the six standard header bytes and ignores
    // the declared header-length value.
    (void)ReadInt32();

    // MID2AGB reads this field through a signed 16-bit temporary.  Values
    // 0x8000-0xFFFF therefore behave as nonzero multi-track formats, while
    // positive formats 2 and above are rejected.
    std::int16_t midiFormat = static_cast<std::int16_t>(ReadInt16());

    if (midiFormat >= 2)
        RaiseError("unsupported MIDI format (%d)", midiFormat);

    g_midiFormat = midiFormat == 0 ? MidiFormat::SingleTrack : MidiFormat::MultiTrack;
    g_midiTrackCount = ReadInt16();
    g_midiTimeDiv = ReadInt16();

    if (g_midiTrackCount <= 0)
        RaiseError("MIDI file has no tracks");
    if (g_midiFormat == MidiFormat::SingleTrack && g_midiTrackCount != 1)
        RaiseError("format 0 MIDI must contain exactly one track");
    if (g_midiTimeDiv <= 0)
        RaiseError("unsupported MIDI time division (%d)", g_midiTimeDiv);
}

long ReadMidiTrackHeader(long offset)
{
    s_trackDataEnd = -1;
    Seek(offset);

    if (ReadSignature() != "MTrk")
        RaiseError("MIDI track header signature didn't match \"MTrk\"");

    std::uint32_t size = ReadInt32();
    s_trackDataStart = std::ftell(g_inputFile);

    std::uint64_t end = static_cast<std::uint64_t>(s_trackDataStart) + size;
    if (end > static_cast<std::uint64_t>(s_fileSize))
        RaiseError("MIDI track extends beyond the end of the file");
    s_trackDataEnd = static_cast<long>(end);

    return static_cast<long>(size) + 8;
}

void StartTrack()
{
    Seek(s_trackDataStart);
    s_absoluteTime = 0;
    s_runningStatus = 0;
}

void SkipEventData()
{
    Skip(ReadVLQ());
}

void DetermineEventCategory(MidiEventCategory& category, int& typeChan, int& size)
{
    typeChan = ReadInt8();

    if (typeChan < 0x80)
    {
        // If data byte was found, use the running status.
        ungetc(typeChan, g_inputFile);
        typeChan = s_runningStatus;
    }

    if (typeChan == 0xFF)
    {
        category = MidiEventCategory::Meta;
        size = 0;
        s_runningStatus = 0;
    }
    else if (typeChan == 0xF0 || typeChan == 0xF7)
    {
        category = MidiEventCategory::SysEx;
        size = 0;
        s_runningStatus = 0;
    }
    else if (typeChan >= 0xF0)
    {
        category = MidiEventCategory::Invalid;
        size = 0;
        s_runningStatus = 0;
    }
    else if (typeChan >= 0x80)
    {
        category = MidiEventCategory::Control;

        switch (typeChan >> 4)
        {
        case 0xC:
        case 0xD:
            size = 1;
            break;
        default:
            size = 2;
            break;
        }
        s_runningStatus = typeChan;
    }
    else
    {
        category = MidiEventCategory::Invalid;
    }
}

void MakeBlockEvent(Event& event, EventType type)
{
    event.type = type;
    event.param1 = s_blockCount++;
    event.param2 = 0;
}

std::string ReadEventText()
{
    char buffer[2] = {};
    std::uint32_t length = ReadVLQ();

    if (length <= 2)
    {
        // Use the bounds-checked byte reader instead of fread so a malformed
        // text event cannot consume bytes from the following MIDI track.
        for (std::uint32_t i = 0; i < length; ++i)
            buffer[i] = static_cast<char>(ReadInt8());
    }
    else
    {
        Skip(length);
        length = 0;
    }

    return std::string(buffer, length);
}

bool ReadSeqEvent(Event& event)
{
    AdvanceTime();
    event.time = s_absoluteTime;

    MidiEventCategory category;
    int typeChan;
    int size;

    DetermineEventCategory(category, typeChan, size);

    if (category == MidiEventCategory::Control)
    {
        Skip(size);
        return false;
    }

    if (category == MidiEventCategory::SysEx)
    {
        SkipEventData();
        return false;
    }

    if (category == MidiEventCategory::Invalid)
        RaiseError("invalid event");

    // meta event
    int metaEventType = ReadInt8();

    if (metaEventType >= 1 && metaEventType <= 7)
    {
        // text event
        std::string text = ReadEventText();

        if (text == "[")
            MakeBlockEvent(event, EventType::LoopBegin);
        else if (text == "][")
            MakeBlockEvent(event, EventType::LoopEndBegin);
        else if (text == "]")
            MakeBlockEvent(event, EventType::LoopEnd);
        else if (text == "]+")
        {
            // The reconstruction marker extends the official "]" marker.  When
            // marker handling is disabled, MID2AGB 1.06a still treats the text
            // as a normal loop end; -I only changes its same-tick ordering.
            MakeBlockEvent(event, g_honorEncodingMarkers
                ? EventType::LoopEndLate
                : EventType::LoopEnd);
        }
        else if (text == ":")
            MakeBlockEvent(event, EventType::Label);
        else
            return false;
    }
    else
    {
        switch (metaEventType)
        {
        case 0x2F: // end of track
            SkipEventData();
            event.type = EventType::EndOfTrack;
            event.param1 = 0;
            event.param2 = 0;
            break;
        case 0x51: // tempo
        {
            std::uint32_t length = ReadVLQ();
            // The official converter silently ignores an empty tempo meta
            // event.  Other invalid lengths are rejected here instead of
            // following the binary into malformed-track reads or hangs.
            if (length == 0)
                return false;
            if (length != 3)
                RaiseError("invalid tempo size");

            event.type = EventType::Tempo;
            event.param1 = 0;
            event.param2 = ReadInt24();
            if (event.param2 == 0)
                RaiseError("invalid zero tempo");
            break;
        }
        case 0x58: // time signature
        {
            if (ReadVLQ() != 4)
                RaiseError("invalid time signature size");

            int numerator = ReadInt8();
            int denominatorExponent = ReadInt8();

            if (denominatorExponent >= 16)
                RaiseError("invalid time signature denominator");

            Skip(2); // ignore other values

            int clockTicks = 96 * numerator * g_clocksPerBeat;
            int denominator = 1 << denominatorExponent;
            if (clockTicks % denominator != 0)
                RaiseError("invalid time signature");
            int timeSig = clockTicks / denominator;

            if (timeSig <= 0 || timeSig >= 0x10000)
                RaiseError("invalid time signature");

            event.type = EventType::TimeSignature;
            event.param1 = 0;
            event.param2 = timeSig;
            break;
        }
        default:
            SkipEventData();
            return false;
        }
    }

    return true;
}

void ReadSeqEvents()
{
    StartTrack();

    for (;;)
    {
        Event event = {};

        if (ReadSeqEvent(event))
        {
            s_seqEvents.push_back(event);

            if (event.type == EventType::EndOfTrack)
            {
                // MID2AGB globally orders sequence events, including wrapped
                // timestamps used by some authoring files.  The terminal EOT
                // record itself is deliberately excluded and stays last.
                std::stable_sort(s_seqEvents.begin(), s_seqEvents.end() - 1, EventCompare);
                return;
            }
        }
    }
}

bool CheckNoteEnd(Event& event, int& staleNoteOffs)
{
    AddNoteDuration(event, ReadVLQ());

    MidiEventCategory category;
    int typeChan;
    int size;

    DetermineEventCategory(category, typeChan, size);

    if (category == MidiEventCategory::Control)
    {
        int chan = typeChan & 0xF;

        if (chan != g_midiChan)
        {
            Skip(size);
            return false;
        }

        switch (typeChan & 0xF0)
        {
        case 0x80: // note off
        {
            int note = ReadDataByte();
            ReadInt8(); // ignore velocity; MID2AGB accepts the full byte range
            if (note == event.note)
            {
                if (staleNoteOffs > 0)
                    --staleNoteOffs;
                else
                    return true;
            }
            break;
        }
        case 0x90: // note on
        {
            int note = ReadDataByte();
            int velocity = ReadDataByte();
            if (note == event.note)
            {
                if (velocity != 0)
                    return true; // a retrigger terminates the previous note
                if (staleNoteOffs > 0)
                    --staleNoteOffs;
                else
                    return true;
            }
            break;
        }
        default:
            Skip(size);
            break;
        }

        return false;
    }

    if (category == MidiEventCategory::SysEx)
    {
        SkipEventData();
        return false;
    }

    if (category == MidiEventCategory::Meta)
    {
        int metaEventType = ReadInt8();
        SkipEventData();

        if (metaEventType == 0x2F)
            RaiseError("note doesn't end");

        return false;
    }

    RaiseError("invalid event");
}

void FindNoteEnd(Event& event, int staleNoteOffs)
{
    // Save the current file position and running status
    // which get modified by CheckNoteEnd.
    long startPos = ftell(g_inputFile);
    int savedRunningStatus = s_runningStatus;

    event.param2 = 0;

    while (!CheckNoteEnd(event, staleNoteOffs))
        ;

    Seek(startPos);
    s_runningStatus = savedRunningStatus;
}

bool ReadTrackEvent(Event& event)
{
    AdvanceTime();
    event.time = s_absoluteTime;

    MidiEventCategory category;
    int typeChan;
    int size;

    DetermineEventCategory(category, typeChan, size);

    if (category == MidiEventCategory::Control)
    {
        int chan = typeChan & 0xF;

        if (chan != g_midiChan)
        {
            Skip(size);
            return false;
        }

        switch (typeChan & 0xF0)
        {
        case 0x80: // note off
        {
            int note = ReadDataByte();
            ReadDataByte(); // velocity
            if (s_pendingNoteOffs[note] > 0)
                --s_pendingNoteOffs[note];
            return false;
        }
        case 0x90: // note on
        {
            int note = ReadDataByte();
            int velocity = ReadDataByte();

            if (velocity != 0)
            {
                event.type = EventType::Note;
                event.note = note;
                event.param1 = velocity;
                FindNoteEnd(event, s_pendingNoteOffs[note]);
                ++s_pendingNoteOffs[note];
                if (event.param2 > 0)
                {
                    if (note < s_minNote)
                        s_minNote = note;
                    if (note > s_maxNote)
                        s_maxNote = note;
                }
            }
            else
            {
                if (s_pendingNoteOffs[note] > 0)
                    --s_pendingNoteOffs[note];
                return false;
            }
            break;
        }
        case 0xB0: // controller event
            event.type = EventType::Controller;
            event.param1 = ReadInt8(); // controller index
            event.param2 = ReadInt8(); // value (MID2AGB accepts 0..255)
            // MID2AGB accepts the alternate controller range 42..63 as
            // aliases for 12..33, matching the SDK authoring convention.
            if (event.param1 >= 0x2A && event.param1 <= 0x3F)
                event.param1 -= 0x1E;
            break;
        case 0xC0: // instrument change
            event.type = EventType::InstrumentChange;
            event.param1 = ReadInt8(); // instrument
            event.param2 = 0;
            break;
        case 0xE0: // pitch bend
            event.type = EventType::PitchBend;
            event.param1 = ReadInt8();
            event.param2 = ReadInt8();
            break;
        default:
            Skip(size);
            return false;
        }

        return true;
    }

    if (category == MidiEventCategory::SysEx)
    {
        SkipEventData();
        return false;
    }

    if (category == MidiEventCategory::Meta)
    {
        int metaEventType = ReadInt8();

        // Track-local text metadata preserves sequence-encoding details that
        // standard MIDI otherwise discards.  "!" forces the next operation
        // to emit its opcode instead of using running-status compression.
        if (metaEventType >= 1 && metaEventType <= 7)
        {
            std::string text = ReadEventText();
            if (text == "!" && g_honorEncodingMarkers)
            {
                event.type = EventType::StatusReset;
                event.param1 = 0;
                event.param2 = 0;
                return true;
            }
            return false;
        }

        SkipEventData();

        if (metaEventType == 0x2F)
        {
            event.type = EventType::EndOfTrack;
            event.param1 = 0;
            event.param2 = 0;
            return true;
        }

        return false;
    }

    RaiseError("invalid event");
}

void ReadTrackEvents()
{
    StartTrack();

    s_trackEvents.clear();

    s_minNote = 0xFF;
    s_maxNote = 0;
    std::fill(std::begin(s_pendingNoteOffs), std::end(s_pendingNoteOffs), 0);

    for (;;)
    {
        Event event = {};

        if (ReadTrackEvent(event))
        {
            s_trackEvents.push_back(event);

            if (event.type == EventType::EndOfTrack)
                return;
        }
    }
}

bool EventCompare(const Event& event1, const Event& event2)
{
    if (event1.time < event2.time)
        return true;

    if (event1.time > event2.time)
        return false;

    unsigned event1Type = (unsigned)event1.type;
    unsigned event2Type = (unsigned)event2.type;

    if (event1.type == EventType::Note)
        event1Type += event1.note;

    if (event2.type == EventType::Note)
        event2Type += event2.note;

    if (event1Type < event2Type)
        return true;

    if (event1Type > event2Type)
        return false;

    if (event1.type == EventType::EndOfTie)
    {
        if (event1.note < event2.note)
            return true;

        if (event1.note > event2.note)
            return false;
    }

    return false;
}

bool IsSameOutputCommand(const Event& event1, const Event& event2)
{
    if (event1.time != event2.time || event1.type != event2.type)
        return false;

    switch (event1.type)
    {
    case EventType::Controller:
        return event1.param1 == event2.param1;
    case EventType::InstrumentChange:
    case EventType::PitchBend:
        return true;
    default:
        return false;
    }
}

void CoalesceAdjacentOutputCommands(std::vector<Event>& events)
{
    // MID2AGB performs this after its stable event ordering.  Only adjacent
    // events that would emit the same command are coalesced, and the final
    // value wins.  A different command between two values intentionally
    // prevents coalescing, even when all three share the same timestamp.
    std::size_t write = 0;
    for (std::size_t read = 0; read < events.size(); ++read)
    {
        if (write != 0 && IsSameOutputCommand(events[write - 1], events[read]))
            events[write - 1] = events[read];
        else
            events[write++] = events[read];
    }
    events.resize(write);
}

std::unique_ptr<std::vector<Event>> MergeEvents()
{
    std::unique_ptr<std::vector<Event>> events(new std::vector<Event>());

    unsigned trackEventPos = 0;
    unsigned seqEventPos = 0;

    while (s_trackEvents[trackEventPos].type != EventType::EndOfTrack
        && s_seqEvents[seqEventPos].type != EventType::EndOfTrack)
    {
        if (EventCompare(s_trackEvents[trackEventPos], s_seqEvents[seqEventPos]))
            events->push_back(s_trackEvents[trackEventPos++]);
        else
            events->push_back(s_seqEvents[seqEventPos++]);
    }

    while (s_trackEvents[trackEventPos].type != EventType::EndOfTrack)
        events->push_back(s_trackEvents[trackEventPos++]);

    while (s_seqEvents[seqEventPos].type != EventType::EndOfTrack)
        events->push_back(s_seqEvents[seqEventPos++]);

    // Push the EndOfTrack event with the larger time.
    if (EventCompare(s_trackEvents[trackEventPos], s_seqEvents[seqEventPos]))
        events->push_back(s_seqEvents[seqEventPos]);
    else
        events->push_back(s_trackEvents[trackEventPos]);

    return events;
}

void ConvertTimes(std::vector<Event>& events)
{
    const std::int64_t scale = 24LL * g_clocksPerBeat;

    for (Event& event : events)
    {
        std::int64_t convertedTime = (scale * event.time) / g_midiTimeDiv;
        if (convertedTime < 0 || convertedTime > std::numeric_limits<std::int32_t>::max())
            RaiseError("converted MIDI timestamp is too large");
        event.time = static_cast<std::int32_t>(convertedTime);

        if (event.type == EventType::Note)
        {
            event.param1 = g_noteVelocityLUT[event.param1];

            std::int64_t convertedDuration = (scale * event.param2) / g_midiTimeDiv;
            if (convertedDuration < 0 || convertedDuration > std::numeric_limits<std::int32_t>::max())
                RaiseError("converted MIDI note duration is too large");

            std::int32_t duration = static_cast<std::int32_t>(convertedDuration);
            if (duration == 0)
                duration = 1;

            if (!g_exactGateTime && duration < 96)
                duration = g_noteDurationLUT[duration];

            event.param2 = duration;
        }
    }
}

std::unique_ptr<std::vector<Event>> InsertTimingEvents(std::vector<Event>& inEvents)
{
    std::unique_ptr<std::vector<Event>> outEvents(new std::vector<Event>());

    // A valid but adversarially large timestamp can otherwise expand into
    // millions of synthetic measure/wait events and a very large assembly
    // file.  This limit is far above every real song in the tested corpora
    // while bounding memory, CPU, and output growth for hostile inputs.
    constexpr std::size_t kMaxSyntheticTimingEvents = 1u << 18;
    std::size_t syntheticTimingEvents = 0;

    Event timingEvent = {};
    timingEvent.time = 0;
    timingEvent.type = EventType::TimeSignature;
    timingEvent.param2 = 96 * g_clocksPerBeat;

    for (const Event& event : inEvents)
    {
        while (EventCompare(timingEvent, event))
        {
            if (syntheticTimingEvents++ >= kMaxSyntheticTimingEvents)
                RaiseError("MIDI timing expansion is too large");
            outEvents->push_back(timingEvent);
            if (g_emulateOfficialWrappedWaitBug)
            {
                timingEvent.time = AddWrapped32(timingEvent.time, timingEvent.param2);
            }
            else
            {
                std::int64_t nextTiming = static_cast<std::int64_t>(timingEvent.time)
                    + timingEvent.param2;
                if (nextTiming > std::numeric_limits<std::int32_t>::max())
                    RaiseError("MIDI timing event is too large");
                timingEvent.time = static_cast<std::int32_t>(nextTiming);
            }
        }

        if (event.type == EventType::TimeSignature)
        {
            if (g_agbTrack == 1 && event.param2 != timingEvent.param2)
            {
                Event originalTimingEvent = event;
                originalTimingEvent.type = EventType::OriginalTimeSignature;
                outEvents->push_back(originalTimingEvent);
            }
            timingEvent.param2 = event.param2;
            if (g_emulateOfficialWrappedWaitBug)
            {
                timingEvent.time = AddWrapped32(event.time, timingEvent.param2);
            }
            else
            {
                std::int64_t nextTiming = static_cast<std::int64_t>(event.time)
                    + timingEvent.param2;
                if (nextTiming > std::numeric_limits<std::int32_t>::max())
                    RaiseError("MIDI timing event is too large");
                timingEvent.time = static_cast<std::int32_t>(nextTiming);
            }
        }

        outEvents->push_back(event);
    }

    return outEvents;
}

std::unique_ptr<std::vector<Event>> SplitTime(std::vector<Event>& inEvents)
{
    std::unique_ptr<std::vector<Event>> outEvents(new std::vector<Event>());

    constexpr std::size_t kMaxSyntheticTimingEvents = 1u << 18;
    std::size_t syntheticTimingEvents = 0;
    std::int32_t time = 0;

    for (const Event& event : inEvents)
    {
        std::int32_t diff;
        if (g_emulateOfficialWrappedWaitBug)
        {
            diff = SignedFromBits(static_cast<std::uint32_t>(event.time)
                - static_cast<std::uint32_t>(time));
        }
        else
        {
            std::int64_t wideDiff = static_cast<std::int64_t>(event.time) - time;
            if (wideDiff < 0)
                RaiseError("MIDI events are not in chronological order");
            if (wideDiff > std::numeric_limits<std::int32_t>::max())
                RaiseError("MIDI wait is too large");
            diff = static_cast<std::int32_t>(wideDiff);
        }

        if (diff > 96)
        {
            int wholeNoteCount = (diff - 1) / 96;
            diff -= 96 * wholeNoteCount;

            if (static_cast<std::uint64_t>(syntheticTimingEvents)
                + static_cast<std::uint64_t>(wholeNoteCount) > kMaxSyntheticTimingEvents)
                RaiseError("MIDI timing expansion is too large");
            syntheticTimingEvents += static_cast<std::size_t>(wholeNoteCount);

            for (int i = 0; i < wholeNoteCount; i++)
            {
                time += 96;
                Event timeSplitEvent = {};
                timeSplitEvent.time = time;
                timeSplitEvent.type = EventType::TimeSplit;
                outEvents->push_back(timeSplitEvent);
            }
        }

        std::int32_t lutValue = LookupWaitDuration(diff);

        if (lutValue != diff)
        {
            if (syntheticTimingEvents++ >= kMaxSyntheticTimingEvents)
                RaiseError("MIDI timing expansion is too large");
            Event timeSplitEvent = {};
            timeSplitEvent.time = g_emulateOfficialWrappedWaitBug
                ? AddWrapped32(time, lutValue)
                : time + lutValue;
            timeSplitEvent.type = EventType::TimeSplit;
            outEvents->push_back(timeSplitEvent);
        }

        time = event.time;

        outEvents->push_back(event);
    }

    return outEvents;
}

std::unique_ptr<std::vector<Event>> CreateTies(std::vector<Event>& inEvents)
{
    std::unique_ptr<std::vector<Event>> outEvents(new std::vector<Event>());

    for (const Event& event : inEvents)
    {
        if (event.type == EventType::Note && event.param2 > 96)
        {
            Event tieEvent = event;
            tieEvent.param2 = -1;
            outEvents->push_back(tieEvent);

            std::int64_t tieEnd = static_cast<std::int64_t>(event.time) + event.param2;
            if (tieEnd > std::numeric_limits<std::int32_t>::max())
                RaiseError("MIDI note end is too large");
            Event eotEvent = {};
            eotEvent.time = static_cast<std::int32_t>(tieEnd);
            eotEvent.type = EventType::EndOfTie;
            eotEvent.note = event.note;
            outEvents->push_back(eotEvent);
        }
        else
        {
            outEvents->push_back(event);
        }
    }

    return outEvents;
}

void CalculateWaits(std::vector<Event>& events)
{
    g_initialWait = events[0].time;
    int wholeNoteCount = 0;

    for (unsigned i = 0; i < events.size() && events[i].type != EventType::EndOfTrack; i++)
    {
        if (g_emulateOfficialWrappedWaitBug)
        {
            events[i].time = SignedFromBits(static_cast<std::uint32_t>(events[i + 1].time)
                - static_cast<std::uint32_t>(events[i].time));
        }
        else
        {
            std::int64_t wait = static_cast<std::int64_t>(events[i + 1].time) - events[i].time;
            if (wait < 0 || wait > std::numeric_limits<std::int32_t>::max())
                RaiseError("MIDI events are not in chronological order");
            events[i].time = static_cast<std::int32_t>(wait);
        }

        if (events[i].type == EventType::TimeSignature)
        {
            events[i].type = EventType::WholeNoteMark;
            events[i].param2 = wholeNoteCount++;
        }
    }
}

int CalculateCompressionScore(std::vector<Event>& events, int index)
{
    int score = 0;
    std::uint8_t lastParam1 = events[index].param1;
    std::uint8_t lastVelocity = 0x80u;
    EventType lastType = events[index].type;
    std::int32_t lastDuration = 0x80000000;
    std::uint8_t lastNote = 0x40u;

    if (events[index].time > 0)
        score++;

    for (int i = index + 1; !IsPatternBoundary(events[i].type); i++)
    {
        if (events[i].type == EventType::Note)
        {
            int val = 0;

            if (events[i].note != lastNote)
            {
                val++;
                lastNote = events[i].note;
            }

            if (events[i].param1 != lastVelocity)
            {
                val++;
                lastVelocity = events[i].param1;
            }

            std::int32_t duration = events[i].param2;
            // The official pattern scorer represents TIE with the internal duration
            // state 127.  Use that value explicitly instead of relying on the
            // historical out-of-bounds lookup at index -1.
            std::int32_t encodedDuration = duration == -1 ? 127 : g_noteDurationLUT[duration];

            if (encodedDuration != lastDuration)
            {
                val++;
                lastDuration = encodedDuration;
            }

            if (duration != encodedDuration)
                val++;

            if (val == 0)
                val = 1;

            score += val;
        }
        else
        {
            lastDuration = 0x80000000;

            if (events[i].type == lastType)
            {
                if ((lastType != EventType::Controller && (int)lastType != 0x25 && lastType != EventType::EndOfTie) || events[i].param1 == lastParam1)
                {
                    score++;
                }
                else
                {
                    score += 2;
                }
            }
            else
            {
                score += 2;
            }
        }

        lastParam1 = events[i].param1;
        lastType = events[i].type;

        if (events[i].time)
            score++;
    }

    return score;
}

bool IsCompressionMatch(std::vector<Event>& events, int index1, int index2)
{
    if (events[index1].type != events[index2].type ||
        events[index1].note != events[index2].note ||
        events[index1].param1 != events[index2].param1 ||
        events[index1].time != events[index2].time)
        return false;

    index1++;
    index2++;

    do
    {
        if (events[index1] != events[index2])
            return false;

        index1++;
        index2++;
    } while (!IsPatternBoundary(events[index1].type));

    return IsPatternBoundary(events[index2].type);
}

void CompressWholeNote(std::vector<Event>& events, int index)
{
    for (int j = index + 1; events[j].type != EventType::EndOfTrack; j++)
    {
        while (events[j].type != EventType::WholeNoteMark)
        {
            j++;

            if (events[j].type == EventType::EndOfTrack)
                return;
        }

        bool beginsAtControlFlowBoundary =
            j > 0 &&
            (events[j - 1].type == EventType::LoopBegin ||
             events[j - 1].type == EventType::LoopEndBegin ||
             events[j - 1].type == EventType::Label);

        if ((!g_protectControlFlowPatterns || !beginsAtControlFlowBoundary) && IsCompressionMatch(events, index, j))
        {
            events[j].type = EventType::Pattern;
            events[j].param2 = events[index].param2 & 0x7FFFFFFF;
            events[index].param2 |= 0x80000000;
        }
    }
}

void Compress(std::vector<Event>& events)
{
    for (int i = 0; events[i].type != EventType::EndOfTrack; i++)
    {
        while (events[i].type != EventType::WholeNoteMark)
        {
            i++;

            if (events[i].type == EventType::EndOfTrack)
                return;
        }

        // The official converter does not use a measure beginning at a
        // sequence control label as a reusable pattern definition.  Such a
        // label (notably a loop begin) belongs to the control-flow boundary,
        // not to the musical contents of the following measure.
        bool beginsAtControlFlowBoundary =
            i > 0 &&
            (events[i - 1].type == EventType::LoopBegin ||
             events[i - 1].type == EventType::LoopEndBegin ||
             events[i - 1].type == EventType::Label);

        if ((!g_protectControlFlowPatterns || !beginsAtControlFlowBoundary) && CalculateCompressionScore(events, i) >= 6)
        {
            CompressWholeNote(events, i);
        }
    }
}

void ReadMidiTracks()
{
    long trackHeaderStart = 14;

    ReadMidiTrackHeader(trackHeaderStart);
    ReadSeqEvents();

    g_agbTrack = 1;

    for (int midiTrack = 0; midiTrack < g_midiTrackCount; midiTrack++)
    {
        trackHeaderStart += ReadMidiTrackHeader(trackHeaderStart);

        for (g_midiChan = 0; g_midiChan < 16; g_midiChan++)
        {
            ReadTrackEvents();

            if (s_minNote != 0xFF)
            {
#ifdef DEBUG
                printf("Track%d = Midi-Ch.%d\n", g_agbTrack, g_midiChan + 1);
#endif

                std::unique_ptr<std::vector<Event>> events(MergeEvents());

                // A sequence-level loop marker normally applies to every MIDI
                // channel.  Some original songs deliberately leave selected
                // AGB tracks linear, so remove those control events before
                // timing, wait splitting, and compression for such tracks.
                if (g_noLoopTracks.count(g_agbTrack) != 0)
                {
                    auto it = std::remove_if(events->begin(), events->end(), [](const Event& event)
                    {
                        return event.type == EventType::LoopBegin
                            || event.type == EventType::LoopEndBegin
                            || event.type == EventType::LoopEnd
                            || event.type == EventType::LoopEndLate;
                    });
                    events->erase(it, events->end());
                }

                // We don't need TEMPO in anything but track 1.
                if (g_agbTrack == 1)
                {
                    auto it = std::remove_if(s_seqEvents.begin(), s_seqEvents.end(), [](const Event& event) { return event.type == EventType::Tempo; });
                    s_seqEvents.erase(it, s_seqEvents.end());
                }

                ConvertTimes(*events);

                auto loopEndDelayIt = g_loopEndDelays.find(g_agbTrack);
                if (loopEndDelayIt != g_loopEndDelays.end() && loopEndDelayIt->second != 0)
                {
                    for (Event& event : *events)
                    {
                        if (event.type == EventType::LoopEnd
                            || event.type == EventType::LoopEndBegin
                            || event.type == EventType::LoopEndLate)
                        {
                            std::int64_t delayed = static_cast<std::int64_t>(event.time) + loopEndDelayIt->second;
                            if (delayed > std::numeric_limits<std::int32_t>::max())
                                RaiseError("delayed loop end is too large");
                            event.time = static_cast<std::int32_t>(delayed);
                        }
                    }
                    std::stable_sort(events->begin(), events->end(), EventCompare);
                }

                events = InsertTimingEvents(*events);
                events = CreateTies(*events);
                // As with the sequence track, the terminal EOT record stays
                // at the end even if a malformed wrapped timestamp makes it
                // earlier than preceding events.
                std::stable_sort(events->begin(), events->end() - 1, EventCompare);
                CoalesceAdjacentOutputCommands(*events);
                events = SplitTime(*events);
                CalculateWaits(*events);

                if (g_compressionEnabled)
                    Compress(*events);

                PrintAgbTrack(*events);

                g_agbTrack++;
            }
        }
    }
}
