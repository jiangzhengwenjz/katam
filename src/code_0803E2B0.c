#include "global.h"
#include "data.h"
#include "functions.h"
#include "dark_mind.h"
#include "code_08019CB8.h"

// TODO: define file boundaries

void sub_0803EA90(struct Kirby *, u16, const s32 *, const u32 *);
void sub_0803EE18(void);
void sub_0803F324(struct Kirby *);
void sub_0803F46C(struct Kirby *);
void sub_0803F790(struct Kirby *);
void sub_0803FBB4(struct Kirby *);
void nullsub_120(struct Task *);
void sub_0803FE74(struct Kirby *);

struct Kirby *sub_0803D368(struct ObjectBase *r6)
{
    u8 i = 0; // redundant initialization
    u32 sp00 = 0, sl = 0;
    bool32 sp04 = TRUE;
    s32 r7 = INT_MAX;

    for (i = 0; i < gUnk_0203AD44 && (i < gUnk_0203AD30 || r7 == INT_MAX); ++i)
    {
        if (r6->unk60__42 == gKirbys[i].base.base.base.unk60__42)
        {
            s32 r3 = abs(r6->x - gKirbys[i].base.base.base.x);
            s32 r1 = abs(r6->y - gKirbys[i].base.base.base.y);

            if (r3 + r1 < r7)
            {
                if (gKirbys[i].base.base.base.unkC & 0x8000)
                {
                    if (gKirbys[i].hp > 0)
                        sl = i;
                }
                else
                {
                    r7 = r3 + r1;
                    sp00 = i;
                    sp04 = FALSE;
                }
            }
        }
    }
    return &gKirbys[!sp04 ? sp00 : sl];
}

struct Kirby *sub_0803D46C(struct ObjectBase *sb)
{
    u8 j = 0, r4 = 0, k = 0; // don't need to initialize r4 and k here
    u16 i;
    s32 r7;
    u8 array[4] = {0};

    for (k = 0; k < gUnk_0203AD44; ++k)
    {
        if (sb->unk60__42 == gKirbys[k].base.base.base.unk60__42 && gKirbys[k].hp > 0)
        {
            array[k] = j;
            ++j;
        }
    }
    if (j)
    {
        r7 = Rand16();
        for (i = 0; i < j - 1; ++i)
        {
            if (r7 < 0x10000 / j * (i + 1))
                break;
        }
    }
    else
    {
        r4 = 0; // redundant
        for (k = 0; k < gUnk_0203AD44; ++k)
        {
            if (sb->unk60__42 == gKirbys[k].base.base.base.unk60__42)
            {
                array[k] = j;
                ++j;
            }
        }
        r7 = Rand16();
        for (i = 0; i < j - 1; ++i)
        {
            if (r7 < 0x10000 / j * (i + 1))
                break;
        }
    }
    r4 = i;
    return &gKirbys[r4];
}

struct Kirby *sub_0803D5CC(struct ObjectBase *r5)
{
    u8 i = 0; // redundant initialization
    u32 sp00 = 0, r8 = 0;
    bool32 sb = TRUE;
    s32 r6 = INT_MAX;

    for (i = 0; i < gUnk_0203AD44 && (i < gUnk_0203AD30 || r6 == INT_MAX); ++i)
    {
        if (r5->unk60__42 == gKirbys[i].base.base.base.unk60__42)
        {
            s32 r2 = abs(r5->x - gKirbys[i].base.base.base.x);

            if (r2 < r6)
            {
                if (gKirbys[i].base.base.base.unkC & 0x8000)
                {
                    if (gKirbys[i].hp > 0)
                        r8 = i;
                }
                else
                {
                    r6 = r2;
                    sp00 = i;
                    sb = FALSE;
                }
            }
        }
    }
    return &gKirbys[!sb ? sp00 : r8];
}

bool16 sub_0803D6B4(struct Object2 *ip)
{
    u16 i = 0;
    s16 sb, r8;
    struct LevelInfo *li;
    struct Object *r2;

    if (ip->base.unk56 == 0xFF)
        return TRUE;
    sb = ip->base.x >> 8;
    r8 = ip->base.y >> 8;
    if (ip->base.flags & 0x2000000)
        return FALSE;
    if (ip->base.x >= gCurLevelInfo[ip->base.unk56].unk50 + 0x4000
        || ip->base.x <= gCurLevelInfo[ip->base.unk56].unk48 - 0x4000
        || ip->base.y >= gCurLevelInfo[ip->base.unk56].unk54 + 0x4000
        || ip->base.y <= gCurLevelInfo[ip->base.unk56].unk4C - 0x4000)
        return TRUE;
    for (; i < gUnk_0203AD44; ++i)
    {
        li = &gCurLevelInfo[i];
        if (ip->base.unk60__42 == li->currentRoom)
        {
            s32 a, b, c, d, e, f;

            c = sb - 120;
            d = li->unkC >> 8;
            a = abs(c - d);
            if (a <= 168)
            {
                e = r8 - 80;
                f = li->unk10 >> 8;
                b = abs(e - f);
                if (b <= 128)
                    return FALSE;
            }
            if (ip->base.unkC & 0x100)
            {
                s32 a, b, c, d, e, f;

                r2 = ip->object;
                c = r2->x - 120;
                d = li->unkC >> 8;
                a = abs(c - d);
                if (a <= 168)
                {
                    e = r2->y - 80;
                    f = li->unk10 >> 8;
                    b = abs(e - f);
                    if (b <= 128)
                        return FALSE;
                }
            }
        }
    }
    return TRUE;
}

bool16 sub_0803D80C(struct ObjectBase *r1)
{
    u16 i = 0;
    s16 r5, r3;
    struct LevelInfo *li;

    if (r1->unk56 == 0xFF) return TRUE;
    r5 = r1->x >> 8;
    r3 = r1->y >> 8;
    if (r1->flags & 0x2000000)
        return FALSE;
    for (; i < gUnk_0203AD44; ++i)
    {
        li = &gCurLevelInfo[i];
        if (r1->unk60__42 == li->currentRoom)
        {
            s32 a, b, c, d, e, f;

            c = r5 - 120;
            d = li->unkC >> 8;
            a = abs(c - d);
            if (a > 168) continue;
            e = r3 - 80;
            f = li->unk10 >> 8;
            b = abs(e - f);
            if (b > 128) continue;
            return FALSE;
        }
    }
    return TRUE;
}

bool16 sub_0803D8AC(struct Object4 *r1)
{
    u16 i = 0;
    s16 r5, r3;
    struct LevelInfo *li;

    r5 = r5 = r1->unk34 >> 8;
    r3 = r1->unk38 >> 8;
    if (r1->flags & 0x2000000) // if (0)
        return FALSE;
    for (; i < gUnk_0203AD44; ++i)
    {
        li = &gCurLevelInfo[i];
        if (r1->unk60__42 == li->currentRoom)
        {
            s32 a, b, c, d, e, f;

            c = r5 - 120;
            d = li->unkC >> 8;
            a = abs(c - d);
            if (a > 168) continue;
            e = r3 - 80;
            f = li->unk10 >> 8;
            b = abs(e - f);
            if (b > 128) continue;
            return FALSE;
        }
    }
    return TRUE;
}

bool16 sub_0803D938(struct ObjectBase *r0)
{
    s16 r3 = r0->x >> 8, r4 = r0->y >> 8;
    s32 a, b, c, d, e, f;
    struct LevelInfo *li = &gCurLevelInfo[gUnk_0203AD3C];

    if (r0->unk60__42 != li->currentRoom)
        return TRUE;
    c = r3 - 120;
    d = li->unkC >> 8;
    a = abs(c - d);
    if (a > 135) return TRUE;
    e = r4 - 80;
    f = li->unk10 >> 8;
    b = abs(e - f);
    if (b > 95) return TRUE;
    return FALSE;
}

void sub_0803D9A8(struct ObjectBase *r8)
{
    struct Sprite *sprite = &r8->unk10;
    u8 tmp;

    if (sprite->unk0
        && (sprite->unkC || !r8->unk0)
        && !(r8->flags & 0x400)
        && gKirbys[gUnk_0203AD3C].base.base.base.unk60__42 == r8->unk60__42)
    {
        sprite->unk10 = (r8->x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r8->unk54;
        sprite->unk12 = (r8->y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r8->unk55;
        sprite->unk10 += gUnk_0203AD18[0];
        sprite->unk12 += gUnk_0203AD18[1];
        tmp = sprite->unk1C;
        sprite->unk1C = 0;
        sub_08155128(sprite);
        sprite->unk1C = tmp;
        if (r8->flags & 1)
            sprite->unk8 |= 0x400;
        else
            sprite->unk8 &= ~0x400;
        Macro_0803DBC8(r8, sprite);
    }
}

void sub_0803DAB8(struct ObjectBase *r8, struct Sprite *sprite)
{
    u8 tmp;

    if (sprite->unk0
        && (sprite->unkC || !r8->unk0)
        && !(r8->flags & 0x400)
        && gKirbys[gUnk_0203AD3C].base.base.base.unk60__42 == r8->unk60__42)
    {
        sprite->unk10 = (r8->x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r8->unk54;
        sprite->unk12 = (r8->y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r8->unk55;
        sprite->unk10 += gUnk_0203AD18[0];
        sprite->unk12 += gUnk_0203AD18[1];
        tmp = sprite->unk1C;
        sprite->unk1C = 0;
        sub_08155128(sprite);
        sprite->unk1C = tmp;
        if (r8->flags & 1)
            sprite->unk8 |= 0x400;
        else
            sprite->unk8 &= ~0x400;
        Macro_0803DBC8(r8, sprite);
    }
}

void sub_0803DBC8(struct Object4 *r8)
{
    struct Sprite *sprite = &r8->unkC;
    u8 tmp;

    if (r8->unkC.unk0 && !(r8->flags & 0x400)
        && gKirbys[gUnk_0203AD3C].base.base.base.unk60__42 == r8->unk60__42)
    {
        sprite->unk10 = (r8->unk34 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r8->unk40;
        sprite->unk12 = (r8->unk38 >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r8->unk41;
        sprite->unk10 += gUnk_0203AD18[0];
        sprite->unk12 += gUnk_0203AD18[1];
        tmp = sprite->unk1C;
        sprite->unk1C = 0;
        sub_08155128(sprite);
        sprite->unk1C = tmp;
        if (r8->flags & 1)
            sprite->unk8 |= 0x400;
        else
            sprite->unk8 &= ~0x400;
        Macro_0803DBC8(r8, sprite);
    }
}

void sub_0803DCCC(struct Task *t)
{
    struct ObjectBase *r0, *r4 = TaskGetStructPtr(t, r0);
    struct Object4 *r1 = TaskGetStructPtr(t, r1);

    // shared field for checking the struct type? 
    if (r4->unk0 == 3)
    {
        if (r1->unkC.unk0 >= 0x6014000 && !(r1->flags & 0x4000))
            sub_08157190(r1->unkC.unk0);
    }
    else
    {
        if (r4->unk10.unk0 >= 0x6014000 && !(r4->flags & 0x4000))
            sub_08157190(r4->unk10.unk0);
    }
}

u32 sub_0803DD58(u8 a1)
{
    u8 i;
    struct Sprite sprite;
    s32 var;

    if (gUnk_08351648[a1].unkC == 0xFFFFFFFF)
        return 0x6012000;
    for (i = 0; i < 8; ++i)
    {
        if (gUnk_02022E70[i] == 0xFFFF)
            break;
        if (gUnk_02022E70[i] == a1)
            return gUnk_02022E80[i];
    }
    gUnk_02022E70[i] = a1;
    gUnk_02022E80[i] = var = sub_081570B0(gUnk_08351648[a1].unkC);
    sprite.unk0 = gUnk_02022E80[i];
    sprite.unk14 = 0x280;
    sprite.unkC = gUnk_08351648[a1].unk14->unk0;
    sprite.unk1A = gUnk_08351648[a1].unk14->unk2;
    sprite.unk16 = 0;
    sprite.unk1B = 0xFF;
    sprite.unk1C = 0x10;
    sprite.unk1F = 0;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk8 = 0x42000;
    sprite.unk20[0].unk0 = -1;
    sub_08155128(&sprite);
    return var;
}

u32 sub_0803DE54(u32 ip, u16 r6, u8 r8)
{
    u8 i;
    struct Sprite sprite;
    s32 var;

    for (i = 0; i < 8; ++i)
    {
        if (gUnk_02022E70[i] == 0xFFFF)
            break;
        if (gUnk_02022E70[i] == r6 + 0x100)
            return gUnk_02022E80[i];
    }
    gUnk_02022E70[i] = r6 + 0x100;
    gUnk_02022E80[i] = var = sub_081570B0(ip);
    sprite.unk0 = gUnk_02022E80[i];
    sprite.unk14 = 0x280;
    sprite.unkC = r6;
    sprite.unk1A = r8;
    sprite.unk16 = 0;
    sprite.unk1B = 0xFF;
    sprite.unk1C = 0x10;
    sprite.unk1F = 0;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk8 = 0x42000;
    sprite.unk20[0].unk0 = -1;
    sub_08155128(&sprite);
    return var;
}

u8 sub_0803DF24(u16 r3)
{
    u8 i;

    if (!r3) return 0xF;
    if (r3 & 0x1000)
    {
        for (i = 0; i < gUnk_02022EA0; ++i)
        {
            if (gUnk_02022E60[i] == r3)
            {
                gUnk_02022E60[i] += 0x1000;
                return i + 8;
            }
        }
    }
    else
    {
        for (i = 0; i < gUnk_02022EA0; ++i)
            if (gUnk_02022E60[i] == r3)
                return i + 8;
    }
    return 0xFF;
}

extern const u16 gUnk_0834C5D0[];

u8 sub_0803DFAC(u16 r2, u8 r6)
{
    u8 r4;
    struct Sprite sprite;

    if (!r2) return 0xF;
    gUnk_02022E60[gUnk_02022EA0] = r2;
    ++gUnk_02022EA0;
    if (gUnk_02022EA0 >= 7) gUnk_02022EA0 = 7;
    r4 = gUnk_02022EA0 + 7;
    sprite.unk0 = 0x6000000;
    sprite.unkC = r2 & 0xFFF;
    sprite.unk1A = r6;
    sprite.unk1B = 0xFF;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.unk1F = r4 & 0xF;
    sprite.unk8 = 0x80000;
    sub_08155128(&sprite);
    sub_0803D280(0x10 * sprite.unk1F, 0x10);
    sub_0803D280(0x10 * r4, 0x10);
    return r4;
}

void sub_0803E050(u16 sl)
{
    struct Sprite sprite;
    u8 i;

    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        if (!(gKirbys[i].base.base.base.unkC & 0x200)
            && (sub_0806EFF8(&gKirbys[i]), (!gKirbys[i].unk103 && gKirbys[i].unkE0)))
        {
            sprite.unk0 = 0x6000000;
            sprite.unkC = gUnk_0834C5D0[gKirbys[i].unkE0 & 3];
            sprite.unk1A = gKirbys[i].unkE0 / 4;
            sprite.unk1B = 0xFF;
            sprite.unk10 = 0;
            sprite.unk12 = 0;
            sprite.unk14 = 0;
            sprite.unk16 = 0;
            sprite.unk1C = 0x10;
            sprite.unk1F = (i+4) & 0xF;
            sprite.unk8 = 0x80000;
            sub_08155128(&sprite);
            sub_0803D280(0x10 * sprite.unk1F, 0x10);
        }
    }
    sprite.unk0 = 0x6000000;
    sprite.unkC = 0x17;
    sprite.unk1A = 0;
    sprite.unk1B = 0xFF;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.unk1F = 0xE;
    sprite.unk8 = 0x80000;
    sub_08155128(&sprite);
    sub_0803D280(0x10 * sprite.unk1F, 0x10);
    sprite.unk0 = 0x6000000;
    sprite.unkC = 0x28A;
    sprite.unk1A = 0;
    sprite.unk1B = 0xFF;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.unk1F = 0xF;
    sprite.unk8 = 0x80000;
    sub_08155128(&sprite);
    sub_0803D280(0x10 * sprite.unk1F, 0x10);
    sub_0803D280(0xE0, 0x10);
    sub_0803D280(0xF0, 0x10);
    gUnk_02022EA0 = 0;
    sub_0803E4D4(8);
    sub_0803E4D4(9);
    sub_0803E4D4(10);
    sub_0803E4D4(11);
    sub_0803E4D4(12);
    sub_0803E4D4(13);
    sub_0803E4D4(14);
    if (sl == 0x396)
        sub_08113C90();
    gUnk_03002440 &= ~2;
}

bool8 sub_0803E210(struct ObjectBase *r3)
{
    if (r3->x + (r3->unk3E * 0x100) < gCurLevelInfo[r3->unk56].unk50 + 0x800
            && r3->x + (r3->unk3C * 0x100) > gCurLevelInfo[r3->unk56].unk48 - 0x800
        && r3->y + (r3->unk3F * 0x100) < gCurLevelInfo[r3->unk56].unk54 + 0x800
            && r3->y + (r3->unk3D * 0x100) > gCurLevelInfo[r3->unk56].unk4C - 0x800)
        return TRUE;
    else
        return FALSE;
}

void sub_0803E2B0(struct ObjectBase *arg0, s8 arg1, s8 arg2, s8 arg3, s8 arg4)
{
    arg0->unk38 = arg1;
    arg0->unk39 = arg2;
    arg0->unk3A = ((arg3 - arg1 < 0) ? arg1 - arg3 : arg3 - arg1) >> 1;
    arg0->unk3B = ((arg4 - arg2 < 0) ? arg2 - arg4 : arg4 - arg2) >> 1;
}

void sub_0803E308(struct ObjectBase *arg0, s8 arg1, s8 arg2, s8 arg3, s8 arg4)
{
    arg0->unk3C = arg1;
    arg0->unk3D = arg2;
    arg0->unk3E = arg3;
    arg0->unk3F = arg4;
}

bool8 sub_0803E324(struct ObjectBase *r4)
{
    u16 i;

    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        if (r4->unk60__42 == gKirbys[i].base.base.base.unk60__42)
        {
            r4->unk56 = gKirbys[i].base.base.base.unk56;
            return FALSE;
        }
    }
    return TRUE;
}

void sub_0803E380(struct ObjectBase *r4)
{
    CpuFill16(0, r4, sizeof(struct ObjectBase));
    r4->unk58 = 0;
    r4->kirby1 = NULL;
    r4->parent = NULL;
    r4->unk10.unk0 = 0;
    r4->unk10.unk20[0].unk0 = -1;
}

void sub_0803E3B0(struct Object4 *r1)
{
    CpuFill16(0, r1, sizeof(struct Object4));
}

bool8 sub_0803E3D0(struct ObjectBase *r4)
{
    u16 i;

    for (i = 0; i < gUnk_0203AD44; ++i)
        if (r4->unk60__42 == gCurLevelInfo[i].currentRoom)
            return FALSE;
    return TRUE;
}

void sub_0803E41C(void)
{
    u8 i;

    for (i = 0; i < 8; ++i)
    {
        gUnk_02022E80[i] = 0;
        gUnk_02022E70[i] = 0xFFFF;
    }
}

void sub_0803E458(void)
{
    u8 i;

    for (i = 0; i < 8; ++i)
    {
        if (gUnk_02022E80[i])
            sub_08157190(gUnk_02022E80[i]);
        gUnk_02022E80[i] = 0;
        gUnk_02022E70[i] = 0xFFFF;
    }
}

void sub_0803E498(void)
{
    gUnk_02022EA0 = 0;
    sub_0803E4D4(8);
    sub_0803E4D4(9);
    sub_0803E4D4(10);
    sub_0803E4D4(11);
    sub_0803E4D4(12);
    sub_0803E4D4(13);
    sub_0803E4D4(14);
}

void sub_0803E4D4(u8 x)
{
    if (x >= 8)
    {
        if (gUnk_02022E60[x-8] & 0x2000)
            gUnk_02022E60[x-8] -= 0x1000;
    }
}

bool8 sub_0803E504(struct ObjectBase *r3)
{
    if (r3->x < gCurLevelInfo[r3->unk56].unk50 && r3->x > gCurLevelInfo[r3->unk56].unk48
        && r3->y < gCurLevelInfo[r3->unk56].unk54 && r3->y > gCurLevelInfo[r3->unk56].unk4C)
        return TRUE;
    else
        return FALSE;
}

struct Unk_08350A3C
{
    u16 unk0;
    u8 unk2;
};

extern const struct Unk_08350A3C gUnk_08350A3C[];

void sub_0803E558(u8 r8)
{
    u16 colors[4];
    struct Sprite sprite;
    u16 r4 = gUnk_08350A3C[gKirbys[r8].unk103].unk0;

    sprite.unk0 = 0x6000000;
    sprite.unk1B = 0xFF;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.unk1F = r8;
    sprite.unk8 = 0x80000;
    if (r4)
    {
        if (gKirbys[r8].unk103 != 0x14)
        {
            gKirbys[r8].unk103 += 0;
            sprite.unkC = gUnk_08350A3C[gKirbys[r8].unk103].unk0;
            sprite.unk1A = gUnk_08350A3C[gKirbys[r8].unk103].unk2;
        }
        else if (gKirbys[r8].unkDF == 2)
        {
            sprite.unkC = 0x201;
            sprite.unk1A = 2;
        }
        else
        {
            sprite.unkC = gUnk_08350A3C[gKirbys[r8].unk103].unk0;
            sprite.unk1A = gUnk_08350A3C[gKirbys[r8].unk103].unk2;
        }
        if (gKirbys[r8].unk103 == 0xE && gKirbys[r8].unkD4 <= 0x37)
        {
            sprite.unkC = gUnk_08350A3C[gKirbys[r8].unk103].unk0;
            sprite.unk1A = gUnk_08350A3C[gKirbys[r8].unk103].unk2 + gKirbys[r8].unkDF;
            sub_08155128(&sprite);
            sub_0803D280(0x10 * sprite.unk1F, 0x10);
            return;
        }
    }
    else
    {
        sprite.unkC = 0x15;
        sprite.unk1A = gKirbys[r8].unkDF;
        sub_08155128(&sprite);
        sub_0803D280(0x10 * sprite.unk1F, 0x10);
        return;
    }
    sub_08155128(&sprite);
    CpuCopy16(&gObjPalette[0x10 * r8 + 0xC], colors, sizeof(colors));
    sprite.unkC = 0x15;
    sprite.unk1A = gKirbys[r8].unkDF;
    sub_08155128(&sprite);
    CpuCopy16(colors, &gObjPalette[0x10 * r8 + 0xC], sizeof(colors));
    sub_0803D280(0x10 * sprite.unk1F, 0x10);
    gKirbys[r8].base.base.base.unkC &= ~0x200;
}

void sub_0803E6B8(u8 r6, u16 r1, u8 r2)
{
    u16 colors[4];
    struct Sprite sprite;

    sprite.unk0 = 0x6000000;
    sprite.unk1B = 0xFF;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.unk1F = r6;
    sprite.unk8 = 0x80000;
    if (!r1)
    {
        sprite.unkC = 0x15;
        sprite.unk1A = gKirbys[r6].unkDF;
        sub_08155128(&sprite);
        sub_0803D280(0x10 * sprite.unk1F, 0x10);
    }
    else
    {
        sprite.unkC = r1;
        sprite.unk1A = r2;
        sub_08155128(&sprite);
        CpuCopy16(&gObjPalette[0x10 * r6 + 0xC], colors, sizeof(colors));
        sprite.unkC = 0x15;
        sprite.unk1A = gKirbys[r6].unkDF;
        sub_08155128(&sprite);
        CpuCopy16(colors, &gObjPalette[0x10 * r6 + 0xC], sizeof(colors));
        sub_0803D280(0x10 * sprite.unk1F, 0x10);
    }
}

void sub_0803E778(u8 r8, u16 r1, u8 r2)
{
    u16 colors[6];
    struct Sprite sprite;
    u16 colorBuf;

    sprite.unk0 = 0x6000000;
    sprite.unk1B = 0xFF;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.unk1F = r8;
    sprite.unk8 = 0x80000;
    if (!r1)
    {
        sprite.unkC = 0x15;
        sprite.unk1A = gKirbys[r8].unkDF;
        sub_08155128(&sprite);
        sub_0803D280(0x10 * sprite.unk1F, 0x10);
    }
    else
    {
        sprite.unkC = r1;
        sprite.unk1A = r2;
        sub_08155128(&sprite);
        CpuCopy16(&gObjPalette[0x10 * r8 + 0xA], colors, sizeof(colors));
        CpuCopy16(&gObjPalette[0x10 * r8 + 0x1], &colorBuf, sizeof(colorBuf));
        sprite.unkC = 0x15;
        sprite.unk1A = gKirbys[r8].unkDF;
        sub_08155128(&sprite);
        CpuCopy16(colors, &gObjPalette[0x10 * r8 + 0xA], sizeof(colors));
        CpuCopy16(&colorBuf, &gObjPalette[0x10 * r8 + 0x1], sizeof(colorBuf));
        sub_0803D280(0x10 * sprite.unk1F, 0x10);
    }
}

void sub_0803E868(u8 r4)
{
    struct Sprite sprite;

    if (gKirbys[r4].unk103 == 0xE)
    {
        sprite.unk0 = 0x6000000;
        sprite.unkC = 0x1A0;
        sprite.unk1A = 0xE;
        sprite.unk1B = 0xFF;
        sprite.unk10 = 0;
        sprite.unk12 = 0;
        sprite.unk14 = 0;
        sprite.unk16 = 0;
        sprite.unk1C = 0x10;
        sprite.unk1F = r4 & 0xF;
        sprite.unk8 = 0x80000;
        sub_08155128(&sprite);
        sub_0803D280(0x10 * sprite.unk1F, 0x10);
    }
    else
    {
        sprite.unk0 = 0x6000000;
        sprite.unkC = 0x15;
        sprite.unk1A = 0xE;
        sprite.unk1B = 0xFF;
        sprite.unk10 = 0;
        sprite.unk12 = 0;
        sprite.unk14 = 0;
        sprite.unk16 = 0;
        sprite.unk1C = 0x10;
        sprite.unk1F = r4 & 0xF;
        sprite.unk8 = 0x80000;
        sub_08155128(&sprite);
        sub_0803D280(0x10 * sprite.unk1F, 0x10);
    }
}

struct Kirby2
{
    u8 idx;
}; /* size = 4 */

void CreateKirby(u8 kirbyIdx, struct Kirby *kirby, u16 r5, const s32 *r6, const u32 *a5)
{
    struct Kirby2 *k2;
    struct Sprite *sprite;

    kirby->unkCC = TaskCreate(sub_0803EE18, sizeof(struct Kirby2), 0x3000, 0, nullsub_120);
    TaskGetStructPtr(kirby->unkCC, k2);
    k2->idx = kirbyIdx;
    sub_0803E380(&kirby->base.base.base);
    kirby->base.base.base.unk56 = kirbyIdx;
    sub_0803EA90(kirby, r5, r6, a5);
    sub_0806F260(kirby);
    if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
        kirby->base.other.unk7C[0].unk14 = kirby->base.other.unk7C[1].unk14 = kirby->base.base.base.unk10.unk14 = 0x3C0;
    else
    {
        kirby->base.base.base.unk10.unk14 = (kirby->base.base.base.unk56 + 0x10) * 0x40;
        kirby->base.other.unk7C[1].unk14 = (kirby->base.base.base.unk56 + 0x10) * 0x40;
        kirby->base.other.unk7C[0].unk14 = (kirby->base.base.base.unk56 + 0x10) * 0x40;
    }
    sprite = &kirby->base.base.base.unk10;
    sprite->unk0 = (kirbyIdx << 11) + 0x6010000;
    sprite->unkC = 0;
    sprite->unk1A = 0;
    sprite->unk1B = 0xFF;
    sprite->unk10 = kirby->base.base.base.x >> 8;
    sprite->unk12 = kirby->base.base.base.y >> 8;
    sprite->unk16 = 0;
    sprite->unk1C = 0x10;
    sprite->unk1F = kirbyIdx;
    sprite->unk8 = 0x42000;
    sprite->unk20[0].unk0 = -1;
    sprite = &kirby->base.other.unk7C[1];
    sprite->unk0 = (kirbyIdx << 11) + 0x6010200;
    sprite->unkC = 0;
    sprite->unk1A = 0;
    sprite->unk1B = 0xFF;
    sprite->unk10 = kirby->base.base.base.x >> 8;
    sprite->unk12 = kirby->base.base.base.y >> 8;
    sprite->unk16 = 0;
    sprite->unk1C = 0x10;
    sprite->unk1F = kirbyIdx + 4;
    sprite->unk8 = 0x42000;
    sprite = &kirby->base.other.unk7C[0];
    sprite->unk0 = 0x6012000;
    sprite->unkC = 0x29F;
    sprite->unk1A = 0;
    sprite->unk1B = 0xFF;
    sprite->unk10 = kirby->base.base.base.x >> 8;
    sprite->unk12 = kirby->base.base.base.y >> 8;
    sprite->unk16 = 0;
    sprite->unk1C = 0x10;
    sprite->unk1F = kirbyIdx;
    sprite->unk8 = 0xC2000;
    ++gUnk_0203AD44;
}

void sub_0803EA90(struct Kirby *kirby, u16 sl, const s32 *r2, const u32 *r3)
{
    kirby->base.base.base.unk0 = 0;
    kirby->base.base.base.parent = kirby;
    kirby->base.base.base.x = r2[0];
    kirby->base.base.base.y = r2[1];
    kirby->base.base.base.unk48 = r2[0];
    kirby->base.base.base.unk4C = r2[1];
    kirby->base.base.base.unk60__42 = 0xFFFF;
    if (r3)
    {
        kirby->base.base.base.unkC |= 0x800;
        kirby->base.base.base.flags |= 1;
    }
    else
    {
        kirby->base.base.base.unkC &= ~0x800;
        kirby->base.base.base.flags &= ~1;
    }
    kirby->unkD6 = 0;
    kirby->unkD8 = 0;
    kirby->unkD9 = 0;
    kirby->unkDA = 0;
    kirby->unkDB = 0;
    kirby->hp = kirby->maxHp = sub_08019F0C() + 6;
    kirby->lives = 2;
    if (gUnk_0203AD10 & 4)
        kirby->lives = 0;
    kirby->unkEC = 0;
    kirby->unkD4 = 0;
    kirby->base.base.unk78 = sub_0803FE74;
    kirby->unkDD = 0;
    kirby->unkDE = 0;
    kirby->unk103 = 0;
    kirby->battery = 3;
    kirby->unk104 = 0xFFFF;
    kirby->unkD0 = 0;
    kirby->unkD2 = 0;
    kirby->unkE6 = 0;
    kirby->unkE8 = 0;
    kirby->unkE1 = 0;
    kirby->unkE4 = 0;
    kirby->unkE5 = 0;
    kirby->unkE2 = 0;
    kirby->unkDB = 0;
    kirby->unkDA = 0;
    kirby->unkF0 = 0;
    kirby->unk110 = 0;
    kirby->unk10C = 0;
    kirby->unkF4 = 0;
    kirby->unkF6 = 0;
    kirby->unkF8 = 0;
    kirby->unkF1 = 0;
    kirby->unkFA = 0;
    kirby->unkFC = 0;
    kirby->unkFE = 0;
    sub_08002D40(0x321, &kirby->unkF2, &kirby->unkF3);
    if (kirby->base.base.base.unk56) // pointless
        kirby->unkE0 = 0;
    else
        kirby->unkE0 = 0;
    if (kirby->unkE0) // if (0)
        kirby->unkE0 |= kirby->base.base.base.unk56 << 2;
    if (gUnk_0203AD1C[kirby->base.base.base.unk56] != 0xFF)
        kirby->unkDF = gUnk_0203AD1C[kirby->base.base.base.unk56];
    else
        kirby->unkDF = kirby->base.base.base.unk56;
    kirby->unk106 = sl;
    kirby->unk108 = 4;
    kirby->unk10A = 4;
    kirby->unk1A5 = 0;
    kirby->unkD8 = 0;
    kirby->base.base.base.unk68 = 0x82;
    kirby->base.base.base.unk5C &= ~7;
    kirby->base.base.base.unk5C |= 2;
    kirby->base.base.base.unk64 = 0x180;
    kirby->base.base.base.unk66 = 0;
    kirby->base.base.base.unk63 = 1;
    if (kirby->unk103 == 0x17)
        sub_0803E308(&kirby->base.base.base, -3, 0, 3, 7);
    else
        sub_0803E308(&kirby->base.base.base, -6, -5, 6, 7);
    if (kirby->unk103 == 0x17)
        sub_0803E2B0(&kirby->base.base.base, -4, 0, 4, 7);
    else
        sub_0803E2B0(&kirby->base.base.base, -4, -2, 4, 7);
    kirby->unk118 = 0;
    kirby->unk11A = 0;
    kirby->unk11C = 0;
    kirby->unk11E = 0;
}

void sub_0803ED28(struct Kirby *kirby)
{
    kirby->unkD6 = 0;
    kirby->unkD4 = 0;
    kirby->base.base.unk78 = sub_0803FE74;
    kirby->unkDD = 0;
    kirby->unk103 = 0;
    kirby->unk1A5 = 0;
    kirby->unkD8 = 0;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    kirby->base.base.base.unk54 = 0;
    kirby->base.base.base.unk55 = 0;
    kirby->base.base.base.flags = 0;
    kirby->base.base.base.counter = 0;
    kirby->base.base.base.unk62 = 0;
    kirby->base.base.base.flags = 0;
    kirby->base.base.base.unk68 = 0x82;
    kirby->base.base.base.unk64 = 0x180;
    kirby->base.base.base.unk66 = 0;
    kirby->base.base.base.unk63 = 1;
    if (kirby->unk103 == 0x17)
        sub_0803E308(&kirby->base.base.base, -3, 0, 3, 7);
    else
        sub_0803E308(&kirby->base.base.base, -6, -5, 6, 7);
    if (kirby->unk103 == 0x17)
        sub_0803E2B0(&kirby->base.base.base, -4, 0, 4, 7);
    else
        sub_0803E2B0(&kirby->base.base.base, -4, -2, 4, 7);
    kirby->unk118 = 0;
    kirby->unk11A = 0;
    kirby->unk11C = 0;
}

void sub_0803EE18(void)
{
    bool32 sp00 = FALSE, r4, r1;
    struct Kirby2 *k2 = TaskGetStructPtr(gCurTask, k2);
    struct Kirby *kirby = &gKirbys[k2->idx];
    s32 r7 = kirby->unkD4;
    void (*func)(struct Kirby *);
    s32 x;
    u8 a;
    s32 r0;
    u16 *fake;

    kirby->base.base.base.unkC &= ~0x201494;
    if (kirby->unkE8 && kirby->unkE8->base.flags & 0x1000)
    {
        kirby->unkE8 = NULL;
        kirby->unkE6 = 0;
    }
    if (kirby->unk110
        && kirby->base.base.base.kirby1
        && kirby->base.base.base.kirby1->base.base.base.flags & 0x1000)
        kirby->base.base.base.kirby1 = NULL;
    if (Macro_0810B1F4(&kirby->base.base.base) && !(kirby->base.base.base.flags & 0x2000))
    {
        r4 = FALSE;
        r0 = kirby->unk103;
        fake = &kirby->unkD4;
        if (r0
            || kirby->unkE0
            || (kirby->base.base.base.unk58 & 2 && !(kirby->base.base.base.flags & 0x40)))
            r4 = TRUE;
        r1 = r4;
        if (r1)
        {
            if (!kirby->base.other.unk7C[1].unkC)
                r1 = FALSE;
            if (*fake > 122)
                r1 = FALSE;
            if (r1)
            {
                kirby->base.base.base.flags |= 0x4000;
                sub_0803DAB8(&kirby->base.base.base, &kirby->base.other.unk7C[1]);
                kirby->base.base.base.flags &= ~0x4000;
            }
        }
        kirby->base.base.base.flags |= 0x4000;
        sub_0803D9A8(&kirby->base.base.base);
        kirby->base.base.base.flags &= ~0x4000;
    }
    else
    {
        if (!(kirby->base.base.base.flags & 0x2000000))
            sub_0803F324(kirby);
        sub_0803FBB4(kirby);
        if (!(kirby->base.base.base.flags & 0x2000000))
        {
            func = kirby->base.base.unk78;
            func(kirby);
            if (func != kirby->base.base.unk78)
            {
                if (r7 != kirby->unkD4)
                {
                    kirby->base.base.base.unk1 = 0;
                    kirby->base.base.base.unk2 = 0;
                }
                if (Macro_0810B1F4(&kirby->base.base.base))
                {
                    if (kirby->base.base.base.flags & 0x2000)
                    {
                        kirby->unk11A = 0;
                        ((void (*)(struct Kirby *))kirby->base.base.unk78)(kirby);
                    }
                }
                else
                {
                    kirby->unk11A = 0;
                    ((void (*)(struct Kirby *))kirby->base.base.unk78)(kirby);
                }
            }
        }
        if (kirby->unk11A & 8
            && sub_080395D4()
            && !(gUnk_0203AD10 & 0xE0)
            && !(kirby->base.base.base.unkC & 0x10000000)
            && !(kirby->base.base.base.flags & 0x2000000))
        {
            kirby->unk11A &= ~8;
            gUnk_0203AD50 = kirby->base.base.base.unk56;
            sub_08039600(0);
        }
        if (!Macro_0810B1F4(&kirby->base.base.base)
            && kirby->unkE8)
        {
            x = kirby->unkE8->base.x - kirby->unkE8->base.unk48;
            if (kirby->unkE6
                && !(kirby->unkE8->base.flags & 0x800))
            {
                if (kirby->unkE6 < 0)
                {
                    kirby->unkE6 += 0x10;
                    if (kirby->unkE6 > 0)
                        kirby->unkE6 = 0;
                }
                else
                {
                    kirby->unkE6 -= 0x10;
                    if (kirby->unkE6 < 0)
                        kirby->unkE6 = 0;
                }
                if (abs(x - kirby->unkE6) >= 0x40)
                {
                    kirby->base.base.base.xspeed -= kirby->unkE6;
                    sp00 = TRUE;
                }
            }
        }
        sub_0803F790(kirby);
        if (kirby->unkF4)
            kirby->base.base.base.xspeed += kirby->unkF4;
        if (!(kirby->base.base.base.flags & 0x800))
        {
            kirby->base.base.base.unk48 = kirby->base.base.base.x;
            kirby->base.base.base.unk4C = kirby->base.base.base.y;
            kirby->base.base.base.x += kirby->base.base.base.xspeed;
            kirby->base.base.base.y -= kirby->base.base.base.yspeed;
            a = (kirby->base.base.base.unk58 & 2) ? 0x10 : 0x18;
            if (kirby->unkD0 || kirby->unkD2)
            {
                kirby->base.base.base.unkC |= 0x8000000;
                kirby->base.base.base.x += kirby->unkD0;
                kirby->base.base.base.y -= kirby->unkD2;
                kirby->unkFC = kirby->unkD0;
                kirby->unkFE = kirby->unkD2;
                if (kirby->unkD0 > 0)
                {
                    kirby->unkD0 -= a;
                    if (kirby->unkD0 < 0)
                        kirby->unkD0 = 0;
                }
                else if (kirby->unkD0 < 0)
                {
                    kirby->unkD0 += a;
                    if (kirby->unkD0 > 0)
                        kirby->unkD0 = 0;
                }
                if (kirby->unkD2 > 0)
                {
                    kirby->unkD2 -= a;
                    if (kirby->unkD2 < 0)
                        kirby->unkD2 = 0;
                }
                else if (kirby->unkD2 < 0)
                {
                    kirby->unkD2 += a;
                    if (kirby->unkD2 > 0)
                        kirby->unkD2 = 0;
                }
                if (kirby->base.base.base.flags & 0x100 || kirby->base.base.base.unkC & 0x8000)
                {
                    kirby->unkD2 = 0;
                    kirby->unkD0 = 0;
                }
            }
            else
            {
                kirby->base.base.base.unkC &= ~0x8000000;
                kirby->unkFC = kirby->unkD0;
                kirby->unkFE = kirby->unkD2;
            }
        }
        if (!(kirby->base.base.base.flags & 0x100))
            sub_08009DD8(kirby);
        if (kirby->unkF4)
        {
            kirby->base.base.base.xspeed -= kirby->unkF4;
            kirby->unkF4 = 0;
        }
        if (sp00)
            kirby->base.base.base.xspeed += kirby->unkE6;
        sub_0803F46C(kirby);
        if (kirby->unkE5) --kirby->unkE5;
        if (kirby->unk103 == 14
            && kirby->unkD4 <= 55
            && kirby->unkD4 != 19
            && !(gUnk_0203AD40 & 7))
            PlaySfx(&kirby->base.base.base, 179);
        kirby->base.base.base.unkC &= ~0x20100;
        kirby->base.base.base.flags &= ~0x40000;
    }
}
