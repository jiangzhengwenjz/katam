#include "flamer.h"
#include "code_0806F780.h"
#include "droppy.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "object.h"
#include "constants/object_types.h"
#include "constants/songs.h"

static void sub_080B89DC(struct Object *);
static void sub_080B9048(struct Object *);
static struct EffectObject *sub_080B9DF0(struct Object *, s8);
static void sub_080BA004(void);
static void sub_080BA36C(struct Object *);
static void sub_080BA39C(struct Object *);
static void sub_080BA3EC(struct Object *);
static void sub_080BA400(struct Object *);
static void sub_080BA450(struct Object *);
static void sub_080BA498(struct Object *);
static void sub_080BA4D0(struct Object *);
static void sub_080BA4F0(struct Object *);
static void sub_080BA54C(struct Object *);
static void sub_080BA58C(struct Object *);
static void sub_080BA5A4(struct Object *);
static void sub_080BA5B8(struct Object *);
static void nullsub_125(struct Object *);
static void sub_080BA5C8(struct Object *);
static void sub_080BA638(struct Object *);
static void sub_080BA6A4(struct Object *);
static void sub_080BA714(struct Object *);
static void sub_080BA780(struct Object *);
static void sub_080BA800(struct Object *);
static void sub_080BA880(struct Object *);
static void sub_080BA908(struct Object *);
static void sub_080BA97C(struct Object *);
static void sub_080BA9F0(struct Object *);
static void sub_080BAA78(struct Object *);
static void sub_080BAAF8(struct Object *);

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

static const struct Unk_08353510 gUnk_083546A4[] = {
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

static const struct Unk_08353510 gUnk_08354710[] = {
    { -0x180, 0, 0, 0, 8, 7 },
    {  -0xC0, 0, 0, 0, 8, 7 },
    { 0 },
};

static const struct Unk_08353510 gUnk_08354734[] = {
    { 0x300, 0x100, 0, 0, 6, 9 },
    { 0x200, 0x200, 0, 0, 6, 9 },
    { 0x100, 0x300, 0, 0, 6, 9 },
    {     0, 0x200, 0, 0, 6, 9 },
    {     0, 0x100, 0, 0, 6, 9 },
    { 0 },
};

static const struct Unk_08353510 gUnk_0835477C[] = {
    { 0x300, 0x100, 0, 0, 6, 9 },
    { 0x200, 0x200, 0, 0, 6, 9 },
    { 0x100, 0x300, 0, 0, 6, 9 },
    { 0 },
};

static void (*const gUnk_083547AC[])(struct Object *) = {
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

static const s8 gUnk_083547E0[] = { 0, -4, 4, 0 };

void *CreateFlamer(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    struct Object *tmp = TaskGetStructPtr(t), *flamer = tmp;

    InitObject(flamer, template, a2);
    flamer->base.x += 0x100;
    if (flamer->objTemplate->subtype1 == 1)
        flamer->base.unkC |= 0x100;
    sub_0803E2B0(&flamer->base, -5, 0, 5, 8);
    ObjectSetBounds(&flamer->base, -4, -4, 4, 4);
    if (flamer->base.x > flamer->kirby3->base.x)
        flamer->base.flags |= 1;
    else
        flamer->base.flags &= ~1;
    ObjectInitSprite(flamer);
    flamer->base.unk68 &= ~0x100;
    switch (flamer->objTemplate->subtype1)
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

static u32 sub_080B75D0(struct Object *flamer)
{
    u32 ret = 0;

    if (flamer->unk85 & 0x20)
    {
        if (flamer->unk85 & 0x40 && !(flamer->unk85 & 0x80))
        {
            if (flamer->base.flags & 1)
            {
                if ((ret = *CollisionAttributesAt(flamer, 0, (flamer->base.unk3F + 4) * 0x100)) & 1)
                    ret = *CollisionAttributesAt(flamer, (flamer->base.unk3C - 1) * 0x100, (flamer->base.unk3F + 4) * 0x100);
            }
            else
            {
                if ((ret = *CollisionAttributesAt(flamer, 0, (flamer->base.unk3F + 4) * 0x100)) & 1)
                    ret = *CollisionAttributesAt(flamer, (flamer->base.unk3E + 1) * 0x100, (flamer->base.unk3F + 4) * 0x100);
            }
        }
        else if (!(flamer->unk85 & 0x40) && !(flamer->unk85 & 0x80))
        {
            if (flamer->base.flags & 1)
            {
                if ((ret = *CollisionAttributesAt(flamer, 0, (flamer->base.unk3D - 4) * 0x100)) & 1)
                    ret = *CollisionAttributesAt(flamer, (flamer->base.unk3E + 1) * 0x100, (flamer->base.unk3D - 4) * 0x100);
            }
            else
            {
                if ((ret = *CollisionAttributesAt(flamer, 0, (flamer->base.unk3D - 4) * 0x100)) & 1)
                    ret = *CollisionAttributesAt(flamer, (flamer->base.unk3C - 1) * 0x100, (flamer->base.unk3D - 4) * 0x100);
            }
        }
        else if (!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80)
        {
            if (flamer->base.flags & 1)
            {
                if ((ret = *CollisionAttributesAt(flamer, (flamer->base.unk3C - 4) * 0x100, 0)) & 1)
                    ret = *CollisionAttributesAt(flamer, (flamer->base.unk3C - 4) * 0x100, (flamer->base.unk3D - 1) * 0x100);
            }
            else
            {
                if ((ret = *CollisionAttributesAt(flamer, (flamer->base.unk3E + 4) * 0x100, 0)) & 1)
                    ret = *CollisionAttributesAt(flamer, (flamer->base.unk3E + 4) * 0x100, (flamer->base.unk3D - 1) * 0x100);
            }
        }
        else if (flamer->unk85 & 0x40 && flamer->unk85 & 0x80)
        {
            if (flamer->base.flags & 1)
            {
                if ((ret = *CollisionAttributesAt(flamer, (flamer->base.unk3E + 4) * 0x100, 0)) & 1)
                    ret = *CollisionAttributesAt(flamer, (flamer->base.unk3E + 4) * 0x100, (flamer->base.unk3F + 1) * 0x100);
            }
            else
            {
                if ((ret = *CollisionAttributesAt(flamer, (flamer->base.unk3C - 4) * 0x100, 0)) & 1)
                    ret = *CollisionAttributesAt(flamer, (flamer->base.unk3C - 4) * 0x100, (flamer->base.unk3F + 1) * 0x100);
            }
        }
    }
    return ret;
}

static u32 sub_080B7E74(struct Object *flamer)
{
    u32 ret = 0;

    if (flamer->unk85 & 0x20)
    {
        if (flamer->unk85 & 0x40 && !(flamer->unk85 & 0x80))
        {
            if (flamer->base.flags & 1)
                ret = *CollisionAttributesAt(flamer, (flamer->base.unk3C - 1) * 0x100, 0);
            else
                ret = *CollisionAttributesAt(flamer, (flamer->base.unk3E + 1) * 0x100, 0);
        }
        else if (!(flamer->unk85 & 0x40) && !(flamer->unk85 & 0x80))
        {
            if (flamer->base.flags & 1)
                ret = *CollisionAttributesAt(flamer, (flamer->base.unk3E + 1) * 0x100, 0);
            else
                ret = *CollisionAttributesAt(flamer, (flamer->base.unk3C - 1) * 0x100, 0);
        }
        else if (!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80)
            ret = *CollisionAttributesAt(flamer, 0, (flamer->base.unk3D - 1) * 0x100);
        else if (flamer->unk85 & 0x40 && flamer->unk85 & 0x80)
            ret = *CollisionAttributesAt(flamer, 0, (flamer->base.unk3F + 1) * 0x100);
    }
    return ret;
}

static u32 sub_080B819C(struct Object *flamer)
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
            if (!((ret = *CollisionAttributesAtTile(flamer, a, b)) & 0xF0000000))
            {
                if (!((ret = *CollisionAttributesAtTile(flamer, a, cy)) & 0xF0000000))
                {
                    if ((ret = *CollisionAttributesAtTile(flamer, a, dy)) & 0xF0000000)
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
            if (!((ret = *CollisionAttributesAtTile(flamer, a, b)) & 0xF0000000))
            {
                if (!((ret = *CollisionAttributesAtTile(flamer, a, cy)) & 0xF0000000))
                {
                    if ((ret = *CollisionAttributesAtTile(flamer, a, dy)) & 0xF0000000)
                        flamer->base.y = dy * 0x1000 + 0x1000;
                }
                else
                    flamer->base.y = cy * 0x1000 + 0x1000;
            }
        }
        else if (!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80)
        {
            if (flamer->base.flags & 1)
            {
                a = (flamer->base.x + flamer->base.unk3C * 0x100) >> 12;
                b = flamer->base.y >> 12;
                cx = (flamer->base.x + (flamer->base.unk3C + 3) * 0x100) >> 12;
                dx = (flamer->base.x + (flamer->base.unk3C - 3) * 0x100) >> 12;
            }
            else
            {
                a = (flamer->base.x + flamer->base.unk3E * 0x100) >> 12;
                b = flamer->base.y >> 12;
                cx = (flamer->base.x + (flamer->base.unk3E + 3) * 0x100) >> 12;
                dx = (flamer->base.x + (flamer->base.unk3E - 3) * 0x100) >> 12;
            }
            if (!((ret = *CollisionAttributesAtTile(flamer, a, b)) & 0xF0000000))
            {
                if (!((ret = *CollisionAttributesAtTile(flamer, cx, b)) & 0xF0000000))
                {
                    if ((ret = *CollisionAttributesAtTile(flamer, dx, b)) & 0xF0000000)
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
            if (flamer->base.flags & 1)
            {
                a = (flamer->base.x + flamer->base.unk3E * 0x100) >> 12;
                b = flamer->base.y >> 12;
                cx = (flamer->base.x + (flamer->base.unk3E + 3) * 0x100) >> 12;
                dx = (flamer->base.x + (flamer->base.unk3E - 3) * 0x100) >> 12;
            }
            else
            {
                a = (flamer->base.x + flamer->base.unk3C * 0x100) >> 12;
                b = flamer->base.y >> 12;
                cx = (flamer->base.x + (flamer->base.unk3C + 3) * 0x100) >> 12;
                dx = (flamer->base.x + (flamer->base.unk3C - 3) * 0x100) >> 12;
            }
            if (!((ret = *CollisionAttributesAtTile(flamer, a, b)) & 0xF0000000))
            {
                if (!((ret = *CollisionAttributesAtTile(flamer, cx, b)) & 0xF0000000))
                {
                    if ((ret = *CollisionAttributesAtTile(flamer, dx, b)) & 0xF0000000)
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

#define Macro_080B89DC(flamer, v0, v1, v2) ({ \
    s16 _val; \
 \
    switch ((flamer)->subtype) \
    { \
    case 1: \
        _val = (v1); \
        break; \
    case 2: \
        _val = (v2); \
        break; \
    default: \
        _val = (v0); \
        break; \
    } \
    _val; \
})

static void sub_080B8954(struct Object *flamer)
{
    ObjectSetFunc(flamer, 0, sub_080B89DC);
    flamer->base.flags |= 0x40;
    switch (flamer->subtype)
    {
    case 0:
        flamer->base.xspeed = 0xCD;
        flamer->unk83 = 0;
        break;
    case 1:
        flamer->base.xspeed = 0x140;
        flamer->unk83 = 1;
        break;
    case 2:
        flamer->base.xspeed = 0x300;
        flamer->unk83 = 2;
        break;
    }
    if (flamer->base.flags & 1)
        flamer->base.xspeed = -flamer->base.xspeed;
    flamer->base.flags |= 0x140;
    flamer->base.unkC &= ~1;
}

static void sub_080B89DC(struct Object *flamer)
{
    u32 ret, attr1, attr2;

    flamer->base.flags |= 4;
    if (Macro_0809FF6C(flamer, 0, 0))
        flamer->unk85 |= 0x20;
    else
        flamer->unk85 &= ~0x20;
    ret = sub_080B75D0(flamer);
    if (!ret)
        return;
    if (ret & 1)
    {
        if (flamer->unk85 & 0x40 && !(flamer->unk85 & 0x80))
        {
            flamer->unk85 = (flamer->unk85 & ~0xC0) | 0xC0;
            if (!(flamer->base.flags & 1))
                flamer->base.x = (flamer->base.x & ~0xFFF) + 0x300;
            else
                flamer->base.x = (flamer->base.x & ~0xFFF) + 0xD00;
        }
        else if (!(flamer->unk85 & 0x40) && !(flamer->unk85 & 0x80))
        {
            flamer->unk85 = (flamer->unk85 & ~0xC0) | 0x80;
            if (flamer->base.flags & 1)
                flamer->base.x = (flamer->base.x & ~0xFFF) + 0x300;
            else
                flamer->base.x = (flamer->base.x & ~0xFFF) + 0xD00;
        }
        else if (!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80)
        {
            flamer->unk85 = (flamer->unk85 & ~0xC0) | 0x40;
            flamer->base.y = (flamer->base.y & ~0xFFF) + 0xB00;
        }
        else if (flamer->unk85 & 0x40 && flamer->unk85 & 0x80)
        {
            flamer->unk85 &= ~0xC0;
            flamer->base.y = (flamer->base.y & ~0xFFF) + 0x400;
        }
        ret = sub_080B75D0(flamer);
        if (ret & 1)
        {
            sub_080B9048(flamer);
            return;
        }
    }
    attr1 = sub_080B7E74(flamer);
    attr2 = sub_080B819C(flamer) & 0xF0000000;
    if (!attr1)
        return;
    if (!(attr1 & 1) && !(attr1 & 0xF0000000) && !(attr2 & 0xF0000000))
    {
        if (flamer->unk85 & 0x40 && !(flamer->unk85 & 0x80))
        {
            flamer->unk85 = (flamer->unk85 & ~0xC0) | 0x80;
            if (flamer->base.flags & 1)
                flamer->base.x = ((flamer->base.x + (flamer->base.unk3C - 1) * 0x100) & ~0xFFF) + 0x1300;
            else
                flamer->base.x = ((flamer->base.x + (flamer->base.unk3E + 1) * 0x100) & ~0xFFF) - 0x300;
        }
        else if (!(flamer->unk85 & 0x40) && !(flamer->unk85 & 0x80))
        {
            flamer->unk85 = (flamer->unk85 & ~0xC0) | 0xC0;
            if (flamer->base.flags & 1)
                flamer->base.x = ((flamer->base.x + (flamer->base.unk3E + 1) * 0x100) & ~0xFFF) - 0x300;
            else
                flamer->base.x = ((flamer->base.x + (flamer->base.unk3C - 1) * 0x100) & ~0xFFF) + 0x1300;
        }
        else if (!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80)
        {
            flamer->unk85 &= ~0xC0;
            flamer->base.y = ((flamer->base.y + (flamer->base.unk3D - 1) * 0x100) & ~0xFFF) + 0x1300;
        }
        else if (flamer->unk85 & 0x40 && flamer->unk85 & 0x80)
        {
            flamer->unk85 = (flamer->unk85 & ~0xC0) | 0x40;
            flamer->base.y = ((flamer->base.y + (flamer->base.unk3F + 1) * 0x100) & ~0xFFF) - 0x300;
        }
    }
    if (flamer->unk85 & 0x40 && !(flamer->unk85 & 0x80))
    {
        flamer->base.xspeed = Macro_080B89DC(flamer, 0xCD, 0x140, 0x300);
        flamer->base.yspeed = 0;
        if (attr2)
        {
            switch (attr2)
            {
            case 0x10000000:
            case 0x20000000:
            case 0x50000000:
            case 0x60000000:
                flamer->base.xspeed = Macro_080B89DC(flamer, 0xBC, 0x127, 0x2C4);
                break;
            case 0x30000000:
            case 0x40000000:
                flamer->base.xspeed = Macro_080B89DC(flamer, 0x90, 0xE2, 0x21F);
                break;
            }
            gUnk_083547AC[attr2 >> 28](flamer);
        }
    }
    else if (!(flamer->unk85 & 0x40) && !(flamer->unk85 & 0x80))
    {
        flamer->base.xspeed = -Macro_080B89DC(flamer, 0xCD, 0x140, 0x300);
        flamer->base.yspeed = 0;
        if (attr2)
        {
            switch (attr2)
            {
            case 0x70000000:
            case 0x80000000:
            case 0xB0000000:
            case 0xC0000000:
                flamer->base.xspeed = -Macro_080B89DC(flamer, 0xBC, 0x127, 0x2C4);
                break;
            case 0x90000000:
            case 0xA0000000:
                flamer->base.xspeed = -Macro_080B89DC(flamer, 0x90, 0xE2, 0x21F);
                break;
            }
            gUnk_083547AC[attr2 >> 28](flamer);
        }
    }
    else if (!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80)
    {
        flamer->base.xspeed = 0;
        flamer->base.yspeed = Macro_080B89DC(flamer, 0xCD, 0x140, 0x300);
        if (attr2)
        {
            switch (attr2)
            {
            case 0x10000000:
            case 0x20000000:
            case 0x50000000:
            case 0x60000000:
                flamer->base.yspeed = Macro_080B89DC(flamer, 0x4A, 0x74, 0x117);
                break;
            case 0x30000000:
            case 0x40000000:
                flamer->base.yspeed = Macro_080B89DC(flamer, 0x90, 0xE2, 0x21F);
                break;
            case 0x70000000:
            case 0x80000000:
            case 0xB0000000:
            case 0xC0000000:
                flamer->base.yspeed = Macro_080B89DC(flamer, 0x4A, 0x74, 0x117);
                break;
            case 0x90000000:
            case 0xA0000000:
                flamer->base.yspeed = Macro_080B89DC(flamer, 0x90, 0xE2, 0x21F);
                break;
            }
            gUnk_083547AC[attr2 >> 28](flamer);
        }
    }
    else if (flamer->unk85 & 0x40 && flamer->unk85 & 0x80)
    {
        flamer->base.xspeed = 0;
        flamer->base.yspeed = -Macro_080B89DC(flamer, 0xCD, 0x140, 0x300);
        if (attr2)
        {
            switch (attr2)
            {
            case 0x10000000:
            case 0x20000000:
            case 0x50000000:
            case 0x60000000:
                flamer->base.yspeed = -Macro_080B89DC(flamer, 0x4A, 0x74, 0x117);
                break;
            case 0x30000000:
            case 0x40000000:
                flamer->base.yspeed = -Macro_080B89DC(flamer, 0x90, 0xE2, 0x21F);
                break;
            case 0x70000000:
            case 0x80000000:
            case 0xB0000000:
            case 0xC0000000:
                flamer->base.yspeed = -Macro_080B89DC(flamer, 0x4A, 0x74, 0x117);
                break;
            case 0x90000000:
            case 0xA0000000:
                flamer->base.yspeed = -Macro_080B89DC(flamer, 0x90, 0xE2, 0x21F);
                break;
            }
            gUnk_083547AC[attr2 >> 28](flamer);
        }
    }
    if (flamer->base.flags & 1)
        flamer->base.xspeed = -flamer->base.xspeed;
    if (!flamer->objTemplate->subtype1)
    {
        if (++flamer->unk9E > 20)
        {
            if (abs(flamer->kirby3->base.x - flamer->base.x) < 0x4000
                && abs(flamer->kirby3->base.y - flamer->base.y) < 0x4000)
                sub_080BA39C(flamer);
            else
            {
                flamer->kirby3 = FindTargetKirby(&flamer->base);
                flamer->unk9E = 0;
            }
        }
    }
}

static void sub_080B9048(struct Object *flamer)
{
    ObjectSetFunc(flamer, 3, sub_080BA36C);
    flamer->base.flags &= ~0x140;
    flamer->base.unkC &= ~1;
    flamer->base.xspeed = 0;
    flamer->base.yspeed = 0;
    if (Macro_0809FF6C(flamer, 0, 0))
    {
        if (*CollisionAttributesAt(flamer, 0, flamer->base.unk3F * 0x100) & ~0x2103)
        {
            flamer->unk85 = (flamer->unk85 & ~0xC0) | 0x40;
            sub_080B8954(flamer);
        }
        else if (*CollisionAttributesAt(flamer, 0, flamer->base.unk3D * 0x100) & ~0x2103)
        {
            flamer->unk85 &= ~0xC0;
            sub_080B8954(flamer);
        }
        else if (*CollisionAttributesAt(flamer, flamer->base.unk3C * 0x100, 0) & ~0x2103)
        {
            if (flamer->base.flags & 1)
                flamer->unk85 = (flamer->unk85 & ~0xC0) | 0x80;
            else
                flamer->unk85 = (flamer->unk85 & ~0xC0) | 0xC0;
            sub_080B8954(flamer);
        }
        else if (*CollisionAttributesAt(flamer, flamer->base.unk3E * 0x100, 0) & ~0x2103)
        {
            if (flamer->base.flags & 1)
                flamer->unk85 = (flamer->unk85 & ~0xC0) | 0xC0;
            else
                flamer->unk85 = (flamer->unk85 & ~0xC0) | 0x80;
            sub_080B8954(flamer);
        }
    }
}

static void sub_080B937C(struct Object *flamer)
{
    if (flamer->unk83 == 5)
        flamer->base.flags |= 4;
    if (!flamer->unk9E)
    {
        flamer->unk9F++;
        if (!gUnk_083546A4[flamer->unk9F].unk8)
            flamer->unk9F--;
        flamer->unk9E = gUnk_083546A4[flamer->unk9F].unk8;
        if (gUnk_083546A4[flamer->unk9F].unk9 != 0xFF)
            flamer->unk83 = gUnk_083546A4[flamer->unk9F].unk9;
        if (flamer->unk9F)
        {
            if (gUnk_083546A4[flamer->unk9F].unk0 != gUnk_083546A4[flamer->unk9F - 1].unk0)
            {
                flamer->base.xspeed = gUnk_083546A4[flamer->unk9F].unk0;
                if (flamer->base.flags & 1)
                    flamer->base.xspeed = -flamer->base.xspeed;
            }
            if (gUnk_083546A4[flamer->unk9F].unk2 != gUnk_083546A4[flamer->unk9F - 1].unk2)
                flamer->base.yspeed = gUnk_083546A4[flamer->unk9F].unk2;
        }
        else
        {
            flamer->base.yspeed = gUnk_083546A4[flamer->unk9F].unk2;
            flamer->base.xspeed = gUnk_083546A4[flamer->unk9F].unk0;
            if (flamer->base.flags & 1)
                flamer->base.xspeed = -flamer->base.xspeed;
        }
    }
    if (flamer->base.flags & 1)
        flamer->base.xspeed -= gUnk_083546A4[flamer->unk9F].unk4;
    else
        flamer->base.xspeed += gUnk_083546A4[flamer->unk9F].unk4;
    flamer->base.yspeed += gUnk_083546A4[flamer->unk9F].unk6;
    --flamer->unk9E;
    if (!gUnk_083546A4[(u8)(flamer->unk9F + 1)].unk8 && !flamer->unk9E)
        sub_080BA3EC(flamer);
}

static void sub_080B94F4(struct Object *flamer)
{
    s16 offset;

    flamer->base.flags |= 4;
    if (flamer->base.x > flamer->kirby3->base.x)
        offset = 0x4000;
    else
        offset = -0x4000;
    if (flamer->base.counter-- <= 0)
    {
        s32 dx = (flamer->kirby3->base.x + offset - flamer->base.x) >> 8;
        s32 dy = (flamer->base.y - flamer->kirby3->base.y) >> 8;
        u16 dist = Sqrt((dx * dx + dy * dy) * 0x100);

        dx = dx * 0x100 / dist;
        dy = dy * 0x100 / dist;
        flamer->base.xspeed = dx * 0x10;
        flamer->base.yspeed = dy * 0x10;
        flamer->base.counter = Macro_080B89DC(flamer, 12, 9, 6);
    }
    if (abs(flamer->kirby3->base.x + offset - flamer->base.x) < 0xA00
        && abs(flamer->kirby3->base.y - flamer->base.y) < 0xA00)
        sub_080BA400(flamer);
}

static void sub_080B95F0(struct Object *flamer)
{
    if (!flamer->unk9E)
    {
        flamer->unk9F++;
        if (!gUnk_08354710[flamer->unk9F].unk8)
            flamer->unk9F--;
        flamer->unk9E = gUnk_08354710[flamer->unk9F].unk8;
        if (gUnk_08354710[flamer->unk9F].unk9 != 0xFF)
            flamer->unk83 = gUnk_08354710[flamer->unk9F].unk9;
        if (flamer->unk9F)
        {
            if (gUnk_08354710[flamer->unk9F].unk0 != gUnk_08354710[flamer->unk9F - 1].unk0)
            {
                flamer->base.xspeed = gUnk_08354710[flamer->unk9F].unk0;
                if (flamer->base.flags & 1)
                    flamer->base.xspeed = -flamer->base.xspeed;
            }
            if (gUnk_08354710[flamer->unk9F].unk2 != gUnk_08354710[flamer->unk9F - 1].unk2)
                flamer->base.yspeed = gUnk_08354710[flamer->unk9F].unk2;
        }
        else
        {
            flamer->base.yspeed = gUnk_08354710[flamer->unk9F].unk2;
            flamer->base.xspeed = gUnk_08354710[flamer->unk9F].unk0;
            if (flamer->base.flags & 1)
                flamer->base.xspeed = -flamer->base.xspeed;
        }
    }
    if (flamer->base.flags & 1)
        flamer->base.xspeed -= gUnk_08354710[flamer->unk9F].unk4;
    else
        flamer->base.xspeed += gUnk_08354710[flamer->unk9F].unk4;
    flamer->base.yspeed += gUnk_08354710[flamer->unk9F].unk6;
    --flamer->unk9E;
    if (!gUnk_08354710[(u8)(flamer->unk9F + 1)].unk8 && !flamer->unk9E)
        sub_080BA450(flamer);
}

static void sub_080B976C(struct Object *flamer)
{
    flamer->base.flags |= 4;
    if (flamer->base.counter)
    {
        if (++flamer->base.counter > 12)
        {
            if (flamer->unk85 & 0x10)
                sub_080BA4D0(flamer);
            else
                sub_080BA498(flamer);
        }
    }
    else
    {
        if ((++flamer->unk9E & 3) == 3)
        {
            sub_080B9DF0(flamer, flamer->unk9E >> 2);
            if (flamer->unk9E & 8)
                flamer->unk9E = 0;
        }
        if (flamer->base.flags & 1)
        {
            if (flamer->kirby3->base.x > flamer->base.x)
                flamer->base.counter++;
        }
        else
        {
            if (flamer->kirby3->base.x < flamer->base.x)
                flamer->base.counter++;
        }
    }
}

static void sub_080B9810(struct Object *flamer)
{
    if (!flamer->unk9E)
    {
        flamer->unk9F++;
        if (!gUnk_08354734[flamer->unk9F].unk8)
            flamer->unk9F--;
        flamer->unk9E = gUnk_08354734[flamer->unk9F].unk8;
        if (gUnk_08354734[flamer->unk9F].unk9 != 0xFF)
            flamer->unk83 = gUnk_08354734[flamer->unk9F].unk9;
        if (flamer->unk9F)
        {
            if (gUnk_08354734[flamer->unk9F].unk0 != gUnk_08354734[flamer->unk9F - 1].unk0)
            {
                flamer->base.xspeed = gUnk_08354734[flamer->unk9F].unk0;
                if (flamer->base.flags & 1)
                    flamer->base.xspeed = -flamer->base.xspeed;
            }
            if (gUnk_08354734[flamer->unk9F].unk2 != gUnk_08354734[flamer->unk9F - 1].unk2)
                flamer->base.yspeed = gUnk_08354734[flamer->unk9F].unk2;
        }
        else
        {
            flamer->base.yspeed = gUnk_08354734[flamer->unk9F].unk2;
            flamer->base.xspeed = gUnk_08354734[flamer->unk9F].unk0;
            if (flamer->base.flags & 1)
                flamer->base.xspeed = -flamer->base.xspeed;
        }
    }
    if (flamer->base.flags & 1)
        flamer->base.xspeed -= gUnk_08354734[flamer->unk9F].unk4;
    else
        flamer->base.xspeed += gUnk_08354734[flamer->unk9F].unk4;
    flamer->base.yspeed += gUnk_08354734[flamer->unk9F].unk6;
    --flamer->unk9E;
    if (!gUnk_08354734[(u8)(flamer->unk9F + 1)].unk8 && !flamer->unk9E)
        sub_080BA4F0(flamer);
}

static void sub_080B998C(struct Object *flamer)
{
    flamer->base.flags |= 4;
    if (!flamer->unk9E)
    {
        flamer->unk9F++;
        if (!gUnk_0835477C[flamer->unk9F].unk8)
            flamer->unk9F--;
        flamer->unk9E = gUnk_0835477C[flamer->unk9F].unk8;
        if (gUnk_0835477C[flamer->unk9F].unk9 != 0xFF)
            flamer->unk83 = gUnk_0835477C[flamer->unk9F].unk9;
        if (flamer->unk9F)
        {
            if (gUnk_0835477C[flamer->unk9F].unk0 != gUnk_0835477C[flamer->unk9F - 1].unk0)
            {
                flamer->base.xspeed = gUnk_0835477C[flamer->unk9F].unk0;
                if (flamer->base.flags & 1)
                    flamer->base.xspeed = -flamer->base.xspeed;
            }
            if (gUnk_0835477C[flamer->unk9F].unk2 != gUnk_0835477C[flamer->unk9F - 1].unk2)
                flamer->base.yspeed = gUnk_0835477C[flamer->unk9F].unk2;
        }
        else
        {
            flamer->base.yspeed = gUnk_0835477C[flamer->unk9F].unk2;
            flamer->base.xspeed = gUnk_0835477C[flamer->unk9F].unk0;
            if (flamer->base.flags & 1)
                flamer->base.xspeed = -flamer->base.xspeed;
        }
    }
    if (flamer->base.flags & 1)
        flamer->base.xspeed -= gUnk_0835477C[flamer->unk9F].unk4;
    else
        flamer->base.xspeed += gUnk_0835477C[flamer->unk9F].unk4;
    flamer->base.yspeed += gUnk_0835477C[flamer->unk9F].unk6;
    --flamer->unk9E;
}

static void sub_080B9AF0(struct Object *flamer)
{
    u32 attr = 1;
    u8 tile;
    s16 offset;

    flamer->base.flags |= 4;
    if (flamer->base.x > flamer->kirby3->base.x)
        offset = 0x1000;
    else
        offset = -0x1000;
    if (flamer->base.counter-- <= 0)
    {
        s32 dx = (flamer->kirby3->base.x + offset - flamer->base.x) >> 8;
        s32 dy = (flamer->base.y - flamer->kirby3->base.y) >> 8;
        u16 dist = Sqrt((dx * dx + dy * dy) * 0x100);

        dx = dx * 0x100 / dist;
        dy = dy * 0x100 / dist;
        flamer->base.xspeed = dx * 0x10;
        flamer->base.yspeed = dy * 0x10;
        flamer->base.counter = Macro_080B89DC(flamer, 12, 9, 6);
    }
    if (Macro_0809FF6C(flamer, flamer->base.unk3E * 0x100, flamer->base.unk3D * 0x100))
    {
        tile = GetCollisionTile(flamer->base.unk56,
            ((flamer->base.x >> 8) + flamer->base.unk3E) >> 4, ((flamer->base.y >> 8) + flamer->base.unk3D) >> 4);
        attr |= gCollisionAttributes[tile];
    }
    if (Macro_0809FF6C(flamer, flamer->base.unk3C * 0x100, flamer->base.unk3D * 0x100))
    {
        tile = GetCollisionTile(flamer->base.unk56,
            ((flamer->base.x >> 8) + flamer->base.unk3C) >> 4, ((flamer->base.y >> 8) + flamer->base.unk3D) >> 4);
        attr |= gCollisionAttributes[tile];
    }
    if (Macro_0809FF6C(flamer, flamer->base.unk3E * 0x100, flamer->base.unk3F * 0x100))
    {
        tile = GetCollisionTile(flamer->base.unk56,
            ((flamer->base.x >> 8) + flamer->base.unk3E) >> 4, ((flamer->base.y >> 8) + flamer->base.unk3F) >> 4);
        attr |= gCollisionAttributes[tile];
    }
    if (Macro_0809FF6C(flamer, flamer->base.unk3C * 0x100, flamer->base.unk3F * 0x100))
    {
        tile = GetCollisionTile(flamer->base.unk56,
            ((flamer->base.x >> 8) + flamer->base.unk3C) >> 4, ((flamer->base.y >> 8) + flamer->base.unk3F) >> 4);
        attr |= gCollisionAttributes[tile];
    }
    if (attr == 1)
    {
        if (flamer->unk9E)
        {
            flamer->base.xspeed = 0;
            flamer->base.yspeed = 0;
            flamer->unk9E--;
        }
        sub_080BA54C(flamer);
    }
}

static struct EffectObject *sub_080B9DF0(struct Object *flamer, s8 a1)
{
    struct Task *t = TaskCreate(sub_080BA004, sizeof(struct EffectObject), 0x3500, TASK_USE_IWRAM, ObjectBaseDestroy);
    struct EffectObject *tmp = TaskGetStructPtr(t), *effectObject = tmp;
    s32 val;

    ClearEffectObject(tmp);
    effectObject->header.kind = 3;
    effectObject->x = flamer->base.x;
    effectObject->y = flamer->base.y;
    effectObject->parent = flamer;
    effectObject->roomId = flamer->base.roomId;
    val = gUnk_083547E0[a1 & 3];
    effectObject->y += val * 0x100;
    if (Macro_0810B1F4(&flamer->base))
        effectObject->flags |= 0x2000;
    effectObject->flags |= 0x4000;
    EffectObjectInitSprite(effectObject, &effectObject->sprite, 6, 0x31E, 12, 12);
    effectObject->sprite.palId = 0;
    if (flamer->base.unkC & 0x10)
        Macro_081050E8(effectObject, &effectObject->sprite, gUnk_08351648[OBJ_DROPPY].unk8, 0, 1);
    else
        Macro_081050E8(effectObject, &effectObject->sprite, 0x31E, 0, 1);
    PlaySfx(&flamer->base, SE_BASIC_ENEMY_FIRE_ATTACK);
    return effectObject;
}

static void sub_080BA004(void)
{
    struct Sprite sprite;
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effectObject = tmp;
    struct Object *flamer = effectObject->parent, *parent;

    if (effectObject->flags & 0x1000)
    {
        TaskDestroy(gCurTask);
        return;
    }
    Macro_08107BA8_4(effectObject, &effectObject->sprite, &sprite, 6, &effectObject->sprite);
    if (flamer->base.unkC & 0x10)
        Macro_081050E8(effectObject, &effectObject->sprite, gUnk_08351648[OBJ_DROPPY].unk8, 0, !effectObject->sprite.palId);
    else
        Macro_081050E8(effectObject, &effectObject->sprite, 0x31E, 0, !effectObject->sprite.palId);
    parent = effectObject->parent;
    if (parent && parent->base.header.kind && parent->base.flags & 0x1000)
    {
        effectObject->parent = NULL;
        parent = NULL;
    }
    if (parent)
    {
        if (Macro_0810B1F4(&parent->base) && !(effectObject->flags & 0x2000))
        {
            EffectObjectDisplaySprite(effectObject);
            return;
        }
    }
    else
        KirbySomething(effectObject);
    Macro_0809E55C(effectObject);
    if (effectObject->flags & 2)
        effectObject->flags |= 0x1000;
    else
    {
        if (!(effectObject->flags & 0x800))
        {
            effectObject->x += effectObject->unk3C;
            effectObject->y -= effectObject->unk3E;
            effectObject->x += effectObject->unk3C;
            effectObject->y -= effectObject->unk3E;
        }
        EffectObjectPostUpdate(effectObject);
    }
}

void sub_080BA334(struct Object *flamer)
{
    flamer->base.unk68 &= ~0x100;
    switch (flamer->objTemplate->subtype1)
    {
    default:
    case 0:
        sub_080BA4F0(flamer);
        break;
    case 1:
        sub_080BA4F0(flamer);
        break;
    case 2:
        sub_080BA5A4(flamer);
        break;
    }
}

static void sub_080BA36C(struct Object *flamer)
{
    flamer->base.flags |= 4;
    if (flamer->base.unk62)
    {
        flamer->unk85 = (flamer->unk85 & ~0xC0) | 0x40;
        sub_080B8954(flamer);
    }
}

static void sub_080BA39C(struct Object *flamer)
{
    ObjectSetFunc(flamer, 4, sub_080B937C);
    flamer->base.xspeed = 0;
    flamer->base.yspeed = 0;
    flamer->base.flags |= 0x140;
    flamer->base.unkC |= 1;
    if (flamer->base.x > flamer->kirby3->base.x)
        flamer->base.flags |= 1;
    else
        flamer->base.flags &= ~1;
}

static void sub_080BA3EC(struct Object *flamer)
{
    ObjectSetFunc(flamer, 6, sub_080B94F4);
}

static void sub_080BA400(struct Object *flamer)
{
    ObjectSetFunc(flamer, 7, sub_080B95F0);
    flamer->base.xspeed = 0;
    flamer->base.yspeed = 0;
    flamer->base.flags |= 0x140;
    flamer->base.unkC |= 1;
    if (flamer->base.x > flamer->kirby3->base.x)
        flamer->base.flags |= 1;
    else
        flamer->base.flags &= ~1;
}

static void sub_080BA450(struct Object *flamer)
{
    ObjectSetFunc(flamer, 8, sub_080B976C);
    flamer->base.xspeed = 0x400;
    flamer->base.yspeed = 0;
    flamer->base.unk68 |= 0x100;
    flamer->base.flags |= 0x140;
    if (flamer->base.flags & 1)
        flamer->base.xspeed = -flamer->base.xspeed;
}

static void sub_080BA498(struct Object *flamer)
{
    ObjectSetFunc(flamer, 9, sub_080B9810);
    flamer->unk85 |= 0x10;
    flamer->base.unk68 &= ~0x100;
    flamer->base.flags |= 0x140;
}

static void sub_080BA4D0(struct Object *flamer)
{
    ObjectSetFunc(flamer, 9, sub_080B998C);
    flamer->base.flags |= 0x140;
}

static void sub_080BA4F0(struct Object *flamer)
{
    ObjectSetFunc(flamer, 6, sub_080B9AF0);
    flamer->base.xspeed = 0;
    flamer->base.yspeed = 0;
    flamer->unk9E = 4;
    if (flamer->base.x > flamer->kirby3->base.x)
        flamer->base.flags |= 1;
    else
        flamer->base.flags &= ~1;
    flamer->base.flags |= 0x140;
    flamer->base.flags &= ~0x20;
}

static void sub_080BA54C(struct Object *flamer)
{
    ObjectSetFunc(flamer, 10, sub_080BA58C);
    flamer->base.xspeed = 0;
    flamer->base.yspeed = 0;
    if (flamer->base.x > flamer->kirby3->base.x)
        flamer->base.flags |= 1;
    else
        flamer->base.flags &= ~1;
}

static void sub_080BA58C(struct Object *flamer)
{
    if (flamer->base.flags & 2)
        sub_080B9048(flamer);
}

static void sub_080BA5A4(struct Object *flamer)
{
    ObjectSetFunc(flamer, 0, sub_080BA5B8);
}

static void sub_080BA5B8(struct Object *flamer)
{
    flamer->base.flags |= 4;
}

static void nullsub_125(struct Object *flamer)
{
}

static void sub_080BA5C8(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3E * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xF00) + (0xF00 - (y & 0xF00)) - flamer->base.unk3E * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3F * 0x100;
        flamer->base.y = (y & ~0xF00) + (0xF00 - (x & 0xF00)) - flamer->base.unk3F * 0x100;
    }
}

static void sub_080BA638(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3C * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xF00) + (y & 0xF00) - flamer->base.unk3C * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3F * 0x100;
        flamer->base.y = (y & ~0xF00) + (x & 0xF00) - flamer->base.unk3F * 0x100;
    }
}

static void sub_080BA6A4(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3C * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xF00) + (0xF00 - (y & 0xF00)) - flamer->base.unk3C * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3D * 0x100;
        flamer->base.y = (y & ~0xF00) + (0xF00 - (x & 0xF00)) - flamer->base.unk3D * 0x100;
    }
}

static void sub_080BA714(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3E * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xF00) + (y & 0xF00) - flamer->base.unk3E * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3D * 0x100;
        flamer->base.y = (y & ~0xF00) + (x & 0xF00) - flamer->base.unk3D * 0x100;
    }
}

static void sub_080BA780(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3E * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xFFF) + (0xFFF - ((y & 0xFFF) - 0x800) * 2) - flamer->base.unk3E * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3F * 0x100;
        flamer->base.y = (y & ~0xF00) + ((0xF00 - ((x & 0xF00) >> 1)) & 0xF00) - flamer->base.unk3F * 0x100;
    }
}

static void sub_080BA800(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3E * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xFFF) + (0xFFF - (y & 0xFFF) * 2) - flamer->base.unk3E * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3F * 0x100;
        flamer->base.y = (y & ~0xF00) + ((0x7FF - ((x & 0xF00) >> 1)) & 0xF00) - flamer->base.unk3F * 0x100;
    }
}

static void sub_080BA880(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3C * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xFFF) + ((y & 0xFFF) - 0x800) * 2 - flamer->base.unk3C * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3F * 0x100;
        flamer->base.y = (y & ~0xF00) + ((((x & 0xF00) >> 1) | 0x800) & 0xF00) - flamer->base.unk3F * 0x100;
    }
}

static void sub_080BA908(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3C * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xFFF) + (y & 0xFFF) * 2 - flamer->base.unk3C * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3F * 0x100;
        flamer->base.y = (y & ~0xF00) + (((x & 0xF00) >> 1) & 0xF00) - flamer->base.unk3F * 0x100;
    }
}

static void sub_080BA97C(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3E * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xFFF) + (y & 0xFFF) * 2 - flamer->base.unk3E * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3D * 0x100;
        flamer->base.y = (y & ~0xF00) + (((x & 0xF00) >> 1) & 0xF00) - flamer->base.unk3D * 0x100;
    }
}

static void sub_080BA9F0(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3E * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xFFF) + ((y & 0xFFF) - 0x800) * 2 - flamer->base.unk3E * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3D * 0x100;
        flamer->base.y = (y & ~0xF00) + ((((x & 0xF00) >> 1) | 0x800) & 0xF00) - flamer->base.unk3D * 0x100;
    }
}

static void sub_080BAA78(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3C * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xFFF) + (0xFFF - (y & 0xFFF) * 2) - flamer->base.unk3C * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3D * 0x100;
        flamer->base.y = (y & ~0xF00) + ((0x7FF - ((x & 0xF00) >> 1)) & 0xF00) - flamer->base.unk3D * 0x100;
    }
}

static void sub_080BAAF8(struct Object *flamer)
{
    s32 x, y;

    if ((!(flamer->unk85 & 0x40) && flamer->unk85 & 0x80) || (flamer->unk85 & 0x40 && flamer->unk85 & 0x80))
    {
        x = flamer->base.x + flamer->base.unk3C * 0x100;
        y = flamer->base.y;
        flamer->base.x = (x & ~0xFFF) + (0xFFF - ((y & 0xFFF) - 0x800) * 2) - flamer->base.unk3C * 0x100;
    }
    else
    {
        x = flamer->base.x;
        y = flamer->base.y + flamer->base.unk3D * 0x100;
        flamer->base.y = (y & ~0xF00) + ((0xF00 - ((x & 0xF00) >> 1)) & 0xF00) - flamer->base.unk3D * 0x100;
    }
}
