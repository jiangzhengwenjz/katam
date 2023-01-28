#include "heavy_knight.h"

#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "random.h"
#include "task.h"

const struct Unk_02021590 gUnk_08354BE4[] = {
    { 0x310, 0, 0 },
    { 0x310, 1, 0 },
    { 0x310, 2, 0 },
    { 0x310, 3, 0 },
    { 0x310, 4, 0 },
    { 0x310, 5, 0 },
    { 0x310, 6, 0 },
    { 0x310, 7, 0 },
    { 0x310, 8, 0 },
};

static const struct Unk_08353510 gUnk_08354C08[] = {
    { 0x0, 0x0, 0x0, 0x0, 0x1e, 0x0 },
    { 0xc0, 0x0, 0x0, 0x0, 0x8, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x14, 0x0 },
    { 0x80, 0x0, 0x0, 0x0, 0x4, 0x0 },
    { 0x80, 0x0, 0x0, 0x0, 0x6, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1e, 0x0 },
    { 0xc0, 0x0, 0x0, 0x0, 0x8, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x14, 0x0 },
    { 0x80, 0x0, 0x0, 0x0, 0x4, 0x0 },
    { 0x80, 0x0, 0x0, 0x0, 0x6, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
};

static const struct Unk_08353510 gUnk_08354C8C[] = {
    { 0x0, 0x0, 0x0, 0x0, 0x1e, 0x0 },
    { -0xc0, 0x0, 0x0, 0x0, 0x8, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x14, 0x0 },
    { -0x80, 0x0, 0x0, 0x0, 0x4, 0x0 },
    { -0x80, 0x0, 0x0, 0x0, 0x6, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x1e, 0x0 },
    { -0xc0, 0x0, 0x0, 0x0, 0x8, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x14, 0x0 },
    { -0x80, 0x0, 0x0, 0x0, 0x4, 0x0 },
    { -0x80, 0x0, 0x0, 0x0, 0x6, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
};

static const struct Unk_08353510 gUnk_08354D10[] = {
    { 0x0, 0x0, 0x0, 0x0, 0x1a, 0x1 },
    { 0x500, 0x0, 0x0, 0x0, 0x3, 0x2 },
    { 0x200, 0x0, -0x80, 0x0, 0x2, 0x2 },
    { 0x0, 0x0, 0x0, 0x0, 0x9, 0x2 },
    { 0x0, 0x0, 0x0, 0x0, 0xc, 0x3 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
};

static const struct Unk_08353510 gUnk_08354D58[] = {
    { 0x0, 0x0, 0x0, 0x0, 0x10, 0x4 },
    { 0x500, 0x0, 0x0, 0x0, 0x3, 0x5 },
    { 0x200, 0x0, 0x80, 0x0, 0x2, 0x5 },
    { 0x80, 0x0, 0x0, 0x0, 0x9, 0x5 },
    { 0x40, 0x0, 0x0, 0x0, 0xc, 0x6 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
};

static const struct Unk_08353510 gUnk_08354DA0[] = {
    { 0x0, 0x0, 0x0, 0x0, 0x1a, 0x1 },
    { 0x500, 0x0, 0x0, 0x0, 0x3, 0x2 },
    { 0x200, 0x0, -0x80, 0x0, 0x2, 0x2 },
    { 0x200, 0x0, 0x0, 0x0, 0x3, 0x5 },
    { 0x100, 0x0, 0x80, 0x0, 0x2, 0x5 },
    { 0x80, 0x0, 0x0, 0x0, 0x9, 0x5 },
    { 0x40, 0x0, 0x0, 0x0, 0xc, 0x6 },
    { 0x0, 0x0, 0x0, 0x0, 0x26, 0x1 },
    { 0x500, 0x0, 0x0, 0x0, 0x3, 0x2 },
    { 0x200, 0x0, -0x80, 0x0, 0x2, 0x2 },
    { 0x0, 0x0, 0x0, 0x0, 0x9, 0x2 },
    { 0x500, 0x0, 0x0, 0x0, 0x3, 0x5 },
    { 0x200, 0x0, 0x80, 0x0, 0x2, 0x5 },
    { 0x80, 0x0, 0x0, 0x0, 0x9, 0x5 },
    { 0x40, 0x0, 0x0, 0x0, 0xc, 0x6 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
};

static void sub_080BEAE8(struct Object2*);
static void sub_080BED38(struct Object2*);
static void sub_080BEF58(struct Object2*);
static void sub_080BF198(struct Object2*);
static void sub_080BF654(struct Object2*);
static void sub_080BF7D0(void);
static void sub_080BF914(struct Object2*);
static void sub_080BF9EC(void);
static void sub_080BFC28(struct Object2*);
static void sub_080BFC60(struct Object2*);
static void sub_080BFCC0(struct Object2*);
static void sub_080BFD0C(struct Object2*);
static void sub_080BFD58(struct Object2*);

void* CreateHeavyKnight(struct Object* arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    struct Object2 *obj2 = TaskGetStructPtr(task), *obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x800000;
    obj->base.flags |= 0x200000;
    obj->base.unk5C &= ~7;
    obj->base.unk5C |= 3;
    sub_0803E2B0(&obj->base, -9, -6, 9, 10);
    sub_0803E308(&obj->base, -7, -7, 7, 14);
    ObjectInitSprite(obj);
    obj->base.sprite.unk14 = 0x6c0;
    gUnk_08351648[obj->type].unk10(obj);
    obj->unk9E = 0;
    obj->unk7C = 0;
    if (obj->object->subtype1 == 0) {
        sub_080BF914(obj);
    }
    return obj;
}

static void sub_080BEAE8(struct Object2* arg0) {
    if (!(arg0->base.unk62 & 4)) {
        sub_080BFC28(arg0);
    }
    else {
        if (gUnk_08354C08[(u8)(arg0->unk9F + 1)].unk8 == 0) {
            if (arg0->unk9E == 0) {
                arg0->unk9F = 0xff;
            }
        }
        arg0->base.flags |= 4;
        if (arg0->object->subtype1 <= 1) {
            if (arg0->base.flags & 2) {
                arg0->kirby3 = sub_0803D368(&arg0->base);
            }
            if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x59ff) {
                arg0->unk85 = 0;
                if ((Rand16() & 3) == 3) {
                    sub_080BFD58(arg0);
                    return;
                }
                else {
                    if ((Rand16() & 3) == 3) {
                        sub_080BFCC0(arg0);
                        return;
                    }
                    else {
                        sub_080BFD0C(arg0);
                        return;
                    }
                }
            }
            else {
                arg0->unk85 = 1;
            }
        }
        if (arg0->object->subtype1 == 0) {
            if (arg0->unk9E == 0) {
                arg0->unk9F++;
                if (gUnk_08354C08[arg0->unk9F].unk8 == 0) {
                    arg0->unk9F--;
                }
                arg0->unk9E = gUnk_08354C08[arg0->unk9F].unk8;
                if (gUnk_08354C08[arg0->unk9F].unk9 != 0xff) {
                    arg0->unk83 = gUnk_08354C08[arg0->unk9F].unk9;
                }
                if (arg0->unk9F != 0) {
                    if (gUnk_08354C08[arg0->unk9F].unk0 != gUnk_08354C08[arg0->unk9F - 1].unk0) {
                        arg0->base.xspeed = gUnk_08354C08[arg0->unk9F].unk0;
                        if (arg0->base.flags & 1) {
                            arg0->base.xspeed = -arg0->base.xspeed;
                        }
                    }
                    if (gUnk_08354C08[arg0->unk9F].unk2 != gUnk_08354C08[arg0->unk9F - 1].unk2) {
                        arg0->base.yspeed = gUnk_08354C08[arg0->unk9F].unk2;
                    }
                }
                else {
                    arg0->base.yspeed = gUnk_08354C08[arg0->unk9F].unk2;
                    arg0->base.xspeed = gUnk_08354C08[arg0->unk9F].unk0;
                    if (arg0->base.flags & 1) {
                        arg0->base.xspeed = -arg0->base.xspeed;
                    }
                }
            }
            if (arg0->base.flags & 1) {
                arg0->base.xspeed -= gUnk_08354C08[arg0->unk9F].unk4;
            }
            else {
                arg0->base.xspeed += gUnk_08354C08[arg0->unk9F].unk4;
            }
            arg0->base.yspeed += gUnk_08354C08[arg0->unk9F].unk6;
            arg0->unk9E--;
            if (sub_0809D998(arg0) != 0) {
                arg0->base.xspeed = 0;
            }
        }
    }
}

static void sub_080BED38(struct Object2* arg0) {
    if (gUnk_08354C8C[(u8)(arg0->unk9F + 1)].unk8 == 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F = 0xff;
        }
    }
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        arg0->kirby3 = sub_0803D368(&arg0->base);
    }
    if (arg0->object->subtype1 == 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08354C8C[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08354C8C[arg0->unk9F].unk8;
            if (gUnk_08354C8C[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08354C8C[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08354C8C[arg0->unk9F].unk0 != gUnk_08354C8C[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gUnk_08354C8C[arg0->unk9F].unk0;
                    if (arg0->base.flags & 1) {
                        arg0->base.xspeed = -arg0->base.xspeed;
                    }
                }
                if (gUnk_08354C8C[arg0->unk9F].unk2 != gUnk_08354C8C[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = gUnk_08354C8C[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gUnk_08354C8C[arg0->unk9F].unk2;
                arg0->base.xspeed = gUnk_08354C8C[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
        }
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= gUnk_08354C8C[arg0->unk9F].unk4;
        }
        else {
            arg0->base.xspeed += gUnk_08354C8C[arg0->unk9F].unk4;
        }
        arg0->base.yspeed += gUnk_08354C8C[arg0->unk9F].unk6;
        arg0->unk9E--;
        if (sub_0809D998(arg0) != 0) {
            arg0->base.xspeed = 0;
        }
    }
    if (++arg0->base.counter > 0x5a) {
        ObjectSetFunc(&arg0->base, 0, sub_080BEAE8);
        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
        arg0->base.flags &= ~8;
        arg0->base.flags |= 4;
    }
    else {
        if (!(arg0->base.unk62 & 4)) {
            sub_080BFC28(arg0);
        }
    }
}

static void sub_080BEF58(struct Object2* arg0) {
    if (arg0->base.flags & 2 && arg0->unk83 == 3) {
        if ((Rand16() & 3) == 3) {
            sub_080BFD0C(arg0);
        }
        else {
            ObjectSetFunc(&arg0->base, 0, sub_080BED38);
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
            arg0->base.flags &= ~8;
        }
    }
    else {
        if (arg0->unk83 == 2 && arg0->base.unk1 == 1) {
            sub_080BF654(arg0);
        }
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08354D10[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08354D10[arg0->unk9F].unk8;
            if (gUnk_08354D10[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08354D10[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08354D10[arg0->unk9F].unk0 != gUnk_08354D10[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gUnk_08354D10[arg0->unk9F].unk0;
                    if (arg0->base.flags & 1) {
                        arg0->base.xspeed = -arg0->base.xspeed;
                    }
                }
                if (gUnk_08354D10[arg0->unk9F].unk2 != gUnk_08354D10[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = gUnk_08354D10[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gUnk_08354D10[arg0->unk9F].unk2;
                arg0->base.xspeed = gUnk_08354D10[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
        }
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= gUnk_08354D10[arg0->unk9F].unk4;
        }
        else {
            arg0->base.xspeed += gUnk_08354D10[arg0->unk9F].unk4;
        }
        arg0->base.yspeed += gUnk_08354D10[arg0->unk9F].unk6;
        arg0->unk9E--;
        do {
            if (arg0->object->subtype1 || sub_0809D998(arg0)) {
                arg0->base.xspeed = 0;
            }
        } while (0);
        if (!(arg0->base.unk62 & 4)) {
            ObjectSetFunc(&arg0->base, 0, sub_080BFC60);
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
        }
    }
}

static void sub_080BF198(struct Object2* arg0) {
    if (arg0->base.flags & 2 && arg0->unk83 == 6) {
        if ((Rand16() & 3) == 3) {
            ObjectSetFunc(&arg0->base, 1, sub_080BEF58);
            arg0->base.xspeed = 0;
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
            arg0->base.flags &= ~8;
        }
        else {
            ObjectSetFunc(&arg0->base, 0, sub_080BED38);
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
            arg0->base.flags &= ~8;
        }
    }
    else {
        if (arg0->unk83 == 5 && arg0->base.unk1 == 1) {
            sub_080BF654(arg0);
        }
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08354D58[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08354D58[arg0->unk9F].unk8;
            if (gUnk_08354D58[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08354D58[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08354D58[arg0->unk9F].unk0 != gUnk_08354D58[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gUnk_08354D58[arg0->unk9F].unk0;
                    if (arg0->base.flags & 1) {
                        arg0->base.xspeed = -arg0->base.xspeed;
                    }
                }
                if (gUnk_08354D58[arg0->unk9F].unk2 != gUnk_08354D58[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = gUnk_08354D58[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gUnk_08354D58[arg0->unk9F].unk2;
                arg0->base.xspeed = gUnk_08354D58[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
        }
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= gUnk_08354D58[arg0->unk9F].unk4;
        }
        else {
            arg0->base.xspeed += gUnk_08354D58[arg0->unk9F].unk4;
        }
        arg0->base.yspeed += gUnk_08354D58[arg0->unk9F].unk6;
        arg0->unk9E--;
        do {
            if (arg0->object->subtype1 || sub_0809D998(arg0)) {
                arg0->base.xspeed = 0;
            }
        } while (0);
        if (!(arg0->base.unk62 & 4)) {
            ObjectSetFunc(&arg0->base, 0, sub_080BFC60);
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
        }
    }
}

static void sub_080BF414(struct Object2* arg0) {
    if (gUnk_08354DA0[(u8)(arg0->unk9F + 1)].unk8 == 0 && arg0->unk9E == 0) {
        ObjectSetFunc(&arg0->base, 0, sub_080BED38);
        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
        arg0->base.flags &= ~8;
    }
    else {
        if (arg0->unk83 == 5 && arg0->base.unk1 == 1) {
            sub_080BF654(arg0);
        }
        if (arg0->unk83 == 2 && arg0->base.unk1 == 1) {
            sub_080BF654(arg0);
        }
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08354DA0[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08354DA0[arg0->unk9F].unk8;
            if (gUnk_08354DA0[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08354DA0[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08354DA0[arg0->unk9F].unk0 != gUnk_08354DA0[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gUnk_08354DA0[arg0->unk9F].unk0;
                    if (arg0->base.flags & 1) {
                        arg0->base.xspeed = -arg0->base.xspeed;
                    }
                }
                if (gUnk_08354DA0[arg0->unk9F].unk2 != gUnk_08354DA0[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = gUnk_08354DA0[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gUnk_08354DA0[arg0->unk9F].unk2;
                arg0->base.xspeed = gUnk_08354DA0[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
        }
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= gUnk_08354DA0[arg0->unk9F].unk4;
        }
        else {
            arg0->base.xspeed += gUnk_08354DA0[arg0->unk9F].unk4;
        }
        arg0->base.yspeed += gUnk_08354DA0[arg0->unk9F].unk6;
        arg0->unk9E--;
        do {
            if (arg0->object->subtype1 || sub_0809D998(arg0)) {
                arg0->base.xspeed = 0;
            }
        } while (0);
        if (!(arg0->base.unk62 & 4)) {
            ObjectSetFunc(&arg0->base, 0, sub_080BFC60);
            if (arg0->base.x > arg0->kirby3->base.base.base.x) {
                arg0->base.flags |= 1;
            }
            else {
                arg0->base.flags &= ~1;
            }
        }
    }
}

static void sub_080BF654(struct Object2* arg0) {
    struct Task *task = TaskCreate(sub_080BF7D0, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *obj2 = TaskGetStructPtr(task), *obj = obj2;
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
    obj->flags = 0x50400400;
    obj->unk68 = 0x20000043;
    obj->unk5C |= 0x80000;
    if (arg0->base.flags & 1) {
        obj->x -= 0x2800;
        obj->flags |= 1;
    }
    else {
        obj->x += 0x2800;
        obj->flags &= ~1;
    }
    sub_0803E2B0(obj, -15, -14, 10, 14);
    PlaySfx(obj, 0x155);
}

static void sub_080BF7D0(void) {
    struct ObjectBase *obj2 = TaskGetStructPtr(gCurTask), *obj = obj2;
    struct Object2 *parent = obj->parent;
    if (obj->flags & 0x1000) {
        TaskDestroy(gCurTask);
    }
    else {
        if (parent->base.flags & 0x1000) {
            obj->flags |= 0x1000;   
        }
        else {
            obj->unk56 = parent->base.unk56;
            obj->x = parent->base.x;
            obj->y = parent->base.y;
            if (!Macro_0810B1F4(&parent->base)) {
                if (++obj->counter > 5) {
                    obj->flags |= 0x1000; 
                }
                else {
                    if (!(obj->flags & 0x200)) {
                        SetPointerSomething(obj);
                    }
                    if (parent->base.flags & 1) {
                        obj->x -= 0x2800;
                        obj->flags |= 1;
                    }
                    else {
                        obj->x += 0x2800;
                        obj->flags &= ~1;
                    }
                }
            }
        }
    }
}

static void sub_080BF914(struct Object2* arg0) {
    register struct ObjectBase *obj2, *obj;
    u32 flags;
    struct Task *task = TaskCreate(sub_080BF9EC, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    obj2 = TaskGetStructPtr(task);
    if (task) obj = obj2;
    obj = obj2;
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
    obj->unk68 = 0x20000043;
    obj->flags = flags = 0x42110400;
    obj->unk5C |= 0x80000;
    if (arg0->base.flags & 1) {
        flags |= 1;
    }
    obj->flags = flags;
    sub_0803E2B0(obj, -64, -32, 64, 32);
}

static void sub_080BF9EC(void) {
    struct ObjectBase *obj2 = TaskGetStructPtr(gCurTask), *obj = obj2;
    struct Object2 *parent = obj->parent;
    if (obj->flags & 0x1000) {
        TaskDestroy(gCurTask);
    }
    else {
        if (parent->base.flags & 0x1000) {
            obj->flags |= 0x1000;   
        }
        else {
            obj->x = parent->base.x;
            obj->y = parent->base.y;
            obj->unk56 = parent->base.unk56;
            if (!Macro_0810B1F4(&parent->base)) {
                if (parent->base.flags & 1) {
                    obj->flags |= 1;
                }
                else {
                    obj->flags &= ~1;
                }
                if (parent->unk85 != 0 && parent->unk83 < 7) {
                    if (obj->flags & 0x40000) {
                        struct ObjectBase *obj2 = obj->unk6C;
                        obj->flags &= ~0x40000;
                        if (obj2->parent) {
                            if (obj2->flags & 0x20000000) {
                                if ((Rand16() & 3) == 3) {
                                    ObjectSetFunc(parent, 1, sub_080BEF58);
                                    parent->base.xspeed = 0;
                                    if (parent->base.x > parent->kirby3->base.base.base.x) {
                                        parent->base.flags |= 1;
                                    }
                                    else {
                                        parent->base.flags &= ~1;
                                    }
                                    parent->base.flags &= ~8;
                                    parent->unk85 = 0;
                                    return;
                                }
                                else {
                                    ObjectSetFunc(parent, 4, sub_080BF198);
                                    parent->base.xspeed = 0;
                                    if (parent->base.x > parent->kirby3->base.base.base.x) {
                                        parent->base.flags |= 1;
                                    }
                                    else {
                                        parent->base.flags &= ~1;
                                    }
                                    parent->base.flags &= ~8;
                                    parent->unk85 = 0;
                                    return;
                                }
                            }
                        }
                    }
                    if (!(obj->flags & 0x200)) {
                        SetPointerSomething(obj);
                    }
                }
            }
        }
    }
}

void sub_080BFBE0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080BEAE8);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.flags &= ~8;
    arg0->base.flags |= 4;
}

static void sub_080BFC28(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080BFC60);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
}

static void sub_080BFC60(struct Object2* arg0) {
    arg0->base.flags |= 8;
    if (arg0->base.unk62 & 4) {
        ObjectSetFunc(arg0, 0, sub_080BEAE8);
        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
        arg0->base.flags &= ~8;
        arg0->base.flags |= 4;
    }
}

static void sub_080BFCC0(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080BEF58);
    arg0->base.xspeed = 0;
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.flags &= ~8;
}

static void sub_080BFD0C(struct Object2* arg0) {
    ObjectSetFunc(arg0, 4, sub_080BF198);
    arg0->base.xspeed = 0;
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.flags &= ~8;
}

static void sub_080BFD58(struct Object2* arg0) {
    ObjectSetFunc(arg0, 1, sub_080BF414);
    arg0->base.xspeed = 0;
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->base.flags &= ~8;
}
