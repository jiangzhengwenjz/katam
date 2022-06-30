	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start MidiKey2fr
MidiKey2fr: @ 0x020082DC
	push {r4, r5, r6, r7, lr}
	mov ip, r0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r7, r2, #0x18
	cmp r6, #0xb2
	bls _020082F0
	movs r6, #0xb2
	movs r7, #0xff
	lsls r7, r7, #0x18
_020082F0:
	ldr r3, _02008338 @ =gUnk_020143D8
	adds r0, r6, r3
	ldrb r5, [r0]
	ldr r4, _0200833C @ =gUnk_0201448C
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
	bl sub_020076C0
	adds r1, r0, #0
	adds r1, r5, r1
	adds r0, r4, #0
	bl sub_020076C0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02008338: .4byte gUnk_020143D8
_0200833C: .4byte gUnk_0201448C

	thumb_func_start DummyFunc
DummyFunc: @ 0x02008340
	bx lr
	.align 2, 0

	thumb_func_start MPlayContinue
MPlayContinue: @ 0x02008344
	adds r2, r0, #0
	ldr r3, [r2, #0x34]
	ldr r0, _02008358 @ =0x68736D53
	cmp r3, r0
	bne _02008356
	ldr r0, [r2, #4]
	ldr r1, _0200835C @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_02008356:
	bx lr
	.align 2, 0
_02008358: .4byte 0x68736D53
_0200835C: .4byte 0x7FFFFFFF

	thumb_func_start MPlayFadeOut
MPlayFadeOut: @ 0x02008360
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _0200837C @ =0x68736D53
	cmp r3, r0
	bne _02008378
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x28]
_02008378:
	bx lr
	.align 2, 0
_0200837C: .4byte 0x68736D53

	thumb_func_start m4aSoundInit
m4aSoundInit: @ 0x02008380
	push {r4, r5, r6, lr}
	ldr r0, _020083D4 @ =SoundMainRAM
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _020083D8 @ =gUnk_03000000
	ldr r2, _020083DC @ =0x04000100
	bl CpuSet
	ldr r0, _020083E0 @ =gUnk_02022E20
	bl SoundInit_rev01
	ldr r0, _020083E4 @ =gUnk_02023E60
	bl MPlayExtender
	ldr r0, _020083E8 @ =0x0095FA00
	bl SoundMode_rev01
	ldr r0, _020083EC @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _020083CE
	ldr r5, _020083F0 @ =gUnk_02015200
	adds r6, r0, #0
_020083B2:
	ldr r4, [r5]
	ldr r1, [r5, #4]
	ldrb r2, [r5, #8]
	adds r0, r4, #0
	bl MPlayOpen_rev01
	ldrh r0, [r5, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, _020083F4 @ =gUnk_02024020
	str r0, [r4, #0x18]
	adds r5, #0xc
	subs r6, #1
	cmp r6, #0
	bne _020083B2
_020083CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020083D4: .4byte SoundMainRAM
_020083D8: .4byte gUnk_03000000
_020083DC: .4byte 0x04000100
_020083E0: .4byte gUnk_02022E20
_020083E4: .4byte gUnk_02023E60
_020083E8: .4byte 0x0095FA00
_020083EC: .4byte 0x00000003
_020083F0: .4byte gUnk_02015200
_020083F4: .4byte gUnk_02024020

	thumb_func_start m4aSoundMain
m4aSoundMain: @ 0x020083F8
	push {lr}
	bl SoundMain
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aSongNumStart
m4aSongNumStart: @ 0x02008404
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02008428 @ =gUnk_02015200
	ldr r1, _0200842C @ =gUnk_02015224
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
_02008428: .4byte gUnk_02015200
_0200842C: .4byte gUnk_02015224

	thumb_func_start m4aSongNumStartOrChange
m4aSongNumStartOrChange: @ 0x02008430
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _0200845C @ =gUnk_02015200
	ldr r1, _02008460 @ =gUnk_02015224
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
	beq _02008464
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _02008478
	.align 2, 0
_0200845C: .4byte gUnk_02015200
_02008460: .4byte gUnk_02015224
_02008464:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	beq _02008470
	cmp r2, #0
	bge _02008478
_02008470:
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
_02008478:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStartOrContinue
m4aSongNumStartOrContinue: @ 0x0200847C
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _020084A8 @ =gUnk_02015200
	ldr r1, _020084AC @ =gUnk_02015224
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
	beq _020084B0
	adds r0, r1, #0
	adds r1, r2, #0
	bl MPlayStart_rev01
	b _020084CC
	.align 2, 0
_020084A8: .4byte gUnk_02015200
_020084AC: .4byte gUnk_02015224
_020084B0:
	ldr r2, [r1, #4]
	ldrh r0, [r1, #4]
	cmp r0, #0
	bne _020084C2
	adds r0, r1, #0
	adds r1, r3, #0
	bl MPlayStart_rev01
	b _020084CC
_020084C2:
	cmp r2, #0
	bge _020084CC
	adds r0, r1, #0
	bl MPlayContinue
_020084CC:
	pop {r0}
	bx r0

	thumb_func_start m4aSongNumStop
m4aSongNumStop: @ 0x020084D0
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _020084FC @ =gUnk_02015200
	ldr r1, _02008500 @ =gUnk_02015224
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
	bne _020084F6
	adds r0, r2, #0
	bl MPlayStop_rev01
_020084F6:
	pop {r0}
	bx r0
	.align 2, 0
_020084FC: .4byte gUnk_02015200
_02008500: .4byte gUnk_02015224

	thumb_func_start m4aSongNumContinue
m4aSongNumContinue: @ 0x02008504
	push {lr}
	lsls r0, r0, #0x10
	ldr r2, _02008530 @ =gUnk_02015200
	ldr r1, _02008534 @ =gUnk_02015224
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
	bne _0200852A
	adds r0, r2, #0
	bl MPlayContinue
_0200852A:
	pop {r0}
	bx r0
	.align 2, 0
_02008530: .4byte gUnk_02015200
_02008534: .4byte gUnk_02015224

	thumb_func_start m4aMPlayAllStop
m4aMPlayAllStop: @ 0x02008538
	push {r4, r5, lr}
	ldr r0, _0200855C @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _02008556
	ldr r5, _02008560 @ =gUnk_02015200
	adds r4, r0, #0
_02008548:
	ldr r0, [r5]
	bl MPlayStop_rev01
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _02008548
_02008556:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200855C: .4byte 0x00000003
_02008560: .4byte gUnk_02015200

	thumb_func_start m4aMPlayContinue
m4aMPlayContinue: @ 0x02008564
	push {lr}
	bl MPlayContinue
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayAllContinue
m4aMPlayAllContinue: @ 0x02008570
	push {r4, r5, lr}
	ldr r0, _02008594 @ =0x00000003
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _0200858E
	ldr r5, _02008598 @ =gUnk_02015200
	adds r4, r0, #0
_02008580:
	ldr r0, [r5]
	bl MPlayContinue
	adds r5, #0xc
	subs r4, #1
	cmp r4, #0
	bne _02008580
_0200858E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008594: .4byte 0x00000003
_02008598: .4byte gUnk_02015200

	thumb_func_start m4aMPlayFadeOut
m4aMPlayFadeOut: @ 0x0200859C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	bl MPlayFadeOut
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start m4aMPlayFadeOutPause
m4aMPlayFadeOutPause: @ 0x020085AC
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _020085C4 @ =0x68736D53
	cmp r3, r0
	bne _020085C2
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	ldr r0, _020085C8 @ =0x00000101
	strh r0, [r2, #0x28]
_020085C2:
	bx lr
	.align 2, 0
_020085C4: .4byte 0x68736D53
_020085C8: .4byte 0x00000101

	thumb_func_start m4aMPlayFadeInContinue
m4aMPlayFadeInContinue: @ 0x020085CC
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _020085EC @ =0x68736D53
	cmp r3, r0
	bne _020085EA
	strh r1, [r2, #0x26]
	strh r1, [r2, #0x24]
	movs r0, #2
	strh r0, [r2, #0x28]
	ldr r0, [r2, #4]
	ldr r1, _020085F0 @ =0x7FFFFFFF
	ands r0, r1
	str r0, [r2, #4]
_020085EA:
	bx lr
	.align 2, 0
_020085EC: .4byte 0x68736D53
_020085F0: .4byte 0x7FFFFFFF

	thumb_func_start m4aMPlayImmInit
m4aMPlayImmInit: @ 0x020085F4
	push {r4, r5, r6, r7, lr}
	ldrb r5, [r0, #8]
	ldr r4, [r0, #0x2c]
	cmp r5, #0
	ble _02008636
	movs r7, #0x80
_02008600:
	ldrb r1, [r4]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _0200862E
	movs r6, #0x40
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0200862E
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
_0200862E:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _02008600
_02008636:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start MPlayExtender
MPlayExtender: @ 0x0200863C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r1, _02008704 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	ldr r3, _02008708 @ =0x04000080
	movs r2, #0
	strh r2, [r3]
	ldr r0, _0200870C @ =0x04000063
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
	ldr r0, _02008710 @ =0x03007FF0
	ldr r4, [r0]
	ldr r6, [r4]
	ldr r0, _02008714 @ =0x68736D53
	cmp r6, r0
	bne _020086FC
	adds r0, r6, #1
	str r0, [r4]
	ldr r1, _02008718 @ =gUnk_02023DD0
	ldr r0, _0200871C @ =ply_memacc
	str r0, [r1, #0x20]
	ldr r0, _02008720 @ =ply_lfos_rev01
	str r0, [r1, #0x44]
	ldr r0, _02008724 @ =ply_mod_rev01
	str r0, [r1, #0x4c]
	ldr r0, _02008728 @ =ply_xcmd
	str r0, [r1, #0x70]
	ldr r0, _0200872C @ =ply_endtie_rev01
	str r0, [r1, #0x74]
	ldr r0, _02008730 @ =SampFreqSet_rev01
	str r0, [r1, #0x78]
	ldr r0, _02008734 @ =TrackStop_rev01
	str r0, [r1, #0x7c]
	adds r2, r1, #0
	adds r2, #0x80
	ldr r0, _02008738 @ =FadeOutBody_rev01
	str r0, [r2]
	adds r1, #0x84
	ldr r0, _0200873C @ =TrkVolPitSet_rev01
	str r0, [r1]
	str r5, [r4, #0x1c]
	ldr r0, _02008740 @ =CgbSound
	str r0, [r4, #0x28]
	ldr r0, _02008744 @ =CgbOscOff
	str r0, [r4, #0x2c]
	ldr r0, _02008748 @ =MidiKey2CgbFr
	str r0, [r4, #0x30]
	ldr r0, _0200874C @ =0x00000000
	movs r1, #0
	strb r0, [r4, #0xc]
	str r1, [sp]
	ldr r2, _02008750 @ =0x05000040
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
_020086FC:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02008704: .4byte 0x04000084
_02008708: .4byte 0x04000080
_0200870C: .4byte 0x04000063
_02008710: .4byte 0x03007FF0
_02008714: .4byte 0x68736D53
_02008718: .4byte gUnk_02023DD0
_0200871C: .4byte ply_memacc
_02008720: .4byte ply_lfos_rev01
_02008724: .4byte ply_mod_rev01
_02008728: .4byte ply_xcmd
_0200872C: .4byte ply_endtie_rev01
_02008730: .4byte SampFreqSet_rev01
_02008734: .4byte TrackStop_rev01
_02008738: .4byte FadeOutBody_rev01
_0200873C: .4byte TrkVolPitSet_rev01
_02008740: .4byte CgbSound
_02008744: .4byte CgbOscOff
_02008748: .4byte MidiKey2CgbFr
_0200874C: .4byte 0x00000000
_02008750: .4byte 0x05000040

	thumb_func_start MusicPlayerJumpTableCopy
MusicPlayerJumpTableCopy: @ 0x02008754
	svc #0x2a
	bx lr

	thumb_func_start ClearChain_rev
ClearChain_rev: @ 0x02008758
	push {lr}
	ldr r1, _02008768 @ =gUnk_02023E58
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_02008768: .4byte gUnk_02023E58

	thumb_func_start Clear64byte_rev
Clear64byte_rev: @ 0x0200876C
	push {lr}
	ldr r1, _0200877C @ =gUnk_02023E5C
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0200877C: .4byte gUnk_02023E5C

	thumb_func_start SoundInit_rev01
SoundInit_rev01: @ 0x02008780
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	movs r3, #0
	str r3, [r5]
	ldr r1, _02008838 @ =0x040000C4
	ldr r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #0x12
	ands r0, r2
	cmp r0, #0
	beq _0200879C
	ldr r0, _0200883C @ =0x84400004
	str r0, [r1]
_0200879C:
	ldr r1, _02008840 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r2
	cmp r0, #0
	beq _020087AA
	ldr r0, _0200883C @ =0x84400004
	str r0, [r1]
_020087AA:
	ldr r0, _02008844 @ =0x040000C6
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, #0xc
	strh r1, [r0]
	ldr r1, _02008848 @ =0x04000084
	movs r0, #0x8f
	strh r0, [r1]
	subs r1, #2
	ldr r2, _0200884C @ =0x0000A90E
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _02008850 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldr r1, _02008854 @ =0x040000BC
	movs r2, #0xd4
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _02008858 @ =0x040000A0
	str r0, [r1]
	adds r1, #8
	movs r2, #0x98
	lsls r2, r2, #4
	adds r0, r5, r2
	str r0, [r1]
	adds r1, #4
	ldr r0, _0200885C @ =0x040000A4
	str r0, [r1]
	ldr r0, _02008860 @ =0x03007FF0
	str r5, [r0]
	str r3, [sp]
	ldr r2, _02008864 @ =0x050003EC
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #8
	strb r0, [r5, #6]
	movs r0, #0xf
	strb r0, [r5, #7]
	ldr r0, _02008868 @ =ply_note_rev01
	str r0, [r5, #0x38]
	ldr r0, _0200886C @ =DummyFunc_rev
	str r0, [r5, #0x28]
	str r0, [r5, #0x2c]
	str r0, [r5, #0x30]
	str r0, [r5, #0x3c]
	ldr r4, _02008870 @ =gUnk_02023DD0
	adds r0, r4, #0
	bl MPlyJmpTblCopy
	str r4, [r5, #0x34]
	movs r0, #0x80
	lsls r0, r0, #0xb
	bl SampFreqSet_rev01
	ldr r0, _02008874 @ =0x68736D53
	str r0, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02008838: .4byte 0x040000C4
_0200883C: .4byte 0x84400004
_02008840: .4byte 0x040000D0
_02008844: .4byte 0x040000C6
_02008848: .4byte 0x04000084
_0200884C: .4byte 0x0000A90E
_02008850: .4byte 0x04000089
_02008854: .4byte 0x040000BC
_02008858: .4byte 0x040000A0
_0200885C: .4byte 0x040000A4
_02008860: .4byte 0x03007FF0
_02008864: .4byte 0x050003EC
_02008868: .4byte ply_note_rev01
_0200886C: .4byte DummyFunc_rev
_02008870: .4byte gUnk_02023DD0
_02008874: .4byte 0x68736D53

	thumb_func_start SampFreqSet_rev01
SampFreqSet_rev01: @ 0x02008878
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _020088F8 @ =0x03007FF0
	ldr r4, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r2
	lsrs r2, r0, #0x10
	movs r6, #0
	strb r2, [r4, #8]
	ldr r1, _020088FC @ =gUnk_020144BC
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
	ldr r0, _02008900 @ =0x00091D1B
	muls r0, r5, r0
	ldr r1, _02008904 @ =0x00001388
	adds r0, r0, r1
	ldr r1, _02008908 @ =0x00002710
	bl __divsi3
	adds r1, r0, #0
	str r1, [r4, #0x14]
	movs r0, #0x80
	lsls r0, r0, #0x11
	bl __divsi3
	adds r0, #1
	asrs r0, r0, #1
	str r0, [r4, #0x18]
	ldr r0, _0200890C @ =0x04000102
	strh r6, [r0]
	ldr r4, _02008910 @ =0x04000100
	ldr r0, _02008914 @ =0x00044940
	adds r1, r5, #0
	bl __divsi3
	rsbs r0, r0, #0
	strh r0, [r4]
	bl SoundVSyncOn_rev01
	ldr r1, _02008918 @ =0x04000006
_020088DC:
	ldrb r0, [r1]
	cmp r0, #0x9f
	beq _020088DC
	ldr r1, _02008918 @ =0x04000006
_020088E4:
	ldrb r0, [r1]
	cmp r0, #0x9f
	bne _020088E4
	ldr r1, _0200890C @ =0x04000102
	movs r0, #0x80
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_020088F8: .4byte 0x03007FF0
_020088FC: .4byte gUnk_020144BC
_02008900: .4byte 0x00091D1B
_02008904: .4byte 0x00001388
_02008908: .4byte 0x00002710
_0200890C: .4byte 0x04000102
_02008910: .4byte 0x04000100
_02008914: .4byte 0x00044940
_02008918: .4byte 0x04000006

	thumb_func_start SoundMode_rev01
SoundMode_rev01: @ 0x0200891C
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r0, _020089A8 @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _020089AC @ =0x68736D53
	cmp r1, r0
	bne _020089A2
	adds r0, r1, #1
	str r0, [r5]
	movs r4, #0xff
	ands r4, r3
	cmp r4, #0
	beq _0200893E
	movs r0, #0x7f
	ands r4, r0
	strb r4, [r5, #5]
_0200893E:
	movs r4, #0xf0
	lsls r4, r4, #4
	ands r4, r3
	cmp r4, #0
	beq _0200895E
	lsrs r0, r4, #8
	strb r0, [r5, #6]
	movs r4, #0xc
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
_02008954:
	strb r1, [r0]
	subs r4, #1
	adds r0, #0x40
	cmp r4, #0
	bne _02008954
_0200895E:
	movs r4, #0xf0
	lsls r4, r4, #8
	ands r4, r3
	cmp r4, #0
	beq _0200896C
	lsrs r0, r4, #0xc
	strb r0, [r5, #7]
_0200896C:
	movs r4, #0xb0
	lsls r4, r4, #0x10
	ands r4, r3
	cmp r4, #0
	beq _0200898A
	movs r0, #0xc0
	lsls r0, r0, #0xe
	ands r0, r4
	lsrs r4, r0, #0xe
	ldr r2, _020089B0 @ =0x04000089
	ldrb r1, [r2]
	movs r0, #0x3f
	ands r0, r1
	orrs r0, r4
	strb r0, [r2]
_0200898A:
	movs r4, #0xf0
	lsls r4, r4, #0xc
	ands r4, r3
	cmp r4, #0
	beq _0200899E
	bl SoundVSyncOff_rev01
	adds r0, r4, #0
	bl SampFreqSet_rev01
_0200899E:
	ldr r0, _020089AC @ =0x68736D53
	str r0, [r5]
_020089A2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_020089A8: .4byte 0x03007FF0
_020089AC: .4byte 0x68736D53
_020089B0: .4byte 0x04000089

	thumb_func_start SoundClear_rev01
SoundClear_rev01: @ 0x020089B4
	push {r4, r5, r6, r7, lr}
	ldr r0, _02008A00 @ =0x03007FF0
	ldr r6, [r0]
	ldr r1, [r6]
	ldr r0, _02008A04 @ =0x68736D53
	cmp r1, r0
	bne _020089FA
	adds r0, r1, #1
	str r0, [r6]
	movs r5, #0xc
	adds r4, r6, #0
	adds r4, #0x50
	movs r0, #0
_020089CE:
	strb r0, [r4]
	subs r5, #1
	adds r4, #0x40
	cmp r5, #0
	bgt _020089CE
	ldr r4, [r6, #0x1c]
	cmp r4, #0
	beq _020089F6
	movs r5, #1
	movs r7, #0
_020089E2:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldr r1, [r6, #0x2c]
	bl _call_via_r1
	strb r7, [r4]
	adds r5, #1
	adds r4, #0x40
	cmp r5, #4
	ble _020089E2
_020089F6:
	ldr r0, _02008A04 @ =0x68736D53
	str r0, [r6]
_020089FA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02008A00: .4byte 0x03007FF0
_02008A04: .4byte 0x68736D53

	thumb_func_start SoundVSyncOff_rev01
SoundVSyncOff_rev01: @ 0x02008A08
	push {lr}
	sub sp, #4
	ldr r0, _02008A68 @ =0x03007FF0
	ldr r2, [r0]
	ldr r1, [r2]
	ldr r3, _02008A6C @ =0x978C92AD
	adds r0, r1, r3
	cmp r0, #1
	bhi _02008A60
	adds r0, r1, #0
	adds r0, #0xa
	str r0, [r2]
	ldr r1, _02008A70 @ =0x040000C4
	ldr r0, [r1]
	movs r3, #0x80
	lsls r3, r3, #0x12
	ands r0, r3
	cmp r0, #0
	beq _02008A32
	ldr r0, _02008A74 @ =0x84400004
	str r0, [r1]
_02008A32:
	ldr r1, _02008A78 @ =0x040000D0
	ldr r0, [r1]
	ands r0, r3
	cmp r0, #0
	beq _02008A40
	ldr r0, _02008A74 @ =0x84400004
	str r0, [r1]
_02008A40:
	ldr r0, _02008A7C @ =0x040000C6
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
	ldr r2, _02008A80 @ =0x05000318
	mov r0, sp
	bl CpuSet
_02008A60:
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_02008A68: .4byte 0x03007FF0
_02008A6C: .4byte 0x978C92AD
_02008A70: .4byte 0x040000C4
_02008A74: .4byte 0x84400004
_02008A78: .4byte 0x040000D0
_02008A7C: .4byte 0x040000C6
_02008A80: .4byte 0x05000318

	thumb_func_start SoundVSyncOn_rev01
SoundVSyncOn_rev01: @ 0x02008A84
	push {r4, lr}
	ldr r0, _02008AB4 @ =0x03007FF0
	ldr r2, [r0]
	ldr r3, [r2]
	ldr r0, _02008AB8 @ =0x68736D53
	cmp r3, r0
	beq _02008AAC
	ldr r0, _02008ABC @ =0x040000C6
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
_02008AAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008AB4: .4byte 0x03007FF0
_02008AB8: .4byte 0x68736D53
_02008ABC: .4byte 0x040000C6

	thumb_func_start MPlayOpen_rev01
MPlayOpen_rev01: @ 0x02008AC0
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	cmp r4, #0
	beq _02008B24
	cmp r4, #0x10
	bls _02008AD4
	movs r4, #0x10
_02008AD4:
	ldr r0, _02008B2C @ =0x03007FF0
	ldr r5, [r0]
	ldr r1, [r5]
	ldr r0, _02008B30 @ =0x68736D53
	cmp r1, r0
	bne _02008B24
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
	beq _02008B08
	movs r1, #0
_02008AFA:
	strb r1, [r6]
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r6, #0x50
	cmp r4, #0
	bne _02008AFA
_02008B08:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02008B18
	str r0, [r7, #0x38]
	ldr r0, [r5, #0x24]
	str r0, [r7, #0x3c]
	movs r0, #0
	str r0, [r5, #0x20]
_02008B18:
	str r7, [r5, #0x24]
	ldr r0, _02008B34 @ =MPlayMain_rev01
	str r0, [r5, #0x20]
	ldr r0, _02008B30 @ =0x68736D53
	str r0, [r5]
	str r0, [r7, #0x34]
_02008B24:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02008B2C: .4byte 0x03007FF0
_02008B30: .4byte 0x68736D53
_02008B34: .4byte MPlayMain_rev01

	thumb_func_start MPlayStart_rev01
MPlayStart_rev01: @ 0x02008B38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r7, r1, #0
	ldr r1, [r5, #0x34]
	ldr r0, _02008C18 @ =0x68736D53
	cmp r1, r0
	bne _02008C0E
	ldrb r0, [r5, #0xb]
	ldrb r2, [r7, #2]
	cmp r0, #0
	beq _02008B7A
	ldr r0, [r5]
	cmp r0, #0
	beq _02008B64
	ldr r1, [r5, #0x2c]
	movs r0, #0x40
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, #0
	bne _02008B70
_02008B64:
	ldr r1, [r5, #4]
	ldrh r0, [r5, #4]
	cmp r0, #0
	beq _02008B7A
	cmp r1, #0
	blt _02008B7A
_02008B70:
	ldrb r0, [r7, #2]
	adds r2, r0, #0
	ldrb r0, [r5, #9]
	cmp r0, r2
	bhi _02008C0E
_02008B7A:
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
	bge _02008BDA
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _02008BFA
	mov r8, r6
_02008BAE:
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
	bge _02008BDA
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _02008BAE
_02008BDA:
	ldrb r0, [r5, #8]
	cmp r6, r0
	bge _02008BFA
	movs r1, #0
	mov r8, r1
_02008BE4:
	adds r0, r5, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	mov r0, r8
	strb r0, [r4]
	adds r6, #1
	adds r4, #0x50
	ldrb r1, [r5, #8]
	cmp r6, r1
	blt _02008BE4
_02008BFA:
	movs r0, #0x80
	ldrb r1, [r7, #3]
	ands r0, r1
	cmp r0, #0
	beq _02008C0A
	ldrb r0, [r7, #3]
	bl SoundMode_rev01
_02008C0A:
	ldr r0, _02008C18 @ =0x68736D53
	str r0, [r5, #0x34]
_02008C0E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02008C18: .4byte 0x68736D53

	thumb_func_start MPlayStop_rev01
MPlayStop_rev01: @ 0x02008C1C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, [r6, #0x34]
	ldr r0, _02008C58 @ =0x68736D53
	cmp r1, r0
	bne _02008C52
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
	ble _02008C4E
_02008C3E:
	adds r0, r6, #0
	adds r1, r5, #0
	bl TrackStop_rev01
	subs r4, #1
	adds r5, #0x50
	cmp r4, #0
	bgt _02008C3E
_02008C4E:
	ldr r0, _02008C58 @ =0x68736D53
	str r0, [r6, #0x34]
_02008C52:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02008C58: .4byte 0x68736D53

	thumb_func_start FadeOutBody_rev01
FadeOutBody_rev01: @ 0x02008C5C
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r1, [r6, #0x24]
	cmp r1, #0
	beq _02008D1E
	ldrh r0, [r6, #0x26]
	subs r0, #1
	strh r0, [r6, #0x26]
	ldr r3, _02008C9C @ =0x0000FFFF
	adds r2, r3, #0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _02008D1E
	strh r1, [r6, #0x26]
	ldrh r1, [r6, #0x28]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _02008CA0
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	cmp r0, #0xff
	bls _02008CF2
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x28]
	strh r3, [r6, #0x24]
	b _02008CF2
	.align 2, 0
_02008C9C: .4byte 0x0000FFFF
_02008CA0:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r6, #0x28]
	ands r0, r2
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _02008CF2
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _02008CD2
_02008CB6:
	adds r0, r6, #0
	adds r1, r4, #0
	bl TrackStop_rev01
	movs r0, #1
	ldrh r7, [r6, #0x28]
	ands r0, r7
	cmp r0, #0
	bne _02008CCA
	strb r0, [r4]
_02008CCA:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _02008CB6
_02008CD2:
	movs r0, #1
	ldrh r1, [r6, #0x28]
	ands r0, r1
	cmp r0, #0
	beq _02008CE6
	ldr r0, [r6, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	b _02008CEA
_02008CE6:
	movs r0, #0x80
	lsls r0, r0, #0x18
_02008CEA:
	str r0, [r6, #4]
	movs r0, #0
	strh r0, [r6, #0x24]
	b _02008D1E
_02008CF2:
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	cmp r5, #0
	ble _02008D1E
	movs r3, #0x80
	movs r7, #0
	movs r2, #3
_02008D00:
	ldrb r1, [r4]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _02008D16
	ldrh r7, [r6, #0x28]
	lsrs r0, r7, #2
	strb r0, [r4, #0x13]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r4]
_02008D16:
	subs r5, #1
	adds r4, #0x50
	cmp r5, #0
	bgt _02008D00
_02008D1E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start TrkVolPitSet_rev01
TrkVolPitSet_rev01: @ 0x02008D24
	push {r4, lr}
	adds r2, r1, #0
	movs r0, #1
	ldrb r1, [r2]
	ands r0, r1
	cmp r0, #0
	beq _02008D88
	ldrb r3, [r2, #0x13]
	ldrb r1, [r2, #0x12]
	adds r0, r3, #0
	muls r0, r1, r0
	lsrs r3, r0, #5
	ldrb r4, [r2, #0x18]
	cmp r4, #1
	bne _02008D4C
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r0, #0x80
	muls r0, r3, r0
	lsrs r3, r0, #7
_02008D4C:
	movs r0, #0x14
	ldrsb r0, [r2, r0]
	lsls r0, r0, #1
	movs r1, #0x15
	ldrsb r1, [r2, r1]
	adds r1, r0, r1
	cmp r4, #2
	bne _02008D62
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	adds r1, r1, r0
_02008D62:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _02008D6E
	adds r1, r0, #0
	b _02008D74
_02008D6E:
	cmp r1, #0x7f
	ble _02008D74
	movs r1, #0x7f
_02008D74:
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
_02008D88:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _02008DCC
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
	bne _02008DC6
	movs r0, #0x16
	ldrsb r0, [r2, r0]
	lsls r0, r0, #4
	adds r1, r1, r0
_02008DC6:
	asrs r0, r1, #8
	strb r0, [r2, #8]
	strb r1, [r2, #9]
_02008DCC:
	movs r0, #0xfa
	ands r0, r3
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start MidiKey2CgbFr
MidiKey2CgbFr: @ 0x02008DD8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov ip, r2
	cmp r0, #4
	bne _02008E10
	cmp r5, #0x14
	bhi _02008DF4
	movs r5, #0
	b _02008E02
_02008DF4:
	adds r0, r5, #0
	subs r0, #0x15
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x3b
	bls _02008E02
	movs r5, #0x3b
_02008E02:
	ldr r0, _02008E0C @ =gUnk_02014570
	adds r0, r5, r0
	ldrb r0, [r0]
	b _02008E72
	.align 2, 0
_02008E0C: .4byte gUnk_02014570
_02008E10:
	cmp r5, #0x23
	bhi _02008E1C
	movs r0, #0
	mov ip, r0
	movs r5, #0
	b _02008E2E
_02008E1C:
	adds r0, r5, #0
	subs r0, #0x24
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x82
	bls _02008E2E
	movs r5, #0x82
	movs r1, #0xff
	mov ip, r1
_02008E2E:
	ldr r3, _02008E78 @ =gUnk_020144D4
	adds r0, r5, r3
	ldrb r6, [r0]
	ldr r4, _02008E7C @ =gUnk_02014558
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
_02008E72:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_02008E78: .4byte gUnk_020144D4
_02008E7C: .4byte gUnk_02014558

	thumb_func_start CgbOscOff
CgbOscOff: @ 0x02008E80
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #2
	beq _02008EA8
	cmp r0, #2
	bgt _02008E94
	cmp r0, #1
	beq _02008E9A
	b _02008EBC
_02008E94:
	cmp r1, #3
	beq _02008EB0
	b _02008EBC
_02008E9A:
	ldr r1, _02008EA4 @ =0x04000063
	movs r0, #8
	strb r0, [r1]
	adds r1, #2
	b _02008EC4
	.align 2, 0
_02008EA4: .4byte 0x04000063
_02008EA8:
	ldr r1, _02008EAC @ =0x04000069
	b _02008EBE
	.align 2, 0
_02008EAC: .4byte 0x04000069
_02008EB0:
	ldr r1, _02008EB8 @ =0x04000070
	movs r0, #0
	b _02008EC6
	.align 2, 0
_02008EB8: .4byte 0x04000070
_02008EBC:
	ldr r1, _02008ECC @ =0x04000079
_02008EBE:
	movs r0, #8
	strb r0, [r1]
	adds r1, #4
_02008EC4:
	movs r0, #0x80
_02008EC6:
	strb r0, [r1]
	bx lr
	.align 2, 0
_02008ECC: .4byte 0x04000079

	thumb_func_start CgbModVol
CgbModVol: @ 0x02008ED0
	push {r4, lr}
	adds r1, r0, #0
	ldrb r0, [r1, #2]
	lsls r2, r0, #0x18
	lsrs r4, r2, #0x18
	ldrb r3, [r1, #3]
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
	cmp r4, r3
	blo _02008EF0
	lsrs r0, r2, #0x19
	cmp r0, r3
	blo _02008EFC
	movs r0, #0xf
	strb r0, [r1, #0x1b]
	b _02008F0A
_02008EF0:
	lsrs r0, r0, #0x19
	cmp r0, r4
	blo _02008EFC
	movs r0, #0xf0
	strb r0, [r1, #0x1b]
	b _02008F0A
_02008EFC:
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	b _02008F1A
_02008F0A:
	ldrb r2, [r1, #3]
	ldrb r3, [r1, #2]
	adds r0, r2, r3
	lsrs r0, r0, #4
	strb r0, [r1, #0xa]
	cmp r0, #0xf
	bls _02008F1C
	movs r0, #0xf
_02008F1A:
	strb r0, [r1, #0xa]
_02008F1C:
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
CgbSound: @ 0x02008F38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	ldr r0, _02008F58 @ =0x03007FF0
	ldr r0, [r0]
	str r0, [sp, #4]
	ldrb r0, [r0, #0xa]
	cmp r0, #0
	beq _02008F5C
	subs r0, #1
	ldr r1, [sp, #4]
	strb r0, [r1, #0xa]
	b _02008F62
	.align 2, 0
_02008F58: .4byte 0x03007FF0
_02008F5C:
	movs r0, #0xe
	ldr r2, [sp, #4]
	strb r0, [r2, #0xa]
_02008F62:
	movs r6, #1
	ldr r0, [sp, #4]
	ldr r4, [r0, #0x1c]
_02008F68:
	ldrb r1, [r4]
	movs r0, #0xc7
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	bne _02008F7E
	b _02009368
_02008F7E:
	cmp r6, #2
	beq _02008FB0
	cmp r6, #2
	bgt _02008F8C
	cmp r6, #1
	beq _02008F92
	b _02008FE8
_02008F8C:
	cmp r6, #3
	beq _02008FC8
	b _02008FE8
_02008F92:
	ldr r0, _02008FA4 @ =0x04000060
	str r0, [sp, #8]
	ldr r7, _02008FA8 @ =0x04000062
	ldr r2, _02008FAC @ =0x04000063
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _02008FF8
	.align 2, 0
_02008FA4: .4byte 0x04000060
_02008FA8: .4byte 0x04000062
_02008FAC: .4byte 0x04000063
_02008FB0:
	ldr r0, _02008FBC @ =0x04000061
	str r0, [sp, #8]
	ldr r7, _02008FC0 @ =0x04000068
	ldr r2, _02008FC4 @ =0x04000069
	b _02008FF0
	.align 2, 0
_02008FBC: .4byte 0x04000061
_02008FC0: .4byte 0x04000068
_02008FC4: .4byte 0x04000069
_02008FC8:
	ldr r0, _02008FDC @ =0x04000070
	str r0, [sp, #8]
	ldr r7, _02008FE0 @ =0x04000072
	ldr r2, _02008FE4 @ =0x04000073
	str r2, [sp, #0xc]
	adds r0, #4
	str r0, [sp, #0x10]
	adds r2, #2
	b _02008FF8
	.align 2, 0
_02008FDC: .4byte 0x04000070
_02008FE0: .4byte 0x04000072
_02008FE4: .4byte 0x04000073
_02008FE8:
	ldr r0, _02009048 @ =0x04000071
	str r0, [sp, #8]
	ldr r7, _0200904C @ =0x04000078
	ldr r2, _02009050 @ =0x04000079
_02008FF0:
	str r2, [sp, #0xc]
	adds r0, #0xb
	str r0, [sp, #0x10]
	adds r2, #4
_02008FF8:
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
	beq _020090EE
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
	bne _02009112
	movs r0, #3
	strb r0, [r4]
	strb r0, [r4, #0x1d]
	adds r0, r4, #0
	str r3, [sp, #0x18]
	bl CgbModVol
	ldr r3, [sp, #0x18]
	cmp r6, #2
	beq _02009060
	cmp r6, #2
	bgt _02009054
	cmp r6, #1
	beq _0200905A
	b _020090B4
	.align 2, 0
_02009048: .4byte 0x04000071
_0200904C: .4byte 0x04000078
_02009050: .4byte 0x04000079
_02009054:
	cmp r6, #3
	beq _0200906C
	b _020090B4
_0200905A:
	ldrb r0, [r4, #0x1f]
	ldr r2, [sp, #8]
	strb r0, [r2]
_02009060:
	ldr r0, [r4, #0x24]
	lsls r0, r0, #6
	ldrb r1, [r4, #0x1e]
	adds r0, r1, r0
	strb r0, [r7]
	b _020090C0
_0200906C:
	ldr r1, [r4, #0x24]
	ldr r0, [r4, #0x28]
	cmp r1, r0
	beq _02009094
	ldr r2, [sp, #8]
	strb r3, [r2]
	ldr r1, _020090A8 @ =0x04000090
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
_02009094:
	ldr r0, [sp, #8]
	strb r5, [r0]
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _020090AC
	movs r0, #0xc0
	b _020090CE
	.align 2, 0
_020090A8: .4byte 0x04000090
_020090AC:
	movs r1, #0x80
	rsbs r1, r1, #0
	strb r1, [r4, #0x1a]
	b _020090D0
_020090B4:
	ldrb r0, [r4, #0x1e]
	strb r0, [r7]
	ldr r0, [r4, #0x24]
	lsls r0, r0, #3
	ldr r2, [sp, #0x10]
	strb r0, [r2]
_020090C0:
	ldrb r0, [r4, #4]
	adds r0, #8
	mov r8, r0
	ldrb r0, [r4, #0x1e]
	cmp r0, #0
	beq _020090CE
	movs r0, #0x40
_020090CE:
	strb r0, [r4, #0x1a]
_020090D0:
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
	bne _020090EA
	b _02009226
_020090EA:
	strb r2, [r4, #9]
	b _02009254
_020090EE:
	movs r0, #4
	ands r0, r2
	cmp r0, #0
	beq _02009120
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
	ble _02009112
	b _02009266
_02009112:
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	bl CgbOscOff
	movs r0, #0
	strb r0, [r4]
	b _02009364
_02009120:
	movs r0, #0x40
	ands r0, r1
	adds r2, r6, #1
	mov sl, r2
	movs r2, #0x40
	adds r2, r2, r4
	mov sb, r2
	cmp r0, #0
	beq _02009160
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _02009160
	movs r0, #0xfc
	ands r0, r1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #7]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _02009192
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _02009254
	ldrb r2, [r4, #7]
	mov r8, r2
	b _02009254
_02009160:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	bne _02009254
	cmp r6, #3
	bne _02009172
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
_02009172:
	adds r0, r4, #0
	bl CgbModVol
	movs r0, #3
	ldrb r2, [r4]
	ands r0, r2
	cmp r0, #0
	bne _020091C6
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	cmp r0, #0
	bgt _020091C2
_02009192:
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
	beq _02009112
	movs r0, #4
	ldrb r2, [r4]
	orrs r0, r2
	strb r0, [r4]
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _02009266
	movs r2, #8
	mov r8, r2
	b _02009266
_020091C2:
	ldrb r0, [r4, #7]
	b _02009252
_020091C6:
	cmp r0, #1
	bne _020091D2
_020091CA:
	ldrb r0, [r4, #0x19]
	strb r0, [r4, #9]
	movs r0, #7
	b _02009252
_020091D2:
	cmp r0, #2
	bne _02009216
	ldrb r0, [r4, #9]
	subs r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	lsls r0, r0, #0x18
	ldrb r2, [r4, #0x19]
	lsls r1, r2, #0x18
	cmp r0, r1
	bgt _02009212
_020091EA:
	ldrb r0, [r4, #6]
	cmp r0, #0
	bne _020091FA
	movs r0, #0xfc
	ldrb r1, [r4]
	ands r0, r1
	strb r0, [r4]
	b _02009192
_020091FA:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	orrs r0, r2
	strb r0, [r4, #0x1d]
	cmp r6, #3
	beq _020091CA
	movs r0, #8
	mov r8, r0
	b _020091CA
_02009212:
	ldrb r0, [r4, #5]
	b _02009252
_02009216:
	ldrb r0, [r4, #9]
	adds r0, #1
	strb r0, [r4, #9]
	movs r1, #0xff
	ands r0, r1
	ldrb r2, [r4, #0xa]
	cmp r0, r2
	blo _02009250
_02009226:
	ldrb r0, [r4]
	subs r0, #1
	movs r2, #0
	strb r0, [r4]
	ldrb r1, [r4, #5]
	strb r1, [r4, #0xb]
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	beq _020091EA
	movs r0, #1
	ldrb r1, [r4, #0x1d]
	orrs r0, r1
	strb r0, [r4, #0x1d]
	ldrb r0, [r4, #0xa]
	strb r0, [r4, #9]
	cmp r6, #3
	beq _02009254
	ldrb r2, [r4, #5]
	mov r8, r2
	b _02009254
_02009250:
	ldrb r0, [r4, #4]
_02009252:
	strb r0, [r4, #0xb]
_02009254:
	ldrb r0, [r4, #0xb]
	subs r0, #1
	strb r0, [r4, #0xb]
	ldr r0, [sp]
	cmp r0, #0
	bne _02009266
	subs r0, #1
	str r0, [sp]
	b _02009160
_02009266:
	movs r0, #2
	ldrb r1, [r4, #0x1d]
	ands r0, r1
	cmp r0, #0
	beq _020092DE
	cmp r6, #3
	bgt _020092A6
	movs r0, #8
	ldrb r2, [r4, #1]
	ands r0, r2
	cmp r0, #0
	beq _020092A6
	ldr r0, _02009290 @ =0x04000089
	ldrb r0, [r0]
	cmp r0, #0x3f
	bgt _02009298
	ldr r0, [r4, #0x20]
	adds r0, #2
	ldr r1, _02009294 @ =0x000007FC
	b _020092A2
	.align 2, 0
_02009290: .4byte 0x04000089
_02009294: .4byte 0x000007FC
_02009298:
	cmp r0, #0x7f
	bgt _020092A6
	ldr r0, [r4, #0x20]
	adds r0, #1
	ldr r1, _020092B4 @ =0x000007FE
_020092A2:
	ands r0, r1
	str r0, [r4, #0x20]
_020092A6:
	cmp r6, #4
	beq _020092B8
	ldr r0, [r4, #0x20]
	ldr r1, [sp, #0x10]
	strb r0, [r1]
	b _020092C6
	.align 2, 0
_020092B4: .4byte 0x000007FE
_020092B8:
	ldr r2, [sp, #0x10]
	ldrb r0, [r2]
	movs r1, #8
	ands r1, r0
	ldr r0, [r4, #0x20]
	orrs r0, r1
	strb r0, [r2]
_020092C6:
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
_020092DE:
	movs r0, #1
	ldrb r2, [r4, #0x1d]
	ands r0, r2
	cmp r0, #0
	beq _02009364
	ldr r1, _02009328 @ =0x04000081
	ldrb r0, [r1]
	ldrb r2, [r4, #0x1c]
	bics r0, r2
	ldrb r2, [r4, #0x1b]
	orrs r0, r2
	strb r0, [r1]
	cmp r6, #3
	bne _02009330
	ldr r0, _0200932C @ =gUnk_020145AC
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
	beq _02009364
	ldr r0, [sp, #8]
	strb r1, [r0]
	ldrb r0, [r4, #0x1a]
	ldr r1, [sp, #0x14]
	strb r0, [r1]
	movs r0, #0x7f
	ldrb r2, [r4, #0x1a]
	ands r0, r2
	strb r0, [r4, #0x1a]
	b _02009364
	.align 2, 0
_02009328: .4byte 0x04000081
_0200932C: .4byte gUnk_020145AC
_02009330:
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
	bne _02009364
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _02009364
	ldrb r0, [r4, #0x1a]
	orrs r0, r2
	ldr r1, [sp, #0x14]
	strb r0, [r1]
_02009364:
	movs r0, #0
	strb r0, [r4, #0x1d]
_02009368:
	mov r6, sl
	mov r4, sb
	cmp r6, #4
	bgt _02009372
	b _02008F68
_02009372:
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
MPlayTempoControl: @ 0x02009384
	push {r4, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldr r3, [r2, #0x34]
	ldr r0, _020093A8 @ =0x68736D53
	cmp r3, r0
	bne _020093A0
	strh r1, [r2, #0x1e]
	ldrh r4, [r2, #0x1c]
	adds r0, r1, #0
	muls r0, r4, r0
	asrs r0, r0, #8
	strh r0, [r2, #0x20]
_020093A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020093A8: .4byte 0x68736D53

	thumb_func_start MPlayVolumeControl
MPlayVolumeControl: @ 0x020093AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r6, r2, #0x10
	ldr r3, [r4, #0x34]
	ldr r0, _02009410 @ =0x68736D53
	cmp r3, r0
	bne _02009404
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _02009400
	movs r0, #0x80
	mov r8, r0
	lsrs r6, r6, #0x12
	movs r0, #3
	mov ip, r0
_020093DC:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _020093F6
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _020093F6
	strb r6, [r1, #0x13]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_020093F6:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _020093DC
_02009400:
	ldr r0, _02009410 @ =0x68736D53
	str r0, [r4, #0x34]
_02009404:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02009410: .4byte 0x68736D53

	thumb_func_start MPlayPitchControl
MPlayPitchControl: @ 0x02009414
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
	ldr r0, _02009484 @ =0x68736D53
	cmp r3, r0
	bne _02009476
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r3, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _02009472
	movs r0, #0x80
	mov sb, r0
	lsls r0, r6, #0x10
	asrs r7, r0, #0x18
	movs r0, #0xc
	mov r8, r0
_0200944C:
	mov r0, ip
	ands r0, r5
	cmp r0, #0
	beq _02009468
	ldrb r1, [r3]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _02009468
	strb r7, [r3, #0xb]
	strb r6, [r3, #0xd]
	mov r0, r8
	orrs r0, r1
	strb r0, [r3]
_02009468:
	subs r2, #1
	adds r3, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _0200944C
_02009472:
	ldr r0, _02009484 @ =0x68736D53
	str r0, [r4, #0x34]
_02009476:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02009484: .4byte 0x68736D53

	thumb_func_start MPlayPanpotControl
MPlayPanpotControl: @ 0x02009488
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
	ldr r0, _020094EC @ =0x68736D53
	cmp r3, r0
	bne _020094E0
	adds r0, r3, #1
	str r0, [r4, #0x34]
	ldrb r2, [r4, #8]
	ldr r1, [r4, #0x2c]
	movs r5, #1
	cmp r2, #0
	ble _020094DC
	movs r0, #0x80
	mov r8, r0
	movs r0, #3
	mov ip, r0
_020094B8:
	adds r0, r7, #0
	ands r0, r5
	cmp r0, #0
	beq _020094D2
	ldrb r3, [r1]
	mov r0, r8
	ands r0, r3
	cmp r0, #0
	beq _020094D2
	strb r6, [r1, #0x15]
	mov r0, ip
	orrs r0, r3
	strb r0, [r1]
_020094D2:
	subs r2, #1
	adds r1, #0x50
	lsls r5, r5, #1
	cmp r2, #0
	bgt _020094B8
_020094DC:
	ldr r0, _020094EC @ =0x68736D53
	str r0, [r4, #0x34]
_020094E0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020094EC: .4byte 0x68736D53

	thumb_func_start MP_clear_modM
MP_clear_modM: @ 0x020094F0
	adds r1, r0, #0
	movs r2, #0
	movs r0, #0
	strb r0, [r1, #0x1a]
	strb r0, [r1, #0x16]
	ldrb r0, [r1, #0x18]
	cmp r0, #0
	bne _02009504
	movs r0, #0xc
	b _02009506
_02009504:
	movs r0, #3
_02009506:
	ldrb r2, [r1]
	orrs r0, r2
	strb r0, [r1]
	bx lr
	.align 2, 0

	thumb_func_start MPlayModDepthSet
MPlayModDepthSet: @ 0x02009510
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
	ldr r0, _02009580 @ =0x68736D53
	cmp r1, r0
	bne _02009570
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _0200956C
	mov sb, r8
_02009540:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _02009562
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _02009562
	mov r0, r8
	strb r0, [r4, #0x17]
	mov r1, sb
	cmp r1, #0
	bne _02009562
	adds r0, r4, #0
	bl MP_clear_modM
_02009562:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _02009540
_0200956C:
	ldr r0, _02009580 @ =0x68736D53
	str r0, [r6, #0x34]
_02009570:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_02009580: .4byte 0x68736D53

	thumb_func_start MPlayLFOSpeedSet
MPlayLFOSpeedSet: @ 0x02009584
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
	ldr r0, _020095F4 @ =0x68736D53
	cmp r1, r0
	bne _020095E4
	adds r0, r1, #1
	str r0, [r6, #0x34]
	ldrb r5, [r6, #8]
	ldr r4, [r6, #0x2c]
	movs r7, #1
	cmp r5, #0
	ble _020095E0
	mov sb, r8
_020095B4:
	mov r0, sl
	ands r0, r7
	cmp r0, #0
	beq _020095D6
	movs r0, #0x80
	ldrb r1, [r4]
	ands r0, r1
	cmp r0, #0
	beq _020095D6
	mov r0, r8
	strb r0, [r4, #0x19]
	mov r1, sb
	cmp r1, #0
	bne _020095D6
	adds r0, r4, #0
	bl MP_clear_modM
_020095D6:
	subs r5, #1
	adds r4, #0x50
	lsls r7, r7, #1
	cmp r5, #0
	bgt _020095B4
_020095E0:
	ldr r0, _020095F4 @ =0x68736D53
	str r0, [r6, #0x34]
_020095E4:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020095F4: .4byte 0x68736D53

	thumb_func_start ply_memacc
ply_memacc: @ 0x020095F8
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
	bls _0200961C
	b _0200974A
_0200961C:
	lsls r0, r5, #2
	ldr r1, _02009628 @ =_0200962C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_02009628: .4byte _0200962C
_0200962C: @ jump table
	.4byte _02009674 @ case 0
	.4byte _02009678 @ case 1
	.4byte _02009680 @ case 2
	.4byte _02009688 @ case 3
	.4byte _02009692 @ case 4
	.4byte _020096A0 @ case 5
	.4byte _020096AE @ case 6
	.4byte _020096B6 @ case 7
	.4byte _020096BE @ case 8
	.4byte _020096C6 @ case 9
	.4byte _020096CE @ case 10
	.4byte _020096D6 @ case 11
	.4byte _020096DE @ case 12
	.4byte _020096EC @ case 13
	.4byte _020096FA @ case 14
	.4byte _02009708 @ case 15
	.4byte _02009716 @ case 16
	.4byte _02009724 @ case 17
_02009674:
	strb r2, [r3]
	b _0200974A
_02009678:
	ldrb r1, [r3]
	adds r0, r1, r2
	strb r0, [r3]
	b _0200974A
_02009680:
	ldrb r1, [r3]
	subs r0, r1, r2
	strb r0, [r3]
	b _0200974A
_02009688:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r3]
	b _0200974A
_02009692:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	adds r0, r1, r0
	strb r0, [r3]
	b _0200974A
_020096A0:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0]
	subs r0, r1, r0
	strb r0, [r3]
	b _0200974A
_020096AE:
	ldrb r3, [r3]
	cmp r3, r2
	beq _02009730
	b _02009744
_020096B6:
	ldrb r3, [r3]
	cmp r3, r2
	bne _02009730
	b _02009744
_020096BE:
	ldrb r3, [r3]
	cmp r3, r2
	bhi _02009730
	b _02009744
_020096C6:
	ldrb r3, [r3]
	cmp r3, r2
	bhs _02009730
	b _02009744
_020096CE:
	ldrb r3, [r3]
	cmp r3, r2
	bls _02009730
	b _02009744
_020096D6:
	ldrb r3, [r3]
	cmp r3, r2
	blo _02009730
	b _02009744
_020096DE:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	beq _02009730
	b _02009744
_020096EC:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bne _02009730
	b _02009744
_020096FA:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhi _02009730
	b _02009744
_02009708:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _02009730
	b _02009744
_02009716:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bls _02009730
	b _02009744
_02009724:
	ldr r0, [r4, #0x18]
	adds r0, r0, r2
	ldrb r3, [r3]
	ldrb r0, [r0]
	cmp r3, r0
	bhs _02009744
_02009730:
	ldr r0, _02009740 @ =gUnk_02023DD4
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r6, #0
	bl _call_via_r2
	b _0200974A
	.align 2, 0
_02009740: .4byte gUnk_02023DD4
_02009744:
	ldr r0, [r6, #0x40]
	adds r0, #4
	str r0, [r6, #0x40]
_0200974A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start ply_xcmd
ply_xcmd: @ 0x02009750
	push {lr}
	ldr r2, [r1, #0x40]
	ldrb r3, [r2]
	adds r2, #1
	str r2, [r1, #0x40]
	ldr r2, _0200976C @ =gUnk_020145F0
	lsls r3, r3, #2
	adds r3, r3, r2
	ldr r2, [r3]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_0200976C: .4byte gUnk_020145F0

	thumb_func_start ply_xxx
ply_xxx: @ 0x02009770
	push {lr}
	ldr r2, _02009780 @ =gUnk_02023DD0
	ldr r2, [r2]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_02009780: .4byte gUnk_02023DD0

	thumb_func_start ply_xwave
ply_xwave: @ 0x02009784
	push {r4, lr}
	ldr r2, [r1, #0x40]
	ldr r0, _020097BC @ =0xFFFFFF00
	ands r4, r0
	ldrb r0, [r2]
	orrs r4, r0
	ldrb r0, [r2, #1]
	lsls r3, r0, #8
	ldr r0, _020097C0 @ =0xFFFF00FF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #2]
	lsls r3, r0, #0x10
	ldr r0, _020097C4 @ =0xFF00FFFF
	ands r4, r0
	orrs r4, r3
	ldrb r0, [r2, #3]
	lsls r3, r0, #0x18
	ldr r0, _020097C8 @ =0x00FFFFFF
	ands r4, r0
	orrs r4, r3
	str r4, [r1, #0x28]
	adds r2, #4
	str r2, [r1, #0x40]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020097BC: .4byte 0xFFFFFF00
_020097C0: .4byte 0xFFFF00FF
_020097C4: .4byte 0xFF00FFFF
_020097C8: .4byte 0x00FFFFFF

	thumb_func_start ply_xtype
ply_xtype: @ 0x020097CC
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
ply_xatta: @ 0x020097E0
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
ply_xdeca: @ 0x020097F4
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
ply_xsust: @ 0x02009808
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
ply_xrele: @ 0x0200981C
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
ply_xiecv: @ 0x02009830
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1e]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xiecl
ply_xiecl: @ 0x0200983C
	ldr r0, [r1, #0x40]
	ldrb r2, [r0]
	strb r2, [r1, #0x1f]
	adds r0, #1
	str r0, [r1, #0x40]
	bx lr

	thumb_func_start ply_xleng
ply_xleng: @ 0x02009848
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
ply_xswee: @ 0x0200985C
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
DummyFunc_rev: @ 0x02009870
	bx lr
	.align 2, 0
