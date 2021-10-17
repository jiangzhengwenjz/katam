#include "global.h"
#include "data.h"
#include "sprite.h"
#include "functions.h"

// a lot of functions below seem to be unused? 
void sub_08153CB8(struct Unk_03002400 *ip) {
    struct LevelInfo_1A0 *r3 = gUnk_03002E60[ip->unk1C].x;
    u32 r4, r5;

    if (r3->unk6 && r3->unk7 <= ++ip->unk2C) {
        ip->unk2C = 0;
        if (r3->unk6 <= ++ip->unk2B)
            ip->unk2B = 0;
        r5 = r3->unk4;
        if (!(ip->unk2E & 0x200)) {
            if (!ip->unk2B)
                r4 = r3->unk8;
            else
                r4 = r3->unk8 + r3->unkC + (ip->unk2B-1) * r5;
        } else {
            r4 = ip->unk4 + r3->unkC + ip->unk2B * r5;
        }
        gUnk_03002EC0[gUnk_030039A4].unk0 = r4;
        gUnk_03002EC0[gUnk_030039A4].unk4 = ip->unk4;
        gUnk_03002EC0[gUnk_030039A4].unk8 = r5;
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
    }
}

s32 sub_08153D78(struct Sprite *r4) {
    if (r4->unk1B != r4->unk1A || r4->unk18 != r4->unkC) {
        r4->unk1B = r4->unk1A;
        r4->unk18 = r4->unkC;
        r4->unkE = 0;
        r4->unk16 = 0;
        r4->unk8 &= ~0x4000;
    }
    if (r4->unk8 & 0x4000) return 0;
    if (r4->unk16 > 0)
        r4->unk16 -= 0x10 * r4->unk1C;
    else {
        s32 ret;
        union Unk_03003674_0 ptr, r5, r1;
        const union Unk_03003674_0 *base;

        base = gUnk_03003674->unk0[r4->unkC];
        r5 = base[r4->unk1A];
        for (ptr.words = &r5.words[r4->unkE];
            ptr.words[0] < 0;
            ptr.words = &r5.words[r4->unkE]) {
            ret = gUnk_08D5FDE4[~ptr.words[0]](ptr, r4);
            if (ret != 1) {
                if (ret != -1) return ret;
                base = gUnk_03003674->unk0[r4->unkC];
                r1 = base[r4->unk1A];
                r4->unkE = 0;
                r5 = r1;
            }
        }
        r4->unk16 = (ptr.words[0] << 8) + r4->unk16 - 0x10 * r4->unk1C;
        r4->unk4 = ptr.words[1];
        r4->unk8 |= 0x4000000;
        r4->unkE += 2;
    }
    return 1;
}

s32 sub_08153E6C(struct Sprite *r5, s32 r6) {
    s32 ret;
    union Unk_03003674_0 ptr, r7, r1;
    const union Unk_03003674_0 *base;
    s32 r3, sb;
    s32 (*const *fpa)(union Unk_03003674_0, struct Sprite *);

    r6 = (u16)r6;
    r3 = 0;
    sb = 0;
    r5->unk1B = r5->unk1A;
    r5->unk18 = r5->unkC;
    r5->unkE = 0;
    r5->unk16 = 0;
    r5->unk8 &= ~0x4000;

    base = gUnk_03003674->unk0[r5->unkC];
    r7 = base[r5->unk1A];
    while (r6 >= 0) {
        for (ptr.words = &r7.words[r5->unkE];
            ptr.words[0] < 0;
            ptr.words = &r7.words[r5->unkE]) {
            fpa = gUnk_08D5FDE4;
            if (ptr.words[0] == -3)
                sb = r3;
            ret = fpa[~ptr.words[0]](ptr, r5);
            if (ret != 1) {
                if (ret != -1) return ret;
                base = gUnk_03003674->unk0[r5->unkC];
                r1 = base[r5->unk1A];
                r5->unkE = 0;
                r7 = r1;
            }
        }
        r5->unk16 = (ptr.words[0] << 8);
        r6 -= ptr.words[0];
        r5->unk16 = -(r6 << 8);
        if (sb && r6 > 0) {
            r6 = Mod(r6, sb);
        } else {
            r3 += ptr.words[0];
        }
        r5->unk4 = ptr.words[1];
        r5->unk8 |= 0x4000000;
        r5->unkE += 2;
    }
    return 1;
}

s32 sub_08153F80(union Unk_03003674_0 r2, struct Sprite *r4) {
    u32 r5;
    u16 r6;

    r4->unkE += 3;
    if (!(r4->unk8 & 0x80000)) {
        if (r2.words[1] < 0) {
            r5 = (u32)gUnk_03003674->unk14 + 0x40 * r2.words[1];
            r6 = 0x40 * r2.words[2];
        } else {
            r5 = (u32)gUnk_03003674->unk10 + 0x20 * r2.words[1];
            r6 = 0x20 * r2.words[2];
        }
        gUnk_03002EC0[gUnk_030039A4].unk0 = r5;
        gUnk_03002EC0[gUnk_030039A4].unk4 = r4->unk0;
        gUnk_03002EC0[gUnk_030039A4].unk8 = r6;
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
    }
    return 1;
}

s32 sub_08154010(union Unk_03003674_0 r5, struct Sprite *r3) {
    s32 idx;

    r3->unkE += 3;
    if (!(r3->unk8 & 0x40000)) {
        idx = r5.words[1];
        if (gUnk_03002440 & 0x10000) {
            sub_08158334(gUnk_03003674->unkC + 0x20 * idx,
                (0x10 * r3->unk1F + r5.hwords[5]) & 0xFF,
                r5.hwords[4]);
        } else {
            DmaCopy16(3,
                gUnk_03003674->unkC + 0x20 * idx,
                &gBgPalette[0x10 * r3->unk1F + r5.hwords[5]],
                r5.hwords[4] * 2);
            gUnk_03002440 |= 1;
        }
    }
    return 1;
}

s32 sub_081540A4(union Unk_03003674_0 r0, struct Sprite *r4) {
    u8 r3 = r0.words[1] & 0xF;

    r4->unkE += 3;
    DmaCopy32(3, r0.words+1, &r4->unk20[r3], sizeof(struct Sprite_20));
    if (!r0.words[2]) {
        r4->unk20[r3].unk0 = -1;
    } else {
        if (r4->unk8 & 0x800)
            XorSwap(r4->unk20[r3].unk5, r4->unk20[r3].unk7);
        if (r4->unk8 & 0x400)
            XorSwap(r4->unk20[r3].unk4, r4->unk20[r3].unk6);
    }
    return 1;
}
