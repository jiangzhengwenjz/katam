#ifndef GUARD_PAUSE_WORLD_MAP_H
#define GUARD_PAUSE_WORLD_MAP_H

#include "constants/languages.h"
#include "constants/pause_menu.h"
#include "data.h"
#include "global.h"
#include "task.h"

#define MapKirbySpriteCalls(worldMap, kirbyId)                                            \
    ({                                                                                    \
        struct MapKirbySprite* _mapKirbySprite = (worldMap)->mapKirbySprites + (kirbyId); \
        if (!(_mapKirbySprite->flags & 0x0001)) {                                         \
            sub_08155128(&_mapKirbySprite->kirby);                                        \
            sub_081564D8(&_mapKirbySprite->kirby);                                        \
            if (!(_mapKirbySprite->flags & 0x0002)) {                                     \
                sub_08155128(&_mapKirbySprite->abilityAccessory);                         \
                sub_081564D8(&_mapKirbySprite->abilityAccessory);                         \
            }                                                                             \
        }                                                                                 \
    })

struct MapKirbySprite {
    /* 0x00 */ struct Sprite kirby;
    /* 0x28 */ struct Sprite abilityAccessory;
    /* 0x50 */ u16 flags;  // bit0: drawNoSprite, bit1: drawNoAccessory
    /* 0x52 */ u16 filler52;
}; /* size = 0x54 */

struct WorldMap {
    /* 0x000 */ struct Background bg;
    /* 0x040 */ struct MapKirbySprite mapKirbySprites[4];
    /* 0x190 */ u8 filler190[0x78];
    /* 0x208 */ u16 unk208;
    /* 0x20A */ u16 unk20A;
    /* 0x20C */ s8 unlockedDoorId;  // According to enum WorldMapDoor
    /* 0x20D */ u8 filler20D;
    /* 0x20E */ s16 unlockCounter;
    /* 0x210 */ u8 nextMenuId;  // 0x01 if pause_help::sub_08124430 is following and 0x04 if
                                // pause_area_map::sub_081278D4 should be following
    /* 0x211 */ s8 closeCounter;
    /* 0x212 */ u16 filler212;
    /* 0x214 */ struct Task* worldMapLineTask;
}; /* size = 0x218 */

// Some kind of kirby-player struct
struct Unk_0203ACC0 {
    /* 0x00 */ struct Task* unk0;
    /* 0x04 */ u32 unk4;
    /* 0x08 */ u16 unk8;
    /* 0x0A */ u16 unkA;
    /* 0x0C */ u8 unkC;
    /* 0x0D */ s8 unkD;  // 0x01 for help menue, 0x02 for world map, 0x04 for area map
                         // Retained when quitting the menue, so that the same menue will be launched when pressing START again
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u16 unk10;
    /* 0x12 */ u8 unk12;
    /* 0x13 */ s8 unk13;
}; /* size = 0x14 */

// TODO: Probably array of Unk_02021590
struct Unk_08363748 {
    /* 0x00 */ u16 unk0;  // animId
    /* 0x02 */ u8 unk2;   // variant
    /* 0x03 */ u8 filler3[0x25];
    /* 0x28 */ u16 unk28;  // animId
    /* 0x2A */ u8 unk2A;   // variant
    /* 0x2B */ u8 filler2B;
    /* 0x2C */ u16 unk2C;  // animId
    /* 0x2E */ u8 unk2E;   // variant
    /* 0x2F */ u8 filler2F;
    /* 0x30 */ u16 unk30;  // animId
    /* 0x32 */ u8 unk32;   // variant
    /* 0x33 */ u8 filler33;
    /* 0x34 */ u16 unk34;  // animId
    /* 0x36 */ u8 unk36;   // variant
    /* 0x37 */ u8 filler37;
}; /* size = 0x38 */

struct WorldMapDotCoor {
    /* 0x0 */ u8 x;
    /* 0x1 */ u8 y;
    /* 0x2 */ u16 filler2;
}; /* size = 0x4 */

struct WorldMapLine {
    /* 0x00 */ struct Sprite unlockedDoor;
    /* 0x28 */ struct Sprite dest;
    /* 0x50 */ struct Sprite dot;
    /* 0x78 */ const struct WorldMapDotCoor* dotCoors;
    /* 0x7C */ s8 unlockedDoorId;
    /* 0x7D */ s8 dotCounter;
    /* 0x7E */ u8 frameCounter;
    /* 0x7F */ u8 flags;  // bit 0: isCentralHallDest, bit 1: isLineDrawCompleted
}; /* size = 0x80 */

extern struct Unk_0203ACC0 gUnk_0203ACC0[];  // Most likely with 4 entries per player

extern const u32 gWorldMapBgTileset[];
extern const struct Unk_08363748 gUnk_08363748[NUM_LANGUAGES];

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
