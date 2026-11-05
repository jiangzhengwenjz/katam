#include "code_080257A8.h"
#include "bg.h"
#include "functions.h"
#include "main.h"
#include "task.h"
#include "constants/languages.h"
#include "constants/songs.h"

static void sub_08025B20(void);
static void sub_08025B58(struct Unk_080257A8 *);
static void sub_08025B6C(void);
static void sub_08025BA4(struct Unk_080257A8 *);
static void sub_08025BB8(struct Unk_080257A8 *);
static void sub_08025BFC(struct Unk_080257A8 *);
static void sub_08025C40(struct Unk_080257A8 *);
static void sub_08025C64(struct Unk_080257A8 *);
static void sub_08025C88(struct Unk_080257A8 *);
static void sub_08025CCC(struct Unk_080257A8 *);
static void sub_08025D10(struct Unk_080257A8 *);
static void sub_08025D30(struct Unk_080257A8 *);
static void sub_08025D50(struct Unk_080257A8 *);
static void sub_08025D8C(struct Unk_080257A8 *);
static void sub_08025DC8(struct Unk_080257A8 *);
static void sub_08025DE4(struct Unk_080257A8 *);

static const u16 gUnk_082DEB80[] = {
    [LANGUAGE_JAPANESE] = 0x28D,
    [LANGUAGE_ENGLISH]  = 0x290,
    [LANGUAGE_GERMAN]   = 0x293,
    [LANGUAGE_FRENCH]   = 0x296,
    [LANGUAGE_SPANISH]  = 0x299,
    [LANGUAGE_ITALIAN]  = 0x29C,
};

static const u16 gUnk_082DEB8C[] = {
    [LANGUAGE_JAPANESE] = 0x28E,
    [LANGUAGE_ENGLISH]  = 0x291,
    [LANGUAGE_GERMAN]   = 0x294,
    [LANGUAGE_FRENCH]   = 0x297,
    [LANGUAGE_SPANISH]  = 0x29A,
    [LANGUAGE_ITALIAN]  = 0x29D,
};

static void sub_080257A8(struct Unk_080257A8 *var) {
    struct Background *bg;
    u16 bgId;

    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP;
    bg = &var->unk40;
    gBgCntRegs[0] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(31);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    BgInit(bg, (u32)BG_CHAR_ADDR(0), 0, (u32)BG_SCREEN_ADDR(31), 0, 0, 0x28A, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 8, 0, 0, 0x7FFF, 0x7FFF);
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[0x28A]->tileset, BG_CHAR_ADDR(0));
    gDispCnt |= DISPCNT_BG0_ON;
    bgId = gUnk_082DEB80[gLanguage];
    bg = &var->unk0;
    gBgCntRegs[1] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(30);
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    BgInit(bg, (u32)BG_CHAR_ADDR(2), 0, (u32)BG_SCREEN_ADDR(30), 0, 0, bgId, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 0x19, 0, 0, 0x7FFF, 0x7FFF);
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[bgId]->tileset, BG_CHAR_ADDR(2));
    gDispCnt |= DISPCNT_BG1_ON;
    var->unk80 = sub_08025B58;
}

static void sub_08025914(struct Unk_080257A8 *var) {
    struct Background *bg;
    u16 bgId;

    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP;
    bg = &var->unk40;
    gBgCntRegs[0] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(31);
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    BgInit(bg, (u32)BG_CHAR_ADDR(0), 0, (u32)BG_SCREEN_ADDR(31), 0, 0, 0x28B, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 8, 0, 0, 0x7FFF, 0x7FFF);
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[0x28B]->tileset, BG_CHAR_ADDR(0));
    gDispCnt |= DISPCNT_BG0_ON;
    bgId = gUnk_082DEB8C[gLanguage];
    bg = &var->unk0;
    gBgCntRegs[1] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(30);
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    BgInit(bg, (u32)BG_CHAR_ADDR(2), 0, (u32)BG_SCREEN_ADDR(30), 0, 0, bgId, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 9, 0, 0, 0x7FFF, 0x7FFF);
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[bgId]->tileset, BG_CHAR_ADDR(2));
    gDispCnt |= DISPCNT_BG1_ON;
    var->unk80 = sub_08025BA4;
}

void sub_08025A80(void) {
    struct Task *t = TaskCreate(sub_08025B20, sizeof(struct Unk_080257A8), 1, TASK_USE_IWRAM, NULL);
    struct Unk_080257A8 *var = TaskGetStructPtr(t);

    var->unk80 = sub_080257A8;
    var->unk84 = 0;
}

void sub_08025AD0(void) {
    struct Task *t = TaskCreate(sub_08025B6C, sizeof(struct Unk_080257A8), 1, TASK_USE_IWRAM, NULL);
    struct Unk_080257A8 *var = TaskGetStructPtr(t);

    var->unk80 = sub_08025914;
    var->unk84 = 0;
}

static void sub_08025B20(void) {
    struct Unk_080257A8 *var = TaskGetStructPtr(gCurTask);

    var->unk80(var);
}

static void sub_08025B58(struct Unk_080257A8 *var) {
    var->unk84 = 0;
    var->unk80 = sub_08025BB8;
}

static void sub_08025B6C(void) {
    struct Unk_080257A8 *var = TaskGetStructPtr(gCurTask);

    var->unk80(var);
}

static void sub_08025BA4(struct Unk_080257A8 *var) {
    var->unk84 = 0;
    var->unk80 = sub_08025BFC;
}

static void sub_08025BB8(struct Unk_080257A8 *var) {
    if (++var->unk84 > 0xF) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        var->unk80 = sub_08025C40;
    } else {
        gBldRegs.bldY = 0x10 - var->unk84;
    }
}

static void sub_08025BFC(struct Unk_080257A8 *var) {
    if (++var->unk84 > 0xF) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        var->unk80 = sub_08025C64;
    } else {
        gBldRegs.bldY = 0x10 - var->unk84;
    }
}

static void sub_08025C40(struct Unk_080257A8 *var) {
    var->unk84 = 0;
    m4aSongNumStart(SE_SUBGAME_AUDIENCE_CHEER);
    var->unk80 = sub_08025C88;
}

static void sub_08025C64(struct Unk_080257A8 *var) {
    var->unk84 = 0;
    m4aSongNumStart(MUS_GAME_OVER);
    var->unk80 = sub_08025CCC;
}

static void sub_08025C88(struct Unk_080257A8 *var) {
    if (var->unk84++ > 600 || gPressedKeys & (A_BUTTON | B_BUTTON | START_BUTTON)) {
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        var->unk80 = sub_08025D10;
    }
}

static void sub_08025CCC(struct Unk_080257A8 *var) {
    if (var->unk84++ > 600 || gPressedKeys & (A_BUTTON | B_BUTTON | START_BUTTON)) {
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        var->unk80 = sub_08025D30;
    }
}

static void sub_08025D10(struct Unk_080257A8 *var) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    var->unk84 = 0;
    var->unk80 = sub_08025D50;
}

static void sub_08025D30(struct Unk_080257A8 *var) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    var->unk84 = 0;
    var->unk80 = sub_08025D8C;
}

static void sub_08025D50(struct Unk_080257A8 *var) {
    if (++var->unk84 > 0xF) {
        gBldRegs.bldY = 0x10;
        var->unk80 = sub_08025DC8;
    } else {
        gBldRegs.bldY = var->unk84;
    }
}

static void sub_08025D8C(struct Unk_080257A8 *var) {
    if (++var->unk84 > 0xF) {
        gBldRegs.bldY = 0x10;
        var->unk80 = sub_08025DE4;
    } else {
        gBldRegs.bldY = var->unk84;
    }
}

static void sub_08025DC8(UNUSED struct Unk_080257A8 *var) {
    m4aMPlayAllStop();
    TaskDestroy(gCurTask);
    sub_08138D64(3);
}

static void sub_08025DE4(UNUSED struct Unk_080257A8 *var) {
    m4aMPlayAllStop();
    TaskDestroy(gCurTask);
    sub_08138D64(3);
}
