#include "gobbler.h"
#include "object.h"
#include "functions.h"
#include "kirby.h"
#include "save.h"
#include "malloc_vram.h"
#include "random.h"
#include "constants/kirby.h"

void sub_080E4488(struct Gobbler *);
void sub_080E498C(struct Gobbler *);
void sub_080E4A6C(struct Gobbler *);
void sub_080E4BD0(struct Gobbler *);
void sub_080E4CAC(struct Gobbler *);
void sub_080E4E6C(struct Gobbler *);
void sub_080E4F0C(struct Gobbler *);
void sub_080E4FD8(struct Gobbler *);
void sub_080E50E0(struct Gobbler *);
void sub_080E53E8(struct Gobbler *);
void sub_080E5488(struct Gobbler *);
void sub_080E5554(struct Gobbler *);
void sub_080E5644(struct Gobbler *);
void sub_080E5A20(struct Gobbler *);
void sub_080E5E58(struct Gobbler *);
void sub_080E6470(struct Gobbler *);
void sub_080E6784(struct Object2 *);
void sub_080E79D4(struct Gobbler *);
void sub_080E79F8(struct Gobbler *);
void sub_080E7A18(struct Gobbler *);
void sub_080E7A38(struct Gobbler *);
void sub_080E7B0C(struct Gobbler *);
void sub_080E7B7C(struct Gobbler *);
void sub_080E7BA4(struct Gobbler *);
void sub_080E7BCC(struct Gobbler *);
void sub_080E7C00(struct Gobbler *);
void sub_080E7C54(struct Gobbler *);

extern const s16 gUnk_08356B48[];

void *CreateGobbler(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Gobbler), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Gobbler *tmp = TaskGetStructPtr(t), *gobbler = tmp;

    InitObject(&gobbler->obj2, template, a2);
    gobbler->obj2.base.unkC |= 1;
    gobbler->obj2.base.unkC |= 4;
    gobbler->obj2.base.flags |= 0x200;
    gobbler->obj2.base.flags |= 0x100;
    gobbler->obj2.base.flags |= 0x2000000;
    gobbler->obj2.base.flags |= 0x200000;
    gobbler->obj2.base.flags |= 1;
    gobbler->babies[0] = NULL;
    gobbler->babies[1] = NULL;
    gobbler->babies[2] = NULL;
    gobbler->unkC0 = 0;
    gobbler->unkC1 = 0;
    gobbler->unkC2 = 0;
    gobbler->obj2.base.flags |= 0x40;
    gobbler->obj2.base.unk5C &= ~7;
    gobbler->obj2.base.unk5C |= 3;
    gobbler->obj2.base.unk5C |= 0x1080A0;
    sub_0803E2B0(&gobbler->obj2.base, -0x19, -0xA, 0x17, 0xE);
    sub_0803E308(&gobbler->obj2.base, -0xF, -7, 0xC, 0xA);
    ObjectInitSprite(&gobbler->obj2);
    Macro_080E7D74(&gobbler->obj2);
    gobbler->obj2.unk9E = 0;
    gobbler->obj2.unk7C = sub_080E7C54;
    sub_080E79D4(gobbler);
    sub_080E5E58(gobbler);
    sub_080E6470(gobbler);
    return gobbler;
}

void sub_080E3FFC(struct Gobbler *gobbler)
{
    gobbler->obj2.kirby3 = sub_0803D368(&gobbler->obj2.base);
    if (!(gobbler->obj2.kirby3->base.base.base.unkC & 0x8000)
        && gobbler->obj2.base.roomId == gobbler->obj2.kirby3->base.base.base.roomId
        && sub_08039430(&gobbler->obj2.kirby3->base.base, gobbler->obj2.base.x, gobbler->obj2.base.y, gobbler->obj2.object->unk1A, gobbler->obj2.object->unk1C, gobbler->obj2.object->unk1E, gobbler->obj2.object->unk20))
    {
        Macro_081003EC(&gobbler->obj2, &gobbler->obj2.kirby3->base.base.base);
        sub_080E43B4(gobbler);
        gobbler->obj2.base.counter = 0x5A;
        Macro_08100F18(&gobbler->obj2);
    }
}

void sub_080E41D0(struct Gobbler *gobbler)
{
    s8 r1;
    bool32 r3;
    u8 r8 = 3, r7 = 2, sb = 2, sl = 4, unk = 4;
    struct Gobbler *gobbler2 = gobbler;

    gobbler->obj2.kirby3 = sub_0803D5CC(&gobbler->obj2.base);
    if (gobbler->obj2.kirby3->base.base.base.y <= 0xE000)
    {
        r8 = 4;
        r7 = 4;
        sb = 8;
        gobbler->unkC0 = 0;
        gobbler->unkC1 = 0;
    }
    if (gobbler2->unkC0)
        sub_080E4E6C(gobbler);
    else if (gobbler2->unkC1)
        sub_080E53E8(gobbler);
    else
    {
        if (gobbler2->babies[0] && gobbler2->babies[1] && gobbler2->babies[2])
        {
            r7 += r8;
            r8 = 0;
        }
        if (!gobbler2->babies[0] && !gobbler2->babies[1] && !gobbler2->babies[2])
        {
            r8 += r7;
            r7 = 0;
            r3 = TRUE;
        }
        else
        {
            r3 = FALSE;
            if (gobbler2->babies[0] && gobbler2->babies[0]->unk78 == sub_080E6784)
                r3 = TRUE;
            if (gobbler2->babies[1] && gobbler2->babies[1]->unk78 == sub_080E6784)
                r3 = TRUE;
            if (gobbler2->babies[2] && gobbler2->babies[2]->unk78 == sub_080E6784)
                r3 = TRUE;
        }
        if (!r3) r7 = 0;
        if (gobbler->obj2.unk80 <= gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1
            && !gobbler2->unkC0 && !gobbler2->unkC1)
            ++gobbler2->unkC2;
        r1 = Rand16() & 0xF;
        
        if ((r1 -= r8) < 0)
            sub_080E7B0C(gobbler);
        else if ((r1 -= r7) < 0)
            sub_080E7B7C(gobbler);
        else if ((r1 -= sb) < 0)
            sub_080E7BA4(gobbler);
        else if ((r1 -= sl) < 0)
            sub_080E4BD0(gobbler);
        else if ((r1 -= sl) < 0)
            sub_080E4E6C(gobbler);
        else if ((r1 -= unk) < 0)
            sub_080E53E8(gobbler);
        else
            sub_080E43B4(gobbler);
    }
}

void sub_080E43B4(struct Gobbler *gobbler)
{
    if (gobbler->obj2.unk80 <= 0)
        sub_080E7C00(gobbler);
    else
    {
        ObjectSetFunc(gobbler, 0, sub_080E4488);
        gobbler->obj2.base.flags &= ~0x200;
        gobbler->obj2.base.flags |= 0x40;
        gobbler->obj2.base.yspeed = 0;
        if (gobbler->obj2.subtype || gobbler->obj2.unk80 <= gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
            gobbler->obj2.base.counter = (Rand16() & 0xF) + 0x18;
        else
            gobbler->obj2.base.counter = (Rand16() & 0xF) + 0x40;
        gobbler->obj2.base.counter += Rand16() & 0x1F;
    }
}

void sub_080E4488(struct Gobbler *gobbler)
{
    struct Gobbler *gobbler2 = gobbler;

    if (gobbler->obj2.base.xspeed < 0)
    {
        gobbler->obj2.base.xspeed += 0xF;
        if (gobbler->obj2.base.xspeed > 0)
            gobbler->obj2.base.xspeed = 0;
    }
    else
    {
        gobbler->obj2.base.xspeed -= 0xF;
        if (gobbler->obj2.base.xspeed < 0)
            gobbler->obj2.base.xspeed = 0;
    }
    if (!gobbler->obj2.unk83)
        gobbler->obj2.base.yspeed = gUnk_08356B48[(gobbler->obj2.base.counter >> 4) & 3];
    else if (gobbler->obj2.base.unk1 == 1)
    {
        bool32 r = Rand16() & 1;

        if (gobbler->obj2.base.y == 0xF000)
            r = FALSE;
        if (gobbler->obj2.base.y == 0x11800)
            r = TRUE;
        if (r)
            gobbler->obj2.base.yspeed = 0x40;
        else
            gobbler->obj2.base.yspeed = -0x40;
    }
    if (gobbler->obj2.base.y - gobbler->obj2.base.yspeed <= 0xF000)
    {
        gobbler->obj2.base.yspeed = 0;
        gobbler->obj2.base.y = 0xF000;
    }
    if (gobbler->obj2.base.y - gobbler->obj2.base.yspeed >= 0x11800)
    {
        gobbler->obj2.base.yspeed = 0;
        gobbler->obj2.base.y = 0x11800;
    }
    if (gobbler->obj2.unk83 == 1)
    {
        if (gobbler->obj2.base.flags & 2
            || (gobbler->obj2.base.unk1 > 0x19 && (gobbler2->unkC0 || gobbler2->unkC1)))
        {
            gobbler->obj2.base.flags ^= 1;
            gobbler->obj2.unk83 = 0;
        }
    }
    else
    {
        gobbler->obj2.base.flags |= 4;
        if (!--gobbler->obj2.base.counter)
        {
            gobbler->obj2.base.yspeed = 0;
            sub_080E41D0(gobbler);
        }
    }
}

void sub_080E45BC(struct Gobbler *gobbler)
{
    if (gobbler->obj2.base.yspeed < 0)
    {
        gobbler->obj2.base.yspeed += 0xF;
        if (gobbler->obj2.base.yspeed > 0)
            gobbler->obj2.base.yspeed = 0;
    }
    else
    {
        gobbler->obj2.base.yspeed -= 0xF;
        if (gobbler->obj2.base.yspeed < 0)
            gobbler->obj2.base.yspeed = 0;
    }
    if (gobbler->obj2.unk83 == 1)
    {
        if (gobbler->obj2.base.unk1 < 8)
        {
            if (gobbler->obj2.base.xspeed < 0)
            {
                gobbler->obj2.base.xspeed += 0xF;
                if (gobbler->obj2.base.xspeed > 0)
                    gobbler->obj2.base.xspeed = 0;
            }
            else
            {
                gobbler->obj2.base.xspeed -= 0xF;
                if (gobbler->obj2.base.xspeed < 0)
                    gobbler->obj2.base.xspeed = 0;
            }
        }
        else if (gobbler->obj2.base.unk1 < 0x18)
        {
            if (gobbler->obj2.base.flags & 1)
            {
                gobbler->obj2.base.xspeed -= 0x20;
                if (gobbler->obj2.base.xspeed < -0x100)
                    gobbler->obj2.base.xspeed = -0x100;
                else if (gobbler->obj2.base.xspeed > 0x100)
                    gobbler->obj2.base.xspeed = 0x100;
            }
            else
            {
                gobbler->obj2.base.xspeed += 0x20;
                if (gobbler->obj2.base.xspeed > 0x100)
                    gobbler->obj2.base.xspeed = 0x100;
                else if (gobbler->obj2.base.xspeed < -0x100)
                    gobbler->obj2.base.xspeed = -0x100;
            }
        }
        else
        {
            if (gobbler->obj2.base.flags & 1)
            {
                gobbler->obj2.base.xspeed += 0x20;
                if (gobbler->obj2.base.xspeed < -0x200)
                    gobbler->obj2.base.xspeed = -0x200;
                else if (gobbler->obj2.base.xspeed > 0x200)
                    gobbler->obj2.base.xspeed = 0x200;
            }
            else
            {
                gobbler->obj2.base.xspeed -= 0x20;
                if (gobbler->obj2.base.xspeed > 0x200)
                    gobbler->obj2.base.xspeed = 0x200;
                else if (gobbler->obj2.base.xspeed < -0x200)
                    gobbler->obj2.base.xspeed = -0x200;
            }
        }
        if (gobbler->obj2.base.flags & 2)
        {
            gobbler->obj2.base.flags ^= 1;
            gobbler->obj2.unk83 = 0;
        }
    }
    if (!gobbler->obj2.unk83)
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed -= 0x20;
            if (gobbler->obj2.base.xspeed < -0x200)
                gobbler->obj2.base.xspeed = -0x200;
            else if (gobbler->obj2.base.xspeed > 0x200)
                gobbler->obj2.base.xspeed = 0x200;
        }
        else
        {
            gobbler->obj2.base.xspeed += 0x20;
            if (gobbler->obj2.base.xspeed > 0x200)
                gobbler->obj2.base.xspeed = 0x200;
            else if (gobbler->obj2.base.xspeed < -0x200)
                gobbler->obj2.base.xspeed = -0x200;
        }
        if (gobbler->obj2.base.flags & 1)
        {
            if (gobbler->obj2.base.x <= -0x2800)
            {
                gobbler->obj2.base.x = -0x2800;
                gobbler->obj2.base.y = 0x10000;
                sub_080E7BCC(gobbler);
            }
        }
        else
        {
            if (gobbler->obj2.base.x >= 0x12800)
            {
                gobbler->obj2.base.x = 0x12800;
                gobbler->obj2.base.y = 0x10000;
                sub_080E7BCC(gobbler);
            }
        }
    }
}

void sub_080E4784(struct Gobbler *gobbler)
{
    if (!gobbler->obj2.unk9F)
    {
        gobbler->obj2.base.yspeed -= 0xE;
        if (gobbler->obj2.base.yspeed < -0x180)
            gobbler->obj2.base.yspeed = -0x180;
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed -= 0x400;
            if (gobbler->obj2.base.xspeed < -0x400)
                gobbler->obj2.base.xspeed = -0x400;
            else if (gobbler->obj2.base.xspeed > 0x400)
                gobbler->obj2.base.xspeed = 0x400;
        }
        else
        {
            gobbler->obj2.base.xspeed += 0x400;
            if (gobbler->obj2.base.xspeed > 0x400)
                gobbler->obj2.base.xspeed = 0x400;
            else if (gobbler->obj2.base.xspeed < -0x400)
                gobbler->obj2.base.xspeed = -0x400;
        }
        if (gobbler->obj2.base.flags & 1)
        {
            if (gobbler->obj2.base.x <= -0x2800)
            {
                gobbler->obj2.base.x = -0x2800;
                gobbler->obj2.base.y = 0x10000;
                sub_080E498C(gobbler);
            }
        }
        else
        {
            if (gobbler->obj2.base.x >= 0x12800)
            {
                gobbler->obj2.base.x = 0x12800;
                gobbler->obj2.base.y = 0x10000;
                sub_080E498C(gobbler);
            }
        }
    }
    else if (!--gobbler->obj2.unk9F)
    {
        if (gobbler->obj2.kirby3->base.base.base.y > 0xE000)
        {
            gobbler->obj2.base.y = (Rand16() & 0x1F) + 0xF000;
            if (Rand16() & 1)
                sub_080E4FD8(gobbler);
            else
                sub_080E5554(gobbler);
        }
        else
        {
            if (Rand16() & 1)
                gobbler->obj2.base.yspeed = 0x280;
            else
                gobbler->obj2.base.yspeed = 0x2E0;
            PlaySfx(&gobbler->obj2.base, 389);
        }
    }
}

void sub_080E498C(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0, sub_080E4A6C);
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.base.flags &= ~2;
    gobbler->obj2.base.flags ^= 1;
    gobbler->obj2.base.y = (Rand16() & 0x1F) + 0xF000;
    gobbler->obj2.unk9F = 0x12;
    PlaySfx(&gobbler->obj2.base, 128);
}

void sub_080E4A6C(struct Gobbler *gobbler)
{
    bool32 r1, r2;

    if (!gobbler->obj2.unk9F)
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed -= 0x20;
            if (gobbler->obj2.base.xspeed < -0x200)
                gobbler->obj2.base.xspeed = -0x200;
            else if (gobbler->obj2.base.xspeed > 0x200)
                gobbler->obj2.base.xspeed = 0x200;
        }
        else
        {
            gobbler->obj2.base.xspeed += 0x20;
            if (gobbler->obj2.base.xspeed > 0x200)
                gobbler->obj2.base.xspeed = 0x200;
            else if (gobbler->obj2.base.xspeed < -0x200)
                gobbler->obj2.base.xspeed = -0x200;
        }
        if (gobbler->obj2.base.flags & 1)
        {
            if (gobbler->obj2.base.x >= (gobbler->obj2.unkA8 + 8) * 0x100)
                return;
            sub_080E43B4(gobbler);
            r1 = FALSE;
            if (gobbler->obj2.kirby3
                && (gobbler->obj2.kirby3->ability == KIRBY_ABILITY_SWORD
                    || gobbler->obj2.kirby3->ability == KIRBY_ABILITY_MASTER))
                r1 = TRUE;
            if (gobbler->obj2.subtype || r1)
                r1 = Rand16() & 1;
            else
            {
                r2 = !(Rand16() & 3);
                r1 = r2;
            }
        }
        else
        {
            if (gobbler->obj2.base.x <= (gobbler->obj2.unkA4 + 8) * 0x100)
                return;
            sub_080E43B4(gobbler);
            r1 = FALSE;
            if (gobbler->obj2.kirby3
                && (gobbler->obj2.kirby3->ability == KIRBY_ABILITY_SWORD
                    || gobbler->obj2.kirby3->ability == KIRBY_ABILITY_MASTER))
                r1 = TRUE;
            if (gobbler->obj2.subtype || r1)
                r1 = Rand16() & 1;
            else
            {
                r2 = !(Rand16() & 3);
                r1 = r2;
            }
        }
        if (r1) gobbler->obj2.base.counter = 1;
    }
    else
        --gobbler->obj2.unk9F;
}

void sub_080E4BD0(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0, sub_080E4CAC);
    gobbler->obj2.base.flags &= ~2;
    gobbler->obj2.unk9F = 0;
    if (RandLessThan3())
    {
        gobbler->obj2.kirby3 = sub_0803D5CC(&gobbler->obj2.base);
        if (gobbler->obj2.kirby3->base.base.base.y > gobbler->obj2.base.y + 0xA00)
            gobbler->obj2.unk9F = 2;
        else if (gobbler->obj2.kirby3->base.base.base.y < gobbler->obj2.base.y - 0xA00)
            gobbler->obj2.unk9F = 1;
        else
            gobbler->obj2.unk9F = 0;
    }
    else
        gobbler->obj2.unk9F = RandLessThan3();
}

void sub_080E4CAC(struct Gobbler *gobbler)
{
    s16 a, b;

    gobbler->obj2.base.flags |= 4;
    if (gobbler->obj2.subtype)
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed -= 0x1A;
            if (gobbler->obj2.base.xspeed < -0x208)
                gobbler->obj2.base.xspeed = -0x208;
            else if (gobbler->obj2.base.xspeed > 0x208)
                gobbler->obj2.base.xspeed = 0x208;
        }
        else
        {
            gobbler->obj2.base.xspeed += 0x1A;
            if (gobbler->obj2.base.xspeed > 0x208)
                gobbler->obj2.base.xspeed = 0x208;
            else if (gobbler->obj2.base.xspeed < -0x208)
                gobbler->obj2.base.xspeed = -0x208;
        }
        a = 0xA;
        b = 0x78;
    }
    else
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed -= 0x10;
            if (gobbler->obj2.base.xspeed < -0x1A8)
                gobbler->obj2.base.xspeed = -0x1A8;
            else if (gobbler->obj2.base.xspeed > 0x1A8)
                gobbler->obj2.base.xspeed = 0x1A8;
        }
        else
        {
            gobbler->obj2.base.xspeed += 0x10;
            if (gobbler->obj2.base.xspeed > 0x1A8)
                gobbler->obj2.base.xspeed = 0x1A8;
            else if (gobbler->obj2.base.xspeed < -0x1A8)
                gobbler->obj2.base.xspeed = -0x1A8;
        }
        a = 7;
        b = 0x58;
    }
    switch (gobbler->obj2.unk9F)
    {
    case 1:
        if (a > 0)
        {
            gobbler->obj2.base.yspeed += a;
            if (gobbler->obj2.base.yspeed > b)
                gobbler->obj2.base.yspeed = b;

        }
        else
        {
            gobbler->obj2.base.yspeed += a;
            if (gobbler->obj2.base.yspeed < -b)
                gobbler->obj2.base.yspeed = -b;
        }
        if (gobbler->obj2.base.y - gobbler->obj2.base.yspeed <= 0xF000)
        {
            gobbler->obj2.base.yspeed = 0;
            gobbler->obj2.base.y = 0xF000;
        }
        break;
    case 2:
        if (a > 0) // do the samething in both branches
        {
            gobbler->obj2.base.yspeed -= a;
            if (gobbler->obj2.base.yspeed < -b)
                gobbler->obj2.base.yspeed = -b;
        }
        else
        {
            gobbler->obj2.base.yspeed -= a;
            if (gobbler->obj2.base.yspeed < -b)
                gobbler->obj2.base.yspeed = -b;
        }
        if (gobbler->obj2.base.y - gobbler->obj2.base.yspeed >= 0x11800)
        {
            gobbler->obj2.base.yspeed = 0;
            gobbler->obj2.base.y = 0x11800;
        }
        break;
    }
    if (gobbler->obj2.unk83 == 4)
    {
        if (gobbler->obj2.base.flags & 2)
            gobbler->obj2.unk83 = 0;
    }
    else
    {
        if (gobbler->obj2.base.flags & 1)
        {
            if (gobbler->obj2.base.x < (gobbler->obj2.unkA4 + 0x40) * 0x100)
            {
                sub_080E43B4(gobbler);
                gobbler->obj2.unk83 = 1;
            }
        }
        else
        {
            if (gobbler->obj2.base.x > (gobbler->obj2.unkA8 - 0x40) * 0x100)
            {
                sub_080E43B4(gobbler);
                gobbler->obj2.unk83 = 1;
            }
        }
    }
}

void sub_080E4E6C(struct Gobbler *gobbler)
{
    struct Gobbler *gobbler2 = gobbler;
    u8 r;

    ObjectSetFunc(gobbler, 2, sub_080E4F0C);
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.base.flags &= ~2;
    if (!gobbler2->unkC0)
    {
        if (gobbler2->unkC2 > 1)
        {
            if (gobbler2->unkC2 > 6)
                r = Rand16() & 1;
            else
                r = Rand16() & 3;
            if (!r)
            {
                gobbler2->unkC0 = 4;
                gobbler2->unkC2 = 0;
            }
        }
    }
    else
        sub_080E4FD8(gobbler);
}

void sub_080E4F0C(struct Gobbler *gobbler)
{
    struct Gobbler *gobbler2 = gobbler;

    if (gobbler->obj2.base.unk1 > 0xF)
    {
        if (gobbler->obj2.base.xspeed < 0)
        {
            gobbler->obj2.base.xspeed += 0xF;
            if (gobbler->obj2.base.xspeed > 0)
                gobbler->obj2.base.xspeed = 0;
        }
        else
        {
            gobbler->obj2.base.xspeed -= 0xF;
            if (gobbler->obj2.base.xspeed < 0)
                gobbler->obj2.base.xspeed = 0;
        }
        if (gobbler2->unkC0)
        {
            if (++gobbler->obj2.base.counter < 0x26)
                gobbler->obj2.base.flags |= 8;
            else
                gobbler->obj2.base.flags &= ~8;
        }
    }
    else
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed += 0x10;
            if (gobbler->obj2.base.xspeed < -0x1A8)
                gobbler->obj2.base.xspeed = -0x1A8;
            else if (gobbler->obj2.base.xspeed > 0x1A8)
                gobbler->obj2.base.xspeed = 0x1A8;
        }
        else
        {
            gobbler->obj2.base.xspeed -= 0x10;
            if (gobbler->obj2.base.xspeed > 0x1A8)
                gobbler->obj2.base.xspeed = 0x1A8;
            else if (gobbler->obj2.base.xspeed < -0x1A8)
                gobbler->obj2.base.xspeed = -0x1A8;

        }
    }
    if (gobbler->obj2.base.flags & 2)
        sub_080E4FD8(gobbler);
}

void sub_080E4FD8(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 3, sub_080E50E0);
    gobbler->obj2.kirby3 = sub_0803D5CC(&gobbler->obj2.base);
    if (gobbler->obj2.kirby3->base.base.base.y > gobbler->obj2.base.y + 0xA00)
        gobbler->obj2.unk9F = 2;
    else if (gobbler->obj2.kirby3->base.base.base.y < gobbler->obj2.base.y - 0xA00)
        gobbler->obj2.unk9F = 1;
    else
        gobbler->obj2.unk9F = 0;
    PlaySfx(&gobbler->obj2.base, 389);
    gobbler->obj2.unk85 = 0;
    if (gobbler->obj2.kirby3
        && (gobbler->obj2.kirby3->ability == KIRBY_ABILITY_SWORD
            || gobbler->obj2.kirby3->ability == KIRBY_ABILITY_MASTER))
        gobbler->obj2.unk85 = 1;
}

void sub_080E50E0(struct Gobbler *gobbler)
{
    s16 a, b;

    gobbler->obj2.base.flags |= 4;
    if (gobbler->obj2.unk85 || gobbler->obj2.subtype)
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed -= 0x60;
            if (gobbler->obj2.base.xspeed < -0x2A0)
                gobbler->obj2.base.xspeed = -0x2A0;
            else if (gobbler->obj2.base.xspeed > 0x2A0)
                gobbler->obj2.base.xspeed = 0x2A0;
        }
        else
        {
            gobbler->obj2.base.xspeed += 0x60;
            if (gobbler->obj2.base.xspeed > 0x2A0)
                gobbler->obj2.base.xspeed = 0x2A0;
            else if (gobbler->obj2.base.xspeed < -0x2A0)
                gobbler->obj2.base.xspeed = -0x2A0;
        }
        a = 0xA;
        b = 0x70;
    }
    else
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed -= 0x40;
            if (gobbler->obj2.base.xspeed < -0x280)
                gobbler->obj2.base.xspeed = -0x280;
            else if (gobbler->obj2.base.xspeed > 0x280)
                gobbler->obj2.base.xspeed = 0x280;
        }
        else
        {
            gobbler->obj2.base.xspeed += 0x40;
            if (gobbler->obj2.base.xspeed > 0x280)
                gobbler->obj2.base.xspeed = 0x280;
            else if (gobbler->obj2.base.xspeed < -0x280)
                gobbler->obj2.base.xspeed = -0x280;
        }
        a = 6;
        b = 0x40;
    }
    switch (gobbler->obj2.unk9F)
    {
    case 1:
        if (a > 0)
        {
            gobbler->obj2.base.yspeed += a;
            if (gobbler->obj2.base.yspeed > b)
                gobbler->obj2.base.yspeed = b;

        }
        else
        {
            gobbler->obj2.base.yspeed += a;
            if (gobbler->obj2.base.yspeed < -b)
                gobbler->obj2.base.yspeed = -b;
        }
        if (gobbler->obj2.base.y - gobbler->obj2.base.yspeed <= 0xF000)
        {
            gobbler->obj2.base.yspeed = 0;
            gobbler->obj2.base.y = 0xF000;
        }
        break;
    case 2:
        if (a > 0) // do the samething in both branches
        {
            gobbler->obj2.base.yspeed -= a;
            if (gobbler->obj2.base.yspeed < -b)
                gobbler->obj2.base.yspeed = -b;
        }
        else
        {
            gobbler->obj2.base.yspeed -= a;
            if (gobbler->obj2.base.yspeed < -b)
                gobbler->obj2.base.yspeed = -b;
        }
        if (gobbler->obj2.base.y - gobbler->obj2.base.yspeed >= 0x11800)
        {
            gobbler->obj2.base.yspeed = 0;
            gobbler->obj2.base.y = 0x11800;
        }
        break;
    }
    if (gobbler->obj2.base.flags & 1)
    {
        if (gobbler->obj2.base.x < (gobbler->obj2.unkA4 + 0x48) * 0x100)
            sub_080E79F8(gobbler);
    }
    else
    {
        if (gobbler->obj2.base.x > (gobbler->obj2.unkA8 - 0x48) * 0x100)
            sub_080E79F8(gobbler);
    }
}

void sub_080E5290(struct Gobbler *gobbler)
{
    struct Gobbler *gobbler2 = gobbler;
    bool32 r1, r2;

    if (gobbler->obj2.unk85 || gobbler->obj2.subtype)
    {
        if (gobbler->obj2.base.xspeed < 0)
        {
            gobbler->obj2.base.xspeed += 0x1B;
            if (gobbler->obj2.base.xspeed > 0)
                gobbler->obj2.base.xspeed = 0;
        }
        else
        {
            gobbler->obj2.base.xspeed -= 0x1B;
            if (gobbler->obj2.base.xspeed < 0)
                gobbler->obj2.base.xspeed = 0;
        }
    }
    else
    {
        if (gobbler->obj2.base.xspeed < 0)
        {
            gobbler->obj2.base.xspeed += 0x12;
            if (gobbler->obj2.base.xspeed > 0)
                gobbler->obj2.base.xspeed = 0;
        }
        else
        {
            gobbler->obj2.base.xspeed -= 0x12;
            if (gobbler->obj2.base.xspeed < 0)
                gobbler->obj2.base.xspeed = 0;
        }
    }
    if (gobbler->obj2.base.yspeed < 0)
    {
        gobbler->obj2.base.yspeed += 0x12;
        if (gobbler->obj2.base.yspeed > 0)
            gobbler->obj2.base.yspeed = 0;
    }
    else
    {
        gobbler->obj2.base.yspeed -= 0x12;
        if (gobbler->obj2.base.yspeed < 0)
            gobbler->obj2.base.yspeed = 0;
    }
    if (gobbler->obj2.base.flags & 2)
    {
        sub_080E43B4(gobbler);
        gobbler->obj2.unk83 = 1;
        if (gobbler2->unkC0)
        {
            if (--gobbler2->unkC0)
                gobbler->obj2.base.counter = 1;
            else
                gobbler->obj2.base.counter = 0x40;
        }
        else
        {
            r1 = FALSE;
            if (gobbler->obj2.kirby3
                && (gobbler->obj2.kirby3->ability == KIRBY_ABILITY_SWORD
                    || gobbler->obj2.kirby3->ability == KIRBY_ABILITY_MASTER))
                r1 = TRUE;
            if (gobbler->obj2.subtype || r1)
                r1 = Rand16() & 1;
            else
            {
                r2 = !(Rand16() & 3);
                r1 = r2;
            }
            if (r1) gobbler->obj2.base.counter = 1;
        }
    }
}

void sub_080E53E8(struct Gobbler *gobbler)
{
    struct Gobbler *gobbler2 = gobbler;
    u16 r;

    ObjectSetFunc(gobbler, 0xD, sub_080E5488);
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.base.flags &= ~2;
    if (!gobbler2->unkC1)
    {
        if (gobbler2->unkC2 > 1)
        {
            if (gobbler2->unkC2 > 6)
                r = Rand16() & 1;
            else
                r = Rand16() & 3;
            if (!r)
            {
                gobbler2->unkC1 = 3;
                gobbler2->unkC2 = 0;
            }
        }
    }
    else
        sub_080E5554(gobbler);
}

void sub_080E5488(struct Gobbler *gobbler)
{
    struct Gobbler *gobbler2 = gobbler;

    if (gobbler->obj2.base.unk1 > 0xF)
    {
        if (gobbler->obj2.base.xspeed < 0)
        {
            gobbler->obj2.base.xspeed += 0xF;
            if (gobbler->obj2.base.xspeed > 0)
                gobbler->obj2.base.xspeed = 0;
        }
        else
        {
            gobbler->obj2.base.xspeed -= 0xF;
            if (gobbler->obj2.base.xspeed < 0)
                gobbler->obj2.base.xspeed = 0;
        }
        if (gobbler2->unkC1)
        {
            if (++gobbler->obj2.base.counter < 0x26)
                gobbler->obj2.base.flags |= 8;
            else
                gobbler->obj2.base.flags &= ~8;
        }
    }
    else
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed += 0x10;
            if (gobbler->obj2.base.xspeed < -0x1A8)
                gobbler->obj2.base.xspeed = -0x1A8;
            else if (gobbler->obj2.base.xspeed > 0x1A8)
                gobbler->obj2.base.xspeed = 0x1A8;
        }
        else
        {
            gobbler->obj2.base.xspeed -= 0x10;
            if (gobbler->obj2.base.xspeed > 0x1A8)
                gobbler->obj2.base.xspeed = 0x1A8;
            else if (gobbler->obj2.base.xspeed < -0x1A8)
                gobbler->obj2.base.xspeed = -0x1A8;

        }
    }
    if (gobbler->obj2.base.flags & 2)
        sub_080E5554(gobbler);
}

void sub_080E5554(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0xE, sub_080E5644);
    gobbler->obj2.base.yspeed = 0;
    PlaySfx(&gobbler->obj2.base, 389);
    gobbler->obj2.unk85 = 0;
    if (gobbler->obj2.unk85 <= gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
        gobbler->obj2.unk85 = 1;
    else if ((gobbler->obj2.kirby3
        && (gobbler->obj2.kirby3->ability == KIRBY_ABILITY_SWORD
            || gobbler->obj2.kirby3->ability == KIRBY_ABILITY_MASTER)))
        gobbler->obj2.unk85 = 1;
}

void sub_080E5644(struct Gobbler *gobbler)
{
    gobbler->obj2.base.flags |= 4;
    if (gobbler->obj2.unk85 || gobbler->obj2.subtype)
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed -= 0x160;
            if (gobbler->obj2.base.xspeed < -0x380)
                gobbler->obj2.base.xspeed = -0x380;
            else if (gobbler->obj2.base.xspeed > 0x380)
                gobbler->obj2.base.xspeed = 0x380;
        }
        else
        {
            gobbler->obj2.base.xspeed += 0x160;
            if (gobbler->obj2.base.xspeed > 0x380)
                gobbler->obj2.base.xspeed = 0x380;
            else if (gobbler->obj2.base.xspeed < -0x380)
                gobbler->obj2.base.xspeed = -0x380;
        }
    }
    else
    {
        if (gobbler->obj2.base.flags & 1)
        {
            gobbler->obj2.base.xspeed -= 0x160;
            if (gobbler->obj2.base.xspeed < -0x340)
                gobbler->obj2.base.xspeed = -0x340;
            else if (gobbler->obj2.base.xspeed > 0x340)
                gobbler->obj2.base.xspeed = 0x340;
        }
        else
        {
            gobbler->obj2.base.xspeed += 0x160;
            if (gobbler->obj2.base.xspeed > 0x340)
                gobbler->obj2.base.xspeed = 0x340;
            else if (gobbler->obj2.base.xspeed < -0x340)
                gobbler->obj2.base.xspeed = -0x340;
        }
    }
    if (gobbler->obj2.base.flags & 1)
    {
        if (gobbler->obj2.base.x < (gobbler->obj2.unkA4 + 0x50) * 0x100)
            sub_080E7A18(gobbler);
    }
    else
    {
        if (gobbler->obj2.base.x > (gobbler->obj2.unkA8 - 0x50) * 0x100)
            sub_080E7A18(gobbler);
    }
}

void sub_080E5760(struct Gobbler *gobbler)
{
    struct Gobbler *gobbler2 = gobbler;
    bool32 r1, r2;

    if (gobbler->obj2.unk85 || gobbler->obj2.subtype)
    {
        if (gobbler->obj2.base.xspeed < 0)
        {
            gobbler->obj2.base.xspeed += 0x30;
            if (gobbler->obj2.base.xspeed > 0)
                gobbler->obj2.base.xspeed = 0;
        }
        else
        {
            gobbler->obj2.base.xspeed -= 0x30;
            if (gobbler->obj2.base.xspeed < 0)
                gobbler->obj2.base.xspeed = 0;
        }
    }
    else
    {
        if (gobbler->obj2.base.xspeed < 0)
        {
            gobbler->obj2.base.xspeed += 0x24;
            if (gobbler->obj2.base.xspeed > 0)
                gobbler->obj2.base.xspeed = 0;
        }
        else
        {
            gobbler->obj2.base.xspeed -= 0x24;
            if (gobbler->obj2.base.xspeed < 0)
                gobbler->obj2.base.xspeed = 0;
        }
    }
    if (gobbler->obj2.base.flags & 2)
    {
        sub_080E43B4(gobbler);
        gobbler->obj2.unk83 = 1;
        if (gobbler2->unkC1)
        {
            if (--gobbler2->unkC1)
                gobbler->obj2.base.counter = 1;
            else
                gobbler->obj2.base.counter = 0x40;
        }
        else
        {
            r1 = FALSE;
            if (gobbler->obj2.kirby3
                && (gobbler->obj2.kirby3->ability == KIRBY_ABILITY_SWORD
                    || gobbler->obj2.kirby3->ability == KIRBY_ABILITY_MASTER))
                r1 = TRUE;
            if (gobbler->obj2.subtype || r1)
                r1 = Rand16() & 1;
            else
            {
                r2 = !(Rand16() & 3);
                r1 = r2;
            }
            if (r1) gobbler->obj2.base.counter = 1;
        }
    }
}

bool8 sub_080E588C(struct Gobbler *gobbler, struct Kirby *kirby)
{
    if (gobbler->obj2.unk83 != 3
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    ObjectSetFunc(gobbler, 5, sub_080E7A38);
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.unk9F = 0;
    gobbler->obj2.unk9E = 0;
    kirby->unk110 = gUnk_08356A98;
    gobbler->obj2.kirby3 = kirby;
    gobbler->obj2.base.flags &= ~2;
    gobbler->obj2.base.unk6C = kirby;
    gobbler->unkC0 = 0;
    PlaySfx(&gobbler->obj2.base, 390);
    return TRUE;
}

void sub_080E59B4(struct Gobbler *gobbler)
{
    s16 r5 = 1;

    ObjectSetFunc(gobbler, 0xA, sub_080E5A20);
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.base.counter = 0;
    gobbler->obj2.unk9F = 0;
    gobbler->obj2.unk9E = 0;
    gobbler->obj2.base.flags &= ~2;
    if (!gobbler->babies[0])
    {
        gobbler->obj2.base.counter = r5;
        r5 = 0x10;
    }
    if (!gobbler->babies[1])
    {
        gobbler->obj2.unk9F = r5;
        r5 = 0x10;
    }
    if (!gobbler->babies[2])
        gobbler->obj2.unk9E = r5;
}
