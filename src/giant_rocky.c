#include "global.h"
#include "giant_rocky.h"
#include "kirby.h"
#include "functions.h"

static void sub_080C046C(struct Object2 *);
static void sub_080C0514(struct Object2 *);
static void sub_080C0088(struct Object2 *);
static void sub_080C04D4(struct Object2 *);
static void sub_080C0320(void);
static void sub_080C0440(struct Object2 *);
static void sub_080C0548(struct Object2 *);
static void sub_080C0578(struct Object2 *);
static void sub_080C04B8(struct Object2 *);
static void sub_080C04F8(struct Object2 *);
static void sub_080C0514(struct Object2 *);
static void sub_080C056C(struct Object2 *);
static void sub_080C059C(struct Object2 *);

void *CreateGiantRocky(struct Object *r5, u8 r4)
{
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r0, *r6 = TaskGetStructPtr(task, r0);
    
    InitObject(r6, r5, r4);
    r6->base.unk5C &= ~7;
    r6->base.unk5C |= 3;
    r6->base.unk64 = 0;
    r6->base.unk66 = 0;
    r6->base.unk5C |= 0x80;
    r6->base.flags |= 0x200000;
    if (r6->base.x > r6->kirby3->base.base.base.x)
        r6->base.flags |= 1;
    else
        r6->base.flags &= ~1;
    sub_0803E2B0(&r6->base, -8, -2, 8, 10);
    sub_0803E308(&r6->base, -8, -8, 8, 10);
    ObjectInitSprite(r6);
    r6->base.unk10.unk14 = 1728;
    gUnk_08351648[r6->type].unk10(r6);
    r6->unk9E = 0;
    r6->unk7C = 0;
    return r6;
}

static void sub_080BFEA0(struct Object2 *r4)
{
    r4->base.flags |= 4;
    if ((r4->base.unk1 & 0xF) == 0xF)
    {
        if (abs(r4->kirby3->base.base.base.x - r4->base.x) < 0x5000
            && abs(r4->kirby3->base.base.base.y - r4->base.y) < 0x5000)
        {
            if (r4->base.x > r4->kirby3->base.base.base.x)
                r4->unk85 |= 1;
            else
                r4->unk85 &= ~1;
            if (!(Rand16() & 3))
            {
                sub_080C046C(r4);
                return;
            }
        }
        r4->kirby3 = sub_0803D368(&r4->base);
    }
    if (!(r4->base.unk62 & 4))
        sub_080C0514(r4);
}

static void sub_080BFF74(struct Object2 *r4)
{
    ObjectSetFunc(r4, 2, sub_080C0088);
    if (Rand16() & 1)
        r4->base.xspeed = 0x180;
    r4->base.yspeed = 1000;
    r4->base.flags &= ~2;
    r4->base.flags |= 0x40;
    if (r4->unk85 & 1)
        r4->base.flags |= 1;
    else
        r4->base.flags &= ~1;
    if (r4->base.flags & 1)
        r4->base.xspeed = -r4->base.xspeed;
    PlaySfx(&r4->base, 325);
}

static void sub_080C0088(struct Object2 *r2)
{
    if (r2->base.unk58 & 2 && r2->base.yspeed > 520)
        r2->base.yspeed = 520;
    if (++r2->base.counter <= 23)
    {
        if ((r2->base.yspeed -= 32) < -0xFFF)
            r2->base.yspeed = -0xFFF;
    }
    else
        sub_080C04D4(r2);
}

static void sub_080C00E0(struct Object2 *r5)
{
    if (r5->base.unk58 & 2 && r5->base.yspeed < -0x400)
        r5->base.yspeed = -0x400;
    if (r5->base.counter)
    {
        if (r5->base.flags & 2)
        {
            ObjectSetFunc(r5, 0, sub_080BFEA0);
            r5->base.xspeed = 0;
            r5->base.unk64 = 0;
            r5->base.flags &= ~0x40;
        }
    }
    else if (r5->base.unk62 & 4)
    {
        r5->unk83 = 5;
        sub_0806FE64(1, &r5->base);
        r5->base.flags &= ~0x40;
        r5->base.yspeed = 0;
        sub_08089864(r5, -16, 12, 1);
        sub_08089864(r5, -16, 12, 0);
        PlaySfx(&r5->base, 342);
        ++r5->base.counter;
    }
}

static void sub_080C0218(struct Object2 *r5)
{
    struct Task *task = TaskCreate(sub_080C0320, sizeof(struct ObjectBase), 0x3500, 16, NULL);
    struct ObjectBase *r0, *r4 = TaskGetStructPtr(task, r0);

    sub_0803E380(r4);
    r4->unk0 = 2;
    r4->x = r5->base.x;
    r4->y = r5->base.y;
    r4->parent = r5;
    r4->counter = 0;
    r4->unk60__42 = r5->base.unk60__42;
    r4->unk56 = r5->base.unk56;
    if (Macro_0810B1F4(r4))
        r4->flags |= 0x2000;
    r4->unk63 = 1;
    r4->flags |= 0x10000000;
    r4->flags |= 0x20000000;
    r4->flags |= 0x400;
    r4->unk68 = 0x20000043;
    r4->unk64 = 640;
    r4->unk66 = 0;
    if (r5->base.flags & 1)
        r4->flags |= 1;
    else
        r4->flags &= ~1;
    sub_0803E2B0(r4, -12, -8, 12, 8);
    r5->base.flags &= ~0x10000000;
}

static void sub_080C0320(void)
{
    struct ObjectBase *r0, *r5 = TaskGetStructPtr(gCurTask, r0);
    struct Object2 *r4 = r5->parent;

    if (r4->base.flags & 0x1000)
        r5->flags |= 0x1000;
    r5->unk56 = r4->base.unk56;
    r5->x = r4->base.x;
    r5->y = r4->base.y;
    if (!sub_0806F780(r5))
    {
        if (r4->unk83 != 4)
        {
            r4->base.flags |= 0x10000000;
            r5->flags |= 0x1000;
            
        }
        else
            SetPointerSomething(r5);
    }
}

static void sub_080C0410(struct Object2 *r1)
{
    switch (r1->object->subtype1)
    {
    default:
    case 0: // required for matching
        sub_080C0440(r1);
        break;
    case 1:
        sub_080C0548(r1);
        break;
    case 2:
        sub_080C0578(r1);
        break;
    }
}

static void sub_080C0440(struct Object2 *r4)
{
    ObjectSetFunc(r4, 0, sub_080BFEA0);
    r4->base.xspeed = 0;
    r4->base.unk64 = 0;
    r4->base.flags &= ~0x40;
}

static void sub_080C046C(struct Object2 *r4)
{
    ObjectSetFunc(r4, 1, sub_080C04B8);
    r4->base.xspeed = 0;
    r4->base.yspeed = 0;
    r4->base.flags &= ~2;
    if (r4->unk85 & 1)
        r4->base.flags |= 1;
    else
        r4->base.flags &= ~1;
}

static void sub_080C04B8(struct Object2 *r1)
{
    if (++r1->base.counter > 8)
        sub_080BFF74(r1);
}

static void sub_080C04D4(struct Object2 *r4)
{
    ObjectSetFunc(r4, 3, sub_080C04F8);
    r4->base.xspeed = 0;
    r4->base.yspeed = 0;
}

static void sub_080C04F8(struct Object2 *r1)
{
    if (++r1->base.counter > 16)
        sub_080C0514(r1);
}

static void sub_080C0514(struct Object2 *r4)
{
    ObjectSetFunc(r4, 4, sub_080C00E0);
    r4->base.flags |= 0x40;
    r4->base.xspeed = 0;
    r4->base.yspeed = -0x800;
    sub_080C0218(r4);
}

static void sub_080C0548(struct Object2 *r4)
{
    ObjectSetFunc(r4, 0, sub_080C056C);
    r4->base.xspeed = 0;
    r4->base.yspeed = 0;
}

static void sub_080C056C(struct Object2 *r0)
{
    r0->base.flags |= 4;
}

static void sub_080C0578(struct Object2 *r4)
{
    ObjectSetFunc(r4, 4, sub_080C059C);
    r4->base.xspeed = 0;
    r4->base.yspeed = 0;
}

static void sub_080C059C(struct Object2 *r0)
{
    r0->base.flags |= 4;
}
