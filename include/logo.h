#ifndef GUARD_LOGO_H
#define GUARD_LOGO_H

#include "global.h"

struct LogoStruct;

typedef void (*LogoFunc) (struct LogoStruct*);

struct LogoStruct {
    u32 unk0;
    u16 unk4;
    u8 filler6[2];
    LogoFunc unk8;
    s16 unkC;
    u16 unkE;
};

struct Unk_082D7850 {
    u8 filler0[2];
    u16 unk2;
    u8 filler4[4];
    u32 unk8;
    u8 fillerC[4];
    u16* unk10;
    u8 filler14[4];
    u32 unk18;
};

struct BlendRegs {
    u16 bldCnt;
    u16 bldAlpha;
    s16 bldY;
};

struct Unk_083877EE {
    u8 filler0[0x1e];
    s16 unk1E;
};

extern struct Unk_082D7850* gUnk_082D7850[];
extern u16 gBgCntRegs[4];
extern u16 gBgPalette[];
extern u32 gUnk_03002440;
extern struct BlendRegs gBldRegs;
extern struct Unk_083877EE gUnk_083877EE;
extern u16 gDispCnt;
extern u16 gBgCntRegs[4];
extern u16 gBgScrollRegs[8];

extern void sub_0813887C(void);
extern void nullsub_33(void);
extern void sub_081388C4(struct LogoStruct*);
extern void sub_081388D0(struct LogoStruct*);
extern void sub_0813890C(struct LogoStruct*);
extern void sub_08138958(struct LogoStruct*);
extern void sub_08138978(struct LogoStruct*);
extern void sub_081389A8(void);
extern void sub_081389D4(u8);
extern void sub_081389FC(u8);
extern void sub_08138A30(u8, u16, u16);
extern void sub_08138AA4(u16, u8, u8, u16);

extern void sub_08158334(u16*, u8, u16);
extern void sub_08149CE4(void);
extern void sub_08145B64(u16);

#endif
