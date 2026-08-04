#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"
#include "main.h"
#include "object.h"
#include "kirby.h"
#include "code_0806F780.h"
#include "constants/songs.h"

struct KirbyCannon {
    /* 0x00 */ struct Object2 obj2;
    /* 0xB4 */ u8 unkB4;
    /* 0xB5 */ u8 unkB5;
    /* 0xB6 */ u8 unkB6;
    /* 0xB7 */ u8 unkB7;
    /* 0xB8 */ u8 unkB8;
    /* 0xBA */ u16 unkBA;
    /* 0xBC */ s8 unkBC;
    /* 0xBD */ s8 unkBD;
}; /* size = 0xC0 */

static void sub_08121B70(struct KirbyCannon *);
static void sub_08121FCC(struct KirbyCannon *);
bool32 sub_0812214C(struct KirbyCannon *);
static void sub_08122248(struct KirbyCannon *);

extern bool8 sub_080510EC(struct Kirby *);
extern void sub_08051544(struct Kirby *);
extern void sub_080515D4(struct Kirby *, u16, s32, s32, u32);
extern void sub_0805BE64(struct Kirby *);
extern const u8 gUnk_08357E78[];

void *CreateKirbyCannon(struct Object *arg0, u8 arg1) {
    struct KirbyCannon *cannon;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct KirbyCannon), 0x1000, TASK_USE_IWRAM, ObjectDestroy);

    cannon = TaskGetStructPtr(task);
    InitObject(&cannon->obj2, arg0, arg1);
    cannon->obj2.base.flags |= 0x02218140;
    cannon->obj2.base.unk68 &= ~7;
    cannon->obj2.base.unk5C |= ~7;
    cannon->obj2.base.unk5C &= ~0x80;
    cannon->obj2.base.unkC |= 1;
    sub_0803E2B0(&cannon->obj2.base, -4, -0x20, 4, -0x1C);
    sub_0803E308(&cannon->obj2.base, -8, -0x10, 8, 0);
    cannon->obj2.base.x -= 0x300;
    cannon->obj2.base.unk48 = cannon->obj2.base.x;
    ObjectInitSprite(&cannon->obj2);
    gUnk_08351648[cannon->obj2.type].unk10(&cannon->obj2);
    return cannon;
}

void sub_08121AF8(struct Object2 *obj2) {
    struct KirbyCannon *cannon = (struct KirbyCannon *)obj2;

    obj2->base.counter = 0;
    cannon->unkB4 = 0;
    cannon->unkB5 = 0;
    cannon->unkB6 = 8;
    if (obj2->object->unk22 & 2) {
        cannon->unkB6 = 0x20;
    }
    cannon->unkB7 = 3;
    cannon->unkB8 = 0;
    cannon->unkBA = obj2->object->unk12;
    cannon->unkBC = obj2->object->unk18 >> 8;
    cannon->unkBD = obj2->object->unk18 != 0;
    obj2->base.flags |= 1;
    obj2->unk78 = sub_08121B70;
}

// sub_08121B70: functionally equivalent; remaining diff is register allocation only.
#ifndef NONMATCHING
static NAKED void sub_08121B70(struct KirbyCannon *x) {
    asm(".include \"asm/nonmatching/sub_08121B70.inc\"");
}
#else
static void sub_08121B70(struct KirbyCannon *x) {
    struct KirbyCannon *x2 = x;
    u16 roomId = x->obj2.base.roomId;
    u32 *p;
    u8 flags;

    p = sub_08002888(0, (u8)x->obj2.object->unk14, gCurLevelInfo[x->obj2.base.unk56].unk65E);
    if (*p != 0) {
        flags = (x->unkB6 & ~8) | 0x20;
    } else {
        flags = (x->unkB6 | 8) & ~0x20;
    }
    x->unkB6 = flags;

    if (x2->unkB6 & 8) {
        if (x->obj2.base.flags & 0x40000) {
            x2->unkB6 |= 1;
            if (((struct ObjectBase *)x->obj2.base.unk6C)->unk56 < gUnk_0203AD30) {
                if (gUnk_0203AD30 != 0
                 && gKirbys[0].base.base.base.roomId == roomId
                 && !(x2->unkB8 & 1)
                 && sub_0803925C(&x->obj2.base, &gKirbys[0].base.base.base)
                 && gKirbys[0].base.base.base.unk6C == x
                 && sub_080510EC(&gKirbys[0])) {
                    x2->unkB8 |= 1;
                }
                if (gUnk_0203AD30 > 1
                 && gKirbys[1].base.base.base.roomId == roomId
                 && !(x2->unkB8 & 2)
                 && sub_0803925C(&x->obj2.base, &gKirbys[1].base.base.base)
                 && gKirbys[1].base.base.base.unk6C == x
                 && sub_080510EC(&gKirbys[1])) {
                    x2->unkB8 |= 2;
                }
                if (gUnk_0203AD30 > 2
                 && gKirbys[2].base.base.base.roomId == roomId
                 && !(x2->unkB8 & 4)
                 && sub_0803925C(&x->obj2.base, &gKirbys[2].base.base.base)
                 && gKirbys[2].base.base.base.unk6C == x
                 && sub_080510EC(&gKirbys[2])) {
                    x2->unkB8 |= 4;
                }
                if (gUnk_0203AD30 > 3
                 && gKirbys[3].base.base.base.roomId == roomId
                 && !(x2->unkB8 & 8)
                 && sub_0803925C(&x->obj2.base, &gKirbys[3].base.base.base)
                 && gKirbys[3].base.base.base.unk6C == x
                 && sub_080510EC(&gKirbys[3])) {
                    x2->unkB8 |= 8;
                }
            }
        } else if (x2->unkB6 & 1) {
            if ((x2->unkB8 & 1) && (gKirbys[0].unk11A & 1)) {
                sub_08051544(&gKirbys[0]);
                x2->unkB8 &= ~1;
            }
            if ((x2->unkB8 & 2) && (gKirbys[1].unk11A & 1)) {
                sub_08051544(&gKirbys[1]);
                x2->unkB8 &= ~2;
            }
            if ((x2->unkB8 & 4) && (gKirbys[2].unk11A & 1)) {
                sub_08051544(&gKirbys[2]);
                x2->unkB8 &= ~4;
            }
            if ((x2->unkB8 & 8) && (gKirbys[3].unk11A & 1)) {
                sub_08051544(&gKirbys[3]);
                x2->unkB8 &= ~8;
            }
            if (!(x2->unkB8 & 0xF)) {
                x2->unkB6 &= ~1;
            }
        }
    }

    p = sub_08002888(0, x->obj2.object->unk4, gCurLevelInfo[x->obj2.base.unk56].unk65E);
    if (*p != 0) {
        (*p)--;
        x2->unkB6 |= 2;
    }
    if (x2->unkB6 & 2) {
        x2->unkB6 &= ~8;
        if (x2->unkB6 & 1) {
            if (x2->unkB8 & 1) {
                sub_0805BE64(&gKirbys[0]);
            }
            if (x2->unkB8 & 2) {
                sub_0805BE64(&gKirbys[1]);
            }
            if (x2->unkB8 & 4) {
                sub_0805BE64(&gKirbys[2]);
            }
            if (x2->unkB8 & 8) {
                sub_0805BE64(&gKirbys[3]);
            }
            if (x->obj2.object->unk22 & 1) {
                x->obj2.unk83 = 2;
            } else {
                x->obj2.unk83 = 1;
            }
        } else {
            sub_08094EDC(&x->obj2.base);
            PlaySfx(&x->obj2.base, SE_08D5B9E8);
        }
        x->obj2.unk78 = sub_08121FCC;
    }
    x->obj2.base.counter++;
}
#endif

// sub_08121FCC: functionally equivalent; remaining diff is register allocation only.
#ifndef NONMATCHING
static NAKED void sub_08121FCC(struct KirbyCannon *x) {
    asm(".include \"asm/nonmatching/sub_08121FCC.inc\"");
}
#else
static void sub_08121FCC(struct KirbyCannon *x) {
    struct KirbyCannon *x2 = x;
    struct Object4 *eff;

    if (x->obj2.base.flags & 2) {
        x->obj2.unk83 = 2;
        x->obj2.unk78 = sub_08122248;
        eff = sub_0808AE30(&x->obj2.base, 0, 0x2A8, 0);
        eff->y -= 0x2000;
        sub_0806FE64(3, &x->obj2.base);
        x->unkB5 = 0;
        if (x->unkB8 & 1) {
            sub_080515D4(&gKirbys[0], x->unkBA, x->unkBC, x->unkBD, x->obj2.object->unk22 & 1);
            x->unkB8 &= ~1;
        }
        if (x->unkB8 & 2) {
            sub_080515D4(&gKirbys[1], x->unkBA, x->unkBC, x->unkBD, x->obj2.object->unk22 & 1);
            x->unkB8 &= ~2;
        }
        if (x->unkB8 & 4) {
            sub_080515D4(&gKirbys[2], x->unkBA, x->unkBC, x->unkBD, x->obj2.object->unk22 & 1);
            x->unkB8 &= ~4;
        }
        if (x2->unkB8 & 8) {
            sub_080515D4(&gKirbys[3], x2->unkBA, x2->unkBC, x2->unkBD, x2->obj2.object->unk22 & 1);
            x->unkB8 &= ~8;
        }
    }
}
#endif

bool32 sub_0812214C(struct KirbyCannon *x) {
    s32 s;

    if (x->unkB5 <= 0xB) {
        x->unkB4--;
        if (x->unkB4 == 0xFF) {
            s = gUnk_08357E78[x->unkB5] << 8;
            if (s > 0) {
                x->obj2.base.yspeed += s;
                if (x->obj2.base.yspeed > gUnk_08357E78[x->unkB5] << 8) {
                    x->obj2.base.yspeed = gUnk_08357E78[x->unkB5] << 8;
                }
            } else {
                x->obj2.base.yspeed += s;
                if (x->obj2.base.yspeed < -(gUnk_08357E78[x->unkB5] << 8)) {
                    x->obj2.base.yspeed = -(gUnk_08357E78[x->unkB5] << 8);
                }
            }
            if (!(x->obj2.base.flags & 0x800)) {
                x->obj2.base.unk48 = x->obj2.base.x;
                x->obj2.base.unk4C = x->obj2.base.y;
                x->obj2.base.x += x->obj2.base.xspeed;
                x->obj2.base.y -= x->obj2.base.yspeed;
            }
            if (x->obj2.base.yspeed < 0) {
                x->obj2.base.yspeed += 0x7FFF;
                if (x->obj2.base.yspeed > 0) {
                    x->obj2.base.yspeed = 0;
                }
            } else {
                x->obj2.base.yspeed += -0x7FFF;
                if (x->obj2.base.yspeed < 0) {
                    x->obj2.base.yspeed = 0;
                }
            }
            x->unkB4 = 0;
            x->unkB5++;
        }
        return TRUE;
    }
    x->unkB4 = 0;
    x->unkB5 = 0;
    return FALSE;
}

// sub_08122248: functionally equivalent; remaining diff is register allocation only.
#ifndef NONMATCHING
static NAKED void sub_08122248(struct KirbyCannon *x) {
    asm(".include \"asm/nonmatching/sub_08122248.inc\"");
}
#else
static void sub_08122248(struct KirbyCannon *x) {
    u8 r2 = 4 & x->unkB6;

    if (r2 != 0) {
        if (!sub_0812214C(x)) {
            x->unkB6 = 8;
            x->unkB7 = 3;
            x->obj2.unk78 = sub_08121B70;
        }
    } else {
        x->unkB7--;
        if (x->unkB7 == 0xFF) {
            x->unkB6 |= 4;
            x->obj2.unk83 = r2;
        }
    }
    x->obj2.base.counter++;
}
#endif

void sub_081222AC(struct ObjectBase *base, u8 dir) {
    struct Object4 *eff;

    switch (dir) {
    case 0:
        eff = sub_0808AE30(base, 0, 0x2A8, 0);
        eff->y += -0x1000;
        break;
    case 1:
        eff = sub_0808AE30(base, 0, 0x2A8, 1);
        eff->x += 0xC00;
        eff->y += -0xC00;
        break;
    case 2:
        eff = sub_0808AE30(base, 0, 0x2A8, 2);
        eff->x += 0x1000;
        break;
    case 3:
        eff = sub_0808AE30(base, 0, 0x2A8, 3);
        eff->x += 0xC00;
        eff->y += 0xC00;
        break;
    case 4:
        eff = sub_0808AE30(base, 0, 0x2A8, 4);
        eff->y += 0x1000;
        break;
    case 5:
        eff = sub_0808AE30(base, 0, 0x2A8, 3);
        eff->x += -0xC00;
        eff->y += 0xC00;
        eff->flags |= 1;
        break;
    case 6:
        eff = sub_0808AE30(base, 0, 0x2A8, 2);
        eff->x += -0x1000;
        eff->flags |= 1;
        break;
    case 7:
        eff = sub_0808AE30(base, 0, 0x2A8, 1);
        eff->x += -0xC00;
        eff->y += -0xC00;
        eff->flags |= 1;
        break;
    }
}
