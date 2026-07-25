#include "scarfy.h"
#include "kirby.h"
#include "functions.h"
#include "code_0806F780.h"

static void sub_080A8048(struct Object2*);
static void sub_080A8100(struct Object2*);
static void sub_080A8148(struct Object2*);
static void sub_080A8180(struct Object2*);
static void sub_080A81A4(struct Object2*);
static void sub_080A81C4(struct Object2*);

const struct AnimInfo gScarfyAnimInfo[] = {
    { 0x332, 0, 0 },
    { 0x332, 1, 0 },
    { 0x332, 2, 0 },
    { 0x332, 3, 0 },
    { 0x332, 4, 0 },
    { 0x332, 5, 0 },
};

static const struct MoveStep gScarfyMoveSteps[] = {
    { 0, 0x100, 0, 0,   5, 0 },
    { 0,  0xE0, 0, 0,   1, 0 },
    { 0,  0xC0, 0, 0,   1, 0 },
    { 0,  0xA8, 0, 0,   1, 0 },
    { 0,  0x90, 0, 0,   1, 0 },
    { 0,  0x70, 0, 0,   1, 0 },
    { 0,  0x58, 0, 0,   1, 0 },
    { 0,  0x40, 0, 0,   1, 0 },
    { 0,  0x20, 0, 0, 0xC, 0 },
    { 0 },
};

static const struct MoveStep gScarfyMoveSteps2[] = {
    { 0, -0x100, 0, 0,   5, 0 },
    { 0,  -0xE0, 0, 0,   1, 0 },
    { 0,  -0xC0, 0, 0,   1, 0 },
    { 0,  -0xA8, 0, 0,   1, 0 },
    { 0,  -0x90, 0, 0,   1, 0 },
    { 0,  -0x70, 0, 0,   1, 0 },
    { 0,  -0x58, 0, 0,   1, 0 },
    { 0,  -0x40, 0, 0,   1, 0 },
    { 0,  -0x20, 0, 0, 0xC, 0 },
    { 0 },
};

static const struct MoveStep gScarfyMoveSteps3[] = {
    { -0x80, 0, 0, 0, 2, 1 },
    { -0x70, 0, 0, 0, 2, 1 },
    { 0 },
};


static const struct MoveStep gScarfyMoveSteps4[] = {
    {  0x200, 0, 0, 0, 2, 2 },
    { -0x200, 0, 0, 0, 2, 2 },
    { 0 },
};

void* CreateScarfy(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    obj->base.unk5C |= 0x20;
    obj->base.flags |= 0x140;
    ObjectSetHitbox(&obj->base, -5, -3, 5, 8);
    ObjectSetBounds(&obj->base, -6, -4, 6, 10);
    ObjectInitSprite(obj);
    if (obj->object->subtype1 != 0) {
        sub_080A81A4(obj);
    }
    else {
        gUnk_08351648[obj->type].unk10(obj);
    }
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

static void sub_080A75C4(struct Object2* arg0) {
    const struct MoveStep* temp;
    arg0->base.flags |= 4;
    if (gScarfyMoveSteps[(u8)(arg0->unk9F + 1)].unk8 == 0) {
        if (arg0->unk9E == 0) {
            arg0->unk85 ^= 1;
        }
        if (gScarfyMoveSteps[(u8)(arg0->unk9F + 1)].unk8 == 0) {
            if (arg0->unk9E == 0) {
                arg0->unk9F = 0xff;
            }
        }
    }
    if (arg0->unk85 != 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gScarfyMoveSteps[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gScarfyMoveSteps[arg0->unk9F].unk8;
            if (gScarfyMoveSteps[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gScarfyMoveSteps[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gScarfyMoveSteps[arg0->unk9F].unk0 != gScarfyMoveSteps[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gScarfyMoveSteps[arg0->unk9F].unk0;
                    if (arg0->base.flags & 1) {
                        arg0->base.xspeed = -arg0->base.xspeed;
                    }
                }
                if (gScarfyMoveSteps[arg0->unk9F].unk2 != gScarfyMoveSteps[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = gScarfyMoveSteps[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gScarfyMoveSteps[arg0->unk9F].unk2;
                arg0->base.xspeed = gScarfyMoveSteps[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
        }
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= gScarfyMoveSteps[arg0->unk9F].unk4;
        }
        else {
            arg0->base.xspeed += gScarfyMoveSteps[arg0->unk9F].unk4;
        }
        temp = gScarfyMoveSteps + arg0->unk9F;
    }
    else {
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gScarfyMoveSteps2[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gScarfyMoveSteps2[arg0->unk9F].unk8;
            if (gScarfyMoveSteps2[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gScarfyMoveSteps2[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gScarfyMoveSteps2[arg0->unk9F].unk0 != gScarfyMoveSteps2[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gScarfyMoveSteps2[arg0->unk9F].unk0;
                    if (arg0->base.flags & 1) {
                        arg0->base.xspeed = -arg0->base.xspeed;
                    }
                }
                if (gScarfyMoveSteps2[arg0->unk9F].unk2 != gScarfyMoveSteps2[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = gScarfyMoveSteps2[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gScarfyMoveSteps2[arg0->unk9F].unk2;
                arg0->base.xspeed = gScarfyMoveSteps2[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
        }
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= gScarfyMoveSteps2[arg0->unk9F].unk4;
        }
        else {
            arg0->base.xspeed += gScarfyMoveSteps2[arg0->unk9F].unk4;
        }
        temp = gScarfyMoveSteps2 + arg0->unk9F;
    }
    arg0->base.yspeed += temp->unk6;
    arg0->unk9E--;
    if (arg0->base.flags & 2) {
        arg0->kirby3 = FindClosestKirby(&arg0->base);
        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
    }
    if (arg0->unk90 != 0) {
        sub_080A8100(arg0);
    }
}

static void sub_080A78E4(struct Object2* arg0) {
    if (gScarfyMoveSteps3[(u8)(arg0->unk9F + 1)].unk8 == 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F = 0xff;
        }
    }
    if (arg0->unk9E == 0) {
        arg0->unk9F++;
        if (gScarfyMoveSteps3[arg0->unk9F].unk8 == 0) {
            arg0->unk9F--;
        }
        arg0->unk9E = gScarfyMoveSteps3[arg0->unk9F].unk8;
        if (gScarfyMoveSteps3[arg0->unk9F].unk9 != 0xff) {
            arg0->unk83 = gScarfyMoveSteps3[arg0->unk9F].unk9;
        }
        if (arg0->unk9F != 0) {
            if (gScarfyMoveSteps3[arg0->unk9F].unk0 != gScarfyMoveSteps3[arg0->unk9F - 1].unk0) {
                arg0->base.xspeed = gScarfyMoveSteps3[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
            if (gScarfyMoveSteps3[arg0->unk9F].unk2 != gScarfyMoveSteps3[arg0->unk9F - 1].unk2) {
                arg0->base.yspeed = gScarfyMoveSteps3[arg0->unk9F].unk2;
            }
        }
        else {
            arg0->base.yspeed = gScarfyMoveSteps3[arg0->unk9F].unk2;
            arg0->base.xspeed = gScarfyMoveSteps3[arg0->unk9F].unk0;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed = -arg0->base.xspeed;
            }
        }
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed -= gScarfyMoveSteps3[arg0->unk9F].unk4;
    }
    else {
        arg0->base.xspeed += gScarfyMoveSteps3[arg0->unk9F].unk4;
    }
    arg0->base.yspeed += gScarfyMoveSteps3[arg0->unk9F].unk6;
    arg0->unk9E--;
    if (arg0->base.flags & 2) {
        sub_080A8148(arg0);
    }
}

static void sub_080A7A88(struct Object2* arg0) {
    s32 r3, r2;
    arg0->base.flags |= 4;
    if (++arg0->unk9E > 7) {
        arg0->kirby3 = FindClosestKirby(&arg0->base);
        arg0->unk9E = 0;
        arg0->unkA0 = arg0->kirby3->base.base.base.x >> 8;
        arg0->unkA2 = arg0->kirby3->base.base.base.y >> 8;
    }
    
    r3 = (arg0->base.y & ~0xfff);
    r2 = ((arg0->unkA2 * 0x100) & ~0xfff);

    if (r3 > r2) {
        arg0->base.yspeed += 0x10;
        if (arg0->base.yspeed > 0x160) {
            arg0->base.yspeed = 0x160;
        }
    }
    else if (r3 < r2) {
        arg0->base.yspeed -= 0x10;
        if (arg0->base.yspeed < -0x160) {
            arg0->base.yspeed = -0x160;
        }
    }
    else {
        if (arg0->base.yspeed < 0) {
            arg0->base.yspeed += 4;
            if (arg0->base.yspeed > 0) {
                arg0->base.yspeed = 0;
            }
        }
        else {
            arg0->base.yspeed -= 4;
            if (arg0->base.yspeed < 0) {
                arg0->base.yspeed = 0;
            }
        }
    }

    r3 = (arg0->base.x & ~0xfff);
    r2 = ((arg0->unkA0 * 0x100) & ~0xfff);

    if (r3 < r2) {
        arg0->base.flags &= ~1;
        arg0->base.xspeed += 0x10;
        if (arg0->base.xspeed > 0x160)
            arg0->base.xspeed = 0x160;
        else if (arg0->base.xspeed < -0x160)
            arg0->base.xspeed = -0x160;
    }
    else if (r3 > r2) {
        arg0->base.flags |= 1;
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= 0x10;
            if (arg0->base.xspeed < -0x160)
                arg0->base.xspeed = -0x160;
            else if (arg0->base.xspeed > 0x160)
                arg0->base.xspeed = 0x160;
        }
        else {
            arg0->base.xspeed += 0x10;
            if (arg0->base.xspeed > 0x160)
                arg0->base.xspeed = 0x160;
            else if (arg0->base.xspeed < -0x160)
                arg0->base.xspeed = -0x160;
        }
    }
    else {
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed += 4;
            if (arg0->base.xspeed > 0) {
                arg0->base.xspeed = 0;
            }
        }
        else {
            arg0->base.xspeed -= 4;
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed = 0;
            }
        }
    }

    if (++arg0->base.counter > 0x79) {
        sub_080A8180(arg0);
    }
}

static void sub_080A7C0C(struct Object2* arg0) {
    s32 r3, r2;
    arg0->base.flags |= 4;
    if (++arg0->unk9E > 7) {
        arg0->kirby3 = FindClosestKirby(&arg0->base);
        arg0->unk9E = 0;
        arg0->unkA0 = arg0->kirby3->base.base.base.x >> 8;
        arg0->unkA2 = arg0->kirby3->base.base.base.y >> 8;
    }
    
    r3 = (arg0->base.y & ~0xfff);
    r2 = ((arg0->unkA2 * 0x100) & ~0xfff);

    if (r3 > r2) {
        arg0->base.yspeed += 0x20;
        if (arg0->base.yspeed > 0x1c0) {
            arg0->base.yspeed = 0x1c0;
        }
    }
    else if (r3 < r2) {
        arg0->base.yspeed -= 0x20;
        if (arg0->base.yspeed < -0x1c0) {
            arg0->base.yspeed = -0x1c0;
        }
    }
    else {
        if (arg0->base.yspeed < 0) {
            arg0->base.yspeed += 4;
            if (arg0->base.yspeed > 0) {
                arg0->base.yspeed = 0;
            }
        }
        else {
            arg0->base.yspeed -= 4;
            if (arg0->base.yspeed < 0) {
                arg0->base.yspeed = 0;
            }
        }
    }

    r3 = (arg0->base.x & ~0xfff);
    r2 = ((arg0->unkA0 * 0x100) & ~0xfff);

    if (r3 < r2) {
        arg0->base.flags &= ~1;
        arg0->base.xspeed += 0x20;
        if (arg0->base.xspeed > 0x1c0)
            arg0->base.xspeed = 0x1c0;
        else if (arg0->base.xspeed < -0x1c0)
            arg0->base.xspeed = -0x1c0;
    }
    else if (r3 > r2) {
        arg0->base.flags |= 1;
        if (arg0->base.flags & 1) {
            arg0->base.xspeed -= 0x20;
            if (arg0->base.xspeed < -0x1c0)
                arg0->base.xspeed = -0x1c0;
            else if (arg0->base.xspeed > 0x1c0)
                arg0->base.xspeed = 0x1c0;
        }
        else {
            arg0->base.xspeed += 0x20;
            if (arg0->base.xspeed > 0x1c0)
                arg0->base.xspeed = 0x1c0;
            else if (arg0->base.xspeed < -0x1c0)
                arg0->base.xspeed = -0x1c0;
        }
    }
    else {
        if (arg0->base.xspeed < 0) {
            arg0->base.xspeed += 4;
            if (arg0->base.xspeed > 0) {
                arg0->base.xspeed = 0;
            }
        }
        else {
            arg0->base.xspeed -= 4;
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed = 0;
            }
        }
    }

    if (++arg0->base.counter > 0xb5) {
        sub_080A8180(arg0);
    }
}

static void sub_080A7D90(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (gScarfyMoveSteps4[(u8)(arg0->unk9F + 1)].unk8 == 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F = 0xff;   
        }
    }
    if (arg0->unk9E == 0) {
        arg0->unk9F++;
        if (gScarfyMoveSteps4[arg0->unk9F].unk8 == 0) {
            arg0->unk9F--;
        }
        arg0->unk9E = gScarfyMoveSteps4[arg0->unk9F].unk8;
        if (gScarfyMoveSteps4[arg0->unk9F].unk9 != 0xff) {
            arg0->unk83 = gScarfyMoveSteps4[arg0->unk9F].unk9;
        }
        if (arg0->unk9F != 0) {
            if (gScarfyMoveSteps4[arg0->unk9F].unk0 != gScarfyMoveSteps4[arg0->unk9F - 1].unk0) {
                arg0->base.xspeed = gScarfyMoveSteps4[arg0->unk9F].unk0;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
            if (gScarfyMoveSteps4[arg0->unk9F].unk2 != gScarfyMoveSteps4[arg0->unk9F - 1].unk2) {
                arg0->base.yspeed = gScarfyMoveSteps4[arg0->unk9F].unk2;
            }
        }
        else {
            arg0->base.yspeed = gScarfyMoveSteps4[arg0->unk9F].unk2;
            arg0->base.xspeed = gScarfyMoveSteps4[arg0->unk9F].unk0;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed = -arg0->base.xspeed;
            }
        }
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed -= gScarfyMoveSteps4[arg0->unk9F].unk4;
    }
    else {
        arg0->base.xspeed += gScarfyMoveSteps4[arg0->unk9F].unk4;
    }
    arg0->base.yspeed += gScarfyMoveSteps4[arg0->unk9F].unk6;
    arg0->unk9E--;
    if (gScarfyMoveSteps4[(u8)(arg0->unk9F + 1)].unk8 == 0 && arg0->unk9E == 0) {
        if (++arg0->base.counter > 5) {
            arg0->base.flags |= 0x1000;
            sub_08073D2C(&arg0->base);
        }
    }
}

static void sub_080A7F64(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A8048);
    switch (arg0->object->subtype1) {
    default:
    case 1:
        arg0->base.x = arg0->kirby3->base.base.base.x - 0x3000;
        arg0->base.y = arg0->kirby3->base.base.base.y - 0xb000;
        arg0->base.yspeed = -0x300;
        break;
    case 2:
        arg0->base.x = arg0->kirby3->base.base.base.x + 0x5000;
        arg0->base.y = arg0->kirby3->base.base.base.y - 0xb000;
        arg0->base.yspeed = -0x300;
        break;
    case 3:
        arg0->base.x = arg0->kirby3->base.base.base.x - 0x3000;
        arg0->base.y = arg0->kirby3->base.base.base.y + 0xb000;
        arg0->base.yspeed = 0x300;
        break;
    case 4:
        arg0->base.x = arg0->kirby3->base.base.base.x + 0x5000;
        arg0->base.y = arg0->kirby3->base.base.base.y + 0xb000;
        arg0->base.yspeed = 0x300;
        break;
    }
    arg0->base.flags &= ~0x600;
    arg0->base.flags |= 0x2000000;
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
}

static void sub_080A8048(struct Object2* arg0) {
    if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) < 0x400) {
        arg0->base.flags &= ~0x02000000;
        ObjectSetFunc(arg0, 0, sub_080A75C4);
        return;
    }
    if (arg0->unk90 != 0) {
        arg0->base.flags &= ~0x02000000;
        arg0->kirby3 = FindClosestKirby(&arg0->base);
        ObjectSetFunc(arg0, 1, sub_080A78E4);
        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
        arg0->type = OBJ_SCARFY_FALLING;
    }
}

void sub_080A80EC(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A75C4);
}

static void sub_080A8100(struct Object2* arg0) {
    arg0->kirby3 = FindClosestKirby(&arg0->base);
    ObjectSetFunc(arg0, 1, sub_080A78E4);
    if (arg0->base.x > arg0->kirby3->base.base.base.x) {
        arg0->base.flags |= 1;
    }
    else {
        arg0->base.flags &= ~1;
    }
    arg0->type = OBJ_SCARFY_FALLING;
}

static void sub_080A8148(struct Object2* arg0) {
    if (arg0->subtype != 0) {
        ObjectSetFunc(arg0, 2, sub_080A7C0C);
    }
    else {
        ObjectSetFunc(arg0, 2, sub_080A7A88);
    }
    arg0->base.unkC |= 2;
}

static void sub_080A8180(struct Object2* arg0) {
    ObjectSetFunc(arg0, 2, sub_080A7D90);
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
}

static void sub_080A81A4(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A81C4);
    arg0->base.flags |= 0x600;
}

static void sub_080A81C4(struct Object2* arg0) {
    if (++arg0->base.counter > 8) {
        arg0->base.counter = 0;
        arg0->kirby3 = FindClosestKirby(&arg0->base);
    }
    if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) < 0xa00) {
        sub_080A7F64(arg0);
    }
}
