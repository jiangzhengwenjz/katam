#include "global.h"
#include "code_08019CB8.h"

// not referenced
void sub_08019CB8(void) {
    CpuFill16(0, &gUnk_02038960, 4);
}

u16 sub_08019CDC(void) {
    u16 ret = 0;
    u16 i, j;

    for (i = 0; i < 0x10; ++i) {
        for (j = 0; j < 8; ++j) {
            if ((gUnk_02038960.unk0[i] >> j) & 1)
                ++ret;
        }
    }
    return ret;
}

void sub_08019D1C(u8 x) {
    gUnk_02038960.unk0[x >> 3] |=  1 << (x & 7);
}

bool32 sub_08019D3C(u8 x) {
    return (gUnk_02038960.unk0[x >> 3] >> (x & 7)) & 1;
}

u16 sub_08019D5C(void) {
    u16 ret = 0, i;

    for (i = 0; i < 8; ++i) {
        if (gUnk_02038960.unk10[0] & (1 << i))
            ++ret;
    }
    return ret;
}

void sub_08019D90(u8 x) {
    gUnk_02038960.unk10[0] |= 1 << x;
}

bool32 sub_08019DA8(u8 x) {
    return gUnk_02038960.unk10[0] & (1 << x) ? TRUE : FALSE;
}

u16 sub_08019DC8(void) {
    u16 ret = 0, i;

    for (i = 0; i < 14; ++i) {
        if (gUnk_02038960.unk10[1] & (1 << i))
            ++ret;
    }
    return ret;
}

void sub_08019DFC(u8 x) {
    gUnk_02038960.unk10[1] |= 1 << x;
}

bool32 sub_08019E14(u8 x) {
    return gUnk_02038960.unk10[1] & (1 << x) ? TRUE : FALSE;
}

u16 sub_08019E34(void) {
    u16 ret = 0, i;

    for (i = 0; i < 11; ++i) {
        if (gUnk_02038960.unk10[2] & (1 << i))
            ++ret;
    }
    return ret;
}

void sub_08019E68(u8 x) {
    gUnk_02038960.unk10[2] |= 1 << x;
}

bool32 sub_08019E80(u8 x) {
    return gUnk_02038960.unk10[2] & (1 << x) ? TRUE : FALSE;
}

u16 sub_08019EA0(void) {
    u16 ret = 0, i;

    for (i = 0; i < 10; ++i) {
        if (gUnk_02038960.unk10[3] & (1 << i))
            ++ret;
    }
    return ret;
}

void sub_08019ED4(u8 x) {
    gUnk_02038960.unk10[3] |= 1 << x;
}

bool32 sub_08019EEC(u8 x) {
    return gUnk_02038960.unk10[3] & (1 << x) ? TRUE : FALSE;
}

u16 sub_08019F0C(void) {
    return gUnk_02038960.unk20;
}

void sub_08019F18(void) {
    ++gUnk_02038960.unk20;
}
