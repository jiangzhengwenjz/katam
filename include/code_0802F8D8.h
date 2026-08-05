#ifndef GUARD_CODE_0802F8D8_H
#define GUARD_CODE_0802F8D8_H

#include "global.h"
#include "code_0802E57C.h"

struct Unk_0802F8D8 {
    /* 0x00 */ struct Sprite sprite;
    /* 0x28 */ struct Unk_0802E57C *parent;
    /* 0x2C */ s32 x;
    /* 0x30 */ s32 y;
    /* 0x34 */ s16 xspeed;
    /* 0x36 */ s16 yspeed;
    /* 0x38 */ u16 unk38;
}; /* size = 0x3C */

extern const Unk_0802E57C_CFunc gUnk_082EB7D0[];
extern const u16 gUnk_082EB7F8[];

struct Unk_0802F8D8 *sub_0802F8D8(struct Unk_0802E57C *, u16, u16, u32, s32, s32, u16, u16, u16);
struct Unk_0802F8D8 *sub_0802FA40(struct Unk_0802E57C *, u16, u16, u32, s32, s32, u16, u16, u16);
void sub_0802FBE0(struct Unk_0802E57C *);
void sub_0802FBF4(struct Unk_0802E57C *);
void sub_0802FC08(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802FD3C(struct Unk_0802E57C *);
void sub_0802FE30(struct Unk_0802E57C *);
void sub_0802FE4C(struct Unk_0802E57C *);
void sub_08030018(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_08030024(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_08030068(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_080300A0(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_080300CC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0803010C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0803017C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_080301B0(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_080301DC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);

#endif
