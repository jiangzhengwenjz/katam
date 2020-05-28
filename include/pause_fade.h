#ifndef GUARD_PAUSE_FADE_H
#define GUARD_PAUSE_FADE_H

#include "global.h"

struct PauseFadeStruct {
    u16 unk0;
    s8 unk2;
    u8 unk3;
};

extern void CreatePauseFade(s8 arg0, u32 arg1);
extern void CreatePauseFadeSetBldCnt(s8 arg0, u32 arg1);
extern void PauseFadeMain(void);

#endif
