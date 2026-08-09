#ifndef GUARD_CUTSCENE_TRIGGER_H
#define GUARD_CUTSCENE_TRIGGER_H

#include "global.h"
#include "data.h"

struct CutsceneTrigger0 {
    /* 0x000 */ struct Object2 obj2;
    /* 0x0B4 */ struct Object2 *unkB4;
    /* 0x0B8 */ struct Object4 *unkB8[4];
    /* 0x0C8 */ struct Object4 *unkC8;
    /* 0x0CC */ u16 unkCC;
    /* 0x0CE */ u16 unkCE;
    /* 0x0D0 */ u16 unkD0;
    /* 0x0D2 */ u16 unkD2;
    /* 0x0D4 */ u16 unkD4;
}; /* size = 0xD8 */

struct CutsceneTrigger1 {
    /* 0x000 */ struct Object2 obj2;
    /* 0x0B4 */ struct Object2 *unkB4;
    /* 0x0B8 */ u16 unkB8;
    /* 0x0BA */ u16 unkBA;
    /* 0x0BC */ u16 unkBC;
}; /* size = 0xC0 */

struct CutsceneTrigger2 {
    /* 0x000 */ struct Object2 obj2;
    /* 0x0B4 */ struct ObjectBase unkB4[4];
    /* 0x294 */ struct Object4 *unk294[4]; // NULL = empty, (void *)-1 = consumed
    /* 0x2A4 */ u16 unk2A4[4];
    /* 0x2AC */ u16 unk2AC[4];
    /* 0x2B4 */ u16 unk2B4;
    /* 0x2B6 */ u16 unk2B6;
}; /* size = 0x2B8 */

struct CutsceneTrigger4 {
    /* 0x000 */ struct Object2 obj2;
    /* 0x0B4 */ struct Object4 *unkB4;
    /* 0x0B8 */ struct Object4 *unkB8;
    /* 0x0BC */ struct Object4 *unkBC;
    /* 0x0C0 */ struct Object4 *unkC0;
    /* 0x0C4 */ s16 unkC4;
    /* 0x0C6 */ s16 unkC6;
    /* 0x0C8 */ s16 unkC8;
}; /* size = 0xCC */

struct CutsceneTrigger5 {
    /* 0x000 */ struct Object2 obj2;
    /* 0x0B4 */ s16 unkB4;
    /* 0x0B8 */ struct Object4 *unkB8;
    /* 0x0BC */ struct Object4 *unkBC;
    /* 0x0C0 */ struct Object4 *unkC0;
    /* 0x0C4 */ struct Unk_02022930_0 *unkC4;
    /* 0x0C8 */ u8 unkC8;
    /* 0x0C9 */ u8 unkC9;
    /* 0x0CA */ s8 unkCA;
    /* 0x0CB */ s8 unkCB;
    /* 0x0CC */ u8 unkCC;
    /* 0x0CE */ s16 unkCE[4][2];
    /* 0x0DE */ u8 unkDE[4];
    /* 0x0E2 */ u8 unkE2[4];
    /* 0x0E6 */ s16 unkE6;
    /* 0x0E8 */ s16 unkE8;
}; /* size = 0xEC */

extern const u16 gUnk_082DE9FC[][2];
extern const u16 gUnk_082DEA24[][2];
extern const s16 gUnk_082DEA4C[4][2];
extern const s16 gUnk_082DEA5C[4][2];
extern const s16 gUnk_082DEA6C[][2];
extern const s16 gUnk_082DEA7C[][2];
extern const s16 gUnk_082DEA8C[][2];
extern const s16 gUnk_082DEA9C[];

void *CreateCutsceneTrigger(struct Object *, u8);

#endif
