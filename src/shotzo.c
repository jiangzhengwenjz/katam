#include "shotzo.h"
#include "kirby.h"
#include "parasol.h"

void sub_0811B3E4(struct Object *obj) {
    if (!--obj->base.counter) {
        sub_0811AA2C(obj);
    }
}

void sub_0811B400(struct Object *obj) {
    obj->unk83 = 0;
    obj->base.xspeed = 0;
    obj->base.yspeed = 0;
    obj->unk9E = 0;
    obj->base.counter = 0;
    sub_0803E2B0(&obj->base, -5, -0x10, 5, 8);
    obj->base.flags |= 0x2000;
    obj->unk78 = sub_0811B44C;
}

void sub_0811B44C(struct Object *obj) {
    obj->base.flags &= ~0x2000;
    sub_080C29C0(obj, 0);
    obj->unk83 = 0;
    obj->base.xspeed = 0;
    obj->base.yspeed = 0;
    obj->unk9E = 0;
    obj->base.counter = 0;
    obj->unk78 = sub_0811B48C;
}

void sub_0811B48C(struct Object *obj) {
    if (obj->base.unk62 & 4) {
        if (obj->base.flags & 0x1000000) {
            obj->base.flags &= ~0x1000000;
            sub_0803E2B0(&obj->base, -5, -6, 5, 3);
            sub_0811A874(obj);
            return;
        } else {
            obj->base.flags |= 0x1000000;
        }
    }
    if (!(obj->base.flags & 0x40)) {
        obj->base.xspeed = 0;
    }
}
