#ifndef GUARD_CODE_08026044_H
#define GUARD_CODE_08026044_H

#include "data.h"
#include "sprite.h"
struct Cutscene {
    void (*unk0)(struct Cutscene*);
    struct Sprite unk4[4];
    struct Sprite unkA4;
    struct Sprite unkCC;
    struct Sprite unkF4;
    struct Sprite unk11C;
    struct Sprite unk144;
    struct Sprite unk16C;
    struct Background unk194;
    struct Background unk1D4;
    u16 unk214[3][32] __attribute__((aligned(4)));
    struct Unk_080298C8 *unk2D4;
    s32 unk2D8;
    s32 unk2DC;
    s16 unk2E0;
    s16 unk2E2;
    s32 unk2E4[4][2];
    s16 unk304[4][2];
    s32 unk314[2];
    s32 unk31C;
    s16 unk320[2];
    s16 unk324;
    u16 unk326; // unknown
    s32 unk328;
    s32 unk32C;
    s32 unk330;
    u16 unk334;
    u16 unk336;
    s16 unk338;
    u16 unk33A;
    s32 unk33C;
    s32 unk340;
    s32 unk344;
    s16 unk348;
    s16 unk34A;
    s16 unk34C;
    u16 unk34E;
    s16 unk350;
    s16 unk352;
    u32 flags;
    u16 unk358;
    u16 unk35A;
    u16 unk35C;
    u16 unk35E;
    u16 unk360;
    u8 unk362;
    u8 unk363;
}; /* size = 0x364 */

struct Unk_080296EC {
    void (*unk0)(struct Unk_080296EC*);
    struct Background bg;
    struct Cutscene *cs;
    const u16 (*unk48)[2];
    u16 unk4C;
    u16 unk4E;
    u16 unk50;
    u16 unk52;
}; /* size = 0x54 */

struct Unk_080298C8 {
    void (*unk0)(struct Unk_080298C8*);
    struct Cutscene *cs;
    u16 unk8;
    u16 unkA;
}; /* size = 0xC */

struct Unk_080299B4 {
    struct Sprite spr;
    struct Cutscene *cs;
    s32 unk2C;
    s32 unk30;
    s16 unk34;
    s16 unk36;
    u16 unk38;
    u16 unk3A; //unknown
}; /* size = 0x3C */

#define Macro_08026168(sprite, arg1, arg2, arg3, array, array2, flag) ({ \
    s16 _val; \
    if ((arg1) <= 0x1ff) { \
        _val = 2; \
        (array)[0] = 0x78; \
        (array)[1] = 0x50; \
    } \
    else { \
        _val = (arg1) >> 8; \
        (array)[0] = ((((arg2) - 0x7800) * _val) >> 0x10) + 0x78; \
        (array)[1] = ((((arg3) - 0x5000) * _val) >> 0x10) + 0x50; \
    } \
    (array2)[0] = 0;  \
    (array2)[1] = _val; \
    (array2)[2] = _val; \
    (array2)[3] = (array)[0]; \
    (array2)[4] = (array)[1]; \
    sprite->unk8 = (flag); \
    sub_08155604(sprite, array2); \
})

#endif
