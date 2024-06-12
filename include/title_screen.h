#ifndef GUARD_TITLE_H
#define GUARD_TITLE_H

#include "data.h"
#include "global.h"

struct TitleStruct;

typedef void (*TitleFunc)(struct TitleStruct*);

struct TitleStruct {
    u32 unk0;
    u32 unk4;
    u32 unk8;
    u8 fillerC[4];
    struct Sprite unk10[7];
    u8 unk128;
    u8 filler129[3];
    TitleFunc unk12C;
    TitleFunc unk130;
    s16 unk134;
    u8 filler136[2];
    struct Object11 unk138;
    TitleFunc unk144;
};

extern const void *const *const gUnk_08D626F0[][2];
extern const u16 gUnk_08D62720[7][3];
extern const u8 gUnk_08D6274A[];

extern void CreateTitleScreen(void);


#endif
