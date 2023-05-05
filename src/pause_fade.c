#include "data.h"
#include "task.h"
#include "main.h"
#include "pause_fade.h"
#include "palette.h"

// TODO: determine file boundaries

void PauseFadeMain(void);
void sub_08128C5C(void);
void sub_08128DB0(void);
void sub_08128E8C(void);
void sub_0812A39C(void);

void CreatePauseFade(s8 arg0, u32 arg1) {
    struct Task* task = TaskCreate(PauseFadeMain, sizeof(struct PauseFadeStruct), 0x100, TASK_x0004, NULL);
    struct PauseFadeStruct *fade, *fade2;

    fade = TaskGetStructPtr(task);
    fade2 = fade;
    if (arg0 > 0) {
        fade2->unk3 = 0;
        fade2->unk0 = 0;
    }
    else {
        fade2->unk3 = 1;
        fade2->unk0 = 0x1f0;
    }
    
    if (arg1 != 0) {
        fade2->unk3 |= 0x10;
        gBldRegs.bldCnt = BLDCNT_EFFECT_LIGHTEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    }
    else {
        fade2->unk3 |= 0x20;
        gBldRegs.bldCnt = BLDCNT_EFFECT_DARKEN | BLDCNT_TGT1_BD | BLDCNT_TGT1_OBJ | BLDCNT_TGT1_BG3 | BLDCNT_TGT1_BG2 | BLDCNT_TGT1_BG1 | BLDCNT_TGT1_BG0;
    }
    fade2->unk2 = arg0;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(1, 0);
    gBldRegs.bldY = fade2->unk0 >> 4;
}

void CreatePauseFadeSetBldCnt(s8 arg0, u32 arg1) {
    struct Task* task = TaskCreate(PauseFadeMain, sizeof(struct PauseFadeStruct), 0x100, TASK_x0004, NULL);
    struct PauseFadeStruct *fade, *fade2;

    fade = TaskGetStructPtr(task);
    fade2 = fade;
    if (arg0 > 0) {
        fade2->unk3 = 0;
        fade2->unk0 = 0;
    }
    else {
        fade2->unk3 = 1;
        fade2->unk0 = 0x1f0;
    }
    
    if (arg1 != 0) {
        fade2->unk3 |= 0x10;
        gBldRegs.bldCnt = 0;
    }
    else {
        fade2->unk3 |= 0x20;
        gBldRegs.bldCnt = arg1;
    }
    fade2->unk2 = arg0;
    gBldRegs.bldAlpha = BLDALPHA_BLEND(1, 0);
    gBldRegs.bldY = fade2->unk0 >> 4;
}

void PauseFadeMain(void) {
    struct PauseFadeStruct* fade = TaskGetStructPtr(gCurTask);
    fade->unk0 += fade->unk2;
    gBldRegs.bldY = (fade->unk0 & 0x1f0) >> 4;
    if (fade->unk0 & 0x200) {
        if (fade->unk3 & 0x80) {
            if (fade->unk3 & 1) {
                gBldRegs.bldY = 1;
            }
            else {
                gBldRegs.bldY = 0x1e;
            }
        }
        else {
            if (fade->unk3 & 1) {
                gBldRegs.bldY = fade->unk3 & 0x80;
            }
            else {
                gBldRegs.bldY = 0x1f;
            }
        }
        gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0);
        TaskDestroy(gCurTask);
    }
}

void sub_08128BEC(s8 a1, u32 a2, u16 a3) {
    struct Task *t = TaskCreate(sub_08128C5C, sizeof(struct PauseFadeStruct), 0x100, TASK_x0004, NULL);
    struct PauseFadeStruct *tmp = TaskGetStructPtr(t), *pf = tmp;

    pf->unk0 = a3;
    pf->unk2 = abs(a1);
    if (a2)
        pf->unk3 = 0x10;
    else
        pf->unk3 = 0x20;
    pf->unk3 |= 2;
}

void sub_08128C5C(void) {
    struct PauseFadeStruct *tmp = TaskGetStructPtr(gCurTask), *pf = tmp;

    if (pf->unk3 & 2) {
        pf->unk3 &= ~2;
        if (pf->unk3 & 0x10)
            CreatePauseFade(pf->unk2, 1);
        else
            CreatePauseFade(pf->unk2, 0);
    }
    if (pf->unk3 & 4) {
        pf->unk3 &= ~4;
        pf->unk3 &= ~0x80;
        if (pf->unk3 & 0x10)
            CreatePauseFade(-pf->unk2, 1);
        else
            CreatePauseFade(-pf->unk2, 0);
    }
    if (pf->unk3 & 0x80) {
        if (pf->unk3 & 1) {
            gBldRegs.bldY = 0;
            gBldRegs.bldAlpha = BLDALPHA_BLEND(0, 0);
            TaskDestroy(gCurTask);
        }
        else {
            pf->unk3 |= 1;
            pf->unk3 |= 4;
        }
    }
    pf->unk3 &= ~0x80;
    if (gBldRegs.bldAlpha == BLDALPHA_BLEND(0, 0))
        pf->unk3 |= 0x80;
}

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
    CpuFill32(0, &var->unk4[0], sizeof(struct Unk_08128F44_4));
    var->unk4[0].unk0.tilesVram = 0x6010000;
    var->unk4[0].unk0.unk14 = 0x280;
    var->unk4[0].unk0.animId = var->unk0[0].animId;
    var->unk4[0].unk0.variant = var->unk0[0].variant;
    var->unk4[0].unk0.unk16 = 0;
    var->unk4[0].unk0.unk1B = 0xFF;
    var->unk4[0].unk0.unk1C = 0x10;
    var->unk4[0].unk0.palId = var->unk2B0;
    var->unk4[0].unk0.x = ({var->unk2B4 + 0;});
    var->unk4[0].unk0.y = ({var->unk2B6 + 0;});
    var->unk4[0].unk0.unk8 = 0xC0000;
    var->unk4[0].unk28 = 4 * var->unk2B4;
    var->unk4[0].unk2C = 4 * var->unk2B6;
    var->unk4[0].unk30 = 0;
    var->unk4[0].unk32 = 0;
    var->unk4[0].unk34 = 0x10;
    var->unk4[0].unk36 = 0;
    var->unk4[0].unk38 = 0;
    var->unk4[0].unk3C = NULL;
    var->unk4[0].unk40 = NULL;
    CpuFill32(0, &var->unk4[1], sizeof(struct Unk_08128F44_4));
    var->unk4[1].unk0.tilesVram = 0x6010000;
    var->unk4[1].unk0.unk14 = 0x280;
    var->unk4[1].unk0.animId = var->unk0[1].animId;
    var->unk4[1].unk0.variant = var->unk0[1].variant;
    var->unk4[1].unk0.unk16 = 0;
    var->unk4[1].unk0.unk1B = 0xFF;
    var->unk4[1].unk0.unk1C = 0x10;
    var->unk4[1].unk0.palId = var->unk2B0;
    var->unk4[1].unk0.x = 0;
    var->unk4[1].unk0.y = 0;
    var->unk4[1].unk0.unk8 = 0xC0000;
    var->unk4[1].unk28 = 0;
    var->unk4[1].unk2C = 0;
    var->unk4[1].unk30 = 0;
    var->unk4[1].unk32 = 0;
    var->unk4[1].unk34 = 0x10;
    var->unk4[1].unk36 = 0;
    var->unk4[1].unk38 = 0;
    var->unk4[1].unk3C = NULL;
    var->unk4[1].unk40 = NULL;
    var->unk4[0].unk40 = &var->unk4[1];
    var->unk4[1].unk3C = &var->unk4[0];
    var->unk4[1].unk34 &= ~0x10;
    CpuFill32(0, var1 = &var->unk4[2], sizeof(struct Unk_08128F44_4));
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
    CpuFill32(0, var2 = &var->unk4[3], sizeof(struct Unk_08128F44_4));
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
    CpuFill32(0, var1 = &var->unk4[4], sizeof(struct Unk_08128F44_4));
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
    CpuFill32(0, var2 = &var->unk4[7], sizeof(struct Unk_08128F44_4));
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
    CpuFill32(0, var1 = &var->unk4[5], sizeof(struct Unk_08128F44_4));
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
    CpuFill32(0, var2 = &var->unk4[8], sizeof(struct Unk_08128F44_4));
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
    CpuFill32(0, var1 = &var->unk4[6], sizeof(struct Unk_08128F44_4));
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
    CpuFill32(0, var2 = &var->unk4[9], sizeof(struct Unk_08128F44_4));
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
