#include "global.h"
#include "data.h"

static const u16 sMustardMountain1Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB(13, 12, 11) | 0x0000, RGB(14, 12, 11) | 0x0000, RGB(15, 13, 11) | 0x0000, RGB(17, 14, 11) | 0x0000, RGB(17, 15, 12) | 0x0000, RGB(18, 15, 13) | 0x0000, RGB(18, 16, 14) | 0x8000,
    RGB(19, 17, 14) | 0x8000, RGB(20, 18, 14) | 0x8000, RGB(21, 19, 15) | 0x8000, RGB(22, 19, 16) | 0x8000, RGB(23, 20, 17) | 0x8000, RGB(24, 21, 18) | 0x8000, RGB(25, 23, 21) | 0x8000, RGB(28, 26, 25) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(12, 10,  8) | 0x0000, RGB(13, 10,  9) | 0x0000, RGB(14, 11, 10) | 0x0000, RGB(12, 12, 11) | 0x0000, RGB(15, 12, 10) | 0x0000, RGB(14, 13, 12) | 0x0000, RGB(16, 13, 12) | 0x0000,
    RGB(14, 14, 14) | 0x0000, RGB(13, 15, 13) | 0x0000, RGB(17, 14, 12) | 0x0000, RGB(15, 16, 14) | 0x8000, RGB(18, 15, 13) | 0x0000, RGB(19, 16, 14) | 0x8000, RGB(15, 19, 18) | 0x8000, RGB(20, 18, 16) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(15, 11,  9) | 0x0000, RGB(16, 13, 11) | 0x0000, RGB(17, 14, 12) | 0x0000, RGB(16, 15, 14) | 0x0000, RGB(18, 15, 13) | 0x0000, RGB(18, 16, 14) | 0x8000, RGB(19, 16, 13) | 0x8000,
    RGB(20, 16, 14) | 0x8000, RGB(20, 17, 14) | 0x8000, RGB(21, 17, 15) | 0x8000, RGB(21, 18, 15) | 0x8000, RGB(22, 18, 16) | 0x8000, RGB(22, 19, 16) | 0x8000, RGB(22, 19, 17) | 0x8000, RGB(23, 20, 18) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(13, 10,  8) | 0x0000, RGB(14, 12, 11) | 0x0000, RGB(14, 15, 13) | 0x0000, RGB(17, 15, 14) | 0x0000, RGB(15, 16, 14) | 0x8000, RGB(15, 17, 14) | 0x8000, RGB(15, 18, 15) | 0x8000,
    RGB(16, 18, 15) | 0x8000, RGB(19, 17, 15) | 0x8000, RGB(16, 19, 17) | 0x8000, RGB(17, 19, 16) | 0x8000, RGB(17, 20, 17) | 0x8000, RGB(18, 20, 17) | 0x8000, RGB(21, 19, 17) | 0x8000, RGB(19, 21, 18) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(14, 12, 11) | 0x0000, RGB(15, 13, 12) | 0x0000, RGB(15, 14, 13) | 0x0000, RGB(15, 14, 14) | 0x0000, RGB(16, 14, 12) | 0x0000, RGB(17, 14, 12) | 0x0000, RGB(16, 15, 14) | 0x0000,
    RGB(15, 16, 14) | 0x8000, RGB(18, 15, 12) | 0x0000, RGB(18, 15, 13) | 0x0000, RGB(18, 16, 14) | 0x8000, RGB(17, 17, 15) | 0x8000, RGB(19, 17, 14) | 0x8000, RGB(21, 18, 15) | 0x8000, RGB(21, 18, 16) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(13, 10,  8) | 0x0000, RGB(14, 11, 10) | 0x0000, RGB(15, 12, 10) | 0x0000, RGB(15, 13, 11) | 0x0000, RGB(16, 14, 12) | 0x0000, RGB(18, 15, 12) | 0x0000, RGB(18, 15, 13) | 0x0000,
    RGB(19, 16, 13) | 0x8000, RGB(20, 16, 14) | 0x8000, RGB(20, 17, 14) | 0x8000, RGB(21, 18, 15) | 0x8000, RGB(27, 17, 11) | 0x8000, RGB(22, 19, 16) | 0x8000, RGB(22, 20, 18) | 0x8000, RGB(29, 20, 15) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(13,  9,  7) | 0x0000, RGB(12, 10,  8) | 0x0000, RGB(12, 11, 11) | 0x0000, RGB(14, 11,  8) | 0x0000, RGB(15, 12, 10) | 0x0000, RGB(15, 13, 11) | 0x0000, RGB(16, 13, 11) | 0x0000,
    RGB(19, 13,  6) | 0x0000, RGB(17, 14, 12) | 0x0000, RGB(15, 15, 14) | 0x0000, RGB(18, 15, 12) | 0x0000, RGB(21, 15,  7) | 0x0000, RGB(19, 16, 13) | 0x8000, RGB(20, 17, 15) | 0x8000, RGB(21, 18, 17) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(13, 11, 10) | 0x0000, RGB(15, 14, 13) | 0x0000, RGB(16, 16, 15) | 0x8000, RGB(12, 17, 22) | 0x8000, RGB(18, 16, 14) | 0x8000, RGB(16, 18, 16) | 0x8000, RGB(18, 17, 16) | 0x8000,
    RGB(20, 17, 15) | 0x8000, RGB(14, 20, 18) | 0x8000, RGB(16, 19, 18) | 0x8000, RGB(12, 21, 25) | 0x8000, RGB(16, 21, 20) | 0x8000, RGB(22, 19, 16) | 0x8000, RGB(18, 21, 18) | 0x8000, RGB(22, 20, 18) | 0x8000
};

static const u32 sMustardMountain1Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/mustard_mountain_1/tileset.4bpp.lz");
static const u16 sMustardMountain1Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/mustard_mountain_1/tilemap.bin");

const struct RoomTiledBG gMustardMountain1RoomTiledBG = {
    .width = 30,
    .height = 30,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sMustardMountain1Tileset,
    .tilesetSize = 900,
    .palette = sMustardMountain1Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sMustardMountain1Palette),
    .tilemap = sMustardMountain1Tilemap,
    .unk1C = 0x970000
};
