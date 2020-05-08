#include "global.h"
#include "game_state.h"
#include "logo.h"

void sub_081387B0(void) {
    u8 i;
    u16* r5, *r4_2;
    struct GameState* r0;
    struct LogoStruct* r4;
    CpuFastFill(0xffffffff, BG_PLTT, 0x200);
    gBldRegs.bldCnt = 0xbf;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 16;
    gDispCnt = 0x240;
    gBgCntRegs[1] = 0x1D09;
    for (i = 0; i < 4; i++) {
        r4_2 = gBgScrollRegs;
        r5 = gBgScrollRegs + 1;
        r4_2[i * 2] = r5[i * 2] = 0;
    }
    r0 = sub_08152B00(sub_0813887C, 0x10, 0x1000, 0, nullsub_33);
    if (r0->unk12 & 0x10) {
        r4 = EWRAM_START + (r0->unk6 << 2);
    }
    else {
        r4 = IWRAM_START + r0->unk6;
    }
    CpuFill16(0, r4, sizeof(struct LogoStruct));
    m4aMPlayAllStop();
    r4->unk8 = sub_081388C4;
}

void sub_0813887C(void) {
    struct LogoStruct* r2;
    if (gUnk_030035D0->unk12 & 0x10) {
        r2 = EWRAM_START + (gUnk_030035D0->unk6 << 2);
    }
    else {
        r2 = IWRAM_START + gUnk_030035D0->unk6;
    }
    if (r2->unk4 & 2) {
        r2->unk0++;
    }
    r2->unk8(r2);
}

void nullsub_33(void) {

}

void sub_081388C4(struct LogoStruct* arg0) {
    arg0->unk8 = sub_081388D0;
}

void sub_081388D0(struct LogoStruct* arg0) {
    sub_081389A8();
    sub_08138A30(1, 0xc6, 0);
    sub_08138AA4(0xc6, 0x50, 0x50, 0x30);
    arg0->unkC = gUnk_083877EE.unk1E;
    arg0->unkE = 0;
    arg0->unk8 = sub_0813890C;
}

void sub_0813890C(struct LogoStruct* arg0) {
    if (++arg0->unkE <= 0x13) {
        gBldRegs.bldY = ((0x14 - arg0->unkE) << 4) / 0x14;
    }
    else {
        gBldRegs.bldY = 0;
        arg0->unk4 |= 2;
        arg0->unk8 = sub_08138958;
    }
}

void sub_08138958(struct LogoStruct* arg0) {
    if (--arg0->unkC <= 0) {
        arg0->unkE = 0;
        arg0->unk8 = sub_08138978;
    }
}

void sub_08138978(struct LogoStruct* arg0) {
    u16 r5 = arg0->unk0;
    sub_08152C3C(gUnk_030035D0);
    if (arg0->unk4 & 1) {
        sub_08149CE4();
    }
    else {
        sub_08145B64(r5);
    }
}

void sub_081389A8(void) {
    u8 i;
    for (i = 0; i < 3; i++) {
        sub_081389D4(i);
    }

    for (i = 0; i < 8; i++) {
        sub_081389FC(i);
    }
}

void sub_081389D4(u8 arg0) {
    CpuFill16(0, (arg0 << 0xe) + VRAM, 0x4000);
}

void sub_081389FC(u8 arg0) {
    CpuFill16(0x1ff, ((0x1f - arg0) << 0xb) + VRAM, 0x800);
}

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
