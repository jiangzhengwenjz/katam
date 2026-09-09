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
#include <cstdlib>
#include <cstring>
#include <cctype>
#include <cassert>
#include <cerrno>
#include <limits>
#include <string>
#include <set>
#include <map>
#include "main.h"
#include "error.h"
#include "midi.h"
#include "agb.h"

FILE* g_inputFile = nullptr;
FILE* g_outputFile = nullptr;
std::string g_outputFilename;

std::string g_asmLabel;
int g_masterVolume = 127;
int g_voiceGroup = 0;
int g_priority = 0;
int g_reverb = -1;
int g_clocksPerBeat = 1;
bool g_exactGateTime = false;
bool g_compressionEnabled = true;
bool g_deferLoopBegin = false;
bool g_preferModLoop = false;
bool g_preferTempoOrVoiceLoop = false;
bool g_allowCodeInsideLoop = false;
bool g_deferredLoopFallbackToNote = false;
bool g_honorEncodingMarkers = false;
bool g_protectControlFlowPatterns = false;
bool g_emulateOfficialWrappedWaitBug = false;
std::set<int> g_noLoopTracks;
std::map<int, int> g_loopEndDelays;
std::map<int, int> g_loopJumpOffsets;

[[noreturn]] static void PrintUsage()
{
    std::printf(
        "Usage: MID2AGB name [options]\n"
        "\n"
        "    input_file  filename(.mid) of MIDI file\n"
        "   output_file  filename(.s) for AGB file (default:input_file)\n"
        "\n"
        "options  -L???  label for assembler (default:output_file)\n"
        "         -V???  master volume (default:127)\n"
        "         -G???  voice group number (default:0)\n"
        "         -P???  priority (default:0)\n"
        "         -R???  reverb (default:off)\n"
        "            -X  48 clocks/beat (default:24 clocks/beat)\n"
        "            -E  exact gate-time\n"
        "            -N  no compression\n"
        "            -A  defer loop before VOL instruction\n"
        "            -B  defer loop, preferring before MOD instruction\n"
        "            -C  defer loop, preferring before TEMPO or VOICE instructions\n"
        "            -D  allow reusing instructions from inside a loop to outside\n"
        "            -F  place a still-deferred loop before the first note\n"
        "            -I  honor reconstruction-only encoding markers\n"
        "         -J???  override loop jump target: track:byte-offset,...\n"
        "            -Q  protect sequence-control boundaries from pattern compression\n"
        "         -S???  suppress sequence loops on AGB track(s), comma-separated\n"
        "         -T???  delay loop end on AGB track(s): track:ticks,...\n"
        "            -U  emulate known MID2AGB 1.06a wrapped-wait bug (unsafe)\n"
    );
    std::exit(1);
}

static std::string StripExtension(std::string s)
{
    std::size_t slash = s.find_last_of("/\\");
    std::size_t dot = s.find_last_of('.');
    if (dot != std::string::npos && (slash == std::string::npos || dot > slash))
        s.erase(dot);
    return s;
}


static std::string BaseName(std::string s)
{
    std::size_t slash = s.find_last_of("/\\");
    if (slash != std::string::npos)
        s.erase(0, slash + 1);
    return StripExtension(s);
}

static bool ParseOfficialInt(const char *text, int& value)
{
    const unsigned char *p = reinterpret_cast<const unsigned char *>(text);
    while (*p != 0 && std::isspace(*p))
        ++p;

    bool negative = false;
    if (*p == '+' || *p == '-')
    {
        negative = (*p == '-');
        ++p;
    }
    if (!std::isdigit(*p))
        return false;

    std::uint32_t result = 0;
    while (std::isdigit(*p))
    {
        result = result * 10u + (*p - '0');
        ++p;
    }
    if (negative)
        result = 0u - result;
    value = static_cast<std::int32_t>(result);
    return true;
}

static const char *GetArgument(int argc, char **argv, int& index)
{
    assert(index >= 0 && index < argc);

    const char *option = argv[index];

    assert(option != nullptr);
    assert(option[0] == '-');

    // If there is text following the letter, return that.
    if (std::strlen(option) >= 3)
        return option + 2;

    // Otherwise, try to get the next arg.
    if (index + 1 < argc)
    {
        index++;
        return argv[index];
    }
    else
    {
        return nullptr;
    }
}

int main(int argc, char** argv)
{
    std::string inputFilename;
    std::string outputFilename;

    for (int i = 1; i < argc; i++)
    {
        const char *option = argv[i];

        if (option[0] == '-' && option[1] != '\0')
        {
            const char *arg;

            switch (std::toupper(option[1]))
            {
            case 'E':
                g_exactGateTime = true;
                break;
            case 'F':
                g_deferLoopBegin = true;
                g_deferredLoopFallbackToNote = true;
                break;
            case 'G':
                arg = GetArgument(argc, argv, i);
                if (arg == nullptr)
                    PrintUsage();
                ParseOfficialInt(arg, g_voiceGroup);
                break;
            case 'I':
                g_honorEncodingMarkers = true;
                break;
            case 'J':
            {
                arg = GetArgument(argc, argv, i);
                if (arg == nullptr)
                    PrintUsage();

                const char *pos = arg;
                while (*pos != '\0')
                {
                    char *end;
                    errno = 0;
                    long track = std::strtol(pos, &end, 10);
                    if (errno == ERANGE || end == pos || track <= 0
                        || track > std::numeric_limits<int>::max() || *end != ':')
                        PrintUsage();
                    pos = end + 1;
                    errno = 0;
                    long offset = std::strtol(pos, &end, 0);
                    if (errno == ERANGE || end == pos || offset < 0
                        || offset > std::numeric_limits<int>::max())
                        PrintUsage();
                    g_loopJumpOffsets[static_cast<int>(track)] = static_cast<int>(offset);
                    if (*end == '\0')
                        break;
                    if (*end != ',')
                        PrintUsage();
                    pos = end + 1;
                }
                break;
            }
            case 'L':
                arg = GetArgument(argc, argv, i);
                if (arg == nullptr)
                    PrintUsage();
                g_asmLabel = arg;
                break;
            case 'N':
                g_compressionEnabled = false;
                break;
            case 'P':
                arg = GetArgument(argc, argv, i);
                if (arg == nullptr)
                    PrintUsage();
                ParseOfficialInt(arg, g_priority);
                break;
            case 'Q':
                g_protectControlFlowPatterns = true;
                break;
            case 'R':
                arg = GetArgument(argc, argv, i);
                if (arg == nullptr)
                    PrintUsage();
                ParseOfficialInt(arg, g_reverb);
                break;
            case 'S':
            {
                arg = GetArgument(argc, argv, i);
                if (arg == nullptr)
                    PrintUsage();

                const char *pos = arg;
                while (*pos != '\0')
                {
                    char *end;
                    errno = 0;
                    long track = std::strtol(pos, &end, 10);
                    if (errno == ERANGE || end == pos || track <= 0
                        || track > std::numeric_limits<int>::max())
                        PrintUsage();
                    g_noLoopTracks.insert(static_cast<int>(track));
                    if (*end == '\0')
                        break;
                    if (*end != ',')
                        PrintUsage();
                    pos = end + 1;
                }
                break;
            }
            case 'T':
            {
                arg = GetArgument(argc, argv, i);
                if (arg == nullptr)
                    PrintUsage();

                const char *pos = arg;
                while (*pos != '\0')
                {
                    char *end;
                    errno = 0;
                    long track = std::strtol(pos, &end, 10);
                    if (errno == ERANGE || end == pos || track <= 0
                        || track > std::numeric_limits<int>::max() || *end != ':')
                        PrintUsage();
                    pos = end + 1;
                    errno = 0;
                    long delay = std::strtol(pos, &end, 10);
                    if (errno == ERANGE || end == pos || delay < 0
                        || delay > std::numeric_limits<int>::max())
                        PrintUsage();
                    g_loopEndDelays[static_cast<int>(track)] = static_cast<int>(delay);
                    if (*end == '\0')
                        break;
                    if (*end != ',')
                        PrintUsage();
                    pos = end + 1;
                }
                break;
            }
            case 'U':
                g_emulateOfficialWrappedWaitBug = true;
                break;
            case 'V':
                arg = GetArgument(argc, argv, i);
                if (arg == nullptr)
                    PrintUsage();
                ParseOfficialInt(arg, g_masterVolume);
                break;
            case 'X':
                g_clocksPerBeat = 2;
                break;
            case 'A':
                g_deferLoopBegin = true;
                break;
            case 'B':
                g_deferLoopBegin = true;
                g_preferModLoop = true;
                break;
            case 'C':
                g_deferLoopBegin = true;
                g_preferTempoOrVoiceLoop = true;
                break;
            case 'D':
                g_allowCodeInsideLoop = true;
                break;
            default:
                PrintUsage();
            }
        }
        else
        {
            if (inputFilename.empty())
                inputFilename = argv[i];
            else if (outputFilename.empty())
                outputFilename = argv[i];
            else
                PrintUsage();
        }
    }

    if (inputFilename.empty())
        PrintUsage();

    if (outputFilename.empty())
        outputFilename = StripExtension(inputFilename) + ".s";

    if (g_asmLabel.empty())
        g_asmLabel = BaseName(outputFilename);

    g_inputFile = std::fopen(inputFilename.c_str(), "rb");

    if (g_inputFile == nullptr)
        RaiseError("failed to open \"%s\" for reading", inputFilename.c_str());

    g_outputFilename = outputFilename;
    g_outputFile = std::fopen(outputFilename.c_str(), "w");

    if (g_outputFile == nullptr)
        RaiseError("failed to open \"%s\" for writing", outputFilename.c_str());

    ReadMidiFileHeader();
    PrintAgbHeader();
    ReadMidiTracks();
    PrintAgbFooter();

    std::fclose(g_inputFile);
    std::fclose(g_outputFile);

    return 0;
}
