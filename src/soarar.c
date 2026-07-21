#include "soarar.h"
#include "snooter.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"
#include "code_0806F780.h"
#include "task.h"
#include "random.h"
#include "constants/songs.h"

static void sub_080ABA40(struct Object2 *);
static void sub_080ABB38(struct Object2 *);
static void sub_080ABBBC(struct Object2 *);
static void sub_080ABC18(struct Object2 *);
static void sub_080ABCE4(struct Object2 *);
static void sub_080ABDE8(struct Object2 *);
static void sub_080ABE40(struct Object2 *);
static void sub_080ABEAC(struct Object2 *);
static void sub_080AC0A4(void);
static void sub_080AC33C(struct Object2 *);
static void sub_080AC71C(struct Object2 *);
static void sub_080AC788(struct Object2 *);
static void sub_080AC824(struct Object2 *);
static void sub_080AC9A4(void);

extern const struct Kirby_110 gUnk_083539B4[];
extern const struct Kirby_110 gUnk_083539D4[];

void *CreateSoarar(struct Object *arg0, u8 arg1) {
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
    obj->base.flags |= 0x140;
    obj->base.unkC |= 1;
    obj->base.unkC |= 4;
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 0xA);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}

void sub_080AB8DC(struct Object2 *obj) {
    obj->base.flags |= 0x140;
    obj->base.flags &= ~0x20;
    obj->base.yspeed = 0;
    if (obj->base.x > obj->kirby3->base.base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    switch (obj->object->subtype1) {
        case 0:
        default:
            sub_080ABA40(obj);
            break;
        case 1:
            obj->unk85 = 1;
            sub_080ABBBC(obj);
            break;
        case 2:
            obj->unk85 = 2;
            sub_080ABBBC(obj);
            break;
        case 3:
            sub_080ABDE8(obj);
            break;
    }
}

static void sub_080AB950(struct Object2 *obj) {
    if (obj->base.yspeed < -0xF0) {
        obj->unk83 = 6;
    }
    else if (obj->base.yspeed < -0x40) {
        obj->unk83 = 5;
    }
    else if (obj->base.yspeed > 0xF0) {
        obj->unk83 = 2;
    }
    else if (obj->base.yspeed > 0x40) {
        obj->unk83 = 1;
    }
    else {
        obj->unk83 = 0;
    }
    if (obj->base.flags & 1) {
        obj->base.xspeed -= 0x40;
        if (obj->base.xspeed < -0x280) {
            obj->base.xspeed = -0x280;
        }
        else if (obj->base.xspeed > 0x280) {
            obj->base.xspeed = 0x280;
        }
    }
    else {
        obj->base.xspeed += 0x40;
        if (obj->base.xspeed > 0x280) {
            obj->base.xspeed = 0x280;
        }
        else if (obj->base.xspeed < -0x280) {
            obj->base.xspeed = -0x280;
        }
    }
    if (obj->unk85 != 0) {
        obj->base.yspeed -= 8;
        if (obj->base.yspeed < -0x100) {
            obj->base.yspeed = -0x100;
        }
    }
    else {
        obj->base.yspeed += 8;
        if (obj->base.yspeed > 0x100) {
            obj->base.yspeed = 0x100;
        }
    }
    obj->base.counter++;
}

static void sub_080ABA40(struct Object2 *obj) {
    s32 dx;
    s32 dy;
    s32 a, b;
    u16 dist;

    ObjectSetFunc(obj, 0, sub_080ABB38);
    switch (obj->subtype) {
    default:
        obj->unk85 = 0x30;
        break;
    case 1:
        obj->unk85 = 0x40;
        break;
    case 2:
        obj->unk85 = 0x60;
        break;
    case 3:
        obj->unk85 = 0x80;
        break;
    case 4:
        obj->unk85 = 0xA0;
        break;
    }
    dx = obj->kirby3->base.base.base.x;
    dx -= obj->base.x;
    dx >>= 8;
    dy = obj->base.y;
    dy -= obj->kirby3->base.base.base.y;
    dy >>= 8;
    dist = Sqrt((dx * dx + dy * dy) << 8);
    a = (dx * 0x100 / dist) * 0x100;
    b = (dy * 0x100 / dist) * 0x100;
    obj->unkA0 = a;
    obj->unkA2 = b;
    obj->base.xspeed = (obj->unkA0 * 3) >> 5;
    obj->base.yspeed = (obj->unkA2 * 3) >> 5;
    obj->unk9E = 0x18;
    if (0x40 < obj->base.yspeed) {
        obj->unk83 = 1;
    }
    else if (obj->base.yspeed < -0x40) {
        obj->unk83 = 5;
    }
    obj->base.counter = 0x32;
}

static void sub_080ABB38(struct Object2 *obj) {
    if (obj->base.flags & 2) {
        if (obj->unk83 == 1) {
            obj->unk83 = 2;
        }
        if (obj->unk83 == 5) {
            obj->unk83 = 6;
        }
    }
    obj->base.counter--;
    if (obj->base.counter == 0) {
        u32 tmp = obj->unk9E + 1;
        obj->unk9E = tmp + obj->subtype;
        if (obj->unk85 < obj->unk9E) {
            obj->unk9E = obj->unk85;
        }
        obj->base.xspeed = (obj->unk9E * obj->unkA0) >> 8;
        obj->base.yspeed = (obj->unk9E * obj->unkA2) >> 8;
        obj->base.counter = 1;
    }
}

static void sub_080ABBBC(struct Object2 *obj) {
    ObjectSetFunc(obj, 0, sub_080ABC18);
    if (obj->kirby3->base.base.base.y > obj->base.y) {
        obj->base.yspeed = -0x80;
        obj->unk83 = 5;
    }
    else {
        obj->base.yspeed = 0x80;
        obj->unk83 = 1;
    }
    obj->base.xspeed = 0x80;
    if (obj->base.flags & 1) {
        obj->base.xspeed = -obj->base.xspeed;
    }
}

static void sub_080ABC18(struct Object2 *obj) {
    if (obj->base.flags & 1) {
        obj->base.xspeed -= 0x20;
        if (obj->base.xspeed < -0x240) {
            obj->base.xspeed = -0x240;
        }
        else if (obj->base.xspeed > 0x240) {
            obj->base.xspeed = 0x240;
        }
    }
    else {
        obj->base.xspeed += 0x20;
        if (obj->base.xspeed > 0x240) {
            obj->base.xspeed = 0x240;
        }
        else if (obj->base.xspeed < -0x240) {
            obj->base.xspeed = -0x240;
        }
    }
    if (obj->base.flags & 2) {
        if (obj->unk83 == 1) {
            obj->unk83 = 2;
        }
        if (obj->unk83 == 5) {
            obj->unk83 = 6;
        }
    }
    if (obj->unk85 != 0) {
        if (obj->base.xspeed > 0) {
            if (obj->kirby3->base.base.base.x < obj->base.x) {
                sub_080AC33C(obj);
            }
        }
        else {
            if (obj->kirby3->base.base.base.x > obj->base.x) {
                sub_080AC33C(obj);
            }
        }
    }
}

static void sub_080ABCE4(struct Object2 *obj) {
    if (obj->base.flags & 1) {
        obj->base.xspeed += 0xA;
        if (obj->base.xspeed < -0x240) {
            obj->base.xspeed = -0x240;
        }
        else if (obj->base.xspeed > 0x240) {
            obj->base.xspeed = 0x240;
        }
    }
    else {
        obj->base.xspeed -= 0xA;
        if (obj->base.xspeed > 0x240) {
            obj->base.xspeed = 0x240;
        }
        else if (obj->base.xspeed < -0x240) {
            obj->base.xspeed = -0x240;
        }
    }
    if (obj->base.flags & 1) {
        if (obj->base.xspeed > 0) {
            sub_080ABEAC(obj);
            ObjectSetFunc(obj, 0, sub_080ABC18);
            if (obj->base.yspeed < 0) {
                obj->unk83 = 4;
            }
            else {
                obj->unk83 = 2;
            }
            obj->base.flags ^= 1;
            return;
        }
    }
    else {
        if (obj->base.xspeed < 0) {
            sub_080ABEAC(obj);
            ObjectSetFunc(obj, 0, sub_080ABC18);
            if (obj->base.yspeed < 0) {
                obj->unk83 = 4;
            }
            else {
                obj->unk83 = 2;
            }
            obj->base.flags ^= 1;
            return;
        }
    }
    if (obj->base.flags & 2) {
        if (obj->unk83 == 9) {
            obj->unk83 = 0xA;
        }
    }
}

static void sub_080ABDE8(struct Object2 *obj) {
    ObjectSetFunc(obj, 0, sub_080ABE40);
    if (obj->kirby3->base.base.base.y > obj->base.y) {
        obj->unk83 = 5;
    }
    else {
        obj->unk83 = 1;
    }
    obj->base.yspeed = 0;
    obj->base.xspeed = 0x2A0;
    if (obj->base.flags & 1) {
        obj->base.xspeed = -obj->base.xspeed;
    }
}

static void sub_080ABE40(struct Object2 *obj) {
    if (obj->kirby3->base.base.base.y > obj->base.y) {
        obj->base.yspeed -= 8;
        if (obj->base.yspeed < -0xA0) {
            obj->base.yspeed = -0xA0;
        }
    }
    else {
        obj->base.yspeed += 8;
        if (obj->base.yspeed > 0xA0) {
            obj->base.yspeed = 0xA0;
        }
    }
    if (obj->base.flags & 2) {
        if (obj->unk83 == 1) {
            obj->unk83 = 2;
        }
        if (obj->unk83 == 5) {
            obj->unk83 = 6;
        }
    }
}

static void sub_080ABEAC(struct Object2 *obj) {
    struct ObjectBase *p, *p2;
    struct Task *task = TaskCreate(sub_080AC0A4, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, sub_0803DCCC);
    p2 = TaskGetStructPtr(task);
    p = p2;
    sub_0803E380(p);
    p->unk0 = 2;
    p->x = obj->base.x;
    p->y = obj->base.y;
    p->parent = obj;
    p->counter = 0;
    p->roomId = obj->base.roomId;
    p->unk56 = obj->base.unk56;
    if (Macro_0810B1F4(p)) {
        p->flags |= 0x2000;
    }
    p->unk63 = 1;
    p->flags |= 0x10000000;
    p->unk68 = 0x20000043;
    p->unk5C |= 0x80000;
    p->xspeed = -0x280;
    p->yspeed = 0;
    if (obj->base.flags & 1) {
        p->xspeed = -p->xspeed;
    }
    sub_0803E2B0(p, -2, -2, 2, 2);
    sub_0803E308(p, 2, 2, 2, 2);
    sub_080708DC(p, &p->sprite, 2, 0x2FC, 0xD, 0xC);
    p->sprite.palId = 0;
    Macro_081050E8(p, &p->sprite, 0x30A, 1);
    PlaySfx(p, SE_BASIC_ENEMY_LASER_ATTACK);
}

static void sub_080AC0A4(void) {
    struct Sprite sprite;
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *p = tmp;

    Macro_08107BA8_4(p, &p->sprite, &sprite, 2, &p->sprite);
    Macro_081050E8(p, &p->sprite, 0x30A, !p->sprite.palId);
    if (sub_0806F780(p)) {
        return;
    }
    p->flags |= 4;
    if (!(p->flags & 0x200)) {
        SetPointerSomething(p);
    }
    if (!(p->flags & 0x800)) {
        p->x += p->xspeed;
        p->y -= p->yspeed;
    }
    if (p->x <= gCurLevelInfo[p->unk56].levelMaxPosition.x
        && p->x >= gCurLevelInfo[p->unk56].levelMinPosition.x
        && p->y <= gCurLevelInfo[p->unk56].levelMaxPosition.y
        && p->y >= gCurLevelInfo[p->unk56].levelMinPosition.y) {
        sub_0806FC70(p);
    }
    if (p->unk62 != 0 || (p->flags & 0x40000)) {
        sub_0808AE30(p, 0, 0x298, 0);
        p->flags |= 0x1000;
    }
    else {
        sub_0806F8BC(p);
    }
}

static void sub_080AC33C(struct Object2 *obj) {
    ObjectSetFunc(obj, 9, sub_080ABCE4);
    obj->unk85--;
    if (obj->kirby3->base.base.base.y > obj->base.y) {
        obj->base.yspeed = -0x80;
    }
    else {
        obj->base.yspeed = 0x80;
    }
}

void sub_080AC380(struct Object2 *obj) {
    obj->base.flags |= 4;
    if (obj->base.flags & 1) {
        obj->base.xspeed -= 4;
        if (obj->base.xspeed < -0xA0) {
            obj->base.xspeed = -0xA0;
        }
        else if (obj->base.xspeed > 0xA0) {
            obj->base.xspeed = 0xA0;
        }
    }
    else {
        obj->base.xspeed += 4;
        if (obj->base.xspeed > 0xA0) {
            obj->base.xspeed = 0xA0;
        }
        else if (obj->base.xspeed < -0xA0) {
            obj->base.xspeed = -0xA0;
        }
    }
    obj->base.counter--;
    if (obj->base.counter == 0) {
        obj->base.counter = 0x5A;
        if (Rand16() & 1) {
            ObjectSetFunc(obj, 0, sub_080ACBEC);
            obj->base.xspeed = 0;
            obj->base.counter = 2;
            obj->base.flags &= ~0x2000000;
            return;
        }
    }
    if (obj->base.unk62 & 1) {
        obj->base.flags ^= 1;
        obj->base.xspeed = 0;
    }
}

void sub_080AC45C(struct Object2 *obj) {
    obj->base.flags |= 4;
    if (obj->base.flags & 1) {
        obj->base.xspeed -= 0x20;
        if (obj->base.xspeed < -0x1A0) {
            obj->base.xspeed = -0x1A0;
        }
        else if (obj->base.xspeed > 0x1A0) {
            obj->base.xspeed = 0x1A0;
        }
    }
    else {
        obj->base.xspeed += 0x20;
        if (obj->base.xspeed > 0x1A0) {
            obj->base.xspeed = 0x1A0;
        }
        else if (obj->base.xspeed < -0x1A0) {
            obj->base.xspeed = -0x1A0;
        }
    }
    obj->base.counter--;
    if (obj->base.counter == 0) {
        obj->type = OBJ_SNOOTER_1;
        ObjectSetFunc(obj, 0, sub_080ACBEC);
        obj->base.xspeed = 0;
        obj->base.counter = 2;
        obj->base.flags &= ~0x2000000;
        return;
    }
    if (obj->base.unk62 & 1) {
        obj->base.flags ^= 1;
        obj->base.xspeed = 0;
    }
    if ((obj->base.counter & 7) == 7) {
        struct Object4 *eff = sub_0808AE30(&obj->base, 0, 0x293, 2);
        s16 xoff = -(Rand16() & 7) * 0x100;
        s32 r;
        eff->y += (-6 - (Rand16() & 7)) * 0x100;
        eff->unk3E = (Rand16() & 0xFF) + 0x20;
        r = Rand16() & 0x7F;
        eff->unk3C = -r;
        if (obj->base.flags & 1) {
            eff->flags |= 1;
            eff->unk3C = r;
            xoff = -xoff;
        }
        eff->x += xoff;
    }
}

bool32 sub_080AC5E0(struct Object2 *obj, struct Kirby *kirby) {
    if (obj->unk83 > 1) {
        return FALSE;
    }
    if (kirby->base.base.base.unk0 == 0) {
        if (kirby->hp > 0
            && kirby->animationIndex != 0x27
            && kirby->animationIndex <= 0x7A
            && kirby->unk110 == NULL
            && !(kirby->base.base.base.flags & 0x03800B00)) {
            kirby->unk110 = gUnk_083539B4;
            obj->kirby3 = kirby;
            ObjectSetFunc(obj, 2, sub_080AC71C);
            obj->base.flags |= 0x2000000;
        }
        else {
            return FALSE;
        }
    }
    else {
        if ((u8)(kirby->base.base.type - 0x5E) > 0xE) {
            return FALSE;
        }
        ObjectSetFunc(obj, 2, sub_080AC824);
    }
    obj->base.xspeed = 0;
    obj->base.yspeed = 0;
    obj->base.counter = obj->unk80;
    obj->base.unk6C = kirby;
    PlaySfx(&obj->base, SE_FROSTY_SWALLOW_KIRBY);
    return TRUE;
}

static void sub_080AC71C(struct Object2 *obj) {
    struct Kirby *kirby = obj->base.unk6C;
    if (obj->base.unk62 & 4) {
        if (obj->unk83 == 4) {
            if (obj->base.unk1 == 0xF) {
                obj->base.yspeed = 0x150;
            }
        }
        else if (obj->base.unk1 == 0xF) {
            obj->base.yspeed = 0xA0;
        }
    }
    if (obj->base.flags & 2) {
        if (obj->unk83 == 4) {
            sub_080AC788(obj);
        }
        else {
            obj->unk83 = 4;
            kirby->unk110 = gUnk_083539D4;
        }
    }
}

static void sub_080AC788(struct Object2 *obj) {
    ObjectSetFunc(obj, 5, sub_080ACC60);
    PlaySfx(&obj->base, SE_FROSTY_SPIT_KIRBY);
}

static void sub_080AC824(struct Object2 *obj) {
    if (obj->base.flags & 2) {
        if (obj->unk83 == 7) {
            ObjectSetFunc(obj, 0, sub_080ACBEC);
            obj->base.xspeed = 0;
            obj->base.counter = 2;
            obj->base.flags &= ~0x2000000;
            return;
        }
        if (obj->unk83 == 3) {
            obj->unk83 = 7;
        }
        else {
            obj->unk83 = 3;
        }
    }
    if (obj->unk83 == 7 && obj->base.unk1 == 0xC) {
        struct Object4 *eff = sub_0808AE30(&obj->base, 0, 0x293, 1);
        s16 xoff = 0x1000;
        eff->unk3E = 0x20;
        eff->unk3C = 0x40;
        if (obj->base.flags & 1) {
            eff->unk3C = -eff->unk3C;
            xoff = -xoff;
        }
        else {
            eff->flags |= 1;
        }
        eff->x += xoff;
    }
}

void sub_080AC8CC(struct Object2 *obj) {
    struct ObjectBase *p;
    struct Task *task = TaskCreate(sub_080AC9A4, sizeof(struct ObjectBase), 0x3500, TASK_USE_EWRAM, NULL);
    p = TaskGetStructPtr(task);
    sub_0803E380(p);
    p->unk0 = 2;
    p->x = obj->base.x;
    p->y = obj->base.y;
    p->parent = obj;
    p->counter = 0;
    p->roomId = obj->base.roomId;
    p->unk56 = obj->base.unk56;
    if (Macro_0810B1F4(p)) {
        p->flags |= 0x2000;
    }
    p->flags |= 0x30000000;
    p->flags |= 0x100000;
    p->flags |= 0x2000000;
    p->unk68 |= 0x20;
    p->unk68 &= ~7;
    p->unk68 |= 3;
    p->unk5C |= 0x80000;
    sub_0803E2B0(p, 0, -6, 0xC, 8);
}

static void sub_080AC9A4(void) {
    struct ObjectBase *tmp = TaskGetStructPtr(gCurTask), *p = tmp;
    struct Object2 *parent = p->parent;
    if (p->roomId != 0xFFFF && (parent->base.flags & 0x1000)) {
        p->roomId |= 0xFFFF;
    }
    p->x = parent->base.x;
    p->y = parent->base.y;
    p->unk56 = parent->base.unk56;
    if (sub_0806F780(p)) {
        return;
    }
    if (parent->base.flags & 1) {
        p->flags |= 1;
    }
    else {
        p->flags &= ~1;
    }
    if (parent->unk83 <= 1) {
        if (p->flags & 0x40000) {
            p->flags &= ~0x40000;
            return;
        }
        if (!(p->flags & 0x200)) {
            SetPointerSomething(p);
        }
    }
}
