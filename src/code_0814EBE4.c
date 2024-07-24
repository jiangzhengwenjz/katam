#include "global.h"
#include "data.h"
#include "bg.h"
#include "code_08138D64.h"
#include "code_0814EBE4.h"
#include "multi_08030C94.h"
#include "palette.h"
#include "random.h"
#include "save.h"
#include "title_screen.h"
#include "constants/languages.h"

static void sub_0814ECA4(struct Unk_0814EBE4 *);
static void sub_0814ED78(struct Unk_0814EBE4 *);
static void nullsub_139(struct Task *);
static void sub_0814EF9C(void);
static void sub_0814EFD8(u8);
static void sub_0814F000(u8);
static void sub_0814F034(u8, u16, u16, u16);
static void sub_0814F0B8(struct Unk_0814EBE4 *);
static void sub_0814F100(struct Unk_0814EBE4 *);
static void sub_0814F124(struct Unk_0814EBE4 *);
static void sub_0814F164(struct Unk_0814EBE4 *);
static void sub_0814F190(struct Unk_0814EBE4 *);
static void sub_0814F1D8(struct Unk_0814EBE4 *);
static void sub_0814F20C(struct Unk_0814EBE4 *);

static const u16 gUnk_08387FF0[][4] = {
    [LANGUAGE_JAPANESE] = { 0x2DD, 0x2DC, 0x2E4, 0x2E3 },
    [LANGUAGE_ENGLISH]  = { 0x2DE, 0x2DC, 0x2E5, 0x2E3 },
    [LANGUAGE_GERMAN]   = { 0x2DF, 0x2DC, 0x2E6, 0x2E3 },
    [LANGUAGE_FRENCH]   = { 0x2E0, 0x2DC, 0x2E7, 0x2E3 },
    [LANGUAGE_SPANISH]  = { 0x2E1, 0x2DC, 0x2E8, 0x2E3 },
    [LANGUAGE_ITALIAN]  = { 0x2E2, 0x2DC, 0x2E9, 0x2E3 },
};

void sub_0814EBE4(void) {
    u8 i;
    struct Task *t;
    struct Unk_0814EBE4 *var;

    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(31) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(30) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(29) | BGCNT_TXT256x256;
    gBgCntRegs[3] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(28) | BGCNT_TXT256x256;
    for (i = 0; i < 4; ++i)
        gBgScrollRegs[i][0] = gBgScrollRegs[i][1] = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldAlpha = 0;
    gBldRegs.bldY = 0x10;
    t = TaskCreate(sub_0814EF9C, sizeof(struct Unk_0814EBE4), 0x1000, TASK_USE_IWRAM, nullsub_139);
    var = TaskGetStructPtr(t);
    CpuFill16(0, var, sizeof(struct Unk_0814EBE4));
    var->unk4 = sub_0814ECA4;
}

static void sub_0814ECA4(struct Unk_0814EBE4 *a1) {
    m4aMPlayAllStop();
    sub_08141E30();
    if (gUnk_0203AD3C == gUnk_0203AD24
        && gUnk_0203ACB0[gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48] == 100
        && gUnk_0203AD2C < 10000) {
        gUnk_0203AD2C = 0x2710;
        if (!(gUnk_0203AD10 & 0x10)) {
            if (gUnk_0203AD10 & 2) {
                if (gUnk_0203AD3C == gUnk_0203AD24)
                    sub_0800ACD4(1, gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48);
                else
                    sub_08031CE4(8);
            } else {
                sub_0800ACD4(1, gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48);
            }
        }
        a1->unk4 = sub_0814ED78;
    } else {
        a1->unk4 = sub_0814F20C;
    }
}

static void sub_0814ED78(struct Unk_0814EBE4 *a1) {
    u8 i;
    u16 idx;

    for (i = 0; i < 3; ++i)
        sub_0814EFD8(i);
    for (i = 0; i < 8; ++i)
        sub_0814F000(i);
    sub_0814F034(0, gUnk_08387FF0[gLanguage][0], 0, 0);
    sub_0814F034(1, gUnk_08387FF0[gLanguage][1], 0, 0);
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;
        u32 charbase;
        u32 screenbase;

        idx = gUnk_08387FF0[gLanguage][2];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        charbase = (gBgCntRegs[2] >> 2) & 3;
        screenbase = (gBgCntRegs[2] >> 8) & 0x1F;
        vram = (u16 *)(screenbase * 0x800 + 0x6000000);
        LZ77UnCompVram(tileset, (u16 *)(charbase * 0x4000 + 0x6000000));
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x1E * sizeof(u16));
    }
    {
        const struct TiledBg_082D7850 *ptr;
        const u16 *tilemap;
        u16 height;
        u16 *vram;
        const u32 *tileset;
        u16 idx;
        u16 i;
        u32 charbase;
        u32 screenbase;

        idx = gUnk_08387FF0[gLanguage][3];
        ptr = gUnk_082D7850[idx];
        tileset = ptr->tileset;
        tilemap = ptr->tilemap;
        height = ptr->height;
        charbase = (gBgCntRegs[3] >> 2) & 3;
        screenbase = (gBgCntRegs[3] >> 8) & 0x1F;
        vram = (u16 *)(screenbase * 0x800 + 0x6000000);
        LZ77UnCompVram(tileset, (u16 *)(charbase * 0x4000 + 0x6002000));
        for (i = 0; i < height; ++i)
            CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x1E * sizeof(u16));
    }
    idx = gUnk_08387FF0[gLanguage][1];
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation(gUnk_082D7850[idx]->palette, 0, 0x20);
    else {
        DmaCopy16(3, gUnk_082D7850[idx]->palette, gBgPalette, 0x20 * sizeof(u16));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    a1->unk8 = 0;
    a1->unk4 = sub_0814F0B8;
}

static void sub_0814EF1C(struct Unk_0814EBE4 *a1) {
    if (++a1->unk8 & 1) {
        s8 v1 = (Rand32() & 7) - 3;
        s8 v2 = (Rand32() & 7) - 3;
        gBgScrollRegs[2][0] = gBgScrollRegs[3][0] = v1;
        gBgScrollRegs[2][1] = gBgScrollRegs[3][1] = v2 - 0xC;
    }
    if (a1->unk8 > 0x2C) {
        gBgScrollRegs[3][1] = -0xC;
        gBgScrollRegs[2][1] = -0xC;
        a1->unk8 = 0;
        a1->unk4 = sub_0814F164;
    }
}

static void nullsub_139(struct Task *t __attribute__((unused))) {}

static void sub_0814EF9C(void) {
    struct Unk_0814EBE4 *var = TaskGetStructPtr(gCurTask);

    ++var->unk0;
    var->unk4(var);
}

static void sub_0814EFD8(u8 a1) {
    CpuFill16(0, a1 * 0x2000 + (u16 *)0x6000000, 0x2000 * sizeof(u16));
}

static void sub_0814F000(u8 a1) {
    CpuFill16(0x1FF, ((0x1F - a1) * 0x400) + (u16 *)0x6000000, 0x400 * sizeof(u16));
}

static void sub_0814F034(u8 a1, u16 a2, u16 a3, u16 a4) {
    const struct TiledBg_082D7850 *ptr;
    const u16 *tilemap;
    u16 height;
    u16 *vram;
    const u32 *tileset;
    u16 i;
    u32 charbase;
    u32 screenbase;

    ptr = gUnk_082D7850[a2];
    tileset = ptr->tileset;
    tilemap = ptr->tilemap;
    height = ptr->height;
    charbase = (gBgCntRegs[a1] >> 2) & 3;
    screenbase = (gBgCntRegs[a1] >> 8) & 0x1F;
    vram = (u16 *)(screenbase * 0x800 + ({(a3 >> 3) * 0x40 + 0x6000000;}));
    LZ77UnCompVram(tileset, (u16 *)(charbase * 0x4000 + ({0x20 * a4 + 0x6000000;})));
    for (i = 0; i < height; ++i)
        CpuCopy16(tilemap + i * 0x1E, vram + i * 0x20, 0x1E * sizeof(u16));
}

static void sub_0814F0B8(struct Unk_0814EBE4 *a1) {
    ++a1->unk8;
    gBldRegs.bldY = 0x10 - 0x10 * a1->unk8 / 0x14;
    if (a1->unk8 > 0x13) {
        m4aSongNumStart(34);
        gBldRegs.bldY = 0;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldCnt = 0;
        a1->unk8 = 0;
        a1->unk4 = sub_0814F100;
    }
}

static void sub_0814F100(struct Unk_0814EBE4 *a1) {
    if (++a1->unk8 > 0xEF) {
        a1->unk8 = 0;
        a1->unk4 = sub_0814F124;
    }
}

static void sub_0814F124(struct Unk_0814EBE4 *a1) {
    gDispCnt |= DISPCNT_BG2_ON | DISPCNT_BG3_ON;
    gBgScrollRegs[3][1] = -0xC;
    gBgScrollRegs[2][1] = -0xC;
    m4aSongNumStart(200);
    a1->unk8 = 0;
    a1->unk4 = sub_0814EF1C;
}

static void sub_0814F164(struct Unk_0814EBE4 *a1) {
    if (++a1->unk8 > 0x27) {
        m4aSongNumStart(556);
        a1->unk8 = 0;
        a1->unk4 = sub_0814F190;
    }
}

static void sub_0814F190(struct Unk_0814EBE4 *a1) {
    bool32 var = !!(gPressedKeys & (START_BUTTON | A_BUTTON | B_BUTTON));

    if (++a1->unk8 > 0xB3 && var) {
        gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
        gBldRegs.bldAlpha = 0;
        gBldRegs.bldY = 0;
        a1->unk8 = 0;
        a1->unk4 = sub_0814F1D8;
    }
}

static void sub_0814F1D8(struct Unk_0814EBE4 *a1) {
    ++a1->unk8;
    gBldRegs.bldY = 0x10 * a1->unk8 / 0x28;
    if (a1->unk8 > 0x27)
        a1->unk4 = sub_0814F20C;
}

static void sub_0814F20C(struct Unk_0814EBE4 *a1 __attribute__((unused))) {
    m4aMPlayAllStop();
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    gUnk_0203AD10 = 0;
    TaskDestroy(gCurTask);
    CreateTitleScreen();
}
