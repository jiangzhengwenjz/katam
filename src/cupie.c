#include "code_0800A868.h"
#include "cupie.h"
#include "functions.h"

static const struct Unk_08353510 gUnk_08352FD4[] = 
{
    {-0x60, -0xa0, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    {-0xa0, -0x80, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    {-0xf0, -0x30, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    {-0xf0,  0x30, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    {-0xa0,  0x80, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    {-0x60,  0xa0, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    { 0x60,  0xa0, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    { 0xa0,  0x80, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    { 0xf0,  0x30, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    { 0xf0, -0x30, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    { 0xa0, -0x80, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    { 0x60, -0xa0, 0x0000, 0x0000, 0x14, 0x00, 0x00, 0x00},
    { 0x00,  0x00, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00},
};

static const struct Unk_08353510 gUnk_08353070[] = 
{
    { 0x140, -0x20, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0xf0, -0x38, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x60, -0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x60, -0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0xf0, -0x38, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x140, -0x20, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x140,  0x20, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0xf0,  0x38, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x60,  0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x60,  0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0xf0,  0x38, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x140,  0x20, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x140,  0x20, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0xf0,  0x38, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x60,  0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x60,  0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0xf0,  0x38, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x140,  0x20, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x140, -0x20, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0xf0, -0x38, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x60, -0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x60, -0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0xf0, -0x38, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x140, -0x20, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x00,  0x00, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00},
    { 0x240, -0x10, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x1a0, -0x28, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0xa0, -0x40, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0xa0, -0x40, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x1a0, -0x28, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x240, -0x10, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x240,  0x10, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x1a0,  0x28, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0xa0,  0x40, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0xa0,  0x40, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x1a0,  0x28, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x240,  0x10, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x240,  0x10, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x1a0,  0x28, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0xa0,  0x40, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0xa0,  0x40, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x1a0,  0x28, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x240,  0x10, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x240, -0x10, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x1a0, -0x28, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0xa0, -0x40, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0xa0, -0x40, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x1a0, -0x28, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x240, -0x10, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x00,  0x00, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00},
};

static const struct Unk_08353510 gUnk_083532C8[] = 
{
    {-0x20,  0xe0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x38,  0xc0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x60,  0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x60, -0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x38, -0xc0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x20, -0xe0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x20, -0xe0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x38, -0xc0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x60, -0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x60,  0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x38,  0xc0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x20,  0xe0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x20,  0xe0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x38,  0xc0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x60,  0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x60, -0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x38, -0xc0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x20, -0xe0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x20, -0xe0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x38, -0xc0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x60, -0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x60,  0x60, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x38,  0xc0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    {-0x20,  0xe0, 0x0000, 0x0000, 0x10, 0x00, 0x00, 0x00},
    { 0x00,  0x00, 0x0000, 0x0000, 0x00, 0x00, 0x00, 0x00},
};

static const u8 gUnk_083533F4[] = 
{
    0x00, 0x00, 0x01, 0x01, 0x02, 0x02, 0x03, 0x03, 0x04, 0x04,
    0x03, 0x03, 0x02, 0x02, 0x01, 0x01, 0x00, 0x00, 0x00, 0x00,
    0x08, 0x03, 0x00, 0x00, 0x08, 0x03, 0x01, 0x00, 0x08, 0x03,
    0x02, 0x00, 0x08, 0x03, 0x03, 0x00, 0x08, 0x03, 0x04, 0x00,
    0x08, 0x03, 0x05, 0x00, 0x0f, 0x03, 0x00, 0x00, 0x0f, 0x03,
    0x01, 0x00, 0x0f, 0x03, 0x02, 0x00, 0x0f, 0x03, 0x03, 0x00,
    0x0f, 0x03, 0x04, 0x00, 0x14, 0x03, 0x00, 0x00, 0x14, 0x03,
    0x01, 0x00, 0x14, 0x03, 0x02, 0x00, 0x14, 0x03, 0x03, 0x00,
    0x14, 0x03, 0x04, 0x00, 0x28, 0x03, 0x00, 0x00, 0x28, 0x03,
    0x01, 0x00, 0x28, 0x03, 0x02, 0x00, 0x28, 0x03, 0x03, 0x00,
    0x28, 0x03, 0x04, 0x00, 0x28, 0x03, 0x05, 0x00, 0x28, 0x03,
    0x06, 0x00, 0x28, 0x03, 0x07, 0x00, 0x28, 0x03, 0x06, 0x00,
    0x28, 0x03, 0x08, 0x00, 0x28, 0x03, 0x0a, 0x00, 0x28, 0x03,
    0x0b, 0x00, 0x28, 0x03, 0x0c, 0x00, 0x28, 0x03, 0x0d, 0x00,
};

static void sub_080A2AF0(struct Object2* arg0);
static void sub_080A2B6C(struct Object2* arg0);
static void sub_080A2E38(struct Object2* arg0);
static void sub_080A3008(struct Object2* arg0);
static void sub_080A31D8(struct Object2* arg0);
static void sub_080A35C8(struct Object2* arg0);
static void sub_080A37F4(struct Object2* arg0);
static void sub_080A389C(struct Object2* arg0);
static void sub_080A3A24(struct Object2* arg0);
static void sub_080A3A4C(struct Object2* arg0);
static void sub_080A3A74(struct Object2* arg0);
static void sub_080A3A9C(struct Object2* arg0);
static void sub_080A3AFC(struct Object2* arg0);
static void sub_080A3B5C(struct Object2* arg0);
static void sub_080A3B94(struct Object2* arg0);

struct Object2* CreateCupie(struct Object* arg0, u8 arg1) {
    struct Task* task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *obj2, *obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    sub_0803E2B0(&obj->base, -5, -3, 5, 8);
    sub_0803E308(&obj->base, -6, -4, 6, 10);
    obj->base.flags |= 0x140;
    if (obj->base.x > obj->kirby3->base.base.x) {
        obj->base.flags |= 1;
    }
    else {
        obj->base.flags &= ~1;
    }
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    if (obj->object->subtype1 == 0) {
        obj->unk9F = 0xff;
    }
    return obj;
}

void sub_080A2AF0(struct Object2* arg0) {
    arg0->base.flags |= 0x140;
    arg0->base.flags &= ~0x20;
    switch (arg0->object->subtype1) {
    case 4:
    case 3:
        sub_080A3AFC(arg0);
        break;
    case 1:
        sub_080A3A4C(arg0);
        break;
    case 2:
        sub_080A3A24(arg0);
        break;
    default:
        arg0->unk83 = 0;
        arg0->unk78 = sub_080A2B6C;
        arg0->base.flags &= ~0x800;
        if (arg0->subtype != 0) {
            arg0->base.counter = 0x10e;
        }
        else {
            arg0->base.counter = 0x5a;
        }
    }
}

void sub_080A2B6C(struct Object2* arg0) {
    u8 idx;
#ifndef NONMATCHING
    register const struct Unk_08353510 *p asm("r1");
#else
    const struct Unk_08353510 *p;
#endif
    arg0->base.flags |= 4;
    if (arg0->unk85 != 0) {
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08352FD4[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08352FD4[arg0->unk9F].unk8;
            if (gUnk_08352FD4[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08352FD4[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08352FD4[arg0->unk9F].unk0 != gUnk_08352FD4[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gUnk_08352FD4[arg0->unk9F].unk0;
                }
                if (gUnk_08352FD4[arg0->unk9F].unk2 != gUnk_08352FD4[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = -gUnk_08352FD4[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gUnk_08352FD4[arg0->unk9F].unk2;
                arg0->base.xspeed = gUnk_08352FD4[arg0->unk9F].unk0;
                arg0->base.yspeed = -arg0->base.yspeed;
            }
        }
        arg0->base.xspeed += gUnk_08352FD4[arg0->unk9F].unk4;
        arg0->base.yspeed -= gUnk_08352FD4[arg0->unk9F].unk6;
    }
    else {
        if (arg0->unk9E == 0) {
            arg0->unk9F++;
            if (gUnk_08352FD4[arg0->unk9F].unk8 == 0) {
                arg0->unk9F--;
            }
            arg0->unk9E = gUnk_08352FD4[arg0->unk9F].unk8;
            if (gUnk_08352FD4[arg0->unk9F].unk9 != 0xff) {
                arg0->unk83 = gUnk_08352FD4[arg0->unk9F].unk9;
            }
            if (arg0->unk9F != 0) {
                if (gUnk_08352FD4[arg0->unk9F].unk0 != gUnk_08352FD4[arg0->unk9F - 1].unk0) {
                    arg0->base.xspeed = gUnk_08352FD4[arg0->unk9F].unk0;
                }
                if (gUnk_08352FD4[arg0->unk9F].unk2 != gUnk_08352FD4[arg0->unk9F - 1].unk2) {
                    arg0->base.yspeed = gUnk_08352FD4[arg0->unk9F].unk2;
                }
            }
            else {
                arg0->base.yspeed = gUnk_08352FD4[arg0->unk9F].unk2;
                arg0->base.xspeed = gUnk_08352FD4[arg0->unk9F].unk0;
            }
        }
        arg0->base.xspeed += gUnk_08352FD4[arg0->unk9F].unk4;
        arg0->base.yspeed += gUnk_08352FD4[arg0->unk9F].unk6;
    }
    arg0->unk9E--;
    idx = arg0->unk9F + 1;
    p = &gUnk_08352FD4[idx];
    if (p->unk8 == 0) {
        u32 unk9E = arg0->unk9E;
        if (unk9E == 0) {
            arg0->unk9F = 0xff;
        }
    }
    arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
    if (--arg0->base.counter == 0) {
        arg0->kirby3 = sub_0803D368(arg0);
        if (arg0->base.x > arg0->kirby3->base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
        arg0->base.counter = 0x3c;
        if (Rand16() & 1) {
            sub_080A3A74(arg0);
        }
    }
}

void sub_080A2E38(struct Object2* arg0) {
    register u32 v, r0;
    u8 idx;

    arg0->base.flags |= 4;
    if (arg0->unk9E == 0) {
        arg0->unk9F++;
        if (gUnk_08353070[arg0->unk9F].unk8 == 0) {
            arg0->unk9F--;
        }
        arg0->unk9E = gUnk_08353070[arg0->unk9F].unk8;
        if (gUnk_08353070[arg0->unk9F].unk9 != 0xff) {
            arg0->unk83 = gUnk_08353070[arg0->unk9F].unk9;
        }
        if (arg0->unk9F != 0) {
            if (gUnk_08353070[arg0->unk9F].unk0 != gUnk_08353070[arg0->unk9F - 1].unk0) {
                arg0->base.xspeed = gUnk_08353070[arg0->unk9F].unk0;
            }
            if (gUnk_08353070[arg0->unk9F].unk2 != gUnk_08353070[arg0->unk9F - 1].unk2) {
                arg0->base.yspeed = gUnk_08353070[arg0->unk9F].unk2;
            }
        }
        else {
            arg0->base.yspeed = gUnk_08353070[arg0->unk9F].unk2;
            arg0->base.xspeed = gUnk_08353070[arg0->unk9F].unk0;
        }
    }
    arg0->base.xspeed += gUnk_08353070[arg0->unk9F].unk4;
    arg0->base.yspeed += gUnk_08353070[arg0->unk9F].unk6;
    arg0->unk9E--;
    v = arg0->unk9F;
    if (gUnk_08353070[(u8)(arg0->unk9F + 1)].unk8 == 0 && arg0->unk9E == 0) {
#ifndef NONMATCHING
        asm("mov\t%0, #0xFF\n"
            "\torr\t%0, %1\n"
            :"=r"(r0)
            :"r"(v));
        arg0->unk9F = r0;
#else
        arg0->unk9F = 0xFF;
#endif
    }
    arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
    if (--arg0->base.counter == 0) {
        arg0->kirby3 = sub_0803D368(arg0);
        if (arg0->base.x > arg0->kirby3->base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
        arg0->base.counter = 0x3c;
        if (Rand16() & 1) {
            arg0->unk83 = 1;
            arg0->unk78 = sub_080A3A9C;
            arg0->base.flags &= ~2;
            arg0->base.flags |= 0x140;
            arg0->base.flags |= 0x800;
        }
    }
}

void sub_080A3008(struct Object2* arg0) {
    register u32 r0, v;
    u8 idx;
    arg0->base.flags |= 4;
    if (arg0->unk9E == 0) {
        arg0->unk9F++;
        if (gUnk_083532C8[arg0->unk9F].unk8 == 0) {
            arg0->unk9F--;
        }
        arg0->unk9E = gUnk_083532C8[arg0->unk9F].unk8;
        if (gUnk_083532C8[arg0->unk9F].unk9 != 0xff) {
            arg0->unk83 = gUnk_083532C8[arg0->unk9F].unk9;
        }
        if (arg0->unk9F != 0) {
            if (gUnk_083532C8[arg0->unk9F].unk0 != gUnk_083532C8[arg0->unk9F - 1].unk0) {
                arg0->base.xspeed = gUnk_083532C8[arg0->unk9F].unk0;
            }
            if (gUnk_083532C8[arg0->unk9F].unk2 != gUnk_083532C8[arg0->unk9F - 1].unk2) {
                arg0->base.yspeed = gUnk_083532C8[arg0->unk9F].unk2;
            }
        }
        else {
            arg0->base.yspeed = gUnk_083532C8[arg0->unk9F].unk2;
            arg0->base.xspeed = gUnk_083532C8[arg0->unk9F].unk0;
        }
    }
    arg0->base.xspeed += gUnk_083532C8[arg0->unk9F].unk4;
    arg0->base.yspeed += gUnk_083532C8[arg0->unk9F].unk6;
    arg0->unk9E--;
    v = arg0->unk9F;
    if (gUnk_083532C8[(u8)(arg0->unk9F + 1)].unk8 == 0) {
        if (arg0->unk9E == 0) {
#ifndef NONMATCHING
            asm("mov\t%0, #0xFF\n"
                "\torr\t%0, %1\n"
                :"=r"(r0)
                :"r"(v));
            arg0->unk9F = r0; //wtf
#else
            arg0->unk9F = 0xff;
#endif
        }
    }
    arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
    if (--arg0->base.counter == 0) {
        arg0->kirby3 = sub_0803D368(arg0);
        if (arg0->base.x > arg0->kirby3->base.base.x) {
            arg0->base.flags |= 1;
        }
        else {
            arg0->base.flags &= ~1;
        }
        arg0->base.counter = 0x3c;
        if (Rand16() & 1) {
            arg0->unk83 = 1;
            arg0->unk78 = sub_080A3A9C;
            arg0->base.flags &= ~2;
            arg0->base.flags |= 0x140;
            arg0->base.flags |= 0x800;
        }
    }
}

void sub_080A31D8(struct Object2* arg0) {
    s32 r4, r3;
    arg0->base.flags |= 4;
    if (arg0->base.flags & 2) {
        arg0->kirby3 = sub_0803D368(arg0);
    }
    if (arg0->base.x > arg0->kirby3->base.base.x) {
        if (++arg0->unk9E > 0xf) {
            arg0->kirby3 = sub_0803D368(arg0);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.base.y >> 8;
        }
        r4 = arg0->base.y & 0xFFFFF000;
        r3 = ((arg0->unkA2 - 0x40) << 8) & 0xFFFFF000;
        // Stalk Y position
        if (r4 > r3) {
            arg0->base.yspeed += 8;
            if (arg0->base.yspeed > 0x100) {
                arg0->base.yspeed = 0x100;
            }
        }
        else if (r4 < r3) {
            if ((arg0->base.yspeed -= 8) < -0x100) {
                arg0->base.yspeed = -0x100;
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
        r4 = arg0->base.x & 0xFFFFF000;
        r3 = ((arg0->unkA0 + 0x60) << 8) & 0xFFFFF000;
        // Stalk X position
        if (r4 < r3) {
            arg0->base.flags &= ~1;
            arg0->base.xspeed += 8;
            if (arg0->base.xspeed > 0x100) {
                arg0->base.xspeed = 0x100;
            }
            else if (arg0->base.xspeed < -0x100) {
                arg0->base.xspeed = -0x100;
            }
        }
        else if (r4 > r3) {
            arg0->base.flags |= 1;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed -= 8;
                if (arg0->base.xspeed < -0x100) {
                    arg0->base.xspeed = -0x100;
                }
                else if (arg0->base.xspeed > 0x100) {
                    arg0->base.xspeed = 0x100;
                }
            }
            else {
                arg0->base.xspeed += 8;
                if (arg0->base.xspeed > 0x100) {
                    arg0->base.xspeed = 0x100;
                }
                else if (arg0->base.xspeed < -0x100) {
                    arg0->base.xspeed = -0x100;
                }
            }
        }
        else {
            if (arg0->base.xspeed < 0) {
                // Equivalent to if((obj->base.xspeed += 4) > 0)
                if ((arg0->base.xspeed += 4) << 0x10 > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                // Equivalent to if((obj->base.xspeed -= 4) > 0)
                if ((arg0->base.xspeed -= 4) << 0x10 < 0) {
                    arg0->base.xspeed = 0;
                }
            }
        }
        arg0->base.flags |= 1;
        if (arg0->base.counter == 0) {
            if ((arg0->base.x & 0xfffff000) == ((arg0->kirby3->base.base.x + 0x6000) & 0xfffff000)) {
                if ((arg0->base.y & 0xfffff000) == ((arg0->kirby3->base.base.y - 0x4000) & 0xfffff000)) {
                    arg0->unk85++;
                    arg0->unk83 = 1;
                    arg0->unk78 = sub_080A3A9C;
                    arg0->base.flags &= ~2;
                    arg0->base.flags |= 0x140;
                    arg0->base.flags |= 0x800;
                }
                else {
                    arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
                }
            }
            else {
                arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
            }
        }
        else {
            arg0->base.counter--;
            arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
        }
    }
    else {
        arg0->unk9E++;
        if (arg0->unk9E > 0xf) {
            arg0->kirby3 = sub_0803D368(arg0);
            arg0->unk9E = 0;
            arg0->unkA0 = arg0->kirby3->base.base.x >> 8;
            arg0->unkA2 = arg0->kirby3->base.base.y >> 8;
        }
         r4 = arg0->base.y & 0xFFFFF000;
        r3 = ((arg0->unkA2 - 0x40) << 8) & 0xFFFFF000;
        // Stalk Y position
        if (r4 > r3) {
            arg0->base.yspeed += 8;
            if (arg0->base.yspeed > 0x100) {
                arg0->base.yspeed = 0x100;
            }
        }
        else if (r4 < r3) {
            if ((arg0->base.yspeed -= 8) < -0x100) {
                arg0->base.yspeed = -0x100;
            }
        }
        else {
            // Equivalent to if((obj->base.yspeed += 4) > 0)
            if (arg0->base.yspeed < 0) {
                if ((arg0->base.yspeed += 4) << 0x10 > 0) {
                    arg0->base.yspeed = 0;
                }
            }
            // Equivalent to if((obj->base.yspeed -= 4) > 0)
            else {
                if ((arg0->base.yspeed -= 4) << 0x10 < 0) {
                    arg0->base.yspeed = 0;
                }
            }
        }
        r4 = arg0->base.x & 0xFFFFF000;
        r3 = ((arg0->unkA0 - 0x60) << 8) & 0xFFFFF000;
        // Stalk X position
        if (r4 < r3) {
            arg0->base.flags &= ~1;
            arg0->base.xspeed += 8;
            if (arg0->base.xspeed > 0x100) {
                arg0->base.xspeed = 0x100;
            }
            else if (arg0->base.xspeed < -0x100) {
                arg0->base.xspeed = -0x100;
            }
        }
        else if (r4 > r3) {
            arg0->base.flags |= 1;
            if (arg0->base.flags & 1) {
                arg0->base.xspeed -= 8;
                if (arg0->base.xspeed < -0x100) {
                    arg0->base.xspeed = -0x100;
                }
                else if (arg0->base.xspeed > 0x100) {
                    arg0->base.xspeed = 0x100;
                }
            }
            else {
                arg0->base.xspeed += 8;
                if (arg0->base.xspeed > 0x100) {
                    arg0->base.xspeed = 0x100;
                }
                else if (arg0->base.xspeed < -0x100) {
                    arg0->base.xspeed = -0x100;
                }
            }
        }
        else {
            if (arg0->base.xspeed < 0) {
                // Equivalent to if((obj->base.xspeed += 4) > 0)
                if ((arg0->base.xspeed += 4) << 0x10 > 0) {
                    arg0->base.xspeed = 0;
                }
            }
            else {
                // Equivalent to if((obj->base.xspeed -= 4) > 0)
                if ((arg0->base.xspeed -= 4) << 0x10 < 0) {
                    arg0->base.xspeed = 0;
                }
            }
        }
        arg0->base.flags &= ~1;
        if (arg0->base.counter == 0) {
            if ((arg0->base.x & 0xfffff000) == ((arg0->kirby3->base.base.x - 0x6000) & 0xfffff000)) {
                if ((arg0->base.y & 0xfffff000) == ((arg0->kirby3->base.base.y - 0x4000) & 0xfffff000)) {
                    arg0->unk85++;
                    arg0->unk83 = 1;
                    arg0->unk78 = sub_080A3A9C;
                    arg0->base.flags &= ~2;
                    arg0->base.flags |= 0x140;
                    arg0->base.flags |= 0x800;
                }
                else {
                    arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
                }
            }
            else {
                arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
            }
        }
        else {
            arg0->base.counter--;
            arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
        }
    }
}

void sub_080A35C8(struct Object2* arg0) {
    u8 i;
    struct Object2 *obj, *obj2;
    for (i = 0; i < 0x20; i++) {
        if (!(gUnk_020229D4 & (1 << i))) {
            gUnk_020229D4 |= 1 << i;
            break;
        }
    }
    gUnk_020229E0[i].spawnTable = 1;
    gUnk_020229E0[i].unk1 = 0x24;
    gUnk_020229E0[i].x = arg0->base.x >> 8;
    gUnk_020229E0[i].y = arg0->base.y >> 8;
    gUnk_020229E0[i].unk2 = 0;
    gUnk_020229E0[i].unk3 = 0x1f;
    gUnk_020229E0[i].unk4 = 0;
    gUnk_020229E0[i].unk5 = 0;
    gUnk_020229E0[i].type = 0xd8;
    gUnk_020229E0[i].subtype1 = 0;
    gUnk_020229E0[i].unkF = 0;
    gUnk_020229E0[i].subtype2 = arg0->subtype;
    gUnk_020229E0[i].unk22 = 0;
    gUnk_020229E0[i].unk1A = 0;
    gUnk_020229E0[i].unk1C = 0;
    gUnk_020229E0[i].unk1E = 0;
    gUnk_020229E0[i].unk20 = 0;
    gUnk_020229E0[i].unk11 = 0;
    gUnk_020229E0[i].unk12 = 0;
    gUnk_020229E0[i].unk14 = 0;
    gUnk_020229E0[i].unk16 = 0;
    gUnk_020229E0[i].unk18 = 0;
    obj2 = CreateObject(arg0->base.unk56, &gUnk_020229E0[i]);
    obj2->base.parent = arg0;
    obj = obj2;
    if (arg0->base.flags & 1) {
        obj->base.flags |= 1;
    }
    if (RandLessThan3()) {
        obj->base.xspeed = (Rand16() % 256) + 0x1c0;
    }
    else {
        u16 r1;
        obj->base.xspeed = (Rand16() % 256) + (r1 = 0x300);
    }
    obj->base.yspeed = 0;
    if (arg0->base.flags & 1) {
        obj->base.xspeed = -obj->base.xspeed;
        obj->base.flags |= 1;
    }
}

struct Object2* CreateCupieArrow(struct Object* arg0, u8 arg1) {
    struct Object2 *obj, *obj2;
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    obj = TaskGetStructPtr(task, obj2);
    InitObject(obj, arg0, arg1);
    obj->base.unk63 = 1;
    obj->base.flags |= 0x40;
    obj->base.unkC |= 1;
    obj->base.unkC |= 4;
    obj->base.unkC |= 2;
    obj->base.flags |= 0x4000;
    obj->base.flags |= 0x100;
    obj->base.flags |= 0x10000000;
    obj->base.unk68 = 0x20000043;
    obj->base.unk5C |= 0x20;
    obj->unk9E = 0;
    obj->unk7C = sub_0809F840;
    sub_0803E2B0(&obj->base, -2, -2, 2, 2);
    sub_0803E308(&obj->base, 2, 2, 2, 2);
    ObjectInitSprite(obj);
    gUnk_08351648[obj->type].unk10(obj);
    return obj;
}

void sub_080A37F4(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A389C);
    arg0->base.flags |= 0x40;
    arg0->base.flags &= ~0x20;
    PlaySfx(&arg0->base, 0x15e);
}

void sub_080A389C(struct Object2* arg0) {
    s16 xspeed;
    arg0->base.flags |= 4;
    arg0->base.flags &= ~0x100;
    if (arg0->base.x <= gCurLevelInfo[arg0->base.unk56].unk50) {
        if (arg0->base.x >= gCurLevelInfo[arg0->base.unk56].unk48) {
            if (arg0->base.y <= gCurLevelInfo[arg0->base.unk56].unk54) {
                if (arg0->base.y >= gCurLevelInfo[arg0->base.unk56].unk4C) {
                    sub_0806FC70(arg0);
                }
            }
        }
    }
    arg0->base.flags |= 0x100;
    if (arg0->base.unk62 != 0) {
        sub_0809DA30(arg0);
        arg0->base.flags |= 0x1000;
    }
    else {
        arg0->base.yspeed -= 0x10;
        if (arg0->base.yspeed < -0x280) {
            arg0->base.yspeed = -0x280;
        }
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
        if (abs(arg0->base.xspeed) <= 0x17f) {
            arg0->unk83 = 4;
            if (arg0->base.yspeed > 0x80) {
                arg0->base.unk10.unk1A = 2;
                if (arg0->base.yspeed > 0x180) {
                    if (arg0->base.yspeed > 0x240) {
                        arg0->unk83 = 0;
                    }
                    else {
                        arg0->unk83 = 1;
                    }
                }
            }
            if (arg0->base.yspeed < -0x80) {
                arg0->unk83 = 6;
                if (arg0->base.yspeed < -0x180) {
                    if (arg0->base.yspeed < -0x240) {
                        arg0->unk83 = 8;
                    }
                    else {
                        arg0->unk83 = 7;
                    }
                }
            }
        }
        else {
            arg0->unk83 = 4;
            if (arg0->base.yspeed > 0x80) {
                if (arg0->base.yspeed > 0x180) {
                    arg0->unk83 = 2;
                }
                else {
                    arg0->unk83 = 3;
                }
            }
            if (arg0->base.yspeed < -0x80) {
                if (arg0->base.yspeed < -0x180) {
                    arg0->unk83 = 6;
                }
                else {
                    arg0->unk83 = 5;
                }
            }
        }
    }
}

void sub_080A3A24(struct Object2* arg0) {
    arg0->unk83 = 0;
    arg0->unk78 = sub_080A2E38;
    arg0->base.flags |= 0x140;
    arg0->base.flags &= ~0x800;
    arg0->base.counter = 0x5a;
}

void sub_080A3A4C(struct Object2* arg0) {
    arg0->unk83 = 0;
    arg0->unk78 = sub_080A3008;
    arg0->base.flags |= 0x140;
    arg0->base.flags &= ~0x800;
    arg0->base.counter = 0x5a;
}

void sub_080A3A74(struct Object2* arg0) {
    arg0->unk83 = 1;
    arg0->unk78 = sub_080A3A9C;
    arg0->base.flags &= ~2;
    arg0->base.flags |= 0x140;
    arg0->base.flags |= 0x800;
}

void sub_080A3A9C(struct Object2* arg0) {
    switch (arg0->unk83) {
    case 1:
        if (arg0->base.flags & 2) {
            arg0->unk83 = 2;
            arg0->base.flags &= ~2;
        }
        break;
    case 2:
        if (arg0->base.flags & 2) {
            sub_080A35C8(arg0);
            arg0->unk83 = 3;
            arg0->base.flags &= ~2;
        }
        break;
    case 3:
        if (arg0->base.flags & 2) {
            sub_080A2AF0(arg0);
        }
        break;
    }
}

void sub_080A3AFC(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0, sub_080A31D8);
    if (arg0->object->subtype1 == 4) {
        arg0->base.counter = 0xc;
        if (arg0->unk85 <= 0xf) {
            arg0->base.flags |= 0x140;
            arg0->base.flags &= ~0x800;
        }
        else {
            sub_080A3B5C(arg0);
        }
    }
    else {
        arg0->base.counter = 0x3c;
        if (arg0->unk85 >= arg0->subtype + 1) {
            sub_080A3B5C(arg0);
        }
        else {
            arg0->base.flags |= 0x140;
            arg0->base.flags &= ~0x800;
        }
    }
}

void sub_080A3B5C(struct Object2* arg0) {
    ObjectSetFunc(arg0, 0,sub_080A3B94);
    arg0->base.flags ^= 1;
    arg0->base.yspeed = 0;
    arg0->base.flags |= 0x140;
    arg0->base.flags &= ~0x800;
}

void sub_080A3B94(struct Object2* arg0) {
    if (arg0->base.x > arg0->kirby3->base.base.x) {
        arg0->base.xspeed = 0x48;
    }
    else {
        arg0->base.xspeed = -0x48;
    }
    arg0->base.yspeed += 8;
    arg0->base.unk55 = gUnk_083533F4[arg0->base.unk1 >> 1];
}
