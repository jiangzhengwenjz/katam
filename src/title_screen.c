#include "data.h"
#include "functions.h"
#include "task.h"
#include "gba/m4a.h"
#include "main.h"
#include "malloc_vram.h"
#include "title_screen.h"
#include "palette.h"
#include "demo.h"
#include "code_08026044.h"
#include "constants/languages.h"

static void TitleScreenMain(void);
static void TitleScreenClearMap(u8);
static void TitleScreenClearTiles(u8);
static void TitleScreenShowDemo(struct TitleStruct*);
static void TitleScreenFadeSetup(struct TitleStruct*);
static void TitleScreenFadeOut(struct TitleStruct*);
static void TitleScreenFadeIn(struct TitleStruct*);
static void sub_0814A70C(struct TitleStruct*);
static void sub_0814A75C(struct TitleStruct*);
static void sub_0814A794(struct TitleStruct*);
static void sub_0814A7CC(struct TitleStruct*);
static void sub_0814A518(struct TitleStruct*);
static void sub_0814A558(struct TitleStruct*);
static void sub_0814A404(struct TitleStruct*);
static void sub_0814A4C4(struct TitleStruct*);
static void sub_0814A6BC(struct TitleStruct*);
static void sub_0814A504(struct TitleStruct*);
static void sub_0814A2CC(struct TitleStruct*);
static void sub_0814A358(struct TitleStruct*);
static void sub_0814A39C(struct TitleStruct*);
static void sub_0814A46C(struct TitleStruct*);
static void sub_0814A310(struct TitleStruct*);
static void sub_0814A420(struct TitleStruct*);
static void sub_0814A49C(struct TitleStruct*);
static void sub_0814A2B0(struct TitleStruct*);
static void sub_08149F08(struct TitleStruct*);
static void sub_0814A410(struct TitleStruct*);
static void sub_0814A274(struct TitleStruct*);
static void sub_0814A1C8(struct Task*);

static const u16 gUnk_08387D58[][4] = {
    [LANGUAGE_JAPANESE] = { 0xDF, 0xDE, 0xE2, 0xE3 },
    [LANGUAGE_ENGLISH]  = { 0xCF, 0xCE, 0xE2, 0xE3 },
    [LANGUAGE_GERMAN]   = { 0xCB, 0xCA, 0xE2, 0xE3 },
    [LANGUAGE_FRENCH]   = { 0xD7, 0xD6, 0xE2, 0xE3 },
    [LANGUAGE_SPANISH]  = { 0xD3, 0xD2, 0xE2, 0xE3 },
    [LANGUAGE_ITALIAN]  = { 0xDB, 0xDA, 0xE2, 0xE3 },
};

static const u32 gUnk_08387D88 = 0xA;

void CreateTitleScreen(void) {
    u8 i;
    struct Task* task;
    struct TitleStruct* title;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG2_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[0] = BGCNT_TXT512x256 | BGCNT_SCREENBASE(0x1e) | BGCNT_PRIORITY(1);
    gBgCntRegs[1] = BGCNT_SCREENBASE(0x1d) | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(2);
    gBgCntRegs[2] = BGCNT_SCREENBASE(0x1c) | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(3);
    gBgScrollRegs[0][0] = 0x100;
    gBgScrollRegs[0][1] = 0;

    for (i = 1; i < 4; i++) {
        gBgScrollRegs[i][0] = gBgScrollRegs[i][1] = 0;
    }
    
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 16;
    task = TaskCreate(TitleScreenMain, sizeof(struct TitleStruct), 0x1000, TASK_USE_IWRAM, sub_0814A1C8);
    title = TaskGetStructPtr(task);
    CpuFill16(0, title, sizeof(struct TitleStruct));
    title->unk4 = 0;
    title->unk130 = sub_0814A410;
    sub_0814A274(title);
}

static void TitleScreenMain(void) {
    struct TitleStruct* title;
    struct TitleStruct* r0;

    r0 = TaskGetStructPtr(gCurTask);
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

static void TitleScreenSpriteInit(struct TitleStruct* arg0) {
    u8 i;
    struct Sprite* cur;

    for (i = 0; i < 7; i++) {
        cur = &arg0->unk10[i];
        cur->tilesVram = VramMalloc(gUnk_08D62720[i][2]);
        cur->unk14 = 0x280;
        cur->animId = gUnk_08D62720[i][0];
        cur->variant = gUnk_08D62720[i][1];
        cur->unk16 = 0;
        cur->unk1B = 0xff;
        cur->unk1C = 0x20;
        cur->palId = 0;
        cur->x = -0x40;
        cur->y = -0x40;
        cur->unk8 = 0;
        sub_08155128(cur);
    }

    arg0->unk12C = sub_08149F08;
}

static void sub_08149F08(struct TitleStruct* arg0) {
    struct Sprite* r6;
    u8 r0 = arg0->unk128;
    arg0->unk8 |= 1;
    r6 = arg0->unk10;
    r6->x = (r0 * 20) + ({ r0 / 5 * 12 + 24; });
    r6->y = 0x7f;

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
    u32 r1;
    void* r6;
    const u32* r0_2;
    const u16* r7;
    
    r0_2 = gUnk_082D7850[r0]->tileset;
    r7 = gUnk_082D7850[r0]->tilemap;
    r5 = gUnk_082D7850[r0]->height;
    r1 = (gBgCntRegs[bg] >> 2) & 3;
    r6 = (((gBgCntRegs[bg] >> 8) & 0x1f) << 0xb) + dest;
    LZ77UnCompVram(r0_2, (r1 << 0xe) + (void*)VRAM);
    
    for (j = 0; j < r5; j++) {
        CpuCopy16(r7 + j * 30, r6 + j * 64, 0x3c);
    }
}

static inline void LoadBgPaletteWithTransformation_wrapper(const u16* a1, u8 a2, u16 a3) {
    LoadBgPaletteWithTransformation(a1, a2, a3);
}

static void TitleScreenGraphicsInit(struct TitleStruct* arg0) {
    u8 i;
    u16 r0;

    for (i = 0; i < 3; i++) {
        TitleScreenClearTiles(i);
    }

    for (i = 0; i < 8; i++) {
        TitleScreenClearMap(i);
    }

    LoadBg(0, gUnk_08387D58[gLanguage][1], (void*)(VRAM + 0x800));
    LoadBg(1, gUnk_08387D58[gLanguage][0], (void*)VRAM);
    LoadBg(2, gUnk_08387D58[gLanguage][2], (void*)VRAM);
    r0 = gUnk_08387D58[gLanguage][0];

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation_wrapper(gUnk_082D7850[r0]->palette, 0, 0x100);
    }
    else {
        DmaCopy16(3, gUnk_082D7850[r0]->palette, gBgPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    TitleScreenSpriteInit(arg0);
    arg0->unk134 = 0;
    arg0->unk130 = TitleScreenFadeIn;
}

static void TitleScreenFadeIn(struct TitleStruct* arg0) {
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

static void sub_0814A1C8(struct Task* arg0) {
    struct TitleStruct* r0, *r6;
    u8 i;

    r0 = TaskGetStructPtr(arg0);
    r6 = r0;
    for (i = 0; i <= 6; i++) {
        struct Sprite* cur = &r6->unk10[i];
        if (cur->tilesVram != 0) {
            VramFree(cur->tilesVram);
            cur->tilesVram = 0;
        }
    }
}

static void TitleScreenClearTiles(u8 arg0) {
    CpuFill16(0, (void*)VRAM + (arg0 << 0xe), 0x4000);
}

static void TitleScreenClearMap(u8 arg0) {
    CpuFill16(0x1ff, (void*)VRAM + ((0x1f - arg0) << 0xb), 0x800);
}

static void sub_0814A274(struct TitleStruct* arg0) {
    sub_0814F3C4(&arg0->unk138, *gUnk_08D626F0[gLanguage][1]);
    arg0->unk144 = sub_0814A2B0;
}

static void sub_0814A2B0(struct TitleStruct* arg0) {
    if (arg0->unk4 == 1) {
        arg0->unk144 = sub_0814A2CC;
    }
}

static void sub_0814A2CC(struct TitleStruct* arg0) {
    if (!sub_0814F274(&arg0->unk138)) {
        sub_0814F3C4(&arg0->unk138, *gUnk_08D626F0[gLanguage][0]);
        arg0->unk144 = sub_0814A310;
    }
}

static void sub_0814A310(struct TitleStruct* arg0) {
    if (!sub_0814F274(&arg0->unk138)) {
        sub_0814F3C4(&arg0->unk138, *gUnk_08D626F0[gLanguage][1]);
        arg0->unk144 = sub_0814A358;
    }
}

static void sub_0814A358(struct TitleStruct* arg0) {
    if (!sub_0814F274(&arg0->unk138)) {
        sub_0814F3C4(&arg0->unk138, *gUnk_08D626F0[gLanguage][0]);
        arg0->unk144 = sub_0814A310;
    }
}

static void sub_0814A39C(struct TitleStruct* arg0) {
    u8 i, r7 = arg0->unk128;
    for (i = 0; i < r7; i++) {
        struct Sprite* cur = &arg0->unk10[gUnk_08D6274A[i]];
        cur->x = (i * 20) + ({ i / 5 * 12 + 24; });
        cur->y = 0x7f;
        sub_0815604C(cur);
    }
}

static void sub_0814A404(struct TitleStruct* arg0) {
    sub_0814A39C(arg0);
}

static void sub_0814A410(struct TitleStruct* arg0) {
    arg0->unk130 = TitleScreenGraphicsInit;
}

static void sub_0814A420(struct TitleStruct* arg0) {
    arg0->unk134 = 0;
    gBldRegs.bldCnt = BLDCNT_TGT2_BG2 | BLDCNT_TGT2_BG1 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT1_BG0;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(16, 16);
    gBldRegs.bldY = 0;
    gDispCnt |= DISPCNT_BG0_ON;
    arg0->unk130 = sub_0814A46C;
}

static void sub_0814A46C(struct TitleStruct* arg0) {
    if (++arg0->unk134 > 2) {
        arg0->unk130 = sub_0814A49C;
        arg0->unk134 = 0;
    }
}

static void sub_0814A49C(struct TitleStruct* arg0) {
    m4aSongNumStartOrChange(MUS_TITLE_SCREEN);
    arg0->unk134 = 0;
    arg0->unk130 = sub_0814A4C4;
}

static void sub_0814A4C4(struct TitleStruct* arg0) {
    if (arg0->unk0 > 0x18f) {
        m4aMPlayFadeOut(&gMPlayInfo_0, 0x11);
        arg0->unk130 = sub_0814A504;
    }
    arg0->unk12C(arg0);
}

static void sub_0814A504(struct TitleStruct* arg0) {
    arg0->unk12C(arg0);
}

static void sub_0814A518(struct TitleStruct* arg0) {
    arg0->unk144 = NULL;
    arg0->unk138.unk6 &= ~0x40;
    arg0->unk130 = sub_0814A558;
    arg0->unk12C(arg0);
}

static void sub_0814A558(struct TitleStruct* arg0) {
    if (!sub_0814F274(&arg0->unk138)) {
        arg0->unk130 = TitleScreenFadeSetup;
    }
    arg0->unk12C(arg0);
}

static void TitleScreenFadeSetup(struct TitleStruct* arg0) {
    gDispCnt &= ~DISPCNT_BG0_ON;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    arg0->unk134 = 0;
    arg0->unk130 = TitleScreenFadeOut;
    arg0->unk12C(arg0);
}

static void TitleScreenFadeOut(struct TitleStruct* arg0) {
    arg0->unk134++;
    gBldRegs.bldY = arg0->unk134 * 16 / 60;

    if (arg0->unk134 > 59) {
        arg0->unk130 = TitleScreenShowDemo;
    }

    arg0->unk12C(arg0);
}

static void TitleScreenShowDemo(struct TitleStruct* arg0) {
    if (gUnk_03000554 == 0) {
        TaskDestroy(gCurTask);
        CreateCutscene();
    }
    else {
        CpuFill16(RGB_WHITE, gBgPalette, 0x200);
        CpuFill16(RGB_WHITE, gObjPalette, 0x200);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        TaskDestroy(gCurTask);
        CreateDemo(sub_08025F2C());
    }
}

static void sub_0814A6BC(struct TitleStruct* arg0) {
    gDispCnt &= ~DISPCNT_BG0_ON;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0;
    arg0->unk134 = 0;
    arg0->unk130 = sub_0814A70C;
    arg0->unk12C(arg0);
}

static void sub_0814A70C(struct TitleStruct* arg0) {
    arg0->unk134++;
    gBldRegs.bldY = arg0->unk134 * 16 / 10;

    if (arg0->unk134 > 9) {
        arg0->unk130 = sub_0814A75C;
    }
    
    arg0->unk12C(arg0);
}

static void sub_0814A75C(struct TitleStruct* arg0) {
    m4aSongNumStop(MUS_TITLE_SCREEN);
    arg0->unk134 = 0;
    arg0->unk130 = sub_0814A794;
    arg0->unk12C(arg0);
}

static void sub_0814A794(struct TitleStruct* arg0) {
    if (++arg0->unk134 > 4) {
        arg0->unk130 = sub_0814A7CC;
    }
    arg0->unk12C(arg0);
}

static void sub_0814A7CC(struct TitleStruct* arg0) {
    CpuFill16(RGB_WHITE, gBgPalette, BG_PLTT_SIZE);
    CpuFill16(RGB_WHITE, gObjPalette, OBJ_PLTT_SIZE);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    TaskDestroy(gCurTask);
    sub_08138B44();
}
