#include "code_0800A868.h"
#include "functions.h"

// TODO: define file boundaries

s32 sub_0800A868(u8 playerId, struct Object *obj)
{
    s32 *var0;
    s32 (**var1)(struct Object *, u8);
    s32 var2;

    var0 = sub_08002958(playerId);

    switch (obj->unk00) {
    case 1:
        var1 = gUnk_0835107C;
        var2 = var1[obj->type](obj, playerId);
        var0[2] = var2 + 0x56;
        break;
    case 2:
        var1 = gUnk_082D91D4;
        var2 = var1[obj->type](obj, playerId);
        var0[2] = var2 + 0x56;
        break;
    default:
        var2 = 0;
        break;
    }

    sub_08002918(playerId, var0);
	
    return var2;
}

void sub_0800A8BC(void)
{
    gUnk_03000004 = 0;
}

void sub_0800A8C8(u8 arg0, u8 arg1, u8 arg2)
{
    sub_08001408(arg0, sub_080025AC(arg0, arg1, arg2), NULL, NULL);
}

void sub_0800A8F8(u8 arg0, u8 arg1, u8 arg2)
{
    sub_08001408(arg0, sub_080025AC(arg0, arg1, arg2), NULL, NULL);
}

void nullsub_4(void)
{
	
}
