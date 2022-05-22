#include "task.h"
#include "main.h"
#include "pause_fade.h"

void CreatePauseFade(s8 arg0, u32 arg1) {
    struct Task* task = TaskCreate(PauseFadeMain, sizeof(struct PauseFadeStruct), 0x100, TASK_x0004, NULL);
    struct PauseFadeStruct *fade, *fade2;

    fade2 = TaskGetStructPtr(task, fade);
    if (arg0 > 0) {
        fade2->unk3 = 0;
        fade2->unk0 = 0;
    }
    else {
        fade2->unk3 = 1;
        fade2->unk0 = 0x1f0;
    }
    
    if (arg1 != 0) {
        fade2->unk3 |= 0x10;
        gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    }
    else {
        fade2->unk3 |= 0x20;
        gBldRegs.bldCnt = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    }
    fade2->unk2 = arg0;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(1, 0);
    gBldRegs.bldY = fade2->unk0 >> 4;
}

void CreatePauseFadeSetBldCnt(s8 arg0, u32 arg1) {
    struct Task* task = TaskCreate(PauseFadeMain, sizeof(struct PauseFadeStruct), 0x100, TASK_x0004, NULL);
    struct PauseFadeStruct *fade, *fade2;

    fade2 = TaskGetStructPtr(task, fade);
    if (arg0 > 0) {
        fade2->unk3 = 0;
        fade2->unk0 = 0;
    }
    else {
        fade2->unk3 = 1;
        fade2->unk0 = 0x1f0;
    }
    
    if (arg1 != 0) {
        fade2->unk3 |= 0x10;
        gBldRegs.bldCnt = 0;
    }
    else {
        fade2->unk3 |= 0x20;
        gBldRegs.bldCnt = arg1;
    }
    fade2->unk2 = arg0;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(1, 0);
    gBldRegs.bldY = fade2->unk0 >> 4;
}

void PauseFadeMain(void) {
    struct PauseFadeStruct* fade;
    TaskGetStructPtr(gCurTask, fade);
    fade->unk0 += fade->unk2;
    gBldRegs.bldY = (fade->unk0 & 0x1f0) >> 4;
    if (fade->unk0 & 0x200) {
        if (fade->unk3 & 0x80) {
            if (fade->unk3 & 1) {
                gBldRegs.bldY = 1;
            }
            else {
                gBldRegs.bldY = 0x1e;
            }
        }
        else {
            if (fade->unk3 & 1) {
                gBldRegs.bldY = fade->unk3 & 0x80;
            }
            else {
                gBldRegs.bldY = 0x1f;
            }
        }
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0);
        TaskDestroy(gCurTask);
    }
}
