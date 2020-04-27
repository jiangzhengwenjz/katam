#include "global.h"
#include "gba/m4a_internal.h"
#include "gba/syscall.h"

static inline void Sleep(void) {
    asm("swi\t3");
}

void sub_08152790(){
    vu16 sp1, sp25;
    vu32 sp2;
    vu16 sp3;
    m4aMPlayAllStop();
    m4aSoundVSyncOff();
    sp2 = gUnk_03003670;
    gUnk_03003670 |= 0x8000;
    sp1 = REG_DISPCNT;
    sp3 = REG_DISPSTAT;
    REG_DISPCNT = DISPCNT_FORCED_BLANK;
    REG_KEYCNT = KEY_AND_INTR | L_BUTTON | R_BUTTON | SELECT_BUTTON;
    REG_IME = 0;
    REG_DISPSTAT = 0;
    sp25 = REG_IE;
    REG_IE = INTR_FLAG_KEYPAD;
    REG_IE |= INTR_FLAG_GAMEPAK;
    REG_IME = 1;
    SoundBiasReset();
    Sleep();
    SoundBiasSet();
    REG_IME = 0;
    REG_IE = sp25;
    REG_IME = 1;
    REG_DISPSTAT = sp3;
    VBlankIntrWait();
    REG_DISPCNT = sp1;
    gUnk_03003670 = sp2;
    gUnk_03002440 &= ~0x40000;
    m4aSoundVSyncOn();
}

void HBlankIntr(){
    u8 i;
    u8 vcount = *(vu8*)REG_ADDR_VCOUNT;
    if(vcount <= 0x9f){
        for(i = 0; i < gUnk_030024E4; i++){
            gUnk_03003A10[i](vcount);
        }
    }
    REG_IF = INTR_FLAG_HBLANK;
}

void VCountIntr(){
    REG_IF = INTR_FLAG_VCOUNT;
}

void Dma0Intr(){
    REG_IF = INTR_FLAG_DMA0;
}

void Dma1Intr(){
    REG_IF = INTR_FLAG_DMA1;
}

void Dma2Intr(){
    REG_IF = INTR_FLAG_DMA2;
}

void Dma3Intr(){
    REG_IF = INTR_FLAG_DMA3;
}

void Timer0Intr(){
    REG_IF = INTR_FLAG_TIMER0;
}

void Timer1Intr(){
    REG_IF = INTR_FLAG_TIMER1;
}

void Timer2Intr(){
    REG_IF = INTR_FLAG_TIMER2;
}

void Timer3IntrDummy(){
    REG_IF = INTR_FLAG_TIMER3;
}

void KeypadIntr(){
    REG_IF = INTR_FLAG_KEYPAD;
}

void GamepakIntr(){
    REG_IF = INTR_FLAG_GAMEPAK;
}

void nullsub_142(){
    
}

void sub_08152968(){
    u32 filler;
    gUnk_0300248C = 0;
    gUnk_03002440 &= ~8;
    if(!(gUnk_03002440 & 0x20)){
        if(gUnk_03002484 == &gUnk_03002760[0]){
            gUnk_03002484 = &gUnk_03002760[0xa0];
            gUnk_03002EAC = &gUnk_03002760[0];
        }
        else{
            gUnk_03002484 = &gUnk_03002760[0];
            gUnk_03002EAC = &gUnk_03002760[0xa0];
        }
    }
    gUnk_03002440 &= ~4;
    filler = 0x200;
    CpuFastSet(&filler, gUnk_030060B0, 0x01000100);
    gUnk_03006070 = 0;
    gUnk_03002440 &= ~0x10;
}

void AgbMain(){
    sub_0815158C();
    sub_080001CC();
    sub_08151C54();
}