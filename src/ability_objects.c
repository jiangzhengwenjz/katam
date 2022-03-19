#include "ability_objects.h"
#include "code_0800A868.h"
#include "functions.h"
#include "kirby.h"

static void sub_080A9258(struct Object2*);
static void sub_080A98F4(struct Object2*);
static void sub_080A9BB4(struct Object2*);
static void sub_080A9CEC(struct Object2*);
static void sub_080A9FBC(struct Object2*, s16, s16);
static void sub_080AA108(void);
static void sub_080AA4EC(struct Object2*);
static void sub_080AA588(struct Object2*);
static void sub_080AA618(struct Object2*);
static void sub_080AA6F8(struct Object2*);
static void sub_080AA91C(struct Object2*);
static void sub_080AA94C(struct Object2*);
static void sub_080AA960(struct Object2*);
static void sub_080AAA14(struct Task*);
static void sub_080AAA64(struct Object2*);
static void sub_080AAA94(struct Object2*);

static const u16 gUnk_083536EC[] = { 0xc0, 0x100, 0x160, 0x1c0, };
static const u16 gUnk_083536F4[] = { 0x80, -0x20, -0x80, 0x20, };

static const u8 gUnk_083536FC[][16] = {
    { 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, },
    { 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x01, 0x01, 0x01, 0x00, 0x01, 0x00, 0x01, 0x00, 0x01, },
    { 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x00, 0x02, 0x01, 0x02, 0x00, 0x02, 0x00, 0x01, 0x02, 0x02, },
    { 0x03, 0x03, 0x00, 0x00, 0x01, 0x01, 0x00, 0x02, 0x01, 0x02, 0x03, 0x02, 0x00, 0x01, 0x02, 0x03, },
    { 0x00, 0x03, 0x03, 0x00, 0x01, 0x01, 0x00, 0x02, 0x01, 0x04, 0x03, 0x02, 0x04, 0x02, 0x04, 0x03, },
    { 0x00, 0x05, 0x03, 0x00, 0x05, 0x01, 0x00, 0x02, 0x01, 0x04, 0x03, 0x02, 0x04, 0x03, 0x04, 0x05, },
    { 0x00, 0x05, 0x03, 0x00, 0x05, 0x06, 0x01, 0x02, 0x01, 0x04, 0x03, 0x02, 0x04, 0x06, 0x03, 0x05, },
    { 0x00, 0x05, 0x03, 0x00, 0x05, 0x06, 0x01, 0x07, 0x01, 0x04, 0x03, 0x02, 0x04, 0x06, 0x02, 0x07, },
    { 0x00, 0x05, 0x03, 0x08, 0x05, 0x06, 0x01, 0x07, 0x01, 0x04, 0x00, 0x02, 0x04, 0x06, 0x02, 0x08, },
    { 0x00, 0x05, 0x03, 0x08, 0x04, 0x06, 0x01, 0x07, 0x01, 0x09, 0x00, 0x02, 0x04, 0x06, 0x02, 0x09, },
    { 0x00, 0x05, 0x03, 0x08, 0x04, 0x06, 0x01, 0x07, 0x01, 0x09, 0x0a, 0x02, 0x04, 0x06, 0x02, 0x09, },
    { 0x00, 0x05, 0x03, 0x08, 0x04, 0x06, 0x01, 0x07, 0x01, 0x09, 0x0a, 0x02, 0x0b, 0x06, 0x02, 0x09, },
    { 0x00, 0x05, 0x03, 0x08, 0x04, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0a, 0x02, 0x0b, 0x06, 0x02, 0x09, },
    { 0x00, 0x05, 0x03, 0x08, 0x04, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0a, 0x02, 0x0b, 0x0d, 0x02, 0x09, },
    { 0x00, 0x05, 0x03, 0x08, 0x0e, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0a, 0x02, 0x04, 0x0d, 0x0b, 0x09, },
    { 0x00, 0x05, 0x03, 0x08, 0x0e, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0a, 0x02, 0x04, 0x0d, 0x0b, 0x09, },
    { 0x00, 0x10, 0x03, 0x08, 0x0e, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x02, 0x04, 0x0d, 0x0b, 0x09, },
    { 0x00, 0x10, 0x03, 0x08, 0x0e, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x02, 0x04, 0x11, 0x0e, 0x09, },
    { 0x00, 0x0d, 0x03, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x02, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x0d, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x02, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x02, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x02, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x02, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x02, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x18, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x18, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x18, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x18, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x18, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x18, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x18, 0x04, 0x12, 0x0e, 0x09, },
    { 0x00, 0x05, 0x13, 0x08, 0x10, 0x06, 0x0c, 0x07, 0x01, 0x09, 0x0f, 0x18, 0x04, 0x12, 0x0e, 0x09, },
};

static const u8 gUnk_083538FC[] = { 0x07, 0x03, 0x0d, 0x01, 0x08, 0x14, 0x09, 0x10, };
static const u8 gUnk_08353904[] = { 0x04, 0x02, 0x0f, 0x19, 0x16, 0x0a, 0x11, };
static const u8 gUnk_0835390B[] = { 0x05 };
static const u8 gUnk_0835390C[] = { 0x12, 0x06, 0x13, };
static const u8 gUnk_0835390F[] = {
    0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x01, 0x02, 0x03, 0x03, 0x03, 
};
static const u8 gUnk_08353922[] = { 0x00, 0x08, 0x0f, 0x10, 0x00, 0x00, };

void *CreateAbilityStar(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, sub_080AAA14);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x4000;
    obj->base.flags |= 0x2000000;
    obj->base.unk5C = ~0x27;
    obj->base.flags |= 0x100000;
    obj->base.unk68 = 0;
    obj->base.flags &= ~0x10000000;
    obj->base.unkC |= 1;
    obj->base.flags |= 0x400000;
    obj->unk85 = 0;
    if (obj->base.unk60__42 > 0x3d3) {
        obj->base.flags &= ~0x2000000;
    }
    sub_0803E2B0(&obj->base, -8, -8, 8, 8);
    sub_0803E308(&obj->base, -4, -4, 4, 4);
    if (obj->object->subtype1 == 0x1a) {
        obj->base.flags &= ~0x4000;
        gUnk_0203AD34 = 1;
    }
    ObjectInitSprite(obj);
    obj->base.unk10.unk14 = 0x580;
    sub_080AA91C(obj);
    return obj;
}

static void sub_080A9258(struct Object2* arg0) {
    bool32 sp = FALSE;
    struct Kirby* sp4 = arg0->base.parent;
    arg0->base.flags |= 4;
    if (sp4->base.base.base.flags & 0x1000000 || arg0->base.y >= gCurLevelInfo[arg0->base.unk56].unk54 || arg0->base.unk62 & 1) {
        sub_0808AE30(&arg0->base, 0, 0x292, 0);
        arg0->base.flags |= 0x1000;
        arg0->base.flags |= 0x200;
        PlaySfx(&arg0->base, 0x7e);
    }
    else {
        if ((arg0->base.x + arg0->base.unk3E) > gCurLevelInfo[arg0->base.unk56].unk74) {
            arg0->base.x = gCurLevelInfo[arg0->base.unk56].unk74 - arg0->base.unk3E;
            if (arg0->base.flags & 1) {
                PlaySfx(&arg0->base, 0x82);
            }
            else {
                sp = TRUE;
            }
            arg0->base.flags &= ~1;
        }
        if ((arg0->base.x + arg0->base.unk3C) < gCurLevelInfo[arg0->base.unk56].unk6C) {
            arg0->base.x = gCurLevelInfo[arg0->base.unk56].unk6C - arg0->base.unk3C;
            if (!(arg0->base.flags & 1)) {
                PlaySfx(&arg0->base, 0x82);
            }
            else {
                sp = TRUE;
            }
            arg0->base.flags |= 1;
        }
        if ((arg0->base.y + arg0->base.unk3D) < (gCurLevelInfo[arg0->base.unk56].unk70 + 0x800)) {
            s32 temp = arg0->base.unk3D - 0x800;
            arg0->base.y = gCurLevelInfo[arg0->base.unk56].unk70 - temp;
            if (arg0->base.yspeed >= 0) {
                PlaySfx(&arg0->base, 0x82);
            }
            else {
                if (arg0->base.unk62 & 4) {
                    sub_0808AE30(&arg0->base, 0, 0x292, 0);
                    arg0->base.flags |= 0x1000;
                    arg0->base.flags |= 0x200;
                    PlaySfx(&arg0->base, 0x7e);
                    return;
                }
            }
            arg0->base.yspeed = 0;
        }
        if (arg0->base.unk62 & 8) {
            if (arg0->unk85 & 8) {
                arg0->base.unk62 = 0;
            }
        }
        if (arg0->base.unk62 != 0) {
            arg0->unk85 = 0;
            PlaySfx(&arg0->base, 0x82);
            if (arg0->base.unk62 & 4) {
                arg0->base.flags |= 0x20;
                arg0->base.yspeed = 0x300;
            }
            if (arg0->base.unk62 & 8) {
                arg0->unk85 |= 8;
                arg0->base.yspeed = 0;
            }
            if (arg0->base.unk62 & 2) {
                arg0->base.flags ^= 1;
                if (sp) {
                    sub_0808AE30(&arg0->base, 0, 0x292, 0);
                    arg0->base.flags |= 0x1000;
                    arg0->base.flags |= 0x200;
                    PlaySfx(&arg0->base, 0x7e);
                    return;
                }
            }
        }
        if (arg0->base.flags & 1) {
            arg0->base.xspeed = gUnk_083536EC[arg0->unk9E];
        }
        else {
            arg0->base.xspeed = -gUnk_083536EC[arg0->unk9E];
        }
        if (arg0->base.unk58 & 2) {
            arg0->unk78 = sub_080A98F4;
        }
        if (arg0->unk84 != 0x1a) {
            if ((sp4->unk103 == 0 || sp4->unk103 == 0x1a)) {
                if (++arg0->base.counter <= 0x168) {
                    if (!(arg0->base.unk58 & 0x2000) || arg0->base.counter <= 0x30) {
                        return;
                    }
                }
            }
            sub_0808AE30(&arg0->base, 0, 0x292, 0);
            arg0->base.flags |= 0x1000;
            arg0->base.flags |= 0x200;
            PlaySfx(&arg0->base, 0x7e);
        }
    }
}

static void sub_080A98F4(struct Object2* arg0) {
    struct Kirby* parent = arg0->base.parent;
    if (parent->base.base.base.flags & 0x1000000) {
        sub_0808AE30(&arg0->base, 0, 0x292, 0);
        arg0->base.flags |= 0x1000;
        arg0->base.flags |= 0x200;
        PlaySfx(&arg0->base, 0x7e);
    }
    else {
        arg0->base.flags |= 4;
        arg0->base.xspeed = 0;
        arg0->base.yspeed = 0x60;
        if (arg0->unk85 != 0) {
            arg0->base.yspeed = gUnk_083536F4[arg0->base.counter >> 3 & 3];
        }
        if (!(arg0->base.unk58 & 2)) {
            arg0->unk85 = 1;
            arg0->base.unkC |= 4;
        }
        ++arg0->base.counter;
        if (arg0->unk84 != 0x1a) {
            if (arg0->base.y < gCurLevelInfo[arg0->base.unk56].unk54) {
                if (parent->unk103 == 0) {
                    if (arg0->base.counter <= 0x168 && !(arg0->base.unk62 & 8)) {
                        if (!(arg0->base.unk58 & 0x2000) || arg0->base.counter <= 0x30) {
                            return;
                        }
                    }
                }
            }
            sub_0808AE30(&arg0->base, 0, 0x292, 0);
            arg0->base.flags |= 0x1000;
            arg0->base.flags |= 0x200;
            PlaySfx(&arg0->base, 0x7e);
        }
    }
}

void *CreateUnknown83(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x40;
    obj->base.flags |= 0x400;
    obj->base.flags |= 0x100;
    obj->base.flags |= 0x200;
    obj->base.flags |= 0x8000;
    obj->base.flags |= 0x800;
    obj->base.flags |= 0x8;
    obj->base.flags &= ~0x10000000;
    obj->base.unk68 = 0;
    obj->base.unkC |= 1;
    obj->base.unkC |= 4;
    ObjectInitSprite(obj);
    sub_080AA94C(obj);
    return obj;
}

static void sub_080A9BB4(struct Object2* arg0) {
    u8 i;
    for (i = 0; i < gUnk_0203AD44; i++) {
        struct Kirby* kirby = &gKirbys[i];
        if (kirby->base.base.base.unk60__42 == arg0->base.unk60__42) {
            kirby->unk108 = arg0->object->unk1A;
            kirby->unk10A = arg0->object->unk1C;
            kirby->unk106 = arg0->object->unk1E;
        }
    }
}

void *CreateDustCloud(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x40;
    obj->base.flags |= 0x400;
    obj->base.flags |= 0x100;
    obj->base.flags |= 0x200;
    obj->base.flags |= 0x2000000;
    obj->base.flags |= 0x8000;
    obj->base.flags |= 0x800;
    obj->base.flags |= 0x8;
    obj->base.flags &= ~0x10000000;
    obj->base.unkC |= 1;
    obj->base.unkC |= 4;
    obj->base.unk68 = 0;
    ObjectInitSprite(obj);
    if (obj->object->subtype1 & 1) {
        obj->unk85 = obj->object->unk20 >> 4;
    }
    else {
        obj->unk85 = obj->object->unk1E >> 4;
    }
    sub_080AA960(obj);
    return obj;
}

static void sub_080A9CEC(struct Object2* arg0) {
    s16 sVar3;
    u32 uVar4;
    s16 iVar5, iVar5_2;
    s16 sVar6;
    struct Kirby* kirby;

    if (gKirbys[gUnk_0203AD3C].base.base.base.unk60__42 == arg0->base.unk60__42) {
        if ((--arg0->base.counter <= 0xb) && !(arg0->base.counter & 1)) {
            if (arg0->base.counter == 0) {
                arg0->base.counter = 0x1d;
            }
            kirby = &gKirbys[gUnk_0203AD3C];
            switch (arg0->object->subtype1) {
            case 0:
                iVar5 = arg0->object->unk20 + ((arg0->base.y >> 8) + arg0->object->unk1C);
                if (iVar5 > (gCurLevelInfo[kirby->base.base.base.unk56].unk10 >> 8) + 0xa0) {
                    iVar5 = (gCurLevelInfo[kirby->base.base.base.unk56].unk10 >> 8) + 0xa0;
                }
#ifndef NONMATCHING
                asm("":::"r4");
#endif
                sVar6 = iVar5 + ((gUnk_0203AD40 + (gRngVal >> 16)) & 0x1f);
                sVar3 = (arg0->base.x >> 8) + arg0->object->unk1A;
                if (arg0->unk85 > 0x1d) {
                    if (sVar3 < (gCurLevelInfo[kirby->base.base.base.unk56].unkC >> 8)) {
                        sVar3 = arg0->object->unk1E + sVar3 + -0xf0;
                    }
                    uVar4 = 0x1d;
                }
                else {
                    uVar4 = arg0->unk85;
                }
                sVar3 = sVar3 + gUnk_083536FC[uVar4][(gUnk_0203AD40 + (gRngVal >> 16)) & 0xf] * 0x10;
                sVar3 += ((gUnk_0203AD40 + (gRngVal >> 16)) & 7);
                break;
            case 1:
                iVar5_2 = (arg0->base.x >> 8) + arg0->object->unk1A;
                if (iVar5_2 < (gCurLevelInfo[kirby->base.base.base.unk56].unkC >> 8)) {
                    iVar5_2 = (gCurLevelInfo[kirby->base.base.base.unk56].unkC >> 8);
                }
                sVar3 = iVar5_2 - ((gUnk_0203AD40 + (gRngVal >> 16)) & 0x1f);
                sVar6 = (arg0->base.y >> 8) + arg0->object->unk1C;
                if (arg0->unk85 > 0x13) {
                    if (sVar6 < (gCurLevelInfo[kirby->base.base.base.unk56].unk10 >> 8)) {
                        sVar6 = arg0->object->unk20 + sVar6 + -0xa0;
                    }
                    uVar4 = 0x13;
                }
                else {
                    uVar4 = arg0->unk85;
                }
                sVar6 = sVar6 + gUnk_083536FC[uVar4][(gUnk_0203AD40 + (gRngVal >> 16)) & 0xf] * 0x10;
                sVar6 += (gUnk_0203AD40 + (gRngVal >> 16)) & 7;
                break;
            case 2:
                iVar5 = (arg0->base.y >> 8) + arg0->object->unk1C;
                if (iVar5 < (gCurLevelInfo[kirby->base.base.base.unk56].unk10 >> 8)) {
                    iVar5 = (gCurLevelInfo[kirby->base.base.base.unk56].unk10 >> 8);
                }
                sVar6 = iVar5 - ((gUnk_0203AD40 + (gRngVal >> 16)) & 0x1f);
                sVar3 = (arg0->base.x >> 8) + arg0->object->unk1A;
                if (arg0->unk85 > 0x1d) {
                    if (sVar3 < (gCurLevelInfo[kirby->base.base.base.unk56].unkC >> 8)) {
                        sVar3 = arg0->object->unk1E + sVar3 + -0xf0;
                    }
                    uVar4 = 0x1d;
                }
                else {
                    uVar4 = arg0->unk85;
                }
                sVar3 = sVar3 + gUnk_083536FC[uVar4][(gUnk_0203AD40 + (gRngVal >> 16)) & 0xf] * 0x10;
                sVar3 += ((gUnk_0203AD40 + (gRngVal >> 16)) & 7);
                break;
            default:
                iVar5_2 = ((arg0->base.x >> 8) + arg0->object->unk1A) + arg0->object->unk1E;
                if (iVar5_2 > (gCurLevelInfo[kirby->base.base.base.unk56].unkC >> 8) + 0xf0) {
                    iVar5_2 = (gCurLevelInfo[kirby->base.base.base.unk56].unkC >> 8) + 0xf0;
                }
                sVar3 = iVar5_2 + ((gUnk_0203AD40 + (gRngVal >> 16)) & 0x1f);
                sVar6 = (arg0->base.y >> 8) + arg0->object->unk1C;
                if (arg0->unk85 > 0x13) {
                    if (sVar6 < (gCurLevelInfo[kirby->base.base.base.unk56].unk10 >> 8)) {
                        sVar6 = arg0->object->unk20 + sVar6 + -0xa0;
                    }
                    uVar4 = 0x13;
                }
                else {
                    uVar4 = arg0->unk85;
                }
                sVar6 = sVar6 + gUnk_083536FC[uVar4][(gUnk_0203AD40 + (gRngVal >> 16)) & 0xf] * 0x10;
                sVar6 += (gUnk_0203AD40 + (gRngVal >> 16)) & 7;
                break;
            }
            sub_080A9FBC(arg0, sVar3, sVar6);
        }
    }
}

static void sub_080A9FBC(struct Object2* arg0, s16 arg1, s16 arg2) {
    s16 r2;
    struct Object4 *obj, *obj2;
    struct Task *task = TaskCreate(sub_080AA108, sizeof(struct Object4), 0x3500, 0x10, sub_0803DCCC);
    obj = TaskGetStructPtr(task, obj2);
    sub_0803E3B0(obj);
    obj->unk0 = 3;
    obj->unk34 = arg0->base.x;
    obj->unk38 = arg0->base.y;
    obj->unk44 = arg0;
    obj->unk60__42 = arg0->base.unk60__42;
    obj->flags |= 0x4000;
    obj->unk34 = arg1 * 256;
    obj->unk38 = arg2 * 256;
    switch (arg0->subtype) {
    case 0:
        r2 = 0x600;
        break;
    case 1:
        r2 = 0x800;
        break;
    default:
        r2 = 0xa00;
        break;
    }
    switch (arg0->object->subtype1) {
    case 0:
        obj->unk3E = r2;
        obj->unk4 = (arg0->base.y >> 8) + arg0->object->unk1C;
        break;
    case 1:
        obj->unk3C = r2;
        obj->unk4 = (arg0->base.x >> 8) + arg0->object->unk1A + arg0->object->unk1E;
        break;
    case 2:
        obj->unk3E = -r2;
        obj->unk4 = (arg0->base.y >> 8) + arg0->object->unk1C + arg0->object->unk20;
        break;
    default:
        obj->unk3C = -r2;
        obj->unk4 = (arg0->base.x >> 8) + arg0->object->unk1A;
        break;
    }
    if (gUnk_0203AD40 & 1) {
        sub_080709F8(obj, &obj->unkC, 0xd, 0x2c2, 0, 0xa);
    }
    else {
        sub_080709F8(obj, &obj->unkC, 0xd, 0x2c2, 1, 0xa);
    }
}

static void sub_080AA108(void) {
    struct Sprite sprite, *sprite2;
    struct Object4 *obj_2, *obj = TaskGetStructPtr(gCurTask, obj_2);
    struct Object2 *obj2 = obj->unk44;
    struct Kirby *kirby = &gKirbys[gUnk_0203AD3C];
    if (obj->flags & 0x1000) {
        TaskDestroy(gCurTask);
    }
    else {
        if (obj2->base.flags & 0x1000) {
            obj->flags |= 0x1000;
        }
        else {
            if (obj2) {
                if (Macro_0810B1F4(&obj2->base)) {
                    if (!(obj->flags & 0x2000)) {
                        sub_0803DBC8(obj);
                        return;
                    }
                }
            }
            else {
                KirbySomething(obj);
            }
            obj->flags |= 4;
            if (obj->unk34 >= gCurLevelInfo[kirby->base.base.base.unk56].unkC - 0x1c00
                && obj->unk34 <= gCurLevelInfo[kirby->base.base.base.unk56].unkC + 0x10c00
                && obj->unk38 >= gCurLevelInfo[kirby->base.base.base.unk56].unk10 - 0x1c00
                && obj->unk38 <= gCurLevelInfo[kirby->base.base.base.unk56].unk10 + 0xbc00) {
                switch (obj2->object->subtype1) {
                case 0:
                    if ((obj->unk38 >> 8) < obj->unk4) {
                        obj->flags |= 0x1000;
                        return;
                    }
                    break;
                case 1:
                    if ((obj->unk34 >> 8) > obj->unk4) {
                        obj->flags |= 0x1000;
                        return;
                    }
                    break;
                case 2:
                    if ((obj->unk38 >> 8) > obj->unk4) {
                        obj->flags |= 0x1000;
                        return;
                    }
                    break;
                default:
                    if ((obj->unk34 >> 8) < obj->unk4) {
                        goto lab;
                    }
                    break;
                }
            }
            else {
            lab:
                obj->flags |= 0x1000;
                return;
            }
            Macro_08107BA8_4(obj, &obj->unkC, &sprite, 13, &obj->unkC);
            if (!(obj->flags & 0x800)) {
                obj->unk34 += obj->unk3C;
                obj->unk38 -= obj->unk3E;
            }
            sub_0806FAC8(obj);
        }
    }
}

void *CreateAbilityStatue(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.unk68 &= ~7;
    obj->base.unk5C |= ~7;
    obj->base.unk5C &= ~0x80;
    obj->base.unkC |= 1;
    obj->base.unkC |= 4;
    obj->base.flags |= 0x200000;
    obj->base.flags |= 0x10000;
    obj->base.flags |= 0x800;
    obj->base.flags |= 0x8000;
    obj->base.flags |= 0x40;
    obj->base.flags |= 0x100;
    obj->base.flags |= 0x400000;
    sub_0803E2B0(&obj->base, -4, -4, 4, 8);
    sub_0803E308(&obj->base, -4, -4, 4, 8);
    ObjectInitSprite(obj);
    obj->base.unk10.unk14 = 0x780;
    if (obj->object->subtype2 != 0) {
        obj->base.flags |= 1;
    }
    sub_080AA4EC(obj);
    if (obj->type != OBJ_MASTER_SWORD_STAND) {
        sub_080988B0(&obj->base);
    }
    return obj;
}

static void sub_080AA4EC(struct Object2* arg0) {
    ObjectSetFunc(arg0, arg0->object->subtype1, sub_080AA588);
    switch (arg0->type) {
    default:
        arg0->unk84 = gUnk_083538FC[arg0->object->subtype1];
        break;
    case OBJ_ABILITY_STATUE_2:
        arg0->unk84 = gUnk_08353904[arg0->object->subtype1];
        break;
    case OBJ_ABILITY_STATUE_3:
        arg0->unk84 = gUnk_0835390B[arg0->object->subtype1];
        break;
    case OBJ_ABILITY_STATUE_4:
        arg0->unk84 = gUnk_0835390C[arg0->object->subtype1];
        break;
    case OBJ_MASTER_SWORD_STAND:
        arg0->unk84 = 0x1a;
        arg0->unk83 = 0;
        arg0->unk78 = sub_080AA618;
        arg0->unk7C = sub_080AAA64;
        break;
    }
    arg0->unk85 = 0;
}

static void sub_080AA588(struct Object2* arg0) {
    if (arg0->base.flags & 0x40000 && arg0->base.unk6C) {
        struct Kirby* kirby = arg0->base.unk6C;
        if (kirby->base.base.base.unk0 == 0
            && kirby->unk103 == 0
            && kirby->hp > 0) {
            if (kirby->unkD4 == 0x27) {
                return;
            }
            if (kirby->unkD4 <= 0x7a
                && kirby->unk110 == 0
                && !(kirby->base.base.base.flags & 0x03800B00)) {
                if ((kirby->unkDD & 0x1f) == 0x1a) {
                    gUnk_0203AD34 = 0;
                }
                kirby->unkDD = arg0->unk84;
                sub_08054C0C(kirby);
                kirby->unkD4 = 0xf;
            }
        }
    }
}

static void sub_080AA618(struct Object2* arg0) {
    if (gUnk_0203AD34 == 0 && gUnk_0203AD2C >= 9999) {
        if (arg0->base.flags & 0x400) {
            sub_0808AE30(&arg0->base, 0, 0x292, 0);
        }
        arg0->base.flags &= ~0x600;
        arg0->base.flags |= 4;
        if (arg0->base.flags & 0x40000 && arg0->base.unk6C) {
            struct Kirby* kirby = arg0->base.unk6C;
            if (kirby->base.base.base.unk0 == 0
                && kirby->base.base.base.unk56 < gUnk_0203AD30
                && kirby->unk103 == 0
                && kirby->hp > 0) {
                if (kirby->unkD4 == 0x27) {
                    return;
                }
                if (kirby->unkD4 <= 0x7a
                    && kirby->unk110 == 0
                    && !(kirby->base.base.base.flags & 0x03800B00)) {
                    kirby->unkDD = arg0->unk84;
                    sub_08054C0C(kirby);
                    kirby->unkD4 = 0xf;
                    arg0->base.flags |= 0x200;
                }
            }
        }
    }
}

static void sub_080AA6F8(struct Object2* arg0) {
    u16 j, k;
    u32 x, y;
    u8 j2, k2;
    u16 r2 = Rand16();
    for (j = 0; j < 0x12; j++) {
        if (r2 < 0xd79 * (j + 1)) break;
    }
    j2 = j;
    x = (arg0->base.x >> 8) + arg0->object->unk1A;
    y = arg0->base.y >> 8;
    CreateObjTemplateAndObj(arg0->base.unk56, 1, 36, x, y, 
        0, 31, 0, 0, OBJ_ABILITY_STATUE_1 + gUnk_0835390F[j2], j2 - gUnk_08353922[gUnk_0835390F[j2]], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    do {
        r2 = Rand16();
        for (j = 0; j < 0x12; j++) {
            if (r2 < 0xd79 * (j + 1)) break;
        }
        k2 = j;
    } while (j2 == k2);
    x = x + arg0->object->unk1E;
    y = arg0->base.y >> 8;
    CreateObjTemplateAndObj(arg0->base.unk56, 1, 36, x, y, 
        0, 31, 0, 0, OBJ_ABILITY_STATUE_1 + gUnk_0835390F[k2], k2 - gUnk_08353922[gUnk_0835390F[k2]], 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
    arg0->base.flags |= 0x1000;
}

static void sub_080AA91C(struct Object2* arg0) {
    ObjectSetFunc(arg0, 3, sub_080A9258);
    arg0->unk84 = arg0->object->subtype1;
    arg0->unk85 = 0;
    arg0->unk9E = 0;
}

static void sub_080AA94C(struct Object2* arg0) {
    ObjectSetFunc(arg0, -1, sub_080A9BB4);
}

static void sub_080AA960(struct Object2* arg0) {
    ObjectSetFunc(arg0, -1, sub_080A9CEC);
    arg0->base.counter = 0x1d;
    arg0->unk9E = 0x25;
    arg0->unk9F = 0x39;
}

void *CreateAbilityStatueRandom(struct Object *arg0, u8 arg1) {
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x400;
    obj->base.flags |= 0x800;
    obj->base.flags |= 0x200;
    obj->base.flags |= 0x40;
    obj->base.flags |= 0x100;
    obj->base.flags |= 8;
    ObjectInitSprite(obj);
    sub_080AAA94(obj);
    return obj;
}

void sub_080AAA14(struct Task* arg0) {
    struct Object2 *obj = TaskGetStructPtr(arg0, obj);
    if (obj->object->subtype1 == 0x1a) {
        if (obj->unk80 != 0) {
            gUnk_0203AD34 = 0;
        }
    }
    ObjectDestroy(arg0);
}

void sub_080AAA64(struct Object2* arg0) {
    if (gUnk_0203AD34 != 0 || gUnk_0203AD2C < 9999) {
        arg0->base.flags |= 0x600;
    }
}

void sub_080AAA94(struct Object2* arg0) {
    arg0->unk78 = sub_080AA6F8;
}
