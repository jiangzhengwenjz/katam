#include "data.h"
#include "functions.h"
#include "global.h"
#include "malloc_vram.h"
#include "sprite.h"

// From code_08032E98.s
extern bool8 sub_0803D1A4(u8 arg0);
extern void sub_0803D208(u32 arg0);

struct Unk_08123950_84 {
    /* 0x00 */ struct Sprite unk0;
    /* 0x28 */ u16 unk28;
    /* 0x2A */ u16 unk2A;
    /* 0x2C */ s16 unk2C;
    /* 0x2E */ u16 unk2E;
    /* 0x30 */ u16 unk30;
}; /* size = 0x34 */

struct Unk_08123950 {
    /* 0x000 */ struct Background unk0;
    /* 0x040 */ struct Background unk40;
    /* 0x080 */ u32 unk80;
    /* 0x084 */ struct Unk_08123950_84 unk84[7];
}; /* size = 0x1F0 */

struct Unk_08357F5C {
    /* 0x00 */ u32 unk0[4];
}; /* size = 0x10 */

struct Unk_08357F6C {
    /* 0x00 */ u32 unk0[4][2];
}; /* size = 0x10 */

static const u16 sUnk_08357F54[4] = {0x321, 0x321, 0x321, 0x321};

static const struct Unk_08357F5C sUnk_08357F5C = {1, 1, 1, 1};

static const struct Unk_08357F6C sUnk_08357F6C = {{
    {0x4000, 0x4000},
    {0x4000, 0x4000},
    {0x4000, 0x4000},
    {0x4000, 0x4000},
}};

static const u8 sUnk_08357F8C[0xe] = {
    0x82, 0x01, 0x39, 0x01, 0x20, 0x01, 0x6c, 0x01, 0x20, 0x01, 0x31, 0x01, 0x3a, 0x01,
};

void sub_08123F18(void);

// TODO: Find out where these functions are called
// Except for sub_08123FD4, nothing else in the binary seems to call these functions.
// The most likely contender would be sub_08123950, as it looks like a Create* function.

void sub_08123950(void) {
    struct Task* task;
    struct Unk_08123950* unk;

    gUnk_03002E60 = (union Unk_03002E60*)&gUnk_082D7850;
    gDispCnt = DISPCNT_OBJ_ON | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_1D_MAP | DISPCNT_MODE_0;
    gBgCntRegs[0] = BGCNT_TXT256x256 | BGCNT_SCREENBASE(18) | BGCNT_16COLOR | BGCNT_CHARBASE(0) | BGCNT_PRIORITY(1);
    gBgCntRegs[1] = BGCNT_TXT256x256 | BGCNT_SCREENBASE(22) | BGCNT_16COLOR | BGCNT_CHARBASE(1) | BGCNT_PRIORITY(1);
    DmaFill32(3, 0, (void*)BG_VRAM, 0x40);

    gUnk_030060A0.parts[0] = 0;
    gUnk_03002E80[0] = 0;
    gUnk_03002E80[1] = 0;
    gUnk_03002E80[2] = 0xff;
    gUnk_03002E80[3] = 0x40;

    gBgScrollRegs[0][0] = 0;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;

    task = TaskCreate(sub_08123F18, sizeof(struct Unk_08123950), 0x100, TASK_USE_IWRAM, NULL);
    unk = TaskGetStructPtr(task);
    unk->unk80 = 0;

    CpuFill16(0, &unk->unk0, sizeof(struct Background));
    unk->unk0.tilesVram = (u32)BG_CHAR_ADDR(0);
    unk->unk0.unkA = 0;
    unk->unk0.tilemapVram = (u32)BG_SCREEN_ADDR(18);
    unk->unk0.unk18 = 0;
    unk->unk0.unk1A = 0;
    unk->unk0.unk1C = 2;
    unk->unk0.unk1E = 0;
    unk->unk0.unk20 = 0;
    unk->unk0.unk22 = 0;
    unk->unk0.unk24 = 0;
    unk->unk0.unk26 = 0x1e;
    unk->unk0.unk28 = 0x14;
    unk->unk0.prevScrollX = 0x7fff;
    unk->unk0.prevScrollY = 0x7fff;
    unk->unk0.paletteOffset = 0;
    unk->unk0.unk2E = 0;
    sub_08153060(&unk->unk0);

    CpuFill16(0, &unk->unk40, sizeof(struct Background));
    unk->unk40.tilesVram = (u32)BG_CHAR_ADDR(1);
    unk->unk40.unkA = 0;
    unk->unk40.tilemapVram = (u32)BG_SCREEN_ADDR(22);
    unk->unk40.unk18 = 0;
    unk->unk40.unk1A = 0;
    unk->unk40.unk1C = 3;
    unk->unk40.unk1E = 0;
    unk->unk40.unk20 = 0;
    unk->unk40.unk22 = 0;
    unk->unk40.unk24 = 0;
    unk->unk40.unk26 = 0x1e;
    unk->unk40.unk28 = 0x14;
    unk->unk40.prevScrollX = 0x7fff;
    unk->unk40.prevScrollY = 0x7fff;
    unk->unk40.paletteOffset = 0;
    unk->unk40.unk2E = 1;
    sub_08153060(&unk->unk40);

    CpuFill16(0, (void*)BG_VRAM + 0x5000, 0x20);
    unk->unk84[0].unk2C = 31;
    unk->unk84[0].unk2E = 5;
    unk->unk84[0].unk30 = 2;
    unk->unk84[0].unk2A = 0;
    unk->unk84[0].unk28 = 2;
    SpriteInitNoFunc(&unk->unk84[0].unk0, VramMalloc(0x20), 0x4c0, 1, 0, 0, 0xff, 0x10, 0, unk->unk84[0].unk2C * 8 - 4, unk->unk84[0].unk2E * 8,
                     0x400);

    unk->unk84[1].unk2C = 31;
    unk->unk84[1].unk2E = 7;
    unk->unk84[1].unk30 = 3;
    unk->unk84[1].unk2A = 0;
    unk->unk84[1].unk28 = 4;
    SpriteInitNoFunc(&unk->unk84[1].unk0, VramMalloc(0x20), 0x4c0, 1, 0, 0, 0xff, 0x10, 0, unk->unk84[1].unk2C * 8 - 4, unk->unk84[1].unk2E * 8,
                     0x400);

    unk->unk84[2].unk2C = 31;
    unk->unk84[2].unk2E = 0xa;
    unk->unk84[2].unk30 = 2;
    unk->unk84[2].unk2A = 0;
    unk->unk84[2].unk28 = 3;
    SpriteInitNoFunc(&unk->unk84[2].unk0, VramMalloc(0x20), 0x4c0, 1, 0, 0, 0xff, 0x10, 0, unk->unk84[2].unk2C * 8 - 4, unk->unk84[2].unk2E * 8,
                     0x400);

    unk->unk84[3].unk2C = 31;
    unk->unk84[3].unk2E = 0xc;
    unk->unk84[3].unk30 = 1;
    unk->unk84[3].unk2A = 0;
    unk->unk84[3].unk28 = 1;
    SpriteInitNoFunc(&unk->unk84[3].unk0, VramMalloc(0x20), 0x4c0, 1, 0, 0, 0xff, 0x10, 0, unk->unk84[3].unk2C * 8 - 4, unk->unk84[3].unk2E * 8,
                     0x400);

    unk->unk84[4].unk2C = 31;
    unk->unk84[4].unk2E = 0xd;
    unk->unk84[4].unk30 = 3;
    unk->unk84[4].unk2A = 0;
    unk->unk84[4].unk28 = 2;
    SpriteInitNoFunc(&unk->unk84[4].unk0, VramMalloc(0x20), 0x4c0, 1, 0, 0, 0xff, 0x10, 0, unk->unk84[4].unk2C * 8 - 4, unk->unk84[4].unk2E * 8,
                     0x400);

    unk->unk84[5].unk2C = 31;
    unk->unk84[5].unk2E = 0;
    unk->unk84[5].unk30 = 5;
    unk->unk84[5].unk2A = 0;
    unk->unk84[5].unk28 = 1;
    SpriteInitNoFunc(&unk->unk84[5].unk0, VramMalloc(0x20), 0x4c0, 1, 0, 0, 0xff, 0x10, 0, unk->unk84[5].unk2C * 8 - 4, unk->unk84[5].unk2E * 8,
                     0x400);

    unk->unk84[6].unk2C = 31;
    unk->unk84[6].unk2E = 0x10;
    unk->unk84[6].unk30 = 4;
    unk->unk84[6].unk2A = 0;
    unk->unk84[6].unk28 = 3;
    SpriteInitNoFunc(&unk->unk84[6].unk0, VramMalloc(0x20), 0x4c0, 1, 0, 0, 0xff, 0x10, 0, unk->unk84[6].unk2C * 8 - 4, unk->unk84[6].unk2E * 8,
                     0x400);
}

void sub_08123E38(struct Unk_08123950_84* arg0) {
    if (arg0->unk2C < 0) return;

    if (arg0->unk2A >= arg0->unk28) {
        u32 r5;
        void* base = BG_SCREEN_ADDR(18);

        for (r5 = 0; r5 < arg0->unk30; r5++) {
            u32 disp = (arg0->unk2E + r5) * 0x40 + arg0->unk2C * 2;
            CpuFill16(0x280, base + disp, sizeof(u16));
        }

        arg0->unk2C--;
        arg0->unk2A = 0;
        arg0->unk0.x -= 8;
    }

    arg0->unk2A++;
}

void sub_08123EA8(void) {
    u16 sp4[4];
    struct Unk_08357F5C spC;
    struct Unk_08357F6C sp1C;

    memcpy(sp4, sUnk_08357F54, sizeof(sp4));
    spC = sUnk_08357F5C;
    sp1C = sUnk_08357F6C;

    if (sub_0803D1A4(0)) {
        sub_0803D208(0);
        sub_080332BC(1, 0, sp4, sp1C.unk0[0], spC.unk0);
        TaskDestroy(gCurTask);
    }
}

void sub_08123F18(void) {
    u8 UNUSED sp0[0xe];
    struct Unk_08123950 *unk, *tmp;

    memcpy(sp0, sUnk_08357F8C, sizeof(sUnk_08357F8C));
    unk = tmp = TaskGetStructPtr(gCurTask);
    unk->unk80++;

    if (unk->unk80 > 120) {
        u32 r5;
        for (r5 = 0; r5 < ARRAY_COUNT(unk->unk84); r5++) {
            sub_08123E38(&unk->unk84[r5]);
            sub_08155128(&unk->unk84[r5].unk0);
            sub_0815604C(&unk->unk84[r5].unk0);
        }
    }

    if (unk->unk80 > 240) {
        if (gPressedKeys & (A_BUTTON | START_BUTTON)) {
            sub_0803C95C(0);
            gCurTask->main = sub_08123EA8;
        }
        unk->unk80 = 250;
    }

    CpuFill16(0, BG_SCREEN_ADDR(10), 0x20);
}

void sub_08123FD4(void) {
    u16 sp0[4];
    struct Unk_08357F5C spC;
    struct Unk_08357F6C sp1C;
    u16 r4;

    for (r4 = 0; r4 < ARRAY_COUNT(sp0); r4++) {
        sub_08002C98(r4, &sp0[r4], &spC.unk0[r4], sp1C.unk0[r4]);
    }

    gUnk_0203AD1C[0] = gUnk_0203ADE0;
    gUnk_0203AD1C[3] = 0xff;
    gUnk_0203AD1C[2] = 0xff;
    gUnk_0203AD1C[1] = 0xff;
    gUnk_0203AD10 = 0;
    sub_080332BC(1, 0, sp0, sp1C.unk0[0], spC.unk0);
}
