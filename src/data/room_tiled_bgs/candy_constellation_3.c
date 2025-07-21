#include "global.h"
#include "data.h"

static const u16 sCandyConstellation3Palette[] = {
    RGB(31,  0,  0) | 0x0000, RGB(16, 10, 31) | 0x8000, RGB(16, 12, 30) | 0x8000, RGB(17, 12, 31) | 0x0000, RGB(19, 13, 31) | 0x8000, RGB(21, 14, 31) | 0x8000, RGB(20, 15, 31) | 0x0000, RGB(22, 16, 31) | 0x0000,
    RGB(21, 17, 31) | 0x0000, RGB(24, 17, 31) | 0x8000, RGB(23, 18, 31) | 0x8000, RGB(24, 20, 31) | 0x8000, RGB(22, 25, 31) | 0x0000, RGB(23, 28, 31) | 0x0000, RGB(29, 27, 30) | 0x8000, RGB( 0,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(19, 13, 31) | 0x8000, RGB(20, 14, 31) | 0x8000, RGB(22, 16, 31) | 0x0000, RGB(24, 17, 31) | 0x8000, RGB(24, 18, 31) | 0x0000, RGB(26, 20, 31) | 0x0000, RGB(25, 21, 31) | 0x8000,
    RGB(25, 22, 31) | 0x0000, RGB(27, 21, 31) | 0x0000, RGB(27, 22, 31) | 0x8000, RGB(26, 24, 30) | 0x0000, RGB(27, 24, 31) | 0x0000, RGB(28, 25, 30) | 0x8000, RGB(29, 27, 30) | 0x8000, RGB( 0,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(16, 10, 31) | 0x8000, RGB(16, 12, 30) | 0x8000, RGB(17, 12, 31) | 0x0000, RGB(19, 13, 31) | 0x8000, RGB(20, 14, 31) | 0x8000, RGB(20, 15, 31) | 0x0000, RGB(22, 16, 31) | 0x0000,
    RGB(21, 16, 31) | 0x8000, RGB(21, 17, 31) | 0x8000, RGB(23, 18, 31) | 0x8000, RGB(24, 20, 31) | 0x8000, RGB(25, 22, 31) | 0x0000, RGB(24, 28, 30) | 0x0000, RGB(29, 27, 30) | 0x8000, RGB( 0,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(17, 12, 31) | 0x0000, RGB(19, 13, 31) | 0x8000, RGB(21, 14, 31) | 0x8000, RGB(22, 16, 31) | 0x0000, RGB(21, 16, 31) | 0x8000, RGB(21, 17, 31) | 0x0000, RGB(24, 17, 31) | 0x8000,
    RGB(23, 18, 31) | 0x8000, RGB(24, 20, 31) | 0x0000, RGB(26, 20, 31) | 0x0000, RGB(25, 22, 31) | 0x0000, RGB(27, 24, 31) | 0x0000, RGB(27, 26, 30) | 0x0000, RGB(29, 27, 30) | 0x8000, RGB( 0,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(16, 10, 31) | 0x8000, RGB(17, 12, 31) | 0x0000, RGB(19, 13, 31) | 0x8000, RGB(21, 14, 31) | 0x8000, RGB(22, 16, 31) | 0x0000, RGB(24, 17, 31) | 0x8000, RGB(23, 25, 31) | 0x8000,
    RGB(23, 28, 31) | 0x0000, RGB(24, 28, 30) | 0x0000, RGB(24, 31, 29) | 0x8000, RGB(26, 31, 31) | 0x8000, RGB(27, 31, 31) | 0x8000, RGB(27, 31, 30) | 0x8000, RGB(28, 31, 30) | 0x8000, RGB( 0,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(24, 18, 31) | 0x0000, RGB(26, 20, 31) | 0x0000, RGB(27, 21, 31) | 0x0000, RGB(27, 22, 31) | 0x8000, RGB(26, 24, 30) | 0x0000, RGB(27, 24, 31) | 0x0000, RGB(28, 25, 30) | 0x8000,
    RGB(24, 28, 30) | 0x0000, RGB(29, 27, 30) | 0x8000, RGB(27, 31, 31) | 0x8000, RGB(27, 31, 30) | 0x8000, RGB(28, 31, 30) | 0x8000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(16, 20, 31) | 0x0000, RGB(17, 21, 30) | 0x0000, RGB(19, 22, 30) | 0x8000, RGB(21, 25, 31) | 0x0000, RGB(23, 25, 31) | 0x8000, RGB(22, 27, 31) | 0x8000, RGB(23, 28, 31) | 0x0000,
    RGB(24, 28, 30) | 0x0000, RGB(22, 31, 30) | 0x8000, RGB(24, 31, 29) | 0x8000, RGB(26, 31, 31) | 0x8000, RGB(27, 31, 31) | 0x8000, RGB(27, 31, 30) | 0x8000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000
};

static const u32 sCandyConstellation3Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/candy_constellation_3/tileset.4bpp.lz");
static const u16 sCandyConstellation3Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/candy_constellation_3/tilemap.bin");

const struct RoomTiledBG gCandyConstellation3RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sCandyConstellation3Tileset,
    .tilesetSize = 900,
    .palette = sCandyConstellation3Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sCandyConstellation3Palette),
    .tilemap = sCandyConstellation3Tilemap,
    .unk1C = 0x1910000
};
