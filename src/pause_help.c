#include "pause_help.h"
#include "code_08124BE0.h"
#include "constants/languages.h"
#include "constants/songs.h"
#include "functions.h"
#include "kirby.h"
#include "palette.h"
#include "pause_area_map.h"
#include "pause_fade.h"
#include "pause_world_map.h"
#include "sprite.h"
#include "subgames.h"
#include "treasures.h"

// TODO: Into code_08032E98.h
extern void sub_081240A4(struct Background*, u16, u8, u8);
extern void sub_080356AC(u32, u8, u8);
extern void sub_0812415C(void);

static void sub_08124978(void);
static void sub_08124AAC(void);
static void sub_08124B44(void);

extern const u16 gUnk_081665D4[0x100];  // HelpMenu Palette

extern const struct Unk_02021590 gUnk_08358B9C[NUM_LANGUAGES][5];
extern const u16 gUnk_08358C14[NUM_LANGUAGES][0x20];

static inline u32 sub_08124430_helper() {
    u32 r7 = 0;
    s32 r5;
    for (r5 = 0; r5 < 4; r5++) {
        if (!(gUnk_0203ACC0[r5].unkE & 1)) {
            r7 |= 1 << sub_08128694(r5);
        }
    }
    return r7;
}

void sub_08124430(void) {
    struct Task* task;
    struct HelpMenu *tmp, *helpmenu;
    u32 r7;
    u16 language = gLanguage;
    u16 color = RGB_WHITE;

    sub_0803D21C(&color, 0, 1);
    CpuFill32(0, (u32*)BG_VRAM, BG_VRAM_SIZE);
    DmaFill32(3, 0, (u32*)(BG_VRAM + (gBgCntRegs[0] & 0xc) * 0x1000), 0x40);

    gUnk_030060A0.parts[0] = 0;
    gUnk_03002E80[0] = 0;
    gUnk_03002E80[1] = 0;
    gUnk_03002E80[2] = 0xff;
    gUnk_03002E80[3] = 0x20;
    DmaFill32(3, 0, (u32*)(BG_VRAM + (gBgCntRegs[1] & 0xc) * 0x1000), 0x40);

    gUnk_030060A0.parts[1] = 0;
    gUnk_03002E80[4] = 0;
    gUnk_03002E80[5] = 0;
    gUnk_03002E80[6] = 0xff;
    gUnk_03002E80[7] = 0x20;
    DmaFill32(3, 0, (u32*)(BG_VRAM + (gBgCntRegs[2] & 0xc) * 0x1000), 0x40);

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(7) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(15) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;

    task = TaskCreate(sub_08124978, sizeof(struct HelpMenu), 0x1000, TASK_x0004, NULL);
    helpmenu = tmp = TaskGetStructPtr(task);

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gUnk_081665D4, 0, ARRAY_COUNT(gUnk_081665D4) / 2);
    }
    else {
        DmaCopy16(3, gUnk_081665D4, gBgPalette, sizeof(gUnk_081665D4) / 2);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    {
        struct Sprite unkSprite;
        SpriteInit(&unkSprite, (u32)OBJ_VRAM0, 0x480, gUnk_08358B9C[language][1].animId,
                   gUnk_08358B9C[language][1].variant, 0, 0xff, 0x10, 8, 0, 0, 0x80000);
    }
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);

    CpuFill32(0, &helpmenu->unk0, sizeof(helpmenu->unk0));
    CpuFill32(0, &helpmenu->unk40, sizeof(helpmenu->unk40));
    CpuFill32(0, &helpmenu->unk80, sizeof(helpmenu->unk80));
    CpuFill32(0, &helpmenu->unkA8, sizeof(helpmenu->unkA8));
    helpmenu->unkD0 = 1;
    helpmenu->unkD1 = 0;

    if (gUnk_0203AD10 & 4) {
        sub_081240A4(&helpmenu->unk0, gUnk_08358C14[language][1], 0, 7);
    }
    else {
        sub_081240A4(&helpmenu->unk0, gUnk_08358C14[language][0], 0, 7);
    }
    sub_081240A4(&helpmenu->unk40, gUnk_08358C14[language][2 + gKirbys[gUnk_0203AD3C].ability], 1, 15);
    sub_080356AC(0x06008000, 1, helpmenu->unk40.unk1C - gUnk_08358C14[language][2]);
    sub_0812415C();

    SpriteInitNoFunc(&helpmenu->unk80, 0x06012000, 0x480, gUnk_08358B9C[language][1].animId,
                     gUnk_08358B9C[language][1].variant, 0, 0xff, 0x10, 8, 0x22, 0x76, 0x80000);

    if (gUnk_0203AD3C == gUnk_0203AD50) {
        CpuCopy32(gUnk_08D6113C[0].unkSrc, gUnk_08D6113C[0].unkDest, 0x400);
    }
    else {
        CpuCopy32(gUnk_08D6113C[1].unkSrc, gUnk_08D6113C[1].unkDest, 0x400);
    }

    r7 = sub_08124430_helper();

    if ((r7 & 9) || ((4 & r7) && !HasBigChest(0))) {
        SpriteInitNoFunc(&helpmenu->unkA8, 0x06013000, 0x480, gUnk_08358B9C[language][4].animId,
                         gUnk_08358B9C[language][4].variant, 0, 0xff, 0x10, 8, 0x22, 0x88, 0x80000);
        CpuCopy32(gUnk_08D6113C[3].unkSrc, gUnk_08D6113C[3].unkDest, 0x400);
    }
    else {
        SpriteInitNoFunc(&helpmenu->unkA8, 0x06013000, 0x480, gUnk_08358B9C[language][2].animId,
                         gUnk_08358B9C[language][2].variant, 0, 0xff, 0x10, 8, 0x22, 0x88, 0x80000);
        CpuCopy32(gUnk_08D6113C[2].unkSrc, gUnk_08D6113C[2].unkDest, 0x400);
    }

    r7 = sub_08124430_helper();

    if (gUnk_0203AD10 & 4) return;

    if ((r7 & 9) || ((r7 & 4) && !HasBigChest(0))) {
        helpmenu->unk80.animId = gUnk_08358B9C[language][0].animId;
        helpmenu->unk80.variant = gUnk_08358B9C[language][0].variant;
        helpmenu->unkA8.animId = gUnk_08358B9C[language][4].animId;
        helpmenu->unkA8.variant = gUnk_08358B9C[language][4].variant;
    }
    else {
        helpmenu->unk80.animId = gUnk_08358B9C[language][0].animId;
        helpmenu->unk80.variant = gUnk_08358B9C[language][0].variant;
        helpmenu->unkA8.animId = gUnk_08358B9C[language][2].animId;
        helpmenu->unkA8.variant = gUnk_08358B9C[language][2].variant;
    }

    if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->unk80);
        sub_08155128(&helpmenu->unkA8);
        sub_0815604C(&helpmenu->unk80);
        sub_0815604C(&helpmenu->unkA8);
    }
}

static void sub_08124978(void) {
    u8 playerId;
    struct HelpMenu *tmp, *helpmenu;
    helpmenu = tmp = TaskGetStructPtr(gCurTask);

    if (gUnk_0203ACC0[0].unkE & 0x1000 || gUnk_0203ACC0[1].unkE & 0x1000 || gUnk_0203ACC0[2].unkE & 0x1000 ||
        gUnk_0203ACC0[3].unkE & 0x1000) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = sub_08124B44;
        if (!(gUnk_0203AD10 & 4)) {
            sub_08155128(&helpmenu->unk80);
            sub_08155128(&helpmenu->unkA8);
            sub_0815604C(&helpmenu->unk80);
            sub_0815604C(&helpmenu->unkA8);
        }
        return;
    }

    if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->unk80);
        sub_08155128(&helpmenu->unkA8);
        sub_0815604C(&helpmenu->unk80);
        sub_0815604C(&helpmenu->unkA8);
    }

    for (playerId = 0; playerId < 4; playerId++) {
        if (gUnk_0203ACC0[playerId].unkE & 2 &&
            (gUnk_0203ACC0[playerId].unkD == 2 || gUnk_0203ACC0[playerId].unkD == 4)) {
            helpmenu->unkD4 = gUnk_0203ACC0[playerId].unkD;
            gCurTask->main = sub_08124AAC;
            CreatePauseFade(0x20, 1);
            return;
        }
    }
}

// Fade to next menu with SELECT
static void sub_08124AAC(void) {
    struct HelpMenu *tmp, *helpmenu;
    helpmenu = tmp = TaskGetStructPtr(gCurTask);

    if (!sub_0812A304()) {
        if (helpmenu->unkD4 == 2) {
            CreatePauseWorldMap(0);
        }
        else if (helpmenu->unkD4 == 4) {
            sub_081278D4();
        }
        CreatePauseFade(-0x20, 1);
        TaskDestroy(gCurTask);
    }

    if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->unk80);
        sub_08155128(&helpmenu->unkA8);
        sub_0815604C(&helpmenu->unk80);
        sub_0815604C(&helpmenu->unkA8);
    }
}

// Fade to game with B/START
static void sub_08124B44(void) {
    struct HelpMenu* helpmenu;
    helpmenu = TaskGetStructPtr(gCurTask);

    if (helpmenu->unkD1++ > 0x12) {
        TaskDestroy(gUnk_0203ACC0[gUnk_0203AD3C].unk0);
        sub_08039670();
        TaskDestroy(gCurTask);
    }
    else if (!(gUnk_0203AD10 & 4)) {
        sub_08155128(&helpmenu->unk80);
        sub_08155128(&helpmenu->unkA8);
        sub_0815604C(&helpmenu->unk80);
        sub_0815604C(&helpmenu->unkA8);
    }
}
