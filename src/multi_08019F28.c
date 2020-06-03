#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"
#include "multi_boot_util.h"
#include "multi_08019F28.h"
#include "multi_sio.h"
#include "sio32_multi_load.h"
#include "title_screen.h"

void sub_0801A798(void);
void sub_0801A7CC(struct Task *);
void sub_08019FDC(struct Multi_08019F28 *);
void sub_0801A0AC(struct Multi_08019F28 *);

extern const void *gMultiBootPrograms[][6][2];

struct Multi_08019F28 *sub_08019F28(s32 r7)
{
    struct Task *r5 = TaskCreate(sub_0801A798, 0xb4, -2, 4, sub_0801A7CC);
    struct Multi_08019F28 *r6;
    
    TASK_GET_STRUCT_PTR(r5, r6);
    CpuFill16(0, r6, sizeof(*r6));
    r6->taskp = r5;
    r6->callback = sub_08019FDC;
    r6->unk80 = r7;
    gUnk_0203AD10 = 6;
    gUnk_0203AD3C = 0;
    gUnk_0203AD44 = 4;
    gUnk_0203AD30 = 1;
    gUnk_0203AD24 = 0;
    gUnk_0203AD1C[3] = 0xff;
    gUnk_0203AD1C[0] = gUnk_0203AD1C[1]
                     = gUnk_0203AD1C[2]
                     = -1;
    return r6;
}

void sub_08019FDC(struct Multi_08019F28 *r7)
{
    r7->unk9C = 0;
    sub_081589E8();
    REG_RCNT = 0;
    CpuFill16(0, &gMultiBootParam, sizeof(gMultiBootParam));
    CpuFill16(0, &gMultiBootStruct, sizeof(gMultiBootStruct));
    CpuFill16(0, &gMultiBootDataRecv, sizeof(gMultiBootDataRecv));
    gUnk_0300050C = -1;
    gUnk_03000480 = 0;
    sub_0803024C();
    MultiBootInitWithParams(gMultiBootPrograms[r7->unk80][gUnk_08D60A80][0], gMultiBootPrograms[r7->unk80][gUnk_08D60A80][1]);
    r7->unkAA = gMultiBootStruct.unk06;
    r7->unkAC = gMultiBootStruct.unk08;
    r7->unkAE = 0;
    r7->unkB0 = 0;
    r7->unkB1 = gMultiBootStruct.unk02;
    r7->callback = sub_0801A0AC;
}
