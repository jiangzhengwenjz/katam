#include "global.h"
#include "gba/m4a.h"
#include "data.h"
#include "sprite.h"
#include "functions.h"
#include "main.h"
#include "trig.h"
#include "palette.h"
#include "task.h"
#include <string.h>

s32 sub_08153D78(struct Sprite *sprite) {
    if (sprite->unk1B != sprite->variant || sprite->unk18 != sprite->animId) {
        sprite->unk1B = sprite->variant;
        sprite->unk18 = sprite->animId;
        sprite->animCursor = 0;
        sprite->unk16 = 0;
        sprite->unk8 &= ~0x4000;
    }
    if (sprite->unk8 & 0x4000) return 0;
    if (sprite->unk16 > 0)
        sprite->unk16 -= 0x10 * sprite->unk1C;
    else {
        s32 ret;
        union AnimCmd current, next, newCursor;
        const union AnimCmd *base;

        base = gSpriteTables->anims[sprite->animId];
        next = base[sprite->variant];
        for (current.words = &next.words[sprite->animCursor];
            // for whateverr command, cmdId is always the first field
            current.getTiles->cmdId < 0;
            current.words = &next.words[sprite->animCursor]) {
            ret = gUnk_08D5FDE4[~current.getTiles->cmdId](current, sprite);
            if (ret != 1) {
                if (ret != -1) return ret;
                base = gSpriteTables->anims[sprite->animId];
                newCursor = base[sprite->variant];
                sprite->animCursor = 0;
                next = newCursor;
            }
        }
        sprite->unk16 = (current.showFrame->delay << 8) + sprite->unk16 - 0x10 * sprite->unk1C;
        sprite->unk4 = current.showFrame->index;
        sprite->unk8 |= 0x4000000;
        sprite->animCursor += sizeof(struct AnimCmd_ShowFrame) / 4;
    }
    return 1;
}

s32 sub_08153E6C(struct Sprite *sprite, s32 r6) {
    s32 ret;
    union AnimCmd current, next, newCursor;
    const union AnimCmd *base;
    s32 r3, sb;
    s32 (*const *cmds)(union AnimCmd, struct Sprite *);

    r6 = (u16)r6;
    r3 = 0;
    sb = 0;
    sprite->unk1B = sprite->variant;
    sprite->unk18 = sprite->animId;
    sprite->animCursor = 0;
    sprite->unk16 = 0;
    sprite->unk8 &= ~0x4000;

    base = gSpriteTables->anims[sprite->animId];
    next = base[sprite->variant];
    while (r6 >= 0) {
        for (current.words = &next.words[sprite->animCursor];
            // for whateverr command, cmdId is always the first field
            current.getTiles->cmdId < 0;
            current.words = &next.words[sprite->animCursor]) {
            cmds = gUnk_08D5FDE4;
            if (current.jumpBack->cmdId == -3)
                sb = r3;
            ret = cmds[~current.getTiles->cmdId](current, sprite);
            if (ret != 1) {
                if (ret != -1) return ret;
                base = gSpriteTables->anims[sprite->animId];
                newCursor = base[sprite->variant];
                sprite->animCursor = 0;
                next = newCursor;
            }
        }
        sprite->unk16 = current.showFrame->delay << 8;
        r6 -= current.showFrame->delay;
        sprite->unk16 = -(r6 << 8);
        if (sb && r6 > 0) {
            r6 = Mod(r6, sb);
        } else {
            r3 += current.showFrame->delay;
        }
        sprite->unk4 = current.showFrame->index;
        sprite->unk8 |= 0x4000000;
        sprite->animCursor += sizeof(struct AnimCmd_ShowFrame) / 4;
    }
    return 1;
}

s32 AnimCmd_GetTiles_2(union AnimCmd cursor, struct Sprite *sprite) {
    const void *src;
    u16 size;

    sprite->animCursor += sizeof(struct AnimCmd_GetTiles) / 4;
    if (!(sprite->unk8 & 0x80000)) {
        if (cursor.getTiles->tileIndex < 0) {
            src = gSpriteTables->tiles8bpp + 0x40 * cursor.getTiles->tileIndex;
            size = 0x40 * cursor.getTiles->numTilesToCopy;
        } else {
            src = gSpriteTables->tiles4bpp + 0x20 * cursor.getTiles->tileIndex;
            size = 0x20 * cursor.getTiles->numTilesToCopy;
        }
        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)src;
        gUnk_03002EC0[gUnk_030039A4].unk4 = sprite->tilesVram;
        gUnk_03002EC0[gUnk_030039A4].unk8 = size;
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
    }
    return 1;
}

s32 AnimCmd_GetPalette_2(union AnimCmd cursor, struct Sprite *sprite) {
    s32 idx;

    sprite->animCursor += sizeof(struct AnimCmd_GetPalette) / 4;
    if (!(sprite->unk8 & 0x40000)) {
        idx = cursor.getPalette->palId;
        if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
            LoadBgPaletteWithTransformation(gSpriteTables->palette + 0x10 * idx,
                0x10 * sprite->palId + cursor.getPalette->insertOffset,
                cursor.getPalette->numColors);
        } else {
            DmaCopy16(3,
                gSpriteTables->palette + 0x10 * idx,
                &gBgPalette[0x10 * sprite->palId + cursor.getPalette->insertOffset],
                cursor.getPalette->numColors * sizeof(u16));
            gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        }
    }
    return 1;
}

s32 AnimCmd_6_2(union AnimCmd cursor, struct Sprite *sprite) {
    u8 idx = cursor._6->unk4.unk0 & 0xF;

    sprite->animCursor += sizeof(struct AnimCmd_6) / 4;
    DmaCopy32(3, &cursor._6->unk4, &sprite->unk20[idx], sizeof(struct Sprite_20));
    if (!cursor._6->unk4.unk4
        && !cursor._6->unk4.unk5
        && !cursor._6->unk4.unk6
        && !cursor._6->unk4.unk7) {
        sprite->unk20[idx].unk0 = -1;
    } else {
        if (sprite->unk8 & 0x800)
            XorSwap(sprite->unk20[idx].unk5, sprite->unk20[idx].unk7);
        if (sprite->unk8 & 0x400)
            XorSwap(sprite->unk20[idx].unk4, sprite->unk20[idx].unk6);
    }
    return 1;
}

void sub_08154148(struct Sprite *sprite) {
    u32 bg;
    union SpriteAttributes spriteAttrs;
    u8 i;
    u32 sp00;

    gUnk_03006030[gUnk_030068B0] = sprite;
    ++gUnk_030068B0;
    if (sprite->unk4 != -1) {
        if (!(sprite->unk4 >> 28))
            spriteAttrs.sub = &gSpriteTables->attrs[sprite->animId].sub[sprite->unk4];
        else
            spriteAttrs.full = &gSpriteTables->attrs[sprite->animId].full[sprite->unk4];
        bg = (sprite->unk8 & 0x18000) >> 15;
        if (bg <= 1 || (gDispCnt & 3) != DISPCNT_MODE_1) {
            gBgScrollRegs[bg][0] = Mod(spriteAttrs.sub->offsetX - sprite->x, 16);
            gBgScrollRegs[bg][1] = Mod(spriteAttrs.sub->offsetY - sprite->y, 8);
        }
        gBgCntRegs[bg] &= ~3;
        gBgCntRegs[bg] |= (sprite->unk8 & 0x3000) >> 12;
        if ((sprite->unk4 >> 28) == 1 && sprite->unk8 & 0x4000000) {
            const s32 *sl;
            u16 ip, r3;
            const u8 *r2_, *r2, *r4;
            s32 tilesVram;
            u32 r1;

            sprite->unk8 &= ~0x4000000;
            r1 = spriteAttrs.full->unkC & 0xFFFFFF;
            sp00 = spriteAttrs.full->unkC >> 24;                
            sl = gSpriteTables->unk18 + r1;
            if (sl[0] >= 0) {
                ip = 0x20;
                r2_ = gSpriteTables->tiles4bpp;
            } else {
                ip = 0x40;
                r2_ = gSpriteTables->tiles8bpp;
            }

            r3 = ip;
            r2 = r2_ + sl++[0] * ip;
            tilesVram = sprite->tilesVram;
            for (i = 1; i < sp00; ++i) {
                r4 = r2_ + sl++[0] * ip;
                if (r2 + r3 == r4)
                    r3 += ip;
                else {
                    gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
                    gUnk_03002EC0[gUnk_030039A4].unk4 = tilesVram;
                    gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
                    gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
                    tilesVram += r3;
                    r3 = ip;
                    r2 = r4;
                }
            }
            gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
            gUnk_03002EC0[gUnk_030039A4].unk4 = tilesVram;
            gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
            gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
        }
    }
}

extern u8 gUnk_08D60814[8];
extern u8 gUnk_03002E82[];
extern u8 gUnk_03002E83[];

/* The variant of AnimCmd_SetIdAndVariant used by the gUnk_08D6081C command
 * table stores the variant at offset 6 instead of 8. */
struct AnimCmd_SetIdAndVariant_B {
    /* 0x00 */ s32 cmdId;
    /* 0x04 */ u16 animId;
    /* 0x06 */ u16 variant;
}; /* size = 8 */

struct Unk_08154EA8 {
    u8 filler0[0xC];
    /* 0x0C */ u32 unkC;
    /* 0x10 */ u32 unk10;
    /* 0x14 */ u16 unk14;
    /* 0x16 */ u16 unk16;
    u8 filler18[0xA];
    /* 0x22 */ u16 unk22;
    /* 0x24 */ u16 unk24;
    /* 0x26 */ u16 unk26;
    /* 0x28 */ u16 unk28;
    u8 filler2A[0xE];
    /* 0x38 */ u32 unk38;
    /* 0x3C */ u16 unk3C;
};

/* Scratch area shared by the sub_08155604/sub_081558A0/sub_08155C38
 * OAM-affine positioning functions. */
struct AffineScratch {
    /* 0x00 */ u16 m[4];    // local rotation/scale matrix
    /* 0x08 */ u16 trig[4]; // cos, sin, xscale, yscale
    /* 0x10 */ s32 x;
    /* 0x14 */ s32 y;
    /* 0x18 */ u16 gm[4];   // global/base matrix
    /* 0x20 */ u16 idx;
};

#ifndef NONMATCHING
NAKED u32 sub_0815436C(void) {
    asm(".include \"asm/nonmatching/sub_0815436C.inc\"");
}
#else
u32 sub_0815436C(void) {
    u16 oam[3];
    u8 sp08;
    struct Sprite *sprite;
    u32 charBase;
    u32 screenBase;
    u32 pair;
    u32 shift = 5;
    u32 colStep;
    u32 colOff;
    u32 iNext;
    u32 jNext;
    u8 i;
    u8 j;
    u8 aj;
    s32 aRowStrideS;
    u8 cols;
    u32 jrow;
    u32 stride;
    u32 src;
    u32 w;
    u32 rowStrideU;
    s32 rowStrideS;
    s32 x, y;
    u32 rows2;

    if (!(REG_DISPSTAT & 1))
        return 0;

    if (gUnk_030068B0 != 0) {
        for (i = 0; i < gUnk_030068B0; i = iNext) {
            union SpriteAttributes attr;
            u32 frame;
            u32 bg;
            u16 bgcnt;
            u16 tile;

            iNext = i + 1;
            sprite = gUnk_03006030[i];
            frame = sprite->unk4;
            if (frame == -1)
                continue;

            if (!(frame >> 28))
                attr.sub = &gSpriteTables->attrs[sprite->animId].sub[frame];
            else
                attr.full = &gSpriteTables->attrs[sprite->animId].full[frame];

            bg = (sprite->unk8 & 0x18000) >> 15;
            bgcnt = gBgCntRegs[bg];
            charBase = ((bgcnt & 0xC) << 12) + 0x6000000;
            screenBase = ((bgcnt & 0x1F00) << 3) + 0x6000000;
            if (bgcnt & 0x80)
                shift = 6;

            if (bg > 1 && (gDispCnt & 3) != 0) {
                /* affine (8bpp, byte map entries) */
                u32 h;
                u32 ajrow;

                stride = (0x100000u << (bgcnt >> 14)) >> 16;
                src = (uintptr_t)gSpriteTables->oamData[sprite->animId];
                src += (attr.sub->bitfield & 0x3FFF) * 3 * 2;
                sp08 = 0;
                iNext = i + 1;
                if (sp08 >= attr.sub->numSubframes)
                    continue;
                rowStrideU = (u8)stride;
                do {
                    u8 *dst;

                    DmaCopy16(3, src, oam, 6);
                    src += 6;
                    w = (u8)(gUnk_08D6084C[((oam[0] & 0xC000) >> 12) | ((oam[1] & 0xC000) >> 14)][0]) >> 3;
                    h = (u8)(gUnk_08D6084C[((oam[0] & 0xC000) >> 12) | ((oam[1] & 0xC000) >> 14)][1]) >> 3;
                    y = sprite->y - attr.sub->offsetY;
                    x = sprite->x - attr.sub->offsetX;
                    x &= -16;
                    dst = (u8 *)(screenBase + ((y + (oam[0] & 0xFF)) >> 3) * stride);
                    tile = (((sprite->tilesVram - charBase) >> shift) + (oam[2] & 0x3FF)) & 0xFF;
                    ajrow = h;
                    h = (u8)(h - 1);
                    jNext = sp08 + 1;
                    if (ajrow != 0) {
                        aRowStrideS = (s8)rowStrideU;
                        do {
                            u8 *p = dst + ((x + (oam[1] & 0x1FF)) >> 3);
                            cols = (u8)(w - 1);
                            rows2 = h - 1;
                            if (w != 0) {
                                do {
                                    if (!((uintptr_t)p & 1)) {
                                        pair = tile;
                                    } else {
                                        pair = (u16)(pair | (tile << 8));
                                        *(u16 *)p = pair;
                                    }
                                    tile = (u16)(tile + 1);
                                    p++;
                                    aj = cols;
                                    cols = aj - 1;
                                } while (aj != 0);
                            }
                            if ((uintptr_t)p & 1) {
                                *(u16 *)p = (*(u16 *)p & 0xFF00) | pair;
                            }
                            dst += aRowStrideS;
                            ajrow = h;
                            h = (u8)rows2;
                        } while (ajrow != 0);
                    }
                    sp08 = jNext;
                } while (sp08 < attr.sub->numSubframes);
            } else {
                /* text (16-bit map entries) */
                u32 h;
                s16 xoam, yoam;

                stride = 0x20;
                if ((u8)((gBgCntRegs[bg] >> 14) - 2) <= 1)
                    stride = 0x40;
                src = (uintptr_t)gSpriteTables->oamData[sprite->animId];
                src += (attr.sub->bitfield & 0x3FFF) * 3 * 2;
                sp08 = 0;
                iNext = i + 1;
                if (sp08 >= attr.sub->numSubframes)
                    continue;
                do {
                    u8 *dst;

                    DmaCopy16(3, src, oam, 6);
                    src += 6;
                    w = (u8)(gUnk_08D6084C[((oam[0] & 0xC000) >> 12) | ((oam[1] & 0xC000) >> 14)][0]) >> 3;
                    h = (u8)(gUnk_08D6084C[((oam[0] & 0xC000) >> 12) | ((oam[1] & 0xC000) >> 14)][1]) >> 3;
                    xoam = oam[1] & 0x1FF;
                    yoam = oam[0] & 0xFF;
                    oam[2] = (sprite->palId << 12) + oam[2];
                    if (((sprite->unk8 >> 11) & 1) != (attr.sub->bitfield >> 15)) {
                        oam[1] ^= 0x2000;
                        if (attr.sub->bitfield & 0x4000)
                            y = sprite->y + attr.sub->offsetY - 8;
                        else
                            y = sprite->y + (attr.sub->height - attr.sub->offsetY) - 8;
                        yoam = -yoam;
                    } else {
                        y = sprite->y - attr.sub->offsetY;
                    }
                    if (((sprite->unk8 >> 10) ^ (attr.sub->bitfield >> 14)) & 1) {
                        oam[1] ^= 0x1000;
                        if (attr.sub->bitfield & 0x4000)
                            x = sprite->x + attr.sub->offsetX - 8;
                        else
                            x = sprite->x + (attr.sub->width - attr.sub->offsetX) - 8;
                        xoam = -xoam;
                    } else {
                        x = sprite->x - attr.sub->offsetX;
                    }
                    x &= -16;
                    y &= -8;
                    colStep = 2;
                    if (oam[1] & 0x1000)
                        colStep = 0xFE;
                    {
                        u32 t;
                        if (oam[1] & 0x2000)
                            t = -(stride << 25);
                        else
                            t = stride << 25;
                        rowStrideU = t >> 24;
                    }
                    dst = (u8 *)(screenBase + ((y + (s16)yoam) >> 2) * stride);
                    tile = ((sprite->tilesVram - charBase) >> shift) + (oam[2] & 0xF3FF) + ((oam[1] & 0x3000) >> 2);
                    j = h;
                    h = (u8)(h - 1);
                    jNext = sp08 + 1;
                    if (j != 0) {
                        colOff = ((s16)xoam + x) >> 2;
                        rowStrideS = (s8)rowStrideU;
                        do {
                            u8 *p = dst + colOff;
                            cols = (u8)(w - 1);
                            rows2 = h - 1;
                            if (w != 0) {
                                s32 step = (s8)colStep;
                                do {
                                    *(u16 *)p = tile++;
                                    p += step;
                                    j = cols;
                                    cols = j - 1;
                                } while (j != 0);
                            }
                            dst += rowStrideS;
                            jrow = h;
                            h = (u8)rows2;
                        } while (jrow != 0);
                    }
                    sp08 = jNext;
                } while (sp08 < attr.sub->numSubframes);
            }
        }
        gUnk_030068B0 = 0;
    }
    return 1;
}
#endif

void sub_081548A8(u16 angle, s16 sx, s16 sy, s16 x0, s16 y0, s16 cx, s16 cy, struct BgAffineReg *out) {
    s32 ncx, ncy;

    out->pa = (( gSineTable[angle + 0x100] >> 6) * (s16)Div(0x10000, sx)) >> 8;
    out->pb = (( gSineTable[angle        ] >> 6) * (s16)Div(0x10000, sx)) >> 8;
    out->pc = ((-gSineTable[angle        ] >> 6) * (s16)Div(0x10000, sy)) >> 8;
    out->pd = (( gSineTable[angle + 0x100] >> 6) * (s16)Div(0x10000, sy)) >> 8;
    ncx = -(cx * 0x10000);
    ncy = -(cy * 0x10000);
    out->x = (s16)out->pa * (ncx >> 16) + (s16)out->pb * (ncy >> 16) + x0 * 0x100;
    out->y = (s16)out->pc * (ncx >> 16) + (s16)out->pd * (ncy >> 16) + y0 * 0x100;
}

void sub_081549D4(struct Sprite *sprite, s16 *p, struct BgAffineReg *out) {
    union SpriteAttributes attr;

    if (!(sprite->unk4 >> 28))
        attr.sub = &gSpriteTables->attrs[sprite->animId].sub[sprite->unk4];
    else
        attr.full = &gSpriteTables->attrs[sprite->animId].full[sprite->unk4];

    sprite->x = attr.sub->offsetX;
    sprite->y = attr.sub->offsetY;

    out->pa = (( gSineTable[(u16)p[0] + 0x100] >> 6) * (s16)Div(0x10000, p[1])) >> 8;
    out->pb = (( gSineTable[(u16)p[0]        ] >> 6) * (s16)Div(0x10000, p[1])) >> 8;
    out->pc = ((-gSineTable[(u16)p[0]        ] >> 6) * (s16)Div(0x10000, p[2])) >> 8;
    out->pd = (( gSineTable[(u16)p[0] + 0x100] >> 6) * (s16)Div(0x10000, p[2])) >> 8;
    out->x = (s16)out->pa * -p[3] + (s16)out->pb * -p[4] + sprite->x * 0x100;
    out->y = (s16)out->pc * -p[3] + (s16)out->pd * -p[4] + sprite->y * 0x100;
}

#ifndef NONMATCHING
NAKED u32 sub_08154B14(void) {
    asm(".include \"asm/nonmatching/sub_08154B14.inc\"");
}
#else
u32 sub_08154B14(void) {
    u8 i;
    u32 iNext;

    for (i = 0; i < 4; i = iNext) {
        u8 *p1;
        u8 *b80;
        u8 *p3;
        s32 off;
        u8 max;
        u8 rowMin;
        u8 colMin;
        u32 screenBase;
        s32 stride;
        u8 row;
        u16 bgcnt;

        b80 = gUnk_03002E80;
        p1 = &gUnk_03002E80[1] + i * 4;
        p3 = &gUnk_03002E83[i * 4];
        max = *p3;
        off = i * 4;
        if (*p1 == max && b80[off] == gUnk_03002E82[off]) {
            iNext = i + 1;
            continue;
        }
        bgcnt = gBgCntRegs[i];
        screenBase = 0x6000000 + ((bgcnt & 0x1F00) << 3);
        rowMin = *p1;
        colMin = gUnk_03002E80[off];
        if (i > 1 && (gDispCnt & 3) != 0) {
            screenBase += colMin;
            stride = (0x100000u << (bgcnt >> 14)) >> 16;
            if (max == 0xFF) {
                DmaFill16(3, gUnk_030060A0.parts[i] | (gUnk_030060A0.parts[i] << 8),
                    screenBase + rowMin * stride,
                    (*p3 - rowMin) * stride);
                iNext = i + 1;
            } else {
                u8 *pv = &gUnk_030060A0.parts[i];
                u8 *p2 = &gUnk_03002E82[off];

                iNext = i + 1;
                for (row = rowMin; row <= *p3; row++) {
                    DmaFill16(3, *pv | (*pv << 8),
                        screenBase + row * stride,
                        (*p2 - colMin + 1) >> 1);
                }
            }
        } else {
            screenBase += colMin * 2;
            stride = 0x20;
            if ((u8)((gBgCntRegs[i] >> 14) - 2) <= 1)
                stride = 0x40;
            if (gUnk_03002E82[off] == 0xFF) {
                DmaFill16(3, gUnk_030060A0.parts[i],
                    screenBase + rowMin * (stride * 2),
                    (gUnk_03002E83[off] - rowMin) * stride << 1);
                iNext = i + 1;
            } else {
                u8 *p3c = &gUnk_03002E83[off];

                iNext = i + 1;
                if (rowMin <= *p3c) {
                    u8 *pv = &gUnk_030060A0.parts[i];
                    u8 *p2 = &gUnk_03002E82[off];

                    stride *= 2;
                    for (row = rowMin; row <= *p3c; row++) {
                        DmaFill16(3, *pv,
                            screenBase + row * stride,
                            (*p2 - colMin + 1) * 2);
                    }
                }
            }
        }
        b80 = gUnk_03002E80;
        DmaFill32(3, 0, b80 + off, 4);
    }
    return 1;
}
#endif

u32 sub_08154D78(void *dest, void *glyphs, u16 x, u16 y, u8 bg, u8 *str, u8 pal) {
    u8 i;
    s32 mapBits;
    u16 *mp;
    u32 mapBase;
    u16 bgcnt;
    u32 charBase;
    u16 *map;
    u16 index;

    i = 0;
    bgcnt = gBgCntRegs[bg];
    charBase = ((bgcnt & 0xC) << 12) + 0x6000000;
    mapBits = bgcnt & 0x1F00;
    do {
        map = (u16 *)(({ (mapBits << 3) + 0x6000000; }) + y * 0x40 + x * 2);
        while (str[i] != 0) {
            void *tile = dest + i * 0x20;
            CpuFastSet(glyphs + str[i] * 0x20, tile, 8);
            index = ((uintptr_t)tile - charBase) >> 5;
            mp = &map[i];
            *mp = index | (pal << 12);
            i++;
        }
        return i << 5;
    } while (0);
}

s32 sub_08154E18(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor -= cursor.jumpBack->offset;
    return 1;
}

s32 sub_08154E24(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->unk8 |= 0x4000;
    return 0;
}

s32 sub_08154E34(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_PlaySoundEffect) / 4;
    m4aSongNumStart(cursor.playSoundEffect->songId);
    return 1;
}

s32 sub_08154E48(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_TranslateSprite) / 4;
    sprite->x += cursor.translateSprite->x;
    sprite->y += cursor.translateSprite->y;
    return 1;
}

s32 sub_08154E64(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_8) / 4;
    return 1;
}

s32 sub_08154E70(union AnimCmd cursor, struct Sprite *sprite) {
    const struct AnimCmd_SetIdAndVariant_B *cmd = (const void *)cursor.words;

    sprite->animCursor += sizeof(struct AnimCmd_SetIdAndVariant_B) / 4;
    sprite->animId = cmd->animId;
    sprite->unk1B = 0xFF;
    sprite->variant = cmd->variant;
    return -1;
}

s32 sub_08154E88(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_10) / 4;
    return (intptr_t)cursor._10; // TODO: fix no return
}

s32 sub_08154E90(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_SetPriority) / 4;
    return 1;
}

s32 sub_08154E9C(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_12) / 4;
    return 1;
}

void sub_08154EA8(struct Unk_08154EA8 *p, u16 a, u16 b, u8 unitSize, u16 dstStride, u16 e) {
    s32 i;
    s32 q, rem;
    s32 chunk;
    s32 dmaSize;

    for (i = 0; i < p->unk26; i += chunk) {
        s32 rowsLeft;
        s32 colsLeft;
        s32 j;

        q = Div(a + i, p->unk14);
        rem = (a + i) - q * p->unk14;
        rowsLeft = p->unk28;
        colsLeft = p->unk26 - i;
        chunk = p->unk14 - rem;
        if (chunk > colsLeft)
            chunk = colsLeft;
        dmaSize = chunk * unitSize;
        for (j = 0; j < p->unk28; ) {
            s32 q2, rem2, n;
            s32 entrySize;
            const u8 *src;
            u8 *dst;

            q2 = Div(b + j, p->unk16);
            rem2 = (b + j) - q2 * p->unk16;
            n = p->unk16 - rem2;
            entrySize = 2;
            src = (const u8 *)p->unk10 +
                ((*(u16 *)(p->unk38 + q2 * (p->unk3C * entrySize) + q * entrySize) * p->unk14 * p->unk16 +
                  (rem2 * p->unk14 + rem)) * unitSize);
            dst = (u8 *)p->unkC + p->unk24 + dstStride * j + p->unk22 + i * unitSize;
            j += n;
            if (n > rowsLeft)
                n = rowsLeft;
            rowsLeft -= n;
            while (n-- != 0) {
                DmaCopy16(3, src, dst, dmaSize);
                dst += dstStride;
                src += e * unitSize;
            }
        }
    }
}

s16 sub_08154FE8(s16 x, s16 y) {
    u8 t[8];
    u8 quad = 0;
    s16 ratio;

    memcpy(t, gUnk_08D60814, sizeof(gUnk_08D60814));
    if ((x | y) == 0)
        return -1;
    if (x <= 0) {
        x = -x;
        quad = 4;
    }
    if (y <= 0) {
        y = -y;
        quad += 2;
    }
    if (x >= y) {
        y <<= 7;
        if (x == 0)
            ratio = y;
        else
            ratio = y / x;
    } else {
        quad++;
        x <<= 7;
        if (y == 0)
            ratio = x;
        else
            ratio = x / y;
    }
    if (t[quad] & 1)
        ratio = 0x80 - ratio;
    ratio += t[quad] << 7;
    return ratio & 0x3FF;
}

void sub_081550A8(u8 *buf, u16 v) {
    u8 i;

    for (i = 0; i < 4; i++) {
        u32 d = (v & 0xF000) >> 12;
        if (d > 9)
            buf[i] = d + 0x57;
        else
            buf[i] = d + 0x30;
        v <<= 4;
    }
    buf[i] = 0;
}

u16 sub_081550E8(u16 v) {
    u16 out = 0;
    u8 i;

    for (i = 0; i < 4; i++) {
        s32 q = Div(v, 10);
        u8 rem = v - (q * 10);
        v = q;
        out |= rem << (i * 4);
    }
    return out;
}

u32 sub_08155128(struct Sprite *sprite) {
    if (sprite->unk1B != sprite->variant || sprite->unk18 != sprite->animId) {
        sprite->unk1B = sprite->variant;
        sprite->unk18 = sprite->animId;
        sprite->animCursor = 0;
        sprite->unk16 = 0;
        sprite->unk8 &= ~0x4000;
    }
    if (sprite->unk8 & 0x4000) return 0;
    if (sprite->unk16 > 0)
        sprite->unk16 -= 0x10 * sprite->unk1C;
    else {
        s32 ret;
        union AnimCmd current, next, newCursor;
        const union AnimCmd *base;

        base = gSpriteTables->anims[sprite->animId];
        next = base[sprite->variant];
        for (current.words = &next.words[sprite->animCursor];
            // for whateverr command, cmdId is always the first field
            current.getTiles->cmdId < 0;
            current.words = &next.words[sprite->animCursor]) {
            ret = gUnk_08D6081C[~current.getTiles->cmdId](current, sprite);
            if (ret != 1) {
                if (ret != -1) return ret;
                base = gSpriteTables->anims[sprite->animId];
                newCursor = base[sprite->variant];
                sprite->animCursor = 0;
                next = newCursor;
            }
        }
        sprite->unk16 = (current.showFrame->delay << 8) + sprite->unk16 - 0x10 * sprite->unk1C;
        sprite->unk4 = current.showFrame->index;
        sprite->unk8 |= 0x4000000;
        sprite->animCursor += sizeof(struct AnimCmd_ShowFrame) / 4;
    }
    return 1;
}

s32 sub_0815521C(struct Sprite *sprite, u16 frames) {
    s32 ret;
    union AnimCmd current, next, newCursor;
    const union AnimCmd *base;
    s32 r3, sl, r6;
    s32 queueModified;
    u8 savedQueuePos;

    r6 = frames;
    r3 = 0;
    sl = 0;
    queueModified = 0;
    savedQueuePos = gUnk_030039A4;
    sprite->unk1B = sprite->variant;
    sprite->unk18 = sprite->animId;
    sprite->animCursor = 0;
    sprite->unk16 = 0;
    sprite->unk8 &= ~0x4000;

    base = gSpriteTables->anims[sprite->animId];
    next = base[sprite->variant];
    while (r6 >= 0) {
        for (current.words = &next.words[sprite->animCursor];
            current.getTiles->cmdId < 0;
            current.words = &next.words[sprite->animCursor]) {
            if (current.jumpBack->cmdId == -3)
                sl = r3;
            ret = gUnk_08D6081C[~current.getTiles->cmdId](current, sprite);
            if (savedQueuePos != gUnk_030039A4) {
                gUnk_030039A4 = savedQueuePos;
                queueModified = 1;
            }
            if (ret != 1) {
                if (ret == -1) {
                    base = gSpriteTables->anims[sprite->animId];
                    newCursor = base[sprite->variant];
                    sprite->animCursor = 0;
                    next = newCursor;
                } else {
                    if (queueModified)
                        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
                    return ret;
                }
            }
        }
        sprite->unk16 = current.showFrame->delay << 8;
        r6 -= current.showFrame->delay;
        sprite->unk16 = -(r6 << 8);
        if (sl && r6 > 0) {
            r6 = Mod(r6, sl);
        } else {
            r3 += current.showFrame->delay;
        }
        sprite->unk4 = current.showFrame->index;
        sprite->unk8 |= 0x4000000;
        sprite->animCursor += sizeof(struct AnimCmd_ShowFrame) / 4;
    }
    if (queueModified)
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
    return 1;
}

s32 sub_08155370(union AnimCmd cursor, struct Sprite *sprite) {
    const void *src;
    u16 size;

    sprite->animCursor += sizeof(struct AnimCmd_GetTiles) / 4;
    if (!(sprite->unk8 & 0x80000)) {
        if (cursor.getTiles->tileIndex < 0) {
            src = gSpriteTables->tiles8bpp + 0x40 * cursor.getTiles->tileIndex;
            size = 0x40 * cursor.getTiles->numTilesToCopy;
        } else {
            src = gSpriteTables->tiles4bpp + 0x20 * cursor.getTiles->tileIndex;
            size = 0x20 * cursor.getTiles->numTilesToCopy;
        }
        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)src;
        gUnk_03002EC0[gUnk_030039A4].unk4 = sprite->tilesVram;
        gUnk_03002EC0[gUnk_030039A4].unk8 = size;
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
    }
    return 1;
}

s32 sub_08155400(union AnimCmd cursor, struct Sprite *sprite) {
    s32 idx;

    sprite->animCursor += sizeof(struct AnimCmd_GetPalette) / 4;
    if (!(sprite->unk8 & 0x40000)) {
        idx = cursor.getPalette->palId;
        if (gMainFlags & MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE) {
            LoadObjPaletteWithTransformation(gSpriteTables->palette + 0x10 * idx,
                0x10 * sprite->palId + cursor.getPalette->insertOffset,
                cursor.getPalette->numColors);
        } else {
            DmaCopy16(3,
                gSpriteTables->palette + 0x10 * idx,
                &gObjPalette[0x10 * sprite->palId + cursor.getPalette->insertOffset],
                cursor.getPalette->numColors * sizeof(u16));
            gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
        }
    }
    return 1;
}

s32 sub_08155494(union AnimCmd cursor, struct Sprite *sprite) {
    u8 idx = cursor._6->unk4.unk0 & 0xF;

    sprite->animCursor += sizeof(struct AnimCmd_6) / 4;
    DmaCopy32(3, &cursor._6->unk4, &sprite->unk20[idx], sizeof(struct Sprite_20));
    if (cursor.words[2] == 0) {
        sprite->unk20[idx].unk0 = -1;
    } else {
        if (sprite->unk8 & 0x800) {
            XorSwap(sprite->unk20[idx].unk5, sprite->unk20[idx].unk7);
            sprite->unk20[idx].unk5 = -sprite->unk20[idx].unk5;
            sprite->unk20[idx].unk7 = -sprite->unk20[idx].unk7;
        }
        if (sprite->unk8 & 0x400) {
            XorSwap(sprite->unk20[idx].unk4, sprite->unk20[idx].unk6);
            sprite->unk20[idx].unk4 = -sprite->unk20[idx].unk4;
            sprite->unk20[idx].unk6 = -sprite->unk20[idx].unk6;
        }
    }
    return 1;
}

void sub_08155544(u16 angle, s16 sx, s16 sy, u16 idx) {
    u16 *affine = &gOamBuffer[idx * 4].all.affineParam;
    s16 res;

    res = Div(0x10000, sx);
    affine[0]  = (( gSineTable[angle + 0x100] >> 6) * res) >> 8;
    res = Div(0x10000, sx);
    affine[4]  = (( gSineTable[angle        ] >> 6) * res) >> 8;
    res = Div(0x10000, sy);
    affine[8]  = ((-gSineTable[angle        ] >> 6) * res) >> 8;
    res = Div(0x10000, sy);
    affine[12] = (( gSineTable[angle + 0x100] >> 6) * res) >> 8;
}

#ifndef NONMATCHING
NAKED void sub_08155604(struct Sprite *sprite, s16 *p) {
    asm(".include \"asm/nonmatching/sub_08155604.inc\"");
}
#else
void sub_08155604(struct Sprite *sprite, s16 *p) {
    struct AffineScratch v;
    union SpriteAttributes attr;
    s16 *affine;
    u16 *pIdx;
    u16 *pCos, *pSin, *pSx, *pSy;
    u16 *pm1, *pm2, *pm3;
    u16 *qm1, *qm2;
    s32 scale;
    u16 *qm3;
    s32 *px, *py;
    u16 *pgm, *pgm2;
    u16 syRaw;
    s32 sxRaw;
    s32 idx;
    u16 sx2;
    s32 sy2;
    s16 res;
    u16 w, h;
    u16 w2, h2;
    u16 dx, dy;

    scale = 0x100;
    if (sprite->unk4 == -1)
        return;

    if (!(sprite->unk4 >> 28))
        attr.sub = &gSpriteTables->attrs[sprite->animId].sub[sprite->unk4];
    else
        attr.full = &gSpriteTables->attrs[sprite->animId].full[sprite->unk4];

    pIdx = &v.idx;
    *pIdx = sprite->unk8 & 0x1F;
    affine = (s16 *)((void *)gOamBuffer + 6 + *pIdx * 32);

    pCos = (u16 *)pIdx;
    pCos -= 12;
    *pCos = (u16)gSineTable[(p[0] & 0x3FF) + 0x100] << 16 >> 22;
    pSin = &v.trig[1];
    *pSin = (u16)gSineTable[p[0] & 0x3FF] << 16 >> 22;
    pSx = &v.trig[2];
    *pSx = p[1];
    pSy = &v.trig[3];
    *pSy = p[2];

    res = Div(0x10000, (s16)*pSx);
    affine[0] = ((s16)*pCos * res) >> 8;
    res = Div(0x10000, (s16)*pSx);
    affine[4] = ((s16)*pSin * res) >> 8;
    res = Div(0x10000, (s16)*pSy);
    affine[8] = (-(s16)*pSin * res) >> 8;

    res = Div(0x10000, (s16)*pSy);
    affine[12] = ((s16)*pCos * res) >> 8;

    sx2 = p[1];
    sxRaw = p[1];
    if (sxRaw < 0)
        *pSx = -sx2;
    idx = 2;
    sy2 = p[idx];
    syRaw = p[idx];
    sprite->animId = sprite->animId;
    dy = syRaw;
    if (sy2 < 0)
        *pSy = -syRaw;
    v.m[0] = ((s16)*pCos * (s16)*pSx) >> 8;
    pm1 = &v.m[1];
    *pm1 = (-(s16)*pSin * (s16)*pSx) >> 8;
    pm2 = &v.m[idx];
    *pm2 = ((s16)*pSin * (s16)*pSy) >> 8;
    pm3 = &v.m[3];
    *pm3 = ((s16)*pCos * (s16)*pSy) >> 8;

    pgm = (u16 *)&v.gm[0];
    res = scale;
    *pgm = res;
    *++pgm = 0;
    pgm2 = (u16 *)&v.gm[idx];
    *pgm2 = 0;
    *++pgm2 = 0x100;

    v.x = p[3];
    v.y = p[4];

    qm1 = pm1;
    qm2 = pm2;
    qm3 = pm3;

    if (sxRaw > 0) {
        dx = attr.sub->offsetX;
        if (1) {
        }
        w = attr.sub->width;
    } else {
        w2 = attr.sub->width;
        dx = w2 - attr.sub->offsetX;
        w = attr.sub->width;
    }
    if ((s32)(syRaw << 16) > 0) {
        dy = attr.sub->offsetY;
        h = attr.sub->height;
    } else {
        h2 = attr.sub->height;
        dy = h2 - attr.sub->offsetY;
        h = attr.sub->height;
    }

    v.x -= ((*(u16 *)&v.m[0] << 16 >> 16) * ((s16)dx - (w >> 1)) + (s16)*qm1 * ((s16)dy - (h >> 1)) + ((w >> 1) << 8)) >> 8;
    v.y -= ((s16)*qm2 * ((s16)dx - (w >> 1)) + (s16)*qm3 * ((s16)dy - (h >> 1)) + ((h >> 1) << 8)) >> 8;

    px = &v.x;
    py = &v.y;
    sprite->x = *px;
    sprite->y = *py;
}
#endif

void sub_081558A0(struct Sprite *sprite, s16 *p) {
    struct AffineScratch v;
    union SpriteAttributes attr;
    s16 *affine;
    u16 *pIdx;
    s32 cond;
    vu16 *pCos, *pSin, *pSx, *pSy;
    vu16 *pm1, *pm2;
    s16 syt;
    vu16 *pm3;
    vu16 *qm1, *qm2, *qm3;
    vs32 *px, *py;
    vu16 *pgm0, *pgm1, *pgm2, *pgm3;
    s32 sxRaw;
    s32 sx2;
    s16 sx0, sx1;
    s32 sy2;
    u16 zy;
    vu16 *pzy;
    vu16 *qSin;
    u16 w, h;
    u16 w2, h2;
    u16 dx;
    u16 *pm1b;
    u16 dy;
    u16 syA[1];

    if (sprite->unk4 == -1)
        return;

    if (!(sprite->unk4 >> 28))
        attr.sub = &gSpriteTables->attrs[sprite->animId].sub[sprite->unk4];
    else
        attr.full = &gSpriteTables->attrs[sprite->animId].full[sprite->unk4];

    pIdx = &v.idx;
    *pIdx = 0x1F & sprite->unk8;
    affine = (s16 *)((void *)gOamBuffer + 6 + *pIdx * 32);

    pCos = (vu16 *)pIdx;
    pCos -= 12;
    *pCos = (u16)gSineTable[(((u16)p[0] + gUnk_03002544) & 0x3FF) + 0x100] << 16 >> 22;
    pSin = pCos + 1;
    *pSin = (u16)gSineTable[((u16)p[0] + gUnk_03002544) & 0x3FF] << 16 >> 22;
    sx0 = p[1];
    pSx = pSin + 1;
    *pSx = (sx0 * gUnk_030023F0) >> 8;
    pSy = pSx + 1;
    *pSy = (p[2] * gUnk_030068B4) >> 8;

    affine[0] = ((s16)*pCos * (s16)Div(0x10000, (s16)*pSx)) >> 8;
    affine[4] = ((s16)*pSin * (s16)Div(0x10000, (s16)*pSx)) >> 8;
    affine[8] = (-(s16)*pSin * (s16)Div(0x10000, (s16)*pSy)) >> 8;
    affine[12] = ((s16)*pCos * (s16)Div(0x10000, (s16)*pSy)) >> 8;

    sxRaw = p[1];
    if (sxRaw < 0) {
        sx1 = p[1];
        *pSx = (-sx1 * gUnk_030023F0) >> 8;
    }
    syt = p[2];
    sy2 = syt;
    pzy = (vu16 *)&gUnk_030068B4;
    zy = gUnk_030068B4;
    syA[0] = p[2];
    if (sy2 < 0) {
        *pSy = (-p[2] * zy) >> 8;
        zy = gUnk_030068B4;
    }

    v.m[0] = ((s16)*pCos * (s16)*pSx) >> 8;
    pm1 = (pm1b = &v.m[1]);
    qSin = pSin;
    *pm1 = (-(s16)*qSin * (s16)*pSx) >> 8;
    pm2 = &v.m[2];
    *pm2 = ((s16)*pSin * (s16)*pSy) >> 8;
    pm3 = &v.m[3];
    *pm3 = ((s16)*pCos * (s16)*pSy) >> 8;

    pgm0 = &v.gm[0];
    *pgm0 = (((u16)gSineTable[gUnk_03002544 + 0x100] << 16 >> 22) * gUnk_030023F0) >> 8;
    pgm1 = &v.gm[1];
    *pgm1 = ((-(s16)gSineTable[gUnk_03002544] >> 6) * gUnk_030023F0) >> 8;
    pgm2 = &v.gm[2];
    *pgm2 = (((u16)gSineTable[gUnk_03002544] << 16 >> 22) * zy) >> 8;
    pgm3 = &v.gm[3];
    *pgm3 = (((u16)gSineTable[gUnk_03002544 + 0x100] << 16 >> 22) * *pzy) >> 8;

    v.x = ((s16)*pgm0 * p[3] + (s16)*pgm1 * p[4] + (gUnk_0300254C << 8)) >> 8;
    v.y = ((s16)*pgm2 * p[3] + (s16)*pgm3 * p[4] + (gUnk_0300367C << 8)) >> 8;

    qm1 = pm1;
    qm2 = pm2;
    qm3 = pm3;

    sx2 = sxRaw;
    if (sx2 > 0) {
        dx = attr.sub->offsetX;
        w = attr.sub->width;
    } else {
        w2 = attr.sub->width;
        dx = w2 - attr.sub->offsetX;
        w = attr.sub->width;
    }
    if ((s32)(syA[0] << 16) > 0) {
        dy = attr.sub->offsetY;
        h = attr.sub->height;
    } else {
        h2 = attr.sub->height;
        dy = h2 - attr.sub->offsetY;
        h = attr.sub->height;
    }

    v.x -= ((*(vu16 *)&v.m[0] << 16 >> 16) * ((s16)dx - (w >> 1)) + (s16)*qm1 * ((s16)dy - (h >> 1)) + ((w >> 1) << 8)) >> 8;
    v.y -= ((s16)*qm2 * ((s16)dx - (w >> 1)) + (s16)*qm3 * ((s16)dy - (h >> 1)) + ((h >> 1) << 8)) >> 8;

    px = &v.x;
    py = &v.y;
    sprite->x = *px;
    sprite->y = *py;
}

void sub_08155C38(struct Sprite *sprite, s16 *p) {
    struct AffineScratch v;
    union SpriteAttributes attr;
    s16 *affine;
    u16 *pIdx;
    vu16 *pCos;
    s16 sxr;
    vu16 *pSin;
    u32 sxw;
    vu16 *pSx, *pSy;
    s32 sxRaw;
    vu16 *pm1, *pm2, *pm3;
    vu16 *qm1, *qm2, *qm3;
    vs32 *px, *py;
    vu16 *pgm0, *pgm1, *pgm2, *pgm3;
    u16 sx2;
    s32 sy2;
    s16 syt;
    u16 zy;
    u16 *pzy;
    u16 w, h;
    u16 w2, h2;
    u16 dx, dy;
    u16 syA[1];

    if (sprite->unk4 == -1)
        return;

    if (!(sprite->unk4 >> 28))
        attr.sub = &gSpriteTables->attrs[sprite->animId].sub[sprite->unk4];
    else
        attr.full = &gSpriteTables->attrs[sprite->animId].full[sprite->unk4];

    pIdx = &v.idx;
    *pIdx = sprite->unk8 & 0x1F;
    affine = (s16 *)((void *)gOamBuffer + 6 + *pIdx * 32);

    pCos = &v.trig[0];
    *pCos = (u16)gSineTable[(((u16)p[0] + gUnk_03002544) & 0x3FF) + 0x100] << 16 >> 22;
    pSin = &v.trig[1];
    *pSin = (u16)gSineTable[((u16)p[0] + gUnk_03002544) & 0x3FF] << 16 >> 22;
    pSx = &v.trig[2];
    *pSx = (p[1] * gUnk_030023F0) >> 8;
    pSy = &v.trig[3];
    *pSy = (p[2] * gUnk_030068B4) >> 8;

    pzy = &gUnk_030068B4;
    affine[0] = ((s16)*pCos * (s16)Div(0x10000, (s16)*pSx)) >> 8;
    affine[4] = ((s16)*pSin * (s16)Div(0x10000, (s16)*pSx)) >> 8;
    affine[8] = (-(s16)*pSin * (s16)Div(0x10000, (s16)*pSy)) >> 8;
    affine[12] = ((s16)*pCos * (s16)Div(0x10000, (s16)*pSy)) >> 8;

    sxRaw = p[1];
    if (sxRaw < 0) {
        sxr = p[1];
        *pSx = (-sxr * gUnk_030023F0) >> 8;
    }
    syt = p[2];
    sy2 = syt;
    zy = gUnk_030068B4;
    syA[0] = p[2];
    if (sy2 < 0) {
        *pSy = (-p[2] * zy) >> 8;
        pzy = &gUnk_030068B4;
        zy = gUnk_030068B4;
    }

    v.m[0] = ((s16)*pCos * (s16)*pSx) >> 8;
    pm1 = &v.m[1];
    *pm1 = (-(s16)*pSin * (s16)*pSx) >> 8;
    pm2 = &v.m[2];
    *pm2 = ((s16)*pSin * (s16)*pSy) >> 8;
    pm3 = &v.m[3];
    *pm3 = ((s16)*pCos * (s16)*pSy) >> 8;

    pgm0 = &v.gm[0];
    *pgm0 = (((((u16)gSineTable[gUnk_03002544 + 0x100] << 16 >> 22) * gUnk_030023F0) << 8 >> 16)
        * (((s16)*pSx * gUnk_030068B8) << 8 >> 16)) >> 8;
    pgm1 = &v.gm[1];
    *pgm1 = ((((-(s16)gSineTable[gUnk_03002544] >> 6) * gUnk_030023F0) << 8 >> 16)
        * (((s16)*pSx * gUnk_030068B8) << 8 >> 16)) >> 8;
    pgm2 = &v.gm[2];
    *pgm2 = (((((u16)gSineTable[gUnk_03002544] << 16 >> 22) * zy) << 8 >> 16)
        * (((s16)*pSy * gUnk_030068B8) << 8 >> 16)) >> 8;
    pgm3 = &v.gm[3];
    pzy = &gUnk_030068B4;
    px = (vs32 *)pm1;
    *pgm3 = (((((u16)gSineTable[gUnk_03002544 + 0x100] << 16 >> 22) * *pzy) << 8 >> 16)
        * (((s16)*pSy * gUnk_030068B8) << 8 >> 16)) >> 8;

    v.x = ((s16)*pgm0 * p[3] + (s16)*pgm1 * p[4] + (gUnk_0300254C << 8)) >> 8;
    v.y = ((s16)*pgm2 * p[3] + (s16)*pgm3 * p[4] + (gUnk_0300367C << 8)) >> 8;

    qm1 = (vu16 *)px;
    qm2 = pm2;
    qm3 = pm3;

    if (sxRaw > 0) {
        dx = attr.sub->offsetX;
        w = attr.sub->width;
    } else {
        w2 = attr.sub->width;
        dx = w2 - attr.sub->offsetX;
        w = attr.sub->width;
    }
    if ((s32)(syA[0] << 16) > 0) {
        dy = attr.sub->offsetY;
        h = attr.sub->height;
    } else {
        h2 = attr.sub->height;
        dy = h2 - attr.sub->offsetY;
        h = attr.sub->height;
    }

    v.x -= ((*(vu16 *)&v.m[0] << 16 >> 16) * ((s16)dx - (w >> 1)) + (s16)*qm1 * ((s16)dy - (h >> 1)) + ((w >> 1) << 8)) >> 8;
    v.y -= ((s16)*qm2 * ((s16)dx - (w >> 1)) + (s16)*qm3 * ((s16)dy - (h >> 1)) + ((h >> 1) << 8)) >> 8;

    px = &v.x;
    py = &v.y;
    sprite->x = *px;
    sprite->y = *py;
}

void sub_0815604C(struct Sprite *sprite) {
    OamData *r4;
    s32 sl, sp00, sp04, sp08;
    u8 sp0C, i;
    const u16 *sp10;
    u16 sp14 = 0;
    u32 sp18 = 0, sp1C = 0, sp20 = 0, sp24 = 0;
    u32 sp28;
    union SpriteAttributes spriteAttrs;
    u32 x1, y1;
    u32 r0, r1;

    if (sprite->unk4 != -1) {
        if (!(sprite->unk4 >> 28))
            spriteAttrs.sub = &gSpriteTables->attrs[sprite->animId].sub[sprite->unk4];
        else
            spriteAttrs.full = &gSpriteTables->attrs[sprite->animId].full[sprite->unk4];
        
        sprite->numSubframes = spriteAttrs.sub->numSubframes;
        sp00 = sprite->x;
        sl = sprite->y;
        if (sprite->unk8 & 0x20000) {
            sp00 -= gUnk_030023F4.unk0;
            sl -= gUnk_030023F4.unk2;
        }

        sp04 = spriteAttrs.sub->width;
        sp08 = spriteAttrs.sub->height;
        if (sprite->unk8 & 0x20) {
            sp14 |= 0x100;
            sp18 |= (sprite->unk8 & 0x1F) << 9;
            if (sprite->unk8 & 0x40) {
                sp00 -= spriteAttrs.sub->width >> 1;
                sl -= spriteAttrs.sub->height >> 1;
                sp04 <<= 1;
                sp08 <<= 1;
                sp14 |= 0x200;
            }
        } else {
            if (sprite->unk8 & 0x800) {
                sl -= sp08 - spriteAttrs.sub->offsetY;
            } else {
                sl -= spriteAttrs.sub->offsetY;
            }
            if (sprite->unk8 & 0x400) {
                sp00 -= sp04 - spriteAttrs.sub->offsetX;
            } else {
                sp00 -= spriteAttrs.sub->offsetX;
            }
            if (((sprite->unk8 >> 11) & 1) != (spriteAttrs.sub->bitfield >> 15))
                sp20 = 1;
            r1 = sprite->unk8;
            r1 >>= 10;
            r0 = spriteAttrs.sub->bitfield >> 14;
            if ((r0 ^ r1) & 1)
                sp24 = 1;
        }
        if (!sp04
            || (sp00 + sp04 >= 0 && sp00 <= 240 && sp08 + sl >= 0 && sl <= 160)) {
            u32 r1 = (sp1C + (sprite->palId << 12)) << 16;

            sp14 |= (sprite->unk8 & 0x180) * 8;
            sp1C = (((sprite->unk8 & 0x3000) << 14) | r1) >> 16;
            sp10 = gSpriteTables->oamData[sprite->animId];
            sprite->unk1D = gUnk_030024F0;
            for (sp0C = 0; sp0C < spriteAttrs.sub->numSubframes; ++sp0C) {
                r4 = sub_08156D84((sprite->unk14 & 0x7C0) >> 6);
                if (iwram_end == r4) return;
                DmaCopy16(3, &sp10[3 * ((spriteAttrs.sub->bitfield & 0x3FFF) + sp0C)], r4, 6);
                x1 = r4->all.attr1 & 0x1FF;
                y1 = r4->all.attr0 & 0xFF;
                r4->all.attr1 &= 0xFE00;
                r4->all.attr0 &= 0xFE00;
                if (sp20 | sp24) {
                    u32 shape = ((r4->all.attr0 & 0xC000) >> 12);
                    u32 shapeAndSize;

                    shape |= ((r4->all.attr1 & 0xC000) >> 14);
                    shapeAndSize = shape; // required for matching
                    if (sp20) {
                        r4->all.attr1 ^= 0x2000;
                        y1 = sp08 - gUnk_08D6084C[shapeAndSize][1] - y1;
                    }

                    if (sp24) {
                        r4->all.attr1 ^= 0x1000;
                        x1 = sp04 - gUnk_08D6084C[shapeAndSize][0] - x1;
                    }
                }

                r4->all.attr0 += ((sl + y1) & 0xFF);
                r4->all.attr1 += ((sp00 + x1) & 0x1FF);
                r4->all.attr0 |= sp14;
                r4->all.attr1 |= sp18;
                r4->all.attr2 |= sp1C;
                if (r4->all.attr0 & 0x2000)
                    r4->all.attr2 += r4->all.attr2 & 0x3FF;
                r4->all.attr2 += (sprite->tilesVram - 0x6010000u) >> 5;
            }

            if ((sprite->unk4 >> 28) == 1 && sprite->unk8 & 0x4000000) {
                const s32 *sl;
                u16 r8_, r3;
                const u8 *ip, *r2, *r4;
                s32 tilesVram;
                u32 r1;

                sprite->unk8 &= ~0x4000000;
                r1 = spriteAttrs.full->unkC & 0xFFFFFF;
                sp28 = spriteAttrs.full->unkC >> 24;
                sl = gSpriteTables->unk18 + r1;
                if (sl[0] >= 0) {
                    r8_ = 0x20;
                    ip = gSpriteTables->tiles4bpp;
                } else {
                    r8_ = 0x40;
                    ip = gSpriteTables->tiles8bpp;
                }

                r3 = r8_;
                r2 = ip + sl++[0] * r8_;
                tilesVram = sprite->tilesVram;
                for (i = 1; i < sp28; ++i) {
                    r4 = ip + sl++[0] * r8_;
                    if (r2 + r3 == r4)
                        r3 += r8_;
                    else {
                        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
                        gUnk_03002EC0[gUnk_030039A4].unk4 = tilesVram;
                        gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
                        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
                        tilesVram += r3;
                        r3 = r8_;
                        r2 = r4;
                    }
                }
                gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
                gUnk_03002EC0[gUnk_030039A4].unk4 = tilesVram;
                gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
                gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
            }
        }
    }
}

void sub_081564D8(struct Sprite *sprite) {
    u16 localOamBuffer[3];
    OamData *localOamBufferPtr;
    s32 sp08, sp0C;
    s32 sp10, sp14;
    u8 sp18, j;
    const u16 *sp1C;
    u16 sp20 = 0;
    u32 sp24 = 0, sp28 = 0, sp2C = 0, sp30 = 0;
    u32 sp34;
    union SpriteAttributes spriteAttrs;
    s32 x1, y1;
    s32 r7, ip;
    u32 r0, r1;

    if (sprite->unk4 != -1) {
        if (!(sprite->unk4 >> 28))
            spriteAttrs.sub = &gSpriteTables->attrs[sprite->animId].sub[sprite->unk4];
        else
            spriteAttrs.full = &gSpriteTables->attrs[sprite->animId].full[sprite->unk4];

        sprite->numSubframes = spriteAttrs.sub->numSubframes;
        sp08 = sprite->x;
        sp0C = sprite->y;
        if (sprite->unk8 & 0x20000) {
            sp08 -= gUnk_030023F4.unk0;
            sp0C -= gUnk_030023F4.unk2;
        }

        sp10 = spriteAttrs.sub->width;
        sp14 = spriteAttrs.sub->height;

        if (sprite->unk8 & 0x20) {
            sp20 |= 0x100;
            sp24 |= (sprite->unk8 & 0x1F) << 9;
            if (sprite->unk8 & 0x40) {
                sp08 -= spriteAttrs.sub->width >> 1;
                sp0C -= spriteAttrs.sub->height >> 1;
                sp10 <<= 1;
                sp14 <<= 1;
                sp20 |= 0x200;
            }
        } else {
            if (sprite->unk8 & 0x800)
                sp0C -= sp14 - spriteAttrs.sub->offsetY;
            else
                sp0C -= spriteAttrs.sub->offsetY;

            if (sprite->unk8 & 0x400)
                sp08 -= sp10 - spriteAttrs.sub->offsetX;
            else
                sp08 -= spriteAttrs.sub->offsetX;

            if (((sprite->unk8 >> 11) & 1) != (spriteAttrs.sub->bitfield >> 15))
                sp2C = 1;
            r1 = sprite->unk8;
            r1 >>= 10;
            r0 = spriteAttrs.sub->bitfield >> 14;
            if ((r0 ^ r1) & 1)
                sp30 = 1;
        }

        if (!sp10
            || (sp08 + sp10 >= 0 && sp08 <= 240 && sp0C + sp14 >= 0 && sp0C <= 160)) {
            u32 r1 = (sp28 + (sprite->palId << 12)) << 16;

            sp20 |= (sprite->unk8 & 0x180) * 8;
            sp28 = (((sprite->unk8 & 0x3000) << 14) | r1) >> 16;
            sp1C = gSpriteTables->oamData[sprite->animId];
            sprite->unk1D = gUnk_030024F0;
            for (sp18 = 0; sp18 < spriteAttrs.sub->numSubframes; ++sp18) {
                u32 shapeAndSize;

                DmaCopy16(3, &sp1C[3 * ((spriteAttrs.sub->bitfield & 0x3FFF) + sp18)], localOamBuffer, 6); // excluding affine params
                localOamBufferPtr = (OamData *)localOamBuffer;
                x1 = localOamBufferPtr->all.attr1 & 0x1FF;
                if (x1 >= 0x100)
                    x1 -= 0x200;
                y1 = localOamBufferPtr->all.attr0 & 0xFF;
                if (y1 >= 0x80)
                    y1 -= 0x100;
                localOamBufferPtr->all.attr1 &= 0xFE00;
                localOamBufferPtr->all.attr0 &= 0xFE00;
                shapeAndSize = ((localOamBufferPtr->all.attr0 & 0xC000) >> 12) | ((localOamBufferPtr->all.attr1 & 0xC000) >> 14);
                r7 = gUnk_08D6084C[shapeAndSize][1];
                ip = gUnk_08D6084C[shapeAndSize][0];
#ifndef NONMATCHING
            {
                /* localOamBufferPtr is very likely to be a real variable as the function itself is a
                 * modified (and manually optimized) version of sub_081569A0. 
                 */
                register u32 _sp2C asm("r0") = sp2C;
                register u32 _sp30 asm("r1") = sp30;

                _sp2C = sp2C;
                _sp30 = sp30;
                asm("":::"r2");
                if (_sp2C | _sp30) {
#else
                if (sp2C | sp30) {
#endif
                    if (sp2C) {
                        localOamBufferPtr->all.attr1 ^= 0x2000;
                        y1 = sp14 - r7 - y1;
                    }

                    if (sp30) {
                        localOamBufferPtr->all.attr1 ^= 0x1000;
                        x1 = sp10 - ip - x1;
                    }
                }
#ifndef NONMATCHING
            }
#endif
                if ((sp0C + y1 + r7 >= 0 && sp0C + y1 <= 160)
                    && (sp08 + x1 + ip >= 0 && sp08 + x1 <= 240)) {
                    OamData *oamDst;

                    localOamBufferPtr->all.attr0 += ((sp0C + y1) & 0xFF);
                    localOamBufferPtr->all.attr1 += ((sp08 + x1) & 0x1FF);
                    localOamBufferPtr->all.attr0 |= sp20;
                    localOamBufferPtr->all.attr1 |= sp24;
                    localOamBufferPtr->all.attr2 |= sp28;
                    if (localOamBufferPtr->all.attr0 & 0x2000)
                        localOamBufferPtr->all.attr2 += localOamBufferPtr->all.attr2 & 0x3FF;
                    localOamBufferPtr->all.attr2 += (sprite->tilesVram - 0x6010000u) >> 5;
                    oamDst = sub_08156D84((sprite->unk14 & 0x7C0) >> 6);
                    if (iwram_end == oamDst) return;
                    DmaCopy16(3, localOamBuffer, oamDst, 6);
                }
            }

            if ((sprite->unk4 >> 28) == 1 && sprite->unk8 & 0x4000000) {
                const s32 *ip;
                u16 r8, r3;
                const u8 *r2_, *r2, *r4;
                s32 tilesVram;
                u32 r1;

                sprite->unk8 &= ~0x4000000;
                r1 = spriteAttrs.full->unkC & 0xFFFFFF;
                sp34 = spriteAttrs.full->unkC >> 24;
                ip = gSpriteTables->unk18 + r1;
                if (ip[0] >= 0) {
                    r8 = 0x20;
                    r2_ = gSpriteTables->tiles4bpp;
                } else {
                    r8 = 0x40;
                    r2_ = gSpriteTables->tiles8bpp;
                }

                r3 = r8;
                r2 = r2_ + ip++[0] * r8;
                tilesVram = sprite->tilesVram;
                for (j = 1; j < sp34; ++j) {
                    r4 = r2_ + ip++[0] * r8;
                    if (r2 + r3 == r4)
                        r3 += r8;
                    else {
                        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
                        gUnk_03002EC0[gUnk_030039A4].unk4 = tilesVram;
                        gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
                        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
                        tilesVram += r3;
                        r3 = r8;
                        r2 = r4;
                    }
                }
                gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
                gUnk_03002EC0[gUnk_030039A4].unk4 = tilesVram;
                gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
                gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
            }
        }
    }
}

/* unused function */
void sub_081569A0(struct Sprite *sprite, u16 *sp08, u8 sp0C) {
    vs32 sp00, sp04;
    s32 sp10, sp14;
    u8 sp18, i;
    u32 x1, y1, sp24, sp28;
    union SpriteAttributes spriteAttrs;

    if (sprite->unk4 != -1) {
        if (!(sprite->unk4 >> 28))
            spriteAttrs.sub = &gSpriteTables->attrs[sprite->animId].sub[sprite->unk4];
        else
            spriteAttrs.full = &gSpriteTables->attrs[sprite->animId].full[sprite->unk4];

        sprite->numSubframes = spriteAttrs.sub->numSubframes;
        sp00 = sprite->x;
        sp04 = sprite->y;
        if (sprite->unk8 & 0x20000) {
            sp00 -= gUnk_030023F4.unk0;
            sp04 -= gUnk_030023F4.unk2;
        }

        sp10 = spriteAttrs.sub->width;
        sp14 = spriteAttrs.sub->height;

        if (sprite->unk8 & 0x20) {
            if (sprite->unk8 & 0x40) {
                sp00 -= spriteAttrs.sub->width >> 1;
                sp04 -= spriteAttrs.sub->height >> 1;
                sp10 <<= 1;
                sp14 <<= 1;
            }
        } else {
            u32 r1;

            if (sprite->unk8 & 0x800) {
                r1 = spriteAttrs.sub->offsetY;
                r1 = sp14 - r1;
            } else {
                r1 = spriteAttrs.sub->offsetY;
            }
            sp04 -= r1;

            if (sprite->unk8 & 0x400) {
                r1 = spriteAttrs.sub->offsetX;
                r1 = sp10 - r1;
            } else {
                r1 = spriteAttrs.sub->offsetX;
            }
            sp00 -= r1;
        }

        sp24 = sp00 - sprite->x;
        sp28 = sp04 - sprite->y;
        if (sp00 + sp10 >= 0 && sp00 <= 240
            && sp04 + sp14 >= 0 && sp04 <= 160) {
            for (sp18 = 0; sp18 < spriteAttrs.sub->numSubframes; ++sp18) {
                const u16 *r4 = gSpriteTables->oamData[sprite->animId];
                OamData *oam = sub_08156D84((sprite->unk14 & 0x7C0) >> 6);

                if (iwram_end == oam) return;
                DmaCopy16(3, &r4[3 * ((spriteAttrs.sub->bitfield & 0x3FFF) + sp18)], oam, 6); // excluding affine params
                x1 = oam->all.attr1 & 0x1FF;
                y1 = oam->all.attr0 & 0xFF;
                oam->all.attr1 &= 0xFE00;
                oam->all.attr0 &= 0xFE00;
                oam->all.attr2 += sprite->palId << 12;
                if (sprite->unk8 & 0x20) {
                    oam->all.attr0 |= 0x100;
                    if (sprite->unk8 & 0x40)
                        oam->all.attr0 |= 0x200;
                    oam->all.attr1 |= (sprite->unk8 & 0x1F) << 9;
                } else {
                    u32 shapeAndSize = ((oam->all.attr0 & 0xC000) >> 12) | ((oam->all.attr1 & 0xC000) >> 14);
                    u32 r1 = (sprite->unk8 >> 11) & 1;
                    u32 r0 = spriteAttrs.sub->bitfield >> 15;

                    if (r1 != r0) {
                        oam->all.attr1 ^= 0x2000;
                        y1 = sp14 - gUnk_08D6084C[shapeAndSize][1] - y1;
                    }

                    r1 = sprite->unk8;
                    r1 >>= 10;
                    r0 = spriteAttrs.sub->bitfield >> 14;
                    if ((r0 ^ r1) & 1) {
                        oam->all.attr1 ^= 0x1000;
                        x1 = sp10 - gUnk_08D6084C[shapeAndSize][0] - x1;
                    }
                }

                oam->all.attr0 |= (sprite->unk8 & 0x180) * 8;
                oam->all.attr2 |= (sprite->unk8 & 0x3000) >> 2;
                oam->all.attr0 += (sp04 + y1) & 0xFF;
                oam->all.attr1 += (sp00 + x1) & 0x1FF;
                if (oam->all.attr0 & 0x2000)
                    oam->all.attr2 += oam->all.attr2 & 0x3FF;
                oam->all.attr2 += (sprite->tilesVram - 0x6010000u) >> 5;
#ifndef NONMATCHING
                asm("":::"r8");
#endif
                for (i = 0; i < sp0C; ++i) {
                    OamData *r5 = sub_08156D84((sprite->unk14 & 0x7C0) >> 6);

                    if (iwram_end == oam) return;
                    DmaCopy16(3, oam, r5, 6);
                    r5->all.attr1 &= 0xFE00;
                    r5->all.attr0 &= 0xFF00;
                    r5->all.attr0 += (sp08[2 * i + 1] + sp28 + y1) & 0xFF;
                    r5->all.attr1 += (sp08[2 * i + 0] + sp24 + x1) & 0x1FF;
                }
            }
        }
    }
}

OamData *sub_08156D84(u8 r5) {
    if (r5 > 0x1f) r5 = 0x1f;
    if ((s8)gUnk_030024F0 < 0) {
        return iwram_end;
    }
    else {
        if (gUnk_03002450[r5] == 0xff) {
            gUnk_030031C0[gUnk_030024F0].split.fractional = 0xff;
            gUnk_03002450[r5] = gUnk_030024F0;
            gUnk_03006080[r5] = gUnk_030024F0;
        }
        else {
            gUnk_030031C0[gUnk_030024F0].split.fractional = 0xff;
            gUnk_030031C0[gUnk_03006080[r5]].split.fractional = gUnk_030024F0;
            gUnk_03006080[r5] = gUnk_030024F0;
        }
        ++gUnk_030024F0;
        return &gUnk_030031C0[gUnk_030024F0 - 1];
    }
}

void DrawToOamBuffer(void) {
    OamData *oam = gOamBuffer;
    u8 j = 0;
    s32 i;
    s8 r0;
    u8 *unused;

    for (i = 0; i < 0x20; i++) {
        for (r0 = gUnk_03002450[i]; r0 != -1; r0 = gUnk_030031C0[r0].all.affineParam) {
            unused = gUnk_030035F0;
            DmaCopy16(3, gUnk_030031C0 + r0, oam, 6);
            oam++;
            gUnk_030035F0[r0] = j++;
            unused++; unused--;
        }
    }

    if (gMainFlags & 0x800) {
        i = gUnk_030024F0;
        oam = gOamBuffer + gUnk_030024F0;
        for (; i < gUnk_03003A00; i++) {
            DmaFill16(3, 0x200, oam, 0x6);
            oam++;
        }
    } else {
        if (gMainFlags & 0x400) {
            s32 j;
            i = gUnk_030024F0 - 1;
            oam = gOamBuffer + i; // not used, but can force oam to be preloaded
            for (j = 0; i >= 0; i--, j++) {
                DmaCopy16(3, gOamBuffer + i, gOamBuffer + (0x7f - j), 6);
            }
            gUnk_03003A00 = 0x80 - gUnk_030024F0;
            for (i = 0; i < gUnk_03003A00; i++) {
                DmaFill16(3, 0x200, gOamBuffer + i, 6);
                unused++; unused--;
            }
        } else {
            gUnk_03003A00 = 0;
        }
    }

    gUnk_030024F0 = 0;
    if (gMainFlags & 0x4000) {
        CpuFill32(~0, gUnk_03002450, 0x20);
        CpuFill32(~0, gUnk_03006080, 0x20);
    }
    else {
        DmaFill32(3, ~0, gUnk_03002450, 0x20);
        DmaFill32(3, ~0, gUnk_03006080, 0x20);
    }
}

s32 AnimCmd_JumpBack(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor -= cursor.jumpBack->offset;
    return 1;
}

s32 AnimCmd_4(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->unk8 |= 0x4000;
    return 0;
}

s32 AnimCmd_PlaySoundEffect(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_PlaySoundEffect) / 4;
    m4aSongNumStart(cursor.playSoundEffect->songId);
    return 1;
}

s32 AnimCmd_TranslateSprite(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_TranslateSprite) / 4;
    sprite->x += cursor.translateSprite->x;
    sprite->y += cursor.translateSprite->y;
    return 1;
}

s32 AnimCmd_8(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_8) / 4;
    return 1;
}

s32 AnimCmd_SetIdAndVariant(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_SetIdAndVariant) / 4;
    sprite->animId = cursor.setIdAndVariant->animId;
    sprite->unk1B = 0xFF;
    sprite->variant = cursor.setIdAndVariant->variant;
    return -1;
}

s32 AnimCmd_10(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_10) / 4;
    return (intptr_t)cursor._10; // TODO: fix no return
}

s32 AnimCmd_SetPriority(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_SetPriority) / 4;
    sprite->unk8 = (sprite->unk8 & ~0x3000) | (cursor.setPriority->priority << 12);
    return 1;
}

s32 AnimCmd_12(union AnimCmd cursor, struct Sprite *sprite) {
    sprite->animCursor += sizeof(struct AnimCmd_12) / 4;
    sprite->unk14 = cursor._12->unk4 << 6;
    return 1;
}
