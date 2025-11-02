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

static const u16 sAreaMapRoomsPalette[0x40] = {
    RGB(0, 18, 20) | 0x0000,  RGB_BLACK | 0x0000,       RGB(19, 6, 0) | 0x0000,  RGB(26, 12, 0) | 0x0000,  RGB(27, 19, 0) | 0x8000,
    RGB(29, 25, 6) | 0x8000,  RGB(31, 31, 12) | 0x0000, RGB_WHITE | 0x8000,      RGB(18, 6, 0) | 0x0000,   RGB(21, 8, 0) | 0x8000,
    RGB(24, 11, 0) | 0x0000,  RGB(27, 13, 0) | 0x8000,  RGB(31, 16, 0) | 0x8000, RGB(31, 23, 0) | 0x0000,  RGB_BLACK | 0x0000,
    RGB_BLACK | 0x0000,       RGB(0, 18, 20) | 0x0000,  RGB_BLACK | 0x0000,      RGB(3, 0, 22) | 0x0000,   RGB(18, 13, 31) | 0x0000,
    RGB(22, 20, 31) | 0x0000, RGB(26, 26, 31) | 0x8000, RGB(26, 2, 9) | 0x0000,  RGB(31, 14, 27) | 0x0000, RGB(31, 19, 26) | 0x8000,
    RGB(31, 25, 25) | 0x0000, RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,      RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,
    RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,       RGB(0, 18, 20) | 0x0000, RGB_BLACK | 0x0000,       RGB(19, 6, 0) | 0x0000,
    RGB(26, 12, 0) | 0x0000,  RGB(27, 19, 0) | 0x8000,  RGB(29, 25, 6) | 0x8000, RGB(31, 31, 12) | 0x0000, RGB_WHITE | 0x8000,
    RGB(18, 6, 0) | 0x0000,   RGB(21, 8, 0) | 0x8000,   RGB(24, 11, 0) | 0x0000, RGB(27, 13, 0) | 0x8000,  RGB(31, 16, 0) | 0x8000,
    RGB(31, 23, 0) | 0x0000,  RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,
};
static const u16 sAreaMapPadding[0x40] UNUSED = {0};

static const u32 sAreaMapRoomsTileset[] = INCBIN_U32("graphics/pause_menu/areamap_rooms/tileset.8bpp");

// TODO Later: use offsetof
static const u32 sAreaMapRoomsTilemapOffsets[NUM_AREA_IDS] = {
    0x0, 0x104, 0x604, 0x924, 0xc50, 0xfcc, 0x1324, 0x1638, 0x19b8, 0x1ccc, 0x1fe0,
};

// TODO Later: Separate tilemaps, implement FILESIZE macro in scaninc & preproc
// all rooms unvisited
static const u8 sAreaMapRoomsTilemap[] ALIGNED(4) = INCBIN_U8("graphics/pause_menu/areamap_rooms/area_tilemaps/all_unvisited.bin");

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
    [AREA_TUTORIAL] = 0x0,          [AREA_RAINBOW_ROUTE] = 0x0,        [AREA_MOONLIGHT_MANSION] = 0x33, [AREA_CABBAGE_CAVERN] = 0x4d,
    [AREA_MUSTARD_MOUNTAIN] = 0x62, [AREA_CARROT_CASTLE] = 0x7b,       [AREA_OLIVE_OCEAN] = 0x92,       [AREA_PEPPERMINT_PALACE] = 0xaf,
    [AREA_RADISH_RUINS] = 0xce,     [AREA_CANDY_CONSTELLATION] = 0xeb, [AREA_DIMENSION_MIRROR] = 0x107,
};

static const u8 sAreaMapRoomInfoLength[NUM_AREA_IDS] = {
    [AREA_TUTORIAL] = 0x00,         [AREA_RAINBOW_ROUTE] = 0x33,       [AREA_MOONLIGHT_MANSION] = 0x1a, [AREA_CABBAGE_CAVERN] = 0x15,
    [AREA_MUSTARD_MOUNTAIN] = 0x19, [AREA_CARROT_CASTLE] = 0x17,       [AREA_OLIVE_OCEAN] = 0x1d,       [AREA_PEPPERMINT_PALACE] = 0x1f,
    [AREA_RADISH_RUINS] = 0x1d,     [AREA_CANDY_CONSTELLATION] = 0x1c, [AREA_DIMENSION_MIRROR] = 0x00,
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

static const struct AreaMapRoomInfo gAreaMapRoomInfos[] = {
#include "data/pause_menu/areamap_room_infos.h"
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

static const u8 sAreaMapTilemapEntriesMapRoom[1][4][4] = {{
    {0x80, 0x81, 0x82, 0x83},
    {0x84, 0x85, 0x86, 0x87},
    {0x88, 0x89, 0x8a, 0x8b},
    {0x8c, 0x8d, 0x8e, 0x8f},
}};

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

static const u8 sAreaMapNormalRoomKirbyOffsets[] = {2, 2, 14, 2, 2, 14, 14, 14};
static const u8 sAreaMapBigRoomKirbyOffsets[] = {8, 12, 24, 12, 8, 28, 24, 28};

extern const u32* const gAreaMapBGTilesets[NUM_AREA_IDS];

// Array of pointers to palettes with 0x200 bytes size (except for last index, that's NULL)
// Only the last 0x100 bytes seem to be used for each
// The first 0x100 bytes look like copies for non-pulsing rooms and arrows
extern const u16* const gAreaMapBGPalette[NUM_AREA_IDS];

extern const u16 gAreaMapMapRoomPalette[NUM_AREA_IDS - 1][5];
extern const u16 gAreaMapShardPalette[0xa];
extern const u32 gAreaMapShardTileset[4][0x40];
extern const u32 gAreaMapMapRoomTileset[0x100];
extern const u16 gAreaMapRoomIdsAndShards[0xa][3];           // Indices per area: 0 - MapRoom, 1 - BossRoom, 2 - Shardnum
extern const u8 gAreaMapShardTilesetIndicesAndTimers[0x1c];  // Every pair of entries signifies one state and one timer for this state

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
    for (roomInfoIdx = 0; roomInfoIdx < ARRAY_COUNT(gAreaMapRoomInfos); roomInfoIdx++) {
        if (roomId == gAreaMapRoomInfos[roomInfoIdx].roomId) {
            return gAreaMapRoomInfos + roomInfoIdx;
        }
    }
    return NULL;
}

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

static void AreaMapRoomsChooseTile(struct AreaMap* areamap) {
    u32 i;
    enum AreaId areaId = areamap->cameraBg2.areaId;
    u32 roomInfoIdx = sAreaMapRoomInfoOffset[areaId];
    bool32 foundMap = HasBigChest(areaId);

    for (i = 0; i < sAreaMapRoomInfoLength[areaId]; roomInfoIdx++, i++) {
        u16 roomId = gAreaMapRoomInfos[roomInfoIdx].roomId;

        enum AreaMapRoomCompletion roomCompletion = AREAMAP_ROOM_UNVISITED;
        if (sub_08002A5C(roomId)) {
            roomCompletion = AREAMAP_ROOM_VISITED;
            if (sub_08002AAC(roomId) == sub_08002AD0(roomId)) {
                roomCompletion = AREAMAP_ROOM_COMPLETED;
            }
        }

        if (gAreaMapRoomIdsAndShards[areaId][0] == roomId && areamap->visibility[areaId] != AREAMAP_FOUND_MAP) {
            AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesMapRoom[0][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                         gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesMapRoom[0][0]));
        }
        else if (gAreaMapRoomIdsAndShards[areaId][1] == roomId && areamap->visibility[areaId] == AREAMAP_FOUND_MAP &&
                 !HasShard(gAreaMapRoomIdsAndShards[areaId][2])) {
            AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesShardRoom[roomCompletion][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                         gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesShardRoom[0][0]));
        }
        else if (!foundMap && roomCompletion == AREAMAP_ROOM_UNVISITED) {
            continue;
        }
        else
            switch (gAreaMapRoomInfos[roomInfoIdx].type) {
            case AREAMAP_ROOM_NORMAL:
                AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesNormalRoom[roomCompletion][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                             gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesNormalRoom[0][0]));
                break;
            case AREAMAP_ROOM_BIG:
                AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesBigRoom[roomCompletion][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                             gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesBigRoom[0][0]));
                break;
            case AREAMAP_ROOM_STAR:
                AreaMapRoomsOverwriteTilemap(sAreaMapTilemapEntriesStarRoom[roomCompletion][0], gAreaMapRoomInfos[roomInfoIdx].tileStartColumn,
                                             gAreaMapRoomInfos[roomInfoIdx].tileStartRow, ARRAY_COUNT(sAreaMapTilemapEntriesStarRoom[0][0]));
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
        RLUnCompVram(sAreaMapRoomsTilemap + sAreaMapRoomsTilemapOffsets[areamap->cameraBg2.areaId], BG_SCREEN_ADDR(24));
    }
    else {
        RLUnCompVram(sAreaMapRoomsTilemap + sAreaMapRoomsTilemapOffsets[AREA_TUTORIAL], BG_SCREEN_ADDR(24));
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

    // Checks, whether at least one room of an area has already been visited
    for (playerOrAreaId = 0; playerOrAreaId < (s32)ARRAY_COUNT(areamap->visibility); playerOrAreaId++) {
        s32 roomInfoIdx;
        areamap->visibility[playerOrAreaId] = AREAMAP_UNVISITED;
        id = sAreaMapRoomInfoOffset[playerOrAreaId];  // base index
        for (roomInfoIdx = 0; roomInfoIdx < sAreaMapRoomInfoLength[playerOrAreaId]; roomInfoIdx++) {
            if (sub_08002A5C(gAreaMapRoomInfos[id + roomInfoIdx].roomId)) {
                areamap->visibility[playerOrAreaId] = AREAMAP_NO_MAP;
                break;
            }
        }
        if (HasBigChest(playerOrAreaId)) {
            areamap->visibility[playerOrAreaId] = AREAMAP_FOUND_MAP;
        }
    }

    numVisitedAreas = 0;
    for (playerOrAreaId = 1; playerOrAreaId < (s32)ARRAY_COUNT(areamap->visibility); playerOrAreaId++) {
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
    for (id = 0; id < gUnk_0203AD44; id++) {  // playerIds
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
        LoadBgPaletteWithTransformation(sAreaMapRoomsPalette, 0, ARRAY_COUNT(sAreaMapRoomsPalette));
    }
    else {
        DmaCopy16(3, sAreaMapRoomsPalette, gBgPalette, sizeof(sAreaMapRoomsPalette));
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

    CpuCopy32(sAreaMapRoomsTileset, (void*)VRAM, sizeof(sAreaMapRoomsTileset));
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
    u16 UNUSED input;
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

    input = gPauseMenus[gUnk_0203AD3C].input;
    pressedKeys = gPauseMenus[gUnk_0203AD3C].pressedKeys;
    if (areamap->visibility[areamap->cameraBg2.areaId] == AREAMAP_FOUND_MAP) {
        if (gPauseMenus[gUnk_0203AD3C].input & DPAD_UP) {
            areamap->cameraBg2.y -= 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }
        else if (gPauseMenus[gUnk_0203AD3C].input & DPAD_DOWN) {
            areamap->cameraBg2.y += 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }

        if (gPauseMenus[gUnk_0203AD3C].input & DPAD_RIGHT) {
            areamap->cameraBg2.x += 4;
            (&areamap->cameraBg2)->flags |= 0x0001;
        }
        else if (gPauseMenus[gUnk_0203AD3C].input & DPAD_LEFT) {
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

    for (playerOrAreaId = 0; playerOrAreaId < 4; playerOrAreaId++) {
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
    for (roomInfoIdx = 0; roomInfoIdx < (s32)ARRAY_COUNT(gAreaMapRoomInfos); roomInfoIdx++) {
        if (playerRoomId == gAreaMapRoomInfos[roomInfoIdx].roomId) {
            return KIRBY_IN_NORMAL_ROOM;
        }
    }
    return KIRBY_OUTSIDE_AREAMAP;
}
