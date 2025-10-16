#ifndef GUARD_PAUSE_HELP_H
#define GUARD_PAUSE_HELP_H

#include "constants/pause_menu.h"
#include "data.h"
#include "global.h"
#include "pause_area_map.h"
#include "pause_world_map.h"

struct HelpMenu {
    /* 0x00 */ struct Background frame;
    /* 0x40 */ struct Background abilityText;
    /* 0x80 */ struct Sprite unk80;  // B-BUTTON-QUIT
    /* 0xA8 */ struct Sprite unkA8;  // SELECT-SWITCH
    /* 0xD0 */ u8 unkD0;
    /* 0xD1 */ s8 toGameCounter;
    /* 0xD2 */ u16 fillerD2;
    /* 0xD4 */ enum PauseMenuId nextMenuId;
}; /* size = 0xD8 */

struct Unk_08D6113C {
    /* 0x0 */ const u32* unkSrc;
    /* 0x4 */ u32* unkDest;
}; /* size = 0x8 */

static inline u32 GetPlayerRoomFlags(void) {
    u32 flags = 0;
    s32 playerId;
    for (playerId = 0; playerId < 4; playerId++) {
        if (!(gPauseMenus[playerId].flags & MENU_FLAG_AI)) {
            flags |= 1 << GetKirbyRoomFlagIndex(playerId);
        }
    }
    return flags;
}

extern const struct Unk_08D6113C gUnk_08D6113C[];  // Addresses to copy button-labels to VRAM

void sub_0812403C(struct PauseMenu*);
void CreatePauseMenu(void);
void CreateHelpMenu(void);

#endif
