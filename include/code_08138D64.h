#ifndef GUARD_CODE_08138D64_H
#define GUARD_CODE_08138D64_H

#include "global.h"
#include "sprite.h"
#include "code_0802E57C.h"
#include "multi_08030C94.h"

struct Unk_08138D64 {
    u8 unk0;
    u8 unk1;
    u8 unk2;
    u8 unk3;
    u8 unk4[3];
    s8 unk7[3];
    u8 unkA;
    u8 unkB;
    struct Sprite unkC;
    struct Sprite unk34[3];
    struct Sprite unkAC[3];
    struct Sprite unk124[3][3];
    struct Sprite unk28C;
    struct Sprite unk2B4;
    struct Sprite unk2DC[4];
    struct Sprite unk37C;
    u8 unk3A4;
    u8 unk3A5;
    u8 unk3A6;
    u8 unk3A7;
    struct Sprite unk3A8;
    struct Sprite unk3D0;
    struct Sprite unk3F8[3];
    u8 unk470;
    u8 unk471;
    u8 unk472;
    u8 unk473;
    u8 unk474;
    struct Sprite unk478;
    struct Sprite unk4A0;
    struct Sprite unk4C8;
    struct Sprite unk4F0;
    struct Sprite unk518;
    struct Sprite unk540;
    struct Sprite unk568;
    struct Sprite unk590;
    struct Sprite unk5B8;
    struct Sprite unk5E0;
    struct Sprite unk608;
    struct Sprite unk630[4];
    struct Sprite unk6D0[3][2];
    s16 unk7C0[4][2];
    u8 unk7D0;
    u8 unk7D1;
    u8 unk7D2;
    u8 unk7D3;
    u8 unk7D4;
    u8 unk7D5;
    u8 unk7D6;
    u8 unk7D7;
    u8 unk7D8[3];
    u8 unk7DB[3];
    u8 unk7DE;
    u16 unk7E0;
    struct Sprite unk7E4[4][3];
    s8 unk9C4[4];
    u8 unk9C8[2];
    u8 unk9CA;
    u8 unk9CB;
    void (*unk9CC)(struct Unk_08138D64 *);
    void (*unk9D0)(struct Unk_08138D64 *);
    u32 unk9D4;
    s16 unk9D8;
    u16 unk9DA[0x100];
    void (*unkBDC)(struct Unk_08138D64 *);
    s16 unkBE0;
    u8 unkBE2;
    u8 unkBE3;
    u8 unkBE4;
    u8 unkBE5;
    s16 unkBE6;
    union {
        struct Multi_08019F28 *pat1;
        struct Multi_08032B0C *pat2;
    } unkBE8;
    struct Unk_0802E57C *unkBEC;
    u16 unkBF0;
}; /* size = 0xBF4 */

#endif
