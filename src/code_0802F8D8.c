#include "global.h"
#include "code_0802E57C.h"
#include "code_0802F8D8.h"
#include "random.h"
#include "sprite.h"
#include "task.h"

struct Unk_0802F8D8 {
    /* 0x00 */ struct Sprite sprite;
    /* 0x28 */ struct Unk_0802E57C *parent;
    /* 0x2C */ s32 x;
    /* 0x30 */ s32 y;
    /* 0x34 */ s16 xspeed;
    /* 0x36 */ s16 yspeed;
    /* 0x38 */ u16 timer;
}; /* size = 0x3C */

// gUnk_082EB800 is read as a flat array with an i * 2 stride rather than as
// u16 [][2]: the two-dimensional spelling does not reproduce sub_0802FD3C.
extern const Unk_0802E57C_CFunc gUnk_082EB7D0[];
extern u16 gUnk_082EB7F8[];
extern u16 gUnk_082EB800[];

void sub_0802E97C(struct Unk_0802E57C *);
void sub_0802ECBC(struct Unk_0802E57C *);
void sub_0802EF90(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802F40C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802F51C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802F5B8(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802F638(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802F6A0(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802F714(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802F77C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);

struct Unk_0802F8D8 *sub_0802F8D8(struct Unk_0802E57C *, u16, u16, u32, s32, s32, u16, u16, u16);
static void sub_0802F9AC(void);
struct Unk_0802F8D8 *sub_0802FA40(struct Unk_0802E57C *, u16, u16, u32, s32, s32, u16, u16, u16);
static void sub_0802FB0C(void);
void sub_0802FBE0(struct Unk_0802E57C *);
void sub_0802FBF4(struct Unk_0802E57C *);
void sub_0802FC08(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802FC14(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802FC64(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802FCB4(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802FCDC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802FD00(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0802FD3C(struct Unk_0802E57C *);
static void sub_0802FDA4(struct Unk_0802E57C *);
static void sub_0802FDF4(struct Unk_0802E57C *);
void sub_0802FE30(struct Unk_0802E57C *);
void sub_0802FE4C(struct Unk_0802E57C *);
static void sub_0802FE5C(void);
static void sub_0802FE70(void);
static void sub_0802FE84(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FEAC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FEC8(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FF14(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FF38(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FF5C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FF9C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FFA8(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FFDC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_08030018(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_08030024(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0803005C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_08030068(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_080300A0(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_080300CC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0803010C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_08030138(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_0803017C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_080301B0(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
void sub_080301DC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0803020C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);

struct Unk_0802F8D8 *sub_0802F8D8(struct Unk_0802E57C *arg0, u16 animId, u16 variant, u32 tiles, s32 x, s32 y, u16 xspeed,
                                  u16 yspeed, u16 duration) {
    struct Task *t = TaskCreate(sub_0802F9AC, sizeof(struct Unk_0802F8D8), 0x101, 0, NULL);
    struct Unk_0802F8D8 *s = TaskGetStructPtr(t);

    s->parent = arg0;
#ifndef NONMATCHING
    asm("":::"r8"); // change regalloc
#endif
    s->x = x;
    s->y = y;
    s->xspeed = xspeed;
    s->yspeed = yspeed;
    s->timer = duration;
    // unk1B is -1 here where the other call passes 0xFF, because the original
    // materialises it as a signed word (movs #1; negs). Tried and rejected:
    // 0xFF, -1, (s32)-1 and an s32 local -- none of them reproduce it.
    SpriteInit(&s->sprite, tiles, 0x340, animId, variant, 0, ({ s32 m = -1; m; }), 0x10, 0xB, x >> 8, y >> 8,
               0x80000);
    s->sprite.unk8 |= 0x40000;
    return s;
}

static void sub_0802F9AC(void) {
    // The copy is what the original does: without the alias agbcc accumulates
    // straight into r4 and the original's extra `adds r4, r0, #0` disappears.
    struct Unk_0802F8D8 *tmp = TaskGetStructPtr(gCurTask), *s = tmp;

    s->x += s->xspeed;
    s->y += s->yspeed;
    if (s->timer != 0) {
        s->timer--;
        if (s->timer == 0) {
            gCurTask->main = sub_0802FE5C;
        }
    }
    if (s->parent->unk188 & 0x20000000) {
        gCurTask->main = sub_0802FE5C;
    }
    s->sprite.x = s->x >> 8;
    s->sprite.y = s->y >> 8;
    sub_08155128(&s->sprite);
    s->sprite.unk1B = 0xFF;
    DisplaySprite(&s->sprite);
}

struct Unk_0802F8D8 *sub_0802FA40(struct Unk_0802E57C *arg0, u16 animId, u16 variant, u32 tiles, s32 x, s32 y, u16 xspeed,
                                  u16 yspeed, u16 duration) {
    struct Task *t = TaskCreate(sub_0802FB0C, sizeof(struct Unk_0802F8D8), 0x101, 0, NULL);
    struct Unk_0802F8D8 *s = TaskGetStructPtr(t);

    s->parent = arg0;
    s->x = x;
    s->y = y;
    s->xspeed = xspeed;
    s->yspeed = yspeed;
    s->timer = duration;
    SpriteInit(&s->sprite, tiles, 0, animId, variant, 0, 0xFF, 0x10, 0xB, x >> 8, y >> 8, 0x80000);
    s->sprite.unk8 |= 0x40000;
    return s;
}

static void sub_0802FB0C(void) {
    // As in sub_0802F9AC, but this one really does keep the pointer in two
    // registers: s2 is read through r5 where s is read through r4.
    struct Unk_0802F8D8 *tmp = TaskGetStructPtr(gCurTask), *s = tmp, *s2 = s;

    s->sprite.x = s->x >> 8;
    s->sprite.y = s->y >> 8;
    if (sub_08155128(&s->sprite) == 0) {
        if (s->timer != 0 && --s->timer == 0) {
            gCurTask->main = sub_0802FE70;
        } else {
            s->sprite.unk1B = 0xFF;
        }
    }
    DisplaySprite(&s2->sprite);
    s->x += s->xspeed;
    s->y += s->yspeed;
    if ((u16)(s2->sprite.x + 0x40) > 0x170 || s2->sprite.y < -0x40 || s2->sprite.y > 0xE0) {
        gCurTask->main = sub_0802FE70;
    }
    if (s->parent->unk188 & 0x20000000) {
        gCurTask->main = sub_0802FE70;
    }
}

void sub_0802FBE0(struct Unk_0802E57C *arg0) {
    arg0->unk188 |= 0x40000000;
}

void sub_0802FBF4(struct Unk_0802E57C *arg0) {
    arg0->unk188 |= 0x200;
}

void sub_0802FC08(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk2C |= 2;
}

void sub_0802FC14(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u8 variant = 0;
    u32 flags;

#ifndef NONMATCHING
    asm("":"+r"(variant)); // materialise the two constants in this order
#endif
    arg1->unk0.animId = 0;
    arg1->unk0.variant = variant;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags |= 0x10;
    arg1->unk2C = flags;
    arg1->unk34 = 0x8000;
    arg1->unk48 = Rand16() & 0x1F;
    arg1->unk28 = sub_0802FE84;
}

void sub_0802FC64(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags;

    arg1->unk0.animId = 0x49;
    arg1->unk0.variant = 1;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags &= ~0x10;
    arg1->unk2C = flags;
    if (arg1->unk30 <= 0x4FFF) {
        flags &= ~1;
        arg1->unk2C = flags;
    } else if (arg1->unk30 > 0xA000) {
        flags |= 1;
        arg1->unk2C = flags;
    }
    arg1->unk34 = 0x8000;
    arg1->unk28 = sub_0802FEAC;
}

void sub_0802FCB4(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags;

    arg1->unk0.animId = 0x185;
    arg1->unk0.variant = 0;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags &= ~0x10;
    arg1->unk2C = flags;
    arg1->unk28 = sub_0802FFA8;
}

void sub_0802FCDC(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u8 variant = 6;
    u32 flags;

#ifndef NONMATCHING
    asm("":"+r"(variant)); // materialise the two constants in this order
#endif
    arg1->unk0.animId = 6;
    arg1->unk0.variant = variant;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags &= ~0x10;
    arg1->unk2C = flags;
    arg1->unk28 = sub_0802F51C;
}

void sub_0802FD00(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk48 = Rand16() & 0x1F;
    arg1->unk28 = sub_0802F77C;
    sub_0802F77C(arg0, arg1);
}

void sub_0802FD3C(struct Unk_0802E57C *arg0) {
    u16 i = 0;

    for (; i < 4; i++) {
        struct Unk_0802E57C_C *arg1 = &arg0->unkC[i];

        arg1->unk3C = gUnk_082EB800;
        arg1->unk42 = gUnk_082EB800[arg1->unk40 * 2];
        arg1->unk44 = arg1->unk3C[arg1->unk40 * 2 + 1];
        arg1->unk28 = gUnk_082EB7D0[arg1->unk42];
    }
    arg0->unk4 = sub_0802FDA4;
}

static void sub_0802FDA4(struct Unk_0802E57C *arg0) {
    u16 flag = 1;
    u16 i;

    for (i = 0; i < 4; i++) {
        sub_0802EF90(arg0, &arg0->unkC[i]);
        if (!(arg0->unkC[i].unk2C & 2)) {
            flag = 0;
        }
    }
    if (flag != 0) {
        arg0->unk4 = sub_0802FDF4;
        sub_0802FDF4(arg0);
    }
}

static void sub_0802FDF4(struct Unk_0802E57C *arg0) {
    u16 i = 0;

    for (; i < 4; i++) {
        struct Unk_0802E57C_C *arg1 = &arg0->unkC[i];

        arg1->unk3C = gUnk_082EB7F8;
        arg1->unk40 = 0;
    }
    arg0->unk4 = sub_0802E97C;
    sub_0802E97C(arg0);
}

void sub_0802FE30(struct Unk_0802E57C *arg0) {
    arg0->unk190 = 0;
    arg0->unk4 = sub_0802ECBC;
    sub_0802ECBC(arg0);
}

void sub_0802FE4C(struct Unk_0802E57C *arg0) {
    arg0->unk188 |= 1;
}

static void sub_0802FE5C(void) {
    TaskDestroy(gCurTask);
}

static void sub_0802FE70(void) {
    TaskDestroy(gCurTask);
}

static void sub_0802FE84(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u16 *p = &arg1->unk44;
    u16 timer = arg1->unk48;

    if (*p < timer) {
        arg1->unk2C |= 2;
    } else {
        arg1->unk48 = timer + 1;
    }
}

static void sub_0802FEAC(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk2C & 8) {
        arg1->unk28 = sub_0802FEC8;
    }
}

static void sub_0802FEC8(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags;

    arg1->unk0.animId = 0x49;
    arg1->unk0.variant = 0;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags |= 0x10;
    arg1->unk2C = flags;
    arg1->unk48 = Rand16() & 0x1F;
    arg1->unk28 = sub_0802FF14;
}

static void sub_0802FF14(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u16 *p = &arg1->unk44;
    u16 timer = arg1->unk48;

    if (*p < timer) {
        arg1->unk28 = sub_0802FF38;
    } else {
        arg1->unk48 = timer + 1;
    }
}

static void sub_0802FF38(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags;

    arg1->unk0.animId = 0x49;
    arg1->unk0.variant = 2;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags &= ~0x10;
    arg1->unk2C = flags;
    arg1->unk28 = sub_0802FF5C;
}

static void sub_0802FF5C(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u16 *p = &arg1->unk44;
    u16 timer = arg1->unk48;

    if (*p < timer) {
        u8 variant = 0;
        u32 flags;

#ifndef NONMATCHING
        asm("":"+r"(variant)); // materialise the two constants in this order
#endif
        arg1->unk0.animId = 0;
        arg1->unk0.variant = variant;
        arg1->unk0.unk1B = 0xFF;
        flags = arg1->unk2C;
        flags &= ~8;
        flags |= 0x10;
        arg1->unk2C = flags;
        arg1->unk28 = sub_0802FF9C;
    } else {
        arg1->unk48 = timer + 1;
    }
}

static void sub_0802FF9C(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk2C |= 2;
}

static void sub_0802FFA8(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags = arg1->unk2C;

    if (flags & 8) {
        arg1->unk0.animId = 0x185;
        arg1->unk0.variant = 1;
        arg1->unk0.unk1B = 0xFF;
        flags &= ~8;
        flags &= ~0x10;
        arg1->unk2C = flags;
        arg1->unk28 = sub_0802FFDC;
    }
}

static void sub_0802FFDC(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags = arg1->unk2C;

    if (flags & 8) {
        arg1->unk0.animId = 0x185;
        arg1->unk0.variant = 2;
        arg1->unk0.unk1B = 0xFF;
        flags &= ~8;
        flags |= 0x10;
        arg1->unk2C = flags;
        arg1->unk3A = 0xFE00;
        arg1->unk28 = sub_0802F40C;
    }
}

void sub_08030018(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk2C |= 2;
}

void sub_08030024(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags = arg1->unk2C;

    if (flags & 8) {
        arg1->unk0.animId = 7;
        arg1->unk0.variant = 0;
        arg1->unk0.unk1B = 0xFF;
        flags &= ~8;
        flags |= 0x10;
        flags |= 0x20;
        arg1->unk2C = flags;
        arg1->unk28 = sub_0803005C;
    }
}

static void sub_0803005C(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk2C |= 2;
}

void sub_08030068(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags;
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 2;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags |= 0x10;
    arg1->unk2C = flags;
    arg1->unk48 = 0;
    arg1->unk28 = sub_0802F5B8;
    sub_0802F5B8(arg0, arg1);
}

void sub_080300A0(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags;
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 3;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags &= ~0x10;
    arg1->unk2C = flags;
    arg1->unk28 = sub_0802F638;
    sub_0802F638(arg0, arg1);
}

void sub_080300CC(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk2C & 0x40) {
        u16 old = arg1->unk3A;
        s32 sum = old + 0x26;
#ifndef NONMATCHING
        register s32 r0 asm("r0"); // the clamp result lives in r0 in the original
#else
        s32 r0;
#endif

        arg1->unk3A = sum;
        if ((s16)sum < -0x150) {
            r0 = -0x150;
        } else {
            r0 = sum;
            if ((s16)sum > 0x280) {
                r0 = 0x280;
            }
        }
        arg1->unk3A = r0;
    } else {
        arg1->unk28 = sub_0803017C;
    }
}

void sub_0803010C(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags;
    arg1->unk0.animId = 0;
    arg1->unk0.variant = 1;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags &= ~0x10;
    arg1->unk2C = flags;
    arg1->unk28 = sub_08030138;
    sub_08030138(arg0, arg1);
}

static void sub_08030138(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk38 > 0) {
        arg1->unk38 -= 0xE;
        if (arg1->unk38 < 0) {
            arg1->unk38 = 0;
        }
    } else if (arg1->unk38 < 0) {
        arg1->unk38 += 0xE;
        if (arg1->unk38 > 0) {
            arg1->unk38 = 0;
        }
    }
    if (arg1->unk2C & 8) {
        arg1->unk28 = sub_080301DC;
    }
}

void sub_0803017C(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags;
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 5;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags &= ~0x10;
    arg1->unk2C = flags;
    arg1->unk3A = 0xFE00;
    arg1->unk28 = sub_0802F6A0;
    sub_0802F6A0(arg0, arg1);
}

void sub_080301B0(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u32 flags;
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 2;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags &= ~0x10;
    arg1->unk2C = flags;
    arg1->unk28 = sub_0802F714;
    sub_0802F714(arg0, arg1);
}

void sub_080301DC(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    u8 variant = 0;
    u32 flags;
#ifndef NONMATCHING
    asm("":"+r"(variant)); // materialise the two constants in this order
#endif
    arg1->unk0.animId = 0;
    arg1->unk0.variant = variant;
    arg1->unk0.unk1B = 0xFF;
    flags = arg1->unk2C;
    flags &= ~8;
    flags |= 0x10;
    flags &= ~0x20;
    arg1->unk2C = flags;
    arg1->unk28 = sub_0803020C;
    sub_0803020C(arg0, arg1);
}

static void sub_0803020C(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk38 > 0) {
        arg1->unk38 -= 0xE;
        if (arg1->unk38 < 0) {
            arg1->unk38 = 0;
        }
    } else if (arg1->unk38 < 0) {
        arg1->unk38 += 0xE;
        if (arg1->unk38 > 0) {
            arg1->unk38 = 0;
        }
    }
    if (arg1->unk38 == 0) {
        arg1->unk2C |= 2;
    }
}
