#include "glunk.h"
#include "object.h"
#include "kirby.h"
#include "malloc_vram.h"
#include "code_0806F780.h"
#include "functions.h"

static void sub_080AEF14(struct Object *);
static void sub_080AF16C(struct Object *);
static void sub_080AF204(struct Object *);
static void sub_080AF330(void);
static void sub_080AF624(struct Object *);
static void sub_080AF65C(struct Object *);

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

void *CreateGlunk(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *tmp = TaskGetStructPtr(t), *glunk = tmp;

    InitObject(glunk, template, a2);
    if (glunk->base.x > glunk->kirby3->base.x)
        glunk->base.flags |= 1;
    else
        glunk->base.flags &= ~1;
    glunk->base.unkC |= 1;
    sub_0803E2B0(&glunk->base, -5, -5, 5, 6);
    ObjectSetBounds(&glunk->base, -6, -6, 6, 8);
    ObjectInitSprite(glunk);
    gUnk_08351648[glunk->type].unk10(glunk);
    return glunk;
}

static void sub_080AEEA4(struct Object *glunk)
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

static void sub_080AEF14(struct Object *glunk)
{
    struct Object *bullet = CreateObjTemplateAndObj(glunk->base.unk56, 1, 0x24, glunk->base.x >> 8, glunk->base.y >> 8, 0, 0x1F, 0, 0,
        OBJ_GLUNK_BULLET, 0, 0, glunk->subtype, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

    bullet->base.parent = glunk;
    if (glunk->base.flags & 1)
        bullet->base.flags |= 1;
}

void *CreateGlunkBullet(struct ObjectTemplate *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object *bullet = TaskGetStructPtr(t);
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
    ObjectSetBounds(&bullet->base, 2, 2, 2, 2);
    ObjectInitSprite(bullet);
    gUnk_08351648[bullet->type].unk10(bullet);
    return bullet;
}

void sub_080AF0A8(struct Object *bullet)
{
    ObjectSetFunc(bullet, 0, sub_080AF16C);
    bullet->base.flags |= 0x40;
    bullet->base.flags &= ~0x20;
    bullet->base.xspeed = 0;
    bullet->base.yspeed = 0x600;
    bullet->base.y -= 0x800;
    PlaySfx(&bullet->base, SE_BULLET_ATTACK);
}

static void sub_080AF16C(struct Object *bullet)
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

static void sub_080AF204(struct Object *glunk)
{
    struct Task *t = TaskCreate(sub_080AF330, sizeof(struct EffectObject), 0x3500, TASK_USE_EWRAM, ObjectBaseDestroy);
    struct EffectObject *r6 = TaskGetStructPtr(t), *effectObject = r6;

    ClearEffectObject(effectObject);
    effectObject->header.kind = 3;
    effectObject->x = glunk->base.x;
    effectObject->y = glunk->base.y;
    effectObject->parent = glunk;
    effectObject->roomId = glunk->base.roomId;
    effectObject->flags |= 0x4000;
    effectObject->unk3C = 0;
    effectObject->unk3E = 0x200;
    effectObject->y -= 0x800;
    if (Macro_0810B1F4(&glunk->base))
        effectObject->flags |= 0x2000;
    EffectObjectInitSprite(r6, &r6->sprite, 6, 0x329, 1, 0xC);
    effectObject->sprite.palId = 0;
    Macro_081050E8(effectObject, &effectObject->sprite, 0x327, 0, 1);
}

static void sub_080AF330(void)
{
    struct EffectObject *tmp = TaskGetStructPtr(gCurTask), *effectObject = tmp;
    struct Sprite sprite;
    struct Object *glunk;

    if (effectObject->flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        Macro_08107BA8_4(effectObject, &effectObject->sprite, &sprite, 6, &effectObject->sprite);
        Macro_081050E8(effectObject, &effectObject->sprite, 0x327, 0, !effectObject->sprite.palId);
        glunk = effectObject->parent;
        if (glunk)
        {
            if (glunk->base.header.kind && glunk->base.flags & 0x1000)
            {
                effectObject->parent = NULL;
                glunk = NULL;
            }
            if (!glunk)
                goto _080AF4F4;
            if (Macro_0810B1F4(&glunk->base) && !(effectObject->flags & 0x2000))
            {
                EffectObjectDisplaySprite(effectObject);
                return;
            }
        }
        else
        {
        _080AF4F4:
            KirbySomething(effectObject);
        }
        Macro_0809E55C(effectObject);
        if (++effectObject->unk4 > 8)
            effectObject->flags |= 0x1000;
        else
        {
            if (!(effectObject->flags & 0x800))
            {
                effectObject->x += effectObject->unk3C;
                effectObject->y -= effectObject->unk3E;
            }
            EffectObjectPostUpdate(effectObject);
        }
    }
}

void sub_080AF610(struct Object *glunk)
{
    ObjectSetFunc(glunk, 0, sub_080AF624);
}

static void sub_080AF624(struct Object *glunk)
{
    glunk->base.flags |= 4;
    if (glunk->base.flags & 2
        && ++glunk->base.counter >= 3 - glunk->subtype)
        sub_080AF65C(glunk);
}

static void sub_080AF65C(struct Object *glunk)
{
    ObjectSetFunc(glunk, 1, sub_080AEEA4);
    glunk->unk85 = 0;
    glunk->base.counter = 1;
}
