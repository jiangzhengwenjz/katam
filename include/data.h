#ifndef GUARD_DATA_H
#define GUARD_DATA_H

#include "global.h"

struct Sprite {
    u32 unk0;
    u8 filler4[4];
    u32 unk8;
    u16 unkC;
    u8 fillerE[2];
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u8 filler18[2];
    u8 unk1A;
    u8 unk1B;
    u8 unk1C;
    u8 filler1D[2];
    u8 unk1F;
    u8 filler20[6];
    u8 unk26;
    u8 unk27;
};

extern u16 gUnk_03000478[4];
extern u32 gUnk_03000480;
extern u16 gUnk_03000490[0x16];
extern u32 gUnk_0300050C;
extern struct MultiBootParam gMultiBootParam;
extern u8 gUnk_03000554;

extern u32 gUnk_03002440;
extern u32 gUnk_03002E60;
extern const u32* gUnk_03003674;

extern const u32 gUnk_083B909C;

#endif
