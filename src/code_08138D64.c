#include "data.h"
#include "code_08138D64.h"
#include "functions.h"
#include "main.h"
#include "bg.h"
#include "random.h"
#include "malloc_vram.h"
#include "constants/languages.h"

void sub_08139218(struct Task *);
void sub_0813A908(struct Unk_08138D64 *);
void sub_0813A9DC(struct Unk_08138D64 *);
void sub_0813AA4C(struct Unk_08138D64 *);
void sub_0813AB40(struct Unk_08138D64 *);
void sub_0813ACA0(struct Unk_08138D64 *);
void sub_0813AD2C(struct Unk_08138D64 *);
void sub_0813BDDC(struct Unk_08138D64 *);
void sub_08141E74(void);
void sub_08141EC0(struct Unk_08138D64 *);

struct Unk_08385CD4 {
    u16 animId;
    u16 variant;
    u16 numTiles;
    u8 filler6[0x32];
}; /* size = 0x38 */

extern const struct Unk_08385CD4 gUnk_08385CD4[][NUM_LANGUAGES];

extern const u32 gUnk_08386518[3];
extern const u16 gUnk_08932F8C[];

void sub_08138D64(u8 a1) {
    u8 i;
    u32 bgCnt[3];
    struct Task *t;
    struct Unk_08138D64 *tmp, *var;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    memcpy(bgCnt, gUnk_08386518, sizeof(gUnk_08386518));
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    m4aSongNumStartOrChange(2);
    t = TaskCreate(sub_08141E74, sizeof(struct Unk_08138D64), 0x1000, TASK_USE_IWRAM, sub_08139218);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct Unk_08138D64));
    var->unkBDC = sub_0813BDDC;
    var->unkB = 0;
    var->unkA = 0;
    var->unk0 = 8;
    var->unk1 = 8;
    var->unk9CA = var->unk9CB = a1;
    var->unk3A4 = var->unk3A5 = 1;
    var->unkBE3 = 0xF;
    var->unkBE6 = (Rand32() % 0x100) + 0x12C;
    var->unkA = var->unkB = gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48;
    for (i = 0; i < 3; ++i) {
        var->unk7[i] = gUnk_0203ACB0[i];
        if (var->unk7[i] == 100)
            var->unk4[i] = 1;
        else
            var->unk4[i] = 0;
    }
    var->unk9CC = sub_08141EC0;
}

void sub_08138F68(void) {
    u8 i;
    u32 bgCnt[3];
    struct Task *t;
    struct Unk_08138D64 *tmp, *var;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    memcpy(bgCnt, gUnk_08386518, sizeof(gUnk_08386518));
    for (i = 0; i < 3; ++i)
        gBgCntRegs[i] = bgCnt[i] | ((0x1F - i) << 8) | (i << 2);
    for (i = 0; i < 4; ++i) {
        gBgScrollRegs[i][0] = 0;
        gBgScrollRegs[i][1] = 0;
    }
    m4aSongNumStartOrChange(2);
    for (i = 0; i < 10; ++i)
        gKeysContinuedRepeatIntervals[i] = 6;
    t = TaskCreate(sub_08141E74, sizeof(struct Unk_08138D64), 0x1000, TASK_USE_IWRAM, sub_08139218);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct Unk_08138D64));
    var->unkBDC = sub_0813BDDC;
    var->unkB = 0;
    var->unkA = 0;
    var->unk0 = 0xA;
    var->unk1 = 0xA;
    var->unk3A4 = var->unk3A5 = 2;
    var->unkBE3 = 0xA;
    var->unkBE6 = (Rand32() % 0x100) + 0x12C;
    var->unkA = var->unkB = gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48;
    for (i = 0; i < 3; ++i) {
        var->unk7[i] = gUnk_0203ACB0[i];
        if (var->unk7[i] == 100)
            var->unk4[i] = 1;
        else
            var->unk4[i] = 0;
    }
    var->unk9CC = sub_08141EC0;
}

s8 sub_0813914C(u8 a1 __attribute__((unused))) {
    s8 r6 = 0x27 * sub_08019CDC() / 0x54;
    u16 r5 = 0, i;

    for (i = 0; i < 0x110; ++i) {
        if (sub_08002A5C(gUnk_08932F8C[i]))
            ++r5;
    }
    r6 += 0x25 * r5 / 0x110;
    r5 = 0;
    for (i = 1; i < 0x10; ++i) {
        if (*sub_08002888(2, i, 0))
            ++r5;
    }
    r6 += r5;
    r6 += sub_08019D5C();
    if (gUnk_0203AD2C >= 9999)
        ++r6;
    return r6;
}

void sub_08139218(struct Task *t) {
    u8 i;
    struct Unk_08138D64 *var = TaskGetStructPtr(t);

    if (var->unk28C.tilesVram) {
        VramFree(var->unk28C.tilesVram);
        var->unk28C.tilesVram = 0;
    }
    if (var->unkC.tilesVram) {
        VramFree(var->unkC.tilesVram);
        var->unkC.tilesVram = 0;
    }
    sub_0813A908(var);
    sub_0813AA4C(var);
    sub_0813A9DC(var);
    sub_0813AB40(var);
    sub_0813ACA0(var);
    sub_0813AD2C(var);
    for (i = 0; i < 0xA; ++i)
        gKeysContinuedRepeatIntervals[i] = 8;
}

void sub_081392A0(struct Unk_08138D64 *a1) {
    struct Sprite *sprite;

    sprite = &a1->unkC;
    SpriteInitNoPointer2(sprite, VramMalloc(gUnk_08385CD4[gLanguage][0].numTiles), 0x780,
        gUnk_08385CD4[gLanguage][0].animId, gUnk_08385CD4[gLanguage][0].variant,
        0, 0xFF, 0x10, 0, -0x9C, 0, 0);
    sprite = &a1->unk28C;
    SpriteInitNoPointer2(&a1->unk28C, VramMalloc(0x10), 0x280, 0x355, 2, 0, 0xFF, 0x10, 1, -0x20, 0x10, 0);
}
