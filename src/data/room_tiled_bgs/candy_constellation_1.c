#include "global.h"
#include "data.h"

static const u16 sCandyConstellation1Palette[] = {
    RGB( 0, 31,  0) | 0x8000, RGB(16,  3, 24) | 0x0000, RGB(17,  3, 23) | 0x0000, RGB(18,  5, 22) | 0x8000, RGB(20,  5, 22) | 0x8000, RGB(21,  8, 21) | 0x0000, RGB(24, 10, 19) | 0x0000, RGB(25, 12, 18) | 0x0000,
    RGB( 0, 31,  0) | 0x8000, RGB(27, 13, 17) | 0x8000, RGB(28, 14, 17) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB(18, 30, 31) | 0x8000, RGB(31, 31, 29) | 0x8000,
    RGB( 0, 31,  0) | 0x8000, RGB(13,  0, 25) | 0x0000, RGB(15,  0, 24) | 0x0000, RGB(16,  3, 24) | 0x0000, RGB(17,  3, 23) | 0x0000, RGB(18,  5, 22) | 0x8000, RGB(20,  5, 22) | 0x8000, RGB(20,  5, 22) | 0x8000,
    RGB(21,  8, 21) | 0x0000, RGB(23,  8, 20) | 0x0000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB(17, 11, 24) | 0x0000, RGB(18, 30, 31) | 0x8000,
    RGB( 0, 31,  0) | 0x8000, RGB(12,  0, 26) | 0x0000, RGB(13,  2, 25) | 0x0000, RGB(15,  1, 24) | 0x8000, RGB(16,  3, 24) | 0x0000, RGB(17,  3, 23) | 0x0000, RGB(18,  5, 22) | 0x8000, RGB(20,  5, 22) | 0x8000,
    RGB(21,  8, 21) | 0x0000, RGB(23,  8, 20) | 0x0000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB(17,  8, 27) | 0x0000, RGB(18, 30, 31) | 0x8000,
    RGB( 0, 31,  0) | 0x8000, RGB(15,  1, 24) | 0x8000, RGB(16,  3, 24) | 0x0000, RGB(17,  3, 23) | 0x0000, RGB(18,  5, 22) | 0x8000, RGB(20,  5, 22) | 0x8000, RGB(21,  8, 21) | 0x0000, RGB(23,  8, 20) | 0x0000,
    RGB(24, 10, 19) | 0x0000, RGB(25, 12, 18) | 0x0000, RGB(27, 13, 17) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000,
    RGB( 0, 31,  0) | 0x8000, RGB(12,  0, 26) | 0x0000, RGB(13,  0, 25) | 0x0000, RGB(15,  0, 24) | 0x8000, RGB(16,  3, 24) | 0x0000, RGB(17,  3, 23) | 0x0000, RGB(18,  5, 22) | 0x8000, RGB(20,  5, 22) | 0x8000,
    RGB(21,  8, 21) | 0x0000, RGB(23,  8, 20) | 0x0000, RGB(24, 10, 19) | 0x0000, RGB( 0, 31,  0) | 0x8000, RGB(15,  3, 30) | 0x0000, RGB(17,  5, 29) | 0x8000, RGB(18, 18, 31) | 0x0000, RGB(31, 30, 31) | 0x8000,
    RGB( 0, 31,  0) | 0x8000, RGB(11,  0, 27) | 0x0000, RGB(12,  0, 26) | 0x0000, RGB(13,  0, 25) | 0x0000, RGB(15,  0, 24) | 0x8000, RGB(16,  3, 24) | 0x0000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000,
    RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB( 0, 31,  0) | 0x8000, RGB(12,  2, 27) | 0x0000, RGB(17,  2, 24) | 0x0000, RGB(12,  3, 31) | 0x0000, RGB(15, 12, 31) | 0x0000,
    RGB( 0, 31,  0) | 0x8000, RGB(17,  3, 23) | 0x0000, RGB(18,  5, 22) | 0x8000, RGB(20,  5, 22) | 0x8000, RGB(21,  8, 21) | 0x0000, RGB(23,  8, 20) | 0x0000, RGB(24, 10, 19) | 0x0000, RGB(25, 12, 18) | 0x0000,
    RGB(27, 13, 17) | 0x8000, RGB(28, 14, 17) | 0x8000, RGB(30, 15, 16) | 0x8000, RGB(31, 17, 14) | 0x0000, RGB(31, 19, 14) | 0x0000, RGB(31, 23, 12) | 0x0000, RGB(31, 26,  8) | 0x8000, RGB( 0, 31,  0) | 0x8000,
    RGB( 0, 31,  0) | 0x8000, RGB(25, 12, 18) | 0x0000, RGB(27, 13, 17) | 0x8000, RGB(28, 14, 17) | 0x8000, RGB(30, 15, 16) | 0x8000, RGB(31, 17, 14) | 0x0000, RGB(31, 18, 14) | 0x0000, RGB(31, 19, 13) | 0x0000,
    RGB(31, 20, 13) | 0x0000, RGB(31, 21, 12) | 0x8000, RGB(31, 24, 11) | 0x0000, RGB(31, 25,  9) | 0x0000, RGB(31, 26,  8) | 0x8000, RGB(31, 28,  6) | 0x0000, RGB(31, 30,  5) | 0x8000, RGB(31, 31,  2) | 0x8000
};

static const u32 sCandyConstellation1Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/candy_constellation_1/tileset.4bpp.lz");
static const u16 sCandyConstellation1Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/candy_constellation_1/tilemap.bin");

const struct RoomTiledBG gCandyConstellation1RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sCandyConstellation1Tileset,
    .tilesetSize = 900,
    .palette = sCandyConstellation1Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sCandyConstellation1Palette),
    .tilemap = sCandyConstellation1Tilemap,
    .unk1C = 0x19b0000
};
