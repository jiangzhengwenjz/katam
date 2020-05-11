#ifndef GUARD_TITLE_H
#define GUARD_TITLE_H

#include "global.h"

struct TitleStruct;

typedef void (*TitleFunc)(struct TitleStruct*);

struct TitleStruct {
    u8 filler0[4];
    u32 unk4;
    u8 filler8[0x128];
    TitleFunc unk130;
    u8 filler134[0x14];
};

extern void sub_08149DC0(void);
extern void sub_0814A1C8(struct GameState*);
extern void sub_0814A410(struct TitleStruct*);
extern void sub_0814A274(struct TitleStruct*);

#endif
