#include "global.h"
#include "code_080001CC.h"

void sub_080001CC(void) {
    u16 i, r6;
    REG_RCNT = 0;
    CpuFill16(0, &gMultiBootParam, sizeof(gMultiBootParam));
    CpuFill16(0, gUnk_03000490, sizeof(gUnk_03000490));
    CpuFill16(0, gUnk_03000478, sizeof(gUnk_03000478));
    gUnk_0300050C = 0xffffffff;
    gUnk_03000480 = 0;
    gUnk_03002E60 = 0x80000000;
    gUnk_03003674 = &gUnk_083B909C;
    sub_0800AC5C();
    r6 = 0;
    if (sub_0800A91C(0, 0) << 0x10 != 0) {
        sub_0800AC00(0);
        sub_0800ACD4(0, 0);
        r6 = 1;
    }
    i = 0;
    for (i = 0; i < 3; i++) {
        if (sub_0800A91C(1, i) << 0x10 != 0) {
            sub_0800AC00(1);
            sub_0800ACD4(1, i);
            r6 |= 1 << (i+1);
        }
    }
    sub_0800AC00(1);
    if ((r6 != 0) && (r6 != 0xf)) {
        sub_080002C8();
    }
    sub_08031BFC();
    sub_08033478();
    sub_08020490();
    CreateLogo();
}
