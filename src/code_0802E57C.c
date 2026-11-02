#include "global.h"
#include "code_0802E57C.h"
#include "data.h"
#include "main.h"
#include "malloc_vram.h"
#include "random.h"
#include "sprite.h"
#include "task.h"
#include "gba/m4a.h"

struct Unk_0802F8D8 {
    /* 0x00 */ struct Sprite sprite;
    /* 0x28 */ struct Unk_0802E57C *parent;
    /* 0x2C */ s32 x;
    /* 0x30 */ s32 y;
    /* 0x34 */ s16 xspeed;
    /* 0x36 */ s16 yspeed;
    /* 0x38 */ u16 unk38;
}; /* size = 0x3C */

extern const u16 *const gUnk_08D60B24[];

static void sub_0802E71C(struct Task *);
static void sub_0802E78C(void);
static void sub_0802E97C(struct Unk_0802E57C *);
static void sub_0802EA4C(struct Unk_0802E57C *);
static void sub_0802EBB0(struct Unk_0802E57C *);
static void sub_0802ECBC(struct Unk_0802E57C *);
static void sub_0802ED44(struct Unk_0802E57C *);
static void sub_0802EDC8(struct Unk_0802E57C *);
static void sub_0802EE54(struct Unk_0802E57C *);
static void sub_0802EF90(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F088(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F110(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F1C4(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F240(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F2D0(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F354(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F40C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F464(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F4BC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F51C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F5B8(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F638(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F6A0(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F714(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F77C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802F810(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static struct Unk_0802F8D8 *sub_0802F8D8(struct Unk_0802E57C *, u16, u16, u32, s32, s32, s16, s16, u16);
static void sub_0802F9AC(void);
static struct Unk_0802F8D8 *sub_0802FA40(struct Unk_0802E57C *, u16, u16, u32, s32, s32, s16, s16, u16);
static void sub_0802FB0C(void);
static void sub_0802FC08(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FC14(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FC64(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FCB4(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FCDC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FD00(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FD3C(struct Unk_0802E57C *);
static void sub_0802FDA4(struct Unk_0802E57C *);
static void sub_0802FDF4(struct Unk_0802E57C *);
static void sub_0802FE30(struct Unk_0802E57C *);
static void sub_0802FE4C(struct Unk_0802E57C *);
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
static void sub_08030018(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_08030024(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0803005C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_08030068(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_080300A0(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_080300CC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0803010C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_08030138(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0803017C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_080301B0(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_080301DC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0803020C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);

static const s16 gUnk_082EB6DC[][2] = {
    { -0x40, 0x80 }, { 0x130, 0x80 }, { -0x60, 0x80 }, { 0x150, 0x80 },
};

static const u32 gUnk_082EB6EC[] = { 0, 1, 0, 1 };

static const s16 gUnk_082EB6FC[] = { 0x78, 0x50 };

static const struct Unk_0802E57C_174 gUnk_082EB700[] = {
    { -0x380, 0x280, 0, 0 },
    { 0x20, -0x13, 0x20, 0 },
    { 0xA, 0, 0x1E, 0 },
    { 8, -0x20, 0x1E, 0 },
    { 6, -0x30, 0x3C, 0 },
    { 4, -0x40, 0x1E, 0 },
    { 0, -0x50, 0xF, 0 },
    { 0, 0, 0, 1 },
};

static const struct Unk_0802E57C_174 gUnk_082EB740[] = {
    { 0, 0, 0, 0 },
    { 0x16, -0xC, 0x20, 0 },
    { -0x10, 0x18, 0x14, 0 },
    { -0x10, 0xC, 0x20, 0 },
    { -0x10, -0x14, 0x14, 0 },
    { -0x1C, -0x18, 0xA, 0 },
    { -8, -0x28, 0xF, 0 },
    { 0x10, 0x28, 5, 0 },
    { 0x1C, 0x28, 0xA, 0 },
    { 0x10, 0x28, 0xA, 0 },
    { 0x1C, 0x20, 0xA, 0 },
    { 0x20, -0x10, 0xA, 0 },
    { 0x1C, -0x20, 0xA, 0 },
    { 0x10, -0x28, 0xA, 0 },
    { 0x10, -0x18, 0xA, 0 },
    { 0, 0, 0xA, 0 },
    { 0x15, -0x15, 0x3C, 0 },
    { 0, 0, 0, 1 },
};

static const Unk_0802E57C_CFunc gUnk_082EB7D0[] = {
    sub_0802FC08, sub_0802F088, sub_0802FC14, sub_0802FC64, sub_0802F1C4,
    sub_0802F2D0, sub_0802FCB4, sub_0802F4BC, sub_0802FCDC, sub_0802FD00,
};

static const u16 gUnk_082EB7F8[] = { 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF };

static const u16 gUnk_082EB800[] = { 1, 0, 0xFFFF, 0xFFFF };

const u16 gUnk_082EB808[] = {
    2, 0x3C, 4, 0x78, 2, 0x3C, 4, 0x78, 2, 0x3C, 4, 0x78, 2, 0x78, 0xFFFF, 0xFFFF,
};

const u16 gUnk_082EB828[] = {
    2, 0x3C, 5, 0x3C, 2, 0x78, 3, 0xF0, 2, 0x78, 5, 0x3C, 2, 0x78, 0xFFFF, 0xFFFF,
};

const u16 gUnk_082EB848[] = {
    2, 0x3C, 7, 0, 9, 0xF0, 8, 0, 2, 0x78, 6, 0, 2, 0x78, 0xFFFF, 0xFFFF,
};

const u16 gUnk_082EB868[] = {
    2, 0x3C, 4, 0x78, 2, 0x3C, 5, 0x3C, 2, 0x3C, 7, 0, 9, 0xB4, 8, 0, 2, 0x78, 0xFFFF, 0xFFFF,
};

const u16 gUnk_082EB890[] = {
    2, 0x3C, 5, 0x78, 7, 0, 9, 0x78, 8, 0, 7, 0, 9, 0x3C, 8, 0, 2, 0x1E, 0xFFFF, 0xFFFF,
};

const u16 gUnk_082EB8B8[] = {
    2, 0x3C, 4, 0x78, 5, 0x78, 4, 0xB4, 5, 0x78, 2, 0x3C, 6, 0, 2, 0x1E, 0xFFFF, 0xFFFF,
};

const u16 gUnk_082EB8DC[] = {
    2, 0x3C, 5, 0x3C, 7, 0, 9, 0x3C, 8, 0, 5, 0x3C, 7, 0, 9, 0x3C,
    8, 0, 5, 0x3C, 2, 0x3C, 4, 0x78, 4, 0xB4, 2, 0x1E, 0xFFFF, 0xFFFF,
};

const u16 gUnk_082EB918[] = {
    2, 0x3C, 4, 0xB4, 5, 0x78, 5, 0x78, 4, 0xB4, 7, 0, 9, 0x78, 8, 0,
    2, 0x1E, 7, 0, 9, 0x3C, 8, 0, 5, 0x78, 2, 0x1E, 0xFFFF, 0xFFFF,
};

static const u16 gUnk_082EB954[][2] = {
    { 0x291, 1 },
    { 0x291, 2 },
    { 0x291, 3 },
    { 0x291, 4 },
    { 0x291, 5 },
    { 0x291, 6 },
    { 0x291, 7 },
    { 0x291, 8 },
    { 0x291, 9 },
    { 0x291, 0xA },
    { 0x291, 0xB },
    { 0x291, 0xC },
};

static const u8 gUnk_082EB984[] = {
    4, 4, 4, 5, 5, 5, 0, 0, 0, 0, 6, 6, 6, 6, 7, 7, 7, 7, 1, 1, 1, 8, 8, 8, 9, 9, 9, 2, 2, 0xA, 0xB, 3,
};

struct Unk_0802E57C *sub_0802E57C(void) {
    struct Task *t = TaskCreate(sub_0802E78C, sizeof(struct Unk_0802E57C), 0x100, 0, sub_0802E71C);
    struct Unk_0802E57C *tmp = TaskGetStructPtr(t), *x = tmp;
    struct Sprite *s;
    u16 i;

    CpuFill16(0, x, sizeof(struct Unk_0802E57C));
    x->unk0 = t;
    x->unk4 = sub_0802FD3C;
    gDispCnt |= DISPCNT_OBJ_ON | DISPCNT_OBJ_1D_MAP;
    s = &x->unk14C;
    SpriteInitNoFunc(s, VramMalloc(0x10), 0x280, 0x2DE, 0, 0, 0xFF, 0x10, 0xB, 0, 0, 0);
    for (i = 0; i < ARRAY_COUNT(x->unkC); i++) {
        struct Unk_0802E57C_C *c = &x->unkC[i];

        c->unk0.tilesVram = 0;
        c->unk0.unk14 = 0x100;
        c->unk0.animId = 0x15;
        c->unk0.variant = i;
        c->unk0.unk16 = 0;
        c->unk0.unk1B |= 0xFF;
        c->unk0.unk1C = 0x10;
        c->unk0.palId = i + 0xC;
        c->unk0.x = 0;
        c->unk0.y = 0;
        c->unk0.unk8 = 0x80000;
        sub_08155128(&c->unk0);
        c->unk0.tilesVram = VramMalloc(0x10);
        c->unk0.unk14 = 0x100;
        c->unk0.animId = 0;
        c->unk0.variant = 0;
        c->unk0.unk16 = 0;
        c->unk0.unk1B |= 0xFF;
        c->unk0.unk1C = 0x10;
        c->unk0.palId = i + 0xC;
        c->unk0.x = 0;
        c->unk0.y = 0;
        c->unk0.unk8 = 0x40000;
        c->unk2C |= 4;
        c->unk46 = i;
    }
    return x;
}

void sub_0802E6C4(struct Unk_0802E57C *x) {
    struct Sprite s;

    x->unk4 = sub_0802EA4C;
    if (!x->unk8) {
        SpriteInitNoPointer(&s, x->unk8 = VramMalloc(0x100), 0, 0x292, 0, 0, 0xFF, 0x10, 0xB, 0, 0, 0);
    }
}

static void sub_0802E71C(struct Task *t) {
    struct Unk_0802E57C *tmp = TaskGetStructPtr(t), *x = tmp;
    struct Unk_0802E57C_C *c;
    struct Sprite *s;
    u16 i;

#ifndef NONMATCHING
    // TODO(match): Keeps x in a separate copy of tmp (adds r4, r6, #0) so the loop base stays in r6.
    asm("" : "+r"(x));
#endif
    if (x->unk8) {
        VramFree(x->unk8);
        x->unk8 = 0;
    }
    s = &x->unk14C;
    if (s->tilesVram) {
        VramFree(s->tilesVram);
        s->tilesVram = 0;
    }
    for (i = 0, c = tmp->unkC; i < ARRAY_COUNT(tmp->unkC); i++) {
        struct Sprite *cs = &c[i].unk0;

        if (cs->tilesVram) {
            VramFree(cs->tilesVram);
            cs->tilesVram = 0;
        }
    }
}

#ifndef NONMATCHING
NAKED static void sub_0802E78C(void) {
    asm(".include \"asm/nonmatching/sub_0802E78C.inc\"");
}
#else
// The target zeroes diff in r0 and copies it to r1 (movs r0, #0; adds r1, r0, #0); this C zeroes r1 directly.
static void sub_0802E78C(void) {
    struct Unk_0802E57C *tmp = TaskGetStructPtr(gCurTask), *x = tmp;

    if (!(x->unk188 & 0x40000000)) {
        if (x->unk188 & 0x100 && !(x->unk18C & 0xF)) {
            u16 idx = Rand16() & 0x1F;
            u16 duration = (Rand16() & 0xF) + 0x32;
            s16 speed[2] = { -x->unk180, -x->unk182 };
            s32 pos[2];
            u16 diff;

            pos[0] = x->unk178 + (((Rand16() & 0xF) - 8) << 8);
            pos[1] = x->unk17C + (((Rand16() & 0xF) - 8) << 8);
            diff = speed[0] > speed[1] ? speed[0] - speed[1] : speed[1] - speed[0];
            if ((s16)diff < 0) {
                diff = 0;
            }
            if (diff <= 0xFF) {
                speed[0] = 0;
                speed[1] = 0x80;
            } else {
                speed[0] = speed[0] < -0x400 ? -0x400 : (speed[0] > 0x400 ? 0x400 : speed[0]);
                speed[1] = speed[1] < -0x400 ? -0x400 : (speed[1] > 0x400 ? 0x400 : speed[1]);
            }
            sub_0802F8D8(x, gUnk_082EB954[gUnk_082EB984[idx]][0], gUnk_082EB954[gUnk_082EB984[idx]][1], x->unk8,
                         pos[0], pos[1], speed[0], speed[1], duration);
        }
        x->unk4(x);
        x->unk18C++;
    } else if (x->unk188 & 0x80000000) {
        TaskDestroy(gCurTask);
    } else {
        x->unk188 |= 0xA0000000;
    }
}
#endif

static void sub_0802E97C(struct Unk_0802E57C *x) {
    u16 i;

    for (i = 0; i < ARRAY_COUNT(x->unkC); i++) {
        struct Unk_0802E57C_C *c = &x->unkC[i];

        if (c->unk2C & 2) {
            c->unk40++;
            if ((c->unk3C[c->unk40 * 2] & c->unk3C[c->unk40 * 2 + 1]) == 0xFFFF) {
                c->unk3C = gUnk_08D60B24[Rand16() & 7];
                c->unk40 = 0;
            }
            c->unk2C &= ~2;
            c->unk42 = c->unk3C[c->unk40 * 2];
            c->unk44 = c->unk3C[c->unk40 * 2 + 1];
            c->unk28 = gUnk_082EB7D0[c->unk42];
        }
        sub_0802EF90(x, c);
    }
}

static void sub_0802EA4C(struct Unk_0802E57C *x) {
    struct Sprite *s;
    u16 i;

    x->unk178 = gUnk_082EB6FC[0] << 8;
    x->unk17C = gUnk_082EB6FC[1] << 8;
    s = &x->unk14C;
    s->animId = 0x2DE;
    s->variant = 0;
    s->unk1B = 0xFF;
    for (i = 0; i < ARRAY_COUNT(x->unkC); i++) {
        struct Unk_0802E57C_C *c = &x->unkC[i];

        c->unk0.animId = 4;
        c->unk0.variant = 0;
        c->unk0.unk1B = 0xFF;
        c->unk2C &= ~8;
        c->unk2C &= ~0x10;
        c->unk3C = gUnk_082EB7F8;
        c->unk40 = 0;
        c->unk42 = 0;
        c->unk44 = 0;
        switch (i) {
        case 0:
            c->unk2C &= ~1;
            c->unk30 = x->unk178 - 0x1400;
            c->unk34 = 0x8000;
            c->unk38 = 0x40;
            c->unk3A = -0x400;
            break;
        case 1:
            c->unk2C |= 1;
            c->unk30 = x->unk178 + 0x1400;
            c->unk34 = 0x8000;
            c->unk38 = -0x40;
            c->unk3A = -0x400;
            break;
        case 2:
            c->unk2C |= 1;
            c->unk30 = x->unk178 + 0x2800;
            c->unk34 = 0x8000;
            c->unk38 = -0xC0;
            c->unk3A = -0x400;
            break;
        case 3:
            c->unk2C &= ~1;
            c->unk30 = x->unk178 - 0x2800;
            c->unk34 = 0x8000;
            c->unk38 = 0xC0;
            c->unk3A = -0x400;
            break;
        }
        c->unk28 = sub_0802FC08;
    }
    x->unk188 |= 0x100;
    x->unk4 = sub_0802EBB0;
    sub_0802EBB0(x);
}

static void sub_0802EBB0(struct Unk_0802E57C *x) {
    struct Sprite *s = &x->unk14C;
    u16 i;

    if (!sub_08155128(s)) {
        s->unk1B = 0xFF;
    }
    s->x = x->unk178 >> 8;
    s->y = x->unk17C >> 8;
    DisplaySprite(s);
    for (i = 0; i < ARRAY_COUNT(x->unkC); i++) {
        x->unkC[i].unk3A += 0x26;
        sub_0802EF90(x, &x->unkC[i]);
    }
    if (x->unkC[0].unk3A >= -0x10) {
        for (i = 0; i < ARRAY_COUNT(x->unkC); i++) {
            struct Unk_0802E57C_C *c = &x->unkC[i];
            // TODO(match): zero, ff and flags reproduce the hoisted 0/0xFF registers and the unk1B orr operand order.
            s16 zero = 0;
            u8 ff = 0xFF;
            u8 flags;

            c->unk0.animId = 0x2D;
            c->unk0.variant = i;
            flags = c->unk0.unk1B;
            flags |= ff;
            c->unk0.unk1B = flags;
            c->unk2C &= ~8;
            c->unk2C |= 0x10;
            c->unk30 = x->unk178;
            c->unk34 = x->unk17C;
            c->unk38 = zero;
            c->unk3A = zero;
            c->unk2C &= ~1;
            c->unk2C |= 0x80;
        }
        sub_0802FA40(x, 0x292, 0, x->unk8, x->unk178, x->unk17C, 0, 0, 1);
        m4aSongNumStart(0x7E);
        x->unk4 = sub_0802FE30;
    }
}

static void sub_0802ECBC(struct Unk_0802E57C *x) {
    struct Sprite *s = &x->unk14C;
    u16 i;

    if (!sub_08155128(s)) {
        s->unk1B = 0xFF;
    }
    s->x = x->unk178 >> 8;
    s->y = x->unk17C >> 8;
    DisplaySprite(s);
    for (i = 0; i < ARRAY_COUNT(x->unkC); i++) {
        struct Unk_0802E57C_C *c = &x->unkC[i];

        c->unk30 = x->unk178;
        c->unk34 = x->unk17C;
        sub_0802EF90(x, c);
    }
    if (x->unk190++ > 0x1E) {
        x->unk4 = sub_0802ED44;
    }
}

static void sub_0802ED44(struct Unk_0802E57C *x) {
    struct Sprite *s = &x->unk14C;
    u16 i;

    if (!sub_08155128(s)) {
        s->unk1B = 0xFF;
    }
    s->x = x->unk178 >> 8;
    s->y = x->unk17C >> 8;
    DisplaySprite(s);
    for (i = 0; i < ARRAY_COUNT(x->unkC); i++) {
        struct Unk_0802E57C_C *c = &x->unkC[i];

        c->unk30 = x->unk178;
        c->unk34 = x->unk17C;
        sub_0802EF90(x, c);
    }
    if (x->unk188 & 0x200) {
        x->unk4 = sub_0802EDC8;
    }
}

static void sub_0802EDC8(struct Unk_0802E57C *x) {
    if (gUnk_03002558 == 1) {
        x->unk174 = gUnk_082EB740;
    } else {
        x->unk174 = gUnk_082EB700;
    }
    x->unk184 = 1;
    x->unk186 = 0;
    x->unk180 = x->unk174->unk0;
    x->unk182 = x->unk174->unk2;
    if (gUnk_03002558 == 1) {
        m4aSongNumStart(0x206);
    } else {
        m4aSongNumStart(0x208);
    }
    x->unk4 = sub_0802EE54;
    sub_0802EE54(x);
}

static void sub_0802EE54(struct Unk_0802E57C *x) {
    struct Sprite *s;
    u16 i;

    if (x->unk174[x->unk184].unk6 & 1 || x->unk178 < -0x4000 || x->unk178 > 0x13000 || x->unk17C < -0x4000
        || x->unk17C > 0xE000) {
        x->unk188 &= ~0x100;
        x->unk4 = sub_0802FE4C;
        return;
    }
    if (x->unk174[x->unk184].unk4 < x->unk186++) {
        x->unk186 = 0;
        x->unk184++;
    }
    x->unk180 += x->unk174[x->unk184].unk0;
    x->unk182 += x->unk174[x->unk184].unk2;
    x->unk178 += x->unk180;
    x->unk17C += x->unk182;
    s = &x->unk14C;
    if (!sub_08155128(s)) {
        s->unk1B = 0xFF;
    }
    s->x = x->unk178 >> 8;
    s->y = x->unk17C >> 8;
    DisplaySprite(s);
    for (i = 0; i < ARRAY_COUNT(x->unkC); i++) {
        struct Unk_0802E57C_C *c = &x->unkC[i];

        c->unk30 = x->unk178;
        c->unk34 = x->unk17C;
        sub_0802EF90(x, c);
    }
}

static void sub_0802EF90(struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    struct Sprite *s;

    c->unk30 += c->unk38;
    c->unk34 += c->unk3A;
    if (!(c->unk2C & 0x80)) {
        if (c->unk30 < -0x8000) {
            c->unk30 = -0x8000;
        } else if (c->unk30 > 0x17000) {
            c->unk30 = 0x17000;
        }
        if (c->unk34 > 0x7FFF) {
            c->unk2C &= ~0x40;
            c->unk34 = 0x8000;
            c->unk3A = 0;
        } else {
            c->unk2C |= 0x40;
            if (c->unk34 < -0x8000) {
                c->unk34 = -0x8000;
            }
        }
    }
    c->unk28(x, c);
    s = &c->unk0;
    if (c->unk2C & 1) {
        s->unk8 |= 0x400;
    } else {
        s->unk8 &= ~0x400;
    }
    if (!sub_08155128(s)) {
        c->unk2C |= 8;
    } else {
        c->unk2C &= ~8;
    }
    if (c->unk2C & 8) {
        if (c->unk2C & 0x10) {
            s->unk1B = 0xFF;
            x->unk188 &= ~8;
        }
    }
    s->x = c->unk30 >> 8;
    s->y = c->unk34 >> 8;
    DisplaySprite(s);
}

static void sub_0802F088(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    c->unk0.animId = 2;
    c->unk0.variant = 0;
    c->unk0.unk1B = 0xFF;
    c->unk2C &= ~8;
    c->unk2C |= 0x10;
    c->unk30 = gUnk_082EB6DC[c->unk46][0] << 8;
    c->unk34 = gUnk_082EB6DC[c->unk46][1] << 8;
    if (gUnk_082EB6EC[c->unk46]) {
        c->unk2C |= 1;
    } else {
        c->unk2C &= ~1;
    }
    c->unk48 = 0;
    c->unk4A = 0;
    c->unk28 = sub_0802F110;
}

static void sub_0802F110(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk48 > 0x50) {
        if (!c->unk4A) {
            c->unk0.animId = 0x33;
            c->unk0.variant = 0;
            c->unk0.unk1B = 0xFF;
            c->unk2C &= ~8;
            c->unk2C |= 0x10;
            c->unk4A = 1;
        }
        if (c->unk38 > 0) {
            c->unk38 -= 0x20;
            if (c->unk38 < 0) {
                c->unk38 = 0;
            }
        } else if (c->unk38 < 0) {
            c->unk38 += 0x20;
            if (c->unk38 > 0) {
                c->unk38 = 0;
            }
        }
        if (c->unk38 == 0) {
            c->unk2C |= 2;
        }
    } else {
        if (c->unk2C & 1) {
            c->unk38 -= 0x20;
        } else {
            c->unk38 += 0x20;
        }
        c->unk38 = c->unk38 < -0x1DC ? -0x1DC : (c->unk38 > 0x1DC ? 0x1DC : c->unk38);
        c->unk48++;
    }
}

static void sub_0802F1C4(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    c->unk0.animId = 1;
    c->unk0.variant = 0;
    c->unk0.unk1B = 0xFF;
    c->unk2C &= ~8;
    c->unk2C |= 0x10;
    if (c->unk30 <= 0x4FFF) {
        c->unk2C &= ~1;
    } else if (c->unk30 > 0xA000) {
        c->unk2C |= 1;
    }
    c->unk34 = 0x8000;
    c->unk48 = Rand16() & 0x1F;
    c->unk28 = sub_0802F240;
}

static void sub_0802F240(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk44 < c->unk48) {
        if (c->unk38 > 0) {
            c->unk38 -= 0xE;
            if (c->unk38 < 0) {
                c->unk38 = 0;
            }
        } else if (c->unk38 < 0) {
            c->unk38 += 0xE;
            if (c->unk38 > 0) {
                c->unk38 = 0;
            }
        }
        if (c->unk38 == 0) {
            c->unk2C |= 2;
        }
    } else {
        if (c->unk2C & 1) {
            c->unk38 -= 0x20;
        } else {
            c->unk38 += 0x20;
        }
        c->unk38 = c->unk38 < -0x14C ? -0x14C : (c->unk38 > 0x14C ? 0x14C : c->unk38);
        c->unk48++;
    }
}

static void sub_0802F2D0(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    c->unk0.animId = 2;
    c->unk0.variant = 0;
    c->unk0.unk1B = 0xFF;
    c->unk2C &= ~8;
    c->unk2C |= 0x10;
    if (c->unk30 <= 0x4FFF) {
        c->unk2C &= ~1;
    } else if (c->unk30 > 0xA000) {
        c->unk2C |= 1;
    }
    c->unk34 = 0x8000;
    c->unk48 = Rand16() & 0x1F;
    c->unk4A = 0;
    c->unk28 = sub_0802F354;
}

static void sub_0802F354(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk44 < c->unk48) {
        if (!c->unk4A) {
            c->unk0.animId = 0x33;
            c->unk0.variant = 0;
            c->unk0.unk1B = 0xFF;
            c->unk2C &= ~8;
            c->unk2C |= 0x10;
            c->unk4A = 1;
        }
        if (c->unk38 > 0) {
            c->unk38 -= 0x20;
            if (c->unk38 < 0) {
                c->unk38 = 0;
            }
        } else if (c->unk38 < 0) {
            c->unk38 += 0x20;
            if (c->unk38 > 0) {
                c->unk38 = 0;
            }
        }
        if (c->unk38 == 0) {
            c->unk2C |= 2;
        }
    } else {
        if (c->unk2C & 1) {
            c->unk38 -= 0x20;
        } else {
            c->unk38 += 0x20;
        }
        c->unk38 = c->unk38 < -0x1DC ? -0x1DC : (c->unk38 > 0x1DC ? 0x1DC : c->unk38);
        c->unk48++;
    }
}

static void sub_0802F40C(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    c->unk3A += 0x26;
    c->unk3A = c->unk3A < -0x280 ? -0x280 : (c->unk3A > 0x280 ? 0x280 : c->unk3A);
    if (c->unk3A >= 0) {
        c->unk0.animId = 0x185;
        c->unk0.variant = 3;
        c->unk0.unk1B = 0xFF;
        c->unk2C &= ~8;
        c->unk2C &= ~0x10;
        c->unk28 = sub_0802F464;
    }
}

static void sub_0802F464(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk2C & 0x40) {
        c->unk3A += 0x26;
        c->unk3A = c->unk3A < -0x280 ? -0x280 : (c->unk3A > 0x280 ? 0x280 : c->unk3A);
    } else {
        c->unk0.animId = 0;
        c->unk0.variant = 0;
        c->unk0.unk1B = 0xFF;
        c->unk2C &= ~8;
        c->unk2C |= 0x10;
        c->unk28 = sub_08030018;
    }
}

static void sub_0802F4BC(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    c->unk0.animId = 6;
    c->unk0.variant = 5;
    c->unk0.unk1B = 0xFF;
    c->unk2C &= ~8;
    c->unk2C &= ~0x10;
    if (c->unk30 <= 0x4FFF) {
        c->unk2C &= ~1;
    } else if (c->unk30 > 0xA000) {
        c->unk2C |= 1;
    }
    c->unk34 = 0x8000;
    c->unk48 = 0;
    c->unk4A = 0;
    c->unk28 = sub_08030024;
}

static void sub_0802F51C(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk38 > 0) {
        c->unk38 -= 0xE;
        if (c->unk38 < 0) {
            c->unk38 = 0;
        }
    } else if (c->unk38 < 0) {
        c->unk38 += 0xE;
        if (c->unk38 > 0) {
            c->unk38 = 0;
        }
    }
    if (c->unk2C & 0x40) {
        c->unk3A += 0x26;
        c->unk3A = c->unk3A < -0x150 ? -0x150 : (c->unk3A > 0x280 ? 0x280 : c->unk3A);
    }
    if (c->unk2C & 8) {
        c->unk0.animId = 7;
        c->unk0.variant = 0;
        c->unk0.unk1B = 0xFF;
        c->unk2C &= ~8;
        c->unk2C |= 0x10;
        if (c->unk2C & 0x40) {
            c->unk28 = sub_08030068;
        } else {
            c->unk28 = sub_080301DC;
        }
    }
}

static void sub_0802F5B8(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk38 > 0) {
        c->unk38 -= 0xE;
        if (c->unk38 < 0) {
            c->unk38 = 0;
        }
    } else if (c->unk38 < 0) {
        c->unk38 += 0xE;
        if (c->unk38 > 0) {
            c->unk38 = 0;
        }
    }
    if (c->unk2C & 0x40) {
        c->unk3A += 0x26;
        c->unk3A = c->unk3A < -0x150 ? -0x150 : (c->unk3A > 0x280 ? 0x280 : c->unk3A);
        if (c->unk48++ > 0x1E) {
            c->unk28 = sub_080300A0;
        }
    } else {
        c->unk28 = sub_0803010C;
    }
}

static void sub_0802F638(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk2C & 0x40) {
        c->unk3A += 0x26;
        c->unk3A = c->unk3A < -0x150 ? -0x150 : (c->unk3A > 0x280 ? 0x280 : c->unk3A);
        if (c->unk2C & 8) {
            c->unk0.animId = 4;
            c->unk0.variant = 4;
            c->unk0.unk1B = 0xFF;
            c->unk2C &= ~8;
            c->unk2C &= ~0x10;
            c->unk28 = sub_080300CC;
        }
    } else {
        c->unk28 = sub_0803017C;
    }
}

static void sub_0802F6A0(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk38 > 0) {
        c->unk38 -= 0xE;
        if (c->unk38 < 0) {
            c->unk38 = 0;
        }
    } else if (c->unk38 < 0) {
        c->unk38 += 0xE;
        if (c->unk38 > 0) {
            c->unk38 = 0;
        }
    }
    if (c->unk2C & 0x40) {
        c->unk3A += 0x26;
        c->unk3A = c->unk3A < -0x280 ? -0x280 : (c->unk3A > 0x280 ? 0x280 : c->unk3A);
    }
    if (c->unk2C & 8) {
        c->unk28 = sub_080301B0;
    }
}

static void sub_0802F714(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk38 > 0) {
        c->unk38 -= 0xE;
        if (c->unk38 < 0) {
            c->unk38 = 0;
        }
    } else if (c->unk38 < 0) {
        c->unk38 += 0xE;
        if (c->unk38 > 0) {
            c->unk38 = 0;
        }
    }
    if (c->unk2C & 0x40) {
        c->unk3A += 0x26;
        c->unk3A = c->unk3A < -0x280 ? -0x280 : (c->unk3A > 0x280 ? 0x280 : c->unk3A);
    } else {
        c->unk28 = sub_0803010C;
    }
}

static void sub_0802F77C(struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    u16 v = c->unk34 >> 12;

    c->unk4A = Rand16() & 7;
    if (v >= c->unk4A) {
        c->unk0.animId = 7;
        c->unk0.variant = 0;
        c->unk0.unk1B = 0xFF;
        c->unk2C &= ~8;
        c->unk2C |= 0x10;
    } else {
        c->unk0.animId = 7;
        c->unk0.variant = 1;
        c->unk0.unk1B = 0xFF;
        c->unk2C &= ~8;
        c->unk2C |= 0x10;
    }
    if (c->unk30 <= 0x4FFF) {
        c->unk2C &= ~1;
    } else if (c->unk30 > 0xA000) {
        c->unk2C |= 1;
    }
    c->unk28 = sub_0802F810;
    sub_0802F810(x, c);
}

static void sub_0802F810(UNUSED struct Unk_0802E57C *x, struct Unk_0802E57C_C *c) {
    if (c->unk44 < c->unk48) {
        c->unk2C |= 2;
    } else {
        u16 v = c->unk34 >> 12;

        c->unk3A += 0x16;
        c->unk3A = c->unk3A < -0x150 ? -0x150 : (c->unk3A > 0x120 ? 0x120 : c->unk3A);
        if (v >= c->unk4A) {
            c->unk3A -= 0x78;
            c->unk3A = c->unk3A < -0x150 ? -0x150 : (c->unk3A > 0x120 ? 0x120 : c->unk3A);
        }
        if (c->unk2C & 1) {
            c->unk38 -= 0x16;
        } else {
            c->unk38 += 0x16;
        }
        c->unk38 = c->unk38 < -0x110 ? -0x110 : (c->unk38 > 0x110 ? 0x110 : c->unk38);
        if (v == c->unk4A) {
            c->unk28 = sub_0802F77C;
        }
        c->unk48++;
    }
}

static struct Unk_0802F8D8 *sub_0802F8D8(struct Unk_0802E57C *arg0, u16 animId, u16 variant, u32 tiles, s32 x, s32 y,
                                         s16 xspeed, s16 yspeed, u16 arg8) {
    struct Task *t = TaskCreate(sub_0802F9AC, sizeof(struct Unk_0802F8D8), 0x101, TASK_USE_IWRAM, NULL);
    struct Unk_0802F8D8 *s = TaskGetStructPtr(t);

    s->parent = arg0;
    s->x = x;
    s->y = y;
    s->xspeed = xspeed;
    s->yspeed = yspeed;
    s->unk38 = arg8;

    s->sprite.tilesVram = tiles;
    SpriteInitNoTilesVram(&s->sprite, 0x340, animId, variant, 0, 0xFF, 0x10, 0xB, x >> 8, y >> 8, 0x80000);
    s->sprite.unk8 |= 0x40000;
    return s;
}

static void sub_0802F9AC(void) {
    struct Unk_0802F8D8 *tmp = TaskGetStructPtr(gCurTask), *s = tmp;

    s->x += s->xspeed;
    s->y += s->yspeed;
    if (s->unk38) {
        s->unk38--;
        if (s->unk38 == 0) {
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

static struct Unk_0802F8D8 *sub_0802FA40(struct Unk_0802E57C *arg0, u16 animId, u16 variant, u32 tiles, s32 x, s32 y,
                                         s16 xspeed, s16 yspeed, u16 arg8) {
    struct Task *t = TaskCreate(sub_0802FB0C, sizeof(struct Unk_0802F8D8), 0x101, TASK_USE_IWRAM, NULL);
    struct Unk_0802F8D8 *s = TaskGetStructPtr(t);

    s->parent = arg0;
    s->x = x;
    s->y = y;
    s->xspeed = xspeed;
    s->yspeed = yspeed;
    s->unk38 = arg8;

    SpriteInit(&s->sprite, tiles, 0, animId, variant, 0, 0xFF, 0x10, 0xB, x >> 8, y >> 8, 0x80000);
    s->sprite.unk8 |= 0x40000;
    return s;
}

static void sub_0802FB0C(void) {
    struct Unk_0802F8D8 *tmp = TaskGetStructPtr(gCurTask), *s = tmp;
    struct Sprite *sprite = &s->sprite;

    sprite->x = s->x >> 8;
    sprite->y = s->y >> 8;
    if (!sub_08155128(sprite)) {
        if (s->unk38) {
            if (--s->unk38 == 0) {
                gCurTask->main = sub_0802FE70;
            } else {
                sprite->unk1B = 0xFF;
            }
        } else {
            sprite->unk1B = 0xFF;
        }
    }
    DisplaySprite(sprite);
    s->x += s->xspeed;
    s->y += s->yspeed;
    if (sprite->x < -0x40 || sprite->x > 0x130 || sprite->y < -0x40 || sprite->y > 0xE0) {
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

static void sub_0802FC08(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk2C |= 2;
}

static void sub_0802FC14(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 0;
    arg1->unk0.variant = 0;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C |= 0x10;
    arg1->unk34 = 0x8000;
    arg1->unk48 = Rand16() & 0x1F;
    arg1->unk28 = sub_0802FE84;
}

static void sub_0802FC64(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 0x49;
    arg1->unk0.variant = 1;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    if (arg1->unk30 <= 0x4FFF) {
        arg1->unk2C &= ~1;
    } else if (arg1->unk30 > 0xA000) {
        arg1->unk2C |= 1;
    }
    arg1->unk34 = 0x8000;
    arg1->unk28 = sub_0802FEAC;
}

static void sub_0802FCB4(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 0x185;
    arg1->unk0.variant = 0;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    arg1->unk28 = sub_0802FFA8;
}

static void sub_0802FCDC(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 6;
    arg1->unk0.variant = 6;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    arg1->unk28 = sub_0802F51C;
}

static void sub_0802FD00(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk48 = Rand16() & 0x1F;
    arg1->unk28 = sub_0802F77C;
    sub_0802F77C(arg0, arg1);
}

static void sub_0802FD3C(struct Unk_0802E57C *arg0) {
    u16 i;

    for (i = 0; i < ARRAY_COUNT(arg0->unkC); i++) {
        struct Unk_0802E57C_C *entry = &arg0->unkC[i];

        entry->unk3C = gUnk_082EB800;
        entry->unk42 = entry->unk3C[entry->unk40 * 2];
        entry->unk44 = entry->unk3C[entry->unk40 * 2 + 1];
        entry->unk28 = gUnk_082EB7D0[entry->unk42];
    }
    arg0->unk4 = sub_0802FDA4;
}

static void sub_0802FDA4(struct Unk_0802E57C *arg0) {
    bool16 flag = TRUE;
    u16 i;

    for (i = 0; i < ARRAY_COUNT(arg0->unkC); i++) {
        sub_0802EF90(arg0, &arg0->unkC[i]);
        if (!(arg0->unkC[i].unk2C & 2)) {
            flag = FALSE;
        }
    }
    if (flag) {
        arg0->unk4 = sub_0802FDF4;
        sub_0802FDF4(arg0);
    }
}

static void sub_0802FDF4(struct Unk_0802E57C *arg0) {
    u16 i;

    for (i = 0; i < ARRAY_COUNT(arg0->unkC); i++) {
        struct Unk_0802E57C_C *entry = &arg0->unkC[i];

        entry->unk3C = gUnk_082EB7F8;
        entry->unk40 = 0;
    }
    arg0->unk4 = sub_0802E97C;
    sub_0802E97C(arg0);
}

static void sub_0802FE30(struct Unk_0802E57C *arg0) {
    arg0->unk190 = 0;
    arg0->unk4 = sub_0802ECBC;
    sub_0802ECBC(arg0);
}

static void sub_0802FE4C(struct Unk_0802E57C *arg0) {
    arg0->unk188 |= 1;
}

static void sub_0802FE5C(void) {
    TaskDestroy(gCurTask);
}

static void sub_0802FE70(void) {
    TaskDestroy(gCurTask);
}

static void sub_0802FE84(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk44 < arg1->unk48) {
        arg1->unk2C |= 2;
    } else {
        arg1->unk48++;
    }
}

static void sub_0802FEAC(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk2C & 8) {
        arg1->unk28 = sub_0802FEC8;
    }
}

static void sub_0802FEC8(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 0x49;
    arg1->unk0.variant = 0;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C |= 0x10;
    arg1->unk48 = Rand16() & 0x1F;
    arg1->unk28 = sub_0802FF14;
}

static void sub_0802FF14(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk44 < arg1->unk48) {
        arg1->unk28 = sub_0802FF38;
    } else {
        arg1->unk48++;
    }
}

static void sub_0802FF38(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 0x49;
    arg1->unk0.variant = 2;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    arg1->unk28 = sub_0802FF5C;
}

static void sub_0802FF5C(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk44 < arg1->unk48) {
        arg1->unk0.animId = 0;
        arg1->unk0.variant = 0;
        arg1->unk0.unk1B = 0xFF;
        arg1->unk2C &= ~8;
        arg1->unk2C |= 0x10;
        arg1->unk28 = sub_0802FF9C;
    } else {
        arg1->unk48++;
    }
}

static void sub_0802FF9C(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk2C |= 2;
}

static void sub_0802FFA8(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk2C & 8) {
        arg1->unk0.animId = 0x185;
        arg1->unk0.variant = 1;
        arg1->unk0.unk1B = 0xFF;
        arg1->unk2C &= ~8;
        arg1->unk2C &= ~0x10;
        arg1->unk28 = sub_0802FFDC;
    }
}

static void sub_0802FFDC(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk2C & 8) {
        arg1->unk0.animId = 0x185;
        arg1->unk0.variant = 2;
        arg1->unk0.unk1B = 0xFF;
        arg1->unk2C &= ~8;
        arg1->unk2C |= 0x10;
        arg1->unk3A = -0x200;
        arg1->unk28 = sub_0802F40C;
    }
}

static void sub_08030018(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk2C |= 2;
}

static void sub_08030024(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk2C & 8) {
        arg1->unk0.animId = 7;
        arg1->unk0.variant = 0;
        arg1->unk0.unk1B = 0xFF;
        arg1->unk2C &= ~8;
        arg1->unk2C |= 0x10;
        arg1->unk2C |= 0x20;
        arg1->unk28 = sub_0803005C;
    }
}

static void sub_0803005C(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk2C |= 2;
}

static void sub_08030068(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 2;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C |= 0x10;
    arg1->unk48 = 0;
    arg1->unk28 = sub_0802F5B8;
    sub_0802F5B8(arg0, arg1);
}

static void sub_080300A0(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 3;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    arg1->unk28 = sub_0802F638;
    sub_0802F638(arg0, arg1);
}

static void sub_080300CC(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk2C & 0x40) {
        arg1->unk3A += 0x26;
        arg1->unk3A = arg1->unk3A < -0x150 ? -0x150 : (arg1->unk3A > 0x280 ? 0x280 : arg1->unk3A);
    } else {
        arg1->unk28 = sub_0803017C;
    }
}

static void sub_0803010C(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 0;
    arg1->unk0.variant = 1;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
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

static void sub_0803017C(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 5;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    arg1->unk3A = -0x200;
    arg1->unk28 = sub_0802F6A0;
    sub_0802F6A0(arg0, arg1);
}

static void sub_080301B0(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 2;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    arg1->unk28 = sub_0802F714;
    sub_0802F714(arg0, arg1);
}

static void sub_080301DC(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 0;
    arg1->unk0.variant = 0;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C |= 0x10;
    arg1->unk2C &= ~0x20;
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
