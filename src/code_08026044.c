#include "code_08026044.h"
#include "code_0814F274.h"
#include "malloc_vram.h"
#include "palette.h"
#include "random.h"
#include "sprite.h"
#include "trig.h"
#include "title_screen.h"

void sub_08026940(struct Cutscene *arg0);
void sub_08026698(void);
void sub_08026610(struct Task *task);
extern bool16 gUnk_03000008;
void CreateCutscene(void) {
    struct Task *task;
    struct Cutscene *cs, *cs2;
    u16 i;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    task = TaskCreate(sub_08026698, sizeof(struct Cutscene), 0x100, TASK_USE_IWRAM, sub_08026610);
    cs2 = TaskGetStructPtr(task);
    cs = cs2;
    CpuFill16(0, cs, sizeof(struct Cutscene));
    CpuCopy32(gRgbMap, &cs->unk214, sizeof(gRgbMap));
    SpriteInit(&cs->unk16C, VramMalloc(0x100), 0, 0x292, 0, 0, 0xff, 0x10, 0xf, 0, 0, 0);
    for (i = 0; i < 4; ++i)
        cs->unk4[i].tilesVram = VramMalloc(0x10);
    cs->unkA4.tilesVram = VramMalloc(0x40);
    cs->unkCC.tilesVram = VramMalloc(0x40);
    cs->unkF4.tilesVram = VramMalloc(0x40);
    cs->unk11C.tilesVram = VramMalloc(0x2a);
    cs->unk144.tilesVram = VramMalloc(0x40);
    gUnk_03000008 = FALSE;
    cs->unk0 = sub_08026940;
}

extern const u16 gUnk_082EB332[][2];
extern const u8 gUnk_082EB362[];
struct Unk_080299B4* sub_080299B4(struct Cutscene *arg0, u16 arg1, u16 arg2, s32 arg3, s32 arg4, s32 arg5, u16 arg6, u16 arg7, u16 arg8);
void sub_08026168(struct Cutscene *arg0) {
    u16 i, j;
    struct Sprite *sprite;
    for (j = 0, i = 0; i < 4; i++, j += 3) {
        if ((1 << j) & arg0->flags) {
            sprite = &arg0->unk4[i];
            if (!(arg0->flags & 0x80000000)) {
                if (!((2 << j) & arg0->flags) && !sub_08155128(sprite))
                    arg0->flags |= 2 << j;
                if ((2 << j) & arg0->flags && (4 << j) & arg0->flags) {
                    arg0->flags &= ~(2 << j);
                    sprite->unk1B = 0xff;
                }
            }
            sub_0815604C(sprite);
        }
    }
    if (arg0->flags & 0x400000) {
        s16 array2[5];
        s16 array[2];
        sprite = &arg0->unk144;
        if (!(arg0->flags & 0x80000000)) {
            if (!sub_08155128(sprite)) {
                sprite->unk1B = 0xff;
            }
        }
        if (arg0->flags & 0x800000) {
            Macro_08026168(sprite, arg0->unk31C, arg0->unk314[0], arg0->unk314[1], array, array2, 0x2023);
        }
        else if (!(arg0->unk358 & 0xf)) {
            u32 val;
            u16 val4;
            u32 val2, val3;
            val = (Rand16() & 0x1f);
            val4 = (Rand16() & 0xf) + 0x32;
            val2 = arg0->unk314[0] + ((Rand16() & 0xf) - 8) * 0x100;
            val3 = arg0->unk314[1] + ((Rand16() & 0xf) - 8) * 0x100;
            sub_080299B4(arg0, gUnk_082EB332[gUnk_082EB362[val]][0], gUnk_082EB332[gUnk_082EB362[val]][1], arg0->unk16C.tilesVram,
                         val2, val3, arg0->unk358 & 0xf, 0x80, val4);
        }
        sub_0815604C(sprite);
    }
    if (arg0->flags & 0x1000) {
        s16 val;
        s16 array2[4];
        s16 array[2];
        struct Sprite *sprite1 = &arg0->unkA4;
        sprite = &arg0->unkCC;
        if (!(arg0->flags & 0x80000000)) {
            if (!(arg0->flags & 0x2000)) {
                if (!(sub_08155128(sprite1) | sub_08155128(sprite))) {
                    arg0->flags |= 0x2000;
                }
            }
            if (arg0->flags & 0x2000 && arg0->flags & 0x4000) {
                arg0->flags &= ~0x2000;
                arg0->unkA4.unk1B = 0xff;
                arg0->unkCC.unk1B = 0xff;
            }
        }
        {
            if (arg0->unk330 <= 0x1ff) {
                val = 2;
                array[0] = 0x78;
                array[1] = 0x50;
            }
            else {
                val = arg0->unk330 >> 8;
                array[0] = (((arg0->unk328 - 0x7800) * val) >> 0x10) + 0x78;
                array[1] = (((arg0->unk32C - 0x5000) * val) >> 0x10) + 0x50;
            }
            array2[0] = 0;
            array2[1] = val;
            array2[2] = val;
            array2[3] = array[0];
            array2[4] = array[1]; // UB: out-of-bounds access
            arg0->unkA4.unk8 |= 0x2020;
            sub_08155604(sprite1, array2);
            sub_0815604C(sprite1);
            array2[0] = 0;
            array2[1] = val;
            array2[2] = val;
            array2[3] = array[0];
            array2[4] = array[1]; // UB: out-of-bounds access
            arg0->unkCC.unk8 |= 0x2020;
            sub_08155604(sprite, array2);
            sub_0815604C(sprite);
        }
    }
    if (arg0->flags & 0x8000) {
        s16 array2[5];
        s16 array[2];
        sprite = &arg0->unkF4;
        if (!(arg0->flags & 0x80000000)) {
            if (!(arg0->flags & 0x10000) && !sub_08155128(sprite)) {
                arg0->flags |= 0x10000;
            }
            if (arg0->flags & 0x10000 && arg0->flags & 0x20000) {
                arg0->flags &= ~0x10000;
                sprite->unk1B = 0xff;
            }
        }
        if (arg0->flags & 0x40000) {
            Macro_08026168(sprite, arg0->unk344, arg0->unk33C, arg0->unk340, array, array2, 0x42022);
        }
        sub_0815604C(sprite);
    }
    if (arg0->flags & 0x80000) {
        sprite = &arg0->unk11C;
        if (!(arg0->flags & 0x80000000)) {
            if (!(arg0->flags & 0x100000) && !sub_08155128(sprite)) {
                arg0->flags |= 0x100000;
            }
            if (arg0->flags & 0x100000 && arg0->flags & 0x200000) {
                arg0->flags &= ~0x100000;
                sprite->unk1B = 0xff;
            }
        }
        sub_0815604C(sprite);
    }
}

void sub_08026610(struct Task *task) {
    struct Cutscene *cs2 = TaskGetStructPtr(task), *cs = cs2;
    u16 i;
    for (i = 0; i < 4; ++i) {
        VramFree(cs->unk4[i].tilesVram);
    }
    VramFree(cs->unkA4.tilesVram);
    VramFree(cs->unkCC.tilesVram);
    VramFree(cs->unkF4.tilesVram);
    VramFree(cs->unk11C.tilesVram);
    VramFree(cs->unk144.tilesVram);
    VramFree(cs->unk16C.tilesVram);
}

extern const struct Object11_8 *gUnk_082EB2B4;
void sub_08029618(struct Cutscene *arg0);
void sub_08026698(void) {
    struct Cutscene *cs2 = TaskGetStructPtr(gCurTask), *cs = cs2;
    u16 a;
    const u16 *palette;
    if (gPressedKeys & (START_BUTTON | A_BUTTON | B_BUTTON))
        cs->flags |= 0x40000000;
    if (!(cs->flags & 0x40000000) || (cs->flags & 0x20000000)) {
#ifndef NONMATCHING
        asm("":::"r6");
#endif
        cs->unk0(cs);
        if (gUnk_03000008) {
            return;
        }
        if (cs->flags & 0x1000000) {
            u8 paletteOffset = gUnk_082EB2B4->unk0 >> 8;
            u16 paletteSize = gUnk_082EB2B4->unk0 >> 0x10;
            const u16 *const *tmp3 = gUnk_082EB2B4->unk4;

#ifndef NONMATCHING
            asm("":::"r8");
#endif
            if (cs->unk35E >= (*(u8 *)&gUnk_082EB2B4->unk0)) {
                cs->unk35E = 0;
                cs->unk360 = 0;
            }
            else {
                a = *tmp3[cs->unk35E];
                do palette = tmp3[cs->unk35E] + 1; while (0);
                if (++cs->unk360 == 1) {
                    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
                        LoadBgPaletteWithTransformation(palette, paletteOffset + 0x60, paletteSize);
                    }
                    else {
                        DmaCopy16(3, palette, gBgPalette + 0x60 + paletteOffset, paletteSize * sizeof(u16));
                        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
                    }
                }
                if (cs->unk360 >= a) {
                    ++cs->unk35E;
                    cs->unk360 = 0;
                }
            }
        }

        if (cs->flags & 0x2000000) {
            cs->unk2D8 += cs->unk2E0;
            cs->unk2DC += cs->unk2E2;
            gBgScrollRegs[1][0] = cs->unk2D8 >> 8;
            gBgScrollRegs[1][1] = cs->unk2DC >> 8;
            if (cs->flags & 0x8000) {
                cs->unkF4.y += ((cs->unk350 * gSineTable[cs->unk34E]) >> 0xe);
                cs->unk11C.y = cs->unkF4.y;
                cs->unk34E += 4;
                cs->unk34E &= 0x3ff;
            }
        }
        ++cs->unk358;

    }
    else if (cs->flags & 0x40000000) {
        if (!(cs->flags & 0x80000000)) {
            gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
            gBldRegs.bldY = 0;
            cs->unk35A = 0;

            m4aMPlayFadeOut(&gMPlayInfo_0, 3);
            m4aMPlayFadeOut(&gMPlayInfo_1, 3);
            m4aMPlayFadeOut(&gMPlayInfo_2, 3);
            m4aMPlayFadeOut(&gMPlayInfo_3, 3);
            cs->flags |= 0x80000000;
        }
        else if (++cs->unk35A > 0xf) {
            sub_08029618(cs);
            return;
        }
        else {
            gBldRegs.bldY = cs->unk35A;
        }
    }
    if (!gUnk_03000008)
        sub_08026168(cs);
}

void sub_08029CB8(struct Cutscene *arg0);
void sub_08026940(struct Cutscene *arg0) {
    struct Sprite *sprite1, *sprite2;
    struct Background *bg1, *bg2;
    gDispCnt = DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gDispCnt |= DISPCNT_OBJ_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON;
    sprite1 = &arg0->unkA4;
    sprite2 = &arg0->unkCC;
    arg0->unk328 = 0x7800;
    arg0->unk32C = 0x3c00;
    arg0->unk330 = 0x10000;
    SpriteInitNoTilesVram(sprite1, 0x300, 0x39D, 5, 0, 0xff, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);
    SpriteInitNoTilesVram(sprite2, 0x300, 0x39D, 4, 0, 0xff, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);
    arg0->flags |= 0x5000;
    bg1 = &arg0->unk194;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgCntRegs[1] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(31);
    BgInit(bg1, 0x6000000, 0, 0x600F800, 0, 0, 0x2EA, 0, 0, 0, 0, 0x1f, 0x15, 0, 0, 0, 0x39, 0, 0, 0x7FFF, 0x7FFF);
    LZ77UnCompVram((gUnk_082D7850[0x2EA])->tileset, (u16 *)(bg1)->tilesVram);
    sub_08153060(bg1);
    bg2 = &arg0->unk1D4;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgCntRegs[2] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(30);
    BgInit(bg2, 0x6004000, 0, 0x600F000, 0, 0, 0x2EB, 0, 0, 0, 0, 0x1f, 0x15, 0, 0, 0, 0x2A, 0, 0, 0x7FFF, 0x7FFF);
    LZ77UnCompVram((gUnk_082D7850[0x2EB])->tileset, (u16 *)(bg2)->tilesVram);
    sub_08153060(bg2);
    m4aSongNumStart(MUS_INTRO);
    arg0->unk2D8 = 0;
    arg0->unk2DC = 0;
    arg0->unk2E0 = 0x20;
    arg0->flags |= 0x22000000;
    arg0->unk0 = sub_08029CB8;

}

void sub_08029CD0(struct Cutscene *arg0);
void sub_08026B78(struct Cutscene *arg0) {
    ++arg0->unk35A;
    if (arg0->unk35A >= 0x10) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_08029CD0;
    }
    else {
        gBldRegs.bldY = 0x10 - arg0->unk35A;
    }
}

void sub_08029F44(struct Cutscene *arg0);
void sub_08026BD0(struct Cutscene *arg0) {
    struct Sprite *sprite1, *sprite2;
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BD | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    m4aSongNumStart(SE_08D5ECB4);
    sprite1 = &arg0->unkA4;
    sprite2 = &arg0->unkCC;
    SpriteInitNoTilesVram(sprite1, 0x300, 0x39D, 0, 0, 0xff, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);
    SpriteInitNoTilesVram(sprite2, 0x300, 0x39D, 1, 0, 0xff, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);
    arg0->flags &= ~0x6000;
    arg0->flags |= 0x1000;
    arg0->unk35A = 0;
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_08029F44;
}

void sub_08029F94(struct Cutscene *arg0);
void sub_08026CC0(struct Cutscene *arg0) {
    const struct RoomTiledBG *bg;
    const u16 *src;
    u16 *dst;
    u16 i;
    gDispCnt &= ~(DISPCNT_BG1_ON | DISPCNT_BG2_ON);
    gDispCnt |= DISPCNT_BG2_ON;
    bg = gRoomTiledBGs[gRoomProps[0x38E].backgroundIdx];
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgCntRegs[2] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(30);
    LZ77UnCompVram(bg->tileset, (u16 *)0x6004000);
    src = bg->tilemap;
    dst = (u16 *)0x600f000;
    for (i = 0; i < 0x14; ++i) {
        CpuCopy16(src, dst, 0x3C);
        src += bg->width;
        dst += 0x20;
    }
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(bg->palette, bg->paletteOffset, bg->paletteSize);
    }
    else {
        DmaCopy16(3, bg->palette, gBgPalette + bg->paletteOffset, bg->paletteSize * sizeof(u16));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    arg0->flags &= ~0x2000000;
    arg0->flags |= 0x1000000;
    arg0->unk0 = sub_08029F94;
}

void sub_08026E1C(struct Cutscene *arg0);
void sub_08026DC0(struct Cutscene *arg0) {
    if (++arg0->unk35A >= 0x20) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_08026E1C;
    }
    else {
        gBldRegs.bldY = 0x10 - (arg0->unk35A >> 1);
    }
}

void sub_08029CE8(struct Cutscene *arg0);
void sub_08026E1C(struct Cutscene *arg0) {
    struct Sprite *sprite1, *sprite2;
    if (arg0->flags & 0x2000) {
        sprite1 = &arg0->unkA4;
        sprite2 = &arg0->unkCC;
        SpriteInitNoTilesVram(sprite1, 0x300, 0x39D, 5, 0, 0xFF, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);
        SpriteInitNoTilesVram(sprite2, 0x300, 0x39D, 4, 0, 0xFF, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);
        arg0->flags &= ~0x2000;
        arg0->flags |= 0x5000;
        arg0->unk0 = sub_08029CE8;
    }
}

void sub_08026FAC(struct Cutscene *arg0);
void sub_08026EF0(struct Cutscene *arg0) {
    struct Sprite *sprite1;
    arg0->unk334 = 0;
    arg0->unk336 = 0x80;
    arg0->unk338 = -0x100;
    sprite1 = &arg0->unkF4;
    arg0->unk33C = 0x7800;
    arg0->unk340 = 0xb400;
    arg0->unk344 = 0x10000;
    arg0->unk348 = 0;
    arg0->unk34A = -0x100;
    arg0->unk34C = 0;
    SpriteInitNoTilesVram(sprite1, 0x300, 0x39E, 1, 0, 0xFF, 0x10, 5, arg0->unk33C >> 8, arg0->unk340 >> 8, 0x2025);
    arg0->flags |= 0x68000;
    arg0->unk0 = sub_08026FAC;
    arg0->unk35A = 0;
}

void sub_08027108(struct Cutscene *arg0);
void sub_08026FAC(struct Cutscene *arg0) {
    arg0->unk330 += arg0->unk338;
    if (arg0->unk330 < 0) {
        arg0->unk330 = 0;
    }
    if (arg0->unk35A > 0x3c) {
        arg0->unk340 += arg0->unk34A;
        arg0->unk34A += 2;
        if (arg0->unk34A > -0x10) {
            arg0->unk34A = -0x10;
        }
    }
    if (arg0->flags & 0x2000) {
        struct Sprite *sprite1, *sprite2;
        sprite1 = &arg0->unkA4;
        sprite2 = &arg0->unkCC;
        SpriteInitNoTilesVram(sprite1, 0x300, 0x39D, 5, 0, 0xff, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);
        SpriteInitNoTilesVram(sprite2, 0x300, 0x39D, 4, 0, 0xff, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);
        arg0->flags &= ~0x2000;
        arg0->flags |= 0x4000;
    }
    if (arg0->unk35A++ > 0x96) {
        if (arg0->flags & 0x8000000) {
            arg0->unk0 = sub_08027108;
        }
        else {
            arg0->unk2D4->unk8 = 4;
        }
    }
}

void sub_08029D00(struct Cutscene *arg0);
void sub_08027108(struct Cutscene *arg0) {
    struct Background *bg;
    gDispCnt = DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gDispCnt |= DISPCNT_OBJ_ON | DISPCNT_BG1_ON;
    arg0->flags &= ~0x7000;
    arg0->flags &= ~0x38000;
    arg0->flags &= ~0x1000000;
    arg0->flags |= 0x2000000;
    arg0->unk350 = 4;
    arg0->unk2D8 = 0;
    arg0->unk2DC = 0;
    arg0->unk2E0 = 0;
    arg0->unk2E2 = -0xc00;
    bg = &arg0->unk194;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgCntRegs[1] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(31);
    BgInit(bg, 0x6000000, 0, 0x600F800, 0, 0, 0x2EC, 0, 0, 0, 0, 0x20, 0x20, 0, 0, 0, 9, 0, 0, 0x7fff, 0x7fff);
    LZ77UnCompVram(gUnk_082D7850[0x2EC]->tileset, (u16 *)bg->tilesVram);
    sub_08153060(bg);
    arg0->unk0 = sub_08029D00;
}

void sub_080272F8(struct Cutscene *arg0);
void sub_08027208(struct Cutscene *arg0) {
    struct Sprite *spr1 = &arg0->unkF4;
    arg0->unk33C = 0x7800;
    arg0->unk340 = 0xdc00;
    arg0->unk34A = -0x300;
    SpriteInitNoTilesVram(spr1, 0x300, 0x390, 0xf, 0, 0xff, 0x10, 5, arg0->unk33C >> 8, arg0->unk340 >> 8, 0x2000);
    arg0->flags &= ~0x50000;
    arg0->flags |= 0x28000;
    SpriteInitNoTilesVram(&arg0->unk11C, 0x2c0, 0x391, 0xf, 0, 0xff, 0x10, 0xf, arg0->unkF4.x, arg0->unkF4.y, 0x2000);
    arg0->flags &= ~0x100000;
    arg0->flags |= 0x280000;
    m4aSongNumStart(SE_08D5EDA0);
    arg0->unk0 = sub_080272F8;
}

void sub_08029D18(struct Cutscene *arg0);
void sub_080272F8(struct Cutscene *arg0) {
    arg0->unk340 += arg0->unk34A;
    arg0->unk34A += 8;
    if (arg0->unk34A > 0) {
        arg0->unk34A = 0;
    }

    arg0->unkF4.y = arg0->unk340 >> 8;
    arg0->unk11C.y = arg0->unkF4.y;
    if (arg0->unk34A == 0) {
        arg0->unk0 = sub_08029D18;
    }
}

void sub_08029D38(struct Cutscene *arg0);
void sub_08027350(struct Cutscene *arg0) {
    arg0->unk340 += arg0->unk34A;
    arg0->unk34A -= 8;
    if (arg0->unk34A < -0x400) {
        arg0->unk34A = -0x400;
    }
    arg0->unkF4.y = arg0->unk340 >> 8;
    arg0->unk11C.y = arg0->unkF4.y;
    if (arg0->unkF4.y < -0x20) {
        arg0->unk0 = sub_08029D38;
    }
}


void sub_08029DAC(struct Cutscene *arg0);
void sub_080273B0(struct Cutscene *arg0) {
    ++arg0->unk35A;
    if (arg0->unk35A > 0xf) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0x10;
        CpuFill16(0, gBgPalette, sizeof(gBgPalette));
        CpuFill16(0, gObjPalette, sizeof(gObjPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
        arg0->flags &= ~0x2000000;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_08029DAC;
    }
    else {
        gBldRegs.bldY = arg0->unk35A;
    }
}

void sub_08027538(struct Cutscene *arg0);
void sub_08027444(struct Cutscene *arg0) {
    struct Background *bg;
    gDispCnt &= ~DISPCNT_BG1_ON;
    gDispCnt |= DISPCNT_BG2_ON;
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_DARKEN;
    gBldRegs.bldY = 0x10;
    bg = &arg0->unk1D4;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgCntRegs[2] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(30);
    BgInit(bg, 0x6004000, 0, 0x600f000, 0, 0, 0x2ED, 0, 0, 0, 0, 0x1e, 0x14, 0, 0, 0, 0xa, 0, 0, 0x7fff, 0x7fff);
    LZ77UnCompVram(gUnk_082D7850[0x2ED]->tileset, (u16 *)bg->tilesVram);
    sub_08153060(bg);
    m4aSongNumStart(MUS_DARK_META_KNIGHT_APPEARS);
    arg0->unk35A = 0;
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_08027538;
}

void sub_08029DCC(struct Cutscene *arg0);
void sub_08027538(struct Cutscene *arg0) {
    ++arg0->unk35A;
    if (arg0->unk35A >= 0x10) {
        gBldRegs.bldCnt = 0;
        gBldRegs.bldY = 0;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_08029DCC;
    }
    else {
        gBldRegs.bldY = 0x10 - arg0->unk35A;
    }
}

void sub_08027614(struct Cutscene *arg0);
void sub_08027590(struct Cutscene *arg0) {
    struct Sprite *spr = &arg0->unk4[0];
    arg0->unk2E4[0][0] = -0x2000;
    arg0->unk2E4[0][1] = 0x8c00;
    arg0->unk304[0][0] = 0x1dc;
    SpriteInitNoTilesVram(spr, 0x300, 2, 0, 0, 0xff, 0x10, 0, arg0->unk2E4[0][0] >> 8, arg0->unk2E4[0][1] >> 8, 0x2000);
    arg0->flags |= 0x5;
    arg0->unk35A = 5;
    arg0->unk0 = sub_08027614;
}

void sub_08027670(struct Cutscene *arg0);
void sub_08027614(struct Cutscene *arg0) {
    arg0->unk2E4[0][0] += arg0->unk304[0][0];
    arg0->unk4[0].x = arg0->unk2E4[0][0] >> 8;
    ++arg0->unk35A;
    if (arg0->unk35A > 9) {
        arg0->unk35A = 0;
        m4aSongNumStart(SE_08D5F36C);
    }
    if (arg0->unk2E4[0][0] > 0x5000) {
        arg0->unk0 = sub_08027670;
    }
}

void sub_08027814(struct Cutscene *arg0);
void sub_08027670(struct Cutscene *arg0) {
    struct Sprite *spr1 = &arg0->unkF4;
    arg0->unk33C = 0xa000;
    arg0->unk340 = -0x2000;
    SpriteInitNoTilesVram(spr1, 0x300, 0x394, 1, 0, 0xff, 0x10, 5, arg0->unk33C >> 8, arg0->unk340 >> 8, 0x82000);
    SpriteInitNoTilesVram(spr1, 0x300, 0x390, 0xd, 0, 0xff, 0x10, 5, arg0->unk33C >> 8, arg0->unk340 >> 8, 0x42000);
    arg0->flags &= ~0x30000;
    arg0->flags |= 0x8000;
    SpriteInitNoTilesVram(&arg0->unk11C, 0x300, 0x394, 3, 0, 0xff, 0x10, 0xf, arg0->unk33C >> 8, arg0->unk340 >> 8, 0x82000);
    SpriteInitNoTilesVram(&arg0->unk11C, 0x300, 0x391, 0xd, 0, 0xff, 0x10, 0xf, arg0->unkF4.x, arg0->unkF4.y, 0x42000);
    arg0->flags &= ~0x300000;
    arg0->flags |= 0x80000;
    ++arg0->unk35A;
    if (arg0->unk35A > 9) {
        arg0->unk35A = 0;
        m4aSongNumStart(SE_08D5F36C);
    }
    arg0->unk35C = 0;
    arg0->unk0 = sub_08027814;
    arg0->unk0(arg0);
}

void sub_0802A110(struct Cutscene *arg0);
void sub_08027814(struct Cutscene *arg0) {
    arg0->unk2E4[0][0] += arg0->unk304[0][0];
    if (arg0->unk35C) {
        arg0->unk304[0][0] -= 0x20;
        if (arg0->unk304[0][0] < 0) {
            arg0->unk304[0][0] = 0;
        }
    }
    else {
        ++arg0->unk35A;
        if (arg0->unk35A > 9) {
            arg0->unk35A = 0;
            m4aSongNumStart(SE_08D5F36C);
        }
    }
    arg0->unk4[0].x = arg0->unk2E4[0][0] >> 8;
    arg0->unk340 += 0x800;
    if (arg0->unk340 > 0x8c00) {
        arg0->unk340 = 0x8c00;
    }
    if (!arg0->unk35C && arg0->unk340 > 0x5000) {
        SpriteInitNoTilesVram(&arg0->unk4[0], 0x300, 0x36, 0, 0, 0xff, 0x10, 0, arg0->unk2E4[0][0] >> 8, arg0->unk2E4[0][1] >> 8, 0x2000);
        arg0->flags &= ~0x10000;
        arg0->unk35C = 1;
    }
    arg0->unkF4.y = arg0->unk340 >> 8;
    arg0->unk11C.y = arg0->unkF4.y;
    if (arg0->unk340 == 0x8c00) {
        SpriteInitNoTilesVram(&arg0->unkF4, 0x300, 0x390, 0xe, 0, 0xff, 0x10, 5, arg0->unk33C >> 8, arg0->unk340 >> 8, 0x42000);
        arg0->flags &= ~0x10000;
        SpriteInitNoTilesVram(&arg0->unk11C, 0x300, 0x391, 0xe, 0, 0xff, 0x10, 0xf, arg0->unkF4.x, arg0->unkF4.y, 0x42000);
        arg0->flags &= ~0x300000;
        arg0->flags |= 0x80000;
        m4aSongNumStart(SE_08D5EDC4);
        arg0->unk35A = 0;
        arg0->unk0 = sub_0802A110;
    }
}

void sub_0802A138(struct Cutscene *arg0);
void sub_080279F4(struct Cutscene *arg0) {
    struct Sprite *spr = &arg0->unkF4;
    SpriteInitNoTilesVram(spr, 0x300, 0x390, 0x16, 0, 0xff, 0x10, 5, spr->x, spr->y, 0x42000);
    arg0->flags &= ~0x30000;
    SpriteInitNoTilesVram(&arg0->unk11C, 0x300, 0x391, 0x16, 0, 0xff, 0x10, 0xf, arg0->unkF4.x, arg0->unkF4.y, 0x42000);
    arg0->flags &= ~0x300000;
    arg0->flags |= 0x80000;
    m4aSongNumStart(SE_08D5EDE4);
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A138;
}

void sub_08027BB8(struct Cutscene *arg0);
void sub_08027AC0(struct Cutscene *arg0) {
    struct Sprite *spr;
    arg0->flags |= 0x110002;
    arg0->flags &= ~0x220004;
    spr = &arg0->unk4[0];
    SpriteInitNoTilesVram(spr, 0x300, 0xb, 0, 0, 0xff, 0x10, 0, spr->x, spr->y, 0x2000);
    gMainFlags |= MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE | MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE;
    InvertRgbMap();
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gBgPalette, 0, ARRAY_COUNT(gBgPalette));
    }
    else {
        DmaCopy16(3, gBgPalette, gBgPalette, sizeof(gBgPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    if (gMainFlags & MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE) {
        LoadObjPaletteWithTransformation(gObjPalette, 0, ARRAY_COUNT(gObjPalette));
    }
    else {
        DmaCopy16(3, gObjPalette, gObjPalette, sizeof(gObjPalette));
        gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    }
    arg0->unk35A = 0;
    arg0->unk0 = sub_08027BB8;
}

void sub_0802A160(struct Cutscene *arg0);
void sub_08027BB8(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 10) {
        if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
            LoadBgPaletteWithTransformation(gBgPalette, 0, ARRAY_COUNT(gBgPalette));
        }
        else {
            DmaCopy16(3, gBgPalette, gBgPalette, sizeof(gBgPalette));
            gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        }
        if (gMainFlags & MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE) {
            LoadObjPaletteWithTransformation(gObjPalette, 0, ARRAY_COUNT(gObjPalette));
        }
        else {
            DmaCopy16(3, gObjPalette, gObjPalette, sizeof(gObjPalette));
            gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
        }
        CpuCopy32(arg0->unk214, gRgbMap, sizeof(gRgbMap));
        arg0->unk0 = sub_0802A160;
    }
}

extern const u16 gUnk_082EB322[][2];
void sub_08027DD0(struct Cutscene *arg0);
void sub_08027C80(struct Cutscene *arg0) {
    u16 i;
    for (i = 0; i < 4; ++i) {
        u16 j;
        struct Sprite *spr;
        arg0->unk2E4[i][0] = arg0->unk2E4[0][0];
        arg0->unk2E4[i][1] = arg0->unk2E4[0][1];
        arg0->unk304[i][0] = gUnk_082EB322[i][0];
        arg0->unk304[i][1] = gUnk_082EB322[i][1];
        spr = &arg0->unk4[i];
        SpriteInitNoTilesVram(spr, 0x300, 0x15, i, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, 0x82000);
        SpriteInitNoTilesVramNoFunc(spr, 0x300, 0xb, 0, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, 0x42000);
        for (j = 0; j < i * 4; ++j) {
            sub_08155128(spr);
        }
        arg0->flags |= 1 << (i * 3);
        arg0->flags |= 4 << (i * 3);
        arg0->flags &= ~(2 << (i * 3));
    }
    m4aSongNumStart(SE_08D5F39C);
    arg0->unk35A = 0;
    arg0->unk35C = 0;
    arg0->unk0 = sub_08027DD0;
}

void sub_08029DE4(struct Cutscene *arg0);
void sub_08027DD0(struct Cutscene *arg0) {
    u16 i;
    if (++arg0->unk35A > 8) {
        arg0->unk35A = 0;
        if (++arg0->unk35C < 4)
            m4aSongNumStart(SE_08D5F39C);
    }
    for (i = 0; i < 4; ++i) {
        arg0->unk2E4[i][0] += arg0->unk304[i][0];
        arg0->unk2E4[i][1] += arg0->unk304[i][1];
        arg0->unk304[i][1] += 0x26;
        if (arg0->unk2E4[i][1] > 0x8bff) {
            u32 flag;
            arg0->unk2E4[i][1] = 0x8c00;
            arg0->unk304[i][1] = 0;
            flag = 4 << i * 3;
            if (arg0->flags & flag) {
                SpriteInitNoTilesVram(&arg0->unk4[i], 0x300, 4, 5, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, 0x42400);
                arg0->flags &= ~flag;
                arg0->flags |= 2 << i * 3;
                arg0->unk304[i][0] = -0x40;
            }
            else {
                arg0->unk304[i][0] += 2;
                if (arg0->unk304[i][0] > 0) {
                    arg0->unk304[i][0] = 0;
                }
            }
        }
        arg0->unk4[i].x = arg0->unk2E4[i][0] >> 8;
        arg0->unk4[i].y = arg0->unk2E4[i][1] >> 8;
    }
    if (!(arg0->flags & 0x20000)) {
        if (arg0->flags & 0x100000) {
            struct Sprite *spr = &arg0->unkF4;
            SpriteInitNoTilesVram(spr, 0x300, 0x390, 0, 0, 0xff, 0x10, 0x5, spr->x, spr->y, 0x42000);
            arg0->flags &= ~0x10000;
            arg0->flags |= 0x20000;
            SpriteInitNoTilesVram(&arg0->unk11C, 0x300, 0x391, 0, 0, 0xff, 0x10, 0xf, arg0->unkF4.x, arg0->unkF4.y, 0x42000);
            arg0->flags &= ~0x100000;
            arg0->flags |= 0x200000;
        }
    }
    if (!arg0->unk304[3][0]) {
        arg0->unk0 = sub_08029DE4;
    }
}

void sub_0802A1B4(struct Cutscene *arg0);
void sub_0802801C(struct Cutscene *arg0) {
    struct Sprite *spr = &arg0->unkF4;
    SpriteInitNoTilesVram(spr, 0x300, 0x390, 0xa, 0, 0xff, 0x10, 5, spr->x, spr->y, 0x42000);
    arg0->flags &= ~0x30000;
    SpriteInitNoTilesVram(&arg0->unk11C, 0x300, 0x391, 0xa, 0, 0xff, 0x10, 0xf, arg0->unkF4.x, arg0->unkF4.y, 0x42000);
    arg0->flags &= ~0x300000;
    m4aSongNumStart(SE_08D5EE04);
    arg0->unk0 = sub_0802A1B4;
}

void sub_0802A1D8(struct Cutscene *arg0);
void sub_080280DC(struct Cutscene *arg0) {
    struct Sprite *spr = &arg0->unkF4;
    SpriteInitNoTilesVram(spr, 0x300, 0x390, 0xb, 0, 0xff, 0x10, 5, spr->x, spr->y, 0x42000);
    arg0->flags &= ~0x30000;
    SpriteInitNoTilesVram(&arg0->unk11C, 0x300, 0x391, 0xb, 0, 0xff, 0x10, 0xf, arg0->unkF4.x, arg0->unkF4.y, 0x42000);
    arg0->flags &= ~0x300000;
    arg0->unk0 = sub_0802A1D8;
}

void sub_08028224(struct Cutscene *arg0);
void sub_08028194(struct Cutscene *arg0) {
    if (arg0->unk358 & 3) {
        u16 i;
        for (i = 0; i < 4; ++i) {
            arg0->unk4[i].x = (arg0->unk2E4[i][0] >> 8) + (Rand16() & 3) - 2;
        }
    }
    if (arg0->unk35A++ > 0x1e)
        arg0->unk0 = sub_08028224;
}

void sub_080282CC(struct Cutscene *arg0);
void sub_08028224(struct Cutscene *arg0) {
    u16 i;
    arg0->flags &= 0xfffff249; // Once we know the flags this should make sense
    arg0->unk4[0].unk8 &= ~0x400;
    arg0->unk4[1].unk8 |= 0x400;
    arg0->unk4[2].unk8 &= ~0x400;
    arg0->unk4[3].unk8 |= 0x400;
    for (i = 0; i < 4; ++i) {
        arg0->unk304[i][1] = (Rand16() & 0x3f) - 0x200;
    }
    m4aSongNumStart(SE_08D5FA50);
    arg0->unk0 = sub_080282CC;
}

void sub_08029DFC(struct Cutscene *arg0);
void sub_080282CC(struct Cutscene *arg0) {
    u16 i;
    for (i = 0; i < 4; ++i) {
        arg0->unk2E4[i][1] += arg0->unk304[i][1];
        arg0->unk304[i][1] += 0x26;
        if (arg0->unk2E4[i][1] > 0x8c00) {
            u32 flag;
            arg0->unk2E4[i][1] = 0x8c00;
            arg0->unk304[i][1] = 0;
            flag = 4 << i * 3;
            if (!(arg0->flags & flag)) {
                struct Sprite *spr = &arg0->unk4[i];
                u32 a = spr->unk8 >> 0xa & 1;
                SpriteInitNoTilesVramNoFunc(spr, 0x300, 0, 0, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, 0x42000);
                if (a) {
                    spr->unk8 |= 0x400;
                }
                arg0->flags &= ~(2 << i * 3);
                arg0->flags |= flag;
            }
        }
        arg0->unk4[i].x = arg0->unk2E4[i][0] >> 8;
        arg0->unk4[i].y = arg0->unk2E4[i][1] >> 8;
    }
    if ((arg0->flags & 0x924) == 0x924) {
        arg0->unk0 = sub_08029DFC;
    }
}

void sub_0802A25C(struct Cutscene *arg0);
void sub_080283F8(struct Cutscene *arg0) {
    SpriteInitNoTilesVramNoFunc(&arg0->unk4[0], 0x300, 0xa, 3, 0, 0xff, 0x10, 0, arg0->unk2E4[0][0] >> 8, arg0->unk2E4[0][1] >> 8, 0x42000);
    arg0->flags &= ~0x10;
    SpriteInitNoTilesVramNoFunc(&arg0->unk4[1], 0x300, 0xa, 3, 0, 0xff, 0x10, 1, arg0->unk2E4[1][0] >> 8, arg0->unk2E4[1][1] >> 8, 0x42400);
    arg0->flags &= ~0x80;
    SpriteInitNoTilesVramNoFunc(&arg0->unk4[2], 0x300, 0, 0, 0, 0xff, 0x10, 2, arg0->unk2E4[2][0] >> 8, arg0->unk2E4[2][1] >> 8, 0x42400);
    SpriteInitNoTilesVramNoFunc(&arg0->unk4[3], 0x300, 0, 0, 0, 0xff, 0x10, 3, arg0->unk2E4[3][0] >> 8, arg0->unk2E4[3][1] >> 8, 0x42000);
    m4aSongNumStart(SE_08D5FA78);
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A25C;
}

void sub_0802A284(struct Cutscene *arg0);
void sub_08028528(struct Cutscene *arg0) {
    u16 i;
    for (i = 0; i < 4; ++i) {
        SpriteInitNoTilesVramNoFunc(&arg0->unk4[i], 0x300, 0, 0, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, 0x42000);
        arg0->flags &= ~(2 << i * 3);
        arg0->flags |= 4 << i * 3;
    }
    arg0->unk4[0].unk8 |= 0x400;
    arg0->unk4[1].unk8 &= ~0x400;
    arg0->unk4[2].unk8 |= 0x400;
    arg0->unk4[3].unk8 &= ~0x400;
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A284;
}

void sub_0802A2AC(struct Cutscene *arg0);
void sub_08028608(struct Cutscene *arg0) {
    SpriteInitNoTilesVramNoFunc(&arg0->unk4[2], 0x300, 0xa, 3, 0, 0xff, 0x10, 2, arg0->unk2E4[2][0] >> 8, arg0->unk2E4[2][1] >> 8, 0x42400);
    arg0->flags &= ~0x10;
    SpriteInitNoTilesVramNoFunc(&arg0->unk4[3], 0x300, 0xa, 3, 0, 0xff, 0x10, 3, arg0->unk2E4[3][0] >> 8, arg0->unk2E4[3][1] >> 8, 0x42000);
    arg0->flags &= ~0x80;
    m4aSongNumStart(SE_08D5FA78);
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A2AC;
}

void sub_08028758(struct Cutscene *arg0);
void sub_080286C4(struct Cutscene *arg0) {
    u16 i;
    for (i = 0; i < 4; ++i) {
        SpriteInitNoTilesVramNoFunc(&arg0->unk4[i], 0x300, 0x49, 1, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, 0x42000);
        arg0->flags &= ~(6 << i * 3);
    }
    arg0->unk0 = sub_08028758;
}

void sub_08028808(struct Cutscene *arg0);
void sub_08028758(struct Cutscene *arg0) {
    if (arg0->flags & 2) {
        u16 i;
        for (i = 0; i < 4; ++i) {
            SpriteInitNoTilesVramNoFunc(&arg0->unk4[i], 0x300, 0x49, 0, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, 0x42000);
            arg0->flags &= ~(2 << i * 3);
            arg0->flags |= 4 << i * 3;
        }
        arg0->unk0 = sub_08028808;
    }
}

void sub_080288D0(struct Cutscene *arg0);
void sub_08028808(struct Cutscene *arg0) {
    arg0->unk314[0] = 0xc800;
    arg0->unk314[1] = -0x1400;
    arg0->unk31C = 0x10000;
    arg0->unk320[0] = -0x1000;
    arg0->unk320[1] = 0x800;
    arg0->unk324 = 0;
    SpriteInitNoTilesVram(&arg0->unk144, 0x300, 0x2de, 0, 0, 0xff, 0x10, 0xe, arg0->unk314[0] >> 8, arg0->unk314[1] >> 8, 0x2000);
    arg0->flags |= 0x400000;
    m4aSongNumStart(SE_08D5F114);
    arg0->unk362 = 0;
    arg0->unk363 = 0;
    arg0->unk35A = 0;
    arg0->unk0 = sub_080288D0;
}

extern const s32 gUnk_082EB384[][3];
void sub_08029E14(struct Cutscene *arg0);
void sub_080288D0(struct Cutscene *arg0) {
    u16 i;
    s32 array[8][3];
    u32 *b;
    u8 eight = 8;
    memcpy(array, gUnk_082EB384, sizeof(array));
    arg0->unk320[0] += array[arg0->unk362][0];
    arg0->unk320[1] += array[arg0->unk362][1];
    arg0->unk314[0] += arg0->unk320[0];
    arg0->unk314[1] += arg0->unk320[1];
    arg0->unk144.x = arg0->unk314[0] >> 8;
    arg0->unk144.y = arg0->unk314[1] >> 8;
    for (i = 0; i < 4; ++i) {
        b = &arg0->unk4[i].unk8;
        if (arg0->unk314[0] < arg0->unk2E4[i][0]) {
            *b |= 0x400;
        }
        else {
            *b &= ~0x400;
        }
    }
    if (++arg0->unk363 >= array[arg0->unk362][2]) {
        arg0->unk363 = 0;
        if (++arg0->unk362 >= eight) {
            arg0->unk320[0] = 0;
            arg0->unk320[1] = 0;
            arg0->unk314[0] = (arg0->unk2E4[0][0] + arg0->unk2E4[1][0]) >> 1;
            arg0->unk314[1] = 0x6c00;
            arg0->unk0 = sub_08029E14;
        }
    }
}

void sub_08028AA8(struct Cutscene *arg0);
void sub_08028A1C(struct Cutscene *arg0) {
    u16 i;
    for (i = 0; i < 4; ++i) {
        struct Sprite *spr = &arg0->unk4[i];
        SpriteInitNoTilesVramNoFunc(spr, 0x300, 0x49, 2, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, spr->unk8);
        arg0->flags &= ~(6 << i * 3);
    }
    arg0->unk0 = sub_08028AA8;
}

void sub_08029E2C(struct Cutscene *arg0);
void sub_08028AA8(struct Cutscene *arg0) {
    if (arg0->flags & 2) {
        u16 i;
        for (i = 0; i < 4; ++i) {
            struct Sprite *spr = &arg0->unk4[i];
            SpriteInitNoTilesVramNoFunc(spr, 0x300, 0, 0, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, spr->unk8);
            arg0->flags &= ~(2 << i * 3);
            arg0->flags |= 4 << i * 3;
        }
        arg0->unk0 = sub_08029E2C;
    }
}

void sub_08028C94(struct Cutscene *arg0);
void sub_08028B5C(struct Cutscene *arg0) {
    u16 i;
    u32 a;

    for (i = 0; i < 4; ++i) {
        struct Sprite *spr = &arg0->unk4[i];

        SpriteInitNoTilesVramNoFunc(spr, 0x300, 4, 0, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, 0x42000);
        a = 0x42000;
        switch (i) {
        case 0:
            spr->unk8 = a;
            arg0->unk304[i][0] = 0x40;
            arg0->unk304[i][1] = -0x400;
            break;
        case 1:
            spr->unk8 = a | 0x400;
            arg0->unk304[i][0] = -0x40;
            arg0->unk304[i][1] = -0x400;
            break;
        case 2:
            spr->unk8 = a | 0x400;
            arg0->unk304[i][0] = -0x80;
            arg0->unk304[i][1] = -0x400;
            break;
        case 3:
            spr->unk8 = a;
            arg0->unk304[i][0] = 0x80;
            arg0->unk304[i][1] = -0x400;
            break;
        }
        arg0->flags &= ~(0x10 << i * 3);
    }
    m4aSongNumStart(SE_08D5FAA4);
    arg0->unk0 = sub_08028C94;
}

void sub_08028D40(struct Cutscene *arg0);
void sub_08028C94(struct Cutscene *arg0) {
    u16 i;
    bool32 a = FALSE;
    for (i = 0; i < 4; ++i) {
        arg0->unk304[i][1] += 0x26;
        if (arg0->unk304[i][1] >= 0) {
            arg0->unk304[i][1] = 0;
            a = TRUE;
        }
        arg0->unk2E4[i][0] += arg0->unk304[i][0];
        arg0->unk2E4[i][1] += arg0->unk304[i][1];
        arg0->unk4[i].x = arg0->unk2E4[i][0] >> 8;
        arg0->unk4[i].y = arg0->unk2E4[i][1] >> 8;
    }
    if (a) {
        arg0->unk0 = sub_08028D40;
    }
}

struct Unk_080299B4* sub_08029B14(struct Cutscene *arg0, u16 arg1, u16 arg2, s32 arg3, s32 arg4, s32 arg5, u16 arg6, u16 arg7, u16 arg8);
void sub_08029E44(struct Cutscene *arg0);
void sub_08028D40(struct Cutscene *arg0) {
    u16 i;
    for (i = 0; i < 4; ++i) {
        struct Sprite *spr = &arg0->unk4[i];
        arg0->unk2E4[i][0] = arg0->unk314[0];
        arg0->unk2E4[i][1] = arg0->unk314[1];
        SpriteInitNoTilesVram(spr, 0x300, 0x2D, i, 0, 0xff, 0x10, i, arg0->unk2E4[i][0] >> 8, arg0->unk2E4[i][1] >> 8, 0x42000);
        arg0->flags &= ~(0x10 << i * 3);
    }
    SpriteInitNoTilesVram(&arg0->unk144, 0x300, 0x2DE, 0, 0, 0xff, 0x10, 0xe, arg0->unk314[0] >> 8, arg0->unk314[1] >> 8, 0x2000);
    arg0->flags |= 0x400000;
    m4aSongNumStart(SE_KIRBY_STAR_DESTROY);
    sub_08029B14(arg0, 0x292, 0, arg0->unk16C.tilesVram, arg0->unk314[0], arg0->unk314[1], 0, 0, 1);
    arg0->unk0 = sub_08029E44;
}

void sub_08028F10(struct Cutscene* arg0);
void sub_08028E78(struct Cutscene* arg0) {
    u16 i;
    arg0->unk314[1] += 0x28;
    if (arg0->unk314[1] > 0x73ff) {
        m4aSongNumStart(SE_08D5F350);
        arg0->unk0 = sub_08028F10;
    }
    arg0->unk144.x = arg0->unk314[0] >> 8;
    arg0->unk144.y = arg0->unk314[1] >> 8;
    for (i = 0; i < 4; ++i) {
        arg0->unk2E4[i][0] = arg0->unk314[0];
        arg0->unk2E4[i][1] = arg0->unk314[1];
        arg0->unk4[i].x = arg0->unk2E4[i][0] >> 8;
        arg0->unk4[i].y = arg0->unk2E4[i][1] >> 8;
    }
}

void sub_08028FFC(struct Cutscene *arg0);
void sub_08028F10(struct Cutscene *arg0) {
    u16 i;
    arg0->unk314[0] += arg0->unk320[0];
    arg0->unk314[1] += arg0->unk320[1];
    if (arg0->unk314[0] <= 0x95FF) {
        arg0->unk320[0] += 0xc;
    }
    else {
        arg0->unk362 = 0;
        arg0->unk363 = 0;
        arg0->unk0 = sub_08028FFC;
    }
    arg0->unk320[1] -= 3;
    arg0->unk144.x = arg0->unk314[0] >> 8;
    arg0->unk144.y = arg0->unk314[1] >> 8;
    for (i = 0; i < 4; ++i) {
        arg0->unk2E4[i][0] = arg0->unk314[0];
        arg0->unk2E4[i][1] = arg0->unk314[1];
        arg0->unk4[i].x = arg0->unk2E4[i][0] >> 8;
        arg0->unk4[i].y = arg0->unk2E4[i][1] >> 8;
    }
}

extern const s32 gUnk_082EB3E4[][3];
void sub_08029E5C(struct Cutscene *arg0);
void sub_08028FFC(struct Cutscene *arg0) {
    u16 i;
    s32 array[8][3];
    u8 eight = 8;

    memcpy(array, gUnk_082EB3E4, sizeof(array));
    arg0->unk320[0] += array[arg0->unk362][0];
    arg0->unk320[1] += array[arg0->unk362][1];
    arg0->unk314[0] += arg0->unk320[0];
    arg0->unk314[1] += arg0->unk320[1];
    arg0->unk144.x = arg0->unk314[0] >> 8;
    arg0->unk144.y = arg0->unk314[1] >> 8;
    if (++arg0->unk363 >= array[arg0->unk362][2]) {
        arg0->unk363 = 0;
        if (++arg0->unk362 >= eight) {
            arg0->unk320[0] = 0;
            arg0->unk320[1] = 0;
            arg0->unk0 = sub_08029E5C;
        }
    }
    for (i = 0; i < 4; ++i) {
        arg0->unk2E4[i][0] = arg0->unk314[0];
        arg0->unk2E4[i][1] = arg0->unk314[1];
        arg0->unk4[i].x = arg0->unk2E4[i][0] >> 8;
        arg0->unk4[i].y = arg0->unk2E4[i][1] >> 8;
    }
    if (arg0->unk314[1] < -0x2000) {
        arg0->unk0 = sub_08029E5C;
    }
}

extern const struct Object11_8 *gUnk_082EB2B4;
void sub_080294B0(struct Cutscene *arg0);
void sub_08029144(struct Cutscene *arg0) {
    const u16 *palette;
    u8 paletteOffset;
    u16 paletteSize;
    const u16 *const *tmp;
    const struct RoomTiledBG *bg;
    u16 i;
    const u16 *tilemap;
    u16 height;
    u16 *vram;
    struct Sprite *spr;

    gDispCnt |= DISPCNT_BG2_ON;
    paletteOffset = gUnk_082EB2B4->unk0 >> 8;
    paletteSize = gUnk_082EB2B4->unk0 >> 0x10;
    tmp = gUnk_082EB2B4->unk4;
    palette = tmp[arg0->unk35E] + 1;
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(palette, paletteOffset + 0x60, paletteSize);
    }
    else {
        DmaCopy16(3, palette, gBgPalette + 0x60 + paletteOffset, paletteSize * sizeof(u16));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    CpuCopy16(gBgPalette, (u16 *)0x5000000, sizeof(gBgPalette));
    bg = gRoomTiledBGs[gRoomProps[0x38E].backgroundIdx];
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgCntRegs[2] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(30) | BGCNT_TXT256x256 | BGCNT_16COLOR;
    LZ77UnCompVram(bg->tileset, (u16 *)0x06004000);
    tilemap = bg->tilemap;
    height = bg->height;
    vram = (u16 *)0x0600F000;
    for (i = 0; i < 0x14; ++i) {
        CpuCopy16(tilemap, vram, 0x1E * sizeof(u16));
        tilemap += bg->width;
        vram += 0x20;
    }

    spr = &arg0->unk144;
    arg0->unk314[0] = 0x7800;
    arg0->unk314[1] = 0xbe00;
    arg0->unk31C = 0x10000;
    arg0->unk320[0] = -0x300;
    arg0->unk320[1] = -0x1a0;
    arg0->unk324 = -0x180;
    SpriteInitNoTilesVram(spr, 0x300, 0x39F, 0, 0, 0xff, 0x10, 0xE, arg0->unk314[0] >> 8, arg0->unk314[1] >> 8, 0x2023);

    spr = &arg0->unkF4;
    arg0->flags |= 0xc00000;
    SpriteInitNoTilesVram(spr, 0x300, 0x39E, 2, 0, 0xff, 0x10, 5, 0, 0, 0x82000);

    arg0->unk33C = 0x7800;
    arg0->unk340 = 0xc800;
    arg0->unk344 = 0x10000;
    arg0->unk348 = 0x300;
    arg0->unk34A = -0x1a0;
    arg0->unk34C = -0x180;
    SpriteInitNoTilesVram(spr, 0x300, 0x39E, 0, 0, 0xff, 0x10, 5, arg0->unk33C >> 8, arg0->unk340 >> 8, 0x42022);

    spr = &arg0->unkA4;
    arg0->flags &= ~0x10000;
    arg0->flags |= 0x68000;
    arg0->unk328 = 0x7800;
    arg0->unk32C = 0x5000;
    arg0->unk330 = 0x6000;
    arg0->unk338 = -0x20;
    SpriteInitNoTilesVram(spr, 0x300, 0x39D, 5, 0, 0xff, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);

    spr = &arg0->unkCC;
    SpriteInitNoTilesVram(spr, 0x300, 0x39D, 4, 0, 0xff, 0x10, 4, arg0->unk328 >> 8, arg0->unk32C >> 8, 0x2020);

    arg0->flags &= ~0x2000;
    arg0->flags |= 0x5000;
    m4aSongNumStart(SE_08D5F028);
    arg0->unk35A = 0;
    arg0->flags |= 0x1000000;
    arg0->unk0 = sub_080294B0;
}

void sub_08029E74(struct Cutscene *arg0);
void sub_080294B0(struct Cutscene *arg0) {
    arg0->unk330 += arg0->unk338;
    if (arg0->unk330 < 0) {
        arg0->unk330 = 0;
    }

    if (arg0->unk35A > 0x78) {
        arg0->unk314[0] += arg0->unk320[0];
        arg0->unk314[1] += arg0->unk320[1];
        arg0->unk31C += arg0->unk324;
        arg0->unk320[0] += 9;
        arg0->unk320[1] += 6;
        arg0->unk324 += 4;
        if (arg0->unk320[0] > 0) {
            arg0->unk320[0] = 0;
        }

        if (arg0->unk320[1] > 0) {
            arg0->unk320[1] = 0;
        }

        if (arg0->unk324 > -0x80) {
            arg0->unk324 = -0x80;
        }

        if (arg0->unk31C < 0) {
            arg0->unk31C = 0;
        }
    }

    arg0->unk33C += arg0->unk348;
    arg0->unk340 += arg0->unk34A;
    arg0->unk344 += arg0->unk34C;
    arg0->unk348 -= 9;
    arg0->unk34A += 5;
    arg0->unk34C += 4;

    if (arg0->unk348 < 0) {
        arg0->unk348 = 0;
    }

    if (arg0->unk34A > 0) {
        arg0->unk34A = 0;
    }

    if (arg0->unk34C > -0x80) {
        arg0->unk34C = -0x80;
    }

    if (arg0->unk344 < 0) {
        arg0->unk344 = 0;
    }
    if (arg0->unk35A == 0x64) {
        m4aSongNumStart(SE_08D5FD28);
    }
    if (arg0->unk35A++ > 0x12C) {
        arg0->unk0 = sub_08029E74;
    }
}

void sub_08029618(struct Cutscene *arg0) {
    const u16 *tilemap;
    gDispCnt = DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBldRegs.bldCnt = BLDCNT_EFFECT_NONE;
    gBldRegs.bldY = 0;
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gBgPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    CpuCopy32(&arg0->unk214, gRgbMap, sizeof(gRgbMap));
    gUnk_03000008 = TRUE;
    TasksDestroyInPriorityRange(0, 0xFFFF);
    gUnk_03003A04 = gUnk_03003790;
    gUnk_030068B0 = 0;
    gUnk_03006078 = gUnk_030039A4;
    if (++gUnk_03000554 > 2) {
        gUnk_03000554 = 0;
    }
    CreateTitleScreen();
}

extern void sub_08029804(struct Unk_080296EC *arg0);
void sub_080296EC(struct Unk_080296EC *arg0) {
    if (!(arg0->cs->flags & 0x20000000)) {
        struct Background *bg;
        u16 id;
        gDispCnt |= DISPCNT_BG0_ON;
        gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG2;
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0x10);
        bg = &arg0->bg;
        id = arg0->unk48[arg0->unk52][0];
        gBgScrollRegs[0][0] = 0;
        gBgScrollRegs[0][1] = 0;
        gBgCntRegs[0] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(3) | BGCNT_SCREENBASE(29) | BGCNT_16COLOR | BGCNT_TXT256x256;

        BgInit(bg, (u32)BG_SCREEN_ADDR(24), 0, (u32)BG_SCREEN_ADDR(29), 0, 0, id, 0, 0, 0, 0xa, 0x1e, 0xa, 0, 0, 0, 0x8, 0, 0, 0x7FFF, 0x7FFF);
        LZ77UnCompVram((gUnk_082D7850[id])->tileset, (u16 *)bg->tilesVram);
        CpuFill32(0, (u16 *)(bg->tilesVram + TILE_SIZE_4BPP * 0xFF), TILE_SIZE_4BPP);
        CpuFill16(0xff, (u16 *)(bg->tilemapVram), BG_SCREEN_SIZE);
        sub_08153060(bg);
        arg0->unk50 = 0;
        arg0->cs->flags |= 0x20000000;
        arg0->unk0 = sub_08029804;
    }
}

void sub_0802A3D0(struct Unk_080296EC *arg0);
void sub_08029804(struct Unk_080296EC *arg0) {
    if (++arg0->unk50 > 0xf) {
        gBldRegs.bldCnt = BLDCNT_EFFECT_NONE;
        gBldRegs.bldAlpha = 0x10;
        arg0->cs->flags &= ~0x20000000;
        arg0->unk0 = sub_0802A3D0;
    }
    else {
        gBldRegs.bldAlpha = BLDALPHA_BLEND2(arg0->unk50, 0x10 - arg0->unk50);
    }
}

void sub_0802A468(struct Unk_080296EC *arg0);
void sub_0802985C(struct Unk_080296EC *arg0) {
    if (++arg0->unk50 > 0xf) {
        gDispCnt &= ~DISPCNT_BG0_ON;
        gBldRegs.bldCnt = BLDCNT_EFFECT_NONE;
        gBldRegs.bldAlpha = 0x1000;
        arg0->cs->flags &= ~0x20000000;
        arg0->unk0 = sub_0802A468;
    }
    else {
        gBldRegs.bldAlpha = BLDALPHA_BLEND2(0x10 - arg0->unk50, arg0->unk50);
    }
}

void sub_0802A4F0(struct Unk_080298C8 *arg0);
void sub_080298C8(struct Unk_080298C8 *arg0) {
    struct Sprite *spr1, *spr2;
    arg0->cs->flags |= 0x20000000;
    gBldRegs.bldCnt = BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BD | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    spr1 = &arg0->cs->unkA4;
    spr2 = &arg0->cs->unkCC;
    SpriteInitNoTilesVramNoFunc(spr1, 0x300, 0x39D, 0, 0, 0xff, 0x10, 4, arg0->cs->unk328 >> 8, arg0->cs->unk32C >> 8, 0x2020);
    SpriteInitNoTilesVramNoFunc(spr2, 0x300, 0x39D, 1, 0, 0xff, 0x10, 4, arg0->cs->unk328 >> 8, arg0->cs->unk32C >> 8, 0x2020);
    arg0->cs->flags &= ~0x6000;
    m4aSongNumStart(SE_08D5ECFC);
    arg0->unkA = 0;
    arg0->unk0 = sub_0802A4F0;
}


void sub_08029A88(void);
struct Unk_080299B4* sub_080299B4(struct Cutscene *arg0, u16 arg1, u16 arg2, s32 arg3, s32 arg4, s32 arg5, u16 arg6, u16 arg7, u16 arg8) {
    struct Task *task;
    struct Unk_080299B4 *unk;

    task = TaskCreate(sub_08029A88, sizeof(struct Unk_080299B4), 0x101, TASK_USE_IWRAM, NULL);
    unk = TaskGetStructPtr(task);

    unk->cs = arg0;
    unk->unk2C = arg4;
    unk->unk30 = arg5;
    unk->unk34 = arg6;
    unk->unk36 = arg7;
    unk->unk38 = arg8;
    unk->spr.unk1B = 0xff;
    SpriteInit(&unk->spr, arg3, 0x340, arg1, arg2, 0, 0xff, 0x10, 0xf, arg4 >> 8, arg5 >> 8, 0x82000);
    unk->spr.unk8 |= 0x40000;
    return unk;
}

void sub_08029A88(void) {
    struct Unk_080299B4 *unk = TaskGetStructPtr(gCurTask), *unk2 = unk;

    unk2->unk2C += unk2->unk34;
    unk2->unk30 += unk2->unk36;

    if (unk2->unk38 != 0 && --unk2->unk38 == 0) {
        TaskDestroy(gCurTask);
    }
    else if (unk2->cs->flags & 0x10000000) {
        TaskDestroy(gCurTask);
    }
    else {
        unk2->spr.x = unk2->unk2C >> 8;
        unk2->spr.y = unk2->unk30 >> 8;
        sub_08155128(&unk2->spr);
        unk2->spr.unk1B = 0xff;
        sub_0815604C(&unk2->spr);
    }
}

void sub_08029BE4(void);
struct Unk_080299B4* sub_08029B14(struct Cutscene *arg0, u16 arg1, u16 arg2, s32 arg3, s32 arg4, s32 arg5, u16 arg6, u16 arg7, u16 arg8) {
    struct Task *task;
    struct Unk_080299B4 *unk;

    task = TaskCreate(sub_08029BE4, sizeof(struct Unk_080299B4), 0x101, TASK_USE_IWRAM, NULL);
    unk = TaskGetStructPtr(task);

    unk->cs = arg0;
    unk->unk2C = arg4;
    unk->unk30 = arg5;
    unk->unk34 = arg6;
    unk->unk36 = arg7;
    unk->unk38 = arg8;
    SpriteInit(&unk->spr, arg3, 0x40, arg1, arg2, 0, 0xff, 0x10, 0xf, arg4 >> 8, arg5 >> 8, 0x82000);
    unk->spr.unk8 |= 0x40000;
    return unk;
}

void sub_08029EE0(void);
void sub_08029BE4(void) {
    u32 a;
    struct Unk_080299B4 *unk = TaskGetStructPtr(gCurTask), *unk2 = unk;
    struct Sprite *spr = &unk2->spr;

    spr->x = unk2->unk2C >> 8;
    spr->y = unk2->unk30 >> 8;

    a = sub_08155128(spr);
    if (a == 0) {
        if (unk2->unk38 != 0 && --unk2->unk38 == 0) {
            gCurTask->main = sub_08029EE0;
        }
        else {
            unk2->spr.unk1B = 0xff;
        }
    }
    sub_0815604C(spr);
    unk2->unk2C += unk2->unk34;
    unk2->unk30 += unk2->unk36;
    if (spr->x < -0x40 || spr->x > 0x130 || spr->y < -0x40 || spr->y > 0xE0) {
        gCurTask->main = sub_08029EE0;
    }
    if (unk2->cs->flags & 0x10000000) {
        gCurTask->main = sub_08029EE0;
    }
}

void sub_08029EF4(struct Cutscene *arg0);
void sub_08029CB8(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_08029EF4;
}

void sub_08029F1C(struct Cutscene *arg0);
void sub_08029CD0(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_08029F1C;
}

void sub_0802A008(struct Cutscene *arg0);
void sub_08029CE8(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A008;
}

void sub_0802A030(struct Cutscene *arg0);
void sub_08029D00(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A030;
}

void sub_0802A058(struct Cutscene *arg0);
void sub_08029D18(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A058;
    sub_0802A058(arg0);
}

void sub_080273B0(struct Cutscene *arg0);
void sub_08029D38(struct Cutscene *arg0) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BD | BLDCNT_EFFECT_DARKEN;
    gBldRegs.bldY = 0;
    m4aMPlayFadeOut(&gMPlayInfo_0, 3);
    m4aMPlayFadeOut(&gMPlayInfo_1, 3);
    m4aMPlayFadeOut(&gMPlayInfo_2, 3);
    m4aMPlayFadeOut(&gMPlayInfo_3, 3);
    arg0->unk35A = 0;
    arg0->flags &= ~0x8000;
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_080273B0;
}

void sub_0802A0A8(struct Cutscene *arg0);
void sub_08029DAC(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A0A8;
    sub_0802A0A8(arg0);
}

void sub_0802A0E8(struct Cutscene *arg0);
void sub_08029DCC(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A0E8;
}

void sub_0802A18C(struct Cutscene *arg0);
void sub_08029DE4(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A18C;
}

void sub_0802A234(struct Cutscene *arg0);
void sub_08029DFC(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A234;
}

void sub_0802A2D4(struct Cutscene *arg0);
void sub_08029E14(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A2D4;
}

void sub_0802A2FC(struct Cutscene *arg0);
void sub_08029E2C(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A2FC;
}

void sub_0802A324(struct Cutscene *arg0);
void sub_08029E44(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A324;
}

void sub_0802A34C(struct Cutscene *arg0);
void sub_08029E5C(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A34C;
}

void sub_0802A394(struct Cutscene *arg0);
void sub_08029E74(struct Cutscene *arg0) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    m4aMPlayFadeOut(&gMPlayInfo_0, 3);
    m4aMPlayFadeOut(&gMPlayInfo_1, 3);
    m4aMPlayFadeOut(&gMPlayInfo_2, 3);
    m4aMPlayFadeOut(&gMPlayInfo_3, 3);
    arg0->unk35A = 0;
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_0802A394;
}

void sub_08029EE0(void) {
    TaskDestroy(gCurTask);
}

void sub_0802A610(struct Cutscene *arg0);
void sub_08029EF4(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_0802A610;
    }
}

void sub_0802A634(struct Cutscene *arg0);
void sub_08029F1C(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x3c) {
        arg0->unk0 = sub_0802A634;
    }
}

void sub_08029F44(struct Cutscene *arg0) {
    if (++arg0->unk35A > 3) {
        gBldRegs.bldY = 0x10;
        arg0->flags &= ~0x20000000;
        arg0->unk0 = sub_08026CC0;
    }
    else {
        gBldRegs.bldY = 4;
        gBldRegs.bldY *= arg0->unk35A;
    }
}

void sub_08029FAC(struct Cutscene *arg0);
void sub_08029F94(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_08029FAC;
}

void sub_08029FD4(struct Cutscene *arg0);
void sub_08029FAC(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 8) {
        arg0->unk0 = sub_08029FD4;
    }
}

void sub_08029FD4(struct Cutscene *arg0) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BD | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    arg0->unk35A = 0;
    arg0->flags |= 0x20000000;
    arg0->unk0 = sub_08026DC0;
}

void sub_0802A660(struct Cutscene *arg0);
void sub_0802A008(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 1) {
        arg0->unk0 = sub_0802A660;
    }
}

void sub_0802A69C(struct Cutscene *arg0);
void sub_0802A030(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_0802A69C;
    }
}

void sub_0802A6D4(struct Cutscene *arg0);
void sub_0802A058(struct Cutscene *arg0) {
    arg0->unk11C.y = arg0->unkF4.y = arg0->unk340 >> 8;
    if (arg0->unk35A++ > 0x1e && arg0->flags & 0x4000000) {
        arg0->unk0 = sub_0802A6D4;
    }
}

void sub_0802A6E8(struct Cutscene *arg0);
void sub_0802A0A8(struct Cutscene *arg0) {
    arg0->unk11C.y = arg0->unkF4.y = arg0->unk340 >> 8;
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_0802A6E8;
    }
}

void sub_0802A0E8(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_08027590;
    }
}

void sub_0802A110(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 5) {
        arg0->unk0 = sub_080279F4;
    }
}

void sub_0802A138(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 4) {
        arg0->unk0 = sub_08027AC0;
    }
}

void sub_0802A160(struct Cutscene *arg0) {
    arg0->flags &= ~0x110002;
    arg0->flags |= 4;
    ResetRgbMap();
    arg0->unk0 = sub_08027C80;
}

void sub_0802A18C(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 10) {
        arg0->unk0 = sub_0802801C;
    }
}

void sub_0802A1B4(struct Cutscene *arg0) {
    if (arg0->flags & 0x100000 && arg0->flags & 0x10000) {
        arg0->unk0 = sub_080280DC;
    }
}

void sub_0802A714(struct Cutscene *arg0);
void sub_0802A1D8(struct Cutscene *arg0) {
    arg0->unk340 -= 0x800;
    if (arg0->unk340 < -0x2000) {
        arg0->flags &= ~0x38000;
        arg0->flags &= ~0x380000;
        arg0->unk0 = sub_0802A714;
    }
    arg0->unk11C.y = arg0->unkF4.y = arg0->unk340 >> 8;
}

void sub_0802A234(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_080283F8;
    }
}

void sub_0802A25C(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_08028528;
    }
}

void sub_0802A284(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 5) {
        arg0->unk0 = sub_08028608;
    }
}

void sub_0802A2AC(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x3c) {
        arg0->unk0 = sub_080286C4;
    }
}

void sub_0802A2D4(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x14) {
        arg0->unk0 = sub_08028A1C;
    }
}

void sub_0802A2FC(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x3c) {
        arg0->unk0 = sub_08028B5C;
    }
}

void sub_0802A72C(struct Cutscene *arg0);
void sub_0802A324(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_0802A72C;
    }
}

void sub_0802A34C(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x1e) {
        gDispCnt &= ~(DISPCNT_BG1_ON | DISPCNT_BG2_ON);
        arg0->flags |= 0x10000000;
        arg0->unk0 = sub_08029144;
    }
}

void sub_0802A74C(struct Cutscene *arg0);
void sub_0802A394(struct Cutscene *arg0) {
    ++arg0->unk35A;
    if (arg0->unk35A > 0xf) {
        gBldRegs.bldY = 0x10;
        arg0->unk0 = sub_0802A74C;
        return;
    }
    gBldRegs.bldY = arg0->unk35A;
}

void sub_0802A3E4(struct Unk_080296EC *arg0);
void sub_0802A3D0(struct Unk_080296EC *arg0) {
    arg0->unk50 = 0;
    arg0->unk0 = sub_0802A3E4;
}

void sub_0802A430(struct Unk_080296EC *arg0);
void sub_0802A3E4(struct Unk_080296EC *arg0) {
    if (arg0->unk48[arg0->unk52][1] < arg0->unk50++ && !(arg0->cs->flags & 0x20000000)) {
        arg0->unk0 = sub_0802A430;
        sub_0802A430(arg0);
    }
}

void sub_0802A430(struct Unk_080296EC *arg0) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_EFFECT_BLEND | BLDCNT_TGT2_BG1 | BLDCNT_TGT2_BG2;
    gBldRegs.bldAlpha = 0x10;
    arg0->unk50 = 0;
    arg0->cs->flags |= 0x20000000;
    arg0->unk0 = sub_0802985C;
}

void sub_0802A47C(struct Unk_080296EC *arg0);
void sub_0802A468(struct Unk_080296EC *arg0) {
    arg0->unk50 = 0;
    arg0->unk0 = sub_0802A47C;
}

void sub_0802A49C(struct Unk_080296EC *arg0);
void sub_0802A47C(struct Unk_080296EC *arg0) {
    if (arg0->unk50++ > 0x1e) {
        arg0->unk0 = sub_0802A49C;
    }
}

void sub_0802A4CC(struct Unk_080296EC *arg0);
void sub_0802A49C(struct Unk_080296EC *arg0) {
    if (++arg0->unk52 < arg0->unk4C) {
        arg0->unk0 = sub_080296EC;
    }
    else {
        arg0->unk0 = sub_0802A4CC;
    }
}

void sub_0802A4CC(struct Unk_080296EC *arg0) {
    arg0->cs->flags |= 0x4000000;
    TaskDestroy(gCurTask);
}

void sub_0802A528(struct Unk_080298C8 *arg0);
void sub_0802A4F0(struct Unk_080298C8 *arg0) {
    if (++arg0->unkA > 3) {
        gBldRegs.bldY = 0x10;
        arg0->unk0 = sub_0802A528;
        return;
    }
    gBldRegs.bldY = 4;
    gBldRegs.bldY *= arg0->unkA;
}

void sub_0802A538(struct Unk_080298C8 *arg0);
void sub_0802A528(struct Unk_080298C8 *arg0) {
    arg0->unkA = 0;
    arg0->unk0 = sub_0802A538;
}


void sub_0802A558(struct Unk_080298C8 *arg0);
void sub_0802A538(struct Unk_080298C8 *arg0) {
    if (arg0->unkA++ > 8) {
        arg0->unk0 = sub_0802A558;
    }
}

void sub_0802A574(struct Unk_080298C8 *arg0);
void sub_0802A558(struct Unk_080298C8 *arg0) {
    gBldRegs.bldCnt = BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BD | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    arg0->unkA = 0;
    arg0->unk0 = sub_0802A574;
}


void sub_0802A5C4(struct Unk_080298C8 *arg0);
void sub_0802A574(struct Unk_080298C8 *arg0) {
    if (++arg0->unkA >= 0x20) {
        gBldRegs.bldCnt = BLDCNT_EFFECT_NONE;
        gBldRegs.bldY = 0;
        arg0->cs->flags &= ~0x20000000;
        arg0->unk0 = sub_0802A5C4;
        return;
    }
    gBldRegs.bldY = 0x10 - (arg0->unkA >> 1);
}

void sub_0802A9E8(struct Unk_080298C8 *arg0);
void sub_0802A5EC(struct Unk_080298C8 *arg0);
void sub_0802A5C4(struct Unk_080298C8 *arg0) {
    if (++arg0->unk8 < 4) {
        arg0->unk0 = sub_0802A9E8;
    }
    else {
        arg0->unk0 = sub_0802A5EC;
    }
}

void sub_0802A5EC(struct Unk_080298C8 *arg0) {
    arg0->cs->flags |= 0x8000000;
    TaskDestroy(gCurTask);
}

void sub_0802A610(struct Cutscene *arg0) {
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    arg0->unk35A = 0;
    arg0->unk0 = sub_08026B78;
}

extern const u16 gUnk_082EB2B8[][2];
struct Unk_080296EC* sub_0802A764(struct Cutscene *arg0, const u16 (*arg1)[2], s16 arg2);
extern void sub_0802A864(struct Cutscene *arg0);
void sub_0802A634(struct Cutscene *arg0) {
    sub_0802A764(arg0, &gUnk_082EB2B8[gLanguage], 1);
    arg0->unk0 = sub_0802A864;
}


extern const u16 gUnk_082EB2D0[][2];
struct Unk_080298C8* sub_0802A7EC(struct Cutscene *arg0);
void sub_0802A888(struct Cutscene *arg0);
void sub_0802A660(struct Cutscene *arg0) {
    sub_0802A764(arg0, &gUnk_082EB2D0[gLanguage], 1);
    arg0->unk2D4 = sub_0802A7EC(arg0);
    arg0->unk0 = sub_0802A888;
}

extern const u16 gUnk_082EB2E8[][2];
void sub_0802A8AC(struct Cutscene *arg0);
void sub_0802A69C(struct Cutscene *arg0) {
    m4aSongNumStart(SE_08D5ED64);
    sub_0802A764(arg0, &gUnk_082EB2E8[gLanguage], 1);
    arg0->unk0 = sub_0802A8AC;
}

void sub_0802A6D4(struct Cutscene *arg0) {
    arg0->unk0 = sub_08027350;
    sub_08027350(arg0);
}

extern const u16 gUnk_082EB300[][2];
void sub_0802A8B8(struct Cutscene *arg0);
void sub_0802A6E8(struct Cutscene *arg0) {
    sub_0802A764(arg0, &gUnk_082EB300[gLanguage], 1);
    arg0->unk0 = sub_0802A8B8;
}

void sub_0802A8DC(struct Cutscene *arg0);
void sub_0802A714(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A8DC;
}

void sub_0802A72C(struct Cutscene *arg0) {
    arg0->unk320[1] = arg0->unk320[0] = 0;
    arg0->unk0 = sub_08028E78;
}

void sub_0802A904(struct Cutscene *arg0);
void sub_0802A74C(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802A904;
}

void sub_0802A92C(void);
void sub_0802A984(struct Unk_080296EC *arg0);
struct Unk_080296EC* sub_0802A764(struct Cutscene *arg0, const u16 (*arg1)[2], s16 arg2) {
    struct Task *task;
    struct Unk_080296EC *unk;
    arg0->flags &= ~0x4000000;
    task = TaskCreate(sub_0802A92C, sizeof(struct Unk_080296EC), 0x101, TASK_USE_IWRAM, NULL);
    unk = TaskGetStructPtr(task);

    CpuFill16(0, unk, sizeof(struct Unk_080296EC));
    unk->cs = arg0;
    unk->unk48 = arg1;
    unk->unk4C = arg2;
    unk->unk0 = sub_0802A984;
    return unk;
}

void sub_0802A990(void);
void sub_0802A9DC(struct Unk_080298C8 *arg0);
struct Unk_080298C8* sub_0802A7EC(struct Cutscene *arg0) {
    struct Task *task;
    struct Unk_080298C8 *unk;

    arg0->flags &= ~0x4000000;
    task = TaskCreate(sub_0802A990, sizeof(struct Unk_080298C8), 0x101, TASK_USE_IWRAM, NULL);
    unk = TaskGetStructPtr(task);
    CpuFill16(0, unk, sizeof(struct Unk_080298C8));
    unk->cs = arg0;
    unk->unk0 = sub_0802A9DC;
    return unk;
}

void sub_0802A864(struct Cutscene *arg0) {
    if (arg0->flags & 0x4000000) {
        arg0->unk0 = sub_08026BD0;
    }
}

void sub_0802A888(struct Cutscene *arg0) {
    if (arg0->flags & 0x4000000) {
        arg0->unk0 = sub_08026EF0;
    }
}

void sub_0802AA40(struct Cutscene *arg0);
void sub_0802A8AC(struct Cutscene *arg0) {
    arg0->unk0 = sub_0802AA40;
}

void sub_0802AA58(struct Cutscene *arg0);
void sub_0802A8B8(struct Cutscene *arg0) {
    if (arg0->flags & 0x4000000) {
        arg0->unk0 = sub_0802AA58;
    }
}

void sub_0802AA78(struct Cutscene *arg0);
void sub_0802A8DC(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x3c) {
        arg0->unk0 = sub_0802AA78;
    }
}

void sub_0802A904(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_08029618;
    }
}

void sub_0802A92C(void) {
    struct Unk_080296EC *unk = TaskGetStructPtr(gCurTask);
    if (!(unk->cs->flags & 0x80000000)) {
        unk->unk0(unk);
        ++unk->unk4E;
    }
    else {
        sub_0802A4CC(unk);
    }
}

void sub_0802A984(struct Unk_080296EC *arg0) {
    arg0->unk0 = sub_080296EC;
}

void sub_0802A5EC(struct Unk_080298C8 *arg0);
void sub_0802A990(void) {
    struct Unk_080298C8 *unk = TaskGetStructPtr(gCurTask);
    if (!(unk->cs->flags & 0x80000000)) {
        unk->unk0(unk);
    }
    else {
        sub_0802A5EC(unk);
    }
}

void sub_0802A9E8(struct Unk_080298C8 *arg0);
void sub_0802A9DC(struct Unk_080298C8 *arg0) {
    arg0->unk0 = sub_0802A9E8;
}

void sub_0802A9F8(struct Unk_080298C8 *arg0);
void sub_0802A9E8(struct Unk_080298C8 *arg0) {
    arg0->unkA = 0;
    arg0->unk0 = sub_0802A9F8;
}

extern const u16 gUnk_082EB318[];
void sub_0802A9F8(struct Unk_080298C8 *arg0) {
    if (gUnk_082EB318[arg0->unk8] < arg0->unkA++ && !(arg0->cs->flags & 0x20000000)) {
        arg0->unk0 = sub_080298C8;
        sub_080298C8(arg0);
    }
}

void sub_0802AA90(struct Cutscene *arg0);
void sub_0802AA40(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802AA90;
}

void sub_0802AAB8(struct Cutscene *arg0);
void sub_0802AA58(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_0802AAB8;
    sub_0802AAB8(arg0);
}

void sub_0802AA78(struct Cutscene *arg0) {
    arg0->unk35A = 0;
    arg0->unk0 = sub_08028194;
}

void sub_0802AA90(struct Cutscene *arg0) {
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_08027208;
    }
}

void sub_0802AAB8(struct Cutscene *arg0) {
    arg0->unk11C.y = arg0->unkF4.y = arg0->unk340 >> 8;
    if (arg0->unk35A++ > 0x1e) {
        arg0->unk0 = sub_08027444;
    }
}
