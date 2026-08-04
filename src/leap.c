#include "leap.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "code_0806F780.h"
#include "constants/songs.h"

static void sub_080B024C(struct Object2 *);
static void sub_080B0290(struct Object2 *);
static void sub_080B0428(struct Object2 *);
static void sub_080B05C0(struct Object2 *);
static void sub_080B07E4(struct Object2 *);
void sub_080B0860(struct Object2 *);
static void sub_080B0938(void);
void sub_080B0A64(struct Object2 *);
static void sub_080B0C40(void);

extern const struct Unk_08353510 gUnk_08353D20[];
extern const struct Unk_08353510 gUnk_08353DBC[];
extern const struct Unk_08353510 gUnk_08353E58[];
extern const struct Kirby_110 gUnk_08353EF4[];

void *CreateLeap(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *leap = tmp;

    InitObject(leap, template, a2);
    leap->base.unkC |= 1;
    leap->base.unkC |= 4;
    leap->base.flags |= 0x40;
    leap->base.flags |= 0x800000;
    leap->base.flags &= ~0x20;
    leap->base.unk68 &= ~7;
    if (leap->base.x > leap->kirby3->base.base.base.x)
        leap->base.flags |= 1;
    else
        leap->base.flags &= ~1;
    sub_0803E2B0(&leap->base, -5, -5, 5, 6);
    sub_0803E308(&leap->base, -6, -6, 6, 8);
    ObjectInitSprite(leap);
    gUnk_08351648[leap->type].unk10(leap);
    leap->unk9E = 0;
    leap->unk7C = NULL;
    sub_080B0860(leap);
    return leap;
}

static void sub_080B024C(struct Object2 *leap)
{
    leap->base.flags |= 4;
    if (leap->base.counter == 8)
        leap->base.yspeed <<= 1;
    if (leap->base.counter > 0x10)
    {
        leap->base.counter = 0;
        leap->base.yspeed = -(leap->base.yspeed >> 1);
    }
    ++leap->base.counter;
}

static void sub_080B0290(struct Object2 *leap)
{
    leap->base.flags |= 4;
    if (!gUnk_08353D20[(u8)(leap->unk9F + 1)].unk8 && !leap->unk9E)
        leap->unk9F = 0xFF;
    if (!leap->unk9E)
    {
        ++leap->unk9F;
        if (!gUnk_08353D20[leap->unk9F].unk8)
            --leap->unk9F;
        leap->unk9E = gUnk_08353D20[leap->unk9F].unk8;
        if (gUnk_08353D20[leap->unk9F].unk9 != 0xFF)
            leap->unk83 = gUnk_08353D20[leap->unk9F].unk9;
        if (leap->unk9F)
        {
            if (gUnk_08353D20[leap->unk9F].unk0 != gUnk_08353D20[leap->unk9F - 1].unk0)
            {
                leap->base.xspeed = gUnk_08353D20[leap->unk9F].unk0;
                if (leap->base.flags & 1)
                    leap->base.xspeed = -leap->base.xspeed;
            }
            if (gUnk_08353D20[leap->unk9F].unk2 != gUnk_08353D20[leap->unk9F - 1].unk2)
                leap->base.yspeed = gUnk_08353D20[leap->unk9F].unk2;
        }
        else
        {
            leap->base.yspeed = gUnk_08353D20[leap->unk9F].unk2;
            leap->base.xspeed = gUnk_08353D20[leap->unk9F].unk0;
            if (leap->base.flags & 1)
                leap->base.xspeed = -leap->base.xspeed;
        }
    }
    if (leap->base.flags & 1)
        leap->base.xspeed -= gUnk_08353D20[leap->unk9F].unk4;
    else
        leap->base.xspeed += gUnk_08353D20[leap->unk9F].unk4;
    leap->base.yspeed += gUnk_08353D20[leap->unk9F].unk6;
    --leap->unk9E;
}

static void sub_080B0428(struct Object2 *leap)
{
    leap->base.flags |= 4;
    if (!gUnk_08353DBC[(u8)(leap->unk9F + 1)].unk8 && !leap->unk9E)
        leap->unk9F = 0xFF;
    if (!leap->unk9E)
    {
        ++leap->unk9F;
        if (!gUnk_08353DBC[leap->unk9F].unk8)
            --leap->unk9F;
        leap->unk9E = gUnk_08353DBC[leap->unk9F].unk8;
        if (gUnk_08353DBC[leap->unk9F].unk9 != 0xFF)
            leap->unk83 = gUnk_08353DBC[leap->unk9F].unk9;
        if (leap->unk9F)
        {
            if (gUnk_08353DBC[leap->unk9F].unk0 != gUnk_08353DBC[leap->unk9F - 1].unk0)
            {
                leap->base.xspeed = gUnk_08353DBC[leap->unk9F].unk0;
                if (leap->base.flags & 1)
                    leap->base.xspeed = -leap->base.xspeed;
            }
            if (gUnk_08353DBC[leap->unk9F].unk2 != gUnk_08353DBC[leap->unk9F - 1].unk2)
                leap->base.yspeed = gUnk_08353DBC[leap->unk9F].unk2;
        }
        else
        {
            leap->base.yspeed = gUnk_08353DBC[leap->unk9F].unk2;
            leap->base.xspeed = gUnk_08353DBC[leap->unk9F].unk0;
            if (leap->base.flags & 1)
                leap->base.xspeed = -leap->base.xspeed;
        }
    }
    if (leap->base.flags & 1)
        leap->base.xspeed -= gUnk_08353DBC[leap->unk9F].unk4;
    else
        leap->base.xspeed += gUnk_08353DBC[leap->unk9F].unk4;
    leap->base.yspeed += gUnk_08353DBC[leap->unk9F].unk6;
    --leap->unk9E;
}

static void sub_080B05C0(struct Object2 *leap)
{
    leap->base.flags |= 4;
    if (!gUnk_08353E58[(u8)(leap->unk9F + 1)].unk8 && !leap->unk9E)
        leap->unk9F = 0xFF;
    if (!leap->unk9E)
    {
        ++leap->unk9F;
        if (!gUnk_08353E58[leap->unk9F].unk8)
            --leap->unk9F;
        leap->unk9E = gUnk_08353E58[leap->unk9F].unk8;
        if (gUnk_08353E58[leap->unk9F].unk9 != 0xFF)
            leap->unk83 = gUnk_08353E58[leap->unk9F].unk9;
        if (leap->unk9F)
        {
            if (gUnk_08353E58[leap->unk9F].unk0 != gUnk_08353E58[leap->unk9F - 1].unk0)
            {
                leap->base.xspeed = gUnk_08353E58[leap->unk9F].unk0;
                if (leap->base.flags & 1)
                    leap->base.xspeed = -leap->base.xspeed;
            }
            if (gUnk_08353E58[leap->unk9F].unk2 != gUnk_08353E58[leap->unk9F - 1].unk2)
                leap->base.yspeed = gUnk_08353E58[leap->unk9F].unk2;
        }
        else
        {
            leap->base.yspeed = gUnk_08353E58[leap->unk9F].unk2;
            leap->base.xspeed = gUnk_08353E58[leap->unk9F].unk0;
            if (leap->base.flags & 1)
                leap->base.xspeed = -leap->base.xspeed;
        }
    }
    if (leap->base.flags & 1)
        leap->base.xspeed -= gUnk_08353E58[leap->unk9F].unk4;
    else
        leap->base.xspeed += gUnk_08353E58[leap->unk9F].unk4;
    leap->base.yspeed += gUnk_08353E58[leap->unk9F].unk6;
    --leap->unk9E;
}

bool8 sub_080B0758(struct Object2 *leap, struct Kirby *kirby)
{
    if (leap->unk83
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->animationIndex == 0x27
        || kirby->animationIndex > 0x7A
        || kirby->unk110
        || (kirby->base.base.base.flags & 0x03800B00))
        return FALSE;

    kirby->unk110 = gUnk_08353EF4;
    leap->kirby3 = kirby;
    ObjectSetFunc(leap, 2, sub_080B07E4);
    leap->base.xspeed = 0;
    leap->base.yspeed = 0;
    leap->base.flags &= ~2;
    leap->base.unk6C = kirby;
    return TRUE;
}

static void sub_080B07E4(struct Object2 *leap)
{
    if (leap->base.unk1 == 0x14)
        sub_080B0A64(leap);
    if (leap->base.flags & 2)
    {
        leap->base.flags |= 0x40;
        leap->base.flags &= ~0x20;
        if (leap->object->subtype1 == 0)
        {
            switch (leap->subtype)
            {
            case 1:
                ObjectSetFunc(leap, 0, sub_080B0428);
                break;
            case 2:
                ObjectSetFunc(leap, 0, sub_080B05C0);
                break;
            default:
                ObjectSetFunc(leap, 0, sub_080B0290);
                break;
            }
        }
        else
        {
            ObjectSetFunc(leap, 0, sub_080B024C);
            leap->base.yspeed = 0x80;
        }
    }
}

void sub_080B0860(struct Object2 *leap)
{
    struct Task *t = TaskCreate(sub_080B0938, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *shadow = tmp;

    sub_0803E380(shadow);
    shadow->unk0 = 2;
    shadow->x = leap->base.x;
    shadow->y = leap->base.y;
    shadow->parent = leap;
    shadow->counter = 0;
    shadow->roomId = leap->base.roomId;
    shadow->unk56 = leap->base.unk56;
    if (Macro_0810B1F4(shadow))
        shadow->flags |= 0x2000;
    shadow->flags |= 0x10010000;
    shadow->flags |= 0x2000000;
    shadow->unk68 |= 0x20;
    shadow->unk68 &= ~7;
    shadow->unk68 |= 3;
    shadow->unk5C |= 0x80000;
    sub_0803E2B0(shadow, -5, -6, 0xC, 8);
}

static void sub_080B0938(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *shadow = tmp;
    struct Object2 *leap = shadow->parent;

    if (shadow->roomId != 0xFFFF && leap->base.flags & 0x1000)
        shadow->roomId |= 0xFFFF;
    shadow->x = leap->base.x;
    shadow->y = leap->base.y;
    shadow->unk56 = leap->base.unk56;
    if (sub_0806F780(shadow))
        return;
    if (leap->base.flags & 1)
        shadow->flags |= 1;
    else
        shadow->flags &= ~1;
    if (leap->unk83 <= 1)
    {
        if (shadow->flags & 0x40000)
        {
            shadow->flags &= ~0x40000;
        }
        else if (!(shadow->flags & 0x200))
        {
            if (!(shadow->flags & 0x1200))
            {
                u32 temp = shadow->unk56 != 0xFF ? gCurLevelInfo[shadow->unk56].unk65E : 0xFF;

                if (temp != 0xFF)
                {
                    u8 idx;
                    u32 temp2 = temp * 0x40 + (shadow->unk0 - 1) * 0x20;

#ifndef NONMATCHING
                    asm("":::"memory");
#endif
                    idx = gUnk_02022EB0[temp][shadow->unk0 - 1]++ + temp2;
                    gUnk_02022F50[idx] = shadow;
                    gUnk_02022F50[idx + 1] = NULL;
                }
            }
        }
    }
}

void sub_080B0A64(struct Object2 *leap)
{
    struct Task *t = TaskCreate(sub_080B0C40, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *tmp = TaskGetStructPtr(t), *heart = tmp;
    u16 zero = 0; // required to match: the original ORs a register known to be 0 into flags

    sub_0803E3B0(heart);
    heart->unk0 = 3;
    heart->x = leap->base.x;
    heart->y = leap->base.y;
    heart->parent = leap;
    heart->roomId = leap->base.roomId;
    heart->unk3C = 0x20;
    heart->unk3E = 0x40;
    heart->y -= 0x800;
    heart->flags |= 0x4000;
    heart->flags |= zero;
    if (leap->base.flags & 1)
    {
        heart->x -= 0xC00;
        heart->unk3C = -heart->unk3C;
    }
    else
    {
        heart->flags |= 1;
        heart->x += 0xC00;
    }
    if (Macro_0810B1F4(&leap->base))
        heart->flags |= 0x2000;
    sub_080709F8(heart, &heart->sprite, 0xC, 0x313, 0, 0xC);
    heart->sprite.palId = 0;
    Macro_081050E8(heart, &heart->sprite, 0x312, 1);
    PlaySfx(&leap->base, SE_LEAP_KISS_ATTACK);
}

static void sub_080B0C40(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *heart = tmp;
    struct Object2 *leap;
    struct Sprite sprite;

    if (heart->flags & 0x1000)
    {
        TaskDestroy(gCurTask);
        return;
    }
    Macro_08107BA8_4(heart, &heart->sprite, &sprite, 0xC, &heart->sprite);
    Macro_081050E8(heart, &heart->sprite, 0x312, !heart->sprite.palId);
    Macro_0809E55C(heart);
    leap = heart->parent;
    if (leap)
    {
        if (leap->base.unk0 && leap->base.flags & 0x1000)
        {
            heart->parent = NULL;
            leap = NULL;
        }
        if (!leap)
            goto _080B0E70;
        if (Macro_0810B1F4(&leap->base) && !(heart->flags & 0x2000))
        {
            sub_0803DBC8(heart);
            return;
        }
    }
    else
    {
    _080B0E70:
        KirbySomething(heart);
    }
    if (++heart->unk4 > 0x30)
    {
        heart->flags |= 0x1000;
    }
    else
    {
        if (!(heart->flags & 0x800))
        {
            heart->x += heart->unk3C;
            heart->y -= heart->unk3E;
        }
        sub_0806FAC8(heart);
    }
}

void sub_080B0F28(struct Object2 *leap)
{
    leap->base.flags |= 0x40;
    leap->base.flags &= ~0x20;
    if (leap->object->subtype1 == 0)
    {
        switch (leap->subtype)
        {
        case 1:
            ObjectSetFunc(leap, 0, sub_080B0428);
            break;
        case 2:
            ObjectSetFunc(leap, 0, sub_080B05C0);
            break;
        default:
            ObjectSetFunc(leap, 0, sub_080B0290);
            break;
        }
    }
    else
    {
        ObjectSetFunc(leap, 0, sub_080B024C);
        leap->base.yspeed = 0x80;
    }
}
