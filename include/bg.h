#ifndef GUARD_BG_H
#define GUARD_BG_H

#include "global.h"

struct Background {
    u32 filler0;
    u32 unk4; // vram
    u16 filler8;
    u16 unkA;
    u32 unkC; // vram
    const u16 *unk10;
    u16 unk14;
    u16 unk16;
    u16 unk18;
    u16 unk1A;
    u16 unk1C;
    u16 unk1E;
    u16 unk20;
    u16 unk22;
    u16 unk24;
    u16 unk26;
    u16 unk28;
    u8 unk2A;
    u8 unk2B;
    u8 unk2C;
    u16 unk2E;
    u16 unk30;
    u16 unk32;
    u16 unk34;
    u16 unk36;
    u32 unk38;
    u16 unk3C;
    u16 unk3E;
}; /* size = 0x40 */

void sub_08153060(struct Background *);
u32 sub_08153184(void);

#endif
