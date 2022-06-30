	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MidiKey2fr
MidiKey2fr: @ 0x02007204
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _02007218
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_02007218:
	ldr r3, _02007260 @ =gUnk_020101A0
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _02007264 @ =gUnk_02010254
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
	bl sub_020065E8
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_020065E8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02007260: .4byte gUnk_020101A0
_02007264: .4byte gUnk_02010254

	thumb_func_start DummyFunc
DummyFunc: @ 0x02007268
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x0200726C
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _02007280 @ =0x68736D53
	cmp r3, r0
	bne _0200727E
	ldr r0, [r2, #4]
	ldr r1, _02007284 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_0200727E:
	bx lr
	.align 2, 0
_02007280: .4byte 0x68736D53
_02007284: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x02007288
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _020072A4 @ =0x68736D53
	cmp r3, r0
	bne _020072A0
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_020072A0:
	bx lr
	.align 2, 0
_020072A4: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x020072A8
	push {r4, r5, r6, lr}
	ldr r0, _020072FC @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _02007300 @ =gUnk_03000000
	ldr r2, _02007304 @ =0x04000100
	bl CpuSet
	ldr r0, _02007308 @ =0x0201F0B0
	bl SoundInit_rev01
	ldr r0, _0200730C @ =0x020200F0
	bl MPlayExtender
	ldr r0, _02007310 @ =0x0095FA00
	bl SoundMode_rev01
	ldr r0, _02007314 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _020072F6
	ldr r5, _02007318 @ =gUnk_02011130
	adds r6, r0, #0
_020072DA:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen_rev01
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _0200731C @ =0x020202B0
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _020072DA
_020072F6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020072FC: .4byte SoundMainRAM
_02007300: .4byte gUnk_03000000
_02007304: .4byte 0x04000100
_02007308: .4byte 0x0201F0B0
_0200730C: .4byte 0x020200F0
_02007310: .4byte 0x0095FA00
_02007314: .4byte 0x00000003
_02007318: .4byte gUnk_02011130
_0200731C: .4byte 0x020202B0

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x02007320
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x0200732C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02007350 @ =gUnk_02011130
	ldr r1, _02007354 @ =gUnk_02011154
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
	bl MPlayStart_rev01
	pop {r0}
	bx r0
	.align 2, 0
_02007350: .4byte gUnk_02011130
_02007354: .4byte gUnk_02011154

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x02007358
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02007384 @ =gUnk_02011130
	ldr r1, _02007388 @ =gUnk_02011154
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
	beq _0200738C
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _020073A0
	.align 2, 0
_02007384: .4byte gUnk_02011130
_02007388: .4byte gUnk_02011154
_0200738C:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _02007398
	cmp r2, #0
	bge _020073A0
_02007398:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
_020073A0:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x020073A4
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _020073D0 @ =gUnk_02011130
	ldr r1, _020073D4 @ =gUnk_02011154
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
	beq _020073D8
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _020073F4
	.align 2, 0
_020073D0: .4byte gUnk_02011130
_020073D4: .4byte gUnk_02011154
_020073D8:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _020073EA
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
	b _020073F4
_020073EA:
	cmp r2, #0
	bge _020073F4
	adds r0, r1, #0
	bl MPlayContinue
_020073F4:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x020073F8
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02007424 @ =gUnk_02011130
	ldr r1, _02007428 @ =gUnk_02011154
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
	bne _0200741E
	adds r0, r2, #0
	bl MPlayStop_rev01
_0200741E:
	pop {r0}
	bx r0
	.align 2, 0
_02007424: .4byte gUnk_02011130
_02007428: .4byte gUnk_02011154

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x0200742C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02007458 @ =gUnk_02011130
	ldr r1, _0200745C @ =gUnk_02011154
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
	bne _02007452
	adds r0, r2, #0
	bl MPlayContinue
_02007452:
	pop {r0}
	bx r0
	.align 2, 0
_02007458: .4byte gUnk_02011130
_0200745C: .4byte gUnk_02011154

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x02007460
	push {r4, r5, lr}
	ldr r0, _02007484 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0200747E
	ldr r5, _02007488 @ =gUnk_02011130
	adds r4, r0, #0
_02007470:
	ldr r0, [r5]
	bl MPlayStop_rev01
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _02007470
_0200747E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02007484: .4byte 0x00000003
_02007488: .4byte gUnk_02011130

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x0200748C
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x02007498
	push {r4, r5, lr}
	ldr r0, _020074BC @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _020074B6
	ldr r5, _020074C0 @ =gUnk_02011130
	adds r4, r0, #0
_020074A8:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _020074A8
_020074B6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020074BC: .4byte 0x00000003
_020074C0: .4byte gUnk_02011130

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x020074C4
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutPause
m4aMPlayFadeOutPause: @ 0x020074D4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _020074EC @ =0x68736D53
	cmp r3, r0
	bne _020074EA
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _020074F0 @ =0x00000101
	strh r0, [r2, #0x28]
_020074EA:
	bx lr
	.align 2, 0
_020074EC: .4byte 0x68736D53
_020074F0: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeInContinue
m4aMPlayFadeInContinue: @ 0x020074F4
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _02007514 @ =0x68736D53
	cmp r3, r0
	bne _02007512
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _02007518 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_02007512:
	bx lr
	.align 2, 0
_02007514: .4byte 0x68736D53
_02007518: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x0200751C
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _0200755E
	movs r7, #0x80
_02007528:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _02007556
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _02007556
	adds r0, r4, #0
	bl Clear64byte_rev
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
_02007556:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _02007528
_0200755E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x02007564
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _0200762C @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _02007630 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _02007634 @ =0x04000063
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
	ldr r0, _02007638 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _0200763C @ =0x68736D53
	cmp r6, r0
	bne _02007624
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _02007640 @ =0x02020060
	ldr r0, _02007644 @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _02007648 @ =ply_lfos_rev01
	str r0, [r1, #0x44]
	ldr r0, _0200764C @ =ply_mod_rev01
	str r0, [r1, #0x4c]
	ldr r0, _02007650 @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _02007654 @ =ply_endtie_rev01
	str r0, [r1, #0x74]
	ldr r0, _02007658 @ =SampFreqSet_rev01
	str r0, [r1, #0x78]
	ldr r0, _0200765C @ =TrackStop_rev01
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _02007660 @ =FadeOutBody_rev01
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _02007664 @ =TrkVolPitSet_rev01
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _02007668 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _0200766C @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _02007670 @ =MidiKey2CgbFr
	str r0, [r4, #0x30]
	ldr r0, _02007674 @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _02007678 @ =0x05000040
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
_02007624:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200762C: .4byte 0x04000084
_02007630: .4byte 0x04000080
_02007634: .4byte 0x04000063
_02007638: .4byte 0x03007FF0
_0200763C: .4byte 0x68736D53
_02007640: .4byte 0x02020060
_02007644: .4byte ply_memacc
_02007648: .4byte ply_lfos_rev01
_0200764C: .4byte ply_mod_rev01
_02007650: .4byte ply_xcmd
_02007654: .4byte ply_endtie_rev01
_02007658: .4byte SampFreqSet_rev01
_0200765C: .4byte TrackStop_rev01
_02007660: .4byte FadeOutBody_rev01
_02007664: .4byte TrkVolPitSet_rev01
_02007668: .4byte CgbSound
_0200766C: .4byte CgbOscOff
_02007670: .4byte MidiKey2CgbFr
_02007674: .4byte 0x00000000
_02007678: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x0200767C
	svc #0x2a
	bx lr

	thumb_func_start ClearChain_rev
ClearChain_rev: @ 0x02007680
	push {lr}
	ldr r1, _02007690 @ =0x020200E8
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_02007690: .4byte 0x020200E8

	thumb_func_start Clear64byte_rev
Clear64byte_rev: @ 0x02007694
	push {lr}
	ldr r1, _020076A4 @ =0x020200EC
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_020076A4: .4byte 0x020200EC

	thumb_func_start SoundInit_rev01
SoundInit_rev01: @ 0x020076A8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _02007760 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _020076C4
	ldr r0, _02007764 @ =0x84400004
	str r0, [r1]
_020076C4:
	ldr r1, _02007768 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _020076D2
	ldr r0, _02007764 @ =0x84400004
	str r0, [r1]
_020076D2:
	ldr r0, _0200776C @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _02007770 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _02007774 @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _02007778 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _0200777C @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _02007780 @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _02007784 @ =0x040000A4
	str r0, [r1]
	ldr r0, _02007788 @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _0200778C @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _02007790 @ =ply_note_rev01
	str r0, [r5, #0x38]
	ldr r0, _02007794 @ =DummyFunc_rev
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _02007798 @ =0x02020060
	adds r0, r4, #0
	bl MPlyJmpTblCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampFreqSet_rev01
	ldr r0, _0200779C @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02007760: .4byte 0x040000C4
_02007764: .4byte 0x84400004
_02007768: .4byte 0x040000D0
_0200776C: .4byte 0x040000C6
_02007770: .4byte 0x04000084
_02007774: .4byte 0x0000A90E
_02007778: .4byte 0x04000089
_0200777C: .4byte 0x040000BC
_02007780: .4byte 0x040000A0
_02007784: .4byte 0x040000A4
_02007788: .4byte 0x03007FF0
_0200778C: .4byte 0x050003EC
_02007790: .4byte ply_note_rev01
_02007794: .4byte DummyFunc_rev
_02007798: .4byte 0x02020060
_0200779C: .4byte 0x68736D53

	thumb_func_start SampFreqSet_rev01
SampFreqSet_rev01: @ 0x020077A0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _02007820 @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _02007824 @ =gUnk_02010284
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
	ldr r0, _02007828 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _0200782C @ =0x00001388
	adds r0, r0, r1
	ldr r1, _02007830 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _02007834 @ =0x04000102
	strh r6, [r0]
	ldr r4, _02007838 @ =0x04000100
	ldr r0, _0200783C @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl SoundVSyncOn_rev01
	ldr r1, _02007840 @ =0x04000006
_02007804:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _02007804
	ldr r1, _02007840 @ =0x04000006
_0200780C:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _0200780C
	ldr r1, _02007834 @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02007820: .4byte 0x03007FF0
_02007824: .4byte gUnk_02010284
_02007828: .4byte 0x00091D1B
_0200782C: .4byte 0x00001388
_02007830: .4byte 0x00002710
_02007834: .4byte 0x04000102
_02007838: .4byte 0x04000100
_0200783C: .4byte 0x00044940
_02007840: .4byte 0x04000006

	thumb_func_start SoundMode_rev01
SoundMode_rev01: @ 0x02007844
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _020078D0 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _020078D4 @ =0x68736D53
	cmp r1, r0
	bne _020078CA
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _02007866
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_02007866:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _02007886
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_0200787C:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _0200787C
_02007886:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _02007894
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_02007894:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _020078B2
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _020078D8 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_020078B2:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _020078C6
	bl SoundVSyncOff_rev01
	adds r0, r4, #0
	bl SampFreqSet_rev01
_020078C6:
	ldr r0, _020078D4 @ =0x68736D53
	str r0, [r5]
_020078CA:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020078D0: .4byte 0x03007FF0
_020078D4: .4byte 0x68736D53
_020078D8: .4byte 0x04000089

	thumb_func_start SoundClear_rev01
SoundClear_rev01: @ 0x020078DC
	push {r4, r5, r6, r7, lr}
	ldr r0, _02007928 @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _0200792C @ =0x68736D53
	cmp r1, r0
	bne _02007922
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_020078F6:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _020078F6
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _0200791E
	movs r5, #1
	movs r7, #0
_0200790A:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _0200790A
_0200791E:
	ldr r0, _0200792C @ =0x68736D53
	str r0, [r6]
_02007922:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02007928: .4byte 0x03007FF0
_0200792C: .4byte 0x68736D53

	thumb_func_start SoundVSyncOff_rev01
SoundVSyncOff_rev01: @ 0x02007930
	push {lr}
	sub sp, #4
	ldr r0, _02007990 @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _02007994 @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _02007988
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _02007998 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _0200795A
	ldr r0, _0200799C @ =0x84400004
	str r0, [r1]
_0200795A:
	ldr r1, _020079A0 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _02007968
	ldr r0, _0200799C @ =0x84400004
	str r0, [r1]
_02007968:
	ldr r0, _020079A4 @ =0x040000C6
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
	ldr r2, _020079A8 @ =0x05000318
	mov r0, sp
	bl CpuSet
_02007988:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_02007990: .4byte 0x03007FF0
_02007994: .4byte 0x978C92AD
_02007998: .4byte 0x040000C4
_0200799C: .4byte 0x84400004
_020079A0: .4byte 0x040000D0
_020079A4: .4byte 0x040000C6
_020079A8: .4byte 0x05000318

	thumb_func_start SoundVSyncOn_rev01
SoundVSyncOn_rev01: @ 0x020079AC
	push {r4, lr}
	ldr r0, _020079DC @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _020079E0 @ =0x68736D53
	cmp r3, r0
	beq _020079D4
	ldr r0, _020079E4 @ =0x040000C6
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
_020079D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020079DC: .4byte 0x03007FF0
_020079E0: .4byte 0x68736D53
_020079E4: .4byte 0x040000C6

	thumb_func_start MPlayOpen_rev01
MPlayOpen_rev01: @ 0x020079E8
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _02007A4C
	cmp r4, #0x10
	bls _020079FC
	movs r4, #0x10
_020079FC:
	ldr r0, _02007A54 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _02007A58 @ =0x68736D53
	cmp r1, r0
	bne _02007A4C
	adds r0, r1, #1
	str r0, [r5]
	adds r0, r7, #0
	bl Clear64byte_rev
	str r6, [r7, #0x2c]
	strb r4, [r7, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r7, #4]
	cmp r4, #0
	beq _02007A30
	movs r1, #0
_02007A22:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _02007A22
_02007A30:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02007A40
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_02007A40:
	str r7, [r5, #0x24]
	ldr r0, _02007A5C @ =MPlayMain_rev01
	str r0, [r5, #0x20]
	ldr r0, _02007A58 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_02007A4C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02007A54: .4byte 0x03007FF0
_02007A58: .4byte 0x68736D53
_02007A5C: .4byte MPlayMain_rev01

	thumb_func_start MPlayStart_rev01
MPlayStart_rev01: @ 0x02007A60
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _02007B40 @ =0x68736D53
	cmp r1, r0
	bne _02007B36
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _02007AA2
	ldr r0, [r5]
	cmp r0, #0
	beq _02007A8C
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _02007A98
_02007A8C:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _02007AA2
	cmp r1, #0
	blt _02007AA2
_02007A98:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _02007B36
_02007AA2:
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
	bge _02007B02
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _02007B22
	mov r8, r6
_02007AD6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
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
	bge _02007B02
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _02007AD6
_02007B02:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _02007B22
	movs r1, #0
	mov r8, r1
_02007B0C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _02007B0C
_02007B22:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _02007B32
	ldrb r0, [r7, #3]
	bl SoundMode_rev01
_02007B32:
	ldr r0, _02007B40 @ =0x68736D53
	str r0, [r5, #0x34]
_02007B36:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02007B40: .4byte 0x68736D53

	thumb_func_start MPlayStop_rev01
MPlayStop_rev01: @ 0x02007B44
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _02007B80 @ =0x68736D53
	cmp r1, r0
	bne _02007B7A
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
	ble _02007B76
_02007B66:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop_rev01
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _02007B66
_02007B76:
	ldr r0, _02007B80 @ =0x68736D53
	str r0, [r6, #0x34]
_02007B7A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02007B80: .4byte 0x68736D53

	thumb_func_start FadeOutBody_rev01
FadeOutBody_rev01: @ 0x02007B84
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _02007C46
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _02007BC4 @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _02007C46
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02007BC8
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _02007C1A
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _02007C1A
	.align 2, 0
_02007BC4: .4byte 0x0000FFFF
_02007BC8:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _02007C1A
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _02007BFA
_02007BDE:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _02007BF2
	strb r0, [r4]
_02007BF2:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _02007BDE
_02007BFA:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _02007C0E
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _02007C12
_02007C0E:
	movs r0, #0x80
	lsls r0, r0, #0x18
_02007C12:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _02007C46
_02007C1A:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _02007C46
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_02007C28:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _02007C3E
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_02007C3E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _02007C28
_02007C46:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet_rev01
TrkVolPitSet_rev01: @ 0x02007C4C
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _02007CB0
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _02007C74
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_02007C74:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _02007C8A
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_02007C8A:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _02007C96
	adds r1, r0, #0
	b _02007C9C
_02007C96:
	cmp r1, #0x7f
	ble _02007C9C
	movs r1, #0x7f
_02007C9C:
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
_02007CB0:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _02007CF4
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
	bne _02007CEE
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_02007CEE:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_02007CF4:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKey2CgbFr
MidiKey2CgbFr: @ 0x02007D00
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _02007D38
	cmp r5, #0x14
	bhi _02007D1C
	movs r5, #0
	b _02007D2A
_02007D1C:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _02007D2A
	movs r5, #0x3b
_02007D2A:
	ldr r0, _02007D34 @ =gUnk_02010338
	adds r0, r5, r0
	ldrb r0, [r0]
	b _02007D9A
	.align 2, 0
_02007D34: .4byte gUnk_02010338
_02007D38:
	cmp r5, #0x23
	bhi _02007D44
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _02007D56
_02007D44:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _02007D56
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_02007D56:
	ldr r3, _02007DA0 @ =gUnk_0201029C
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _02007DA4 @ =gUnk_02010320
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
_02007D9A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02007DA0: .4byte gUnk_0201029C
_02007DA4: .4byte gUnk_02010320

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x02007DA8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _02007DD0
	cmp r0, #2
	bgt _02007DBC
	cmp r0, #1
	beq _02007DC2
	b _02007DE4
_02007DBC:
	cmp r1, #3
	beq _02007DD8
	b _02007DE4
_02007DC2:
	ldr r1, _02007DCC @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _02007DEC
	.align 2, 0
_02007DCC: .4byte 0x04000063
_02007DD0:
	ldr r1, _02007DD4 @ =0x04000069
	b _02007DE6
	.align 2, 0
_02007DD4: .4byte 0x04000069
_02007DD8:
	ldr r1, _02007DE0 @ =0x04000070
	movs r0, #0
	b _02007DEE
	.align 2, 0
_02007DE0: .4byte 0x04000070
_02007DE4:
	ldr r1, _02007DF4 @ =0x04000079
_02007DE6:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_02007DEC:
	movs r0, #0x80
_02007DEE:
	strb r0, [r1]
	bx lr
	.align 2, 0
_02007DF4: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x02007DF8
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _02007E18
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _02007E24
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _02007E32
_02007E18:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _02007E24
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _02007E32
_02007E24:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _02007E42
_02007E32:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _02007E44
	movs r0, #0xf
_02007E42:
	strb r0, [r1, #0xa]
_02007E44:
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
CgbSound: @ 0x02007E60
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _02007E80 @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _02007E84
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _02007E8A
	.align 2, 0
_02007E80: .4byte 0x03007FF0
_02007E84:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_02007E8A:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_02007E90:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _02007EA6
	b _02008290
_02007EA6:
	cmp r6, #2
	beq _02007ED8
	cmp r6, #2
	bgt _02007EB4
	cmp r6, #1
	beq _02007EBA
	b _02007F10
_02007EB4:
	cmp r6, #3
	beq _02007EF0
	b _02007F10
_02007EBA:
	ldr r0, _02007ECC @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _02007ED0 @ =0x04000062
	ldr r2, _02007ED4 @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _02007F20
	.align 2, 0
_02007ECC: .4byte 0x04000060
_02007ED0: .4byte 0x04000062
_02007ED4: .4byte 0x04000063
_02007ED8:
	ldr r0, _02007EE4 @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _02007EE8 @ =0x04000068
	ldr r2, _02007EEC @ =0x04000069
	b _02007F18
	.align 2, 0
_02007EE4: .4byte 0x04000061
_02007EE8: .4byte 0x04000068
_02007EEC: .4byte 0x04000069
_02007EF0:
	ldr r0, _02007F04 @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _02007F08 @ =0x04000072
	ldr r2, _02007F0C @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _02007F20
	.align 2, 0
_02007F04: .4byte 0x04000070
_02007F08: .4byte 0x04000072
_02007F0C: .4byte 0x04000073
_02007F10:
	ldr r0, _02007F70 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _02007F74 @ =0x04000078
	ldr r2, _02007F78 @ =0x04000079
_02007F18:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_02007F20:
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
	beq _02008016
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
	bne _0200803A
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _02007F88
	cmp r6, #2
	bgt _02007F7C
	cmp r6, #1
	beq _02007F82
	b _02007FDC
	.align 2, 0
_02007F70: .4byte 0x04000071
_02007F74: .4byte 0x04000078
_02007F78: .4byte 0x04000079
_02007F7C:
	cmp r6, #3
	beq _02007F94
	b _02007FDC
_02007F82:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_02007F88:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _02007FE8
_02007F94:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _02007FBC
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _02007FD0 @ =0x04000090
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
_02007FBC:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _02007FD4
	movs r0, #0xc0
	b _02007FF6
	.align 2, 0
_02007FD0: .4byte 0x04000090
_02007FD4:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _02007FF8
_02007FDC:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_02007FE8:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _02007FF6
	movs r0, #0x40
_02007FF6:
	strb r0, [r4, #0x1a]
_02007FF8:
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
	bne _02008012
	b _0200814E
_02008012:
	strb r2, [r4, #9]
	b _0200817C
_02008016:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _02008048
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
	ble _0200803A
	b _0200818E
_0200803A:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _0200828C
_02008048:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _02008088
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _02008088
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _020080BA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0200817C
	ldrb r2, [r4, #7]
	mov r8, r2
	b _0200817C
_02008088:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _0200817C
	cmp r6, #3
	bne _0200809A
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_0200809A:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _020080EE
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _020080EA
_020080BA:
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
	beq _0200803A
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _0200818E
	movs r2, #8
	mov r8, r2
	b _0200818E
_020080EA:
	ldrb r0, [r4, #7]
	b _0200817A
_020080EE:
	cmp r0, #1
	bne _020080FA
_020080F2:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _0200817A
_020080FA:
	cmp r0, #2
	bne _0200813E
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _0200813A
_02008112:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _02008122
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _020080BA
_02008122:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _020080F2
	movs r0, #8
	mov r8, r0
	b _020080F2
_0200813A:
	ldrb r0, [r4, #5]
	b _0200817A
_0200813E:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _02008178
_0200814E:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _02008112
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _0200817C
	ldrb r2, [r4, #5]
	mov r8, r2
	b _0200817C
_02008178:
	ldrb r0, [r4, #4]
_0200817A:
	strb r0, [r4, #0xb]
_0200817C:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _0200818E
	subs r0, #1
	str r0, [sp]
	b _02008088
_0200818E:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _02008206
	cmp r6, #3
	bgt _020081CE
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _020081CE
	ldr r0, _020081B8 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _020081C0
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _020081BC @ =0x000007FC
	b _020081CA
	.align 2, 0
_020081B8: .4byte 0x04000089
_020081BC: .4byte 0x000007FC
_020081C0:
	cmp r0, #0x7f
	bgt _020081CE
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _020081DC @ =0x000007FE
_020081CA:
	ands r0, r1
	str r0, [r4, #0x20]
_020081CE:
	cmp r6, #4
	beq _020081E0
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _020081EE
	.align 2, 0
_020081DC: .4byte 0x000007FE
_020081E0:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_020081EE:
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
_02008206:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _0200828C
	ldr r1, _02008250 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _02008258
	ldr r0, _02008254 @ =gUnk_02010374
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
	beq _0200828C
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _0200828C
	.align 2, 0
_02008250: .4byte 0x04000081
_02008254: .4byte gUnk_02010374
_02008258:
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
	bne _0200828C
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _0200828C
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_0200828C:
	movs r0, #0
	strb r0, [r4, #0x1d]
_02008290:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _0200829A
	b _02007E90
_0200829A:
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start MPlayTempoControl
MPlayTempoControl: @ 0x020082AC
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _020082D0 @ =0x68736D53
	cmp r3, r0
	bne _020082C8
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_020082C8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020082D0: .4byte 0x68736D53

	thumb_func_start MPlayVolumeControl
MPlayVolumeControl: @ 0x020082D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _02008338 @ =0x68736D53
	cmp r3, r0
	bne _0200832C
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _02008328
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_02008304:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _0200831E
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _0200831E
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_0200831E:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _02008304
_02008328:
	ldr r0, _02008338 @ =0x68736D53
	str r0, [r4, #0x34]
_0200832C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02008338: .4byte 0x68736D53

	thumb_func_start MPlayPitchControl
MPlayPitchControl: @ 0x0200833C
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
	ldr r0, _020083AC @ =0x68736D53
	cmp r3, r0
	bne _0200839E
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _0200839A
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_02008374:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _02008390
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _02008390
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_02008390:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _02008374
_0200839A:
	ldr r0, _020083AC @ =0x68736D53
	str r0, [r4, #0x34]
_0200839E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020083AC: .4byte 0x68736D53

	thumb_func_start MPlayPanpotControl
MPlayPanpotControl: @ 0x020083B0
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
	ldr r0, _02008414 @ =0x68736D53
	cmp r3, r0
	bne _02008408
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _02008404
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_020083E0:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _020083FA
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _020083FA
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_020083FA:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _020083E0
_02008404:
	ldr r0, _02008414 @ =0x68736D53
	str r0, [r4, #0x34]
_02008408:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02008414: .4byte 0x68736D53

	thumb_func_start MP_clear_modM
MP_clear_modM: @ 0x02008418
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _0200842C
	movs r0, #0xc
	b _0200842E
_0200842C:
	movs r0, #3
_0200842E:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start MPlayModDepthSet
MPlayModDepthSet: @ 0x02008438
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
	ldr r0, _020084A8 @ =0x68736D53
	cmp r1, r0
	bne _02008498
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _02008494
	mov sb, r8
_02008468:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _0200848A
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _0200848A
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _0200848A
	adds r0, r4, #0
	bl MP_clear_modM
_0200848A:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _02008468
_02008494:
	ldr r0, _020084A8 @ =0x68736D53
	str r0, [r6, #0x34]
_02008498:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020084A8: .4byte 0x68736D53

	thumb_func_start MPlayLFOSpeedSet
MPlayLFOSpeedSet: @ 0x020084AC
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
	ldr r0, _0200851C @ =0x68736D53
	cmp r1, r0
	bne _0200850C
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _02008508
	mov sb, r8
_020084DC:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _020084FE
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _020084FE
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _020084FE
	adds r0, r4, #0
	bl MP_clear_modM
_020084FE:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _020084DC
_02008508:
	ldr r0, _0200851C @ =0x68736D53
	str r0, [r6, #0x34]
_0200850C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200851C: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x02008520
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
	bls _02008544
	b _02008672
_02008544:
	lsls r0, r5, #2
	ldr r1, _02008550 @ =_02008554
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02008550: .4byte _02008554
_02008554: @ jump table
	.4byte _0200859C @ case 0
	.4byte _020085A0 @ case 1
	.4byte _020085A8 @ case 2
	.4byte _020085B0 @ case 3
	.4byte _020085BA @ case 4
	.4byte _020085C8 @ case 5
	.4byte _020085D6 @ case 6
	.4byte _020085DE @ case 7
	.4byte _020085E6 @ case 8
	.4byte _020085EE @ case 9
	.4byte _020085F6 @ case 10
	.4byte _020085FE @ case 11
	.4byte _02008606 @ case 12
	.4byte _02008614 @ case 13
	.4byte _02008622 @ case 14
	.4byte _02008630 @ case 15
	.4byte _0200863E @ case 16
	.4byte _0200864C @ case 17
_0200859C:
	strb r2, [r3]
	b _02008672
_020085A0:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _02008672
_020085A8:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _02008672
_020085B0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _02008672
_020085BA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _02008672
_020085C8:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _02008672
_020085D6:
	ldrb r3, [r3]
	cmp r3, r2
	beq _02008658
	b _0200866C
_020085DE:
	ldrb r3, [r3]
	cmp r3, r2
	bne _02008658
	b _0200866C
_020085E6:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _02008658
	b _0200866C
_020085EE:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _02008658
	b _0200866C
_020085F6:
	ldrb r3, [r3]
	cmp r3, r2
	bls _02008658
	b _0200866C
_020085FE:
	ldrb r3, [r3]
	cmp r3, r2
	blo _02008658
	b _0200866C
_02008606:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _02008658
	b _0200866C
_02008614:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _02008658
	b _0200866C
_02008622:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _02008658
	b _0200866C
_02008630:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _02008658
	b _0200866C
_0200863E:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _02008658
	b _0200866C
_0200864C:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _0200866C
_02008658:
	ldr r0, _02008668 @ =0x02020064
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _02008672
	.align 2, 0
_02008668: .4byte 0x02020064
_0200866C:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_02008672:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x02008678
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _02008694 @ =gUnk_020103B8
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_02008694: .4byte gUnk_020103B8

	thumb_func_start ply_xxx
ply_xxx: @ 0x02008698
	push {lr}
	ldr r2, _020086A8 @ =0x02020060
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_020086A8: .4byte 0x02020060

	thumb_func_start ply_xwave
ply_xwave: @ 0x020086AC
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _020086E4 @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _020086E8 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _020086EC @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _020086F0 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020086E4: .4byte 0xFFFFFF00
_020086E8: .4byte 0xFFFF00FF
_020086EC: .4byte 0xFF00FFFF
_020086F0: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x020086F4
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
ply_xatta: @ 0x02008708
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
ply_xdeca: @ 0x0200871C
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
ply_xsust: @ 0x02008730
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
ply_xrele: @ 0x02008744
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
ply_xiecv: @ 0x02008758
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x02008764
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x02008770
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
ply_xswee: @ 0x02008784
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

	thumb_func_start DummyFunc_rev
DummyFunc_rev: @ 0x02008798
	bx lr
	.align 2, 0
