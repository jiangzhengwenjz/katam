#include "data.h"
#include "functions.h"
#include "game_state.h"
#include "gba/m4a.h"
#include "main.h"
#include "title_screen.h"

void sub_08149CE4(void) {
    u16 *r4, *r6;
    u8 i;
    struct GameState* state;
    struct TitleStruct* title;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[0] = BGCNT_TXT512x256 | BGCNT_SCREENBASE(0x1e) | BGCNT_PRIORITY(1);
    gBgCntRegs[1] = BGCNT_SCREENBASE(0x1d) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(2);
    gBgCntRegs[2] = BGCNT_SCREENBASE(0x1c) | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(3);
    gBgScrollRegs[0] = 0x100;
    gBgScrollRegs[1] = 0;

    for (i = 1; i < 4; i++) {
        r4 = gBgScrollRegs;
        r6 = gBgScrollRegs + 1;
        r4[2 * i] = r6[2 * i] = 0;
    }
    
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 16;
    state = GameStateCreate(sub_08149DC0, 0x148, 0x1000, 0, sub_0814A1C8);

    if (state->unk12 & 0x10) {
        title = (struct TitleStruct*)(EWRAM_START + (state->unk6 << 2));
    }
    else {
        title = (struct TitleStruct*)(IWRAM_START + state->unk6);
    }

    CpuFill16(0, title, sizeof(struct TitleStruct));
    title->unk4 = 0;
    title->unk130 = sub_0814A410;
    sub_0814A274(title);
}

void sub_08149DC0(void) {
    struct TitleStruct* title;
    struct TitleStruct* r0;

    if (gCurGameState->unk12 & 0x10) {
        r0 = (struct TitleStruct*)(EWRAM_START + (gCurGameState->unk6 << 2));
    }
    else {
        r0 = (struct TitleStruct*)(IWRAM_START + gCurGameState->unk6);
    }

    title = r0;
    title->unk0++;

    if ((title->unk4 != 0) && (title->unk4 != 2) && (title->unk0 > 0x4a) && (gPressedKeys & (START_BUTTON | A_BUTTON))) {
        title->unk130 = sub_0814A6BC;
        title->unk4 = 2;
    }
    else if ((title->unk0 > 0x257) && (title->unk4 != 2)) {
        title->unk130 = sub_0814A518;
        title->unk4 = 2;
    }

    if (title->unk144 != NULL) {
        title->unk144(title);
    }

    title->unk130(title);
}

void sub_08149E68(struct TitleStruct* arg0) {
    u8 i;
    struct TitleStructUnk10* cur;

    for (i = 0; i < 7; i++) {
        cur = &arg0->unk10[i];
        cur->unk0 = sub_081570B0(gUnk_08D62720[i][2]);
        cur->unk14 = 0x280;
        cur->unkC = gUnk_08D62720[i][0];
        cur->unk1A = gUnk_08D62720[i][1];
        cur->unk16 = 0;
        cur->unk1B = 0xff;
        cur->unk1C = 0x20;
        cur->unk1F = 0;
        cur->unk10 = 0xffc0;
        cur->unk12 = 0xffc0;
        cur->unk8 = 0;
        sub_08155128(cur);
    }

    arg0->unk12C = sub_08149F08;
}

void sub_08149F08(struct TitleStruct* arg0) {
    struct TitleStructUnk10* r6;
    u8 r0 = arg0->unk128;
    arg0->unk8 |= 1;
    r6 = arg0->unk10;
    r6->unk10 = (r0 * 20) + (r0 / 5 * 12 + 24);
    r6->unk12 = 0x7f;

    if (sub_08155128(r6) == 0) {
        r6->unk1B = 0xff;
        if (++arg0->unk128 > 9) {
            arg0->unk12C = sub_0814A404;
            arg0->unk8 &= ~1;
        }
    }
    else {
        sub_0815604C(r6);
    }

    sub_0814A39C(arg0);
}

static inline void LoadBg(u8 bg, u16 r0, void* dest) {
    u16 r5, j;
    u32 r2, r1;
    void* r7, *r6, *r0_2;
    
    r0_2 = gUnk_082D7850[r0]->unk8;
    r7 = gUnk_082D7850[r0]->unk18;
    r5 = gUnk_082D7850[r0]->unk2;
    r1 = (gBgCntRegs[bg] >> 2) & 3;
    r6 = (((gBgCntRegs[bg] >> 8) & 0x1f) << 0xb) + dest;
    LZ77UnCompVram(r0_2, (r1 << 0xe) + (void*)VRAM);
    
    for (j = 0; j < r5; j++) {
        CpuCopy16(r7 + j * 60, r6 + j * 64, 0x3c);
    }
}

static inline void sub_08158334_wrapper(u16* a1, u8 a2, u16 a3) {
    sub_08158334(a1, a2, a3);
}

void sub_08149F8C(struct TitleStruct* arg0) {
    u8 i;
    u16 r0;

    for (i = 0; i < 3; i++) {
        sub_0814A218(i);
    }

    for (i = 0; i < 8; i++) {
        sub_0814A240(i);
    }

    LoadBg(0, gUnk_08387D58[gUnk_08D60A80][1], (void*)(VRAM + 0x800));
    LoadBg(1, gUnk_08387D58[gUnk_08D60A80][0], (void*)VRAM);
    LoadBg(2, gUnk_08387D58[gUnk_08D60A80][2], (void*)VRAM);
    r0 = gUnk_08387D58[gUnk_08D60A80][0];

    if (gUnk_03002440 & 0x10000) {
        sub_08158334_wrapper(gUnk_082D7850[r0]->unk10, 0, 0x100);
    }
    else {
        DmaCopy16(3, gUnk_082D7850[r0]->unk10, gBgPalette, 0x200);
        gUnk_03002440 |= 1;
    }

    sub_08149E68(arg0);
    arg0->unk134 = 0;
    arg0->unk130 = sub_0814A178;
}

void sub_0814A178(struct TitleStruct* arg0) {
    arg0->unk134++;
    gBldRegs.bldY = 16 - ((arg0->unk134 * 16) / 15);

    if (arg0->unk134 > 0xe) {
        gBldRegs.bldY = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldCnt = 0;
        arg0->unk4 = 1;
        arg0->unk130 = sub_0814A420;
    }
}

void sub_0814A1C8(struct GameState* arg0) {
    struct TitleStruct* r0, *r6;
    u8 i;

    if (arg0->unk12 & 0x10) {
        r0 = (struct TitleStruct*)(EWRAM_START + (arg0->unk6 << 2));
    }
    else {
        r0 = (struct TitleStruct*)(IWRAM_START + arg0->unk6);
    }

    r6 = r0;
    for (i = 0; i <= 6; i++) {
        struct TitleStructUnk10* cur = &r6->unk10[i];
        if (cur->unk0 != 0) {
            sub_08157190(cur->unk0);
            cur->unk0 = 0;
        }
    }
}

void sub_0814A218(u8 arg0) {
    CpuFill16(0, (void*)VRAM + (arg0 << 0xe), 0x4000);
}

void sub_0814A240(u8 arg0) {
    CpuFill16(0x1ff, (void*)VRAM + ((0x1f - arg0) << 0xb), 0x800);
}

void sub_0814A274(struct TitleStruct* arg0) {
    sub_0814F3C4(&arg0->unk138, *gUnk_08D626F0[gUnk_08D60A80][1]);
    arg0->unk144 = sub_0814A2B0;
}

void sub_0814A2B0(struct TitleStruct* arg0) {
    if (arg0->unk4 == 1) {
        arg0->unk144 = sub_0814A2CC;
    }
}

void sub_0814A2CC(struct TitleStruct* arg0) {
    if (sub_0814F274(&arg0->unk138) == 0) {
        sub_0814F3C4(&arg0->unk138, *gUnk_08D626F0[gUnk_08D60A80][0]);
        arg0->unk144 = sub_0814A310;
    }
}

void sub_0814A310(struct TitleStruct* arg0) {
    if (sub_0814F274(&arg0->unk138) == 0) {
        sub_0814F3C4(&arg0->unk138, *gUnk_08D626F0[gUnk_08D60A80][1]);
        arg0->unk144 = sub_0814A358;
    }
}

void sub_0814A358(struct TitleStruct* arg0) {
    if (sub_0814F274(&arg0->unk138) == 0) {
        sub_0814F3C4(&arg0->unk138, *gUnk_08D626F0[gUnk_08D60A80][0]);
        arg0->unk144 = sub_0814A310;
    }
}

void sub_0814A39C(struct TitleStruct* arg0) {
    u8 i, r7 = arg0->unk128;
    for (i = 0; i < r7; i++) {
        struct TitleStructUnk10* cur = &arg0->unk10[gUnk_08D6274A[i]];
        cur->unk10 = (i * 20) + (i / 5 * 12 + 24);
        cur->unk12 = 0x7f;
        sub_0815604C(cur);
    }
}

void sub_0814A404(struct TitleStruct* arg0) {
    sub_0814A39C(arg0);
}

void sub_0814A410(struct TitleStruct* arg0) {
    arg0->unk130 = sub_08149F8C;
}

void sub_0814A420(struct TitleStruct* arg0) {
    arg0->unk134 = 0;
    gBldRegs.bldCnt = BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG0;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(16, 16);
    gBldRegs.bldY = 0;
    gDispCnt |= DISPCNT_BG0_ON;
    arg0->unk130 = sub_0814A46C;
}

void sub_0814A46C(struct TitleStruct* arg0) {
    if (++arg0->unk134 > 2) {
        arg0->unk130 = sub_0814A49C;
        arg0->unk134 = 0;
    }
}

void sub_0814A49C(struct TitleStruct* arg0) {
    m4aSongNumStartOrChange(1);
    arg0->unk134 = 0;
    arg0->unk130 = sub_0814A4C4;
}

void sub_0814A4C4(struct TitleStruct* arg0) {
    if (arg0->unk0 > 0x18f) {
        m4aMPlayFadeOut(&gUnk_030016A0, 0x11);
        arg0->unk130 = sub_0814A504;
    }
    arg0->unk12C(arg0);
}

void sub_0814A504(struct TitleStruct* arg0) {
    arg0->unk12C(arg0);
}

void sub_0814A518(struct TitleStruct* arg0) {
    arg0->unk144 = NULL;
    arg0->unk13E &= 0xffbf;
    arg0->unk130 = sub_0814A558;
    arg0->unk12C(arg0);
}

void sub_0814A558(struct TitleStruct* arg0) {
    if (sub_0814F274(&arg0->unk138) == 0) {
        arg0->unk130 = sub_0814A58C;
    }
    arg0->unk12C(arg0);
}

void sub_0814A58C(struct TitleStruct* arg0) {
    gDispCnt &= ~DISPCNT_BG0_ON;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    arg0->unk134 = 0;
    arg0->unk130 = sub_0814A5DC;
    arg0->unk12C(arg0);
}

void sub_0814A5DC(struct TitleStruct* arg0) {
    arg0->unk134++;
    gBldRegs.bldY = arg0->unk134 * 16 / 60;

    if (arg0->unk134 > 59) {
        arg0->unk130 = sub_0814A62C;
    }

    arg0->unk12C(arg0);
}

void sub_0814A62C(struct TitleStruct* arg0) {
    if (gUnk_03000554 == 0) {
        GameStateDestroy(gCurGameState);
        sub_08026044();
    }
    else {
        CpuFill16(RGB_WHITE, gBgPalette, 0x200);
        CpuFill16(RGB_WHITE, gObjPalette, 0x200);
        gUnk_03002440 |= 3;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        GameStateDestroy(gCurGameState);
        sub_08025EC8(sub_08025F2C());
    }
}

void sub_0814A6BC(struct TitleStruct* arg0) {
    gDispCnt &= 0xfeff;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    arg0->unk134 = 0;
    arg0->unk130 = sub_0814A70C;
    arg0->unk12C(arg0);
}

void sub_0814A70C(struct TitleStruct* arg0) {
    arg0->unk134++;
    gBldRegs.bldY = arg0->unk134 * 16 / 10;

    if (arg0->unk134 > 9) {
        arg0->unk130 = sub_0814A75C;
    }
    
    arg0->unk12C(arg0);
}

void sub_0814A75C(struct TitleStruct* arg0) {
    m4aSongNumStop(1);
    arg0->unk134 = 0;
    arg0->unk130 = sub_0814A794;
    arg0->unk12C(arg0);
}

void sub_0814A794(struct TitleStruct* arg0) {
    if (++arg0->unk134 > 4) {
        arg0->unk130 = sub_0814A7CC;
    }
    arg0->unk12C(arg0);
}

void sub_0814A7CC(struct TitleStruct* arg0) {
    CpuFill16(RGB_WHITE, gBgPalette, 0x200);
    CpuFill16(RGB_WHITE, gObjPalette, 0x200);
    gUnk_03002440 |= 3;
    GameStateDestroy(gCurGameState);
    sub_08138B44();
}
