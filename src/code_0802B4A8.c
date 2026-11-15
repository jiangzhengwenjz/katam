#include "code_0802B4A8.h"
#include "code_0814EBE4.h"
#include "functions.h"
#include "kirby.h"
#include "main.h"
#include "malloc_vram.h"
#include "palette.h"
#include "random.h"
#include "save.h"
#include "task.h"
#include "trig.h"
#include "constants/languages.h"

#include <limits.h>

static void sub_0802BA6C(void);
static void sub_0802BCEC(struct Unk_0802B4A8 *);
static void sub_0802C26C(struct Unk_0802B4A8 *);
static void sub_0802C4BC(struct Unk_0802B4A8 *);
static void sub_0802C68C(struct Unk_0802B4A8 *);
static void sub_0802CA78(struct Unk_0802B4A8 *);
static void sub_0802CB60(struct Unk_0802B4A8 *);
static void sub_0802CDA0(struct Unk_0802DB48 *);
static struct Unk_0802CE64 *sub_0802CE64(struct Unk_0802B4A8 *, u16, u16, u32, s32, s32, s16, s16, u16);
static void sub_0802CF2C(void);
static struct Unk_0802CE64 *sub_0802CFF0(struct Unk_0802B4A8 *, u16, u16, u32, s32, s32, s16, s16, u16);
static void sub_0802D0B8(void);
static struct Unk_0802CE64 *sub_0802D198(struct Unk_0802B4A8 *, u16, u16, u32, s32, s32, s16, s16);
static void sub_0802D288(void);
static void sub_0802D360(struct Task *);
static void sub_0802D3E0(struct Unk_0802B4A8 *);
static void sub_0802D3F4(struct Unk_0802B4A8 *);
static void sub_0802D408(struct Unk_0802B4A8 *);
static void sub_0802D430(struct Unk_0802B4A8 *);
static void sub_0802D444(struct Unk_0802B4A8 *);
static void sub_0802D458(struct Unk_0802B4A8 *);
static void sub_0802D46C(struct Unk_0802B4A8 *);
static void sub_0802D480(struct Unk_0802B4A8 *);
static void sub_0802D4E0(struct Unk_0802B4A8 *);
static void sub_0802D4F4(struct Unk_0802B4A8 *);
static void sub_0802D528(void);
static void sub_0802D53C(void);
static void sub_0802D550(void);
static void sub_0802D564(struct Unk_0802B4A8 *);
static void sub_0802D588(struct Unk_0802B4A8 *);
static void sub_0802D5B0(struct Unk_0802B4A8 *);
static void sub_0802D5D4(struct Unk_0802B4A8 *);
static void sub_0802D618(struct Unk_0802B4A8 *);
static void sub_0802D664(struct Unk_0802B4A8 *);
static void sub_0802D6B4(struct Unk_0802B4A8 *);
static void sub_0802D6D8(struct Unk_0802B4A8 *);
static void sub_0802D708(struct Unk_0802B4A8 *);
static void sub_0802D738(struct Unk_0802B4A8 *);
static void sub_0802D75C(struct Unk_0802B4A8 *);
static void sub_0802D780(struct Unk_0802B4A8 *);
static void sub_0802D7DC(struct Unk_0802B4A8 *);
static void sub_0802D800(struct Unk_0802B4A8 *);
static void sub_0802D824(struct Unk_0802B4A8 *);
static void sub_0802D84C(struct Unk_0802B4A8 *);
static void sub_0802D898(struct Unk_0802DB48 *);
static void sub_0802D8AC(struct Unk_0802DB48 *);
static void sub_0802D8F4(struct Unk_0802DB48 *);
static void sub_0802D92C(struct Unk_0802DB48 *);
static void sub_0802D940(struct Unk_0802DB48 *);
static void sub_0802D964(struct Unk_0802DB48 *);
static void sub_0802D9A4(struct Unk_0802DB48 *);
static void sub_0802D9B8(struct Unk_0802B4A8 *);
static void sub_0802D9F4(struct Unk_0802B4A8 *);
static void sub_0802DA54(struct Unk_0802B4A8 *);
static void sub_0802DAA0(struct Unk_0802B4A8 *);
static void sub_0802DAB4(struct Unk_0802B4A8 *);
static void sub_0802DAC8(struct Unk_0802B4A8 *);
static void sub_0802DB00(struct Unk_0802B4A8 *);
static void sub_0802DB34(struct Unk_0802B4A8 *);
static struct Unk_0802DB48 *sub_0802DB48(struct Unk_0802B4A8 *);
static void sub_0802DBC0(struct Unk_0802B4A8 *);
static void sub_0802DC10(struct Unk_0802B4A8 *);
static void sub_0802DC34(struct Unk_0802B4A8 *);
static void sub_0802DC58(struct Unk_0802B4A8 *);
static void sub_0802DCA0(struct Unk_0802B4A8 *);
static void sub_0802DCC4(struct Unk_0802B4A8 *);
static void sub_0802DD18(struct Unk_0802B4A8 *);
static void sub_0802DD3C(void);
static void sub_0802DD94(struct Unk_0802DB48 *);
static void sub_0802DDA0(struct Unk_0802B4A8 *);
static void sub_0802DDB4(struct Unk_0802B4A8 *);
static void sub_0802DDC0(struct Unk_0802B4A8 *);
static void sub_0802DDEC(struct Unk_0802B4A8 *);
static void sub_0802DE00(struct Unk_0802B4A8 *);
static void sub_0802DE14(struct Unk_0802B4A8 *);
static void sub_0802DE38(struct Unk_0802B4A8 *);
static void sub_0802DE94(struct Unk_0802B4A8 *);
static void sub_0802DEB8(struct Unk_0802B4A8 *);
static void sub_0802DEE0(struct Unk_0802B4A8 *);
static void sub_0802DF0C(struct Unk_0802B4A8 *);
static void sub_0802DF30(struct Unk_0802B4A8 *);
static void sub_0802DFA0(struct Unk_0802B4A8 *);
static void sub_0802DFB4(struct Unk_0802B4A8 *);
static void sub_0802E01C(struct Unk_0802B4A8 *);
static void sub_0802E040(struct Unk_0802B4A8 *);
static void sub_0802E064(struct Unk_0802B4A8 *);
static void sub_0802E088(struct Unk_0802B4A8 *);
static void sub_0802E0D4(struct Unk_0802B4A8 *);
static void sub_0802E0E8(struct Unk_0802B4A8 *);
static void sub_0802E11C(struct Unk_0802B4A8 *);

extern bool16 gUnk_0300000C;

static const u16 gUnk_082EB4A0[][2] = {
    { 0x15, 0 },
    { 0x15, 1 },
    { 0x15, 2 },
    { 0x15, 3 },
    { 0x383, 0 },
};

static const u16 gUnk_082EB4B4[][2] = {
    { 0x15, 0 },
    { 0x15, 1 },
    { 0x15, 2 },
    { 0x15, 3 },
    { 0x15, 4 },
    { 0x15, 5 },
    { 0x15, 6 },
    { 0x15, 7 },
    { 0x15, 8 },
    { 0x15, 9 },
    { 0x15, 0xA },
    { 0x15, 0xB },
    { 0x15, 0xC },
    { 0x15, 0xD },
};

static const s32 gUnk_082EB4EC[][2] = {
    { 0x11800, 0x6400 },
    { 0x12C00, 0x5000 },
    { 0x14000, 0x6400 },
    { 0x14000, 0x3C00 },
    { 0xB400, 0xC800 },
};

static const s32 gUnk_082EB514[][2] = {
    { -0x100, 0 },
    { -0xF0, 0 },
    { -0xE0, 0 },
    { -0xD0, 0 },
    { 0, 0 },
};

static const s32 gUnk_082EB53C[][2] = {
    { 0x5000, 0x6400 },
    { 0x7800, 0x5000 },
    { 0xA000, 0x6400 },
    { 0xB400, 0x3C00 },
    { 0, 0 },
};

static const s32 gUnk_082EB564[][2] = {
    { 0x80, 0 },
    { 0x70, -0x60 },
    { 0x60, 0xA0 },
    { 0x50, -0x80 },
    { -0x80, -0x70 },
};

static const s32 gUnk_082EB58C[][2] = {
    { 0xA000, 0x6400 },
    { 0xB400, 0x4600 },
    { 0xBE00, 0x7800 },
    { 0xD200, 0x2800 },
    { 0x3C00, 0x6400 },
};

static const u16 gUnk_082EB5B4[] = { 0, 0xA0, 0x140, 0x1E0, 0x280 };

static const s32 gUnk_082EB5C0[][2] = {
    { -0x3000, 0xA400 },
    { -0x6000, 0x7400 },
    { -0x9000, 0xA400 },
    { -0x6000, 0xD400 },
};

static const u16 gUnk_082EB5E0[][2] = {
    { 0x291, 1 },
    { 0x291, 2 },
    { 0x291, 3 },
    { 0x291, 4 },
    { 0x291, 5 },
    { 0x291, 6 },
    { 0x291, 7 },
    { 0x291, 8 },
    { 0x291, 9 },
    { 0x291, 0xA },
    { 0x291, 0xB },
    { 0x291, 0xC },
};

static const u8 gUnk_082EB610[] = {
    4, 4, 4, 4, 4, 5, 5, 5, 5, 5, 0, 0, 0, 0, 6, 6,
    6, 7, 7, 7, 1, 1, 1, 8, 8, 9, 9, 2, 2, 0xA, 0xB, 3,
};

static const u8 gUnk_082EB630[] = { 0, 1, 6, 7 };

static const u16 gUnk_082EB634[NUM_LANGUAGES] = {
    [LANGUAGE_JAPANESE] = 0x2B2,
    [LANGUAGE_ENGLISH]  = 0x2B9,
    [LANGUAGE_GERMAN]   = 0x2C0,
    [LANGUAGE_FRENCH]   = 0x2C7,
    [LANGUAGE_SPANISH]  = 0x2CE,
    [LANGUAGE_ITALIAN]  = 0x2D5,
};

static const u16 gUnk_082EB640[NUM_LANGUAGES][6][2] = {
    [LANGUAGE_JAPANESE] = {
        { 0x2B3, 300 },
        { 0x2B4, 300 },
        { 0x2B5, 300 },
        { 0x2B6, 300 },
        { 0x2B7, 300 },
        { 0x2B8, 300 },
    },
    [LANGUAGE_ENGLISH] = {
        { 0x2BA, 300 },
        { 0x2BB, 300 },
        { 0x2BC, 300 },
        { 0x2BD, 300 },
        { 0x2BE, 300 },
        { 0x2BF, 300 },
    },
    [LANGUAGE_GERMAN] = {
        { 0x2C1, 300 },
        { 0x2C2, 300 },
        { 0x2C3, 300 },
        { 0x2C4, 300 },
        { 0x2C5, 300 },
        { 0x2C6, 300 },
    },
    [LANGUAGE_FRENCH] = {
        { 0x2C8, 300 },
        { 0x2C9, 300 },
        { 0x2CA, 300 },
        { 0x2CB, 300 },
        { 0x2CC, 300 },
        { 0x2CD, 300 },
    },
    [LANGUAGE_SPANISH] = {
        { 0x2CF, 300 },
        { 0x2D0, 300 },
        { 0x2D1, 300 },
        { 0x2D2, 300 },
        { 0x2D3, 300 },
        { 0x2D4, 300 },
    },
    [LANGUAGE_ITALIAN] = {
        { 0x2D6, 300 },
        { 0x2D7, 300 },
        { 0x2D8, 300 },
        { 0x2D9, 300 },
        { 0x2DA, 300 },
        { 0x2DB, 300 },
    },
};

void sub_0802B4A8(void) {
    struct Task *task;
    struct Unk_0802B4A8 *tmp, *unk0802B4A8;
    u16 i;

    // TODO: Original bug: a 32-bit fill of 0x00007FFF makes even palette entries white and odd entries black (sub_0802CB60 uses CpuFill16).
    CpuFill32(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill32(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    task = TaskCreate(sub_0802BA6C, sizeof(struct Unk_0802B4A8), 0x100, TASK_USE_IWRAM, sub_0802D360);
    tmp = TaskGetStructPtr(task);
    unk0802B4A8 = tmp;
    CpuFill16(0, unk0802B4A8, sizeof(struct Unk_0802B4A8));
    unk0802B4A8->unk2B8 = 0x200;
    SpriteInit(&unk0802B4A8->unk16C, VramMalloc(0x100), 0, 0x292, 0, 0, 0xFF, 0x10, 0xD, 0, 0, 0);
    for (i = 0; i < ARRAY_COUNT(unk0802B4A8->unk4); ++i) {
        unk0802B4A8->unk4[i].tilesVram = VramMalloc(0x10);
        unk0802B4A8->unk218[i][0] = gUnk_082EB4EC[i][0];
        unk0802B4A8->unk218[i][1] = gUnk_082EB4EC[i][1];
        unk0802B4A8->unk254[i] = gUnk_082EB5B4[i];
    }
    unk0802B4A8->unkCC.tilesVram = VramMalloc(0x10);
    unk0802B4A8->unkF4.tilesVram = VramMalloc(0x30);
    unk0802B4A8->unk11C.tilesVram = VramMalloc(0x30);
    unk0802B4A8->unk144.tilesVram = VramMalloc(0x10);
    gUnk_0300000C = FALSE;
    unk0802B4A8->unk0 = sub_0802BCEC;
}

static void sub_0802B62C(struct Unk_0802B4A8 *arg0) {
    u16 i, j;
    struct Sprite *sprite;

    if (!(arg0->flags & 0x80000000) && !sub_08155128(&arg0->unkCC))
        arg0->unkCC.unk1B = 0xFF;
    for (j = 0, i = 0; i < ARRAY_COUNT(arg0->unk4); ++i, j += 3) {
        if ((1 << j) & arg0->flags) {
            sprite = &arg0->unk4[i];
            arg0->unk254[i] = (arg0->unk254[i] + 4) & 0x3FF;
            if (arg0->unk25E[i] < arg0->unk268[i]) {
                arg0->unk25E[i] += 4;
                if (arg0->unk25E[i] > arg0->unk268[i])
                    arg0->unk25E[i] = arg0->unk268[i];
            } else if (arg0->unk25E[i] > arg0->unk268[i]) {
                arg0->unk25E[i] -= 4;
                if (arg0->unk25E[i] < arg0->unk268[i])
                    arg0->unk25E[i] = arg0->unk268[i];
            }
            sprite->x = arg0->unk218[i][0] >> 8;
            sprite->y = (arg0->unk218[i][1] + (gSineTable[arg0->unk254[i]] >> 10) * (arg0->unk25E[i] >> 4)) >> 8;
            if (!(arg0->flags & 0x80000000)) {
                if (!((2 << j) & arg0->flags) && !sub_08155128(sprite))
                    arg0->flags |= 2 << j;
                if ((2 << j) & arg0->flags) {
                    arg0->flags &= ~(2 << j);
                    sprite->unk1B = 0xFF;
                }
            }
            DisplaySprite(sprite);
            if ((4 << j) & arg0->flags) {
                arg0->unkCC.x = sprite->x;
                arg0->unkCC.y = sprite->y;
                DisplaySprite(&arg0->unkCC);
                if (!(arg0->flags & 0x800000)) {
                    if (!((arg0->unk2BA + i * 2) & 7))
                        sub_0802CFF0(arg0, 0x295, 2, arg0->unk16C.tilesVram,
                            arg0->unk2B4 + arg0->unk218[i][0] + 0x1000, arg0->unk218[i][1] + 0x800, 0, 0, 1);
                    if (!((arg0->unk2BA + i * 2) & 0xF)) {
                        u32 randomVal = Rand16() & 0x1F;

                        sub_0802CE64(arg0, gUnk_082EB5E0[gUnk_082EB610[randomVal]][0], gUnk_082EB5E0[gUnk_082EB610[randomVal]][1], arg0->unk16C.tilesVram,
                            arg0->unk2B4 + arg0->unk218[i][0] + ((Rand16() & 0xF) + 8) * 0x100,
                            arg0->unk218[i][1] + ((Rand16() & 0x1F) - 0x10) * 0x100,
                            (Rand16() & 0xFF) + 0x80, 0, 0);
                    }
                }
            }
        }
    }
    if (arg0->flags & 0x8000) {
        sprite = &arg0->unkF4;
        if (!(arg0->flags & 0x80000000)) {
            if (!(arg0->flags & 0x10000) && !sub_08155128(sprite))
                arg0->flags |= 0x10000;
            if (arg0->flags & 0x10000) {
                arg0->flags &= ~0x10000;
                sprite->unk1B = 0xFF;
            }
        }
        sprite->x = arg0->unk274[0].x >> 8;
        sprite->y = arg0->unk274[0].y >> 8;
        DisplaySprite(sprite);
    }
    if (arg0->flags & 0x20000) {
        sprite = &arg0->unk11C;
        if (!(arg0->flags & 0x80000000)) {
            if (!(arg0->flags & 0x40000) && !sub_08155128(sprite))
                arg0->flags |= 0x40000;
            if (arg0->flags & 0x40000) {
                arg0->flags &= ~0x40000;
                sprite->unk1B = 0xFF;
            }
        }
        sprite->x = arg0->unk274[2].x >> 8;
        sprite->y = arg0->unk274[2].y >> 8;
        DisplaySprite(sprite);
    }
    if (arg0->flags & 0x80000) {
        sprite = &arg0->unk144;
        if (!(arg0->flags & 0x80000000)) {
            if (!(arg0->flags & 0x100000) && !sub_08155128(sprite))
                arg0->flags |= 0x100000;
            if (arg0->flags & 0x100000) {
                arg0->flags &= ~0x100000;
                sprite->unk1B = 0xFF;
            }
        }
        sprite->x = arg0->unk274[3].x >> 8;
        sprite->y = arg0->unk274[3].y >> 8;
        DisplaySprite(sprite);
    }
}

static void sub_0802BA6C(void) {
    struct Unk_0802B4A8 *tmp = TaskGetStructPtr(gCurTask), *unk0802B4A8 = tmp;

    if (unk0802B4A8->flags & 0x8000000 && gPressedKeys & (START_BUTTON | A_BUTTON | B_BUTTON))
        unk0802B4A8->flags |= 0x40000000;
    if (!(unk0802B4A8->flags & 0x40000000) || unk0802B4A8->flags & 0x20000000) {
        unk0802B4A8->unk0(unk0802B4A8);
        if (gUnk_0300000C)
            return;
        if (unk0802B4A8->flags & 0x1000000) {
            unk0802B4A8->unk2B4 -= unk0802B4A8->unk2B8;
            gBgScrollRegs[0][0] = unk0802B4A8->unk2B4 >> 9;
        }
        if (unk0802B4A8->flags & 0x800000 && !(unk0802B4A8->unk2BA & 0x3F)) {
            u16 side = Rand16() & 3;
            u16 idx = Rand16() & 3;
            s16 dx;
            s32 posX;

            if (side < 2) {
                dx = -((Rand16() & 0xF) + 0x10);
                posX = ((Rand16() & 0x1F) << 11) + 0x1000;
            } else {
                dx = (Rand16() & 0xF) + 0x10;
                posX = ((Rand16() & 0x1F) << 11) - 0x2000;
            }
            sub_0802D198(unk0802B4A8, gUnk_082EB5E0[gUnk_082EB630[idx]][0], gUnk_082EB5E0[gUnk_082EB630[idx]][1], unk0802B4A8->unk16C.tilesVram,
                posX, -((Rand16() & 0xF) + 0x20) * 0x100, dx, 0x40);
        }
        ++unk0802B4A8->unk2BA;
    } else if (unk0802B4A8->flags & 0x40000000) {
        if (!(unk0802B4A8->flags & 0x80000000)) {
            gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
            gBldRegs.bldY = 0;
            unk0802B4A8->unk2BC = 0;
            m4aMPlayFadeOut(&gMPlayInfo_0, 4);
            m4aMPlayFadeOut(&gMPlayInfo_1, 4);
            m4aMPlayFadeOut(&gMPlayInfo_2, 4);
            m4aMPlayFadeOut(&gMPlayInfo_3, 4);
            unk0802B4A8->flags |= 0x80000000;
        } else if (++unk0802B4A8->unk2BC > 0xF) {
            if (unk0802B4A8->flags & 0x10000000) {
                sub_0802CB60(unk0802B4A8);
                return;
            }
            unk0802B4A8->flags = 0x14000000;
            unk0802B4A8->unk0 = sub_0802D480;
            return;
        } else {
            gBldRegs.bldY = unk0802B4A8->unk2BC;
        }
    }
    if (!gUnk_0300000C)
        sub_0802B62C(unk0802B4A8);
}

static void sub_0802BCEC(struct Unk_0802B4A8 *arg0) {
    u16 i;
    struct Sprite *sprite, *sprite2, *sprite3;
    struct Background *bg;

    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_OBJ_1D_MAP;
    bg = &arg0->unk194;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(31);
    BgInit(bg, (uintptr_t)BG_CHAR_ADDR(2), 0, (uintptr_t)BG_SCREEN_ADDR(31), 0, 0, 0x2B0, 0, 0, 0, 0, 0x20, 0x20, 0, 0, 0, 8, 0, 0, SHRT_MAX, SHRT_MAX);
    LZ77UnCompVram(gUnk_082D7850[0x2B0]->tileset, BG_CHAR_ADDR(2));
    sub_08153060(bg);
    for (i = 0; i < ARRAY_COUNT(arg0->unk4); ++i) {
        sprite = &arg0->unk4[i];
        arg0->unk218[i][0] = gUnk_082EB4EC[i][0];
        arg0->unk218[i][1] = gUnk_082EB4EC[i][1];
        arg0->unk254[i] = gUnk_082EB5B4[i];
        if (i < 4) {
            SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x100, gUnk_082EB4B4[gKirbys[i].color][0], gUnk_082EB4B4[gKirbys[i].color][1], 0, 0xFF, 0x10, i, 0, 0, 0x81000);
        } else {
            SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x100, gUnk_082EB4A0[i][0], gUnk_082EB4A0[i][1], 0, 0xFF, 0x10, i, 0, 0, 0x81000);
        }
        SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x100, 0x2D, 4, 0, 0xFF, 0x10, i, arg0->unk218[i][0] >> 8, arg0->unk218[i][1] >> 8, 0x41000);
    }
    sprite2 = &arg0->unkCC;
    SpriteInitNoPointer2(sprite2, sprite2->tilesVram, 0x140, 0x2DE, 0, 0, 0xFF, 0x10, 0xF, -0x100, -0x100, 0x1000);
    sprite3 = &arg0->unkF4;
    SpriteInitNoPointer2(sprite3, sprite3->tilesVram, 0x300, 0x2D3, 1, 0, 0xFF, 0x10, 0xE, -0x100, -0x100, 0x1000);
    arg0->flags |= 0x1005B6D;
    arg0->flags |= 0x20000000;
    m4aSongNumStart(MUS_ENDING);
    arg0->unk0 = sub_0802D3E0;
}

static void sub_0802BF68(struct Unk_0802B4A8 *arg0) {
    if (++arg0->unk2BC > 0xF) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_0802D3F4;
    } else {
        gBldRegs.bldY = 0x10 - arg0->unk2BC;
    }
}

static void sub_0802BFBC(struct Unk_0802B4A8 *arg0) {
    s16 moving = 0;
    u16 i;

    for (i = 0; i < 4; ++i) {
        if (gUnk_082EB53C[i][0] >= arg0->unk218[i][0] && arg0->unk240[i][0]) {
            arg0->unk240[i][0] += 4;
            if (arg0->unk240[i][0] >= 0) {
                arg0->unk240[i][0] = 0;
                arg0->unk268[i] = 0x800;
            }
        }
        arg0->unk218[i][0] += arg0->unk240[i][0];
        moving |= arg0->unk240[i][0];
    }
    if (!moving)
        arg0->unk0 = sub_0802D408;
}

static void sub_0802C064(struct Unk_0802B4A8 *arg0) {
    s16 moving = 0;
    u16 i;

    for (i = 0; i < ARRAY_COUNT(arg0->unk4); ++i) {
        if (i == 4) {
            if (gUnk_082EB58C[i][0] >= arg0->unk218[i][0] && arg0->unk240[i][0]) {
                arg0->unk240[i][0] += 2;
                arg0->unk240[i][1] += 2;
                if (arg0->unk240[i][0] >= 0) {
                    arg0->unk240[i][0] = 0;
                    arg0->unk240[i][1] = 0;
                    arg0->unk268[i] = 0x800;
                }
            }
        } else {
            if (arg0->unk240[i][1] > 0) {
                arg0->unk240[i][1] -= 2;
                if (arg0->unk240[i][1] < 0)
                    arg0->unk240[i][1] = 0;
            } else if (arg0->unk240[i][1] < 0) {
                arg0->unk240[i][1] += 2;
                if (arg0->unk240[i][1] > 0)
                    arg0->unk240[i][1] = 0;
            }
            if (gUnk_082EB58C[i][0] <= arg0->unk218[i][0] && arg0->unk240[i][0]) {
                arg0->unk240[i][0] -= 2;
                if (arg0->unk240[i][0] >= 0) {
                    arg0->unk240[i][0] = 0;
                    arg0->unk240[i][1] = 0;
                    arg0->unk268[i] = 0x800;
                }
            }
        }
        arg0->unk218[i][0] += arg0->unk240[i][0];
        arg0->unk218[i][1] += arg0->unk240[i][1];
        moving |= arg0->unk240[i][0] | arg0->unk240[i][1];
    }
    if (!moving && arg0->flags & 0x2000000)
        arg0->unk0 = sub_0802D430;
}

static void sub_0802C1D8(struct Unk_0802B4A8 *arg0) {
    u32 angle = sub_08154FE8((arg0->unk274[0].x - arg0->unk218[arg0->unk2BE][0]) >> 8,
        (arg0->unk274[0].y - arg0->unk218[arg0->unk2BE][1]) >> 8) & 0x3FF;

    arg0->unk240[arg0->unk2BE][0] = gSineTable[angle] >> 7;
    arg0->unk240[arg0->unk2BE][1] = gSineTable[angle + 0x100] >> 7;
    arg0->unk0 = sub_0802C26C;
}

static void sub_0802C26C(struct Unk_0802B4A8 *arg0) {
    s32 dx = (arg0->unk218[arg0->unk2BE][0] - arg0->unk274[0].x) >> 8;
    s32 dy = (arg0->unk218[arg0->unk2BE][1] - arg0->unk274[0].y) >> 8;

    if (dx * dx + dy * dy < 0x90) {
        arg0->unk0 = sub_0802D5D4;
    } else {
        arg0->unk218[arg0->unk2BE][0] += arg0->unk240[arg0->unk2BE][0];
        arg0->unk218[arg0->unk2BE][1] += arg0->unk240[arg0->unk2BE][1];
    }
}

static void sub_0802C308(struct Unk_0802B4A8 *arg0) {
    if (++arg0->unk2BC > 0x3F) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_0802D708;
    } else {
        gBldRegs.bldY = 0x10 - (arg0->unk2BC >> 2);
    }
}

static void sub_0802C360(struct Unk_0802B4A8 *arg0) {
    arg0->unk240[4][0] -= 4;
    if (arg0->unk240[4][0] < -0x80)
        arg0->unk240[4][0] = -0x80;
    if (arg0->unk218[4][0] < -0x2000) {
        arg0->flags &= ~0x7000;
        arg0->unk240[4][0] = 0;
        arg0->unk0 = sub_0802D444;
    }
    arg0->unk218[4][0] += arg0->unk240[4][0];
}

static void sub_0802C3C8(struct Unk_0802B4A8 *arg0) {
    struct Sprite *sprite = &arg0->unk11C;
    struct Sprite *sprite2;

    arg0->unk274[2].x = 0x11800;
    arg0->unk274[2].y = 0x5000;
    arg0->unk274[2].dx = 0;
    arg0->unk274[2].dy = 0;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x100, 0x395, 0, 0, 0xFF, 0x10, 5, arg0->unk274[2].x >> 8, arg0->unk274[2].y >> 8, 0x1400);
    sprite2 = &arg0->unk144;
    arg0->unk274[3].x = arg0->unk274[2].x;
    arg0->unk274[3].y = arg0->unk274[2].y;
    arg0->unk274[3].dx = 0;
    arg0->unk274[3].dy = 0;
    SpriteInitNoPointer2(sprite2, sprite2->tilesVram, 0x100, 0x395, 1, 0, 0xFF, 0x10, 6, arg0->unk274[3].x >> 8, arg0->unk274[3].y >> 8, 0x1400);
    arg0->flags |= 0xA0000;
    arg0->unk0 = sub_0802C4BC;
}

static void sub_0802C4BC(struct Unk_0802B4A8 *arg0) {
    arg0->unk274[2].dx = -0x140;
    if (arg0->unk274[2].x < 0xDC00)
        arg0->unk274[2].dy -= 8;
    if (arg0->unk274[2].y < -0x2000) {
        arg0->unk274[2].dx = 0;
        arg0->unk274[2].dy = 0;
        arg0->flags &= ~0x80000;
        arg0->unk0 = sub_0802D458;
    }
    arg0->unk274[2].x += arg0->unk274[2].dx;
    arg0->unk274[2].y += arg0->unk274[2].dy;
    arg0->unk274[3].x = arg0->unk274[2].x;
    arg0->unk274[3].y = arg0->unk274[2].y;
}

static void sub_0802C550(struct Unk_0802B4A8 *arg0) {
    struct Sprite *sprite = &arg0->unk144;

    arg0->unk274[3].x = 0x7800;
    arg0->unk274[3].y = -0x2800;
    arg0->unk274[3].dx = 0;
    arg0->unk274[3].dy = 0x200;
    SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x100, 0x2C3, 3, 0, 0xFF, 0x10, 6, arg0->unk274[3].x >> 8, arg0->unk274[3].y >> 8, 0x1000);
    arg0->flags &= ~0x100000;
    arg0->flags |= 0x80000;
    arg0->unk0 = sub_0802D780;
}

static void sub_0802C5E4(struct Unk_0802B4A8 *arg0) {
    struct Background *bg = &arg0->unk194;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(31);
    BgInit(bg, (uintptr_t)BG_CHAR_ADDR(2), 0, (uintptr_t)BG_SCREEN_ADDR(31), 0, 0, 0x306, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 8, 0, 0, SHRT_MAX, SHRT_MAX);
    LZ77UnCompVram(gUnk_082D7850[0x306]->tileset, (u16 *)bg->tilesVram);
    sub_08153060(bg);
    arg0->unk0 = sub_0802C68C;
}

static void sub_0802C68C(struct Unk_0802B4A8 *arg0) {
    const struct RoomTiledBG *bg = gRoomTiledBGs[gRoomProps[0x321].backgroundIdx];
    const u16 *src;
    u16 *dst;
    u16 i;

    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgCntRegs[1] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(3) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30);
    LZ77UnCompVram(bg->tileset, BG_CHAR_ADDR(0));
    src = bg->tilemap;
    dst = BG_SCREEN_ADDR(30);
    src += 8 * bg->width;
    for (i = 0; i < 0x14; ++i) {
        CpuCopy16(src, dst, 0x3C);
        src += bg->width;
        dst += 0x20;
    }
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(bg->palette, bg->paletteOffset, bg->paletteSize);
    } else {
        DmaCopy16(3, bg->palette, gBgPalette + bg->paletteOffset, bg->paletteSize * sizeof(u16));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    gDispCnt |= DISPCNT_BG0_ON | DISPCNT_BG1_ON;
    arg0->unk0 = sub_0802D46C;
}

static void sub_0802C770(struct Unk_0802B4A8 *arg0) {
    struct Background *bg;

    gDispCnt |= DISPCNT_BG0_ON | DISPCNT_BG1_ON;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(1) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(31);
    bg = &arg0->unk194;
    BgInit(bg, (uintptr_t)BG_CHAR_ADDR(2), 0, (uintptr_t)BG_SCREEN_ADDR(31), 0, 0, gUnk_082EB634[gLanguage], 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 0x18, 0, 0, SHRT_MAX, SHRT_MAX);
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[bg->unk1C]->tileset, (u16 *)bg->tilesVram);
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgCntRegs[1] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30);
    bg = &arg0->unk1D4;
    bg->tilesVram = (uintptr_t)BG_CHAR_ADDR(0);
    bg->unkA = 0;
    bg->tilemapVram = (uintptr_t)BG_SCREEN_ADDR(30);
    bg->unk18 = 0;
    bg->unk1A = 0;
    bg->unk1C = 0x2B1;
    bg->unk1E = 0;
    bg->unk20 = 0;
    bg->unk22 = 0;
    bg->unk24 = 0;
    bg->unk26 = 0x1E;
    bg->unk28 = 0x14;
    bg->paletteOffset = 0;
    bg->animFrameCounter = 0;
    bg->animDelayCounter = 0;
    bg->unk2E = 9;
    bg->prevScrollX = SHRT_MAX;
    bg->prevScrollY = SHRT_MAX;
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[bg->unk1C]->tileset, (u16 *)bg->tilesVram);
    arg0->unk2BC = 0;
    arg0->flags &= ~0x80000;
    arg0->unk0 = sub_0802D800;
}

static void sub_0802C8E8(struct Unk_0802B4A8 *arg0) {
    u16 i;
    struct Sprite *sprite, *sprite2;

    for (i = 0; i < ARRAY_COUNT(gUnk_082EB5C0); ++i) {
        sprite = &arg0->unk4[i];
        arg0->unk218[i][0] = gUnk_082EB5C0[i][0];
        arg0->unk218[i][1] = gUnk_082EB5C0[i][1];
        arg0->unk240[i][0] = 0x300;
        arg0->unk240[i][1] = -0x80;
        arg0->unk25E[i] = 0;
        arg0->unk268[i] = 0;
        SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x100, gUnk_082EB4B4[gKirbys[i].color][0], gUnk_082EB4B4[gKirbys[i].color][1], 0, 0xFF, 0x10, i, 0, 0, 0x81000);
        SpriteInitNoPointer2(sprite, sprite->tilesVram, 0x100, 0x2D, 0, 0, 0xFF, 0x10, i, arg0->unk218[i][0] >> 8, arg0->unk218[i][1] >> 8, 0x41000);
    }
    sprite2 = &arg0->unkCC;
    SpriteInitNoPointer2(sprite2, sprite2->tilesVram, 0x140, 0x2DE, 0, 0, 0xFF, 0x10, 0xF, -0x100, -0x100, 0x1000);
    arg0->flags &= 0xF0800000;
    arg0->flags |= 0xB6D;
    arg0->unk0 = sub_0802CA78;
}

static void sub_0802CA78(struct Unk_0802B4A8 *arg0) {
    bool32 done = TRUE;
    u16 i;

    for (i = 0; i < 4; ++i) {
        if (arg0->unk240[i][0] > 0x80) {
            arg0->unk240[i][0] -= 6;
            if (arg0->unk240[i][0] <= 0x80) {
                arg0->unk4[i].animId = 0x2D;
                arg0->unk4[i].variant = 6;
                arg0->unk240[i][0] = 0x80;
            }
        }
        if (arg0->unk218[i][0] > 0x13000 || arg0->unk218[i][1] < -0x4000)
            arg0->unk240[i][0] = arg0->unk240[i][1] = 0;
        else
            done = FALSE;
        arg0->unk218[i][0] += arg0->unk240[i][0];
        arg0->unk218[i][1] += arg0->unk240[i][1];
    }
    if (done)
        arg0->unk0 = sub_0802D4F4;
}

static void sub_0802CB60(UNUSED struct Unk_0802B4A8 *arg0) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    gUnk_0300000C = TRUE;
    TasksDestroyInPriorityRange(0, USHRT_MAX);
    gUnk_03003A04 = gUnk_03003790;
    gUnk_030068B0 = 0;
    gUnk_03006078 = gUnk_030039A4;
    if (gAIKirbyState < AI_KIRBY_STATE_UNK1) {
        gAIKirbyState = AI_KIRBY_STATE_UNK1;
        if (!(gUnk_0203AD10 & 0x10)) {
            if (gUnk_0203AD10 & 2) {
                if (gLocalPlayerId == gUnk_0203AD24)
                    UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
                else
                    sub_08031CE4(8);
            } else {
                UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
            }
        }
    }
    sub_0814EBE4();
}

static void sub_0802CC7C(struct Unk_0802DB48 *arg0) {
    struct Background *bg;
    u16 id;

    gDispCnt |= DISPCNT_BG2_ON;
    gBldRegs.bldCnt = BLDCNT_TGT1_BG2 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_OBJ;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0x10);
    bg = &arg0->bg;
    id = gUnk_082EB640[gLanguage][arg0->unk4C][0];
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgCntRegs[2] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29);
    BgInit(bg, (uintptr_t)BG_CHAR_ADDR(0), 0, (uintptr_t)BG_SCREEN_ADDR(29), 0, 0, id, 0, 0, 0, 0xA, 0x1E, 0xA, 0, 0, 0, 0x1A, 0, 0, SHRT_MAX, SHRT_MAX);
    LZ77UnCompVram(gUnk_082D7850[id]->tileset, (u16 *)bg->tilesVram);
    CpuFill32(0, (u32 *)(bg->tilesVram + TILE_SIZE_4BPP * 0x1FF), TILE_SIZE_4BPP);
    CpuFill16(0x1FF, (u16 *)bg->tilemapVram, BG_SCREEN_SIZE);
    sub_08153060(bg);
    arg0->unk4A = 0;
    arg0->parent->flags |= 0x20000000;
    arg0->unk0 = sub_0802CDA0;
}

static void sub_0802CDA0(struct Unk_0802DB48 *arg0) {
    if (++arg0->unk4A > 0xF) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0x10, 0);
        arg0->parent->flags &= ~0x20000000;
        arg0->unk0 = sub_0802D898;
    } else {
        gBldRegs.bldAlpha = BLDALPHA_BLEND(arg0->unk4A, 0x10 - arg0->unk4A);
    }
}

static void sub_0802CDF8(struct Unk_0802DB48 *arg0) {
    if (++arg0->unk4A > 0xF) {
        gDispCnt &= ~DISPCNT_BG2_ON;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0x10);
        arg0->parent->flags &= ~0x20000000;
        arg0->unk0 = sub_0802D92C;
    } else {
        gBldRegs.bldAlpha = BLDALPHA_BLEND2(0x10 - arg0->unk4A, arg0->unk4A);
    }
}

static struct Unk_0802CE64 *sub_0802CE64(struct Unk_0802B4A8 *arg0, u16 animId, u16 variant, u32 tilesVram, s32 posX, s32 posY, s16 dx, s16 dy, u16 timer) {
    struct Task *t = TaskCreate(sub_0802CF2C, sizeof(struct Unk_0802CE64), 0x101, TASK_USE_IWRAM, NULL);
    struct Unk_0802CE64 *unk0802CE64 = TaskGetStructPtr(t);

    unk0802CE64->parent = arg0;
    unk0802CE64->unk2C = posX;
    unk0802CE64->unk30 = posY;
    unk0802CE64->unk34 = dx;
    unk0802CE64->unk36 = dy;
    unk0802CE64->unk38 = timer;
    SpriteInit(&unk0802CE64->sprite, tilesVram, 0x140, animId, variant, 0, 0xFF, 0x10, 0xD, posX >> 8, posY >> 8, 0x81000);
    return unk0802CE64;
}

static void sub_0802CF2C(void) {
    struct Unk_0802CE64 *tmp = TaskGetStructPtr(gCurTask), *unk0802CE64 = tmp;
    struct Sprite *sprite = &unk0802CE64->sprite;

    sprite->x = (unk0802CE64->unk2C - unk0802CE64->parent->unk2B4) >> 8;
    sprite->y = unk0802CE64->unk30 >> 8;
    if (!sub_08155128(sprite))
        sprite->unk1B = 0xFF;
    DisplaySprite(sprite);
    unk0802CE64->unk2C += unk0802CE64->unk34;
    unk0802CE64->unk30 += unk0802CE64->unk36;
    if (unk0802CE64->unk38 && !--unk0802CE64->unk38)
        gCurTask->main = sub_0802D528;
    else if (sprite->x < -0x40 || sprite->x > 0x130 || sprite->y < -0x40 || sprite->y > 0xE0
        || unk0802CE64->parent->flags & 0x4000000)
        gCurTask->main = sub_0802D528;
}

static struct Unk_0802CE64 *sub_0802CFF0(struct Unk_0802B4A8 *arg0, u16 animId, u16 variant, u32 tilesVram, s32 posX, s32 posY, s16 dx, s16 dy, u16 timer) {
    struct Task *t = TaskCreate(sub_0802D0B8, sizeof(struct Unk_0802CE64), 0x101, TASK_USE_IWRAM, NULL);
    struct Unk_0802CE64 *unk0802CE64 = TaskGetStructPtr(t);

    unk0802CE64->parent = arg0;
    unk0802CE64->unk2C = posX;
    unk0802CE64->unk30 = posY;
    unk0802CE64->unk34 = dx;
    unk0802CE64->unk36 = dy;
    unk0802CE64->unk38 = timer;
    SpriteInit(&unk0802CE64->sprite, tilesVram, 0x140, animId, variant, 0, 0xFF, 0x10, 0xD, posX >> 8, posY >> 8, 0x81000);
    return unk0802CE64;
}

static void sub_0802D0B8(void) {
    struct Unk_0802CE64 *tmp = TaskGetStructPtr(gCurTask), *unk0802CE64 = tmp;
    struct Sprite *sprite = &unk0802CE64->sprite;

    sprite->x = (unk0802CE64->unk2C - unk0802CE64->parent->unk2B4) >> 8;
    sprite->y = unk0802CE64->unk30 >> 8;
    if (!sub_08155128(sprite)) {
        if (unk0802CE64->unk38 && !--unk0802CE64->unk38)
            gCurTask->main = sub_0802D53C;
        else
            unk0802CE64->sprite.unk1B = 0xFF;
    }
    DisplaySprite(sprite);
    unk0802CE64->unk2C += unk0802CE64->unk34;
    unk0802CE64->unk30 += unk0802CE64->unk36;
    if (sprite->x < -0x40 || sprite->x > 0x130 || sprite->y < -0x40 || sprite->y > 0xE0)
        gCurTask->main = sub_0802D53C;
    if (unk0802CE64->parent->flags & 0x4000000)
        gCurTask->main = sub_0802D53C;
}

static struct Unk_0802CE64 *sub_0802D198(struct Unk_0802B4A8 *arg0, u16 animId, u16 variant, u32 tilesVram, s32 posX, s32 posY, s16 dx, s16 dy) {
    struct Task *t = TaskCreate(sub_0802D288, sizeof(struct Unk_0802CE64), 0x101, TASK_USE_IWRAM, NULL);
    struct Unk_0802CE64 *unk0802CE64 = TaskGetStructPtr(t);

    unk0802CE64->parent = arg0;
    unk0802CE64->unk2C = posX;
    unk0802CE64->unk30 = posY;
    unk0802CE64->unk34 = dx;
    unk0802CE64->unk36 = dy;
    unk0802CE64->unk38 = Rand16() & 0x3FF;
    unk0802CE64->unk3A = (Rand16() & 0x7FF) + 0x800;
    SpriteInit(&unk0802CE64->sprite, tilesVram, 0x140, animId, variant, 0, 0xFF, 0x10, 0xD, posX >> 8, posY >> 8, 0x81000);
    return unk0802CE64;
}

static void sub_0802D288(void) {
    struct Unk_0802CE64 *tmp = TaskGetStructPtr(gCurTask), *unk0802CE64 = tmp;

    unk0802CE64->sprite.x = (unk0802CE64->unk2C + (((gSineTable[unk0802CE64->unk38] >> 6) * unk0802CE64->unk3A) >> 8)) >> 8;
    unk0802CE64->sprite.y = unk0802CE64->unk30 >> 8;
    if (!sub_08155128(&unk0802CE64->sprite))
        unk0802CE64->sprite.unk1B = 0xFF;
    DisplaySprite(&unk0802CE64->sprite);
    unk0802CE64->unk2C += unk0802CE64->unk34;
    unk0802CE64->unk30 += unk0802CE64->unk36;
    unk0802CE64->unk38 += 8;
    unk0802CE64->unk38 &= 0x3FF;
    if (unk0802CE64->sprite.x < -0x40 || unk0802CE64->sprite.x > 0x130 || unk0802CE64->sprite.y < -0x40 || unk0802CE64->sprite.y > 0xE0)
        gCurTask->main = sub_0802D550;
    if (unk0802CE64->parent->flags & 0x4000000)
        gCurTask->main = sub_0802D550;
}

static void sub_0802D360(struct Task *t) {
    struct Unk_0802B4A8 *tmp = TaskGetStructPtr(t), *unk0802B4A8 = tmp;
    u16 i;

    for (i = 0; i < ARRAY_COUNT(unk0802B4A8->unk4); ++i)
        VramFree(unk0802B4A8->unk4[i].tilesVram);
    VramFree(unk0802B4A8->unkCC.tilesVram);
    VramFree(unk0802B4A8->unkF4.tilesVram);
    VramFree(unk0802B4A8->unk11C.tilesVram);
    VramFree(unk0802B4A8->unk144.tilesVram);
    VramFree(unk0802B4A8->unk16C.tilesVram);
}

static void sub_0802D3E0(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802BF68;
}

static void sub_0802D3F4(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802D564;
}

static void sub_0802D408(struct Unk_0802B4A8 *arg0) {
    arg0->flags |= 0x8000000;
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802D588;
}

static void sub_0802D430(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802D5B0;
}

static void sub_0802D444(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802D738;
}

static void sub_0802D458(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802D75C;
}

static void sub_0802D46C(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802D7DC;
}

static void sub_0802D480(struct Unk_0802B4A8 *arg0) {
    gBgPalette[0] = RGB_WHITE;
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    arg0->flags &= ~0x4080000;
    arg0->flags |= 0x10800000;
    arg0->unk0 = sub_0802D4E0;
}

static void sub_0802D4E0(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802D824;
}

static void sub_0802D4F4(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_0802D84C;
}

static void sub_0802D528(void) {
    TaskDestroy(gCurTask);
}

static void sub_0802D53C(void) {
    TaskDestroy(gCurTask);
}

static void sub_0802D550(void) {
    TaskDestroy(gCurTask);
}

static void sub_0802D564(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802D9B8;
}

static void sub_0802D588(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 360)
        arg0->unk0 = sub_0802D9F4;
}

static void sub_0802D5B0(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802DA54;
}

static void sub_0802D5D4(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    m4aSongNumStart(SE_MIRROR_COMPLETE);
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_0802D618;
}

static void sub_0802D618(struct Unk_0802B4A8 *arg0) {
    if (++arg0->unk2BC > 0xF) {
        gBldRegs.bldY = 0x10;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_0802D664;
    } else {
        gBldRegs.bldY = arg0->unk2BC;
    }
}

static void sub_0802D664(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk240[arg0->unk2BE][0] = 0;
    arg0->unk240[arg0->unk2BE][1] = 0;
    arg0->flags &= ~(7 << (arg0->unk2BE * 3));
    arg0->unk0 = sub_0802D6B4;
}

static void sub_0802D6B4(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802D6D8;
}

static void sub_0802D6D8(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    gBldRegs.bldY = 0x10;
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_0802C308;
}

static void sub_0802D708(struct Unk_0802B4A8 *arg0) {
    if (++arg0->unk2BE < 4)
        arg0->unk0 = sub_0802C1D8;
    else
        arg0->unk0 = sub_0802DAA0;
}

static void sub_0802D738(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 120)
        arg0->unk0 = sub_0802C3C8;
}

static void sub_0802D75C(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802C550;
}

static void sub_0802D780(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk274[3].y > 0xC800) {
        arg0->unk274[2].dy = 0;
        arg0->flags &= ~0x80000;
        arg0->unk0 = sub_0802DAB4;
    }
    arg0->unk274[3].dy += 0x40;
    if (arg0->unk274[3].dy > 0x400)
        arg0->unk274[3].dy = 0x400;
    arg0->unk274[3].y += arg0->unk274[3].dy;
}

static void sub_0802D7DC(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802DAC8;
}

static void sub_0802D800(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802DB00;
}

static void sub_0802D824(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 480)
        arg0->unk0 = sub_0802C8E8;
}

static void sub_0802D84C(struct Unk_0802B4A8 *arg0) {
    if (++arg0->unk2BC > 0xF) {
        gBldRegs.bldY = 0x10;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_0802DB34;
    } else {
        gBldRegs.bldY = arg0->unk2BC;
    }
}

static void sub_0802D898(struct Unk_0802DB48 *arg0) {
    arg0->unk4A = 0;
    arg0->unk0 = sub_0802D8AC;
}

static void sub_0802D8AC(struct Unk_0802DB48 *arg0) {
    if (gUnk_082EB640[gLanguage][arg0->unk4C][1] < arg0->unk4A++)
        arg0->unk0 = sub_0802D8F4;
}

static void sub_0802D8F4(struct Unk_0802DB48 *arg0) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG2 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_OBJ;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(0x10, 0);
    arg0->unk4A = 0;
    arg0->parent->flags |= 0x20000000;
    arg0->unk0 = sub_0802CDF8;
}

static void sub_0802D92C(struct Unk_0802DB48 *arg0) {
    arg0->unk4A = 0;
    arg0->unk0 = sub_0802D940;
}

static void sub_0802D940(struct Unk_0802DB48 *arg0) {
    if (arg0->unk4A++ > 30)
        arg0->unk0 = sub_0802D964;
}

static void sub_0802D964(struct Unk_0802DB48 *arg0) {
    if (++arg0->unk4C < ARRAY_COUNT(gUnk_082EB640[0])) {
        arg0->unk0 = sub_0802CC7C;
    } else {
        arg0->parent->flags |= 0x2000000;
        arg0->unk0 = sub_0802D9A4;
    }
}

static void sub_0802D9A4(UNUSED struct Unk_0802DB48 *arg0) {
    TaskDestroy(gCurTask);
}

static void sub_0802D9B8(struct Unk_0802B4A8 *arg0) {
    u16 i;

    for (i = 0; i < 4; ++i)
        arg0->unk240[i][0] = gUnk_082EB514[i][0];
    sub_0802DB48(arg0);
    arg0->unk0 = sub_0802BFBC;
}

static void sub_0802D9F4(struct Unk_0802B4A8 *arg0) {
    u16 i;

    for (i = 0; i < ARRAY_COUNT(arg0->unk240); ++i) {
        arg0->unk240[i][0] = gUnk_082EB564[i][0];
        arg0->unk240[i][1] = gUnk_082EB564[i][1];
    }
    arg0->unk0 = sub_0802C064;
}

static void sub_0802DA54(struct Unk_0802B4A8 *arg0) {
    arg0->unk274[0].x = 0x7800;
    arg0->unk274[0].y = 0xB400;
    arg0->unk274[0].dx = 0;
    arg0->unk274[0].dy = -0x100;
    arg0->flags |= 0x8000;
    arg0->unk0 = sub_0802DBC0;
}

static void sub_0802DAA0(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802DC10;
}

static void sub_0802DAB4(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802DC34;
}

static void sub_0802DAC8(struct Unk_0802B4A8 *arg0) {
    arg0->unk274[3].y = -0x1000;
    arg0->flags |= 0x80000;
    arg0->unk144.unk1B = 0xFF;
    arg0->unk0 = sub_0802DC58;
}

static void sub_0802DB00(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BD | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_0802DCC4;
}

static void sub_0802DB34(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802DD18;
}

static struct Unk_0802DB48 *sub_0802DB48(struct Unk_0802B4A8 *arg0) {
    struct Task *task;
    struct Unk_0802DB48 *unk0802DB48;

    arg0->flags &= ~0x2000000;
    task = TaskCreate(sub_0802DD3C, sizeof(struct Unk_0802DB48), 0x101, TASK_USE_IWRAM, NULL);
    unk0802DB48 = TaskGetStructPtr(task);
    CpuFill16(0, unk0802DB48, sizeof(struct Unk_0802DB48));
    unk0802DB48->parent = arg0;
    unk0802DB48->unk0 = sub_0802DD94;
    return unk0802DB48;
}

static void sub_0802DBC0(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk274[0].y < 0x6400) {
        if (arg0->unk274[0].dy) {
            arg0->unk274[0].dy += 4;
            if (arg0->unk274[0].dy > 0)
                arg0->unk274[0].dy = 0;
        } else {
            arg0->unk0 = sub_0802DDA0;
        }
    }
    arg0->unk274[0].y += arg0->unk274[0].dy;
}

static void sub_0802DC10(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802DDB4;
}

static void sub_0802DC34(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802DDC0;
}

static void sub_0802DC58(struct Unk_0802B4A8 *arg0) {
    arg0->unk274[3].dy += 8;
    if (arg0->unk274[3].dy > 0x800)
        arg0->unk274[3].dy = 0x800;
    if (arg0->unk274[3].y > 0x8000) {
        arg0->unk274[3].dy = 0;
        arg0->unk274[3].y = 0x8000;
        arg0->unk0 = sub_0802DCA0;
    }
    arg0->unk274[3].y += arg0->unk274[3].dy;
}

static void sub_0802DCA0(struct Unk_0802B4A8 *arg0) {
    arg0->unk144.animId = 0x2C3;
    arg0->unk144.variant = 4;
    arg0->unk0 = sub_0802DDEC;
}

static void sub_0802DCC4(struct Unk_0802B4A8 *arg0) {
    if (++arg0->unk2BC > 0x3F) {
        gBldRegs.bldY = 0;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_0802DE00;
    } else {
        gBldRegs.bldY = 0x10 - (arg0->unk2BC >> 2);
    }
}

static void sub_0802DD18(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802CB60;
}

static void sub_0802DD3C(void) {
    struct Unk_0802DB48 *unk0802DB48 = TaskGetStructPtr(gCurTask);

    if (!(unk0802DB48->parent->flags & 0x80000000)) {
        unk0802DB48->unk0(unk0802DB48);
        ++unk0802DB48->unk48;
    } else {
        sub_0802D9A4(unk0802DB48);
    }
}

static void sub_0802DD94(struct Unk_0802DB48 *arg0) {
    arg0->unk0 = sub_0802CC7C;
}

static void sub_0802DDA0(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802DE14;
}

static void sub_0802DDB4(struct Unk_0802B4A8 *arg0) {
    arg0->unk0 = sub_0802DE38;
}

static void sub_0802DDC0(struct Unk_0802B4A8 *arg0) {
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    arg0->flags &= ~0x5000000;
    arg0->unk0 = sub_0802C5E4;
}

static void sub_0802DDEC(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802DE94;
}

static void sub_0802DE00(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802DEB8;
}

static void sub_0802DE14(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802DEE0;
}

static void sub_0802DE38(struct Unk_0802B4A8 *arg0) {
    arg0->unk274[0].dy -= 4;
    if (arg0->unk274[0].dy < -0x100)
        arg0->unk274[0].dy = -0x100;
    if (arg0->unk274[0].y < -0x3C00) {
        arg0->flags &= ~0x18000;
        arg0->unk274[0].dy = 0;
        arg0->unk0 = sub_0802DF0C;
    }
    arg0->unk274[0].y += arg0->unk274[0].dy;
}

static void sub_0802DE94(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 30)
        arg0->unk0 = sub_0802DF30;
}

static void sub_0802DEB8(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 1020)
        arg0->unk0 = sub_0802DFB4;
}

static void sub_0802DEE0(struct Unk_0802B4A8 *arg0) {
    arg0->unk4[4].animId = 0x2D;
    arg0->unk4[4].variant = 7;
    arg0->unk2BE = 0;
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802E01C;
}

static void sub_0802DF0C(struct Unk_0802B4A8 *arg0) {
    arg0->unk4[4].animId = 0x2D;
    arg0->unk4[4].variant = 4;
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802E040;
}

static void sub_0802DF30(struct Unk_0802B4A8 *arg0) {
    arg0->flags &= ~0x4000000;
    arg0->unk2B4 = 0;
    sub_0802CFF0(arg0, 0x28F, 3, arg0->unk16C.tilesVram, arg0->unk274[3].x, arg0->unk274[3].y, 0, 0, 1)->sprite.unk1C >>= 1;
    m4aSongNumStart(SE_SHARD_OBTAINED);
    arg0->unk0 = sub_0802DFA0;
}

static void sub_0802DFA0(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    arg0->unk0 = sub_0802E064;
}

static void sub_0802DFB4(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    m4aMPlayFadeOut(&gMPlayInfo_0, 8);
    m4aMPlayFadeOut(&gMPlayInfo_1, 8);
    m4aMPlayFadeOut(&gMPlayInfo_2, 8);
    m4aMPlayFadeOut(&gMPlayInfo_3, 8);
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_0802E088;
}

static void sub_0802E01C(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 180)
        arg0->unk0 = sub_0802C1D8;
}

static void sub_0802E040(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 60)
        arg0->unk0 = sub_0802E0D4;
}

static void sub_0802E064(struct Unk_0802B4A8 *arg0) {
    if (arg0->unk2BC++ > 180)
        arg0->unk0 = sub_0802E0E8;
}

static void sub_0802E088(struct Unk_0802B4A8 *arg0) {
    if (++arg0->unk2BC > 0xF) {
        gBldRegs.bldY = 0x10;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_0802D480;
    } else {
        gBldRegs.bldY = arg0->unk2BC;
    }
}

static void sub_0802E0D4(struct Unk_0802B4A8 *arg0) {
    arg0->unk240[4][0] = 0;
    arg0->unk0 = sub_0802C360;
}

static void sub_0802E0E8(struct Unk_0802B4A8 *arg0) {
    arg0->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_0802E11C;
}

static void sub_0802E11C(struct Unk_0802B4A8 *arg0) {
    if (++arg0->unk2BC > 0x3F) {
        gBldRegs.bldY = 0x10;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_0802C770;
    } else {
        gBldRegs.bldY = arg0->unk2BC >> 2;
    }
}
