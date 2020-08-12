#include "bonus.h"
#include "code_0800A868.h"
#include "data.h"
#include "functions.h"
#include "main.h"

struct Object2* sub_08122B6C(struct Object* arg0, u8 arg1) {
    struct Task* task = TaskCreate(sub_08099B80, 0xb4, 0x2f9c, 0x10, sub_0809A1C4);
    struct Object2 *obj, *obj2;

    obj = TASK_GET_STRUCT_PTR(task, obj2);
    sub_0809F030(obj, arg0, arg1);
    obj->unk8 |= (0x80 << 0x15);
    obj->unkC |= 1;
    obj->unk8 |= (0x80 << 0x9);
    obj->unk8 |= (0x80 << 0xe);
    obj->unk8 |= (0x80 << 0xf);
    obj->unk68 &= ~7;
    obj->unk5C |= ~0xa7;
    obj->unk8 |= 1;
    obj->unkC |= 0x100;
    sub_0803E2B0(obj, -5, 1 - 7, 5, 5);
    sub_0803E308(obj, -6, -7, 6, 7);
    if (obj->unkB0->unk10 == 0) {
        obj->unk44 = ((obj->unk44 + (obj->unk3F << 8) + 0xfff) & 0xfffff000) - (obj->unk3F << 8) - 1;
        obj->unk4C = obj->unk44;
    }
    sub_0809F3E0(obj);
    obj->unk24 = 0x700;
    if (obj->unk82 == 0x5e) {
        obj->unk83 = obj->unkB0->unkE;
    }
    if (obj->unkB0->unk10 != 0) {
        if (obj->unkB0->unk10 != 3) {
            if (obj->unkB0->unk10 == 4) {
                sub_08123924(obj);
                return obj;
            }
            else {
                if (obj->unkB0->unk10 == 2) {
                    obj->unk52 = 0x180;
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
        obj->unk8 |= 0x40;
        obj->unk8 |= 0x100;
    }
    return obj;
}

void sub_08122CEC(struct Object2* arg0) {
    struct Object2_70* r8 = arg0->unk70;
    arg0->unk8 |= 0x200;
    if (r8->unkD4 == 0x69) {
        if (--arg0->unk4 << 0x10 == 0) {
            if (gUnk_02020EE0[gUnk_0203AD3C].unk60 == arg0->unk60) {
                if ((arg0->unk0 != 0) || (arg0->unk56 == gUnk_0203AD3C)) {
                    if (gUnk_08D60FA4[gSongTable[0xa6].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0xa6].ms]->unk9 <= gSongTable[0xa6].header->priority) {
                        if (gSongTable[0xa6].ms == 0 || !(gUnk_0203AD10 & 0x100)) {
                            m4aSongNumStart(0xa6);
                        }
                    }
                }
            }
            sub_08123814(arg0);
            arg0->unk50 = (Rand16() & 0xff) - 0x60;
            arg0->unk52 = (Rand16() & 0xff) + 0x1a0;
            if (r8->unk8 & 1) {
                arg0->unk50 = -arg0->unk50;
            }
        }
    }
    else {
        if (r8->unkD4 == 0x34) {
            arg0->unk4++;
        }
    }
}

void sub_08122E08(struct Object2* arg0) {
    arg0->unk8 |= 0x200;
    if (--arg0->unk4 << 0x10 == 0) {
        if (gUnk_02020EE0[gUnk_0203AD3C].unk60 == arg0->unk60) {
            if ((arg0->unk0 != 0) || (arg0->unk56 == gUnk_0203AD3C)) {
                if (gUnk_08D60FA4[gSongTable[0xa6].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0xa6].ms]->unk9 <= gSongTable[0xa6].header->priority) {
                    if (gSongTable[0xa6].ms == 0 || !(gUnk_0203AD10 & 0x100)) {
                        m4aSongNumStart(0xa6);
                    }
                }
            }
        }
        arg0->unk52 = 0x240;
        sub_0808AE30(arg0, 0, 0x2B4, 0);
        sub_0809513C(arg0, 0, 0);
        sub_08123814(arg0);
    }
}

void sub_08122ED4(struct Object2* arg0) {
    u16 r2;
    if (arg0->unkB0->unk10 != 0) {
        if (arg0->unk4 > 0xf0) {
            if (arg0->unk4 & 2) {
                arg0->unk8 |= 0x400;
            }
            else {
                arg0->unk8 &= ~0x400;
            }
        }
        if (arg0->unk4 == 0x168) {
            arg0->unk8 |= 0x1000;
            arg0->unk8 |= 0x400;
            return;
        }
        else {
            arg0->unk4++;
        }
    }
    if (arg0->unk8 & 0x40000) {
        struct Kirby* kirby = arg0->unk6C;
        if (kirby->unk0 == 0) {
            if(sub_0803925C(arg0, kirby) != 0) {
                if (kirby->unk56 < gUnk_0203AD30) {
                    sub_08122F6C(arg0);
                }
            }
        }
    }
}

void sub_08122F6C(struct Object2* arg0) {
    struct Kirby* kirby = arg0->unk6C;
    if (kirby->hp > 0) {
        if (!(gUnk_03000510.unk4 & (0x10 | 1 << arg0->unk56))) {
            arg0->unk4 = 0;
            arg0->unk8 |= 0x600;
            arg0->unk8 |= 0x800;
            switch (arg0->unk82) {
            default:
                sub_08033540(kirby->unk56);
                arg0->unk8 |= 0x2000;
                arg0->unk78 = sub_081230A4;
                break;
            case 99:
                arg0->unk78 = sub_08123418;
                break;
            case 100:
                arg0->unk78 = sub_081237D4;
                break;
            }

            if (arg0->unkB0->unk2 != 0x1f00) {
                sub_080029F4(gUnk_02023530[arg0->unk56].unk65E, 1);
            }
            if (gUnk_02020EE0[gUnk_0203AD3C].unk60 == arg0->unk60) {
                if (arg0->unk0 != 0 || arg0->unk56 == gUnk_0203AD3C) {
                    if (gUnk_08D60FA4[gSongTable[0x1f4].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0x1f4].ms]->unk9 <= gSongTable[0x1f4].header->priority) {
                        if (gSongTable[0x1f4].ms == 0 || !(gUnk_0203AD10 & 0x100)) {
                            m4aSongNumStart(0x1f4);
                        }
                    }
                }
            }
        }
    }
}

void sub_081230A4(struct Object2* arg0) {
    struct Kirby* kirby = arg0->unk6C;
    u8 r8;

    if (++arg0->unk4 > 4) {
        arg0->unk80--;
        arg0->unk4 = 0;
        if (arg0->unk82 != 0x62) {
            if (kirby->hp >= kirby->maxHp) {
                r8 = 0;
                kirby->hp = kirby->maxHp;
            }
            else {
                r8 = 1;
                kirby->hp++;
                if (gUnk_02020EE0[gUnk_0203AD3C].unk60 == kirby->unk60) {
                    if ((kirby->unk0 != 0) || (kirby->unk56 == gUnk_0203AD3C)) {
                        if (gUnk_08D60FA4[gSongTable[0x1f6].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0x1f6].ms]->unk9 <= gSongTable[0x1f6].header->priority) {
                            if (gSongTable[0x1f6].ms == 0 || !(gUnk_0203AD10 & 0x100)) {
                                m4aSongNumStart(0x1f6);
                            }
                        }
                    }
                }
            }

            if (!r8 || arg0->unk80 == 0) {
                kirby->unkE1 = 0;
                kirby->unkE4 = 0;
                kirby->unkE5 = 0xff;
                kirby->unkE2 = gUnk_08351648[arg0->unk82].unk4;
                arg0->unk80 = 0;
                arg0->unk8 |= 0x1000;
                sub_080335B4(kirby->unk56);
                gUnk_0203AD20 &= ~1;
            }
        }
        else {
            if (kirby->unkDC <= 2) {
                kirby->unkDC++;
                if (gUnk_02020EE0[gUnk_0203AD3C].unk60 == kirby->unk60) {
                    if ((kirby->unk0 != 0) || (kirby->unk56 == gUnk_0203AD3C)) {
                        if (gUnk_08D60FA4[gSongTable[0x1f6].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0x1f6].ms]->unk9 <= gSongTable[0x1f6].header->priority) {
                            if (gSongTable[0x1f6].ms == 0 || !(gUnk_0203AD10 & 0x100)) {
                                m4aSongNumStart(0x1f6);
                            }
                        }
                    }
                }
            }
            arg0->unk80 = 0;
            arg0->unk8 |= 0x1000;
            sub_080335B4(kirby->unk56);
            gUnk_0203AD20 &= ~1;
        }
    }
    arg0->unk4++;
}

void sub_081232AC(struct Kirby* arg0, u8 arg1) {
    if (arg0->unkE5 != 0) {
        arg0->unkE5 = 0xff;
    }
    else {
        if (arg0->unk60 > 0x383 || arg0->unk60 == 0x321 || arg0->unk60 == gUnk_0835105C[1]
            || arg0->unk60 == gUnk_0835105C[2] || arg0->unk60 == gUnk_0835105C[3]
            || arg0->unk60 == gUnk_0835105C[4] || arg0->unk60 == gUnk_0835105C[5]
            || arg0->unk60 == gUnk_0835105C[6] || arg0->unk60 == gUnk_0835105C[7] || arg0->unk60 == gUnk_0835105C[8]) {
            if (arg1 == 4) {
                arg1 = 2;
            }
        }
        switch(arg1) {
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

void sub_08123418(struct Object2* arg0) {
    struct Kirby* kirby = arg0->unk6C;
#ifndef NONMATCHING
    asm("":::"r5"); //sad
#endif
    if (kirby->lifes > 0xfe) {
        kirby->lifes = 0xff;
    }
    else {
        u16 song = 0x1f5;
        kirby->lifes++;
        if (gUnk_02020EE0[gUnk_0203AD3C].unk60 == kirby->unk60) {
            if ((kirby->unk0 != 0) || (kirby->unk56 == gUnk_0203AD3C)) {
                if (gUnk_08D60FA4[gSongTable[0x1f5].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0x1f5].ms]->unk9 <= gSongTable[0x1f5].header->priority) {
                    if (gSongTable[0x1f5].ms == 0 || !(gUnk_0203AD10 & 0x100)) {
                        m4aSongNumStart(0x1f5);
                    }
                }
            }
        }
    }
    arg0->unk8 |= 0x1000;
    arg0->unk80 = 0;
}

struct Object2* sub_081234D4(struct Kirby* arg0, u16 arg1, u16 arg2) {
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
    gUnk_020229E0[r4].unk10 = 0;
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
    obj = (struct Object2*)sub_0800A868(arg0->unk56, &gUnk_020229E0[r4]);
    obj->unk8 |= 0x2000000;
    return obj;
}

struct Object2* sub_08123570(struct Kirby* arg0) {
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
    gUnk_020229E0[r4].x = arg0->unk40 >> 8;
    gUnk_020229E0[r4].y = arg0->unk44 >> 8;
    gUnk_020229E0[r4].unk2 = 0;
    gUnk_020229E0[r4].unk3 = 0x1f;
    gUnk_020229E0[r4].unk4 = 0;
    gUnk_020229E0[r4].unk5 = 0;
    gUnk_020229E0[r4].type = 0x61;
    gUnk_020229E0[r4].unkE = 0;
    gUnk_020229E0[r4].unkF = 0;
    gUnk_020229E0[r4].unk10 = 3;
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
    obj = (struct Object2*)sub_0800A868(arg0->unk56, &gUnk_020229E0[r4]);
    obj->unk4 = 0;
    obj->unk50 = 0;
    obj->unk52 = 0;
    obj->unk8 |= 0xf00;
    obj->unk6C = arg0;
    obj->unk78 = sub_081238FC;
    return obj;
}

void sub_08123624(struct Object2* arg0, u8 arg1) {
    s32 rng;
    u16 i;
    u8 j, type, temp = 0, *arr;
    struct Object* obj;
    if (!(gUnk_02020EE0[arg1].unkC & 0x1000000)) {
        gUnk_02020EE0[arg1].unkC |= 0x1000000;
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
                obj->x = arg0->unk40 >> 8;
                obj->y = arg0->unk44 >> 8;
                obj->unk2 = 0;
                obj->unk3 = 0x1f;
                obj->unk4 = 0;
                obj->unk5 = 0;
                obj->type = type;
                obj->unkE = temp;
                obj->unkF = 0;
                obj->unk10 = 4;
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
                sub_0800A868(arg0->unk56, obj);
            }
        }
    }
}
