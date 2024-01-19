#include <limits.h>
#include "code_0800ECAC.h"
#include "functions.h"
#include "kirby.h"
#include "random.h"
#include "constants/kirby.h"

u8 sub_0800EEBC(struct ObjectBase *);
void sub_0800F044(struct Unk_02038590 *);

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
void sub_0801399C(struct Unk_02038590 *);
void sub_08013C4C(struct Unk_02038590 *);
void sub_08014928(struct Unk_02038590 *);
void sub_080149CC(struct Unk_02038590 *);
void sub_08014A80(struct Unk_02038590 *);
void sub_0801519C(struct Unk_02038590 *);
void sub_080152B0(struct Unk_02038590 *);
void sub_08015A4C(struct Unk_02038590 *);
void sub_08015AF0(struct Unk_02038590 *);
void sub_08015FA0(struct Unk_02038590 *);
void sub_080160B8(struct Unk_02038590 *);
void sub_08016288(struct Unk_02038590 *);
void sub_0801639C(struct Unk_02038590 *);
void sub_080168BC(struct Unk_02038590 *);
void sub_0801694C(struct Unk_02038590 *);
void sub_08017B0C(struct Unk_02038590 *);
void sub_08017144(struct Unk_02038590 *);
void sub_08017274(struct Unk_02038590 *);
void sub_0801737C(struct Unk_02038590 *);
void sub_0801745C(struct Unk_02038590 *);
void sub_080175D0(struct Unk_02038590 *);
void sub_08017684(struct Unk_02038590 *);
void sub_08017750(struct Unk_02038590 *);
void sub_080178DC(struct Unk_02038590 *);
void sub_08017B0C(struct Unk_02038590 *);
void sub_08017C24(struct Unk_02038590 *);
void sub_08017CC4(struct Unk_02038590 *);
void sub_08017D40(struct Unk_02038590 *);
void sub_08017E1C(struct Unk_02038590 *);
void sub_08017F10(struct Unk_02038590 *);
void sub_08018024(struct Unk_02038590 *);
void sub_08018110(struct Unk_02038590 *);
void sub_0801818C(struct Unk_02038590 *);
bool16 sub_08018368(struct Unk_02038590 *);
void sub_0801836C(struct Unk_02038590 *);
void sub_08018374(struct Unk_02038590 *);
void sub_08018388(struct Unk_02038590 *);
void sub_08018394(struct Unk_02038590 *);
void sub_080183A0(struct Unk_02038590 *);
void sub_080183D0(struct Unk_02038590 *);
void sub_08018400(struct Unk_02038590 *);
void sub_08018428(struct Unk_02038590 *);
void sub_08018458(struct Unk_02038590 *);
void sub_08018488(struct Unk_02038590 *);
void sub_080184A4(struct Unk_02038590 *);
void sub_080184C4(struct Unk_02038590 *);
void sub_080184DC(struct Unk_02038590 *);
void sub_080184E8(struct Unk_02038590 *);
void sub_08018504(struct Unk_02038590 *);
void sub_0801852C(struct Unk_02038590 *);
void sub_0801858C(struct Unk_02038590 *);
void sub_080185EC(struct Unk_02038590 *);
void sub_08018610(struct Unk_02038590 *);
void sub_08018640(struct Unk_02038590 *);
void sub_080186A4(struct Unk_02038590 *);
void sub_080186DC(struct Unk_02038590 *);
void sub_0801870C(struct Unk_02038590 *);
void sub_08018758(struct Unk_02038590 *);
void sub_08018764(struct Unk_02038590 *);
void sub_080187B0(struct Unk_02038590 *);
void sub_080187E8(struct Unk_02038590 *);
void sub_08018808(struct Unk_02038590 *);
void sub_08018828(struct Unk_02038590 *);
void sub_08018850(struct Unk_02038590 *);
void sub_08018864(struct Unk_02038590 *);
void sub_08018884(struct Unk_02038590 *);
void sub_080188BC(struct Unk_02038590 *);
void sub_080188F0(struct Unk_02038590 *);
void sub_08018930(struct Unk_02038590 *);
void sub_08018944(struct Unk_02038590 *);
void sub_080189A0(struct Unk_02038590 *);
void sub_080189DC(struct Unk_02038590 *);
void sub_08018A10(struct Unk_02038590 *);
void sub_08018A3C(struct Unk_02038590 *);
void sub_08018A50(struct Unk_02038590 *);
void sub_08018A9C(struct Unk_02038590 *);
void sub_08018AD0(struct Unk_02038590 *);
void sub_08018B18(struct Unk_02038590 *);
void sub_08018B6C(struct Unk_02038590 *);
void sub_08018B80(struct Unk_02038590 *);
void sub_08018BAC(struct Unk_02038590 *);
void sub_08018BF4(struct Unk_02038590 *);
void sub_08018C38(struct Unk_02038590 *);
void sub_08018C80(struct Unk_02038590 *);
void sub_08018C98(struct Unk_02038590 *);
void sub_08018CAC(struct Unk_02038590 *);
void sub_08018CDC(struct Unk_02038590 *);
void sub_08018D18(struct Unk_02038590 *);
void sub_08018D30(struct Unk_02038590 *);
void sub_08018D44(struct Unk_02038590 *);
void sub_08018D70(struct Unk_02038590 *);
void sub_08018D88(struct Unk_02038590 *);
void sub_08018D9C(struct Unk_02038590 *);
void sub_08018DC8(struct Unk_02038590 *);
void sub_08018DE8(struct Unk_02038590 *);
void sub_08018E3C(struct Unk_02038590 *);
void sub_08018E50(struct Unk_02038590 *);
void sub_08018E7C(struct Unk_02038590 *);
void sub_08018E94(struct Unk_02038590 *);
void sub_08018EC8(struct Unk_02038590 *);
void sub_08018EF4(struct Unk_02038590 *);
void sub_08018F34(struct Unk_02038590 *);
void sub_08018F50(struct Unk_02038590 *);
void sub_08018F64(struct Unk_02038590 *);
void sub_08018F7C(struct Unk_02038590 *);
void sub_08018F9C(struct Unk_02038590 *);
void sub_08018FBC(struct Unk_02038590 *);
void sub_08018FD0(struct Unk_02038590 *);
void sub_08019010(struct Unk_02038590 *);
void sub_0801902C(struct Unk_02038590 *);
void sub_08019060(struct Unk_02038590 *);
void sub_08019074(struct Unk_02038590 *);
void sub_08019094(struct Unk_02038590 *);
void sub_080190E8(struct Unk_02038590 *);
void sub_080190F4(struct Unk_02038590 *);
void sub_0801910C(struct Unk_02038590 *);
void sub_08019138(struct Unk_02038590 *);
void sub_08019178(struct Unk_02038590 *);
void sub_08019198(struct Unk_02038590 *);
void sub_080191F0(struct Unk_02038590 *);
void sub_08019248(struct Unk_02038590 *);
void sub_08019288(struct Unk_02038590 *);
void sub_080192BC(struct Unk_02038590 *);
void sub_080192D4(struct Unk_02038590 *);
void sub_08019324(struct Unk_02038590 *);
void sub_08019358(struct Unk_02038590 *);
void sub_08019378(struct Unk_02038590 *);
void sub_080193B8(struct Unk_02038590 *);
void sub_080193F8(struct Unk_02038590 *);
void sub_08019418(struct Unk_02038590 *);
void sub_08019438(struct Unk_02038590 *);
void sub_0801948C(struct Unk_02038590 *);
void sub_080194C0(struct Unk_02038590 *);
void sub_080194E0(struct Unk_02038590 *);
void sub_08019508(struct Unk_02038590 *);
void sub_08019524(struct Unk_02038590 *);
void sub_08019558(struct Unk_02038590 *);
void sub_080195A4(struct Unk_02038590 *);
void sub_080195C4(struct Unk_02038590 *);
void sub_0801960C(struct Unk_02038590 *);
void sub_08019638(struct Unk_02038590 *);
void sub_08019664(struct Unk_02038590 *);
void sub_080196A4(struct Unk_02038590 *);
void sub_080196D0(struct Unk_02038590 *);
void sub_080196E4(struct Unk_02038590 *);
void sub_08019734(struct Unk_02038590 *, u16);
void sub_08019758(struct Unk_02038590 *);
void sub_08019784(struct Unk_02038590 *, u16);
void sub_08019798(struct Unk_02038590 *);
void sub_080197BC(struct Unk_02038590 *, u16);
void sub_080197DC(struct Unk_02038590 *);
void sub_08019818(struct Unk_02038590 *);
void sub_0801984C(struct Unk_02038590 *, u16);
void sub_08019878(struct Unk_02038590 *);
void sub_080198C4(struct Unk_02038590 *);
void sub_080198E0(struct Unk_02038590 *);
void sub_08019914(struct Unk_02038590 *);
void sub_08019930(struct Unk_02038590 *);
void sub_0801995C(struct Unk_02038590 *);
void sub_08019998(struct Unk_02038590 *);
void sub_080199CC(struct Unk_02038590 *);
void sub_080199F0(struct Unk_02038590 *);
void sub_08019A0C(struct Unk_02038590 *);
void sub_08019A40(struct Unk_02038590 *);
void sub_08019A5C(struct Unk_02038590 *);
void sub_08019A88(struct Unk_02038590 *);
void sub_08019AA4(struct Unk_02038590 *);
void sub_08019AD0(struct Unk_02038590 *);
void sub_08019AF8(struct Unk_02038590 *);
void nullsub_106(struct Unk_02038590 *);
void sub_08019B30(struct Unk_02038590 *);
void sub_08019B84(struct Unk_02038590 *);
void sub_08019BF0(struct Unk_02038590 *);
void sub_08019C4C(struct Unk_02038590 *);

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
    [ 0 ...  3] = KIRBY_ABILITY_FIRE,
    [ 4 ...  6] = KIRBY_ABILITY_ICE,
    [ 7 ...  9] = KIRBY_ABILITY_CUTTER,
    [10 ... 12] = KIRBY_ABILITY_BEAM,
    [13 ... 15] = KIRBY_ABILITY_SWORD,
    [16 ... 18] = KIRBY_ABILITY_CUTTER,
    [19 ... 22] = KIRBY_ABILITY_CUPID,
    [23 ... 25] = KIRBY_ABILITY_MISSILE,
    [26 ... 28] = KIRBY_ABILITY_BURNING,
    [29 ... 31] = KIRBY_ABILITY_PARASOL,
    [32 ... 34] = KIRBY_ABILITY_WHEEL,
    [35 ... 38] = KIRBY_ABILITY_PARASOL,
    [39 ... 41] = KIRBY_ABILITY_BOMB,
    [42 ... 44] = KIRBY_ABILITY_LASER,
    [45 ... 47] = KIRBY_ABILITY_SPARK,
    [48 ... 49] = KIRBY_ABILITY_HAMMER,
    [50]        = KIRBY_ABILITY_SMASH,
    [51 ... 53] = KIRBY_ABILITY_TORNADO,
    [54 ... 56] = KIRBY_ABILITY_FIGHTER,
    [57]        = KIRBY_ABILITY_UFO,
    [58 ... 59] = KIRBY_ABILITY_STONE,
    [60]        = KIRBY_ABILITY_THROW,
    [61]        = KIRBY_ABILITY_COOK,
    [62]        = KIRBY_ABILITY_MAGIC,
    [63]        = KIRBY_ABILITY_CRASH,
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
                        a1->unkE4.data = sp04 >> 1;
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

bool16 sub_080126CC(struct Unk_02038590 *a1) {
    s8 r8 = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 r7 = (a1->unk40->base.base.base.x + 0x1800 * r8) >> 0xC;
    s16 r2 = (a1->unk40->base.base.base.y >> 0xC) - 1;
    const u32 *r4, *r4_2, *r4_3;
    u32 r1;

    if (r7 >= 0
        && r7 < a1->unk14->roomWidth >> 4
        && r2 >= 0
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, r7, r2)]) & 0x1000
        && ((r1 & 0xF00000) == 0 || (r1 & 0xF00000) == 0x100000)) {
        if (a1->unkDC != 0x10) {
            a1->unkDE = 0xFFFF;
            a1->unk0[3] = sub_08017684;
        }
        return TRUE;
    }
    r2 = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (r7 >= 0
        && r7 < a1->unk14->roomWidth >> 4
        && r2 < a1->unk14->roomHeight >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, r7, r2)]) & 0x1000
        && ((r1 & 0xF00000) == 0 || (r1 & 0xF00000) == 0x100000)) {
        if (Rand16() & 1) {
            if (a1->unkDC != 0xB) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017144;
            }
        } else {
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
        }
        return TRUE;
    }
    r7 = (a1->unk40->base.base.base.x >> 0xC) + r8;
    r2 = a1->unk40->base.base.base.y >> 0xC;
    if (r7 >= 0
        && r7 < a1->unk14->roomWidth >> 4
        && (r4_3 = gUnk_082D88B8, r1 = r4_3[sub_080024F0(a1->unk14, r7, r2)]) & 0x1000
        && ((r1 & 0xF00000) == 0 || (r1 & 0xF00000) == 0x100000)) {
        if (a1->unkDC != 0x10) {
            a1->unkDE = 0xFFFF;
            a1->unk0[3] = sub_08017684;
        }
        return TRUE;
    }
    return FALSE;
}

bool16 sub_08012884(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = a1->unk40->base.base.base.x >> 0xC;
    s16 c = (a1->unk40->base.base.base.y >> 0xC) - 1;
    const u32 *r4, *r4_2;
    u32 r1;

    if (c >= 0
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x >> 0xC) + a;
    c = a1->unk40->base.base.base.y >> 0xC;
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08012980(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = (a1->unk40->base.base.base.x >> 0xC) + a;
    s16 c = a1->unk40->base.base.base.y >> 0xC;
    const u32 *r4, *r4_2;
    u32 r1;

    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    b = a1->unk40->base.base.base.x >> 0xC;
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (c < a1->unk14->roomHeight >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08012A88(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = a1->unk40->base.base.base.x >> 0xC;
    s16 c = (a1->unk40->base.base.base.y >> 0xC) - 1;
    const u32 *r4, *r4_2, *r4_3;
    u32 r1;

    if (c >= 0
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x >> 0xC) + a;
    c = a1->unk40->base.base.base.y >> 0xC;
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && c < a1->unk14->roomHeight >> 4
        && (r4_3 = gUnk_082D88B8, r1 = r4_3[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08012BC8(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = (a1->unk40->base.base.base.x >> 0xC) + a;
    s16 c = a1->unk40->base.base.base.y >> 0xC;
    const u32 *r4;
    u32 r1;

    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08012C5C(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = (a1->unk40->base.base.base.x + 0x1800 * a) >> 0xC;
    s16 c = (a1->unk40->base.base.base.y >> 0xC) - 1;
    const u32 *r4, *r4_2, *r4_3;
    u32 r1;

    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && c >= 0
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x >> 0xC) + a;
    c = a1->unk40->base.base.base.y >> 0xC;
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x + 0x1800 * a) >> 0xC;
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && c < a1->unk14->roomHeight >> 4
        && (r4_3 = gUnk_082D88B8, r1 = r4_3[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08012DD4(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = a1->unk40->base.base.base.x >> 0xC;
    s16 c = (a1->unk40->base.base.base.y >> 0xC) - 1;
    const u32 *r4, *r4_2;
    u32 r1;

    if (c >= 0
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
            if (a1->unkDC != 0x14) {
                a1->unk0[3] = sub_08019094;
            }
            return TRUE;
        }
    }
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (c < a1->unk14->roomHeight >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
            if (a1->unkDC != 0x14) {
                a1->unk0[3] = sub_08019094;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08012EAC(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = a1->unk40->base.base.base.x >> 0xC;
    s16 c = (a1->unk40->base.base.base.y >> 0xC) - 1;
    const u32 *r4, *r4_2, *r4_3;
    u32 r1;

    if (c >= 0
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x >> 0xC) + a;
    c = a1->unk40->base.base.base.y >> 0xC;
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    b = a1->unk40->base.base.base.x >> 0xC;
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (c < a1->unk14->roomHeight >> 4
        && (r4_3 = gUnk_082D88B8, r1 = r4_3[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08012FD8(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = (a1->unk40->base.base.base.x >> 0xC) + a;
    s16 c = (a1->unk40->base.base.base.y >> 0xC) - 1;
    const u32 *r4, *r4_2, *r4_3;
    u32 r1;

    if (c >= 0
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x18) {
                a1->unkDE = 0xFFFF;
                a1->unkE0 = 2;
                a1->unkE4.data = 0;
                a1->unk0[3] = sub_08017D40;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x >> 0xC) + a;
    c = a1->unk40->base.base.base.y >> 0xC;
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x18) {
                a1->unkDE = 0xFFFF;
                a1->unkE0 = 0xFFFF;
                a1->unkE4.data = 0;
                a1->unk0[3] = sub_08017D40;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x >> 0xC) + a;
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (c < a1->unk14->roomHeight >> 4
        && (r4_3 = gUnk_082D88B8, r1 = r4_3[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0x18) {
                a1->unkDE = 0xFFFF;
                a1->unkE0 = 3;
                a1->unkE4.data = 0;
                a1->unk0[3] = sub_08017D40;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08013174(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = a1->unk40->base.base.base.x >> 0xC;
    s16 c = (a1->unk40->base.base.base.y >> 0xC) - 1;
    const u32 *r4, *r4_2, *r4_3;
    u32 r1;

    if (c >= 0
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
        case 0x300000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x >> 0xC) + a;
    c = a1->unk40->base.base.base.y >> 0xC;
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
        case 0x300000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x + 0x1800 * a) >> 0xC;
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && c < a1->unk14->roomHeight >> 4
        && (r4_3 = gUnk_082D88B8, r1 = r4_3[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
        case 0x300000:
            if (a1->unkDC != 0x10) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017684;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08013318(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 d = (a1->unk40->base.base.base.x >> 0xC) + a;
    s16 b, c;
    const u32 *r4, *r4_2, *r4_3;
    u32 r1;

    if (d >= 0
        && d < a1->unk14->roomWidth >> 4) {
        b = (a1->unk40->base.base.base.x + 0x800 * a) >> 0xC;
        c = (a1->unk40->base.base.base.y >> 0xC) - 1;
        if (c >= 0
            && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
            switch (r1 & 0xF00000) {
            case 0:
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return TRUE;
            }
        }
    } else {
        return FALSE;
    }
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (c < a1->unk14->roomHeight >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
            if (Rand16() & 1) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
            } else {
                if (a1->unkDC != 0xB) {
                    a1->unkDE = 0xFFFF;
                    a1->unk0[3] = sub_08017144;
                }
            }
            return TRUE;
        case 0x100000:
            if (a1->unkDC != 0xB) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017144;
            }
            return TRUE;
        }
    }
    b = (a1->unk40->base.base.base.x >> 0xC) + a;
    c = a1->unk40->base.base.base.y >> 0xC;
    if ((r4_3 = gUnk_082D88B8, r1 = r4_3[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
            if (Rand16() & 1) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
            } else {
                if (a1->unkDC != 0xB) {
                    a1->unkDE = 0xFFFF;
                    a1->unk0[3] = sub_08017144;
                }
            }
            return TRUE;
        case 0x100000:
            if (a1->unkDC != 0xB) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017144;
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08013518(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b, c;
    const u32 *r4, *r4_2, *r4_3;
    u32 r1;

    b = a1->unk40->base.base.base.x >> 0xC;
    c = (a1->unk40->base.base.base.y >> 0xC) - 1;
    if (c >= 0
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
        case 0x200000:
            if (a1->unkDC != 0x19) {
                a1->unkDE = 0xFFFF;
                a1->unkE0 = 2;
                a1->unkE4.data = 0x1E;
                a1->unk0[3] = sub_08017E1C;
            }
            return TRUE;
        }
    }
    if (b >= 0
        && b < a1->unk14->roomWidth >> 4) {
        b = (a1->unk40->base.base.base.x >> 0xC) + a;
        c = a1->unk40->base.base.base.y >> 0xC;
        if ((r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
            switch (r1 & 0xF00000) {
            case 0:
            case 0x100000:
            case 0x200000:
                if (a1->unkDC != 0x19) {
                    a1->unkDE = a <= 0;
                    a1->unkE0 = 0xFFFF;
                    a1->unkE4.data = 0x1E;
                    a1->unk0[3] = sub_08017E1C;
                }
                return TRUE;
            }
        }
    } else {
        return FALSE;
    }
    b = (a1->unk40->base.base.base.x >> 0xC) + a;
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (c < a1->unk14->roomHeight >> 4
        && (r4_3 = gUnk_082D88B8, r1 = r4_3[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
            if (Rand16() & 1) {
                if (a1->unkDC != 0xb) {
                    a1->unkDE = 0xFFFF;
                    a1->unk0[3] = sub_08017144;
                }
            } else {
        case 0x100000:
        case 0x200000:
                if (a1->unkDC != 0x19) {
                    a1->unkDE = a <= 0;
                    a1->unkE0 = 3;
                    a1->unkE4.data = 0x1E;
                    a1->unk0[3] = sub_08017E1C;
                }
            }
            return TRUE;
        }
    }
    return FALSE;
}

bool16 sub_08013720(struct Unk_02038590 *a1) {
    s8 a = a1->unk40->base.base.base.flags & 1 ? -1 : 1;
    s16 b = (a1->unk40->base.base.base.x >> 0xC) + a;
    s16 c = a1->unk40->base.base.base.y >> 0xC;
    const u32 *r4, *r4_2;
    u32 r1;

    if (b >= 0
        && b < a1->unk14->roomWidth >> 4
        && (r4 = gUnk_082D88B8, r1 = r4[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0xB) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017144;
            }
            return TRUE;
        }
    }
    b = a1->unk40->base.base.base.x >> 0xC;
    c = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (c < a1->unk14->roomHeight >> 4
        && (r4_2 = gUnk_082D88B8, r1 = r4_2[sub_080024F0(a1->unk14, b, c)]) & 0x1000) {
        switch (r1 & 0xF00000) {
        case 0:
        case 0x100000:
            if (a1->unkDC != 0xB) {
                a1->unkDE = 0xFFFF;
                a1->unk0[3] = sub_08017144;
            }
            return TRUE;
        }
    }
    return FALSE;
}

void sub_08013804(struct Unk_02038590 *a1) {
    if (!(a1->flags & 4)) {
        if (!IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            a1->unk0[1] = sub_080184DC;
            a1->flags |= 0xC;
        } else if (!(a1->flags & 8)) {
            switch (a1->unkB4[a1->unkB8]) {
            case 0:
                sub_08018388(a1);
                break;
            case 0xFFFF:
                sub_08018394(a1);
                break;
            case 1:
                sub_080183A0(a1);
                break;
            case 2:
                sub_080183D0(a1);
                break;
            case 3:
                sub_08018400(a1);
                break;
            case 4:
                sub_08018428(a1);
                break;
            case 5:
                sub_08018458(a1);
                break;
            case 6:
                sub_08018488(a1);
                break;
            case 7:
                break;
            case 8:
                sub_080184A4(a1);
                break;
            case 9:
                sub_0801399C(a1);
                break;
            case 0xA:
                sub_080184C4(a1);
                break;
            }
        }
    }
}

void sub_08013924(struct Unk_02038590 *a1) {
    if (a1->unk40->base.base.base.flags & 0x80
        || !--a1->unkBC) {
        a1->unk0[0] = sub_080199F0;
    } else {
        switch (a1->unk40->ability) {
        default:
            if (a1->unk40->base.base.base.flags & 0x40)
                a1->unk0[0] = sub_08019A40;
            else if (a1->unk40->base.base.base.flags & 0x20)
                a1->unk0[0] = sub_08019A88;
            else
                a1->unk0[0] = sub_08019AD0;
            break;
        case KIRBY_ABILITY_SLEEP:
        case KIRBY_ABILITY_UFO:
        case KIRBY_ABILITY_MINI:
            a1->unk0[0] = sub_08019AD0;
            break;
        }
    }
}

void sub_0801399C(struct Unk_02038590 *a1) {
    u16 r6 = *sub_08002888(0, 0xF, a1->unk14->unk65E);
    bool32 a = FALSE;
    u8 r7;
    u16 b, c;

    ++a1->unkB8;
    r7 = a1->unkB4[a1->unkB8];
    ++a1->unkB8;
    b = a1->unkB4[a1->unkB8];
    ++a1->unkB8;
    c = a1->unkB4[a1->unkB8];
    ++a1->unkB8;
    switch (r7) {
    case 0:
        if (r6 == b)
            a = TRUE;
        break;
    case 1:
        if (r6 != b)
            a = TRUE;
        break;
    case 2:
        if (r6 > b)
            a = TRUE;
        break;
    case 3:
        if (r6 < b)
            a = TRUE;
        break;
    case 4:
        if (r6 >= b)
            a = TRUE;
        break;
    case 5:
        if (r6 <= b)
            a = TRUE;
        break;
    default:
        break;
    }
    if (a)
        a1->unkB8 += c;
}

void sub_08013A60(struct Unk_02038590 *a1) {
    if (a1->unk14->currentRoom == 0x397)
        a1->unk0[1] = sub_08018504;
    else {
        a1->unk1B = 0xFF;
        a1->unk3F = 0xFF;
        a1->unk7C = a1->unk40->base.base.base.x;
        a1->unk80 = a1->unk40->base.base.base.y;
        a1->unk84 = 0;
        a1->unk86 = 0;
        a1->unk88 = 0;
        a1->unk8A = 0;
        a1->unk8C = a1->unk7C;
        a1->unk90 = a1->unk80;
        a1->unk94 = a1->unk84;
        a1->unk96 = a1->unk86;
        a1->unk98 = a1->unk88;
        a1->unk9A = a1->unk8A;
        a1->unk0[2] = sub_0801852C;
        a1->unk0[1] = nullsub_106;
    }
}

static inline const struct LevelInfo_1E8 *sub_08013B00_helper(struct Unk_02038590 *a1) {
    return a1->unk14->unk1E8;
}

void sub_08013B00(struct Unk_02038590 *a1) {
    const struct LevelInfo_1E8 *r5 = a1->unk14->unk1E8;
    u8 a;

    a1->flags &= ~1;
    a1->unkCC = 0x708;
    a = sub_0800EEBC(&a1->unk40->base.base.base);
    if (a != a1->unk1A)
        ++a1->unk3C;
    a1->unk1A = a;
    a1->unk7C = r5->unk14[a1->unk1B].unk20 << 8;
    a1->unk80 = r5->unk14[a1->unk1B].unk22 << 8;
    a1->unk3F = sub_08013B00_helper(a1)->unk14[a1->unk1A].unk0[a1->unk1B];
    sub_08010144(a1);
    a1->unk0[2] = sub_0801858C;
    a1->unk0[1] = sub_08019B30;
}

void sub_08013B98(struct Unk_02038590 *a1) {
    const struct LevelInfo_1E8 *r5;

    if (a1->unk1A == 0xFF)
        a1->unk1A = sub_0800EEBC(&a1->unk40->base.base.base);
    r5 = a1->unk14->unk1E8;
    a1->unk1B = sub_08010034(a1->unk14, a1->unk1A);
    a1->unk7C = r5->unk14[a1->unk1B].unk20 << 8;
    a1->unk80 = r5->unk14[a1->unk1B].unk22 << 8;
    a1->unk3F = sub_08013B00_helper(a1)->unk14[a1->unk1A].unk0[a1->unk1B];
    sub_08010144(a1);
    a1->unkCC = (Rand16() & 0x3FF) + 0x2D0;
    a1->flags &= ~1;
    a1->unk0[2] = sub_0801858C;
    a1->unk0[1] = sub_08013C4C;
}

void sub_08013C4C(struct Unk_02038590 *a1) {
    u16 i;

    for (i = 0; i < gUnk_0203AD30; ++i) {
        if (gCurLevelInfo[i].currentRoom == a1->unk14->currentRoom)
            break;
    }
    if (i == gUnk_0203AD30)
        a1->unk0[1] = sub_08014928;
    else if (sub_080103BC(a1))
        a1->unk0[1] = sub_080184E8;
    else if (!(a1->flags & 1)) {
        if (a1->unkCC) --a1->unkCC;
        if (!(a1->flags & 1)
            && (a1->unk1A == a1->unk1B || a1->unk1B == 0xFF || !a1->unkCC)) {
            a1->flags |= 1;
            a1->unk0[1] = sub_08019B84;
        }
    }
}

void sub_08013D0C(struct Unk_02038590 *a1) {
    u16 i;

    for (i = 0; i < gUnk_0203AD30; ++i) {
        if (gCurLevelInfo[i].currentRoom == a1->unk14->currentRoom)
            break;
    }
    if (i == gUnk_0203AD30)
        a1->unk0[1] = sub_08014928;
    else if (sub_080103BC(a1))
        a1->unk0[1] = sub_080184E8;
    else {
        if (!(a1->unkCC & 0x1F))
            sub_08010144(a1);
        if (!--a1->unkCC)
            a1->unk0[1] = sub_08013B98;
    }
}

struct Kirby *sub_08013DB4(u8 a1) {
    u16 r1;
    u16 r2;
    u32 mask;
    u16 roomId = gCurLevelInfo[a1].currentRoom;
    const struct Unk_08D6CD0C *sl = gUnk_08D6CD0C[roomId];

    if (!gUnk_0203AD30)
        return NULL;
    for (r2 = 0; r2 < gUnk_0203AD30; ++r2) {
        if (gCurLevelInfo[r2].currentRoom != 0xFFFF) {
            const struct Unk_08D6CD0C *ptr = gUnk_08D6CD0C[gCurLevelInfo[r2].currentRoom];

            if (sl->unk46 == ptr->unk46) break;
        }
    }
    if (r2 < gUnk_0203AD30) {
        r1 = Rand16();
        mask = 3; // same issue as sub_08010034
        r2 = 0xFFFF;
        for (r1 &= mask; r1 != 0xFFFF; --r1) {
            while (1) {
                for (++r2; r2 < gUnk_0203AD30; ++r2) {
                    if (gCurLevelInfo[r2].currentRoom != 0xFFFF) {
                        const struct Unk_08D6CD0C *ptr = gUnk_08D6CD0C[gCurLevelInfo[r2].currentRoom];
            
                        if (sl->unk46 == ptr->unk46) break;
                    }
                }
                if (r2 < gUnk_0203AD30)
                    break;
                r2 = 0xFFFF;
            }
        }
    } else {
        r1 = Rand16();
        mask = 3; // same issue as sub_08010034
        r2 = 0xFFFF;
        for (r1 &= mask; r1 != 0xFFFF; --r1) {
            if (++r2 >= gUnk_0203AD30)
                r2 = 0;
        }
    }
    return gKirbys + r2;
}

bool32 sub_08013F48(struct Unk_02038590 *a1, u16 a2) {
    u8 a, b;
    const struct Unk_08D6CD0C *c, *d;
    u8 a_, b_;

    sub_08002D40(a2, &a, &b);
    a_ = a;
    b_ = b;
    c = gUnk_08D6CD0C[a2];
    d = gUnk_08D6CD0C[a1->unk14->currentRoom];
    if (sub_080551FC(a1->unk40, a2, a_, b_)) {
        if (d->unk46 == c->unk46)
            ++a1->unkB0;
        else
            a1->unkB0 = 0;
        return TRUE;
    } else {
        return FALSE;
    }
}

u16 sub_08013FC4(struct Unk_02038590 *a1, u16 a2) {
    const struct Unk_08D6CD0C *b = gUnk_08D6CD0C[a2];
    const struct Unk_08D6DCAC *a = gUnk_08D6DCAC[b->unk46];
    u16 i;
    u16 r;
    u32 mask;

    for (i = 0; i < a->unk4 && a->unk0[2*i] != a2; ++i)
        ;
    if (i == a->unk4)
        return 0xFFFF;
    r = Rand16();
    mask = 0x1F;
    i = 0xFFFF;
    for (r &= mask; r != 0xFFFF; --r) {
        while (1) {
            for (++i; i < a->unk4; ++i) {
                if (a->unk0[2*i] == a2)
                    break;
            }
            if (i < a->unk4)
                break;
            i = 0xFFFF;
        }
    }
    return a->unk0[2*i + 1];
}

u16 sub_080140B0(struct Unk_02038590 *a1, u16 a2) {
    const struct Unk_08D6CD0C *b = gUnk_08D6CD0C[a2];
    u16 i;
    u16 r;
    u32 mask;
    u32 var;

    for (i = 0; i < b->unk48; ++i) {
        const struct Unk_08D6CD0C *r3 = gUnk_08D6CD0C[b->unk0[i][0]];

        if (b->unk0[i][1] > 1 && !(r3->unk47 & 0x80))
            break;
    }
    if (i == b->unk48) {
        u16 ret = sub_08013FC4(a1, a2);

        if (ret != 0xFFFF)
            return ret;
        else 
            return a1->unk18;
    }
    r = Rand16();
    mask = 0x1F;
    i = 0xFFFF;
    var = 0xFFFF; // permuter
    for (r &= mask; r != var; --r) {
        while (1) {
            for (++i; i < b->unk48; ++i) {
                if (b->unk0[i][1] > 1 && !(gUnk_08D6CD0C[b->unk0[i][0]]->unk47 & 0x80))
                    break;
            }
            if (i < b->unk48)
                break;
            i = 0xFFFF;
        }
    }
    return b->unk0[i][0];
}

u16 sub_080141EC(struct Unk_02038590 *a1, u16 a2, u16 *a3) {
    const struct Unk_08D6DCAC *a;
    const struct Unk_08D6CD0C *b = gUnk_08D6CD0C[a2];
    const struct Unk_08D6CD0C *c;
    u16 i;
    u16 r;
    u16 r4 = 0;

    if (*a3 == 0xFFFF) {
        if (!a1->unkA8)
            a1->unkA8 = &gKirbys[(a1->unk40->base.base.base.unk56 + 1) & 3];
        *a3 = gCurLevelInfo[a1->unkA8->base.base.base.unk56].currentRoom;
    }
    if (b->unk47 & 8) {
        for (i = 0; i < 8 && (a2 != gUnk_082DE074[i][0] || *a3 != gUnk_082DE074[i][1]); ++i)
            ;
        if (i == 8)
            *a3 = r4 = a1->unk18;
        else if (*sub_08002888(1, i + 1, 0))
            *a3 = r4 = a1->unk18;
        else
            r4 = *a3;
    } else {
        if (b->unk47 & 0x87)
            *a3 = r4 = a1->unk18;
    }
    if (r4) return r4;
    for (i = 0; i < b->unk48 && b->unk0[i][0] != *a3; ++i)
        ;
    if (i != b->unk48 && b->unk0[i][1]) {
        r4 = b->unk0[i][3];
        return r4;
    }
    c = gUnk_08D6CD0C[*a3];
    if (b->unk46 != c->unk46) {
        a = gUnk_08D6DCAC[b->unk46];
        for (i = 0; i < a->unk4; ++i) {
            if (gUnk_08D6CD0C[a->unk0[2*i + 1]]->unk46 == c->unk46)
                break;
        }
        if (i < a->unk4) {
            if (a->unk0[2*i] == a2)
                r4 = a->unk0[2*i + 1];
            else {
                *a3 = a->unk0[2*i];
                r4 = a2;
            }
            return r4;
        }
        if (a->unk4) {
            r = (Rand16() & 0x1F) + 1;
            i = 0xFFFF;
            for (; r; --r) {
                if (++i >= a->unk4)
                    i = 0;
            }
            *a3 = a->unk0[2 * i];
        } else {
            *a3 = a1->unk18;
        }
        r4 = *a3;
    } else {
        *a3 = sub_080140B0(a1, a2);
        if (a1->unk18 == *a3)
            r4 = a1->unk18;
        else
            r4 = a2;
    }
    return r4;
}

static inline u16 sub_08014454_helper(u16 roomId) {
    u16 i;

    for (i = 0; i < 8; ++i) {
        if (roomId == gUnk_082DE074[i][0])
            return i;
    }
    return 0xFFFF;
}

static inline u16 CurrentRoom(struct LevelInfo *li) {
    return li->currentRoom;
}

bool32 sub_08014454(struct Unk_02038590 *a1) {
    if (a1->unkAC) {
        --a1->unkAC;
        if (a1->unkA8
            && gCurLevelInfo[a1->unkA8->base.base.base.unk56].currentRoom != 0xFFFF
            && a1->unk14->currentRoom == gCurLevelInfo[a1->unkA8->base.base.base.unk56].currentRoom)
            a1->flags |= 0x20;
    } else {
        if (!IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
            bool32 r9 = TRUE;
            u16 r6 = a1->unk14->currentRoom;
            const struct Unk_08D6CD0C *r2 = gUnk_08D6CD0C[r6];

            if (r2->unk47 & 2) {
                if (!sub_08013F48(a1, a1->unk18))
                    r9 = FALSE;
                a1->unkA8 = sub_08013DB4(a1->unk40->base.base.base.unk56);
                a1->flags &= ~0x20;
            } else {
                if ((r6 == 0x323 || r6 == 0x324 || r6 == 0x325)
                    && !(gCurLevelInfo[0].currentRoom == 0x323 || gCurLevelInfo[0].currentRoom == 0x324 || gCurLevelInfo[0].currentRoom == 0x325)) {
                    const struct Unk_08D6CD0C *r4, *sl;
                    u8 a, b;

                    a1->unkA8 = sub_08013DB4(a1->unk40->base.base.base.unk56);
                    a1->flags &= ~0x20;
                    a1->unk18 = 0x321;
                    a = gUnk_082D8D08[a1->unk40->base.base.base.unk56][0] >> 0xC;
                    b = gUnk_082D8D08[a1->unk40->base.base.base.unk56][1] >> 0xC;
                    sl = gUnk_08D6CD0C[a1->unk18];
                    r4 = gUnk_08D6CD0C[CurrentRoom(a1->unk14)];
                    if (sub_080551FC(a1->unk40, 0x321, a, b)) {
                        if (r4->unk46 == sl->unk46)
                            ++a1->unkB0;
                        else
                            a1->unkB0 = 0;
                    } else {
                        r9 = FALSE;
                    }
                } else {
                    if (r2->unk47 & 8) {
                        u16 i;
                        u16 r0 = sub_08014454_helper(a1->unk14->currentRoom);

                        for (i = 0; i < gUnk_0203AD30; ++i) {
                            if (gKirbys[i].base.base.base.roomId == gUnk_082DE074[r0][1])
                                break;
                        }
                        if (i < gUnk_0203AD30) {
                            a1->unkA8 = gKirbys + i;
                            a1->flags &= ~0x20;
                            a1->unkAE = gCurLevelInfo[a1->unkA8->base.base.base.unk56].currentRoom;
                            if (!sub_08013F48(a1, sub_080141EC(a1, r6, &a1->unkAE)))
                                r9 = FALSE;
                        }
                    } else {
                        if (r6 == a1->unkAE) {
                            if (a1->unkA8 && gCurLevelInfo[a1->unkA8->base.base.base.unk56].currentRoom != 0xFFFF && !(a1->flags & 0x20)) {
                                u16 r1;

                                a1->unkAE = gCurLevelInfo[a1->unkA8->base.base.base.unk56].currentRoom;
                                r1 = sub_080141EC(a1, r6, &a1->unkAE);
                                if (r6 == r1)
                                    r9 = FALSE;
                                else if (a1->unk18 == r1) {
                                    if (!sub_08013F48(a1, r1))
                                        r9 = FALSE;
                                } else {
                                    if (!sub_08013F48(a1, r1))
                                        r9 = FALSE;
                                }

                            } else {
                                a1->unkAE = sub_080140B0(a1, r6);
                                a1->flags &= ~0x20;
                                if (a1->unk18 == a1->unkAE
                                    && !sub_08013F48(a1, a1->unkAE))
                                    r9 = FALSE;
                            }
                        } else {
                            u16 r1 = sub_080141EC(a1, r6, &a1->unkAE);

                            if (a1->unk18 == r1) {
                                if (!sub_08013F48(a1, r1))
                                    r9 = FALSE;
                                a1->unkA8 = sub_08013DB4(a1->unk40->base.base.base.unk56);
                                a1->flags &= ~0x20;
                            } else {
                                if (r6 != r1) {
                                    if (!sub_08013F48(a1, r1))
                                        r9 = FALSE;
                                } else {
                                    r9 = FALSE;
                                    a1->unkA8 = sub_08013DB4(a1->unk40->base.base.base.unk56);
                                }
                            }
                        }
                    }
                }
            }
            if (r9) {
                const struct Unk_08D6CD0C *r0 = gUnk_08D6CD0C[a1->unk14->currentRoom];
                u16 r1;

                if ((a1->unk14->currentRoom == 0x323 || a1->unk14->currentRoom == 0x324 || a1->unk14->currentRoom == 0x325)
                    || r0->unk47 & 0x83)
                    r1 = 0xB4;
                else if (r0->unk47 & 8)
                    r1 = (Rand16() & 0x7F) + 0x3C;
                else
                    r1 = (Rand16() & 0xFFF) + 0x2328;
                a1->unkAC = r1;
            }
            return r9;
        } else {
            const struct Unk_08D6CD0C *r0 = gUnk_08D6CD0C[a1->unk14->currentRoom];
            u16 r1;

            if ((a1->unk14->currentRoom == 0x323 || a1->unk14->currentRoom == 0x324 || a1->unk14->currentRoom == 0x325)
                || r0->unk47 & 0x83)
                r1 = 0xB4;
            else if (r0->unk47 & 8)
                r1 = (Rand16() & 0x7F) + 0x3C;
            else
                r1 = (Rand16() & 0x7FF) + 0xE10;
            a1->unkAC = r1;
        }
    }
    return FALSE;
}

void sub_08014928(struct Unk_02038590 *a1) {
    const struct Unk_08D6CD0C *r0 = gUnk_08D6CD0C[a1->unk14->currentRoom];
    u16 r1;

    if ((a1->unk14->currentRoom == 0x323 || a1->unk14->currentRoom == 0x324 || a1->unk14->currentRoom == 0x325)
        || r0->unk47 & 0x83)
        r1 = 0xB4;
    else if (r0->unk47 & 8)
        r1 = (Rand16() & 0x7F) + 0x3C;
    else
        r1 = (Rand16() & 0x7FF) + 0xE10;
    a1->unkAC = r1;
    a1->unk0[1] = sub_080149CC;
}

void sub_080149CC(struct Unk_02038590 *a1) {
    const struct LevelInfo_1E8 *r5;

    if (a1->unk1A == 0xFF)
        a1->unk1A = sub_0800EEBC(&a1->unk40->base.base.base);
    r5 = a1->unk14->unk1E8;
    a1->unk1B = sub_08010034(a1->unk14, a1->unk1A);
    a1->unk7C = r5->unk14[a1->unk1B].unk20 << 8;
    a1->unk80 = r5->unk14[a1->unk1B].unk22 << 8;
    a1->unk3F = sub_08013B00_helper(a1)->unk14[a1->unk1A].unk0[a1->unk1B];
    sub_08010144(a1);
    a1->unkCC = (Rand16() & 0x3FF) + 0x2D0;
    a1->flags &= ~1;
    a1->unk0[2] = sub_0801858C;
    a1->unk0[1] = sub_08014A80;
}

void sub_08014A80(struct Unk_02038590 *a1) {
    u16 i;

    for (i = 0; i < gUnk_0203AD30; ++i) {
        if (gCurLevelInfo[i].currentRoom == a1->unk14->currentRoom) {
            a1->unk0[1] = sub_080184DC;
            return;
        }
    }
    if (sub_08014454(a1)) {
        a1->unk0[1] = sub_080149CC;
        return;
    }
    if (!(a1->flags & 1)) {
        if (a1->unkCC) --a1->unkCC;
        if (!(a1->flags & 1) && (a1->unk1A == a1->unk3F || a1->unk1B == 0xFF || !a1->unkCC)) {
            a1->flags |= 1;
            a1->unk0[1] = sub_08019C4C;
        }
    }
}

void sub_08014B28(struct Unk_02038590 *a1) {
    u16 i;

    for (i = 0; i < gUnk_0203AD30; ++i) {
        if (gCurLevelInfo[i].currentRoom == a1->unk14->currentRoom) {
            a1->unk0[1] = sub_080184DC;
            return;
        }
    }
    if (sub_08014454(a1))
        a1->unk0[1] = sub_080149CC;
    else if (!--a1->unkCC)
        a1->unk0[1] = sub_080149CC;
}

u16 sub_08014B9C(struct Unk_02038590 *a1) {
    u16 ret = 0;
    struct Kirby *kirby;

    if (a1->unk9A > 0x20 && a1->unk9A < 0x1E0)
        ret = 0x10;
    else if (a1->unk9A > 0x220 && a1->unk9A < 0x3E0)
        ret = 0x20;
    if (a1->unk9A > 0x120 && a1->unk9A < 0x2E0)
        ret |= 0x40;
    else if (a1->unk9A < 0xE0 || a1->unk9A > 0x320)
        ret |= 0x80;
    kirby = a1->unk40;
    if (ret & 0x20 && !(ret & 0x40) && !(ret & 0x80) && kirby->base.base.base.flags & 1 && kirby->base.base.base.unk62 & 1) {
        if (a1->unk9A > 0x100 && a1->unk9A < 0x300)
            ret |= 0x40;
        else
            ret |= 0x80;
    } else if (ret & 0x10 && !(ret & 0x40) && !(ret & 0x80) && !(kirby->base.base.base.flags & 1) && kirby->base.base.base.unk62 & 1) {
        if (a1->unk9A > 0x100 && a1->unk9A < 0x300)
            ret |= 0x40;
        else
            ret |= 0x80;
    } else if (ret & 0x40 && !(ret & 0x10) && !(ret & 0x20) && kirby->base.base.base.unk62 & 8) {
        if (a1->unk9A > 0x200)
            ret |= 0x20;
        else
            ret |= 0x10;
    } else if (ret & 0x80 && !(ret & 0x10) && !(ret & 0x20) && kirby->base.base.base.unk62 & 4) {
        if (a1->unk9A > 0x200)
            ret |= 0x20;
        else
            ret |= 0x10;
    }
    if (a1->unk40->base.base.base.xspeed > 0 && a1->unk26[3] == 1)
        ret = (a1->unk9E | 0x20) & ~0x10;
    else if (a1->unk40->base.base.base.xspeed < 0 && a1->unk26[1] == 1)
        ret = (a1->unk9E | 0x10) & ~0x20;
    if (a1->unk40->base.base.base.yspeed > 0 && a1->unk1C[7] == 1)
        ret = (a1->unk9E | 0x80) & ~0x40;
    else if (a1->unk40->base.base.base.yspeed < 0 && (a1->unk2B[2] == 1 || a1->unk2B[7] == 0xFF))
        ret = (a1->unk9E | 0x40) & ~0x80;
    return ret;
}

u16 sub_08014DA4(struct Unk_02038590 *a1) {
    u16 ret = 0;
    struct Kirby *kirby;

    if (a1->unk9A > 0x20 && a1->unk9A < 0x1E0)
        ret = 0x10;
    else if (a1->unk9A > 0x220 && a1->unk9A < 0x3E0)
        ret = 0x20;
    if (a1->unk9A > 0x120 && a1->unk9A < 0x2E0)
        ret |= 0x40;
    else if (a1->unk9A < 0xE0 || a1->unk9A > 0x320)
        ret |= 0x80;
    kirby = a1->unk40;
    if (ret & 0x20 && !(ret & 0x40) && !(ret & 0x80) && kirby->base.base.base.flags & 1 && kirby->base.base.base.unk62 & 1) {
        if (a1->unk9A > 0x100 && a1->unk9A < 0x300)
            ret |= 0x40;
        else
            ret |= 0x80;
    } else if (ret & 0x10 && !(ret & 0x40) && !(ret & 0x80) && !(kirby->base.base.base.flags & 1) && kirby->base.base.base.unk62 & 1) {
        if (a1->unk9A > 0x100 && a1->unk9A < 0x300)
            ret |= 0x40;
        else
            ret |= 0x80;
    } else if (ret & 0x40 && !(ret & 0x10) && !(ret & 0x20) && kirby->base.base.base.unk62 & 8) {
        if (a1->unk9A > 0x200)
            ret |= 0x20;
        else
            ret |= 0x10;
    } else if (ret & 0x80 && !(ret & 0x10) && !(ret & 0x20) && kirby->base.base.base.unk62 & 4) {
        if (a1->unk9A > 0x200)
            ret |= 0x20;
        else
            ret |= 0x10;
    }
    if (a1->unk40->base.base.base.xspeed > 0 && a1->unk26[3] == 1)
        ret = (a1->unk9E | 0x20) & ~0x10;
    else if (a1->unk40->base.base.base.xspeed < 0 && a1->unk26[1] == 1)
        ret = (a1->unk9E | 0x10) & ~0x20;
    if (a1->unk40->base.base.base.yspeed > 0 && a1->unk1C[7] == 1)
        ret = (a1->unk9E | 0x80) & ~0x40;
    else if (a1->unk40->base.base.base.yspeed < 0 && a1->unk2B[2] == 1)
        ret = (a1->unk9E | 0x40) & ~0x80;
    return ret;
}

// clone of sub_08014DA4
u16 sub_08014FA0(struct Unk_02038590 *a1) {
    u16 ret = 0;
    struct Kirby *kirby;

    if (a1->unk9A > 0x20 && a1->unk9A < 0x1E0)
        ret = 0x10;
    else if (a1->unk9A > 0x220 && a1->unk9A < 0x3E0)
        ret = 0x20;
    if (a1->unk9A > 0x120 && a1->unk9A < 0x2E0)
        ret |= 0x40;
    else if (a1->unk9A < 0xE0 || a1->unk9A > 0x320)
        ret |= 0x80;
    kirby = a1->unk40;
    if (ret & 0x20 && !(ret & 0x40) && !(ret & 0x80) && kirby->base.base.base.flags & 1 && kirby->base.base.base.unk62 & 1) {
        if (a1->unk9A > 0x100 && a1->unk9A < 0x300)
            ret |= 0x40;
        else
            ret |= 0x80;
    } else if (ret & 0x10 && !(ret & 0x40) && !(ret & 0x80) && !(kirby->base.base.base.flags & 1) && kirby->base.base.base.unk62 & 1) {
        if (a1->unk9A > 0x100 && a1->unk9A < 0x300)
            ret |= 0x40;
        else
            ret |= 0x80;
    } else if (ret & 0x40 && !(ret & 0x10) && !(ret & 0x20) && kirby->base.base.base.unk62 & 8) {
        if (a1->unk9A > 0x200)
            ret |= 0x20;
        else
            ret |= 0x10;
    } else if (ret & 0x80 && !(ret & 0x10) && !(ret & 0x20) && kirby->base.base.base.unk62 & 4) {
        if (a1->unk9A > 0x200)
            ret |= 0x20;
        else
            ret |= 0x10;
    }
    if (a1->unk40->base.base.base.xspeed > 0 && a1->unk26[3] == 1)
        ret = (a1->unk9E | 0x20) & ~0x10;
    else if (a1->unk40->base.base.base.xspeed < 0 && a1->unk26[1] == 1)
        ret = (a1->unk9E | 0x10) & ~0x20;
    if (a1->unk40->base.base.base.yspeed > 0 && a1->unk1C[7] == 1)
        ret = (a1->unk9E | 0x80) & ~0x40;
    else if (a1->unk40->base.base.base.yspeed < 0 && a1->unk2B[2] == 1)
        ret = (a1->unk9E | 0x40) & ~0x80;
    return ret;
}

static inline bool32 sub_0801519C_helper(struct Unk_02038590 *a1) {
    switch (a1->unk40->unkD4) {
    case 0x70 ... 0x75:
        return TRUE;
    default:
        return FALSE;
    }
}

void sub_0801519C(struct Unk_02038590 *a1) {
    bool32 b;

    a1->unkDD = a1->unkDC;
    a1->unkDC = 0;
    a1->flags &= ~2;
    if (a1->unk14->currentRoom == 0x397)
        a1->unk0[3] = sub_08018110;
    else {
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_STONE:
        case KIRBY_ABILITY_SMASH:
            if (a1->unk40->unkD4 == 0x34) {
                if (a1->unkDC != 0x14)
                    a1->unk0[3] = sub_08019094;
                return;
            }
            break;
        case KIRBY_ABILITY_THROW:
            if (sub_0801519C_helper(a1)) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return;
            }
            break;
        }
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_UFO:
            a1->unk0[3] = sub_080152B0;
            return;
        case KIRBY_ABILITY_TORNADO:
            if (a1->unk40->base.base.base.sprite.animId == 0x13A && a1->unk40->base.base.base.sprite.variant == 1) {
                a1->unk0[3] = sub_080152B0;
                return;
            }
            break;
        }
        if (a1->unk40->base.base.base.flags & 0x40)
            a1->unk0[3] = sub_080186A4;
        else
            a1->unk0[3] = sub_080152B0;
    }
}

static inline bool32 sub_080152B0_helper_2(struct Unk_02038590 *a1) {
    u16 var = (a1->unk40->base.base.base.y >> 0xC) + 1;

    if (var < a1->unk14->roomHeight >> 4
        && sub_08002434(a1->unk14, a1->unk40->base.base.base.x >> 0xC, var) == 0x20)
        return TRUE;
    else
        return FALSE;
}

static inline bool32 sub_080152B0_helper(struct Unk_02038590 *a1) {
    struct Kirby *kirby;

    if (gUnk_02021580 < gUnk_0203AD30
        && (kirby = &gKirbys[gUnk_02021580], gCurLevelInfo[kirby->base.base.base.unk56].currentRoom != a1->unk14->currentRoom)
        && !(kirby->base.base.base.unkC & 0x10000)
        && (gRoomProps + a1->unk14->currentRoom)->priorityFlags & 0x10)
        return TRUE;
    else
        return FALSE;
}

void sub_080152B0(struct Unk_02038590 *a1) {
    u16 v22;

    if (a1->flags & 4 && IsOneOfTheCurrentRooms(a1->unk14->currentRoom) && a1->unk3C > 0x10) {
        u16 array[] = { a1->unk40->base.base.base.x >> 0xC, a1->unk40->base.base.base.y >> 0xC };

        if (array[0] < a1->unk14->roomWidth >> 4
            && array[1] < a1->unk14->roomHeight >> 4
            && gUnk_082D88B8[sub_08002434(a1->unk14, array[0], array[1])] & 0x4000) {
            struct Unk_0888562C_3 *unk = sub_080025AC(a1->unk40->base.base.base.unk56, array[0], array[1]).pat3;
            const struct Unk_08D6CD0C *a = gUnk_08D6CD0C[unk->unk08];

            if (!(a->unk47 & 0x83)) {
                u8 m = unk->unk0A, n = unk->unk0B;
                const struct Unk_08D6CD0C *b = gUnk_08D6CD0C[a1->unk14->currentRoom];

                if (sub_080551FC(a1->unk40, unk->unk08, m, n)) {
                    if (b->unk46 == a->unk46)
                        ++a1->unkB0;
                    else
                        a1->unkB0 = 0;
                    return;
                }
            }
        }
    }
    if (((a1->unk2B[2] != 2 && a1->unk2B[7] == 1) || a1->unk26[2] == 0xFF)
        && a1->unk40->ability != KIRBY_ABILITY_UFO) {
        if (a1->unk40->base.base.base.unk58 & 2)
            a1->unk0[3] = sub_08018B18;
        else
            a1->unk0[3] = sub_0801639C;
        return;
    }
    if (sub_080152B0_helper(a1)) {
        if (a1->unkDC != 2)
            a1->unk0[3] = sub_0801870C;
        return;
    }
    if (a1->unk98 > 0x20 && (a1->unk9A < 0xE0 || a1->unk9A > 0x320)) {

        if (a1->unk40->unkD4 == 0x2D || a1->unk40->unkD4 == 0x2E
            || sub_080152B0_helper_2(a1)){
            a1->unk0[3] = sub_08015FA0;
            return;
        }
    }
    if (a1->unk3E == 0xFF && a1->unk40->ability != KIRBY_ABILITY_NORMAL) {
        if (a1->unkDC != 1)
            a1->unk0[3] = sub_080186DC;
        return;
    }
    if (gUnk_082DDE84[a1->unk40->ability](a1))
        return;
    if ((a1->unk3C >> 2) & 1 && !IsOneOfTheCurrentRooms(a1->unk14->currentRoom)) {
        if (a1->unk40->ability == KIRBY_ABILITY_NORMAL) {
            if (Rand16() < 0x400) {
                u8 ability = gUnk_082DE034[Rand16() % ARRAY_COUNT(gUnk_082DE034)];

                if (gUnk_0203AD10 & 4 && ability == KIRBY_ABILITY_MAGIC)
                    ability = KIRBY_ABILITY_FIRE;
                sub_0805BD4C(a1->unk40, ability);
            }
        } else {
            if (Rand16() < 0x100) {
                if (a1->unkDC != 1)
                    a1->unk0[3] = sub_080186DC;
                return;
            }
        }
    }
    v22 = 0xFFFF;
    if (a1->unk3F != 0xFF)
        v22 = gUnk_08D63C28[gRoomProps[a1->unk14->currentRoom].unk22]->unk14[a1->unk3F].unk24;
    if (a1->unk1A != a1->unk3F) {
        if (a1->unk3F == 0xFF)
            return;
    } else if (a1->unk1A == 0xFF || v22 >= a1->unk98) {
        return;
    }
    if (a1->unkDC != 3)
        a1->unk0[3] = sub_08018764;
}

void sub_080156FC(struct Unk_02038590 *a1) {
    if (a1->unkDE-- == 0) {
        if (sub_080152B0_helper(a1))
            a1->unk9E = 0x100;
        a1->unk0[3] = sub_08018758;
    }
}

s8 sub_080157B0(struct Unk_02038590 *a1) {
    u16 sp00 = a1->unk40->base.base.base.x >> 0xC;
    u16 r5 = a1->unk40->base.base.base.y >> 0xC;
    s16 a = a1->unk9A < 0x200 ? 1 : -1;
    u16 sp04 = sp00 + a;
    s32 r1;

    if (a1->unk2B[2] < 2) {
        if (((a1->unk9A > 0x100 && a1->unk9A < 0x300) || (Rand16() & 0xF) > 0xA)) {
            u8 ret = a1->unk98 >> 4;

            if (ret) return ret;
        }
        if (a1->unk9A < 0xC0 || a1->unk9A > 0x340)
            return 0;
    }
    r1 = a + 2;
    if (a1->unk2B[r1] == 1 || a1->unk26[a + r1] == 1)
        return Rand16() & 7;
    if (!a1->unk26[r1])
        return 0;
    if (a1->unk14->roomWidth >> 4 > sp04) {
        u32 v8 = a1->unk14->roomHeight >> 4;
        u16 v9 = r5 - 1;
        u16 v10 = 1;

        while (v10 < 0x10) {
            if (v8 <= v9 || gUnk_082D88B8[sub_080024F0(a1->unk14, sp00, v9)] & 0x200)
                return (Rand16() & 0xFF) < 5 ? v10 : -1;
            if (!(gUnk_082D88B8[sub_080024F0(a1->unk14, sp04, v9)] & 0x200))
                return v10;
            ++v10;
            --v9;
        }
    }
    return -1;
}

void sub_08015970(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 4;
    a1->flags &= ~2;
    if (a1->unk40->base.base.base.flags & 0x40)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->base.base.base.unk58 & 2)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->ability == KIRBY_ABILITY_STONE && a1->unk40->unkD4 == 0x34)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->ability == KIRBY_ABILITY_THROW && sub_0801519C_helper(a1))
        a1->unk0[3] = sub_0801519C;
    else if ((a1->unk44 && a1->unk44->base.base.base.flags & 0x10) || (a1->unk94 < 0 || a1->unk94 > 0x40))
        a1->unk0[3] = sub_080187B0;
    else if (a1->unk40->base.base.base.flags & 0x10)
        a1->unk0[3] = sub_08018850;
    else
        a1->unk0[3] = sub_08015A4C;
}

void sub_08015A4C(struct Unk_02038590 *a1) {
    u32 var;

    if (a1->unk98 < 0x20)
        var = (Rand16() & 7) + 4;
    else if (a1->unk98 < 0x40)
        var = (Rand16() & 0xF) + 4;
    else
        var = (Rand16() & 0x1F) + 4;
    a1->unkE8 = var;
    a1->unkEA = a1->unk9A < 0x200 ? 0x10 : 0x20;
    a1->unk9E = a1->unkEA;
    a1->unk0[3] = sub_08015AF0;
}

static inline bool32 sub_08015AF0_helper(struct Unk_02038590 *a1) {
    u16 var;

    if (a1->unk40->unkD4 == 0x2D || a1->unk40->unkD4 == 0x2E)
        return TRUE;
    var = (a1->unk40->base.base.base.y >> 0xC) + 1;
    if (var < a1->unk14->roomHeight >> 4
        && sub_08002434(a1->unk14, a1->unk40->base.base.base.x >> 0xC, var) == 0x20)
        return TRUE;
    else
        return FALSE;    
}

void sub_08015AF0(struct Unk_02038590 *a1) {
    if (a1->unk40->base.base.base.flags & 0x40)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->base.base.base.unk58 & 2)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->ability == KIRBY_ABILITY_STONE && a1->unk40->unkD4 == 0x34)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->ability == KIRBY_ABILITY_THROW && sub_0801519C_helper(a1))
        a1->unk0[3] = sub_0801519C;
    else {
        if (sub_080152B0_helper(a1)) {
            if (a1->unkDC != 2)
                a1->unk0[3] = sub_0801870C;
            return;
        }
        if (a1->unk98 < 0x50 && (a1->unk96 < 0 || a1->unk96 > 0x20)
            && a1->unk9A > 0x160 && a1->unk9A < 0x2A0) {
            u32 r1 = (u16)a1->unk96 >> 4;

            if (r1 == 0)
                r1 = 1;
            if (a1->unkDC != 7) {
                a1->unkDE = r1;
                a1->unk0[3] = sub_080160B8;
            }
            return;
        }
        if ((a1->unk9A > 0x160 && a1->unk9A < 0x2A0 && (a1->unk96 < 0 || a1->unk96 >= 0x50))
            || (a1->unk40->base.base.base.flags & 0x20 && (a1->unk2B[2] == 1 || a1->unk2B[7] == 0xFF))) {
            a1->unk0[3] = sub_0801639C;
            return;
        }
        if (a1->unk40->base.base.base.flags & 0x10
            && (!a1->unk44 || !(a1->unk44->base.base.base.flags & 0x10))
            && (a1->unk94 >= 0 && a1->unk94 <= 0x40))
            a1->unkEA &= ~0x30;
        if (a1->unk40->base.base.base.unk62 & 3)
            a1->unkE8 = 0;
        a1->unk9E = a1->unkEA;
        if (!(a1->unk40->base.base.base.flags & 0x20)) {
            s8 var = sub_080157B0(a1);

            if (var > 3) {
                a1->unk0[3] = sub_0801639C;
                return;
            }
            if (var > 0) {
                if (a1->unkDC != 7) {
                    a1->unkDE = (u8)var;
                    a1->unk0[3] = sub_080160B8;
                }
                return;
            }
        }
        if (!a1->unkE8) {
            if (a1->flags & 4 && IsOneOfTheCurrentRooms(a1->unk14->currentRoom) && a1->unk3C > 0x10) {
                u16 array[] = { a1->unk40->base.base.base.x >> 0xC, a1->unk40->base.base.base.y >> 0xC };

                if (array[0] < a1->unk14->roomWidth >> 4
                    && array[1] < a1->unk14->roomHeight >> 4
                    && gUnk_082D88B8[sub_08002434(a1->unk14, array[0], array[1])] & 0x4000) {
                    struct Unk_0888562C_3 *unk = sub_080025AC(a1->unk40->base.base.base.unk56, array[0], array[1]).pat3;
                    const struct Unk_08D6CD0C *a = gUnk_08D6CD0C[unk->unk08];

                    if (!(a->unk47 & 0x83)) {
                        u8 m = unk->unk0A, n = unk->unk0B;
                        const struct Unk_08D6CD0C *b = gUnk_08D6CD0C[a1->unk14->currentRoom];

                        if (sub_080551FC(a1->unk40, unk->unk08, m, n)) {
                            if (b->unk46 == a->unk46)
                                ++a1->unkB0;
                            else
                                a1->unkB0 = 0;
                            return;
                        }
                    }
                }
            }
            if (a1->unk1A == a1->unk1B && a1->unk84 < 0x30 && a1->unk86 < 0x20) {
                a1->unk0[3] = sub_0801519C;
                return;
            }
            if (a1->unk9A > 0x180 && a1->unk9A < 0x280
                && (a1->unk96 < 0 || a1->unk96 > 0x60)) {
                a1->unk0[3] = sub_0801639C;
                return;
            }
            if (a1->unk98 > 0x20 && (a1->unk9A < 0xE0 || a1->unk9A > 0x320)) {
                if (sub_08015AF0_helper(a1)) {
                    a1->unk0[3] = sub_08015FA0;
                    return;
                }
            }
            if ((a1->unk9A < 0x3D || a1->unk9A > 0x3BF)
                && sub_080035F4(&a1->unk40->base.base.base)) {
                a1->unk0[3] = sub_08018884;
                a1->unkDE = (Rand16() & 0x1F) + 0x3C;
            } else {
                if (!gUnk_082DDE84[a1->unk40->ability](a1))
                    a1->unk0[3] = sub_08015A4C;
            }
        } else {
            --a1->unkE8;
        }
    }
}

void sub_08015FA0(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 6;
    a1->flags &= ~2;
    a1->unkE8 = 0;
    if (a1->unk40->unkD4 == 0x2D || a1->unk40->unkD4 == 0x2E)
        a1->unk0[3] = sub_08018930;
    else if (!sub_080152B0_helper_2(a1))
        a1->unk0[3] = sub_0801519C;
    else
        a1->unk0[3] = sub_080188F0;
}

void sub_0801602C(struct Unk_02038590 *a1) {
    if (a1->unk40->unkD4 != 0x2D && a1->unk40->unkD4 != 0x2E)
        a1->unk0[3] = sub_0801519C;
    a1->unk9E = a1->unkEA;
    if (!a1->unkE8) {
        if (a1->unkEC > 3)
            a1->unk0[3] = sub_0801519C;
        else
            ++a1->unkEC;
        if (a1->unk88 < 0x20
            && ((a1->unk9A > 0xE0 && a1->unk9A < 0x120) || (a1->unk9A > 0x2E0 && a1->unk9A < 0x320)))
            a1->unk0[3] = sub_0801519C;
        a1->unk0[3] = sub_08018944;
    } else {
        --a1->unkE8;
    }
}

void sub_080160B8(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 7;
    a1->flags &= ~2;
    if (!a1->unkDE || a1->unk40->base.base.base.flags & 0x60)
        a1->unk0[3] = sub_0801519C;
    else {
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_STONE:
        case KIRBY_ABILITY_SMASH:
            if (a1->unk40->unkD4 == 0x34) {
                if (a1->unkDC != 0x14)
                    a1->unk0[3] = sub_08019094;
                return;
            }
            break;
        case KIRBY_ABILITY_THROW:
            if (sub_0801519C_helper(a1)) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return;
            }
            break;
        }
        a1->unk0[3] = sub_080189A0;
    }
}

void sub_0801617C(struct Unk_02038590 *a1) {
    a1->unk9E |= 1;
    a1->unk9E |= a1->unk9A < 0x200 ? 0x10 : 0x20;
    if (!--a1->unkE8) {
        switch (a1->unkDE) {
        case 1:
            a1->unkE8 = (Rand16() & 7) + 6;
            break;
        case 2:
            a1->unkE8 = (Rand16() & 0xF) + 0xC;
            break;
        case 3:
            a1->unkE8 = (Rand16() & 7) + 0xF + (Rand16() & 0xF);
            break;
        default:
            a1->unkE8 = (Rand16() & 0x1F) + 0x2C;
            break;
        }
        a1->unk0[3] = sub_08016288;
    }
}

void sub_08016288(struct Unk_02038590 *a1) {
    if (a1->unk1C[2] != 1)
        a1->unk9E |= 1;
    if (a1->unkEA) {
        if (a1->unk9A > 0x20 && a1->unk9A < 0x200) {
            a1->unk9E |= 0x10;
            if (a1->unk40->base.base.base.flags & 1)
                --a1->unkEA;
        } else if (a1->unk9A > 0x200 && a1->unk9A < 0x3E0) {
            a1->unk9E |= 0x20;
            if (!(a1->unk40->base.base.base.flags & 1))
                --a1->unkEA;
        }
    } else {
        a1->unk9E |= a1->unk40->base.base.base.flags & 1 ? 0x20 : 0x10;
    }
    if (a1->unk40->base.base.base.flags & 0x20 && !(a1->unk40->base.base.base.flags & 0x40)) {
        if (a1->unk40->base.base.base.yspeed < 0) {
            a1->unk0[3] = sub_0801639C;
            return;
        }
    } else {
        a1->unk0[3] = sub_0801519C;
        return;
    }
    if (!gUnk_082DDE84[a1->unk40->ability](a1) && !--a1->unkE8) {
        if (a1->unk40->base.base.base.unk62 & 3)
            a1->unk0[3] = sub_0801639C;
        else
            a1->unk0[3] = sub_0801519C;
    }
}

void sub_0801639C(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 8;
    a1->flags &= ~2;
    if (a1->unk40->base.base.base.flags & 0x40)
        a1->unk0[3] = sub_08018A9C;
    else if (a1->unk40->base.base.base.flags & 0x80) {
        if (Rand16() & 1)
            a1->unk0[3] = sub_080175D0;
        else
            a1->unk0[3] = sub_0801737C;
    } else if (a1->unk40->base.base.base.flags & 0x20) {
        a1->unk0[3] = sub_08018A3C;
    } else {
        a1->unk0[3] = sub_080189DC;
    }
}

void sub_08016428(struct Unk_02038590 *a1) {
    if (!(a1->unk40->base.base.base.flags & 0x40) || a1->unk40->base.base.base.unk62 & 4) {
        a1->unk0[3] = sub_0801519C;
        return;
    }
    switch (a1->unk40->ability) {
    case KIRBY_ABILITY_STONE:
    case KIRBY_ABILITY_SMASH:
        if (a1->unk40->unkD4 == 0x34) {
            if (a1->unkDC != 0x14)
                a1->unk0[3] = sub_08019094;
            return;
        }
        break;
    case KIRBY_ABILITY_THROW:
        if (sub_0801519C_helper(a1)) {
            if (a1->unkDC != 0x16) {
                a1->unkDE = 0xFFFF;
                a1->unkE0 = 0;
                a1->unk0[3] = sub_08017B0C;
            }
            return;
        }
        break;
    }
    if (sub_080152B0_helper(a1)) {
        if (a1->unkDC != 2)
            a1->unk0[3] = sub_0801870C;
        return;
    }
    a1->unk9E = a1->unkEA;
    if (!--a1->unkE8) {
        if (a1->flags & 4 && IsOneOfTheCurrentRooms(a1->unk14->currentRoom) && a1->unk3C > 0x10) {
            u16 array[] = { a1->unk40->base.base.base.x >> 0xC, a1->unk40->base.base.base.y >> 0xC };

            if (array[0] < a1->unk14->roomWidth >> 4
                && array[1] < a1->unk14->roomHeight >> 4
                && gUnk_082D88B8[sub_08002434(a1->unk14, array[0], array[1])] & 0x4000) {
                struct Unk_0888562C_3 *unk = sub_080025AC(a1->unk40->base.base.base.unk56, array[0], array[1]).pat3;
                const struct Unk_08D6CD0C *a = gUnk_08D6CD0C[unk->unk08];

                if (!(a->unk47 & 0x83)) {
                    u8 m = unk->unk0A, n = unk->unk0B;
                    const struct Unk_08D6CD0C *b = gUnk_08D6CD0C[a1->unk14->currentRoom];

                    if (sub_080551FC(a1->unk40, unk->unk08, m, n)) {
                        if (b->unk46 == a->unk46)
                            ++a1->unkB0;
                        else
                            a1->unkB0 = 0;
                        return;
                    }
                }
            }
        }
        if (a1->unk40->base.base.base.unk58 & 2) {
            a1->unk0[3] = sub_0801519C;
            return;
        }
        if (a1->unk2B[7] != 1 && a1->unk2B[7] != 0xFF && (a1->unk8A < 0x100 || a1->unk8A > 0x300)) {
            if (a1->unk9A < 0x80 || a1->unk9A > 0x380) {
                a1->unk0[3] = sub_0801519C;
                return;
            }
            if (gUnk_082D88B8[sub_080024F0(a1->unk14, a1->unk40->base.base.base.x >> 0xC, (a1->unk40->base.base.base.y >> 0xC) + 1)] & 2) {
                a1->unk0[3] = sub_0801519C;
                return;
            }
            if (a1->unk1A == a1->unk1B && a1->unk84 < 0x40 && a1->unk86 < 0x20) {
                a1->unk0[3] = sub_0801519C;
                return;
            }
        }
        if (sub_080152B0_helper(a1)) {
            if (a1->unkDC != 2)
                a1->unk0[3] = sub_0801870C;
            return;
        }
        if (!a1->unkEC) {
            u16 unk9E = a1->unk9E;
            u8 unk62 = a1->unk40->base.base.base.unk62;

            if (unk9E & 0x40 && unk62 & 8) {
                a1->unkE8 = 0x40;
                a1->unk0[3] = sub_080168BC;
                return;
            } else if (unk9E & 0x80 && unk62 & 4) {
                a1->unkE8 = 0x80;
                a1->unk0[3] = sub_080168BC;
                return;
            } else if (unk9E & 0x20 && unk62 & 1) {
                a1->unkE8 = 0x20;
                a1->unk0[3] = sub_080168BC;
                return;
            } else if (unk9E & 0x10 && unk62 & 1) {
                a1->unkE8 = 0x10;
                a1->unk0[3] = sub_080168BC;
                return;
            }
        } else {
            --a1->unkEC;
        }
        if (!gUnk_082DDE84[a1->unk40->ability](a1))
            a1->unk0[3] = sub_08018AD0;
    }
}

void sub_080168BC(struct Unk_02038590 *a1) {
    switch (a1->unkE8) {
    case 0x10:
    case 0x20:
        a1->unkEA = a1->unk40->base.base.base.yspeed <= 0;
        break;
    case 0x40:
    case 0x80:
        a1->unkEA = a1->unk40->base.base.base.xspeed <= 0;
        break;
    }
    a1->unkEC = (Rand16() & 1) + 2;
    a1->unkEE = (Rand16() & 0xF) + 4;
    a1->unk0[3] = sub_0801694C;
}

void sub_0801694C(struct Unk_02038590 *a1) {
    if (!(a1->unk40->base.base.base.flags & 0x40) || a1->unk40->base.base.base.unk62 & 4) {
        a1->unk0[3] = sub_0801519C;
        return;
    }
    switch (a1->unk40->ability) {
    case KIRBY_ABILITY_STONE:
    case KIRBY_ABILITY_SMASH:
        if (a1->unk40->unkD4 == 0x34) {
            if (a1->unkDC != 0x14)
                a1->unk0[3] = sub_08019094;
            return;
        }
        break;
    case KIRBY_ABILITY_THROW:
        if (sub_0801519C_helper(a1)) {
            if (a1->unkDC != 0x16) {
                a1->unkDE = 0xFFFF;
                a1->unkE0 = 0;
                a1->unk0[3] = sub_08017B0C;
            }
            return;
        }
        break;
    }
    if (sub_080152B0_helper(a1)) {
        if (a1->unkDC != 2)
            a1->unk0[3] = sub_0801870C;
        return;
    }
    switch (a1->unkE8) {
    case 0x10:
    case 0x20:
        a1->unk9E |= a1->unkE8 | (a1->unkEA ? 0x80 : 0x40);
        if (!--a1->unkEE) {
            a1->unkEE = (Rand16() & 0xF) + 4;
            if ((a1->unkE8 == 0x20 && !a1->unk26[1])
                || (a1->unkE8 == 0x10 && !a1->unk26[3]))
                a1->unk0[3] = sub_08018A9C;
            else {
                if (a1->unkEA) {
                    if (!a1->unk2B[2]) {
                        while (0) ; // required for matching
                        break;
                    }
                } else if (!a1->unk1C[7]) {
                    break;
                }
                if (a1->unkEC-- == 0)
                    a1->unk0[3] = sub_0801519C;
                else
                    a1->unkEA ^= 1;
            }
        }
        break;
    case 0x40:
    case 0x80:
        a1->unk9E |= a1->unkE8 | (a1->unkEA ? 0x20 : 0x10);
        if (!--a1->unkEE) {
            a1->unkEE = (Rand16() & 0xF) + 4;
            if ((a1->unkE8 == 0x40 && !a1->unk1C[7])
                || (a1->unkE8 == 0x80 && !a1->unk2B[2]))
                a1->unk0[3] = sub_08018A9C;
            else {
                if (a1->unkEA) {
                    if (!a1->unk26[1]) {
                        while (0) ; // required for matching
                        break;
                    }
                } else if (!a1->unk26[3]) {
                    break;
                }
                if (a1->unkEC-- == 0)
                    a1->unk0[3] = sub_0801519C;
                else
                    a1->unkEA ^= 1;
            }
        }
        break;
    }
}

void sub_08016C24(struct Unk_02038590 *a1) {
    a1->unk9E = a1->unkEA;
    if (!--a1->unkE8) {
        if (a1->flags & 4 && IsOneOfTheCurrentRooms(a1->unk14->currentRoom) && a1->unk3C > 0x10) {
            u16 array[] = { a1->unk40->base.base.base.x >> 0xC, a1->unk40->base.base.base.y >> 0xC };

            if (array[0] < a1->unk14->roomWidth >> 4
                && array[1] < a1->unk14->roomHeight >> 4
                && gUnk_082D88B8[sub_08002434(a1->unk14, array[0], array[1])] & 0x4000) {
                struct Unk_0888562C_3 *unk = sub_080025AC(a1->unk40->base.base.base.unk56, array[0], array[1]).pat3;
                const struct Unk_08D6CD0C *a = gUnk_08D6CD0C[unk->unk08];

                if (!(a->unk47 & 0x83)) {
                    u8 m = unk->unk0A, n = unk->unk0B;
                    const struct Unk_08D6CD0C *b = gUnk_08D6CD0C[a1->unk14->currentRoom];

                    if (sub_080551FC(a1->unk40, unk->unk08, m, n)) {
                        if (b->unk46 == a->unk46)
                            ++a1->unkB0;
                        else
                            a1->unkB0 = 0;
                        return;
                    }
                }
            }
        }
        if (a1->unk2B[7] != 1 && (a1->unk8A < 0x100 || a1->unk8A > 0x300)) {
            if (a1->unk1A == a1->unk1B && a1->unk84 < 0x40 && a1->unk86 < 0x20) {
                a1->unk0[3] = sub_0801519C;
                return;
            }
        }
        if (!(a1->unk40->base.base.base.unk58 & 2)) {
            a1->unk0[3] = sub_0801639C;
            return;
        }
        if (sub_080152B0_helper(a1)) {
            if (a1->unkDC != 2)
                a1->unk0[3] = sub_0801870C;
            return;
        }
        if ((a1->unk9A < 0x3D || a1->unk9A >= 0x3C0)
            && sub_080035F4(&a1->unk40->base.base.base)) {
            a1->unk0[3] = sub_08018884;
            a1->unkDE = (Rand16() & 0x1F) + 0x3C;
            return;
        }
        if (!gUnk_082DDE84[a1->unk40->ability](a1))
            a1->unk0[3] = sub_08018BAC;
    }
}

void sub_08016EF0(struct Unk_02038590 *a1) {
    if (a1->unk40->ability != KIRBY_ABILITY_UFO) {
        a1->unk0[3] = sub_0801519C;
        return;
    }
    a1->unk9E = a1->unkEA;
    if (!--a1->unkE8) {
        if (a1->flags & 4 && IsOneOfTheCurrentRooms(a1->unk14->currentRoom) && a1->unk3C > 0x10) {
            u16 array[] = { a1->unk40->base.base.base.x >> 0xC, a1->unk40->base.base.base.y >> 0xC };

            if (array[0] < a1->unk14->roomWidth >> 4
                && array[1] < a1->unk14->roomHeight >> 4
                && gUnk_082D88B8[sub_08002434(a1->unk14, array[0], array[1])] & 0x4000) {
                struct Unk_0888562C_3 *unk = sub_080025AC(a1->unk40->base.base.base.unk56, array[0], array[1]).pat3;
                const struct Unk_08D6CD0C *a = gUnk_08D6CD0C[unk->unk08];

                if (!(a->unk47 & 0x83)) {
                    u8 m = unk->unk0A, n = unk->unk0B;
                    const struct Unk_08D6CD0C *b = gUnk_08D6CD0C[a1->unk14->currentRoom];

                    if (sub_080551FC(a1->unk40, unk->unk08, m, n)) {
                        if (b->unk46 == a->unk46)
                            ++a1->unkB0;
                        else
                            a1->unkB0 = 0;
                        return;
                    }
                }
            }
        }
        if (a1->unk26[2] == 1 && a1->unk88 < 0x20) {
            a1->unk0[3] = sub_0801519C;
            return;
        }
        if (sub_080152B0_helper(a1)) {
            if (a1->unkDC != 2)
                a1->unk0[3] = sub_0801870C;
            return;
        }
        if (!gUnk_082DDE84[a1->unk40->ability](a1))
            a1->unk0[3] = sub_08018C38;
    }
}

void sub_08017144(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0xB;
    a1->flags |= 2;
    if (a1->unk40->base.base.base.flags & 0x60)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->base.base.base.flags & 0x80) {
        if (a1->unkDC != 0xD) {
            a1->unkDE = 0xFFFF;
            a1->unk0[3] = sub_0801737C;
        }
    } else {
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_STONE:
        case KIRBY_ABILITY_SMASH:
            if (a1->unk40->unkD4 == 0x34) {
                if (a1->unkDC != 0x14)
                    a1->unk0[3] = sub_08019094;
                return;
            }
            break;
        case KIRBY_ABILITY_THROW:
            if (sub_0801519C_helper(a1)) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return;
            }
            break;
        }
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_SLEEP:
        case KIRBY_ABILITY_UFO:
        case KIRBY_ABILITY_MINI:
            a1->unk0[3] = sub_0801519C;
            break;
        default:
            if (a1->unkDE != 0xFFFF) {
                a1->unkEA = a1->unkDE;
                if (a1->unkDC != 0x12) {
                    a1->unkDE = a1->unkDE; // required for matching
                    a1->unkE4.ptr = sub_08018C80;
                    a1->unk0[3] = sub_08018F34;
                }
            } else {
                a1->unk0[3] = sub_08018C98;
            }
            break;
        }
    }
}

void sub_08017274(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0xC;
    a1->flags |= 2;
    if (!(a1->unk40->base.base.base.flags & 0x40))
        a1->unk0[3] = sub_0801519C;
    else {
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_STONE:
        case KIRBY_ABILITY_SMASH:
            if (a1->unk40->unkD4 == 0x34) {
                if (a1->unkDC != 0x14)
                    a1->unk0[3] = sub_08019094;
                return;
            }
            break;
        case KIRBY_ABILITY_THROW:
            if (sub_0801519C_helper(a1)) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return;
            }
            break;
        }
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_SLEEP:
        case KIRBY_ABILITY_UFO:
        case KIRBY_ABILITY_CUPID:
            a1->unk0[3] = sub_0801519C;
            break;
        default:
            if (a1->unkDE != 0xFFFF) {
                a1->unkEA = a1->unkDE;
                if (a1->unkDC != 0x12) {
                    a1->unkDE = a1->unkDE; // required for matching
                    a1->unkE4.ptr = sub_08018D18;
                    a1->unk0[3] = sub_08018F34;
                }
            } else {
                a1->unk0[3] = sub_08018D30;
            }
            break;
        }
    }
}

void sub_0801737C(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0xD;
    a1->flags |= 2;
    if (!(a1->unk40->base.base.base.flags & 0x80))
        a1->unk0[3] = sub_0801519C;
    else {
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_STONE:
        case KIRBY_ABILITY_SMASH:
            if (a1->unk40->unkD4 == 0x34) {
                if (a1->unkDC != 0x14)
                    a1->unk0[3] = sub_08019094;
                return;
            }
            break;
        case KIRBY_ABILITY_THROW:
            if (sub_0801519C_helper(a1)) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return;
            }
            break;
        }
        if (a1->unkDE != 0xFFFF) {
            a1->unkEA = a1->unkDE;
            if (a1->unkDC != 0x12) {
                a1->unkDE = a1->unkDE; // required for matching
                a1->unkE4.ptr = sub_08018D70;
                a1->unk0[3] = sub_08018F34;
            }
        } else {
            a1->unk0[3] = sub_08018D88;
        }
    }
}

void sub_0801745C(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0xE;
    a1->flags |= 2;
    if (a1->unk40->base.base.base.flags & 0x80)
        a1->unk0[3] = sub_0801519C;
    else {
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_STONE:
        case KIRBY_ABILITY_SMASH:
            if (a1->unk40->unkD4 == 0x34) {
                if (a1->unkDC != 0x14)
                    a1->unk0[3] = sub_08019094;
                return;
            }
            break;
        case KIRBY_ABILITY_THROW:
            if (sub_0801519C_helper(a1)) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return;
            }
            break;
        }
        if (a1->unkDE != 0xFFFF) {
            a1->unkEA = a1->unkDE;
            a1->unkEC = a1->unkE0;
            if (a1->unkDC != 0x12) {
                a1->unkDE = a1->unkDE; // required for matching
                a1->unkE4.ptr = sub_08018DC8;
                a1->unk0[3] = sub_08018F34;
            }
        } else {
            a1->unk0[3] = sub_08018DE8;
        }
    }
}

void sub_08017548(struct Unk_02038590 *a1) {
    bool32 var = FALSE;

    a1->unk9E |= 2;
    if (++a1->unkEA > 0x1E && a1->unk40->unkD4 == 0)
        var = TRUE;
    else if (!--a1->unkE8)
        var = TRUE;
    else if (a1->unk40->base.base.base.flags & 0x80)
        var = TRUE;
    if (var) {
        a1->unkA0 = (Rand16() & 0x7F) + 0x1E;
        a1->unk0[3] = sub_0801519C;
    }
}

void sub_080175D0(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0xF;
    a1->flags &= ~2;
    if (!(a1->unk40->base.base.base.flags & 0x80)
        || (a1->unk40->base.base.base.flags & 0x20))
        a1->unk0[3] = sub_0801519C;
    else {
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_STONE:
        case KIRBY_ABILITY_SMASH:
            if (a1->unk40->unkD4 == 0x34) {
                if (a1->unkDC != 0x14)
                    a1->unk0[3] = sub_08019094;
                return;
            }
            break;
        case KIRBY_ABILITY_THROW:
            if (sub_0801519C_helper(a1)) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return;
            }
            break;
        }
        a1->unk0[3] = sub_08018E3C;
    }
}

void sub_08017684(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x10;
    a1->flags |= 2;
    switch (a1->unk40->ability) {
    case KIRBY_ABILITY_STONE:
    case KIRBY_ABILITY_SMASH:
        if (a1->unk40->unkD4 == 0x34) {
            if (a1->unkDC != 0x14)
                a1->unk0[3] = sub_08019094;
            return;
        }
        break;
    case KIRBY_ABILITY_THROW:
        if (sub_0801519C_helper(a1)) {
            if (a1->unkDC != 0x16) {
                a1->unkDE = 0xFFFF;
                a1->unkE0 = 0;
                a1->unk0[3] = sub_08017B0C;
            }
            return;
        }
        break;
    }
    if (a1->unkDE != 0xFFFF) {
        a1->unkEA = a1->unkDE;
        if (a1->unkDC != 0x12) {
            a1->unkDE = a1->unkDE; // required for matching
            a1->unkE4.ptr = sub_08018E7C;
            a1->unk0[3] = sub_08018F34;
        }
    } else {
        a1->unk0[3] = sub_08018E94;
    }
}

void sub_08017750(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x11;
    a1->flags |= 2;
    if (!(a1->unk40->base.base.base.unk58 & 2))
        a1->unk0[3] = sub_0801519C;
    else {
        switch (a1->unk40->ability) {
        case KIRBY_ABILITY_STONE:
        case KIRBY_ABILITY_SMASH:
            if (a1->unk40->unkD4 == 0x34) {
                if (a1->unkDC != 0x14)
                    a1->unk0[3] = sub_08019094;
                return;
            }
            break;
        case KIRBY_ABILITY_THROW:
            if (sub_0801519C_helper(a1)) {
                if (a1->unkDC != 0x16) {
                    a1->unkDE = 0xFFFF;
                    a1->unkE0 = 0;
                    a1->unk0[3] = sub_08017B0C;
                }
                return;
            }
            break;
        }
        a1->unk0[3] = sub_08018EF4;
    }
}

void sub_08017800(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    if (a1->unkDE == 1)
        a1->unk9E |= 0x20;
    else if (a1->unkDE == 0)
        a1->unk9E |= 0x10;
    if (a1->unkE0 == 2)
        a1->unk9E |= 0x40;
    else if (a1->unkE0 == 3)
        a1->unk9E |= 0x80;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_0801519C;
}

void sub_0801786C(struct Unk_02038590 *a1) {
    bool32 r4 = FALSE;

    if (a1->unkDE == 1) {
        if (!(a1->unk40->base.base.base.flags & 1))
            a1->unk9E |= 0x20;
        else
            r4 = TRUE;
    } else if (a1->unkDE == 0) {
        if (a1->unk40->base.base.base.flags & 1)
            a1->unk9E |= 0x10;
        else
            r4 = TRUE;
    } else {
        r4 = TRUE;
    }
    if (!--a1->unkE8)
        r4 = TRUE;
    if (r4) {
        if (!a1->unkE4.ptr)
            a1->unk0[3] = sub_0801519C;
        else
            a1->unk0[3] = a1->unkE4.ptr;
    }
}

void sub_080178DC(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x13;
    a1->flags |= 2;
    if (a1->unk40->ability != KIRBY_ABILITY_BOMB)
        a1->unk0[3] = sub_0801519C;
    else {
        if (a1->unkDE != 0xFFFF) {
            a1->unkEA = a1->unkDE;
            if (a1->unkDC != 0x12) {
                a1->unkDE = a1->unkDE; // required for matching
                a1->unkE4.ptr = sub_08018F64;
                a1->unk0[3] = sub_08018F34;
            }
            return;
        }
        a1->unk0[3] = sub_08018F7C;
    }
}

void sub_08017950(struct Unk_02038590 *a1) {
    if (a1->unk1C[2] != 1)
        a1->unk9E |= 1;
    if (a1->unkDE == 1)
        a1->unk9E |= 0x20;
    else if (a1->unkDE == 0)
        a1->unk9E |= 0x10;
    else
        a1->unk9E |= a1->unk40->base.base.base.flags & 1 ? 0x20 : 0x10;
    if (a1->unk40->ability != KIRBY_ABILITY_STONE)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->base.base.base.flags & 0x40)
        a1->unk0[3] = sub_0801519C;
    else {
        if (!a1->unkE8) {
            if (!(a1->unk40->base.base.base.flags & 0x20))
                a1->unk0[3] = sub_0801519C;
            else {
                s16 a = a1->unk40->base.base.base.y >> 0xC;
                s32 b;

                if (a < a1->unk14->roomHeight >> 4
                    && !(gUnk_082D88B8[sub_080024F0(a1->unk14, a1->unk40->base.base.base.x >> 0xC, a)] & 0x200)) {
                    b = ((a1->unk40->base.base.base.x - a1->unk48->base.x) * 0x100) >> 0x10;
                    if (b < 0) b = -b;
                    if (b < 0x10)
                        a1->unk0[3] = sub_080192BC;
                }
            }
        } else {
            --a1->unkE8;
        }
    }
}

void sub_08017A4C(struct Unk_02038590 *a1) {
    if (a1->unkDE == 1)
        a1->unk9E |= 0x20;
    else if (a1->unkDE == 0)
        a1->unk9E |= 0x10;
    else
        a1->unk9E |= a1->unk40->base.base.base.flags & 1 ? 0x20 : 0x10;
    {
        s16 a = a1->unk40->base.base.base.y >> 0xC;
        s32 b;

        if (a < a1->unk14->roomHeight >> 4
            && !(gUnk_082D88B8[sub_080024F0(a1->unk14, a1->unk40->base.base.base.x >> 0xC, a)] & 0x200)) {
            b = ((a1->unk40->base.base.base.x - a1->unk48->base.x) * 0x100) >> 0x10;
            if (b < 0) b = -b;
            if (b < 0x10) {
                a1->unk0[3] = sub_080192BC;
                return;
            }
        }
        if (a1->unk40->base.base.base.flags & 0x40 || !(a1->unk40->base.base.base.flags & 0x20))
            a1->unk0[3] = sub_0801519C;
    }
}

void sub_08017B0C(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x16;
    a1->flags |= 2;
    if (a1->unk40->ability != KIRBY_ABILITY_THROW)
        a1->unk0[3] = sub_0801519C;
    else if (sub_0801519C_helper(a1))
        a1->unk0[3] = sub_08017C24;
    else if (a1->unkDE != 0xFFFF) {
        a1->unkEA = a1->unkDE;
        a1->unkEC = a1->unkE0;
        if (a1->unkDC != 0x12) {
            a1->unkDE = a1->unkDE; // required for matching
            a1->unkE4.ptr = sub_08019418;
            a1->unk0[3] = sub_08018F34;
        }
    } else {
        a1->unk0[3] = sub_08019438;
    }
}

void sub_08017BA8(struct Unk_02038590 *a1) {
    bool32 r4 = FALSE, r5 = FALSE;

    a1->unk9E |= 2;
    if (sub_0801519C_helper(a1))
        r5 = TRUE;
    if ((++a1->unkEA > 0x1E && !a1->unk40->unkD4))
        r4 = TRUE;
    else if (!--a1->unkE8)
        r4 = TRUE;
    if (r5)
        a1->unk0[3] = sub_0801948C;
    else if (r4)
        a1->unk0[3] = sub_0801519C;
}

void sub_08017C24(struct Unk_02038590 *a1) {
    u16 r;

    if (a1->unk40->ability != KIRBY_ABILITY_THROW)
        a1->unk0[3] = sub_0801519C;
    else {
        a1->unkE8 = 5;
        a1->unkEA = 0;
        switch (Rand16() & 3) {
        case 0:
            a1->unkEA = 0x40;
            break;
        case 1:
            a1->unkEA = 0x80;
            break;
        }
        r = Rand16() & 3;
        if (r < 2)
            a1->unkEA |= 0x20;
        else if (r < 4) // always true
            a1->unkEA |= 0x10;
        a1->unk0[3] = sub_080194E0;
    }
}

void sub_08017CC4(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x17;
    a1->flags |= 2;
    if (a1->unk40->ability != KIRBY_ABILITY_UFO)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unkDE != 0xFFFF) {
        a1->unkEA = a1->unkDE;
        a1->unkEC = a1->unkE0;
        if (a1->unkDC != 0x12) {
            a1->unkDE = a1->unkDE; // required for matching
            a1->unkE4.ptr = sub_080195A4;
            a1->unk0[3] = sub_08018F34;
        }
    } else {
        a1->unk0[3] = sub_080195C4;
    }
}

void sub_08017D40(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x18;
    a1->flags |= 2;
    if (a1->unk40->ability != KIRBY_ABILITY_CUPID)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unkDE != 0xFFFF) {
        a1->unkEA = a1->unkDE;
        a1->unkEC = a1->unkE0;
        a1->unkEE = a1->unkE4.data;
        if (a1->unkDC != 0x12) {
            a1->unkDE = a1->unkDE; // required for matching
            a1->unkE4.ptr = sub_08019638;
            a1->unk0[3] = sub_08018F34;
        }
    } else {
        a1->unk0[3] = sub_08019664;
    }
}

void sub_08017DC4(struct Unk_02038590 *a1) {
    switch (a1->unkE0) {
    case 2:
        a1->unk9E |= 0x40;
        break;
    case 3:
        a1->unk9E |= 0x80;
        break;
    }
    if (a1->unkE8 > 5)
        a1->unk9E |= 2;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_0801519C;
}

void sub_08017E1C(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x19;
    a1->flags |= 2;
    if (a1->unk40->ability != KIRBY_ABILITY_MISSILE)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unkDE != 0xFFFF) {
        a1->unkEA = a1->unkDE;
        a1->unkEC = a1->unkE0;
        a1->unkEE = a1->unkE4.data;
        if (a1->unkDC != 0x12) {
            a1->unkDE = a1->unkDE; // required for matching
            a1->unkE4.ptr = sub_080196A4;
            a1->unk0[3] = sub_08018F34;
        }
    } else {
        a1->unk0[3] = sub_080196D0;
    }
}

void sub_08017EA0(struct Unk_02038590 *a1) {
    if (a1->unkDE == 1)
        a1->unk9E |= 0x20;
    else if (a1->unkDE == 0)
        a1->unk9E |= 0x10;
    if (a1->unkE0 == 2)
        a1->unk9E |= 0x40;
    else if (a1->unkE0 == 3)
        a1->unk9E |= 0x80;
    a1->unk9E |= 2;
    if (++a1->unkE8 > 5)
        a1->unk0[3] = sub_08017F10;
}

void sub_08017F10(struct Unk_02038590 *a1) {
    if (a1->unkDE == 1)
        a1->unk9E |= 0x20;
    else if (a1->unkDE == 0)
        a1->unk9E |= 0x10;
    if (a1->unkE0 == 2)
        a1->unk9E |= 0x40;
    else if (a1->unkE0 == 3)
        a1->unk9E |= 0x80;
    if (++a1->unkE8 > a1->unkE4.data) {
        a1->unk9E |= 2;
        a1->unk0[3] = sub_0801519C;
    }
}

void sub_08017F88(struct Unk_02038590 *a1) {
    u16 ret = sub_08154FE8(a1->unkDE - (a1->unk40->base.base.base.x >> 8), a1->unkE0 - (a1->unk40->base.base.base.y >> 8)) & 0x3FF;

    a1->unk9E |= 2;
    if (ret > 0x200)
        a1->unk9E |= 0x20;
    else
        a1->unk9E |= 0x10;
    if (ret > 0x100 && ret < 0x300)
        a1->unk9E |= 0x40;
    else
        a1->unk9E |= 0x80;
    if (++a1->unkE8 > 5)
        a1->unk0[3] = sub_08018024;
}

void sub_08018024(struct Unk_02038590 *a1) {
    s16 a = a1->unk40->base.base.base.x >> 8;
    s16 b = a1->unk40->base.base.base.y >> 8;
    u16 ret = sub_08154FE8(a1->unkDE - a, a1->unkE0 - b) & 0x3FF;
    s16 dx = a > a1->unkDE ? a - a1->unkDE : a1->unkDE - a;
    s16 dy = b > a1->unkE0 ? b - a1->unkE0 : a1->unkE0 - b;
    s16 max = dy < dx ? dx : dy;

    if (ret > 0x200)
        a1->unk9E |= 0x20;
    else
        a1->unk9E |= 0x10;
    if (ret > 0x100 && ret < 0x300)
        a1->unk9E |= 0x40;
    else
        a1->unk9E |= 0x80;
    if (++a1->unkE8 > 0x12C || max < 0xC) {
        a1->unk9E |= 2;
        a1->unk0[3] = sub_0801519C;
    }
}

void sub_08018110(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x1B;
    a1->flags |= 2;
    a1->unkE8 = 0;
    a1->unkEA = ((Rand16() & 0x1F) + 0x10) | (((Rand16() & 0x1F) + 0x10) << 8);
    a1->unkEC = (Rand16() & 0x1F) + 0x5A;
    a1->unk0[3] = sub_0801818C;
}

void sub_0801818C(struct Unk_02038590 *a1) {
    if (a1->unk14->currentRoom != 0x397) {
        a1->unk0[3] = sub_0801519C;
        return;
    }
    if (!a1->unkEC) {
        a1->unk9E |= 2;
        a1->unkEC = (Rand16() & 0x1F) + 0x5A;
    } else {
        --a1->unkEC;
    }
    if (!(a1->unkEA & 0xFF)) {
        u32 flags;

        a1->unkE8 &= ~0x30;
        flags = 0;
        if (a1->unk40->base.base.base.x < 0x2000)
            flags = 0x10;   
        else if (a1->unk40->base.base.base.x > 0xD000)
            flags = 0x20;
        else {
            u16 r = Rand16() & 7;

            if (r < 2)
                flags = 0x20;
            else if (r < 4)
                flags = 0x10;
        }
        a1->unkE8 |= flags;
        a1->unkEA |= (Rand16() & 0x1F) + 0x10;
    } else {
        --a1->unkEA;
    }
    if (!(a1->unkEA & 0xFF00)) {
        u32 flags;

        a1->unkE8 &= ~0xC0;
        flags = 0;
        if (a1->unk40->base.base.base.y < 0x7800)
            flags = 0x80;
        else if (a1->unk40->base.base.base.y > 0x9800)
            flags = 0x40;
        else {
            switch (Rand16() & 0x1F) {
            case 0:
                flags = 0x40;
                break;
            case 1:
                flags = 0x80;
                break;
            }
        }
        a1->unkE8 |= flags;
        a1->unkEA |= ((Rand16() & 0xF) + 8) << 8;
    } else {
        a1->unkEA -= 0x100;
    }
    a1->unk9E |= a1->unkE8;
}

bool16 sub_08018368(struct Unk_02038590 *a1 __attribute__((unused))) {
    return FALSE;
}

void sub_0801836C(struct Unk_02038590 *a1) {
    a1->unk48 = NULL;
}

void sub_08018374(struct Unk_02038590 *a1) {
    a1->unk48 = NULL;
    sub_08010818(a1, NULL);
}

void nullsub_103(struct Task *a1 __attribute__((unused))) {}

void sub_08018388(struct Unk_02038590 *a1) {
    ++a1->unkB8;
}

void sub_08018394(struct Unk_02038590 *a1) {
    a1->flags |= 0xC;
}

void sub_080183A0(struct Unk_02038590 *a1) {
    u16 r1;

    ++a1->unkB8;
    r1 = a1->unkB4[a1->unkB8];
    ++a1->unkB8;
    a1->flags |= 8;
    sub_08019734(a1, r1);
}

void sub_080183D0(struct Unk_02038590 *a1) {
    u16 r1;

    ++a1->unkB8;
    r1 = a1->unkB4[a1->unkB8];
    ++a1->unkB8;
    a1->flags |= 8;
    sub_08019784(a1, r1);
}

void sub_08018400(struct Unk_02038590 *a1) {
    ++a1->unkB8;
    a1->unk3E = a1->unkB4[a1->unkB8];
    ++a1->unkB8;
}

void sub_08018428(struct Unk_02038590 *a1) {
    u16 r1;

    ++a1->unkB8;
    r1 = a1->unkB4[a1->unkB8];
    ++a1->unkB8;
    a1->flags |= 8;
    sub_080197BC(a1, r1);
}

void sub_08018458(struct Unk_02038590 *a1) {
    u16 r1;

    ++a1->unkB8;
    r1 = a1->unkB4[a1->unkB8];
    ++a1->unkB8;
    a1->flags |= 8;
    sub_0801984C(a1, r1);
}

void sub_08018488(struct Unk_02038590 *a1) {
    ++a1->unkB8;
    a1->flags |= 8;
    sub_080199CC(a1);
}

void sub_080184A4(struct Unk_02038590 *a1) {
    u16 r1;

    ++a1->unkB8;
    r1 = a1->unkB8;
    a1->unkB8 = ++r1 + a1->unkB4[a1->unkB8];
}

void sub_080184C4(struct Unk_02038590 *a1) {
    ++a1->unkB8;
    a1->unk0[1] = sub_080184DC;
}

void nullsub_104(struct Unk_02038590 *a1 __attribute__((unused))) {}

void sub_080184DC(struct Unk_02038590 *a1) {
    a1->unk0[1] = sub_08013B98;
}

void sub_080184E8(struct Unk_02038590 *a1) {
    a1->flags &= ~1;
    a1->unk0[2] = sub_0801858C;
    a1->unk0[1] = sub_08019BF0;
}

void sub_08018504(struct Unk_02038590 *a1) {
    if (a1->unk14->currentRoom != 0x397)
        a1->unk0[1] = sub_08013A60;
}

void nullsub_105(struct Unk_02038590 *a1 __attribute__((unused))) {}

void sub_0801852C(struct Unk_02038590 *a1) {
    if (a1->unk14->currentRoom == 0x397)
        a1->unk0[2] = sub_080185EC;
    else {
        if ((gUnk_0203AD40 & 3) == (a1->unk40->base.base.base.unk56 & 3))
            sub_08018610(a1);
        if (!(a1->flags & 2))
            sub_080108B8(a1);
        sub_0800FF60(a1);
    }
}

void sub_0801858C(struct Unk_02038590 *a1) {
    if (a1->unk14->currentRoom == 0x397)
        a1->unk0[2] = sub_080185EC;
    else {
        if ((gUnk_0203AD40 & 1) == (a1->unk40->base.base.base.unk56 & 1))
            sub_08018640(a1);
        if (!(a1->flags & 2))
            sub_080108B8(a1);
        sub_0800FF60(a1);
    }
}

void sub_080185EC(struct Unk_02038590 *a1) {
    if (a1->unk14->currentRoom != 0x397)
        a1->unk0[2] = sub_0801852C;
}

void sub_08018610(struct Unk_02038590 *a1) {
    u8 unk = sub_0800EEBC(&a1->unk40->base.base.base);

    if (unk != a1->unk1A)
        ++a1->unk3C;
    a1->unk1A = unk;
    sub_0800F044(a1);
    sub_08010294(a1);
}

void sub_08018640(struct Unk_02038590 *a1) {
    u8 unk;
    bool32 b = FALSE;

    sub_0800F044(a1);
    unk = sub_0800EEBC(&a1->unk40->base.base.base);
    if (unk != a1->unk1A)
        ++a1->unk3C;
    a1->unk1A = unk;
    if (a1->unk3F != 0xFF)
        b = TRUE;
    if (b)
        a1->unk3F = a1->unk14->unk1E8->unk14[a1->unk1A].unk0[a1->unk1B];
    sub_08010144(a1);
    sub_08010294(a1);
}

void sub_080186A4(struct Unk_02038590 *a1) {
    if (a1->unk40->ability == KIRBY_ABILITY_CUPID)
        a1->unk9E |= 1;
    else
        a1->unk9E |= 2;
    a1->unk0[3] = sub_080152B0;
}

void sub_080186DC(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 1;
    a1->flags &= ~2;
    a1->unk9E |= 4;
    a1->unk0[3] = sub_0801519C;
}

void sub_0801870C(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 2;
    a1->flags &= ~2;
    a1->unkDE = Rand16() & 0xF;
    a1->unk0[3] = sub_080156FC;
}

void sub_08018758(struct Unk_02038590 *a1) {
    a1->unk0[3] = sub_0801519C;
}

void sub_08018764(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 3;
    if (a1->unk40->ability == KIRBY_ABILITY_UFO)
        a1->unk0[3] = sub_08018BF4;
    else if (a1->unk40->base.base.base.unk58 & 2)
        a1->unk0[3] = sub_08018B18;
    else
        a1->unk0[3] = sub_08015970;
}

void sub_080187B0(struct Unk_02038590 *a1) {
    u16 r3;

    a1->unkE8 = 4;
    r3 = a1->unk9A < 0x200 ? 0x10 : 0x20;
    a1->unkEA = r3;
    a1->unk9E = r3;
    a1->unk0[3] = sub_080187E8;
}

void sub_080187E8(struct Unk_02038590 *a1) {
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08018808;
}

void sub_08018808(struct Unk_02038590 *a1) {
    a1->unkE8 = 4;
    a1->unk9E = a1->unkEA;
    a1->unk0[3] = sub_08018828;
}

void sub_08018828(struct Unk_02038590 *a1) {
    a1->unk9E = a1->unkEA;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08015A4C;
}

void sub_08018850(struct Unk_02038590 *a1) {
    a1->unkE8 = 0x5A;
    a1->unk0[3] = sub_08018864;
}

void sub_08018864(struct Unk_02038590 *a1) {
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08015A4C;
}

void sub_08018884(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 5;
    a1->flags &= ~2;
    a1->unkE8 = 0;
    a1->unk0[3] = sub_080188BC;
}

void sub_080188BC(struct Unk_02038590 *a1) {
    a1->unk9E = 0x80;
    if (a1->unkDE < a1->unkE8++)
        a1->unk0[3] = sub_0801519C;
}

void sub_080188F0(struct Unk_02038590 *a1) {
    if (a1->unkE8++ < 10) {
        a1->unk9E = 0x80;
        if (a1->unk40->unkD4 == 0x2D || a1->unk40->unkD4 == 0x2E)
            a1->unk0[3] = sub_08018930;
    } else {
        a1->unk0[3] = sub_0801519C;
    }
}

void sub_08018930(struct Unk_02038590 *a1) {
    a1->unkEC = 0;
    a1->unk0[3] = sub_08018944;
}

void sub_08018944(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0x3F) + 0x1E;
    a1->unkEA = a1->unk9A > 0x100 && a1->unk9A < 0x300 ? 0x40 : 0x80;
    a1->unk0[3] = sub_0801602C;
}

void sub_080189A0(struct Unk_02038590 *a1) {
    a1->unkE8 = 4;
    a1->unkEA = Rand16() & 3;
    a1->unk0[3] = sub_0801617C;
}

void sub_080189DC(struct Unk_02038590 *a1) {
    if (a1->unk1C[7]) {
        if (a1->unkDC != 4)
            a1->unk0[3] = sub_08015970;
    } else {
        a1->unkE8 = 8;
        a1->unk0[3] = sub_08018A10;
    }
}

void sub_08018A10(struct Unk_02038590 *a1) {
    a1->unk9E |= 1;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08018A3C;
}

void sub_08018A3C(struct Unk_02038590 *a1) {
    a1->unkE8 = 0x10;
    a1->unk0[3] = sub_08018A50;
}

void sub_08018A50(struct Unk_02038590 *a1) {
    a1->unk9E |= 0x40;
    if (!--a1->unkE8) {
        if (!(a1->unk40->base.base.base.flags & 0x40)) {
            if (a1->unkDC != 3)
                a1->unk0[3] = sub_08018764;
        } else {
            a1->unk0[3] = sub_08018A9C;
        }
    }
}

void sub_08018A9C(struct Unk_02038590 *a1) {
    a1->unkEC = (Rand16() & 0xF) + 8;
    a1->unk0[3] = sub_08018AD0;
}

void sub_08018AD0(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0x1F) + 0xA;
    a1->unkEA = sub_08014B9C(a1);
    a1->unk0[3] = sub_08016428;
}

void sub_08018B18(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 9;
    a1->flags &= ~2;
    if (!(a1->unk40->base.base.base.unk58 & 2))
        a1->unk0[3] = sub_0801639C;
    else if (a1->unk40->base.base.base.flags & 0xC0)
        a1->unk0[3] = sub_08018B6C;
    else
        a1->unk0[3] = sub_08018BAC;
}

void sub_08018B6C(struct Unk_02038590 *a1) {
    a1->unkE8 = 5;
    a1->unk0[3] = sub_08018B80;
}

void sub_08018B80(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08018BAC;
}

void sub_08018BAC(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0xF) + 8;
    a1->unkEA = sub_08014DA4(a1);
    a1->unk0[3] = sub_08016C24;
}

void sub_08018BF4(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0xA;
    a1->flags &= ~2;
    if (a1->unk40->ability != KIRBY_ABILITY_UFO)
        a1->unk0[3] = sub_0801519C;
    else
        a1->unk0[3] = sub_08018C38;
}

void sub_08018C38(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0xF) + 8;
    a1->unkEA = sub_08014FA0(a1);
    a1->unk0[3] = sub_08016EF0;
}

void sub_08018C80(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unk0[3] = sub_08018C98;
}

void sub_08018C98(struct Unk_02038590 *a1) {
    a1->unkE8 = 0x10;
    a1->unk0[3] = sub_08018CAC;
}

void sub_08018CAC(struct Unk_02038590 *a1) {
    a1->unk9E |= 0x80;
    if (!--a1->unkE8) {
        a1->unkE8 = 0x1E;
        a1->unk0[3] = sub_08018CDC;
    }
}

void sub_08018CDC(struct Unk_02038590 *a1) {
    a1->unk9E |= 0x81;
    if (!a1->unkE8) {
        if (a1->unk40->unkD4 != 0xD && a1->unk40->unkD4 != 0xE)
            a1->unk0[3] = sub_0801519C;
    } else {
        --a1->unkE8;
    }
}

void sub_08018D18(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unk0[3] = sub_08018D30;
}

void sub_08018D30(struct Unk_02038590 *a1) {
    a1->unkE8 = 2;
    a1->unk0[3] = sub_08018D44;
}

void sub_08018D44(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_0801519C;
}

void sub_08018D70(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unk0[3] = sub_08018D88;
}

void sub_08018D88(struct Unk_02038590 *a1) {
    a1->unkE8 = 2;
    a1->unk0[3] = sub_08018D9C;
}

void sub_08018D9C(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_0801519C;
}

void sub_08018DC8(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unkE0 = a1->unkEC;
    a1->unk0[3] = sub_08018DE8;
}

void sub_08018DE8(struct Unk_02038590 *a1) {
    if (!a1->unkE0)
        a1->unkE8 = (Rand16() & 0xFF) + 0x3C;
    else
        a1->unkE8 = a1->unkE0;
    a1->unkEA = 0;
    a1->unk0[3] = sub_08017548;
}

void sub_08018E3C(struct Unk_02038590 *a1) {
    a1->unkE8 = 2;
    a1->unk0[3] = sub_08018E50;
}

void sub_08018E50(struct Unk_02038590 *a1) {
    a1->unk9E |= 0x80;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_0801519C;
}

void sub_08018E7C(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unk0[3] = sub_08018E94;
}

void sub_08018E94(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0x7F) + 5;
    a1->unk0[3] = sub_08018EC8;
}

void sub_08018EC8(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_0801519C;
}

void sub_08018EF4(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0x3F) + 0x10;
    a1->unk9E |= 2;
    a1->unk0[3] = sub_08017800;
}

void sub_08018F34(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x12;
    a1->unk0[3] = sub_08018F50;
}

void sub_08018F50(struct Unk_02038590 *a1) {
    a1->unkE8 = 0xB4;
    a1->unk0[3] = sub_0801786C;
}

void sub_08018F64(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unk0[3] = sub_08018F7C;
}

void sub_08018F7C(struct Unk_02038590 *a1) {
    a1->unkE8 = 0x10;
    a1->unk9E |= 2;
    a1->unk0[3] = sub_08018F9C;
}

void sub_08018F9C(struct Unk_02038590 *a1) {
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08018FBC;
}

void sub_08018FBC(struct Unk_02038590 *a1) {
    a1->unkE8 = 4;
    a1->unk0[3] = sub_08018FD0;
}

void sub_08018FD0(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    if (a1->unkE0 == 2)
        a1->unk9E |= 0x40;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08019010;
}

void sub_08019010(struct Unk_02038590 *a1) {
    a1->unkE8 = 4;
    a1->unk0[3] = sub_0801902C;
    sub_0801902C(a1);
}

void sub_0801902C(struct Unk_02038590 *a1) {
    if (a1->unkE0 == 2)
        a1->unk9E |= 0x40;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08019060;
}

void sub_08019060(struct Unk_02038590 *a1) {
    a1->unkE8 = 0x3C;
    a1->unk0[3] = sub_08019074;
}

void sub_08019074(struct Unk_02038590 *a1) {
    if (!--a1->unkE8)
        a1->unk0[3] = sub_0801519C;
}

void sub_08019094(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x14;
    a1->flags |= 2;
    if (a1->unk40->ability != KIRBY_ABILITY_STONE)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->unkD4 == 0x34)
        a1->unk0[3] = sub_08019138;
    else
        a1->unk0[3] = sub_080190E8;
}

void sub_080190E8(struct Unk_02038590 *a1) {
    a1->unk0[3] = sub_080190F4;
}

void sub_080190F4(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    a1->unk0[3] = sub_0801910C;
}

void sub_0801910C(struct Unk_02038590 *a1) {
    if (!a1->unkE8) {
        if (!(a1->unk40->base.base.base.flags & 0x20))
            a1->unk0[3] = sub_08019138;
    } else {
        --a1->unkE8;
    }
}

void sub_08019138(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    a1->unkE8 = (Rand16() & 0x3F) + 5;
    a1->unk0[3] = sub_08019178;
}

void sub_08019178(struct Unk_02038590 *a1) {
    if (!--a1->unkE8)
        a1->unk0[3] = sub_0801519C;
}

void sub_08019198(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x15;
    a1->flags |= 2;
    switch (a1->unk40->ability) {
    default:
        a1->unk0[3] = sub_0801519C;
        break;
    case KIRBY_ABILITY_STONE:
    case KIRBY_ABILITY_SMASH:
        if (a1->unk40->unkD4 == 0x34)
            a1->unk0[3] = sub_08019378;
        else
            a1->unk0[3] = sub_080191F0;
        break;
    }
}

void sub_080191F0(struct Unk_02038590 *a1) {
    if (a1->unk40->ability == KIRBY_ABILITY_STONE && a1->unk40->unkD4 == 0x34)
        a1->unk0[3] = sub_08019378;
    else if (a1->unk40->base.base.base.flags & 0x40)
        a1->unk0[3] = sub_0801519C;
    else if (a1->unk40->base.base.base.flags & 0x20)
        a1->unk0[3] = sub_08017A4C;
    else
        a1->unk0[3] = sub_08019248;
}

void sub_08019248(struct Unk_02038590 *a1) {
    switch (a1->unk40->ability) {
    default:
        a1->unk0[3] = sub_0801519C;
        break;
    case KIRBY_ABILITY_STONE:
    case KIRBY_ABILITY_SMASH:
        if (a1->unk40->base.base.base.flags & 0x60)
            a1->unk0[3] = sub_0801519C;
        else
            a1->unk0[3] = sub_08019288;
        break;
    }
}

void sub_08019288(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0xF) + 0xA;
    a1->unk0[3] = sub_08017950;
}

void sub_080192BC(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    a1->unk0[3] = sub_080192D4;
}

void sub_080192D4(struct Unk_02038590 *a1) {
    switch (a1->unk40->ability) {
    default:
        a1->unk0[3] = sub_0801519C;
        break;
    case KIRBY_ABILITY_STONE:
    case KIRBY_ABILITY_SMASH:
        if (!(a1->unk40->base.base.base.flags & 0x20) || a1->unk40->base.base.base.flags & 0x40)
            a1->unk0[3] = sub_0801519C;
        else if (!(a1->unk40->base.base.base.flags & 0x20) && !a1->unk40->base.base.base.yspeed)
            a1->unk0[3] = sub_08019324;
        break;
    }
}

void sub_08019324(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0x3F) + 0xF;
    a1->unk0[3] = sub_08019358;
}

void sub_08019358(struct Unk_02038590 *a1) {
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08019378;
}

void sub_08019378(struct Unk_02038590 *a1) {
    switch (a1->unk40->ability) {
    default:
        a1->unk0[3] = sub_0801519C;
        break;
    case KIRBY_ABILITY_STONE:
    case KIRBY_ABILITY_SMASH:
        if (a1->unk40->unkD4 != 0x34)
            a1->unk0[3] = sub_0801519C;
        else
            a1->unk0[3] = sub_080193B8;
        break;
    }
}

void sub_080193B8(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    a1->unkE8 = (Rand16() & 0x1F) + 0x1E;
    a1->unk0[3] = sub_080193F8;
}

void sub_080193F8(struct Unk_02038590 *a1) {
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08019378;
}

void sub_08019418(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unkE0 = a1->unkEC;
    a1->unk0[3] = sub_08019438;
}

void sub_08019438(struct Unk_02038590 *a1) {
    if (!a1->unkE0)
        a1->unkE8 = (Rand16() & 0x3F) + 0x1E;
    else
        a1->unkE8 = a1->unkE0;
    a1->unkEA = 0;
    a1->unk0[3] = sub_08017BA8;
}

void sub_0801948C(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0x1F) + 0x1E;
    a1->unk0[3] = sub_080194C0;
}

void sub_080194C0(struct Unk_02038590 *a1) {
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08017C24;
}

void sub_080194E0(struct Unk_02038590 *a1) {
    a1->unk9E = a1->unkEA;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_08019508;
}

void sub_08019508(struct Unk_02038590 *a1) {
    a1->unk9E = a1->unkEA | 2;
    a1->unk0[3] = sub_08019524;
}

void sub_08019524(struct Unk_02038590 *a1) {
    a1->unkE8 = (Rand16() & 0x3F) + 0x1E;
    a1->unk0[3] = sub_08019558;
}

void sub_08019558(struct Unk_02038590 *a1) {
    if (!--a1->unkE8) {
        if (sub_0801519C_helper(a1))
            a1->unk0[3] = sub_08019524;
        else {
            a1->flags &= ~2;
            a1->unk0[3] = sub_0801519C;
        }
    }
}

void sub_080195A4(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unkE0 = a1->unkEC;
    a1->unk0[3] = sub_080195C4;
}

void sub_080195C4(struct Unk_02038590 *a1) {
    switch (a1->unkE0) {
    case 0:
        a1->unkE8 = 4;
        break;
    case 1:
        a1->unkE8 = 0x1E;
        break;
    case 2:
        a1->unkE8 = 0x3C;
        break;
    default:
        a1->unkE8 = 0x78;
        break;
    }
    a1->unk0[3] = sub_0801960C;
}

void sub_0801960C(struct Unk_02038590 *a1) {
    a1->unk9E |= 2;
    if (!--a1->unkE8)
        a1->unk0[3] = sub_0801519C;
}

void sub_08019638(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unkE0 = a1->unkEC;
    a1->unkE4.data = a1->unkEE;
    a1->unk0[3] = sub_08019664;
}

void sub_08019664(struct Unk_02038590 *a1) {
    switch (a1->unkE4.data) {
    default:
        a1->unkE8 = 0x96;
        break;
    case 0:
        a1->unkE8 = 0x1E;
        break;
    case 1:
        a1->unkE8 = 0x3C;
        break;
    case 2:
        a1->unkE8 = 0x64;
        break;
    }
    a1->unk0[3] = sub_08017DC4;
}

void sub_080196A4(struct Unk_02038590 *a1) {
    a1->unkDE = a1->unkEA;
    a1->unkE0 = a1->unkEC;
    a1->unkE4.data = a1->unkEE;
    a1->unk0[3] = sub_080196D0;
}

void sub_080196D0(struct Unk_02038590 *a1) {
    a1->unkE8 = 0;
    a1->unk0[3] = sub_08017EA0;
}

void sub_080196E4(struct Unk_02038590 *a1) {
    a1->unkDD = a1->unkDC;
    a1->unkDC = 0x1A;
    a1->flags |= 2;
    a1->unkE8 = 0;
    if (a1->unk40->ability != KIRBY_ABILITY_MISSILE)
        a1->unk0[3] = sub_0801519C;
    else
        a1->unk0[3] = sub_08017F88;
}

void sub_08019734(struct Unk_02038590 *a1, u16 a2) {
    a1->unkBC = 0x3C * a2;
    a1->unk0[0] = sub_08019758;
    a1->unk0[1] = sub_08013A60;
}

void sub_08019758(struct Unk_02038590 *a1) {
    if (!--a1->unkBC) {
        a1->flags &= ~8;
        a1->unk0[0] = sub_08013804;
    }
}

void sub_08019784(struct Unk_02038590 *a1, u16 a2) {
    a1->unk1B = a2;
    a1->unk0[1] = sub_08013B00;
    a1->unk0[0] = sub_08019798;
}

void sub_08019798(struct Unk_02038590 *a1) {
    if (a1->flags & 1) {
        a1->flags &= ~8;
        a1->unk0[0] = sub_08013804;
    }
}

void sub_080197BC(struct Unk_02038590 *a1, u16 a2) {
    a1->unkBC = a2;
    a1->unk0[0] = sub_080197DC;
    a1->unk0[1] = nullsub_104;
    a1->unk0[2] = nullsub_105;
}

void sub_080197DC(struct Unk_02038590 *a1) {
    a1->unkBE = 0x258;
    a1->unk0[0] = sub_08019818;
    if (a1->unkDC != 0x12) {
        a1->unkDE = a1->unkBC;
        a1->unkE4.data = 0;
        a1->unk0[3] = sub_08018F34;
    }
}

void sub_08019818(struct Unk_02038590 *a1) {
    if (a1->unkDC != 0x12 || !--a1->unkBE) {
        a1->flags &= ~8;
        a1->unk0[0] = sub_08013804;
    }
}

void sub_0801984C(struct Unk_02038590 *a1, u16 a2) {
    a1->unkBC = 0x3C * a2;
    a1->unk0[0] = sub_08019878;
    a1->unk0[1] = nullsub_104;
    a1->unk0[2] = nullsub_105;
}

void sub_08019878(struct Unk_02038590 *a1) {
    if (a1->unk40->base.base.base.flags & 0x80)
        a1->unk0[0] = sub_080198C4;
    else {
        switch (a1->unk40->ability) {
        default:
            if (a1->unk40->base.base.base.flags & 0x40)
                a1->unk0[0] = sub_08019914;
            else
                a1->unk0[0] = sub_0801995C;
            break;
        case KIRBY_ABILITY_UFO:
        case KIRBY_ABILITY_MINI:
            a1->unk0[0] = sub_0801995C;
            break;
        }
    }
}
