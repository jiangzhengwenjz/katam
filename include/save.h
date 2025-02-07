#ifndef GUARD_SAVE_H
#define GUARD_SAVE_H

#include "global.h"

// The type of SaveBuffer that a function working with it should use
enum SaveBufferType {
    SAVE_BUFFER_TYPE_FILE_INFO = 0,
    SAVE_BUFFER_TYPE_WORLD_PROPS = 1,
};

struct SaveChecksum {
    u16 a, b, c, d;
}; /* size = 8 */

// Struct containing a pointer and it's size. Used for the save code
struct SaveBuffer
{
    u8 *dataPtr;
    u32 dataSize;
}; /* size = 0x8 */

extern const struct SaveBuffer gSaveFileInfo[];
extern const struct SaveBuffer gWorldProps[];

// Writes and verifies the specified section of the save file to SRAM, with an offset based on the given Save ID
s16 WriteSaveSectionByID(enum SaveBufferType sBufferType, u16 saveID);
// Calulate the checksum of the specified save buffer, and write it to the out pointer.
void CalculateSaveChecksum(enum SaveBufferType sBufferType, struct SaveChecksum * out);
// Writes the specified section of the save file to SRAM at the given offset.
s16 WriteSaveSectionByOffset(enum SaveBufferType sBufferType, u16 offset);
// Verifies the specified section of the save file to SRAM at the given offset.
s16 VerifySaveByOffset(enum SaveBufferType sBufferType, u16 offset);
// Returns the number seven. 
// TODO: Most likely supposed to return a macro that evaulates to seven. Or it just had a bunch of commented out code.
u16 TheNumberSeven(void);
// Clear the save buffer in memory that corresponds to this save section. 
void ClearSaveBuffer(enum SaveBufferType sBufferType);
// Initialize the save buffers that we write to.
void InitSaveBuffers(void);
// Writes the specified section of the save file to SRAM at the given offset.
s16 UpdateSaveBufferByOffset(enum SaveBufferType sBufferType, u16 offset);

#endif
