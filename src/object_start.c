#include "code_08002848.h"
#include "functions.h"
#include "malloc_ewram.h"
#include "object.h"
#include "task.h"

void ObjectMain(void) {
    u8 r1; 
    u16 rand;
    struct Object2* obj2;
    struct Object2* obj = TASK_GET_STRUCT_PTR(gCurTask, obj2);
    if (obj->flags & 0x1000) {
        if (obj->unk80 <= 0) {
            gUnk_02020EE0[obj->unk86].unkEC += gUnk_08351648[obj->type].unk2;
        }
        TaskDestroy(gCurTask);
    }
    else {
        if (obj->unkC & 0x2000) {
            sub_0809DA30(obj);
            obj->flags |= 0x1000;
        }
        else {
            if (sub_0803D6B4(obj) != 0) {
                if ((obj->type == OBJ_WADDLE_DEE_1 || obj->type == OBJ_BRONTO_BURT || obj->type == OBJ_BLIPPER
                     || obj->type == OBJ_GLUNK || obj->type == OBJ_SQUISHY || obj->type == OBJ_SCARFY
                     || obj->type == OBJ_GORDO || obj->type == OBJ_SNOOTER_1 || obj->type == OBJ_CHIP
                     || obj->type == OBJ_SOARAR || obj->type == OBJ_HALEY || obj->type == OBJ_ROLYPOLY
                     || obj->type == OBJ_CUPIE || obj->type == OBJ_BLOCKIN || obj->type == OBJ_SNOOTER_2
                     || obj->type == OBJ_LEAP || obj->type == OBJ_JACK || obj->type == OBJ_BIG_WADDLE_DEE
                     || obj->type == OBJ_WADDLE_DOO || obj->type == OBJ_FLAMER || obj->type == OBJ_HOT_HEAD
                     || obj->type == OBJ_LASER_BALL || obj->type == OBJ_PENGY || obj->type == OBJ_ROCKY
                     || obj->type == OBJ_SIR_KIBBLE || obj->type == OBJ_SPARKY || obj->type == OBJ_SWORD_KNIGHT
                     || obj->type == OBJ_UFO || obj->type == OBJ_TWISTER || obj->type == OBJ_WHEELIE
                     || obj->type == OBJ_NODDY || obj->type == OBJ_GOLEM_1 || obj->type == OBJ_GOLEM_2
                     || obj->type == OBJ_GOLEM_3 || obj->type == OBJ_FOLEY_1 || obj->type == OBJ_SHOOTY
                     || obj->type == OBJ_SCARFY_FALLING || obj->type == OBJ_BOXIN || obj->type == OBJ_COOKIN
                     || obj->type == OBJ_MINNY || obj->type == OBJ_BOMBER || obj->type == OBJ_HEAVY_KNIGHT
                     || obj->type == OBJ_GIANT_ROCKY || obj->type == OBJ_METAL_GUARDIAN || obj->type == OBJ_EMPTY_2C
                     || obj->type == OBJ_BATTY || obj->type == OBJ_FOLEY_2 || obj->type == OBJ_BANG_BANG
                     || obj->type == OBJ_DARK_MIND_BOMB || obj->type == OBJ_EMPTY_31 || obj->type == OBJ_DROPPY
                     || obj->type == OBJ_PRANK || obj->type == OBJ_MIRRA || obj->type == OBJ_SHOTZO_1
                     || obj->type == OBJ_SHADOW_KIRBY || obj->type == OBJ_WADDLE_DEE_2)
                    && obj->unk80 <= 0) {
                    rand = Rand16();
                    if (rand < 0x5555) {
                        r1 = 0;
                    }
                    else {
                        if (rand < 0xaaaa) {
                            r1 = 1;
                        }
                        else {
                            r1 = 2;
                        }
                    }
                    switch (r1) {
                    case 1:
                        PlaySfx(obj, 0x12c);
                        break;
                    case 2:
                        PlaySfx(obj, 0x12d);
                        break;
                    default:
                        PlaySfx(obj, 0x12e);
                        break;
                    }
                }
                else {
                    obj->unk80 = 1;
                }
                obj->flags |= 0x1000;
            }
            else {
                sub_0809A630(obj);
                if (obj->unk7C != NULL) {
                    obj->unk7C(obj);
                }
                if (gUnk_03000510.unk4 & ((1 << obj->unk56) | 0x10)) {
                    if (!(obj->flags & 0x2000)) {
                        if (!(obj->flags & 0x1200)) {
                            u32 r1;

                            if (obj->unk56 != 0xff) {
                                r1 = gCurLevelInfo[obj->unk56].unk65E;
                            }
                            else {
                                r1 = 0xff;
                            }

                            if (r1 != 0xff) {
                                u8 idx;
                                u32 r3 = r1 * 64 + (obj->unk0 - 1) * 32;

#ifndef NONMATCHING
                                asm("":::"memory");
#endif
                                idx = gUnk_02022EB0[r1][obj->unk0 - 1]++ + r3;
                                gUnk_02022F50[idx] = obj;
                                gUnk_02022F50[idx + 1] = NULL;
                            }
                        }
                        sub_0809D7C8(obj);
                        return;
                    }
                }
                if (!(obj->flags & 0x40)) {
                    sub_0809A990();
                }
                else {
                    if (obj->flags & 0x20) {
                        sub_0809A990();
                    }
                }
                obj->unk78(obj);
                if (!(obj->flags & 0x1200)) {
                    u32 r1;

                    if (obj->unk56 != 0xff) {
                        r1 = gCurLevelInfo[obj->unk56].unk65E;
                    }
                    else {
                        r1 = 0xff;
                    }

                    if (r1 != 0xff) {
                        u8 idx;
                        u32 r3 = r1 * 64 + (obj->unk0 - 1) * 32;

#ifndef NONMATCHING
                        asm("":::"memory");
#endif
                        idx = gUnk_02022EB0[r1][obj->unk0 - 1]++ + r3;
                        gUnk_02022F50[idx] = obj;
                        gUnk_02022F50[idx + 1] = NULL;
                    }
                }
                if (!(obj->flags & 0x04000800)) {
                    obj->xspeed += obj->unk98;
                    obj->yspeed += obj->unk9A;
                }
                if (!(obj->flags & 0x800)) {
                    obj->unk48 = obj->x;
                    obj->unk4C = obj->y;
                    obj->x += obj->xspeed;
                    obj->y -= obj->yspeed;
                }
                if (!(obj->flags & 0x100)) {
                    sub_0809D8C8(obj);
                }
                else {
                    obj->unk62 = 0;
                    if (obj->x <= gCurLevelInfo[obj->unk56].unk50 && obj->x >= gCurLevelInfo[obj->unk56].unk48) {
                        if (obj->y <= gCurLevelInfo[obj->unk56].unk54 && obj->y >= gCurLevelInfo[obj->unk56].unk4C) {
                            obj->unk57 = sub_080023E4(obj->unk56, obj->x >> 12, obj->y >> 12);
                            obj->unk58 = gUnk_082D88B8[obj->unk57];
                        }
                    }
                }
                if (!(obj->flags & 0x800)) {
                    if (obj->unk98 != 0) {
                        if (!(obj->flags & 0x4000000)) {
                            obj->xspeed -= obj->unk98;
                        }
                        if (obj->unk98 < 0) {
                            obj->unk98 += 0x10;
                            if (obj->unk98 > 0) {
                                obj->unk98 = 0;
                            }
                        }
                        else {
                            obj->unk98 -= 0x10;
                            if (obj->unk98 < 0) {
                                obj->unk98 = 0;
                            }
                        }
                    }

                    if (obj->unk9A != 0) {
                        if (!(obj->flags & 0x4000000)) {
                            obj->yspeed -= obj->unk9A;
                        }
                        if (obj->unk9A < 0) {
                            obj->unk9A += 0x10;
                            if (obj->unk9A > 0) {
                                obj->unk9A = 0;
                            }
                        }
                        else {
                            obj->unk9A -= 0x10;
                            if (obj->unk9A < 0) {
                                obj->unk9A = 0;
                            }
                        }
                    }
                }
                if (obj->unk58 & 2) {
                    if (!(obj->unkC & 8)) {
                        if (!(obj->unkC & 4)) {
                            sub_0808AE30(obj, 0, 0x296, 0);
                        }
                        obj->unkC |= 8;
                    }
                    if (!(obj->unkC & 1)) {
                        sub_0809D710(obj);
                    }
                }
                else {
                    if (obj->unkC & 8) {
                        if (!(obj->unkC & 4)) {
                            sub_0808AE30(obj, 0, 0x296, 1);
                        }
                        obj->unkC &= ~8;
                    }
                }
                if (obj->unk10.unk20 == 0) {
                    if (obj->unk10.unk16 == 0) {
                        obj->unk10.unk20 = -1;
                    }
                }
                sub_0809A7A4();
                obj->unkC &= ~0x20;
                obj->flags &= ~0x40000;
                obj->unk90 = 0;
                if (obj->type == OBJ_UNKNOWN_D0) {
                    sub_081111C4(obj);
                }
            }
        }
    }
}

void ObjectDestroy(struct Task* arg0) {
    u8 sb = 0;
    struct Object2 *obj2, *obj = TASK_GET_STRUCT_PTR(arg0, obj2);
    if (obj->unk84 == 0x1a) {
        if (obj->type != OBJ_MASTER_SWORD_STAND) {
            gUnk_0203AD34 = 0;
        }
    }
    if (gUnk_0203AD10 & 4) {
        if (obj->type == OBJ_MR_FLOSTY || obj->type == OBJ_BONKERS || obj->type == OBJ_PHAN_PHAN
            || obj->type == OBJ_BATAFIRE || obj->type == OBJ_BOX_BOXER || obj->type == OBJ_BOXY
            || obj->type == OBJ_MASTER_HAND || obj->type == OBJ_BOMBAR || obj->type == OBJ_EMPTY_40
            || obj->type == OBJ_EMPTY_41 || obj->type == OBJ_EMPTY_42 || obj->type == OBJ_EMPTY_43
            || obj->type == OBJ_EMPTY_44 || obj->type == OBJ_KRACKO || obj->type == OBJ_KING_GOLEM
            || obj->type == OBJ_CRAZY_HAND_1 || obj->type == OBJ_GOBBLER || obj->type == OBJ_WIZ
            || obj->type == OBJ_MOLEY || obj->type == OBJ_MEGA_TITAN || obj->type == OBJ_TITAN_HEAD
            || obj->type == OBJ_CRAZY_HAND_2 || obj->type == OBJ_DARK_META_KNIGHT || obj->type == OBJ_DARK_MIND_FORM_1
            || obj->type == OBJ_DARK_MIND_FORM_2 || obj->type == OBJ_DARK_MIND_FORM_3_TRIGGER || obj->type == OBJ_DARK_META_KNIGHT_W8) {
            if (obj->unk60 >= 0x3bb && obj->unk60 <= 0x3bd) {
                if (sub_080029BC(gCurLevelInfo[obj->unk56].unk65E) > 1) {
                    *sub_08002888(1, 9, 0xff) |= 0x80000000;
                    sub_0808859C(obj, 0x3b7, 0x5a);
                }
            }
        }
    }
    if (gUnk_08351648[obj->type].unk8 & 0x1000) {
        if (obj->unk10.unk1F != 0) {
            sub_0803E4D4(obj->unk10.unk1F);
        }
    }
    if (obj->unk10.unk0 != 0) {
        if (!(obj->flags & 0x4000)) {
            sub_08157190(obj->unk10.unk0);
        }
    }
    if (obj->unk8C != NULL) {
        EwramFree(obj->unk8C);
    }
    if (obj->object != 0) {
        if (obj->object->unk2 != 0 || obj->object->unk3 != 31) {
            if (obj->object->unk2 != 0 || obj->unk56 != 0xff) {
                if ((obj->type == OBJ_MR_FLOSTY || obj->type == OBJ_BONKERS || obj->type == OBJ_PHAN_PHAN
                     || obj->type == OBJ_BATAFIRE || obj->type == OBJ_BOX_BOXER || obj->type == OBJ_BOXY
                     || obj->type == OBJ_MASTER_HAND || obj->type == OBJ_BOMBAR || obj->type == OBJ_EMPTY_40
                     || obj->type == OBJ_EMPTY_41 || obj->type == OBJ_EMPTY_42 || obj->type == OBJ_EMPTY_43
                     || obj->type == OBJ_EMPTY_44 || obj->type == OBJ_KRACKO || obj->type == OBJ_KING_GOLEM
                     || obj->type == OBJ_CRAZY_HAND_1 || obj->type == OBJ_GOBBLER || obj->type == OBJ_WIZ
                     || obj->type == OBJ_MOLEY || obj->type == OBJ_MEGA_TITAN || obj->type == OBJ_TITAN_HEAD
                     || obj->type == OBJ_CRAZY_HAND_2 || obj->type == OBJ_DARK_META_KNIGHT || obj->type == OBJ_DARK_MIND_FORM_1
                     || obj->type == OBJ_DARK_MIND_FORM_2 || obj->type == OBJ_DARK_MIND_FORM_3_TRIGGER || obj->type == OBJ_DARK_META_KNIGHT_W8)
                    && obj->unk80 <= 0) {
                    sb = 1;
                }
                switch (obj->type) {
                case OBJ_UFO: case OBJ_DROPPY: case OBJ_PRANK: case OBJ_SHADOW_KIRBY:
                    sb = 1;
                    break;
                case OBJ_JACK: case OBJ_COOKIN: case OBJ_EMPTY_31: case OBJ_MIRRA:
                case OBJ_SMALL_FOOD: case OBJ_POP_SODA: case OBJ_MEAT: case OBJ_TOMATO:
                case OBJ_BATTERY: case OBJ_1UP: case OBJ_INVINCIBLE_CANDY:
                    if (obj->unk80 <= 0) {
                        sb = 1;
                    }
                    break;
                case OBJ_BIG_WADDLE_DEE: case OBJ_WADDLE_DOO: case OBJ_FLAMER: case OBJ_HOT_HEAD:
                case OBJ_LASER_BALL: case OBJ_PENGY: case OBJ_ROCKY: case OBJ_SIR_KIBBLE:
                case OBJ_SPARKY: case OBJ_SWORD_KNIGHT: case OBJ_TWISTER: case OBJ_WHEELIE:
                case OBJ_NODDY: case OBJ_GOLEM_1: case OBJ_GOLEM_2: case OBJ_GOLEM_3:
                case OBJ_FOLEY_1: case OBJ_SHOOTY: case OBJ_SCARFY_FALLING: case OBJ_BOXIN:
                case OBJ_MINNY: case OBJ_BOMBER: case OBJ_HEAVY_KNIGHT: case OBJ_GIANT_ROCKY:
                case OBJ_METAL_GUARDIAN: case OBJ_EMPTY_2C: case OBJ_BATTY: case OBJ_FOLEY_2:
                case OBJ_BANG_BANG: case OBJ_DARK_MIND_BOMB: case OBJ_SHOTZO_1: case OBJ_WADDLE_DEE_2:
                case OBJ_MR_FLOSTY: case OBJ_BONKERS: case OBJ_PHAN_PHAN: case OBJ_BATAFIRE:
                case OBJ_BOX_BOXER: case OBJ_BOXY: case OBJ_MASTER_HAND: case OBJ_BOMBAR:
                case OBJ_EMPTY_40: case OBJ_EMPTY_41: case OBJ_EMPTY_42: case OBJ_EMPTY_43:
                case OBJ_EMPTY_44: case OBJ_KRACKO: case OBJ_KING_GOLEM: case OBJ_CRAZY_HAND_1:
                case OBJ_GOBBLER: case OBJ_WIZ: case OBJ_MOLEY: case OBJ_MEGA_TITAN:
                case OBJ_TITAN_HEAD: case OBJ_CRAZY_HAND_2: case OBJ_DARK_META_KNIGHT: case OBJ_DARK_MIND_FORM_1:
                case OBJ_DARK_MIND_FORM_2: case OBJ_DARK_MIND_FORM_3_TRIGGER: case OBJ_DARK_META_KNIGHT_W8: case OBJ_EMPTY_53:
                default:
                    break;
                }
                sub_08001678(obj->object->unk2, obj->object->unk3, gCurLevelInfo[obj->unk56].unk65E, sb);
            }
            else return;
        }
        else {
            struct Object *r1 = gUnk_020229E0;
            u8 r3;
            for (r3 = 0; r3 < 0x20; r3++, r1++) {
                if (r1 == obj->object) {
                    gUnk_020229D4 &= ~(1 << r3);
                    break;
                }
            }
        }
    }
    if (obj->unk56 != 0xff) {
        if (obj->type == OBJ_WADDLE_DEE_1 || obj->type == OBJ_BRONTO_BURT || obj->type == OBJ_BLIPPER
            || obj->type == OBJ_GLUNK || obj->type == OBJ_SQUISHY || obj->type == OBJ_SCARFY
            || obj->type == OBJ_GORDO || obj->type == OBJ_SNOOTER_1 || obj->type == OBJ_CHIP
            || obj->type == OBJ_SOARAR || obj->type == OBJ_HALEY || obj->type == OBJ_ROLYPOLY
            || obj->type == OBJ_CUPIE || obj->type == OBJ_BLOCKIN || obj->type == OBJ_SNOOTER_2
            || obj->type == OBJ_LEAP || obj->type == OBJ_JACK || obj->type == OBJ_BIG_WADDLE_DEE
            || obj->type == OBJ_WADDLE_DOO || obj->type == OBJ_FLAMER || obj->type == OBJ_HOT_HEAD
            || obj->type == OBJ_LASER_BALL || obj->type == OBJ_PENGY || obj->type == OBJ_ROCKY
            || obj->type == OBJ_SIR_KIBBLE || obj->type == OBJ_SPARKY || obj->type == OBJ_SWORD_KNIGHT
            || obj->type == OBJ_UFO || obj->type == OBJ_TWISTER || obj->type == OBJ_WHEELIE
            || obj->type == OBJ_NODDY || obj->type == OBJ_GOLEM_1 || obj->type == OBJ_GOLEM_2
            || obj->type == OBJ_GOLEM_3 || obj->type == OBJ_FOLEY_1 || obj->type == OBJ_SHOOTY
            || obj->type == OBJ_SCARFY_FALLING || obj->type == OBJ_BOXIN || obj->type == OBJ_COOKIN
            || obj->type == OBJ_MINNY || obj->type == OBJ_BOMBER || obj->type == OBJ_HEAVY_KNIGHT
            || obj->type == OBJ_GIANT_ROCKY || obj->type == OBJ_METAL_GUARDIAN || obj->type == OBJ_EMPTY_2C
            || obj->type == OBJ_BATTY || obj->type == OBJ_FOLEY_2 || obj->type == OBJ_BANG_BANG
            || obj->type == OBJ_DARK_MIND_BOMB || obj->type == OBJ_EMPTY_31 || obj->type == OBJ_DROPPY
            || obj->type == OBJ_PRANK || obj->type == OBJ_MIRRA || obj->type == OBJ_SHOTZO_1
            || obj->type == OBJ_SHADOW_KIRBY || obj->type == OBJ_WADDLE_DEE_2
            || obj->type == OBJ_MR_FLOSTY || obj->type == OBJ_BONKERS || obj->type == OBJ_PHAN_PHAN
            || obj->type == OBJ_BATAFIRE || obj->type == OBJ_BOX_BOXER || obj->type == OBJ_BOXY
            || obj->type == OBJ_MASTER_HAND || obj->type == OBJ_BOMBAR || obj->type == OBJ_EMPTY_40
            || obj->type == OBJ_EMPTY_41 || obj->type == OBJ_EMPTY_42 || obj->type == OBJ_EMPTY_43
            || obj->type == OBJ_EMPTY_44 || obj->type == OBJ_KRACKO || obj->type == OBJ_KING_GOLEM
            || obj->type == OBJ_CRAZY_HAND_1 || obj->type == OBJ_GOBBLER || obj->type == OBJ_WIZ
            || obj->type == OBJ_MOLEY || obj->type == OBJ_MEGA_TITAN || obj->type == OBJ_TITAN_HEAD
            || obj->type == OBJ_CRAZY_HAND_2 || obj->type == OBJ_DARK_META_KNIGHT || obj->type == OBJ_DARK_MIND_FORM_1
            || obj->type == OBJ_DARK_MIND_FORM_2 || obj->type == OBJ_DARK_MIND_FORM_3_TRIGGER || obj->type == OBJ_DARK_META_KNIGHT_W8
            || obj->type == OBJ_EMPTY_53 || obj->type == OBJ_EMPTY_54 || obj->type == OBJ_EMPTY_55
            || obj->type == OBJ_EMPTY_56 || obj->type == OBJ_EMPTY_57 || obj->type == OBJ_EMPTY_58
            || obj->type == OBJ_EMPTY_59 || obj->type == OBJ_EMPTY_5A || obj->type == OBJ_EMPTY_5B
            || obj->type == OBJ_EMPTY_5C || obj->type == OBJ_EMPTY_5D || obj->type == OBJ_SMALL_FOOD
            || obj->type == OBJ_POP_SODA || obj->type == OBJ_MEAT || obj->type == OBJ_TOMATO
            || obj->type == OBJ_BATTERY || obj->type == OBJ_1UP || obj->type == OBJ_INVINCIBLE_CANDY) {
            if (obj->object->unk22 & 1) {
                if (obj->unk80 <= 0) {
                    sub_080029CC(gCurLevelInfo[obj->unk56].unk65E, 1);
                }
            }
        }
        sub_080028CC(obj->unk56, sub_08002984(obj->unk56, &obj->unk56));
    }
}

void sub_0809A580(struct Task *task) {
    u8 i;
    struct Object *p;
    struct Object2 *objTemp, *obj = TASK_GET_STRUCT_PTR(task, objTemp);

    p = gUnk_020229E0 + 0;
    for (i = 0; i < 0x20; ++i, ++p) {
        if (p == obj->object) {
            gUnk_020229D4 &= ~(1 << i);
            break;
        }
    }
    if (obj->unk10.unk0 && !(obj->flags & 0x4000))
    sub_08157190(obj->unk10.unk0);
    if (obj->unk8C)
        EwramFree(obj->unk8C);
    if (obj->unk56 != 0xFF)
        sub_080028CC(obj->unk56, sub_08002984(obj->unk56, &obj->unk56));
}

void sub_0809A630(struct Object2 *obj) {
    struct Sprite sprite;
    struct Sprite *r6;
    u16 v3;
    s32 v4;

    if (!gUnk_08351648[obj->type].unkC) return;
    r6 = &obj->unk10;
    if (!(obj->unkC & 0x200)) {
        if (gUnk_02020EE0[gUnk_0203AD3C].base.unk60 == obj->unk60) {
            if (!obj->unk10.unk0) {
                if (obj->flags & 0x4000) {
                    r6->unk0 = sub_0803DD58(obj->type);
                    r6->unk8 &= ~0x80000;
                    CpuCopy32(r6, &sprite, sizeof(struct Sprite));
                    sub_0815521C(&sprite, obj->unk1);
                } else {
                    obj->unk10.unk0 = sub_081570B0(gUnk_08351648[obj->type].unkC);
                    r6->unk8 &= ~0x80000;
                    CpuCopy32(r6, &sprite, sizeof(struct Sprite));
                    sub_0815521C(&sprite, obj->unk1);
                }
            }
            if (!r6->unk1F) {
                v3 = gUnk_08351648[obj->type].unk8;
                if (obj->unkC & 0x10)
                    v3 = gUnk_08351648[50].unk8;
                v4 = sub_0803DF24(v3);
                if (v4 == 0xFF) {
                    if (gUnk_02020EE0[gUnk_0203AD3C].base.unk60 == obj->unk60) {
                        sub_0803DFAC(v3, obj->object->unkF);
                        v4 = sub_0803DF24(v3);
                    } else {
                        v4 = 0;
                    }
                }
                r6->unk1F = v4;
            }
        } else {
            if (obj->unk10.unk0) {
                if (!(obj->flags & 0x4000))
                    sub_08157190(obj->unk10.unk0);
                obj->unk10.unk0 = 0;
            }
            r6->unk8 |= 0x80000;
            r6->unk1F = 0;
        }
    }
}

void sub_0809A7A4(void) {
    s32 r2;
    struct Object2 *objTemp, *r7 = TASK_GET_STRUCT_PTR(gCurTask, objTemp);
    struct Sprite *r6;

    if (gUnk_08351648[r7->type].unkC) {
        r6 = &r7->unk10;
        if (r7->flags & 1)
            r6->unk8 &= ~0x400;
        else
            r6->unk8 |= 0x400;
        if (!(r7->flags & 8)) {
            r6->unkC = gUnk_08351648[r7->type].unk14[r7->unk83].unk0;
            r6->unk1A = gUnk_08351648[r7->type].unk14[r7->unk83].unk2;
            if (r6->unk1B != r6->unk1A || r6->unk18 != r6->unkC) {
                r7->unk1 = 0;
                r7->unk2 = 0;
                r7->flags &= ~4;
            }
            r2 = sub_08155128(r6);
            if (!r2) {
                r7->flags |= 2;
                if (r7->flags & 4) {
                    r6->unk1B = 0xFF;
                    r7->unk1 = r2;
                    r7->unk2 = r2;
                    r7->flags &= ~4;
                    sub_08155128(r6);
                }
            } else {
                r7->flags &= ~2;
                r7->unk2 += r6->unk1C;
                r7->unk1 = r7->unk2 >> 4;
            }
        }
        if (!(r7->flags & 0x400) && gUnk_02020EE0[gUnk_0203AD3C].base.unk60 == r7->unk60)
        {
            r6->unk10 = (r7->x >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unkC >> 8) + r7->unk54;
            r6->unk12 = (r7->y >> 8) - (gCurLevelInfo[gUnk_0203AD3C].unk10 >> 8) + r7->unk55;
            r6->unk10 += gUnk_0203AD18[0];
            r6->unk12 += gUnk_0203AD18[1];
            r7->unk55 = 0;
            r7->unk54 = 0;
            if (r7->flags & 0x4000)
                sub_081564D8(r6);
            else
                sub_0815604C(r6);
        }
    }
}

void sub_0809A990(void) {
    struct Object2 *obj;

    TASK_GET_STRUCT_PTR(gCurTask, obj);
    if (!(obj->unk62 & 4) && !(obj->flags & 0x800)) {
        obj->flags |= 0x20;
        if (obj->unkC & 8) {
            obj->yspeed = -0x40;
        } else {
            obj->yspeed -= 0x15;
            if (obj->yspeed < -0x300)
                obj->yspeed = -0x300;
        }
    }
}

void sub_0809AA10(struct Object2 *r10, struct Kirby *sp00) {
    s8 r7;
    s8 sp04;
    s16 sp08 = 304;

    r7 = sp00->base.unk63;
    sp04 = 0;
    if (sp00->base.unk68 & 0x100) {
        if ((r7 += r10->unk91) <= 0)
            r7 = 1;
        if (r10->type != OBJ_DARK_MIND_FORM_2)
            sub_0809E424(r10);
        if (sp04 < r7)
            sp04 = r7;
    }
    if (sp00->base.unk68 & 0x200) {
        if ((r7 += r10->unk92) <= 0)
            r7 = 1;
        sub_0809EB90(r10);
        if (sp04 < r7) {
            sp04 = r7;
            sp08 = 305;
        }
    }
    if (sp00->base.unk68 & 0x400) {
        if ((r7 += r10->unk93) <= 0)
            r7 = 1;
        sub_0809E79C(r10);
        if (sp04 < r7) {
            sp04 = r7;
            sp08 = 304;
        }
    }
    if (sp00->base.unk68 & 0x5000) {
        if (sp00->base.unk68 & 0x1000)
            r7 += r10->unk94;
        else
            r7 += r10->unk96;
        if (r7 <= 0)
            r7 = 1;
        if (r10->type != OBJ_DARK_MIND_FORM_2) {
            struct Unk_0808AE30 *r0 = sub_0808AE30(r10, 0, 0x2A3, 0);

            r0->unk20 = 0x240;
            Rand32();
            r0->unk34 += 0x800;
            r0->unk34 -= ((gRngVal >> 16) & 0xFFF);
            Rand32();
            r0->unk38 += 0x800;
            r0->unk38 -= ((gRngVal >> 16) & 0xFFF);
        }
        if (sp04 < r7) {
            sp04 = r7;
            if (sp00->base.unk68 & 0x4000000)
                sp08 = 186;
            else {
                switch (Rand16() & 3) {
                default:
                case 0:
                    sp08 = 308;
                    break;
                case 1:
                    sp08 = 309;
                    break;
                case 2:
                    sp08 = 351;
                    break;
                case 3:
                    sp08 = 352;
                    break;
                }
            }
        }
    }
    if (sp00->base.unk68 & 0x2000) {
        if ((r7 += r10->unk95) <= 0)
            r7 = 1;
        if (r10->type != OBJ_DARK_MIND_FORM_2) {
            struct Unk_0808AE30 *r0 = sub_0808AE30(r10, 0, 0x2A3, 2);

            r0->unk20 = 0x240;
            Rand32();
            r0->unk34 += 0x800;
            r0->unk34 -= ((gRngVal >> 16) & 0xFFF);
            Rand32();
            r0->unk38 += 0x800;
            r0->unk38 -= ((gRngVal >> 16) & 0xFFF);
        }
        if (sp04 < r7) {
            sp04 = r7;
            if (sp00->base.unk68 & 0x2000000)
                sp08 = 307;
            else
                sp08 = 306;
        }
    }
    if (sp00->base.unk68 & 0x40) {
        if ((r7 += r10->unk94) <= 0)
            r7 = 1;
        if (sp00->base.unk68 & 0x40000000) {
            if (r10->type != OBJ_DARK_MIND_FORM_2) {
                struct Unk_0808AE30 *r0 = sub_0808AE30(r10, 0, 0x2A3, 0);

                r0->unk20 = 0x240;
                Rand32();
                r0->unk34 += 0x800;
                r0->unk34 -= ((gRngVal >> 16) & 0xFFF);
                Rand32();
                r0->unk38 += 0x800;
                r0->unk38 -= ((gRngVal >> 16) & 0xFFF);
            }
            if (sp04 < r7) {
                sp04 = r7;
                switch (Rand16() & 3) {
                default:
                case 0:
                    sp08 = 308;
                    break;
                case 1:
                    sp08 = 309;
                    break;
                case 2:
                    sp08 = 351;
                    break;
                case 3:
                    sp08 = 352;
                    break;
                }
            }
        } else {
            sub_0808925C(r10);
            if (sp04 < r7) {
                sp04 = r7;
                sp08 = 304;
            }
        }
    }
    if (sp00->base.unk68 & 0x10000) {
        if ((r7 += r10->unk97) <= 0)
            r7 = 1;
    }
    if (sp00->base.unk68 & 0x8000000) {
        sub_080860A8(r10, gUnk_08352DF0);
        sp08 = 146;
    }
    if (r10->type == OBJ_MR_FLOSTY || r10->type == OBJ_BONKERS || r10->type == OBJ_PHAN_PHAN
        || r10->type == OBJ_BATAFIRE || r10->type == OBJ_BOX_BOXER || r10->type == OBJ_BOXY
        || r10->type == OBJ_MASTER_HAND || r10->type == OBJ_BOMBAR || r10->type == OBJ_EMPTY_40
        || r10->type == OBJ_EMPTY_41 || r10->type == OBJ_EMPTY_42 || r10->type == OBJ_EMPTY_43
        || r10->type == OBJ_EMPTY_44 || r10->type == OBJ_KRACKO || r10->type == OBJ_KING_GOLEM
        || r10->type == OBJ_CRAZY_HAND_1 || r10->type == OBJ_GOBBLER || r10->type == OBJ_WIZ
        || r10->type == OBJ_MOLEY || r10->type == OBJ_MEGA_TITAN || r10->type == OBJ_TITAN_HEAD
        || r10->type == OBJ_CRAZY_HAND_2 || r10->type == OBJ_DARK_META_KNIGHT || r10->type == OBJ_DARK_MIND_FORM_1
        || r10->type == OBJ_DARK_MIND_FORM_2 || r10->type == OBJ_DARK_MIND_FORM_3_TRIGGER || r10->type == OBJ_DARK_META_KNIGHT_W8)
        sp08 = 361;
    if (r10->type == OBJ_MEGA_TITAN
        || (r10->type == OBJ_TITAN_ARM_1 || r10->type == OBJ_TITAN_ARM_2
            || r10->type == OBJ_TITAN_ARM_3 || r10->type == OBJ_TITAN_ARM_4)) {
        r10->xspeed = 0;
        if (!(sp00->base.unk68 & 0x400) || r10->type != 75) {
            sp04 = 0;
            r7 = 0;
            if (!(sp00->base.unk68 & 0x400))
                sp08 = 416;
        } else {
            r10->unk83 = gUnk_08351648[r10->type].unk0;
            sp08 = 399;
        }
    }
    if (sp04 < r7)
        sp04 = r7;
    PlaySfx(&sp00->base, sp08);
    r10->unk80 -= sp04;
    if (sp00->base.unk68 & 0x10000)
        sub_080884C4(r10);
}
