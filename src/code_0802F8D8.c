#include "global.h"
#include "code_0802F8D8.h"
#include "random.h"
#include "sprite.h"
#include "task.h"

static void sub_0802F9AC(void);
static void sub_0802FB0C(void);
static void sub_0802FC14(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FC64(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FCB4(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FCDC(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FD00(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0802FDA4(struct Unk_0802E57C *);
static void sub_0802FDF4(struct Unk_0802E57C *);
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
static void sub_0803005C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_08030138(struct Unk_0802E57C *, struct Unk_0802E57C_C *);
static void sub_0803020C(struct Unk_0802E57C *, struct Unk_0802E57C_C *);

const Unk_0802E57C_CFunc gUnk_082EB7D0[] = {
    sub_0802FC08, sub_0802F088, sub_0802FC14, sub_0802FC64, sub_0802F1C4,
    sub_0802F2D0, sub_0802FCB4, sub_0802F4BC, sub_0802FCDC, sub_0802FD00,
};

const u16 gUnk_082EB7F8[] = { 0xFFFF, 0xFFFF, 0xFFFF, 0xFFFF };

static const u16 gUnk_082EB800[] = { 1, 0, 0xFFFF, 0xFFFF };

struct Unk_0802F8D8 *sub_0802F8D8(struct Unk_0802E57C *arg0, u16 animId, u16 variant, u32 tiles, s32 x, s32 y, u16 xspeed,
                                  u16 yspeed, u16 arg8) {
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

struct Unk_0802F8D8 *sub_0802FA40(struct Unk_0802E57C *arg0, u16 animId, u16 variant, u32 tiles, s32 x, s32 y, u16 xspeed,
                                  u16 yspeed, u16 arg8) {
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

void sub_0802FC08(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
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

void sub_0802FD3C(struct Unk_0802E57C *arg0) {
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

void sub_08030018(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk2C |= 2;
}

void sub_08030024(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
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

void sub_08030068(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 2;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C |= 0x10;
    arg1->unk48 = 0;
    arg1->unk28 = sub_0802F5B8;
    sub_0802F5B8(arg0, arg1);
}

void sub_080300A0(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 3;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    arg1->unk28 = sub_0802F638;
    sub_0802F638(arg0, arg1);
}

void sub_080300CC(UNUSED struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    if (arg1->unk2C & 0x40) {
        arg1->unk3A += 0x26;
        arg1->unk3A = arg1->unk3A < -0x150 ? -0x150 : (arg1->unk3A > 0x280 ? 0x280 : arg1->unk3A);
    } else {
        arg1->unk28 = sub_0803017C;
    }
}

void sub_0803010C(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
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

void sub_0803017C(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 5;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    arg1->unk3A = -0x200;
    arg1->unk28 = sub_0802F6A0;
    sub_0802F6A0(arg0, arg1);
}

void sub_080301B0(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
    arg1->unk0.animId = 4;
    arg1->unk0.variant = 2;
    arg1->unk0.unk1B = 0xFF;
    arg1->unk2C &= ~8;
    arg1->unk2C &= ~0x10;
    arg1->unk28 = sub_0802F714;
    sub_0802F714(arg0, arg1);
}

void sub_080301DC(struct Unk_0802E57C *arg0, struct Unk_0802E57C_C *arg1) {
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
