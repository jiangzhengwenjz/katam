#include "global.h"
#include "main.h"
#include "data.h"
#include "bg.h"
#include "functions.h"
#include "task.h"
#include "code_08138D64.h"
#include "code_080332BC.h"
#include "gba/m4a.h"
#include "constants/songs.h"

struct Unk_08025A80 {
    /* 0x00 */ struct Background unk0;
    /* 0x40 */ struct Background unk40;
    /* 0x80 */ void (*unk80)(struct Unk_08025A80 *);
    /* 0x84 */ u16 counter;
}; /* size = 0x88 */

static void sub_080257A8(struct Unk_08025A80 *);
static void sub_08025914(struct Unk_08025A80 *);
static void sub_08025B20(void);
static void sub_08025B58(struct Unk_08025A80 *);
static void sub_08025B6C(void);
static void sub_08025BA4(struct Unk_08025A80 *);
static void sub_08025BB8(struct Unk_08025A80 *);
static void sub_08025BFC(struct Unk_08025A80 *);
static void sub_08025C40(struct Unk_08025A80 *);
static void sub_08025C64(struct Unk_08025A80 *);
static void sub_08025C88(struct Unk_08025A80 *);
static void sub_08025CCC(struct Unk_08025A80 *);
static void sub_08025D10(struct Unk_08025A80 *);
static void sub_08025D30(struct Unk_08025A80 *);
static void sub_08025D50(struct Unk_08025A80 *);
static void sub_08025D8C(struct Unk_08025A80 *);
static void sub_08025DC8(struct Unk_08025A80 *);
static void sub_08025DE4(struct Unk_08025A80 *);

extern const u16 gUnk_082DEB10[4];
extern const bool32 gUnk_082DEB18[4];
extern const s32 gUnk_082DEB28[];
extern const s32 gUnk_082DEB2C[];
extern const u16 gUnk_082DEB48[4];
extern const bool32 gUnk_082DEB50[4];
extern const s32 gUnk_082DEB60[];
extern const s32 gUnk_082DEB64[];
extern const u16 gUnk_082DEB80[];
extern const u16 gUnk_082DEB8C[];

// sub_08025650: functionally equivalent; the remaining diff vs the original
// is register allocation only (the two hoisted coord-table bases lose their
// registers to the CpuFill16 temp addresses).
#ifndef NONMATCHING
NAKED void sub_08025650(u8 count) {
    asm(".include \"asm/nonmatching/sub_08025650.inc\"");
}
#else
void sub_08025650(u8 count) {
    u16 songs[4];
    bool32 flags[4];
    s32 coords[4][2];
    u16 i;

    for (i = 0; i <= 3; i++) {
        if (i < count) {
            songs[i] = gUnk_082DEB10[i];
            flags[i] = gUnk_082DEB18[i];
            coords[i][0] = gUnk_082DEB28[i * 2];
            coords[i][1] = gUnk_082DEB2C[i * 2];
        } else {
            songs[i] = gUnk_082DEB48[i];
            flags[i] = gUnk_082DEB50[i];
            coords[i][0] = gUnk_082DEB60[i * 2];
            coords[i][1] = gUnk_082DEB64[i * 2];
        }
    }
    CpuFill16(0x7FFF, gBgPalette, BG_PLTT_SIZE);
    CpuFill16(0x7FFF, gObjPalette, OBJ_PLTT_SIZE);
    gMainFlags |= 3;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    sub_080332BC(count, 0, songs, coords[0], flags);
    for (i = count; i <= 3; i++) {
        gUnk_02038590[i].unk18 = 0x3C9;
    }
}
#endif

static void sub_080257A8(struct Unk_08025A80 *x) {
    struct Background *bg;
    u16 langMap;

    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldY = 0x10;
    gDispCnt = DISPCNT_OBJ_1D_MAP;
    bg = &x->unk40;
    gBgCntRegs[0] = 0x1F03;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    BgInit(bg, 0x06000000, 0, 0x0600F800, 0, 0, 0x28A, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 8, 0, 0, 0x7FFF, 0x7FFF);
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[0x28A]->tileset, (void *)0x06000000);
    gDispCnt |= DISPCNT_BG0_ON;

    langMap = gUnk_082DEB80[gLanguage];
    gBgCntRegs[1] = 0x1E0A;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    BgInit(&x->unk0, 0x06008000, 0, 0x0600F000, 0, 0, langMap, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 0x19, 0, 0, 0x7FFF, 0x7FFF);
    sub_08153060(&x->unk0);
    LZ77UnCompVram(gUnk_082D7850[langMap]->tileset, (void *)0x06008000);
    gDispCnt |= DISPCNT_BG1_ON;
    x->unk80 = sub_08025B58;
}

static void sub_08025914(struct Unk_08025A80 *x) {
    struct Background *bg;
    u16 langMap;

    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldY = 0x10;
    gDispCnt = DISPCNT_OBJ_1D_MAP;
    bg = &x->unk40;
    gBgCntRegs[0] = 0x1F03;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    BgInit(bg, 0x06000000, 0, 0x0600F800, 0, 0, 0x28B, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 8, 0, 0, 0x7FFF, 0x7FFF);
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[0x28B]->tileset, (void *)0x06000000);
    gDispCnt |= DISPCNT_BG0_ON;

    langMap = gUnk_082DEB8C[gLanguage];
    gBgCntRegs[1] = 0x1E0A;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    BgInit(&x->unk0, 0x06008000, 0, 0x0600F000, 0, 0, langMap, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 9, 0, 0, 0x7FFF, 0x7FFF);
    sub_08153060(&x->unk0);
    LZ77UnCompVram(gUnk_082D7850[langMap]->tileset, (void *)0x06008000);
    gDispCnt |= DISPCNT_BG1_ON;
    x->unk80 = sub_08025BA4;
}

void sub_08025A80(void) {
    struct Task *task = TaskCreate(sub_08025B20, sizeof(struct Unk_08025A80), 1, 0, NULL);
    struct Unk_08025A80 *x = TaskGetStructPtr(task);

    x->unk80 = sub_080257A8;
    x->counter = 0;
}

void sub_08025AD0(void) {
    struct Task *task = TaskCreate(sub_08025B6C, sizeof(struct Unk_08025A80), 1, 0, NULL);
    struct Unk_08025A80 *x = TaskGetStructPtr(task);

    x->unk80 = sub_08025914;
    x->counter = 0;
}

static void sub_08025B20(void) {
    struct Unk_08025A80 *x = TaskGetStructPtr(gCurTask);
    x->unk80(x);
}

static void sub_08025B58(struct Unk_08025A80 *x) {
    x->counter = 0;
    x->unk80 = sub_08025BB8;
}

static void sub_08025B6C(void) {
    struct Unk_08025A80 *x = TaskGetStructPtr(gCurTask);
    x->unk80(x);
}

static void sub_08025BA4(struct Unk_08025A80 *x) {
    x->counter = 0;
    x->unk80 = sub_08025BFC;
}

static void sub_08025BB8(struct Unk_08025A80 *x) {
    x->counter++;
    if (x->counter > 0xF) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        x->unk80 = sub_08025C40;
    } else {
        gBldRegs.bldY = 0x10 - x->counter;
    }
}

static void sub_08025BFC(struct Unk_08025A80 *x) {
    x->counter++;
    if (x->counter > 0xF) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        x->unk80 = sub_08025C64;
    } else {
        gBldRegs.bldY = 0x10 - x->counter;
    }
}

static void sub_08025C40(struct Unk_08025A80 *x) {
    x->counter = 0;
    m4aSongNumStart(SE_SUBGAME_AUDIENCE_CHEER);
    x->unk80 = sub_08025C88;
}

static void sub_08025C64(struct Unk_08025A80 *x) {
    x->counter = 0;
    m4aSongNumStart(MUS_GAME_OVER);
    x->unk80 = sub_08025CCC;
}

static void sub_08025C88(struct Unk_08025A80 *x) {
    if (x->counter++ > 600 || (gPressedKeys & (A_BUTTON | B_BUTTON | START_BUTTON))) {
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        x->unk80 = sub_08025D10;
    }
}

static void sub_08025CCC(struct Unk_08025A80 *x) {
    if (x->counter++ > 600 || (gPressedKeys & (A_BUTTON | B_BUTTON | START_BUTTON))) {
        m4aSongNumStart(SE_MAIN_MENU_SELECT);
        x->unk80 = sub_08025D30;
    }
}

static void sub_08025D10(struct Unk_08025A80 *x) {
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldY = 0;
    x->counter = 0;
    x->unk80 = sub_08025D50;
}

static void sub_08025D30(struct Unk_08025A80 *x) {
    gBldRegs.bldCnt = 0xBF;
    gBldRegs.bldY = 0;
    x->counter = 0;
    x->unk80 = sub_08025D8C;
}

static void sub_08025D50(struct Unk_08025A80 *x) {
    x->counter++;
    if (x->counter > 0xF) {
        gBldRegs.bldY = 0x10;
        x->unk80 = sub_08025DC8;
    } else {
        gBldRegs.bldY = x->counter;
    }
}

static void sub_08025D8C(struct Unk_08025A80 *x) {
    x->counter++;
    if (x->counter > 0xF) {
        gBldRegs.bldY = 0x10;
        x->unk80 = sub_08025DE4;
    } else {
        gBldRegs.bldY = x->counter;
    }
}

static void sub_08025DC8(struct Unk_08025A80 *x) {
    m4aMPlayAllStop();
    TaskDestroy(gCurTask);
    sub_08138D64(3);
}

static void sub_08025DE4(struct Unk_08025A80 *x) {
    m4aMPlayAllStop();
    TaskDestroy(gCurTask);
    sub_08138D64(3);
}