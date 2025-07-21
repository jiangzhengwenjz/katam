#include "global.h"
#include "data.h"

static const u16 sRadishRuins2Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  1,  1) | 0x8000, RGB( 1,  2,  2) | 0x0000, RGB( 1,  4,  4) | 0x0000, RGB( 2,  4,  4) | 0x8000, RGB( 2,  5,  5) | 0x0000, RGB( 2,  5,  5) | 0x8000,
    RGB( 2,  6,  6) | 0x8000, RGB( 3,  7,  7) | 0x0000, RGB( 3,  7,  7) | 0x8000, RGB( 3,  8,  8) | 0x0000, RGB( 3,  8,  9) | 0x8000, RGB( 3,  9,  9) | 0x0000, RGB( 3,  9,  9) | 0x8000, RGB( 4, 10, 10) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 1,  4,  4) | 0x0000, RGB( 0,  6,  6) | 0x8000, RGB( 2,  7,  7) | 0x0000, RGB( 1,  8,  8) | 0x0000, RGB( 3,  9,  9) | 0x0000, RGB( 4, 10, 11) | 0x8000, RGB( 4, 11, 12) | 0x8000,
    RGB( 4, 12, 12) | 0x0000, RGB( 5, 12, 13) | 0x8000, RGB( 5, 13, 13) | 0x0000, RGB( 5, 13, 14) | 0x8000, RGB( 5, 14, 14) | 0x0000, RGB( 6, 14, 15) | 0x8000, RGB( 6, 15, 16) | 0x8000, RGB( 7, 17, 18) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  5,  5) | 0x8000, RGB( 3,  7,  7) | 0x0000, RGB( 3,  8,  9) | 0x8000, RGB( 3,  9,  9) | 0x8000, RGB( 4, 10, 10) | 0x0000, RGB( 4, 10, 10) | 0x0000, RGB( 4, 11, 11) | 0x0000,
    RGB( 4, 11, 11) | 0x8000, RGB( 5, 11, 12) | 0x0000, RGB( 4, 11, 12) | 0x8000, RGB( 4, 12, 12) | 0x0000, RGB( 4, 12, 12) | 0x8000, RGB( 5, 12, 13) | 0x8000, RGB( 5, 13, 14) | 0x8000, RGB( 6, 14, 15) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  9,  9) | 0x0000, RGB( 3,  9,  9) | 0x8000, RGB( 4, 10, 10) | 0x0000, RGB( 2, 11, 11) | 0x0000, RGB( 4, 11, 11) | 0x0000, RGB( 4, 11, 12) | 0x8000, RGB( 4, 12, 12) | 0x0000,
    RGB( 5, 12, 13) | 0x8000, RGB( 5, 13, 13) | 0x0000, RGB( 5, 13, 14) | 0x8000, RGB( 6, 14, 14) | 0x0000, RGB( 6, 14, 15) | 0x8000, RGB( 6, 15, 16) | 0x8000, RGB( 7, 15, 16) | 0x8000, RGB( 7, 17, 18) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000
};

static const u32 sRadishRuins2Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/radish_ruins_2/tileset.4bpp.lz");
static const u16 sRadishRuins2Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/radish_ruins_2/tilemap.bin");

const struct RoomTiledBG gRadishRuins2RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sRadishRuins2Tileset,
    .tilesetSize = 900,
    .palette = sRadishRuins2Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sRadishRuins2Palette),
    .tilemap = sRadishRuins2Tilemap,
    .unk1C = 0x25a0000
};
