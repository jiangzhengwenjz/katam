#include "pause_area_map.h"
#include "bg.h"
#include "constants/languages.h"
#include "functions.h"
#include "kirby.h"
#include "palette.h"
#include "pause_fade.h"
#include "pause_help.h"
#include "pause_world_map.h"
#include "subgames.h"
#include "treasures.h"

enum AreaMapRoomType {
    AREAMAP_ROOM_NORMAL,
    AREAMAP_ROOM_BIG,
    AREAMAP_ROOM_STAR,
};

enum AreaMapVisibility {
    AREAMAP_UNVISITED,
    AREAMAP_NO_MAP,
    AREAMAP_FOUND_MAP
};

enum MapDisableUI {
    DISABLE_WORLDMAP_B,
    DISABLE_AREAMAP_A,
    DISABLE_AREAMAP_B,
    DISABLE_AREAMAP_L,
    DISABLE_AREAMAP_R,
    NUM_DISABLE_MAP_UI,
};

enum AreaMapRoomCompletion {
    AREAMAP_ROOM_UNVISITED,
    AREAMAP_ROOM_VISITED,
    AREAMAP_ROOM_COMPLETED,
    NUM_AREAMAP_ROOM_COMPLETION,
};

enum AreaMapRoomInfoOffsets {
    AREAMAP_ROOMINFO_OFFSET_TUTORIAL = 0x0,
    AREAMAP_ROOMINFO_OFFSET_RAINBOW_ROUTE = 0x0,
    AREAMAP_ROOMINFO_OFFSET_MOONLIGHT_MANSION = 0x33,
    AREAMAP_ROOMINFO_OFFSET_CABBAGE_CAVERN = 0x4d,
    AREAMAP_ROOMINFO_OFFSET_MUSTARD_MOUNTAIN = 0x62,
    AREAMAP_ROOMINFO_OFFSET_CARROT_CASTLE = 0x7b,
    AREAMAP_ROOMINFO_OFFSET_OLIVE_OCEAN = 0x92,
    AREAMAP_ROOMINFO_OFFSET_PEPPERMINT_PALACE = 0xaf,
    AREAMAP_ROOMINFO_OFFSET_RADISH_RUINS = 0xce,
    AREAMAP_ROOMINFO_OFFSET_CANDY_CONSTELLATION = 0xeb,
    AREAMAP_ROOMINFO_OFFSET_DIMENSION_MIRROR = 0x107,
    NUM_AREAMAP_ROOMINFO_OFFSETS = 0x107,
};

struct AreaMapArrow {
    /* 0x00 */ struct Sprite sprite;
    /* 0x28 */ u16 unk28;  // Q_12_4 possible
    /* 0x2A */ u16 unk2A;  // Q_12_4 possible
    /* 0x2C */ u16 unk2C;
    /* 0x2E */ u16 unk2E;
}; /* size = 0x30 */

struct AreaMapSprite {
    /* 0x00 */ struct Sprite sprite;
    /* 0x28 */ u8 areaId;  // According to enum AreaId
    /* 0x29 */ u8 filler29;
    /* 0x2A */ u16 filler2A;
    /* 0x2C */ s32 globalX;
    /* 0x30 */ s32 globalY;
}; /* size = 0x34 */

struct AreaMapCamera {
    /* 0x00 */ u16 unk0;
    /* 0x02 */ u16 unk2;
    /* 0x04 */ u16 zoomEffective;
    /* 0x06 */ u8 areaId;  // According to enum AreaId
    /* 0x07 */ s8 doZoom;  // 1: zoom in, -1: zoom out, 0: zoom finished
    /* 0x08 */ s32 x;
    /* 0x0C */ s32 y;
    /* 0x10 */ u16 flags;              // bit0: doScroll
    /* 0x12 */ u16 zoomUnlockedAreas;  // Zoom in areas where the map has already been found
}; /* size = 0x14 */

struct PACKED AreaMapPalettePulseHeader {
    /* 0x00 */ u16 paletteOffset;  // in bytes
    /* 0x02 */ u16 stateSize;
    /* 0x04 */ u16 stateCount;
}; /* size = 0x6 */

struct AreaMapPalettePulse {
    /* 0x00 */ struct AreaMapPalettePulseHeader header;
    /* 0x08 */ const u8* states;
    /* 0x0C */ u16 stateIdx;
    /* 0x0E */ s16 waitCounter;
}; /* size = 0x10 */

/*
 * Both struct AreaMapPalettePulseStateRoom and struct AreaMapPalettePulseStatePath share the same semantics:
 * timer indicates the time to wait before the next palette swap shall occur.
 * colors are palette entries to be loaded according to the header.
 */
struct PACKED AreaMapPalettePulseStateRoom {
    /* 0x00 */ u16 timer;
    /* 0x02 */ u16 colors[5];
}; /* size = 0xC */

struct PACKED AreaMapPalettePulseStatePath {
    /* 0x00 */ u16 timer;
    /* 0x02 */ u16 colors[4];
}; /* size = 0xA */

struct AreaMapPalettePulseStates {
    /* 0x00 */ struct AreaMapPalettePulseHeader roomHeader;
    /* 0x06 */ struct AreaMapPalettePulseStateRoom roomStates[8];
    /* 0x66 */ struct AreaMapPalettePulseHeader pathHeader;
    /* 0x6C */ struct AreaMapPalettePulseStatePath pathStates[12];
}; /* size = 0xE4 */

struct AreaMapRoomInfo {
    /* 0x00 */ u16 roomId;
    /* 0x02 */ u8 areaId;  // According to enum AreaId
    /* 0x03 */ u8 type;    // According to enum AreaMapRoomType
    /* 0x04 */ u8 tileStartColumn;
    /* 0x05 */ u8 tileStartRow;
}; /* size = 0x8 */

struct AreaMap {
    /* 0x000 */ struct Background areaBg;
    /* 0x040 */ u32 arrowPulseCounter;
    /* 0x044 */ u16 nextAreaMapCounter;
    /* 0x046 */ s8 toGameCounter;
    /* 0x047 */ s8 gotoNextAreaMap;               // 1: Right/Ascend, -1: Left/Descend, 0: Stay
    /* 0x048 */ s8 visibility[NUM_AREA_IDS - 1];  // According to enum AreaMapVisibility
    /* 0x052 */ u8 filler52[0x6];
    /* 0x058 */ enum PauseMenuId nextMenuId;
    /* 0x05C */ s16 shardRotationIdx;
    /* 0x05E */ s16 shardRotation;
    /* 0x060 */ struct AreaMapArrow arrows[4];
    /* 0x120 */ struct AreaMapSprite kirbySprites[4];
    /* 0x1F0 */ struct AreaMapSprite abilityAccessories[4];
    /* 0x2C0 */ struct AreaMapSprite textLabels[0x14];
    /* 0x6D0 */ const struct AreaMapRoomInfo* roomInfos[4];
    /* 0x6E0 */ struct AreaMapCamera cameraBg2;
    /* 0x6F4 */ struct AreaMapPalettePulse palettePulse[2];
}; /* size = 0x714 */

struct Unk_08361A7C {
    /* 0x00 */ u8 filler0;
    /* 0x01 */ u8 filler1;
    /* 0x02 */ u8 filler2;
    /* 0x03 */ u8 unk3;
    /* 0x04 */ s32 unk4;
    /* 0x08 */ s32 unk8;
}; /* size = 0xC */

extern const u16 gAreaMapRoomsPalette[2][0x40];
extern const u32 gAreaMapRoomsTileset[0x1000];
extern const u32 gAreaMapRoomsTilemapOffsets[NUM_AREA_IDS];

/*
 * Every tilemap for each area (as accessed by adding `gAreaMapRoomsTilemapOffsets` and RL-decompressing from there)
 * holds entries for paths and rooms as if all were unvisited.
 * These entries are then later overriden in AreaMapRoomsOverwriteTilemap().
 */
extern const u8 gAreaMapRoomsTilemaps[] ALIGNED(4);

static const u16 sAreaMapPalettePulseOffsets[] = {
    offsetof(struct AreaMapPalettePulseStates, roomHeader) / sizeof(u16),
    offsetof(struct AreaMapPalettePulseStates, pathHeader) / sizeof(u16),
};

/*
 * Headers are copied into `AreaMapPalettePulse::header`, states are pointed to by `AreaMapPalettePulse::states`.
 * It's expected that the state structs always consist of u16 entries.
 */
static const struct AreaMapPalettePulseStates sAreaMapPalettePulseStates =
    {
        .roomHeader =
            {
                .paletteOffset = 0x04,
                .stateSize = sizeof(sAreaMapPalettePulseStates.roomStates[0]),
                .stateCount = ARRAY_COUNT(sAreaMapPalettePulseStates.roomStates),
            },
        .roomStates =
            {
                {.timer = 12, .colors = {RGB(19, 6, 0), RGB(24, 11, 0), RGB(30, 15, 0), RGB(30, 23, 0), RGB(31, 31, 0)}},
                {.timer = 6, .colors = {RGB(21, 8, 0), RGB(27, 12, 0), RGB(30, 19, 0), RGB(31, 25, 0), RGB(31, 31, 17)}},
                {.timer = 5, .colors = {RGB(24, 11, 0), RGB(30, 15, 0), RGB(30, 23, 0), RGB_YELLOW, RGB(31, 31, 22)}},
                {.timer = 4, .colors = {RGB(27, 12, 0), RGB(30, 19, 0), RGB(31, 25, 0), RGB(31, 31, 17), RGB(31, 31, 25)}},
                {.timer = 4, .colors = {RGB(30, 15, 0), RGB(30, 23, 0), RGB_YELLOW, RGB(31, 31, 22), RGB(31, 31, 27)}},
                {.timer = 4, .colors = {RGB(27, 12, 0), RGB(30, 19, 0), RGB(31, 25, 0), RGB(31, 31, 17), RGB(31, 31, 25)}},
                {.timer = 5, .colors = {RGB(24, 11, 0), RGB(30, 15, 0), RGB(30, 23, 0), RGB_YELLOW, RGB(31, 31, 22)}},
                {.timer = 6, .colors = {RGB(21, 8, 0), RGB(27, 12, 0), RGB(30, 19, 0), RGB(31, 25, 0), RGB(31, 31, 17)}},
            },
        .pathHeader =
            {
                .paletteOffset = 0x24,
                .stateSize = sizeof(sAreaMapPalettePulseStates.pathStates[0]),
                .stateCount = ARRAY_COUNT(sAreaMapPalettePulseStates.pathStates),
            },
        .pathStates =
            {
                {.timer = 8, .colors = {RGB(3, 0, 22), RGB(18, 13, 31), RGB(22, 20, 31), RGB(26, 26, 31)}},
                {.timer = 6, .colors = {RGB(7, 0, 19), RGB(20, 13, 31), RGB(24, 19, 30), RGB(27, 26, 30)}},
                {.timer = 4, .colors = {RGB(10, 0, 17), RGB(22, 13, 30), RGB(25, 19, 29), RGB(28, 26, 29)}},
                {.timer = 2, .colors = {RGB(14, 1, 15), RGB(25, 13, 29), RGB(27, 19, 29), RGB(29, 26, 28)}},
                {.timer = 4, .colors = {RGB(18, 1, 13), RGB(27, 13, 28), RGB(28, 19, 28), RGB(30, 25, 27)}},
                {.timer = 6, .colors = {RGB(22, 1, 11), RGB(29, 13, 27), RGB(30, 19, 27), RGB(31, 25, 26)}},
                {.timer = 8, .colors = {RGB(26, 2, 9), RGB(31, 14, 27), RGB(31, 19, 26), RGB(31, 25, 25)}},
                {.timer = 6, .colors = {RGB(22, 1, 11), RGB(29, 13, 27), RGB(30, 19, 27), RGB(31, 25, 26)}},
                {.timer = 4, .colors = {RGB(18, 1, 13), RGB(27, 13, 28), RGB(28, 19, 28), RGB(30, 25, 27)}},
                {.timer = 2, .colors = {RGB(14, 1, 15), RGB(25, 13, 29), RGB(27, 19, 29), RGB(29, 26, 28)}},
                {.timer = 4, .colors = {RGB(10, 0, 17), RGB(22, 13, 30), RGB(25, 19, 29), RGB(28, 26, 29)}},
                {.timer = 6, .colors = {RGB(7, 0, 19), RGB(20, 13, 31), RGB(24, 19, 30), RGB(27, 26, 30)}},
            },
};

static const u16 sAreaMapRoomInfoOffset[NUM_AREA_IDS] = {
    [AREA_TUTORIAL] = AREAMAP_ROOMINFO_OFFSET_TUTORIAL,
    [AREA_RAINBOW_ROUTE] = AREAMAP_ROOMINFO_OFFSET_RAINBOW_ROUTE,
    [AREA_MOONLIGHT_MANSION] = AREAMAP_ROOMINFO_OFFSET_MOONLIGHT_MANSION,
    [AREA_CABBAGE_CAVERN] = AREAMAP_ROOMINFO_OFFSET_CABBAGE_CAVERN,
    [AREA_MUSTARD_MOUNTAIN] = AREAMAP_ROOMINFO_OFFSET_MUSTARD_MOUNTAIN,
    [AREA_CARROT_CASTLE] = AREAMAP_ROOMINFO_OFFSET_CARROT_CASTLE,
    [AREA_OLIVE_OCEAN] = AREAMAP_ROOMINFO_OFFSET_OLIVE_OCEAN,
    [AREA_PEPPERMINT_PALACE] = AREAMAP_ROOMINFO_OFFSET_PEPPERMINT_PALACE,
    [AREA_RADISH_RUINS] = AREAMAP_ROOMINFO_OFFSET_RADISH_RUINS,
    [AREA_CANDY_CONSTELLATION] = AREAMAP_ROOMINFO_OFFSET_CANDY_CONSTELLATION,
    [AREA_DIMENSION_MIRROR] = AREAMAP_ROOMINFO_OFFSET_DIMENSION_MIRROR,
};

static const u8 sAreaMapRoomInfoLength[NUM_AREA_IDS] = {
    [AREA_TUTORIAL] = AREAMAP_ROOMINFO_OFFSET_RAINBOW_ROUTE - AREAMAP_ROOMINFO_OFFSET_TUTORIAL,
    [AREA_RAINBOW_ROUTE] = AREAMAP_ROOMINFO_OFFSET_MOONLIGHT_MANSION - AREAMAP_ROOMINFO_OFFSET_RAINBOW_ROUTE,
    [AREA_MOONLIGHT_MANSION] = AREAMAP_ROOMINFO_OFFSET_CABBAGE_CAVERN - AREAMAP_ROOMINFO_OFFSET_MOONLIGHT_MANSION,
    [AREA_CABBAGE_CAVERN] = AREAMAP_ROOMINFO_OFFSET_MUSTARD_MOUNTAIN - AREAMAP_ROOMINFO_OFFSET_CABBAGE_CAVERN,
    [AREA_MUSTARD_MOUNTAIN] = AREAMAP_ROOMINFO_OFFSET_CARROT_CASTLE - AREAMAP_ROOMINFO_OFFSET_MUSTARD_MOUNTAIN,
    [AREA_CARROT_CASTLE] = AREAMAP_ROOMINFO_OFFSET_OLIVE_OCEAN - AREAMAP_ROOMINFO_OFFSET_CARROT_CASTLE,
    [AREA_OLIVE_OCEAN] = AREAMAP_ROOMINFO_OFFSET_PEPPERMINT_PALACE - AREAMAP_ROOMINFO_OFFSET_OLIVE_OCEAN,
    [AREA_PEPPERMINT_PALACE] = AREAMAP_ROOMINFO_OFFSET_RADISH_RUINS - AREAMAP_ROOMINFO_OFFSET_PEPPERMINT_PALACE,
    [AREA_RADISH_RUINS] = AREAMAP_ROOMINFO_OFFSET_CANDY_CONSTELLATION - AREAMAP_ROOMINFO_OFFSET_RADISH_RUINS,
    [AREA_CANDY_CONSTELLATION] = AREAMAP_ROOMINFO_OFFSET_DIMENSION_MIRROR - AREAMAP_ROOMINFO_OFFSET_CANDY_CONSTELLATION,
    [AREA_DIMENSION_MIRROR] = NUM_AREAMAP_ROOMINFO_OFFSETS - AREAMAP_ROOMINFO_OFFSET_DIMENSION_MIRROR,
};

/*
 * Screen size bounds per area in tiles.
 * Indices: 0: minX, 1: minY, 2: maxX, 3: maxY
 */
static const u8 sAreaMapScreenSizes[NUM_AREA_IDS][4] = {
    [AREA_TUTORIAL] = {0, 0, 28, 18},          [AREA_RAINBOW_ROUTE] = {0, 0, 70, 40},
    [AREA_MOONLIGHT_MANSION] = {0, 0, 60, 40}, [AREA_CABBAGE_CAVERN] = {0, 0, 58, 30},
    [AREA_MUSTARD_MOUNTAIN] = {0, 0, 54, 36},  [AREA_CARROT_CASTLE] = {0, 0, 62, 30},
    [AREA_OLIVE_OCEAN] = {0, 0, 60, 28},       [AREA_PEPPERMINT_PALACE] = {0, 0, 64, 36},
    [AREA_RADISH_RUINS] = {0, 0, 58, 26},      [AREA_CANDY_CONSTELLATION] = {0, 0, 60, 40},
    [AREA_DIMENSION_MIRROR] = {0, 0, 28, 18},
};

/*
 * It's expected that this stays partitioned into areas, as specified by `sAreaMapRoomInfoOffset` and `sAreaMapRoomInfoLength`.
 */
static const struct AreaMapRoomInfo sAreaMapRoomInfos[] =
    {
        [AREAMAP_ROOMINFO_OFFSET_RAINBOW_ROUTE] =
            {
                .roomId = 0x7e,
                .areaId = AREA_RAINBOW_ROUTE,
                .type = AREAMAP_ROOM_NORMAL,
                .tileStartColumn = 26,
                .tileStartRow = 24,
            },
        {
            .roomId = 0x22d,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 57,
            .tileStartRow = 33,
        },
        {
            .roomId = 0xbe,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 53,
            .tileStartRow = 23,
        },
        {
            .roomId = 0xc2,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 25,
            .tileStartRow = 33,
        },
        {
            .roomId = 0x321,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 29,
            .tileStartRow = 17,
        },
        {
            .roomId = 0xb0,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 1,
            .tileStartRow = 33,
        },
        {
            .roomId = 0xc0,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 9,
            .tileStartRow = 17,
        },
        {
            .roomId = 0x24e,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 33,
            .tileStartRow = 3,
        },
        {
            .roomId = 0xb1,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 3,
            .tileStartRow = 3,
        },
        {
            .roomId = 0x217,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x21a,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x218,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 40,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x219,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 44,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x21e,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x21f,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 60,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x8d,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 64,
            .tileStartRow = 16,
        },
        {
            .roomId = 0x8f,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 64,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x22c,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 58,
            .tileStartRow = 30,
        },
        {
            .roomId = 0x22b,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 54,
            .tileStartRow = 30,
        },
        {
            .roomId = 0x22a,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 26,
        },
        {
            .roomId = 0x6c,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 22,
        },
        {
            .roomId = 0x8c,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 22,
        },
        {
            .roomId = 0x67,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x68,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x6b,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x6a,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 38,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x65,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 34,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x6e,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 26,
        },
        {
            .roomId = 0x1f7,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 30,
        },
        {
            .roomId = 0x1fb,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 38,
            .tileStartRow = 34,
        },
        {
            .roomId = 0x89,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 32,
            .tileStartRow = 34,
        },
        {
            .roomId = 0x88,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 26,
            .tileStartRow = 28,
        },
        {
            .roomId = 0x7f,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 34,
        },
        {
            .roomId = 0x1f8,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 18,
            .tileStartRow = 30,
        },
        {
            .roomId = 0xae,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 14,
            .tileStartRow = 30,
        },
        {
            .roomId = 0x77,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 14,
            .tileStartRow = 26,
        },
        {
            .roomId = 0x76,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 10,
            .tileStartRow = 26,
        },
        {
            .roomId = 0xad,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 10,
            .tileStartRow = 30,
        },
        {
            .roomId = 0xaf,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 6,
            .tileStartRow = 34,
        },
        {
            .roomId = 0xac,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 6,
            .tileStartRow = 30,
        },
        {
            .roomId = 0xab,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 6,
            .tileStartRow = 26,
        },
        {
            .roomId = 0x75,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 6,
            .tileStartRow = 22,
        },
        {
            .roomId = 0x73,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 10,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x8b,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 14,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x216,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x23a,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 26,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x23b,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x214,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 18,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x8a,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 14,
            .tileStartRow = 4,
        },
        {
            .roomId = 0xb2,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 10,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x8e,
            .areaId = AREA_RAINBOW_ROUTE,
            .type = AREAMAP_ROOM_STAR,
            .tileStartColumn = 53,
            .tileStartRow = 17,
        },
        [AREAMAP_ROOMINFO_OFFSET_MOONLIGHT_MANSION] =
            {
                .roomId = 0x2bc,
                .areaId = AREA_MOONLIGHT_MANSION,
                .type = AREAMAP_ROOM_NORMAL,
                .tileStartColumn = 56,
                .tileStartRow = 32,
            },
        {
            .roomId = 0x90,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 6,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x93,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 18,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x92,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 12,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x91,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 6,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x95,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 24,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x2e4,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 36,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x2c4,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 36,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x2e7,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 36,
            .tileStartRow = 28,
        },
        {
            .roomId = 0xb4,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 36,
            .tileStartRow = 36,
        },
        {
            .roomId = 0x2c2,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 44,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x2be,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 44,
            .tileStartRow = 28,
        },
        {
            .roomId = 0x2e8,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 44,
            .tileStartRow = 32,
        },
        {
            .roomId = 0x2c5,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 28,
        },
        {
            .roomId = 0x2c3,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x2c0,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 52,
            .tileStartRow = 28,
        },
        {
            .roomId = 0x2c7,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 56,
            .tileStartRow = 28,
        },
        {
            .roomId = 0x2c8,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 52,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x2e5,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 56,
            .tileStartRow = 16,
        },
        {
            .roomId = 0x2e6,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 52,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x316,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 39,
            .tileStartRow = 19,
        },
        {
            .roomId = 0x2e9,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 43,
            .tileStartRow = 35,
        },
        {
            .roomId = 0x2c6,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 55,
            .tileStartRow = 35,
        },
        {
            .roomId = 0x2c1,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_STAR,
            .tileStartColumn = 51,
            .tileStartRow = 5,
        },
        {
            .roomId = 0xc3,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 29,
            .tileStartRow = 23,
        },
        {
            .roomId = 0x94,
            .areaId = AREA_MOONLIGHT_MANSION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 17,
            .tileStartRow = 23,
        },
        [AREAMAP_ROOMINFO_OFFSET_CABBAGE_CAVERN] =
            {
                .roomId = 0x1f4,
                .areaId = AREA_CABBAGE_CAVERN,
                .type = AREAMAP_ROOM_NORMAL,
                .tileStartColumn = 16,
                .tileStartRow = 22,
            },
        {
            .roomId = 0x1fc,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 10,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x210,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 10,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x20f,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 10,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x203,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 16,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x201,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 16,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x1fd,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 16,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x1fe,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x1f5,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x202,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 28,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x205,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 28,
            .tileStartRow = 16,
        },
        {
            .roomId = 0x212,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 16,
        },
        {
            .roomId = 0x20b,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 16,
        },
        {
            .roomId = 0x211,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x200,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x1ff,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x250,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 5,
            .tileStartRow = 13,
        },
        {
            .roomId = 0x204,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 15,
            .tileStartRow = 25,
        },
        {
            .roomId = 0x24f,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 33,
            .tileStartRow = 15,
        },
        {
            .roomId = 0x213,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 35,
            .tileStartRow = 3,
        },
        {
            .roomId = 0xbf,
            .areaId = AREA_CABBAGE_CAVERN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 53,
            .tileStartRow = 21,
        },
        [AREAMAP_ROOMINFO_OFFSET_MUSTARD_MOUNTAIN] =
            {
                .roomId = 0x138,
                .areaId = AREA_MUSTARD_MOUNTAIN,
                .type = AREAMAP_ROOM_NORMAL,
                .tileStartColumn = 0,
                .tileStartRow = 16,
            },
        {
            .roomId = 0x13d,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 6,
            .tileStartRow = 22,
        },
        {
            .roomId = 0x139,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 8,
            .tileStartRow = 16,
        },
        {
            .roomId = 0x145,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 2,
            .tileStartRow = 26,
        },
        {
            .roomId = 0x215,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 6,
            .tileStartRow = 30,
        },
        {
            .roomId = 0x130,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x143,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 14,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x13b,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 20,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x142,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 26,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x13c,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 32,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x134,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 36,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x141,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 36,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x222,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 44,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x221,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 44,
            .tileStartRow = 32,
        },
        {
            .roomId = 0x220,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 36,
            .tileStartRow = 32,
        },
        {
            .roomId = 0x21c,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 32,
        },
        {
            .roomId = 0x21d,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 28,
        },
        {
            .roomId = 0x21b,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 24,
            .tileStartRow = 32,
        },
        {
            .roomId = 0x144,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 13,
            .tileStartRow = 1,
        },
        {
            .roomId = 0x146,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 13,
            .tileStartRow = 15,
        },
        {
            .roomId = 0x136,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 13,
            .tileStartRow = 27,
        },
        {
            .roomId = 0x186,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 25,
            .tileStartRow = 23,
        },
        {
            .roomId = 0x223,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 49,
            .tileStartRow = 19,
        },
        {
            .roomId = 0x13e,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_STAR,
            .tileStartColumn = 5,
            .tileStartRow = 9,
        },
        {
            .roomId = 0x12c,
            .areaId = AREA_MUSTARD_MOUNTAIN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 14,
            .tileStartRow = 6,
        },
        [AREAMAP_ROOMINFO_OFFSET_CARROT_CASTLE] =
            {
                .roomId = 0x258,
                .areaId = AREA_CARROT_CASTLE,
                .type = AREAMAP_ROOM_NORMAL,
                .tileStartColumn = 8,
                .tileStartRow = 20,
            },
        {
            .roomId = 0x2cc,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 12,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x2da,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 20,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x2d0,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x2de,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x2dd,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 24,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x2cd,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 16,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x2e1,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 12,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x2e0,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 18,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x2df,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 24,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x2ca,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x2cf,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 36,
            .tileStartRow = 14,
        },
        {
            .roomId = 0xaa,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 40,
            .tileStartRow = 14,
        },
        {
            .roomId = 0xb5,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 40,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x7a,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x78,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 56,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x79,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 8,
        },
        {
            .roomId = 0xe2,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 44,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x2db,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_STAR,
            .tileStartColumn = 7,
            .tileStartRow = 3,
        },
        {
            .roomId = 0x2dc,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 7,
            .tileStartRow = 9,
        },
        {
            .roomId = 0x2e2,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 1,
            .tileStartRow = 19,
        },
        {
            .roomId = 0x2e3,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 17,
            .tileStartRow = 25,
        },
        {
            .roomId = 0xc1,
            .areaId = AREA_CARROT_CASTLE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 43,
            .tileStartRow = 13,
        },
        [AREAMAP_ROOMINFO_OFFSET_OLIVE_OCEAN] =
            {
                .roomId = 0x82,
                .areaId = AREA_OLIVE_OCEAN,
                .type = AREAMAP_ROOM_NORMAL,
                .tileStartColumn = 0,
                .tileStartRow = 2,
            },
        {
            .roomId = 0x83,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 4,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x33a,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 4,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x84,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 8,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x85,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 12,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x86,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 18,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x33b,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 12,
            .tileStartRow = 6,
        },
        {
            .roomId = 0x33c,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 16,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x337,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x338,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 4,
        },
        {
            .roomId = 0x33f,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 54,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x32e,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x33d,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 40,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x32b,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x33e,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x227,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 34,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x229,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 44,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x340,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x32a,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 20,
        },
        {
            .roomId = 0x322,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 34,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x333,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 44,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x335,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 24,
        },
        {
            .roomId = 0x336,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 55,
            .tileStartRow = 23,
        },
        {
            .roomId = 0x330,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 39,
            .tileStartRow = 23,
        },
        {
            .roomId = 0x32f,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 39,
            .tileStartRow = 13,
        },
        {
            .roomId = 0x37a,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 25,
            .tileStartRow = 9,
        },
        {
            .roomId = 0x339,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 53,
            .tileStartRow = 3,
        },
        {
            .roomId = 0x87,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 23,
            .tileStartRow = 1,
        },
        {
            .roomId = 0x320,
            .areaId = AREA_OLIVE_OCEAN,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 52,
            .tileStartRow = 24,
        },
        [AREAMAP_ROOMINFO_OFFSET_PEPPERMINT_PALACE] =
            {
                .roomId = 0xe0,
                .areaId = AREA_PEPPERMINT_PALACE,
                .type = AREAMAP_ROOM_BIG,
                .tileStartColumn = 9,
                .tileStartRow = 27,
            },
        {
            .roomId = 0xdb,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 1,
            .tileStartRow = 19,
        },
        {
            .roomId = 0xe6,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_STAR,
            .tileStartColumn = 55,
            .tileStartRow = 1,
        },
        {
            .roomId = 0xd6,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 59,
            .tileStartRow = 9,
        },
        {
            .roomId = 0xd1,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 53,
            .tileStartRow = 13,
        },
        {
            .roomId = 0x122,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 45,
            .tileStartRow = 17,
        },
        {
            .roomId = 0x123,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 35,
            .tileStartRow = 27,
        },
        {
            .roomId = 0xce,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 54,
            .tileStartRow = 10,
        },
        {
            .roomId = 0xe5,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 2,
        },
        {
            .roomId = 0xe4,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 6,
        },
        {
            .roomId = 0xcd,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 10,
        },
        {
            .roomId = 0xd2,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 14,
        },
        {
            .roomId = 0xca,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 28,
        },
        {
            .roomId = 0xd0,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 24,
        },
        {
            .roomId = 0xd3,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 32,
        },
        {
            .roomId = 0xde,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 28,
        },
        {
            .roomId = 0xe3,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 14,
        },
        {
            .roomId = 0xcb,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 10,
        },
        {
            .roomId = 0xcc,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 10,
        },
        {
            .roomId = 0xdc,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 38,
            .tileStartRow = 10,
        },
        {
            .roomId = 0xe1,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 16,
            .tileStartRow = 10,
        },
        {
            .roomId = 0xe8,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 32,
            .tileStartRow = 10,
        },
        {
            .roomId = 0xe7,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 32,
            .tileStartRow = 16,
        },
        {
            .roomId = 0xd7,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 32,
            .tileStartRow = 24,
        },
        {
            .roomId = 0xd4,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 26,
            .tileStartRow = 24,
        },
        {
            .roomId = 0xd8,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 20,
            .tileStartRow = 24,
        },
        {
            .roomId = 0xdf,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 16,
            .tileStartRow = 28,
        },
        {
            .roomId = 0xd9,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 16,
            .tileStartRow = 24,
        },
        {
            .roomId = 0xdd,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 16,
            .tileStartRow = 20,
        },
        {
            .roomId = 0xda,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 10,
            .tileStartRow = 20,
        },
        {
            .roomId = 0xc8,
            .areaId = AREA_PEPPERMINT_PALACE,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 6,
            .tileStartRow = 20,
        },
        [AREAMAP_ROOMINFO_OFFSET_RADISH_RUINS] =
            {
                .roomId = 0x26e,
                .areaId = AREA_RADISH_RUINS,
                .type = AREAMAP_ROOM_BIG,
                .tileStartColumn = 47,
                .tileStartRow = 7,
            },
        {
            .roomId = 0x262,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 41,
            .tileStartRow = 21,
        },
        {
            .roomId = 0x2b2,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 33,
            .tileStartRow = 17,
        },
        {
            .roomId = 0x269,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 25,
            .tileStartRow = 5,
        },
        {
            .roomId = 0x20e,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 35,
            .tileStartRow = 1,
        },
        {
            .roomId = 0x81,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 1,
            .tileStartRow = 1,
        },
        {
            .roomId = 0x25b,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 38,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x26f,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x25c,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x25e,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 12,
        },
        {
            .roomId = 0x26c,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 56,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x26d,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 50,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x25d,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 46,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x259,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x263,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 38,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x264,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x261,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x266,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 18,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x26a,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 18,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x268,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 8,
        },
        {
            .roomId = 0x265,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x260,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 26,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x26b,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 26,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x20d,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x1f6,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 26,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x20c,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x71,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 18,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x66,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 14,
            .tileStartRow = 2,
        },
        {
            .roomId = 0x72,
            .areaId = AREA_RADISH_RUINS,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 10,
            .tileStartRow = 2,
        },
        [AREAMAP_ROOMINFO_OFFSET_CANDY_CONSTELLATION] =
            {
                .roomId = 0x199,
                .areaId = AREA_CANDY_CONSTELLATION,
                .type = AREAMAP_ROOM_NORMAL,
                .tileStartColumn = 0,
                .tileStartRow = 38,
            },
        {
            .roomId = 0x1a9,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 8,
            .tileStartRow = 34,
        },
        {
            .roomId = 0x1ab,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 8,
            .tileStartRow = 30,
        },
        {
            .roomId = 0x194,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 12,
            .tileStartRow = 30,
        },
        {
            .roomId = 0x197,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 18,
            .tileStartRow = 30,
        },
        {
            .roomId = 0x191,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 24,
            .tileStartRow = 30,
        },
        {
            .roomId = 0x198,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 32,
            .tileStartRow = 38,
        },
        {
            .roomId = 0x195,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 20,
            .tileStartRow = 22,
        },
        {
            .roomId = 0x19b,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 26,
            .tileStartRow = 22,
        },
        {
            .roomId = 0x1a2,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 26,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x19e,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 22,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x192,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 30,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x1a3,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 34,
            .tileStartRow = 18,
        },
        {
            .roomId = 0x1a8,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 14,
        },
        {
            .roomId = 0x1a6,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 42,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x19f,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 38,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x1a7,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 48,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x1a5,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 52,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x1a0,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 56,
            .tileStartRow = 10,
        },
        {
            .roomId = 0x19d,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 15,
            .tileStartRow = 13,
        },
        {
            .roomId = 0x193,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 11,
            .tileStartRow = 21,
        },
        {
            .roomId = 0x1ea,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 21,
            .tileStartRow = 25,
        },
        {
            .roomId = 0x196,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 21,
            .tileStartRow = 33,
        },
        {
            .roomId = 0x1aa,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 33,
            .tileStartRow = 23,
        },
        {
            .roomId = 0x1a4,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 39,
            .tileStartRow = 23,
        },
        {
            .roomId = 0x1a1,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_BIG,
            .tileStartColumn = 55,
            .tileStartRow = 1,
        },
        {
            .roomId = 0x19c,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_STAR,
            .tileStartColumn = 37,
            .tileStartRow = 17,
        },
        {
            .roomId = 0x190,
            .areaId = AREA_CANDY_CONSTELLATION,
            .type = AREAMAP_ROOM_NORMAL,
            .tileStartColumn = 56,
            .tileStartRow = 6,
        },
};

static const u16 sUnk_08361A58[NUM_AREA_IDS] = {
    [AREA_TUTORIAL] = 0,
    [AREA_RAINBOW_ROUTE] = 0,
    [AREA_MOONLIGHT_MANSION] = 0x11,
    [AREA_CABBAGE_CAVERN] = 0x19,
    [AREA_MUSTARD_MOUNTAIN] = 0x22,
    [AREA_CARROT_CASTLE] = 0x2c,
    [AREA_OLIVE_OCEAN] = 0x33,
    [AREA_PEPPERMINT_PALACE] = 0x39,
    [AREA_RADISH_RUINS] = 0x40,
    [AREA_CANDY_CONSTELLATION] = 0x46,
    [AREA_DIMENSION_MIRROR] = 0x4a,
};

static const u8 sAreaMapTextLabelsNum[NUM_AREA_IDS] = {
    [AREA_TUTORIAL] = 0,          [AREA_RAINBOW_ROUTE] = 17,      [AREA_MOONLIGHT_MANSION] = 8, [AREA_CABBAGE_CAVERN] = 9,
    [AREA_MUSTARD_MOUNTAIN] = 10, [AREA_CARROT_CASTLE] = 7,       [AREA_OLIVE_OCEAN] = 6,       [AREA_PEPPERMINT_PALACE] = 7,
    [AREA_RADISH_RUINS] = 6,      [AREA_CANDY_CONSTELLATION] = 4, [AREA_DIMENSION_MIRROR] = 0,
};

static const struct Unk_08361A7C sUnk_08361A7C[] = {
    {0xb1, 0x0, 0x1, 0x1, 0x28, 0x38},   {0x4e, 0x2, 0x1, 0x5, 0x118, 0x0},   {0x16, 0x2, 0x1, 0x5, 0x158, 0x10},
    {0x1a, 0x2, 0x1, 0x5, 0x1c0, 0x48},  {0x8f, 0x0, 0x1, 0x3, 0x230, 0xc8},  {0x2d, 0x2, 0x1, 0x1, 0x1d8, 0x128},
    {0xfb, 0x1, 0x1, 0x4, 0x138, 0x130}, {0xc2, 0x0, 0x1, 0x4, 0xd8, 0x140},  {0x7f, 0x0, 0x1, 0x4, 0xa0, 0x130},
    {0xad, 0x0, 0x1, 0x4, 0x58, 0x110},  {0xb0, 0x0, 0x1, 0x1, 0x18, 0x128},  {0x8d, 0x0, 0x1, 0x3, 0x230, 0x88},
    {0x8d, 0x0, 0x1, 0x5, 0x220, 0x70},  {0xc0, 0x0, 0x1, 0x6, 0x28, 0x98},   {0x75, 0x0, 0x1, 0x6, 0x10, 0xb8},
    {0xab, 0x0, 0x1, 0x6, 0x10, 0xd8},   {0x8e, 0x0, 0x1, 0x3, 0x1e8, 0x98},  {0x16, 0x3, 0x2, 0x2, 0x148, 0x80},
    {0xc1, 0x2, 0x2, 0xa, 0x1a8, 0x10},  {0xc6, 0x2, 0x2, 0x0, 0x1c8, 0x138}, {0xe9, 0x2, 0x2, 0x1, 0x168, 0x138},
    {0xb4, 0x0, 0x2, 0x7, 0x128, 0x140}, {0x91, 0x0, 0x2, 0x2, 0x10, 0xc8},   {0x90, 0x0, 0x2, 0x2, 0x10, 0x98},
    {0x94, 0x0, 0x2, 0x1, 0x98, 0xd8},   {0x50, 0x2, 0x3, 0x2, 0x8, 0x50},    {0xbf, 0x0, 0x3, 0x2, 0x1b8, 0x90},
    {0x0, 0x2, 0x3, 0x2, 0x188, 0x10},   {0xbf, 0x0, 0x3, 0x7, 0x1b8, 0xe0},  {0x4f, 0x2, 0x3, 0x2, 0x118, 0x60},
    {0x4, 0x2, 0x3, 0x0, 0x88, 0xe8},    {0xfd, 0x1, 0x3, 0x2, 0x88, 0x10},   {0x50, 0x2, 0x3, 0x9, 0x8, 0x78},
    {0x13, 0x2, 0x3, 0x1, 0x128, 0x38},  {0x23, 0x2, 0x4, 0x1, 0x198, 0xb8},  {0x86, 0x1, 0x4, 0x2, 0xb0, 0xf0},
    {0x21, 0x2, 0x4, 0x2, 0x168, 0x120}, {0x20, 0x2, 0x4, 0x2, 0x128, 0x120}, {0x1b, 0x2, 0x4, 0x2, 0xc8, 0x120},
    {0x36, 0x1, 0x4, 0x2, 0x78, 0x110},  {0x15, 0x2, 0x4, 0x2, 0x38, 0x110},  {0x46, 0x1, 0x4, 0x1, 0x78, 0x98},
    {0x3e, 0x1, 0x4, 0xa, 0x38, 0x30},   {0x44, 0x1, 0x4, 0x0, 0x78, 0x28},   {0x78, 0x0, 0x5, 0x2, 0x1f0, 0x78},
    {0xc1, 0x0, 0x5, 0x2, 0x168, 0xa0},  {0xb5, 0x0, 0x5, 0x9, 0x148, 0xe0},  {0xe2, 0x2, 0x5, 0x0, 0x18, 0xb8},
    {0xdb, 0x2, 0x5, 0x8, 0x48, 0x0},    {0x7a, 0x0, 0x5, 0x2, 0x198, 0x90},  {0xe2, 0x0, 0x5, 0x8, 0x168, 0x0},
    {0x82, 0x0, 0x6, 0x4, 0x8, 0x0},     {0x87, 0x0, 0x6, 0x1, 0xc8, 0x28},   {0x39, 0x3, 0x6, 0x1, 0x1b8, 0x38},
    {0x36, 0x3, 0x6, 0x0, 0x1c8, 0xd8},  {0x7a, 0x3, 0x6, 0x4, 0xd8, 0x80},   {0x38, 0x3, 0x6, 0x3, 0x188, 0x10},
    {0xdb, 0x0, 0x7, 0x0, 0x18, 0xb8},   {0xe0, 0x0, 0x7, 0x1, 0x58, 0xf8},   {0xd6, 0x0, 0x7, 0x1, 0x1e8, 0x68},
    {0xe6, 0x0, 0x7, 0xa, 0x1f8, 0x18},  {0xde, 0x0, 0x7, 0x6, 0x158, 0x100}, {0xd3, 0x0, 0x7, 0x6, 0x178, 0x120},
    {0x22, 0x1, 0x7, 0x2, 0x148, 0x98},  {0x81, 0x0, 0x8, 0x0, 0x18, 0x28},   {0xe, 0x2, 0x8, 0x1, 0x128, 0x28},
    {0x6e, 0x2, 0x8, 0x1, 0x188, 0x58},  {0x6b, 0x2, 0x8, 0x6, 0x100, 0x58},  {0x6c, 0x2, 0x8, 0x4, 0x1c8, 0xb0},
    {0xb2, 0x2, 0x8, 0x4, 0x118, 0xc0},  {0xa1, 0x1, 0x9, 0x0, 0x1c8, 0x28},  {0xa4, 0x1, 0x9, 0x1, 0x148, 0xd8},
    {0x9d, 0x1, 0x9, 0x1, 0x88, 0x88},   {0xea, 0x1, 0x9, 0x2, 0xe8, 0xd8},
};

static const u16 sMapUIPalette[] = {
    RGB(10, 20, 0), RGB_WHITE, RGB_BLACK, RGB(0, 10, 31), RGB(0, 20, 31), RGB(12, 12, 12), RGB(21, 21, 21), RGB_WHITE,
    RGB_WHITE,      RGB_WHITE, RGB_WHITE, RGB_WHITE,      RGB_WHITE,      RGB_WHITE,       RGB_WHITE,       RGB_WHITE,
};
static const u32 sAreaMapUITilemap[] = INCBIN_U32("graphics/pause_menu/map_ui/areamap_tilemap.bin.lz");
static const u32 sWorldMapUITilemap[] = INCBIN_U32("graphics/pause_menu/map_ui/worldmap_tilemap.bin.lz");
static const u32 sMapUITileset[] = INCBIN_U32("graphics/pause_menu/map_ui/tileset.4bpp.lz");

const u32 gAreaMapUIAreaTitleTilesetRainbowRoute[] = INCBIN_U32("graphics/pause_menu/map_ui/areatitle_tilesets/rainbow_route.4bpp.lz");
const u32 gAreaMapUIAreaTitleTilesetMoonlightMansion[] = INCBIN_U32("graphics/pause_menu/map_ui/areatitle_tilesets/moonlight_mansion.4bpp.lz");
const u32 gAreaMapUIAreaTitleTilesetCabbageCavern[] = INCBIN_U32("graphics/pause_menu/map_ui/areatitle_tilesets/cabbage_cavern.4bpp.lz");
const u32 gAreaMapUIAreaTitleTilesetMustardMountain[] = INCBIN_U32("graphics/pause_menu/map_ui/areatitle_tilesets/mustard_mountain.4bpp.lz");
const u32 gAreaMapUIAreaTitleTilesetCarrotCastle[] = INCBIN_U32("graphics/pause_menu/map_ui/areatitle_tilesets/carrot_castle.4bpp.lz");
const u32 gAreaMapUIAreaTitleTilesetOliveOcean[] = INCBIN_U32("graphics/pause_menu/map_ui/areatitle_tilesets/olive_ocean.4bpp.lz");
const u32 gAreaMapUIAreaTitleTilesetPeppermintPalace[] = INCBIN_U32("graphics/pause_menu/map_ui/areatitle_tilesets/peppermint_palace.4bpp.lz");
const u32 gAreaMapUIAreaTitleTilesetRadishRuins[] = INCBIN_U32("graphics/pause_menu/map_ui/areatitle_tilesets/radish_ruins.4bpp.lz");
const u32 gAreaMapUIAreaTitleTilesetCandyConstellation[] = INCBIN_U32("graphics/pause_menu/map_ui/areatitle_tilesets/candy_constellation.4bpp.lz");

/*
 * Tilemap entries for `sAreaMapRoomsTilemap` such that room tiles can be placed on the area map,
 * depending on its completion.
 */
static const u8 sAreaMapTilemapEntriesNormalRoom[NUM_AREAMAP_ROOM_COMPLETION][2][2] = {
    [AREAMAP_ROOM_UNVISITED] = {{0x09, 0x0a}, {0x0b, 0x0c}},
    [AREAMAP_ROOM_VISITED] = {{0x05, 0x06}, {0x07, 0x08}},
    [AREAMAP_ROOM_COMPLETED] = {{0x01, 0x02}, {0x03, 0x04}},
};

static const u8 sAreaMapTilemapEntriesBigRoom[NUM_AREAMAP_ROOM_COMPLETION][4][4] = {
    [AREAMAP_ROOM_UNVISITED] =
        {
            {0x30, 0x31, 0x32, 0x33},
            {0x34, 0x35, 0x36, 0x37},
            {0x38, 0x39, 0x3a, 0x3b},
            {0x3c, 0x3d, 0x3e, 0x3f},
        },
    [AREAMAP_ROOM_VISITED] =
        {
            {0x20, 0x21, 0x22, 0x23},
            {0x24, 0x25, 0x26, 0x27},
            {0x28, 0x29, 0x2a, 0x2b},
            {0x2c, 0x2d, 0x2e, 0x2f},
        },
    [AREAMAP_ROOM_COMPLETED] =
        {
            {0x10, 0x11, 0x12, 0x13},
            {0x14, 0x15, 0x16, 0x17},
            {0x18, 0x19, 0x1a, 0x1b},
            {0x1c, 0x1d, 0x1e, 0x1f},
        },
};

static const u8 sAreaMapTilemapEntriesStarRoom[NUM_AREAMAP_ROOM_COMPLETION][4][4] = {
    [AREAMAP_ROOM_UNVISITED] =
        {
            {0x60, 0x61, 0x62, 0x63},
            {0x64, 0x65, 0x66, 0x67},
            {0x68, 0x69, 0x6a, 0x6b},
            {0x6c, 0x6d, 0x6e, 0x6f},
        },
    [AREAMAP_ROOM_VISITED] =
        {
            {0x50, 0x51, 0x52, 0x53},
            {0x54, 0x55, 0x56, 0x57},
            {0x58, 0x59, 0x5a, 0x5b},
            {0x5c, 0x5d, 0x5e, 0x5f},
        },
    [AREAMAP_ROOM_COMPLETED] =
        {
            {0x40, 0x41, 0x42, 0x43},
            {0x44, 0x45, 0x46, 0x47},
            {0x48, 0x49, 0x4a, 0x4b},
            {0x4c, 0x4d, 0x4e, 0x4f},
        },
};

static const u8 sAreaMapTilemapEntriesMapRoom[4][4] = {
    {0x80, 0x81, 0x82, 0x83},
    {0x84, 0x85, 0x86, 0x87},
    {0x88, 0x89, 0x8a, 0x8b},
    {0x8c, 0x8d, 0x8e, 0x8f},
};

static const u8 sAreaMapTilemapEntriesShardRoom[NUM_AREAMAP_ROOM_COMPLETION][4][4] = {
    [AREAMAP_ROOM_UNVISITED] =
        {
            {0x30, 0x31, 0x32, 0x33},
            {0x34, 0x90, 0x91, 0x37},
            {0x38, 0x92, 0x93, 0x3b},
            {0x3c, 0x3d, 0x3e, 0x3f},
        },
    [AREAMAP_ROOM_VISITED] =
        {
            {0x20, 0x21, 0x22, 0x23},
            {0x24, 0x90, 0x91, 0x27},
            {0x28, 0x92, 0x93, 0x2b},
            {0x2c, 0x2d, 0x2e, 0x2f},
        },
    [AREAMAP_ROOM_COMPLETED] =
        {
            {0x20, 0x21, 0x22, 0x23},
            {0x24, 0x90, 0x91, 0x27},
            {0x28, 0x92, 0x93, 0x2b},
            {0x2c, 0x2d, 0x2e, 0x2f},
        },
};

static const struct AnimInfo gUnk_08363748[NUM_LANGUAGES][14] =
    {
        [LANGUAGE_JAPANESE] =
            {
                {0x372, 0x04, 0},
                {0x372, 0x06, 0},
                {0x372, 0x07, 0},
                {0x372, 0x08, 0},
                {0x372, 0x09, 0},
                {0x372, 0x0a, 0},
                {0x372, 0x0b, 0},
                {0x372, 0x0c, 0},
                {0x372, 0x0d, 0},
                {0x372, 0x0e, 0},
                {0x372, 0x00, 0},
                {0x372, 0x01, 0},
                {0x372, 0x02, 0},
                {0x372, 0x03, 0},
            },
        [LANGUAGE_ENGLISH] =
            {
                {0x36e, 0x04, 0},
                {0x36e, 0x05, 0},
                {0x36e, 0x06, 0},
                {0x36e, 0x07, 0},
                {0x36e, 0x08, 0},
                {0x36e, 0x09, 0},
                {0x36e, 0x0a, 0},
                {0x36e, 0x0b, 0},
                {0x36e, 0x0c, 0},
                {0x36e, 0x0d, 0},
                {0x36e, 0x00, 0},
                {0x36e, 0x01, 0},
                {0x36e, 0x02, 0},
                {0x36e, 0x03, 0},
            },
        [LANGUAGE_GERMAN] =
            {
                {0x36d, 0x04, 0},
                {0x36d, 0x05, 0},
                {0x36d, 0x06, 0},
                {0x36d, 0x07, 0},
                {0x36d, 0x08, 0},
                {0x36d, 0x09, 0},
                {0x36d, 0x0a, 0},
                {0x36d, 0x0b, 0},
                {0x36d, 0x0c, 0},
                {0x36d, 0x0d, 0},
                {0x36d, 0x00, 0},
                {0x36d, 0x01, 0},
                {0x36d, 0x02, 0},
                {0x36d, 0x03, 0},
            },
        [LANGUAGE_FRENCH] =
            {
                {0x370, 0x04, 0},
                {0x370, 0x05, 0},
                {0x370, 0x06, 0},
                {0x370, 0x07, 0},
                {0x370, 0x08, 0},
                {0x370, 0x09, 0},
                {0x370, 0x0a, 0},
                {0x370, 0x0b, 0},
                {0x370, 0x0c, 0},
                {0x370, 0x0d, 0},
                {0x370, 0x00, 0},
                {0x370, 0x01, 0},
                {0x370, 0x02, 0},
                {0x370, 0x03, 0},
            },
        [LANGUAGE_SPANISH] =
            {
                {0x36f, 0x04, 0},
                {0x36f, 0x05, 0},
                {0x36f, 0x06, 0},
                {0x36f, 0x07, 0},
                {0x36f, 0x08, 0},
                {0x36f, 0x09, 0},
                {0x36f, 0x0a, 0},
                {0x36f, 0x0b, 0},
                {0x36f, 0x0c, 0},
                {0x36f, 0x0d, 0},
                {0x36f, 0x00, 0},
                {0x36f, 0x01, 0},
                {0x36f, 0x02, 0},
                {0x36f, 0x03, 0},
            },
        [LANGUAGE_ITALIAN] =
            {
                {0x371, 0x04, 0},
                {0x371, 0x05, 0},
                {0x371, 0x06, 0},
                {0x371, 0x07, 0},
                {0x371, 0x08, 0},
                {0x371, 0x09, 0},
                {0x371, 0x0a, 0},
                {0x371, 0x0b, 0},
                {0x371, 0x0c, 0},
                {0x371, 0x0d, 0},
                {0x371, 0x00, 0},
                {0x371, 0x01, 0},
                {0x371, 0x02, 0},
                {0x371, 0x03, 0},
            },
};

static const struct AnimInfo gUnk_08363898[NUM_LANGUAGES][11] = {
    [LANGUAGE_JAPANESE] =
        {
            {0x372, 0x0f, 0},
            {0x372, 0x10, 0},
            {0x372, 0x11, 0},
            {0x372, 0x12, 0},
            {0x372, 0x13, 0},
            {0x372, 0x14, 0},
            {0x372, 0x15, 0},
            {0x372, 0x16, 0},
            {0x372, 0x17, 0},
            {0x372, 0x18, 0},
            {0x372, 0x19, 0},
        },
    [LANGUAGE_ENGLISH] =
        {
            {0x36e, 0x0e, 0},
            {0x36e, 0x0f, 0},
            {0x36e, 0x10, 0},
            {0x36e, 0x11, 0},
            {0x36e, 0x12, 0},
            {0x36e, 0x13, 0},
            {0x36e, 0x14, 0},
            {0x36e, 0x15, 0},
            {0x36e, 0x16, 0},
            {0x36e, 0x17, 0},
            {0x36e, 0x18, 0},
        },
    [LANGUAGE_GERMAN] =
        {
            {0x36d, 0x0e, 0},
            {0x36d, 0x0f, 0},
            {0x36d, 0x10, 0},
            {0x36d, 0x11, 0},
            {0x36d, 0x12, 0},
            {0x36d, 0x13, 0},
            {0x36d, 0x14, 0},
            {0x36d, 0x15, 0},
            {0x36d, 0x16, 0},
            {0x36d, 0x17, 0},
            {0x36d, 0x18, 0},
        },
    [LANGUAGE_FRENCH] =
        {
            {0x370, 0x0e, 0},
            {0x370, 0x0f, 0},
            {0x370, 0x10, 0},
            {0x370, 0x11, 0},
            {0x370, 0x12, 0},
            {0x370, 0x13, 0},
            {0x370, 0x14, 0},
            {0x370, 0x15, 0},
            {0x370, 0x16, 0},
            {0x370, 0x17, 0},
            {0x370, 0x18, 0},
        },
    [LANGUAGE_SPANISH] =
        {
            {0x36f, 0x0e, 0},
            {0x36f, 0x0f, 0},
            {0x36f, 0x10, 0},
            {0x36f, 0x11, 0},
            {0x36f, 0x12, 0},
            {0x36f, 0x13, 0},
            {0x36f, 0x14, 0},
            {0x36f, 0x15, 0},
            {0x36f, 0x16, 0},
            {0x36f, 0x17, 0},
            {0x36f, 0x18, 0},
        },
    [LANGUAGE_ITALIAN] =
        {
            {0x371, 0x0e, 0},
            {0x371, 0x0f, 0},
            {0x371, 0x10, 0},
            {0x371, 0x11, 0},
            {0x371, 0x12, 0},
            {0x371, 0x13, 0},
            {0x371, 0x14, 0},
            {0x371, 0x15, 0},
            {0x371, 0x16, 0},
            {0x371, 0x17, 0},
            {0x371, 0x18, 0},
        },
};

static const struct AnimInfo gUnk_083639a0[NUM_LANGUAGES][10] UNUSED = {
    [LANGUAGE_JAPANESE] =
        {
            {0x372, 0x1a, 0x0a},
            {0x372, 0x1a, 0x0a},
            {0x372, 0x1b, 0x0c},
            {0x372, 0x1c, 0x0b},
            {0x372, 0x1d, 0x0c},
            {0x372, 0x1e, 0x0a},
            {0x372, 0x1f, 0x08},
            {0x372, 0x20, 0x0c},
            {0x372, 0x21, 0x09},
            {0x372, 0x22, 0x0e},
        },
    [LANGUAGE_ENGLISH] =
        {
            {0x36e, 0x19, 0x0a},
            {0x36e, 0x19, 0x0a},
            {0x36e, 0x1a, 0x0c},
            {0x36e, 0x1b, 0x0a},
            {0x36e, 0x1c, 0x0c},
            {0x36e, 0x1d, 0x0a},
            {0x36e, 0x1e, 0x08},
            {0x36e, 0x1f, 0x0c},
            {0x36e, 0x20, 0x09},
            {0x36e, 0x21, 0x0e},
        },
    [LANGUAGE_GERMAN] =
        {
            {0x36d, 0x19, 0x0a},
            {0x36d, 0x19, 0x0a},
            {0x36d, 0x1a, 0x0c},
            {0x36d, 0x1b, 0x0a},
            {0x36d, 0x1c, 0x0c},
            {0x36d, 0x1d, 0x0a},
            {0x36d, 0x1e, 0x08},
            {0x36d, 0x1f, 0x0c},
            {0x36d, 0x20, 0x09},
            {0x36d, 0x21, 0x0e},
        },
    [LANGUAGE_FRENCH] =
        {
            {0x370, 0x19, 0x0a},
            {0x370, 0x19, 0x0a},
            {0x370, 0x1a, 0x0c},
            {0x370, 0x1b, 0x0a},
            {0x370, 0x1c, 0x0c},
            {0x370, 0x1d, 0x0a},
            {0x370, 0x1e, 0x08},
            {0x370, 0x1f, 0x0c},
            {0x370, 0x20, 0x09},
            {0x370, 0x21, 0x0e},
        },
    [LANGUAGE_SPANISH] =
        {
            {0x36f, 0x19, 0x0a},
            {0x36f, 0x19, 0x0a},
            {0x36f, 0x1a, 0x0c},
            {0x36f, 0x1b, 0x0a},
            {0x36f, 0x1c, 0x0c},
            {0x36f, 0x1d, 0x0a},
            {0x36f, 0x1e, 0x08},
            {0x36f, 0x1f, 0x0c},
            {0x36f, 0x20, 0x09},
            {0x36f, 0x21, 0x0e},
        },
    [LANGUAGE_ITALIAN] =
        {
            {0x371, 0x19, 0x0a},
            {0x371, 0x19, 0x0a},
            {0x371, 0x1a, 0x0c},
            {0x371, 0x1b, 0x0a},
            {0x371, 0x1c, 0x0c},
            {0x371, 0x1d, 0x0a},
            {0x371, 0x1e, 0x08},
            {0x371, 0x1f, 0x0c},
            {0x371, 0x20, 0x09},
            {0x371, 0x21, 0x0e},
        },
};

/*
 * Offsets for AreaMapDrawKirbysInRoom() to correctly place kirbys such that they don't overlap when they're in the same room.
 * Laid out in x-y-pairs.
 */
static const u8 sAreaMapNormalRoomKirbyOffsets[] = {2, 2, 14, 2, 2, 14, 14, 14};
static const u8 sAreaMapBigRoomKirbyOffsets[] = {8, 12, 24, 12, 8, 28, 24, 28};

// Array of pointers to palettes with 0x200 bytes size (except for last index, that's NULL)
// Only the last 0x100 bytes seem to be used for each
// The first 0x100 bytes look like copies for non-pulsing rooms and arrows
extern const u16* const gAreaMapBGPalette[NUM_AREA_IDS];

extern const u32* const gAreaMapBGTilesets[NUM_AREA_IDS];
extern const u16 gAreaMapMapRoomPalette[NUM_AREA_IDS - 1][5];
extern const u16 gAreaMapShardPalette[0xa];
extern const u32 gAreaMapShardTileset[4][0x40];
extern const u32 gAreaMapMapRoomTileset[0x100];
extern const u16 gAreaMapRoomIdsAndShards[NUM_AREA_IDS - 1][3];  // Indices per area: 0 - MapRoom, 1 - BossRoom, 2 - Shardnum
extern const u8 gAreaMapShardTilesetIndicesAndTimers[0x1c];      // Every pair of entries signifies one state and one timer for this state
extern const u16 gMapUITilemapIndices[NUM_DISABLE_MAP_UI][4];
extern const u32* const gAreaMapUIAreaTitleTilesets[NUM_AREA_IDS - 2];

static void AreaMapChooseUI(s32, enum AreaMapVisibility);
static void AreaMapInit(void);
static void AreaMapUpdateDynamics(struct AreaMap*);
static void AreaMapMain(void);

#define AreaMapArrowInit(arrowp, _animId, _variant, _x, _y, _unk28, _unk2A)                                                                \
    {                                                                                                                                      \
        SpriteInitNoFunc(&(arrowp)->sprite, (u32)OBJ_VRAM0 + 0x2000, 0x1c0, (_animId), (_variant), 0, 0xff, 0x10, 8, (_x), (_y), 0xc0000); \
        (arrowp)->unk28 = (_unk28);                                                                                                        \
        (arrowp)->unk2A = (_unk2A);                                                                                                        \
        (arrowp)->unk2C = 0;                                                                                                               \
        (arrowp)->unk2E = 0;                                                                                                               \
    }

#define AreaMapSpriteInit(mapspritep, tilesVramVal, unk14Val, animIdVal, variantVal, unk16Val, unk1BVal, unk1CVal, palIdVal, xVal, yVal, unk8Val,  \
                          globalXVal, globalYVal)                                                                                                  \
    ({                                                                                                                                             \
        SpriteInitNoFunc(&(mapspritep)->sprite, tilesVramVal, unk14Val, animIdVal, variantVal, unk16Val, unk1BVal, unk1CVal, palIdVal, xVal, yVal, \
                         unk8Val);                                                                                                                 \
        (mapspritep)->globalX = (globalXVal);                                                                                                      \
        (mapspritep)->globalY = (globalYVal);                                                                                                      \
    })

#define AreaMapCameraScroll(cameraBg2)                                                                                                       \
    ({                                                                                                                                       \
        if ((cameraBg2)->x <= sAreaMapScreenSizes[(cameraBg2)->areaId][0] * 8) {                                                             \
            (cameraBg2)->x = sAreaMapScreenSizes[(cameraBg2)->areaId][0] * 8;                                                                \
        }                                                                                                                                    \
        if ((cameraBg2)->y <= sAreaMapScreenSizes[(cameraBg2)->areaId][1] * 8) {                                                             \
            (cameraBg2)->y = sAreaMapScreenSizes[(cameraBg2)->areaId][1] * 8;                                                                \
        }                                                                                                                                    \
        if ((cameraBg2)->x >= sAreaMapScreenSizes[(cameraBg2)->areaId][2] * 8) {                                                             \
            (cameraBg2)->x = sAreaMapScreenSizes[(cameraBg2)->areaId][2] * 8;                                                                \
        }                                                                                                                                    \
        if ((cameraBg2)->y >= sAreaMapScreenSizes[(cameraBg2)->areaId][3] * 8) {                                                             \
            (cameraBg2)->y = sAreaMapScreenSizes[(cameraBg2)->areaId][3] * 8;                                                                \
        }                                                                                                                                    \
        if ((cameraBg2)->flags & 0x0001) {                                                                                                   \
            sub_081548A8(0, (cameraBg2)->zoomEffective, (cameraBg2)->zoomEffective, (cameraBg2)->x, (cameraBg2)->y, 120, 80, gBgAffineRegs); \
            (cameraBg2)->flags &= ~0x0001;                                                                                                   \
        }                                                                                                                                    \
    })

inline void AreaMapEnableUI(enum AreaId areaId, enum AreaMapVisibility visibility) {
    gDispCnt |= DISPCNT_BG1_ON;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(sMapUIPalette, 0x70, ARRAY_COUNT(sMapUIPalette));
    }
    else {
        DmaCopy16(3, sMapUIPalette, gBgPalette + 0x70, sizeof(sMapUIPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    LZ77UnCompVram(sMapUITileset, BG_CHAR_ADDR(2) + 0x1000);
    AreaMapChooseUI(areaId, visibility);
}

inline void AreaMapToNextMenu(void) {
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    if (!sub_0812A304()) {
        if (areamap->nextMenuId == MENU_WORLDMAP) {
            CreateWorldMap(WORLDMAP_NO_UNLOCK);
        }
        else if (areamap->nextMenuId == MENU_HELP) {
            CreateHelpMenu();
        }
        CreatePauseFade(-0x20, 1);
        TaskDestroy(gCurTask);
    }
    AreaMapUpdateDynamics(areamap);
}

inline void AreaMapToGame(void) {
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    AreaMapUpdateDynamics(areamap);
    if (areamap->toGameCounter++ > 18) {
        TaskDestroy(gPauseMenus[gUnk_0203AD3C].mainTask);
        TaskDestroy(gCurTask);
        sub_08039670();
    }
}

static inline void MapDisableUIElements(enum MapDisableUI element) {
    u32 entryY, entryX;
    u16* vramAdr;

    for (entryY = gMapUITilemapIndices[element][1]; entryY <= gMapUITilemapIndices[element][3]; entryY++) {
        for (entryX = gMapUITilemapIndices[element][0], vramAdr = (u16*)BG_SCREEN_ADDR(23) + 0x20 * entryY + entryX;
             entryX <= gMapUITilemapIndices[element][2]; vramAdr++, vramAdr++, vramAdr--, entryX++) {
            *vramAdr = 0x7080;  // override tilemap with empty tile
        }
    }
}

inline void UNUSED MapDisableUIElementsThunk(enum MapDisableUI element) {
    MapDisableUIElements(element);
}

// TODO: Revisit when sprite functions are better understood
static void AreaMapKirbySpritesInit(struct Sprite* kirby, struct Sprite* abilityAccessory, u8 playerId) {
    u16 r5 = playerId * 2 + 0xa;  // priority?
    if (playerId == gUnk_0203AD3C) {
        r5 = 0x8;
    }

    SpriteInitNoPointer2(kirby, (u32)OBJ_VRAM0 + 0x3800 + playerId * 0x100, (r5 + 1) << 6, gUnk_08350AAC[gKirbys[playerId].ability].animId,
                         gUnk_08350AAC[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId, 0, 0, 0x41000);

    SpriteInitNoPointer2(abilityAccessory, (u32)OBJ_VRAM0 + 0x3880 + playerId * 0x100, r5 << 6, gUnk_08350B30[gKirbys[playerId].ability].animId,
                         gUnk_08350B30[gKirbys[playerId].ability].variant, 0, 0xff, 0x10, playerId + 4, 0, 0, 0x41000);
}

// TODO: Revisit when sprite functions are better understood
static void sub_08126C48(void) {
    struct Sprite unkSprite0, unkSprite1;
    u16 animId;
    u8 variant, palette;

    // Loads correct sprites for screen arrows and TextLabels into VRAM
    u16 language = gLanguage;
    SpriteInitNoPointer2(&unkSprite0, (u32)OBJ_VRAM0 + 0x2000, 0xa << 6, gUnk_08363748[language][0xd].animId, gUnk_08363748[language][0xd].variant, 0,
                         0xff, 0x10, 0, 0, 0, 0x40000);

    // Loads correct palette for screen arrows and TextLabels
    animId = gUnk_08363748[language][0].animId;
    variant = gUnk_08363748[language][0].variant;
    palette = 0x8;
    SpriteInitNoPointer2(&unkSprite1, (u32)OBJ_VRAM0 + 0x2000, 0xa << 6, animId, variant, 0, 0xff, 0x10, palette, 0, 0, 0x80000);
}

static inline const struct AreaMapRoomInfo* AreaMapGetRoomInfo(u16 roomId) {
    u32 roomInfoIdx;
    for (roomInfoIdx = 0; roomInfoIdx < ARRAY_COUNT(sAreaMapRoomInfos); roomInfoIdx++) {
        if (roomId == sAreaMapRoomInfos[roomInfoIdx].roomId) {
            return sAreaMapRoomInfos + roomInfoIdx;
        }
    }
    return NULL;
}

/*
 `AreaMap::roomInfos` and `AreaMap::kirbySprites` get updated with the roomInfo found in `sAreaMapRoomInfos` for all kirbys.
 */
static void AreaMapFindRoomsWithKirbys(struct AreaMap* areamap) {
    u32 playerId;
    for (playerId = 0; playerId < gUnk_0203AD44; playerId++) {
        const struct AreaMapRoomInfo* roomInfo;
        u16 roomId = gCurLevelInfo[playerId].currentRoom;
        if (gUnk_08D6CD0C[roomId]->unk46 == 9 || gUnk_08D6CD0C[roomId]->unk46 == 10) {
            roomInfo = NULL;
        }
        else {
            roomInfo = AreaMapGetRoomInfo(roomId);
        }
        areamap->roomInfos[playerId] = roomInfo;

        if (roomInfo) {
            areamap->kirbySprites[playerId].areaId = roomInfo->areaId;
            areamap->kirbySprites[playerId].globalX = roomInfo->tileStartColumn * 8;
            areamap->kirbySprites[playerId].globalY = roomInfo->tileStartRow * 8;
        }
        else {
            areamap->kirbySprites[playerId].areaId = 0xff;
        }
    }
}

static void AreaMapDrawKirbysInRoom(struct AreaMap* areamap) {
    u32 playerId;
    struct AreaMapCamera* cameraBg2 = &areamap->cameraBg2;
    for (playerId = 0; playerId < gUnk_0203AD44; playerId++) {
        u8 xOffset, yOffset;  // offsets from room coordinates for 4 kirbys to be drawn without overlap in one room
        struct AreaMapSprite* kirby = areamap->kirbySprites + playerId;
        struct AreaMapSprite* abilityAccessory = areamap->abilityAccessories + playerId;
        u32 x, y;
        bool32 isKirbyOnScreen;
        bool32 UNUSED isKirbyXOnScreen;

        if (cameraBg2->areaId != kirby->areaId) continue;

        switch (areamap->roomInfos[playerId]->type) {
        case AREAMAP_ROOM_BIG:
        case AREAMAP_ROOM_STAR:
            xOffset = sAreaMapBigRoomKirbyOffsets[playerId * 2];
            yOffset = sAreaMapBigRoomKirbyOffsets[playerId * 2 + 1];
            break;
        case AREAMAP_ROOM_NORMAL:
        default:
            xOffset = sAreaMapNormalRoomKirbyOffsets[playerId * 2];
            yOffset = sAreaMapNormalRoomKirbyOffsets[playerId * 2 + 1];
            break;
        }

        kirby->sprite.x = 120 + ((kirby->globalX + xOffset - cameraBg2->x) * cameraBg2->zoomEffective >> 8);
        kirby->sprite.y = 80 + ((kirby->globalY + yOffset - cameraBg2->y) * cameraBg2->zoomEffective >> 8);
        abilityAccessory->sprite.x = kirby->sprite.x;
        abilityAccessory->sprite.y = kirby->sprite.y;

        x = (u32)abilityAccessory->sprite.x;
        y = (u32)abilityAccessory->sprite.y;

        isKirbyXOnScreen = x + 29 <= 288;
        isKirbyOnScreen = x + 29 <= 288 && y + 15 <= 190;
        if (isKirbyOnScreen) {
            sub_0815604C(&kirby->sprite);
            if (gUnk_08350B30[gKirbys[playerId].ability].animId) {
                sub_0815604C(&abilityAccessory->sprite);
            }
        }
    }
}

// TODO: Revisit when sprite functions are better understood
static void AreaMapTextLabelInit(struct AreaMap* areamap) {
    u8 textLabelIdx;
    CpuFill32(0, areamap->textLabels, sizeof(areamap->textLabels[0]) * 8);

    for (textLabelIdx = 0; textLabelIdx < sAreaMapTextLabelsNum[areamap->cameraBg2.areaId]; textLabelIdx++) {
        const struct Unk_08361A7C* unk08361A7C = &sUnk_08361A7C[sUnk_08361A58[areamap->cameraBg2.areaId] + textLabelIdx];
        AreaMapSpriteInit(areamap->textLabels + textLabelIdx, (u32)OBJ_VRAM0 + 0x2000, 0x280, gUnk_08363898[gLanguage][unk08361A7C->unk3].animId,
                          gUnk_08363898[gLanguage][unk08361A7C->unk3].variant, 0, 0xff, 0x10, 8, 0, 0, 0xc1000, unk08361A7C->unk4, unk08361A7C->unk8);
        sub_08155128(&areamap->textLabels[textLabelIdx].sprite);
    }
}

static void AreaMapDrawTextLabels(struct AreaMap* areamap) {
    u32 textLabelIdx;
    struct AreaMapCamera* cameraBg2;
    if (areamap->visibility[areamap->cameraBg2.areaId] != AREAMAP_FOUND_MAP) return;

    for (cameraBg2 = &areamap->cameraBg2, textLabelIdx = 0; textLabelIdx < sAreaMapTextLabelsNum[areamap->cameraBg2.areaId]; textLabelIdx++) {
        struct AreaMapSprite* textLabel = areamap->textLabels + textLabelIdx;
        bool32 isLabelOnScreen;
        bool32 UNUSED isLabelXOnScreen;
        u32 x, y;

        textLabel->sprite.x = 120 + ((textLabel->globalX - cameraBg2->x) * cameraBg2->zoomEffective >> 8);
        textLabel->sprite.y = 80 + ((textLabel->globalY - cameraBg2->y) * cameraBg2->zoomEffective >> 8);

        x = (u32)textLabel->sprite.x;
        y = (u32)textLabel->sprite.y;

        isLabelXOnScreen = x + 29 <= 288;
        isLabelOnScreen = x + 29 <= 288 && y + 15 <= 190;
        if (isLabelOnScreen) {
            sub_081564D8(&textLabel->sprite);
        }
    }
}

static void AreaMapChooseUI(s32 areaId, enum AreaMapVisibility visibility) {
    if (areaId < AREA_RAINBOW_ROUTE) return;
    if (areaId > AREA_CANDY_CONSTELLATION) return;

    LZ77UnCompVram(gAreaMapUIAreaTitleTilesets[areaId - 1], BG_CHAR_ADDR(2) + 0x2800);
    LZ77UnCompVram(sAreaMapUITilemap, BG_SCREEN_ADDR(23));

    if (visibility != AREAMAP_FOUND_MAP) {
        MapDisableUIElements(DISABLE_AREAMAP_A);
    }

    if (gUnk_0203AD50 != gUnk_0203AD3C) {
        MapDisableUIElements(DISABLE_AREAMAP_B);
    }

    if (gPauseMenus[0].flags & MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE) {
        MapDisableUIElements(DISABLE_AREAMAP_L);
        MapDisableUIElements(DISABLE_AREAMAP_R);
    }
}

void WorldMapPauseEnableUI(void) {
    gDispCnt |= DISPCNT_BG1_ON;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[1][1] = 0;

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(sMapUIPalette, 0x70, ARRAY_COUNT(sMapUIPalette));
    }
    else {
        DmaCopy16(3, sMapUIPalette, gBgPalette + 0x70, sizeof(sMapUIPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
    LZ77UnCompVram(sMapUITileset, BG_CHAR_ADDR(2) + 0x1000);
    LZ77UnCompVram(sWorldMapUITilemap, BG_SCREEN_ADDR(23));

    if (gUnk_0203AD50 != gUnk_0203AD3C) {
        MapDisableUIElements(DISABLE_WORLDMAP_B);
    }
}

static void AreaMapRoomsOverwriteTilemap(const u8 tilemapEntries[], u8 startColumn, u8 startRow, u8 numRows) {
    u32 row;
    for (row = 0; row < numRows; row++) {
        u16 newEntry;
        u32 tileAddress = (u32)BG_SCREEN_ADDR(24) + 0x80 * (startRow + row) + startColumn;
        u16 curEntry16 = *(u16*)tileAddress;
        u32 curEntry32 = *(u32*)tileAddress;

        switch (numRows) {
        case 2:
            newEntry = tilemapEntries[1] << 8 | tilemapEntries[0];
            tilemapEntries += 2;
            *(u16*)tileAddress = newEntry;
            break;

        case 3: break;

        case 4:
            if (tileAddress & 1) {
                *(u16*)tileAddress = tilemapEntries[0] << 0x8 | curEntry32 >> 0x18;
                tileAddress += 2;
                *(u16*)tileAddress = tilemapEntries[2] << 0x8 | tilemapEntries[1];
                tileAddress += 2;
                *(u16*)tileAddress = *(u8*)tileAddress << 0x8 | tilemapEntries[3];
            }
            else {
                *(u16*)tileAddress = tilemapEntries[0] << 0x8 | (*(u16*)tileAddress & 0xff00) >> 0x8;
                tileAddress += 2;
                *(u16*)tileAddress = tilemapEntries[2] << 0x8 | tilemapEntries[1];
                tileAddress += 2;
                curEntry16 = *(u16*)tileAddress;
                *(u16*)tileAddress = (curEntry16 & 0xff00) | tilemapEntries[3];
            }
            tilemapEntries += 4;
            break;
        }
    }
}

/*
 * Inserts rooms into the tilemap of the area in areamap->cameraBg2 depending on area visibility and room completion.
 */
static void AreaMapRoomsChooseTile(struct AreaMap* areamap) {
    u32 i;
    enum AreaId areaId = areamap->cameraBg2.areaId;
    u32 roomInfoIdx = sAreaMapRoomInfoOffset[areaId];
    bool32 foundMap = HasBigChest(areaId);

    for (i = 0; i < sAreaMapRoomInfoLength[areaId]; roomInfoIdx++, i++) {
        u16 roomId = sAreaMapRoomInfos[roomInfoIdx].roomId;

        enum AreaMapRoomCompletion roomCompletion = AREAMAP_ROOM_UNVISITED;
        if (sub_08002A5C(roomId)) {
            roomCompletion = AREAMAP_ROOM_VISITED;
            if (sub_08002AAC(roomId) == sub_08002AD0(roomId)) {
                roomCompletion = AREAMAP_ROOM_COMPLETED;
            }
        }

        if (gAreaMapRoomIdsAndShards[areaId][0] == roomId && areamap->visibility[areaId] != AREAMAP_FOUND_MAP) {
            AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesMapRoom[0], sAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                         sAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesMapRoom[0]));
        }
        else if (gAreaMapRoomIdsAndShards[areaId][1] == roomId && areamap->visibility[areaId] == AREAMAP_FOUND_MAP &&
                 !HasShard(gAreaMapRoomIdsAndShards[areaId][2])) {
            AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesShardRoom[roomCompletion][0], sAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                         sAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesShardRoom[0][0]));
        }
        else if (!foundMap && roomCompletion == AREAMAP_ROOM_UNVISITED) {
            continue;
        }
        else
            switch (sAreaMapRoomInfos[roomInfoIdx].type) {
            case AREAMAP_ROOM_NORMAL:
                AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesNormalRoom[roomCompletion][0], sAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                             sAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesNormalRoom[0][0]));
                break;
            case AREAMAP_ROOM_BIG:
                AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesBigRoom[roomCompletion][0], sAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                             sAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesBigRoom[0][0]));
                break;
            case AREAMAP_ROOM_STAR:
                AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesStarRoom[roomCompletion][0], sAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                             sAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesStarRoom[0][0]));
                break;
            }
    }
}

static void AreaMapBGInit(struct AreaMap* areamap) {
    u8 areaId = areamap->cameraBg2.areaId;

    areamap->areaBg.unkA = 0;
    areamap->areaBg.unk18 = 0;
    areamap->areaBg.unk1A = 0;
    areamap->areaBg.unk1C = areaId + 0xb7;
    areamap->areaBg.unk1E = 0;
    areamap->areaBg.unk20 = 0;
    areamap->areaBg.unk22 = 0;
    areamap->areaBg.unk24 = 0;
    areamap->areaBg.unk26 = 0x20;
    areamap->areaBg.unk28 = 0x16;
    areamap->areaBg.prevScrollX = 0x7fff;
    areamap->areaBg.prevScrollY = 0x7fff;
    areamap->areaBg.paletteOffset = 0;
    areamap->areaBg.tilesVram = (u32)BG_CHAR_ADDR(1);
    areamap->areaBg.unk2E = 0x18;
    areamap->areaBg.tilemapVram = (u32)BG_SCREEN_ADDR(22);
    LZ77UnCompVram(gAreaMapBGTilesets[areaId], BG_CHAR_ADDR(1));

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
        LoadBgPaletteWithTransformation(gAreaMapBGPalette[areaId] + 0x80, 0x80, 0x80);
    else {
        DmaCopy16(3, gAreaMapBGPalette[areaId] + 0x80, gBgPalette + 0x80, 0x100);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    sub_08153060(&areamap->areaBg);
}

static void AreaMapCameraInitPosition(struct AreaMap* areamap) {
    s32 playerId;

    switch (areamap->visibility[areamap->cameraBg2.areaId]) {
    case AREAMAP_UNVISITED:
    case AREAMAP_NO_MAP:
        areamap->cameraBg2.x = sAreaMapScreenSizes[areamap->cameraBg2.areaId][2] * 4;
        areamap->cameraBg2.y = sAreaMapScreenSizes[areamap->cameraBg2.areaId][3] * 4;
        areamap->cameraBg2.zoomEffective = 0x61;
        break;
    case AREAMAP_FOUND_MAP:
        playerId = -1;
        if (areamap->kirbySprites[gUnk_0203AD50].areaId == areamap->cameraBg2.areaId) {
            playerId = gUnk_0203AD50;
        }
        else if (areamap->kirbySprites[gUnk_0203AD3C].areaId == areamap->cameraBg2.areaId) {
            playerId = gUnk_0203AD3C;
        }

        if (playerId != -1) {
            switch (areamap->roomInfos[playerId]->type) {
            case AREAMAP_ROOM_BIG:
            case AREAMAP_ROOM_STAR:
                areamap->cameraBg2.x = areamap->roomInfos[playerId]->tileStartColumn * 8 + 0x10;
                areamap->cameraBg2.y = areamap->roomInfos[playerId]->tileStartRow * 8 + 0x10;
                break;
            case AREAMAP_ROOM_NORMAL:
            default:
                areamap->cameraBg2.x = areamap->roomInfos[playerId]->tileStartColumn * 8 + 0x8;
                areamap->cameraBg2.y = areamap->roomInfos[playerId]->tileStartRow * 8 + 0x8;
                break;
            }
        }
        else {
            // Place camera in the middle
            areamap->cameraBg2.x = sAreaMapScreenSizes[areamap->cameraBg2.areaId][2] * 4;
            areamap->cameraBg2.y = sAreaMapScreenSizes[areamap->cameraBg2.areaId][3] * 4;
        }
        areamap->cameraBg2.zoomEffective = areamap->cameraBg2.zoomUnlockedAreas;
        break;
    }
}

static void AreaMapRoomsInit(struct AreaMap* areamap) {
    if (areamap->visibility[areamap->cameraBg2.areaId] == AREAMAP_FOUND_MAP) {
        RLUnCompVram(gAreaMapRoomsTilemaps + gAreaMapRoomsTilemapOffsets[areamap->cameraBg2.areaId], BG_SCREEN_ADDR(24));
    }
    else {
        RLUnCompVram(gAreaMapRoomsTilemaps + gAreaMapRoomsTilemapOffsets[AREA_TUTORIAL], BG_SCREEN_ADDR(24));
    }

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gAreaMapMapRoomPalette[areamap->cameraBg2.areaId], 0x40, ARRAY_COUNT(gAreaMapMapRoomPalette[0]));
    }
    else {
        DmaCopy16(3, gAreaMapMapRoomPalette[areamap->cameraBg2.areaId], gBgPalette + 0x40, sizeof(gAreaMapMapRoomPalette[0]));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    AreaMapRoomsChooseTile(areamap);
}

static void AreaMapDoPalettePulse(struct AreaMapPalettePulse* palettePulse) {
    const u16* state = (u16*)(palettePulse->states + palettePulse->header.stateSize * palettePulse->stateIdx);
    palettePulse->waitCounter++;
    if (palettePulse->waitCounter <= *state) return;

    palettePulse->waitCounter = 0;
    palettePulse->stateIdx++;
    if (palettePulse->stateIdx >= palettePulse->header.stateCount) {
        palettePulse->stateIdx = 0;
    }

    state = (u16*)(palettePulse->states + palettePulse->header.stateSize * palettePulse->stateIdx);
    state++;
    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(state, palettePulse->header.paletteOffset / 2, (palettePulse->header.stateSize - 2) >> 1);
    }
    else {
        DmaSet(3, state, gBgPalette + palettePulse->header.paletteOffset / 2,
               (DMA_ENABLE | DMA_START_NOW | DMA_16BIT | DMA_SRC_INC | DMA_DEST_INC) << 16 | (palettePulse->header.stateSize - 2) >> 1);
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }
}

void CreateAreaMap(void) {
    struct Task* task;
    struct AreaMap *areamap, *tmp;
    s32 playerOrAreaId, pulseType, id, numVisitedAreas;
    u16 language;
    struct AreaMapPalettePulse* palettePulse;
    const struct AreaMapRoomInfo* curRoomInfo;

    gDispCnt = DISPCNT_MODE_1 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_BG2_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_CHARBASE(1) | BGCNT_16COLOR | BGCNT_SCREENBASE(22) | BGCNT_TXT256x256;
    gBgCntRegs[1] = BGCNT_PRIORITY(0) | BGCNT_CHARBASE(2) | BGCNT_16COLOR | BGCNT_SCREENBASE(23) | BGCNT_TXT256x256;
    gBgCntRegs[2] = BGCNT_PRIORITY(1) | BGCNT_CHARBASE(0) | BGCNT_256COLOR | BGCNT_SCREENBASE(24) | BGCNT_AFF1024x1024;
    gBgScrollRegs[0][1] = 8;
    gBgScrollRegs[0][0] = 8;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[1][0] = 0;
    gBgScrollRegs[2][1] = 0;
    gBgScrollRegs[2][0] = 0;

    task = TaskCreate(AreaMapInit, sizeof(struct AreaMap), 0x1000, TASK_USE_IWRAM | TASK_x0004, NULL);
    areamap = tmp = TaskGetStructPtr(task);
    areamap->nextAreaMapCounter = 0;
    areamap->toGameCounter = 0;
    areamap->gotoNextAreaMap = 0;
    (&areamap->cameraBg2)->flags |= 0x0001;

    for (playerOrAreaId = 0; playerOrAreaId < (s32)ARRAY_COUNT(areamap->visibility); playerOrAreaId++) {
        s32 roomInfoIdx;
        areamap->visibility[playerOrAreaId] = AREAMAP_UNVISITED;

        // Checks, whether at least one room of an area has already been visited
        id = sAreaMapRoomInfoOffset[playerOrAreaId];  // base index
        for (roomInfoIdx = 0; roomInfoIdx < sAreaMapRoomInfoLength[playerOrAreaId]; roomInfoIdx++) {
            if (sub_08002A5C(sAreaMapRoomInfos[id + roomInfoIdx].roomId)) {
                areamap->visibility[playerOrAreaId] = AREAMAP_NO_MAP;
                break;
            }
        }

        if (HasBigChest(playerOrAreaId)) {
            areamap->visibility[playerOrAreaId] = AREAMAP_FOUND_MAP;
        }
    }

    // If only Rainbow Route has been visited yet, the menu flag is set to disable R and L sprites in AreaMapChooseUI()
    numVisitedAreas = 0;
    for (playerOrAreaId = 1; playerOrAreaId < (s32)ARRAY_COUNT(areamap->visibility); playerOrAreaId++) {  // areaId
        if (areamap->visibility[playerOrAreaId] != AREAMAP_UNVISITED) {
            numVisitedAreas++;
        }
    }
    if (numVisitedAreas < 2) {
        gPauseMenus[0].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
        gPauseMenus[1].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
        gPauseMenus[2].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
        gPauseMenus[3].flags |= MENU_FLAG_ONLY_VISITED_RAINBOW_ROUTE;
    }

    AreaMapFindRoomsWithKirbys(areamap);
    // NULL dereferences through areamap->roomInfos in the remaining function, if AreaMapFindRoomsWithKirbys() couldn't find the menu opening player
    sub_08126C48();

    areamap->cameraBg2.unk0 = 0;
    areamap->cameraBg2.unk2 = 0;
    curRoomInfo = areamap->roomInfos[gUnk_0203AD50];
    areamap->cameraBg2.areaId = curRoomInfo->areaId;
    areamap->cameraBg2.x = curRoomInfo->tileStartColumn * 8;
    areamap->cameraBg2.y = curRoomInfo->tileStartRow * 8;
    areamap->cameraBg2.flags = 0;
    areamap->cameraBg2.zoomEffective = areamap->cameraBg2.zoomUnlockedAreas = gPauseMenus[gUnk_0203AD3C].zoomAreaMap * 0x10;
    areamap->cameraBg2.doZoom = 0;

    AreaMapBGInit(areamap);
    for (id = 0; id < gUnk_0203AD44; id++) {  // playerId
        AreaMapKirbySpritesInit(&areamap->kirbySprites[id].sprite, &areamap->abilityAccessories[id].sprite, id);
    }
    AreaMapTextLabelInit(areamap);

    language = gLanguage;
    AreaMapArrowInit(areamap->arrows + 0, gUnk_08363748[language][0xd].animId, gUnk_08363748[language][0xd].variant, 10, 80, 0xa0, 0x500);
    AreaMapArrowInit(areamap->arrows + 1, gUnk_08363748[language][0xa].animId, gUnk_08363748[language][0xa].variant, 120, 20, 0x780, 0x140);
    AreaMapArrowInit(areamap->arrows + 2, gUnk_08363748[language][0xb].animId, gUnk_08363748[language][0xb].variant, 230, 80, 0xe60, 0x500);
    AreaMapArrowInit(areamap->arrows + 3, gUnk_08363748[language][0xc].animId, gUnk_08363748[language][0xc].variant, 120, 140, 0x780, 0x8c0);
    sub_08155128(&areamap->arrows[0].sprite);
    sub_08155128(&areamap->arrows[1].sprite);
    sub_08155128(&areamap->arrows[2].sprite);
    sub_08155128(&areamap->arrows[3].sprite);

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gAreaMapRoomsPalette[0], 0, ARRAY_COUNT(gAreaMapRoomsPalette[0]));
    }
    else {
        DmaCopy16(3, gAreaMapRoomsPalette[0], gBgPalette, sizeof(gAreaMapRoomsPalette[0]));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gAreaMapMapRoomPalette[areamap->cameraBg2.areaId], 0x40,
                                        ARRAY_COUNT(gAreaMapMapRoomPalette[areamap->cameraBg2.areaId]));
    }
    else {
        DmaCopy16(3, gAreaMapMapRoomPalette[areamap->cameraBg2.areaId], gBgPalette + 0x40, sizeof(gAreaMapMapRoomPalette[areamap->cameraBg2.areaId]));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE) {
        LoadBgPaletteWithTransformation(gAreaMapShardPalette, 0x50, ARRAY_COUNT(gAreaMapShardPalette));
    }
    else {
        DmaCopy16(3, gAreaMapShardPalette, gBgPalette + 0x50, sizeof(gAreaMapShardPalette));
        gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
    }

    CpuCopy32(gAreaMapRoomsTileset, (void*)VRAM, sizeof(gAreaMapRoomsTileset));
    CpuCopy32(gAreaMapMapRoomTileset, BG_CHAR_ADDR(0) + 0x2000, sizeof(gAreaMapMapRoomTileset));
    CpuCopy32(gAreaMapShardTileset[0], BG_CHAR_ADDR(0) + 0x2400, sizeof(gAreaMapShardTileset[0]));

    areamap->shardRotation = -1;
    areamap->shardRotationIdx = -1;

    palettePulse = areamap->palettePulse;
    for (pulseType = 0; pulseType < ARRAY_COUNT(sAreaMapPalettePulseOffsets); pulseType++) {
        const u16* palettePulseStates = (u16*)&sAreaMapPalettePulseStates + sAreaMapPalettePulseOffsets[pulseType];
        CpuCopy16(palettePulseStates, &palettePulse[pulseType].header, sizeof(palettePulse[pulseType].header));
        palettePulse[pulseType].states = (u8*)palettePulseStates + sizeof(palettePulse[pulseType].header);
        palettePulse[pulseType].stateIdx = 0;
        palettePulse[pulseType].waitCounter = 0;
    }

    AreaMapDrawKirbysInRoom(areamap);
    id = areamap->cameraBg2.areaId;
    AreaMapEnableUI(id, areamap->visibility[id]);
    AreaMapCameraInitPosition(areamap);

    AreaMapCameraScroll(&areamap->cameraBg2);
    (&areamap->cameraBg2)->flags |= 0x0001;

    for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {
        gPauseMenus[playerOrAreaId].flags &= ~(MENU_FLAG_AREA_DESCEND | MENU_FLAG_AREA_ASCEND);
    }
}

static void AreaMapInit(void) {
    struct AreaMap* areamap;
    areamap = TaskGetStructPtr(gCurTask);

    if (gPauseMenus[0].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[1].flags & MENU_FLAG_BACK_TO_GAME ||
        gPauseMenus[2].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[3].flags & MENU_FLAG_BACK_TO_GAME) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = AreaMapToGame;
    }
    else {
        sub_0803D2A8(0, 0xff);
        sub_0803D280(0x80, 0x7f);
        gCurTask->main = AreaMapMain;
        AreaMapRoomsInit(areamap);
    }
}

/* Updates:
 * - Camera Scroll
 * - Blinking screen arrow sprites on the edge of the screen
 * - Palette pulse for rooms and arrow paths
 * - Kirby and TextLabel placement
 * - Shard rotation
 */
static void AreaMapUpdateDynamics(struct AreaMap* areamap) {
    u32 playerId, pulseType;

    for (playerId = 0; playerId < 4; playerId++) {
        sub_0803E558(playerId);
    }

    AreaMapCameraScroll(&areamap->cameraBg2);

    if (areamap->visibility[areamap->cameraBg2.areaId] == AREAMAP_FOUND_MAP && (areamap->arrowPulseCounter & 0x2f) > 0xf) {
        u8 areaId = areamap->cameraBg2.areaId;
        if (areamap->cameraBg2.x > sAreaMapScreenSizes[areaId][0] * 8) {
            sub_0815604C(&areamap->arrows[0].sprite);
        }
        if (areamap->cameraBg2.y > sAreaMapScreenSizes[areaId][1] * 8) {
            sub_0815604C(&areamap->arrows[1].sprite);
        }
        if (areamap->cameraBg2.x < sAreaMapScreenSizes[areaId][2] * 8) {
            sub_0815604C(&areamap->arrows[2].sprite);
        }
        if (areamap->cameraBg2.y < sAreaMapScreenSizes[areaId][3] * 8) {
            sub_0815604C(&areamap->arrows[3].sprite);
        }
    }

    for (pulseType = 0; pulseType < ARRAY_COUNT(areamap->palettePulse); pulseType++) {
        AreaMapDoPalettePulse(&areamap->palettePulse[pulseType]);
    }

    AreaMapDrawKirbysInRoom(areamap);
    AreaMapDrawTextLabels(areamap);
    areamap->arrowPulseCounter++;

    areamap->shardRotation--;
    if (areamap->shardRotation < 1) {
#ifndef NONMATCHING
        register s16 *shardRotationIdx2, *shardRotationIdx asm("r1");
        register u32 shardRotation asm("r4");

        shardRotationIdx = &areamap->shardRotationIdx;
        ++*shardRotationIdx;
        shardRotationIdx2 = shardRotationIdx;
        while (TRUE) {
            shardRotationIdx = shardRotationIdx2;
            shardRotation = gAreaMapShardTilesetIndicesAndTimers[*shardRotationIdx];
            if (shardRotation == 0xff) {
                *shardRotationIdx = 0;
            }
            else {
                CpuCopy32(gAreaMapShardTileset[shardRotation], BG_CHAR_ADDR(0) + 0x2400, sizeof(gAreaMapShardTileset[0]));
                ++*shardRotationIdx2;
                areamap->shardRotation = shardRotation = gAreaMapShardTilesetIndicesAndTimers[*shardRotationIdx2];
                break;
            }
        }
#else
        areamap->shardRotationIdx++;
        while (gAreaMapShardTilesetIndicesAndTimers[areamap->shardRotationIdx] == 0xff)
            areamap->shardRotationIdx = 0;
        CpuCopy32(gAreaMapShardTileset[gAreaMapShardTilesetIndicesAndTimers[areamap->shardRotationIdx]], BG_CHAR_ADDR(0) + 0x2400,
                  sizeof(gAreaMapShardTileset[0]));
        areamap->shardRotationIdx++;
        areamap->shardRotation = gAreaMapShardTilesetIndicesAndTimers[areamap->shardRotationIdx];
#endif
    }
}

static inline s32 AreaMapSearchNextAreaAscending(struct AreaMap* areamap) {
    s32 newAreaId, oldAreaId;
    oldAreaId = newAreaId = areamap->cameraBg2.areaId;
    do {
        newAreaId++;
        if (newAreaId > AREA_CANDY_CONSTELLATION) newAreaId = AREA_RAINBOW_ROUTE;
    } while (areamap->visibility[newAreaId] == AREAMAP_UNVISITED && newAreaId != oldAreaId);
    return newAreaId;
}

static inline s32 AreaMapSearchNextAreaDescending(struct AreaMap* areamap) {
    s32 newAreaId, oldAreaId;
    oldAreaId = newAreaId = areamap->cameraBg2.areaId;
    do {
        newAreaId--;
        if (newAreaId < AREA_RAINBOW_ROUTE) newAreaId = AREA_CANDY_CONSTELLATION;
    } while (areamap->visibility[newAreaId] == AREAMAP_UNVISITED && newAreaId != oldAreaId);
    return newAreaId;
}

static void AreaMapMain(void) {
    s32 playerOrAreaId;
    u16 pressedKeys;
    u16 UNUSED heldKeys;
    struct AreaMap *areamap, *tmp;
    areamap = tmp = TaskGetStructPtr(gCurTask);

    if (gPauseMenus[0].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[1].flags & MENU_FLAG_BACK_TO_GAME ||
        gPauseMenus[2].flags & MENU_FLAG_BACK_TO_GAME || gPauseMenus[3].flags & MENU_FLAG_BACK_TO_GAME) {
        m4aSongNumStart(SE_08D5AEC0);
        sub_08124EC8();
        gCurTask->main = AreaMapToGame;
        AreaMapUpdateDynamics(areamap);
        return;
    }

    // Switch to next area map
    if (areamap->gotoNextAreaMap) {
        if (areamap->nextAreaMapCounter++ > 8) {
            s32 nextAreaId;

            areamap->nextAreaMapCounter = 0;
            nextAreaId = areamap->gotoNextAreaMap == 1 ? AreaMapSearchNextAreaAscending(areamap) : AreaMapSearchNextAreaDescending(areamap);
            playerOrAreaId = (u8)nextAreaId;
            if (playerOrAreaId) {
                ++playerOrAreaId;
                --playerOrAreaId;
            }
            areamap->cameraBg2.areaId = playerOrAreaId;

            AreaMapCameraInitPosition(areamap);
            (&areamap->cameraBg2)->flags |= 0x0001;
            sub_0803D2A8(0, 0xff);
            sub_0803D280(0x80, 0x7f);
            AreaMapTextLabelInit(areamap);
            AreaMapBGInit(areamap);
            AreaMapRoomsInit(areamap);
            playerOrAreaId = areamap->cameraBg2.areaId;
            AreaMapEnableUI(playerOrAreaId, areamap->visibility[playerOrAreaId]);
            areamap->gotoNextAreaMap = 0;
        }
        AreaMapUpdateDynamics(areamap);
        return;
    }

    // Process inputs
    heldKeys = gPauseMenus[gUnk_0203AD3C].heldKeys;
    pressedKeys = gPauseMenus[gUnk_0203AD3C].pressedKeys;
    if (areamap->visibility[areamap->cameraBg2.areaId] == AREAMAP_FOUND_MAP) {
        if (gPauseMenus[gUnk_0203AD3C].heldKeys & DPAD_UP) {
            areamap->cameraBg2.y -= 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }
        else if (gPauseMenus[gUnk_0203AD3C].heldKeys & DPAD_DOWN) {
            areamap->cameraBg2.y += 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }

        if (gPauseMenus[gUnk_0203AD3C].heldKeys & DPAD_RIGHT) {
            areamap->cameraBg2.x += 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }
        else if (gPauseMenus[gUnk_0203AD3C].heldKeys & DPAD_LEFT) {
            areamap->cameraBg2.x -= 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }

        if (pressedKeys & A_BUTTON) {
            if (!areamap->cameraBg2.doZoom) {
                if (areamap->cameraBg2.zoomUnlockedAreas == 0x0100) {
                    areamap->cameraBg2.doZoom = -1;
                }
                else {
                    areamap->cameraBg2.doZoom = 1;
                }
            }
            else {
                areamap->cameraBg2.doZoom *= -1;
            }
        }

        if (areamap->cameraBg2.doZoom) {
            if (areamap->cameraBg2.doZoom == -1) {
                areamap->cameraBg2.zoomUnlockedAreas -= 0x10;
                if (areamap->cameraBg2.zoomUnlockedAreas == 0x80) {
                    areamap->cameraBg2.doZoom = 0;
                }
            }
            else {
                areamap->cameraBg2.zoomUnlockedAreas += 0x10;
                if (areamap->cameraBg2.zoomUnlockedAreas == 0x100) {
                    areamap->cameraBg2.doZoom = 0;
                }
            }

            areamap->cameraBg2.zoomEffective = areamap->cameraBg2.zoomUnlockedAreas;
            (&areamap->cameraBg2)->flags |= 0x0001;
            if (!areamap->cameraBg2.doZoom) {
                gPauseMenus[gUnk_0203AD3C].zoomAreaMap = areamap->cameraBg2.zoomUnlockedAreas / 0x10;
            }
        }
    }

    // Prepare switching to next area, if menu flags have been set in PauseMenuMain()
    if (areamap->kirbySprites[gUnk_0203AD3C].areaId && (gPauseMenus[gUnk_0203AD3C].flags & (MENU_FLAG_AREA_DESCEND | MENU_FLAG_AREA_ASCEND))) {
        if (gPauseMenus[gUnk_0203AD3C].flags & MENU_FLAG_AREA_ASCEND) {
            areamap->gotoNextAreaMap = 1;
        }
        else {
            areamap->gotoNextAreaMap = -1;
        }
        for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {
            gPauseMenus[playerOrAreaId].flags &= ~(MENU_FLAG_AREA_DESCEND | MENU_FLAG_AREA_ASCEND);
        }
        sub_08128BEC(0x20, 1, 2);
    }

    AreaMapUpdateDynamics(areamap);

    // Prepare switching to next menu, if gPauseMenus::menuId was changed in PauseMenuMain()
    for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {  // playerId
        if (gPauseMenus[playerOrAreaId].flags & MENU_FLAG_CURRENT_PLAYER &&
            (gPauseMenus[playerOrAreaId].menuId == MENU_HELP || gPauseMenus[playerOrAreaId].menuId == MENU_WORLDMAP)) {
            areamap->nextMenuId = gPauseMenus[playerOrAreaId].menuId;
            CreatePauseFade(0x20, 1);
            gCurTask->main = AreaMapToNextMenu;
        }
    }
}

enum KirbyRoomFlagIndices GetKirbyRoomFlagIndex(u32 playerId) {
    s32 roomInfoIdx;
    u16 playerRoomId = gKirbys[playerId].base.base.base.roomId;
    if (gUnk_08D6CD0C[playerRoomId]->unk46 == 9) {
        return KIRBY_IN_TUTORIAL_ROOM;
    }
    if (gUnk_08D6CD0C[playerRoomId]->unk46 == 10) {
        return KIRBY_IN_DIMENSION_MIRROR;
    }
    for (roomInfoIdx = 0; roomInfoIdx < (s32)ARRAY_COUNT(sAreaMapRoomInfos); roomInfoIdx++) {
        if (playerRoomId == sAreaMapRoomInfos[roomInfoIdx].roomId) {
            return KIRBY_IN_NORMAL_ROOM;
        }
    }
    return KIRBY_OUTSIDE_AREAMAP;
}
