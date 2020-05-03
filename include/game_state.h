#ifndef GUARD_GAME_STATE_H
#define GUARD_GAME_STATE_H

#include "global.h"

struct GameState;

typedef void (*GameStateFunc)(void);
typedef void (*GameStateFunc2)(struct GameState*);

struct GameState {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    GameStateFunc unk8;
    GameStateFunc2 unkC;
    u16 unk10;
    u16 unk12;
};

extern u32 gUnk_03002440;
extern u8 gUnk_03002558;
extern struct GameState* gUnk_03002560[];
extern struct GameState* gUnk_03002E98;
extern u32 gUnk_03002E7C;
extern struct GameState* gUnk_03002EBC;
extern struct GameState* gUnk_030035D0;
extern u8 gUnk_030068D4;

extern void sub_081590EC(u32*);
extern void sub_08152E40(u8*);
extern void nullsub_145(void);

#endif
