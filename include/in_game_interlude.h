#ifndef GUARD_IN_GAME_INTERLUDE_H
#define GUARD_IN_GAME_INTERLUDE_H

#include "global.h"

void ResetInGameInterlude(void);
bool32 CanStartInGameInterlude(void);
void StartInGameInterlude(u16 screen);
void FinishInGameInterludeScreen(void);
void sub_080396BC(void);
void StartWorldMapUnlockMoonlightMansion(void);
void StartWorldMapUnlockRainbowRouteEast(void);
void StartWorldMapUnlockRainbowRouteSouth(void);
void StartWorldMapUnlockCabbageCavernCenter(void);
void StartWorldMapUnlockRainbowRouteWest(void);
void StartWorldMapUnlockCarrotCastle(void);
void StartWorldMapUnlockRainbowRouteNorth(void);
void StartWorldMapUnlockMustardMountain(void);
void StartWorldMapUnlockCabbageCavernWest(void);
void StartWorldMapUnlockRadishRuins(void);
void StartWorldMapUnlockPeppermintPalaceEast(void);
void StartWorldMapUnlockPeppermintPalaceWest(void);
void StartWorldMapUnlockCabbageCavernEast(void);
void StartWorldMapUnlockOliveOcean(void);
void StartWorldMapUnlockCandyConstellation(void);

#endif
