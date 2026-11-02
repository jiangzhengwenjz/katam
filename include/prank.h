#ifndef GUARD_PRANK_H
#define GUARD_PRANK_H

#include "global.h"
#include "data.h"

void* CreatePrank(struct ObjectTemplate* arg0, u8 arg1);
void sub_080A12E4(struct Object *prank);
void sub_080A158C(struct Object *prank);
bool32 sub_080A1804(struct Object *, struct Kirby *);
void *CreatePrankItem(struct ObjectTemplate *template, u8 arg1);
void *CreateBananaPeel(struct ObjectTemplate *template, u8 arg1);
void sub_080A243C(struct Object *item);
void sub_080A245C(struct Object *prank);
void sub_080A2494(struct Object *peel);

#endif
