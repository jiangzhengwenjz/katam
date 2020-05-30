#include "code_080027E8.h"
#include "data.h"

// TODO: define file boundaries

u32 sub_080027E8(u32 arg0, u16 arg1, u8 arg2)
{
    switch (arg0) {
        case 0:
            return gUnk_02023358[arg1 / 8 + arg2 * 4] >> (arg1 & 7) & 1;

        case 1:
            return gUnk_02023368[arg1 / 8] >> (arg1 & 7) & 1;

        case 2:
            return gUnk_02028BF0[arg1 / 8] >> (arg1 & 7) & 1;

        default:
            return 0;
    }
}
