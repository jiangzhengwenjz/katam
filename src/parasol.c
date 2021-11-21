#include "object.h"
#include "parasol.h"
#include "functions.h"

void sub_080C29C0(struct Object2 *r5, u8 r8) {
    s16 x = r5->base.x >> 8;
    s16 y = r5->base.y >> 8;
    
    CreateObjTemplateAndObjWithSettingParent(r5, 1, 36, x, y, 
        0, 31, 0, 0, OBJ_PARASOL, r8, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);
}

// TODO: decompile parasol.s
