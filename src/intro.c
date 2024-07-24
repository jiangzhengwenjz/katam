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
bool32 sub_08148CD8(struct Unk_08145B64 *);
void sub_081494E4(struct Unk_08145B64 *);
void sub_08149628(struct Unk_08145B64 *);
void sub_0814963C(struct Unk_08145B64 *);
void nullsub_133(struct Unk_08145B64 *);
void sub_08149680(struct Unk_08145B64 *);
void sub_081496C8(struct Unk_08145B64 *);
void sub_08149710(struct Unk_08145B64 *, u8);
void sub_08149758(struct Unk_08145B64 *);
bool32 sub_081497B0(struct Unk_08145B64 *);

extern const u8 gUnk_083877A8[][8];
extern const u16 gUnk_083877EE[];

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
    var->unk13EC = var->unk13F0 = 0;
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
