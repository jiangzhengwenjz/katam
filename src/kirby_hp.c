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
