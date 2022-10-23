#include "kracko.h"
#include "object.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "constants/kirby.h"

void sub_080DBEE0(struct Kracko *);
void sub_080DBF40(struct Kracko *);
void sub_080DC050(struct Kracko *);
void sub_080DC1CC(struct Kracko *);
void sub_080DCB38(struct Kracko *);
void sub_080DCDC0(struct Kracko *);
struct Object4 *sub_080DCF18(struct Kracko *);
void sub_080DD044(void);
struct Object4 *sub_080DDC44(struct Kracko *, s8, s8);
void sub_080DE064(struct Kracko *);
void sub_080DE188(struct Kracko *);
void sub_080DE658(struct Kracko *, u8, bool8);
void sub_080DEA94(struct Kracko *, u8);
void sub_080DEF64(struct Kracko *);
void sub_080DF000(struct Kracko *);
void sub_080DF02C(struct Kracko *);
void sub_080DF088(struct Kracko *);
void sub_080DF0C0(struct Kracko *);
void sub_080DF118(struct Kracko *);
void sub_080DF158(struct Kracko *);
void sub_080DF18C(struct Kracko *);
void sub_080DF1E4(struct Kracko *);
void sub_080DF21C(struct Kracko *);
void sub_080DF258(struct Kracko *);
void sub_080DF2BC(struct Kracko *);

extern const struct Unk_08353510 gUnk_08356418[], gUnk_0835658C[], gUnk_0835670C[], gUnk_08356748[], gUnk_08356784[];
extern const s16 gUnk_083567CC[], gUnk_083567D4[], gUnk_083567E0[];
extern const s8 gUnk_0835681B[];

void *CreateKracko(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Kracko), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Kracko *tmp = TaskGetStructPtr(t);
    struct Kracko *kracko = tmp, *krackoAlias = kracko;

    InitObject(&kracko->obj2, template, a2);
    kracko->obj2.base.unkC |= 1;
    kracko->obj2.base.flags |= 0x2000000;
    kracko->obj2.base.flags &= ~0x400;
    kracko->obj2.base.flags |= 0x200;
    kracko->obj2.base.flags |= 0x100;
    kracko->obj2.base.flags |= 0x40;
    kracko->obj2.base.flags |= 0x200000;
    kracko->obj2.base.x = 0xB000;
    kracko->obj2.base.flags |= 1;
    kracko->obj2.base.unk5C &= ~7;
    kracko->obj2.base.unk5C |= 3;
    kracko->obj2.base.unk5C |= 0x1080A0;
    kracko->obj2.base.unk68 |= 0x400;
    sub_0803E2B0(&kracko->obj2.base, -0x1A, -0x14, 0x1A, 0xE);
    ObjectInitSprite(&kracko->obj2);
    Macro_080E7D74(&kracko->obj2);
    kracko->obj2.unk9E = 0;
    kracko->obj2.unk7C = sub_080DEF64;
    sub_080DF000(kracko);
    krackoAlias->unkBC = NULL;
    krackoAlias->unkC0 = 0;
    krackoAlias->unkC1 = 0;
    krackoAlias->unkC2 = 0;
    krackoAlias->unkC3 = 0;
    return kracko;
}

void sub_080DBA1C(struct Kracko *kracko)
{
    kracko->obj2.kirby3 = sub_0803D368(&kracko->obj2.base);
    kracko->obj2.base.flags |= 4;
    if (!(kracko->obj2.kirby3->base.base.base.unkC & 0x8000)
        && kracko->obj2.base.roomId == kracko->obj2.kirby3->base.base.base.roomId
        && sub_08039430(&kracko->obj2.kirby3->base.base,
            kracko->obj2.base.x, kracko->obj2.base.y,
            kracko->obj2.object->unk1A, kracko->obj2.object->unk1C,
            kracko->obj2.object->unk1E, kracko->obj2.object->unk20))
    {
        Macro_081003EC(&kracko->obj2, &kracko->obj2.kirby3->base.base.base);
        sub_080DF2BC(kracko);
    }
}

void sub_080DBAF8(struct Kracko *kracko)
{
    struct Kracko *krackoAlias = kracko;

    if (!kracko->obj2.unk9E)
    {
        if (++kracko->obj2.base.counter == 8)
        {
            kracko->obj2.unk83 = 2;
            kracko->obj2.base.counter = 0;
            kracko->obj2.unk9E = 1;
        }
    }
    else
    {
        if (kracko->obj2.base.y + kracko->obj2.base.yspeed > 0x3000)
        {
            kracko->obj2.base.y = 0x3000;
            sub_080DBE3C(kracko);
        }
        else
        {
            if (++kracko->obj2.base.counter == 0x6F)
                kracko->obj2.unk83 = 0;
            if (kracko->obj2.base.counter == 0x20)
                Macro_08100F18(&kracko->obj2);
            if (kracko->obj2.base.counter == 0x4C)
            {
                krackoAlias->unkB4->flags |= 0x1000;
                krackoAlias->unkB4 = sub_080DCF18(kracko);
                kracko->obj2.base.yspeed = -0x80;
            }
        }
    }
}

void sub_080DBCA0(struct Kracko *kracko)
{
    s32 r6 = 0;
    s32 sb = 3, r8 = 2, sl = 2;
    struct Kracko *krackoAlias = kracko;

    if (!kracko->unkC0)
    {
        if (kracko->obj2.unk85 > 4)
        {
            kracko->obj2.unk85 = 0;
            krackoAlias->unkC0 = 1;
            sub_080DF158(kracko);
            return;
        }
        else if (Rand16() & 1)
        {
            kracko->obj2.unk85 = 0;
            krackoAlias->unkC0 = 1;
            sub_080DF158(kracko);
            return;
        }
    }
    krackoAlias->unkC0 = 0;
    ++kracko->obj2.unk85;
    kracko->obj2.kirby3 = sub_0803D368(&kracko->obj2.base);
    r6 = Rand16() & 7;
    if (kracko->obj2.kirby3->base.base.base.x - 0x3000 > 0xA000u)
        sb = 1;
    if (kracko->obj2.kirby3->base.base.base.y <= 0x4800 || krackoAlias->unkC1)
        r8 = 0;
    if (kracko->obj2.base.flags & 1)
    {
        if (kracko->obj2.kirby3->base.base.base.x < 0x5000)
            goto label;
    }
    else
    {
        if (kracko->obj2.kirby3->base.base.base.x > 0xB000)
            goto label;
    }
    if (krackoAlias->unkC2)
    {
    label: // TODO: get rid of goto
        sl = 0;
    }
    if ((u32)r6 < r8)
    {
        krackoAlias->unkC1 = 1;
        krackoAlias->unkC2 = 0;
        sub_080DF02C(kracko);
    }
    else if (r6 < r8 + sb)
    {
        krackoAlias->unkC1 = 0;
        krackoAlias->unkC2 = 0;
        sub_080DBF40(kracko);
    }
    else if (r6 < r8 + sb + sl)
    {
        krackoAlias->unkC2 = 1;
        krackoAlias->unkC1 = 0;
        sub_080DCB38(kracko);
    }
    else
    {
        krackoAlias->unkC1 = 0;
        krackoAlias->unkC2 = 0;
        if (Rand16() & 1)
            sub_080DF118(kracko);
        else
            sub_080DCDC0(kracko);
    }
}

void sub_080DBE3C(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 0, sub_080DBEE0);
    if (kracko->obj2.base.x < 0x8000)
    {
        kracko->obj2.base.flags &= ~1;
        kracko->obj2.base.x = 0x5000;
    }
    else
    {
        kracko->obj2.base.flags |= 1;
        kracko->obj2.base.x = 0xB000;
    }
    kracko->obj2.base.y = 0x3000;
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = 0;
    kracko->obj2.base.flags &= ~0x200;
    kracko->obj2.base.flags |= 0x40;
    kracko->obj2.base.counter = 0;
    kracko->obj2.unk9F = 2;
    if (kracko->obj2.subtype || kracko->obj2.unk80 <= gUnk_08351530[0xD][gUnk_0203AD30 - 1] >> 1)
        kracko->obj2.unk9F = 1;
}

void sub_080DBEE0(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9F)
    {
        kracko->obj2.base.yspeed = 0;
        sub_080DBCA0(kracko);
    }
    else
    {
        if (kracko->obj2.base.counter < 0x30)
            kracko->obj2.base.yspeed = gUnk_083567D4[kracko->obj2.base.counter >> 3];
        else
            kracko->obj2.base.yspeed = 0;
        if (++kracko->obj2.base.counter >= 0x30)
        {
            kracko->obj2.base.counter = 0;
            --kracko->obj2.unk9F;
        }
    }
}

void sub_080DBF40(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, sub_080DC050);
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = 0;
    kracko->obj2.base.counter = 0x5A;
    PlaySfx(&kracko->obj2.base, 384);
    if ((kracko->obj2.subtype || kracko->obj2.unk80 <= gUnk_08351530[0xD][gUnk_0203AD30 - 1] >> 1)
        && Rand16() & 1)
    {
        kracko->obj2.unk78 = sub_080DC1CC;
        kracko->obj2.unk83 = 0;
    }
}

void sub_080DC050(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gUnk_08356418[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gUnk_08356418[kracko->obj2.unk9F].unk8;
        if (gUnk_08356418[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gUnk_08356418[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gUnk_08356418[kracko->obj2.unk9F].unk0 != gUnk_08356418[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gUnk_08356418[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gUnk_08356418[kracko->obj2.unk9F].unk2 != gUnk_08356418[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gUnk_08356418[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gUnk_08356418[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gUnk_08356418[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gUnk_08356418[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gUnk_08356418[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gUnk_08356418[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gUnk_08356418[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
        sub_080DBE3C(kracko);
}

void sub_080DC1CC(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gUnk_0835658C[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gUnk_0835658C[kracko->obj2.unk9F].unk8;
        if (gUnk_0835658C[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gUnk_0835658C[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gUnk_0835658C[kracko->obj2.unk9F].unk0 != gUnk_0835658C[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gUnk_0835658C[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gUnk_0835658C[kracko->obj2.unk9F].unk2 != gUnk_0835658C[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gUnk_0835658C[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gUnk_0835658C[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gUnk_0835658C[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gUnk_0835658C[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gUnk_0835658C[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gUnk_0835658C[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gUnk_0835658C[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
        sub_080DBE3C(kracko);
    if (!kracko->obj2.unk9E && kracko->obj2.unk9F == 8)
        PlaySfx(&kracko->obj2.base, 384);
}

void sub_080DC3D4(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gUnk_0835670C[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gUnk_0835670C[kracko->obj2.unk9F].unk8;
        if (gUnk_0835670C[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gUnk_0835670C[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gUnk_0835670C[kracko->obj2.unk9F].unk0 != gUnk_0835670C[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gUnk_0835670C[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gUnk_0835670C[kracko->obj2.unk9F].unk2 != gUnk_0835670C[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gUnk_0835670C[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gUnk_0835670C[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gUnk_0835670C[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gUnk_0835670C[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gUnk_0835670C[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gUnk_0835670C[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gUnk_0835670C[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
        sub_080DF088(kracko);
}

void sub_080DC550(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gUnk_08356784[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gUnk_08356784[kracko->obj2.unk9F].unk8;
        if (gUnk_08356784[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gUnk_08356784[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gUnk_08356784[kracko->obj2.unk9F].unk0 != gUnk_08356784[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gUnk_08356784[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gUnk_08356784[kracko->obj2.unk9F].unk2 != gUnk_08356784[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gUnk_08356784[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gUnk_08356784[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gUnk_08356784[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gUnk_08356784[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gUnk_08356784[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gUnk_08356784[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gUnk_08356784[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
    {
        kracko->obj2.base.flags ^= 1;
        sub_080DF088(kracko);
    }
}

void sub_080DC6D8(struct Kracko *kracko)
{
    if (!(kracko->obj2.base.counter & 3))
        sub_080DE188(kracko);
    if (!(kracko->obj2.base.counter & 7))
        PlaySfx(&kracko->obj2.base, 383);
    if (kracko->obj2.base.counter < 0x90)
        kracko->obj2.base.yspeed = gUnk_083567CC[(kracko->obj2.base.counter >> 2) & 3];
    else
        kracko->obj2.base.yspeed = 0;
    ++kracko->obj2.base.counter;
    if (kracko->obj2.base.flags & 1)
    {
        if (kracko->obj2.base.x + kracko->obj2.base.xspeed < 0x1F80)
        {
            kracko->obj2.base.x = 0x1F80;
            sub_080DF0C0(kracko);
        }
    }
    else
    {
        if (kracko->obj2.base.x + kracko->obj2.base.xspeed > 0xE080)
        {
            kracko->obj2.base.x = 0xE080;
            sub_080DF0C0(kracko);
        }
    }
}

void sub_080DC800(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gUnk_08356748[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gUnk_08356748[kracko->obj2.unk9F].unk8;
        if (gUnk_08356748[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gUnk_08356748[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gUnk_08356748[kracko->obj2.unk9F].unk0 != gUnk_08356748[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gUnk_08356748[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gUnk_08356748[kracko->obj2.unk9F].unk2 != gUnk_08356748[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gUnk_08356748[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gUnk_08356748[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gUnk_08356748[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gUnk_08356748[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gUnk_08356748[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gUnk_08356748[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gUnk_08356748[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
        sub_080DBE3C(kracko);
}


void sub_080DC97C(struct Kracko *kracko)
{
    if (kracko->obj2.base.counter < 0x30)
        kracko->obj2.base.yspeed = gUnk_083567D4[kracko->obj2.base.counter >> 3];
    if (++kracko->obj2.base.counter >= 0x30)
    {
        if (kracko->obj2.unk9E)
        {
            if (kracko->obj2.base.counter > 0x30)
            {
                sub_080DBE3C(kracko);
                return;
            }
        }
        else
            kracko->obj2.base.counter = 0;
    }
    if (!(kracko->obj2.base.counter & 7))
    {
#ifndef NONMATCHING
        s32 r1 = -0x30;
        register s8 r2 asm("r2") = Rand32() ? 8 : 8;

        sub_080DDC44(kracko, r1, r2);
#else
        sub_080DDC44(kracko, -0x30, Rand32() ? 8 : 8);
#endif
    }
    if (kracko->obj2.base.flags & 1)
    {
        if (kracko->obj2.base.x + kracko->obj2.base.xspeed >= 0x5000)
            return;
        kracko->obj2.base.x = 0x5000;
        kracko->obj2.base.xspeed = 0;
        kracko->obj2.unk9E = 1;
    }
    else
    {
        if (kracko->obj2.base.x + kracko->obj2.base.xspeed <= 0xB000)
            return;
        kracko->obj2.base.x = 0xB000;
        kracko->obj2.base.xspeed = 0;
        kracko->obj2.unk9E = 1;
    }
}

void sub_080DCA44(struct Kracko *kracko)
{
    if (!--kracko->obj2.base.counter)
    {
        kracko->obj2.unk9E = 1;
        sub_080DE064(kracko);
        PlaySfx(&kracko->obj2.base, 359);
    }
    if (kracko->obj2.unk9E)
    {
        kracko->obj2.base.objBase54 = gUnk_0835681B[2 * kracko->obj2.unk9F];
        kracko->obj2.base.objBase55 = gUnk_0835681B[2 * kracko->obj2.unk9F + 1];
        if (++kracko->obj2.unk9F > 8)
            sub_080DBE3C(kracko);
    }
}

void sub_080DCB38(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, sub_080DF18C);
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = 0;
    if (kracko->obj2.subtype || kracko->obj2.unk80 <= gUnk_08351530[0xD][gUnk_0203AD30 - 1] >> 1)
        kracko->obj2.base.counter = 0x10;
    else
        kracko->obj2.base.counter = 0x24;
    kracko->obj2.unk9E = 0;
    kracko->obj2.unk9F = 0;
}

void sub_080DCBA0(struct Kracko *kracko)
{
    if (kracko->obj2.base.counter & 1)
    {
        bool8 boolean = FALSE;
        u8 var = kracko->obj2.unk9E + 6;

        if (var >= 0xC) var -= 0xC;
        if (kracko->obj2.unk9F)
            boolean = TRUE;
        sub_080DE658(kracko, kracko->obj2.unk9E, boolean);
        sub_080DE658(kracko, var, boolean);
        if (!kracko->obj2.unk9F)
            PlaySfx(&kracko->obj2.base, 314);
        if (++kracko->obj2.unk9F > 2)
        {
            ++kracko->obj2.unk9E;
            kracko->obj2.base.counter = 0;
            kracko->obj2.unk9F = 0;
        }
    }
    ++kracko->obj2.base.counter;
    if (kracko->obj2.unk9E == 6)
        sub_080DBE3C(kracko);
}

void sub_080DCCB0(struct Kracko *kracko)
{
    if (kracko->obj2.base.counter & 1)
    {
        bool8 boolean = FALSE;
        u8 var = kracko->obj2.unk9E + 6;

        if (var >= 0xC) var -= 0xC;
        if (kracko->obj2.unk9F)
            boolean = TRUE;
        sub_080DE658(kracko, kracko->obj2.unk9E, boolean);
        sub_080DE658(kracko, var, boolean);
        if (!kracko->obj2.unk9F)
            PlaySfx(&kracko->obj2.base, 314);
        if (++kracko->obj2.unk9F > 2)
        {
            ++kracko->obj2.unk9E;
            kracko->obj2.base.counter = 0;
            kracko->obj2.unk9F = 0;
        }
    }
    ++kracko->obj2.base.counter;
    if (kracko->obj2.unk9E == 0xC)
        sub_080DBE3C(kracko);
}

void sub_080DCDC0(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, sub_080DF1E4);
    kracko->obj2.kirby3 = sub_0803D368(&kracko->obj2.base);
    kracko->obj2.base.xspeed = (u32)(kracko->obj2.base.x - kracko->obj2.kirby3->base.base.base.x) >> 5;
    kracko->obj2.base.yspeed = 0;
    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
    if (kracko->obj2.subtype)
        kracko->obj2.base.counter = 0xC;
    else
        kracko->obj2.base.counter = 0x18;
    kracko->obj2.unk9E = 0;
    kracko->obj2.unk9F = 0;
    kracko->obj2.base.flags |= 0x800;
}

void sub_080DCE28(struct Kracko *kracko)
{
    kracko->obj2.base.flags &= ~0x800;
    if (kracko->obj2.base.counter >= 0x20)
        sub_080DF21C(kracko);
    else
    {
        if (kracko->obj2.subtype && kracko->obj2.base.counter > 7)
        {
            if (kracko->obj2.unk9F)
            {
                sub_080DEA94(kracko, 1);
                kracko->obj2.unk9F = 0;
            }
            if (!(kracko->obj2.base.counter & 3))
            {
                sub_080DEA94(kracko, 0);
                kracko->obj2.unk9F = 1;
            }
        }
        kracko->obj2.base.yspeed = gUnk_083567E0[kracko->obj2.base.counter >> 2];
        ++kracko->obj2.base.counter;
    }
}

void sub_080DCEA8(struct Kracko *kracko)
{
    if (kracko->obj2.base.counter > 0x63)
        sub_080DF258(kracko);
    else
    {
        if (kracko->obj2.base.counter >= kracko->obj2.unk9F && kracko->obj2.base.counter < 0x55)
        {
            if (kracko->obj2.unk9F)
            {
                sub_080DEA94(kracko, 1);
                kracko->obj2.unk9F = 0;
            }
            if (!(kracko->obj2.base.counter & 3))
            {
                sub_080DEA94(kracko, 0);
                kracko->obj2.unk9F = 1;
            }
            kracko->obj2.base.objBase55 = gUnk_0835681B[kracko->obj2.base.counter & 3];
        }
        ++kracko->obj2.base.counter;
    }
}

struct Object4 *sub_080DCF18(struct Kracko *kracko)
{
    struct Task *t = TaskCreate(sub_080DD044, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *tmp = TaskGetStructPtr(t), *obj4 = tmp;

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = kracko->obj2.base.x;
    obj4->y = kracko->obj2.base.y;
    obj4->parent = kracko;
    obj4->roomId = kracko->obj2.base.roomId;
    sub_080709F8(obj4, &obj4->sprite, 0x30, 0x339, 9, 0x19);
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x33B, 1);
    obj4->unk8 = obj4->sprite.unk1F;
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x33A, 1);
    obj4->unk4 = obj4->sprite.unk1F;
    return obj4;
}

void sub_080DD044(void)
{
    struct Sprite sprite;
    struct Object4 *tmp;
    struct Object4 *obj4;
    struct Kracko *kracko;
    bool32 r8 = FALSE;

    tmp = TaskGetStructPtr(gCurTask);
    obj4 = tmp;
    kracko = obj4->parent;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kracko->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x30, &obj4->sprite);
        if (!obj4->sprite.unk1F) r8 = TRUE;
        Macro_081050E8(obj4, &obj4->sprite, 0x33B, !obj4->sprite.unk1F);
        if (r8)
        {
            obj4->unk8 = obj4->sprite.unk1F;
            obj4->sprite.unk1F = 0;
            Macro_081050E8(obj4, &obj4->sprite, 0x33A, 1);
            obj4->unk4 = obj4->sprite.unk1F;
            obj4->sprite.unk1F = obj4->unk8;
        }
        if (!obj4->sprite.unk1F)
        {
            obj4->unk8 = 0;
            obj4->unk4 = 0;
        }
        if (Macro_0810B1F4(&kracko->obj2.base) && !(kracko->obj2.base.flags & 0x2000))
        {
            obj4->sprite.unk1F = obj4->unk8;
            obj4->sprite.unk8 &= ~0x800;
            sub_0803DBC8(obj4);
            obj4->sprite.unk1F = obj4->unk4;
            obj4->sprite.unk8 |= 0x800;
            sub_0803DBC8(obj4);
            return;
        }
        obj4->x = kracko->obj2.base.x;
        obj4->y = kracko->obj2.base.y;
        obj4->objBase54 = kracko->obj2.base.objBase54;
        obj4->objBase55 = kracko->obj2.base.objBase55;
        switch (kracko->obj2.unk83)
        {
        case 0:
            obj4->flags |= 4;
            obj4->sprite.unk1A = 0xA;
            break;
        case 2:
            obj4->sprite.unk1A = 0x12;
            break;
        case 1:
        default:
            obj4->flags |= 4;
            obj4->sprite.unk1A = 9;
            break;
        }
        Macro_080FC150(obj4);
        obj4->sprite.unk8 &= ~0x800;
        obj4->sprite.unk1F = obj4->unk8;
        if (!(obj4->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId)
        {
            obj4->sprite.unk10 += gUnk_0203AD18[0];
            obj4->sprite.unk12 += gUnk_0203AD18[1];
            Macro_0803DBC8(obj4, &obj4->sprite);
        }
        obj4->sprite.unk8 |= 0x800;
        obj4->sprite.unk1F = obj4->unk4;
        obj4->sprite.unk10 = ((obj4->x + kracko->obj2.base.objBase54 * 0x100) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
        obj4->sprite.unk12 = ((obj4->y + kracko->obj2.base.objBase55 * 0x100) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
        if (!(obj4->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId)
        {
            obj4->sprite.unk10 += gUnk_0203AD18[0];
            obj4->sprite.unk12 += gUnk_0203AD18[1];
            Macro_0803DBC8(obj4, &obj4->sprite);
        }
    }
}
