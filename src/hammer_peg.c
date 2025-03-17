#include "hammer_peg.h"

static void sub_08025368(struct Object2 *);

static void sub_0802532C(struct Object2 *);

struct Object2 *CreateHammerPeg(struct Object *object, u8 r1)
{
    struct Task *newTask = TaskCreate(ObjectMain, 0xb4, 0x1000, 0, ObjectDestroy);
    struct Object2 *newObject2;

    if((newTask->flags & 0x10) != 0)
    {
        newObject2 = (struct Object2 *)((newTask->structOffset << 2) + 0x2000000);
    }
    else
    {
        newObject2 = (struct Object2 *)(newTask->structOffset + 0x3000000);
    }

    InitObject(newObject2, object, r1);

    newObject2->unk85 = 0;
    newObject2->base.flags |= 0x18b00;
    newObject2->base.unk68 &= -8;

    sub_0803E308(&newObject2->base, -8, -8, 8, 8);

    newObject2->unk83 = 0;

    ObjectInitSprite(newObject2);

    gUnk_08351648[newObject2->type].unk10(newObject2);

    return newObject2;
}

void sub_08025320(struct Object2 *r0)
{
    r0->unk78 = sub_0802532C;
}

static void sub_0802532C(struct Object2 *object)
{
    u8 ret_val = sub_080023E4(
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

static void sub_08025368(struct Object2 *object)
{
    if (object->unk85++ > 4)
    {
        object->base.flags |= 0x1000;
    }
}
