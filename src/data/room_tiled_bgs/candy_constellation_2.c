#include "global.h"
#include "data.h"

static const u16 sCandyConstellation2Palette[] = {
    RGB(31,  0,  0) | 0x0000, RGB( 1,  2, 14) | 0x0000, RGB( 1,  5, 14) | 0x0000, RGB( 1,  6, 14) | 0x0000, RGB( 0,  8, 14) | 0x0000, RGB( 1,  7, 16) | 0x0000, RGB( 0,  9, 15) | 0x0000, RGB( 1, 10, 17) | 0x0000,
    RGB( 3,  8, 19) | 0x0000, RGB( 4,  9, 21) | 0x0000, RGB( 4, 11, 23) | 0x0000, RGB( 0, 16, 15) | 0x8000, RGB( 0, 16, 25) | 0x8000, RGB( 6, 18, 25) | 0x8000, RGB( 0, 28, 23) | 0x8000, RGB(20, 30, 22) | 0x8000,
    RGB(31,  0,  0) | 0x0000, RGB( 0,  0, 13) | 0x0000, RGB( 1,  0, 14) | 0x0000, RGB( 2,  1, 15) | 0x0000, RGB( 1,  3, 14) | 0x0000, RGB( 1,  4, 14) | 0x0000, RGB( 1,  6, 15) | 0x0000, RGB( 4,  4, 19) | 0x0000,
    RGB( 2,  7, 15) | 0x0000, RGB( 2,  9, 15) | 0x0000, RGB( 4,  7, 20) | 0x0000, RGB( 0, 13, 15) | 0x0000, RGB( 4, 11, 22) | 0x0000, RGB( 0, 19, 18) | 0x8000, RGB( 3, 29, 16) | 0x8000, RGB(31,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB( 0,  0, 13) | 0x0000, RGB( 1,  0, 14) | 0x0000, RGB( 3,  0, 14) | 0x0000, RGB( 2,  1, 14) | 0x0000, RGB( 1,  3, 14) | 0x0000, RGB( 1,  4, 14) | 0x0000, RGB( 1,  6, 15) | 0x0000,
    RGB( 4,  4, 19) | 0x0000, RGB( 2,  7, 15) | 0x0000, RGB( 2,  9, 15) | 0x0000, RGB( 4,  7, 20) | 0x0000, RGB( 1, 13, 15) | 0x0000, RGB( 4, 11, 22) | 0x0000, RGB( 0, 19, 18) | 0x8000, RGB( 3, 29, 16) | 0x8000,
    RGB(31,  0,  0) | 0x0000, RGB( 7,  0, 13) | 0x0000, RGB( 8,  0, 13) | 0x0000, RGB( 8,  0, 15) | 0x0000, RGB( 9,  0, 14) | 0x0000, RGB(10,  0, 13) | 0x0000, RGB(10,  0, 14) | 0x0000, RGB(11,  0, 14) | 0x0000,
    RGB(12,  0, 14) | 0x0000, RGB(11,  0, 17) | 0x0000, RGB(12,  2, 16) | 0x0000, RGB( 7,  7, 16) | 0x0000, RGB( 5, 11, 20) | 0x0000, RGB( 9, 14, 16) | 0x0000, RGB( 9, 13, 23) | 0x0000, RGB(10, 29, 14) | 0x8000,
    RGB(31,  0,  0) | 0x0000, RGB( 0,  0, 13) | 0x0000, RGB( 3,  0, 14) | 0x0000, RGB( 4,  0, 13) | 0x0000, RGB( 6,  0, 13) | 0x0000, RGB( 8,  0, 13) | 0x0000, RGB( 3,  2, 14) | 0x0000, RGB( 8,  0, 15) | 0x0000,
    RGB( 9,  0, 14) | 0x0000, RGB( 4,  4, 15) | 0x0000, RGB( 2,  7, 15) | 0x0000, RGB(10,  3, 19) | 0x0000, RGB( 5,  7, 17) | 0x0000, RGB( 9,  9, 18) | 0x0000, RGB( 5, 11, 20) | 0x0000, RGB( 3, 29, 15) | 0x8000,
    RGB(31,  0,  0) | 0x0000, RGB( 8,  0, 13) | 0x0000, RGB( 8,  0, 15) | 0x0000, RGB( 9,  0, 15) | 0x0000, RGB(10,  0, 14) | 0x0000, RGB(11,  0, 14) | 0x0000, RGB(12,  0, 14) | 0x0000, RGB(11,  0, 17) | 0x0000,
    RGB( 5,  4, 16) | 0x0000, RGB( 9,  2, 19) | 0x0000, RGB( 7,  7, 16) | 0x0000, RGB( 9,  9, 18) | 0x0000, RGB( 9, 11, 21) | 0x0000, RGB( 9, 13, 23) | 0x0000, RGB( 6, 18, 25) | 0x8000, RGB( 3, 22, 28) | 0x8000,
    RGB(31,  0,  0) | 0x0000, RGB( 9,  0, 14) | 0x0000, RGB(11,  0, 14) | 0x0000, RGB(11,  0, 15) | 0x0000, RGB(12,  0, 14) | 0x0000, RGB(13,  0, 14) | 0x0000, RGB(14,  0, 14) | 0x0000, RGB(11,  2, 14) | 0x0000,
    RGB(14,  2, 14) | 0x0000, RGB(14,  3, 14) | 0x0000, RGB(14,  4, 14) | 0x0000, RGB( 7,  7, 16) | 0x0000, RGB(14,  5, 16) | 0x0000, RGB(14,  6, 18) | 0x0000, RGB(14,  6, 19) | 0x0000, RGB( 9,  9, 18) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(12,  0, 14) | 0x0000, RGB(13,  0, 14) | 0x0000, RGB(14,  0, 14) | 0x0000, RGB(14,  2, 14) | 0x0000, RGB(14,  3, 14) | 0x0000, RGB(14,  4, 14) | 0x0000, RGB(14,  5, 16) | 0x0000,
    RGB(14,  6, 19) | 0x0000, RGB( 9,  9, 18) | 0x0000, RGB(14,  9, 14) | 0x0000, RGB(13, 16, 15) | 0x8000, RGB(20, 30, 22) | 0x8000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000
};

static const u32 sCandyConstellation2Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/candy_constellation_2/tileset.4bpp.lz");
static const u16 sCandyConstellation2Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/candy_constellation_2/tilemap.bin");

const struct RoomTiledBG gCandyConstellation2RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sCandyConstellation2Tileset,
    .tilesetSize = 900,
    .palette = sCandyConstellation2Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sCandyConstellation2Palette),
    .tilemap = sCandyConstellation2Tilemap,
    .unk1C = 0x19e0000
};
