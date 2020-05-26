#include "global.h"
#include "data.h"
#include "functions.h"
#include "multi_boot_util.h"
#include "main.h"

void sub_08030898(void);

void sub_0803024C(void)
{
    REG_IME = 0;
    CpuFill16(0, &gUnk_03000490, sizeof(gUnk_03000490));
    gUnk_03000490.unk08 = 0x100;
    gUnk_03000490.unk06 = gUnk_03000490.unk08;
    gUnk_0300050C = 0;
    REG_SIOCNT = 0x2000;
    REG_SIOCNT |= 0x4003;
    REG_SIODATA8 = 0;
    gUnk_03000470 = gIntrTable[7];
    gUnk_03000484 = gIntrTable[0];
    gIntrTable[0] = sub_08030898;
    gIntrTable[7] = sub_08030898;
    REG_IE |= 0x80;
    REG_IME = 1;
}

void sub_080302EC(void)
{
    vu16 sioCntBkp = REG_SIOCNT;
    s32 r4;
    u32 r3;

    if (!(REG_SIOCNT & 4))
        MultiBootMain(&gMultiBootParam);
    gUnk_03000490.unk25 = 0;
    if (!(sioCntBkp & 8))
    {
        if (sioCntBkp & 0x80) return;
        gUnk_03000490.unk03 = 0;
        gUnk_03000490.unk25 = gUnk_03000490.unk03;
        gUnk_03000490.unk24 = gUnk_03000490.unk25;
    }
    else
    {
        if (gUnk_03000490.unk24 <= 0x1d) return;
        r3 = 0;
        for (r4 = 0; r4 < 3; ++r4)
        {
            u16 r0 = (gUnk_03000490.unk1E[r4] & 0xFFF0);

            if (r0 == 0x7200)
                r3 |= 1;
            if (r0 == 0x8F50)
                r3 |= 2;
        }
        gUnk_03000490.unk25 = r3;
        if (r3 & 1 && r3 & 2)
            gUnk_03000490.unk03 |= 2;
        else
        {
            gUnk_03000490.unk2A = 0;
            gUnk_03000490.unk02 = 0;
            gUnk_03000490.unk0A = 0;
            if (gUnk_03000490.unk25 == 1)
                gUnk_0300050C = 2;
            else if (gUnk_03000490.unk25 == 2)
                gUnk_0300050C = 1;
        }
    }
}

void sub_0803040C(void)
{
    vu16 sioCntBkp = REG_SIOCNT;

    if (gUnk_03000490.unk28 & 0x40
        || !(gUnk_03000490.unk28 & 8))
    {
        gUnk_03000490.unk01 = 0;
        gUnk_03000490.unk25 = 0;
        gUnk_03000490.unk24 = gUnk_03000490.unk25;
        gUnk_03000490.unk02 = gUnk_03000490.unk24;
        gUnk_03000490.unk2A = gUnk_03000490.unk02;
        gUnk_0300050C = 0;
    }
    else
    {
        if (!(gUnk_03000490.unk28 & 4)
            && (sioCntBkp & 0xFC) != 8)
        {
            gUnk_03000490.unk01 = 0;
            gUnk_03000490.unk25 = 0;
            gUnk_03000490.unk24 = gUnk_03000490.unk25;
            gUnk_03000490.unk02 = gUnk_03000490.unk24;
            gUnk_03000490.unk2A = gUnk_03000490.unk02;
            gUnk_0300050C = 0;
            return;
        }
        else
        {
            if (gUnk_03000478.unk0[0] == 0xE4E4
                && gUnk_03000490.unk28 & 4) return;
            if (gUnk_03000490.unk2B != 0)
            {
                REG_SIODATA8 = 0xE4E4;
                REG_SIOCNT |= 0x80;
                return;
            }
            if (gUnk_03000490.unk2A != 0)
            {
                if (gUnk_03000490.unk02 != 2
                    || gUnk_03000490.unk01 == 1)
                {
                    gUnk_03000490.unk01 = 0;
                    gUnk_03000490.unk25 = 0;
                    gUnk_03000490.unk24 = gUnk_03000490.unk25;
                    gUnk_03000490.unk02 = gUnk_03000490.unk24;
                    gUnk_03000490.unk2A = gUnk_03000490.unk02;
                    gUnk_0300050C = 0;
                    return;
                }
            }
            else
            {
                if (gUnk_03000490.unk02 == 2)
                    gUnk_03000490.unk2A = 1;
            }
            if (gUnk_03000478.unk0[0] == 0xE4E4) return;
            if (!(gUnk_03000490.unk28 & 4))
            {
                if ((sioCntBkp & 0xFC) != 8)
                    gUnk_03000490.unk02 = 0;
                ++gUnk_03000490.unk06;
                gUnk_03000490.unk06 &= 0x1FFF;
                if (gUnk_03000490.unk06 <= 0xFF)
                    gUnk_03000490.unk06 = 0x100;
                REG_SIODATA8 = gUnk_03000490.unk06 | gUnk_03000490.unk0C;
                if (!(gUnk_03000490.unk28 & 0x4000))
                    gUnk_03000490.unk02 = 0;
                else
                {
                    ++gUnk_03000490.unk0A;
                    REG_SIOCNT |= 0x80;
                }
            }
            else
            {
                if (gUnk_03000490.unk06 == gUnk_03000490.unk08)
                {
                    gUnk_03000490.unk02 = 0;
                    gUnk_03000490.unk03 &= 0xFE;
                }
                gUnk_03000490.unk06 = gUnk_03000490.unk08;
            }
        }
    }
}

void sub_080305F8(void)
{
    vu16 sioCntBkp = REG_SIOCNT;
    u32 r2;
    s32 error;

    if (sioCntBkp & 4)
    {
        gUnk_0300050C = 0;
        return;
    }
    if (gUnk_03000490.unk2A == 1)
    {
        if (gUnk_03000490.unk01 == 1
            || !(gMultiBootParam.client_bit & 0xE))
        {
            gUnk_03000490.unk01 = 0;
            gUnk_03000490.unk25 = 0;
            gUnk_03000490.unk24 = gUnk_03000490.unk25;
            gUnk_03000490.unk02 = gUnk_03000490.unk24;
            gUnk_03000490.unk2A = gUnk_03000490.unk02;
            gUnk_0300050C = 0;
            return;
        }
    }
    else
    {
        if (!(gMultiBootParam.client_bit & 0xE))
            goto _08030726;
    }
    if (gUnk_03000490.unk2A == 0)
        gUnk_03000490.unk2A = 1;
    gUnk_03000490.unk02 = 1;
    gUnk_03000490.unk01 = 1;
    r2 = gMultiBootParam.client_bit << 0x18;
    gUnk_03000490.unk01 += (r2 >> 0x19) & 1;
    gUnk_03000490.unk01 += (r2 >> 0x1A) & 1;
    gUnk_03000490.unk01 += (r2 >> 0x1B) & 1;
    switch (gMultiBootParam.probe_count)
    {
    case 0:
        if (gUnk_03000490.unk0A < 16)
            ++gUnk_03000490.unk0A;
        if (gUnk_03000490.unk0A == 16)
            gUnk_03000490.unk02 = 2;
        gUnk_03000490.unk04 = 2;
        break;
    case 0xD1:
        gUnk_03000490.unk2B = 2;
        gUnk_03000490.unk04 = 3;
        gMultiBootParam.server_type = 1;
        break;
    }
    if (gMultiBootParam.probe_count > 0xDF)
        gUnk_03000490.unk04 = 4;
    goto _0803072E;
_08030726:
    gUnk_03000490.unk02 = 0;
    gUnk_03000490.unk0A = 0;
_0803072E:
    if (gUnk_03000490.unk0A == 0x11)
    {
        MultiBootStartMaster(&gMultiBootParam, gUnk_03000490.srcp, gUnk_03000490.length, 4, 1);
        gUnk_03000490.unk0A = 0x12;
    }
    if (gUnk_03000490.unk2B == 1
        && gUnk_03000490.unk0A == 0x10
        && gMultiBootParam.probe_count == 0
        && gMultiBootParam.client_bit & 0xE)
    {
        m4aMPlayAllStop();
        gUnk_03002440 &= 0xFFFFFFFB;
        m4aSoundVSyncOff();
        DmaStop(0);
        DmaStop(1);
        DmaStop(2);
        DmaStop(3);
        gUnk_03000490.unk0A = 0x11;
        gUnk_03000490.unk2A = 2;
    }
    error = MultiBootMain(&gMultiBootParam);
    if (gUnk_03000490.unk2B == 2
        && (gMultiBootParam.server_type = 0,
            gUnk_03000490.unk2B = 0,
            error != 0))
    {
        REG_SIOCNT |= 0x4000;
        gUnk_03000490.unk03 |= 4;
        gUnk_03000490.unk01 = 0;
        gUnk_03000490.unk25 = 0;
        gUnk_03000490.unk24 = gUnk_03000490.unk25;
        gUnk_03000490.unk02 = gUnk_03000490.unk24;
        gUnk_03000490.unk2A = gUnk_03000490.unk02;
        gUnk_0300050C = 0;
    }
    else if (MultiBootCheckComplete(&gMultiBootParam))
        gUnk_03000490.unk02 = 3;
}

void sub_08030898(void)
{
    s32 r4;
    s32 r8;
    u8 r5;
    vu16 sioCntBkp = REG_SIOCNT;
    gUnk_03000490.unk28 = sioCntBkp;
    ++gUnk_03000490.unk26;
    *(vu64 *)&gUnk_03000478 = *(vu64 *)REG_ADDR_SIODATA32;
    gUnk_03000490.unk00 = (sioCntBkp & 0x30) >> 4;
    gUnk_03000490.unk03 &= 0xBF;
    gUnk_03000490.unk03 |= sioCntBkp & 0x40;
    if (gUnk_0300050C == 2 || gUnk_0300050C == 0)
    {
        if (REG_SIOCNT & 4)
            REG_SIODATA8 = 0x8F51;
        if (gUnk_03000478.unk0[1] == 0xFFFF)
            gUnk_03000490.unk24 = 0;
        for (r4 = 0; r4 < 3; ++r4)
        {
            if ((gUnk_03000478.unk0 + 1)[r4] != gUnk_03000490.unk1E[r4])
                gUnk_03000490.unk24 = 0;
            gUnk_03000490.unk1E[r4] = (gUnk_03000478.unk0 + 1)[r4];
        }
        if (++gUnk_03000490.unk24 < 0x1E) return;
        gUnk_03000490.unk24 = 0x1E;
    }
    else
    {
        if (gUnk_03000478.unk0[0] == 0xE4E4)
        {
            REG_SIODATA8 = 0xE4E4;
            gUnk_03000490.unk02 = 3;
            return;
        }
        if (!(sioCntBkp & 4))
        {
            if (gUnk_03000490.unk0A > 0x13)
                gUnk_03000490.unk02 = 2;
        }
        else
        {
            ++gUnk_03000490.unk08;
            gUnk_03000490.unk08 &= 0x1FFF;
            if (gUnk_03000490.unk08 < 0x100)
                gUnk_03000490.unk08 = 0x100;
            if (gUnk_03000490.unk08 == (gUnk_03000478.unk0[0] & 0x1FFF))
            {
                if (gUnk_03000490.unk0A > 3)
                {
                    if (gUnk_03000490.unk0C != (gUnk_03000478.unk0[0] & 0xE000))
                    {
                        if (gUnk_03000478.unk0[0] & 0xE000)
                        {
                            gUnk_03000490.unk03 |= 1;
                            gUnk_03000490.unk0A = 0;
                        }
                    }
                    else
                    {
                        gUnk_03000490.unk03 &= 0xFE;
                        ++gUnk_03000490.unk0A;
                    }
                }
                else
                    ++gUnk_03000490.unk0A;
            }
            else
            {
                gUnk_03000490.unk0A = 0;
            }
            gUnk_03000490.unk08 = gUnk_03000478.unk0[0];
            if (gUnk_03000490.unk0A > 0x1E)
            {
                gUnk_03000490.unk02 = 2;
                REG_SIODATA8 = 0x70AE;
            }
            else
            {
                gUnk_03000490.unk02 = 0;
                REG_SIODATA8 = 0x8F51;
            }
        }
        gUnk_03000490.unk01 = 1;
        r5 = 1;
        r8 = gUnk_03000490.unk0E;
        gUnk_03000490.unk0E = 0;
        for (r4 = 1; r4 < 4; ++r4)
        {
            if (gUnk_03000478.unk0[r4] == 0xFFFF)
                gUnk_03000490.unk0E |= 1 << r4;
            if (!((r8 >> r4) & 1))
            {
                if (gUnk_03000478.unk0[r4] == 0x70AE)
                {
                    if (gUnk_03000478.unk0[r4 - 1] == 0xFFFF)
                    {
                        r5 = 0;
                        gUnk_03000490.unk02 = 1;
                    }
                    if (r5 != 0)
                        ++gUnk_03000490.unk01;
                    else
                        gUnk_03000490.unk01 = 1;
                }
                else
                {
                    if (gUnk_03000478.unk0[r4] == 0x8F51)
                    {
                        gUnk_03000490.unk02 = 1;
                        if (gUnk_03000478.unk0[r4 - 1] == 0xFFFF)
                        {
                            r5 = 0;
                            gUnk_03000490.unk0A = 0;
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
