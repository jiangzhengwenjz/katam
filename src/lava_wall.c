#include "lava_wall.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"

void sub_0811C5D8(struct Object2* arg0);
void sub_0811C768(struct Task *);

void *CreateLavaWall(struct Object *template, u8 a2)
{
    struct Sprite *sprite;
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0, sub_0811C768);
    struct Object2 *tmp = TaskGetStructPtr(t), *lavaWall = tmp;
    s8 array[4];
    
    InitObject(lavaWall, template, a2);

    lavaWall->base.flags |= 0x02008540;

    if (lavaWall->object->unk22 & 2) {
        lavaWall->base.flags |= 0x10000;
        lavaWall->base.unk68 &= ~7;
        lavaWall->base.unk68 |= 3;
    }
    else {
        lavaWall->base.flags |= 0x200;
        lavaWall->base.unk68 &= ~7;
    }

    lavaWall->base.unk5C |= 0x20;
    lavaWall->base.unkC |= 0x1;

    if (lavaWall->object->unk22 & 2) {
        lavaWall->base.unk68 |= 0x100;
    }
    array[0] = lavaWall->object->unk1A;
    array[1] = lavaWall->object->unk1C;
    array[2] = array[0] + lavaWall->object->unk1E;
    array[3] = array[1] + lavaWall->object->unk20;
    if (lavaWall->object->unk22 & 2) {
        sub_0803E2B0(&lavaWall->base, array[0], array[1], array[2], array[3]);
        sub_0803E308(&lavaWall->base, array[0] + 4, array[1], array[2] - 4, array[3]);
    }
    else
        sub_0803E308(&lavaWall->base, array[0], array[1], array[2], array[3]);
    if (lavaWall->object->unk22 & 1)
        *sub_08002888(0, lavaWall->object->unk4, gCurLevelInfo[lavaWall->base.unk56].unk65E) = 1;
    gUnk_08351648[lavaWall->type].unk10(lavaWall);

    return lavaWall;
}

void sub_0811C5D8(struct Object2* arg0) {
    if (arg0->object->unk22 & 1) {
        if (*sub_08002888(0, arg0->object->unk4, gCurLevelInfo[arg0->base.unk56].unk65E) == 0) {
          arg0->base.flags |= 0x1000;
        }
        else {
            if (arg0->object->unk22 & 2) {
                Macro_080A4728(arg0);
            }
            Macro_080A4728(arg0);
        }
    }
    else {
        if (arg0->object->unk22 & 2) {
            Macro_080A4728(arg0);
        }
        Macro_080A4728(arg0);
    }
    ++arg0->base.counter;
}

void sub_0811C758(struct Object2* arg0) {
    arg0->base.counter = 0;
    arg0->unk78 = sub_0811C5D8;
}

void sub_0811C768(struct Task* arg0) {
    struct Object2 *obj;
    u8 unk3, unk56, r4;
    u32 unk2;
    obj = TaskGetStructPtr(arg0);
    unk56 = obj->base.unk56;
    unk2 = obj->object->unk2;
    unk3 = obj->object->unk3;
    r4 = gCurLevelInfo[unk56].unk65E;
    ObjectDestroy(arg0);
    if (unk2 != 0 || unk56 != 0xff) {
        sub_08001678(unk2, unk3, r4, 1);
    }
}
