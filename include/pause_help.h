#ifndef GUARD_PAUSE_HELP_H
#define GUARD_PAUSE_HELP_H

#include "data.h"
#include "global.h"

struct HelpMenu {
    /* 0x00 */ struct Background unk0;
    /* 0x40 */ struct Background unk40;
    /* 0x80 */ struct Sprite unk80;  // B-BUTTON-QUIT
    /* 0xA8 */ struct Sprite unkA8;  // SELECT-SWITCH
    /* 0xD0 */ u8 unkD0;
    /* 0xD1 */ s8 unkD1;
    /* 0xD2 */ u16 fillerD2;
    /* 0xD4 */ u32 unkD4;  // Toggles following pause menu screen, analogously to WorldMap::unk210
}; /* size = 0xD8 */

struct Unk_08D6113C {
    /* 0x0 */ const u32* unkSrc;
    /* 0x4 */ u32* unkDest;
}; /* size = 0x8 */

extern const struct Unk_08D6113C gUnk_08D6113C[];

void sub_08124430(void);

#endif
