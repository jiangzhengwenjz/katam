#include "gba/m4a_internal.h"
#include "gba/syscall.h"
#include "global.h"
#include "main.h"
#include "multi_sio.h"

#define GetBit(x, y) ((x) >> (y) & 1)

void sub_08151C54(void) {
    u32 ret;
    while (1) {
        gUnk_030068D4 = 0;
        gUnk_03002440 &= ~0x01000000;
        gUnk_03003670 &= ~0x01000000;

        if (gUnk_03002440 & 0x40000) {
            sub_08152790();
        }

        if (gUnk_030035D4 == 0xff) {
            sub_08152694();
            if (gUnk_03002558 != 0) {
                sub_08030E44();
                ret = MultiSioMain(gUnk_030036B0, gUnk_03002490, 0);
                gUnk_03002554 = ret;
                if (sub_08030FE0() == 0) {
                    sub_08032E98();
                }
            }
            else {
                if ((gUnk_03002440 & 0x180000) == 0x80000) {
                    nullsub_2();
                }
            }

            if (!(gUnk_020382D0.unk4 & 4)) {
                sub_08152CF4();
            }
            else {
                gUnk_030035D4 = 0;
            }
        }

        gUnk_03002440 |= 0x1000000;
        gUnk_03003670 = gUnk_03002440;
        VBlankIntrWait();
        gUnk_03002514 = 0;

        if (gUnk_03002440 & 0x4000) {
            sub_08152178();
            if (!(gUnk_03002440 & 0x400)) {
                sub_08152968();
            }
        }
        else {
            sub_08151DC4();
            if (!(gUnk_03002440 & 0x400)) {
                sub_08152098();
            }
        }

        if ((gUnk_03002440 & 0x400)) {
            gUnk_03002440 |= 0x800;
        }
        else {
            gUnk_03002440 &= ~0x800;
        }

        if (!(gUnk_03002440 & 0x4000)) {
            m4aSoundMain();
        }
        
        while (REG_DISPSTAT & 1);
    }
}

void sub_08151DC4(void) {
    u8 i, j = 0;
    REG_DISPCNT = gUnk_03003690;
    DmaCopy32(3, gUnk_03002EB0, (void*)REG_ADDR_BG0CNT, 8);

    if (gUnk_03002440 & 1) {
        DmaCopy32(3, gUnk_030037A0, (void*)BG_PLTT, BG_PLTT_SIZE);
        gUnk_03002440 ^= 1;
    }
    
    if (gUnk_03002440 & 2) {
        DmaCopy32(3, &gUnk_03002C60, (void*)OBJ_PLTT, OBJ_PLTT_SIZE);
        gUnk_03002440 ^= 2;
    }

    DmaCopy32(3, gUnk_03002E70, (void*)REG_ADDR_WIN0H, 0xc);
    DmaCopy16(3, gUnk_030024E8, (void*)REG_ADDR_BLDCNT, 6);
    DmaCopy16(3, gUnk_03003680, (void*)REG_ADDR_BG0HOFS, 0x10);
    DmaCopy32(3, gUnk_03002520, (void*)REG_ADDR_BG2PA, 0x20);

    if (gUnk_03002440 & 8) {
        REG_IE |= INTR_FLAG_HBLANK;
        DmaFill32(3, 0, gUnk_03003A10, 0x10);
        if (gUnk_0300248C != 0) {
            DmaSet(3, gUnk_030035C0, gUnk_03003A10, 0x84000000 | gUnk_0300248C);
        }
        gUnk_030024E4 = gUnk_0300248C;
    }
    else {
        REG_IE &= ~INTR_FLAG_HBLANK;
        gUnk_030024E4 = 0;
    }

    if (gUnk_03002440 & 4) {
        DmaCopy16(3, gUnk_03002484, gUnk_030036C8, gUnk_030039A0);
    }

    if (gUnk_030035D4 == 0xff) {
        sub_08156E1C();
        DmaCopy16(3, gUnk_030060B0, (void*)OAM, 0x100);
        DmaCopy16(3, gUnk_030060B0 + 0x100, (void*)OAM + 0x100, 0x100);
        DmaCopy16(3, gUnk_030060B0 + 0x200, (void*)OAM + 0x200, 0x100);
        DmaCopy16(3, gUnk_030060B0 + 0x300, (void*)OAM + 0x300, 0x100);
    }

    for(i = 0; i < gUnk_03002548; i++) {
        gUnk_030068C0[i]();
    }

    if (gUnk_03002440 & 0x10) {
        DmaFill32(3, 0, gUnk_030068C0, 0x10);
        if (gUnk_03006070 != 0) {
            DmaSet(3, gUnk_03002470, gUnk_030068C0, 0x84000000 | gUnk_03006070);
        }
        gUnk_03002548 = gUnk_03006070;
    }
    else {
        gUnk_03002548 = gUnk_03002440 & 0x10;
    }

    j = gUnk_030035D4;
    if (j == 0xff) {
        j = 0;
    }

    gUnk_030035D4 = 0xff;
    for(; j <= 3; j++) {
        if(gUnk_08D5FDD4[j]() == 0) {
            gUnk_030035D4 = j;
            break;
        }
    }
}

void sub_08152098(void) {
    gUnk_0300248C = 0;
    gUnk_03002440 &= ~8;

    if (!(gUnk_03002440 & 0x20)) {
        if (gUnk_03002484 == gUnk_03002760) {
            gUnk_03002484 = gUnk_03002760 + 0x280;
            gUnk_03002EAC = gUnk_03002760;
        }
        else {
            gUnk_03002484 = gUnk_03002760;
            gUnk_03002EAC = gUnk_03002760 + 0x280;
        }
    }

    gUnk_03002440 &= ~4;
    DmaFill16(3, 0x200, gUnk_030060B0, 0x100);
    DmaFill16(3, 0x200, gUnk_030060B0 + 0x100, 0x100);
    DmaFill16(3, 0x200, gUnk_030060B0 + 0x200, 0x100);
    DmaFill16(3, 0x200, gUnk_030060B0 + 0x300, 0x100);
    gUnk_03006070 = 0;
    gUnk_03002440 &= ~0x10;
}

void sub_08152178(void) {
    u8 i, j = 0;
    REG_DISPCNT = gUnk_03003690;
    CpuCopy32(gUnk_03002EB0, (void*)REG_ADDR_BG0CNT, 8);

    if (gUnk_03002440 & 1) {
        CpuFastCopy(gUnk_030037A0, (void*)BG_PLTT, BG_PLTT_SIZE);
        gUnk_03002440 ^= 1;
    }
    
    if (gUnk_03002440 & 2) {
        CpuFastCopy(&gUnk_03002C60, (void*)OBJ_PLTT, OBJ_PLTT_SIZE);
        gUnk_03002440 ^= 2;
    }

    CpuCopy32(gUnk_03002E70, (void*)REG_ADDR_WIN0H, 0xc);
    CpuCopy16(gUnk_030024E8, (void*)REG_ADDR_BLDCNT, 6);
    CpuCopy16(gUnk_03003680, (void*)REG_ADDR_BG0HOFS, 0x10);
    CpuCopy32(gUnk_03002520, (void*)REG_ADDR_BG2PA, 0x20);

    if (gUnk_03002440 & 8) {
        REG_IE |= INTR_FLAG_HBLANK;
        CpuFastFill(0, gUnk_03003A10, 0x10);
        if (gUnk_0300248C != 0) {
            CpuFastSet(gUnk_030035C0, gUnk_03003A10, gUnk_0300248C);
        }
        gUnk_030024E4 = gUnk_0300248C;
    }
    else {
        REG_IE &= ~INTR_FLAG_HBLANK;
        gUnk_030024E4 = 0;
    }

    if (gUnk_030035D4 == 0xff) {
        sub_08156E1C();
        CpuFastCopy(gUnk_030060B0, (void*)OAM, OAM_SIZE);
    }

    for(i = 0; i < gUnk_03002548; i++) {
        gUnk_030068C0[i]();
    }

    if (gUnk_03002440 & 0x10) {
        CpuFastFill(0, gUnk_030068C0, 0x10);
        if (gUnk_03006070 != 0) {
            CpuFastSet(gUnk_03002470, gUnk_030068C0, gUnk_03006070);
        }
        gUnk_03002548 = gUnk_03006070;
    }
    else {
        gUnk_03002548 = gUnk_03002440 & 0x10;
    }

    j = gUnk_030035D4;
    if (j == 0xff) {
        j = 0;
    }

    gUnk_030035D4 = 0xff;
    for(; j <= 3; j++) {
        if(gUnk_08D5FDD4[j]() == 0) {
            gUnk_030035D4 = j;
            break;
        }
    }
}

void VBlankIntr(void) {
    u16 keys;
    DmaStop(0);
    m4aSoundVSync();
    INTR_CHECK |= 1;
    gUnk_030068D4 = 1;

    if (gUnk_03003670 & 4) {
        REG_IE |= INTR_FLAG_HBLANK;
        DmaWait(0);
        DmaCopy16(0, gUnk_03002484, gUnk_030036C8, gUnk_030039A0);
        DmaSet(0, gUnk_03002484 + gUnk_030039A0, gUnk_030036C8, 0xA2600000 | (gUnk_030039A0 >> 1));
    }
    else if (gUnk_030036C8 != 0) {
        REG_IE &= ~INTR_FLAG_HBLANK;
        gUnk_030036C8 = gUnk_03003670 & 4;
    }

    if (gUnk_03003670 & 0x40) {
        REG_DISPSTAT |= DISPSTAT_VCOUNT_INTR;
        REG_DISPSTAT &= 0xff;
        REG_DISPSTAT |= gUnk_030036C4 << 8;
        REG_DISPSTAT &= ~DISPSTAT_VCOUNT;
        REG_DISPSTAT |= DISPSTAT_VCOUNT_INTR;
        REG_IE |= INTR_FLAG_VCOUNT;
    }
    else {
        REG_DISPSTAT &= ~DISPSTAT_VCOUNT;
        REG_DISPSTAT &= ~DISPSTAT_VCOUNT_INTR;
        REG_IE &= ~INTR_FLAG_VCOUNT;
    }

    if (gUnk_03002558 != 1) {
        if (!(gUnk_03003670 & 0x1000000)) {
            if (!(gUnk_03003670 & 0x4000)) {
                m4aSoundMain();
            }
        }
    }

    if (!(gUnk_03003670 & 0x8000)) {
        keys = ~REG_KEYINPUT & 0xf;
        if (keys == 0xf) {
            gUnk_03002440 |= 0x8000;
            REG_IE = gUnk_03003670 & 0x8000;
            REG_IME = gUnk_03003670 & 0x8000;
            REG_DISPSTAT = gUnk_03003670 & 0x8000;
            gUnk_03002440 &= ~4;
            DmaStop(0);
            DmaStop(1);
            DmaStop(2);
            DmaStop(3);
            gUnk_03002E90 = keys;
            SoftReset(0x20);
        }
    }

    gUnk_03002E64++;
    REG_IF = INTR_FLAG_VBLANK;
}

u32 sub_081525DC(void) {
    u32 i;
    struct Unk_03002EC0* current;

    while (gUnk_03006078 != gUnk_030039A4) {
        current = &gUnk_03002EC0[gUnk_03006078];

        if (current->unk8 != 0) {
            for(i = 0; current->unk8 != 0; i += 0x400) {
                if (current->unk8 > 0x400) {
                    DmaCopy16(3, current->unk0 + i, current->unk4 + i, 0x400);
                    current->unk8 -= 0x400;
                }
                else {
                    DmaCopy16(3, current->unk0 + i, current->unk4 + i, current->unk8);
                    current->unk8 = 0;
                }
            }
        }

        gUnk_03006078++;
        gUnk_03006078 &= 0x3f;

        if (!(REG_DISPSTAT & DISPSTAT_VBLANK)) {
            return 0;
        }
    }
    return 1;
}

void sub_08152694(void) {
    s8 i;
    u8 *r7 = gUnk_03002EA0, *sb = gUnk_030035E0, *r8 = gUnk_030036A0;
    gUnk_030039A8 = gUnk_03002E90;
    gUnk_03002E90 = (~REG_KEYINPUT & 0x3ff);
    gUnk_03002480 = gUnk_03002E90;

    if (gUnk_03006CB0.unk8 == 1) {
        sub_08158238(gUnk_03002E90);
    }
    else if (gUnk_03006CB0.unk8 == 2) {
        gUnk_03002E90 = sub_08158208();
    }

    gUnk_030039FC = (gUnk_03002E90 ^ gUnk_030039A8) & gUnk_03002E90;
    gUnk_030035EC = (gUnk_03002E90 ^ gUnk_030039A8) & gUnk_030039A8;
    gUnk_03002EB8 = (gUnk_03002E90 ^ gUnk_030039A8) & gUnk_03002E90;

    for (i = 0; i < 10; i++) {
        if (!GetBit(gUnk_03002E90, i)){
            r7[i] = sb[i];
        }
        else if (r7[i] != 0) {
            r7[i]--;
        }
        else {
            gUnk_03002EB8 |= 1 << i;
            r7[i] = r8[i];
        }
    }
}

static inline void Sleep(void) {
    asm("swi\t3");
}

void sub_08152790(void) {
    vu16 dispcnt, ie;
    vu32 unk3670;
    vu16 dispstat;
    m4aMPlayAllStop();
    m4aSoundVSyncOff();
    unk3670 = gUnk_03003670;
    gUnk_03003670 |= 0x8000;
    dispcnt = REG_DISPCNT;
    dispstat = REG_DISPSTAT;
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    REG_KEYCNT = KEY_AND_INTR | L_BUTTON | R_BUTTON | SELECT_BUTTON;
    REG_IME = 0;
    REG_DISPSTAT = 0;
    ie = REG_IE;
    REG_IE = INTR_FLAG_KEYPAD;
    REG_IE |= INTR_FLAG_GAMEPAK;
    REG_IME = 1;
    SoundBiasReset();
    Sleep();
    SoundBiasSet();
    REG_IME = 0;
    REG_IE = ie;
    REG_IME = 1;
    REG_DISPSTAT = dispstat;
    VBlankIntrWait();
    REG_DISPCNT = dispcnt;
    gUnk_03003670 = unk3670;
    gUnk_03002440 &= ~0x40000;
    m4aSoundVSyncOn();
}

void HBlankIntr(void) {
    u8 i;
    u8 vcount = *(vu8*)REG_ADDR_VCOUNT;

    if (vcount <= 0x9f) {
        for (i = 0; i < gUnk_030024E4; i++) {
            gUnk_03003A10[i](vcount);
        }
    }

    REG_IF = INTR_FLAG_HBLANK;
}

void VCountIntr(void) {
    REG_IF = INTR_FLAG_VCOUNT;
}

void Dma0Intr(void) {
    REG_IF = INTR_FLAG_DMA0;
}

void Dma1Intr(void) {
    REG_IF = INTR_FLAG_DMA1;
}

void Dma2Intr(void) {
    REG_IF = INTR_FLAG_DMA2;
}

void Dma3Intr(void) {
    REG_IF = INTR_FLAG_DMA3;
}

void Timer0Intr(void) {
    REG_IF = INTR_FLAG_TIMER0;
}

void Timer1Intr(void) {
    REG_IF = INTR_FLAG_TIMER1;
}

void Timer2Intr(void) {
    REG_IF = INTR_FLAG_TIMER2;
}

void Timer3IntrDummy(void) {
    REG_IF = INTR_FLAG_TIMER3;
}

void KeypadIntr(void) {
    REG_IF = INTR_FLAG_KEYPAD;
}

void GamepakIntr(void) {
    REG_IF = INTR_FLAG_GAMEPAK;
}

void nullsub_142(void) {
    
}

void sub_08152968(void) {
    gUnk_0300248C = 0;
    gUnk_03002440 &= ~8;

    if (!(gUnk_03002440 & 0x20)) {
        if (gUnk_03002484 == &gUnk_03002760[0]) {
            gUnk_03002484 = &gUnk_03002760[0x280];
            gUnk_03002EAC = &gUnk_03002760[0];
        }
        else {
            gUnk_03002484 = &gUnk_03002760[0];
            gUnk_03002EAC = &gUnk_03002760[0x280];
        }
    }

    gUnk_03002440 &= ~4;
    CpuFastFill(0x200, gUnk_030060B0, 0x400);
    gUnk_03006070 = 0;
    gUnk_03002440 &= ~0x10;
}

void AgbMain(void) {
    sub_0815158C();
    sub_080001CC();
    sub_08151C54();
}
