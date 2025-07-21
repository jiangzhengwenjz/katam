#include "global.h"
#include "data.h"

static const u16 sPeppermintPalace1Palette[] = {
    RGB(31,  3,  3) | 0x0000, RGB( 2, 15, 19) | 0x0000, RGB( 2, 16, 20) | 0x0000, RGB( 2, 16, 22) | 0x8000, RGB( 2, 19, 23) | 0x0000, RGB( 2, 20, 23) | 0x0000, RGB( 3, 22, 25) | 0x0000, RGB( 3, 25, 26) | 0x0000,
    RGB( 3, 26, 25) | 0x8000, RGB( 1, 28, 26) | 0x8000, RGB( 3, 28, 30) | 0x8000, RGB( 8, 31, 27) | 0x0000, RGB(31,  4,  4) | 0x0000, RGB(18, 30, 27) | 0x8000, RGB(31,  4,  4) | 0x0000, RGB(31, 31, 31) | 0x8000,
    RGB(31,  3,  3) | 0x0000, RGB( 2, 16, 20) | 0x0000, RGB( 2, 16, 22) | 0x8000, RGB( 2, 19, 23) | 0x0000, RGB( 2, 20, 23) | 0x0000, RGB( 2, 21, 24) | 0x0000, RGB( 3, 22, 25) | 0x0000, RGB( 3, 25, 26) | 0x0000,
    RGB( 2, 27, 26) | 0x0000, RGB(23, 25, 11) | 0x0000, RGB( 3, 28, 27) | 0x8000, RGB( 1, 28, 26) | 0x8000, RGB( 4, 29, 28) | 0x8000, RGB(11, 31, 28) | 0x0000, RGB(16, 31, 30) | 0x8000, RGB(23, 31, 29) | 0x0000,
    RGB(31,  3,  3) | 0x0000, RGB( 3, 29, 20) | 0x0000, RGB( 2, 16, 22) | 0x8000, RGB( 2, 19, 23) | 0x0000, RGB(15, 30, 17) | 0x8000, RGB( 2, 27, 26) | 0x0000, RGB( 4, 29, 28) | 0x8000, RGB( 9, 31, 27) | 0x0000,
    RGB(12, 27, 19) | 0x0000, RGB(23, 25, 11) | 0x0000, RGB(28, 24, 14) | 0x0000, RGB( 2, 29, 12) | 0x0000, RGB(10, 31, 15) | 0x0000, RGB( 6, 30, 28) | 0x0000, RGB(21, 31, 12) | 0x0000, RGB(27, 31, 13) | 0x8000,
    RGB(31,  3,  3) | 0x0000, RGB( 3, 22, 25) | 0x0000, RGB( 3, 26, 25) | 0x8000, RGB( 4, 27, 26) | 0x8000, RGB( 7, 28, 25) | 0x8000, RGB(10, 29, 24) | 0x8000, RGB(13, 30, 23) | 0x0000, RGB(11, 31, 28) | 0x0000,
    RGB( 4, 29, 28) | 0x8000, RGB(14, 31, 28) | 0x8000, RGB(16, 31, 30) | 0x8000, RGB(21, 31, 24) | 0x8000, RGB(21, 31, 29) | 0x8000, RGB(25, 31, 24) | 0x8000, RGB(29, 31, 26) | 0x8000, RGB(31, 31, 28) | 0x8000,
    RGB(31,  3,  3) | 0x0000, RGB( 2, 21, 24) | 0x0000, RGB( 3, 24, 29) | 0x8000, RGB( 3, 27, 30) | 0x0000, RGB(12, 27, 19) | 0x0000, RGB( 3, 28, 30) | 0x8000, RGB(15, 30, 17) | 0x8000, RGB( 6, 31, 28) | 0x0000,
    RGB( 2, 27, 26) | 0x0000, RGB(11, 31, 28) | 0x0000, RGB(16, 31, 30) | 0x8000, RGB(20, 31, 29) | 0x8000, RGB(23, 31, 30) | 0x8000, RGB( 7, 28, 25) | 0x8000, RGB(31, 31, 28) | 0x8000, RGB(31, 31, 31) | 0x8000,
    RGB(31,  3,  3) | 0x0000, RGB( 3, 22, 25) | 0x0000, RGB( 1, 24, 28) | 0x8000, RGB( 3, 24, 29) | 0x8000, RGB( 3, 27, 30) | 0x0000, RGB(25, 31, 24) | 0x8000, RGB( 4, 29, 28) | 0x8000, RGB( 6, 30, 28) | 0x0000,
    RGB( 6, 29, 27) | 0x0000, RGB( 9, 31, 27) | 0x0000, RGB(24, 31, 30) | 0x8000, RGB(13, 31, 27) | 0x0000, RGB(14, 31, 28) | 0x8000, RGB(21, 31, 29) | 0x8000, RGB(21, 31, 24) | 0x8000, RGB(28, 31, 27) | 0x8000,
    RGB(31,  3,  3) | 0x0000, RGB( 2, 19, 23) | 0x0000, RGB( 2, 19, 23) | 0x8000, RGB( 2, 21, 24) | 0x0000, RGB( 3, 22, 25) | 0x0000, RGB( 1, 24, 28) | 0x8000, RGB( 2, 29, 12) | 0x0000, RGB( 4, 29, 28) | 0x8000,
    RGB( 6, 29, 27) | 0x0000, RGB( 3, 24, 29) | 0x8000, RGB( 3, 27, 30) | 0x0000, RGB( 9, 31, 27) | 0x0000, RGB( 6, 31, 28) | 0x0000, RGB(12, 29, 30) | 0x0000, RGB(16, 30, 29) | 0x8000, RGB(22, 31, 30) | 0x8000,
    RGB(31,  3,  3) | 0x0000, RGB( 1, 24, 28) | 0x8000, RGB( 3, 27, 30) | 0x0000, RGB( 7, 30, 28) | 0x8000, RGB( 6, 30, 28) | 0x0000, RGB( 9, 31, 27) | 0x0000, RGB(31, 31, 28) | 0x8000, RGB(14, 31, 28) | 0x8000,
    RGB(16, 31, 28) | 0x8000, RGB(18, 31, 29) | 0x8000, RGB(21, 31, 29) | 0x8000, RGB(22, 31, 30) | 0x8000, RGB(24, 31, 30) | 0x8000, RGB(25, 31, 30) | 0x8000, RGB(27, 31, 30) | 0x8000, RGB(30, 31, 31) | 0x8000
};

static const u32 sPeppermintPalace1Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/peppermint_palace_1/tileset.4bpp.lz");
static const u16 sPeppermintPalace1Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/peppermint_palace_1/tilemap.bin");

const struct RoomTiledBG gPeppermintPalace1RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sPeppermintPalace1Tileset,
    .tilesetSize = 900,
    .palette = sPeppermintPalace1Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sPeppermintPalace1Palette),
    .tilemap = sPeppermintPalace1Tilemap,
    .unk1C = 0xc90000
};
