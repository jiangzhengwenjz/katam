#ifndef GUARD_LOGO_H
#define GUARD_LOGO_H

#include "global.h"

struct Unk_082D7850 {
    u8 filler0[2];
    u16 unk2;
    u8 filler4[4];
    u32 unk8;
    u8 fillerC[4];
    u16* unk10;
    u8 filler14[4];
    u32 unk18;
};

extern struct Unk_082D7850* gUnk_082D7850[];
extern u16 gBgCntRegs[4];
extern u16 gBgPalette[];
extern u32 gUnk_03002440;

#endif
