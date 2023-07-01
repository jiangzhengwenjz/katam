#include "global.h"
#include "data.h"
#include "functions.h"
#include "task.h"
#include "malloc_ewram.h"
#include "gba/m4a.h"
#include "palette.h"

static void TaskMainDummy(void);
static void TaskMainDummy2(void);
static void TaskMainDummy3(void);
static void* IwramMalloc(u16);
static void IwramFree(void *);
static struct Task* TaskGetNextSlot(void);

u32 TasksInit(void) {
    struct Task* cur;
    struct IwramNode *node;
    s32 i;
    gCurTask = NULL;
    gNextTask = NULL;
    gNumTasks = 0;
    gNextTaskToCheckForDestruction = NULL;
    DmaFill32(3, 0, gTasks, 0x200); // really no idea why it's 0x200... 
                                    // 3001BF0 (gTasks+0x200) is referenced only in multi-boot programs

    for (i = 0; i < MAX_TASK_NUM; ++i)
        gTaskPtrs[i] = &gTasks[i];

    cur = TaskGetNextSlot();
    if (!cur) {
        return 0;
    }

    cur->main = TaskMainDummy;
    cur->priority = 0;
    cur->flags = 0;
    cur->parent = 0;
    cur->prev = 0;
    cur->next = (uintptr_t)TaskGetNextSlot();

    if ((cur->next + IWRAM_START) == IWRAM_START) {
        return 0;
    }

    ((struct Task*)(cur->next + IWRAM_START))->prev = (u32)cur;
    cur = (struct Task*)(cur->next + IWRAM_START);
    cur->main = TaskMainDummy2;
    cur->priority = 0xffff;
    cur->flags = 0;
    cur->parent = 0;
    cur->next = 0;
    gEmptyTask.parent = 0;
    gEmptyTask.prev = 0;
    gEmptyTask.next = 0;
    gEmptyTask.structOffset = (uintptr_t)iwram_end;
    // initialize IWRAM heap -- a huge node
    node = (void*)gIwramHeap;
    node->next = (uintptr_t)NULL;
    node->state = sizeof(gIwramHeap);
    return 1;
}

struct Task* TaskCreate(TaskMain taskMain, u16 structSize, u16 priority, u16 flags, TaskDestructor taskDestructor) {
    struct Task* slow;
    struct Task* task;
    void *temp;
    u16 fast;

    do ; while (0);
    task = NULL;
    slow = NULL;

    if (gNumTasks < MAX_TASK_NUM) {
        struct Task* nextSlot = gTaskPtrs[gNumTasks++];
        task = nextSlot;
    }

    if (task == NULL) {
        return &gEmptyTask;
    }

    task->main = taskMain;
    task->dtor = taskDestructor;
    task->priority = priority;
    task->flags = flags;

    if (flags & TASK_USE_EWRAM) {
        if (structSize == 0) {
            task->structOffset = 0;
        }
        else {
            task->structOffset = ((uintptr_t)EwramMalloc(structSize) - EWRAM_START) >> 2;
        }

        if (ewram_end == (temp = TaskGetStructPtr(task))) {
            task->flags &= ~TASK_USE_EWRAM;
            task->structOffset = (uintptr_t)IwramMalloc(structSize);
        }
    }
    else {
        task->structOffset = (uintptr_t)IwramMalloc(structSize);
        if (structSize != 0 && task->structOffset == 0) {
            task->flags |= TASK_USE_EWRAM;
            task->structOffset = ((uintptr_t)EwramMalloc(structSize) - EWRAM_START) >> 2;
        }
    }

    task->parent = (uintptr_t)gCurTask;

    // insert the task
    slow = gTaskPtrs[0];
    fast = slow->next;
    while ((fast + IWRAM_START) != IWRAM_START) {
        if (((struct Task*)(fast + IWRAM_START))->priority > priority) {
            ((struct Task*)(fast + IWRAM_START))->prev = (uintptr_t)task;
            task->next = slow->next;
            task->prev = (uintptr_t)slow;
            slow->next = (uintptr_t)task;
            if (slow->next == gNextTask->prev) {
                gNextTask = task;
            }
            break;
        }
        slow = (struct Task*)(fast + IWRAM_START);
        fast = ((struct Task*)(fast + IWRAM_START))->next;
    }
    return task;
}

void TaskDestroy(struct Task* task) {
    u32 next, prev;
    if (!(task->flags & TASK_DESTROY_DISABLED)) {
        prev = task->prev + IWRAM_START;
        next = task->next + IWRAM_START;
        if (prev != IWRAM_START && next != IWRAM_START) {
            if (task->dtor != NULL) {
                task->dtor(task);
            }

            if (task == gNextTask) {
                gNextTask = (struct Task*)(task->next + IWRAM_START);
            }

            // can only happen in (implicitly) recursive TaskDestroy calls (from task->dtor) in TasksDestroyInPriorityRange
            if (task == gNextTaskToCheckForDestruction) {
                gNextTaskToCheckForDestruction = (struct Task*)(task->next + IWRAM_START);
            }

            prev = task->prev + IWRAM_START;
            next = task->next + IWRAM_START;
            ((struct Task*)prev)->next = next;
            ((struct Task*)next)->prev = prev;

            if (task->structOffset != 0) {
                if (task->flags & TASK_USE_EWRAM) {
                    EwramFree(task->structOffset + (u32*)EWRAM_START);
                }
                else {
                    IwramFree(task->structOffset + (void*)IWRAM_START);
                }
            }
            gTaskPtrs[--gNumTasks] = task;
            task->parent = 0;
            task->prev = 0;
            task->main = TaskMainDummy3;
            task->priority = 0;
            task->flags = 0;
            task->structOffset = 0;
        }
    }
}

void TasksExec(void) {
    gCurTask = gTaskPtrs[0];
    if (!(gMainFlags & 0x800) && (gTaskPtrs[0] != (struct Task*)IWRAM_START)) {
        while (gCurTask != (struct Task*)IWRAM_START) {
            gNextTask = (struct Task*)(IWRAM_START + gCurTask->next);

            if (!(gCurTask->flags & TASK_INACTIVE)) {
                gCurTask->main();
            }

            gCurTask = gNextTask;
            if (gExecSoundMain) {
                if (gUnk_03002558 == 1) {
                    m4aSoundMain();
                }
                gExecSoundMain = FALSE;
            }
        }
    }
    else if (gTaskPtrs[0] != (struct Task*)IWRAM_START) {
        while (gCurTask != (struct Task*)IWRAM_START) {
            gNextTask = (struct Task*)(IWRAM_START + gCurTask->next);

            if ((gCurTask->flags & TASK_x0004) && !(gCurTask->flags & TASK_INACTIVE)) {
                gCurTask->main();
            }

            gCurTask = gNextTask;
            if (gExecSoundMain) {
                m4aSoundMain();
                gExecSoundMain = FALSE;
            }
        }
    }
    gCurTask = NULL;
    gNextTask = NULL;
}

static void* IwramMalloc(u16 req) {
    struct IwramNode *cur, *next;
    u16 size = req;
    size = (size + 3) >> 2;
    if (size == 0) {
        return NULL;
    }
    size = (size << 2) + sizeof(struct IwramNode);
    cur = (void*)gIwramHeap;
    while (1) {
        s16 sizeSigned = size;
        if (sizeSigned <= cur->state) {
            if (sizeSigned != cur->state) {
                s16 offset = size + sizeof(struct IwramNode); // space field in the anticipated next node
                if (offset > cur->state) {
                    if ((cur->next + IWRAM_START) == IWRAM_START) {
                        return NULL;
                    }
                    cur = (struct IwramNode*)(cur->next + IWRAM_START);
                    continue;
                }
                // shrink the original node
                next = (struct IwramNode*)((u8*)cur + size);
                next->next = cur->next;
                next->state = cur->state - size;
                cur->next = (uintptr_t)next;
            }
            cur->state = -size;
            return cur->space;
        }
        if ((cur->next + IWRAM_START) == IWRAM_START) {
            return NULL;
        }
        cur = (struct IwramNode*)(cur->next + IWRAM_START);
    }
}

static void IwramFree(void* p) {
    struct IwramNode* node = p, *fast;
#ifndef NONMATCHING
    register struct IwramNode* slow asm("r1");
#else
    struct IwramNode* slow;
#endif
    --node; // get node address from p
    fast = slow = (void*)gIwramHeap;
    if (node != slow) {
        do {
            slow = fast;
            fast = (struct IwramNode*)(IWRAM_START + slow->next);
        } while (node != fast);
    }
    if (node->state < 0) {
        node->state = -node->state;
    }
    if ((struct IwramNode*)(slow->state + (u8*)slow) == node) {
        u16 state = slow->state; // not actual code. only for handling side effect of inline asm
        if (slow->state > 0) {
            slow->next = fast->next;
            slow->state = state + node->state;
            node = slow;
        }
    }
    fast = (struct IwramNode*)((u8*)node + node->state);
    if (fast == (struct IwramNode*)(IWRAM_START + node->next)) {
        if (fast->state > 0) {
            node->state += fast->state;
            node->next = fast->next;
        }
    }
}

/* The function is probably for cleaning up the IWRAM nodes, but it's not working. */
static void sub_08152EBC(void) {
    struct IwramNode* cur = (void*)gIwramHeap;
    s32 curStateBackup;
    s32 i;
    u16 nextNodeOffset;
    u8* nextNodeSpace;
    u8* space;

    while ((cur->next + IWRAM_START) != IWRAM_START) {
        if (cur->state >= 0) {
            cur->next += 0; // load again pls
            nextNodeOffset = cur->next;
            if (((struct IwramNode*)(cur->next + IWRAM_START))->state >= 0) {
                cur->state += ((struct IwramNode*)(cur->next + IWRAM_START))->state;
                cur->next = ((struct IwramNode*)(cur->next + IWRAM_START))->next;
            }
            else {
                nextNodeSpace = (void*)(cur->next + (IWRAM_START + sizeof(struct IwramNode)));
                space = (void*)cur + sizeof(struct IwramNode);
                curStateBackup = cur->state;
                cur->state = ((struct IwramNode*)(cur->next + IWRAM_START))->state;
                ++nextNodeOffset; --nextNodeOffset; // why do you insist on loading here? 
                cur->next = ((struct IwramNode*)(nextNodeOffset + IWRAM_START))->next;
                for (i = 0; i < MAX_TASK_NUM; i++) {
                    if (gTasks[i].structOffset == (u16)nextNodeSpace) {
                        gTasks[i].structOffset = (u32)space;
                        break;
                    }
                }

                DmaCopy32(3, nextNodeSpace, space, cur->state + sizeof(struct IwramNode));
                {
                    struct IwramNode* newLoc = (void*)cur + cur->state;
                    newLoc->next = cur->next;
                    newLoc->state = curStateBackup;
                    cur = newLoc;
                    cur->next = (u32)cur; // will cause inf loop
                }
            }
        }
        else {
            cur = (struct IwramNode*)(cur->next + IWRAM_START);
        }
    }
}

static struct Task* TaskGetNextSlot(void) {
    if (gNumTasks >= MAX_TASK_NUM) {
        return NULL;
    }
    else {
        return gTaskPtrs[gNumTasks++];
    }
}

void TasksDestroyInPriorityRange(u16 lbound, u16 rbound) {
    struct Task* cur = gTaskPtrs[0];
    u32 curOffset = (u16)cur;
#ifndef NONMATCHING
    asm("":::"r5");
#endif
    while (curOffset != 0) {
        if (cur->priority >= lbound) {
            lbound = 0;
            while (cur->priority < rbound) {
                gNextTaskToCheckForDestruction = (struct Task*)(cur->next + (IWRAM_START));
                if (cur != gTaskPtrs[0] && cur != gTaskPtrs[1]) {
                    TaskDestroy(cur);
                }
                cur = gNextTaskToCheckForDestruction;

                if (cur == (struct Task*)IWRAM_START) {
                    break;
                }
                ++cur; --cur;
                gNextTaskToCheckForDestruction += 0;
            }
            gNextTaskToCheckForDestruction = (void*)lbound; // NULL
            return;
        }
        curOffset = cur->next;
        cur = (struct Task*)(curOffset + IWRAM_START);
    }
    gNextTaskToCheckForDestruction = NULL;
}

static s32 IwramActiveNodeTotalSize(void) {
    s32 activeSize = 0;
    struct IwramNode* cur = (void*)gIwramHeap;
    struct IwramNode* next;
    while (1) {
        if (cur->state < 0) {
            activeSize -= cur->state;
        }
        next = (void*)(cur->next + IWRAM_START);
        if (next == (void*)IWRAM_START) {
            break;
        }
        cur = next;
    }
    return activeSize;
}

static void TaskMainDummy(void) {

}

static void TaskMainDummy2(void) {
    
}

static void TaskMainDummy3(void) {
    
}
