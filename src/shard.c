#include "shard.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"
#include "random.h"
#include "trig.h"

struct Object4 *sub_0801C0A8(struct Shard *, u16);
void sub_0801C3B0(struct Shard *);
void sub_0801C3C4(struct Shard *);
void sub_0801C4F0(struct Shard *);

void *CreateShard(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Shard), 0x1000, 0, ObjectDestroy); // in IWRAM, weird
    struct Shard *tmp = TaskGetStructPtr(t), *shard = tmp;
    u16 i;

    InitObject(&shard->obj2, template, a2);
    shard->unkD4 = template->subtype1;
    shard->unkD6 = 0;
    shard->unkD8 = template->x;
    shard->unkDA = template->y;
    for (i = 0; i < 8; ++i)
        shard->obj4[i] = NULL;
    shard->obj2.base.flags |= 0x12218141;
    shard->obj2.base.unkC |= 1;
    shard->obj2.base.unk68 &= ~7;
    shard->obj2.base.unk5C |= ~7;
    shard->obj2.base.unk5C &= ~0x80;
    if (shard->unkD4 < 8)
    {
        sub_0803E2B0(&shard->obj2.base, -8, -8, 8, 8);
        sub_0803E308(&shard->obj2.base, -8, -8, 8, 8);
        shard->obj2.unk83 = shard->unkD4;
    }
    else
    {
        sub_0803E2B0(&shard->obj2.base, -0x10, -0x12, 0x10, 0x12);
        sub_0803E308(&shard->obj2.base, -0x10, -0x12, 0x10, 0x12);
        if (template->unk22 & 1)
        {
            shard->obj2.base.flags |= 0x400;
            shard->obj2.unk83 = 0xD;
        }
        else if (sub_08019D5C() < 8)
            shard->obj2.unk83 = 8;
        else
            shard->obj2.unk83 = 0xA;
    }
    ObjectInitSprite(&shard->obj2);
    if (shard->unkD4 < 8)
        shard->obj2.base.sprite.unk14 = 0x780;
    else
        shard->obj2.base.sprite.unk14 = 0x7C0;
    gUnk_08351648[shard->obj2.type].unk10(&shard->obj2);
    return shard;
}

bool32 sub_0801BA18(struct ObjectBase *objBase, bool32 a2)
{
    u16 i = 0;
    s32 vars[2] = { objBase->x - 0x7800, objBase->y - 0x5000 };

    for (; i < gUnk_0203AD30; ++i)
    {
        struct Kirby *kirby = gKirbys + i;

        if (!a2)
        {
            if (kirby->hp <= 0
                || kirby->base.base.base.roomId != objBase->roomId
                || sub_0805BEC4(kirby)
                || vars[0] > kirby->base.base.base.x
                || vars[0] + 0xF000 < kirby->base.base.base.x
                || vars[1] > kirby->base.base.base.y
                || vars[1] + 0xA000 < kirby->base.base.base.y)
                return FALSE;
        }
        else
        {
            if (kirby->hp <= 0)
            {
                if (kirby->lives) return FALSE;
            }
            else if (sub_0805BEC4(kirby)
                || vars[0] > kirby->base.base.base.x
                || vars[0] + 0xF000 < kirby->base.base.base.x
                || vars[1] > kirby->base.base.base.y
                || vars[1] + 0xA000 < kirby->base.base.base.y)
                return FALSE;
        }
    }
    return TRUE;
}

bool32 sub_0801BB10(struct Shard *shard)
{
    u16 i;
    struct LevelInfo *li = gCurLevelInfo + shard->obj2.base.unk56;

    for (i = 0; i < gUnk_0203AD30; ++i)
    {
        struct Kirby *kirby = gKirbys + i;

        if ((!(shard->obj2.object->unk22 & 2) && kirby->hp <= 0)
            || li->currentRoom != gCurLevelInfo[i].currentRoom
            || sub_0805BEC4(kirby))
            return FALSE;
    }
    return TRUE;
}

bool32 sub_0801BBA8(struct Shard *shard)
{
    u16 i;

    if (sub_08019D5C() == 8)
    {
        for (i = 0; i < 8; ++i)
        {
            if (shard->obj4[i])
                shard->obj4[i]->flags |= 0x1000;
            shard->obj4[i] = NULL;
        }
        return TRUE;
    }
    else
    {
        for (i = 0; i < 8; ++i)
        {
            if (sub_08019DA8(i) && !shard->obj4[i])
            {
                shard->obj4[i] = sub_0801C0A8(shard, i);
                shard->obj4[i]->sprite.unk14 = 0x780;
            }
        }
        return FALSE;
    }
}

void sub_0801BC28(struct Shard *shard)
{
    struct Shard *shardAlias = shard;
    bool32 r2;
    s32 vars[2];

    if (shardAlias->obj2.base.flags & 0x40000
        && !(shardAlias->obj2.base.flags & 0x1000))
    {
        if (((struct Kirby *)shardAlias->obj2.base.unk6C)->base.base.base.unk0)
            r2 = FALSE;
        else if (((struct Kirby *)shardAlias->obj2.base.unk6C)->base.base.base.unk56 >= gUnk_0203AD30)
            r2 = FALSE;
        else
            r2 = TRUE;
    }
    else
        r2 = FALSE;
    if (r2)
    {
        sub_0808AE30(&shardAlias->obj2.base, 0, 0x28E, 0);
        PlaySfx(&shardAlias->obj2.base, 500);
        shardAlias->obj2.base.flags |= 0x400;
        shardAlias->obj2.unk78 = sub_0801C4F0;
    }
    shard->unkD6 = (shard->unkD6 + 8) & 0x3FF;
    vars[0] = shard->unkD8 * 0x100;
    vars[1] = shard->unkDA * 0x100;
    vars[1] += 8 * (gSineTable[shard->unkD6] >> 6);
    shardAlias->obj2.base.xspeed = vars[0] - shardAlias->obj2.base.x;
    shardAlias->obj2.base.yspeed = shardAlias->obj2.base.y;
    shardAlias->obj2.base.yspeed -= vars[1];
    shard->obj2.base.flags |= 4;
}

void sub_0801BD68(struct Shard *shard)
{
    u8 array[4];
    struct Shard *shardAlias = shard;
    u8 count = 0;
    u16 roomId = shard->obj2.base.roomId;
    u16 i;

    for (i = 0; i < 4; ++i)
    {
        struct Kirby *kirby = gKirbys + i;
        if (roomId == kirby->base.base.base.roomId)
        {
            array[i] = count;
            ++count;
        }
    }
    for (i = 0; i < 4; ++i)
    {
        struct Kirby *kirby = gKirbys + i;

        if (roomId == kirby->base.base.base.roomId
            && !((shardAlias->unkE0 >> i) & 1))
        {
            sub_0804BD98(kirby, array[i], count, shardAlias->unkDC, gUnk_08352DBE[shard->obj2.object->subtype1][0], gUnk_08352DBE[shard->obj2.object->subtype1][1]);
            shardAlias->unkE0 |= 1 << i;
        }
    }
}

void sub_0801BE4C(struct Shard *shard) // see sub_0802AE9C
{
    struct Shard *shardAlias = shard;
    u16 i;

    if (!sub_0801BA18(&shard->obj2.base, (shard->obj2.object->unk22 >> 1) & 1))
        shard->obj2.unk78 = sub_0801C3C4;
    else
    {
        struct LevelInfo *li = &gCurLevelInfo[shard->obj2.base.unk56];
        s32 var[2] = { shard->obj2.base.x + shard->obj2.base.unk3C * 0x100, shard->obj2.base.y + shard->obj2.base.unk3D * 0x100 };
        s32 sp[2] = { (shard->obj2.base.unk3E - shard->obj2.base.unk3C) * 0x100, (shard->obj2.base.unk3F - shard->obj2.base.unk3D) * 0x100 };
        bool32 boolean;

        // fix regswap
        if (li)
            boolean = FALSE;
        else
            boolean = FALSE;
        boolean = FALSE;        
        for (i = 0; i < gUnk_0203AD30; ++i)
        {
            struct Kirby *kirby = gKirbys + i;

            if (li->currentRoom == gCurLevelInfo[i].currentRoom
                && kirby->unk118 & 0x40
                && kirby->base.base.base.unkC & 0x1000
                && var[0] <= kirby->base.base.base.x && var[0] + sp[0] >= kirby->base.base.base.x
                && var[1] <= kirby->base.base.base.y && var[1] + sp[1] >= kirby->base.base.base.y)
            {
                boolean = TRUE;
                break;
            }
#ifndef NONMATCHING
            asm(""::"r"(boolean)); // somehow use boolean
#endif
        }
        if (boolean && sub_0801BB10(shardAlias))
        {
            for (i = 0; i < gUnk_0203AD44; ++i)
            {
                if (gKirbys[i].hp > 0
                    && gCurLevelInfo[shard->obj2.base.unk56].currentRoom == gKirbys[i].base.base.base.roomId)
                    sub_0805BDF4(gKirbys + i, shard->obj2.object->unk1E, shard->obj2.object->unk1A, shard->obj2.object->unk1C);
            }
            shard->obj2.unk78 = sub_0801C3B0;
        }
        else
            shard->obj2.base.flags |= 4;
    }
}
