#include "global.h"
#include "functions.h"

// TODO: define file boundaries

s16 sub_0800A91C(s32 arg0, u16 arg1)
{
    s16 a = arg1 * 2;
    s16 b = arg1 * 2 + 1;
    s16 c;

    c = sub_0800AAE0(arg0, arg1 * 2);
    if (c == 0) return 0;

    c = sub_0800AAE0(arg0, arg1 * 2 + 1);
    if (c != 0) return c;

    c = sub_0800A9F4(arg0, arg1 * 2);
    if (c != 0) return 0;

    sub_0800A9F4(arg0, arg1 * 2 + 1);
    return 0;
}
