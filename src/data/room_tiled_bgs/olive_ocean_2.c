#include "global.h"
#include "data.h"

static const u16 sOliveOcean2Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB( 7, 21, 30) | 0x8000, RGB( 9, 21, 30) | 0x8000, RGB( 6, 23, 31) | 0x8000, RGB(13, 19, 31) | 0x8000, RGB(11, 23, 31) | 0x8000, RGB( 9, 24, 31) | 0x8000, RGB(12, 25, 31) | 0x8000,
    RGB(13, 25, 31) | 0x8000, RGB(14, 26, 31) | 0x8000, RGB(16, 26, 31) | 0x8000, RGB(18, 27, 31) | 0x8000, RGB(19, 27, 31) | 0x8000, RGB(20, 28, 31) | 0x8000, RGB(21, 28, 31) | 0x8000, RGB(22, 28, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 5, 12, 17) | 0x0000, RGB( 9, 11, 25) | 0x0000, RGB( 7, 15, 19) | 0x0000, RGB(10, 11, 30) | 0x0000, RGB( 8, 13, 31) | 0x0000, RGB( 9, 17, 22) | 0x8000, RGB(10, 13, 31) | 0x0000,
    RGB( 5, 17, 31) | 0x8000, RGB(12, 13, 30) | 0x0000, RGB(10, 15, 31) | 0x0000, RGB(13, 15, 31) | 0x0000, RGB(12, 20, 24) | 0x8000, RGB(14, 17, 31) | 0x8000, RGB(16, 23, 25) | 0x8000, RGB(20, 27, 25) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 1,  6, 19) | 0x0000, RGB( 6,  7, 18) | 0x0000, RGB( 5,  7, 21) | 0x0000, RGB( 1,  9, 23) | 0x0000, RGB( 8,  9, 20) | 0x0000, RGB( 6,  7, 28) | 0x0000, RGB( 3, 11, 25) | 0x0000,
    RGB(15,  7, 22) | 0x0000, RGB( 8,  8, 30) | 0x0000, RGB(10, 11, 22) | 0x0000, RGB(10, 10, 30) | 0x0000, RGB(17, 10, 24) | 0x0000, RGB( 9, 11, 31) | 0x0000, RGB(14, 13, 26) | 0x0000, RGB(17, 17, 26) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  5, 18) | 0x0000, RGB( 2,  9, 15) | 0x0000, RGB( 1,  7, 22) | 0x0000, RGB( 1, 10, 24) | 0x0000, RGB( 3, 12, 17) | 0x0000, RGB( 9,  9, 18) | 0x0000, RGB( 5, 13, 19) | 0x0000,
    RGB(19,  8, 12) | 0x0000, RGB( 3, 13, 25) | 0x0000, RGB( 8, 15, 22) | 0x0000, RGB(18, 12, 19) | 0x0000, RGB(11, 16, 23) | 0x8000, RGB(20, 16, 21) | 0x8000, RGB(14, 19, 25) | 0x8000, RGB(20, 23, 25) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  8, 20) | 0x0000, RGB( 3, 11, 23) | 0x0000, RGB( 2, 14, 25) | 0x0000, RGB(17,  7, 24) | 0x0000, RGB( 6, 14, 25) | 0x0000, RGB(15, 13, 11) | 0x0000, RGB(11, 13, 26) | 0x0000,
    RGB( 2, 19, 28) | 0x8000, RGB( 7, 16, 27) | 0x8000, RGB(17, 12, 26) | 0x0000, RGB( 9, 17, 28) | 0x8000, RGB(18, 17, 15) | 0x8000, RGB(16, 16, 28) | 0x8000, RGB(18, 19, 26) | 0x8000, RGB(21, 25, 25) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  4, 18) | 0x0000, RGB( 0,  5, 19) | 0x0000, RGB( 0,  6, 21) | 0x0000, RGB( 1,  8, 23) | 0x0000, RGB( 2, 10, 24) | 0x0000, RGB( 3, 12, 26) | 0x0000, RGB( 5, 14, 27) | 0x0000,
    RGB( 2, 17, 27) | 0x8000, RGB( 7, 16, 29) | 0x8000, RGB( 3, 20, 29) | 0x8000, RGB(12, 15, 29) | 0x0000, RGB( 8, 18, 30) | 0x8000, RGB( 4, 23, 29) | 0x8000, RGB(11, 20, 29) | 0x8000, RGB( 9, 24, 30) | 0x8000,
    RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000,
    RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  9,  9) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000,
    RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x0000, RGB( 8,  8,  8) | 0x8000, RGB( 9,  9,  9) | 0x0000, RGB(11, 11, 11) | 0x0000, RGB(11, 11, 11) | 0x0000, RGB(11, 11, 11) | 0x0000, RGB(11, 11, 11) | 0x8000,
    RGB( 9,  9,  9) | 0x0000, RGB( 9,  9,  9) | 0x0000, RGB(11, 11, 11) | 0x0000, RGB(11, 11, 11) | 0x0000, RGB( 9,  9,  9) | 0x0000, RGB( 9,  9,  9) | 0x0000, RGB( 9,  9,  9) | 0x0000, RGB( 9,  9,  9) | 0x0000
};

static const u32 sOliveOcean2Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/olive_ocean_2/tileset.4bpp.lz");
static const u16 sOliveOcean2Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/olive_ocean_2/tilemap.bin");

const struct RoomTiledBG gOliveOcean2RoomTiledBG = {
    .width = 30,
    .height = 30,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sOliveOcean2Tileset,
    .tilesetSize = 900,
    .palette = sOliveOcean2Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sOliveOcean2Palette),
    .tilemap = sOliveOcean2Tilemap,
    .unk1C = 0x3220000
};
