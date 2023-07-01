#include "global.h"
#include "data.h"
#include "sprite.h"
#include "functions.h"
#include "palette.h"

// TODO: merge sprite_1.c, sprite.s, sprite_2.c into sprite.c

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
