#include "functions.h"
#include "init_object.h"

// TODO: file boundaries

void InitObject(struct Object2* arg0, struct Object* arg1, u8 arg2) {
    struct Object* objB0;
    u32 seven;
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
            arg0->flags |= 0x80 << 0x13;
        }
        else {
            arg0->unk80 = gUnk_08351530[arg0->type - 0x38][gUnk_0203AD30 - 1];
            arg0->flags |= 0x80 << 0x13;
        }
    }
    else {
        arg0->unk80 = gUnk_08351648[arg0->type].unk4;
    }
    seven = 7;
    seven = ~seven;
    arg0->unk68 = 0x82;
    if (arg0->type >= 0x5e && arg0->type <= 0x9a) { 
        arg0->unk5C &= seven;
    }
    else {
        arg0->unk5C &= seven;
        arg0->unk5C |= 1;
    }
    if (arg0->type >= 0x38 && arg0->type <= 0x52) {
        arg0->unk5C |= 0x108000;
    }
    arg0->unkAC = sub_0803D368(arg0);
    arg0->unkA0 = arg0->unkAC->x >> 8;
    arg0->unkA2 = arg0->unkAC->y >> 8;
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
        if (gUnk_02020EE0[gUnk_0203AD3C].unk60 == arg0->unk60) {
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
                if (gUnk_02020EE0[gUnk_0203AD3C].unk60 == arg0->unk60) {
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
