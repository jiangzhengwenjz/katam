#include "global.h"
#include "data.h"
#include "functions.h"
#include "multi_boot_util.h"
#include "multi_sio.h"
#include "main.h"

static void sub_08030898(void);

#define MULTIBOOT_DATA_RECV_CHILD_P (gMultiBootDataRecv.data + 1)
#define MULTIBOOT_DATA_RECV_PARENT_P (gMultiBootDataRecv.data)
#define MULTIBOOT_DATA_RECV_PARENT (*MULTIBOOT_DATA_RECV_PARENT_P)

void sub_0803024C(void)
{
    REG_IME = 0;
    CpuFill16(0, &gMultiBootStruct, sizeof(gMultiBootStruct));
    gMultiBootStruct.unk08 = 0x100;
    gMultiBootStruct.unk06 = gMultiBootStruct.unk08;
    gUnk_0300050C = 0;
    REG_SIOCNT = SIO_MULTI_MODE;
    REG_SIOCNT |= SIO_INTR_ENABLE | SIO_115200_BPS;
    REG_SIOMLT_SEND = 0;
    gTimer3IntrBkp = gIntrTable[7];
    gMultiSioIntrBkp = gIntrTable[0];
    gIntrTable[0] = sub_08030898;
    gIntrTable[7] = sub_08030898;
    REG_IE |= INTR_FLAG_SERIAL;
    REG_IME = 1;
}

static void sub_080302EC(void)
{
    vu16 sioCntBkp = REG_SIOCNT;
    s32 i;
    u32 r3;

    if (!(REG_SIOCNT & SIO_MULTI_CONNECT))
        MultiBootMain(&gMultiBootParam);
    gMultiBootStruct.unk25 = 0;
    if (!(sioCntBkp & SIO_MULTI_PARENT))
    {
        if (sioCntBkp & SIO_MULTI_BUSY) return;
        gMultiBootStruct.unk03 = 0;
        gMultiBootStruct.unk25 = gMultiBootStruct.unk03;
        gMultiBootStruct.unk24 = gMultiBootStruct.unk25;
    }
    else
    {
        if (gMultiBootStruct.unk24 < 0x1E) return;
        r3 = 0;
        for (i = 0; i < MULTIBOOT_NCHILD; ++i)
        {
            u16 r0 = (gMultiBootStruct.unk1E[i] & 0xFFF0);

            if (r0 == 0x7200)
                r3 |= 1;
            if (r0 == 0x8F50)
                r3 |= 2;
        }
        gMultiBootStruct.unk25 = r3;
        if (r3 & 1 && r3 & 2)
            gMultiBootStruct.unk03 |= 2;
        else
        {
            gMultiBootStruct.unk2A = 0;
            gMultiBootStruct.unk02 = 0;
            gMultiBootStruct.unk0A = 0;
            if (gMultiBootStruct.unk25 == 1)
                gUnk_0300050C = 2;
            else if (gMultiBootStruct.unk25 == 2)
                gUnk_0300050C = 1;
        }
    }
}

static void sub_0803040C(void)
{
    vu16 sioCntBkp = REG_SIOCNT;

    if (gMultiBootStruct.unk28 & 0x40
        || !(gMultiBootStruct.unk28 & 8))
    {
        gMultiBootStruct.unk01 = 0;
        gMultiBootStruct.unk25 = 0;
        gMultiBootStruct.unk24 = gMultiBootStruct.unk25;
        gMultiBootStruct.unk02 = gMultiBootStruct.unk24;
        gMultiBootStruct.unk2A = gMultiBootStruct.unk02;
        gUnk_0300050C = 0;
    }
    else
    {
        if (!(gMultiBootStruct.unk28 & 4)
            && (sioCntBkp & 0xFC) != SIO_MULTI_SD)
        {
            gMultiBootStruct.unk01 = 0;
            gMultiBootStruct.unk25 = 0;
            gMultiBootStruct.unk24 = gMultiBootStruct.unk25;
            gMultiBootStruct.unk02 = gMultiBootStruct.unk24;
            gMultiBootStruct.unk2A = gMultiBootStruct.unk02;
            gUnk_0300050C = 0;
            return;
        }
        else
        {
            if (MULTIBOOT_DATA_RECV_PARENT == 0xE4E4
                && gMultiBootStruct.unk28 & 4) return;
            if (gMultiBootStruct.unk2B != 0)
            {
                REG_SIOMLT_SEND = 0xE4E4;
                REG_SIOCNT |= SIO_MULTI_BUSY;
                return;
            }
            if (gMultiBootStruct.unk2A != 0)
            {
                if (gMultiBootStruct.unk02 != 2
                    || gMultiBootStruct.unk01 == 1)
                {
                    gMultiBootStruct.unk01 = 0;
                    gMultiBootStruct.unk25 = 0;
                    gMultiBootStruct.unk24 = gMultiBootStruct.unk25;
                    gMultiBootStruct.unk02 = gMultiBootStruct.unk24;
                    gMultiBootStruct.unk2A = gMultiBootStruct.unk02;
                    gUnk_0300050C = 0;
                    return;
                }
            }
            else
            {
                if (gMultiBootStruct.unk02 == 2)
                    gMultiBootStruct.unk2A = 1;
            }
            if (MULTIBOOT_DATA_RECV_PARENT == 0xE4E4) return;
            if (!(gMultiBootStruct.unk28 & 4))
            {
                if ((sioCntBkp & 0xFC) != SIO_MULTI_SD)
                    gMultiBootStruct.unk02 = 0;
                ++gMultiBootStruct.unk06;
                gMultiBootStruct.unk06 &= 0x1FFF;
                if (gMultiBootStruct.unk06 <= 0xFF)
                    gMultiBootStruct.unk06 = 0x100;
                REG_SIOMLT_SEND = gMultiBootStruct.unk06 | gMultiBootStruct.unk0C;
                if (!(gMultiBootStruct.unk28 & 0x4000))
                    gMultiBootStruct.unk02 = 0;
                else
                {
                    ++gMultiBootStruct.unk0A;
                    REG_SIOCNT |= SIO_MULTI_BUSY;
                }
            }
            else
            {
                if (gMultiBootStruct.unk06 == gMultiBootStruct.unk08)
                {
                    gMultiBootStruct.unk02 = 0;
                    gMultiBootStruct.unk03 &= 0xFE;
                }
                gMultiBootStruct.unk06 = gMultiBootStruct.unk08;
            }
        }
    }
}

static void sub_080305F8(void)
{
    vu16 sioCntBkp = REG_SIOCNT;
    u32 r2;
    s32 error;

    if (sioCntBkp & SIO_MULTI_CONNECT)
    {
        gUnk_0300050C = 0;
        return;
    }
    if (gMultiBootStruct.unk2A == 1)
    {
        if (gMultiBootStruct.unk01 == 1
            || !(gMultiBootParam.client_bit & 0xE))
        {
            gMultiBootStruct.unk01 = 0;
            gMultiBootStruct.unk25 = 0;
            gMultiBootStruct.unk24 = gMultiBootStruct.unk25;
            gMultiBootStruct.unk02 = gMultiBootStruct.unk24;
            gMultiBootStruct.unk2A = gMultiBootStruct.unk02;
            gUnk_0300050C = 0;
            return;
        }
    }
    else
    {
        if (!(gMultiBootParam.client_bit & 0xE))
            goto _08030726;
    }
    if (gMultiBootStruct.unk2A == 0)
        gMultiBootStruct.unk2A = 1;
    gMultiBootStruct.unk02 = 1;
    gMultiBootStruct.unk01 = 1;
    r2 = gMultiBootParam.client_bit << 0x18;
    gMultiBootStruct.unk01 += (r2 >> 0x19) & 1;
    gMultiBootStruct.unk01 += (r2 >> 0x1A) & 1;
    gMultiBootStruct.unk01 += (r2 >> 0x1B) & 1;
    switch (gMultiBootParam.probe_count)
    {
    case 0:
        if (gMultiBootStruct.unk0A < 16)
            ++gMultiBootStruct.unk0A;
        if (gMultiBootStruct.unk0A == 16)
            gMultiBootStruct.unk02 = 2;
        gMultiBootStruct.unk04 = 2;
        break;
    case 0xD1:
        gMultiBootStruct.unk2B = 2;
        gMultiBootStruct.unk04 = 3;
        gMultiBootParam.server_type = MULTIBOOT_SERVER_TYPE_QUICK;
        break;
    }
    if (gMultiBootParam.probe_count >= 0xE0)
        gMultiBootStruct.unk04 = 4;
    goto _0803072E;
_08030726:
    gMultiBootStruct.unk02 = 0;
    gMultiBootStruct.unk0A = 0;
_0803072E:
    if (gMultiBootStruct.unk0A == 0x11)
    {
        MultiBootStartMaster(&gMultiBootParam, gMultiBootStruct.srcp, gMultiBootStruct.length, 4, 1);
        gMultiBootStruct.unk0A = 0x12;
    }
    if (gMultiBootStruct.unk2B == 1
        && gMultiBootStruct.unk0A == 0x10
        && gMultiBootParam.probe_count == 0
        && gMultiBootParam.client_bit & 0xE)
    {
        m4aMPlayAllStop();
        gUnk_03002440 &= ~4;
        m4aSoundVSyncOff();
        DmaStop(0);
        DmaStop(1);
        DmaStop(2);
        DmaStop(3);
        gMultiBootStruct.unk0A = 0x11;
        gMultiBootStruct.unk2A = 2;
    }
    error = MultiBootMain(&gMultiBootParam);
    if (gMultiBootStruct.unk2B == 2
        && (gMultiBootParam.server_type = MULTIBOOT_SERVER_TYPE_NORMAL,
            gMultiBootStruct.unk2B = 0,
            error != 0))
    {
        REG_SIOCNT |= SIO_INTR_ENABLE;
        gMultiBootStruct.unk03 |= 4;
        gMultiBootStruct.unk01 = 0;
        gMultiBootStruct.unk25 = 0;
        gMultiBootStruct.unk24 = gMultiBootStruct.unk25;
        gMultiBootStruct.unk02 = gMultiBootStruct.unk24;
        gMultiBootStruct.unk2A = gMultiBootStruct.unk02;
        gUnk_0300050C = 0;
    }
    else if (MultiBootCheckComplete(&gMultiBootParam))
        gMultiBootStruct.unk02 = 3;
}

static void sub_08030898(void)
{
    s32 i;
    s32 r8;
    u8 r5;
    vu16 sioCntBkp = REG_SIOCNT;

    gMultiBootStruct.unk28 = sioCntBkp;
    ++gMultiBootStruct.unk26;
    *(vu64 *)&gMultiBootDataRecv = *(vu64 *)REG_ADDR_SIODATA32;
    gMultiBootStruct.unk00 = (sioCntBkp & (SIO_TRANS_DATA_FULL | SIO_RECV_DATA_EMPTY)) >> 4;
    gMultiBootStruct.unk03 &= 0xBF;
    gMultiBootStruct.unk03 |= sioCntBkp & SIO_ERROR;
    if (gUnk_0300050C == 2 || gUnk_0300050C == 0)
    {
        if (REG_SIOCNT & 4)
            REG_SIOMLT_SEND = 0x8F51;
        if (MULTIBOOT_DATA_RECV_CHILD_P[0] == 0xFFFF)
            gMultiBootStruct.unk24 = 0;
        for (i = 0; i < MULTIBOOT_NCHILD; ++i)
        {
            if (MULTIBOOT_DATA_RECV_CHILD_P[i] != gMultiBootStruct.unk1E[i])
                gMultiBootStruct.unk24 = 0;
            gMultiBootStruct.unk1E[i] = MULTIBOOT_DATA_RECV_CHILD_P[i];
        }
        if (++gMultiBootStruct.unk24 < 0x1E) return;
        gMultiBootStruct.unk24 = 0x1E;
    }
    else
    {
        if (MULTIBOOT_DATA_RECV_PARENT == 0xE4E4)
        {
            REG_SIOMLT_SEND = 0xE4E4;
            gMultiBootStruct.unk02 = 3;
            return;
        }
        if (!(sioCntBkp & 4))
        {
            if (gMultiBootStruct.unk0A > 0x13)
                gMultiBootStruct.unk02 = 2;
        }
        else
        {
            ++gMultiBootStruct.unk08;
            gMultiBootStruct.unk08 &= 0x1FFF;
            if (gMultiBootStruct.unk08 < 0x100)
                gMultiBootStruct.unk08 = 0x100;
            if (gMultiBootStruct.unk08 == (MULTIBOOT_DATA_RECV_PARENT & 0x1FFF))
            {
                if (gMultiBootStruct.unk0A > 3)
                {
                    if (gMultiBootStruct.unk0C != (MULTIBOOT_DATA_RECV_PARENT & 0xE000))
                    {
                        if (MULTIBOOT_DATA_RECV_PARENT & 0xE000)
                        {
                            gMultiBootStruct.unk03 |= 1;
                            gMultiBootStruct.unk0A = 0;
                        }
                    }
                    else
                    {
                        gMultiBootStruct.unk03 &= 0xFE;
                        ++gMultiBootStruct.unk0A;
                    }
                }
                else
                    ++gMultiBootStruct.unk0A;
            }
            else
            {
                gMultiBootStruct.unk0A = 0;
            }
            gMultiBootStruct.unk08 = MULTIBOOT_DATA_RECV_PARENT;
            if (gMultiBootStruct.unk0A > 0x1E)
            {
                gMultiBootStruct.unk02 = 2;
                REG_SIOMLT_SEND = 0x70AE;
            }
            else
            {
                gMultiBootStruct.unk02 = 0;
                REG_SIOMLT_SEND = 0x8F51;
            }
        }
        gMultiBootStruct.unk01 = 1;
        r5 = 1;
        r8 = gMultiBootStruct.unk0E;
        gMultiBootStruct.unk0E = 0;
        for (i = 1; i < (1 + MULTIBOOT_NCHILD); ++i)
        {
            if (gMultiBootDataRecv.data[i] == 0xFFFF)
                gMultiBootStruct.unk0E |= 1 << i;
            if (!((r8 >> i) & 1))
            {
                if (gMultiBootDataRecv.data[i] == 0x70AE)
                {
                    if (gMultiBootDataRecv.data[i - 1] == 0xFFFF)
                    {
                        r5 = 0;
                        gMultiBootStruct.unk02 = 1;
                    }
                    if (r5 != 0)
                        ++gMultiBootStruct.unk01;
                    else
                        gMultiBootStruct.unk01 = 1;
                }
                else
                {
                    if (gMultiBootDataRecv.data[i] == 0x8F51)
                    {
                        gMultiBootStruct.unk02 = 1;
                        if (gMultiBootDataRecv.data[i - 1] == 0xFFFF)
                        {
                            r5 = 0;
                            gMultiBootStruct.unk0A = 0;
                        }
                    }
                    else
                        r5 = 0;
                }
            }
            else
                r5 = 0;
        }
    }
}

void sub_08030B38(void)
{
    REG_IME = 0;
    gUnk_0300050C = -1;
    REG_SIOCNT &= 0xBFFF;
    REG_SIOMLT_SEND = 0x8F52;
    gIntrTable[7] = gTimer3IntrBkp;
    gIntrTable[0] = gMultiSioIntrBkp;
    gMultiBootStruct.unk02 = 0;
    gMultiBootStruct.unk01 = gMultiBootStruct.unk02;
    REG_IE &= ~MULTI_SIO_TIMER_INTR_FLAG;
    REG_IME = 1;
}

void MultiBootInitWithParams(const void *start, const void *end)
{
    u32 size = end - start;

    size += 0x10;
    size &= 0xFFFFFFF0; // round up to multiple of 0x10
    CpuFill16(0, &gMultiBootParam, sizeof(gMultiBootParam));
    gMultiBootStruct.srcp = start + MULTIBOOT_HEADER_SIZE; // skip slave header
    gMultiBootStruct.endp = end;
    gMultiBootStruct.length = size - MULTIBOOT_HEADER_SIZE;
    gMultiBootParam.masterp = start;
    gMultiBootParam.server_type = MULTIBOOT_SERVER_TYPE_NORMAL;
    MultiBootInit(&gMultiBootParam);
}

void sub_08030C1C(void)
{
    if (gMultiBootStruct.unk2B == 0 && gMultiBootStruct.unk02 == 2)
        gMultiBootStruct.unk2B = 1;
}

void sub_08030C40(u16 r3)
{
    if (gUnk_0300050C == -1 || gMultiBootStruct.unk02 == 3)
        return;
    gMultiBootStruct.unk0C = r3 << 13;
    switch (gUnk_0300050C)
    {
    case 0:
        sub_080302EC();
        break;
    case 1:
        sub_0803040C();
        break;
    case 2:
        sub_080305F8();
        break;
    }
}
