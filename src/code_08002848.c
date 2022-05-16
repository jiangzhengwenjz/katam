#include "code_08002848.h"

// TODO: define file boundaries

void sub_08002848(void)
{
    CpuFill32(0, gUnk_02023488, 128);
}

void sub_08002868(void)
{
    CpuFill32(0, gUnk_02028C10, 128);
}

u32 *sub_08002888(u32 arg0, u8 arg1, u8 arg2)
{
    switch (arg0) {
        case 0:
            return gUnk_02023388[arg2] + arg1;
        case 1:
            return gUnk_02023488 + arg1;
        case 2:
            return gUnk_02028C10 + arg1;
        default:
            return NULL;
    }
}

void sub_080028CC(u8 playerId, struct Unk_02023720 *arg1) // remove node
{
    struct Unk_02023720_Mgr *var0 = &gCurLevelInfo[playerId].unk1F0;

    if (!arg1->prev) {
        var0->first = arg1->next;
    }
    else {
        arg1->prev->next = arg1->next;
    }

    if (!arg1->next) {
        var0->last = arg1->prev;
    }
    else {
        arg1->next->prev = arg1->prev;
    }

    arg1->next = NULL;
    arg1->prev = NULL;
    *arg1->unk08 = 0xFF;
    arg1->unk0C = 0;
}

void sub_08002918(u8 playerId, struct Unk_02023720 *arg1) // insert node
{
    struct Unk_02023720_Mgr *var0 = &gCurLevelInfo[playerId].unk1F0;
    struct Unk_02023720 *var1 = var0->last;

    if (!var1) {
        var0->last = arg1;
        var0->first = arg1;
        arg1->prev = NULL;
        arg1->next = NULL;
    }
    else {
        var1->next = arg1;
        arg1->prev = var1;
        var0->last = arg1;
        arg1->next = NULL;
    }

    arg1->unk0C = 1;
    *arg1->unk08 = playerId;
}

struct Unk_02023720 *sub_08002958(u8 playerId)
{
    struct Unk_02023720 *var0 = gCurLevelInfo[playerId].unk1F0.nodes;

    for (;;) {
        if (!var0->unk0C) return var0;
        var0++;
    }
}

struct Unk_02023720 *sub_08002984(u8 playerId, u8 *arg1)
{
    struct Unk_02023720 *var0 = gCurLevelInfo[playerId].unk1F0.first;

    while (var0) {
        if (arg1 == var0->unk08) return var0;
        var0 = var0->next;
    }

    return NULL;
}

u16 sub_080029BC(u8 arg0)
{
    return gUnk_02023508[arg0];
}

void sub_080029CC(u8 arg0, u16 arg1)
{
    gUnk_02023508[arg0] += arg1;
}

u16 sub_080029E4(u8 arg0)
{
    return gUnk_02023510[arg0];
}

void sub_080029F4(u8 arg0, u16 arg1)
{
    gUnk_02023510[arg0] += arg1;
}

u16 sub_08002A0C(u8 arg0)
{
    return gUnk_02023518[arg0];
}

void sub_08002A1C(u8 arg0, u16 arg1)
{
    gUnk_02023518[arg0] = arg1;
}

u16 sub_08002A2C(u8 arg0, u8 arg1)
{
    return gUnk_02023520[arg0][arg1];
}

void sub_08002A44(u8 arg0, u16 arg1, u8 arg2)
{
    gUnk_02023520[arg0][arg2] = arg1;
}

u16 sub_08002A5C(u16 roomId)
{
    return gUnk_02028CA0[gRoomProps[roomId].doorsIdx] >> 0xF;
}

void sub_08002A80(u16 roomId)
{
    gUnk_02028CA0[gRoomProps[roomId].doorsIdx] |= 0x8000;
}

u8 sub_08002AAC(u16 roomId)
{
    return gUnk_08D640A4[gRoomProps[roomId].doorsIdx]->unk04;
}

u8 sub_08002AD0(u16 roomId)
{
    u8 var0 = 0;
    u8 var1 = gUnk_08D640A4[gRoomProps[roomId].doorsIdx]->unk04;
    u16 var2 = gUnk_02028CA0[gRoomProps[roomId].doorsIdx];
    u16 i;

    for (i = 0; i < var1; i++) {
        if ((var2 >> i) & 1)
            var0++;
    }

    return var0;
}

void sub_08002B30(u16 roomId, s16 arg1, s16 arg2)
{
    struct Unk_08930E00_1 *var0 = gUnk_08D640A4[gRoomProps[roomId].doorsIdx]->unk00.pat1;
    u16 i;

    for (i = 0; ; i++) {
        if (
            var0->unk00 == 1 &&
            var0->unk04 == arg1 &&
            var0->unk06 == arg2
        ) {
            gUnk_02028CA0[gRoomProps[roomId].doorsIdx] |= 1 << i;
            return;
        }
        var0 = (void *)var0 + var0->unk01;
    }
}
