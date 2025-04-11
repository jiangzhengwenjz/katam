#include "pause_world_map.h"
#include "data.h"
#include "task.h"
#include "main.h"

void sub_08125B3C(void);
void sub_08125D60(void);
void sub_08127214(void);

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
        worldmap->unk20C = (u8) arg0; // strb is called, but declaring arg0 to be u8 invokes lsl at the beginning of the function
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
