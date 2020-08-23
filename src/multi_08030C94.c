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
    gUnk_020382A0.task = TaskCreate(sub_0803149C, 32, 1, 0, NULL);
    TASK_GET_STRUCT_PTR(gUnk_020382A0.task, r4);
    CpuFill16(0, r4, sizeof(*r4));
    r4->func = sub_0803169C;
    r4->unk1C = r7;
    if (r6)
        CpuCopy16(r6, &r4->unk4, sizeof(struct Unk_020382A0_sub));
}
