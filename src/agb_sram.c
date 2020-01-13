#include "agb_sram.h"

const char gAgbSramLibVer[] = "NINTENDOSRAM_V113";

static void ReadSram_Core(const u8 *src, u8 *dest, u32 size)
{
    while (--size != -1)
        *dest++ = *src++;
}

void ReadSram(const u8 *src, u8 *dest, u32 size)
{
    const u16 *s;
    u16 *d;
    u16 readSramFast_Work[64];
    u16 size_;
    
    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
    s = (void *)((uintptr_t)ReadSram_Core);
    s = (void *)((uintptr_t)s & ~1);
    d = readSramFast_Work;
    size_ = ((uintptr_t)ReadSram - (uintptr_t)ReadSram_Core) / 2;
    while (size_ != 0)
    {
        *d++ = *s++;
        --size_;
    }
    ((void (*)(const u8 *, u8 *, u32))readSramFast_Work + 1)(src, dest, size);
}

void WriteSram(const u8 *src, u8 *dest, u32 size)
{
    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
    while (--size != -1)
        *dest++ = *src++;
}

static u32 VerifySram_Core(const u8 *src, u8 *dest, u32 size)
{
    while (--size != -1)
        if (*dest++ != *src++)
            return (u32)(dest - 1);
    return 0;
}

u32 VerifySram(const u8 *src, u8 *dest, u32 size)
{
    const u16 *s;
    u16 *d;
    u16 verifySramFast_Work[96];
    u16 size_;
    
    REG_WAITCNT = (REG_WAITCNT & ~3) | 3;
    s = (void *)((uintptr_t)VerifySram_Core);
    s = (void *)((uintptr_t)s & ~1);
    d = verifySramFast_Work;
    size_ = ((uintptr_t)VerifySram - (uintptr_t)VerifySram_Core) / 2;
    while (size_ != 0)
    {
        *d++ = *s++;
        --size_;
    }
    return ((u32 (*)(const u8 *, u8 *, u32))verifySramFast_Work + 1)(src, dest, size);
}

u32 WriteSramEx(const u8 *src, u8 *dest, u32 size)
{
    u8 i;
    u32 errorAddr;

    // try writing and verifying the data 3 times
    for (i = 0; i < SRAM_RETRY_MAX; ++i)
    {
        WriteSram(src, dest, size);
        errorAddr = VerifySram(src, dest, size);
        if (errorAddr == 0)
            break;
    }
    return errorAddr;
}
