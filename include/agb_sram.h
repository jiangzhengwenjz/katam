#ifndef GUARD_AGB_SRAM_H
#define GUARD_AGB_SRAM_H

#include "global.h"

#define SRAM 0x0E000000

void WriteSramFast(const u8 *src, u8 *dest, u32 size);
u32 WriteAndVerifySramFast(const u8 *src, u8 *dest, u32 size);
void SetReadSramFastFunc(const u8 *src, u8 *dest, u32 size);
u32 SetVerifySramFastFunc(const u8 *src, u8 *dest, u32 size);

#endif // GUARD_AGB_SRAM_H
