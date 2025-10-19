#include "cannon_fuse.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "random.h"
#include "code_0806F780.h"

static void sub_0811E890(struct CannonFuse *);
static void sub_0811E92C(struct CannonFuse *);

const struct AnimInfo gUnk_08357C64[] = {
    { 0x2E2,  0x0, 0x0 },
    { 0x2E2,  0x1, 0x0 },
    { 0x2E2,  0x2, 0x0 },
    { 0x2E2,  0x5, 0x0 },
    { 0x2E2,  0x6, 0x0 },
    { 0x2E2,  0x9, 0x0 },
    { 0x2E2,  0xA, 0x0 },
    { 0x2E2,  0xD, 0x0 },
    { 0x2E2,  0xE, 0x0 },
    { 0x2E2, 0x11, 0x0 },
    { 0x2E2, 0x12, 0x0 },
    { 0x2E2, 0x15, 0x0 },
    { 0x2E2, 0x16, 0x0 },
    { 0x2E2,  0x4, 0x0 },
    { 0x2E2,  0x3, 0x0 },
    { 0x2E2,  0x8, 0x0 },
    { 0x2E2,  0x7, 0x0 },
    { 0x2E2,  0xC, 0x0 },
    { 0x2E2,  0xB, 0x0 },
    { 0x2E2, 0x10, 0x0 },
    { 0x2E2,  0xF, 0x0 },
    { 0x2E2, 0x14, 0x0 },
    { 0x2E2, 0x13, 0x0 },
    { 0x2E2, 0x18, 0x0 },
    { 0x2E2, 0x17, 0x0 },
};

void *CreateCannonFuse(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct CannonFuse), 0xFFE, TASK_USE_IWRAM, ObjectDestroy);
    struct CannonFuse *cf = TaskGetStructPtr(t);

    InitObject(&cf->obj2, template, a2);
    cf->obj2.base.flags |= 0x2618141;
    cf->obj2.base.unk68 &= ~7;
    cf->obj2.base.unk5C |= ~7;
    cf->obj2.base.unk5C &= ~0x10100;
    cf->obj2.base.unkC |= 1;
    sub_0803E2B0(&cf->obj2.base, -8, -8, 8, 8);
    ObjectInitSprite(&cf->obj2);
    gUnk_08351648[cf->obj2.type].unk10(&cf->obj2);
    return cf;
}

void sub_0811DD94(struct CannonFuse *cf)
{
    cf->obj2.base.counter = 0;
    cf->unkB4 = 0;
    cf->unkB6 = 0;
    cf->unkB8 = cf->obj2.object->x >> 4;
    cf->unkBA = cf->obj2.object->y >> 4;
    cf->unkBC = cf->obj2.object->x >> 4;
    cf->unkBE = cf->obj2.object->y >> 4;
    cf->unkC0 = 0;
    cf->unkC2 = 0;
    cf->obj2.unk83 = 0;
    cf->obj2.unk78 = sub_0811E92C;
}

static void sub_0811DDFC(struct CannonFuse *cf)
{
    u16 unkBC = cf->unkBC;
    u16 unkBE = cf->unkBE;
    u16 unkB8 = cf->unkB8;
    u16 unkBA = cf->unkBA;

    switch (sub_080023E4(cf->obj2.base.unk56, unkBC, unkBE))
    {
    case 0x22:
        if (unkBE >= unkBA)
        {
            cf->obj2.base.yspeed -= 0x1000;
            if (cf->obj2.base.yspeed < -0x1000)
                cf->obj2.base.yspeed = -0x1000;
        }
        else
        {
            cf->obj2.base.yspeed += 0x1000;
            if (cf->obj2.base.yspeed > 0x1000)
                cf->obj2.base.yspeed = 0x1000;
        }
        cf->unkBA = unkBE;
        cf->unkBE += unkBE - unkBA;
        break;
    case 0x23:
        if (unkBC == unkB8)
        {
            if (cf->obj2.base.flags & 1)
            {
                cf->obj2.base.xspeed -= 0x1000;
                if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
                else if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
            }
            else
            {
                cf->obj2.base.xspeed += 0x1000;
                if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
                else if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
            }
        }
        else
        {
            cf->obj2.base.yspeed -= 0x1000;
            if (cf->obj2.base.yspeed < -0x1000)
                cf->obj2.base.yspeed = -0x1000;
        }
        if (unkBC == unkB8)
        {
            cf->unkBA = unkBE;
            ++cf->unkBC;
        }
        else
        {
            cf->unkB8 = unkBC;
            ++cf->unkBE;
        }
        break;
    case 0x24:
        if (unkBC == unkB8)
        {
            if (cf->obj2.base.flags & 1)
            {
                cf->obj2.base.xspeed += 0x1000;
                if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
                else if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
            }
            else
            {
                cf->obj2.base.xspeed -= 0x1000;
                if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
                else if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
            }
        }
        else
        {
            cf->obj2.base.yspeed -= 0x1000;
            if (cf->obj2.base.yspeed < -0x1000)
                cf->obj2.base.yspeed = -0x1000;
        }
        if (unkBC == unkB8)
        {
            cf->unkBA = unkBE;
            --cf->unkBC;
        }
        else
        {
            cf->unkB8 = unkBC;
            ++cf->unkBE;
        }
        break;
    case 0x25:
        if (unkBC >= unkB8)
        {
            if (cf->obj2.base.flags & 1)
            {
                cf->obj2.base.xspeed -= 0x1000;
                if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
                else if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
            }
            else
            {
                cf->obj2.base.xspeed += 0x1000;
                if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
                else if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
            }
        }
        else
        {
            if (cf->obj2.base.flags & 1)
            {
                cf->obj2.base.xspeed += 0x1000;
                if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
                else if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
            }
            else
            {
                cf->obj2.base.xspeed -= 0x1000;
                if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
                else if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
            }
        }
        cf->unkB8 = unkBC;
        cf->unkBC += unkBC - unkB8;
        break;
    case 0x26:
        if (unkBC == unkB8)
        {
            if (cf->obj2.base.flags & 1)
            {
                cf->obj2.base.xspeed -= 0x1000;
                if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
                else if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
            }
            else
            {
                cf->obj2.base.xspeed += 0x1000;
                if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
                else if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
            }
        }
        else
        {
            cf->obj2.base.yspeed += 0x1000;
            if (cf->obj2.base.yspeed > 0x1000)
                cf->obj2.base.yspeed = 0x1000;
        }
        if (unkBC == unkB8)
        {
            cf->unkBA = unkBE;
            ++cf->unkBC;
        }
        else
        {
            cf->unkB8 = unkBC;
            --cf->unkBE;
        }
        break;
    case 0x27:
        if (unkBC == unkB8)
        {
            if (cf->obj2.base.flags & 1)
            {
                cf->obj2.base.xspeed += 0x1000;
                if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
                else if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
            }
            else
            {
                cf->obj2.base.xspeed -= 0x1000;
                if (cf->obj2.base.xspeed > -0x1000)
                    cf->obj2.base.xspeed = -0x1000;
                else if (cf->obj2.base.xspeed < 0x1000)
                    cf->obj2.base.xspeed = 0x1000;
            }
        }
        else
        {
            cf->obj2.base.yspeed += 0x1000;
            if (cf->obj2.base.yspeed > 0x1000)
                cf->obj2.base.yspeed = 0x1000;
        }
        if (unkBC == unkB8)
        {
            cf->unkBA = unkBE;
            --cf->unkBC;
        }
        else
        {
            cf->unkB8 = unkBC;
            --cf->unkBE;
        }
        break;
    }
    if (!(cf->obj2.base.flags & 0x800))
    {
        cf->obj2.base.unk48 = cf->obj2.base.x;
        cf->obj2.base.unk4C = cf->obj2.base.y;
        cf->obj2.base.x += cf->obj2.base.xspeed;
        cf->obj2.base.y -= cf->obj2.base.yspeed;
    }
    if (cf->obj2.base.xspeed < 0)
    {
        cf->obj2.base.xspeed += 0x7FFF;
        if (cf->obj2.base.xspeed > 0)
            cf->obj2.base.xspeed = 0;
    }
    else
    {
        cf->obj2.base.xspeed -= 0x7FFF;
        if (cf->obj2.base.xspeed < 0)
            cf->obj2.base.xspeed = 0;
    }
    if (cf->obj2.base.yspeed < 0)
    {
        cf->obj2.base.yspeed += 0x7FFF;
        if (cf->obj2.base.yspeed > 0)
            cf->obj2.base.yspeed = 0;
    }
    else
    {
        cf->obj2.base.yspeed -= 0x7FFF;
        if (cf->obj2.base.yspeed < 0)
            cf->obj2.base.yspeed = 0;
    }
}

static void sub_0811E2EC(struct CannonFuse *cf)
{
    u16 unkBC = cf->unkBC;
    u16 unkBE = cf->unkBE;
    u16 unkB8 = cf->unkB8;
    u16 unkBA = cf->unkBA;
    u8 var = sub_080023E4(cf->obj2.base.unk56, unkBC, unkBE);

    cf->obj2.base.sprite.unk1B = 0xFF;
    switch (var)
    {
    case 0x22:
        if (unkBE >= unkBA)
            cf->obj2.unk83 = 1;
        else
            cf->obj2.unk83 = 2;
        break;
    case 0x23:
        if (unkBC == unkB8)
            cf->obj2.unk83 = 0xA;
        else
            cf->obj2.unk83 = 9;
        break;
    case 0x24:
        if (unkBC == unkB8)
            cf->obj2.unk83 = 0xC;
        else
            cf->obj2.unk83 = 0xB;
        break;
    case 0x25:
        if (unkBC >= unkB8)
            cf->obj2.unk83 = 3;
        else
            cf->obj2.unk83 = 4;
        break;
    case 0x26:
        if (unkBC == unkB8)
            cf->obj2.unk83 = 5;
        else
            cf->obj2.unk83 = 6;
        break;
    case 0x27:
        if (unkBC == unkB8)
            cf->obj2.unk83 = 7;
        else
            cf->obj2.unk83 = 8;
        break;
    }
}

static void sub_0811E3D0(struct CannonFuse *cf)
{
    u16 unkBC = cf->unkBC;
    u16 unkBE = cf->unkBE;
    u16 unkB8 = cf->unkB8;
    u16 unkBA = cf->unkBA;
    u8 var = sub_080023E4(cf->obj2.base.unk56, unkBC, unkBE);

    cf->obj2.base.sprite.unk1B = 0xFF;
    switch (var)
    {
    case 0x22:
        if (unkBE >= unkBA)
            cf->obj2.unk83 = 0xD;
        else
            cf->obj2.unk83 = 0xE;
        break;
    case 0x23:
        if (unkBC == unkB8)
            cf->obj2.unk83 = 0x16;
        else
            cf->obj2.unk83 = 0x15;
        break;
    case 0x24:
        if (unkBC == unkB8)
            cf->obj2.unk83 = 0x18;
        else
            cf->obj2.unk83 = 0x17;
        break;
    case 0x25:
        if (unkBC >= unkB8)
            cf->obj2.unk83 = 0xF;
        else
            cf->obj2.unk83 = 0x10;
        break;
    case 0x26:
        if (unkBC == unkB8)
            cf->obj2.unk83 = 0x11;
        else
            cf->obj2.unk83 = 0x12;
        break;
    case 0x27:
        if (unkBC == unkB8)
            cf->obj2.unk83 = 0x13;
        else
            cf->obj2.unk83 = 0x14;
        break;
    }
}

static void sub_0811E4B4(struct CannonFuse *cf)
{
    struct CannonFuse *cfAlias = cf;
    s16 var;
    u8 unk56;

    if (cfAlias->unkC2++ > 3)
    {
        PlaySfx(&cf->obj2.base, SE_08D5B948);
        cfAlias->unkC2 = 0;
    }
    if (cf->obj2.base.flags & 2)
    {
        u16 r1, r2;
        s32 var2, x22 = 0x22;

        sub_0811DDFC(cfAlias);
        r1 = cfAlias->unkBC;
        r2 = cfAlias->unkBE;
        var2 = sub_080023E4(cfAlias->obj2.base.unk56, cfAlias->unkBC, cfAlias->unkBE);
        if (var2 > 0x27) var = 0;
        else if (var2 < x22) var = 0;
        else var = var2;
        if (var)
        {
            sub_0811E2EC(cfAlias);
            unk56 = cfAlias->obj2.base.unk56;
            sub_080023E4(unk56, cfAlias->unkBC, cfAlias->unkBE);
            sub_08001408(unk56,
                sub_08002624(unk56, cfAlias->unkBC, cfAlias->unkBE, 0),
                0, 0);
        }
        else if (cfAlias->unkB6 & 1)
        {
            cfAlias->unkB6 &= ~1;
            ++cfAlias->unkBE;
            cf->obj2.base.yspeed -= 0x1000;
            if (cf->obj2.base.yspeed < -0x1000)
                cf->obj2.base.yspeed = -0x1000;
            if (!(cf->obj2.base.flags & 0x800))
            {
                cf->obj2.base.unk48 = cf->obj2.base.x;
                cf->obj2.base.unk4C = cf->obj2.base.y;
                cf->obj2.base.x += cf->obj2.base.xspeed;
                cf->obj2.base.y -= cf->obj2.base.yspeed;
            }
            if (cf->obj2.base.xspeed < 0)
            {
                cf->obj2.base.xspeed += 0x7FFF;
                if (cf->obj2.base.xspeed > 0)
                    cf->obj2.base.xspeed = 0;
            }
            else
            {
                cf->obj2.base.xspeed -= 0x7FFF;
                if (cf->obj2.base.xspeed < 0)
                    cf->obj2.base.xspeed = 0;
            }
            if (cf->obj2.base.yspeed < 0)
            {
                cf->obj2.base.yspeed += 0x7FFF;
                if (cf->obj2.base.yspeed > 0)
                    cf->obj2.base.yspeed = 0;
            }
            else
            {
                cf->obj2.base.yspeed -= 0x7FFF;
                if (cf->obj2.base.yspeed < 0)
                    cf->obj2.base.yspeed = 0;
            }
            sub_0811E2EC(cfAlias);
            unk56 = cfAlias->obj2.base.unk56;
            sub_080023E4(unk56, cfAlias->unkBC, cfAlias->unkBE);
            sub_08001408(unk56,
                sub_08002624(unk56, cfAlias->unkBC, cfAlias->unkBE, 0),
                0, 0);
        }
        else
        {
            cf->obj2.unk78 = sub_0811E890;
            cf->obj2.base.flags |= 0x400;
        }
    }
    ++cf->obj2.base.counter;
}

static void sub_0811E6FC(struct CannonFuse *cf)
{
    struct CannonFuse *cfAlias = cf;
    u8 unk56;

    if (cf->obj2.base.flags & 2)
    {
        if (!(cf->unkB6 & 1))
        {
            unk56 = cfAlias->obj2.base.unk56;
            sub_080023E4(unk56, cfAlias->unkBC, cfAlias->unkBE);
            sub_08001408(unk56,
                sub_08002624(unk56, cfAlias->unkBC, cfAlias->unkBE, 1),
                0, 0);
        }
        sub_0811DDFC(cf);
        if (cfAlias->unkB6 & 1)
        {
            cfAlias->unkB6 &= ~1;
            ++cfAlias->unkBE;
            cf->obj2.base.yspeed -= 0x1000;
            if (cf->obj2.base.yspeed < -0x1000)
                cf->obj2.base.yspeed = -0x1000;
            if (!(cf->obj2.base.flags & 0x800))
            {
                cf->obj2.base.unk48 = cf->obj2.base.x;
                cf->obj2.base.unk4C = cf->obj2.base.y;
                cf->obj2.base.x += cf->obj2.base.xspeed;
                cf->obj2.base.y -= cf->obj2.base.yspeed;
            }
            if (cf->obj2.base.xspeed < 0)
            {
                cf->obj2.base.xspeed += 0x7FFF;
                if (cf->obj2.base.xspeed > 0)
                    cf->obj2.base.xspeed = 0;
            }
            else
            {
                cf->obj2.base.xspeed -= 0x7FFF;
                if (cf->obj2.base.xspeed < 0)
                    cf->obj2.base.xspeed = 0;
            }
            if (cf->obj2.base.yspeed < 0)
            {
                cf->obj2.base.yspeed += 0x7FFF;
                if (cf->obj2.base.yspeed > 0)
                    cf->obj2.base.yspeed = 0;
            }
            else
            {
                cf->obj2.base.yspeed -= 0x7FFF;
                if (cf->obj2.base.yspeed < 0)
                    cf->obj2.base.yspeed = 0;
            }
            cf->obj2.base.flags &= ~0x400;
            sub_0811E3D0(cfAlias);
        }
        else
        {
            s32 var2, x22 = 0x22;
            s16 var;
            u16 r1 = cfAlias->unkBC, r2 = cfAlias->unkBE;

            var2 = sub_080023E4(cfAlias->obj2.base.unk56, cfAlias->unkBC, cfAlias->unkBE);
            if (var2 > 0x27) var = 0;
            else if (var2 < x22) var = 0;
            else var = var2;
            if (var)
                sub_0811E3D0(cfAlias);
            else
            {
                cf->obj2.unk78 = sub_0811DD94;
                cf->obj2.unk83 = 0;
            }
        }
    }
    ++cf->obj2.base.counter;
}

static void sub_0811E890(struct CannonFuse *cf)
{
    if (!(cf->unkB6 & 1))
    {
        if (cf->obj2.base.flags & 2)
        {
            cf->unkB8 = cf->unkBC;
            cf->unkBA = cf->unkBE;
            cf->unkB4 = 0x23;
            cf->unkB6 = 5;
            ++*sub_08002888(SUB_08002888_ENUM_UNK_1, cf->obj2.object->unk4, gCurLevelInfo[cf->obj2.base.unk56].unk65E);
        }
    }
    else if (!cf->unkB4--)
        cf->obj2.unk78 = sub_0811E6FC;
    ++cf->obj2.base.counter;
}

static void sub_0811E92C(struct CannonFuse *cf)
{
    if (cf->obj2.base.flags & 0x40000)
    {
        cf->obj2.unk78 = sub_0811E4B4;
        cf->unkB6 = 3;
        sub_08094930(&cf->obj2.base);
    }
    ++cf->obj2.base.counter;
}
