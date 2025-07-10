#include "gobbler.h"
#include "object.h"
#include "functions.h"
#include "kirby.h"
#include "malloc_vram.h"
#include "random.h"
#include "code_0806F780.h"
#include "constants/kirby.h"

static void sub_080E4488(struct Gobbler *);
static void sub_080E498C(struct Gobbler *);
static void sub_080E4A6C(struct Gobbler *);
static void sub_080E4BD0(struct Gobbler *);
static void sub_080E4CAC(struct Gobbler *);
static void sub_080E4E6C(struct Gobbler *);
static void sub_080E4F0C(struct Gobbler *);
static void sub_080E4FD8(struct Gobbler *);
static void sub_080E50E0(struct Gobbler *);
static void sub_080E53E8(struct Gobbler *);
static void sub_080E5488(struct Gobbler *);
static void sub_080E5554(struct Gobbler *);
static void sub_080E5644(struct Gobbler *);
static void sub_080E5A20(struct Gobbler *);
static void sub_080E5E58(struct Gobbler *);
static void sub_080E5F20(void);
static void sub_080E625C(struct Gobbler *, s8, s8);
static void sub_080E6320(void);
static void sub_080E6470(struct Gobbler *);
static void sub_080E6550(void);
static void sub_080E6784(struct Object2 *);
static void sub_080E6CDC(struct Object2 *);
static void sub_080E6D4C(struct Object2 *);
static void sub_080E7028(struct Object2 *);
static void sub_080E7148(struct Object2 *);
static void sub_080E761C(struct Object2 *);
static void sub_080E76FC(void);
static void sub_080E7848(struct Gobbler *, u8);
static void sub_080E79D4(struct Gobbler *);
static void sub_080E79F8(struct Gobbler *);
static void sub_080E7A18(struct Gobbler *);
static void sub_080E7A38(struct Gobbler *);
static void sub_080E7A50(struct Gobbler *);
static void sub_080E7A80(struct Gobbler *);
static void sub_080E7A9C(struct Gobbler *);
static void sub_080E7ABC(struct Gobbler *);
static void sub_080E7B0C(struct Gobbler *);
static void sub_080E7B38(struct Gobbler *);
static void sub_080E7B50(struct Gobbler *);
static void sub_080E7B7C(struct Gobbler *);
static void sub_080E7BA4(struct Gobbler *);
static void sub_080E7BCC(struct Gobbler *);
static void sub_080E7C00(struct Gobbler *);
static void sub_080E7C54(struct Gobbler *);
static void sub_080E7CA8(struct Object2 *);
static void sub_080E7CBC(struct Object2 *);
static void sub_080E7CF4(struct Object2 *);
static void sub_080E7D1C(struct Object2 *);
static void sub_080E7D38(struct Object2 *);

const struct Unk_02021590 gUnk_08356A20[] = {
    { 0x30C, 0,    0 },
    { 0x30C, 1,    0 },
    { 0x30C, 2,    0 },
    { 0x30C, 3,    0 },
    { 0x30C, 4,    0 },
    { 0x30C, 5,    0 },
    { 0x30C, 6,    0 },
    { 0x30C, 7,    0 },
    { 0x30C, 8,    0 },
    { 0x30C, 9,    0 },
    { 0x30C, 0xA,  0 },
    { 0x30C, 0xB,  0 },
    { 0x30C, 0xC,  0 },
    { 0x30C, 0xD,  0 },
    { 0x30C, 0xE,  0 },
    { 0x30C, 0xF,  0 },
    { 0x30C, 0x10, 0 },
    { 0x30C, 0x11, 0 },
    { 0x30C, 0x11, 0 },
};

const struct Unk_02021590 gUnk_08356A6C[] = {
    { 0x30D, 0,   0 },
    { 0x30D, 1,   0 },
    { 0x30D, 2,   0 },
    { 0x30D, 3,   0 },
    { 0x30D, 4,   0 },
    { 0x30D, 5,   0 },
    { 0x30D, 6,   0 },
    { 0x30D, 7,   0 },
    { 0x30D, 8,   0 },
    { 0x30D, 9,   0 },
    { 0x30D, 0xA, 0 },
};

const struct Kirby_110 gUnk_08356A98[] = {
    { 0,     0, -1, 4,    0x4A, 0x680 },
    { -0x1E, 0, -1, 6,    0x4C, 0x400 },
    { -0x1C, 0, -1, 2,    0x4E, 0x400 },
    { -0x1A, 0, -1, 2,    0x50, 0x400 },
    { -0x18, 0, -1, 2,    0x52, 0x400 },
    { -0x16, 0, -1, 4,    0x54, 0x400 },
    { -0x14, 0, -1, 0x12, 0x56, 0x440 },
    { 0,     0, 0,  1,    0,    0x500 },
};

static const struct Kirby_110 gUnk_08356AD8[] = {
    { -0x14, 0, -1, 0xA, 0x4A, 0x440 },
    { -0x14, 0, -1, 0xA, 0x4A, 0x440 },
    { 0,     0, 0,  1,   0,    0x500 },
};

static const struct Kirby_110 gUnk_08356AF0[] = {
    { -0x10, 0, -1, 1, 0x4A, 0x400 },
    { -0x20, 0, 0,  1, 0,    0x410 },
};

static const struct Kirby_110 gUnk_08356B00[] = {
    { -0xE,  0, -1, 2, 0x4A, 0x480 },
    { -0xD,  0, -1, 2, 0x4A, 0x400 },
    { -0xC,  0, -1, 1, 0x4A, 0x400 },
    { -0xB,  0, -1, 1, 0x4A, 0x400 },
    { -0xA,  0, -1, 1, 0x4A, 0x400 },
    { -0x9,  0, -1, 1, 0x4A, 0x400 },
    { -0x8,  0, -1, 6, 0x4A, 0x400 },
    { -0x8,  0, -1, 2, 0x4A, 0x400 },
    { -0x18, 0, 0,  1, 0,    0x410 },
};

static const s16 gUnk_08356B48[] = { 0x40, -0x20, -0x40, 0x20 };

const struct Unk_02021590 gUnk_08356B50[] = {
    { 0x30C, 0,    2 },
    { 0x30C, 0x13, 2 },
    { 0x30C, 0,    2 },
    { 0x30C, 0x13, 2 },
    { 0x30C, 0,    2 },
    { 0x30C, 0x13, 2 },
    { 0x30C, 0,    2 },
    { 0x30C, 0x13, 2 },
    { 0x30C, 0,    2 },
    { 0x30C, 0x13, 2 },
    { 0x30C, 0,    2 },
    { 0x30C, 0x13, 2 },
    { 0x30C, 0,    2 },
    { 0x30C, 0x13, -1 },
};

static const struct Unk_08353510 gUnk_08356B88[] = {
    { -0x80,  0,      0, 0, 8,   0 },
    { -0x100, 0,      0, 0, 4,   0 },
    { -0x200, 0,      0, 0, 4,   0 },
    { -0x100, 0,      0, 0, 4,   0 },
    { 0x80,   -0x200, 0, 0, 2,   6 },
    { 0x100,  -0x100, 0, 0, 2,   6 },
    { 0x200,  -0x80,  0, 0, 6,   5 },
    { 0x200,  0x80,   0, 0, 6,   4 },
    { 0x1D0,  0x100,  0, 0, 6,   4 },
    { 0x1D0,  0x180,  0, 0, 6,   4 },
    { 0x200,  0x200,  0, 0, 6,   4 },
    { 0x200,  0x200,  0, 0, 6,   4 },
    { 0x300,  0x180,  0, 0, 6,   4 },
    { 0x300,  0x100,  0, 0, 6,   5 },
    { 0x380,  0x80,   0, 0, 6,   5 },
    { 0x380,  -0x80,  0, 0, 6,   5 },
    { 0x300,  -0x100, 0, 0, 6,   5 },
    { 0x300,  -0x180, 0, 0, 6,   6 },
    { 0x200,  -0x200, 0, 0, 6,   6 },
    { 0x200,  -0x180, 0, 0, 6,   6 },
    { 0x100,  -0x100, 0, 0, 6,   6 },
    { 0x100,  -0x80,  0, 0, 6,   2 },
    { 0x100,  -0x40,  0, 0, 0xC, 2 },
    { 0x80,   0,      0, 0, 0xC, 2 },
    { 0 },
};

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

static void sub_080E3FFC(struct Gobbler *gobbler)
{
    gobbler->obj2.kirby3 = sub_0803D368(&gobbler->obj2.base);
    if (!(gobbler->obj2.kirby3->base.base.base.unkC & 0x8000)
        && gobbler->obj2.base.roomId == gobbler->obj2.kirby3->base.base.base.roomId
        && Macro_08039430_1(&gobbler->obj2.kirby3->base.base.base, &gobbler->obj2))
    {
        Macro_081003EC(&gobbler->obj2, &gobbler->obj2.kirby3->base.base.base);
        sub_080E43B4(gobbler);
        gobbler->obj2.base.counter = 0x5A;
        Macro_08100F18(&gobbler->obj2);
    }
}

static void sub_080E41D0(struct Gobbler *gobbler)
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

static void sub_080E4488(struct Gobbler *gobbler)
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

static void sub_080E45BC(struct Gobbler *gobbler)
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

static void sub_080E4784(struct Gobbler *gobbler)
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
            PlaySfx(&gobbler->obj2.base, SE_08D599BC);
        }
    }
}

static void sub_080E498C(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0, sub_080E4A6C);
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.base.flags &= ~2;
    gobbler->obj2.base.flags ^= 1;
    gobbler->obj2.base.y = (Rand16() & 0x1F) + 0xF000;
    gobbler->obj2.unk9F = 0x12;
    PlaySfx(&gobbler->obj2.base, SE_08D556F8);
}

#define Macro_080E4A6C(gobbler) \
({ \
    bool32 _r1, _r2; \
 \
    _r1 = FALSE; \
    if ((gobbler)->obj2.kirby3 \
        && ((gobbler)->obj2.kirby3->ability == KIRBY_ABILITY_SWORD \
            || (gobbler)->obj2.kirby3->ability == KIRBY_ABILITY_MASTER)) \
        _r1 = TRUE; \
    if ((gobbler)->obj2.subtype || _r1) \
        _r1 = Rand16() & 1; \
    else \
    { \
        _r2 = !(Rand16() & 3); \
        _r1 = _r2; \
    } \
    if (_r1) (gobbler)->obj2.base.counter = 1; \
})

static void sub_080E4A6C(struct Gobbler *gobbler)
{
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
            Macro_080E4A6C(gobbler);
        }
        else
        {
            if (gobbler->obj2.base.x <= (gobbler->obj2.unkA4 + 8) * 0x100)
                return;
            sub_080E43B4(gobbler);
            Macro_080E4A6C(gobbler);
        }
    }
    else
        --gobbler->obj2.unk9F;
}

static void sub_080E4BD0(struct Gobbler *gobbler)
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

static void sub_080E4CAC(struct Gobbler *gobbler)
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

static void sub_080E4E6C(struct Gobbler *gobbler)
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

static void sub_080E4F0C(struct Gobbler *gobbler)
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

static void sub_080E4FD8(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 3, sub_080E50E0);
    gobbler->obj2.kirby3 = sub_0803D5CC(&gobbler->obj2.base);
    if (gobbler->obj2.kirby3->base.base.base.y > gobbler->obj2.base.y + 0xA00)
        gobbler->obj2.unk9F = 2;
    else if (gobbler->obj2.kirby3->base.base.base.y < gobbler->obj2.base.y - 0xA00)
        gobbler->obj2.unk9F = 1;
    else
        gobbler->obj2.unk9F = 0;
    PlaySfx(&gobbler->obj2.base, SE_08D599BC);
    gobbler->obj2.unk85 = 0;
    if (gobbler->obj2.kirby3
        && (gobbler->obj2.kirby3->ability == KIRBY_ABILITY_SWORD
            || gobbler->obj2.kirby3->ability == KIRBY_ABILITY_MASTER))
        gobbler->obj2.unk85 = 1;
}

static void sub_080E50E0(struct Gobbler *gobbler)
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

static void sub_080E5290(struct Gobbler *gobbler)
{
    struct Gobbler *gobbler2 = gobbler;

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
            Macro_080E4A6C(gobbler);
    }
}

static void sub_080E53E8(struct Gobbler *gobbler)
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

static void sub_080E5488(struct Gobbler *gobbler)
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

static void sub_080E5554(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0xE, sub_080E5644);
    gobbler->obj2.base.yspeed = 0;
    PlaySfx(&gobbler->obj2.base, SE_08D599BC);
    gobbler->obj2.unk85 = 0;
    if (gobbler->obj2.unk85 <= gUnk_08351530[0x10][gUnk_0203AD30 - 1] >> 1)
        gobbler->obj2.unk85 = 1;
    else if ((gobbler->obj2.kirby3
        && (gobbler->obj2.kirby3->ability == KIRBY_ABILITY_SWORD
            || gobbler->obj2.kirby3->ability == KIRBY_ABILITY_MASTER)))
        gobbler->obj2.unk85 = 1;
}

static void sub_080E5644(struct Gobbler *gobbler)
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

static void sub_080E5760(struct Gobbler *gobbler)
{
    struct Gobbler *gobbler2 = gobbler;

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
            Macro_080E4A6C(gobbler);
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
    PlaySfx(&gobbler->obj2.base, SE_08D599D8);
    return TRUE;
}

static void sub_080E59B4(struct Gobbler *gobbler)
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

static void sub_080E5A20(struct Gobbler *gobbler)
{
    if (gobbler->obj2.base.counter)
    {
        if (--gobbler->obj2.base.counter == 2)
            gobbler->obj2.unk83 = 0xA;
        if (!gobbler->obj2.base.counter)
        {
            sub_080E7848(gobbler, 0);
            gobbler->obj2.unk83 = 0xB;
        }
    }
    else if (gobbler->obj2.unk9F)
    {
        if (--gobbler->obj2.unk9F == 2)
            gobbler->obj2.unk83 = 0xA;
        if (!gobbler->obj2.unk9F)
        {
            sub_080E7848(gobbler, 1);
            gobbler->obj2.unk83 = 0xB;
        }
    }
    else if (gobbler->obj2.unk9E)
    {
        if (--gobbler->obj2.unk9E == 2)
            gobbler->obj2.unk83 = 0xA;
        if (!gobbler->obj2.unk9E)
        {
            sub_080E7848(gobbler, 2);
            gobbler->obj2.unk83 = 0xB;
        }
    }
    else if (!gobbler->obj2.unk9E && !gobbler->obj2.unk9F)
        sub_080E7B50(gobbler);
}

static void sub_080E5AC4(struct Gobbler *gobbler)
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
    if (gobbler->obj2.base.flags & 2)
    {
        sub_080E43B4(gobbler);
        Macro_080E4A6C(gobbler);
    }
}

static void sub_080E5B8C(struct Gobbler *gobbler)
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
    if (gobbler->obj2.base.unk1 == 0x1E)
    {
        bool32 r6 = FALSE;

        if (gobbler2->babies[0])
            sub_080E7028(gobbler2->babies[0]);
        if (gobbler2->babies[1]
            && !RandLessThan3())
        {
            sub_080E6CDC(gobbler2->babies[1]);
            r6 = TRUE;
        }
        if (gobbler2->babies[2]
            && !RandLessThan3())
        {
            sub_080E6CDC(gobbler2->babies[2]);
            r6 = TRUE;
        }
        if (!r6)
        {
            if (gobbler2->babies[1])
            {
                sub_080E6CDC(gobbler2->babies[1]);
                r6 = TRUE;
            }
            if (!r6 && gobbler2->babies[2])
                sub_080E6CDC(gobbler2->babies[2]);
        }
    }
    if (gobbler->obj2.base.flags & 2)
    {
        sub_080E43B4(gobbler);
        Macro_080E4A6C(gobbler);
    }
}

static void sub_080E5D04(struct Gobbler *gobbler)
{
    if (!--gobbler->obj2.base.counter)
    {
        sub_0808AE30(&gobbler->obj2.base, 0, 0x299, 0);
        sub_0806FE64(2, &gobbler->obj2.base);
        PlaySfx(&gobbler->obj2.base, SE_08D596CC);
        gobbler->obj2.base.flags |= 0x1000;
    }
    if (!(gobbler->obj2.base.counter & 0x1F))
    {
        switch (RandLessThan(5))
        {
        case 0:
            sub_080E625C(gobbler, -9, 4);
            break;
        case 1:
            sub_080E625C(gobbler, -8, -6);
            break;
        case 2:
            sub_080E625C(gobbler, -0xA, 1);
            break;
        case 3:
            sub_080E625C(gobbler, -7, 0xC);
            break;
        }
    }
}

static void sub_080E5E58(struct Gobbler *gobbler)
{
    struct Task *t = TaskCreate(sub_080E5F20, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *obj4 = TaskGetStructPtr(t);

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = gobbler->obj2.base.x;
    obj4->y = gobbler->obj2.base.y;
    obj4->parent = gobbler;
    obj4->roomId = gobbler->obj2.base.roomId;
    sub_080709F8(obj4, &obj4->sprite, 0x10, 0x30C, 0x12, 0x1D);
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x30C, 1);
}

static void sub_080E5F20(void)
{
    struct Gobbler *gobbler, *gobbler2;
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;
    struct Sprite sprite;

    gobbler2 = obj4->parent;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (gobbler2->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x10, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x30C, !obj4->sprite.palId);
        obj4->flags &= ~0x400;
        obj4->flags |= gobbler2->obj2.base.flags & 0x400;
        obj4->flags &= ~1;
        obj4->flags |= ~gobbler2->obj2.base.flags & 1;
        obj4->x = gobbler2->obj2.base.x;
        obj4->y = gobbler2->obj2.base.y;
        obj4->objBase54 = gobbler2->obj2.base.objBase54;
        obj4->objBase55 = gobbler2->obj2.base.objBase55;
        gobbler = obj4->parent;
        if (gobbler)
        {
            if (gobbler->obj2.base.unk0 && gobbler->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                gobbler = NULL;
            }
            if (!gobbler)
                goto label;
            if (Macro_0810B1F4(&gobbler->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(obj4);
        }
        obj4->flags |= 4;
        if (gobbler2->obj2.unk83 == 1 || gobbler2->obj2.unk83 == 7 || gobbler2->obj2.unk83 > 0xC)
            obj4->flags |= 0x400;
        sub_0806FAC8(obj4);
        if (!(obj4->flags & 0x400))
        {
            if (!(obj4->unk4 & 0x3F))
            {
                sub_080E625C(gobbler2, (Rand16() & 7) - 0x1B, (Rand16() & 7) - 3);
                obj4->unk4 += Rand16() & 0xF;
            }
        }
        ++obj4->unk4;
    }
}

static void sub_080E625C(struct Gobbler *gobbler, s8 a2, s8 a3)
{
    struct Task *t = TaskCreate(sub_080E6320, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *tmp = TaskGetStructPtr(t), *obj4 = tmp;

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = gobbler->obj2.base.x;
    obj4->y = gobbler->obj2.base.y;
    obj4->parent = gobbler;
    obj4->roomId = gobbler->obj2.base.roomId;
    obj4->unk3E = 0x80;
    if (gobbler->obj2.base.flags & 1)
        obj4->x -= a2 * 0x100;
    else
        obj4->x += a2 * 0x100;
    obj4->y += a3 * 0x100;
    obj4->flags |= 0x4000;
    sub_080709F8(obj4, &obj4->sprite, 0x6012000, 0x2A0, 0, 0xA);
}

static void sub_080E6320(void)
{
    struct Gobbler *gobbler;
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        gobbler = obj4->parent;
        if (gobbler)
        {
            if (gobbler->obj2.base.unk0 && gobbler->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                gobbler = NULL;
            }
            if (!gobbler)
                goto label;
            if (Macro_0810B1F4(&gobbler->obj2.base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(obj4);
        }
        obj4->flags |= 4;
        if (!(obj4->flags & 0x800))
        {
            obj4->x += obj4->unk3C;
            obj4->y -= obj4->unk3E;
        }
        if (obj4->y <= 0xE800)
            obj4->flags |= 0x1000;
        else
            sub_0806FAC8(obj4);
    }
}

static void sub_080E6470(struct Gobbler *gobbler)
{
    struct Task *t = TaskCreate(sub_080E6550, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;
    u32 flags;

    if (tmp) objBase = tmp; // see also: sub_080BF914
    objBase = tmp;
    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = gobbler->obj2.base.x;
    objBase->y = gobbler->obj2.base.y;
    objBase->parent = gobbler;
    objBase->counter = 0;
    objBase->roomId = gobbler->obj2.base.roomId;
    objBase->unk56 = gobbler->obj2.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags = flags = 0x12010400;
    objBase->unk68 |= 0x20;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    objBase->unk5C |= 0x80000;
    if (gobbler->obj2.base.flags & 1)
        flags |= 1;
    objBase->flags = flags;
    sub_0803E2B0(objBase, 8, -0xE, 0x1E, 0x16);
}

static void sub_080E6550(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Gobbler *gobbler = objBase->parent;

    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (gobbler->obj2.base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else
    {
        objBase->x = gobbler->obj2.base.x;
        objBase->y = gobbler->obj2.base.y;
        objBase->unk56 = gobbler->obj2.base.unk56;
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else
        {
            if (gobbler->obj2.base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
            if (gobbler->obj2.unk83 == 3)
            {
                if (objBase->flags & 0x40000)
                    objBase->flags &= ~0x40000;
                else if (!(objBase->flags & 0x200))
                    SetPointerSomething(objBase);
            }
        }
    }
}

void *CreateGobblerBaby(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *baby = TaskGetStructPtr(t);

    InitObject(baby, template, a2);
    baby->base.flags |= 0x140;
    baby->base.unkC |= 1;
    baby->base.unkC |= 8;
    baby->base.flags |= 0x2000000;
    sub_0803E2B0(&baby->base, -6, -6, 6, 6);
    sub_0803E308(&baby->base, -7, -5, 7, 7);
    ObjectInitSprite(baby);
    if (baby->object->subtype1 < 2)
        baby->base.sprite.unk14 = 0x640;
    if (baby->object->subtype1)
        baby->base.unkC |= 4;
    baby->unk9E = 0;
    baby->unk7C = sub_0809F840;
    sub_080E79A4(baby);
    if (baby->object->subtype1)
        sub_080E761C(baby);
    return baby;
}

static void sub_080E6784(struct Object2 *baby)
{
    struct Gobbler *gobbler = baby->base.parent;
    s8 r7, r6;
    s32 lhs, rhs;
    s8 ex;

    switch (baby->object->subtype1)
    {
    default:
    case 0:
        r7 = -0x18;
        r6 = -0x10;
        break;
    case 1:
        r7 = -0x14;
        r6 = 0x1E;
        break;
    case 2:
        r7 = 0xC;
        r6 = 0x18;
        break;
    }
    if (gobbler->obj2.base.flags & 1)
        r7 = -r7;
    if (!baby->unk83)
        baby->base.flags |= 4;
    else
    {
        r7 = -r7;
        if (baby->base.flags & 2)
            baby->unk83 = 0;
    }
    baby->kirby3 = (void *)gobbler; // TODO: type of field
    baby->unkA0 = ((struct Gobbler *)baby->kirby3)->obj2.base.x >> 8;
    baby->unkA2 = ((struct Gobbler *)baby->kirby3)->obj2.base.y >> 8;
    switch (gobbler->obj2.unk83)
    {
    default:
        ++baby->unk9E;
        lhs = baby->base.y & ~0x3FF;
        rhs = ((baby->unkA2 + r6) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            baby->base.yspeed += 0xA;
            if (baby->base.yspeed > 0x118)
                baby->base.yspeed = 0x118;
        }
        else if (lhs < rhs)
        {
            baby->base.yspeed -= 0xA;
            if (baby->base.yspeed < -0x118)
                baby->base.yspeed = -0x118;
        }
        else
        {
            if (baby->base.yspeed < 0)
            {
                baby->base.yspeed += 6;
                if (baby->base.yspeed > 0)
                    baby->base.yspeed = 0;
            }
            else
            {
                baby->base.yspeed -= 6;
                if (baby->base.yspeed < 0)
                    baby->base.yspeed = 0;
            }
        }
        lhs = baby->base.x & ~0x3FF;
        rhs = ((baby->unkA0 + r7) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            baby->base.flags &= ~1;
            baby->base.xspeed += 0xE;
            if (baby->base.xspeed > 0x180)
                baby->base.xspeed = 0x180;
            else if (baby->base.xspeed < -0x180)
                baby->base.xspeed = -0x180;
        }
        else if (lhs > rhs)
        {
            baby->base.flags |= 1;
            if (baby->base.flags & 1)
            {
                baby->base.xspeed -= 0xE;
                if (baby->base.xspeed < -0x180)
                    baby->base.xspeed = -0x180;
                else if (baby->base.xspeed > 0x180)
                    baby->base.xspeed = 0x180;
            }
            else
            {
                baby->base.xspeed += 0xE;
                if (baby->base.xspeed > 0x180)
                    baby->base.xspeed = 0x180;
                else if (baby->base.xspeed < -0x180)
                    baby->base.xspeed = -0x180;
            }
        }
        else
        {
            if (baby->base.xspeed < 0)
            {
                baby->base.xspeed += 0x28;
                if (baby->base.xspeed > 0)
                    baby->base.xspeed = 0;
            }
            else
            {
                baby->base.xspeed -= 0x28;
                if (baby->base.xspeed < 0)
                    baby->base.xspeed = 0;
            }
        }
        break;
    case 3 ... 4:
        ex = r6 >> 1;
        ++baby->unk9E;
        lhs = baby->base.y & ~0x3FF;
        rhs = ((baby->unkA2 + ex) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            baby->base.yspeed += 0x10;
            if (baby->base.yspeed > 0x120)
                baby->base.yspeed = 0x120;
        }
        else if (lhs < rhs)
        {
            baby->base.yspeed -= 0x10;
            if (baby->base.yspeed < -0x120)
                baby->base.yspeed = -0x120;
        }
        else
        {
            if (baby->base.yspeed < 0)
            {
                baby->base.yspeed += 0x30;
                if (baby->base.yspeed > 0)
                    baby->base.yspeed = 0;
            }
            else
            {
                baby->base.yspeed -= 0x30;
                if (baby->base.yspeed < 0)
                    baby->base.yspeed = 0;
            }
        }
        lhs = baby->base.x & ~0x3FF;
        rhs = ((baby->unkA0 + r7) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            baby->base.flags &= ~1;
            baby->base.xspeed += 0x18;
            if (baby->base.xspeed > 0x220)
                baby->base.xspeed = 0x220;
            else if (baby->base.xspeed < -0x220)
                baby->base.xspeed = -0x220;
        }
        else if (lhs > rhs)
        {
            baby->base.flags |= 1;
            if (baby->base.flags & 1)
            {
                baby->base.xspeed -= 0x18;
                if (baby->base.xspeed < -0x220)
                    baby->base.xspeed = -0x220;
                else if (baby->base.xspeed > 0x220)
                    baby->base.xspeed = 0x220;
            }
            else
            {
                baby->base.xspeed += 0x18;
                if (baby->base.xspeed > 0x220)
                    baby->base.xspeed = 0x220;
                else if (baby->base.xspeed < -0x220)
                    baby->base.xspeed = -0x220;
            }
        }
        else
        {
            if (baby->base.xspeed < 0)
            {
                baby->base.xspeed += 0x60;
                if (baby->base.xspeed > 0)
                    baby->base.xspeed = 0;
            }
            else
            {
                baby->base.xspeed -= 0x60;
                if (baby->base.xspeed < 0)
                    baby->base.xspeed = 0;
            }
        }
        break;
    case 0xE ... 0xF:
        ex = r6 >> 1;
        ++baby->unk9E;
        lhs = baby->base.y & ~0x3FF;
        rhs = ((baby->unkA2 + ex) * 0x100) & ~0x3FF;
        if (lhs > rhs)
        {
            baby->base.yspeed += 0x20;
            if (baby->base.yspeed > 0x100)
                baby->base.yspeed = 0x100;
        }
        else if (lhs < rhs)
        {
            baby->base.yspeed -= 0x20;
            if (baby->base.yspeed < -0x100)
                baby->base.yspeed = -0x100;
        }
        else
        {
            if (baby->base.yspeed < 0)
            {
                baby->base.yspeed += 0x60;
                if (baby->base.yspeed > 0)
                    baby->base.yspeed = 0;
            }
            else
            {
                baby->base.yspeed -= 0x60;
                if (baby->base.yspeed < 0)
                    baby->base.yspeed = 0;
            }
        }
        lhs = baby->base.x & ~0x3FF;
        rhs = ((baby->unkA0 + r7) * 0x100) & ~0x3FF;
        if (lhs < rhs)
        {
            baby->base.flags &= ~1;
            baby->base.xspeed += 0x48;
            if (baby->base.xspeed > 0x2E0)
                baby->base.xspeed = 0x2E0;
            else if (baby->base.xspeed < -0x2E0)
                baby->base.xspeed = -0x2E0;
        }
        else if (lhs > rhs)
        {
            baby->base.flags |= 1;
            if (baby->base.flags & 1)
            {
                baby->base.xspeed -= 0x48;
                if (baby->base.xspeed < -0x2E0)
                    baby->base.xspeed = -0x2E0;
                else if (baby->base.xspeed > 0x2E0)
                    baby->base.xspeed = 0x2E0;
            }
            else
            {
                baby->base.xspeed += 0x48;
                if (baby->base.xspeed > 0x2E0)
                    baby->base.xspeed = 0x2E0;
                else if (baby->base.xspeed < -0x2E0)
                    baby->base.xspeed = -0x2E0;
            }
        }
        else
        {
            if (baby->base.xspeed < 0)
            {
                baby->base.xspeed += 0x140;
                if (baby->base.xspeed > 0)
                    baby->base.xspeed = 0;
            }
            else
            {
                baby->base.xspeed -= 0x140;
                if (baby->base.xspeed < 0)
                    baby->base.xspeed = 0;
            }
        }
        break;
    }
    baby->base.flags &= ~1;
    baby->base.flags |= gobbler->obj2.base.flags & 1;
    if (gobbler->obj2.unk83 == 1 && gobbler->obj2.base.unk1 == 0xE)
    {
        baby->unk83 = 2;
        baby->base.flags &= ~2;
    }
    if (baby->base.y - baby->base.yspeed <= 0xEE00)
    {
        baby->base.yspeed = 0;
        baby->base.y = 0xEE00;
    }
    if (baby->base.y - baby->base.yspeed >= 0x12A00)
    {
        baby->base.yspeed = 0;
        baby->base.y = 0x12A00;
    }
}

static void sub_080E6CDC(struct Object2 *baby)
{
    struct Gobbler *gobbler = baby->base.parent;

    if (baby->unk78 == sub_080E6784)
    {
        ObjectSetFunc(baby, 0, sub_080E6D4C);
        baby->kirby3 = sub_0803D5CC(&baby->base);
        baby->base.flags &= ~1;
        baby->base.flags |= gobbler->obj2.base.flags & 1;
        baby->base.xspeed = 0;
        baby->base.yspeed = 0;
        if (baby->object->subtype1 == 1)
            baby->unk9F = 1;
        else
            baby->unk9F = 0x10;
    }
}

static void sub_080E6D4C(struct Object2 *baby)
{
    if (!baby->unk9F)
    {
        if (baby->base.counter < 0xC)
        {
            if (baby->base.flags & 1)
            {
                baby->base.xspeed += 0x20;
                if (baby->base.xspeed < -0x100)
                    baby->base.xspeed = -0x100;
                else if (baby->base.xspeed > 0x100)
                    baby->base.xspeed = 0x100;
            }
            else
            {
                baby->base.xspeed -= 0x20;
                if (baby->base.xspeed > 0x100)
                    baby->base.xspeed = 0x100;
                else if (baby->base.xspeed < -0x100)
                    baby->base.xspeed = -0x100;
            }
        }
        else
            baby->base.xspeed = 0;
        if (++baby->base.counter > 0x14)
            sub_080E7CA8(baby);
    }
    else
        --baby->unk9F;
    if (baby->base.y - baby->base.yspeed <= 0xEE00)
    {
        baby->base.yspeed = 0;
        baby->base.y = 0xEE00;
    }
    if (baby->base.y - baby->base.yspeed >= 0x12A00)
    {
        baby->base.yspeed = 0;
        baby->base.y = 0x12A00;
    }
}

static void sub_080E6E1C(struct Object2 *baby)
{
    baby->base.flags |= 4;
    if (baby->object->subtype1 == 1)
    {
        if (baby->base.flags & 1)
        {
            baby->base.xspeed -= 0x40;
            if (baby->base.xspeed < -0x240)
                baby->base.xspeed = -0x240;
            else if (baby->base.xspeed > 0x240)
                baby->base.xspeed = 0x240;
        }
        else
        {
            baby->base.xspeed += 0x40;
            if (baby->base.xspeed > 0x240)
                baby->base.xspeed = 0x240;
            else if (baby->base.xspeed < -0x240)
                baby->base.xspeed = -0x240;
        }
        if (baby->kirby3->base.base.base.y >= baby->base.y + 0x800)
        {
            baby->base.yspeed -= 0x20;
            if (baby->base.yspeed < -0x180)
                baby->base.yspeed = -0x180;
        }
        else if (baby->kirby3->base.base.base.y <= baby->base.y - 0x800)
        {
            baby->base.yspeed += 0x20;
            if (baby->base.yspeed > 0x180)
                baby->base.yspeed = 0x180;
        }
        else
        {
            if (baby->base.yspeed < 0)
            {
                baby->base.yspeed += 0x12;
                if (baby->base.yspeed > 0)
                    baby->base.yspeed = 0;
            }
            else
            {
                baby->base.yspeed -= 0x12;
                if (baby->base.yspeed < 0)
                    baby->base.yspeed = 0;
            }
        }
    }
    else
    {
        if (baby->base.flags & 1)
        {
            baby->base.xspeed -= 0x40;
            if (baby->base.xspeed < -0x2D0)
                baby->base.xspeed = -0x2D0;
            else if (baby->base.xspeed > 0x2D0)
                baby->base.xspeed = 0x2D0;
        }
        else
        {
            baby->base.xspeed += 0x40;
            if (baby->base.xspeed > 0x2D0)
                baby->base.xspeed = 0x2D0;
            else if (baby->base.xspeed < -0x2D0)
                baby->base.xspeed = -0x2D0;
        }
        if (baby->kirby3->base.base.base.y >= baby->base.y + 0x800)
        {
            baby->base.yspeed -= 0x10;
            if (baby->base.yspeed < -0xD0)
                baby->base.yspeed = -0xD0;
        }
        else if (baby->kirby3->base.base.base.y <= baby->base.y - 0x800)
        {
            baby->base.yspeed += 0x10;
            if (baby->base.yspeed > 0xD0)
                baby->base.yspeed = 0xD0;
        }
        else
        {
            if (baby->base.yspeed < 0)
            {
                baby->base.yspeed += 8;
                if (baby->base.yspeed > 0)
                    baby->base.yspeed = 0;
            }
            else
            {
                baby->base.yspeed -= 8;
                if (baby->base.yspeed < 0)
                    baby->base.yspeed = 0;
            }
        }
    }
    if (baby->base.y - baby->base.yspeed <= 0xEE00)
    {
        baby->base.yspeed = 0;
        baby->base.y = 0xEE00;
    }
    if (baby->base.y - baby->base.yspeed >= 0x12A00)
    {
        baby->base.yspeed = 0;
        baby->base.y = 0x12A00;
    }
}

static void sub_080E7028(struct Object2 *baby)
{
    struct Gobbler *gobbler = baby->base.parent;

    if (baby->unk78 == sub_080E6784)
    {
        ObjectSetFunc(baby, 0, sub_080E7148);
        if (gobbler->obj2.base.flags & 1)
        {
            switch (RandLessThan3())
            {
            case 0:
                baby->unkA0 = 0xC0;
                break;
            case 1:
                baby->unkA0 = 0xE0;
                break;
            case 2:
                baby->unkA0 = 0x110;
                break;
            }
            baby->base.flags |= 1;
            
        }
        else
        {
            switch (RandLessThan3())
            {
            case 0:
                baby->unkA0 = -0x10;
                break;
            case 1:
                baby->unkA0 = 0x20;
                break;
            case 2:
                baby->unkA0 = 0x40;
                break;
            }
            baby->base.flags &= ~1;
        }
        baby->unkA2 = 0xEE;
    }
}

static void sub_080E7148(struct Object2 *baby)
{
    u32 r5 = baby->base.flags & 1;
    s32 lhs, rhs;

    baby->base.flags |= 4;
    ++baby->unk9E;
    lhs = baby->base.y & ~0x3FF;
    rhs = (baby->unkA2 * 0x100) & ~0x3FF;
    if (lhs > rhs)
    {
        baby->base.yspeed += 0x10;
        if (baby->base.yspeed > 0x120)
            baby->base.yspeed = 0x120;
    }
    else if (lhs < rhs)
    {
        baby->base.yspeed -= 0x10;
        if (baby->base.yspeed < -0x120)
            baby->base.yspeed = -0x120;
    }
    else
    {
        if (baby->base.yspeed < 0)
        {
            baby->base.yspeed += 0x30;
            if (baby->base.yspeed > 0)
                baby->base.yspeed = 0;
        }
        else
        {
            baby->base.yspeed -= 0x30;
            if (baby->base.yspeed < 0)
                baby->base.yspeed = 0;
        }
    }
    lhs = baby->base.x & ~0x3FF;
    rhs = (baby->unkA0 * 0x100) & ~0x3FF;
    if (lhs < rhs)
    {
        baby->base.flags &= ~1;
        baby->base.xspeed += 0xE;
        if (baby->base.xspeed > 0x180)
            baby->base.xspeed = 0x180;
        else if (baby->base.xspeed < -0x180)
            baby->base.xspeed = -0x180;
    }
    else if (lhs > rhs)
    {
        baby->base.flags |= 1;
        if (baby->base.flags & 1)
        {
            baby->base.xspeed -= 0xE;
            if (baby->base.xspeed < -0x180)
                baby->base.xspeed = -0x180;
            else if (baby->base.xspeed > 0x180)
                baby->base.xspeed = 0x180;
        }
        else
        {
            baby->base.xspeed += 0xE;
            if (baby->base.xspeed > 0x180)
                baby->base.xspeed = 0x180;
            else if (baby->base.xspeed < -0x180)
                baby->base.xspeed = -0x180;
        }
    }
    else
    {
        if (baby->base.xspeed < 0)
        {
            baby->base.xspeed += 0x60;
            if (baby->base.xspeed > 0)
                baby->base.xspeed = 0;
        }
        else
        {
            baby->base.xspeed -= 0x60;
            if (baby->base.xspeed < 0)
                baby->base.xspeed = 0;
        }
    }
    baby->base.flags &= ~1;
    baby->base.flags |= r5;
    if (!baby->base.xspeed && !baby->base.yspeed)
        sub_080E7CBC(baby);
}

static void sub_080E72C0(struct Object2 *baby)
{
    struct Gobbler *gobbler = baby->base.parent;

    if (!baby->unk9E)
    {
        ++baby->unk9F;
        if (!gUnk_08356B88[baby->unk9F].unk8)
            --baby->unk9F;
        baby->unk9E = gUnk_08356B88[baby->unk9F].unk8;
        if (gUnk_08356B88[baby->unk9F].unk9 != 0xFF)
            baby->unk83 = gUnk_08356B88[baby->unk9F].unk9;
        if (baby->unk9F)
        {
            if (gUnk_08356B88[baby->unk9F].unk0 != gUnk_08356B88[baby->unk9F-1].unk0)
            {
                baby->base.xspeed = gUnk_08356B88[baby->unk9F].unk0;
                if (baby->base.flags & 1)
                    baby->base.xspeed = -baby->base.xspeed;
            }
            if (gUnk_08356B88[baby->unk9F].unk2 != gUnk_08356B88[baby->unk9F-1].unk2)
                baby->base.yspeed = gUnk_08356B88[baby->unk9F].unk2;
        }
        else
        {
            baby->base.yspeed = gUnk_08356B88[baby->unk9F].unk2;
            baby->base.xspeed = gUnk_08356B88[baby->unk9F].unk0;
            if (baby->base.flags & 1)
                baby->base.xspeed = -baby->base.xspeed;
        }
    }
    if (baby->base.flags & 1)
        baby->base.xspeed -= gUnk_08356B88[baby->unk9F].unk4;
    else
        baby->base.xspeed += gUnk_08356B88[baby->unk9F].unk4;
    baby->base.yspeed += gUnk_08356B88[baby->unk9F].unk6;
    --baby->unk9E;
    if (baby->unk83 == 2)
    {
        if (abs(gobbler->obj2.base.x - baby->base.x) < 0x4000)
            baby->base.counter = 1;
        if (baby->base.flags & 2)
        {
            if (baby->unk85)
            {
                baby->unk83 = 0;
                baby->base.flags ^= 1;
                baby->unk85 = 0;
            }
            else
                baby->unk85 = 1;
        }
    }
    if (!gUnk_08356B88[(u8)(baby->unk9F + 1)].unk8 && !baby->unk9E)
    {
        if (baby->base.counter)
        {
            baby->base.unkC &= ~2;
            ObjectSetFunc(baby, 0, sub_080E6784);
            baby->base.flags |= 0x140;
            baby->base.flags &= ~0x20;
            baby->base.flags &= ~0x2000000;
        }
        else
            baby->unk9F = 0xFF;
    }
}

bool8 sub_080E74E4(struct Object2 *baby, struct Kirby *kirby)
{
    if (baby->unk83 != 3
        || kirby->base.base.base.unk0
        || kirby->hp <= 0
        || kirby->unkD4 == 39
        || kirby->unkD4 > 122
        || kirby->unk110
        || kirby->base.base.base.flags & 0x3800B00)
        return FALSE;
    ObjectSetFunc(baby, 7, sub_080E7CF4);
    baby->base.xspeed = 0;
    baby->base.yspeed = 0;
    baby->unk9F = 0;
    baby->unk9E = 0;
    kirby->unk110 = gUnk_08356B00;
    baby->kirby3 = kirby;
    baby->base.flags &= ~2;
    baby->base.unk6C = kirby;
    baby->base.xspeed = 0x80;
    if (baby->base.flags & 1)
        baby->base.xspeed = -baby->base.xspeed;
    PlaySfx(&baby->base, SE_08D599D8);
    return TRUE;
}

static void sub_080E761C(struct Object2 *baby)
{
    struct Task *t = TaskCreate(sub_080E76FC, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase;
    u32 flags;

    if (tmp) objBase = tmp; // see also: sub_080BF914
    objBase = tmp;
    sub_0803E380(objBase);
    objBase->unk0 = 2;
    objBase->x = baby->base.x;
    objBase->y = baby->base.y;
    objBase->parent = baby;
    objBase->counter = 0;
    objBase->roomId = baby->base.roomId;
    objBase->unk56 = baby->base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->unk68 |= 0x20;
    objBase->flags = flags = 0x12010400;
    objBase->unk68 &= ~7;
    objBase->unk68 |= 3;
    objBase->unk5C |= 0x80000;
    if (baby->base.flags & 1)
        flags |= 1;
    objBase->flags = flags;
    sub_0803E2B0(objBase, 0, -6, 0xC, 6);
}

static void sub_080E76FC(void)
{
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Object2 *baby = objBase->parent;
    if (objBase->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (baby->base.flags & 0x1000)
        objBase->flags |= 0x1000;
    else
    {
        objBase->x = baby->base.x;
        objBase->y = baby->base.y;
        objBase->unk56 = baby->base.unk56;
        if (Macro_0810B1F4(objBase) && !(objBase->flags & 0x2000))
            sub_0803D9A8(objBase);
        else
        {
            if (baby->base.flags & 1)
                objBase->flags |= 1;
            else
                objBase->flags &= ~1;
            if (baby->unk83 == 3)
            {
                if (objBase->flags & 0x40000)
                    objBase->flags &= ~0x40000;
                else if (!(objBase->flags & 0x200))
                    SetPointerSomething(objBase);
            }
        }
    }
}

static void sub_080E7848(struct Gobbler *gobbler, u8 a2)
{
    struct Gobbler *gobbler2 = gobbler;
    struct Object2 *baby;
    s32 x = gobbler->obj2.base.x >> 8;
    s32 y = gobbler->obj2.base.y >> 8;

    baby = CreateObjTemplateAndObj(gobbler->obj2.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, OBJ_GOBBLER_BABY,
        a2, 0, gobbler->obj2.object->subtype2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    baby->base.parent = gobbler;
    switch (a2)
    {
    default:
    case 0:
        gobbler2->babies[0] = baby;
        break;
    case 1:
        gobbler2->babies[1] = baby;
        break;
    case 2:
        gobbler2->babies[2] = baby;
        break;
    }
    PlaySfx(&gobbler->obj2.base, SE_08D59E7C);
}

void sub_080E79A4(struct Object2 *baby)
{
    ObjectSetFunc(baby, 0, sub_080E6784);
    baby->base.flags |= 0x140;
    baby->base.flags &= ~0x20;
    baby->base.flags &= ~0x2000000;
}

static void sub_080E79D4(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0, sub_080E3FFC);
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = 0;
}

static void sub_080E79F8(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 4, sub_080E5290);
    gobbler->obj2.base.flags &= ~2;
}

static void sub_080E7A18(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0xF, sub_080E5760);
    gobbler->obj2.base.flags &= ~2;
}

static void sub_080E7A38(struct Gobbler *gobbler)
{
    if (gobbler->obj2.base.flags & 2)
        sub_080E7A50(gobbler);
}

static void sub_080E7A50(struct Gobbler *gobbler)
{
    struct Kirby *kirby = gobbler->obj2.kirby3;

    ObjectSetFunc(gobbler, 6, sub_080E7A80);
    kirby->unk110 = gUnk_08356AD8;
    gobbler->obj2.base.counter = 0x10;
}

static void sub_080E7A80(struct Gobbler *gobbler)
{
    if (!--gobbler->obj2.base.counter)
        sub_080E7A9C(gobbler);
}

static void sub_080E7A9C(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 7, sub_080E7ABC);
    gobbler->obj2.base.flags &= ~2;
}

static void sub_080E7ABC(struct Gobbler *gobbler)
{
    struct Kirby *kirby = gobbler->obj2.kirby3;

    if (gobbler->obj2.unk83 == 7)
    {
        if (gobbler->obj2.base.flags & 2)
        {
            gobbler->obj2.unk83 = 8;
            gobbler->obj2.base.counter = 0x10;
            kirby->unk110 = gUnk_08356AF0;
        }
    }
    else if (!--gobbler->obj2.base.counter)
    {
        sub_080E4BD0(gobbler);
        gobbler->obj2.unk83 = 4;
    }
}

static void sub_080E7B0C(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 9, sub_080E7B38);
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.base.flags &= ~2;
}

static void sub_080E7B38(struct Gobbler *gobbler)
{
    if (gobbler->obj2.base.flags & 2)
        sub_080E59B4(gobbler);
}

static void sub_080E7B50(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0xB, sub_080E5AC4);
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.base.flags &= ~2;
    gobbler->obj2.base.flags &= ~4;
}

static void sub_080E7B7C(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0xC, sub_080E5B8C);
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.base.flags &= ~2;
}

static void sub_080E7BA4(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 1, sub_080E45BC);
    gobbler->obj2.base.flags &= ~2;
    gobbler->obj2.unk9F = 0;
}

static void sub_080E7BCC(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0, sub_080E4784);
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = 0;
    gobbler->obj2.base.flags &= ~2;
    gobbler->obj2.base.flags ^= 1;
    gobbler->obj2.unk9F = 0x12;
}

static void sub_080E7C00(struct Gobbler *gobbler)
{
    ObjectSetFunc(gobbler, 0x11, sub_080E5D04);
    gobbler->obj2.base.flags |= 0x40;
    gobbler->obj2.base.flags |= 0x200;
    gobbler->obj2.base.xspeed = 0;
    gobbler->obj2.base.yspeed = -0x40;
    gobbler->obj2.base.counter = 0x78;
    sub_080E625C(gobbler, -9, 4);
    sub_080E625C(gobbler, -8, -6);
}

static void sub_080E7C54(struct Gobbler *gobbler)
{
    if (gobbler->babies[0] && gobbler->babies[0]->base.flags & 0x1000)
        gobbler->babies[0] = NULL;
    if (gobbler->babies[1] && gobbler->babies[1]->base.flags & 0x1000)
        gobbler->babies[1] = NULL;
    if (gobbler->babies[2] && gobbler->babies[2]->base.flags & 0x1000)
        gobbler->babies[2] = NULL;
}

static void sub_080E7CA8(struct Object2 *baby)
{
    ObjectSetFunc(baby, 3, sub_080E6E1C);
}

static void sub_080E7CBC(struct Object2 *baby)
{
    ObjectSetFunc(baby, 6, sub_080E72C0);
    baby->base.flags |= 0x40;
    baby->base.flags &= ~0x20;
    baby->base.unkC |= 2;
    baby->base.flags |= 0x2000000;
    baby->unk85 = 0;
}

static void sub_080E7CF4(struct Object2 *baby)
{
    if (baby->base.unk1 == 0xF)
        baby->base.xspeed = 0;
    if (baby->base.flags & 2)
        sub_080E7D1C(baby);
}

static void sub_080E7D1C(struct Object2 *baby)
{
    ObjectSetFunc(baby, 8, sub_080E7D38);
    baby->base.counter = 0x10;
}

static void sub_080E7D38(struct Object2 *baby)
{
    if (!--baby->base.counter)
    {
        ObjectSetFunc(baby, 0, sub_080E6784);
        baby->base.flags |= 0x140;
        baby->base.flags &= ~0x20;
        baby->base.flags &= ~0x2000000;
    }
}
