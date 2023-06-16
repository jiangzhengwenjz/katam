#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"
#include "malloc_vram.h"
#include "multi_boot_util.h"
#include "multi_08019F28.h"
#include "multi_08030C94.h"
#include "multi_sio.h"
#include "sio32_multi_load.h"
#include "title_screen.h"
#include "gba/m4a.h"
#include "main.h"
#include "subgame_menu.h"
#include "random.h"
#include "constants/languages.h"

static void sub_0801A798(void);
static void sub_0801A7CC(struct Task *);
static void sub_08019FDC(struct Multi_08019F28 *);
static void sub_0801A0AC(struct Multi_08019F28 *);
static void nullsub_26(void);
static void sub_0801A800(struct Multi_08019F28 *);
static void sub_0801A868(struct Multi_08019F28 *);
static void sub_0801A4E0(void);
static void sub_0801A824(struct Multi_08019F28 *);
static void sub_0801A970(struct Multi_08019F28 *);
static void sub_0801A830(struct Multi_08019F28 *);
static void sub_0801A884(struct Multi_08019F28 *);
static void sub_0801A6BC(struct Multi_08019F28 *);
static void sub_0801A8E8(struct Multi_08019F28 *);
static void sub_0801A8C4(struct Multi_08019F28 *);
static void sub_0801A950(struct Multi_08019F28 *);
static void sub_0801A9BC(struct Multi_08019F28 *);
static void sub_0801A908(struct Multi_08019F28 *);
static void sub_0801AA40(struct Multi_08019F28 *);
static void sub_0801A9E0(struct Multi_08019F28 *);
static void sub_0801AA20(struct Multi_08019F28 *);
static void sub_0801AA58(struct Multi_08019F28 *);

static const u8 gUnk_082DE094[] = { 4, 5, 6, 3 };

extern u8 gUnk_08D90A6C[], gUnk_08D90A6C_End[0];
extern u8 gUnk_08E1BA58[], gUnk_08E1BA58_End[0];
extern u8 gUnk_08E8009C[], gUnk_08E8009C_End[0];

static void *const sMultiBootPrograms[][NUM_LANGUAGES][2] = 
{
    {
        [LANGUAGE_JAPANESE] = { gUnk_08D90A6C, gUnk_08D90A6C_End },
        [ LANGUAGE_ENGLISH] = { gUnk_08D90A6C, gUnk_08D90A6C_End },
        [  LANGUAGE_GERMAN] = { gUnk_08D90A6C, gUnk_08D90A6C_End },
        [  LANGUAGE_FRENCH] = { gUnk_08D90A6C, gUnk_08D90A6C_End },
        [ LANGUAGE_SPANISH] = { gUnk_08D90A6C, gUnk_08D90A6C_End },
        [ LANGUAGE_ITALIAN] = { gUnk_08D90A6C, gUnk_08D90A6C_End },
    },
    {
        [LANGUAGE_JAPANESE] = { gUnk_08E1BA58, gUnk_08E1BA58_End },
        [ LANGUAGE_ENGLISH] = { gUnk_08E1BA58, gUnk_08E1BA58_End },
        [  LANGUAGE_GERMAN] = { gUnk_08E1BA58, gUnk_08E1BA58_End },
        [  LANGUAGE_FRENCH] = { gUnk_08E1BA58, gUnk_08E1BA58_End },
        [ LANGUAGE_SPANISH] = { gUnk_08E1BA58, gUnk_08E1BA58_End },
        [ LANGUAGE_ITALIAN] = { gUnk_08E1BA58, gUnk_08E1BA58_End },
    },
    {
        [LANGUAGE_JAPANESE] = { gUnk_08E8009C, gUnk_08E8009C_End },
        [ LANGUAGE_ENGLISH] = { gUnk_08E8009C, gUnk_08E8009C_End },
        [  LANGUAGE_GERMAN] = { gUnk_08E8009C, gUnk_08E8009C_End },
        [  LANGUAGE_FRENCH] = { gUnk_08E8009C, gUnk_08E8009C_End },
        [ LANGUAGE_SPANISH] = { gUnk_08E8009C, gUnk_08E8009C_End },
        [ LANGUAGE_ITALIAN] = { gUnk_08E8009C, gUnk_08E8009C_End },
    },
    {},
};

extern u8 gUnk_0838AD48[];
extern u8 gUnk_0837F6C4[];
extern u8 gUnk_08383C0C[];
extern u8 gUnk_08D94B9C[];

static void *const gUnk_082DE158[][9] =
{
    [LANGUAGE_JAPANESE] = {
        gUnk_0838AD48,
        gUnk_0837F6C4,
        gUnk_08383C0C,
        gUnk_08D94B9C,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 5,
    },
    [ LANGUAGE_ENGLISH] = {
        gUnk_0838AD48,
        gUnk_0837F6C4,
        gUnk_08383C0C,
        gUnk_08D94B9C,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 5,
    },
    [  LANGUAGE_GERMAN] = {
        gUnk_0838AD48,
        gUnk_0837F6C4,
        gUnk_08383C0C,
        gUnk_08D94B9C,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 5,
    },
    [  LANGUAGE_FRENCH] = {
        gUnk_0838AD48,
        gUnk_0837F6C4,
        gUnk_08383C0C,
        gUnk_08D94B9C,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 5,
    },
    [ LANGUAGE_SPANISH] = {
        gUnk_0838AD48,
        gUnk_0837F6C4,
        gUnk_08383C0C,
        gUnk_08D94B9C,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 5,
    },
    [ LANGUAGE_ITALIAN] = {
        gUnk_0838AD48,
        gUnk_0837F6C4,
        gUnk_08383C0C,
        gUnk_08D94B9C,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08D94B9C + SIO32ML_BLOCK_SIZE * 5,
    },
};

extern u8 gUnk_0839612C[];
extern u8 gUnk_08365380[];
extern u8 gUnk_0836E034[];
extern u8 gUnk_08E1FE28[];

static void *const gUnk_082DE230[][9] =
{
    [LANGUAGE_JAPANESE] = {
        gUnk_0839612C,
        gUnk_08365380,
        gUnk_0836E034,
        gUnk_08E1FE28,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 5,
    },
    [ LANGUAGE_ENGLISH] = {
        gUnk_0839612C,
        gUnk_08365380,
        gUnk_0836E034,
        gUnk_08E1FE28,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 5,
    },
    [  LANGUAGE_GERMAN] = {
        gUnk_0839612C,
        gUnk_08365380,
        gUnk_0836E034,
        gUnk_08E1FE28,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 5,

    },
    [  LANGUAGE_FRENCH] = {
        gUnk_0839612C,
        gUnk_08365380,
        gUnk_0836E034,
        gUnk_08E1FE28,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 5,
    },
    [ LANGUAGE_SPANISH] = {
        gUnk_0839612C,
        gUnk_08365380,
        gUnk_0836E034,
        gUnk_08E1FE28,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 5,
    },
    [ LANGUAGE_ITALIAN] = {
        gUnk_0839612C,
        gUnk_08365380,
        gUnk_0836E034,
        gUnk_08E1FE28,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E1FE28 + SIO32ML_BLOCK_SIZE * 5,
    },
};

extern u8 gUnk_08372BE0[];
extern u8 gUnk_08375400[];
extern u8 gUnk_083A9AAC[];
extern u8 gUnk_08E8490C[];

static void *const gUnk_082DE308[][9] =
{
    [LANGUAGE_JAPANESE] = {
        gUnk_08372BE0,
        gUnk_08375400,
        gUnk_083A9AAC,
        gUnk_08E8490C,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 5,
    },
    [ LANGUAGE_ENGLISH] = {
        gUnk_08372BE0,
        gUnk_08375400,
        gUnk_083A9AAC,
        gUnk_08E8490C,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 5,
    },
    [  LANGUAGE_GERMAN] = {
        gUnk_08372BE0,
        gUnk_08375400,
        gUnk_083A9AAC,
        gUnk_08E8490C,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 5,
    },
    [  LANGUAGE_FRENCH] = {
        gUnk_08372BE0,
        gUnk_08375400,
        gUnk_083A9AAC,
        gUnk_08E8490C,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 5,
    },
    [ LANGUAGE_SPANISH] = {
        gUnk_08372BE0,
        gUnk_08375400,
        gUnk_083A9AAC,
        gUnk_08E8490C,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 5,
    },
    [ LANGUAGE_ITALIAN] = {
        gUnk_08372BE0,
        gUnk_08375400,
        gUnk_083A9AAC,
        gUnk_08E8490C,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 1,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 2,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 3,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 4,
        gUnk_08E8490C + SIO32ML_BLOCK_SIZE * 5,
    },
};

struct Multi_08019F28 *sub_08019F28(s32 r7)
{
    struct Task *r5 = TaskCreate(sub_0801A798, sizeof(struct Multi_08019F28), -2, TASK_USE_IWRAM | TASK_x0004, sub_0801A7CC);
    struct Multi_08019F28 *r6;
    
    r6 = TaskGetStructPtr(r5);
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

static void sub_08019FDC(struct Multi_08019F28 *r7)
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
    MultiBootInitWithParams(sMultiBootPrograms[r7->unk80][gLanguage][0], sMultiBootPrograms[r7->unk80][gLanguage][1]);
    r7->unkAA = gMultiBootStruct.unk06;
    r7->unkAC = gMultiBootStruct.unk08;
    r7->unkAE = 0;
    r7->unkB0 = 0;
    r7->unkB1 = gMultiBootStruct.unk02;
    r7->callback = sub_0801A0AC;
}

static void sub_0801A0AC(struct Multi_08019F28 *r5)
{
    r5->unk0E = 0;
    if (r5->unk0C & 2)
    {
        sub_08030B38();
        r5->unk0E = 7;
        gCurTask->main = nullsub_26;
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
                    gCurTask->main = sub_0801A4E0;
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
                gCurTask->main = nullsub_26;
            }
            else
            {
                if (r5->unk80 == 3 && gUnk_0300050C == 2)
                {
                    r5->unk10 = 0;
                    r5->unk11 = 0;
                    sub_08030B38();
                    r5->unk0E = 8;
                    gCurTask->main = nullsub_26;
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

static void sub_0801A374(struct Multi_08019F28 *r5)
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
                    union Unk_020382A0_8 *p = gUnk_020382A0.unk08;

                    p0->unk00[r3] = p[r3].pat0.unk00;
                    gUnk_0203AD1C[r3] = p[r3].pat0.unk04;
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

static void sub_0801A468(struct Multi_08019F28 *r6)
{
    gBldRegs.bldY = r6->unk98 & 0x1f;
    if (++r6->unk98 > 15)
    {
        gBldRegs.bldY = 16;
        CpuFill16(RGB_WHITE, gBgPalette, BG_PLTT_SIZE);
        CpuFill16(RGB_WHITE, gObjPalette, OBJ_PLTT_SIZE);
        gUnk_03002440 |= (1 | 2);
        r6->callback = sub_0801A830;
    }
}

static void sub_0801A4E0(void)
{
    struct Multi_08019F28 *r6, *r0 = TaskGetStructPtr(gCurTask);
    s16 array[5];

    r6 = r0;
    if (r6->unk0C & 4)
    {
        if (gBldRegs.bldCnt & BLDCNT_EFFECT_LIGHTEN && gBldRegs.bldY)
            --gBldRegs.bldY;
        gBgScrollRegs[2][0] += 2;
        r6->unk58.x = 120;
        r6->unk58.y = 88;
        r6->unk58.unk8 = 0x60;
        array[0] = r6->unk84.unk10;
        array[1] = 0x100;
        array[2] = 0x100;
        array[3] = r6->unk58.x;
        array[4] = r6->unk58.y;
        sub_08155604(&r6->unk58, array);
        sub_0815604C(&r6->unk58);
        r6->unk84.unk10 += 0x20;
    }
    if (r6->unk9A++ > 600) 
    {
        gUnk_02038580 = 1;
        sub_08032E98();
    }
    r6->callback(r6);
}

static void sub_0801A5B8(struct Multi_08019F28 *r5)
{
    struct Sprite *sprite;

    if (r5->unk0C & 4)
    {
        m4aSongNumStart(2);
        sprite = &r5->unk58;
        r5->unk58.tilesVram = VramMalloc(0x10);
        sprite->unk14 = 0x100;
        sprite->animId = 0x365;
        sprite->variant = 0;
        sprite->unk16 = 0;
        sprite->unk1B = 0xFF;
        sprite->unk1C = 0x10;
        sprite->palId = 0;
        sprite->x = 120;
        sprite->y = 88;
        sprite->unk8 = 0x60;
        sub_08155128(sprite);
        r5->callback = sub_0801A884;
    }
}

static void sub_0801A618(struct Multi_08019F28 *r5)
{
    u32 r3;

    if (gMultiSioStatusFlags & MULTI_SIO_LD_REQUEST)
    {
        switch (r5->unk80)
        {
        case 0:
            r3 = 9;
            break;
        case 1:
            r3 = 9;
            break;
        case 2:
            r3 = 9;
            break;
        }
        if (r5->unkA9 < r3)
            r5->callback = sub_0801A6BC;
        else
            r5->callback = sub_0801A8E8;
    }
    if (gMultiSioStatusFlags & MULTI_SIO_LD_ENABLE)
        r5->loadRequest = 1;
    gMultiSioSend.pat1.unk0 = gLanguage;
    gMultiSioStatusFlags = MultiSioMain(&gMultiSioSend, gMultiSioRecv, r5->loadRequest);
    if (r5->unkA4 == 0)
    {
        MultiSioStart();
        r5->unkA4 = 1;
    }
    if (r5->unkA9 != gMultiSioRecv[0].pat1.unk2)
    {
        r5->unkA9 = gMultiSioRecv[0].pat1.unk2;
        r5->unk9A = 0;
    }
}

static void sub_0801A6BC(struct Multi_08019F28 *r5)
{
    void *datap;

    switch (r5->unk80)
    {
    case 0:
        datap = gUnk_082DE158[gLanguage][r5->unkA9];
        break;
    case 1:
        datap = gUnk_082DE230[gLanguage][r5->unkA9];
        break;
    case 2:
        datap = gUnk_082DE308[gLanguage][r5->unkA9];
        break;
    }
    MultiSioStop();
    REG_IME = 0;
    gIntrTable[0] = Sio32MultiLoadIntr;
    REG_IME = 1;
    Sio32MultiLoadInit(gMultiSioStatusFlags & MULTI_SIO_TYPE, datap);
    r5->callback = sub_0801A8C4;
}

void sub_0801A744(s32 r0)
{
    gUnk_0203AD10 = 4;
    gUnk_0203AD3C = 0;
    gUnk_0203AD44 = 4;
    gUnk_0203AD30 = 1;
    gUnk_0203AD24 = 0;
    gUnk_0203AD1C[0] = gUnk_0203ADE0;
    gUnk_0203AD1C[3]= 0xFF;
    gUnk_0203AD1C[2] = -1;
    gUnk_0203AD1C[1] = -1;
    sub_0801E630(r0);
}

static void sub_0801A798(void)
{
    struct Multi_08019F28 *r0;

    r0 = TaskGetStructPtr(gCurTask);
    r0->callback(r0);
}

static void sub_0801A7CC(struct Task *taskp)
{
    struct Multi_08019F28 *r0 = TaskGetStructPtr(taskp);

    if (r0->unk58.tilesVram)
        VramFree(r0->unk58.tilesVram); 
}

static void nullsub_26(void)
{}

static void sub_0801A800(struct Multi_08019F28 *r4)
{
    sub_08158934();
    r4->unk9A = 60;
    r4->unk0E = 5;
    r4->callback = sub_0801A950;
}

static void sub_0801A824(struct Multi_08019F28 *r0)
{
    r0->callback = sub_0801A9BC;
}

static void sub_0801A830(struct Multi_08019F28 *r1)
{
    s32 r4 = r1->unk80;

    gBldRegs.bldCnt = BLDCNT_EFFECT_NONE;
    gBldRegs.bldY = 0;
    gRngVal = r1->unk84.unk00[0];
    TaskDestroy(gCurTask);
    sub_0801E6C4(r4);
}

static void sub_0801A868(struct Multi_08019F28 *r4)
{
    sub_08158934();
    r4->unk0E = 5;
    r4->callback = sub_0801A5B8;
}

static void sub_0801A884(struct Multi_08019F28 *r4)
{
    if (r4->unk0C & 4)
    {
        gBldRegs.bldCnt = BLDCNT_TGT1_BG0
                          | BLDCNT_TGT1_BG1
                          | BLDCNT_TGT1_BG2
                          | BLDCNT_TGT1_BG3
                          | BLDCNT_TGT1_OBJ
                          | BLDCNT_TGT1_BD
                          | BLDCNT_EFFECT_LIGHTEN;
        gBldRegs.bldY = 0x10;
        sub_0801E754(r4->unk80);
        sub_0801A908(r4);
        MultiSioStart();
        r4->callback = sub_0801A618;
    }
}

static void sub_0801A8C4(struct Multi_08019F28 *r4)
{
    s32 data = 0;

    if (Sio32MultiLoadMain(&data))
        r4->callback = sub_0801AA40;
}

static void sub_0801A8E8(struct Multi_08019F28 *r0)
{
    s32 r4 = r0->unk80;

    TaskDestroy(gCurTask);
    sub_0801FCA8(r4);
}

static void sub_0801A908(struct Multi_08019F28 *r4)
{
    REG_IME = 0;
    gIntrTable[0] = (void *)gMultiSioIntrFuncBuf;
    REG_IME = 1;
    MultiSioInit((gMultiSioStatusFlags & MULTI_SIO_CONNECTED_ID_MASK) >> 8);
    r4->loadRequest = 0;
    r4->unkA4 = 0;
    gMultiSioStatusFlags = 0;
}

static void sub_0801A950(struct Multi_08019F28 *r4)
{
    if (r4->unk0C & 4)
    {
        sub_0815898C();
        r4->callback = sub_0801A970;
    }
}

static void sub_0801A970(struct Multi_08019F28 *r4)
{
    union Unk_020382A0_8 stru;

    r4->unk9C = 0;
    stru.pat0.unk00 = Rand32();
    stru.pat0.unk04 = gUnk_0203ADE0;
    sub_08030C94(1, &stru);
    r4->callback = sub_0801A374;
}

static void sub_0801A9BC(struct Multi_08019F28 *r4)
{
    r4->unk98 = 0;
    sub_08031C70(3);
    sub_08031CD4();
    r4->callback = sub_0801A9E0;
}

static void sub_0801A9E0(struct Multi_08019F28 *r4)
{
    ++r4->unk84.unk12;
    if (r4->unk98++ > 8)
    {
        r4->unk98 = 0;
        if (!sub_08030D4C(0))
            sub_08032E98();
        else
            r4->callback = sub_0801AA20;
    }
}

static void sub_0801AA20(struct Multi_08019F28 *r0)
{
    gBldRegs.bldCnt = BLDCNT_TGT1_BG0
                      | BLDCNT_TGT1_BG1
                      | BLDCNT_TGT1_BG2
                      | BLDCNT_TGT1_BG3
                      | BLDCNT_TGT1_OBJ
                      | BLDCNT_TGT1_BD
                      | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0;
    r0->unk98 = 0;
    r0->callback = sub_0801A468;
}

static void sub_0801AA40(struct Multi_08019F28 *r4)
{
    sub_0801A908(r4);
    r4->callback = sub_0801AA58;
}

static void sub_0801AA58(struct Multi_08019F28 *r2)
{
    if (gMultiSioStatusFlags & MULTI_SIO_LD_ENABLE)
    {
        if (gMultiSioStatusFlags & MULTI_SIO_LD_SUCCESS)
            ++gMultiSioSend.pat1.unk2;
        r2->callback = sub_0801A618;
    }
    sub_0801A618(r2);
}
