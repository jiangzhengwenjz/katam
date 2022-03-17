#include "code_080023A4.h"
#include "code_08002848.h"
#include "code_0800A868.h"
#include "data.h"
#include "functions.h"

// TODO: define file boundaries

void *CreateObject(u8 playerId, struct Object *obj)
{
    struct Unk_02023720 *var0;
    struct Object2 *var1;

    var0 = sub_08002958(playerId);

    switch (obj->spawnTable) {
    case 1:
        var1 = gSpawnFuncTable1[obj->type](obj, playerId);
        var0->unk08 = &var1->base.unk56;
        break;
    case 2:
        var1 = gSpawnFuncTable2[obj->type](obj, playerId);
        var0->unk08 = &var1->base.unk56;
        break;
    default:
        var1 = NULL;
        break;
    }

    sub_08002918(playerId, var0);
    return var1;
}

void sub_0800A8BC(void)
{
    *(u32 *) (IWRAM_START + 4) = 0;
}

void sub_0800A8C8(u8 arg0, u8 arg1, u8 arg2)
{
    sub_08001408(arg0, sub_080025AC(arg0, arg1, arg2), NULL, NULL);
}

void sub_0800A8F8(u8 arg0, u8 arg1, u8 arg2)
{
    sub_08001408(arg0, sub_080025AC(arg0, arg1, arg2), NULL, NULL);
}
