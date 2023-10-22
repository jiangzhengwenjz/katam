#include <limits.h>
#include "code_0800ECAC.h"
#include "functions.h"
#include "kirby.h"
#include "random.h"
#include "constants/kirby.h"

void sub_0801737C(struct Unk_02038590 *);
void sub_080175D0(struct Unk_02038590 *);

struct Kirby *sub_0800FE50(struct ObjectBase *objBase, s16 *a2) {
    u16 i;
    struct Kirby *ret = NULL;
    s16 dx, dy;
    s16 max;

    *a2 = SHRT_MAX;
    for (i = 0; i < 4; ++i) {
        if (i != objBase->unk56
            && gKirbys[i].base.base.base.unk56 < gUnk_0203AD30
            && gCurLevelInfo[i].currentRoom == gCurLevelInfo[objBase->unk56].currentRoom) {
            dx = objBase->x >> 8 > gKirbys[i].base.base.base.x >> 8
                ? (objBase->x >> 8) - (gKirbys[i].base.base.base.x >> 8)
                : (gKirbys[i].base.base.base.x >> 8) - (objBase->x >> 8);
            dy = objBase->y >> 8 > gKirbys[i].base.base.base.y >> 8
                ? (objBase->y >> 8) - (gKirbys[i].base.base.base.y >> 8)
                : (gKirbys[i].base.base.base.y >> 8) - (objBase->y >> 8);
            max = dy < dx ? dx : dy;
            if (!ret || *a2 > max) {
                *a2 = max;
                ret = gKirbys + i;
            }
        }
    }
    return ret;
}

void sub_0800FF60(struct Unk_02038590 *a1) {
    struct Kirby *kirby = a1->unk40;

    if (kirby->base.base.base.flags & 0x80) {
        if (!a1->unkA0) {
            if (a1->unk3E > KIRBY_ABILITY_NORMAL && a1->unk3E <= KIRBY_ABILITY_MASTER
                && (kirby->unkDD & 0x1F) == a1->unk3E) {
                if (a1->unkDC != 0xF)
                    a1->unk0[3] = sub_080175D0;
            } else {
                if (a1->unk3E == 0xFF) {
                    if (a1->unkDC != 0xD) {
                        a1->unkDE = 0xFFFF;
                        a1->unk0[3] = sub_0801737C;
                    }
                } else {
                    if ((Rand16() & 0xFF) < 0xC0) {
                        if ((Rand16() & 0xFF) < 0xFF) {
                            if (a1->unkDC != 0xF)
                                a1->unk0[3] = sub_080175D0;
                        } else if (a1->unkDC != 0xD) {
                            a1->unkDE = 0xFFFF;
                            a1->unk0[3] = sub_0801737C;
                        }
                    } else {
                        a1->unkA0 = (Rand16() & 0x7F) + 0x1E;
                    }
                }
            }
        } else {
            --a1->unkA0;
        }
    }
}

u8 sub_08010034(struct LevelInfo *li, u8 a2) {
    const struct LevelInfo_1E8 *r4 = gUnk_08D63C28[gRoomProps[li->currentRoom].unk22];
    const struct LevelInfo_1E8_14 *r8 = r4->unk14, *r9 = &r8[a2];
    u16 array[] = {
        li->unk6C >> 8, li->unk70 >> 8,
        li->unk74 >> 8, li->unk78 >> 8,
    };
    u16 r = Rand16();
    u32 mask = 0x1F; // damn
    u16 r5 = 0xFFFF;

    for (r &= mask; r != 0xFFFF; --r) {
        while (1) {
            for (++r5; r5 < r4->unk18; ++r5) {
                if (r9->unk0[r5] != 0xFF
                	&& array[0] < r8[r5].unk20 && r8[r5].unk20 < array[2]
                    && array[1] < r8[r5].unk22 && r8[r5].unk22 < array[3]) {
                    break;
                }
            }
            if (r5 < r4->unk18)
                break;
            r5 = 0xFFFF;
        }
    }
    return r5;
}

void sub_08010144(struct Unk_02038590 *a1) {
    a1->unk84 = (a1->unk40->base.base.base.x > a1->unk7C
        ? a1->unk40->base.base.base.x - a1->unk7C
        : a1->unk7C - a1->unk40->base.base.base.x) >> 8;
    a1->unk86 = (a1->unk40->base.base.base.y > a1->unk80
        ? a1->unk40->base.base.base.y - a1->unk80
        : a1->unk80 - a1->unk40->base.base.base.y) >> 8;
    a1->unk88 = a1->unk84 > a1->unk86 ? a1->unk84 - a1->unk86 : a1->unk86 - a1->unk84;
    a1->unk8A = sub_08154FE8((a1->unk7C - a1->unk40->base.base.base.x) >> 8, (a1->unk80 - a1->unk40->base.base.base.y) >> 8) & 0x3FF;
    if (a1->unk1A != a1->unk3F && a1->unk3F != 0xFF) {
        const struct LevelInfo_1E8_14 *r2 = &a1->unk14->unk1E8->unk14[a1->unk3F];

        a1->unk94 = r2->unk20 - (a1->unk40->base.base.base.x >> 8);
        a1->unk96 = r2->unk22 - (a1->unk40->base.base.base.y >> 8);
        a1->unk9A = sub_08154FE8(a1->unk94, a1->unk96) & 0x3FF;
        a1->unk94 = abs(a1->unk94);
        a1->unk96 = abs(a1->unk96);
        a1->unk98 = (u16)a1->unk96 < (u16)a1->unk94 ? a1->unk94 : a1->unk96;
    } else {
        a1->unk8C = a1->unk7C;
        a1->unk90 = a1->unk80;
        a1->unk94 = a1->unk84;
        a1->unk96 = a1->unk86;
        a1->unk98 = a1->unk88;
        a1->unk9A = a1->unk8A;
    }
}

void sub_08010294(struct Unk_02038590 *a1) {
    u16 i;

    if (a1->unk48 && a1->unk48->base.flags & 0x1000)
        a1->unk48 = NULL;
    for (i = 0; i < 4; ++i) {
        if (a1->unk4C[i].unk4) {
            if (a1->unk4C[i].unk4->base.flags & 0x1000)
                a1->unk4C[i].unk4 = NULL;
            else {
                if (!a1->unk4C[i].unk0) {
                    if (a1->unk48 == a1->unk4C[i].unk4
                        && a1->unk48->unk80 != a1->unk4C[i].unkA) {
                        Rand32();
                        a1->unk4C[i].unk8 += 0x3C + ((gRngVal >> 0x10) & 0x7F);
                        a1->unk4C[i].unkA = a1->unk48->unk80;
                    } else if (!--a1->unk4C[i].unk8) {
                        u32 r = Rand32();
                        u32 tmp = a1->unk4C[i].unk8 + 0x12C;

                        tmp += (r >> 0x10) & 0xFF;
                        a1->unk4C[i].unk8 = tmp;
                        a1->unk4C[i].unk0 = 1;
                    }
                } else if (!--a1->unk4C[i].unk8) {
                    a1->unk4C[i].unk4 = NULL;
                }
            }
        }
    }
}
