#ifndef GUARD_PAUSE_WORLD_MAP_H
#define GUARD_PAUSE_WORLD_MAP_H

#include "global.h"
#include "data.h"

struct UnkKirbyMapSprite {
    /* 0x00 */ struct Sprite unk0;
    /* 0x28 */ struct Sprite unk28;
    /* 0x50 */ u16 unk50;
    /* 0x52 */ u16 filler0;
}; /* size = 0x54 */

// Perhaps similar to struct Unk_0801C6F8, but datatypes and size don't match
struct PauseWorldMapStruct {
    /* 0x000 */ struct Background unk0;
    /* 0x040 */ struct UnkKirbyMapSprite unk40[4]; // The four structs are always explicitly and sequentially referenced, so it doesn't need to be an array
    /* 0x190 */ u8 filler0[0x78];
    /* 0x208 */ u16 unk208;
    /* 0x20A */ u16 unk20A;
    /* 0x20C */ s8 unk20C;
    /* 0x20D */ u8 unk20D;
    /* 0x20E */ s16 unk20E; // Probably some kind of counter
    /* 0x210 */ u8 unk210;  // 0x01 if pause_help is following and 0x04 if pause_area_map is following
                            // - which is weird, can pause_area_map even be accessed from pause_world_map?
                            // For some reason, this must be u8, while Unk_0203ACC0::unkD must be s8,
                            // but values are assigned from one to another
    /* 0x211 */ u8 unk211;
    /* 0x212 */ u16 filler1;
    /* 0x214 */ struct Task* unk214;
}; /* size = 0x218 */

// Some kind of kirby-player struct
struct Unk_0203ACC0 {
    /* 0x00 */ u8 filler0[0xd];
    /* 0x0D */ s8 unkD;
    /* 0x0E */ u16 unkE;
    /* 0x10 */ u8 filler1[0x4];
}; /* size = 0x14 */

#define UnkKirbyMapSpriteCalls(pauseworldmap, kirbyID) {                \
    struct UnkKirbyMapSprite* r4 = (pauseworldmap)->unk40 + (kirbyID);  \
    if (!(r4->unk50 & 0x0001)) {                                        \
        sub_08155128(&r4->unk0);                                        \
        sub_081564D8(&r4->unk0);                                        \
        if (!(r4->unk50 & 0x0002)) {                                    \
            sub_08155128(&r4->unk28);                                   \
            sub_081564D8(&r4->unk28);                                   \
        }                                                               \
    }                                                                   \
}

extern struct Unk_0203ACC0 gUnk_0203ACC0[]; // Most likely with 4 entries per player
extern const void* gUnk_081E08FC;
extern const void* gUnk_0835A3CC;
extern const u16 gUnk_08359C08[];

// Perhaps holds size of the following incbins
extern const u8 gUnk_08359DD8[];
// Hold Tilemap Data
extern const u16 gUnk_08359DE8[];
extern const u16 gUnk_08359DEC[];
extern const u16 gUnk_08359DF4[];
extern const u16 gUnk_08359DFC[];
extern const u16 gUnk_08359E04[];
extern const u16 gUnk_08359E08[];
extern const u16 gUnk_08359E10[];
extern const u16 gUnk_08359E1C[];
extern const u16 gUnk_08359E24[];
extern const u16 gUnk_08359E30[];
extern const u16 gUnk_08359E38[];
extern const u16 gUnk_08359E40[];
extern const u16 gUnk_08359E50[];
extern const u16 gUnk_08359E60[];
extern const u16 gUnk_08359E6C[];

void sub_08125A4C(u32);

#endif
