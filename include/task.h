#ifndef GUARD_TASK_H
#define GUARD_TASK_H

#include "global.h"

struct Task;

typedef void (*TaskMain)(void);
typedef void (*TaskDestructor)(struct Task*);

#define MAX_TASK_NUM                0x80

#define TASK_INACTIVE               0x0001
#define TASK_DESTROY_DISABLED       0x0002
#define TASK_x0004                  0x0004
#define TASK_USE_EWRAM              0x0010 // when it fails, use the other work ram instead. 

struct Task {
    /* 0x00 */ u16 parent; // the current task on creation
    /* 0x02 */ u16 prev; 
    /* 0x04 */ u16 next;
    /* 0x06 */ u16 structOffset;
    /* 0x08 */ TaskMain main;
    /* 0x0C */ TaskDestructor dtor;
    /* 0x10 */ u16 priority; // lower value => higher priority
    /* 0x12 */ u16 flags;
};

struct IwramNode {
    u16 next;
    s16 state;
    u8 space[0];
};

#define TaskGetStructPtr(taskp, dst) ({                                    \
    if ((taskp)->flags & TASK_USE_EWRAM)                                   \
        (dst) = (typeof(dst))(EWRAM_START + ((taskp)->structOffset << 2)); \
    else                                                                   \
        (dst) = (typeof(dst))(IWRAM_START + (taskp)->structOffset);        \
    (dst);                                                                 \
})

extern struct Task gTasks[];
extern struct Task gEmptyTask;
extern struct Task* gTaskPtrs[];
extern s32 gNumTasks;
extern struct Task* gNextTaskToCheckForDestruction;
extern struct Task* gNextTask;
extern struct Task* gCurTask;
extern struct IwramNode gIwramHeap;
extern u8 gExecSoundMain;

u32 TasksInit(void);
void TasksExec(void);
struct Task* TaskCreate(TaskMain, u16, u16, u16, TaskDestructor);
void TaskDestroy(struct Task*);
void TasksDestroyInPriorityRange(u16, u16);

#endif
