#include "global.h"
#include "data.h"
#include "sprite.h"
#include "functions.h"

// TODO: merge sprite_1.c, sprite_2.c, sprite_3.c, sub_08153184.s, sprite.s into sprite.c

void sub_08153060(struct Unk_03002400 *r4) {
    register struct LevelInfo_1A0_Full *r6
#ifndef NONMATCHING
        asm("r6")
#endif
        = gUnk_03002E60[r4->unk1C].y;
    u32 a;
    u16 b;
    u16 *c;

    r4->unk14 = r6->unk0.unk0;
    r4->unk16 = r6->unk0.unk2;
    a = (uintptr_t)r6->unk0.unk8;
    b = r6->unk0.unkC;
    if (!(r4->unk2E & 8)) {
        gUnk_03002EC0[gUnk_030039A4].unk0 = a;
        gUnk_03002EC0[gUnk_030039A4].unk4 = r4->unk4;
        gUnk_03002EC0[gUnk_030039A4].unk8 = b;
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
        r4->unk2E ^= 8;
    }
    c = r6->unk0.unk10;
    a = r6->unk0.unk16;
    r4->unk2A = r6->unk0.unk14;
    if (!(r4->unk2E & 0x10)) {
        if (gUnk_03002440 & 0x10000)
            sub_08158334(c, r4->unk2A, a);
        else {
            DmaCopy16(3, c, gBgPalette + r4->unk2A, a * 2);
            gUnk_03002440 |= 1;
        }
        r4->unk2E ^= 0x10;
    }
    r4->unk10 = r6->unk0.unk18;
    if (r4->unk2E & 0x40) { // Can we actually trigger this condition?
        r4->unk38 = r6->unk0.unk1C;
        r4->unk3C = r6->unk20;
        r4->unk3E = r6->unk22;
    }
    gUnk_03002400[gUnk_03003790] = r4;
    gUnk_03003790 = (gUnk_03003790 + 1) & 0xF;
}
