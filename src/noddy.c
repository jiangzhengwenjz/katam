#include "object.h"
#include "noddy.h"
#include "kirby.h"
#include "functions.h"

static void sub_080C233C(struct Object2 *);
static void sub_080C2438(struct Object2 *);
static void sub_080C25CC(void);
static void sub_080C2900(struct Object2 *);
static void sub_080C2914(struct Object2 *);
static void sub_080C293C(struct Object2 *);
static void sub_080C2950(struct Object2 *);
static void sub_080C2978(struct Object2 *);
static void sub_080C2994(struct Object2 *);
static void sub_080C29A4(struct Object2 *);

void *CreateNoddy(struct Object *r6, u8 r4) {
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r0, *r5 = TaskGetStructPtr(t, r0);

    InitObject(r5, r6, r4);
    if (r5->base.x > r5->kirby3->base.base.base.x)
        r5->base.flags |= 1;
    else
        r5->base.flags &= ~1;
    sub_0803E2B0(&r5->base, -5, -6, 5, 5);
    sub_0803E308(&r5->base, -6, -7, 6, 7);
    ObjectInitSprite(r5);
    switch (r6->subtype1) {
    case 0:
        gUnk_08351648[r5->type].unk10(r5);
        break;
    case 1:
        sub_080C2978(r5);
        break;
    }
    r5->unk9E = 0;
    r5->unk7C = 0;
    return r5;
}

static void sub_080C22E4(struct Object2 *r4) {
    if (r4->object->subtype1 == 1) {
        sub_080C2978(r4);
    } else {
        ObjectSetFunc(r4, 0, sub_080C233C);
        r4->base.xspeed = 0x80;
        r4->base.xspeed <<= r4->subtype;
        if (r4->subtype) r4->unk83 = 1;
        if (r4->base.flags & 1)
            r4->base.xspeed = -r4->base.xspeed;
    }
}

static void sub_080C233C(struct Object2 *r4) {
    r4->base.flags |= 4;
    if (r4->base.unk62 & 1) {
        r4->base.flags ^= 1;
        r4->base.xspeed = -r4->base.xspeed;
    }
    if (r4->base.unk62 & 4 && sub_0809D998(r4)) {
        r4->base.flags ^= 1;
        r4->base.xspeed = -r4->base.xspeed;
    }
    if (r4->base.counter > 120 << r4->subtype)
        sub_080C2900(r4);
    ++r4->base.counter;
}

static void sub_080C23B0(struct Object2 *r4) {
    r4->base.flags |= 4;
    if (r4->base.flags & 2)
        r4->kirby3 = sub_0803D368(&r4->base);
    if (r4->base.counter > 226)
        sub_080C293C(r4);
    if (r4->subtype && r4->base.counter > 120
        && abs(r4->kirby3->base.base.base.x - r4->base.x) < 0x6000)
        sub_080C293C(r4);
    if (r4->base.unk1 == 0x30)
        sub_080C2438(r4);
    ++r4->base.counter;
}

static void sub_080C2438(struct Object2 *r6) {
    struct Task *t = TaskCreate(sub_080C25CC, sizeof(struct Object4), 0x3500, 0x10, sub_0803DCCC);
    struct Object4 *r0, *r4 = TaskGetStructPtr(t, r0);

    sub_0803E3B0(r4);
    r4->unk0 = 3;
    r4->unk34 = r6->base.x;
    r4->unk38 = r6->base.y;
    r4->unk44 = r6;
    r4->unk60__42 = r6->base.unk60__42;
    r4->unk3C = 0x20;
    r4->unk3E = 0x40;
    if (r6->base.flags & 1) {
        r4->unk34 += 0xC00;
        r4->unk3C = -r4->unk3C;
    } else {
        r4->flags |= 1;
        r4->unk34 -= 0xC00;
    }
    if (Macro_0810B1F4(&r6->base))
        r4->flags |= 0x2000;
    sub_080709F8(r4, &r4->unkC, 1, 0x322, 6, 12);
    r4->unkC.unk1F = 0;
    if (r6->base.unkC & 0x10)
        Macro_081050E8(r4, &r4->unkC, gUnk_08351648[0x32].unk8, 1);
    else
        Macro_081050E8(r4, &r4->unkC, 0x322, 1);
}

static void sub_080C25CC(void) {
    struct Object4 *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r6 = r5->unk44, *r3;
    struct Sprite sprite;

    if (r5->flags & 0x1000) {
        TaskDestroy(gCurTask);
        return;
    }
    Macro_08107BA8_4(r5, &r5->unkC, &sprite, 1, &r5->unkC);
    if (r6->base.unkC & 0x10)
        Macro_081050E8(r5, &r5->unkC, gUnk_08351648[0x32].unk8, !r5->unkC.unk1F);
    else
        Macro_081050E8(r5, &r5->unkC, 0x322, !r5->unkC.unk1F);
    r3 = r5->unk44;
    if (r3) {
        if (r3->base.unk0 && r3->base.flags & 0x1000) {
            r5->unk44 = NULL;
            r3 = NULL;
        }
        if (!r3)
            goto _080C27E4;
        if (Macro_0810B1F4(&r3->base) && !(r5->flags & 0x2000)) {
            sub_0803DBC8(r5);
            return;
        }
    }
    else {
    _080C27E4:
        KirbySomething(r5);
    }
    Macro_0809E55C(r5);
    if (++r5->unk4 > 0x30) {
        r5->flags |= 0x1000;
    } else {
        if (!(r5->flags & 0x800)) {
            r5->unk34 += r5->unk3C;
            r5->unk38 -= r5->unk3E;
        }
        sub_0806FAC8(r5);
    }
}

static void sub_080C2900(struct Object2 *r0) {
    ObjectSetFunc(r0, 2, sub_080C2914);
}

static void sub_080C2914(struct Object2 *r4) {
    r4->base.xspeed = 0;
    if (r4->base.flags & 2)
        sub_080C29A4(r4);
    ++r4->base.counter;
}

static void sub_080C293C(struct Object2 *r0) {
    ObjectSetFunc(r0, 2, sub_080C2950);
}

static void sub_080C2950(struct Object2 *r4) {
    r4->base.xspeed = 0;
    if (r4->base.flags & 2)
        sub_080C22E4(r4);
    ++r4->base.counter;
}

static void sub_080C2978(struct Object2 *r4) {
    ObjectSetFunc(r4, 3, sub_080C2994);
    r4->base.yspeed = 0;
}

static void sub_080C2994(struct Object2 *r0) {
    r0->base.flags |= 4;
    r0->base.xspeed = 0;
}

static void sub_080C29A4(struct Object2 *r4) {
    ObjectSetFunc(r4, 3, sub_080C23B0);
    r4->base.xspeed = 0;
}
