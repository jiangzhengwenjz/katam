#ifndef GUARD_PAUSE_HELP_H
#define GUARD_PAUSE_HELP_H

#include "data.h"
#include "global.h"
#include "task.h"

enum PauseMenuFlags {
    MENU_FLAG_PLAYER = 0x0000,
    MENU_FLAG_AI = 0x0001,
    MENU_FLAG_CURRENT_PLAYER = 0x0002,
    MENU_FLAG_DISABLE_INPUT = 0x0004,
    MENU_FLAG_AREA_DESCEND = 0x0100,
    MENU_FLAG_AREA_ASCEND = 0x0200,
    MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE = 0x0400,
    MENU_FLAG_BACK_TO_GAME = 0x1000,
};

enum PauseMenuId {
    MENU_HELP = 1,
    MENU_WORLDMAP = 2,
    MENU_AREAMAP = 4,
};

/*
 * Retains menuId and zoomAreaMap when closing one of the menus.
 */
struct PauseMenu {
    /* 0x00 */ struct Task* mainTask;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ u16 pressedKeys;
    /* 0x0A */ u16 input;
    /* 0x0C */ u8 playerId;
    /* 0x0D */ s8 menuId;  // According to enum PauseMenuId
    /* 0x0E */ u16 flags;  // According to enum PauseMenuFlags
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u8 disableInputCounter;
    /* 0x13 */ s8 zoomAreaMap;  // Shifted right by 4 bits in comparison to struct AreaMapCamera
}; /* size = 0x14 */

extern struct PauseMenu gPauseMenus[4];

void CreatePauseMenu(void);
void CreateHelpMenu(void);
void PauseMenuInitRetained(void);
void sub_08124EA0(void);
void sub_08124EC8(void);

#endif
