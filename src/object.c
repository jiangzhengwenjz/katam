#include "functions.h"
#include "object.h"
#include "task.h"
#include "code_0800A868.h"

// TODO: file boundaries

void nullsub_124(struct Object2 *);
void sub_0809F964(struct Object2 *);

void sub_0809EF88(struct Object2 *obj) {
    if (!(gUnk_03000510.unk4 & ((1 << obj->unk56) | 0x10))
        && obj->y + (obj->unk3D << 8) >= gCurLevelInfo[obj->unk56].unk54 + 0x1800) {
        obj->unk80 = 0;
        if (obj->type == OBJ_MR_FLOSTY || obj->type == OBJ_BONKERS || obj->type == OBJ_PHAN_PHAN
            || obj->type == OBJ_BATAFIRE || obj->type == OBJ_BOX_BOXER || obj->type == OBJ_BOXY
            || obj->type == OBJ_MASTER_HAND || obj->type == OBJ_BOMBAR || obj->type == OBJ_EMPTY_40
            || obj->type == OBJ_EMPTY_41 || obj->type == OBJ_EMPTY_42 || obj->type == OBJ_EMPTY_43
            || obj->type == OBJ_EMPTY_44 || obj->type == OBJ_KRACKO || obj->type == OBJ_KING_GOLEM
            || obj->type == OBJ_CRAZY_HAND_1 || obj->type == OBJ_GOBBLER || obj->type == OBJ_WIZ
            || obj->type == OBJ_MOLEY || obj->type == OBJ_MEGA_TITAN || obj->type == OBJ_TITAN_HEAD
            || obj->type == OBJ_CRAZY_HAND_2 || obj->type == OBJ_DARK_META_KNIGHT || obj->type == OBJ_DARK_MIND_FORM_1
            || obj->type == OBJ_DARK_MIND_FORM_2 || obj->type == OBJ_DARK_MIND_FORM_3_TRIGGER || obj->type == OBJ_DARK_META_KNIGHT_W8) {
            if (!(obj->object->unk22 & 4))
                sub_08086C48(obj);
            if (obj->type == OBJ_MR_FLOSTY || obj->type == OBJ_BONKERS || obj->type == OBJ_PHAN_PHAN
                || obj->type == OBJ_BATAFIRE || obj->type == OBJ_BOX_BOXER || obj->type == OBJ_BOXY
                || obj->type == OBJ_MASTER_HAND || obj->type == OBJ_BOMBAR || obj->type == OBJ_EMPTY_40
                || obj->type == OBJ_EMPTY_41 || obj->type == OBJ_EMPTY_42 || obj->type == OBJ_EMPTY_43
                || obj->type == OBJ_EMPTY_44 || obj->type == OBJ_KRACKO || obj->type == OBJ_KING_GOLEM
                || obj->type == OBJ_CRAZY_HAND_1 || obj->type == OBJ_GOBBLER || obj->type == OBJ_WIZ
                || obj->type == OBJ_MOLEY || obj->type == OBJ_MEGA_TITAN || obj->type == OBJ_TITAN_HEAD
                || obj->type == OBJ_CRAZY_HAND_2 || obj->type == OBJ_DARK_META_KNIGHT || obj->type == OBJ_DARK_MIND_FORM_1
                || obj->type == OBJ_DARK_MIND_FORM_2 || obj->type == OBJ_DARK_MIND_FORM_3_TRIGGER || obj->type == OBJ_DARK_META_KNIGHT_W8)
                if (!(obj->type == OBJ_EMPTY_43
                      || obj->type == OBJ_EMPTY_44 || obj->type == OBJ_KRACKO || obj->type == OBJ_KING_GOLEM
                      || obj->type == OBJ_CRAZY_HAND_1 || obj->type == OBJ_GOBBLER || obj->type == OBJ_WIZ
                      || obj->type == OBJ_MOLEY || obj->type == OBJ_MEGA_TITAN || obj->type == OBJ_TITAN_HEAD
                      || obj->type == OBJ_CRAZY_HAND_2 || obj->type == OBJ_DARK_META_KNIGHT || obj->type == OBJ_DARK_MIND_FORM_1
                      || obj->type == OBJ_DARK_MIND_FORM_2 || obj->type == OBJ_DARK_MIND_FORM_3_TRIGGER || obj->type == OBJ_DARK_META_KNIGHT_W8))
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
    arg0->unk60 = gCurLevelInfo[arg2].currentRoom;
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
    arg0->object = arg1;
    arg0->subtype = arg1->subtype2;
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
    if (arg0->type == OBJ_MR_FLOSTY || arg0->type == OBJ_BONKERS || arg0->type == OBJ_PHAN_PHAN
        || arg0->type == OBJ_BATAFIRE || arg0->type == OBJ_BOX_BOXER || arg0->type == OBJ_BOXY
        || arg0->type == OBJ_MASTER_HAND || arg0->type == OBJ_BOMBAR || arg0->type == OBJ_EMPTY_40
        || arg0->type == OBJ_EMPTY_41 || arg0->type == OBJ_EMPTY_42 || arg0->type == OBJ_EMPTY_43
        || arg0->type == OBJ_EMPTY_44 || arg0->type == OBJ_KRACKO || arg0->type == OBJ_KING_GOLEM
        || arg0->type == OBJ_CRAZY_HAND_1 || arg0->type == OBJ_GOBBLER || arg0->type == OBJ_WIZ
        || arg0->type == OBJ_MOLEY || arg0->type == OBJ_MEGA_TITAN || arg0->type == OBJ_TITAN_HEAD
        || arg0->type == OBJ_CRAZY_HAND_2 || arg0->type == OBJ_DARK_META_KNIGHT || arg0->type == OBJ_DARK_MIND_FORM_1
        || arg0->type == OBJ_DARK_MIND_FORM_2 || arg0->type == OBJ_DARK_MIND_FORM_3_TRIGGER || arg0->type == OBJ_DARK_META_KNIGHT_W8) {
        if (arg0->type == OBJ_DARK_MIND_FORM_1) {
            arg0->unk80 = gUnk_08351608[arg1->subtype2][gUnk_0203AD30 - 1];
            arg0->flags |= 0x4000000;
        }
        else {
            arg0->unk80 = gUnk_08351530[arg0->type - OBJ_MR_FLOSTY][gUnk_0203AD30 - 1];
            arg0->flags |= 0x4000000;
        }
    }
    else {
        arg0->unk80 = gUnk_08351648[arg0->type].unk4;
    }
    mask = ~7;
    arg0->unk68 = 0x82;
    if (arg0->type == OBJ_SMALL_FOOD || arg0->type == OBJ_POP_SODA || arg0->type == OBJ_MEAT
        || arg0->type == OBJ_TOMATO || arg0->type == OBJ_BATTERY || arg0->type == OBJ_1UP
        || arg0->type == OBJ_INVINCIBLE_CANDY || arg0->type == OBJ_MIRROR_SHARD || arg0->type == OBJ_EMPTY_66
        || arg0->type == OBJ_EMPTY_67 || arg0->type == OBJ_EMPTY_68 || arg0->type == OBJ_UNKNOWN_69
        || arg0->type == OBJ_EMPTY_6A || arg0->type == OBJ_EMPTY_6B || arg0->type == OBJ_EMPTY_6C
        || arg0->type == OBJ_SMALL_BUTTON || arg0->type == OBJ_FLAME || arg0->type == OBJ_BARRED_DOOR
        || arg0->type == OBJ_SHOTZO_2 || arg0->type == OBJ_BUTTON_DOOR || arg0->type == OBJ_BOSS_CHALLENGE_DOOR
        || arg0->type == OBJ_UNKNOWN_73 || arg0->type == OBJ_UNKNOWN_74 || arg0->type == OBJ_UNKNOWN_75
        || arg0->type == OBJ_UNKNOWN_76 || arg0->type == OBJ_UNKNOWN_77 || arg0->type == OBJ_UNKNOWN_78
        || arg0->type == OBJ_FALLING_STONE_BLOCK || arg0->type == OBJ_UNKNOWN_7A || arg0->type == OBJ_STAR_PLATFORM
        || arg0->type == OBJ_SMALL_FLAME || arg0->type == OBJ_FALLING_BIG_STONE_BLOCK || arg0->type == OBJ_BIG_STONE_BLOCK_INHALE
        || arg0->type == OBJ_UNKNOWN_7F || arg0->type == OBJ_SMALL_CHEST || arg0->type == OBJ_BIG_CHEST
        || arg0->type == OBJ_UNKNOWN_82 || arg0->type == OBJ_UNKNOWN_83 || arg0->type == OBJ_WARP_STAR
        || arg0->type == OBJ_GOAL_STAR || arg0->type == OBJ_BIG_BUTTON || arg0->type == OBJ_UNKNOWN_87
        || arg0->type == OBJ_BIG_STONE_BLOCK_IMPACT || arg0->type == OBJ_BIG_STONE_BLOCK_BOTH || arg0->type == OBJ_CANNON
        || arg0->type == OBJ_8_DIR_CANNON || arg0->type == OBJ_UNKNOWN_8C || arg0->type == OBJ_UNKNOWN_8D
        || arg0->type == OBJ_CUTSCENE_TRIGGER || arg0->type == OBJ_MASTER_SWORD_UNOBTAINABLE || arg0->type == OBJ_WIND_EFFECT
        || arg0->type == OBJ_UNKNOWN_91 || arg0->type == OBJ_ABILITY_STATUE_1 || arg0->type == OBJ_ABILITY_STATUE_2
        || arg0->type == OBJ_ABILITY_STATUE_3 || arg0->type == OBJ_ABILITY_STATUE_4 || arg0->type == OBJ_ABILITY_STATUE_RANDOM
        || arg0->type == OBJ_UNKNOWN_97 || arg0->type == OBJ_MASTER_SWORD_STAND || arg0->type == OBJ_UNKNOWN_99
        || arg0->type == OBJ_EMPTY_9A) { 
        arg0->unk5C &= mask;
    }
    else {
        arg0->unk5C &= mask;
        arg0->unk5C |= 1;
    }
    if (arg0->type == OBJ_MR_FLOSTY || arg0->type == OBJ_BONKERS || arg0->type == OBJ_PHAN_PHAN
        || arg0->type == OBJ_BATAFIRE || arg0->type == OBJ_BOX_BOXER || arg0->type == OBJ_BOXY
        || arg0->type == OBJ_MASTER_HAND || arg0->type == OBJ_BOMBAR || arg0->type == OBJ_EMPTY_40
        || arg0->type == OBJ_EMPTY_41 || arg0->type == OBJ_EMPTY_42 || arg0->type == OBJ_EMPTY_43
        || arg0->type == OBJ_EMPTY_44 || arg0->type == OBJ_KRACKO || arg0->type == OBJ_KING_GOLEM
        || arg0->type == OBJ_CRAZY_HAND_1 || arg0->type == OBJ_GOBBLER || arg0->type == OBJ_WIZ
        || arg0->type == OBJ_MOLEY || arg0->type == OBJ_MEGA_TITAN || arg0->type == OBJ_TITAN_HEAD
        || arg0->type == OBJ_CRAZY_HAND_2 || arg0->type == OBJ_DARK_META_KNIGHT || arg0->type == OBJ_DARK_MIND_FORM_1
        || arg0->type == OBJ_DARK_MIND_FORM_2 || arg0->type == OBJ_DARK_MIND_FORM_3_TRIGGER || arg0->type == OBJ_DARK_META_KNIGHT_W8) {
        arg0->unk5C |= 0x108000;
    }
    arg0->kirby3 = sub_0803D368(arg0);
    arg0->unkA0 = arg0->kirby3->base.x >> 8;
    arg0->unkA2 = arg0->kirby3->base.y >> 8;
    arg0->unk9F = 0;
    if (gUnk_08351648[arg0->type].unkC == 0) {
        arg0->flags |= 0x400;
        arg0->flags |= 8;
    }
    sub_08001678(arg1->unk2, arg1->unk3, gCurLevelInfo[arg2].unk65E, 1);
    if (arg0->type <= OBJ_EMPTY_5C) {
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
    objB0 = arg0->object;
    if (arg0->type == OBJ_WADDLE_DEE_1 || arg0->type == OBJ_BRONTO_BURT || arg0->type == OBJ_BLIPPER
        || arg0->type == OBJ_GLUNK || arg0->type == OBJ_SQUISHY || arg0->type == OBJ_SCARFY
        || arg0->type == OBJ_GORDO || arg0->type == OBJ_SNOOTER_1 || arg0->type == OBJ_CHIP
        || arg0->type == OBJ_SOARAR || arg0->type == OBJ_HALEY || arg0->type == OBJ_ROLYPOLY
        || arg0->type == OBJ_CUPIE || arg0->type == OBJ_BLOCKIN || arg0->type == OBJ_SNOOTER_2
        || arg0->type == OBJ_LEAP || arg0->type == OBJ_JACK || arg0->type == OBJ_BIG_WADDLE_DEE
        || arg0->type == OBJ_WADDLE_DOO || arg0->type == OBJ_FLAMER || arg0->type == OBJ_HOT_HEAD
        || arg0->type == OBJ_LASER_BALL || arg0->type == OBJ_PENGY || arg0->type == OBJ_ROCKY
        || arg0->type == OBJ_SIR_KIBBLE || arg0->type == OBJ_SPARKY || arg0->type == OBJ_SWORD_KNIGHT
        || arg0->type == OBJ_UFO || arg0->type == OBJ_TWISTER || arg0->type == OBJ_WHEELIE
        || arg0->type == OBJ_NODDY || arg0->type == OBJ_GOLEM_1 || arg0->type == OBJ_GOLEM_2
        || arg0->type == OBJ_GOLEM_3 || arg0->type == OBJ_FOLEY_1 || arg0->type == OBJ_SHOOTY
        || arg0->type == OBJ_SCARFY_FALLING || arg0->type == OBJ_BOXIN || arg0->type == OBJ_COOKIN
        || arg0->type == OBJ_MINNY || arg0->type == OBJ_BOMBER || arg0->type == OBJ_HEAVY_KNIGHT
        || arg0->type == OBJ_GIANT_ROCKY || arg0->type == OBJ_METAL_GUARDIAN || arg0->type == OBJ_EMPTY_2C
        || arg0->type == OBJ_BATTY || arg0->type == OBJ_FOLEY_2 || arg0->type == OBJ_BANG_BANG
        || arg0->type == OBJ_DARK_MIND_BOMB || arg0->type == OBJ_EMPTY_31 || arg0->type == OBJ_DROPPY
        || arg0->type == OBJ_PRANK || arg0->type == OBJ_MIRRA || arg0->type == OBJ_SHOTZO_1
        || arg0->type == OBJ_SHADOW_KIRBY || arg0->type == OBJ_WADDLE_DEE_2
        || arg0->type == OBJ_MR_FLOSTY || arg0->type == OBJ_BONKERS || arg0->type == OBJ_PHAN_PHAN
        || arg0->type == OBJ_BATAFIRE || arg0->type == OBJ_BOX_BOXER || arg0->type == OBJ_BOXY
        || arg0->type == OBJ_MASTER_HAND || arg0->type == OBJ_BOMBAR || arg0->type == OBJ_EMPTY_40
        || arg0->type == OBJ_EMPTY_41 || arg0->type == OBJ_EMPTY_42 || arg0->type == OBJ_EMPTY_43
        || arg0->type == OBJ_EMPTY_44 || arg0->type == OBJ_KRACKO || arg0->type == OBJ_KING_GOLEM
        || arg0->type == OBJ_CRAZY_HAND_1 || arg0->type == OBJ_GOBBLER || arg0->type == OBJ_WIZ
        || arg0->type == OBJ_MOLEY || arg0->type == OBJ_MEGA_TITAN || arg0->type == OBJ_TITAN_HEAD
        || arg0->type == OBJ_CRAZY_HAND_2 || arg0->type == OBJ_DARK_META_KNIGHT || arg0->type == OBJ_DARK_MIND_FORM_1
        || arg0->type == OBJ_DARK_MIND_FORM_2 || arg0->type == OBJ_DARK_MIND_FORM_3_TRIGGER || arg0->type == OBJ_DARK_META_KNIGHT_W8
        || arg0->type == OBJ_EMPTY_53 || arg0->type == OBJ_EMPTY_54 || arg0->type == OBJ_EMPTY_55
        || arg0->type == OBJ_EMPTY_56 || arg0->type == OBJ_EMPTY_57 || arg0->type == OBJ_EMPTY_58
        || arg0->type == OBJ_EMPTY_59 || arg0->type == OBJ_EMPTY_5A || arg0->type == OBJ_EMPTY_5B
        || arg0->type == OBJ_EMPTY_5C || arg0->type == OBJ_EMPTY_5D
        || arg0->type == OBJ_SMALL_FOOD || arg0->type == OBJ_POP_SODA || arg0->type == OBJ_MEAT
        || arg0->type == OBJ_TOMATO || arg0->type == OBJ_BATTERY || arg0->type == OBJ_1UP
        || arg0->type == OBJ_INVINCIBLE_CANDY) {
        if (arg0->object->unk22 & 2) {
            arg0->unkC |= 0x1000;
        }
    }
    if (arg0->type == OBJ_WADDLE_DEE_1 || arg0->type == OBJ_BRONTO_BURT || arg0->type == OBJ_BLIPPER
        || arg0->type == OBJ_GLUNK || arg0->type == OBJ_SQUISHY || arg0->type == OBJ_SCARFY
        || arg0->type == OBJ_GORDO || arg0->type == OBJ_SNOOTER_1 || arg0->type == OBJ_CHIP
        || arg0->type == OBJ_SOARAR || arg0->type == OBJ_HALEY || arg0->type == OBJ_ROLYPOLY
        || arg0->type == OBJ_CUPIE || arg0->type == OBJ_BLOCKIN || arg0->type == OBJ_SNOOTER_2
        || arg0->type == OBJ_LEAP || arg0->type == OBJ_JACK || arg0->type == OBJ_BIG_WADDLE_DEE
        || arg0->type == OBJ_WADDLE_DOO || arg0->type == OBJ_FLAMER || arg0->type == OBJ_HOT_HEAD
        || arg0->type == OBJ_LASER_BALL || arg0->type == OBJ_PENGY || arg0->type == OBJ_ROCKY
        || arg0->type == OBJ_SIR_KIBBLE || arg0->type == OBJ_SPARKY || arg0->type == OBJ_SWORD_KNIGHT
        || arg0->type == OBJ_UFO || arg0->type == OBJ_TWISTER || arg0->type == OBJ_WHEELIE
        || arg0->type == OBJ_NODDY || arg0->type == OBJ_GOLEM_1 || arg0->type == OBJ_GOLEM_2
        || arg0->type == OBJ_GOLEM_3 || arg0->type == OBJ_FOLEY_1 || arg0->type == OBJ_SHOOTY
        || arg0->type == OBJ_SCARFY_FALLING || arg0->type == OBJ_BOXIN || arg0->type == OBJ_COOKIN
        || arg0->type == OBJ_MINNY || arg0->type == OBJ_BOMBER || arg0->type == OBJ_HEAVY_KNIGHT
        || arg0->type == OBJ_GIANT_ROCKY || arg0->type == OBJ_METAL_GUARDIAN || arg0->type == OBJ_EMPTY_2C
        || arg0->type == OBJ_BATTY || arg0->type == OBJ_FOLEY_2 || arg0->type == OBJ_BANG_BANG
        || arg0->type == OBJ_DARK_MIND_BOMB || arg0->type == OBJ_EMPTY_31 || arg0->type == OBJ_DROPPY) {
        if (arg0->object->unk22 & 0x8000) {
            arg0->unkC |= 0x10;
        }
    }
    if (arg0->type == OBJ_SMALL_BUTTON || arg0->type == OBJ_FLAME || arg0->type == OBJ_BARRED_DOOR
        || arg0->type == OBJ_SHOTZO_2 || arg0->type == OBJ_BUTTON_DOOR || arg0->type == OBJ_BOSS_CHALLENGE_DOOR
        || arg0->type == OBJ_UNKNOWN_73 || arg0->type == OBJ_UNKNOWN_74 || arg0->type == OBJ_UNKNOWN_75
        || arg0->type == OBJ_UNKNOWN_76 || arg0->type == OBJ_UNKNOWN_77 || arg0->type == OBJ_UNKNOWN_78
        || arg0->type == OBJ_FALLING_STONE_BLOCK || arg0->type == OBJ_UNKNOWN_7A || arg0->type == OBJ_STAR_PLATFORM
        || arg0->type == OBJ_SMALL_FLAME || arg0->type == OBJ_FALLING_BIG_STONE_BLOCK || arg0->type == OBJ_BIG_STONE_BLOCK_INHALE
        || arg0->type == OBJ_UNKNOWN_7F || arg0->type == OBJ_SMALL_CHEST || arg0->type == OBJ_BIG_CHEST
        || arg0->type == OBJ_UNKNOWN_82 || arg0->type == OBJ_UNKNOWN_83 || arg0->type == OBJ_WARP_STAR
        || arg0->type == OBJ_GOAL_STAR || arg0->type == OBJ_BIG_BUTTON || arg0->type == OBJ_UNKNOWN_87
        || arg0->type == OBJ_BIG_STONE_BLOCK_IMPACT || arg0->type == OBJ_BIG_STONE_BLOCK_BOTH || arg0->type == OBJ_CANNON
        || arg0->type == OBJ_8_DIR_CANNON || arg0->type == OBJ_UNKNOWN_8C || arg0->type == OBJ_UNKNOWN_8D
        || arg0->type == OBJ_CUTSCENE_TRIGGER || arg0->type == OBJ_MASTER_SWORD_UNOBTAINABLE || arg0->type == OBJ_WIND_EFFECT
        || arg0->type == OBJ_UNKNOWN_91 || arg0->type == OBJ_ABILITY_STATUE_1 || arg0->type == OBJ_ABILITY_STATUE_2
        || arg0->type == OBJ_ABILITY_STATUE_3 || arg0->type == OBJ_ABILITY_STATUE_4 || arg0->type == OBJ_ABILITY_STATUE_RANDOM
        || arg0->type == OBJ_UNKNOWN_97 || arg0->type == OBJ_MASTER_SWORD_STAND || arg0->type == OBJ_UNKNOWN_99) {
        arg0->unkC |= 4;
        arg0->unkC |= 1;
    }
    if (arg0->object->unk2 != 0 || arg0->object->unk3 != 31) {
        if (arg0->type == OBJ_WADDLE_DEE_1 || arg0->type == OBJ_BRONTO_BURT || arg0->type == OBJ_BLIPPER
            || arg0->type == OBJ_GLUNK || arg0->type == OBJ_SQUISHY || arg0->type == OBJ_SCARFY
            || arg0->type == OBJ_GORDO || arg0->type == OBJ_SNOOTER_1 || arg0->type == OBJ_CHIP
            || arg0->type == OBJ_SOARAR || arg0->type == OBJ_HALEY || arg0->type == OBJ_ROLYPOLY
            || arg0->type == OBJ_CUPIE || arg0->type == OBJ_BLOCKIN || arg0->type == OBJ_SNOOTER_2
            || arg0->type == OBJ_LEAP || arg0->type == OBJ_JACK || arg0->type == OBJ_BIG_WADDLE_DEE
            || arg0->type == OBJ_WADDLE_DOO || arg0->type == OBJ_FLAMER || arg0->type == OBJ_HOT_HEAD
            || arg0->type == OBJ_LASER_BALL || arg0->type == OBJ_PENGY || arg0->type == OBJ_ROCKY
            || arg0->type == OBJ_SIR_KIBBLE || arg0->type == OBJ_SPARKY || arg0->type == OBJ_SWORD_KNIGHT
            || arg0->type == OBJ_UFO || arg0->type == OBJ_TWISTER || arg0->type == OBJ_WHEELIE
            || arg0->type == OBJ_NODDY || arg0->type == OBJ_GOLEM_1 || arg0->type == OBJ_GOLEM_2
            || arg0->type == OBJ_GOLEM_3 || arg0->type == OBJ_FOLEY_1 || arg0->type == OBJ_SHOOTY
            || arg0->type == OBJ_SCARFY_FALLING || arg0->type == OBJ_BOXIN || arg0->type == OBJ_COOKIN
            || arg0->type == OBJ_MINNY || arg0->type == OBJ_BOMBER || arg0->type == OBJ_HEAVY_KNIGHT
            || arg0->type == OBJ_GIANT_ROCKY || arg0->type == OBJ_METAL_GUARDIAN || arg0->type == OBJ_EMPTY_2C
            || arg0->type == OBJ_BATTY || arg0->type == OBJ_FOLEY_2 || arg0->type == OBJ_BANG_BANG
            || arg0->type == OBJ_DARK_MIND_BOMB || arg0->type == OBJ_EMPTY_31 || arg0->type == OBJ_DROPPY
            || arg0->type == OBJ_PRANK || arg0->type == OBJ_MIRRA || arg0->type == OBJ_SHOTZO_1
            || arg0->type == OBJ_SHADOW_KIRBY || arg0->type == OBJ_WADDLE_DEE_2) {
            arg0->unkC |= 0x100;
        }
    }
    if (arg0->unk58 & 2) {
        arg0->unkC |= 8;
    }
    arg0->unkA4 = gCurLevelInfo[arg0->unk56].unkA0 >> 8;
    arg0->unkA6 = gCurLevelInfo[arg0->unk56].unkA4 >> 8;
    arg0->unkA8 = gCurLevelInfo[arg0->unk56].unkA8 >> 8;
    arg0->unkAA = gCurLevelInfo[arg0->unk56].unkAC >> 8;
}

void ObjectInitSprite(struct Object2* arg0) {
    u8 r7 = 0x1a, ret;
    u16 r4;
    if (arg0->type == OBJ_SMALL_BUTTON || arg0->type == OBJ_FLAME || arg0->type == OBJ_BARRED_DOOR
        || arg0->type == OBJ_SHOTZO_2 || arg0->type == OBJ_BUTTON_DOOR || arg0->type == OBJ_BOSS_CHALLENGE_DOOR
        || arg0->type == OBJ_UNKNOWN_73 || arg0->type == OBJ_UNKNOWN_74 || arg0->type == OBJ_UNKNOWN_75
        || arg0->type == OBJ_UNKNOWN_76 || arg0->type == OBJ_UNKNOWN_77 || arg0->type == OBJ_UNKNOWN_78
        || arg0->type == OBJ_FALLING_STONE_BLOCK || arg0->type == OBJ_UNKNOWN_7A || arg0->type == OBJ_STAR_PLATFORM
        || arg0->type == OBJ_SMALL_FLAME || arg0->type == OBJ_FALLING_BIG_STONE_BLOCK || arg0->type == OBJ_BIG_STONE_BLOCK_INHALE
        || arg0->type == OBJ_UNKNOWN_7F || arg0->type == OBJ_SMALL_CHEST || arg0->type == OBJ_BIG_CHEST
        || arg0->type == OBJ_UNKNOWN_82 || arg0->type == OBJ_UNKNOWN_83 || arg0->type == OBJ_WARP_STAR
        || arg0->type == OBJ_GOAL_STAR || arg0->type == OBJ_BIG_BUTTON || arg0->type == OBJ_UNKNOWN_87
        || arg0->type == OBJ_BIG_STONE_BLOCK_IMPACT || arg0->type == OBJ_BIG_STONE_BLOCK_BOTH || arg0->type == OBJ_CANNON
        || arg0->type == OBJ_8_DIR_CANNON || arg0->type == OBJ_UNKNOWN_8C || arg0->type == OBJ_UNKNOWN_8D
        || arg0->type == OBJ_CUTSCENE_TRIGGER || arg0->type == OBJ_MASTER_SWORD_UNOBTAINABLE || arg0->type == OBJ_WIND_EFFECT
        || arg0->type == OBJ_UNKNOWN_91 || arg0->type == OBJ_ABILITY_STATUE_1 || arg0->type == OBJ_ABILITY_STATUE_2
        || arg0->type == OBJ_ABILITY_STATUE_3 || arg0->type == OBJ_ABILITY_STATUE_4 || arg0->type == OBJ_ABILITY_STATUE_RANDOM
        || arg0->type == OBJ_UNKNOWN_97 || arg0->type == OBJ_MASTER_SWORD_STAND || arg0->type == OBJ_UNKNOWN_99
        || arg0->type == OBJ_EMPTY_9A) {
        r7 = 0x1e;
    }
    if (arg0->type == OBJ_MR_FLOSTY || arg0->type == OBJ_BONKERS || arg0->type == OBJ_PHAN_PHAN
        || arg0->type == OBJ_BATAFIRE || arg0->type == OBJ_BOX_BOXER || arg0->type == OBJ_BOXY
        || arg0->type == OBJ_MASTER_HAND || arg0->type == OBJ_BOMBAR || arg0->type == OBJ_EMPTY_40
        || arg0->type == OBJ_EMPTY_41 || arg0->type == OBJ_EMPTY_42 || arg0->type == OBJ_EMPTY_43
        || arg0->type == OBJ_EMPTY_44 || arg0->type == OBJ_KRACKO || arg0->type == OBJ_KING_GOLEM
        || arg0->type == OBJ_CRAZY_HAND_1 || arg0->type == OBJ_GOBBLER || arg0->type == OBJ_WIZ
        || arg0->type == OBJ_MOLEY || arg0->type == OBJ_MEGA_TITAN || arg0->type == OBJ_TITAN_HEAD
        || arg0->type == OBJ_CRAZY_HAND_2 || arg0->type == OBJ_DARK_META_KNIGHT || arg0->type == OBJ_DARK_MIND_FORM_1
        || arg0->type == OBJ_DARK_MIND_FORM_2 || arg0->type == OBJ_DARK_MIND_FORM_3_TRIGGER || arg0->type == OBJ_DARK_META_KNIGHT_W8) {
        r7 = 0x1d;
    }
    if (gUnk_08351648[arg0->type].unkC != 0) {
        if (gUnk_02020EE0[gUnk_0203AD3C].base.unk60 == arg0->unk60) {
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
                if (gUnk_02020EE0[gUnk_0203AD3C].base.unk60 == arg0->unk60) {
                    sub_0803DFAC(r4, arg0->object->unkF);
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
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0, ObjectDestroy);
    struct Object2 *r4;

    sub_0803E380(TASK_GET_STRUCT_PTR(task, r4));
    r4->unk10.unk0 = 0;
    r4->unk0 = 1;
    r4->unk60 = gCurLevelInfo[r7].currentRoom;
    r4->unk56 = r7;
    r4->unk83 = 0;
    r4->type = r6->type;
    r4->unk85 = 0;
    r4->unk80 = 0;
    r4->unk78 = nullsub_124;
    r4->unk7C = 0;
    r4->object = r6;
    r4->unk84 = 0;
    r4->unk86 = 0;
    r4->unk90 = 0;
    r4->unk8C = 0;
    r4->flags = 0;
    r4->kirby3 = NULL;
    r4->unk9F = 0;
    sub_08001678(r6->unk2, r6->unk3, gCurLevelInfo[r7].unk65E, 1);
    if (r6->unk3 == 31) r4->object = 0;
    r4->flags = 0xE40;
    return r4;
}

void sub_0809F6BC(struct Object2 *r5) {
    u16 r1, r2;
    u8 r3, r6;

    if ((r5->type == OBJ_WADDLE_DEE_1 || r5->type == OBJ_BRONTO_BURT || r5->type == OBJ_BLIPPER
         || r5->type == OBJ_GLUNK || r5->type == OBJ_SQUISHY || r5->type == OBJ_SCARFY
         || r5->type == OBJ_GORDO || r5->type == OBJ_SNOOTER_1 || r5->type == OBJ_CHIP
         || r5->type == OBJ_SOARAR || r5->type == OBJ_HALEY || r5->type == OBJ_ROLYPOLY
         || r5->type == OBJ_CUPIE || r5->type == OBJ_BLOCKIN || r5->type == OBJ_SNOOTER_2
         || r5->type == OBJ_LEAP || r5->type == OBJ_JACK || r5->type == OBJ_BIG_WADDLE_DEE
         || r5->type == OBJ_WADDLE_DOO || r5->type == OBJ_FLAMER || r5->type == OBJ_HOT_HEAD
         || r5->type == OBJ_LASER_BALL || r5->type == OBJ_PENGY || r5->type == OBJ_ROCKY
         || r5->type == OBJ_SIR_KIBBLE || r5->type == OBJ_SPARKY || r5->type == OBJ_SWORD_KNIGHT
         || r5->type == OBJ_UFO || r5->type == OBJ_TWISTER || r5->type == OBJ_WHEELIE
         || r5->type == OBJ_NODDY || r5->type == OBJ_GOLEM_1 || r5->type == OBJ_GOLEM_2
         || r5->type == OBJ_GOLEM_3 || r5->type == OBJ_FOLEY_1 || r5->type == OBJ_SHOOTY
         || r5->type == OBJ_SCARFY_FALLING || r5->type == OBJ_BOXIN || r5->type == OBJ_COOKIN
         || r5->type == OBJ_MINNY || r5->type == OBJ_BOMBER || r5->type == OBJ_HEAVY_KNIGHT
         || r5->type == OBJ_GIANT_ROCKY || r5->type == OBJ_METAL_GUARDIAN || r5->type == OBJ_EMPTY_2C
         || r5->type == OBJ_BATTY || r5->type == OBJ_FOLEY_2 || r5->type == OBJ_BANG_BANG
         || r5->type == OBJ_DARK_MIND_BOMB || r5->type == OBJ_EMPTY_31 || r5->type == OBJ_DROPPY
         || r5->type == OBJ_PRANK)
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
        gUnk_020229E0[r3].spawnTable = 1;
        gUnk_020229E0[r3].unk1 = 36;
        gUnk_020229E0[r3].x = r5->x >> 8;
        gUnk_020229E0[r3].y = r5->y >> 8;
        gUnk_020229E0[r3].unk2 = 0;
        gUnk_020229E0[r3].unk3 = 31;
        gUnk_020229E0[r3].unk4 = 0;
        gUnk_020229E0[r3].unk5 = 0;
        gUnk_020229E0[r3].type = 94;
        gUnk_020229E0[r3].subtype1 = r6;
        gUnk_020229E0[r3].unkF = 0;
        gUnk_020229E0[r3].subtype2 = 2;
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
    if ((obj->kirby2->base.flags & 0x1000 || obj->kirby2->base.unk80 <= 0)
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
    struct Kirby *kirby = obj->kirby2;

    obj->flags |= 0x2F00;
    obj->unk10.unk8 = obj->unk10.unk8 & 0xFFFFF7FF;
    obj->unk10.unk8 |= kirby->base.unk10.unk8 & 0x800;
    obj->flags &= 0xFFFFFFFE;
    obj->flags |= (kirby->base.flags & 1);
    obj->x = kirby->base.x;
    obj->y = kirby->base.y;
    obj->unk54 = kirby->base.unk54;
    obj->unk55 = kirby->base.unk55;
    if (kirby->base.flags & 0x1000)
        obj->flags |= 0x1000;
}

void sub_0809F938(struct Object2 *obj) {
    u32 unkC;

    obj->xspeed = 0;
    obj->yspeed = 0;
    obj->kirby2 = obj->kirby1;
    obj->counter = 0;
    unkC = obj->unkC | 1;
    obj->unk78 = sub_0809F964;
    obj->unkC = unkC | 0x400;
}

void sub_0809F964(struct Object2 *obj) {
    struct Kirby *kirby = obj->kirby2;

    obj->x = kirby->base.x;
    obj->y = kirby->base.y;
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
