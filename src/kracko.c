#include "kracko.h"
#include "object.h"
#include "functions.h"
#include "random.h"
#include "kirby.h"
#include "code_0806F780.h"
#include "constants/kirby.h"

static void KrackoIdle(struct Kracko *);
static void KrackoStartSweep(struct Kracko *);
static void KrackoSweep(struct Kracko *);
static void KrackoSweep2(struct Kracko *);
static void KrackoStartBeamSpin(struct Kracko *);
static void KrackoStartLowSweep(struct Kracko *);
static struct Object4 *KrackoCreateCloud(struct Kracko *);
static void KrackoCloudMain(void);
static void KrackoIntroCloudMain(void);
static void KrackoEyeMain(void);
static struct Object4 *KrackoCreateRaindrop(struct ObjectBase *, s8, s8);
static void KrackoRaindropMain(void);
static void KrackoUpdateEyeDirection(struct Object4 *, struct Kracko *);
static void KrackoSpawnMinion(struct Kracko *);
static void KrackoSpawnLightningBolt(struct Kracko *);
static void KrackoCreateLightningSegment(struct Kracko *, s8, s8, u8);
static void KrackoLightningSegmentMain(void);
static void KrackoCreateBeamSegment(struct Kracko *, u8, bool8);
static void KrackoBeamSegmentMain(void);
static void KrackoSpawnDroplet(struct Kracko *, u8);
static void KrackoDropletMain(void);
static void KrackoHitFlash(struct Kracko *);
static void KrackoStartWaitForKirby(struct Kracko *);
static void KrackoStartLightningApproach(struct Kracko *);
static void KrackoStartLightningAttack(struct Kracko *);
static void KrackoStartLightningRecover(struct Kracko *);
static void KrackoStartLightningApproach2(struct Kracko *);
static void KrackoStartRainAttack(struct Kracko *);
static void KrackoStartSpawnObject(struct Kracko *);
static void KrackoBeamSpinWindup(struct Kracko *);
static void KrackoLowSweepWindup(struct Kracko *);
static void KrackoStartLowSweepDescend(struct Kracko *);
static void KrackoStartLowSweepDash(struct Kracko *);
static void KrackoStartLowSweepRise(struct Kracko *);
static void KrackoLowSweepRise(struct Kracko *);
static void KrackoStartIntro(struct Kracko *);

const struct AnimInfo gKrackoAnimInfo4[] = {
    { 0x339, 0, 0 },
    { 0x339, 1, 0 },
    { 0x339, 2, 0 },
    { 0x339, 3, 0 },
    { 0x339, 4, 0 },
    { 0x339, 5, 0 },
    { 0x339, 6, 0 },
    { 0x339, 7, 0 },
    { 0x339, 8, 0 },
    { 0x339, 8, 0 },
    { 0x339, 8, 0 },
};

static const struct MoveStep gKrackoMoveSteps[] = {
    { 0x200,  0x100,  0, 0, 0xA, 0xFF },
    { 0x100,  0x80,   0, 0, 0xA, 0xFF },
    { 0x80,   0x20,   0, 0, 0xA, 0xFF },
    { 0,      0,      0, 0, 0xA, 0xFF },
    { -0x400, -0x80,  0, 0, 8,   0xFF },
    { -0x300, -0x100, 0, 0, 8,   0xFF },
    { -0x200, -0x200, 0, 0, 8,   0xFF },
    { -0x100, -0x200, 0, 0, 4,   0xFF },
    { -0x80,  -0x300, 0, 0, 4,   0xFF },
    { 0x80,   -0x300, 0, 0, 4,   0xFF },
    { 0x100,  -0x200, 0, 0, 4,   0xFF },
    { 0x200,  -0x200, 0, 0, 8,   0xFF },
    { 0x300,  -0x100, 0, 0, 8,   0xFF },
    { 0x400,  -0x80,  0, 0, 8,   0xFF },
    { 0x600,  0,      0, 0, 0xA, 0xFF },
    { 0x400,  0x200,  0, 0, 8,   0xFF },
    { 0x300,  0x400,  0, 0, 4,   0xFF },
    { 0x200,  0x600,  0, 0, 4,   0xFF },
    { 0x100,  0x400,  0, 0, 4,   0xFF },
    { -0x100, 0x400,  0, 0, 4,   0xFF },
    { -0x200, 0x200,  0, 0, 4,   0xFF },
    { -0x400, 0x100,  0, 0, 4,   0xFF },
    { -0x300, 0x80,   0, 0, 8,   0xFF },
    { -0x200, -0x80,  0, 0, 4,   0xFF },
    { -0x100, -0x100, 0, 0, 4,   0xFF },
    { -0x80,  -0x200, 0, 0, 4,   0xFF },
    { 0x80,   -0x100, 0, 0, 4,   0xFF },
    { 0x100,  -0x100, 0, 0, 4,   0xFF },
    { 0x100,  -0x80,  0, 0, 4,   0xFF },
    { 0x20,   0,      0, 0, 6,   0xFF },
    { 0 },
};

static const struct MoveStep gKrackoMoveSteps2[] = {
    { -0x100, 0x80,   0, 0, 4,   0xFF },
    { -0x200, 0x100,  0, 0, 4,   0xFF },
    { 0,      0,      0, 0, 0xC, 0xFF },
    { 0x100,  -0x80,  0, 0, 4,   0xFF },
    { 0x200,  -0x100, 0, 0, 4,   0xFF },
    { 0x300,  -0x100, 0, 0, 4,   0xFF },
    { 0x200,  -0x200, 0, 0, 4,   0xFF },
    { 0x100,  -0x400, 0, 0, 4,   0xFF },
    { 0x80,   -0x600, 0, 0, 2,   0xFF },
    { -0x80,  -0x600, 0, 0, 2,   0xFF },
    { -0x100, -0x400, 0, 0, 4,   0xFF },
    { -0x200, -0x300, 0, 0, 4,   0xFF },
    { -0x300, -0x100, 0, 0, 4,   0xFF },
    { 0,      0,      0, 0, 4,   0xFF },
    { 0x100,  0x300,  0, 0, 4,   0xFF },
    { 0x200,  0x200,  0, 0, 4,   0xFF },
    { 0x400,  0x100,  0, 0, 4,   0xFF },
    { 0xA00,  0x80,   0, 0, 2,   0xFF },
    { 0xA00,  -0x80,  0, 0, 2,   0xFF },
    { 0x400,  -0x100, 0, 0, 4,   0xFF },
    { 0x200,  -0x200, 0, 0, 4,   0xFF },
    { 0x100,  -0x300, 0, 0, 4,   0xFF },
    { 0,      0,      0, 0, 4,   0xFF },
    { -0x300, 0x100,  0, 0, 4,   0xFF },
    { -0x200, 0x200,  0, 0, 4,   0xFF },
    { -0x100, 0x400,  0, 0, 4,   0xFF },
    { -0x80,  0x600,  0, 0, 2,   0xFF },
    { 0x80,   0x600,  0, 0, 2,   0xFF },
    { 0x100,  0x400,  0, 0, 4,   0xFF },
    { 0x200,  0x300,  0, 0, 4,   0xFF },
    { 0x300,  0x100,  0, 0, 4,   0xFF },
    { 0 },
};

static const struct MoveStep gKrackoMoveSteps3[] = {
    { -0x200, -0x100, 0, 0, 0x10, 0xFF },
    { -0x100, -0x100, 0, 0, 0xC,  0xFF },
    { -0x80,  -0x80,  0, 0, 8,    0xFF },
    { 0,      0,      0, 0, 0x10, 0xFF },
    { 0 },
};

static const struct MoveStep gKrackoMoveSteps4[] = {
    { -0x20,  0,     0, 0, 4,    0xFF },
    { -0x80,  0x80,  0, 0, 8,    0xFF },
    { -0x100, 0x100, 0, 0, 0xC,  0xFF },
    { -0x200, 0x100, 0, 0, 0x10, 0xFF },
    { 0 },
};

static const struct MoveStep gKrackoMoveSteps5[] = {
    { 0x440, -0x100, 0, 0, 0x12, 0xFF },
    { 0x300, -0x100, 0, 0, 0xA,  0xFF },
    { 0x200, -0x80,  0, 0, 8,    0xFF },
    { 0x100, 0,      0, 0, 8,    0xFF },
    { 0,     0,      0, 0, 0x10, 0xFF },
    { 0 },
};

static const s16 gUnk_083567CC[] = {
    0x80, -0x20, -0x80, 0x20
};

static const s16 gUnk_083567D4[] = {
    -0xC0, -0x180, -0xC0, 0xC0, 0x180, 0xC0
};

static const s16 gUnk_083567E0[] = {
    0x400,  0x200,  0x100,  0x80,
    -0x100, -0x200, -0x300, -0x400
};

static const s16 gUnk_083567F0[] = {
    0x400, 0x300,  0x200,  0x100,
    -0x80, -0x100, -0x200, -0x400
};

static const s8 gUnk_08356800[] = {
    8, -8, -8, 8, 0, 0, -8, 8,
    0, 0,  0,  0
};

static const s8 gUnk_0835680C[] = {
    8, -8, -8, 8, 8, -8, 0, 0,
    0, 0,  0,  0, -7, 0, 7
};

static const s8 gUnk_0835681B[] = {
    6, 2,  -5, 2, 4, -2, -3, -2,
    2, 2,  -2, 2, 1, -3, -1, -3,
    0, 0,  0,  2, 0,  2, 0,  -2,
    0, -2, 0,  0
};

static const s16 gUnk_08356838[] = {
    0x200,  0x600,  0x400,  0x400,
    0x600,  0x200,  0x600,  -0x200,
    0x400,  -0x400, 0x200,  -0x600,
    -0x200, -0x600, -0x400, -0x400,
    -0x600, -0x200, -0x600, 0x200,
    -0x400, 0x400,  -0x200, 0x600
};

static const struct AnimInfo gKrackoAnimInfo[] = {
    { 0x339, 0,    2 },
    { 0x339, 0x10, 2 },
    { 0x339, 0,    2 },
    { 0x339, 0x10, 2 },
    { 0x339, 0,    2 },
    { 0x339, 0x10, 2 },
    { 0x339, 0,    2 },
    { 0x339, 0x10, 2 },
    { 0x339, 0,    2 },
    { 0x339, 0x10, 2 },
    { 0x339, 0,    2 },
    { 0x339, 0x10, 2 },
    { 0x339, 0,    2 },
    { 0x339, 0,    -1 },
};

static const struct AnimInfo gKrackoAnimInfo2[] = {
    { 0x33B, 0,   2 },
    { 0x339, 0xE, 2 },
    { 0x33B, 0,   2 },
    { 0x339, 0xE, 2 },
    { 0x33B, 0,   2 },
    { 0x339, 0xE, 2 },
    { 0x33B, 0,   2 },
    { 0x339, 0xE, 2 },
    { 0x33B, 0,   2 },
    { 0x339, 0xE, 2 },
    { 0x33B, 0,   2 },
    { 0x339, 0xE, 2 },
    { 0x33B, 0,   2 },
    { 0x33B, 0,   -1 },
};

static const struct AnimInfo gKrackoAnimInfo3[] = {
    { 0x33A, 0,   2 },
    { 0x339, 0xF, 2 },
    { 0x33A, 0,   2 },
    { 0x339, 0xF, 2 },
    { 0x33A, 0,   2 },
    { 0x339, 0xF, 2 },
    { 0x33A, 0,   2 },
    { 0x339, 0xF, 2 },
    { 0x33A, 0,   2 },
    { 0x339, 0xF, 2 },
    { 0x33A, 0,   2 },
    { 0x339, 0xF, 2 },
    { 0x33A, 0,   2 },
    { 0x33A, 0,   -1 },
};

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
    ObjectSetHitbox(&kracko->obj2.base, -0x1A, -0x14, 0x1A, 0xE);
    ObjectInitSprite(&kracko->obj2);
    Macro_080E7D74(&kracko->obj2);
    kracko->obj2.unk9E = 0;
    kracko->obj2.unk7C = KrackoHitFlash;
    KrackoStartWaitForKirby(kracko);
    krackoAlias->unkBC = NULL;
    krackoAlias->unkC0 = 0;
    krackoAlias->unkC1 = 0;
    krackoAlias->unkC2 = 0;
    krackoAlias->unkC3 = 0;
    return kracko;
}

static void KrackoWaitForKirby(struct Kracko *kracko)
{
    kracko->obj2.kirby3 = FindClosestKirby(&kracko->obj2.base);
    kracko->obj2.base.flags |= 4;
    if (!(kracko->obj2.kirby3->base.base.base.unkC & 0x8000)
        && kracko->obj2.base.roomId == kracko->obj2.kirby3->base.base.base.roomId
        && Macro_08039430_1(&kracko->obj2.kirby3->base.base.base, &kracko->obj2))
    {
        Macro_081003EC(&kracko->obj2, &kracko->obj2.kirby3->base.base.base);
        KrackoStartIntro(kracko);
    }
}

static void KrackoIntro(struct Kracko *kracko)
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
            KrackoStartIdle(kracko);
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
                krackoAlias->unkB4 = KrackoCreateCloud(kracko);
                kracko->obj2.base.yspeed = -0x80;
            }
        }
    }
}

static void KrackoChooseAttack(struct Kracko *kracko)
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
            KrackoStartSpawnObject(kracko);
            return;
        }
        else if (Rand16() & 1)
        {
            kracko->obj2.unk85 = 0;
            krackoAlias->unkC0 = 1;
            KrackoStartSpawnObject(kracko);
            return;
        }
    }
    krackoAlias->unkC0 = 0;
    ++kracko->obj2.unk85;
    kracko->obj2.kirby3 = FindClosestKirby(&kracko->obj2.base);
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
        KrackoStartLightningApproach(kracko);
    }
    else if (r6 < r8 + sb)
    {
        krackoAlias->unkC1 = 0;
        krackoAlias->unkC2 = 0;
        KrackoStartSweep(kracko);
    }
    else if (r6 < r8 + sb + sl)
    {
        krackoAlias->unkC2 = 1;
        krackoAlias->unkC1 = 0;
        KrackoStartBeamSpin(kracko);
    }
    else
    {
        krackoAlias->unkC1 = 0;
        krackoAlias->unkC2 = 0;
        if (Rand16() & 1)
            KrackoStartRainAttack(kracko);
        else
            KrackoStartLowSweep(kracko);
    }
}

void KrackoStartIdle(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 0, KrackoIdle);
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
    if (kracko->obj2.subtype || kracko->obj2.unk80 <= gUnk_08351530[0xD][gNumPlayers - 1] >> 1)
        kracko->obj2.unk9F = 1;
}

static void KrackoIdle(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9F)
    {
        kracko->obj2.base.yspeed = 0;
        KrackoChooseAttack(kracko);
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

static void KrackoStartSweep(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoSweep);
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = 0;
    kracko->obj2.base.counter = 0x5A;
    PlaySfx(&kracko->obj2.base, SE_KRACKO_SWEEP_ATTACK);
    if ((kracko->obj2.subtype || kracko->obj2.unk80 <= gUnk_08351530[0xD][gNumPlayers - 1] >> 1)
        && Rand16() & 1)
    {
        kracko->obj2.unk78 = KrackoSweep2;
        kracko->obj2.unk83 = 0;
    }
}

static void KrackoSweep(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gKrackoMoveSteps[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gKrackoMoveSteps[kracko->obj2.unk9F].unk8;
        if (gKrackoMoveSteps[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gKrackoMoveSteps[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gKrackoMoveSteps[kracko->obj2.unk9F].unk0 != gKrackoMoveSteps[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gKrackoMoveSteps[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gKrackoMoveSteps[kracko->obj2.unk9F].unk2 != gKrackoMoveSteps[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gKrackoMoveSteps[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gKrackoMoveSteps[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gKrackoMoveSteps[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gKrackoMoveSteps[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gKrackoMoveSteps[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gKrackoMoveSteps[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gKrackoMoveSteps[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
        KrackoStartIdle(kracko);
}

static void KrackoSweep2(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gKrackoMoveSteps2[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gKrackoMoveSteps2[kracko->obj2.unk9F].unk8;
        if (gKrackoMoveSteps2[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gKrackoMoveSteps2[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gKrackoMoveSteps2[kracko->obj2.unk9F].unk0 != gKrackoMoveSteps2[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gKrackoMoveSteps2[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gKrackoMoveSteps2[kracko->obj2.unk9F].unk2 != gKrackoMoveSteps2[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gKrackoMoveSteps2[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gKrackoMoveSteps2[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gKrackoMoveSteps2[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gKrackoMoveSteps2[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gKrackoMoveSteps2[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gKrackoMoveSteps2[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gKrackoMoveSteps2[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
        KrackoStartIdle(kracko);
    if (!kracko->obj2.unk9E && kracko->obj2.unk9F == 8)
        PlaySfx(&kracko->obj2.base, SE_KRACKO_SWEEP_ATTACK);
}

static void KrackoLightningApproach(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gKrackoMoveSteps3[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gKrackoMoveSteps3[kracko->obj2.unk9F].unk8;
        if (gKrackoMoveSteps3[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gKrackoMoveSteps3[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gKrackoMoveSteps3[kracko->obj2.unk9F].unk0 != gKrackoMoveSteps3[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gKrackoMoveSteps3[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gKrackoMoveSteps3[kracko->obj2.unk9F].unk2 != gKrackoMoveSteps3[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gKrackoMoveSteps3[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gKrackoMoveSteps3[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gKrackoMoveSteps3[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gKrackoMoveSteps3[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gKrackoMoveSteps3[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gKrackoMoveSteps3[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gKrackoMoveSteps3[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
        KrackoStartLightningAttack(kracko);
}

static void KrackoLightningApproach2(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gKrackoMoveSteps5[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gKrackoMoveSteps5[kracko->obj2.unk9F].unk8;
        if (gKrackoMoveSteps5[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gKrackoMoveSteps5[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gKrackoMoveSteps5[kracko->obj2.unk9F].unk0 != gKrackoMoveSteps5[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gKrackoMoveSteps5[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gKrackoMoveSteps5[kracko->obj2.unk9F].unk2 != gKrackoMoveSteps5[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gKrackoMoveSteps5[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gKrackoMoveSteps5[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gKrackoMoveSteps5[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gKrackoMoveSteps5[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gKrackoMoveSteps5[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gKrackoMoveSteps5[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gKrackoMoveSteps5[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
    {
        kracko->obj2.base.flags ^= 1;
        KrackoStartLightningAttack(kracko);
    }
}

static void KrackoLightningAttack(struct Kracko *kracko)
{
    if (!(kracko->obj2.base.counter & 3))
        KrackoSpawnLightningBolt(kracko);
    if (!(kracko->obj2.base.counter & 7))
        PlaySfx(&kracko->obj2.base, SE_KRACKO_LIGHTNING_ATTACK);
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
            KrackoStartLightningRecover(kracko);
        }
    }
    else
    {
        if (kracko->obj2.base.x + kracko->obj2.base.xspeed > 0xE080)
        {
            kracko->obj2.base.x = 0xE080;
            KrackoStartLightningRecover(kracko);
        }
    }
}

static void KrackoLightningRecover(struct Kracko *kracko)
{
    if (!kracko->obj2.unk9E)
    {
        ++kracko->obj2.unk9F;
        if (!gKrackoMoveSteps4[kracko->obj2.unk9F].unk8)
            --kracko->obj2.unk9F;
        kracko->obj2.unk9E = gKrackoMoveSteps4[kracko->obj2.unk9F].unk8;
        if (gKrackoMoveSteps4[kracko->obj2.unk9F].unk9 != 0xFF)
            kracko->obj2.unk83 = gKrackoMoveSteps4[kracko->obj2.unk9F].unk9;
        if (kracko->obj2.unk9F)
        {
            if (gKrackoMoveSteps4[kracko->obj2.unk9F].unk0 != gKrackoMoveSteps4[kracko->obj2.unk9F - 1].unk0)
            {
                kracko->obj2.base.xspeed = gKrackoMoveSteps4[kracko->obj2.unk9F].unk0;
                if (kracko->obj2.base.flags & 1)
                    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
            }
            if (gKrackoMoveSteps4[kracko->obj2.unk9F].unk2 != gKrackoMoveSteps4[kracko->obj2.unk9F - 1].unk2)
                kracko->obj2.base.yspeed = gKrackoMoveSteps4[kracko->obj2.unk9F].unk2;
        }
        else
        {
            kracko->obj2.base.yspeed = gKrackoMoveSteps4[kracko->obj2.unk9F].unk2;
            kracko->obj2.base.xspeed = gKrackoMoveSteps4[kracko->obj2.unk9F].unk0;
            if (kracko->obj2.base.flags & 1)
                kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
        }
    }
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed -= gKrackoMoveSteps4[kracko->obj2.unk9F].unk4;
    else
        kracko->obj2.base.xspeed += gKrackoMoveSteps4[kracko->obj2.unk9F].unk4;
    kracko->obj2.base.yspeed += gKrackoMoveSteps4[kracko->obj2.unk9F].unk6;
    --kracko->obj2.unk9E;
    if (!gKrackoMoveSteps4[(u8)(kracko->obj2.unk9F + 1)].unk8 && !kracko->obj2.unk9E)
        KrackoStartIdle(kracko);
}


static void KrackoRainAttack(struct Kracko *kracko)
{
    if (kracko->obj2.base.counter < 0x30)
        kracko->obj2.base.yspeed = gUnk_083567D4[kracko->obj2.base.counter >> 3];
    if (++kracko->obj2.base.counter >= 0x30)
    {
        if (kracko->obj2.unk9E)
        {
            if (kracko->obj2.base.counter > 0x30)
            {
                KrackoStartIdle(kracko);
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

        KrackoCreateRaindrop(&kracko->obj2.base, r1, r2);
#else
        KrackoCreateRaindrop(&kracko->obj2.base, -0x30, Rand32() ? 8 : 8);
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

static void KrackoSpawnObject(struct Kracko *kracko)
{
    if (!--kracko->obj2.base.counter)
    {
        kracko->obj2.unk9E = 1;
        KrackoSpawnMinion(kracko);
        PlaySfx(&kracko->obj2.base, SE_SPAWN_OBJECT);
    }
    if (kracko->obj2.unk9E)
    {
        kracko->obj2.base.objBase54 = gUnk_0835681B[2 * kracko->obj2.unk9F];
        kracko->obj2.base.objBase55 = gUnk_0835681B[2 * kracko->obj2.unk9F + 1];
        if (++kracko->obj2.unk9F > 8)
            KrackoStartIdle(kracko);
    }
}

static void KrackoStartBeamSpin(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoBeamSpinWindup);
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = 0;
    if (kracko->obj2.subtype || kracko->obj2.unk80 <= gUnk_08351530[0xD][gNumPlayers - 1] >> 1)
        kracko->obj2.base.counter = 0x10;
    else
        kracko->obj2.base.counter = 0x24;
    kracko->obj2.unk9E = 0;
    kracko->obj2.unk9F = 0;
}

static void KrackoBeamSpin(struct Kracko *kracko)
{
    if (kracko->obj2.base.counter & 1)
    {
        bool8 boolean = FALSE;
        u8 var = kracko->obj2.unk9E + 6;

        if (var >= 0xC) var -= 0xC;
        if (kracko->obj2.unk9F)
            boolean = TRUE;
        KrackoCreateBeamSegment(kracko, kracko->obj2.unk9E, boolean);
        KrackoCreateBeamSegment(kracko, var, boolean);
        if (!kracko->obj2.unk9F)
            PlaySfx(&kracko->obj2.base, SE_WADDLE_DOO_BEAM_ATTACK);
        if (++kracko->obj2.unk9F > 2)
        {
            ++kracko->obj2.unk9E;
            kracko->obj2.base.counter = 0;
            kracko->obj2.unk9F = 0;
        }
    }
    ++kracko->obj2.base.counter;
    if (kracko->obj2.unk9E == 6)
        KrackoStartIdle(kracko);
}

static void KrackoBeamSpin2(struct Kracko *kracko)
{
    if (kracko->obj2.base.counter & 1)
    {
        bool8 boolean = FALSE;
        u8 var = kracko->obj2.unk9E + 6;

        if (var >= 0xC) var -= 0xC;
        if (kracko->obj2.unk9F)
            boolean = TRUE;
        KrackoCreateBeamSegment(kracko, kracko->obj2.unk9E, boolean);
        KrackoCreateBeamSegment(kracko, var, boolean);
        if (!kracko->obj2.unk9F)
            PlaySfx(&kracko->obj2.base, SE_WADDLE_DOO_BEAM_ATTACK);
        if (++kracko->obj2.unk9F > 2)
        {
            ++kracko->obj2.unk9E;
            kracko->obj2.base.counter = 0;
            kracko->obj2.unk9F = 0;
        }
    }
    ++kracko->obj2.base.counter;
    if (kracko->obj2.unk9E == 0xC)
        KrackoStartIdle(kracko);
}

static void KrackoStartLowSweep(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoLowSweepWindup);
    kracko->obj2.kirby3 = FindClosestKirby(&kracko->obj2.base);
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

static void KrackoLowSweepDescend(struct Kracko *kracko)
{
    kracko->obj2.base.flags &= ~0x800;
    if (kracko->obj2.base.counter >= 0x20)
        KrackoStartLowSweepDash(kracko);
    else
    {
        if (kracko->obj2.subtype && kracko->obj2.base.counter > 7)
        {
            if (kracko->obj2.unk9F)
            {
                KrackoSpawnDroplet(kracko, 1);
                kracko->obj2.unk9F = 0;
            }
            if (!(kracko->obj2.base.counter & 3))
            {
                KrackoSpawnDroplet(kracko, 0);
                kracko->obj2.unk9F = 1;
            }
        }
        kracko->obj2.base.yspeed = gUnk_083567E0[kracko->obj2.base.counter >> 2];
        ++kracko->obj2.base.counter;
    }
}

static void KrackoLowSweepDash(struct Kracko *kracko)
{
    if (kracko->obj2.base.counter > 0x63)
        KrackoStartLowSweepRise(kracko);
    else
    {
        if (kracko->obj2.base.counter >= kracko->obj2.unk9F && kracko->obj2.base.counter < 0x55)
        {
            if (kracko->obj2.unk9F)
            {
                KrackoSpawnDroplet(kracko, 1);
                kracko->obj2.unk9F = 0;
            }
            if (!(kracko->obj2.base.counter & 3))
            {
                KrackoSpawnDroplet(kracko, 0);
                kracko->obj2.unk9F = 1;
            }
            kracko->obj2.base.objBase55 = gUnk_0835681B[kracko->obj2.base.counter & 3];
        }
        ++kracko->obj2.base.counter;
    }
}

static struct Object4 *KrackoCreateCloud(struct Kracko *kracko)
{
    struct Task *t = TaskCreate(KrackoCloudMain, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct Object4 *tmp = TaskGetStructPtr(t), *obj4 = tmp;

    ClearObject4(obj4);
    obj4->unk0 = 3;
    obj4->x = kracko->obj2.base.x;
    obj4->y = kracko->obj2.base.y;
    obj4->parent = kracko;
    obj4->roomId = kracko->obj2.base.roomId;
    Object4InitSprite(obj4, &obj4->sprite, 0x30, 0x339, 9, 0x19);
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x33B, 1);
    obj4->unk8 = obj4->sprite.palId;
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x33A, 1);
    obj4->unk4 = obj4->sprite.palId;
    return obj4;
}

static void KrackoCloudMain(void)
{
    struct Sprite sprite;
    bool32 r8 = FALSE;
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;
    struct Kracko *kracko;

    kracko = obj4->parent;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kracko->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x30, &obj4->sprite);
        if (!obj4->sprite.palId) r8 = TRUE;
        Macro_081050E8(obj4, &obj4->sprite, 0x33B, !obj4->sprite.palId);
        if (r8)
        {
            obj4->unk8 = obj4->sprite.palId;
            obj4->sprite.palId = 0;
            Macro_081050E8(obj4, &obj4->sprite, 0x33A, 1);
            obj4->unk4 = obj4->sprite.palId;
            obj4->sprite.palId = obj4->unk8;
        }
        if (!obj4->sprite.palId)
        {
            obj4->unk8 = 0;
            obj4->unk4 = 0;
        }
        if (Macro_0810B1F4(&kracko->obj2.base) && !(kracko->obj2.base.flags & 0x2000))
        {
            obj4->sprite.palId = obj4->unk8;
            obj4->sprite.unk8 &= ~0x800;
            Object4DisplaySprite(obj4);
            obj4->sprite.palId = obj4->unk4;
            obj4->sprite.unk8 |= 0x800;
            Object4DisplaySprite(obj4);
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
            obj4->sprite.variant = 0xA;
            break;
        case 2:
            obj4->sprite.variant = 0x12;
            break;
        case 1:
        default:
            obj4->flags |= 4;
            obj4->sprite.variant = 9;
            break;
        }
        Macro_080FC150(obj4, &obj4->sprite);
        obj4->sprite.unk8 &= ~0x800;
        obj4->sprite.palId = obj4->unk8;
        if (!(obj4->flags & 0x400) && gKirbys[gCurrentPlayerId].base.base.base.roomId == obj4->roomId)
        {
            obj4->sprite.x += gScreenShakeOffset[0];
            obj4->sprite.y += gScreenShakeOffset[1];
            Macro_0803DBC8(obj4, &obj4->sprite);
        }
        obj4->sprite.unk8 |= 0x800;
        obj4->sprite.palId = obj4->unk4;
        obj4->sprite.x = ((obj4->x + kracko->obj2.base.objBase54 * 0x100) >> 8) - (gCurLevelInfo[gCurrentPlayerId].viewportPosition.x >> 8);
        obj4->sprite.y = ((obj4->y + kracko->obj2.base.objBase55 * 0x100) >> 8) - (gCurLevelInfo[gCurrentPlayerId].viewportPosition.y >> 8);
        if (!(obj4->flags & 0x400) && gKirbys[gCurrentPlayerId].base.base.base.roomId == obj4->roomId)
        {
            obj4->sprite.x += gScreenShakeOffset[0];
            obj4->sprite.y += gScreenShakeOffset[1];
            Macro_0803DBC8(obj4, &obj4->sprite);
        }
    }
}

static struct Object4 *KrackoCreateIntroCloud(struct Kracko *kracko)
{
    struct Task *t = TaskCreate(KrackoIntroCloudMain, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct Object4 *tmp = TaskGetStructPtr(t), *obj4 = tmp;

    ClearObject4(obj4);
    obj4->unk0 = 3;
    obj4->x = kracko->obj2.base.x;
    obj4->y = kracko->obj2.base.y;
    obj4->parent = kracko;
    obj4->roomId = kracko->obj2.base.roomId;
    Object4InitSprite(obj4, &obj4->sprite, 0x40, 0x339, 0xC, 0x19);
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x33B, 1);
    return obj4;
}

static void KrackoIntroCloudMain(void)
{
    struct Sprite sprite;
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;
    struct Kracko *kracko, *kracko2;

    kracko = obj4->parent;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kracko->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 0x40, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x33B, !obj4->sprite.palId);
        kracko2 = obj4->parent;
        if (kracko2)
        {
            if (kracko2->obj2.base.unk0 && kracko2->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                kracko2 = NULL;
            }
            if (!kracko2)
                goto label;
            if (Macro_0810B1F4(&kracko2->obj2.base) && !(obj4->flags & 0x2000))
            {
                Object4DisplaySprite(obj4);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(obj4);
        }
        switch (kracko->obj2.unk83)
        {
        case 0:
            obj4->flags |= 4;
            obj4->sprite.variant = 0xD;
            break;
        case 2:
            obj4->sprite.variant = 0x11;
            break;
        case 1:
        default:
            obj4->flags |= 4;
            obj4->sprite.variant = 0xC;
            break;
        }
        obj4->x = kracko->obj2.base.x;
        obj4->y = kracko->obj2.base.y;
        Object4PostUpdate(obj4);
    }
}

static struct Object4 *KrackoCreateEye(struct Kracko *kracko)
{
    struct Task *t = TaskCreate(KrackoEyeMain, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct Object4 *tmp = TaskGetStructPtr(t), *obj4 = tmp;

    ClearObject4(obj4);
    obj4->unk0 = 3;
    obj4->x = kracko->obj2.base.x;
    obj4->y = kracko->obj2.base.y;
    obj4->parent = kracko;
    obj4->roomId = kracko->obj2.base.roomId;
    Object4InitSprite(obj4, &obj4->sprite, 9, 0x339, 0, 0x18);
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x339, 1);
    return obj4;
}

static void KrackoEyeMain(void)
{
    struct Sprite sprite;
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;
    struct Kracko *kracko, *kracko2;

    kracko = obj4->parent;
    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else if (kracko->obj2.base.flags & 0x1000)
        obj4->flags |= 0x1000;
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 9, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x339, !obj4->sprite.palId);
        kracko2 = obj4->parent;
        if (kracko2)
        {
            if (kracko2->obj2.base.unk0 && kracko2->obj2.base.flags & 0x1000)
            {
                obj4->parent = NULL;
                kracko2 = NULL;
            }
            if (!kracko2)
                goto label;
            if (Macro_0810B1F4(&kracko2->obj2.base) && !(obj4->flags & 0x2000))
            {
                Object4DisplaySprite(obj4);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(obj4);
        }
        obj4->flags |= 4;
        obj4->x = kracko->obj2.base.x;
        obj4->y = kracko->obj2.base.y;
        obj4->objBase54 = kracko->obj2.base.objBase54;
        obj4->objBase55 = kracko->obj2.base.objBase55;
        KrackoUpdateEyeDirection(obj4, kracko);
        Object4PostUpdate(obj4);
    }
}

static struct Object4 *KrackoCreateRaindrop(struct ObjectBase *objBase, s8 a, s8 b)
{
    struct Task *t = TaskCreate(KrackoRaindropMain, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct Object4 *tmp = TaskGetStructPtr(t), *obj4 = tmp;

    ClearObject4(obj4);
    obj4->unk0 = 3;
    obj4->x = objBase->x;
    obj4->y = objBase->y;
    obj4->parent = objBase;
    obj4->roomId = objBase->roomId;
    obj4->flags |= 0x4000;
    if (objBase->flags & 1)
    {
        obj4->x -= a * 0x100;
        obj4->flags |= 1;
    }
    else
        obj4->x += a * 0x100;
    obj4->y += b * 0x100;
    Object4InitSprite(obj4, &obj4->sprite, 0x20, 0x33B, 0xE, 0x1A);
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x33B, 1);
    return obj4;
}

static void KrackoRaindropMain(void)
{
    struct Sprite sprite;
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;
    struct ObjectBase *objBase;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 9, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x339, !obj4->sprite.palId);
        objBase = obj4->parent;
        if (objBase)
        {
            if (objBase->unk0 && objBase->flags & 0x1000)
            {
                obj4->parent = NULL;
                objBase = NULL;
            }
            if (!objBase)
                goto label;
            if (Macro_0810B1F4(objBase) && !(obj4->flags & 0x2000))
            {
                Object4DisplaySprite(obj4);
                return;
            }
        }
        else
        {
        label:
            KirbySomething(obj4);
        }
        if (obj4->flags & 2)
            obj4->flags |= 0x1000;
        else
            Object4PostUpdate(obj4);
    }
}

static void KrackoUpdateEyeDirection(struct Object4 *obj4, struct Kracko *kracko)
{
    s32 dx = (kracko->obj2.kirby3->base.base.base.x - kracko->obj2.base.x) * 0x100;
    s32 dy = (kracko->obj2.kirby3->base.base.base.y - kracko->obj2.base.y) * 0x100;

    switch ((((s16)ArcTan2(dx >> 0x10, dy >> 0x10) + 0x1000) >> 13) & 7)
    {
    case 0:
        obj4->sprite.variant = 0;
        break;
    case 1:
        obj4->sprite.variant = 7;
        break;
    case 2:
        obj4->sprite.variant = 6;
        break;
    case 3:
        obj4->sprite.variant = 5;
        break;
    case 4:
        obj4->sprite.variant = 4;
        break;
    case 5:
        obj4->sprite.variant = 3;
        break;
    case 6:
        obj4->sprite.variant = 2;
        break;
    case 7:
        obj4->sprite.variant = 1;
        break;
    }
}

static void KrackoSpawnMinion(struct Kracko *kracko)
{
    u8 type, subtype1, subtype2;
    s32 x, y;
    struct Object2 *obj2;

    if (kracko->obj2.base.flags & 1)
        x = kracko->obj2.base.x >> 8;
    else
        x = kracko->obj2.base.x >> 8;
    y = (kracko->obj2.base.y >> 8) + 0x18;
    if (Rand16() & 1)
    {
        type = OBJ_WADDLE_DOO;
        subtype1 = 0;
        subtype2 = 1;
    }
    else if (Rand16() & 3)
    {
        type = OBJ_FLAMER;
        subtype1 = 0;
        subtype2 = 1;
    }
    else
    {
        type = OBJ_TWISTER;
        subtype1 = 0;
        subtype2 = 0;
    }
    obj2 = CreateObjTemplateAndObj(kracko->obj2.base.unk56, 1, 0x24, x, y, 0, 0x1F, 0, 0, type,
        subtype1, 0, subtype2, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    obj2->base.parent = kracko;
    obj2->unk7C = sub_0809F840;
}

static void KrackoSpawnLightningBolt(struct Kracko *kracko)
{
    s8 r3 = 0;
    u8 r7;
    s8 r4;
    s8 r5 = 0x20;

    r7 = RandLessThan(0xC);
    r4 = ({r3 + 8;}) - (Rand16() & 0xF);
    r4 += gUnk_08356800[r7];
    KrackoCreateLightningSegment(kracko, r4, r5, r7);

    r3 = r4 + gUnk_0835680C[r7];
    r7 = RandLessThan(0xC);
    r4 = r3 + gUnk_08356800[r7];
    r5 += 0x10;
    KrackoCreateLightningSegment(kracko, r4, r5, r7);
    r4 += gUnk_0835680C[r7];
    r5 += 0x10;
    KrackoCreateLightningSegment(kracko, r4, r5, 0xC);
}

static void KrackoCreateLightningSegment(struct Kracko *kracko, s8 a, s8 b, u8 c)
{
    struct Task *t = TaskCreate(KrackoLightningSegmentMain, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *objBase = TaskGetStructPtr(t), *objBase2;

#ifndef NONMATCHING
    if (objBase)
        objBase2 = objBase;
    else
        objBase2 = objBase;
    if (objBase2) {++objBase2; --objBase2;}
#else
    objBase2 = objBase;
#endif
    ClearObjectBase(objBase2);
    objBase2->unk0 = 2;
    objBase2->x = kracko->obj2.base.x;
    objBase2->y = kracko->obj2.base.y;
    objBase2->parent = kracko;
    objBase2->counter = 0;
    objBase2->roomId = kracko->obj2.base.roomId;
    objBase2->unk56 = kracko->obj2.base.unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->x += a * 0x100;
    objBase->y += b * 0x100;
    objBase->flags |= 0x4000;
    objBase->flags |= 0x10000000;
    objBase->unk68 = 0x20000403;
    objBase->unk5C |= 0x80000;
    objBase->flags |= 0x2000000;
    ObjectSetHitbox(objBase, -8, -8, 8, 8);
    ObjectBaseInitSprite(objBase, &objBase->sprite, 0x20, 0x33B, c, 0xA);
    objBase->sprite.palId = 0;
    Macro_081050E8(objBase2, &objBase->sprite, 0x33B, 1);
}

static void KrackoLightningSegmentMain(void)
{
    struct Sprite sprite;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kracko *kracko = objBase->parent;

    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x20, &objBase->sprite);
    if (objBase->roomId != 0xFFFF && kracko->obj2.base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    Macro_081050E8(objBase, &objBase->sprite, 0x33B, !objBase->sprite.palId);
    objBase->unk56 = kracko->obj2.base.unk56;
    if (!ObjectPreUpdate(objBase))
    {
        if (++objBase->counter > 2)
            objBase->flags |= 0x1000;
        else
        {
            SetPointerSomething(objBase);
            ObjectPostUpdate(objBase);
        }
    }
}

static void KrackoCreateBeamSegment(struct Kracko *kracko, u8 a, bool8 b)
{
    struct Task *t = TaskCreate(KrackoBeamSegmentMain, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct ObjectBase *objBase = TaskGetStructPtr(t), *objBase2;

#ifndef NONMATCHING
    if (objBase)
        objBase2 = objBase;
    else
        objBase2 = objBase;
    if (objBase2) {++objBase2; --objBase2;}
    asm("":::"sb");
#else
    objBase2 = objBase;
#endif
    ClearObjectBase(objBase2);
    objBase2->unk0 = 2;
    objBase2->x = kracko->obj2.base.x;
    objBase2->y = kracko->obj2.base.y;
    objBase2->parent = kracko;
    objBase2->counter = 0;
    objBase2->roomId = kracko->obj2.base.roomId;
    objBase2->unk56 = kracko->obj2.base.unk56;
    if (Macro_0810B1F4(objBase2))
        objBase2->flags |= 0x2000;
    objBase2->unk63 = 1;
    objBase2->flags |= 0x4000;
    objBase2->flags |= 0x10000000;
    objBase2->flags |= 0x140;
    objBase2->unk68 = 0x20000043;
    objBase2->unk5C |= 0x80000;
    objBase2->flags |= 0x2000000;
    if (b) objBase2->flags |= 0x200;
    objBase->unk62 = b;
    objBase->xspeed = gUnk_08356838[({a * 2;})];
    objBase->yspeed = gUnk_08356838[({a * 2;}) + 1];
    ObjectSetHitbox(objBase, -6, -6, 6, 6);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, 0x20, 0x33B, 0xD, 0x1B);
    objBase->sprite.palId = 0;
    Macro_081050E8(objBase2, &objBase->sprite, 0x33B, 1);
}

static void KrackoBeamSegmentMain(void)
{
    struct Sprite sprite;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kracko *kracko;

    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x20, &objBase->sprite);
    Macro_081050E8(objBase, &objBase->sprite, 0x33B, !objBase->sprite.palId);
    kracko = objBase->parent;
    if (objBase->roomId != 0xFFFF && kracko->obj2.base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    if (!ObjectPreUpdate(objBase))
    {
        objBase->flags |= 4;
        if (objBase->flags & 2 && ++objBase->counter > 2)
            objBase->flags |= 0x1000;
        else
        {
            if (!(objBase->flags & 0x800))
            {
                objBase->x += objBase->xspeed;
                objBase->y -= objBase->yspeed;
            }
            if (!objBase->unk62)
            {
                if (objBase->unk1 & 1)
                    objBase->flags |= 0x200;
                else
                    objBase->flags &= ~0x200;
            }
            SetPointerSomething(objBase);
            ObjectPostUpdate(objBase);
        }
    }
}

static void KrackoSpawnDroplet(struct Kracko *kracko, u8 a2)
{
    struct Task *t = TaskCreate(KrackoDropletMain, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct ObjectBase *tmp = TaskGetStructPtr(t), *objBase = tmp;

    ClearObjectBase(objBase);
    objBase->unk0 = 2;
    objBase->x = kracko->obj2.base.x;
    objBase->y = kracko->obj2.base.y;
    objBase->parent = kracko;
    objBase->counter = 0;
    objBase->roomId = kracko->obj2.base.roomId;
    objBase->unk56 = kracko->obj2.base.unk56;
    if (Macro_0810B1F4(objBase))
        objBase->flags |= 0x2000;
    objBase->unk63 = 1;
    objBase->flags |= 0x4000;
    objBase->flags |= 0x10000000;
    objBase->flags |= 0x140;
    objBase->unk68 = 0x20000043;
    objBase->unk5C |= 0x80000;
    objBase->flags |= 0x2000000;
    if (a2) objBase->flags |= 0x200;
    objBase->unk62 = a2;
    objBase->xspeed = 0;
    objBase->yspeed = -0x800;
    objBase->x += (0x10 - (Rand16() & 0x1F)) * 0x100;
    objBase->y += 0x1800;
    ObjectSetHitbox(objBase, -2, -4, 2, 0xC);
    ObjectSetBounds(objBase, 0, 0, 0, 0);
    ObjectBaseInitSprite(objBase, &objBase->sprite, 0x20, 0x33B, 0xF, 0x1B);
    objBase->sprite.palId = 0;
    Macro_081050E8(objBase, &objBase->sprite, 0x33B, 1);
    PlaySfx(objBase, SE_BASIC_ENEMY_JUMP);
}

static void KrackoDropletMain(void)
{
    struct Sprite sprite;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *objBase = tmp;
    struct Kracko *kracko;

    Macro_08107BA8_4(objBase, &objBase->sprite, &sprite, 0x20, &objBase->sprite);
    Macro_081050E8(objBase, &objBase->sprite, 0x33B, !objBase->sprite.palId);
    kracko = objBase->parent;
    if (objBase->roomId != 0xFFFF && kracko->obj2.base.flags & 0x1000)
        objBase->roomId = 0xFFFF;
    if (!ObjectPreUpdate(objBase))
    {
        if (kracko->obj2.base.flags & 0x1000)
            objBase->flags |= 0x1000;
        else
        {
            objBase->flags |= 4;
            if (objBase->y > 0x8000)
            {
                objBase->y = 0x8A00;
                KrackoCreateRaindrop(objBase, 0, 0);
                objBase->flags |= 0x1000;
            }
            else
            {
                if (!(objBase->flags & 0x800))
                {
                    objBase->x += objBase->xspeed;
                    objBase->y -= objBase->yspeed;
                }
                if (!objBase->unk62)
                    objBase->flags &= ~0x200;
                SetPointerSomething(objBase);
                ObjectPostUpdate(objBase);
            }
        }
    }
}

static void KrackoHitFlash(struct Kracko *kracko)
{
    struct Kracko *krackoAlias = kracko;
    struct ObjectBase objBase;

    if (!Macro_0810B1F4(&krackoAlias->obj2.base))
    {
        if (kracko->unkC3) --kracko->unkC3;
        if (krackoAlias->obj2.base.unkC & 0x20
             && !kracko->unkC3)
        {
            objBase.roomId = krackoAlias->obj2.base.roomId;
            objBase.sprite.palId = krackoAlias->unkB8->sprite.palId;
            sub_08085CE8(&objBase, gKrackoAnimInfo);
            objBase.sprite.palId = krackoAlias->unkB4->unk8;
            sub_08085CE8(&objBase, gKrackoAnimInfo2);
            objBase.sprite.palId = krackoAlias->unkB4->unk4;
            sub_08085CE8(&objBase, gKrackoAnimInfo3);
            krackoAlias->unkC3 = 0x1E;
        }
    }
}

static void KrackoStartWaitForKirby(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 0, KrackoWaitForKirby);
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = 0;
    kracko->obj2.base.flags |= 0x40;
}

static void KrackoStartLightningApproach(struct Kracko *kracko)
{
    if (Rand16() & 1)
        KrackoStartLightningApproach2(kracko);
    else
    {
        ObjectSetFunc(kracko, 1, KrackoLightningApproach);
        kracko->obj2.base.xspeed = 0;
        kracko->obj2.base.yspeed = 0;
        kracko->unkBC = sub_0808671C(&kracko->obj2);
    }
}

static void KrackoStartLightningAttack(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoLightningAttack);
    kracko->obj2.base.xspeed = 0x140;
    kracko->obj2.base.yspeed = 0;
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
}

static void KrackoStartLightningRecover(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoLightningRecover);
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = 0;
    sub_080867A0(kracko->unkBC);
}

static void KrackoStartLightningApproach2(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoLightningApproach2);
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = 0;
    kracko->unkBC = sub_0808671C(&kracko->obj2);
}

static void KrackoStartRainAttack(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 0, KrackoRainAttack);
    kracko->obj2.base.xspeed = 0x140;
    kracko->obj2.base.yspeed = 0;
    if (kracko->obj2.base.flags & 1)
        kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
    kracko->obj2.unk9E = 0;
}

static void KrackoStartSpawnObject(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoSpawnObject);
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = 0;
    kracko->obj2.base.counter = 0x1C;
    kracko->obj2.unk9E = 0;
    kracko->obj2.unk9F = 0;
}

static void KrackoBeamSpinWindup(struct Kracko *kracko)
{
    if (!--kracko->obj2.base.counter)
    {
        kracko->obj2.base.counter = 0;
        kracko->obj2.unk9E = 0;
        kracko->obj2.unk9F = 0;
        if (Rand16() & 1)
            kracko->obj2.unk78 = KrackoBeamSpin;
        else
            kracko->obj2.unk78 = KrackoBeamSpin2;
    }
}

static void KrackoLowSweepWindup(struct Kracko *kracko)
{
    if (!--kracko->obj2.base.counter)
        KrackoStartLowSweepDescend(kracko);
}

static void KrackoStartLowSweepDescend(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoLowSweepDescend);
    kracko->obj2.unk9F = 0;
}

static void KrackoStartLowSweepDash(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoLowSweepDash);
    kracko->obj2.base.flags |= 0x800;
    if (kracko->obj2.subtype)
        kracko->obj2.unk9F = 0;
    else
        kracko->obj2.unk9F = 0x10;
}

static void KrackoStartLowSweepRise(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 1, KrackoLowSweepRise);
    kracko->obj2.base.xspeed = -kracko->obj2.base.xspeed;
}

static void KrackoLowSweepRise(struct Kracko *kracko)
{
    kracko->obj2.base.flags &= ~0x800;
    if (kracko->obj2.base.counter >= 0x20)
        KrackoStartIdle(kracko);
    else
    {
        kracko->obj2.base.yspeed = gUnk_083567F0[kracko->obj2.base.counter >> 2];
        ++kracko->obj2.base.counter;
    }
}

static void KrackoStartIntro(struct Kracko *kracko)
{
    ObjectSetFunc(kracko, 0, KrackoIntro);
    kracko->obj2.base.xspeed = 0;
    kracko->obj2.base.yspeed = -0x100;
    kracko->obj2.base.x = 0xB000;
    kracko->obj2.base.y = -0x4000;
    kracko->obj2.base.counter = 0;
    kracko->obj2.unk85 = 0;
    kracko->obj2.unk9E = 0;
    kracko->unkB8 = KrackoCreateEye(kracko);
    kracko->unkB4 = KrackoCreateIntroCloud(kracko);
}
