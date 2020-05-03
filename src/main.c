#include "functions.h"
#include "gba/m4a_internal.h"
#include "gba/syscall.h"
#include "global.h"
#include "main.h"
#include "multi_sio.h"

#define GetBit(x, y) ((x) >> (y) & 1)
extern FuncType_08D5FDD4 const gUnk_08D5FDD4[];
extern IntrFunc const gIntrTableTemplate[];
extern const u8 RomHeaderMagic;
extern const u32 RomHeaderGameCode;

void GameInit(void) {
    s16 i;
    REG_IME = 0;
    REG_WAITCNT = WAITCNT_PREFETCH_ENABLE | WAITCNT_WS0_S_1 | WAITCNT_WS0_N_3;
    gUnk_03002440 = 0;
    gUnk_03003670 = 0;
    gUnk_03002E94 = ~0;

    if ((REG_RCNT & 0xc000) != 0x8000) {
        gUnk_03002440 = 0x200;
    }

    if (gInput == (START_BUTTON | SELECT_BUTTON | B_BUTTON | A_BUTTON)) {
        gUnk_03002440 |= 0x1000;
    }
    else {
        gUnk_03002440 = 0;
    }

    DmaFill32(3, 0, (void*)VRAM, VRAM_SIZE);
    DmaWait(3);
    DmaFill32(3, 0, (void*)OAM, OAM_SIZE);
    DmaWait(3);
    DmaFill32(3, 0, (void*)PLTT, PLTT_SIZE);
    DmaWait(3);
    gUnk_030035D4 = 0xff;
    gUnk_03003A04 = 0;
    gUnk_03003790 = 0;
    gUnk_030068B0 = 0;
    gUnk_03006078 = 0;
    gUnk_030039A4 = 0;
    DmaFill32(3, 0, gUnk_03002E80, 0x10);
    DmaWait(3);
    gUnk_030060A0 = 0;
    DmaFill32(3, 0, gBgScrollRegs, sizeof(gBgScrollRegs));
    DmaWait(3);
    gUnk_030023F4.unk0 = 0;
    gUnk_030023F4.unk2 = 0;
    gDispCnt = DISPCNT_FORCED_BLANK;
    DmaFill32(3, 0, gUnk_03002EC0, 0x300);
    DmaWait(3);
    gUnk_030024F0 = 0;
    gUnk_03003A00 = 0;
    DmaFill16(3, 0x200, gOamBuffer, OAM_SIZE);
    DmaWait(3);
    DmaFill16(3, 0x200, gUnk_030031C0, 0x400);
    DmaWait(3);
    DmaFill32(3, ~0, gUnk_03002450, 0x20);
    DmaWait(3);
    DmaFill32(3, ~0, gUnk_03006080, 0x20);
    DmaWait(3);
    DmaFill32(3, 0, gObjPalette, OBJ_PLTT_SIZE);
    DmaWait(3);
    DmaFill32(3, 0, gBgPalette, BG_PLTT_SIZE);
    DmaWait(3);
    sub_08158870();
    gBgAffineRegs.unk0 = 0x100;
    gBgAffineRegs.unk2 = 0;
    gBgAffineRegs.unk4 = 0;
    gBgAffineRegs.unk6 = 0x100;
    gBgAffineRegs.unk8 = 0;
    gBgAffineRegs.unkC = 0;
    gBgAffineRegs.unk10 = 0x100;
    gBgAffineRegs.unk12 = 0;
    gBgAffineRegs.unk14 = 0;
    gBgAffineRegs.unk16 = 0x100;
    gBgAffineRegs.unk18 = 0;
    gBgAffineRegs.unk1C = 0;
    gUnk_03002514 = 0;
    gUnk_03002544 = 0;
    gUnk_030023F0 = 0x100;
    gUnk_030068B4 = 0x100;
    gUnk_030039AC = 0;
    gUnk_03006074 = 0;
    gUnk_0300254C = 0;
    gUnk_0300367C = 0;
    gUnk_030068B8 = 0x100;
    gWinRegs[0] = 0;
    gWinRegs[1] = 0;
    gWinRegs[2] = 0;
    gWinRegs[3] = 0;
    gWinRegs[4] = 0;
    gWinRegs[5] = 0;
    gBldRegs[0] = 0;
    gBldRegs[1] = 0;
    gBldRegs[2] = 0;
    gUnk_030068D8 = 0;

    for (i = 0; i < 10; i++) {
        gUnk_030035E0[i] = 0x14;
        gUnk_030036A0[i] = 8;
    }

    gUnk_03006CB0.unk8 = 0;
    gUnk_03002480 = 0;
    gUnk_030068D0 = 0;
    gUnk_03002E64 = 0;

    for (i = 0; i < 15; i++) {
        gIntrTable[i] = gIntrTableTemplate[i];
    }

    DmaFill32(3, 0, gUnk_03002760, 0x500);
    DmaWait(3);
    gUnk_03002484 = gUnk_03002760[0];
    gUnk_03002EAC = gUnk_03002760[1];
    gUnk_030036C8 = 0;
    gUnk_030039A0 = 0;
    gUnk_0300248C = 0;
    gUnk_030024E4 = 0;
    DmaFill32(3, 0, gUnk_030035C0, 0x10);
    DmaWait(3);
    DmaFill32(3, 0, gUnk_03003A10, 0x10);
    DmaWait(3);
    gUnk_03006070 = 0;
    gUnk_03002548 = 0;
    DmaFill32(3, 0, gUnk_03002470, 0x10);
    DmaWait(3);
    DmaFill32(3, 0, gUnk_030068C0, 0x10);
    DmaWait(3);
    m4aSoundInit();
    m4aSoundMode(SOUND_MODE_DA_BIT_8 | SOUND_MODE_FREQ_15768 | (15 << SOUND_MODE_MASVOL_SHIFT) | (10 << SOUND_MODE_MAXCHN_SHIFT));
    m4aSoundMain();
    gUnk_030068D4 = 1;
    sub_08152A18();
    sub_08159074();
    gUnk_03002488 = 0x400;
    gUnk_03002540 = 0x06010000;
    sub_08157168();
    DmaCopy32(3, IntrMain, &gUnk_030017F0, 0x200);
    DmaWait(3);
    INTR_VECTOR = &gUnk_030017F0;
    REG_IE = INTR_FLAG_VBLANK;
    REG_DISPSTAT = DISPSTAT_HBLANK_INTR | DISPSTAT_VBLANK_INTR;

    if ((RomHeaderMagic == 0x96) && (RomHeaderGameCode == 0x454B3842)) {
        REG_IE |= INTR_FLAG_GAMEPAK;
    }
    
    REG_IME = 1;
    DmaFill32(3, 0, gUnk_030036B0, 0x14);
    DmaWait(3);
    DmaFill32(3, 0, gUnk_03002490, 0x50);
    DmaWait(3);
    gUnk_03002554 = 0;
    gUnk_03002558 = 0;
    MultiSioInit(0);
    gUnk_0300607C = 0;
    gUnk_030024E0 = 0;
    gUnk_03002550 = 0;
}

void GameLoop(void) {
    u32 ret;
    while (1) {
        gUnk_030068D4 = 0;
        gUnk_03002440 &= ~0x01000000;
        gUnk_03003670 &= ~0x01000000;

        if (gUnk_03002440 & 0x40000) {
            WaitForInput();
        }

        if (gUnk_030035D4 == 0xff) {
            GetInput();
            if (gUnk_03002558 != 0) {
                sub_08030E44();
                ret = MultiSioMain(gUnk_030036B0, gUnk_03002490, 0);
                gUnk_03002554 = ret;
                if (sub_08030FE0() == 0) {
                    sub_08032E98();
                }
            }
            else {
                if (!(gUnk_03002440 & 0x100000) && (gUnk_03002440 & 0x80000)) {
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
            UpdateScreenCpuSet();
            if (!(gUnk_03002440 & 0x400)) {
                ClearOamBufferCpuSet();
            }
        }
        else {
            UpdateScreenDma();
            if (!(gUnk_03002440 & 0x400)) {
                ClearOamBufferDma();
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
        
        while (REG_DISPSTAT & DISPSTAT_VBLANK) ;
    }
}

void UpdateScreenDma(void) {
    u8 i, j = 0;
    REG_DISPCNT = gDispCnt;
    DmaCopy32(3, gBgCntRegs, (void*)REG_ADDR_BG0CNT, 8);

    if (gUnk_03002440 & 1) {
        DmaCopy32(3, gBgPalette, (void*)BG_PLTT, BG_PLTT_SIZE);
        gUnk_03002440 ^= 1;
    }
    
    if (gUnk_03002440 & 2) {
        DmaCopy32(3, gObjPalette, (void*)OBJ_PLTT, OBJ_PLTT_SIZE);
        gUnk_03002440 ^= 2;
    }

    DmaCopy32(3, gWinRegs, (void*)REG_ADDR_WIN0H, sizeof(gWinRegs));
    DmaCopy16(3, gBldRegs, (void*)REG_ADDR_BLDCNT, sizeof(gBldRegs));
    DmaCopy16(3, gBgScrollRegs, (void*)REG_ADDR_BG0HOFS, sizeof(gBgScrollRegs));
    DmaCopy32(3, &gBgAffineRegs, (void*)REG_ADDR_BG2PA, sizeof(gBgAffineRegs));

    if (gUnk_03002440 & 8) {
        REG_IE |= INTR_FLAG_HBLANK;
        DmaFill32(3, 0, gUnk_03003A10, 0x10);
        if (gUnk_0300248C != 0) {
            DmaCopy32(3, gUnk_030035C0, gUnk_03003A10, gUnk_0300248C * 4);
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
        DmaCopy16(3, gOamBuffer, (void*)OAM, 0x100);
        DmaCopy16(3, gOamBuffer + 0x100, (void*)OAM + 0x100, 0x100);
        DmaCopy16(3, gOamBuffer + 0x200, (void*)OAM + 0x200, 0x100);
        DmaCopy16(3, gOamBuffer + 0x300, (void*)OAM + 0x300, 0x100);
    }

    for(i = 0; i < gUnk_03002548; i++) {
        gUnk_030068C0[i]();
    }

    if (gUnk_03002440 & 0x10) {
        DmaFill32(3, 0, gUnk_030068C0, 0x10);
        if (gUnk_03006070 != 0) {
            DmaCopy32(3, gUnk_03002470, gUnk_030068C0, gUnk_03006070 * 4);
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

void ClearOamBufferDma(void) {
    gUnk_0300248C = 0;
    gUnk_03002440 &= ~8;

    if (!(gUnk_03002440 & 0x20)) {
        if (gUnk_03002484 == gUnk_03002760[0]) {
            gUnk_03002484 = gUnk_03002760[1];
            gUnk_03002EAC = gUnk_03002760[0];
        }
        else {
            gUnk_03002484 = gUnk_03002760[0];
            gUnk_03002EAC = gUnk_03002760[1];
        }
    }

    gUnk_03002440 &= ~4;
    DmaFill16(3, 0x200, gOamBuffer, 0x100);
    DmaFill16(3, 0x200, gOamBuffer + 0x100, 0x100);
    DmaFill16(3, 0x200, gOamBuffer + 0x200, 0x100);
    DmaFill16(3, 0x200, gOamBuffer + 0x300, 0x100);
    gUnk_03006070 = 0;
    gUnk_03002440 &= ~0x10;
}

void UpdateScreenCpuSet(void) {
    u8 i, j = 0;
    REG_DISPCNT = gDispCnt;
    CpuCopy32(gBgCntRegs, (void*)REG_ADDR_BG0CNT, sizeof(gBgCntRegs));

    if (gUnk_03002440 & 1) {
        CpuFastCopy(gBgPalette, (void*)BG_PLTT, BG_PLTT_SIZE);
        gUnk_03002440 ^= 1;
    }
    
    if (gUnk_03002440 & 2) {
        CpuFastCopy(gObjPalette, (void*)OBJ_PLTT, OBJ_PLTT_SIZE);
        gUnk_03002440 ^= 2;
    }

    CpuCopy32(gWinRegs, (void*)REG_ADDR_WIN0H, sizeof(gWinRegs));
    CpuCopy16(gBldRegs, (void*)REG_ADDR_BLDCNT, sizeof(gBldRegs));
    CpuCopy16(gBgScrollRegs, (void*)REG_ADDR_BG0HOFS, sizeof(gBgScrollRegs));
    CpuCopy32(&gBgAffineRegs, (void*)REG_ADDR_BG2PA, sizeof(gBgAffineRegs));

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
        CpuFastCopy(gOamBuffer, (void*)OAM, OAM_SIZE);
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
        DmaSet(0, gUnk_03002484 + gUnk_030039A0, gUnk_030036C8, ((DMA_ENABLE | DMA_START_HBLANK | DMA_REPEAT | DMA_DEST_RELOAD) << 16) | (gUnk_030039A0 >> 1));
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
        keys = ~REG_KEYINPUT & (START_BUTTON | SELECT_BUTTON | B_BUTTON | A_BUTTON);
        if (keys == (START_BUTTON | SELECT_BUTTON | B_BUTTON | A_BUTTON)) {
            gUnk_03002440 |= 0x8000;
            REG_IE = gUnk_03003670 & 0x8000;
            REG_IME = gUnk_03003670 & 0x8000;
            REG_DISPSTAT = gUnk_03003670 & 0x8000;
            gUnk_03002440 &= ~4;
            DmaStop(0);
            DmaStop(1);
            DmaStop(2);
            DmaStop(3);
            gInput = keys;
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

void GetInput(void) {
    s8 i;
    u8 *r7 = gUnk_03002EA0, *sb = gUnk_030035E0, *r8 = gUnk_030036A0;
    gPrevInput = gInput;
    gInput = (~REG_KEYINPUT & KEYS_MASK);
    gUnk_03002480 = gInput;

    if (gUnk_03006CB0.unk8 == 1) {
        sub_08158238(gInput);
    }
    else if (gUnk_03006CB0.unk8 == 2) {
        gInput = sub_08158208();
    }

    gPressedKeys = (gInput ^ gPrevInput) & gInput;
    gReleasedKeys = (gInput ^ gPrevInput) & gPrevInput;
    gUnk_03002EB8 = (gInput ^ gPrevInput) & gInput;

    for (i = 0; i < 10; i++) {
        if (!GetBit(gInput, i)) {
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

static inline void Stop(void) {
    asm("swi\t3");
}

void WaitForInput(void) {
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
    Stop();
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

void ClearOamBufferCpuSet(void) {
    gUnk_0300248C = 0;
    gUnk_03002440 &= ~8;

    if (!(gUnk_03002440 & 0x20)) {
        if (gUnk_03002484 == gUnk_03002760[0]) {
            gUnk_03002484 = gUnk_03002760[1];
            gUnk_03002EAC = gUnk_03002760[0];
        }
        else {
            gUnk_03002484 = gUnk_03002760[0];
            gUnk_03002EAC = gUnk_03002760[1];
        }
    }

    gUnk_03002440 &= ~4;
    CpuFastFill(0x200, gOamBuffer, OAM_SIZE);
    gUnk_03006070 = 0;
    gUnk_03002440 &= ~0x10;
}

void AgbMain(void) {
    GameInit();
    sub_080001CC();
    GameLoop();
}
