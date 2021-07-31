#include "global.h"
#include "data.h"
#include "functions.h"
#include "main.h"
#include "multi_08019F28.h"
#include "multi_08030C94.h"
#include "multi_boot_util.h"
#include "multi_sio.h"

void sub_0803149C(void);
u32 sub_0803169C(struct Multi_08030C94 *);

void sub_08030C94(u8 r7, struct Unk_020382A0_sub *r6)
{
    struct Multi_08030C94 *r4;

    CpuFill32(0, gMultiSioRecv, sizeof(gMultiSioRecv));
    CpuFill32(0, &gMultiSioSend, sizeof(gMultiSioSend));
    CpuFill16(0, &gUnk_020382A0, sizeof(gUnk_020382A0));
    gUnk_020382A0.unk04 = 0; // ?
    MultiSioStart();
    gUnk_020382A0.task = TaskCreate(sub_0803149C, sizeof(struct Multi_08030C94), 1, 0, NULL);
    TaskGetStructPtr(gUnk_020382A0.task, r4);
    CpuFill16(0, r4, sizeof(*r4));
    r4->func = sub_0803169C;
    r4->unk1C = r7;
    if (r6)
        CpuCopy16(r6, &r4->unk4, sizeof(struct Unk_020382A0_sub));
}

// TODO: decompile more functions
/*
s32 sub_08030D4C(s32 sp)
{
    s32 sb = gUnk_020382D0.unk0 - 5;
    u16 r3;
    
    for (r3 = 0; r3 < gUnk_0203AD30; ++r3)
    {
        for (gUnk_02038578[r3] = (gUnk_020382D0.unk2A4[r3] - 1) & 0xF;
             gUnk_02038578[r3] != gUnk_020382D0.unk2A4[r3];
             gUnk_02038578[r3] = (gUnk_02038578[r3] - 1) & 0xF)
        {
            if (sb != gUnk_020382D0.unkA0[r3][gUnk_02038578[r3] * 2]) // maybe the type of the field is wrong
                break;
        }
        if (gUnk_02038578[r3] == gUnk_020382D0.unk2A4[r3])
        {
            gUnk_020382D0.unk4 |= 0x8000;
            gUnk_02038580 = 5;
            return 0;
        }
        gUnk_020382D0.unk2A0[r3] = (gUnk_020382D0.unk2A4[r3] - gUnk_02038578[r3]) & 0xF;
    }
    gUnk_020382D0.unk4 |= 2;
    if (sp)
        gUnk_020382D0.unk4 |= 8;
    return 1;
}

void sub_08030E44(void)
{
    u16 i, r5;

    if (gUnk_020382D0.unk4 & 1 && !(gUnk_020382D0.unk4 & 4))
    {
        r5 = 0;
        if (gUnk_020382D0.unk4 & 8)
        {
            r5 = gRngVal;
            for (i = 0; i < 4; ++i)
                r5 += gUnk_02020F20[i * 0x6a] + (gUnk_02020F20 + 1)[i * 0x6a]; // type
        }
        gUnk_020382D0.unk20[gUnk_020382D0.unk2AC].unk0 = gUnk_020382D0.unk0;
        gUnk_020382D0.unk20[gUnk_020382D0.unk2AC].unk4 = (gInput & 0x3ff) | ((r5 << 10) & 0xc00);
        gMultiSioSend.unk0 = 0x20;
        gMultiSioSend.unk1 = gUnk_020382D0.unk6;
        gMultiSioSend.unk10 = gUnk_020382D0.unk20[gUnk_020382D0.unk2AC].unk0;
        for (r5 = 0; r5 < 6; ++r5)
            ((u16 *)&gMultiSioSend + 1)[r5] = 0;
        ((u16 *)&gMultiSioSend + 1)[0] |= gUnk_020382D0.unk20[gUnk_020382D0.unk2AC].unk4;
        --r5;
        r5 &= 0xF;
        ((u16 *)&gMultiSioSend + 1)[0] |= gUnk_020382D0.unk20[r5].unk4 << 12;
        ((u16 *)&gMultiSioSend + 1)[1] |= gUnk_020382D0.unk20[r5].unk4 >> 4;
        --r5;
        r5 &= 0xF;
        ((u16 *)&gMultiSioSend + 1)[1] |= gUnk_020382D0.unk20[r5].unk4 << 8;
        ((u16 *)&gMultiSioSend + 1)[2] |= gUnk_020382D0.unk20[r5].unk4 >> 8;
        --r5;
        r5 &= 0xF;
        ((u16 *)&gMultiSioSend + 1)[2] |= gUnk_020382D0.unk20[r5].unk4 << 4;
        --r5;
        r5 &= 0xF;
        ((u16 *)&gMultiSioSend + 1)[3] |= gUnk_020382D0.unk20[r5].unk4;
        --r5;
        r5 &= 0xF;
        ((u16 *)&gMultiSioSend + 1)[3] |= gUnk_020382D0.unk20[r5].unk4 << 12;
        ((u16 *)&gMultiSioSend + 1)[4] |= gUnk_020382D0.unk20[r5].unk4 >> 4;
        --r5;
        r5 &= 0xF;
        ((u16 *)&gMultiSioSend + 1)[4] |= gUnk_020382D0.unk20[r5].unk4 << 8;
        ((u16 *)&gMultiSioSend + 1)[5] |= gUnk_020382D0.unk20[r5].unk4 >> 8;
        --r5;
        r5 &= 0xF;
        ((u16 *)&gMultiSioSend + 1)[5] |= gUnk_020382D0.unk20[r5].unk4 << 4;
        gUnk_020382D0.unk2AC = (gUnk_020382D0.unk2AC + 1) & 0xF;
    }
}
*/
