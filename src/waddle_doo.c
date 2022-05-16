#include "waddle_doo.h"

#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "parasol.h"
#include "task.h"
#include "constants/kirby.h"

static const s16 gUnk_0835464C[] = {
    0x0, 0x800, 
    0x200, 0x600,
    0x400, 0x400,
    0x600, 0x200,
    0x800, 0x0,
    0x600, -0x200,
    0x400, -0x400,
    0x200, -0x600,
    0x0, -0x800,
    0x31e, 0x0,
    0x31e, 0x1,
    0x31e, 0x2,
    0x31e, 0x3,
    0x31e, 0x4,
    0x31e, 0x5,
    0x31e, 0x6,
    0x31e, 0x7,
    0x31e, 0x8,
    0x31e, 0x9,
    0x31e, 0xd,
    0x31e, 0xa,
    0x31e, 0xb,
};

static void sub_080B6A54(struct Object2*);
static void sub_080B6AD8(struct Object2*);
static void sub_080B6B68(struct Object2*);
static void sub_080B6BFC(struct Object2*);
static void sub_080B6C78(struct Object2*);
static void sub_080B6CD8(struct Object2*);
static void sub_080B6D58(struct Object2*);
static void sub_080B6DDC(struct Object2*, u8);
static void sub_080B7068(void);
static void sub_080B7324(struct Object2*);
static void sub_080B7360(struct Object2*);
static void sub_080B7394(struct Object2*);
static void sub_080B73D8(struct Object2*);
static void sub_080B7408(struct Object2*);
static void sub_080B741C(struct Object2*);
static void sub_080B7428(struct Object2*);
static void sub_080B743C(struct Object2*);
static void sub_080B7460(struct Object2*);
static void sub_080B74B4(struct Object2*);

void* CreateWaddleDoo(struct Object* arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 10);
    obj->base.unk4C = obj->base.y = ((obj->base.y + (obj->base.unk3F << 8)) & ~0xfff) - (obj->base.unk3F << 8) - 1;
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    ObjectInitSprite(obj);
    switch (arg0->subtype1) {
    case 0:
    default:
        sub_080B6AD8(obj);
        break;
    case 1:
        sub_080B7460(obj);
        break;
    case 2:
        sub_080B7408(obj);
        break;
    case 3:
        sub_080B7428(obj);
        break;
    }
    return obj;
}

static void sub_080B6A54(struct Object2* arg0) {
    arg0->base.flags &= ~0x40;
    switch (arg0->object->subtype1) {
    case 0:
    default:
        sub_080B6AD8(arg0);
        break;
    case 1:
        if (arg0->subtype == 2) {
            sub_080B73D8(arg0);
        }
        else {
            sub_0803E2B0(&arg0->base, -5, -3, 5, 8);
            sub_0803E308(&arg0->base, -6, -4, 6, 10);
            sub_080B6AD8(arg0);
        }
        break;
    case 2:
        sub_080B7408(arg0);
        break;
    case 3:
        sub_080B7428(arg0);
        break;
    }
}

static void sub_080B6AD8(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 0, sub_080B6B68);
    arg0->kirbyAbility = KIRBY_ABILITY_BEAM;
    if (arg0->unk85 == 0) {
        arg0->base.counter = 0x41;
    }
    switch (arg0->subtype) {
    case 0:
        arg0->base.xspeed = 0x80;
        arg0->unk83 = 0;
        break;
    case 1:
        arg0->base.xspeed = 0xc0;
        arg0->unk83 = 1;
        break;
    case 2:
        arg0->base.xspeed = 0x100;
        arg0->unk83 = 2;
        break;
    case 3:
        arg0->base.xspeed = 0x180;
        arg0->unk83 = 3;
        break;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}

static void sub_080B6B68(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (arg0->base.unk62 & 4) {
        if (++arg0->base.counter > 0x50) {
            if (Rand16() & 1) {
                sub_080B6C78(arg0);
            }
            else {
                if (Rand16() & 1) {
                    arg0->base.counter = 0;
                }
                else {
                    sub_080B6BFC(arg0);
                }
            }
        }
    }
}

static void sub_080B6BFC(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 4, sub_080B7324);
    arg0->unk85 = 1;
    arg0->base.yspeed = 0x280;
    switch (arg0->subtype) {
    case 0:
        arg0->base.xspeed = 0x80;
        break;
    case 1:
        arg0->base.xspeed = 0xc0;
        break;
    case 2:
        arg0->base.xspeed = 0x100;
        break;
    case 3:
        arg0->base.xspeed = 0x180;
        break;
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}

static void sub_080B6C78(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 6, sub_080B7360);
    arg0->base.yspeed = 0;
    arg0->base.xspeed = 0;
    switch (arg0->subtype) {
    case 0:
        arg0->unk85 = 0x10;
        break;
    case 1:
        arg0->unk85 = 0xa;
        break;
    case 2:
        arg0->unk85 = 0x8;
        break;
    case 3:
        arg0->unk85 = 0x6;
        break;
    }
}

static void sub_080B6CD8(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        arg0->unk85--;
    }
    if (arg0->base.unk1 & 1) {
        if (arg0->subtype < 2) {
            sub_080B6DDC(arg0, arg0->base.counter >> 1);
        }
        else {
            sub_080B6DDC(arg0, arg0->base.counter);
        }
        arg0->base.counter++;
    }
    if (arg0->unk85 == 0) {
        arg0->unk85 = 1;
        if (arg0->object->subtype1 == 3) {
            sub_080B7428(arg0);
        }
        else {
            sub_080B6AD8(arg0);
        }
    }
}

static void sub_080B6D58(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 4) {
        if (arg0->unk85 == 1) {
            sub_080B6A54(arg0);
        }
        else {
            arg0->unk83 = 0;
            arg0->base.flags &= ~0x40;
            arg0->base.xspeed = 0x80;
            if (arg0->base.unk62 & 1) {
                arg0->base.flags ^= 1;
            }
            if (arg0->base.flags & 1) {
                arg0->base.xspeed = -arg0->base.xspeed;
            }
        }
    }
    else {
        arg0->unk83 = 5;
        arg0->base.flags |= 0x40;
        arg0->unk85 = 1;
    }
}

static void sub_080B6DDC(struct Object2* arg0, u8 arg1) {
    u32 arg;
    struct Task *task = TaskCreate(sub_080B7068, sizeof(struct ObjectBase), 0x3500, 0x10, sub_0803DCCC);
    struct ObjectBase *obj2, *obj = TaskGetStructPtr(task, obj2);
    sub_0803E380(obj);
    obj->unk0 = 2;
    obj->x = arg0->base.x;
    obj->y = arg0->base.y;
    obj->parent = arg0;
    obj->counter = 0;
    obj->roomId = arg0->base.roomId;
    obj->unk56 = arg0->base.unk56;
    if (Macro_0810B1F4(obj)) {
        obj->flags |= 0x2000;
    }
    obj->unk63 = 1;
    obj->flags |= 0x4000;
    obj->flags |= 0x10000000;
    obj->flags |= 0x140;
    obj->unk68 = 0x20000043;
    obj->unk5C |= 0x80000;
    obj->xspeed = gUnk_0835464C[(arg = arg1 * 2)];
    obj->yspeed = gUnk_0835464C[arg1 * 2 + 1];
    obj->y += 0x300;
    if (arg0->base.flags & 1) {
        obj->x -= 0x800;
        obj->flags |= 1;
        obj->xspeed = -obj->xspeed;
    }
    else {
        obj->x += 0x800;
        obj->flags &= ~1;
    }
    sub_0803E2B0(obj, -2, -2, 2, 2);
    sub_0803E308(obj, 0, 0, 0, 0);
    sub_080708DC(obj, &obj->unk10, 8, 0x330, 0xa, 0xc);
    obj->unk10.unk1F = 0;
    if (arg0->base.unkC & 0x10) {
        Macro_081050E8(obj, &obj->unk10, gUnk_08351648[OBJ_DROPPY].unk8, 1);
    }
    else {
        Macro_081050E8(obj, &obj->unk10, 0x308, 1);
    }
    PlaySfx(obj, 0x13a);
}

static void sub_080B7068(void) {
    struct Sprite sprite;
    struct ObjectBase *obj2, *obj = TaskGetStructPtr(gCurTask, obj2);
    struct Object2 *parent = obj->parent;
    Macro_08107BA8_4(obj, &obj->unk10, &sprite, 8, &obj->unk10);
    if (parent->base.unkC & 0x10) {
        Macro_081050E8(obj, &obj->unk10, gUnk_08351648[OBJ_DROPPY].unk8, obj->unk10.unk1F == 0);
    }
    else {
        Macro_081050E8(obj, &obj->unk10, 0x308, obj->unk10.unk1F == 0);
    }
    parent = obj->parent;
    if (obj->roomId != 0xffff && parent->base.flags & 0x1000) {
        obj->roomId = 0xffff;
    }
    if (sub_0806F780(obj) == 0) {
        obj->flags |= 4;
        if (obj->flags & 2 && ++obj->counter > 2) {
            obj->flags |= 0x1000;
        }
        else {
            if (!(obj->flags & 0x200)) {
                SetPointerSomething(obj);
            }
            if (!(obj->flags & 0x800)) {
                obj->x += obj->xspeed;
                obj->y -= obj->yspeed;
            }
            sub_0806F8BC(obj);
        }
    }
}

static void sub_080B7324(struct Object2* arg0) {
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (arg0->base.unk62 & 4) {
        sub_080B6AD8(arg0);
    }
}

static void sub_080B7360(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        arg0->unk85--;
    }
    if (arg0->unk85 == 0) {
        sub_080B7394(arg0);
    }
}

static void sub_080B7394(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 7, sub_080B6CD8);
    arg0->base.yspeed = 0;
    arg0->base.xspeed = 0;
    switch (arg0->subtype) {
    case 0:
    case 1:
        arg0->unk85 = 8;
        break;
    case 2:
    case 3:
        arg0->unk85 = 4;
        break;
    }
}

static void sub_080B73D8(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 0, sub_080B6D58);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->unk85 = 0;
    arg0->kirbyAbility = KIRBY_ABILITY_PARASOL;
}

static void sub_080B7408(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 0, sub_080B741C);
}

static void sub_080B741C(struct Object2* arg0) {
    arg0->base.flags |= 4;
}

static void sub_080B7428(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 0, sub_080B743C);
}

static void sub_080B743C(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (++arg0->base.counter > 0x3e) {
        sub_080B6C78(arg0);
    }
}

static void sub_080B7460(struct Object2* arg0) {
    ObjectSetFunc(&arg0->base, 0, sub_080B74B4);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    arg0->unk85 = 0;
    sub_0803E2B0(&arg0->base, -5, -5, 5, 8);
    arg0->kirbyAbility = KIRBY_ABILITY_PARASOL;
    arg0->base.flags |= 0x2000;
}

static void sub_080B74B4(struct Object2* arg0) {
    sub_080C29C0(arg0, arg0->object->subtype2);
    arg0->base.flags &= ~0x2000;
    sub_080B73D8(arg0);
}
