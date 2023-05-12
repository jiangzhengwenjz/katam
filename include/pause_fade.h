#ifndef GUARD_PAUSE_FADE_H
#define GUARD_PAUSE_FADE_H

#include "global.h"

struct PauseFadeStruct {
    u16 unk0;
    s8 unk2;
    u8 unk3;
}; /* size = 4 */

void CreatePauseFade(s8 arg0, u32 arg1);
void CreatePauseFadeSetBldCnt(s8 arg0, u32 arg1);
void sub_08128BEC(s8 a1, u32 a2, u16 a3);

#endif
