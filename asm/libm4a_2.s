	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start SoundMainRAM_Buffer
SoundMainRAM_Buffer: @ 0x0814FFF4
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _08150008
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_08150008:
	ldr r3, _08150050 @ =gScaleTable
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _08150054 @ =gFreqTable
	movs r2, #0xf
	adds r0, r5, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r5, #4
	ldr r5, [r0]
	lsrs r5, r1
	adds r0, r6, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	lsrs r1, r1, #4
	ldr r0, [r0]
	lsrs r0, r1
	mov r1, ip
	ldr r4, [r1, #4]
	subs r0, r0, r5
	adds r1, r7, #0
	bl umul3232H32
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl umul3232H32
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08150050: .4byte gScaleTable
_08150054: .4byte gFreqTable

	thumb_func_start nullsub_140
nullsub_140: @ 0x08150058
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x0815005C
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _08150070 @ =0x68736D53
	cmp r3, r0
	bne _0815006E
	ldr r0, [r2, #4]
	ldr r1, _08150074 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0815006E:
	bx lr
	.align 2, 0
_08150070: .4byte 0x68736D53
_08150074: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x08150078
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08150094 @ =0x68736D53
	cmp r3, r0
	bne _08150090
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_08150090:
	bx lr
	.align 2, 0
_08150094: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x08150098
	push {r4, r5, r6, lr}
	ldr r0, _081500EC @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _081500F0 @ =gUnk_03000060
	ldr r2, _081500F4 @ =0x04000100
	bl CpuSet
	ldr r0, _081500F8 @ =gSoundInfo
	bl SoundInit
	ldr r0, _081500FC @ =gCgbChans
	bl MPlayExtender
	ldr r0, _08150100 @ =0x0095FA00
	bl m4aSoundMode
	ldr r0, _08150104 @ =gNumMusicPlayers
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _081500E6
	ldr r5, _08150108 @ =gMPlayTable
	adds r6, r0, #0
_081500CA:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _0815010C @ =gMPlayMemAccArea
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _081500CA
_081500E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081500EC: .4byte SoundMainRAM
_081500F0: .4byte gUnk_03000060
_081500F4: .4byte 0x04000100
_081500F8: .4byte gSoundInfo
_081500FC: .4byte gCgbChans
_08150100: .4byte 0x0095FA00
_08150104: .4byte gNumMusicPlayers
_08150108: .4byte gMPlayTable
_0815010C: .4byte gMPlayMemAccArea

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x08150110
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x0815011C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08150140 @ =gMPlayTable
	ldr r1, _08150144 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r0]
	adds r0, r2, #0
	bl MPlayStart
	pop {r0}
	bx r0
	.align 2, 0
_08150140: .4byte gMPlayTable
_08150144: .4byte gSongTable

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x08150148
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08150174 @ =gMPlayTable
	ldr r1, _08150178 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _0815017C
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _08150190
	.align 2, 0
_08150174: .4byte gMPlayTable
_08150178: .4byte gSongTable
_0815017C:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _08150188
	cmp r2, #0
	bge _08150190
_08150188:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
_08150190:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x08150194
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _081501C0 @ =gMPlayTable
	ldr r1, _081501C4 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r1, [r1]
	ldr r3, [r1]
	ldr r2, [r0]
	cmp r3, r2
	beq _081501C8
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart
	b _081501E4
	.align 2, 0
_081501C0: .4byte gMPlayTable
_081501C4: .4byte gSongTable
_081501C8:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _081501DA
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart
	b _081501E4
_081501DA:
	cmp r2, #0
	bge _081501E4
	adds r0, r1, #0
	bl MPlayContinue
_081501E4:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x081501E8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08150214 @ =gMPlayTable
	ldr r1, _08150218 @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _0815020E
	adds r0, r2, #0
	bl m4aMPlayStop
_0815020E:
	pop {r0}
	bx r0
	.align 2, 0
_08150214: .4byte gMPlayTable
_08150218: .4byte gSongTable

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x0815021C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _08150248 @ =gMPlayTable
	ldr r1, _0815024C @ =gSongTable
	lsrs r0, r0, #0xd
	adds r0, r0, r1
	ldrh r3, [r0, #4]
	lsls r1, r3, #1
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r2
	ldr r2, [r1]
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	bne _08150242
	adds r0, r2, #0
	bl MPlayContinue
_08150242:
	pop {r0}
	bx r0
	.align 2, 0
_08150248: .4byte gMPlayTable
_0815024C: .4byte gSongTable

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x08150250
	push {r4, r5, lr}
	ldr r0, _08150274 @ =gNumMusicPlayers
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0815026E
	ldr r5, _08150278 @ =gMPlayTable
	adds r4, r0, #0
_08150260:
	ldr r0, [r5]
	bl m4aMPlayStop
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08150260
_0815026E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08150274: .4byte gNumMusicPlayers
_08150278: .4byte gMPlayTable

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x0815027C
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x08150288
	push {r4, r5, lr}
	ldr r0, _081502AC @ =gNumMusicPlayers
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _081502A6
	ldr r5, _081502B0 @ =gMPlayTable
	adds r4, r0, #0
_08150298:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _08150298
_081502A6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081502AC: .4byte gNumMusicPlayers
_081502B0: .4byte gMPlayTable

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x081502B4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutTemporarily
m4aMPlayFadeOutTemporarily: @ 0x081502C4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _081502DC @ =0x68736D53
	cmp r3, r0
	bne _081502DA
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _081502E0 @ =0x00000101
	strh r0, [r2, #0x28]
_081502DA:
	bx lr
	.align 2, 0
_081502DC: .4byte 0x68736D53
_081502E0: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeIn
m4aMPlayFadeIn: @ 0x081502E4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _08150304 @ =0x68736D53
	cmp r3, r0
	bne _08150302
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _08150308 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_08150302:
	bx lr
	.align 2, 0
_08150304: .4byte 0x68736D53
_08150308: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x0815030C
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _0815034E
	movs r7, #0x80
_08150318:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08150346
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08150346
	adds r0, r4, #0
	bl Clear64byte
	strb r7, [r4]
	movs r0, #2
	strb r0, [r4, #0xf]
	strb r6, [r4, #0x13]
	movs r0, #0x16
	strb r0, [r4, #0x19]
	adds r1, r4, #0
	adds r1, #0x24
	movs r0, #1
	strb r0, [r1]
_08150346:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08150318
_0815034E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x08150354
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0815041C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _08150420 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _08150424 @ =0x04000063
	movs r1, #8
	strb r1, [r0]
	adds r0, #6
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0x14
	movs r1, #0x80
	strb r1, [r0]
	adds r0, #8
	strb r1, [r0]
	adds r0, #0x10
	strb r1, [r0]
	subs r0, #0xd
	strb r2, [r0]
	movs r0, #0x77
	strb r0, [r3]
	ldr r0, _08150428 @ =SOUND_INFO_PTR
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _0815042C @ =0x68736D53
	cmp r6, r0
	bne _08150414
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _08150430 @ =gMPlayJumpTable
	ldr r0, _08150434 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _08150438 @ =ply_lfos
	str r0, [r1, #0x44]
	ldr r0, _0815043C @ =ply_mod
	str r0, [r1, #0x4c]
	ldr r0, _08150440 @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _08150444 @ =ply_endtie
	str r0, [r1, #0x74]
	ldr r0, _08150448 @ =SampleFreqSet
	str r0, [r1, #0x78]
	ldr r0, _0815044C @ =TrackStop
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _08150450 @ =FadeOutBody
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _08150454 @ =TrkVolPitSet
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _08150458 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _0815045C @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _08150460 @ =MidiKeyToCgbFreq
	str r0, [r4, #0x30]
	ldr r0, _08150464 @ =gMaxLines
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _08150468 @ =0x05000040
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #1
	strb r0, [r5, #1]
	movs r0, #0x11
	strb r0, [r5, #0x1c]
	adds r1, r5, #0
	adds r1, #0x41
	movs r0, #2
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x22
	strb r0, [r1]
	adds r1, #0x25
	movs r0, #3
	strb r0, [r1]
	adds r1, #0x1b
	movs r0, #0x44
	strb r0, [r1]
	adds r1, #0x24
	movs r0, #4
	strb r0, [r1, #1]
	movs r0, #0x88
	strb r0, [r1, #0x1c]
	str r6, [r4]
_08150414:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0815041C: .4byte 0x04000084
_08150420: .4byte 0x04000080
_08150424: .4byte 0x04000063
_08150428: .4byte SOUND_INFO_PTR
_0815042C: .4byte 0x68736D53
_08150430: .4byte gMPlayJumpTable
_08150434: .4byte ply_memacc
_08150438: .4byte ply_lfos
_0815043C: .4byte ply_mod
_08150440: .4byte ply_xcmd
_08150444: .4byte ply_endtie
_08150448: .4byte SampleFreqSet
_0815044C: .4byte TrackStop
_08150450: .4byte FadeOutBody
_08150454: .4byte TrkVolPitSet
_08150458: .4byte CgbSound
_0815045C: .4byte CgbOscOff
_08150460: .4byte MidiKeyToCgbFreq
_08150464: .4byte gMaxLines
_08150468: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x0815046C
	svc #0x2a
	bx lr

	thumb_func_start ClearChain
ClearChain: @ 0x08150470
	push {lr}
	ldr r1, _08150480 @ =gUnk_03001598
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08150480: .4byte gUnk_03001598

	thumb_func_start Clear64byte
Clear64byte: @ 0x08150484
	push {lr}
	ldr r1, _08150494 @ =gUnk_0300159C
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08150494: .4byte gUnk_0300159C

	thumb_func_start SoundInit
SoundInit: @ 0x08150498
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _08150550 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _081504B4
	ldr r0, _08150554 @ =0x84400004
	str r0, [r1]
_081504B4:
	ldr r1, _08150558 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _081504C2
	ldr r0, _08150554 @ =0x84400004
	str r0, [r1]
_081504C2:
	ldr r0, _0815055C @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _08150560 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _08150564 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08150568 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0815056C @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08150570 @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _08150574 @ =0x040000A4
	str r0, [r1]
	ldr r0, _08150578 @ =SOUND_INFO_PTR
	str r5, [r0]
	str r3, [sp]
	ldr r2, _0815057C @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _08150580 @ =ply_note
	str r0, [r5, #0x38]
	ldr r0, _08150584 @ =nullsub_141
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _08150588 @ =gMPlayJumpTable
	adds r0, r4, #0
	bl MPlayJumpTableCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampleFreqSet
	ldr r0, _0815058C @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08150550: .4byte 0x040000C4
_08150554: .4byte 0x84400004
_08150558: .4byte 0x040000D0
_0815055C: .4byte 0x040000C6
_08150560: .4byte 0x04000084
_08150564: .4byte 0x0000A90E
_08150568: .4byte 0x04000089
_0815056C: .4byte 0x040000BC
_08150570: .4byte 0x040000A0
_08150574: .4byte 0x040000A4
_08150578: .4byte SOUND_INFO_PTR
_0815057C: .4byte 0x050003EC
_08150580: .4byte ply_note
_08150584: .4byte nullsub_141
_08150588: .4byte gMPlayJumpTable
_0815058C: .4byte 0x68736D53

	thumb_func_start SampleFreqSet
SampleFreqSet: @ 0x08150590
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08150610 @ =SOUND_INFO_PTR
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _08150614 @ =gPcmSamplesPerVBlankTable
	subs r0, r2, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r5, [r0]
	str r5, [r4, #0x10]
	movs r0, #0xc6
	lsls r0, r0, #3
	adds r1, r5, #0
	bl __divsi3
	strb r0, [r4, #0xb]
	ldr r0, _08150618 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _0815061C @ =0x00001388
	adds r0, r0, r1
	ldr r1, _08150620 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _08150624 @ =0x04000102
	strh r6, [r0]
	ldr r4, _08150628 @ =0x04000100
	ldr r0, _0815062C @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl m4aSoundVSyncOn
	ldr r1, _08150630 @ =0x04000006
_081505F4:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _081505F4
	ldr r1, _08150630 @ =0x04000006
_081505FC:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _081505FC
	ldr r1, _08150624 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08150610: .4byte SOUND_INFO_PTR
_08150614: .4byte gPcmSamplesPerVBlankTable
_08150618: .4byte 0x00091D1B
_0815061C: .4byte 0x00001388
_08150620: .4byte 0x00002710
_08150624: .4byte 0x04000102
_08150628: .4byte 0x04000100
_0815062C: .4byte 0x00044940
_08150630: .4byte 0x04000006

	thumb_func_start m4aSoundMode
m4aSoundMode: @ 0x08150634
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _081506C0 @ =SOUND_INFO_PTR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _081506C4 @ =0x68736D53
	cmp r1, r0
	bne _081506BA
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _08150656
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_08150656:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _08150676
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_0815066C:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _0815066C
_08150676:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _08150684
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_08150684:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _081506A2
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _081506C8 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_081506A2:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _081506B6
	bl m4aSoundVSyncOff
	adds r0, r4, #0
	bl SampleFreqSet
_081506B6:
	ldr r0, _081506C4 @ =0x68736D53
	str r0, [r5]
_081506BA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081506C0: .4byte SOUND_INFO_PTR
_081506C4: .4byte 0x68736D53
_081506C8: .4byte 0x04000089

	thumb_func_start SoundClear
SoundClear: @ 0x081506CC
	push {r4, r5, r6, r7, lr}
	ldr r0, _08150718 @ =SOUND_INFO_PTR
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _0815071C @ =0x68736D53
	cmp r1, r0
	bne _08150712
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_081506E6:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _081506E6
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _0815070E
	movs r5, #1
	movs r7, #0
_081506FA:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _081506FA
_0815070E:
	ldr r0, _0815071C @ =0x68736D53
	str r0, [r6]
_08150712:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08150718: .4byte SOUND_INFO_PTR
_0815071C: .4byte 0x68736D53

	thumb_func_start m4aSoundVSyncOff
m4aSoundVSyncOff: @ 0x08150720
	push {lr}
	sub sp, #4
	ldr r0, _08150780 @ =SOUND_INFO_PTR
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _08150784 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _08150778
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _08150788 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _0815074A
	ldr r0, _0815078C @ =0x84400004
	str r0, [r1]
_0815074A:
	ldr r1, _08150790 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _08150758
	ldr r0, _0815078C @ =0x84400004
	str r0, [r1]
_08150758:
	ldr r0, _08150794 @ =0x040000C6
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	movs r0, #0
	str r0, [sp]
	movs r0, #0xd4
	lsls r0, r0, #2
	adds r1, r2, r0
	ldr r2, _08150798 @ =0x05000318
	mov r0, sp
	bl CpuSet
_08150778:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08150780: .4byte SOUND_INFO_PTR
_08150784: .4byte 0x978C92AD
_08150788: .4byte 0x040000C4
_0815078C: .4byte 0x84400004
_08150790: .4byte 0x040000D0
_08150794: .4byte 0x040000C6
_08150798: .4byte 0x05000318

	thumb_func_start m4aSoundVSyncOn
m4aSoundVSyncOn: @ 0x0815079C
	push {r4, lr}
	ldr r0, _081507CC @ =SOUND_INFO_PTR
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _081507D0 @ =0x68736D53
	cmp r3, r0
	beq _081507C4
	ldr r0, _081507D4 @ =0x040000C6
	movs r4, #0xb6
	lsls r4, r4, #8
	adds r1, r4, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldrb r0, [r2, #4]
	movs r0, #0
	strb r0, [r2, #4]
	adds r0, r3, #0
	subs r0, #0xa
	str r0, [r2]
_081507C4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081507CC: .4byte SOUND_INFO_PTR
_081507D0: .4byte 0x68736D53
_081507D4: .4byte 0x040000C6

	thumb_func_start MPlayOpen
MPlayOpen: @ 0x081507D8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _0815083C
	cmp r4, #0x10
	bls _081507EC
	movs r4, #0x10
_081507EC:
	ldr r0, _08150844 @ =SOUND_INFO_PTR
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _08150848 @ =0x68736D53
	cmp r1, r0
	bne _0815083C
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _08150820
	movs r1, #0
_08150812:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _08150812
_08150820:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _08150830
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_08150830:
	str r7, [r5, #0x24]
	ldr r0, _0815084C @ =MPlayMain
	str r0, [r5, #0x20]
	ldr r0, _08150848 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_0815083C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08150844: .4byte SOUND_INFO_PTR
_08150848: .4byte 0x68736D53
_0815084C: .4byte MPlayMain

	thumb_func_start MPlayStart
MPlayStart: @ 0x08150850
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _08150930 @ =0x68736D53
	cmp r1, r0
	bne _08150926
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _08150892
	ldr r0, [r5]
	cmp r0, #0
	beq _0815087C
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _08150888
_0815087C:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _08150892
	cmp r1, #0
	blt _08150892
_08150888:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _08150926
_08150892:
	ldr r0, [r5, #0x34]
	adds r0, #1
	str r0, [r5, #0x34]
	movs r1, #0
	str r1, [r5, #4]
	str r7, [r5]
	ldr r0, [r7, #4]
	str r0, [r5, #0x30]
	strb r2, [r5, #9]
	str r1, [r5, #0xc]
	movs r0, #0x96
	strh r0, [r5, #0x1c]
	strh r0, [r5, #0x20]
	adds r0, #0x6a
	strh r0, [r5, #0x1e]
	strh r1, [r5, #0x22]
	strh r1, [r5, #0x24]
	movs r6, #0
	ldr r4, [r5, #0x2c]
	ldrb r1, [r7]
	cmp r6, r1
	bge _081508F2
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08150912
	mov r8, r6
_081508C6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #0xc0
	strb r0, [r4]
	mov r1, r8
	str r1, [r4, #0x20]
	lsls r1, r6, #2
	adds r0, r7, #0
	adds r0, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x40]
	adds r6, #1
	adds r4, #0x50
	ldrb r0, [r7]
	cmp r6, r0
	bge _081508F2
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _081508C6
_081508F2:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _08150912
	movs r1, #0
	mov r8, r1
_081508FC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _081508FC
_08150912:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _08150922
	ldrb r0, [r7, #3]
	bl m4aSoundMode
_08150922:
	ldr r0, _08150930 @ =0x68736D53
	str r0, [r5, #0x34]
_08150926:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08150930: .4byte 0x68736D53

	thumb_func_start m4aMPlayStop
m4aMPlayStop: @ 0x08150934
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _08150970 @ =0x68736D53
	cmp r1, r0
	bne _0815096A
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r6, #4]
	ldrb r4, [r6, #8]
	ldr r5, [r6, #0x2c]
	cmp r4, #0
	ble _08150966
_08150956:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _08150956
_08150966:
	ldr r0, _08150970 @ =0x68736D53
	str r0, [r6, #0x34]
_0815096A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08150970: .4byte 0x68736D53

	thumb_func_start FadeOutBody
FadeOutBody: @ 0x08150974
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _08150A36
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _081509B4 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08150A36
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081509B8
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _08150A0A
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _08150A0A
	.align 2, 0
_081509B4: .4byte 0x0000FFFF
_081509B8:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _08150A0A
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _081509EA
_081509CE:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _081509E2
	strb r0, [r4]
_081509E2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _081509CE
_081509EA:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _081509FE
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _08150A02
_081509FE:
	movs r0, #0x80
	lsls r0, r0, #0x18
_08150A02:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _08150A36
_08150A0A:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _08150A36
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_08150A18:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08150A2E
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_08150A2E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _08150A18
_08150A36:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet
TrkVolPitSet: @ 0x08150A3C
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _08150AA0
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _08150A64
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_08150A64:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _08150A7A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_08150A7A:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _08150A86
	adds r1, r0, #0
	b _08150A8C
_08150A86:
	cmp r1, #0x7f
	ble _08150A8C
	movs r1, #0x7f
_08150A8C:
	adds r0, r1, #0
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x10]
	movs r0, #0x7f
	subs r0, r0, r1
	muls r0, r3, r0
	lsrs r0, r0, #8
	strb r0, [r2, #0x11]
_08150AA0:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _08150AE4
	movs r0, #0xe
	ldrsb r0, [r2, r0]
	ldrb r1, [r2, #0xf]
	muls r0, r1, r0
	movs r1, #0xc
	ldrsb r1, [r2, r1]
	adds r1, r1, r0
	lsls r1, r1, #2
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	adds r1, r1, r0
	ldrb r0, [r2, #0xd]
	adds r1, r0, r1
	ldrb r0, [r2, #0x18]
	cmp r0, #0
	bne _08150ADE
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_08150ADE:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_08150AE4:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKeyToCgbFreq
MidiKeyToCgbFreq: @ 0x08150AF0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _08150B28
	cmp r5, #0x14
	bhi _08150B0C
	movs r5, #0
	b _08150B1A
_08150B0C:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _08150B1A
	movs r5, #0x3b
_08150B1A:
	ldr r0, _08150B24 @ =gUnk_08B586B8
	adds r0, r5, r0
	ldrb r0, [r0]
	b _08150B8A
	.align 2, 0
_08150B24: .4byte gUnk_08B586B8
_08150B28:
	cmp r5, #0x23
	bhi _08150B34
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _08150B46
_08150B34:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _08150B46
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_08150B46:
	ldr r3, _08150B90 @ =gCgbScaleTable
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _08150B94 @ =gCgbFreqTable
	movs r2, #0xf
	adds r0, r6, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r7, #0
	ldrsh r1, [r0, r7]
	asrs r0, r6, #4
	adds r6, r1, #0
	asrs r6, r0
	adds r0, r5, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	lsls r0, r0, #1
	adds r0, r0, r4
	movs r2, #0
	ldrsh r0, [r0, r2]
	asrs r1, r1, #4
	asrs r0, r1
	subs r0, r0, r6
	mov r7, ip
	muls r7, r0, r7
	adds r0, r7, #0
	asrs r0, r0, #8
	adds r0, r6, r0
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_08150B8A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08150B90: .4byte gCgbScaleTable
_08150B94: .4byte gCgbFreqTable

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x08150B98
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _08150BC0
	cmp r0, #2
	bgt _08150BAC
	cmp r0, #1
	beq _08150BB2
	b _08150BD4
_08150BAC:
	cmp r1, #3
	beq _08150BC8
	b _08150BD4
_08150BB2:
	ldr r1, _08150BBC @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _08150BDC
	.align 2, 0
_08150BBC: .4byte 0x04000063
_08150BC0:
	ldr r1, _08150BC4 @ =0x04000069
	b _08150BD6
	.align 2, 0
_08150BC4: .4byte 0x04000069
_08150BC8:
	ldr r1, _08150BD0 @ =0x04000070
	movs r0, #0
	b _08150BDE
	.align 2, 0
_08150BD0: .4byte 0x04000070
_08150BD4:
	ldr r1, _08150BE4 @ =0x04000079
_08150BD6:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_08150BDC:
	movs r0, #0x80
_08150BDE:
	strb r0, [r1]
	bx lr
	.align 2, 0
_08150BE4: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x08150BE8
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _08150C08
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _08150C14
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _08150C22
_08150C08:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _08150C14
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _08150C22
_08150C14:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _08150C32
_08150C22:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _08150C34
	movs r0, #0xf
_08150C32:
	strb r0, [r1, #0xa]
_08150C34:
	ldrb r2, [r1, #6]
	ldrb r3, [r1, #0xa]
	adds r0, r2, #0
	muls r0, r3, r0
	adds r0, #0xf
	asrs r0, r0, #4
	strb r0, [r1, #0x19]
	ldrb r0, [r1, #0x1c]
	ldrb r2, [r1, #0x1b]
	ands r0, r2
	strb r0, [r1, #0x1b]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start CgbSound
CgbSound: @ 0x08150C50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _08150C70 @ =SOUND_INFO_PTR
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _08150C74
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _08150C7A
	.align 2, 0
_08150C70: .4byte SOUND_INFO_PTR
_08150C74:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_08150C7A:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_08150C80:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _08150C96
	b _08151080
_08150C96:
	cmp r6, #2
	beq _08150CC8
	cmp r6, #2
	bgt _08150CA4
	cmp r6, #1
	beq _08150CAA
	b _08150D00
_08150CA4:
	cmp r6, #3
	beq _08150CE0
	b _08150D00
_08150CAA:
	ldr r0, _08150CBC @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _08150CC0 @ =0x04000062
	ldr r2, _08150CC4 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08150D10
	.align 2, 0
_08150CBC: .4byte 0x04000060
_08150CC0: .4byte 0x04000062
_08150CC4: .4byte 0x04000063
_08150CC8:
	ldr r0, _08150CD4 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _08150CD8 @ =0x04000068
	ldr r2, _08150CDC @ =0x04000069
	b _08150D08
	.align 2, 0
_08150CD4: .4byte 0x04000061
_08150CD8: .4byte 0x04000068
_08150CDC: .4byte 0x04000069
_08150CE0:
	ldr r0, _08150CF4 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _08150CF8 @ =0x04000072
	ldr r2, _08150CFC @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _08150D10
	.align 2, 0
_08150CF4: .4byte 0x04000070
_08150CF8: .4byte 0x04000072
_08150CFC: .4byte 0x04000073
_08150D00:
	ldr r0, _08150D60 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _08150D64 @ =0x04000078
	ldr r2, _08150D68 @ =0x04000079
_08150D08:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_08150D10:
	str r2, [sp, #0x14]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	str r0, [sp]
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	mov r8, r0
	adds r2, r1, #0
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08150E06
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r5, #0
	bne _08150E2A
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _08150D78
	cmp r6, #2
	bgt _08150D6C
	cmp r6, #1
	beq _08150D72
	b _08150DCC
	.align 2, 0
_08150D60: .4byte 0x04000071
_08150D64: .4byte 0x04000078
_08150D68: .4byte 0x04000079
_08150D6C:
	cmp r6, #3
	beq _08150D84
	b _08150DCC
_08150D72:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_08150D78:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _08150DD8
_08150D84:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _08150DAC
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _08150DC0 @ =0x04000090
	ldr r2, [r4, #0x24]
	ldr r0, [r2]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #4]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #8]
	str r0, [r1]
	adds r1, #4
	ldr r0, [r2, #0xc]
	str r0, [r1]
	str r2, [r4, #0x28]
_08150DAC:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08150DC4
	movs r0, #0xc0
	b _08150DE6
	.align 2, 0
_08150DC0: .4byte 0x04000090
_08150DC4:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _08150DE8
_08150DCC:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_08150DD8:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _08150DE6
	movs r0, #0x40
_08150DE6:
	strb r0, [r4, #0x1a]
_08150DE8:
	ldrb r1, [r4, #4]
	movs r2, #0
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	adds r1, r6, #1
	mov sl, r1
	movs r1, #0x40
	adds r1, r1, r4
	mov sb, r1
	cmp r0, #0
	bne _08150E02
	b _08150F3E
_08150E02:
	strb r2, [r4, #9]
	b _08150F6C
_08150E06:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08150E38
	ldrb r0, [r4, #0xd]
	subs r0, #1
	strb r0, [r4, #0xd]
	movs r2, #0xff
	ands r0, r2
	lsls r0, r0, #0x18
	adds r1, r6, #1
	mov sl, r1
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	ble _08150E2A
	b _08150F7E
_08150E2A:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _0815107C
_08150E38:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _08150E78
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08150E78
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08150EAA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08150F6C
	ldrb r2, [r4, #7]
	mov r8, r2
	b _08150F6C
_08150E78:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _08150F6C
	cmp r6, #3
	bne _08150E8A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_08150E8A:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _08150EDE
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _08150EDA
_08150EAA:
	ldrb r2, [r4, #0xc]
	ldrb r1, [r4, #0xa]
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, #0xff
	asrs r0, r0, #8
	movs r1, #0
	strb r0, [r4, #9]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08150E2A
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08150F7E
	movs r2, #8
	mov r8, r2
	b _08150F7E
_08150EDA:
	ldrb r0, [r4, #7]
	b _08150F6A
_08150EDE:
	cmp r0, #1
	bne _08150EEA
_08150EE2:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _08150F6A
_08150EEA:
	cmp r0, #2
	bne _08150F2E
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _08150F2A
_08150F02:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _08150F12
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _08150EAA
_08150F12:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _08150EE2
	movs r0, #8
	mov r8, r0
	b _08150EE2
_08150F2A:
	ldrb r0, [r4, #5]
	b _08150F6A
_08150F2E:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _08150F68
_08150F3E:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _08150F02
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _08150F6C
	ldrb r2, [r4, #5]
	mov r8, r2
	b _08150F6C
_08150F68:
	ldrb r0, [r4, #4]
_08150F6A:
	strb r0, [r4, #0xb]
_08150F6C:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _08150F7E
	subs r0, #1
	str r0, [sp]
	b _08150E78
_08150F7E:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _08150FF6
	cmp r6, #3
	bgt _08150FBE
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _08150FBE
	ldr r0, _08150FA8 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _08150FB0
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _08150FAC @ =0x000007FC
	b _08150FBA
	.align 2, 0
_08150FA8: .4byte 0x04000089
_08150FAC: .4byte 0x000007FC
_08150FB0:
	cmp r0, #0x7f
	bgt _08150FBE
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _08150FCC @ =0x000007FE
_08150FBA:
	ands r0, r1
	str r0, [r4, #0x20]
_08150FBE:
	cmp r6, #4
	beq _08150FD0
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _08150FDE
	.align 2, 0
_08150FCC: .4byte 0x000007FE
_08150FD0:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_08150FDE:
	movs r0, #0xc0
	ldrb r1, [r4, #0x1a]
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x21
	ldrb r1, [r1]
	adds r0, r1, r0
	strb r0, [r4, #0x1a]
	movs r2, #0xff
	ands r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_08150FF6:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _0815107C
	ldr r1, _08151040 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _08151048
	ldr r0, _08151044 @ =gCgb3Vol
	ldrb r1, [r4, #9]
	adds r0, r1, r0
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	movs r1, #0x80
	adds r0, r1, #0
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	cmp r0, #0
	beq _0815107C
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _0815107C
	.align 2, 0
_08151040: .4byte 0x04000081
_08151044: .4byte gCgb3Vol
_08151048:
	movs r0, #0xf
	mov r1, r8
	ands r1, r0
	mov r8, r1
	ldrb r2, [r4, #9]
	lsls r0, r2, #4
	add r0, r8
	ldr r1, [sp, #0xc]
	strb r0, [r1]
	movs r2, #0x80
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	cmp r6, #1
	bne _0815107C
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0815107C
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_0815107C:
	movs r0, #0
	strb r0, [r4, #0x1d]
_08151080:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _0815108A
	b _08150C80
_0815108A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayTempoControl
m4aMPlayTempoControl: @ 0x0815109C
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _081510C0 @ =0x68736D53
	cmp r3, r0
	bne _081510B8
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_081510B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081510C0: .4byte 0x68736D53

	thumb_func_start m4aMPlayVolumeControl
m4aMPlayVolumeControl: @ 0x081510C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _08151128 @ =0x68736D53
	cmp r3, r0
	bne _0815111C
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _08151118
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_081510F4:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _0815110E
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0815110E
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_0815110E:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _081510F4
_08151118:
	ldr r0, _08151128 @ =0x68736D53
	str r0, [r4, #0x34]
_0815111C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08151128: .4byte 0x68736D53

	thumb_func_start m4aMPlayPitchControl
m4aMPlayPitchControl: @ 0x0815112C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov ip, r1
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _0815119C @ =0x68736D53
	cmp r3, r0
	bne _0815118E
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _0815118A
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_08151164:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _08151180
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _08151180
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_08151180:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _08151164
_0815118A:
	ldr r0, _0815119C @ =0x68736D53
	str r0, [r4, #0x34]
_0815118E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815119C: .4byte 0x68736D53

	thumb_func_start m4aMPlayPanpotControl
m4aMPlayPanpotControl: @ 0x081511A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	ldr r3, [r4, #0x34]
	ldr r0, _08151204 @ =0x68736D53
	cmp r3, r0
	bne _081511F8
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _081511F4
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_081511D0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _081511EA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _081511EA
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_081511EA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _081511D0
_081511F4:
	ldr r0, _08151204 @ =0x68736D53
	str r0, [r4, #0x34]
_081511F8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08151204: .4byte 0x68736D53

	thumb_func_start ClearModM
ClearModM: @ 0x08151208
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _0815121C
	movs r0, #0xc
	b _0815121E
_0815121C:
	movs r0, #3
_0815121E:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start m4aMPlayModDepthSet
m4aMPlayModDepthSet: @ 0x08151228
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _08151298 @ =0x68736D53
	cmp r1, r0
	bne _08151288
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _08151284
	mov sb, r8
_08151258:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _0815127A
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _0815127A
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _0815127A
	adds r0, r4, #0
	bl ClearModM
_0815127A:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _08151258
_08151284:
	ldr r0, _08151298 @ =0x68736D53
	str r0, [r6, #0x34]
_08151288:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08151298: .4byte 0x68736D53

	thumb_func_start m4aMPlayLFOSpeedSet
m4aMPlayLFOSpeedSet: @ 0x0815129C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r1, [r6, #0x34]
	ldr r0, _0815130C @ =0x68736D53
	cmp r1, r0
	bne _081512FC
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _081512F8
	mov sb, r8
_081512CC:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _081512EE
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _081512EE
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _081512EE
	adds r0, r4, #0
	bl ClearModM
_081512EE:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _081512CC
_081512F8:
	ldr r0, _0815130C @ =0x68736D53
	str r0, [r6, #0x34]
_081512FC:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0815130C: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x08151310
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r1, [r6, #0x40]
	ldrb r5, [r1]
	adds r2, r1, #1
	str r2, [r6, #0x40]
	ldr r0, [r4, #0x18]
	ldrb r1, [r1, #1]
	adds r3, r1, r0
	adds r0, r2, #1
	str r0, [r6, #0x40]
	ldrb r2, [r2, #1]
	adds r0, #1
	str r0, [r6, #0x40]
	cmp r5, #0x11
	bls _08151334
	b _08151462
_08151334:
	lsls r0, r5, #2
	ldr r1, _08151340 @ =_08151344
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08151340: .4byte _08151344
_08151344: @ jump table
	.4byte _0815138C @ case 0
	.4byte _08151390 @ case 1
	.4byte _08151398 @ case 2
	.4byte _081513A0 @ case 3
	.4byte _081513AA @ case 4
	.4byte _081513B8 @ case 5
	.4byte _081513C6 @ case 6
	.4byte _081513CE @ case 7
	.4byte _081513D6 @ case 8
	.4byte _081513DE @ case 9
	.4byte _081513E6 @ case 10
	.4byte _081513EE @ case 11
	.4byte _081513F6 @ case 12
	.4byte _08151404 @ case 13
	.4byte _08151412 @ case 14
	.4byte _08151420 @ case 15
	.4byte _0815142E @ case 16
	.4byte _0815143C @ case 17
_0815138C:
	strb r2, [r3]
	b _08151462
_08151390:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _08151462
_08151398:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _08151462
_081513A0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _08151462
_081513AA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _08151462
_081513B8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _08151462
_081513C6:
	ldrb r3, [r3]
	cmp r3, r2
	beq _08151448
	b _0815145C
_081513CE:
	ldrb r3, [r3]
	cmp r3, r2
	bne _08151448
	b _0815145C
_081513D6:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _08151448
	b _0815145C
_081513DE:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _08151448
	b _0815145C
_081513E6:
	ldrb r3, [r3]
	cmp r3, r2
	bls _08151448
	b _0815145C
_081513EE:
	ldrb r3, [r3]
	cmp r3, r2
	blo _08151448
	b _0815145C
_081513F6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _08151448
	b _0815145C
_08151404:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _08151448
	b _0815145C
_08151412:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _08151448
	b _0815145C
_08151420:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08151448
	b _0815145C
_0815142E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _08151448
	b _0815145C
_0815143C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0815145C
_08151448:
	ldr r0, _08151458 @ =gUnk_03001514
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _08151462
	.align 2, 0
_08151458: .4byte gUnk_03001514
_0815145C:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_08151462:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x08151468
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _08151484 @ =gUnk_08B58738
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08151484: .4byte gUnk_08B58738

	thumb_func_start ply_xxx
ply_xxx: @ 0x08151488
	push {lr}
	ldr r2, _08151498 @ =gMPlayJumpTable
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08151498: .4byte gMPlayJumpTable

	thumb_func_start ply_xwave
ply_xwave: @ 0x0815149C
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _081514D4 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _081514D8 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _081514DC @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _081514E0 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081514D4: .4byte 0xFFFFFF00
_081514D8: .4byte 0xFFFF00FF
_081514DC: .4byte 0xFF00FFFF
_081514E0: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x081514E4
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x24
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xatta
ply_xatta: @ 0x081514F8
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	strb r2, [r0]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xdeca
ply_xdeca: @ 0x0815150C
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2d
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xsust
ply_xsust: @ 0x08151520
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2e
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xrele
ply_xrele: @ 0x08151534
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x2f
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xiecv
ply_xiecv: @ 0x08151548
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x08151554
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x08151560
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x26
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start ply_xswee
ply_xswee: @ 0x08151574
	ldr r0, [r1, #0x40]
	ldrb r0, [r0]
	adds r2, r1, #0
	adds r2, #0x27
	strb r0, [r2]
	ldr r0, [r1, #0x40]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0

	thumb_func_start nullsub_141
nullsub_141: @ 0x08151588
	bx lr
	.align 2, 0
