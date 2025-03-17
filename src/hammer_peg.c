#include "hammer_peg.h"

void sub_08025320(struct Object2 *r0) {
    r0->unk78 = sub_0802532C;
}

void sub_0802532C(struct Object2 *object) {
    u8 ret_val = sub_080023E4(
        object->base.unk56,
        (object->base.x << 4) >> 0x10,
        (object->base.y << 4) >> 0x10);

    if ((ret_val) != 0xf6)
    {
      object->unk85 = 0;
      object->unk83 = 1;

      object->unk78 = sub_08025368;
    }
}

void sub_08025368(struct Object2 *object)
{
    if ((u8)object->unk85++ > 4)
    {
      object->base.flags = (object->base.flags) | (0x80 << 5);
    }
}
