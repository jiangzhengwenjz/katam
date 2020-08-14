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

u8 *sub_08002888(u32 arg0, u8 arg1, u8 arg2)
{
    switch (arg0) {
        case 0:
            return gUnk_02023388 + arg2 * 64 + arg1 * 4;
        case 1:
            return gUnk_02023488 + arg1 * 4;
        case 2:
            return gUnk_02028C10 + arg1 * 4;
        default:
            return NULL;
    }
}

void sub_080028CC(u8 playerId, struct Unk_02023720 *arg1)
{
    struct Unk_02023720 *var0 = &gUnk_02023530[playerId].unk1F0;

    if (!arg1->unk04) {
        var0->unk00 = arg1->unk00;
    }
    else {
        arg1->unk04->unk00 = arg1->unk00;
    }

    if (!arg1->unk00) {
        var0->unk04 = arg1->unk04;
    }
    else {
        arg1->unk00->unk04 = arg1->unk04;
    }

    arg1->unk00 = NULL;
    arg1->unk04 = NULL;
    *arg1->unk08 = 0xFF;
    arg1->unk0C = 0;
}

void sub_08002918(u8 playerId, struct Unk_02023720 *arg1)
{
    struct Unk_02023720 *var0 = &gUnk_02023530[playerId].unk1F0;
    struct Unk_02023720 *var1 = var0->unk04;

    if (!var1) {
        var0->unk04 = arg1;
        var0->unk00 = arg1;
        arg1->unk04 = NULL;
    }
    else {
        var1->unk00 = arg1;
        arg1->unk04 = var1;
        var0->unk04 = arg1;
        var1 = NULL;
    }

    arg1->unk00 = var1;
    arg1->unk0C = 1;
    *arg1->unk08 = playerId;
}

u8 *sub_08002958(u8 playerId)
{
    void *var0 = &gUnk_02023530[playerId].unk1F0.unk08;

    for (;;) {
        if (*(u32 *) (var0 + 0xC) == 0) return var0;
        var0 += 0x10;
    }
}

struct Unk_02023720 *sub_08002984(u8 playerId, u8 *arg1)
{
    struct Unk_02023720 *var0 = gUnk_02023530[playerId].unk1F0.unk00;

    while (var0) {
        if (arg1 == var0->unk08) return var0;
        var0 = var0->unk00;
    }

    return NULL;
}

u16 sub_080029BC(u8 arg0)
{
    return gUnk_02023508[arg0];
}

void sub_080029CC(u8 arg0, u16 arg1)
{
    gUnk_02023508[arg0] = arg1 + gUnk_02023508[arg0];
}

u16 sub_080029E4(u8 arg0)
{
    return gUnk_02023510[arg0];
}

void sub_080029F4(u8 arg0, u16 arg1)
{
    gUnk_02023510[arg0] = arg1 + gUnk_02023510[arg0];
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

u16 sub_08002A5C(u16 arg0)
{
    return gUnk_02028CA0[gUnk_089331AC[arg0].unk24Idx] >> 0xF;
}

void sub_08002A80(u16 arg0)
{
    gUnk_02028CA0[gUnk_089331AC[arg0].unk24Idx] |= 0x8000;
}

u8 sub_08002AAC(u16 arg0)
{
    return gUnk_08D640A4[gUnk_089331AC[arg0].unk24Idx]->unk04;
}

u8 sub_08002AD0(u16 arg0)
{
    u8 var0 = 0;
    u8 var1 = gUnk_08D640A4[gUnk_089331AC[arg0].unk24Idx]->unk04;
    u16 var2 = gUnk_02028CA0[gUnk_089331AC[arg0].unk24Idx];
    u16 var3 = 0;

    while (var3 < var1) {
        if (((var2 >> var3) & 1) != 0) {
            var0++;
        }

        var3++;
    }

    return var0;
}

void sub_08002B30(u16 arg0, s16 arg1, s16 arg2)
{
    struct Unk_08930E00 *var0 = gUnk_08D640A4[gUnk_089331AC[arg0].unk24Idx]->unk00;
    u16 var1 = 0;

    for (;;) {
        if (
            var0->unk00 == 1 &&
            var0->unk04 == arg1 &&
            var0->unk06 == arg2
        ) {
            gUnk_02028CA0[gUnk_089331AC[arg0].unk24Idx] |= 1 << var1;
            return;
        }

        var0 = (void *) (&var0->unk00 + var0->unk01);
        var1++;
    }
}
