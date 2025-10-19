#ifndef GUARD_PAUSE_WORLD_MAP_H
#define GUARD_PAUSE_WORLD_MAP_H

#include "constants/languages.h"
#include "constants/pause_menu.h"
#include "data.h"
#include "global.h"
#include "task.h"

enum WorldMapKirbyDrawFlags {
    WORLDMAP_KIRBY_DRAW_NO_SPRITE = 0x0001,
    WORLDMAP_KIRBY_DRAW_NO_ACCESSORY = 0x0002
};

#define WorldMapKirbyDraw(worldmap, playerId)                                           \
    ({                                                                                  \
        struct WorldMapKirby* _worldmapKirby = (worldmap)->worldmapKirbys + (playerId); \
        if (!(_worldmapKirby->flags & WORLDMAP_KIRBY_DRAW_NO_SPRITE)) {                 \
            sub_08155128(&_worldmapKirby->kirby);                                       \
            sub_081564D8(&_worldmapKirby->kirby);                                       \
            if (!(_worldmapKirby->flags & WORLDMAP_KIRBY_DRAW_NO_ACCESSORY)) {          \
                sub_08155128(&_worldmapKirby->abilityAccessory);                        \
                sub_081564D8(&_worldmapKirby->abilityAccessory);                        \
            }                                                                           \
        }                                                                               \
    })

struct WorldMapKirby {
    /* 0x00 */ struct Sprite kirby;
    /* 0x28 */ struct Sprite abilityAccessory;
    /* 0x50 */ u16 flags;  // According to enum WorldMapKirbyDrawFlags
}; /* size = 0x54 */

struct WorldMap {
    /* 0x000 */ struct Background bg;
    /* 0x040 */ struct WorldMapKirby worldmapKirbys[4];
    /* 0x190 */ u8 filler190[0x78];
    /* 0x208 */ u16 unk208;
    /* 0x20A */ u16 unk20A;
    /* 0x20C */ s8 unlockedDoorId;  // According to enum WorldMapDoor
    /* 0x20E */ s16 unlockCounter;
    /* 0x210 */ u8 nextMenuId;  // According to enum MenuId
    /* 0x211 */ s8 closeCounter;
    /* 0x214 */ struct Task* worldmapLineTask;
}; /* size = 0x218 */

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

struct WorldMapDotCoor {
    /* 0x0 */ u8 x;
    /* 0x1 */ u8 y;
}; /* size = 0x4 */

enum WorldMapLineFlags {
    LINE_FLAG_CENTRAL_HALL_IS_DEST = 0x01,
    LINE_FLAG_LINE_DRAW_COMPLETED = 0x02
};

struct WorldMapLine {
    /* 0x00 */ struct Sprite unlockedDoor;
    /* 0x28 */ struct Sprite dest;
    /* 0x50 */ struct Sprite dot;
    /* 0x78 */ const struct WorldMapDotCoor* dotCoors;
    /* 0x7C */ s8 unlockedDoorId;
    /* 0x7D */ s8 dotCounter;
    /* 0x7E */ u8 frameCounter;
    /* 0x7F */ u8 flags;  // According to enum WorldMapLineFlags
}; /* size = 0x80 */

extern struct PauseMenu gPauseMenus[4];

extern const u32 gWorldMapBgTileset[];

void CreateWorldMap(u32);
void sub_081263BC(u16, u8, u8);

// Addresses to these functions held by gUnk_0834BD94
// Called in sub_08039ED4 when big switch is activated
void WorldMapUnlockMoonlightMansion(void);
void WorldMapUnlockRainbowRouteEast(void);
void WorldMapUnlockRainbowRouteSouth(void);
void WorldMapUnlockCabbageCavernCenter(void);
void WorldMapUnlockRainbowRouteWest(void);
void WorldMapUnlockCarrotCastle(void);
void WorldMapUnlockRainbowRouteNorth(void);
void WorldMapUnlockMustardMountain(void);
void WorldMapUnlockCabbageCavernWest(void);
void WorldMapUnlockRadishRuins(void);
void WorldMapUnlockPeppermintPalaceEast(void);
void WorldMapUnlockPeppermintPalaceWest(void);
void WorldMapUnlockCabbageCavernEast(void);
void WorldMapUnlockOliveOcean(void);
void WorldMapUnlockCandyConstellation(void);

void WorldMapReachedDoorMain(void);
void WorldMapLineInit(void);

// Called in WorldMapRemoveLines if corresponding door has not yet been visited
void WorldMapRemoveLineMoonlightMansion(void);
void WorldMapRemoveLineRainbowRouteEast(void);
void WorldMapRemoveLineRainbowRouteSouth(void);
void WorldMapRemoveLineCabbageCavernCenter(void);
void WorldMapRemoveLineRainbowRouteWest(void);
void WorldMapRemoveLineCarrotCastle(void);
void WorldMapRemoveLineRainbowRouteNorth(void);
void WorldMapRemoveLineMustardMountain(void);
void WorldMapRemoveLineCabbageCavernWest(void);
void WorldMapRemoveLineRadishRuins(void);
void WorldMapRemoveLinePeppermintPalaceEast(void);
void WorldMapRemoveLinePeppermintPalaceWest(void);
void WorldMapRemoveLineCabbageCavernEast(void);
void WorldMapRemoveLineOliveOcean(void);
void WorldMapRemoveLineCandyConstellation(void);

#endif
