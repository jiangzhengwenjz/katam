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
    s16 unk9C; // Score? Cracking through when >= 8000
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
    struct Unk_08128F44_4 *unk0;
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

struct Unk_0812F91C_20 {
    struct Unk_08128F44_4 unk0;
    struct Unk_08128F44_4 unk44;
    struct Task *unk88;
    struct Task *unk8C;
    struct Task *unk90;
    u16 unk94;
    u16 filler96;
    u16 unk98;
    u16 unk9A;
    u16 unk9C;
    u16 unk9E;
    s8 unkA0;
    s8 unkA1;
    s16 unkA2;
    u16 unkA4;
    u8 unkA6;
    s16 unkA8;
    s16 unkAA;
    s32 unkAC;
    u16 unkB0;
    u8 unkB2;
    u8 unkB3;
    s16 unkB4;
    u16 unkB6;
    s8 unkB8;
    u8 fillerB9[3];
    u8 unkBC;
    u8 unkBD;
    u8 unkBE;
    s8 unkBF;
    s32 unkC0;
    s32 unkC4;
    s32 unkC8;
    s32 unkCC;
    s16 unkD0;
    u8 unkD2;
    u8 *unkD4;
    const u16 *unkD8;
    const u16 *unkDC;
    u8 unkE0;
    u8 fillerE1[3];
    u8 unkE4;
    u8 unkE5;
    u16 unkE6;
    u32 unkE8;
}; /* size = 0xEC */

struct Unk_0812F91C_45C {
    s32 unk0;
    s32 unk4;
    s32 unk8;
    s32 unkC;
    s16 unk10;
    u16 unk12;
}; /* size = 0x14 */

struct Unk_0812F91C {
    struct Task *unk0;
    struct Task *unk4;
    s32 unk8[2];
    struct Task *unk10;
    struct Task *unk14[3];
    struct Unk_0812F91C_20 unk20[4];
    u8 unk3D0[4];
    struct Unk_08128F44_4 unk3D4;
    struct Unk_08128F44_4 unk418;
    struct Unk_0812F91C_45C unk45C[4];
    u8 filler4AC[0xC];
    u32 unk4B8;
    u8 filler4BC[0x68];
    u8 unk524;
    u8 filler525[3];
    u8 unk528;
    u8 unk529;
    u8 unk52A;
    u8 filler52B;
    u8 unk52C[0x3C] __attribute__((aligned(4)));
    s32 unk568;
    s32 unk56C;
    const u16 *unk570;
    const u16 *unk574;
    u8 unk578;
    u8 unk579;
    u16 unk57A;
    u8 unk57C;
    u8 unk57D;
    s16 unk57E;
}; /* size = 0x580 */

struct Unk_0813119C {
    struct Unk_0812F91C *unk0;
    struct Unk_08128F44_4 unk4;
    struct Unk_08128F44_4 unk48;
    struct Unk_08128F44_4 unk8C;
    struct Unk_08128F44_4 unkD0[4][7];
}; /* size = 0x840 */

struct Unk_08134788 {
    struct Unk_08128F44_4 *unk0;
    u16 unk4;
    s8 unk6;
}; /* size = 8 */

struct Unk_081347D8 {
    struct Unk_08128F44_4 *unk0;
    u16 unk4;
    u8 unk6;
    u8 unk7;
    u32 unk8;    
}; /* size = 0xC */

struct Unk_0813862C {
    u16 unk0;
    u8 unk2;
}; /* size = 4 */

struct Unk_08134D64_10 {
    struct Unk_08128F44_4 unk0;
    struct Unk_08128F44_4 unk44;
    struct Unk_08128F44_4 unk88;
    struct Task *unkCC;
    u16 unkD0;
    u8 fillerD2[2];
    u16 unkD4;
    u8 fillerD6[6];
    u16 unkDC;
    u8 unkDE;
    u8 unkDF;
    u16 unkE0;
    u8 unkE2;
    u16 unkE4;
    u8 unkE6;
    u8 unkE7;
    u8 unkE8;
}; /* size = 0xEC */

struct Unk_08134D64 {
    struct Task *unk0; // ???
    struct Task *unk4; // ???
    struct Task *unk8; // ???
    struct Task *unkC; // struct Unk_0813862C
    struct Unk_08134D64_10 unk10[4];
    struct Unk_08128F44_4 unk3C0;
    u32 filler404;
    u8 unk408;
    u8 unk409;
    u8 unk40A;
    u8 unk40B;
    u8 unk40C;
    u8 unk40D;
    s16 unk40E;
    u16 unk410;
    u16 unk412;
    u16 unk414;
    u8 unk416;
    u8 unk417;
    u16 unk418;
    u8 unk41A;
    u8 unk41B;
    u8 unk41C;
    u8 unk41D;
    u16 unk41E;
}; /* size = 0x420 */

// pause_area_map
void sub_081288DC(struct Unk_08128F44_4 *);
void sub_08128980(void);

#endif
