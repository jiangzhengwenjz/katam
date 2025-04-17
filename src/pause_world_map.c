#include "pause_world_map.h"
#include "functions.h"
#include "pause_fade.h"

static void sub_08125B3C(void);

void sub_08125828(void);
void sub_08125C80(void);
void sub_08125D60(void);
void sub_08126558(void);
void sub_08125E74(void);
void sub_08126A78(u32);
void sub_08126AAC(u32);
void sub_08126AE0(void);
void sub_08127214(void);

// In code_08124BE0.s
extern void sub_08124EA0(void);
extern void sub_08124EC8(void);
extern void sub_08125088(void*, u8); // arg1 is probably playerID
extern void sub_08125690(void);
extern void sub_0812595C(void*);

// TODO: Check VRAM Addresses for fitting defines

void sub_08125A4C(u32 arg0) {
    struct Task* task;
    struct PauseWorldMapStruct *tmp, *worldmap;

    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(22) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(24) | BGCNT_TXT256x256;
    gBgScrollRegs[0][0] = 0x8;
    gBgScrollRegs[0][1] = 0x8;
    gBgScrollRegs[1][0] =   0;
    gBgScrollRegs[1][1] =   0;
    gBgScrollRegs[2][0] = 0x8;
    gBgScrollRegs[2][1] = 0x8;

    task = TaskCreate(sub_08125B3C, sizeof(struct PauseWorldMapStruct), 0x1000, TASK_x0004, NULL);
    worldmap = tmp = TaskGetStructPtr(task);
    worldmap->unk20C = 0;

    if (arg0) {
        worldmap->unk208 = 1;
        worldmap->unk20C = (u8) arg0; // strb is called, but declaring arg0 to be u8 invokes bitshifts at the beginning of the function
        CpuFill32(0, (void *)BG_VRAM, BG_VRAM_SIZE);
        task->main = sub_08125D60;
    }
    else {
        sub_08127214();
    }

    worldmap->unk20A = 0;
    worldmap->unk20E = 0;
    worldmap->unk210 = 0;
    worldmap->unk214 = 0;
    worldmap->unk211 = 0;
}

static void sub_08125B3C(void) {
    s32 index;
    struct PauseWorldMapStruct* tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    sub_08125690();
    gCurTask->main = sub_08125C80;
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);
    CpuFill32(0, (void *)0x06004000, 0x2000);

    // Almost looks like BgInit, but unfortunately not quite
    // - The order is off and scrollX/Y is missing
    // TODO: Macro if this appears thrice
    worldmap->unk0.unkA          = 0;
    worldmap->unk0.unk18         = 0;
    worldmap->unk0.unk1A         = 0;
    worldmap->unk0.unk1C         = 0xb6;
    worldmap->unk0.unk1E         = 0;
    worldmap->unk0.unk20         = 0;
    worldmap->unk0.unk22         = 0;
    worldmap->unk0.unk24         = 0;
    worldmap->unk0.unk26         = 0x20;
    worldmap->unk0.unk28         = 0x16;
    worldmap->unk0.prevScrollX   = 0x7fff;
    worldmap->unk0.prevScrollY   = 0x7fff;
    worldmap->unk0.paletteOffset = 0;
    worldmap->unk0.unk4          = 0x06004000;
    worldmap->unk0.unk2E         = 0x19;
    worldmap->unk0.tilemapVram   = 0x0600b000;
    LZ77UnCompVram(&gUnk_081E08FC, (void *)worldmap->unk0.unk4);
    sub_08153060(&worldmap->unk0);
    CpuFill16(0, (void *)0x0600c000, 0x600);
    CpuCopy32(&gUnk_0835A3CC, (void *)0x0600c000, 0x500);

    sub_08125088(&worldmap->unk40[0][0], 0);
    sub_08125088(&worldmap->unk40[1][0], 1);
    sub_08125088(&worldmap->unk40[2][0], 2);
    sub_08125088(&worldmap->unk40[3][0], 3);

    sub_08125828();

    for (index = 1; index <= 0xf; index++) {
        sub_08126A78(index);
        if (!(sub_08002A5C(gUnk_08359C08[index]))) {
            sub_08126AAC(index);
        }
    }

    sub_0812595C(&worldmap->unk0);
}

void sub_08125C80(void) {
    u8 r3;
    struct PauseWorldMapStruct* tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    if (gUnk_0203ACC0[0].unkE & 0x1000 ||
        gUnk_0203ACC0[1].unkE & 0x1000 ||
        gUnk_0203ACC0[2].unkE & 0x1000 ||
        gUnk_0203ACC0[3].unkE & 0x1000) {
        m4aSongNumStart(506);
        sub_08124EC8();
        gCurTask->main = sub_08126AE0;
        sub_0812595C(worldmap);
    }
    else {
        sub_0812595C(worldmap);

        for(r3 = 0; r3 <= 3; r3++) {
            if (gUnk_0203ACC0[r3].unkE & 0x02 &&
            (gUnk_0203ACC0[r3].unkD == 0x01 || gUnk_0203ACC0[r3].unkD == 0x04)) {
                worldmap->unk210 = gUnk_0203ACC0[r3].unkD;
                CreatePauseFade(0x20, 1);
                gCurTask->main = sub_08126558;
                return;
            }
        }
    }
}

void sub_08125D60(void) {
    u16 color;
    struct PauseWorldMapStruct* tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    if (worldmap->unk20E++ <= 0xa) return;
    worldmap->unk20E = 0;

    gCurTask->main = sub_08125E74;
    sub_08125690();
    CpuFill32(0, (void *)0x06004000, 0x2000);

    worldmap->unk0.unkA          = 0;
    worldmap->unk0.unk18         = 0;
    worldmap->unk0.unk1A         = 0;
    worldmap->unk0.unk1C         = 0xb6;
    worldmap->unk0.unk1E         = 0;
    worldmap->unk0.unk20         = 0;
    worldmap->unk0.unk22         = 0;
    worldmap->unk0.unk24         = 0;
    worldmap->unk0.unk26         = 0x20;
    worldmap->unk0.unk28         = 0x16;
    worldmap->unk0.prevScrollX   = 0x7fff;
    worldmap->unk0.prevScrollY   = 0x7fff;
    worldmap->unk0.paletteOffset = 0;
    worldmap->unk0.unk4          = 0x06004000;
    worldmap->unk0.unk2E         = 0x19;
    worldmap->unk0.tilemapVram   = 0x0600b000;
    LZ77UnCompVram(&gUnk_081E08FC, (void *)worldmap->unk0.unk4);
    sub_08153060(&worldmap->unk0);
    CpuFill16(0, (void *)0x0600c000, 0x600);
    CpuCopy32(&gUnk_0835A3CC, (void *)0x0600c000, 0x500);

    sub_08124EA0();
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);
    color = RGB_WHITE;
    sub_0803D21C(&color, 0, 1);
}
