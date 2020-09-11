#include "bonus.h"
#include "code_0800A868.h"
#include "data.h"
#include "functions.h"
#include "object.h"
#include "main.h"

struct Object2* CreateBonus(struct Object* arg0, u8 arg1) {
    struct Task* task = TaskCreate(ObjectMain, 0xb4, 0x2f9c, 0x10, ObjectDestroy);
    struct Object2 *obj, *obj2;

    obj = TASK_GET_STRUCT_PTR(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->flags |= 0x10000000;
    obj->unkC |= 1;
    obj->flags |= 0x10000;
    obj->flags |= 0x200000;
    obj->flags |= 0x400000;
    obj->unk68 &= ~7;
    obj->unk5C |= ~0xa7;
    obj->flags |= 1;
    obj->unkC |= 0x100;
    sub_0803E2B0(obj, -5, 1 - 7, 5, 5);
    sub_0803E308(obj, -6, -7, 6, 7);
    if (obj->unkB0->subtype == 0) {
        obj->y = ((obj->y + (obj->unk3F << 8) + 0xfff) & 0xfffff000) - (obj->unk3F << 8) - 1;
        obj->unk4C = obj->y;
    }
    ObjectInitSprite(obj);
    obj->unk10.unk14 = 0x700;
    if (obj->type == 0x5e) {
        obj->unk83 = obj->unkB0->unkE;
    }
    if (obj->unkB0->subtype != 0) {
        if (obj->unkB0->subtype != 3) {
            if (obj->unkB0->subtype == 4) {
                sub_08123924(obj);
                return obj;
            }
            else {
                if (obj->unkB0->subtype == 2) {
                    obj->yspeed = 0x180;
                    sub_08123814(obj);
                }
                else {
                    sub_081238D0(obj);
                }
            }
        }
        else {
            return obj;
        }
    }
    else {
        sub_08123780(obj);
        if (!(obj->unkB0->unk22 & 4)) {
            sub_0809513C(obj, 0, 0);
        }
    }
    if (obj->unkB0->unk22 & 8) {
        obj->flags |= 0x40;
        obj->flags |= 0x100;
    }
    return obj;
}

void sub_08122CEC(struct Object2* arg0) {
    struct Kirby* r8 = arg0->unk70;
    arg0->flags |= 0x200;
    if (r8->unkD4 == 0x69) {
        if (--arg0->counter << 0x10 == 0) {
            PlaySfx(arg0, 0xa6);
            sub_08123814(arg0);
            arg0->xspeed = (Rand16() & 0xff) - 0x60;
            arg0->yspeed = (Rand16() & 0xff) + 0x1a0;
            if (r8->base.flags & 1) {
                arg0->xspeed = -arg0->xspeed;
            }
        }
    }
    else {
        if (r8->unkD4 == 0x34) {
            arg0->counter++;
        }
    }
}

void sub_08122E08(struct Object2* arg0) {
    arg0->flags |= 0x200;
    if (--arg0->counter << 0x10 == 0) {
        PlaySfx(arg0, 0xa6);
        arg0->yspeed = 0x240;
        sub_0808AE30(arg0, 0, 0x2B4, 0);
        sub_0809513C(arg0, 0, 0);
        sub_08123814(arg0);
    }
}

void sub_08122ED4(struct Object2* arg0) {
    u16 r2;
    if (arg0->unkB0->subtype != 0) {
        if (arg0->counter > 0xf0) {
            if (arg0->counter & 2) {
                arg0->flags |= 0x400;
            }
            else {
                arg0->flags &= ~0x400;
            }
        }
        if (arg0->counter == 0x168) {
            arg0->flags |= 0x1000;
            arg0->flags |= 0x400;
            return;
        }
        else {
            arg0->counter++;
        }
    }
    if (arg0->flags & 0x40000) {
        struct Kirby* kirby = arg0->unk6C;
        if (kirby->base.unk0 == 0) {
            if (sub_0803925C(arg0, kirby) != 0) {
                if (kirby->base.unk56 < gUnk_0203AD30) {
                    BonusSetFunc(arg0);
                }
            }
        }
    }
}

void BonusSetFunc(struct Object2* arg0) {
    struct Kirby* kirby = arg0->unk6C;
    if (kirby->hp > 0) {
        if (!(gUnk_03000510.unk4 & (0x10 | 1 << arg0->unk56))) {
            arg0->counter = 0;
            arg0->flags |= 0x600;
            arg0->flags |= 0x800;
            switch (arg0->type) {
            default:
                sub_08033540(kirby->base.unk56);
                arg0->flags |= 0x2000;
                arg0->unk78 = BonusAddHpOrBattery;
                break;
            case 99:
                arg0->unk78 = BonusAddLives;
                break;
            case 100:
                arg0->unk78 = BonusGiveInvincibility;
                break;
            }

            if (arg0->unkB0->unk2 != 0 || arg0->unkB0->unk3 != 31) {
                sub_080029F4(gCurLevelInfo[arg0->unk56].unk65E, 1);
            }
            PlaySfx(arg0, 0x1f4);
        }
    }
}

void BonusAddHpOrBattery(struct Object2* arg0) {
    struct Kirby* kirby = arg0->unk6C;
    u8 r8;

    if (++arg0->counter > 4) {
        arg0->unk80--;
        arg0->counter = 0;
        if (arg0->type != 0x62) {
            if (kirby->hp >= kirby->maxHp) {
                r8 = 0;
                kirby->hp = kirby->maxHp;
            }
            else {
                r8 = 1;
                kirby->hp++;
                PlaySfx(&kirby->base, 0x1f6);
            }

            if (!r8 || arg0->unk80 == 0) {
                kirby->unkE1 = 0;
                kirby->unkE4 = 0;
                kirby->unkE5 = 0xff;
                kirby->unkE2 = gUnk_08351648[arg0->type].unk4;
                arg0->unk80 = 0;
                arg0->flags |= 0x1000;
                sub_080335B4(kirby->base.unk56);
                gUnk_0203AD20 &= ~1;
            }
        }
        else {
            if (kirby->battery <= 2) {
                kirby->battery++;
                PlaySfx(&kirby->base, 0x1f6);
            }
            arg0->unk80 = 0;
            arg0->flags |= 0x1000;
            sub_080335B4(kirby->base.unk56);
            gUnk_0203AD20 &= ~1;
        }
    }
    arg0->counter++;
}

void sub_081232AC(struct Kirby* arg0, u8 arg1) {
    if (arg0->unkE5 != 0) {
        arg0->unkE5 = 0xff;
    }
    else {
        if (arg0->base.unk60 > 0x383 || arg0->base.unk60 == 0x321 || arg0->base.unk60 == gUnk_0835105C[1]
            || arg0->base.unk60 == gUnk_0835105C[2] || arg0->base.unk60 == gUnk_0835105C[3]
            || arg0->base.unk60 == gUnk_0835105C[4] || arg0->base.unk60 == gUnk_0835105C[5]
            || arg0->base.unk60 == gUnk_0835105C[6] || arg0->base.unk60 == gUnk_0835105C[7] || arg0->base.unk60 == gUnk_0835105C[8]) {
            if (arg1 == 4) {
                arg1 = 2;
            }
        }
        switch (arg1) {
        case 0:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = gUnk_08351648[0x5e].unk4;
            break;
        case 1:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = gUnk_08351648[0x5f].unk4;
            break;
        case 2:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = gUnk_08351648[0x60].unk4;
            break;
        case 3:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = gUnk_08351648[0x61].unk4;
            break;
        case 4:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0x64;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = 0x3e8;
            break;
        case 5:
            arg0->unkE1 = 0;
            arg0->unkE4 = 0x63;
            arg0->unkE5 = 0xff;
            arg0->unkE2 = 1;
            break;
        }
    }
}

void BonusAddLives(struct Object2* arg0) {
    struct Kirby* kirby = arg0->unk6C;
#ifndef NONMATCHING
    asm("":::"r5"); //sad
#endif
    if (kirby->lives > 0xfe) {
        kirby->lives = 0xff;
    }
    else {
        kirby->lives++;
        PlaySfx(&kirby->base, 0x1f5);
    }
    arg0->flags |= 0x1000;
    arg0->unk80 = 0;
}

struct Object2* BonusCreateTomatoAt(struct Kirby* arg0, u16 arg1, u16 arg2) {
    struct Object2* obj;
    u8 r4;

    for (r4 = 0; r4 < 0x20; ++r4) {
        if (!(gUnk_020229D4 & (1 << r4))) {
            gUnk_020229D4 |= 1 << r4;
            break;
        }
    }

    gUnk_020229E0[r4].unk0 = 1;
#ifndef NONMATCHING
    asm("":::"r0", "r2");
#endif
    gUnk_020229E0[r4].unk1 = 0x24;
    gUnk_020229E0[r4].x = arg1;
    gUnk_020229E0[r4].y = arg2;
    gUnk_020229E0[r4].unk2 = 0;
    gUnk_020229E0[r4].unk3 = 0x1f;
    gUnk_020229E0[r4].unk4 = 0;
    gUnk_020229E0[r4].unk5 = 0;
    gUnk_020229E0[r4].type = 0x61;
    gUnk_020229E0[r4].unkE = 0;
    gUnk_020229E0[r4].unkF = 0;
    gUnk_020229E0[r4].subtype = 0;
    gUnk_020229E0[r4].unk22 = 0;
    gUnk_020229E0[r4].unk1A = 0;
    gUnk_020229E0[r4].unk1C = 0;
    gUnk_020229E0[r4].unk1E = 0;
    gUnk_020229E0[r4].unk20 = 0;
    gUnk_020229E0[r4].unk11 = 0;
    gUnk_020229E0[r4].unk12 = 0;
    gUnk_020229E0[r4].unk14 = 0;
    gUnk_020229E0[r4].unk16 = 0;
    gUnk_020229E0[r4].unk18 = 0;
    obj = CreateObject(arg0->base.unk56, &gUnk_020229E0[r4]);
    obj->flags |= 0x2000000;
    return obj;
}

struct Object2* BonusCreateTomato(struct Kirby* arg0) {
    struct Object2* obj;
    u8 r4;

    for (r4 = 0; r4 < 0x20; ++r4) {
        if (!(gUnk_020229D4 & (1 << r4))) {
            gUnk_020229D4 |= 1 << r4;
            break;
        }
    }

    gUnk_020229E0[r4].unk0 = 1;
    gUnk_020229E0[r4].unk1 = 0x24;
    gUnk_020229E0[r4].x = arg0->base.x >> 8;
    gUnk_020229E0[r4].y = arg0->base.y >> 8;
    gUnk_020229E0[r4].unk2 = 0;
    gUnk_020229E0[r4].unk3 = 0x1f;
    gUnk_020229E0[r4].unk4 = 0;
    gUnk_020229E0[r4].unk5 = 0;
    gUnk_020229E0[r4].type = 0x61;
    gUnk_020229E0[r4].unkE = 0;
    gUnk_020229E0[r4].unkF = 0;
    gUnk_020229E0[r4].subtype = 3;
    gUnk_020229E0[r4].unk22 = 0;
    gUnk_020229E0[r4].unk1A = 0;
    gUnk_020229E0[r4].unk1C = 0;
    gUnk_020229E0[r4].unk1E = 0;
    gUnk_020229E0[r4].unk20 = 0;
    gUnk_020229E0[r4].unk11 = 0;
    gUnk_020229E0[r4].unk12 = 0;
    gUnk_020229E0[r4].unk14 = 0;
    gUnk_020229E0[r4].unk16 = 0;
    gUnk_020229E0[r4].unk18 = 0;
    obj = CreateObject(arg0->base.unk56, &gUnk_020229E0[r4]);
    obj->counter = 0;
    obj->xspeed = 0;
    obj->yspeed = 0;
    obj->flags |= 0xf00;
    obj->unk6C = arg0;
    obj->unk78 = sub_081238FC;
    return obj;
}

void BonusCreateRandom(struct Object2* arg0, u8 arg1) {
    s32 rng;
    u16 i;
    u8 j, type, temp = 0;
    const u8 * arr;
    struct Object* obj;
    if (!(gUnk_02020EE0[arg1].base.unkC & 0x1000000)) {
        gUnk_02020EE0[arg1].base.unkC |= 0x1000000;
        if (arg1 < 5) {
            if (!(Rand16() & 1)) {
                arr = gUnk_08357F44;
                type = arr[Rand16() & 0xf] + 0x5e;
                if (type == 0x5e) {
                    rng = Rand16();
                    for (i = 0; i < 5; ++i) {
                        if (rng < (i + 1) * 0x2aaa) {
                            break;
                        }
                    }
                    temp = i;
                }
                for (j = 0; j < 0x20; j++) {
                    if (!(gUnk_020229D4 & (1 << j))) {
                        gUnk_020229D4 |= 1 << j;
                        break;
                    }
                }
                obj = &gUnk_020229E0[j];
                obj->unk0 = 1;
                obj->unk1 = 0x24;
                obj->x = arg0->x >> 8;
                obj->y = arg0->y >> 8;
                obj->unk2 = 0;
                obj->unk3 = 0x1f;
                obj->unk4 = 0;
                obj->unk5 = 0;
                obj->type = type;
                obj->unkE = temp;
                obj->unkF = 0;
                obj->subtype = 4;
                obj->unk22 = 0;
                obj->unk1A = 0;
                obj->unk1C = 0;
                obj->unk1E = 0;
                obj->unk20 = 0;
                obj->unk11 = 0;
                obj->unk12 = 0;
                obj->unk14 = 0;
                obj->unk16 = 0;
                obj->unk18 = 0;
                CreateObject(arg0->unk56, obj);
            }
        }
    }
}

void sub_08123780(struct Object2* arg0) {
    arg0->counter = 0;
    arg0->xspeed = 0;
    arg0->yspeed = 0;
    arg0->unk78 = sub_08122ED4;
}

void sub_0812379C(struct Kirby* arg0) {
    sub_081232AC(arg0, gUnk_08357F24[Rand16() & 0x1f]);
}

void BonusGiveInvincibility(struct Object2* arg0) {
    struct Kirby* kirby = arg0->unk6C;
    kirby->unkE1 = 0;
    kirby->unkE4 = 0x64;
    kirby->unkE5 = 0xff;
    kirby->unkE2 = 0x3e8;
    sub_0808324C(kirby, 0x3e8);
    arg0->flags |= 0x1000;
    arg0->unk80 = 0;
}

void sub_08123814(struct Object2* arg0) {
    arg0->counter = 0;
    arg0->flags &= ~0x400;
    arg0->flags &= ~0x800;
    arg0->flags &= ~0x200;
    arg0->unk78 = sub_0812385C;
    if (arg0->unkB0->subtype == 4) {
        arg0->flags &= ~0x100;
    }
}

void sub_0812385C(struct Object2* arg0) {
    if (arg0->yspeed <= 0) {
        arg0->flags &= ~0x100;
    }
    if (arg0->flags & 0x40000) {
        struct Kirby* kirby = arg0->unk6C;
        if (kirby->base.unk0 == 0) {
            if (sub_0803925C(arg0, kirby) != 0) {
                if (kirby->base.unk56 < gUnk_0203AD30) {
                    BonusSetFunc(arg0);
                }
                return;
            }
        }
    }
    if (arg0->unk62 & 4) {
        sub_08123780(arg0);
    }
}

void sub_081238D0(struct Object2* arg0) {
    arg0->counter = 5;
    arg0->flags |= 0x400;
    arg0->flags |= 0x800;
    arg0->flags |= 0x100;
    arg0->flags |= 0x200;
    arg0->unk78 = sub_08122CEC;
}

void sub_081238FC(struct Object2* arg0) {
    struct Kirby* kirby = arg0->unk6C;
    if (kirby->base.unk0 == 0) {
        if (kirby->base.unk56 < gUnk_0203AD30) {
            BonusSetFunc(arg0);
        }
    }
}

void sub_08123924(struct Object2* arg0) {
    arg0->counter = 0x20;
    arg0->flags |= 0x400;
    arg0->flags |= 0x800;
    arg0->flags |= 0x100;
    arg0->flags |= 0x200;
    arg0->unk78 = sub_08122E08;
}
