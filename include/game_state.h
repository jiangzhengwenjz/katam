#ifndef GUARD_GAME_STATE_H
#define GUARD_GAME_STATE_H

#include "global.h"

typedef void (*GameStateFunc)(void);

struct GameState {
    u8 filler0[4];
    u16 unk4;
    u8 filler6[2];
    GameStateFunc unk8;
    u8 fillerC[6];
    u16 unk12;
};

extern u32 gUnk_03002440;
extern u8 gUnk_03002558;
extern struct GameState* gUnk_03002560;
extern struct GameState* gUnk_03002EBC;
extern struct GameState* gUnk_030035D0;
extern u8 gUnk_030068D4;

#endif
