#ifndef GUARD_MAIN_H
#define GUARD_MAIN_H

#include "global.h"

typedef void (*HBlankFunc)(u8);
typedef void (*FuncType_030068C0)(void);
typedef u32 (*FuncType_08D5FDD4)(void);
typedef void (*IntrFunc)(void);

struct Unk_020382D0 {
    u8 filler0[4];
    u16 unk4;
};

struct Unk_030023F4 {
    u16 unk0;
    u16 unk2;
};

struct Unk_03002520 {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    u32 unk8;
    u32 unkC;
    u16 unk10;
    u16 unk12;
    u16 unk14;
    u16 unk16;
    u32 unk18;
    u32 unk1C;
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
extern u16 gUnk_030024E8[3];
extern u8 gUnk_030024F0;
extern u8 gUnk_03002514;
extern struct Unk_03002520 gUnk_03002520;
extern u32 gUnk_03002540;
extern u16 gUnk_03002544;
extern u8 gUnk_03002548;
extern u16 gUnk_0300254C;
extern u8 gUnk_03002550;
extern u32 gUnk_03002554;
extern u8 gUnk_03002558;
extern u8 gUnk_03002760[0x280];
extern u8 gUnk_03002C60[0x200];
extern u32 gUnk_03002E64;
extern u16 gUnk_03002E70[6];
extern u8 gUnk_03002E80[];
extern u16 gUnk_03002E90;
extern u32 gUnk_03002E94;
extern u8 gUnk_03002EA0[];
extern u8* gUnk_03002EAC;
extern u16 gUnk_03002EB0[4];
extern u16 gUnk_03002EB8;
extern struct Unk_03002EC0 gUnk_03002EC0[];
extern u8 gUnk_030031C0[];
extern u8 gUnk_030035C0[];
extern u8 gUnk_030035D4;
extern u8 gUnk_030035E0[];
extern u16 gUnk_030035EC;
extern u32 gUnk_03003670;
extern u16 gUnk_0300367C;
extern u16 gUnk_03003680[8];
extern u16 gUnk_03003690;
extern u8 gUnk_030036A0[];
extern u8 gUnk_030036B0[];
extern u8 gUnk_030036C4;
extern u32 gUnk_030036C8;
extern u8 gUnk_03003790;
extern u8 gUnk_030037A0[0x200];
extern u8 gUnk_030039A0;
extern u8 gUnk_030039A4;
extern u16 gUnk_030039A8;
extern u16 gUnk_030039AC;
extern u16 gUnk_030039FC;
extern u8 gUnk_03003A00;
extern u8 gUnk_03003A04;
extern HBlankFunc gUnk_03003A10[0xa0];
extern u8 gUnk_03006070;
extern u16 gUnk_03006074;
extern u8 gUnk_03006078;
extern u8 gUnk_0300607C;
extern u8 gUnk_03006080[];
extern u32 gUnk_030060A0;
extern u8 gUnk_030060B0[0x200];
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

extern const u8 RomHeaderMagic;
extern const u32 RomHeaderGameCode;

extern void sub_08151C54(void);
extern void sub_08151DC4(void);
extern void sub_0815158C(void);
extern void sub_08156E1C(void);
extern u16 sub_08158208(void);
extern void sub_08158238(u16);
extern void sub_08152790(void);
extern void sub_08152694(void);
extern void sub_08152CF4(void);
extern void sub_08152178(void);
extern void sub_08152968(void);
extern void sub_08152098(void);

#endif
