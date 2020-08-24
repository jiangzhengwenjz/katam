#include "functions.h"
#include "object.h"
#include "task.h"
#include "code_0800A868.h"

// TODO: file boundaries

void nullsub_124(struct Object2 *);
void sub_0809F964(struct Object2 *);

void sub_0809EF88(struct Object2 *obj) {
    if (!(gUnk_03000510.unk4 & ((1 << obj->unk56) | 0x10))
        && obj->y + (obj->unk3D << 8) >= gUnk_02023530[obj->unk56].unk54 + 0x1800) {
        obj->unk80 = 0;
        if (obj->type >= 0x38 && obj->type <= 0x52) {
            if (!(obj->unkB0->unk22 & 4))
                sub_08086C48(obj);
            if (obj->type >= 0x38 && obj->type <= 0x52)
                if (!(obj->type >= 0x43 && obj->type <= 0x52))
                    sub_0809D060(obj);
        }
        obj->flags |= 0x1000;
    }
}

void InitObject(struct Object2* arg0, struct Object* arg1, u8 arg2) {
    struct Object* objB0;
    u32 mask;
    sub_0803E380(arg0);
    arg0->unk0 = 1;
    arg0->unk60 = gUnk_02023530[arg2].currentRoom;
    arg0->unk56 = arg2;
    arg0->unk63 = 1;
    arg0->unk83 = 0;
    arg0->type = arg1->type;
    arg0->unk85 = 0;
    arg0->x = arg1->x << 8;
    arg0->y = arg1->y << 8;
    arg0->unk48 = arg0->x;
    arg0->unk4C = arg0->y;
    sub_0803E2B0(arg0, -4, -8, 4, 10);
    sub_0809D8C8(arg0);
    arg0->x = arg1->x << 8;
    arg0->y = arg1->y << 8;
    arg0->unk78 = gUnk_08351648[arg0->type].unk10;
    arg0->unk7C = 0;
    arg0->unk8C = 0;
    arg0->unkB0 = arg1;
    arg0->subtype = arg1->subtype;
    arg0->unk84 = gUnk_08351648[arg0->type].unk6;
    arg0->unk86 = 0;
    arg0->unk90 = 0;
    arg0->unk91 = 0;
    arg0->unk92 = 0;
    arg0->unk93 = 0;
    arg0->unk94 = 0;
    arg0->unk95 = 0;
    arg0->unk96 = 0;
    arg0->unk98 = 0;
    arg0->unk9A = 0;
    arg0->flags = 0x10000000;
    arg0->counter = 0;
    arg0->unk9E = 0;
    arg0->unk9F = 0xff;
    if (arg0->type >= 0x38 && arg0->type <= 0x52) {
        if (arg0->type == 0x4f) {
            arg0->unk80 = gUnk_08351608[arg1->subtype][gUnk_0203AD30 - 1];
            arg0->flags |= 0x4000000;
        }
        else {
            arg0->unk80 = gUnk_08351530[arg0->type - 0x38][gUnk_0203AD30 - 1];
            arg0->flags |= 0x4000000;
        }
    }
    else {
        arg0->unk80 = gUnk_08351648[arg0->type].unk4;
    }
    mask = ~7;
    arg0->unk68 = 0x82;
    if (arg0->type >= 0x5e && arg0->type <= 0x9a) { 
        arg0->unk5C &= mask;
    }
    else {
        arg0->unk5C &= mask;
        arg0->unk5C |= 1;
    }
    if (arg0->type >= 0x38 && arg0->type <= 0x52) {
        arg0->unk5C |= 0x108000;
    }
    arg0->unkAC = sub_0803D368(arg0);
    arg0->unkA0 = arg0->unkAC->unk0.x >> 8;
    arg0->unkA2 = arg0->unkAC->unk0.y >> 8;
    arg0->unk9F = 0;
    if (gUnk_08351648[arg0->type].unkC == 0) {
        arg0->flags |= 0x400;
        arg0->flags |= 8;
    }
    sub_08001678(arg1->unk2, arg1->unk3, gUnk_02023530[arg2].unk65E, 1);
    if (arg0->type <= 0x5c) {
        arg0->unk91 = gUnk_08352AD0[arg0->type].unk1;
        arg0->unk92 = gUnk_08352AD0[arg0->type].unk2;
        arg0->unk93 = gUnk_08352AD0[arg0->type].unk3;
        arg0->unk94 = gUnk_08352AD0[arg0->type].unk0;
        arg0->unk95 = gUnk_08352AD0[arg0->type].unk4;
        arg0->unk96 = gUnk_08352AD0[arg0->type].unk5;
        arg0->unk97 = 0;
    }
    else {
        arg0->unk91 = 0;
        arg0->unk92 = 0;
        arg0->unk93 = 0;
        arg0->unk94 = 0;
        arg0->unk95 = 0;
        arg0->unk96 = 0;
    }
    objB0 = arg0->unkB0;
    if (arg0->type <= 0x64) {
        if (arg0->unkB0->unk22 & 2) {
            arg0->unkC |= 0x1000;
        }
    }
    if (arg0->type <= 0x32) {
        if (arg0->unkB0->unk22 & 0x8000) {
            arg0->unkC |= 0x10;
        }
    }
    if (arg0->type >= 0x6d && arg0->type <= 0x99) {
        arg0->unkC |= 4;
        arg0->unkC |= 1;
    }
    if (arg0->unkB0->unk2 != 0 || arg0->unkB0->unk3 != 31) {
        if (arg0->type <= 0x37) {
            arg0->unkC |= 0x100;
        }
    }
    if (arg0->unk58 & 2) {
        arg0->unkC |= 8;
    }
    arg0->unkA4 = gUnk_02023530[arg0->unk56].unkA0 >> 8;
    arg0->unkA6 = gUnk_02023530[arg0->unk56].unkA4 >> 8;
    arg0->unkA8 = gUnk_02023530[arg0->unk56].unkA8 >> 8;
    arg0->unkAA = gUnk_02023530[arg0->unk56].unkAC >> 8;
}

void ObjectInitSprite(struct Object2* arg0) {
    u8 r7 = 0x1a, ret;
    u16 r4;
    if (arg0->type >= 0x6d && arg0->type <= 0x9a) {
        r7 = 0x1e;
    }
    if (arg0->type >= 0x38 && arg0->type <= 0x52) {
        r7 = 0x1d;
    }
    if (gUnk_08351648[arg0->type].unkC != 0) {
        if (gUnk_02020EE0[gUnk_0203AD3C].unk0.unk60 == arg0->unk60) {
            if (arg0->flags & 0x4000) {
                arg0->unk10.unk0 = sub_0803DD58(arg0->type);
            }
            else {
                arg0->unk10.unk0 = sub_081570B0(gUnk_08351648[arg0->type].unkC);
            }
            arg0->unk10.unk14 = r7 << 6;
            arg0->unk10.unkC = gUnk_08351648[arg0->type].unk14[arg0->unk83].unk0;
            arg0->unk10.unk1A = gUnk_08351648[arg0->type].unk14[arg0->unk83].unk2;
            arg0->unk10.unk16 = 0;
            arg0->unk10.unk1B = 0xff;
            arg0->unk10.unk1C = 0x10;
            r4 = gUnk_08351648[arg0->type].unk8;
            if (arg0->unkC & 0x10) {
                r4 = gUnk_08351648[0x32].unk8;
            }
            ret = sub_0803DF24(r4);
            if (ret == 0xff) {
                if (gUnk_02020EE0[gUnk_0203AD3C].unk0.unk60 == arg0->unk60) {
                    sub_0803DFAC(r4, arg0->unkB0->unkF);
                    ret = sub_0803DF24(r4);
                }
                else {
                    ret = 0;
                }
            }
            arg0->unk10.unk1F = ret;
            arg0->unk10.unk10 = arg0->x >> 8;
            arg0->unk10.unk12 = arg0->y >> 8;
            arg0->unk10.unk8 = 0x42000;
            arg0->unk10.unk20 = ~0;
            sub_08155128(&arg0->unk10);
        }
        else {
            arg0->unk10.unk0 = 0;
            arg0->unk10.unk14 = r7 << 6;
            arg0->unk10.unkC = gUnk_08351648[arg0->type].unk14[arg0->unk83].unk0;
            arg0->unk10.unk1A = gUnk_08351648[arg0->type].unk14[arg0->unk83].unk2;
            arg0->unk10.unk16 = 0;
            arg0->unk10.unk1B = 0xff;
            arg0->unk10.unk1C = 0x10;
            arg0->unk10.unk1F = 0;
            arg0->unk10.unk10 = arg0->x >> 8;
            arg0->unk10.unk12 = arg0->y >> 8;
            arg0->unk10.unk8 = 0xc2000;
            sub_08155128(&arg0->unk10);
        }
    }
}

struct Object2 *CreateEmpty(struct Object *r6, u8 r7) {
    struct Task *task = TaskCreate(ObjectMain, 0xb4, 0x1000, 0, ObjectDestroy);
    struct Object2 *r4;

    sub_0803E380(TASK_GET_STRUCT_PTR(task, r4));
    r4->unk10.unk0 = 0;
    r4->unk0 = 1;
    r4->unk60 = gUnk_02023530[r7].currentRoom;
    r4->unk56 = r7;
    r4->unk83 = 0;
    r4->type = r6->type;
    r4->unk85 = 0;
    r4->unk80 = 0;
    r4->unk78 = nullsub_124;
    r4->unk7C = 0;
    r4->unkB0 = r6;
    r4->unk84 = 0;
    r4->unk86 = 0;
    r4->unk90 = 0;
    r4->unk8C = 0;
    r4->flags = 0;
    r4->unkAC = NULL;
    r4->unk9F = 0;
    sub_08001678(r6->unk2, r6->unk3, gUnk_02023530[r7].unk65E, 1);
    if (r6->unk3 == 31) r4->unkB0 = 0;
    r4->flags = 0xE40;
    return r4;
}

void sub_0809F6BC(struct Object2 *r5) {
    u16 r1, r2;
    u8 r3, r6;

    if (r5->type <= 0x33
        && !(gUnk_0203AD10 & 4)
        && !(r5->unk58 & 0x200)
        && !(Rand16() & 0x3F)) {
        r2 = Rand16();
        for (r1 = 0; r1 < 5; ++r1) {
            if (r2 < 0x2AAA * (r1 + 1))
                break;
        }
        r6 = r1;
        for (r3 = 0; r3 < 0x20; ++r3) {
            if (!(gUnk_020229D4 & (1 << r3))) {
                gUnk_020229D4 |= 1 << r3;
                break;
            }
        }
        gUnk_020229E0[r3].unk0 = 1;
        gUnk_020229E0[r3].unk1 = 36;
        gUnk_020229E0[r3].x = r5->x >> 8;
        gUnk_020229E0[r3].y = r5->y >> 8;
        gUnk_020229E0[r3].unk2 = 0;
        gUnk_020229E0[r3].unk3 = 31;
        gUnk_020229E0[r3].unk4 = 0;
        gUnk_020229E0[r3].unk5 = 0;
        gUnk_020229E0[r3].type = 94;
        gUnk_020229E0[r3].unkE = r6;
        gUnk_020229E0[r3].unkF = 0;
        gUnk_020229E0[r3].subtype = 2;
        gUnk_020229E0[r3].unk22 = 0;
        gUnk_020229E0[r3].unk1A = 0;
        gUnk_020229E0[r3].unk1C = 0;
        gUnk_020229E0[r3].unk1E = 0;
        gUnk_020229E0[r3].unk20 = 0;
        gUnk_020229E0[r3].unk11 = 0;
        gUnk_020229E0[r3].unk12 = 0;
        gUnk_020229E0[r3].unk14 = 0;
        gUnk_020229E0[r3].unk16 = 0;
        gUnk_020229E0[r3].unk18 = 0;
        CreateObject(r5->unk56, &gUnk_020229E0[r3]);
        sub_0808AE30(r5, 0, 0x2B4, 0);
    }
}

void ObjectSetFunc(struct Object2 *obj, u16 a2, void (*func)(struct Object2 *)) {
    obj->counter = 0;
    obj->unk9E = 0;
    if ((a2 << 16) != 0xFFFF0000)
        obj->unk83 = a2;
    obj->unk78 = func;
    obj->unk9F = -1;
    obj->flags |= 4;
}

void sub_0809F818(struct Object2 *obj) {
    u32 r2 = obj->unk9D;

    obj->unk9D = gUnk_02020EE0[0].unk118;
    obj->unk9C = (r2 ^ obj->unk9D) & obj->unk9D;
}

void sub_0809F840(struct Object2 *obj) {
    if ((obj->unk70->unk0.flags & 0x1000 || obj->unk70->unk0.unk80 <= 0)
        && !(obj->unkC & 0x400)) {
        if (!(obj->flags & 0x1000))
            sub_0809DA30(obj);
        obj->unk80 = 0;
        obj->flags |= 0x1000;
    }
}

void sub_0809F88C(struct Object2 *obj) {
    ++obj->counter;
    obj->unk10.unk1C = 0;
    if (obj->counter == 2) {
        obj->flags |= 0x1000;
        sub_0809DA30(obj);
    }
}

void sub_0809F8BC(struct Object2 *obj) {
    struct Kirby *kirby = obj->unk70;

    obj->flags |= 0x2F00;
    obj->unk10.unk8 = obj->unk10.unk8 & 0xFFFFF7FF;
    obj->unk10.unk8 |= kirby->unk0.unk10.unk8 & 0x800;
    obj->flags &= 0xFFFFFFFE;
    obj->flags |= (kirby->unk0.flags & 1);
    obj->x = kirby->unk0.x;
    obj->y = kirby->unk0.y;
    obj->unk54 = kirby->unk0.unk54;
    obj->unk55 = kirby->unk0.unk55;
    if (kirby->unk0.flags & 0x1000)
        obj->flags |= 0x1000;
}

void sub_0809F938(struct Object2 *obj) {
    u32 unkC;

    obj->xspeed = 0;
    obj->yspeed = 0;
    obj->unk70 = obj->unk6C;
    obj->counter = 0;
    unkC = obj->unkC | 1;
    obj->unk78 = sub_0809F964;
    obj->unkC = unkC | 0x400;
}

void sub_0809F964(struct Object2 *obj) {
    struct Kirby *kirby = obj->unk70;

    obj->x = kirby->unk0.x;
    obj->y = kirby->unk0.y;
}

void nullsub_123(struct Object2 *obj) {}

void sub_0809F974(struct Object2 *obj) {
    u32 flags = obj->flags;

    flags |= 0x200;
    flags |= 0x40;
    flags &= 0xFFFFFFDF;
    obj->flags = flags;
}

void sub_0809F988(struct Object2 *obj) {
    if (++obj->counter > 0x28) {
        if (++obj->counter > 0x1e) {
            sub_0809DA30(obj);
            obj->flags |= 0x1000;
        }
    }
}

void nullsub_124(struct Object2 *obj) {}
