#include "data.h"
#include "sprite.h"
#include "main.h"
#include "task.h"

// TODO: define file boundaries

struct R10Struct {
    u16 unk0, unk2, unk4, unk6;
    s16 unk8, unkA;
};

extern const u8 gUnk_08D6084C[][2];

/* unused function */
void sub_081569A0(struct Sprite *sb, u16 *sp08, u8 sp0C) {
    vs32 sp00[1], sp04[1];
    s32 sp10[1], sp14[1];
    u8 sp18, i;
    u32 sp1C, sp20, sp24, sp28;
    const struct R10Struct *sl;
    
    if (sb->unk4 != -1) {
        if (!(sb->unk4 >> 28))
            sl = (const void *)gUnk_03003674[1][sb->unkC] + sb->unk4 * 12;
        else
            sl = (const void *)gUnk_03003674[1][sb->unkC] + sb->unk4 * 16;

        sb->unk1E = sl->unk2;
        sp00[0] = sb->unk10;
        sp04[0] = sb->unk12;
        if (sb->unk8 & 0x20000) {
            sp00[0] -= gUnk_030023F4.unk0;
            sp04[0] -= gUnk_030023F4.unk2;
        }

        sp10[0] = sl->unk4;
        sp14[0] = sl->unk6;

        if (sb->unk8 & 0x20) {
            if (sb->unk8 & 0x40) {
                sp00[0] -= sl->unk4 >> 1;
                sp04[0] -= sl->unk6 >> 1;
                sp10[0] <<= 1;
                sp14[0] <<= 1;
            }
        } else {
            u32 r1;

            if (sb->unk8 & 0x800) {
                r1 = sl->unkA;
                r1 = sp14[0] - r1;
            } else {
                r1 = sl->unkA;
            }
            sp04[0] -= r1;
            
            if (sb->unk8 & 0x400) {
                r1 = sl->unk8;
                r1 = sp10[0] - r1;
            } else {
                r1 = sl->unk8;
            }
            sp00[0] -= r1;
        }

        sp24 = sp00[0] - sb->unk10;
        sp28 = sp04[0] - sb->unk12;
        if (sp00[0] + sp10[0] >= 0 && sp00[0] <= 240
            && sp04[0] + sp14[0] >= 0 && sp04[0] <= 160) {
            for (sp18 = 0; sp18 < sl->unk2; ++sp18) {
                const s16 *r4 = gUnk_03003674[2][sb->unkC];
                OamData *r6 = sub_08156D84((sb->unk14 & 0x7C0) >> 6);

                if (gUnk_03006CC4 == r6) return;
                DmaCopy16(3, &r4[3 * ((sl->unk0 & 0x3FFF) + sp18)], r6, 6); // excluding affine params
                sp1C = r6->all.attr1 & 0x1FF;
                sp20 = (u8)r6->all.attr0;
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
                    u32 r0 = sl->unk0 >> 15;

                    if (r1 != r0) {
                        r6->all.attr1 ^= 0x2000;
                        sp20 = sp14[0] - gUnk_08D6084C[r2][1] - sp20;
                    }

                    r1 = sb->unk8;
                    r1 >>= 10;
                    r0 = sl->unk0 >> 14;
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
    OamData* r5 = gOamBuffer;
    u8 j = 0;
    s32 i;
    s8 r0;
    u8* unused;

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
    }
    else {
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
        }
        else {
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
