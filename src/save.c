#include "save.h"
#include "treasures.h"
#include "functions.h"
#include "agb_sram.h"

extern u16 gUnused_03000464;

static void sbSaveFileInfoClear(void);
static void sbWorldPropsClear(void);
static const struct SaveBuffer *GetSaveBuffer(enum SaveBufferType);

const struct SaveBuffer gSaveFileInfo[] = {
    { (void *)&gUnused_03000464,    sizeof(gUnused_03000464)},
    { (void *)&gSaveID,             sizeof(gSaveID) },
    { (void *)-1u,                  -1u },
};


const struct SaveBuffer gWorldProps[] = {
    { (void *)gUnk_02028BF0,                sizeof(gUnk_02028BF0) },
    { (void *)gUnk_02028C10,                sizeof(gUnk_02028C10) },
    { (void *)gVisitedDoors,                sizeof(gVisitedDoors) - 2 }, // TODO: why is this subtracted by 2?
    { (void *)&gTreasures,                  sizeof(gTreasures) },
    { (void *)&gShadowKirbyEncounters,      sizeof(gShadowKirbyEncounters) },
    { (void *)&gMirraEncounters,            sizeof(gMirraEncounters) },
    { (void *)&gAIKirbyState,               sizeof(gAIKirbyState) },
    { (void *)-1u, -1u },
};

void (*const sbClearFunctions[])(void) = {
    sbSaveFileInfoClear, sbWorldPropsClear
};

static void nullsub_4(void) {}

s16 WriteSaveSectionByID(enum SaveBufferType sbufferType, u16 saveID) {
    s16 a = saveID * NUM_SAVE_TYPES;
    s16 b = saveID * NUM_SAVE_TYPES + 1;
    s16 c;

    c = VerifySaveByOffset(sbufferType, saveID * NUM_SAVE_TYPES);
    if (c == 0) return 0;
    c = VerifySaveByOffset(sbufferType, saveID * NUM_SAVE_TYPES + 1);
    if (c != 0) return c;
    c = WriteSaveSectionByOffset(sbufferType, saveID * NUM_SAVE_TYPES);
    if (c != 0) return 0;
    WriteSaveSectionByOffset(sbufferType, saveID * NUM_SAVE_TYPES + 1);
    return 0;
}

void CalculateSaveChecksum(enum SaveBufferType sbufferType, struct SaveChecksum *out) {
    const struct SaveBuffer *sBuffer;
    u32 i;

    switch (sbufferType) {
    default:
        sBuffer = NULL;
        break;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        sBuffer = gSaveFileInfo;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        sBuffer = gWorldProps;
        break;
    }
    CpuFill32(0, out, sizeof(struct SaveChecksum));
    while ((uintptr_t)sBuffer->dataPtr != -1u && sBuffer->dataSize != -1u) {
        for (i = 0; i != sBuffer->dataSize; i += 2)
            out->a += *(u16 *)(sBuffer->dataPtr + i);
        ++sBuffer;
    }
    out->b = ~out->a;
    out->c = ~out->a + 1;
    out->d = 0;
}

s16 WriteSaveSectionByOffset(enum SaveBufferType sbufferType, u16 offset) {
    u8 *sramPointer = (u8 *)0xE000000;
    u32 sbCursor, sbSaveFileInfoOffset, sbWorldPropsOffset;
    const struct SaveBuffer *srcSaveBuf, *dstSaveBuf;
    struct SaveChecksum checksum;

    srcSaveBuf = gSaveFileInfo;
    for (sbCursor = 0; (uintptr_t)srcSaveBuf->dataPtr != -1u && srcSaveBuf->dataSize != -1u; ++srcSaveBuf)
        sbCursor += srcSaveBuf->dataSize;
    do sbSaveFileInfoOffset = sbCursor + 8; while (0); // reg mismatch
    srcSaveBuf = gWorldProps;
    for (sbCursor = 0; (uintptr_t)srcSaveBuf->dataPtr != -1u && srcSaveBuf->dataSize != -1u; ++srcSaveBuf)
        sbCursor += srcSaveBuf->dataSize;
    sbWorldPropsOffset = sbCursor + 8;
    switch (sbufferType) {
    default:
        return -1;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        sramPointer += offset * sbSaveFileInfoOffset;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        sramPointer += NUM_SAVE_TYPES * sbSaveFileInfoOffset;
        sramPointer += offset * sbWorldPropsOffset;
        break;
    }
    CalculateSaveChecksum(sbufferType, &checksum);
    if (WriteSramEx((u8 *)&checksum, sramPointer, sizeof(struct SaveChecksum)))
        return -1;
    sramPointer += 8;
    switch (sbufferType) {
    default:
        dstSaveBuf = NULL;
        break;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        dstSaveBuf = gSaveFileInfo;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        dstSaveBuf = gWorldProps;
        break;
    }
    while ((uintptr_t)dstSaveBuf->dataPtr != -1u && dstSaveBuf->dataSize != -1u) {
        if (WriteSramEx(dstSaveBuf->dataPtr, sramPointer, dstSaveBuf->dataSize))
            return -1;
        sramPointer += dstSaveBuf->dataSize;
        ++dstSaveBuf;
    }
    return 0;
}

s16 VerifySaveByOffset(enum SaveBufferType sbufferType, u16 offset) {
    u8 *sramPointer = (u8 *)0xE000000;
    u32 sbCursor, sbSaveFileInfoOffset, sbWorldPropsOffset;
    const struct SaveBuffer *srcSaveBuf, *dstSaveBuf;
    struct SaveChecksum srcChecksum, dstChecksum, *p;
    u32 lhs, rhs;

    srcSaveBuf = gSaveFileInfo;
    for (sbCursor = 0; (uintptr_t)srcSaveBuf->dataPtr != -1u && srcSaveBuf->dataSize != -1u; ++srcSaveBuf)
        sbCursor += srcSaveBuf->dataSize;
    sbSaveFileInfoOffset = sbCursor + 8;
    srcSaveBuf = gWorldProps;
    for (sbCursor = 0; (uintptr_t)srcSaveBuf->dataPtr != -1u && srcSaveBuf->dataSize != -1u; ++srcSaveBuf)
        sbCursor += srcSaveBuf->dataSize;
    sbWorldPropsOffset = sbCursor + 8;
    switch (sbufferType) {
    default:
        return -1;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        sramPointer += offset * sbSaveFileInfoOffset;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        sramPointer += NUM_SAVE_TYPES * sbSaveFileInfoOffset;
        sramPointer += offset * sbWorldPropsOffset;
        break;
    }
#ifndef NONMATCHING
    asm(""::"r"(sbWorldPropsOffset), "r"(sbSaveFileInfoOffset));
#endif
    ReadSram(sramPointer, (u8 *)&srcChecksum, sizeof(struct SaveBuffer));
    sramPointer += 8;
    switch (sbufferType) {
    default:
        dstSaveBuf = NULL;
        break;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        dstSaveBuf = gSaveFileInfo;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        dstSaveBuf = gWorldProps;
        break;
    }
    while ((uintptr_t)dstSaveBuf->dataPtr != -1u && dstSaveBuf->dataSize != -1u) {
        ReadSram(sramPointer, dstSaveBuf->dataPtr, dstSaveBuf->dataSize);
        sramPointer += dstSaveBuf->dataSize;
        ++dstSaveBuf;
    }
    p = &srcChecksum;
    lhs = ~srcChecksum.a;
    rhs = p->b;
    if ((u16)lhs != p->b) return -1;
    if ((u16)(lhs+1) != p->c) return -1;
    if (p->d) return -1;
    CalculateSaveChecksum(sbufferType, &dstChecksum);
    if ((dstChecksum.a != srcChecksum.a || dstChecksum.b != srcChecksum.b)
        || (dstChecksum.c != srcChecksum.c || dstChecksum.d != srcChecksum.d))
        return -1;
    return 0;
}

// not referenced
static u16 sub_0800ABF8(void) {
    return 7;
}

// TODO: This mostly likely returned a macro that evaluated to seven. Or it just had a bunch of commented out code.
u16 TheNumberSeven(void) {
    return 7;
}

void ClearSaveBuffer(enum SaveBufferType sbufferType) {
    const struct SaveBuffer *destSb = GetSaveBuffer(sbufferType);

    while ((uintptr_t)destSb->dataPtr != -1u && destSb->dataSize != -1u) {
        CpuFill16(0, destSb->dataPtr, destSb->dataSize);
        ++destSb;
    }
    sbClearFunctions[sbufferType]();
}

void InitSaveBuffers(void) {
    enum SaveBufferType i;

    for (i = 0; i < NUM_SAVE_TYPES; ++i) {
        const struct SaveBuffer *sbType = GetSaveBuffer(i);

        while ((uintptr_t)sbType->dataPtr != -1u && sbType->dataSize != -1u) {
            CpuFill16(0, sbType->dataPtr, sbType->dataSize);
            ++sbType;
        }
        sbClearFunctions[i]();
    }
}

s16 UpdateSaveBufferByOffset(enum SaveBufferType sbufferType, u16 offset) {
    u16 dupOffset = (offset *= NUM_SAVE_TYPES) + 1;
    s16 result;

    result = WriteSaveSectionByOffset(sbufferType, offset);
    if (result) {
        return result;
    } else {
        result = WriteSaveSectionByOffset(sbufferType, dupOffset);
        if (result)
            return result;
    }
    return 0;
}

void sbSaveFileInfoClear(void) {
    nullsub_4();
}

void sbWorldPropsClear(void) {
    sub_080027C8();
    sub_08002868();
}

static const struct SaveBuffer *GetSaveBuffer(enum SaveBufferType sbufferType) {
    const struct SaveBuffer *b;

    switch (sbufferType) {
    default:
        b = NULL;
        break;
    case SAVE_BUFFER_TYPE_FILE_INFO:
        b = gSaveFileInfo;
        break;
    case SAVE_BUFFER_TYPE_WORLD_PROPS:
        b = gWorldProps;
        break;
    }
    return b;
}
