#include "global.h"
#include "data.h"

static const u16 sMustardMountain2Palette[] = {
    RGB( 0,  0,  0) | 0x0000, RGB(21, 16, 15) | 0x8000, RGB(22, 17, 16) | 0x8000, RGB(25, 20, 18) | 0x8000, RGB(26, 21, 19) | 0x8000, RGB(31, 21, 14) | 0x8000, RGB(28, 22, 20) | 0x8000, RGB(31, 22, 14) | 0x8000,
    RGB(31, 23, 14) | 0x8000, RGB(29, 23, 21) | 0x8000, RGB(31, 24, 14) | 0x8000, RGB(31, 24, 18) | 0x8000, RGB(30, 25, 22) | 0x8000, RGB(31, 26, 24) | 0x8000, RGB(31, 28, 26) | 0x8000, RGB(31, 30, 30) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(19, 14, 13) | 0x0000, RGB(20, 15, 14) | 0x0000, RGB(21, 16, 15) | 0x8000, RGB(22, 17, 16) | 0x8000, RGB(22, 17, 17) | 0x8000, RGB(23, 18, 16) | 0x8000, RGB(23, 18, 17) | 0x8000,
    RGB(24, 19, 17) | 0x8000, RGB(24, 20, 19) | 0x8000, RGB(24, 20, 20) | 0x8000, RGB(25, 20, 20) | 0x8000, RGB(27, 21, 19) | 0x8000, RGB(30, 21, 14) | 0x8000, RGB(26, 22, 21) | 0x8000, RGB(28, 23, 22) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(21, 16, 15) | 0x8000, RGB(22, 17, 16) | 0x8000, RGB(24, 17, 16) | 0x8000, RGB(23, 18, 17) | 0x8000, RGB(24, 19, 18) | 0x8000, RGB(25, 20, 19) | 0x8000, RGB(26, 20, 19) | 0x8000,
    RGB(27, 21, 20) | 0x8000, RGB(28, 21, 20) | 0x8000, RGB(28, 22, 16) | 0x8000, RGB(28, 22, 21) | 0x8000, RGB(28, 23, 22) | 0x8000, RGB(31, 24, 13) | 0x8000, RGB(31, 24, 14) | 0x8000, RGB(31, 26, 12) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(20, 15, 14) | 0x0000, RGB(22, 17, 17) | 0x8000, RGB(25, 19, 18) | 0x8000, RGB(26, 21, 20) | 0x8000, RGB(27, 22, 20) | 0x8000, RGB(28, 23, 20) | 0x8000, RGB(29, 25, 20) | 0x8000,
    RGB(31, 26, 12) | 0x8000, RGB(30, 26, 16) | 0x8000, RGB(30, 26, 21) | 0x8000, RGB(31, 28, 12) | 0x8000, RGB(31, 29, 11) | 0x8000, RGB(31, 31, 10) | 0x8000, RGB(31, 29, 23) | 0x8000, RGB(31, 30, 29) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18, 13, 13) | 0x0000, RGB(19, 15, 14) | 0x0000, RGB(21, 16, 15) | 0x8000, RGB(21, 17, 16) | 0x8000, RGB(22, 17, 17) | 0x8000, RGB(23, 18, 17) | 0x8000, RGB(23, 19, 18) | 0x8000,
    RGB(24, 20, 19) | 0x8000, RGB(24, 20, 20) | 0x8000, RGB(25, 20, 20) | 0x8000, RGB(26, 21, 20) | 0x8000, RGB(27, 22, 21) | 0x8000, RGB(31, 22, 14) | 0x8000, RGB(28, 23, 22) | 0x8000, RGB(29, 24, 23) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18, 14, 14) | 0x0000, RGB(19, 15, 15) | 0x0000, RGB(20, 16, 15) | 0x8000, RGB(20, 17, 16) | 0x8000, RGB(21, 17, 17) | 0x8000, RGB(22, 18, 17) | 0x8000, RGB(23, 19, 18) | 0x8000,
    RGB(24, 20, 19) | 0x8000, RGB(25, 20, 19) | 0x8000, RGB(26, 21, 20) | 0x8000, RGB(27, 22, 21) | 0x8000, RGB(28, 23, 21) | 0x8000, RGB(28, 23, 22) | 0x8000, RGB(29, 24, 23) | 0x8000, RGB(30, 25, 24) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(19, 15, 14) | 0x0000, RGB(21, 15, 15) | 0x0000, RGB(26, 15, 14) | 0x0000, RGB(21, 17, 17) | 0x8000, RGB(30, 14, 10) | 0x0000, RGB(30, 16, 13) | 0x8000, RGB(24, 18, 20) | 0x8000,
    RGB(27, 18, 18) | 0x8000, RGB(30, 17, 15) | 0x8000, RGB(30, 18, 16) | 0x8000, RGB(31, 18, 15) | 0x8000, RGB(26, 21, 20) | 0x8000, RGB(30, 20, 17) | 0x8000, RGB(31, 20, 15) | 0x8000, RGB(31, 22, 17) | 0x8000,
    RGB( 0,  0,  0) | 0x0000, RGB(18, 13, 13) | 0x0000, RGB(19, 15, 14) | 0x0000, RGB(20, 15, 15) | 0x0000, RGB(26, 13, 11) | 0x0000, RGB(29, 14, 10) | 0x0000, RGB(21, 17, 16) | 0x8000, RGB(21, 17, 17) | 0x8000,
    RGB(24, 19, 18) | 0x8000, RGB(30, 17, 13) | 0x8000, RGB(26, 20, 19) | 0x8000, RGB(30, 19, 15) | 0x8000, RGB(27, 22, 21) | 0x8000, RGB(30, 21, 18) | 0x8000, RGB(28, 23, 22) | 0x8000, RGB(29, 24, 24) | 0x8000
};

static const u32 sMustardMountain2Tileset[] = INCBIN_U32("graphics/rooms/backgrounds/mustard_mountain_2/tileset.4bpp.lz");
static const u16 sMustardMountain2Tilemap[] = INCBIN_U16("graphics/rooms/backgrounds/mustard_mountain_2/tilemap.bin");

const struct RoomTiledBG gMustardMountain2RoomTiledBG = {
    .width = 45,
    .height = 20,
    .unk4 = 0,
    .unk6 = 0,
    .unk7 = 0,
    .tileset = sMustardMountain2Tileset,
    .tilesetSize = 900,
    .palette = sMustardMountain2Palette,
    .paletteOffset = 0x60,
    .paletteSize = ARRAY_COUNT(sMustardMountain2Palette),
    .tilemap = sMustardMountain2Tilemap,
    .unk1C = 0x12d0000
};
