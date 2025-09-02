#ifndef GUARD_PAUSE_WORLD_MAP_H
#define GUARD_PAUSE_WORLD_MAP_H

#include "constants/languages.h"
#include "data.h"
#include "global.h"
#include "task.h"

#define MapKirbySpriteCalls(worldMap, kirbyId)                                \
    ({                                                                        \
        struct MapKirbySprite* _r4 = (worldMap)->mapKirbySprites + (kirbyId); \
        if (!(_r4->unk50 & 0x0001)) {                                         \
            sub_08155128(&_r4->unk0);                                         \
            sub_081564D8(&_r4->unk0);                                         \
            if (!(_r4->unk50 & 0x0002)) {                                     \
                sub_08155128(&_r4->unk28);                                    \
                sub_081564D8(&_r4->unk28);                                    \
            }                                                                 \
        }                                                                     \
    })

struct MapKirbySprite {
    /* 0x00 */ struct Sprite unk0;
    /* 0x28 */ struct Sprite unk28;
    /* 0x50 */ u16 unk50;
    /* 0x52 */ u16 filler52;
}; /* size = 0x54 */

struct WorldMap {
    /* 0x000 */ struct Background bg;
    /* 0x040 */ struct MapKirbySprite mapKirbySprites[4];
    /* 0x190 */ u8 filler190[0x78];
    /* 0x208 */ u16 unk208;
    /* 0x20A */ u16 unk20A;
    /* 0x20C */ s8 unlockedDoorId;  // According to WORLDMAP enum in constants/pause_menu.h
    /* 0x20D */ u8 unk20D;
    /* 0x20E */ s16 counter;
    /* 0x210 */ u8 nextMenuId;  // 0x01 if pause_help::sub_08124430 is following and 0x04 if
                                // pause_area_map::sub_081278D4 should be following
    /* 0x211 */ s8 unk211;
    /* 0x212 */ u16 filler212;
    /* 0x214 */ struct Task* unk214;
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

// Perhaps struct code_08124BE0.c::Unk_08359C48
struct Unk_0812F1C_78 {
    /* 0x0 */ u8 unk0;  // x
    /* 0x1 */ u8 unk1;  // y
    /* 0x2 */ u16 filler2;
}; /* size = 0x4 */

struct Unk_08125F1C {
    /* 0x00 */ struct Sprite unk0;
    /* 0x28 */ struct Sprite unk28;
    /* 0x50 */ struct Sprite unk50;
    /* 0x78 */ const struct Unk_0812F1C_78* unk78;
    /* 0x7C */ s8 unk7C;
    /* 0x7D */ s8 unk7D;  // type of counter, see sub_081254A8
    /* 0x7E */ u8 frameCounter;
    /* 0x7F */ u8 unk7F;
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

void sub_081264B8(void);
void sub_08126504(void);

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
