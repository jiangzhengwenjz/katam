#include "global.h"
#include "data.h"

static const u16 sRadishRuins3Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB(16, 21, 29) | 0x8000, RGB(18, 21, 27) | 0x8000, RGB(19, 21, 27) | 0x8000, RGB(19, 22, 27) | 0x8000, RGB(20, 22, 27) | 0x8000, RGB(21, 23, 28) | 0x8000, RGB(22, 24, 28) | 0x8000,
    RGB(23, 25, 28) | 0x8000, RGB(23, 26, 29) | 0x8000, RGB(21, 27, 30) | 0x8000, RGB(24, 26, 29) | 0x8000, RGB(25, 27, 30) | 0x8000, RGB(26, 28, 30) | 0x8000, RGB(28, 29, 30) | 0x8000, RGB(30, 30, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(21, 22, 28) | 0x8000, RGB(22, 23, 28) | 0x8000, RGB(23, 24, 29) | 0x8000, RGB(24, 26, 29) | 0x8000, RGB(22, 28, 31) | 0x8000, RGB(25, 27, 30) | 0x8000, RGB(25, 28, 31) | 0x8000,
    RGB(26, 28, 30) | 0x8000, RGB(27, 28, 30) | 0x8000, RGB(28, 29, 30) | 0x8000, RGB(28, 29, 31) | 0x8000, RGB(29, 30, 31) | 0x8000, RGB(30, 30, 31) | 0x8000, RGB(30, 31, 31) | 0x8000, RGB(31, 31, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 9, 24, 31) | 0x8000, RGB(13, 25, 31) | 0x8000, RGB(16, 25, 30) | 0x8000, RGB(17, 27, 31) | 0x8000, RGB(19, 27, 31) | 0x8000, RGB(22, 26, 29) | 0x8000, RGB(21, 28, 31) | 0x8000,
    RGB(23, 28, 31) | 0x8000, RGB(24, 28, 31) | 0x8000, RGB(25, 29, 31) | 0x8000, RGB(26, 29, 31) | 0x8000, RGB(28, 30, 31) | 0x8000, RGB(29, 30, 31) | 0x8000, RGB(30, 31, 31) | 0x8000, RGB(31, 31, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(21, 14, 20) | 0x0000, RGB(23, 16, 19) | 0x8000, RGB(24, 17, 20) | 0x8000, RGB(25, 18, 20) | 0x8000, RGB(26, 19, 21) | 0x8000, RGB(27, 19, 21) | 0x8000, RGB(21, 22, 27) | 0x8000,
    RGB(28, 21, 23) | 0x8000, RGB(23, 24, 29) | 0x8000, RGB(29, 22, 24) | 0x8000, RGB(30, 24, 26) | 0x8000, RGB(24, 27, 30) | 0x8000, RGB(30, 26, 28) | 0x8000, RGB(29, 29, 30) | 0x8000, RGB(31, 31, 31) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(22, 16, 20) | 0x8000, RGB(24, 18, 19) | 0x8000, RGB(25, 19, 20) | 0x8000, RGB(26, 19, 20) | 0x8000, RGB(26, 20, 21) | 0x8000, RGB(27, 21, 21) | 0x8000, RGB(28, 21, 21) | 0x8000,
    RGB(28, 22, 21) | 0x8000, RGB(28, 23, 22) | 0x8000, RGB(29, 23, 22) | 0x8000, RGB(29, 24, 22) | 0x8000, RGB(30, 25, 22) | 0x8000, RGB(30, 26, 22) | 0x8000, RGB(31, 27, 23) | 0x8000, RGB(31, 30, 29) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(17, 10,  8) | 0x0000, RGB(18, 11,  9) | 0x0000, RGB(19, 12, 10) | 0x0000, RGB(20, 13, 11) | 0x0000, RGB(21, 13, 12) | 0x0000, RGB(21, 14, 13) | 0x0000, RGB(23, 16, 14) | 0x8000,
    RGB(24, 17, 15) | 0x8000, RGB(24, 18, 17) | 0x8000, RGB(25, 19, 17) | 0x8000, RGB(26, 20, 19) | 0x8000, RGB(28, 21, 21) | 0x8000, RGB(28, 22, 22) | 0x8000, RGB(29, 24, 22) | 0x8000, RGB(30, 26, 23) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000
};

static const u32 sRadishRuins3Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/radish_ruins_3/tileset.4bpp.lz");
static const u16 sRadishRuins3Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/radish_ruins_3/tilemap.bin");

const struct RoomTiledBG gRadishRuins3RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sRadishRuins3Tileset,
    .tilesetSize = 900,
    .palette = sRadishRuins3Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sRadishRuins3Palette),
    .tilemap = sRadishRuins3Tilemap,
    .unk1C = 0x1f60000
};
