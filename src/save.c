#include "save.h"
#include "code_080023A4.h"
#include "code_08002848.h"

static void nullsub_4(void) {}
static const struct Multi_082D91FC *sub_0800AD2C(u32);

extern void (*const gUnk_082D923C[])(void);

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
    const struct Multi_082D91FC *r5;
    u32 r1;

    switch (a1) {
    default:
        r5 = NULL;
        break;
    case 0:
        r5 = gUnk_082D91E4;
        break;
    case 1:
        r5 = gUnk_082D91FC;
        break;
    }
    CpuFill32(0, a2, sizeof(struct Unk_0800A96C));
    while ((uintptr_t)r5->unk0 != -1u && r5->unk4 != -1u) {
        for (r1 = 0; r1 != r5->unk4; r1 += 2)
            a2->a += *(u16 *)(r5->unk0 + r1);
        ++r5;
    }
    a2->b = ~a2->a;
    a2->c = ~a2->a + 1;
    a2->d = 0;
}

s16 sub_0800A9F4(s32 r6, u16 ip) {
    u8 *r5 = (u8 *)0xE000000;
    u32 r4, a, b;
    const struct Multi_082D91FC *r2, *c;
    struct Unk_0800A96C sp00;

    r2 = gUnk_082D91E4;
    for (r4 = 0; (uintptr_t)r2->unk0 != -1u && r2->unk4 != -1u; ++r2)
        r4 += r2->unk4;
    do a = r4 + 8; while (0); // reg mismatch
    r2 = gUnk_082D91FC;
    for (r4 = 0; (uintptr_t)r2->unk0 != -1u && r2->unk4 != -1u; ++r2)
        r4 += r2->unk4;
    b = r4 + 8;
    switch (r6) {
    default:
        return -1;
    case 0:
        r5 += ip * a;
        break;
    case 1:
        r5 += 2 * a;
        r5 += ip * b;
        break;
    }
    sub_0800A96C(r6, &sp00);
    if (WriteSramEx((u8 *)&sp00, r5, sizeof(struct Unk_0800A96C)))
        return -1;
    r5 += 8;
    switch (r6) {
    default:
        c = NULL;
        break;
    case 0:
        c = gUnk_082D91E4;
        break;
    case 1:
        c = gUnk_082D91FC;
        break;
    }
    while ((uintptr_t)c->unk0 != -1u && c->unk4 != -1u) {
        if (WriteSramEx(c->unk0, r5, c->unk4))
            return -1;
        r5 += c->unk4;
        ++c;
    }
    return 0;
}

s16 sub_0800AAE0(s32 r7, u16 ip) {
    u8 *r5 = (u8 *)0xE000000;
    u32 r4, a, b;
    const struct Multi_082D91FC *r2, *c;
    struct Unk_0800A96C sp00, sp08, *p;
    u32 lhs, rhs;

    r2 = gUnk_082D91E4;
    for (r4 = 0; (uintptr_t)r2->unk0 != -1u && r2->unk4 != -1u; ++r2)
        r4 += r2->unk4;
    a = r4 + 8;
    r2 = gUnk_082D91FC;
    for (r4 = 0; (uintptr_t)r2->unk0 != -1u && r2->unk4 != -1u; ++r2)
        r4 += r2->unk4;
    b = r4 + 8;
    switch (r7) {
    default:
        return -1;
    case 0:
        r5 += ip * a;
        break;
    case 1:
        r5 += 2 * a;
        r5 += ip * b;
        break;
    }
#ifndef NONMATCHING
    asm(""::"r"(b), "r"(a));
#endif
    ReadSram(r5, (u8 *)&sp00, sizeof(struct Multi_082D91FC));
    r5 += 8;
    switch (r7) {
    default:
        c = NULL;
        break;
    case 0:
        c = gUnk_082D91E4;
        break;
    case 1:
        c = gUnk_082D91FC;
        break;
    }
    while ((uintptr_t)c->unk0 != -1u && c->unk4 != -1u) {
        ReadSram(r5, c->unk0, c->unk4);
        r5 += c->unk4;
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
    const struct Multi_082D91FC *r4 = sub_0800AD2C(r7);

    while ((uintptr_t)r4->unk0 != -1u && r4->unk4 != -1u) {
        CpuFill16(0, r4->unk0, r4->unk4);
        ++r4;
    }
    gUnk_082D923C[r7]();
}

void sub_0800AC5C(void) {
    u32 r8;

    for (r8 = 0; r8 < 2; ++r8) {
        const struct Multi_082D91FC *r4 = sub_0800AD2C(r8);

        while ((uintptr_t)r4->unk0 != -1u && r4->unk4 != -1u) {
            CpuFill16(0, r4->unk0, r4->unk4);
            ++r4;
        }
        gUnk_082D923C[r8]();
    }
}

s16 sub_0800ACD4(s32 a1, u16 a2) {
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

static const struct Multi_082D91FC *sub_0800AD2C(u32 a) {
    const struct Multi_082D91FC *b;

    switch (a) {
    default:
        b = NULL;
        break;
    case 0:
        b = gUnk_082D91E4;
        break;
    case 1:
        b = gUnk_082D91FC;
        break;
    }
    return b;
}
