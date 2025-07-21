#include "global.h"
#include "data.h"

static const u16 sMoonlightMansion1Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  8, 17) | 0x0000, RGB( 4,  8, 16) | 0x0000, RGB( 3,  8, 18) | 0x0000, RGB( 6,  8, 14) | 0x0000, RGB( 6, 10, 16) | 0x0000, RGB( 2, 11, 21) | 0x0000, RGB( 6, 13,  8) | 0x0000,
    RGB( 7, 11, 17) | 0x0000, RGB(11, 11, 11) | 0x0000, RGB( 2, 13, 25) | 0x0000, RGB( 8, 12, 19) | 0x0000, RGB(14, 13, 13) | 0x0000, RGB(10, 14, 20) | 0x0000, RGB(12, 16, 20) | 0x8000, RGB(17, 19, 21) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  4, 14) | 0x0000, RGB( 2,  5, 15) | 0x0000, RGB( 3,  7, 16) | 0x0000, RGB( 3,  9, 12) | 0x0000, RGB( 5,  8, 14) | 0x0000, RGB( 3,  8, 18) | 0x0000, RGB( 6, 10, 14) | 0x0000,
    RGB( 6, 13, 13) | 0x0000, RGB(11, 11, 11) | 0x0000, RGB( 3, 12, 27) | 0x0000, RGB( 5, 17, 10) | 0x8000, RGB(14, 12, 12) | 0x0000, RGB(10, 15, 11) | 0x0000, RGB( 7, 14, 26) | 0x0000, RGB(13, 17, 19) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  5, 15) | 0x0000, RGB( 3,  7, 16) | 0x0000, RGB( 5,  8, 14) | 0x0000, RGB( 3,  8, 18) | 0x0000, RGB(11,  8,  7) | 0x0000, RGB( 6, 10, 15) | 0x0000, RGB( 8, 12, 10) | 0x0000,
    RGB(11, 11, 11) | 0x0000, RGB( 8, 12, 17) | 0x0000, RGB(12, 12, 11) | 0x0000, RGB( 7, 16, 13) | 0x8000, RGB(14, 13, 13) | 0x0000, RGB( 8, 18, 17) | 0x8000, RGB(17, 20, 17) | 0x8000, RGB(13, 22, 19) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  9, 17) | 0x0000, RGB( 2, 11, 19) | 0x0000, RGB( 4, 12, 18) | 0x0000, RGB( 2, 13, 25) | 0x0000, RGB( 8, 12, 17) | 0x0000, RGB( 6, 14, 22) | 0x0000, RGB( 9, 14, 18) | 0x0000,
    RGB(19, 12, 11) | 0x0000, RGB(18, 13, 14) | 0x0000, RGB(11, 16, 20) | 0x8000, RGB(21, 16, 16) | 0x8000, RGB(15, 18, 23) | 0x8000, RGB(26, 18, 21) | 0x8000, RGB(23, 20, 21) | 0x8000, RGB(29, 28, 23) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 3,  4, 14) | 0x0000, RGB( 4,  5, 15) | 0x0000, RGB( 4,  7, 14) | 0x0000, RGB( 3,  8, 17) | 0x0000, RGB( 7,  9, 16) | 0x0000, RGB( 7, 11, 18) | 0x0000, RGB( 8, 12, 12) | 0x0000,
    RGB( 9, 13, 18) | 0x0000, RGB(10, 15, 13) | 0x0000, RGB(14, 13, 13) | 0x0000, RGB(11, 15, 20) | 0x0000, RGB(13, 16, 21) | 0x8000, RGB(14, 18, 23) | 0x8000, RGB(18, 21, 25) | 0x8000, RGB(26, 23, 24) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  2, 12) | 0x0000, RGB( 2,  6, 13) | 0x0000, RGB(11,  6,  5) | 0x0000, RGB( 8,  7,  9) | 0x0000, RGB( 3,  8, 16) | 0x0000, RGB( 5,  9, 13) | 0x0000, RGB(12,  8,  8) | 0x0000,
    RGB( 7, 11, 10) | 0x0000, RGB( 7, 10, 15) | 0x0000, RGB(13,  9, 12) | 0x0000, RGB( 8, 13, 10) | 0x0000, RGB( 8, 12, 17) | 0x0000, RGB(13, 11, 13) | 0x0000, RGB(11, 14, 19) | 0x0000, RGB(14, 18, 23) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 2,  8, 16) | 0x0000, RGB( 3,  8, 18) | 0x0000, RGB( 6,  8, 13) | 0x0000, RGB( 3, 10, 14) | 0x0000, RGB( 3, 11, 14) | 0x0000, RGB( 6, 12, 16) | 0x0000, RGB(10, 12,  8) | 0x0000,
    RGB( 8, 13, 17) | 0x0000, RGB(17, 10, 13) | 0x0000, RGB(11, 15, 19) | 0x0000, RGB(15, 16, 13) | 0x8000, RGB(13, 16, 21) | 0x8000, RGB(15, 18, 23) | 0x8000, RGB(21, 19, 17) | 0x8000, RGB(25, 23, 23) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 3,  3, 13) | 0x0000, RGB( 3,  5, 13) | 0x0000, RGB( 4,  7, 14) | 0x0000, RGB( 3,  8, 18) | 0x0000, RGB( 7, 10, 16) | 0x0000, RGB( 9, 11, 11) | 0x0000, RGB( 8, 11, 17) | 0x0000,
    RGB( 9, 12, 18) | 0x0000, RGB(13, 12, 12) | 0x0000, RGB(10, 13, 18) | 0x0000, RGB(11, 14, 19) | 0x0000, RGB(12, 15, 20) | 0x0000, RGB(13, 17, 21) | 0x8000, RGB(15, 18, 23) | 0x8000, RGB(18, 20, 26) | 0x8000
};

static const u32 sMoonlightMansion1Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/moonlight_mansion_1/tileset.4bpp.lz");
static const u16 sMoonlightMansion1Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/moonlight_mansion_1/tilemap.bin");

const struct RoomTiledBG gMoonlightMansion1RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sMoonlightMansion1Tileset,
    .tilesetSize = 900,
    .palette = sMoonlightMansion1Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sMoonlightMansion1Palette),
    .tilemap = sMoonlightMansion1Tilemap,
    .unk1C = 0x640000
};
