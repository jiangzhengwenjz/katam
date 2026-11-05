#include "code_08025650.h"
#include "code_080332BC.h"
#include "data.h"
#include "main.h"

static const u16 gUnk_082DEB10[] = { 0x3B6, 0x3B6, 0x3B6, 0x3B6 };
static const bool32 gUnk_082DEB18[] = { FALSE, TRUE, FALSE, TRUE };
static const s32 gUnk_082DEB28[][2] = {
    { 0xE000, 0x6000 },
    { 0x10000, 0x6000 },
    { 0xD000, 0x6000 },
    { 0x11000, 0x6000 },
};

static const u16 gUnk_082DEB48[] = { 0x3C9, 0x3C9, 0x3C9, 0x3C9 };
static const bool32 gUnk_082DEB50[] = { FALSE, TRUE, FALSE, TRUE };
static const s32 gUnk_082DEB60[][2] = {
    { 0x4000, 0x4000 },
    { 0x4000, 0x4000 },
    { 0x4000, 0x4000 },
    { 0x4000, 0x4000 },
};

void sub_08025650(u8 numPlayers) {
    u16 roomIds[4];
    bool32 sp0C[4];
    s32 positions[4][2];
    u16 i;

    for (i = 0; i < ARRAY_COUNT(roomIds); i++) {
        if (i < numPlayers) {
            roomIds[i] = gUnk_082DEB10[i];
            sp0C[i] = gUnk_082DEB18[i];
            positions[i][0] = gUnk_082DEB28[i][0];
            positions[i][1] = gUnk_082DEB28[i][1];
        } else {
            roomIds[i] = gUnk_082DEB48[i];
            sp0C[i] = gUnk_082DEB50[i];
            positions[i][0] = gUnk_082DEB60[i][0];
            positions[i][1] = gUnk_082DEB60[i][1];
        }
    }
    CpuFill16(RGB_WHITE, gBgPalette, sizeof(gBgPalette));
    CpuFill16(RGB_WHITE, gObjPalette, sizeof(gObjPalette));
    gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE | MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
    gBldRegs.bldCnt = 0;
    gBldRegs.bldY = 0;
    sub_080332BC(numPlayers, 0, roomIds, positions[0], sp0C);
    for (i = numPlayers; i < ARRAY_COUNT(gUnk_02038590); i++)
        gUnk_02038590[i].unk18 = 0x3C9;
}
