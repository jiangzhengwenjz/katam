#ifndef GUARD_PAUSE_FADE_H
#define GUARD_PAUSE_FADE_H

#include "global.h"

struct PauseFadeStruct {
    u16 unk0;
    s8 unk2;
    u8 unk3;
}; /* size = 4 */

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
    u16 unk30;
    u16 unk32;
    u16 unk34;
    u16 unk36;
    s32 *unk38;
    struct Unk_08128F44_4 *unk3C;
    struct Unk_08128F44_4 *unk40;
}; /* size = 0x44 */

struct Unk_08128F44 {
    const struct Unk_02021590 *unk0; // 6 structs
    struct Unk_08128F44_4 unk4[10];
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

void CreatePauseFade(s8 arg0, u32 arg1);
void CreatePauseFadeSetBldCnt(s8 arg0, u32 arg1);
void sub_08128BEC(s8 a1, u32 a2, u16 a3);

#endif
