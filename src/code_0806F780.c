#include "code_0806F780.h"
#include "task.h"
#include "kirby.h"
#include "main.h"
#include "random.h"

bool16 sub_0806F780(struct ObjectBase *a1) {
    if (a1->flags & 0x1000) {
        TaskDestroy(gCurTask);
        return TRUE;
    }
    if (sub_0803D80C(a1)) {
        a1->flags |= 0x1000;
        return TRUE;
    }
    if (gKirbys[a1->unk56].base.base.base.roomId != a1->roomId
        && sub_0803E324(a1)) {
        a1->flags |= 0x1000;
        return TRUE;
    }
    if (gUnk_02026D50[gCurLevelInfo[a1->unk56].unk65E] & 8) {
        a1->flags |= 0x1000;
        return TRUE;
    }
    if (Macro_0810B1F4(a1) && !(a1->flags & 0x2000) && !(gMainFlags & 0x400)) {
        // TODO: semantically the same as SetPointerSomething
        if (!(a1->flags & 0x1000) && !(a1->flags & 0x200)) {
            u32 temp = gCurLevelInfo[a1->unk56].unk65E;

            if (a1->unk56 == 0xFF)
                temp = 0xFF;
            if (temp != 0xFF) {
                u8 idx;
                u32 temp2 = temp * 0x40 + (a1->unk0 - 1) * 0x20;

                ++a1; --a1;
                idx = gUnk_02022EB0[temp][a1->unk0 - 1]++ + temp2;
                gUnk_02022F50[idx] = a1;
                gUnk_02022F50[idx + 1] = NULL;
            }
        } 
        sub_0803D9A8(a1);
        return TRUE;
    }
    return FALSE;
}
