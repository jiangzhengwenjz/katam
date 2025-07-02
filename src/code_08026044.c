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
    m4aSongNumStart(0x19);
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
    m4aSongNumStart(0x23d);
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
