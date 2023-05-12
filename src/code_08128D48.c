#include "code_08128D48.h"
#include "task.h"
#include "pause_fade.h"
#include "palette.h"

void sub_08128DB0(void);
void sub_08128E8C(void);

// apply a set of tilesets during animation (?)
struct Task *sub_08128D48(const struct Unk_08128D48_0 *a1) {
    struct Task *t = TaskCreate(sub_08128DB0, sizeof(struct Unk_08128D48), 0x100, 0, NULL);
    struct Unk_08128D48 *var = TaskGetStructPtr(t);

    var->frames = a1->frames;
    var->dstVram = VRAM + a1->dstVramOffset;
    var->numFrames = a1->numFrames;
    var->sizeTiles = 0x20 * a1->numTiles;
    var->currentTilesetIndex = 0;
    var->delayCounter = 0xFF;
    return t;
}

void sub_08128DB0(void) {
    struct Unk_08128D48 *var = TaskGetStructPtr(gCurTask);
    const struct Unk_08128D48_0_4 *p = &var->frames[var->currentTilesetIndex];

    if (var->delayCounter < p->delay)
        ++var->delayCounter;
    else {
        ++var->currentTilesetIndex;
        var->delayCounter = 0;
        if (var->currentTilesetIndex >= var->numFrames)
            var->currentTilesetIndex = 0;
        ++var; --var;
        p = &var->frames[var->currentTilesetIndex];
        CpuCopy32((void *)VRAM + p->srcVramOffset, (void *)var->dstVram, var->sizeTiles);
    }
}

// apply a set of palettes during animation (?)
struct Task *sub_08128E28(const struct Unk_08128E28_0 *a1) {
    struct Task *t = TaskCreate(sub_08128E8C, sizeof(struct Unk_08128E28), 0x100, 0, NULL);
    struct Unk_08128E28 *var = TaskGetStructPtr(t);

    var->data = a1->data;
    var->currentDataOffset = 0;
    var->paletteOffset = a1->paletteOffset;
    var->paletteSize = a1->paletteSize;
    var->numPalettes = a1->numPalettes;
    var->currentPaletteIndex = 0;
    var->delayCounter = 0xFF;
    return t;
}

void sub_08128E8C(void) {
    struct Unk_08128E28 *var = TaskGetStructPtr(gCurTask);
    const u16 *p = &var->data[var->currentDataOffset];

    if (var->delayCounter < p[0])
        ++var->delayCounter;
    else {
        ++var->currentPaletteIndex;
        var->delayCounter = 0;
        var->currentDataOffset += var->paletteSize + 1;
        if (var->currentPaletteIndex >= var->numPalettes) {
            var->currentPaletteIndex = 0;
            var->currentDataOffset = 0;
        }
        ++var; --var;
        p = &var->data[var->currentDataOffset];
        if (gUnk_03002440 & 0x10000)
            sub_08158334(p+1, var->paletteOffset, var->paletteSize);
        else {
            DmaCopy16(3, p+1, gBgPalette + var->paletteOffset, var->paletteSize * sizeof(u16));
            gUnk_03002440 |= 1;
        }
    }
}

void sub_081295A0(void);
void sub_081297F8(struct Unk_08128F44 *);
void sub_081298B4(void);
void sub_08129A6C(void);
void sub_08129C34(void);
void sub_08129F28(void);
void sub_0812A39C(void);

extern const u8 gUnk_08363AA0[];

struct Task *sub_08128F44(const struct Unk_02021590 *a1, u8 a2, u8 a3, s16 a4, s16 a5, u8 a6) {
    struct Task *t = TaskCreate(sub_0812A39C, sizeof(struct Unk_08128F44), 0x100, 0, NULL);
    struct Unk_08128F44 *tmp = TaskGetStructPtr(t), *var = tmp;
#ifndef NONMATCHING
    register struct Unk_08128F44_4 *var1 asm("r6"), *var2 asm("r4");
#else
    struct Unk_08128F44_4 *var1, *var2;
#endif

    var->unk0 = a1;
    var->unk2AC = 0x10;
    var->unk2AD = 0;
    var->unk2AE = 0;
    var->unk2B0 = a2;
    var->unk2B1 = a3;
    var->unk2B2 = 1;
    var->unk2B3 = 0;
    var->unk2B4 = a4;
    var->unk2B6 = a5;
    if (a6) var->unk2AC |= 0x80;
    if (gUnk_03002440 & 0x20000)
        sub_0815828C(&gUnk_082DE69C[0x10 * var->unk2B2], 0x10 * var->unk2B0, 0x10);
    else {
        DmaCopy16(3, &gUnk_082DE69C[0x10 * var->unk2B2], &gObjPalette[0x10 * var->unk2B0], 0x10 * sizeof(u16));
        gUnk_03002440 |= 2;
    }
    if (gUnk_03002440 & 0x20000)
        sub_0815828C(gUnk_082DE69C, 0x10 * var->unk2B1, 0x10);
    else {
        DmaCopy16(3, gUnk_082DE69C, &gObjPalette[0x10 * var->unk2B1], 0x10 * sizeof(u16));
        gUnk_03002440 |= 2;
    }
    CpuFill32(0, &var->unk4[0][0], sizeof(struct Unk_08128F44_4));
    var->unk4[0][0].unk0.tilesVram = 0x6010000;
    var->unk4[0][0].unk0.unk14 = 0x280;
    var->unk4[0][0].unk0.animId = var->unk0[0].animId;
    var->unk4[0][0].unk0.variant = var->unk0[0].variant;
    var->unk4[0][0].unk0.unk16 = 0;
    var->unk4[0][0].unk0.unk1B = 0xFF;
    var->unk4[0][0].unk0.unk1C = 0x10;
    var->unk4[0][0].unk0.palId = var->unk2B0;
    var->unk4[0][0].unk0.x = ({var->unk2B4 + 0;});
    var->unk4[0][0].unk0.y = ({var->unk2B6 + 0;});
    var->unk4[0][0].unk0.unk8 = 0xC0000;
    var->unk4[0][0].unk28 = 4 * var->unk2B4;
    var->unk4[0][0].unk2C = 4 * var->unk2B6;
    var->unk4[0][0].unk30 = 0;
    var->unk4[0][0].unk32 = 0;
    var->unk4[0][0].unk34 = 0x10;
    var->unk4[0][0].unk36 = 0;
    var->unk4[0][0].unk38 = 0;
    var->unk4[0][0].unk3C = NULL;
    var->unk4[0][0].unk40 = NULL;
    CpuFill32(0, &var->unk4[1][0], sizeof(struct Unk_08128F44_4));
    var->unk4[1][0].unk0.tilesVram = 0x6010000;
    var->unk4[1][0].unk0.unk14 = 0x280;
    var->unk4[1][0].unk0.animId = var->unk0[1].animId;
    var->unk4[1][0].unk0.variant = var->unk0[1].variant;
    var->unk4[1][0].unk0.unk16 = 0;
    var->unk4[1][0].unk0.unk1B = 0xFF;
    var->unk4[1][0].unk0.unk1C = 0x10;
    var->unk4[1][0].unk0.palId = var->unk2B0;
    var->unk4[1][0].unk0.x = 0;
    var->unk4[1][0].unk0.y = 0;
    var->unk4[1][0].unk0.unk8 = 0xC0000;
    var->unk4[1][0].unk28 = 0;
    var->unk4[1][0].unk2C = 0;
    var->unk4[1][0].unk30 = 0;
    var->unk4[1][0].unk32 = 0;
    var->unk4[1][0].unk34 = 0x10;
    var->unk4[1][0].unk36 = 0;
    var->unk4[1][0].unk38 = 0;
    var->unk4[1][0].unk3C = NULL;
    var->unk4[1][0].unk40 = NULL;
    var->unk4[0][0].unk40 = &var->unk4[1][0];
    var->unk4[1][0].unk3C = &var->unk4[0][0];
    var->unk4[1][0].unk34 &= ~0x10;
    CpuFill32(0, var1 = &var->unk4[2][0], sizeof(struct Unk_08128F44_4));
    var1->unk0.tilesVram = 0x6010000;
    var1->unk0.unk14 = 0x2C0;
    var1->unk0.animId = var->unk0[0].animId;
    var1->unk0.variant = var->unk0[0].variant;
    var1->unk0.unk16 = 0;
    var1->unk0.unk1B = 0xFF;
    var1->unk0.unk1C = 0x10;
    var1->unk0.palId = var->unk2B1;
    var1->unk0.x = ({var->unk2B4 + 0x14;});
    var1->unk0.y = ({var->unk2B6 + 0xA;});
    var1->unk0.unk8 = 0xC0000;
    var1->unk28 = 4 * (var->unk2B4 + 0x14);
    var1->unk2C = 4 * (var->unk2B6 + 0xA);
    var1->unk30 = 0;
    var1->unk32 = 0;
    var1->unk34 = 0x10;
    var1->unk36 = 0;
    var1->unk38 = 0;
    var1->unk3C = NULL;
    var1->unk40 = NULL;
    CpuFill32(0, var2 = &var->unk4[3][0], sizeof(struct Unk_08128F44_4));
    var2->unk0.tilesVram = 0x6010000;
    var2->unk0.unk14 = 0x2C0;
    var2->unk0.animId = var->unk0[2].animId;
    var2->unk0.variant = var->unk0[2].variant;
    var2->unk0.unk16 = 0;
    var2->unk0.unk1B = 0xFF;
    var2->unk0.unk1C = 0x10;
    var2->unk0.palId = var->unk2B1;
    var2->unk0.x = 0;
    var2->unk0.y = 0;
    var2->unk0.unk8 = 0xC0000;
    var2->unk28 = 0;
    var2->unk2C = 0;
    var2->unk30 = 0;
    var2->unk32 = 0;
    var2->unk34 = 0x10;
    var2->unk36 = 0;
    var2->unk38 = 0;
    var2->unk3C = NULL;
    var2->unk40 = NULL;
    var1->unk40 = var2;
    var2->unk3C = var1;
    var2->unk34 &= ~0x10;
    CpuFill32(0, var1 = &var->unk4[4][0], sizeof(struct Unk_08128F44_4));
    var1->unk0.tilesVram = 0x6010000;
    var1->unk0.unk14 = 0x280;
    var1->unk0.animId = var->unk0[0].animId;
    var1->unk0.variant = var->unk0[0].variant;
    var1->unk0.unk16 = 0;
    var1->unk0.unk1B = 0xFF;
    var1->unk0.unk1C = 0x10;
    var1->unk0.palId = var->unk2B0;
    var1->unk0.x = ({var->unk2B4 - 0x14;});
    var1->unk0.y = ({var->unk2B6 - 5;});
    var1->unk0.unk8 = 0xC0000;
    var1->unk28 = 4 * (var->unk2B4 - 0x14);
    var1->unk2C = 4 * (var->unk2B6 - 5);
    var1->unk30 = 0;
    var1->unk32 = 0;
    var1->unk34 = 0x10;
    var1->unk36 = 0;
    var1->unk38 = 0;
    var1->unk3C = NULL;
    var1->unk40 = NULL;
    CpuFill32(0, var2 = &var->unk4[7][0], sizeof(struct Unk_08128F44_4));
    var2->unk0.tilesVram = 0x6010000;
    var2->unk0.unk14 = 0x280;
    var2->unk0.animId = var->unk0[3].animId;
    var2->unk0.variant = var->unk0[3].variant;
    var2->unk0.unk16 = 0;
    var2->unk0.unk1B = 0xFF;
    var2->unk0.unk1C = 0x10;
    var2->unk0.palId = var->unk2B0;
    var2->unk0.x = 0;
    var2->unk0.y = 0;
    var2->unk0.unk8 = 0xC0000;
    var2->unk28 = 0;
    var2->unk2C = 0;
    var2->unk30 = 0;
    var2->unk32 = 0;
    var2->unk34 = 0x10;
    var2->unk36 = 0;
    var2->unk38 = 0;
    var2->unk3C = NULL;
    var2->unk40 = NULL;
    var1->unk40 = var2;
    var2->unk3C = var1;
    var2->unk34 &= ~0x10;
    CpuFill32(0, var1 = &var->unk4[5][0], sizeof(struct Unk_08128F44_4));
    var1->unk0.tilesVram = 0x6010000;
    var1->unk0.unk14 = 0x2C0;
    var1->unk0.animId = var->unk0[0].animId;
    var1->unk0.variant = var->unk0[0].variant;
    var1->unk0.unk16 = 0;
    var1->unk0.unk1B = 0xFF;
    var1->unk0.unk1C = 0x10;
    var1->unk0.palId = var->unk2B1;
    var1->unk0.x = ({var->unk2B4 + 0;});
    var1->unk0.y = ({var->unk2B6 + 5;});
    var1->unk0.unk8 = 0xC0000;
    var1->unk28 = 4 * var->unk2B4;
    var1->unk2C = 4 * (var->unk2B6 + 5);
    var1->unk30 = 0;
    var1->unk32 = 0;
    var1->unk34 = 0x10;
    var1->unk36 = 0;
    var1->unk38 = 0;
    var1->unk3C = NULL;
    var1->unk40 = NULL;
    CpuFill32(0, var2 = &var->unk4[8][0], sizeof(struct Unk_08128F44_4));
    var2->unk0.tilesVram = 0x6010000;
    var2->unk0.unk14 = 0x2C0;
    var2->unk0.animId = var->unk0[4].animId;
    var2->unk0.variant = var->unk0[4].variant;
    var2->unk0.unk16 = 0;
    var2->unk0.unk1B = 0xFF;
    var2->unk0.unk1C = 0x10;
    var2->unk0.palId = var->unk2B1;
    var2->unk0.x = 0;
    var2->unk0.y = 0;
    var2->unk0.unk8 = 0xC0000;
    var2->unk28 = 0;
    var2->unk2C = 0;
    var2->unk30 = 0;
    var2->unk32 = 0;
    var2->unk34 = 0x10;
    var2->unk36 = 0;
    var2->unk38 = 0;
    var2->unk3C = NULL;
    var2->unk40 = NULL;
    var1->unk40 = var2;
    var2->unk3C = var1;
    var2->unk34 &= ~0x10;
    CpuFill32(0, var1 = &var->unk4[6][0], sizeof(struct Unk_08128F44_4));
    var1->unk0.tilesVram = 0x6010000;
    var1->unk0.unk14 = 0x300;
    var1->unk0.animId = var->unk0[0].animId;
    var1->unk0.variant = var->unk0[0].variant;
    var1->unk0.unk16 = 0;
    var1->unk0.unk1B = 0xFF;
    var1->unk0.unk1C = 0x10;
    var1->unk0.palId = var->unk2B1;
    var1->unk0.x = ({var->unk2B4 + 0x14;});
    var1->unk0.y = ({var->unk2B6 + 0xF;});
    var1->unk0.unk8 = 0xC0000;
    var1->unk28 = 4 * (var->unk2B4 + 0x14);
    var1->unk2C = 4 * (var->unk2B6 + 0xF);
    var1->unk30 = 0;
    var1->unk32 = 0;
    var1->unk34 = 0x10;
    var1->unk36 = 0;
    var1->unk38 = 0;
    var1->unk3C = NULL;
    var1->unk40 = NULL;
    CpuFill32(0, var2 = &var->unk4[9][0], sizeof(struct Unk_08128F44_4));
    var2->unk0.tilesVram = 0x6010000;
    var2->unk0.unk14 = 0x300;
    var2->unk0.animId = var->unk0[5].animId;
    var2->unk0.variant = var->unk0[5].variant;
    var2->unk0.unk16 = 0;
    var2->unk0.unk1B = 0xFF;
    var2->unk0.unk1C = 0x10;
    var2->unk0.palId = var->unk2B1;
    var2->unk0.x = 0;
    var2->unk0.y = 0;
    var2->unk0.unk8 = 0xC0000;
    var2->unk28 = 0;
    var2->unk2C = 0;
    var2->unk30 = 0;
    var2->unk32 = 0;
    var2->unk34 = 0x10;
    var2->unk36 = 0;
    var2->unk38 = 0;
    var2->unk3C = NULL;
    var2->unk40 = NULL;
    var1->unk40 = var2;
    var2->unk3C = var1;
    var2->unk34 &= ~0x10;
    return t;
}

void sub_081295A0(void) {
    struct Unk_08128F44 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    u16 r2;

    if (var->unk2AC & 1)
        r2 = 0;
    else if (gUnk_0203AD10 & 2)
        r2 = gUnk_020382D0.unk8[1][0];
    else
        r2 = gPressedKeys;
    if (var->unk2AC & 4) {
        if (r2 & 1) {
            if (!(var->unk2AC & 0x80))
                m4aSongNumStart(0x21E);
            var->unk2AC |= 1;
        }
        else if (r2 & 2) {
            if (!(var->unk2AC & 0x80))
                m4aSongNumStart(0x21F);
            var->unk2AC &= ~4;
            var->unk2AC &= ~0x40;
        }
        else if (r2 & 0x40) {
            if (!(var->unk2AC & 0x80))
                m4aSongNumStart(0x21D);
            var->unk2AE = 0;
            gCurTask->main = sub_08129F28;
        }
        else if (r2 & 0x80) {
            if (!(var->unk2AC & 0x80))
                m4aSongNumStart(0x21D);
            var->unk2AE = 0;
            gCurTask->main = sub_08129C34;
        }
    }
    else {
        if (r2 & 1) {
            if (!(var->unk2AC & 0x80)) {
                m4aSongNumStart(0x21E);
                if (var->unk2AD == 0)
                    var->unk2B2 = 1;
                else if (var->unk2AD == 1)
                    var->unk2B2 = 3;
                else
                    var->unk2B2 = 5;
            }
            if (var->unk2AC & 0x10) {
                var->unk2AC |= 4;
                var->unk2AC |= 0x40;
            }
            else {
                var->unk2AC |= 1;
            }
        }
        else if (r2 & 0x40) {
            if (!(var->unk2AC & 0x80))
                m4aSongNumStart(0x21D);
            var->unk2AE = 0;
            gCurTask->main = sub_081298B4;
        }
        else if (r2 & 0x80) {
            if (!(var->unk2AC & 0x80))
                m4aSongNumStart(0x21D);
            var->unk2AE = 0;
            gCurTask->main = sub_08129A6C;
        }
    }
    sub_081297F8(var);
    if (!(var->unk2AC & 0x80)) {
        if (var->unk2AC & 4) {
            sub_081288DC(&var->unk4[4][0]);
            sub_081288DC(&var->unk4[5][0]);
            sub_081288DC(&var->unk4[6][0]);
        }
        else {
            sub_081288DC(&var->unk4[0][0]);
            sub_081288DC(&var->unk4[2][0]);
        }
    }
}

void sub_081297F8(struct Unk_08128F44 *a1) {
    const u16 *p;

    if (a1->unk2B3++ > 5) {
        a1->unk2B3 = 0;
        p = gUnk_082DE69C + 0x10 * (a1->unk2AC & 2 ? a1->unk2B2 : a1->unk2B2 + 1);
        a1->unk2AC ^= 2;
        if (gUnk_03002440 & 0x20000)
            sub_0815828C(p, 0x10 * a1->unk2B0, 0x10);
        else {
            DmaCopy16(3, p, gObjPalette + 0x10 * a1->unk2B0, 0x10 * sizeof(u16));
            gUnk_03002440 |= 2;
        }
    }
}

void sub_081298B4(void) {
    struct Unk_08128F44 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;

    if (var->unk2AC & 0x10) {
        var->unk4[0][0].unk28 += 8;
        var->unk4[0][0].unk2C += 4;
        var->unk4[0][0].unk0.unk14 &= ~0x7C0;
        var->unk4[0][0].unk0.unk14 |= 0x2C0;
        var->unk4[0][0].unk0.palId = var->unk2B1;
        var->unk4[1][0].unk0.unk14 &= ~0x7C0;
        var->unk4[1][0].unk0.unk14 |= 0x2C0;
        var->unk4[1][0].unk0.palId = var->unk2B1;
        var->unk4[2][0].unk28 -= 8;
        var->unk4[2][0].unk2C -= 4;
        var->unk4[2][0].unk0.unk14 &= ~0x7C0;
        var->unk4[2][0].unk0.unk14 |= 0x280;
        var->unk4[2][0].unk0.palId = var->unk2B0;
        var->unk4[3][0].unk0.unk14 &= ~0x7C0;
        var->unk4[3][0].unk0.unk14 |= 0x280;
        var->unk4[3][0].unk0.palId = var->unk2B0;
    }
    else {
        var->unk4[0][0].unk28 -= 8;
        var->unk4[0][0].unk2C -= 4;
        var->unk4[0][0].unk0.unk14 &= ~0x7C0;
        var->unk4[0][0].unk0.unk14 |= 0x280;
        var->unk4[0][0].unk0.palId = var->unk2B0;
        var->unk4[1][0].unk0.unk14 &= ~0x7C0;
        var->unk4[1][0].unk0.unk14 |= 0x280;
        var->unk4[1][0].unk0.palId = var->unk2B0;
        var->unk4[2][0].unk28 += 8;
        var->unk4[2][0].unk2C += 4;
        var->unk4[2][0].unk0.unk14 &= ~0x7C0;
        var->unk4[2][0].unk0.unk14 |= 0x2C0;
        var->unk4[2][0].unk0.palId = var->unk2B1;
        var->unk4[3][0].unk0.unk14 &= ~0x7C0;
        var->unk4[3][0].unk0.unk14 |= 0x2C0;
        var->unk4[3][0].unk0.palId = var->unk2B1;
    }
    if (var->unk2AC & 0x10)
        var->unk2B2 = 1;
    else
        var->unk2B2 = 3;
    sub_081297F8(var);
    if (!(var->unk2AC & 0x80)) {
        sub_081288DC(&var->unk4[0][0]);
        sub_081288DC(&var->unk4[2][0]);
    }
    if (++var->unk2AE > 9) {
        gCurTask->main = sub_081295A0;
        var->unk2AC ^= 0x10;
        var->unk2AC ^= 0x20;
    }
}

void sub_08129A6C(void) {
    struct Unk_08128F44 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;

    if (var->unk2AC & 0x10) {
        var->unk4[0][0].unk28 += 8;
        var->unk4[0][0].unk2C += 4;
        var->unk4[0][0].unk0.palId = var->unk2B1;
        var->unk4[1][0].unk0.palId = var->unk2B1;
        var->unk4[2][0].unk28 -= 8;
        var->unk4[2][0].unk2C -= 4;
        var->unk4[2][0].unk0.palId = var->unk2B0;
        var->unk4[3][0].unk0.palId = var->unk2B0;
    }
    else {
        var->unk4[0][0].unk28 -= 8;
        var->unk4[0][0].unk2C -= 4;
        var->unk4[0][0].unk0.palId = var->unk2B0;
        var->unk4[1][0].unk0.palId = var->unk2B0;
        var->unk4[2][0].unk28 += 8;
        var->unk4[2][0].unk2C += 4;
        var->unk4[2][0].unk0.palId = var->unk2B1;
        var->unk4[3][0].unk0.palId = var->unk2B1;
    }
    if (var->unk2AC & 0x10)
        var->unk2B2 = 1;
    else
        var->unk2B2 = 3;
    sub_081297F8(var);
    if (!(var->unk2AC & 0x80)) {
        sub_081288DC(&var->unk4[0][0]);
        sub_081288DC(&var->unk4[2][0]);
    }
    if (++var->unk2AE > 9) {
        if (var->unk2AC & 0x10) {
            var->unk4[0][0].unk0.unk14 &= ~0x7C0;
            var->unk4[0][0].unk0.unk14 |= 0x2C0;
            var->unk4[1][0].unk0.unk14 &= ~0x7C0;
            var->unk4[1][0].unk0.unk14 |= 0x2C0;
            var->unk4[2][0].unk0.unk14 &= ~0x7C0;
            var->unk4[2][0].unk0.unk14 |= 0x280;
            var->unk4[3][0].unk0.unk14 &= ~0x7C0;
            var->unk4[3][0].unk0.unk14 |= 0x280;
        }
        else {
            var->unk4[0][0].unk0.unk14 &= ~0x7C0;
            var->unk4[0][0].unk0.unk14 |= 0x280;
            var->unk4[1][0].unk0.unk14 &= ~0x7C0;
            var->unk4[1][0].unk0.unk14 |= 0x280;
            var->unk4[2][0].unk0.unk14 &= ~0x7C0;
            var->unk4[2][0].unk0.unk14 |= 0x2C0;
            var->unk4[3][0].unk0.unk14 &= ~0x7C0;
            var->unk4[3][0].unk0.unk14 |= 0x2C0;
        }
        gCurTask->main = sub_081295A0;
        var->unk2AC ^= 0x10;
        var->unk2AC ^= 0x20;
    }
}

void sub_08129C34(void) {
    struct Unk_08128F44 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    const u8 *p = gUnk_08363AA0 + 3 * var->unk2AD;

    var->unk4[p[0]][4].unk28 += 0x10;
    var->unk4[p[0]][4].unk2C += 8;
    var->unk4[p[0]][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[0]][4].unk0.unk14 |= 0x300;
    var->unk4[p[0]][4].unk0.palId = var->unk2B1;
    var->unk4[p[0] + 3][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[0] + 3][4].unk0.unk14 |= 0x300;
    var->unk4[p[0] + 3][4].unk0.palId = var->unk2B1;
    var->unk4[p[1]][4].unk28 -= 8;
    var->unk4[p[1]][4].unk2C -= 4;
    var->unk4[p[1]][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[1]][4].unk0.unk14 |= 0x280;
    var->unk4[p[1]][4].unk0.palId = var->unk2B0;
    var->unk4[p[1] + 3][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[1] + 3][4].unk0.unk14 |= 0x280;
    var->unk4[p[1] + 3][4].unk0.palId = var->unk2B0;
    var->unk4[p[2]][4].unk28 -= 8;
    var->unk4[p[2]][4].unk2C -= 4;
    var->unk4[p[2]][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[2]][4].unk0.unk14 |= 0x2C0;
    var->unk4[p[2]][4].unk0.palId = var->unk2B1;
    var->unk4[p[2] + 3][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[2] + 3][4].unk0.unk14 |= 0x2C0;
    var->unk4[p[2] + 3][4].unk0.palId = var->unk2B1;
    if (p[1] == 0)
        var->unk2B2 = 1;
    else if (p[1] == 1)
        var->unk2B2 = 3;
    else
        var->unk2B2 = 5;
    sub_081297F8(var);
    if (!(var->unk2AC & 0x80)) {
        sub_081288DC(&var->unk4[4][0]);
        sub_081288DC(&var->unk4[5][0]);
        sub_081288DC(&var->unk4[6][0]);
    }
    if (++var->unk2AE > 9) {
        gCurTask->main = sub_081295A0;
        var->unk2AD = p[1];
    }
}

void sub_08129F28(void) {
    struct Unk_08128F44 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    const u8 *p = gUnk_08363AA0 + 3 * var->unk2AD;

    var->unk4[p[0]][4].unk28 += 8;
    var->unk4[p[0]][4].unk2C += 4;
    var->unk4[p[0]][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[0]][4].unk0.unk14 |= 0x2C0;
    var->unk4[p[0]][4].unk0.palId = var->unk2B1;
    var->unk4[p[0] + 3][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[0] + 3][4].unk0.unk14 |= 0x2C0;
    var->unk4[p[0] + 3][4].unk0.palId = var->unk2B1;
    var->unk4[p[1]][4].unk28 += 8;
    var->unk4[p[1]][4].unk2C += 4;
    var->unk4[p[1]][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[1]][4].unk0.unk14 |= 0x300;
    var->unk4[p[1]][4].unk0.palId = var->unk2B1;
    var->unk4[p[1] + 3][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[1] + 3][4].unk0.unk14 |= 0x300;
    var->unk4[p[1] + 3][4].unk0.palId = var->unk2B1;
    var->unk4[p[2]][4].unk28 -= 0x10;
    var->unk4[p[2]][4].unk2C -= 8;
    var->unk4[p[2]][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[2]][4].unk0.unk14 |= 0x280;
    var->unk4[p[2]][4].unk0.palId = var->unk2B0;
    var->unk4[p[2] + 3][4].unk0.unk14 &= ~0x7C0;
    var->unk4[p[2] + 3][4].unk0.unk14 |= 0x280;
    var->unk4[p[2] + 3][4].unk0.palId = var->unk2B0;
    if (p[2] == 0)
        var->unk2B2 = 1;
    else if (p[2] == 1)
        var->unk2B2 = 3;
    else
        var->unk2B2 = 5;
    sub_081297F8(var);
    if (!(var->unk2AC & 0x80)) {
        sub_081288DC(&var->unk4[4][0]);
        sub_081288DC(&var->unk4[5][0]);
        sub_081288DC(&var->unk4[6][0]);
    }
    if (++var->unk2AE > 9) {
        gCurTask->main = sub_081295A0;
        var->unk2AD = p[2];
    }
}
