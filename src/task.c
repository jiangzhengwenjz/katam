#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"
#include "malloc_ewram.h"
#include "gba/m4a.h"

static void nullsub_143(void);
static void nullsub_144(void);
static void nullsub_145(void);
static void IwramFree(struct Unk_03003A20* arg0);
static struct Task* TaskGetNextSlot(void);

u32 TaskInit(void) {
    struct Task *r2, *r4;
    struct Task **i, **r1;
    gCurTask = NULL;
    gNextTask = NULL;
    gLastTaskNum = 0;
    gUnk_03002E98 = NULL;
    DmaFill32(3, 0, gUnk_030019F0, 0x200);
    r1 = gTaskList;
    r2 = gUnk_030019F0 + 0x7f;
    i = r1 + 0x7f;

    do {
        *i = r2;
        r2--;
        i--;
    } while ((intptr_t)i >= (intptr_t)r1);

    r4 = TaskGetNextSlot();
    if (!r4) {
        return 0;
    }

    r4->main = nullsub_143;
    r4->unk10 = 0;
    r4->flags = 0;
    r4->unk0 = 0;
    r4->unk2 = 0;
    r4->next = (uintptr_t)TaskGetNextSlot();

    if ((r4->next + IWRAM_START) == IWRAM_START) {
        return 0;
    }

    ((struct Task*)(r4->next + IWRAM_START))->unk2 = (u32)r4;
    r4 = (struct Task*)(r4->next + IWRAM_START);
    r4->main = nullsub_144;
    r4->unk10 = 0xffff;
    r4->flags = 0;
    r4->unk0 = 0;
    r4->next = 0;
    gEmptyTask.unk0 = 0;
    gEmptyTask.unk2 = 0;
    gEmptyTask.next = 0;
    gEmptyTask.structOffset = (uintptr_t)gUnk_03006CC4;
    gUnk_03003A20[0].unk0 = 0;
    gUnk_03003A20[0].unk2 = 0x2604;
    return 1;
}

struct Task* TaskCreate(TaskMain taskMain, u16 structSize, u16 arg2, u16 flags, TaskDestructor taskDestructor) {
    struct Task* slow;
    struct Task* r4;
    u16 fast;
    struct EwramNode* r1;

    do ; while (0);
    r4 = NULL;
    slow = NULL;

    if (gLastTaskNum <= 0x7f) {
        struct Task* nextSlot = gTaskList[gLastTaskNum++];
        r4 = nextSlot;
    }

    if (r4 == NULL) {
        return &gEmptyTask;
    }

    r4->main = taskMain;
    r4->dtor = taskDestructor;
    r4->unk10 = arg2;
    r4->flags = flags;

    if (flags & 0x10) {
        if (structSize == 0) {
            r4->structOffset = 0;
        }
        else {
            r4->structOffset = ((uintptr_t)EwramMalloc(structSize) - EWRAM_START) >> 2;
        }

        if (gUnk_0203ADE4 == TaskGetStructPtr(r4, r1)) {
            r4->flags &= ~0x10;
            r4->structOffset = (uintptr_t)IwramMalloc(structSize);
        }
    }
    else {
        r4->structOffset = (uintptr_t)IwramMalloc(structSize);
        if ((structSize != 0) && (r4->structOffset == 0)) {
            r4->flags |= 0x10;
            r4->structOffset = ((uintptr_t)EwramMalloc(structSize) - EWRAM_START) >> 2;
        }
    }

    r4->unk0 = (uintptr_t)gCurTask;
    slow = gTaskList[0];
    fast = slow->next;

    while ((fast + IWRAM_START) != IWRAM_START) {
        if (((struct Task*)(fast + IWRAM_START))->unk10 > arg2) {
            ((struct Task*)(fast + IWRAM_START))->unk2 = (uintptr_t)r4;
            r4->next = slow->next;
            r4->unk2 = (uintptr_t)slow;
            slow->next = (uintptr_t)r4;
            if (slow->next == gNextTask->unk2) {
                gNextTask = r4;
            }
            break;
        }
        slow = (struct Task*)(fast + IWRAM_START);
        fast = ((struct Task*)(fast + IWRAM_START))->next;
    }
    return r4;
}

void TaskDestroy(struct Task* task) {
    u32 r0, r1;
    if (!(task->flags & 2)) {
        r1 = task->unk2 + IWRAM_START;
        r0 = task->next + IWRAM_START;
        if (r1 != IWRAM_START) {
            if (r0 != IWRAM_START) {
                if (task->dtor != NULL) {
                    task->dtor(task);
                }

                if (task == gNextTask) {
                    gNextTask = (struct Task*)(task->next + IWRAM_START);
                }

                if (task == gUnk_03002E98) {
                    gUnk_03002E98 = (struct Task*)(task->next + IWRAM_START);
                }

                r1 = task->unk2 + IWRAM_START;
                r0 = task->next + IWRAM_START;
                ((struct Task*)r1)->next = r0;
                ((struct Task*)r0)->unk2 = r1;

                if (task->structOffset != 0) {
                    if (task->flags & 0x10) {
                        EwramFree(task->structOffset + (u32*)EWRAM_START);
                    }
                    else {
                        IwramFree(task->structOffset + (void*)IWRAM_START);
                    }
                }

                gTaskList[--gLastTaskNum] = task;
                task->unk0 = 0;
                task->unk2 = 0;
                task->main = nullsub_145;
                task->unk10 = 0;
                task->flags = 0;
                task->structOffset = 0;
            }
        }
    }
}

void TaskExecute(void) {
    gCurTask = gTaskList[0];
    if (!(gUnk_03002440 & 0x800) && (gTaskList[0] != (struct Task*)IWRAM_START)) {
        while (gCurTask != (struct Task*)IWRAM_START) {
            gNextTask = (struct Task*)(IWRAM_START + gCurTask->next);

            if (!(gCurTask->flags & 1)) {
                gCurTask->main();
            }

            gCurTask = gNextTask;
            if ((gUnk_030068D4 != 0)) {
                if (gUnk_03002558 == 1) {
                    m4aSoundMain();
                }
                gUnk_030068D4 = 0;
            }
        }
    }
    else if (gTaskList[0] != (struct Task*)IWRAM_START) {
        while (gCurTask != (struct Task*)IWRAM_START) {
            gNextTask = (struct Task*)(IWRAM_START + gCurTask->next);

            if ((gCurTask->flags & 4) && !(gCurTask->flags & 1)) {
                gCurTask->main();
            }

            gCurTask = gNextTask;
            if (gUnk_030068D4 != 0) {
                m4aSoundMain();
                gUnk_030068D4 = 0;
            }
        }
    }
    gCurTask = NULL;
    gNextTask = NULL;
}

struct Unk_03003A20* IwramMalloc(u16 size) {
    struct Unk_03003A20 *r3, *r1;
    s16 r0;
    u16 r2 = size;
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
            return r3->space;
        }
        if ((r3->unk0 + IWRAM_START) == IWRAM_START) {
            return NULL;
        }
        r3 = (struct Unk_03003A20*)(r3->unk0 + IWRAM_START);
    } while (1);
}

static void IwramFree(struct Unk_03003A20* p) {
    struct Unk_03003A20* r2 = p, *r3;
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

static void sub_08152EBC(void) {
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
                    if (gUnk_030019F0[r3].structOffset == (u16)r5) {
                        gUnk_030019F0[r3].structOffset = (u32)r6;
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

static struct Task* TaskGetNextSlot(void) {
    if (gLastTaskNum > 0x7f) {
        return NULL;
    }
    else {
        return gTaskList[gLastTaskNum++];
    }
}

void sub_08152FB0(u16 arg0, u16 arg1) {
    struct Task* r2;
    u32 r0;
    r2 = gTaskList[0];
    r0 = (u16)r2;
#ifndef NONMATCHING
    asm("":::"r5");
#endif
    while (r0 != 0) {
        if (r2->unk10 >= arg0) {
            arg0 = 0;
            while (r2->unk10 < arg1) {
                gUnk_03002E98 = (struct Task*)(r2->next + (IWRAM_START));
                if (r2 != gTaskList[0] && r2 != gTaskList[1]) {
                    TaskDestroy(r2);
                }
                r2 = gUnk_03002E98;
                
                if (r2 == (struct Task*)IWRAM_START) {
                    break;
                }
                ++r2; --r2;
                gUnk_03002E98 += 0;
            }
            gUnk_03002E98 = (void*)arg0; // ridiculous
            return;
        }
        r0 = r2->next;
        r2 = (struct Task*)(r0 + IWRAM_START);
    }
    gUnk_03002E98 = NULL;
}

static s32 sub_08153028(void) {
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

static void nullsub_143(void) {

}

static void nullsub_144(void) {
    
}

static void nullsub_145(void) {
    
}
