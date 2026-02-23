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
    r4->unk10 = r6->unk0.tilemap;
    if (r4->unk2E & 0x40) { // Can we actually trigger this condition?
        r4->unk38 = r6->unk1C;
        r4->unk3C = r6->unk20;
        r4->unk3E = r6->unk22;
    }
    gUnk_03002400[gUnk_03003790] = r4;
    gUnk_03003790 = (gUnk_03003790 + 1) & 0xF;
}

// sub_08153184: https://decomp.me/scratch/z1VmL (95.20%)
#ifndef NONMATCHING
NAKED bool32 sub_08153184(void) {
    asm(".include \"asm/nonmatching/sub_08153184.inc\"");
}
#else
bool32 sub_08153184(void) {
    s32 sp00_unk14;
    s32 sp4 = 0;
    s32 sp8;

    while (gUnk_03003A04 != gUnk_03003790) {
        struct Background* r6;
        u16 sp0C_destmult;
        u16 sp10_unk1E_displaced;
        u16 sp14_unk20_displaced;
        u16 screenSize;
        u16 r4_unk2E;

        // r3 = gUnk_03003A04
        // r4 = gUnk_03003790
        //@24

        if (!(REG_DISPSTAT & DISPSTAT_VBLANK)) {
            return FALSE;
        }
        REG_VCOUNT;

        //@48
        // r2 = gUnk_03002400
        // r6 = gUnk_03002400[gUnk_03003A04]
        r6 = gUnk_03002400[gUnk_03003A04];
        gUnk_03003A04 = (gUnk_03003A04 + 1) % 16u;
        if (r6->unk2E & 0x0020 && r6->scrollX == r6->prevScrollX && r6->scrollY == r6->prevScrollY) {
            continue;
        }

        sp00_unk14 = r6->unk14;

        r4_unk2E = r6->unk2E & 0x0003;
        if (r4_unk2E > 1 && (gDispCnt & DISPCNT_MODE_3)) {
            //@8c
            screenSize = gBgCntRegs[r4_unk2E] >> 14;
            sp0C_destmult = 0x10 << screenSize;
            sp8 = 1;
        }
        else {
            //@b4
            sp0C_destmult = 0x20;
            screenSize = gBgCntRegs[r4_unk2E] >> 14;
            if (screenSize == 1 || screenSize == 3) {
                sp4 = 0x800;
            }
            sp8 = 2;
        }

        //@d4
        sp0C_destmult *= sp8;

        if (!(r6->unk2E & 0x0020)) {
            u16 r3;
            //@f0
            if (!(r6->unk2E & 0x0040)) {
                //@fa
                u16 r5;
                const void* r2;
                void* r4;
                r4 = (void*)r6->tilemapVram + r6->unk24 * sp0C_destmult + r6->unk22 * sp8;
                r5 = r6->unk28;
                if (r6->unk2E & 0x0100) {
                    //@120
                    if (r6->unk2E & 0x0080) {
                        //@128
                        //void* r2;
                        r2 = (void*)r6->unk10 + (r6->unk20 + r5 - 1) * r6->unk14 * sp8 + (r6->unk1E + r6->unk26 - 1) * sp8;

                        while (r5-- != 0) {
                            s32 disp;
                            //u16 r3;
                            //@156
                            // r8 = sp0 * sp8;
                            // r10 = 0xffff
                            disp = sp00_unk14 * sp8;
                            for (r3 = 0; r3 < r6->unk26; r3++) {
                                // r9 = 0xc00
                                *((u16*)r4 + r3) = *((u16*)r2 - r3) ^ 0xc00;
                            }
                            r4 += sp0C_destmult;
                            r2 -= disp;
                        }
                    }
                    else {
                        //@1b0
                        //void* r2;
                        r2 = (void*)r6->unk10 + r6->unk20 * r6->unk14 * sp8 + (r6->unk1E + r6->unk26 - 1) * sp8;

                        while (r5-- != 0) {
                            s32 disp;
                            //u16 r3;
                            //@1fa
                            disp = sp00_unk14 * sp8;
                            for (r3 = 0; r3 < r6->unk26; r3++) {
                                *((u16*)r4 + r3) = *((u16*)r2 - r3) ^ 0x400;
                            }
                            r4 += sp0C_destmult;
                            r2 += disp;
                        }
                    }
                }
                else {
                    //@22c
                    if (r6->unk2E & 0x0080) {
                        //void* r2;
                        r2 = (void*)r6->unk10 + (r6->unk20 + r5 - 1) * r6->unk14 * sp8 + r6->unk1E * sp8;

                        while (r5-- != 0) {
                            s32 disp;
                            //u16 r3;
                            disp = sp00_unk14 * sp8;
                            for (r3 = 0; r3 < r6->unk26; r3++) {
                                *((u16*)r4 + r3) = *((u16*)r2 + r3) ^ 0x800;
                            }
                            r4 += sp0C_destmult;
                            r2 -= disp;
                        }
                    }
                    else {
                        //@2b0
                        if (screenSize & 1 && sp8 == 2 && (0x20 - r6->unk22) > 0 && (r6->unk26 + r6->unk22 - 0x20) > 0) {
                            //@2d6
                            s32 r9_size;
                            s32 r3_size;
                            //void* r2;
                            r2 = (u16*)r6->unk10 + r6->unk20 * r6->unk14 + r6->unk1E;
                            r9_size = (0x20 - r6->unk22) * 2;
                            r3_size = (r6->unk26 + r6->unk22 - 0x20) * 2;
                            // r9 = (0x20 - r6->unk22) * 2
                            // r3 = (r6->unk26 + r6->unk22 - 0x20) * 2
                            while (r5-- != 0) {
                                //@2fe
                                DmaCopy16(3, r2, r4, r9_size);
                                DmaCopy16(3, r2 + r9_size, r4 + sp4, r3_size);
                                r4 += sp0C_destmult;
                                r2 += sp00_unk14 * sp8;
                            }
                        }
                        else {
                            //@35c
                            //void* r2;
                            r2 = (void*)r6->unk10 + r6->unk20 * r6->unk14 * sp8 + r6->unk1E * sp8;
                            while (r5-- != 0) {
                                DmaCopy16(3, r2, r4, r6->unk26 * sp8);
                                r4 += sp0C_destmult;
                                r2 += sp00_unk14 * sp8;
                            }
                        }
                    }
                }
            }
            else {
                //@3c0
                s32 sp38;
                sp10_unk1E_displaced = r6->unk1E;
                sp14_unk20_displaced = r6->unk20;
                sp38 = 0;
                while (sp38 < r6->unk26) {
                    s32 r5;
                    s32 r8_unk28;
                    s32 sp18;
                    s32 sp1C;
                    s32 sp20;
                    void* sp40;
                    s32 r9;
                    s32 r1;
                    //s32 r10 = sp38;

                    //@3d4
                    // r4 = sp10 + r10
                    sp18 = Div(sp10_unk1E_displaced + sp38, r6->unk14);
                    // r7 = sp18
                    sp1C = (sp10_unk1E_displaced + sp38) - sp18 * r6->unk14;
                    // r8 = r6->unk28
                    r8_unk28 = r6->unk28;
                    r1 = min(r6->unk26 - sp38, r6->unk14 - sp1C);
                    // r4 = sp8
                    sp20 = r1 * sp8;
                    // r7 = 0
                    r9 = 0;
                    //sp38 += r1;

                    while (r9 < r6->unk28) {
                        //@414
                        s32 r0 = Div(sp14_unk20_displaced + r9, r6->unk16);
                        s32 r4_2 = (sp14_unk20_displaced + r9) - r0 * r6->unk16;
                        void* r4;
                        r5 = r6->unk16 - r4_2;

                        //@42a
                        sp40 = (void*)r6->unk10 + (*(u16*)((void*)r6->unk38 + 2 * r6->unk3C * r0 + (sp18 << 1)) * r6->unk14 * r6->unk16 + (r4_2 * r6->unk14 + sp1C)) * sp8;

                        //@458
                        r4 = (void*)r6->tilemapVram + r6->unk24 + sp0C_destmult * r9 + r6->unk22 + sp38 * sp8;
                        r9 += r5;
                        r5 = min(r8_unk28, r6->unk16 - r4_2);
                        r8_unk28 -= r5;

                        //@484
                        while (r5-- != 0) {
                            DmaCopy16(3, sp40, r4, sp20);
                            r4 += sp0C_destmult;
                            sp40 += sp00_unk14 * sp8;
                        }
                    }

                    sp38 += r1;
                }
            }
        }
        else {
            // r7 = sp0
            //@4d0
            // r3 = r6->scrollX
            // r9 = gBgScrollRegs
            // r8 = r4 * 4
            // r2 = sp0
            if (!(r6->unk2E & 0x0040)) {
                //s32 r4_unk16 = r6->unk16;
                while (r6->scrollX >= r6->unk14 * 8) {
                    r6->scrollX -= r6->unk14 * 8;
                }

                //@500
                // r2 = r4_2
                // r0 = r4_2 * 8
                while (r6->scrollY >= r6->unk16 * 8) {
                    r6->scrollY -= r6->unk16 * 8;
                }
            }
            //@51c
            gBgScrollRegs[r4_unk2E][0] = r6->scrollX % 8;
            gBgScrollRegs[r4_unk2E][1] = r6->scrollY % 8;
            // r4 = r6->scrollX
            if ((r6->prevScrollX / 8) != (r6->scrollX / 8) || (r6->prevScrollY / 8) != (r6->scrollY / 8)) {
                // r3 = r6->unk2E
                if (!(r6->unk2E & 0x0040)) {
                    u16 r5;
                    void* r4;
                    const void* r2;
                    s16 r8;

                    //@55a
                    sp10_unk1E_displaced = (r6->unk1E + r6->scrollX / 8);
                    sp14_unk20_displaced = (r6->unk20 + r6->scrollY / 8);
                    //@572
                    r4 = (void*)r6->tilemapVram + r6->unk24 * sp0C_destmult + r6->unk22 * sp8;
                    //@584
                    // r9 = r6->unk26

                    //@592
                    if (sp10_unk1E_displaced + r6->unk26 + 1 > r6->unk14) {
                        r8 = r6->unk26 + sp10_unk1E_displaced + 1 - r6->unk14;
                        asm(""); // Suppress tail merging
                    }
                    else {
                        //@5a4
                        r8 = 0;
                    }
                    //r8 = max(sp10_unk1E_displaced + r6->unk26 + 1 - r6->unk14, 0);

                    r5 = r6->unk28 + 1;
                    //@5ba
                    if (r6->unk2E & 0x100) {
                        if (r6->unk2E & 0x80) {
                            //s32 disp = sp8 * sp00_unk14;
                            //void* r2;
                            //@5c6
                            r2 = (void*)r6->unk10 + (r6->unk20 + r5 - 1) * r6->unk14 * sp8;
                            r2 += (r6->unk1E + r6->unk26 - 1) * sp8;
                            //r2 += (r6->unk1E + r6->unk26 - 1) * sp8;
                            // r10 = r8 << 0x10
                            while (r5-- != 0) {
                                u16 r3;
                                //@600
                                for (r3 = 0; r3 < r6->unk26; r3++) {
                                    //@614
                                    *((u16*)r4 + r3) = *((u16*)r2 - r3) ^ 0xc00;
                                }
                                r4 += sp0C_destmult;
                                r2 -= sp8 * sp00_unk14;
                            }
                        }
                        else {
                            //@648
                            //void* r2;
                            r2 = (void*)r6->unk10 + r6->unk20 * r6->unk14 * sp8;
                            r2 += (r6->unk1E + r6->unk26 - 1) * sp8;
                            while (r5-- != 0) {
                                u16 r3;
                                for (r3 = 0; r3 < r6->unk26; r3++) {
                                    *((u16*)r4 + r3) = *((u16*)r2 - r3) ^ 0x400;
                                }
                                r4 += sp0C_destmult;
                                r2 += sp00_unk14 * sp8;
                            };
                        }
                    }
                    else {
                        //@6c4
                        if (r6->unk2E & 0x80) {
                            //void* r2;
                            r2 = (void*)r6->unk10 + (sp14_unk20_displaced + r5 - 1) * r6->unk14 * sp8 + sp10_unk1E_displaced * sp8;
                            while (r5-- != 0) {
                                u16 r3;
                                for (r3 = 0; r3 < r6->unk26; r3++) {
                                    //u16* src = (u16*)r2 + r3;
                                    //u16* dest = (u16*)r4 + r3;
                                    //*dest = *src ^ 0x800;
                                    //write_with_flag((u16*)r2 + r3, (u16*)r4 + r3, 0x800);
                                    *((u16*)r4 + r3) = *((u16*)r2 + r3) ^ 0x800;
                                }
                                r4 += sp0C_destmult;
                                r2 -= sp00_unk14 * sp8;
                            }
                        }
                        else {
                            //@74c
                            //void* r2;
                            r2 = (void*)r6->unk10 + sp14_unk20_displaced * r6->unk14 * sp8 + sp10_unk1E_displaced * sp8;
                            while (r5-- != 0) {
                                //s32 size;
                                //size = r8 - 1;
                                // r10 = r8 << 10
                                //DmaCopy16(3, r2, r4, (r6->unk26 - (r8 - 1)) * sp8);
                                //DmaCopy16(3, r2, r4, (r6->unk26 - (size = r8 - 1)) * sp8);
                                vu32 *dmaRegs = (vu32 *)(0x4000000 + 0xd4);
                                s32 size;
                                size = r8 - 1;
                                dmaRegs[0] = (vu32)(r2);
                                dmaRegs[1] = (vu32)(r4);
                                dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((r6->unk26 - (size)) * sp8)/(16/8)));
                                //dmaRegs[2] = (vu32)((0x8000 | 0x0000 | 0x0000 | 0x0000 | 0x0000) << 16 | (((r6->unk26 - ({ r8 - 1; })) * sp8)/(16/8)));
                                dmaRegs[2];

                                r4 += sp0C_destmult;
                                r2 += sp8 * sp00_unk14;
                            }
                        }
                    }

                    if (r8) {
                        //@7c8
                        u16 r5;
                        const void* r2;
                        void* r4;
                        r4 = (void*)r6->tilemapVram + r6->unk24 * sp0C_destmult + (r6->unk22 + r6->unk14 - sp10_unk1E_displaced) * sp8;
                        r5 = r6->unk28 + 1;
                        if (r6->unk2E & 0x0100) {
                            //@7f8
                            if (r6->unk2E & 0x0080) {
                                //@800
                                //void* r2;
                                //r2 = ((struct Background*)r6_2)->unk10;
                                //r2 += (sp14_unk20_displaced + r5 - 1) * r6->unk14 * sp8;
                                r2 = (void*)r6->unk10 + (sp14_unk20_displaced + r5 - 1) * r6->unk14 * sp8;
                                r2 += (r8 - 1) * sp8;
                                while (r5-- != 0) {
                                    //@824
                                    u16 r3;
                                    for (r3 = 0; r3 < r6->unk26; r3++) {
                                        *((u16*)r4 + r3) = *((u16*)r2 - r3) ^ 0xc00;
                                    }
                                    r4 += sp0C_destmult;
                                    r2 -= sp00_unk14 * sp8;
                                }
                            }
                            else {
                                //@87c
                                //void* r2;
                                r2 = (void*)r6->unk10 + sp14_unk20_displaced * r6->unk14 * sp8;
                                r2 += (r8 - 1) * sp8;
                                while (r5-- != 0) {
                                    //@8a0
                                    u16 r3;
                                    for (r3 = 0; r3 < r6->unk26; r3++) {
                                        *((u16*)r4 + r3) = *((u16*)r2 - r3) ^ 0x400;
                                    }
                                    r4 += sp0C_destmult;
                                    r2 += sp00_unk14 * sp8;
                                }
                            }
                        }
                        else {
                            //@8f0
                            if (r6->unk2E & 0x0080) {
                                //@8f6
                                //void* r2;
                                r2 = (void*)r6->unk10 + (sp14_unk20_displaced + r5 - 1) * r6->unk14 * sp8;
                                while (r5-- != 0) {
                                    s16 r3; // TODO: Should be u16, but messes with preceeding stacks?
                                    for (r3 = 0; (u16)r3 < r8; r3++) {
                                        *((u16*)r4 + r3) = *((u16*)r2 + r3) ^ 0x800;
                                    }
                                    r4 += sp0C_destmult;
                                    r2 -= sp00_unk14 * sp8;
                                }
                            }
                            else {
                                //@974
                                //void* r2;
                                r2 = (void*)r6->unk10 + sp14_unk20_displaced * r6->unk14 * sp8;
                                while (r5-- != 0) {
                                    DmaCopy16(3, r2, r4, r8 * sp8);
                                    r4 += sp0C_destmult;
                                    r2 = (void*)r2 + sp00_unk14 * sp8;
                                }
                            }
                        }
                    }
                }
                else {
                    //@9dc
                    s32 r3;
                    sp10_unk1E_displaced = ((r6->scrollX >> 3) + r6->unk1E);
                    sp14_unk20_displaced = (r6->scrollY / 8 + r6->unk20);
                    r3 = 0;
                    while (r3 < r6->unk26) {
                        //@a00
                        s32 r9;
                        s32 sp24 = Div(r3 + sp10_unk1E_displaced, r6->unk14);
                        s32 sp28 = (r3 + sp10_unk1E_displaced) - sp24 * r6->unk14;
                        s32 sp2C;
                        s32 r8_unk28 = r6->unk28;
                        s32 r1_unk14 = min(r6->unk26 - r3, r6->unk14 - sp28);
                        //@a2c
                        sp2C = r1_unk14 * sp8;
                        r9 = 0;

                        while (r9 < r6->unk28) {
                            //@a40
                            s32 r1_2 = Div(sp14_unk20_displaced + r9, r6->unk16);
                            s32 r4 = sp14_unk20_displaced + r9 - r1_2 * r6->unk16;
                            s32 r5 = r6->unk16 - r4;
                            //@a56
                            void* r3_2;
                            void* sp40;
                            sp40 = (void*)r6->unk10 + (*(u16*)((void*)r6->unk38 + 2 * r6->unk3C * r1_2 + (sp24 << 1)) * r6->unk14 * r6->unk16 + (r4 * r6->unk14 + sp28)) * sp8;

                            r3_2 = (void*)r6->tilemapVram + r6->unk24 + r9 * sp0C_destmult + r6->unk22 + r3 * sp8;
                            r9 += r5;
                            if (r5 > r8_unk28) {
                                r5 = r8_unk28;
                            }
                            //@aa4
                            r8_unk28 -= r5;
                            // r8 = r6->unk28 - r5
                            while (r5-- != 0) {
                                DmaCopy16(3, sp40, r3_2, sp2C);
                                r3_2 += sp0C_destmult;
                                sp40 += sp00_unk14 * sp8;
                            }
                        }
                        r3 += r1_unk14;
                    }
                }
            }
        }

        //@af6
        REG_VCOUNT;
        r6->prevScrollX = r6->scrollX;
        r6->prevScrollY = r6->scrollY;
    }
    return TRUE;
}
#endif

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

