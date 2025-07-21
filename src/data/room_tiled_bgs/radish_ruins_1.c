#include "global.h"
#include "data.h"

static const u16 sRadishRuins1Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB( 8,  8,  7) | 0x0000, RGB( 8,  8,  7) | 0x0000, RGB(11,  8,  9) | 0x0000, RGB(12,  9,  9) | 0x0000, RGB(13,  9, 10) | 0x0000, RGB(13, 10, 11) | 0x0000, RGB(14, 11, 12) | 0x0000,
    RGB(15, 12, 13) | 0x0000, RGB(16, 13, 13) | 0x0000, RGB(17, 15, 14) | 0x0000, RGB(17, 16, 15) | 0x8000, RGB(18, 17, 16) | 0x8000, RGB(19, 18, 16) | 0x8000, RGB(20, 20, 17) | 0x8000, RGB(22, 21, 18) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 8,  6,  6) | 0x0000, RGB(10,  7,  8) | 0x0000, RGB(11,  8,  9) | 0x0000, RGB(11,  9,  9) | 0x0000, RGB(12,  9, 10) | 0x0000, RGB(13, 10, 11) | 0x0000, RGB(14, 11, 12) | 0x0000,
    RGB(14, 11, 13) | 0x0000, RGB(15, 12, 12) | 0x0000, RGB(15, 13, 13) | 0x0000, RGB(15, 13, 14) | 0x0000, RGB(16, 13, 13) | 0x0000, RGB(16, 14, 13) | 0x0000, RGB(17, 15, 14) | 0x0000, RGB(17, 16, 15) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 8,  8,  7) | 0x0000, RGB(10,  9,  9) | 0x0000, RGB(12,  9, 10) | 0x0000, RGB(13, 10, 11) | 0x0000, RGB(14, 11, 11) | 0x0000, RGB(14, 11, 12) | 0x0000, RGB(13, 12, 14) | 0x0000,
    RGB(14, 12, 15) | 0x0000, RGB(15, 12, 13) | 0x0000, RGB(16, 13, 13) | 0x0000, RGB(16, 13, 18) | 0x0000, RGB(14, 15, 16) | 0x0000, RGB(16, 15, 14) | 0x0000, RGB(15, 17, 16) | 0x8000, RGB(18, 17, 16) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 6,  6,  5) | 0x0000, RGB( 8,  6,  6) | 0x0000, RGB(10,  8,  8) | 0x0000, RGB(11,  8,  9) | 0x0000, RGB( 8,  9, 13) | 0x0000, RGB(12,  9, 10) | 0x0000, RGB(13, 10, 11) | 0x0000,
    RGB(14, 11, 12) | 0x0000, RGB(12, 12, 17) | 0x0000, RGB(15, 13, 12) | 0x0000, RGB(16, 14, 13) | 0x0000, RGB(17, 16, 14) | 0x8000, RGB(17, 17, 15) | 0x8000, RGB(18, 18, 15) | 0x8000, RGB(19, 20, 17) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 9,  5,  7) | 0x0000, RGB( 8,  7,  7) | 0x0000, RGB(10,  6,  7) | 0x0000, RGB(10,  7,  8) | 0x0000, RGB(11,  8,  8) | 0x0000, RGB(11,  8,  8) | 0x0000, RGB(11,  9,  9) | 0x0000,
    RGB(12,  9, 10) | 0x0000, RGB(11, 10, 11) | 0x0000, RGB(13, 10, 10) | 0x0000, RGB(13, 10, 11) | 0x0000, RGB(13, 11, 11) | 0x0000, RGB(14, 11, 12) | 0x0000, RGB(15, 12, 12) | 0x0000, RGB(16, 14, 13) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 8,  8,  7) | 0x0000, RGB(10,  7,  8) | 0x0000, RGB( 9,  8, 13) | 0x0000, RGB( 9,  9,  8) | 0x0000, RGB(11,  8,  8) | 0x0000, RGB(14,  8,  7) | 0x0000, RGB(11, 10, 10) | 0x0000,
    RGB(13, 10, 11) | 0x0000, RGB(11, 11, 13) | 0x0000, RGB(17,  9,  7) | 0x0000, RGB(20,  9,  6) | 0x0000, RGB(14, 12, 16) | 0x0000, RGB(22, 10,  7) | 0x0000, RGB(16, 13, 12) | 0x0000, RGB(17, 16, 15) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(11,  8,  9) | 0x0000, RGB(12,  9, 10) | 0x0000, RGB(13, 10, 11) | 0x0000, RGB(13, 11, 14) | 0x0000, RGB(14, 11, 12) | 0x0000, RGB(15, 12, 12) | 0x0000, RGB(14, 12, 15) | 0x0000,
    RGB(16, 13, 13) | 0x0000, RGB(15, 13, 17) | 0x0000, RGB(15, 14, 13) | 0x0000, RGB(17, 15, 14) | 0x0000, RGB(17, 15, 19) | 0x0000, RGB(18, 17, 15) | 0x8000, RGB(18, 18, 15) | 0x8000, RGB(19, 20, 17) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(12,  9,  9) | 0x0000, RGB(13, 10, 11) | 0x0000, RGB(14, 11, 12) | 0x0000, RGB(15, 12, 12) | 0x0000, RGB(14, 12, 15) | 0x0000, RGB(15, 13, 16) | 0x0000, RGB(16, 13, 13) | 0x0000,
    RGB(16, 14, 18) | 0x0000, RGB(16, 15, 14) | 0x0000, RGB(17, 15, 14) | 0x0000, RGB(17, 15, 20) | 0x0000, RGB(18, 17, 15) | 0x8000, RGB(18, 18, 15) | 0x8000, RGB(20, 18, 23) | 0x8000, RGB(25, 23, 27) | 0x8000
};

static const u32 sRadishRuins1Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/radish_ruins_1/tileset.4bpp.lz");
static const u16 sRadishRuins1Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/radish_ruins_1/tilemap.bin");

const struct RoomTiledBG gRadishRuins1RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sRadishRuins1Tileset,
    .tilesetSize = 900,
    .palette = sRadishRuins1Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sRadishRuins1Palette),
    .tilemap = sRadishRuins1Tilemap,
    .unk1C = 0x2580000
};
