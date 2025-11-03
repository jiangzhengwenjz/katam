#include "global.h"

const u16 gAreaMapRoomsPalette[2][0x40] = {
    {
        RGB(0, 18, 20) | 0x0000,  RGB_BLACK | 0x0000,       RGB(19, 6, 0) | 0x0000,  RGB(26, 12, 0) | 0x0000,  RGB(27, 19, 0) | 0x8000,
        RGB(29, 25, 6) | 0x8000,  RGB(31, 31, 12) | 0x0000, RGB_WHITE | 0x8000,      RGB(18, 6, 0) | 0x0000,   RGB(21, 8, 0) | 0x8000,
        RGB(24, 11, 0) | 0x0000,  RGB(27, 13, 0) | 0x8000,  RGB(31, 16, 0) | 0x8000, RGB(31, 23, 0) | 0x0000,  RGB_BLACK | 0x0000,
        RGB_BLACK | 0x0000,       RGB(0, 18, 20) | 0x0000,  RGB_BLACK | 0x0000,      RGB(3, 0, 22) | 0x0000,   RGB(18, 13, 31) | 0x0000,
        RGB(22, 20, 31) | 0x0000, RGB(26, 26, 31) | 0x8000, RGB(26, 2, 9) | 0x0000,  RGB(31, 14, 27) | 0x0000, RGB(31, 19, 26) | 0x8000,
        RGB(31, 25, 25) | 0x0000, RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,      RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,
        RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,       RGB(0, 18, 20) | 0x0000, RGB_BLACK | 0x0000,       RGB(19, 6, 0) | 0x0000,
        RGB(26, 12, 0) | 0x0000,  RGB(27, 19, 0) | 0x8000,  RGB(29, 25, 6) | 0x8000, RGB(31, 31, 12) | 0x0000, RGB_WHITE | 0x8000,
        RGB(18, 6, 0) | 0x0000,   RGB(21, 8, 0) | 0x8000,   RGB(24, 11, 0) | 0x0000, RGB(27, 13, 0) | 0x8000,  RGB(31, 16, 0) | 0x8000,
        RGB(31, 23, 0) | 0x0000,  RGB_BLACK | 0x0000,       RGB_BLACK | 0x0000,
    },
    {0},
};

const u32 gAreaMapRoomsTileset[0x1000] = INCBIN_U32("graphics/pause_menu/areamap_rooms/tileset.8bpp");
