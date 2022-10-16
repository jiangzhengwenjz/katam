#include "flame_column.h"
#include "object.h"
#include "kirby.h"
#include "functions.h"

static void sub_0811FE74(struct FlameColumn *);

const struct Unk_02021590 gUnk_08357CD8[] = {
    { 0x306, 0, 0 },
    { 0x306, 0, 0 },
    { 0x306, 1, 0 },
    { 0x306, 2, 0 },
    { 0x306, 3, 0 },
    { 0x306, 3, 0 },
    { 0x306, 4, 0 },
    { 0x306, 4, 0 },
    { 0x306, 5, 0 },
    { 0x306, 6, 0 },
    { 0x306, 7, 0 },
    { 0x306, 7, 0 },
};

void *CreateFlameColumn(struct Object *template, u8 a2)
{
    struct Task *t = TaskCreate(ObjectMain, sizeof(struct FlameColumn), 0x1000, 0, ObjectDestroy);
    struct FlameColumn *tmp = TaskGetStructPtr(t), *fc = tmp;

    InitObject(&fc->obj2, template, a2);
    fc->obj2.base.flags |= 0x18940;
    fc->obj2.base.unk68 &= ~7;
    fc->obj2.base.unk68 |= 3;
    fc->obj2.base.unk5C |= 0x20;
    fc->obj2.base.unkC |= 1;
    fc->obj2.base.unk68 |= 0x100;
    if (fc->obj2.object->unk22 & 1)
        fc->obj2.base.flags |= 1;
    else if (fc->obj2.object->unk22 & 4)
        fc->obj2.unk83 = 7;
    else if (fc->obj2.object->unk22 & 8)
    {
        fc->obj2.unk83 = 7;
        fc->obj2.base.sprite.unk8 |= 0x800;
    }
    ObjectInitSprite(&fc->obj2);
    sub_0803E2B0(&fc->obj2.base, -4, -4, 4, 4);
    gUnk_08351648[fc->obj2.type].unk10(&fc->obj2);
    return fc;
}

void sub_0811FDF0(struct FlameColumn *fc)
{
    struct FlameColumn *fc2 = fc;

    fc2->unkB4 = 0;
    fc2->unkB6 = 0;
    fc2->unkB8 = 0;
    fc2->unkBE = 0;
    fc2->unkBF = 0;
    if (fc->obj2.object->unk22 & 1)
        fc->obj2.base.flags |= 1;
    else if (fc->obj2.object->unk22 & 4)
        fc2->unkBF = 6;
    else if (fc->obj2.object->unk22 & 8)
    {
        fc2->unkBF = 6;
        fc->obj2.base.sprite.unk8 |= 0x800;
    }
    fc2->unkBA = fc->obj2.base.x >> 0xC;
    fc2->unkBA = fc->obj2.base.y >> 0xC; // unkBC?
    fc->obj2.unk78 = sub_0811FE74;
}

static void sub_0811FE74(struct FlameColumn *fc)
{
    struct FlameColumn *fc2 = fc;

    if (fc2->unkB6 > fc->obj2.object->unk12)
    {
        if (fc2->unkB4 < 0)
        {
            if (fc2->unkB8 > fc->obj2.object->unk16)
            {
                fc2->unkB4 = 0;
                fc2->unkBE = 0;
                fc2->unkB6 = 0xFFF;
                fc2->unkB8 = 0;
            }
            ++fc2->unkB8;
        }
        else if (fc2->unkB4 >= fc->obj2.object->unk14)
        {
            if (fc2->unkB8 > fc->obj2.object->unk18)
            {
                fc2->unkB4 = fc->obj2.object->unk14 - 1;
                fc2->unkBE = 1;
                fc2->unkB6 = 0xFFF;
                fc2->unkB8 = 0;
            }
            ++fc2->unkB8;
        }
        else
        {
            if (fc2->unkBE)
                Macro_080A4728(&fc->obj2);
            if (!fc2->unkBE)
            {
                ++fc2->unkB4;
                fc->obj2.unk83 = fc2->unkB4;
                switch (fc->obj2.object->unk22)
                {
                case 1 ... 2:
                    fc->obj2.base.unk38 -= 0xE;
                    fc->obj2.base.unk3A += 7;
                    break;
                case 4:
                    fc->obj2.unk83 += 6;
                    fc->obj2.base.unk39 -= 0xE;
                    fc->obj2.base.unk3B += 7;
                    break;
                case 8:
                    fc->obj2.unk83 += 6;
                    fc->obj2.base.unk3B += 7;
                    break;
                }
            }
            else
            {
                --fc2->unkB4;
                fc->obj2.unk83 = fc2->unkB4 + 2;
                switch (fc->obj2.object->unk22)
                {
                case 1 ... 2:
                    fc->obj2.base.unk38 += 0xE;
                    fc->obj2.base.unk3A -= 7;
                    break;
                case 4:
                    fc->obj2.unk83 += 6;
                    fc->obj2.base.unk39 += 0xE;
                    fc->obj2.base.unk3B -= 7;
                    break;
                case 8:
                    fc->obj2.unk83 += 6;
                    fc->obj2.base.unk3B -= 7;
                    break;
                }
            }
            fc2->unkB6 = 0;
        }
    }
    ++fc2->unkB6;
    fc->obj2.base.flags |= 4;
    ++fc->obj2.base.counter;
}
