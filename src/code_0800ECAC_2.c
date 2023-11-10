#include <limits.h>
#include "code_0800ECAC.h"
#include "functions.h"
#include "kirby.h"
#include "random.h"
#include "constants/kirby.h"

void sub_08010944(struct Unk_02038590 *);
void sub_08010A34(struct Unk_02038590 *);
void sub_08010AC8(struct Unk_02038590 *);
void sub_08010B80(struct Unk_02038590 *);
void sub_08010C34(struct Unk_02038590 *);
void sub_08010CE8(struct Unk_02038590 *);
void sub_08010E3C(struct Unk_02038590 *);
void sub_08010F90(struct Unk_02038590 *);
void sub_08011044(struct Unk_02038590 *);
void sub_0801119C(struct Unk_02038590 *);
void sub_08011250(struct Unk_02038590 *);
void sub_08011324(struct Unk_02038590 *);
void sub_0801149C(struct Unk_02038590 *);
void sub_08011558(struct Unk_02038590 *);
void sub_080115FC(struct Unk_02038590 *);
void sub_08011754(struct Unk_02038590 *);
void sub_08011A28(struct Unk_02038590 *);
void sub_08011AD8(struct Unk_02038590 *);
void sub_08011C2C(struct Unk_02038590 *);
void sub_08011CE0(struct Unk_02038590 *);
void sub_08011D94(struct Unk_02038590 *);
void sub_08011F00(struct Unk_02038590 *);
void sub_08011FB4(struct Unk_02038590 *);
void sub_08012048(struct Unk_02038590 *);
void sub_080120FC(struct Unk_02038590 *);
void sub_08012190(struct Unk_02038590 *);
void sub_0801232C(struct Unk_02038590 *);
void sub_080123E0(struct Unk_02038590 *);
bool16 sub_080124E0(struct Unk_02038590 *);
bool16 sub_080126CC(struct Unk_02038590 *);
bool16 sub_08012884(struct Unk_02038590 *);
bool16 sub_08012980(struct Unk_02038590 *);
bool16 sub_08012A88(struct Unk_02038590 *);
bool16 sub_08012BC8(struct Unk_02038590 *);
bool16 sub_08012C5C(struct Unk_02038590 *);
bool16 sub_08012DD4(struct Unk_02038590 *);
bool16 sub_08012EAC(struct Unk_02038590 *);
bool16 sub_08012FD8(struct Unk_02038590 *);
bool16 sub_08013174(struct Unk_02038590 *);
bool16 sub_08013318(struct Unk_02038590 *);
bool16 sub_08013518(struct Unk_02038590 *);
bool16 sub_08013720(struct Unk_02038590 *);
void sub_0801519C(struct Unk_02038590 *);
void sub_080160B8(struct Unk_02038590 *);
void sub_08017144(struct Unk_02038590 *);
void sub_08017274(struct Unk_02038590 *);
void sub_0801737C(struct Unk_02038590 *);
void sub_0801745C(struct Unk_02038590 *);
void sub_080175D0(struct Unk_02038590 *);
void sub_08017684(struct Unk_02038590 *);
void sub_08017750(struct Unk_02038590 *);
void sub_080178DC(struct Unk_02038590 *);
void sub_08017B0C(struct Unk_02038590 *);
void sub_08017CC4(struct Unk_02038590 *);
void sub_08017D40(struct Unk_02038590 *);
bool16 sub_08018368(struct Unk_02038590 *);
void sub_0801836C(struct Unk_02038590 *);
void sub_08018374(struct Unk_02038590 *);
void sub_08019198(struct Unk_02038590 *);
void sub_080196E4(struct Unk_02038590 *);

bool16 (*const gUnk_082DDE84[])(struct Unk_02038590 *) = {
    [KIRBY_ABILITY_NORMAL]  = sub_080124E0,
    [KIRBY_ABILITY_FIRE]    = sub_080126CC,
    [KIRBY_ABILITY_ICE]     = sub_080126CC,
    [KIRBY_ABILITY_BURNING] = sub_08012884,
    [KIRBY_ABILITY_WHEEL]   = sub_08012980,
    [KIRBY_ABILITY_PARASOL] = sub_08012A88,
    [KIRBY_ABILITY_CUTTER]  = sub_08012BC8,
    [KIRBY_ABILITY_BEAM]    = sub_08012C5C,
    [KIRBY_ABILITY_STONE]   = sub_08012DD4,
    [KIRBY_ABILITY_BOMB]    = sub_080124E0,
    [KIRBY_ABILITY_THROW]   = sub_08013318,
    [KIRBY_ABILITY_SLEEP]   = sub_080124E0,
    [KIRBY_ABILITY_COOK]    = sub_080124E0,
    [KIRBY_ABILITY_LASER]   = sub_08012BC8,
    [KIRBY_ABILITY_UFO]     = sub_08012BC8,
    [KIRBY_ABILITY_SPARK]   = sub_08012EAC,
    [KIRBY_ABILITY_TORNADO] = sub_08013720,
    [KIRBY_ABILITY_HAMMER]  = sub_08013174,
    [KIRBY_ABILITY_SWORD]   = sub_08012EAC,
    [KIRBY_ABILITY_CUPID]   = sub_08012FD8,
    [KIRBY_ABILITY_FIGHTER] = sub_080124E0,
    [KIRBY_ABILITY_MAGIC]   = sub_080124E0,
    [KIRBY_ABILITY_SMASH]   = sub_080124E0,
    [KIRBY_ABILITY_MINI]    = sub_08018368,
    [KIRBY_ABILITY_CRASH]   = sub_080124E0,
    [KIRBY_ABILITY_MISSILE] = sub_08013518,
    [KIRBY_ABILITY_MASTER]  = sub_08013174,
};

void (*const gUnk_082DDEF0[])(struct Unk_02038590 *) = {
    [KIRBY_ABILITY_NORMAL]  = sub_08010AC8,
    [KIRBY_ABILITY_FIRE]    = sub_08010B80,
    [KIRBY_ABILITY_ICE]     = sub_08010C34,
    [KIRBY_ABILITY_BURNING] = sub_08010CE8,
    [KIRBY_ABILITY_WHEEL]   = sub_08010E3C,
    [KIRBY_ABILITY_PARASOL] = sub_08010F90,
    [KIRBY_ABILITY_CUTTER]  = sub_08011044,
    [KIRBY_ABILITY_BEAM]    = sub_0801119C,
    [KIRBY_ABILITY_STONE]   = sub_08011250,
    [KIRBY_ABILITY_BOMB]    = sub_08011324,
    [KIRBY_ABILITY_THROW]   = sub_0801149C,
    [KIRBY_ABILITY_SLEEP]   = sub_0801836C,
    [KIRBY_ABILITY_COOK]    = sub_08011558,
    [KIRBY_ABILITY_LASER]   = sub_080115FC,
    [KIRBY_ABILITY_UFO]     = sub_08011754,
    [KIRBY_ABILITY_SPARK]   = sub_08011A28,
    [KIRBY_ABILITY_TORNADO] = sub_08011AD8,
    [KIRBY_ABILITY_HAMMER]  = sub_08011C2C,
    [KIRBY_ABILITY_SWORD]   = sub_08011CE0,
    [KIRBY_ABILITY_CUPID]   = sub_08011D94,
    [KIRBY_ABILITY_FIGHTER] = sub_08011F00,
    [KIRBY_ABILITY_MAGIC]   = sub_08011FB4,
    [KIRBY_ABILITY_SMASH]   = sub_08012048,
    [KIRBY_ABILITY_MINI]    = sub_08018374,
    [KIRBY_ABILITY_CRASH]   = sub_080120FC,
    [KIRBY_ABILITY_MISSILE] = sub_08012190,
    [KIRBY_ABILITY_MASTER]  = sub_0801232C,
};

void (*const gUnk_082DDF5C[])(struct Unk_02038590 *) = {
    [KIRBY_ABILITY_NORMAL]  = sub_080123E0,
    [KIRBY_ABILITY_FIRE]    = sub_080123E0,
    [KIRBY_ABILITY_ICE]     = sub_080123E0,
    [KIRBY_ABILITY_BURNING] = sub_080123E0,
    [KIRBY_ABILITY_WHEEL]   = sub_080123E0,
    [KIRBY_ABILITY_PARASOL] = sub_08010F90,
    [KIRBY_ABILITY_CUTTER]  = sub_080123E0,
    [KIRBY_ABILITY_BEAM]    = sub_080123E0,
    [KIRBY_ABILITY_STONE]   = sub_080123E0,
    [KIRBY_ABILITY_BOMB]    = sub_080123E0,
    [KIRBY_ABILITY_THROW]   = sub_080123E0,
    [KIRBY_ABILITY_SLEEP]   = sub_0801836C,
    [KIRBY_ABILITY_COOK]    = sub_080123E0,
    [KIRBY_ABILITY_LASER]   = sub_080123E0,
    [KIRBY_ABILITY_UFO]     = sub_08011754,
    [KIRBY_ABILITY_SPARK]   = sub_080123E0,
    [KIRBY_ABILITY_TORNADO] = sub_080123E0,
    [KIRBY_ABILITY_HAMMER]  = sub_08011C2C,
    [KIRBY_ABILITY_SWORD]   = sub_08011CE0,
    [KIRBY_ABILITY_CUPID]   = sub_080123E0,
    [KIRBY_ABILITY_FIGHTER] = sub_080123E0,
    [KIRBY_ABILITY_MAGIC]   = sub_080123E0,
    [KIRBY_ABILITY_SMASH]   = sub_080123E0,
    [KIRBY_ABILITY_MINI]    = sub_08018374,
    [KIRBY_ABILITY_CRASH]   = sub_080123E0,
    [KIRBY_ABILITY_MISSILE] = sub_080123E0,
    [KIRBY_ABILITY_MASTER]  = sub_0801232C,
};

const u32 gUnk_082DDFC8[] = {
    [KIRBY_ABILITY_NORMAL]  = 0x20000042,
    [KIRBY_ABILITY_FIRE]    = 0x20000103,
    [KIRBY_ABILITY_ICE]     = 0x20000203,
    [KIRBY_ABILITY_BURNING] = 0x30001103,
    [KIRBY_ABILITY_WHEEL]   = 0x30000043,
    [KIRBY_ABILITY_PARASOL] = 0x20000043,
    [KIRBY_ABILITY_CUTTER]  = 0x20002003,
    [KIRBY_ABILITY_BEAM]    = 0x20000403,
    [KIRBY_ABILITY_STONE]   = 0x30005003,
    [KIRBY_ABILITY_BOMB]    = 0x20000103,
    [KIRBY_ABILITY_THROW]   = 0x20001003,
    [KIRBY_ABILITY_SLEEP]   = 0x20000082,
    [KIRBY_ABILITY_COOK]    = 0x20008003,
    [KIRBY_ABILITY_LASER]   = 0x20000103,
    [KIRBY_ABILITY_UFO]     = 0x20000103,
    [KIRBY_ABILITY_SPARK]   = 0x20000403,
    [KIRBY_ABILITY_TORNADO] = 0x30000043,
    [KIRBY_ABILITY_HAMMER]  = 0x30005003,
    [KIRBY_ABILITY_SWORD]   = 0x30002003,
    [KIRBY_ABILITY_CUPID]   = 0x2003,
    [KIRBY_ABILITY_FIGHTER] = 0x30000043,
    [KIRBY_ABILITY_MAGIC]   = 0x20000082,
    [KIRBY_ABILITY_SMASH]   = 0x30000043,
    [KIRBY_ABILITY_MINI]    = 0x20000082,
    [KIRBY_ABILITY_CRASH]   = 0x10003,
    [KIRBY_ABILITY_MISSILE] = 0x30001043,
    [KIRBY_ABILITY_MASTER]  = 0x30007103,
};

const u8 gUnk_082DE034[] = {
    KIRBY_ABILITY_FIRE, KIRBY_ABILITY_FIRE, KIRBY_ABILITY_FIRE, KIRBY_ABILITY_FIRE,
    KIRBY_ABILITY_ICE, KIRBY_ABILITY_ICE, KIRBY_ABILITY_ICE,
    KIRBY_ABILITY_CUTTER, KIRBY_ABILITY_CUTTER, KIRBY_ABILITY_CUTTER,
    KIRBY_ABILITY_BEAM, KIRBY_ABILITY_BEAM, KIRBY_ABILITY_BEAM,
    KIRBY_ABILITY_SWORD, KIRBY_ABILITY_SWORD, KIRBY_ABILITY_SWORD,
    KIRBY_ABILITY_CUTTER, KIRBY_ABILITY_CUTTER, KIRBY_ABILITY_CUTTER,
    KIRBY_ABILITY_CUPID, KIRBY_ABILITY_CUPID, KIRBY_ABILITY_CUPID, KIRBY_ABILITY_CUPID,
    KIRBY_ABILITY_MISSILE, KIRBY_ABILITY_MISSILE, KIRBY_ABILITY_MISSILE,
    KIRBY_ABILITY_BURNING, KIRBY_ABILITY_BURNING, KIRBY_ABILITY_BURNING,
    KIRBY_ABILITY_PARASOL, KIRBY_ABILITY_PARASOL, KIRBY_ABILITY_PARASOL,
    KIRBY_ABILITY_WHEEL, KIRBY_ABILITY_WHEEL, KIRBY_ABILITY_WHEEL,
    KIRBY_ABILITY_PARASOL, KIRBY_ABILITY_PARASOL, KIRBY_ABILITY_PARASOL, KIRBY_ABILITY_PARASOL,
    KIRBY_ABILITY_BOMB, KIRBY_ABILITY_BOMB, KIRBY_ABILITY_BOMB,
    KIRBY_ABILITY_LASER, KIRBY_ABILITY_LASER, KIRBY_ABILITY_LASER,
    KIRBY_ABILITY_SPARK, KIRBY_ABILITY_SPARK, KIRBY_ABILITY_SPARK,
    KIRBY_ABILITY_HAMMER, KIRBY_ABILITY_HAMMER,
    KIRBY_ABILITY_SMASH,
    KIRBY_ABILITY_TORNADO, KIRBY_ABILITY_TORNADO, KIRBY_ABILITY_TORNADO,
    KIRBY_ABILITY_FIGHTER, KIRBY_ABILITY_FIGHTER, KIRBY_ABILITY_FIGHTER,
    KIRBY_ABILITY_UFO,
    KIRBY_ABILITY_STONE, KIRBY_ABILITY_STONE,
    KIRBY_ABILITY_THROW,
    KIRBY_ABILITY_COOK,
    KIRBY_ABILITY_MAGIC,
    KIRBY_ABILITY_CRASH,
};

const u16 gUnk_082DE074[][2] = {
    { 0x12C, 0x144 },
    { 0x2BC, 0x2C6 },
    { 0x190, 0x1A1 },
    { 0x320, 0x336 },
    {  0xC8,  0xDB },
    { 0x1F4, 0x204 },
    { 0x258, 0x2E2 },
    {  0x72,  0x81 },
};

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

bool32 sub_080103BC(struct Unk_02038590 *a1) {
    u16 i;
    bool32 r7;
    s16 stack;

    if (!(a1->flags & 4))
        return (a1->flags >> 4) & 1;
    for (i = 0; i < 0x10; ++i) {
        if (gUnk_0835105C[i] == a1->unk14->currentRoom)
        	break;
    }
    if (i < 0x10)
        return FALSE;
    if (a1->flags & 0x10) {
        r7 = FALSE;
        if (!a1->unk44
            || a1->unk14->currentRoom != a1->unk44->base.base.base.roomId) {
            r7 = TRUE;
        } else {
            s16 dx = a1->unk40->base.base.base.x >> 8 > a1->unk44->base.base.base.x >> 8
                ? (a1->unk40->base.base.base.x >> 8) - (a1->unk44->base.base.base.x >> 8)
                : (a1->unk44->base.base.base.x >> 8) - (a1->unk40->base.base.base.x >> 8);
            s16 dy = a1->unk40->base.base.base.y >> 8 > a1->unk44->base.base.base.y >> 8
                ? (a1->unk40->base.base.base.y >> 8) - (a1->unk44->base.base.base.y >> 8)
                : (a1->unk44->base.base.base.y >> 8) - (a1->unk40->base.base.base.y >> 8);
            s16 max = dy < dx ? dx : dy;

            if (max < 0x50) {
                if (a1->unkA2 < 0x12C0) a1->unkA2 -= max - 0x50;
                if (a1->unkA2 > 0x12C0) a1->unkA2 = 0x12C0;
            } else {
                if (a1->unkA2 > 0x10)
                    a1->unkA2 -= 0x10;
                else
                    a1->unkA2 = 0;
            }
            if (!a1->unkA2)
                r7 = TRUE;
            if (a1->unk40->base.base.base.xspeed == 0
                && a1->unk40->base.base.base.yspeed == 0)
                ++a1->unkA4;
            else
                a1->unkA4 = 0;
            if (a1->unkA4 > 600)
                r7 = TRUE;
        }
        if (r7) {
            a1->flags &= ~0x10;
            a1->unk44 = NULL;
            a1->unkA2 = 0;
            a1->unkA4 = 0;
        }
        return (a1->flags >> 4) & 1;
    } else {
        struct Kirby *kirby = sub_0800FE50(&a1->unk40->base.base.base, &stack);

        if (kirby && stack < 0x50) {
            if (a1->unkA2 < 0x12C0) a1->unkA2 -= stack - 0x50;
            if (a1->unkA2 > 0x12C0) a1->unkA2 = 0x12C0;
        } else {
            if (a1->unkA2 > 0x10)
                a1->unkA2 -= 0x10;
            else
                a1->unkA2 = 0;
        }
        if (a1->unkA2 > 0xB40 && kirby) {
            a1->flags |= 0x10;
            a1->unk44 = kirby;
            a1->unkA4 = 0;
        }
        return (a1->flags >> 4) & 1;
    }
}

// https://decomp.me/scratch/Q0OQa
struct Object2 *sub_08010590(struct Unk_02038590 *a1, s32 a2, s32 a3) {
    s32 dx, dy;
    struct Object2 **r7 = sub_08039490(&a1->unk40->base.base.base);
    struct Object2 *sp = NULL;
    s32 x = a1->unk40->base.base.base.x;
    s32 y = a1->unk40->base.base.base.y;

    for (; *r7; ++r7) {
        struct Object2 *r3 = *r7;
        struct Object2 *r5 = *r7;

        if (r3->base.flags & 0x10000000 || !(r3->base.flags & 0x8000)) {
            if (ObjType0To37(r3) || ObjType38To52(r3) || ObjType43To52(r3) || ObjType53To5C(r3) || r3->type == OBJ_EMPTY_5D) {
                switch (r3->type) {
                case OBJ_JACK:
                case OBJ_COOKIN:
                case OBJ_MINNY:
                case OBJ_PRANK:
                case OBJ_MIRRA:
                    continue;
                case OBJ_MR_FROSTY:
                case OBJ_BONKERS:
                case OBJ_PHAN_PHAN:
                case OBJ_BATAFIRE:
                case OBJ_BOX_BOXER:
                case OBJ_BOXY:
                case OBJ_MASTER_HAND:
                case OBJ_BOMBAR:
                    if (r5->unk80 <= 0)
                        continue;
                    break;
                default:
                case OBJ_BIG_WADDLE_DEE:
                case OBJ_WADDLE_DOO:
                case OBJ_FLAMER:
                case OBJ_HOT_HEAD:
                case OBJ_LASER_BALL:
                case OBJ_PENGY:
                case OBJ_ROCKY:
                case OBJ_SIR_KIBBLE:
                case OBJ_SPARKY:
                case OBJ_SWORD_KNIGHT:
                case OBJ_UFO:
                case OBJ_TWISTER:
                case OBJ_WHEELIE:
                case OBJ_NODDY:
                case OBJ_GOLEM_1:
                case OBJ_GOLEM_2:
                case OBJ_GOLEM_3:
                case OBJ_FOLEY_1:
                case OBJ_SHOOTY:
                case OBJ_SCARFY_FALLING:
                case OBJ_BOXIN:
                case OBJ_BOMBER:
                case OBJ_HEAVY_KNIGHT:
                case OBJ_GIANT_ROCKY:
                case OBJ_METAL_GUARDIAN:
                case OBJ_EMPTY_2C:
                case OBJ_BATTY:
                case OBJ_FOLEY_2:
                case OBJ_BANG_BANG:
                case OBJ_DARK_MIND_BOMB:
                case OBJ_EMPTY_31:
                case OBJ_DROPPY:
                case OBJ_SHOTZO_1:
                case OBJ_SHADOW_KIRBY:
                case OBJ_WADDLE_DEE_2:
                    break;
                }
            } else {
                if (ObjType5ETo6C(r3))
                    continue;
                if (ObjType6Dto9A(r3)) {
#ifndef NONMATCHING
                    asm("":::"memory");
#endif
                    if (r3->type != OBJ_CANNON_FUSE && r3->type != OBJ_STAR_PLATFORM)
                        continue;
                } else {
#ifndef NONMATCHING
                    asm("":::"memory");
#endif
                    if (r3->type != OBJ_ABILITY_STAR_1) {
                        if (r3->type == OBJ_ABILITY_STAR_2)
                            continue;
                    } else {
                        if (r3->base.parent == a1->unk40) {
                            if (((struct Kirby *)r3->base.parent)->ability != KIRBY_ABILITY_NORMAL)
                                continue;
                            if (r3->base.counter > 60)
                                goto label; // TODO
                            continue;
                        } else {
                            if (r3->base.counter <= 120)
                                continue;
                        }
                    }
                }
            }
        label:
            dx = x > r3->base.x ? x - r3->base.x : r3->base.x - x;
            dy = y > r3->base.y ? y - r3->base.y : r3->base.y - y;
            if (ObjType38To52(r5)) {
                dx >>= 2;
                dy >>= 1;
                if (a2 >= dx && a3 >= dy)
                    sp = r5;
            } else {
                if (a2 >= dx && a3 >= dy) {
                    struct Unk_02038590_4C *r6 = NULL;
                    bool32 b = FALSE;
                    u16 i;

                    for (i = 0; i < 4; ++i) {
                        if (a1->unk4C[i].unk4 == r3) {
                            b = TRUE;
                            if (a1->unk4C[i].unk0)
                                break;
                        } else {
                            if (!a1->unk4C[i].unk4)
                                r6 = &a1->unk4C[i];
                        }
                    }
                    if (i == 4) {
                        if (!b && r6) {
                            r6->unk0 = 0;
                            r6->unk4 = r3;
                            r6->unkA = r3->unk80;
                            r6->unk8 = (Rand16() & 0xFF) + 0x12C;
                        }
                        return r3;
                    }
                }
            }
        }
    }
    return sp;
}

bool32 sub_08010818(struct Unk_02038590 *a1, struct Object2 *obj2) {
    s16 var;

    switch (a1->unkDC) {
    case 7:
    case 8:
    case 0xA:
        return TRUE;
    }
    if (a1->unk40->base.base.base.xspeed) {
        if (a1->unk40->base.base.base.flags & 1) {
            if (a1->unk40->base.base.base.x <= obj2->base.x)
                return FALSE;
        } else {
            if (a1->unk40->base.base.base.x >= obj2->base.x)
                return FALSE;
        }
        var = (a1->unk40->base.base.base.y - obj2->base.y) >> 8;
        if (var + 7 >= 0 && var + 7 <= 0x1E) {
            if (a1->unkDC != 7) {
                a1->unkDE = (Rand16() & 1) + 3;
                a1->unk0[3] = sub_080160B8;
            }
            return TRUE;
        }
    }
    return FALSE;
}

void sub_080108B8(struct Unk_02038590 *a1) {
    u32 ability = a1->unk40->ability;

    if (ability == KIRBY_ABILITY_UFO) {
        if (a1->unk40->base.base.base.unk58 & 2)
            gUnk_082DDF5C[KIRBY_ABILITY_UFO](a1);
        else
            gUnk_082DDEF0[KIRBY_ABILITY_UFO](a1);
    } else if (a1->unk40->base.base.base.flags & 0x40) {
        sub_08010944(a1);
    } else if (a1->unk40->base.base.base.flags & 0x80) {
        sub_08010A34(a1);
    } else {
        if (a1->unk40->base.base.base.unk58 & 2)
            gUnk_082DDF5C[ability](a1);
        else
            gUnk_082DDEF0[ability](a1);
    }
}

static inline bool32 IsOneOfTheCurrentRooms(u16 roomId) {
    u16 i;

    for (i = 0; i < gUnk_0203AD30; ++i) {
        if (roomId == gCurLevelInfo[i].currentRoom)
            return TRUE;
    }
    return FALSE;
}

static inline bool32 sub_08011754_helper(struct Unk_02038590 *a1, u16 sl, bool16 b) {
    u32 r8 = a1->unk14->roomWidth >> 4;
    s16 r7 = b == TRUE ? -1 : 1;
    u16 r4 = r7 + (a1->unk40->base.base.base.x >> 12);
    u16 sb = a1->unk40->base.base.base.y >> 12;

    for (; sl-- && r4 < r8; r4 += r7) {
        if (!(gUnk_082D88B8[sub_080024F0(a1->unk14, r4, sb)] & 1))
            return FALSE;
    }
    return TRUE;
}

void sub_08010944(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1800);
    if (a1->unk48) {
        if (!IsOneOfTheCurrentRooms(a1->unk14->currentRoom))
            return;
        if (~(a1->unk48->base.unk5C & ~7) & 0x40 && (a1->unk48->base.unk5C & 7) < 3) {
            if (a1->unkDC != 0xC) {
                a1->unkDE = a1->unk40->base.base.base.x >= a1->unk48->base.x;
                a1->unk0[3] = sub_08017274;
            }
        } else {
            u32 ability = a1->unk40->ability;
            bool32 b = FALSE;

            if (ability < KIRBY_ABILITY_COUNT) {
                // TODO: better match
                const u32 *table = gUnk_082DDFC8;
                const u32 *r2 = &table[ability];
                u32 inter = a1->unk48->base.unk5C & ~7;
                u32 var = 0x3FFFF8 & ~inter;

                if (var & *r2
                    && (*r2 & 7) >= (a1->unk48->base.unk5C & 7))
                    b = TRUE;
            }
            if (b)
                a1->unk0[3] = sub_0801519C;
        }
    }
}

void sub_08010A34(struct Unk_02038590 *a1) {
    if ((a1->unk40->unkDD & 0x1F) != KIRBY_ABILITY_NORMAL
        && (a1->unk40->unkDD & 0x1F) < KIRBY_ABILITY_COUNT
        && (Rand16() & 0xFF) < 0xC0) {
        if (a1->unkDC != 0xF)
            a1->unk0[3] = sub_080175D0;
    } else {
        a1->unk48 = sub_08010590(a1, 0x3000, 0x1800);
        if (a1->unk48 && a1->unkDC != 0xD) {
            a1->unkDE = a1->unk40->base.base.base.x >= a1->unk48->base.x;
            a1->unk0[3] = sub_0801737C;
        }
    }
}

void sub_08010AC8(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1800);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x20 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0xE) {
                    a1->unkDE = b;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_0801745C;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08010B80(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x100 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08010C34(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x200 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08010CE8(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x5000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x1100 && (a1->unk48->base.unk5C & 7) < 4) {
                bool16 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;
                s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 0xC;

                if (sub_08011754_helper(a1, abs(r0), b)) {
	                if (a1->unkDC != 0x10) {
	                    a1->unkDE = b;
	                    a1->unk0[3] = sub_08017684;
	                }
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08010E3C(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x5000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x40 && (a1->unk48->base.unk5C & 7) < 4) {
                bool16 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;
                s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 0xC;

                if (sub_08011754_helper(a1, abs(r0), b)) {
	                if (a1->unkDC != 0x10) {
	                    a1->unkDE = b;
	                    a1->unk0[3] = sub_08017684;
	                }
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08010F90(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x40 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011044(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x2000 && (a1->unk48->base.unk5C & 7) < 4) {
                bool16 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;
                s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 0xC;

                if (sub_08011754_helper(a1, abs(r0), b)) {
	                if (a1->unkDC != 0x10) {
	                    a1->unkDE = b;
	                    a1->unk0[3] = sub_08017684;
	                }
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_0801119C(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x400 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011250(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x3000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x5000 && (a1->unk48->base.unk5C & 7) < 4) {
                s16 r5 = (a1->unk40->base.base.base.y - a1->unk48->base.y) >> 8;
                s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 8;

                r0 = abs(r0);
                if (r0 < 0x30 && r5 < 0x40) {
                    bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                    if (a1->unkDC != 0x15) {
                        a1->unkDE = b;
                        a1->unk0[3] = sub_08019198;
                    }
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011324(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x4000, 0x3000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x100 && (a1->unk48->base.unk5C & 7) < 4) {
                bool16 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;
                u16 r3 = 0xFFFF;
                s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 0xC;
                s16 unk;

                if (sub_08011754_helper(a1, abs(r0), b)) {
	                unk = (a1->unk40->base.base.base.y - a1->unk48->base.y) >> 0xC;
	                if (unk >= 0x2FFF)
	                    r3 = 2;
	                if (a1->unkDC != 0x13) {
	                    a1->unkDE = b;
	                    a1->unkE0 = r3;
	                    a1->unk0[3] = sub_080178DC;
	                }
	            }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_0801149C(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x2000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x200020 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x16) {
                    a1->unkDE = b;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011558(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x1000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x8000 && (a1->unk48->base.unk5C & 7) < 4) {
                if (a1->unkDC != 0x10) {
                    a1->unkDE = 0xFFFF;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_080115FC(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x6000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x100 && (a1->unk48->base.unk5C & 7) < 4) {
                bool16 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;
                s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 0xC;

                if (sub_08011754_helper(a1, abs(r0), b)) {
	                if (a1->unkDC != 0x10) {
	                    a1->unkDE = b;
	                    a1->unk0[3] = sub_08017684;
	                }
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011754(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x6000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            bool16 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;
            s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 0xC;
            s16 sl = abs(r0);

            if (Rand16() & 1 && sl < 4 && ~(a1->unk48->base.unk5C & ~7) & 0x400 && (a1->unk48->base.unk5C & 7) < 4) {
                if (a1->unkDC != 0x17) {
                    a1->unkDE = b;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017CC4;
                }
                return;
            }
            if (Rand16() & 1 && ~(a1->unk48->base.unk5C & ~7) & 0x100 && (a1->unk48->base.unk5C & 7) < 4) {
                if (sub_08011754_helper(a1, sl, b)) {
                    if (a1->unkDC != 0x17) {
                        a1->unkDE = b;
                        a1->unkE0 = 1;
                        a1->unk0[3] = sub_08017CC4;
                    }
                    return;
                }
            }
            if (~(a1->unk48->base.unk5C & ~7) & 0x100 && (a1->unk48->base.unk5C & 7) < 4) {
                if (sub_08011754_helper(a1, sl, b)) {
                    if (a1->unkDC != 0x17) {
                        a1->unkDE = b;
                        a1->unkE0 = 2;
                        a1->unk0[3] = sub_08017CC4;
                    }
                    return;
                }
            }
            if (~(a1->unk48->base.unk5C & ~7) & 0x1100 && (a1->unk48->base.unk5C & 7) < 4) {
                if (a1->unkDC != 0x17) {
                    a1->unkDE = b;
                    a1->unkE0 = 3;
                    a1->unk0[3] = sub_08017CC4;
                }
            }
            return;
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011A28(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x1800, 0x1800);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x400 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011AD8(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x40 && (a1->unk48->base.unk5C & 7) < 4) {
                bool16 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;
                s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 0xC;

                if (sub_08011754_helper(a1, abs(r0), b)) {
	                if (a1->unkDC != 0x10) {
	                    a1->unkDE = b;
	                    a1->unk0[3] = sub_08017684;
	                }
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011C2C(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x2000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x5000 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011CE0(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x2000 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011D94(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x6000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x2000 && (a1->unk48->base.unk5C & 7) < 4) {
                bool16 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;
                s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 0xC;
                s16 sp04 = abs(r0);

                if (sub_08011754_helper(a1, sp04, b)) {
	                if (a1->unkDC != 0x18) {
	                    a1->unkDE = b;
                        a1->unkE0 = 0xFFFF;
                        a1->unkE4 = sp04 >> 1;
	                    a1->unk0[3] = sub_08017D40;
	                }
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011F00(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x2000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x40 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_08011FB4(struct Unk_02038590 *a1) {
    a1->unk48 = NULL;
    if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
        if ((Rand16() & 0xFF) < 5 && a1->unkDC != 0x10) {
            a1->unkDE = 0xFFFF;
            a1->unk0[3] = sub_08017684;
        }
    }
}

void sub_08012048(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x2000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x40 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_080120FC(struct Unk_02038590 *a1) {
    a1->unk48 = NULL;
    if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
        if ((Rand16() & 0xFF) < 5 && a1->unkDC != 0x10) {
            a1->unkDE = 0xFFFF;
            a1->unk0[3] = sub_08017684;
        }
    }
}

void sub_08012190(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x5000, 0x2000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x1000 && (a1->unk48->base.unk5C & 7) < 4) {
                bool16 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;
                s16 r0 = (a1->unk40->base.base.base.x - a1->unk48->base.x) >> 0xC;
                s16 sp04 = abs(r0);

                if (sub_08011754_helper(a1, sp04, b)) {
                    u16 r2 = a1->unk40->base.base.base.y >> 0xC;

                    if (sp04 < 2 || !r2
                        || (gUnk_082D88B8[sub_080024F0(a1->unk14, a1->unk40->base.base.base.x >> 0xC, r2 - 1)] & 1)) {
                        if (a1->unkDC != 0x1A) {
                            a1->unkDE = (u32)a1->unk48->base.x >> 8;
                            a1->unkE0 = (u32)a1->unk48->base.y >> 8;
                            a1->unk0[3] = sub_080196E4;
                        }
                    }
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_0801232C(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x3000, 0x1000);
    if (a1->unk48) {
        if (IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            if (~(a1->unk48->base.unk5C & ~7) & 0x7100 && (a1->unk48->base.unk5C & 7) < 4) {
                bool32 b = a1->unk40->base.base.base.x >= a1->unk48->base.x;

                if (a1->unkDC != 0x10) {
                    a1->unkDE = b;
                    a1->unk0[3] = sub_08017684;
                }
                return;
            }
        }
        sub_08010818(a1, a1->unk48);
    }
}

void sub_080123E0(struct Unk_02038590 *a1) {
    a1->unk48 = sub_08010590(a1, 0x1800, 0x1800);
    if (a1->unk48) {
        if (~(a1->unk48->base.unk5C & ~7) & 0x40 && (a1->unk48->base.unk5C & 7) < 4) {
            s16 ret = sub_08154FE8((a1->unk48->base.x - a1->unk40->base.base.base.x) >> 8,
                (a1->unk48->base.y - a1->unk40->base.base.base.y) >> 8) & 0x3FF;

            if (ret >= 0x80 && ret < 0x180) {
                if (a1->unkDC != 0x11) {
                    a1->unkDE = 0;
                    a1->unkE0 = 0xFFFF;
                    a1->unk0[3] = sub_08017750;
                }
            } else if (ret >= 0x180 && ret < 0x280) {
                if (a1->unkDC != 0x11) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 2;
                    a1->unk0[3] = sub_08017750;
                }
            } else if (ret >= 0x280 && ret < 0x380) {
                if (a1->unkDC != 0x11) {
                    a1->unkDE = 1;
                    a1->unkE0 = 0xFFFF;
                    a1->unk0[3] = sub_08017750;
                }
            } else {
                if (a1->unkDC != 0x11) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 3;
                    a1->unk0[3] = sub_08017750;
                }
            }
        }
    }
}

bool16 sub_080124E0(struct Unk_02038590 *a1) {
    s8 r8 = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 r2 = (a1->unk40->base.base.base.x >> 0xC) + r8;

    if (r2 >= 0 && r2 < a1->unk14->roomWidth >> 4) {
        s16 r7 = (a1->unk40->base.base.base.x + r8 * 0x800) >> 0xC;
        s16 r0 = (a1->unk40->base.base.base.y >> 0xC) - 1;
        u32 r1;
        const u32 *r4, *r4_2, *r4_3;

        if (r0 >= 0
            && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, r7, r0)]) & 0x1000
            && !(r1 & 0xF00000)) {
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        } else {
            s16 r1_2 = (a1->unk40->base.base.base.y >> 0xC) + 1;
            s16 r1_3;
            s16 r2_2;

            if (r1_2 < a1->unk14->roomHeight >> 4
                && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, r7, r1_2)]) & 0x1000) {
                if (!(r1 & 0xF00000)) {
                    if (Rand16() & 1) {
                        if (a1->unkDC != 0x10) {
                            a1->unkDE = 0xFFFF;
                            a1->unk0[3] = sub_08017684;
                        }
                        return TRUE;
                    } else {
                        if (a1->unkDC != 0xB) {
                            a1->unkDE = 0xFFFF;
                            a1->unk0[3] = sub_08017144;
                        }
                        return TRUE;
                    }
                } else if ((r1 & 0xF00000) == 0x100000) {
                    if (a1->unkDC != 0xB) {
                        a1->unkDE = 0xFFFF;
                        a1->unk0[3] = sub_08017144;
                    }
                    return TRUE;
                }
            }
            r1_3 = (a1->unk40->base.base.base.x >> 0xC) + r8;
            r2_2 = a1->unk40->base.base.base.y >> 0xC;
            r4_3 = gUnk_082D88B8;
            r1 = r4_3[sub_080024F0(a1->unk14, r1_3, r2_2)];
            if (r1 & 0x1000) {
                if (r1 & 0xF00000) {
                    if ((r1 & 0xF00000) == 0x100000) {
                        if (a1->unkDC != 0xB) {
                            a1->unkDE = 0xFFFF;
                            a1->unk0[3] = sub_08017144;
                        }
                    } else {
                        return FALSE;
                    }
                } else {
                    if (Rand16() & 1) {
                        if (a1->unkDC != 0x10) {
                            a1->unkDE = 0xFFFF;
                            a1->unk0[3] = sub_08017684;
                        }
                    } else {
                        if (a1->unkDC != 0xB) {
                            a1->unkDE = 0xFFFF;
                            a1->unk0[3] = sub_08017144;
                        }
                    }
                }
                return TRUE;
            }
        }
    }
    return FALSE;
}
