#include "gba/m4a_internal.h"
#include "gba/syscall.h"
#include "global.h"
#include "main.h"
#define GetBit(x, y) ((x) >> (y) & 1)

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
            gUnk_03002484 = &gUnk_03002760[0xa0];
            gUnk_03002EAC = &gUnk_03002760[0];
        }
        else {
            gUnk_03002484 = &gUnk_03002760[0];
            gUnk_03002EAC = &gUnk_03002760[0xa0];
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
