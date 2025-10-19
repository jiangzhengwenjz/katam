#include "pause_world_map.h"
#include "code_0801DA58.h"
#include "constants/pause_menu.h"
#include "functions.h"
#include "kirby.h"
#include "palette.h"
#include "pause_area_map.h"
#include "pause_fade.h"
#include "pause_help.h"
#include "save.h"
#include "subgames.h"

struct PACKED ALIGNED(2) CoorU8 {
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

static void WorldMapLineDrawn(void);
static void WorldMapPauseInit(void);
static void WorldMapPauseMain(void);
static void WorldMapUnlockInitBg(void);
static void WorldMapUnlockInitKirbyAndDoors(void);
static void WorldMapUnlockWaitLineFinish(void);
static void WorldMapUnlockMain(void);
static void WorldMapToNextMenu(void);
static void WorldMapSetTileDoorVisited(enum WorldMapDoor);
static void WorldMapSetTileDoorUnvisited(enum WorldMapDoor);
static void WorldMapToGame(void);

extern const u16 gWorldMapBgPalette[0x80];

extern const struct WorldMapKirbysCoorByRoom* const gWorldMapKirbysCoorsByArea[NUM_AREA_IDS];
extern const struct WorldMapDotCoor* const gWorldMapDotCoors[NUM_WORLDMAP_DOORS];

// Used with gLanguages as index, so range 0x00-0x47 is useful
// What about 0x48-0x5C?
extern const struct AnimInfo gUnk_08358D94[][3];

extern const struct AnimInfo gWorldMapDoorAnimInfos[NUM_DOOR_ANIM_INFOS];
extern const u16 gWorldMapDoorRoomIds[NUM_WORLDMAP_DOORS];
extern const u16 gWorldMapDoorTilemapOffsets[NUM_WORLDMAP_DOORS];
extern const struct WorldMapLineCoor gWorldMapLineCoors[NUM_WORLDMAP_DOORS];
extern const u8 gWorldMapDoorDotCounts[NUM_WORLDMAP_DOORS];

extern const u8 gWorldMapDoorNumDots[NUM_WORLDMAP_DOORS];

struct WorldMapDot {
    /* 0x00 */ u16 tilemapIndex;
    /* 0x02 */ u16 length;  // in halfwords
}; /* size = 0x4 */
extern const struct WorldMapDot gWorldMapDotsMoonlightMansion[];
extern const struct WorldMapDot gWorldMapDotsRainbowRouteEast[];
extern const struct WorldMapDot gWorldMapDotsRainbowRouteSouth[];
extern const struct WorldMapDot gWorldMapDotsCabbageCavernCenter[];
extern const struct WorldMapDot gWorldMapDotsRainbowRouteWest[];
extern const struct WorldMapDot gWorldMapDotsCarrotCastle[];
extern const struct WorldMapDot gWorldMapDotsRainbowRouteNorth[];
extern const struct WorldMapDot gWorldMapDotsMustardMountain[];
extern const struct WorldMapDot gWorldMapDotsCabbageCavernWest[];
extern const struct WorldMapDot gWorldMapDotsRadishRuins[];
extern const struct WorldMapDot gWorldMapDotsPeppermintPalaceEast[];
extern const struct WorldMapDot gWorldMapDotsPeppermintPalaceWest[];
extern const struct WorldMapDot gWorldMapDotsCabbageCavernEast[];
extern const struct WorldMapDot gWorldMapDotsOliveOcean[];
extern const struct WorldMapDot gWorldMapDotsCandyConstellation[];

extern const u16 gWorldMapDotsPalette[0x20];
extern const u32 gWorldMapDotsTileset[];
extern const u32 gWorldMapAllUnlockedTilemap[0x140];

static inline u16 WorldMapKirbyLoadCoors(const u8* x, const u8* y) {
    return *x << 8 | *y;
}

/*
 * Returns coordinates in the following format:
 * MSB: x, LSB: y
 * 0, if not found in area of passed roomId
 */
static u16 WorldMapGetCoorFromRoom(u16 roomId, u8 playerId) {
    u16 roomIdx;
    const struct WorldMapKirbysCoorByRoom* kirbysCoorByRoom;
    enum AreaId areaId = AREA_TUTORIAL;
    u32 coor = 0;

    switch (gUnk_08D6CD0C[roomId]->unk46) {
    case 0:  areaId = AREA_RAINBOW_ROUTE; break;
    case 1:  areaId = AREA_MOONLIGHT_MANSION; break;
    case 4:  areaId = AREA_CARROT_CASTLE; break;
    case 6:  areaId = AREA_PEPPERMINT_PALACE; break;
    case 5:  areaId = AREA_OLIVE_OCEAN; break;
    case 2:  areaId = AREA_CABBAGE_CAVERN; break;
    case 7:  areaId = AREA_RADISH_RUINS; break;
    case 3:  areaId = AREA_MUSTARD_MOUNTAIN; break;
    case 8:  areaId = AREA_CANDY_CONSTELLATION; break;
    case 9:  areaId = AREA_TUTORIAL; break;
    case 10: areaId = AREA_DIMENSION_MIRROR; break;
    }

    kirbysCoorByRoom = gWorldMapKirbysCoorsByArea[areaId];
    for (roomIdx = 0; kirbysCoorByRoom[roomIdx].roomId; roomIdx++) {
        if (kirbysCoorByRoom[roomIdx].roomId == roomId) {
            switch (playerId) {
            case 0: coor = WorldMapKirbyLoadCoors(&kirbysCoorByRoom[roomIdx].kirbyCoor[0].x, &kirbysCoorByRoom[roomIdx].kirbyCoor[0].y); break;
            case 1: coor = WorldMapKirbyLoadCoors(&kirbysCoorByRoom[roomIdx].kirbyCoor[1].x, &kirbysCoorByRoom[roomIdx].kirbyCoor[1].y); break;
            case 2: coor = WorldMapKirbyLoadCoors(&kirbysCoorByRoom[roomIdx].kirbyCoor[2].x, &kirbysCoorByRoom[roomIdx].kirbyCoor[2].y); break;
            case 3: coor = WorldMapKirbyLoadCoors(&kirbysCoorByRoom[roomIdx].kirbyCoor[3].x, &kirbysCoorByRoom[roomIdx].kirbyCoor[3].y); break;
            }
        }
    }

    return coor;
}

static void WorldMapSetKirbySprites(struct WorldMapKirby* worldmapKirby, u32 playerId) {
    u16 spriteCoor;

    u16 r9 = playerId * 2 + 10;
    if (playerId == gUnk_0203AD3C) {
        r9 = 8;
    }

    worldmapKirby->flags = 0;
    if (!gUnk_08350B30[gKirbys[playerId].ability].animId && !gUnk_08350B30[gKirbys[playerId].ability].variant) {
        worldmapKirby->flags = WORLDMAP_KIRBY_DRAW_NO_ACCESSORY;
    }

    spriteCoor = WorldMapGetCoorFromRoom(gKirbys[playerId].base.base.base.roomId, playerId);
    if (spriteCoor == 0x0000) {
        worldmapKirby->flags |= (WORLDMAP_KIRBY_DRAW_NO_SPRITE | WORLDMAP_KIRBY_DRAW_NO_ACCESSORY);
    }
    sub_0803E558(playerId);

    SpriteInitNoFunc(&worldmapKirby->kirby, (u32)OBJ_VRAM0 + 0x3800 + (playerId << 8), (r9 + 1) << 6, gUnk_08350AAC[gKirbys[playerId].ability].animId,
                     gUnk_08350AAC[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId, spriteCoor >> 8, (spriteCoor & 0xff) + 7, 0x41000);

    SpriteInitNoFunc(&worldmapKirby->abilityAccessory, (u32)OBJ_VRAM0 + 0x3880 + (playerId << 8), r9 << 6,
                     gUnk_08350B30[gKirbys[playerId].ability].animId, gUnk_08350B30[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId + 4,
                     spriteCoor >> 8, (spriteCoor & 0xff) + 7, 0x41000);

    sub_08155128(&worldmapKirby->kirby);
    if (!(worldmapKirby->flags & WORLDMAP_KIRBY_DRAW_NO_ACCESSORY)) {
        sub_08155128(&worldmapKirby->abilityAccessory);
    }
}

static void sub_081251F8(void) {
    struct Sprite unkSprite;
    CpuFill32(0, &unkSprite, sizeof(struct Sprite));
    SpriteInitNoPointer(&unkSprite, (u32)OBJ_VRAM0 + 0x2000, 0x280, gWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].animId,
                        gWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].variant, 0, 0xff, 0x10, 0, 0, 0, 0x41000);
}

static void CreateWorldMapReachedDoor(enum WorldMapDoor unlockedDoorId) {
    struct Task* task = TaskCreate(WorldMapReachedDoorMain, sizeof(struct Sprite), 0x1000, TASK_x0004 | TASK_USE_IWRAM, NULL);
    struct Sprite *tmp = TaskGetStructPtr(task), *reachedDoor = tmp;

    enum WorldMapDoorAnimInfosIndex destAnimInfo = REACHED_DOOR;
    if (gWorldMapLineCoors[unlockedDoorId].destX == 112 && gWorldMapLineCoors[unlockedDoorId].destY == 80) {
        destAnimInfo = REACHED_CENTRAL_HALL;
    }

    SpriteInitNoFunc(reachedDoor, (u32)OBJ_VRAM0 + 0x2000, 0x440, gWorldMapDoorAnimInfos[destAnimInfo].animId,
                     gWorldMapDoorAnimInfos[destAnimInfo].variant, 0, 0xff, 0x10, 8, gWorldMapLineCoors[unlockedDoorId].destX,
                     gWorldMapLineCoors[unlockedDoorId].destY, 0xc1000);
}

struct Task* CreateWorldMapLine(enum WorldMapDoor unlockedDoorId) {
    struct Task* task = TaskCreate(WorldMapLineInit, sizeof(struct WorldMapLine), 0x1000, TASK_x0004 | TASK_USE_IWRAM, NULL);
    struct WorldMapLine *tmp = TaskGetStructPtr(task), *worldMapLine = tmp;

    enum WorldMapDoorAnimInfosIndex destAnimInfo = BLINKING_DOOR;
    worldMapLine->flags = 0;
    if (gWorldMapLineCoors[unlockedDoorId].destX == 112 && gWorldMapLineCoors[unlockedDoorId].destY == 80) {
        destAnimInfo = BLINKING_CENTRAL_HALL;
        worldMapLine->flags = LINE_FLAG_CENTRAL_HALL_IS_DEST;
    }

    CpuFill32(0, &worldMapLine->unlockedDoor, sizeof(struct Sprite));
    CpuFill32(0, &worldMapLine->dest, sizeof(struct Sprite));
    CpuFill32(0, &worldMapLine->dot, sizeof(struct Sprite));

    SpriteInitNoFunc(&worldMapLine->unlockedDoor, (u32)OBJ_VRAM0 + 0x2000, 0x480, gWorldMapDoorAnimInfos[BLINKING_DOOR].animId,
                     gWorldMapDoorAnimInfos[BLINKING_DOOR].variant, 0, 0xff, 0x10, 8, gWorldMapLineCoors[unlockedDoorId].unlockedDoorX,
                     gWorldMapLineCoors[unlockedDoorId].unlockedDoorY, 0xc1000);
    SpriteInitNoFunc(&worldMapLine->dest, (u32)OBJ_VRAM0 + 0x2000, 0x480, gWorldMapDoorAnimInfos[destAnimInfo].animId,
                     gWorldMapDoorAnimInfos[destAnimInfo].variant, 0, 0xff, 0x10, 8, gWorldMapLineCoors[unlockedDoorId].destX,
                     gWorldMapLineCoors[unlockedDoorId].destY, 0xc1000);
    SpriteInitNoFunc(&worldMapLine->dot, (u32)OBJ_VRAM0 + 0x2000, 0x480, gWorldMapDoorAnimInfos[DOT].animId, gWorldMapDoorAnimInfos[DOT].variant, 0,
                     0xff, 0x10, 8, gWorldMapLineCoors[unlockedDoorId].unlockedDoorX, gWorldMapLineCoors[unlockedDoorId].unlockedDoorY, 0xc1000);
    worldMapLine->dotCoors = gWorldMapDotCoors[unlockedDoorId];
    worldMapLine->unlockedDoorId = unlockedDoorId;
    worldMapLine->dotCounter = 0;
    worldMapLine->frameCounter = 0;

    return task;
}

static void WorldMapLineDrawing(void) {
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

        if (worldMapLine->flags & LINE_FLAG_CENTRAL_HALL_IS_DEST) {
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
        worldMapLine->flags |= LINE_FLAG_LINE_DRAW_COMPLETED;
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

static inline void SpriteInit_08125690(u16 animId, u8 variant, u8 palId) {
    struct Sprite sprite;
    SpriteInitNoPointer2(&sprite, (u32)OBJ_VRAM0 + 0x2000, 0x280, animId, variant, 0, 0xff, 0x10, palId, 0, 0, 0x81000);
}

static void WorldMapLoadPalettes(void) {
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

static void WorldMapRemoveLines(void) {
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

static void WorldMapDrawKirbys(struct WorldMap* worldmap) {
    WorldMapKirbyDraw(worldmap, 0);
    WorldMapKirbyDraw(worldmap, 1);
    WorldMapKirbyDraw(worldmap, 2);
    WorldMapKirbyDraw(worldmap, 3);
}

void CreateWorldMap(enum WorldMapDoor unlockedDoorId) {
    struct Task* task;
    struct WorldMap *tmp, *worldmap;

    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(22) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_16COLOR | BGCNT_SCREENBASE(24) | BGCNT_TXT256x256;
    gBgScrollRegs[0][0] = 0x8;
    gBgScrollRegs[0][1] = 0x8;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0x8;
    gBgScrollRegs[2][1] = 0x8;

    task = TaskCreate(WorldMapPauseInit, sizeof(struct WorldMap), 0x1000, TASK_x0004 | TASK_USE_IWRAM, NULL);
    worldmap = tmp = TaskGetStructPtr(task);
    worldmap->unlockedDoorId = WORLDMAP_NO_UNLOCK;

    if (unlockedDoorId != WORLDMAP_NO_UNLOCK) {
        worldmap->unk208 = 1;
        worldmap->unlockedDoorId = unlockedDoorId;
        CpuFill32(0, (void*)BG_VRAM, BG_VRAM_SIZE);
        task->main = WorldMapUnlockInitBg;
    }
    else {
        WorldMapPauseEnableUI();
    }

    worldmap->unk20A = 0;
    worldmap->unlockCounter = 0;
    worldmap->nextMenuId = 0;
    worldmap->worldmapLineTask = NULL;
    worldmap->closeCounter = 0;
}

static void WorldMapPauseInit(void) {
    enum WorldMapDoor doorId;
    struct WorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    WorldMapLoadPalettes();
    gCurTask->main = WorldMapPauseMain;
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);

    CpuFill32(0, BG_CHAR_ADDR(1), BG_CHAR_SIZE / 2);
    worldmap->bg.unkA = 0;
    worldmap->bg.unk18 = 0;
    worldmap->bg.unk1A = 0;
    worldmap->bg.unk1C = 0xb6;
    worldmap->bg.unk1E = 0;
    worldmap->bg.unk20 = 0;
    worldmap->bg.unk22 = 0;
    worldmap->bg.unk24 = 0;
    worldmap->bg.unk26 = 0x20;
    worldmap->bg.unk28 = 0x16;
    worldmap->bg.prevScrollX = 0x7fff;
    worldmap->bg.prevScrollY = 0x7fff;
    worldmap->bg.paletteOffset = 0;
    worldmap->bg.tilesVram = (u32)BG_CHAR_ADDR(1);
    worldmap->bg.unk2E = 0x19;
    worldmap->bg.tilemapVram = (u32)BG_SCREEN_ADDR(22);
    LZ77UnCompVram(gWorldMapBgTileset, (void*)worldmap->bg.tilesVram);
    sub_08153060(&worldmap->bg);
    CpuFill16(0, BG_SCREEN_ADDR(24), 0x600);
    CpuCopy32(gWorldMapAllUnlockedTilemap, BG_SCREEN_ADDR(24), sizeof(gWorldMapAllUnlockedTilemap));

    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 0, 0);
    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 1, 1);
    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 2, 2);
    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 3, 3);

    WorldMapRemoveLines();

    for (doorId = WORLDMAP_MOONLIGHT_MANSION; (s32)doorId < NUM_WORLDMAP_DOORS; doorId++) {
        WorldMapSetTileDoorVisited(doorId);
        if (!sub_08002A5C(gWorldMapDoorRoomIds[doorId])) {
            WorldMapSetTileDoorUnvisited(doorId);
        }
    }

    WorldMapDrawKirbys(worldmap);
}

static void WorldMapPauseMain(void) {
    u8 playerId;
    struct WorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    if (gPauseMenus[0].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[1].flags & MENU_FLAG_BACK_TO_GAME ||
        gPauseMenus[2].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[3].flags & MENU_FLAG_BACK_TO_GAME) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = WorldMapToGame;
        WorldMapDrawKirbys(worldmap);
    }
    else {
        WorldMapDrawKirbys(worldmap);

        for (playerId = 0; playerId < 4; playerId++) {
            if (gPauseMenus[playerId].flags & MENU_FLAG_CURRENT_PLAYER &&
                (gPauseMenus[playerId].menuId == MENU_HELP || gPauseMenus[playerId].menuId == MENU_AREAMAP)) {
                worldmap->nextMenuId = gPauseMenus[playerId].menuId;
                CreatePauseFade(0x20, 1);
                gCurTask->main = WorldMapToNextMenu;
                return;
            }
        }
    }
}

static void WorldMapUnlockInitBg(void) {
    u16 white;
    struct WorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    if (worldmap->unlockCounter++ <= 10) return;
    worldmap->unlockCounter = 0;
    gCurTask->main = WorldMapUnlockInitKirbyAndDoors;
    WorldMapLoadPalettes();

    CpuFill32(0, BG_CHAR_ADDR(1), BG_CHAR_SIZE / 2);
    worldmap->bg.unkA = 0;
    worldmap->bg.unk18 = 0;
    worldmap->bg.unk1A = 0;
    worldmap->bg.unk1C = 0xb6;
    worldmap->bg.unk1E = 0;
    worldmap->bg.unk20 = 0;
    worldmap->bg.unk22 = 0;
    worldmap->bg.unk24 = 0;
    worldmap->bg.unk26 = 0x20;
    worldmap->bg.unk28 = 0x16;
    worldmap->bg.prevScrollX = 0x7fff;
    worldmap->bg.prevScrollY = 0x7fff;
    worldmap->bg.paletteOffset = 0;
    worldmap->bg.tilesVram = (u32)BG_CHAR_ADDR(1);
    worldmap->bg.unk2E = 0x19;
    worldmap->bg.tilemapVram = (u32)BG_SCREEN_ADDR(22);
    LZ77UnCompVram(gWorldMapBgTileset, (void*)worldmap->bg.tilesVram);
    sub_08153060(&worldmap->bg);

    CpuFill16(0, BG_SCREEN_ADDR(24), 0x600);
    CpuCopy32(gWorldMapAllUnlockedTilemap, BG_SCREEN_ADDR(24), sizeof(gWorldMapAllUnlockedTilemap));

    sub_08124EA0();
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);
    white = RGB_WHITE;
    sub_0803D21C(&white, 0, 1);
}

static void WorldMapUnlockInitKirbyAndDoors(void) {
    enum WorldMapDoor doorId;
    struct WorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    gCurTask->main = WorldMapUnlockWaitLineFinish;
    worldmap->worldmapLineTask = CreateWorldMapLine(worldmap->unlockedDoorId);

    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 0, 0);
    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 1, 1);
    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 2, 2);
    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 3, 3);

    WorldMapRemoveLines();

    for (doorId = WORLDMAP_MOONLIGHT_MANSION; (s32)doorId < NUM_WORLDMAP_DOORS; doorId++) {
        WorldMapSetTileDoorVisited(doorId);
        if (!(sub_08002A5C(gWorldMapDoorRoomIds[doorId]))) {
            WorldMapSetTileDoorUnvisited(doorId);
        }
    }
}

static void WorldMapUnlockWaitLineFinish(void) {
    struct WorldMapLine* worldMapLine;
    struct WorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    WorldMapKirbyDraw(worldmap, 0);
    WorldMapKirbyDraw(worldmap, 1);
    WorldMapKirbyDraw(worldmap, 2);
    WorldMapKirbyDraw(worldmap, 3);

    worldMapLine = TaskGetStructPtr(worldmap->worldmapLineTask);
    if (worldMapLine->flags & LINE_FLAG_LINE_DRAW_COMPLETED) {
        worldmap->unlockCounter = 0;
        gCurTask->main = WorldMapUnlockMain;
    }
}

static void WorldMapUnlockSave(s8 unlockedDoorId) {
    u8 index = 0;
    switch (unlockedDoorId) {
    case WORLDMAP_MOONLIGHT_MANSION:      index = 0x2; break;
    case WORLDMAP_RAINBOW_ROUTE_EAST:     index = 0x1; break;
    case WORLDMAP_RAINBOW_ROUTE_SOUTH:    index = 0x6; break;
    case WORLDMAP_CABBAGE_CAVERN_CENTER:  index = 0x5; break;
    case WORLDMAP_RAINBOW_ROUTE_WEST:     index = 0x9; break;
    case WORLDMAP_CARROT_CASTLE:          index = 0xa; break;
    case WORLDMAP_RAINBOW_ROUTE_NORTH:    index = 0xd; break;
    case WORLDMAP_MUSTARD_MOUNTAIN:       index = 0xf; break;
    case WORLDMAP_CABBAGE_CAVERN_WEST:    index = 0x7; break;
    case WORLDMAP_RADISH_RUINS:           index = 0x8; break;
    case WORLDMAP_PEPPERMINT_PALACE_EAST: index = 0xb; break;
    case WORLDMAP_PEPPERMINT_PALACE_WEST: index = 0xc; break;
    case WORLDMAP_CABBAGE_CAVERN_EAST:    index = 0x3; break;
    case WORLDMAP_OLIVE_OCEAN:            index = 0x4; break;
    case WORLDMAP_CANDY_CONSTELLATION:    index = 0xe; break;
    }
    *sub_08002888(SUB_08002888_ENUM_UNK_3, index, 0) = 1;

    if (!(gUnk_0203AD10 & 0x10)) {
        if (gUnk_0203AD10 & 0x2) {
            if (gUnk_0203AD3C == gUnk_0203AD24) {
                UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
            }
            else {
                sub_08031CE4(0x8);
            }
        }
        else {
            UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
        }
    }
}

static void WorldMapUnlockMain(void) {
    u8 index, r5;
    struct WorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    WorldMapKirbyDraw(worldmap, 0);
    WorldMapKirbyDraw(worldmap, 1);
    WorldMapKirbyDraw(worldmap, 2);
    WorldMapKirbyDraw(worldmap, 3);

    if (worldmap->unlockCounter == 120) {
        sub_08124EC8();
    }

    if (worldmap->unlockCounter > 150) {
        TaskDestroy(worldmap->worldmapLineTask);
        CpuFill32(0, (void*)BG_VRAM, BG_VRAM_SIZE);
        WorldMapUnlockSave(worldmap->unlockedDoorId);

        for (r5 = 0, index = 1; index <= 0xf; index++) {
            if (*sub_08002888(SUB_08002888_ENUM_UNK_3, index, 0)) {
                r5++;
            }
        }

        if (r5 == 0xf) {
            *sub_08002888(SUB_08002888_ENUM_UNK_3, 0x12, 0) = 1;  // TODO: Perhaps unlocks ability room? Or animation

            if (!(gUnk_0203AD10 & 0x10)) {
                if (gUnk_0203AD10 & 0x2) {
                    if (gUnk_0203AD3C == gUnk_0203AD24) {
                        UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
                    }
                    else {
                        sub_08031CE4(0x8);
                    }
                }
                else {
                    UpdateSaveBufferByOffset(SAVE_BUFFER_TYPE_WORLD_PROPS, gSaveID > 2 ? 0 : gSaveID);
                }
            }

            TaskDestroy(gCurTask);
            sub_0801DA58(0);
        }
        else {
            TaskDestroy(gCurTask);
            sub_08039670();
        }
    }
    else {
        worldmap->unlockCounter++;
    }
}

void UNUSED sub_081263BC(u16 animId, u8 variant, u8 palId) {
    SpriteInit_08125690(animId, variant, palId);
}

void WorldMapUnlockMoonlightMansion(void) {
    CreateWorldMap(WORLDMAP_MOONLIGHT_MANSION);
}
void WorldMapUnlockRainbowRouteEast(void) {
    CreateWorldMap(WORLDMAP_RAINBOW_ROUTE_EAST);
}
void WorldMapUnlockRainbowRouteSouth(void) {
    CreateWorldMap(WORLDMAP_RAINBOW_ROUTE_SOUTH);
}
void WorldMapUnlockCabbageCavernCenter(void) {
    CreateWorldMap(WORLDMAP_CABBAGE_CAVERN_CENTER);
}
void WorldMapUnlockRainbowRouteWest(void) {
    CreateWorldMap(WORLDMAP_RAINBOW_ROUTE_WEST);
}
void WorldMapUnlockCarrotCastle(void) {
    CreateWorldMap(WORLDMAP_CARROT_CASTLE);
}
void WorldMapUnlockRainbowRouteNorth(void) {
    CreateWorldMap(WORLDMAP_RAINBOW_ROUTE_NORTH);
}
void WorldMapUnlockMustardMountain(void) {
    CreateWorldMap(WORLDMAP_MUSTARD_MOUNTAIN);
}
void WorldMapUnlockCabbageCavernWest(void) {
    CreateWorldMap(WORLDMAP_CABBAGE_CAVERN_WEST);
}
void WorldMapUnlockRadishRuins(void) {
    CreateWorldMap(WORLDMAP_RADISH_RUINS);
}
void WorldMapUnlockPeppermintPalaceEast(void) {
    CreateWorldMap(WORLDMAP_PEPPERMINT_PALACE_EAST);
}
void WorldMapUnlockPeppermintPalaceWest(void) {
    CreateWorldMap(WORLDMAP_PEPPERMINT_PALACE_WEST);
}
void WorldMapUnlockCabbageCavernEast(void) {
    CreateWorldMap(WORLDMAP_CABBAGE_CAVERN_EAST);
}
void WorldMapUnlockOliveOcean(void) {
    CreateWorldMap(WORLDMAP_OLIVE_OCEAN);
}
void WorldMapUnlockCandyConstellation(void) {
    CreateWorldMap(WORLDMAP_CANDY_CONSTELLATION);
}

void WorldMapReachedDoorMain(void) {
    struct Sprite* reachedDoor = TaskGetStructPtr(gCurTask);
    if (!sub_08155128(reachedDoor)) {
        TaskDestroy(gCurTask);
    }
    else {
        sub_081564D8(reachedDoor);
    }
}

void WorldMapLineInit(void) {
    struct WorldMapLine* worldmapLine = TaskGetStructPtr(gCurTask);

    gCurTask->main = WorldMapLineDrawing;
    sub_08155128(&worldmapLine->unlockedDoor);
    sub_08155128(&worldmapLine->dest);
    sub_081564D8(&worldmapLine->unlockedDoor);
    sub_081564D8(&worldmapLine->dest);
}

static void WorldMapToNextMenu(void) {
    struct WorldMap* worldmap = TaskGetStructPtr(gCurTask);
    if (!sub_0812A304()) {
        if (worldmap->nextMenuId == MENU_HELP) {
            CreateHelpMenu();
        }
        else if (worldmap->nextMenuId == MENU_AREAMAP) {
            CreateAreaMap();
        }
        CreatePauseFade(-0x20, 1);
        TaskDestroy(gCurTask);
    }
    else {
        WorldMapDrawKirbys(worldmap);
    }
}

static inline void WorldMapRemoveLine(const struct WorldMapDot dots[], const u8 numDots) {
    u8 dotnum;
    for (dotnum = 0; dotnum < numDots; dotnum++) {
        CpuFill16(0, BG_SCREEN_ADDR(24) + (dots[dotnum].tilemapIndex << 1), dots[dotnum].length << 1);
    }
}

void WorldMapRemoveLineMoonlightMansion(void) {
    WorldMapRemoveLine(gWorldMapDotsMoonlightMansion, gWorldMapDoorNumDots[WORLDMAP_MOONLIGHT_MANSION]);
}

void WorldMapRemoveLineRainbowRouteEast(void) {
    WorldMapRemoveLine(gWorldMapDotsRainbowRouteEast, gWorldMapDoorNumDots[WORLDMAP_RAINBOW_ROUTE_EAST]);
}

void WorldMapRemoveLineRainbowRouteSouth(void) {
    WorldMapRemoveLine(gWorldMapDotsRainbowRouteSouth, gWorldMapDoorNumDots[WORLDMAP_RAINBOW_ROUTE_SOUTH]);
}

void WorldMapRemoveLineCabbageCavernCenter(void) {
    WorldMapRemoveLine(gWorldMapDotsCabbageCavernCenter, gWorldMapDoorNumDots[WORLDMAP_CABBAGE_CAVERN_CENTER]);
}

void WorldMapRemoveLineRainbowRouteWest(void) {
    WorldMapRemoveLine(gWorldMapDotsRainbowRouteWest, gWorldMapDoorNumDots[WORLDMAP_RAINBOW_ROUTE_WEST]);
}

void WorldMapRemoveLineCarrotCastle(void) {
    WorldMapRemoveLine(gWorldMapDotsCarrotCastle, gWorldMapDoorNumDots[WORLDMAP_CARROT_CASTLE]);
}

void WorldMapRemoveLineRainbowRouteNorth(void) {
    WorldMapRemoveLine(gWorldMapDotsRainbowRouteNorth, gWorldMapDoorNumDots[WORLDMAP_RAINBOW_ROUTE_NORTH]);
}

void WorldMapRemoveLineMustardMountain(void) {
    WorldMapRemoveLine(gWorldMapDotsMustardMountain, gWorldMapDoorNumDots[WORLDMAP_MUSTARD_MOUNTAIN]);
}

void WorldMapRemoveLineCabbageCavernWest(void) {
    WorldMapRemoveLine(gWorldMapDotsCabbageCavernWest, gWorldMapDoorNumDots[WORLDMAP_CABBAGE_CAVERN_WEST]);
}

void WorldMapRemoveLineRadishRuins(void) {
    WorldMapRemoveLine(gWorldMapDotsRadishRuins, gWorldMapDoorNumDots[WORLDMAP_RADISH_RUINS]);
}

void WorldMapRemoveLinePeppermintPalaceEast(void) {
    WorldMapRemoveLine(gWorldMapDotsPeppermintPalaceEast, gWorldMapDoorNumDots[WORLDMAP_PEPPERMINT_PALACE_EAST]);
}

void WorldMapRemoveLinePeppermintPalaceWest(void) {
    WorldMapRemoveLine(gWorldMapDotsPeppermintPalaceWest, gWorldMapDoorNumDots[WORLDMAP_PEPPERMINT_PALACE_WEST]);
}

void WorldMapRemoveLineCabbageCavernEast(void) {
    WorldMapRemoveLine(gWorldMapDotsCabbageCavernEast, gWorldMapDoorNumDots[WORLDMAP_CABBAGE_CAVERN_EAST]);
}

void WorldMapRemoveLineOliveOcean(void) {
    WorldMapRemoveLine(gWorldMapDotsOliveOcean, gWorldMapDoorNumDots[WORLDMAP_OLIVE_OCEAN]);
}

void WorldMapRemoveLineCandyConstellation(void) {
    WorldMapRemoveLine(gWorldMapDotsCandyConstellation, gWorldMapDoorNumDots[WORLDMAP_CANDY_CONSTELLATION]);
}

static void WorldMapSetTileDoorVisited(enum WorldMapDoor doorId) {
    u16 doorTilemapOffset = gWorldMapDoorTilemapOffsets[doorId];
    CpuFill16_2(0x5, (u16*)BG_SCREEN_ADDR(24) + doorTilemapOffset, 0x2);
}

static void WorldMapSetTileDoorUnvisited(enum WorldMapDoor doorId) {
    u16 doorTilemapOffset = gWorldMapDoorTilemapOffsets[doorId];
    CpuFill16_2(0x6, (u16*)BG_SCREEN_ADDR(24) + doorTilemapOffset, 0x2);
}

static void WorldMapToGame(void) {
    struct WorldMap* worldmap = TaskGetStructPtr(gCurTask);

    if (worldmap->closeCounter++ > 18) {
        TaskDestroy(gPauseMenus[gUnk_0203AD3C].mainTask);
        TaskDestroy(gCurTask);
        sub_08039670();
    }
    WorldMapDrawKirbys(worldmap);
}
