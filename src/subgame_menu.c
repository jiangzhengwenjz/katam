#include "main.h"
#include "subgame_menu.h"

void sub_0801E630(s32 arg0) {
    struct SubGameMenu* menu;
    struct Task* task = TaskCreate(sub_0801FD58, sizeof(struct SubGameMenu), 0x100, 0, nullsub_29);
    TaskGetStructPtr(task, menu);
    CpuFill16(0, menu, sizeof(struct SubGameMenu));
    menu->unk14C = 0;
    menu->unk150 = arg0;
    menu->unk154 = sub_0801ED94;
    menu->unk178 = 0;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldY = 0x10;
}

void sub_0801E6C4(s32 arg0) {
    struct SubGameMenu* menu;
    struct Task* task = TaskCreate(sub_0801F1F4, sizeof(struct SubGameMenu), 0x100, 0, nullsub_110);
    TaskGetStructPtr(task, menu);
    CpuFill16(0, menu, sizeof(struct SubGameMenu));
    menu->unk150 = arg0;
    menu->unk154 = sub_0801F2E8;
    menu->unk178 = 0;
    gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    gBldRegs.bldY = 0x1f;
}
