#include "global.h"
#include "data.h"

static const u16 sPeppermintPalace3Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0, 16) | 0x0000, RGB( 0,  0, 19) | 0x0000, RGB( 0,  1, 17) | 0x0000, RGB( 0,  2, 17) | 0x0000, RGB( 0,  1, 20) | 0x0000, RGB( 0,  0, 24) | 0x0000, RGB( 0,  2, 20) | 0x0000,
    RGB( 0,  2, 21) | 0x0000, RGB( 0,  1, 25) | 0x0000, RGB( 0,  3, 21) | 0x0000, RGB( 0,  3, 23) | 0x0000, RGB( 0,  5, 20) | 0x0000, RGB( 0,  4, 24) | 0x0000, RGB( 0,  9, 27) | 0x0000, RGB( 5, 11, 29) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  1, 19) | 0x0000, RGB( 0,  3, 23) | 0x0000, RGB( 0,  5, 20) | 0x0000, RGB( 0,  5, 22) | 0x0000, RGB( 0,  5, 24) | 0x0000, RGB( 0,  7, 22) | 0x0000, RGB( 0,  7, 26) | 0x0000,
    RGB( 0,  9, 26) | 0x0000, RGB( 0, 12, 27) | 0x0000, RGB( 0, 15, 30) | 0x0000, RGB( 4, 13, 29) | 0x0000, RGB(14, 13, 29) | 0x0000, RGB( 6, 20, 31) | 0x8000, RGB(14, 16, 30) | 0x8000, RGB(20, 19, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0, 19) | 0x0000, RGB( 0,  4, 22) | 0x0000, RGB( 0,  7, 23) | 0x0000, RGB( 0,  7, 26) | 0x0000, RGB( 0,  9, 25) | 0x0000, RGB( 0, 10, 27) | 0x0000, RGB( 0, 12, 27) | 0x0000,
    RGB( 0, 14, 29) | 0x0000, RGB( 4, 14, 30) | 0x0000, RGB(14, 13, 29) | 0x0000, RGB( 6, 19, 31) | 0x8000, RGB(14, 16, 30) | 0x8000, RGB(14, 20, 31) | 0x8000, RGB(20, 20, 31) | 0x8000, RGB(21, 22, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  7, 26) | 0x0000, RGB( 0, 10, 27) | 0x0000, RGB( 0, 12, 27) | 0x0000, RGB( 0, 12, 31) | 0x0000, RGB( 0, 14, 29) | 0x0000, RGB( 3, 15, 29) | 0x0000, RGB( 5, 18, 30) | 0x8000,
    RGB(14, 15, 30) | 0x0000, RGB( 6, 20, 31) | 0x8000, RGB(14, 20, 31) | 0x8000, RGB(14, 23, 31) | 0x8000, RGB(20, 23, 31) | 0x8000, RGB(24, 28, 31) | 0x8000, RGB(30, 27, 31) | 0x8000, RGB(30, 29, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  1, 20) | 0x0000, RGB( 0,  4, 22) | 0x0000, RGB( 0,  3, 27) | 0x0000, RGB( 0,  7, 23) | 0x0000, RGB( 0,  7, 26) | 0x0000, RGB( 0,  9, 26) | 0x0000, RGB( 0, 12, 27) | 0x0000,
    RGB( 0, 13, 29) | 0x0000, RGB( 4, 13, 29) | 0x0000, RGB( 5, 18, 31) | 0x8000, RGB(14, 15, 30) | 0x0000, RGB(14, 21, 31) | 0x8000, RGB(20, 20, 31) | 0x8000, RGB(30, 27, 31) | 0x8000, RGB(30, 29, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0, 19) | 0x0000, RGB( 0,  2, 20) | 0x0000, RGB( 0,  1, 25) | 0x0000, RGB( 0,  3, 22) | 0x0000, RGB( 0,  5, 22) | 0x0000, RGB( 0,  3, 27) | 0x0000, RGB( 0,  7, 26) | 0x0000,
    RGB( 0,  9, 27) | 0x0000, RGB( 0, 12, 27) | 0x0000, RGB( 4, 11, 29) | 0x0000, RGB( 4, 14, 29) | 0x0000, RGB( 5, 18, 31) | 0x8000, RGB(14, 14, 29) | 0x0000, RGB(19, 19, 31) | 0x8000, RGB(30, 29, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  7, 23) | 0x0000, RGB( 0,  9, 27) | 0x0000, RGB( 0, 12, 27) | 0x0000, RGB( 0, 13, 29) | 0x0000, RGB( 0, 15, 29) | 0x0000, RGB( 0, 14, 31) | 0x0000, RGB( 3, 15, 29) | 0x0000,
    RGB( 0, 17, 31) | 0x8000, RGB( 5, 18, 31) | 0x8000, RGB( 6, 20, 31) | 0x8000, RGB(14, 21, 31) | 0x8000, RGB(20, 23, 31) | 0x8000, RGB(21, 25, 31) | 0x8000, RGB(30, 27, 31) | 0x8000, RGB(30, 29, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0, 19) | 0x0000, RGB( 0,  2, 20) | 0x0000, RGB( 0,  0, 25) | 0x0000, RGB( 3,  2, 22) | 0x0000, RGB( 0,  0, 31) | 0x0000, RGB( 0,  4, 22) | 0x0000, RGB( 0,  3, 28) | 0x0000,
    RGB( 0,  7, 26) | 0x0000, RGB( 0,  9, 27) | 0x0000, RGB( 0, 12, 27) | 0x0000, RGB( 4, 12, 29) | 0x0000, RGB( 5, 18, 31) | 0x8000, RGB(14, 15, 30) | 0x0000, RGB(18, 20, 31) | 0x8000, RGB(30, 27, 31) | 0x8000
};

static const u32 sPeppermintPalace3Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/peppermint_palace_3/tileset.4bpp.lz");
static const u16 sPeppermintPalace3Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/peppermint_palace_3/tilemap.bin");

const struct RoomTiledBG gPeppermintPalace3RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sPeppermintPalace3Tileset,
    .tilesetSize = 900,
    .palette = sPeppermintPalace3Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sPeppermintPalace3Palette),
    .tilemap = sPeppermintPalace3Tilemap,
    .unk1C = 0xcb0000
};
