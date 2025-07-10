#include "jack.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "random.h"
#include "code_0806F780.h"

static void sub_080A8338(struct Object2 *);
static void sub_080A8834(struct Object2 *);
static void sub_080A8938(struct Object2 *);
static void sub_080A8964(struct Object2 *);
static void sub_080A89B8(struct Object2 *);
static void sub_080A89E8(struct Object2 *);
static void sub_080A8A3C(struct Object2 *);
static void sub_080A8ABC(struct Object2 *);
static void sub_080A8AE8(struct Object2 *);
static void sub_080A8B68(struct Object2 *);
static void sub_080A8BB4(struct Object2 *);
static void sub_080A8BC0(struct Task *);

const struct Unk_02021590 gUnk_08353648[] = {
    { 0x31C, 0x0, 0x0 },
    { 0x31C, 0x1, 0x0 },
    { 0x31C, 0x2, 0x0 },
    { 0x31C, 0x3, 0x0 },
    { 0x31C, 0x4, 0x0 },
    { 0x31C, 0x5, 0x0 },
    { 0x31C, 0x6, 0x0 },
    { 0x31C, 0x7, 0x0 },
};

const struct Unk_02021590 gUnk_08353668[] = {
    { 0x31D, 0x0, 0x0 },
};

void *CreateJack(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0xFFF, TASK_USE_EWRAM, sub_080A8BC0);
    struct Object2 *tmp = TaskGetStructPtr(t), *jack = tmp;

    InitObject(jack, template, a2);
    if (jack->base.x > jack->kirby3->base.base.base.x)
        jack->base.flags |= 1;
    else
        jack->base.flags &= ~1;
    sub_0803E2B0(&jack->base, -5, -9, 5, 2);
    sub_0803E308(&jack->base, -6, -0xA, 6, 4);
    jack->base.unk48 = jack->base.x += 0x500;
    ObjectInitSprite(jack);
    jack->base.sprite.unk14 = 0x740;
    gUnk_08351648[jack->type].unk10(jack);
    jack->unk9E = 0;
    jack->unk7C = 0;
    if (jack->object->unk14)
        *sub_08002888(SUB_08002888_ENUM_UNK_1, jack->object->unk14, gCurLevelInfo[jack->base.unk56].unk65E) = 1;
    return jack;
}

static void sub_080A8338(struct Object2 *jack)
{
    if (*sub_08002888(SUB_08002888_ENUM_UNK_1, jack->object->unk4, gCurLevelInfo[jack->base.unk56].unk65E))
        sub_080A8B68(jack);
    else
    {
        jack->base.flags |= 4;
        if (!(jack->base.unk1 & 0xF))
        {
            jack->kirby3 = sub_0803D368(&jack->base);
            if (jack->base.x > jack->kirby3->base.base.base.x)
                jack->base.flags |= 1;
            else
                jack->base.flags &= ~1;
            if (jack->object->subtype1)
            {
                if (abs(jack->kirby3->base.base.base.x - jack->base.x) >= 0x4000
                    || abs(jack->kirby3->base.base.base.y - jack->base.y) >= 0x4000)
                    sub_080A8938(jack);
            }
            else
            {
                if (abs(jack->kirby3->base.base.base.x - jack->base.x) < 0x2000
                    && abs(jack->kirby3->base.base.base.y - jack->base.y) < 0x2000)
                    sub_080A8938(jack);
            }
        }
    }
}

static void sub_080A8458(struct Object2 *jack)
{
    if (*sub_08002888(SUB_08002888_ENUM_UNK_1, jack->object->unk4, gCurLevelInfo[jack->base.unk56].unk65E))
        sub_080A8B68(jack);
    else
    {
        jack->base.flags |= 4;
        if (!(jack->base.unk1 & 0xF))
        {
            if (jack->object->subtype1)
            {
                if (abs(jack->kirby3->base.base.base.x - jack->base.x) < 0x3000
                    && abs(jack->kirby3->base.base.base.y - jack->base.y) < 0x3000)
                {
                    sub_080A89E8(jack);
                    return;
                }
            }
            else
            {
                if (abs(jack->kirby3->base.base.base.x - jack->base.x) >= 0x3000
                    || abs(jack->kirby3->base.base.base.y - jack->base.y) >= 0x3000)
                {
                    sub_080A89E8(jack);
                    return;
                }
            }
        }
        if (jack->base.flags & 2)
        {
            jack->kirby3 = sub_0803D368(&jack->base);
            if (jack->base.x > jack->kirby3->base.base.base.x)
                jack->base.flags |= 1;
            else
                jack->base.flags &= ~1;
            if (Rand16() & 3)
                sub_080A8ABC(jack);
        }
    }
}

static void sub_080A85B4(struct Object2 *jack)
{
    struct Object2 *js = CreateObjTemplateAndObj(jack->base.unk56, 1, 0x24, jack->base.x >> 8, jack->base.y >> 8,
        0, 0x1F, 0, 0, OBJ_JACK_STAR, 0, 0, jack->subtype, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0), *js2;

    js->base.parent = jack;
    js2 = js;
    if (jack->base.flags & 1)
        js2->base.flags |= 1;
    if (jack->object->subtype1)
    {
        js->base.xspeed = 0x280;
        js2->base.yspeed = 0x200;
    }
    else
    {
        js->base.xspeed = 0x100;
        js2 = js;
        js2->base.yspeed = 0x200;
    }
    if (jack->base.flags & 1)
        js2->base.xspeed = -js2->base.xspeed;
}

void *CreateJackStar(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *js = TaskGetStructPtr(t);

    InitObject(js, template, a2);
    js->base.unk63 = 1;
    js->base.flags |= 0x40;
    js->base.unkC |= 1;
    js->base.unkC |= 4;
    js->base.unkC |= 2;
    js->base.flags |= 0x4000;
    js->base.flags |= 0x100;
    js->base.flags |= 0x10000000;
    js->base.unk68 = 0x20000043;
    js->base.unk5C |= 0x20;
    js->unk9E = 0;
    js->unk7C = sub_0809F840;
    sub_0803E2B0(&js->base, -2, -2, 2, 2);
    sub_0803E308(&js->base, 2, 2, 2, 2);
    ObjectInitSprite(js);
    gUnk_08351648[js->type].unk10(js);
    return js;
}

void sub_080A8788(struct Object2 *js)
{
    ObjectSetFunc(js, 0, sub_080A8834);
    js->base.flags |= 0x40;
    js->base.flags &= ~0x20;
    PlaySfx(&js->base, SE_08D58AEC);
}

static void sub_080A8834(struct Object2 *js)
{
    js->base.flags |= 4;
    js->base.flags &= ~0x100;
    if (js->base.x <= gCurLevelInfo[js->base.unk56].unk50
        && js->base.x >= gCurLevelInfo[js->base.unk56].unk48
        && js->base.y <= gCurLevelInfo[js->base.unk56].unk54
        && js->base.y >= gCurLevelInfo[js->base.unk56].unk4C)
        sub_0806FC70(&js->base);
    js->base.flags |= 0x100;
    if (js->base.unk62)
    {
        sub_0809DA30(js);
        js->base.flags |= 0x1000;
    }
    else
    {
        js->base.yspeed -= 0x18;
        if (js->base.yspeed < -0x280)
            js->base.yspeed = -0x280;
        if (js->base.xspeed < 0)
        {
            js->base.xspeed += 4;
            if (js->base.xspeed > 0)
                js->base.xspeed = 0;
        }
        else
        {
            js->base.xspeed -= 4;
            if (js->base.xspeed < 0)
                js->base.xspeed = 0;
        }
    }
}

void sub_080A8904(struct Object2 *jack)
{
    ObjectSetFunc(jack, 0, sub_080A8338);
    jack->base.xspeed = 0;
    jack->base.yspeed = 0;
    jack->base.flags |= 0x200;
    jack->base.flags |= 0x800;
}

static void sub_080A8938(struct Object2 *jack)
{
    ObjectSetFunc(jack, 1, sub_080A8964);
    jack->base.xspeed = 0;
    jack->base.yspeed = 0;
    jack->base.flags &= ~2;
}

static void sub_080A8964(struct Object2 *jack)
{
    if (*sub_08002888(SUB_08002888_ENUM_UNK_1, jack->object->unk4, gCurLevelInfo[jack->base.unk56].unk65E))
        sub_080A8B68(jack);
    else if (jack->base.flags & 2)
        sub_080A89B8(jack);
}

static void sub_080A89B8(struct Object2 *jack)
{
    ObjectSetFunc(jack, 2, sub_080A8458);
    jack->base.xspeed = 0;
    jack->base.yspeed = 0;
    jack->base.flags &= ~0x200;
}

static void sub_080A89E8(struct Object2 *jack)
{
    ObjectSetFunc(jack, 3, sub_080A8A3C);
    jack->base.xspeed = 0;
    jack->base.yspeed = 0;
    jack->base.counter = (Rand16() & 1) + 1;
    jack->base.flags &= ~2;
    jack->base.flags |= 0x200;
}

static void sub_080A8A3C(struct Object2 *jack)
{
    jack->base.flags |= 4;
    if (*sub_08002888(SUB_08002888_ENUM_UNK_1, jack->object->unk4, gCurLevelInfo[jack->base.unk56].unk65E))
        sub_080A8B68(jack);
    else if (jack->base.flags & 2)
    {
        ObjectSetFunc(jack, 0, sub_080A8338);
        jack->base.xspeed = 0;
        jack->base.yspeed = 0;
        jack->base.flags |= 0x200;
        jack->base.flags |= 0x800;
    }
}

static void sub_080A8ABC(struct Object2 *jack)
{
    ObjectSetFunc(jack, 4, sub_080A8AE8);
    jack->base.xspeed = 0;
    jack->base.yspeed = 0;
    jack->base.flags &= ~2;
}

static void sub_080A8AE8(struct Object2 *jack)
{
    if (*sub_08002888(SUB_08002888_ENUM_UNK_1, jack->object->unk4, gCurLevelInfo[jack->base.unk56].unk65E))
        sub_080A8B68(jack);
    else
    {
        if (jack->base.unk1 == 7)
            sub_080A85B4(jack);
        if (jack->base.flags & 2)
        {
            ObjectSetFunc(jack, 0, sub_080A8338);
            jack->base.xspeed = 0;
            jack->base.yspeed = 0;
            jack->base.flags |= 0x200;
            jack->base.flags |= 0x800;
        }
    }
}

static void sub_080A8B68(struct Object2 *jack)
{
    ObjectSetFunc(jack, 5, sub_080A8BB4);
    jack->base.xspeed = 0;
    jack->base.yspeed = 0x280;
    jack->base.flags |= 0x200;
    jack->base.flags |= 0x40;
    jack->base.flags &= ~2;
    jack->base.flags &= ~0x800;
    jack->base.unkC &= ~0x100;
}

static void sub_080A8BB4(struct Object2 *jack)
{
    jack->base.flags |= 4;
}

static void sub_080A8BC0(struct Task *t)
{
    struct Object2 *jack = TaskGetStructPtr(t);

    if (jack->object->unk14)
        *sub_08002888(SUB_08002888_ENUM_UNK_1, jack->object->unk14, gCurLevelInfo[jack->base.unk56].unk65E) = 0;
    ObjectDestroy(t);
}
