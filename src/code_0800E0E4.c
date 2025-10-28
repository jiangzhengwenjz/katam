#include "code_0800E0E4.h"
#include "random.h"
#include "functions.h"
#include "kirby.h"
#include "object.h"
#include "code_0806F780.h"

static void sub_0800E27C(void);
static void sub_0800EC78(struct Task *);

void sub_0800E0E4(struct Object2 *obj2, s16 a2, s16 a3)
{
    struct Task *t = TaskCreate(sub_0800E27C, sizeof(struct Unk_0800E0E4), 0x3500, TASK_USE_IWRAM, sub_0800EC78);
    struct Unk_0800E0E4 *var = TaskGetStructPtr(t);

    sub_0803E380(&var->objBase);
    var->objBase.unk0 = 2;
    var->objBase.x = obj2->base.x;
    var->objBase.y = obj2->base.y;
    var->objBase.parent = obj2;
    var->objBase.counter = 0;
    var->objBase.roomId = obj2->base.roomId;
    var->objBase.unk56 = obj2->base.unk56;
    if (Macro_0810B1F4(&var->objBase))
        var->objBase.flags |= 0x2000;
    var->objBase.x = a2 * 0x1000 + 0x800;
    var->objBase.y = a3 * 0x1000 + 0x800;
    var->objBase.flags |= 0x200;
    CpuFill16(0, var->unkA0, sizeof(struct Unk_0800E0E4_A0));
    CpuFill16(0, var->unkA0 + 1, sizeof(struct Unk_0800E0E4_A0));
    var->unkA0[0].unk0[0][0] = a2;
    var->unkA0[0].unk0[0][1] = a3;
    var->unkA0[0].unk40 = 1;
    var->unk128 = 1;
    var->unk12C = 0;
    var->objBase.flags |= 0x4000;
    sub_080708DC(&var->objBase, &var->objBase.sprite, 0x6012000, 0x28D, 0, 0xA);
    var->objBase.flags |= 0x4000;
    sub_080708DC(&var->objBase, &var->sprite, 0x6012000, 0x28D, 0, 0xA);
    if (obj2->base.unk68 & 0x10000000)
    {
        sub_08085328(obj2->base.parent);
        sub_0806FE64(2, &obj2->base);
    }
}

static void sub_0800E27C(void)
{
    struct Unk_0800E0E4 *tmp = TaskGetStructPtr(gCurTask), *var = tmp;
    struct Sprite *sp28, *sp38;

    if (var->objBase.flags & 0x1000)
        TaskDestroy(gCurTask);
    else
    {
        Macro_0809E55C(&var->objBase);
        if (!(var->objBase.flags & 0x1000))
        {
            if (var->objBase.roomId != gCurLevelInfo[var->objBase.unk56].currentRoom)
            {
                u8 i;

                for (i = 0; i < gUnk_0203AD44; ++i)
                    if (var->objBase.roomId == gCurLevelInfo[i].currentRoom)
                        break;
                var->objBase.unk56 = i;
            }
            if (!Macro_0810B1F4(&var->objBase))
            {
                sp28 = &var->objBase.sprite;
                sp38 = &var->sprite;
                sp28->unk1C = 0x10;
                sp38->unk1C = 0x10;
                if (var->unk12C == 5)
                {
                    bool32 r4 = FALSE;
                    struct Unk_0800E0E4_A0 *sl;
                    struct Unk_0800E0E4_A0 *sp08;
                    struct Sprite *sp0C;
                    u16 i;
                    u8 sp14 = gCurLevelInfo[var->objBase.unk56].roomWidth >> 4;
                    u8 sp18 = gCurLevelInfo[var->objBase.unk56].roomHeight >> 4;

                    if (var->unk128)
                    {
                        sl = &var->unkA0[1];
                        sp0C = sp38;
                        sp08 = &var->unkA0[0];
                    }
                    else
                    {
                        sl = &var->unkA0[0];
                        sp0C = sp28;
                        sp08 = &var->unkA0[1];
                    }
                    sl->unk40 = 0;
                    for (i = 0; i < sp08->unk40; ++i)
                    {
                        u8 r5, r6;

                        r5 = sp08->unk0[i][0] - 1;
                        r6 = sp08->unk0[i][1];
                        if (sp14 > r5 && gUnk_082D88B8[sub_080023E4(var->objBase.unk56, r5, r6)] & 0x40)
                        {
                            sub_08001408(var->objBase.unk56,
                                sub_080025AC(var->objBase.unk56, r5, r6),
                                0, 0);
                            PlaySfx(&var->objBase, SE_08D5B2D8);
                            sl->unk0[sl->unk40][0] = r5;
                            sl->unk0[sl->unk40][1] = r6;
                            ++sl->unk40;
                            r4 = TRUE;
                        }
                        r5 = sp08->unk0[i][0];
                        r6 = sp08->unk0[i][1] - 1;
                        if (sp18 > r6 && gUnk_082D88B8[sub_080023E4(var->objBase.unk56, r5, r6)] & 0x40)
                        {
                            sub_08001408(var->objBase.unk56,
                                sub_080025AC(var->objBase.unk56, r5, r6),
                                0, 0);
                            PlaySfx(&var->objBase, SE_08D5B2D8);
                            sl->unk0[sl->unk40][0] = r5;
                            sl->unk0[sl->unk40][1] = r6;
                            ++sl->unk40;
                            r4 = TRUE;
                        }
                        r5 = sp08->unk0[i][0] + 1;
                        r6 = sp08->unk0[i][1];
                        if (sp14 > r5 && gUnk_082D88B8[sub_080023E4(var->objBase.unk56, r5, r6)] & 0x40)
                        {
                            sub_08001408(var->objBase.unk56,
                                sub_080025AC(var->objBase.unk56, r5, r6),
                                0, 0);
                            PlaySfx(&var->objBase, SE_08D5B2D8);
                            sl->unk0[sl->unk40][0] = r5;
                            sl->unk0[sl->unk40][1] = r6;
                            ++sl->unk40;
                            r4 = TRUE;
                        }
                        r5 = sp08->unk0[i][0];
                        r6 = sp08->unk0[i][1] + 1;
                        if (sp18 > r6 && gUnk_082D88B8[sub_080023E4(var->objBase.unk56, r5, r6)] & 0x40)
                        {
                            sub_08001408(var->objBase.unk56,
                                sub_080025AC(var->objBase.unk56, r5, r6),
                                0, 0);
                            PlaySfx(&var->objBase, SE_08D5B2D8);
                            sl->unk0[sl->unk40][0] = r5;
                            sl->unk0[sl->unk40][1] = r6;
                            ++sl->unk40;
                            r4 = TRUE;
                        }
                    }
                    if (r4)
                    {
                        var->unk12C = 0;
                        var->unk128 = !var->unk128;
                        sp0C->unk1B = 0xFF;
                        PlaySfx(&var->objBase, SE_08D5B2D8);
                        ++sp08; --sp08; // fix stack
                    }
                    else
                        ++var->unk12C;
                }
                else
                    ++var->unk12C;
            }
            else
            {
                sp28 = &var->objBase.sprite;
                sp38 = &var->sprite;
                sp28->unk1C = 0;
                sp38->unk1C = 0;
            }
            {
                s16 sp00[] = { (gCurLevelInfo[gUnk_0203AD3C].cameraOffsetX >> 8) - 8, (gCurLevelInfo[gUnk_0203AD3C].cameraOffsetY >> 8) - 8 };
                struct Sprite *r6;
                struct Unk_0800E0E4_A0 *r8;
                struct Unk_0800E0E4_A0 *r9;
                u32 sl, sp4C;

                r8 = &var->unkA0[0];
                r6 = &var->objBase.sprite;
                Macro_080FC150(&var->objBase, r6);
                sl = var->objBase.flags & 2;
                if (!sl)
                {
                    u16 i;
                    u16 preload = r8->unk40;

                    for (i = 0; i < preload; ++i)
                    {
                        u8 *ptr = r8->unk0[i];

                        r6->x = 0x10 * ptr[0] - sp00[0];
                        r6->y = 0x10 * ptr[1] - sp00[1];
                        if (!(var->objBase.flags & 0x400)
                            && gKirbys[gUnk_0203AD3C].base.base.base.roomId == var->objBase.roomId)
                        {
                            r6->x += gUnk_0203AD18[0];
                            r6->y += gUnk_0203AD18[1];
                            Macro_0803DBC8(&var->objBase, r6);
                        }
                    }
                }
                r8 = &var->unkA0[1];
                r6 = &var->sprite;
                Macro_080FC150(&var->objBase, r6);
                sp4C = var->objBase.flags & 2;
                if (!sp4C)
                {
                    u16 i;
                    u16 preload;

                    r9 = r8;
                    preload = r9->unk40;
                    for (i = 0; i < preload; ++i)
                    {
                        u8 *ptr = r9->unk0[i];

                        r6->x = 0x10 * ptr[0] - sp00[0];
                        r6->y = 0x10 * ptr[1] - sp00[1];
                        if (!(var->objBase.flags & 0x400)
                            && gKirbys[gUnk_0203AD3C].base.base.base.roomId == var->objBase.roomId)
                        {
                            r6->x += gUnk_0203AD18[0];
                            r6->y += gUnk_0203AD18[1];
                            Macro_0803DBC8(&var->objBase, r6);
                        }
                    }
                }
                if (sl && sp4C && var->unk12C > 5)
                    var->objBase.flags |= 0x1000;
            }
        }
    }
}

static void sub_0800EC78(struct Task *t)
{
    sub_080700D8(TaskGetStructPtr(t));
    sub_0803DCCC(t);
}
