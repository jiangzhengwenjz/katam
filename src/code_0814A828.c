#include "data.h"
#include "code_0814A828.h"
#include "functions.h"
#include "kirby.h"

void sub_0814A914(void);
void nullsub_12(struct Task *);
void sub_0814E0B4(struct Unk_0814A828 *);

void sub_0814A828(void) {
    u16 color, i;
    struct Task *t;
    struct Unk_0814A828 *var;

    if (gUnk_0203AD10 & 0x10)
        sub_08039670();
    else if (gUnk_0203AD2C < 300) {
        color = RGB_WHITE;
        sub_0803D21C(&color, 0, 1);
        gDispCnt = DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
        m4aSoundVSyncOn();
        for (i = 0; i < gUnk_0203AD30; ++i)
            gKirbys[i].base.base.base.flags &= ~0x1000000;
        t = TaskCreate(sub_0814A914, sizeof(struct Unk_0814A828), 0x1000, TASK_USE_IWRAM | TASK_x0004, nullsub_12);
        var = TaskGetStructPtr(t);
        CpuFill16(0, var, sizeof(struct Unk_0814A828));
        var->unk8 = sub_0814E0B4;
    }
}
