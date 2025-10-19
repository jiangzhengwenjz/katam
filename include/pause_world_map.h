#ifndef GUARD_PAUSE_WORLD_MAP_H
#define GUARD_PAUSE_WORLD_MAP_H

#include "data.h"
#include "global.h"

/*
 * Enumerates doors on the world map.
 * It is used as index into arrays and must thus remain contiguous.
 */
enum WorldMapDoor {
    WORLDMAP_NO_UNLOCK,
    WORLDMAP_MOONLIGHT_MANSION,
    WORLDMAP_RAINBOW_ROUTE_EAST,
    WORLDMAP_RAINBOW_ROUTE_SOUTH,
    WORLDMAP_CABBAGE_CAVERN_CENTER,
    WORLDMAP_RAINBOW_ROUTE_WEST,
    WORLDMAP_CARROT_CASTLE,
    WORLDMAP_RAINBOW_ROUTE_NORTH,
    WORLDMAP_MUSTARD_MOUNTAIN,
    WORLDMAP_CABBAGE_CAVERN_WEST,
    WORLDMAP_RADISH_RUINS,
    WORLDMAP_PEPPERMINT_PALACE_EAST,
    WORLDMAP_PEPPERMINT_PALACE_WEST,
    WORLDMAP_CABBAGE_CAVERN_EAST,
    WORLDMAP_OLIVE_OCEAN,
    WORLDMAP_CANDY_CONSTELLATION,
    NUM_WORLDMAP_DOORS,
};

void CreateWorldMap(u32);

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

#endif
