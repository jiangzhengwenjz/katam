#include "global.h"
#include "data.h"
#include "main.h"
#include "palette.h"
#include "code_0814F274.h"

bool32 sub_0814F274(struct Object11 *a1) {
    const struct Object11_8 *unk8 = a1->unk8;
    bool32 ret = TRUE;

    a1->unk6 &= ~0x22;
    if (a1->unk2 <= 0) {
        u32 v4 = unk8->unk0 & 0xFF;
        const u16 *v6;
        const struct Object11_8_4 *const *base;
        u8 offset, count;

        if (a1->unk4 >= v4 && a1->unk6 & 0x40)
            a1->unk4 = 0;
        base = unk8->unk4;
        v6 = &base[a1->unk4]->unk0;
        if (a1->unk4 == v4) {
            a1->unk6 |= 0x20;
            if (!(a1->unk6 & 0x40))
                return FALSE;
            ret = FALSE;
        }
        ++a1->unk4;
        a1->unk2 = *v6 << 8;
        offset = unk8->unk0 >> 8;
        count = unk8->unk0 >> 0x10;
        ++v6;
        if (a1->unk6 & 1) {
            if (gMainFlags & MAIN_FLAG_OBJ_PALETTE_TRANSFORMATION_ENABLE)
                LoadObjPaletteWithTransformation(v6, offset, count);
            else {
                DmaCopy16(3, v6, &gObjPalette[offset], count * sizeof(u16));
                gMainFlags |= MAIN_FLAG_OBJ_PALETTE_SYNC_ENABLE;
            }
        } else {
            if (gMainFlags & MAIN_FLAG_BG_PALETTE_TRANSFORMATION_ENABLE)
                LoadBgPaletteWithTransformation(v6, offset, count);
            else {
                DmaCopy16(3, v6, &gBgPalette[offset], count * sizeof(u16));
                gMainFlags |= MAIN_FLAG_BG_PALETTE_SYNC_ENABLE;
            }
        }
        a1->unk6 |= 2;
    }
    if (!(a1->unk6 & 0x10))
        a1->unk2 -= a1->unk0;
    return ret;
}

void sub_0814F3C4(struct Object11 *a1, const struct Object11_8 *a2) {
    a1->unk0 = 0x100;
    a1->unk2 = 0;
    a1->unk4 = 0;
    a1->unk6 = 0;
    a1->unk8 = a2;
}
