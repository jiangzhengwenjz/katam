#include "save.h"
#include "code_08019CB8.h"
#include "functions.h"

// 
extern u16 gUnused_03000464;

static void sub_0800AD10(void);
static void sub_0800AD1C(void);
static const struct SizedPointer *sub_0800AD2C(u32);

const struct SizedPointer gUnk_082D91E4[] = {
    { (void *)&gUnused_03000464,    sizeof(gUnused_03000464)},
    { (void *)&gSaveID,             sizeof(gSaveID) },
    { (void *)-1u,                  -1u },
};


const struct SizedPointer g_WorldProps[] = {
    { (void *)gUnk_02028BF0,                sizeof(gUnk_02028BF0) },
    { (void *)gUnk_02028C10,                sizeof(gUnk_02028C10) },
    { (void *)gVisitedDoors,                sizeof(gVisitedDoors) - 2 }, // TODO: why is this subtracted by 2?
    { (void *)&gUnk_02038960,               sizeof(gUnk_02038960) },
    { (void *)&gShadowKirbyEncounters,      sizeof(gShadowKirbyEncounters) },
    { (void *)&gMirraEncounters,            sizeof(gMirraEncounters) },
    { (void *)&gAIKirbyState,                    sizeof(gAIKirbyState) },
    { (void *)-1u, -1u },
};

void (*const gUnk_082D923C[])(void) = {
    sub_0800AD10, sub_0800AD1C
};

static void nullsub_4(void) {}

s16 sub_0800A91C(s32 arg0, u16 arg1) {
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

void sub_0800A96C(s32 a1, struct Unk_0800A96C *a2) {
    const struct SizedPointer *r5;
    u32 r1;

    switch (a1) {
    default:
        r5 = NULL;
        break;
    case UNK_SAVEGAMEENUM_1:
        r5 = gUnk_082D91E4;
        break;
    case UNK_SAVEGAMEENUM_2:
        r5 = g_WorldProps;
        break;
    }
    CpuFill32(0, a2, sizeof(struct Unk_0800A96C));
    while ((uintptr_t)r5->dataPtr != -1u && r5->dataSize != -1u) {
        for (r1 = 0; r1 != r5->dataSize; r1 += 2)
            a2->a += *(u16 *)(r5->dataPtr + r1);
        ++r5;
    }
    a2->b = ~a2->a;
    a2->c = ~a2->a + 1;
    a2->d = 0;
}

s16 sub_0800A9F4(s32 r6, u16 ip) {
    u8 *sramPointer = (u8 *)0xE000000;
    u32 r4, a, b;
    const struct SizedPointer *r2, *c;
    struct Unk_0800A96C sp00;

    r2 = gUnk_082D91E4;
    for (r4 = 0; (uintptr_t)r2->dataPtr != -1u && r2->dataSize != -1u; ++r2)
        r4 += r2->dataSize;
    do a = r4 + 8; while (0); // reg mismatch
    r2 = g_WorldProps;
    for (r4 = 0; (uintptr_t)r2->dataPtr != -1u && r2->dataSize != -1u; ++r2)
        r4 += r2->dataSize;
    b = r4 + 8;
    switch (r6) {
    default:
        return -1;
    case UNK_SAVEGAMEENUM_1:
        sramPointer += ip * a;
        break;
    case UNK_SAVEGAMEENUM_2:
        sramPointer += 2 * a;
        sramPointer += ip * b;
        break;
    }
    sub_0800A96C(r6, &sp00);
    if (WriteSramEx((u8 *)&sp00, sramPointer, sizeof(struct Unk_0800A96C)))
        return -1;
    sramPointer += 8;
    switch (r6) {
    default:
        c = NULL;
        break;
    case UNK_SAVEGAMEENUM_1:
        c = gUnk_082D91E4;
        break;
    case UNK_SAVEGAMEENUM_2:
        c = g_WorldProps;
        break;
    }
    while ((uintptr_t)c->dataPtr != -1u && c->dataSize != -1u) {
        if (WriteSramEx(c->dataPtr, sramPointer, c->dataSize))
            return -1;
        sramPointer += c->dataSize;
        ++c;
    }
    return 0;
}

s16 sub_0800AAE0(s32 r7, u16 ip) {
    u8 *sramPointer = (u8 *)0xE000000;
    u32 r4, a, b;
    const struct SizedPointer *r2, *c;
    struct Unk_0800A96C sp00, sp08, *p;
    u32 lhs, rhs;

    r2 = gUnk_082D91E4;
    for (r4 = 0; (uintptr_t)r2->dataPtr != -1u && r2->dataSize != -1u; ++r2)
        r4 += r2->dataSize;
    a = r4 + 8;
    r2 = g_WorldProps;
    for (r4 = 0; (uintptr_t)r2->dataPtr != -1u && r2->dataSize != -1u; ++r2)
        r4 += r2->dataSize;
    b = r4 + 8;
    switch (r7) {
    default:
        return -1;
    case UNK_SAVEGAMEENUM_1:
        sramPointer += ip * a;
        break;
    case UNK_SAVEGAMEENUM_2:
        sramPointer += 2 * a;
        sramPointer += ip * b;
        break;
    }
#ifndef NONMATCHING
    asm(""::"r"(b), "r"(a));
#endif
    ReadSram(sramPointer, (u8 *)&sp00, sizeof(struct SizedPointer));
    sramPointer += 8;
    switch (r7) {
    default:
        c = NULL;
        break;
    case UNK_SAVEGAMEENUM_1:
        c = gUnk_082D91E4;
        break;
    case UNK_SAVEGAMEENUM_2:
        c = g_WorldProps;
        break;
    }
    while ((uintptr_t)c->dataPtr != -1u && c->dataSize != -1u) {
        ReadSram(sramPointer, c->dataPtr, c->dataSize);
        sramPointer += c->dataSize;
        ++c;
    }
    p = &sp00;
    lhs = ~sp00.a;
    rhs = p->b;
    if ((u16)lhs != p->b) return -1;
    if ((u16)(lhs+1) != p->c) return -1;
    if (p->d) return -1;
    sub_0800A96C(r7, &sp08);
    if ((sp08.a != sp00.a || sp08.b != sp00.b)
        || (sp08.c != sp00.c || sp08.d != sp00.d))
        return -1;
    return 0;
}

// not referenced
static u16 sub_0800ABF8(void) {
    return 7;
}

u16 sub_0800ABFC(void) {
    return 7;
}

void sub_0800AC00(u32 r7) {
    const struct SizedPointer *r4 = sub_0800AD2C(r7);

    while ((uintptr_t)r4->dataPtr != -1u && r4->dataSize != -1u) {
        CpuFill16(0, r4->dataPtr, r4->dataSize);
        ++r4;
    }
    gUnk_082D923C[r7]();
}

void sub_0800AC5C(void) {
    u32 r8;

    for (r8 = 0; r8 < 2; ++r8) {
        const struct SizedPointer *r4 = sub_0800AD2C(r8);

        while ((uintptr_t)r4->dataPtr != -1u && r4->dataSize != -1u) {
            CpuFill16(0, r4->dataPtr, r4->dataSize);
            ++r4;
        }
        gUnk_082D923C[r8]();
    }
}

s16 StartSaveGame(s32 a1, u16 a2) {
    u16 r4 = (a2 *= 2) + 1;
    s16 result;

    result = sub_0800A9F4(a1, a2);
    if (result) {
        return result;
    } else {
        result = sub_0800A9F4(a1, r4);
        if (result)
            return result;
    }
    return 0;
}

void sub_0800AD10(void) {
    nullsub_4();
}

void sub_0800AD1C(void) { 
    sub_080027C8();
    sub_08002868();
}

static const struct SizedPointer *sub_0800AD2C(u32 a) {
    const struct SizedPointer *b;

    switch (a) {
    default:
        b = NULL;
        break;
    case UNK_SAVEGAMEENUM_1:
        b = gUnk_082D91E4;
        break;
    case UNK_SAVEGAMEENUM_2:
        b = g_WorldProps;
        break;
    }
    return b;
}
