#include "global.h"
#include "giant_rocky.h"
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

struct Object2 *CreateGiantRocky(struct Object *r5, u8 r4)
{
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r0, *r6 = TASK_GET_STRUCT_PTR(task, r0);
    
    InitObject(r6, r5, r4);
    r6->unk5C &= 0xFFFFFFF8;
    r6->unk5C |= 3;
    r6->unk64 = 0;
    r6->unk66 = 0;
    r6->unk5C |= 0x80;
    r6->flags |= 0x200000;
    if (r6->x > r6->unkAC->base.x)
        r6->flags |= 1;
    else
        r6->flags &= 0xFFFFFFFE;
    sub_0803E2B0(r6, -8, -2, 8, 10);
    sub_0803E308(r6, -8, -8, 8, 10);
    ObjectInitSprite(r6);
    r6->unk10.unk14 = 1728;
    gUnk_08351648[r6->type].unk10(r6);
    r6->unk9E = 0;
    r6->unk7C = 0;
    return r6;
}

static void sub_080BFEA0(struct Object2 *r4)
{
    r4->flags |= 4;
    if ((r4->unk1 & 0xF) == 0xF)
    {
        if (r4->unkAC->base.x - r4->x >= 0)
        {
            if (r4->unkAC->base.x - r4->x < 0x5000)
                goto _080BFEE0;
        }
        else
        {
            if (r4->x - r4->unkAC->base.x < 0x5000)
            {
            _080BFEE0:
                if (r4->unkAC->base.y - r4->y >= 0)
                {
                    if (r4->unkAC->base.y - r4->y < 0x5000)
                        goto _080BFF00;
                }
                else
                {
                    if (r4->y - r4->unkAC->base.y < 0x5000)
                    {
                    _080BFF00:
                        if (r4->x > r4->unkAC->base.x)
                            r4->unk85 |= 1;
                        else
                            r4->unk85 &= 0xFE;
                        if (!(Rand16() & 3))
                        {
                            sub_080C046C(r4);
                            return;
                        }
                    }
                }
            }
        }
        r4->unkAC = sub_0803D368(r4);
    }
    if (!(r4->unk62 & 4))
        sub_080C0514(r4);
}

static void sub_080BFF74(struct Object2 *r4)
{
    ObjectSetFunc(r4, 2, sub_080C0088);
    if (Rand16() & 1)
        r4->xspeed = 0x180;
    r4->yspeed = 1000;
    r4->flags &= 0xFFFFFFFD;
    r4->flags |= 0x40;
    if (r4->unk85 & 1)
        r4->flags |= 1;
    else
        r4->flags &= 0xFFFFFFFE;
    if (r4->flags & 1)
        r4->xspeed = -r4->xspeed;
    PlaySfx(r4, 325);
}

static void sub_080C0088(struct Object2 *r2)
{
    if (r2->unk58 & 2 && r2->yspeed > 520)
        r2->yspeed = 520;
    if (++r2->counter <= 23)
    {
        // if ((r2->yspeed -= 32) < -0xFFF)
        if ((u16)(r2->yspeed -= 32) << 16 < -0xFFF0000)
            r2->yspeed = -0xFFF;
    }
    else
        sub_080C04D4(r2);
}

static void sub_080C00E0(struct Object2 *r5)
{
    if (r5->unk58 & 2 && r5->yspeed < -0x400)
        r5->yspeed = -0x400;
    if (r5->counter)
    {
        if (r5->flags & 2)
        {
            ObjectSetFunc(r5, 0, sub_080BFEA0);
            r5->xspeed = 0;
            r5->unk64 = 0;
            r5->flags &= 0xFFFFFFBF;
        }
    }
    else if (r5->unk62 & 4)
    {
        r5->unk83 = 5;
        sub_0806FE64(1, r5);
        r5->flags &= 0xFFFFFFBF;
        r5->yspeed = 0;
        sub_08089864(r5, -16, 12, 1);
        sub_08089864(r5, -16, 12, 0);
        PlaySfx(r5, 342);
        ++r5->counter;
    }
}

static void sub_080C0218(struct Object2 *r5)
{
    struct Task *task = TaskCreate(sub_080C0320, 0x78, 0x3500, 16, 0); // substruct of struct Object2
    struct Object2 *r0, *r4 = TASK_GET_STRUCT_PTR(task, r0);

    sub_0803E380(r4);
    r4->unk0 = 2;
    r4->x = r5->x;
    r4->y = r5->y;
    r4->unk70 = (struct Kirby *)r5; // TODO: resolve type
    r4->counter = 0;
    r4->unk60 = r5->unk60;
    r4->unk56 = r5->unk56;
    if (gUnk_03000510.unk4 & ((1 << r4->unk56) | 0x10))
        r4->flags |= 0x2000;
    r4->unk63 = 1;
    r4->flags |= 0x10000000;
    r4->flags |= 0x20000000;
    r4->flags |= 0x400;
    r4->unk68 = 0x20000043;
    r4->unk64 = 640;
    r4->unk66 = 0;
    if (r5->flags & 1)
        r4->flags |= 1;
    else
        r4->flags &= 0xFFFFFFFE;
    sub_0803E2B0(r4, -12, -8, 12, 8);
    r5->flags &= 0xEFFFFFFF;
}

static void sub_080C0320(void)
{
    struct Object2 *r0, *r5 = TASK_GET_STRUCT_PTR(gCurTask, r0);
    struct Kirby *r4 = r5->unk70;

    if (r4->base.flags & 0x1000)
        r5->flags |= 0x1000;
    r5->unk56 = r4->base.unk56;
    r5->x = r4->base.x;
    r5->y = r4->base.y;
    if (!sub_0806F780(r5))
    {
        if (r4->base.unk83 != 4)
        {
            r4->base.flags |= 0x10000000;
            r5->flags |= 0x1000;
            
        }
        else
        {
            if (!(r5->flags & 0x1200))
            {
                u32 r1;

                r1 = r5->unk56 != 0xFF ? gCurLevelInfo[r5->unk56].unk65E : 0xFF;
                if (r1 != 0xFF)
                {
                    u8 idx;
                    u32 r3 = r1 * 64 + (r5->unk0 - 1) * 32;

#ifndef NONMATCHING
                    asm("":::"memory");
#endif
                    idx = gUnk_02022EB0[r1][r5->unk0 - 1]++ + r3;
                    gUnk_02022F50[idx] = r5;
                    gUnk_02022F50[idx + 1] = NULL;
                }
            }
        }
    }
}

static void sub_080C0410(struct Object2 *r1)
{
    switch (r1->unkB0->unkE)
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
    r4->xspeed = 0;
    r4->unk64 = 0;
    r4->flags &= 0xFFFFFFBF;
}

static void sub_080C046C(struct Object2 *r4)
{
    ObjectSetFunc(r4, 1, sub_080C04B8);
    r4->xspeed = 0;
    r4->yspeed = 0;
    r4->flags &= 0xFFFFFFFD;
    if (r4->unk85 & 1)
        r4->flags |= 1;
    else
        r4->flags &= 0xFFFFFFFE;
}

static void sub_080C04B8(struct Object2 *r1)
{
    if (++r1->counter > 8)
        sub_080BFF74(r1);
}

static void sub_080C04D4(struct Object2 *r4)
{
    ObjectSetFunc(r4, 3, sub_080C04F8);
    r4->xspeed = 0;
    r4->yspeed = 0;
}

static void sub_080C04F8(struct Object2 *r1)
{
    if (++r1->counter > 16)
        sub_080C0514(r1);
}

static void sub_080C0514(struct Object2 *r4)
{
    ObjectSetFunc(r4, 4, sub_080C00E0);
    r4->flags |= 0x40;
    r4->xspeed = 0;
    r4->yspeed = -0x800;
    sub_080C0218(r4);
}

static void sub_080C0548(struct Object2 *r4)
{
    ObjectSetFunc(r4, 0, sub_080C056C);
    r4->xspeed = 0;
    r4->yspeed = 0;
}

static void sub_080C056C(struct Object2 *r0)
{
    r0->flags |= 4;
}

static void sub_080C0578(struct Object2 *r4)
{
    ObjectSetFunc(r4, 4, sub_080C059C);
    r4->xspeed = 0;
    r4->yspeed = 0;
}

static void sub_080C059C(struct Object2 *r0)
{
    r0->flags |= 4;
}
