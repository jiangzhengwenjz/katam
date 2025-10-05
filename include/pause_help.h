#ifndef GUARD_PAUSE_HELP_H
#define GUARD_PAUSE_HELP_H

#include "data.h"
#include "global.h"
#include "pause_area_map.h"
#include "pause_world_map.h"

struct HelpMenu {
    /* 0x00 */ struct Background unk0;
    /* 0x40 */ struct Background unk40;
    /* 0x80 */ struct Sprite unk80;  // B-BUTTON-QUIT
    /* 0xA8 */ struct Sprite unkA8;  // SELECT-SWITCH
    /* 0xD0 */ u8 unkD0;
    /* 0xD1 */ s8 unkD1;
    /* 0xD2 */ u16 fillerD2;
    /* 0xD4 */ u32 unkD4;  // Toggles following pause menu screen, analogously to WorldMap::nextMenuId
}; /* size = 0xD8 */

struct Unk_08D6113C {
    /* 0x0 */ const u32* unkSrc;
    /* 0x4 */ u32* unkDest;
}; /* size = 0x8 */

static inline u32 sub_08128694_flags(void) {
    u32 r7 = 0;
    s32 playerId;
    for (playerId = 0; playerId < 4; playerId++) {
        if (!(gUnk_0203ACC0[playerId].flags & 0x0001)) {
            r7 |= 1 << sub_08128694(playerId);
        }
    }
    return r7;
}

extern const struct Unk_08D6113C gUnk_08D6113C[];

void sub_0812403C(struct MenuRetainedState*);
void sub_0812424C(void);
void sub_08124430(void);

#endif
