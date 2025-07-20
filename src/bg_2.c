#include "global.h"
#include "data.h"
#include "functions.h"
#include "palette.h"

void sub_08153CB8(struct Background *ip) {
    struct RoomBackgroundTiles *r3 = gUnk_03002E60[ip->unk1C].x;
    u32 r4, r5;

    if (r3->unk6 && r3->unk7 <= ++ip->animDelayCounter) {
        ip->animDelayCounter = 0;
        if (r3->unk6 <= ++ip->animFrameCounter)
            ip->animFrameCounter = 0;
        r5 = r3->unk4;
        if (!(ip->unk2E & 0x200)) {
            if (!ip->animFrameCounter)
                r4 = (uintptr_t)r3->tileset;
            else
                r4 = (uintptr_t)r3->tileset + r3->tilesetSize + (ip->animFrameCounter-1) * r5;
        } else {
            r4 = ip->unk4 + r3->tilesetSize + ip->animFrameCounter * r5;
        }
        gUnk_03002EC0[gUnk_030039A4].unk0 = r4;
        gUnk_03002EC0[gUnk_030039A4].unk4 = ip->unk4;
        gUnk_03002EC0[gUnk_030039A4].unk8 = r5;
        gUnk_030039A4 = (gUnk_030039A4 + 1) & 0x3F;
    }
}
