#include "shadow_kirby.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "code_0806F780.h"
#include "sir_kibble.h"
#include "constants/kirby.h"

static void sub_08023910(struct Task *);
static void sub_08023990(struct Object2 *);
static void sub_08023A6C(struct Object2 *);
static bool32 sub_08023B14(struct Object2 *);
static void sub_08023D68(struct Object2 *);
static void sub_08024998(struct Object2 *);
static struct ObjectBase *sub_08024A18(struct Object2 *);
static void sub_08024B44(void);
static void nullsub_114(struct Object2 *);
static void sub_08024FE4(struct Object2 *);
static void sub_08025034(struct Object2 *);
static void sub_08025040(struct Object2 *);
static void sub_08025098(struct Object2 *);
static void sub_080250EC(struct Object2 *);
static void sub_080250F8(struct Object2 *);
static void sub_08025134(struct Object2 *);
static void sub_08025170(struct Object2 *);
static void sub_080251AC(struct Object2 *);
static void sub_08025214(struct Object2 *);
static void sub_0802525C(struct Task *);

const struct Unk_02021590 gUnk_082DEAA4[] = {
    {     0, 0, 0 },
    {     1, 0, 0 },
    {     2, 0, 0 },
    {     4, 0, 0 },
    {     4, 1, 0 },
    {     4, 2, 0 },
    {     0, 1, 0 },
    {  0x11, 2, 0 },
    { 0x2C3, 3, 0 },
    {  0x4B, 0, 0 },
    {  0x4B, 1, 0 },
    {  0x4B, 2, 0 },
    {  0xCA, 0, 0 },
    {  0xCA, 1, 0 },
    {  0xCA, 2, 0 },
    { 0x1A1, 0, 0 },
    { 0x1A1, 1, 0 },
    { 0x259, 1, 0 },
    { 0x259, 4, 0 },
    {   0xA, 0, 0 },
};

// TODO: the array depends on object type order
#define OBJ_OFFSET(type) ((type) - OBJ_SMALL_FOOD)

static const u8 gUnk_082DEAF4[] = {
    OBJ_OFFSET(OBJ_TOMATO),
    OBJ_OFFSET(OBJ_TOMATO),
    OBJ_OFFSET(OBJ_TOMATO),
    OBJ_OFFSET(OBJ_TOMATO),
    OBJ_OFFSET(OBJ_1UP),
    OBJ_OFFSET(OBJ_1UP),
    OBJ_OFFSET(OBJ_1UP),
    OBJ_OFFSET(OBJ_1UP),
    OBJ_OFFSET(OBJ_INVINCIBLE_CANDY),
    OBJ_OFFSET(OBJ_INVINCIBLE_CANDY),
    OBJ_OFFSET(OBJ_INVINCIBLE_CANDY),
    OBJ_OFFSET(OBJ_INVINCIBLE_CANDY),
    OBJ_OFFSET(OBJ_TOMATO),
    OBJ_OFFSET(OBJ_1UP),
    OBJ_OFFSET(OBJ_INVINCIBLE_CANDY),
    OBJ_OFFSET(OBJ_TOMATO),
};

void *CreateShadowKirby(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_IWRAM, sub_08023910);
    struct Object2 *tmp = TaskGetStructPtr(t), *sk = tmp;

    InitObject(sk, template, a2);
    sk->base.unkC |= 1;
    sk->base.flags |= 0x2000000;
    sk->base.unk5C &= ~7;
    sk->base.unk5C |= 2;
    sub_0803E2B0(&sk->base, -5, -5, 5, 6);
    sub_0803E308(&sk->base, -6, -6, 6, 8);
    ObjectInitSprite(sk);
    if (sk->object->unk16
        && (1 << (sk->object->unk16 - 1)) & gShadowKirbyEncounters)
        sk->base.flags |= 0x1000;
    if (!sk->object->subtype1)
        gUnk_08351648[sk->type].unk10(sk);
    else
        sub_08023A6C(sk);
    return sk;
}

static void sub_08023910(struct Task *t)
{
    struct Object2 *sk = TaskGetStructPtr(t);

    if (sk->object->unk16)
        gShadowKirbyEncounters |= 1 << (sk->object->unk16 - 1);
    if (sk->object->unk4)
        ++*sub_08002888(SUB_08002888_ENUM_UNK_1, sk->object->unk4, gCurLevelInfo[sk->base.unk56].unk65E);
    ObjectDestroy(t);
}

static void sub_08023990(struct Object2 *sk)
{
    sk->kirby3 = sub_0803D368(&sk->base);
    sk->base.flags |= 4;
    if (!(sk->kirby3->base.base.base.unkC & 0x8000)
        && sk->base.roomId == sk->kirby3->base.base.base.roomId
        && Macro_08039430_1(&sk->kirby3->base.base.base, sk))
    {
        Macro_081003EC(sk, &sk->kirby3->base.base.base);
        sub_08024FE4(sk);
    }
}

static void sub_08023A6C(struct Object2 *sk)
{
    ObjectSetFunc(sk, 0, nullsub_114);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    sk->base.flags |= 0x200;
    sk->base.flags |= 0x400;
    sk->base.flags &= ~2;
    sk->base.sprite.unk8 &= ~0x3000; // useless
    sk->base.sprite.unk8 |= 0x3000;
    switch (sk->object->subtype1)
    {
    default:
        sk->kirbyAbility = KIRBY_ABILITY_NORMAL;
        break;
    case 2:
        sk->kirbyAbility = KIRBY_ABILITY_FIRE;
        break;
    case 3:
        sk->kirbyAbility = KIRBY_ABILITY_ICE;
        break;
    case 4:
        sk->kirbyAbility = KIRBY_ABILITY_CUTTER;
        break;
    case 5:
        sk->kirbyAbility = KIRBY_ABILITY_BOMB;
        break;
    }
    if (!sub_08023B14(sk))
        sk->base.flags |= 0x1000;
}

static bool32 sub_08023B14(struct Object2 *sk)
{
    u8 i;
    u8 var = 0;

    switch (sk->object->subtype2)
    {
    case 0:
        break;
    case 1:
        for (i = 0; i < gUnk_0203AD44; ++i)
            if (gKirbys[i].base.base.base.roomId == sk->base.roomId)
                ++var;
        if (sk->object->unk12 < var)
            return FALSE;
        break;
    case 2:
        for (i = 0; i < gUnk_0203AD44; ++i)
            if (gKirbys[i].base.base.base.roomId == sk->base.roomId
                && sk->object->unk12 <= gKirbys[i].lives)
                var = 1;
        if (!var)
            return FALSE;
        break;
    case 3:
        for (i = 0; i < gUnk_0203AD44; ++i)
            if (gKirbys[i].base.base.base.roomId == sk->base.roomId
                && gKirbys[i].maxHp == gKirbys[i].hp)
                var = 1;
        if (!var)
            return FALSE;
        break;
    }
    ObjectSetFunc(sk, 0, sub_08023990);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    sk->base.flags |= 0x40;
    return TRUE;
}

static void sub_08023C68(struct Object2 *sk)
{
    ObjectSetFunc(sk, 1, sub_08023D68);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    sk->base.flags &= ~0x400;
    if (sk->object->subtype1 != 6)
        sk->base.flags &= ~0x200;
    sk->base.flags &= ~2;
    sk->base.flags &= ~0x40;
    sk->kirby3 = sub_0803D368(&sk->base);
    if (sk->object->unk14)
        sk->base.flags |= 1;
    sk->unk85 = 0;
    PlaySfx(&sk->base, SE_08D5E40C);
}

static void sub_08023D68(struct Object2 *sk)
{

    switch (sk->unk83)
    {
    case 1:
        sk->base.flags |= 4;
        if (sk->base.flags & 1)
        {
            sk->base.xspeed += 0x20;
            if (sk->base.xspeed < -0x14C)
                sk->base.xspeed = -0x14C;
            else if (sk->base.xspeed > 0x14C)
                sk->base.xspeed = 0x14C;
        }
        else
        {
            sk->base.xspeed -= 0x20;
            if (sk->base.xspeed > 0x14C)
                sk->base.xspeed = 0x14C;
            else if (sk->base.xspeed < -0x14C)
                sk->base.xspeed = -0x14C;
        }
        if ((abs(sk->kirby3->base.base.base.x - sk->base.x) < 0x3000
            && abs(sk->kirby3->base.base.base.y - sk->base.y) < 0x3000)
            || sk->object->subtype1 == 6)
        {
            if (++sk->base.counter > 0x10)
                sub_08025040(sk);
        }
        else if (++sk->base.counter > 0x20)
        {
            if (sk->unk85)
                sub_08025040(sk);
            else
            {
                sk->base.xspeed = 0;
                sk->base.yspeed = 0x200;
                sk->unk83 = 3;
            }
        }
        break;
    case 3:
        sk->base.flags |= 4;
        if (sk->base.yspeed < 0x80)
        {
            sk->unk83 = 4;
            sk->base.flags &= ~2;
        }
        break;
    case 4:
        if (sk->base.flags & 2)
        {
            sk->unk83 = 5;
            sk->base.sprite.unk8 &= ~0x3000;
            sk->base.sprite.unk8 |= 0x2000;
            sk->unk85 = 1;
        }
        break;
    case 5:
        sk->base.flags |= 4;
        if (sk->base.unk62 & 4)
        {
            sk->unk83 = 6;
            sk->base.counter = 0;
        }
        break;
    case 6:
        if (++sk->base.counter > 3)
        {
            sk->base.counter = 0;
            sk->unk83 = 1;
        }
        break;
    }
}

static void sub_08023F34(struct Object2 *sk)
{
    bool32 var = FALSE;

    if (abs(sk->kirby3->base.base.base.x - sk->base.x) < 0x3000
        && abs(sk->kirby3->base.base.base.y - sk->base.y) < 0x3000)
        var = TRUE;
    if ((++sk->base.counter > 0x20 && var)
        || sk->base.counter > 0x80)
    {
        switch (sk->object->subtype1)
        {
        case 1:
        default:
            sk->base.counter = 0;
            if (++sk->unk9F > 3)
            {
                sub_08024F54(sk);
                return;
            }
            break;
        case 2:
            sub_080250F8(sk);
            return;
        case 3:
            sub_08025134(sk);
            return;
        case 4:
            sub_08025170(sk);
            return;
        case 5:
            sub_080251AC(sk);
            return;
        case 6:
        {
            bool32 var = FALSE;
            u8 i;

            if (!gUnk_0203AD34)
            {
                i = gUnk_0203AD44;
                while (i--)
                {
                    if (gKirbys[i].ability == KIRBY_ABILITY_MASTER)
                        var = TRUE; // we can break here
                }
                if (!var)
                {
                    sub_080251AC(sk);
                    return;
                }
            }
            sub_08024F54(sk);
            return;
        }
        }
    }
    if (sk->object->subtype1 != 6)
    {
        u8 i;

        for (i = 0; i < gUnk_0203AD44; ++i)
        {
            struct Kirby *kirby = gKirbys + i;

            if (kirby->base.base.base.roomId == sk->base.roomId)
            {
                if (abs(kirby->base.base.base.x - sk->base.x) < 0x3000
                    && abs(kirby->base.base.base.y - sk->base.y) < 0x3000
                    && kirby->base.base.base.unkC & 0x80)
                {
                    sub_08024F54(sk);
                    break;
                }
            }
        }
    }
}

static void sub_080240F0(struct Object2 *sk)
{
    switch (sk->unk83)
    {
    case 9:
        if (sk->base.flags & 2)
        {
            sk->base.flags &= ~2;
            sk->unk83 = 0xA;
        }
        break;
    case 0xA:
        sk->base.flags |= 4;
        if (!(sk->base.unk1 & 3))
        {
            sk->base.flags ^= 1;
            sub_080C3694(sk, sk->unk9E);
            if (++sk->unk9E > 4)
                sk->unk9E = 0;
            sk->base.flags ^= 1;
        }
        if (++sk->base.counter > 0x30)
        {
            sk->base.flags &= ~2;
            sk->unk83 = 0xB;
            sk->base.counter = 0;
        }
        break;
    case 0xB:
        if (sk->base.flags & 2)
        {
            sk->base.flags &= ~2;
            sk->unk83 = 0;
            sk->base.counter = 0;
        }
        break;
    case 0:
        if (++sk->base.counter > 0x10)
            sub_08024F54(sk);
        break;
    }
}

static void sub_080241C0(struct Object2 *sk)
{
    switch (sk->unk83)
    {
    case 0xC:
        if (sk->base.flags & 2)
        {
            sk->base.flags &= ~2;
            sk->unk83 = 0xD;
        }
        break;
    case 0xD:
        sk->base.flags |= 4;
        if (!(sk->base.unk1 & 3))
        {
            sk->base.flags ^= 1;
            sub_080BB080(sk, sk->unk9E);
            sub_080BB470(sk);
            sub_080BB804(sk, sk->unk9E);
            if (++sk->unk9E > 2)
                sk->unk9E = 0;
            sk->base.flags ^= 1;
        }
        if (++sk->base.counter > 0x30)
        {
            sk->base.flags &= ~2;
            sk->unk83 = 0xE;
        }
        break;
    case 0xE:
        if (sk->base.flags & 2)
        {
            sk->base.flags &= ~2;
            sk->unk83 = 0;
            sk->base.counter = 0;
        }
        break;
    case 0:
        if (++sk->base.counter > 0x10)
            sub_08024F54(sk);
        break;
    }
}

static void sub_08024298(struct Object2 *sk)
{
    switch (sk->unk83)
    {
    case 0xF:
        if (sk->base.flags & 2)
        {
            sk->base.flags &= ~2;
            sk->unk83 = 0x10;
            sk->base.counter = 0;
        }
        break;
    case 0x10:
        if (sk->base.flags & 2)
        {
            if (!sk->base.counter)
            {
                sk->base.flags ^= 1;
                sub_080B1850(sk);
                sk->base.flags ^= 1;
            }
            if (++sk->base.counter > 0x58)
            {
                sk->base.flags &= ~2;
                sk->unk83 = 0;
                sk->base.counter = 0;
            }
        }
        break;
    case 0:
        if (++sk->base.counter > 0x10)
            sub_08024F54(sk);
        break;
    }
}

static void sub_08024334(struct Object2 *sk)
{
    switch (sk->unk83)
    {
    case 0x11:
        if (sk->base.flags & 2)
        {
            sk->base.flags &= ~2;
            sk->unk83 = 0x12;
        }
        break;
    case 0x12:
        if (sk->base.unk1 == 4 && sk->object->subtype1 == 6 && !sk->base.counter)
            sub_08024A18(sk);
        if (sk->base.flags & 2)
        {
            if (++sk->base.counter > 0x20)
            {
                sk->base.flags &= ~2;
                sk->unk83 = 0;
                sk->base.counter = 0;
            }
        }
        break;
    case 0:
        if (++sk->base.counter > 0x10)
            sub_08024F54(sk);
        break;
    }
}

static void sub_080243D4(struct Object2 *sk)
{
    if (sk->base.flags & 1)
    {
        if (sk->object->x < sk->base.x >> 8)
        {
            sk->base.x = sk->object->x * 0x100;
            sub_08025098(sk);
            return;
        }
    }
    else
    {
        if (sk->object->x > sk->base.x >> 8)
        {
            sk->base.x = sk->object->x * 0x100;
            sub_08025098(sk);
            return;
        }
    }
    switch (sk->unk83)
    {
    case 2:
        sk->base.flags |= 4;
        if (sk->base.flags & 1)
        {
            sk->base.xspeed += 0x20;
            if (sk->base.xspeed < -0x1DC)
                sk->base.xspeed = -0x1DC;
            else if (sk->base.xspeed > 0x1DC)
                sk->base.xspeed = 0x1DC;
        }
        else
        {
            sk->base.xspeed -= 0x20;
            if (sk->base.xspeed > 0x1DC)
                sk->base.xspeed = 0x1DC;
            else if (sk->base.xspeed < -0x1DC)
                sk->base.xspeed = -0x1DC;
        }
        if (sk->unk85)
        {
            sk->base.yspeed = 0x200;
            sk->unk83 = 3;
        }
        break;
    case 3:
        sk->base.flags |= 4;
        if (sk->base.flags & 1)
        {
            sk->base.xspeed += 0x20;
            if (sk->base.xspeed < -0x1DC)
                sk->base.xspeed = -0x1DC;
            else if (sk->base.xspeed > 0x1DC)
                sk->base.xspeed = 0x1DC;
        }
        else
        {
            sk->base.xspeed -= 0x20;
            if (sk->base.xspeed > 0x1DC)
                sk->base.xspeed = 0x1DC;
            else if (sk->base.xspeed < -0x1DC)
                sk->base.xspeed = -0x1DC;
        }
        if (sk->unk85)
        {
            if (++sk->base.counter > 4)
            {
                sk->base.sprite.unk8 &= ~0x3000;
                sk->base.sprite.unk8 |= 0x3000;
                sk->unk85 = 0;
            }
        }
        else if (sk->base.yspeed < 0x80)
        {
            sk->unk83 = 4;
            sk->base.flags &= ~2;
        }
        break;
    case 4:
        if (sk->base.flags & 2)
            sk->unk83 = 5;
        break;
    case 5:
        sk->base.flags |= 4;
        if (sk->base.flags & 1)
        {
            sk->base.xspeed += 0x20;
            if (sk->base.xspeed < -0x1DC)
                sk->base.xspeed = -0x1DC;
            else if (sk->base.xspeed > 0x1DC)
                sk->base.xspeed = 0x1DC;
        }
        else
        {
            sk->base.xspeed -= 0x20;
            if (sk->base.xspeed > 0x1DC)
                sk->base.xspeed = 0x1DC;
            else if (sk->base.xspeed < -0x1DC)
                sk->base.xspeed = -0x1DC;
        }
        if (sk->base.unk62 & 4)
        {
            sk->unk83 = 6;
            sk->base.counter = 0;
        }
        break;
    case 6:
        if (sk->base.xspeed < 0)
        {
            sk->base.xspeed += 0xE;
            if (sk->base.xspeed > 0)
                sk->base.xspeed = 0;
        }
        else
        {
            sk->base.xspeed -= 0xE;
            if (sk->base.xspeed < 0)
                sk->base.xspeed = 0;
        }
        if (++sk->base.counter > 3)
        {
            sk->base.counter = 0;
            sk->unk83 = 2;
        }
        break;
    }
}

static void sub_08024644(struct Object2 *sk)
{
    s32 x = sk->base.flags & 1 ? (sk->base.x >> 8) + 6 : (sk->base.x >> 8) - 6;
    s32 y = (sk->base.y >> 8) - 8;
    struct Object2 *bomb = CreateObjTemplateAndObj(sk->base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_THROWN_BOMB_2,
        0, 0, sk->base.flags & 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    bomb->base.parent = sk;
}

void *sub_0802470C(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *bomb = TaskGetStructPtr(t);

    InitObject(bomb, template, a2);
    bomb->base.unkC |= 2;
    sub_0803E2B0(&bomb->base, -5, -3, 5, 8);
    sub_0803E308(&bomb->base, -6, -4, 6, 0xA);
    if (bomb->subtype)
        bomb->base.flags |= 1;
    ObjectInitSprite(bomb);
    bomb->base.sprite.unk14 = 0x6C0;
    bomb->unk9E = 0;
    bomb->unk7C = sub_0809F840;
    gUnk_08351648[bomb->type].unk10(bomb);
    return bomb;
}

static void sub_080247E0(struct Object2 *bomb)
{
    struct Kirby *kirby = ((struct Object2 *)(bomb->base.parent))->kirby3;
    s32 var;

    ObjectSetFunc(bomb, 0, sub_08024998);
    var = abs(kirby->base.base.base.x - bomb->base.x) >> 8;
    if (var < 0x32)
    {
        bomb->base.xspeed = (Rand16() & 0x7F) + 0x140;
        bomb->base.yspeed = 0x180;
    }
    else if (var < 0x64)
    {
        bomb->base.xspeed = (Rand16() & 0x7F) + 0x1C0;
        bomb->base.yspeed = 0x200;
    }
    else if (var < 0x96)
    {
        bomb->base.xspeed = (Rand16() & 0x7F) + 0x240;
        bomb->base.yspeed = 0x280;
    }
    else
    {
        bomb->base.xspeed = (Rand16() & 0x7F) + 0x2C0;
        bomb->base.yspeed = 0x300;
    }
    if (bomb->base.flags & 1)
        bomb->base.xspeed = -bomb->base.xspeed;
    bomb->base.flags &= ~0x40;
    PlaySfx(&bomb->base, SE_08D5866C);
}

static void sub_08024998(struct Object2 *bomb)
{
    bomb->base.flags |= (((struct Object2 *)bomb->base.parent)->base.flags & 1);
    bomb->base.flags |= 4;
    if (bomb->base.xspeed < 0)
    {
        bomb->base.xspeed += 4;
        if (bomb->base.xspeed > 0)
            bomb->base.xspeed = 0;
    }
    else
    {
        bomb->base.xspeed -= 4;
        if (bomb->base.xspeed < 0)
            bomb->base.xspeed = 0;
    }
    if (!(bomb->base.counter & 7))
        sub_08097E9C(&bomb->base, -6, -6);
    ++bomb->base.counter;
    if (bomb->base.unk62)
    {
        bomb->base.flags |= 0x1000;
        sub_0809DA30(bomb);
        bomb->base.parent = NULL;
    }
}

static struct ObjectBase *sub_08024A18(struct Object2 *sk)
{
    struct Task *t = TaskCreate(sub_08024B44, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0802525C);
    struct ObjectBase *objBase = TaskGetStructPtr(t);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = sk->base.x;
    objBase->y = sk->base.y;
    objBase->parent = sk;
    objBase->counter = 0;
    objBase->roomId = sk->base.roomId;
    objBase->unk56 = sk->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 0;
    objBase->flags |= 0x200;
    objBase->flags |= 0x10000000;
    objBase->unk68 = 0x80;
    objBase->unk5C |= 0x80000;
    objBase->x = sk->base.x - 0x600;
    objBase->y = sk->base.y;
    objBase->yspeed = 0x380;
    objBase->xspeed = -0x100;
    sub_0803E2B0(objBase, -4, -4, 4, 4);
    sub_0803E308(objBase, -4, -4, 4, 8);
    sub_080708DC(objBase, &objBase->sprite, 0x10, 0x3A6, 0, 0x1A);
    gUnk_0203AD34 = 1;
    return objBase;
}

static void sub_08024B44(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Sprite sprite;

    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x10, &objBase->sprite);
    if (!sub_0806F780(objBase))
    {
        objBase->flags |= 4;
        if (!(objBase->flags & 0x100))
        {
            objBase->yspeed -= 0x20;
            if (objBase->yspeed < -0x300)
                objBase->yspeed = -0x300;
            if (!(objBase->flags & 0x800))
            {
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
            sub_0809D8C8(objBase);
            if (objBase->unk62 & 4)
            {
                objBase->sprite.animId = 0x3A7;
                objBase->sprite.variant = 0;
                objBase->flags |= 0x100;
                objBase->flags &= ~0x200;
                objBase->yspeed = 0;
            }
        }
        if (!(objBase->flags & 0x200))
        {
            SetPointerSomething(objBase);
            if (objBase->flags & 0x40000)
            {
                struct Kirby *kirby = objBase->unk6C;

                objBase->flags &= ~0x40000;
                if (kirby
                    && !kirby->base.base.base.unk0
                    && kirby->base.base.base.unk56 < gUnk_0203AD30
                    && kirby->ability == KIRBY_ABILITY_NORMAL
                    && kirby->unkDD == (KIRBY_ABILITY_NORMAL | 0)
                    && kirby->hp > 0
                    && kirby->unkD4 != 39
                    && kirby->unkD4 <= 122
                    && !kirby->unk110
                    && !(kirby->base.base.base.flags & 0x3800B00)
                    && kirby->base.base.unk78 != sub_0804BD00)
                {
                    kirby->unkDD = KIRBY_ABILITY_MASTER;
                    sub_08054C0C(kirby);
                    kirby->unkD4 = 15;
                    objBase->flags |= 0x1000;
                    return;
                }
            }
        }
        sub_0806F8BC(objBase);
    }
}

void sub_08024E20(struct Object2 *sk)
{
    struct Object2 *obj2;
    u8 type;
    u8 subtype1 = 0;

    if (sk->unk80 != 4
        && !(gUnk_0203AD10 & 4)
        && !(sk->base.unkC & 0x10000))
    {
        sk->base.unkC |= 0x10000;
        type = gUnk_082DEAF4[Rand16() & 0xF] + OBJ_SMALL_FOOD;
        obj2 = CreateObjTemplateAndObj(sk->base.unk56, 1, 0x24, sk->base.x >> 8, sk->base.y >> 8, 0, 0x1F, 0, 0, type,
            subtype1, 0, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
        sub_0808AE30(&sk->base, 0, 0x2B4, 0);
    }
}

// not referenced
static void sub_08024F2C(struct Object2 *sk)
{
    if (!sk->object->subtype1)
    {
        sk->base.flags |= 0x2008340;
        sk->unk78 = nullsub_114;
    }
}

void sub_08024F54(struct Object2 *sk)
{
    ObjectSetFunc(sk, 2, sub_080243D4);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    sk->base.flags &= ~0x400;
    if (sk->object->subtype1 != 6)
        sk->base.flags &= ~0x200;
    sk->base.flags &= ~2;
    if (sk->object->x > sk->base.x >> 8)
        sk->base.flags |= 1;
    else
        sk->base.flags &= ~1;
}

void sub_08024FC0(struct Object2 *bomb)
{
    ObjectSetFunc(bomb, 0, sub_08025214);
    bomb->base.flags |= 0x40;
}

static void nullsub_114(struct Object2 *sk)
{}

static void sub_08024FE4(struct Object2 *sk)
{
    ObjectSetFunc(sk, 0, sub_08025034);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    sk->base.flags |= 0x200;
    sk->base.flags &= ~0x400;
    sk->base.flags &= ~2;
    sk->base.flags &= ~0x40;
    if (sk->object->unk14)
        sk->base.flags |= 1;
}

static void sub_08025034(struct Object2 *sk)
{
    sub_08023C68(sk);
}

static void sub_08025040(struct Object2 *sk)
{
    ObjectSetFunc(sk, 0, sub_08023F34);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    if (sk->object->subtype1 != 6)
        sk->base.flags &= ~0x200;
    sk->base.flags &= ~2;
    sk->unk9F = 0;
    if (sk->object->subtype1 == 6)
        sk->base.counter = 0x80;
}

static void sub_08025098(struct Object2 *sk)
{
    ObjectSetFunc(sk, 0, sub_080250EC);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    sk->base.flags |= 0x400;
    sk->base.flags |= 0x200;
    sk->base.flags &= ~2;
    if (sk->object->unk14)
        sk->base.flags |= 1;
    else
        sk->base.flags &= ~1;
}

static void sub_080250EC(struct Object2 *sk)
{
    sk->base.flags |= 0x1000;
}

static void sub_080250F8(struct Object2 *sk)
{
    ObjectSetFunc(sk, 9, sub_080240F0);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    sk->base.flags &= ~0x200;
    sk->base.flags &= ~2;
    sk->unk9F = 0;
}

static void sub_08025134(struct Object2 *sk)
{
    ObjectSetFunc(sk, 0xC, sub_080241C0);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    sk->base.flags &= ~0x200;
    sk->base.flags &= ~2;
    sk->unk9F = 0;
}

static void sub_08025170(struct Object2 *sk)
{
    ObjectSetFunc(sk, 0xF, sub_08024298);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    sk->base.flags &= ~0x200;
    sk->base.flags &= ~2;
    sk->unk9F = 0;
}

static void sub_080251AC(struct Object2 *sk)
{
    ObjectSetFunc(sk, 0x11, sub_08024334);
    sk->base.xspeed = 0;
    sk->base.yspeed = 0;
    if (sk->object->subtype1 != 6)
        sk->base.flags &= ~0x200;
    sk->base.flags &= ~2;
    sk->unk9F = 0;
    if (sk->object->subtype1 != 6)
    {
        sk->base.flags ^= 1;
        sub_08024644(sk);
        sk->base.flags ^= 1;
    }
}

static void sub_08025214(struct Object2 *bomb)
{
    bomb->base.flags |= (((struct Object2 *)bomb->base.parent)->base.flags & 1);
    bomb->base.flags |= 4;
    if (!(bomb->base.counter & 7))
        sub_08097E9C(&bomb->base, -6, -6);
    if (++bomb->base.counter > 6)
        sub_080247E0(bomb);
}

static void sub_0802525C(struct Task *t)
{
    gUnk_0203AD34 = 0;
    sub_0803DCCC(t);
}
