#include "object.h"
#include "parasol.h"
#include "kirby.h"
#include "functions.h"
#include "constants/kirby.h"

static void sub_080C2B28(struct Object2 *);
static void sub_080C2FC8(struct Object2 *);
static void sub_080C2FF4(struct Object2 *);
static void sub_080C3020(struct Object2 *);
static void sub_080C302C(struct Object2 *);
static void sub_080C3058(struct Object2 *);
static void sub_080C309C(struct Object2 *);

const struct Unk_02021590 gUnk_08355464[] = {
    { 0x331, 0x0, 0x0 },
    { 0x331, 0x1, 0x0 },
    { 0x331, 0x2, 0x0 },
    { 0x331, 0x1, 0x0 },
    { 0x331, 0x2, 0x0 },
};

static const s16 gUnk_08355478[] = {
    0x100, 0x80, 0x20, -0x20, -0x80, -0x100, -0x100, -0x80, -0x20, 0x20, 0x80, 0x100
};

static const s8 gUnk_08355490[] = {
    -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11,
    -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10,
     -0xE,  -0xE,  -0xE,  -0xE,  -0xE,  -0xE,  -0xE,
    -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10,
    -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11,
    -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10,
     -0xE,  -0xE,  -0xE,  -0xE,  -0xE,  -0xE,  -0xE,
    -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10,
};

static const s8 gUnk_083554CF[] = {
    -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11,
    -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10,
     -0xF,  -0xF,  -0xF,  -0xF,  -0xF,  -0xF,  -0xF,  -0xF,
    -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10,
    -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11, -0x11,
    -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10,
     -0xF,  -0xF,  -0xF,  -0xF,  -0xF,  -0xF,  -0xF,  -0xF,
    -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10, -0x10,
};

void sub_080C29C0(struct Object2 *r5, u8 r8) {
    s16 x = r5->base.x >> 8;
    s16 y = r5->base.y >> 8;
    
    CreateObjTemplateAndObjWithSettingParent(r5, 1, 36, x, y, 
        0, 31, 0, 0, OBJ_PARASOL, r8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

void *CreateParasol(struct Object *r6, u8 r5) {
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1001, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *r4 = TaskGetStructPtr(t);

    InitObject(r4, r6, r5);
    r4->base.flags |= 0x340;
    r4->base.unkC |= 2;
    r4->base.unkC |= 1;
    r4->base.unkC |= 4;
    sub_0803E2B0(&r4->base, -5, -3, 5, 8);
    sub_0803E308(&r4->base, -6, -4, 6, 10);
    if (r4->base.x > r4->kirby3->base.base.base.x)
        r4->base.flags |= 1;
    ObjectInitSprite(r4);
    sub_080C3058(r4);
    return r4;
}

static void sub_080C2B28(struct Object2 *r5) {
    s32 r4, r1;
    u16 sqrt;
    s32 div;
    s32 a, b;

    if (r5->object->subtype1 == 2) {
        sub_080C3058(r5);
    } else {
        ObjectSetFunc(r5, 0, sub_080C2FC8);
        r5->base.flags &= ~0x200;
        r4 = (r5->kirby3->base.base.base.x - r5->base.x) >> 8;
        r1 = (r5->base.y - r5->kirby3->base.base.base.y) >> 8;
        sqrt = Sqrt((r4 * r4 + r1 * r1) * 0x100);
        div = ((r4 * 0x100) / sqrt);
        a = div * 0x100;
        b = div * 0x200;
        r5->base.xspeed = -(((b+a) * 2) >> 8);
        r5->base.flags &= ~0x2000000;
    }
}

static void sub_080C2BB4(struct Object2 *r4) {
    s32 a, b;

    r4->base.flags |= 4;
    if (++r4->base.counter >= 255) return;
    if (++r4->unk9E > 14) {
        r4->kirby3 = sub_0803D368(&r4->base);
        r4->unk9E = 0;
        r4->unkA0 = r4->kirby3->base.base.base.x >> 8;
        r4->unkA2 = r4->kirby3->base.base.base.y >> 8;
    }
    a = r4->base.y & 0xFFFFF000;
    b = ((r4->unkA2) * 0x100) & 0xFFFFF000;
    if (a > b) {
        r4->base.yspeed += 77;
        if (r4->base.yspeed > 385)
            r4->base.yspeed = 385;
    } else if (a < b) {
        r4->base.yspeed -= 77;
        if (r4->base.yspeed < -385)
            r4->base.yspeed = -385;
    } else {
        if (r4->base.yspeed < 0) {
            r4->base.yspeed += 4;
            if (r4->base.yspeed > 0)
                r4->base.yspeed = 0;
        } else {
            r4->base.yspeed -= 4;
            if (r4->base.yspeed < 0)
                r4->base.yspeed = 0;
        }
    }
    a = r4->base.x & 0xFFFFF000;
    b = ((r4->unkA0) * 0x100) & 0xFFFFF000;
    if (a < b) {
        r4->base.flags &= ~1;
        r4->base.xspeed += 77;
        if (r4->base.xspeed > 385)
            r4->base.xspeed = 385;
        else if (r4->base.xspeed < -385)
            r4->base.xspeed = -385;
    } else if (a > b) {
        r4->base.flags |= 1;
        if (r4->base.flags & 1) { // ???
            r4->base.xspeed -= 77;
            if (r4->base.xspeed < -385)
                r4->base.xspeed = -385;
            else if (r4->base.xspeed > 385)
                r4->base.xspeed = 385;
        } else {
            r4->base.xspeed += 77;
            if (r4->base.xspeed > 385)
                r4->base.xspeed = 385;
            else if (r4->base.xspeed < -385)
                r4->base.xspeed = -385;
        }
    } else {
        if (r4->base.xspeed < 0) {
            r4->base.xspeed += 4;
            if (r4->base.xspeed > 0)
                r4->base.xspeed = 0;
        } else {
            r4->base.xspeed -= 4;
            if (r4->base.xspeed < 0)
                r4->base.xspeed = 0;
        }
    }
}

static void sub_080C2D44(struct Object2 *r3) {
    struct Object2 *r5;
    struct ObjectBase *ip; // required for matching; but it's not always used for ObjectBase access? 

    r3->base.flags &= ~0x2000;
    r3->base.flags |= 4;
    r5 = r3->base.parent;
    ip = &r5->base;
    if (ip->sprite.unk8 & 0x800)
        r3->base.sprite.unk8 |= 0x800;
    else
        r3->base.sprite.unk8 &= ~0x800;
    r3->base.objBase54 = ip->objBase54;
    r3->base.objBase55 = ip->objBase55;
    if (r5->type == OBJ_SHOTZO_1) {
        r5->base.flags |= 0x40;
        r5->base.flags &= ~0x20;
    }
    if (!(ip->unk62 & 4)) {
        if (r3->unk85) {
            if (r5->unk83 < gUnk_08351648[r5->type].unk0) {
                ip->yspeed = -0x80;
                ip->xspeed = gUnk_08355478[r3->base.counter >> 3];
                if (ip->flags & 1)
                    ip->xspeed = -ip->xspeed;
            }
            if (++r3->base.counter >= 0x60)
                r3->base.counter = 0;
            if (ip->unk62 & 1)
                r3->base.counter = 24;
        }
        r3->unk85 = 1;
    } else {
        if (r3->unk85) {
            r3->unk7C = 0;
            sub_080C2B28(r3);
            if (r5->type == OBJ_SHOTZO_1)
                r5->base.flags &= ~0x40;
            return;
        }
    }
    if (ip->sprite.animId == 0x330) {
        if (!ip->sprite.variant) {
            if (ip->flags & 1)
                r3->base.x = ip->x + 0x100;
            else
                r3->base.x = ip->x - 0x100;
            r3->base.y = ip->y + (gUnk_08355490[ip->unk1] * 0x100);
        } else {
            r3->base.x = ip->x;
            if (r3->base.sprite.unk8 & 0x800)
                r3->base.y = ip->y + 0x1200;
            else
                r3->base.y = ip->y - 0x1200;
        }
    } else if (ip->sprite.animId == 0x308) {
        if (!ip->sprite.variant) {
            if (ip->flags & 1)
                r3->base.x = ip->x + 0x100;
            else
                r3->base.x = ip->x - 0x100;
            r3->base.y = ip->y + (gUnk_083554CF[ip->unk1] * 0x100);
        } else {
            if (ip->flags & 1)
                r3->base.x = ip->x + 0x100;
            else
                r3->base.x = ip->x - 0x100;
            if (r3->base.sprite.unk8 & 0x800)
                r3->base.y = ip->y + 0x1100;
            else
                r3->base.y = ip->y - 0x1100;
        }
    } else {
        r3->base.x = ip->x;
        if (r3->base.sprite.unk8 & 0x800)
            r3->base.y = ip->y + 0x1200;
        else
            r3->base.y = ip->y - 0x1200;
    }
    if (!(ip->flags & 0x1000000)) return;
    if (r5->type == OBJ_WADDLE_DOO)
        r5->kirbyAbility = KIRBY_ABILITY_BEAM;
    else if (r5->type != OBJ_WADDLE_DEE_1 || r5->object->subtype1 != 4)
        r5->kirbyAbility = KIRBY_ABILITY_NORMAL;
    r3->unk7C = 0;
    sub_080C2B28(r3);
    if (r5->type == OBJ_SHOTZO_1)
        r5->base.flags &= ~0x40;
}

static void sub_080C2FC8(struct Object2 *r2) {
    if (r2->base.flags & 2) {
        if (r2->object->subtype1)
            sub_080C302C(r2);
        else
            sub_080C2FF4(r2);
    }
}

static void sub_080C2FF4(struct Object2 *r4) {
    ObjectSetFunc(r4, 1, sub_080C3020);
    r4->base.yspeed = 0x100;
    r4->base.flags &= ~0x2000000;
}

static void sub_080C3020(struct Object2 *r0) {
    r0->base.flags |= 4;
}

static void sub_080C302C(struct Object2 *r4) {
    ObjectSetFunc(r4, 1, sub_080C2BB4);
    r4->base.yspeed = 0x100;
    r4->base.flags &= ~0x2000000;
}

static void sub_080C3058(struct Object2 *r4) {
    ObjectSetFunc(r4, 1, sub_080C2D44);
    r4->base.flags |= 0x200;
    r4->base.flags |= 0x2000000;
    r4->base.flags |= 0x2000;
    r4->unk85 = 0;
    r4->base.xspeed = 0;
    r4->base.yspeed = 0;
    r4->unk7C = sub_080C309C;
}

static void sub_080C309C(struct Object2 *r2) {
    if (((struct Object2 *)r2->base.parent)->base.flags & 0x1000) {
        r2->unk80 = 0;
        r2->base.flags |= 0x1000;
    }
}
