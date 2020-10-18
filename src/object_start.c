#include "code_08002848.h"
#include "functions.h"
#include "malloc_ewram.h"
#include "object.h"
#include "task.h"

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
    if (obj->unk8C != 0) {
        EwramFree(obj->unk8C);
    }
    if (obj->unkB0 != 0) {
        if (obj->unkB0->unk2 != 0 || obj->unkB0->unk3 != 31) {
            if (obj->unkB0->unk2 != 0 || obj->unk56 != 0xff) {
                if (obj->type >= 0x38 && obj->type <= 0x52 && obj->unk80 <= 0) {
                    sb = 1;
                }
                switch (obj->type) {
                case 27 : case 50: case 51: case 54:
                    sb = 1;
                    goto label;
                case 16: case 38: case 49: case 52:
                case 94 ... 100:
                    if (obj->unk80 <= 0) {
                        sb = 1;
                    }
                case 17 ... 26: case 28 ... 37:
                case 39 ... 48: case 53:
                case 55 ... 83:
                default:
                label:
                    sub_08001678(obj->unkB0->unk2, obj->unkB0->unk3,gCurLevelInfo[obj->unk56].unk65E, sb);
                    break;
                }
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
