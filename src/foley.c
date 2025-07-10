#include "foley.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"
#include "code_0806F780.h"

static void sub_080C09E0(struct Object2 *);
static void sub_080C0BD0(struct Object2 *);
static void sub_080C0D18(struct Object2 *);
static void sub_080C0D68(struct Object2 *);

const struct Unk_02021590 gUnk_08354E80[] = {
    { 0x302, 0x0, 0x0 },
    { 0x302, 0x1, 0x0 },
    { 0x302, 0x2, 0x0 },
    { 0x302, 0x4, 0x0 },
    { 0x302, 0x5, 0x0 },
};

const struct Unk_02021590 gUnk_08354E94[] = {
    { 0x302, 0x3, 0x0 },
};

static const struct Unk_08353510 gUnk_08354E98[] = {
    { 0x0,   0x80, 0x0, 0x0, 0x4, 0x0 },
    { 0x0,  0x100, 0x0, 0x0, 0x2, 0x0 },
    { 0x0,   0x80, 0x0, 0x0, 0x4, 0x0 },
    { 0x0,  -0x80, 0x0, 0x0, 0x4, 0x0 },
    { 0x0, -0x100, 0x0, 0x0, 0x2, 0x0 },
    { 0x0,  -0x80, 0x0, 0x0, 0x4, 0x0 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08354EEC[] = {
    {  0x80, -0x180, 0x0, 0x0, 0x10, 0x0 },
    {  0xA0, -0x100, 0x0, 0x0, 0x10, 0x0 },
    {  0xC0,  -0x80, 0x0, 0x0, 0x10, 0x0 },
    { 0x100,  -0x40, 0x0, 0x0, 0x10, 0x0 },
    { 0x100,   0x40, 0x0, 0x0, 0x10, 0x0 },
    {  0xC0,   0x80, 0x0, 0x0, 0x10, 0x0 },
    {  0xA0,  0x100, 0x0, 0x0, 0x10, 0x0 },
    {  0x80,  0x180, 0x0, 0x0, 0x10, 0x0 },
    { 0 },
};

void *CreateFoley(struct Object * r6, u8 r5) {
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *r4 = TaskGetStructPtr(t);

    InitObject(r4, r6, r5);
    sub_0803E2B0(&r4->base, -5, -3, 5, 8);
    sub_0803E308(&r4->base, -6, -4, 6, 10);
    r4->base.flags |= 0x140;
    if (r4->base.x > sub_0803D5CC(&r4->base)->base.base.base.x)
        r4->base.flags |= 1;
    ObjectInitSprite(r4);
    gUnk_08351648[r4->type].unk10(r4);
    return r4;
}

static void sub_080C066C(struct Object2 *r4) {
    r4->base.flags |= 4;
    if (r4->object->subtype1 > 1) {
        if (!r4->unk9E) {
            ++r4->unk9F;
            if (!gUnk_08354EEC[r4->unk9F].unk8)
                --r4->unk9F;
            r4->unk9E = gUnk_08354EEC[r4->unk9F].unk8;
            if (gUnk_08354EEC[r4->unk9F].unk9 != 0xFF)
                r4->unk83 = gUnk_08354EEC[r4->unk9F].unk9;
            if (r4->unk9F) {
                if (gUnk_08354EEC[r4->unk9F].unk0 != gUnk_08354EEC[r4->unk9F-1].unk0) {
                    r4->base.xspeed = gUnk_08354EEC[r4->unk9F].unk0;
                    if (r4->base.flags & 1)
                        r4->base.xspeed = -r4->base.xspeed;
                }
                if (gUnk_08354EEC[r4->unk9F].unk2 != gUnk_08354EEC[r4->unk9F-1].unk2)
                    r4->base.yspeed = gUnk_08354EEC[r4->unk9F].unk2;
            } else {
                r4->base.yspeed = gUnk_08354EEC[r4->unk9F].unk2;
                r4->base.xspeed = gUnk_08354EEC[r4->unk9F].unk0;
                if (r4->base.flags & 1)
                    r4->base.xspeed = -r4->base.xspeed;
            }
        }
        if (r4->base.flags & 1)
            r4->base.xspeed -= gUnk_08354EEC[r4->unk9F].unk4;
        else
            r4->base.xspeed += gUnk_08354EEC[r4->unk9F].unk4;
        r4->base.yspeed += gUnk_08354EEC[r4->unk9F].unk6;
        --r4->unk9E;
    } else {
        if (!gUnk_08354E98[(u8)(r4->unk9F + 1)].unk8) {
            if (!r4->unk9E) r4->unk9F = 0xFF;
        }
        if (!r4->unk9E) {
            ++r4->unk9F;
            if (!gUnk_08354E98[r4->unk9F].unk8)
                --r4->unk9F;
            r4->unk9E = gUnk_08354E98[r4->unk9F].unk8;
            if (gUnk_08354E98[r4->unk9F].unk9 != 0xFF)
                r4->unk83 = gUnk_08354E98[r4->unk9F].unk9;
            if (r4->unk9F) {
                if (gUnk_08354E98[r4->unk9F].unk0 != gUnk_08354E98[r4->unk9F-1].unk0) {
                    r4->base.xspeed = gUnk_08354E98[r4->unk9F].unk0;
                    if (r4->base.flags & 1)
                        r4->base.xspeed = -r4->base.xspeed;
                }
                if (gUnk_08354E98[r4->unk9F].unk2 != gUnk_08354E98[r4->unk9F-1].unk2)
                    r4->base.yspeed = gUnk_08354E98[r4->unk9F].unk2;
            } else {
                r4->base.yspeed = gUnk_08354E98[r4->unk9F].unk2;
                r4->base.xspeed = gUnk_08354E98[r4->unk9F].unk0;
                if (r4->base.flags & 1)
                    r4->base.xspeed = -r4->base.xspeed;
            }
        }
        if (r4->base.flags & 1)
            r4->base.xspeed -= gUnk_08354E98[r4->unk9F].unk4;
        else
            r4->base.xspeed += gUnk_08354E98[r4->unk9F].unk4;
        r4->base.yspeed += gUnk_08354E98[r4->unk9F].unk6;
        --r4->unk9E;
        if (r4->object->subtype1 == 1) {
            switch (r4->subtype) {
            default:
                r4->base.xspeed = 0x180;
                break;
            case 0:
                r4->base.xspeed = 0x80;
                break;
            case 1:
                r4->base.xspeed = 0x100;
                break;
            }
            if (r4->base.unk62 & 1)
                r4->base.flags ^= 1;
            if (r4->base.flags & 1)
                r4->base.xspeed = -r4->base.xspeed;
        }
    }
    if ((r4->base.counter & 0xF) == 0xF)
        r4->kirby3 = sub_0803D5CC(&r4->base);
    if (abs(r4->kirby3->base.base.base.x - r4->base.x) < 0x2800)
        sub_080C09E0(r4);
    else
        ++r4->base.counter;
}

static void sub_080C09E0(struct Object2 *r4) {
    ObjectSetFunc(r4, 1, sub_080C0D18);
    r4->type = OBJ_FOLEY_2;
    r4->base.xspeed = 0;
    r4->base.yspeed = 0x80;
    sub_080C0BD0(r4);
    PlaySfx(&r4->base, SE_08D58874);
}

void *CreateFoleyLeaves(struct Object *r6, u8 r5) {
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *r4 = TaskGetStructPtr(t);

    InitObject(r4, r6, r5);
    r4->base.flags |= 0x140;
    r4->base.flags |= 0x200;
    r4->base.unkC |= 2;
    sub_0803E2B0(&r4->base, -8, -8, 8, 8);
    sub_0803E308(&r4->base, -7, -5, 7, 7);
    ObjectInitSprite(r4);
    r4->base.sprite.unk14 = 0x640;
    gUnk_08351648[r4->type].unk10(r4);
    return r4;
}

static void sub_080C0B5C(struct Object2 *r2) {
    r2->base.flags |= 4;
    r2->base.yspeed += 4;
    if (r2->base.yspeed > 0x300)
        r2->base.yspeed = 0x300;
    if (r2->base.flags & 1) {
        r2->base.xspeed -= 4;
        if (r2->base.xspeed < -0x300)
            r2->base.xspeed = -0x300;
        else if (r2->base.xspeed > 0x300)
            r2->base.xspeed = 0x300;
    } else {
        r2->base.xspeed += 4;
        if (r2->base.xspeed > 0x300)
            r2->base.xspeed = 0x300;
        else if (r2->base.xspeed < -0x300)
            r2->base.xspeed = -0x300;
    }
}

static void sub_080C0BD0(struct Object2 *r5) {
    s32 x = r5->base.x >> 8;
    s32 y = (r5->base.y >> 8) - 8;

    CreateObjTemplateAndObj(r5->base.unk56, 1, 36, x, y, 
        0, 31, 0, 0, OBJ_FOLEY_LEAVES, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

void sub_080C0C6C(struct Object2 *r4) {
    ObjectSetFunc(r4, 0, sub_080C066C);
    r4->base.flags |= 0x140;
    r4->base.flags &= ~0x20;
    r4->base.unkC |= 1;
    r4->base.xspeed = 0;
    if (r4->object->subtype1)
        r4->base.flags &= ~0x100;
}

static void sub_080C0CBC(struct Object2 *r4) {
    ObjectSetFunc(r4, 2, sub_080C0D68);
    r4->base.flags &= ~0x140;
    r4->base.unkC &= -2;
    r4->base.xspeed = 0;
}

void sub_080C0CF0(struct Object2 *r4) {
    ObjectSetFunc(r4, 0, sub_080C0B5C);
    r4->base.unkC |= 1;
    r4->base.flags |= 0x140;
}

static void sub_080C0D18(struct Object2 *r3) {
    r3->base.flags |= 4;
    if (r3->base.counter > 10) {
        sub_080C0CBC(r3);
    } else {
        r3->base.objBase54 = gUnk_08350BCC[r3->base.counter][1];
        r3->base.objBase55 = gUnk_08350BCC[r3->base.counter][1];
        ++r3->base.counter;
    }
}

static void sub_080C0D68(struct Object2 *r4) {
    r4->base.flags |= 4;
    if (r4->base.unk62 & 4) {
        sub_08073D2C(&r4->base);
        r4->base.flags |= 0x1000;
    }
}
