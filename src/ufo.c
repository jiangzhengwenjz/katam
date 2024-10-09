#include "ufo.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "random.h"
#include "code_0806F780.h"

static void sub_080C4B70(struct Object2 *);
static void sub_080C4CC0(struct Object2 *);
static void sub_080C4D10(struct Object2 *);
static void sub_080C5340(struct Object2 *);
static void sub_080C5398(struct Object2 *);
static bool8 sub_080C5190(struct Unk_080C4EDC *);
static bool8 sub_080C53C0(struct Unk_080C4EDC *);

const struct Unk_02021590 gUnk_083555C0[] = {
    { 0x326, 0x0, 0x0 },
    { 0x326, 0x1, 0x0 },
    { 0x326, 0x2, 0x0 },
    { 0x326, 0x3, 0x0 },
    { 0x326, 0x4, 0x0 },
    { 0x326, 0x5, 0x0 },
};

static const struct Unk_08353510 gUnk_083555D8[] = {
    {   0x80, -0x20, 0x0, 0x0, 0xF, 0x0 },
    {  0x100,   0x0, 0x0, 0x0, 0x8, 0x0 },
    {   0x80,  0x20, 0x0, 0x0, 0x8, 0x0 },
    {  -0x80, -0x20, 0x0, 0x0, 0xF, 0x0 },
    { -0x100,   0x0, 0x0, 0x0, 0x8, 0x0 },
    {  -0x80,  0x20, 0x0, 0x0, 0x8, 0x0 },
    { 0 },
};

static const s8 gUnk_0835562C[] = {
     0x10, -0x26,
     0x24, -0x20,
     0x32, -0x18,
     0x38,    -8,
     0x38,     8,
     0x32,  0x18,
     0x24,  0x20,
     0x10,  0x26,
    -0x10,  0x26,
    -0x24,  0x20,
    -0x32,  0x18,
    -0x38,     8,
    -0x38,    -8,
    -0x32, -0x18,
    -0x24, -0x20,
    -0x10, -0x26,
};

static const struct Unk_02021590 gUnk_0835564C[] = {
    { 0x326, 0x0, 0xA },
    { 0x326, 0x7, 0xA },
    { 0x326, 0x6, 0xA },
    { 0x326, 0x7, 0xA },
    { 0 },
};

static const struct Unk_02021590 gUnk_08355660[] = {
    { 0x2F7,  0xE, 0xA },
    { 0x2F7, 0x1E, 0xA },
    { 0x2F7, 0x1D, 0xA },
    { 0x2F7, 0x1E, 0xA },
    { 0 },
};

void *CreateUFO(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *ufo = tmp;

    InitObject(ufo, template, a2);
    ufo->base.unkC |= 1;
    ufo->base.unkC |= 4;
    if (ufo->base.x > ufo->kirby3->base.base.base.x)
        ufo->base.flags |= 1;
    else
        ufo->base.flags &= ~1;
    sub_0803E2B0(&ufo->base, -5, -6, 5, 5);
    sub_0803E308(&ufo->base, -6, -7, 6, 7);
    ObjectInitSprite(ufo);
    if (ufo->base.unkC & 0x10)
        sub_08088398(ufo, gUnk_08355660);
    else
        sub_08085CE8(&ufo->base, gUnk_0835564C);
    gUnk_08351648[ufo->type].unk10(ufo);
    ufo->unk9E = 0;
    ufo->unk7C = 0;
    if (ufo->object->subtype1)
        ufo->base.flags |= 0x2000000;
    return ufo;
}

void sub_080C4ACC(struct Object2 *ufo)
{
    u8 var;
    u32 a, b;

    ObjectSetFunc(ufo, 0, sub_080C4B70);
    ufo->base.flags |= 0x140;
    ufo->base.flags &= ~0x20;
    ufo->base.counter = ufo->unk85 & 3;
    var = RandLessThan(10);
    if (var > 5)
        var += 5;
    else
        var += 2;
    a = (var + (ufo->unk85 >> 4)) & 0xF;
    b = ufo->unk85 & 0xF;
    ufo->unk85 = b | (a * 0x10);
    if ((ufo->unk85 & 3) < 3)
        ++ufo->unk85;
}

static void sub_080C4B70(struct Object2 *ufo)
{
    ufo->base.flags |= 4;
    if (!ufo->object->subtype1)
    {
        u32 var = 2 * (ufo->unk85 >> 4);
        s16 r3, r1;
        s32 r4, r5;
        s32 d;
        s32 cos, sin;

        if (ufo->base.counter == 3)
        {
            r3 = ufo->kirby3->base.base.base.x > ufo->base.x ? -0x3800 : 0x3800;
            r1 = 0;
        }
        else
        {
            r3 = gUnk_0835562C[var] * 0x100;
            r1 = gUnk_0835562C[var + 1] * 0x100;
        }
        r4 = (ufo->kirby3->base.base.base.x + r3 - ufo->base.x) >> 8;
        r5 = (ufo->base.y - (ufo->kirby3->base.base.base.y + r1)) >> 8;
        d = Sqrt((r4*r4 + r5*r5) * 0x100);
        cos = r4 * 0x100 / d;
        sin = r5 * 0x100 / d;
        ufo->base.xspeed = cos * 0x40;
        ufo->base.yspeed = sin * 0x40;
        if (abs(ufo->kirby3->base.base.base.x + r3 - ufo->base.x) < 0x800
            && abs(ufo->kirby3->base.base.base.y + r1 - ufo->base.y) < 0x400)
        {
            if (ufo->base.counter == 3)
                sub_080C5340(ufo);
            else
                sub_080C4CC0(ufo);
        }
    }
}

static void sub_080C4CC0(struct Object2 *ufo)
{
    ObjectSetFunc(ufo, 1, sub_080C4D10);
    ufo->base.flags |= 0x140;
    ufo->base.counter = ((ufo->unk85 & 0xC) >> 2) + 1;
    if (ufo->base.counter > 2)
        ufo->base.counter = 0;
    ufo->unk85 += 4;
    if ((ufo->unk85 & 0xC) > 8)
        ufo->unk85 &= ~0xC;
}

static void sub_080C4D10(struct Object2 *ufo)
{
    ufo->base.flags |= 4;
    if (ufo->base.counter)
    {
        if (!gUnk_083555D8[(u8)(ufo->unk9F + 1)].unk8 && !ufo->unk9E)
            ufo->unk9F = 0xFF;
        if (!ufo->unk9E)
        {
            ++ufo->unk9F;
            if (!gUnk_083555D8[ufo->unk9F].unk8)
                --ufo->unk9F;
            ufo->unk9E = gUnk_083555D8[ufo->unk9F].unk8;
            if (gUnk_083555D8[ufo->unk9F].unk9 != 0xFF)
                ufo->unk83 = gUnk_083555D8[ufo->unk9F].unk9;
            if (ufo->unk9F)
            {
                if (gUnk_083555D8[ufo->unk9F].unk0 != gUnk_083555D8[ufo->unk9F - 1].unk0)
                {
                    ufo->base.xspeed = gUnk_083555D8[ufo->unk9F].unk0;
                    if (ufo->base.flags & 1)
                        ufo->base.xspeed = -ufo->base.xspeed;
                }
                if (gUnk_083555D8[ufo->unk9F].unk2 != gUnk_083555D8[ufo->unk9F - 1].unk2)
                    ufo->base.yspeed = gUnk_083555D8[ufo->unk9F].unk2;
            }
            else
            {
                ufo->base.yspeed = gUnk_083555D8[ufo->unk9F].unk2;
                ufo->base.xspeed = gUnk_083555D8[ufo->unk9F].unk0;
                if (ufo->base.flags & 1)
                    ufo->base.xspeed = -ufo->base.xspeed;
            }
        }
        if (ufo->base.flags & 1)
            ufo->base.xspeed -= gUnk_083555D8[ufo->unk9F].unk4;
        else
            ufo->base.xspeed += gUnk_083555D8[ufo->unk9F].unk4;
        ufo->base.yspeed += gUnk_083555D8[ufo->unk9F].unk6;
        --ufo->unk9E;
        if (!gUnk_083555D8[(u8)(ufo->unk9F + 1)].unk8 && !ufo->unk9E)
            --ufo->base.counter;
        else if (!(ufo->base.unk58 & 1))
        {
            ufo->base.xspeed = 0;
            ufo->base.yspeed = 0;
        }
    }
    else
        sub_080C4ACC(ufo);
}

static void sub_080C4EDC(struct Object2 *ufo)
{
    struct Task *t = TaskCreate(sub_08070580, sizeof(struct Unk_080C4EDC), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Unk_080C4EDC *tmp = TaskGetStructPtr(t), *var = tmp;

    sub_0803E380(&var->base);
    var->base.unk0 = 2;
    var->base.x = ufo->base.x;
    var->base.y = ufo->base.y;
    var->base.parent = ufo;
    var->base.counter = 0;
    var->base.roomId = ufo->base.roomId;
    var->base.unk56 = ufo->base.unk56;
    if (Macro_0810B1F4(&var->base))
        var->base.flags |= 0x2000;
    var->unk78[0] = sub_080C5190;
    var->unk78[1] = sub_080C53C0;
    var->unk78[2] = sub_080C53C0;
    var->unk84 = NULL;
    var->unk88 = 0;
    var->unk89 = 0;
    var->unk8A = 0;
    var->base.unk63 = 1;
    var->base.flags |= 0x10000000;
    var->base.unk68 = 0x20000043;
    var->base.unk5C |= 0x80000;
    if (Macro_0810B1F4(&var->base)) // ... do it again
        var->base.flags |= 0x2000;
    if (ufo->base.flags & 1)
    {
        var->base.xspeed = -0x800;
        var->base.flags |= 1;
        var->base.x -= 0x800;
    }
    else
    {
        var->base.xspeed = 0x800;
        var->base.x += 0x800;
    }
    sub_0803E2B0(&var->base, 2, -3, 0xA, 3);
    sub_0803E308(&var->base, 0x10, -1, 0x12, 1);
    sub_080708DC(&var->base, &var->base.sprite, 4, 0x326, 4, 9);
    var->base.sprite.palId = 0;
    if (ufo->base.unkC & 0x10)
        Macro_081050E8(&var->base, &var->base.sprite, gUnk_08351648[OBJ_DROPPY].unk8, 1);
    else
        Macro_081050E8(&var->base, &var->base.sprite, 0x326, 1);
    PlaySfx(&var->base, 316);
}

static bool8 sub_080C5190(struct Unk_080C4EDC *var)
{
    struct Sprite sprite;
    struct Object2 *ufo = var->base.parent;

    Macro_08107BA8_4(&var->base, &var->base.sprite, &sprite, 4, &var->base.sprite);
    if (ufo->base.unkC & 0x10)
        Macro_081050E8(&var->base, &var->base.sprite, gUnk_08351648[OBJ_DROPPY].unk8, !var->base.sprite.palId);
    else
        Macro_081050E8(&var->base, &var->base.sprite, 0x326, !var->base.sprite.palId);
    if (var->unk88 && var->base.flags & 2)
    {
        var->base.flags |= 0x1000;
        return TRUE;
    }
    else
        return FALSE;
}

static void sub_080C5340(struct Object2 *ufo)
{
    ObjectSetFunc(ufo, 1, sub_080C5398);
    ufo->base.xspeed = 0;
    ufo->base.yspeed = 0;
    ufo->base.flags |= 0x140;
    if (ufo->base.x > ufo->kirby3->base.base.base.x)
        ufo->base.flags |= 1;
    else
        ufo->base.flags &= ~1;
    ufo->unk85 &= ~3;
}

static void sub_080C5398(struct Object2 *ufo)
{
    if (ufo->base.flags & 2)
        sub_080C4ACC(ufo);
    else if (ufo->base.unk1 == 0x17)
        sub_080C4EDC(ufo);
}

static bool8 sub_080C53C0(struct Unk_080C4EDC *var)
{
    var->base.sprite.variant = 5;
    var->unk88 = 1;
    var->base.flags &= ~0x200;
    var->base.flags &= ~0x100;
    var->base.xspeed = 0;
    return FALSE;
}
