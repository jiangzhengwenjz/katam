#include "flamer.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "object.h"

void sub_080B9048(struct Object2 *);
void sub_080BA5A4(struct Object2 *);
void nullsub_125(struct Object2 *);
void sub_080BA5C8(struct Object2 *);
void sub_080BA638(struct Object2 *);
void sub_080BA6A4(struct Object2 *);
void sub_080BA714(struct Object2 *);
void sub_080BA780(struct Object2 *);
void sub_080BA800(struct Object2 *);
void sub_080BA880(struct Object2 *);
void sub_080BA908(struct Object2 *);
void sub_080BA97C(struct Object2 *);
void sub_080BA9F0(struct Object2 *);
void sub_080BAA78(struct Object2 *);
void sub_080BAAF8(struct Object2 *);

const struct AnimInfo gUnk_08354670[] = {
    { 0x31E,   0, 0 },
    { 0x31E,   1, 0 },
    { 0x31E,   2, 0 },
    { 0x31E,   3, 0 },
    { 0x31E,   4, 0 },
    { 0x31E,   5, 0 },
    { 0x31E,   6, 0 },
    { 0x31E,   7, 0 },
    { 0x31E,   8, 0 },
    { 0x31E,   9, 0 },
    { 0x31E, 0xD, 0 },
    { 0x31E, 0xA, 0 },
    { 0x31E, 0xB, 0 },
};

const struct Unk_08353510 gUnk_083546A4[] = {
    { -0x80, 0x300, 0, 0,    8, 4 },
    { -0x80, 0x200, 0, 0,    8, 4 },
    { -0x80, 0x180, 0, 0,    8, 4 },
    { -0x80, 0x100, 0, 0,    6, 4 },
    { -0x80,  0xB3, 0, 0,    6, 4 },
    { -0x80,  0x66, 0, 0,    6, 4 },
    { -0x80,     0, 0, 0,    6, 4 },
    { -0x80,     0, 0, 0, 0x3C, 5 },
    { 0 },
};

const struct Unk_08353510 gUnk_08354710[] = {
    { -0x180, 0, 0, 0, 8, 7 },
    {  -0xC0, 0, 0, 0, 8, 7 },
    { 0 },
};

const struct Unk_08353510 gUnk_08354734[] = {
    { 0x300, 0x100, 0, 0, 6, 9 },
    { 0x200, 0x200, 0, 0, 6, 9 },
    { 0x100, 0x300, 0, 0, 6, 9 },
    {     0, 0x200, 0, 0, 6, 9 },
    {     0, 0x100, 0, 0, 6, 9 },
    { 0 },
};

const struct Unk_08353510 gUnk_0835477C[] = {
    { 0x300, 0x100, 0, 0, 6, 9 },
    { 0x200, 0x200, 0, 0, 6, 9 },
    { 0x100, 0x300, 0, 0, 6, 9 },
    { 0 },
};

void (*const gUnk_083547AC[])(struct Object2 *) = {
    nullsub_125,
    sub_080BA780,
    sub_080BA800,
    sub_080BA5C8,
    sub_080BA638,
    sub_080BA880,
    sub_080BA908,
    sub_080BAA78,
    sub_080BAAF8,
    sub_080BA6A4,
    sub_080BA714,
    sub_080BA97C,
    sub_080BA9F0,
};

const s8 gUnk_083547E0[] = { 0, -4, 4, 0 };

void *CreateFlamer(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *flamer = tmp;

    InitObject(flamer, template, a2);
    flamer->base.x += 0x100;
    if (flamer->object->subtype1 == 1)
        flamer->base.unkC |= 0x100;
    sub_0803E2B0(&flamer->base, -5, 0, 5, 8);
    sub_0803E308(&flamer->base, -4, -4, 4, 4);
    if (flamer->base.x > flamer->kirby3->base.base.base.x)
        flamer->base.flags |= 1;
    else
        flamer->base.flags &= ~1;
    ObjectInitSprite(flamer);
    flamer->base.unk68 &= ~0x100;
    switch (flamer->object->subtype1)
    {
    default:
    case 0:
        sub_0809D8C8(&flamer->base);
        sub_080B9048(flamer);
        break;
    case 1:
        sub_0809D8C8(&flamer->base);
        sub_080B9048(flamer);
        break;
    case 2:
        sub_080BA5A4(flamer);
        break;
    }
    return flamer;
}

u32 sub_080B75D0(struct Object2 *flamer)
{
    u32 ret = 0;

    if (flamer->unk85 & 0x20)
    {
        if (flamer->unk85 & 0x40 && !(flamer->unk85 & 0x80))
        {
            if (flamer->base.flags & 1)
            {
                if ((ret = *Macro_080B75D0(flamer, 0, (flamer->base.unk3F + 4) * 0x100)) & 1)
                    ret = *Macro_080B75D0(flamer, (flamer->base.unk3C - 1) * 0x100, (flamer->base.unk3F + 4) * 0x100);
            }
            else
            {
                if ((ret = *Macro_080B75D0(flamer, 0, (flamer->base.unk3F + 4) * 0x100)) & 1)
                    ret = *Macro_080B75D0(flamer, (flamer->base.unk3E + 1) * 0x100, (flamer->base.unk3F + 4) * 0x100);
            }
        }
        else if (!(flamer->unk85 & 0x40) && !(flamer->unk85 & 0x80))
        {
            if (flamer->base.flags & 1)
            {
                if ((ret = *Macro_080B75D0(flamer, 0, (flamer->base.unk3D - 4) * 0x100)) & 1)
                    ret = *Macro_080B75D0(flamer, (flamer->base.unk3E + 1) * 0x100, (flamer->base.unk3D - 4) * 0x100);
            }
            else
            {
                if ((ret = *Macro_080B75D0(flamer, 0, (flamer->base.unk3D - 4) * 0x100)) & 1)
                    ret = *Macro_080B75D0(flamer, (flamer->base.unk3C - 1) * 0x100, (flamer->base.unk3D - 4) * 0x100);
            }
        }
        else if (!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80)
        {
            if (flamer->base.flags & 1)
            {
                if ((ret = *Macro_080B75D0(flamer, (flamer->base.unk3C - 4) * 0x100, 0)) & 1)
                    ret = *Macro_080B75D0(flamer, (flamer->base.unk3C - 4) * 0x100, (flamer->base.unk3D - 1) * 0x100);
            }
            else
            {
                if ((ret = *Macro_080B75D0(flamer, (flamer->base.unk3E + 4) * 0x100, 0)) & 1)
                    ret = *Macro_080B75D0(flamer, (flamer->base.unk3E + 4) * 0x100, (flamer->base.unk3D - 1) * 0x100);
            }
        }
        else if (flamer->unk85 & 0x40 && flamer->unk85 & 0x80)
        {
            if (flamer->base.flags & 1)
            {
                if ((ret = *Macro_080B75D0(flamer, (flamer->base.unk3E + 4) * 0x100, 0)) & 1)
                    ret = *Macro_080B75D0(flamer, (flamer->base.unk3E + 4) * 0x100, (flamer->base.unk3F + 1) * 0x100);
            }
            else
            {
                if ((ret = *Macro_080B75D0(flamer, (flamer->base.unk3C - 4) * 0x100, 0)) & 1)
                    ret = *Macro_080B75D0(flamer, (flamer->base.unk3C - 4) * 0x100, (flamer->base.unk3F + 1) * 0x100);
            }
        }
    }
    return ret;
}

u32 sub_080B7E74(struct Object2 *flamer)
{
    u32 ret = 0;

    if (flamer->unk85 & 0x20)
    {
        if (flamer->unk85 & 0x40 && !(flamer->unk85 & 0x80))
        {
            if (flamer->base.flags & 1)
                ret = *Macro_080B75D0(flamer, (flamer->base.unk3C - 1) * 0x100, 0);
            else
                ret = *Macro_080B75D0(flamer, (flamer->base.unk3E + 1) * 0x100, 0);
        }
        else if (!(flamer->unk85 & 0x40) && !(flamer->unk85 & 0x80))
        {
            if (flamer->base.flags & 1)
                ret = *Macro_080B75D0(flamer, (flamer->base.unk3E + 1) * 0x100, 0);
            else
                ret = *Macro_080B75D0(flamer, (flamer->base.unk3C - 1) * 0x100, 0);
        }
        else if (!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80)
            ret = *Macro_080B75D0(flamer, 0, (flamer->base.unk3D - 1) * 0x100);
        else if (flamer->unk85 & 0x40 && flamer->unk85 & 0x80)
            ret = *Macro_080B75D0(flamer, 0, (flamer->base.unk3F + 1) * 0x100);
    }
    return ret;
}
/*
#define Macro_080B819C(flamer, x, y) \
({ \
    u8 _var = 0; \
 \
    if ((x) <= gCurLevelInfo[(flamer)->base.unk56].unk50 >> 12 \
        && (x) >= gCurLevelInfo[(flamer)->base.unk56].unk48 >> 12 \
        && (y) <= gCurLevelInfo[(flamer)->base.unk56].unk54 >> 12 \
        && (y) >= gCurLevelInfo[(flamer)->base.unk56].unk4C >> 12) \
        _var = sub_080023E4((flamer)->base.unk56, x, y); \
    _var; \
})

u32 sub_080B819C(struct Object2 *flamer)
{
    u32 ret = 0;
    s16 a, b, cx, dx, cy, dy;
    
    if (flamer->unk85 & 0x20)
    {
        if (flamer->unk85 & 0x40 && !(flamer->unk85 & 0x80))
        {
            a = flamer->base.x >> 12;
            b = (flamer->base.y + flamer->base.unk3F * 0x100) >> 12;
            cy = (flamer->base.y + (flamer->base.unk3F + 3) * 0x100) >> 12;
            dy = (flamer->base.y + (flamer->base.unk3F - 3) * 0x100) >> 12;
            if (!((ret = gUnk_082D88B8[Macro_080B819C(flamer, a, b)]) & 0xF0000000))
            {
                if (!((ret = gUnk_082D88B8[Macro_080B819C(flamer, a, cy)]) & 0xF0000000))
                {
                    if ((ret = gUnk_082D88B8[Macro_080B819C(flamer, a, dy)]) & 0xF0000000)
                        flamer->base.y = dy * 0x1000;
                }
                else
                    flamer->base.y = cy * 0x1000;
            }
        }
        else if (!(flamer->unk85 & 0x40) && !(flamer->unk85 & 0x80))
        {
            a = flamer->base.x >> 12;
            b = (flamer->base.y + flamer->base.unk3D * 0x100) >> 12;
            cy = (flamer->base.y + (flamer->base.unk3D + 3) * 0x100) >> 12;
            dy = (flamer->base.y + (flamer->base.unk3D - 3) * 0x100) >> 12;
            if (!((ret = gUnk_082D88B8[Macro_080B819C(flamer, a, b)]) & 0xF0000000))
            {
                if (!((ret = gUnk_082D88B8[Macro_080B819C(flamer, a, cy)]) & 0xF0000000))
                {
                    if ((ret = gUnk_082D88B8[Macro_080B819C(flamer, a, dy)]) & 0xF0000000)
                        flamer->base.y = dy * 0x1000 + 0x1000;
                }
                else
                    flamer->base.y = cy * 0x1000 + 0x1000;
            }
        }
        else if (!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80)
        {
            s32 e = flamer->base.flags & 1 ? flamer->base.unk3C : flamer->base.unk3E;
            a = (flamer->base.x + e * 0x100) >> 12;
            b = flamer->base.y >> 12;
            cx = (flamer->base.x + (e + 3) * 0x100) >> 12;
            dx = (flamer->base.x + (e - 3) * 0x100) >> 12;
            if (!((ret = gUnk_082D88B8[Macro_080B819C(flamer, a, b)]) & 0xF0000000))
            {
                if (!((ret = gUnk_082D88B8[Macro_080B819C(flamer, cx, b)]) & 0xF0000000))
                {
                    if ((ret = gUnk_082D88B8[Macro_080B819C(flamer, dx, b)]) & 0xF0000000)
                    {
                        if (flamer->base.flags & 1)
                            flamer->base.x = dx * 0x1000 + 0x1000;
                        else
                            flamer->base.x = dx * 0x1000;
                    }
                }
                else
                {
                    if (flamer->base.flags & 1)
                        flamer->base.x = cx * 0x1000 + 0x1000;
                    else
                        flamer->base.x = cx * 0x1000;
                }
            }
        }
        else if (flamer->unk85 & 0x40 && flamer->unk85 & 0x80)
        {
            s32 e = flamer->base.flags & 1 ? flamer->base.unk3E : flamer->base.unk3C;
            a = (flamer->base.x + e * 0x100) >> 12;
            b = flamer->base.y >> 12;
            cx = (flamer->base.x + (e + 3) * 0x100) >> 12;
            dx = (flamer->base.x + (e - 3) * 0x100) >> 12;
            if (!((ret = gUnk_082D88B8[Macro_080B819C(flamer, a, b)]) & 0xF0000000))
            {
                if (!((ret = gUnk_082D88B8[Macro_080B819C(flamer, cx, b)]) & 0xF0000000))
                {
                    if ((ret = gUnk_082D88B8[Macro_080B819C(flamer, dx, b)]) & 0xF0000000)
                    {
                        if (flamer->base.flags & 1)
                            flamer->base.x = a * 0x1000 - 0x1000;
                        else
                            flamer->base.x = a * 0x1000;
                    }
                }
                else
                {
                    if (flamer->base.flags & 1)
                        flamer->base.x = a * 0x1000 + 0x1000;
                    else
                        flamer->base.x = a * 0x1000 + 0x2000;
                }
            }
        }
    }
    return ret;
}
*/
