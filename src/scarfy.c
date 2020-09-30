#include "scarfy.h"
#include "functions.h"

struct Object2* CreateScarfy(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task* task = TaskCreate(ObjectMain, 0xb4, 0x1000, 0x10, ObjectDestroy);
    obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    if (obj->x > obj->unkAC->base.x) {
        obj->flags |= 1;
    }
    else {
        obj->flags &= ~1;
    }
    obj->unk5C |= 0x20;
    obj->flags |= 0x140;
    sub_0803E2B0(obj, -5, -3, 5, 8);
    sub_0803E308(obj, -6, -4, 6, 10);
    ObjectInitSprite(obj);
    if (obj->unkB0->unkE != 0) {
        sub_080A81A4(obj);
    }
    else {
        gUnk_08351648[obj->type].unk10(obj);
    }
    obj->unk9E = 0;
    obj->unk7C = 0;
    return obj;
}

void sub_080A75C4(struct Object2* arg0) {
    const struct Unk_08353510* temp;
    arg0->flags |= 4;
    if (gUnk_08353510[(u8)(arg0->unk9F + 1)].unk8 == 0) {
        if (arg0->unk9E == 0) {
            arg0->unk85 ^= 1;
        }
        if (gUnk_08353510[(u8)(arg0->unk9F + 1)].unk8 == 0) {
            if (arg0->unk9E == 0) {
                arg0->unk9F = 0xff;
            }
        }
    }
    if (arg0->unk85 != 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08353510[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08353510[arg0->unk9F].unk8;
            if (gUnk_08353510[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08353510[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08353510[arg0->unk9F].unk0 != gUnk_08353510[arg0->unk9F - 1].unk0) {
                    arg0->xspeed = gUnk_08353510[arg0->unk9F].unk0;
                    if (arg0->flags & 1) {
                        arg0->xspeed = -arg0->xspeed;
                    }
                }
                if (gUnk_08353510[arg0->unk9F].unk2 != gUnk_08353510[arg0->unk9F - 1].unk2) {
                    arg0->yspeed = gUnk_08353510[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->yspeed = gUnk_08353510[arg0->unk9F].unk2;
                arg0->xspeed = gUnk_08353510[arg0->unk9F].unk0;
                if (arg0->flags & 1) {
                    arg0->xspeed = -arg0->xspeed;
                }
            }
        }
        if (arg0->flags & 1) {
            arg0->xspeed -= gUnk_08353510[arg0->unk9F].unk4;
        }
        else {
            arg0->xspeed += gUnk_08353510[arg0->unk9F].unk4;
        }
        temp = gUnk_08353510 + arg0->unk9F;
    }
    else {
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08353588[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08353588[arg0->unk9F].unk8;
            if (gUnk_08353588[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08353588[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08353588[arg0->unk9F].unk0 != gUnk_08353588[arg0->unk9F - 1].unk0) {
                    arg0->xspeed = gUnk_08353588[arg0->unk9F].unk0;
                    if (arg0->flags & 1) {
                        arg0->xspeed = -arg0->xspeed;
                    }
                }
                if (gUnk_08353588[arg0->unk9F].unk2 != gUnk_08353588[arg0->unk9F - 1].unk2) {
                    arg0->yspeed = gUnk_08353588[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->yspeed = gUnk_08353588[arg0->unk9F].unk2;
                arg0->xspeed = gUnk_08353588[arg0->unk9F].unk0;
                if (arg0->flags & 1) {
                    arg0->xspeed = -arg0->xspeed;
                }
            }
        }
        if (arg0->flags & 1) {
            arg0->xspeed -= gUnk_08353588[arg0->unk9F].unk4;
        }
        else {
            arg0->xspeed += gUnk_08353588[arg0->unk9F].unk4;
        }
        temp = gUnk_08353588 + arg0->unk9F;
    }
    arg0->yspeed += temp->unk6;
    
    arg0->unk9E--;
    if (arg0->flags & 2) {
        arg0->unkAC = sub_0803D368(arg0);
        if (arg0->x > arg0->unkAC->base.x) {
            arg0->flags |= 1;
        }
        else {
            arg0->flags &= ~1;
        }
    }
    if (arg0->unk90 != 0) {
        sub_080A8100(arg0);
    }
}

void sub_080A78E4(struct Object2* arg0) {
    if (gUnk_08353600[(u8)(arg0->unk9F + 1)].unk8 == 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F = 0xff;
        }
    }
    if (arg0->unk9E == 0) {
        arg0->unk9F++;
        if (gUnk_08353600[arg0->unk9F].unk8 == 0) {
            arg0->unk9F--;
        }
        arg0->unk9E = gUnk_08353600[arg0->unk9F].unk8;
        if (gUnk_08353600[arg0->unk9F].unk9 != 0xff) {
            arg0->unk83 = gUnk_08353600[arg0->unk9F].unk9;
        }
        if (arg0->unk9F != 0) {
            if (gUnk_08353600[arg0->unk9F].unk0 != gUnk_08353600[arg0->unk9F - 1].unk0) {
                arg0->xspeed = gUnk_08353600[arg0->unk9F].unk0;
                if (arg0->flags & 1) {
                    arg0->xspeed = -arg0->xspeed;
                }
            }
            if (gUnk_08353600[arg0->unk9F].unk2 != gUnk_08353600[arg0->unk9F - 1].unk2) {
                arg0->yspeed = gUnk_08353600[arg0->unk9F].unk2;
            }
        }
        else {
            arg0->yspeed = gUnk_08353600[arg0->unk9F].unk2;
            arg0->xspeed = gUnk_08353600[arg0->unk9F].unk0;
            if (arg0->flags & 1) {
                arg0->xspeed = -arg0->xspeed;
            }
        }
    }
    if (arg0->flags & 1) {
        arg0->xspeed -= gUnk_08353600[arg0->unk9F].unk4;
    }
    else {
        arg0->xspeed += gUnk_08353600[arg0->unk9F].unk4;
    }
    arg0->yspeed += gUnk_08353600[arg0->unk9F].unk6;
    arg0->unk9E--;
    if (arg0->flags & 2) {
        sub_080A8148(arg0);
    }
}

void sub_080A7A88(struct Object2* arg0) {
    s32 r3, r2;
    arg0->flags |= 4;
    if (++arg0->unk9E > 7) {
        arg0->unkAC = sub_0803D368(arg0);
        arg0->unk9E = 0;
        arg0->unkA0 = arg0->unkAC->base.x >> 8;
        arg0->unkA2 = arg0->unkAC->base.y >> 8;
    }
    
    r3 = (arg0->y & ~0xfff);
    r2 = ((arg0->unkA2 << 8) & ~0xfff);

    if (r3 > r2) {
        arg0->yspeed += 0x10;
        if (arg0->yspeed > 0x160) {
            arg0->yspeed = 0x160;
        }
    }
    else if (r3 < r2) {
        arg0->yspeed -= 0x10;
        if (arg0->yspeed < -0x160) {
            arg0->yspeed = -0x160;
        }
    }
    else {
        if (arg0->yspeed < 0) {
            arg0->yspeed += 4;
            if (arg0->yspeed > 0) {
                arg0->yspeed = 0;
            }
        }
        else {
            arg0->yspeed -= 4;
            if (arg0->yspeed < 0) {
                arg0->yspeed = 0;
            }
        }
    }

    r3 = (arg0->x & ~0xfff);
    r2 = ((arg0->unkA0 << 8) & ~0xfff);

    if (r3 < r2) {
        arg0->flags &= ~1;
        goto _080A7BA4;
    }
    else if (r3 > r2) {
        arg0->flags |= 1;
        if (arg0->flags & 1) {
            arg0->xspeed -= 0x10;
            if (arg0->xspeed >= -0x160) {
                if (arg0->xspeed > 0x160) {
                    arg0->xspeed = 0x160;
                }
            }
            else {
                arg0->xspeed = -0x160;
            }
        }
        else {
        _080A7BA4: {
            s32 r0 = (arg0->xspeed += 0x10);
            if (arg0->xspeed <= 0x160) {
                r2 = -0x160;
                if (r0 < r2) {
                    arg0->xspeed = r2;
                }
            }
            else {
                arg0->xspeed = 0x160;
            }
        }
        }
    }
    else {
        if (arg0->xspeed < 0) {
            arg0->xspeed += 4;
            if (arg0->xspeed > 0) {
                arg0->xspeed = 0;
            }
        }
        else {
            arg0->xspeed -= 4;
            if (arg0->xspeed < 0) {
                arg0->xspeed = 0;
            }
        }
    }

    if (++arg0->counter > 0x79) {
        sub_080A8180(arg0);
    }
}

void sub_080A7C0C(struct Object2* arg0) {
    s32 r3, r2;
    arg0->flags |= 4;
    if (++arg0->unk9E > 7) {
        arg0->unkAC = sub_0803D368(arg0);
        arg0->unk9E = 0;
        arg0->unkA0 = arg0->unkAC->base.x >> 8;
        arg0->unkA2 = arg0->unkAC->base.y >> 8;
    }
    
    r3 = (arg0->y & ~0xfff);
    r2 = ((arg0->unkA2 << 8) & ~0xfff);

    if (r3 > r2) {
        arg0->yspeed += 0x20;
        if (arg0->yspeed > 0x1c0) {
            arg0->yspeed = 0x1c0;
        }
    }
    else if (r3 < r2) {
        arg0->yspeed -= 0x20;
        if (arg0->yspeed < -0x1c0) {
            arg0->yspeed = -0x1c0;
        }
    }
    else {
        if (arg0->yspeed < 0) {
            arg0->yspeed += 4;
            if (arg0->yspeed > 0) {
                arg0->yspeed = 0;
            }
        }
        else {
            arg0->yspeed -= 4;
            if (arg0->yspeed < 0) {
                arg0->yspeed = 0;
            }
        }
    }

    r3 = (arg0->x & ~0xfff);
    r2 = ((arg0->unkA0 << 8) & ~0xfff);

    if (r3 < r2) {
        arg0->flags &= ~1;
        goto _080A7BA4;
    }
    else if (r3 > r2) {
        arg0->flags |= 1;
        if (arg0->flags & 1) {
            arg0->xspeed -= 0x20;
            if (arg0->xspeed >= -0x1c0) {
                if (arg0->xspeed > 0x1c0) {
                    arg0->xspeed = 0x1c0;
                }
            }
            else {
                arg0->xspeed = -0x1c0;
            }
        }
        else {
        _080A7BA4: {
            s32 r0 = (arg0->xspeed += 0x20);
            if (arg0->xspeed <= 0x1c0) {
                r2 = -0x1c0;
                if (r0 < r2) {
                    arg0->xspeed = r2;
                }
            }
            else {
                arg0->xspeed = 0x1c0;
            }
        }
        }
    }
    else {
        if (arg0->xspeed < 0) {
            arg0->xspeed += 4;
            if (arg0->xspeed > 0) {
                arg0->xspeed = 0;
            }
        }
        else {
            arg0->xspeed -= 4;
            if (arg0->xspeed < 0) {
                arg0->xspeed = 0;
            }
        }
    }

    if (++arg0->counter > 0xb5) {
        sub_080A8180(arg0);
    }
}

void sub_080A7D90(struct Object2* arg0) {
    arg0->flags |= 4;
    if (gUnk_08353624[(u8)(arg0->unk9F + 1)].unk8 == 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F = 0xff;   
        }
    }
    if (arg0->unk9E == 0) {
        arg0->unk9F++;
        if (gUnk_08353624[arg0->unk9F].unk8 == 0) {
            arg0->unk9F--;
        }
        arg0->unk9E = gUnk_08353624[arg0->unk9F].unk8;
        if (gUnk_08353624[arg0->unk9F].unk9 != 0xff) {
            arg0->unk83 = gUnk_08353624[arg0->unk9F].unk9;
        }
        if (arg0->unk9F != 0) {
            if (gUnk_08353624[arg0->unk9F].unk0 != gUnk_08353624[arg0->unk9F - 1].unk0) {
                arg0->xspeed = gUnk_08353624[arg0->unk9F].unk0;
                if (arg0->flags & 1) {
                    arg0->xspeed = -arg0->xspeed;
                }
            }
            if (gUnk_08353624[arg0->unk9F].unk2 != gUnk_08353624[arg0->unk9F - 1].unk2) {
                arg0->yspeed = gUnk_08353624[arg0->unk9F].unk2;
            }
        }
        else {
            arg0->yspeed = gUnk_08353624[arg0->unk9F].unk2;
            arg0->xspeed = gUnk_08353624[arg0->unk9F].unk0;
            if (arg0->flags & 1) {
                arg0->xspeed = -arg0->xspeed;
            }
        }
    }
    if (arg0->flags & 1) {
        arg0->xspeed -= gUnk_08353624[arg0->unk9F].unk4;
    }
    else {
        arg0->xspeed += gUnk_08353624[arg0->unk9F].unk4;
    }
    arg0->yspeed += gUnk_08353624[arg0->unk9F].unk6;
    arg0->unk9E--;
    if (gUnk_08353624[(u8)(arg0->unk9F + 1)].unk8 == 0 && arg0->unk9E == 0) {
        if (++arg0->counter > 5) {
            arg0->flags |= 0x1000;
            sub_08073D2C(arg0);
        }
    }
}

void sub_080A7F64(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A8048);
    switch (arg0->unkB0->unkE) {
    default:
    case 1:
        arg0->x = arg0->unkAC->base.x - 0x3000;
        arg0->y = arg0->unkAC->base.y - 0xb000;
        arg0->yspeed = 0xfd00;
        break;
    case 2:
        arg0->x = arg0->unkAC->base.x + 0x5000;
        arg0->y = arg0->unkAC->base.y - 0xb000;
        arg0->yspeed = 0xfd00;
        break;
    case 3:
        arg0->x = arg0->unkAC->base.x - 0x3000;
        arg0->y = arg0->unkAC->base.y + 0xb000;
        arg0->yspeed = 0x300;
        break;
    case 4:
        arg0->x = arg0->unkAC->base.x + 0x5000;
        arg0->y = arg0->unkAC->base.y + 0xb000;
        arg0->yspeed = 0x300;
        break;
    }
    arg0->flags &= ~0x600;
    arg0->flags |= 0x2000000;
    if (arg0->x > arg0->unkAC->base.x) {
        arg0->flags |= 1;
    }
    else {
        arg0->flags &= ~1;
    }
}
