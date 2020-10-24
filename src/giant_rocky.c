#include "global.h"
#include "scarfy.h"
#include "functions.h"

void sub_080C046C(struct Object2 *);
void sub_080C0514(struct Object2 *);

struct Object2 *CreateGiantRocky(struct Object *r5, u8 r4)
{
    struct Task *task = TaskCreate(ObjectMain, sizeof(struct Object2), 0x1000, 0x10, ObjectDestroy);
    struct Object2 *r0, *r6 = TASK_GET_STRUCT_PTR(task, r0);
    
    InitObject(r6, r5, r4);
    r6->unk5C &= 0xFFFFFFF8;
    r6->unk5C |= 3;
    r6->unk64 = 0;
    r6->unk66 = 0;
    r6->unk5C |= 0x80;
    r6->flags |= 0x200000;
    if (r6->x > r6->unkAC->base.x)
        r6->flags |= 1;
    else
        r6->flags &= 0xFFFFFFFE;
    sub_0803E2B0(r6, -8, -2, 8, 10);
    sub_0803E308(r6, -8, -8, 8, 10);
    ObjectInitSprite(r6);
    r6->unk10.unk14 = 1728;
    gUnk_08351648[r6->type].unk10(r6);
    r6->unk9E = 0;
    r6->unk7C = 0;
    return r6;
}

void sub_080BFEA0(struct Object2 *r4)
{
    r4->flags |= 4;
    if ((r4->unk1 & 0xF) == 0xF)
    {
        if (r4->unkAC->base.x - r4->x >= 0)
        {
            if (r4->unkAC->base.x - r4->x < 0x5000)
                goto _080BFEE0;
        }
        else
        {
            if (r4->x - r4->unkAC->base.x < 0x5000)
            {
            _080BFEE0:
                if (r4->unkAC->base.y - r4->y >= 0)
                {
                    if (r4->unkAC->base.y - r4->y < 0x5000)
                        goto _080BFF00;
                }
                else
                {
                    if (r4->y - r4->unkAC->base.y < 0x5000)
                    {
                    _080BFF00:
                        if (r4->x > r4->unkAC->base.x)
                            r4->unk85 |= 1;
                        else
                            r4->unk85 &= 0xFE;
                        if (!(Rand16() & 3))
                        {
                            sub_080C046C(r4);
                            return;
                        }
                    }
                }
            }
        }
        r4->unkAC = sub_0803D368(r4);
    }
    if (!(r4->unk62 & 4))
        sub_080C0514(r4);
}
