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
    struct Task *t;
    struct Unk_0802B4A8 *tmp, *x;
    u16 i;

    // TODO: Original bug: a 32-bit fill of 0x00007FFF makes even palette entries white and odd entries black (sub_0802CB60 uses CpuFill16).
    CpuFill32(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill32(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    t = TaskCreate(sub_0802BA6C, sizeof(struct Unk_0802B4A8), 0x100, TASK_USE_IWRAM, sub_0802D360);
    tmp = TaskGetStructPtr(t);
    x = tmp;
    CpuFill16(0, x, sizeof(struct Unk_0802B4A8));
    x->unk2B8 = 0x200;
    SpriteInit(&x->unk16C, VramMalloc(0x100), 0, 0x292, 0, 0, 0xFF, 0x10, 0xD, 0, 0, 0);
    for (i = 0; i < ARRAY_COUNT(x->unk4); ++i) {
        x->unk4[i].tilesVram = VramMalloc(0x10);
        x->unk218[i][0] = gUnk_082EB4EC[i][0];
        x->unk218[i][1] = gUnk_082EB4EC[i][1];
        x->unk254[i] = gUnk_082EB5B4[i];
    }
    x->unkCC.tilesVram = VramMalloc(0x10);
    x->unkF4.tilesVram = VramMalloc(0x30);
    x->unk11C.tilesVram = VramMalloc(0x30);
    x->unk144.tilesVram = VramMalloc(0x10);
    gUnk_0300000C = FALSE;
    x->unk0 = sub_0802BCEC;
}

static void sub_0802B62C(struct Unk_0802B4A8 *x) {
    u16 i, j;
    struct Sprite *sprite;

    if (!(x->flags & 0x80000000) && !sub_08155128(&x->unkCC))
        x->unkCC.unk1B = 0xFF;
    for (j = 0, i = 0; i < ARRAY_COUNT(x->unk4); ++i, j += 3) {
        if ((1 << j) & x->flags) {
            sprite = &x->unk4[i];
            x->unk254[i] = (x->unk254[i] + 4) & 0x3FF;
            if (x->unk25E[i] < x->unk268[i]) {
                x->unk25E[i] += 4;
                if (x->unk25E[i] > x->unk268[i])
                    x->unk25E[i] = x->unk268[i];
            } else if (x->unk25E[i] > x->unk268[i]) {
                x->unk25E[i] -= 4;
                if (x->unk25E[i] < x->unk268[i])
                    x->unk25E[i] = x->unk268[i];
            }
            sprite->x = x->unk218[i][0] >> 8;
            sprite->y = (x->unk218[i][1] + (gSineTable[x->unk254[i]] >> 10) * (x->unk25E[i] >> 4)) >> 8;
            if (!(x->flags & 0x80000000)) {
                if (!((2 << j) & x->flags) && !sub_08155128(sprite))
                    x->flags |= 2 << j;
                if ((2 << j) & x->flags) {
                    x->flags &= ~(2 << j);
                    sprite->unk1B = 0xFF;
                }
            }
            DisplaySprite(sprite);
            if ((4 << j) & x->flags) {
                x->unkCC.x = sprite->x;
                x->unkCC.y = sprite->y;
                DisplaySprite(&x->unkCC);
                if (!(x->flags & 0x800000)) {
                    if (!((x->unk2BA + i * 2) & 7))
                        sub_0802CFF0(x, 0x295, 2, x->unk16C.tilesVram,
                            x->unk2B4 + x->unk218[i][0] + 0x1000, x->unk218[i][1] + 0x800, 0, 0, 1);
                    if (!((x->unk2BA + i * 2) & 0xF)) {
                        u32 val = Rand16() & 0x1F;

                        sub_0802CE64(x, gUnk_082EB5E0[gUnk_082EB610[val]][0], gUnk_082EB5E0[gUnk_082EB610[val]][1], x->unk16C.tilesVram,
                            x->unk2B4 + x->unk218[i][0] + ((Rand16() & 0xF) + 8) * 0x100,
                            x->unk218[i][1] + ((Rand16() & 0x1F) - 0x10) * 0x100,
                            (Rand16() & 0xFF) + 0x80, 0, 0);
                    }
                }
            }
        }
    }
    if (x->flags & 0x8000) {
        sprite = &x->unkF4;
        if (!(x->flags & 0x80000000)) {
            if (!(x->flags & 0x10000) && !sub_08155128(sprite))
                x->flags |= 0x10000;
            if (x->flags & 0x10000) {
                x->flags &= ~0x10000;
                sprite->unk1B = 0xFF;
            }
        }
        sprite->x = x->unk274[0].x >> 8;
        sprite->y = x->unk274[0].y >> 8;
        DisplaySprite(sprite);
    }
    if (x->flags & 0x20000) {
        sprite = &x->unk11C;
        if (!(x->flags & 0x80000000)) {
            if (!(x->flags & 0x40000) && !sub_08155128(sprite))
                x->flags |= 0x40000;
            if (x->flags & 0x40000) {
                x->flags &= ~0x40000;
                sprite->unk1B = 0xFF;
            }
        }
        sprite->x = x->unk274[2].x >> 8;
        sprite->y = x->unk274[2].y >> 8;
        DisplaySprite(sprite);
    }
    if (x->flags & 0x80000) {
        sprite = &x->unk144;
        if (!(x->flags & 0x80000000)) {
            if (!(x->flags & 0x100000) && !sub_08155128(sprite))
                x->flags |= 0x100000;
            if (x->flags & 0x100000) {
                x->flags &= ~0x100000;
                sprite->unk1B = 0xFF;
            }
        }
        sprite->x = x->unk274[3].x >> 8;
        sprite->y = x->unk274[3].y >> 8;
        DisplaySprite(sprite);
    }
}

static void sub_0802BA6C(void) {
    struct Unk_0802B4A8 *tmp = TaskGetStructPtr(gCurTask), *x = tmp;

    if (x->flags & 0x8000000 && gPressedKeys & (START_BUTTON | A_BUTTON | B_BUTTON))
        x->flags |= 0x40000000;
    if (!(x->flags & 0x40000000) || x->flags & 0x20000000) {
        x->unk0(x);
        if (gUnk_0300000C)
            return;
        if (x->flags & 0x1000000) {
            x->unk2B4 -= x->unk2B8;
            gBgScrollRegs[0][0] = x->unk2B4 >> 9;
        }
        if (x->flags & 0x800000 && !(x->unk2BA & 0x3F)) {
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
            sub_0802D198(x, gUnk_082EB5E0[gUnk_082EB630[idx]][0], gUnk_082EB5E0[gUnk_082EB630[idx]][1], x->unk16C.tilesVram,
                posX, -((Rand16() & 0xF) + 0x20) * 0x100, dx, 0x40);
        }
        ++x->unk2BA;
    } else if (x->flags & 0x40000000) {
        if (!(x->flags & 0x80000000)) {
            gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
            gBldRegs.bldY = 0;
            x->unk2BC = 0;
            m4aMPlayFadeOut(&gMPlayInfo_0, 4);
            m4aMPlayFadeOut(&gMPlayInfo_1, 4);
            m4aMPlayFadeOut(&gMPlayInfo_2, 4);
            m4aMPlayFadeOut(&gMPlayInfo_3, 4);
            x->flags |= 0x80000000;
        } else if (++x->unk2BC > 0xF) {
            if (x->flags & 0x10000000) {
                sub_0802CB60(x);
                return;
            }
            x->flags = 0x14000000;
            x->unk0 = sub_0802D480;
            return;
        } else {
            gBldRegs.bldY = x->unk2BC;
        }
    }
    if (!gUnk_0300000C)
        sub_0802B62C(x);
}

static void sub_0802BCEC(struct Unk_0802B4A8 *x) {
    u16 i;
    struct Sprite *sprite, *sprite2, *sprite3;
    struct Background *bg;

    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_OBJ_1D_MAP;
    bg = &x->unk194;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(31);
    BgInit(bg, (u32)BG_CHAR_ADDR(2), 0, (u32)BG_SCREEN_ADDR(31), 0, 0, 0x2B0, 0, 0, 0, 0, 0x20, 0x20, 0, 0, 0, 8, 0, 0, 0x7FFF, 0x7FFF);
    LZ77UnCompVram(gUnk_082D7850[0x2B0]->tileset, BG_CHAR_ADDR(2));
    sub_08153060(bg);
    for (i = 0; i < ARRAY_COUNT(x->unk4); ++i) {
        sprite = &x->unk4[i];
        x->unk218[i][0] = gUnk_082EB4EC[i][0];
        x->unk218[i][1] = gUnk_082EB4EC[i][1];
        x->unk254[i] = gUnk_082EB5B4[i];
        if (i < 4) {
            sprite->unk14 = 0x100;
            sprite->animId = gUnk_082EB4B4[gKirbys[i].color][0];
            sprite->variant = gUnk_082EB4B4[gKirbys[i].color][1];
            sprite->unk16 = 0;
            sprite->unk1B = 0xFF;
            sprite->unk1C = 0x10;
            sprite->palId = i;
            sprite->x = 0;
            sprite->y = 0;
            sprite->unk8 = 0x81000;
            sub_08155128(sprite);
        } else {
            sprite->unk14 = 0x100;
            sprite->animId = gUnk_082EB4A0[i][0];
            sprite->variant = gUnk_082EB4A0[i][1];
            sprite->unk16 = 0;
            sprite->unk1B = 0xFF;
            sprite->unk1C = 0x10;
            sprite->palId = i;
            sprite->x = 0;
            sprite->y = 0;
            sprite->unk8 = 0x81000;
            sub_08155128(sprite);
        }
        sprite->unk14 = 0x100;
        sprite->animId = 0x2D;
        sprite->variant = 4;
        sprite->unk16 = 0;
        sprite->unk1B = 0xFF;
        sprite->unk1C = 0x10;
        sprite->palId = i;
        sprite->x = x->unk218[i][0] >> 8;
        sprite->y = x->unk218[i][1] >> 8;
        sprite->unk8 = 0x41000;
        sub_08155128(sprite);
    }
    sprite2 = &x->unkCC;
    sprite2->unk14 = 0x140;
    sprite2->animId = 0x2DE;
    sprite2->variant = 0;
    sprite2->unk16 = 0;
    sprite2->unk1B = 0xFF;
    sprite2->unk1C = 0x10;
    sprite2->palId = 0xF;
    sprite2->x = -0x100;
    sprite2->y = -0x100;
    sprite2->unk8 = 0x1000;
    sub_08155128(sprite2);
    sprite3 = &x->unkF4;
    sprite3->unk14 = 0x300;
    sprite3->animId = 0x2D3;
    sprite3->variant = 1;
    sprite3->unk16 = 0;
    sprite3->unk1B = 0xFF;
    sprite3->unk1C = 0x10;
    sprite3->palId = 0xE;
    sprite3->x = -0x100;
    sprite3->y = -0x100;
    sprite3->unk8 = 0x1000;
    sub_08155128(sprite3);
    x->flags |= 0x1005B6D;
    x->flags |= 0x20000000;
    m4aSongNumStart(MUS_ENDING);
    x->unk0 = sub_0802D3E0;
}

static void sub_0802BF68(struct Unk_0802B4A8 *x) {
    if (++x->unk2BC > 0xF) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        x->flags &= ~0x20000000;
        x->unk0 = sub_0802D3F4;
    } else {
        gBldRegs.bldY = 0x10 - x->unk2BC;
    }
}

static void sub_0802BFBC(struct Unk_0802B4A8 *x) {
    s16 moving = 0;
    u16 i;

    for (i = 0; i < 4; ++i) {
        if (gUnk_082EB53C[i][0] >= x->unk218[i][0] && x->unk240[i][0]) {
            x->unk240[i][0] += 4;
            if (x->unk240[i][0] >= 0) {
                x->unk240[i][0] = 0;
                x->unk268[i] = 0x800;
            }
        }
        x->unk218[i][0] += x->unk240[i][0];
        moving |= x->unk240[i][0];
    }
    if (!moving)
        x->unk0 = sub_0802D408;
}

static void sub_0802C064(struct Unk_0802B4A8 *x) {
    s16 moving = 0;
    u16 i;

    for (i = 0; i < ARRAY_COUNT(x->unk4); ++i) {
        if (i == 4) {
            if (gUnk_082EB58C[i][0] >= x->unk218[i][0] && x->unk240[i][0]) {
                x->unk240[i][0] += 2;
                x->unk240[i][1] += 2;
                if (x->unk240[i][0] >= 0) {
                    x->unk240[i][0] = 0;
                    x->unk240[i][1] = 0;
                    x->unk268[i] = 0x800;
                }
            }
        } else {
            if (x->unk240[i][1] > 0) {
                x->unk240[i][1] -= 2;
                if (x->unk240[i][1] < 0)
                    x->unk240[i][1] = 0;
            } else if (x->unk240[i][1] < 0) {
                x->unk240[i][1] += 2;
                if (x->unk240[i][1] > 0)
                    x->unk240[i][1] = 0;
            }
            if (gUnk_082EB58C[i][0] <= x->unk218[i][0] && x->unk240[i][0]) {
                x->unk240[i][0] -= 2;
                if (x->unk240[i][0] >= 0) {
                    x->unk240[i][0] = 0;
                    x->unk240[i][1] = 0;
                    x->unk268[i] = 0x800;
                }
            }
        }
        x->unk218[i][0] += x->unk240[i][0];
        x->unk218[i][1] += x->unk240[i][1];
        moving |= x->unk240[i][0] | x->unk240[i][1];
    }
    if (!moving && x->flags & 0x2000000)
        x->unk0 = sub_0802D430;
}

static void sub_0802C1D8(struct Unk_0802B4A8 *x) {
    u32 angle = sub_08154FE8((x->unk274[0].x - x->unk218[x->unk2BE][0]) >> 8,
        (x->unk274[0].y - x->unk218[x->unk2BE][1]) >> 8) & 0x3FF;

    x->unk240[x->unk2BE][0] = gSineTable[angle] >> 7;
    x->unk240[x->unk2BE][1] = gSineTable[angle + 0x100] >> 7;
    x->unk0 = sub_0802C26C;
}

static void sub_0802C26C(struct Unk_0802B4A8 *x) {
    s32 dx = (x->unk218[x->unk2BE][0] - x->unk274[0].x) >> 8;
    s32 dy = (x->unk218[x->unk2BE][1] - x->unk274[0].y) >> 8;

    if (dx * dx + dy * dy < 0x90) {
        x->unk0 = sub_0802D5D4;
    } else {
        x->unk218[x->unk2BE][0] += x->unk240[x->unk2BE][0];
        x->unk218[x->unk2BE][1] += x->unk240[x->unk2BE][1];
    }
}

static void sub_0802C308(struct Unk_0802B4A8 *x) {
    if (++x->unk2BC > 0x3F) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        x->flags &= ~0x20000000;
        x->unk0 = sub_0802D708;
    } else {
        gBldRegs.bldY = 0x10 - (x->unk2BC >> 2);
    }
}

static void sub_0802C360(struct Unk_0802B4A8 *x) {
    x->unk240[4][0] -= 4;
    if (x->unk240[4][0] < -0x80)
        x->unk240[4][0] = -0x80;
    if (x->unk218[4][0] < -0x2000) {
        x->flags &= ~0x7000;
        x->unk240[4][0] = 0;
        x->unk0 = sub_0802D444;
    }
    x->unk218[4][0] += x->unk240[4][0];
}

static void sub_0802C3C8(struct Unk_0802B4A8 *x) {
    struct Sprite *sprite = &x->unk11C;
    struct Sprite *sprite2;

    x->unk274[2].x = 0x11800;
    x->unk274[2].y = 0x5000;
    x->unk274[2].dx = 0;
    x->unk274[2].dy = 0;
    sprite->unk14 = 0x100;
    sprite->animId = 0x395;
    sprite->variant = 0;
    sprite->unk16 = 0;
    sprite->unk1B = 0xFF;
    sprite->unk1C = 0x10;
    sprite->palId = 5;
    sprite->x = x->unk274[2].x >> 8;
    sprite->y = x->unk274[2].y >> 8;
    sprite->unk8 = 0x1400;
    sub_08155128(sprite);
    sprite2 = &x->unk144;
    x->unk274[3].x = x->unk274[2].x;
    x->unk274[3].y = x->unk274[2].y;
    x->unk274[3].dx = 0;
    x->unk274[3].dy = 0;
    SpriteInitNoTilesVram(sprite2, 0x100, 0x395, 1, 0, 0xFF, 0x10, 6, x->unk274[3].x >> 8, x->unk274[3].y >> 8, 0x1400);
    x->flags |= 0xA0000;
    x->unk0 = sub_0802C4BC;
}

static void sub_0802C4BC(struct Unk_0802B4A8 *x) {
    x->unk274[2].dx = -0x140;
    if (x->unk274[2].x < 0xDC00)
        x->unk274[2].dy -= 8;
    if (x->unk274[2].y < -0x2000) {
        x->unk274[2].dx = 0;
        x->unk274[2].dy = 0;
        x->flags &= ~0x80000;
        x->unk0 = sub_0802D458;
    }
    x->unk274[2].x += x->unk274[2].dx;
    x->unk274[2].y += x->unk274[2].dy;
    x->unk274[3].x = x->unk274[2].x;
    x->unk274[3].y = x->unk274[2].y;
}

static void sub_0802C550(struct Unk_0802B4A8 *x) {
    struct Sprite *sprite = &x->unk144;

    x->unk274[3].x = 0x7800;
    x->unk274[3].y = -0x2800;
    x->unk274[3].dx = 0;
    x->unk274[3].dy = 0x200;
    sprite->unk14 = 0x100;
    sprite->animId = 0x2C3;
    sprite->variant = 3;
    sprite->unk16 = 0;
    sprite->unk1B = 0xFF;
    sprite->unk1C = 0x10;
    sprite->palId = 6;
    sprite->x = x->unk274[3].x >> 8;
    sprite->y = x->unk274[3].y >> 8;
    sprite->unk8 = 0x1000;
    sub_08155128(sprite);
    x->flags &= ~0x100000;
    x->flags |= 0x80000;
    x->unk0 = sub_0802D780;
}

static void sub_0802C5E4(struct Unk_0802B4A8 *x) {
    struct Background *bg = &x->unk194;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(31);
    BgInit(bg, (u32)BG_CHAR_ADDR(2), 0, (u32)BG_SCREEN_ADDR(31), 0, 0, 0x306, 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 8, 0, 0, 0x7FFF, 0x7FFF);
    LZ77UnCompVram(gUnk_082D7850[0x306]->tileset, (u16 *)bg->tilesVram);
    sub_08153060(bg);
    x->unk0 = sub_0802C68C;
}

static void sub_0802C68C(struct Unk_0802B4A8 *x) {
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
    x->unk0 = sub_0802D46C;
}

static void sub_0802C770(struct Unk_0802B4A8 *x) {
    struct Background *bg;

    gDispCnt |= DISPCNT_BG0_ON | DISPCNT_BG1_ON;
    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgCntRegs[0] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(1) | BGCNT_CHARBASE(2) | BGCNT_SCREENBASE(31);
    bg = &x->unk194;
    BgInit(bg, (u32)BG_CHAR_ADDR(2), 0, (u32)BG_SCREEN_ADDR(31), 0, 0, gUnk_082EB634[gLanguage], 0, 0, 0, 0, 0x1E, 0x14, 0, 0, 0, 0x18, 0, 0, 0x7FFF, 0x7FFF);
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[bg->unk1C]->tileset, (u16 *)bg->tilesVram);
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgCntRegs[1] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30);
    bg = &x->unk1D4;
    bg->tilesVram = (u32)BG_CHAR_ADDR(0);
    bg->unkA = 0;
    bg->tilemapVram = (u32)BG_SCREEN_ADDR(30);
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
    bg->prevScrollX = 0x7FFF;
    bg->prevScrollY = 0x7FFF;
    sub_08153060(bg);
    LZ77UnCompVram(gUnk_082D7850[bg->unk1C]->tileset, (u16 *)bg->tilesVram);
    x->unk2BC = 0;
    x->flags &= ~0x80000;
    x->unk0 = sub_0802D800;
}

static void sub_0802C8E8(struct Unk_0802B4A8 *x) {
    u16 i;
    struct Sprite *sprite, *sprite2;

    for (i = 0; i < ARRAY_COUNT(gUnk_082EB5C0); ++i) {
        sprite = &x->unk4[i];
        x->unk218[i][0] = gUnk_082EB5C0[i][0];
        x->unk218[i][1] = gUnk_082EB5C0[i][1];
        x->unk240[i][0] = 0x300;
        x->unk240[i][1] = -0x80;
        x->unk25E[i] = 0;
        x->unk268[i] = 0;
        sprite->unk14 = 0x100;
        sprite->animId = gUnk_082EB4B4[gKirbys[i].color][0];
        sprite->variant = gUnk_082EB4B4[gKirbys[i].color][1];
        sprite->unk16 = 0;
        sprite->unk1B = 0xFF;
        sprite->unk1C = 0x10;
        sprite->palId = i;
        sprite->x = 0;
        sprite->y = 0;
        sprite->unk8 = 0x81000;
        sub_08155128(sprite);
        sprite->unk14 = 0x100;
        sprite->animId = 0x2D;
        sprite->variant = 0;
        sprite->unk16 = 0;
        sprite->unk1B = 0xFF;
        sprite->unk1C = 0x10;
        sprite->palId = i;
        sprite->x = x->unk218[i][0] >> 8;
        sprite->y = x->unk218[i][1] >> 8;
        sprite->unk8 = 0x41000;
        sub_08155128(sprite);
    }
    sprite2 = &x->unkCC;
    sprite2->unk14 = 0x140;
    sprite2->animId = 0x2DE;
    sprite2->variant = 0;
    sprite2->unk16 = 0;
    sprite2->unk1B = 0xFF;
    sprite2->unk1C = 0x10;
    sprite2->palId = 0xF;
    sprite2->x = -0x100;
    sprite2->y = -0x100;
    sprite2->unk8 = 0x1000;
    sub_08155128(sprite2);
    x->flags &= 0xF0800000;
    x->flags |= 0xB6D;
    x->unk0 = sub_0802CA78;
}

static void sub_0802CA78(struct Unk_0802B4A8 *x) {
    bool32 done = TRUE;
    u16 i;

    for (i = 0; i < 4; ++i) {
        if (x->unk240[i][0] > 0x80) {
            x->unk240[i][0] -= 6;
            if (x->unk240[i][0] <= 0x80) {
                x->unk4[i].animId = 0x2D;
                x->unk4[i].variant = 6;
                x->unk240[i][0] = 0x80;
            }
        }
        if (x->unk218[i][0] > 0x13000 || x->unk218[i][1] < -0x4000)
            x->unk240[i][0] = x->unk240[i][1] = 0;
        else
            done = FALSE;
        x->unk218[i][0] += x->unk240[i][0];
        x->unk218[i][1] += x->unk240[i][1];
    }
    if (done)
        x->unk0 = sub_0802D4F4;
}

static void sub_0802CB60(UNUSED struct Unk_0802B4A8 *x) {
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    gUnk_0300000C = TRUE;
    TasksDestroyInPriorityRange(0, 0xFFFF);
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

static void sub_0802CC7C(struct Unk_0802DB48 *var) {
    struct Background *bg;
    u16 id;

    gDispCnt |= DISPCNT_BG2_ON;
    gBldRegs.bldCnt = BLDCNT_TGT1_BG2 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_OBJ;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0x10);
    bg = &var->bg;
    id = gUnk_082EB640[gLanguage][var->unk4C][0];
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgCntRegs[2] = BGCNT_TXT256x256 | BGCNT_16COLOR | BGCNT_PRIORITY(0) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29);
    BgInit(bg, (u32)BG_CHAR_ADDR(0), 0, (u32)BG_SCREEN_ADDR(29), 0, 0, id, 0, 0, 0, 0xA, 0x1E, 0xA, 0, 0, 0, 0x1A, 0, 0, 0x7FFF, 0x7FFF);
    LZ77UnCompVram(gUnk_082D7850[id]->tileset, (u16 *)bg->tilesVram);
    CpuFill32(0, (u32 *)(bg->tilesVram + TILE_SIZE_4BPP * 0x1FF), TILE_SIZE_4BPP);
    CpuFill16(0x1FF, (u16 *)bg->tilemapVram, BG_SCREEN_SIZE);
    sub_08153060(bg);
    var->unk4A = 0;
    var->parent->flags |= 0x20000000;
    var->unk0 = sub_0802CDA0;
}

static void sub_0802CDA0(struct Unk_0802DB48 *var) {
    if (++var->unk4A > 0xF) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0x10, 0);
        var->parent->flags &= ~0x20000000;
        var->unk0 = sub_0802D898;
    } else {
        gBldRegs.bldAlpha = BLDALPHA_BLEND(var->unk4A, 0x10 - var->unk4A);
    }
}

static void sub_0802CDF8(struct Unk_0802DB48 *var) {
    if (++var->unk4A > 0xF) {
        gDispCnt &= ~DISPCNT_BG2_ON;
        gBldRegs.bldCnt = 0;
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0x10);
        var->parent->flags &= ~0x20000000;
        var->unk0 = sub_0802D92C;
    } else {
        gBldRegs.bldAlpha = BLDALPHA_BLEND2(0x10 - var->unk4A, var->unk4A);
    }
}

static struct Unk_0802CE64 *sub_0802CE64(struct Unk_0802B4A8 *x, u16 animId, u16 variant, u32 tilesVram, s32 posX, s32 posY, s16 dx, s16 dy, u16 timer) {
    struct Task *t = TaskCreate(sub_0802CF2C, sizeof(struct Unk_0802CE64), 0x101, TASK_USE_IWRAM, NULL);
    struct Unk_0802CE64 *var = TaskGetStructPtr(t);

    var->parent = x;
    var->unk2C = posX;
    var->unk30 = posY;
    var->unk34 = dx;
    var->unk36 = dy;
    var->unk38 = timer;
    SpriteInit(&var->spr, tilesVram, 0x140, animId, variant, 0, 0xFF, 0x10, 0xD, posX >> 8, posY >> 8, 0x81000);
    return var;
}

static void sub_0802CF2C(void) {
    struct Unk_0802CE64 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    struct Sprite *sprite = &var->spr;

    sprite->x = (var->unk2C - var->parent->unk2B4) >> 8;
    sprite->y = var->unk30 >> 8;
    if (!sub_08155128(sprite))
        sprite->unk1B = 0xFF;
    DisplaySprite(sprite);
    var->unk2C += var->unk34;
    var->unk30 += var->unk36;
    if (var->unk38 && !--var->unk38)
        gCurTask->main = sub_0802D528;
    else if (sprite->x < -0x40 || sprite->x > 0x130 || sprite->y < -0x40 || sprite->y > 0xE0
        || var->parent->flags & 0x4000000)
        gCurTask->main = sub_0802D528;
}

static struct Unk_0802CE64 *sub_0802CFF0(struct Unk_0802B4A8 *x, u16 animId, u16 variant, u32 tilesVram, s32 posX, s32 posY, s16 dx, s16 dy, u16 timer) {
    struct Task *t = TaskCreate(sub_0802D0B8, sizeof(struct Unk_0802CE64), 0x101, TASK_USE_IWRAM, NULL);
    struct Unk_0802CE64 *var = TaskGetStructPtr(t);

    var->parent = x;
    var->unk2C = posX;
    var->unk30 = posY;
    var->unk34 = dx;
    var->unk36 = dy;
    var->unk38 = timer;
    SpriteInit(&var->spr, tilesVram, 0x140, animId, variant, 0, 0xFF, 0x10, 0xD, posX >> 8, posY >> 8, 0x81000);
    return var;
}

static void sub_0802D0B8(void) {
    struct Unk_0802CE64 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    struct Sprite *sprite = &var->spr;

    sprite->x = (var->unk2C - var->parent->unk2B4) >> 8;
    sprite->y = var->unk30 >> 8;
    if (!sub_08155128(sprite)) {
        if (var->unk38 && !--var->unk38)
            gCurTask->main = sub_0802D53C;
        else
            var->spr.unk1B = 0xFF;
    }
    DisplaySprite(sprite);
    var->unk2C += var->unk34;
    var->unk30 += var->unk36;
    if (sprite->x < -0x40 || sprite->x > 0x130 || sprite->y < -0x40 || sprite->y > 0xE0)
        gCurTask->main = sub_0802D53C;
    if (var->parent->flags & 0x4000000)
        gCurTask->main = sub_0802D53C;
}

static struct Unk_0802CE64 *sub_0802D198(struct Unk_0802B4A8 *x, u16 animId, u16 variant, u32 tilesVram, s32 posX, s32 posY, s16 dx, s16 dy) {
    struct Task *t = TaskCreate(sub_0802D288, sizeof(struct Unk_0802CE64), 0x101, TASK_USE_IWRAM, NULL);
    struct Unk_0802CE64 *var = TaskGetStructPtr(t);

    var->parent = x;
    var->unk2C = posX;
    var->unk30 = posY;
    var->unk34 = dx;
    var->unk36 = dy;
    var->unk38 = Rand16() & 0x3FF;
    var->unk3A = (Rand16() & 0x7FF) + 0x800;
    SpriteInit(&var->spr, tilesVram, 0x140, animId, variant, 0, 0xFF, 0x10, 0xD, posX >> 8, posY >> 8, 0x81000);
    return var;
}

static void sub_0802D288(void) {
    struct Unk_0802CE64 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;

    var->spr.x = (var->unk2C + (((gSineTable[var->unk38] >> 6) * var->unk3A) >> 8)) >> 8;
    var->spr.y = var->unk30 >> 8;
    if (!sub_08155128(&var->spr))
        var->spr.unk1B = 0xFF;
    DisplaySprite(&var->spr);
    var->unk2C += var->unk34;
    var->unk30 += var->unk36;
    var->unk38 += 8;
    var->unk38 &= 0x3FF;
    if (var->spr.x < -0x40 || var->spr.x > 0x130 || var->spr.y < -0x40 || var->spr.y > 0xE0)
        gCurTask->main = sub_0802D550;
    if (var->parent->flags & 0x4000000)
        gCurTask->main = sub_0802D550;
}

static void sub_0802D360(struct Task *t) {
    struct Unk_0802B4A8 *tmp = TaskGetStructPtr(t), *x = tmp;
    u16 i;

    for (i = 0; i < ARRAY_COUNT(x->unk4); ++i)
        VramFree(x->unk4[i].tilesVram);
    VramFree(x->unkCC.tilesVram);
    VramFree(x->unkF4.tilesVram);
    VramFree(x->unk11C.tilesVram);
    VramFree(x->unk144.tilesVram);
    VramFree(x->unk16C.tilesVram);
}

static void sub_0802D3E0(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802BF68;
}

static void sub_0802D3F4(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802D564;
}

static void sub_0802D408(struct Unk_0802B4A8 *x) {
    x->flags |= 0x8000000;
    x->unk2BC = 0;
    x->unk0 = sub_0802D588;
}

static void sub_0802D430(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802D5B0;
}

static void sub_0802D444(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802D738;
}

static void sub_0802D458(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802D75C;
}

static void sub_0802D46C(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802D7DC;
}

static void sub_0802D480(struct Unk_0802B4A8 *x) {
    gBgPalette[0] = RGB_WHITE;
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    x->flags &= ~0x4080000;
    x->flags |= 0x10800000;
    x->unk0 = sub_0802D4E0;
}

static void sub_0802D4E0(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802D824;
}

static void sub_0802D4F4(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    x->flags |= 0x20000000;
    x->unk0 = sub_0802D84C;
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

static void sub_0802D564(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802D9B8;
}

static void sub_0802D588(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 360)
        x->unk0 = sub_0802D9F4;
}

static void sub_0802D5B0(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802DA54;
}

static void sub_0802D5D4(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    m4aSongNumStart(SE_MIRROR_COMPLETE);
    x->flags |= 0x20000000;
    x->unk0 = sub_0802D618;
}

static void sub_0802D618(struct Unk_0802B4A8 *x) {
    if (++x->unk2BC > 0xF) {
        gBldRegs.bldY = 0x10;
        x->flags &= ~0x20000000;
        x->unk0 = sub_0802D664;
    } else {
        gBldRegs.bldY = x->unk2BC;
    }
}

static void sub_0802D664(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk240[x->unk2BE][0] = 0;
    x->unk240[x->unk2BE][1] = 0;
    x->flags &= ~(7 << (x->unk2BE * 3));
    x->unk0 = sub_0802D6B4;
}

static void sub_0802D6B4(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802D6D8;
}

static void sub_0802D6D8(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    gBldRegs.bldY = 0x10;
    x->flags |= 0x20000000;
    x->unk0 = sub_0802C308;
}

static void sub_0802D708(struct Unk_0802B4A8 *x) {
    if (++x->unk2BE < 4)
        x->unk0 = sub_0802C1D8;
    else
        x->unk0 = sub_0802DAA0;
}

static void sub_0802D738(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 120)
        x->unk0 = sub_0802C3C8;
}

static void sub_0802D75C(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802C550;
}

static void sub_0802D780(struct Unk_0802B4A8 *x) {
    if (x->unk274[3].y > 0xC800) {
        x->unk274[2].dy = 0;
        x->flags &= ~0x80000;
        x->unk0 = sub_0802DAB4;
    }
    x->unk274[3].dy += 0x40;
    if (x->unk274[3].dy > 0x400)
        x->unk274[3].dy = 0x400;
    x->unk274[3].y += x->unk274[3].dy;
}

static void sub_0802D7DC(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802DAC8;
}

static void sub_0802D800(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802DB00;
}

static void sub_0802D824(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 480)
        x->unk0 = sub_0802C8E8;
}

static void sub_0802D84C(struct Unk_0802B4A8 *x) {
    if (++x->unk2BC > 0xF) {
        gBldRegs.bldY = 0x10;
        x->flags &= ~0x20000000;
        x->unk0 = sub_0802DB34;
    } else {
        gBldRegs.bldY = x->unk2BC;
    }
}

static void sub_0802D898(struct Unk_0802DB48 *var) {
    var->unk4A = 0;
    var->unk0 = sub_0802D8AC;
}

static void sub_0802D8AC(struct Unk_0802DB48 *var) {
    if (gUnk_082EB640[gLanguage][var->unk4C][1] < var->unk4A++)
        var->unk0 = sub_0802D8F4;
}

static void sub_0802D8F4(struct Unk_0802DB48 *var) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG2 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_OBJ;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(0x10, 0);
    var->unk4A = 0;
    var->parent->flags |= 0x20000000;
    var->unk0 = sub_0802CDF8;
}

static void sub_0802D92C(struct Unk_0802DB48 *var) {
    var->unk4A = 0;
    var->unk0 = sub_0802D940;
}

static void sub_0802D940(struct Unk_0802DB48 *var) {
    if (var->unk4A++ > 30)
        var->unk0 = sub_0802D964;
}

static void sub_0802D964(struct Unk_0802DB48 *var) {
    if (++var->unk4C < ARRAY_COUNT(gUnk_082EB640[0])) {
        var->unk0 = sub_0802CC7C;
    } else {
        var->parent->flags |= 0x2000000;
        var->unk0 = sub_0802D9A4;
    }
}

static void sub_0802D9A4(UNUSED struct Unk_0802DB48 *var) {
    TaskDestroy(gCurTask);
}

static void sub_0802D9B8(struct Unk_0802B4A8 *x) {
    u16 i;

    for (i = 0; i < 4; ++i)
        x->unk240[i][0] = gUnk_082EB514[i][0];
    sub_0802DB48(x);
    x->unk0 = sub_0802BFBC;
}

static void sub_0802D9F4(struct Unk_0802B4A8 *x) {
    u16 i;

    for (i = 0; i < ARRAY_COUNT(x->unk240); ++i) {
        x->unk240[i][0] = gUnk_082EB564[i][0];
        x->unk240[i][1] = gUnk_082EB564[i][1];
    }
    x->unk0 = sub_0802C064;
}

static void sub_0802DA54(struct Unk_0802B4A8 *x) {
    x->unk274[0].x = 0x7800;
    x->unk274[0].y = 0xB400;
    x->unk274[0].dx = 0;
    x->unk274[0].dy = -0x100;
    x->flags |= 0x8000;
    x->unk0 = sub_0802DBC0;
}

static void sub_0802DAA0(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802DC10;
}

static void sub_0802DAB4(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802DC34;
}

static void sub_0802DAC8(struct Unk_0802B4A8 *x) {
    x->unk274[3].y = -0x1000;
    x->flags |= 0x80000;
    x->unk144.unk1B = 0xFF;
    x->unk0 = sub_0802DC58;
}

static void sub_0802DB00(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BD | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    x->flags |= 0x20000000;
    x->unk0 = sub_0802DCC4;
}

static void sub_0802DB34(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802DD18;
}

static struct Unk_0802DB48 *sub_0802DB48(struct Unk_0802B4A8 *x) {
    struct Task *t;
    struct Unk_0802DB48 *var;

    x->flags &= ~0x2000000;
    t = TaskCreate(sub_0802DD3C, sizeof(struct Unk_0802DB48), 0x101, TASK_USE_IWRAM, NULL);
    var = TaskGetStructPtr(t);
    CpuFill16(0, var, sizeof(struct Unk_0802DB48));
    var->parent = x;
    var->unk0 = sub_0802DD94;
    return var;
}

static void sub_0802DBC0(struct Unk_0802B4A8 *x) {
    if (x->unk274[0].y < 0x6400) {
        if (x->unk274[0].dy) {
            x->unk274[0].dy += 4;
            if (x->unk274[0].dy > 0)
                x->unk274[0].dy = 0;
        } else {
            x->unk0 = sub_0802DDA0;
        }
    }
    x->unk274[0].y += x->unk274[0].dy;
}

static void sub_0802DC10(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802DDB4;
}

static void sub_0802DC34(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802DDC0;
}

static void sub_0802DC58(struct Unk_0802B4A8 *x) {
    x->unk274[3].dy += 8;
    if (x->unk274[3].dy > 0x800)
        x->unk274[3].dy = 0x800;
    if (x->unk274[3].y > 0x8000) {
        x->unk274[3].dy = 0;
        x->unk274[3].y = 0x8000;
        x->unk0 = sub_0802DCA0;
    }
    x->unk274[3].y += x->unk274[3].dy;
}

static void sub_0802DCA0(struct Unk_0802B4A8 *x) {
    x->unk144.animId = 0x2C3;
    x->unk144.variant = 4;
    x->unk0 = sub_0802DDEC;
}

static void sub_0802DCC4(struct Unk_0802B4A8 *x) {
    if (++x->unk2BC > 0x3F) {
        gBldRegs.bldY = 0;
        x->flags &= ~0x20000000;
        x->unk0 = sub_0802DE00;
    } else {
        gBldRegs.bldY = 0x10 - (x->unk2BC >> 2);
    }
}

static void sub_0802DD18(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802CB60;
}

static void sub_0802DD3C(void) {
    struct Unk_0802DB48 *var = TaskGetStructPtr(gCurTask);

    if (!(var->parent->flags & 0x80000000)) {
        var->unk0(var);
        ++var->unk48;
    } else {
        sub_0802D9A4(var);
    }
}

static void sub_0802DD94(struct Unk_0802DB48 *var) {
    var->unk0 = sub_0802CC7C;
}

static void sub_0802DDA0(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802DE14;
}

static void sub_0802DDB4(struct Unk_0802B4A8 *x) {
    x->unk0 = sub_0802DE38;
}

static void sub_0802DDC0(struct Unk_0802B4A8 *x) {
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    x->flags &= ~0x5000000;
    x->unk0 = sub_0802C5E4;
}

static void sub_0802DDEC(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802DE94;
}

static void sub_0802DE00(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802DEB8;
}

static void sub_0802DE14(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802DEE0;
}

static void sub_0802DE38(struct Unk_0802B4A8 *x) {
    x->unk274[0].dy -= 4;
    if (x->unk274[0].dy < -0x100)
        x->unk274[0].dy = -0x100;
    if (x->unk274[0].y < -0x3C00) {
        x->flags &= ~0x18000;
        x->unk274[0].dy = 0;
        x->unk0 = sub_0802DF0C;
    }
    x->unk274[0].y += x->unk274[0].dy;
}

static void sub_0802DE94(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 30)
        x->unk0 = sub_0802DF30;
}

static void sub_0802DEB8(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 1020)
        x->unk0 = sub_0802DFB4;
}

static void sub_0802DEE0(struct Unk_0802B4A8 *x) {
    x->unk4[4].animId = 0x2D;
    x->unk4[4].variant = 7;
    x->unk2BE = 0;
    x->unk2BC = 0;
    x->unk0 = sub_0802E01C;
}

static void sub_0802DF0C(struct Unk_0802B4A8 *x) {
    x->unk4[4].animId = 0x2D;
    x->unk4[4].variant = 4;
    x->unk2BC = 0;
    x->unk0 = sub_0802E040;
}

static void sub_0802DF30(struct Unk_0802B4A8 *x) {
    x->flags &= ~0x4000000;
    x->unk2B4 = 0;
    sub_0802CFF0(x, 0x28F, 3, x->unk16C.tilesVram, x->unk274[3].x, x->unk274[3].y, 0, 0, 1)->spr.unk1C >>= 1;
    m4aSongNumStart(SE_SHARD_OBTAINED);
    x->unk0 = sub_0802DFA0;
}

static void sub_0802DFA0(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    x->unk0 = sub_0802E064;
}

static void sub_0802DFB4(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    m4aMPlayFadeOut(&gMPlayInfo_0, 8);
    m4aMPlayFadeOut(&gMPlayInfo_1, 8);
    m4aMPlayFadeOut(&gMPlayInfo_2, 8);
    m4aMPlayFadeOut(&gMPlayInfo_3, 8);
    x->flags |= 0x20000000;
    x->unk0 = sub_0802E088;
}

static void sub_0802E01C(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 180)
        x->unk0 = sub_0802C1D8;
}

static void sub_0802E040(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 60)
        x->unk0 = sub_0802E0D4;
}

static void sub_0802E064(struct Unk_0802B4A8 *x) {
    if (x->unk2BC++ > 180)
        x->unk0 = sub_0802E0E8;
}

static void sub_0802E088(struct Unk_0802B4A8 *x) {
    if (++x->unk2BC > 0xF) {
        gBldRegs.bldY = 0x10;
        x->flags &= ~0x20000000;
        x->unk0 = sub_0802D480;
    } else {
        gBldRegs.bldY = x->unk2BC;
    }
}

static void sub_0802E0D4(struct Unk_0802B4A8 *x) {
    x->unk240[4][0] = 0;
    x->unk0 = sub_0802C360;
}

static void sub_0802E0E8(struct Unk_0802B4A8 *x) {
    x->unk2BC = 0;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    x->flags |= 0x20000000;
    x->unk0 = sub_0802E11C;
}

static void sub_0802E11C(struct Unk_0802B4A8 *x) {
    if (++x->unk2BC > 0x3F) {
        gBldRegs.bldY = 0x10;
        x->flags &= ~0x20000000;
        x->unk0 = sub_0802C770;
    } else {
        gBldRegs.bldY = x->unk2BC >> 2;
    }
}
