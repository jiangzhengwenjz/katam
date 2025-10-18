#include "code_08124BE0.h"
#include "constants/pause_menu.h"
#include "functions.h"
#include "kirby.h"
#include "palette.h"
#include "pause_help.h"
#include "treasures.h"

struct __attribute__((packed, aligned(2))) CoorU8 {
    /* 0x00 */ u8 x;
    /* 0x01 */ u8 y;
}; /* size = 0x2 */

struct WorldMapKirbysCoorByRoom {
    /* 0x00 */ u32 roomId;
    /* 0x04 */ struct CoorU8 kirbyCoor[4];
}; /* size = 0xC */

struct WorldMapLineCoor {
    /* 0x0 */ u8 unlockedDoorX;
    /* 0x1 */ u8 unlockedDoorY;
    /* 0x2 */ u8 destX;
    /* 0x3 */ u8 destY;
}; /* size = 0x4 */

extern const u16 gWorldMapBgPalette[0x80];

// Used with gLanguages as index, so range 0x00-0x48 is useful
// What about 0x49-0x5C?
extern const struct Unk_02021590 gUnk_08358D94[][3];

enum WorldMapDoorAnimInfosIndex {
    VISITED_CENTRAL_HALL,
    REACHED_CENTRAL_HALL,
    BLINKING_CENTRAL_HALL,
    VISITED_DOOR,
    UNVISITED_DOOR,
    REACHED_DOOR,   // Line has been drawn and reached dest
    BLINKING_DOOR,  // Line is being drawn and hasn't yet reached dest
    DOT,
    NUM_DOOR_ANIM_INFOS
};

extern const struct Unk_02021590 gWorldMapDoorAnimInfos[NUM_DOOR_ANIM_INFOS];

extern const struct WorldMapLineCoor gWorldMapLineCoors[];
extern const u8 gWorldMapDoorDotCounts[NUM_WORLDMAP_DOORS];
extern const u16 gWorldMapDotsPalette[0x20];
extern const u32 gWorldMapDotsTileset[];
extern const struct WorldMapKirbysCoorByRoom* const gWorldMapKirbysCoorsByArea[];  // Special indexing (not areaId), see WorldMapGetCoorFromRoom()
extern const struct WorldMapDotCoor* const gWorldMapDotCoors[NUM_WORLDMAP_DOORS];

static void WorldMapLineDrawn(void);

// Run when changing menus or area on area map
static inline void guard_sub_08031CE4(u8 playerId) {
    if (gUnk_0203AD10 & 2 && playerId != gUnk_0203AD3C) {
        sub_08031CE4(8);
    }
}

/* This runs on every pause menu screen on every frame.
 * The underlying task is destroyed by the current player through gPauseMenus::mainTask.
 */
void PauseMenuMain(void) {
    u16 allPressedKeys;
    s32 playerId;

    for (playerId = 0; playerId < 4; playerId++) {
        PauseMenuFetchInputs(gPauseMenus + playerId);
    }
    for (playerId = 0; playerId < 4; playerId++) {
        if (gPauseMenus[playerId].disableInputCounter != 0) {
            gPauseMenus[playerId].flags |= MENU_FLAG_DISABLE_INPUT;
            gPauseMenus[playerId].disableInputCounter--;
        }
        else {
            gPauseMenus[playerId].flags &= ~MENU_FLAG_DISABLE_INPUT;
        }
    }
    for (playerId = 0; playerId < 4; playerId++) {
        PauseMenuFetchInputs(gPauseMenus + playerId);
    }

    if (gPauseMenus[gUnk_0203AD50].pressedKeys & (B_BUTTON | START_BUTTON) && !(gPauseMenus[gUnk_0203AD50].flags & MENU_FLAG_DISABLE_INPUT)) {
        for (playerId = 0; playerId < 4; playerId++) {
            gPauseMenus[playerId].flags |= MENU_FLAG_BACK_TO_GAME;
            gPauseMenus[playerId].disableInputCounter = 0x3c;
            if (gPauseMenus[playerId].flags & MENU_FLAG_CURRENT_PLAYER) {
                m4aSongNumStart(SE_08D5AEC0);
            }
        }
        return;
    }

    if (gUnk_0203AD10 & 4) return;

    allPressedKeys = 0;
    for (playerId = 0; playerId < 4; playerId++) {
        if (!(gPauseMenus[playerId].flags & MENU_FLAG_DISABLE_INPUT)) {
            allPressedKeys |= gPauseMenus[playerId].pressedKeys;
        }
    }

    if (allPressedKeys & SELECT_BUTTON) {
        enum PauseMenuId menuId = gPauseMenus[gUnk_0203AD3C].menuId;

        if (gPauseMenus[gUnk_0203AD3C].menuId == MENU_WORLDMAP) {
            menuId = MENU_HELP;
        }
        else if (gPauseMenus[gUnk_0203AD3C].menuId == MENU_AREAMAP) {
            menuId = MENU_WORLDMAP;
        }
        else {
            u32 playerRoomFlags = GetPlayerRoomFlags();

            if (!(playerRoomFlags & ((1 << KIRBY_IN_DIMENSION_MIRROR) | (1 << KIRBY_OUTSIDE_AREAMAP)))) {
                if (playerRoomFlags & (1 << KIRBY_IN_TUTORIAL_ROOM)) {
                    if (HasBigChest(0)) {
                        menuId = MENU_WORLDMAP;
                    }
                }
                else {
                    if (playerRoomFlags & (1 << KIRBY_IN_NORMAL_ROOM)) {
                        menuId = MENU_AREAMAP;
                    }
                }
            }
        }

        if (menuId != gPauseMenus[gUnk_0203AD3C].menuId) {
            for (playerId = 0; playerId < 4; playerId++) {
                gPauseMenus[playerId].menuId = menuId;
                gPauseMenus[playerId].disableInputCounter = 0x28;
                guard_sub_08031CE4(playerId);
                if (gPauseMenus[playerId].flags & MENU_FLAG_CURRENT_PLAYER) {
                    m4aSongNumStart(SE_08D5AEC0);
                }
            }
            return;
        }
    }

    if (gPauseMenus[gUnk_0203AD3C].menuId == MENU_AREAMAP && allPressedKeys & (R_BUTTON | L_BUTTON) &&
        !((gPauseMenus[0].flags | gPauseMenus[1].flags | gPauseMenus[2].flags | gPauseMenus[3].flags) & MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE)) {
        enum PauseMenuFlags menuDirection = allPressedKeys & R_BUTTON ? MENU_FLAG_AREA_ASCEND : MENU_FLAG_AREA_DESCEND;
        for (playerId = 0; playerId < 4; playerId++) {
            gPauseMenus[playerId].flags |= menuDirection;
            gPauseMenus[playerId].disableInputCounter = 0x28;
            guard_sub_08031CE4(playerId);
            if (gPauseMenus[playerId].flags & MENU_FLAG_CURRENT_PLAYER) {
                m4aSongNumStart(SE_08D5AEC0);
            }
        }
    }
}

/* Runs once when starting the game in singleplayer,
 * to initialise retained members in gPauseMenus
 */
void PauseMenuInitRetained(void) {
    s32 playerId;
    for (playerId = 0; playerId < 4; playerId++) {
        gPauseMenus[playerId].menuId = MENU_HELP;
        gPauseMenus[playerId].zoomAreaMap = 0x10;
    }
}

// Influences fading
void sub_08124EA0(void) {
    struct Unk_02022930_0* unk_0803C95C = sub_0803C95C(7);
    unk_0803C95C->unk8 |= 0x0180;
    unk_0803C95C->unk4 = ~0;
    unk_0803C95C->unk6 = ~0;
}

// Runs once immediately when pause menu (or BigSwitch activation) should be closed
void sub_08124EC8(void) {
    u16 white;
    struct Unk_02022930_0* unk_0803C95C = sub_0803CA20(7);
    unk_0803C95C->unk8 |= 0x0180;
    unk_0803C95C->unk4 = ~0;
    unk_0803C95C->unk6 = ~0;

    white = RGB_WHITE;
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(&white, 0, 1);
    }
    else {
        DmaCopy16(3, &white, gBgPalette, sizeof(white));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    sub_0803D2A8(0, 0xff);
}

struct Task* __attribute__((unused)) CreatePauseMenuTaskTrunk(void) {
    return TaskCreate(PauseMenuMain, 4, 0x0f00, TASK_x0004 | TASK_USE_IWRAM, NULL);
}

void __attribute__((unused)) HelpMenuButtonLoadTiles(enum HelpMenuButtonTile button) {
    CpuCopy32(gHelpMenuButtonTileAddresses[button].tiles, gHelpMenuButtonTileAddresses[button].tilesVram, 0x400);  // TODO: Replace with sizeof
}

// FILE BORDER: pause_help.c <-> pause_world_map.c

static inline u16 MapKirbySpriteLoadCoors(const u8* x, const u8* y) {
    return *x << 8 | *y;
}

/* Returns coordinates in the following format:
 * MSB: x, LSB: y
 * 0, if not found in area of passed roomId
 */
static u16 WorldMapGetCoorFromRoom(u16 roomId, u8 playerId) {
    u16 roomIndex;
    const struct WorldMapKirbysCoorByRoom* kirbysCoorByRoom;
    u32 areaIndex = 0;
    u32 coor = 0;

    switch (gUnk_08D6CD0C[roomId]->unk46) {
    case 0:  areaIndex = 1; break;
    case 1:  areaIndex = 2; break;
    case 4:  areaIndex = 5; break;
    case 6:  areaIndex = 7; break;
    case 5:  areaIndex = 6; break;
    case 2:  areaIndex = 3; break;
    case 7:  areaIndex = 8; break;
    case 3:  areaIndex = 4; break;
    case 8:  areaIndex = 9; break;
    case 9:  areaIndex = 0; break;
    case 10: areaIndex = 10; break;
    }

    kirbysCoorByRoom = gWorldMapKirbysCoorsByArea[areaIndex];
    for (roomIndex = 0; kirbysCoorByRoom[roomIndex].roomId; roomIndex++) {
        if (kirbysCoorByRoom[roomIndex].roomId == roomId) {
            switch (playerId) {
            case 0: coor = MapKirbySpriteLoadCoors(&kirbysCoorByRoom[roomIndex].kirbyCoor[0].x, &kirbysCoorByRoom[roomIndex].kirbyCoor[0].y); break;
            case 1: coor = MapKirbySpriteLoadCoors(&kirbysCoorByRoom[roomIndex].kirbyCoor[1].x, &kirbysCoorByRoom[roomIndex].kirbyCoor[1].y); break;
            case 2: coor = MapKirbySpriteLoadCoors(&kirbysCoorByRoom[roomIndex].kirbyCoor[2].x, &kirbysCoorByRoom[roomIndex].kirbyCoor[2].y); break;
            case 3: coor = MapKirbySpriteLoadCoors(&kirbysCoorByRoom[roomIndex].kirbyCoor[3].x, &kirbysCoorByRoom[roomIndex].kirbyCoor[3].y); break;
            }
        }
    }

    return coor;
}

void WorldMapSetKirbySprites(struct MapKirbySprite* mapKirbySprite, u32 playerId) {
    u16 spriteCoor;

    u16 r9 = playerId * 2 + 10;
    if (playerId == gUnk_0203AD3C) {
        r9 = 8;
    }

    mapKirbySprite->flags = 0;
    if (!gUnk_08350B30[gKirbys[playerId].ability].animId && !gUnk_08350B30[gKirbys[playerId].ability].variant) {
        mapKirbySprite->flags = 0x0002;
    }

    spriteCoor = WorldMapGetCoorFromRoom(gKirbys[playerId].base.base.base.roomId, playerId);
    if (spriteCoor == 0x0000) {
        mapKirbySprite->flags |= 0x0003;
    }
    sub_0803E558(playerId);

    SpriteInitNoFunc(&mapKirbySprite->kirby, 0x06013800 + (playerId << 8), (r9 + 1) << 6, gUnk_08350AAC[gKirbys[playerId].ability].animId,
                     gUnk_08350AAC[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId, spriteCoor >> 8, (spriteCoor & 0xff) + 7, 0x41000);

    SpriteInitNoFunc(&mapKirbySprite->abilityAccessory, 0x06013880 + (playerId << 8), r9 << 6, gUnk_08350B30[gKirbys[playerId].ability].animId,
                     gUnk_08350B30[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId + 4, spriteCoor >> 8, (spriteCoor & 0xff) + 7,
                     0x41000);

    sub_08155128(&mapKirbySprite->kirby);
    if (!(mapKirbySprite->flags & 0x0002)) {
        sub_08155128(&mapKirbySprite->abilityAccessory);
    }
}

void sub_081251F8(void) {
    struct Sprite unkSprite;
    CpuFill32(0, &unkSprite, sizeof(struct Sprite));
    SpriteInitNoPointer(&unkSprite, 0x06012000, 0x280, gWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].animId,
                        gWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].variant, 0, 0xff, 0x10, 0, 0, 0, 0x41000);
}

static void CreateWorldMapReachedDoor(enum WorldMapDoor unlockedDoorId) {
    struct Task* task = TaskCreate(WorldMapReachedDoorMain, sizeof(struct Sprite), 0x1000, TASK_x0004 | TASK_USE_IWRAM, NULL);
    struct Sprite *tmp = TaskGetStructPtr(task), *reachedDoor = tmp;

    enum WorldMapDoorAnimInfosIndex destAnimInfo = REACHED_DOOR;
    if (gWorldMapLineCoors[unlockedDoorId].destX == 0x70 && gWorldMapLineCoors[unlockedDoorId].destY == 0x50) {
        destAnimInfo = REACHED_CENTRAL_HALL;
    }

    SpriteInitNoFunc(reachedDoor, 0x06012000, 0x440, gWorldMapDoorAnimInfos[destAnimInfo].animId, gWorldMapDoorAnimInfos[destAnimInfo].variant, 0,
                     0xff, 0x10, 8, gWorldMapLineCoors[unlockedDoorId].destX, gWorldMapLineCoors[unlockedDoorId].destY, 0xc1000);
}

struct Task* CreateWorldMapLine(enum WorldMapDoor unlockedDoorId) {
    struct Task* task = TaskCreate(WorldMapLineInit, sizeof(struct WorldMapLine), 0x1000, TASK_x0004 | TASK_USE_IWRAM, NULL);
    struct WorldMapLine *tmp = TaskGetStructPtr(task), *worldMapLine = tmp;

    enum WorldMapDoorAnimInfosIndex destAnimInfo = BLINKING_DOOR;
    worldMapLine->flags = 0x00;
    if (gWorldMapLineCoors[unlockedDoorId].destX == 0x70 && gWorldMapLineCoors[unlockedDoorId].destY == 0x50) {
        destAnimInfo = BLINKING_CENTRAL_HALL;
        worldMapLine->flags = 0x01;
    }

    CpuFill32(0, &worldMapLine->unlockedDoor, sizeof(struct Sprite));
    CpuFill32(0, &worldMapLine->dest, sizeof(struct Sprite));
    CpuFill32(0, &worldMapLine->dot, sizeof(struct Sprite));

    SpriteInitNoFunc(&worldMapLine->unlockedDoor, 0x6012000, 0x480, gWorldMapDoorAnimInfos[BLINKING_DOOR].animId,
                     gWorldMapDoorAnimInfos[BLINKING_DOOR].variant, 0, 0xff, 0x10, 8, gWorldMapLineCoors[unlockedDoorId].unlockedDoorX,
                     gWorldMapLineCoors[unlockedDoorId].unlockedDoorY, 0xc1000);
    SpriteInitNoFunc(&worldMapLine->dest, 0x6012000, 0x480, gWorldMapDoorAnimInfos[destAnimInfo].animId, gWorldMapDoorAnimInfos[destAnimInfo].variant,
                     0, 0xff, 0x10, 8, gWorldMapLineCoors[unlockedDoorId].destX, gWorldMapLineCoors[unlockedDoorId].destY, 0xc1000);
    SpriteInitNoFunc(&worldMapLine->dot, 0x6012000, 0x480, gWorldMapDoorAnimInfos[DOT].animId, gWorldMapDoorAnimInfos[DOT].variant, 0, 0xff, 0x10, 8,
                     gWorldMapLineCoors[unlockedDoorId].unlockedDoorX, gWorldMapLineCoors[unlockedDoorId].unlockedDoorY, 0xc1000);
    worldMapLine->dotCoors = gWorldMapDotCoors[unlockedDoorId];
    worldMapLine->unlockedDoorId = unlockedDoorId;
    worldMapLine->dotCounter = 0;
    worldMapLine->frameCounter = 0;

    return task;
}

void WorldMapLineDrawing(void) {
    u32 dotnum;
    struct WorldMapLine *tmp = TaskGetStructPtr(gCurTask), *worldMapLine = tmp;

    if (worldMapLine->dotCounter < gWorldMapDoorDotCounts[worldMapLine->unlockedDoorId]) {
        worldMapLine->frameCounter++;
        if (worldMapLine->frameCounter > 15) {
            worldMapLine->dotCounter++;
            worldMapLine->frameCounter = 0;
            m4aSongNumStart(SE_08D5E398);
        }
    }
    else {
        worldMapLine->unlockedDoor.animId = gWorldMapDoorAnimInfos[VISITED_DOOR].animId;
        worldMapLine->unlockedDoor.variant = gWorldMapDoorAnimInfos[VISITED_DOOR].variant;
        worldMapLine->unlockedDoor.unk1B = 0xff;

        if (worldMapLine->flags & 0x01) {
            worldMapLine->dest.animId = gWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].animId;
            worldMapLine->dest.variant = gWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].variant;
            worldMapLine->dest.unk1B = 0xff;
        }
        else {
            worldMapLine->dest.animId = gWorldMapDoorAnimInfos[VISITED_DOOR].animId;
            worldMapLine->dest.variant = gWorldMapDoorAnimInfos[VISITED_DOOR].variant;
            worldMapLine->dest.unk1B = 0xff;
        }
        CreateWorldMapReachedDoor(worldMapLine->unlockedDoorId);
        m4aSongNumStart(SE_08D5E3B8);
        gCurTask->main = WorldMapLineDrawn;
        worldMapLine->flags |= 0x02;
    }

    sub_08155128(&worldMapLine->dot);
    for (dotnum = 0; dotnum < worldMapLine->dotCounter; dotnum++) {
        worldMapLine->dot.x = worldMapLine->dotCoors[dotnum].x;
        worldMapLine->dot.y = worldMapLine->dotCoors[dotnum].y;
        sub_081564D8(&worldMapLine->dot);
    }

    sub_08155128(&worldMapLine->unlockedDoor);
    sub_08155128(&worldMapLine->dest);
    sub_081564D8(&worldMapLine->unlockedDoor);
    sub_081564D8(&worldMapLine->dest);
}

static void WorldMapLineDrawn(void) {
    u32 dotnum;
    struct WorldMapLine *tmp = TaskGetStructPtr(gCurTask), *worldMapLine = tmp;

    sub_08155128(&worldMapLine->dot);

    for (dotnum = 0; dotnum < worldMapLine->dotCounter; dotnum++) {
        worldMapLine->dot.x = worldMapLine->dotCoors[dotnum].x;
        worldMapLine->dot.y = worldMapLine->dotCoors[dotnum].y;
        sub_081564D8(&worldMapLine->dot);
    }

    sub_08155128(&worldMapLine->unlockedDoor);
    sub_08155128(&worldMapLine->dest);
    sub_081564D8(&worldMapLine->unlockedDoor);
    sub_081564D8(&worldMapLine->dest);
}

void WorldMapLoadPalettes(void) {
    u16 white;

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gWorldMapBgPalette, 0x80, ARRAY_COUNT(gWorldMapBgPalette));
    }
    else {
        DmaCopy16(3, gWorldMapBgPalette, gBgPalette + 0x80, sizeof(gWorldMapBgPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gWorldMapDotsPalette, 0, ARRAY_COUNT(gWorldMapDotsPalette));
    }
    else {
        DmaCopy16(3, gWorldMapDotsPalette, gBgPalette, sizeof(gWorldMapDotsPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    white = RGB_WHITE;
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(&white, 0, 1);
    }
    else {
        DmaCopy16(3, &white, gBgPalette, sizeof(white));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    LZ77UnCompVram(gWorldMapDotsTileset, (void*)VRAM);
    sub_081251F8();

    // TODO: Only relevant for unlocks
    // If this is missing, dots will render, but in pure white
    SpriteInit_08125690(gWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].animId, gWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].variant, 0x8);
    SpriteInit_08125690(gUnk_08358D94[gLanguage][0].animId, gUnk_08358D94[gLanguage][0].variant, 0x9);
}

void WorldMapRemoveLines(void) {
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0x2, 0)) WorldMapRemoveLineMoonlightMansion();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0x1, 0)) WorldMapRemoveLineRainbowRouteEast();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0x6, 0)) WorldMapRemoveLineRainbowRouteSouth();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0x5, 0)) WorldMapRemoveLineCabbageCavernCenter();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0x9, 0)) WorldMapRemoveLineRainbowRouteWest();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0xa, 0)) WorldMapRemoveLineCarrotCastle();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0xd, 0)) WorldMapRemoveLineRainbowRouteNorth();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0xf, 0)) WorldMapRemoveLineMustardMountain();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0x7, 0)) WorldMapRemoveLineCabbageCavernWest();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0x8, 0)) WorldMapRemoveLineRadishRuins();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0xb, 0)) WorldMapRemoveLinePeppermintPalaceEast();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0xc, 0)) WorldMapRemoveLinePeppermintPalaceWest();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0x3, 0)) WorldMapRemoveLineCabbageCavernEast();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0x4, 0)) WorldMapRemoveLineOliveOcean();
    if (!*sub_08002888(SUB_08002888_ENUM_UNK_3, 0xe, 0)) WorldMapRemoveLineCandyConstellation();
}

void WorldMapDrawKirbys(struct WorldMap* worldmap) {
    MapKirbySpriteCalls(worldmap, 0);
    MapKirbySpriteCalls(worldmap, 1);
    MapKirbySpriteCalls(worldmap, 2);
    MapKirbySpriteCalls(worldmap, 3);
}
