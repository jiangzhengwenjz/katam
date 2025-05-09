#ifndef GUARD_KIRBY_H
#define GUARD_KIRBY_H

#include "data.h"
#include "object.h"

struct Kirby_0_1 {
    struct ObjectBase base;
    u32 filler78;
    struct Sprite unk7C[2];
}; /* size = 0xCC */

union Kirby_0 {
    struct Object2 base;
    struct Kirby_0_1 other;
}; /* size = 0xCC */

struct Kirby_110 {
    s8 unk0;
    s8 unk1;
    s8 unk2;
    u8 unk3;
    u16 unk4;
    u16 flags;
}; /* size = 0x8 */

struct Kirby {
    union Kirby_0 base;
    struct Task *unkCC;
    s16 unkD0;
    s16 unkD2;
    u16 unkD4;
    s16 unkD6;
    u8 unkD8;
    u8 unkD9;
    u8 unkDA;
    u8 unkDB;
    u8 battery;
    u8 unkDD;
    u8 unkDE;
    u8 unkDF;
    u8 unkE0;
    u8 unkE1;
    u16 unkE2;
    u8 unkE4;
    u8 unkE5;
    s16 unkE6;
    struct Object2 *unkE8;
    u32 unkEC;
    u8 unkF0;
    u8 unkF1;
    u8 unkF2;
    u8 unkF3;
    s16 unkF4;
    u16 unkF6;
    u16 unkF8;
    u16 unkFA;
    s16 unkFC;
    s16 unkFE;
    s8 hp;
    s8 maxHp;
    u8 lives;
    u8 ability;
    u16 unk104;
    u16 unk106;
    s16 unk108;
    s16 unk10A;
    union LevelInfo_1E0 unk10C;
    const struct Kirby_110 *unk110;
    const struct Unk_08353510 *unk114;
    u16 unk118;
    u16 unk11A;
    u16 unk11C;
    u16 unk11E;
    u16 unk120;
    u16 unk122;
    u8 filler124[0x81];
    u8 unk1A5;
}; /* size = 0x1A8 */

extern struct Kirby gKirbys[];

struct Kirby *sub_0803D368(struct ObjectBase *);
struct Kirby *sub_0803D46C(struct ObjectBase *);
struct Kirby *sub_0803D5CC(struct ObjectBase *);
u16 sub_0803D6B4(struct Object2 *);
bool16 sub_0803D80C(struct ObjectBase *);
void sub_0803D9A8(struct ObjectBase *);
void sub_0803DBC8(struct Object4 *);
void sub_0803DCCC(struct Task *);
u32 sub_0803DD58(u8);
u32 sub_0803DE54(u32, u16, u8);
u8 sub_0803DF24(u16);
u8 sub_0803DFAC(u16, u8);
void sub_0803E2B0(struct ObjectBase *, s8, s8, s8, s8);
void sub_0803E308(struct ObjectBase *, s8, s8, s8, s8);
bool8 sub_0803E324(struct ObjectBase *);
void sub_0803E380(struct ObjectBase *);
void sub_0803E3B0(struct Object4 *);
void sub_0803E458(void);
void sub_0803E4D4(u8);
void sub_0803E558(u8);
void sub_0803E868(u8);
void sub_0803FE74(struct Kirby *);
void sub_0804323C(struct Kirby *);
void sub_08044EA8(struct Kirby *);
void sub_080459B8(struct Kirby *);
void sub_08047EF0(struct Kirby *);
u8 sub_0804BAD8(struct Kirby *);
void sub_0804BD00(struct Kirby *);
bool8 sub_0804BD98(struct Kirby *, u8, u8, u8, s8, s8);
bool8 sub_080525C0(struct Kirby *);
bool8 sub_080528E4(struct Kirby *);
void sub_08052BB4(struct Kirby *);
void sub_08052E2C(struct Kirby *);
void sub_080531B4(struct Kirby *, const struct Unk_08353510 *);
void sub_080547C4(struct Kirby *, u8);
void sub_08054C0C(struct Kirby *);
bool8 sub_080551FC(struct Kirby *, u16, u8, u8);
void sub_0805545C(struct Kirby *);
void sub_08059810(struct Kirby *);
bool8 sub_0805BD4C(struct Kirby *, u8);
bool32 sub_0805BEC4(struct Kirby *);
bool32 sub_0805BDF4(struct Kirby *, u16, u8, u8);
void sub_08063D98(struct Kirby *, s32 __attribute__((unused)));
void sub_080641FC(struct Kirby *);
void sub_080666C0(struct Kirby *);
void sub_08067458(struct Kirby *);
void sub_0806A03C(struct Kirby *);
void sub_0806A308(struct Kirby *);
void sub_0806A798(struct Kirby *);
void sub_0806EB74(struct Kirby *);
void sub_0806F260(struct Kirby *);
void sub_0806F734(void);

extern const struct Unk_02021590 gUnk_0834FBCC[];
extern const struct Unk_02021590 gUnk_0834FD70[];
extern const struct Unk_02021590 gUnk_0834FF14[];
extern const struct Unk_02021590 gUnk_083500D8[];
extern const struct Unk_02021590 gUnk_083502C0[];
extern const struct Unk_02021590 gUnk_08350474[];
extern const struct Unk_02021590 gUnk_08350620[];
extern const struct Unk_02021590 gUnk_083507F8[];
extern const struct Unk_02021590 gUnk_08350AAC[];
extern const struct Unk_02021590 gUnk_08350B30[];

#endif
