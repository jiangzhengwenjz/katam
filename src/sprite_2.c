#include "global.h"
#include "data.h"
#include "sprite.h"
#include "functions.h"

// not referenced
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
