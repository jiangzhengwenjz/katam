#include "pause_world_map.h"
#include "code_0801DA58.h"
#include "code_08124BE0.h"
#include "constants/pause_menu.h"
#include "functions.h"
#include "kirby.h"
#include "pause_area_map.h"
#include "pause_fade.h"
#include "pause_help.h"
#include "save.h"
#include "subgames.h"

static void WorldMapPauseInit(void);
static void WorldMapPauseMain(void);
static void WorldMapUnlockInitBg(void);
static void WorldMapUnlockInitKirbyAndDoors(void);
static void WorldMapUnlockWaitLineFinish(void);
static void WorldMapUnlockMain(void);
static void WorldMapToNextMenu(void);
static void WorldMapSetTileDoorVisited(u32);
static void WorldMapSetTileDoorUnvisited(u32);
static void WorldMapToGame(void);

extern const u16 gWorldMapDoorRoomIds[];
extern const u16 gWorldMapDoorTilemapOffsets[];
extern const u8 gWorldMapDoorNumDots[];

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

extern const u32 gWorldMapAllUnlockedTilemap[0x140];

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
        worldmap->unk208 = 1;  // TODO: Perhaps bool16? Is this read somewhere?
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
    worldmap->worldMapLineTask = NULL;
    worldmap->closeCounter = 0;
}

static void WorldMapPauseInit(void) {
    enum WorldMapDoor doorId;
    struct WorldMap *tmp = TaskGetStructPtr(gCurTask), *worldmap = tmp;

    WorldMapLoadPalettes();
    gCurTask->main = WorldMapPauseMain;
    sub_0803D280(0x80, 0x7f);
    sub_0803D2A8(0x00, 0xff);
    CpuFill32(0, (void*)0x06004000, 0x2000);

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
    worldmap->bg.unk4 = 0x06004000;
    worldmap->bg.unk2E = 0x19;
    worldmap->bg.tilemapVram = 0x0600b000;
    LZ77UnCompVram(gWorldMapBgTileset, (void*)worldmap->bg.unk4);
    sub_08153060(&worldmap->bg);
    CpuFill16(0, (void*)0x0600c000, 0x600);
    CpuCopy32(gWorldMapAllUnlockedTilemap, (void*)0x0600c000, sizeof(gWorldMapAllUnlockedTilemap));

    WorldMapSetKirbySprites(worldmap->mapKirbySprites + 0, 0);
    WorldMapSetKirbySprites(worldmap->mapKirbySprites + 1, 1);
    WorldMapSetKirbySprites(worldmap->mapKirbySprites + 2, 2);
    WorldMapSetKirbySprites(worldmap->mapKirbySprites + 3, 3);

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

    if (gUnk_0203ACC0[0].unkE & 0x1000 || gUnk_0203ACC0[1].unkE & 0x1000 || gUnk_0203ACC0[2].unkE & 0x1000 || gUnk_0203ACC0[3].unkE & 0x1000) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = WorldMapToGame;
        WorldMapDrawKirbys(worldmap);
    }
    else {
        WorldMapDrawKirbys(worldmap);

        for (playerId = 0; playerId <= 3; playerId++) {
            if (gUnk_0203ACC0[playerId].unkE & 0x02 && (gUnk_0203ACC0[playerId].unkD == 0x01 || gUnk_0203ACC0[playerId].unkD == 0x04)) {
                worldmap->nextMenuId = gUnk_0203ACC0[playerId].unkD;
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

    if (worldmap->unlockCounter++ <= 0xa) return;
    worldmap->unlockCounter = 0;
    gCurTask->main = WorldMapUnlockInitKirbyAndDoors;
    WorldMapLoadPalettes();

    CpuFill32(0, (void*)0x06004000, 0x2000);
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
    worldmap->bg.unk4 = 0x06004000;
    worldmap->bg.unk2E = 0x19;
    worldmap->bg.tilemapVram = 0x0600b000;
    LZ77UnCompVram(gWorldMapBgTileset, (void*)worldmap->bg.unk4);
    sub_08153060(&worldmap->bg);

    CpuFill16(0, (void*)0x0600c000, 0x600);
    CpuCopy32(gWorldMapAllUnlockedTilemap, (void*)0x0600c000, sizeof(gWorldMapAllUnlockedTilemap));

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
    worldmap->worldMapLineTask = CreateWorldMapLine(worldmap->unlockedDoorId);

    WorldMapSetKirbySprites(worldmap->mapKirbySprites + 0, 0);
    WorldMapSetKirbySprites(worldmap->mapKirbySprites + 1, 1);
    WorldMapSetKirbySprites(worldmap->mapKirbySprites + 2, 2);
    WorldMapSetKirbySprites(worldmap->mapKirbySprites + 3, 3);

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

    MapKirbySpriteCalls(worldmap, 0);
    MapKirbySpriteCalls(worldmap, 1);
    MapKirbySpriteCalls(worldmap, 2);
    MapKirbySpriteCalls(worldmap, 3);

    worldMapLine = TaskGetStructPtr(worldmap->worldMapLineTask);
    if (worldMapLine->flags & 0x02) {
        worldmap->unlockCounter = 0;
        gCurTask->main = WorldMapUnlockMain;
    }
}

static void WorldMapUnlockSave(s8 unlockedDoorId) {
    u8 index = 0;
    switch (unlockedDoorId) {
    case WORLDMAP_MOONLIGHT_MANSION: index = 0x2; break;
    case WORLDMAP_RAINBOW_ROUTE_EAST: index = 0x1; break;
    case WORLDMAP_RAINBOW_ROUTE_SOUTH: index = 0x6; break;
    case WORLDMAP_CABBAGE_CAVERN_CENTER: index = 0x5; break;
    case WORLDMAP_RAINBOW_ROUTE_WEST: index = 0x9; break;
    case WORLDMAP_CARROT_CASTLE: index = 0xa; break;
    case WORLDMAP_RAINBOW_ROUTE_NORTH: index = 0xd; break;
    case WORLDMAP_MUSTARD_MOUNTAIN: index = 0xf; break;
    case WORLDMAP_CABBAGE_CAVERN_WEST: index = 0x7; break;
    case WORLDMAP_RADISH_RUINS: index = 0x8; break;
    case WORLDMAP_PEPPERMINT_PALACE_EAST: index = 0xb; break;
    case WORLDMAP_PEPPERMINT_PALACE_WEST: index = 0xc; break;
    case WORLDMAP_CABBAGE_CAVERN_EAST: index = 0x3; break;
    case WORLDMAP_OLIVE_OCEAN: index = 0x4; break;
    case WORLDMAP_CANDY_CONSTELLATION: index = 0xe; break;
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

    MapKirbySpriteCalls(worldmap, 0);
    MapKirbySpriteCalls(worldmap, 1);
    MapKirbySpriteCalls(worldmap, 2);
    MapKirbySpriteCalls(worldmap, 3);

    if (worldmap->unlockCounter == 120) {
        sub_08124EC8();
    }

    if (worldmap->unlockCounter > 150) {
        TaskDestroy(worldmap->worldMapLineTask);
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

void __attribute__((unused)) sub_081263BC(u16 animId, u8 variant, u8 palId) {
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
    struct WorldMapLine* worldMapLine = TaskGetStructPtr(gCurTask);

    gCurTask->main = WorldMapLineDrawing;
    sub_08155128(&worldMapLine->unlockedDoor);
    sub_08155128(&worldMapLine->dest);
    sub_081564D8(&worldMapLine->unlockedDoor);
    sub_081564D8(&worldMapLine->dest);
}

static void WorldMapToNextMenu(void) {
    struct WorldMap* worldmap = TaskGetStructPtr(gCurTask);
    if (!sub_0812A304()) {
        if (worldmap->nextMenuId == 0x01) {
            sub_08124430();
        }
        else if (worldmap->nextMenuId == 0x04) {
            sub_081278D4();
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
        CpuFill16(0, (void*)(0x0600c000 + (dots[dotnum].tilemapIndex << 1)), dots[dotnum].length << 1);
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

static void WorldMapSetTileDoorVisited(u32 doorId) {
    u16 doorTilemapOffset = gWorldMapDoorTilemapOffsets[doorId];
    CpuFill16_2(0x5, (u16*)0x0600c000 + doorTilemapOffset, 0x2);
}

static void WorldMapSetTileDoorUnvisited(u32 doorId) {
    u16 doorTilemapOffset = gWorldMapDoorTilemapOffsets[doorId];
    CpuFill16_2(0x6, (u16*)0x0600c000 + doorTilemapOffset, 0x2);
}

static void WorldMapToGame(void) {
    struct WorldMap* worldmap = TaskGetStructPtr(gCurTask);

    if (worldmap->closeCounter++ > 0x12) {
        TaskDestroy(gUnk_0203ACC0[gUnk_0203AD3C].unk0);
        TaskDestroy(gCurTask);
        sub_08039670();
    }
    WorldMapDrawKirbys(worldmap);
}
