#include "hammer_peg.h"

static void sub_08025368(struct Object2 *);

static void sub_0802532C(struct Object2 *);

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
