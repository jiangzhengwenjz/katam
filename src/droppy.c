#include "droppy.h"
#include "code_0806F780.h"
#include "constants/kirby.h"
#include "kirby.h"
#include "random.h"

void sub_0809EF88(struct Object2 *arg0);
void sub_080A09A4(struct Object2 *arg0);
void* CreateDroppy(struct Object *arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, TASK_USE_EWRAM, ObjectDestroy);
    obj2 = TaskGetStructPtr(task);
    obj = obj2;
    InitObject(obj, arg0, arg1);
    obj->base.flags |= 0x800000;
    obj->base.flags |= 0x2000000;
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    sub_0803E2B0(&obj->base, -5, -7, 5, 4);
    sub_0803E308(&obj->base, -6, -8, 6, 6);
    sub_0803E2B0(&obj->base, -5, 0, 5, 8);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    if (obj->base.sprite.palId) {
        struct Sprite sprite;
        SpriteSomething(&sprite, 0x6000000, 0x2F7, 0, 0xFF, 0, 0, 0, 0, 0x10, obj->base.sprite.palId & 0xF, 0x80000);
    }
    obj->unk9E = 0;
    obj->unk7C = sub_0809EF88;
    if (obj->object->subtype1 != 2) {
        sub_080A09A4(obj);
    }
    return obj;
}

void sub_080A0D60(struct Object2 *arg0);
void sub_080A0D30(struct Object2 *arg0);
void sub_080A0C14(struct Object2 *arg0);
void sub_080A0BA4(struct Object2 *arg0);
void sub_0809FE9C(struct Object2 *arg0) {
    struct Object *obj = arg0->object;
    if (obj->subtype1 == 2) {
        sub_080A0D60(arg0);
    }
    else if (arg0->base.unkC & 0x10) {
        sub_080A0D30(arg0);
    }
    else if (++obj, --obj, obj->subtype1 == 1) {
        sub_080A0C14(arg0);
    }
    else {
        ObjectSetFunc(arg0, 0, sub_080A0BA4);
        sub_0803E2B0(&arg0->base, -5, 0, 5, 8);
        arg0->base.xspeed = 0;
        arg0->base.yspeed = 0;
        switch (arg0->subtype) {
        default:
            arg0->base.counter = 60;
            break;
        case 2:
            arg0->base.counter = 180;
            break;
        case 1:
            arg0->base.counter = 90;
            break;
        }
    }
}

void sub_0809FF6C(struct Object2 *arg0);
void sub_0809FF20(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 1, sub_0809FF6C);
    arg0->base.xspeed = 0xa0;
    if (arg0->base.flags & 1)
        arg0->base.xspeed = -arg0->base.xspeed;
    switch (arg0->subtype) {
    default:
        arg0->base.counter = 600;
        break;
    case 2:
        arg0->base.counter = 360;
        break;
    case 1:
        arg0->base.counter = 120;
        break;
    }
}

void sub_080A0C44(struct Object2 *arg0);
void sub_080A0C6C(struct Object2 *arg0);
void sub_080A0BDC(struct Object2 *arg0);
void sub_0809FF6C(struct Object2 *arg0) {
    s32 a, d;
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (!(arg0->base.unk1 & 7)) {
        s16 xOffset = 0x1000;
        u32 var;
        if (arg0->base.flags & 1) {
            xOffset = -xOffset;
        }
        if (!Macro_0809FF6C(arg0, xOffset, 0)
            || (var = gUnk_082D88B8[sub_080023E4(arg0->base.unk56, (arg0->base.x + xOffset)>>12, arg0->base.y>>12)], !(var & 0x200))) {
            if (Macro_0809FF6C(arg0, xOffset, 0x2000)) {
                var = gUnk_082D88B8[sub_080023E4(arg0->base.unk56, (arg0->base.x + xOffset)>>12, (arg0->base.y + 0x2000)>>12)];
                if (!(var & 0xf0000200)) {
                    sub_080A0C44(arg0);
                    return;
                }
            }
        }
        else {
            sub_080A0C44(arg0);
            return;
        }
    }
    if (!(arg0->base.unk62 & 4)) {
        sub_080A0C6C(arg0);
    }
    --arg0->base.counter;
    if (arg0->base.counter == 0 && arg0->subtype != 0) {
        a = -5;
        d = 8;
        if (Rand16() & 1) {
            sub_0809FE9C(arg0);
        }
        else {
            ObjectSetFunc(arg0, 2, sub_080A0BDC);
            sub_0803E2B0(&arg0->base, a, 4, 5, d);
            arg0->base.xspeed = 0;
            arg0->base.yspeed = 0;
            arg0->base.counter = 30;
        }
    }
}

void sub_080A0144(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if (!(arg0->base.unk1 & 7)) {
        s16 xOffset = 0x1000;
        u32 var;
        if (arg0->base.flags & 1) {
            xOffset = -xOffset;
        }

        if (!Macro_0809FF6C(arg0, xOffset, 0)
            || (var = gUnk_082D88B8[sub_080023E4(arg0->base.unk56, (arg0->base.x + xOffset)>>12, arg0->base.y>>12)], !(var & 0x200))) {
            if (Macro_0809FF6C(arg0, xOffset, 0x2000)) {
                var = gUnk_082D88B8[sub_080023E4(arg0->base.unk56, (arg0->base.x + xOffset)>>12, (arg0->base.y + 0x2000)>>12)];
                if (!(var & 0xf0000200)) {
                    sub_080A0C44(arg0);
                    return;
                }
            }
        }
        else {
            sub_080A0C44(arg0);
            return;
        }
    }
    if (!(arg0->base.unk62 & 4)) {
        sub_080A0C6C(arg0);
    }
}

void sub_080A0C8C(struct Object2 *arg0);
void sub_080A02A4(struct Object2 *arg0) {
    if (arg0->base.yspeed < -0x40) {
        arg0->unk83 = 0xa;
    }
    else if (arg0->base.yspeed <= 0x3f) {
        arg0->unk83 = 9;
    }
    if (arg0->base.unk62 & 4) {
        arg0->base.flags &= ~0x20;
        sub_0809FE9C(arg0);
        arg0->base.counter = 15;
    }
    if (arg0->base.unk62 & 1) {
        sub_080A0C8C(arg0);
    }
}

void sub_080A0D00(struct Object2 *arg0);
void sub_080A0304(struct Object2 *arg0) {
    if (arg0->base.unk62 & 1) {
        arg0->base.yspeed += 0x12;
        if (arg0->base.yspeed > 0x140) {
            arg0->base.yspeed = 0x140;
        }
        arg0->unk83 = 0xb;
    }
    else {
        arg0->base.yspeed -= 0x12;
        if (arg0->base.yspeed < -0x140) {
            arg0->base.yspeed = -0x140;
        }
        arg0->unk83 = 0xc;
    }
    ++arg0->base.counter;
    if (arg0->base.counter > 0x3c || arg0->base.unk62 & 4) {
        if (arg0->base.unk62 & 1) {
            arg0->base.flags ^= 1;
        }
        ObjectSetFunc(arg0, 0xd, sub_080A0D00);
        arg0->base.flags &= ~0x40;
    }
}

void sub_080A03A4(struct Object2 *arg0) {
    struct Object4 *obj;
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
    if ((arg0->base.unk1 & 7) == 7) {
        s16 val1, val2;
        obj = sub_0808AE30(&arg0->base, 0, 0x293, 2);
        val1 = (7 - (Rand16() & 0xf)) * 0x100;
        val2 = (7 - (Rand16() & 0xf)) * 0x100;
        obj->unk3E = (Rand16() & 0xff) + 0x20;
        obj->unk3C = -(Rand16() & 0x7f);

        if (val1 > 0) {
            obj->unk3C = -obj->unk3C;
        }
        if (val2 > 0) {
            obj->unk3E = -obj->unk3E;
        }
        if (arg0->base.flags & 1) {
            obj->flags |= 1;
        }
        obj->x += val1;
        obj->y += val2;
    }
}

extern const struct Kirby_110 gUnk_08352E18[];
void sub_080A05C8(struct Object2 *arg0);
bool8 sub_080A049C(struct Object2 *arg0, struct Kirby *kirby) {
    if (arg0->unk83 > 0xa 
        || kirby->base.base.base.unk0 
        || kirby->hp <= 0 
        || kirby->unkD4 == 0x27 
        || kirby->unkD4 > 0x7a
        || kirby->unk110 
        || (kirby->base.base.base.flags & 0x03800B00) 
        || kirby->ability == KIRBY_ABILITY_NORMAL) 
        return FALSE;

    ObjectSetFunc(arg0, 0xe, sub_080A05C8);
    arg0->base.flags &= ~2;
    arg0->base.xspeed = 0;
    arg0->base.yspeed = 0;
    kirby->unk110 = gUnk_08352E18;
    arg0->kirby3 = kirby;
    arg0->base.unk6C = kirby;
    arg0->unk9E = 0;
    PlaySfx(&arg0->base, 0x148);
    return TRUE;
}

extern const u8 DroppyObjectTypes[];
extern const u8 DroppyObjectSubtypes1[];
extern const u8 DroppyObjectSubtypes2[];
void sub_08097B9C(struct Object2 *arg0, struct Kirby *kirby);
void sub_080A05C8(struct Object2 *arg0) {
    struct Sprite sprite;
    struct Kirby *kirby = arg0->kirby3;
    if (kirby->ability != KIRBY_ABILITY_NORMAL) {
        arg0->unk9E = kirby->ability;
        arg0->kirbyAbility = kirby->ability;
        kirby->ability = KIRBY_ABILITY_NORMAL;
        sub_0806F260(kirby);
        sub_0808AE30(&kirby->base.base.base, 0, 0x2a9, 0);
        sub_08097B9C(arg0, kirby);
    }
    arg0->base.flags |= 0xa00;
    if (arg0->unk83 == 0xf) {
        if (arg0->base.unk1 == 0xe) {
            sub_0808AE30(&arg0->base, 0, 0x28F, 2);
        }
        if (arg0->base.unk1 == 0x10) {
            struct Object4 *obj = sub_0808AE30(&arg0->base, 0, 0x28F, 3);
            obj->sprite.unk14 = 0x380;
        }
        if (arg0->base.flags & 2) {
            if (!DroppyObjectTypes[arg0->unk9E]) {
                if (arg0->base.sprite.palId) {
                    SpriteSomething(&sprite, 0x6000000, 0x2F7, arg0->unk9E, 0xFF, 0, 0, 0, 0, 0x10, arg0->base.sprite.palId & 0xF, 0x80000);
                }
                arg0->base.flags &= ~0xa00;
                arg0->base.unkC |= 0x10;
                ObjectSetFunc(arg0, 19, sub_080A03A4);
                arg0->base.xspeed = 0x240;
                if (arg0->base.flags & 1) {
                    arg0->base.xspeed = -arg0->base.xspeed;
                }
            }
            else {
                struct Object2 *obj;
                if (arg0->base.sprite.palId) {
                    SpriteSomething(&sprite, 0x6000000, 0x2F7, arg0->unk9E, 0xFF, 0, 0, 0, 0, 0x10, arg0->base.sprite.palId & 0xF, 0x80000);
                }
                arg0->base.flags |= 0x1000;
                if (DroppyObjectTypes[arg0->unk9E] == OBJ_BOMBER && arg0->base.unk62 & 4) {
                    arg0->base.y += 0x800;
                }
                obj = CreateObjTemplateAndObjWithSettingParent(arg0, 1, 0x24, arg0->base.x>>8, arg0->base.y>>8,
                    0, 0x1F, 0, 0, DroppyObjectTypes[arg0->unk9E], DroppyObjectSubtypes1[arg0->unk9E], arg0->unk9E, 
                    DroppyObjectSubtypes2[arg0->unk9E], 0x8000, 0, 0, 0, 0, 0, 0, 0, 0, 0);

            }
        }
    }
    else if (arg0->base.flags & 2) {
        arg0->unk83 = 0xF;
    }
}

extern struct Unk_08353510 gUnk_08352ED0[];
void sub_080A0864(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    if (!arg0->unk9E) {
        ++arg0->unk9F;
        if (!gUnk_08352ED0[arg0->unk9F].unk8) {
            --arg0->unk9F;
        }
        arg0->unk9E = gUnk_08352ED0[arg0->unk9F].unk8;
        if (gUnk_08352ED0[arg0->unk9F].unk9 != 0xff) {
            arg0->unk83 = gUnk_08352ED0[arg0->unk9F].unk9;
        }
        if (arg0->unk9F) {
            if (gUnk_08352ED0[arg0->unk9F].unk0 != gUnk_08352ED0[(arg0->unk9F - 1)].unk0) {
                arg0->base.xspeed = gUnk_08352ED0[arg0->unk9F].unk0;
            }
            if (gUnk_08352ED0[arg0->unk9F].unk2 != gUnk_08352ED0[(arg0->unk9F - 1)].unk2) {
                arg0->base.yspeed = gUnk_08352ED0[arg0->unk9F].unk2;
            }
        }
        else {
            arg0->base.yspeed = gUnk_08352ED0[arg0->unk9F].unk2;
            arg0->base.xspeed = gUnk_08352ED0[arg0->unk9F].unk0;

        }
    }
    arg0->base.xspeed += gUnk_08352ED0[arg0->unk9F].unk4;
    arg0->base.yspeed += gUnk_08352ED0[arg0->unk9F].unk6;
    arg0->unk9E -= 1;
    if (!gUnk_08352ED0[(u8)(arg0->unk9F + 1)].unk8 && !arg0->unk9E) {
        sub_0809FE9C(arg0);
    }
}

void sub_080A0A78(void);
void sub_080A09A4(struct Object2 *arg0) {
    struct Task *task = TaskCreate(sub_080A0A78, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    struct ObjectBase *obj = TaskGetStructPtr(task);
    sub_0803E380(obj);
    obj->unk0 = 2;
    obj->x = arg0->base.x;
    obj->y = arg0->base.y;
    obj->parent = arg0;
    obj->counter = 0;
    obj->roomId = arg0->base.roomId;
    obj->unk56 = arg0->base.unk56;
    if (Macro_0810B1F4(obj))
        obj->flags |= 0x2000;
    obj->flags |= 0x10000000;
    obj->flags |= 0x2000000;
    obj->unk68 |= 0x20;
    obj->unk68 &= ~7;
    obj->unk68 |= 3;
    obj->unk5C |= 0x80000;
    sub_0803E2B0(obj, 0, -10, 20, 10);
}

void sub_080A0A78(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *obj = tmp;
    struct Object2 *obj2 = obj->parent;
    if (obj->roomId != 0xFFFF && obj2->base.flags & 0x1000) {
        obj->roomId = 0xFFFF;
    }
    obj->x = obj2->base.x;
    obj->y = obj2->base.y;
    obj->unk56 = obj2->base.unk56;
    if (!sub_0806F780(obj)) {
        if (obj2->base.flags & 1) {
            obj->flags |= 1;
        }
        else {
            obj->flags &= ~1;
        }
        if (obj2->unk83 < 0xb) {
            if (obj->flags & 0x40000) {
                obj->flags &= ~0x40000;
            }
            else if (!(obj->flags & 0x200)) {
                SetPointerSomething(obj);
            }
        }
    }
}

void sub_080A0BA4(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    --arg0->base.counter;
    if (!arg0->base.counter)
        sub_0809FF20(arg0);
    if (!(arg0->base.unk62 & 4))
        sub_080A0C6C(arg0);
}

void sub_080A0BDC(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    --arg0->base.counter;
    if (!arg0->base.counter)
        sub_0809FE9C(arg0);
    if (!(arg0->base.unk62 & 4))
        sub_080A0C6C(arg0);
}

void sub_080A0C14(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 3, sub_080A0144);
    arg0->base.xspeed = 0x120;
    if (arg0->base.flags & 1)
        arg0->base.xspeed = -arg0->base.xspeed;
}

void sub_080A0C44(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 8, sub_080A02A4);
    arg0->base.yspeed = 0x240;
    arg0->base.flags |= 0x20;
}

void sub_080A0C6C(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 8, sub_080A02A4);
    arg0->base.flags |= 0x20;
}

void sub_080A0CAC(struct Object2 *arg0);
void sub_080A0C8C(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 13, sub_080A0CAC);
    arg0->base.yspeed = 0x240;
}

void sub_080A0CCC(struct Object2 *arg0);
void sub_080A0CAC(struct Object2 *arg0) {
    if (arg0->base.counter == 8)
        sub_080A0CCC(arg0);
    ++arg0->base.counter;
}

void sub_080A0CCC(struct Object2* arg0) {
    ObjectSetFunc(arg0, 11, sub_080A0304);
    arg0->base.xspeed = 0x80;
    if (arg0->base.flags & 1)
        arg0->base.xspeed = -arg0->base.xspeed;
    arg0->base.flags |= 0x40;
}

void sub_080A0D00(struct Object2* arg0) {
    if (arg0->base.counter == 16) {
        ObjectSetFunc(arg0, 8, sub_080A02A4);
        arg0->base.flags |= 0x20;
    }
    ++arg0->base.counter;
}

void sub_080A0D30(struct Object2* arg0) {
    ObjectSetFunc(arg0, 19, sub_080A03A4);
    arg0->base.xspeed = 0x240;
    if (arg0->base.flags & 1)
        arg0->base.xspeed = -arg0->base.xspeed;
}

void sub_080A0D8C(struct Object2 *arg0);
void sub_080A0D60(struct Object2 *arg0) {
    ObjectSetFunc(arg0, 1, sub_080A0D8C);
    arg0->base.xspeed = 0xa0;
    if (arg0->base.flags & 1)
        arg0->base.xspeed = -arg0->base.xspeed;
}

void sub_080A0D8C(struct Object2 *arg0) {
    arg0->base.flags |= 4;
    if (arg0->base.unk62 & 1) {
        arg0->base.flags ^= 1;
        arg0->base.xspeed = -arg0->base.xspeed;
    }
}
