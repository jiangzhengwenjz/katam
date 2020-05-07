#include "global.h"
#include "functions.h"
#include "game_state.h"
#include "gba/m4a_internal.h"

u32 sub_08152A18(void) {
    struct GameState *r2, *r4;
    struct GameState **i, **r1;
    gUnk_030035D0 = NULL;
    gUnk_03002EBC = NULL;
    gUnk_03002E7C = 0;
    gUnk_03002E98 = NULL;
    DmaFill32(3, 0, gUnk_030019F0, 0x200);
    r1 = gUnk_03002560;
    r2 = gUnk_030019F0 + 0x7f;
    i = r1 + 0x7f;

    do {
        *i = r2;
        r2--;
        i--;
    } while ((s32)i >= (s32)r1);

    r4 = sub_08152F88();
    if (r4 == 0) {
        return 0;
    }

    r4->unk8 = nullsub_143;
    r4->unk10 = 0;
    r4->unk12 = 0;
    r4->unk0 = 0;
    r4->unk2 = 0;
    r4->unk4 = (u32)sub_08152F88();

    if ((r4->unk4 + IWRAM_START) == IWRAM_START) {
        return 0;
    }

    ((struct GameState*)(r4->unk4 + IWRAM_START))->unk2 = (u32)r4;
    r4 = (struct GameState*)(r4->unk4 + IWRAM_START);
    r4->unk8 = nullsub_144;
    r4->unk10 = 0xffff;
    r4->unk12 = 0;
    r4->unk0 = 0;
    r4->unk4 = 0;
    gUnk_03002500.unk0 = 0;
    gUnk_03002500.unk2 = 0;
    gUnk_03002500.unk4 = 0;
    gUnk_03002500.unk6 = gUnk_03006CC4;
    gUnk_03003A20[0].unk0 = 0;
    gUnk_03003A20[0].unk2 = 0x2604;
    return 1;
}

struct GameState* sub_08152B00(GameStateFunc arg0, u16 arg1, u16 arg2, u16 arg3, GameStateFunc2 arg4) {
    struct GameState* r3;
    struct GameState* r4;
    u16 i;
    struct GameState* r1;
    struct GameState** r3_2;

    do ; while (0);
    r4 = NULL;
    r3 = NULL;

    if (gUnk_03002E7C <= 0x7f) {
        struct GameState* r1 = gUnk_03002560[gUnk_03002E7C++];
        r4 = r1;
    }

    if (r4 == NULL) {
        return &gUnk_03002500;
    }

    r4->unk8 = arg0;
    r4->unkC = arg4;
    r4->unk10 = arg2;
    r4->unk12 = arg3;

    if (arg3 & 0x10) {
        if (arg1 == 0) {
            r4->unk6 = 0;
        }
        else {
            r4->unk6 = (sub_08159088(arg1) - EWRAM_START) >> 2;
        }

        r3_2 = (void*)&gUnk_0203ADE4;
        if (r4->unk12 & 0x10) {
            r1 = (void*)((r4->unk6 << 2) + EWRAM_START);
        }
        else {
            r1 = (void*)(r4->unk6 + IWRAM_START);
        }

        if (*r3_2 == r1) {
            r4->unk12 &= ~0x10;
            r4->unk6 = (u32)sub_08152DD8(arg1);
        }
    }
    else {
        r4->unk6 = (u32)sub_08152DD8(arg1);
        if ((arg1 != 0) && (r4->unk6 == 0)) {
            r4->unk12 |= 0x10;
            r4->unk6 = (sub_08159088(arg1) - EWRAM_START) >> 2;
        }
    }

    r4->unk0 = (uintptr_t)gUnk_030035D0;
    r3 = gUnk_03002560[0];
    i = r3->unk4;

    while ((i + IWRAM_START) != IWRAM_START) {
        if (((struct GameState*)(i + IWRAM_START))->unk10 > arg2) {
            ((struct GameState*)(i + IWRAM_START))->unk2 = (uintptr_t)r4;
            r4->unk4 = r3->unk4;
            r4->unk2 = (uintptr_t)r3;
            r3->unk4 = (uintptr_t)r4;
            if (r3->unk4 == gUnk_03002EBC->unk2) {
                gUnk_03002EBC = r4;
            }
            break;
        }
        r3 = (struct GameState*)(i + IWRAM_START);
        i = ((struct GameState*)(i + IWRAM_START))->unk4;
    }
    return r4;
}

void sub_08152C3C(struct GameState* arg0) {
    u32 r0, r1;
    u16 r2;
    if (!(arg0->unk12 & 2)) {
        r1 = arg0->unk2 + IWRAM_START;
        r0 = arg0->unk4 + IWRAM_START;
        if (r1 != IWRAM_START) {
            if (r0 != IWRAM_START) {
                if (arg0->unkC != NULL) {
                    arg0->unkC(arg0);
                }

                if (arg0 == gUnk_03002EBC) {
                    gUnk_03002EBC = (struct GameState*)(arg0->unk4 + IWRAM_START);
                }

                if (arg0 == gUnk_03002E98) {
                    gUnk_03002E98 = (struct GameState*)(arg0->unk4 + IWRAM_START);
                }

                r1 = arg0->unk2 + IWRAM_START;
                r0 = arg0->unk4 + IWRAM_START;
                ((struct GameState*)r1)->unk4 = r0;
                ((struct GameState*)r0)->unk2 = r1;

                if (arg0->unk6 != 0) {
                    if (arg0->unk12 & 0x10) {
                        sub_081590EC(arg0->unk6 + (u32*)EWRAM_START);
                    }
                    else {
                        sub_08152E40(arg0->unk6 + (void*)IWRAM_START);
                    }
                }

                gUnk_03002560[--gUnk_03002E7C] = arg0;
                arg0->unk0 = 0;
                arg0->unk2 = 0;
                arg0->unk8 = nullsub_145;
                arg0->unk10 = 0;
                arg0->unk12 = 0;
                arg0->unk6 = 0;
            }
        }
    }
}

void sub_08152CF4(void) {
    gUnk_030035D0 = gUnk_03002560[0];
    if (!(gUnk_03002440 & 0x800) && (gUnk_03002560[0] != (struct GameState*)IWRAM_START)) {
        while (gUnk_030035D0 != (struct GameState*)IWRAM_START) {
            gUnk_03002EBC = (struct GameState*)(IWRAM_START + gUnk_030035D0->unk4);

            if (!(gUnk_030035D0->unk12 & 1)) {
                gUnk_030035D0->unk8();
            }

            gUnk_030035D0 = gUnk_03002EBC;
            if ((gUnk_030068D4 != 0)) {
                if (gUnk_03002558 == 1) {
                    m4aSoundMain();
                }
                gUnk_030068D4 = 0;
            }
        }
    }
    else if (gUnk_03002560[0] != (struct GameState*)IWRAM_START) {
        while (gUnk_030035D0 != (struct GameState*)IWRAM_START) {
            gUnk_03002EBC = (struct GameState*)(IWRAM_START + gUnk_030035D0->unk4);

            if ((gUnk_030035D0->unk12 & 5) == 4) {
                gUnk_030035D0->unk8();
            }

            gUnk_030035D0 = gUnk_03002EBC;
            if (gUnk_030068D4 != 0) {
                m4aSoundMain();
                gUnk_030068D4 = 0;
            }
        }
    }
    gUnk_030035D0 = NULL;
    gUnk_03002EBC = NULL;
}

struct Unk_03003A20* sub_08152DD8(u16 arg0) {
    struct Unk_03003A20 *r3, *r1;
    s16 r0;
    u16 r2 = arg0;
    r2 = (r2 + 3) >> 2;
    if (r2 == 0) {
        return NULL;
    }
    r2 = (r2 << 2) + 4;
    r3 = gUnk_03003A20;
    do {
        r0 = r2;
        if (r0 <= r3->unk2) {
            if (r0 != r3->unk2) {
                r0 = r2 + 4;
                if (r0 > r3->unk2) {
                    if ((r3->unk0 + IWRAM_START) == IWRAM_START) {
                    return NULL;
                }
                r3 = (struct Unk_03003A20*)(r3->unk0 + IWRAM_START);
                    continue;
                }
                r1 = (struct Unk_03003A20*)((u8*)r3 + r2);
                r1->unk0 = r3->unk0;
                r1->unk2 = r3->unk2 - r2;
                r3->unk0 = (u32)r1;
            }
            r3->unk2 = -r2;
            return r3 + 1;
        }
        if ((r3->unk0 + IWRAM_START) == IWRAM_START) {
            return NULL;
        }
        r3 = (struct Unk_03003A20*)(r3->unk0 + IWRAM_START);
    } while (1);
}

void sub_08152E40(struct Unk_03003A20* arg0) {
    struct Unk_03003A20* r2 = arg0, *r3;
#ifndef NONMATCHING
    register struct Unk_03003A20* r1 asm("r1");
#else
    struct Unk_03003A20* r1;
#endif
    r2 -= 1;
    r1 = gUnk_03003A20;
    r3 = r1;
    
    if (r2 != r1) {
        do {
            r1 = r3;
            r3 = (struct Unk_03003A20*)(IWRAM_START + r1->unk0);
        } while (r2 != r3);
    }
    if (r2->unk2 < 0) {
        r2->unk2 = -r2->unk2;
    }
    if ((struct Unk_03003A20*)(r1->unk2 + (u8*)r1) == r2) {
        u16 r4 = r1->unk2; // not actual code. only for handling side effect of inline asm
        if (r1->unk2 > 0) {
            r1->unk0 = r3->unk0;
            r1->unk2 = r4 + r2->unk2;
            r2 = r1;
        }
    }
    r3 = (struct Unk_03003A20*)((u8*)r2 + r2->unk2);
    if (r3 == (struct Unk_03003A20*)(IWRAM_START + r2->unk0)) {
        if (r3->unk2 > 0) {
            r2->unk2 += r3->unk2;
            r2->unk0 = r3->unk0;
        }
    }
}

void sub_08152EBC(void) {
    struct Unk_03003A20* r2 = &gUnk_03003A20[0];
    s32 r7;
    s32 r3;
    u16 r1;
    u32* r5;
    u32* r6;

    while ((r2->unk0 + IWRAM_START) != IWRAM_START) {
        if (r2->unk2 >= 0) {
            r2->unk0 += 0; // load again pls
            r1 = r2->unk0;
            if (((struct Unk_03003A20*)(r2->unk0 + IWRAM_START))->unk2 >= 0) {
                r2->unk2 += ((struct Unk_03003A20*)(r2->unk0 + IWRAM_START))->unk2;
                r2->unk0 = ((struct Unk_03003A20*)(r2->unk0 + IWRAM_START))->unk0;
            }
            else {
                r5 = r2->unk0 + (void*)(IWRAM_START + 4);
                r6 = (void*)r2 + 4;
                r7 = r2->unk2;
                r2->unk2 = ((struct Unk_03003A20*)(r2->unk0 + IWRAM_START))->unk2;
                ++r1; --r1; // why do you insist on loading here? 
                r2->unk0 = ((struct Unk_03003A20*)(r1 + IWRAM_START))->unk0;
                for (r3 = 0; r3 <= 0x7f; r3++) {
                    if (gUnk_030019F0[r3].unk6 == (u16)r5) {
                        gUnk_030019F0[r3].unk6 = (u32)r6;
                        break;
                    }
                }

                DmaCopy32(3, r5, r6, r2->unk2 + 4u);
                {
                    struct Unk_03003A20* r1 = (void*)r2 + r2->unk2;
                    r1->unk0 = r2->unk0;
                    r1->unk2 = r7;
                    r2 = r1;
                    r2->unk0 = (u32)r2;
                }
            }
        }
        else {
            r2 = (struct Unk_03003A20*)(r2->unk0 + IWRAM_START);
        }
    }
}

struct GameState* sub_08152F88(void) {
    if (gUnk_03002E7C > 0x7f) {
        return NULL;
    }
    else {
        return gUnk_03002560[gUnk_03002E7C++];
    }
}

void sub_08152FB0(u16 arg0, u16 arg1) {
    struct GameState* r2;
    u32 r0;
    r2 = gUnk_03002560[0];
    r0 = (u16)r2;
#ifndef NONMATCHING
    asm("":::"r5");
#endif
    while (r0 != 0) {
        if (r2->unk10 >= arg0) {
            arg0 = 0;
            while (r2->unk10 < arg1) {
                gUnk_03002E98 = (struct GameState*)(r2->unk4 + (IWRAM_START));
                if (r2 != gUnk_03002560[0] && r2 != gUnk_03002560[1]) {
                    sub_08152C3C(r2);
                }
                r2 = gUnk_03002E98;
                
                if (r2 == (struct GameState*)(IWRAM_START)) {
                    break;
                }
                ++r2; --r2;
                gUnk_03002E98 += 0;
            }
            gUnk_03002E98 = (void*)arg0; // ridiculous
            return;
        }
        r0 = r2->unk4;
        r2 = (struct GameState*)(r0 + IWRAM_START);
    }
    gUnk_03002E98 = NULL;
}

s32 sub_08153028(void) {
    s32 i = 0;
    struct Unk_03003A20* r1 = gUnk_03003A20;
    struct Unk_03003A20* r0;
    while (1) {
        if (r1->unk2 < 0) {
            i -= r1->unk2;
        }
        r0 = (void*)(r1->unk0 + IWRAM_START);
        if (r0 == (void*)IWRAM_START) {
            break;
        }
        r1 = r0;
    }
    return i;
}
