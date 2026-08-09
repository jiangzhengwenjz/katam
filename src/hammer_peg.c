#include "hammer_peg.h"
#include "functions.h"
#include "object.h"
#include "kirby.h"
#include "task.h"


static void sub_08025368(struct Object *);

static void sub_0802532C(struct Object *);

const struct AnimInfo gUnk_082DEB04[] = {
    { 0x2E4, 0x0, 0x0 },
    { 0x2E4, 0x1, 0x0 },
};

void *CreateHammerPeg(struct ObjectTemplate *object, u8 r1)
{
    struct Task *newTask = TaskCreate(ObjectMain, sizeof(struct Object), 0x1000, TASK_USE_IWRAM, ObjectDestroy);
    struct Object *newObject = TaskGetStructPtr(newTask);

    InitObject(newObject, object, r1);

    newObject->unk85 = 0;
    newObject->base.flags |= 0x18b00;
    newObject->base.unk68 &= ~7;

    ObjectSetBounds(&newObject->base, -8, -8, 8, 8);

    newObject->unk83 = 0;

    ObjectInitSprite(newObject);

    gUnk_08351648[newObject->type].unk10(newObject);

    return newObject;
}

void sub_08025320(struct Object *r0)
{
    r0->unk78 = sub_0802532C;
}

static void sub_0802532C(struct Object *object)
{
    u8 ret_val = GetCollisionTile(
        object->base.unk56,
        object->base.x >> 0xC,
        object->base.y >> 0xC);

    if (ret_val != 0xf6)
    {
        object->unk85 = 0;
        object->unk83 = 1;

        object->unk78 = sub_08025368;
    }
}

static void sub_08025368(struct Object *object)
{
    if (object->unk85++ > 4)
    {
        object->base.flags |= 0x1000;
    }
}
