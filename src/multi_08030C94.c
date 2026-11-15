#include "global.h"
#include "code_080332BC.h"
#include "data.h"
#include "kirby.h"
#include "functions.h"
#include "main.h"
#include "multi_08019F28.h"
#include "multi_08030C94.h"
#include "multi_08032E98.h"
#include "multi_boot_util.h"
#include "multi_sio.h"
#include "multi_sio_util.h"
#include "save.h"
#include "random.h"

static void sub_0803149C(void);
static s32 sub_0803169C(struct Multi_08030C94 *);
static s32 sub_08031764(struct Multi_08030C94 *);
static s32 sub_08031860(struct Multi_08030C94 *);
static s32 sub_080319F0(struct Multi_08030C94 *);
static s32 sub_08031AA8(struct Multi_08030C94 *);
static s32 sub_08031BB0(struct Multi_08030C94 *);
static s32 sub_08031D00(struct Multi_08030C94 *);
static void sub_08031DF0(void);
static void sub_08032024(void);
static void sub_0803234C(void);
static void sub_080323DC(void);
static void sub_08032448(void);
static void sub_080324BC(void);
static void sub_0803264C(void);
static void sub_080326C0(void);
static void sub_08032818(void);
static void sub_08032888(void);
static void sub_08032A80(void);
static void sub_08032BEC(void);
static void sub_08032C3C(void);
static void sub_08032C50(void);
static void sub_08032CA8(void);
static void sub_08032CE8(void);
static void sub_08032D3C(void);
static void sub_08032D90(void);
static void sub_08032DA4(void);
static void sub_08032E08(void);
static void sub_08032E50(void);
static void nullsub_118(void);

#define SIO_MULTI_CNT ((volatile struct SioMultiCnt *)REG_ADDR_SIOCNT)

void sub_08030C94(u8 r7, union MultiSioHandshakePayload *r6)
{
    struct Multi_08030C94 *r4;

    CpuFill32(0, gMultiSioRecv, sizeof(gMultiSioRecv));
    CpuFill32(0, &gMultiSioSend, sizeof(gMultiSioSend));
    CpuFill16(0, &gUnk_020382A0, sizeof(gUnk_020382A0));
    gUnk_020382A0.unk04 = 0; // ?
    MultiSioStart();
    gUnk_020382A0.task = TaskCreate(sub_0803149C, sizeof(struct Multi_08030C94), 1, TASK_USE_IWRAM, NULL);
    r4 = TaskGetStructPtr(gUnk_020382A0.task);
    CpuFill16(0, r4, sizeof(*r4));
    r4->func = sub_0803169C;
    r4->unk1C = r7;
    if (r6)
        CpuCopy16(r6, &r4->unk4, sizeof(union MultiSioHandshakePayload));
}

u32 sub_08030D4C(s32 sp)
{
    struct Unk_020382D0 *ip = &gUnk_020382D0;
    s32 sb = gUnk_020382D0.unk0 - 5;
    u16 r3;
    
    for (r3 = 0; r3 < gNumHumanPlayers; ++r3)
    {
        for (ip->unk2A8[r3] = (ip->unk2A4[r3] - 1) & 0xF;
             ip->unk2A8[r3] != ip->unk2A4[r3];
             ip->unk2A8[r3] = (ip->unk2A8[r3] - 1) & 0xF)
        {
            if (sb == ip->unkA0[r3][ip->unk2A8[r3]].unk0)
                break;
        }
        if (ip->unk2A8[r3] == ip->unk2A4[r3])
        {
            gUnk_020382D0.unk4 |= 0x8000;
            gUnk_02038580 = 5;
            return 0;
        }
        ip->unk2A0[r3] = (ip->unk2A4[r3] - ip->unk2A8[r3]) & 0xF;
    }
    gUnk_020382D0.unk4 |= 2;
    if (sp)
        gUnk_020382D0.unk4 |= 8;
    return 1;
}

void sub_08030E44(void)
{
    struct Unk_020382D0 *r7 = &gUnk_020382D0;
    u16 i, r5;
    struct Unk_020382D0_sub *r4;
    struct MultiSioInputData *r6;

    if (r7->unk4 & 1 && !(r7->unk4 & 4))
    {
        r4 = &r7->unk20[r7->unk2AC];
        r5 = 0;
        if (r7->unk4 & 8)
        {
            r5 = gRngVal;
            for (i = 0; i < 4; ++i)
                r5 += gKirbys[i].base.x + gKirbys[i].base.y;
        }
        r4->unk0 = r7->unk0;
        r4->unk4 = (gHeldKeys & 0x3FF) | ((r5 << 10) & 0xC00);
        r6 = &gMultiSioSend.input;
        r6->type = LINK_MSG_INPUT;
        r6->unk1 = gUnk_020382D0.unk6;
        r6->frame = r4->unk0;
        for (r5 = 0; r5 < ARRAY_COUNT(r6->packed); ++r5)
            r6->packed[r5] = 0;
        r5 = r7->unk2AC;
        r4 = &r7->unk20[r5];
        r6->packed[0] |= r4->unk4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->packed[0] |= r4->unk4 << 12;
        r6->packed[1] |= r4->unk4 >> 4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->packed[1] |= r4->unk4 << 8;
        r6->packed[2] |= r4->unk4 >> 8;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->packed[2] |= r4->unk4 << 4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->packed[3] |= r4->unk4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->packed[3] |= r4->unk4 << 12;
        r6->packed[4] |= r4->unk4 >> 4;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->packed[4] |= r4->unk4 << 8;
        r6->packed[5] |= r4->unk4 >> 8;
        r5 = (r5 - 1) & 0xF;
        r4 = &r7->unk20[r5];
        r6->packed[5] |= r4->unk4 << 4;
        r7->unk2AC = (r7->unk2AC + 1) & 0xF;
    }
}

u32 sub_08030FE0(void)
{
    u16 sb;
    struct Unk_020382D0 *r8 = &gUnk_020382D0;
    struct Unk_020382D0_sub *r6;
    s8 sp00;
    u32 sl;
    u32 r4;
    u32 r1;
    u32 r7;

    if (r8->unk4 & 1)
    {
        for (sb = 0; sb < gNumHumanPlayers; ++sb)
        {
            if (SIO_MULTI_CNT->id == sb)
            {
                struct Unk_020382D0_sub *r5 = &r8->unk20[(r8->unk2AC - 1) & 0xF];

                r4 = r8->unk2A4[sb];
                r1 = (r4 - 1) & 0xF;
                r6 = &r8->unkA0[sb][r1];
                if (r6->unk0 != r5->unk0)
                {
                    r6 = &r8->unkA0[sb][r4];
                    r6->unk0 = r5->unk0;
                    r6->unk4 = r5->unk4;
#ifdef NONMATCHING
                    r8->unk2A4[sb] = (r8->unk2A4[sb] + 1) & 0xF;
#else
                    {
                        register u32 r1 asm("r1");

                        ++r8->unk2A4[sb];
                        r1 = 0xF;
                        r8->unk2A4[sb] &= r1;
                    }
#endif
                }
            }
            else
            {
                struct MultiSioInputData *r5 = &gMultiSioRecv[sb].input;
                u32 r1 = (r8->unk2A4[sb] - 1) & 0xF;

                sp00 = r5->frame - r8->unkA0[sb][r1].unk0;
                r7 = (r8->unk2A4[sb] + sp00 - 1) & 0xF;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->frame;
                r6->unk4 = r5->packed[0];
                // r7 = (r7 - 1) & 0xF;
                --r7;
                r4 = 0xF;
                r7 &= r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->frame - 1;
                r6->unk4 = r5->packed[0] >> 12;
                r6->unk4 |= r5->packed[1] << 4;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->frame - 2;
                r6->unk4 = r5->packed[1] >> 8;
                r6->unk4 |= r5->packed[2] << 8;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->frame - 3;
                r6->unk4 = r5->packed[2] >> 4;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->frame - 4;
                r6->unk4 = r5->packed[3];
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->frame - 5;
                r6->unk4 = r5->packed[3] >> 12;
                r6->unk4 |= r5->packed[4] << 4;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->frame - 6;
                r6->unk4 = r5->packed[4] >> 8;
                r6->unk4 |= r5->packed[5] << 8;
                r7 = (r7 - 1) & r4;
                r6 = &r8->unkA0[sb][r7];
                r6->unk0 = r5->frame - 7;
                r6->unk4 = r5->packed[5] >> 4;
                if (sp00 > 0)
                    r8->unk2A4[sb] = (r8->unk2A4[sb] + sp00) & r4;
#ifndef NONMATCHING
                asm("":"=r"(r4));
#endif
                for (r7 = (r8->unk2A8[sb] - 1) & 0xF; r7 != r8->unk2A4[sb]; r7 = (r7 - 1) & 0xF)
                {
                    r6 = &r8->unkA0[sb][r7];
                    r6->unk0 = 0xFFFF;
                    r6->unk4 = 0xFFFF;
                }
#ifndef NONMATCHING
                asm("":"=r"(r4));
#endif
                if (r8->unk4 & 2)
                {
                    if (r5->type != LINK_MSG_INPUT)
                    {
                        r8->unk4 |= 0x8000;
                        gUnk_02038580 = 3;
                        return 0;
                    }
                    if (r8->unk6 != r5->unk1)
                    {
                        r8->unk4 |= 0x8000;
                        gUnk_02038580 = 4;
                        return 0;
                    }
                    if (r8->unkA0[sb][r8->unk2A8[sb]].unk4 == 0xFFFF)
                    {
                        r8->unk4 |= 0x8000;
                        gUnk_02038580 = 6;
                        return 0;
                    }
                }
            }
        }
        if (r8->unk4 & 2)
        {
            bool32 sl;

            r8->unk4 &= ~4;
            sl = FALSE;
            for (sb = 0; sb < gNumHumanPlayers; ++sb)
            {
                if (SIO_MULTI_CNT->id != sb)
                {
                    u8 r0;
                    s8 r1 = (r8->unkA0[sb][(r8->unk2A4[sb] - 1) & 0xF].unk0 - r8->unkA0[sb][r8->unk2A8[sb]].unk0);

                    r0 = r8->unk2A0[sb];
                    r1 = (s8)r0 - r1;
                    r0 = r1 + 1;
                    if (r0 <= 2) continue;
                    if (r1 > 1)
                    {
                        sl = TRUE;
                        break;
                    }
                }
            }
            if (sl)
            {
                r8->unk4 |= 4;
                ++r8->unk2AD;
            }
            else
            {
                if (r8->unk2AD < 0)
                    ++r8->unk2AD;
                else
                    r8->unk2AD = 0;
            }
        }
        if (!(r8->unk4 & 4))
        {
            if (r8->unk4 & 2)
            {
                u32 sp04;

                sp04 = 0xFFFF;
                sl = 0;
                for (sb = 0; sb < gNumHumanPlayers; ++sb)
                {
                    u16 r3;

                    r3 = r8->unk8[0][sb];
                    r7 = r8->unk2A8[sb];
                    r6 = &r8->unkA0[sb][r7];
                    r8->unk8[0][sb] = r6->unk4 & 0x3FF;
                    r8->unk8[1][sb] = r8->unk8[0][sb] & ~r3;
                    r8->unk8[2][sb] = r3 & ~r8->unk8[0][sb];
                    sp04 &= r6->unk4 & 0xC00;
                    sl |= r6->unk4 & 0xC00;
                    r8->unk2A8[sb] = (r8->unk2A8[sb] + 1) & 0xF;
                }
                if (r8->unk4 & 8 && sp04 != sl)
                {
                    r8->unk4 |= 0x8000;
                    gUnk_02038580 = 8;
                    return 0;
                }
            }
            else
                goto _08031478;
        }
        if (r8->unk4 & 2)
        {
            if (r8->unk2AD > 0x10)
            {
                r8->unk4 |= 0x8000;
                gUnk_02038580 = 7;
                return 0;
            }
            if (r8->unk2A4[sb] == ((r8->unk2A8[sb] - 1) & 0xF))
            {
                r8->unk4 |= 0x8000;
                gUnk_02038580 = 5;
                return 0;
            }
        }
    _08031478:
        if (!(r8->unk4 & 4))
            ++r8->unk0;
    }
    return 1;
}

static void sub_0803149C(void)
{
    u16 i, *p;
    struct Multi_08030C94 *r0 = TaskGetStructPtr(gCurTask), *r4 = r0;
    struct Unk_020382A0 *r5 = &gUnk_020382A0;

    if (!r4->unkC)
    {
        if (gMultiSioStatusFlags & MULTI_SIO_HARD_ERROR)
        {
            r5->unk04 = -2;
            r5->unk06 &= ~3;
            r5->unk06 &= ~4;
            r4->unkC = 1;
            return;
        }
        else if (gMultiSioStatusFlags & MULTI_SIO_ID_OVER_ERROR)
        {
            r5->unk04 = -3;
            r5->unk06 &= ~4;
            r4->unkC = 1;
            return;
        }
        else if (!(gMultiSioStatusFlags
            & (MULTI_SIO_CONNECTED_ID0 | MULTI_SIO_CONNECTED_ID1
                | MULTI_SIO_CONNECTED_ID2 | MULTI_SIO_CONNECTED_ID3)))
        {
            if (r4->unk18 > 8)
            {
                r5->unk04 = -1;
                r5->unk06 &= ~3;
                r5->unk06 &= ~4;
                r4->unkC = 1;
                return;
            }
            else
                ++r4->unk18;
        }
        else
            r4->unk18 = 0;
        for (i = 0; i < 4; ++i)
        {
            p = r4->unk10;
            if ((MULTI_SIO_CONNECTED_ID(i) & gMultiSioStatusFlags)
                && !(MULTI_SIO_RECV_ID(i) & gMultiSioStatusFlags))
            {
                u16 *d = &p[i];

                if (*d > 10)
                {
                    r5->unk04 = -4;
                    r5->unk06 &= ~4;
                    r4->unkC = 1;
                    return;
                }
                else
                    ++*d;
            }
            else
            {
                u16 *d = &p[i];

                *d = 0;
            }
        }
        r5->unk04 = r4->func(r4);
        r5->unk06 &= ~4;
    }
}

static s16 sub_080315B8(struct Multi_08030C94 *r8)
{
    struct Unk_020382A0 *r0 = &gUnk_020382A0;
    struct MultiSioHandshakeData *r1, *r5 = &gMultiSioSend.handshake;
    s16 ret = 0;
    u16 i;

    r0->unk28 = 0;
    r0->unk29 = 0;
    for (i = 0; i < 4; ++i)
    {
        if (SIO_MULTI_CNT->id == i)
        {
            r0->unk28 = i + 1;
            ++r0->unk29;
            r5->unkC |= 1 << i;
        }
        else if (MULTI_SIO_CONNECTED_ID(i) & gMultiSioStatusFlags)
        {
            r0->unk28 = i + 1;
            r1 = &gMultiSioRecv[i].handshake;
            if (r1->type == LINK_MSG_HANDSHAKE)
            {
                if (r8->unk1C != r1->unk1)
                    ret = -5;
                else
                {
                    switch (r1->state)
                    {
                    case 0x20:
                    case 0x40:
                    case 0x41:
                        ++r0->unk29;
                        r5->unkC |= 1 << i;
                        break;
                    }
                }
            }
        }
        else if (!(MULTI_SIO_RECV_ID(i) & gMultiSioStatusFlags))
            ((vu16 *)REG_ADDR_SIOMULTI0)[i];
    }
    return ret;
}

static s32 sub_0803169C(struct Multi_08030C94 *r4)
{
    struct Unk_020382A0 *r6 = &gUnk_020382A0;
    struct MultiSioHandshakeData *r1 = &gMultiSioSend.handshake;

    r1->type = LINK_MSG_HANDSHAKE;
    r1->unk1 = r4->unk1C;
    r1->magic = LINK_HANDSHAKE_MAGIC;
    r1->state = 0;
    r1->unkC = 0;
    CpuCopy16(&r4->unk4, &r1->payload, sizeof(union MultiSioHandshakePayload));
    r6->unk06 &= ~3;
    if (SIO_MULTI_CNT->id == 0
        && gMultiSioStatusFlags & MULTI_SIO_PARENT
        && MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id) & gMultiSioStatusFlags)
    {
        r6->unk06 |= 1;
        r4->func = sub_08031764;
    }
    else if (SIO_MULTI_CNT->id != 0
        && !(gMultiSioStatusFlags & MULTI_SIO_PARENT)
        && MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id) & gMultiSioStatusFlags)
    {
        r6->unk06 |= 2;
        r4->func = sub_080319F0;
    }
    return 0;
}

static s32 sub_08031764(struct Multi_08030C94 *r7)
{
    struct Unk_020382A0 *r5 = &gUnk_020382A0;
    struct MultiSioHandshakeData *r1, *r6 = &gMultiSioSend.handshake;
    union MultiSioHandshakePayload *p;
    s32 result;
    u16 i;

    r6->type = LINK_MSG_HANDSHAKE;
    r6->unk1 = r7->unk1C;
    r6->magic = LINK_HANDSHAKE_MAGIC;
    r6->state = 0x20;
    r6->unkC = 1;
    if (SIO_MULTI_CNT->id != 0
        || !(gMultiSioStatusFlags & MULTI_SIO_PARENT)
        || !(MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id) & gMultiSioStatusFlags))
    {
        r5->unk06 &= ~3;
        r7->func = sub_0803169C;
        return -1;
    }
    else if ((result = sub_080315B8(r7)))
    {
        return result;
    }
    else if (r5->unk28 == r5->unk29 && r5->unk28 > 1)
    {
        if (r5->unk06 & 4)
        {
            for (i = 0; i < 4; ++i)
            {
                p = gUnk_020382A0.unk08;
                if (SIO_MULTI_CNT->id == i)
                {
                    CpuCopy16(&r6->payload, p+i, sizeof(union MultiSioHandshakePayload));
                }
                else
                {
                    r1 = &gMultiSioRecv[i].handshake;
                    CpuCopy16(&r1->payload, p+i, sizeof(union MultiSioHandshakePayload));
                }
            }
            r7->func = sub_08031860;
        }
        return 1;
    }
    return 0;
}

static s32 sub_08031860(struct Multi_08030C94 *r6)
{
    u16 i;
    struct Unk_020382A0 *r5 = &gUnk_020382A0;
    struct MultiSioHandshakeData *r1, *r4 = &gMultiSioSend.handshake;
    s16 sp00;

    r4->type = LINK_MSG_HANDSHAKE;
    r4->unk1 = r6->unk1C;
    r4->magic = LINK_HANDSHAKE_MAGIC;
    r4->state = 0x22;
    r4->unkC |= 1;
    if (SIO_MULTI_CNT->id != 0
        || !(gMultiSioStatusFlags & MULTI_SIO_PARENT)
        || !(MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id) & gMultiSioStatusFlags))
    {
        r5->unk06 &= ~3;
        r6->func = sub_0803169C;
        return -1;
    }
    sp00 = 0;
    for (i = 0; i < r5->unk28; ++i)
    {
        if (SIO_MULTI_CNT->id == i)
        {
            r4->unkC |= 1 << i;
            r4->unkC |= 0x10 << i;
        }
        else if (MULTI_SIO_CONNECTED_ID(i) & gMultiSioStatusFlags)
        {
            r1 = &gMultiSioRecv[i].handshake;
            if (r1->type == LINK_MSG_HANDSHAKE)
            {
                if (r6->unk1C != r1->unk1)
                    sp00 = -5;
                else if (r1->magic != LINK_HANDSHAKE_MAGIC)
                    sp00 = -6;
                else
                {
                    switch (r1->state)
                    {
                    case 0x40:
                    case 0x41:
                        r4->unkC |= 1 << i;
                        break;
                    case 0x42:
                        r4->unkC |= 1 << i;
                        r4->unkC |= 0x10 << i;
                        break;
                    }
                }
            }
        }
    }
    if (sp00) return sp00;
    for (i = 0; i < r5->unk28; ++i)
    {
        if (!(r4->unkC & (0x10 << i)))
            break;
    }
    if (i != r5->unk28)
        return 1;
    else
    {
        r6->func = sub_08031D00;
        return 2;
    }
}

static s32 sub_080319F0(struct Multi_08030C94 *r4)
{
    struct Unk_020382A0 *r3 = &gUnk_020382A0;
    struct MultiSioHandshakeData *r1 = &gMultiSioSend.handshake, *r6 = &gMultiSioRecv[0].handshake;
    s32 ret;

    r1->type = LINK_MSG_HANDSHAKE;
    r1->unk1 = r4->unk1C;
    r1->magic = LINK_HANDSHAKE_MAGIC;
    r1->state = 0x40;
    r1->unkC = 0;
    if (SIO_MULTI_CNT->id == 0
        || gMultiSioStatusFlags & MULTI_SIO_PARENT
        || !(MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id) & gMultiSioStatusFlags))
    {
        r3->unk06 &= ~3;
        r4->func = sub_0803169C;
        return -1;
    }
    if (r6->type == LINK_MSG_HANDSHAKE)
    {
        ret = sub_080315B8(r4);
        if (ret) return ret;
        if (r6->state == 0x20 && (r6->unkC >> SIO_MULTI_CNT->id) & 1)
            r4->func = sub_08031AA8;
    }
    return 0;
}

static s32 sub_08031AA8(struct Multi_08030C94 *r8)
{
    u16 i;
    struct Unk_020382A0 *r5 = &gUnk_020382A0;
    struct MultiSioHandshakeData *r6 = &gMultiSioSend.handshake, *r7 = &gMultiSioRecv[0].handshake;
    union MultiSioHandshakePayload *p;
    s32 res;

    r6->type = LINK_MSG_HANDSHAKE;
    r6->unk1 = r8->unk1C;
    r6->magic = LINK_HANDSHAKE_MAGIC;
    r6->state = 0x41;
    r6->unkC = 0;
    if (SIO_MULTI_CNT->id == 0
        || gMultiSioStatusFlags & MULTI_SIO_PARENT
        || !((MULTI_SIO_RECV_ID(SIO_MULTI_CNT->id) & gMultiSioStatusFlags)))
    {
        r5->unk06 &= ~3;
        r8->func = sub_0803169C;
        return -1;
    }
    else if (r7->type != LINK_MSG_HANDSHAKE)
        return -1;
    else
    {
        res = sub_080315B8(r8);
        if (res) return res;
        if (r7->state == 0x22)
        {
            for (i = 0; i < 4; ++i)
            {
                p = gUnk_020382A0.unk08;
                if (SIO_MULTI_CNT->id == i)
                {
                    CpuCopy16(&r6->payload, p+i, sizeof(union MultiSioHandshakePayload));
                }
                else
                {
                    r7 = &gMultiSioRecv[i].handshake;
                    CpuCopy16(&r7->payload, p+i, sizeof(union MultiSioHandshakePayload));
                }
            }
            r8->func = sub_08031BB0;
            r8->unk1A = 2;
            r6->state = 0x42;
        }
    }
    return 0;
}

static s32 sub_08031BB0(struct Multi_08030C94 *r1)
{
    struct MultiSioHandshakeData *r2 = &gMultiSioSend.handshake;

    if (r1->unk1A)
    {
        --r1->unk1A;
        r2->type = LINK_MSG_HANDSHAKE;
        r2->unk1 = r1->unk1C;
        r2->magic = LINK_HANDSHAKE_MAGIC;
        r2->state = 0x41;
        return 0;
    }
    else
    {
        r1->unkC = 1;
        r2->type = LINK_MSG_HANDSHAKE;
        r2->unk1 = r1->unk1C;
        r2->magic = LINK_HANDSHAKE_MAGIC;
        r2->state = 0x42;
        return 2;
    }
}

void sub_08031BFC(void)
{
    gUnk_02038580 = 0;
    CpuFill16(0, &gUnk_020382D0, sizeof(gUnk_020382D0));
    CpuFill16(0, &gUnk_020382A0, sizeof(gUnk_020382A0));
}

void sub_08031C3C(void)
{
    TaskDestroy(gUnk_020382A0.task);
    gUnk_020382A0.task = NULL;
}

void sub_08031C54(void)
{
    gUnk_020382A0.unk06 |= 4;
}

s16 sub_08031C64(void)
{
    return gUnk_020382A0.unk04;
}

void sub_08031C70(u8 r5)
{
    CpuFill32(0, gMultiSioRecv, sizeof(gMultiSioRecv));
    CpuFill32(0, &gMultiSioSend, sizeof(gMultiSioSend));
    CpuFill16(0, &gUnk_020382D0, sizeof(gUnk_020382D0));
    gUnk_020382D0.unk4 = 0;
    gUnk_020382D0.unk6 = r5;
}

void sub_08031CC8(void)
{
    gUnk_020382D0.unk4 = 0;
}

void sub_08031CD4(void)
{
    gUnk_020382D0.unk4 |= 1;
}

void sub_08031CE4(u8 r0)
{
    gUnk_020382D0.unk2AD -= r0;
}

static s32 sub_08031D00(struct Multi_08030C94 *r0)
{
    struct MultiSioHandshakeData *r2 = &gMultiSioSend.handshake;

    r0->unkC = 1;
    r2->type = LINK_MSG_HANDSHAKE;
    r2->unk1 = r0->unk1C;
    r2->magic = LINK_HANDSHAKE_MAGIC;
    r2->state = 0x22;
    return 2;
}

static void sub_08031D24(void)
{
    struct Multi_08032B0C *r6;

    DisableMultiSio();
    r6 = TaskGetStructPtr(gCurTask);
    r6->unk20 = 0;
    REG_RCNT = 0;
    CpuFill16(0, &gMultiBootParam, sizeof(gMultiBootParam));
    CpuFill16(0, &gMultiBootStruct, sizeof(gMultiBootStruct));
    CpuFill16(0, &gMultiBootDataRecv, sizeof(gMultiBootDataRecv));
    gUnk_0300050C = -1;
    gUnk_03000480 = 0;
    sub_0803024C();
    MultiBootInitWithParams((void *)0, (void *)0x100); // ?
    r6->unk54 = gMultiBootStruct.unk06;
    r6->unk56 = gMultiBootStruct.unk08;
    r6->unk58 = 0;
    gCurTask->main = sub_08031DF0;
}

static void sub_08031DF0(void)
{
    struct Multi_08032B0C *r0 = TaskGetStructPtr(gCurTask), *r4 = r0;

    r4->unkE = 0;
    if (r4->unkC & 2)
    {
        sub_08030B38();
        r4->unkE = 7;
        gCurTask->main = nullsub_118;
    }
    else
    {
        sub_08030C40(1);
        if (gMultiBootStruct.unk01 > 1 && gMultiBootStruct.unk02 == 3 && gUnk_0300050C == 1)
        {
            r4->unk10 = gMultiBootStruct.unk00;
            r4->unk11 = gMultiBootStruct.unk01;
            gLocalPlayerId = gMultiBootStruct.unk00;
            gNumHumanPlayers = gMultiBootStruct.unk01;
            sub_08030B38();
            gCurTask->main = sub_08032BEC;
        }
        else
        {
            if (r4->unk54 != gMultiBootStruct.unk06
                || r4->unk56 != gMultiBootStruct.unk08)
            {
                r4->unk54 = gMultiBootStruct.unk06;
                r4->unk56 = gMultiBootStruct.unk08;
                r4->unk58 = 0;
            }
            else
            {
                if (r4->unk58 > 180)
                {
                    sub_08030B38();
                    r4->unk10 = 0;
                    r4->unk11 = 0;
                    gCurTask->main = sub_08031D24;
                    return;
                }
                ++r4->unk58;
            }
            if (gMultiBootStruct.unk03 & 1)
            {
                sub_08030B38();
                r4->unkE = 8;
                gCurTask->main = nullsub_118;
            }
            else if (!gMultiBootStruct.unk03)
            {
                r4->unk10 = gMultiBootStruct.unk00;
                r4->unk11 = gMultiBootStruct.unk01;
                if (r4->unk11 < 2) r4->unk11 = 0;
                if (!gMultiBootStruct.unk00 && gUnk_0300050C == 1)
                {
                    if (gMultiBootStruct.unk02 == 2)
                    {
                        if (r4->unk20 > 90)
                        {
                            r4->unkE = 1;
                            if (r4->unkC & 1)
                            {
                                sub_08030C1C();
                                r4->unkC &= ~1;
                            }
                        }
                        else
                            ++r4->unk20;
                    }
                    else
                        r4->unk20 = 0;
                }
                else if (gUnk_0300050C == 2)
                {
                    r4->unk10 = 0;
                    r4->unk11 = 0;
                    sub_08030B38();
                    r4->unkE = 8;
                    gCurTask->main = nullsub_118;
                }
            }
            else
            {
                sub_08030B38();
                r4->unk10 = 0;
                r4->unk11 = 0;
                gCurTask->main = sub_08031D24;
            }
        }
    }
}

static void sub_08031FAC(void)
{
    union MultiSioHandshakePayload sp00;
    struct Multi_08032B0C *r1 = TaskGetStructPtr(gCurTask);

    r1->unk20 = 0;
    sp00.preWorldProps.unk0 = gUnk_0203ACB0[gSaveID < 3 ? gSaveID : 0];
    sp00.preWorldProps.unk2 = gUnk_0203ADE0;
    sub_08030C94(1, &sp00);
    gCurTask->main = sub_08032024;
}

static void sub_08032024(void)
{
    struct Multi_08032B0C *r4 = TaskGetStructPtr(gCurTask), *r8 = r4;
    s32 r0;
    u16 i;

    if (--r8->unk1E == 0xFFFF)
    {
        TaskDestroy(gCurTask);
        gUnk_02038580 = 0;
        sub_08032E98();
    }
    else if ((r0 = sub_08031C64()) == 2)
    {
        if (gNumHumanPlayers == gUnk_020382A0.unk28)
        {
            for (i = 0; i < gNumHumanPlayers; ++i)
            {
                u16 *r4 = r8->unk4; // useless variable for easy-matching
                union MultiSioHandshakePayload *r7 = gUnk_020382A0.unk08;

                r8->unk4[i] = r7[i].preWorldProps.unk0;
                gUnk_0203AD1C[i] = r7[i].preWorldProps.unk2;
                r4 = r8->unk4; // dummy
            }
            for (; i < 4; ++i)
            {
                r8->unk4[i] = 0xFFFF;
                gUnk_0203AD1C[i] = 0xFF;
            }
            sub_08031C3C();
            gCurTask->main = sub_08032C3C;
        }
        else
        {
            TaskDestroy(gCurTask);
            gUnk_02038580 = 0;
            sub_08032E98();
        }
    }
    else if (r0 == 1)
    {
        if (r8->unk20++ > 8)
            sub_08031C54();
    }
    else if (r0 < 0)
    {
        sub_08031C3C();
        gCurTask->main = sub_08031FAC;
    }
    else
        r8->unk20 = 0;
}

static void sub_08032164(void)
{
    u16 i;
    struct Multi_08032B0C *r1;

    r1 = TaskGetStructPtr(gCurTask);
    r1->unk16 = 0;
    r1->unk18 = 0;
    for (i = 0; i < 4; ++i)
    {
        r1->unk22[0][i] = 0;
        r1->unk22[1][i] = 0;
        r1->unk22[2][i] = 0;
    }
    sub_08031C70(2);
    sub_08031CD4();
    gCurTask->main = sub_08032DA4;
}

static void sub_080321DC(void)
{
    u16 i;
    bool32 sp00 = FALSE;
    u32 r7 = 0;
    struct Multi_08032B0C *r0 = TaskGetStructPtr(gCurTask), *ip = r0;

    for (i = 0; i < gNumHumanPlayers; ++i)
    {
        u32 tmp = ip->unk22[0][i];

        ip->unk22[0][i] = gUnk_020382D0.unk8[0][i];
        ip->unk22[1][i] = (tmp ^ ip->unk22[0][i]) & ip->unk22[0][i];
        ip->unk22[2][i] = tmp & ~ip->unk22[0][i];
        r7 |= ip->unk22[1][i];
    }
    if (r7 & 0x40 && ip->unk18)
        --ip->unk18;
    if (r7 & 0x80 && gNumHumanPlayers - 1 > ip->unk18)
        ++ip->unk18;
    if (ip->unk16 > 0x3C)
    {
        if (r7 & 1) sp00 = TRUE;
    }
    else
        ++ip->unk16;
    ip->unk12 = ip->unk18;
    if (sp00)
        gCurTask->main = sub_08032C50;
}

static void sub_080322E8(void)
{
    struct Multi_08032B0C *r2;
    union MultiSioData *r4;

    r2 = TaskGetStructPtr(gCurTask);
    if (r2->unk16++ > 8)
    {
        r4 = &gMultiSioSend;
        sub_08031CC8();
        r4->worldProps.type = LINK_MSG_WORLD_PROPS;
        r4->worldProps.unk1 = 2;
        r4->worldProps.seq = 0;
        r4->worldProps.unk3 = 0;
        gCurTask->main = sub_0803234C;
    }
}

static void sub_0803234C(void)
{
    struct Multi_08032B0C *r0 = TaskGetStructPtr(gCurTask), *r5 = r0;
    u16 v = gSaveID > 2 ? 0 : gSaveID;

    if (WriteSaveSectionByID(SAVE_BUFFER_TYPE_WORLD_PROPS, v))
    {
        ClearSaveBuffer(SAVE_BUFFER_TYPE_WORLD_PROPS);
        v = gSaveID > 2 ? 0 : gSaveID;
        UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, v);
    }
    if (SIO_MULTI_CNT->id == r5->unk18)
        r5->unk16 = 0x20;
    else
        r5->unk16 = 8;
    gCurTask->main = sub_080323DC;
}

static void sub_080323DC(void)
{
    struct Multi_08032B0C *r2 = TaskGetStructPtr(gCurTask);

    if (!r2->unk16--)
    {
        if (SIO_MULTI_CNT->id == r2->unk18)
            gCurTask->main = sub_08032448;
        else
            gCurTask->main = sub_0803264C;
    }
}

static void sub_08032448(void)
{
    union MultiSioData *r5 = &gMultiSioSend;
    struct Multi_08032B0C *r1 = TaskGetStructPtr(gCurTask);

    r1->unk1A = 0;
    r1->unk1C = 0;
    r1->unk1E = 0;
    r1->unk50 = 0;
    CpuFill16(0, r5, sizeof(union MultiSioData));
    r5->worldProps.type = LINK_MSG_WORLD_PROPS;
    r5->worldProps.unk1 = 2;
    r5->worldProps.seq = 0;
    r5->worldProps.unk3 = 0;
    gCurTask->main = sub_080324BC;
}

static void sub_080324BC(void)
{
    u16 i, j;
    union MultiSioData *r8 = &gMultiSioSend;
    struct Multi_08032B0C *r0 = TaskGetStructPtr(gCurTask), *r4 = r0;

    if (!r8->worldProps.seq)
        r8->worldProps.seq = 1;
    for (i = 0; i < gNumHumanPlayers; ++i)
    {
        if (i != SIO_MULTI_CNT->id)
        {
            union MultiSioData *r1 = &gMultiSioRecv[i];

            if (r8->worldProps.seq + 1 != r1->worldProps.seq)
                break;
        }
    }
    if (i == gNumHumanPlayers)
    {
        for (j = 0; j < sizeof(r8->worldProps.chunk) && r4->unk1C + j < gWorldProps[r4->unk1A].dataSize; ++j)
            r4->unk50 += gWorldProps[r4->unk1A].dataPtr[r4->unk1C + j];
        r4->unk1E = 0;
        ++r8->worldProps.seq;
        r4->unk1C += sizeof(r8->worldProps.chunk);
        if (r4->unk1C >= gWorldProps[r4->unk1A].dataSize)
        {
            ++r4->unk1A;
            r4->unk1C = 0;
        }
    }
    else if (r4->unk1E++ > 0x10)
    {
        TaskDestroy(gCurTask);
        gUnk_02038580 = 0;
        sub_08032E98();
        return;
    }
    CpuCopy16(gWorldProps[r4->unk1A].dataPtr + r4->unk1C, r8->worldProps.chunk, sizeof(r8->worldProps.chunk));
    if (r4->unk1A >= TheNumberSeven())
        gCurTask->main = sub_08032CA8;
}

static void sub_0803264C(void)
{
    struct MultiSioWorldPropsData *r5 = &gMultiSioSend.worldProps;
    struct Multi_08032B0C *r1 = TaskGetStructPtr(gCurTask);

    r1->unk1A = 0;
    r1->unk1C = 0;
    r1->unk1E = 0;
    r1->unk50 = 0;
    CpuFill16(0, r5, (sizeof(*r5)));
    r5->type = LINK_MSG_WORLD_PROPS;
    r5->unk1 = 2;
    r5->seq = 1;
    r5->unk3 = 0;
    gCurTask->main = sub_080326C0;
}

static void sub_080326C0(void)
{
    u16 i;
    u32 size;
    union MultiSioData *ip, *r8 = &gMultiSioSend;
    struct Multi_08032B0C *r0 = TaskGetStructPtr(gCurTask), *r4 = r0;

    ip = &gMultiSioRecv[r4->unk18];
    if (!ip->worldProps.seq)
    {
        if (r4->unk1E++ > 0x40)
        {
            TaskDestroy(gCurTask);
            gUnk_02038580 = 0;
            sub_08032E98();
        }
    }
    else if (ip->worldProps.seq != r8->worldProps.seq)
    {
        if (r4->unk1E++ > 0x10)
        {
            TaskDestroy(gCurTask);
            gUnk_02038580 = 0;
            sub_08032E98();
        }
    }
    else
    {
        r4->unk1E = 0;
        size = gWorldProps[r4->unk1A].dataSize - r4->unk1C;
        if (size > sizeof(ip->worldProps.chunk)) size = sizeof(ip->worldProps.chunk);
        CpuCopy16(ip->worldProps.chunk, &gWorldProps[r4->unk1A].dataPtr[r4->unk1C], size);
        for (i = 0; i < sizeof(ip->worldProps.chunk) && r4->unk1C + i < gWorldProps[r4->unk1A].dataSize; ++i)
            r4->unk50 += gWorldProps[r4->unk1A].dataPtr[r4->unk1C + i];
        ++r8->worldProps.seq;
        r4->unk1C += sizeof(ip->worldProps.chunk);
        if (r4->unk1C >= gWorldProps[r4->unk1A].dataSize)
        {
            ++r4->unk1A;
            r4->unk1C = 0;
        }
        if (r4->unk1A >= TheNumberSeven())
            gCurTask->main = sub_08032CA8;
    }
}

static void sub_08032818(void)
{
    struct Multi_08032B0C *r3 = TaskGetStructPtr(gCurTask);
    union MultiSioHandshakePayload sp00;

    r3->unk20 = 0;
    sp00.postWorldProps.rngSeed = Rand32();
    sp00.postWorldProps.checksum = r3->unk50;
    sub_08030C94(1, &sp00);
    gCurTask->main = sub_08032888;
}

static void sub_08032888(void)
{
    struct Multi_08032B0C *r4 = TaskGetStructPtr(gCurTask);
    s32 r0;
    u16 i;

    if (--r4->unk1E == 0xFFFF)
    {
        TaskDestroy(gCurTask);
        gUnk_02038580 = 0;
        sub_08032E98();
    }
    else if ((r0 = sub_08031C64()) == 2)
    {
        if (gNumHumanPlayers == gUnk_020382A0.unk28)
        {
            u32 r5, r7;

            sub_08031C3C();
            r7 = 0xFFFF;
            r5 = 0;
            for (i = 0; i < gNumHumanPlayers; ++i)
            {
                // 2x useless variables for easy-matching
                u32 *d = r4->unk40;
                u8 *p = &gNumHumanPlayers;
                union MultiSioHandshakePayload *s = gUnk_020382A0.unk08;

                ++r7; --r7; // swap r6/r7
                r4->unk40[i] = s[i].postWorldProps.rngSeed;
                r7 &= s[i].postWorldProps.checksum;
                r5 |= s[i].postWorldProps.checksum;
                // dummy statements
                d = r4->unk40;
                p = &gNumHumanPlayers;
            }
            if (r7 != r5)
            {
                TaskDestroy(gCurTask);
                gUnk_02038580 = 0;
                sub_08032E98();
            }
            else
                gCurTask->main = sub_08032CE8;
        }
        else
        {
            TaskDestroy(gCurTask);
            gUnk_02038580 = 0;
            sub_08032E98();
        }
    }
    else if (r0 == 1)
    {
        if (r4->unk20++ > 8)
            sub_08031C54();
    }
    else if (r0 < 0)
    {
        sub_08031C3C();
        gCurTask->main = sub_08032818;
    }
    else
        r4->unk20 = 0;
}

static void sub_080329C8(void)
{
    u16 i;
    u16 a[4];
    bool32 b[4];
    s32 c[4][2];
    struct Multi_08032B0C *r0 = TaskGetStructPtr(gCurTask), *r5 = r0;

    r5->unk16 = 0;
    for (i = 0; i < 4; ++i)
        sub_08002C98(i, &a[i], &b[i], c[i]);
    gRngVal = r5->unk40[r5->unk18];
    sub_08031C70(1);
    sub_08031CD4();
    gUnk_0203AD24 = r5->unk18;
    gUnk_0203AD10 = 2;
    sub_080332BC(gNumHumanPlayers, 0, a, c[0], b);
    gCurTask->main = sub_08032A80;
}

static void sub_08032A80(void)
{
    struct Multi_08032B0C *r3 = TaskGetStructPtr(gCurTask);

    ++r3->unk14;
    gMainFlags |= 0x400;
    if (r3->unk16++ > 8)
    {
        r3->unk16 = 0;
        gMainFlags &= ~0x400;
        if (!sub_08030D4C(1))
        {
            TaskDestroy(gCurTask);
            sub_08032E98();
        }
        else
            TaskDestroy(gCurTask);
    }
}

struct Multi_08032B0C *sub_08032B0C(void)
{
    struct Task *t = TaskCreate(sub_08031D24, sizeof(struct Multi_08032B0C), 0xFFFE, TASK_USE_IWRAM | TASK_x0004, NULL);
    struct Multi_08032B0C *r4 = TaskGetStructPtr(t);

    CpuFill16(0, r4, sizeof(*r4));
    CpuFill16(0xFFFF, r4->unk4, sizeof(r4->unk4));
    r4->task = t;
    return r4;
}

u32 sub_08032B84(struct Multi_08032B0C *r1)
{
    if (r1->unkE == 7 || r1->unkE == 8)
    {
        TaskDestroy(r1->task);
        return 1;
    }
    return 0;
}

void sub_08032BA4(struct Multi_08032B0C *r2)
{
    if (r2->unkE == 1)
        r2->unkC |= 1;
}

void sub_08032BBC(struct Multi_08032B0C *r2)
{
    if (r2->unkE < 2)
        r2->unkC |= 2;
}

void sub_08032BD4(struct Multi_08032B0C *r2)
{
    if (r2->unkE == 5)
        r2->unkC |= 4;
}

static void sub_08032BEC(void)
{
    struct Multi_08032B0C *r4 = TaskGetStructPtr(gCurTask);

    ResetMultiSio();
    r4->unk16 = 8;
    r4->unk1E = 0x3C;
    r4->unkE = 2;
    gCurTask->main = sub_08032D3C;
}

static void sub_08032C3C(void)
{
    gCurTask->main = sub_08032D90;
}

static void sub_08032C50(void)
{
    struct Multi_08032B0C *r3 = TaskGetStructPtr(gCurTask);

    r3->unk16 = 0;
    gUnk_020382D0.unk4 &= ~2;
    r3->unkE = 4;
    gCurTask->main = sub_080322E8;
}

static void sub_08032CA8(void)
{
    struct Multi_08032B0C *r1 = TaskGetStructPtr(gCurTask);

    r1->unk16 = 8;
    r1->unk1E = 0x3C;
    gCurTask->main = sub_08032E08;
}

static void sub_08032CE8(void)
{
    struct Multi_08032B0C *r2 = TaskGetStructPtr(gCurTask);

    r2->unkE = 5;
    if (r2->unkC & 4)
    {
        r2->unkE = 6;
        gCurTask->main = sub_080329C8;
    }
}

static void nullsub_118(void)
{}

static void sub_08032D3C(void)
{
    struct Multi_08032B0C *r1 = TaskGetStructPtr(gCurTask);

    if (--r1->unk16 == 0xFFFF)
    {
        EnableMultiSio();
        gCurTask->main = sub_08031FAC;
    }
}

static void sub_08032D90(void)
{
    gCurTask->main = sub_08032164;
}

static void sub_08032DA4(void)
{
    struct Multi_08032B0C *r2 = TaskGetStructPtr(gCurTask);

    ++r2->unk14;
    if (r2->unk16++ > 8)
    {
        r2->unk16 = 0;
        if (!sub_08030D4C(0))
            sub_08032E98();
        else
            gCurTask->main = sub_08032E50;
    }
}

static void sub_08032E08(void)
{
    struct Multi_08032B0C *r1 = TaskGetStructPtr(gCurTask);

    if (--r1->unk16 == 0xFFFF)
        gCurTask->main = sub_08032818;
}

static void sub_08032E50(void)
{
    struct Multi_08032B0C *r2 = TaskGetStructPtr(gCurTask);

    r2->unk12 = 0;
    r2->unkE = 3;
    r2->unk16 = 0;
    gCurTask->main = sub_080321DC;
}

