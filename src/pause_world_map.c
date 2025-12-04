#include "pause_world_map.h"
#include "code_0801DA58.h"
#include "constants/languages.h"
#include "functions.h"
#include "kirby.h"
#include "palette.h"
#include "pause_area_map.h"
#include "pause_fade.h"
#include "pause_help.h"
#include "save.h"
#include "subgames.h"

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

enum WorldMapLineFlags {
    LINE_FLAG_CENTRAL_HALL_IS_DEST = 0x01,
    LINE_FLAG_LINE_DRAW_COMPLETED = 0x02
};

enum WorldMapKirbyDrawFlags {
    WORLDMAP_KIRBY_DRAW_NO_SPRITE = 0x0001,
    WORLDMAP_KIRBY_DRAW_NO_ACCESSORY = 0x0002
};

enum WorldMapDoorNumDots {
    DOOR_NUM_DOTS_NO_UNLOCK = 0,
    DOOR_NUM_DOTS_MOONLIGHT_MANSION = 1,
    DOOR_NUM_DOTS_RAINBOW_ROUTE_EAST = 2,
    DOOR_NUM_DOTS_RAINBOW_ROUTE_SOUTH = 2,
    DOOR_NUM_DOTS_CABBAGE_CAVERN_CENTER = 2,
    DOOR_NUM_DOTS_RAINBOW_ROUTE_WEST = 1,
    DOOR_NUM_DOTS_CARROT_CASTLE = 2,
    DOOR_NUM_DOTS_RAINBOW_ROUTE_NORTH = 3,
    DOOR_NUM_DOTS_MUSTARD_MOUNTAIN = 2,
    DOOR_NUM_DOTS_CABBAGE_CAVERN_WEST = 3,
    DOOR_NUM_DOTS_RADISH_RUINS = 2,
    DOOR_NUM_DOTS_PEPPERMINT_PALACE_EAST = 2,
    DOOR_NUM_DOTS_PEPPERMINT_PALACE_WEST = 4,
    DOOR_NUM_DOTS_CABBAGE_CAVERN_EAST = 4,
    DOOR_NUM_DOTS_OLIVE_OCEAN = 3,
    DOOR_NUM_DOTS_CANDY_CONSTELLATION = 6,
};

enum WorldMapDotDoorCounts {
    DOOR_DOT_COUNT_NO_UNLOCK = 0,
    DOOR_DOT_COUNT_MOONLIGHT_MANSION = 4,
    DOOR_DOT_COUNT_RAINBOW_ROUTE_EAST = 6,
    DOOR_DOT_COUNT_RAINBOW_ROUTE_SOUTH = 3,
    DOOR_DOT_COUNT_CABBAGE_CAVERN_CENTER = 4,
    DOOR_DOT_COUNT_RAINBOW_ROUTE_WEST = 3,
    DOOR_DOT_COUNT_CARROT_CASTLE = 3,
    DOOR_DOT_COUNT_RAINBOW_ROUTE_NORTH = 4,
    DOOR_DOT_COUNT_MUSTARD_MOUNTAIN = 4,
    DOOR_DOT_COUNT_CABBAGE_CAVERN_WEST = 6,
    DOOR_DOT_COUNT_RADISH_RUINS = 4,
    DOOR_DOT_COUNT_PEPPERMINT_PALACE_EAST = 4,
    DOOR_DOT_COUNT_PEPPERMINT_PALACE_WEST = 9,
    DOOR_DOT_COUNT_CABBAGE_CAVERN_EAST = 8,
    DOOR_DOT_COUNT_OLIVE_OCEAN = 6,
    DOOR_DOT_COUNT_CANDY_CONSTELLATION = 12,
};

/*
 * Used to terminate arrays of `WorldMapKirbysCoorByRoom` by setting this for `WorldMapKirbysCoorByRoom::roomId`.
 */
#define KIRBYS_COORS_TERMINATE 0

struct PACKED KirbyCoor {
    /* 0x00 */ u8 x;
    /* 0x01 */ u8 y;
}; /* size = 0x2 */

struct WorldMapKirbysCoorByRoom {
    /* 0x00 */ u32 roomId;
    /* 0x04 */ struct KirbyCoor kirbyCoor[4];
}; /* size = 0xC */

struct WorldMapLineCoor {
    /* 0x00 */ u8 unlockedDoorX;
    /* 0x01 */ u8 unlockedDoorY;
    /* 0x02 */ u8 destX;
    /* 0x03 */ u8 destY;
}; /* size = 0x4 */

struct WorldMapDotCoor {
    /* 0x00 */ u8 x;
    /* 0x01 */ u8 y;
}; /* size = 0x4 */

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
    /* 0x210 */ u8 nextMenuId;  // According to enum PauseMenuId
    /* 0x211 */ s8 closeCounter;
    /* 0x214 */ struct Task* worldmapLineTask;
}; /* size = 0x218 */

/*
 * Contiguous line segment tiles in the tilemap.
 * The number of line segments to each door is documented in `sWorldMapDoorNumLineEntries`.
 */
struct WorldMapLineEntries {
    /* 0x00 */ u16 tilemapIndex;
    /* 0x02 */ u16 length;  // in halfwords
}; /* size = 0x4 */

static const struct AnimInfo sUnk_08358D94[NUM_LANGUAGES][3] = {
    [LANGUAGE_JAPANESE] =
        {
            {0x379, 0x08, 0},
            {0x379, 0x09, 0},
            {0x379, 0x0a, 0},
        },
    [LANGUAGE_ENGLISH] =
        {
            {0x375, 0x08, 0},
            {0x375, 0x09, 0},
            {0x375, 0x0a, 0},
        },
    [LANGUAGE_GERMAN] =
        {
            {0x374, 0x08, 0},
            {0x374, 0x09, 0},
            {0x374, 0x0a, 0},
        },
    [LANGUAGE_FRENCH] =
        {
            {0x377, 0x08, 0},
            {0x377, 0x09, 0},
            {0x377, 0x0a, 0},
        },
    [LANGUAGE_SPANISH] =
        {
            {0x376, 0x08, 0},
            {0x376, 0x09, 0},
            {0x376, 0x0a, 0},
        },
    [LANGUAGE_ITALIAN] =
        {
            {0x378, 0x08, 0},
            {0x378, 0x09, 0},
            {0x378, 0x0a, 0},
        },
};

static const u8 sWorldMapUnusedData[] UNUSED = {
    0x60, 0x00, 0x18, 0x90, 0xa0, 0x90, 0x04, 0x34, 0x1b, 0x16, 0x1a, 0x18, 0x1e, 0x20, 0x1f, 0x1d, 0x15,
};

/*
 * Arrays held by `gWorldMapKirbysCoorsByArea`, which map rooms to world map coordinates of kirby sprites.
 */
const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorTutorial[] = {
    {.roomId = 0x323,
     .kirbyCoor =
         {
             {116, 84},
             {124, 84},
             {116, 91},
             {124, 91},
         }},
    {.roomId = 0x324,
     .kirbyCoor =
         {
             {116, 84},
             {124, 84},
             {116, 91},
             {124, 91},
         }},
    {.roomId = 0x325,
     .kirbyCoor =
         {
             {116, 84},
             {124, 84},
             {116, 91},
             {124, 91},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorRainbowRoute[] = {
    {.roomId = 0x65,
     .kirbyCoor =
         {
             {137, 87},
             {145, 87},
             {137, 94},
             {145, 94},
         }},
    {.roomId = 0x67,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x68,
     .kirbyCoor =
         {
             {137, 87},
             {145, 87},
             {137, 94},
             {145, 94},
         }},
    {.roomId = 0x6a,
     .kirbyCoor =
         {
             {137, 87},
             {145, 87},
             {137, 94},
             {145, 94},
         }},
    {.roomId = 0x6b,
     .kirbyCoor =
         {
             {137, 87},
             {145, 87},
             {137, 94},
             {145, 94},
         }},
    {.roomId = 0x6c,
     .kirbyCoor =
         {
             {137, 87},
             {145, 87},
             {137, 94},
             {145, 94},
         }},
    {.roomId = 0x6e,
     .kirbyCoor =
         {
             {134, 103},
             {142, 103},
             {134, 110},
             {142, 110},
         }},
    {.roomId = 0x73,
     .kirbyCoor =
         {
             {101, 78},
             {109, 78},
             {101, 85},
             {109, 85},
         }},
    {.roomId = 0x75,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0x76,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0x77,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0x7e,
     .kirbyCoor =
         {
             {115, 99},
             {123, 99},
             {115, 106},
             {123, 106},
         }},
    {.roomId = 0x7f,
     .kirbyCoor =
         {
             {115, 99},
             {123, 99},
             {115, 106},
             {123, 106},
         }},
    {.roomId = 0x88,
     .kirbyCoor =
         {
             {115, 99},
             {123, 99},
             {115, 106},
             {123, 106},
         }},
    {.roomId = 0x89,
     .kirbyCoor =
         {
             {134, 103},
             {142, 103},
             {134, 110},
             {142, 110},
         }},
    {.roomId = 0x8a,
     .kirbyCoor =
         {
             {105, 69},
             {113, 69},
             {102, 76},
             {113, 76},
         }},
    {.roomId = 0x8b,
     .kirbyCoor =
         {
             {101, 78},
             {109, 78},
             {101, 85},
             {109, 85},
         }},
    {.roomId = 0x8c,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x8d,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x8e,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x8f,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0xab,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0xac,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0xad,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0xae,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0xaf,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0xb0,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0xb1,
     .kirbyCoor =
         {
             {105, 69},
             {113, 69},
             {102, 76},
             {113, 76},
         }},
    {.roomId = 0xb2,
     .kirbyCoor =
         {
             {105, 69},
             {113, 69},
             {102, 76},
             {113, 76},
         }},
    {.roomId = 0xbe,
     .kirbyCoor =
         {
             {152, 89},
             {160, 89},
             {152, 96},
             {160, 96},
         }},
    {.roomId = 0xc0,
     .kirbyCoor =
         {
             {88, 89},
             {96, 89},
             {88, 96},
             {96, 96},
         }},
    {.roomId = 0xc2,
     .kirbyCoor =
         {
             {112, 113},
             {120, 113},
             {112, 120},
             {120, 120},
         }},
    {.roomId = 0x1f7,
     .kirbyCoor =
         {
             {134, 103},
             {142, 103},
             {134, 110},
             {142, 110},
         }},
    {.roomId = 0x1f8,
     .kirbyCoor =
         {
             {100, 102},
             {108, 102},
             {100, 109},
             {108, 109},
         }},
    {.roomId = 0x1fb,
     .kirbyCoor =
         {
             {134, 103},
             {142, 103},
             {134, 110},
             {142, 110},
         }},
    {.roomId = 0x214,
     .kirbyCoor =
         {
             {108, 58},
             {116, 58},
             {108, 65},
             {116, 65},
         }},
    {.roomId = 0x216,
     .kirbyCoor =
         {
             {135, 62},
             {143, 62},
             {135, 69},
             {143, 69},
         }},
    {.roomId = 0x217,
     .kirbyCoor =
         {
             {135, 62},
             {143, 62},
             {135, 69},
             {143, 69},
         }},
    {.roomId = 0x218,
     .kirbyCoor =
         {
             {135, 62},
             {143, 62},
             {135, 69},
             {143, 69},
         }},
    {.roomId = 0x219,
     .kirbyCoor =
         {
             {135, 62},
             {143, 62},
             {135, 69},
             {143, 69},
         }},
    {.roomId = 0x21a,
     .kirbyCoor =
         {
             {135, 62},
             {143, 62},
             {135, 69},
             {143, 69},
         }},
    {.roomId = 0x21e,
     .kirbyCoor =
         {
             {135, 62},
             {143, 62},
             {135, 69},
             {143, 69},
         }},
    {.roomId = 0x21f,
     .kirbyCoor =
         {
             {149, 64},
             {157, 64},
             {149, 71},
             {157, 71},
         }},
    {.roomId = 0x22a,
     .kirbyCoor =
         {
             {153, 105},
             {161, 105},
             {153, 112},
             {161, 112},
         }},
    {.roomId = 0x22b,
     .kirbyCoor =
         {
             {153, 105},
             {161, 105},
             {153, 112},
             {161, 112},
         }},
    {.roomId = 0x22c,
     .kirbyCoor =
         {
             {153, 105},
             {161, 105},
             {153, 112},
             {161, 112},
         }},
    {.roomId = 0x22d,
     .kirbyCoor =
         {
             {153, 105},
             {161, 105},
             {153, 112},
             {161, 112},
         }},
    {.roomId = 0x23a,
     .kirbyCoor =
         {
             {108, 58},
             {116, 58},
             {108, 65},
             {116, 65},
         }},
    {.roomId = 0x23b,
     .kirbyCoor =
         {
             {108, 58},
             {116, 58},
             {108, 65},
             {116, 65},
         }},
    {.roomId = 0x24e,
     .kirbyCoor =
         {
             {119, 49},
             {127, 49},
             {119, 56},
             {127, 56},
         }},
    {.roomId = 0x321,
     .kirbyCoor =
         {
             {116, 84},
             {124, 84},
             {116, 91},
             {124, 91},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorMoonlightMansion[] = {
    {.roomId = 0x90,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x91,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x92,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x93,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x94,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x95,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0xb4,
     .kirbyCoor =
         {
             {197, 103},
             {205, 103},
             {197, 110},
             {205, 110},
         }},
    {.roomId = 0xc3,
     .kirbyCoor =
         {
             {152, 76},
             {160, 76},
             {152, 83},
             {160, 83},
         }},
    {.roomId = 0x2bc,
     .kirbyCoor =
         {
             {197, 84},
             {205, 84},
             {197, 91},
             {205, 91},
         }},
    {.roomId = 0x2be,
     .kirbyCoor =
         {
             {168, 73},
             {176, 73},
             {168, 80},
             {176, 80},
         }},
    {.roomId = 0x2c0,
     .kirbyCoor =
         {
             {178, 87},
             {186, 87},
             {178, 94},
             {186, 94},
         }},
    {.roomId = 0x2c1,
     .kirbyCoor =
         {
             {185, 58},
             {193, 58},
             {185, 65},
             {193, 65},
         }},
    {.roomId = 0x2c2,
     .kirbyCoor =
         {
             {168, 73},
             {176, 73},
             {168, 80},
             {176, 80},
         }},
    {.roomId = 0x2c3,
     .kirbyCoor =
         {
             {168, 73},
             {176, 73},
             {168, 80},
             {176, 80},
         }},
    {.roomId = 0x2c4,
     .kirbyCoor =
         {
             {168, 73},
             {176, 73},
             {168, 80},
             {176, 80},
         }},
    {.roomId = 0x2c5,
     .kirbyCoor =
         {
             {168, 73},
             {176, 73},
             {168, 80},
             {176, 80},
         }},
    {.roomId = 0x2c6,
     .kirbyCoor =
         {
             {197, 84},
             {205, 84},
             {197, 91},
             {205, 91},
         }},
    {.roomId = 0x2c7,
     .kirbyCoor =
         {
             {197, 84},
             {205, 84},
             {197, 91},
             {205, 91},
         }},
    {.roomId = 0x2c8,
     .kirbyCoor =
         {
             {185, 58},
             {193, 58},
             {185, 65},
             {193, 65},
         }},
    {.roomId = 0x2e4,
     .kirbyCoor =
         {
             {168, 73},
             {176, 73},
             {168, 80},
             {176, 80},
         }},
    {.roomId = 0x2e5,
     .kirbyCoor =
         {
             {185, 58},
             {193, 58},
             {185, 65},
             {193, 65},
         }},
    {.roomId = 0x2e6,
     .kirbyCoor =
         {
             {185, 58},
             {193, 58},
             {185, 65},
             {193, 65},
         }},
    {.roomId = 0x2e7,
     .kirbyCoor =
         {
             {178, 87},
             {186, 87},
             {178, 94},
             {186, 94},
         }},
    {.roomId = 0x2e8,
     .kirbyCoor =
         {
             {178, 87},
             {186, 87},
             {178, 94},
             {186, 94},
         }},
    {.roomId = 0x2e9,
     .kirbyCoor =
         {
             {178, 87},
             {186, 87},
             {178, 94},
             {186, 94},
         }},
    {.roomId = 0x316,
     .kirbyCoor =
         {
             {168, 73},
             {176, 73},
             {168, 80},
             {176, 80},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorCabbageCavern[] = {
    {.roomId = 0xbf,
     .kirbyCoor =
         {
             {167, 121},
             {175, 121},
             {167, 128},
             {175, 128},
         }},
    {.roomId = 0x1f4,
     .kirbyCoor =
         {
             {106, 139},
             {114, 139},
             {106, 146},
             {114, 146},
         }},
    {.roomId = 0x1f5,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x1fc,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x1fd,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x1fe,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x1ff,
     .kirbyCoor =
         {
             {147, 132},
             {155, 132},
             {147, 139},
             {155, 139},
         }},
    {.roomId = 0x200,
     .kirbyCoor =
         {
             {147, 132},
             {155, 132},
             {147, 139},
             {155, 139},
         }},
    {.roomId = 0x201,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x202,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x203,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x204,
     .kirbyCoor =
         {
             {106, 139},
             {114, 139},
             {106, 146},
             {114, 146},
         }},
    {.roomId = 0x205,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x20b,
     .kirbyCoor =
         {
             {147, 132},
             {155, 132},
             {147, 139},
             {155, 139},
         }},
    {.roomId = 0x20f,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x210,
     .kirbyCoor =
         {
             {111, 131},
             {119, 131},
             {111, 138},
             {119, 138},
         }},
    {.roomId = 0x211,
     .kirbyCoor =
         {
             {147, 132},
             {155, 132},
             {147, 139},
             {155, 139},
         }},
    {.roomId = 0x212,
     .kirbyCoor =
         {
             {147, 132},
             {155, 132},
             {147, 139},
             {155, 139},
         }},
    {.roomId = 0x213,
     .kirbyCoor =
         {
             {147, 132},
             {155, 132},
             {147, 139},
             {155, 139},
         }},
    {.roomId = 0x24f,
     .kirbyCoor =
         {
             {128, 137},
             {136, 137},
             {128, 144},
             {136, 144},
         }},
    {.roomId = 0x250,
     .kirbyCoor =
         {
             {80, 121},
             {88, 121},
             {80, 128},
             {88, 128},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorMustardMountain[] = {
    {.roomId = 0x12c,
     .kirbyCoor =
         {
             {131, 11},
             {139, 11},
             {131, 18},
             {139, 18},
         }},
    {.roomId = 0x130,
     .kirbyCoor =
         {
             {131, 11},
             {139, 11},
             {131, 18},
             {139, 18},
         }},
    {.roomId = 0x134,
     .kirbyCoor =
         {
             {157, 23},
             {165, 23},
             {157, 30},
             {165, 30},
         }},
    {.roomId = 0x136,
     .kirbyCoor =
         {
             {126, 36},
             {134, 36},
             {126, 43},
             {134, 43},
         }},
    {.roomId = 0x138,
     .kirbyCoor =
         {
             {113, 17},
             {121, 17},
             {113, 24},
             {121, 24},
         }},
    {.roomId = 0x139,
     .kirbyCoor =
         {
             {113, 17},
             {121, 17},
             {113, 24},
             {121, 24},
         }},
    {.roomId = 0x13b,
     .kirbyCoor =
         {
             {131, 11},
             {139, 11},
             {131, 18},
             {139, 18},
         }},
    {.roomId = 0x13c,
     .kirbyCoor =
         {
             {131, 11},
             {139, 11},
             {131, 18},
             {139, 18},
         }},
    {.roomId = 0x13d,
     .kirbyCoor =
         {
             {116, 32},
             {124, 32},
             {116, 39},
             {124, 39},
         }},
    {.roomId = 0x13e,
     .kirbyCoor =
         {
             {113, 17},
             {121, 17},
             {113, 24},
             {121, 24},
         }},
    {.roomId = 0x141,
     .kirbyCoor =
         {
             {157, 23},
             {165, 23},
             {157, 30},
             {165, 30},
         }},
    {.roomId = 0x142,
     .kirbyCoor =
         {
             {131, 11},
             {139, 11},
             {131, 18},
             {139, 18},
         }},
    {.roomId = 0x143,
     .kirbyCoor =
         {
             {131, 11},
             {139, 11},
             {131, 18},
             {139, 18},
         }},
    {.roomId = 0x144,
     .kirbyCoor =
         {
             {131, 11},
             {139, 11},
             {131, 18},
             {139, 18},
         }},
    {.roomId = 0x145,
     .kirbyCoor =
         {
             {116, 32},
             {124, 32},
             {116, 39},
             {124, 39},
         }},
    {.roomId = 0x146,
     .kirbyCoor =
         {
             {113, 17},
             {121, 17},
             {113, 24},
             {121, 24},
         }},
    {.roomId = 0x186,
     .kirbyCoor =
         {
             {136, 24},
             {144, 24},
             {136, 31},
             {144, 31},
         }},
    {.roomId = 0x215,
     .kirbyCoor =
         {
             {116, 32},
             {124, 32},
             {116, 39},
             {124, 39},
         }},
    {.roomId = 0x21b,
     .kirbyCoor =
         {
             {126, 36},
             {134, 36},
             {126, 43},
             {134, 43},
         }},
    {.roomId = 0x21c,
     .kirbyCoor =
         {
             {126, 36},
             {134, 36},
             {126, 43},
             {134, 43},
         }},
    {.roomId = 0x21d,
     .kirbyCoor =
         {
             {157, 23},
             {165, 23},
             {157, 30},
             {165, 30},
         }},
    {.roomId = 0x220,
     .kirbyCoor =
         {
             {157, 23},
             {165, 23},
             {157, 30},
             {165, 30},
         }},
    {.roomId = 0x221,
     .kirbyCoor =
         {
             {157, 23},
             {165, 23},
             {157, 30},
             {165, 30},
         }},
    {.roomId = 0x222,
     .kirbyCoor =
         {
             {157, 23},
             {165, 23},
             {157, 30},
             {165, 30},
         }},
    {.roomId = 0x223,
     .kirbyCoor =
         {
             {157, 23},
             {165, 23},
             {157, 30},
             {165, 30},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorCarrotCastle[] = {
    {.roomId = 0x78,
     .kirbyCoor =
         {
             {80, 75},
             {88, 75},
             {80, 82},
             {88, 82},
         }},
    {.roomId = 0x79,
     .kirbyCoor =
         {
             {80, 75},
             {88, 75},
             {80, 82},
             {88, 82},
         }},
    {.roomId = 0x7a,
     .kirbyCoor =
         {
             {80, 75},
             {88, 75},
             {80, 82},
             {88, 82},
         }},
    {.roomId = 0xaa,
     .kirbyCoor =
         {
             {56, 93},
             {64, 93},
             {56, 100},
             {64, 100},
         }},
    {.roomId = 0xb5,
     .kirbyCoor =
         {
             {60, 105},
             {68, 105},
             {60, 112},
             {68, 112},
         }},
    {.roomId = 0xc1,
     .kirbyCoor =
         {
             {64, 81},
             {72, 81},
             {64, 88},
             {72, 88},
         }},
    {.roomId = 0xe2,
     .kirbyCoor =
         {
             {89, 68},
             {97, 68},
             {89, 75},
             {97, 75},
         }},
    {.roomId = 0x258,
     .kirbyCoor =
         {
             {44, 83},
             {52, 83},
             {44, 90},
             {52, 90},
         }},
    {.roomId = 0x2ca,
     .kirbyCoor =
         {
             {44, 83},
             {52, 83},
             {44, 90},
             {52, 90},
         }},
    {.roomId = 0x2cc,
     .kirbyCoor =
         {
             {54, 62},
             {62, 62},
             {54, 69},
             {62, 69},
         }},
    {.roomId = 0x2cd,
     .kirbyCoor =
         {
             {54, 62},
             {62, 62},
             {54, 69},
             {62, 69},
         }},
    {.roomId = 0x2cf,
     .kirbyCoor =
         {
             {54, 62},
             {62, 62},
             {54, 69},
             {62, 69},
         }},
    {.roomId = 0x2d0,
     .kirbyCoor =
         {
             {54, 62},
             {62, 62},
             {54, 69},
             {62, 69},
         }},
    {.roomId = 0x2da,
     .kirbyCoor =
         {
             {54, 62},
             {62, 62},
             {54, 69},
             {62, 69},
         }},
    {.roomId = 0x2db,
     .kirbyCoor =
         {
             {54, 62},
             {62, 62},
             {54, 69},
             {62, 69},
         }},
    {.roomId = 0x2dc,
     .kirbyCoor =
         {
             {54, 62},
             {62, 62},
             {54, 69},
             {62, 69},
         }},
    {.roomId = 0x2dd,
     .kirbyCoor =
         {
             {54, 62},
             {62, 62},
             {54, 69},
             {62, 69},
         }},
    {.roomId = 0x2de,
     .kirbyCoor =
         {
             {54, 62},
             {62, 62},
             {54, 69},
             {62, 69},
         }},
    {.roomId = 0x2df,
     .kirbyCoor =
         {
             {44, 83},
             {52, 83},
             {44, 90},
             {52, 90},
         }},
    {.roomId = 0x2e0,
     .kirbyCoor =
         {
             {44, 83},
             {52, 83},
             {44, 90},
             {52, 90},
         }},
    {.roomId = 0x2e1,
     .kirbyCoor =
         {
             {44, 83},
             {52, 83},
             {44, 90},
             {52, 90},
         }},
    {.roomId = 0x2e2,
     .kirbyCoor =
         {
             {44, 83},
             {52, 83},
             {44, 90},
             {52, 90},
         }},
    {.roomId = 0x2e3,
     .kirbyCoor =
         {
             {44, 83},
             {52, 83},
             {44, 90},
             {52, 90},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorOliveOcean[] = {
    {.roomId = 0x82,
     .kirbyCoor =
         {
             {185, 125},
             {193, 125},
             {185, 132},
             {193, 132},
         }},
    {.roomId = 0x83,
     .kirbyCoor =
         {
             {185, 125},
             {193, 125},
             {185, 132},
             {193, 132},
         }},
    {.roomId = 0x84,
     .kirbyCoor =
         {
             {185, 125},
             {193, 125},
             {185, 132},
             {193, 132},
         }},
    {.roomId = 0x85,
     .kirbyCoor =
         {
             {185, 125},
             {193, 125},
             {185, 132},
             {193, 132},
         }},
    {.roomId = 0x86,
     .kirbyCoor =
         {
             {185, 125},
             {193, 125},
             {185, 132},
             {193, 132},
         }},
    {.roomId = 0x87,
     .kirbyCoor =
         {
             {185, 125},
             {193, 125},
             {185, 132},
             {193, 132},
         }},
    {.roomId = 0x227,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x229,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x320,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x322,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x32a,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x32b,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x32e,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x32f,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x330,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x333,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x335,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x336,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x337,
     .kirbyCoor =
         {
             {186, 135},
             {194, 135},
             {186, 142},
             {194, 142},
         }},
    {.roomId = 0x338,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x339,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x33a,
     .kirbyCoor =
         {
             {186, 135},
             {194, 135},
             {186, 142},
             {194, 142},
         }},
    {.roomId = 0x33b,
     .kirbyCoor =
         {
             {186, 135},
             {194, 135},
             {186, 142},
             {194, 142},
         }},
    {.roomId = 0x33c,
     .kirbyCoor =
         {
             {186, 135},
             {194, 135},
             {186, 142},
             {194, 142},
         }},
    {.roomId = 0x33d,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x33e,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x33f,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x340,
     .kirbyCoor =
         {
             {218, 147},
             {226, 147},
             {218, 154},
             {226, 154},
         }},
    {.roomId = 0x37a,
     .kirbyCoor =
         {
             {207, 135},
             {215, 135},
             {207, 142},
             {215, 142},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorPeppermintPalace[] = {
    {.roomId = 0xc8,
     .kirbyCoor =
         {
             {12, 47},
             {20, 47},
             {12, 54},
             {20, 54},
         }},
    {.roomId = 0xca,
     .kirbyCoor =
         {
             {89, 68},
             {97, 68},
             {89, 75},
             {97, 75},
         }},
    {.roomId = 0xcb,
     .kirbyCoor =
         {
             {62, 34},
             {70, 34},
             {62, 41},
             {70, 41},
         }},
    {.roomId = 0xcc,
     .kirbyCoor =
         {
             {62, 34},
             {70, 34},
             {62, 41},
             {70, 41},
         }},
    {.roomId = 0xcd,
     .kirbyCoor =
         {
             {79, 26},
             {87, 26},
             {79, 33},
             {87, 33},
         }},
    {.roomId = 0xce,
     .kirbyCoor =
         {
             {79, 26},
             {87, 26},
             {79, 33},
             {87, 33},
         }},
    {.roomId = 0xd0,
     .kirbyCoor =
         {
             {89, 68},
             {97, 68},
             {89, 75},
             {97, 75},
         }},
    {.roomId = 0xd1,
     .kirbyCoor =
         {
             {79, 26},
             {87, 26},
             {79, 33},
             {87, 33},
         }},
    {.roomId = 0xd2,
     .kirbyCoor =
         {
             {79, 26},
             {87, 26},
             {79, 33},
             {87, 33},
         }},
    {.roomId = 0xd3,
     .kirbyCoor =
         {
             {89, 68},
             {97, 68},
             {89, 75},
             {97, 75},
         }},
    {.roomId = 0xd4,
     .kirbyCoor =
         {
             {12, 47},
             {20, 47},
             {12, 54},
             {20, 54},
         }},
    {.roomId = 0xd6,
     .kirbyCoor =
         {
             {79, 26},
             {87, 26},
             {79, 33},
             {87, 33},
         }},
    {.roomId = 0xd7,
     .kirbyCoor =
         {
             {31, 16},
             {39, 16},
             {31, 23},
             {39, 23},
         }},
    {.roomId = 0xd8,
     .kirbyCoor =
         {
             {12, 47},
             {20, 47},
             {12, 54},
             {20, 54},
         }},
    {.roomId = 0xd9,
     .kirbyCoor =
         {
             {12, 47},
             {20, 47},
             {12, 54},
             {20, 54},
         }},
    {.roomId = 0xda,
     .kirbyCoor =
         {
             {12, 47},
             {20, 47},
             {12, 54},
             {20, 54},
         }},
    {.roomId = 0xdb,
     .kirbyCoor =
         {
             {12, 47},
             {20, 47},
             {12, 54},
             {20, 54},
         }},
    {.roomId = 0xdc,
     .kirbyCoor =
         {
             {62, 34},
             {70, 34},
             {62, 41},
             {70, 41},
         }},
    {.roomId = 0xdd,
     .kirbyCoor =
         {
             {12, 47},
             {20, 47},
             {12, 54},
             {20, 54},
         }},
    {.roomId = 0xde,
     .kirbyCoor =
         {
             {62, 34},
             {70, 34},
             {62, 41},
             {70, 41},
         }},
    {.roomId = 0xdf,
     .kirbyCoor =
         {
             {12, 47},
             {20, 47},
             {12, 54},
             {20, 54},
         }},
    {.roomId = 0xe0,
     .kirbyCoor =
         {
             {12, 47},
             {20, 47},
             {12, 54},
             {20, 54},
         }},
    {.roomId = 0xe1,
     .kirbyCoor =
         {
             {31, 16},
             {39, 16},
             {31, 23},
             {39, 23},
         }},
    {.roomId = 0xe3,
     .kirbyCoor =
         {
             {62, 34},
             {70, 34},
             {62, 41},
             {70, 41},
         }},
    {.roomId = 0xe4,
     .kirbyCoor =
         {
             {79, 26},
             {87, 26},
             {79, 33},
             {87, 33},
         }},
    {.roomId = 0xe5,
     .kirbyCoor =
         {
             {79, 26},
             {87, 26},
             {79, 33},
             {87, 33},
         }},
    {.roomId = 0xe6,
     .kirbyCoor =
         {
             {79, 26},
             {87, 26},
             {79, 33},
             {87, 33},
         }},
    {.roomId = 0xe7,
     .kirbyCoor =
         {
             {31, 16},
             {39, 16},
             {31, 23},
             {39, 23},
         }},
    {.roomId = 0xe8,
     .kirbyCoor =
         {
             {31, 16},
             {39, 16},
             {31, 23},
             {39, 23},
         }},
    {.roomId = 0x122,
     .kirbyCoor =
         {
             {88, 57},
             {86, 57},
             {88, 64},
             {96, 64},
         }},
    {.roomId = 0x123,
     .kirbyCoor =
         {
             {32, 33},
             {40, 33},
             {32, 40},
             {40, 40},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorRadishRuins[] = {
    {.roomId = 0x64,
     .kirbyCoor =
         {
             {25, 112},
             {33, 112},
             {25, 119},
             {33, 119},
         }},
    {.roomId = 0x66,
     .kirbyCoor =
         {
             {25, 112},
             {33, 112},
             {25, 119},
             {33, 119},
         }},
    {.roomId = 0x71,
     .kirbyCoor =
         {
             {25, 112},
             {33, 112},
             {25, 119},
             {33, 119},
         }},
    {.roomId = 0x72,
     .kirbyCoor =
         {
             {25, 112},
             {33, 112},
             {25, 119},
             {33, 119},
         }},
    {.roomId = 0x81,
     .kirbyCoor =
         {
             {25, 112},
             {33, 112},
             {25, 119},
             {33, 119},
         }},
    {.roomId = 0x1f6,
     .kirbyCoor =
         {
             {43, 108},
             {51, 108},
             {43, 115},
             {51, 115},
         }},
    {.roomId = 0x20c,
     .kirbyCoor =
         {
             {43, 108},
             {51, 108},
             {43, 115},
             {51, 115},
         }},
    {.roomId = 0x20d,
     .kirbyCoor =
         {
             {43, 108},
             {51, 108},
             {43, 115},
             {51, 115},
         }},
    {.roomId = 0x20e,
     .kirbyCoor =
         {
             {43, 108},
             {51, 108},
             {43, 115},
             {51, 115},
         }},
    {.roomId = 0x259,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x25b,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x25c,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x25d,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x25e,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x260,
     .kirbyCoor =
         {
             {33, 135},
             {41, 135},
             {33, 142},
             {41, 142},
         }},
    {.roomId = 0x261,
     .kirbyCoor =
         {
             {33, 135},
             {41, 135},
             {33, 142},
             {41, 142},
         }},
    {.roomId = 0x262,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x263,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x264,
     .kirbyCoor =
         {
             {33, 135},
             {41, 135},
             {33, 142},
             {41, 142},
         }},
    {.roomId = 0x265,
     .kirbyCoor =
         {
             {33, 135},
             {41, 135},
             {33, 142},
             {41, 142},
         }},
    {.roomId = 0x266,
     .kirbyCoor =
         {
             {33, 135},
             {41, 135},
             {33, 142},
             {41, 142},
         }},
    {.roomId = 0x268,
     .kirbyCoor =
         {
             {43, 108},
             {51, 108},
             {43, 115},
             {51, 115},
         }},
    {.roomId = 0x269,
     .kirbyCoor =
         {
             {43, 108},
             {51, 108},
             {43, 115},
             {51, 115},
         }},
    {.roomId = 0x26a,
     .kirbyCoor =
         {
             {33, 135},
             {41, 135},
             {33, 142},
             {41, 142},
         }},
    {.roomId = 0x26b,
     .kirbyCoor =
         {
             {33, 135},
             {41, 135},
             {33, 142},
             {41, 142},
         }},
    {.roomId = 0x26c,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x26d,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x26e,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x26f,
     .kirbyCoor =
         {
             {64, 126},
             {72, 126},
             {64, 133},
             {72, 133},
         }},
    {.roomId = 0x2b2,
     .kirbyCoor =
         {
             {48, 129},
             {56, 129},
             {48, 136},
             {56, 136},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorCandyConstellation[] = {
    {.roomId = 0x190,
     .kirbyCoor =
         {
             {222, 7},
             {230, 7},
             {222, 14},
             {230, 14},
         }},
    {.roomId = 0x191,
     .kirbyCoor =
         {
             {187, 32},
             {195, 32},
             {187, 39},
             {195, 39},
         }},
    {.roomId = 0x192,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x193,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x194,
     .kirbyCoor =
         {
             {187, 32},
             {195, 32},
             {187, 39},
             {195, 39},
         }},
    {.roomId = 0x195,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x196,
     .kirbyCoor =
         {
             {187, 32},
             {195, 32},
             {187, 39},
             {195, 39},
         }},
    {.roomId = 0x197,
     .kirbyCoor =
         {
             {187, 32},
             {195, 32},
             {187, 39},
             {195, 39},
         }},
    {.roomId = 0x198,
     .kirbyCoor =
         {
             {187, 32},
             {195, 32},
             {187, 39},
             {195, 39},
         }},
    {.roomId = 0x199,
     .kirbyCoor =
         {
             {187, 32},
             {195, 32},
             {187, 39},
             {195, 39},
         }},
    {.roomId = 0x19b,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x19c,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x19d,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x19e,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x19f,
     .kirbyCoor =
         {
             {222, 7},
             {230, 7},
             {222, 14},
             {230, 14},
         }},
    {.roomId = 0x1a0,
     .kirbyCoor =
         {
             {222, 7},
             {230, 7},
             {222, 14},
             {230, 14},
         }},
    {.roomId = 0x1a1,
     .kirbyCoor =
         {
             {222, 7},
             {230, 7},
             {222, 14},
             {230, 14},
         }},
    {.roomId = 0x1a2,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x1a3,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x1a4,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x1a5,
     .kirbyCoor =
         {
             {222, 7},
             {230, 7},
             {222, 14},
             {230, 14},
         }},
    {.roomId = 0x1a6,
     .kirbyCoor =
         {
             {222, 7},
             {230, 7},
             {222, 14},
             {230, 14},
         }},
    {.roomId = 0x1a7,
     .kirbyCoor =
         {
             {222, 7},
             {230, 7},
             {222, 14},
             {230, 14},
         }},
    {.roomId = 0x1a8,
     .kirbyCoor =
         {
             {222, 7},
             {230, 7},
             {222, 14},
             {230, 14},
         }},
    {.roomId = 0x1a9,
     .kirbyCoor =
         {
             {187, 32},
             {195, 32},
             {187, 39},
             {195, 39},
         }},
    {.roomId = 0x1aa,
     .kirbyCoor =
         {
             {207, 13},
             {215, 13},
             {207, 20},
             {215, 20},
         }},
    {.roomId = 0x1ab,
     .kirbyCoor =
         {
             {187, 32},
             {195, 32},
             {187, 39},
             {195, 39},
         }},
    {.roomId = 0x1ea,
     .kirbyCoor =
         {
             {200, 25},
             {208, 25},
             {200, 32},
             {208, 32},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

const struct WorldMapKirbysCoorByRoom gWorldMapKirbysCoorDimensionMirror[] = {
    {.roomId = 0x326,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x38d,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x38e,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x38f,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x390,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x391,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x392,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x393,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x394,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x396,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x397,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x3b6,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x3b7,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x3bb,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x3bc,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x3bd,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x3c9,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x3d4,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x3d5,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = 0x3d6,
     .kirbyCoor =
         {
             {0, 0},
             {0, 0},
             {0, 0},
             {0, 0},
         }},
    {.roomId = KIRBYS_COORS_TERMINATE, .kirbyCoor = {}},
};

static const struct AnimInfo sWorldMapDoorAnimInfos[NUM_DOOR_ANIM_INFOS] = {
    [VISITED_CENTRAL_HALL] = {0x373, 0, 0},  [REACHED_CENTRAL_HALL] = {0x373, 4, 0},
    [BLINKING_CENTRAL_HALL] = {0x373, 6, 0}, [VISITED_DOOR] = {0x373, 1, 0},
    [UNVISITED_DOOR] = {0x373, 2, 0},        [REACHED_DOOR] = {0x373, 5, 0},
    [BLINKING_DOOR] = {0x373, 7, 0},         [DOT] = {0x373, 3, 0},
};

static const u16 sWorldMapDoorRoomIds[NUM_WORLDMAP_DOORS] = {
    [WORLDMAP_NO_UNLOCK] = 0,
    [WORLDMAP_MOONLIGHT_MANSION] = 0xbe,
    [WORLDMAP_RAINBOW_ROUTE_EAST] = 0x316,
    [WORLDMAP_RAINBOW_ROUTE_SOUTH] = 0xc2,
    [WORLDMAP_CABBAGE_CAVERN_CENTER] = 0x24f,
    [WORLDMAP_RAINBOW_ROUTE_WEST] = 0xc0,
    [WORLDMAP_CARROT_CASTLE] = 0xc1,
    [WORLDMAP_RAINBOW_ROUTE_NORTH] = 0x24e,
    [WORLDMAP_MUSTARD_MOUNTAIN] = 0x186,
    [WORLDMAP_CABBAGE_CAVERN_WEST] = 0x250,
    [WORLDMAP_RADISH_RUINS] = 0x2b2,
    [WORLDMAP_PEPPERMINT_PALACE_EAST] = 0x122,
    [WORLDMAP_PEPPERMINT_PALACE_WEST] = 0x123,
    [WORLDMAP_CABBAGE_CAVERN_EAST] = 0xbf,
    [WORLDMAP_OLIVE_OCEAN] = 0x37a,
    [WORLDMAP_CANDY_CONSTELLATION] = 0x1ea,
};

static const u16 sWorldMapDoorTilemapOffsets[NUM_WORLDMAP_DOORS] = {
    [WORLDMAP_NO_UNLOCK] = 0,
    [WORLDMAP_MOONLIGHT_MANSION] = 0x194,
    [WORLDMAP_RAINBOW_ROUTE_EAST] = 0x156,
    [WORLDMAP_RAINBOW_ROUTE_SOUTH] = 0x1ef,
    [WORLDMAP_CABBAGE_CAVERN_CENTER] = 0x251,
    [WORLDMAP_RAINBOW_ROUTE_WEST] = 0x18c,
    [WORLDMAP_CARROT_CASTLE] = 0x169,
    [WORLDMAP_RAINBOW_ROUTE_NORTH] = 0xf0,
    [WORLDMAP_MUSTARD_MOUNTAIN] = 0x92,
    [WORLDMAP_CABBAGE_CAVERN_WEST] = 0x20b,
    [WORLDMAP_RADISH_RUINS] = 0x227,
    [WORLDMAP_PEPPERMINT_PALACE_EAST] = 0x10c,
    [WORLDMAP_PEPPERMINT_PALACE_WEST] = 0xa5,
    [WORLDMAP_CABBAGE_CAVERN_EAST] = 0x216,
    [WORLDMAP_OLIVE_OCEAN] = 0x25b,
    [WORLDMAP_CANDY_CONSTELLATION] = 0x9a,
};

static const struct WorldMapLineCoor sWorldMapLineCoors[NUM_WORLDMAP_DOORS] = {
    [WORLDMAP_NO_UNLOCK] = {0, 0, 0, 0},
    [WORLDMAP_MOONLIGHT_MANSION] = {152, 88, 112, 80},
    [WORLDMAP_RAINBOW_ROUTE_EAST] = {168, 72, 112, 80},
    [WORLDMAP_RAINBOW_ROUTE_SOUTH] = {112, 112, 112, 80},
    [WORLDMAP_CABBAGE_CAVERN_CENTER] = {128, 136, 112, 112},
    [WORLDMAP_RAINBOW_ROUTE_WEST] = {88, 88, 112, 80},
    [WORLDMAP_CARROT_CASTLE] = {64, 80, 88, 88},
    [WORLDMAP_RAINBOW_ROUTE_NORTH] = {120, 48, 112, 80},
    [WORLDMAP_MUSTARD_MOUNTAIN] = {136, 24, 120, 48},
    [WORLDMAP_CABBAGE_CAVERN_WEST] = {80, 120, 112, 80},
    [WORLDMAP_RADISH_RUINS] = {48, 128, 80, 120},
    [WORLDMAP_PEPPERMINT_PALACE_EAST] = {88, 56, 112, 80},
    [WORLDMAP_PEPPERMINT_PALACE_WEST] = {32, 32, 88, 56},
    [WORLDMAP_CABBAGE_CAVERN_EAST] = {168, 120, 112, 80},
    [WORLDMAP_OLIVE_OCEAN] = {208, 136, 168, 120},
    [WORLDMAP_CANDY_CONSTELLATION] = {200, 24, 112, 80},
};

static const u8 sWorldMapDoorDotCounts[NUM_WORLDMAP_DOORS] = {
    [WORLDMAP_NO_UNLOCK] = DOOR_DOT_COUNT_NO_UNLOCK,
    [WORLDMAP_MOONLIGHT_MANSION] = DOOR_DOT_COUNT_MOONLIGHT_MANSION,
    [WORLDMAP_RAINBOW_ROUTE_EAST] = DOOR_DOT_COUNT_RAINBOW_ROUTE_EAST,
    [WORLDMAP_RAINBOW_ROUTE_SOUTH] = DOOR_DOT_COUNT_RAINBOW_ROUTE_SOUTH,
    [WORLDMAP_CABBAGE_CAVERN_CENTER] = DOOR_DOT_COUNT_CABBAGE_CAVERN_CENTER,
    [WORLDMAP_RAINBOW_ROUTE_WEST] = DOOR_DOT_COUNT_RAINBOW_ROUTE_WEST,
    [WORLDMAP_CARROT_CASTLE] = DOOR_DOT_COUNT_CARROT_CASTLE,
    [WORLDMAP_RAINBOW_ROUTE_NORTH] = DOOR_DOT_COUNT_RAINBOW_ROUTE_NORTH,
    [WORLDMAP_MUSTARD_MOUNTAIN] = DOOR_DOT_COUNT_MUSTARD_MOUNTAIN,
    [WORLDMAP_CABBAGE_CAVERN_WEST] = DOOR_DOT_COUNT_CABBAGE_CAVERN_WEST,
    [WORLDMAP_RADISH_RUINS] = DOOR_DOT_COUNT_RADISH_RUINS,
    [WORLDMAP_PEPPERMINT_PALACE_EAST] = DOOR_DOT_COUNT_PEPPERMINT_PALACE_EAST,
    [WORLDMAP_PEPPERMINT_PALACE_WEST] = DOOR_DOT_COUNT_PEPPERMINT_PALACE_WEST,
    [WORLDMAP_CABBAGE_CAVERN_EAST] = DOOR_DOT_COUNT_CABBAGE_CAVERN_EAST,
    [WORLDMAP_OLIVE_OCEAN] = DOOR_DOT_COUNT_OLIVE_OCEAN,
    [WORLDMAP_CANDY_CONSTELLATION] = DOOR_DOT_COUNT_CANDY_CONSTELLATION,
};

const struct WorldMapDotCoor gWorldMapDotCoorsMoonlightMansion[DOOR_DOT_COUNT_MOONLIGHT_MANSION] = {
    {147, 90},
    {141, 90},
    {135, 90},
    {129, 90},
};

const struct WorldMapDotCoor gWorldMapDotCoorsRainbowRouteEast[DOOR_DOT_COUNT_RAINBOW_ROUTE_EAST] = {
    {164, 76}, {157, 77}, {150, 79}, {143, 80}, {136, 82}, {129, 83},
};

const struct WorldMapDotCoor gWorldMapDotCoorsRainbowRouteSouth[DOOR_DOT_COUNT_RAINBOW_ROUTE_SOUTH] = {
    {114, 107},
    {115, 102},
    {116, 97},
};

const struct WorldMapDotCoor gWorldMapDotCoorsCabbageCavernCenter[DOOR_DOT_COUNT_CABBAGE_CAVERN_CENTER] = {
    {126, 132},
    {123, 128},
    {120, 124},
    {117, 120},
};

const struct WorldMapDotCoor gWorldMapDotCoorsRainbowRouteWest[DOOR_DOT_COUNT_RAINBOW_ROUTE_WEST] = {
    {97, 90},
    {102, 89},
    {107, 88},
};

const struct WorldMapDotCoor gWorldMapDotCoorsCarrotCastle[DOOR_DOT_COUNT_CARROT_CASTLE] = {
    {73, 85},
    {79, 87},
    {83, 89},
};

const struct WorldMapDotCoor gWorldMapDotCoorsRainbowRouteNorth[DOOR_DOT_COUNT_RAINBOW_ROUTE_NORTH] = {
    {121, 57},
    {120, 63},
    {119, 69},
    {118, 75},
};

const struct WorldMapDotCoor gWorldMapDotCoorsMustardMountain[DOOR_DOT_COUNT_MUSTARD_MOUNTAIN] = {
    {134, 32},
    {131, 36},
    {128, 40},
    {125, 44},
};

const struct WorldMapDotCoor gWorldMapDotCoorsCabbageCavernWest[DOOR_DOT_COUNT_CABBAGE_CAVERN_WEST] = {
    {88, 116}, {92, 112}, {96, 108}, {100, 104}, {104, 100}, {108, 96},
};

const struct WorldMapDotCoor gWorldMapDotCoorsRadishRuins[DOOR_DOT_COUNT_RADISH_RUINS] = {
    {57, 128},
    {63, 127},
    {69, 126},
    {75, 125},
};

const struct WorldMapDotCoor gWorldMapDotCoorsPeppermintPalaceEast[DOOR_DOT_COUNT_PEPPERMINT_PALACE_EAST] = {
    {96, 64},
    {100, 68},
    {104, 72},
    {108, 76},
};

const struct WorldMapDotCoor gWorldMapDotCoorsPeppermintPalaceWest[DOOR_DOT_COUNT_PEPPERMINT_PALACE_WEST] = {
    {42, 38}, {47, 40}, {52, 42}, {57, 44}, {62, 46}, {67, 48}, {72, 50}, {77, 52}, {82, 54},
};

const struct WorldMapDotCoor gWorldMapDotCoorsCabbageCavernEast[DOOR_DOT_COUNT_CABBAGE_CAVERN_EAST] = {
    {162, 117}, {157, 114}, {152, 111}, {147, 108}, {142, 105}, {137, 102}, {132, 99}, {127, 96},
};

const struct WorldMapDotCoor gWorldMapDotCoorsOliveOcean[DOOR_DOT_COUNT_OLIVE_OCEAN] = {
    {202, 136}, {197, 134}, {192, 132}, {187, 130}, {182, 128}, {177, 126},
};

const struct WorldMapDotCoor gWorldMapDotCoorsCandyConstellation[DOOR_DOT_COUNT_CANDY_CONSTELLATION] = {
    {194, 32}, {188, 36}, {182, 40}, {176, 44}, {170, 48}, {164, 52}, {158, 56}, {152, 60}, {146, 64}, {140, 68}, {134, 72}, {128, 76},
};

/*
 * Used in WorldMapRemoveLine() to omit lines between doors.
 */
static const u8 sWorldMapDoorNumLineEntries[NUM_WORLDMAP_DOORS] = {
    [WORLDMAP_NO_UNLOCK] = DOOR_NUM_DOTS_NO_UNLOCK,
    [WORLDMAP_MOONLIGHT_MANSION] = DOOR_NUM_DOTS_MOONLIGHT_MANSION,
    [WORLDMAP_RAINBOW_ROUTE_EAST] = DOOR_NUM_DOTS_RAINBOW_ROUTE_EAST,
    [WORLDMAP_RAINBOW_ROUTE_SOUTH] = DOOR_NUM_DOTS_RAINBOW_ROUTE_SOUTH,
    [WORLDMAP_CABBAGE_CAVERN_CENTER] = DOOR_NUM_DOTS_CABBAGE_CAVERN_CENTER,
    [WORLDMAP_RAINBOW_ROUTE_WEST] = DOOR_NUM_DOTS_RAINBOW_ROUTE_WEST,
    [WORLDMAP_CARROT_CASTLE] = DOOR_NUM_DOTS_CARROT_CASTLE,
    [WORLDMAP_RAINBOW_ROUTE_NORTH] = DOOR_NUM_DOTS_RAINBOW_ROUTE_NORTH,
    [WORLDMAP_MUSTARD_MOUNTAIN] = DOOR_NUM_DOTS_MUSTARD_MOUNTAIN,
    [WORLDMAP_CABBAGE_CAVERN_WEST] = DOOR_NUM_DOTS_CABBAGE_CAVERN_WEST,
    [WORLDMAP_RADISH_RUINS] = DOOR_NUM_DOTS_RADISH_RUINS,
    [WORLDMAP_PEPPERMINT_PALACE_EAST] = DOOR_NUM_DOTS_PEPPERMINT_PALACE_EAST,
    [WORLDMAP_PEPPERMINT_PALACE_WEST] = DOOR_NUM_DOTS_PEPPERMINT_PALACE_WEST,
    [WORLDMAP_CABBAGE_CAVERN_EAST] = DOOR_NUM_DOTS_CABBAGE_CAVERN_EAST,
    [WORLDMAP_OLIVE_OCEAN] = DOOR_NUM_DOTS_OLIVE_OCEAN,
    [WORLDMAP_CANDY_CONSTELLATION] = DOOR_NUM_DOTS_CANDY_CONSTELLATION,
};

// TODO: Rename
static const struct WorldMapLineEntries sWorldMapLineEntriesMoonlightMansion[DOOR_NUM_DOTS_MOONLIGHT_MANSION] = {
    {0x191, 4},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesRainbowRouteEast[DOOR_NUM_DOTS_RAINBOW_ROUTE_EAST] = {
    {0x153, 3},
    {0x171, 5},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesRainbowRouteSouth[DOOR_NUM_DOTS_RAINBOW_ROUTE_SOUTH] = {
    {0x1af, 1},
    {0x1cf, 1},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesCabbageCavernCenter[DOOR_NUM_DOTS_CABBAGE_CAVERN_CENTER] = {
    {0x20f, 3},
    {0x22f, 3},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesRainbowRouteWest[DOOR_NUM_DOTS_RAINBOW_ROUTE_WEST] = {
    {0x18d, 2},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesCarrotCastle[DOOR_NUM_DOTS_CARROT_CASTLE] = {
    {0x16a, 2},
    {0x18a, 2},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesRainbowRouteNorth[DOOR_NUM_DOTS_RAINBOW_ROUTE_NORTH] = {
    {0x10f, 2},
    {0x12f, 2},
    {0x14f, 2},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesMustardMountain[DOOR_NUM_DOTS_MUSTARD_MOUNTAIN] = {
    {0xb0, 3},
    {0xd0, 3},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesCabbageCavernWest[DOOR_NUM_DOTS_CABBAGE_CAVERN_WEST] = {
    {0x1ad, 2},
    {0x1cc, 3},
    {0x1ec, 2},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesRadishRuins[DOOR_NUM_DOTS_RADISH_RUINS] = {
    {0x208, 3},
    {0x228, 3},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesPeppermintPalaceEast[DOOR_NUM_DOTS_PEPPERMINT_PALACE_EAST] = {
    {0x12d, 2},
    {0x14d, 2},
};
static const struct WorldMapLineEntries sWorldMapLineEntriesPeppermintPalaceWest[DOOR_NUM_DOTS_PEPPERMINT_PALACE_WEST] = {
    {0xa6, 2},
    {0xc6, 4},
    {0xe8, 4},
    {0x10a, 2},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesCabbageCavernEast[DOOR_NUM_DOTS_CABBAGE_CAVERN_EAST] = {
    {0x1b0, 3},
    {0x1d1, 4},
    {0x1f3, 3},
    {0x215, 1},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesOliveOcean[DOOR_NUM_DOTS_OLIVE_OCEAN] = {
    {0x217, 2},
    {0x237, 4},
    {0x259, 2},
};

static const struct WorldMapLineEntries sWorldMapLineEntriesCandyConstellation[DOOR_NUM_DOTS_CANDY_CONSTELLATION] = {
    {0xb7, 3}, {0xd6, 4}, {0xf4, 4}, {0x113, 4}, {0x131, 4}, {0x151, 2},
};

static const u16 sWorldMapDotsPalette[] = {
    RGB(1, 18, 20) | 0x0000, RGB(22, 5, 0) | 0x0000,  RGB(26, 10, 0) | 0x8000, RGB(31, 15, 0) | 0x8000,  RGB(31, 19, 0) | 0x8000,
    RGB(31, 23, 0) | 0x8000, RGB(31, 27, 0) | 0x8000, RGB_YELLOW | 0x8000,     RGB(31, 31, 20) | 0x8000, RGB_WHITE | 0x8000,
    RGB_BLACK | 0x0000,      RGB_BLACK | 0x0000,      RGB_BLACK | 0x0000,      RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,
    RGB_BLACK | 0x0000,      RGB_BLACK | 0x0000,      RGB(18, 6, 0) | 0x0000,  RGB(24, 13, 0) | 0x0000,  RGB(31, 18, 0) | 0x0000,
    RGB(30, 23, 0) | 0x0000, RGB(0, 10, 31) | 0x0000, RGB(0, 20, 31) | 0x0000, RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,
    RGB_BLACK | 0x0000,      RGB_BLACK | 0x0000,      RGB_BLACK | 0x0000,      RGB(12, 12, 12) | 0x8000, RGB(21, 21, 21) | 0x8000,
    RGB_WHITE | 0x0000,      RGB_BLACK | 0x0000,
};
static const u32 sWorldMapDotsTileset[] = INCBIN_U32("graphics/pause_menu/worldmap_dots/tileset.4bpp.lz");
static const u32 sWorldMapAllUnlockedTilemap[] = INCBIN_U32("graphics/pause_menu/worldmap_dots/tilemap.bin");
static const u32 sWorldMapUnusedTilemap[] UNUSED = INCBIN_U32("graphics/pause_menu/worldmap_dots/tilemap_unused.bin");

extern const struct WorldMapKirbysCoorByRoom* const gWorldMapKirbysCoorsByArea[NUM_AREA_IDS];
extern const struct WorldMapDotCoor* const gWorldMapDotCoors[NUM_WORLDMAP_DOORS];

static void WorldMapLineDrawn(void);
static void WorldMapPauseInit(void);
static void WorldMapPauseMain(void);
static void WorldMapUnlockInitBg(void);
static void WorldMapUnlockInitKirbyAndDoors(void);
static void WorldMapUnlockWaitLineFinish(void);
static void WorldMapUnlockMain(void);
static void WorldMapReachedDoorMain(void);
static void WorldMapLineInit(void);
static void WorldMapToNextMenu(void);

/*
 * Called in WorldMapRemoveLines() if corresponding door has not yet been visited.
 */
static void WorldMapRemoveLineMoonlightMansion(void);
static void WorldMapRemoveLineRainbowRouteEast(void);
static void WorldMapRemoveLineRainbowRouteSouth(void);
static void WorldMapRemoveLineCabbageCavernCenter(void);
static void WorldMapRemoveLineRainbowRouteWest(void);
static void WorldMapRemoveLineCarrotCastle(void);
static void WorldMapRemoveLineRainbowRouteNorth(void);
static void WorldMapRemoveLineMustardMountain(void);
static void WorldMapRemoveLineCabbageCavernWest(void);
static void WorldMapRemoveLineRadishRuins(void);
static void WorldMapRemoveLinePeppermintPalaceEast(void);
static void WorldMapRemoveLinePeppermintPalaceWest(void);
static void WorldMapRemoveLineCabbageCavernEast(void);
static void WorldMapRemoveLineOliveOcean(void);
static void WorldMapRemoveLineCandyConstellation(void);

static void WorldMapSetTileDoorVisited(enum WorldMapDoor);
static void WorldMapSetTileDoorUnvisited(enum WorldMapDoor);
static void WorldMapToGame(void);

extern const u16 gWorldMapBgPalette[0x80];
extern const u32 gWorldMapBgTileset[];

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
    for (roomIdx = 0; kirbysCoorByRoom[roomIdx].roomId != KIRBYS_COORS_TERMINATE; roomIdx++) {
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
    SpriteInitNoPointer(&unkSprite, (u32)OBJ_VRAM0 + 0x2000, 0x280, sWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].animId,
                        sWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].variant, 0, 0xff, 0x10, 0, 0, 0, 0x41000);
}

static void CreateWorldMapReachedDoor(enum WorldMapDoor unlockedDoorId) {
    struct Task* task = TaskCreate(WorldMapReachedDoorMain, sizeof(struct Sprite), 0x1000, TASK_x0004 | TASK_USE_IWRAM, NULL);
    struct Sprite *tmp = TaskGetStructPtr(task), *reachedDoor = tmp;

    enum WorldMapDoorAnimInfosIndex destAnimInfo = REACHED_DOOR;
    if (sWorldMapLineCoors[unlockedDoorId].destX == 112 && sWorldMapLineCoors[unlockedDoorId].destY == 80) {
        destAnimInfo = REACHED_CENTRAL_HALL;
    }

    SpriteInitNoFunc(reachedDoor, (u32)OBJ_VRAM0 + 0x2000, 0x440, sWorldMapDoorAnimInfos[destAnimInfo].animId,
                     sWorldMapDoorAnimInfos[destAnimInfo].variant, 0, 0xff, 0x10, 8, sWorldMapLineCoors[unlockedDoorId].destX,
                     sWorldMapLineCoors[unlockedDoorId].destY, 0xc1000);
}

static struct Task* CreateWorldMapLine(enum WorldMapDoor unlockedDoorId) {
    struct Task* task = TaskCreate(WorldMapLineInit, sizeof(struct WorldMapLine), 0x1000, TASK_x0004 | TASK_USE_IWRAM, NULL);
    struct WorldMapLine *tmp = TaskGetStructPtr(task), *worldMapLine = tmp;

    enum WorldMapDoorAnimInfosIndex destAnimInfo = BLINKING_DOOR;
    worldMapLine->flags = 0;
    if (sWorldMapLineCoors[unlockedDoorId].destX == 112 && sWorldMapLineCoors[unlockedDoorId].destY == 80) {
        destAnimInfo = BLINKING_CENTRAL_HALL;
        worldMapLine->flags = LINE_FLAG_CENTRAL_HALL_IS_DEST;
    }

    CpuFill32(0, &worldMapLine->unlockedDoor, sizeof(struct Sprite));
    CpuFill32(0, &worldMapLine->dest, sizeof(struct Sprite));
    CpuFill32(0, &worldMapLine->dot, sizeof(struct Sprite));

    SpriteInitNoFunc(&worldMapLine->unlockedDoor, (u32)OBJ_VRAM0 + 0x2000, 0x480, sWorldMapDoorAnimInfos[BLINKING_DOOR].animId,
                     sWorldMapDoorAnimInfos[BLINKING_DOOR].variant, 0, 0xff, 0x10, 8, sWorldMapLineCoors[unlockedDoorId].unlockedDoorX,
                     sWorldMapLineCoors[unlockedDoorId].unlockedDoorY, 0xc1000);
    SpriteInitNoFunc(&worldMapLine->dest, (u32)OBJ_VRAM0 + 0x2000, 0x480, sWorldMapDoorAnimInfos[destAnimInfo].animId,
                     sWorldMapDoorAnimInfos[destAnimInfo].variant, 0, 0xff, 0x10, 8, sWorldMapLineCoors[unlockedDoorId].destX,
                     sWorldMapLineCoors[unlockedDoorId].destY, 0xc1000);
    SpriteInitNoFunc(&worldMapLine->dot, (u32)OBJ_VRAM0 + 0x2000, 0x480, sWorldMapDoorAnimInfos[DOT].animId, sWorldMapDoorAnimInfos[DOT].variant, 0,
                     0xff, 0x10, 8, sWorldMapLineCoors[unlockedDoorId].unlockedDoorX, sWorldMapLineCoors[unlockedDoorId].unlockedDoorY, 0xc1000);
    worldMapLine->dotCoors = gWorldMapDotCoors[unlockedDoorId];
    worldMapLine->unlockedDoorId = unlockedDoorId;
    worldMapLine->dotCounter = 0;
    worldMapLine->frameCounter = 0;

    return task;
}

static void WorldMapLineDrawing(void) {
    u32 dotnum;
    struct WorldMapLine *tmp = TaskGetStructPtr(gCurTask), *worldMapLine = tmp;

    if (worldMapLine->dotCounter < sWorldMapDoorDotCounts[worldMapLine->unlockedDoorId]) {
        worldMapLine->frameCounter++;
        if (worldMapLine->frameCounter > 15) {
            worldMapLine->dotCounter++;
            worldMapLine->frameCounter = 0;
            m4aSongNumStart(SE_08D5E398);
        }
    }
    else {
        worldMapLine->unlockedDoor.animId = sWorldMapDoorAnimInfos[VISITED_DOOR].animId;
        worldMapLine->unlockedDoor.variant = sWorldMapDoorAnimInfos[VISITED_DOOR].variant;
        worldMapLine->unlockedDoor.unk1B = 0xff;

        if (worldMapLine->flags & LINE_FLAG_CENTRAL_HALL_IS_DEST) {
            worldMapLine->dest.animId = sWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].animId;
            worldMapLine->dest.variant = sWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].variant;
            worldMapLine->dest.unk1B = 0xff;
        }
        else {
            worldMapLine->dest.animId = sWorldMapDoorAnimInfos[VISITED_DOOR].animId;
            worldMapLine->dest.variant = sWorldMapDoorAnimInfos[VISITED_DOOR].variant;
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
        LoadBgPaletteWithTransformation(sWorldMapDotsPalette, 0, ARRAY_COUNT(sWorldMapDotsPalette));
    }
    else {
        DmaCopy16(3, sWorldMapDotsPalette, gBgPalette, sizeof(sWorldMapDotsPalette));
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

    LZ77UnCompVram(sWorldMapDotsTileset, (void*)VRAM);
    sub_081251F8();

    // TODO: Only relevant for unlocks
    // If this is missing, dots will render, but in pure white
    SpriteInit_08125690(sWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].animId, sWorldMapDoorAnimInfos[VISITED_CENTRAL_HALL].variant, 0x8);
    SpriteInit_08125690(sUnk_08358D94[gLanguage][0].animId, sUnk_08358D94[gLanguage][0].variant, 0x9);
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
    CpuCopy32(sWorldMapAllUnlockedTilemap, BG_SCREEN_ADDR(24), sizeof(sWorldMapAllUnlockedTilemap));

    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 0, 0);
    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 1, 1);
    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 2, 2);
    WorldMapSetKirbySprites(worldmap->worldmapKirbys + 3, 3);

    WorldMapRemoveLines();

    for (doorId = WORLDMAP_MOONLIGHT_MANSION; (s32)doorId < NUM_WORLDMAP_DOORS; doorId++) {
        WorldMapSetTileDoorVisited(doorId);
        if (!sub_08002A5C(sWorldMapDoorRoomIds[doorId])) {
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
    CpuCopy32(sWorldMapAllUnlockedTilemap, BG_SCREEN_ADDR(24), sizeof(sWorldMapAllUnlockedTilemap));

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
        if (!(sub_08002A5C(sWorldMapDoorRoomIds[doorId]))) {
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

static void WorldMapReachedDoorMain(void) {
    struct Sprite* reachedDoor = TaskGetStructPtr(gCurTask);
    if (!sub_08155128(reachedDoor)) {
        TaskDestroy(gCurTask);
    }
    else {
        sub_081564D8(reachedDoor);
    }
}

static void WorldMapLineInit(void) {
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

static inline void WorldMapRemoveLine(const struct WorldMapLineEntries dots[], const u8 numDots) {
    u8 dotnum;
    for (dotnum = 0; dotnum < numDots; dotnum++) {
        CpuFill16(0, BG_SCREEN_ADDR(24) + (dots[dotnum].tilemapIndex << 1), dots[dotnum].length << 1);
    }
}

static void WorldMapRemoveLineMoonlightMansion(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesMoonlightMansion, sWorldMapDoorNumLineEntries[WORLDMAP_MOONLIGHT_MANSION]);
}

static void WorldMapRemoveLineRainbowRouteEast(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesRainbowRouteEast, sWorldMapDoorNumLineEntries[WORLDMAP_RAINBOW_ROUTE_EAST]);
}

static void WorldMapRemoveLineRainbowRouteSouth(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesRainbowRouteSouth, sWorldMapDoorNumLineEntries[WORLDMAP_RAINBOW_ROUTE_SOUTH]);
}

static void WorldMapRemoveLineCabbageCavernCenter(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesCabbageCavernCenter, sWorldMapDoorNumLineEntries[WORLDMAP_CABBAGE_CAVERN_CENTER]);
}

static void WorldMapRemoveLineRainbowRouteWest(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesRainbowRouteWest, sWorldMapDoorNumLineEntries[WORLDMAP_RAINBOW_ROUTE_WEST]);
}

static void WorldMapRemoveLineCarrotCastle(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesCarrotCastle, sWorldMapDoorNumLineEntries[WORLDMAP_CARROT_CASTLE]);
}

static void WorldMapRemoveLineRainbowRouteNorth(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesRainbowRouteNorth, sWorldMapDoorNumLineEntries[WORLDMAP_RAINBOW_ROUTE_NORTH]);
}

static void WorldMapRemoveLineMustardMountain(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesMustardMountain, sWorldMapDoorNumLineEntries[WORLDMAP_MUSTARD_MOUNTAIN]);
}

static void WorldMapRemoveLineCabbageCavernWest(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesCabbageCavernWest, sWorldMapDoorNumLineEntries[WORLDMAP_CABBAGE_CAVERN_WEST]);
}

static void WorldMapRemoveLineRadishRuins(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesRadishRuins, sWorldMapDoorNumLineEntries[WORLDMAP_RADISH_RUINS]);
}

static void WorldMapRemoveLinePeppermintPalaceEast(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesPeppermintPalaceEast, sWorldMapDoorNumLineEntries[WORLDMAP_PEPPERMINT_PALACE_EAST]);
}

static void WorldMapRemoveLinePeppermintPalaceWest(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesPeppermintPalaceWest, sWorldMapDoorNumLineEntries[WORLDMAP_PEPPERMINT_PALACE_WEST]);
}

static void WorldMapRemoveLineCabbageCavernEast(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesCabbageCavernEast, sWorldMapDoorNumLineEntries[WORLDMAP_CABBAGE_CAVERN_EAST]);
}

static void WorldMapRemoveLineOliveOcean(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesOliveOcean, sWorldMapDoorNumLineEntries[WORLDMAP_OLIVE_OCEAN]);
}

static void WorldMapRemoveLineCandyConstellation(void) {
    WorldMapRemoveLine(sWorldMapLineEntriesCandyConstellation, sWorldMapDoorNumLineEntries[WORLDMAP_CANDY_CONSTELLATION]);
}

static void WorldMapSetTileDoorVisited(enum WorldMapDoor doorId) {
    u16 doorTilemapOffset = sWorldMapDoorTilemapOffsets[doorId];
    CpuFill16_2(0x5, (u16*)BG_SCREEN_ADDR(24) + doorTilemapOffset, 0x2);
}

static void WorldMapSetTileDoorUnvisited(enum WorldMapDoor doorId) {
    u16 doorTilemapOffset = sWorldMapDoorTilemapOffsets[doorId];
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
