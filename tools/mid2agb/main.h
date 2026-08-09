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

#ifndef MAIN_H
#define MAIN_H

#include <cstdio>
#include <string>
#include <set>
#include <map>

extern FILE* g_inputFile;
extern FILE* g_outputFile;
extern std::string g_outputFilename;

extern std::string g_asmLabel;
extern int g_masterVolume;
extern int g_voiceGroup;
extern int g_priority;
extern int g_reverb;
extern int g_clocksPerBeat;
extern bool g_exactGateTime;
extern bool g_deferLoopBegin;
extern bool g_preferModLoop;
extern bool g_preferTempoOrVoiceLoop;
extern bool g_compressionEnabled;
extern bool g_allowCodeInsideLoop;
extern bool g_deferredLoopFallbackToNote;
extern bool g_honorEncodingMarkers;
extern bool g_protectControlFlowPatterns;
extern bool g_emulateOfficialWrappedWaitBug;
extern std::set<int> g_noLoopTracks;
extern std::map<int, int> g_loopEndDelays;
extern std::map<int, int> g_loopJumpOffsets;

#endif // MAIN_H
