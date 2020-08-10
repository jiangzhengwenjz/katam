#include "code_0800A868.h"
#include "data.h"
#include "functions.h"
#include "kirby_hp.h"
#include "main.h"

void sub_08122F6C(struct KirbyTask* arg0) {
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
                    if(gUnk_08D60FA4[gSongTable[0x1f4].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0x1f4].ms]->unk9 <= gSongTable[0x1f4].header->priority) {
                        if (gSongTable[0x1f4].ms == 0 || !(gUnk_0203AD10 & 0x100)) {
                            m4aSongNumStart(0x1f4);
                        }
                    }
                }
            }
        }
    }
}

void sub_081230A4(struct KirbyTask* arg0) {
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
                        if(gUnk_08D60FA4[gSongTable[0x1f6].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0x1f6].ms]->unk9 <= gSongTable[0x1f6].header->priority) {
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
                        if(gUnk_08D60FA4[gSongTable[0x1f6].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0x1f6].ms]->unk9 <= gSongTable[0x1f6].header->priority) {
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

void sub_08123418(struct KirbyTask* arg0) {
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
                if(gUnk_08D60FA4[gSongTable[0x1f5].ms]->unk4 < 0 || gUnk_08D60FA4[gSongTable[0x1f5].ms]->unk9 <= gSongTable[0x1f5].header->priority) {
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

struct KirbyTask* sub_081234D4(struct Kirby* arg0, u16 arg1, u16 arg2) {
    struct KirbyTask* task;
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
    gUnk_020229E0[r4].unk6 = arg1;
    gUnk_020229E0[r4].unk8 = arg2;
    gUnk_020229E0[r4].unk2 = 0;
    gUnk_020229E0[r4].unk3 = 0x1f;
    gUnk_020229E0[r4].unk4 = 0;
    gUnk_020229E0[r4].unk5 = 0;
    gUnk_020229E0[r4].unkC = 0x61;
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
    task = (struct KirbyTask*)sub_0800A868(arg0->unk56, (struct Object*)&gUnk_020229E0[r4]);
    task->unk8 |= 0x2000000;
    return task;
}

struct KirbyTask* sub_08123570(struct Kirby* arg0) {
    struct KirbyTask* task;
    u8 r4;

    for (r4 = 0; r4 < 0x20; ++r4) {
        if (!(gUnk_020229D4 & (1 << r4))) {
            gUnk_020229D4 |= 1 << r4;
            break;
        }
    }

    gUnk_020229E0[r4].unk0 = 1;
    gUnk_020229E0[r4].unk1 = 0x24;
    gUnk_020229E0[r4].unk6 = arg0->unk40 >> 8;
    gUnk_020229E0[r4].unk8 = arg0->unk44 >> 8;
    gUnk_020229E0[r4].unk2 = 0;
    gUnk_020229E0[r4].unk3 = 0x1f;
    gUnk_020229E0[r4].unk4 = 0;
    gUnk_020229E0[r4].unk5 = 0;
    gUnk_020229E0[r4].unkC = 0x61;
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
    task = (struct KirbyTask*)sub_0800A868(arg0->unk56, (struct Object*)&gUnk_020229E0[r4]);
    task->unk4 = 0;
    task->unk50 = 0;
    task->unk52 = 0;
    task->unk8 |= 0xf00;
    task->unk6C = arg0;
    task->unk78 = sub_081238FC;
    return task;
}
