#include "global.h"
#include "data.h"

static const u16 sPeppermintPalace2Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  3, 23) | 0x8000, RGB( 3,  3, 24) | 0x8000, RGB( 3,  4, 27) | 0x0000, RGB( 3,  5, 27) | 0x0000, RGB( 4,  7, 28) | 0x8000, RGB( 5,  8, 29) | 0x8000, RGB( 5,  9, 29) | 0x8000,
    RGB( 6, 11, 29) | 0x0000, RGB( 6, 12, 30) | 0x8000, RGB( 7, 13, 30) | 0x0000, RGB( 8, 15, 31) | 0x0000, RGB( 7, 18, 30) | 0x8000, RGB( 7, 22, 31) | 0x8000, RGB(10, 29, 31) | 0x0000, RGB(31, 31, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 1,  4, 21) | 0x0000, RGB( 1,  4, 20) | 0x8000, RGB( 2,  4, 22) | 0x0000, RGB( 2,  4, 24) | 0x8000, RGB( 3,  4, 26) | 0x8000, RGB( 4,  6, 27) | 0x0000, RGB( 5,  8, 29) | 0x8000,
    RGB( 6, 11, 29) | 0x8000, RGB( 7, 13, 30) | 0x0000, RGB( 8, 15, 31) | 0x8000, RGB( 6, 18, 30) | 0x8000, RGB( 9, 18, 31) | 0x8000, RGB(10, 22, 31) | 0x0000, RGB(10, 29, 31) | 0x0000, RGB(31, 31, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 1,  3, 20) | 0x8000, RGB( 1,  3, 21) | 0x8000, RGB( 2,  3, 22) | 0x0000, RGB( 2,  3, 23) | 0x0000, RGB( 2,  3, 22) | 0x8000, RGB( 2,  3, 24) | 0x8000, RGB( 3,  3, 25) | 0x8000,
    RGB( 3,  3, 27) | 0x8000, RGB( 4,  5, 28) | 0x8000, RGB( 5,  7, 30) | 0x0000, RGB( 5,  9, 29) | 0x0000, RGB( 5, 10, 29) | 0x8000, RGB( 6, 11, 30) | 0x0000, RGB( 8, 12, 30) | 0x8000, RGB( 8, 15, 31) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 1,  3, 21) | 0x8000, RGB( 2,  3, 22) | 0x0000, RGB( 1,  4, 21) | 0x0000, RGB( 2,  3, 23) | 0x0000, RGB( 2,  3, 24) | 0x8000, RGB( 3,  3, 26) | 0x8000, RGB( 5,  7, 30) | 0x8000,
    RGB( 6, 11, 29) | 0x8000, RGB( 7, 12, 30) | 0x8000, RGB( 8, 15, 31) | 0x8000, RGB( 6, 18, 30) | 0x8000, RGB( 9, 18, 31) | 0x0000, RGB(10, 21, 31) | 0x8000, RGB(10, 28, 31) | 0x8000, RGB(31, 31, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  5, 16) | 0x0000, RGB( 1,  4, 21) | 0x0000, RGB( 2,  4, 21) | 0x0000, RGB( 2,  3, 23) | 0x8000, RGB( 2,  4, 22) | 0x0000, RGB( 2,  4, 24) | 0x0000, RGB( 3,  3, 26) | 0x8000,
    RGB( 3,  4, 25) | 0x8000, RGB( 3,  4, 27) | 0x0000, RGB( 4,  5, 27) | 0x8000, RGB( 5,  8, 30) | 0x0000, RGB( 6, 11, 30) | 0x0000, RGB( 8, 13, 30) | 0x0000, RGB( 9, 17, 31) | 0x8000, RGB(10, 28, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  5, 16) | 0x0000, RGB( 1,  4, 19) | 0x8000, RGB( 1,  4, 21) | 0x0000, RGB( 2,  5, 24) | 0x0000, RGB( 3,  4, 26) | 0x8000, RGB( 4,  6, 27) | 0x0000, RGB( 4,  8, 28) | 0x0000,
    RGB( 6,  9, 29) | 0x0000, RGB( 6, 11, 29) | 0x8000, RGB( 7, 13, 30) | 0x0000, RGB( 8, 15, 31) | 0x8000, RGB( 9, 17, 31) | 0x8000, RGB( 9, 19, 31) | 0x8000, RGB(10, 22, 31) | 0x0000, RGB(31, 31, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000
};

static const u32 sPeppermintPalace2Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/peppermint_palace_2/tileset.4bpp.lz");
static const u16 sPeppermintPalace2Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/peppermint_palace_2/tilemap.bin");

const struct RoomTiledBG gPeppermintPalace2RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sPeppermintPalace2Tileset,
    .tilesetSize = 900,
    .palette = sPeppermintPalace2Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sPeppermintPalace2Palette),
    .tilemap = sPeppermintPalace2Tilemap,
    .unk1C = 0xca0000
};
