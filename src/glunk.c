#include "glunk.h"
#include "object.h"
#include "kirby.h"
#include "malloc_vram.h"
#include "code_0806F780.h"
#include "functions.h"

static void sub_080AEF14(struct Object2 *);
static void sub_080AF16C(struct Object2 *);
static void sub_080AF204(struct Object2 *);
static void sub_080AF330(void);
static void sub_080AF624(struct Object2 *);
static void sub_080AF65C(struct Object2 *);

const struct AnimInfo gUnk_08353C20[] = {
    { 0x327, 0x0, 0x0 },
    { 0x327, 0x1, 0x0 },
    { 0x327, 0x2, 0x0 },
    { 0x327, 0x3, 0x0 },
    { 0x327, 0x4, 0x0 },
};

const struct AnimInfo gUnk_08353C34[] = {
    { 0x329, 0x0, 0x0 },
};

void *CreateGlunk(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *tmp = TaskGetStructPtr(t), *glunk = tmp;

    InitObject(glunk, template, a2);
    if (glunk->base.x > glunk->kirby3->base.base.base.x)
        glunk->base.flags |= 1;
    else
        glunk->base.flags &= ~1;
    glunk->base.unkC |= 1;
    sub_0803E2B0(&glunk->base, -5, -5, 5, 6);
    sub_0803E308(&glunk->base, -6, -6, 6, 8);
    ObjectInitSprite(glunk);
    gUnk_08351648[glunk->type].unk10(glunk);
    return glunk;
}

static void sub_080AEEA4(struct Object2 *glunk)
{
    if (glunk->subtype)
    {
        if (!--glunk->base.counter)
        {
            sub_080AEF14(glunk);
            sub_080AF204(glunk);
            glunk->base.counter = 0xC;
            if (++glunk->unk85 > 4)
                ObjectSetFunc(glunk, 0, sub_080AF624);
        }
    }
    else
    {
        if (++glunk->base.counter > 0x23)
            ObjectSetFunc(glunk, 0, sub_080AF624);
    }
}

static void sub_080AEF14(struct Object2 *glunk)
{
    struct Object2 *bullet = CreateObjTemplateAndObj(glunk->base.unk56, 1, 0x24, glunk->base.x >> 8, glunk->base.y >> 8, 0, 0x1F, 0, 0,
        OBJ_GLUNK_BULLET, 0, 0, glunk->subtype, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    bullet->base.parent = glunk;
    if (glunk->base.flags & 1)
        bullet->base.flags |= 1;
}

void *CreateGlunkBullet(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *bullet = TaskGetStructPtr(t);
    u32 flags;

    InitObject(bullet, template, a2);
    bullet->base.unk63 = 1;
    flags = bullet->base.flags;
    flags |= 0x40; // :<
    bullet->base.unkC |= 1;
    bullet->base.unkC |= 4;
    bullet->base.unkC |= 2;
    flags |= 0x4000;
    flags |= 0x100;
    flags |= 0x10000000;
    bullet->base.unk68 = 0x20000043;
    bullet->base.unk5C |= 0x20;
    bullet->base.flags = flags | 0x40;
    bullet->unk9E = 0;
    bullet->unk7C = sub_0809F840;
    sub_0803E2B0(&bullet->base, -2, -2, 2, 2);
    sub_0803E308(&bullet->base, 2, 2, 2, 2);
    ObjectInitSprite(bullet);
    gUnk_08351648[bullet->type].unk10(bullet);
    return bullet;
}

void sub_080AF0A8(struct Object2 *bullet)
{
    ObjectSetFunc(bullet, 0, sub_080AF16C);
    bullet->base.flags |= 0x40;
    bullet->base.flags &= ~0x20;
    bullet->base.xspeed = 0;
    bullet->base.yspeed = 0x600;
    bullet->base.y -= 0x800;
    PlaySfx(&bullet->base, SE_08D58634);
}

static void sub_080AF16C(struct Object2 *bullet)
{
    bullet->base.flags |= 4;
    bullet->base.flags &= ~0x100;
    if (bullet->base.x <= gCurLevelInfo[bullet->base.unk56].levelMaxPosition.x
        && bullet->base.x >= gCurLevelInfo[bullet->base.unk56].levelMinPosition.x
        && bullet->base.y <= gCurLevelInfo[bullet->base.unk56].levelMaxPosition.y
        && bullet->base.y >= gCurLevelInfo[bullet->base.unk56].levelMinPosition.y)
        sub_0806FC70(&bullet->base);
    bullet->base.flags |= 0x100;
    if (++bullet->base.counter > 8 || bullet->base.unk62)
    {
        sub_0809DA30(bullet);
        bullet->base.flags |= 0x1000;
    }
}

static void sub_080AF204(struct Object2 *glunk)
{
    struct Task *t = TaskCreate(sub_080AF330, sizeof(struct Object4), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    struct Object4 *r6 = TaskGetStructPtr(t), *obj4 = r6;

    sub_0803E3B0(obj4);
    obj4->unk0 = 3;
    obj4->x = glunk->base.x;
    obj4->y = glunk->base.y;
    obj4->parent = glunk;
    obj4->roomId = glunk->base.roomId;
    obj4->flags |= 0x4000;
    obj4->unk3C = 0;
    obj4->unk3E = 0x200;
    obj4->y -= 0x800;
    if (Macro_0810B1F4(&glunk->base))
        obj4->flags |= 0x2000;
    sub_080709F8(r6, &r6->sprite, 6, 0x329, 1, 0xC);
    obj4->sprite.palId = 0;
    Macro_081050E8(obj4, &obj4->sprite, 0x327, 1);
}

static void sub_080AF330(void)
{
    struct Object4 *tmp = TaskGetStructPtr(gCurTask), *obj4 = tmp;
    struct Sprite sprite;
    struct Object2 *glunk;

    if (obj4->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        Macro_08107BA8_4(obj4, &obj4->sprite, &sprite, 6, &obj4->sprite);
        Macro_081050E8(obj4, &obj4->sprite, 0x327, !obj4->sprite.palId);
        glunk = obj4->parent;
        if (glunk)
        {
            if (glunk->base.unk0 && glunk->base.flags & 0x1000)
            {
                obj4->parent = NULL;
                glunk = NULL;
            }
            if (!glunk)
                goto _080AF4F4;
            if (Macro_0810B1F4(&glunk->base) && !(obj4->flags & 0x2000))
            {
                sub_0803DBC8(obj4);
                return;
            }
        }
        else
        {
        _080AF4F4:
            KirbySomething(obj4);
        }
        Macro_0809E55C(obj4);
        if (++obj4->unk4 > 8)
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

void sub_080AF610(struct Object2 *glunk)
{
    ObjectSetFunc(glunk, 0, sub_080AF624);
}

static void sub_080AF624(struct Object2 *glunk)
{
    glunk->base.flags |= 4;
    if (glunk->base.flags & 2
        && ++glunk->base.counter >= 3 - glunk->subtype)
        sub_080AF65C(glunk);
}

static void sub_080AF65C(struct Object2 *glunk)
{
    ObjectSetFunc(glunk, 1, sub_080AEEA4);
    glunk->unk85 = 0;
    glunk->base.counter = 1;
}
