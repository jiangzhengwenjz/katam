#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#include "global.h"

struct Unk_020382D0 {
    u8 filler0[4];
    u16 unk4;
};

struct Unk_030023F4 {
    u16 unk0;
    u16 unk2;
};

struct BgAffineRegs {
    u16 bg2pa;
    u16 bg2pb;
    u16 bg2pc;
    u16 bg2pd;
    u32 bg2x;
    u32 bg2y;
    u16 bg3pa;
    u16 bg3pb;
    u16 bg3pc;
    u16 bg3pd;
    u32 bg3x;
    u32 bg3y;
};

struct BlendRegs {
    u16 bldCnt;
    u16 bldAlpha;
    u16 bldY;
};

struct Unk_03002EC0 {
    u32 unk0;
    u32 unk4;
    u16 unk8;
    u8 fillerA[2];
};

struct Unk_03006CB0 {
    u8 filler0[8];
    u8 unk8;
};

extern struct Unk_020382D0 gUnk_020382D0;

extern u16 gUnk_030023F0;
extern struct Unk_030023F4 gUnk_030023F4;
extern u32 gUnk_03002440;
extern u8 gUnk_03002450[];
extern u8 gUnk_03002470[];
extern u16 gUnk_03002480;
extern u8* gUnk_03002484;
extern u16 gUnk_03002488;
extern u8 gUnk_0300248C;
extern u8 gUnk_03002490[];
extern u32 gUnk_030024E0;
extern u8 gUnk_030024E4;
extern struct BlendRegs gBldRegs;
extern u8 gUnk_030024F0;
extern u8 gUnk_03002514;
extern struct BgAffineRegs gBgAffineRegs;
extern u32 gUnk_03002540;
extern u16 gUnk_03002544;
extern u8 gUnk_03002548;
extern u16 gUnk_0300254C;
extern u8 gUnk_03002550;
extern u32 gUnk_03002554;
extern u8 gUnk_03002558;
extern u8 gUnk_03002760[2][0x280];
extern u16 gObjPalette[0x100];
extern u32 gUnk_03002E64;
extern u16 gWinRegs[6];
extern u8 gUnk_03002E80[];
extern u16 gInput;
extern u32 gUnk_03002E94;
extern u8 gUnk_03002EA0[];
extern u8* gUnk_03002EAC;
extern u16 gBgCntRegs[4];
extern u16 gUnk_03002EB8;
extern struct Unk_03002EC0 gUnk_03002EC0[];
extern struct OamData gUnk_030031C0[];
extern u8 gUnk_030035C0[];
extern u8 gUnk_030035D4;
extern u8 gUnk_030035E0[];
extern u16 gReleasedKeys;
extern u32 gUnk_03003670;
extern u16 gUnk_0300367C;
extern u16 gBgScrollRegs[8];
extern u16 gDispCnt;
extern u8 gUnk_030036A0[];
extern u8 gUnk_030036B0[];
extern u8 gUnk_030036C4;
extern u32 gUnk_030036C8;
extern u8 gUnk_03003790;
extern u16 gBgPalette[0x100];
extern u8 gUnk_030039A0;
extern u8 gUnk_030039A4;
extern u16 gPrevInput;
extern u16 gUnk_030039AC;
extern u16 gPressedKeys;
extern u8 gUnk_03003A00;
extern u8 gUnk_03003A04;
extern HBlankFunc gUnk_03003A10[0xa0];
extern u8 gUnk_03006070;
extern u16 gUnk_03006074;
extern u8 gUnk_03006078;
extern u8 gUnk_0300607C;
extern u8 gUnk_03006080[];
extern u32 gUnk_030060A0;
extern struct OamData gOamBuffer[];
extern u8 gUnk_030068B0;
extern u16 gUnk_030068B4;
extern u16 gUnk_030068B8;
extern FuncType_030068C0 gUnk_030068C0[8];
extern u32 gUnk_030068D0;
extern u8 gUnk_030068D4;
extern u32 gUnk_030068D8;
extern struct Unk_03006CB0 gUnk_03006CB0;
extern IntrFunc gIntrTable[];
extern IntrFunc gUnk_030017F0;

extern IntrFunc const gIntrTableTemplate[];

extern void GameLoop(void);
extern void UpdateScreenDma(void);
extern void GameInit(void);
extern void DrawToOamBuffer(void);
extern u16 sub_08158208(void);
extern void sub_08158238(u16);
extern void WaitForInput(void);
extern void GetInput(void);
extern void UpdateScreenCpuSet(void);
extern void ClearOamBufferCpuSet(void);
extern void ClearOamBufferDma(void);

#endif
