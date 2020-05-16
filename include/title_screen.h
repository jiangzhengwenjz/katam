#ifndef GUARD_TITLE_H
#define GUARD_TITLE_H

#include "global.h"

struct TitleStruct;

typedef void (*TitleFunc)(struct TitleStruct*);

struct TitleStruct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u8 fillerC[4];
    struct Unk10{
        u32 unk0;
        u8 filler4[4];
        u32 unk8;
        u16 unkC;
        u8 fillerE[2];
        u16 unk10;
        u16 unk12;
        u16 unk14;
        u16 unk16;
        u8 filler18[2];
        u8 unk1A;
        u8 unk1B;
        u8 unk1C;
        u8 filler1D[2];
        u8 unk1F;
        u8 filler20[6];
        u8 unk26;
        u8 unk27;
    } unk10[7];
    u8 unk128;
    u8 filler129[3];
    TitleFunc unk12C;
    TitleFunc unk130;
    s16 unk134;
    u8 filler136[2];
    u16 unk138;
    u8 filler13A[0xa];
    TitleFunc unk144;
};

struct Unk_082D7850 {
    u8 filler0[2];
    u16 unk2;
    u8 filler4[4];
    void* unk8;
    u8 fillerC[4];
    u16* unk10;
    u8 filler14[4];
    void* unk18;
};

extern const struct Unk_082D7850* const gUnk_082D7850[];
extern const u16 gUnk_08387D58[][4];
extern const u16 gUnk_08D60A80;
extern const u32* gUnk_08D626F0[][2];
extern const u16 gUnk_08D62720[7][3];
extern const u16* gUnk_08D62722;
extern const u8 gUnk_08D6274A[];

extern void sub_08149DC0(void);
extern void sub_08149F08(struct TitleStruct*);
extern void sub_0814A178(struct TitleStruct*);
extern void sub_0814A1C8(struct GameState*);
extern void sub_0814A218(u8);
extern void sub_0814A240(u8);
extern void sub_0814A2B0(struct TitleStruct*);
extern void sub_0814A2CC(struct TitleStruct*);
extern void sub_0814A310(struct TitleStruct*);
extern void sub_0814A358(struct TitleStruct*);
extern void sub_0814A39C(struct TitleStruct*);
extern void sub_0814A404(struct TitleStruct*);
extern void sub_0814A410(struct TitleStruct*);
extern void sub_0814A420(struct TitleStruct*);
extern void sub_0814A518(struct TitleStruct*);
extern void sub_0814A6BC(struct TitleStruct*);
extern u32 sub_08155128(struct Unk10*);
extern void sub_0815604C(struct Unk10*);

#endif
