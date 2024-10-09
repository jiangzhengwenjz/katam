#include "functions.h"
#include "task.h"
#include "gba/m4a.h"
#include "logo.h"
#include "main.h"
#include "palette.h"
#include "intro.h"
#include "title_screen.h"

static void LogoCopyGraphics(u8, u16, u16);
static void LogoCopyPalette(u16, u8, u8, u16);
static void LogoClearTiles(u8);
static void LogoClearTilemap(u8);
static void LogoEnd(struct LogoStruct*);
static void LogoWait(struct LogoStruct*);
static void LogoInitGraphics(struct LogoStruct*);
static void LogoFadeIn(struct LogoStruct*);
static void sub_081388C4(struct LogoStruct*);
static void LogoMain(void);
static void LogoClearGraphics(void);
static void LogoDestroy(struct Task*);

void CreateLogo(void) {
    u8 i;
    u16* r5, *r4_2;
    struct Task* r0;
    struct LogoStruct* r4;
    CpuFastFill(0xffffffff, (u32*)BG_PLTT, BG_PLTT_SIZE);
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 16;
    gDispCnt = DISPCNT_BG1_ON | DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[1] = BGCNT_SCREENBASE(0x10) | BGCNT_SCREENBASE(8) | BGCNT_SCREENBASE(4) | BGCNT_SCREENBASE(1) | BGCNT_CHARBASE(2) | BGCNT_PRIORITY(1);
    for (i = 0; i < 4; i++) {
        gBgScrollRegs[i][0] = gBgScrollRegs[i][1] = 0;
    }
    r0 = TaskCreate(LogoMain, sizeof(struct LogoStruct), 0x1000, TASK_USE_IWRAM, LogoDestroy);
    r4 = TaskGetStructPtr(r0);
    CpuFill16(0, r4, sizeof(struct LogoStruct));
    m4aMPlayAllStop();
    r4->unk8 = sub_081388C4;
}

static void LogoMain(void) {
    struct LogoStruct* r2;

    r2 = TaskGetStructPtr(gCurTask);
    if (r2->unk4 & 2) {
        r2->unk0++;
    }
    r2->unk8(r2);
}

static void LogoDestroy(struct Task* arg0) {

}

static void sub_081388C4(struct LogoStruct* arg0) {
    arg0->unk8 = LogoInitGraphics;
}

static void LogoInitGraphics(struct LogoStruct* arg0) {
    LogoClearGraphics();
    LogoCopyGraphics(1, 0xc6, 0);
    LogoCopyPalette(0xc6, 0x50, 0x50, 0x30);
    arg0->unkC = gUnk_083877EE[0xF];
    arg0->unkE = 0;
    arg0->unk8 = LogoFadeIn;
}

static void LogoFadeIn(struct LogoStruct* arg0) {
    if (++arg0->unkE <= 0x13) {
        gBldRegs.bldY = ((0x14 - arg0->unkE) << 4) / 0x14;
    }
    else {
        gBldRegs.bldY = 0;
        arg0->unk4 |= 2;
        arg0->unk8 = LogoWait;
    }
}

static void LogoWait(struct LogoStruct* arg0) {
    if (--arg0->unkC <= 0) {
        arg0->unkE = 0;
        arg0->unk8 = LogoEnd;
    }
}

static void LogoEnd(struct LogoStruct* arg0) {
    u16 r5 = arg0->unk0;
    TaskDestroy(gCurTask);
    if (arg0->unk4 & 1) {
        CreateTitleScreen();
    }
    else {
        sub_08145B64(r5);
    }
}

static void LogoClearGraphics(void) {
    u8 i;
    for (i = 0; i < 3; i++) {
        LogoClearTiles(i);
    }

    for (i = 0; i < 8; i++) {
        LogoClearTilemap(i);
    }
}

static void LogoClearTiles(u8 arg0) {
    CpuFill16(0, (u16*)((arg0 << 0xe) + VRAM), 0x4000);
}

static void LogoClearTilemap(u8 arg0) {
    CpuFill16(0x1ff, (u16*)(((0x1f - arg0) << 0xb) + VRAM), 0x800);
}

static void LogoCopyGraphics(u8 arg0, u16 arg1, u16 arg2) {
    u16 i;
    u16 r5, r1_2, r0_2;
    void *r4, *r7, *r6;
    const struct TiledBg_082D7850* r1 = gUnk_082D7850[arg1];
    r4 = r1->tileset;
    r7 = r1->tilemap;
    r5 = r1->height;
    r1_2 = (gBgCntRegs[arg0] >> 2) & 3;
    r0_2 = (gBgCntRegs[arg0] >> 8) & 0x1f;
    r6 = (void*)(VRAM + (r0_2 << 0xb) + (arg2 >> 3 << 6));
    LZ77UnCompVram(r4, (void*)((r1_2 << 0xe) + VRAM));
    for (i = 0; i < r5; i++) {
        CpuCopy16(r7 + (i * 60), r6 + (i * 64), 0x3c);
    }
}

static void LogoCopyPalette(u16 arg0, u8 arg1, u8 arg2, u16 arg3) {
    if (arg3 != 0) {
        if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
            LoadBgPaletteWithTransformation(gUnk_082D7850[arg0]->palette + arg1, arg2, arg3);
        }
        else {
            s32 size = arg3 * sizeof(u16);
            DmaCopy16(3, gUnk_082D7850[arg0]->palette + arg1, gBgPalette + arg2, size);
            gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        }
    }
}
