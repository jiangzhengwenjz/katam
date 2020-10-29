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
                if (obj->type <= 0x37 && obj->unk80 <= 0) {
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
                if (obj->type == 0xd0) {
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
        if (obj->type != 0x98) {
            gUnk_0203AD34 = 0;
        }
    }
    if (gUnk_0203AD10 & 4) {
        if (obj->type >= 0x38 && obj->type <= 0x52) {
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
    if (obj->unkB0 != 0) {
        if (obj->unkB0->unk2 != 0 || obj->unkB0->unk3 != 31) {
            if (obj->unkB0->unk2 != 0 || obj->unk56 != 0xff) {
                if (obj->type >= 0x38 && obj->type <= 0x52 && obj->unk80 <= 0) {
                    sb = 1;
                }
                switch (obj->type) {
                case 27: case 50: case 51: case 54:
                    sb = 1;
                    break;
                case 16: case 38: case 49: case 52:
                case 94 ... 100:
                    if (obj->unk80 <= 0) {
                        sb = 1;
                    }
                    break;
                case 17 ... 26: case 28 ... 37:
                case 39 ... 48: case 53:
                case 55 ... 83:
                default:
                    break;
                }
                sub_08001678(obj->unkB0->unk2, obj->unkB0->unk3, gCurLevelInfo[obj->unk56].unk65E, sb);
            }
            else return;
        }
        else {
            struct Object *r1 = gUnk_020229E0;
            u8 r3;
            for (r3 = 0; r3 < 0x20; r3++, r1++) {
                if (r1 == obj->unkB0) {
                    gUnk_020229D4 &= ~(1 << r3);
                    break;
                }
            }
        }
    }
    if (obj->unk56 != 0xff) {
        if (obj->type < 0x65) {
            if (obj->unkB0->unk22 & 1) {
                if (obj->unk80 <= 0) {
                    sub_080029CC(gCurLevelInfo[obj->unk56].unk65E, 1);
                }
            }
        }
        sub_080028CC(obj->unk56, sub_08002984(obj->unk56, &obj->unk56));
    }
}
