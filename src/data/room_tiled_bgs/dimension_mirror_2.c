#include "global.h"
#include "data.h"

static const u16 sDimensionMirror2Palette[] = {
    RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000,
    RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000, RGB( 0, 31, 12) | 0x8000,
    RGB( 1, 31, 13) | 0x8000, RGB( 6, 22, 31) | 0x8000, RGB( 4, 16, 31) | 0x0000, RGB( 0,  9, 30) | 0x0000, RGB( 0,  7, 23) | 0x0000, RGB( 0,  9, 30) | 0x0000, RGB( 4, 16, 31) | 0x0000, RGB( 5, 12, 27) | 0x0000,
    RGB( 3,  8, 25) | 0x0000, RGB( 0,  2, 21) | 0x0000, RGB( 0,  2, 20) | 0x0000, RGB( 0,  2, 21) | 0x0000, RGB( 3,  8, 25) | 0x0000, RGB( 1, 31, 13) | 0x8000, RGB( 1, 31, 13) | 0x8000, RGB( 1, 31, 13) | 0x8000,
    RGB( 1, 31, 13) | 0x8000, RGB( 5, 12, 27) | 0x0000, RGB( 3,  8, 25) | 0x0000, RGB( 0,  2, 21) | 0x0000, RGB( 0,  2, 20) | 0x0000, RGB( 0,  2, 21) | 0x0000, RGB( 3,  8, 25) | 0x0000, RGB( 2,  8, 20) | 0x0000,
    RGB( 0,  3, 17) | 0x0000, RGB( 0,  0, 15) | 0x0000, RGB( 0,  0, 12) | 0x0000, RGB( 0,  0, 14) | 0x0000, RGB( 0,  2, 15) | 0x0000, RGB( 0, 31, 10) | 0x8000, RGB( 0, 31, 10) | 0x8000, RGB( 0, 31, 10) | 0x8000,
    RGB( 1,  1, 31) | 0x8000, RGB( 2,  8, 20) | 0x0000, RGB( 0,  3, 17) | 0x0000, RGB( 0,  0, 15) | 0x0000, RGB( 0,  0, 12) | 0x0000, RGB( 0,  0, 14) | 0x0000, RGB( 0,  2, 15) | 0x0000, RGB( 0,  5, 15) | 0x0000,
    RGB( 0,  0, 11) | 0x0000, RGB( 0,  0, 10) | 0x0000, RGB( 0,  0,  8) | 0x0000, RGB( 0,  0, 10) | 0x0000, RGB( 0,  0, 11) | 0x0000, RGB( 0,  0, 31) | 0x0000, RGB( 0,  0, 31) | 0x0000, RGB( 0,  0, 31) | 0x0000,
    RGB(31,  1, 13) | 0x8000, RGB( 0,  5, 15) | 0x0000, RGB( 0,  0, 11) | 0x0000, RGB( 0,  0, 10) | 0x0000, RGB( 0,  0,  8) | 0x0000, RGB( 0,  0, 10) | 0x0000, RGB( 0,  0, 11) | 0x0000, RGB( 0,  0, 12) | 0x0000,
    RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  6) | 0x0000, RGB( 0,  0,  5) | 0x0000,
    RGB(31, 31, 13) | 0x8000, RGB( 0,  0, 10) | 0x0000, RGB( 0,  0,  8) | 0x0000, RGB( 0,  0, 10) | 0x0000, RGB( 0,  0, 12) | 0x0000, RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  7) | 0x0000,
    RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000,
    RGB(18,  1, 31) | 0x8000, RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  7) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000,
    RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0, 29) | 0x0000,
    RGB(31,  1, 13) | 0x8000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  5) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  3) | 0x0000,
    RGB( 0,  0,  3) | 0x0000, RGB( 0,  0,  2) | 0x0000, RGB( 0,  0,  1) | 0x0000, RGB( 0,  0,  2) | 0x0000, RGB( 0,  0,  2) | 0x0000, RGB( 0,  0,  2) | 0x0000, RGB( 0,  0,  2) | 0x0000, RGB( 0,  0,  2) | 0x0000
};

static const u32 sDimensionMirror2Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/dimension_mirror_2/tileset.4bpp.lz");
static const u16 sDimensionMirror2Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/dimension_mirror_2/tilemap.bin");

const struct RoomTiledBG gDimensionMirror2RoomTiledBG = {
    .width = 30,
    .height = 30,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sDimensionMirror2Tileset,
    .tilesetSize = 900,
    .palette = sDimensionMirror2Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sDimensionMirror2Palette),
    .tilemap = sDimensionMirror2Tilemap,
    .unk1C = 0x38e0000
};
