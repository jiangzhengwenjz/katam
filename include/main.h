typedef void (*HBlankFunc)(u8);
typedef void (*func)(void);
typedef u32 (*func2)(void);

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

extern u32 gUnk_03002440;
extern u8 gUnk_03002470[];
extern u16 gUnk_03002480;
extern u8* gUnk_03002484;
extern u8 gUnk_0300248C;
extern u8 gUnk_030024E4;
extern u16 gUnk_030024E8[3];
extern u16 gUnk_03002520[0x10];
extern u8 gUnk_03002548;
extern u8 gUnk_03002558;
extern u8 gUnk_03002760[0x280];
extern u8 gUnk_03002C60[0x200];
extern u32 gUnk_03002E64;
extern u16 gUnk_03002E70[6];
extern u16 gUnk_03002E90;
extern u8 gUnk_03002EA0[];
extern u8* gUnk_03002EAC;
extern u16 gUnk_03002EB0[4];
extern u16 gUnk_03002EB8;
extern struct Unk_03002EC0 gUnk_03002EC0[];
extern u8 gUnk_030035C0[];
extern u8 gUnk_030035D4;
extern u8 gUnk_030035E0[];
extern u16 gUnk_030035EC;
extern u32 gUnk_03003670;
extern u16 gUnk_03003680[8];
extern u16 gUnk_03003690;
extern u8 gUnk_030036A0[];
extern u8 gUnk_030036C4;
extern u32 gUnk_030036C8;
extern u8 gUnk_030037A0[0x200];
extern u8 gUnk_030039A0;
extern u8 gUnk_030039A4;
extern u16 gUnk_030039A8;
extern u16 gUnk_030039FC;
extern HBlankFunc gUnk_03003A10[0xa0];
extern u8 gUnk_03006070;
extern u8 gUnk_03006078;
extern u8 gUnk_030060B0[0x200];
extern func gUnk_030068C0[8];
extern u8 gUnk_030068D4;
extern struct Unk_03006CB0 gUnk_03006CB0;

extern void sub_080001CC(void);
extern void sub_08151C54(void);
extern void sub_0815158C(void);
extern void sub_08156E1C(void);
extern u16 sub_08158208(void);
extern void sub_08158238(u16);
extern func2 gUnk_08D5FDD4[];
