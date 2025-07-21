#include "global.h"
#include "data.h"

static const u16 sCarrotCastle2Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB(30, 17,  5) | 0x8000, RGB(30, 18,  8) | 0x8000, RGB(30, 20,  4) | 0x8000, RGB(30, 20, 11) | 0x8000, RGB(28, 21, 15) | 0x8000, RGB(30, 22,  6) | 0x8000, RGB(30, 21, 14) | 0x8000,
    RGB(30, 22, 15) | 0x8000, RGB(30, 23, 16) | 0x8000, RGB(30, 25, 11) | 0x8000, RGB(30, 24, 17) | 0x8000, RGB(30, 26, 19) | 0x8000, RGB(31, 27, 18) | 0x8000, RGB(31, 28, 20) | 0x8000, RGB(31, 30, 21) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(23, 10,  3) | 0x0000, RGB(25, 13,  3) | 0x0000, RGB(26, 15,  3) | 0x0000, RGB(24, 15, 20) | 0x0000, RGB(27, 17,  3) | 0x8000, RGB(28, 18,  4) | 0x8000, RGB(28, 20,  6) | 0x8000,
    RGB(29, 21,  8) | 0x8000, RGB(26, 21, 19) | 0x8000, RGB(28, 23, 19) | 0x8000, RGB(29, 24, 12) | 0x8000, RGB(28, 24, 20) | 0x8000, RGB(30, 25, 15) | 0x8000, RGB(30, 27, 18) | 0x8000, RGB(31, 29, 19) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(30, 13,  2) | 0x0000, RGB(30, 16,  3) | 0x8000, RGB(30, 18,  6) | 0x8000, RGB(30, 19,  2) | 0x8000, RGB(30, 19,  7) | 0x8000, RGB(30, 21,  5) | 0x8000, RGB(30, 23,  8) | 0x8000,
    RGB(31, 25,  9) | 0x8000, RGB(31, 26, 13) | 0x8000, RGB(28, 26, 23) | 0x8000, RGB(31, 28,  7) | 0x8000, RGB(31, 27, 14) | 0x8000, RGB(29, 27, 22) | 0x8000, RGB(31, 28, 15) | 0x8000, RGB(31, 30, 18) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18,  7,  1) | 0x0000, RGB(21,  8,  2) | 0x0000, RGB(23,  9,  2) | 0x0000, RGB(25, 10,  2) | 0x0000, RGB(26, 12,  2) | 0x0000, RGB(28, 12,  3) | 0x0000, RGB(26, 14,  2) | 0x0000,
    RGB(29, 13,  3) | 0x0000, RGB(30, 14,  3) | 0x0000, RGB(30, 16,  4) | 0x8000, RGB(30, 18,  8) | 0x8000, RGB(30, 19, 10) | 0x8000, RGB(30, 21, 13) | 0x8000, RGB(30, 23, 16) | 0x8000, RGB(31, 27, 17) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(30, 13,  3) | 0x0000, RGB(30, 14,  3) | 0x0000, RGB(30, 14,  4) | 0x0000, RGB(30, 16,  4) | 0x8000, RGB(30, 17,  5) | 0x8000, RGB(30, 18,  6) | 0x8000, RGB(30, 19,  7) | 0x8000,
    RGB(30, 20,  8) | 0x8000, RGB(30, 21, 11) | 0x8000, RGB(30, 22, 12) | 0x8000, RGB(31, 24, 13) | 0x8000, RGB(30, 25, 16) | 0x8000, RGB(31, 27, 17) | 0x8000, RGB(31, 28, 18) | 0x8000, RGB(31, 29, 20) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(15,  6,  0) | 0x0000, RGB(16,  6,  0) | 0x0000, RGB(17,  7,  0) | 0x0000, RGB(19,  7,  1) | 0x0000, RGB(20,  8,  2) | 0x0000, RGB(22,  8,  2) | 0x0000, RGB(23,  9,  2) | 0x0000,
    RGB(22, 10,  2) | 0x0000, RGB(24, 10,  2) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000
};

static const u32 sCarrotCastle2Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/carrot_castle_2/tileset.4bpp.lz");
static const u16 sCarrotCastle2Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/carrot_castle_2/tilemap.bin");

const struct RoomTiledBG gCarrotCastle2RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sCarrotCastle2Tileset,
    .tilesetSize = 900,
    .palette = sCarrotCastle2Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sCarrotCastle2Palette),
    .tilemap = sCarrotCastle2Tilemap,
    .unk1C = 0x660000
};
