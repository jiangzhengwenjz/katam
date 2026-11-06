#include "global.h"
#include "data.h"
#include "functions.h"
#include "palette.h"

void sub_08153060(struct Background *r4) {
    const struct TiledBg_082D7850_Full *r6 = gUnk_03002E60[r4->unk1C].y;
    const u32 *tilesetSrc;
    u32 paletteSize;
    u16 b;
    const u16 *paletteSrc;

    r4->unk14 = r6->unk0.width;
    r4->unk16 = r6->unk0.height;
    tilesetSrc = r6->unk0.tileset;
    b = r6->unk0.tilesetCompressedSize;
    if (!(r4->unk2E & 8)) {
        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)tilesetSrc;
        gUnk_03002EC0[gUnk_030039A4].unk4 = r4->tilesVram;
        gUnk_03002EC0[gUnk_030039A4].unk8 = b;
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
        r4->unk2E ^= 8;
    }
    paletteSrc = r6->unk0.palette;
    paletteSize = r6->unk0.paletteSize;
    r4->paletteOffset = r6->unk0.paletteOffset;
    if (!(r4->unk2E & 0x10)) {
        if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
            LoadBgPaletteWithTransformation(paletteSrc, r4->paletteOffset, paletteSize);
        else {
            DmaCopy16(3, paletteSrc, gBgPalette + r4->paletteOffset, paletteSize * sizeof(u16));
            gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
        }
        r4->unk2E ^= 0x10;
    }
    r4->unk10 = (uintptr_t)r6->unk0.tilemap;
    if (r4->unk2E & 0x40) { // Can we actually trigger this condition?
        r4->unk38 = r6->unk1C;
        r4->unk3C = r6->unk20;
        r4->unk3E = r6->unk22;
    }
    gUnk_03002400[gUnk_03003790] = r4;
    gUnk_03003790 = (gUnk_03003790 + 1) & 0xF;
}

bool32 sub_08153184(void) {
    s32 width;
    s32 screenOffset = 0;
    s32 tileSize;
    u16 rows;
    const void *src;
    void *dst;
    u16 i;
    s16 overflow;

    while (gUnk_03003A04 != gUnk_03003790) {
        struct Background *bg;
        u16 dstStride;
        u16 x;
        u16 y;
        u16 screenSize;
        u16 bgId;

        if (!(REG_DISPSTAT & DISPSTAT_VBLANK))
            return FALSE;
        REG_VCOUNT;
        bg = gUnk_03002400[gUnk_03003A04];
        gUnk_03003A04 = (gUnk_03003A04 + 1) & 0xF;
        if (bg->unk2E & 0x20 && bg->scrollX == bg->prevScrollX && bg->scrollY == bg->prevScrollY)
            continue;

        width = bg->unk14; // TODO(match): width is only used for the source stride; bg->unk14 is read directly elsewhere
        bgId = bg->unk2E & 3;
        if (bgId > 1 && gDispCnt & (DISPCNT_MODE_1 | DISPCNT_MODE_2)) {
            screenSize = gBgCntRegs[bgId] >> 14;
            dstStride = 0x10 << screenSize;
            tileSize = 1;
        } else {
            dstStride = 0x20;
            screenSize = gBgCntRegs[bgId] >> 14;
            if (screenSize == 1 || screenSize == 3)
                screenOffset = 0x800;
            tileSize = 2;
        }
        dstStride *= tileSize;

        if (!(bg->unk2E & 0x20)) {
            if (!(bg->unk2E & 0x40)) {
                dst = (void *)bg->tilemapVram + bg->unk24 * dstStride + bg->unk22 * tileSize;
                rows = bg->unk28;
                if (bg->unk2E & 0x100) {
                    if (bg->unk2E & 0x80) {
                        src = (void *)bg->unk10 + (bg->unk20 + rows - 1) * bg->unk14 * tileSize + (bg->unk1E + bg->unk26 - 1) * tileSize;
                        while (rows--) {
                            for (i = 0; i < bg->unk26; i++)
                                *((u16 *)dst + i) = *((u16 *)src - i) ^ 0xC00;
                            dst += dstStride;
                            src -= width * tileSize;
                        }
                    } else {
                        src = (void *)bg->unk10 + bg->unk20 * bg->unk14 * tileSize + (bg->unk1E + bg->unk26 - 1) * tileSize;
                        while (rows--) {
                            for (i = 0; i < bg->unk26; i++)
                                *((u16 *)dst + i) = *((u16 *)src - i) ^ 0x400;
                            dst += dstStride;
                            src += width * tileSize;
                        }
                    }
                } else {
                    if (bg->unk2E & 0x80) {
                        src = (void *)bg->unk10 + (bg->unk20 + rows - 1) * bg->unk14 * tileSize + bg->unk1E * tileSize;
                        while (rows--) {
                            for (i = 0; i < bg->unk26; i++)
                                *((u16 *)dst + i) = *((u16 *)src + i) ^ 0x800;
                            dst += dstStride;
                            src -= width * tileSize;
                        }
                    } else {
                        s32 leftSize, rightSize;

                        if (screenSize & 1 && tileSize == 2 && (leftSize = 0x20 - bg->unk22) > 0
                            && (rightSize = bg->unk26 + bg->unk22 - 0x20) > 0) {
                            src = (void *)bg->unk10 + bg->unk20 * bg->unk14 * tileSize + bg->unk1E * tileSize;
                            leftSize *= 2;
                            rightSize *= 2;
                            while (rows--) {
                                DmaCopy16(3, src, dst, leftSize);
                                DmaCopy16(3, src + leftSize, dst + screenOffset, rightSize);
                                dst += dstStride;
                                src += width * tileSize;
                            }
                        } else {
                            src = (void *)bg->unk10 + bg->unk20 * bg->unk14 * tileSize + bg->unk1E * tileSize;
                            while (rows--) {
                                DmaCopy16(3, src, dst, bg->unk26 * tileSize);
                                dst += dstStride;
                                src += width * tileSize;
                            }
                        }
                    }
                }
            } else {
                s32 col, cols;

                x = bg->unk1E;
                y = bg->unk20;
                for (col = 0; col < bg->unk26; col += cols) {
                    s32 n;
                    s32 rowsLeft;
                    s32 blockX;
                    s32 tileX;
                    s32 size;
                    void *blockSrc;
                    s32 row;

                    blockX = Div(x + col, bg->unk14);
                    tileX = x + col - blockX * bg->unk14;
                    rowsLeft = bg->unk28;
                    cols = min(bg->unk26 - col, bg->unk14 - tileX);
                    size = cols * tileSize;
                    row = 0;
                    while (row < bg->unk28) {
                        s32 blockY;
                        s32 tileY;
                        void *blockDst;

                        blockY = Div(y + row, bg->unk16);
                        tileY = y + row - blockY * bg->unk16;
                        n = bg->unk16 - tileY;
                        blockSrc = (void *)bg->unk10 + (*(u16 *)((void *)bg->unk38 + blockY * (bg->unk3C << 1) + (blockX << 1)) * bg->unk14 * bg->unk16 + (tileY * bg->unk14 + tileX)) * tileSize;
                        blockDst = (void *)bg->tilemapVram + bg->unk24 + row * dstStride + bg->unk22 + col * tileSize;
                        row += n;
                        n = min(rowsLeft, n);
                        rowsLeft -= n;
                        while (n--) {
                            DmaCopy16(3, blockSrc, blockDst, size);
                            blockDst += dstStride;
                            blockSrc += width * tileSize;
                        }
                    }
                }
            }
        } else {
            if (!(bg->unk2E & 0x40)) {
                while (bg->scrollX >= bg->unk14 * 8)
                    bg->scrollX -= bg->unk14 * 8;
                while (bg->scrollY >= bg->unk16 * 8)
                    bg->scrollY -= bg->unk16 * 8;
            }
            gBgScrollRegs[bgId][0] = bg->scrollX % 8;
            gBgScrollRegs[bgId][1] = bg->scrollY % 8;
            if (bg->prevScrollX / 8 != bg->scrollX / 8 || bg->prevScrollY / 8 != bg->scrollY / 8) {
                if (!(bg->unk2E & 0x40)) {
                    x = bg->unk1E + bg->scrollX / 8;
                    y = bg->unk20 + bg->scrollY / 8;
                    dst = (void *)bg->tilemapVram + bg->unk24 * dstStride + bg->unk22 * tileSize;
                    if (x + bg->unk26 + 1 > bg->unk14)
                        overflow = x + bg->unk26 + 1 - bg->unk14;
                    else
                        overflow = 0;
                    rows = bg->unk28 + 1;
                    if (bg->unk2E & 0x100) {
                        if (bg->unk2E & 0x80) {
                            src = (void *)bg->unk10 + (bg->unk20 + rows - 1) * bg->unk14 * tileSize + (bg->unk1E + bg->unk26 - 1) * tileSize;
                            while (rows--) {
                                for (i = 0; i < bg->unk26; i++)
                                    *((u16 *)dst + i) = *((u16 *)src - i) ^ 0xC00;
                                dst += dstStride;
                                src -= width * tileSize;
                            }
                        } else {
                            src = (void *)bg->unk10 + bg->unk20 * bg->unk14 * tileSize + (bg->unk1E + bg->unk26 - 1) * tileSize;
                            while (rows--) {
                                for (i = 0; i < bg->unk26; i++)
                                    *((u16 *)dst + i) = *((u16 *)src - i) ^ 0x400;
                                dst += dstStride;
                                src += width * tileSize;
                            }
                        }
                    } else {
                        if (bg->unk2E & 0x80) {
                            src = (void *)bg->unk10 + (y + rows - 1) * bg->unk14 * tileSize + x * tileSize;
                            while (rows--) {
                                for (i = 0; i < bg->unk26; i++)
                                    *((u16 *)dst + i) = *((u16 *)src + i) ^ 0x800;
                                dst += dstStride;
                                src -= width * tileSize;
                            }
                        } else {
                            src = (void *)bg->unk10 + y * bg->unk14 * tileSize + x * tileSize;
                            while (rows--) {
                                DmaCopy16(3, src, dst, (bg->unk26 + 1 - overflow) * tileSize);
                                dst += dstStride;
                                src += width * tileSize;
                            }
                        }
                    }

                    if (overflow) {
                        dst = (void *)bg->tilemapVram + bg->unk24 * dstStride + (bg->unk22 + bg->unk14 - x) * tileSize;
                        rows = bg->unk28 + 1;
                        if (bg->unk2E & 0x100) {
                            if (bg->unk2E & 0x80) {
                                src = (void *)bg->unk10 + (y + rows - 1) * bg->unk14 * tileSize + (overflow - 1) * tileSize;
                                while (rows--) {
                                    for (i = 0; i < bg->unk26; i++)
                                        *((u16 *)dst + i) = *((u16 *)src - i) ^ 0xC00;
                                    dst += dstStride;
                                    src -= width * tileSize;
                                }
                            } else {
                                src = (void *)bg->unk10 + y * bg->unk14 * tileSize + (overflow - 1) * tileSize;
                                while (rows--) {
                                    for (i = 0; i < bg->unk26; i++)
                                        *((u16 *)dst + i) = *((u16 *)src - i) ^ 0x400;
                                    dst += dstStride;
                                    src += width * tileSize;
                                }
                            }
                        } else {
                            if (bg->unk2E & 0x80) {
                                src = (void *)bg->unk10 + (y + rows - 1) * bg->unk14 * tileSize;
                                while (rows--) {
                                    for (i = 0; i < overflow; i++)
                                        *((u16 *)dst + i) = *((u16 *)src + i) ^ 0x800;
                                    dst += dstStride;
                                    src -= width * tileSize;
                                }
                            } else {
                                src = (void *)bg->unk10 + y * bg->unk14 * tileSize;
                                while (rows--) {
                                    DmaCopy16(3, src, dst, overflow * tileSize);
                                    dst += dstStride;
                                    src += width * tileSize;
                                }
                            }
                        }
                    }
                } else {
                    s32 col, cols;

                    // TODO(match): bg->scrollX / 8 as above doesn't match
                    x = bg->unk1E + (bg->scrollX >> 3);
                    y = bg->unk20 + (bg->scrollY >> 3);
                    for (col = 0; col < bg->unk26; col += cols) {
                        s32 n;
                        s32 rowsLeft;
                        s32 blockX;
                        s32 tileX;
                        s32 size;
                        void *blockSrc;
                        s32 row;

                        blockX = Div(x + col, bg->unk14);
                        tileX = x + col - blockX * bg->unk14;
                        rowsLeft = bg->unk28;
                        cols = min(bg->unk26 - col, bg->unk14 - tileX);
                        size = cols * tileSize;
                        row = 0;
                        while (row < bg->unk28) {
                            s32 blockY;
                            s32 tileY;
                            void *blockDst;

                            blockY = Div(y + row, bg->unk16);
                            tileY = y + row - blockY * bg->unk16;
                            n = bg->unk16 - tileY;
                            blockSrc = (void *)bg->unk10 + (*(u16 *)((void *)bg->unk38 + blockY * (bg->unk3C << 1) + (blockX << 1)) * bg->unk14 * bg->unk16 + (tileY * bg->unk14 + tileX)) * tileSize;
                            blockDst = (void *)bg->tilemapVram + bg->unk24 + row * dstStride + bg->unk22 + col * tileSize;
                            row += n;
                            n = min(rowsLeft, n);
                            rowsLeft -= n;
                            while (n--) {
                                DmaCopy16(3, blockSrc, blockDst, size);
                                blockDst += dstStride;
                                blockSrc += width * tileSize;
                            }
                        }
                    }
                }
            }
        }
        REG_VCOUNT;
        bg->prevScrollX = bg->scrollX;
        bg->prevScrollY = bg->scrollY;
    }
    return TRUE;
}

void sub_08153CB8(struct Background *ip) {
    const struct RoomTiledBG *r3 = gUnk_03002E60[ip->unk1C].x;
    u32 r4, r5;

    if (r3->unk6 && r3->unk7 <= ++ip->animDelayCounter) {
        ip->animDelayCounter = 0;
        if (r3->unk6 <= ++ip->animFrameCounter)
            ip->animFrameCounter = 0;
        r5 = r3->unk4;
        if (!(ip->unk2E & 0x200)) {
            if (!ip->animFrameCounter)
                r4 = (uintptr_t)r3->tileset;
            else
                r4 = (uintptr_t)r3->tileset + r3->tilesetSize + (ip->animFrameCounter-1) * r5;
        } else {
            r4 = ip->tilesVram + r3->tilesetSize + ip->animFrameCounter * r5;
        }
        gUnk_03002EC0[gUnk_030039A4].unk0 = r4;
        gUnk_03002EC0[gUnk_030039A4].unk4 = ip->tilesVram;
        gUnk_03002EC0[gUnk_030039A4].unk8 = r5;
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
    }
}

