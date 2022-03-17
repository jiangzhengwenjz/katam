#include "global.h"
#include "data.h"
#include "functions.h"
#include "code_080023A4.h"
#include "dark_mind.h"
#include "kirby.h"
#include "code_08019CB8.h"
#include "code_08002848.h"
#include "bonus.h"

// TODO: define file boundaries

#define Macro_0803EA90_1(kirby) \
({ \
    if ((kirby)->unk103 == 23) \
        sub_0803E308(&(kirby)->base.base.base, -3, 0, 3, 7); \
    else \
        sub_0803E308(&(kirby)->base.base.base, -6, -5, 6, 7); \
})

#define Macro_0803EA90_2(kirby) \
({ \
    if ((kirby)->unk103 == 23) \
        sub_0803E2B0(&(kirby)->base.base.base, -4, 0, 4, 7); \
    else \
        sub_0803E2B0(&(kirby)->base.base.base, -4, -2, 4, 7); \
})

void sub_0803EA90(struct Kirby *, u16, const s32 *, const u32 *);
void sub_0803EE18(void);
void sub_0803F324(struct Kirby *);
void sub_0803F46C(struct Kirby *);
void sub_0803F790(struct Kirby *);
void sub_0803FBB4(struct Kirby *);
void nullsub_120(struct Task *);
void sub_0803FE74(struct Kirby *);
void sub_0803FF64(struct Kirby *);
void sub_08040868(struct Kirby *);
void sub_08040930(struct Kirby *);
void sub_080411E8(struct Kirby *);
void sub_080412AC(struct Kirby *);
void sub_08041B08(struct Kirby *);
void sub_08041C50(struct Kirby *);
void sub_080425F0(struct Kirby *);
void sub_08042D70(struct Kirby *);
void sub_08042E28(struct Kirby *);
void sub_08043360(struct Kirby *);
void sub_080435F8(struct Kirby *);
void sub_08043E68(struct Kirby *);
void sub_0804464C(struct Kirby *);
void sub_08044FD4(struct Kirby *);
void sub_080458FC(struct Kirby *);
void sub_08045A34(struct Kirby *);
void sub_080463BC(struct Kirby *);
void sub_080464AC(struct Kirby *);
void sub_08046D60(struct Kirby *);
void sub_08046E10(struct Kirby *);
void sub_080476C4(struct Kirby *);
void sub_08047814(struct Kirby *);
void sub_08047EF0(struct Kirby *);
void sub_0804805C(struct Kirby *);
void sub_080487AC(struct Kirby *);
void sub_080488E0(struct Kirby *);
void sub_08049130(struct Kirby *);
void sub_080491E4(struct Kirby *);
void sub_0804990C(struct Kirby *);
void sub_08049A60(struct Kirby *);
void sub_0804A650(struct Kirby *);
void sub_0804ACFC(struct Kirby *);
void sub_0804ADD4(struct Kirby *);
void sub_0804B198(struct Kirby *);
void sub_0804B5F4(struct Kirby *);
void sub_0804BA10(struct Kirby *);
void sub_0804BD00(struct Kirby *);
void sub_0804C300(struct Kirby *);
void sub_0804C410(struct Kirby *, s16);
void sub_0804C614(struct Kirby *);
void sub_0804CA58(struct Kirby *);
void sub_0804CAF0(struct Kirby *);
void sub_0804CD0C(struct Kirby *);
void sub_0804CE74(struct Kirby *);
void sub_0804D0A4(struct Kirby *);
void sub_0804D2DC(struct Kirby *);
void sub_0804D3B4(struct Kirby *);
void sub_0804D4E4(struct Kirby *);
void sub_0804D9D4(struct Kirby *);
void sub_0804DF44(struct Kirby *);
void sub_0804E60C(struct Kirby *);
void sub_0804EA18(struct Kirby *, s16, s16);
void sub_0804ECB4(struct Kirby *);
void sub_0804EDDC(struct Kirby *, u16);
void sub_0804F080(struct Kirby *);
void sub_0804F32C(struct Kirby *, s16, s16);
void sub_0804F3A8(struct Kirby *);
void sub_0804FBFC(struct Kirby *);
void sub_08050218(struct Kirby *);
void sub_080502E0(struct Kirby *);
void sub_08050884(struct Kirby *);
void sub_08050908(struct Kirby *);
void sub_08050AD4(struct Kirby *);
void sub_08050B44(struct Kirby *);
void sub_0805142C(struct Kirby *);
void sub_0805177C(struct Kirby *);
void sub_08052140(struct Kirby *);
void sub_08052F44(struct Kirby *);
void sub_080534D0(struct Kirby *);
void sub_0805405C(struct Kirby *);
void sub_080546A4(struct Kirby *);
void sub_08054950(struct Kirby *);
void sub_08054DBC(struct Kirby *);
void sub_0805509C(struct Kirby *);
void sub_080562D0(struct Kirby *);

extern const struct Unk_02021590 gUnk_0834D918[], gUnk_0834D940[], gUnk_0834EC24[];
extern const struct Unk_02021590 *const gUnk_08D60FB4[], *const gUnk_08D60FDC[];
extern const u8 gUnk_0834C134[], gUnk_0834C13E[];
extern const s16 gUnk_0834C160[]; // works as a 2D array
extern const u8 gUnk_0834C180[][2];
extern const u8 gUnk_0834C188[], gUnk_0834C18D[];
extern const u16 gUnk_0834C1BE[];
extern const u16 gUnk_0834C1DA[], gUnk_0834C20A[];
extern const u16 gUnk_0834C228[]; // works as a 2D array
extern const struct Unk_08357260 gUnk_0834C2A4[];
extern void (*const gUnk_0834C2AC[])(struct Kirby *);
extern void (*const gUnk_0834C318[])(struct Kirby *);
extern const u8 gUnk_0834C384[], gUnk_0834C394[], gUnk_0834C3A1[], gUnk_0834C3A9[], gUnk_0834C3B5[];
extern const s8 gUnk_0834C3C5[][2], gUnk_0834C3DB[][2];
extern const s16 gUnk_0834C3F6[];
extern const struct Unk_02021590 gUnk_08350A3C[];

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

#define Macro_0803E920(kirby) \
({ \
    if ((kirby)->base.base.base.unk56 == gUnk_0203AD3C) \
        (kirby)->base.other.unk7C[0].unk14 = (kirby)->base.other.unk7C[1].unk14 = (kirby)->base.base.base.unk10.unk14 = 0x3C0; \
    else \
    { \
        (kirby)->base.base.base.unk10.unk14 = ((kirby)->base.base.base.unk56 + 0x10) * 0x40; \
        (kirby)->base.other.unk7C[1].unk14 = ((kirby)->base.base.base.unk56 + 0x10) * 0x40; \
        (kirby)->base.other.unk7C[0].unk14 = ((kirby)->base.base.base.unk56 + 0x10) * 0x40; \
    } \
})

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
    Macro_0803E920(kirby);
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
    kirby->unk110 = NULL;
    kirby->unk10C.pat1 = NULL;
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
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
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
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
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

void sub_0803F324(struct Kirby *kirby)
{
    u32 r3, r1;
    bool32 r5; // always TRUE

    if (gUnk_0203AD10 & 0x10)
    {
        r5 = TRUE;
        if (kirby->base.base.base.unk56 < gUnk_0203AD30)
            r3 = sub_0802055C(kirby->base.base.base.unk56) & 0x3F7;
        else
            r3 = gUnk_02038590[kirby->base.base.base.unk56].unk9E;
    }
    else if (gUnk_0203AD10 & 2)
    {
        r5 = TRUE;
        if (kirby->base.base.base.unk56 < gUnk_0203AD30)
            r3 = gUnk_020382D0.unk8[0][kirby->base.base.base.unk56];
        else
            r3 = gUnk_02038590[kirby->base.base.base.unk56].unk9E;
    }
    else
    {
        r5 = TRUE;
        if (!kirby->base.base.base.unk56)
            r3 = gInput;
        else
            r3 = gUnk_02038590[kirby->base.base.base.unk56].unk9E;
    }
    if (!r5) return;
    r1 = kirby->unk118;
    kirby->unk118 = r3;
    kirby->unk11A = kirby->unk118 & ~r1;
    kirby->unk11C = r1 & ~kirby->unk118;
    kirby->unk11E = kirby->unk11A & 0x30F;
    if (kirby->unk118 & 0xF0)
    {
        if (kirby->unkDA == 0 || kirby->unkDA == 0x10)
        {
            kirby->unk11E |= kirby->unk118 & 0xF0;
            if (kirby->unkDA == 0)
                kirby->unkDA = 8;
        }
        --kirby->unkDA;
    }
    else
        kirby->unkDA = 0x10;
    if (kirby->base.base.base.flags & 0x1000000)
    {
        kirby->unk118 = 0;
        kirby->unk11A = 0;
        kirby->unk11C = 0;
        kirby->unk11E = 0;
    }
}

void sub_0803F46C(struct Kirby *kirby)
{
    struct Sprite *r7 = &kirby->base.base.base.unk10, 
        *sb = &kirby->base.other.unk7C[1],
        *r8 = &kirby->base.other.unk7C[0];
    bool32 r4, sl, sp00 = FALSE;
    u32 r2;
    
    if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
    {
        r7->unk10 = ((kirby->base.base.base.x - gCurLevelInfo[gUnk_0203AD3C].unkC) >> 8) + kirby->base.base.base.unk54;
        r7->unk12 = ((kirby->base.base.base.y - gCurLevelInfo[gUnk_0203AD3C].unk10) >> 8) + kirby->base.base.base.unk55;
    }
    else
    {
        r7->unk10 = (kirby->base.base.base.x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + kirby->base.base.base.unk54;
        r7->unk12 = (kirby->base.base.base.y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + kirby->base.base.base.unk55;
    }
    r7->unk10 += gUnk_0203AD18[0];
    r7->unk12 += gUnk_0203AD18[1];
    sb->unk10 = r7->unk10;
    sb->unk12 = r7->unk12;
    kirby->base.base.base.unk55 = 0;
    kirby->base.base.base.unk54 = 0;
    r2 = FALSE;
    if (kirby->unkD4 < 10 && kirby->base.base.base.flags & 0x4000000)
        r2 = TRUE;
    sl = r2;
    r2 = FALSE;
    if (kirby->unk103
        || kirby->unkE0
        || (kirby->base.base.base.unkC & 0x20000 && !(kirby->base.base.base.flags & 0x40)))
        r2 = TRUE;
    r4 = r2;
    if (r4)
    {
        if (!sb->unkC) r4 = FALSE;
        if (kirby->unkD4 > 0x7A) r4 = FALSE;
    }
    if (!(kirby->base.base.base.flags & 8))
    {
        if (r7->unk1B == 0xFF) sb->unk1B = 0xFF;
        r2 = sub_08155128(r7);
        if (!r2)
        {
            kirby->base.base.base.flags |= 2;
            if (kirby->base.base.base.flags & 4)
            {
                sp00 = TRUE;
                r7->unk1B = 0xFF;
                sb->unk1B = 0xFF;
                kirby->base.base.base.unk1 = r2;
                kirby->base.base.base.unk2 = r2;
                kirby->base.base.base.flags &= ~4;
                sub_08155128(r7);
            }
        }
        else
        {
            kirby->base.base.base.flags &= ~2;
            kirby->base.base.base.unk2 += r7->unk1C;
            kirby->base.base.base.unk1 = kirby->base.base.base.unk2 >> 4;
        }
        if (r4 && !sub_08155128(sb) && (sp00 || (kirby->base.base.base.flags & 4)))
        {
            sb->unk1B = 0xFF;
            sub_08155128(sb);
        }
        if (sl)
        {
            if (kirby->base.base.base.flags & 0x80)
            {
                switch (kirby->unkD4)
                {
                case 0:
                default:
                    if (kirby->base.base.base.flags & 1)
                        r8->unk10 = r7->unk10 - 1;
                    else
                        r8->unk10 = r7->unk10 + 1;
                    r8->unk12 = r7->unk12 - 3;
                    break;
                case 2:
                    if (kirby->base.base.base.flags & 1)
                        r8->unk10 = r7->unk10 - 2;
                    else
                        r8->unk10 = r7->unk10 + 2;
                    r8->unk12 = r7->unk12 - 3;
                    break;
                case 4:
                    if (kirby->base.base.base.flags & 1) // pointless
                        r8->unk10 = r7->unk10;
                    else
                        r8->unk10 = r7->unk10;
                    r8->unk12 = r7->unk12 - 3;
                    break;
                case 6:
                    if (kirby->base.base.base.flags & 1)
                        r8->unk10 = r7->unk10 - 1;
                    else
                        r8->unk10 = r7->unk10 + 1;
                    r8->unk12 = r7->unk12 - 4;
                    break;
                case 8: // identical with case 6
                    if (kirby->base.base.base.flags & 1)
                        r8->unk10 = r7->unk10 - 1;
                    else
                        r8->unk10 = r7->unk10 + 1;
                    r8->unk12 = r7->unk12 - 4;
                    break;
                }
            }
            else
            {
                r8->unk10 = r7->unk10;
                r8->unk12 = r7->unk12;
            }
            sub_08155128(r8);
        }
    }
    if (!(kirby->base.base.base.flags & 0x400) && !(r7->unk8 & 0x80000))
    {
        if (r4) sub_0815604C(sb);
        if (sl) sub_081564D8(r8);
        sub_0815604C(r7);
    }
}

void sub_0803F790(struct Kirby *kirby)
{
    struct Sprite *r7 = &kirby->base.base.base.unk10, 
        *r6 = &kirby->base.other.unk7C[1],
        *sb = &kirby->base.other.unk7C[0];
    bool32 r8 = FALSE;
    u8 r2;

    if (kirby->base.base.base.unk58 & 2 && !(kirby->base.base.base.flags & 0x40))
    {
        kirby->base.base.base.unkC |= 0x20000;
        r8 = TRUE;
    }
    if (!(kirby->base.base.base.flags & 8))
    {
        r7->unkC = gUnk_02021590[kirby->base.base.base.unk56][kirby->unkD4].unk0;
        r7->unk1A = gUnk_02021590[kirby->base.base.base.unk56][kirby->unkD4].unk2;
        if (r8)
        {
            if (kirby->base.base.base.flags & 0x80)
            {
                r6->unkC = gUnk_08D60FB4[4][kirby->unkD4].unk0;
                r6->unk1A = gUnk_08D60FB4[4][kirby->unkD4].unk2;
            }
            else switch (kirby->unk103)
            {
            default:
                r6->unkC = gUnk_08D60FB4[3][kirby->unkD4].unk0;
                r6->unk1A = gUnk_08D60FB4[3][kirby->unkD4].unk2;
                break;
            case 5:
                r6->unkC = gUnk_08D60FB4[5][kirby->unkD4].unk0;
                r6->unk1A = gUnk_08D60FB4[5][kirby->unkD4].unk2;
                break;
            case 18:
            case 26:
                r6->unkC = gUnk_08D60FB4[6][kirby->unkD4].unk0;
                r6->unk1A = gUnk_08D60FB4[6][kirby->unkD4].unk2;
                break;
            case 17:
                r6->unkC = gUnk_08D60FB4[7][kirby->unkD4].unk0;
                r6->unk1A = gUnk_08D60FB4[7][kirby->unkD4].unk2;
                break;
            case 14:
                r6->unkC = gUnk_08D60FB4[9][kirby->unkD4].unk0;
                r6->unk1A = gUnk_08D60FB4[9][kirby->unkD4].unk2;
                break;
            case 11:
                r2 = kirby->unkD4 - 52;
                if (r2 > 2) r2 = 2;
                r6->unkC = gUnk_08D60FB4[8][r2].unk0;
                r6->unk1A = gUnk_08D60FB4[8][r2].unk2;
                break;
            }
        }
        else if (kirby->unk103)
        {
            if (gUnk_08D60FDC[kirby->unk103])
            {
                r6->unkC = gUnk_08D60FDC[kirby->unk103][kirby->unkD4].unk0;
                r6->unk1A = gUnk_08D60FDC[kirby->unk103][kirby->unkD4].unk2;
                if (kirby->unk103 == 3)
                {
                    if (kirby->unkD4 == 46)
                        r6->unk1A = gUnk_0834C134[kirby->base.base.base.counter];
                    else if (kirby->unkD4 == 45)
                        r6->unk1A = gUnk_0834C13E[kirby->base.base.base.counter];
                }
                else if ((kirby->base.base.base.unkC & 6) == 2)
                {
                    r6->unkC = gUnk_0834EC24[kirby->unkD4].unk0;
                    r6->unk1A = gUnk_0834EC24[kirby->unkD4].unk2;
                }
                else if (kirby->unk103 == 11)
                {
                    if (kirby->unkD4 == 52)
                    {
                        r6->unkC = gUnk_0834D940[0].unk0;
                        r6->unk1A = gUnk_0834D940[0].unk2;
                    }
                    else if (kirby->unkD4 == 53)
                    {
                        r6->unkC = gUnk_0834D940[1].unk0;
                        r6->unk1A = gUnk_0834D940[1].unk2;
                    }
                    else
                    {
                        r6->unkC = 0;
                        r6->unk1A = 0;
                    }
                }
            }
            else
                r6->unkC = 0;
        }
        else if (kirby->unkE0)
        {
            r6->unkC = gUnk_08D60FB4[kirby->unkE0 & 3][kirby->unkD4].unk0;
            r6->unk1A = gUnk_08D60FB4[kirby->unkE0 & 3][kirby->unkD4].unk2;
        }
        else
        {
            r6->unkC = 0;
            r6->unk1A = 0;
        }
        if (kirby->unkD4 < 10 && kirby->base.base.base.flags & 0x4000000)
        {
            sb->unkC = gUnk_0834D918[kirby->unkD4].unk0;
            sb->unk1A = gUnk_0834D918[kirby->unkD4].unk2;
        }
        if (kirby->unkD4 == 90)
        {
            if (kirby->base.base.base.unk60__42 != 0x397)
            {
                r7->unk1A = gUnk_02021590[kirby->base.base.base.unk56][kirby->unkD4].unk2 + kirby->base.base.base.unk56;
                if (gUnk_08D60FDC[kirby->unk103] && kirby->unk103)
                    r6->unk1A = gUnk_08D60FDC[kirby->unk103][kirby->unkD4].unk2 + kirby->base.base.base.unk56;
            }
            else
                r7->unk1A = 5;
        }
        else if (kirby->unkD4 == 91)
        {
            if (kirby->base.base.base.unk60__42 == 0x397)
                r7->unk1A = 5;
        }
        if (r7->unk1B != r7->unk1A || r7->unk18 != r7->unkC)
        {
            kirby->base.base.base.unk1 = 0;
            kirby->base.base.base.unk2 = 0;
            kirby->base.base.base.flags &= ~4;
            r7->unk1B = 0xFF;
            r6->unk1B = 0xFF;
        }
    }
    if (kirby->base.base.base.flags & 1)
    {
        r7->unk8 |= 0x400;
        r6->unk8 |= 0x400;
        sb->unk8 |= 0x400;
    }
    else
    {
        r7->unk8 &= ~0x400;
        r6->unk8 &= ~0x400;
        sb->unk8 &= ~0x400;
    }
}

void sub_0803FBB4(struct Kirby *kirby)
{
    u32 r6;
    struct Kirby *kirby2;

    if (!Macro_0810B1F4(&kirby->base.base.base))
    {
        if (kirby->hp <= 0)
        {
            if (!(kirby->base.base.base.unkC & 0x8000))
                sub_0804F894(kirby);
            return;
        }
        if (kirby->hp == 1)
        {
            if (!(kirby->base.base.base.unkC & 0x4000))
            {
                PlaySfx(&kirby->base.base.base, 132);
                kirby->base.base.base.unkC |= 0x4000;
            }
        }
        else
            kirby->base.base.base.unkC &= ~0x4000;
        if (!(kirby->base.base.base.flags & 0x100))
        {
            if (kirby->base.base.base.y + (kirby->base.base.base.unk3F << 8) >= gCurLevelInfo[kirby->base.base.base.unk56].unk54)
            {
                kirby->hp = 0;
                sub_08088640(&kirby->base.base, 0x1C, 0x20);
            }
            if (kirby->unk103 != 23 && kirby->base.base.base.unk58 & 0x400)
            {
                sub_08088640(&kirby->base.base, 0x1C, 0x20);
                kirby->hp = 0;
            }
        }
    }
    if (!(kirby->base.base.base.flags & 0x200) && kirby->base.base.base.unk58 & 0x2000)
    {
        if ((kirby->base.base.base.unk58 & 0xF00000) == 0x100000)
            goto _0803FD44;
        else if ((kirby->base.base.base.unk58 & 0xF00000) <= 0x100000)
        {
            if (!(kirby->base.base.base.unk58 & 0xF00000))
                goto _0803FD44;
        }
        else if ((kirby->base.base.base.unk58 & 0xF00000) == 0x200000)
        {
        _0803FD44:
            sub_0804D9D4(kirby);
        }
    }
    if (!(kirby->base.base.base.flags & 0x40))
    {
        if (!(kirby->base.base.base.unk62 & 4))
            kirby->base.base.base.flags |= 0x20;
        else
            kirby->base.base.base.flags &= ~0x20;
    }
    if ((kirby2 = kirby->base.other.base.kirby2))
    {
        if (!kirby->base.base.base.xspeed)
            kirby->base.base.base.x += kirby2->base.base.base.xspeed;
        kirby->base.base.base.y -= kirby2->base.base.base.yspeed;
        kirby->base.base.base.kirby2 = NULL;
    }
    if (!(kirby->base.base.base.flags & 0x100))
    {
        r6 = 0;
        if (kirby->base.base.base.x > gCurLevelInfo[kirby->base.base.base.unk56].unk48
            && kirby->base.base.base.x < gCurLevelInfo[kirby->base.base.base.unk56].unk50
            && kirby->base.base.base.y > gCurLevelInfo[kirby->base.base.base.unk56].unk4C
            && kirby->base.base.base.y < gCurLevelInfo[kirby->base.base.base.unk56].unk54)
            r6 = gUnk_082D88B8[sub_080023E4(kirby->base.base.base.unk56, kirby->base.base.base.x >> 12, kirby->base.base.base.y >> 12)];
        if ((r6 & 0xF04000) == 0x104000)
        {
            kirby->base.base.base.unk58 |= 0x4000;
            kirby->base.base.base.unk62 |= 0x10;
            kirby->base.base.base.unkC |= 0x80000;
            kirby->base.base.base.unkC &= ~0x40000;
            kirby->unk120 = kirby->base.base.base.x >> 12;
            kirby->unk122 = kirby->base.base.base.y >> 12;
            sub_0805545C(kirby);
        }
    }
}

void nullsub_120(struct Task *t)
{}

void sub_0803FE74(struct Kirby *kirby)
{
    if (kirby->unkD4 == 41)
        kirby->unkD4 = 41; // wtf? 
    else if (kirby->unkD4 != 22 && kirby->unkD4 != 23)
    {
        kirby->unkD4 = 0;
        sub_0805B8B8(kirby);
    }
    kirby->base.base.base.counter = 0;
    kirby->unkD6 = 0;
    kirby->unkD8 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1070;
    kirby->base.base.base.flags &= ~0xC000000;
    kirby->base.base.base.flags &= ~0x8000F00;
    kirby->base.base.unk78 = sub_0803FF64;
    if (kirby->base.base.base.xspeed)
        sub_080411E8(kirby);
}

#define Macro_0803FF64_1(kirby) \
({ \
    if (!((kirby)->base.base.base.unkC & 2)) \
    { \
        if ((kirby)->unk11A & 0x40 && sub_08009D28(&(kirby)->base.base.base)) \
        { \
            sub_08056618(kirby); \
            return; \
        } \
        if ((kirby)->unk11A & 0x80 && sub_08009D70(&(kirby)->base.base.base)) \
        { \
            sub_08056618(kirby); \
            return; \
        } \
    } \
})

#define Macro_0803FF64_2(kirby) \
({ \
    if ((kirby)->base.base.base.unk58 & 2) \
        gUnk_0834C318[(kirby)->unk103](kirby); \
    else \
        gUnk_0834C2AC[(kirby)->unk103](kirby); \
    (kirby)->base.base.base.unkC |= 0x80; \
})

#define Macro_0803FF64_3(kirby) \
({ \
    bool32 _a; \
 \
    if ((kirby)->unk11A & 4 \
        && ((_a = FALSE), (kirby)->unk103) \
        && ((kirby)->unk103 != 23 || !((kirby)->base.base.base.unk58 & 0x400))) \
    { \
        sub_080A9038(kirby, TRUE); \
        if (gUnk_0203AD3C == (kirby)->base.base.base.unk56) \
        { \
            sub_08035E28(0); \
            sub_08034C9C(2); \
        } \
        sub_08035E40(&(kirby)->base.base.base); \
        if ((kirby)->unk103 == 14) \
            _a = TRUE; \
        if ((kirby)->unk103 == 23) \
        { \
            (kirby)->unk103 = 0; \
            if ((kirby)->base.base.base.unk39 == 3) \
            { \
                sub_0803E2B0(&(kirby)->base.base.base, -7, 3, 5, 7); \
                Macro_0803EA90_1(kirby); \
            } \
            else \
            { \
                sub_0803E2B0(&(kirby)->base.base.base, -4, -2, 4, 7); \
                Macro_0803EA90_1(kirby); \
            } \
        } \
        (kirby)->unk103 = 0; \
        (kirby)->base.base.base.unkC &= ~2; \
        sub_0806F260(kirby); \
        sub_0806EFF8(kirby); \
        PlaySfx(&(kirby)->base.base.base, 129); \
        if (_a) \
        { \
            Macro_0803FF64_6(kirby); \
            return; \
        } \
    } \
})

#define Macro_0803FF64_4(kirby) \
({ \
    u8 _i; \
    bool32 _a = TRUE; \
 \
    for (_i = 1; _i < 9; ++_i) \
    { \
        if (gUnk_0835105C[_i] == (kirby)->base.base.base.unk60__42 \
            && *sub_08002888(1, _i, 0)) \
        { \
            _a = FALSE; \
            break; \
        } \
    } \
    for (_i = 9; _i < 14; ++_i) \
    { \
        if (gUnk_0835105C[_i] == (kirby)->base.base.base.unk60__42 \
            && *sub_08002888(1, _i+3, 0)) \
        { \
            _a = FALSE; \
            break; \
        } \
    } \
    _a; \
})

#define Macro_0803FF64_5(kirby) \
({ \
    u8 _i; \
    bool32 _a = TRUE; \
 \
    for (_i = 0; _i < gUnk_0203AD44; ++_i) \
    { \
        if ((kirby)->base.base.base.unk60__42 != gKirbys[_i].base.base.base.unk60__42) \
            _a = FALSE; /* Why not break here? */ \
    } \
    _a; \
})

#define Macro_0803FF64_6(kirby) \
({ \
    if ((kirby)->unk103 == 11) \
        sub_080641FC(kirby); \
    else if ((kirby)->unk103 == 14) \
        sub_0806A798(kirby); \
    else if ((kirby)->unk103 == 19 && (kirby)->base.base.base.flags & 0x40) \
        sub_08047EF0(kirby); \
    else if ((kirby)->base.base.base.unk58 & 2) \
        sub_08059810(kirby); \
    else if ((kirby)->base.base.base.flags & 0x60) \
        sub_08044EA8(kirby); \
    else \
        sub_0803FE74(kirby); \
}) \

void sub_0803FF64(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    else
        Macro_0803FF64_1(kirby);
    if (sub_0805BC78(kirby)) return;
    if (!(kirby->base.base.base.unk62 & 4))
    {
        sub_08044EA8(kirby);
        return;
    }
    if (kirby->unk11A & 1)
    {
        sub_08043360(kirby);
        return;
    }
    if (kirby->unk118 & 0x80)
    {
        sub_08040868(kirby);
        return;
    }
    if (kirby->unk11A & 2)
    {
        if (kirby->unk103 != 23)
        {
            Macro_0803FF64_2(kirby);
            return;
        }
    }
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unk118 & 0xC0)
    {
        if (kirby->unk118 & 0x40
            && kirby->unkD8 > 7
            && !(kirby->base.base.base.flags & 0x80)
            && kirby->unk103 != 23)
        {
            sub_080476C4(kirby);
            return;
        }
        if (gCurLevelInfo[kirby->base.base.base.unk56].unk1EC == 1
            && kirby->unkD8 > 3)
            sub_080882B4(&kirby->base.base.base);
        ++kirby->unkD8;
    }
    else
        kirby->unkD8 = 0;
    if (kirby->unk118 & 0x20)
    {
        if (!(kirby->base.base.base.flags & 1) && kirby->unkD4 == 22)
            kirby->unkD4 = 23;
        kirby->base.base.base.flags |= 1;
        if (!(kirby->base.base.base.unk62 & 1))
        {
            sub_080411E8(kirby);
            return;
        }
    }
    if (kirby->unk118 & 0x10)
    {
        if (kirby->base.base.base.flags & 1 && kirby->unkD4 == 22)
            kirby->unkD4 = 23;
        kirby->base.base.base.flags &= ~1;
        if (!(kirby->base.base.base.unk62 & 1))
        {
            sub_080411E8(kirby);
            return;
        }
    }
    sub_0805B1B8(kirby);
    if (kirby->base.base.base.unk62 & 1)
        kirby->base.base.base.xspeed = 0;
    if (kirby->unkD4 == 41)
    {
        if (kirby->base.base.base.counter > 4)
        {
            kirby->base.base.base.counter = 0;
            sub_0805B8B8(kirby);
        }
        ++kirby->base.base.base.counter;
    }
    else
    {
        if (kirby->unkD4 == 22 || kirby->unkD4 == 23)
        {
            if (kirby->base.base.base.counter > 3)
            {
                kirby->base.base.base.counter = 0;
                sub_0805B8B8(kirby);
            }
            ++kirby->base.base.base.counter;
        }
        else
            sub_0805B8B8(kirby);
    }
    if (kirby->unk103 != 23)
    {
        if (kirby->unkD6 == 80 || kirby->unkD6 == 81 || kirby->unkD6 == 82
            || kirby->unkD6 == 83 || kirby->unkD6 == 84)
            kirby->base.base.base.flags |= 0x4000000;
        else if (kirby->unkD6 == 164 || kirby->unkD6 == 165 || kirby->unkD6 == 166
            || kirby->unkD6 == 167 || kirby->unkD6 == 168)
            kirby->base.base.base.flags |= 0x4000000;
        else if (kirby->unkD6 == 183 || kirby->unkD6 == 184 || kirby->unkD6 == 185
            || kirby->unkD6 == 186 || kirby->unkD6 == 187)
            kirby->base.base.base.flags |= 0x4000000;
        else
            kirby->base.base.base.flags &= ~0x4000000;
        if (kirby->unkD6 > 187)
            kirby->unkD6 = 0;
        ++kirby->unkD6;
    }
    kirby->base.base.base.unkC |= 0x10;
}

void sub_08040868(struct Kirby *kirby)
{
    if (kirby->base.base.base.flags & 0x80)
        sub_08054C0C(kirby);
    else
    {
        kirby->unkD4 = 1;
        sub_0805B988(kirby);
        kirby->base.base.base.counter = 0;
        kirby->unkD8 = 0;
        if (kirby->unk103 == 23)
            sub_0803E308(&kirby->base.base.base, -3, 2, 3, 7);
        else
            sub_0803E308(&kirby->base.base.base, -6, -5, 6, 7);
        if (kirby->unk103 == 23) // useless
            sub_0803E2B0(&kirby->base.base.base, -7, 3, 5, 7);
        else
            sub_0803E2B0(&kirby->base.base.base, -7, 3, 5, 7);
        kirby->base.base.base.flags &= ~2;
        kirby->base.base.base.flags &= ~0x1060;
        kirby->base.base.base.flags &= ~0x4000000;
        kirby->base.base.unk78 = sub_08040930;
    }
}

void sub_08040930(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        sub_08044EA8(kirby);
        return;
    }
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unk118 & 0x20)
        kirby->base.base.base.flags |= 1;
    if (kirby->unk118 & 0x10)
        kirby->base.base.base.flags &= ~1;
    if ((kirby->unk103 == 9 || kirby->unk103 == 22) && kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    else if (kirby->unk11A & 3 && kirby->unk103 != 23)
    {
        sub_08042D70(kirby);
        return;
    }
    else if (kirby->base.base.base.counter > 4 && sub_080035F4(&kirby->base.base.base) && !sub_08009D70(&kirby->base.base.base))
    {
        kirby->base.base.base.flags |= 0x1000;
        sub_08044EA8(kirby);
        return;
    }
    if (kirby->unk118 & 0x80)
    {
        ++kirby->base.base.base.counter;
        if (!(kirby->unk118 & 0x30))
            kirby->base.base.base.flags &= ~0x10;
    }
    else if (kirby->base.base.base.xspeed)
    {
        if (!(kirby->unk118 & 0x30))
        {
            if (kirby->base.base.base.xspeed > 0)
                kirby->base.base.base.flags &= ~1;
            else if (kirby->base.base.base.xspeed < 0)
                kirby->base.base.base.flags |= 1;
        }
        if (kirby->base.base.base.flags & 0x10 || kirby->unk11A & 0x30)
            sub_08041B08(kirby);
        else
            sub_080411E8(kirby);
        return;
    }
    else
    {
        sub_0803FE74(kirby);
        return;
    } 
    if (kirby->unk118 & 0xC0)
    {
        if (kirby->unk118 & 0x40
            && kirby->unkD8 > 7
            && !(kirby->base.base.base.flags & 0x80)
            && kirby->unk103 != 23)
        {
            sub_080476C4(kirby);
            return;
        }
        if (gCurLevelInfo[kirby->base.base.base.unk56].unk1EC == 1
            && kirby->unkD8 > 3)
            sub_080882B4(&kirby->base.base.base);
        ++kirby->unkD8;
    }
    else
        kirby->unkD8 = 0;
    sub_0805B1B8(kirby);
    sub_0805B988(kirby);
    if (kirby->unk103 != 23)
    {
        if (kirby->unkD6 == 80 || kirby->unkD6 == 81 || kirby->unkD6 == 82
            || kirby->unkD6 == 83 || kirby->unkD6 == 84)
            kirby->base.base.base.flags |= 0x4000000;
        else if (kirby->unkD6 == 164 || kirby->unkD6 == 165 || kirby->unkD6 == 166
            || kirby->unkD6 == 167 || kirby->unkD6 == 168)
            kirby->base.base.base.flags |= 0x4000000;
        else if (kirby->unkD6 == 183 || kirby->unkD6 == 184 || kirby->unkD6 == 185
            || kirby->unkD6 == 186 || kirby->unkD6 == 187)
            kirby->base.base.base.flags |= 0x4000000;
        else
            kirby->base.base.base.flags &= ~0x4000000;
        if (kirby->unkD6 > 187)
            kirby->unkD6 = 0;
        ++kirby->unkD6;
    }
    kirby->base.base.base.unkC |= 0x10;
}

void sub_080411E8(struct Kirby *kirby)
{
    if (kirby->unkD4 != 41)
    {
        kirby->unkD4 = 11;
        sub_0805C0C8(kirby);
    }
    kirby->base.base.base.counter = 0;
    kirby->base.base.base.unk54 = 0;
    kirby->base.base.base.unk55 = 0;
    kirby->unkD8 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1070;
    kirby->base.base.unk78 = sub_080412AC;
    sub_0805B2FC(kirby);
}

void sub_080412AC(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    Macro_0803FF64_1(kirby);
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    if (!(kirby->base.base.base.unk62 & 4))
    {
        sub_08044EA8(kirby);
        return;
    }
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unkD4 == 41 || sub_0805C0C8(kirby))
        kirby->unkD4 = 11;
    if (kirby->unk11C & 48)
        kirby->base.base.base.counter = 0;
    if (kirby->unk11A & 1)
    {
        sub_08043360(kirby);
        return;
    }
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->base.base.base.counter <= 0x10)
    {
        if (kirby->base.base.base.flags & 1)
        {
            if (kirby->unk11A & 0x20)
            {
                sub_08041B08(kirby);
                return;
            }
        }
        else
        {
            if (kirby->unk11A & 0x10)
            {
                sub_08041B08(kirby);
                return;
            }
        }
        ++kirby->base.base.base.counter;
    }
    if (kirby->unk118 & 0xC0)
    {
        if (kirby->unk118 & 0x40
            && kirby->unkD8 > 7
            && !(kirby->base.base.base.flags & 0x80)
            && kirby->unk103 != 23)
        {
            sub_080476C4(kirby);
            return;
        }
        if (gCurLevelInfo[kirby->base.base.base.unk56].unk1EC == 1
            && kirby->unkD8 > 3)
            sub_080882B4(&kirby->base.base.base);
        ++kirby->unkD8;
    }
    else
        kirby->unkD8 = 0;
    if (kirby->unk118 & 0x80)
    {
        if (kirby->base.base.base.flags & 0x80)
            sub_08054C0C(kirby);
        else
            sub_08040868(kirby);
        return;
    }
    else
    {
        sub_0805C070(kirby);
        if (kirby->base.base.base.unk62 & 1)
            kirby->base.base.base.xspeed = 0;
        if (!kirby->base.base.base.xspeed)
            sub_0803FE74(kirby);
        else
        {
            sub_0805B2FC(kirby);
            kirby->base.base.base.unkC |= 0x10;
        }
        return;
    }
    kirby->base.base.base.unkC |= 0x10;
}

void sub_08041B08(struct Kirby *kirby)
{
    if (kirby->unkD4 != 41)
    {
        kirby->unkD4 = 25;
        sub_0805C0C8(kirby);
    }
    kirby->base.base.base.counter = 0;
    kirby->base.base.base.unk54 = 0;
    kirby->base.base.base.unk55 = 0;
    kirby->unkD8 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1060;
    kirby->base.base.base.flags |= 0x10;
    kirby->base.base.unk78 = sub_08041C50;
    sub_0805B2FC(kirby);
    PlaySfx(&kirby->base.base.base, 114);
}

void sub_08041C50(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    Macro_0803FF64_1(kirby);
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        sub_08044EA8(kirby);
        return;
    }
    if (kirby->unkD4 == 41 || sub_0805C0C8(kirby))
        kirby->unkD4 = 25;
    sub_0805B2FC(kirby);
    if (kirby->unk11A & 1)
    {
        sub_08043360(kirby);
        return;
    }
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->unk118 & 0xC0)
    {
        if (kirby->unk118 & 0x40
            && kirby->unkD8 > 7
            && !(kirby->base.base.base.flags & 0x80)
            && kirby->unk103 != 23)
        {
            sub_080476C4(kirby);
            return;
        }
        if (gCurLevelInfo[kirby->base.base.base.unk56].unk1EC == 1
            && kirby->unkD8 > 3)
            sub_080882B4(&kirby->base.base.base);
        ++kirby->unkD8;
    }
    else
        kirby->unkD8 = 0;
    if (!(kirby->unk118 & 0x30))
    {
        kirby->base.base.base.flags &= ~0x10;
        if (abs(kirby->base.base.base.xspeed) < 166)
        {
            sub_080411E8(kirby);
            return;
        }
    }
    else
        kirby->base.base.base.flags |= 0x10;
    if (kirby->unk118 & 0x80)
    {
        if (kirby->base.base.base.flags & 0x80)
            sub_08054C0C(kirby);
        else
            sub_08040868(kirby);
        return;
    }
    else
    {
        sub_0805C070(kirby);
        if (kirby->base.base.base.unk62 & 1)
            kirby->base.base.base.xspeed = 0;
        if (!kirby->base.base.base.xspeed)
        {
            sub_0803FE74(kirby);
            return;
        }
        else
        {
            if (!(kirby->base.base.base.counter & 0xFF) && kirby->base.base.base.counter >> 8 <= 2)
            {
                sub_08089B14(&kirby->base.base.base);
                kirby->base.base.base.counter += 0x100;
                kirby->base.base.base.counter |= 0xA;
            }
            --kirby->base.base.base.counter;
        }
    }
    kirby->base.base.base.unkC |= 0x10;
}

void sub_080424BC(struct Kirby *kirby)
{
    kirby->unkD4 = 12;
    kirby->base.base.base.unk54 = 0;
    kirby->base.base.base.unk55 = 0;
    kirby->unkD8 = 0;
    kirby->base.base.base.counter = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1060;
    kirby->base.base.unk78 = sub_080425F0;
    PlaySfx(&kirby->base.base.base, 116);
}

void sub_080425F0(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        sub_08044EA8(kirby);
        return;
    }
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (!kirby->base.base.base.xspeed)
    {
        if (kirby->unk118 & 0x30)
        {
            if (kirby->unk118 & 0x20)
                kirby->base.base.base.flags |= 1;
            if (kirby->unk118 & 0x10)
                kirby->base.base.base.flags &= ~1;
            if (!(kirby->base.base.base.unk62 & 1))
            {
                if (kirby->base.base.base.flags & 0x10)
                    sub_08041B08(kirby);
                else
                    sub_080411E8(kirby);
                return;
            }
        }
        else
        {
            sub_0803FE74(kirby);
            return;
        }
    }
    if (kirby->unk11A & 1)
    {
        sub_08043360(kirby);
        return;
    }
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->unk11A & 0x30)
    {
        if (kirby->base.base.base.flags & 0x10)
            sub_08041B08(kirby);
        else
            sub_080411E8(kirby);
        return;
    }
    else
    {
        sub_0805C070(kirby);
        if (kirby->base.base.base.unk62 & 1)
            kirby->base.base.base.xspeed = 0;
        sub_0805B1B8(kirby);
        if (--kirby->base.base.base.counter == -1)
        {
            sub_080897A0(&kirby->base.base.base);
            kirby->base.base.base.counter = 0xA;
        }
    }
    kirby->base.base.base.unkC |= 0x10;
}

void sub_08042D70(struct Kirby *kirby)
{
    kirby->unkD4 = 13;
    kirby->base.base.base.counter = 0;
    kirby->unkD8 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1070;
    sub_080711A8(kirby);
    sub_08089D98(&kirby->base.base.base);
    kirby->base.base.unk78 = sub_08042E28;
}

void sub_08042E28(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    Macro_0803FF64_3(kirby);
    if (kirby->base.base.base.flags & 0x8000000
        && kirby->base.base.base.unk62 & 4
        && kirby->unk103 != 23
        && (((gUnk_082D88B8[kirby->base.base.base.unk57] & 0xF0000000) == 0x30000000 && kirby->base.base.base.xspeed <= 0)
            || ((gUnk_082D88B8[kirby->base.base.base.unk57] & 0xF0000000) == 0x40000000 && kirby->base.base.base.xspeed >= 0)))
    {
        sub_0805AAA0(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        if (kirby->base.base.base.counter <= 10)
        {
            if (kirby->base.base.base.flags & 1)
                kirby->base.base.base.xspeed = -0x200;
            else
                kirby->base.base.base.xspeed = 0x200;
        }
        kirby->base.base.base.flags &= ~0x8000000;
        if (kirby->base.base.base.unkC & 2)
        {
            kirby->base.base.base.unkC &= ~2;
            sub_0806EB74(&kirby->base.base.base);
            if (kirby->base.base.base.xspeed)
                sub_08082380(&kirby->base.base, 5);
            else
                sub_08082380(&kirby->base.base, 4);
        }
        sub_08044EA8(kirby);
        return;
    }
    if (kirby->base.base.base.counter < 10)
    {
        if (kirby->base.base.base.flags & 1)
            kirby->base.base.base.xspeed = -0x340;
        else
            kirby->base.base.base.xspeed = 0x340;
    }
    else if (kirby->base.base.base.counter == 10)
    {
        kirby->base.base.base.flags |= 0x8000000;
        if (kirby->base.base.base.flags & 1)
            kirby->base.base.base.xspeed = -0x200;
        else
            kirby->base.base.base.xspeed = 0x200;
    }
    else
        sub_0805B1B8(kirby);
    if (kirby->unkD4 == 14)
    {
        kirby->base.base.base.flags &= ~0x8000000;
        kirby->base.base.base.xspeed = 0;
        sub_0803FE74(kirby);
        return;
    }
    if (abs(kirby->base.base.base.xspeed) < 0x80 || kirby->unkD4 != 13)
    {
        if (kirby->unkD4 == 13)
            kirby->unkD4 = 14;
        if (kirby->base.base.base.unkC & 2)
        {
            kirby->base.base.base.unkC &= ~2;
            sub_0806EB74(&kirby->base.base.base);
            if (kirby->base.base.base.xspeed)
                sub_08082380(&kirby->base.base, 5);
            else
                sub_08082380(&kirby->base.base, 4);
        }
    }
    if (kirby->base.base.base.counter)
    {
        sub_0805C070(kirby);
        if (kirby->base.base.base.unk62 & 1)
            kirby->base.base.base.xspeed = 0;
    }
    ++kirby->base.base.base.counter;
    if (kirby->unk103 == 26)
        sub_0805F758(kirby);
    kirby->base.base.base.unkC |= 0x10;
}

void sub_0804323C(struct Kirby *kirby)
{
    if (kirby->hp > 0
        && kirby->unkD4 != 39
        && kirby->unkD4 < 123
        && !kirby->unk110
        && !(kirby->base.base.base.flags & 0x01000300))
    {
        kirby->unkD4 = 40;
        kirby->base.base.base.counter = 0;
        kirby->unkD6 = 0;
        kirby->unkD8 = 0;
        if (kirby->base.base.base.flags & 1)
            kirby->base.base.base.xspeed = 0x180;
        else
            kirby->base.base.base.xspeed = -0x180;
        kirby->base.base.base.yspeed = 0x240;
        kirby->base.base.base.y -= 0x100;
        Macro_0803EA90_1(kirby);
        Macro_0803EA90_2(kirby);
        kirby->base.base.base.flags &= ~2;
        kirby->base.base.base.flags &= ~0x40;
        kirby->base.base.base.flags |= 0x20;
        kirby->base.base.base.unk62 &= ~5;
        kirby->base.base.unk78 = sub_0804464C;
    }
}

void sub_08043360(struct Kirby *kirby)
{
    if (kirby->unkD4 == 45)
        kirby->base.base.unk78 = sub_08043E68;
    else
        kirby->base.base.unk78 = sub_080435F8;
    kirby->unkD4 = 15;
    kirby->base.base.base.yspeed = 0x400;
    if (!(kirby->unk118 & 0x30))
        kirby->base.base.base.flags &= ~0x10;
    if (kirby->unk103 == 23)
        PlaySfx(&kirby->base.base.base, 100);
    else if (kirby->base.base.base.unkC & 0x100)
    {
        sub_08088178(kirby, 0x3C);
        sub_08071C9C(kirby);
        kirby->base.base.base.yspeed = 0x500;
        PlaySfx(&kirby->base.base.base, 135);
    }
    else
        PlaySfx(&kirby->base.base.base, 100);
    kirby->base.base.base.counter = 0;
    kirby->unkD8 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x40;
    kirby->base.base.base.flags |= 0x20;
}

#define Macro_080435F8(kirby) \
({ \
    if (!((kirby)->base.base.base.unk62 & 4)) \
    { \
        if ((kirby)->base.base.base.unk58 & 2) \
        { \
            (kirby)->base.base.base.yspeed -= 8; \
            if ((kirby)->base.base.base.yspeed < -0xE0) \
                (kirby)->base.base.base.yspeed = -0xE0; \
        } \
        else \
        { \
            (kirby)->base.base.base.yspeed -= 38; \
            if ((kirby)->base.base.base.yspeed < -0x280) \
                (kirby)->base.base.base.yspeed = -0x280; \
        } \
        Macro_080435F8_2(kirby); \
    } \
})

#define Macro_080435F8_2(kirby) \
({ \
    if ((kirby)->base.base.base.flags & 0x1000 \
        && (!sub_08003704(&(kirby)->base.base.base) || (kirby)->base.base.base.yspeed >= 0)) \
        (kirby)->base.base.base.flags &= ~0x1000; \
})

void sub_080435F8(struct Kirby *kirby)
{
    Macro_0803FF64_1(kirby);
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unkD4 == 15 && !(kirby->base.base.base.flags & 0x80))
        kirby->base.base.base.flags |= 4;
    Macro_080435F8(kirby);
    if (kirby->base.base.base.unk62 & 8)
    {
        if (!(kirby->base.base.base.flags & 0x80))
            kirby->unkD4 = 24;
        sub_0808925C(&kirby->base.base.base);
        sub_08044EA8(kirby);
        return;
    }
    if (!(kirby->unk118 & 0x30))
        kirby->base.base.base.flags &= ~0x10;
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    ++kirby->base.base.base.counter;
    if ((!(kirby->unk118 & 1) && kirby->base.base.base.counter > 2) || kirby->base.base.base.counter > 21)
    {
        kirby->base.base.base.counter = 0;
        kirby->base.base.unk78 = sub_0804464C;
        kirby->base.base.base.yspeed = 0xB0;
    }
    if (kirby->unk118 & 0x40)
        ++kirby->unkD8;
    else
        kirby->unkD8 = 0;
    if ((kirby->unkD8 > 7 || kirby->unk11A & 1)
        && !(kirby->base.base.base.flags & 0x80)
        && kirby->unk103 != 23)
    {
        sub_080476C4(kirby);
        return;
    }
    sub_0805B130(kirby, 15);
    sub_0805B010(kirby);
    sub_0805B3A0(kirby);
    kirby->base.base.base.unkC |= 0x10;
}

void sub_08043E68(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unkD4 == 15)
        kirby->base.base.base.flags |= 4;
    Macro_080435F8(kirby);
    if (kirby->base.base.base.unk62 & 8)
    {
        if (!(kirby->base.base.base.flags & 0x80))
            kirby->unkD4 = 24;
        sub_0808925C(&kirby->base.base.base);
        sub_08044EA8(kirby);
        return;
    }
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    ++kirby->base.base.base.counter;
    if (kirby->base.base.base.counter > 4)
    {
        kirby->base.base.base.counter = 0;
        kirby->base.base.unk78 = sub_0804464C;
        kirby->base.base.base.yspeed = 0xB0;
    }
    if (kirby->unk118 & 0x40)
        ++kirby->unkD8;
    else
        kirby->unkD8 = 0;
    if ((kirby->unkD8 > 7 || kirby->unk11A & 1)
        && !(kirby->base.base.base.flags & 0x80)
        && kirby->unk103 != 23)
    {
        sub_080476C4(kirby);
        return;
    }
    sub_0805B130(kirby, 15);
    sub_0805B010(kirby);
    sub_0805B3A0(kirby);
    kirby->base.base.base.unkC |= 0x10;
}

void sub_0804464C(struct Kirby *kirby)
{
    Macro_0803FF64_1(kirby);
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    Macro_080435F8(kirby);
    if (kirby->base.base.base.unk62 & 8)
    {
        if (!(kirby->base.base.base.flags & 0x80))
            kirby->unkD4 = 24;
        sub_0808925C(&kirby->base.base.base);
        sub_08044EA8(kirby);
        return;
    }
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->unk118 & 0x40)
        ++kirby->unkD8;
    else
        kirby->unkD8 = 0;
    if ((kirby->unkD8 > 7 || kirby->unk11A & 1)
        && !(kirby->base.base.base.flags & 0x80)
        && kirby->unk103 != 23)
    {
        sub_080476C4(kirby);
        return;
    }
    if (kirby->unk103 == 5 && kirby->base.base.base.yspeed <= 0)
    {
        sub_080463BC(kirby);
        return;
    }
    if (kirby->base.base.base.counter == 6)
    {
        sub_08044EA8(kirby);
        return;
    }
    ++kirby->base.base.base.counter;
    if (!(kirby->unk118 & 0x30))
        kirby->base.base.base.flags &= ~0x10;
    sub_0805B010(kirby);
    sub_0805B130(kirby, 15);
    sub_0805B3A0(kirby);
    kirby->base.base.base.unkC |= 0x10;
}

void sub_08044EA8(struct Kirby *kirby)
{
    if (kirby->unk103 == 5)
    {
        if (kirby->base.base.unk78 == sub_08045A34)
        {
            sub_080463BC(kirby);
            kirby->unkD9 = 1;
        }
        else
            sub_080463BC(kirby);
    }
    else
    {
        if (kirby->unkD4 == 15)
        {
            kirby->unkD4 = 16;
            kirby->base.base.base.flags &= ~2;
        }
        else if (kirby->unkD4 != 24)
            kirby->unkD4 = 17;
        kirby->base.base.base.counter = 0;
        kirby->unkD8 = 0;
        Macro_0803EA90_1(kirby);
        Macro_0803EA90_2(kirby);
        kirby->base.base.base.flags &= ~2;
        kirby->base.base.base.flags &= ~0x40;
        kirby->base.base.base.flags |= 0x20;
        kirby->base.base.base.unk62 &= ~4;
        kirby->base.base.base.flags &= ~0x4000000;
        kirby->base.base.base.flags &= ~0xF00;
        if (kirby->base.base.unk78 != sub_08045A34)
            kirby->base.base.base.flags &= ~0x8000000;
        kirby->base.base.unk78 = sub_08044FD4;
    }
}

void sub_08044FD4(struct Kirby *kirby)
{
    Macro_0803FF64_1(kirby);
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->base.base.base.flags & 0x8000000
        && kirby->base.base.base.unk62 & 4
        && kirby->unk103 != 23
        && (((gUnk_082D88B8[kirby->base.base.base.unk57] & 0xF0000000) == 0x30000000 && kirby->base.base.base.xspeed <= 0)
            || ((gUnk_082D88B8[kirby->base.base.base.unk57] & 0xF0000000) == 0x40000000 && kirby->base.base.base.xspeed >= 0)))
    {
        sub_0805AAA0(kirby);
        return;
    }
    Macro_080435F8(kirby);
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->unkD4 == 16 && kirby->base.base.base.flags & 2)
        kirby->unkD4 = 17;
    else if (kirby->unkD4 == 17)
        kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.counter > 30)
    {
        sub_080458FC(kirby);
        return;
    }
    if (kirby->unkD4 == 24 && kirby->base.base.base.counter > 3)
        kirby->unkD4 = 17;
    if (!(kirby->base.base.base.flags & 0x80)
        && kirby->unkD4 != 0x10
        && kirby->base.base.base.yspeed < -0x100)
        ++kirby->base.base.base.counter;
    if (kirby->unk118 & 0x40)
        ++kirby->unkD8;
    else
        kirby->unkD8 = 0;
    if ((kirby->unkD8 > 7 || kirby->unk11A & 1)
        && !(kirby->base.base.base.flags & 0x80)
        && kirby->unk103 != 23)
    {
        sub_080476C4(kirby);
        return;
    }
    if (kirby->unkD4 == 40)
    {
        if (kirby->base.base.base.counter <= 3)
        {
            kirby->base.base.base.unk54 = gUnk_0834C180[kirby->base.base.base.counter][0];
            kirby->base.base.base.unk55 = gUnk_0834C180[kirby->base.base.base.counter][0];
        }
        else
        {
            kirby->base.base.base.unk54 = 0;
            kirby->base.base.base.unk55 = 0;
        }
        if (kirby->base.base.base.yspeed < 0)
        {
            kirby->base.base.base.counter = 0;
            kirby->unkD4 = 17;
        }
    }
    if (!(kirby->unk118 & 0x30))
        kirby->base.base.base.flags &= ~0x10;
    sub_0805B130(kirby, 17);
    sub_0805B010(kirby);
    sub_0805B3A0(kirby);
    kirby->base.base.base.unkC |= 0x10;
}

void sub_080458FC(struct Kirby *kirby)
{
    kirby->unkD4 = 18;
    kirby->base.base.base.counter = 0;
    kirby->unkD6 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    if (kirby->unk103 != 23)
        sub_080716BC(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags&= ~0x40;
    kirby->base.base.base.flags |= 0x20;
    kirby->base.base.unk78 = sub_08045A34;
}

void sub_080459B8(struct Kirby *kirby)
{
    if (kirby->hp > 0
        && kirby->unkD4 != 39
        && kirby->unkD4 < 123
        && !kirby->unk110
        && !(kirby->base.base.base.flags & 0x01000300))
    {
        kirby->unkD4 = 21;
        kirby->base.base.base.yspeed = 0x300;
        kirby->base.base.base.flags |= 0x20;
        kirby->base.base.base.flags &= ~2;
        if (kirby->base.base.base.unkC & 2)
        {
            sub_08074240(&kirby->base.base.base, FALSE);
            kirby->base.base.base.unkC &= ~2;
            sub_0806EB74(&kirby->base.base.base);
        } 
    }
}

void sub_08045A34(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    Macro_0803FF64_1(kirby);
    if (sub_0805BC78(kirby)) return;
    if (kirby->unk11A & 2)
    {
        if (kirby->unk103 != 23)
        {
            if (kirby->base.base.base.unk58 & 2)
                gUnk_0834C318[kirby->unk103](kirby);
            else
                gUnk_0834C2AC[kirby->unk103](kirby);
            kirby->base.base.base.unkC |= 0x80;
            return;
        }
    }
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unk118 & 0x40)
        ++kirby->unkD8;
    else
        kirby->unkD8 = 0;
    if ((kirby->unkD8 > 7 || kirby->unk11A & 1)
        && !(kirby->base.base.base.flags & 0x80)
        && kirby->unk103 != 23)
    {
        sub_080476C4(kirby);
        return;
    }
    if (kirby->unkD4 == 20 || kirby->unkD4 == 21)
    {
        kirby->base.base.base.flags |= 0x8000000;
        if (kirby->base.base.base.flags & 2)
        {
            sub_08044EA8(kirby);
            return;
        }
        else
        {
            if (kirby->base.base.base.unk1 == 1)
            {
                kirby->base.base.base.yspeed = 0x300;
                kirby->base.base.base.flags |= 0x20;
            }
            kirby->base.base.base.yspeed -= 58;
            if (kirby->base.base.base.flags & 0x8000000
                && kirby->base.base.base.unk62 & 4
                && kirby->unk103 != 23
                && (((gUnk_082D88B8[kirby->base.base.base.unk57] & 0xF0000000) == 0x30000000 && kirby->base.base.base.xspeed <= 0)
                    || ((gUnk_082D88B8[kirby->base.base.base.unk57] & 0xF0000000) == 0x40000000 && kirby->base.base.base.xspeed >= 0)))
            {
                sub_0805AAA0(kirby);
                return;
            }
            sub_0805B010(kirby);
        }
    }
    else
    {
        Macro_080435F8(kirby);
        if (kirby->unkD4 == 19)
            kirby->base.base.base.flags |= 4;
        if (kirby->unkD4 == 18 && kirby->base.base.base.flags & 2)
            kirby->unkD4 = 19;
        if (kirby->base.base.base.unk62 & 4)
        {
            sub_0808925C(&kirby->base.base.base);
            kirby->unkD4 = 20;
            PlaySfx(&kirby->base.base.base, 113);
            if (kirby->base.base.base.unkC & 2)
            {
                sub_08074240(&kirby->base.base.base, FALSE);
                kirby->base.base.base.unkC &= ~2;
                sub_0806EB74(&kirby->base.base.base);
            }
        }
        sub_0805B130(kirby, 17);
    }
    sub_0805B3A0(kirby);
    if (!(kirby->unk118 & 0x30))
        kirby->base.base.base.flags &= ~0x10;
    if (kirby->unkD4 == 17)
    {
        sub_08044EA8(kirby);
        return;
    }
    kirby->base.base.base.unkC |= 0x10;
}

void sub_080463BC(struct Kirby *kirby)
{
    if (kirby->unkD4 == 15)
    {
        kirby->unkD4 = 16;
        kirby->base.base.base.flags &= ~2;
    }
    else if (kirby->unkD4 != 24)
        kirby->unkD4 = 17;
    kirby->base.base.base.counter = 0;
    kirby->unkD6 = 0;
    kirby->unkD8 = 0;
    kirby->unkD9 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x40;
    kirby->base.base.base.flags |= 0x20;
    kirby->base.base.base.unk62 &= ~4;
    kirby->base.base.base.flags &= ~0xC000000;
    kirby->base.base.base.flags &= ~0x8000F00;
    kirby->base.base.unk78 = sub_080464AC;
}

void sub_080464AC(struct Kirby *kirby)
{
    if (kirby->unkD4 == 17)
        kirby->base.base.base.flags |= 4;
    Macro_0803FF64_1(kirby);
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->unk118 & 0x40)
        ++kirby->unkD8;
    else
        kirby->unkD8 = 0;
    if ((kirby->unkD8 > 7 || kirby->unk11A & 1)
        && !(kirby->base.base.base.flags & 0x80)
        && kirby->unk103 != 23)
    {
        sub_080476C4(kirby);
        return;
    }
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unk103 != 5)
    {
        Macro_0803FF64_6(kirby);
        return;
    }
    if (kirby->unkD9)
    {
        if (kirby->base.base.base.yspeed < -0x250)
        {
            sub_08046D60(kirby);
            return;
        }
    }
    else
    {
        if (kirby->base.base.base.yspeed < -0x180)
        {
            sub_08046D60(kirby);
            return;
        }
    }
    if (kirby->unkD4 == 16 && ++kirby->base.base.base.counter > 3)
        kirby->unkD4 = 17;
    if (kirby->unkD4 == 24 && ++kirby->base.base.base.counter > 3)
        kirby->unkD4 = 17;
    Macro_080435F8(kirby);
    sub_0805B3A0(kirby);
    if (!(kirby->unk118 & 0x30))
        kirby->base.base.base.flags &= ~0x10;
    sub_0805B130(kirby, 17);
    sub_0805B010(kirby);
    kirby->base.base.base.unkC |= 0x10;
}

void sub_08046D60(struct Kirby *kirby)
{
    kirby->unkD4 = 103;
    kirby->base.base.base.counter = 0;
    kirby->unkD6 = 0;
    kirby->unkD8 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x40;
    kirby->base.base.base.flags |= 0x20;
    kirby->base.base.unk78 = sub_08046E10;
}

void sub_08046E10(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (kirby->unk118 & 0x80)
    {
        sub_080458FC(kirby);
        return;
    }
    Macro_0803FF64_1(kirby);
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->unk118 & 0x40)
        ++kirby->unkD8;
    else
        kirby->unkD8 = 0;
    if ((kirby->unkD8 > 7 || kirby->unk11A & 1)
        && !(kirby->base.base.base.flags & 0x80)
        && kirby->unk103 != 23)
    {
        sub_080476C4(kirby);
        return;
    }
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unk103 != 5)
    {
        Macro_0803FF64_6(kirby);
        return;
    }
    sub_0805B010(kirby);
    kirby->base.base.base.xspeed -= kirby->unkD6;
    if (!(kirby->base.base.base.unk1 & 3))
    {
        if ((kirby->base.base.base.unk1 >= 40 && kirby->base.base.base.unk1 <= 59)
            || (kirby->base.base.base.unk1 >= 100 && kirby->base.base.base.unk1 <= 119))
        {
            kirby->unkD6 = gUnk_0834C228[2 * (kirby->base.base.base.unk1 >> 2)];
            kirby->base.base.base.yspeed = gUnk_0834C228[2 * (kirby->base.base.base.unk1 >> 2) + 1];
            kirby->base.base.base.counter = -8;
            if (kirby->base.base.base.flags & 1)
                kirby->unkD6 = -kirby->unkD6;
        }
        else if (kirby->base.base.base.unk1 & 7)
        {
            kirby->unkD6 = gUnk_0834C228[2 * ((kirby->base.base.base.unk1 & 0xFC) >> 2)];
            kirby->base.base.base.yspeed = gUnk_0834C228[2 * (kirby->base.base.base.unk1 >> 2) + 1];
            kirby->base.base.base.counter = -4;
            if (kirby->base.base.base.flags & 1)
                kirby->unkD6 = -kirby->unkD6;
        }
        if (kirby->base.base.base.unk1 > 59)
            kirby->base.base.base.counter = -kirby->base.base.base.counter;
    }
    if (!(kirby->unk118 & 0x30))
        kirby->base.base.base.flags &= ~0x10;
    sub_0805B3A0(kirby);
    if (kirby->base.base.base.flags & 1)
        kirby->unkD6 -= kirby->base.base.base.counter;
    else
        kirby->unkD6 += kirby->base.base.base.counter;
    kirby->base.base.base.xspeed += kirby->unkD6;
    kirby->base.base.base.unkC |= 0x10;
}

void sub_080476C4(struct Kirby *kirby)
{
    if (kirby->unk103 == 19)
    {
        sub_08047EF0(kirby);
        return;
    }
    kirby->unkD4 = 31;
    kirby->base.base.base.counter = 0;
    kirby->unkD6 = 0;
    kirby->unkD8 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~0x10;
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1020;
    kirby->base.base.base.flags |= 0x40;
    kirby->base.base.base.flags |= 0x20;
    kirby->base.base.unk78 = sub_08047814;
    PlaySfx(&kirby->base.base.base, 133);
}

void sub_08047814(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->base.base.base.flags & 2)
    {
        kirby->base.base.base.flags &= ~0x20;
        sub_080487AC(kirby);
        return;
    }
    if (kirby->base.base.base.unk62 & 1)
        kirby->base.base.base.xspeed = 0;
    sub_0805B450(kirby);
    kirby->base.base.base.unkC |= 0x10;
}

void sub_08047EF0(struct Kirby *kirby)
{
    kirby->base.base.base.counter = 0;
    kirby->unkD6 = 0;
    kirby->unkD8 = 0;
    kirby->unkD4 = 31;
    if (!(kirby->base.base.base.flags & 0x40))
    {
        kirby->base.base.base.yspeed = 0x200;
        kirby->base.base.base.unk62 = 0;
        kirby->base.base.base.y -= 0x100;
        PlaySfx(&kirby->base.base.base, 224);
    }
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1020;
    kirby->base.base.base.flags |= 0x40;
    kirby->base.base.base.flags &= ~0xC000000;
    kirby->base.base.base.flags &= ~0x8000F00;
    kirby->base.base.unk78 = sub_0804805C;
}

void sub_0804805C(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (sub_0805BC78(kirby)) return;
    Macro_0803FF64_3(kirby);
    if (kirby->unk103 != 19)
    {
        sub_08044EA8(kirby);
        return;
    }
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->unk118 & 0xF0)
        kirby->unkD4 = 32;
    else
        kirby->unkD4 = 31;
    if (kirby->base.base.base.unk62 & 1)
        kirby->base.base.base.xspeed = 0;
    sub_0805B510(kirby);
    if (kirby->base.base.base.unk62 & 4 && !(kirby->base.base.base.unkC & 0x100))
        ++kirby->unkD8;
    else
        kirby->unkD8 = 0;
    if (kirby->unk11A & 1 || (kirby->base.base.base.unk62 & 4 && kirby->unkD8 > 4))
    {
        sub_08044EA8(kirby);
        return;
    }
    kirby->base.base.base.unkC |= 0x10;
}

void sub_080487AC(struct Kirby *kirby)
{
    kirby->base.base.base.counter = 0;
    kirby->unkD6 = 0;
    Macro_0803EA90_1(kirby);
    if (kirby->unk103 == 23)
        sub_0803E2B0(&kirby->base.base.base, -6, -6, 5, 7);
    else
        sub_0803E2B0(&kirby->base.base.base, -6, -8, 5, 7);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1020;
    kirby->base.base.base.flags |= 0x40;
    if (kirby->base.base.unk78 != sub_080491E4)
        PlaySfx(&kirby->base.base.base, 112);
    kirby->base.base.unk78 = sub_080488E0;
}

void sub_080488E0(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (sub_0805BC78(kirby)) return;
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    if (kirby->unk11A & 2)
    {
        sub_0804990C(kirby);
        return;
    }
    if (kirby->base.base.base.unk62 & 4
        && !(kirby->unk118 & 0x41))
    {
        kirby->unkD4 = 34;
        kirby->base.base.base.flags &= ~2;
    }
    if (kirby->unk118 & 0x41)
    {
        if (kirby->unkD4 != 32)
        {
            kirby->base.base.base.counter = 0;
            kirby->base.base.base.flags |= 4;
            PlaySfx(&kirby->base.base.base, 112);
        }
        else if (kirby->base.base.base.flags & 2)
            PlaySfx(&kirby->base.base.base, 112);
        kirby->unkD4 = 32;
    }
    else if (kirby->unkD4 != 32 || kirby->base.base.base.counter & 0x10)
        kirby->unkD4 = 33;
    if (kirby->base.base.base.unk62 & 1)
        kirby->base.base.base.xspeed = 0;
    sub_0805B450(kirby);
    if (kirby->unkD4 == 32)
    {
        if (kirby->base.base.base.counter & 0x10)
            kirby->base.base.base.counter = 0;
        ++kirby->base.base.base.counter;
    }
    if (gUnk_082D88B8[sub_080023E4(kirby->base.base.base.unk56, kirby->base.base.base.x >> 12, kirby->base.base.base.y >> 12)] & 2)
        sub_08049130(kirby);
    kirby->base.base.base.unkC |= 0x10;
}

void sub_08049130(struct Kirby *kirby)
{
    kirby->base.base.base.counter = 0;
    kirby->base.base.base.xspeed = kirby->base.base.base.yspeed = 0;
    kirby->unkD6 = 0;
    kirby->unkD4 = 35;
    Macro_0803EA90_1(kirby);
    if (kirby->unk103 == 23)
        sub_0803E2B0(&kirby->base.base.base, -6, -6, 5, 7);
    else
        sub_0803E2B0(&kirby->base.base.base, -6, -8, 5, 7);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1020;
    kirby->base.base.base.flags |= 0x40;
    kirby->base.base.unk78 = sub_080491E4;
}

void sub_080491E4(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (sub_0805BC78(kirby)) return;
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    sub_0805B450(kirby);
    if (kirby->unk11A & 2)
    {
        sub_0804990C(kirby);
        return;
    }
    if (gUnk_082D88B8[sub_080023E4(kirby->base.base.base.unk56, kirby->base.base.base.x >> 12, kirby->base.base.base.y >> 12)] & 2)
    {
        kirby->base.base.base.yspeed += 0x20;
        if (kirby->base.base.base.yspeed > 0x140)
            kirby->base.base.base.yspeed = 0x140;
    }
    else
    {
        kirby->base.base.base.yspeed = gUnk_0834C1BE[kirby->base.base.base.counter >> 2];
        if (++kirby->base.base.base.counter > 55)
            kirby->base.base.base.counter = 32;
        if (kirby->unk118 & 0x41)
        {
            kirby->unkD4 = 0x20;
            sub_080487AC(kirby);
            return;
        }
        if (!(gUnk_082D88B8[sub_080023E4(kirby->base.base.base.unk56, kirby->base.base.base.x >> 12, ((kirby->base.base.base.y >> 8) + kirby->base.base.base.unk3F + 4) >> 4)] & 2))
            sub_080487AC(kirby);
    }
    kirby->base.base.base.unkC |= 0x10;
}

void sub_0804990C(struct Kirby *kirby)
{
    kirby->unkD4 = 36;
    kirby->base.base.base.counter = 0;
    kirby->unkD6 = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    sub_08072C5C(kirby);
    if (!(kirby->unk118 & 0x40))
    {
        if (kirby->base.base.base.unk62 & 4)
        {
            kirby->base.base.base.flags &= ~2;
            kirby->base.base.base.flags &= ~0x1070;
        }
        else
        {
            kirby->base.base.base.flags |= 0x20;
            kirby->base.base.base.flags &= ~0x40;
        }
    }
    PlaySfx(&kirby->base.base.base, 111);
    kirby->base.base.unk78 = sub_08049A60;
}

void sub_08049A60(struct Kirby *kirby)
{
    if (sub_0805BC78(kirby)) return;
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    Macro_0803FF64_3(kirby);
    if (kirby->unk11A & 0x100)
    {
        if (Macro_0803FF64_4(kirby))
        {
            if (kirby->unk103 != 23)
            {
                if (gUnk_02021580 < gUnk_0203AD44)
                {
                    if (!(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                    {
                        if (kirby->lives
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                    else
                    {
                        if (!Macro_0803FF64_5(kirby)
                            && !(kirby->base.base.base.unkC & 0x10000)
                            && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                        {
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
                else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
                {
                    if (!(gUnk_0203AD20 & 2)
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                        && gUnk_0203AD30 > kirby->base.base.base.unk56)
                    {
                        if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                        {
                            if (kirby->base.base.base.unkC & 0x10000)
                                PlaySfx(&kirby->base.base.base, 506);
                            sub_08056C2C(kirby);
                            return;
                        }
                    }
                }
            }
            if (kirby->base.base.base.unkC & 0x10000)
                PlaySfx(&kirby->base.base.base, 528);
        }
    }
    if (kirby->unk11A & 0x200)
    {
        if (Macro_0803FF64_4(kirby)
            && !(gUnk_0203AD10 & 4)
            && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x40
            && kirby->unk103 != 23)
        {
            sub_08056E40(kirby);
            return;
        }
    }
    Macro_080435F8(kirby);
    sub_0805B3A0(kirby);
    if (kirby->base.base.base.flags & 2)
    {
        if (kirby->unk118 & 0x40 && !(kirby->unk118 & 2))
            sub_080476C4(kirby);
        else
            Macro_0803FF64_6(kirby);
        return;
    }
    if (kirby->base.base.base.unk62 & 1)
        kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.unkC |= 0x10;
}

void sub_0804A1A0(struct Kirby *kirby)
{
    struct Sprite sprite;

    kirby->base.base.base.unkC |= 0x200;
    sprite.unk0 = 0x6000000;
    sprite.unkC = 36;
    sprite.unk1A = 0;
    sprite.unk1B = 0xFF;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.unk1F = kirby->base.base.base.unk10.unk1F & 0xF;
    sprite.unk8 = 0x80000;
    sub_08155128(&sprite);
    sub_0803D280(0x10 * sprite.unk1F, 0x10);
    kirby->base.base.unk78 = sub_0804CAF0;
    kirby->unkD4 = 123;
    sub_0808D5E0(&kirby->base.base.base);
    if (kirby->base.base.base.flags & 0x80)
        PlaySfx(&kirby->base.base.base, 122);
    else
        PlaySfx(&kirby->base.base.base, 121);
}

void sub_0804A328(struct Kirby *kirby)
{
    struct Sprite sprite;

    kirby->base.base.base.unkC |= 0x200;
    sprite.unk0 = 0x6000000;
    sprite.unkC = 38;
    sprite.unk1A = 0;
    sprite.unk1B = 0xFF;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.unk1F = kirby->base.base.base.unk10.unk1F & 0xF;
    sprite.unk8 = 0x80000;
    sub_08155128(&sprite);
    sub_0803D280(0x10 * sprite.unk1F, 0x10);
    kirby->base.base.unk78 = sub_0804CAF0;
    kirby->unkD4 = 135;
    sub_0808E2EC(&kirby->base.base.base);
    if (Rand16() & 1)
        PlaySfx(&kirby->base.base.base, 107);
    else
        PlaySfx(&kirby->base.base.base, 108);
}

void sub_0804A4CC(struct Kirby *kirby)
{
    struct Sprite sprite;

    kirby->base.base.base.unkC |= 0x200;
    sprite.unk0 = 0x6000000;
    sprite.unkC = 40;
    sprite.unk1A = 0;
    sprite.unk1B = 0xFF;
    sprite.unk10 = 0;
    sprite.unk12 = 0;
    sprite.unk14 = 0;
    sprite.unk16 = 0;
    sprite.unk1C = 0x10;
    sprite.unk1F = kirby->base.base.base.unk10.unk1F & 0xF;
    sprite.unk8 = 0x80000;
    sub_08155128(&sprite);
    sub_0803D280(0x10 * sprite.unk1F, 0x10);
    kirby->base.base.unk78 = sub_0804D2DC;
    kirby->unkD4 = 129;
    if (kirby->base.base.base.flags & 0x80)
        PlaySfx(&kirby->base.base.base, 123);
    else
        PlaySfx(&kirby->base.base.base, 119);
}

void sub_0804A650(struct Kirby *kirby)
{
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0x700;
    kirby->base.base.base.y -= 0x100;
    kirby->base.base.base.flags |= 0x20;
    kirby->base.base.base.unk62 = 0;
    kirby->base.base.base.counter = 72;
    kirby->base.base.base.flags |= 0x100;
    kirby->base.base.base.flags |= 0x200;
    kirby->base.base.unk78 = sub_0804D4E4;
    kirby->unkD4 = 74;
    PlaySfx(&kirby->base.base.base, 128);
}

#define Macro_0804A728(kirby) \
({ \
    (kirby)->base.base.base.counter = 0; \
    (kirby)->unkD6 = 0; \
    (kirby)->unkD8 = 0; \
    (kirby)->unkDE = 0; \
    (kirby)->base.base.base.xspeed = 0; \
    (kirby)->base.base.base.yspeed = 0; \
    (kirby)->base.base.base.unk54 = 0; \
    (kirby)->base.base.base.unk55 = 0; \
    (kirby)->base.base.base.unk58 &= 0x4402; \
    (kirby)->base.base.base.unk57 = 0; \
    Macro_0803E920(kirby); \
    (kirby)->unkE6 = 0; \
    (kirby)->unkE8 = 0; \
    (kirby)->unk110 = 0; \
    (kirby)->base.base.base.unk10.unk1C = 0x10; \
    (kirby)->base.other.unk7C[1].unk1C = 0x10; \
    (kirby)->base.base.base.flags &= ~2; \
    (kirby)->base.base.base.flags &= ~8; \
    (kirby)->base.base.base.flags &= ~0x10; \
    (kirby)->base.base.base.flags &= ~0x40; \
    (kirby)->base.base.base.flags &= ~0x8000000; \
    (kirby)->base.base.base.flags &= ~0x2000000; \
    (kirby)->base.base.base.flags &= ~0x800000; \
    (kirby)->base.base.base.flags &= ~0x100; \
    (kirby)->base.base.base.flags &= ~0x400; \
    (kirby)->base.base.base.flags &= ~0x200; \
    (kirby)->base.base.base.flags &= ~0x4000000; \
    (kirby)->base.base.base.flags &= ~0x800; \
    (kirby)->base.base.base.flags &= ~0x8000; \
    (kirby)->base.base.base.unk5C &= ~0x20000; \
    (kirby)->base.base.base.unkC &= ~0x10000000; \
    (kirby)->base.base.base.unkC &= ~0x8000; \
    (kirby)->base.base.base.unkC &= ~0x10000; \
    (kirby)->base.base.base.unkC &= ~0x20; \
    (kirby)->base.base.base.unkC &= ~0x10; \
    (kirby)->base.base.base.unkC &= ~0x200; \
    (kirby)->base.base.base.unkC &= ~0x400; \
    (kirby)->base.base.base.unkC &= ~0x2000; \
    (kirby)->base.base.base.unkC &= ~0x40000; \
    if ((kirby)->base.base.base.unkC & 2) \
    { \
        if ((kirby)->unk103 == 9) \
            sub_0806EB74(&(kirby)->base.base.base); \
        (kirby)->base.base.base.unkC &= ~2; \
    } \
    if (gUnk_02021580 == (kirby)->base.base.base.unk56) \
        gUnk_02021580 = 0xFF; \
    sub_0803E558((kirby)->base.base.base.unk56); \
    gCurLevelInfo[(kirby)->base.base.base.unk56].unk8 &= ~8; \
    gUnk_0203AD10 &= ~0x80; \
})

void sub_0804A728(struct Kirby *kirby)
{
    struct Kirby *kirby2 = kirby->base.base.base.kirby1;

    if (kirby2->base.base.base.unk68 & 0x20000)
    {
        if (!(kirby->base.base.base.flags & 0x40))
            sub_0804ADD4(kirby);
    }
    else if (!(kirby->base.base.base.flags & 0x8000))
    {
        Macro_0804A728(kirby);
        Macro_0803EA90_1(kirby);
        Macro_0803EA90_2(kirby);
        if (kirby2->base.base.base.unk68 & 0x40000)
            sub_0804A650(kirby);
        else
        {
            sub_0806FE64(2, &kirby->base.base.base);
            if (kirby->hp == 0 || (kirby->hp -= kirby2->base.base.base.unk63) <= 0)
            {
                kirby->base.base.unk78 = sub_0804ACFC;
                sub_08088640(&kirby->base.base, 0x1C, 0x20);
            }
            else
            {
                if (kirby->unk103)
                {
                    if ((kirby->unk103 != 23 || !(kirby->base.base.base.unk58 & 0x400)) && kirby->unk103 != 11)
                        sub_080A9038(kirby, FALSE);
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56)
                    {
                        sub_08035E28(0);
                        sub_08034C9C(2);
                    }
                    sub_08035E40(&kirby->base.base.base);
                    kirby->unk103 = 0;
                    kirby->base.base.base.unkC &= ~2;
                    sub_0806F260(kirby);
                    sub_0806EFF8(kirby);
                    PlaySfx(&kirby->base.base.base, 129);
                }
                sub_080880AC(kirby, 120);
                if (kirby2->base.base.base.unk68 & 0x700)
                {
                    if (kirby2->base.base.base.x < kirby->base.base.base.x)
                        kirby->base.base.base.xspeed = 0x80;
                    else
                        kirby->base.base.base.xspeed = -0x80;
                    kirby->base.base.base.yspeed = 0x280;
                    kirby->base.base.base.y -= 0x100;
                    kirby->base.base.base.flags |= 0x20;
                    if (kirby2->base.base.base.unk68 & 0x200)
                    {
                        sub_08088640(&kirby->base.base, 0x1E, 0x20);
                        sub_0804A4CC(kirby);
                    }
                    else if (kirby2->base.base.base.unk68 & 0x400)
                    {
                        sub_08088640(&kirby->base.base, 0x1F, 0x20);
                        sub_0804A328(kirby);
                    }
                    else
                    {
                        sub_08088640(&kirby->base.base, 0x1D, 0x20);
                        sub_0804A1A0(kirby);
                    }
                }
                else
                {
                    sub_08088640(&kirby->base.base, 0x1C, 0x20);
                    if (!kirby2->base.base.base.unk64)
                        kirby->base.base.base.xspeed = -0x180;
                    else
                        kirby->base.base.base.xspeed = -kirby2->base.base.base.unk64;
                    if (!kirby2->base.base.base.unk66)
                        kirby->base.base.base.yspeed = kirby2->base.base.base.unk66; // 0
                    if (kirby2->base.base.base.x < kirby->base.base.base.x)
                        kirby->base.base.base.xspeed = -kirby->base.base.base.xspeed;
                    else if (kirby2->base.base.base.x == kirby->base.base.base.x && kirby->base.base.base.flags & 1)
                        kirby->base.base.base.xspeed = -kirby->base.base.base.xspeed;
                    kirby->unkD4 = 39;
                    kirby->base.base.unk78 = sub_0804ACFC;
                    if (Rand16() & 1)
                        PlaySfx(&kirby->base.base.base, 107);
                    else
                        PlaySfx(&kirby->base.base.base, 108);
                    if (kirby->base.base.base.unk58 & 2)
                        kirby->unkD9 = 1;
                }
            }
        }
    }
}

void sub_0804ACFC(struct Kirby *kirby)
{
    if (!kirby->unkD9 && kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
    }
    else if (kirby->base.base.base.flags & 2 || kirby->base.base.base.counter > 18)
    {
        kirby->base.base.base.flags &= ~0x40000;
        kirby->unkD9 = 0;
        Macro_0803FF64_6(kirby);
    }
    else
    {
        if (kirby->base.base.base.unk62 & 1)
            kirby->base.base.base.xspeed = 0;
        sub_0805B1B8(kirby);
        kirby->base.base.base.flags &= ~0x800;
        ++kirby->base.base.base.counter;
    }
}

void sub_0804ADD4(struct Kirby *kirby)
{
    Macro_0804A728(kirby);
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    if (kirby->unk103)
    {
        if ((kirby->unk103 != 23 || !(kirby->base.base.base.unk58 & 0x400)) && kirby->unk103 != 11)
            sub_080A9038(kirby, FALSE);
        if (gUnk_0203AD3C == kirby->base.base.base.unk56)
        {
            sub_08035E28(0);
            sub_08034C9C(2);
        }
        sub_08035E40(&kirby->base.base.base);
        kirby->unk103 = 0;
        kirby->base.base.base.unkC &= ~2;
        sub_0806F260(kirby);
        sub_0806EFF8(kirby);
        PlaySfx(&kirby->base.base.base, 129);
    }
    kirby->base.base.base.unk5C |= 0x20000;
    kirby->base.base.base.xspeed = -0x180;
    kirby->base.base.base.yspeed = 0x1C0;
    kirby->base.base.base.y -= 0x100;
    kirby->base.base.base.flags |= 0x20;
    kirby->base.base.base.unk62 = 0;
    if (kirby->base.base.base.flags & 1)
        kirby->base.base.base.xspeed = -kirby->base.base.base.xspeed;
    kirby->unkD4 = 39;
    kirby->base.base.unk78 = sub_0804B198;
    sub_0808925C(&kirby->base.base.base);
    PlaySfx(&kirby->base.base.base, 140);
}

void sub_0804B198(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (++kirby->base.base.base.counter > 30)
    {
        kirby->base.base.base.flags &= ~0x40000;
        kirby->base.base.base.unk5C &= ~0x20000;
        Macro_0803FF64_6(kirby);
        return;
    }
    if (kirby->unkD4 == 20)
    {
        if (kirby->base.base.base.flags & 2)
        {
            kirby->base.base.base.flags &= ~0x40000;
            kirby->base.base.base.unk5C &= ~0x20000;
            Macro_0803FF64_6(kirby);
            return;
        }
    }
    else if (kirby->base.base.base.unk62 & 4)
    {
        kirby->base.base.base.xspeed = 0;
        kirby->base.base.base.yspeed = 0x180;
        kirby->base.base.base.flags |= 0x20;
        kirby->base.base.base.y -= 0x100;
        kirby->unkD4 = 20;
        kirby->base.base.base.flags &= ~2;
        kirby->base.base.base.counter = 0;
        sub_0808925C(&kirby->base.base.base);
    }
    if (kirby->base.base.base.unk62 & 1)
        kirby->base.base.base.xspeed = 0;
    Macro_080435F8(kirby);
    sub_0805B1B8(kirby);
}

bool8 sub_0804B36C(struct Kirby *kirby)
{
    if (Macro_0810B1F4(&kirby->base.base.base)
        || kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    if (kirby->base.base.base.flags & 0x40)
        return FALSE;
    Macro_0804A728(kirby);
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->unkD4 = 96;
    kirby->base.base.unk78 = sub_0804B5F4;
    return TRUE;
}

void sub_0804B5F4(struct Kirby *kirby)
{
    if (++kirby->base.base.base.counter > 10)
        Macro_0803FF64_6(kirby);
    else
    {
        if (!(kirby->base.base.base.unk62 & 4))
            Macro_080435F8(kirby);
        sub_0805B1B8(kirby);
        if (kirby->base.base.base.unk62 & 1)
            kirby->base.base.base.xspeed = 0;
    }
}

bool8 sub_0804B6FC(struct Kirby *kirby)
{
    u8 v;

    if (!(kirby->base.base.base.unkC & 0x1000)
        || Macro_0810B1F4(&kirby->base.base.base)
        || kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    if (!(kirby->unk118 & 0x40))
        return FALSE;
    v = kirby->base.base.base.flags & 0x40;
    Macro_0804A728(kirby);
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->unkD4 = 96;
    if (kirby->unk103 == 14)
        kirby->unkD4 = 55;
    if (kirby->base.base.base.flags & 0x80)
        sub_08054F90(kirby);
    else if (v && kirby->unk103 != 14 && kirby->unk103 != 19)
    {
        sub_0804990C(kirby);
        kirby->unkD4 = 43;
    }
    kirby->base.base.unk78 = sub_0804BA10;
    kirby->base.base.base.flags |= 0x200;
    kirby->base.base.base.flags |= 0x800;
    kirby->base.base.base.flags &= ~2;
    sub_0808AE30(&kirby->base.base.base, 0, 0x28F, 3)->unkC.unk14 = 0x380;
    return TRUE;
}

void sub_0804BA10(struct Kirby *kirby)
{
    if (kirby->unkD4 == 96 || kirby->unkD4 == 55)
        kirby->base.base.base.flags |= 4;
    else if (kirby->base.base.base.flags & 2)
    {
        kirby->unkD4 = 96;
        if (kirby->unk103 == 14)
            kirby->unkD4 = 55;
    }
    if (++kirby->base.base.base.counter > 72)
    {
        kirby->base.base.base.flags &= ~0x200;
        kirby->base.base.base.flags &= ~0x100;
        kirby->base.base.base.flags &= ~0x800;
        Macro_0803FF64_6(kirby);
    }
}

bool8 sub_0804BAD8(struct Kirby *kirby)
{
    Macro_0804A728(kirby);
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->unkD4 = 0;
    kirby->base.base.unk78 = sub_0804BD00;
    return TRUE;
}

void sub_0804BD00(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    Macro_080435F8(kirby);
    sub_0805B1B8(kirby);
}

#define LocalRandLessThan3() \
({ \
    u16 _r = Rand16(), _i; \
 \
    for (_i = 0; _i <= 1; ++_i) \
        if (_r < (_i+1) * (0x10000/3)) \
            break; \
    _i; \
})

#define Macro_0804BD98(kirby) \
({ \
    if (gUnk_0203AD3C == (kirby)->base.base.base.unk56) \
    { \
        sub_08035E28(0); \
        sub_08034C9C(2); \
        sub_08035F50(&(kirby)->base.base.base); \
    } \
})

bool8 sub_0804BD98(struct Kirby *kirby, u8 r7, u8 sl, u8 r8, s8 sp04, s8 sp08)
{
    Macro_0804A728(kirby);
    if (kirby->unk103 == 11)
    {
        Macro_0804BD98(kirby);
        kirby->unk103 = 0;
        sub_0806F260(kirby);
        sub_0806EFF8(kirby);
    }
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.counter = 0;
    kirby->unkDB = kirby->unk103;
    kirby->unk103 = 0;
    if ((kirby->unkDD & 0x1F) == 0x1A)
        gUnk_0203AD34 = 0;
    kirby->unkDD = 0;
    kirby->base.base.base.flags &= ~0x80;
    sub_0806E4EC(&kirby->base.base.base);
    sub_0803E558(kirby->base.base.base.unk56);
    kirby->unkD4 = 0;
    kirby->base.base.unk78 = sub_0804C300;
    kirby->base.base.base.flags |= 0x200;
    kirby->base.base.base.flags |= 0x1000000;
    kirby->unk118 = 0;
    kirby->unk11A = 0;
    kirby->unk11C = 0;
    kirby->unk11E = 0;
    kirby->base.base.base.flags &= ~1;
    if (sl & 1)
    {
        if (!(r7 & 1))
            kirby->base.base.base.flags |= 1;
    }
    else
    {
        if (r7 & 1)
            kirby->base.base.base.flags |= 1;
    }
    // TODO: is there out-of-bounds access below? 
    switch (sl)
    {
    case 0: // required for matching
    default:
        if (r8)
            kirby->unkD6 = gUnk_0834C394[LocalRandLessThan3()+6];
        else
            kirby->unkD6 = gUnk_0834C394[LocalRandLessThan3()];
        kirby->base.base.base.x = (sp04 * 0x10 + gUnk_0834C384[r7]) * 0x100;
        kirby->base.base.base.y = sp08 * 0x1000 - 0x800;
        break;
    case 2:
        kirby->unkD6 = gUnk_0834C3A1[r7 + 2 * r8];
        if (r8 == 1)
            kirby->base.base.base.flags ^= 1;
        kirby->base.base.base.x = (sp04 * 0x10 + (gUnk_0834C384+1)[r7 + 2 * r8]) * 0x100;
        kirby->base.base.base.y = sp08 * 0x1000 - 0x800;
        break;
    case 3:
        kirby->unkD6 = gUnk_0834C3A9[r7 + 3 * r8];
        kirby->base.base.base.x = (sp04 * 0x10 + (gUnk_0834C384+9)[r7]) * 0x100;
        kirby->base.base.base.y = sp08 * 0x1000 - 0x800;
        if (r7 == 0)
            kirby->base.base.base.unk10.unk14 = 0x380;
        break;
    case 4:
        kirby->unkD6 = gUnk_0834C3B5[r7 + 4 * r8];
        kirby->base.base.base.x = (sp04 * 0x10 + (gUnk_0834C384+12)[r7]) * 0x100;
        kirby->base.base.base.y = sp08 * 0x1000 - 0x800;
        if (r7 == 0 || r7 == 1)
            kirby->base.base.base.unk10.unk14 = 0x380;
        break;
    }
    if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
        m4aMPlayFadeOut(&gUnk_030016A0, 8);
    if (kirby->base.base.base.unk60__42 == gUnk_0835105C[2]
        || kirby->base.base.base.unk60__42 == gUnk_0835105C[6])
        kirby->base.base.base.flags |= 0x100;
    return TRUE;
}

void sub_0804C300(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.unk60__42 == gUnk_0835105C[2]
        || kirby->base.base.base.unk60__42 == gUnk_0835105C[6])
    {
        kirby->base.base.base.unk62 |= 4;
        gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 1;
    }
    else
        Macro_080435F8(kirby);
    if (kirby->base.base.base.unk62 & 4)
    {
        if (++kirby->base.base.base.counter > 0x60)
        {
            sub_0804C410(kirby, kirby->unkD6);
            return;
        }
        else if (kirby->base.base.base.unk62 & 4)
        {
            kirby->unkD4 = 0;
            return;
        }
    }
    kirby->unkD4 = 17;
}

void sub_0804C410(struct Kirby *kirby, s16 r5)
{
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->unkD4 = r5;
    kirby->base.base.unk78 = sub_0804C614;
    kirby->unkD8 = 0;
    kirby->unkD6 = 0;
    kirby->base.base.base.counter = 0;
    kirby->base.base.base.flags &= ~2;
    PlaySfx(&kirby->base.base.base, 0);
    if (kirby->unkD4 < 165)
        PlaySfx(&kirby->base.base.base, 23);
    else
        PlaySfx(&kirby->base.base.base, 22);
}

void sub_0804C614(struct Kirby *kirby)
{
    struct Object4 *r3;
    struct Unk_02022930_0 *r2;

    if (!(kirby->base.base.base.flags & 2))
        return;
    if (!kirby->unkD8)
    {
        r3 = sub_0808AE30(&kirby->base.base.base, 0, 0x28F, 3);
        if (kirby->unkD4 >= 154 && kirby->unkD4 <= 164)
        {
            if (kirby->base.base.base.flags & 1)
                r3->unk34 -= gUnk_0834C3C5[kirby->unkD4 - 154][0] * 0x100;
            else
                r3->unk34 += gUnk_0834C3C5[kirby->unkD4 - 154][0] * 0x100;
            r3->unk38 += gUnk_0834C3C5[kirby->unkD4 - 154][1] * 0x100;
        }
        else if (kirby->unkD4 >= 172 && kirby->unkD4 <= 184)
        {
            if (kirby->base.base.base.flags & 1)
                r3->unk34 -= gUnk_0834C3DB[kirby->unkD4 - 172][0] * 0x100;
            else
                r3->unk34 += gUnk_0834C3DB[kirby->unkD4 - 172][0] * 0x100;
            r3->unk38 += gUnk_0834C3DB[kirby->unkD4 - 172][1] * 0x100;
        }
        r3->unkC.unk14 = 0x580;
    }
    if (kirby->unkD8 == 0x60)
    {
        if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
            r2 = sub_0803CA20(kirby->base.base.base.unk56);
        else
            r2 = sub_0803CAE4(kirby->base.base.base.unk56);
        r2->unkA = 0x400;
        r2->unk8 |= 0x40;
    }
    if (++kirby->unkD8 > 0x80)
    {
        kirby->base.base.base.flags &= ~0x1000000;
        kirby->base.base.base.flags &= ~1;
        kirby->unk103 = kirby->unkDB;
        kirby->unkDB = 0;
        sub_0806F260(kirby);
        sub_0806EFF8(kirby);
        sub_0806F288(kirby);
        if (kirby->unk103 == 12 || kirby->unk103 == 24 || kirby->unk103 == 21)
            sub_08088118(kirby);
        kirby->unk106 = 0x321;
        kirby->unk108 = kirby->unkF2;
        kirby->unk10A = kirby->unkF3;
        kirby->base.base.base.unkC &= ~0x800;
        sub_08055920(kirby);
    }
}

bool8 sub_0804C7D0(struct Kirby *kirby)
{
    if (Macro_0810B1F4(&kirby->base.base.base)
        || kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    if (kirby->base.base.base.flags & 0x40)
        return FALSE;
    Macro_0804A728(kirby);
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->unkD4 = 10;
    kirby->base.base.unk78 = sub_0804CA58;
    return TRUE;
}

void sub_0804CA58(struct Kirby *kirby)
{
    if (++kirby->base.base.base.counter > 0x20)
        Macro_0803FF64_6(kirby);
    else
    {
        sub_0805B1B8(kirby);
        if (kirby->base.base.base.unk62 & 1)
            kirby->base.base.base.xspeed = 0;
    }
}

void sub_0804CAF0(struct Kirby *kirby)
{
    struct Sprite sprite;

    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        kirby->base.base.base.yspeed -= 24;
        if (kirby->base.base.base.yspeed < -0x250)
            kirby->base.base.base.yspeed = -0x250;
        Macro_080435F8_2(kirby);
    }
    kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.counter > 0x40)
    {
        kirby->base.base.base.flags &= ~0x40000;
        sub_0803E558(kirby->base.base.base.unk56);
        sub_0808E024(&kirby->base.base.base);
        Macro_0803FF64_6(kirby);
    }
    else
    {
        kirby->base.base.base.flags &= ~0x800;
        ++kirby->base.base.base.counter;
        if (kirby->unk11A)
        {
            ++kirby->base.base.base.counter;
            kirby->base.base.base.unk54 = 2;
        }
        if (kirby->base.base.base.yspeed <= 0 && kirby->base.base.base.unk62 & 4)
        {
            kirby->base.base.base.unkC |= 0x200;
            sprite.unk0 = 0x6000000;
            sprite.unkC = 36;
            sprite.unk1A = 0;
            sprite.unk1B = 0xFF;
            sprite.unk10 = 0;
            sprite.unk12 = 0;
            sprite.unk14 = 0;
            sprite.unk16 = 0;
            sprite.unk1C = 0x10;
            sprite.unk1F = kirby->base.base.base.unk10.unk1F & 0xF;
            sprite.unk8 = 0x80000;
            sub_08155128(&sprite);
            sub_0803D280(0x10 * sprite.unk1F, 0x10);
            sub_0808E024(&kirby->base.base.base);
            if (kirby->unkD4 == 123)
                sub_0808DC80(&kirby->base.base.base);
            else
                sub_0808E66C(&kirby->base.base.base);
            kirby->base.base.base.counter = 0;
            if (kirby->base.base.base.flags & 0x80)
            {
                kirby->base.base.base.xspeed = 0;
                kirby->base.base.base.yspeed = 0;
                kirby->unkD4 = 124;
                kirby->base.base.unk78 = sub_0804D0A4;
            }
            else
            {
                if (kirby->base.base.base.xspeed > 0)
                    kirby->base.base.base.xspeed = 0x10;
                else
                    kirby->base.base.base.xspeed = -0x10;
                kirby->base.base.base.yspeed = 0x160;
                kirby->base.base.base.flags |= 0x20;
                kirby->base.base.base.y -= 0x100;
                kirby->unkD4 = 125;
                kirby->base.base.unk78 = sub_0804CD0C;
            }
        }
    }
}

void sub_0804CD0C(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        kirby->base.base.base.yspeed -= 0x10;
        if (kirby->base.base.base.yspeed < -0x250)
            kirby->base.base.base.yspeed = -0x250;
        Macro_080435F8_2(kirby);
    }
    if (kirby->base.base.base.counter > 0x3C)
    {
        kirby->base.base.base.flags &= ~0x40000;
        sub_0803E558(kirby->base.base.base.unk56);
        sub_0808E024(&kirby->base.base.base);
        Macro_0803FF64_6(kirby);
    }
    else
    {
        kirby->base.base.base.flags &= ~0x800;
        ++kirby->base.base.base.counter;
        if (kirby->base.base.base.yspeed <= 0 && kirby->base.base.base.unk62 & 4)
        {
            kirby->base.base.base.xspeed = 0;
            kirby->base.base.base.yspeed = 0x200;
            kirby->base.base.base.flags |= 0x20;
            kirby->base.base.base.y -= 0x100;
            sub_0803E558(kirby->base.base.base.unk56);
            kirby->unkD4 = 126;
            kirby->base.base.unk78 = sub_0804CE74;
            kirby->base.base.base.flags &= ~2;
        }
    }
}

void sub_0804CE74(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    Macro_0803FF64_1(kirby);
    if (sub_0805BC78(kirby)) return;
    if (kirby->unk11A & 2 && kirby->unk103 != 23)
    {
        Macro_0803FF64_2(kirby);
        return;
    }
    if (kirby->unk118 & 0x40)
        ++kirby->unkD8;
    else
        kirby->unkD8 = 0;
    if ((kirby->unkD8 > 7 || kirby->unk11A & 1)
        && !(kirby->base.base.base.flags & 0x80)
        && kirby->unk103 != 23)
    {
        sub_080476C4(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        if (kirby->base.base.base.unk58 & 2)
        {
            kirby->base.base.base.yspeed -= 0x30;
            if (kirby->base.base.base.yspeed < -0x250)
                kirby->base.base.base.yspeed = -0x250;
        }
        else
        {
            kirby->base.base.base.yspeed -= 0x30;
            if (kirby->base.base.base.yspeed < -0x250)
                kirby->base.base.base.yspeed = -0x250;
        }
        Macro_080435F8_2(kirby);
    }
    sub_0805B3A0(kirby);
    if (kirby->base.base.base.flags & 2)
    {
        kirby->base.base.base.flags &= ~0x40000;
        Macro_0803FF64_6(kirby);
    }
    else
        kirby->base.base.base.flags &= ~0x800;
}

void sub_0804D0A4(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    kirby->base.base.base.flags &= ~0x800;
    if (kirby->unkD4 == 124)
    {
        if (kirby->base.base.base.counter > 2)
        {
            if (kirby->base.base.base.xspeed > 0)
                kirby->base.base.base.xspeed = 0x10;
            else
                kirby->base.base.base.xspeed = -0x10;
            kirby->base.base.base.yspeed = 0x180;
            kirby->unkD4 = 125;
            kirby->base.base.base.flags |= 0x20;
            kirby->base.base.base.y -= 0x100;
        }
        ++kirby->base.base.base.counter;
    }
    else if (kirby->unkD4 == 125)
    {
        if (!(kirby->base.base.base.unk62 & 4))
        {
            kirby->base.base.base.yspeed -= 0x10;
            if (kirby->base.base.base.yspeed < -0x250)
                kirby->base.base.base.yspeed = -0x250;
            Macro_080435F8_2(kirby);
        }
        if (kirby->base.base.base.yspeed <= 0
            && kirby->base.base.base.unk62 & 4)
        {
            kirby->base.base.base.xspeed = 0;
            kirby->base.base.base.yspeed = 0;
            kirby->unkD4 = 126;
        }
    }
    else if (kirby->unkD4 == 126)
    {
        if (kirby->base.base.base.counter > 3)
        {
            kirby->base.base.base.xspeed = 0;
            kirby->base.base.base.yspeed = 0x200;
            kirby->base.base.base.flags |= 0x20;
            kirby->base.base.base.y -= 0x100;
            kirby->unkD4 = 127;
        }
        ++kirby->base.base.base.counter;
    }
    else if (kirby->unkD4 == 127)
    {
        if (!(kirby->base.base.base.unk62 & 4))
        {
            kirby->base.base.base.yspeed -= 0x40;
            if (kirby->base.base.base.yspeed < -0x250)
                kirby->base.base.base.yspeed = -0x250;
            Macro_080435F8_2(kirby);
        }
        if (kirby->base.base.base.yspeed <= 0
            && kirby->base.base.base.unk62 & 4)
        {
            kirby->base.base.base.xspeed = 0;
            kirby->base.base.base.yspeed = 0;
            kirby->unkD4 = 128;
            kirby->base.base.base.flags &= ~2;
        }
    }
    else if (kirby->unkD4 == 128 && kirby->base.base.base.flags & 2)
    {
        sub_0803E558(kirby->base.base.base.unk56);
        kirby->base.base.base.flags &= ~0x40000;
        Macro_0803FF64_6(kirby);
    }
}

void sub_0804D2DC(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        kirby->base.base.base.yspeed -= 24;
        if (kirby->base.base.base.yspeed < -0x250)
            kirby->base.base.base.yspeed = -0x250;
        Macro_080435F8_2(kirby);
    }
    kirby->base.base.base.flags &= ~0x800;
    if (kirby->base.base.base.flags & 2)
    {
        kirby->base.base.base.counter = 0;
        kirby->unkD4 = 131;
        kirby->base.base.unk78 = sub_0804D3B4;
        kirby->base.base.base.flags &= ~2;
        sub_0808E9C8(&kirby->base.base.base);
    }
    if (kirby->base.base.base.yspeed <= 0
        && kirby->base.base.base.unk62 & 4)
    {
        kirby->base.base.base.xspeed = 0;
        if (kirby->base.base.base.flags & 0x80)
            kirby->base.base.base.yspeed = 0x1D0;
    }
}

void sub_0804D3B4(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        kirby->base.base.base.yspeed -= 24;
        if (kirby->base.base.base.yspeed < -0x250)
            kirby->base.base.base.yspeed = -0x250;
        Macro_080435F8_2(kirby);
    }
    if (kirby->base.base.base.unk10.unk16 > 0x600)
    {
        kirby->base.base.base.counter = 1;
        if (kirby->unk11A)
        {
            kirby->base.base.base.unk10.unk16 -= 0x100;
            kirby->base.base.base.unk54 = 2;
        }
    }
    if (kirby->base.base.base.unk10.unk16 <= 0 && kirby->base.base.base.counter)
    {
        kirby->base.base.base.counter = 0;
        sub_0808AE30(&kirby->base.base.base, 0, 0x2A7, 0);
    }
    if (kirby->base.base.base.flags & 2)
    {
        kirby->base.base.base.xspeed = 0;
        kirby->base.base.base.yspeed = 0x200;
        kirby->base.base.base.flags |= 0x20;
        kirby->base.base.base.y -= 0x100;
        sub_0803E558(kirby->base.base.base.unk56);
        kirby->unkD4 = 132;
        kirby->base.base.unk78 = sub_0804CE74;
        kirby->base.base.base.flags &= ~2;
    }
    if (kirby->base.base.base.yspeed <= 0 && kirby->base.base.base.unk62 & 4)
        kirby->base.base.base.xspeed = 0;
}

void sub_0804D4E4(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        kirby->base.base.base.yspeed -= 56;
        if (kirby->base.base.base.yspeed < -0x250)
            kirby->base.base.base.yspeed = -0x250;
        Macro_080435F8_2(kirby);
    }
    if (!kirby->unkD6)
    {
        if  (kirby->base.base.base.yspeed < 0)
        {
            if (kirby->base.base.base.flags & 0x80)
                kirby->unkD4 = gUnk_0834C1DA[kirby->unkD8];
            else
                kirby->unkD4 = (kirby->unkD8 >> 1) + 74;
            kirby->unkD8 = (kirby->unkD8 + 1) & 0x1F;
        }
        else if (!(gUnk_0203AD40 & 7))
        {
            sub_0808AE30(&kirby->base.base.base, 0, 0x2A7, 0)->unkC.unk14 = 0x680;
            PlaySfx(&kirby->base.base.base, 128);
        }
        if (kirby->base.base.base.counter && !--kirby->base.base.base.counter)
            kirby->base.base.base.flags &= ~0x100;
        if (kirby->base.base.base.unk62 & 4)
        {
            kirby->base.base.base.xspeed = -0x100;
            kirby->base.base.base.yspeed = 0x280;
            kirby->base.base.base.flags |= 0x20;
            kirby->base.base.base.y -= 0x100;
            if (kirby->base.base.base.flags & 1)
                kirby->base.base.base.xspeed = -kirby->base.base.base.xspeed;
            ++kirby->unkD6;
            if (!kirby->hp || !--kirby->hp)
                sub_08088640(&kirby->base.base, 0x1C, 0x20);
            else
            {
                if (kirby->unk103)
                {
                    if ((kirby->unk103 != 23 || !(kirby->base.base.base.unk58 & 0x400)) && kirby->unk103 != 11)
                        sub_080A9038(kirby, FALSE);
                    if (gUnk_0203AD3C == kirby->base.base.base.unk56)
                    {
                        sub_08035E28(0);
                        sub_08034C9C(2);
                    }
                    sub_08035E40(&kirby->base.base.base);
                    kirby->unk103 = 0;
                    kirby->base.base.base.unkC &= ~2;
                    sub_0806F260(kirby);
                    sub_0806EFF8(kirby);
                    PlaySfx(&kirby->base.base.base, 129);
                }
                sub_080880AC(kirby, 120);
                sub_08088640(&kirby->base.base, 0x1C, 0x20);
                sub_0806FE64(2, &kirby->base.base.base);
                if (Rand16() & 1)
                    PlaySfx(&kirby->base.base.base, 107);
                else
                    PlaySfx(&kirby->base.base.base, 108);
                sub_0808AE30(&kirby->base.base.base, 0, 0x2A7, 0);
            }
        }
    }
    else
    {
        if (kirby->base.base.base.flags & 0x80)
            kirby->unkD4 = gUnk_0834C20A[kirby->unkD6];
        else if (kirby->unkD6 & 8)
            kirby->unkD4 = 89;
        else
            kirby->unkD4 = 87;
        if (++kirby->unkD6 > 14)
        {
            kirby->base.base.base.flags &= ~0x200;
            kirby->base.base.base.unkC &= ~0x200;
            Macro_0803FF64_6(kirby);
        }
    }
}

void sub_0804D9D4(struct Kirby *kirby)
{
    u32 v;

    if (~(kirby->base.base.base.unk5C & ~7) & 0x40
        && (kirby->base.base.base.unk5C & 7) <= 3
        && !(kirby->base.base.base.flags & 0x8000))
    {
        kirby->unkD4 = 39;
        v = kirby->base.base.base.unk58;
        Macro_0804A728(kirby);
        if (kirby->base.base.base.flags & 0x80)
            kirby->base.base.base.yspeed = 0x240;
        else
            kirby->base.base.base.yspeed = 0x300;
        Macro_0803EA90_1(kirby);
        Macro_0803EA90_2(kirby);
        kirby->base.base.base.flags &= ~2;
        kirby->base.base.base.flags &= ~0x10;
        kirby->base.base.base.flags |= 0x20;
        kirby->base.base.base.y -= 0x100;
        kirby->base.base.base.flags &= ~2;
        kirby->base.base.base.flags &= ~0x40;
        kirby->base.base.base.flags |= 0x20;
        if (!kirby->hp || !--kirby->hp)
            sub_08088640(&kirby->base.base, 0x1C, 0x20);
        else
        {
            if (kirby->unk103)
            {
                if ((kirby->unk103 != 23 || !(kirby->base.base.base.unk58 & 0x400)) && kirby->unk103 != 11)
                    sub_080A9038(kirby, FALSE);
                if (gUnk_0203AD3C == kirby->base.base.base.unk56)
                {
                    sub_08035E28(0);
                    sub_08034C9C(2);
                }
                sub_08035E40(&kirby->base.base.base);
                kirby->unk103 = 0;
                kirby->base.base.base.unkC &= ~2;
                sub_0806F260(kirby);
                sub_0806EFF8(kirby);
                PlaySfx(&kirby->base.base.base, 129);
            }
            sub_080880AC(kirby, 120);
            sub_0806FE64(2, &kirby->base.base.base);
            if (v & 0xF00000)
            {
                if (kirby->base.base.base.flags & 1)
                    kirby->base.base.base.xspeed = 0x80;
                else
                    kirby->base.base.base.xspeed = -0x80;
                switch (v & 0xF00000)
                {
                case 0x100000:
                    sub_08088640(&kirby->base.base, 0x1D, 0x20);
                    sub_0804A1A0(kirby);
                    break;
                case 0x200000:
                    sub_08088640(&kirby->base.base, 0x1F, 0x20);
                    sub_0804A328(kirby);
                    break;
                }
            }
            else
            {
                sub_08088640(&kirby->base.base, 0x1C, 0x20);
                if (Rand16() & 1)
                    PlaySfx(&kirby->base.base.base, 107);
                else
                    PlaySfx(&kirby->base.base.base, 108);
                kirby->base.base.unk78 = sub_0804DF44;
                if (kirby->base.base.base.unk58 & 2)
                    kirby->unkD9 = 1;
            }
        }
    }
}

void sub_0804DF44(struct Kirby *kirby)
{
    if (!kirby->unkD9 && kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
    {
        if (kirby->base.base.base.unk58 & 2) // pointless
        {
            kirby->base.base.base.yspeed -= 24;
            if (kirby->base.base.base.yspeed < -0x250)
                kirby->base.base.base.yspeed = -0x250;
        }
        else
        {
            kirby->base.base.base.yspeed -= 24;
            if (kirby->base.base.base.yspeed < -0x250)
                kirby->base.base.base.yspeed = -0x250;
        }
        Macro_080435F8_2(kirby);
    }
    sub_0805B3A0(kirby);
    if (kirby->base.base.base.flags & 2 || kirby->base.base.base.counter > 18)
    {
        kirby->base.base.base.flags &= ~0x40000;
        Macro_0803FF64_6(kirby);
    }
    else
    {
        if (kirby->base.base.base.unk62 & 1)
            kirby->base.base.base.xspeed = 0;
        sub_0805B1B8(kirby);
        kirby->base.base.base.flags &= ~0x800;
        ++kirby->base.base.base.counter;
    }
}

void sub_0804E09C(struct Kirby *kirby)
{
    bool32 sb = FALSE;
    struct Kirby *kirby1 = kirby->base.base.base.kirby1;
    struct Kirby_110 *sl = kirby->unk110;

    kirby->unk110 = NULL;
    if (kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->base.base.base.flags & 0x3800B00)
        return;
    if (kirby->base.base.base.unk58 & 2)
        sb = TRUE;
    Macro_0804A728(kirby);
    kirby->unk110 = sl;
    if (sb)
    {
        if (kirby->base.other.unk7C[1].unk1F != 0xE)
            sub_0805BA58(kirby);
        kirby->base.base.base.unk58 |= 2;
    }
    else if (kirby->base.other.unk7C[1].unk1F == 0xE)
        sub_0805BBB4(kirby);
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags |= 0xB00;
    kirby->base.base.base.flags &= ~0x40000;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    kirby->base.base.unk78 = sub_0804E60C;
    kirby->unkD8 = 0;
    kirby->unkD6 = 0;
    kirby->unkD9 = 0;
    kirby->base.base.base.counter = -1;
    if (kirby1->base.base.base.flags & 1)
        kirby->base.base.base.flags |= 1;
    else
        kirby->base.base.base.flags &= ~1;
}

u8 sub_0804E3E4(struct Kirby *kirby)
{
    struct Kirby_110 *r7 = kirby->unk110;

    if (r7[kirby->unkD6].flags & ~0xFC0)
    {
        Macro_0803E920(kirby);
        gCurLevelInfo[kirby->base.base.base.unk56].unk662 = 0x300;
        gCurLevelInfo[kirby->base.base.base.unk56].unk664 = 0x300;
        gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 0;
        kirby->base.base.base.flags &= ~0x400;
        if (r7[kirby->unkD6].flags & 1)
            return 2;
        if (r7[kirby->unkD6].flags & 2)
        {
            sub_0804F32C(kirby, r7[kirby->unkD6].unk0 * 0x10, r7[kirby->unkD6].unk1 * 0x10);
            kirby->unkD9 = 0;
            return 1;
        }
        if (r7[kirby->unkD6].flags & 0x20)
        {
            sub_0804F32C(kirby, r7[kirby->unkD6].unk0 * 0x10, r7[kirby->unkD6].unk1 * 0x10);
            kirby->unkD9 = 1;
            return 1;
        }
        if (r7[kirby->unkD6].flags & 0x10)
        {
            sub_0804EA18(kirby, r7[kirby->unkD6].unk0 * 0x10, r7[kirby->unkD6].unk1 * 0x10);
            kirby->unkD9 = 0;
            return 1;
        }
        if (r7[kirby->unkD6].flags & 4)
        {
            kirby->unkD9 = 0;
            sub_0804EDDC(kirby, 145);
            return 1;
        }
        if (r7[kirby->unkD6].flags & 8)
        {
            sub_0804EDDC(kirby, 141);
            return 1;
        }
    }
    if (r7[kirby->unkD6].flags & 0x40)
        kirby->base.base.base.flags |= 0x400;
    else
        kirby->base.base.base.flags &= ~0x400;
    if (r7[kirby->unkD6].unk2 > 0)
        Macro_0803E920(kirby);
    else
        kirby->base.other.unk7C[0].unk14 = kirby->base.other.unk7C[1].unk14 = kirby->base.base.base.unk10.unk14 = 0x6C0;
    if (r7[kirby->unkD6].flags & 0x80)
        kirby->base.base.base.flags ^= 1;
    return 0;
}

void sub_0804E60C(struct Kirby *kirby)
{
    bool32 r4 = FALSE;
    struct Kirby *kirby1 = kirby->base.base.base.kirby1;
    struct Kirby_110 *r8;

    if (!kirby1) r4 = TRUE;
    r8 = kirby->unk110;
    if (!r8) r4 = TRUE;
    if (kirby1->base.base.unk80 <= 0)
        r4 = TRUE;
    if (!(r8[kirby->unkD6].flags & 0x400) || r4)
    {
        if (kirby1
            && (kirby1->base.base.unk83 >= gUnk_08351648[kirby1->base.base.type].unk0
                || kirby1->base.base.base.unkC & 0x40))
        {
            r4 = TRUE;
            kirby->base.base.base.x = kirby1->base.base.base.x;
        }
        if (r4)
        {
            kirby1->base.base.base.unkC |= 0x80;
            gCurLevelInfo[kirby->base.base.base.unk56].unk662 = 0x300;
            gCurLevelInfo[kirby->base.base.base.unk56].unk664 = 0x300;
            gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 0;
            Macro_0803E920(kirby);
            kirby->base.base.base.flags &= ~0x400;
            kirby->base.base.base.flags &= ~0xF00;
            kirby->base.base.base.yspeed = 0x240;
            kirby->base.base.base.y -= 0x100;
            kirby->base.base.base.flags |= 0x20;
            sub_080880AC(kirby, 120);
            kirby->unk110 = NULL;
            Macro_0803FF64_6(kirby);
            return;
        }
    }
    if (r8[kirby->unkD6].flags & 0x800)
    {
        gCurLevelInfo[kirby->base.base.base.unk56].unk662 = 0x300;
        gCurLevelInfo[kirby->base.base.base.unk56].unk664 = 0x300;
        gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 0;
    }
    else
        gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 2;
    if (kirby->base.base.base.counter != kirby1->base.base.unk83)
    {
        s16 ip = kirby->unkD4;

        kirby->unkD6 = 0;
        kirby->unkD8 = r8[kirby->unkD6].unk3;
        kirby->unkD4 = r8[kirby->unkD6].unk4;
        if (kirby->unk103 == 14)
        {
            if (ip != kirby->unkD4 && !(kirby->base.base.base.unkC & 0x200))
                sub_0803E558(kirby->base.base.base.unk56);
        }
        else
        {
            if (kirby->unkD4 == 10 && !(kirby->base.base.base.unkC & 0x200))
                sub_0803E558(kirby->base.base.base.unk56);
        }
    }
    if (kirby->unkD8 == r8[kirby->unkD6].unk3)
    {
        s16 r3 = kirby->unkD4;
        u8 v;

        kirby->unkD4 = r8[kirby->unkD6].unk4;
        if (kirby->unk103 == 14
            && r3 != kirby->unkD4
            && !(kirby->base.base.base.unkC & 0x200))
            sub_0803E558(kirby->base.base.base.unk56);
        v = sub_0804E3E4(kirby);
        if (v == 1)
        {
            kirby->unk110 = NULL;
            return;
        }
        if (v == 2)
        {
            kirby->unk110 = NULL;
            Macro_0803FF64_6(kirby);
            return;
        }
    }
    if (!(r8[kirby->unkD6].flags & 0x200))
    {

        if (kirby->base.base.base.flags & 1)
            kirby->base.base.base.x = kirby1->base.base.base.x - r8[kirby->unkD6].unk0 * 0x100;
        else
            kirby->base.base.base.x = kirby1->base.base.base.x + r8[kirby->unkD6].unk0 * 0x100;
        kirby->base.base.base.y = kirby1->base.base.base.y + r8[kirby->unkD6].unk1 * 0x100;
    }
    if (!--kirby->unkD8)
    {
        ++kirby->unkD6;
        if (r8[kirby->unkD6].flags & 0x100)
            kirby->unkD6 = r8[kirby->unkD6].unk3;
        kirby->unkD8 = r8[kirby->unkD6].unk3;
    }
    kirby->base.base.base.counter = kirby1->base.base.unk83;
}

void sub_0804EA18(struct Kirby *kirby, s16 a, s16 b)
{
    kirby->base.base.base.flags &= ~0x900;
    kirby->base.base.base.flags |= 0x200;
    kirby->base.base.base.flags &= ~0x40;
    kirby->base.base.base.xspeed = a;
    kirby->base.base.base.yspeed = b;
    kirby->base.base.base.unk62 = 0;
    if (kirby->base.base.base.flags & 1)
        kirby->base.base.base.xspeed = -kirby->base.base.base.xspeed;
    kirby->unkD4 = 39;
    kirby->base.base.unk78 = sub_0804ECB4;
    kirby->unkD8 = 0;
    kirby->unkD6 = 0;
    kirby->base.base.base.counter = 0;
    if (!kirby->hp || !--kirby->hp)
        sub_08088640(&kirby->base.base, 0x1C, 0x20);
    else
    {
        sub_0806FE64(2, &kirby->base.base.base);
        if (kirby->unk103)
        {
            if ((kirby->unk103 != 23 || !(kirby->base.base.base.unk58 & 0x400)) && kirby->unk103 != 11)
                sub_080A9038(kirby, FALSE);
#ifndef NONMATCHING
            asm("":::"r5");
#endif
            if (gUnk_0203AD3C == kirby->base.base.base.unk56)
            {
                sub_08035E28(0);
                sub_08034C9C(2);
            }
            sub_08035E40(&kirby->base.base.base);
            kirby->unk103 = 0;
            kirby->base.base.base.unkC &= ~2;
            sub_0806F260(kirby);
            sub_0806EFF8(kirby);
            PlaySfx(&kirby->base.base.base, 129);
        }
        sub_08088640(&kirby->base.base, 0x1C, 0x20);
        do
        {
            if (Rand16() & 1)
                PlaySfx(&kirby->base.base.base, 107);
            else
                PlaySfx(&kirby->base.base.base, 108);
        } while (0); // side effect? 
        sub_080880AC(kirby, 120);
    }
}

void sub_0804ECB4(struct Kirby *kirby)
{
    if (kirby->base.base.base.xspeed < 0)
    {
        kirby->base.base.base.xspeed += 4;
        if (kirby->base.base.base.xspeed > 0)
            kirby->base.base.base.xspeed = 0;
    }
    else
    {
        kirby->base.base.base.xspeed -= 4;
        if (kirby->base.base.base.xspeed < 0)
            kirby->base.base.base.xspeed = 0;
    }
    Macro_080435F8(kirby);
    if (++kirby->base.base.base.counter > 23)
        Macro_0803FF64_6(kirby);
}

void sub_0804EDDC(struct Kirby *kirby, u16 r1)
{
    kirby->base.base.base.flags &= ~0x900;
    kirby->base.base.base.flags |= 0x200;
    kirby->base.base.base.flags &= ~0x40;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    kirby->base.base.base.unk62 = 0;
    kirby->unkD4 = r1;
#ifndef NONMATCHING
    asm("":::"r5");
#endif
    kirby->base.base.unk78 = sub_0804F080;
    kirby->unkD8 = 0;
    kirby->unkD6 = 0;
    kirby->base.base.base.counter = 0;
    if (!kirby->hp || !--kirby->hp)
        sub_08088640(&kirby->base.base, 0x1C, 0x20);
    else
    {
        sub_0806FE64(2, &kirby->base.base.base);
        if (kirby->unk103)
        {
            if ((kirby->unk103 != 23 || !(kirby->base.base.base.unk58 & 0x400)) && kirby->unk103 != 11)
                sub_080A9038(kirby, FALSE);
            if (gUnk_0203AD3C == kirby->base.base.base.unk56)
            {
                sub_08035E28(0);
                sub_08034C9C(2);
            }
            sub_08035E40(&kirby->base.base.base);
            kirby->unk103 = 0;
            kirby->base.base.base.unkC &= ~2;
            sub_0806F260(kirby);
            sub_0806EFF8(kirby);
            PlaySfx(&kirby->base.base.base, 129);
        }
        sub_08088640(&kirby->base.base, 0x1C, 0x20);
        if (Rand16() & 1)
            do PlaySfx(&kirby->base.base.base, 107); while (0); // ?
        else
            PlaySfx(&kirby->base.base.base, 108);
        if (kirby->unkD4 == 141)
            sub_0803E6B8(kirby->base.base.base.unk56, 0x34, 0);
        else
            sub_0803E6B8(kirby->base.base.base.unk56, 0x34, 1);
        kirby->base.base.base.unkC |= 0x200;
    }
}

void sub_0804F080(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    switch (kirby->unkD8)
    {
    case 0:
        if (++kirby->base.base.base.counter > 30)
        {
            ++kirby->unkD8;
            kirby->base.base.base.flags &= ~2;
        }
        break;
    case 1:
        if (kirby->base.base.base.flags & 2)
        {
            ++kirby->unkD4;
            kirby->base.base.base.flags &= ~2;
            ++kirby->unkD8;
            kirby->base.base.base.counter = 0;
        }
        break;
    case 2:
        if (kirby->base.base.base.flags & 2)
        {
            ++kirby->unkD4;
            kirby->base.base.base.flags &= ~2;
            ++kirby->unkD8;
            kirby->base.base.base.counter = 0;
            PlaySfx(&kirby->base.base.base, 141);
        }
        break;
    case 3:
        kirby->base.base.base.flags |= 4;
        if (kirby->base.base.base.flags & 2)
        {
            if (++kirby->base.base.base.counter > 3)
            {
                kirby->unkD4 = 144;
                kirby->base.base.base.flags &= ~2;
                ++kirby->unkD8;
                kirby->base.base.base.counter = 0;
            }
            else
                PlaySfx(&kirby->base.base.base, 141);
        }
        break;
    case 4:
        if (kirby->base.base.base.flags & 2 || kirby->unk11A)
        {
            kirby->base.base.base.flags &= ~0x200;
            kirby->base.base.base.unkC &= ~0x200;
            sub_0803E558(kirby->base.base.base.unk56);
            sub_080880AC(kirby, 120);
            Macro_0803FF64_6(kirby);
            return;
        }
        break;
    }
    Macro_080435F8(kirby);
}

void sub_0804F32C(struct Kirby *kirby, s16 xspeed, s16 yspeed)
{
    kirby->base.base.base.flags &= ~0x900;
    kirby->base.base.base.flags |= 0x200;
    kirby->base.base.base.flags |= 0x40;
    kirby->base.base.base.xspeed = xspeed;
    kirby->base.base.base.yspeed = yspeed;
    kirby->base.base.base.unk62 = 0;
    kirby->unkD4 = 74;
    if (kirby->base.base.base.flags & 1)
        kirby->base.base.base.xspeed = -kirby->base.base.base.xspeed;
    kirby->base.base.unk78 = sub_0804F3A8;
    kirby->unkD8 = 0;
    kirby->unkD9 = 0;
    kirby->unkD6 = 0;
    kirby->base.base.base.counter = 0;
    if (!(kirby->base.base.base.unkC & 0x200))
        sub_0803E558(kirby->base.base.base.unk56);
}

void sub_0804F3A8(struct Kirby *kirby)
{
    if (!(kirby->base.base.base.unk62 & 4))
    {

        if (kirby->base.base.base.unk58 & 2) // pointless
        {
            kirby->base.base.base.yspeed -= 0x25;
            if (kirby->base.base.base.yspeed < -0x250)
                kirby->base.base.base.yspeed = -0x250;
        }
        else
        {
            kirby->base.base.base.yspeed -= 0x25;
            if (kirby->base.base.base.yspeed < -0x250)
                kirby->base.base.base.yspeed = -0x250;
        }
        Macro_080435F8_2(kirby);
    }
    if (!kirby->unkD6)
    {
        if (kirby->base.base.base.flags & 0x80)
            kirby->unkD4 = gUnk_0834C1DA[kirby->unkD8];
        else
            kirby->unkD4 = kirby->unkD8 + 74;
        kirby->unkD8 = (kirby->unkD8 + 1) & 0xF;
        if (!kirby->base.base.base.unk62)
            return;
        if (kirby->base.base.base.unk62 & 1)
        {
            if (kirby->base.base.base.xspeed < 0)
                kirby->base.base.base.xspeed = 0x180;
            else if (kirby->base.base.base.xspeed > 0)
                kirby->base.base.base.xspeed = -0x180;
        }
        else
        {
            if (kirby->base.base.base.xspeed < 0)
                kirby->base.base.base.xspeed = -0x180;
            else if (kirby->base.base.base.xspeed > 0)
                kirby->base.base.base.xspeed = 0x180;
        }
        kirby->base.base.base.yspeed = 0x280;
        kirby->base.base.base.flags |= 0x20;
        kirby->base.base.base.y -= 0x100;
        ++kirby->unkD6;
        if (!kirby->unkD9)
        {
            if (!kirby->hp)
            {
                sub_08088640(&kirby->base.base, 0x1C, 0x20);
                return;
            }
            --kirby->hp;
        }
        if (!kirby->hp)
            sub_08088640(&kirby->base.base, 0x1C, 0x20);
        else
        {
            if (kirby->unk103)
            {
                if ((kirby->unk103 != 23 || !(kirby->base.base.base.unk58 & 0x400)) && kirby->unk103 != 11)
                    sub_080A9038(kirby, FALSE);
                if (gUnk_0203AD3C == kirby->base.base.base.unk56)
                {
                    sub_08035E28(0);
                    sub_08034C9C(2);
                }
                sub_08035E40(&kirby->base.base.base);
                kirby->unk103 = 0;
                kirby->base.base.base.unkC &= ~2;
                sub_0806F260(kirby);
                sub_0806EFF8(kirby);
                PlaySfx(&kirby->base.base.base, 129);
            }
            sub_080880AC(kirby, 120);
            sub_08088640(&kirby->base.base, 0x1C, 0x20);
            sub_0806FE64(2, &kirby->base.base.base);
            if (!kirby->unkD9)
            {
                if (Rand16() & 1)
                    do PlaySfx(&kirby->base.base.base, 107); while (0); // ?
                else
                    PlaySfx(&kirby->base.base.base, 108);
            }
            else
                PlaySfx(&kirby->base.base.base, 140);
        }
    }
    else
    {
        if (kirby->base.base.base.flags & 0x80)
            kirby->unkD4 = gUnk_0834C20A[kirby->unkD6];
        else
        {
            if (kirby->unkD6 & 8)
                kirby->unkD4 = 89;
            else
                kirby->unkD4 = 87;
        }
        if (++kirby->unkD6 > 14)
        {
            kirby->base.base.base.flags &= ~0x200;
            Macro_0803FF64_6(kirby);
        }
    }
}

void sub_0804F894(struct Kirby *kirby)
{
    if (kirby->base.base.unk78 != sub_0804FBFC)
    {
        kirby->unkD4 = 74;
        Macro_0804A728(kirby);
        if (kirby->unk103 == 26)
            gUnk_0203AD34 = 0;
        kirby->unk103 = 0;
        Macro_0804BD98(kirby);
        if ((kirby->unkDD & 0x1F) == 0x1A)
            gUnk_0203AD34 = 0;
        kirby->unkDD = 0;
        kirby->base.base.base.flags &= ~0x40000;
        kirby->base.base.base.flags &= ~0x80;
        kirby->base.base.base.unkC |= 0x8000;
        Macro_0803EA90_1(kirby);
        Macro_0803EA90_2(kirby);
        kirby->base.base.base.flags |= 0x300;
        kirby->base.base.base.flags &= ~2;
        kirby->base.base.base.flags &= ~0x40;
        kirby->base.base.base.flags |= 0x20;
        sub_0806FE64(3, &kirby->base.base.base);
        sub_0806F260(kirby);
        kirby->base.base.unk78 = sub_0804FBFC;
        if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
        {
            MPlayStop(&gUnk_030016A0);
            PlaySfx(&kirby->base.base.base, 109);
            sub_080860A8(&kirby->base.base, gUnk_0834C2A4);
        }
        kirby->unkD0 = 0;
        kirby->unkD2 = 0;
    }
}

void sub_0804FBFC(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    kirby->base.base.base.flags |= 0x300;
    gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 2;
    if (kirby->base.base.base.counter == 60)
    {
        kirby->unkD4 = 55;
        kirby->base.base.base.yspeed = 0x600;
        sub_08098184(&kirby->base.base.base);
        if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
            PlaySfx(&kirby->base.base.base, 20);
        else if (gUnk_0203AD30 > kirby->base.base.base.unk56
            && kirby->base.base.base.unk60__42 == gKirbys[gUnk_0203AD3C].base.base.base.unk60__42)
            PlaySfxInternal(&gKirbys[gUnk_0203AD3C].base.base.base, 503);
    }
    else if (kirby->base.base.base.counter > 60)
    {
        kirby->base.base.base.yspeed -= 0x40;
        if (kirby->base.base.base.yspeed < -0x400)
            kirby->base.base.base.yspeed = -0x400;
        if (!(kirby->base.base.base.counter & 0xF))
            sub_0808925C(&kirby->base.base.base);
    }
    if (kirby->base.base.base.counter >= 180 && gUnk_0203AD3C == kirby->base.base.base.unk56)
        gUnk_0203AD10 |= 0x100;
    if (kirby->base.base.base.counter == 180)
    {
        if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
            sub_0803CA20(kirby->base.base.base.unk56);
        else
            sub_0803CAE4(kirby->base.base.base.unk56);
    }
    if (kirby->base.base.base.counter == 194)
    {
        if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
        {
            struct Unk_02022930_0 *v = sub_0803CA20(kirby->base.base.base.unk56);

            v->unk8 |= 0x40;
            v->unk0 = 4;
        }
    }
    if (kirby->base.base.base.counter == 210
        && gUnk_0203AD30 > kirby->base.base.base.unk56
        && gUnk_0203AD30 < 2
        && !kirby->lives
        && (kirby->base.base.base.unk60__42 >= 0x38D && kirby->base.base.base.unk60__42 <= 0x397))
    {
        u8 i;

        for (i = gUnk_0203AD30; i < gUnk_0203AD44; ++i)
        {
            if ((gKirbys[i].base.base.base.unk60__42 >= 0x38D && gKirbys[i].base.base.base.unk60__42 <= 0x397)
                && gKirbys[i].base.base.unk78 != sub_08055C14)
                sub_0805BDF4(&gKirbys[i], gUnk_082D8CB8[gKirbys[i].base.base.base.unk56], gKirbys[i].unkF2, gKirbys[i].unkF3);
        }
    }
    if (kirby->base.base.base.counter == 239)
    {
        if (gUnk_0203AD3C == kirby->base.base.base.unk56)
            gUnk_0203AD10 &= ~0x100;
        if (gUnk_0203AD30 <= kirby->base.base.base.unk56)
        {
            if (gUnk_0203AD2C >= 200)
            {
                kirby->unk106 = gUnk_082D8D28[kirby->base.base.base.unk56];
                kirby->unk108 = gUnk_082D8D40[kirby->base.base.base.unk56][0] >> 12;
                kirby->unk10A = gUnk_082D8D40[kirby->base.base.base.unk56][1] >> 12;
                if (gUnk_082D8D30[kirby->base.base.base.unk56])
                    kirby->base.base.base.flags |= 1;
                else
                    kirby->base.base.base.flags &= ~1;
            }
            else
            {
                kirby->unk106 = gUnk_082D8CB8[kirby->base.base.base.unk56];
                kirby->unk108 = gUnk_082D8CD0[kirby->base.base.base.unk56][0] >> 12;
                kirby->unk10A = gUnk_082D8CD0[kirby->base.base.base.unk56][1] >> 12;
                if (gUnk_082D8CC0[kirby->base.base.base.unk56])
                    kirby->base.base.base.flags |= 1;
                else
                    kirby->base.base.base.flags &= ~1;
            }
            kirby->lives = 2;
            kirby->battery = 3;
            kirby->hp = kirby->maxHp;
            kirby->base.base.base.unkC &= ~0x8000;
            gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 1;
            sub_08055920(kirby);
            sub_080880AC(kirby, 120);
            return;
        }
        if (kirby->lives)
        {
            if (gUnk_0203AD2C >= 200)
                --kirby->lives;
        }
        else
        {
            if (gUnk_0203AD10 & 4)
            {
                u8 i;
                bool32 a = TRUE;

                for (i = 0; i < gUnk_0203AD30; ++i)
                {
                    struct Kirby *k = &gKirbys[i];

                    if (k->hp > 0)
                        a = FALSE; // why not break here? 
                }
                if (a)
                    sub_08020428(sub_08025AD0);
                else
                {
                    kirby->base.base.base.unkC |= 0x10000000;
                    sub_08050884(kirby);
                    if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                        sub_0803620C();
                }
                return;
            }
            if (gUnk_0203AD30 > 1)
            {
                kirby->base.base.base.unkC |= 0x10000000;
                sub_08050218(kirby);
                if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                    sub_08036258();
                return;
            }
            if (gUnk_0203AD2C >= 200)
            {
                kirby->unk106 = gUnk_082D8D28[kirby->base.base.base.unk56];
                kirby->unk108 = kirby->unkF2;
                kirby->unk10A = kirby->unkF3;
                if (gUnk_082D8D30[kirby->base.base.base.unk56])
                    kirby->base.base.base.flags |= 1;
                else
                    kirby->base.base.base.flags &= ~1;
            }
            else
            {
                kirby->unk106 = gUnk_082D8CB8[kirby->base.base.base.unk56];
                kirby->unk108 = gUnk_082D8CD0[kirby->base.base.base.unk56][0] >> 12;
                kirby->unk10A = gUnk_082D8CD0[kirby->base.base.base.unk56][1] >> 12;
                if (gUnk_082D8CC0[kirby->base.base.base.unk56])
                    kirby->base.base.base.flags |= 1;
                else
                    kirby->base.base.base.flags &= ~1;
            }
            kirby->lives = 2;
            kirby->battery = 3;
            sub_080027A8();
        }
        if (!kirby->battery)
            kirby->battery = 1;
        kirby->hp = kirby->maxHp;
        kirby->base.base.base.unkC &= ~0x8000;
        gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 1;
        sub_08055920(kirby);
        sub_080880AC(kirby, 120);
        return;
    }
    ++kirby->base.base.base.counter;
}

#define Macro_08050218(kirby) \
({ \
    if (gUnk_0203AD3C == (kirby)->base.base.base.unk56) \
        sub_0803C95C((kirby)->base.base.base.unk56); \
    else \
        sub_0803CAE4((kirby)->base.base.base.unk56); \
})

void sub_08050218(struct Kirby *kirby)
{
    sub_08001358(kirby->base.base.base.unk56);
    if (kirby->base.base.base.unk60__42 >= 0x38D && kirby->base.base.base.unk60__42 <= 0x397)
        sub_08050AD4(kirby);
    else
    {
        kirby->base.base.base.flags |= 0x300;
        kirby->base.base.base.flags |= 0xC00;
        kirby->base.base.base.unkC |= 0x10000;
        kirby->base.base.base.unkC |= 0x8000;
        kirby->base.base.base.flags |= 0x2000;
        kirby->base.base.base.counter = 0;
        kirby->unkD9 = 0;
        kirby->base.base.base.xspeed = 0;
        kirby->base.base.base.yspeed = 0;
        kirby->base.base.base.x = gCurLevelInfo[kirby->base.base.base.unk56].unkC + 0x7800;
        kirby->base.base.base.y = gCurLevelInfo[kirby->base.base.base.unk56].unk10 + 0x5000;
        kirby->base.base.unk78 = sub_080502E0;
        Macro_08050218(kirby);
    }
}

void sub_080502E0(struct Kirby *kirby)
{
    u8 i;

    for (i = 1; i < 9; ++i)
    {
        if (gUnk_0835105C[i] == kirby->base.base.base.unk60__42
            && *sub_08002888(1, i, 0))
        {
            sub_0805BF2C(kirby);
            return;
        }
    }
    kirby->base.base.base.flags |= 0x400;
    if (kirby->unk11E & 0xC0)
    {
        PlaySfx(&kirby->base.base.base, 505);
        kirby->unkD9 ^= 1;
    }
    if (!(kirby->unk11E & 1)) return;
    kirby->unkD6 = 0;
    if (kirby->unkD9)
    {
        sub_0805BF2C(kirby);
        return;
    }
    if (kirby->unk103 != 23)
    {
        if (gUnk_02021580 < gUnk_0203AD44)
        {
            if (!(kirby->base.base.base.unkC & 0x10000)
                && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
            {
                if (kirby->lives
                    && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                {
                    sub_08056C2C(kirby);
                    return;
                }
            }
            else
            {
                if (!Macro_0803FF64_5(kirby)
                    && !(kirby->base.base.base.unkC & 0x10000)
                    && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                    && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                {
                    sub_08056C2C(kirby);
                    return;
                }
            }
        }
        else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
        {
            if (!(gUnk_0203AD20 & 2)
                && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                && gUnk_0203AD30 > kirby->base.base.base.unk56)
            {
                if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                {
                    if (kirby->base.base.base.unkC & 0x10000)
                        PlaySfx(&kirby->base.base.base, 506);
                    sub_08056C2C(kirby);
                    return;
                }
            }
        }
    }
    if (kirby->base.base.base.unkC & 0x10000)
        PlaySfx(&kirby->base.base.base, 528);
}

void sub_080506A8(struct Kirby *kirby)
{
    u8 i;
    u32 unkC; // required for matching

    kirby->base.base.base.flags |= 0x400;
    if (kirby->base.base.base.counter == 30 && gUnk_0203AD3C == kirby->base.base.base.unk56)
    {
        struct Unk_02022930_0 *v = sub_0803CA20(kirby->base.base.base.unk56);

        v->unk8 |= 0x40;
        v->unk0 = 4;
    }
    if (kirby->base.base.base.counter == 24
        && !kirby->lives
        && (kirby->base.base.base.unk60__42 >= 0x38D && kirby->base.base.base.unk60__42 <= 0x397))
    {
        for (i = gUnk_0203AD30; i < gUnk_0203AD44; ++i)
        {
            if ((gKirbys[i].base.base.base.unk60__42 >= 0x38D && gKirbys[i].base.base.base.unk60__42 <= 0x397)
                && gKirbys[i].base.base.unk78 != sub_08055C14)
            {
                kirby->base.base.base.flags &= ~0x2000;
                sub_0805BDF4(&gKirbys[i], gUnk_082D8CB8[gKirbys[i].base.base.base.unk56], gKirbys[i].unkF2, gKirbys[i].unkF3);
            }
        }
    }
    if (!--kirby->base.base.base.counter)
    {
        if (kirby->lives)
            kirby->lives = 0;
        else
        {
            kirby->unk106 = gUnk_082D8D28[kirby->base.base.base.unk56];
            kirby->unk108 = kirby->unkF2;
            kirby->unk10A = kirby->unkF3;
            kirby->lives = 2;
            if (gUnk_082D8D30[kirby->base.base.base.unk56])
                kirby->base.base.base.flags |= 1;
            else
                kirby->base.base.base.flags &= ~1;
        }
        if (!kirby->battery)
            kirby->battery = 1;
        kirby->hp = kirby->maxHp;
        unkC = kirby->base.base.base.unkC &= ~0x8000;
        gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 1;
        kirby->base.base.base.unkC = unkC & ~0x10000000;
        sub_08055920(kirby);
    }
}

void sub_08050884(struct Kirby *kirby)
{
    if (gUnk_0203AD10 & 4)
    {
        kirby->base.base.base.flags |= 0x300;
        kirby->base.base.base.flags |= 0xC00;
        kirby->base.base.base.unkC |= 0x8000;
        kirby->base.base.base.flags |= 0x2000;
        kirby->base.base.base.counter = 0;
        kirby->unkD9 = 0;
        kirby->unkD8 = 0;
        kirby->base.base.base.xspeed = 0;
        kirby->base.base.base.yspeed = 0;
        kirby->base.base.unk78 = sub_08050908;
        Macro_08050218(kirby);
        sub_08001358(kirby->base.base.base.unk56);
    }
}

void sub_08050908(struct Kirby *kirby)
{
    struct Kirby *kirby2 = NULL;
    u8 i;

    kirby->base.base.base.flags |= 0xF00;
    kirby->base.base.base.unkC |= 0x8000;
    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        struct Kirby *kirby3 = &gKirbys[i];

        if (kirby->base.base.base.unk56 != kirby3->base.base.base.unk56
            && kirby3->base.base.unk78 != sub_08050908
            && kirby3->base.base.base.unk56 < gUnk_0203AD30)
        {
            if (kirby2)
            {
                if (kirby2->base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                    && kirby2->base.base.base.unk60__42 == kirby3->base.base.base.unk60__42)
                {
                    kirby2 = kirby3;
                    break;
                }
            }
            else
                kirby2 = kirby3;
        }
    }
    if (kirby2)
    {
        if (!kirby->base.base.base.counter)
        {
            if (kirby2->base.base.base.unk60__42 != kirby->base.base.base.unk60__42)
            {
                kirby->base.base.base.counter = 1;
                kirby->unk106 = kirby2->base.base.base.unk60__42;
                kirby->unk108 = kirby2->base.base.base.x >> 12;
                kirby->unk10A = kirby2->base.base.base.y >> 12;
                if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                {
                    struct Unk_02022930_0 *v = sub_0803CA20(kirby->base.base.base.unk56);

                    v->unkA = 0x400;
                    v->unk8 |= 0x40;
                }
            }
        }
        if (kirby->base.base.base.counter)
        {
            if (++kirby->base.base.base.counter > 10)
            {
                sub_08055D9C(kirby);
                if (kirby->base.base.unk78 == sub_08056128)
                {
                    kirby->base.base.base.counter = 0;
                    kirby->unkD9 = 0;
                    kirby->base.base.unk78 = sub_08050908;
                    kirby->unk108 = kirby2->unk108;
                    kirby->unk10A = kirby2->unk10A;
                    kirby->unk106 = kirby2->unk106;
                }
            }
        }
        else
        {
            kirby->base.base.base.x = kirby2->base.base.base.x;
            kirby->base.base.base.y = kirby2->base.base.base.y;
            gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 4;
            gCurLevelInfo[kirby->base.base.base.unk56].unk661 = kirby2->base.base.base.unk56;
        }
    }
    else
        sub_08020428(sub_08025AD0);
}

void sub_08050AD4(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 0x300;
    kirby->base.base.base.flags |= 0xC00;
    kirby->base.base.base.unkC |= 0x10000;
    kirby->base.base.base.unkC |= 0x8000;
    kirby->base.base.base.flags |= 0x2000;
    kirby->base.base.base.counter = 0;
    kirby->unkD9 = 0;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    kirby->base.base.unk78 = sub_08050B44;
    Macro_08050218(kirby);
}

void sub_08050B44(struct Kirby *kirby)
{
    struct Kirby *kirby2 = NULL;
    u8 i;

    kirby->base.base.base.flags |= 0xF00;
    kirby->base.base.base.unkC |= 0x8000;
    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        struct Kirby *kirby3 = &gKirbys[i];

        if (kirby->base.base.base.unk56 != kirby3->base.base.base.unk56
            && kirby3->base.base.unk78 != sub_08050B44
            && kirby3->base.base.unk78 != sub_08057E08
            && kirby3->base.base.base.unk56 < gUnk_0203AD30)
        {
            if (kirby3->base.base.unk78 == sub_080506A8 && !kirby3->lives)
            {
                kirby2 = NULL;
                break;
            }
            if (kirby2)
            {
                if (kirby2->base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                    && kirby2->base.base.base.unk60__42 != kirby3->base.base.base.unk60__42)
                {
                    kirby2 = kirby3;
                    break;
                }
            }
            else
                kirby2 = kirby3;
        }
    }
    if (kirby2)
    {
        if (!kirby->base.base.base.counter)
        {
            if (kirby2->base.base.base.unk60__42 != kirby->base.base.base.unk60__42)
            {
                kirby->base.base.base.counter = 1;
                kirby->unk106 = kirby2->base.base.base.unk60__42;
                kirby->unk108 = kirby2->base.base.base.x >> 12;
                kirby->unk10A = kirby2->base.base.base.y >> 12;
                if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                {
                    struct Unk_02022930_0 *v = sub_0803CA20(kirby->base.base.base.unk56);

                    v->unkA = 0x400;
                    v->unk8 |= 0x40;
                }
            }
        }
        if (kirby->base.base.base.counter)
        {
            if (++kirby->base.base.base.counter > 10)
            {
                sub_08055D9C(kirby);
                if (kirby->base.base.unk78 == sub_08056128)
                {
                    kirby->base.base.base.counter = 0;
                    kirby->unkD9 = 0;
                    kirby->base.base.unk78 = sub_08050B44;
                    kirby->unk108 = kirby2->unk108;
                    kirby->unk10A = kirby2->unk10A;
                    kirby->unk106 = kirby2->unk106;
                }
            }
            return;
        }
        kirby->base.base.base.x = kirby2->base.base.base.x;
        kirby->base.base.base.y = kirby2->base.base.base.y;
        gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 4;
        gCurLevelInfo[kirby->base.base.base.unk56].unk661 = kirby2->base.base.base.unk56;
    }
    else
    {
        kirby->base.base.base.flags &= ~0x2000;
        kirby->base.base.base.flags |= 0x400;
        kirby->base.base.unk78 = sub_080506A8;
        kirby->base.base.base.counter = 0x20;
        return;
    }
    if (kirby->base.base.base.unk60__42 == 0x397) return;
    if (kirby->unk11E & 0xC0)
        PlaySfx(&kirby->base.base.base, 528);
    if (kirby->unk11E & 1)
    {
        PlaySfx(&kirby->base.base.base, 506);
        if (kirby->unk103 != 23)
        {
            if (gUnk_02021580 < gUnk_0203AD44)
            {
                if (!(kirby->base.base.base.unkC & 0x10000)
                    && gKirbys[gUnk_02021580].base.base.base.unkC & 0x10000)
                {
                    if (kirby->lives
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                    {
                        sub_08056C2C(kirby);
                        return;
                    }
                }
                else
                {
                    if (!Macro_0803FF64_5(kirby)
                        && !(kirby->base.base.base.unkC & 0x10000)
                        && gKirbys[gUnk_02021580].base.base.base.unk60__42 != kirby->base.base.base.unk60__42
                        && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 0x10)
                    {
                        sub_08056C2C(kirby);
                        return;
                    }
                }
            }
            else if (kirby->battery || kirby->base.base.base.unkC & 0x10000)
            {
                if (!(gUnk_0203AD20 & 2)
                    && gRoomProps[kirby->base.base.base.unk60__42].priorityFlags & 8
                    && gUnk_0203AD30 > kirby->base.base.base.unk56)
                {
                    if (!Macro_0803FF64_5(kirby) || kirby->base.base.base.unkC & 0x10000)
                    {
                        if (kirby->base.base.base.unkC & 0x10000)
                            PlaySfx(&kirby->base.base.base, 506);
                        sub_08056C2C(kirby);
                        return;
                    }
                }
            }
        }
        if (kirby->base.base.base.unkC & 0x10000)
            PlaySfx(&kirby->base.base.base, 528);
    }
}

bool8 sub_080510EC(struct Kirby *kirby)
{
    if (kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    if (kirby->base.base.base.flags & 0x80 || kirby->base.base.base.yspeed >= 0)
        return FALSE;
    Macro_0804A728(kirby);
    kirby->unkD4 = 93;
    if (kirby->unk103 == 11)
    {
        Macro_0804BD98(kirby);
        kirby->unk103 = 0;
        sub_0806F260(kirby);
        sub_0806EFF8(kirby);
    }
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
        kirby->base.base.base.unk10.unk14 = 0x740;
    else
        kirby->base.base.base.unk10.unk14 = 0x780;
    kirby->base.base.base.flags |= 0x340;
    kirby->base.base.base.unk62 = 0;
    kirby->base.base.base.flags &= ~0x40000;
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    kirby->base.base.unk78 = sub_0805142C;
    kirby->base.base.base.flags &= ~1;
    kirby->base.base.base.unkC |= 0x200;
    sub_0803E778(kirby->base.base.base.unk56, 0x35, 0);
    gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 0;
    return TRUE;
}

void sub_0805142C(struct Kirby *kirby)
{
    struct Kirby *kirby2 = kirby->base.base.base.kirby1;

    kirby->base.base.base.x = kirby2->base.base.base.x;
    kirby->base.base.base.y = kirby2->base.base.base.y - 0x2000;
    if (kirby->unkD4 == 93 && kirby->base.base.base.flags & 2)
        kirby->unkD4 = 94;
    if (kirby->unk118 & 0x80)
    {
        if (kirby->unkD4 == 101 && !(kirby->base.base.base.flags & 2))
        {
            kirby->unkD4 = 100;
            kirby->base.base.base.unk10.unkC = gUnk_02021590[kirby->base.base.base.unk56][kirby->unkD4].unk0;
            kirby->base.base.base.unk10.unk1A = gUnk_02021590[kirby->base.base.base.unk56][kirby->unkD4].unk2;
            sub_0815521C(&kirby->base.base.base.unk10, 0xA - kirby->base.base.base.unk1);
            kirby->base.base.base.unk1 = 0xA - kirby->base.base.base.unk1;
        }
        kirby->unkD4  = 100;
    }
    if (kirby->unkD4 == 100 && kirby->unk11C & 0x80)
    {
        kirby->unkD4 = 101;
        if (!(kirby->base.base.base.flags & 2))
        {
            kirby->base.base.base.unk10.unkC = gUnk_02021590[kirby->base.base.base.unk56][kirby->unkD4].unk0;
            kirby->base.base.base.unk10.unk1A = gUnk_02021590[kirby->base.base.base.unk56][kirby->unkD4].unk2;
            sub_0815521C(&kirby->base.base.base.unk10, 0xA - kirby->base.base.base.unk1);
            kirby->base.base.base.unk1 = 0xA - kirby->base.base.base.unk1;
        }
    }
}

void sub_08051544(struct Kirby *kirby)
{
    Macro_0803E920(kirby);
    kirby->base.base.base.unkC &= ~0x200;
    kirby->base.base.base.flags &= ~0x300;
    kirby->unkD4 = 0;
    sub_0803E558(kirby->base.base.base.unk56);
    if (kirby->unk103 == 14)
        sub_0806A798(kirby);
    else
        sub_08043360(kirby);
}

void sub_080515D4(struct Kirby *kirby, u16 a, s8 b, s8 c, u8 d)
{
    kirby->unkD4 = 74;
    if (d)
    {
        kirby->base.base.base.xspeed = 0x21F;
        kirby->base.base.base.yspeed = 0x21F;
    }
    else
    {
        kirby->base.base.base.xspeed = 0;
        kirby->base.base.base.yspeed = 0x300;
    }
    Macro_0803E920(kirby);
    kirby->base.base.base.flags &= ~0x400;
    kirby->base.base.base.unkC &= ~0x800;
    kirby->unkD6 = 0;
    kirby->unkD8 = 0;
    kirby->unkD9 = 0;
    kirby->unk106 = a;
    kirby->unk108 = b;
    kirby->unk10A = c;
    kirby->base.base.unk78 = sub_0805177C;
    sub_0803E558(kirby->base.base.base.unk56);
    PlaySfx(&kirby->base.base.base, 515);
    if (!gCurLevelInfo[kirby->base.base.base.unk56].unk1EC)
    {
        gCurLevelInfo[kirby->base.base.base.unk56].unk662 = 0x300;
        gCurLevelInfo[kirby->base.base.base.unk56].unk664 = 0x300;
    }
}

void sub_0805177C(struct Kirby *kirby)
{
    kirby->unkD4 = kirby->unkD8 + 74;
    kirby->unkD8 = (kirby->unkD8 + 1) & 0xF;
    if (kirby->unkD6)
    {
        if (kirby->unkD6 > 20)
        {
            kirby->unkD8 = 0;
            sub_08055D9C(kirby);
            if (kirby->base.base.unk78 == sub_08056128)
                sub_0805C024(kirby);
        }
        else
            ++kirby->unkD6;
        return;
    }
    if (kirby->unkD4 == 80 || kirby->unkD4 == 88)
    {
        struct Object4 *obj4 = sub_0808AE30(&kirby->base.base.base, 0, 0x2A8, 5);

        obj4->unkC.unk14 = 0x640;
        obj4->unk3E = -0x80;
    }
    if (kirby->base.base.base.x > gCurLevelInfo[kirby->base.base.base.unk56].unk50
        || kirby->base.base.base.x < gCurLevelInfo[kirby->base.base.base.unk56].unk48
        || kirby->base.base.base.y > gCurLevelInfo[kirby->base.base.base.unk56].unk54
        || kirby->base.base.base.y < gCurLevelInfo[kirby->base.base.base.unk56].unk4C)
    {
        struct Unk_02022930_0 *v;

        if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
            v = sub_0803CA20(kirby->base.base.base.unk56);
        else
            v = sub_0803CAE4(kirby->base.base.base.unk56);
        v->unkA = 0x200;
        v->unk8 |= 0x40;
        kirby->unkD6 = 1;
    }
}

void sub_08051874(struct Kirby *kirby)
{
    if (kirby->unkD4 == 19)
    {
        kirby->base.base.base.flags |= 4;
        if (kirby->base.base.base.x <= gCurLevelInfo[kirby->base.base.base.unk56].unk50
            && kirby->base.base.base.x >= gCurLevelInfo[kirby->base.base.base.unk56].unk48
            && kirby->base.base.base.y <= gCurLevelInfo[kirby->base.base.base.unk56].unk54
            && kirby->base.base.base.y >= gCurLevelInfo[kirby->base.base.base.unk56].unk4C)
            kirby->base.base.base.flags &= ~0x100;
        if (kirby->base.base.base.unk62 & 4)
        {
            sub_0808AE30(&kirby->base.base.base, 0, 0x292, 0);
            PlaySfx(&kirby->base.base.base, 200);
            kirby->unkD4 = 74;
            kirby->base.base.base.xspeed = 0x200 - 0x30 * kirby->base.base.base.unk56;
            kirby->base.base.base.yspeed = 0x280;
        }
    }
    else if (kirby->unkD4 == 20)
    {
        Macro_080435F8(kirby);
        if (kirby->base.base.base.unk62 & 4)
        {
            kirby->base.base.base.flags &= ~0x8000;
            Macro_0803FF64_6(kirby);
        }
    }
    else
    {
        if (kirby->base.base.base.x <= gCurLevelInfo[kirby->base.base.base.unk56].unk50
            && kirby->base.base.base.x >= gCurLevelInfo[kirby->base.base.base.unk56].unk48
            && kirby->base.base.base.y <= gCurLevelInfo[kirby->base.base.base.unk56].unk54
            && kirby->base.base.base.y >= gCurLevelInfo[kirby->base.base.base.unk56].unk4C)
            kirby->base.base.base.flags &= ~0x100;
        kirby->unkD4 = kirby->unkD8 + 74;
        kirby->unkD8 = (kirby->unkD8 - 1) & 0xF;
        Macro_080435F8(kirby);
        if (kirby->base.base.base.unk62 & 4)
        {
            PlaySfx(&kirby->base.base.base, 113);
            kirby->base.base.base.xspeed = 0xD0 - 0x20 * kirby->base.base.base.unk56;
            kirby->base.base.base.yspeed = 0x180;
            kirby->unkD4 = 20;
            kirby->base.base.base.unkC &= ~0x200;
            sub_0803E558(kirby->base.base.base.unk56);
        }
    }
}

bool8 sub_08051C40(struct Kirby *kirby)
{
    if (kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    Macro_0804A728(kirby);
    kirby->unkD4 = 74;
    if (kirby->unk103 == 11)
    {
        Macro_0804BD98(kirby);
        kirby->unk103 = 0;
        sub_0806F260(kirby);
        sub_0806EFF8(kirby);
    }
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags |= 0x400;
    kirby->base.base.base.flags |= 0x300;
    kirby->base.base.base.unk62 = 0;
    kirby->base.base.base.flags &= ~0x40000;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    if (kirby->base.base.base.unk58 & 2)
        kirby->unkD8 = 1;
    else
        kirby->unkD8 = 0;
    kirby->base.base.unk78 = sub_0805C018;
    kirby->base.base.base.flags &= ~1;
    if (!(kirby->base.base.base.unkC & 0x200))
        sub_0803E558(kirby->base.base.base.unk56);
    gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 0;
    return TRUE;
}

#define Macro_08051F70(kirby) \
do \
{ \
    if (!gCurLevelInfo[(kirby)->base.base.base.unk56].unk1EC) \
    { \
        gCurLevelInfo[(kirby)->base.base.base.unk56].unk662 = 0x300; \
        gCurLevelInfo[(kirby)->base.base.base.unk56].unk664 = 0x300; \
    } \
} while (0)

void sub_08051F70(struct Kirby *kirby, u8 a)
{
    kirby->unkD4 = 74;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~0x400;
    kirby->base.base.base.flags &= ~0x100;
    kirby->base.base.base.flags |= 0x8000;
    kirby->base.base.base.xspeed = gUnk_0834C160[a<<1];
    kirby->base.base.base.yspeed = gUnk_0834C160[(a<<1) + 1];
    kirby->base.base.base.counter = 0;
    kirby->unkD9 = 0;
    kirby->base.base.unk78 = sub_08052140;
    if (kirby->base.base.base.xspeed < 0)
        kirby->base.base.base.flags |= 1;
    else if (kirby->base.base.base.xspeed > 0)
        kirby->base.base.base.flags &= ~1;
    kirby->base.other.unk7C[0].unk14 = kirby->base.other.unk7C[1].unk14 = kirby->base.base.base.unk10.unk14 = 0x6C0;
    sub_08083FC0(&kirby->base.base.base);
    PlaySfx(&kirby->base.base.base, 524);
    Macro_08051F70(kirby);
}

void sub_08052140(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        if (!kirby->unkD8)
        {
            sub_0808AE30(&kirby->base.base.base, 0, 0x296, 0);
            PlaySfx(&kirby->base.base.base, 128);
            sub_0803E558(kirby->base.base.base.unk56);
            kirby->base.other.unk7C[1].unk1F = 0xE;
            sub_0806EC28(kirby);
            sub_0808CBCC(&kirby->base.base.base);
            kirby->base.base.base.unk10.unk1C = 0x10;
            kirby->base.other.unk7C[1].unk1C = 0x10;
            kirby->base.base.base.unkC &= ~0x8000;
            kirby->unkD8 = 1;
        }
    }
    else if (kirby->unkD8)
    {
        sub_0808AE30(&kirby->base.base.base, 0, 0x296, 1);
        kirby->base.other.unk7C[1].unk1F = kirby->base.base.base.unk56 + 4;
        sub_0806ED58(kirby);
        PlaySfx(&kirby->base.base.base, 128);
        kirby->base.base.base.unk10.unk1C = 0x10;
        kirby->base.other.unk7C[1].unk1C = 0x10;
        kirby->base.base.base.unkC &= ~0x8000;
        kirby->unkD8 = 0;
    }
    if (kirby->base.base.base.flags & 0x80)
        kirby->unkD4 = gUnk_0834C1DA[kirby->unkD9];
    else
        kirby->unkD4 = kirby->unkD9 + 74;
    kirby->unkD9 = (kirby->unkD9 - 1) & 0xF;
    if (kirby->base.base.base.counter == 6)
    {
        kirby->base.base.base.flags &= ~0x200;
        Macro_0803E920(kirby);
    }
    if (kirby->base.base.base.counter > 45)
    {
        kirby->base.base.base.flags &= ~0x8000;
        Macro_080435F8(kirby);
        sub_0805B1B8(kirby);
        if (kirby->base.base.base.counter > 60)
        {
            kirby->unkD4 = 0;
            if (!(kirby->base.base.base.unkC & 0x200))
                sub_0803E558(kirby->base.base.base.unk56);
            Macro_0803FF64_6(kirby);
            return;
        }
    }
    else if (!(kirby->base.base.base.flags & 0x200))
    {
        if (kirby->base.base.base.xspeed && kirby->base.base.base.x == kirby->base.base.base.unk48)
        {
            if (kirby->base.base.base.xspeed < 0)
                kirby->base.base.base.xspeed = 0x180;
            else
                kirby->base.base.base.xspeed = -0x180;
            kirby->base.base.base.yspeed = 0x280;
            kirby->base.base.base.flags &= ~0x8000;
            sub_0806FE64(2, &kirby->base.base.base);
            kirby->base.base.base.counter = 60;
        }
        else if (kirby->base.base.base.yspeed && kirby->base.base.base.y == kirby->base.base.base.unk4C)
        {
            if (kirby->base.base.base.yspeed < 0)
                kirby->base.base.base.yspeed = 0x280;
            else
                kirby->base.base.base.yspeed = -0x100;
            kirby->base.base.base.flags &= ~0x8000;
            sub_0806FE64(2, &kirby->base.base.base);
            kirby->base.base.base.counter = 60;
        }
    }
    if (kirby->base.base.base.unk62)
    {
        if (kirby->base.base.base.unk62 & 3)
        {
            if (kirby->base.base.base.xspeed < 0)
                kirby->base.base.base.xspeed = 0x180;
            else if (kirby->base.base.base.xspeed > 0)
                kirby->base.base.base.xspeed = -0x180;
        }
        else
        {
            if (kirby->base.base.base.xspeed < 0)
                kirby->base.base.base.xspeed = -0x180;
            else if (kirby->base.base.base.xspeed > 0)
                kirby->base.base.base.xspeed = 0x180;
        }
        if (kirby->base.base.base.unk62 & 8)
            kirby->base.base.base.yspeed = -0x100;
        else
            kirby->base.base.base.yspeed = 0x280;
        kirby->base.base.base.flags &= ~0x8000;
        sub_0806FE64(2, &kirby->base.base.base);
        kirby->base.base.base.counter = 60;
    }
    ++kirby->base.base.base.counter;
}

bool8 sub_080525C0(struct Kirby *kirby)
{
    if (kirby->base.base.base.unkC & 0x8000 || kirby->hp <= 0)
        return FALSE;
    else
    {
        Macro_0804A728(kirby);
        if (kirby->unk103 == 11)
        {
            Macro_0804BD98(kirby);
            kirby->unk103 = 0;
            sub_0806F260(kirby);
            sub_0806EFF8(kirby);
        }
        kirby->base.base.base.flags |= 0x340;
        kirby->base.base.base.flags &= ~0x40000;
        kirby->base.base.base.flags &= ~0x80;
        kirby->base.base.base.xspeed = 0;
        kirby->base.base.base.yspeed = 0;
        if ((kirby->unkDD & 0x1F) == 0x1A)
            gUnk_0203AD34 = 0;
        kirby->unkDD = 0;
        kirby->base.base.base.unk10.unk14 = 0x500;
        kirby->base.other.unk7C[1].unk14 = 0x500;
        sub_0806F260(kirby);
        kirby->unkD4 = 90;
        sub_0808EDB8(&kirby->base.base.base);
        Macro_0803EA90_1(kirby);
        Macro_0803EA90_2(kirby);
        kirby->base.base.unk78 = sub_0805BF4C;
        kirby->base.base.base.flags &= ~1;
        if (!(kirby->base.base.base.unkC & 0x200))
            sub_0803E558(kirby->base.base.base.unk56);
        if (gCurLevelInfo[kirby->base.base.base.unk56].unk1EC == 1)
            gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 0;
        return TRUE;
    }
}

bool8 sub_080528E4(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk60__42 > 0x3D3
        && gUnk_0203AD3C == kirby->base.base.base.unk56
        && kirby->unkD4 != 91)
        m4aMPlayFadeOut(&gUnk_030016A0, 6);
    Macro_0804A728(kirby);
    if ((kirby->unkDD & 0x1F) == 0x1A)
        gUnk_0203AD34 = 0;
    kirby->unkDD = 0;
    kirby->unkD4 = 91;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags |= 0x340;
    kirby->base.base.base.flags |= 0x8000;
    kirby->base.base.base.flags &= ~0x40000;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    sub_08083FC0(&kirby->base.base.base);
    kirby->base.base.base.flags &= ~1;
    kirby->base.base.unk78 = sub_0805BF60;
    if (!(kirby->base.base.base.unkC & 0x200))
        sub_0803E558(kirby->base.base.base.unk56);
    return TRUE;
}

void sub_08052BB4(struct Kirby *kirby)
{
    Macro_0804A728(kirby);
    if ((kirby->unkDD & 0x1F) == 0x1A)
        gUnk_0203AD34 = 0;
    kirby->unkDD = 0;
    kirby->unkD4 = 91;
    Macro_0803EA90_1(kirby);
    sub_0803E2B0(&kirby->base.base.base, -8, -6, 8, 11);
    kirby->base.base.base.flags |= 0x40;
    kirby->base.base.base.flags &= ~0x40300;
    kirby->base.base.base.flags &= ~0x8000;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    kirby->base.base.base.flags &= ~1;
    if (kirby->base.base.base.unk60__42 == 0x397)
        kirby->base.base.unk78 = sub_0805BF9C;
    else
    {
        kirby->base.base.unk78 = sub_0805BF6C;
        if (gUnk_0203AD3C == kirby->base.base.base.unk56)
            m4aSongNumStartOrChange(21);
    }
}

void sub_08052E2C(struct Kirby *kirby)
{
    if (kirby->base.base.unk78 == sub_0805BF9C
        || kirby->base.base.unk78 == sub_0805BF6C)
    {
        kirby->base.base.base.flags |= 0x200;
        kirby->base.base.base.xspeed = 0;
        kirby->base.base.base.yspeed = -0x100;
        kirby->base.base.base.counter = 0;
        kirby->base.base.unk78 = sub_08052F44;
        PlaySfx(&kirby->base.base.base, 107);
        if (kirby->base.base.base.unk60__42 == 0x397)
        {
            sub_08088640(&kirby->base.base, 0x1C, 0x20);
            if (!(gUnk_0203AD10 & 0x20))
                sub_0806FE64(2, &kirby->base.base.base);
            if (gUnk_0203AD10 & 0x60 || --kirby->hp > 0)
                sub_080880AC(kirby, 110);
        }
    }
}

void sub_08052F44(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.counter < 0x20)
        kirby->base.base.base.xspeed = gUnk_0834C3F6[kirby->base.base.base.counter>>1];
    if (kirby->base.base.base.counter < 0x10)
        kirby->base.base.base.yspeed = gUnk_0834C3F6[(kirby->base.base.base.counter>>1) * 2 + 1];
    if (++kirby->base.base.base.counter > 0x30)
        sub_08052BB4(kirby);
}

void sub_08052FA4(struct Kirby *kirby)
{
    if (kirby->unk118 & 0x30)
    {
        if (kirby->unk118 & 0x20)
        {
            kirby->base.base.base.xspeed -= 50;
            if (kirby->base.base.base.xspeed < -0x288)
                kirby->base.base.base.xspeed = -0x288;
        }
        else if (kirby->unk118 & 0x10)
        {
            kirby->base.base.base.xspeed += 50;
            if (kirby->base.base.base.xspeed > 0x288)
                kirby->base.base.base.xspeed = 0x288;
        }
    }
    else
    {
        if (kirby->base.base.base.xspeed < 0)
        {
            kirby->base.base.base.xspeed += 18;
            if (kirby->base.base.base.xspeed > 0)
                kirby->base.base.base.xspeed = 0;
        }
        else
        {
            kirby->base.base.base.xspeed -= 18;
            if (kirby->base.base.base.xspeed < 0)
                kirby->base.base.base.xspeed = 0;
        }
    }
    if (kirby->unk118 & 0xC0)
    {
        if (kirby->unk118 & 0x40)
        {
            kirby->base.base.base.yspeed += 34;
            if (kirby->base.base.base.yspeed > 0x22D)
                kirby->base.base.base.yspeed = 0x22D;
        }
        else
        {
            kirby->base.base.base.yspeed -= 34;
            if (kirby->base.base.base.yspeed < -0x22D)
                kirby->base.base.base.yspeed = -0x22D;
        }
    }
    else
    {
        if (kirby->base.base.base.yspeed < 0)
        {
            kirby->base.base.base.yspeed += 0x10;
            if (kirby->base.base.base.yspeed > 0)
                kirby->base.base.base.yspeed = 0;
        }
        else
        {
            kirby->base.base.base.yspeed -= 0x10;
            if (kirby->base.base.base.yspeed < 0)
                kirby->base.base.base.yspeed = 0;
        }
    }
}

void sub_080530AC(struct Kirby *kirby)
{
    if (kirby->unk118 & 0x30)
    {
        if (kirby->unk118 & 0x20)
        {
            kirby->base.base.base.xspeed -= 0x48;
            if (kirby->base.base.base.xspeed < -0x230)
                kirby->base.base.base.xspeed = -0x230;
        }
        else if (kirby->unk118 & 0x10)
        {
            kirby->base.base.base.xspeed += 0x48;
            if (kirby->base.base.base.xspeed > 0x230)
                kirby->base.base.base.xspeed = 0x230;
        }
    }
    else
    {
        if (kirby->base.base.base.xspeed < 0)
        {
            kirby->base.base.base.xspeed += 0x20;
            if (kirby->base.base.base.xspeed > 0)
                kirby->base.base.base.xspeed = 0;
        }
        else
        {
            kirby->base.base.base.xspeed -= 0x20;
            if (kirby->base.base.base.xspeed < 0)
                kirby->base.base.base.xspeed = 0;
        }
    }
    if (kirby->unk118 & 0xC0)
    {
        if (kirby->unk118 & 0x40)
        {
            kirby->base.base.base.yspeed += 0x48;
            if (kirby->base.base.base.yspeed > 0x230)
                kirby->base.base.base.yspeed = 0x230;
        }
        else
        {
            kirby->base.base.base.yspeed -= 0x48;
            if (kirby->base.base.base.yspeed < -0x230)
                kirby->base.base.base.yspeed = -0x230;
        }
    }
    else
    {
        if (kirby->base.base.base.yspeed < 0)
        {
            kirby->base.base.base.yspeed += 0x20;
            if (kirby->base.base.base.yspeed > 0)
                kirby->base.base.base.yspeed = 0;
        }
        else
        {
            kirby->base.base.base.yspeed -= 0x20;
            if (kirby->base.base.base.yspeed < 0)
                kirby->base.base.base.yspeed = 0;
        }
    }
}

void sub_080531B4(struct Kirby *kirby, const struct Unk_08353510 *sb)
{
    bool32 r8 = FALSE;
    u8 i;

    Macro_0804A728(kirby);
    if ((kirby->unkDD & 0x1F) == 0x1A)
        gUnk_0203AD34 = 0;
    kirby->unkDD = 0;
    kirby->unkD4 = 90;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags |= 0x340;
    kirby->base.base.base.flags |= 0x8000;
    kirby->base.base.base.flags &= ~0x40000;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    kirby->unk114 = sb;
    kirby->unkD8 = 0;
    kirby->unkD6 = 0;
    kirby->base.base.base.counter = sb->unk4;
    kirby->unkD9 = 0;
    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        if (gKirbys[i].base.base.base.unk56 != kirby->base.base.base.unk56
            && gKirbys[i].unk114 == sb
            && gKirbys[i].base.base.base.unkC & 0x2000)
            r8 = TRUE; // why not break here? 
    }
    if (!r8) kirby->base.base.base.unkC |= 0x2000;
    sub_08083FC0(&kirby->base.base.base);
    kirby->base.base.unk78 = sub_080534D0;
    kirby->base.base.base.flags &= ~1;
}

void sub_080534D0(struct Kirby *kirby)
{
    const struct Unk_08353510 *r7 = kirby->unk114;
    s8 a, b;

    kirby->base.base.base.flags |= 4;
    if (kirby->base.base.base.counter == r7->unk4)
    {
        kirby->unkD4 = r7->unk6;
        if (r7->unk9 & 0x40)
        {
            kirby->base.base.base.unkC &= ~0x800;
            sub_08055D9C(kirby);
            if (kirby->base.base.unk78 == sub_08056128)
            {
                const struct Unk_08353510 *r0;

                sub_08002D40(kirby->base.base.base.unk60__42, &a, &b);
                kirby->unk108 = a;
                kirby->unk10A = b;
                r0 = ++kirby->unk114;
                kirby->base.base.unk78 = sub_080534D0;
                kirby->base.base.base.counter = r0->unk4;
                kirby->unkD9 = 0;
            }
            return;
        }
        switch (r7->unk8)
        {
        case 0:
            if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                sub_0803CA20(kirby->base.base.base.unk56);
            else
                sub_0803CAE4(kirby->base.base.base.unk56);
            break;
        case 10:
            if (kirby->base.base.base.unkC & 0x2000)
                sub_0808AE30(&kirby->base.base.base, 0, 0x292, 0);
            break;
        case 11:
            if (kirby->base.base.base.unkC & 0x2000)
                sub_0808AE30(&kirby->base.base.base, 0, 0x29B, 0);
            break;
        case 20:
            PlaySfx(&kirby->base.base.base, 520);
            break;
        case 21:
            PlaySfx(&kirby->base.base.base, 511);
            break;
        case 22:
            PlaySfx(&kirby->base.base.base, 509);
            break;
        case 23:
            PlaySfx(&kirby->base.base.base, 519);
            break;
        case 24:
            PlaySfx(&kirby->base.base.base, 518);
            break;
        case 25:
            PlaySfx(&kirby->base.base.base, 513);
            break;
        case 26:
            PlaySfx(&kirby->base.base.base, 512);
            break;
        case 27:
            PlaySfx(&kirby->base.base.base, 128);
            break;
        }
        if (r7->unk9 & 4)
            kirby->base.base.base.flags |= 0x400;
        else
            kirby->base.base.base.flags &= ~0x400;
        if (r7->unk9 & 1)
            kirby->base.base.base.flags |= 1;
        else
            kirby->base.base.base.flags &= ~1;
        if (r7->unk9 & 2)
        {
            kirby->base.base.base.unk10.unk8 |= 0x800;
            kirby->base.other.unk7C[1].unk8 |= 0x800;
        }
        else
        {
            kirby->base.base.base.unk10.unk8 &= ~0x800;
            kirby->base.other.unk7C[1].unk8 &= ~0x800;
        }
    }
    if (kirby->base.base.base.unkC & 0x2000 && r7->unk8 == 12 && !(gUnk_0203AD40 & 3))
        sub_080982C4(&kirby->base.base.base);
    kirby->base.base.base.xspeed = r7->unk0;
    kirby->base.base.base.yspeed = r7->unk2;
    if (!--kirby->base.base.base.counter)
    {
        const struct Unk_08353510 *r1 = ++kirby->unk114;

        kirby->base.base.base.counter = r1->unk4;
        if (r1->unk9 & 0x40)
        {
            kirby->base.base.base.xspeed = r1->unk0;
            kirby->base.base.base.yspeed = r1->unk2;
        }
        else if (!kirby->base.base.base.counter)
        {
            if (r1->unk9 & 0x80)
            {
                kirby->base.base.base.flags &= ~0x8000;
                kirby->unk114 = NULL;
                kirby->base.base.base.unkC &= ~0x2000;
                if (kirby->base.base.base.unk60__42 == 0x397)
                {
                    Macro_0803E920(kirby);
                    sub_080528E4(kirby);
                }
                else
                {
                    Macro_0803E920(kirby);
                    sub_0808AE30(&kirby->base.base.base, 0, 0x292, 0);
                    kirby->unkD4 = 74;
                    kirby->base.base.base.xspeed = 0x180;
                    kirby->base.base.base.yspeed = 0x280;
                    kirby->unkD6 = 0;
                    kirby->unkD8 = 0;
                    kirby->unkD9 = 0;
                    kirby->base.base.base.unk62 = 0;
                    kirby->base.base.unk78 = sub_08051874;
                    kirby->base.base.base.flags &= ~0x400;
                }
            }
            else
            {
                kirby->base.base.base.flags &= ~0x340;
                kirby->base.base.base.unk10.unk8 &= ~0x800;
                kirby->base.other.unk7C[1].unk8 &= ~0x800;
                kirby->base.base.base.flags &= ~0x400;
                Macro_0803E920(kirby);
                Macro_0803FF64_6(kirby);
            }
        }
    }
}

void sub_08053DAC(struct Kirby *kirby, u8 sb)
{
    Macro_0804A728(kirby);
    kirby->unkD4 = 0x30;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags |= 0xB00;
    kirby->base.base.base.flags &= ~0x40000;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    kirby->unkD9 = 0;
    kirby->base.base.base.counter = kirby->unkE2;
    kirby->base.base.unk78 = sub_0805405C;
    kirby->unkD6 = kirby->base.base.base.flags & 1;
    kirby->unkD8 = sb;
    if (kirby->base.base.base.x > gKirbys[kirby->unkD8].base.base.base.x)
        kirby->base.base.base.flags |= 1;
    else
        kirby->base.base.base.flags &= ~1;
    kirby->base.base.base.unk10.unk14 = 0x380;
    kirby->base.other.unk7C[1].unk14 = 0x380;
}

void sub_0805405C(struct Kirby *kirby)
{
    struct Kirby *r6 = gKirbys + kirby->unkD8;

    if (kirby->unkD4 == 48 && ++kirby->unkD9 > 5)
    {
        kirby->unkD4 = 49;
        kirby->unkD9 = 0;
        PlaySfx(&kirby->base.base.base, 131);
        PlaySfx(&r6->base.base.base, 131);
    }
    if (kirby->unkD4 == 50 && ++kirby->unkD9 > 5)
    {
        sub_080880AC(kirby, 90);
        kirby->unkD9 = 0;
        kirby->base.base.base.flags = kirby->unkD6 | (kirby->base.base.base.flags & ~1);
        Macro_0803E920(kirby);
        Macro_0803FF64_6(kirby);
    }
    else if (kirby->unkD4 == 49)
    {
        switch (kirby->unkE4)
        {
        case 0x64:
            sub_0808324C(r6, kirby->unkE2);
            kirby->unkD4 = 50;
            break;
        case 0x63:
            if (r6->lives >= 0xFF)
                r6->lives = 0xFF;
            else // the 3 lines are just `if (r6->lives != 0xFF)`
            {
                ++r6->lives;
                PlaySfx(&r6->base.base.base, 501);
            }
            kirby->unkD4 = 50;
            break;
        default:
            if (++kirby->unkD9 > 4)
            {
                bool32 r8;

                --kirby->base.base.base.counter;
                kirby->unkD9 = 0;
                if (r6->hp >= r6->maxHp)
                {
                    r8 = FALSE;
                    r6->hp = r6->maxHp;
                }
                else
                {
                    r8 = TRUE;
                    ++r6->hp;
                    PlaySfx(&r6->base.base.base, 502);
                }
                if (!r8 || !kirby->base.base.base.counter)
                    kirby->unkD4 = 50;
            }
            break;
        }
    }
}

void sub_08054414(struct Kirby *kirby, u8 r8)
{
    Macro_0804A728(kirby);
    kirby->unkD4 = 51;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags |= 0xB00;
    kirby->base.base.base.flags &= ~0x40000;
    kirby->base.base.base.xspeed = 0;
    kirby->base.base.base.yspeed = 0;
    kirby->base.base.unk78 = sub_080546A4;
    kirby->unkD6 = kirby->base.base.base.flags & 1;
    kirby->unkD8 = r8;
    if (kirby->base.base.base.x > gKirbys[kirby->unkD8].base.base.base.x)
        kirby->base.base.base.flags |= 1;
    else
        kirby->base.base.base.flags &= ~1;
}

void sub_080546A4(struct Kirby *kirby)
{
    struct Kirby *kirby2 = gKirbys + kirby->unkD8;

    if (!(kirby2->base.base.base.flags & 0x800))
    {
        kirby->base.base.base.flags = kirby->unkD6 | (kirby->base.base.base.flags & ~1);
        sub_080880AC(kirby, 0x5A);
        Macro_0803FF64_6(kirby);
    }
}

void sub_0805474C(struct Kirby *kirby)
{
    if (kirby->base.base.base.flags & 0x80)
        sub_08054F90(kirby);
    else
    {
        kirby->unkD4 = 26;
        kirby->base.base.base.counter = 0;
        kirby->unkD6 = 0;
        kirby->unkD9 = 0;
        kirby->base.base.base.flags &= ~2;
        kirby->base.base.base.flags &= ~0x40;
        if (kirby->unk118 & 0x20)
            kirby->base.base.base.flags |= 1;
        if (kirby->unk118 & 0x10)
            kirby->base.base.base.flags &= ~1;
        sub_08071FC0(kirby);
        kirby->base.base.unk78 = sub_08054950;
    }
}

void sub_080547C4(struct Kirby *kirby, u8 r6)
{
    PlaySfx(&kirby->base.base.base, 102);
    if (r6 != 0x1C)
    {
        if (!(kirby->base.base.base.flags & 0x80))
        {
            kirby->base.base.base.flags |= 0x80;
            sub_0806F260(kirby);
        }
        else
        {
            if (kirby->unkDD & 0x1F && r6 && !(kirby->unkDD & 0x80))
                kirby->unkDD |= 0x20;
            kirby->unkDD |= 0x40;
        }
        if (r6 & 0x80)
        {
            if (!(kirby->unkDD & 0x80))
                kirby->unkDD = (r6 & 0x1F) | 0x80;
            else if ((r6 & 0x1F) == 0x1A)
                gUnk_0203AD34 = 0;
        }
        else
        {
            if (!(kirby->unkDD & 0xA0))
            {
                kirby->unkDD |= r6;
                if (r6 == 0x1B)
                    kirby->unkDD |= 0x20;
            }
            else if ((r6 & 0x1F) == 0x1A)
                gUnk_0203AD34 = 0;
        }
    }
    if (!kirby->unkDE || !--kirby->unkDE)
    {
        if (kirby->base.base.unk78 == sub_08054950)
        {
            if (kirby->base.base.base.flags & 0x80)
                kirby->unkD4 = 30;
            else
                kirby->unkD4 = 37;
        }
        sub_0808A3E0(&kirby->base.base.base);
        kirby->base.base.base.flags &= ~2;
    }
}

void sub_08054950(struct Kirby *kirby)
{
    u16 r7 = kirby->unk118 & 2;

    if (kirby->unkD4 != 30 && kirby->unkD4 != 122
        && kirby->unkD4 != 37 && kirby->unkD4 != 26)
        kirby->base.base.base.flags |= 4;
    sub_0805BE80(kirby);
    if (kirby->unkDE)
    {
        if (kirby->base.base.base.unk58 & 2)
        {
            if (!kirby->unkD9)
            {
                sub_0805BA58(kirby);
                kirby->unkD9 = 1;
            }
            r7 = 0;
        }
        else if (kirby->unkD9)
        {
            sub_0805BBB4(kirby);
            kirby->unkD9 = 0;
        }
    }
    else if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    if (!(kirby->base.base.base.unk62 & 4))
        kirby->base.base.base.flags |= 0x20;
    if (kirby->base.base.base.flags & 2)
    {
        switch (kirby->unkD4)
        {
        case 26:
            kirby->unkD4 = 27;
            break;
        case 29:
            Macro_0803FF64_6(kirby);
            return;
        case 30:
        case 37:
        case 122:
            Macro_0803FF64_6(kirby);
            return;
        }
    }
    if (kirby->unkD4 == 106 && kirby->base.base.base.counter > 42)
        kirby->unkD4 = 107;
    ++kirby->base.base.base.counter;
    if (kirby->unkD4 == 27 || kirby->unkD4 == 106 || kirby->unkD4 == 107)
    {
        if (!r7
            && !kirby->unkDE
            && kirby->base.base.base.counter > 12)
            kirby->unkD4 = 29;
        if (kirby->base.base.base.counter > 36
            && kirby->unkD4 == 27)
            kirby->unkD4 = 106;
    }
    if (kirby->unkD4 == 28)
        kirby->unkD4 = 30;
    if (kirby->unkD4 == 30 || kirby->unkD4 == 37)
    {
        if (kirby->unkD6 < 10)
        {
            kirby->base.base.base.unk54 = gUnk_0834C188[kirby->unkD6 >> 1];
            ++kirby->unkD6;
        }
    }
    else if (kirby->base.base.base.counter > 120 && !kirby->unkDE)
    {
        kirby->unkD4 = 122;
        kirby->base.base.base.flags &= ~2;
    }
    Macro_080435F8(kirby);
    sub_0805B1B8(kirby);
    if (kirby->base.base.base.unk62 & 1)
        kirby->base.base.base.xspeed = 0;
}

void sub_08054C0C(struct Kirby *kirby)
{
    if (kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return;
    if (kirby->base.base.base.unk58 & 2)
        kirby->unkD4 = 72;
    else
        kirby->unkD4 = 37;
    kirby->base.base.base.counter = 0;
    if (kirby->unk103 == 23)
        sub_0803E308(&kirby->base.base.base, -3, 2, 3, 7);
    else
        sub_0803E308(&kirby->base.base.base, -6, -5, 6, 7);
    if (kirby->unk103 == 23) // useless
        sub_0803E2B0(&kirby->base.base.base, -7, 3, 5, 7);
    else
        sub_0803E2B0(&kirby->base.base.base, -7, 3, 5, 7);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x1060;
    kirby->base.base.base.flags &= ~2; // ?
    if (kirby->unkDD & 0x1F)
    {
        kirby->base.base.base.unkC &= ~0x200;
        sub_0803E558(kirby->base.base.base.unk56);
        sub_0805C11C(kirby);
    }
    else
    {
        PlaySfx(&kirby->base.base.base, 110);
        kirby->base.base.base.flags &= ~0x80;
        sub_0806E4EC(&kirby->base.base.base);
        kirby->base.base.unk78 = sub_08054DBC;
        kirby->unkDD = 0;
    }
}

void sub_08054DBC(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        kirby->base.other.unk7C[1].unk1F = 0xE;
        sub_0806EC28(kirby);
        if (!(kirby->base.base.base.unk62 & 4))
        {
            if (kirby->base.base.base.flags & 0x80)
            {
                kirby->base.base.base.yspeed -= 0x10;
                if (kirby->unk118 & 0x41)
                {
                    if (kirby->base.base.base.yspeed < -0x10)
                        kirby->base.base.base.yspeed = -0x10;
                }
                else
                {
                    if (kirby->base.base.base.yspeed < -0x180)
                        kirby->base.base.base.yspeed = -0x180;
                }
            }
            else
            {
                kirby->base.base.base.yspeed -= 8;
                if (kirby->base.base.base.yspeed < -0xE0)
                    kirby->base.base.base.yspeed = -0xE0;
            }
        }
    }
    else
    {
        kirby->base.other.unk7C[1].unk1F = kirby->base.base.base.unk56 + 4;
        sub_0806ED58(kirby);
        Macro_080435F8(kirby);
    }
    if (kirby->unk118 & 0x20)
        kirby->base.base.base.flags |= 1;
    if (kirby->unk118 & 0x10)
        kirby->base.base.base.flags &= ~1;
    if (kirby->base.base.base.flags & 2)
    {
        if (kirby->base.base.base.xspeed)
        {
            if (!(kirby->unk118 & 0x30))
            {
                if (kirby->base.base.base.xspeed > 0)
                    kirby->base.base.base.flags &= ~1;
                else if (kirby->base.base.base.xspeed < 0)
                    kirby->base.base.base.flags |= 1;
            }
            if (kirby->base.base.base.unk58 & 2)
                sub_08058628(kirby);
            else if (kirby->base.base.base.flags & 0x10 || kirby->unk11A & 0x30)
                sub_08041B08(kirby);
            else
                sub_080411E8(kirby);
        }
        else
        {
            if (kirby->base.base.base.unk58 & 2)
                sub_08058628(kirby);
            else
                sub_0803FE74(kirby);
        }
    }
    else
        sub_0805B1B8(kirby);
}

void sub_08054F90(struct Kirby *kirby)
{
    if (kirby->unk118 & 0x20)
        kirby->base.base.base.flags |= 1;
    if (kirby->unk118 & 0x10)
        kirby->base.base.base.flags &= ~1;
    sub_080725E0(kirby);
    if ((kirby->unkDD & 0x1F) == 0x1A)
        gUnk_0203AD34 = 0;
    kirby->unkD4 = 38;
    kirby->base.base.base.counter = 0;
    kirby->unkDD = 0;
    kirby->unkDE = 0;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags &= ~0x80;
    kirby->base.base.base.flags &= ~0x40;
    kirby->base.base.base.flags |= 0x40000;
    sub_0808A90C(&kirby->base.base.base);
    sub_0806F260(kirby);
    kirby->base.base.unk78 = sub_0805509C;
}

void sub_0805509C(struct Kirby *kirby)
{
    if (kirby->base.base.base.unk58 & 2)
    {
        sub_0805BA58(kirby);
        sub_08059810(kirby);
        return;
    }
    sub_0805BE80(kirby);
    if (kirby->base.base.base.flags & 2)
    {
        kirby->base.base.base.unk54 = 0;
        Macro_0803FF64_6(kirby);
        return;
    }
    else
    {
        if (kirby->unkD6 <= 4)
        {
            kirby->base.base.base.unk54 = gUnk_0834C18D[kirby->unkD6 >> 1];
            ++kirby->unkD6;
        }
        else
            kirby->base.base.base.unk54 = 0;
    }
    sub_0805B1B8(kirby);
    Macro_080435F8(kirby);
    if (kirby->base.base.base.unk62 & 1)
        kirby->base.base.base.xspeed = 0;
}

bool8 sub_080551FC(struct Kirby *kirby, u16 a2, u8 a3, u8 a4)
{
    if (Macro_0810B1F4(&kirby->base.base.base)
        || kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    if (kirby->base.base.base.unk60__42 == a2) return FALSE;
    if (!(kirby->base.base.base.unkC & 0x1000)) return FALSE;
    kirby->unk106 = a2;
    kirby->unk108 = a3;
    kirby->unk10A = a4;
    sub_0805545C(kirby);
    return TRUE;
}

void sub_080552A8(struct Kirby *kirby)
{
    struct Unk_0888562C *r1;
    u16 r2;

    if (kirby->base.base.base.unk58 & 0x4000)
    {
        if (!(kirby->base.base.base.unk62 & 0x10))
            r2 = kirby->unk106;
        else
        {
            if (!(kirby->base.base.base.unkC & 0x80000))
                r1 = sub_080025AC(kirby->base.base.base.unk56,
                    kirby->base.base.base.x >> 12,
                    kirby->base.base.base.y >> 12).pat1;
            else
                r1 = sub_080025AC(kirby->base.base.base.unk56,
                    kirby->unk120,
                    kirby->unk122).pat1;
            r2 = r1->unk08;
            kirby->unk10C.pat1 = r1;
        }
        
    }
    else
    {
        if (kirby->base.base.base.unk62 & 0x10)
            r2 = kirby->base.base.base.kirby1->base.base.base.unk63;
        else
            r2 = kirby->unk106;
    }
    if (r2 == 0x321)
        PlaySfx(&kirby->base.base.base, 522);
    else
        PlaySfx(&kirby->base.base.base, 521);
}

void sub_0805545C(struct Kirby *kirby)
{
    u8 sp04;
    u8 sp08 = 0;
    bool32 sp0C = FALSE, sp10 = FALSE;
    u8 sl = kirby->base.base.base.unk58 & 2;
    s16 sp14 = 0, sp18 = 0;

    sp04 = kirby->base.base.base.flags & 0x40;
    if (kirby->unk103 == 14)
        sl = 0;
    if (kirby->base.base.base.unkC & 0x40000)
    {
        sp0C = TRUE;
        sp10 = TRUE;
        sp14 = kirby->base.base.base.xspeed;
        sp18 = kirby->base.base.base.yspeed;
    }
    if (!(kirby->base.base.base.unkC & 0x800000)
        && (kirby->base.base.base.unkC & 0x80000))
    {
        sp10 = TRUE;
        sp14 = kirby->base.base.base.xspeed;
        sp18 = kirby->base.base.base.yspeed;
    }
    else if (!(kirby->base.base.base.unkC & 0x800000)
        && ((kirby->unkD4 == 99 && kirby->unk103 != 14) || (kirby->unkD4 == 54 && kirby->unk103 == 14)))
    {
        if (gUnk_02021580 < 4)
            sp08 = gUnk_02021580 + 1;
        else
            sp08 = gUnk_02021580;
    }
    Macro_0804A728(kirby);
    kirby->unkD9 = 0;
    if (sp0C)
        kirby->base.base.base.unkC |= 0x40000;
    if ((kirby->base.base.base.unkC & 0x80000) || sp0C)
    {
        kirby->base.base.base.xspeed = sp14;
        kirby->base.base.base.yspeed = sp18;
    }
    if (kirby->base.base.base.flags & 0x80 && !sp10)
    {
        sub_08054F90(kirby);
        if (sl) kirby->unkD4 = 65;
        if (kirby->base.base.base.unkC & 0x800000)
        {
            struct Unk_02022930_0 *v;

            if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                v = sub_0803CA20(kirby->base.base.base.unk56);
            else
                v = sub_0803CAE4(kirby->base.base.base.unk56);
            v->unkA = 0x400;
            v->unk8 |= 0x40;
        }
    }
    else
    {
        if (sp04 && kirby->unk103 != 14 && kirby->unk103 != 19 && !sp10)
        {
            sub_0804990C(kirby);
            kirby->unkD4 = 43;
            if (kirby->base.base.base.unkC & 0x800000)
            {
                struct Unk_02022930_0 *v;

                if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                    v = sub_0803CA20(kirby->base.base.base.unk56);
                else
                    v = sub_0803CAE4(kirby->base.base.base.unk56);
                v->unkA = 0x400;
                v->unk8 |= 0x40;
            }
        }
        else
        {
            struct Unk_02022930_0 *v;

            kirby->base.base.base.flags |= sp04;
            ++kirby->unkD6;
            if (!sp10)
            {
                if (sl)
                    kirby->unkD4 = 64;
                else
                    kirby->unkD4 = 42;
            }
            if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                v = sub_0803CA20(kirby->base.base.base.unk56);
            else
                v = sub_0803CAE4(kirby->base.base.base.unk56);
            v->unkA = 0x400;
            v->unk8 |= 0x40;
        }
    }
    sub_080552A8(kirby);
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags |= 0x100;
    kirby->base.base.base.flags |= 0x200;
    if (!sp10)
        kirby->base.base.base.flags |= 0x800;
    if (!sp0C)
    {
        kirby->base.base.base.yspeed >>= 1;
        kirby->base.base.base.xspeed >>= 1;
        kirby->base.base.base.xspeed += kirby->unkD0;
        kirby->base.base.base.yspeed += kirby->unkD2;
    }
    kirby->unkD0 = 0;
    kirby->unkD2 = 0;
    kirby->unkD8 = sp08;
    kirby->unkD9 = 0;
    kirby->base.base.base.counter = sp10;
    kirby->base.base.unk78 = sub_08055C14;
    if (kirby->base.base.base.unkC & 0x800000)
    {
        kirby->unkD6 = 1;
        kirby->base.base.base.unkC &= ~0x800000;
        kirby->unkD8 = 0;
    }
    if (kirby->base.base.base.unkC & 0x80000)
        kirby->unkD8 = 0;
}

void sub_08055920(struct Kirby *kirby)
{
    u8 sp04 = 0;

    if ((kirby->unkD4 == 99 && kirby->unk103 != 14)
        || (kirby->unkD4 == 54 && kirby->unk103 == 14))
        sp04 = 5;
    Macro_0804A728(kirby);
    kirby->base.base.base.flags &= ~0x2000008;
    Macro_0803EA90_1(kirby);
    Macro_0803EA90_2(kirby);
    kirby->unkD4 = 0;
    kirby->base.base.base.flags &= ~2;
    kirby->base.base.base.flags |= 0x100;
    kirby->base.base.base.flags |= 0x200;
    kirby->base.base.base.flags |= 0x800;
    kirby->base.base.base.xspeed = kirby->base.base.base.yspeed = 0;
    kirby->unkD0 = 0;
    kirby->unkD2 = 0;
    kirby->unkD8 = sp04;
    kirby->unkD9 = 0;
    kirby->unkD6 = 1;
    kirby->base.base.unk78 = sub_08055D9C;
    if (kirby->base.base.base.unkC & 0x800000)
    {
        kirby->unkD6 = 1; // redundant
        kirby->base.base.base.unkC &= ~0x800000;
        kirby->unkD8 = 0;
        kirby->unkE5 = 0;
    }
    if (kirby->base.base.base.unkC & 0x80000)
        kirby->unkD8 = 0;
}

void sub_08055C14(struct Kirby *kirby)
{
    struct Unk_02022930_0 *v;

    if (++kirby->unkD9 > 7)
    {
        if (kirby->unkD6)
        {
            v = sub_0803D308(kirby->base.base.base.unk56);
            if (kirby->unkD6 == 5)
            {
                v->unk6 = 0;
                kirby->base.base.base.xspeed = 0;
                kirby->base.base.base.yspeed = 0;
                kirby->unkD9 = 0;
                if (kirby->base.base.base.unkC & 0x400000)
                {
                    kirby->unkE5 = 0;
                    kirby->unkD0 = 0;
                    kirby->unkD2 = 0;
                    kirby->base.base.base.counter = 0;
                    kirby->base.base.base.unkC &= ~0x400000;
                    if ((kirby->unkDD & 0x1F) == 0x1A)
                        gUnk_0203AD34 = 0;
                    kirby->unkDD = 0;
                    kirby->unkDE = 0;
                    kirby->base.base.base.flags &= ~0x80;
                    sub_0806F260(kirby);
                    Macro_0803EA90_1(kirby);
                    Macro_0803EA90_2(kirby);
                }
                if (!kirby->base.base.base.counter)
                    kirby->unkD4 = 0;
                kirby->base.base.unk78 = sub_08055D9C;
            }
            else
                ++kirby->unkD6;
        }
        else
        {
            ++kirby->unkD6;
            kirby->unkD9 = 0;
            if (kirby->unkD4 == 65)
                kirby->unkD4 = 64;
            else
                kirby->unkD4 = 42;
            if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
                v = sub_0803CA20(kirby->base.base.base.unk56);
            else
                v = sub_0803CAE4(kirby->base.base.base.unk56);
            v->unkA = 0x400;
            v->unk8 |= 0x40;
        }
    }
}

#define Macro_08055D9C(kirby) \
({ \
    if (gUnk_0203AD3C == (kirby)->base.base.base.unk56) \
    { \
        sub_08035E28(0); \
        sub_08034C9C(2); \
        sub_08035E40(&(kirby)->base.base.base); \
    } \
})

void sub_08055D9C(struct Kirby *kirby)
{
    kirby->base.base.base.flags |= 0x400;
    kirby->base.base.base.unkC |= 0x200000;
    switch (kirby->unkD9)
    {
    case 0:
        if (kirby->base.base.base.unk56 == gUnk_0203AD3C)
        {
            struct Unk_02022930_0 *v;

            v = sub_0803CA20(kirby->base.base.base.unk56);
            v->unk8 |= 0x40;
            v->unk0 = 4;
        }
        sub_080562D0(kirby);
        break;
    case 1:
        if (gUnk_0203AD3C == kirby->base.base.base.unk56)
        {
            if (kirby->hp > 0)
                sub_080362A4();
            if (kirby->base.base.base.unk60__42 == 0x397)
                sub_08036314(&kirby->base.base.base);
        }
        if (kirby->base.base.base.unk60__42 == 0x321)
            Macro_0803E920(kirby);
        if (kirby->base.base.base.unkC & 0x2000000)
        {
            kirby->base.base.base.unkC &= ~0x2000000;
            Macro_0804BD98(kirby);
            kirby->unk103 = 0;
            sub_0806F260(kirby);
            sub_0806EFF8(kirby);
        }
        if (kirby->unk103 == 23
            || (kirby->unk103 == 14 && kirby->base.base.base.unk60__42 == 0x321))
        {
            kirby->unk103 = 0;
            Macro_08055D9C(kirby);
            sub_0806F260(kirby);
            sub_0806EFF8(kirby);
        }
        break;
    case 2:
        if (kirby->unkD8)
        {
            sub_08093C74(&kirby->base.base.base);
            sub_080880AC(kirby, 0xA0);
            if (!(gUnk_0203AD10 & 4))
            {
                sub_0812379C(kirby);
                if (kirby->base.base.base.unk56 >= gUnk_0203AD30)
                    BonusCreateRandom(&kirby->base.base.base, kirby->unkD8 - 1);
            }
            kirby->unkD8 = 5;
        }
        kirby->base.base.base.counter = 0;
        kirby->base.base.unk78 = sub_08056128;
        Macro_08050218(kirby);
        sub_08001358(kirby->base.base.base.unk56);
        if (gUnk_0203AD30 > kirby->base.base.base.unk56)
            sub_080023A4(kirby->base.base.base.unk56);
        if (kirby->hp)
            kirby->base.base.base.flags &= ~0x400;
        if (kirby->base.base.base.x <= gCurLevelInfo[kirby->base.base.base.unk56].unk50
            && kirby->base.base.base.x >= gCurLevelInfo[kirby->base.base.base.unk56].unk48
            && kirby->base.base.base.y <= gCurLevelInfo[kirby->base.base.base.unk56].unk54
            && kirby->base.base.base.y >= gCurLevelInfo[kirby->base.base.base.unk56].unk4C)
        {
            kirby->base.base.base.unk57 = sub_080023E4(kirby->base.base.base.unk56,
                kirby->base.base.base.x >> 12,
                kirby->base.base.base.y >> 12);
            kirby->base.base.base.unk58 = gUnk_082D88B8[kirby->base.base.base.unk57];
            if (kirby->base.base.base.unk58 & 2
                && kirby->unk103 != 11)
            {
                kirby->base.other.unk7C[1].unk1F = 0xE;
                sub_0806EC28(kirby);
                if (!kirby->base.base.base.counter)
                    kirby->unkD4 = 56;
            }
        }
        if (kirby->base.base.base.unkC & 0x40000)
            sub_080578E4(kirby);
        if (kirby->base.base.base.unkC & 0x80000)
        {
            if (kirby->unk103 == 9)
            {
                sub_0806EB74(&kirby->base.base.base);
                kirby->base.base.base.unkC &= ~2;
            }
            kirby->unkD4 = 0;
            sub_0803E558(kirby->base.base.base.unk56);
            if (kirby->base.base.base.unk58 & 2)
            {
                kirby->unkD4 = 56;
                if (kirby->base.base.base.flags & 0x60)
                    kirby->unkD4 = 59;
            }
            else
            {
                if (kirby->base.base.base.flags & 0x60)
                    kirby->unkD4 = 17;
                if (kirby->unk103 == 19
                    && kirby->base.base.base.flags & 0x40)
                    kirby->unkD4 = 31;
            }
            if (kirby->unk103 == 14)
                kirby->unkD4 = 0;
        }
        kirby->base.base.base.unkC &= ~0x80000;
        kirby->base.base.base.unkC &= ~0x1000;
        return;
    }
    ++kirby->unkD9;
}
