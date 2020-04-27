#include "global.h"

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