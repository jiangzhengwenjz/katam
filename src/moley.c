#include "moley.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"

void sub_080EB9AC(struct Moley *);
void sub_080EBBD0(struct Moley *);
void sub_080EC504(struct Moley *);
void sub_080ED078(struct Moley *);
void sub_080ED520(struct Moley *);
void sub_080ED54C(struct Moley *);
void sub_080ED578(struct Moley *);

void *CreateMoley(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Moley), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Moley *tmp = TaskGetStructPtr(t, tmp), *moley = tmp;
    u16 unk65E;

    InitObject(&moley->obj2, template, a2);
    moley->obj2.base.unkC |= 1;
    moley->obj2.base.flags |= 0x2000000;
    moley->obj2.base.flags |= 0x100;
    moley->obj2.base.flags |= 0x400;
    moley->obj2.base.flags |= 0x200;
    moley->obj2.base.flags |= 0x40;
    moley->obj2.base.flags |= 0x200000;
    moley->unkB4 = 1;
    moley->unkB6 = 0;
    moley->unkB5 = 0;
    if (moley->obj2.base.x > moley->obj2.kirby3->base.base.base.x)
        moley->obj2.base.flags |= 1;
    else
        moley->obj2.base.flags &= ~1;
    moley->obj2.base.unk5C &= ~7;
    moley->obj2.base.unk5C |= 3;
    moley->obj2.base.unk5C |= 0x1080A0;
    sub_0803E2B0(&moley->obj2.base, -0xC, -0x10, 0xC, 0x14);
    sub_0803E308(&moley->obj2.base, -0xA, -0x10, 0xA, 6);
    ObjectInitSprite(&moley->obj2);
    moley->obj2.unk9E = 0;
    moley->obj2.unk7C = 0;
    unk65E = gCurLevelInfo[moley->obj2.base.unk56].unk65E;
    sub_08002A44(unk65E, sub_08002A0C(unk65E), 0);
    sub_08002A1C(unk65E, 0);
    if (gKirbys[gUnk_0203AD3C].base.base.base.roomId == moley->obj2.base.roomId && !(gUnk_0203AD20 & 4))
        m4aSongNumStartOrChange(sub_08002A0C(unk65E));
    sub_080ED520(moley);
    return moley;
}

void sub_080EB2C0(struct Moley *moley)
{
    moley->obj2.kirby3 = sub_0803D368(&moley->obj2.base);
    moley->obj2.base.flags |= 4;
    if (!(moley->obj2.kirby3->base.base.base.unkC & 0x8000)
        && moley->obj2.base.roomId == moley->obj2.kirby3->base.base.base.roomId
        && sub_08039430(&moley->obj2.kirby3->base.base,
            moley->obj2.base.x, moley->obj2.base.y,
            moley->obj2.object->unk1A, moley->obj2.object->unk1C,
            moley->obj2.object->unk1E, moley->obj2.object->unk20))
    {
        Macro_081003EC(&moley->obj2, &moley->obj2.kirby3->base.base.base);
        sub_080ED54C(moley);
    }
}

void sub_080EB39C(struct Moley *moley)
{
    if (moley->obj2.base.counter == 0x8C)
        sub_0806FE64(4, &moley->obj2.base);
    if (moley->obj2.base.counter < 0x78
        && !(moley->obj2.base.counter & 7))
    {
        if (Rand16() & 1)
            sub_080ED078(moley);
        if (!(Rand16() & 3))
            sub_080ED078(moley);
    }
    if (moley->obj2.base.counter < 0x8D
        && !(moley->obj2.base.counter & 0xF))
        PlaySfx(&moley->obj2.base, 394);
    if (!--moley->obj2.base.counter)
    {
        sub_080700D8(&moley->obj2.base);
        sub_080ED578(moley);
    }
}

void sub_080EB4B8(struct Moley *moley)
{
    switch (moley->obj2.unk83)
    {
    case 3:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 4;
            moley->obj2.base.flags &= ~2;
            PlaySfx(&moley->obj2.base, 394);
        }
        break;
    case 4:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 0;
            moley->obj2.base.flags &= ~2;
        }
        break;
    case 0:
        if (moley->obj2.base.counter == 0x10)
            Macro_08100F18(&moley->obj2);
        if (!--moley->obj2.base.counter)
        {
            moley->obj2.unk83 = 5;
            moley->obj2.base.flags &= ~2;
        }
        break;
    case 5:
        if (moley->obj2.base.flags & 2)
        {
            moley->obj2.unk83 = 6;
            moley->obj2.base.flags &= ~2;
            PlaySfx(&moley->obj2.base, 394);
        }
        break;
    case 6:
        if (moley->obj2.base.flags & 2)
            sub_080EBBD0(moley);
        break;
    }
}

void sub_080EB700(struct Moley *moley)
{
    s8 r1;
    u8 r4 = 3, r5 = 3, r6 = 3, sb = 2, ip = 2, r8 = 3;

    if (moley->obj2.unk80 > gUnk_08351530[0x12][gUnk_0203AD30 - 1] >> 1)
    {
        r4 = 4;
        r5 = 4;
        r6 = 5;
        sb = 1;
        ip = 1;
        r8 = 1;
    }
    r1 = Rand16() & 0xF;
    if ((r1 -= r4) < 0)
    {
        moley->obj2.base.sprite.unk8 &= ~0x800;
        moley->obj2.base.x = 0x1F800;
        moley->obj2.base.y = 0x11800;
    }
    else if ((r1 -= r5) < 0)
    {
        moley->obj2.base.sprite.unk8 &= ~0x800;
        moley->obj2.base.x = 0x25000;
        moley->obj2.base.y = 0x10800;
    }
    else if ((r1 -= r6) < 0)
    {
        moley->obj2.base.sprite.unk8 &= ~0x800;
        moley->obj2.base.x = 0x2A000;
        moley->obj2.base.y = 0xF800;
    }
    else if ((r1 -= sb) < 0)
    {
        moley->obj2.base.sprite.unk8 |= 0x800;
        moley->obj2.base.x = 0x1F800;
        moley->obj2.base.y = 0xF800;
    }
    else if ((r1 -= ip) < 0)
    {
        moley->obj2.base.sprite.unk8 |= 0x800;
        moley->obj2.base.x = 0x25000;
        moley->obj2.base.y = 0xE800;
    }
    else if ((r1 -= r8) < 0)
    {
        moley->obj2.base.sprite.unk8 |= 0x800;
        moley->obj2.base.x = 0x2A000;
        moley->obj2.base.y = 0xD800;
    }
}

void sub_080EB848(struct Moley *moley)
{
    if (moley->obj2.unk80 <= 0)
        sub_080EC504(moley);
    else
    {
        ObjectSetFunc(moley, 2, sub_080EB9AC);
        moley->obj2.base.xspeed = 0;
        moley->obj2.base.yspeed = 0;
        moley->obj2.kirby3 = sub_0803D368(&moley->obj2.base);
        if (moley->obj2.base.x > moley->obj2.kirby3->base.base.base.x)
            moley->obj2.base.flags |= 1;
        else
            moley->obj2.base.flags &= ~1;
        moley->obj2.base.flags &= ~0x200;
        moley->obj2.base.flags &= ~0x400;
        moley->obj2.base.flags &= ~2;
        if (Rand16() & 1)
            moley->obj2.base.counter = 0x10;
        else
            moley->obj2.base.counter = 0x30;
        if (moley->obj2.base.sprite.unk8 & 0x800)
            sub_0803E2B0(&moley->obj2.base, -0xA, -0x10, 0xA, -4);
        else
            sub_0803E2B0(&moley->obj2.base, -0xA, 4, 0xA, 0x14);
        PlaySfx(&moley->obj2.base, 394);
    }
}
