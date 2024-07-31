#include "global.h"
#include "data.h"
#include "intro.h"
#include "malloc_vram.h"
#include "random.h"

void sub_08145D1C(struct Task *);
void sub_08145D94(void);
void sub_08145F38(struct Unk_08145B64 *);
void sub_08146018(struct Unk_08145B64 *);
void sub_081460CC(struct Unk_08145B64 *);
void sub_081461AC(struct Unk_08145B64 *);
void sub_08146398(struct Unk_08145B64 *, u8);
void sub_08146414(struct Unk_08145B64 *, u8);
void sub_081464D4(struct Unk_08145B64 *, u8);
void sub_0814669C(struct Unk_08145B64 *, const struct Unk_08387814 *);
void sub_0814682C(struct Unk_08145B64 *, struct Unk_08145B64_5EC *);
void sub_081469D4(struct Unk_08145B64 *, struct Unk_08145B64_5EC *);
bool32 sub_08148CD8(struct Unk_08145B64 *);
void sub_081494E4(struct Unk_08145B64 *);
void sub_08149628(struct Unk_08145B64 *);
void sub_0814963C(struct Unk_08145B64 *);
void nullsub_133(struct Unk_08145B64 *);
void sub_08149680(struct Unk_08145B64 *);
void sub_081496C8(struct Unk_08145B64 *);
void sub_08149710(struct Unk_08145B64 *, u8);
void sub_08149758(struct Unk_08145B64 *);
void nullsub_134(struct Unk_08145B64 *);
bool32 sub_081497B0(struct Unk_08145B64 *);

extern const struct Unk_08387348 gUnk_08387348[];
extern const u8 gUnk_083877A8[][8];
extern const u16 gUnk_083877D2[2];
extern const u16 gUnk_083877D6[2];
extern const u16 gUnk_083877DA[2];
extern const u16 gUnk_083877EE[];
extern const struct Unk_08387814 gUnk_08387814[];
extern const u8 gUnk_08387D54;

extern const u16 gUnk_08D62530[][3];

void sub_08145B64(u16 a1) {
    u8 i;
    struct Task *t;
    struct Unk_08145B64 *var, *tmp;

    gVramHeapMaxTileSlots = 0x400;
    gVramHeapStartAddr = 0x6010000;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG_ALL_ON | DISPCNT_OBJ_1D_MAP;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(30) | BGCNT_TXT512x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(26) | BGCNT_TXT512x256;
    gBgCntRegs[3] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(24) | BGCNT_TXT512x256;
    for (i = 0; i < 4; ++i)
        gBgScrollRegs[i][0] = gBgScrollRegs[i][1] = 0;
    gBgScrollRegs[2][0] = gBgScrollRegs[3][0] = 0x10;
    t = TaskCreate(sub_08145D94, sizeof(struct Unk_08145B64), 0x1000, TASK_USE_IWRAM, sub_08145D1C);
    tmp = TaskGetStructPtr(t);
    var = tmp;
    CpuFill16(0, var, sizeof(struct Unk_08145B64));
    var->unk13F8 = sub_08148CD8;
    var->unk1408 = sub_08149758;
    var->unk1410 = sub_0814963C;
    var->unk140C = a1;
    var->unkC = 1;
    var->unk8 = 1;
    var->unk4 = 1;
    for (i = 0; i < 2; ++i)
        var->unk3C[i] = sub_08149710;
    for (i = 0; i < 0x20; ++i)
        var->unk548[i] = &var->unk48[i];
    for (i = 0; i < 0x40; ++i)
        var->unk12EC[i] = &var->unk5EC[i];
    var->unk13EC = var->unk13F0 = NULL;
    for (i = 0; i < 0x10; ++i)
        var->unk12[i] = 0xFF;
}

void sub_08145D1C(struct Task *t) {
    struct Unk_08145B64 *tmp = TaskGetStructPtr(t), *var = tmp;
    u8 i;

    for (i = 0; i < 0x20; ++i) {
        struct Sprite *sprite = &var->unk48[i];

        if (sprite->tilesVram) {
            VramFree(sprite->tilesVram);
            sprite->tilesVram = 0;
        }
    }
    gBgScrollRegs[0][0] = 0x100;
    gBgScrollRegs[0][1] = 0;
    for (i = 1; i < 4; ++i)
        gBgScrollRegs[i][0] = gBgScrollRegs[i][1] = 0;
}

void sub_08145D94(void) {
    struct Unk_08145B64 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    u8 i;

    ++var->unk0;
    var->unkC = var->unk4;
    var->unk4 = var->unk8;
    sub_08149680(var);
    sub_08149628(var);
    for (i = 0; i < 2; ++i)
        if (var->unk3C[i])
            var->unk3C[i](var, i);
    if (var->unk1408)
        var->unk1408(var);
    sub_081497B0(var);
    if (gPressedKeys & (START_BUTTON | A_BUTTON | B_BUTTON)
        && !(var->unk4 & 0x10038)) {
        var->unk4 |= 0x10000;
        var->unk8 |= 0x10000;
        var->unk1408 = NULL;
        var->unk1400 = sub_081494E4;
    }
    if (var->unk1400)
        var->unk1400(var);
    if (!var->unk13F8(var))
        sub_081496C8(var);
}

void sub_08145E84(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(614);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (unk0 >= gUnk_083877EE[0xA]) {
        a1->unk1418 = (gUnk_083877EE[0xB] - gUnk_083877EE[0xA]) / 3;
        ++a1->unk1416;
        a1->unk1417 = 0;
        a1->unk1410 = sub_08145F38;
    }
}

void sub_08145F38(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(614);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (++a1->unk1417 >= a1->unk1418) {
        a1->unk1417 = 0;
        if (++a1->unk1416 > 3) {
            a1->unk1410 = sub_08146018;
            return;
        }
    }
    if (unk0 >= gUnk_083877EE[0xB]) {
        ++a1->unk1416;
        a1->unk1410 = sub_08146018;
    }
}

void sub_08146018(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(613);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (unk0 >= gUnk_083877EE[0xC]) {
        a1->unk1418 = (gUnk_083877EE[0xD] - gUnk_083877EE[0xC]) / 3;
        --a1->unk1416;
        a1->unk1417 = 0;
        a1->unk1410 = sub_081460CC;
    }
}

void sub_081460CC(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(614);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (++a1->unk1417 >= a1->unk1418) {
        a1->unk1417 = 0;
        if (--a1->unk1416 == 0) {
            a1->unk1410 = sub_081461AC;
            return;
        }
    }
    if (unk0 >= gUnk_083877EE[0xD]) {
        --a1->unk1416;
        a1->unk1410 = sub_081461AC;
    }
}

void sub_081461AC(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    if (++a1->unk1419 > 4) {
        a1->unk1419 = 0;
        m4aSongNumStart(614);
    }
    if (unk0 & 1)
        a1->unk1415 = gUnk_083877A8[a1->unk1416][Rand32() & 7];
    if (unk0 >= gUnk_083877EE[0xE])
        a1->unk1410 = nullsub_133;
}

void sub_0814623C(struct Unk_08145B64 *a1) {
    u32 unk0 = a1->unk0;

    ++a1->unk1417;
    if (a1->unk1417 == a1->unk1418 - 2) {
        m4aSongNumStart(614);
        a1->unk1415 = (Rand32() & 3) - 1;
    } else if (a1->unk1417 == a1->unk1418) {
        a1->unk1417 = 0;
        a1->unk1418 = (Rand32() & 0x1F) + 3;
        a1->unk1415 = 0;
        a1->unk1414 = 0;
    }
    if (unk0 >= gUnk_083877EE[0xE]) {
        a1->unk1415 = 0;
        a1->unk1414 = 0;
        a1->unk1410 = nullsub_133;
    }
}

void sub_08146308(struct Unk_08145B64 *a1, u8 a2) {
    u8 bg = a2 + 2;
    u16 cnt[2];

    memcpy(cnt, gUnk_083877D2, sizeof(gUnk_083877D2));
    a1->unk32[a2] += a1->unk36[a2];
    gBgScrollRegs[bg][0] = a1->unk32[a2] >> 6;
    if (gBgScrollRegs[bg][0] >= 0x100) {
        gBgCntRegs[bg] = cnt[a2];
        gBgScrollRegs[bg][0] -= 0x100;
        a1->unk32[a2] -= 0x4000;
        a1->unk3C[a2] = sub_08146398;
    }
}

void sub_08146398(struct Unk_08145B64 *a1, u8 a2) {
    u8 bg = a2 + 2;

    a1->unk32[a2] += a1->unk36[a2];
    gBgScrollRegs[bg][0] = a1->unk32[a2] >> 6;
    if (gBgScrollRegs[bg][0] >= 0x100) {
        gBgScrollRegs[bg][0] -= 0x100;
        a1->unk32[a2] -= 0x4000;
    }
    if (a1->unk0 >= gUnk_083877EE[3 * a2 + 5])
        a1->unk3C[a2] = sub_08146414;
}

void sub_08146414(struct Unk_08145B64 *a1, u8 a2) {
    u8 bg = a2 + 2;
    u16 cnt[2];
    u16 r8 = gBgScrollRegs[bg][0];

    memcpy(cnt, gUnk_083877D6, sizeof(gUnk_083877D6));
    a1->unk32[a2] += a1->unk36[a2];
    gBgScrollRegs[bg][0] = a1->unk32[a2] >> 6;
    if (gBgScrollRegs[bg][0] >= 0x100) {
        gBgScrollRegs[bg][0] -= 0x100;
        a1->unk32[a2] -= 0x4000;
    }
    if (r8 < 0x10 && gBgScrollRegs[bg][0] >= 0x10) {
        gBgCntRegs[bg] = cnt[a2];
        gBgScrollRegs[bg][0] += 0x100;
        a1->unk32[a2] += 0x4000;
        a1->unk3C[a2] = sub_081464D4;
    }
}

void sub_081464D4(struct Unk_08145B64 *a1, u8 a2) {
    u8 bg = a2 + 2;
    u16 cnt[2];

    memcpy(cnt, gUnk_083877DA, sizeof(gUnk_083877DA));
    a1->unk32[a2] += a1->unk36[a2];
    gBgScrollRegs[bg][0] = a1->unk32[a2] >> 6;
    if (gBgScrollRegs[bg][0] >= 0x200) {
        a1->unk32[a2] = 0;
        gBgScrollRegs[bg][0] = 0;
        gDispCnt &= ~cnt[a2];
        a1->unk3C[a2] = NULL;
    }
}

void sub_0814654C(struct Unk_08145B64 *a1) {
    ++a1->unk140E;
    gBldRegs.bldY = 0x10 * a1->unk140E / gUnk_083877EE[0x11];
    if (a1->unk140E >= gUnk_083877EE[0x11]) {
        gBgCntRegs[1] = BGCNT_PRIORITY(3) | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(28) | BGCNT_16COLOR | BGCNT_TXT256x256;
        gBldRegs.bldCnt = BLDCNT_TGT1_BG0 | BLDCNT_TGT2_BG1 | BLDCNT_EFFECT_BLEND;
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0x10, 0x10);
        gBldRegs.bldY = 0;
        a1->unk8 &= ~0x20;
        a1->unk1408 = nullsub_134;
    }
}

bool32 sub_081465C4(struct Unk_08145B64 *a1) {
    if (a1->unk10 >= gUnk_08387D54)
        return TRUE;
    else {
        if (!(a1->unk4 & 1)) {
            if (a1->unkC & 1 && a1->unk4 & 2) {
                u16 i;

                for (i = 0; i <= a1->unk0; ++i) {
                    for (; i == gUnk_08387814[a1->unk10].unk0; ++a1->unk10)
                        sub_0814669C(a1, &gUnk_08387814[a1->unk10]);
                }
            } else {
                for (; a1->unk0 == gUnk_08387814[a1->unk10].unk0; ++a1->unk10)
                        sub_0814669C(a1, &gUnk_08387814[a1->unk10]);
            }
        }
        return FALSE;
    }
}

void sub_0814669C(struct Unk_08145B64 *a1, const struct Unk_08387814 *a2) {
    struct Unk_08145B64_5EC *v4;

    if (gUnk_08D62530[a2->unk4][2]) {
        ++a1->unk13F6;
        v4 = a1->unk12EC[a1->unk13F4];
        CpuFill16(0, v4, sizeof(struct Unk_08145B64_5EC));
        // TODO: -0x3B13B13B is 0xC4EC4EC5 when unsigned, which is the multiplicative inverse for 0xD (mod 2^32). But how is it relevant here?
        v4->unk4 = (s32)(({(s32)v4 - offsetof(struct Unk_08145B64, unk5EC);}) - (s32)a1) * -0x3B13B13B >> 2;
        a1->unk13F4 = (a1->unk13F4 + 1) & 0x3F;
        if (a1->unk13F6 == 1) {
            a1->unk13EC = a1->unk13F0 = v4;
            v4->unk14 = NULL;
        } else {
            a1->unk13F0->unk18 = v4;
            v4->unk14 = a1->unk13F0;
            a1->unk13F0 = v4;
        }
        v4->unk18 = NULL;
        v4->unkA = ((gUnk_08387348[a2->unk4].unk2 >> 1) + 0xF0) * 0x40;
        v4->unkC = (-a2->unk7 + 0x78) << 6;
        v4->unkE = -(a2->unkA >> 2);
        v4->unk10 = -(({a2->unkC + 0;}) >> 2);
        v4->unk0 = a2->unk4;
        v4->unk1 = a2->unk5;
        v4->unk2 = a2->unk6;
        v4->unk6 = a2->unk9;
        v4->unk7 = a1->unk10;
        v4->unk20 = a1;
        v4->unk1C = gUnk_08387348[a2->unk4].unk8 ? gUnk_08387348[a2->unk4].unk8 : gUnk_08387348[a2->unk4].unkC[a2->unkE];
        v4->unk1 = a2->unk5 - 1;
        v4->unk5 = 0x10 - a2->unk8;
        if (v4->unk1C != sub_08146CE4) {
            v4->unk2 = 0;
            v4->unk1 = 0xFF;
        }
        if (gUnk_08387348[v4->unk0].unk4)
            gUnk_08387348[v4->unk0].unk4(v4, a2);
        if (v4->unk0 > 0 && v4->unk0 < 5)
            sub_081469D4(a1, v4);
        else
            sub_0814682C(a1, v4);
    }
}
