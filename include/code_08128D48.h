#ifndef GUARD_CODE_08128D48_H
#define GUARD_CODE_08128D48_H

#include "global.h"
#include "data.h"

struct Unk_08128D48_0_4 {
    u16 srcVramOffset;
    u8 unk2;
    u8 delay;
}; /* size = 4 */

struct Unk_08128D48_0 {
    u16 dstVramOffset;
    u8 numTiles;
    u8 numFrames;
    struct Unk_08128D48_0_4 frames[0];
}; /* size = 4 */

struct Unk_08128D48 {
    const struct Unk_08128D48_0_4 *frames;
    u32 dstVram;
    u8 numFrames;
    u16 sizeTiles;
    u8 currentTilesetIndex;
    u8 delayCounter;
}; /* size = 0x10 */

struct Unk_08128E28_0 {
    u8 paletteOffset;
    u8 numPalettes;
    u8 paletteSize; // in halfwords
    u16 data[0]; // one single entry (numPalettes entries in total):
                 // u16 delay;
                 // u16 palette[paletteSize];
}; /* size = 4 */

struct Unk_08128E28 {
    const u16 *data;
    u16 currentDataOffset; // in halfwords
    u8 paletteOffset;
    u8 paletteSize; // in halfwords
    u8 numPalettes;
    u8 currentPaletteIndex;
    u8 delayCounter;
}; /* size = 0xC */

struct Unk_08128F44_4 {
    struct Sprite unk0;
    s32 unk28;
    s32 unk2C;
    s16 unk30;
    s16 unk32;
    u16 unk34;
    u16 unk36;
    s32 *unk38;
    struct Unk_08128F44_4 *unk3C;
    struct Unk_08128F44_4 *unk40;
}; /* size = 0x44 */

struct Unk_08128F44 {
    const struct Unk_02021590 *unk0; // 6 structs
    struct Unk_08128F44_4 unk4[10][1]; // TODO: UB: out-of-bounds access
    u8 unk2AC;
    u8 unk2AD;
    u16 unk2AE;
    u8 unk2B0;
    u8 unk2B1;
    u8 unk2B2;
    u8 unk2B3;
    s16 unk2B4;
    s16 unk2B6;
}; /* size = 0x2B8 */

struct Unk_0812A77C_40 {
    struct Unk_08128F44_4 unk0[2];
    struct Task *unk88;
    struct Task *unk8C;
    u16 unk90;
    u8 unk92;
    u16 unk94;
    u16 unk96;
    u16 unk98;
    u16 unk9A;
    s16 unk9C;
    s16 unk9E;
    s16 unkA0;
    u8 fillerA2[2];
    s16 unkA4;
    u16 unkA6;
    s16 unkA8;
    s16 unkAA;
    u8 unkAC;
    u8 unkAD;
    u16 unkAE;
}; /* size = 0xB0 */

struct Unk_0812A77C {
    struct Task *unk0;
    struct Task *unk4;
    s32 unk8[2];
    u8 unk10[4];
    struct Task *unk14[10];
    u8 unk3C;
    struct Unk_0812A77C_40 unk40[4];
    struct Unk_08128F44_4 unk300[4]; // guessed
    struct Unk_08128F44_4 unk410[4];
    struct Unk_08128F44_4 unk520; // guessed
    struct Unk_08128F44_4 unk564[2];
    s16 unk5EC;
    u8 filler5EE[2];
    u16 unk5F0;
    s16 unk5F2;
    u8 unk5F4;
    s16 unk5F6;
}; /* size = 0x5F8 */

struct Unk_0812D1EC_0 {
    struct Unk_0812A77C_40 *unk0;
    struct Unk_08128F44_4 unk4;
    s32 unk48;
    s32 unk4C;
    u16 unk50;
    u16 unk52;
}; /* size = 0x54 */

struct Unk_0812D1EC {
    struct Unk_0812D1EC_0 unk0;
    struct Unk_0812A77C_40 *unk54;
    u8 unk58;
    u8 unk59;
}; /* size = 0x5C */

struct Unk_0812E818 {
    struct Unk_0812D1EC_0 unk0;
    s16 unk54;
}; /* size = 0x58 */

struct Unk_0812D4F4 {
    struct Unk_08128F44_4 unk0[4];
    s8 unk110;
    s8 unk111;
    s8 unk112;
    s8 unk113;
    u16 unk114;
    struct Unk_08128F44_4 unk118[4];
}; /* size = 0x228 */

struct Unk_0812EFB4 {
    u16 unk0;
}; /* size = 4 */

struct Unk_0812DBB4_0 {
    s16 unk0;
    s16 unk2;
    u8 unk4;
}; /* size = 8 */

struct Unk_0812DBB4 {
    struct Unk_0812DBB4_0 unk0[4];
    s16 unk20;
    s16 unk22;
    u16 unk24;
    s8 unk26;
    u16 unk28;
}; /* size = 0x2C */

struct Unk_0812ECE0 {
    s16 unk0;
    u8 unk2;
    u8 unk3;
    s32 unk4;
}; /* size = 8 */

// pause_area_map
void sub_081288DC(struct Unk_08128F44_4 *);

#endif
