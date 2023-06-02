#include "code_08128D48.h"
#include "task.h"
#include "pause_fade.h"
#include "palette.h"
#include "random.h"
#include "constants/languages.h"

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
void sub_0812A344(s32 *, struct Unk_08128F44_4 *);
s32 *sub_0812A388(struct Unk_08128F44_4 *);
void sub_0812A39C(void);
void sub_0812A8F0(void);
void sub_0812AAE0(struct Unk_0812A77C *);
void sub_0812B204(void);
void sub_0812B2F8(void);
void sub_0812B418(void);
void sub_0812B63C(void);
void sub_0812BEE0(void);
void sub_0812C168(struct Unk_0812A77C *);
void sub_0812C29C(void);
void sub_0812C490(struct Unk_0812A77C *);
void sub_0812C528(struct Unk_0812A77C_40 *, u8);
void sub_0812C63C(void);
void sub_0812CDD4(struct Unk_0812A77C *);
void sub_0812CED8(struct Unk_0812A77C_40 *, u8);
void sub_0812CF80(struct Unk_0812A77C_40 *, struct Unk_0812A77C *);
void sub_0812D060(void);
void sub_0812D124(s16, s16, struct Unk_0812A77C_40 *);
struct Task *sub_0812D1EC(struct Unk_0812A77C_40 *, u8);
struct Task *sub_0812D4F4(void);
struct Task *sub_0812DBB4(s16, s16, s16, s16, bool8);
void sub_0812E194(s16, s16, s16);
void sub_0812E468(struct Unk_0812A77C *);
void sub_0812E588(struct Task *);
void sub_0812E604(struct Unk_0812A77C_40 *);
void sub_0812E640(void);
bool32 sub_0812E6A8(struct Unk_0812D4F4 *);
bool32 sub_0812E6C8(struct Unk_0812DBB4 *);
void sub_0812E6E4(u8);
void sub_0812E764(struct Sprite *, u8);
void sub_0812E7A0(void);
void sub_0812E818(struct Unk_0812A77C_40 *);
struct Task *sub_0812EFB4(void);

extern const u8 gUnk_08363AA0[];
extern const s8 gUnk_08364B5C[][60];
extern const s8 gUnk_08364C4C[];
extern const s8 gUnk_08364C88[];
extern const s16 gUnk_08364C9A[][6];
extern const s8 gUnk_08364CCA[];
extern const u8 gUnk_08364CD2[][4];
extern const struct Unk_02021590 gUnk_08364CE4[][7];
extern const struct Unk_02021590 gUnk_08364F9C[][2];
extern const struct Unk_02021590 gUnk_08364FCC[];
extern const s32 gUnk_08364FE4[];
extern const struct Unk_02021590 gUnk_08365054[][4];
extern const struct Unk_02021590 gUnk_083650B4[][4];
extern const u8 gUnk_08365114[][16];
extern const u16 gUnk_08365144[][4];
extern const u16 gUnk_0836515C[];
extern const u32 gUnk_08365380[];
extern const u32 gUnk_0836C654[];
extern const u32 gUnk_0836CCDC[];
extern const u32 gUnk_0836D33C[];
extern const u32 gUnk_0836D9F0[];
extern const u32 gUnk_0836E034[];
extern const u32 gUnk_0836E66C[];
extern const u32 gUnk_0836EEC8[0x200];
extern const u32 gUnk_0836F6C8[0x200];
extern const u32 gUnk_0836FEC8[0x200];
extern const u32 gUnk_083706C8[0x200];
extern const u32 gUnk_08370EC8[0x200];
extern const u32 gUnk_083716C8[0x200];
extern const struct Unk_08128D48_0 gUnk_083723C8;
extern const struct Unk_08128D48_0 gUnk_083723D4;
extern const struct Unk_08128D48_0 gUnk_083723E0;
extern const struct Unk_08128D48_0 gUnk_083723EC;
extern const struct Unk_08128D48_0 gUnk_083723F8;
extern const struct Unk_08128D48_0 gUnk_08372404;
extern const struct Unk_08128D48_0 gUnk_08372410;
extern const struct Unk_08128D48_0 gUnk_0837241C;
extern const struct Unk_08128D48_0 gUnk_08372428;
extern const struct Unk_08128D48_0 gUnk_08372434;

extern const u32 *const gUnk_08D61B3C[];

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
    var->unk4[0][0].unk38 = NULL;
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
    var->unk4[1][0].unk38 = NULL;
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
    var1->unk38 = NULL;
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
    var2->unk38 = NULL;
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
    var1->unk38 = NULL;
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
    var2->unk38 = NULL;
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
    var1->unk38 = NULL;
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
    var2->unk38 = NULL;
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
    var1->unk38 = NULL;
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
    var2->unk38 = NULL;
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

void sub_0812A218(struct Unk_08128F44_4 *a1) {
    struct Unk_08128F44_4 *unk3C = a1->unk3C;

    a1->unk28 += unk3C->unk28;
    a1->unk2C += unk3C->unk2C;
    a1->unk30 = unk3C->unk30;
    a1->unk32 = unk3C->unk32;
    a1->unk34 |= 0x10;
    a1->unk38 = sub_0812A388(a1);
    unk3C->unk40 = NULL;
    a1->unk3C = NULL;
}

void sub_0812A254(struct Unk_08128F44_4 *a1) {
    s32 a[2];

    a[0] = 0;
    a[1] = 0;
    if (!(a1->unk34 & 0x2000)) {
        a1->unk28 += a1->unk30;
        a1->unk2C += a1->unk32;
        sub_0812A344(a, a1);
        a1->unk0.x = a[0] >> 2;
        a1->unk0.y = a[1] >> 2;
    }
}

// not referenced
void sub_0812A29C(struct Unk_08128F44_4 *a1) {
    a1->unk34 &= ~0x100;
    if (a1->unk34 & 0x200)
        a1->unk0.unk1B = 0xFF;
}

void sub_0812A2C0(struct Unk_0812D1EC_0 *a1) {
    a1->unk48 += a1->unk4.unk30;
    a1->unk4C += a1->unk4.unk32;
    a1->unk4.unk28 = a1->unk48;
    a1->unk4.unk2C = a1->unk4C;
    if (a1->unk52 & 2) {
        a1->unk4.unk28 += a1->unk0->unk0[0].unk28;
        a1->unk4.unk2C += a1->unk0->unk0[0].unk2C;
    }
    sub_081288DC(&a1->unk4);
}

bool32 sub_0812A304(void) {
    if ((!gBldRegs.bldY || gBldRegs.bldY == 0x1F) && !gBldRegs.bldAlpha)
        return FALSE;
    else
        return TRUE;
}

bool32 sub_0812A328(struct Unk_08128F44 *a1) {
    if (a1->unk2AC & 1)
        return TRUE;
    else
        return FALSE;
}

void sub_0812A344(s32 *a1, struct Unk_08128F44_4 *a2) {
    if (a2->unk3C)
        sub_0812A344(a1, a2->unk3C);
    if (a2->unk38) {
        a1[0] += a2->unk28 + a2->unk38[0];
        a1[1] += a2->unk2C + a2->unk38[1];
    }
    else {
        a1[0] += a2->unk28;
        a1[1] += a2->unk2C;
    }
}

s32 *sub_0812A388(struct Unk_08128F44_4 *a1) {
    while (1) {
        if (!a1->unk3C)
            return a1->unk38;
        a1 = a1->unk3C;
    }
}

void sub_0812A39C(void) {
    struct Unk_08128F44 *var = TaskGetStructPtr(gCurTask);

    gCurTask->main = sub_081295A0;
    if (!(var->unk2AC & 0x80))
        m4aSongNumStart(542);
}

void sub_0812A3F4(struct Unk_0812A77C_40 *a1, s32 *a2, u8 a3, u8 a4) {
    if (a4 < gUnk_0203AD30)
        a1->unk90 = 0;
    else
        a1->unk90 = 1;
    a1->unk88 = NULL;
    a1->unk8C = NULL;
    a1->unk92 = 0;
    a1->unk96 = 0;
    a1->unk94 = 0;
    a1->unk98 = 0;
    a1->unk9A = 0;
    a1->unk9C = 0x5A;
    a1->unk9E = 1;
    a1->unkA0 = 1;
    a1->unkAC = 3;
    a1->unkA6 = 0;
    a1->unkA8 = 0;
    a1->unkAA = 0;
    a1->unkAD = 0;
    a1->unkAE = 0;
    CpuFill32(0, &a1->unk0[0], sizeof(struct Unk_08128F44_4));
    a1->unk0[0].unk0.tilesVram = 0x6010000;
    a1->unk0[0].unk0.unk14 = 0x480;
    a1->unk0[0].unk0.animId = gUnk_08364CE4[gLanguage][6].animId;
    a1->unk0[0].unk0.variant = gUnk_08364CE4[gLanguage][6].variant;
    a1->unk0[0].unk0.unk16 = 0;
    a1->unk0[0].unk0.unk1B = 0xFF;
    a1->unk0[0].unk0.unk1C = 0x10;
    a1->unk0[0].unk0.palId = a3;
    a1->unk0[0].unk0.x = gUnk_08364C9A[a3][0] >> 2;
    a1->unk0[0].unk0.y = gUnk_08364C9A[a3][1] >> 2;
    a1->unk0[0].unk0.unk8 = 0xC0000;
    a1->unk0[0].unk28 = gUnk_08364C9A[a3][0];
    a1->unk0[0].unk2C = gUnk_08364C9A[a3][1];
    a1->unk0[0].unk30 = 0;
    a1->unk0[0].unk32 = 0;
    a1->unk0[0].unk34 = 0x810;
    a1->unk0[0].unk36 = 0;
    a1->unk0[0].unk3C = NULL;
    a1->unk0[0].unk40 = NULL;
    a1->unk0[0].unk38 = a2;
    CpuFill32(0, &a1->unk0[1], sizeof(struct Unk_08128F44_4));
    a1->unk0[1].unk0.tilesVram = 0x6010000;
    a1->unk0[1].unk0.unk14 = 0x440;
    a1->unk0[1].unk0.animId = gUnk_08364F9C[gLanguage][0].animId;
    a1->unk0[1].unk0.variant = gUnk_08364F9C[gLanguage][0].variant;
    a1->unk0[1].unk0.unk16 = 0;
    a1->unk0[1].unk0.unk1B = 0xFF;
    a1->unk0[1].unk0.unk1C = 0x10;
    a1->unk0[1].unk0.palId = 4;
    a1->unk0[1].unk0.x = gUnk_08364C9A[a3][4] >> 2;
    a1->unk0[1].unk0.y = gUnk_08364C9A[a3][5] >> 2;
    a1->unk0[1].unk0.unk8 = 0xC0000;
    a1->unk0[1].unk28 = gUnk_08364C9A[a3][4];
    a1->unk0[1].unk2C = gUnk_08364C9A[a3][5];
    a1->unk0[1].unk30 = 0;
    a1->unk0[1].unk32 = 0;
    a1->unk0[1].unk34 = 0x10;
    a1->unk0[1].unk36 = 0;
    a1->unk0[1].unk3C = NULL;
    a1->unk0[1].unk40 = NULL;
    a1->unk0[1].unk38 = a2;
    if (a3 == 2 || a3 == 3) {
        a1->unk0[0].unk34 |= 1;
        a1->unk0[1].unk34 |= 1;
    }
}

void sub_0812A5FC(struct Unk_0812A77C_40 *a1, u8 a2) {
    if (a1->unk90 & 1) {
        u32 r6;

        r6 = Rand16();
        r6 &= 0xF;
        a1->unkAD = gUnk_08365114[a2][r6];
        r6 = Rand16();
        r6 &= 3;
        a1->unkAE = gUnk_08365144[a2][r6];
    }
}

void sub_0812A670(void) {
    CpuFill32(0, (void *)VRAM, VRAM_SIZE);
    if (gUnk_03002440 & 0x10000)
        sub_08158334(gUnk_0836515C, 0, BG_PLTT_SIZE / sizeof(u16));
    else {
        DmaCopy16(3, gUnk_0836515C, gBgPalette, BG_PLTT_SIZE);
        gUnk_03002440 |= 1;
    }
    LZ77UnCompVram(gUnk_08365380, (void *)0x6000000);
    switch (gLanguage) {
    case LANGUAGE_JAPANESE:
        LZ77UnCompVram(gUnk_0836C654, (void *)0x6002000);
        break;
    case LANGUAGE_ENGLISH:
        LZ77UnCompVram(gUnk_0836E034, (void *)0x6002000);
        break;
    case LANGUAGE_GERMAN:
        LZ77UnCompVram(gUnk_0836E66C, (void *)0x6002000);
        break;
    case LANGUAGE_FRENCH:
        LZ77UnCompVram(gUnk_0836D33C, (void *)0x6002000);
        break;
    case LANGUAGE_SPANISH:
        LZ77UnCompVram(gUnk_0836D9F0, (void *)0x6002000);
        break;
    case LANGUAGE_ITALIAN:
        LZ77UnCompVram(gUnk_0836CCDC, (void *)0x6002000);
        break;
    }
    LZ77UnCompVram(gUnk_08D61B3C[gLanguage], (void *)0x6010000);
}

void sub_0812A77C(void) {
    struct Task *t;
    struct Unk_0812A77C *var;

    gRngVal = 0;
    gDispCnt = DISPCNT_MODE_0 | DISPCNT_OBJ_1D_MAP | DISPCNT_BG0_ON | DISPCNT_BG1_ON | DISPCNT_OBJ_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_TXT256x256 | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(28);
    gBgCntRegs[1] = BGCNT_PRIORITY(2) | BGCNT_TXT256x256 | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(29);
    gBgCntRegs[2] = BGCNT_PRIORITY(1) | BGCNT_TXT256x256 | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(30);
    gBldRegs.bldCnt = BLDCNT_TGT1_ALL | BLDCNT_EFFECT_LIGHTEN;
    gBldRegs.bldY = 0x10;
    gBgScrollRegs[0][0] = 8;
    gBgScrollRegs[0][1] = 0x58;
    gBgScrollRegs[1][0] = 8;
    gBgScrollRegs[1][1] = 0x58;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    t = TaskCreate(sub_0812A8F0, sizeof(struct Unk_0812A77C), 0x100, 0, sub_0812E588);
    var = TaskGetStructPtr(t);
    CpuFill16(0, var, sizeof(struct Unk_0812A77C));
    var->unk14[0] = sub_08128D48(&gUnk_083723C8);
    var->unk14[1] = sub_08128D48(&gUnk_083723D4);
    var->unk14[2] = sub_08128D48(&gUnk_083723E0);
    var->unk14[3] = sub_08128D48(&gUnk_083723EC);
    var->unk14[4] = sub_08128D48(&gUnk_083723F8);
    var->unk14[5] = sub_08128D48(&gUnk_08372404);
    var->unk14[6] = sub_08128D48(&gUnk_08372410);
    var->unk14[7] = sub_08128D48(&gUnk_0837241C);
    var->unk14[8] = sub_08128D48(&gUnk_08372428);
    var->unk14[9] = sub_08128D48(&gUnk_08372434);
    var->unk5F4 = gUnk_0203AD14;
    var->unk10[0] = gUnk_08364CD2[gUnk_0203AD3C][0];
    var->unk10[1] = gUnk_08364CD2[gUnk_0203AD3C][1];
    var->unk10[2] = gUnk_08364CD2[gUnk_0203AD3C][2];
    var->unk10[3] = gUnk_08364CD2[gUnk_0203AD3C][3];
}

void sub_0812A8F0(void) {
    struct Unk_0812A77C *var;
#ifndef NONMATCHING
    register struct Unk_08128F44_4 *r4 asm("r4");
#else
    struct Unk_08128F44_4 *r4;
#endif

    CreatePauseFade(-0x10, 1);
    var = TaskGetStructPtr(gCurTask);
    gCurTask->main = sub_0812B204;
    var->unk0 = NULL;
    var->unk4 = NULL;
    var->unk8[0] = 0;
    var->unk8[1] = 0;
    var->unk5EC = 0;
    var->unk5F6 = 0;
    sub_0812AAE0(var);
    sub_0812A3F4(&var->unk40[0], var->unk8, 0, var->unk10[0]);
    sub_0812A3F4(&var->unk40[1], var->unk8, 1, var->unk10[1]);
    sub_0812A3F4(&var->unk40[2], var->unk8, 2, var->unk10[2]);
    sub_0812A3F4(&var->unk40[3], var->unk8, 3, var->unk10[3]);
    sub_0812A5FC(&var->unk40[0], var->unk5F4);
    sub_0812A5FC(&var->unk40[1], var->unk5F4);
    sub_0812A5FC(&var->unk40[2], var->unk5F4);
    sub_0812A5FC(&var->unk40[3], var->unk5F4);
    CpuFill32(0, r4 = &var->unk564[0], sizeof(struct Unk_08128F44_4));
    r4->unk0.tilesVram = 0x6010000;
    r4->unk0.unk14 = 0x3C0;
    r4->unk0.animId = gUnk_08365054[gLanguage][0].animId;
    r4->unk0.variant = gUnk_08365054[gLanguage][0].variant;
    r4->unk0.unk16 = 0;
    r4->unk0.unk1B = 0xFF;
    r4->unk0.unk1C = 0x10;
    r4->unk0.palId = 0xB;
    r4->unk0.x = 0;
    r4->unk0.y = 0x10;
    r4->unk0.unk8 = 0xC0000;
    r4->unk28 = 0;
    r4->unk2C = 0x40;
    r4->unk30 = 0;
    r4->unk32 = 0;
    r4->unk34 = 0x810;
    r4->unk36 = 0;
    r4->unk38 = NULL;
    r4->unk3C = NULL;
    r4->unk40 = NULL;
    CpuFill32(0, r4 = &var->unk564[1], sizeof(struct Unk_08128F44_4));
    r4->unk0.tilesVram = 0x6010000;
    r4->unk0.unk14 = 0x400;
    r4->unk0.animId = gUnk_08365054[gLanguage][0].animId;
    r4->unk0.variant = gUnk_08365054[gLanguage][0].variant;
    r4->unk0.unk16 = 0;
    r4->unk0.unk1B = 0xFF;
    r4->unk0.unk1C = 0x10;
    r4->unk0.palId = 0xB;
    r4->unk0.x = 0;
    r4->unk0.y = -0x28;
    r4->unk0.unk8 = 0xC0000;
    r4->unk28 = 0;
    r4->unk2C = -0xA0;
    r4->unk30 = 0;
    r4->unk32 = 0;
    r4->unk34 = 0x810;
    r4->unk36 = 0;
    r4->unk38 = NULL;
    r4->unk3C = NULL;
    r4->unk40 = NULL;
    sub_0812E7A0();
    sub_0812E818(var->unk40);
    m4aSongNumStart(28);
    m4aSongNumStart(556);
}

void sub_0812AAE0(struct Unk_0812A77C *a1) {
    u8 i;
    struct Sprite sprite[36];

    for (i = 0; i < 4; ++i) {
        u8 idx = a1->unk10[i];

        SpriteInit(&sprite[0], 0x6010000, 0x480,
            gUnk_083650B4[gLanguage][idx].animId,
            gUnk_083650B4[gLanguage][idx].variant,
            0, 0xFF, 0x10, i, 0, 0, 0x80000);
    }
    // This is completely pointless as every case is doing the same thing except for using different buffers
    switch (gLanguage) {
    case LANGUAGE_JAPANESE:
        SpriteInitNoPointer(&sprite[0], 0x6010000, 0x480, 0x345, 0,
            0, 0xFF, 0x10, 4, 0, 0, 0x80000);
        SpriteInit(&sprite[1], 0x6010000, 0x480, 0x344, 7,
            0, 0xFF, 0x10, 5, 0, 0, 0x80000);
        SpriteInit(&sprite[2], 0x6010000, 0x480, 0x345, 0x12,
            0, 0xFF, 0x10, 6, 0, 0, 0x80000);
        SpriteInit(&sprite[3], 0x6010000, 0x480, 0x343, 0x11,
            0, 0xFF, 0x10, 7, 0, 0, 0x80000);
        SpriteInit(&sprite[4], 0x6010000, 0x480, 0x343, 0,
            0, 0xFF, 0x10, 0xB, 0, 0, 0x80000);
        SpriteInit(&sprite[5], 0x6010000, 0x480, 0x346, 0,
            0, 0xFF, 0x10, 0xC, 0, 0, 0x80000);
        break;
    case LANGUAGE_ENGLISH:
        SpriteInit(&sprite[6], 0x6010000, 0x480, 0x345, 0,
            0, 0xFF, 0x10, 4, 0, 0, 0x80000);
        SpriteInit(&sprite[7], 0x6010000, 0x480, 0x344, 7,
            0, 0xFF, 0x10, 5, 0, 0, 0x80000);
        SpriteInit(&sprite[8], 0x6010000, 0x480, 0x345, 0x12,
            0, 0xFF, 0x10, 6, 0, 0, 0x80000);
        SpriteInit(&sprite[9], 0x6010000, 0x480, 0x343, 0x11,
            0, 0xFF, 0x10, 7, 0, 0, 0x80000);
        SpriteInit(&sprite[10], 0x6010000, 0x480, 0x343, 0,
            0, 0xFF, 0x10, 0xB, 0, 0, 0x80000);
        SpriteInit(&sprite[11], 0x6010000, 0x480, 0x346, 0,
            0, 0xFF, 0x10, 0xC, 0, 0, 0x80000);
        break;
    case LANGUAGE_GERMAN:
        SpriteInit(&sprite[12], 0x6010000, 0x480, 0x345, 0,
            0, 0xFF, 0x10, 4, 0, 0, 0x80000);
        SpriteInit(&sprite[13], 0x6010000, 0x480, 0x344, 7,
            0, 0xFF, 0x10, 5, 0, 0, 0x80000);
        SpriteInit(&sprite[14], 0x6010000, 0x480, 0x345, 0x12,
            0, 0xFF, 0x10, 6, 0, 0, 0x80000);
        SpriteInit(&sprite[15], 0x6010000, 0x480, 0x343, 0x11,
            0, 0xFF, 0x10, 7, 0, 0, 0x80000);
        SpriteInit(&sprite[16], 0x6010000, 0x480, 0x343, 0,
            0, 0xFF, 0x10, 0xB, 0, 0, 0x80000);
        SpriteInit(&sprite[17], 0x6010000, 0x480, 0x346, 0,
            0, 0xFF, 0x10, 0xC, 0, 0, 0x80000);
        break;
    case LANGUAGE_FRENCH:
        SpriteInit(&sprite[18], 0x6010000, 0x480, 0x345, 0,
            0, 0xFF, 0x10, 4, 0, 0, 0x80000);
        SpriteInit(&sprite[19], 0x6010000, 0x480, 0x344, 7,
            0, 0xFF, 0x10, 5, 0, 0, 0x80000);
        SpriteInit(&sprite[20], 0x6010000, 0x480, 0x345, 0x12,
            0, 0xFF, 0x10, 6, 0, 0, 0x80000);
        SpriteInit(&sprite[21], 0x6010000, 0x480, 0x343, 0x11,
            0, 0xFF, 0x10, 7, 0, 0, 0x80000);
        SpriteInit(&sprite[22], 0x6010000, 0x480, 0x343, 0,
            0, 0xFF, 0x10, 0xB, 0, 0, 0x80000);
        SpriteInit(&sprite[23], 0x6010000, 0x480, 0x346, 0,
            0, 0xFF, 0x10, 0xC, 0, 0, 0x80000);
        break;
    case LANGUAGE_SPANISH:
        SpriteInit(&sprite[24], 0x6010000, 0x480, 0x345, 0,
            0, 0xFF, 0x10, 4, 0, 0, 0x80000);
        SpriteInit(&sprite[25], 0x6010000, 0x480, 0x344, 7,
            0, 0xFF, 0x10, 5, 0, 0, 0x80000);
        SpriteInit(&sprite[26], 0x6010000, 0x480, 0x345, 0x12,
            0, 0xFF, 0x10, 6, 0, 0, 0x80000);
        SpriteInit(&sprite[27], 0x6010000, 0x480, 0x343, 0x11,
            0, 0xFF, 0x10, 7, 0, 0, 0x80000);
        SpriteInit(&sprite[28], 0x6010000, 0x480, 0x343, 0,
            0, 0xFF, 0x10, 0xB, 0, 0, 0x80000);
        SpriteInit(&sprite[29], 0x6010000, 0x480, 0x346, 0,
            0, 0xFF, 0x10, 0xC, 0, 0, 0x80000);
        break;
    case LANGUAGE_ITALIAN:
        SpriteInit(&sprite[30], 0x6010000, 0x480, 0x345, 0,
            0, 0xFF, 0x10, 4, 0, 0, 0x80000);
        SpriteInit(&sprite[31], 0x6010000, 0x480, 0x344, 7,
            0, 0xFF, 0x10, 5, 0, 0, 0x80000);
        SpriteInit(&sprite[32], 0x6010000, 0x480, 0x345, 0x12,
            0, 0xFF, 0x10, 6, 0, 0, 0x80000);
        SpriteInit(&sprite[33], 0x6010000, 0x480, 0x343, 0x11,
            0, 0xFF, 0x10, 7, 0, 0, 0x80000);
        SpriteInit(&sprite[34], 0x6010000, 0x480, 0x343, 0,
            0, 0xFF, 0x10, 0xB, 0, 0, 0x80000);
        SpriteInit(&sprite[35], 0x6010000, 0x480, 0x346, 0,
            0, 0xFF, 0x10, 0xC, 0, 0, 0x80000);
        break;
    }
    CpuCopy32(gUnk_0836EEC8, (void *)0x600E000, sizeof(gUnk_0836EEC8));
    CpuCopy32(gUnk_0836F6C8, (void *)0x600E800, sizeof(gUnk_0836F6C8));
}

void sub_0812B204(void) {
    struct Unk_0812A77C *var = TaskGetStructPtr(gCurTask);

    if (var->unk5F2++ > 120) {
        var->unk5F2 = 0;
        gCurTask->main = sub_0812B2F8;
        var->unk40[0].unk0[0].unk2C += 0x18;
        var->unk40[1].unk0[0].unk2C += 0x18;
        var->unk40[2].unk0[0].unk2C += 0x18;
        var->unk40[3].unk0[0].unk2C += 0x18;
        sub_0812E764(&var->unk40[0].unk0[0].unk0, 0);
        sub_0812E764(&var->unk40[1].unk0[0].unk0, 0);
        sub_0812E764(&var->unk40[2].unk0[0].unk0, 0);
        sub_0812E764(&var->unk40[3].unk0[0].unk0, 0);
    }
    sub_081288DC(&var->unk40[0].unk0[0]);
    sub_081288DC(&var->unk40[1].unk0[0]);
    sub_081288DC(&var->unk40[2].unk0[0]);
    sub_081288DC(&var->unk40[3].unk0[0]);
    sub_081288DC(&var->unk40[0].unk0[1]);
    sub_081288DC(&var->unk40[1].unk0[1]);
    sub_081288DC(&var->unk40[2].unk0[1]);
    sub_081288DC(&var->unk40[3].unk0[1]);
}

void sub_0812B2F8(void) {
    struct Unk_0812A77C *var = TaskGetStructPtr(gCurTask);

    if (var->unk5F2++ > 60) {
        var->unk5F2 = 0;
        gCurTask->main = sub_0812B418;
        var->unk0 = sub_0812D4F4();
        var->unk40[0].unk88 = sub_0812D1EC(&var->unk40[0], 0);
        var->unk40[1].unk88 = sub_0812D1EC(&var->unk40[1], 1);
        var->unk40[2].unk88 = sub_0812D1EC(&var->unk40[2], 2);
        var->unk40[3].unk88 = sub_0812D1EC(&var->unk40[3], 3);
        var->unk40[0].unk90 |= 0x10;
        var->unk40[1].unk90 |= 0x10;
        var->unk40[2].unk90 |= 0x10;
        var->unk40[3].unk90 |= 0x10;
        sub_0812D060();
    }
    sub_081288DC(&var->unk40[0].unk0[0]);
    sub_081288DC(&var->unk40[1].unk0[0]);
    sub_081288DC(&var->unk40[2].unk0[0]);
    sub_081288DC(&var->unk40[3].unk0[0]);
    sub_081288DC(&var->unk40[0].unk0[1]);
    sub_081288DC(&var->unk40[1].unk0[1]);
    sub_081288DC(&var->unk40[2].unk0[1]);
    sub_081288DC(&var->unk40[3].unk0[1]);
}

void sub_0812B418(void) {
    struct Unk_0812A77C *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    struct Unk_08128F44_4 *ptr, *ptr2, *ptr3;

    sub_0812CDD4(var);
    if (sub_0812E6A8(TaskGetStructPtr(var->unk0)) && var->unk0) {
        TaskDestroy(var->unk0);
        var->unk0 = NULL;
        var->unk40[0].unk0[0].unk40 = ptr = &var->unk564[0];
        ptr->unk3C = &var->unk40[0].unk0[0];
        ptr->unk34 &= ~0x10;
        ptr2 = &var->unk40[0].unk0[1];
        ptr2->unk40 = ptr3 = &var->unk564[1];
        ptr3->unk3C = ptr2;
        ptr3->unk34 &= ~0x10;
        sub_0812E764(&var->unk40[0].unk0[0].unk0, 1);
        sub_0812E764(&var->unk40[1].unk0[0].unk0, 1);
        sub_0812E764(&var->unk40[2].unk0[0].unk0, 1);
        sub_0812E764(&var->unk40[3].unk0[0].unk0, 1);
        gCurTask->main = sub_0812B63C;
        TaskDestroy(var->unk40[0].unk88);
        TaskDestroy(var->unk40[1].unk88);
        TaskDestroy(var->unk40[2].unk88);
        TaskDestroy(var->unk40[3].unk88);
        var->unk40[0].unk88 = NULL;
        var->unk40[1].unk88 = NULL;
        var->unk40[2].unk88 = NULL;
        var->unk40[3].unk88 = NULL;
        var->unk40[0].unk90 &= ~0x10;
        var->unk40[1].unk90 &= ~0x10;
        var->unk40[2].unk90 &= ~0x10;
        var->unk40[3].unk90 &= ~0x10;
        var->unk40[0].unk90 |= 0x20;
        var->unk40[1].unk90 |= 0x20;
        var->unk40[2].unk90 |= 0x20;
        var->unk40[3].unk90 |= 0x20;
        var->unk5F0 = 0x10;
        var->unk3C = 0;
        sub_0812E640();
    }
    sub_0812CED8(&var->unk40[0], 0);
    sub_0812CED8(&var->unk40[1], 1);
    sub_0812CED8(&var->unk40[2], 2);
    sub_0812CED8(&var->unk40[3], 3);
    sub_0812D124(var->unk40[0].unk9C, var->unk40[0].unk9E, &var->unk40[0]);
    sub_081288DC(&var->unk40[0].unk0[0]);
    sub_081288DC(&var->unk40[1].unk0[0]);
    sub_081288DC(&var->unk40[2].unk0[0]);
    sub_081288DC(&var->unk40[3].unk0[0]);
    sub_081288DC(&var->unk40[0].unk0[1]);
    sub_081288DC(&var->unk40[1].unk0[1]);
    sub_081288DC(&var->unk40[2].unk0[1]);
    sub_081288DC(&var->unk40[3].unk0[1]);
}

void sub_0812B63C(void) {
    struct Unk_0812A77C *tmp = TaskGetStructPtr(gCurTask), *var = tmp;

    sub_0812CDD4(var);
    if (var->unk40[0].unkA6 & 4 && var->unk564[0].unk34 & 0x200) {
        struct Unk_08128F44_4 *ptr = &var->unk564[0];

        ptr->unk0.animId = gUnk_08365054[gLanguage][1].animId;
        ptr->unk0.variant = gUnk_08365054[gLanguage][1].variant;
        ptr->unk0.unk1B = 0xFF;
        var->unk564[0].unk34 |= 0x800;
    }
    if (var->unk5F0 & 0x20) {
        sub_0812CF80(&var->unk40[0], var);
        sub_0812E604(&var->unk40[1]);
        sub_0812E604(&var->unk40[2]);
        sub_0812E604(&var->unk40[3]);
    }
    if (var->unk5F0 & 0x10) {
        var->unk40[0].unk0[0].unk2C -= 4 * gUnk_08364B5C[0][var->unk3C];
        var->unk40[1].unk0[0].unk2C -= 4 * gUnk_08364B5C[1][var->unk3C];
        var->unk40[2].unk0[0].unk2C -= 4 * gUnk_08364B5C[2][var->unk3C];
        var->unk40[3].unk0[0].unk2C -= 4 * gUnk_08364B5C[3][var->unk3C];
        var->unk8[1] += 4 * gUnk_08364C4C[var->unk3C];
        ++var->unk3C;
        if (var->unk3C > 60) {
            var->unk5F0 &= ~0x10;
            var->unk5F0 |= 0x20;
            sub_0812E764(&var->unk40[0].unk0[0].unk0, 5);
            sub_0812E764(&var->unk40[1].unk0[0].unk0, 5);
            sub_0812E764(&var->unk40[2].unk0[0].unk0, 5);
            sub_0812E764(&var->unk40[3].unk0[0].unk0, 5);
            var->unk3C = 0;
            sub_0812A218(&var->unk564[0]);
            // TODO: typo?
            var->unk564[1].unk30 = 0;
            var->unk564[1].unk32 = 0;
            sub_0812A218(&var->unk564[1]);
            var->unk564[1].unk30 = 0;
            var->unk564[1].unk32 = 0;
            var->unk40[0].unkA8 = var->unk564[0].unk2C;
            var->unk40[1].unkA8 = var->unk564[0].unk2C;
            var->unk40[2].unkA8 = var->unk564[0].unk2C;
            var->unk40[3].unkA8 = var->unk564[0].unk2C;
            var->unk40[0].unkAA = var->unk564[1].unk2C;
            var->unk40[1].unkAA = var->unk564[1].unk2C;
            var->unk40[2].unkAA = var->unk564[1].unk2C;
            var->unk40[3].unkAA = var->unk564[1].unk2C;
            var->unk40[0].unkA6 |= 2;
            var->unk40[1].unkA6 |= 2;
            var->unk40[2].unkA6 |= 2;
            var->unk40[3].unkA6 |= 2;
        }
    }
    else if (var->unk5F0 & 0x20) {
        if (var->unk5EC > 0x29) {
            var->unk564[0].unk32 = 0;
            var->unk40[0].unkA6 &= ~2;
            var->unk40[0].unk0[0].unk2C += 4 * gUnk_08364C88[var->unk3C];
            var->unk40[1].unk0[0].unk2C += 4 * gUnk_08364C88[var->unk3C];
            var->unk40[2].unk0[0].unk2C += 4 * gUnk_08364C88[var->unk3C];
            var->unk40[3].unk0[0].unk2C += 4 * gUnk_08364C88[var->unk3C];
            ++var->unk3C;
        }
        else {
            if (var->unk5EC < 0xF)
                var->unk8[1] -= 0x20;
            ++var->unk5EC;
        }
        if (var->unk40[0].unkA6 & 2)
            var->unk40[0].unkA8 += 0x10;
        if (var->unk40[1].unkA6 & 2)
            var->unk40[1].unkA8 += 0x10;
        if (var->unk40[2].unkA6 & 2)
            var->unk40[2].unkA8 += 0x10;
        if (var->unk40[3].unkA6 & 2)
            var->unk40[3].unkA8 += 0x10;
        var->unk564[0].unk2C = var->unk40[0].unkA8;
        var->unk564[1].unk2C = var->unk40[0].unkAA;
        if (var->unk3C > 8) {
            sub_0812E764(&var->unk40[0].unk0[0].unk0, 2);
            sub_0812E764(&var->unk40[1].unk0[0].unk0, 2);
            sub_0812E764(&var->unk40[2].unk0[0].unk0, 2);
            sub_0812E764(&var->unk40[3].unk0[0].unk0, 2);
        }
        if (var->unk3C > 0x11) {
            u8 i;

            var->unk5F0 &= ~0x20;
            var->unk5F0 |= 0x40;
            for (i = 0; i < 4; ++i) {
                struct Unk_08128F44_4 *ptr = &var->unk40[i].unk0[1];

                ptr->unk0.animId = gUnk_08364F9C[gLanguage][1].animId;
                ptr->unk0.variant = gUnk_08364F9C[gLanguage][1].variant;
                ptr->unk0.unk1B = 0xFF;
            }
            m4aSongNumStart(554);
            var->unk0 = sub_0812EFB4();
            CreatePauseFade(4, 1);
        }
    }
    else if (var->unk5F0 & 0x40) {
        if (!sub_0812A304()) {
            s16 sp04[4];
            bool32 sp10;

            var->unk40[0].unkA4 = var->unk40[0].unk9C;
            var->unk40[1].unkA4 = var->unk40[1].unk9C;
            var->unk40[2].unkA4 = var->unk40[2].unk9C;
            var->unk40[3].unkA4 = var->unk40[3].unk9C;
            if (var->unk40[0].unk90 & 1)
                var->unk40[0].unkA0 = var->unk40[0].unkAE;
            if (var->unk40[1].unk90 & 1)
                var->unk40[1].unkA0 = var->unk40[1].unkAE;
            if (var->unk40[2].unk90 & 1)
                var->unk40[2].unkA0 = var->unk40[2].unkAE;
            if (var->unk40[3].unk90 & 1)
                var->unk40[3].unkA0 = var->unk40[3].unkAE;
            var->unk40[0].unk9C = 8 * (var->unk40[0].unkA4 * var->unk40[0].unkA0 / 0xA + var->unk40[0].unkA4 / 8);
            var->unk40[1].unk9C = 8 * (var->unk40[1].unkA4 * var->unk40[1].unkA0 / 0xA + var->unk40[1].unkA4 / 8);
            var->unk40[2].unk9C = 8 * (var->unk40[2].unkA4 * var->unk40[2].unkA0 / 0xA + var->unk40[2].unkA4 / 8);
            var->unk40[3].unk9C = 8 * (var->unk40[3].unkA4 * var->unk40[3].unkA0 / 0xA + var->unk40[3].unkA4 / 8);
            sp10 = FALSE;
            if (var->unk40[0].unk9C >= 8000)
                sp10 = TRUE;
            sub_0812E468(var);
            CpuCopy32(gUnk_0836FEC8, (void *)0x600E000, sizeof(gUnk_0836FEC8));
            CpuCopy32(gUnk_083706C8, (void *)0x600E800, sizeof(gUnk_083706C8));
            gDispCnt |= DISPCNT_BG2_ON;
            CpuFill32(0, (void *)0x600F000, 0x400);
            gDispCnt &= ~DISPCNT_WIN0_ON;
            gBgScrollRegs[2][1] = 0;
            gCurTask->main = sub_0812BEE0;
            TaskDestroy(var->unk0);
            var->unk0 = NULL;
            CreatePauseFade(-0x10, 1);
            sp04[0] = var->unk40[0].unk9C;
            sp04[1] = var->unk40[1].unk9C;
            sp04[2] = var->unk40[2].unk9C;
            sp04[3] = var->unk40[3].unk9C;
            if (var->unk40[0].unkAC)
                sp04[0] -= 120;
            if (var->unk40[1].unkAC)
                sp04[1] -= 120;
            if (var->unk40[2].unkAC)
                sp04[2] -= 120;
            if (var->unk40[3].unkAC)
                sp04[3] -= 120;
            var->unk0 = sub_0812DBB4(sp04[0], sp04[1], sp04[2], sp04[3], sp10);
            gBgScrollRegs[0][0] = 8;
            gBgScrollRegs[0][1] = 0x58;
            gBgScrollRegs[1][0] = 8;
            gBgScrollRegs[1][1] = 0x58;
            gBgScrollRegs[2][0] = 0;
            gBgScrollRegs[2][1] = 0;
            var->unk8[0] = 0;
            var->unk8[1] = 0;
        }
    }
    gBgScrollRegs[0][0] = 8 - (var->unk8[0] >> 3);
    gBgScrollRegs[0][1] = 0x58 - (var->unk8[1] >> 3);
    gBgScrollRegs[1][0] = 8 - (var->unk8[0] >> 3) - (var->unk8[0] >> 6);
    gBgScrollRegs[1][1] = 0x58 - (var->unk8[1] >> 3) - (var->unk8[1] >> 6);
    if (var->unk5F0 & 0x40) {
        u16 a = Rand16() & 7, b = Rand16() & 7;

        gBgScrollRegs[0][0] += gUnk_08364CCA[a];
        gBgScrollRegs[0][1] += gUnk_08364CCA[b];
        gBgScrollRegs[1][0] += gUnk_08364CCA[a];
        gBgScrollRegs[1][1] += gUnk_08364CCA[b];
    }
    sub_081288DC(&var->unk40[0].unk0[0]);
    sub_081288DC(&var->unk40[1].unk0[0]);
    sub_081288DC(&var->unk40[2].unk0[0]);
    sub_081288DC(&var->unk40[3].unk0[0]);
    sub_081288DC(&var->unk40[0].unk0[1]);
    sub_081288DC(&var->unk40[1].unk0[1]);
    sub_081288DC(&var->unk40[2].unk0[1]);
    sub_081288DC(&var->unk40[3].unk0[1]);
    if (var->unk564[1].unk34 & 0x10) {
        sub_081288DC(&var->unk564[1]);
        sub_081288DC(&var->unk564[0]);
    }
}

void sub_0812BE74(struct Unk_0812A77C_40 *a1) {
    s32 r2 = abs(a1->unkA8 - a1->unkAA);

    a1->unkA0 = 1;
    if (a1->unkA8 > a1->unkAA) {
        if (r2 > 0x30) return;
        if (r2 > 0x20)
            a1->unkA0 = 2;
        else
            a1->unkA0 = 3;
    }
    else {
        if (r2 == 0)
            a1->unkA0 = 5;
        else if (r2 <= 0x10)
            a1->unkA0 = 4;
        else if (r2 <= 0x20)
            a1->unkA0 = 3;
        else if (r2 <= 0x30)
            a1->unkA0 = 2;
        else
            a1->unkA0 = 1;
    }
}

void sub_0812BEE0(void) {
    struct Unk_0812A77C *tmp = TaskGetStructPtr(gCurTask), *var = tmp;

    if (sub_0812E6C8(TaskGetStructPtr(var->unk0))) {
        if (!(var->unk5F0 & 2)) {
            if (var->unk40[0].unk9C >= 8000)
                CreatePauseFade(0x10, 1);
            else if (var->unk40[1].unk9C >= 8000 || var->unk40[2].unk9C >= 8000 || var->unk40[3].unk9C >= 8000)
                CreatePauseFadeSetBldCnt(0x10, 1);
            else
                CreatePauseFade(0x10, 1);
            var->unk5F0 |= 2;
        }
        if (!sub_0812A304()) {
            u32 r2;

            TaskDestroy(var->unk0);
            var->unk0 = NULL;
            var->unk5F0 &= ~2;
            r2 = 0;
            if (var->unk40[0].unk9C >= 8000)
                r2 = 1;
            if (var->unk40[1].unk9C >= 8000)
                ++r2;
            if (var->unk40[2].unk9C >= 8000)
                ++r2;
            if (var->unk40[3].unk9C >= 8000)
                ++r2;
            gDispCnt |= DISPCNT_BG0_ON | DISPCNT_BG1_ON;
            if (r2) {
                var->unk5F2 = 0;
                if (var->unk40[0].unk9C >= 8000) {
                    gDispCnt &= ~DISPCNT_BG2_ON;
                    sub_0812C168(var);
                    if (gUnk_0203AD10 & 2) {
                        gCurTask->main = sub_0812C29C;
                        sub_0812E194(0xA, 0x10, var->unk40[0].unk9C - 120);
                        sub_0812E194(0x46, 0x10, var->unk40[1].unk9C - 120);
                        sub_0812E194(0x82, 0x10, var->unk40[2].unk9C - 120);
                        sub_0812E194(0xBE, 0x10, var->unk40[3].unk9C - 120);
                    }
                    else {
                        gCurTask->main = sub_0812C29C;
                    }
                }
                else {
                    gCurTask->main = sub_0812C29C;
                    sub_0812E194(0xA, 0x10, var->unk40[0].unk9C - 120);
                    sub_0812E194(0x46, 0x10, var->unk40[1].unk9C - 120);
                    sub_0812E194(0x82, 0x10, var->unk40[2].unk9C - 120);
                    sub_0812E194(0xBE, 0x10, var->unk40[3].unk9C - 120);
                }
            }
            else {
                sub_0812C490(var);
                gCurTask->main = sub_0812C63C;
            }
        }
    }
    if (var->unk40[0].unk9C < 8000)
        sub_0812E6E4(0);
}

static inline struct Unk_08128F44_4 *BeYourself(struct Unk_08128F44_4 *a1) { // for matching
    return a1;
}

void sub_0812C168(struct Unk_0812A77C *a1) {
    u8 i;
    struct Unk_08128F44_4 *var;

    CpuCopy32(gUnk_08370EC8, (void *)0x600E000, sizeof(gUnk_08370EC8));
    CpuCopy32(gUnk_083716C8, (void *)0x600E800, sizeof(gUnk_083716C8));
    gDispCnt &= ~DISPCNT_BG2_ON;
    gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_TXT256x256 | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(0x1C);
    gBgCntRegs[1] = BGCNT_PRIORITY(2) | BGCNT_TXT256x256 | BGCNT_CHARBASE(1) | BGCNT_SCREENBASE(0x1D);
    gBgScrollRegs[0][0] = 8;
    gBgScrollRegs[0][1] = 0;
    gBgScrollRegs[1][0] = 8;
    gBgScrollRegs[1][1] = 0;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    a1->unk5F2 = 0;
    for (i = 0; i < 4; ++i) {
        CpuFill32(0, &a1->unk410[i], sizeof(a1->unk410[i]));
        var = BeYourself(&a1->unk410[i]);
        var->unk0.tilesVram = 0x6010000;
        var->unk0.unk14 = 0x480;
        var->unk0.animId = gUnk_08364FCC[gLanguage].animId;
        var->unk0.variant = gUnk_08364FCC[gLanguage].variant;
        var->unk0.unk16 = 0;
        var->unk0.unk1B = 0xFF;
        var->unk0.unk1C = 0x10;
        var->unk0.palId = 4;
        var->unk0.x = gUnk_08364FE4[i] >> 2;
        var->unk0.y = 0;
        var->unk0.unk8 = 0xC0000;
        var->unk28 = gUnk_08364FE4[i];
        var->unk2C = 0;
        var->unk30 = 0;
        var->unk32 = 0;
        var->unk34 = 0x10;
        var->unk36 = 0;
        var->unk38 = NULL;
        var->unk3C = NULL;
        var->unk40 = NULL;
    }
}

void sub_0812C29C(void) {
    struct Unk_0812A77C *tmp = TaskGetStructPtr(gCurTask), *var = tmp;

    sub_0812E194(0xA, 0x10, var->unk40[0].unk9C - 120);
    sub_0812E194(0x46, 0x10, var->unk40[1].unk9C - 120);
    sub_0812E194(0x82, 0x10, var->unk40[2].unk9C - 120);
    sub_0812E194(0xBE, 0x10, var->unk40[3].unk9C - 120);
    if (!(var->unk5F0 & 2) && !sub_0812A304()) {
        if (var->unk40[0].unk9C >= 8000) {
            CreatePauseFade(-0x10, 1);
            m4aSongNumStart(561);
        }
        else {
            CreatePauseFadeSetBldCnt(-0x10, 1);
        }
        var->unk5F0 |= 2;
    }
    if (var->unk5F2 > 120) {
        if (!sub_0812A304()) {
            var->unk5F0 &= ~2;
            gDispCnt &= ~DISPCNT_BG2_ON;
            gBgCntRegs[0] = BGCNT_PRIORITY(2) | BGCNT_TXT256x256 | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(0x1C);
            gBgCntRegs[1] = BGCNT_PRIORITY(2) | BGCNT_TXT256x256 | BGCNT_CHARBASE(0) | BGCNT_SCREENBASE(0x1D);
            sub_0812C490(var);
            gCurTask->main = sub_0812C63C;
        }
    }
    else {
        if (var->unk5F2 == 120) {
            CreatePauseFade(0x10, 1);
            ++var->unk5F2;
        }
        else {
            ++var->unk5F2;
        }
    }
    if (var->unk5F2 == 30)
        m4aSongNumStart(561);
    if (var->unk5F2 > 30) {
        if (var->unk40[0].unk9C >= 8000) {
            sub_081288DC(var->unk410);
            if (var->unk40[1].unk9C >= 8000)
                sub_081288DC(&var->unk410[1]);
            if (var->unk40[2].unk9C >= 8000)
                sub_081288DC(&var->unk410[2]);
            if (var->unk40[3].unk9C >= 8000)
                sub_081288DC(&var->unk410[3]);
        }
    }
    if (var->unk40[0].unk9C < 8000)
        sub_0812E6E4(0);
}

void sub_0812C490(struct Unk_0812A77C *a1) {
    CpuCopy32(gUnk_0836EEC8, (void *)0x600E000, sizeof(gUnk_0836EEC8));
    CpuCopy32(gUnk_0836F6C8, (void *)0x600E800, sizeof(gUnk_0836F6C8));
    gDispCnt &= ~DISPCNT_BG2_ON;
    sub_0812C528(&a1->unk40[0], 0);
    sub_0812C528(&a1->unk40[1], 1);
    sub_0812C528(&a1->unk40[2], 2);
    sub_0812C528(&a1->unk40[3], 3);
    gBgScrollRegs[0][0] = 8;
    gBgScrollRegs[0][1] = 0x58;
    gBgScrollRegs[1][0] = 8;
    gBgScrollRegs[1][1] = 0x58;
    gBgScrollRegs[2][0] = 0;
    gBgScrollRegs[2][1] = 0;
    a1->unk5F2 = 30;
}

void sub_0812C528(struct Unk_0812A77C_40 *a1, u8 a2) {
    if (a1->unkAC) {
        sub_0812E764(&a1->unk0[0].unk0, 4);
        switch (a2) {
        case 0:
            a1->unk0[0].unk28 = 120;
            a1->unk0[0].unk2C = 0x228;
            break;
        case 1:
            a1->unk0[0].unk28 = 360;
            a1->unk0[0].unk2C = 0x228;
            break;
        case 2:
            a1->unk0[0].unk28 = 600;
            a1->unk0[0].unk2C = 0x228;
            break;
        case 3:
            a1->unk0[0].unk28 = 840;
            a1->unk0[0].unk2C = 0x228;
            break;
        }
    }
    else {
        sub_0812E764(&a1->unk0[0].unk0, 3);
        switch (a2) {
        case 0:
            a1->unk0[0].unk28 = 120;
            a1->unk0[0].unk2C = 0x1A8;
            break;
        case 1:
            a1->unk0[0].unk28 = 360;
            a1->unk0[0].unk2C = 0x1A8;
            break;
        case 2:
            a1->unk0[0].unk28 = 600;
            a1->unk0[0].unk2C = 0x1A8;
            break;
        case 3:
            a1->unk0[0].unk28 = 840;
            a1->unk0[0].unk2C = 0x1A8;
            break;
        }
    }
    a1->unk0[1].unk0.palId = 6;
    switch (gLanguage) { // all the same
    case LANGUAGE_JAPANESE:
        a1->unk0[1].unk0.animId = 0x345;
        a1->unk0[1].unk0.variant = 0x12;
        a1->unk0[1].unk0.unk1B = 0xFF;
        break;
    case LANGUAGE_ENGLISH:
        a1->unk0[1].unk0.animId = 0x345;
        a1->unk0[1].unk0.variant = 0x12;
        a1->unk0[1].unk0.unk1B = 0xFF;
        break;
    case LANGUAGE_GERMAN:
        a1->unk0[1].unk0.animId = 0x345;
        a1->unk0[1].unk0.variant = 0x12;
        a1->unk0[1].unk0.unk1B = 0xFF;
        break;
    case LANGUAGE_FRENCH:
        a1->unk0[1].unk0.animId = 0x345;
        a1->unk0[1].unk0.variant = 0x12;
        a1->unk0[1].unk0.unk1B = 0xFF;
        break;
    case LANGUAGE_SPANISH:
        a1->unk0[1].unk0.animId = 0x345;
        a1->unk0[1].unk0.variant = 0x12;
        a1->unk0[1].unk0.unk1B = 0xFF;
        break;
    case LANGUAGE_ITALIAN:
        a1->unk0[1].unk0.animId = 0x345;
        a1->unk0[1].unk0.variant = 0x12;
        a1->unk0[1].unk0.unk1B = 0xFF;
        break;
    }
    switch (a2) { // all the same
    case 0:
        a1->unk0[1].unk2C = 0x248;
        break;
    case 1:
        a1->unk0[1].unk2C = 0x248;
        break;
    case 2:
        a1->unk0[1].unk2C = 0x248;
        break;
    case 3:
        a1->unk0[1].unk2C = 0x248;
        break;
    }
}
