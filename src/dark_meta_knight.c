#include "dark_meta_knight.h"
#include "object.h"
#include "functions.h"
#include "kirby.h"
#include "save.h"
#include "malloc_vram.h"
#include "constants/kirby.h"

static void sub_080F5A6C(struct DarkMetaKnight *);
static void sub_080F5DA0(struct DarkMetaKnight *);
static void sub_080F6454(struct DarkMetaKnight *);
static void sub_080F6544(struct DarkMetaKnight *);
static void sub_080F6728(struct DarkMetaKnight *);
static void sub_080F6824(struct DarkMetaKnight *);
static void sub_080F6AEC(struct DarkMetaKnight *, u8);
static void sub_080F6ED8(struct DarkMetaKnight *);
static void sub_080F704C(struct DarkMetaKnight *);
static void sub_080F714C(struct DarkMetaKnight *);
static void sub_080F77D0(struct DarkMetaKnight *);
static void sub_080F7950(struct DarkMetaKnight *);
static void sub_080F7B34(struct DarkMetaKnight *);
static void sub_080F7CD8(struct DarkMetaKnight *);
static void sub_080F7D4C(struct DarkMetaKnight *);
static void sub_080F7DB8(struct DarkMetaKnight *);
static void sub_080F8204(struct DarkMetaKnight *);
static void sub_080F8300(struct DarkMetaKnight *);
static void sub_080F8490(struct DarkMetaKnight *);
static void sub_080F850C(struct DarkMetaKnight *);
static void sub_080F87C8(struct DarkMetaKnight *);
static void sub_080F88C0(struct DarkMetaKnight *);
static void sub_080F8B70(struct DarkMetaKnight *);
static void sub_080F8C84(struct DarkMetaKnight *);
static void sub_080F8FD0(struct DarkMetaKnight *);
static void sub_080F90CC(struct DarkMetaKnight *);
static void sub_080F9310(struct DarkMetaKnight *);
static void sub_080F93E0(struct DarkMetaKnight *);
static void sub_080F95D4(struct DarkMetaKnight *);
static void sub_080F96B4(struct DarkMetaKnight *);
static void sub_080F9DA8(struct DarkMetaKnight *);
static void sub_080F9E18(struct DarkMetaKnight *);
static void sub_080FA048(struct DarkMetaKnight *);
static void sub_080FA0BC(struct DarkMetaKnight *);
static void sub_080FA2EC(struct DarkMetaKnight *);
static void sub_080FA4AC(struct DarkMetaKnight *);
static void sub_080FA5C0(struct DarkMetaKnight *);
static void sub_080FA70C(struct DarkMetaKnight *);
static void sub_080FA82C(struct DarkMetaKnight *);
static void sub_080FB000(struct DarkMetaKnight *);
static void sub_080FB0C4(struct DarkMetaKnight *);
static void sub_080FB1CC(struct DarkMetaKnight *);
static void sub_080FB2CC(struct DarkMetaKnight *);
static void sub_080FB504(struct DarkMetaKnight *);
static void sub_080FB694(struct DarkMetaKnight *);
static void sub_080FB700(struct DarkMetaKnight *);
static struct ObjectBase *sub_080FBFE8(struct DarkMetaKnight *);
static void sub_080FC150(void);
static struct Object4 *sub_080FC5F8(struct DarkMetaKnight *);
static void sub_080FC6D4(void);
static void sub_080FC9C8(struct DarkMetaKnight *);
static void sub_080FCA94(void);
static void sub_080FCD98(struct DarkMetaKnight *);
static void sub_080FCE70(void);
static void sub_080FD194(struct DarkMetaKnight *);
static void sub_080FD26C(void);
static struct ObjectBase *sub_080FD590(struct DarkMetaKnight *);
static void sub_080FD6BC(void);
static struct Object4 *sub_080FD8B4(struct DarkMetaKnight *);
static void sub_080FD9AC(void);
static void sub_080FDC68(struct DarkMetaKnight *, struct Kirby *, u8);
static void sub_080FDF78(void);
static void sub_080FE1D0(struct DarkMetaKnight *);
static void sub_080FE2AC(void);
static void sub_080FE5CC(struct DarkMetaKnight *, u8);
static void sub_080FE76C(void);
static void sub_080FE954(struct ObjectBase *, u8);
static void sub_080FEA70(void);
static void sub_080FEEC0(struct ObjectBase *, u8);
static void sub_080FEFB0(void);
static struct Object4 *sub_080FF3F4(struct ObjectBase *, u8);
static void sub_080FF5B0(void);
static void sub_080FFBC0(struct DarkMetaKnight *);
static void sub_080FFC68(void);
static void sub_080FFEF4(struct DarkMetaKnight *);
static void sub_080FFF2C(struct DarkMetaKnight *);
static void sub_080FFF60(struct DarkMetaKnight *);
static void sub_080FFF84(struct DarkMetaKnight *);
static void sub_080FFFA0(struct DarkMetaKnight *);
static void sub_080FFFB8(struct DarkMetaKnight *, u8);
static void sub_080FFFE8(struct DarkMetaKnight *);
static void sub_08100048(struct DarkMetaKnight *);
static void sub_08100094(struct DarkMetaKnight *);
static void sub_081000C0(struct DarkMetaKnight *);
static void sub_081000F0(struct DarkMetaKnight *);
static void sub_0810010C(struct DarkMetaKnight *);
static void sub_08100170(struct Task *);
static void sub_081001A4(struct Task *);
static void sub_081001D8(struct Task *);

static const struct Unk_02021590 gUnk_083570EC[] = {
    { 0x391, 0,    0 },
    { 0x391, 1,    0 },
    { 0x391, 2,    0 },
    { 0x391, 3,    0 },
    { 0x391, 4,    0 },
    { 0x391, 5,    0 },
    { 0x391, 6,    0 },
    { 0x391, 7,    0 },
    { 0x391, 8,    0 },
    { 0x391, 9,    0 },
    { 0x391, 0xA,  0 },
    { 0x391, 0xB,  0 },
    { 0x391, 0xC,  0 },
    { 0x391, 0xD,  0 },
    { 0x391, 0xE,  0 },
    { 0x391, 0xF,  0 },
    { 0x391, 0x10, 0 },
    { 0x391, 0x11, 0 },
    { 0x391, 0x12, 0 },
    { 0x391, 0x13, 0 },
    { 0x391, 0x14, 0 },
    { 0x391, 0x15, 0 },
    { 0x391, 0x16, 0 },
    { 0x391, 0x17, 0 },
    { 0x391, 0x18, 0 },
    { 0x391, 5,    0 },
    { 0x391, 0x1A, 0 },
    { 0x391, 0x1B, 0 },
    { 0x391, 0x20, 0 },
    { 0x391, 0x21, 0 },
    { 0x391, 0xB,  0 },
    { 0 },
    { 0x391, 0x1C, 0 },
    { 0x391, 0x1D, 0 },
    { 0 },
    { 0 },
    { 0 },
    { 0 },
    { 0 },
    { 0 },
    { 0x391, 0x1E, 0 },
    { 0x391, 0x1F, 0 },
    { 0x3A1, 0,    0 },
    { 0x3A1, 2,    0 },
};

static const struct Unk_08357260 gUnk_0835719C[] = {
    { 0xFFFF, 2, 2 }, 
    { 0 }
};

static const s16 gUnk_083571A4[] = { 0x300, 0x200, 0x100, 0x80, -0x80, -0x100, -0x200, -0x300 };

static const s16 gUnk_083571B4[] = { 0x200, -0x200, 0x200, -0x200 };

static const s8 gUnk_083571BC[] = { 2, -2, 2, -2 };

static const s32 gUnk_083571C0[][2] = {
    { 0x11800, 0x118FF },
    { 0x10800, 0x118FF },
    { 0xF400,  0x118FF },
    { 0xE800,  0x118FF },
};

void *CreateDarkMetaKnight(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct DarkMetaKnight), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct DarkMetaKnight *tmp, *dmk = TaskGetStructPtr(t, tmp), *dmk2 = dmk;
    u8 unk65E;

    InitObject(&dmk->obj2, template, a2);
    dmk->obj2.base.unkC |= 1;
    dmk->obj2.base.flags |= 0x2000000;
    dmk->obj2.base.flags |= 0x200;
    dmk->unkC0 = 0;
    dmk->unkC1 = 0;
    dmk->unkC2 = 0;
    dmk->unkC3 = 0;
    dmk->unkC4 = 0;
    dmk->unkC5 = 0;
    dmk->unkC6 = 0;
    dmk->unkC7 = 0;
    dmk->unkCA = 0;
    dmk->unkC9 = 0;
    dmk->unkC8 = 0;
    dmk->unkCC = dmk->obj2.unk80;
    dmk->unkB8 = NULL;
    dmk->unkBC = NULL;
    dmk->obj2.base.flags |= 1;
    dmk->obj2.base.flags |= 0x40;
    dmk->obj2.base.unk5C &= ~7;
    dmk->obj2.base.unk5C |= 3;
    dmk->obj2.base.unk5C |= 0x1080A0;
    sub_0803E2B0(&dmk->obj2.base, -8, -8, 8, 6);
    sub_0803E308(&dmk->obj2.base, -10, -6, 10, 6);
    ObjectInitSprite(&dmk->obj2);
    unk65E = gCurLevelInfo[dmk->obj2.base.unk56].unk65E;
    sub_08002A44(unk65E, sub_08002A0C(unk65E), 0);
    sub_08002A1C(unk65E, 0);
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId && !(gUnk_0203AD20 & 4))
        m4aSongNumStartOrChange(sub_08002A0C(unk65E));
    dmk->obj2.unk9E = 0;
    dmk->obj2.unk7C = sub_080FB504;
    sub_080FFF60(dmk);
    dmk2->unkB4 = sub_080FBFE8(dmk);
    return dmk;
}

static void sub_080F5974(struct DarkMetaKnight *dmk)
{
    dmk->obj2.kirby3 = sub_0803D368(&dmk->obj2.base);
    dmk->obj2.base.flags |= 4;
    if (!(dmk->obj2.kirby3->base.base.base.unkC & 0x8000)
        && dmk->obj2.base.roomId == dmk->obj2.kirby3->base.base.base.roomId
        && sub_08039430(&dmk->obj2.kirby3->base.base, dmk->obj2.base.x, dmk->obj2.base.y, dmk->obj2.object->unk1A, dmk->obj2.object->unk1C, dmk->obj2.object->unk1E, dmk->obj2.object->unk20))
    {
        Macro_081003EC(&dmk->obj2, &dmk->obj2.kirby3->base.base.base);
        if (dmk->obj2.object->subtype1)
            sub_080F5A6C(dmk);
        else
            sub_080F704C(dmk);
    }
}

static void sub_080F5A6C(struct DarkMetaKnight *dmk)
{
    struct Sprite sprite;
    u8 i, j = 0;
    struct DarkMetaKnight *dmk2 = dmk;
    u32 *pointer;

    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        struct Kirby *kirby = gKirbys + i;

        if (kirby->hp > 0 && kirby->base.base.base.roomId == dmk->obj2.base.roomId)
        {
            sub_0804BAD8(kirby);
            if (kirby->ability != KIRBY_ABILITY_UFO)
                kirby->unkD4 = 11;
            else
                kirby->unkD4 = 37;
            kirby->base.base.base.xspeed = 0x100;
            kirby->base.base.base.flags &= ~1;
            kirby->base.base.base.x = gUnk_083571C0[j][0];
            kirby->base.base.base.y = gUnk_083571C0[j][1];
            ++j;
            gCurLevelInfo[kirby->base.base.base.unk56].unk1EC = 3;
            gCurLevelInfo[kirby->base.base.base.unk56].unkC = gUnk_083571C0[0][0] - 0x6C00;
            gCurLevelInfo[kirby->base.base.base.unk56].unk10 = gUnk_083571C0[0][1] - 0x8000;
        }
    }
    gUnk_0203AD10 |= 0x80;
    pointer = sub_08002888(1, 10 ,0);
    if (*pointer)
        sub_080F6AEC(dmk, 1);
    else
    {
        *pointer = 1;
        m4aSongNumStartOrChange(24);
        ObjectSetFunc(dmk, 0x1F, sub_080F5DA0);
        dmk->obj2.base.x = 0x1C000;
        dmk->obj2.base.y = 0x119FF;
        dmk->obj2.base.xspeed = 0;
        dmk->obj2.base.yspeed = 0;
        dmk->obj2.base.flags &= ~0x40;
        dmk->obj2.unk9F = 0;
        dmk->obj2.unk9E = 0;
        if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
        {
            SpriteSomething(&sprite, 0x6000000, 0x394, 1, 0xFF, 0, 0, 0, 0, 0x10, dmk->obj2.base.sprite.unk1F & 0xF, 0x80000);
            SpriteSomething(&sprite, 0x6000000, 0x394, 3, 0xFF, 0, 0, 0, 0, 0x10, dmk2->unkB4->sprite.unk1F & 0xF, 0x80000);
        }
        dmk->obj2.unk9F = 0x36;
    }
}

static void sub_080F5CD0(struct DarkMetaKnight *dmk)
{
    if (!Macro_0810B1F4(&dmk->obj2.base))
    {
        if (dmk->unkC7)
        {
            if (!--dmk->unkC7)
                sub_080F6AEC(dmk, 0);
        }
        else
        {
            u8 i;
            struct Kirby *kirby;
            struct Unk_02022930_0 *pointer;

            for (i = 0; i < gUnk_0203AD44; ++i)
            {
                kirby = gKirbys + i;
                if (kirby->hp > 0
                    && kirby->base.base.base.roomId == dmk->obj2.base.roomId
                    && kirby->unk11A & 8)
                {
                    pointer = sub_0803C83C(5, dmk->obj2.base.roomId);
                    pointer->unk0 = 1;
                    pointer->unkA = 0x800;
                    pointer->unk2 = 0x20;
                    pointer->unk4 = 0xFFFF;
                    pointer->unk6 = 0x3FFF;
                    dmk->unkC7 = 8;
                }
            }
        }
    }
}

static void sub_080F5DA0(struct DarkMetaKnight *dmk)
{
    u8 i;
    struct Kirby *kirby;
    struct DarkMetaKnight *dmk2 = dmk;

    if (dmk->obj2.unk9F) --dmk->obj2.unk9F;
    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        kirby = gKirbys + i;
        if (kirby->hp > 0 && kirby->base.base.base.roomId == dmk->obj2.base.roomId)
        {
            if (!dmk->obj2.unk9F)
            {
                if (kirby->base.base.base.xspeed < 0x40)
                {
                    kirby->unkD4 = 0;
                    kirby->base.base.base.xspeed = 0;
                }
            }
            else
            {
                kirby->base.base.base.flags |= 4;
                kirby->base.base.base.xspeed = 0x100;
            }
            if (dmk->obj2.unk9F < 0x18)
            {
                struct LevelInfo *li = &gCurLevelInfo[kirby->base.base.base.unk56];

                li->unk662 += 0x18;
                if (li->unk662 > 0x180) li->unk662 = 0x180;
                li->unkC += li->unk662;
                if (li->unkC > 0xF800) li->unkC = 0xF800;
            }
        }
    }
    switch (dmk->obj2.unk83)
    {
    case 0x1F:
        dmk->obj2.base.flags |= 4;
        if (++dmk->obj2.unk9E > 0xB4)
        {
            dmk->obj2.unk83 = 0x20;
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.unk9E = 0;
        }
        if (dmk->obj2.unk9E == 0xC)
        {
            u32 *pointer = sub_08002888(2, 0x13, 0);

            if (*pointer) dmk->obj2.unk7C = sub_080F5CD0;
            *pointer = 1;
            if (!(gUnk_0203AD10 & 0x10))
            {
                if (gUnk_0203AD10 & 2 && gUnk_0203AD3C != gUnk_0203AD24)
                    sub_08031CE4(8);
                else
                    sub_0800ACD4(1, gUnk_0203AD48 > 2 ? 0 : gUnk_0203AD48);
            }
        }
        break;
    case 0x20:
        if (dmk->obj2.base.unk1 == 0xE)
            dmk2->unkBC = sub_080FC5F8(dmk);
        if (dmk->obj2.base.unk1 == 0x2A)
        {
            dmk->obj2.unk83 = 2;
            dmk->obj2.unk9E = 0;
            dmk->obj2.base.xspeed = -0x80;
        }
        break;
    case 2:
        dmk->obj2.base.flags |= 4;
        if (++dmk->obj2.unk9E > 0x40)
        {
            m4aSongNumStop(24);
            dmk2->unkB8 = sub_080FD8B4(dmk);
            dmk->obj2.unk9E = 0;
            dmk->obj2.unk83 = 0;
            dmk->obj2.unk9E = 0; // duh
            dmk->obj2.base.xspeed = 0;
            PlaySfx(&dmk->obj2.base, 535);
            return;
        }
        break;
    case 0:
        if (++dmk->obj2.unk9E > 0x38)
        {
            sub_080FFEF4(dmk);
            return;
        }
        break;
    }
    if (dmk->obj2.unk85 > 0x96)
    {
        if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
        {
            sub_0803CD98(dmk->obj2.base.sprite.unk1F, 0x394, 1, 0x390, 0, dmk->obj2.base.counter);
            sub_0803CD98(dmk2->unkB4->sprite.unk1F, 0x394, 3, 0x391, 0, dmk->obj2.base.counter);
        }
        dmk->obj2.base.counter += 2;
        if (dmk->obj2.base.counter > 0x100)
            dmk->obj2.base.counter = 0x100;
    }
    else
        ++dmk->obj2.unk85;
}

static void sub_080F6104(struct DarkMetaKnight *dmk)
{
    u8 i;

    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        struct Kirby *kirby = gKirbys + i;
        struct LevelInfo *li = gCurLevelInfo + kirby->base.base.base.unk56;

        if (kirby->hp > 0 && kirby->base.base.base.roomId == dmk->obj2.base.roomId)
        {
            li->unk662 += 0x80;
            li->unk664 += 0x80;
            if (li->unk662 > 0x500) li->unk662 = 0x500;
            if (li->unk664 > 0x400) li->unk664 = 0x400;
            li->unkC -= li->unk662;
            li->unk10 -= li->unk664;
            if (li->unkC < 0x4800) li->unkC = 0x4800;
            if (li->unk10 < 0x800) li->unk10 = 0x800;
            if (!dmk->obj2.unk85 && li->unk10 < 0x6000)
            {
                dmk->obj2.unk85 = 1;
                dmk->obj2.unk83 = 0x28;
                dmk->obj2.base.x = 0x6000;
                dmk->obj2.base.y = 0x4000;
                dmk->obj2.base.flags ^= 1;
                return;
            }
        }
    }
    switch (dmk->obj2.unk85)
    {
    case 1:
        if (!--dmk->obj2.base.counter)
        {
            dmk->obj2.unk83 = 0x29;
            dmk->obj2.unk85 = 2;
            dmk->obj2.base.counter = 8;
            PlaySfx(&dmk->obj2.base, 452);
        }
        break;
    case 2:
        if (dmk->obj2.base.flags & 2
            && !--dmk->obj2.base.counter)
            sub_080FFF2C(dmk);
        break;
    }
}

static void sub_080F6300(struct DarkMetaKnight *dmk)
{
    u8 i;
    bool32 sp = TRUE;

    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        struct Kirby *kirby = gKirbys + i;
        struct LevelInfo *li = gCurLevelInfo + kirby->base.base.base.unk56;

        if (kirby->hp > 0 && kirby->base.base.base.roomId == dmk->obj2.base.roomId)
        {
            li->unk662 += 0x100;
            li->unk664 += 0x100;
            if (li->unk662 > 0xA00) li->unk662 = 0xA00;
            if (li->unk664 > 0x800) li->unk664 = 0x800;
            li->unkC += li->unk662;
            li->unk10 += li->unk664;
            if (li->unkC >= 0xF800)
                li->unkC = 0xF800;
            else
                sp = FALSE;
            if (li->unk10 >= 0x9800)
                li->unk10 = 0x9800;
            else
                sp = FALSE;
            if (!dmk->obj2.unk85 && li->unk10 > 0x4A00)
            {
                dmk->obj2.unk85 = 1;
                dmk->obj2.unk83 = 0;
                dmk->obj2.base.flags ^= 1;
                dmk->obj2.base.x = 0x1B300;
                dmk->obj2.base.y = 0x119FF;
                return;
            }
        }
    }
    if (sp) sub_080F6454(dmk);
}

static void sub_080F6454(struct DarkMetaKnight *dmk)
{
    u8 i;

    ObjectSetFunc(dmk, 0, sub_080F6544);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    dmk->obj2.base.flags &= ~0x40;
    dmk->obj2.base.counter = 0;
    dmk->obj2.unk9E = 0;
    dmk->obj2.unk9F = 0x38;
    dmk->obj2.unk85 = 0;
    dmk->obj2.base.x = 0x1B300;
    dmk->obj2.base.y = 0x119FF;
    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        struct Kirby *kirby = gKirbys + i;
        struct LevelInfo *li = gCurLevelInfo + kirby->base.base.base.unk56;

        if (kirby->hp > 0 && kirby->base.base.base.roomId == dmk->obj2.base.roomId)
        {
            li->unk662 = 0;
            li->unk664 = 0;
            li->unkC = 0xF800;
            li->unk10 = 0x9800;
        }
    }
    m4aMPlayFadeIn(&gUnk_030016A0, 8);
}

static void sub_080F6544(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    switch (dmk->obj2.unk85)
    {
    case 0:
        if (!--dmk->obj2.unk9F)
        {
            dmk->obj2.unk85 = 1;
            dmk->obj2.unk83 = 0xB;
            dmk->obj2.base.xspeed = 0xA0;
            dmk->obj2.base.yspeed = 0x280;
        }
        break;
    case 1:
        if (dmk->obj2.base.yspeed < 0x40)
        {
            dmk->obj2.unk83 = 0xC;
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.unk85 = 2;
        }
        break;
    case 2:
        if (dmk->obj2.base.flags & 2)
        {
            dmk->obj2.unk83 = 0xD;
            dmk->obj2.unk85 = 3;
        }
        break;
    case 3:
        if (dmk->obj2.base.unk62 & 4)
        {
            if (dmk->obj2.unk83 == 0xD)
            {
                PlaySfx(&dmk->obj2.base, 536);
                dmk->obj2.unk83 = 0xE;
            }
            else if (dmk->obj2.unk83 == 0xE)
            {
                if (++dmk->obj2.unk9E > 0x10)
                    dmk->obj2.unk83 = 0;
            }
            dmk->obj2.base.xspeed = 0;
            if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
            {
                sub_0803CD98(dmk->obj2.base.sprite.unk1F, 0x390, 0, 0x394, 0, dmk->obj2.base.counter);
                sub_0803CD98(dmk2->unkB4->sprite.unk1F, 0x391, 0, 0x394, 2, dmk->obj2.base.counter);
            }
            dmk->obj2.base.counter += 2;
            if (dmk->obj2.base.counter > 0x100)
            {
                dmk->obj2.base.counter = 0x100;
                sub_080F6728(dmk);
            }
        }
        break;
    }
}

static void sub_080F6728(struct DarkMetaKnight *dmk)
{
    struct Sprite sprite;

    ObjectSetFunc(dmk, 0, sub_080F6824);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    dmk->obj2.base.counter = 0x20;
    dmk->obj2.unk85 = 0;
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
    {
        SpriteSomething(&sprite, 0x6000000, 0x394, 0, 0xFF, 0, 0, 0, 0, 0x10, dmk->obj2.base.sprite.unk1F & 0xF, 0x80000);
        SpriteSomething(&sprite, 0x6000000, 0x394, 2, 0xFF, 0, 0, 0, 0, 0x10, dmk->unkB4->sprite.unk1F & 0xF, 0x80000);
    }
}

static void sub_080F6824(struct DarkMetaKnight *dmk)
{
    switch (dmk->obj2.unk85)
    {
    case 0:
        if (!--dmk->obj2.base.counter)
        {
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.unk83 = 0x17;
            dmk->obj2.unk85 = 1;
        }
        break;
    case 1:
        if (dmk->obj2.base.unk1 == 8 || dmk->obj2.base.unk1 == 0x16)
        {
            sub_080860A8(&dmk->obj2.base, gUnk_0835719C);
            PlaySfx(&dmk->obj2.base, 420);
        }
        if (dmk->obj2.base.flags & 2)
        {
            dmk->obj2.unk85 = 3;
            dmk->obj2.base.counter = 4;
        }
        break;
    case 3:
        if (!--dmk->obj2.base.counter)
        {
            dmk->obj2.unk85 = 4;
            dmk->obj2.unk9E = 2;
            dmk->obj2.base.xspeed = 0; // duh
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.unk83 = 0xB;
            dmk->obj2.base.xspeed = -0x100;
            dmk->obj2.base.yspeed = 0x300;
        }
        break;
    case 4:
        if (dmk->obj2.unk83 == 0xB)
        {
            if (dmk->obj2.base.yspeed < 0x40)
            {
                dmk->obj2.unk83 = 0x10;
                dmk->obj2.base.flags &= ~2;
                PlaySfx(&dmk->obj2.base, 534);
            }
        }
        else if (dmk->obj2.unk83 == 0x10)
        {
            if (!--dmk->obj2.unk9E)
            {
                dmk->obj2.unk83 = 0x11;
                dmk->obj2.base.yspeed = -0x200;
                dmk->obj2.base.xspeed = 0;
                dmk->obj2.unk7C = sub_080FB504;
            }
        }
        else if (dmk->obj2.unk83 == 0x11)
        {
            dmk->obj2.base.yspeed -= 0x66;
            if (dmk->obj2.base.yspeed < -0x900)
                dmk->obj2.base.yspeed = -0x900;
            if (dmk->obj2.base.unk62 & 4)
            {
                struct Unk_02022930_0 *pointer;

                dmk->obj2.base.counter = 8;
                dmk->obj2.unk83 = 0x12;
                sub_0808AE30(&dmk->obj2.base, 0, 0x2AD, 2);
                sub_0806FE64(1, &dmk->obj2.base);
                pointer = sub_0803C83C(5, dmk->obj2.base.roomId);
                pointer->unk0 = 1;
                pointer->unkA = 0x800;
                pointer->unk2 = 0x20;
                pointer->unk4 = 0xFFFF;
                pointer->unk6 = 0x3FFF;
            }
        }
        else
        {
            if (!--dmk->obj2.base.counter)
                sub_080F6AEC(dmk, 0);
        }
        break;
    }
}

static void sub_080F6AEC(struct DarkMetaKnight *dmk, u8 a2)
{
    struct Sprite sprite;
    u8 i, j = 0;

    ObjectSetFunc(dmk, 0, sub_080F6ED8);
    dmk->obj2.unk85 = 0;
    dmk->obj2.unk7C = sub_080FB504;
    if (dmk->unkB8) dmk->unkB8->flags |= 0x1000;
    if (dmk->unkBC) dmk->unkBC->flags |= 0x1000;
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
    {
        SpriteSomething(&sprite, 0x6000000, 0x394, 0, 0xFF, 0, 0, 0, 0, 0x10, dmk->obj2.base.sprite.unk1F & 0xF, 0x80000);
        SpriteSomething(&sprite, 0x6000000, 0x394, 2, 0xFF, 0, 0, 0, 0, 0x10, dmk->unkB4->sprite.unk1F & 0xF, 0x80000);
    }
    dmk->obj2.base.flags |= 1;
    dmk->obj2.base.flags &= ~8;
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    dmk->obj2.base.x = 0x1B300;
    dmk->obj2.base.y = 0x119FF;
    dmk->obj2.base.counter = 0x40;
    Macro_08100F18(&dmk->obj2);
    if (!a2)
    {
        struct Unk_02022930_0 *pointer = sub_0803C83C(5, dmk->obj2.base.roomId);

        pointer->unk0 = 1;
        pointer->unkA = 0xF800;
        pointer->unkC = 0x2000;
        pointer->unk1 = 0x20;
        pointer->unk2 = 0;
        pointer->unk4 = 0xFFFF;
        pointer->unk6 = 0x3FFF;
    }
    for (i = 0; i < gUnk_0203AD44; ++i)
    {
        struct Kirby *kirby = gKirbys + i;

        if (kirby->hp > 0 && kirby->base.base.base.roomId == dmk->obj2.base.roomId)
        {
            kirby->unkD4 = 0;
            kirby->base.base.base.xspeed = 0;
            kirby->base.base.base.yspeed = 0;
            kirby->base.base.base.x = gUnk_083571C0[j][0] + 0x3B00;
            kirby->base.base.base.y = gUnk_083571C0[j][1];
            ++j;
            gCurLevelInfo[kirby->base.base.base.unk56].unkC = 0xF800;
            gCurLevelInfo[kirby->base.base.base.unk56].unk10 = 0x9800;
        }
    }
    CreateObjTemplateAndObj(dmk->obj2.base.unk56, 1, 0x24, dmk->obj2.base.x >> 8, dmk->obj2.base.y >> 8, 0, 0x1F, 0, 0, OBJ_SCROLL_LOCK,
        0, 0, 0, 0x16, -500, -200, 1000, 400, 0, 0xF0A, 0xF09, 0, 0);
}

static void sub_080F6ED8(struct DarkMetaKnight *dmk)
{
    u8 i;

    if (!--dmk->obj2.base.counter)
    {
        dmk->obj2.unkA4 = gCurLevelInfo[dmk->obj2.kirby3->base.base.base.unk56].unk6C >> 8;
        dmk->obj2.unkA6 = gCurLevelInfo[dmk->obj2.kirby3->base.base.base.unk56].unk70 >> 8;
        dmk->obj2.unkA8 = gCurLevelInfo[dmk->obj2.kirby3->base.base.base.unk56].unk74 >> 8;
        dmk->obj2.unkAA = gCurLevelInfo[dmk->obj2.kirby3->base.base.base.unk56].unk78 >> 8;
        dmk->obj2.base.flags &= ~0x200;
        dmk->obj2.base.flags &= ~0x40;
        sub_080F7B34(dmk);
        gUnk_0203AD10 &= ~0x80;
        for (i = 0; i < gUnk_0203AD44; ++i)
        {
            struct Kirby *kirby = gKirbys + i;

            if (kirby->hp > 0 && kirby->base.base.base.roomId == dmk->obj2.base.roomId)
            {
                kirby->base.base.base.flags &= ~0x1000000;
                if (kirby->ability == KIRBY_ABILITY_SLEEP)
                    sub_080641FC(kirby);
                else if (kirby->ability == KIRBY_ABILITY_UFO)
                    sub_0806A798(kirby);
                else if (kirby->ability == KIRBY_ABILITY_CUPID)
                {
                    if (kirby->base.base.base.flags & 0x40)
                        sub_08047EF0(kirby);
                    else if (kirby->base.base.base.flags & 0x60)
                        sub_08044EA8(kirby);
                    else
                        sub_0803FE74(kirby);
                }
                else if (kirby->base.base.base.unk58 & 2)
                    sub_08059810(kirby);
                else if (kirby->base.base.base.flags & 0x60)
                    sub_08044EA8(kirby);
                else
                    sub_0803FE74(kirby);
            }
        }
    }
}

static void sub_080F704C(struct DarkMetaKnight *dmk)
{
    struct Sprite sprite;

    ObjectSetFunc(dmk, 0x1F, sub_080F714C);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    dmk->obj2.unk9E = 0;
    dmk->obj2.unk9F = 0;
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
    {
        SpriteSomething(&sprite, 0x6000000, 0x394, 1, 0xFF, 0, 0, 0, 0, 0x10, dmk->obj2.base.sprite.unk1F & 0xF, 0x80000);
        SpriteSomething(&sprite, 0x6000000, 0x394, 3, 0xFF, 0, 0, 0, 0, 0x10, dmk->unkB4->sprite.unk1F & 0xF, 0x80000);
    }
}

static void sub_080F714C(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    switch (dmk->obj2.unk83)
    {
    case 0x1F:
        dmk->obj2.base.flags |= 4;
        if (++dmk->obj2.unk9E > 0x5A)
        {
            dmk->obj2.unk83 = 0x20;
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.unk9E = 0;
        }
        break;
    case 0x20:
        if (dmk->obj2.base.unk1 == 0xE)
            sub_080FC5F8(dmk);
        if (dmk->obj2.base.flags & 2)
        {
            dmk->obj2.unk83 = 0x21;
            dmk->obj2.unk9E = 0;
            Macro_08100F18(&dmk->obj2);
        }
        break;
    case 0x21:
        dmk->obj2.base.flags |= 4;
        if (++dmk->obj2.unk9E > 0x5A)
        {
            dmk->obj2.base.flags &= ~0x200;
            dmk->obj2.base.flags &= ~0x40;
            sub_080F7B34(dmk);
            return;
        }
        break;
    }
    if (dmk->obj2.unk9F > 0x3C)
    {
        if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
        {
            sub_0803CD98(dmk->obj2.base.sprite.unk1F, 0x394, 1, 0x390, 0, dmk->obj2.base.counter);
            sub_0803CD98(dmk2->unkB4->sprite.unk1F, 0x394, 3, 0x391, 0, dmk->obj2.base.counter);
        }
        dmk->obj2.base.counter += 2;
        if (dmk->obj2.base.counter > 0x100)
            dmk->obj2.base.counter = 0x100;
    }
    else
        ++dmk->obj2.unk9F;
}

static void sub_080F738C(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    s8 r3;
    u8 r5 = 0, r1, r2;

    if (dmk->obj2.base.unk62 & 4)
    {
        r3 = Rand16() & 7;
        if (dmk->obj2.object->subtype1 && dmk2->unkC9)
        {
            if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
            {
                r1 = 1;
                r5 = 2;
            }
            else
            {
                r1 = 3;
                r5 = 1;
            }
            r2 = 1;
        }
        else
        {
            if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
            {
                r1 = 3;
                r2 = 1;
            }
            else
            {
                r1 = 4;
                r2 = 1;
            }
        }
        if ((r3 -= r2) < 0)
            sub_080FB1CC(dmk);
        else if ((r3 -= r1) < 0)
        {
            dmk2->unkC4 = 1;
            sub_080F8490(dmk);
        }
        else if ((r3 -= r5) < 0)
            sub_080FA2EC(dmk);
        else if ((r3 -= r2) < 0)
            sub_080F8B70(dmk);
    }
}

static void sub_080F7490(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    s8 r3;
    u8 r1, r2, r5, r6;

    r3 = Rand16() & 7;
    if (dmk->obj2.object->subtype1 && dmk2->unkC9)
    {
        if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
        {
            r2 = 3;
            r6 = 2;
            r1 = 1;
            r5 = 2;
        }
        else
        {
            r2 = 2;
            r6 = 1;
            r1 = 3;
            r5 = 1;
        }
    }
    else
    {
        if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
        {
            r2 = 4;
            r6 = 3;
            r1 = 1;
            r5 = 0;
        }
        else
        {
            r2 = 2;
            r6 = 1;
            r1 = 3;
            r5 = 0;
        }
    }
    if (dmk2->unkC8 > 6)
    {
        ++r2;
        ++r1;
    }
    if ((r3 -= r2) < 0)
        sub_080FFFB8(dmk, 0);
    else if ((r3 -= r1) < 0)
        sub_080FFFB8(dmk, 2);
    else if ((r3 -= r6) < 0)
        sub_080FFFB8(dmk, 1);
    else if ((r3 -= r5) < 0)
        sub_080FA2EC(dmk);
    else
        sub_080F8B70(dmk);
}

static void sub_080F75B4(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    u8 r2, r5, r6, r7 = 0;
    s8 r4 = Rand16() & 7;

    if (dmk2->unkC4)
    {
        dmk2->unkC4 = 0;
        sub_080F9310(dmk);
    }
    else if (dmk2->unkC3)
    {
        dmk2->unkC3 = 0;
        sub_080F95D4(dmk);
    }
    else
    {
        if (dmk->obj2.base.y > dmk->obj2.kirby3->base.base.base.y)
        {
            r5 = 0;
            r7 = 1;
            if (abs(dmk->obj2.base.x - dmk->obj2.kirby3->base.base.base.x) < 0x1400)
            {
                r6 = 4;
                r2 = 3;
            }
            else
            {
                r6 = 1;
                r2 = 6;
            }
        }
        else
        {
            if (abs(dmk->obj2.base.x - dmk->obj2.kirby3->base.base.base.x) < 0x1000)
            {
                r5 = 6;
                r6 = 0;
                r7 = 0;
                r2 = 0;
            }
            else
            {
                r5 = 0;
                r6 = 0;
                r7 = 2;
                r2 = 2;
            }
        }
        if (dmk2->unkC8 > 6)
            r5 += ((dmk2->unkC8 - 6) >> 1) + 1;
        if ((r4 -= r5) < 0)
            sub_080F9310(dmk);
        else if ((r4 -= r2) < 0)
            sub_080F87C8(dmk);
        else if ((r4 -= r6) < 0)
            sub_080F95D4(dmk);
        else if ((r4 -= r7) < 0)
            sub_080F8FD0(dmk);
    }
}

static void sub_080F76DC(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    u8 r1, r2, r3 = 0;
    s8 r5 = Rand16() & 7;

    if (dmk2->unkC4)
    {
        dmk2->unkC4 = 0;
        sub_080F9310(dmk);
    }
    else if (dmk2->unkC3)
    {
        dmk2->unkC3 = 0;
        sub_080F95D4(dmk);
    }
    else
    {
        if (abs(dmk->obj2.base.y - dmk->obj2.kirby3->base.base.base.y) < 0x1E00)
        {
            r1 = 0;
            r2 = 0;
            r3 = 8;
        }
        else if (abs(dmk->obj2.base.x - dmk->obj2.kirby3->base.base.base.x) < 0x1000)
        {
            r1 = 6;
            r2 = 0;
            r3 = 1;
        }
        else
        {
            r1 = 2;
            r2 = 0;
            r3 = 4;
        }
        if (dmk2->unkC8 > 6)
            ++r1;
        if ((r5 -= r1) < 0)
            sub_080F9310(dmk);
        else if ((r5 -= r2) < 0)
            sub_080F95D4(dmk);
        else if ((r5 -= r3) < 0)
            sub_080F8FD0(dmk);
    }
}

static void sub_080F77D0(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    u8 r1, r5 = 0, r7 = 0, ip = 0, sb = 0, r6 = 0, sl = 5;
    s8 r2 = Rand16() & 0xF;

    if (dmk->obj2.object->subtype1 && dmk2->unkC9)
    {
        if (dmk2->unkC0)
        {
            r1 = 6;
            r5 = 4;
            r7 = 2;
            sl = 4;
            dmk2->unkC0 = 0;
        }
        else if (dmk->obj2.kirby3->base.base.base.flags & 0x60)
        {
            sb = 3;
            r1 = 3;
            ip = 3;
            r6 = 3;
            r7 = 3;
            sl = 1;
        }
        else
        {
            r6 = 2;
            r1 = 4;
            r5 = 5;
        }
    }
    else if (dmk2->unkC0)
    {
        r1 = 10;
        r5 = 4;
        r7 = 2;
        dmk2->unkC0 = 0;
    }
    else if (dmk->obj2.kirby3->base.base.base.flags & 0x60)
    {
        sb = 3;
        ip = 3;
        r6 = 3;
        r1 = 4;
        r7 = 3;
    }
    else
    {
        r6 = 3;
        ip = 1;
        r1 = 6;
        r5 = 6;
    }
    if (dmk2->unkC8 > 6)
    {
        r5 += 2;
        r1 += 2;
    }
    if ((r2 -= r5) < 0)
        sub_080F8204(dmk);
    else if ((r2 -= r1) < 0)
        sub_080F8490(dmk);
    else if ((r2 -= r7) < 0)
        sub_080F7CD8(dmk);
    else if ((r2 -= ip) < 0)
        sub_080FFFA0(dmk);
    else if ((r2 -= sb) < 0)
    {
        sub_080F8490(dmk);
        dmk->obj2.base.xspeed = 0;
    }
    else if ((r2 -= r6) < 0)
        sub_080F7D4C(dmk);
    else if ((r2 -= sl) < 0)
        sub_080FA2EC(dmk);
}

static void sub_080F7950(struct DarkMetaKnight *dmk)
{
    s32 r0 = Rand16() & 0xF;
    s8 r1;
    u8 r0_2 = 2;

    if ((s8)(r0 -= 14) < 0) // fake, but I'm not able to stop it from using r1
       sub_080F95D4(dmk);
    else if (r1 = r0, r1 < 0) // dead code
    {
        dmk->unkC3 = 1;
        sub_080F8490(dmk);
    }
    else if ((r1 -= r0_2) < 0)
        sub_080F7CD8(dmk);
}

static void sub_080F79AC(struct DarkMetaKnight *dmk)
{
    u8 r0, r1 = 0, r4 = 0; // init r1 for matching
    s8 r3 = Rand16() & 7;

    if (dmk->obj2.base.y - 0x4000 > dmk->obj2.kirby3->base.base.base.y)
    {
        r0 = 8;
        r1 = 0;
    }
    else if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
    {
        r0 = 3;
        r1 = 2;
        r4 = 3;
    }
    else
    {
        r0 = 3;
        r1 = 4;
        r4 = 1;
    }
    if ((r3 -= r0) < 0)
        dmk->unkCA = 2;
    else if ((r3 -= r1) < 0)
        dmk->unkCA = 0;
    else if ((r3 -= r4) < 0)
        dmk->unkCA = 1;
}

static void sub_080F7A60(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    s8 r1 = Rand16() & 0xF;
    u8 r2, r4, r5, r6, ip;

    if (dmk->obj2.object->subtype1)
    {
        if (dmk2->unkC9)
        {
            r6 = 4;
            r5 = 5;
            r2 = 3;
            r4 = 2;
            ip = 2;
        }
        else
        {
            r6 = 0;
            r5 = 6;
            r2 = 4;
            r4 = 4;
            ip = 2;
        }
    }
    else
    {
        r6 = 0;
        r5 = 4;
        r2 = 2;
        r4 = 8;
        ip = 2;
    }
    if (dmk2->unkC8 > 6)
    {
        r2 += 2;
        r5 += 2;
    }
    if ((r1 -= r4) < 0)
        sub_080F7B34(dmk);
    else if ((r1 -= r2) < 0)
        sub_080F8204(dmk);
    else if ((r1 -= r5) < 0)
        sub_080F8490(dmk);
    else if ((r1 -= r6) < 0)
        sub_080FA2EC(dmk);
    else if ((r1 -= ip) < 0)
        sub_080F8B70(dmk);
}

static void sub_080F7B34(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    dmk2->unkC2 = 0;
    if (dmk->obj2.unk78 != sub_080FB2CC)
        dmk2->unkCC = dmk->obj2.unk80;
    ObjectSetFunc(dmk, 2, sub_080F7DB8);
    dmk->obj2.kirby3 = sub_0803D368(&dmk->obj2.base);
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    dmk->obj2.base.xspeed = 0x100;
    dmk->obj2.base.yspeed = 0;
    if (RandLessThan3())
    {
        if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
        {
            u16 r = (Rand32(), Rand16()); // duh

            dmk->obj2.base.counter = (r & 0x3F) + ((r & 0xF) + 0x30);
        }
        else
        {
            dmk->obj2.base.counter = (Rand16() & 0x3F) + 0x18;
        }
    }
    else
    {
        dmk->obj2.base.counter = (Rand16() & 0xF) + 0x8;
    }
    if (dmk->obj2.base.flags & 1)
    {
        dmk->obj2.unkA0 = (dmk->obj2.kirby3->base.base.base.x + 0x3000) >> 8;
        dmk2->unkC1 = 0;
    }
    else
    {
        dmk->obj2.unkA0 = (dmk->obj2.kirby3->base.base.base.x - 0x3000) >> 8;
        dmk2->unkC1 = 1;
    }
    if (dmk->obj2.base.x < dmk->obj2.unkA0 * 0x100)
        dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
    dmk2->unkC0 = 0;
    dmk->obj2.unk9F = 0;
    dmk->obj2.unk9E = 0;
}

static void sub_080F7CD8(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    dmk2->unkC2 = 0;
    if (dmk2->unkC1)
    {
        dmk->obj2.unkA0 = (dmk->obj2.kirby3->base.base.base.x - 0x3000) >> 8;
        dmk2->unkC1 = 1;
    }
    else
    {
        dmk->obj2.unkA0 = (dmk->obj2.kirby3->base.base.base.x + 0x3000) >> 8;
        dmk2->unkC1 = 0;
    }
    dmk->obj2.unk9F = 0;
    dmk2->unkC0 = 0;
    dmk->obj2.unk9E = 0;
}

static void sub_080F7D4C(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    dmk2->unkC2 = 0;
    if (dmk->obj2.base.flags & 1)
    {
        dmk->obj2.unkA0 = (dmk->obj2.kirby3->base.base.base.x + 0x3000) >> 8;
        dmk2->unkC1 = 0;
    }
    else
    {
        dmk->obj2.unkA0 = (dmk->obj2.kirby3->base.base.base.x - 0x3000) >> 8;
        dmk2->unkC1 = 1;
    }
    dmk->obj2.base.counter = 0x24;
    dmk->obj2.unk9F = 0;
    dmk2->unkC0 = 0;
    dmk->obj2.unk9E = 0;
}

static void sub_080F7DB8(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    // dead code
    dmk->obj2.base.unk3E = dmk->obj2.base.unk3E;
    dmk->obj2.base.unk3C = dmk->obj2.base.unk3C;
    ObjXSomething(&dmk->obj2);
    if (dmk2->unkC2)
        dmk->obj2.unkA0 = dmk->obj2.kirby3->base.base.base.x >> 8;
    else if (dmk2->unkC1)
        dmk->obj2.unkA0 = (dmk->obj2.kirby3->base.base.base.x - 0x3000) >> 8;
    else
        dmk->obj2.unkA0 = (dmk->obj2.kirby3->base.base.base.x + 0x3000) >> 8;
    if (!(dmk->obj2.unk9F & 0xF))
    {
        if (abs(dmk->obj2.base.x - dmk->obj2.kirby3->base.base.base.x) < 0x1C00 || dmk2->unkC2)
        {
            dmk->obj2.unk83 = 2;
            if (dmk->obj2.subtype)
                dmk->obj2.base.xspeed = 0x180;
            else
                dmk->obj2.base.xspeed = 0x100;
        }
        else
        {
             dmk->obj2.unk83 = 3;
            if (dmk->obj2.subtype)
                dmk->obj2.base.xspeed = 0x260;
            else
                dmk->obj2.base.xspeed = 0x200;
        }
        if (dmk->obj2.base.x > dmk->obj2.unkA0 * 0x100)
        {
            if (dmk->obj2.unk83 == 3)
                dmk->obj2.base.flags |= 1;
            dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        }
        else
        {
            if (dmk->obj2.unk83 == 3)
                dmk->obj2.base.flags &= ~1;
        }
        if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
            dmk->obj2.base.flags |= 1;
        else
            dmk->obj2.base.flags &= ~1;
        if (abs((dmk->obj2.base.x >> 8) - dmk->obj2.unkA0) < 3)
            dmk->obj2.base.xspeed = 0;
    }
    if (abs((dmk->obj2.base.x >> 8) - dmk->obj2.unkA0) < 4)
        dmk->obj2.base.xspeed = 0;
    ++dmk->obj2.unk9F;
    if (dmk2->unkC0)
        dmk->obj2.unk9F = 1;
    if (dmk->obj2.base.unk62 & 3)
    {
        if (!dmk2->unkC0)
        {
            if (dmk->obj2.base.unk62 & 2)
            {
                if (dmk->obj2.base.flags & 1)
                    dmk->obj2.base.xspeed = -0x100;
                else
                    dmk->obj2.base.xspeed = 0x100;
            }
            else if (dmk->obj2.base.unk62 & 1)
            {
                if (dmk->obj2.base.flags & 1)
                    dmk->obj2.base.xspeed = 0x100;
                else
                    dmk->obj2.base.xspeed = -0x100;
            }
            dmk->obj2.base.counter = (Rand16() & 0x1F) + 0x1E;
        }
        dmk2->unkC0 = 1;
        dmk->obj2.unk9F = 1;
    }
    if (dmk2->unkC2)
    {
        if (abs(dmk->obj2.base.x - dmk->obj2.kirby3->base.base.base.x) < 0x600)
        {
            sub_080F7950(dmk);
            return;
        }
    }
    if (!dmk->obj2.base.xspeed)
    {
        if (dmk->obj2.base.unk48 == dmk->obj2.base.x)
            ++dmk->obj2.unk9E;
        else
            dmk->obj2.unk9E = 0;
    }
    else
        dmk->obj2.base.flags |= 4;
    if (dmk->obj2.unk9E)
    {
        if (dmk->obj2.object->subtype1)
        {
            if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
                ++dmk->obj2.unk9E;
        }
        else
        {
            if (dmk->obj2.unk80 < (gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1) - (gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 2))
                ++dmk->obj2.unk9E;
        }
    }
    if (!--dmk->obj2.base.counter || dmk->obj2.unk9E > 0x1E || dmk2->unkCC - dmk->obj2.unk80 > 0xC)
        sub_080F77D0(dmk);
}

static void sub_080F8204(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 4, sub_080F8300);
    dmk->obj2.kirby3 = sub_0803D368(&dmk->obj2.base);
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    if (dmk->obj2.object->subtype1)
        dmk->obj2.base.xspeed = 0x340;
    else
        dmk->obj2.base.xspeed = 0x260;
    dmk->obj2.base.yspeed = 0;
    if (dmk->obj2.base.flags & 1)
        dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
    PlaySfx(&dmk->obj2.base, 354);
}

static void sub_080F8300(struct DarkMetaKnight *dmk)
{
    dmk->obj2.base.flags |= 4;
    ObjXSomething(&dmk->obj2);
    if (!(dmk->obj2.base.unk1 & 7))
    {
        sub_08099AC4(&dmk->obj2.base);
        sub_08099AC4(dmk->unkB4);
    }
    if (dmk->obj2.base.unk62 & 3)
    {
        dmk->obj2.base.xspeed = 0;
        sub_080F7490(dmk);
    }
    else if (abs(dmk->obj2.base.x - dmk->obj2.kirby3->base.base.base.x) < 0x2C00)
        sub_080F7490(dmk);
}

static void sub_080F8490(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 0xB, sub_080F850C);
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    dmk->obj2.base.flags |= 0x40;
    dmk->obj2.base.flags &= ~0x20;
    dmk->obj2.base.flags &= ~8;
    dmk->obj2.base.xspeed = 0x180;
    dmk->obj2.base.yspeed = 0x420;
    if (dmk->obj2.base.flags & 1)
        dmk->obj2.base.xspeed = -0x180;
    dmk->obj2.base.counter = 0xC;
    dmk->obj2.unk9F = 0;
}

static void sub_080F850C(struct DarkMetaKnight *dmk)
{
    dmk->obj2.base.yspeed -= 40;
    if (dmk->obj2.base.yspeed < -0x4A0)
        dmk->obj2.base.yspeed = -0x4A0;
    ObjXSomething(&dmk->obj2);
    if (dmk->obj2.unk83 == 0xC && dmk->obj2.base.flags & 2)
        dmk->obj2.unk83 = 0xD;
    if (!dmk->obj2.unk9F && dmk->obj2.base.yspeed < 0x40)
    {
        dmk->obj2.unk9F = 1;
        dmk->obj2.unk83 = 0xC;
        dmk->obj2.base.flags &= ~2;
        sub_080F75B4(dmk);
    }
    else
    {
        if (dmk->obj2.base.yspeed <= 0 && dmk->obj2.base.unk62 & 4)
        {
            if (dmk->obj2.unk83 != 0xE)
                PlaySfx(&dmk->obj2.base, 588);
            dmk->obj2.base.xspeed = 0;
            dmk->obj2.unk83 = 0xE;
            if (!--dmk->obj2.base.counter)
            {
                dmk->obj2.base.flags &= ~8;
                if (dmk->obj2.unk80 <= 0)
                    sub_080FB694(dmk);
                else
                {
                    ObjectSetFunc(dmk, 0, sub_080FFF84);
                    dmk->obj2.base.xspeed = 0;
                    dmk->obj2.base.yspeed = 0;
                    dmk->obj2.base.flags &= ~0x40;
                    dmk->obj2.base.counter = 0x20;
                }
                dmk->obj2.base.counter = 0x12;
                return;
            }
        }
        if (dmk->obj2.base.unk62 & 3)
        {
            dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
            dmk->obj2.base.flags ^= 1;
        }
    }
}

static void sub_080F87C8(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 0xF, sub_080F88C0);
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    dmk->obj2.base.flags |= 0x40;
    dmk->obj2.base.flags &= ~0x20;
    dmk->obj2.base.xspeed = 0x100;
    dmk->obj2.base.yspeed = 0x3C0;
    if (dmk->obj2.base.flags & 1)
        dmk->obj2.base.xspeed = -0x100;
    dmk->obj2.base.counter = 0xC;
    dmk->obj2.unk9F = 0;
    PlaySfx(&dmk->obj2.base, 453);
}

static void sub_080F88C0(struct DarkMetaKnight *dmk)
{
    dmk->obj2.base.yspeed -= 40;
    if (dmk->obj2.base.yspeed < -0x4A0)
        dmk->obj2.base.yspeed = -0x4A0;
    ObjXSomething(&dmk->obj2);
    if (dmk->obj2.unk83 == 0xF && dmk->obj2.base.flags & 2)
        dmk->obj2.unk83 = 0xD;
    if (!dmk->obj2.unk9F && dmk->obj2.base.yspeed < 0x40)
    {
        dmk->obj2.unk9F = 1;
        sub_080F76DC(dmk);
    }
    else
    {
        if (dmk->obj2.base.yspeed <= 0 && dmk->obj2.base.unk62 & 4)
        {
            if (dmk->obj2.unk83 != 0xE)
                PlaySfx(&dmk->obj2.base, 588);
            dmk->obj2.base.xspeed = 0;
            dmk->obj2.unk83 = 0xE;
            if (!--dmk->obj2.base.counter)
            {
                dmk->obj2.base.flags &= ~8;
                if (dmk->obj2.unk80 <= 0)
                    sub_080FB694(dmk);
                else
                {
                    ObjectSetFunc(dmk, 0, sub_080FFF84);
                    dmk->obj2.base.xspeed = 0;
                    dmk->obj2.base.yspeed = 0;
                    dmk->obj2.base.flags &= ~0x40;
                    dmk->obj2.base.counter = 0x20;
                }
                dmk->obj2.base.counter = 0x12;
                return;
            }
        }
        if (dmk->obj2.base.unk62 & 3)
        {
            dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
            dmk->obj2.base.flags ^= 1;
        }
    }
}

static void sub_080F8B70(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 0xB, sub_080F8C84);
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    dmk->obj2.base.flags &= ~8;
    if (dmk->obj2.object->subtype1)
        dmk->obj2.base.xspeed = -0x400;
    else
        dmk->obj2.base.xspeed = -0x280;
    dmk->obj2.base.yspeed = 0x120;
    if (dmk->obj2.base.flags & 1)
        dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
    dmk->obj2.base.counter = 0xC;
    dmk->obj2.unk9F = 0;
    dmk->obj2.unk9E = 0;
    PlaySfx(&dmk->obj2.base, 354);
}

static void sub_080F8C84(struct DarkMetaKnight *dmk)
{
    ObjXSomething(&dmk->obj2);
    if (!(++dmk->obj2.unk9E & 7))
    {
        sub_08099AC4(&dmk->obj2.base);
        sub_08099AC4(dmk->unkB4);
    }
    if (dmk->obj2.unk83 == 0xC && dmk->obj2.base.flags & 2)
        dmk->obj2.unk83 = 0xD;
    if (!dmk->obj2.unk9F && dmk->obj2.base.yspeed < 0x40)
    {
        dmk->obj2.unk9F = 1;
        dmk->obj2.unk83 = 0xC;
        dmk->obj2.base.flags &= ~2;
    }
    else
    {
        if (dmk->obj2.base.yspeed <= 0 && dmk->obj2.base.unk62 & 4)
        {
            if (dmk->obj2.unk83 != 0xE)
                PlaySfx(&dmk->obj2.base, 588);
            dmk->obj2.base.xspeed = 0;
            dmk->obj2.unk83 = 0xE;
            if (!--dmk->obj2.base.counter)
            {
                dmk->obj2.base.flags &= ~8;
                if (dmk->obj2.unk80 <= 0)
                    sub_080FB694(dmk);
                else
                {
                    ObjectSetFunc(dmk, 0, sub_080FFF84);
                    dmk->obj2.base.xspeed = 0;
                    dmk->obj2.base.yspeed = 0;
                    dmk->obj2.base.flags &= ~0x40;
                    dmk->obj2.base.counter = 0x20;
                }
                dmk->obj2.base.counter = 0x12;
                return;
            }
        }
        if (dmk->obj2.base.unk62 & 3)
        {
            PlaySfx(&dmk->obj2.base, 588);
            sub_080A8D18(&dmk->obj2.base, -8, 8, 0, 0);
            sub_080F8490(dmk);
        }
    }
}

static void sub_080F8FD0(struct DarkMetaKnight *dmk)
{
    ++dmk->unkC8;
    ++dmk->unkC9;
    ObjectSetFunc(dmk, 0x15, sub_080F90CC);
    dmk->obj2.base.flags &= ~2;
    if (dmk->obj2.base.flags & 0x20)
    {
        dmk->obj2.base.flags |= 0x40;
        dmk->obj2.base.flags &= ~0x20;
    }
    dmk->obj2.base.counter = abs(dmk->obj2.base.y - dmk->obj2.kirby3->base.base.base.y) < 0x3000 ? 2 : 4;
    PlaySfx(&dmk->obj2.base, 420);
}

static void sub_080F90CC(struct DarkMetaKnight *dmk)
{
    dmk->obj2.base.flags |= 4;
    ObjXSomething(&dmk->obj2);
    dmk->obj2.base.yspeed -= 0x48;
    if (dmk->obj2.base.yspeed < -0x300)
        dmk->obj2.base.yspeed = -0x300;
    if (!(dmk->obj2.base.flags & 2))
    {
        if (!(dmk->obj2.base.unk62 & 4))
            goto _080F92FC;
    }
    else if (--dmk->obj2.base.counter)
        return;
    if (dmk->obj2.base.unk62 & 4)
    {
        PlaySfx(&dmk->obj2.base, 588);
        dmk->obj2.base.flags &= ~0x40;
        sub_080F7B34(dmk);
        return;
    }
    else
    {
        dmk->obj2.base.flags &= ~0x40;
        dmk->obj2.unk78 = sub_080F850C;
        dmk->obj2.base.counter = 0xC;
        dmk->obj2.unk83 = 0xD;
        return;
    }
_080F92FC:
    if (dmk->obj2.base.unk62 & 3)
        dmk->obj2.base.xspeed = 0;
}

static void sub_080F9310(struct DarkMetaKnight *dmk)
{
    dmk->unkC8 = 0;
    ++dmk->unkC9;
    ObjectSetFunc(dmk, 0x10, sub_080F93E0);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.base.flags |= 0x40;
    dmk->obj2.base.flags &= ~0x20;
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.unk9E = 0xC;
    dmk->obj2.base.counter = 0xC;
    PlaySfx(&dmk->obj2.base, 420);
}

static void sub_080F93E0(struct DarkMetaKnight *dmk)
{
    if (dmk->obj2.unk83 == 0x10)
    {
        dmk->obj2.base.yspeed = 0;
        dmk->obj2.base.objBase54 += 2 * (gUnk_0203AD40 & 2);
        dmk->unkB4->objBase54 = dmk->obj2.base.objBase54;
        if (!--dmk->obj2.unk9E)
        {
            dmk->obj2.unk83 = 0x11;
            dmk->obj2.base.yspeed = -0x200;
        }
    }
    else if (dmk->obj2.unk83 == 0x11)
    {
        if (dmk->obj2.object->subtype1)
        {
            dmk->obj2.base.yspeed -= 0x48;
            if (dmk->obj2.base.yspeed < -0x480)
                dmk->obj2.base.yspeed = -0x480;
        }
        else
        {
            dmk->obj2.base.yspeed -= 0x33;
            if (dmk->obj2.base.yspeed < -0x480)
                dmk->obj2.base.yspeed = -0x480;
        }
        if (dmk->obj2.base.unk62 & 4)
        {
            PlaySfx(&dmk->obj2.base, 0x164);
            dmk->obj2.unk83 = 0x12;
            sub_0808AE30(&dmk->obj2.base, 0, 0x2AD, 2);
            sub_0806FE64(0x201, &dmk->obj2.base);
            sub_080A8D18(&dmk->obj2.base, 0x1E, 8, 0, 0x12);
            dmk->obj2.base.flags ^= 1;
            sub_080A8D18(&dmk->obj2.base, 0x1E, 8, 0, 0x12);
            dmk->obj2.base.flags ^= 1;
        }
    }
    else
    {
        dmk->obj2.base.yspeed -= 0x28;
        if (dmk->obj2.base.yspeed < -0x4A0)
            dmk->obj2.base.yspeed = -0x4A0;
        if (dmk->obj2.base.unk62 & 4
            && !--dmk->obj2.base.counter)
        {
            dmk->obj2.base.flags &= ~8;
            if (dmk->obj2.unk80 < 1)
                sub_080FB694(dmk);
            else
            {
                ObjectSetFunc(dmk, 0, sub_080FFF84);
                dmk->obj2.base.xspeed = 0;
                dmk->obj2.base.yspeed = 0;
                dmk->obj2.base.flags &= ~0x40;
                dmk->obj2.base.counter = 0x20;
            }
        }
    }
}

static void sub_080F95D4(struct DarkMetaKnight *dmk)
{
    ++dmk->unkC8;
    ++dmk->unkC9;
    ObjectSetFunc(dmk, 0x1A, sub_080F96B4);
    dmk->obj2.base.flags &= ~2;
    if (dmk->obj2.base.flags & 0x20)
    {
        dmk->obj2.base.flags |= 0x40;
        dmk->obj2.base.flags &= ~0x20;
    }
    else
        dmk->obj2.base.xspeed = 0;
    dmk->obj2.unk9E = 2;
    dmk->obj2.base.counter = 0xC;
    PlaySfx(&dmk->obj2.base, 420);
}

static void sub_080F96B4(struct DarkMetaKnight *dmk)
{
    ObjXSomething(&dmk->obj2);
    if (dmk->obj2.unk83 == 0x1A)
    {
        if (dmk->obj2.base.flags & 2)
        {
            dmk->obj2.unk83 = 0x1B;
            dmk->obj2.base.yspeed = 0x400;
        }
    }
    else if (dmk->obj2.unk83 == 0x1B)
    {
        if (dmk->obj2.base.unk1 < 2)
        {
            dmk->obj2.base.yspeed -= 0x80;
            if (dmk->obj2.base.yspeed < -0x480)
                dmk->obj2.base.yspeed = -0x480;
        }
        if (dmk->obj2.base.unk1 == 2)
            dmk->obj2.base.yspeed = 0;
        if (dmk->obj2.base.unk1 == 9)
            dmk->obj2.base.yspeed = -0x400;
        if (dmk->obj2.base.unk1 == 9 || dmk->obj2.base.unk1 == 0xA || dmk->obj2.base.unk1 == 0xB)
        {
            dmk->obj2.base.yspeed += 0x80;
            if (dmk->obj2.base.yspeed > 0x480)
                dmk->obj2.base.yspeed = 0x480;
        }
        if (dmk->obj2.base.flags & 2)
        {
            if (dmk->obj2.base.flags & 0x40)
                dmk->obj2.base.flags &= ~0x40;
            if (dmk->obj2.base.unk62 & 4)
                sub_080F7B34(dmk);
            else
                dmk->obj2.unk83 = 0xD;
        }
    }
    else if (dmk->obj2.base.unk62 & 4)
    {
        dmk->obj2.base.xspeed = 0;
        if (dmk->obj2.unk83 != 0xE)
            PlaySfx(&dmk->obj2.base, 588);
        dmk->obj2.unk83 = 0xE;
        if (!--dmk->obj2.base.counter)
        {
            dmk->obj2.base.flags &= ~8;
            if (dmk->obj2.unk80 < 1)
                sub_080FB694(dmk);
            else
            {
                ObjectSetFunc(dmk, 0, sub_080FFF84);
                dmk->obj2.base.xspeed = 0;
                dmk->obj2.base.yspeed = 0;
                dmk->obj2.base.flags &= ~0x40;
                dmk->obj2.base.counter = 0x20;
            }
            dmk->obj2.base.counter = 0x12;
            return;
        }
    }
    if (dmk->obj2.base.unk62 & 3)
    {
        dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        dmk->obj2.base.flags ^= 1;
    }
}

static void sub_080F99BC(struct DarkMetaKnight *dmk)
{
    dmk->obj2.base.flags |= 8;
    dmk->obj2.base.objBase54 += gUnk_0203AD40 & 2;
    dmk->unkB4->objBase54 = dmk->obj2.base.objBase54;
    if (!--dmk->obj2.base.counter)
    {
        dmk->obj2.base.flags &= ~8;
        switch (dmk->obj2.unk9E)
        {
        case 0:
        default:
            sub_080F9DA8(dmk);
            break;
        case 1:
            sub_080FA048(dmk);
            break;
        case 2:
            sub_080FFFE8(dmk);
            break;
        }
    }
}

static void sub_080F9A2C(struct DarkMetaKnight *dmk)
{
    ObjXSomething(&dmk->obj2);
    if (dmk->obj2.unk83 == 0x17)
    {
        if (dmk->obj2.base.unk1 == 4)
        {
            sub_08089864(&dmk->obj2.base, -8, 8, dmk->obj2.base.flags & 1);
            PlaySfx(&dmk->obj2.base, 420);
        }
        if (dmk->obj2.base.unk1 == 0x16)
        {
            sub_080A8D18(&dmk->obj2.base, 0x1E, 8, 0, 0x12);
            PlaySfx(&dmk->obj2.base, 420);
        }
        if (dmk->obj2.base.flags & 2)
        {
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.unk83 = 5;
            dmk->obj2.base.xspeed = 0x200;
            if (dmk->obj2.base.flags & 1)
                dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        }
    }
    else
    {
        if (dmk->obj2.base.unk1 == 8)
        {
            dmk->obj2.base.xspeed = -0x100;
            if (dmk->obj2.base.flags & 1)
                dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
            PlaySfx(&dmk->obj2.base, 420);
        }
        if (dmk->obj2.base.unk1 == 0xC)
            dmk->obj2.base.xspeed = 0;
        if (dmk->obj2.base.unk1 == 4)
            sub_08089864(&dmk->obj2.base, -8, 8, dmk->obj2.base.flags & 1);
        if (dmk->obj2.base.flags & 2)
            sub_080F7B34(dmk);
    }
    if (dmk->obj2.base.unk62 & 1)
        dmk->obj2.base.xspeed = 0;
}

static void sub_080F9DA8(struct DarkMetaKnight *dmk)
{
    dmk->unkC8 = 0;
    ++dmk->unkC9;
    ObjectSetFunc(dmk, 0x18, sub_080F9E18);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.kirby3 = sub_0803D368(&dmk->obj2.base);
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    dmk->obj2.base.xspeed = 0x200;
    if (dmk->obj2.base.flags & 1)
        dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
}

static void sub_080F9E18(struct DarkMetaKnight *dmk)
{
    ObjXSomething(&dmk->obj2);
    if (dmk->obj2.base.unk1 == 8)
    {
        dmk->obj2.base.xspeed = 0x100;
        sub_08089864(&dmk->obj2.base, -8, 8, dmk->obj2.base.flags & 1);
        if (dmk->obj2.base.flags & 1)
            dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        PlaySfx(&dmk->obj2.base, 420);
    }
    if (dmk->obj2.base.unk1 == 0xF)
        sub_080A8D18(&dmk->obj2.base, 0x1E, 8, 0, 0x12);
    if (dmk->obj2.base.unk1 == 0x10)
        dmk->obj2.base.xspeed = 0;
    if (dmk->obj2.base.flags & 2)
        sub_080F7B34(dmk);
    if (dmk->obj2.base.unk62 & 1)
        dmk->obj2.base.xspeed = 0;
}

static void sub_080FA048(struct DarkMetaKnight *dmk)
{
    ++dmk->unkC8;
    ++dmk->unkC9;
    ObjectSetFunc(dmk, 0x19, sub_080FA0BC);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.kirby3 = sub_0803D368(&dmk->obj2.base);
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    dmk->obj2.base.xspeed = 0x200;
    if (dmk->obj2.base.flags & 1)
        dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
}

static void sub_080FA0BC(struct DarkMetaKnight *dmk)
{
    ObjXSomething(&dmk->obj2);
    if (dmk->obj2.base.unk1 == 7)
    {
        sub_08089864(&dmk->obj2.base, -8, 8, dmk->obj2.base.flags & 1);
        PlaySfx(&dmk->obj2.base, 420);
    }
    if (dmk->obj2.base.unk1 == 0xA)
    {
        dmk->obj2.base.xspeed = 0x180;
        if (dmk->obj2.base.flags & 1)
            dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
    }
    if (dmk->obj2.base.unk1 == 0x12)
    {
        dmk->obj2.base.xspeed = -0xC0;
        if (dmk->obj2.base.flags & 1)
            dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
    }
    if (dmk->obj2.base.unk1 == 0x19)
        dmk->obj2.base.xspeed = 0;
    if (dmk->obj2.base.flags & 2)
        sub_080F7B34(dmk);
    if (dmk->obj2.base.unk62 & 1)
        dmk->obj2.base.xspeed = 0;
}

static void sub_080FA2EC(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    bool32 r5;
    s32 v;
#ifndef NONMATCHING
    register s32 r0 asm("r0"), r1 asm("r1");
#else
    s32 r0, r1;
#endif

    dmk->obj2.base.flags &= ~8;
    r5 = dmk->obj2.unk78 != sub_080F8C84;
    sub_080F79AC(dmk);
    ObjectSetFunc(dmk, 0xB, sub_080FA4AC);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.kirby3 = sub_0803D368(&dmk->obj2.base);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0x280;
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    if (r5 && !dmk2->unkCA)
    {
        s32 abs = dmk->obj2.base.x - dmk->obj2.kirby3->base.base.base.x;

        if (abs < 0) abs = dmk->obj2.kirby3->base.base.base.x - dmk->obj2.base.x;
        if (abs > 0x5000
            && RandLessThan3())
        {
            sub_080FA5C0(dmk);
            return;
        }
    }
    if (dmk->obj2.unkA4 + 0x78 < dmk->obj2.base.x >> 8)
    {
        if (dmk->obj2.base.flags & 1)
            v = dmk->obj2.unkA8 - 0x28;
        else
            v = dmk->obj2.unkA4 + 0x28;
    }
    else
    {
        if (dmk->obj2.base.flags & 1)
            v = dmk->obj2.unkA8 - 0x28;
        else
            v = dmk->obj2.unkA4 + 0x28;
    }
    // reg mismatch
    r0 = v * 0x100;
    r1 = dmk->obj2.base.x - r0;
    r0 = r1 >> 5;
    dmk->obj2.base.xspeed = -r0;
    dmk->obj2.base.counter = 0;
    PlaySfx(&dmk->obj2.base, 354);
}

static void sub_080FA4AC(struct DarkMetaKnight *dmk)
{
    if (!(dmk->obj2.base.counter & 3))
    {
        sub_08099AC4(&dmk->obj2.base);
        sub_08099AC4(dmk->unkB4);
    }
    if (++dmk->obj2.base.counter >= 0x20)
    {
        PlaySfx(&dmk->obj2.base, 588);
        dmk->obj2.base.xspeed = 0;
        dmk->obj2.unk83 = 0xE;
        sub_080FA70C(dmk);
    }
    else
    {
        dmk->obj2.base.yspeed = gUnk_083571A4[dmk->obj2.base.counter >> 2];
        if (dmk->obj2.unk83 == 0xC)
        {
            if (dmk->obj2.base.flags & 2)
                dmk->obj2.unk83 = 0xD;
        }
        else if (dmk->obj2.base.yspeed < 0x40)
        {
            dmk->obj2.unk83 = 0xC;
            dmk->obj2.base.flags &= ~2;
        }
    }
}

static void sub_080FA5C0(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    s32 r;

    ++dmk2->unkC8;
    dmk2->unkC9 = 0;
    ObjectSetFunc(dmk, 0x1C, sub_080FA82C);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    dmk->obj2.kirby3 = sub_0803D368(&dmk->obj2.base);
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    if (dmk2->unkCA > 1)
    {
        dmk->obj2.base.counter = 0x80;
        if (dmk->obj2.kirby3->ability != KIRBY_ABILITY_NORMAL)
            dmk->obj2.base.counter = 0x60;
    }
    else
    {
        if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
            dmk->obj2.base.counter = 0x30;
        else
            dmk->obj2.base.counter = 0x40;
        if (dmk->obj2.kirby3->ability != KIRBY_ABILITY_NORMAL)
            dmk->obj2.base.counter -= 0x18;
    }
    r = Rand16() & 7;
    if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
    {
        if (r < 2) dmk->obj2.unk83 = 0x17;
    }
    else
    {
        if (r < 4) dmk->obj2.unk83 = 0x17;
    }
    if (dmk->obj2.unk83 == 0x1C)
        sub_080FE1D0(dmk);
}

static void sub_080FA70C(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    s32 r;

    ++dmk2->unkC8;
    dmk2->unkC9 = 0;
    ObjectSetFunc(dmk, 0x1C, sub_080FA82C);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    if (dmk2->unkCA > 1)
    {
        dmk->obj2.base.counter = 0x80;
        if (dmk->obj2.kirby3->ability != KIRBY_ABILITY_NORMAL)
            dmk->obj2.base.counter = 0x60;
    }
    else
    {
        if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
            dmk->obj2.base.counter = 0x30;
        else
            dmk->obj2.base.counter = 0x40;
        if (dmk->obj2.kirby3->ability != KIRBY_ABILITY_NORMAL)
            dmk->obj2.base.counter -= 0x18;
    }
    r = Rand16() & 7;
    if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
    {
        if (r < 2) dmk->obj2.unk83 = 0x17;
    }
    else
    {
        if (r < 4) dmk->obj2.unk83 = 0x17;
    }
    if (dmk->obj2.unk83 == 0x1C)
        sub_080FE1D0(dmk);
}

static void sub_080FA82C(struct DarkMetaKnight *dmk)
{
    switch (dmk->obj2.unk83)
    {
    case 0x17:
        if (dmk->obj2.base.unk1 == 8 || dmk->obj2.base.unk1 == 0x16)
            PlaySfx(&dmk->obj2.base, 420);
        if (dmk->obj2.base.flags & 2)
        {
            dmk->obj2.unk83 = 0x1C;
            sub_080FE1D0(dmk);
        }
        break;
    case 0x1C:
        if (dmk->obj2.base.flags & 2)
            dmk->obj2.unk83 = 0x1D;
        if (dmk->unkCA > 1)
        {
            dmk->obj2.base.objBase54 = gUnk_083571BC[(dmk->obj2.unk9F/4) & 3];
            dmk->unkB4->objBase54 = dmk->obj2.base.objBase54;
        }
        break;
    case 0x1D:
        dmk->obj2.base.flags |= 4;
        if (!--dmk->obj2.base.counter)
        {
            switch (dmk->unkCA)
            {
            case 2:
            case 3:
                sub_080FB000(dmk);
                break;
            case 0:
                if (Rand16() & 1 && dmk->obj2.base.y - 0x1000 > dmk->obj2.kirby3->base.base.base.y)
                    sub_081000C0(dmk);
                else
                    sub_08100048(dmk);
                break;
            case 1:
                sub_08100094(dmk);
                break;
            }
            return;
        }
        if (dmk->unkCA > 1)
        {
            dmk->obj2.base.objBase54 = gUnk_083571BC[(dmk->obj2.unk9F/2) & 3];
            dmk->unkB4->objBase54 = dmk->obj2.base.objBase54;
        }
        break;
    }
    ++dmk->obj2.unk9F;
}

static void sub_080FA9E8(struct DarkMetaKnight *dmk)
{
    dmk->obj2.base.yspeed -= 0x48;
    if (dmk->obj2.base.yspeed < -0x300)
        dmk->obj2.base.yspeed = -0x300;
    ObjXSomething(&dmk->obj2);
    if (dmk->obj2.base.flags & 0x20)
        dmk->obj2.base.xspeed = 0;
    if (dmk->obj2.base.unk1 == 8)
    {
        dmk->obj2.base.xspeed = 0x38;
        sub_08089864(&dmk->obj2.base, -8, 8, dmk->obj2.base.flags & 1);
        if (dmk->obj2.base.flags & 1)
            dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        PlaySfx(&dmk->obj2.base, 420);
    }
    if (dmk->obj2.base.unk1 == 0xF)
        sub_080FDC68(dmk, dmk->obj2.kirby3, 0);
    if (dmk->obj2.base.unk1 == 0x10)
        dmk->obj2.base.xspeed = 0;
    if (dmk->obj2.base.flags & 2
        && !--dmk->obj2.base.counter)
    {
        if (dmk->obj2.base.flags & 0x20)
        {
            ObjectSetFunc(dmk, 0xD, sub_080F850C);
            dmk->obj2.base.counter = 0xC;
            dmk->obj2.unk9F = 1;
        }
        else
            sub_080F7B34(dmk);
    }
    if (dmk->obj2.base.unk62 & 1)
        dmk->obj2.base.xspeed = 0;
}

static void sub_080FAC64(struct DarkMetaKnight *dmk)
{
    ObjXSomething(&dmk->obj2);
    if (dmk->obj2.unk83 == 0x17)
    {
        if (dmk->obj2.base.unk1 == 4)
            sub_08089864(&dmk->obj2.base, -8, 8, dmk->obj2.base.flags & 1);
        if (dmk->obj2.base.unk1 == 0x16)
        {
            sub_080FDC68(dmk, dmk->obj2.kirby3, 1);
            PlaySfx(&dmk->obj2.base, 420);
        }
        if (dmk->obj2.base.unk1 == 8)
        {
            sub_080FDC68(dmk, dmk->obj2.kirby3, 1);
            PlaySfx(&dmk->obj2.base, 420);
        }
        if (dmk->obj2.base.flags & 2)
        {
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.unk83 = 0x16;
            dmk->obj2.base.xspeed = 0x200;
            if (dmk->obj2.base.flags & 1)
                dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        }
    }
    else
    {
        if (dmk->obj2.base.unk1 == 8)
        {
            PlaySfx(&dmk->obj2.base, 420);
            dmk->obj2.base.xspeed = -0x100;
            if (dmk->obj2.base.flags & 1)
                dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        }
        if (dmk->obj2.base.unk1 == 6)
            sub_080FDC68(dmk, dmk->obj2.kirby3, 1);
        if (dmk->obj2.base.unk1 == 0x10)
            dmk->obj2.base.xspeed = 0;
        if (dmk->obj2.base.unk1 == 4)
            sub_08089864(&dmk->obj2.base, -8, 8, dmk->obj2.base.flags & 1);
        if (dmk->obj2.base.flags & 2)
            sub_080F7B34(dmk);
    }
    if (dmk->obj2.base.unk62 & 1)
        dmk->obj2.base.xspeed = 0;
}

static void sub_080FB000(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    ObjectSetFunc(dmk, 0x10, sub_080FB0C4);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.base.xspeed = 0;
    if (abs(dmk->obj2.base.x - dmk->obj2.kirby3->base.base.base.x) > 0x4800
        && (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1 || Rand16() & 1))
        dmk2->unkCA = 3;
    if (dmk2->unkCA == 3)
        dmk->obj2.base.counter = 0x80;
    else
        dmk->obj2.base.counter = 0xAC;
}

static void sub_080FB0C4(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    if (dmk->obj2.unk83 == 0x10)
    {
        if (!(dmk->obj2.base.flags & 2)) return;
        dmk->obj2.unk83 = 0x12;
        sub_08089864(&dmk->obj2.base, -8, 8, dmk->obj2.base.flags & 1);
        PlaySfx(&dmk->obj2.base, 420);
        if (dmk2->unkCA == 3)
            sub_080FE5CC(dmk, 0);
        else
            sub_080FE5CC(dmk, 1);
    }
    else if (!--dmk->obj2.base.counter)
        sub_080F7B34(dmk);
    if (dmk->obj2.base.flags & 2
        && !--dmk->obj2.base.counter)
        sub_080F7B34(dmk);
}

static void sub_080FB1CC(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    dmk->obj2.base.flags &= ~8;
    ++dmk2->unkC9;
    PlaySfx(&dmk->obj2.base, 422);
    if (dmk->obj2.unk78 != sub_080FB2CC)
    {
        dmk->obj2.base.flags |= 0x40;
        dmk->obj2.base.flags &= ~0x20;
        ObjectSetFunc(dmk, 8, sub_080FB2CC);
        dmk->obj2.base.flags &= ~2;
        if (dmk->obj2.base.flags & 0x60)
        {
            dmk->obj2.unk83 = 9;
            dmk->obj2.base.flags &= ~0x40;
        }
        else
            ++dmk2->unkC6;
        dmk->obj2.base.counter = 0x14;
        sub_080FFBC0(dmk);
    }
}

static void sub_080FB2CC(struct DarkMetaKnight *dmk)
{
    ObjXSomething(&dmk->obj2);
    dmk->obj2.base.unk5C &= ~7;
    dmk->obj2.base.unk5C |= 7;
    if (dmk->obj2.unk83 == 8)
    {
        if (dmk->obj2.base.counter > 0xB)
        {
            dmk->obj2.base.xspeed = -0x100;
            if (dmk->obj2.base.flags & 1)
                dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        }
        else if (dmk->obj2.base.counter > 3)
        {
            dmk->obj2.base.xspeed = -0x200;
            if (dmk->obj2.base.flags & 1)
                dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        }
        else
        {
            dmk->obj2.base.xspeed = gUnk_083571B4[dmk->obj2.base.counter];
            if (dmk->obj2.base.flags & 1)
                dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        }
    }
    else
    {
        if (dmk->obj2.base.counter > 3)
        {
            dmk->obj2.base.objBase54 = gUnk_083571B4[(dmk->obj2.base.counter >> 1) & 3] >> 9;
            if (dmk->obj2.base.flags & 1)
                dmk->obj2.base.xspeed = -dmk->obj2.base.objBase54;
        }
        if (dmk->obj2.base.unk62 & 4)
        {
            dmk->obj2.unk83 = 8;
            dmk->obj2.base.flags &= ~0x40;
        }
    }
    if (!--dmk->obj2.base.counter)
    {
        if (dmk->obj2.base.unk62 & 4)
            sub_080F7A60(dmk);
        else
        {
            ObjectSetFunc(dmk, 0xD, sub_080F850C);
            dmk->obj2.base.counter = 0xC;
            dmk->obj2.unk9F = 1;
        }
    }
    else if (dmk->obj2.base.unk62 & 3)
        dmk->obj2.base.xspeed = 0;
}

static void sub_080FB504(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    struct ObjectBase *objBase;

    if (Macro_0810B1F4(&dmk->obj2.base)) return;
    if (dmk->obj2.base.flags & 0x40000)
    {
        dmk->obj2.base.flags &= ~0x40000;
        if ((objBase = dmk->obj2.base.unk6C) || objBase->parent)
        {
            if (!((struct Kirby *)objBase->parent)->base.base.base.unk0)
            {
                if ((((struct Kirby *)objBase->parent)->unkD4 == 0xD
                        || ((struct Kirby *)objBase->parent)->unkD4 == 0xE
                        || ((struct Kirby *)objBase->parent)->unkD4 == 0x28)
                    && dmk->obj2.unk83 < 0x10)
                {
                    sub_080F738C(dmk);
                    return;
                }
            }
            if ((dmk->obj2.base.unk5C & 7) >= 7
                && objBase->unk68 & 0x3FFFF8
                && (objBase->unk68 & 7) > 2u)
            {
                if (objBase->x < dmk->obj2.base.x)
                    dmk->obj2.base.flags |= 1;
                else
                    dmk->obj2.base.flags &= ~1;
                sub_080FB1CC(dmk);
                return;
            }
        }
    }
    if (dmk->obj2.unk83 < 0xF
        && (dmk2->unkC6 < 2 || dmk->obj2.base.flags & 0x20))
    {
        u16 r = Rand16() & 7;
#ifndef NONMATCHING
        register u32 ip asm("ip") = r;
#else
        u32 ip = r;
#endif

        if (dmk->obj2.unk80 < gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
        {
            if (dmk->obj2.unk80 < (gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1) - (gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 2))
            {
                if (!r)
                {
                    dmk->obj2.base.unk5C &= ~7;
                    dmk->obj2.base.unk5C |= 7;
                    return;
                }
            }
            else
            {
                if (!r)
                {
                    dmk->obj2.base.unk5C &= ~7;
                    dmk->obj2.base.unk5C |= 7;
                    return;
                }
            }
        }
        else
        {
            if (dmk->obj2.unk80 < (gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1) + (gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 2))
            {
                if (r < 2)
                {
                    dmk->obj2.base.unk5C &= ~7;
                    dmk->obj2.base.unk5C |= 7;
                    return;
                }
            }
            else
            {
                if (ip < 2)
                {
                    dmk->obj2.base.unk5C &= ~7;
                    dmk->obj2.base.unk5C |= 7;
                    return;
                }
            }
        }
    }
    dmk->obj2.base.unk5C &= ~7;
    dmk->obj2.base.unk5C |= 3;
}

static void sub_080FB694(struct DarkMetaKnight *dmk)
{
    if (dmk->obj2.object->subtype1)
        sub_0810010C(dmk);
    else
    {
        ObjectSetFunc(dmk, 0x22, sub_080FB700);
        dmk->obj2.base.xspeed = -0x100;
        dmk->obj2.base.yspeed = 0x300;
        if (dmk->obj2.base.flags & 1)
            dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
        dmk->obj2.base.flags &= ~2;
        dmk->obj2.base.flags &= ~0x40;
        dmk->obj2.base.flags |= 0x200;
        dmk->obj2.unk9F = 0;
    }
}

static void sub_080FB700(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;

    if (!(dmk->obj2.base.flags & 0x40))
    {
        dmk->obj2.base.yspeed -= 0x3B;
        if (dmk->obj2.base.yspeed < -0x300)
            dmk->obj2.base.yspeed = -0x300;
    }
    switch (dmk->obj2.unk83)
    {
    case 0x22:
        if (!dmk->obj2.unk9F)
        {
            sub_080FD590(dmk);
            dmk->obj2.unk9F = 1;
        }
        if (dmk->obj2.base.unk1 == 0x22)
        {
            sub_080FC9C8(dmk);
            PlaySfx(&dmk->obj2.base, 536);
        }
        if (dmk->obj2.base.unk1 > 0x22)
        {
            if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
            {
                sub_0803CD98(dmk->obj2.base.sprite.unk1F, 0x390, 0, 0x394, 0, dmk->obj2.base.counter);
                sub_0803CD98(dmk2->unkB4->sprite.unk1F, 0x391, 0, 0x394, 2, dmk->obj2.base.counter);
            }
            dmk->obj2.base.counter += 4;
            if (dmk->obj2.base.counter > 0x100)
                dmk->obj2.base.counter = 0x100;
        }
        if (dmk->obj2.base.flags & 2 && dmk->obj2.base.counter == 0x100)
        {
            dmk->obj2.unk83 = 0x23;
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.base.yspeed = 0x420;
            dmk->obj2.unk9F = 0;
        }
        if (dmk->obj2.base.unk1 > 7 && dmk->obj2.base.unk62 & 4)
            dmk->obj2.base.xspeed = 0;
        break;
    case 0x23:
        if (dmk->obj2.base.yspeed < 0x40)
        {
            dmk->obj2.unk83 = 0x24;
            dmk->obj2.base.flags &= ~2;
        }
        break;
    case 0x24:
        if (dmk->obj2.base.flags & 2)
        {
            dmk->obj2.unk83 = 0x25;
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.base.counter = 0;
        }
        break;
    case 0x25:
        if (dmk->obj2.base.unk62 & 4)
        {
            PlaySfx(&dmk->obj2.base, 588);
            dmk->obj2.unk83 = 0x26;
            dmk->obj2.base.flags &= ~2;
        }
        break;
    case 0x26:
        if (dmk->obj2.base.unk1 > 0x2A)
        {
            dmk->obj2.unk83 = 0x27;
            dmk->obj2.base.flags &= ~2;
            dmk->obj2.base.yspeed = 0x400;
            dmk->obj2.base.counter = 0;
            dmk->obj2.base.flags |= 0x40;
        }
        break;
    case 0x27:
        if (++dmk->obj2.base.counter > 0x5A)
            dmk->obj2.base.flags |= 0x1000;
        break;
    }
}

static void sub_080FB9FC(struct DarkMetaKnight *dmk)
{
    struct DarkMetaKnight *dmk2 = dmk;
    u8 i;
    struct Sprite sprite;

    ObjXSomething(&dmk->obj2);
    switch (dmk->obj2.unk83)
    {
    case 0x2A:
        if (++dmk->obj2.base.counter < 0x30)
        {
            dmk->obj2.base.yspeed -= 0x18;
            if (dmk->obj2.base.yspeed < -0x110)
                dmk->obj2.base.yspeed = -0x110;
            if (dmk->obj2.base.counter > 0x10)
            {
                if (dmk->obj2.base.xspeed < 0)
                {
                    dmk->obj2.base.xspeed += 8;
                    if (dmk->obj2.base.xspeed > 0)
                        dmk->obj2.base.xspeed = 0;
                }
                else
                {
                    dmk->obj2.base.xspeed -= 8;
                    if (dmk->obj2.base.xspeed < 0)
                        dmk->obj2.base.xspeed = 0;
                }
            }
        }
        if (dmk->obj2.base.counter == 0x30)
        {
            dmk->obj2.base.xspeed = 0;
            dmk->obj2.base.yspeed = 0;
            sub_0806FE64(1, &dmk->obj2.base);
            sub_080860A8(&dmk->obj2.base, gUnk_0835719C);
        }
        if (dmk->obj2.base.counter >= 0x90)
        {
            dmk->obj2.base.objBase54 = gUnk_083571BC[(dmk->obj2.base.counter>>2) & 3];
            dmk->obj2.base.objBase55 = gUnk_083571BC[((dmk->obj2.base.counter+1)>>2) & 3];
            dmk2->unkB4->objBase54 = dmk->obj2.base.objBase54;
            dmk2->unkB4->objBase55 = dmk->obj2.base.objBase55;
        }
        if (dmk->obj2.base.counter >= 0xD0)
        {
            bool32 sb = TRUE;

            sub_080860A8(&dmk->obj2.base, gUnk_0835719C);
            for (i = 0; i < gUnk_0203AD44; ++i)
            {
                struct Kirby *kirby = gKirbys + i;

                if (kirby->hp > 0
                    && kirby->base.base.base.roomId == dmk->obj2.base.roomId
                    && !sub_0805BEC4(&gKirbys[i])
                    && !(kirby->base.base.base.flags & 0x1000000))
                {
                    kirby->base.base.base.flags |= 0x1000000;
                    if (kirby->ability != KIRBY_ABILITY_UFO)
                        kirby->base.base.base.flags &= ~0x40;
                    if (kirby->ability == KIRBY_ABILITY_SLEEP)
                        sub_080641FC(kirby);
                    else if (kirby->ability == KIRBY_ABILITY_UFO)
                        sub_0806A798(kirby);
                    else if (kirby->ability == KIRBY_ABILITY_CUPID)
                    {
                        if (kirby->base.base.base.flags & 0x40)
                            sub_08047EF0(kirby);
                        else if (kirby->base.base.base.flags & 0x60)
                            sub_08044EA8(kirby);
                        else
                            sub_0803FE74(kirby);
                    }
                    else if (kirby->base.base.base.unk58 & 2)
                        sub_08059810(kirby);
                    else if (kirby->base.base.base.flags & 0x60)
                        sub_08044EA8(kirby);
                    else
                        sub_0803FE74(kirby);
                }
            }
            for (i = 0; i < gUnk_0203AD44; ++i)
            {
                struct Kirby *kirby = gKirbys + i;

                if (kirby->base.base.base.roomId == dmk->obj2.base.roomId
                    && !(kirby->base.base.base.flags & 0x1000000)
                    && gCurLevelInfo[kirby->base.base.base.unk56].unk1EC != 4)
                    sb = FALSE;
            }
            if (sb)
            {
                dmk->obj2.unk83 = 0x2B;
                dmk->obj2.base.flags &= ~2;
            }
        }
        break;
    case 0x2B:
        if (dmk->obj2.base.unk1 == 0x10)
        {
            sub_0806FE64(3, &dmk->obj2.base);
            PlaySfx(&dmk->obj2.base, 537);
        }
        if (dmk->obj2.base.flags & 2)
        {
            if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
            {
                SpriteSomething(&sprite, 0x6000000, 0x390, 0, 0xFF, 0, 0, 0, 0, 0x10, dmk->obj2.base.sprite.unk1F & 0xF, 0x80000);
                SpriteSomething(&sprite, 0x6000000, 0x391, 0, 0xFF, 0, 0, 0, 0, 0x10, dmk2->unkB4->sprite.unk1F & 0xF, 0x80000);
            }
            for (i = 0; i < gUnk_0203AD44; ++i)
            {
                struct Kirby *kirby = gKirbys + i;

                if (kirby->hp > 0 && kirby->base.base.base.roomId == dmk->obj2.base.roomId)
                    sub_0804BAD8(kirby);
            }
            CreateObjTemplateAndObj(dmk->obj2.base.unk56, 1, 0x24, 0, 0, 0, 0x1F, 0, 0, OBJ_CUTSCENE_TRIGGER, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
            dmk->obj2.base.flags |= 0x1000;
            return;
        }
        break;
    }
    if (dmk->obj2.base.unk62 & 3)
        dmk->obj2.base.xspeed = 0;
}

static struct ObjectBase *sub_080FBFE8(struct DarkMetaKnight *dmk)
{
    struct Task *t = TaskCreate(sub_080FC150, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct ObjectBase *objBase2 = TaskGetStructPtr(t, objBase2), *objBase = objBase2;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = dmk->obj2.base.x;
    objBase->y = dmk->obj2.base.y;
    objBase->parent = dmk;
    objBase->counter = 0;
    objBase->roomId = dmk->obj2.base.roomId;
    objBase->unk56 = dmk->obj2.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk64 = 0;
    objBase->unk66 = 0;
    objBase->unk63 = 1;
    objBase->flags |= 0x50400100;
    objBase->unk68 |= 0x20002003;
    objBase->flags |= 0x200;
    if (dmk->obj2.base.flags & 1)
        objBase->flags &= ~1;
    else
        objBase->flags |= 1;
    sub_0803E2B0(objBase, 0, 0, 0, 0);
    sub_0803E308(objBase, 0, 0, 0, 0);
    sub_080708DC(objBase, &objBase->sprite, 0x30, gUnk_083570EC[0].unk0, gUnk_083570EC[0].unk2, 0x1C);
    objBase->sprite.unk1F = 0;
    Macro_081050E8(objBase, &objBase->sprite, 0x391, 1);
    return objBase;
}

static void sub_080FC150(void)
{
    struct Sprite sprite;
    struct ObjectBase *objBase2 = TaskGetStructPtr(gCurTask, objBase2), *objBase = objBase2;
    struct Sprite *unk10 = &objBase->sprite;
    struct DarkMetaKnight *dmk = objBase->parent;
    
    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (dmk->obj2.base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else
    {
        // variables required for generating `bics`
        u32 flags;
        u32 one;

        objBase->flags &= ~0x409;
        objBase->flags |= dmk->obj2.base.flags & 0x40C;
        flags = dmk->obj2.base.flags;
        one = 1;
        objBase->flags |= one & ~flags;
        objBase->roomId = dmk->obj2.base.roomId;
        objBase->x = dmk->obj2.base.x;
        objBase->y = dmk->obj2.base.y;
        if (Macro_0810B1F4(objBase))
        {
            objBase->objBase54 = dmk->obj2.base.objBase54;
            objBase->objBase55 = dmk->obj2.base.objBase55;
        }
        Macro_08107BA8_4(objBase, unk10, &sprite, 0x30, &objBase->sprite);
        Macro_081050E8(objBase, &objBase->sprite, 0x391, !objBase->sprite.unk1F);
        if (unk10->unkC != gUnk_083570EC[dmk->obj2.unk83].unk0 || unk10->unk1A != gUnk_083570EC[dmk->obj2.unk83].unk2)
        {
            unk10->unkC = gUnk_083570EC[dmk->obj2.unk83].unk0;
            unk10->unk1A = gUnk_083570EC[dmk->obj2.unk83].unk2;
        }
        if (unk10->unkC)
        {
            if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            {
                sub_0803D9A8(objBase);
                return;
            }
            if (!objBase->sprite.unk20[0].unk0)
            {
                objBase->flags &= ~0x200;
                if (!objBase->sprite.unk16)
                {
                    if (!(dmk->obj2.base.flags & 2))
                        objBase->sprite.unk20[0].unk0 = -1;
                    objBase->flags |= 0x200;
                }
            }
            Macro_080FC150(objBase);
            if (!(objBase->flags & 0x400)
                && gKirbys[gUnk_0203AD3C].base.base.base.roomId == objBase->roomId)
            {
                objBase->sprite.unk10 += gUnk_0203AD18[0];
                objBase->sprite.unk12 += gUnk_0203AD18[1];
                Macro_0803DBC8(objBase, &objBase->sprite);
            }
            if (objBase->sprite.unk20[0].unk0 != -1)
                objBase->flags &= ~0x200;
            SetPointerSomething(objBase);
        }
    }
}

static struct Object4 *sub_080FC5F8(struct DarkMetaKnight *dmk)
{
    struct Task *t = TaskCreate(sub_080FC6D4, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_08100170);
    struct Object4 *tmp, *obj4 = TaskGetStructPtr(t, tmp);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = dmk->obj2.base.x;
    obj4->y = dmk->obj2.base.y;
    obj4->parent = dmk;
    obj4->roomId = dmk->obj2.base.roomId;
    obj4->unk3C = 0x40;
    obj4->unk3E = -0x15;
    sub_080709F8(obj4, &obj4->sprite, 0xC, 0x392, 0, 0x18);
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x390, 1);
    return obj4;
}

static void sub_080FC6D4(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask, tmp), *obj4 = tmp;
    struct Sprite sprite;
    struct DarkMetaKnight *dmk;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (((struct DarkMetaKnight *)obj4->parent)->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0xC, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x390, !obj4->sprite.unk1F);
        dmk = obj4->parent;
        if (dmk)
        {
            if (dmk->obj2.base.unk0 && dmk->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                dmk = NULL;
            }
            if (!dmk)
                goto _080FC8A8;
            if (Macro_0810B1F4(&dmk->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080FC8A8:
            KirbySomething(obj4);
        }
        Macro_0809E55C(obj4);
        obj4->flags |= 4;
        if (++obj4->unk4 > 120)
            obj4->flags |= 0x1000;
        else
        {
            if (!(obj4->flags & 0x800))
            {
                obj4->x += obj4->unk3C;
                obj4->y -= obj4->unk3E;
            }
            sub_0806FAC8(obj4);
        }
    }
}

static void sub_080FC9C8(struct DarkMetaKnight *dmk)
{
    struct Task *t = TaskCreate(sub_080FCA94, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t, obj4);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = dmk->obj2.base.x;
    obj4->y = dmk->obj2.base.y;
    obj4->parent = dmk;
    obj4->roomId = dmk->obj2.base.roomId;
    sub_080709F8(obj4, &obj4->sprite, 0xC, 0x392, 1, 0x19);
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x390, 1);
}

static void sub_080FCA94(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask, tmp), *obj4 = tmp;
    struct Sprite sprite;
    struct DarkMetaKnight *dmk, *dmk2 = obj4->parent;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (dmk2->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0xC, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x390, !obj4->sprite.unk1F);
        dmk = obj4->parent;
        if (dmk)
        {
            if (dmk->obj2.base.unk0 && dmk->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                dmk = NULL;
            }
            if (!dmk)
                goto _080FCC70;
            if (Macro_0810B1F4(&dmk->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080FCC70:
            KirbySomething(obj4);
        }
        Macro_0809E55C(obj4);
        obj4->unk3E -= 0x15;
        if (obj4->flags & 2)
        {
            sub_080FCD98(dmk2);
            sub_080FD194(dmk2);
            obj4->flags |= 0x1000;
        }
        else
        {
            if (!(obj4->flags & 0x800))
            {
                obj4->x += obj4->unk3C;
                obj4->y -= obj4->unk3E;
            }
            sub_0806FAC8(obj4);
        }
    }
}

static void sub_080FCD98(struct DarkMetaKnight *dmk)
{
    struct Task *t = TaskCreate(sub_080FCE70, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t, obj4);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = dmk->obj2.base.x;
    obj4->y = dmk->obj2.base.y;
    obj4->parent = dmk;
    obj4->roomId = dmk->obj2.base.roomId;
    obj4->unk3C = 0x100;
    obj4->unk3E = 0x200;
    sub_080709F8(obj4, &obj4->sprite, 4, 0x392, 2, 0x19);
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x390, 1);
}

static void sub_080FCE70(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask, tmp), *obj4 = tmp;
    struct Sprite sprite;
    struct DarkMetaKnight *dmk, *dmk2 = obj4->parent;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (dmk2->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 4, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x390, !obj4->sprite.unk1F);
        dmk = obj4->parent;
        if (dmk)
        {
            if (dmk->obj2.base.unk0 && dmk->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                dmk = NULL;
            }
            if (!dmk)
                goto _080FD04C;
            if (Macro_0810B1F4(&dmk->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080FD04C:
            KirbySomething(obj4);
        }
        Macro_0809E55C(obj4);
        obj4->flags |= 4;
        obj4->unk3E -= 0x15;
        if (++obj4->unk4 > 0x34)
        {
            struct Object4 *obj4_2 = sub_0808AE30(&dmk2->obj2.base, 0, 0x2B4, 0);

            obj4_2->x = obj4->x;
            obj4_2->y = obj4->y;
            obj4->flags |= 0x1000;
        }
        else
        {
            if (!(obj4->flags & 0x800))
            {
                obj4->x += obj4->unk3C;
                obj4->y -= obj4->unk3E;
            }
            sub_0806FAC8(obj4);
        }
    }
}

static void sub_080FD194(struct DarkMetaKnight *dmk)
{
    struct Task *t = TaskCreate(sub_080FD26C, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t, obj4);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = dmk->obj2.base.x;
    obj4->y = dmk->obj2.base.y;
    obj4->parent = dmk;
    obj4->roomId = dmk->obj2.base.roomId;
    obj4->unk3C = -0x100;
    obj4->unk3E = 0x200;
    sub_080709F8(obj4, &obj4->sprite, 4, 0x392, 3, 0x19);
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x390, 1);
}

// the same as sub_080FCE70
static void sub_080FD26C(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask, tmp), *obj4 = tmp;
    struct Sprite sprite;
    struct DarkMetaKnight *dmk, *dmk2 = obj4->parent;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (dmk2->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 4, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x390, !obj4->sprite.unk1F);
        dmk = obj4->parent;
        if (dmk)
        {
            if (dmk->obj2.base.unk0 && dmk->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                dmk = NULL;
            }
            if (!dmk)
                goto _080FD448;
            if (Macro_0810B1F4(&dmk->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080FD448:
            KirbySomething(obj4);
        }
        Macro_0809E55C(obj4);
        obj4->flags |= 4;
        obj4->unk3E -= 0x15;
        if (++obj4->unk4 > 0x34)
        {
            struct Object4 *obj4_2 = sub_0808AE30(&dmk2->obj2.base, 0, 0x2B4, 0);

            obj4_2->x = obj4->x;
            obj4_2->y = obj4->y;
            obj4->flags |= 0x1000;
        }
        else
        {
            if (!(obj4->flags & 0x800))
            {
                obj4->x += obj4->unk3C;
                obj4->y -= obj4->unk3E;
            }
            sub_0806FAC8(obj4);
        }
    }
}

static struct ObjectBase *sub_080FD590(struct DarkMetaKnight *dmk)
{
    struct Task *t = TaskCreate(sub_080FD6BC, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct ObjectBase *tmp, *objBase = TaskGetStructPtr(t, tmp);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = dmk->obj2.base.x;
    objBase->y = dmk->obj2.base.y;
    objBase->parent = dmk;
    objBase->counter = 0;
    objBase->roomId = dmk->obj2.base.roomId;
    objBase->unk56 = dmk->obj2.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 0;
    objBase->xspeed = 0x100;
    objBase->yspeed = 0x400;
    sub_0803E308(objBase, -4, -4, 4, 8);
    sub_080708DC(objBase, &objBase->sprite, 0x10, 0x392, 4, 0x1A);
    objBase->sprite.unk1F = 0;
    Macro_081050E8(objBase, &objBase->sprite, 0x390, 1);
    return objBase;
}

static void sub_080FD6BC(void)
{
    struct Sprite sprite;
    struct ObjectBase *objBase2 = TaskGetStructPtr(gCurTask, objBase2), *objBase = objBase2;

    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x10, &objBase->sprite);
    Macro_081050E8(objBase, &objBase->sprite, 0x390, !objBase->sprite.unk1F);
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
                objBase->sprite.unk1A = 5;
                objBase->flags |= 0x100;
                objBase->yspeed = 0;
            }
        }
        sub_0806F8BC(objBase);
    }
}

static struct Object4 *sub_080FD8B4(struct DarkMetaKnight *dmk)
{
    struct Task *t = TaskCreate(sub_080FD9AC, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_081001A4);
    struct Object4 *tmp, *obj4 = TaskGetStructPtr(t, tmp);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = dmk->obj2.base.x;
    obj4->y = dmk->obj2.base.y;
    obj4->parent = dmk;
    obj4->roomId = dmk->obj2.base.roomId;
    obj4->unk3C = 0;
    obj4->unk3E = 0;
    obj4->y -= 0x3800;
    obj4->x -= 0x3000;
    sub_080709F8(obj4, &obj4->sprite, 0x50, 0x3A3, 0, 0x1A);
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x3A3, 1);
    return obj4;
}

static void sub_080FD9AC(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask, tmp), *obj4 = tmp;
    struct Sprite sprite;
    struct DarkMetaKnight *dmk;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x50, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x3A3, !obj4->sprite.unk1F);
        dmk = obj4->parent;
        if (dmk)
        {
            if (dmk->obj2.base.unk0 && dmk->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                dmk = NULL;
            }
            if (!dmk)
                goto _080FDB70;
            if (Macro_0810B1F4(&dmk->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080FDB70:
            KirbySomething(obj4);
        }
        obj4->flags |= 4;
        if (obj4->unk4 <= 0xF)
        {
            obj4->objBase54 = gUnk_083571BC[(obj4->unk4 >> 1) & 3];
            obj4->objBase55 = gUnk_083571BC[((obj4->unk4+1) >> 1) & 3];
        }
        if (++obj4->unk4 > 0x34)
            obj4->flags |= 0x1000;
        else
        {
            if (!(obj4->flags & 0x800))
            {
                obj4->x += obj4->unk3C;
                obj4->y -= obj4->unk3E;
            }
            sub_0806FAC8(obj4);
        }
    }
}

static void sub_080FDC68(struct DarkMetaKnight *dmk, struct Kirby *kirby, u8 a3)
{
    struct Task *t = TaskCreate(sub_080FDF78, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct ObjectBase *tmp, *objBase = TaskGetStructPtr(t, tmp);

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = dmk->obj2.base.x;
    objBase->y = dmk->obj2.base.y;
    objBase->parent = dmk;
    objBase->counter = 0;
    objBase->roomId = dmk->obj2.base.roomId;
    objBase->unk56 = dmk->obj2.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags |= 0x10000000;
    objBase->flags |= 0x40;
    objBase->unk68 = 0x20000043;
    objBase->unk5C |= 0x80000;
    if (a3)
    {
        s32 dx = (kirby->base.base.base.x - dmk->obj2.base.x) >> 8;
        s32 dy = (dmk->obj2.base.y - kirby->base.base.base.y) >> 8;
        s32 dist = Sqrt((dx*dx + dy*dy) * 0x100);
        s32 ratio1 = dx * 0x100 / dist;
        u32 r8 = ratio1 * 0x100;
        s32 ratio2 = dy * 0x100 / dist;
        s32 r2 = ratio2 * 0x100;

        objBase->xspeed = (((ratio1<<11) - r8) * 8) >> 8;
        objBase->yspeed = (((ratio2<<11) - r2) * 8) >> 8;
        if (objBase->yspeed < 0)
        {
            if (objBase->yspeed < -0x140)
                objBase->yspeed = -0x140;
        }
        else
        {
            if (objBase->yspeed > 0x140)
                objBase->yspeed = 0x140;
        }
        if (dmk->obj2.base.flags & 1)
        {
            objBase->x -= 0xE00;
            objBase->flags |= 1;
            if (objBase->xspeed > -0x380)
                objBase->xspeed = -0x380;
        }
        else
        {
            objBase->x += 0xE00;
            objBase->flags &= ~1;
            if (objBase->xspeed < 0x380)
                objBase->xspeed = 0x380;
        }
    }
    else
    {
        objBase->xspeed = 0x700;
        objBase->yspeed = 0;
        if (dmk->obj2.base.flags & 1)
        {
            objBase->x -= 0xE00;
            objBase->xspeed = -objBase->xspeed;
            objBase->flags |= 1;
        }
        else
            objBase->x += 0xE00;
    }
    sub_0803E2B0(objBase, -0xA, -0x14, 8, 0x14);
    sub_0803E308(objBase, -2, -2, 2, 2);
    sub_080708DC(objBase, &objBase->sprite, 0x20, 0x391, 0x23, 0xA);
    objBase->sprite.unk1F = 0;
    Macro_081050E8(objBase, &objBase->sprite, 0x391, 1);
    PlaySfx(objBase, 452);
    sub_0806FE64(1, objBase);
}

static void sub_080FDF78(void)
{
    struct Sprite sprite;
    struct ObjectBase *objBase2 = TaskGetStructPtr(gCurTask, objBase2), *objBase = objBase2;
    
    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x20, &objBase->sprite);
    Macro_081050E8(objBase, &objBase->sprite, 0x391, !objBase->sprite.unk1F);
    if (objBase->flags & 1)
        objBase->objBase54 = 0x10;
    else
        objBase->objBase54 = -0x10;
    objBase->objBase55 = -0x20;
    if (objBase->parent && ((struct DarkMetaKnight *)objBase->parent)->obj2.unk80 < 1)
    {
        objBase->parent = NULL;
        objBase->flags |= 0x200;
    }
    if (!sub_0806F780(objBase))
    {
        objBase->flags |= 4;
        SetPointerSomething(objBase);
        if (!(objBase->flags & 0x800))
        {
            objBase->x += objBase->xspeed;
            objBase->y -= objBase->yspeed;
        }
        sub_0806F8BC(objBase);
    }
}

static void sub_080FE1D0(struct DarkMetaKnight *dmk)
{
    struct Task *t = TaskCreate(sub_080FE2AC, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t, obj4);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = dmk->obj2.base.x;
    obj4->y = dmk->obj2.base.y;
    obj4->parent = dmk;
    obj4->roomId = dmk->obj2.base.roomId;
    obj4->flags |= dmk->obj2.base.flags & 1;
    obj4->flags ^= 1;
    sub_080709F8(obj4, &obj4->sprite, 0x2A, 0x391, 0x22, 0x19);
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x391, 1);
}

static void sub_080FE2AC(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask, tmp), *obj4 = tmp;
    struct Sprite sprite;
    struct DarkMetaKnight *dmk, *dmk2 = obj4->parent;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (dmk2->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x2A, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x391, !obj4->sprite.unk1F);
        dmk = obj4->parent;
        if (dmk)
        {
            if (dmk->obj2.base.unk0 && dmk->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                dmk = NULL;
            }
            if (!dmk)
                goto _080FE48C;
            if (Macro_0810B1F4(&dmk->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080FE48C:
            KirbySomething(obj4);
        }
        if (!(obj4->unk4 & 7))
            PlaySfx(&dmk2->obj2.base, 450);
        ++obj4->unk4;
        if (dmk2->obj2.unk83 != 0x1C && dmk2->obj2.unk83 != 0x1D)
            obj4->flags |= 0x1000;
        else
        {
            obj4->flags |= 4;
            sub_0806FAC8(obj4);
        }
    }
}

static void sub_080FE5CC(struct DarkMetaKnight *dmk, u8 a2)
{
    struct Task *t = TaskCreate(sub_080FE76C, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_081001D8);
    struct ObjectBase *tmp, *objBase = TaskGetStructPtr(t, tmp);
    u32 var;

    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = dmk->obj2.base.x;
    objBase->y = dmk->obj2.base.y;
    objBase->parent = dmk;
    objBase->counter = 0;
    objBase->roomId = dmk->obj2.base.roomId;
    objBase->unk56 = dmk->obj2.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags |= 0x10000000;
    objBase->flags |= 0x40;
    objBase->unk68 = 0x20040043;
    objBase->unk5C |= 0x80000;
    objBase->yspeed = 0;
    objBase->y += 0x800;
    if (a2 & 1)
    {
        objBase->counter = 0x74;
        objBase->xspeed = 0xC0;
    }
    else
    {
        objBase->counter = 0x80;
        objBase->xspeed = 0x180;
    }
    if (dmk->obj2.base.flags & 1)
    {
        objBase->x -= 0x1200;
        objBase->xspeed = -objBase->xspeed;
        objBase->flags |= 1;
    }
    else
        objBase->x += 0x1200;
    objBase->unk62 = a2 & 1;
    sub_0803E2B0(objBase, -0xC, 0x80, 0xC, 0xC);
    sub_0803E308(objBase, -2, -2, 2, 2);
    var = (a2 & 1) << 2;
    sub_080FE954(objBase, var);
    sub_080FE954(objBase, var+1);
    sub_080FE954(objBase, var+2);
    sub_080FE954(objBase, var+3);
    sub_080FEEC0(objBase, a2);
    sub_080FF3F4(objBase, 0);
    sub_080FF3F4(objBase, 1);
    sub_0806FE64(4, objBase);
}

static void sub_080FE76C(void)
{
    struct ObjectBase *objBase2 = TaskGetStructPtr(gCurTask, objBase2), *objBase = objBase2;
    struct DarkMetaKnight *dmk = objBase->parent;
    
    if (objBase->roomId != 0xFFFF && dmk->obj2.base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    if (objBase->parent && ((struct DarkMetaKnight *)objBase->parent)->obj2.unk80 < 1)
    {
        objBase->parent = NULL;
        objBase->flags |= 0x200;
    }
    if (!sub_0806F780(objBase))
    {
        if (!--objBase->counter)
            objBase->flags |= 0x1000;
        else
        {
            if (!(objBase->counter & 0xF))
                PlaySfx(objBase, 451);
            objBase->flags |= 4;
            if (objBase->unk62 && objBase->counter == 0xC)
                objBase->flags |= 0x200;
            SetPointerSomething(objBase);
            if (!(objBase->flags & 0x800))
            {
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
        }
    }
}

static void sub_080FE954(struct ObjectBase *objBase, u8 a2)
{
    struct Task *t = TaskCreate(sub_080FEA70, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj4_2 = TaskGetStructPtr(t, obj4_2), *obj4 = obj4_2;
    u32 var;

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = objBase->x;
    obj4->y = objBase->y;
    obj4->parent = objBase;
    obj4->roomId = objBase->roomId;
    obj4->flags |= objBase->flags & 1;
    var = (a2 & 3);
    *&obj4->objBase54 = var << 1; // fake
    if (!(obj4->flags & 1))
        obj4->objBase54 = -obj4->objBase54;
    obj4_2->y = objBase->y - ((((a2 & 3) << 3) | (a2 & 3)) << 10);
    sub_080709F8(obj4, &obj4->sprite, 0x1E, 0x397, a2, 0x19);
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x397, 1);
}

static void sub_080FEA70(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask, tmp), *obj4 = tmp;
    struct Sprite sprite;
    s8 objBase54 = obj4->objBase54;
    struct ObjectBase *objBase, *objBase2 = obj4->parent;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (objBase2->flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x2A, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x1E, !obj4->sprite.unk1F);
        obj4->x = objBase2->x;
        if (obj4->sprite.unk1A > 3 && obj4->sprite.unk1A < 8)
        {
            obj4->flags |= 4;
            if (objBase2->counter == 0x24)
                obj4->sprite.unk1A += 0xE;
        }
        if (obj4->sprite.unk1A < 4)
        {
            obj4->flags |= 4;
            if (objBase2->counter == 0x12)
                obj4->sprite.unk1A += 0xE;
        }
        objBase = obj4->parent;
        if (objBase)
        {
            if (objBase->unk0 && objBase->flags & 0x1000)
            {
                obj4->parent = NULL;
                objBase = NULL;
            }
            if (!objBase)
                goto _080FEC9C;
            if (Macro_0810B1F4(objBase) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080FEC9C:
            KirbySomething(obj4);
        }
        Macro_080FC150(obj4);
        if (obj4->sprite.unk1A > 0xD && obj4->flags & 2)
        {
            obj4->flags |= 0x1000;
            return;
        }
        if (!(obj4->flags & 0x400)
            && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId)
        {
            obj4->sprite.unk10 += gUnk_0203AD18[0];
            obj4->sprite.unk12 += gUnk_0203AD18[1];
            Macro_0803DBC8(obj4, &obj4->sprite);
        }
        obj4->objBase54 = objBase54;
    }
}

static void sub_080FEEC0(struct ObjectBase *objBase, u8 a2)
{
    struct Task *t = TaskCreate(sub_080FEFB0, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t, obj4);
    u32 var;

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = objBase->x;
    obj4->y = objBase->y;
    obj4->parent = objBase;
    obj4->roomId = objBase->roomId;
    obj4->flags |= objBase->flags & 1;
    obj4->y = objBase->y; // duh
    var = (a2 & 3);
    sub_080709F8(obj4, &obj4->sprite, 0x28, 0x397, 2 * (a2&1) + 8, 0x17);
    obj4->sprite.unk1F = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x397, 1);
}

static void sub_080FEFB0(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask, tmp), *obj4 = tmp;
    struct Sprite sprite;
    struct ObjectBase *objBase, *objBase2 = obj4->parent;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (objBase2->flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x28, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x397, !obj4->sprite.unk1F);
        obj4->x = objBase2->x;
        objBase = obj4->parent;
        if (objBase)
        {
            if (objBase->unk0 && objBase->flags & 0x1000)
            {
                obj4->parent = NULL;
                objBase = NULL;
            }
            if (!objBase)
                goto _080FF190;
            if (Macro_0810B1F4(objBase) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080FF190:
            KirbySomething(obj4);
        }
        obj4->flags |= 4;
        if (obj4->sprite.unk1A == 0xA && objBase2->counter == 0x10)
            ++obj4->sprite.unk1A;
        if (obj4->sprite.unk1A == 8 && objBase2->counter == 0xA)
            ++obj4->sprite.unk1A;
        Macro_080FC150(obj4);
        if ((obj4->sprite.unk1A == 0xB || obj4->sprite.unk1A == 9) && obj4->flags & 2)
        {
            obj4->flags |= 0x1000;
            return;
        }
        if (!(obj4->flags & 0x400)
            && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId)
        {
            obj4->sprite.unk10 += gUnk_0203AD18[0];
            obj4->sprite.unk12 += gUnk_0203AD18[1];
            Macro_0803DBC8(obj4, &obj4->sprite);
        }
        sub_0806FAC8(obj4);
    }
}

static struct Object4 *sub_080FF3F4(struct ObjectBase *objBase, u8 a2)
{
    u8 sp0C = 0xC;
    struct Task *t = TaskCreate(sub_080FF5B0, sizeof(struct Object9), 0x3501, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object9 *tmp = TaskGetStructPtr(t, tmp);
    struct Object4 *obj4 = &tmp->unk0;
    struct Object9 *obj9 = tmp;
    u8 i;

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = objBase->x;
    obj4->y = objBase->y;
    obj4->parent = objBase;
    obj4->roomId = objBase->roomId;
    obj4->unk4 = 0;
    for (i = 0; i < 4; ++i)
    {
        obj9->unk48[i][0] = objBase->x + ((0x10 - (Rand16() & 0x1F)) * 0x100);
        obj9->unk48[i][1] = objBase->y;
        obj9->unk68[0][i] = (Rand16() & 0x3FF) + 0x300;
        obj9->unk68[2][i] = 0;
    }
    if (a2) sp0C = 0xD;
    sub_080709F8(obj4, &obj4->sprite, 1, 0x397, sp0C, 0x18);
    obj4->sprite.unk1F = 0;
    if (objBase->flags & 1)
        obj4->flags |= 1;
    Macro_081050E8(obj4, &obj4->sprite, 0x397, !obj4->sprite.unk1F);
    if (obj4->flags & 1)
        obj4->x = objBase->x;
    else
        obj4->x = objBase->x;
    obj4->y = objBase->y;
    return obj4;
}

static void sub_080FF5B0(void)
{
    struct Sprite sprite;
    struct Object9 *tmp;
    struct Object4 *obj4;
    struct ObjectBase *objBase;
    struct Object9 *obj9;

    TaskGetStructPtr(gCurTask, tmp);
    obj4 = &tmp->unk0;
    objBase = obj4->parent;
    obj9 = tmp;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        u8 i;

        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 1, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x397, !obj4->sprite.unk1F);
        obj4->roomId = objBase->roomId;
        if (objBase->flags & 0x1000)
        {
            obj4->unk4 |= 0x10;
            obj4->flags |= 0x1000;
            return;
        }
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
        {
            s32 x = obj4->x, y = obj4->y;

            for (i = 0; i < 4; ++i)
            {
                obj4->x = obj9->unk48[i][0];
                obj4->y = obj9->unk48[i][1];
                sub_0803DBC8(obj4);
            }
            obj4->x = x;
            obj4->y = y;
            return;
        }
        Macro_080FC150(obj4);
        for (i = 0; i < 4; ++i)
        {
            if ((obj4->unk4 >> i) & 1)
            {
                if (obj4->flags & 1)
                {
                    obj9->unk68[2][i] -= 0x40;
                    if (objBase->x - obj9->unk48[i][0] > 0x1000)
                        obj4->unk4 &= ~(1 << i);
                }
                else
                {
                    obj9->unk68[2][i] += 0x40;
                    if (obj9->unk48[i][0] - objBase->x > 0x1000)
                        obj4->unk4 &= ~(1 << i);
                }
            }
            else
            {
                if (obj4->flags & 1)
                {
                    obj9->unk68[2][i] += 0x40;
                    if (obj9->unk48[i][0] - objBase->x > 0x200)
                        obj4->unk4 |= 1 << i;
                }
                else
                {
                    obj9->unk68[2][i] -= 0x40;
                    if (objBase->x - obj9->unk48[i][0] > 0x200)
                        obj4->unk4 |= 1 << i;
                }
            }
            if (obj9->unk68[2][i] > 0x300)
                obj9->unk68[2][i] = 0x300;
            if (obj9->unk68[2][i] < -0x300)
                obj9->unk68[2][i] = -0x300;
            if (obj4->flags & 1)
            {
                if (obj9->unk68[2][i] < 0)
                    obj4->sprite.unk14 = 0x680;
                else
                    obj4->sprite.unk14 = 0x600;
            }
            else
            {
                if (obj9->unk68[2][i] > 0)
                    obj4->sprite.unk14 = 0x680;
                else
                    obj4->sprite.unk14 = 0x600;
            }
            obj9->unk48[i][0] += obj9->unk68[2][i];
            obj9->unk48[i][1] -= obj9->unk68[0][i];
            if (obj9->unk48[i][1] < 0x9000)
            {
                if (obj4->unk4 & 0x10)
                {
                    obj9->unk68[0][i] = 0;
                    continue;
                }
                obj9->unk48[i][0] = objBase->x + ((0x10 - (Rand16() & 0x1F)) * 0x100);
                obj9->unk48[i][1] = objBase->y;
                obj9->unk68[0][i] = (Rand16() & 0x3FF) + 0x300;
                obj9->unk68[2][i] = 0;
            }
            obj4->sprite.unk10 = ((obj9->unk48[i][0] + (objBase->objBase54 * 0x100)) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8);
            obj4->sprite.unk12 = ((obj9->unk48[i][1] + (objBase->objBase55 * 0x100)) >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8);
            if (!(obj4->flags & 0x400) && gKirbys[gUnk_0203AD3C].base.base.base.roomId == obj4->roomId)
            {
                obj4->sprite.unk10 += gUnk_0203AD18[0];
                obj4->sprite.unk12 += gUnk_0203AD18[1];
                Macro_0803DBC8(obj4, &obj4->sprite);
            }
        }
        if (!obj9->unk68[0][0] && !obj9->unk68[0][1]
            && !obj9->unk68[1][0] && !obj9->unk68[1][1])
            obj4->flags |= 0x1000;
    }
}

static void sub_080FFBC0(struct DarkMetaKnight *dmk)
{
    struct Task *t = TaskCreate(sub_080FFC68, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *tmp = TaskGetStructPtr(t, tmp), *obj4 = tmp;

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = dmk->obj2.base.x;
    obj4->y = dmk->obj2.base.y;
    obj4->parent = dmk;
    obj4->roomId = dmk->obj2.base.roomId;
    if (dmk->obj2.base.flags & 1)
        obj4->x -= 0x2000;
    else
    {
        obj4->flags |= 1;
        obj4->x += 0x2000;
    }
    sub_080709F8(obj4, &obj4->sprite, 8, 0x393, 0, 0xA);
}

static void sub_080FFC68(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask, tmp), *obj4 = tmp;
    struct Sprite sprite;
    struct DarkMetaKnight *dmk, *dmk2 = obj4->parent;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (dmk2->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 8, &obj4->sprite);
        if (dmk2->obj2.base.flags & 1)
            obj4->x = dmk2->obj2.base.x - 0x2000;
        else
        {
            obj4->flags |= 1;
            obj4->x = dmk2->obj2.base.x + 0x2000;
        }
        obj4->y = dmk2->obj2.base.y;
        dmk = obj4->parent;
        if (dmk)
        {
            if (dmk->obj2.base.unk0 && dmk->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                dmk = NULL;
            }
            if (!dmk)
                goto _080FFE14;
            if (Macro_0810B1F4(&dmk->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080FFE14:
            KirbySomething(obj4);
        }
        if (obj4->flags & 2)
            obj4->flags |= 0x1000;
        else
            sub_0806FAC8(obj4);
    }
}

void sub_080FFEA4(struct DarkMetaKnight *dmk)
{
    dmk->obj2.base.flags &= ~8;
    if (dmk->obj2.unk80 <= 0)
        sub_080FB694(dmk);
    else
    {
        ObjectSetFunc(dmk, 0, sub_080FFF84);
        dmk->obj2.base.xspeed = 0;
        dmk->obj2.base.yspeed = 0;
        dmk->obj2.base.flags &= ~0x40;
        dmk->obj2.base.counter = 0x20;
    }
}

static void sub_080FFEF4(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 0, sub_080F6104);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    dmk->obj2.base.flags &= ~0x40;
    dmk->obj2.base.counter = 0x60;
    dmk->obj2.unk85 = 0;
}

static void sub_080FFF2C(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 0x29, sub_080F6300);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    dmk->obj2.base.flags &= ~0x40;
    dmk->obj2.unk85 = 0;
}

static void sub_080FFF60(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 0, sub_080F5974);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
}

static void sub_080FFF84(struct DarkMetaKnight *dmk)
{
    if (!--dmk->obj2.base.counter)
        sub_080F7B34(dmk);
}

static void sub_080FFFA0(struct DarkMetaKnight *dmk)
{
    dmk->unkC2 = 1;
    dmk->unkC0 = 0;
    dmk->obj2.unk9E = 0;
}

static void sub_080FFFB8(struct DarkMetaKnight *dmk, u8 a2)
{
    ObjectSetFunc(dmk, 4, sub_080F99BC);
    dmk->obj2.unk9E = a2;
    dmk->obj2.base.counter = 0xE;
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
}

static void sub_080FFFE8(struct DarkMetaKnight *dmk)
{
    dmk->unkC8 = 0;
    ++dmk->unkC9;
    ObjectSetFunc(dmk, 0x17, sub_080F9A2C);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.kirby3 = sub_0803D368(&dmk->obj2.base);
    if (dmk->obj2.base.x > dmk->obj2.kirby3->base.base.base.x)
        dmk->obj2.base.flags |= 1;
    else
        dmk->obj2.base.flags &= ~1;
    dmk->obj2.base.xspeed = 0;
}

static void sub_08100048(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 0x18, sub_080FA9E8);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.base.xspeed = 0x100;
    if (dmk->obj2.base.flags & 1)
        dmk->obj2.base.xspeed = -dmk->obj2.base.xspeed;
    if (dmk->obj2.base.flags & 0x20)
        dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.counter = 0x18;
}

static void sub_08100094(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 0x17, sub_080FAC64);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.counter = 0x18;
}

static void sub_081000C0(struct DarkMetaKnight *dmk)
{
    ObjectSetFunc(dmk, 0x1E, sub_081000F0);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0x3D0;
    dmk->obj2.base.counter = 6;
    dmk->obj2.unk9F = 0;
}

static void sub_081000F0(struct DarkMetaKnight *dmk)
{
    if (!--dmk->obj2.base.counter)
        sub_08100048(dmk);
}

static void sub_0810010C(struct DarkMetaKnight *dmk)
{
    sub_080886A8(&dmk->obj2.base);
    sub_08088700(&dmk->obj2.base, 0xC);
    ObjectSetFunc(dmk, 0x2A, sub_080FB9FC);
    dmk->obj2.base.xspeed = -0x100; // dead
    dmk->obj2.base.yspeed = 0x300;
    dmk->obj2.base.xspeed = -((dmk->obj2.base.x - 0x17000) >> 5);
    dmk->obj2.base.flags &= ~2;
    dmk->obj2.base.flags &= ~0x20;
    dmk->obj2.base.flags |= 0x40;
    dmk->obj2.base.flags |= 0x200;
    dmk->obj2.base.flags ^= 1;
}

static void sub_08100170(struct Task *t)
{
    struct Object4 *obj4 = TaskGetStructPtr(t, obj4);
    struct DarkMetaKnight *dmk = obj4->parent;

    dmk->unkBC = NULL;
    sub_0803DCCC(t);
}

static void sub_081001A4(struct Task *t)
{
    struct Object4 *obj4 = TaskGetStructPtr(t, obj4);
    struct DarkMetaKnight *dmk = obj4->parent;

    dmk->unkB8 = NULL;
    sub_0803DCCC(t);
}

static void sub_081001D8(struct Task *t)
{
    struct ObjectBase *objBase = TaskGetStructPtr(t, objBase);

    sub_080700D8(objBase);
    sub_0803DCCC(t);
}
