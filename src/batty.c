#include "batty.h"
#include "kirby.h"
#include "functions.h"
#include "object.h"
#include "task.h"

const struct Unk_02021590 gUnk_08354960[] = {
    { 0x333, 0, 0 },
    { 0x333, 1, 0 },
    { 0x333, 2, 0 },
    { 0x333, 3, 0 },
    { 0x333, 4, 0 },
    { 0x333, 5, 0 },
};

static const struct Unk_08353510 gUnk_08354978[13] = {
    { 0x40, 0x100, 0x0, 0x0, 0x10, 0x0 },
    { 0xa0, 0xa0, 0x0, 0x0, 0x10, 0x0 },
    { 0x100, 0x40, 0x0, 0x0, 0x10, 0x0 },
    { 0x100, -0x40, 0x0, 0x0, 0x10, 0x0 },
    { 0xa0, -0xa0, 0x0, 0x0, 0x10, 0x0 },
    { 0x40, -0x100, 0x0, 0x0, 0x10, 0x0 },
    { -0x40, -0x100, 0x0, 0x0, 0x10, 0x0 },
    { -0xa0, -0xa0, 0x0, 0x0, 0x10, 0x0 },
    { -0x100, -0x40, 0x0, 0x0, 0x10, 0x0 },
    { -0x100, 0x40, 0x0, 0x0, 0x10, 0x0 },
    { -0xa0, 0xa0, 0x0, 0x0, 0x10, 0x0 },
    { -0x40, 0x100, 0x0, 0x0, 0x10, 0x0 },
    { 0x0, 0x0, 0x0, 0x0, 0x0, 0x0 },
}; 

static const s16 gUnk_08354A14[] = { 
    0x100, 0x0, 
    0x0, 0x0, 
    0x0, 0x0, 
    0x0, 0x0, 
    -0x200, -0x180, 
    0x0, 0x0, 
    0x0, 0x0, 
    0x0, 0x0, 
    0x100, 0x300,
    0x0, 0x0, 
    0x0, 0x0, 
    0x0, 0x0, 
    0x0, -0x180, 
    0x0, 0x0, 
    0x0, 0x0, 
    0x0, 0x0, 
    0x0, 0x0, 
};

static void sub_080BCCB0(struct Object2*);
static void sub_080BCF24(struct Object2*);
static void sub_080BD038(struct Object2*);
static void sub_080BD2B4(struct Object2*);
static void sub_080BD418(struct Object2*);
static void sub_080BD458(struct Object2*);
static void sub_080BD48C(struct Object2*);
static void sub_080BD4D4(struct Object2*);
static void sub_080BD524(struct Object2*);

void* CreateBatty(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 10);
    ObjectInitSprite(obj);
    if (obj->object->subtype1 == 2) {
        sub_080BD458(obj);
    }
    else {
        gUnk_08351648[obj->type].unk10(obj);
    }
    obj->unk9E = 0;
    obj->unk7C = NULL;
    return obj;
}

static void sub_080BCCB0(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (gUnk_08354978[(u8)(arg0->unk9F + 1)].unk8 == 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F = 0xff;
        }
    }
    if (arg0->unk9E == 0) {
        arg0->unk9F++;
        if (gUnk_08354978[arg0->unk9F].unk8 == 0) {
            arg0->unk9F--;
        }
        arg0->unk9E = gUnk_08354978[arg0->unk9F].unk8;
        if (gUnk_08354978[arg0->unk9F].unk9 != 0xff) {
            arg0->unk83 = gUnk_08354978[arg0->unk9F].unk9;
        }
        if (arg0->unk9F != 0) {
            if (gUnk_08354978[arg0->unk9F].unk0 != gUnk_08354978[arg0->unk9F - 1].unk0) {
                arg0->base.xspeed = gUnk_08354978[arg0->unk9F].unk0; 
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
            if (gUnk_08354978[arg0->unk9F].unk2 != gUnk_08354978[arg0->unk9F - 1].unk2) {
                arg0->base.yspeed = gUnk_08354978[arg0->unk9F].unk2;
            }
        }
        else {
            arg0->base.yspeed = gUnk_08354978[arg0->unk9F].unk2;
            arg0->base.xspeed = gUnk_08354978[arg0->unk9F].unk0;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed = -arg0->base.xspeed;
            }
        }
    }
    if (arg0->base.flags & 1) {
        arg0->base.xspeed -= gUnk_08354978[arg0->unk9F].unk4;
    }
    else {
        arg0->base.xspeed += gUnk_08354978[arg0->unk9F].unk4;
    }
    arg0->base.yspeed += gUnk_08354978[arg0->unk9F].unk6;
    if (--arg0->unk9E == 0xf) {
        switch (arg0->object->unk14) {
        case 0:
            arg0->base.xspeed = 0;
            break;
        case 1:
            arg0->base.xspeed >>= 1;
            break;
        }
        switch (arg0->object->unk12) {
        case 0:
            arg0->base.yspeed = 0;
            break;
        case 1:
            arg0->base.yspeed >>= 1;
            break;
        }
    }
    arg0->base.xspeed += gUnk_08354A14[arg0->unk9E * 2];
    arg0->base.yspeed += gUnk_08354A14[arg0->unk9E * 2 + 1];
    if (++arg0->base.counter > 0x14) {
        if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x3bff) {
            if (abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0x3bff) {
                sub_080BD418(arg0);
                return;
            }
        }
        arg0->kirby3 = sub_0803D368(&arg0->base);
        arg0->base.counter = 0;
    }
}

static void sub_080BCF24(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (arg0->unk9F == 0) {
        s32 dx = (arg0->kirby3->base.base.base.x - arg0->base.x) >> 8;
        s32 dy = (arg0->base.y - arg0->kirby3->base.base.base.y) >> 8;
        u16 dist = Sqrt((dx * dx + dy * dy) * 256);
        u32 x = (dx * 256 / dist) * 256;
        u32 y = (dy * 256 / dist) * 256;
        if (arg0->subtype != 0) {
            s32 xsp, ysp;
            xsp = x * 26;
            arg0->base.xspeed = xsp >> 8;
            ysp = y * 26;
            arg0->base.yspeed = ysp >> 8;
        }
        else {
            arg0->base.xspeed = ((dx * 256 / dist) * 2048 + x) / 128;
            arg0->base.yspeed = ((dy * 256 / dist) * 2048 + y) / 128;
        }
        if (arg0->base.x > arg0->kirby3->base.base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
    }
    arg0->base.xspeed += gUnk_08354A14[arg0->unk9F * 2];
    arg0->base.yspeed += gUnk_08354A14[arg0->unk9F * 2 + 1];
    arg0->unk9F = (arg0->unk9F + 1) & 0xf;
    if (--arg0->base.counter == 0) {
        sub_080BD48C(arg0);
    }
}

static void sub_080BD038(struct Object2* arg0) {
    arg0->base.flags |= 4;
    if (++arg0->unk9E > 0xfe) {
        arg0->kirby3 = sub_0803D368(&arg0->base);
        arg0->unk9E = 0;
        arg0->unkA0 = arg0->kirby3->base.base.base.x >> 8;
        arg0->unkA2 = arg0->kirby3->base.base.base.y >> 8;
    }
    if ((arg0->base.y & ~0x3ff) > ((arg0->unkA2 * 0x100) & ~0x3ff)) {
        arg0->base.yspeed += 0x40;
        if (arg0->base.yspeed > 0x180) {
            arg0->base.yspeed = 0x180;
        }
    }
    else {
        if ((arg0->base.y & ~0x3ff) < ((arg0->unkA2 * 0x100) & ~0x3ff)) {
            arg0->base.yspeed -= 0x40;
            if (arg0->base.yspeed < -0x180) {
                arg0->base.yspeed = -0x180;
            }
        }
        else {
            if (arg0->base.yspeed < 0) {
                arg0->base.yspeed += 0x80;
                if (arg0->base.yspeed > 0) {
                    arg0->base.yspeed = 0;
                }
            }
            else {
                arg0->base.yspeed -= 0x80;
                if (arg0->base.yspeed < 0) {
                    arg0->base.yspeed = 0;
                }
            }
        }
    }
    if ((arg0->base.x & ~0x3ff) < ((arg0->unkA0 * 0x100) & ~0x3ff)) {
        arg0->base.flags &= ~1;
        arg0->base.xspeed += 0x40;
        if (arg0->base.xspeed > 0x180) {
            arg0->base.xspeed = 0x180;
        }
        else {
            if (arg0->base.xspeed < -0x180) {
                arg0->base.xspeed = -0x180;
            }
        }
    }
    else {
        if ((arg0->base.x & ~0x3ff) > ((arg0->unkA0 * 0x100) & ~0x3ff)) {
            arg0->base.flags |= 1;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed -= 0x40;
                if (arg0->base.xspeed >= -0x180) {
                    if (arg0->base.xspeed > 0x180) {
                        arg0->base.xspeed = 0x180;
                    }
                }
                else {
                    arg0->base.xspeed = -0x180;
                }
            }
            else {
                arg0->base.xspeed += 0x40;
                if (arg0->base.xspeed > 0x180) {
                    arg0->base.xspeed = 0x180;
                }
                else {
                    if (arg0->base.xspeed < -0x180) {
                        arg0->base.xspeed = -0x180;
                    }
                }
            }
        }
        else {
            if (arg0->base.xspeed < 0) {
                arg0->base.xspeed += 0x80;
                if (arg0->base.xspeed > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                arg0->base.xspeed -= 0x80;
                if (arg0->base.xspeed < 0) {
                    arg0->base.xspeed = 0;
                }
            }
        }
    }
    arg0->unk9E = 0;
    if (abs((arg0->unkA0 * 0x100) - arg0->base.x) <= 0x3ff && abs((arg0->unkA2 * 0x100) - arg0->base.y) <= 0x3ff) {
        if (arg0->object->subtype1 == 2) {
            sub_080BD4D4(arg0);
        }
        else {
            arg0->base.xspeed = 0;
            arg0->base.yspeed = 0;
            switch (arg0->object->subtype1) {
            case 1:
            case 2:
                sub_080BD418(arg0);
                break;
            default:
                ObjectSetFunc(arg0, 0, sub_080BCCB0);
                arg0->base.flags |= 0x40;
                arg0->base.flags |= 0x100;
                arg0->base.flags &= ~0x20;
                break;
            }
        }
    }
    else {
        arg0->base.xspeed += gUnk_08354A14[arg0->unk9F * 2];
        arg0->base.yspeed += gUnk_08354A14[arg0->unk9F * 2 + 1];
        arg0->unk9F = (arg0->unk9F + 1) & 0xf;
    }
}

static void sub_080BD2B4(struct Object2* arg0) {
    if (arg0->unk83 == 2) {
        if (++arg0->base.counter > 0x14) {
            if (arg0->object->unk1A != 0 || arg0->object->unk1C != 0 || arg0->object->unk1E != 0 || arg0->object->unk20 != 0) {
                if (Macro_08039430_1(&arg0->kirby3->base.base.base, arg0) != 0) {
                    arg0->unk83 = 3;
                }
            }
            else {
                if (abs(arg0->kirby3->base.base.base.x - arg0->base.x) <= 0x3bff && abs(arg0->kirby3->base.base.base.y - arg0->base.y) <= 0x3bff) {
                    arg0->unk83 = 3;                
                }
            }
            arg0->kirby3 = sub_0803D368(&arg0->base);
            arg0->base.counter = 0;
        }
    }
    else {
        if (arg0->base.flags & 2) {
            ObjectSetFunc(arg0, 0, sub_080BCF24);
            arg0->base.flags |= 0x40;
            arg0->base.flags |= 0x100;
            arg0->base.flags &= ~0x20;
            arg0->unk9F = 0;
            if (arg0->object->unk18 == 0) {
                arg0->base.counter = 0xf0;
            }
            else {
                arg0->base.counter = arg0->object->unk18;
            }
        }
    }
}

void sub_080BD3CC(struct Object2* arg0) {
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    switch (arg0->object->subtype1) {
    case 1:
    case 2:
        sub_080BD418(arg0);
        break;
    default:
        ObjectSetFunc(arg0, 0, sub_080BCCB0);
        arg0->base.flags |= 0x40;
        arg0->base.flags |= 0x100;
        arg0->base.flags &= ~0x20;
        break;
    }
}

static void sub_080BD418(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080BCF24);
    arg0->base.flags |= 0x40;
    arg0->base.flags |= 0x100;
    arg0->base.flags &= ~0x20;
    arg0->unk9F = 0;
    if (arg0->object->unk18 == 0) {
        arg0->base.counter = 0xf0;
    }
    else {
        arg0->base.counter = arg0->object->unk18;
    }
}

static void sub_080BD458(struct Object2* arg0) {
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    ObjectSetFunc(arg0, 2, sub_080BD2B4);
    arg0->base.flags |= 0x40;
    arg0->base.flags &= ~0x20;
    arg0->base.flags |= 0x100;
    
}

static void sub_080BD48C(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080BD038);
    arg0->base.flags |= 0x40;
    arg0->base.flags &= ~0x20;
    arg0->base.flags |= 0x100;
    arg0->unk9F = 0;
    arg0->unkA0 = arg0->object->x;
    arg0->unkA2 = arg0->object->y;
}

static void sub_080BD4D4(struct Object2* arg0) {
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    ObjectSetFunc(arg0, 1, sub_080BD524);
    arg0->base.x = arg0->unkA0 * 256;
    arg0->base.y = arg0->unkA2 * 256;
    arg0->base.flags |= 0x40;
    arg0->base.flags |= 0x100;
    arg0->base.flags &= ~0x20;
    arg0->base.flags &= ~0x2;
}

static void sub_080BD524(struct Object2* arg0) {
    if (arg0->base.flags & 2) {
        sub_080BD458(arg0);
    }
}
