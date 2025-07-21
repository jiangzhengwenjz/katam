#include "global.h"
#include "data.h"

static const u16 sMustardMountain3Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB(15,  9,  6) | 0x0000, RGB(16, 10,  6) | 0x0000, RGB(16, 10,  7) | 0x0000, RGB(17, 11,  7) | 0x0000, RGB(17, 11,  8) | 0x0000, RGB(18, 11,  7) | 0x0000, RGB(17, 12,  8) | 0x0000,
    RGB(17, 12,  9) | 0x0000, RGB(18, 12,  9) | 0x0000, RGB(19, 12,  8) | 0x0000, RGB(18, 13,  9) | 0x0000, RGB(19, 13, 10) | 0x0000, RGB(20, 14, 11) | 0x0000, RGB(20, 15, 12) | 0x0000, RGB(22, 16, 12) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18, 12,  9) | 0x0000, RGB(19, 13, 10) | 0x0000, RGB(20, 14, 11) | 0x0000, RGB(20, 15, 11) | 0x0000, RGB(21, 15, 11) | 0x0000, RGB(21, 15, 12) | 0x0000, RGB(21, 16, 12) | 0x8000,
    RGB(22, 16, 13) | 0x8000, RGB(23, 16, 13) | 0x8000, RGB(22, 17, 14) | 0x8000, RGB(23, 17, 13) | 0x8000, RGB(23, 17, 14) | 0x8000, RGB(24, 18, 15) | 0x8000, RGB(25, 19, 16) | 0x8000, RGB(25, 20, 16) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18, 11,  7) | 0x0000, RGB(20, 11,  7) | 0x0000, RGB(18, 12,  9) | 0x0000, RGB(19, 12,  8) | 0x0000, RGB(20, 12,  8) | 0x0000, RGB(19, 13, 10) | 0x0000, RGB(20, 13,  9) | 0x0000,
    RGB(21, 13,  9) | 0x0000, RGB(20, 14, 10) | 0x0000, RGB(20, 14, 11) | 0x0000, RGB(21, 15, 11) | 0x0000, RGB(21, 15, 12) | 0x0000, RGB(22, 16, 13) | 0x8000, RGB(23, 17, 13) | 0x8000, RGB(25, 18, 14) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(16,  9,  5) | 0x0000, RGB(17, 10,  7) | 0x0000, RGB(18, 11,  8) | 0x0000, RGB(18, 12,  8) | 0x0000, RGB(18, 12,  9) | 0x0000, RGB(19, 13,  9) | 0x0000, RGB(20, 13,  9) | 0x0000,
    RGB(20, 13, 10) | 0x0000, RGB(20, 14, 11) | 0x0000, RGB(20, 14, 12) | 0x0000, RGB(20, 15, 12) | 0x0000, RGB(21, 15, 12) | 0x0000, RGB(22, 16, 13) | 0x8000, RGB(23, 17, 14) | 0x8000, RGB(24, 18, 16) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(15,  6,  1) | 0x0000, RGB(16,  6,  1) | 0x0000, RGB(17,  7,  1) | 0x0000, RGB(17,  8,  4) | 0x0000, RGB(16,  9,  6) | 0x0000, RGB(18,  9,  5) | 0x0000, RGB(17, 10,  7) | 0x0000,
    RGB(19, 10,  6) | 0x0000, RGB(20, 10,  7) | 0x0000, RGB(18, 11,  8) | 0x0000, RGB(21, 11,  8) | 0x0000, RGB(19, 13, 10) | 0x0000, RGB(22, 13, 10) | 0x0000, RGB(22, 16, 12) | 0x8000, RGB(25, 18, 14) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(17,  6,  1) | 0x0000, RGB(18,  7,  2) | 0x0000, RGB(18,  8,  4) | 0x0000, RGB(19,  9,  5) | 0x0000, RGB(17, 10,  6) | 0x0000, RGB(20, 10,  6) | 0x0000, RGB(18, 11,  7) | 0x0000,
    RGB(21, 10,  5) | 0x0000, RGB(21, 11,  6) | 0x0000, RGB(19, 12,  8) | 0x0000, RGB(22, 11,  6) | 0x0000, RGB(20, 13,  9) | 0x0000, RGB(21, 13,  9) | 0x0000, RGB(21, 14, 11) | 0x0000, RGB(23, 16, 13) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18, 11,  8) | 0x0000, RGB(19, 11,  6) | 0x0000, RGB(19, 11,  7) | 0x0000, RGB(20, 12,  7) | 0x0000, RGB(20, 12,  8) | 0x0000, RGB(23, 12,  7) | 0x0000, RGB(21, 13,  9) | 0x0000,
    RGB(25, 12,  6) | 0x0000, RGB(25, 13,  6) | 0x0000, RGB(22, 14, 10) | 0x0000, RGB(25, 14,  6) | 0x0000, RGB(23, 15, 11) | 0x0000, RGB(24, 16, 12) | 0x8000, RGB(25, 17, 13) | 0x8000, RGB(25, 18, 15) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18, 10,  5) | 0x0000, RGB(18, 11,  7) | 0x0000, RGB(21, 10,  4) | 0x0000, RGB(19, 11,  7) | 0x0000, RGB(19, 12,  8) | 0x0000, RGB(20, 12,  8) | 0x0000, RGB(21, 13,  9) | 0x0000,
    RGB(21, 14, 10) | 0x0000, RGB(22, 14, 10) | 0x0000, RGB(22, 15, 11) | 0x0000, RGB(23, 16, 12) | 0x8000, RGB(23, 17, 13) | 0x8000, RGB(24, 17, 14) | 0x8000, RGB(25, 18, 14) | 0x8000, RGB(25, 19, 15) | 0x8000
};

static const u32 sMustardMountain3Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/mustard_mountain_3/tileset.4bpp.lz");
static const u16 sMustardMountain3Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/mustard_mountain_3/tilemap.bin");

const struct RoomTiledBG gMustardMountain3RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sMustardMountain3Tileset,
    .tilesetSize = 900,
    .palette = sMustardMountain3Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sMustardMountain3Palette),
    .tilemap = sMustardMountain3Tilemap,
    .unk1C = 0x12f0000
};
