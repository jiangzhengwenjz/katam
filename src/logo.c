#include "global.h"
#include "logo.h"

void sub_08138A30(u8 arg0, u16 arg1, u16 arg2) {
    u16 i;
    u16 r5, r1_2, r0_2;
    u32 r4, r7, r6;
    struct Unk_082D7850* r1 = gUnk_082D7850[arg1];
    r4 = r1->unk8;
    r7 = r1->unk18;
    r5 = r1->unk2;
    r1_2 = (gBgCntRegs[arg0] >> 2) & 3;
    r0_2 = (gBgCntRegs[arg0] >> 8) & 0x1f;
    r6 = VRAM + (r0_2 << 0xb) + (arg2 >> 3 << 6);
    LZ77UnCompVram(r4, (r1_2 << 0xe) + VRAM);
    for (i = 0; i < r5; i++) {
        CpuCopy16(r7 + (i * 60), r6 + (i * 64), 0x3c);
    }
}

void sub_08138AA4(u16 arg0, u8 arg1, u8 arg2, u16 arg3) {
    asm("":::"r4");
    if (arg3 != 0) {
        if (gUnk_03002440 & 0x10000) {
            sub_08158334(gUnk_082D7850[arg0]->unk10 + arg1, arg2, arg3);
        }
        else {
            DmaCopy16(3, gUnk_082D7850[arg0]->unk10 + arg1, gBgPalette + arg2, arg3 * 2);
            gUnk_03002440 |= 1;
        }
    }
}
