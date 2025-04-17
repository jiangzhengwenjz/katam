#ifndef GUARD_PAUSE_WORLD_MAP_H
#define GUARD_PAUSE_WORLD_MAP_H

#include "global.h"
#include "data.h"

// Perhaps similar to struct Unk_0801C6F8, but datatypes and size don't match
struct PauseWorldMapStruct {
    /* 0x000 */ struct Background unk0;
    /* 0x040 */ u8 unk40[4][0x54]; // Probably 4 kirby-player-structs with size 0x54
    /* 0x190 */ u8 filler0[0x78];
    /* 0x208 */ u16 unk208;
    /* 0x20A */ u16 unk20A;
    /* 0x20C */ u8 unk20C;
    /* 0x20D */ u8 unk20D;
    /* 0x20E */ s16 unk20E;
    /* 0x210 */ s8 unk210;
    /* 0x211 */ u8 unk211;
    /* 0x212 */ u16 filler1;
    /* 0x214 */ u32 unk214;
}; /* size = 0x218 */

// Probably some kind of kirby-player struct
struct Unk_0203ACC0 {
    /* 0x00 */ u8 filler0[0xd];
    /* 0x0D */ s8 unkD;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u8 filler1[0x4];
}; /* size = 0x14 */

// Most likely with 4 entries, probably per player
extern struct Unk_0203ACC0 gUnk_0203ACC0[];

extern const void* gUnk_081E08FC;
extern const void* gUnk_0835A3CC;
extern const u16 gUnk_08359C08[];

void sub_08125A4C(u32);

#endif