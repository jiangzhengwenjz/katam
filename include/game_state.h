#ifndef GUARD_GAME_STATE_H
#define GUARD_GAME_STATE_H

#include "global.h"

struct GameState;

typedef void (*GameStateMain)(void);
typedef void (*GameStateDestructor)(struct GameState*);

struct GameState {
    u16 unk0;
    u16 unk2;
    u16 unk4;
    u16 unk6;
    GameStateMain unk8;
    GameStateDestructor unkC;
    u16 unk10;
    u16 unk12;
};

struct Unk_03003A20 {
    u16 unk0;
    s16 unk2;
};

extern u32 gUnk_0203ADE4;

extern struct GameState gUnk_030019F0[];
extern u32 gUnk_03002440;
extern struct GameState gUnk_03002500;
extern u8 gUnk_03002558;
extern struct GameState* gUnk_03002560[];
extern s32 gUnk_03002E7C;
extern struct GameState* gUnk_03002E98;
extern struct GameState* gUnk_03002EBC;
extern struct GameState* gCurGameState;
extern struct Unk_03003A20 gUnk_03003A20[];
extern u8 gUnk_030068D4;
extern u32 gUnk_03006CC4;

extern void sub_081590EC(u32*);

#endif
