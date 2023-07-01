#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#include "global.h"
#include "multi_08030C94.h"

#define MAIN_FLAG_BG_PALETTE_SYNC_ENABLE                  0x1
#define MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE                 0x2

#define MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE    0x10000
#define MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE   0x20000

struct Unk_020382D0_sub {
    u32 unk0;
    u16 unk4;
}; /* size = 0x8 */

struct Unk_020382D0 {
    u32 unk0;
    u16 unk4;
    u8 unk6;
    u16 unk8[3][4];
    struct Unk_020382D0_sub unk20[0x10];
    struct Unk_020382D0_sub unkA0[4][0x10];
    u8 unk2A0[4];
    u8 unk2A4[4];
    u8 unk2A8[4];
    u8 unk2AC;
    s8 unk2AD;
};

struct Unk_030023F4 {
    s16 unk0;
    s16 unk2;
};

struct BgAffineReg {
    u16 pa, pb, pc, pd;
    u32 x, y;
}; /* size = 0x10 */

struct BlendRegs {
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
};

struct Unk_03002EC0 {
    /* TODO: fixing types breaks sub_081525DC. */
    u32 unk0; // const void *
    u32 unk4; // void *
    u16 unk8;
    u8 fillerA[2];
};

union Unk_030060A0 {
    u32 full;
    u8 parts[4];
};

struct MultiSioData_0_0 {
    u8 unk0;
    u8 unk1;
    u16 hword[6];
    u8 unkE;
    u32 unk10;
};

struct MultiSioData_0_1 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4[0x10];
};

struct MultiSioData_0_2 {
    u8 unk0;
    u8 unk1;
    u16 unk2;
    union Unk_020382A0_8 unk4;
    u16 unkC;
    u8 unkE;
    u32 unk10;
};

union MultiSioData {
    struct MultiSioData_0_0 pat0;
    struct MultiSioData_0_1 pat1;
    struct MultiSioData_0_2 pat2;
}; /* size = MULTI_SIO_BLOCK_SIZE */

extern struct Unk_020382D0 gUnk_020382D0;

extern u16 gUnk_030023F0;
extern struct Unk_030023F4 gUnk_030023F4;

// TODO: better name
#define FLAG_HBLANK_INTR_ENABLE         8
extern u32 gMainFlags;

extern u8 gUnk_03002450[];
extern FuncType_030068C0 gUnk_03002470[4];
extern u16 gUnk_03002480;
extern u8* gUnk_03002484;
extern u16 gVramHeapMaxTileSlots;
extern u8 gNumHBlankCallbacks;
extern union MultiSioData gMultiSioRecv[4];
extern u32 gUnk_030024E0;
extern u8 gNumHBlankIntrs;
extern struct BlendRegs gBldRegs;
extern u8 gUnk_030024F0;
extern u8 gUnk_03002514;
extern struct BgAffineReg gBgAffineRegs[2];
extern u32 gVramHeapStartAddr;
extern u16 gVramHeapState[0x200];
extern u16 gUnk_03002544;
extern u8 gUnk_03002548;
extern s16 gUnk_0300254C;
extern u8 gUnk_03002550;
extern u32 gMultiSioStatusFlags;
extern u8 gUnk_03002558;
extern u8 gUnk_03002760[2][0x280] __attribute__((aligned(4)));
extern u16 gObjPalette[0x100] __attribute__((aligned(4)));
extern u32 gFrameCount;
extern u16 gWinRegs[6];
extern u8 gUnk_03002E80[];
extern u16 gInput;
extern u32 gUnk_03002E94;
extern u8 gRepeatedKeysTestCounter[NUM_KEYS];
extern u8* gUnk_03002EAC;
extern u16 gBgCntRegs[4];
extern u16 gRepeatedKeys; // works like gPressedKeys but can be retriggered by holding
extern struct Unk_03002EC0 gUnk_03002EC0[];
extern OamData gUnk_030031C0[];
extern HBlankFunc gHBlankCallbacks[4]; // Only copied to gHBlankIntrs in VBLANK to make the HBLANK interrupts consistent. 
                                       // Never used in katam but used in sonic advance 2. 
extern u8 gUnk_030035D4;
extern u8 gKeysFirstRepeatIntervals[NUM_KEYS];
extern u16 gReleasedKeys;
extern u32 gUnk_03003670;
extern s16 gUnk_0300367C;
extern s16 gBgScrollRegs[4][2];
extern u16 gDispCnt;
extern u8 gKeysContinuedRepeatIntervals[NUM_KEYS];
extern union MultiSioData gMultiSioSend;
extern u8 gUnk_030036C4;
extern u32 gUnk_030036C8;
extern u8 gUnk_03003790;
extern u16 gBgPalette[0x100] __attribute__((aligned(4)));
extern u8 gUnk_030039A0;
extern u8 gUnk_030039A4;
extern u16 gPrevInput;
extern u16 gUnk_030039AC;
extern u16 gPressedKeys;
extern u8 gUnk_03003A00;
extern u8 gUnk_03003A04;
extern HBlankFunc gHBlankIntrs[4];
extern u8 gUnk_03006070;
extern u16 gUnk_03006074;
extern u8 gUnk_03006078;
extern u8 gUnk_0300607C;
extern u8 gUnk_03006080[];
extern union Unk_030060A0 gUnk_030060A0;
extern OamData gOamBuffer[];
extern u8 gUnk_030068B0;
extern u16 gUnk_030068B4;
extern s16 gUnk_030068B8;
extern FuncType_030068C0 gUnk_030068C0[4];
extern const u32 *gInputPlaybackData;
extern bool8 gExecSoundMain;

extern IntrFunc gIntrTable[];
extern u32 gIntrMainBuf[0x80];

extern IntrFunc const gIntrTableTemplate[];

extern void GameLoop(void);
extern void UpdateScreenDma(void);
extern void GameInit(void);
extern void WaitForInput(void);
extern void GetInput(void);
extern void UpdateScreenCpuSet(void);
extern void ClearOamBufferCpuSet(void);
extern void ClearOamBufferDma(void);

#endif
