#include "gba/m4a.h"
#include "data.h"
#include "sprite.h"
#include "main.h"
#include "task.h"

extern const u8 gUnk_08D6084C[][2];

void sub_0815604C(struct Sprite *sb) {
    OamData *r4;
    s32 sl, sp00, sp04, sp08;
    u8 sp0C, i;
    const u16 *sp10;
    u16 sp14 = 0;
    u32 sp18 = 0, sp1C = 0, sp20 = 0, sp24 = 0;
    u32 sp28;
    const struct Unk_03003674_1_Struct *r8;
    u32 r5, r7;
    u32 r0, r1;

    if (sb->unk4 != -1) {
        if (!(sb->unk4 >> 28))
            r8 = (const void *)gUnk_03003674[1][sb->unkC] + sb->unk4 * sizeof(struct Unk_03003674_1_Struct_Sub);
        else
            r8 = (const void *)gUnk_03003674[1][sb->unkC] + sb->unk4 * sizeof(struct Unk_03003674_1_Struct);
        
        sb->unk1E = r8->sub.unk2;
        sp00 = sb->unk10;
        sl = sb->unk12;
        if (sb->unk8 & 0x20000) {
            sp00 -= gUnk_030023F4.unk0;
            sl -= gUnk_030023F4.unk2;
        }

        sp04 = r8->sub.unk4;
        sp08 = r8->sub.unk6;
        if (sb->unk8 & 0x20) {
            sp14 |= 0x100;
            sp18 |= (sb->unk8 & 0x1F) << 9;
            if (sb->unk8 & 0x40) {
                sp00 -= r8->sub.unk4 >> 1;
                sl -= r8->sub.unk6 >> 1;
                sp04 <<= 1;
                sp08 <<= 1;
                sp14 |= 0x200;
            }
        } else {
            if (sb->unk8 & 0x800) {
                sl -= sp08 - r8->sub.unkA;
            } else {
                sl -= r8->sub.unkA;
            }
            if (sb->unk8 & 0x400) {
                sp00 -= sp04 - r8->sub.unk8;
            } else {
                sp00 -= r8->sub.unk8;
            }
            if (((sb->unk8 >> 11) & 1) != (r8->sub.unk0 >> 15))
                sp20 = 1;
            r1 = sb->unk8;
            r1 >>= 10;
            r0 = r8->sub.unk0 >> 14;
            if ((r0 ^ r1) & 1)
                sp24 = 1;
        }
        if (!sp04
            || (sp00 + sp04 >= 0 && sp00 <= 240 && sp08 + sl >= 0 && sl <= 160)) {
            u32 r1 = (sp1C + (sb->unk1F << 12)) << 16;

            sp14 |= (sb->unk8 & 0x180) * 8;
            sp1C = (((sb->unk8 & 0x3000) << 14) | r1) >> 16;
            sp10 = gUnk_03003674[2][sb->unkC];
            sb->unk1D = gUnk_030024F0;
            for (sp0C = 0; sp0C < r8->sub.unk2; ++sp0C) {
                r4 = sub_08156D84((sb->unk14 & 0x7C0) >> 6);
                if (gUnk_03006CC4 == r4) return;
                DmaCopy16(3, &sp10[3 * ((r8->sub.unk0 & 0x3FFF) + sp0C)], r4, 6);
                r7 = r4->all.attr1 & 0x1FF;
                r5 = r4->all.attr0 & 0xFF;
                r4->all.attr1 &= 0xFE00;
                r4->all.attr0 &= 0xFE00;
                if (sp20 | sp24) {
                    u32 r2 = ((r4->all.attr0 & 0xC000) >> 12);
                    u32 r6;

                    r2 |= ((r4->all.attr1 & 0xC000) >> 14);
                    r6 = r2; // required for matching
                    if (sp20) {
                        r4->all.attr1 ^= 0x2000;
                        r5 = sp08 - gUnk_08D6084C[r6][1] - r5;
                    }

                    if (sp24) {
                        r4->all.attr1 ^= 0x1000;
                        r7 = sp04 - gUnk_08D6084C[r6][0] - r7;
                    }
                }

                do ; while (0); // boom! 
                r4->all.attr0 += ((sl + r5) & 0xFF);
                r4->all.attr1 += ((sp00 + r7) & 0x1FF);
                r4->all.attr0 |= sp14;
                r4->all.attr1 |= sp18;
                r4->all.attr2 |= sp1C;
                if (r4->all.attr0 & 0x2000)
                    r4->all.attr2 += r4->all.attr2 & 0x3FF;
                r4->all.attr2 += (sb->unk0 - 0x6010000u) >> 5;
            }

            if ((sb->unk4 >> 28) == 1 && sb->unk8 & 0x4000000) {
                const s32 *sl;
                u16 r8_, r3;
                const u8 *ip, *r2, *r4;
                s32 r6;
                u32 r1;

                sb->unk8 &= 0xFBFFFFFF;
                r1 = r8->unkC & 0xFFFFFF;
                sp28 = r8->unkC >> 24;                
                sl = (const void *)(gUnk_03003674[6] + r1);
                if (sl[0] >= 0) {
                    r8_ = 0x20;
                    ip = (const void *)gUnk_03003674[4];
                } else {
                    r8_ = 0x40;
                    ip = (const void *)gUnk_03003674[5];
                }

                r3 = r8_;
                r2 = ip + sl++[0] * r8_;
                r6 = sb->unk0;
                for (i = 1; i < sp28; ++i) {
                    r4 = ip + sl++[0] * r8_;
                    if (r2 + r3 == r4)
                        r3 += r8_;
                    else {
                        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
                        gUnk_03002EC0[gUnk_030039A4].unk4 = r6;
                        gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
                        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
                        r6 += r3;
                        r3 = r8_;
                        r2 = r4;
                    }
                }
                gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
                gUnk_03002EC0[gUnk_030039A4].unk4 = r6;
                gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
                gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
            }
        }
    }
}

void sub_081564D8(struct Sprite *sl) {
    volatile OamData sp00;
    OamData *p;
    s32 sp08[1], sp0C[1];
    s32 sp10[1], sp14[1];
    u8 sp18, j;
    const u16 *sp1C;
    u16 sp20 = 0;
    u32 sp24 = 0, sp28 = 0, sp2C = 0, sp30 = 0;
    u32 sp34;
    const struct Unk_03003674_1_Struct *sb;
    s32 r5, r6;
    s32 r7, ip;
    u32 r0, r1;

    if (sl->unk4 != -1) {
        if (!(sl->unk4 >> 28))
            sb = (const void *)gUnk_03003674[1][sl->unkC] + sl->unk4 * sizeof(struct Unk_03003674_1_Struct_Sub);
        else
            sb = (const void *)gUnk_03003674[1][sl->unkC] + sl->unk4 * sizeof(struct Unk_03003674_1_Struct);

        sl->unk1E = sb->sub.unk2;
        sp08[0] = sl->unk10;
        sp0C[0] = sl->unk12;
        if (sl->unk8 & 0x20000) {
            sp08[0] -= gUnk_030023F4.unk0;
            sp0C[0] -= gUnk_030023F4.unk2;
        }

        sp10[0] = sb->sub.unk4;
        sp14[0] = sb->sub.unk6;

        if (sl->unk8 & 0x20) {
            sp20 |= 0x100;
            sp24 |= (sl->unk8 & 0x1F) << 9;
            if (sl->unk8 & 0x40) {
                sp08[0] -= sb->sub.unk4 >> 1;
                sp0C[0] -= sb->sub.unk6 >> 1;
                sp10[0] <<= 1;
                sp14[0] <<= 1;
                sp20 |= 0x200;
            }
        } else {
            if (sl->unk8 & 0x800)
                sp0C[0] -= sp14[0] - sb->sub.unkA;
            else
                sp0C[0] -= sb->sub.unkA;

            if (sl->unk8 & 0x400)
                sp08[0] -= sp10[0] - sb->sub.unk8;
            else
                sp08[0] -= sb->sub.unk8;

            if (((sl->unk8 >> 11) & 1) != (sb->sub.unk0 >> 15))
                sp2C = 1;
            r1 = sl->unk8;
            r1 >>= 10;
            r0 = sb->sub.unk0 >> 14;
            if ((r0 ^ r1) & 1)
                sp30 = 1;
        }

        if (!sp10[0]
            || (sp08[0] + sp10[0] >= 0 && sp08[0] <= 240 && sp0C[0] + sp14[0] >= 0 && sp0C[0] <= 160)) {
            u32 r1 = (sp28 + (sl->unk1F << 12)) << 16;

            sp20 |= (sl->unk8 & 0x180) * 8;
            sp28 = (((sl->unk8 & 0x3000) << 14) | r1) >> 16;
            sp1C = gUnk_03003674[2][sl->unkC];
            sl->unk1D = gUnk_030024F0;
            for (sp18 = 0; sp18 < sb->sub.unk2; ++sp18) {
                u32 r0;

                DmaCopy16(3, &sp1C[3 * ((sb->sub.unk0 & 0x3FFF) + sp18)], &sp00, 6); // excluding affine params
                p = (OamData *)&sp00;
                r6 = p->all.attr1 & 0x1FF;
                if (r6 >= 0x100)
                    r6 -= 0x200;
                r5 = p->all.attr0 & 0xFF;
                if (r5 >= 0x80)
                    r5 -= 0x100;
                p->all.attr1 &= 0xFE00;
                p->all.attr0 &= 0xFE00;
                r0 = ((p->all.attr0 & 0xC000) >> 12) | ((p->all.attr1 & 0xC000) >> 14);
                r7 = gUnk_08D6084C[r0][1];
                ip = gUnk_08D6084C[r0][0];
#ifndef NONMATCHING
            {
                /* The issue here might be caused by wrongly marking sp00 as volatile;
                 * it's possible that we need to permutate ways of dereference of sp00
                 * at different locations (sp00.xx vs p->xx). 
                 * p is very likely to be a real variable as the function itself is a
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
                        p->all.attr1 ^= 0x2000;
                        r5 = sp14[0] - r7 - r5;
                    }
                    
                    if (sp30) {
                        p->all.attr1 ^= 0x1000;
                        r6 = sp10[0] - ip - r6;
                    }
                }
#ifndef NONMATCHING
            }
#endif
                if ((sp0C[0] + r5 + r7 >= 0 && sp0C[0] + r5 <= 160)
                    && (sp08[0] + r6 + ip >= 0 && sp08[0] + r6 <= 240)) {
                    OamData *r1_;

                    p->all.attr0 += ((sp0C[0] + r5) & 0xFF);
                    p->all.attr1 += ((sp08[0] + r6) & 0x1FF);
                    p->all.attr0 |= sp20;
                    p->all.attr1 |= sp24;
                    p->all.attr2 |= sp28;
                    if (p->all.attr0 & 0x2000)
                        p->all.attr2 += p->all.attr2 & 0x3FF;
                    p->all.attr2 += (sl->unk0 - 0x6010000u) >> 5;
                    r1_ = sub_08156D84((sl->unk14 & 0x7C0) >> 6);
                    if (gUnk_03006CC4 == r1_) return;
                    DmaCopy16(3, &sp00, r1_, 6);
                }
            }

            if ((sl->unk4 >> 28) == 1 && sl->unk8 & 0x4000000) {
                const s32 *ip;
                u16 r8, r3;
                const u8 *r2_, *r2, *r4;
                s32 r6;
                u32 r1;
                
                sl->unk8 &= 0xFBFFFFFF;
                r1 = sb->unkC & 0xFFFFFF;
                sp34 = sb->unkC >> 24;                
                ip = (const void *)(gUnk_03003674[6] + r1);
                if (ip[0] >= 0) {
                    r8 = 0x20;
                    r2_ = (const void *)gUnk_03003674[4];
                } else {
                    r8 = 0x40;
                    r2_ = (const void *)gUnk_03003674[5];
                }

                r3 = r8;
                r2 = r2_ + ip++[0] * r8;
                r6 = sl->unk0;
                for (j = 1; j < sp34; ++j) {
                    r4 = r2_ + ip++[0] * r8;
                    if (r2 + r3 == r4)
                        r3 += r8;
                    else {
                        gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
                        gUnk_03002EC0[gUnk_030039A4].unk4 = r6;
                        gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
                        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
                        r6 += r3;
                        r3 = r8;
                        r2 = r4;
                    }
                }
                gUnk_03002EC0[gUnk_030039A4].unk0 = (uintptr_t)r2;
                gUnk_03002EC0[gUnk_030039A4].unk4 = r6;
                gUnk_03002EC0[gUnk_030039A4].unk8 = r3;
                gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
            }
        }
    }
}

/* unused function */
void sub_081569A0(struct Sprite *sb, u16 *sp08, u8 sp0C) {
    vs32 sp00[1], sp04[1];
    s32 sp10[1], sp14[1];
    u8 sp18, i;
    u32 sp1C, sp20, sp24, sp28;
    const struct Unk_03003674_1_Struct *sl;
    
    if (sb->unk4 != -1) {
        if (!(sb->unk4 >> 28))
            sl = (const void *)gUnk_03003674[1][sb->unkC] + sb->unk4 * sizeof(struct Unk_03003674_1_Struct_Sub);
        else
            sl = (const void *)gUnk_03003674[1][sb->unkC] + sb->unk4 * sizeof(struct Unk_03003674_1_Struct);

        sb->unk1E = sl->sub.unk2;
        sp00[0] = sb->unk10;
        sp04[0] = sb->unk12;
        if (sb->unk8 & 0x20000) {
            sp00[0] -= gUnk_030023F4.unk0;
            sp04[0] -= gUnk_030023F4.unk2;
        }

        sp10[0] = sl->sub.unk4;
        sp14[0] = sl->sub.unk6;

        if (sb->unk8 & 0x20) {
            if (sb->unk8 & 0x40) {
                sp00[0] -= sl->sub.unk4 >> 1;
                sp04[0] -= sl->sub.unk6 >> 1;
                sp10[0] <<= 1;
                sp14[0] <<= 1;
            }
        } else {
            u32 r1;

            if (sb->unk8 & 0x800) {
                r1 = sl->sub.unkA;
                r1 = sp14[0] - r1;
            } else {
                r1 = sl->sub.unkA;
            }
            sp04[0] -= r1;
            
            if (sb->unk8 & 0x400) {
                r1 = sl->sub.unk8;
                r1 = sp10[0] - r1;
            } else {
                r1 = sl->sub.unk8;
            }
            sp00[0] -= r1;
        }

        sp24 = sp00[0] - sb->unk10;
        sp28 = sp04[0] - sb->unk12;
        if (sp00[0] + sp10[0] >= 0 && sp00[0] <= 240
            && sp04[0] + sp14[0] >= 0 && sp04[0] <= 160) {
            for (sp18 = 0; sp18 < sl->sub.unk2; ++sp18) {
                const u16 *r4 = gUnk_03003674[2][sb->unkC];
                OamData *r6 = sub_08156D84((sb->unk14 & 0x7C0) >> 6);

                if (gUnk_03006CC4 == r6) return;
                DmaCopy16(3, &r4[3 * ((sl->sub.unk0 & 0x3FFF) + sp18)], r6, 6); // excluding affine params
                sp1C = r6->all.attr1 & 0x1FF;
                sp20 = r6->all.attr0 & 0xFF;
                r6->all.attr1 &= 0xFE00;
                r6->all.attr0 &= 0xFE00;
                r6->all.attr2 += sb->unk1F << 12;
                if (sb->unk8 & 0x20) {
                    r6->all.attr0 |= 0x100;
                    if (sb->unk8 & 0x40)
                        r6->all.attr0 |= 0x200;
                    r6->all.attr1 |= (sb->unk8 & 0x1F) << 9;
                } else {
                    u32 r2 = ((r6->all.attr0 & 0xC000) >> 12) | ((r6->all.attr1 & 0xC000) >> 14);
                    u32 r1 = (sb->unk8 >> 11) & 1;
                    u32 r0 = sl->sub.unk0 >> 15;

                    if (r1 != r0) {
                        r6->all.attr1 ^= 0x2000;
                        sp20 = sp14[0] - gUnk_08D6084C[r2][1] - sp20;
                    }

                    r1 = sb->unk8;
                    r1 >>= 10;
                    r0 = sl->sub.unk0 >> 14;
                    if ((r0 ^ r1) & 1) {
                        r6->all.attr1 ^= 0x1000;
                        sp1C = sp10[0] - gUnk_08D6084C[r2][0] - sp1C;
                    }
                }
                
                r6->all.attr0 |= (sb->unk8 & 0x180) * 8;
                r6->all.attr2 |= (sb->unk8 & 0x3000) >> 2;
                r6->all.attr0 += (sp04[0] + sp20) & 0xFF;
                r6->all.attr1 += (sp00[0] + sp1C) & 0x1FF;
                if (r6->all.attr0 & 0x2000)
                    r6->all.attr2 += r6->all.attr2 & 0x3FF;
                r6->all.attr2 += (sb->unk0 - 0x6010000u) >> 5;
#ifndef NONMATCHING
                asm("":::"r8");
#endif
                for (i = 0; i < sp0C; ++i) {
                    OamData *r5 = sub_08156D84((sb->unk14 & 0x7C0) >> 6);

                    if (gUnk_03006CC4 == r6) return;
                    DmaCopy16(3, r6, r5, 6);
                    r5->all.attr1 &= 0xFE00;
                    r5->all.attr0 &= 0xFF00;
                    r5->all.attr0 += (sp08[2 * i + 1] + sp28 + sp20) & 0xFF;
                    r5->all.attr1 += (sp08[2 * i + 0] + sp24 + sp1C) & 0x1FF;
                }
            }
        }
    }
}

OamData *sub_08156D84(u8 r5) {
    if (r5 > 0x1f) r5 = 0x1f;
    if ((s8)gUnk_030024F0 < 0) {
        return gUnk_03006CC4;
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
    OamData *r5 = gOamBuffer;
    u8 j = 0;
    s32 i;
    s8 r0;
    u8 *unused;

    for (i = 0; i < 0x20; i++) {
        for (r0 = gUnk_03002450[i]; r0 != -1; r0 = gUnk_030031C0[r0].all.affineParam) {
            unused = gUnk_030035F0;
            DmaCopy16(3, gUnk_030031C0 + r0, r5, 6);
            r5++;
            gUnk_030035F0[r0] = j++;
            unused++; unused--;
            
        }
    }

    if (gUnk_03002440 & 0x800) {
        i = gUnk_030024F0;
        r5 = gOamBuffer + gUnk_030024F0;
        for (; i < gUnk_03003A00; i++) {
            DmaFill16(3, 0x200, r5, 0x6);
            r5++;
        }
    } else {
        if (gUnk_03002440 & 0x400) {
            s32 j;
            i = gUnk_030024F0 - 1;
            r5 = gOamBuffer + i; // not used, but can force r5 to be preloaded
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
    if (gUnk_03002440 & 0x4000) {
        CpuFill32(~0, gUnk_03002450, 0x20);
        CpuFill32(~0, gUnk_03006080, 0x20);
    }
    else {
        DmaFill32(3, ~0, gUnk_03002450, 0x20);
        DmaFill32(3, ~0, gUnk_03006080, 0x20);
    }
}

s32 sub_0815700C(union Unk_03003674_0_MixedAccess *a1, struct Sprite *sprite) {
    sprite->unkE -= a1->u32s.unk4;
    return 1;
}

s32 sub_08157018(union Unk_03003674_0_MixedAccess *a1, struct Sprite *sprite) {
    sprite->unk8 |= 0x4000;
    return 0;
}

s32 sub_08157028(union Unk_03003674_0_MixedAccess *a1, struct Sprite *sprite) {
    sprite->unkE += 2;
    m4aSongNumStart(a1->u16s.unk4);
    return 1;
}

s32 sub_0815703C(union Unk_03003674_0_MixedAccess *a1, struct Sprite *sprite) {
    sprite->unkE += 2;
    sprite->unk10 += a1->u16s.unk4;
    sprite->unk12 += a1->u16s.unk6;
    return 1;
}

s32 sub_08157058(union Unk_03003674_0_MixedAccess *a1, struct Sprite *sprite) {
    sprite->unkE += 3;
    return 1;
}

s32 sub_08157064(union Unk_03003674_0_MixedAccess *a1, struct Sprite *sprite) {
    sprite->unkE += 2;
    sprite->unkC = a1->u16s.unk4;
    sprite->unk1B = 0xFF;
    sprite->unk1A =a1->u16s.unk6;
    return -1;
}

s32 sub_0815707C(union Unk_03003674_0_MixedAccess *a1, struct Sprite *sprite) {
    sprite->unkE += 4;
    return (intptr_t)a1; // no return
}

s32 sub_08157084(union Unk_03003674_0_MixedAccess *a1, struct Sprite *sprite) {
    sprite->unkE += 2;
    sprite->unk8 = (sprite->unk8 & 0xFFFFCFFF) | (a1->u32s.unk4 << 12);
    return 1;
}

s32 sub_081570A0(union Unk_03003674_0_MixedAccess *a1, struct Sprite *sprite) {
    sprite->unkE += 2;
    sprite->unk14 = a1->u32s.unk4 << 6;
    return 1;
}
