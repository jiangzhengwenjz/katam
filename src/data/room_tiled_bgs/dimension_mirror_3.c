#include "global.h"
#include "data.h"

static const u16 sDimensionMirror3Palette[] = {
    RGB(31, 31, 16) | 0x8000, RGB(31, 31, 16) | 0x8000, RGB(31, 31, 16) | 0x8000, RGB(31, 31, 16) | 0x8000, RGB(29,  8,  3) | 0x0000, RGB(29,  7,  3) | 0x0000, RGB(28,  7,  2) | 0x0000, RGB(27,  7,  0) | 0x0000,
    RGB(26,  6,  2) | 0x0000, RGB(25,  6,  2) | 0x0000, RGB(24,  6,  2) | 0x0000, RGB(24,  5,  2) | 0x0000, RGB(23,  5,  3) | 0x0000, RGB(22,  5,  3) | 0x0000, RGB(21,  5,  3) | 0x0000, RGB(20,  5,  4) | 0x0000,
    RGB(16, 31, 16) | 0x8000, RGB(16, 31, 16) | 0x8000, RGB(16, 31, 16) | 0x8000, RGB(16, 31, 16) | 0x8000, RGB(26,  6,  2) | 0x0000, RGB(25,  6,  2) | 0x0000, RGB(24,  6,  2) | 0x0000, RGB(24,  5,  2) | 0x0000,
    RGB(23,  5,  3) | 0x0000, RGB(22,  5,  3) | 0x0000, RGB(21,  5,  3) | 0x0000, RGB(20,  5,  4) | 0x0000, RGB(19,  5,  4) | 0x0000, RGB(18,  5,  4) | 0x0000, RGB(17,  5,  4) | 0x0000, RGB(16,  5,  5) | 0x0000,
    RGB(16, 31, 31) | 0x8000, RGB(16, 31, 31) | 0x8000, RGB(16, 31, 31) | 0x8000, RGB(16, 31, 31) | 0x8000, RGB(24,  6,  3) | 0x0000, RGB(23,  6,  3) | 0x0000, RGB(22,  6,  3) | 0x0000, RGB(21,  5,  3) | 0x0000,
    RGB(20,  5,  4) | 0x0000, RGB(20,  5,  4) | 0x0000, RGB(19,  5,  4) | 0x0000, RGB(18,  5,  4) | 0x0000, RGB(17,  5,  5) | 0x0000, RGB(16,  5,  5) | 0x0000, RGB(16,  5,  5) | 0x0000, RGB(15,  5,  5) | 0x0000,
    RGB( 0, 16, 31) | 0x8000, RGB( 6,  1,  0) | 0x0000, RGB( 7,  2,  0) | 0x0000, RGB( 9,  3,  1) | 0x0000, RGB(10,  5,  2) | 0x0000, RGB(12,  6,  3) | 0x0000, RGB(13,  8,  4) | 0x0000, RGB(15,  9,  5) | 0x0000,
    RGB(16, 10,  5) | 0x0000, RGB(20,  5,  4) | 0x0000, RGB(18,  4,  3) | 0x0000, RGB(17,  3,  2) | 0x0000, RGB(15,  2,  2) | 0x0000, RGB(13,  1,  1) | 0x0000, RGB(11,  0,  0) | 0x0000, RGB( 8,  0,  0) | 0x0000,
    RGB(31, 16, 24) | 0x8000, RGB( 6,  1,  0) | 0x0000, RGB( 7,  2,  0) | 0x0000, RGB( 9,  3,  1) | 0x0000, RGB(10,  5,  2) | 0x0000, RGB(12,  6,  3) | 0x0000, RGB(13,  8,  4) | 0x0000, RGB(15,  9,  5) | 0x0000,
    RGB(16, 10,  5) | 0x0000, RGB(18, 12,  6) | 0x0000, RGB(19, 13,  7) | 0x0000, RGB(21, 15,  8) | 0x0000, RGB(22, 16,  9) | 0x8000, RGB(25, 18,  9) | 0x8000, RGB(27, 20, 11) | 0x8000, RGB(29, 22, 13) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000,
    RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000, RGB( 0,  0,  0) | 0x0000
};

static const u32 sDimensionMirror3Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/dimension_mirror_3/tileset.4bpp.lz");
static const u16 sDimensionMirror3Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/dimension_mirror_3/tilemap.bin");

const struct RoomTiledBG gDimensionMirror3RoomTiledBG = {
    .width = 32,
    .height = 22,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sDimensionMirror3Tileset,
    .tilesetSize = 900,
    .palette = sDimensionMirror3Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sDimensionMirror3Palette),
    .tilemap = sDimensionMirror3Tilemap,
    .unk1C = 0x3960000
};
