#include "dark_meta_knight.h"
#include "object.h"
#include "functions.h"
#include "kirby.h"
#include "save.h"
#include "constants/kirby.h"

void sub_080F5A6C(struct DarkMetaKnight *);
void sub_080F5DA0(struct DarkMetaKnight *);
void sub_080F6454(struct DarkMetaKnight *);
void sub_080F6544(struct DarkMetaKnight *);
void sub_080F6728(struct DarkMetaKnight *);
void sub_080F6824(struct DarkMetaKnight *);
void sub_080F6AEC(struct DarkMetaKnight *, u8);
void sub_080F6ED8(struct DarkMetaKnight *);
void sub_080F704C(struct DarkMetaKnight *);
void sub_080F714C(struct DarkMetaKnight *);
void sub_080F77D0(struct DarkMetaKnight *);
void sub_080F7950(struct DarkMetaKnight *);
void sub_080F7B34(struct DarkMetaKnight *);
void sub_080F7CD8(struct DarkMetaKnight *);
void sub_080F7D4C(struct DarkMetaKnight *);
void sub_080F7DB8(struct DarkMetaKnight *);
void sub_080F8204(struct DarkMetaKnight *);
void sub_080F8300(struct DarkMetaKnight *);
void sub_080F8490(struct DarkMetaKnight *);
void sub_080F850C(struct DarkMetaKnight *);
void sub_080F87C8(struct DarkMetaKnight *);
void sub_080F88C0(struct DarkMetaKnight *);
void sub_080F8B70(struct DarkMetaKnight *);
void sub_080F8C84(struct DarkMetaKnight *);
void sub_080F8FD0(struct DarkMetaKnight *);
void sub_080F9310(struct DarkMetaKnight *);
void sub_080F95D4(struct DarkMetaKnight *);
void sub_080FA2EC(struct DarkMetaKnight *);
void sub_080FB1CC(struct DarkMetaKnight *);
void sub_080FB2CC(struct DarkMetaKnight *);
void sub_080FB504(struct DarkMetaKnight *);
void sub_080FB694(struct DarkMetaKnight *);
struct ObjectBase *sub_080FBFE8(struct DarkMetaKnight *);
struct Object4 *sub_080FC5F8(struct DarkMetaKnight *);
struct Object4 *sub_080FD8B4(struct DarkMetaKnight *);
void sub_080FFEF4(struct DarkMetaKnight *);
void sub_080FFF2C(struct DarkMetaKnight *);
void sub_080FFF60(struct DarkMetaKnight *);
void sub_080FFF84(struct DarkMetaKnight *);
void sub_080FFFA0(struct DarkMetaKnight *);
void sub_080FFFB8(struct DarkMetaKnight *, u8);
extern const s32 gUnk_083571C0[][2];
extern const struct Unk_08357260 gUnk_0835719C[];

void *CreateDarkMetaKnight(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct DarkMetaKnight), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct DarkMetaKnight *tmp, *dmk = TaskGetStructPtr(t, tmp), *dmk2 = dmk;
    u16 unk65E;

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

void sub_080F5974(struct DarkMetaKnight *dmk)
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

void sub_080F5A6C(struct DarkMetaKnight *dmk)
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
            SpriteSomething(&sprite, 0x6000000, 0x394, 1, 0xFF, 0, 0, 0, 0, 0x10, dmk->obj2.base.unk10.unk1F & 0xF, 0x80000);
            SpriteSomething(&sprite, 0x6000000, 0x394, 3, 0xFF, 0, 0, 0, 0, 0x10, dmk2->unkB4->unk10.unk1F & 0xF, 0x80000);
        }
        dmk->obj2.unk9F = 0x36;
    }
}

void sub_080F5CD0(struct DarkMetaKnight *dmk)
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

void sub_080F5DA0(struct DarkMetaKnight *dmk)
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
            sub_0803CD98(dmk->obj2.base.unk10.unk1F, 0x394, 1, 0x390, 0, dmk->obj2.base.counter);
            sub_0803CD98(dmk2->unkB4->unk10.unk1F, 0x394, 3, 0x391, 0, dmk->obj2.base.counter);
        }
        dmk->obj2.base.counter += 2;
        if (dmk->obj2.base.counter > 0x100)
            dmk->obj2.base.counter = 0x100;
    }
    else
        ++dmk->obj2.unk85;
}

void sub_080F6104(struct DarkMetaKnight *dmk)
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

void sub_080F6300(struct DarkMetaKnight *dmk)
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

void sub_080F6454(struct DarkMetaKnight *dmk)
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

void sub_080F6544(struct DarkMetaKnight *dmk)
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
                sub_0803CD98(dmk->obj2.base.unk10.unk1F, 0x390, 0, 0x394, 0, dmk->obj2.base.counter);
                sub_0803CD98(dmk2->unkB4->unk10.unk1F, 0x391, 0, 0x394, 2, dmk->obj2.base.counter);
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

void sub_080F6728(struct DarkMetaKnight *dmk)
{
    struct Sprite sprite;

    ObjectSetFunc(dmk, 0, sub_080F6824);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    dmk->obj2.base.counter = 0x20;
    dmk->obj2.unk85 = 0;
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
    {
        SpriteSomething(&sprite, 0x6000000, 0x394, 0, 0xFF, 0, 0, 0, 0, 0x10, dmk->obj2.base.unk10.unk1F & 0xF, 0x80000);
        SpriteSomething(&sprite, 0x6000000, 0x394, 2, 0xFF, 0, 0, 0, 0, 0x10, dmk->unkB4->unk10.unk1F & 0xF, 0x80000);
    }
}

void sub_080F6824(struct DarkMetaKnight *dmk)
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

void sub_080F6AEC(struct DarkMetaKnight *dmk, u8 a2)
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
        SpriteSomething(&sprite, 0x6000000, 0x394, 0, 0xFF, 0, 0, 0, 0, 0x10, dmk->obj2.base.unk10.unk1F & 0xF, 0x80000);
        SpriteSomething(&sprite, 0x6000000, 0x394, 2, 0xFF, 0, 0, 0, 0, 0x10, dmk->unkB4->unk10.unk1F & 0xF, 0x80000);
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

void sub_080F6ED8(struct DarkMetaKnight *dmk)
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

void sub_080F704C(struct DarkMetaKnight *dmk)
{
    struct Sprite sprite;

    ObjectSetFunc(dmk, 0x1F, sub_080F714C);
    dmk->obj2.base.xspeed = 0;
    dmk->obj2.base.yspeed = 0;
    dmk->obj2.unk9E = 0;
    dmk->obj2.unk9F = 0;
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == dmk->obj2.base.roomId)
    {
        SpriteSomething(&sprite, 0x6000000, 0x394, 1, 0xFF, 0, 0, 0, 0, 0x10, dmk->obj2.base.unk10.unk1F & 0xF, 0x80000);
        SpriteSomething(&sprite, 0x6000000, 0x394, 3, 0xFF, 0, 0, 0, 0, 0x10, dmk->unkB4->unk10.unk1F & 0xF, 0x80000);
    }
}

void sub_080F714C(struct DarkMetaKnight *dmk)
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
            sub_0803CD98(dmk->obj2.base.unk10.unk1F, 0x394, 1, 0x390, 0, dmk->obj2.base.counter);
            sub_0803CD98(dmk2->unkB4->unk10.unk1F, 0x394, 3, 0x391, 0, dmk->obj2.base.counter);
        }
        dmk->obj2.base.counter += 2;
        if (dmk->obj2.base.counter > 0x100)
            dmk->obj2.base.counter = 0x100;
    }
    else
        ++dmk->obj2.unk9F;
}

void sub_080F738C(struct DarkMetaKnight *dmk)
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

void sub_080F7490(struct DarkMetaKnight *dmk)
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

void sub_080F75B4(struct DarkMetaKnight *dmk)
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

void sub_080F76DC(struct DarkMetaKnight *dmk)
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

void sub_080F77D0(struct DarkMetaKnight *dmk)
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

void sub_080F7950(struct DarkMetaKnight *dmk)
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

void sub_080F79AC(struct DarkMetaKnight *dmk)
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

void sub_080F7A60(struct DarkMetaKnight *dmk)
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

void sub_080F7B34(struct DarkMetaKnight *dmk)
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

void sub_080F7CD8(struct DarkMetaKnight *dmk)
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

void sub_080F7D4C(struct DarkMetaKnight *dmk)
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

void sub_080F7DB8(struct DarkMetaKnight *dmk)
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

void sub_080F8204(struct DarkMetaKnight *dmk)
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

void sub_080F8300(struct DarkMetaKnight *dmk)
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

void sub_080F8490(struct DarkMetaKnight *dmk)
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

void sub_080F850C(struct DarkMetaKnight *dmk)
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

void sub_080F87C8(struct DarkMetaKnight *dmk)
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

void sub_080F88C0(struct DarkMetaKnight *dmk)
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

void sub_080F8B70(struct DarkMetaKnight *dmk)
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

void sub_080F8C84(struct DarkMetaKnight *dmk)
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
