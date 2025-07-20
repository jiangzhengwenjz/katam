#include "code_08026044.h"
#include "code_0814F274.h"
#include "malloc_vram.h"
#include "palette.h"
#include "random.h"
#include "sprite.h"
#include "trig.h"

void sub_08026940(struct Cutscene *arg0);
void sub_08026698(void);
void sub_08026610(struct Task *task);
extern u16 gUnk_03000008;
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
    gUnk_03000008 = 0;
    cs->unk0 = sub_08026940;
}

extern const u16 gUnk_082EB332[][2];
extern const u8 gUnk_082EB362[];
void sub_080299B4(struct Cutscene *arg0, u16 arg1, u16 arg2, u32 arg3, u32 arg4, u32 arg5, u16 arg6, u16 arg7, s32 arg8);
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
            Macro_08026168(sprite, arg0->unk31C, arg0->unk314, arg0->unk318, array, array2, 0x2023);
        }
        else if (!(arg0->unk358 & 0xf)) {
            u32 val;
            u16 val4;
            u32 val2, val3;
            val = (Rand16() & 0x1f);
            val4 = (Rand16() & 0xf) + 0x32;
            val2 = arg0->unk314 + ((Rand16() & 0xf) - 8) * 0x100;
            val3 = arg0->unk318 + ((Rand16() & 0xf) - 8) * 0x100;
            sub_080299B4(arg0, gUnk_082EB332[gUnk_082EB362[val]][0], gUnk_082EB332[gUnk_082EB362[val]][1], arg0->unk4[9].tilesVram,
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
                arg0->unk4[4].unk1B = 0xff;
                arg0->unk4[5].unk1B = 0xff;
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
extern u16 gUnk_03000008;
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
                cs->unk4[6].y += ((cs->unk350 * gSineTable[cs->unk34E]) >> 0xe);
                cs->unk4[7].y = cs->unk4[6].y;
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
    LZ77UnCompVram((gUnk_082D7850[0x2EA])->tileset, (u16 *)(bg1)->unk4);
    sub_08153060(bg1);
    bg2 = &arg0->unk1D4;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgCntRegs[2] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(30);
    BgInit(bg2, 0x6004000, 0, 0x600F000, 0, 0, 0x2EB, 0, 0, 0, 0, 0x1f, 0x15, 0, 0, 0, 0x2A, 0, 0, 0x7FFF, 0x7FFF);
    LZ77UnCompVram((gUnk_082D7850[0x2EB])->tileset, (u16 *)(bg2)->unk4);
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
    const struct LevelInfo_1A0 *bg;
    const u16 *src;
    u16 *dst;
    u16 i;
    gDispCnt &= ~(DISPCNT_BG1_ON | DISPCNT_BG2_ON);
    gDispCnt |= DISPCNT_BG2_ON;
    bg = gBackgrounds[gRoomProps[0x38E].backgroundIdx];
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
            arg0->unk2D4[4] = 4;
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
    LZ77UnCompVram(gUnk_082D7850[0x2EC]->tileset, (u16 *)bg->unk4);
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
    LZ77UnCompVram(gUnk_082D7850[0x2ED]->tileset, (u16 *)bg->unk4);
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
            LoadBgPaletteWithTransformation(gBgPalette, 0, sizeof(gBgPalette) / 2);
        }
        else {
            DmaCopy16(3, gBgPalette, gBgPalette, sizeof(gBgPalette));
            gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        }
        if (gMainFlags & MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE) {
            LoadObjPaletteWithTransformation(gObjPalette, 0, sizeof(gObjPalette) / 2);
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
                spr->unk1B = 0xff;
                spr->unk14 = 0x300; 
                spr->animId = 0; 
                spr->variant = 0; 
                spr->unk16 = 0; 
                spr->unk1B = 0xff; 
                spr->unk1C = 0x10; 
                spr->palId = i; 
                spr->x = arg0->unk2E4[i][0] >> 8;
                spr->y = arg0->unk2E4[i][1] >> 8; 
                spr->unk8 = 0x42000; 
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
    arg0->unk314 = 0xc800;
    arg0->unk318 = -0x1400;
    arg0->unk31C = 0x10000;
    arg0->unk320 = 0xf000;
    arg0->unk322 = 0x800;
    arg0->unk324 = 0;
    SpriteInitNoTilesVram(&arg0->unk144, 0x300, 0x2de, 0, 0, 0xff, 0x10, 0xe, arg0->unk314 >> 8, arg0->unk318 >> 8, 0x2000);
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
    arg0->unk320 += array[arg0->unk362][0];
    arg0->unk322 += array[arg0->unk362][1];
    arg0->unk314 += arg0->unk320;
    arg0->unk318 += arg0->unk322;
    arg0->unk144.x = arg0->unk314 >> 8;
    arg0->unk144.y = arg0->unk318 >> 8;
    for (i = 0; i < 4; ++i) {
        b = &arg0->unk4[i].unk8;
        if (arg0->unk314 < arg0->unk2E4[i][0]) {
            *b |= 0x400;
        }
        else {
            *b &= ~0x400;
        }
    }
    if (++arg0->unk363 >= array[arg0->unk362][2]) {
        arg0->unk363 = 0;
        if (++arg0->unk362 >= eight) {
            arg0->unk320 = 0;
            arg0->unk322 = 0;
            arg0->unk314 = (arg0->unk2E4[0][0] + arg0->unk2E4[1][0]) >> 1;
            arg0->unk318 = 0x6c00;
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
