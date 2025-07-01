#include "pause_fade.h"
#include "data.h"
#include "main.h"
#include "subgames.h"
#include "task.h"

// TODO: pause_fade.c and subgames.c are probably one file

static void PauseFadeMain(void);
static void sub_08128C5C(void);

void sub_081288DC(struct Unk_08128F44_4* arg0) {
    if (arg0->unk34 & 0x0001) {
        arg0->unk0.unk8 |= 0x400;
    }

    if (arg0->unk34 & 0x0002) {
        arg0->unk0.unk8 |= 0x800;
    }

    if (arg0->unk34 & 0x1000)
        return;

    sub_0812A254(arg0);

    if (!(arg0->unk34 & 0x0100)) {
        if (sub_08155128(&arg0->unk0)) {
            arg0->unk34 &= ~0x0200;
            arg0->unk34 |= 0x0400;
        }
        else {
            if (arg0->unk34 & 0x0800) {
                arg0->unk0.unk1B = 0xff;
            }
            else {
                arg0->unk34 &= ~0x0400;
                arg0->unk34 |= 0x0200;
            }
        }

        if (arg0->unk40) {
            sub_081288DC(arg0->unk40);
        }
    }

    sub_081564D8(&arg0->unk0);
}

void sub_08128980(void) {
    struct Unk_0812D1EC_0* unk_0812D1EC_0 = TaskGetStructPtr(gCurTask);

    unk_0812D1EC_0->unk48 += unk_0812D1EC_0->unk4.unk30;
    unk_0812D1EC_0->unk4C += unk_0812D1EC_0->unk4.unk32;
    unk_0812D1EC_0->unk4.unk28 = unk_0812D1EC_0->unk48;
    unk_0812D1EC_0->unk4.unk2C = unk_0812D1EC_0->unk4C;

    if (unk_0812D1EC_0->unk52 & 0x0002) {
        unk_0812D1EC_0->unk4.unk28 = unk_0812D1EC_0->unk48 + unk_0812D1EC_0->unk0->unk28;
        unk_0812D1EC_0->unk4.unk2C += unk_0812D1EC_0->unk0->unk2C;
    }

    sub_081288DC(&unk_0812D1EC_0->unk4);

    if (unk_0812D1EC_0->unk52 & 0x0001) {
        if (unk_0812D1EC_0->unk50) {
            unk_0812D1EC_0->unk50--;
        }
        else {
            TaskDestroy(gCurTask);
        }
    }
    else if (unk_0812D1EC_0->unk4.unk34 & 0x0200) {
        TaskDestroy(gCurTask);
    }
}

void CreatePauseFade(s8 arg0, u32 arg1) {
    struct Task* task =
        TaskCreate(PauseFadeMain, sizeof(struct PauseFadeStruct), 0x100, TASK_USE_IWRAM | TASK_x0004, NULL);
    struct PauseFadeStruct *fade, *fade2;

    fade = TaskGetStructPtr(task);
    fade2 = fade;
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
        gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 |
                          BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    }
    else {
        fade2->unk3 |= 0x20;
        gBldRegs.bldCnt = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 |
                          BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    }
    fade2->unk2 = arg0;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(1, 0);
    gBldRegs.bldY = fade2->unk0 >> 4;
}

void CreatePauseFadeSetBldCnt(s8 arg0, u32 arg1) {
    struct Task* task =
        TaskCreate(PauseFadeMain, sizeof(struct PauseFadeStruct), 0x100, TASK_USE_IWRAM | TASK_x0004, NULL);
    struct PauseFadeStruct *fade, *fade2;

    fade = TaskGetStructPtr(task);
    fade2 = fade;
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

static void PauseFadeMain(void) {
    struct PauseFadeStruct* fade = TaskGetStructPtr(gCurTask);
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

void sub_08128BEC(s8 a1, u32 a2, u16 a3) {
    struct Task* t = TaskCreate(sub_08128C5C, sizeof(struct PauseFadeStruct), 0x100, TASK_USE_IWRAM | TASK_x0004, NULL);
    struct PauseFadeStruct *tmp = TaskGetStructPtr(t), *pf = tmp;

    pf->unk0 = a3;
    pf->unk2 = abs(a1);
    if (a2)
        pf->unk3 = 0x10;
    else
        pf->unk3 = 0x20;
    pf->unk3 |= 2;
}

static void sub_08128C5C(void) {
    struct PauseFadeStruct *tmp = TaskGetStructPtr(gCurTask), *pf = tmp;

    if (pf->unk3 & 2) {
        pf->unk3 &= ~2;
        if (pf->unk3 & 0x10)
            CreatePauseFade(pf->unk2, 1);
        else
            CreatePauseFade(pf->unk2, 0);
    }
    if (pf->unk3 & 4) {
        pf->unk3 &= ~4;
        pf->unk3 &= ~0x80;
        if (pf->unk3 & 0x10)
            CreatePauseFade(-pf->unk2, 1);
        else
            CreatePauseFade(-pf->unk2, 0);
    }
    if (pf->unk3 & 0x80) {
        if (pf->unk3 & 1) {
            gBldRegs.bldY = 0;
            gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0);
            TaskDestroy(gCurTask);
        }
        else {
            pf->unk3 |= 1;
            pf->unk3 |= 4;
        }
    }
    pf->unk3 &= ~0x80;
    if (gBldRegs.bldAlpha == BLDALPHA_BLEND(0, 0))
        pf->unk3 |= 0x80;
}
