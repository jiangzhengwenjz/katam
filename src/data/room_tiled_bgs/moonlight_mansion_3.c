#include "global.h"
#include "data.h"

static const u16 sMoonlightMansion3Palette[] = {
    RGB(31,  0,  0) | 0x0000, RGB( 8,  1, 13) | 0x8000, RGB(10,  1, 13) | 0x8000, RGB( 7,  2, 16) | 0x0000, RGB(10,  3, 11) | 0x0000, RGB(10,  4, 11) | 0x0000, RGB( 5,  7,  7) | 0x0000, RGB(10,  4, 13) | 0x8000,
    RGB(16,  3, 13) | 0x0000, RGB(11,  4, 13) | 0x8000, RGB(13,  4, 18) | 0x0000, RGB(11,  4, 14) | 0x8000, RGB( 7,  9,  8) | 0x8000, RGB(14,  4, 21) | 0x8000, RGB( 8, 11, 11) | 0x0000, RGB(11, 14, 13) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(10,  3, 11) | 0x0000, RGB(11,  4, 13) | 0x0000, RGB(12,  4, 14) | 0x8000, RGB(13,  4, 14) | 0x8000, RGB(14,  4, 21) | 0x8000, RGB( 6, 10, 24) | 0x0000, RGB(14,  7, 21) | 0x0000,
    RGB( 9, 11, 31) | 0x8000, RGB(16,  8, 31) | 0x8000, RGB(12, 14, 31) | 0x8000, RGB(22, 15,  9) | 0x8000, RGB(16, 19, 31) | 0x0000, RGB(25, 19, 15) | 0x0000, RGB(21, 27, 26) | 0x0000, RGB(27, 24, 15) | 0x8000,
    RGB(31,  0,  0) | 0x0000, RGB(10,  3, 11) | 0x0000, RGB(10,  3, 11) | 0x0000, RGB(12,  4, 14) | 0x8000, RGB(12,  4, 13) | 0x8000, RGB(14,  4, 21) | 0x8000, RGB(13,  7, 18) | 0x0000, RGB( 6, 10, 24) | 0x0000,
    RGB(16,  8, 31) | 0x8000, RGB( 9, 11, 31) | 0x8000, RGB(17, 11, 31) | 0x8000, RGB(12, 14, 31) | 0x8000, RGB(14, 16, 31) | 0x8000, RGB(22, 14, 20) | 0x8000, RGB(16, 19, 31) | 0x0000, RGB(21, 27, 26) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(14,  4, 21) | 0x8000, RGB( 6, 10, 24) | 0x0000, RGB(14,  7, 22) | 0x0000, RGB( 9, 11, 31) | 0x8000, RGB(16,  8, 31) | 0x8000, RGB(12, 14, 31) | 0x8000, RGB(21,  0, 14) | 0x0000,
    RGB(26,  5, 14) | 0x0000, RGB(14, 16, 31) | 0x8000, RGB(31, 10, 14) | 0x0000, RGB(16, 19, 31) | 0x0000, RGB(25, 19, 15) | 0x0000, RGB(21, 27, 26) | 0x0000, RGB(27, 24, 15) | 0x8000, RGB( 0,  0,  0) | 0x8000,
    RGB(31,  0,  0) | 0x0000, RGB(10,  3, 11) | 0x0000, RGB(11,  4, 13) | 0x0000, RGB( 5, 10,  7) | 0x0000, RGB(12,  4, 14) | 0x8000, RGB(19,  3, 13) | 0x0000, RGB(12,  4, 14) | 0x8000, RGB(14,  5, 17) | 0x0000,
    RGB(13,  4, 11) | 0x8000, RGB( 7, 11,  8) | 0x0000, RGB( 8, 12, 11) | 0x8000, RGB(17,  7, 22) | 0x0000, RGB(20, 12, 31) | 0x0000, RGB(11, 17, 13) | 0x8000, RGB( 0,  0,  0) | 0x8000, RGB( 0,  0,  0) | 0x8000,
    RGB(31,  0,  0) | 0x0000, RGB(11,  4, 13) | 0x0000, RGB(11,  4, 14) | 0x8000, RGB(12,  4, 14) | 0x8000, RGB( 7, 10,  8) | 0x0000, RGB(14,  4, 21) | 0x8000, RGB(17,  7, 22) | 0x0000, RGB(10, 11, 11) | 0x0000,
    RGB(11, 14, 13) | 0x8000, RGB(21,  0, 14) | 0x0000, RGB(26,  5, 14) | 0x0000, RGB(16, 14, 25) | 0x8000, RGB(31, 10, 14) | 0x0000, RGB(25, 19, 15) | 0x0000, RGB(21, 27, 26) | 0x0000, RGB(27, 24, 15) | 0x8000,
    RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000,
    RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000, RGB(31,  0,  0) | 0x0000
};

static const u32 sMoonlightMansion3Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/moonlight_mansion_3/tileset.4bpp.lz");
static const u16 sMoonlightMansion3Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/moonlight_mansion_3/tilemap.bin");

const struct RoomTiledBG gMoonlightMansion3RoomTiledBG = {
    .width = 30,
    .height = 30,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sMoonlightMansion3Tileset,
    .tilesetSize = 900,
    .palette = sMoonlightMansion3Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sMoonlightMansion3Palette),
    .tilemap = sMoonlightMansion3Tilemap,
    .unk1C = 0x2c60000
};
