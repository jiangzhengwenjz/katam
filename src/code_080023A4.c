#include "code_080023A4.h"

// TODO: define file boundaries

void sub_080023A4(u8 arg0) {
    struct LevelInfo* r1 = gCurLevelInfo + arg0;
    if (r1->currentRoom != 0xffff &&
        (gUnk_0203AD10 & 1) == 0) {
        CreateLevelObjects(arg0);
    }
}

u8 sub_080023E4(u8 playerId, u16 x, u16 y)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;

    return gUnk_02024ED0[var0->unk65E][
        var0->roomWidth / 16 * y + x
    ];
}

u8 sub_08002434(struct LevelInfo *arg0, u16 x, u16 y)
{
    return gUnk_02024ED0[arg0->unk65E][
        arg0->roomWidth / 16 * y + x
    ];
}

u8 sub_08002470(u8 playerId, u16 x, u16 y)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;

    u16 roomWidth = var0->roomWidth / 16;
    u16 roomHeight = var0->roomHeight / 16;

    if (x * 0x10000 < 0) {
        x = 0;
    }
    else if (roomWidth <= x) {
        x = roomWidth - 1;
    }

    if (y * 0x10000 < 0) {
        y = 0;
    }
    else if (roomHeight <= y) {
        y = roomHeight - 1;
    }

    return gUnk_02024ED0[var0->unk65E][y * roomWidth + x];
}

u8 sub_080024F0(struct LevelInfo *arg0, u16 x, u16 y)
{
    u16 roomWidth = arg0->roomWidth / 16;
    u16 roomHeight = arg0->roomHeight / 16;

    if (x * 0x10000 < 0) {
        x = 0;
    }
    else if (roomWidth <= x) {
        x = roomWidth - 1;
    }

    if (y * 0x10000 < 0) {
        y = 0;
    }
    else if (roomHeight <= y) {
        y = roomHeight - 1;
    }

    return gUnk_02024ED0[arg0->unk65E][y * roomWidth + x];
}

u8 sub_0800255C(u8 playerId, u16 x, u16 y, u8 value)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;
    u32 var1 = var0->roomWidth / 16 * y + x;

    u8 old = gUnk_02024ED0[var0->unk65E][var1];
    gUnk_02024ED0[var0->unk65E][var1] = value;

    return old;
}

struct Unk_0888562C *sub_080025AC(u8 playerId, u8 x, u8 y)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;
    struct Unk_0888562C *var1 = var0->unk1E0;
    u8 var2 = gUnk_02024ED0[var0->unk65E][y * (var0->roomWidth / 16) + x];

    for (;;) {
        if (
            var1->unk01 == var2 &&
            var1->unk02 == x &&
            var1->unk03 == y
        ) {
            return var1;
        }

        var1 = (void *) var1 + var1->unk04;
    }
}

struct Unk_0888562C *sub_08002624(u8 playerId, u8 x, u8 y, u8 arg3)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;
    struct Unk_0888562C *var1 = var0->unk1E0;
    u8 var2 = gUnk_02024ED0[var0->unk65E][y * (var0->roomWidth / 16) + x];

    for (;;) {
        if (
            var1->unk01 == var2 &&
            var1->unk02 == x &&
            var1->unk03 == y &&
            --arg3 == 0xFF
        ) {
            return var1;
        }

        var1 = (void *) var1 + var1->unk04;
    }
}

u8 sub_080026A8(u8 playerId, u16 x, u16 y)
{
    struct LevelInfo *var0 = gCurLevelInfo + playerId;

    return gUnk_02026D60[var0->unk65E][
        var0->roomWidth / 16 * y + x
    ];
}

u8 sub_080026F8(u16 roomId)
{
    return (*gLevelObjLists[gRoomProps[roomId].objectListIdx])[0].type;
}

u8 sub_0800271C(u16 roomId, u8 arg1)
{
    return *(u8 *) (
        *(u32 *) &(*gLevelObjLists[gRoomProps[roomId].objectListIdx])[0].unk4
        + arg1
    );
}

u8 sub_08002750(u16 roomId)
{
    return (*gLevelObjLists[gRoomProps[roomId].objectListIdx])[0].unkD;
}

u8 sub_08002774(u16 roomId, u8 arg1)
{
    return *(u8 *) (
        *(u32 *) &(*gLevelObjLists[gRoomProps[roomId].objectListIdx])[0].y
        + arg1
    );
}

void sub_080027A8(void)
{
    CpuFill32(0, gUnk_02023368, 32);
}

void sub_080027C8(void)
{
    CpuFill32(0, gUnk_02028BF0, 32);
}
