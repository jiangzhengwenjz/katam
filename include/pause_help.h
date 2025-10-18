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
    /* 0x80 */ struct Sprite buttonB;
    /* 0xA8 */ struct Sprite buttonSwitch;
    /* 0xD0 */ u8 unkD0;
    /* 0xD1 */ s8 toGameCounter;
    /* 0xD2 */ u16 fillerD2;
    /* 0xD4 */ enum PauseMenuId nextMenuId;
}; /* size = 0xD8 */

struct HelpMenuButtonTileAddress {
    /* 0x0 */ const u32* tiles;
    /* 0x4 */ u32* tilesVram;
}; /* size = 0x8 */

static inline u32 GetPlayerRoomFlags(void) {
    u32 playerRoomFlags = 0;
    s32 playerId;
    for (playerId = 0; playerId < 4; playerId++) {
        if (!(gPauseMenus[playerId].flags & MENU_FLAG_AI)) {
            playerRoomFlags |= 1 << GetKirbyRoomFlagIndex(playerId);
        }
    }
    return playerRoomFlags;
}

enum HelpMenuButtonTile {
    HELPMENU_BUTTON_B,
    HELPMENU_BUTTON_B_OMITTED,
    HELPMENU_BUTTON_SWITCH,
    HELPMENU_BUTTON_SWITCH_OMITTED,
    NUM_HELPMENU_BUTTONS,
};

extern const struct HelpMenuButtonTileAddress gHelpMenuButtonTileAddresses[NUM_HELPMENU_BUTTONS];

void PauseMenuFetchInputs(struct PauseMenu*);
void CreatePauseMenu(void);
void CreateHelpMenu(void);

#endif
