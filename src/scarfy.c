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