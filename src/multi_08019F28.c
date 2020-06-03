#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"
#include "multi_boot_util.h"
#include "multi_08019F28.h"
#include "multi_08030C94.h"
#include "multi_sio.h"
#include "sio32_multi_load.h"
#include "title_screen.h"
#include "gba/m4a.h"

void sub_0801A798(void);
void sub_0801A7CC(struct Task *);
void sub_08019FDC(struct Multi_08019F28 *);
void sub_0801A0AC(struct Multi_08019F28 *);
void nullsub_26(void);
void sub_0801A800(struct Multi_08019F28 *);
void sub_0801A868(struct Multi_08019F28 *);
void sub_0801A4E0(void);
void sub_0801A824(struct Multi_08019F28 *);
void sub_0801A970(struct Multi_08019F28 *);

extern const u8 gUnk_082DE094[];
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

void sub_0801A0AC(struct Multi_08019F28 *r5)
{
    r5->unk0E = 0;
    if (r5->unk0C & 2)
    {
        sub_08030B38();
        r5->unk0E = 7;
        gCurTask->unk8 = nullsub_26;
    }
    else
    {
        sub_08030C40(gUnk_082DE094[r5->unk80]);
        if (gMultiBootStruct.unk01 > 1
            && gMultiBootStruct.unk02 == 3)
        {
            r5->unk10 = gMultiBootStruct.unk00;
            r5->unk11 = gMultiBootStruct.unk01;
            gUnk_0203AD3C = gMultiBootStruct.unk00;
            gUnk_0203AD30 = gMultiBootStruct.unk01;
            if (gUnk_0300050C == 1)
            {
                gUnk_0203AD10 &= ~8;
                r5->unk0C &= ~0x8000;
                r5->callback = sub_0801A800;
            }
            else
            {
                if (gUnk_0300050C == 2)
                {
                    m4aSoundVSyncOn();
                    gUnk_0203AD10 |= 8;
                    r5->unk0C |= 0x8000;
                    r5->unk9A = 0;
                    r5->callback = sub_0801A868;
                    gCurTask->unk8 = sub_0801A4E0;
                }
            }
            sub_08030B38();
        }
        else
        {
            if ((gUnk_0300050C == 2
                   && gMultiBootStruct.unk06 == 0x100
                   && gMultiBootStruct.unk08 == 0x100
                   && gMultiBootStruct.unk01 > 1)
                || r5->unkAA != gMultiBootStruct.unk06
                || r5->unkAC != gMultiBootStruct.unk08
                || r5->unkB0 != gMultiBootStruct.unk01
                || r5->unkB1 != gMultiBootStruct.unk02)
            {
                r5->unkAA = gMultiBootStruct.unk06;
                r5->unkAC = gMultiBootStruct.unk08;
                r5->unkAE = 0;
                r5->unkB0 = gMultiBootStruct.unk01;
                r5->unkB1 = gMultiBootStruct.unk02;
            }
            else
            {
                if (r5->unkAE > 0xB4)
                {
                    sub_08030B38();
                    r5->unk10 = 0;
                    r5->unk11 = 0;
                    r5->unkB0 = gMultiBootStruct.unk01;
                    r5->unkB1 = gMultiBootStruct.unk02;
                    r5->callback = sub_08019FDC;
                    return;
                }
                ++r5->unkAE;
            }
            if (gMultiBootStruct.unk03 & 1)
            {
                sub_08030B38();
                r5->unk0E = 8;
                gCurTask->unk8 = nullsub_26;
            }
            else
            {
                if (r5->unk80 == 3 && gUnk_0300050C == 2)
                {
                    r5->unk10 = 0;
                    r5->unk11 = 0;
                    sub_08030B38();
                    r5->unk0E = 8;
                    gCurTask->unk8 = nullsub_26;
                }
                else
                {
                    if (gMultiBootStruct.unk03 == 0)
                    {
                        r5->unk10 = gMultiBootStruct.unk00;
                        r5->unk11 = gMultiBootStruct.unk01;
                        if (r5->unk11 <= 1) r5->unk11 = 0;
                        if (gMultiBootStruct.unk00 == 0)
                        {
                            if (gMultiBootStruct.unk02 == 2)
                            {
                                if (r5->unk80 != 3 || gUnk_0300050C != 2)
                                {
                                    if (r5->unk9C > 0x5A)
                                    {
                                        r5->unk0E = 1;
                                        if (r5->unk0C & 1)
                                        {
                                            sub_08030C1C();
                                            r5->unk0C &= ~1;
                                        }
                                    }
                                    else
                                        ++r5->unk9C;
                                }
                            }
                            else
                            {
                                r5->unk9C = 0;
                                if (gMultiBootStruct.unk02 == 0)
                                    r5->unk11 = 0;
                            }
                        }
                    }
                    else
                    {
                        sub_08030B38();
                        r5->unk10 = 0;
                        r5->unk11 = 0;
                        r5->callback = sub_08019FDC;
                        return;
                    }
                    if (r5->unk9E == 2 && gUnk_0300050C != 2)
                    {
                        m4aSoundVSyncOn();
                        m4aSongNumStartOrChange(2);
                        sub_08030B38();
                        r5->unk10 = 0;
                        r5->unk11 = 0;
                        r5->callback = sub_08019FDC;
                    }
                    r5->unk9E = gUnk_0300050C;
                }
            }
        }
    }
}

void sub_0801A374(struct Multi_08019F28 *r5)
{
    if (--r5->unk9A == (u16)-1)
    {
        TaskDestroy(gCurTask);
        gUnk_02038580 = 0;
        sub_08032E98();
    }
    else
    {
        s32 r0;

        r0 = sub_08031C64();
        if (r0 == 2)
        {
            if (gUnk_0203AD30 == gUnk_020382A0.unk28)
            {
                u16 r3;

                sub_08031C3C();
                for (r3 = 0; r3 < gUnk_0203AD30; ++r3)
                {
                    struct Multi_08019F28_sub *p0 = &r5->unk84;
                    struct Unk_020382A0_sub *p = gUnk_020382A0.unk08;

                    p0->unk00[r3] = p[r3].unk00;
                    gUnk_0203AD1C[r3] = p[r3].unk04;
                }
                for (; r3 < 4; ++r3)
                    gUnk_0203AD1C[r3] |= 0xFF;
                r5->callback = sub_0801A824;
            }
            else
            {
                TaskDestroy(gCurTask);
                gUnk_02038580 = 0;
                sub_08032E98();
            }
        }
        else
        {
            if (r0 == 1)
            {
                if (r5->unk9C++ > 8)
                    sub_08031C54();
            }
            else
            {
                if (r0 < 0) // Do you know C has switch statement? 
                {
                    sub_08031C3C();
                    r5->callback = sub_0801A970;
                }
                else
                    r5->unk9C = 0;
            }
        }
    }
}
