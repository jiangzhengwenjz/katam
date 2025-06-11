	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08086A28
sub_08086A28: @ 0x08086A28
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, [r6, #4]
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #6
	bl sub_0803C8CC
	adds r4, r0, #0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #4]
	ldr r0, _08086A88 @ =0x00003FFF
	strh r0, [r4, #6]
	ldr r0, _08086A8C @ =0x0000039A
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08086A60
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_08086A60:
	ldr r0, _08086A90 @ =0x00000399
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08086A78
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_08086A78:
	cmp r5, #0
	beq _08086A98
	movs r0, #1
	strb r0, [r4]
	ldr r0, _08086A94 @ =0x0000FFFF
	strh r0, [r4, #4]
	b _08086A9C
	.align 2, 0
_08086A88: .4byte 0x00003FFF
_08086A8C: .4byte 0x0000039A
_08086A90: .4byte 0x00000399
_08086A94: .4byte 0x0000FFFF
_08086A98:
	movs r0, #2
	strb r0, [r4]
_08086A9C:
	movs r0, #8
	strb r0, [r4, #3]
	movs r1, #0
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r4, #0xc]
	movs r0, #0x1f
	strb r0, [r4, #1]
	strb r1, [r4, #2]
	movs r0, #1
	strh r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08086AC0
sub_08086AC0: @ 0x08086AC0
	push {r4, r5, lr}
	ldr r2, _08086AE0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08086AE4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08086AEC
	.align 2, 0
_08086AE0: .4byte gCurTask
_08086AE4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08086AEC:
	ldr r4, [r3, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08086B02
	ldr r0, [r5]
	bl TaskDestroy
	b _08086B36
_08086B02:
	ldr r0, _08086B3C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _08086B36
	ldrh r0, [r3]
	cmp r0, #0
	beq _08086B36
	ldrh r0, [r3, #2]
	subs r0, #1
	strh r0, [r3, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086B36
	movs r0, #2
	strh r0, [r3]
	ldr r0, [r5]
	bl TaskDestroy
_08086B36:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086B3C: .4byte gUnk_03000510

	thumb_func_start sub_08086B40
sub_08086B40: @ 0x08086B40
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086B5A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08086B62
_08086B5A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08086B62:
	ldr r1, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #2
	beq _08086BCE
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #6
	bl sub_0803C8CC
	adds r4, r0, #0
	movs r0, #2
	strb r0, [r4]
	movs r5, #0
	movs r0, #0xf0
	lsls r0, r0, #8
	strh r0, [r4, #0xa]
	movs r0, #0xf8
	lsls r0, r0, #5
	strh r0, [r4, #0xc]
	movs r0, #0x1f
	strb r0, [r4, #1]
	movs r0, #8
	strb r0, [r4, #3]
	strb r5, [r4, #2]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #4]
	ldr r0, _08086BD4 @ =0x0000039A
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08086BB2
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_08086BB2:
	ldr r0, _08086BD8 @ =0x00000399
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	beq _08086BCA
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r4, #4]
	bics r0, r1
	strh r0, [r4, #4]
_08086BCA:
	ldr r0, _08086BDC @ =0x00003FFF
	strh r0, [r4, #6]
_08086BCE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08086BD4: .4byte 0x0000039A
_08086BD8: .4byte 0x00000399
_08086BDC: .4byte 0x00003FFF

	thumb_func_start sub_08086BE0
sub_08086BE0: @ 0x08086BE0
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086BFA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08086C02
_08086BFA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08086C02:
	ldr r1, [r0, #4]
	ldrh r0, [r0]
	cmp r0, #2
	beq _08086C3A
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #6
	bl sub_0803C8CC
	movs r2, #0
	movs r1, #0xf0
	lsls r1, r1, #8
	strh r1, [r0, #0xa]
	movs r1, #0xf8
	lsls r1, r1, #5
	strh r1, [r0, #0xc]
	movs r1, #0x1f
	strb r1, [r0, #1]
	strb r2, [r0, #2]
	movs r1, #8
	strb r1, [r0, #3]
	movs r1, #1
	strb r1, [r0]
	ldr r1, _08086C40 @ =0x0000FFFF
	strh r1, [r0, #4]
	ldr r1, _08086C44 @ =0x00003FFF
	strh r1, [r0, #6]
_08086C3A:
	pop {r0}
	bx r0
	.align 2, 0
_08086C40: .4byte 0x0000FFFF
_08086C44: .4byte 0x00003FFF

	thumb_func_start sub_08086C48
sub_08086C48: @ 0x08086C48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r5, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r0, _08086C84 @ =sub_08086DAC
	movs r2, #0xd4
	lsls r2, r2, #6
	mov r1, sl
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0xc
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086C88
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08086C90
	.align 2, 0
_08086C84: .4byte sub_08086DAC
_08086C88:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08086C90:
	adds r6, r0, #0
	movs r0, #0x3c
	strh r0, [r6, #6]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	strb r0, [r6]
	adds r5, #0x60
	ldrh r0, [r5]
	strh r0, [r6, #2]
	ldr r0, _08086D74 @ =gCurLevelInfo
	mov r8, r0
	ldrb r0, [r6]
	movs r7, #0xcd
	lsls r7, r7, #3
	muls r0, r7, r0
	add r0, r8
	ldr r4, _08086D78 @ =0x0000065E
	adds r0, r0, r4
	ldrb r0, [r0]
	movs r1, #0
	bl sub_08002A2C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldrb r0, [r6]
	muls r0, r7, r0
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r1, sl
	strh r1, [r6, #4]
	str r5, [sp, #4]
	mov r0, sb
	cmp r0, #0
	beq _08086D2C
	ldrb r0, [r6]
	muls r0, r7, r0
	add r0, r8
	adds r0, r0, r4
	ldrb r0, [r0]
	mov r1, sb
	bl sub_08002A1C
	movs r5, #1
	mov r7, r8
_08086CF8:
	ldrb r1, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r7
	ldr r1, _08086D78 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	subs r2, r5, #1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_08002A44
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #1
	bls _08086CF8
_08086D2C:
	ldr r2, _08086D7C @ =gKirbys
	ldr r0, _08086D80 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6, #2]
	cmp r0, r6
	bne _08086D9C
	cmp sb, sl
	beq _08086D9C
	ldr r0, _08086D84 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08086D9C
	ldr r2, _08086D88 @ =gMPlayInfo_0
	ldr r0, _08086D8C @ =gSongTable
	adds r0, #0xa0
	ldr r1, [r2]
	ldr r0, [r0]
	cmp r1, r0
	beq _08086D9C
	ldr r0, [sp, #4]
	ldrh r1, [r0]
	ldr r0, _08086D90 @ =0x00000396
	cmp r1, r0
	bne _08086D94
	adds r0, r2, #0
	bl MPlayStop
	b _08086D9C
	.align 2, 0
_08086D74: .4byte gCurLevelInfo
_08086D78: .4byte 0x0000065E
_08086D7C: .4byte gKirbys
_08086D80: .4byte gUnk_0203AD3C
_08086D84: .4byte gUnk_0203AD20
_08086D88: .4byte gMPlayInfo_0
_08086D8C: .4byte gSongTable
_08086D90: .4byte 0x00000396
_08086D94:
	adds r0, r2, #0
	movs r1, #8
	bl m4aMPlayFadeOut
_08086D9C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08086DAC
sub_08086DAC: @ 0x08086DAC
	push {r4, lr}
	ldr r0, _08086DC8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086DCC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08086DD4
	.align 2, 0
_08086DC8: .4byte gCurTask
_08086DCC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08086DD4:
	ldrh r0, [r4, #6]
	subs r0, #1
	strh r0, [r4, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086E32
	ldr r2, _08086E38 @ =gKirbys
	ldr r0, _08086E3C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r4, #2]
	cmp r0, r1
	bne _08086E2A
	ldr r2, _08086E40 @ =gCurLevelInfo
	ldrb r1, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08086E44 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrh r0, [r4, #4]
	cmp r0, r2
	beq _08086E2A
	ldr r0, _08086E48 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08086E2A
	adds r0, r2, #0
	bl m4aSongNumStart
_08086E2A:
	ldr r0, _08086E4C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08086E32:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08086E38: .4byte gKirbys
_08086E3C: .4byte gUnk_0203AD3C
_08086E40: .4byte gCurLevelInfo
_08086E44: .4byte 0x0000065E
_08086E48: .4byte gUnk_0203AD20
_08086E4C: .4byte gCurTask

	thumb_func_start sub_08086E50
sub_08086E50: @ 0x08086E50
	push {r4, r5, r6, lr}
	ldr r0, _08086E6C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08086E70
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08086E78
	.align 2, 0
_08086E6C: .4byte gCurTask
_08086E70:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08086E78:
	ldr r4, [r1, #8]
	ldrh r0, [r1, #6]
	subs r0, #1
	strh r0, [r1, #6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08086F66
	adds r0, r4, #0
	bl sub_080700D8
	adds r5, r4, #0
	adds r5, #0x56
	ldrb r0, [r5]
	bl sub_080335B4
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_08098184
	ldr r2, _08086F6C @ =0x00000299
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x4b
	beq _08086F20
	ldr r1, _08086F70 @ =gKirbys
	ldr r0, _08086F74 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08086F20
	ldrb r0, [r4]
	cmp r0, #0
	bne _08086EE4
	ldrb r0, [r5]
	cmp r0, r2
	bne _08086F20
_08086EE4:
	ldr r1, _08086F78 @ =gUnk_08D60FA4
	ldr r5, _08086F7C @ =gSongTable
	ldr r2, _08086F80 @ =0x00000BDC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08086F08
	ldr r1, _08086F84 @ =0x00000BD8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08086F20
_08086F08:
	cmp r3, #0
	beq _08086F1A
	ldr r0, _08086F88 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08086F20
_08086F1A:
	ldr r0, _08086F8C @ =0x0000017B
	bl m4aSongNumStart
_08086F20:
	ldr r1, _08086F90 @ =gUnk_08350E58
	ldrb r0, [r6]
	subs r0, #0x43
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _08086F36
	adds r0, r4, #0
	bl _call_via_r1
_08086F36:
	ldrb r0, [r6]
	cmp r0, #0x46
	beq _08086F5E
	cmp r0, #0x4b
	beq _08086F5E
	cmp r0, #0x4c
	beq _08086F5E
	cmp r0, #0x48
	beq _08086F5E
	cmp r0, #0x4a
	beq _08086F5E
	cmp r0, #0x49
	beq _08086F5E
	cmp r0, #0x4d
	bhi _08086F5E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_08086F5E:
	ldr r0, _08086F94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08086F66:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08086F6C: .4byte 0x00000299
_08086F70: .4byte gKirbys
_08086F74: .4byte gUnk_0203AD3C
_08086F78: .4byte gUnk_08D60FA4
_08086F7C: .4byte gSongTable
_08086F80: .4byte 0x00000BDC
_08086F84: .4byte 0x00000BD8
_08086F88: .4byte gUnk_0203AD10
_08086F8C: .4byte 0x0000017B
_08086F90: .4byte gUnk_08350E58
_08086F94: .4byte gCurTask

	thumb_func_start sub_08086F98
sub_08086F98: @ 0x08086F98
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _08086FD4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08086FDC
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _08086FD8 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _080870AA
	.align 2, 0
_08086FD4: .4byte gUnk_0203AD10
_08086FD8: .4byte 0x000003B7
_08086FDC:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08086FF0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x60
	b _08086FF8
_08086FF0:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x60
_08086FF8:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	movs r0, #1
	bl HasShard
	cmp r0, #0
	beq _0808701C
	lsls r1, r6, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	movs r3, #1
	bl sub_08088A38
	b _080870A2
_0808701C:
	movs r4, #0
	ldr r1, _08087034 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _08087038 @ =gUnk_020229E0
	mov sb, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087050
	.align 2, 0
_08087034: .4byte gUnk_020229D4
_08087038: .4byte gUnk_020229E0
_0808703C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087058
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087050:
	cmp r0, #0
	bne _0808703C
	orrs r2, r3
	str r2, [r1]
_08087058:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, sb
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_080870A2:
	adds r0, r5, #0
	movs r1, #2
	bl sub_08088700
_080870AA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080870B8
sub_080870B8: @ 0x080870B8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080870EC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080870F4
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080870F0 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _0808719E
	.align 2, 0
_080870EC: .4byte gUnk_0203AD10
_080870F0: .4byte 0x000003B7
_080870F4:
	movs r0, #4
	bl HasShard
	cmp r0, #0
	beq _0808710C
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x20
	movs r3, #4
	bl sub_08088A38
	b _08087196
_0808710C:
	movs r4, #0
	ldr r1, _08087124 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087128 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087140
	.align 2, 0
_08087124: .4byte gUnk_020229D4
_08087128: .4byte gUnk_020229E0
_0808712C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087148
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087140:
	cmp r0, #0
	bne _0808712C
	orrs r2, r3
	str r2, [r1]
_08087148:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x20
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_08087196:
	adds r0, r5, #0
	movs r1, #5
	bl sub_08088700
_0808719E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080871A4
sub_080871A4: @ 0x080871A4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080871D8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080871E0
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080871DC @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _0808728A
	.align 2, 0
_080871D8: .4byte gUnk_0203AD10
_080871DC: .4byte 0x000003B7
_080871E0:
	movs r0, #6
	bl HasShard
	cmp r0, #0
	beq _080871F8
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x50
	movs r3, #6
	bl sub_08088A38
	b _08087282
_080871F8:
	movs r4, #0
	ldr r1, _08087210 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087214 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _0808722C
	.align 2, 0
_08087210: .4byte gUnk_020229D4
_08087214: .4byte gUnk_020229E0
_08087218:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087234
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0808722C:
	cmp r0, #0
	bne _08087218
	orrs r2, r3
	str r2, [r1]
_08087234:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x50
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #6
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_08087282:
	adds r0, r5, #0
	movs r1, #7
	bl sub_08088700
_0808728A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087290
sub_08087290: @ 0x08087290
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080872C8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080872D0
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080872CC @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _08087384
	.align 2, 0
_080872C8: .4byte gUnk_0203AD10
_080872CC: .4byte 0x000003B7
_080872D0:
	movs r0, #0x94
	lsls r0, r0, #2
	mov r8, r0
	movs r0, #5
	bl HasShard
	cmp r0, #0
	beq _080872EE
	adds r0, r5, #0
	mov r1, r8
	movs r2, #0xe5
	movs r3, #5
	bl sub_08088A38
	b _08087376
_080872EE:
	movs r4, #0
	ldr r1, _08087304 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087308 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087320
	.align 2, 0
_08087304: .4byte gUnk_020229D4
_08087308: .4byte gUnk_020229E0
_0808730C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087328
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087320:
	cmp r0, #0
	bne _0808730C
	orrs r2, r3
	str r2, [r1]
_08087328:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, r8
	strh r0, [r1, #6]
	movs r0, #0xe5
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #5
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_08087376:
	adds r0, r5, #0
	bl sub_080886A8
	adds r0, r5, #0
	movs r1, #6
	bl sub_08088700
_08087384:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08087390
sub_08087390: @ 0x08087390
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080873C4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080873CC
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080873C8 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _08087474
	.align 2, 0
_080873C4: .4byte gUnk_0203AD10
_080873C8: .4byte 0x000003B7
_080873CC:
	movs r0, #0
	bl HasShard
	cmp r0, #0
	beq _080873E4
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x50
	movs r3, #0
	bl sub_08088A38
	b _0808746C
_080873E4:
	movs r4, #0
	ldr r1, _080873FC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087400 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087418
	.align 2, 0
_080873FC: .4byte gUnk_020229D4
_08087400: .4byte gUnk_020229E0
_08087404:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087420
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087418:
	cmp r0, #0
	bne _08087404
	orrs r2, r3
	str r2, [r1]
_08087420:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x50
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_0808746C:
	adds r0, r5, #0
	movs r1, #1
	bl sub_08088700
_08087474:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808747C
sub_0808747C: @ 0x0808747C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	cmp r0, #0
	beq _08087490
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08087586
_08087490:
	movs r0, #1
	movs r1, #3
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08087586
	adds r0, r5, #0
	bl sub_080886A8
	ldr r0, _080874D4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080874DC
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080874D8 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _08087586
	.align 2, 0
_080874D4: .4byte gUnk_0203AD10
_080874D8: .4byte 0x000003B7
_080874DC:
	movs r0, #2
	bl HasShard
	cmp r0, #0
	beq _080874F4
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x50
	movs r3, #2
	bl sub_08088A38
	b _0808757E
_080874F4:
	movs r4, #0
	ldr r1, _0808750C @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _08087510 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087528
	.align 2, 0
_0808750C: .4byte gUnk_020229D4
_08087510: .4byte gUnk_020229E0
_08087514:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087530
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087528:
	cmp r0, #0
	bne _08087514
	orrs r2, r3
	str r2, [r1]
_08087530:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x50
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_0808757E:
	adds r0, r5, #0
	movs r1, #3
	bl sub_08088700
_08087586:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808758C
sub_0808758C: @ 0x0808758C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_080886A8
	ldr r0, _080875C0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080875C8
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080875C4 @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _08087672
	.align 2, 0
_080875C0: .4byte gUnk_0203AD10
_080875C4: .4byte 0x000003B7
_080875C8:
	movs r0, #3
	bl HasShard
	cmp r0, #0
	beq _080875E0
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0xf8
	movs r3, #3
	bl sub_08088A38
	b _0808766A
_080875E0:
	movs r4, #0
	ldr r1, _080875F8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080875FC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _08087614
	.align 2, 0
_080875F8: .4byte gUnk_020229D4
_080875FC: .4byte gUnk_020229E0
_08087600:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0808761C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_08087614:
	cmp r0, #0
	bne _08087600
	orrs r2, r3
	str r2, [r1]
_0808761C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0xf8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #3
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_0808766A:
	adds r0, r5, #0
	movs r1, #4
	bl sub_08088700
_08087672:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087678
sub_08087678: @ 0x08087678
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0808776A
	adds r0, r5, #0
	bl sub_080886A8
	ldr r0, _080876B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _080876C0
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _080876BC @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
	b _0808776A
	.align 2, 0
_080876B8: .4byte gUnk_0203AD10
_080876BC: .4byte 0x000003B7
_080876C0:
	movs r0, #7
	bl HasShard
	cmp r0, #0
	beq _080876D8
	adds r0, r5, #0
	movs r1, #0x80
	movs r2, #0x50
	movs r3, #7
	bl sub_08088A38
	b _08087762
_080876D8:
	movs r4, #0
	ldr r1, _080876F0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080876F4 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov ip, r7
	b _0808770C
	.align 2, 0
_080876F0: .4byte gUnk_020229D4
_080876F4: .4byte gUnk_020229E0
_080876F8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _08087714
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0808770C:
	cmp r0, #0
	bne _080876F8
	orrs r2, r3
	str r2, [r1]
_08087714:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	movs r0, #0x80
	strh r0, [r1, #6]
	movs r0, #0x50
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x65
	strb r0, [r1, #0xc]
	movs r0, #7
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	bl CreateObject
_08087762:
	adds r0, r5, #0
	movs r1, #8
	bl sub_08088700
_0808776A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087770
sub_08087770: @ 0x08087770
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08087794 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov r8, r2
	cmp r0, #0
	beq _08087798
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080877A0
	.align 2, 0
_08087794: .4byte gCurTask
_08087798:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080877A0:
	movs r2, #0
	movs r3, #0
	ldr r0, _08087808 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _080877F0
	ldr r4, _0808780C @ =gKirbys
	mov ip, r4
	ldrh r5, [r1]
	ldr r7, _08087810 @ =gUnk_02026D50
	adds r4, r0, #0
	ldr r6, _08087814 @ =gCurLevelInfo
_080877B8:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r5
	bne _080877E6
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r6
	ldr r1, _08087818 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080877E6
	movs r2, #1
_080877E6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r4
	blo _080877B8
_080877F0:
	cmp r2, #0
	bne _080877FC
	mov r4, r8
	ldr r0, [r4]
	bl TaskDestroy
_080877FC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087808: .4byte gUnk_0203AD44
_0808780C: .4byte gKirbys
_08087810: .4byte gUnk_02026D50
_08087814: .4byte gCurLevelInfo
_08087818: .4byte 0x0000065E

	thumb_func_start sub_0808781C
sub_0808781C: @ 0x0808781C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sb, r0
	ldr r2, _08087848 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808784C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087854
	.align 2, 0
_08087848: .4byte gCurTask
_0808784C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087854:
	adds r3, r0, #0
	movs r5, #0
	movs r4, #0
	ldr r0, _080878B8 @ =gUnk_0203AD44
	ldrb r1, [r0]
	mov ip, r0
	cmp r5, r1
	bhs _080878AA
	ldr r2, _080878BC @ =gKirbys
	mov sl, r2
	ldrh r7, [r3]
	ldr r0, _080878C0 @ =gUnk_02026D50
	mov r8, r0
	adds r6, r1, #0
	ldr r2, _080878C4 @ =gCurLevelInfo
_08087872:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r4, r0
	add r0, sl
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r7
	bne _080878A0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r4, r0
	adds r0, r0, r2
	ldr r1, _080878C8 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080878A0
	movs r5, #1
_080878A0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r6
	blo _08087872
_080878AA:
	cmp r5, #0
	bne _080878D0
	ldr r2, _080878CC @ =gCurTask
	ldr r0, [r2]
	bl TaskDestroy
	b _08087A68
	.align 2, 0
_080878B8: .4byte gUnk_0203AD44
_080878BC: .4byte gKirbys
_080878C0: .4byte gUnk_02026D50
_080878C4: .4byte gCurLevelInfo
_080878C8: .4byte 0x0000065E
_080878CC: .4byte gCurTask
_080878D0:
	movs r0, #0
	mov r8, r0
	mov r1, ip
	ldrb r0, [r1]
	cmp r8, r0
	bhs _0808791E
	ldr r6, _08087A10 @ =gKirbys
	ldrh r4, [r3]
	adds r2, r0, #0
	movs r5, #0xd4
	lsls r5, r5, #1
_080878E6:
	mov r0, r8
	muls r0, r5, r0
	adds r1, r0, r6
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r4
	bne _08087910
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08087908
	b _08087A68
_08087908:
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	mov sb, r0
_08087910:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r8, r2
	blo _080878E6
_0808791E:
	ldr r0, _08087A14 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	mov r1, sb
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08087934
	b _08087A68
_08087934:
	ldrh r1, [r3, #4]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	beq _08087940
	b _08087A64
_08087940:
	movs r0, #0
	mov r8, r0
	mov r1, ip
	ldrb r1, [r1]
	cmp r8, r1
	blo _0808794E
	b _08087A68
_0808794E:
	mov r2, sp
	adds r2, #1
	str r2, [sp, #4]
_08087954:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r7, r8
	muls r7, r0, r7
	ldr r0, _08087A10 @ =gKirbys
	adds r6, r7, r0
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r1, [r3]
	ldrh r0, [r0]
	adds r2, r1, #0
	cmp r0, r2
	bne _08087A3E
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08087A24
	ldrb r0, [r3, #6]
	mov r1, r8
	asrs r0, r1
	movs r1, #1
	mov sl, r1
	ands r0, r1
	cmp r0, #0
	bne _08087A24
	ldrh r0, [r3, #2]
	mov r1, sp
	ldr r2, [sp, #4]
	str r3, [sp, #8]
	bl sub_08002D40
	ldr r3, [sp, #8]
	ldrh r0, [r3, #2]
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r6, r2
	strh r0, [r1]
	mov r0, sp
	ldrb r1, [r0]
	adds r2, #2
	adds r0, r6, r2
	strh r1, [r0]
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	adds r2, #2
	adds r1, r6, r2
	strh r0, [r1]
	ldr r0, _08087A10 @ =gKirbys
	adds r0, #8
	adds r5, r7, r0
	ldr r4, [r5]
	movs r0, #0x80
	lsls r0, r0, #3
	mov sb, r0
	ands r4, r0
	rsbs r4, r4, #0
	lsrs r4, r4, #0x1f
	ldr r1, _08087A18 @ =gKirbys+0xC
	adds r2, r7, r1
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	ldr r1, _08087A1C @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2]
	adds r0, r6, #0
	str r3, [sp, #8]
	bl sub_0805545C
	ldr r3, [sp, #8]
	cmp r4, #0
	beq _080879FC
	ldr r0, [r5]
	mov r2, sb
	orrs r0, r2
	str r0, [r5]
_080879FC:
	mov r0, sl
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r3, #6]
	orrs r0, r1
	strb r0, [r3, #6]
	ldr r2, _08087A20 @ =gUnk_0203AD44
	mov ip, r2
	b _08087A4A
	.align 2, 0
_08087A10: .4byte gKirbys
_08087A14: .4byte gUnk_03000510
_08087A18: .4byte gKirbys+0xC
_08087A1C: .4byte 0xFFFBFFFF
_08087A20: .4byte gUnk_0203AD44
_08087A24:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r1, _08087A60 @ =gKirbys
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r1, [r0]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08087A4A
_08087A3E:
	movs r1, #1
	mov r2, r8
	lsls r1, r2
	ldrb r0, [r3, #6]
	bics r0, r1
	strb r0, [r3, #6]
_08087A4A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	mov r0, ip
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08087A5E
	b _08087954
_08087A5E:
	b _08087A68
	.align 2, 0
_08087A60: .4byte gKirbys
_08087A64:
	subs r0, r1, #1
	strh r0, [r3, #4]
_08087A68:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08087A78
sub_08087A78: @ 0x08087A78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08087A9C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov sb, r2
	cmp r0, #0
	beq _08087AA0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087AA8
	.align 2, 0
_08087A9C: .4byte gCurTask
_08087AA0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087AA8:
	adds r4, r0, #0
	movs r2, #0
	movs r3, #0
	ldr r0, _08087B0C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r2, r0
	bhs _08087AFC
	ldr r1, _08087B10 @ =gKirbys
	mov r8, r1
	ldrh r6, [r4, #2]
	ldr r1, _08087B14 @ =gUnk_02026D50
	mov ip, r1
	adds r5, r0, #0
	ldr r7, _08087B18 @ =gCurLevelInfo
_08087AC4:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08087AF2
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, _08087B1C @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08087AF2
	movs r2, #1
_08087AF2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r5
	blo _08087AC4
_08087AFC:
	cmp r2, #0
	bne _08087B20
	mov r1, sb
	ldr r0, [r1]
	bl TaskDestroy
	b _08087B42
	.align 2, 0
_08087B0C: .4byte gUnk_0203AD44
_08087B10: .4byte gKirbys
_08087B14: .4byte gUnk_02026D50
_08087B18: .4byte gCurLevelInfo
_08087B1C: .4byte 0x0000065E
_08087B20:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _08087B42
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08087B42
	bl sub_080027A8
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, _08087B50 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08087B54 @ =sub_08087B58
	str r0, [r1, #8]
_08087B42:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087B50: .4byte gCurTask
_08087B54: .4byte sub_08087B58

	thumb_func_start sub_08087B58
sub_08087B58: @ 0x08087B58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08087B80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov sl, r2
	cmp r0, #0
	beq _08087B84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087B8C
	.align 2, 0
_08087B80: .4byte gCurTask
_08087B84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087B8C:
	adds r4, r0, #0
	movs r5, #0
	movs r3, #0
	ldr r0, _08087BF0 @ =gUnk_0203AD44
	ldrb r1, [r0]
	mov sb, r0
	cmp r5, r1
	bhs _08087BE2
	ldr r0, _08087BF4 @ =gKirbys
	mov r8, r0
	ldrh r6, [r4, #2]
	ldr r0, _08087BF8 @ =gUnk_02026D50
	mov ip, r0
	adds r2, r1, #0
	ldr r7, _08087BFC @ =gCurLevelInfo
_08087BAA:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08087BD8
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, _08087C00 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08087BD8
	movs r5, #1
_08087BD8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _08087BAA
_08087BE2:
	cmp r5, #0
	bne _08087C04
	mov r1, sl
	ldr r0, [r1]
	bl TaskDestroy
	b _08087CD2
	.align 2, 0
_08087BF0: .4byte gUnk_0203AD44
_08087BF4: .4byte gKirbys
_08087BF8: .4byte gUnk_02026D50
_08087BFC: .4byte gCurLevelInfo
_08087C00: .4byte 0x0000065E
_08087C04:
	movs r3, #0
	mov r1, sb
	ldrb r0, [r1]
	cmp r3, r0
	bhs _08087C42
	ldr r7, _08087C84 @ =gKirbys
	ldrh r5, [r4, #2]
	adds r2, r0, #0
	movs r6, #0xd4
	lsls r6, r6, #1
_08087C18:
	adds r0, r3, #0
	muls r0, r6, r0
	adds r1, r0, r7
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r5
	bne _08087C38
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x30
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bls _08087CD2
_08087C38:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _08087C18
_08087C42:
	ldr r0, _08087C88 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r4]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _08087CD2
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08087CD2
	movs r3, #0
	mov r0, sb
	ldrb r0, [r0]
	cmp r3, r0
	bhs _08087CB0
	ldr r1, _08087C84 @ =gKirbys
	adds r0, r1, #0
	adds r0, #0x60
	ldrh r2, [r4, #2]
	ldrh r0, [r0]
	adds r5, r1, #0
	cmp r0, r2
	bne _08087C8C
	movs r0, #0
	strb r0, [r4]
	b _08087CB0
	.align 2, 0
_08087C84: .4byte gKirbys
_08087C88: .4byte gUnk_03000510
_08087C8C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r1, sb
	ldrb r1, [r1]
	cmp r3, r1
	bhs _08087CB0
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r5
	adds r0, #0x60
	ldrh r1, [r0]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08087C8C
	strb r3, [r4]
_08087CB0:
	ldrb r0, [r4]
	bl sub_08033540
	ldrb r0, [r4]
	bl sub_0803CA20
	ldr r1, _08087CE0 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	movs r0, #0x28
	strh r0, [r4, #4]
	ldr r0, _08087CE4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08087CE8 @ =sub_08087CEC
	str r0, [r1, #8]
_08087CD2:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087CE0: .4byte 0x0000FFFF
_08087CE4: .4byte gCurTask
_08087CE8: .4byte sub_08087CEC

	thumb_func_start sub_08087CEC
sub_08087CEC: @ 0x08087CEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	movs r0, #0
	mov sl, r0
	mov r8, r0
	ldr r2, _08087D18 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08087D1C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087D24
	.align 2, 0
_08087D18: .4byte gCurTask
_08087D1C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087D24:
	adds r5, r0, #0
	movs r4, #0
	movs r3, #0
	ldr r0, _08087D88 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08087D78
	ldr r1, _08087D8C @ =gKirbys
	mov sb, r1
	ldrh r6, [r5, #2]
	ldr r1, _08087D90 @ =gUnk_02026D50
	mov ip, r1
	adds r2, r0, #0
	ldr r7, _08087D94 @ =gCurLevelInfo
_08087D40:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	add r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, r6
	bne _08087D6E
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r0, r0, r7
	ldr r1, _08087D98 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08087D6E
	movs r4, #1
_08087D6E:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r2
	blo _08087D40
_08087D78:
	cmp r4, #0
	bne _08087DA0
	ldr r1, _08087D9C @ =gCurTask
	ldr r0, [r1]
	bl TaskDestroy
	b _08087EA4
	.align 2, 0
_08087D88: .4byte gUnk_0203AD44
_08087D8C: .4byte gKirbys
_08087D90: .4byte gUnk_02026D50
_08087D94: .4byte gCurLevelInfo
_08087D98: .4byte 0x0000065E
_08087D9C: .4byte gCurTask
_08087DA0:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08087DD0
	ldrb r0, [r5]
	bl sub_0803C95C
	ldr r1, _08087DC8 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	ldr r0, _08087DCC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08087EA4
	.align 2, 0
_08087DC8: .4byte 0x0000FFFF
_08087DCC: .4byte gCurTask
_08087DD0:
	cmp r0, #4
	bne _08087EA4
	ldrb r0, [r5]
	bl sub_080335B4
	movs r4, #0
	ldr r0, _08087E1C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08087E10
	movs r6, #0xd4
	lsls r6, r6, #1
	ldrh r2, [r5, #2]
	adds r1, r0, #0
	ldr r3, _08087E20 @ =gKirbys
_08087DEE:
	adds r0, r4, #0
	muls r0, r6, r0
	adds r0, r0, r3
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r2, r0
	bne _08087E06
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
_08087E06:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r1
	blo _08087DEE
_08087E10:
	mov r0, r8
	cmp r0, #1
	bne _08087E24
	movs r7, #1
	b _08087E3C
	.align 2, 0
_08087E1C: .4byte gUnk_0203AD44
_08087E20: .4byte gKirbys
_08087E24:
	ldr r2, _08087EB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08087EB8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08087EBC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	adds r0, #2
	adds r7, r0, #0
_08087E3C:
	movs r4, #0
	ldr r0, _08087EC0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	bhs _08087EA4
	ldr r6, _08087EC4 @ =gUnk_08352DBE
	adds r0, r6, #1
	mov sb, r0
_08087E4C:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r4, #0
	muls r1, r0, r1
	ldr r0, _08087EC8 @ =gKirbys
	adds r2, r1, r0
	adds r1, r2, #0
	adds r1, #0x60
	ldrh r0, [r5, #2]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08087E96
	ldrb r0, [r5, #1]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #1]
	lsls r0, r0, #1
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [sp, #4]
	adds r0, r2, #0
	mov r1, sl
	mov r2, r8
	adds r3, r7, #0
	bl sub_0804BD98
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_08087E96:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _08087EC0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r4, r0
	blo _08087E4C
_08087EA4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087EB4: .4byte gRngVal
_08087EB8: .4byte 0x00196225
_08087EBC: .4byte 0x3C6EF35F
_08087EC0: .4byte gUnk_0203AD44
_08087EC4: .4byte gUnk_08352DBE
_08087EC8: .4byte gKirbys

	thumb_func_start sub_08087ECC
sub_08087ECC: @ 0x08087ECC
	push {r4, r5, r6, r7, lr}
	movs r6, #1
	ldr r2, _08087EEC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	mov ip, r2
	cmp r0, #0
	beq _08087EF0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08087EF8
	.align 2, 0
_08087EEC: .4byte gCurTask
_08087EF0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08087EF8:
	adds r4, r0, #0
	movs r2, #0
	ldr r0, _08087F90 @ =gUnk_0203AD44
	adds r5, r0, #0
	ldrb r0, [r5]
	cmp r2, r0
	bhs _08087F44
	ldr r7, _08087F94 @ =gKirbys
_08087F08:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r3, r0, r7
	movs r0, #2
	ldrsh r1, [r4, r0]
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r1, r0
	bne _08087F38
	movs r0, #1
	lsls r0, r2
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	ldr r1, [r3, #0x5c]
	movs r0, #8
	rsbs r0, r0, #0
	ands r1, r0
	movs r0, #6
	orrs r1, r0
	str r1, [r3, #0x5c]
	movs r6, #0
_08087F38:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r1, [r5]
	cmp r2, r1
	blo _08087F08
_08087F44:
	cmp r6, #0
	beq _08087F88
	movs r2, #0
	ldrb r0, [r5]
	cmp r2, r0
	bhs _08087F80
	movs r7, #0xd4
	lsls r7, r7, #1
	ldr r6, _08087F94 @ =gKirbys
_08087F56:
	adds r0, r2, #0
	muls r0, r7, r0
	adds r3, r0, r6
	ldrh r0, [r4]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08087F74
	ldr r0, [r3, #0x5c]
	subs r1, #9
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r3, #0x5c]
_08087F74:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r1, [r5]
	cmp r2, r1
	blo _08087F56
_08087F80:
	mov r1, ip
	ldr r0, [r1]
	bl TaskDestroy
_08087F88:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08087F90: .4byte gUnk_0203AD44
_08087F94: .4byte gKirbys

	thumb_func_start sub_08087F98
sub_08087F98: @ 0x08087F98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _08087FB8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08087FBC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08087FC4
	.align 2, 0
_08087FB8: .4byte gCurTask
_08087FBC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08087FC4:
	ldr r5, [r4, #4]
	ldr r0, _08088000 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r6, r5, #0
	adds r6, #0x56
	ldrb r3, [r6]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0808804E
	ldr r0, _08088004 @ =0x00000103
	adds r7, r5, r0
	ldrb r0, [r7]
	cmp r0, #0
	beq _08088010
	ldr r0, _08088008 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r0, r3
	bne _08087FF6
	ldrb r0, [r7]
	bl sub_08035E28
_08087FF6:
	ldr r0, _0808800C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0808804E
	.align 2, 0
_08088000: .4byte gUnk_03000510
_08088004: .4byte 0x00000103
_08088008: .4byte gUnk_0203AD3C
_0808800C: .4byte gCurTask
_08088010:
	ldrh r0, [r4, #2]
	subs r0, #1
	strh r0, [r4, #2]
	ldr r1, _08088058 @ =gUnk_0203AD3C
	mov r8, r1
	ldrb r0, [r1]
	ldrb r1, [r6]
	cmp r0, r1
	bne _0808802E
	ldrb r0, [r4]
	bl sub_08035E28
	adds r0, r5, #0
	bl sub_08035F50
_0808802E:
	movs r1, #2
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _0808804E
	mov r1, r8
	ldrb r0, [r1]
	ldrb r6, [r6]
	cmp r0, r6
	bne _08088046
	ldrb r0, [r7]
	bl sub_08035E28
_08088046:
	ldr r0, _0808805C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0808804E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088058: .4byte gUnk_0203AD3C
_0808805C: .4byte gCurTask

	thumb_func_start sub_08088060
sub_08088060: @ 0x08088060
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08088090 @ =sub_080854E8
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088094
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0808809C
	.align 2, 0
_08088090: .4byte sub_080854E8
_08088094:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0808809C:
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080880AC
sub_080880AC: @ 0x080880AC
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080880E4 @ =sub_080850C8
	ldr r1, _080880E8 @ =0x0000356E
	adds r2, r5, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	ldr r1, _080880EC @ =sub_080887A0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080880F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080880F8
	.align 2, 0
_080880E4: .4byte sub_080850C8
_080880E8: .4byte 0x0000356E
_080880EC: .4byte sub_080887A0
_080880F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080880F8:
	str r4, [r1, #4]
	movs r0, #0
	strh r5, [r1, #2]
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #0x5c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08088118
sub_08088118: @ 0x08088118
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08088148 @ =sub_080863C0
	ldr r2, _0808814C @ =0x00003564
	ldr r1, _08088150 @ =sub_080887EC
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088154
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0808815C
	.align 2, 0
_08088148: .4byte sub_080863C0
_0808814C: .4byte 0x00003564
_08088150: .4byte sub_080887EC
_08088154:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0808815C:
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #2]
	ldr r2, _08088174 @ =0x00000103
	adds r0, r4, r2
	ldrb r0, [r0]
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08088174: .4byte 0x00000103

	thumb_func_start sub_08088178
sub_08088178: @ 0x08088178
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080881A8 @ =sub_08085180
	ldr r2, _080881AC @ =0x0000356E
	ldr r1, _080881B0 @ =sub_080887A0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080881B4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080881BC
	.align 2, 0
_080881A8: .4byte sub_08085180
_080881AC: .4byte 0x0000356E
_080881B0: .4byte sub_080887A0
_080881B4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080881BC:
	str r4, [r1, #4]
	strh r5, [r1, #2]
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #0x5c]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080881E0
sub_080881E0: @ 0x080881E0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _08088214 @ =sub_080856F4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088218 @ =sub_08088884
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808821C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08088224
	.align 2, 0
_08088214: .4byte sub_080856F4
_08088218: .4byte sub_08088884
_0808821C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08088224:
	str r4, [r1, #4]
	movs r0, #0
	strh r5, [r1, #2]
	strh r0, [r1]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08088234
sub_08088234: @ 0x08088234
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	ldr r0, _0808826C @ =sub_080859B4
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088270
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08088278
	.align 2, 0
_0808826C: .4byte sub_080859B4
_08088270:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08088278:
	adds r2, r7, #0
	adds r2, #0x56
	ldrb r0, [r2]
	str r0, [r4, #4]
	strh r6, [r4, #2]
	strh r5, [r4]
	adds r1, r5, #0
	ldr r3, _080882AC @ =gCurLevelInfo
	ldrb r2, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _080882B0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	movs r2, #2
	ldrsh r1, [r4, r2]
	str r1, [r0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080882AC: .4byte gCurLevelInfo
_080882B0: .4byte 0x0000065E

	thumb_func_start sub_080882B4
sub_080882B4: @ 0x080882B4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080882E4 @ =sub_08085A54
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080882E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _080882F0
	.align 2, 0
_080882E4: .4byte sub_08085A54
_080882E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_080882F0:
	str r4, [r2, #8]
	movs r1, #0
	strh r1, [r2, #2]
	strh r1, [r2]
	movs r0, #0x80
	strh r0, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _08088320 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	movs r2, #0xf6
	lsls r2, r2, #1
	adds r1, r1, r2
	adds r0, r0, r1
	movs r1, #2
	str r1, [r0]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08088320: .4byte gCurLevelInfo

	thumb_func_start sub_08088324
sub_08088324: @ 0x08088324
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08088354 @ =sub_080888B8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088358 @ =sub_0808891C
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808835C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08088364
	.align 2, 0
_08088354: .4byte sub_080888B8
_08088358: .4byte sub_0808891C
_0808835C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08088364:
	str r4, [r2, #4]
	movs r1, #0
	movs r0, #0xc8
	strh r0, [r2, #2]
	strh r1, [r2]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_08033540
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808838C
sub_0808838C: @ 0x0808838C
	ldr r1, _08088394 @ =gUnk_0300051C
	movs r0, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08088394: .4byte gUnk_0300051C

	thumb_func_start sub_08088398
sub_08088398: @ 0x08088398
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r0, _080883CC @ =sub_08085E60
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080883D0 @ =sub_0808895C
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080883D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080883DC
	.align 2, 0
_080883CC: .4byte sub_08085E60
_080883D0: .4byte sub_0808895C
_080883D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080883DC:
	str r4, [r1, #8]
	str r5, [r1, #4]
	movs r0, #0
	strb r0, [r1, #1]
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r1, #2]
	adds r0, r1, #0
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08088400
sub_08088400: @ 0x08088400
	str r1, [r0, #4]
	ldrb r2, [r0]
	movs r1, #0xf
	ands r1, r2
	strb r1, [r0]
	bx lr

	thumb_func_start sub_0808840C
sub_0808840C: @ 0x0808840C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0808843C @ =sub_080864E8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088440 @ =sub_080889C0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088444
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0808844C
	.align 2, 0
_0808843C: .4byte sub_080864E8
_08088440: .4byte sub_080889C0
_08088444:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0808844C:
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0808845C
sub_0808845C: @ 0x0808845C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	bne _080884BA
	ldr r0, _0808849C @ =sub_080865E8
	movs r2, #0xd4
	lsls r2, r2, #6
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080884A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080884A8
	.align 2, 0
_0808849C: .4byte sub_080865E8
_080884A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080884A8:
	str r4, [r1, #4]
	movs r0, #0
	strh r5, [r1, #2]
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4, #8]
_080884BA:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080884C4
sub_080884C4: @ 0x080884C4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r1, r0
	cmp r1, #0
	bne _0808851E
	ldr r0, _08088500 @ =sub_0808668C
	movs r2, #0xd4
	lsls r2, r2, #6
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088504
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0808850C
	.align 2, 0
_08088500: .4byte sub_0808668C
_08088504:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0808850C:
	str r4, [r1, #4]
	movs r0, #0
	strh r0, [r1, #2]
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	str r0, [r4, #0x5c]
_0808851E:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08088528
sub_08088528: @ 0x08088528
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08088558 @ =sub_08086E50
	ldr r2, _0808855C @ =0x00002F9C
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088560
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08088568
	.align 2, 0
_08088558: .4byte sub_08086E50
_0808855C: .4byte 0x00002F9C
_08088560:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08088568:
	movs r0, #0x1c
	strh r0, [r1, #6]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r1, #2]
	str r4, [r1, #8]
	ldr r1, _08088598 @ =gUnk_08350E34
	adds r0, r4, #0
	bl sub_080860A8
	movs r0, #4
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_08033540
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08088598: .4byte gUnk_08350E34

	thumb_func_start sub_0808859C
sub_0808859C: @ 0x0808859C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _080885D4 @ =sub_0808781C
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080885D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _080885E0
	.align 2, 0
_080885D4: .4byte sub_0808781C
_080885D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_080885E0:
	movs r0, #0
	strh r4, [r2, #2]
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r1, [r1]
	strh r1, [r2]
	strh r5, [r2, #4]
	strb r0, [r2, #6]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080885F8
sub_080885F8: @ 0x080885F8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r7, #0xf0
	ldr r1, _0808863C @ =gUnk_08350E98
	adds r0, #0x87
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r6, [r0]
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0x10]
	cmp r0, #2
	bls _08088618
	adds r7, #0xb4
_08088618:
	adds r0, r4, #0
	bl sub_080886A8
	ldr r0, [r5]
	ldrb r1, [r0, #0x10]
	adds r1, #0xd
	adds r0, r4, #0
	bl sub_08088700
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r7, #0
	bl sub_0808859C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808863C: .4byte gUnk_08350E98

	thumb_func_start sub_08088640
sub_08088640: @ 0x08088640
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	ldr r0, _08088688 @ =gUnk_0203AD3C
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808869E
	ldr r0, _0808868C @ =sub_08087F98
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088690
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08088698
	.align 2, 0
_08088688: .4byte gUnk_0203AD3C
_0808868C: .4byte sub_08087F98
_08088690:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08088698:
	str r4, [r0, #4]
	strh r5, [r0, #2]
	strh r6, [r0]
_0808869E:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080886A8
sub_080886A8: @ 0x080886A8
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _080886D8 @ =sub_08087ECC
	ldr r2, _080886DC @ =0x00003596
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080886E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _080886E8
	.align 2, 0
_080886D8: .4byte sub_08087ECC
_080886DC: .4byte 0x00003596
_080886E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_080886E8:
	movs r0, #0
	str r0, [r2, #4]
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r1, [r1]
	strh r1, [r2, #2]
	strh r0, [r2]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08088700
sub_08088700: @ 0x08088700
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08088734 @ =sub_08087770
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088738 @ =sub_08088A04
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808873C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08088744
	.align 2, 0
_08088734: .4byte sub_08087770
_08088738: .4byte sub_08088A04
_0808873C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08088744:
	movs r0, #0
	str r0, [r1, #4]
	strh r4, [r1, #2]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	strh r0, [r1]
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	movs r1, #1
	str r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808876C
sub_0808876C: @ 0x0808876C
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088786
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808878E
_08088786:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808878E:
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, _0808879C @ =0xFD7FF7F7
	ands r1, r2
	str r1, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_0808879C: .4byte 0xFD7FF7F7

	thumb_func_start sub_080887A0
sub_080887A0: @ 0x080887A0
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080887BA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080887C2
_080887BA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080887C2:
	ldr r2, [r0, #4]
	ldr r0, [r2, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x5c]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080887E8
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E558
_080887E8:
	pop {r0}
	bx r0

	thumb_func_start sub_080887EC
sub_080887EC: @ 0x080887EC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088806
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808880E
_08088806:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808880E:
	ldr r2, [r0, #4]
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08088826
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803E558
_08088826:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808882C
sub_0808882C: @ 0x0808882C
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088846
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0808884E
_08088846:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0808884E:
	ldr r3, [r2, #4]
	ldr r0, [r3, #8]
	ldr r1, _08088880 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r3, #8]
	ldrh r0, [r2]
	cmp r0, #0
	beq _0808887C
	ldrb r0, [r3]
	cmp r0, #1
	bne _0808887C
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _0808887C
	ldr r0, [r3, #0x68]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x68]
_0808887C:
	pop {r0}
	bx r0
	.align 2, 0
_08088880: .4byte 0xFFFF7FFF

	thumb_func_start sub_08088884
sub_08088884: @ 0x08088884
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808889E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080888A6
_0808889E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080888A6:
	ldr r0, [r0, #4]
	ldr r1, [r0, #8]
	ldr r2, _080888B4 @ =0xFFFFFBFF
	ands r1, r2
	str r1, [r0, #8]
	pop {r0}
	bx r0
	.align 2, 0
_080888B4: .4byte 0xFFFFFBFF

	thumb_func_start sub_080888B8
sub_080888B8: @ 0x080888B8
	push {r4, lr}
	ldr r2, _080888D8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _080888DC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _080888E4
	.align 2, 0
_080888D8: .4byte gCurTask
_080888DC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_080888E4:
	ldr r2, [r1, #4]
	ldr r3, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080888FA
	ldr r0, [r4]
	bl TaskDestroy
	b _08088914
_080888FA:
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r3, r0
	str r3, [r2, #8]
	ldrh r0, [r1, #2]
	subs r0, #1
	strh r0, [r1, #2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08088914
	ldr r0, [r4]
	bl TaskDestroy
_08088914:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808891C
sub_0808891C: @ 0x0808891C
	push {r4, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088936
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808893E
_08088936:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808893E:
	ldr r4, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_080335B4
	ldr r0, [r4, #8]
	ldr r1, _08088958 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08088958: .4byte 0xFFFFDFFF

	thumb_func_start sub_0808895C
sub_0808895C: @ 0x0808895C
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088976
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _0808897E
_08088976:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_0808897E:
	ldr r2, _080889B4 @ =gKirbys
	ldr r0, _080889B8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r3, #2]
	cmp r0, r1
	bne _080889AE
	ldr r0, [r3, #8]
	cmp r0, #0
	bne _080889AE
	ldr r2, _080889BC @ =gUnk_0300051C
	ldrb r1, [r3]
	movs r0, #0xf
	ands r0, r1
	movs r1, #1
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
_080889AE:
	pop {r0}
	bx r0
	.align 2, 0
_080889B4: .4byte gKirbys
_080889B8: .4byte gUnk_0203AD3C
_080889BC: .4byte gUnk_0300051C

	thumb_func_start sub_080889C0
sub_080889C0: @ 0x080889C0
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080889DA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080889E2
_080889DA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080889E2:
	ldr r0, [r0, #4]
	adds r0, #0x56
	ldr r1, _080889FC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _080889F6
	ldr r0, _08088A00 @ =0x000001FB
	bl m4aSongNumStop
_080889F6:
	pop {r0}
	bx r0
	.align 2, 0
_080889FC: .4byte gUnk_0203AD3C
_08088A00: .4byte 0x000001FB

	thumb_func_start sub_08088A04
sub_08088A04: @ 0x08088A04
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088A1E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08088A26
_08088A1E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08088A26:
	ldrb r1, [r0, #2]
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	movs r1, #0
	str r1, [r0]
	pop {r0}
	bx r0

	thumb_func_start sub_08088A38
sub_08088A38: @ 0x08088A38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r6, r3, #0x18
	ldr r0, _08088A78 @ =sub_08087A78
	ldr r2, _08088A7C @ =0x00002F9C
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088A80
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08088A88
	.align 2, 0
_08088A78: .4byte sub_08087A78
_08088A7C: .4byte 0x00002F9C
_08088A80:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08088A88:
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0
	strh r0, [r4, #2]
	movs r0, #0xb4
	strh r0, [r4, #4]
	strb r1, [r4]
	strb r6, [r4, #1]
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	mov r0, r8
	lsls r2, r0, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl BonusCreateTomatoAt
	str r0, [r4, #8]
	ldr r2, _08088AC4 @ =0x0000028F
	movs r1, #0
	movs r3, #3
	bl sub_0808AE30
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088AC4: .4byte 0x0000028F

	thumb_func_start sub_08088AC8
sub_08088AC8: @ 0x08088AC8
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08088AF8 @ =sub_08088C0C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088AFC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088B00
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08088B08
	.align 2, 0
_08088AF8: .4byte sub_08088C0C
_08088AFC: .4byte sub_0803DCCC
_08088B00:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08088B08:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r2, r1, #0
	orrs r2, r0
	orrs r2, r3
	strh r2, [r5, #6]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08088B80
	movs r0, #1
	orrs r2, r0
	strh r2, [r5, #6]
	ldr r3, _08088B70 @ =gUnk_08350EA0
	ldr r2, _08088B74 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088B78 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08088B7C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	b _08088BA4
	.align 2, 0
_08088B70: .4byte gUnk_08350EA0
_08088B74: .4byte gRngVal
_08088B78: .4byte 0x00196225
_08088B7C: .4byte 0x3C6EF35F
_08088B80:
	ldr r3, _08088BF8 @ =gUnk_08350EA0
	ldr r2, _08088BFC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088C00 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08088C04 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
_08088BA4:
	str r0, [r5, #0x34]
	ldr r1, [r2]
	ldr r0, _08088C00 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08088C04 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0xc
	adds r4, #0x56
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _08088C08 @ =0x06010200
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r3, #0x14
	bl sub_080709F8
	ldrb r1, [r4]
	adds r0, r5, #0
	adds r0, #0x2b
	strb r1, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08088BF8: .4byte gUnk_08350EA0
_08088BFC: .4byte gRngVal
_08088C00: .4byte 0x00196225
_08088C04: .4byte 0x3C6EF35F
_08088C08: .4byte 0x06010200

	thumb_func_start sub_08088C0C
sub_08088C0C: @ 0x08088C0C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08088C28 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088C2C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08088C34
	.align 2, 0
_08088C28: .4byte gCurTask
_08088C2C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08088C34:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08088C4A
	ldr r0, [r2]
	bl TaskDestroy
	b _08088F78
_08088C4A:
	ldr r0, _08088CD8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r6, [r4, #0x44]
	cmp r0, #0
	beq _08088C94
	ldr r1, _08088CDC @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08088CE0 @ =gUnk_02026D50
_08088C60:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08088C8C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08088CA6
_08088C8C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08088C60
_08088C94:
	movs r0, #1
	cmp r0, #0
	beq _08088CA6
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08088CA6:
	mov ip, r6
	mov r0, ip
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08088CE4
	adds r0, r1, #0
	cmp r0, #0x6a
	beq _08088CE4
	cmp r0, #0x6b
	beq _08088CE4
	cmp r0, #0x1d
	beq _08088CE4
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08088F78
	.align 2, 0
_08088CD8: .4byte gUnk_0203AD44
_08088CDC: .4byte gCurLevelInfo
_08088CE0: .4byte gUnk_02026D50
_08088CE4:
	adds r3, r6, #0
	cmp r3, #0
	beq _08088D38
	ldrb r0, [r3]
	cmp r0, #0
	beq _08088D02
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08088D02
	movs r0, #0
	str r0, [r4, #0x44]
	movs r3, #0
_08088D02:
	cmp r3, #0
	beq _08088D38
	ldr r0, _08088D34 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08088DA8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08088DA8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08088F78
	.align 2, 0
_08088D34: .4byte gUnk_03000510
_08088D38:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08088DA0 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08088D7A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08088D7A
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08088D7A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08088D7A
	movs r3, #4
_08088D7A:
	ldr r0, _08088DA4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08088DA8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08088DA8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08088F78
	.align 2, 0
_08088DA0: .4byte gKirbys
_08088DA4: .4byte gUnk_03000510
_08088DA8:
	mov r7, ip
	ldr r2, [r7, #0x40]
	ldr r0, [r4, #0x34]
	subs r1, r2, r0
	adds r5, r0, #0
	cmp r1, #0
	blt _08088DCC
	ldr r0, _08088DC8 @ =0xFFFFF000
	ands r1, r0
	mov r6, ip
	adds r6, #0xd4
	cmp r1, #0
	beq _08088DC4
	b _08088ED4
_08088DC4:
	b _08088DDC
	.align 2, 0
_08088DC8: .4byte 0xFFFFF000
_08088DCC:
	subs r0, r5, r2
	ldr r1, _08088E1C @ =0xFFFFF000
	ands r0, r1
	mov r6, ip
	adds r6, #0xd4
	cmp r0, #0
	beq _08088DDC
	b _08088ED4
_08088DDC:
	mov r0, ip
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x6b
	bne _08088E38
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08088E30
	ldr r3, _08088E20 @ =gUnk_08350EC0
	ldr r2, _08088E24 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088E28 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08088E2C @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
	b _08088EA0
	.align 2, 0
_08088E1C: .4byte 0xFFFFF000
_08088E20: .4byte gUnk_08350EC0
_08088E24: .4byte gRngVal
_08088E28: .4byte 0x00196225
_08088E2C: .4byte 0x3C6EF35F
_08088E30:
	ldr r3, _08088E34 @ =gUnk_08350EC0
	b _08088E7E
	.align 2, 0
_08088E34: .4byte gUnk_08350EC0
_08088E38:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08088E7C
	ldr r3, _08088E6C @ =gUnk_08350EA0
	ldr r2, _08088E70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088E74 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08088E78 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
	b _08088EA0
	.align 2, 0
_08088E6C: .4byte gUnk_08350EA0
_08088E70: .4byte gRngVal
_08088E74: .4byte 0x00196225
_08088E78: .4byte 0x3C6EF35F
_08088E7C:
	ldr r3, _08088EF4 @ =gUnk_08350EA0
_08088E7E:
	ldr r2, _08088EF8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08088EFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08088F00 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
_08088EA0:
	str r0, [r4, #0x34]
	ldr r1, [r2]
	ldr r0, _08088EFC @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08088F00 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
	movs r0, #0
	strh r0, [r4, #0x3c]
	ldrh r1, [r4, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r5, [r4, #0x34]
_08088ED4:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	adds r7, r1, #0
	cmp r0, #0
	beq _08088F04
	ldrh r2, [r4, #0x3c]
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4, #0x3c]
	ldrh r0, [r6]
	cmp r0, #0x6b
	bne _08088F18
	adds r0, r2, #0
	adds r0, #0x90
	b _08088F16
	.align 2, 0
_08088EF4: .4byte gUnk_08350EA0
_08088EF8: .4byte gRngVal
_08088EFC: .4byte 0x00196225
_08088F00: .4byte 0x3C6EF35F
_08088F04:
	ldrh r2, [r4, #0x3c]
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4, #0x3c]
	ldrh r0, [r6]
	cmp r0, #0x6b
	bne _08088F18
	adds r0, r2, #0
	subs r0, #0x90
_08088F16:
	strh r0, [r4, #0x3c]
_08088F18:
	mov r0, ip
	ldr r2, [r0, #0x44]
	ldr r0, [r4, #0x38]
	subs r3, r2, r0
	adds r1, r0, #0
	cmp r3, #0
	blt _08088F30
	ldr r2, _08088F2C @ =0xFFFFFF00
	ands r2, r3
	b _08088F36
	.align 2, 0
_08088F2C: .4byte 0xFFFFFF00
_08088F30:
	subs r2, r1, r2
	ldr r0, _08088F80 @ =0xFFFFFF00
	ands r2, r0
_08088F36:
	mov r6, ip
	ldr r3, [r6, #0x40]
	subs r0, r3, r5
	cmp r0, #0
	bge _08088F42
	subs r0, r5, r3
_08088F42:
	asrs r0, r0, #0xc
	adds r0, #1
	lsrs r2, r0
	strh r2, [r4, #0x3e]
	mov r3, ip
	ldr r0, [r3, #0x44]
	subs r0, r0, r1
	cmp r0, #0
	ble _08088F58
	rsbs r0, r2, #0
	strh r0, [r4, #0x3e]
_08088F58:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r7
	cmp r0, #0
	bne _08088F72
	movs r6, #0x3c
	ldrsh r0, [r4, r6]
	adds r0, r5, r0
	str r0, [r4, #0x34]
	movs r7, #0x3e
	ldrsh r0, [r4, r7]
	subs r0, r1, r0
	str r0, [r4, #0x38]
_08088F72:
	adds r0, r4, #0
	bl sub_0806FAC8
_08088F78:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08088F80: .4byte 0xFFFFFF00

	thumb_func_start sub_08088F84
sub_08088F84: @ 0x08088F84
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _08088FBC @ =sub_08089050
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08088FC0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08088FC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08088FCC
	.align 2, 0
_08088FBC: .4byte sub_08089050
_08088FC0: .4byte sub_0803DCCC
_08088FC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08088FCC:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	lsls r1, r6, #0x10
	asrs r1, r1, #4
	adds r1, r1, r2
	str r1, [r4, #0x34]
	lsls r0, r7, #0x10
	asrs r0, r0, #4
	adds r0, r0, r2
	str r0, [r4, #0x38]
	ldr r2, [r5, #0x40]
	subs r1, r1, r2
	strh r1, [r4, #0x3c]
	ldr r1, [r5, #0x44]
	subs r0, r0, r1
	strh r0, [r4, #0x3e]
	adds r1, r5, #0
	adds r1, #0xde
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08089048 @ =0x06012000
	ldr r3, _0808904C @ =0x00000295
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089048: .4byte 0x06012000
_0808904C: .4byte 0x00000295

	thumb_func_start sub_08089050
sub_08089050: @ 0x08089050
	push {r4, r5, r6, r7, lr}
	ldr r2, _08089070 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08089074
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808907C
	.align 2, 0
_08089070: .4byte gCurTask
_08089074:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808907C:
	adds r4, r0, #0
	ldr r3, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808909A
	ldr r0, [r6]
	bl TaskDestroy
	b _08089256
_0808909A:
	adds r1, r3, #0
	cmp r3, #0
	beq _080890E4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080890B2
	ldr r0, [r3, #8]
	ands r0, r5
	cmp r0, #0
	beq _080890B2
	str r2, [r4, #0x44]
	movs r1, #0
_080890B2:
	cmp r1, #0
	beq _080890E4
	ldr r0, _080890E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089154
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089154
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08089256
	.align 2, 0
_080890E0: .4byte gUnk_03000510
_080890E4:
	adds r6, r4, #0
	movs r5, #0
	ldr r2, _0808914C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089126
	movs r5, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089126
	movs r5, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089126
	movs r5, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089126
	movs r5, #4
_08089126:
	ldr r0, _08089150 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089154
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089154
	adds r0, r6, #0
	bl sub_0803DBC8
	b _08089256
	.align 2, 0
_0808914C: .4byte gKirbys
_08089150: .4byte gUnk_03000510
_08089154:
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0808919C
	adds r0, r1, #0
	cmp r0, #0x6a
	beq _0808919C
	cmp r0, #0x6b
	beq _0808919C
	cmp r0, #0x1c
	beq _0808919C
	adds r1, r3, #0
	adds r1, #0xde
	ldrb r0, [r1]
	cmp r0, #0
	beq _08089182
	subs r0, #1
	strb r0, [r1]
_08089182:
	ldr r2, _08089198 @ =0x00000292
	adds r0, r3, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r4, #0x34]
	str r1, [r0, #0x34]
	ldr r1, [r4, #0x38]
	str r1, [r0, #0x38]
	b _080891D8
	.align 2, 0
_08089198: .4byte 0x00000292
_0808919C:
	movs r5, #0x3c
	ldrsh r1, [r4, r5]
	cmp r1, #0
	bge _080891A6
	rsbs r1, r1, #0
_080891A6:
	ldr r0, _080891C8 @ =0x000011FF
	cmp r1, r0
	bgt _080891E6
	ldr r7, _080891CC @ =0x00000103
	adds r0, r3, r7
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _080891D0
	adds r0, r3, #0
	movs r1, #0
	bl sub_08063D98
	adds r0, r4, #0
	bl sub_0807A7E8
	b _080891D8
	.align 2, 0
_080891C8: .4byte 0x000011FF
_080891CC: .4byte 0x00000103
_080891D0:
	adds r0, r3, #0
	movs r1, #0
	bl sub_080547C4
_080891D8:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08089256
_080891E6:
	ldrh r0, [r4, #4]
	adds r1, r0, #0
	adds r1, #0x2a
	strh r1, [r4, #4]
	ldrh r2, [r4, #0x3c]
	movs r5, #0x3c
	ldrsh r0, [r4, r5]
	cmp r0, #0
	ble _080891FC
	subs r0, r2, r1
	b _080891FE
_080891FC:
	adds r0, r2, r1
_080891FE:
	strh r0, [r4, #0x3c]
	ldrh r2, [r4, #0x3e]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	ble _08089210
	asrs r0, r0, #0x13
	subs r0, r2, r0
	b _0808921E
_08089210:
	cmp r1, #0
	bge _08089220
	movs r7, #0x3e
	ldrsh r0, [r4, r7]
	rsbs r0, r0, #0
	asrs r0, r0, #3
	adds r0, r2, r0
_0808921E:
	strh r0, [r4, #0x3e]
_08089220:
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r3, #0x40]
	adds r5, r0, r1
	str r5, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r3, #0x44]
	adds r2, r0, r1
	str r2, [r4, #0x38]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08089250
	movs r7, #0x3c
	ldrsh r0, [r4, r7]
	adds r0, r5, r0
	str r0, [r4, #0x34]
	movs r1, #0x3e
	ldrsh r0, [r4, r1]
	subs r0, r2, r0
	str r0, [r4, #0x38]
_08089250:
	adds r0, r4, #0
	bl sub_0806FAC8
_08089256:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808925C
sub_0808925C: @ 0x0808925C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0808928C @ =sub_08089350
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08089290 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08089294
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0808929C
	.align 2, 0
_0808928C: .4byte sub_08089350
_08089290: .4byte sub_0803DCCC
_08089294:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0808929C:
	adds r0, r6, #0
	bl sub_0803E3B0
	movs r5, #0
	movs r0, #3
	strb r0, [r6]
	ldr r0, [r4, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r6, #0x38]
	str r4, [r6, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _08089334 @ =gRngVal
	ldr r1, [r3]
	ldr r0, _08089338 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _0808933C @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	lsrs r2, r2, #0x10
	movs r0, #7
	ands r2, r0
	lsls r0, r2, #8
	strh r0, [r6, #4]
	ldr r3, _08089340 @ =gUnk_08350EE0
	lsls r4, r2, #1
	adds r0, r4, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
	adds r3, #1
	adds r4, r4, r3
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	ldr r0, [r6, #0x38]
	adds r0, r0, r1
	str r0, [r6, #0x38]
	ldr r1, _08089344 @ =gUnk_08350EF0
	lsls r2, r2, #3
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r6, #0x3c]
	adds r1, #2
	adds r2, r2, r1
	ldrh r0, [r2]
	strh r0, [r6, #0x3e]
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	adds r1, r6, #0
	adds r1, #0xc
	ldr r2, _08089348 @ =0x06012000
	ldr r3, _0808934C @ =0x00000291
	str r5, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08089334: .4byte gRngVal
_08089338: .4byte 0x00196225
_0808933C: .4byte 0x3C6EF35F
_08089340: .4byte gUnk_08350EE0
_08089344: .4byte gUnk_08350EF0
_08089348: .4byte 0x06012000
_0808934C: .4byte 0x00000291

	thumb_func_start sub_08089350
sub_08089350: @ 0x08089350
	push {r4, r5, r6, r7, lr}
	ldr r2, _08089370 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08089374
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808937C
	.align 2, 0
_08089370: .4byte gCurTask
_08089374:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808937C:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08089398
	ldr r0, [r5]
	bl TaskDestroy
	b _08089530
_08089398:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _080893E4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080893B0
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _080893B0
	str r3, [r4, #0x44]
	movs r1, #0
_080893B0:
	cmp r1, #0
	beq _080893E4
	ldr r0, _080893E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089454
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089454
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08089530
	.align 2, 0
_080893E0: .4byte gUnk_03000510
_080893E4:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _0808944C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089426
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089426
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089426
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089426
	movs r3, #4
_08089426:
	ldr r0, _08089450 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089454
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089454
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08089530
	.align 2, 0
_0808944C: .4byte gKirbys
_08089450: .4byte gUnk_03000510
_08089454:
	ldr r0, _080894F4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r4, #4]
	mov ip, r7
	cmp r0, #0
	beq _0808949C
	ldr r6, _080894F8 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _080894FC @ =gUnk_02026D50
_0808946A:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08089494
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080894AE
_08089494:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808946A
_0808949C:
	movs r0, #1
	cmp r0, #0
	beq _080894AE
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080894AE:
	movs r2, #0xf
	mov r6, ip
	ands r2, r6
	cmp r2, #3
	bne _080894D8
	ldr r1, _08089500 @ =gUnk_08350EF0
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x3c]
	ldrb r0, [r4]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0x3e]
_080894D8:
	cmp r2, #6
	bne _080894E2
	movs r0, #0
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
_080894E2:
	cmp r2, #0xf
	bne _08089504
	ldrh r1, [r4, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08089530
	.align 2, 0
_080894F4: .4byte gUnk_0203AD44
_080894F8: .4byte gCurLevelInfo
_080894FC: .4byte gUnk_02026D50
_08089500: .4byte gUnk_08350EF0
_08089504:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08089524
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08089524:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08089530:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089538
sub_08089538: @ 0x08089538
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08089568 @ =sub_08089618
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808956C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08089570
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08089578
	.align 2, 0
_08089568: .4byte sub_08089618
_0808956C: .4byte sub_0803DCCC
_08089570:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08089578:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r4, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _08089600 @ =gRngVal
	ldr r1, [r3]
	ldr r0, _08089604 @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _08089608 @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	lsrs r2, r2, #0x10
	movs r0, #7
	ands r2, r0
	lsls r0, r2, #8
	strh r0, [r5, #4]
	ldr r3, _0808960C @ =gUnk_08350EE0
	lsls r2, r2, #1
	adds r0, r2, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	adds r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08089610 @ =0x06012000
	ldr r3, _08089614 @ =0x000002A3
	str r4, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08089600: .4byte gRngVal
_08089604: .4byte 0x00196225
_08089608: .4byte 0x3C6EF35F
_0808960C: .4byte gUnk_08350EE0
_08089610: .4byte 0x06012000
_08089614: .4byte 0x000002A3

	thumb_func_start sub_08089618
sub_08089618: @ 0x08089618
	push {r4, r5, r6, r7, lr}
	ldr r2, _08089638 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0808963C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089644
	.align 2, 0
_08089638: .4byte gCurTask
_0808963C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089644:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08089660
	ldr r0, [r5]
	bl TaskDestroy
	b _0808979A
_08089660:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080896AC
	ldrb r0, [r1]
	cmp r0, #0
	beq _08089678
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08089678
	str r2, [r3, #0x44]
	movs r1, #0
_08089678:
	cmp r1, #0
	beq _080896AC
	ldr r0, _080896A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808971C
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808971C
	adds r0, r3, #0
	bl sub_0803DBC8
	b _0808979A
	.align 2, 0
_080896A8: .4byte gUnk_03000510
_080896AC:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08089714 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080896EE
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080896EE
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080896EE
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080896EE
	movs r4, #4
_080896EE:
	ldr r0, _08089718 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808971C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808971C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808979A
	.align 2, 0
_08089714: .4byte gKirbys
_08089718: .4byte gUnk_03000510
_0808971C:
	ldr r0, _08089788 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08089760
	ldr r6, _0808978C @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08089790 @ =gUnk_02026D50
_0808972E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08089758
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08089772
_08089758:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808972E
_08089760:
	movs r0, #1
	cmp r0, #0
	beq _08089772
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08089772:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08089794
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _0808979A
	.align 2, 0
_08089788: .4byte gUnk_0203AD44
_0808978C: .4byte gCurLevelInfo
_08089790: .4byte gUnk_02026D50
_08089794:
	adds r0, r3, #0
	bl sub_0806FAC8
_0808979A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080897A0
sub_080897A0: @ 0x080897A0
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080897D0 @ =sub_0808994C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080897D4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080897D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080897E0
	.align 2, 0
_080897D0: .4byte sub_0808994C
_080897D4: .4byte sub_0803DCCC
_080897D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080897E0:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0808981E
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #0
	strh r0, [r5, #0x3e]
	b _08089826
_0808981E:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
_08089826:
	ldr r0, [r5, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _0808985C @ =0x06012000
	ldr r3, _08089860 @ =0x00000293
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808985C: .4byte 0x06012000
_08089860: .4byte 0x00000293

	thumb_func_start sub_08089864
sub_08089864: @ 0x08089864
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	mov r8, r3
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080898A4 @ =sub_0808994C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080898A8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080898AC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080898B4
	.align 2, 0
_080898A4: .4byte sub_0808994C
_080898A8: .4byte sub_0803DCCC
_080898AC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080898B4:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r1, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r2, r5, #0
	adds r2, #0x42
	strh r0, [r2]
	strh r1, [r5, #0x3e]
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	movs r0, #1
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08089904
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	b _08089912
_08089904:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
_08089912:
	str r0, [r5, #0x34]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08089944 @ =0x06012000
	ldr r3, _08089948 @ =0x00000293
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08089944: .4byte 0x06012000
_08089948: .4byte 0x00000293

	thumb_func_start sub_0808994C
sub_0808994C: @ 0x0808994C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0808996C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08089970
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089978
	.align 2, 0
_0808996C: .4byte gCurTask
_08089970:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089978:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08089994
	ldr r0, [r5]
	bl TaskDestroy
	b _08089B0C
_08089994:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _080899E0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080899AC
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _080899AC
	str r3, [r4, #0x44]
	movs r1, #0
_080899AC:
	cmp r1, #0
	beq _080899E0
	ldr r0, _080899DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089A50
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089A50
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08089B0C
	.align 2, 0
_080899DC: .4byte gUnk_03000510
_080899E0:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08089A48 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089A22
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089A22
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089A22
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089A22
	movs r3, #4
_08089A22:
	ldr r0, _08089A4C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089A50
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089A50
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08089B0C
	.align 2, 0
_08089A48: .4byte gKirbys
_08089A4C: .4byte gUnk_03000510
_08089A50:
	ldr r0, _08089ABC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08089A94
	ldr r6, _08089AC0 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08089AC4 @ =gUnk_02026D50
_08089A62:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08089A8C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08089AA6
_08089A8C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08089A62
_08089A94:
	movs r0, #1
	cmp r0, #0
	beq _08089AA6
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08089AA6:
	ldrh r1, [r4, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08089AC8
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08089B0C
	.align 2, 0
_08089ABC: .4byte gUnk_0203AD44
_08089AC0: .4byte gCurLevelInfo
_08089AC4: .4byte gUnk_02026D50
_08089AC8:
	movs r0, #1
	ands r0, r1
	ldrh r0, [r4, #0x3e]
	adds r0, #0x20
	strh r0, [r4, #0x3e]
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r0, #5
	bne _08089AE0
	adds r0, r4, #0
	bl sub_0808A0F8
_08089AE0:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08089B00
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08089B00:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08089B0C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089B14
sub_08089B14: @ 0x08089B14
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08089B44 @ =sub_08089BCC
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08089B48 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08089B4C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089B54
	.align 2, 0
_08089B44: .4byte sub_08089BCC
_08089B48: .4byte sub_0803DCCC
_08089B4C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089B54:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08089B92
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #0
	strh r0, [r5, #0x3e]
	b _08089B9A
_08089B92:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
_08089B9A:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08089BC4 @ =0x06012000
	ldr r3, _08089BC8 @ =0x00000293
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08089BC4: .4byte 0x06012000
_08089BC8: .4byte 0x00000293

	thumb_func_start sub_08089BCC
sub_08089BCC: @ 0x08089BCC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08089BEC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08089BF0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089BF8
	.align 2, 0
_08089BEC: .4byte gCurTask
_08089BF0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089BF8:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08089C14
	ldr r0, [r5]
	bl TaskDestroy
	b _08089D90
_08089C14:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _08089C60
	ldrb r0, [r1]
	cmp r0, #0
	beq _08089C2C
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _08089C2C
	str r3, [r4, #0x44]
	movs r1, #0
_08089C2C:
	cmp r1, #0
	beq _08089C60
	ldr r0, _08089C5C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089CD0
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089CD0
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08089D90
	.align 2, 0
_08089C5C: .4byte gUnk_03000510
_08089C60:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08089CC8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089CA2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089CA2
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089CA2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089CA2
	movs r3, #4
_08089CA2:
	ldr r0, _08089CCC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089CD0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089CD0
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08089D90
	.align 2, 0
_08089CC8: .4byte gKirbys
_08089CCC: .4byte gUnk_03000510
_08089CD0:
	ldr r0, _08089D3C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08089D14
	ldr r6, _08089D40 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08089D44 @ =gUnk_02026D50
_08089CE2:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08089D0C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08089D26
_08089D0C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08089CE2
_08089D14:
	movs r0, #1
	cmp r0, #0
	beq _08089D26
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08089D26:
	ldrh r1, [r4, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08089D48
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08089D90
	.align 2, 0
_08089D3C: .4byte gUnk_0203AD44
_08089D40: .4byte gCurLevelInfo
_08089D44: .4byte gUnk_02026D50
_08089D48:
	movs r0, #1
	ands r0, r1
	ldrh r0, [r4, #0x3e]
	adds r0, #0x20
	strh r0, [r4, #0x3e]
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r0, #5
	bne _08089D64
	movs r0, #0
	strh r0, [r4, #0x3c]
	adds r0, r4, #0
	bl sub_0808A0F8
_08089D64:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08089D84
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08089D84:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_08089D90:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08089D98
sub_08089D98: @ 0x08089D98
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08089DC8 @ =sub_08089E50
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08089DCC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08089DD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089DD8
	.align 2, 0
_08089DC8: .4byte sub_08089E50
_08089DCC: .4byte sub_0803DCCC
_08089DD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089DD8:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08089E16
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r5, #0x3c]
	movs r0, #0
	strh r0, [r5, #0x3e]
	b _08089E1E
_08089E16:
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r5, #0x3c]
	strh r1, [r5, #0x3e]
_08089E1E:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08089E48 @ =0x06012000
	ldr r3, _08089E4C @ =0x00000293
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08089E48: .4byte 0x06012000
_08089E4C: .4byte 0x00000293

	thumb_func_start sub_08089E50
sub_08089E50: @ 0x08089E50
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08089E74 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08089E78
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08089E80
	.align 2, 0
_08089E74: .4byte gCurTask
_08089E78:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08089E80:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08089E9C
	ldr r0, [r5]
	bl TaskDestroy
	b _0808A0EE
_08089E9C:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _08089EE8
	ldrb r0, [r1]
	cmp r0, #0
	beq _08089EB4
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _08089EB4
	str r3, [r4, #0x44]
	movs r1, #0
_08089EB4:
	cmp r1, #0
	beq _08089EE8
	ldr r0, _08089EE4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089F58
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089F58
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808A0EE
	.align 2, 0
_08089EE4: .4byte gUnk_03000510
_08089EE8:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08089F50 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08089F2A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089F2A
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089F2A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08089F2A
	movs r3, #4
_08089F2A:
	ldr r0, _08089F54 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08089F58
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08089F58
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808A0EE
	.align 2, 0
_08089F50: .4byte gKirbys
_08089F54: .4byte gUnk_03000510
_08089F58:
	ldr r0, _08089FE8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r7, [r4, #0x44]
	mov ip, r7
	ldrh r1, [r4, #4]
	mov r8, r1
	cmp r0, #0
	beq _08089FA4
	ldr r6, _08089FEC @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08089FF0 @ =gUnk_02026D50
_08089F72:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08089F9C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08089FB6
_08089F9C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08089F72
_08089FA4:
	movs r0, #1
	cmp r0, #0
	beq _08089FB6
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08089FB6:
	mov r5, ip
	mov r6, r8
	lsls r0, r6, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	bne _08089FC8
	adds r0, r4, #0
	bl sub_0808A0F8
_08089FC8:
	ldrh r1, [r4, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808A05C
	movs r7, #8
	ldrsh r0, [r4, r7]
	cmp r0, #0
	bne _0808A00C
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08089FF4
	movs r0, #0x90
	lsls r0, r0, #2
	b _08089FF6
	.align 2, 0
_08089FE8: .4byte gUnk_0203AD44
_08089FEC: .4byte gCurLevelInfo
_08089FF0: .4byte gUnk_02026D50
_08089FF4:
	ldr r0, _0808A008 @ =0x0000FDC0
_08089FF6:
	strh r0, [r4, #0x3c]
	movs r0, #0x40
	strh r0, [r4, #0x3e]
	ldrh r1, [r4, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4, #6]
	b _0808A030
	.align 2, 0
_0808A008: .4byte 0x0000FDC0
_0808A00C:
	cmp r0, #1
	bne _0808A030
	ands r0, r1
	cmp r0, #0
	beq _0808A01C
	movs r0, #0x90
	lsls r0, r0, #1
	b _0808A01E
_0808A01C:
	ldr r0, _0808A054 @ =0x0000FEE0
_0808A01E:
	strh r0, [r4, #0x3c]
	movs r0, #0x40
	strh r0, [r4, #0x3e]
	ldr r0, _0808A058 @ =0x00000293
	strh r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #3
	strb r0, [r1]
_0808A030:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	movs r0, #0
	strh r0, [r4, #4]
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldrh r1, [r4, #6]
	cmp r0, #3
	bne _0808A05C
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	b _0808A0BE
	.align 2, 0
_0808A054: .4byte 0x0000FEE0
_0808A058: .4byte 0x00000293
_0808A05C:
	movs r6, #8
	ldrsh r0, [r4, r6]
	cmp r0, #1
	beq _0808A07A
	cmp r0, #1
	bgt _0808A06E
	cmp r0, #0
	beq _0808A074
	b _0808A0A6
_0808A06E:
	cmp r0, #2
	beq _0808A08C
	b _0808A0A6
_0808A074:
	movs r0, #1
	ands r0, r1
	b _0808A0A0
_0808A07A:
	ands r0, r1
	cmp r0, #0
	beq _0808A086
	ldrh r0, [r4, #0x3c]
	subs r0, #0x10
	b _0808A09E
_0808A086:
	ldrh r0, [r4, #0x3c]
	adds r0, #0x10
	b _0808A09E
_0808A08C:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A09A
	ldrh r0, [r4, #0x3c]
	subs r0, #0x18
	b _0808A09E
_0808A09A:
	ldrh r0, [r4, #0x3c]
	adds r0, #0x18
_0808A09E:
	strh r0, [r4, #0x3c]
_0808A0A0:
	ldrh r0, [r4, #0x3e]
	adds r0, #0x20
	strh r0, [r4, #0x3e]
_0808A0A6:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808A0C4
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0xd
	beq _0808A0C4
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
_0808A0BE:
	orrs r0, r1
	strh r0, [r4, #6]
	b _0808A0EE
_0808A0C4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808A0E2
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_0808A0E2:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_0808A0EE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808A0F8
sub_0808A0F8: @ 0x0808A0F8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0808A128 @ =sub_0808A208
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808A12C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A130
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808A138
	.align 2, 0
_0808A128: .4byte sub_0808A208
_0808A12C: .4byte sub_0803DCCC
_0808A130:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808A138:
	adds r7, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	ldr r0, [r4, #0x34]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x38]
	str r0, [r7, #0x38]
	str r4, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x44]
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A198
	ldrh r0, [r7, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #6]
	ldr r3, _0808A18C @ =gRngVal
	ldr r0, [r3]
	ldr r6, _0808A190 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _0808A194 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	ldr r1, [r7, #0x34]
	adds r1, #1
	lsrs r0, r2, #0x10
	movs r4, #7
	ands r0, r4
	adds r1, r1, r0
	b _0808A1B4
	.align 2, 0
_0808A18C: .4byte gRngVal
_0808A190: .4byte 0x00196225
_0808A194: .4byte 0x3C6EF35F
_0808A198:
	ldr r3, _0808A1F4 @ =gRngVal
	ldr r0, [r3]
	ldr r6, _0808A1F8 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _0808A1FC @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	ldr r1, [r7, #0x34]
	subs r1, #1
	lsrs r0, r2, #0x10
	movs r4, #7
	ands r0, r4
	subs r1, r1, r0
_0808A1B4:
	str r1, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	ldr r1, [r7, #0x38]
	subs r1, #1
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r1, r1, r0
	str r1, [r7, #0x38]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0808A200 @ =0x06012000
	ldr r3, _0808A204 @ =0x00000293
	movs r0, #4
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A1F4: .4byte gRngVal
_0808A1F8: .4byte 0x00196225
_0808A1FC: .4byte 0x3C6EF35F
_0808A200: .4byte 0x06012000
_0808A204: .4byte 0x00000293

	thumb_func_start sub_0808A208
sub_0808A208: @ 0x0808A208
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0808A22C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0808A230
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808A238
	.align 2, 0
_0808A22C: .4byte gCurTask
_0808A230:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808A238:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808A254
	ldr r0, [r5]
	bl TaskDestroy
	b _0808A3D6
_0808A254:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _0808A2A0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808A26C
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _0808A26C
	str r3, [r4, #0x44]
	movs r1, #0
_0808A26C:
	cmp r1, #0
	beq _0808A2A0
	ldr r0, _0808A29C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808A310
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808A310
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808A3D6
	.align 2, 0
_0808A29C: .4byte gUnk_03000510
_0808A2A0:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _0808A308 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808A2E2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808A2E2
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808A2E2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808A2E2
	movs r3, #4
_0808A2E2:
	ldr r0, _0808A30C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808A310
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808A310
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808A3D6
	.align 2, 0
_0808A308: .4byte gKirbys
_0808A30C: .4byte gUnk_03000510
_0808A310:
	ldr r0, _0808A380 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r6, [r4, #0x3c]
	ldrh r7, [r4, #0x3e]
	mov r8, r7
	cmp r0, #0
	beq _0808A35E
	ldr r1, _0808A384 @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _0808A388 @ =gUnk_02026D50
_0808A32A:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808A356
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808A370
_0808A356:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808A32A
_0808A35E:
	movs r0, #1
	cmp r0, #0
	beq _0808A370
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808A370:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A38C
	adds r0, r6, #0
	adds r0, #0x40
	b _0808A390
	.align 2, 0
_0808A380: .4byte gUnk_0203AD44
_0808A384: .4byte gCurLevelInfo
_0808A388: .4byte gUnk_02026D50
_0808A38C:
	adds r0, r6, #0
	subs r0, #0x40
_0808A390:
	strh r0, [r4, #0x3c]
	mov r0, r8
	adds r0, #0x40
	strh r0, [r4, #0x3e]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808A3AC
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _0808A3D6
_0808A3AC:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808A3CA
	movs r7, #0x3c
	ldrsh r1, [r4, r7]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_0808A3CA:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_0808A3D6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808A3E0
sub_0808A3E0: @ 0x0808A3E0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808A410 @ =sub_0808A490
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808A414 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A418
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0808A420
	.align 2, 0
_0808A410: .4byte sub_0808A490
_0808A414: .4byte sub_0803DCCC
_0808A418:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0808A420:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _0808A47C @ =0x0000FDC0
	strh r0, [r4, #0x3c]
	ldr r0, _0808A480 @ =0x0000FFC0
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x34]
	ldr r1, _0808A484 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808A488 @ =0x06012000
	ldr r3, _0808A48C @ =0x00000293
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A47C: .4byte 0x0000FDC0
_0808A480: .4byte 0x0000FFC0
_0808A484: .4byte 0xFFFFF400
_0808A488: .4byte 0x06012000
_0808A48C: .4byte 0x00000293

	thumb_func_start sub_0808A490
sub_0808A490: @ 0x0808A490
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0808A4B4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A4B8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808A4C0
	.align 2, 0
_0808A4B4: .4byte gCurTask
_0808A4B8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808A4C0:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	mov sl, r0
	ldrh r1, [r6, #6]
	mov ip, r1
	movs r0, #0x80
	lsls r0, r0, #5
	mov r7, ip
	ands r0, r7
	cmp r0, #0
	beq _0808A4DE
	ldr r0, [r2]
	bl TaskDestroy
	b _0808A8FA
_0808A4DE:
	ldr r0, _0808A584 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sl
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0808A4F8
	b _0808A636
_0808A4F8:
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r2, [r6, #0x34]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r3, _0808A588 @ =gCurLevelInfo
	ldr r7, _0808A58C @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r0, r8
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	bne _0808A5A0
	ldr r2, _0808A590 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808A5A0
	ldr r1, _0808A594 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	beq _0808A598
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0808A5A0
	.align 2, 0
_0808A584: .4byte gUnk_03000510
_0808A588: .4byte gCurLevelInfo
_0808A58C: .4byte gUnk_0203AD3C
_0808A590: .4byte gKirbys
_0808A594: .4byte gUnk_0203AD18
_0808A598:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_0808A5A0:
	mov r7, sl
	ldr r1, [r7, #0x40]
	ldr r0, [r6, #0x34]
	subs r0, r1, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, _0808A620 @ =gCurLevelInfo
	ldr r4, _0808A624 @ =gUnk_0203AD3C
	ldrb r3, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r5, r0, r1
	strh r5, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x14]
	ldrh r3, [r6, #6]
	ands r1, r3
	cmp r1, #0
	beq _0808A5DE
	b _0808A8F2
_0808A5DE:
	ldr r2, _0808A628 @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808A5FA
	b _0808A8F2
_0808A5FA:
	ldr r1, _0808A62C @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r5, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808A630
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0808A8F2
	.align 2, 0
_0808A620: .4byte gCurLevelInfo
_0808A624: .4byte gUnk_0203AD3C
_0808A628: .4byte gKirbys
_0808A62C: .4byte gUnk_0203AD18
_0808A630:
	adds r0, r6, #0
	adds r0, #0xc
	b _0808A8EE
_0808A636:
	ldr r0, _0808A6A4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808A67A
	ldr r5, _0808A6A8 @ =gCurLevelInfo
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808A6AC @ =gUnk_02026D50
_0808A648:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808A672
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808A68C
_0808A672:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808A648
_0808A67A:
	movs r0, #1
	cmp r0, #0
	beq _0808A68C
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
_0808A68C:
	ldrh r1, [r6, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808A6B0
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _0808A8FA
	.align 2, 0
_0808A6A4: .4byte gUnk_0203AD44
_0808A6A8: .4byte gCurLevelInfo
_0808A6AC: .4byte gUnk_02026D50
_0808A6B0:
	ldrh r0, [r6, #0x3c]
	adds r0, #0x18
	strh r0, [r6, #0x3c]
	ldrh r0, [r6, #0x3e]
	adds r0, #0x20
	strh r0, [r6, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808A6DA
	movs r0, #0x3c
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r6, r2]
	ldr r0, [r6, #0x38]
	subs r0, r0, r1
	str r0, [r6, #0x38]
_0808A6DA:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808A6F2
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _0808A6FC
_0808A6F2:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _0808A784 @ =0xFFFFFBFF
	ands r1, r2
_0808A6FC:
	str r1, [r0, #8]
	adds r7, r0, #0
	ldrh r4, [r6, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r3, #0
	bne _0808A7A2
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r5, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808A72E
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _0808A744
_0808A72E:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0808A744
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _0808A788 @ =0x0000FFFB
	ands r0, r4
	strh r0, [r6, #6]
_0808A744:
	adds r0, r7, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0808A78C
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0808A7A2
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808A7A2
	movs r0, #0xff
	strb r0, [r5]
	ldrh r1, [r6, #6]
	ldr r0, _0808A788 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	adds r0, r7, #0
	bl sub_08155128
	b _0808A7A2
	.align 2, 0
_0808A784: .4byte 0xFFFFFBFF
_0808A788: .4byte 0x0000FFFB
_0808A78C:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _0808A84C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_0808A7A2:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _0808A850 @ =gCurLevelInfo
	ldr r0, _0808A854 @ =gUnk_0203AD3C
	mov ip, r0
	ldrb r0, [r0]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r2
	movs r1, #0
	mov sb, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	mov r2, ip
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808A7FE
	mov r0, sb
	strb r0, [r5]
	strb r0, [r2]
_0808A7FE:
	ldrh r3, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0808A8FA
	ldr r2, _0808A858 @ =gKirbys
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808A866
	ldr r1, _0808A85C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r6, #0x1c]
	adds r0, r0, r2
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808A860
	adds r0, r7, #0
	bl sub_081564D8
	b _0808A866
	.align 2, 0
_0808A84C: .4byte 0x0000FFFD
_0808A850: .4byte gCurLevelInfo
_0808A854: .4byte gUnk_0203AD3C
_0808A858: .4byte gKirbys
_0808A85C: .4byte gUnk_0203AD18
_0808A860:
	adds r0, r7, #0
	bl sub_0815604C
_0808A866:
	mov r2, sl
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x34]
	subs r0, r1, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, _0808A8DC @ =gCurLevelInfo
	ldr r4, _0808A8E0 @ =gUnk_0203AD3C
	ldrb r3, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r5, r0, r1
	strh r5, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x14]
	ldrh r3, [r6, #6]
	ands r1, r3
	cmp r1, #0
	bne _0808A8F2
	ldr r2, _0808A8E4 @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808A8F2
	ldr r1, _0808A8E8 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r5, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r2, [r6, #0x1e]
	adds r0, r0, r2
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808A8EC
	adds r0, r7, #0
	bl sub_081564D8
	b _0808A8F2
	.align 2, 0
_0808A8DC: .4byte gCurLevelInfo
_0808A8E0: .4byte gUnk_0203AD3C
_0808A8E4: .4byte gKirbys
_0808A8E8: .4byte gUnk_0203AD18
_0808A8EC:
	adds r0, r7, #0
_0808A8EE:
	bl sub_0815604C
_0808A8F2:
	ldr r0, [r6, #0x14]
	ldr r1, _0808A908 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x14]
_0808A8FA:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808A908: .4byte 0xFFFFFBFF

	thumb_func_start sub_0808A90C
sub_0808A90C: @ 0x0808A90C
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808A93C @ =sub_0808A9C4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808A940 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A944
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0808A94C
	.align 2, 0
_0808A93C: .4byte sub_0808A9C4
_0808A940: .4byte sub_0803DCCC
_0808A944:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0808A94C:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #0xfa
	lsls r0, r0, #8
	strh r0, [r4, #0x3c]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _0808A9B4 @ =0xFFFFFA00
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldr r2, _0808A9B8 @ =0xFFFFF400
	adds r0, r0, r2
	str r0, [r4, #0x34]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808A9BC @ =0x06012000
	ldr r3, _0808A9C0 @ =0x00000293
	movs r0, #2
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808A9B4: .4byte 0xFFFFFA00
_0808A9B8: .4byte 0xFFFFF400
_0808A9BC: .4byte 0x06012000
_0808A9C0: .4byte 0x00000293

	thumb_func_start sub_0808A9C4
sub_0808A9C4: @ 0x0808A9C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0808A9E8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808A9EC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808A9F4
	.align 2, 0
_0808A9E8: .4byte gCurTask
_0808A9EC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808A9F4:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	mov sl, r0
	ldrh r7, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r7
	cmp r0, #0
	beq _0808AA0E
	ldr r0, [r2]
	bl TaskDestroy
	b _0808AE1E
_0808AA0E:
	ldr r0, _0808AAA4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sl
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0808AA28
	b _0808AB5A
_0808AA28:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _0808AAA8 @ =gCurLevelInfo
	ldr r5, _0808AAAC @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r8, r2
	mov r1, r8
	strh r1, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _0808AAC0
	ldr r2, _0808AAB0 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808AAC0
	ldr r1, _0808AAB4 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r7
	cmp r0, #0
	beq _0808AAB8
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0808AAC0
	.align 2, 0
_0808AAA4: .4byte gUnk_03000510
_0808AAA8: .4byte gCurLevelInfo
_0808AAAC: .4byte gUnk_0203AD3C
_0808AAB0: .4byte gKirbys
_0808AAB4: .4byte gUnk_0203AD18
_0808AAB8:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_0808AAC0:
	mov r2, sl
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x34]
	subs r0, r1, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, _0808AB44 @ =gCurLevelInfo
	ldr r5, _0808AB48 @ =gUnk_0203AD3C
	ldrb r3, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r0, r6, #0
	adds r0, #0x40
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r0, r1
	strh r3, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x14]
	ldrh r4, [r6, #6]
	ands r1, r4
	cmp r1, #0
	beq _0808AB04
	b _0808AE16
_0808AB04:
	ldr r2, _0808AB4C @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808AB20
	b _0808AE16
_0808AB20:
	ldr r1, _0808AB50 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r7, [r6, #0x1e]
	adds r0, r0, r7
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _0808AB54
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0808AE16
	.align 2, 0
_0808AB44: .4byte gCurLevelInfo
_0808AB48: .4byte gUnk_0203AD3C
_0808AB4C: .4byte gKirbys
_0808AB50: .4byte gUnk_0203AD18
_0808AB54:
	adds r0, r6, #0
	adds r0, #0xc
	b _0808AE12
_0808AB5A:
	ldr r0, _0808ABC8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808AB9E
	ldr r5, _0808ABCC @ =gCurLevelInfo
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808ABD0 @ =gUnk_02026D50
_0808AB6C:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808AB96
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808ABB0
_0808AB96:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808AB6C
_0808AB9E:
	movs r0, #1
	cmp r0, #0
	beq _0808ABB0
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
_0808ABB0:
	ldrh r1, [r6, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808ABD4
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _0808AE1E
	.align 2, 0
_0808ABC8: .4byte gUnk_0203AD44
_0808ABCC: .4byte gCurLevelInfo
_0808ABD0: .4byte gUnk_02026D50
_0808ABD4:
	ldrh r0, [r6, #0x3c]
	adds r0, #0xc0
	strh r0, [r6, #0x3c]
	ldrh r0, [r6, #0x3e]
	adds r0, #0x40
	strh r0, [r6, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808ABFE
	movs r0, #0x3c
	ldrsh r1, [r6, r0]
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r6, r2]
	ldr r0, [r6, #0x38]
	subs r0, r0, r1
	str r0, [r6, #0x38]
_0808ABFE:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808AC16
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _0808AC20
_0808AC16:
	adds r0, r6, #0
	adds r0, #0xc
	ldr r1, [r6, #0x14]
	ldr r2, _0808ACA8 @ =0xFFFFFBFF
	ands r1, r2
_0808AC20:
	str r1, [r0, #8]
	adds r7, r0, #0
	ldrh r4, [r6, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r6
	mov r8, r0
	cmp r3, #0
	bne _0808ACC6
	adds r0, r6, #0
	adds r0, #0x27
	adds r2, r6, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r5, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808AC52
	ldrh r0, [r6, #0x24]
	ldrh r1, [r6, #0x18]
	cmp r0, r1
	beq _0808AC68
_0808AC52:
	adds r0, r6, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _0808AC68
	strb r3, [r6, #1]
	strh r3, [r6, #2]
	ldr r0, _0808ACAC @ =0x0000FFFB
	ands r0, r4
	strh r0, [r6, #6]
_0808AC68:
	adds r0, r7, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0808ACB0
	ldrh r0, [r6, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0808ACC6
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808ACC6
	movs r0, #0xff
	strb r0, [r5]
	ldrh r1, [r6, #6]
	ldr r0, _0808ACAC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #6]
	strb r3, [r6, #1]
	strh r2, [r6, #2]
	adds r0, r7, #0
	bl sub_08155128
	b _0808ACC6
	.align 2, 0
_0808ACA8: .4byte 0xFFFFFBFF
_0808ACAC: .4byte 0x0000FFFB
_0808ACB0:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r6, #2]
	adds r0, r0, r1
	strh r0, [r6, #2]
	lsrs r0, r0, #4
	strb r0, [r6, #1]
	ldrh r1, [r6, #6]
	ldr r0, _0808AD70 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r6, #6]
_0808ACC6:
	ldr r2, [r6, #0x34]
	asrs r2, r2, #8
	ldr r3, _0808AD74 @ =gCurLevelInfo
	ldr r0, _0808AD78 @ =gUnk_0203AD3C
	mov ip, r0
	ldrb r0, [r0]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r5, r6, #0
	adds r5, #0x40
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r0, r0, r2
	movs r1, #0
	mov sb, r1
	strh r0, [r6, #0x1c]
	ldr r1, [r6, #0x38]
	asrs r1, r1, #8
	mov r2, ip
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r6, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808AD22
	mov r0, sb
	strb r0, [r5]
	strb r0, [r2]
_0808AD22:
	ldrh r3, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0808AE1E
	ldr r2, _0808AD7C @ =gKirbys
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808AD8A
	ldr r1, _0808AD80 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r6, #0x1c]
	adds r0, r0, r2
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808AD84
	adds r0, r7, #0
	bl sub_081564D8
	b _0808AD8A
	.align 2, 0
_0808AD70: .4byte 0x0000FFFD
_0808AD74: .4byte gCurLevelInfo
_0808AD78: .4byte gUnk_0203AD3C
_0808AD7C: .4byte gKirbys
_0808AD80: .4byte gUnk_0203AD18
_0808AD84:
	adds r0, r7, #0
	bl sub_0815604C
_0808AD8A:
	mov r2, sl
	ldr r1, [r2, #0x40]
	ldr r0, [r6, #0x34]
	subs r0, r1, r0
	adds r1, r1, r0
	asrs r1, r1, #8
	ldr r2, _0808AE00 @ =gCurLevelInfo
	ldr r4, _0808AE04 @ =gUnk_0203AD3C
	ldrb r3, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r3, r0
	adds r2, #0xc
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	movs r0, #0
	ldrsb r0, [r5, r0]
	adds r5, r0, r1
	strh r5, [r6, #0x1c]
	ldr r0, [r6, #0x14]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r6, #0x14]
	ldrh r3, [r6, #6]
	ands r1, r3
	cmp r1, #0
	bne _0808AE16
	ldr r2, _0808AE08 @ =gKirbys
	ldrb r1, [r4]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808AE16
	ldr r1, _0808AE0C @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r5, r0
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r2, [r6, #0x1e]
	adds r0, r0, r2
	strh r0, [r6, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808AE10
	adds r0, r7, #0
	bl sub_081564D8
	b _0808AE16
	.align 2, 0
_0808AE00: .4byte gCurLevelInfo
_0808AE04: .4byte gUnk_0203AD3C
_0808AE08: .4byte gKirbys
_0808AE0C: .4byte gUnk_0203AD18
_0808AE10:
	adds r0, r7, #0
_0808AE12:
	bl sub_0815604C
_0808AE16:
	ldr r0, [r6, #0x14]
	ldr r1, _0808AE2C @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r6, #0x14]
_0808AE1E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808AE2C: .4byte 0xFFFFFBFF

	thumb_func_start sub_0808AE30
sub_0808AE30: @ 0x0808AE30
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _0808AE70 @ =sub_0808AF48
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808AE74 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808AE78
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808AE80
	.align 2, 0
_0808AE70: .4byte sub_0808AF48
_0808AE74: .4byte sub_0803DCCC
_0808AE78:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808AE80:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldr r0, _0808AEF4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808AEC6
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808AEC6:
	cmp r6, #0
	beq _0808AF14
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bls _0808AEF8
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	b _0808AF34
	.align 2, 0
_0808AEF4: .4byte gUnk_03000510
_0808AEF8:
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	adds r0, r4, #0
	adds r0, #0x40
	strb r6, [r0]
	b _0808AF34
_0808AF14:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808AF44 @ =0x06012000
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r3, r8
	bl sub_080709F8
_0808AF34:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808AF44: .4byte 0x06012000

	thumb_func_start sub_0808AF48
sub_0808AF48: @ 0x0808AF48
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x34
	movs r0, #0
	str r0, [sp, #0x28]
	ldr r2, _0808AF74 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808AF78
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808AF80
	.align 2, 0
_0808AF74: .4byte gCurTask
_0808AF78:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808AF80:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0808AF96
	ldr r0, [r2]
	bl TaskDestroy
	b _0808B236
_0808AF96:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0808B08A
	ldrb r1, [r1]
	str r1, [sp, #0x28]
	ldr r2, _0808B010 @ =gKirbys
	ldr r0, _0808B014 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808B05C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808B020
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B082
	ldr r1, [sp, #0x28]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B018 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0808B01C @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0808B082
	.align 2, 0
_0808B010: .4byte gKirbys
_0808B014: .4byte gUnk_0203AD3C
_0808B018: .4byte 0xFFF7FFFF
_0808B01C: .4byte 0x0400000A
_0808B020:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B082
	ldr r2, [sp, #0x28]
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B054 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0808B058 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0808B082
	.align 2, 0
_0808B054: .4byte 0xFFF7FFFF
_0808B058: .4byte 0x0400000A
_0808B05C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0808B078
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0808B078
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_0808B078:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_0808B082:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strb r0, [r1]
_0808B08A:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _0808B0E8
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808B0A8
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0808B0A8
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0808B0A8:
	cmp r3, #0
	beq _0808B0E8
	ldr r0, _0808B0E4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B158
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B158
	adds r0, r5, #0
	bl sub_0803DBC8
	adds r0, r5, #0
	adds r0, #0x40
	add r6, sp, #0x28
	ldrb r6, [r6]
	strb r6, [r0]
	b _0808B236
	.align 2, 0
_0808B0E4: .4byte gUnk_03000510
_0808B0E8:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _0808B150 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808B12A
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B12A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B12A
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B12A
	movs r3, #4
_0808B12A:
	ldr r0, _0808B154 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B158
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B158
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808B22C
	.align 2, 0
_0808B150: .4byte gKirbys
_0808B154: .4byte gUnk_03000510
_0808B158:
	ldr r0, _0808B200 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r2, [r5, #0x34]
	str r2, [sp, #0x30]
	ldr r6, [r5, #0x38]
	mov ip, r6
	ldrh r7, [r5, #0x3c]
	mov sl, r7
	ldrh r1, [r5, #4]
	mov r8, r1
	ldrh r6, [r5, #0x3e]
	mov r2, sp
	strh r6, [r2, #0x2c]
	ldrh r7, [r5, #8]
	mov sb, r7
	cmp r0, #0
	beq _0808B1B6
	ldr r6, _0808B204 @ =gCurLevelInfo
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808B208 @ =gUnk_02026D50
_0808B184:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808B1AE
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808B1C8
_0808B1AE:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808B184
_0808B1B6:
	movs r0, #1
	cmp r0, #0
	beq _0808B1C8
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0808B1C8:
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	ldr r7, [sp, #0x30]
	adds r2, r7, r0
	str r2, [r5, #0x34]
	movs r1, #0x3e
	ldrsh r0, [r5, r1]
	mov r6, ip
	subs r3, r6, r0
	str r3, [r5, #0x38]
	mov r0, sl
	add r0, r8
	strh r0, [r5, #0x3c]
	mov r7, sp
	ldrh r0, [r7, #0x2c]
	add r0, sb
	strh r0, [r5, #0x3e]
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808B20C
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _0808B236
	.align 2, 0
_0808B200: .4byte gUnk_0203AD44
_0808B204: .4byte gCurLevelInfo
_0808B208: .4byte gUnk_02026D50
_0808B20C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808B226
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	adds r0, r2, r0
	str r0, [r5, #0x34]
	movs r7, #0x3e
	ldrsh r0, [r5, r7]
	subs r0, r3, r0
	str r0, [r5, #0x38]
_0808B226:
	adds r0, r5, #0
	bl sub_0806FAC8
_0808B22C:
	adds r0, r5, #0
	adds r0, #0x40
	add r1, sp, #0x28
	ldrb r1, [r1]
	strb r1, [r0]
_0808B236:
	add sp, #0x34
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808B248
sub_0808B248: @ 0x0808B248
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _0808B288 @ =sub_0808B360
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808B28C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808B290
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808B298
	.align 2, 0
_0808B288: .4byte sub_0808B360
_0808B28C: .4byte sub_0803DCCC
_0808B290:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808B298:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldr r0, _0808B30C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B2DE
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808B2DE:
	cmp r6, #0
	beq _0808B32C
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bls _0808B310
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	b _0808B34C
	.align 2, 0
_0808B30C: .4byte gUnk_03000510
_0808B310:
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	adds r0, r4, #0
	adds r0, #0x40
	strb r6, [r0]
	b _0808B34C
_0808B32C:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808B35C @ =0x06012000
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r3, r8
	bl sub_080709F8
_0808B34C:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808B35C: .4byte 0x06012000

	thumb_func_start sub_0808B360
sub_0808B360: @ 0x0808B360
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	movs r7, #0
	ldr r2, _0808B380 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808B384
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808B38C
	.align 2, 0
_0808B380: .4byte gCurTask
_0808B384:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808B38C:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0808B3A2
	ldr r0, [r2]
	bl TaskDestroy
	b _0808B622
_0808B3A2:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0808B48E
	ldrb r7, [r1]
	ldr r2, _0808B418 @ =gKirbys
	ldr r0, _0808B41C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808B460
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808B428
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B486
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B420 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0808B424 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0808B486
	.align 2, 0
_0808B418: .4byte gKirbys
_0808B41C: .4byte gUnk_0203AD3C
_0808B420: .4byte 0xFFF7FFFF
_0808B424: .4byte 0x0400000A
_0808B428:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B486
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B458 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0808B45C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0808B486
	.align 2, 0
_0808B458: .4byte 0xFFF7FFFF
_0808B45C: .4byte 0x0400000A
_0808B460:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0808B47C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0808B47C
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_0808B47C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_0808B486:
	adds r1, r5, #0
	adds r1, #0x40
	movs r0, #0
	strb r0, [r1]
_0808B48E:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _0808B4E0
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808B4AC
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0808B4AC
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0808B4AC:
	cmp r3, #0
	beq _0808B4E0
	ldr r0, _0808B4DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B550
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B550
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808B61C
	.align 2, 0
_0808B4DC: .4byte gUnk_03000510
_0808B4E0:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _0808B548 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808B522
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B522
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B522
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B522
	movs r3, #4
_0808B522:
	ldr r0, _0808B54C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B550
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B550
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808B61C
	.align 2, 0
_0808B548: .4byte gKirbys
_0808B54C: .4byte gUnk_03000510
_0808B550:
	ldr r0, _0808B5C4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808B598
	ldr r1, _0808B5C8 @ =gCurLevelInfo
	mov ip, r1
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808B5CC @ =gUnk_02026D50
_0808B564:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, ip
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808B590
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808B5AA
_0808B590:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808B564
_0808B598:
	movs r0, #1
	cmp r0, #0
	beq _0808B5AA
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0808B5AA:
	adds r0, r5, #0
	bl sub_0803D8AC
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808B5D0
	ldrh r1, [r5, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _0808B622
	.align 2, 0
_0808B5C4: .4byte gUnk_0203AD44
_0808B5C8: .4byte gCurLevelInfo
_0808B5CC: .4byte gUnk_02026D50
_0808B5D0:
	ldrh r0, [r5, #6]
	movs r2, #4
	orrs r2, r0
	strh r2, [r5, #6]
	movs r6, #0x3c
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #0x34]
	adds r3, r0, r1
	str r3, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r1, r0, r1
	str r1, [r5, #0x38]
	ldrh r0, [r5, #4]
	ldrh r4, [r5, #0x3c]
	adds r0, r0, r4
	strh r0, [r5, #0x3c]
	ldrh r0, [r5, #8]
	ldrh r6, [r5, #0x3e]
	adds r0, r0, r6
	strh r0, [r5, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r2, r0
	cmp r2, #0
	bne _0808B616
	movs r2, #0x3c
	ldrsh r0, [r5, r2]
	adds r0, r3, r0
	str r0, [r5, #0x34]
	movs r4, #0x3e
	ldrsh r0, [r5, r4]
	subs r0, r1, r0
	str r0, [r5, #0x38]
_0808B616:
	adds r0, r5, #0
	bl sub_0806FAC8
_0808B61C:
	adds r0, r5, #0
	adds r0, #0x40
	strb r7, [r0]
_0808B622:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808B62C
sub_0808B62C: @ 0x0808B62C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _0808B678 @ =sub_0808B754
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808B67C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808B680
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808B688
	.align 2, 0
_0808B678: .4byte sub_0808B754
_0808B67C: .4byte sub_0803DCCC
_0808B680:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808B688:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	mov r0, sb
	strh r0, [r4, #4]
	ldr r0, _0808B700 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B6D2
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808B6D2:
	cmp r6, #0
	beq _0808B720
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bls _0808B704
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	b _0808B740
	.align 2, 0
_0808B700: .4byte gUnk_03000510
_0808B704:
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	adds r0, r4, #0
	adds r0, #0x40
	strb r6, [r0]
	b _0808B740
_0808B720:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808B750 @ =0x06012000
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r3, r8
	bl sub_080709F8
_0808B740:
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808B750: .4byte 0x06012000

	thumb_func_start sub_0808B754
sub_0808B754: @ 0x0808B754
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	movs r0, #0
	mov sl, r0
	ldr r2, _0808B780 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808B784
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808B78C
	.align 2, 0
_0808B780: .4byte gCurTask
_0808B784:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808B78C:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0808B7A4
	ldr r0, [r2]
	bl TaskDestroy
	b _0808BA5A
_0808B7A4:
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #8]
	ands r0, r1
	cmp r0, #0
	beq _0808B7B6
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _0808BA5A
_0808B7B6:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov sb, r0
	cmp r1, #0
	beq _0808B8AC
	ldrb r1, [r0]
	mov sl, r1
	ldr r2, _0808B834 @ =gKirbys
	ldr r0, _0808B838 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808B880
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808B844
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B8A6
	mov r2, sl
	lsls r0, r2, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B83C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0808B840 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0808B8A6
	.align 2, 0
_0808B834: .4byte gKirbys
_0808B838: .4byte gUnk_0203AD3C
_0808B83C: .4byte 0xFFF7FFFF
_0808B840: .4byte 0x0400000A
_0808B844:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808B8A6
	mov r3, sl
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808B878 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0808B87C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0808B8A6
	.align 2, 0
_0808B878: .4byte 0xFFF7FFFF
_0808B87C: .4byte 0x0400000A
_0808B880:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0808B89C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0808B89C
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_0808B89C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_0808B8A6:
	movs r0, #0
	mov r6, sb
	strb r0, [r6]
_0808B8AC:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _0808B900
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808B8CA
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0808B8CA
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0808B8CA:
	cmp r3, #0
	beq _0808B900
	ldr r0, _0808B8FC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B970
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B970
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808BA54
	.align 2, 0
_0808B8FC: .4byte gUnk_03000510
_0808B900:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _0808B968 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808B942
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B942
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B942
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808B942
	movs r3, #4
_0808B942:
	ldr r0, _0808B96C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808B970
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808B970
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808BA54
	.align 2, 0
_0808B968: .4byte gKirbys
_0808B96C: .4byte gUnk_03000510
_0808B970:
	ldr r0, _0808BA28 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r1, [r5, #0x34]
	str r1, [sp, #0x28]
	ldr r2, [r5, #0x38]
	mov ip, r2
	ldrh r3, [r5, #4]
	mov r8, r3
	cmp r0, #0
	beq _0808B9C0
	ldr r6, _0808BA2C @ =gCurLevelInfo
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808BA30 @ =gUnk_02026D50
_0808B98E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808B9B8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808B9D2
_0808B9B8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808B98E
_0808B9C0:
	movs r0, #1
	cmp r0, #0
	beq _0808B9D2
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0808B9D2:
	movs r3, #0x3c
	ldrsh r0, [r5, r3]
	ldr r6, [sp, #0x28]
	adds r3, r6, r0
	str r3, [r5, #0x34]
	movs r7, #0x3e
	ldrsh r0, [r5, r7]
	mov r1, ip
	subs r4, r1, r0
	str r4, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	bne _0808BA04
	movs r6, #0x3c
	ldrsh r0, [r5, r6]
	adds r0, r3, r0
	str r0, [r5, #0x34]
	movs r7, #0x3e
	ldrsh r0, [r5, r7]
	subs r0, r4, r0
	str r0, [r5, #0x38]
_0808BA04:
	mov r3, r8
	lsls r0, r3, #0x10
	cmp r0, #0
	beq _0808BA48
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0808BA4E
	mov r0, r8
	subs r0, #1
	movs r1, #0
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0808BA34
	movs r0, #4
	orrs r0, r2
	b _0808BA4C
	.align 2, 0
_0808BA28: .4byte gUnk_0203AD44
_0808BA2C: .4byte gCurLevelInfo
_0808BA30: .4byte gUnk_02026D50
_0808BA34:
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r2
	cmp r0, #0
	bne _0808BA4E
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r2
	b _0808BA4C
_0808BA48:
	movs r0, #4
	orrs r0, r1
_0808BA4C:
	strh r0, [r5, #6]
_0808BA4E:
	adds r0, r5, #0
	bl sub_0806FAC8
_0808BA54:
	mov r0, sl
	mov r7, sb
	strb r0, [r7]
_0808BA5A:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808BA6C
sub_0808BA6C: @ 0x0808BA6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _0808BAAC @ =sub_0808BB98
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808BAB0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808BAB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808BABC
	.align 2, 0
_0808BAAC: .4byte sub_0808BB98
_0808BAB0: .4byte sub_0803DCCC
_0808BAB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808BABC:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	mov ip, r2
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0808BAF2
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_0808BAF2:
	ldr r0, _0808BB44 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808BB16
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808BB16:
	cmp r6, #0
	beq _0808BB64
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bls _0808BB48
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	b _0808BB84
	.align 2, 0
_0808BB44: .4byte gUnk_03000510
_0808BB48:
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	adds r0, r4, #0
	adds r0, #0x40
	strb r6, [r0]
	b _0808BB84
_0808BB64:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808BB94 @ =0x06012000
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r3, r8
	bl sub_080709F8
_0808BB84:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808BB94: .4byte 0x06012000

	thumb_func_start sub_0808BB98
sub_0808BB98: @ 0x0808BB98
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	movs r0, #0
	mov sl, r0
	ldr r2, _0808BBC4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808BBC8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808BBD0
	.align 2, 0
_0808BBC4: .4byte gCurTask
_0808BBC8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808BBD0:
	adds r5, r0, #0
	ldr r1, [r5, #0x44]
	mov sb, r1
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0808BBEC
	ldr r0, [r2]
	bl TaskDestroy
	b _0808BE94
_0808BBEC:
	mov r2, sb
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0808BBFE
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _0808BE94
_0808BBFE:
	adds r0, r5, #0
	adds r0, #0x40
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r8, r0
	cmp r1, #0
	beq _0808BCF0
	ldrb r6, [r0]
	mov sl, r6
	ldr r2, _0808BC78 @ =gKirbys
	ldr r0, _0808BC7C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808BCC4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808BC88
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808BCEA
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r5, #0x18]
	adds r2, r5, #0
	adds r2, #0x26
	ldrb r2, [r2]
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808BC80 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0808BC84 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0808BCEA
	.align 2, 0
_0808BC78: .4byte gKirbys
_0808BC7C: .4byte gUnk_0203AD3C
_0808BC80: .4byte 0xFFF7FFFF
_0808BC84: .4byte 0x0400000A
_0808BC88:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0808BCEA
	mov r7, sl
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _0808BCBC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _0808BCC0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0808BCEA
	.align 2, 0
_0808BCBC: .4byte 0xFFF7FFFF
_0808BCC0: .4byte 0x0400000A
_0808BCC4:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _0808BCE0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _0808BCE0
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_0808BCE0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_0808BCEA:
	movs r0, #0
	mov r1, r8
	strb r0, [r1]
_0808BCF0:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _0808BD44
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808BD0E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0808BD0E
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0808BD0E:
	cmp r3, #0
	beq _0808BD44
	ldr r0, _0808BD40 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808BDBC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808BDBC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808BE8E
	.align 2, 0
_0808BD40: .4byte gUnk_03000510
_0808BD44:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _0808BDB4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808BD86
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808BD86
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808BD86
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808BD86
	movs r3, #4
_0808BD86:
	ldr r0, _0808BDB8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808BDBC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808BDBC
	adds r0, r4, #0
	bl sub_0803DBC8
	mov r0, sl
	mov r7, r8
	strb r0, [r7]
	b _0808BE94
	.align 2, 0
_0808BDB4: .4byte gKirbys
_0808BDB8: .4byte gUnk_03000510
_0808BDBC:
	ldr r0, _0808BE74 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r1, [r5, #0xc]
	mov ip, r1
	cmp r0, #0
	beq _0808BE04
	ldr r6, _0808BE78 @ =gCurLevelInfo
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808BE7C @ =gUnk_02026D50
_0808BDD2:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808BDFC
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808BE16
_0808BDFC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808BDD2
_0808BE04:
	movs r0, #1
	cmp r0, #0
	beq _0808BE16
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0808BE16:
	ldr r0, _0808BE80 @ =0x06011FFF
	cmp ip, r0
	bhi _0808BE46
	movs r2, #0
	ldr r1, [r5, #0x44]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _0808BE34
	ldr r3, _0808BE84 @ =0x00000103
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808BE42
_0808BE34:
	ldrh r1, [r5, #6]
	movs r6, #0xa0
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r5, #6]
	movs r2, #1
_0808BE42:
	cmp r2, #0
	bne _0808BE94
_0808BE46:
	mov r7, sb
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x38]
	ldrh r2, [r5, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0808BE66
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0808BE88
_0808BE66:
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r0, r2
	strh r0, [r5, #6]
	b _0808BE94
	.align 2, 0
_0808BE74: .4byte gUnk_0203AD44
_0808BE78: .4byte gCurLevelInfo
_0808BE7C: .4byte gUnk_02026D50
_0808BE80: .4byte 0x06011FFF
_0808BE84: .4byte 0x00000103
_0808BE88:
	adds r0, r5, #0
	bl sub_0806FAC8
_0808BE8E:
	mov r3, sl
	mov r2, r8
	strb r3, [r2]
_0808BE94:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808BEA4
sub_0808BEA4: @ 0x0808BEA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	mov sb, r1
	ldr r6, [sp, #0x24]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _0808BEE8 @ =sub_0808BF88
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808BEEC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808BEF0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0808BEF8
	.align 2, 0
_0808BEE8: .4byte sub_0808BF88
_0808BEEC: .4byte sub_0803DCCC
_0808BEF0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0808BEF8:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0808BF2A
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_0808BF2A:
	ldr r0, _0808BF84 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808BF4E
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808BF4E:
	movs r0, #0x80
	lsls r0, r0, #7
	ands r6, r0
	cmp r6, #0
	beq _0808BF5E
	ldrh r1, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_0808BF5E:
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r2, sb
	mov r3, r8
	bl sub_080709F8
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808BF84: .4byte gUnk_03000510

	thumb_func_start sub_0808BF88
sub_0808BF88: @ 0x0808BF88
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _0808BFB0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808BFB4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808BFBC
	.align 2, 0
_0808BFB0: .4byte gCurTask
_0808BFB4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808BFBC:
	adds r4, r0, #0
	ldr r5, [r4, #0x44]
	mov sb, r5
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0808BFD6
	ldr r0, [r2]
	bl TaskDestroy
	b _0808C452
_0808BFD6:
	ldr r0, _0808C0C0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	adds r6, r5, #0
	cmp r0, #0
	beq _0808C022
	ldr r1, _0808C0C4 @ =gCurLevelInfo
	mov r8, r1
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r2, _0808C0C8 @ =gUnk_02026D50
	mov sl, r2
_0808BFEE:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808C01A
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sl
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808C034
_0808C01A:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808BFEE
_0808C022:
	movs r0, #1
	cmp r0, #0
	beq _0808C034
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808C034:
	movs r1, #0
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _0808C04A
	ldr r3, _0808C0CC @ =0x00000103
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808C058
_0808C04A:
	ldrh r1, [r4, #6]
	movs r7, #0xa0
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r1, #1
_0808C058:
	cmp r1, #0
	beq _0808C05E
	b _0808C452
_0808C05E:
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x38]
	ldr r0, _0808C0D0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	movs r6, #1
	adds r0, r6, #0
	ldrb r7, [r3]
	lsls r0, r7
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp, #4]
	cmp r2, #0
	bne _0808C086
	b _0808C26C
_0808C086:
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r2, r0
	cmp r2, #0
	beq _0808C094
	b _0808C26C
_0808C094:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	str r1, [sp]
	ldrh r1, [r4, #0x18]
	adds r5, r0, #0
	cmp r1, #0
	bne _0808C0A6
	b _0808C452
_0808C0A6:
	strb r2, [r5]
	ldrh r1, [r4, #6]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0808C0D4
	adds r0, r4, #0
	adds r0, #0xc
	ldr r1, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _0808C0DE
	.align 2, 0
_0808C0C0: .4byte gUnk_0203AD44
_0808C0C4: .4byte gCurLevelInfo
_0808C0C8: .4byte gUnk_02026D50
_0808C0CC: .4byte 0x00000103
_0808C0D0: .4byte gUnk_03000510
_0808C0D4:
	adds r0, r4, #0
	adds r0, #0xc
	ldr r1, [r4, #0x14]
	ldr r2, _0808C158 @ =0xFFFFFBFF
	ands r1, r2
_0808C0DE:
	str r1, [r0, #8]
	mov r8, r0
	ldrh r6, [r4, #6]
	movs r0, #8
	ands r0, r6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0808C174
	adds r0, r4, #0
	adds r0, #0x27
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808C10A
	ldrh r0, [r4, #0x24]
	ldrh r2, [r4, #0x18]
	cmp r0, r2
	beq _0808C11A
_0808C10A:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0808C11A
	strb r3, [r4, #1]
	strh r3, [r4, #2]
	ldr r0, _0808C15C @ =0x0000FFFB
	ands r0, r6
	strh r0, [r4, #6]
_0808C11A:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0808C160
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0808C174
	ldrb r0, [r5]
	cmp r0, #0
	beq _0808C174
	movs r0, #0xff
	strb r0, [r7]
	ldrh r1, [r4, #6]
	ldr r0, _0808C15C @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _0808C174
	.align 2, 0
_0808C158: .4byte 0xFFFFFBFF
_0808C15C: .4byte 0x0000FFFB
_0808C160:
	ldrb r1, [r5]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _0808C258 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_0808C174:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _0808C25C @ =gCurLevelInfo
	ldr r7, _0808C260 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sb, r1
	strh r0, [r4, #0x1c]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x1e]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0808C1D6
	mov r0, sb
	strb r0, [r6]
	strb r0, [r3]
_0808C1D6:
	mov r1, sp
	ldrb r1, [r1]
	strb r1, [r5]
	ldrb r0, [r7]
	ldr r3, [sp, #4]
	ldrb r3, [r3]
	cmp r0, r3
	bne _0808C208
	mov r1, ip
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x1c]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x1e]
_0808C208:
	ldrh r3, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	beq _0808C216
	b _0808C452
_0808C216:
	ldr r2, _0808C264 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808C232
	b _0808C452
_0808C232:
	ldr r1, _0808C268 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r7, [r4, #0x1c]
	adds r0, r0, r7
	strh r0, [r4, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r4, #0x1e]
	adds r0, r0, r1
	strh r0, [r4, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808C250
	b _0808C430
_0808C250:
	mov r0, r8
	bl sub_0815604C
	b _0808C452
	.align 2, 0
_0808C258: .4byte 0x0000FFFD
_0808C25C: .4byte gCurLevelInfo
_0808C260: .4byte gUnk_0203AD3C
_0808C264: .4byte gKirbys
_0808C268: .4byte gUnk_0203AD18
_0808C26C:
	ldrh r2, [r4, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0808C27E
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	b _0808C298
_0808C27E:
	ldrh r1, [r4, #0x18]
	movs r0, #0xdb
	lsls r0, r0, #1
	cmp r1, r0
	bne _0808C29E
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x35
	beq _0808C29E
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
_0808C298:
	orrs r0, r2
	strh r0, [r4, #6]
	b _0808C452
_0808C29E:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C2B6
	adds r0, r4, #0
	adds r0, #0xc
	ldr r1, [r4, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _0808C2C0
_0808C2B6:
	adds r0, r4, #0
	adds r0, #0xc
	ldr r1, [r4, #0x14]
	ldr r2, _0808C344 @ =0xFFFFFBFF
	ands r1, r2
_0808C2C0:
	str r1, [r0, #8]
	mov r8, r0
	ldrh r6, [r4, #6]
	movs r0, #8
	ands r0, r6
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r5, r4, #0
	adds r5, #0x28
	cmp r3, #0
	bne _0808C360
	adds r0, r4, #0
	adds r0, #0x27
	adds r2, r4, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r7, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808C2F0
	ldrh r0, [r4, #0x24]
	ldrh r1, [r4, #0x18]
	cmp r0, r1
	beq _0808C306
_0808C2F0:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _0808C306
	strb r3, [r4, #1]
	strh r3, [r4, #2]
	ldr r0, _0808C348 @ =0x0000FFFB
	ands r0, r6
	strh r0, [r4, #6]
_0808C306:
	mov r0, r8
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0808C34C
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0808C360
	ldrb r0, [r5]
	cmp r0, #0
	beq _0808C360
	movs r0, #0xff
	strb r0, [r7]
	ldrh r1, [r4, #6]
	ldr r0, _0808C348 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	mov r0, r8
	bl sub_08155128
	b _0808C360
	.align 2, 0
_0808C344: .4byte 0xFFFFFBFF
_0808C348: .4byte 0x0000FFFB
_0808C34C:
	ldrb r1, [r5]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _0808C438 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_0808C360:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _0808C43C @ =gCurLevelInfo
	ldr r7, _0808C440 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sl, r3
	add r0, sl
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov sb, r1
	strh r0, [r4, #0x1c]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r4, #0x1e]
	ldrb r0, [r5]
	cmp r0, #0
	beq _0808C3C2
	mov r0, sb
	strb r0, [r6]
	strb r0, [r3]
_0808C3C2:
	ldrb r0, [r7]
	ldr r1, [sp, #4]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0808C3EE
	mov r1, ip
	muls r1, r0, r1
	add r1, sl
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x1c]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r4, #0x1e]
_0808C3EE:
	ldrh r3, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _0808C452
	ldr r2, _0808C444 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808C452
	ldr r1, _0808C448 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r4, #0x1c]
	adds r0, r0, r2
	strh r0, [r4, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r7, [r4, #0x1e]
	adds r0, r0, r7
	strh r0, [r4, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _0808C44C
_0808C430:
	mov r0, r8
	bl sub_081564D8
	b _0808C452
	.align 2, 0
_0808C438: .4byte 0x0000FFFD
_0808C43C: .4byte gCurLevelInfo
_0808C440: .4byte gUnk_0203AD3C
_0808C444: .4byte gKirbys
_0808C448: .4byte gUnk_0203AD18
_0808C44C:
	mov r0, r8
	bl sub_0815604C
_0808C452:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808C464
sub_0808C464: @ 0x0808C464
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808C494 @ =sub_0808C538
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808C498 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C49C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0808C4A4
	.align 2, 0
_0808C494: .4byte sub_0808C538
_0808C498: .4byte sub_0803DCCC
_0808C49C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0808C4A4:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r6, #3
	strb r6, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _0808C530 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808C4EA
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808C4EA:
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r4, #0x3c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _0808C506
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r4, #0x3c]
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_0808C506:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808C534 @ =0x06012000
	movs r3, #0xa3
	lsls r3, r3, #2
	str r6, [sp]
	movs r0, #0xb
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808C530: .4byte gUnk_03000510
_0808C534: .4byte 0x06012000

	thumb_func_start sub_0808C538
sub_0808C538: @ 0x0808C538
	push {r4, r5, r6, r7, lr}
	ldr r2, _0808C558 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0808C55C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808C564
	.align 2, 0
_0808C558: .4byte gCurTask
_0808C55C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808C564:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808C580
	ldr r0, [r5]
	bl TaskDestroy
	b _0808C6EE
_0808C580:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _0808C5CC
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808C598
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _0808C598
	str r3, [r4, #0x44]
	movs r1, #0
_0808C598:
	cmp r1, #0
	beq _0808C5CC
	ldr r0, _0808C5C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808C63C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808C63C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808C6EE
	.align 2, 0
_0808C5C8: .4byte gUnk_03000510
_0808C5CC:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _0808C634 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808C60E
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808C60E
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808C60E
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808C60E
	movs r3, #4
_0808C60E:
	ldr r0, _0808C638 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808C63C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808C63C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808C6EE
	.align 2, 0
_0808C634: .4byte gKirbys
_0808C638: .4byte gUnk_03000510
_0808C63C:
	ldr r0, _0808C6B8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r4, #4]
	mov ip, r7
	cmp r0, #0
	beq _0808C684
	ldr r6, _0808C6BC @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _0808C6C0 @ =gUnk_02026D50
_0808C652:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808C67C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808C696
_0808C67C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808C652
_0808C684:
	movs r0, #1
	cmp r0, #0
	beq _0808C696
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808C696:
	ldrh r1, [r4, #6]
	movs r0, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r4, #6]
	mov r3, ip
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #6
	ble _0808C6C4
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r1, r0
	strh r1, [r4, #6]
	b _0808C6EE
	.align 2, 0
_0808C6B8: .4byte gUnk_0203AD44
_0808C6BC: .4byte gCurLevelInfo
_0808C6C0: .4byte gUnk_02026D50
_0808C6C4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0808C6E2
	movs r7, #0x3c
	ldrsh r1, [r4, r7]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_0808C6E2:
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_0808C6EE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808C6F4
sub_0808C6F4: @ 0x0808C6F4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0808C724 @ =sub_0808C828
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808C728 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C72C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808C734
	.align 2, 0
_0808C724: .4byte sub_0808C828
_0808C728: .4byte sub_0803DCCC
_0808C72C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808C734:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808C79C
	ldrh r0, [r5, #6]
	orrs r0, r1
	strh r0, [r5, #6]
	ldr r3, _0808C78C @ =gUnk_08350EA0
	ldr r2, _0808C790 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0808C794 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0808C798 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	b _0808C7C0
	.align 2, 0
_0808C78C: .4byte gUnk_08350EA0
_0808C790: .4byte gRngVal
_0808C794: .4byte 0x00196225
_0808C798: .4byte 0x3C6EF35F
_0808C79C:
	ldr r3, _0808C810 @ =gUnk_08350EA0
	ldr r2, _0808C814 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0808C818 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0808C81C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
_0808C7C0:
	str r0, [r5, #0x34]
	ldr r1, [r2]
	ldr r0, _0808C818 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0808C81C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _0808C820 @ =0x06012000
	ldr r3, _0808C824 @ =0x00000291
	str r4, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808C810: .4byte gUnk_08350EA0
_0808C814: .4byte gRngVal
_0808C818: .4byte 0x00196225
_0808C81C: .4byte 0x3C6EF35F
_0808C820: .4byte 0x06012000
_0808C824: .4byte 0x00000291

	thumb_func_start sub_0808C828
sub_0808C828: @ 0x0808C828
	push {r4, r5, r6, r7, lr}
	ldr r2, _0808C844 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808C848
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808C850
	.align 2, 0
_0808C844: .4byte gCurTask
_0808C848:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808C850:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808C86C
	ldr r0, [r2]
	bl TaskDestroy
	b _0808CBC4
_0808C86C:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _0808C8B8
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808C884
	ldr r0, [r1, #8]
	ands r0, r5
	cmp r0, #0
	beq _0808C884
	str r3, [r4, #0x44]
	movs r1, #0
_0808C884:
	cmp r1, #0
	beq _0808C8B8
	ldr r0, _0808C8B4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808C928
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808C928
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808CBC4
	.align 2, 0
_0808C8B4: .4byte gUnk_03000510
_0808C8B8:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _0808C920 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808C8FA
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808C8FA
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808C8FA
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808C8FA
	movs r3, #4
_0808C8FA:
	ldr r0, _0808C924 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808C928
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808C928
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808CBC4
	.align 2, 0
_0808C920: .4byte gKirbys
_0808C924: .4byte gUnk_03000510
_0808C928:
	ldr r0, _0808C9A8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r7, [r4, #0x44]
	mov ip, r7
	cmp r0, #0
	beq _0808C970
	ldr r6, _0808C9AC @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _0808C9B0 @ =gUnk_02026D50
_0808C93E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808C968
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808C982
_0808C968:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808C93E
_0808C970:
	movs r0, #1
	cmp r0, #0
	beq _0808C982
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808C982:
	mov r0, ip
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0808C9B4
	cmp r1, #0x1d
	beq _0808C9B4
	ldrh r1, [r4, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _0808CBC4
	.align 2, 0
_0808C9A8: .4byte gUnk_0203AD44
_0808C9AC: .4byte gCurLevelInfo
_0808C9B0: .4byte gUnk_02026D50
_0808C9B4:
	mov r7, ip
	ldr r2, [r7, #0x40]
	ldr r0, [r4, #0x34]
	subs r1, r2, r0
	cmp r1, #0
	blt _0808C9D4
	ldr r0, _0808C9D0 @ =0xFFFFF000
	ands r1, r0
	mov r5, ip
	adds r5, #0xd4
	cmp r1, #0
	beq _0808C9CE
	b _0808CB12
_0808C9CE:
	b _0808C9E4
	.align 2, 0
_0808C9D0: .4byte 0xFFFFF000
_0808C9D4:
	subs r0, r0, r2
	ldr r1, _0808CA24 @ =0xFFFFF000
	ands r0, r1
	mov r5, ip
	adds r5, #0xd4
	cmp r0, #0
	beq _0808C9E4
	b _0808CB12
_0808C9E4:
	mov r0, ip
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x6b
	bne _0808CA78
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808CA38
	ldr r3, _0808CA28 @ =gUnk_08350EC0
	ldr r2, _0808CA2C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0808CA30 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _0808CA34 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
	b _0808CA5C
	.align 2, 0
_0808CA24: .4byte 0xFFFFF000
_0808CA28: .4byte gUnk_08350EC0
_0808CA2C: .4byte gRngVal
_0808CA30: .4byte 0x00196225
_0808CA34: .4byte 0x3C6EF35F
_0808CA38:
	ldr r3, _0808CA64 @ =gUnk_08350EC0
	ldr r2, _0808CA68 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0808CA6C @ =0x00196225
	muls r0, r1, r0
	ldr r7, _0808CA70 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
_0808CA5C:
	str r0, [r4, #0x34]
	ldr r3, _0808CA74 @ =gUnk_08350EA0
	b _0808CAE2
	.align 2, 0
_0808CA64: .4byte gUnk_08350EC0
_0808CA68: .4byte gRngVal
_0808CA6C: .4byte 0x00196225
_0808CA70: .4byte 0x3C6EF35F
_0808CA74: .4byte gUnk_08350EA0
_0808CA78:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808CABC
	ldr r3, _0808CAAC @ =gUnk_08350EA0
	ldr r2, _0808CAB0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0808CAB4 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _0808CAB8 @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
	b _0808CAE0
	.align 2, 0
_0808CAAC: .4byte gUnk_08350EA0
_0808CAB0: .4byte gRngVal
_0808CAB4: .4byte 0x00196225
_0808CAB8: .4byte 0x3C6EF35F
_0808CABC:
	ldr r3, _0808CB34 @ =gUnk_08350EA0
	ldr r2, _0808CB38 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0808CB3C @ =0x00196225
	muls r0, r1, r0
	ldr r7, _0808CB40 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
_0808CAE0:
	str r0, [r4, #0x34]
_0808CAE2:
	ldr r1, [r2]
	ldr r0, _0808CB3C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0808CB40 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
	movs r0, #0
	strh r0, [r4, #0x3c]
	ldrh r1, [r4, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4, #6]
_0808CB12:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	adds r7, r1, #0
	cmp r0, #0
	beq _0808CB44
	ldrh r2, [r4, #0x3c]
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4, #0x3c]
	ldrh r0, [r5]
	cmp r0, #0x6b
	bne _0808CB58
	adds r0, r2, #0
	adds r0, #0x90
	b _0808CB56
	.align 2, 0
_0808CB34: .4byte gUnk_08350EA0
_0808CB38: .4byte gRngVal
_0808CB3C: .4byte 0x00196225
_0808CB40: .4byte 0x3C6EF35F
_0808CB44:
	ldrh r2, [r4, #0x3c]
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4, #0x3c]
	ldrh r0, [r5]
	cmp r0, #0x6b
	bne _0808CB58
	adds r0, r2, #0
	subs r0, #0x90
_0808CB56:
	strh r0, [r4, #0x3c]
_0808CB58:
	mov r6, ip
	ldr r2, [r6, #0x44]
	ldr r0, [r4, #0x38]
	subs r3, r2, r0
	adds r5, r0, #0
	cmp r3, #0
	blt _0808CB70
	ldr r2, _0808CB6C @ =0xFFFFFF00
	ands r2, r3
	b _0808CB76
	.align 2, 0
_0808CB6C: .4byte 0xFFFFFF00
_0808CB70:
	subs r2, r5, r2
	ldr r0, _0808CB88 @ =0xFFFFFF00
	ands r2, r0
_0808CB76:
	mov r0, ip
	ldr r1, [r0, #0x40]
	ldr r0, [r4, #0x34]
	subs r3, r1, r0
	adds r6, r0, #0
	cmp r3, #0
	blt _0808CB8C
	asrs r0, r3, #0xc
	b _0808CB90
	.align 2, 0
_0808CB88: .4byte 0xFFFFFF00
_0808CB8C:
	subs r0, r6, r1
	asrs r0, r0, #0xc
_0808CB90:
	adds r0, #1
	lsrs r2, r0
	strh r2, [r4, #0x3e]
	mov r1, ip
	ldr r0, [r1, #0x44]
	subs r0, r0, r5
	cmp r0, #0
	ble _0808CBA4
	rsbs r0, r2, #0
	strh r0, [r4, #0x3e]
_0808CBA4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r7
	cmp r0, #0
	bne _0808CBBE
	movs r2, #0x3c
	ldrsh r0, [r4, r2]
	adds r0, r6, r0
	str r0, [r4, #0x34]
	movs r6, #0x3e
	ldrsh r0, [r4, r6]
	subs r0, r5, r0
	str r0, [r4, #0x38]
_0808CBBE:
	adds r0, r4, #0
	bl sub_0806FAC8
_0808CBC4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808CBCC
sub_0808CBCC: @ 0x0808CBCC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0808CBFC @ =sub_0808CC78
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808CC00 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808CC04
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0808CC0C
	.align 2, 0
_0808CBFC: .4byte sub_0808CC78
_0808CC00: .4byte sub_0803DCCC
_0808CC04:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0808CC0C:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r4, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r2, r1, #0
	orrs r0, r2
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r4, [r5, #0x3c]
	movs r1, #0x80
	lsls r1, r1, #1
	strh r1, [r5, #0x3e]
	strh r4, [r5, #8]
	ldr r1, _0808CC70 @ =0x0000DFFF
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _0808CC74 @ =0x06012000
	movs r3, #0xa8
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0808CC70: .4byte 0x0000DFFF
_0808CC74: .4byte 0x06012000

	thumb_func_start sub_0808CC78
sub_0808CC78: @ 0x0808CC78
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0808CC9C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808CCA0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808CCA8
	.align 2, 0
_0808CC9C: .4byte gCurTask
_0808CCA0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808CCA8:
	adds r5, r0, #0
	ldr r3, [r5, #0x44]
	ldrh r1, [r5, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0808CCC6
	ldr r0, [r2]
	bl TaskDestroy
	b _0808CFB2
_0808CCC6:
	adds r1, r3, #0
	cmp r3, #0
	beq _0808CD10
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808CCDE
	ldr r0, [r3, #8]
	ands r0, r6
	cmp r0, #0
	beq _0808CCDE
	str r4, [r5, #0x44]
	movs r1, #0
_0808CCDE:
	cmp r1, #0
	beq _0808CD10
	ldr r0, _0808CD0C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808CD80
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808CD80
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808CFB2
	.align 2, 0
_0808CD0C: .4byte gUnk_03000510
_0808CD10:
	adds r6, r5, #0
	movs r4, #0
	ldr r2, _0808CD78 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808CD52
	movs r4, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808CD52
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808CD52
	movs r4, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808CD52
	movs r4, #4
_0808CD52:
	ldr r0, _0808CD7C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808CD80
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808CD80
	adds r0, r6, #0
	bl sub_0803DBC8
	b _0808CFB2
	.align 2, 0
_0808CD78: .4byte gKirbys
_0808CD7C: .4byte gUnk_03000510
_0808CD80:
	ldr r0, _0808CED0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	adds r6, r5, #0
	adds r6, #0x42
	movs r1, #0x60
	adds r1, r1, r3
	mov r8, r1
	cmp r0, #0
	beq _0808CDD0
	ldr r2, _0808CED4 @ =gCurLevelInfo
	mov ip, r2
	ldrh r4, [r6]
	ldr r7, _0808CED8 @ =gUnk_02026D50
	mov sb, r7
_0808CD9C:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0808CDC8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808CDE2
_0808CDC8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808CD9C
_0808CDD0:
	movs r0, #1
	cmp r0, #0
	beq _0808CDE2
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_0808CDE2:
	ldrh r0, [r6]
	mov r7, r8
	ldrh r7, [r7]
	cmp r0, r7
	beq _0808CDEE
	b _0808CF96
_0808CDEE:
	ldr r0, [r3, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0808CE04
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	cmp r0, #0
	beq _0808CE08
_0808CE04:
	movs r0, #1
	strh r0, [r5, #8]
_0808CE08:
	movs r7, #4
	ldrsh r1, [r5, r7]
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r1, r0
	ble _0808CF0E
	ldrh r1, [r5, #6]
	movs r0, #4
	movs r7, #0
	orrs r0, r1
	ldr r1, _0808CEDC @ =0x0000FBFF
	ands r0, r1
	strh r0, [r5, #6]
	ldr r4, _0808CED4 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r1, [r5, #0x34]
	ldr r0, [r0]
	cmp r1, r0
	bgt _0808CEE8
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _0808CEE8
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r2, [r5, #0x38]
	ldr r0, [r0]
	cmp r2, r0
	bgt _0808CEE8
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _0808CEE8
	ldr r4, _0808CEE0 @ =gUnk_082D88B8
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r0, _0808CEE4 @ =0xFFFFF800
	adds r2, r2, r0
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r3, [r0]
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808CEA2
	movs r2, #0x3c
	ldrsh r1, [r5, r2]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_0808CEA2:
	movs r2, #2
	ands r2, r3
	cmp r2, #0
	beq _0808CEAC
	b _0808CFAC
_0808CEAC:
	ldrh r0, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r1, r0
	orrs r1, r7
	strh r1, [r5, #6]
	strh r2, [r5, #4]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #0
	beq _0808CFAC
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r1, r0
	strh r1, [r5, #6]
	b _0808CFB2
	.align 2, 0
_0808CED0: .4byte gUnk_0203AD44
_0808CED4: .4byte gCurLevelInfo
_0808CED8: .4byte gUnk_02026D50
_0808CEDC: .4byte 0x0000FBFF
_0808CEE0: .4byte gUnk_082D88B8
_0808CEE4: .4byte 0xFFFFF800
_0808CEE8:
	ldrh r2, [r5, #6]
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	movs r3, #0
	movs r1, #0
	orrs r2, r0
	strh r2, [r5, #6]
	strh r1, [r5, #4]
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0808CFAC
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r2, r0
	strh r2, [r5, #6]
	b _0808CFB2
_0808CF0E:
	ldr r0, [r3, #0x40]
	str r0, [r5, #0x34]
	ldr r2, [r3, #0x44]
	str r2, [r5, #0x38]
	ldr r7, _0808CFA4 @ =gUnk_082D88B8
	mov r8, r7
	movs r7, #0
	asrs r1, r0, #0xc
	ldr r4, _0808CFA8 @ =gCurLevelInfo
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _0808CF7A
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _0808CF7A
	asrs r2, r2, #0xc
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _0808CF7A
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _0808CF7A
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_0808CF7A:
	lsls r0, r7, #2
	add r0, r8
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0808CF8E
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_0808CF8E:
	movs r1, #8
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0808CFAC
_0808CF96:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _0808CFB2
	.align 2, 0
_0808CFA4: .4byte gUnk_082D88B8
_0808CFA8: .4byte gCurLevelInfo
_0808CFAC:
	adds r0, r5, #0
	bl sub_0806FAC8
_0808CFB2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808CFC0
sub_0808CFC0: @ 0x0808CFC0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _0808CFF8 @ =sub_0808D100
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808CFFC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808D000
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0808D008
	.align 2, 0
_0808CFF8: .4byte sub_0808D100
_0808CFFC: .4byte sub_0803DCCC
_0808D000:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0808D008:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	mov sl, r2
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r4, #0x80
	lsls r4, r4, #7
	mov sb, r4
	mov r1, sb
	orrs r0, r1
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	movs r1, #0xc0
	strh r1, [r7, #0x3c]
	movs r1, #0x80
	strh r1, [r7, #0x3e]
	movs r4, #1
	mov ip, r4
	ands r0, r4
	cmp r0, #0
	beq _0808D056
	movs r0, #0
	strh r0, [r7, #0x3c]
_0808D056:
	ldr r3, _0808D0E8 @ =gRngVal
	ldr r0, [r3]
	ldr r6, _0808D0EC @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _0808D0F0 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r4, #7
	ands r0, r4
	subs r0, #7
	lsls r0, r0, #8
	ldr r1, [r7, #0x34]
	adds r1, r1, r0
	str r1, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r0, #0xb
	lsls r0, r0, #8
	ldr r1, [r7, #0x38]
	adds r1, r1, r0
	str r1, [r7, #0x38]
	ldr r0, _0808D0F4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, r8
	adds r1, #0x56
	mov r0, ip
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808D0B0
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808D0B0:
	ldrh r0, [r7, #6]
	mov r4, sb
	orrs r0, r4
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0808D0F8 @ =0x06012000
	ldr r3, _0808D0FC @ =0x00000297
	mov r0, ip
	str r0, [sp]
	mov r4, r8
	ldrh r0, [r4, #0x24]
	lsrs r0, r0, #6
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D0E8: .4byte gRngVal
_0808D0EC: .4byte 0x00196225
_0808D0F0: .4byte 0x3C6EF35F
_0808D0F4: .4byte gUnk_03000510
_0808D0F8: .4byte 0x06012000
_0808D0FC: .4byte 0x00000297

	thumb_func_start sub_0808D100
sub_0808D100: @ 0x0808D100
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0808D120 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808D124
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808D12C
	.align 2, 0
_0808D120: .4byte gCurTask
_0808D124:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808D12C:
	adds r7, r0, #0
	ldr r4, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r3, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0808D150
	ldr r0, [r2]
	bl TaskDestroy
	b _0808D5C4
_0808D150:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	beq _0808D178
	ldr r0, _0808D190 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0808D178
	ldr r0, _0808D194 @ =0x0000DFFF
	ands r0, r3
	strh r0, [r7, #6]
_0808D178:
	ldr r1, _0808D198 @ =0x00000103
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0808D19C
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0808D5C4
	.align 2, 0
_0808D190: .4byte gUnk_03000510
_0808D194: .4byte 0x0000DFFF
_0808D198: .4byte 0x00000103
_0808D19C:
	adds r0, r4, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	mov r8, r0
	cmp r1, #0x2f
	bls _0808D1BC
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x44]
	ldr r6, _0808D1B8 @ =0xFFFFF800
	adds r0, r0, r6
	str r0, [r7, #0x38]
	b _0808D5C4
	.align 2, 0
_0808D1B8: .4byte 0xFFFFF800
_0808D1BC:
	adds r0, r4, #0
	bl sub_0805BEC4
	adds r2, r0, #0
	cmp r2, #0
	beq _0808D1CA
	b _0808D5C4
_0808D1CA:
	ldr r3, [r7, #0x44]
	cmp r3, #0
	beq _0808D21C
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808D1E6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0808D1E6
	str r2, [r7, #0x44]
	movs r3, #0
_0808D1E6:
	cmp r3, #0
	beq _0808D21C
	ldr r0, _0808D218 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808D28C
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808D28C
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0808D5C4
	.align 2, 0
_0808D218: .4byte gUnk_03000510
_0808D21C:
	adds r5, r7, #0
	movs r3, #0
	ldr r2, _0808D284 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808D25E
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808D25E
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808D25E
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808D25E
	movs r3, #4
_0808D25E:
	ldr r0, _0808D288 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808D28C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808D28C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808D5C4
	.align 2, 0
_0808D284: .4byte gKirbys
_0808D288: .4byte gUnk_03000510
_0808D28C:
	ldrh r1, [r7, #4]
	movs r2, #4
	ldrsh r0, [r7, r2]
	cmp r0, #0
	beq _0808D29C
	subs r0, r1, #1
	strh r0, [r7, #4]
	b _0808D5C4
_0808D29C:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D2AC
	ldrh r0, [r7, #0x3c]
	adds r0, #0x10
	b _0808D2B0
_0808D2AC:
	ldrh r0, [r7, #0x3c]
	subs r0, #0x10
_0808D2B0:
	strh r0, [r7, #0x3c]
	ldrb r0, [r7, #1]
	adds r2, r0, #0
	adds r3, r0, #0
	cmp r2, #9
	bls _0808D2C2
	movs r0, #0x80
	lsls r0, r0, #2
	b _0808D2CA
_0808D2C2:
	cmp r2, #5
	bls _0808D2CC
	movs r0, #0x80
	lsls r0, r0, #1
_0808D2CA:
	strh r0, [r7, #0x3e]
_0808D2CC:
	lsls r0, r3, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xb
	beq _0808D2D6
	b _0808D59E
_0808D2D6:
	movs r0, #1
	eors r0, r1
	strh r0, [r7, #6]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x44]
	ldr r6, _0808D300 @ =0xFFFFF800
	adds r0, r0, r6
	str r0, [r7, #0x38]
	mov r1, r8
	ldrh r0, [r1]
	subs r0, #1
	cmp r0, #0x2e
	bls _0808D2F4
	b _0808D546
_0808D2F4:
	lsls r0, r0, #2
	ldr r1, _0808D304 @ =_0808D308
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0808D300: .4byte 0xFFFFF800
_0808D304: .4byte _0808D308
_0808D308: @ jump table
	.4byte _0808D3EC @ case 0
	.4byte _0808D546 @ case 1
	.4byte _0808D3EC @ case 2
	.4byte _0808D546 @ case 3
	.4byte _0808D3EC @ case 4
	.4byte _0808D546 @ case 5
	.4byte _0808D3EC @ case 6
	.4byte _0808D546 @ case 7
	.4byte _0808D3EC @ case 8
	.4byte _0808D546 @ case 9
	.4byte _0808D546 @ case 10
	.4byte _0808D3C4 @ case 11
	.4byte _0808D43C @ case 12
	.4byte _0808D464 @ case 13
	.4byte _0808D546 @ case 14
	.4byte _0808D48C @ case 15
	.4byte _0808D546 @ case 16
	.4byte _0808D4BA @ case 17
	.4byte _0808D4D0 @ case 18
	.4byte _0808D4DC @ case 19
	.4byte _0808D4F4 @ case 20
	.4byte _0808D50C @ case 21
	.4byte _0808D52A @ case 22
	.4byte _0808D546 @ case 23
	.4byte _0808D546 @ case 24
	.4byte _0808D546 @ case 25
	.4byte _0808D546 @ case 26
	.4byte _0808D546 @ case 27
	.4byte _0808D546 @ case 28
	.4byte _0808D546 @ case 29
	.4byte _0808D408 @ case 30
	.4byte _0808D430 @ case 31
	.4byte _0808D430 @ case 32
	.4byte _0808D430 @ case 33
	.4byte _0808D430 @ case 34
	.4byte _0808D430 @ case 35
	.4byte _0808D546 @ case 36
	.4byte _0808D546 @ case 37
	.4byte _0808D546 @ case 38
	.4byte _0808D546 @ case 39
	.4byte _0808D3EC @ case 40
	.4byte _0808D546 @ case 41
	.4byte _0808D546 @ case 42
	.4byte _0808D546 @ case 43
	.4byte _0808D3F4 @ case 44
	.4byte _0808D400 @ case 45
	.4byte _0808D3C4 @ case 46
_0808D3C4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D3D8
	ldr r0, [r7, #0x34]
	movs r2, #0xc0
	lsls r2, r2, #4
	adds r0, r0, r2
	b _0808D3DE
_0808D3D8:
	ldr r0, [r7, #0x34]
	ldr r6, _0808D3E8 @ =0xFFFFF400
	adds r0, r0, r6
_0808D3DE:
	str r0, [r7, #0x34]
	ldr r0, [r7, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	b _0808D500
	.align 2, 0
_0808D3E8: .4byte 0xFFFFF400
_0808D3EC:
	ldr r0, [r7, #0x38]
	movs r2, #0xc0
	lsls r2, r2, #3
	b _0808D4D6
_0808D3F4:
	ldr r0, [r7, #0x38]
	ldr r6, _0808D3FC @ =0xFFFFF800
	b _0808D4E8
	.align 2, 0
_0808D3FC: .4byte 0xFFFFF800
_0808D400:
	ldr r0, [r7, #0x38]
	movs r1, #0x80
	lsls r1, r1, #3
	b _0808D500
_0808D408:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhi _0808D418
	ldr r0, [r7, #0x38]
	ldr r2, _0808D414 @ =0xFFFFFC00
	b _0808D4D6
	.align 2, 0
_0808D414: .4byte 0xFFFFFC00
_0808D418:
	cmp r0, #3
	bhi _0808D424
	ldr r0, [r7, #0x38]
	movs r6, #0xc0
	lsls r6, r6, #3
	b _0808D4E8
_0808D424:
	ldr r0, [r7, #0x38]
	ldr r1, _0808D42C @ =0xFFFFFC00
	b _0808D500
	.align 2, 0
_0808D42C: .4byte 0xFFFFFC00
_0808D430:
	ldr r0, [r7, #0x38]
	ldr r2, _0808D438 @ =0xFFFFFC00
	b _0808D4D6
	.align 2, 0
_0808D438: .4byte 0xFFFFFC00
_0808D43C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D450
	ldr r0, [r7, #0x34]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	b _0808D456
_0808D450:
	ldr r0, [r7, #0x34]
	ldr r1, _0808D460 @ =0xFFFFF800
	adds r0, r0, r1
_0808D456:
	str r0, [r7, #0x34]
	ldr r0, [r7, #0x38]
	movs r2, #0x80
	lsls r2, r2, #4
	b _0808D4D6
	.align 2, 0
_0808D460: .4byte 0xFFFFF800
_0808D464:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D478
	ldr r0, [r7, #0x34]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	b _0808D47E
_0808D478:
	ldr r0, [r7, #0x34]
	ldr r1, _0808D488 @ =0xFFFFF800
	adds r0, r0, r1
_0808D47E:
	str r0, [r7, #0x34]
	ldr r0, [r7, #0x38]
	movs r2, #0x80
	lsls r2, r2, #3
	b _0808D4D6
	.align 2, 0
_0808D488: .4byte 0xFFFFF800
_0808D48C:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhi _0808D49A
	ldr r0, [r7, #0x38]
	movs r6, #0x80
	lsls r6, r6, #4
	b _0808D4E8
_0808D49A:
	cmp r0, #5
	bhi _0808D4A6
	ldr r0, [r7, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	b _0808D500
_0808D4A6:
	cmp r0, #7
	bhi _0808D4B2
	ldr r0, [r7, #0x38]
	movs r2, #0xa0
	lsls r2, r2, #5
	b _0808D4D6
_0808D4B2:
	cmp r0, #9
	bhi _0808D4B8
	b _0808D5C4
_0808D4B8:
	b _0808D546
_0808D4BA:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bhi _0808D4C8
	ldr r0, [r7, #0x38]
	movs r6, #0x80
	lsls r6, r6, #4
	b _0808D4E8
_0808D4C8:
	ldr r0, [r7, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	b _0808D500
_0808D4D0:
	ldr r0, [r7, #0x38]
	movs r2, #0x80
	lsls r2, r2, #5
_0808D4D6:
	adds r0, r0, r2
	str r0, [r7, #0x38]
	b _0808D546
_0808D4DC:
	ldrb r0, [r4, #1]
	cmp r0, #7
	bhi _0808D4EE
	ldr r0, [r7, #0x38]
	movs r6, #0xa0
	lsls r6, r6, #5
_0808D4E8:
	adds r0, r0, r6
	str r0, [r7, #0x38]
	b _0808D546
_0808D4EE:
	cmp r0, #0xe
	bls _0808D5C4
	b _0808D546
_0808D4F4:
	ldrb r0, [r4, #1]
	cmp r0, #5
	bhi _0808D506
	ldr r0, [r7, #0x38]
	movs r1, #0xa0
	lsls r1, r1, #5
_0808D500:
	adds r0, r0, r1
	str r0, [r7, #0x38]
	b _0808D546
_0808D506:
	cmp r0, #0xc
	bls _0808D5C4
	b _0808D546
_0808D50C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D520
	ldr r0, [r7, #0x34]
	ldr r2, _0808D51C @ =0xFFFFFA00
	b _0808D542
	.align 2, 0
_0808D51C: .4byte 0xFFFFFA00
_0808D520:
	ldr r0, [r7, #0x34]
	movs r6, #0xc0
	lsls r6, r6, #3
	adds r0, r0, r6
	b _0808D544
_0808D52A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D53E
	ldr r0, [r7, #0x34]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0808D544
_0808D53E:
	ldr r0, [r7, #0x34]
	ldr r2, _0808D5D0 @ =0xFFFFF800
_0808D542:
	adds r0, r0, r2
_0808D544:
	str r0, [r7, #0x34]
_0808D546:
	ldr r3, _0808D5D4 @ =gRngVal
	ldr r0, [r3]
	ldr r6, _0808D5D8 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _0808D5DC @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r4, #7
	ands r0, r4
	subs r0, #7
	lsls r0, r0, #8
	ldr r1, [r7, #0x34]
	adds r1, r1, r0
	str r1, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r0, #0xb
	lsls r0, r0, #8
	ldr r1, [r7, #0x38]
	adds r1, r1, r0
	str r1, [r7, #0x38]
	movs r0, #0xc0
	strh r0, [r7, #0x3c]
	movs r0, #0x80
	strh r0, [r7, #0x3e]
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0808D592
	movs r0, #0
	strh r0, [r7, #0x3c]
_0808D592:
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r7, #6]
	movs r0, #4
	strh r0, [r7, #4]
_0808D59E:
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808D5BE
	movs r6, #0x3c
	ldrsh r1, [r7, r6]
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0x38]
	subs r0, r0, r1
	str r0, [r7, #0x38]
_0808D5BE:
	adds r0, r7, #0
	bl sub_0806FAC8
_0808D5C4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D5D0: .4byte 0xFFFFF800
_0808D5D4: .4byte gRngVal
_0808D5D8: .4byte 0x00196225
_0808D5DC: .4byte 0x3C6EF35F

	thumb_func_start sub_0808D5E0
sub_0808D5E0: @ 0x0808D5E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0808D618 @ =sub_0808D728
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808D61C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808D620
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0808D628
	.align 2, 0
_0808D618: .4byte sub_0808D728
_0808D61C: .4byte sub_0803DCCC
_0808D620:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0808D628:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x38]
	str r4, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #7
	mov sl, r1
	mov r1, sl
	orrs r1, r0
	movs r2, #0
	orrs r1, r2
	strh r1, [r7, #6]
	ldr r0, [r4, #8]
	movs r2, #1
	mov sb, r2
	ands r0, r2
	cmp r0, #0
	beq _0808D66C
	movs r0, #1
	orrs r1, r0
	strh r1, [r7, #6]
_0808D66C:
	movs r2, #0xfe
	lsls r2, r2, #8
	strh r2, [r7, #0x3c]
	ldrh r1, [r7, #6]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0808D680
	rsbs r0, r2, #0
	strh r0, [r7, #0x3c]
_0808D680:
	ldr r3, _0808D710 @ =gRngVal
	ldr r0, [r3]
	ldr r1, _0808D714 @ =0x00196225
	mov r8, r1
	mov r2, r8
	muls r2, r0, r2
	ldr r6, _0808D718 @ =0x3C6EF35F
	adds r2, r2, r6
	str r2, [r3]
	lsrs r1, r2, #0x10
	movs r5, #0x1f
	ands r1, r5
	movs r0, #0x10
	mov ip, r0
	subs r1, r0, r1
	lsls r1, r1, #8
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r5
	mov r1, ip
	subs r0, r1, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r7, #0x38]
	ldr r0, _0808D71C @ =gUnk_03000510
	ldrb r1, [r0, #4]
	adds r2, r4, #0
	adds r2, #0x56
	mov r0, sb
	ldrb r2, [r2]
	lsls r0, r2
	mov r2, ip
	orrs r0, r2
	ands r1, r0
	cmp r1, #0
	beq _0808D6E2
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808D6E2:
	ldrh r0, [r7, #6]
	mov r1, sl
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0808D720 @ =0x06012000
	ldr r3, _0808D724 @ =0x00000297
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D710: .4byte gRngVal
_0808D714: .4byte 0x00196225
_0808D718: .4byte 0x3C6EF35F
_0808D71C: .4byte gUnk_03000510
_0808D720: .4byte 0x06012000
_0808D724: .4byte 0x00000297

	thumb_func_start sub_0808D728
sub_0808D728: @ 0x0808D728
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0808D74C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808D750
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808D758
	.align 2, 0
_0808D74C: .4byte gCurTask
_0808D750:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808D758:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r1, [r7, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808D778
	ldr r0, [r2]
	bl TaskDestroy
	b _0808D94A
_0808D778:
	mov r1, ip
	cmp r1, #0
	beq _0808D7C4
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808D790
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _0808D790
	str r3, [r7, #0x44]
	movs r1, #0
_0808D790:
	cmp r1, #0
	beq _0808D7C4
	ldr r0, _0808D7C0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808D834
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808D834
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0808D94A
	.align 2, 0
_0808D7C0: .4byte gUnk_03000510
_0808D7C4:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0808D82C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808D806
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808D806
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808D806
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808D806
	movs r3, #4
_0808D806:
	ldr r0, _0808D830 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808D834
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808D834
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808D94A
	.align 2, 0
_0808D82C: .4byte gKirbys
_0808D830: .4byte gUnk_03000510
_0808D834:
	ldr r0, _0808D8AC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808D878
	ldr r5, _0808D8B0 @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808D8B4 @ =gUnk_02026D50
_0808D846:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808D870
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808D88A
_0808D870:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808D846
_0808D878:
	movs r0, #1
	cmp r0, #0
	beq _0808D88A
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808D88A:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808D8B8
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x7b
	beq _0808D8B8
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0808D94A
	.align 2, 0
_0808D8AC: .4byte gUnk_0203AD44
_0808D8B0: .4byte gCurLevelInfo
_0808D8B4: .4byte gUnk_02026D50
_0808D8B8:
	ldrb r0, [r7, #1]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xb
	bls _0808D918
	ldr r4, _0808D90C @ =gRngVal
	ldr r0, [r4]
	ldr r6, _0808D910 @ =0x00196225
	mov r8, r6
	mov r3, r8
	muls r3, r0, r3
	ldr r0, _0808D914 @ =0x3C6EF35F
	mov sb, r0
	add r3, sb
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r5, #0x1f
	ands r1, r5
	movs r2, #0x10
	subs r1, r2, r1
	lsls r1, r1, #8
	mov r6, ip
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, r8
	muls r0, r3, r0
	add r0, sb
	str r0, [r4]
	lsrs r0, r0, #0x10
	ands r0, r5
	subs r2, r2, r0
	lsls r2, r2, #8
	ldr r0, [r6, #0x44]
	adds r0, r0, r2
	str r0, [r7, #0x38]
	ldrh r1, [r7, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #6]
	b _0808D924
	.align 2, 0
_0808D90C: .4byte gRngVal
_0808D910: .4byte 0x00196225
_0808D914: .4byte 0x3C6EF35F
_0808D918:
	ldr r0, _0808D958 @ =gUnk_08350FFA
	lsrs r1, r1, #0x19
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0x3e]
_0808D924:
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808D944
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r7, r2]
	ldr r0, [r7, #0x38]
	subs r0, r0, r1
	str r0, [r7, #0x38]
_0808D944:
	adds r0, r7, #0
	bl sub_0806FAC8
_0808D94A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808D958: .4byte gUnk_08350FFA

	thumb_func_start sub_0808D95C
sub_0808D95C: @ 0x0808D95C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	ldr r0, _0808D99C @ =sub_0808DAC8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808D9A0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808D9A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808D9AC
	.align 2, 0
_0808D99C: .4byte sub_0808DAC8
_0808D9A0: .4byte sub_0803DCCC
_0808D9A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808D9AC:
	adds r7, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	strh r0, [r1]
	ldrh r1, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r1, r0
	orrs r1, r2
	strh r1, [r7, #6]
	mov r3, sb
	ldr r0, [r3, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0808D9F0
	movs r0, #1
	orrs r1, r0
	strh r1, [r7, #6]
_0808D9F0:
	lsls r1, r5, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	movs r2, #0xfe
	lsls r2, r2, #8
	strh r2, [r7, #0x3c]
	ldrh r1, [r7, #6]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0808DA18
	rsbs r0, r2, #0
	strh r0, [r7, #0x3c]
	lsls r1, r4, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x34]
	subs r0, r0, r1
	b _0808DA20
_0808DA18:
	lsls r1, r4, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
_0808DA20:
	str r0, [r7, #0x34]
	ldr r4, _0808DAB0 @ =gRngVal
	ldr r0, [r4]
	ldr r1, _0808DAB4 @ =0x00196225
	mov r8, r1
	mov r3, r8
	muls r3, r0, r3
	ldr r6, _0808DAB8 @ =0x3C6EF35F
	adds r3, r3, r6
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r5, #0xf
	ands r1, r5
	movs r2, #8
	subs r1, r2, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, r8
	muls r0, r3, r0
	adds r0, r0, r6
	str r0, [r4]
	lsrs r0, r0, #0x10
	ands r0, r5
	subs r2, r2, r0
	lsls r2, r2, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r2
	str r0, [r7, #0x38]
	ldr r0, _0808DABC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r4, #1
	adds r0, r4, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808DA82
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808DA82:
	ldrh r1, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0808DAC0 @ =0x06012000
	ldr r3, _0808DAC4 @ =0x00000297
	str r4, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DAB0: .4byte gRngVal
_0808DAB4: .4byte 0x00196225
_0808DAB8: .4byte 0x3C6EF35F
_0808DABC: .4byte gUnk_03000510
_0808DAC0: .4byte 0x06012000
_0808DAC4: .4byte 0x00000297

	thumb_func_start sub_0808DAC8
sub_0808DAC8: @ 0x0808DAC8
	push {r4, r5, r6, r7, lr}
	ldr r2, _0808DAE8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0808DAEC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808DAF4
	.align 2, 0
_0808DAE8: .4byte gCurTask
_0808DAEC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808DAF4:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808DB10
	ldr r0, [r5]
	bl TaskDestroy
	b _0808DC76
_0808DB10:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _0808DB5C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808DB28
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _0808DB28
	str r2, [r3, #0x44]
	movs r1, #0
_0808DB28:
	cmp r1, #0
	beq _0808DB5C
	ldr r0, _0808DB58 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808DBCC
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808DBCC
	adds r0, r3, #0
	bl sub_0803DBC8
	b _0808DC76
	.align 2, 0
_0808DB58: .4byte gUnk_03000510
_0808DB5C:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _0808DBC4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808DB9E
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808DB9E
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808DB9E
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808DB9E
	movs r4, #4
_0808DB9E:
	ldr r0, _0808DBC8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808DBCC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808DBCC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808DC76
	.align 2, 0
_0808DBC4: .4byte gKirbys
_0808DBC8: .4byte gUnk_03000510
_0808DBCC:
	ldr r0, _0808DC38 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808DC10
	ldr r6, _0808DC3C @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _0808DC40 @ =gUnk_02026D50
_0808DBDE:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0808DC08
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808DC22
_0808DC08:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808DBDE
_0808DC10:
	movs r0, #1
	cmp r0, #0
	beq _0808DC22
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_0808DC22:
	ldrh r2, [r3, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0808DC44
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r2
	strh r0, [r3, #6]
	b _0808DC76
	.align 2, 0
_0808DC38: .4byte gUnk_0203AD44
_0808DC3C: .4byte gCurLevelInfo
_0808DC40: .4byte gUnk_02026D50
_0808DC44:
	ldr r1, _0808DC7C @ =gUnk_08350FFA
	ldrb r0, [r3, #1]
	lsrs r0, r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r3, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _0808DC70
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_0808DC70:
	adds r0, r3, #0
	bl sub_0806FAC8
_0808DC76:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DC7C: .4byte gUnk_08350FFA

	thumb_func_start sub_0808DC80
sub_0808DC80: @ 0x0808DC80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0808DCB8 @ =sub_0808DDD0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808DCBC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808DCC0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0808DCC8
	.align 2, 0
_0808DCB8: .4byte sub_0808DDD0
_0808DCBC: .4byte sub_0803DCCC
_0808DCC0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0808DCC8:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	ldr r0, [r6, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r7, #0x38]
	str r6, [r7, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #7
	mov sl, r1
	mov r1, sl
	orrs r1, r0
	movs r2, #0
	orrs r1, r2
	strh r1, [r7, #6]
	ldr r0, [r6, #8]
	movs r5, #1
	mov sb, r5
	ands r0, r5
	cmp r0, #0
	beq _0808DD0C
	movs r0, #1
	orrs r1, r0
	strh r1, [r7, #6]
_0808DD0C:
	ldr r1, _0808DDB8 @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0808DDBC @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0808DDC0 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r0, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r1, r0, #0
	ands r1, r5
	movs r5, #7
	ands r0, r5
	adds r1, r1, r0
	movs r0, #0xc
	mov ip, r0
	subs r1, r0, r1
	lsls r1, r1, #8
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	muls r0, r4, r0
	adds r0, r0, r3
	ldr r1, _0808DDB8 @ =gRngVal
	str r0, [r1]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r2, r8
	ands r1, r2
	ands r0, r5
	adds r1, r1, r0
	mov r5, ip
	subs r1, r5, r1
	lsls r1, r1, #8
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	ldr r0, _0808DDC4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r6, #0
	adds r1, #0x56
	mov r0, sb
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808DD88
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808DD88:
	ldrh r0, [r7, #6]
	mov r5, sl
	orrs r0, r5
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0808DDC8 @ =0x06012000
	ldr r3, _0808DDCC @ =0x00000297
	mov r0, sb
	str r0, [sp]
	mov r5, ip
	str r5, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808DDB8: .4byte gRngVal
_0808DDBC: .4byte 0x00196225
_0808DDC0: .4byte 0x3C6EF35F
_0808DDC4: .4byte gUnk_03000510
_0808DDC8: .4byte 0x06012000
_0808DDCC: .4byte 0x00000297

	thumb_func_start sub_0808DDD0
sub_0808DDD0: @ 0x0808DDD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0808DDF4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808DDF8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808DE00
	.align 2, 0
_0808DDF4: .4byte gCurTask
_0808DDF8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808DE00:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r1, [r7, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808DE20
	ldr r0, [r2]
	bl TaskDestroy
	b _0808E012
_0808DE20:
	mov r1, ip
	cmp r1, #0
	beq _0808DE6C
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808DE38
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _0808DE38
	str r3, [r7, #0x44]
	movs r1, #0
_0808DE38:
	cmp r1, #0
	beq _0808DE6C
	ldr r0, _0808DE68 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808DEDC
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808DEDC
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0808E012
	.align 2, 0
_0808DE68: .4byte gUnk_03000510
_0808DE6C:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0808DED4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808DEAE
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808DEAE
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808DEAE
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808DEAE
	movs r3, #4
_0808DEAE:
	ldr r0, _0808DED8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808DEDC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808DEDC
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808E012
	.align 2, 0
_0808DED4: .4byte gKirbys
_0808DED8: .4byte gUnk_03000510
_0808DEDC:
	ldr r0, _0808DF54 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808DF20
	ldr r5, _0808DF58 @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808DF5C @ =gUnk_02026D50
_0808DEEE:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808DF18
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808DF32
_0808DF18:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808DEEE
_0808DF20:
	movs r0, #1
	cmp r0, #0
	beq _0808DF32
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808DF32:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808DF60
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x7d
	beq _0808DF60
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0808E012
	.align 2, 0
_0808DF54: .4byte gUnk_0203AD44
_0808DF58: .4byte gCurLevelInfo
_0808DF5C: .4byte gUnk_02026D50
_0808DF60:
	ldrb r0, [r7, #1]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0xa
	bls _0808DFE0
	ldr r6, _0808DFD4 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0808DFD8 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0808DFDC @ =0x3C6EF35F
	adds r0, r0, r4
	adds r2, r0, #0
	muls r2, r5, r2
	adds r2, r2, r4
	str r2, [r6]
	lsrs r0, r2, #0x10
	movs r1, #0xf
	mov sb, r1
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	movs r3, #7
	mov r8, r3
	ands r0, r3
	adds r1, r1, r0
	movs r3, #0xc
	subs r1, r3, r1
	lsls r1, r1, #8
	mov sl, r1
	mov r1, ip
	ldr r0, [r1, #0x40]
	add r0, sl
	str r0, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r2, sb
	ands r1, r2
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r3, r3, r1
	lsls r3, r3, #8
	mov r6, ip
	ldr r0, [r6, #0x44]
	adds r0, r0, r3
	str r0, [r7, #0x38]
	ldrh r1, [r7, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #6]
	b _0808DFEC
	.align 2, 0
_0808DFD4: .4byte gRngVal
_0808DFD8: .4byte 0x00196225
_0808DFDC: .4byte 0x3C6EF35F
_0808DFE0:
	ldr r0, _0808E020 @ =gUnk_08350FFA
	lsrs r1, r1, #0x19
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0x3e]
_0808DFEC:
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808E00C
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r7, r2]
	ldr r0, [r7, #0x38]
	subs r0, r0, r1
	str r0, [r7, #0x38]
_0808E00C:
	adds r0, r7, #0
	bl sub_0806FAC8
_0808E012:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E020: .4byte gUnk_08350FFA

	thumb_func_start sub_0808E024
sub_0808E024: @ 0x0808E024
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808E054 @ =sub_0808E11C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808E058 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808E05C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0808E064
	.align 2, 0
_0808E054: .4byte sub_0808E11C
_0808E058: .4byte sub_0803DCCC
_0808E05C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0808E064:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	mov ip, r2
	strh r0, [r1]
	ldrh r0, [r4, #6]
	movs r1, #0x80
	lsls r1, r1, #7
	adds r7, r1, #0
	adds r3, r0, #0
	orrs r3, r7
	mov r2, ip
	orrs r3, r2
	strh r3, [r4, #6]
	ldr r2, _0808E104 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0808E108 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0808E10C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0808E0B8
	movs r0, #1
	orrs r3, r0
	strh r3, [r4, #6]
_0808E0B8:
	movs r0, #0x80
	strh r0, [r4, #0x3e]
	ldr r0, _0808E110 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808E0E0
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808E0E0:
	ldrh r0, [r4, #6]
	orrs r0, r7
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _0808E114 @ =0x06012000
	ldr r3, _0808E118 @ =0x000002A6
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E104: .4byte gRngVal
_0808E108: .4byte 0x00196225
_0808E10C: .4byte 0x3C6EF35F
_0808E110: .4byte gUnk_03000510
_0808E114: .4byte 0x06012000
_0808E118: .4byte 0x000002A6

	thumb_func_start sub_0808E11C
sub_0808E11C: @ 0x0808E11C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0808E13C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0808E140
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808E148
	.align 2, 0
_0808E13C: .4byte gCurTask
_0808E140:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808E148:
	adds r3, r0, #0
	ldr r5, [r3, #0x44]
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808E166
	ldr r0, [r6]
	bl TaskDestroy
	b _0808E2E4
_0808E166:
	adds r1, r5, #0
	cmp r5, #0
	beq _0808E1B0
	ldrb r0, [r5]
	cmp r0, #0
	beq _0808E17E
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _0808E17E
	str r2, [r3, #0x44]
	movs r1, #0
_0808E17E:
	cmp r1, #0
	beq _0808E1B0
	ldr r0, _0808E1AC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808E220
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808E220
	adds r0, r3, #0
	bl sub_0803DBC8
	b _0808E2E4
	.align 2, 0
_0808E1AC: .4byte gUnk_03000510
_0808E1B0:
	adds r6, r3, #0
	movs r4, #0
	ldr r2, _0808E218 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808E1F2
	movs r4, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808E1F2
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808E1F2
	movs r4, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808E1F2
	movs r4, #4
_0808E1F2:
	ldr r0, _0808E21C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808E220
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808E220
	adds r0, r6, #0
	bl sub_0803DBC8
	b _0808E2E4
	.align 2, 0
_0808E218: .4byte gKirbys
_0808E21C: .4byte gUnk_03000510
_0808E220:
	ldr r0, _0808E29C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808E268
	ldr r1, _0808E2A0 @ =gCurLevelInfo
	mov ip, r1
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r6, _0808E2A4 @ =gUnk_02026D50
_0808E234:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0808E260
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808E27A
_0808E260:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808E234
_0808E268:
	movs r0, #1
	cmp r0, #0
	beq _0808E27A
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_0808E27A:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808E2A8
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x7d
	beq _0808E2A8
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _0808E2E4
	.align 2, 0
_0808E29C: .4byte gUnk_0203AD44
_0808E2A0: .4byte gCurLevelInfo
_0808E2A4: .4byte gUnk_02026D50
_0808E2A8:
	ldrb r0, [r3, #1]
	cmp r0, #0xc
	bls _0808E2BE
	ldr r0, [r5, #0x40]
	str r0, [r3, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r3, #0x38]
	ldrh r1, [r3, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r3, #6]
_0808E2BE:
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808E2DE
	movs r0, #0x3c
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r3, r2]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_0808E2DE:
	adds r0, r3, #0
	bl sub_0806FAC8
_0808E2E4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808E2EC
sub_0808E2EC: @ 0x0808E2EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _0808E324 @ =sub_0808E404
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808E328 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808E32C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0808E334
	.align 2, 0
_0808E324: .4byte sub_0808E404
_0808E328: .4byte sub_0803DCCC
_0808E32C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0808E334:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	mov sl, r2
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #7
	mov sb, r1
	mov r6, sb
	orrs r6, r0
	mov r2, sl
	orrs r6, r2
	strh r6, [r7, #6]
	ldr r2, _0808E3EC @ =gRngVal
	ldr r0, [r2]
	ldr r1, _0808E3F0 @ =0x00196225
	mov ip, r1
	mov r1, ip
	muls r1, r0, r1
	ldr r5, _0808E3F4 @ =0x3C6EF35F
	adds r1, r1, r5
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r4, #0x1f
	ands r0, r4
	movs r3, #0x10
	subs r0, r3, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	mov r0, ip
	muls r0, r1, r0
	adds r0, r0, r5
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r0, r3, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0808E3F8 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	mov r2, r8
	adds r2, #0x56
	movs r4, #1
	adds r0, r4, #0
	ldrb r2, [r2]
	lsls r0, r2
	orrs r0, r3
	ands r1, r0
	cmp r1, #0
	beq _0808E3C0
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0808E3C0:
	ldrh r0, [r7, #6]
	mov r1, sb
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0808E3FC @ =0x06012000
	ldr r3, _0808E400 @ =0x0000029D
	str r4, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E3EC: .4byte gRngVal
_0808E3F0: .4byte 0x00196225
_0808E3F4: .4byte 0x3C6EF35F
_0808E3F8: .4byte gUnk_03000510
_0808E3FC: .4byte 0x06012000
_0808E400: .4byte 0x0000029D

	thumb_func_start sub_0808E404
sub_0808E404: @ 0x0808E404
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0808E428 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808E42C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808E434
	.align 2, 0
_0808E428: .4byte gCurTask
_0808E42C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808E434:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r1, [r7, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808E454
	ldr r0, [r2]
	bl TaskDestroy
	b _0808E652
_0808E454:
	mov r1, ip
	cmp r1, #0
	beq _0808E4A0
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808E46C
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _0808E46C
	str r3, [r7, #0x44]
	movs r1, #0
_0808E46C:
	cmp r1, #0
	beq _0808E4A0
	ldr r0, _0808E49C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808E510
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808E510
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0808E652
	.align 2, 0
_0808E49C: .4byte gUnk_03000510
_0808E4A0:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0808E508 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808E4E2
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808E4E2
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808E4E2
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808E4E2
	movs r3, #4
_0808E4E2:
	ldr r0, _0808E50C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808E510
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808E510
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808E652
	.align 2, 0
_0808E508: .4byte gKirbys
_0808E50C: .4byte gUnk_03000510
_0808E510:
	ldr r0, _0808E588 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808E554
	ldr r5, _0808E58C @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808E590 @ =gUnk_02026D50
_0808E522:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808E54C
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808E566
_0808E54C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808E522
_0808E554:
	movs r0, #1
	cmp r0, #0
	beq _0808E566
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808E566:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808E594
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x87
	beq _0808E594
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0808E652
	.align 2, 0
_0808E588: .4byte gUnk_0203AD44
_0808E58C: .4byte gCurLevelInfo
_0808E590: .4byte gUnk_02026D50
_0808E594:
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #6]
	ldrb r0, [r7, #1]
	cmp r0, #5
	beq _0808E5AC
	cmp r0, #7
	beq _0808E5AC
	cmp r0, #0x13
	beq _0808E5AC
	cmp r0, #0x15
	bne _0808E5FC
_0808E5AC:
	ldr r6, _0808E660 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0808E664 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0808E668 @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
_0808E5FC:
	ldrb r0, [r7, #1]
	cmp r0, #1
	beq _0808E606
	cmp r0, #0xd
	bne _0808E636
_0808E606:
	ldr r3, _0808E660 @ =gRngVal
	ldr r0, [r3]
	ldr r6, _0808E664 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _0808E668 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r4, #0x1f
	ands r0, r4
	movs r1, #0x10
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r1, r1, r0
	lsls r1, r1, #8
	strh r1, [r7, #0x3e]
_0808E636:
	movs r6, #0x3c
	ldrsh r1, [r7, r6]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0808E652:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E660: .4byte gRngVal
_0808E664: .4byte 0x00196225
_0808E668: .4byte 0x3C6EF35F

	thumb_func_start sub_0808E66C
sub_0808E66C: @ 0x0808E66C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0808E6A4 @ =sub_0808E7A4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808E6A8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808E6AC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0808E6B4
	.align 2, 0
_0808E6A4: .4byte sub_0808E7A4
_0808E6A8: .4byte sub_0803DCCC
_0808E6AC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0808E6B4:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	mov sl, r2
	mov r6, sl
	orrs r6, r0
	movs r5, #0
	orrs r6, r5
	strh r6, [r7, #6]
	ldr r1, _0808E78C @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0808E790 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0808E794 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0808E78C @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0808E798 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808E75C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0808E75C:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0808E79C @ =0x06012000
	ldr r3, _0808E7A0 @ =0x0000029D
	movs r0, #2
	str r0, [sp]
	mov r5, ip
	str r5, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E78C: .4byte gRngVal
_0808E790: .4byte 0x00196225
_0808E794: .4byte 0x3C6EF35F
_0808E798: .4byte gUnk_03000510
_0808E79C: .4byte 0x06012000
_0808E7A0: .4byte 0x0000029D

	thumb_func_start sub_0808E7A4
sub_0808E7A4: @ 0x0808E7A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0808E7C8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808E7CC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808E7D4
	.align 2, 0
_0808E7C8: .4byte gCurTask
_0808E7CC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808E7D4:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r1, [r7, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _0808E7F4
	ldr r0, [r2]
	bl TaskDestroy
	b _0808E9B0
_0808E7F4:
	mov r1, ip
	cmp r1, #0
	beq _0808E840
	ldrb r0, [r1]
	cmp r0, #0
	beq _0808E80C
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _0808E80C
	str r3, [r7, #0x44]
	movs r1, #0
_0808E80C:
	cmp r1, #0
	beq _0808E840
	ldr r0, _0808E83C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808E8B0
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808E8B0
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0808E9B0
	.align 2, 0
_0808E83C: .4byte gUnk_03000510
_0808E840:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0808E8A8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808E882
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808E882
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808E882
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808E882
	movs r3, #4
_0808E882:
	ldr r0, _0808E8AC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808E8B0
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808E8B0
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808E9B0
	.align 2, 0
_0808E8A8: .4byte gKirbys
_0808E8AC: .4byte gUnk_03000510
_0808E8B0:
	ldr r0, _0808E928 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808E8F4
	ldr r5, _0808E92C @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808E930 @ =gUnk_02026D50
_0808E8C2:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808E8EC
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808E906
_0808E8EC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808E8C2
_0808E8F4:
	movs r0, #1
	cmp r0, #0
	beq _0808E906
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808E906:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0808E934
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x7d
	beq _0808E934
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0808E9B0
	.align 2, 0
_0808E928: .4byte gUnk_0203AD44
_0808E92C: .4byte gCurLevelInfo
_0808E930: .4byte gUnk_02026D50
_0808E934:
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #6]
	ldrb r0, [r7, #1]
	cmp r0, #1
	beq _0808E944
	cmp r0, #6
	bne _0808E994
_0808E944:
	ldr r6, _0808E9BC @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0808E9C0 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0808E9C4 @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
_0808E994:
	movs r6, #0x3c
	ldrsh r1, [r7, r6]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0808E9B0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808E9BC: .4byte gRngVal
_0808E9C0: .4byte 0x00196225
_0808E9C4: .4byte 0x3C6EF35F

	thumb_func_start sub_0808E9C8
sub_0808E9C8: @ 0x0808E9C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0808EA00 @ =sub_0808EB08
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808EA04 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808EA08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0808EA10
	.align 2, 0
_0808EA00: .4byte sub_0808EB08
_0808EA04: .4byte sub_0803DCCC
_0808EA08:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0808EA10:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r2, #0
	strh r2, [r7, #8]
	ldrh r0, [r7, #6]
	movs r5, #0x80
	lsls r5, r5, #7
	mov sl, r5
	mov r6, sl
	orrs r6, r0
	movs r0, #0
	orrs r6, r0
	strh r6, [r7, #6]
	movs r0, #0x40
	strh r0, [r7, #4]
	ldr r1, _0808EAF0 @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0808EAF4 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0808EAF8 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0808EAF0 @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0808EAFC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808EAC0
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0808EAC0:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0808EB00 @ =0x06012000
	ldr r3, _0808EB04 @ =0x0000029E
	movs r5, #0
	str r5, [sp]
	mov r0, ip
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808EAF0: .4byte gRngVal
_0808EAF4: .4byte 0x00196225
_0808EAF8: .4byte 0x3C6EF35F
_0808EAFC: .4byte gUnk_03000510
_0808EB00: .4byte 0x06012000
_0808EB04: .4byte 0x0000029E

	thumb_func_start sub_0808EB08
sub_0808EB08: @ 0x0808EB08
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0808EB2C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808EB30
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808EB38
	.align 2, 0
_0808EB2C: .4byte gCurTask
_0808EB30:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808EB38:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov sl, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0808EB54
	ldr r0, [r2]
	bl TaskDestroy
	b _0808EDA8
_0808EB54:
	mov r2, sl
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0808EB66
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0808EDA8
_0808EB66:
	mov r5, sl
	cmp r5, #0
	beq _0808EB9C
	ldr r0, _0808EB98 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sl
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808EC0C
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0808EC0C
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0808EDA8
	.align 2, 0
_0808EB98: .4byte gUnk_03000510
_0808EB9C:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0808EC04 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808EBDE
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808EBDE
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808EBDE
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808EBDE
	movs r3, #4
_0808EBDE:
	ldr r0, _0808EC08 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808EC0C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808EC0C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808EDA8
	.align 2, 0
_0808EC04: .4byte gKirbys
_0808EC08: .4byte gUnk_03000510
_0808EC0C:
	ldr r0, _0808EC7C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0808EC50
	ldr r5, _0808EC80 @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808EC84 @ =gUnk_02026D50
_0808EC1E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808EC48
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808EC62
_0808EC48:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808EC1E
_0808EC50:
	movs r0, #1
	cmp r0, #0
	beq _0808EC62
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808EC62:
	ldrh r3, [r7, #6]
	mov ip, r3
	movs r0, #2
	mov r5, ip
	ands r0, r5
	cmp r0, #0
	beq _0808EC88
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r5
	strh r0, [r7, #6]
	b _0808EDA8
	.align 2, 0
_0808EC7C: .4byte gUnk_0203AD44
_0808EC80: .4byte gCurLevelInfo
_0808EC84: .4byte gUnk_02026D50
_0808EC88:
	ldrb r0, [r7, #1]
	cmp r0, #0x12
	bne _0808ECF2
	ldr r6, _0808ED64 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0808ED68 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0808ED6C @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	ldr r0, _0808ED70 @ =0x0000FFC0
	strh r0, [r7, #4]
	movs r6, #8
	ldrsh r0, [r7, r6]
	cmp r0, #0
	bne _0808ECF2
	movs r0, #4
	mov r1, ip
	orrs r0, r1
	strh r0, [r7, #6]
_0808ECF2:
	ldrb r0, [r7, #1]
	cmp r0, #0x24
	bne _0808ED4A
	ldr r6, _0808ED64 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0808ED68 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0808ED6C @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r2, #0xf
	mov sb, r2
	adds r0, r1, #0
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	movs r0, #0x40
	strh r0, [r7, #4]
_0808ED4A:
	ldrb r0, [r7, #1]
	cmp r0, #0x11
	bls _0808ED74
	ldrh r0, [r7, #0x3e]
	subs r0, #0x40
	ldrb r1, [r7, #1]
	subs r1, #0x12
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r7, #0x3e]
	ldrh r0, [r7, #4]
	adds r0, #7
	b _0808ED8A
	.align 2, 0
_0808ED64: .4byte gRngVal
_0808ED68: .4byte 0x00196225
_0808ED6C: .4byte 0x3C6EF35F
_0808ED70: .4byte 0x0000FFC0
_0808ED74:
	ldrh r1, [r7, #0x3e]
	subs r1, #0x40
	ldrb r0, [r7, #1]
	lsls r0, r0, #4
	subs r1, r1, r0
	strh r1, [r7, #0x3e]
	ldrh r0, [r7, #4]
	ldrh r6, [r7, #0x3c]
	adds r1, r0, r6
	strh r1, [r7, #0x3c]
	subs r0, #7
_0808ED8A:
	strh r0, [r7, #4]
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	mov r2, sl
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0808EDA8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808EDB8
sub_0808EDB8: @ 0x0808EDB8
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808EDE8 @ =sub_0808EEF4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808EDEC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808EDF0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808EDF8
	.align 2, 0
_0808EDE8: .4byte sub_0808EEF4
_0808EDEC: .4byte sub_0803DCCC
_0808EDF0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808EDF8:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r7, r5, #0
	adds r7, #0x60
	ldrh r0, [r7]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _0808EED4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r6, r5, #0
	adds r6, #0x56
	movs r0, #1
	ldrb r1, [r6]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808EE3C
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808EE3C:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _0808EED8 @ =0x06010600
	adds r2, r2, r0
	ldr r3, _0808EEDC @ =0x000002DE
	movs r0, #0
	str r0, [sp]
	ldrh r0, [r5, #0x24]
	lsrs r0, r0, #6
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	ldr r1, _0808EEE0 @ =gKirbys
	ldr r0, _0808EEE4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0808EECA
	ldrb r0, [r5]
	cmp r0, #0
	bne _0808EE8A
	ldrb r0, [r6]
	cmp r0, r2
	bne _0808EECA
_0808EE8A:
	ldr r1, _0808EEE8 @ =gUnk_08D60FA4
	ldr r3, _0808EEEC @ =gSongTable
	movs r2, #0xfd
	lsls r2, r2, #2
	adds r0, r3, r2
	ldrh r5, [r0]
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0808EEB2
	movs r1, #0xfc
	lsls r1, r1, #2
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0808EECA
_0808EEB2:
	cmp r5, #0
	beq _0808EEC4
	ldr r0, _0808EEF0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0808EECA
_0808EEC4:
	movs r0, #0x7e
	bl m4aSongNumStart
_0808EECA:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0808EED4: .4byte gUnk_03000510
_0808EED8: .4byte 0x06010600
_0808EEDC: .4byte 0x000002DE
_0808EEE0: .4byte gKirbys
_0808EEE4: .4byte gUnk_0203AD3C
_0808EEE8: .4byte gUnk_08D60FA4
_0808EEEC: .4byte gSongTable
_0808EEF0: .4byte gUnk_0203AD10

	thumb_func_start sub_0808EEF4
sub_0808EEF4: @ 0x0808EEF4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0808EF14 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _0808EF18
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808EF20
	.align 2, 0
_0808EF14: .4byte gCurTask
_0808EF18:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808EF20:
	adds r4, r0, #0
	ldr r3, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0808EF3E
	ldr r0, [r6]
	bl TaskDestroy
	b _0808F0DE
_0808EF3E:
	adds r1, r3, #0
	cmp r3, #0
	beq _0808EF88
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808EF56
	ldr r0, [r3, #8]
	ands r0, r5
	cmp r0, #0
	beq _0808EF56
	str r2, [r4, #0x44]
	movs r1, #0
_0808EF56:
	cmp r1, #0
	beq _0808EF88
	ldr r0, _0808EF84 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808EFF8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808EFF8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808F0DE
	.align 2, 0
_0808EF84: .4byte gUnk_03000510
_0808EF88:
	adds r6, r4, #0
	movs r5, #0
	ldr r2, _0808EFF0 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808EFCA
	movs r5, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808EFCA
	movs r5, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808EFCA
	movs r5, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808EFCA
	movs r5, #4
_0808EFCA:
	ldr r0, _0808EFF4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808EFF8
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808EFF8
	adds r0, r6, #0
	bl sub_0803DBC8
	b _0808F0DE
	.align 2, 0
_0808EFF0: .4byte gKirbys
_0808EFF4: .4byte gUnk_03000510
_0808EFF8:
	ldrh r1, [r4, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r3, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r3, #0x44]
	str r0, [r4, #0x38]
	adds r2, r3, #0
	adds r2, #0x60
	ldrh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x5a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0808F0B8
	ldr r1, _0808F098 @ =gKirbys
	ldr r0, _0808F09C @ =gUnk_0203AD3C
	ldrb r5, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r2, [r2]
	cmp r0, r2
	bne _0808F08A
	ldrb r0, [r3]
	cmp r0, #0
	bne _0808F04E
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r5
	bne _0808F08A
_0808F04E:
	ldr r1, _0808F0A0 @ =gUnk_08D60FA4
	ldr r5, _0808F0A4 @ =gSongTable
	ldr r2, _0808F0A8 @ =0x0000107C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0808F072
	ldr r7, _0808F0AC @ =0x00001078
	adds r0, r5, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0808F08A
_0808F072:
	cmp r3, #0
	beq _0808F084
	ldr r0, _0808F0B0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0808F08A
_0808F084:
	ldr r0, _0808F0B4 @ =0x0000020F
	bl m4aSongNumStart
_0808F08A:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _0808F0DE
	.align 2, 0
_0808F098: .4byte gKirbys
_0808F09C: .4byte gUnk_0203AD3C
_0808F0A0: .4byte gUnk_08D60FA4
_0808F0A4: .4byte gSongTable
_0808F0A8: .4byte 0x0000107C
_0808F0AC: .4byte 0x00001078
_0808F0B0: .4byte gUnk_0203AD10
_0808F0B4: .4byte 0x0000020F
_0808F0B8:
	lsls r0, r1, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x5b
	bne _0808F0D8
	ldrh r0, [r3, #0x24]
	strh r0, [r4, #0x20]
	ldr r2, [r4, #0x14]
	ldr r0, _0808F0E4 @ =0xFFFFCFFF
	ands r2, r0
	str r2, [r4, #0x14]
	ldr r0, [r3, #0x18]
	movs r1, #0xc0
	lsls r1, r1, #6
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #0x14]
_0808F0D8:
	adds r0, r4, #0
	bl sub_0806FAC8
_0808F0DE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F0E4: .4byte 0xFFFFCFFF

	thumb_func_start sub_0808F0E8
sub_0808F0E8: @ 0x0808F0E8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808F118 @ =sub_0808F1C8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808F11C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808F120
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0808F128
	.align 2, 0
_0808F118: .4byte sub_0808F1C8
_0808F11C: .4byte sub_0803DCCC
_0808F120:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0808F128:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0808F15A
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_0808F15A:
	ldr r0, _0808F1BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	adds r0, r6, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808F17E
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808F17E:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r0, _0808F1C0 @ =0x06010600
	adds r2, r2, r0
	ldr r3, _0808F1C4 @ =0x00000117
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0808F1BC: .4byte gUnk_03000510
_0808F1C0: .4byte 0x06010600
_0808F1C4: .4byte 0x00000117

	thumb_func_start sub_0808F1C8
sub_0808F1C8: @ 0x0808F1C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _0808F1F0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808F1F4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808F1FC
	.align 2, 0
_0808F1F0: .4byte gCurTask
_0808F1F4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808F1FC:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	str r0, [sp]
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0808F216
	ldr r0, [r2]
	bl TaskDestroy
	b _0808F762
_0808F216:
	ldr r0, _0808F288 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r1, [sp]
	adds r1, #0xd4
	mov r8, r1
	cmp r0, #0
	beq _0808F260
	ldr r5, _0808F28C @ =gCurLevelInfo
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0808F290 @ =gUnk_02026D50
_0808F22E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808F258
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808F272
_0808F258:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0808F22E
_0808F260:
	movs r0, #1
	cmp r0, #0
	beq _0808F272
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808F272:
	mov r3, r8
	ldrh r0, [r3]
	cmp r0, #0x34
	beq _0808F294
	ldrh r1, [r7, #6]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0808F762
	.align 2, 0
_0808F288: .4byte gUnk_0203AD44
_0808F28C: .4byte gCurLevelInfo
_0808F290: .4byte gUnk_02026D50
_0808F294:
	movs r4, #0
	ldr r0, [r7, #0x44]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0x5a
	beq _0808F2AE
	ldr r6, _0808F310 @ =0x00000103
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0808F2BC
_0808F2AE:
	ldrh r1, [r7, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	movs r4, #1
_0808F2BC:
	cmp r4, #0
	beq _0808F2C2
	b _0808F762
_0808F2C2:
	adds r3, r2, #0
	cmp r3, #0
	beq _0808F318
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808F2DE
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0808F2DE
	str r4, [r7, #0x44]
	movs r3, #0
_0808F2DE:
	cmp r3, #0
	beq _0808F318
	ldr r0, _0808F314 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808F388
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808F388
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0808F762
	.align 2, 0
_0808F310: .4byte 0x00000103
_0808F314: .4byte gUnk_03000510
_0808F318:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0808F380 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808F35A
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808F35A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808F35A
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808F35A
	movs r3, #4
_0808F35A:
	ldr r0, _0808F384 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808F388
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808F388
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808F762
	.align 2, 0
_0808F380: .4byte gKirbys
_0808F384: .4byte gUnk_03000510
_0808F388:
	ldrh r1, [r7, #6]
	movs r0, #4
	orrs r1, r0
	strh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0808F39E
	b _0808F762
_0808F39E:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _0808F3B4
	adds r1, r7, #0
	adds r1, #0xc
	ldr r0, [r7, #0x14]
	orrs r0, r2
	str r0, [r1, #8]
	mov sb, r1
	b _0808F3C2
_0808F3B4:
	adds r0, r7, #0
	adds r0, #0xc
	ldr r1, [r7, #0x14]
	ldr r2, _0808F440 @ =0xFFFFFBFF
	ands r1, r2
	str r1, [r0, #8]
	mov sb, r0
_0808F3C2:
	ldrh r5, [r7, #6]
	movs r0, #8
	ands r0, r5
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r4, r7, #0
	adds r4, #0x28
	cmp r3, #0
	bne _0808F45C
	adds r0, r7, #0
	adds r0, #0x27
	adds r2, r7, #0
	adds r2, #0x26
	ldrb r1, [r0]
	adds r6, r0, #0
	ldrb r2, [r2]
	cmp r1, r2
	bne _0808F3EE
	ldrh r0, [r7, #0x24]
	ldrh r1, [r7, #0x18]
	cmp r0, r1
	beq _0808F404
_0808F3EE:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	beq _0808F404
	strb r3, [r7, #1]
	strh r3, [r7, #2]
	ldr r0, _0808F444 @ =0x0000FFFB
	ands r0, r5
	strh r0, [r7, #6]
_0808F404:
	mov r0, sb
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0808F448
	ldrh r0, [r7, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r7, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _0808F45C
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808F45C
	movs r0, #0xff
	strb r0, [r6]
	ldrh r1, [r7, #6]
	ldr r0, _0808F444 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r7, #6]
	strb r3, [r7, #1]
	strh r2, [r7, #2]
	mov r0, sb
	bl sub_08155128
	b _0808F45C
	.align 2, 0
_0808F440: .4byte 0xFFFFFBFF
_0808F444: .4byte 0x0000FFFB
_0808F448:
	ldrb r1, [r4]
	ldrh r0, [r7, #2]
	adds r0, r0, r1
	strh r0, [r7, #2]
	lsrs r0, r0, #4
	strb r0, [r7, #1]
	ldrh r1, [r7, #6]
	ldr r0, _0808F570 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r7, #6]
_0808F45C:
	ldr r1, [r7, #0x34]
	asrs r1, r1, #8
	ldr r3, _0808F574 @ =gUnk_0203AD3C
	mov sl, r3
	ldrb r0, [r3]
	movs r5, #0xcd
	lsls r5, r5, #3
	mov ip, r5
	mov r6, ip
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r3, _0808F578 @ =gCurLevelInfo+0xC
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r7, #0
	adds r3, #0x40
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	movs r5, #0
	strh r0, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	mov r6, sl
	ldrb r0, [r6]
	mov r6, ip
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r2, _0808F57C @ =gCurLevelInfo+0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r2, r7, #0
	adds r2, #0x41
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r0, r0, r1
	strh r0, [r7, #0x1e]
	ldrb r0, [r4]
	cmp r0, #0
	beq _0808F4B8
	strb r5, [r3]
	strb r5, [r2]
_0808F4B8:
	ldr r4, _0808F580 @ =gRngVal
	ldr r0, [r4]
	ldr r3, _0808F584 @ =0x00196225
	mov r8, r3
	mov r2, r8
	muls r2, r0, r2
	ldr r6, _0808F588 @ =0x3C6EF35F
	adds r2, r2, r6
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r5, #0x3f
	ands r1, r5
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [sp]
	ldr r3, [r1, #0x40]
	adds r3, r3, r0
	str r3, [r7, #0x34]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	str r0, [r4]
	lsrs r0, r0, #0x10
	ands r0, r5
	movs r1, #0x24
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r5, [sp]
	ldr r2, [r5, #0x44]
	adds r2, r2, r1
	str r2, [r7, #0x38]
	asrs r3, r3, #8
	mov r6, sl
	ldrb r0, [r6]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r5, _0808F578 @ =gCurLevelInfo+0xC
	adds r0, r0, r5
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r3, r0
	strh r3, [r7, #0x1c]
	asrs r2, r2, #8
	ldrb r0, [r6]
	mov r6, ip
	muls r6, r0, r6
	adds r0, r6, #0
	ldr r1, _0808F57C @ =gCurLevelInfo+0x10
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r2, r0
	strh r4, [r7, #0x1e]
	ldrh r5, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0808F59A
	ldr r2, _0808F58C @ =gKirbys
	mov r6, sl
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808F59A
	ldr r1, _0808F590 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r4, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _0808F594
	mov r0, sb
	bl sub_081564D8
	b _0808F59A
	.align 2, 0
_0808F570: .4byte 0x0000FFFD
_0808F574: .4byte gUnk_0203AD3C
_0808F578: .4byte gCurLevelInfo+0xC
_0808F57C: .4byte gCurLevelInfo+0x10
_0808F580: .4byte gRngVal
_0808F584: .4byte 0x00196225
_0808F588: .4byte 0x3C6EF35F
_0808F58C: .4byte gKirbys
_0808F590: .4byte gUnk_0203AD18
_0808F594:
	mov r0, sb
	bl sub_0815604C
_0808F59A:
	ldr r6, _0808F658 @ =gRngVal
	ldr r0, [r6]
	ldr r4, _0808F65C @ =0x00196225
	adds r2, r0, #0
	muls r2, r4, r2
	ldr r3, _0808F660 @ =0x3C6EF35F
	adds r2, r2, r3
	str r2, [r6]
	lsrs r1, r2, #0x10
	movs r0, #0x1f
	ands r1, r0
	movs r0, #0x10
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [sp]
	ldr r5, [r1, #0x40]
	adds r5, r5, r0
	str r5, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r1, r0
	movs r2, #0x3f
	ands r0, r2
	adds r1, r1, r0
	movs r0, #0x24
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r2, [sp]
	ldr r3, [r2, #0x44]
	adds r3, r3, r0
	str r3, [r7, #0x38]
	asrs r5, r5, #8
	ldr r2, _0808F664 @ =gCurLevelInfo
	ldr r6, _0808F668 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r5, r5, r0
	strh r5, [r7, #0x1c]
	asrs r3, r3, #8
	ldrb r0, [r6]
	muls r0, r4, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r3, r0
	strh r3, [r7, #0x1e]
	ldrh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _0808F67A
	ldr r2, _0808F66C @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808F67A
	ldr r1, _0808F670 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r5, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _0808F674
	mov r0, sb
	bl sub_081564D8
	b _0808F67A
	.align 2, 0
_0808F658: .4byte gRngVal
_0808F65C: .4byte 0x00196225
_0808F660: .4byte 0x3C6EF35F
_0808F664: .4byte gCurLevelInfo
_0808F668: .4byte gUnk_0203AD3C
_0808F66C: .4byte gKirbys
_0808F670: .4byte gUnk_0203AD18
_0808F674:
	mov r0, sb
	bl sub_0815604C
_0808F67A:
	ldr r3, _0808F740 @ =gRngVal
	mov r8, r3
	ldr r0, [r3]
	ldr r6, _0808F744 @ =0x00196225
	muls r0, r6, r0
	ldr r5, _0808F748 @ =0x3C6EF35F
	adds r0, r0, r5
	adds r3, r0, #0
	muls r3, r6, r3
	adds r3, r3, r5
	mov r0, r8
	str r3, [r0]
	lsrs r0, r3, #0x10
	movs r1, #0xf
	ands r1, r0
	movs r2, #0x3f
	ands r0, r2
	adds r1, r1, r0
	movs r0, #0x28
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [sp]
	ldr r4, [r1, #0x40]
	adds r4, r4, r0
	str r4, [r7, #0x34]
	adds r0, r3, #0
	muls r0, r6, r0
	adds r0, r0, r5
	mov r2, r8
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0x10
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r5, [sp]
	ldr r3, [r5, #0x44]
	adds r3, r3, r1
	str r3, [r7, #0x38]
	asrs r4, r4, #8
	ldr r2, _0808F74C @ =gCurLevelInfo
	ldr r6, _0808F750 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r5, #0xcd
	lsls r5, r5, #3
	muls r0, r5, r0
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r4, r0
	strh r4, [r7, #0x1c]
	asrs r3, r3, #8
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r3, r0
	strh r3, [r7, #0x1e]
	ldrh r5, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0808F762
	ldr r2, _0808F754 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0808F762
	ldr r1, _0808F758 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r4, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r5
	cmp r0, #0
	beq _0808F75C
	mov r0, sb
	bl sub_081564D8
	b _0808F762
	.align 2, 0
_0808F740: .4byte gRngVal
_0808F744: .4byte 0x00196225
_0808F748: .4byte 0x3C6EF35F
_0808F74C: .4byte gCurLevelInfo
_0808F750: .4byte gUnk_0203AD3C
_0808F754: .4byte gKirbys
_0808F758: .4byte gUnk_0203AD18
_0808F75C:
	mov r0, sb
	bl sub_0815604C
_0808F762:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0808F774
sub_0808F774: @ 0x0808F774
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _0808F7AC @ =sub_0808F8C0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808F7B0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808F7B4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0808F7BC
	.align 2, 0
_0808F7AC: .4byte sub_0808F8C0
_0808F7B0: .4byte sub_0803DCCC
_0808F7B4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0808F7BC:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #0
	mov sl, r0
	movs r0, #3
	strb r0, [r7]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	movs r2, #0
	mov sb, r2
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r4, #0x80
	lsls r4, r4, #7
	adds r1, r4, #0
	orrs r0, r1
	mov r1, sb
	orrs r0, r1
	strh r0, [r7, #6]
	movs r1, #0xc0
	strh r1, [r7, #0x3c]
	movs r1, #0x80
	strh r1, [r7, #0x3e]
	movs r2, #1
	mov ip, r2
	ands r0, r2
	cmp r0, #0
	beq _0808F80C
	mov r4, sl
	strh r4, [r7, #0x3c]
_0808F80C:
	ldr r3, _0808F8AC @ =gRngVal
	ldr r0, [r3]
	ldr r6, _0808F8B0 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _0808F8B4 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r4, #7
	ands r0, r4
	subs r0, #7
	lsls r0, r0, #8
	ldr r1, [r7, #0x34]
	adds r1, r1, r0
	str r1, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r0, #0xb
	lsls r0, r0, #8
	ldr r1, [r7, #0x38]
	adds r1, r1, r0
	str r1, [r7, #0x38]
	ldr r0, _0808F8B8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r3, r8
	adds r3, #0x56
	mov r0, ip
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808F866
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0808F866:
	adds r1, r7, #0
	adds r1, #0xc
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r4, _0808F8BC @ =0x06010400
	adds r2, r2, r4
	movs r3, #0x8c
	lsls r3, r3, #1
	mov r0, sl
	str r0, [sp]
	mov r4, r8
	ldrh r0, [r4, #0x24]
	lsrs r0, r0, #6
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	mov r0, r8
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r7, #0
	adds r1, #0x2b
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808F8AC: .4byte gRngVal
_0808F8B0: .4byte 0x00196225
_0808F8B4: .4byte 0x3C6EF35F
_0808F8B8: .4byte gUnk_03000510
_0808F8BC: .4byte 0x06010400

	thumb_func_start sub_0808F8C0
sub_0808F8C0: @ 0x0808F8C0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0808F8E4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808F8E8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808F8F0
	.align 2, 0
_0808F8E4: .4byte gCurTask
_0808F8E8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808F8F0:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov sb, r0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r3, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0808F914
	ldr r0, [r2]
	bl TaskDestroy
	b _0808FB24
_0808F914:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	beq _0808F93C
	ldr r0, _0808F954 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0808F93C
	ldr r0, _0808F958 @ =0x0000DFFF
	ands r0, r3
	strh r0, [r7, #6]
_0808F93C:
	ldr r0, _0808F95C @ =0x00000103
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0xf
	beq _0808F960
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0808FB24
	.align 2, 0
_0808F954: .4byte gUnk_03000510
_0808F958: .4byte 0x0000DFFF
_0808F95C: .4byte 0x00000103
_0808F960:
	mov r0, sb
	adds r0, #0xd4
	ldrh r1, [r0]
	cmp r1, #0x34
	beq _0808F986
	cmp r1, #0x36
	beq _0808F97E
	cmp r1, #0x64
	beq _0808F97E
	cmp r1, #0x65
	beq _0808F97E
	cmp r1, #0x66
	beq _0808F97E
	cmp r1, #0x5e
	bne _0808F98C
_0808F97E:
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _0808F986
	b _0808FB24
_0808F986:
	movs r0, #8
	strh r0, [r7, #8]
	b _0808FB24
_0808F98C:
	mov r5, sb
	ldr r0, [r5, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0808F99A
	b _0808FB24
_0808F99A:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0808F9A8
	b _0808FB24
_0808F9A8:
	ldr r0, [r7, #0x14]
	ldr r1, _0808FB30 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r7, #0x14]
	ldrh r1, [r7, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #6]
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #0
	beq _0808F9C8
	cmp r0, #2
	beq _0808F9C8
	cmp r0, #4
	bne _0808FA38
_0808F9C8:
	ldr r6, _0808FB34 @ =gRngVal
	ldr r0, [r6]
	ldr r4, _0808FB38 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0808FB3C @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r6]
	lsrs r0, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r1, r0, #0
	ands r1, r5
	movs r5, #7
	mov ip, r5
	ands r0, r5
	adds r1, r1, r0
	movs r0, #0xc
	subs r0, r0, r1
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r6]
	lsrs r0, r2, #0x10
	adds r1, r0, #0
	mov r5, r8
	ands r1, r5
	mov r5, ip
	ands r0, r5
	adds r1, r1, r0
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	ands r1, r5
	movs r2, #3
	ands r0, r2
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x26
	strb r1, [r0]
_0808FA38:
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #0xc
	beq _0808FA4C
	cmp r0, #0xe
	beq _0808FA4C
	cmp r0, #0x10
	beq _0808FA4C
	cmp r0, #0x20
	bne _0808FABE
_0808FA4C:
	ldr r6, _0808FB34 @ =gRngVal
	ldr r0, [r6]
	ldr r4, _0808FB38 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0808FB3C @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r6]
	lsrs r0, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r1, r0, #0
	ands r1, r5
	movs r5, #7
	mov ip, r5
	ands r0, r5
	adds r1, r1, r0
	movs r0, #0xc
	subs r0, r0, r1
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r6]
	lsrs r0, r2, #0x10
	adds r1, r0, #0
	mov r5, r8
	ands r1, r5
	mov r5, ip
	ands r0, r5
	adds r1, r1, r0
	movs r0, #2
	rsbs r0, r0, #0
	subs r0, r0, r1
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	ands r1, r5
	movs r2, #3
	ands r0, r2
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0x26
	strb r1, [r0]
_0808FABE:
	ldrh r1, [r7, #4]
	subs r0, r1, #6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _0808FAFA
	adds r0, r1, #0
	subs r0, #0x12
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xd
	bls _0808FAFA
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x21
	bgt _0808FAFA
	movs r2, #0x3c
	ldrsh r1, [r7, r2]
	mov r5, sb
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r7, r0]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0808FAFA:
	ldr r0, _0808FB40 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _0808FB18
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_0808FB18:
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #0x2d
	ble _0808FB24
	movs r0, #0
	strh r0, [r7, #4]
_0808FB24:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FB30: .4byte 0xFFF7FFFF
_0808FB34: .4byte gRngVal
_0808FB38: .4byte 0x00196225
_0808FB3C: .4byte 0x3C6EF35F
_0808FB40: .4byte gUnk_03000510

	thumb_func_start sub_0808FB44
sub_0808FB44: @ 0x0808FB44
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808FB74 @ =sub_0808FC1C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808FB78 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808FB7C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0808FB84
	.align 2, 0
_0808FB74: .4byte sub_0808FC1C
_0808FB78: .4byte sub_0803DCCC
_0808FB7C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0808FB84:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x38]
	ldr r1, _0808FC10 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	ldr r0, _0808FC14 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808FBD6
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808FBD6:
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r0, _0808FC18 @ =0x06010600
	adds r2, r2, r0
	movs r3, #0xc2
	lsls r3, r3, #1
	movs r0, #6
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x20]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0808FC10: .4byte 0xFFFFF800
_0808FC14: .4byte gUnk_03000510
_0808FC18: .4byte 0x06010600

	thumb_func_start sub_0808FC1C
sub_0808FC1C: @ 0x0808FC1C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0808FC38 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808FC3C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808FC44
	.align 2, 0
_0808FC38: .4byte gCurTask
_0808FC3C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808FC44:
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0808FC68
	ldr r0, [r2]
	bl TaskDestroy
	b _0808FE06
_0808FC68:
	ldr r0, _0808FCD0 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r1, #0
	beq _0808FCAA
	ldr r6, _0808FCD4 @ =gCurLevelInfo
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r5, _0808FCD8 @ =gUnk_02026D50
_0808FC78:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0808FCA2
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0808FCBC
_0808FCA2:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808FC78
_0808FCAA:
	movs r0, #1
	cmp r0, #0
	beq _0808FCBC
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808FCBC:
	ldr r0, _0808FCDC @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _0808FCE0
	ldrh r1, [r4, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	b _0808FDD4
	.align 2, 0
_0808FCD0: .4byte gUnk_0203AD44
_0808FCD4: .4byte gCurLevelInfo
_0808FCD8: .4byte gUnk_02026D50
_0808FCDC: .4byte 0x00000103
_0808FCE0:
	ldr r3, [r4, #0x44]
	cmp r3, #0
	beq _0808FD34
	ldrb r0, [r3]
	cmp r0, #0
	beq _0808FCFE
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0808FCFE
	movs r0, #0
	str r0, [r4, #0x44]
	movs r3, #0
_0808FCFE:
	cmp r3, #0
	beq _0808FD34
	ldr r0, _0808FD30 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808FDA4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808FDA4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0808FE06
	.align 2, 0
_0808FD30: .4byte gUnk_03000510
_0808FD34:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _0808FD9C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0808FD76
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808FD76
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808FD76
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0808FD76
	movs r3, #4
_0808FD76:
	ldr r0, _0808FDA0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808FDA4
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0808FDA4
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0808FE06
	.align 2, 0
_0808FD9C: .4byte gKirbys
_0808FDA0: .4byte gUnk_03000510
_0808FDA4:
	ldrh r0, [r4, #6]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0808FDDA
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #7
	strb r0, [r1]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0808FDDA
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
_0808FDD4:
	orrs r0, r1
	strh r0, [r4, #6]
	b _0808FE06
_0808FDDA:
	ldrh r0, [r4, #0x3e]
	subs r0, #0x20
	strh r0, [r4, #0x3e]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0808FE00
	movs r6, #0x3c
	ldrsh r1, [r4, r6]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r7, #0x3e
	ldrsh r1, [r4, r7]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_0808FE00:
	adds r0, r4, #0
	bl sub_0806FAC8
_0808FE06:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0808FE0C
sub_0808FE0C: @ 0x0808FE0C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0808FE3C @ =sub_0808FF8C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0808FE40 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808FE44
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808FE4C
	.align 2, 0
_0808FE3C: .4byte sub_0808FF8C
_0808FE40: .4byte sub_0803DCCC
_0808FE44:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808FE4C:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r2, r5, #0
	adds r2, #0x60
	ldrh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x38]
	ldr r1, _0808FE98 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x38]
	movs r0, #0x80
	strh r0, [r4, #0x3e]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _0808FEA4
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x34]
	ldr r2, _0808FE9C @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r4, #0x34]
	ldr r0, _0808FEA0 @ =0x0000FF40
	b _0808FEB0
	.align 2, 0
_0808FE98: .4byte 0xFFFFFE00
_0808FE9C: .4byte 0xFFFFFA00
_0808FEA0: .4byte 0x0000FF40
_0808FEA4:
	ldr r0, [r4, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0xc0
_0808FEB0:
	strh r0, [r4, #0x3c]
	ldr r0, _0808FF6C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r6, r5, #0
	adds r6, #0x56
	movs r0, #1
	ldrb r1, [r6]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0808FED6
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0808FED6:
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _0808FF70 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xc2
	lsls r3, r3, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldr r1, _0808FF74 @ =gKirbys
	ldr r0, _0808FF78 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _0808FF64
	ldrb r0, [r5]
	cmp r0, #0
	bne _0808FF26
	ldrb r0, [r6]
	cmp r0, r2
	bne _0808FF64
_0808FF26:
	ldr r1, _0808FF7C @ =gUnk_08D60FA4
	ldr r4, _0808FF80 @ =gSongTable
	ldr r2, _0808FF84 @ =0x0000050C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0808FF4C
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0808FF64
_0808FF4C:
	cmp r3, #0
	beq _0808FF5E
	ldr r0, _0808FF88 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0808FF64
_0808FF5E:
	movs r0, #0xa1
	bl m4aSongNumStart
_0808FF64:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0808FF6C: .4byte gUnk_03000510
_0808FF70: .4byte 0x06010400
_0808FF74: .4byte gKirbys
_0808FF78: .4byte gUnk_0203AD3C
_0808FF7C: .4byte gUnk_08D60FA4
_0808FF80: .4byte gSongTable
_0808FF84: .4byte 0x0000050C
_0808FF88: .4byte gUnk_0203AD10

	thumb_func_start sub_0808FF8C
sub_0808FF8C: @ 0x0808FF8C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0808FFA8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0808FFAC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0808FFB4
	.align 2, 0
_0808FFA8: .4byte gCurTask
_0808FFAC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0808FFB4:
	adds r3, r0, #0
	ldr r0, [r3, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r4, [r0]
	adds r0, r3, #0
	adds r0, #0x42
	strh r4, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0808FFD8
	ldr r0, [r2]
	bl TaskDestroy
	b _08090192
_0808FFD8:
	ldr r0, _08090040 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r1, #0
	beq _0809001A
	ldr r6, _08090044 @ =gCurLevelInfo
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	ldr r5, _08090048 @ =gUnk_02026D50
_0808FFE8:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08090012
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809002C
_08090012:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0808FFE8
_0809001A:
	movs r0, #1
	cmp r0, #0
	beq _0809002C
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_0809002C:
	ldr r0, _0809004C @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _08090050
	ldrh r1, [r3, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	b _0809014C
	.align 2, 0
_08090040: .4byte gUnk_0203AD44
_08090044: .4byte gCurLevelInfo
_08090048: .4byte gUnk_02026D50
_0809004C: .4byte 0x00000103
_08090050:
	ldr r4, [r3, #0x44]
	cmp r4, #0
	beq _080900A4
	ldrb r0, [r4]
	cmp r0, #0
	beq _0809006E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0809006E
	movs r0, #0
	str r0, [r3, #0x44]
	movs r4, #0
_0809006E:
	cmp r4, #0
	beq _080900A4
	ldr r0, _080900A0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090114
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090114
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08090192
	.align 2, 0
_080900A0: .4byte gUnk_03000510
_080900A4:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _0809010C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080900E6
	movs r4, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080900E6
	movs r4, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080900E6
	movs r4, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080900E6
	movs r4, #4
_080900E6:
	ldr r0, _08090110 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090114
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090114
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08090192
	.align 2, 0
_0809010C: .4byte gKirbys
_08090110: .4byte gUnk_03000510
_08090114:
	ldrh r0, [r3, #6]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08090152
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _08090136
	adds r1, r3, #0
	adds r1, #0x26
	movs r0, #1
	strb r0, [r1]
_08090136:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _08090152
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
_0809014C:
	orrs r0, r1
	strh r0, [r3, #6]
	b _08090192
_08090152:
	ldrh r1, [r3, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08090162
	ldrh r0, [r3, #0x3c]
	adds r0, #3
	b _08090166
_08090162:
	ldrh r0, [r3, #0x3c]
	subs r0, #3
_08090166:
	strh r0, [r3, #0x3c]
	ldrh r0, [r3, #0x3e]
	subs r0, #2
	strh r0, [r3, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809018C
	movs r6, #0x3c
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r7, #0x3e
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_0809018C:
	adds r0, r3, #0
	bl sub_0806FAC8
_08090192:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08090198
sub_08090198: @ 0x08090198
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080901C8 @ =sub_0809030C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080901CC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080901D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080901D8
	.align 2, 0
_080901C8: .4byte sub_0809030C
_080901CC: .4byte sub_0803DCCC
_080901D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080901D8:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r2, r5, #0
	adds r2, #0x60
	ldrh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x38]
	ldr r1, _08090220 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x38]
	movs r0, #0x80
	strh r0, [r4, #0x3e]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08090228
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x34]
	ldr r2, _08090224 @ =0xFFFFFF00
	adds r0, r0, r2
	b _08090230
	.align 2, 0
_08090220: .4byte 0xFFFFFE00
_08090224: .4byte 0xFFFFFF00
_08090228:
	ldr r0, [r4, #0x34]
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
_08090230:
	str r0, [r4, #0x34]
	ldr r0, _080902EC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r6, r5, #0
	adds r6, #0x56
	movs r0, #1
	ldrb r1, [r6]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090256
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08090256:
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _080902F0 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xc2
	lsls r3, r3, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldr r1, _080902F4 @ =gKirbys
	ldr r0, _080902F8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080902E4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080902A6
	ldrb r0, [r6]
	cmp r0, r2
	bne _080902E4
_080902A6:
	ldr r1, _080902FC @ =gUnk_08D60FA4
	ldr r4, _08090300 @ =gSongTable
	ldr r2, _08090304 @ =0x0000050C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080902CC
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080902E4
_080902CC:
	cmp r3, #0
	beq _080902DE
	ldr r0, _08090308 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080902E4
_080902DE:
	movs r0, #0xa1
	bl m4aSongNumStart
_080902E4:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080902EC: .4byte gUnk_03000510
_080902F0: .4byte 0x06010400
_080902F4: .4byte gKirbys
_080902F8: .4byte gUnk_0203AD3C
_080902FC: .4byte gUnk_08D60FA4
_08090300: .4byte gSongTable
_08090304: .4byte 0x0000050C
_08090308: .4byte gUnk_0203AD10

	thumb_func_start sub_0809030C
sub_0809030C: @ 0x0809030C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08090328 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809032C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08090334
	.align 2, 0
_08090328: .4byte gCurTask
_0809032C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08090334:
	adds r3, r0, #0
	ldr r0, [r3, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r4, [r0]
	adds r0, r3, #0
	adds r0, #0x42
	strh r4, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08090358
	ldr r0, [r2]
	bl TaskDestroy
	b _08090512
_08090358:
	ldr r0, _080903C0 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r1, #0
	beq _0809039A
	ldr r6, _080903C4 @ =gCurLevelInfo
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	ldr r5, _080903C8 @ =gUnk_02026D50
_08090368:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08090392
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080903AC
_08090392:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08090368
_0809039A:
	movs r0, #1
	cmp r0, #0
	beq _080903AC
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080903AC:
	ldr r0, _080903CC @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _080903D0
	ldrh r1, [r3, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	b _080904CC
	.align 2, 0
_080903C0: .4byte gUnk_0203AD44
_080903C4: .4byte gCurLevelInfo
_080903C8: .4byte gUnk_02026D50
_080903CC: .4byte 0x00000103
_080903D0:
	ldr r4, [r3, #0x44]
	cmp r4, #0
	beq _08090424
	ldrb r0, [r4]
	cmp r0, #0
	beq _080903EE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080903EE
	movs r0, #0
	str r0, [r3, #0x44]
	movs r4, #0
_080903EE:
	cmp r4, #0
	beq _08090424
	ldr r0, _08090420 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090494
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090494
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08090512
	.align 2, 0
_08090420: .4byte gUnk_03000510
_08090424:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _0809048C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08090466
	movs r4, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08090466
	movs r4, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08090466
	movs r4, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08090466
	movs r4, #4
_08090466:
	ldr r0, _08090490 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090494
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090494
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08090512
	.align 2, 0
_0809048C: .4byte gKirbys
_08090490: .4byte gUnk_03000510
_08090494:
	ldrh r0, [r3, #6]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080904D2
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080904B6
	adds r1, r3, #0
	adds r1, #0x26
	movs r0, #1
	strb r0, [r1]
_080904B6:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080904D2
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
_080904CC:
	orrs r0, r1
	strh r0, [r3, #6]
	b _08090512
_080904D2:
	ldrh r1, [r3, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080904E2
	ldrh r0, [r3, #0x3c]
	adds r0, #1
	b _080904E6
_080904E2:
	ldrh r0, [r3, #0x3c]
	subs r0, #1
_080904E6:
	strh r0, [r3, #0x3c]
	ldrh r0, [r3, #0x3e]
	subs r0, #2
	strh r0, [r3, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809050C
	movs r6, #0x3c
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r7, #0x3e
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_0809050C:
	adds r0, r3, #0
	bl sub_0806FAC8
_08090512:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08090518
sub_08090518: @ 0x08090518
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08090548 @ =sub_08090698
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809054C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08090550
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08090558
	.align 2, 0
_08090548: .4byte sub_08090698
_0809054C: .4byte sub_0803DCCC
_08090550:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08090558:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r2, r5, #0
	adds r2, #0x60
	ldrh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x38]
	ldr r1, _080905A4 @ =0xFFFFFE00
	adds r0, r0, r1
	str r0, [r4, #0x38]
	movs r0, #0x80
	strh r0, [r4, #0x3e]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _080905B0
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x34]
	ldr r2, _080905A8 @ =0xFFFFFA00
	adds r0, r0, r2
	str r0, [r4, #0x34]
	ldr r0, _080905AC @ =0x0000FFC0
	b _080905BC
	.align 2, 0
_080905A4: .4byte 0xFFFFFE00
_080905A8: .4byte 0xFFFFFA00
_080905AC: .4byte 0x0000FFC0
_080905B0:
	ldr r0, [r4, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x40
_080905BC:
	strh r0, [r4, #0x3c]
	ldr r0, _08090678 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r6, r5, #0
	adds r6, #0x56
	movs r0, #1
	ldrb r1, [r6]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080905E2
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080905E2:
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _0809067C @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xc2
	lsls r3, r3, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldr r1, _08090680 @ =gKirbys
	ldr r0, _08090684 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _08090670
	ldrb r0, [r5]
	cmp r0, #0
	bne _08090632
	ldrb r0, [r6]
	cmp r0, r2
	bne _08090670
_08090632:
	ldr r1, _08090688 @ =gUnk_08D60FA4
	ldr r4, _0809068C @ =gSongTable
	ldr r2, _08090690 @ =0x0000050C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08090658
	movs r1, #0xa1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08090670
_08090658:
	cmp r3, #0
	beq _0809066A
	ldr r0, _08090694 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08090670
_0809066A:
	movs r0, #0xa1
	bl m4aSongNumStart
_08090670:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090678: .4byte gUnk_03000510
_0809067C: .4byte 0x06010400
_08090680: .4byte gKirbys
_08090684: .4byte gUnk_0203AD3C
_08090688: .4byte gUnk_08D60FA4
_0809068C: .4byte gSongTable
_08090690: .4byte 0x0000050C
_08090694: .4byte gUnk_0203AD10

	thumb_func_start sub_08090698
sub_08090698: @ 0x08090698
	push {r4, r5, r6, r7, lr}
	ldr r2, _080906B4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080906B8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080906C0
	.align 2, 0
_080906B4: .4byte gCurTask
_080906B8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080906C0:
	adds r3, r0, #0
	ldr r0, [r3, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r4, [r0]
	adds r0, r3, #0
	adds r0, #0x42
	strh r4, [r0]
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080906E4
	ldr r0, [r2]
	bl TaskDestroy
	b _0809089E
_080906E4:
	ldr r0, _0809074C @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r1, #0
	beq _08090726
	ldr r6, _08090750 @ =gCurLevelInfo
	lsls r0, r4, #0x10
	lsrs r4, r0, #0x10
	ldr r5, _08090754 @ =gUnk_02026D50
_080906F4:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _0809071E
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08090738
_0809071E:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080906F4
_08090726:
	movs r0, #1
	cmp r0, #0
	beq _08090738
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08090738:
	ldr r0, _08090758 @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0xb
	beq _0809075C
	ldrh r1, [r3, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	b _08090858
	.align 2, 0
_0809074C: .4byte gUnk_0203AD44
_08090750: .4byte gCurLevelInfo
_08090754: .4byte gUnk_02026D50
_08090758: .4byte 0x00000103
_0809075C:
	ldr r4, [r3, #0x44]
	cmp r4, #0
	beq _080907B0
	ldrb r0, [r4]
	cmp r0, #0
	beq _0809077A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0809077A
	movs r0, #0
	str r0, [r3, #0x44]
	movs r4, #0
_0809077A:
	cmp r4, #0
	beq _080907B0
	ldr r0, _080907AC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090820
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090820
	adds r0, r3, #0
	bl sub_0803DBC8
	b _0809089E
	.align 2, 0
_080907AC: .4byte gUnk_03000510
_080907B0:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08090818 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080907F2
	movs r4, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080907F2
	movs r4, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080907F2
	movs r4, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080907F2
	movs r4, #4
_080907F2:
	ldr r0, _0809081C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090820
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090820
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0809089E
	.align 2, 0
_08090818: .4byte gKirbys
_0809081C: .4byte gUnk_03000510
_08090820:
	ldrh r0, [r3, #6]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0809085E
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _08090842
	adds r1, r3, #0
	adds r1, #0x26
	movs r0, #1
	strb r0, [r1]
_08090842:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0809085E
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
_08090858:
	orrs r0, r1
	strh r0, [r3, #6]
	b _0809089E
_0809085E:
	ldrh r1, [r3, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809086E
	ldrh r0, [r3, #0x3c]
	adds r0, #1
	b _08090872
_0809086E:
	ldrh r0, [r3, #0x3c]
	subs r0, #1
_08090872:
	strh r0, [r3, #0x3c]
	ldrh r0, [r3, #0x3e]
	subs r0, #2
	strh r0, [r3, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08090898
	movs r6, #0x3c
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r7, #0x3e
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08090898:
	adds r0, r3, #0
	bl sub_0806FAC8
_0809089E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080908A4
sub_080908A4: @ 0x080908A4
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080908D4 @ =sub_08090968
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080908D8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080908DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080908E4
	.align 2, 0
_080908D4: .4byte sub_08090968
_080908D8: .4byte sub_0803DCCC
_080908DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080908E4:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809091A
	ldrh r0, [r5, #6]
	orrs r0, r1
	strh r0, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	b _0809091E
_0809091A:
	movs r0, #0xfd
	lsls r0, r0, #8
_0809091E:
	strh r0, [r5, #0x3c]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08090936
	ldrh r1, [r5, #6]
	movs r0, #2
	orrs r0, r1
	strh r0, [r5, #6]
_08090936:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08090960 @ =0x06012000
	ldr r3, _08090964 @ =0x00000293
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08090960: .4byte 0x06012000
_08090964: .4byte 0x00000293

	thumb_func_start sub_08090968
sub_08090968: @ 0x08090968
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0809098C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08090990
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08090998
	.align 2, 0
_0809098C: .4byte gCurTask
_08090990:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08090998:
	adds r4, r0, #0
	ldr r3, [r4, #0x44]
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080909BE
	ldr r0, [r5]
	bl TaskDestroy
	b _08090B96
_080909BE:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08090A38
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _080909DC
	cmp r0, #0x6b
	beq _080909DC
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08090B96
_080909DC:
	ldrh r2, [r4, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08090A38
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080909F6
	b _08090B96
_080909F6:
	ldr r0, [r3, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r3, #0x44]
	str r0, [r4, #0x38]
	ldr r1, [r3, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08090A14
	movs r1, #0
	orrs r0, r2
	strh r0, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08090A1E
_08090A14:
	ldr r0, _08090A30 @ =0x0000FFFE
	ands r0, r2
	strh r0, [r4, #6]
	movs r0, #0xfd
	lsls r0, r0, #8
_08090A1E:
	strh r0, [r4, #0x3c]
	strh r1, [r4, #0x3e]
	ldrh r0, [r4, #6]
	movs r1, #4
	orrs r1, r0
	ldr r0, _08090A34 @ =0x0000FFFD
	ands r1, r0
	strh r1, [r4, #6]
	b _08090B96
	.align 2, 0
_08090A30: .4byte 0x0000FFFE
_08090A34: .4byte 0x0000FFFD
_08090A38:
	ldr r3, [r4, #0x44]
	cmp r3, #0
	beq _08090A8C
	ldrb r0, [r3]
	cmp r0, #0
	beq _08090A56
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08090A56
	movs r0, #0
	str r0, [r4, #0x44]
	movs r3, #0
_08090A56:
	cmp r3, #0
	beq _08090A8C
	ldr r0, _08090A88 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090AFC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090AFC
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08090B96
	.align 2, 0
_08090A88: .4byte gUnk_03000510
_08090A8C:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08090AF4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08090ACE
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08090ACE
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08090ACE
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08090ACE
	movs r3, #4
_08090ACE:
	ldr r0, _08090AF8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090AFC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090AFC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08090B96
	.align 2, 0
_08090AF4: .4byte gKirbys
_08090AF8: .4byte gUnk_03000510
_08090AFC:
	ldr r0, _08090BA0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r4, #0x3e]
	mov r8, r7
	ldrb r1, [r4, #1]
	mov ip, r1
	cmp r0, #0
	beq _08090B48
	ldr r6, _08090BA4 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08090BA8 @ =gUnk_02026D50
_08090B16:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08090B40
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08090B5A
_08090B40:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08090B16
_08090B48:
	movs r0, #1
	cmp r0, #0
	beq _08090B5A
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08090B5A:
	mov r0, r8
	adds r0, #0x20
	strh r0, [r4, #0x3e]
	mov r6, ip
	lsls r0, r6, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bne _08090B70
	adds r0, r4, #0
	bl sub_0808A0F8
_08090B70:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08090B90
	movs r7, #0x3c
	ldrsh r1, [r4, r7]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08090B90:
	adds r0, r4, #0
	bl sub_0806FAC8
_08090B96:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090BA0: .4byte gUnk_0203AD44
_08090BA4: .4byte gCurLevelInfo
_08090BA8: .4byte gUnk_02026D50

	thumb_func_start sub_08090BAC
sub_08090BAC: @ 0x08090BAC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _08090BDC @ =sub_08090CB8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08090BE0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08090BE4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08090BEC
	.align 2, 0
_08090BDC: .4byte sub_08090CB8
_08090BE0: .4byte sub_0803DCCC
_08090BE4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08090BEC:
	adds r6, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x38]
	str r7, [r6, #0x44]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _08090C5C @ =gRngVal
	ldr r0, [r3]
	ldr r5, _08090C60 @ =0x00196225
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08090C64 @ =0x3C6EF35F
	adds r2, r2, r4
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #0xf
	ands r0, r1
	movs r1, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	adds r0, #8
	lsls r0, r0, #8
	ldr r1, [r6, #0x38]
	adds r1, r1, r0
	str r1, [r6, #0x38]
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08090C68
	ldrh r0, [r6, #6]
	orrs r0, r1
	strh r0, [r6, #6]
	movs r0, #0xfc
	lsls r0, r0, #8
	b _08090C6C
	.align 2, 0
_08090C5C: .4byte gRngVal
_08090C60: .4byte 0x00196225
_08090C64: .4byte 0x3C6EF35F
_08090C68:
	movs r0, #0x80
	lsls r0, r0, #3
_08090C6C:
	strh r0, [r6, #0x3c]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r6, #0x3e]
	adds r0, r7, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08090C86
	movs r0, #0x13
	strb r0, [r6, #1]
_08090C86:
	ldrh r0, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	adds r1, r6, #0
	adds r1, #0xc
	ldr r2, _08090CB0 @ =0x06012000
	ldr r3, _08090CB4 @ =0x00000293
	movs r0, #5
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08090CB0: .4byte 0x06012000
_08090CB4: .4byte 0x00000293

	thumb_func_start sub_08090CB8
sub_08090CB8: @ 0x08090CB8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08090CD8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08090CDC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08090CE4
	.align 2, 0
_08090CD8: .4byte gCurTask
_08090CDC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08090CE4:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r7, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08090D0A
	ldr r0, [r2]
	bl TaskDestroy
	b _08090F5C
_08090D0A:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08090D24
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _08090D24
	cmp r0, #0x6b
	beq _08090D24
	adds r0, r3, #0
	b _08090DC0
_08090D24:
	ldrb r0, [r7, #1]
	adds r5, r0, #0
	cmp r5, #0x11
	bls _08090DCC
	mov r0, ip
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08090D40
	ldrh r1, [r7, #6]
	movs r0, #2
	b _08090DC0
_08090D40:
	mov r1, ip
	ldr r3, [r1, #0x40]
	str r3, [r7, #0x34]
	ldr r5, [r1, #0x44]
	str r5, [r7, #0x38]
	ldr r4, _08090D9C @ =gRngVal
	ldr r0, [r4]
	ldr r2, _08090DA0 @ =0x00196225
	mov r8, r2
	mov r2, r8
	muls r2, r0, r2
	ldr r6, _08090DA4 @ =0x3C6EF35F
	adds r2, r2, r6
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r0, #0xf
	ands r1, r0
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #8
	adds r3, r3, r0
	str r3, [r7, #0x34]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	str r0, [r4]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	adds r0, #8
	lsls r0, r0, #8
	adds r5, r5, r0
	str r5, [r7, #0x38]
	mov r6, ip
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08090DA8
	ldrh r1, [r7, #6]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7, #6]
	movs r0, #0xfc
	lsls r0, r0, #8
	b _08090DB4
	.align 2, 0
_08090D9C: .4byte gRngVal
_08090DA0: .4byte 0x00196225
_08090DA4: .4byte 0x3C6EF35F
_08090DA8:
	ldrh r1, [r7, #6]
	ldr r0, _08090DC8 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
_08090DB4:
	strh r0, [r7, #0x3c]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x3e]
	ldrh r1, [r7, #6]
	movs r0, #4
_08090DC0:
	orrs r0, r1
	strh r0, [r7, #6]
	b _08090F5C
	.align 2, 0
_08090DC8: .4byte 0x0000FFFE
_08090DCC:
	ldr r3, [r7, #0x44]
	cmp r3, #0
	beq _08090E20
	ldrb r0, [r3]
	cmp r0, #0
	beq _08090DEA
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08090DEA
	movs r0, #0
	str r0, [r7, #0x44]
	movs r3, #0
_08090DEA:
	cmp r3, #0
	beq _08090E20
	ldr r0, _08090E1C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090E90
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090E90
	adds r0, r7, #0
	bl sub_0803DBC8
	b _08090F5C
	.align 2, 0
_08090E1C: .4byte gUnk_03000510
_08090E20:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _08090E88 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08090E62
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08090E62
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08090E62
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08090E62
	movs r3, #4
_08090E62:
	ldr r0, _08090E8C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08090E90
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08090E90
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08090F5C
	.align 2, 0
_08090E88: .4byte gKirbys
_08090E8C: .4byte gUnk_03000510
_08090E90:
	ldr r0, _08090F08 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08090ED8
	ldr r1, _08090F0C @ =gCurLevelInfo
	mov r8, r1
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _08090F10 @ =gUnk_02026D50
_08090EA4:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, r8
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _08090ED0
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08090EEA
_08090ED0:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08090EA4
_08090ED8:
	movs r0, #1
	cmp r0, #0
	beq _08090EEA
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_08090EEA:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	ldrh r1, [r7, #6]
	cmp r0, #0xb
	bne _08090F1A
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r7, #0x3e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08090F14
	strh r2, [r7, #0x3c]
	b _08090F1A
	.align 2, 0
_08090F08: .4byte gUnk_0203AD44
_08090F0C: .4byte gCurLevelInfo
_08090F10: .4byte gUnk_02026D50
_08090F14:
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
_08090F1A:
	subs r0, r5, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #6
	bhi _08090F38
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08090F32
	ldrh r0, [r7, #0x3c]
	adds r0, #0x80
	b _08090F36
_08090F32:
	ldrh r0, [r7, #0x3c]
	subs r0, #0x80
_08090F36:
	strh r0, [r7, #0x3c]
_08090F38:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08090F56
	movs r6, #0x3c
	ldrsh r1, [r7, r6]
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r7, r0]
	ldr r0, [r7, #0x38]
	subs r0, r0, r1
	str r0, [r7, #0x38]
_08090F56:
	adds r0, r7, #0
	bl sub_0806FAC8
_08090F5C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08090F68
sub_08090F68: @ 0x08090F68
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08090F98 @ =sub_0809104C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08090F9C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08090FA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08090FA8
	.align 2, 0
_08090F98: .4byte sub_0809104C
_08090F9C: .4byte sub_0803DCCC
_08090FA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08090FA8:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	bne _08090FDA
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_08090FDA:
	ldr r0, [r4, #0x38]
	ldr r1, _0809103C @ =0xFFFFFD00
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, _08091040 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	adds r0, r6, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08091006
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08091006:
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r0, _08091044 @ =0x06010200
	adds r2, r2, r0
	ldr r3, _08091048 @ =0x00000129
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x20]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809103C: .4byte 0xFFFFFD00
_08091040: .4byte gUnk_03000510
_08091044: .4byte 0x06010200
_08091048: .4byte 0x00000129

	thumb_func_start sub_0809104C
sub_0809104C: @ 0x0809104C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08091068 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809106C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08091074
	.align 2, 0
_08091068: .4byte gCurTask
_0809106C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08091074:
	adds r4, r0, #0
	ldr r6, [r4, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08091098
	ldr r0, [r2]
	bl TaskDestroy
	b _08091252
_08091098:
	ldr r0, _08091104 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r1, #0
	beq _080910DE
	ldr r0, _08091108 @ =gCurLevelInfo
	mov ip, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r5, _0809110C @ =gUnk_02026D50
_080910AA:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080910D6
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080910F0
_080910D6:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080910AA
_080910DE:
	movs r0, #1
	cmp r0, #0
	beq _080910F0
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080910F0:
	ldr r0, [r6, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08091110
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	b _08091246
	.align 2, 0
_08091104: .4byte gUnk_0203AD44
_08091108: .4byte gCurLevelInfo
_0809110C: .4byte gUnk_02026D50
_08091110:
	ldr r3, _08091194 @ =0x00000103
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #4
	beq _0809111C
	b _0809123E
_0809111C:
	movs r5, #0
	ldr r0, [r4, #0x44]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0x5a
	beq _08091134
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08091142
_08091134:
	ldrh r1, [r4, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r5, #1
_08091142:
	cmp r5, #0
	beq _08091148
	b _08091252
_08091148:
	adds r3, r2, #0
	cmp r3, #0
	beq _0809119C
	ldrb r0, [r3]
	cmp r0, #0
	beq _08091164
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08091164
	str r5, [r4, #0x44]
	movs r3, #0
_08091164:
	cmp r3, #0
	beq _0809119C
	ldr r0, _08091198 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809120C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809120C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08091252
	.align 2, 0
_08091194: .4byte 0x00000103
_08091198: .4byte gUnk_03000510
_0809119C:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08091204 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080911DE
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080911DE
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080911DE
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080911DE
	movs r3, #4
_080911DE:
	ldr r0, _08091208 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809120C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809120C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08091252
	.align 2, 0
_08091204: .4byte gKirbys
_08091208: .4byte gUnk_03000510
_0809120C:
	ldr r1, _08091220 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #4
	beq _08091224
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	b _08091246
	.align 2, 0
_08091220: .4byte 0x00000103
_08091224:
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _08091238
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	b _08091246
_08091238:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _0809124C
_0809123E:
	ldrh r1, [r4, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
_08091246:
	orrs r0, r1
	strh r0, [r4, #6]
	b _08091252
_0809124C:
	adds r0, r4, #0
	bl sub_0806FAC8
_08091252:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08091258
sub_08091258: @ 0x08091258
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0
	mov sl, r0
	ldr r0, _08091294 @ =sub_08091438
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08091298 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809129C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080912A4
	.align 2, 0
_08091294: .4byte sub_08091438
_08091298: .4byte sub_0803DCCC
_0809129C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080912A4:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r2, r1, #0
	orrs r2, r0
	orrs r2, r3
	strh r2, [r5, #6]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080912F0
	movs r0, #1
	orrs r2, r0
	strh r2, [r5, #6]
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	b _080912F6
_080912F0:
	ldr r0, [r5, #0x34]
	ldr r2, _080913DC @ =0xFFFFFE00
	adds r0, r0, r2
_080912F6:
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x38]
	movs r1, #0x90
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, _080913E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sb, r3
	cmp r2, #0
	beq _08091328
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_08091328:
	ldr r2, [r6, #0x40]
	lsls r2, r2, #8
	lsrs r2, r2, #0x10
	ldr r1, [r6, #0x44]
	asrs r1, r1, #8
	adds r0, r6, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r2, r2, #0x10
	mov ip, r2
	asrs r1, r2, #8
	ldr r4, _080913E4 @ =gCurLevelInfo
	mov r0, sb
	ldrb r0, [r0]
	mov r8, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080913AE
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080913AE
	lsls r2, r7, #0x10
	asrs r1, r2, #8
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080913AE
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080913AE
	ldr r4, _080913E8 @ =gUnk_082D88B8
	mov r0, ip
	asrs r1, r0, #0x14
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	asrs r2, r2, #0x14
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	mov sl, r0
_080913AE:
	movs r0, #2
	mov r1, sl
	ands r1, r0
	cmp r1, #0
	beq _080913F4
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _080913EC @ =0x06012000
	ldr r3, _080913F0 @ =0x000002BD
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	b _08091420
	.align 2, 0
_080913DC: .4byte 0xFFFFFE00
_080913E0: .4byte gUnk_03000510
_080913E4: .4byte gCurLevelInfo
_080913E8: .4byte gUnk_082D88B8
_080913EC: .4byte 0x06012000
_080913F0: .4byte 0x000002BD
_080913F4:
	adds r1, r5, #0
	adds r1, #0xc
	mov r0, sb
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08091430 @ =0x06010400
	adds r2, r2, r0
	ldr r3, _08091434 @ =0x00000129
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	adds r0, r6, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x2b
	strb r0, [r1]
_08091420:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091430: .4byte 0x06010400
_08091434: .4byte 0x00000129

	thumb_func_start sub_08091438
sub_08091438: @ 0x08091438
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08091458 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809145C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08091464
	.align 2, 0
_08091458: .4byte gCurTask
_0809145C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08091464:
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08091488
	ldr r0, [r2]
	bl TaskDestroy
	b _0809160A
_08091488:
	ldr r0, _08091520 @ =gUnk_0203AD44
	ldrb r1, [r0]
	ldr r5, [r4, #0x44]
	cmp r1, #0
	beq _080914D0
	ldr r2, _08091524 @ =gCurLevelInfo
	mov r8, r2
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r6, _08091528 @ =gUnk_02026D50
_0809149C:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080914C8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080914E2
_080914C8:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0809149C
_080914D0:
	movs r0, #1
	cmp r0, #0
	beq _080914E2
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080914E2:
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _080914F8
	ldr r6, _0809152C @ =0x00000103
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08091506
_080914F8:
	ldrh r1, [r4, #6]
	movs r7, #0xa0
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r2, #1
_08091506:
	cmp r2, #0
	beq _0809150C
	b _0809160A
_0809150C:
	ldr r0, _0809152C @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #4
	beq _08091530
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	b _080915FE
	.align 2, 0
_08091520: .4byte gUnk_0203AD44
_08091524: .4byte gCurLevelInfo
_08091528: .4byte gUnk_02026D50
_0809152C: .4byte 0x00000103
_08091530:
	adds r3, r5, #0
	cmp r3, #0
	beq _08091580
	ldrb r0, [r3]
	cmp r0, #0
	beq _0809154C
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0809154C
	str r2, [r4, #0x44]
	movs r3, #0
_0809154C:
	cmp r3, #0
	beq _08091580
	ldr r0, _0809157C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080915F0
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080915F0
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809160A
	.align 2, 0
_0809157C: .4byte gUnk_03000510
_08091580:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _080915E8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080915C2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080915C2
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080915C2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080915C2
	movs r3, #4
_080915C2:
	ldr r0, _080915EC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080915F0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080915F0
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0809160A
	.align 2, 0
_080915E8: .4byte gKirbys
_080915EC: .4byte gUnk_03000510
_080915F0:
	ldrb r0, [r4, #1]
	cmp r0, #7
	bne _08091604
	ldrh r1, [r4, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
_080915FE:
	orrs r0, r1
	strh r0, [r4, #6]
	b _0809160A
_08091604:
	adds r0, r4, #0
	bl sub_0806FAC8
_0809160A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08091614
sub_08091614: @ 0x08091614
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08091648 @ =sub_08091714
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809164C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08091650
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08091658
	.align 2, 0
_08091648: .4byte sub_08091714
_0809164C: .4byte sub_0803DCCC
_08091650:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08091658:
	adds r7, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _080916CC @ =gRngVal
	ldr r0, [r3]
	ldr r6, _080916D0 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _080916D4 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r4, #0xf
	ands r0, r4
	movs r1, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r4
	movs r1, #4
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	mov r2, r8
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080916D8
	ldrh r0, [r7, #6]
	orrs r0, r1
	strh r0, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	b _080916DC
	.align 2, 0
_080916CC: .4byte gRngVal
_080916D0: .4byte 0x00196225
_080916D4: .4byte 0x3C6EF35F
_080916D8:
	movs r0, #0xfe
	lsls r0, r0, #8
_080916DC:
	strh r0, [r7, #0x3c]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0809170C @ =0x06012000
	ldr r3, _08091710 @ =0x00000297
	movs r0, #2
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809170C: .4byte 0x06012000
_08091710: .4byte 0x00000297

	thumb_func_start sub_08091714
sub_08091714: @ 0x08091714
	push {r4, r5, r6, r7, lr}
	ldr r2, _08091734 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08091738
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08091740
	.align 2, 0
_08091734: .4byte gCurTask
_08091738:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08091740:
	adds r3, r0, #0
	ldr r0, [r3, #0x44]
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08091768
	ldr r0, [r5]
	bl TaskDestroy
	b _080918C6
_08091768:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080917B4
	ldrb r0, [r1]
	cmp r0, #0
	beq _08091780
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08091780
	str r2, [r3, #0x44]
	movs r1, #0
_08091780:
	cmp r1, #0
	beq _080917B4
	ldr r0, _080917B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08091824
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08091824
	adds r0, r3, #0
	bl sub_0803DBC8
	b _080918C6
	.align 2, 0
_080917B0: .4byte gUnk_03000510
_080917B4:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _0809181C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080917F6
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080917F6
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080917F6
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080917F6
	movs r4, #4
_080917F6:
	ldr r0, _08091820 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08091824
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08091824
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080918C6
	.align 2, 0
_0809181C: .4byte gKirbys
_08091820: .4byte gUnk_03000510
_08091824:
	ldr r0, _08091890 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08091868
	ldr r6, _08091894 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08091898 @ =gUnk_02026D50
_08091836:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08091860
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809187A
_08091860:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08091836
_08091868:
	movs r0, #1
	cmp r0, #0
	beq _0809187A
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_0809187A:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809189C
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _080918C6
	.align 2, 0
_08091890: .4byte gUnk_0203AD44
_08091894: .4byte gCurLevelInfo
_08091898: .4byte gUnk_02026D50
_0809189C:
	ldrh r0, [r3, #0x3e]
	adds r0, #0x60
	strh r0, [r3, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080918C0
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_080918C0:
	adds r0, r3, #0
	bl sub_0806FAC8
_080918C6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080918CC
sub_080918CC: @ 0x080918CC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080918FC @ =sub_08091990
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08091900 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08091904
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809190C
	.align 2, 0
_080918FC: .4byte sub_08091990
_08091900: .4byte sub_0803DCCC
_08091904:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809190C:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08091946
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	b _0809194C
_08091946:
	ldr r0, [r4, #0x34]
	ldr r2, _08091984 @ =0xFFFFFA00
	adds r0, r0, r2
_0809194C:
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08091988 @ =0x06012000
	ldr r3, _0809198C @ =0x00000293
	movs r0, #4
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08091984: .4byte 0xFFFFFA00
_08091988: .4byte 0x06012000
_0809198C: .4byte 0x00000293

	thumb_func_start sub_08091990
sub_08091990: @ 0x08091990
	push {r4, r5, r6, r7, lr}
	ldr r2, _080919B0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080919B4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080919BC
	.align 2, 0
_080919B0: .4byte gCurTask
_080919B4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080919BC:
	adds r3, r0, #0
	ldr r0, [r3, #0x44]
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080919E4
	ldr r0, [r5]
	bl TaskDestroy
	b _08091B50
_080919E4:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08091A30
	ldrb r0, [r1]
	cmp r0, #0
	beq _080919FC
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _080919FC
	str r2, [r3, #0x44]
	movs r1, #0
_080919FC:
	cmp r1, #0
	beq _08091A30
	ldr r0, _08091A2C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08091AA0
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08091AA0
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08091B50
	.align 2, 0
_08091A2C: .4byte gUnk_03000510
_08091A30:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08091A98 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08091A72
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08091A72
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08091A72
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08091A72
	movs r4, #4
_08091A72:
	ldr r0, _08091A9C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08091AA0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08091AA0
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08091B50
	.align 2, 0
_08091A98: .4byte gKirbys
_08091A9C: .4byte gUnk_03000510
_08091AA0:
	ldr r0, _08091B0C @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08091AE4
	ldr r6, _08091B10 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08091B14 @ =gUnk_02026D50
_08091AB2:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08091ADC
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08091AF6
_08091ADC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08091AB2
_08091AE4:
	movs r0, #1
	cmp r0, #0
	beq _08091AF6
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08091AF6:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08091B18
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _08091B50
	.align 2, 0
_08091B0C: .4byte gUnk_0203AD44
_08091B10: .4byte gCurLevelInfo
_08091B14: .4byte gUnk_02026D50
_08091B18:
	movs r2, #0x40
	strh r2, [r3, #0x3e]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08091B28
	strh r2, [r3, #0x3c]
	b _08091B2C
_08091B28:
	ldr r0, _08091B58 @ =0x0000FFC0
	strh r0, [r3, #0x3c]
_08091B2C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08091B4A
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08091B4A:
	adds r0, r3, #0
	bl sub_0806FAC8
_08091B50:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091B58: .4byte 0x0000FFC0

	thumb_func_start sub_08091B5C
sub_08091B5C: @ 0x08091B5C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	ldr r0, _08091B8C @ =sub_08091C7C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08091B90 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08091B94
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08091B9C
	.align 2, 0
_08091B8C: .4byte sub_08091C7C
_08091B90: .4byte sub_0803DCCC
_08091B94:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08091B9C:
	adds r6, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r6]
	ldr r0, [r7, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r6, #0x38]
	str r7, [r6, #0x44]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r6, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08091BFC
	ldrh r0, [r6, #6]
	orrs r0, r1
	strh r0, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r6, #0x3c]
	ldr r3, _08091BF0 @ =gRngVal
	ldr r0, [r3]
	ldr r5, _08091BF4 @ =0x00196225
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08091BF8 @ =0x3C6EF35F
	adds r2, r2, r4
	str r2, [r3]
	lsrs r1, r2, #0x10
	movs r0, #0xf
	ands r1, r0
	lsls r1, r1, #8
	ldr r0, [r6, #0x34]
	subs r0, r0, r1
	b _08091C1E
	.align 2, 0
_08091BF0: .4byte gRngVal
_08091BF4: .4byte 0x00196225
_08091BF8: .4byte 0x3C6EF35F
_08091BFC:
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r6, #0x3c]
	ldr r3, _08091C6C @ =gRngVal
	ldr r0, [r3]
	ldr r5, _08091C70 @ =0x00196225
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08091C74 @ =0x3C6EF35F
	adds r2, r2, r4
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #8
	ldr r1, [r6, #0x34]
	adds r0, r0, r1
_08091C1E:
	str r0, [r6, #0x34]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #8
	ldr r1, [r6, #0x38]
	subs r1, r1, r0
	str r1, [r6, #0x38]
	adds r1, r6, #0
	adds r1, #0xc
	adds r4, r7, #0
	adds r4, #0x56
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _08091C78 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0xb3
	lsls r3, r3, #1
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r6, #0
	bl sub_080709F8
	ldrb r0, [r4]
	adds r0, #4
	adds r1, r6, #0
	adds r1, #0x2b
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08091C6C: .4byte gRngVal
_08091C70: .4byte 0x00196225
_08091C74: .4byte 0x3C6EF35F
_08091C78: .4byte 0x06010400

	thumb_func_start sub_08091C7C
sub_08091C7C: @ 0x08091C7C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08091C9C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08091CA0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08091CA8
	.align 2, 0
_08091C9C: .4byte gCurTask
_08091CA0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08091CA8:
	adds r6, r0, #0
	ldr r5, [r6, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r6, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08091CCC
	ldr r0, [r2]
	bl TaskDestroy
	b _08091F2C
_08091CCC:
	ldr r0, _08091D6C @ =gUnk_0203AD44
	ldrb r1, [r0]
	movs r0, #0xd4
	adds r0, r0, r5
	mov ip, r0
	cmp r1, #0
	beq _08091D18
	ldr r2, _08091D70 @ =gCurLevelInfo
	mov r8, r2
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _08091D74 @ =gUnk_02026D50
_08091CE4:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08091D10
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08091D2A
_08091D10:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08091CE4
_08091D18:
	movs r0, #1
	cmp r0, #0
	beq _08091D2A
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
_08091D2A:
	mov r3, ip
	ldrh r0, [r3]
	cmp r0, #0x34
	bne _08091D5E
	movs r4, #0
	ldr r0, [r6, #0x44]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0x5a
	beq _08091D4C
	ldr r7, _08091D78 @ =0x00000103
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _08091D5A
_08091D4C:
	ldrh r1, [r6, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r6, #6]
	movs r4, #1
_08091D5A:
	cmp r4, #0
	beq _08091D7C
_08091D5E:
	ldrh r1, [r6, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _08091F2C
	.align 2, 0
_08091D6C: .4byte gUnk_0203AD44
_08091D70: .4byte gCurLevelInfo
_08091D74: .4byte gUnk_02026D50
_08091D78: .4byte 0x00000103
_08091D7C:
	adds r3, r2, #0
	cmp r3, #0
	beq _08091DCC
	ldrb r0, [r3]
	cmp r0, #0
	beq _08091D98
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08091D98
	str r4, [r6, #0x44]
	movs r3, #0
_08091D98:
	cmp r3, #0
	beq _08091DCC
	ldr r0, _08091DC8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08091E3C
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08091E3C
	adds r0, r6, #0
	bl sub_0803DBC8
	b _08091F2C
	.align 2, 0
_08091DC8: .4byte gUnk_03000510
_08091DCC:
	adds r4, r6, #0
	movs r3, #0
	ldr r2, _08091E34 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08091E0E
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08091E0E
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08091E0E
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08091E0E
	movs r3, #4
_08091E0E:
	ldr r0, _08091E38 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08091E3C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08091E3C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08091F2C
	.align 2, 0
_08091E34: .4byte gKirbys
_08091E38: .4byte gUnk_03000510
_08091E3C:
	ldrh r0, [r6, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r6, #6]
	ldrb r0, [r6, #1]
	cmp r0, #8
	bls _08091ED8
	ldr r7, [r5, #0x40]
	str r7, [r6, #0x34]
	ldr r5, [r5, #0x44]
	mov ip, r5
	str r5, [r6, #0x38]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _08091EA0
	adds r0, #0xff
	strh r0, [r6, #0x3c]
	ldr r3, _08091E94 @ =gRngVal
	ldr r0, [r3]
	ldr r5, _08091E98 @ =0x00196225
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08091E9C @ =0x3C6EF35F
	adds r2, r2, r4
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #8
	subs r0, r7, r0
	str r0, [r6, #0x34]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #8
	mov r1, ip
	subs r0, r1, r0
	b _08091ED6
	.align 2, 0
_08091E94: .4byte gRngVal
_08091E98: .4byte 0x00196225
_08091E9C: .4byte 0x3C6EF35F
_08091EA0:
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r6, #0x3c]
	ldr r3, _08091EE8 @ =gRngVal
	ldr r0, [r3]
	ldr r5, _08091EEC @ =0x00196225
	adds r2, r0, #0
	muls r2, r5, r2
	ldr r4, _08091EF0 @ =0x3C6EF35F
	adds r2, r2, r4
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #8
	adds r0, r0, r7
	str r0, [r6, #0x34]
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #8
	mov r2, ip
	subs r0, r2, r0
_08091ED6:
	str r0, [r6, #0x38]
_08091ED8:
	ldrh r1, [r6, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08091EF4
	ldrh r0, [r6, #0x3c]
	adds r0, #0x20
	b _08091EF8
	.align 2, 0
_08091EE8: .4byte gRngVal
_08091EEC: .4byte 0x00196225
_08091EF0: .4byte 0x3C6EF35F
_08091EF4:
	ldrh r0, [r6, #0x3c]
	subs r0, #0x20
_08091EF8:
	strh r0, [r6, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08091F18
	movs r3, #0x3c
	ldrsh r1, [r6, r3]
	ldr r0, [r6, #0x34]
	adds r0, r0, r1
	str r0, [r6, #0x34]
	movs r7, #0x3e
	ldrsh r1, [r6, r7]
	ldr r0, [r6, #0x38]
	subs r0, r0, r1
	str r0, [r6, #0x38]
_08091F18:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08091F2C
	adds r0, r6, #0
	bl sub_0806FAC8
_08091F2C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08091F38
sub_08091F38: @ 0x08091F38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _08091F70 @ =sub_080920A0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08091F74 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08091F78
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08091F80
	.align 2, 0
_08091F70: .4byte sub_080920A0
_08091F74: .4byte sub_0803DCCC
_08091F78:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08091F80:
	adds r7, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r1, sb
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08092000
	ldrh r0, [r7, #6]
	orrs r0, r1
	strh r0, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x3c]
	ldr r4, _08091FF4 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _08091FF8 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _08091FFC @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r0, #0xf
	mov r8, r0
	ands r1, r0
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r3, [r7, #0x34]
	adds r3, r3, r0
	str r3, [r7, #0x34]
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r0, r2, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #8
	subs r3, r3, r0
	str r3, [r7, #0x34]
	b _0809203C
	.align 2, 0
_08091FF4: .4byte gRngVal
_08091FF8: .4byte 0x00196225
_08091FFC: .4byte 0x3C6EF35F
_08092000:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	ldr r4, _08092090 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _08092094 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _08092098 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r4]
	lsrs r1, r2, #0x10
	movs r0, #0xf
	mov r8, r0
	ands r1, r0
	movs r0, #8
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r3, [r7, #0x34]
	subs r3, r3, r0
	str r3, [r7, #0x34]
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r0, r2, #0x10
	movs r1, #7
	ands r0, r1
	lsls r0, r0, #8
	adds r0, r0, r3
	str r0, [r7, #0x34]
_0809203C:
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	lsrs r0, r0, #0x10
	mov r1, r8
	ands r0, r1
	movs r1, #0xc
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r1, r7, #0
	adds r1, #0xc
	mov r4, sb
	adds r4, #0x56
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _0809209C @ =0x06010480
	adds r2, r2, r0
	movs r3, #0xb3
	lsls r3, r3, #1
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	ldrb r0, [r4]
	adds r0, #4
	adds r1, r7, #0
	adds r1, #0x2b
	strb r0, [r1]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092090: .4byte gRngVal
_08092094: .4byte 0x00196225
_08092098: .4byte 0x3C6EF35F
_0809209C: .4byte 0x06010480

	thumb_func_start sub_080920A0
sub_080920A0: @ 0x080920A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _080920C0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080920C4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080920CC
	.align 2, 0
_080920C0: .4byte gCurTask
_080920C4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080920CC:
	adds r7, r0, #0
	ldr r5, [r7, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080920F0
	ldr r0, [r2]
	bl TaskDestroy
	b _08092374
_080920F0:
	ldr r0, _08092190 @ =gUnk_0203AD44
	ldrb r1, [r0]
	movs r0, #0xd4
	adds r0, r0, r5
	mov r8, r0
	cmp r1, #0
	beq _0809213C
	ldr r2, _08092194 @ =gCurLevelInfo
	mov ip, r2
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _08092198 @ =gUnk_02026D50
_08092108:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, ip
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _08092134
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809214E
_08092134:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08092108
_0809213C:
	movs r0, #1
	cmp r0, #0
	beq _0809214E
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809214E:
	mov r3, r8
	ldrh r0, [r3]
	cmp r0, #0x34
	bne _08092182
	movs r4, #0
	ldr r0, [r7, #0x44]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0x5a
	beq _08092170
	ldr r6, _0809219C @ =0x00000103
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809217E
_08092170:
	ldrh r1, [r7, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	movs r4, #1
_0809217E:
	cmp r4, #0
	beq _080921A0
_08092182:
	ldrh r1, [r7, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _08092374
	.align 2, 0
_08092190: .4byte gUnk_0203AD44
_08092194: .4byte gCurLevelInfo
_08092198: .4byte gUnk_02026D50
_0809219C: .4byte 0x00000103
_080921A0:
	adds r3, r2, #0
	cmp r3, #0
	beq _080921F0
	ldrb r0, [r3]
	cmp r0, #0
	beq _080921BC
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080921BC
	str r4, [r7, #0x44]
	movs r3, #0
_080921BC:
	cmp r3, #0
	beq _080921F0
	ldr r0, _080921EC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08092260
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08092260
	adds r0, r7, #0
	bl sub_0803DBC8
	b _08092374
	.align 2, 0
_080921EC: .4byte gUnk_03000510
_080921F0:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _08092258 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08092232
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08092232
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08092232
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08092232
	movs r3, #4
_08092232:
	ldr r0, _0809225C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08092260
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08092260
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08092374
	.align 2, 0
_08092258: .4byte gKirbys
_0809225C: .4byte gUnk_03000510
_08092260:
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r7, #6]
	ldrb r0, [r7, #1]
	cmp r0, #5
	bls _08092320
	ldr r3, [r5, #0x40]
	str r3, [r7, #0x34]
	ldr r5, [r5, #0x44]
	mov ip, r5
	str r5, [r7, #0x38]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080922CC
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r7, #0x3c]
	ldr r4, _080922C0 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _080922C4 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _080922C8 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r4]
	lsrs r0, r2, #0x10
	movs r1, #0xf
	mov r8, r1
	ands r0, r1
	movs r1, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	adds r1, r3, r1
	str r1, [r7, #0x34]
	adds r3, r2, #0
	muls r3, r6, r3
	adds r3, r3, r5
	str r3, [r4]
	lsrs r0, r3, #0x10
	movs r2, #7
	ands r0, r2
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r7, #0x34]
	b _08092308
	.align 2, 0
_080922C0: .4byte gRngVal
_080922C4: .4byte 0x00196225
_080922C8: .4byte 0x3C6EF35F
_080922CC:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	ldr r4, _08092330 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _08092334 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _08092338 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r4]
	lsrs r0, r2, #0x10
	movs r1, #0xf
	mov r8, r1
	ands r0, r1
	movs r1, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	subs r1, r3, r1
	str r1, [r7, #0x34]
	adds r3, r2, #0
	muls r3, r6, r3
	adds r3, r3, r5
	str r3, [r4]
	lsrs r0, r3, #0x10
	movs r2, #7
	ands r0, r2
	lsls r0, r0, #8
	adds r0, r0, r1
	str r0, [r7, #0x34]
_08092308:
	adds r1, r3, #0
	muls r1, r6, r1
	adds r1, r1, r5
	str r1, [r4]
	lsrs r1, r1, #0x10
	mov r2, r8
	ands r1, r2
	movs r0, #0xc
	subs r0, r0, r1
	lsls r0, r0, #8
	add r0, ip
	str r0, [r7, #0x38]
_08092320:
	ldrh r1, [r7, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809233C
	ldrh r0, [r7, #0x3c]
	adds r0, #0x20
	b _08092340
	.align 2, 0
_08092330: .4byte gRngVal
_08092334: .4byte 0x00196225
_08092338: .4byte 0x3C6EF35F
_0809233C:
	ldrh r0, [r7, #0x3c]
	subs r0, #0x20
_08092340:
	strh r0, [r7, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08092360
	movs r3, #0x3c
	ldrsh r1, [r7, r3]
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r6, #0x3e
	ldrsh r1, [r7, r6]
	ldr r0, [r7, #0x38]
	subs r0, r0, r1
	str r0, [r7, #0x38]
_08092360:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #1
	ble _08092374
	adds r0, r7, #0
	bl sub_0806FAC8
_08092374:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08092380
sub_08092380: @ 0x08092380
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _080923B8 @ =sub_08092748
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080923BC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080923C0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _080923C8
	.align 2, 0
_080923B8: .4byte sub_08092748
_080923BC: .4byte sub_0803DCCC
_080923C0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_080923C8:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r4, _08092460 @ =gRngVal
	ldr r0, [r4]
	ldr r1, _08092464 @ =0x00196225
	mov r8, r1
	mov r3, r8
	muls r3, r0, r3
	ldr r6, _08092468 @ =0x3C6EF35F
	adds r3, r3, r6
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r5, #7
	ands r1, r5
	movs r2, #4
	subs r1, r2, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, r8
	muls r0, r3, r0
	adds r0, r0, r6
	str r0, [r4]
	lsrs r0, r0, #0x10
	ands r0, r5
	subs r2, r2, r0
	lsls r2, r2, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r2
	str r0, [r7, #0x38]
	ldr r0, _0809246C @ =0x0000FE80
	strh r0, [r7, #0x3c]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x3e]
	adds r1, r7, #0
	adds r1, #0xc
	mov r0, sb
	adds r0, #0x56
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08092470 @ =0x06010600
	adds r2, r2, r0
	movs r3, #0xb3
	lsls r3, r3, #1
	movs r0, #2
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092460: .4byte gRngVal
_08092464: .4byte 0x00196225
_08092468: .4byte 0x3C6EF35F
_0809246C: .4byte 0x0000FE80
_08092470: .4byte 0x06010600

	thumb_func_start sub_08092474
sub_08092474: @ 0x08092474
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	ldr r0, _080924AC @ =sub_08092748
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080924B0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080924B4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _080924BC
	.align 2, 0
_080924AC: .4byte sub_08092748
_080924B0: .4byte sub_0803DCCC
_080924B4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_080924BC:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	mov sb, r0
	mov r1, sb
	strb r1, [r7]
	mov r1, sl
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sl
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r4, _08092558 @ =gRngVal
	ldr r0, [r4]
	ldr r1, _0809255C @ =0x00196225
	mov r8, r1
	mov r3, r8
	muls r3, r0, r3
	ldr r6, _08092560 @ =0x3C6EF35F
	adds r3, r3, r6
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r5, #7
	ands r1, r5
	movs r2, #4
	subs r1, r2, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, r8
	muls r0, r3, r0
	adds r0, r0, r6
	str r0, [r4]
	lsrs r0, r0, #0x10
	ands r0, r5
	subs r2, r2, r0
	lsls r2, r2, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r2
	str r0, [r7, #0x38]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x3c]
	strh r0, [r7, #0x3e]
	adds r1, r7, #0
	adds r1, #0xc
	mov r0, sl
	adds r0, #0x56
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08092564 @ =0x06010680
	adds r2, r2, r0
	movs r3, #0xb3
	lsls r3, r3, #1
	mov r0, sb
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092558: .4byte gRngVal
_0809255C: .4byte 0x00196225
_08092560: .4byte 0x3C6EF35F
_08092564: .4byte 0x06010680

	thumb_func_start sub_08092568
sub_08092568: @ 0x08092568
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _0809259C @ =sub_08092748
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080925A0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080925A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _080925AC
	.align 2, 0
_0809259C: .4byte sub_08092748
_080925A0: .4byte sub_0803DCCC
_080925A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_080925AC:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	ldr r0, [r4, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r7, #0x38]
	str r4, [r7, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _08092640 @ =gRngVal
	ldr r0, [r3]
	ldr r1, _08092644 @ =0x00196225
	mov r8, r1
	mov r2, r8
	muls r2, r0, r2
	ldr r6, _08092648 @ =0x3C6EF35F
	adds r2, r2, r6
	str r2, [r3]
	lsrs r1, r2, #0x10
	movs r5, #7
	ands r1, r5
	movs r0, #4
	mov ip, r0
	subs r1, r0, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, r8
	muls r0, r2, r0
	adds r0, r0, r6
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r5
	mov r1, ip
	subs r0, r1, r0
	lsls r0, r0, #8
	ldr r1, [r7, #0x38]
	adds r1, r1, r0
	str r1, [r7, #0x38]
	ldr r0, _0809264C @ =0x0000FE80
	strh r0, [r7, #0x3c]
	strh r0, [r7, #0x3e]
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08092650 @ =0x06010700
	adds r2, r2, r0
	movs r3, #0xb3
	lsls r3, r3, #1
	mov r0, ip
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092640: .4byte gRngVal
_08092644: .4byte 0x00196225
_08092648: .4byte 0x3C6EF35F
_0809264C: .4byte 0x0000FE80
_08092650: .4byte 0x06010700

	thumb_func_start sub_08092654
sub_08092654: @ 0x08092654
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0809268C @ =sub_08092748
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08092690 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08092694
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0809269C
	.align 2, 0
_0809268C: .4byte sub_08092748
_08092690: .4byte sub_0803DCCC
_08092694:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0809269C:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r4, _08092734 @ =gRngVal
	ldr r0, [r4]
	ldr r1, _08092738 @ =0x00196225
	mov r8, r1
	mov r3, r8
	muls r3, r0, r3
	ldr r6, _0809273C @ =0x3C6EF35F
	adds r3, r3, r6
	str r3, [r4]
	lsrs r1, r3, #0x10
	movs r5, #7
	ands r1, r5
	movs r2, #4
	subs r1, r2, r1
	lsls r1, r1, #8
	ldr r0, [r7, #0x34]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	mov r0, r8
	muls r0, r3, r0
	adds r0, r0, r6
	str r0, [r4]
	lsrs r0, r0, #0x10
	ands r0, r5
	subs r2, r2, r0
	lsls r2, r2, #8
	ldr r0, [r7, #0x38]
	adds r0, r0, r2
	str r0, [r7, #0x38]
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r7, #0x3c]
	ldr r0, _08092740 @ =0x0000FE80
	strh r0, [r7, #0x3e]
	adds r1, r7, #0
	adds r1, #0xc
	mov r0, sb
	adds r0, #0x56
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08092744 @ =0x06010780
	adds r2, r2, r0
	movs r3, #0xb3
	lsls r3, r3, #1
	movs r0, #5
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092734: .4byte gRngVal
_08092738: .4byte 0x00196225
_0809273C: .4byte 0x3C6EF35F
_08092740: .4byte 0x0000FE80
_08092744: .4byte 0x06010780

	thumb_func_start sub_08092748
sub_08092748: @ 0x08092748
	push {r4, r5, r6, r7, lr}
	ldr r2, _08092764 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08092768
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08092770
	.align 2, 0
_08092764: .4byte gCurTask
_08092768:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08092770:
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08092794
	ldr r0, [r2]
	bl TaskDestroy
	b _0809293E
_08092794:
	ldr r0, _0809283C @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r1, #0
	beq _080927D6
	ldr r6, _08092840 @ =gCurLevelInfo
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r5, _08092844 @ =gUnk_02026D50
_080927A4:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _080927CE
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080927E8
_080927CE:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080927A4
_080927D6:
	movs r0, #1
	cmp r0, #0
	beq _080927E8
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080927E8:
	ldrh r2, [r4, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	bne _0809282E
	movs r5, #0
	ldr r0, [r4, #0x44]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r3, r0, #0
	cmp r1, #0x5a
	beq _0809280C
	ldr r6, _08092848 @ =0x00000103
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08092818
_0809280C:
	movs r7, #0xa0
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r2
	strh r0, [r4, #6]
	movs r5, #1
_08092818:
	cmp r5, #0
	bne _0809282E
	ldr r0, _08092848 @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #3
	beq _0809284C
	cmp r0, #0x16
	beq _0809284C
	cmp r0, #8
	beq _0809284C
_0809282E:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _0809293E
	.align 2, 0
_0809283C: .4byte gUnk_0203AD44
_08092840: .4byte gCurLevelInfo
_08092844: .4byte gUnk_02026D50
_08092848: .4byte 0x00000103
_0809284C:
	cmp r3, #0
	beq _0809289C
	ldrb r0, [r3]
	cmp r0, #0
	beq _08092868
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08092868
	movs r0, #0
	str r0, [r4, #0x44]
	movs r3, #0
_08092868:
	cmp r3, #0
	beq _0809289C
	ldr r0, _08092898 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809290C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809290C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809293E
	.align 2, 0
_08092898: .4byte gUnk_03000510
_0809289C:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08092904 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080928DE
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080928DE
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080928DE
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080928DE
	movs r3, #4
_080928DE:
	ldr r0, _08092908 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809290C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809290C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0809293E
	.align 2, 0
_08092904: .4byte gKirbys
_08092908: .4byte gUnk_03000510
_0809290C:
	ldrb r0, [r4, #1]
	cmp r0, #5
	bls _08092918
	movs r0, #0
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
_08092918:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08092938
	movs r7, #0x3c
	ldrsh r1, [r4, r7]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08092938:
	adds r0, r4, #0
	bl sub_0806FAC8
_0809293E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08092944
sub_08092944: @ 0x08092944
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	ldr r0, _08092984 @ =sub_08092A54
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08092988 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809298C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08092994
	.align 2, 0
_08092984: .4byte sub_08092A54
_08092988: .4byte sub_0803DCCC
_0809298C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08092994:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r2, #0
	mov ip, r2
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080929CA
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_080929CA:
	ldr r0, _08092A1C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080929EE
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080929EE:
	cmp r6, #0
	beq _08092A20
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r6, r0
	bls _08092A06
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08092A06:
	adds r1, r4, #0
	adds r1, #0xc
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	adds r2, r6, #0
	mov r3, r8
	bl sub_080709F8
	b _08092A40
	.align 2, 0
_08092A1C: .4byte gUnk_03000510
_08092A20:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08092A50 @ =0x06012000
	str r7, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	mov r3, r8
	bl sub_080709F8
_08092A40:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08092A50: .4byte 0x06012000

	thumb_func_start sub_08092A54
sub_08092A54: @ 0x08092A54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08092A74 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08092A78
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08092A80
	.align 2, 0
_08092A74: .4byte gCurTask
_08092A78:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08092A80:
	adds r3, r0, #0
	ldr r5, [r3, #0x44]
	ldrh r4, [r3, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	beq _08092A9A
	ldr r0, [r2]
	bl TaskDestroy
	b _08092BF0
_08092A9A:
	ldr r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _08092AAA
	adds r0, r1, #0
	orrs r0, r4
	strh r0, [r3, #6]
	b _08092BF0
_08092AAA:
	cmp r5, #0
	beq _08092ADC
	ldr r0, _08092AD8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08092B4C
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r4
	cmp r0, #0
	bne _08092B4C
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08092BF0
	.align 2, 0
_08092AD8: .4byte gUnk_03000510
_08092ADC:
	adds r6, r3, #0
	movs r4, #0
	ldr r2, _08092B44 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08092B1E
	movs r4, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08092B1E
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08092B1E
	movs r4, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08092B1E
	movs r4, #4
_08092B1E:
	ldr r0, _08092B48 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08092B4C
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08092B4C
	adds r0, r6, #0
	bl sub_0803DBC8
	b _08092BF0
	.align 2, 0
_08092B44: .4byte gKirbys
_08092B48: .4byte gUnk_03000510
_08092B4C:
	ldr r0, _08092BFC @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r1, [r3, #0xc]
	mov ip, r1
	cmp r0, #0
	beq _08092B98
	ldr r2, _08092C00 @ =gCurLevelInfo
	mov r8, r2
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r6, _08092C04 @ =gUnk_02026D50
_08092B64:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08092B90
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08092BAA
_08092B90:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08092B64
_08092B98:
	movs r0, #1
	cmp r0, #0
	beq _08092BAA
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08092BAA:
	ldr r0, _08092C08 @ =0x06011FFF
	cmp ip, r0
	bhi _08092BDA
	movs r2, #0
	ldr r1, [r3, #0x44]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _08092BC8
	ldr r4, _08092C0C @ =0x00000103
	adds r0, r1, r4
	ldrb r0, [r0]
	cmp r0, #0
	bne _08092BD6
_08092BC8:
	ldrh r1, [r3, #6]
	movs r7, #0xa0
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r3, #6]
	movs r2, #1
_08092BD6:
	cmp r2, #0
	bne _08092BF0
_08092BDA:
	ldrh r1, [r3, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r3, #6]
	ldr r0, [r5, #0x40]
	str r0, [r3, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r3, #0x38]
	adds r0, r3, #0
	bl sub_0806FAC8
_08092BF0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092BFC: .4byte gUnk_0203AD44
_08092C00: .4byte gCurLevelInfo
_08092C04: .4byte gUnk_02026D50
_08092C08: .4byte 0x06011FFF
_08092C0C: .4byte 0x00000103

	thumb_func_start sub_08092C10
sub_08092C10: @ 0x08092C10
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08092C40 @ =sub_08092D50
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08092C44 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08092C48
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08092C50
	.align 2, 0
_08092C40: .4byte sub_08092D50
_08092C44: .4byte sub_0803DCCC
_08092C48:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08092C50:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x38]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08092C94
	movs r0, #0x10
	b _08092C96
_08092C94:
	movs r0, #0x40
_08092C96:
	strh r0, [r4, #0x3e]
	ldr r0, [r5, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08092CAC
	ldr r0, _08092CA8 @ =0x0000FEE0
	b _08092CAE
	.align 2, 0
_08092CA8: .4byte 0x0000FEE0
_08092CAC:
	ldr r0, _08092CD4 @ =0x0000FDC0
_08092CAE:
	strh r0, [r4, #0x3c]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08092CD8
	ldrh r1, [r4, #6]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r0, [r4, #0x34]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r4, #0x34]
	ldrh r0, [r4, #0x3c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x3c]
	b _08092CE0
	.align 2, 0
_08092CD4: .4byte 0x0000FDC0
_08092CD8:
	ldr r0, [r4, #0x34]
	ldr r1, _08092D10 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r4, #0x34]
_08092CE0:
	ldr r0, [r5, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08092D1C
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08092D14 @ =0x06012000
	ldr r3, _08092D18 @ =0x00000293
	movs r0, #6
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	b _08092D3E
	.align 2, 0
_08092D10: .4byte 0xFFFFF800
_08092D14: .4byte 0x06012000
_08092D18: .4byte 0x00000293
_08092D1C:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08092D48 @ =0x06012000
	ldr r3, _08092D4C @ =0x00000293
	movs r0, #1
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
_08092D3E:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092D48: .4byte 0x06012000
_08092D4C: .4byte 0x00000293

	thumb_func_start sub_08092D50
sub_08092D50: @ 0x08092D50
	push {r4, r5, r6, r7, lr}
	ldr r2, _08092D70 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08092D74
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08092D7C
	.align 2, 0
_08092D70: .4byte gCurTask
_08092D74:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08092D7C:
	adds r3, r0, #0
	ldr r0, [r3, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08092DA6
	ldr r0, [r5]
	bl TaskDestroy
	b _08092F3E
_08092DA6:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08092DF0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08092DBE
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08092DBE
	str r2, [r3, #0x44]
	movs r1, #0
_08092DBE:
	cmp r1, #0
	beq _08092DF0
	ldr r0, _08092DEC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08092E60
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08092E60
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08092F3E
	.align 2, 0
_08092DEC: .4byte gUnk_03000510
_08092DF0:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08092E58 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08092E32
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08092E32
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08092E32
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08092E32
	movs r4, #4
_08092E32:
	ldr r0, _08092E5C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08092E60
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08092E60
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08092F3E
	.align 2, 0
_08092E58: .4byte gKirbys
_08092E5C: .4byte gUnk_03000510
_08092E60:
	ldr r0, _08092ED0 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08092EA4
	ldr r6, _08092ED4 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08092ED8 @ =gUnk_02026D50
_08092E72:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08092E9C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08092EB6
_08092E9C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08092E72
_08092EA4:
	movs r0, #1
	cmp r0, #0
	beq _08092EB6
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08092EB6:
	ldrh r1, [r3, #6]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08092EDC
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _08092F3E
	.align 2, 0
_08092ED0: .4byte gUnk_0203AD44
_08092ED4: .4byte gCurLevelInfo
_08092ED8: .4byte gUnk_02026D50
_08092EDC:
	mov r6, ip
	ldr r0, [r6, #0x58]
	ands r0, r2
	cmp r0, #0
	beq _08092F00
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092EF4
	ldrh r0, [r3, #0x3c]
	subs r0, #0xc
	b _08092EF8
_08092EF4:
	ldrh r0, [r3, #0x3c]
	adds r0, #0xc
_08092EF8:
	strh r0, [r3, #0x3c]
	ldrh r0, [r3, #0x3e]
	adds r0, #1
	b _08092F18
_08092F00:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08092F0E
	ldrh r0, [r3, #0x3c]
	subs r0, #0x18
	b _08092F12
_08092F0E:
	ldrh r0, [r3, #0x3c]
	adds r0, #0x18
_08092F12:
	strh r0, [r3, #0x3c]
	ldrh r0, [r3, #0x3e]
	adds r0, #0x20
_08092F18:
	strh r0, [r3, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08092F38
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08092F38:
	adds r0, r3, #0
	bl sub_0806FAC8
_08092F3E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08092F44
sub_08092F44: @ 0x08092F44
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08092F78 @ =sub_08093044
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08092F7C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08092F80
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08092F88
	.align 2, 0
_08092F78: .4byte sub_08093044
_08092F7C: .4byte sub_0803DCCC
_08092F80:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08092F88:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	cmp r6, #1
	beq _08092FC6
	cmp r6, #2
	beq _08092FD4
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x3c]
	movs r0, #0
	b _08092FDC
_08092FC6:
	movs r0, #0x8c
	lsls r0, r0, #2
	strh r0, [r4, #0x3c]
	ldr r0, _08092FD0 @ =0x0000FF60
	b _08092FDC
	.align 2, 0
_08092FD0: .4byte 0x0000FF60
_08092FD4:
	movs r0, #0x8c
	lsls r0, r0, #2
	strh r0, [r4, #0x3c]
	movs r0, #0xa0
_08092FDC:
	strh r0, [r4, #0x3e]
	ldr r2, [r4, #0x34]
	ldr r1, _08093008 @ =0xFFFFFC00
	adds r0, r2, r1
	str r0, [r4, #0x34]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08093010
	ldrh r1, [r4, #6]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #6]
	ldr r1, _0809300C @ =0xFFFFD400
	adds r0, r2, r1
	str r0, [r4, #0x34]
	ldrh r0, [r4, #0x3c]
	rsbs r0, r0, #0
	strh r0, [r4, #0x3c]
	b _08093018
	.align 2, 0
_08093008: .4byte 0xFFFFFC00
_0809300C: .4byte 0xFFFFD400
_08093010:
	movs r1, #0x90
	lsls r1, r1, #6
	adds r0, r2, r1
	str r0, [r4, #0x34]
_08093018:
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	lsls r2, r2, #0xb
	ldr r0, _08093040 @ =0x06010600
	adds r2, r2, r0
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r3, #0xc8
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093040: .4byte 0x06010600

	thumb_func_start sub_08093044
sub_08093044: @ 0x08093044
	push {r4, r5, r6, r7, lr}
	ldr r2, _08093060 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08093064
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809306C
	.align 2, 0
_08093060: .4byte gCurTask
_08093064:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809306C:
	adds r4, r0, #0
	ldr r7, [r4, #0x44]
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08093090
	ldr r0, [r2]
	bl TaskDestroy
	b _0809325E
_08093090:
	ldr r0, _080930FC @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r1, #0
	beq _080930D6
	ldr r0, _08093100 @ =gCurLevelInfo
	mov ip, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r5, _08093104 @ =gUnk_02026D50
_080930A2:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, ip
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _080930CE
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080930E8
_080930CE:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _080930A2
_080930D6:
	movs r0, #1
	cmp r0, #0
	beq _080930E8
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080930E8:
	ldr r6, _08093108 @ =0x00000103
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #5
	beq _0809310C
	ldrh r1, [r4, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	b _08093146
	.align 2, 0
_080930FC: .4byte gUnk_0203AD44
_08093100: .4byte gCurLevelInfo
_08093104: .4byte gUnk_02026D50
_08093108: .4byte 0x00000103
_0809310C:
	ldrh r3, [r4, #6]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _0809313E
	movs r5, #0
	ldr r0, [r4, #0x44]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0x5a
	beq _0809312E
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809313A
_0809312E:
	movs r1, #0xa0
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r4, #6]
	movs r5, #1
_0809313A:
	cmp r5, #0
	beq _0809314C
_0809313E:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_08093146:
	orrs r0, r1
	strh r0, [r4, #6]
	b _0809325E
_0809314C:
	adds r3, r2, #0
	cmp r3, #0
	beq _0809319C
	ldrb r0, [r3]
	cmp r0, #0
	beq _08093168
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08093168
	str r5, [r4, #0x44]
	movs r3, #0
_08093168:
	cmp r3, #0
	beq _0809319C
	ldr r0, _08093198 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809320C
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809320C
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809325E
	.align 2, 0
_08093198: .4byte gUnk_03000510
_0809319C:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08093204 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080931DE
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080931DE
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080931DE
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080931DE
	movs r3, #4
_080931DE:
	ldr r0, _08093208 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809320C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809320C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0809325E
	.align 2, 0
_08093204: .4byte gKirbys
_08093208: .4byte gUnk_03000510
_0809320C:
	ldr r0, [r7, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08093224
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0809325E
_08093224:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08093234
	ldrh r0, [r4, #0x3c]
	adds r0, #0x10
	b _08093238
_08093234:
	ldrh r0, [r4, #0x3c]
	subs r0, #0x10
_08093238:
	strh r0, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08093258
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08093258:
	adds r0, r4, #0
	bl sub_0806FAC8
_0809325E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08093264
sub_08093264: @ 0x08093264
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08093298 @ =sub_08093468
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809329C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080932A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080932A8
	.align 2, 0
_08093298: .4byte sub_08093468
_0809329C: .4byte sub_0803DCCC
_080932A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080932A8:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	mov r8, r2
	strh r0, [r1]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r2, r1, #0
	orrs r2, r0
	mov r0, r8
	orrs r2, r0
	strh r2, [r5, #6]
	ldr r6, _0809332C @ =gRngVal
	ldr r0, [r6]
	ldr r7, _08093330 @ =0x00196225
	muls r0, r7, r0
	ldr r1, _08093334 @ =0x3C6EF35F
	adds r3, r0, r1
	str r3, [r6]
	lsrs r0, r3, #0x10
	movs r1, #0xf
	mov ip, r1
	ands r0, r1
	movs r1, #0xc
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08093338
	movs r0, #1
	orrs r2, r0
	strh r2, [r5, #6]
	adds r0, r3, #0
	muls r0, r7, r0
	ldr r2, _08093334 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r6]
	lsrs r0, r0, #0x10
	mov r1, ip
	ands r0, r1
	adds r0, #0x10
	lsls r0, r0, #8
	ldr r1, [r5, #0x34]
	adds r1, r1, r0
	str r1, [r5, #0x34]
	b _08093356
	.align 2, 0
_0809332C: .4byte gRngVal
_08093330: .4byte 0x00196225
_08093334: .4byte 0x3C6EF35F
_08093338:
	adds r0, r3, #0
	muls r0, r7, r0
	ldr r2, _08093388 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r6]
	lsrs r0, r0, #0x10
	mov r1, ip
	ands r0, r1
	movs r1, #0x10
	rsbs r1, r1, #0
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
_08093356:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _0809338C @ =0x06012000
	movs r3, #0xac
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093388: .4byte 0x3C6EF35F
_0809338C: .4byte 0x06012000

	thumb_func_start sub_08093390
sub_08093390: @ 0x08093390
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _080933C8 @ =sub_08093468
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080933CC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080933D0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080933D8
	.align 2, 0
_080933C8: .4byte sub_08093468
_080933CC: .4byte sub_0803DCCC
_080933D0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080933D8:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	movs r2, #0
	strh r0, [r1]
	ldrh r1, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	adds r3, r1, #0
	orrs r3, r0
	orrs r3, r2
	strh r3, [r5, #6]
	lsls r1, r7, #0x10
	asrs r1, r1, #8
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809342E
	movs r0, #1
	orrs r3, r0
	strh r3, [r5, #6]
	lsls r1, r6, #0x10
	asrs r1, r1, #8
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	b _08093436
_0809342E:
	lsls r1, r6, #0x10
	asrs r1, r1, #8
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
_08093436:
	str r0, [r5, #0x34]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08093464 @ =0x06012000
	movs r3, #0xac
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093464: .4byte 0x06012000

	thumb_func_start sub_08093468
sub_08093468: @ 0x08093468
	push {r4, r5, r6, r7, lr}
	ldr r2, _08093488 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0809348C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08093494
	.align 2, 0
_08093488: .4byte gCurTask
_0809348C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08093494:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080934B0
	ldr r0, [r5]
	bl TaskDestroy
	b _08093616
_080934B0:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080934FC
	ldrb r0, [r1]
	cmp r0, #0
	beq _080934C8
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _080934C8
	str r2, [r3, #0x44]
	movs r1, #0
_080934C8:
	cmp r1, #0
	beq _080934FC
	ldr r0, _080934F8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809356C
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809356C
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08093616
	.align 2, 0
_080934F8: .4byte gUnk_03000510
_080934FC:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08093564 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809353E
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809353E
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809353E
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809353E
	movs r4, #4
_0809353E:
	ldr r0, _08093568 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809356C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809356C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08093616
	.align 2, 0
_08093564: .4byte gKirbys
_08093568: .4byte gUnk_03000510
_0809356C:
	ldr r0, _080935E4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r3, #4]
	mov ip, r7
	cmp r0, #0
	beq _080935B4
	ldr r6, _080935E8 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _080935EC @ =gUnk_02026D50
_08093582:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080935AC
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080935C6
_080935AC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08093582
_080935B4:
	movs r0, #1
	cmp r0, #0
	beq _080935C6
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080935C6:
	mov r0, ip
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080935F0
	ldrh r0, [r3, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _08093616
	.align 2, 0
_080935E4: .4byte gUnk_0203AD44
_080935E8: .4byte gCurLevelInfo
_080935EC: .4byte gUnk_02026D50
_080935F0:
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08093610
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08093610:
	adds r0, r3, #0
	bl sub_0806FAC8
_08093616:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809361C
sub_0809361C: @ 0x0809361C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, _08093650 @ =sub_080936F4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08093654 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08093658
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08093660
	.align 2, 0
_08093650: .4byte sub_080936F4
_08093654: .4byte sub_0803DCCC
_08093658:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08093660:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	ldr r0, [r5, #0x38]
	movs r1, #0xc0
	lsls r1, r1, #3
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080936A6
	movs r0, #0xfd
	lsls r0, r0, #8
	b _080936AA
_080936A6:
	movs r0, #0xfa
	lsls r0, r0, #8
_080936AA:
	strh r0, [r5, #0x3c]
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _080936C2
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r1, r0
	strh r1, [r5, #6]
	ldrh r0, [r5, #0x3c]
	rsbs r0, r0, #0
	strh r0, [r5, #0x3c]
_080936C2:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _080936EC @ =0x06012000
	ldr r3, _080936F0 @ =0x000002AD
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080936EC: .4byte 0x06012000
_080936F0: .4byte 0x000002AD

	thumb_func_start sub_080936F4
sub_080936F4: @ 0x080936F4
	push {r4, r5, r6, r7, lr}
	ldr r2, _08093714 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08093718
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08093720
	.align 2, 0
_08093714: .4byte gCurTask
_08093718:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08093720:
	adds r3, r0, #0
	ldr r6, [r3, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _0809374A
	ldr r0, [r5]
	bl TaskDestroy
	b _08093912
_0809374A:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08093794
	ldrb r0, [r1]
	cmp r0, #0
	beq _08093762
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08093762
	str r2, [r3, #0x44]
	movs r1, #0
_08093762:
	cmp r1, #0
	beq _08093794
	ldr r0, _08093790 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08093804
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08093804
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08093912
	.align 2, 0
_08093790: .4byte gUnk_03000510
_08093794:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080937FC @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080937D6
	movs r4, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080937D6
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080937D6
	movs r4, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080937D6
	movs r4, #4
_080937D6:
	ldr r0, _08093800 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08093804
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08093804
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08093912
	.align 2, 0
_080937FC: .4byte gKirbys
_08093800: .4byte gUnk_03000510
_08093804:
	ldr r0, _08093878 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809384C
	ldr r1, _0809387C @ =gCurLevelInfo
	mov ip, r1
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08093880 @ =gUnk_02026D50
_08093818:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08093844
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809385E
_08093844:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08093818
_0809384C:
	movs r0, #1
	cmp r0, #0
	beq _0809385E
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_0809385E:
	ldrh r1, [r3, #6]
	movs r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08093884
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _08093912
	.align 2, 0
_08093878: .4byte gUnk_0203AD44
_0809387C: .4byte gCurLevelInfo
_08093880: .4byte gUnk_02026D50
_08093884:
	ldrb r0, [r3, #1]
	cmp r0, #3
	bne _080938BA
	ldr r0, [r6, #0x58]
	ands r0, r2
	cmp r0, #0
	beq _080938A6
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080938A0
	movs r0, #0x80
	lsls r0, r0, #1
	b _080938EC
_080938A0:
	movs r0, #0xff
	lsls r0, r0, #8
	b _080938EC
_080938A6:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080938B4
	movs r0, #0x80
	lsls r0, r0, #2
	b _080938EC
_080938B4:
	movs r0, #0xfe
	lsls r0, r0, #8
	b _080938EC
_080938BA:
	cmp r0, #3
	bls _080938EE
	ldr r0, [r6, #0x58]
	ands r0, r2
	cmp r0, #0
	beq _080938DA
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080938D4
	ldrh r0, [r3, #0x3c]
	subs r0, #8
	b _080938EC
_080938D4:
	ldrh r0, [r3, #0x3c]
	adds r0, #8
	b _080938EC
_080938DA:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080938E8
	ldrh r0, [r3, #0x3c]
	subs r0, #0x10
	b _080938EC
_080938E8:
	ldrh r0, [r3, #0x3c]
	adds r0, #0x10
_080938EC:
	strh r0, [r3, #0x3c]
_080938EE:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809390C
	movs r0, #0x3c
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r3, r2]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_0809390C:
	adds r0, r3, #0
	bl sub_0806FAC8
_08093912:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08093918
sub_08093918: @ 0x08093918
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0809394C @ =sub_08093A4C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08093950 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08093954
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809395C
	.align 2, 0
_0809394C: .4byte sub_08093A4C
_08093950: .4byte sub_0803DCCC
_08093954:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809395C:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08093998
	movs r0, #1
	strh r0, [r5, #4]
_08093998:
	cmp r6, #1
	beq _080939D2
	movs r1, #4
	ldrsh r0, [r5, r1]
	movs r2, #0xc0
	lsls r2, r2, #2
	asrs r2, r0
	rsbs r0, r2, #0
	strh r0, [r5, #0x3c]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080939C0
	strh r2, [r5, #0x3c]
	ldr r0, [r5, #0x34]
	ldr r2, _080939BC @ =0xFFFFE000
	b _08093A06
	.align 2, 0
_080939BC: .4byte 0xFFFFE000
_080939C0:
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	ldr r0, [r5, #0x34]
	movs r1, #0xb0
	lsls r1, r1, #5
	adds r0, r0, r1
	b _08093A08
_080939D2:
	movs r2, #4
	ldrsh r0, [r5, r2]
	movs r2, #0xc0
	lsls r2, r2, #2
	asrs r2, r0
	strh r2, [r5, #0x3c]
	ldr r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	beq _08093A00
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	rsbs r0, r2, #0
	strh r0, [r5, #0x3c]
	ldr r0, [r5, #0x34]
	ldr r1, _080939FC @ =0xFFFFEA00
	adds r0, r0, r1
	b _08093A08
	.align 2, 0
_080939FC: .4byte 0xFFFFEA00
_08093A00:
	ldr r0, [r5, #0x34]
	movs r2, #0x80
	lsls r2, r2, #6
_08093A06:
	adds r0, r0, r2
_08093A08:
	str r0, [r5, #0x34]
	ldr r0, [r5, #0x38]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0xc
	adds r4, #0x56
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _08093A44 @ =0x06010600
	adds r2, r2, r0
	ldr r3, _08093A48 @ =0x000001D5
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	ldrb r0, [r4]
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x2b
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093A44: .4byte 0x06010600
_08093A48: .4byte 0x000001D5

	thumb_func_start sub_08093A4C
sub_08093A4C: @ 0x08093A4C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08093A68 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08093A6C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08093A74
	.align 2, 0
_08093A68: .4byte gCurTask
_08093A6C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08093A74:
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08093A98
	ldr r0, [r2]
	bl TaskDestroy
	b _08093C6E
_08093A98:
	ldr r0, _08093B04 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r1, #0
	beq _08093ADA
	ldr r6, _08093B08 @ =gCurLevelInfo
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r5, _08093B0C @ =gUnk_02026D50
_08093AA8:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08093AD2
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08093AEC
_08093AD2:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08093AA8
_08093ADA:
	movs r0, #1
	cmp r0, #0
	beq _08093AEC
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08093AEC:
	ldr r6, _08093B10 @ =0x00000103
	mov r7, ip
	adds r0, r7, r6
	ldrb r0, [r0]
	cmp r0, #0x11
	beq _08093B14
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	b _08093B4E
	.align 2, 0
_08093B04: .4byte gUnk_0203AD44
_08093B08: .4byte gCurLevelInfo
_08093B0C: .4byte gUnk_02026D50
_08093B10: .4byte 0x00000103
_08093B14:
	ldrh r3, [r4, #6]
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08093B46
	movs r5, #0
	ldr r0, [r4, #0x44]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0x5a
	beq _08093B36
	adds r0, r2, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08093B42
_08093B36:
	movs r6, #0xa0
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r3
	strh r0, [r4, #6]
	movs r5, #1
_08093B42:
	cmp r5, #0
	beq _08093B54
_08093B46:
	ldrh r1, [r4, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
_08093B4E:
	orrs r0, r1
	strh r0, [r4, #6]
	b _08093C6E
_08093B54:
	adds r3, r2, #0
	cmp r3, #0
	beq _08093BA4
	ldrb r0, [r3]
	cmp r0, #0
	beq _08093B70
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08093B70
	str r5, [r4, #0x44]
	movs r3, #0
_08093B70:
	cmp r3, #0
	beq _08093BA4
	ldr r0, _08093BA0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08093C14
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08093C14
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08093C6E
	.align 2, 0
_08093BA0: .4byte gUnk_03000510
_08093BA4:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08093C0C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08093BE6
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08093BE6
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08093BE6
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08093BE6
	movs r3, #4
_08093BE6:
	ldr r0, _08093C10 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08093C14
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08093C14
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08093C6E
	.align 2, 0
_08093C0C: .4byte gKirbys
_08093C10: .4byte gUnk_03000510
_08093C14:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _08093C2E
	movs r7, #4
	ldrsh r1, [r4, r7]
	movs r0, #0x28
	asrs r0, r1
	ldrh r1, [r4, #0x3c]
	adds r0, r0, r1
	b _08093C3A
_08093C2E:
	movs r6, #4
	ldrsh r0, [r4, r6]
	movs r1, #0x28
	asrs r1, r0
	ldrh r0, [r4, #0x3c]
	subs r0, r0, r1
_08093C3A:
	strh r0, [r4, #0x3c]
	movs r7, #4
	ldrsh r0, [r4, r7]
	movs r1, #0x20
	asrs r1, r0
	ldrh r0, [r4, #0x3e]
	adds r1, r1, r0
	strh r1, [r4, #0x3e]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _08093C68
	movs r2, #0x3c
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r6, #0x3e
	ldrsh r1, [r4, r6]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08093C68:
	adds r0, r4, #0
	bl sub_0806FAC8
_08093C6E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08093C74
sub_08093C74: @ 0x08093C74
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08093CA4 @ =sub_08093D10
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08093CA8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08093CAC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08093CB4
	.align 2, 0
_08093CA4: .4byte sub_08093D10
_08093CA8: .4byte sub_0803DCCC
_08093CAC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08093CB4:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r4, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r2, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #7
	ldr r0, [r5, #0x38]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	str r0, [r5, #0x38]
	orrs r1, r2
	strh r1, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08093D08 @ =0x06012000
	ldr r3, _08093D0C @ =0x000002B5
	str r4, [sp]
	movs r0, #0x14
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093D08: .4byte 0x06012000
_08093D0C: .4byte 0x000002B5

	thumb_func_start sub_08093D10
sub_08093D10: @ 0x08093D10
	push {r4, r5, r6, r7, lr}
	ldr r2, _08093D2C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08093D30
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08093D38
	.align 2, 0
_08093D2C: .4byte gCurTask
_08093D30:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08093D38:
	adds r4, r0, #0
	ldrh r1, [r4, #6]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08093D54
	ldr r0, [r2]
	bl TaskDestroy
	b _08093EF0
_08093D54:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _08093DA0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08093D6C
	ldr r0, [r1, #8]
	ands r0, r5
	cmp r0, #0
	beq _08093D6C
	str r3, [r4, #0x44]
	movs r1, #0
_08093D6C:
	cmp r1, #0
	beq _08093DA0
	ldr r0, _08093D9C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08093E10
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08093E10
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08093EF0
	.align 2, 0
_08093D9C: .4byte gUnk_03000510
_08093DA0:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08093E08 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08093DE2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08093DE2
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08093DE2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08093DE2
	movs r3, #4
_08093DE2:
	ldr r0, _08093E0C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08093E10
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08093E10
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08093EF0
	.align 2, 0
_08093E08: .4byte gKirbys
_08093E0C: .4byte gUnk_03000510
_08093E10:
	ldr r0, _08093E94 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08093E54
	ldr r6, _08093E98 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08093E9C @ =gUnk_02026D50
_08093E22:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08093E4C
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08093E66
_08093E4C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08093E22
_08093E54:
	movs r0, #1
	cmp r0, #0
	beq _08093E66
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08093E66:
	ldrh r2, [r4, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08093EB2
	ldrh r1, [r4, #0x18]
	ldr r0, _08093EA0 @ =0x000002B5
	cmp r1, r0
	bne _08093EB2
	adds r5, r4, #0
	adds r5, #0x26
	ldrb r0, [r5]
	cmp r0, #0
	bne _08093EA4
	adds r0, r4, #0
	bl sub_08093F00
	movs r1, #0
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strb r1, [r5]
	b _08093EB2
	.align 2, 0
_08093E94: .4byte gUnk_0203AD44
_08093E98: .4byte gCurLevelInfo
_08093E9C: .4byte gUnk_02026D50
_08093EA0: .4byte 0x000002B5
_08093EA4:
	cmp r0, #1
	bne _08093EB2
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r2
	strh r0, [r4, #6]
_08093EB2:
	ldrh r1, [r4, #0x18]
	movs r0, #0xa5
	lsls r0, r0, #2
	cmp r1, r0
	bne _08093EEA
	ldrh r1, [r4, #6]
	movs r0, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r4, #6]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _08093EEA
	ldr r0, _08093EF8 @ =0x0000FFFB
	ands r1, r0
	adds r0, #2
	ands r1, r0
	strh r1, [r4, #6]
	ldr r0, _08093EFC @ =0x000002B5
	strh r0, [r4, #0x18]
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #1
	strb r0, [r1]
_08093EEA:
	adds r0, r4, #0
	bl sub_0806FAC8
_08093EF0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08093EF8: .4byte 0x0000FFFB
_08093EFC: .4byte 0x000002B5

	thumb_func_start sub_08093F00
sub_08093F00: @ 0x08093F00
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08093F30 @ =sub_08093F90
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08093F34 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08093F38
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08093F40
	.align 2, 0
_08093F30: .4byte sub_08093F90
_08093F34: .4byte sub_0803DCCC
_08093F38:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08093F40:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r4, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x34]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x38]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x42
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08093F8C @ =0x06012000
	movs r3, #0xa5
	lsls r3, r3, #2
	str r4, [sp]
	movs r0, #0x15
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093F8C: .4byte 0x06012000

	thumb_func_start sub_08093F90
sub_08093F90: @ 0x08093F90
	push {r4, r5, r6, r7, lr}
	ldr r2, _08093FB0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08093FB4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08093FBC
	.align 2, 0
_08093FB0: .4byte gCurTask
_08093FB4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08093FBC:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08093FD8
	ldr r0, [r5]
	bl TaskDestroy
	b _0809411E
_08093FD8:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08094024
	ldrb r0, [r1]
	cmp r0, #0
	beq _08093FF0
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08093FF0
	str r2, [r3, #0x44]
	movs r1, #0
_08093FF0:
	cmp r1, #0
	beq _08094024
	ldr r0, _08094020 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094094
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094094
	adds r0, r3, #0
	bl sub_0803DBC8
	b _0809411E
	.align 2, 0
_08094020: .4byte gUnk_03000510
_08094024:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _0809408C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08094066
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094066
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094066
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094066
	movs r4, #4
_08094066:
	ldr r0, _08094090 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094094
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094094
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0809411E
	.align 2, 0
_0809408C: .4byte gKirbys
_08094090: .4byte gUnk_03000510
_08094094:
	ldr r0, _0809410C @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r3, #4]
	mov ip, r7
	cmp r0, #0
	beq _080940DC
	ldr r6, _08094110 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08094114 @ =gUnk_02026D50
_080940AA:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080940D4
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080940EE
_080940D4:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080940AA
_080940DC:
	movs r0, #1
	cmp r0, #0
	beq _080940EE
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080940EE:
	mov r0, ip
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _08094118
	ldrh r0, [r3, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r1, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _0809411E
	.align 2, 0
_0809410C: .4byte gUnk_0203AD44
_08094110: .4byte gCurLevelInfo
_08094114: .4byte gUnk_02026D50
_08094118:
	adds r0, r3, #0
	bl sub_0806FAC8
_0809411E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08094124
sub_08094124: @ 0x08094124
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08094154 @ =sub_080941F0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08094158 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809415C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08094164
	.align 2, 0
_08094154: .4byte sub_080941F0
_08094158: .4byte sub_0803DCCC
_0809415C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08094164:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #0x38]
	ldr r1, _080941A4 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080941AC
	ldrh r0, [r5, #6]
	orrs r0, r1
	strh r0, [r5, #6]
	ldr r0, [r5, #0x34]
	ldr r1, _080941A8 @ =0xFFFFED00
	b _080941B2
	.align 2, 0
_080941A4: .4byte 0xFFFFF000
_080941A8: .4byte 0xFFFFED00
_080941AC:
	ldr r0, [r5, #0x34]
	movs r1, #0x98
	lsls r1, r1, #5
_080941B2:
	adds r0, r0, r1
	str r0, [r5, #0x34]
	adds r1, r5, #0
	adds r1, #0xc
	adds r4, #0x56
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _080941E8 @ =0x06010400
	adds r2, r2, r0
	ldr r3, _080941EC @ =0x00000205
	movs r0, #0
	str r0, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	ldrb r0, [r4]
	adds r0, #4
	adds r1, r5, #0
	adds r1, #0x2b
	strb r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080941E8: .4byte 0x06010400
_080941EC: .4byte 0x00000205

	thumb_func_start sub_080941F0
sub_080941F0: @ 0x080941F0
	push {r4, r5, r6, r7, lr}
	ldr r2, _0809420C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08094210
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08094218
	.align 2, 0
_0809420C: .4byte gCurTask
_08094210:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08094218:
	adds r4, r0, #0
	ldr r6, [r4, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0809423C
	ldr r0, [r2]
	bl TaskDestroy
	b _08094474
_0809423C:
	ldr r0, _080942E8 @ =gUnk_0203AD44
	ldrb r1, [r0]
	cmp r1, #0
	beq _08094282
	ldr r0, _080942EC @ =gCurLevelInfo
	mov ip, r0
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r5, _080942F0 @ =gUnk_02026D50
_0809424E:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809427A
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08094294
_0809427A:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _0809424E
_08094282:
	movs r0, #1
	cmp r0, #0
	beq _08094294
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08094294:
	ldr r3, _080942F4 @ =0x00000103
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080942C0
	adds r1, r6, #0
	adds r1, #0xd4
	ldrh r2, [r1]
	adds r0, r2, #0
	subs r0, #0x34
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r7, r1, #0
	cmp r0, #2
	bls _08094304
	adds r0, r2, #0
	cmp r0, #0x67
	beq _08094304
	cmp r0, #0x68
	beq _08094304
	cmp r0, #0x69
	beq _08094304
_080942C0:
	ldr r2, _080942F8 @ =0x00000292
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x38]
	ldr r6, _080942FC @ =0xFFFFF000
	adds r0, r0, r6
	str r0, [r2, #0x38]
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08094370
	ldr r0, [r2, #0x34]
	ldr r7, _08094300 @ =0xFFFFED00
	adds r0, r0, r7
	b _08094378
	.align 2, 0
_080942E8: .4byte gUnk_0203AD44
_080942EC: .4byte gCurLevelInfo
_080942F0: .4byte gUnk_02026D50
_080942F4: .4byte 0x00000103
_080942F8: .4byte 0x00000292
_080942FC: .4byte 0xFFFFF000
_08094300: .4byte 0xFFFFED00
_08094304:
	ldr r3, _08094360 @ =0x00000103
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _08094338
	movs r5, #0
	ldr r0, [r4, #0x44]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0x5a
	beq _08094326
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08094334
_08094326:
	ldrh r1, [r4, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r5, #1
_08094334:
	cmp r5, #0
	beq _08094388
_08094338:
	ldr r2, _08094364 @ =0x00000292
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r2, r0, #0
	ldr r0, [r2, #0x38]
	ldr r6, _08094368 @ =0xFFFFF000
	adds r0, r0, r6
	str r0, [r2, #0x38]
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08094370
	ldr r0, [r2, #0x34]
	ldr r7, _0809436C @ =0xFFFFED00
	adds r0, r0, r7
	b _08094378
	.align 2, 0
_08094360: .4byte 0x00000103
_08094364: .4byte 0x00000292
_08094368: .4byte 0xFFFFF000
_0809436C: .4byte 0xFFFFED00
_08094370:
	ldr r0, [r2, #0x34]
	movs r1, #0x98
	lsls r1, r1, #5
	adds r0, r0, r1
_08094378:
	str r0, [r2, #0x34]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08094474
_08094388:
	adds r3, r2, #0
	cmp r3, #0
	beq _080943D8
	ldrb r0, [r3]
	cmp r0, #0
	beq _080943A4
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080943A4
	str r5, [r4, #0x44]
	movs r3, #0
_080943A4:
	cmp r3, #0
	beq _080943D8
	ldr r0, _080943D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094448
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094448
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08094474
	.align 2, 0
_080943D4: .4byte gUnk_03000510
_080943D8:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08094440 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809441A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809441A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809441A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809441A
	movs r3, #4
_0809441A:
	ldr r0, _08094444 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094448
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094448
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08094474
	.align 2, 0
_08094440: .4byte gKirbys
_08094444: .4byte gUnk_03000510
_08094448:
	ldrh r0, [r4, #6]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r4, #6]
	ldrh r0, [r7]
	cmp r0, #0x67
	bne _08094468
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r4, #0x20]
	b _0809446E
_08094468:
	adds r0, r4, #0
	adds r0, #0x26
	strb r2, [r0]
_0809446E:
	adds r0, r4, #0
	bl sub_0806FAC8
_08094474:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809447C
sub_0809447C: @ 0x0809447C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080944AC @ =sub_08094540
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080944B0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080944B4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080944BC
	.align 2, 0
_080944AC: .4byte sub_08094540
_080944B0: .4byte sub_0803DCCC
_080944B4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080944BC:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #0x38]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08094504
	ldrh r0, [r5, #6]
	orrs r0, r1
	strh r0, [r5, #6]
	ldr r0, [r5, #0x34]
	ldr r2, _08094500 @ =0xFFFFF800
	adds r0, r0, r2
	b _0809450C
	.align 2, 0
_08094500: .4byte 0xFFFFF800
_08094504:
	ldr r0, [r5, #0x34]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
_0809450C:
	str r0, [r5, #0x34]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08094538 @ =0x06012000
	ldr r3, _0809453C @ =0x000002B7
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094538: .4byte 0x06012000
_0809453C: .4byte 0x000002B7

	thumb_func_start sub_08094540
sub_08094540: @ 0x08094540
	push {r4, r5, r6, r7, lr}
	ldr r2, _08094560 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08094564
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809456C
	.align 2, 0
_08094560: .4byte gCurTask
_08094564:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809456C:
	adds r4, r0, #0
	ldr r3, [r4, #0x44]
	adds r0, r3, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08094596
	ldr r0, [r6]
	bl TaskDestroy
	b _08094910
_08094596:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _080945E0
	ldrb r0, [r1]
	cmp r0, #0
	beq _080945AE
	ldr r0, [r1, #8]
	ands r0, r5
	cmp r0, #0
	beq _080945AE
	str r2, [r4, #0x44]
	movs r1, #0
_080945AE:
	cmp r1, #0
	beq _080945E0
	ldr r0, _080945DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094654
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094654
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08094910
	.align 2, 0
_080945DC: .4byte gUnk_03000510
_080945E0:
	mov ip, r4
	movs r5, #0
	ldr r2, _0809464C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08094622
	movs r5, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094622
	movs r5, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094622
	movs r5, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094622
	movs r5, #4
_08094622:
	ldr r0, _08094650 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094654
	mov r7, ip
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094654
	mov r0, ip
	bl sub_0803DBC8
	b _08094910
	.align 2, 0
_0809464C: .4byte gKirbys
_08094650: .4byte gUnk_03000510
_08094654:
	ldr r0, _080946F8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809469C
	ldr r1, _080946FC @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r5, [r1]
	ldr r6, _08094700 @ =gUnk_02026D50
_08094668:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r5
	bne _08094694
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080946AE
_08094694:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08094668
_0809469C:
	movs r0, #1
	cmp r0, #0
	beq _080946AE
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080946AE:
	ldr r5, _08094704 @ =0x00000103
	adds r0, r3, r5
	ldrb r0, [r0]
	cmp r0, #0x14
	bne _080946EA
	adds r0, r3, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x1b
	bne _080946EA
	movs r2, #0
	ldr r1, [r4, #0x44]
	adds r0, r1, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _080946D8
	adds r0, r1, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _080946E6
_080946D8:
	ldrh r1, [r4, #6]
	movs r6, #0xa0
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r2, #1
_080946E6:
	cmp r2, #0
	beq _08094708
_080946EA:
	ldrh r1, [r4, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08094910
	.align 2, 0
_080946F8: .4byte gUnk_0203AD44
_080946FC: .4byte gCurLevelInfo
_08094700: .4byte gUnk_02026D50
_08094704: .4byte 0x00000103
_08094708:
	ldrh r1, [r4, #6]
	movs r0, #4
	movs r5, #0
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r4, #6]
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809472E
	movs r0, #1
	orrs r2, r0
	strh r2, [r4, #6]
	ldr r0, [r3, #0x40]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	b _0809473A
_0809472E:
	ldr r0, _08094760 @ =0x0000FFFE
	ands r2, r0
	strh r2, [r4, #6]
	ldr r0, [r3, #0x40]
	ldr r2, _08094764 @ =0xFFFFF800
	adds r0, r0, r2
_0809473A:
	str r0, [r4, #0x34]
	ldr r0, [r3, #0x44]
	movs r6, #0x80
	lsls r6, r6, #2
	adds r0, r0, r6
	str r0, [r4, #0x38]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r3, r7
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	bne _08094768
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #2
	b _08094778
	.align 2, 0
_08094760: .4byte 0x0000FFFE
_08094764: .4byte 0xFFFFF800
_08094768:
	adds r0, r3, #0
	adds r0, #0xd8
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809477A
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #1
_08094778:
	strb r0, [r1]
_0809477A:
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _08094782
	b _0809490A
_08094782:
	adds r0, r4, #0
	adds r0, #0x26
	ldrb r0, [r0]
	cmp r0, #0
	bne _08094818
	ldr r1, _08094800 @ =gKirbys
	ldr r0, _08094804 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080947AA
	b _0809490A
_080947AA:
	ldrb r0, [r3]
	cmp r0, #0
	bne _080947BC
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _080947BC
	b _0809490A
_080947BC:
	ldr r1, _08094808 @ =gUnk_08D60FA4
	ldr r5, _0809480C @ =gSongTable
	ldr r2, _08094810 @ =0x0000066C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080947E4
	movs r6, #0xcd
	lsls r6, r6, #3
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _080947E4
	b _0809490A
_080947E4:
	cmp r3, #0
	beq _080947F8
	ldr r0, _08094814 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080947F8
	b _0809490A
_080947F8:
	movs r0, #0xcd
	bl m4aSongNumStart
	b _0809490A
	.align 2, 0
_08094800: .4byte gKirbys
_08094804: .4byte gUnk_0203AD3C
_08094808: .4byte gUnk_08D60FA4
_0809480C: .4byte gSongTable
_08094810: .4byte 0x0000066C
_08094814: .4byte gUnk_0203AD10
_08094818:
	cmp r0, #1
	bne _080948A0
	ldr r1, _08094888 @ =gKirbys
	ldr r0, _0809488C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809490A
	ldrb r0, [r3]
	cmp r0, #0
	bne _08094848
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809490A
_08094848:
	ldr r1, _08094890 @ =gUnk_08D60FA4
	ldr r5, _08094894 @ =gSongTable
	ldr r7, _08094898 @ =0x00000674
	adds r0, r5, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809486E
	movs r1, #0xce
	lsls r1, r1, #3
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809490A
_0809486E:
	cmp r3, #0
	beq _08094880
	ldr r0, _0809489C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809490A
_08094880:
	movs r0, #0xce
	bl m4aSongNumStart
	b _0809490A
	.align 2, 0
_08094888: .4byte gKirbys
_0809488C: .4byte gUnk_0203AD3C
_08094890: .4byte gUnk_08D60FA4
_08094894: .4byte gSongTable
_08094898: .4byte 0x00000674
_0809489C: .4byte gUnk_0203AD10
_080948A0:
	ldr r1, _08094918 @ =gKirbys
	ldr r0, _0809491C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809490A
	ldrb r0, [r3]
	cmp r0, #0
	bne _080948CC
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809490A
_080948CC:
	ldr r1, _08094920 @ =gUnk_08D60FA4
	ldr r5, _08094924 @ =gSongTable
	ldr r2, _08094928 @ =0x0000067C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080948F2
	movs r6, #0xcf
	lsls r6, r6, #3
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809490A
_080948F2:
	cmp r3, #0
	beq _08094904
	ldr r0, _0809492C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809490A
_08094904:
	movs r0, #0xcf
	bl m4aSongNumStart
_0809490A:
	adds r0, r4, #0
	bl sub_0806FAC8
_08094910:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094918: .4byte gKirbys
_0809491C: .4byte gUnk_0203AD3C
_08094920: .4byte gUnk_08D60FA4
_08094924: .4byte gSongTable
_08094928: .4byte 0x0000067C
_0809492C: .4byte gUnk_0203AD10

	thumb_func_start sub_08094930
sub_08094930: @ 0x08094930
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08094960 @ =sub_080949C8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08094964 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08094968
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08094970
	.align 2, 0
_08094960: .4byte sub_080949C8
_08094964: .4byte sub_0803DCCC
_08094968:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08094970:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r4, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r0, #4
	strh r0, [r5, #4]
	str r6, [r5, #0x44]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _080949C0 @ =0x06012000
	ldr r3, _080949C4 @ =0x000002B2
	str r4, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080949C0: .4byte 0x06012000
_080949C4: .4byte 0x000002B2

	thumb_func_start sub_080949C8
sub_080949C8: @ 0x080949C8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _080949EC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _080949F0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080949F8
	.align 2, 0
_080949EC: .4byte gCurTask
_080949F0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080949F8:
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r5, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08094A22
	ldr r0, [r6]
	bl TaskDestroy
	b _08094C24
_08094A22:
	adds r1, r5, #0
	cmp r5, #0
	beq _08094A6C
	ldrb r0, [r5]
	cmp r0, #0
	beq _08094A3A
	ldr r0, [r5, #8]
	ands r0, r2
	cmp r0, #0
	beq _08094A3A
	str r3, [r4, #0x44]
	movs r1, #0
_08094A3A:
	cmp r1, #0
	beq _08094A6C
	ldr r0, _08094A68 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094ADC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094ADC
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08094C24
	.align 2, 0
_08094A68: .4byte gUnk_03000510
_08094A6C:
	adds r6, r4, #0
	movs r3, #0
	ldr r2, _08094AD4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08094AAE
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094AAE
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094AAE
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094AAE
	movs r3, #4
_08094AAE:
	ldr r0, _08094AD8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094ADC
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094ADC
	adds r0, r6, #0
	bl sub_0803DBC8
	b _08094C24
	.align 2, 0
_08094AD4: .4byte gKirbys
_08094AD8: .4byte gUnk_03000510
_08094ADC:
	ldr r0, _08094B74 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r4, #4]
	mov ip, r1
	cmp r0, #0
	beq _08094B28
	ldr r2, _08094B78 @ =gCurLevelInfo
	mov r8, r2
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r6, _08094B7C @ =gUnk_02026D50
_08094AF4:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08094B20
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08094B3A
_08094B20:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08094AF4
_08094B28:
	movs r0, #1
	cmp r0, #0
	beq _08094B3A
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08094B3A:
	mov r0, ip
	subs r0, #1
	movs r6, #0
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	ldr r1, _08094B80 @ =0xFFFF0000
	cmp r0, r1
	bne _08094B54
	movs r0, #4
	strh r0, [r4, #4]
	adds r0, r5, #0
	bl sub_08094C50
_08094B54:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08094B84
	ldrh r0, [r4, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r0, #0
	str r0, [r4, #0x44]
	b _08094C24
	.align 2, 0
_08094B74: .4byte gUnk_0203AD44
_08094B78: .4byte gCurLevelInfo
_08094B7C: .4byte gUnk_02026D50
_08094B80: .4byte 0xFFFF0000
_08094B84:
	ldrh r0, [r4, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r4, #6]
	adds r0, r5, #0
	adds r0, #0x34
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	adds r0, r5, #0
	adds r0, #0x35
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrb r1, [r4, #1]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08094C24
	ldr r1, _08094C30 @ =gKirbys
	ldr r0, _08094C34 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08094C24
	ldrb r0, [r5]
	cmp r0, #0
	bne _08094BE8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08094C24
_08094BE8:
	ldr r1, _08094C38 @ =gUnk_08D60FA4
	ldr r4, _08094C3C @ =gSongTable
	ldr r2, _08094C40 @ =0x00001014
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08094C0C
	ldr r7, _08094C44 @ =0x00001010
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08094C24
_08094C0C:
	cmp r3, #0
	beq _08094C1E
	ldr r0, _08094C48 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08094C24
_08094C1E:
	ldr r0, _08094C4C @ =0x00000202
	bl m4aSongNumStart
_08094C24:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08094C30: .4byte gKirbys
_08094C34: .4byte gUnk_0203AD3C
_08094C38: .4byte gUnk_08D60FA4
_08094C3C: .4byte gSongTable
_08094C40: .4byte 0x00001014
_08094C44: .4byte 0x00001010
_08094C48: .4byte gUnk_0203AD10
_08094C4C: .4byte 0x00000202

	thumb_func_start sub_08094C50
sub_08094C50: @ 0x08094C50
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08094C80 @ =sub_08094D30
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08094C84 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08094C88
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08094C90
	.align 2, 0
_08094C80: .4byte sub_08094D30
_08094C84: .4byte sub_0803DCCC
_08094C88:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08094C90:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r3, _08094D18 @ =gRngVal
	ldr r1, [r3]
	ldr r0, _08094D1C @ =0x00196225
	adds r2, r1, #0
	muls r2, r0, r2
	ldr r0, _08094D20 @ =0x3C6EF35F
	adds r2, r2, r0
	str r2, [r3]
	lsrs r2, r2, #0x10
	movs r0, #7
	ands r2, r0
	ldr r3, _08094D24 @ =gUnk_08350EE0
	lsls r2, r2, #1
	adds r0, r2, r3
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	adds r3, #1
	adds r2, r2, r3
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #8
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	movs r0, #4
	strh r0, [r4, #4]
	str r5, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08094D28 @ =0x06012000
	ldr r3, _08094D2C @ =0x00000291
	movs r0, #1
	str r0, [sp]
	movs r0, #9
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094D18: .4byte gRngVal
_08094D1C: .4byte 0x00196225
_08094D20: .4byte 0x3C6EF35F
_08094D24: .4byte gUnk_08350EE0
_08094D28: .4byte 0x06012000
_08094D2C: .4byte 0x00000291

	thumb_func_start sub_08094D30
sub_08094D30: @ 0x08094D30
	push {r4, r5, r6, r7, lr}
	ldr r2, _08094D50 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08094D54
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08094D5C
	.align 2, 0
_08094D50: .4byte gCurTask
_08094D54:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08094D5C:
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08094D84
	ldr r0, [r5]
	bl TaskDestroy
	b _08094ED4
_08094D84:
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _08094DD0
	ldrb r0, [r1]
	cmp r0, #0
	beq _08094D9C
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	beq _08094D9C
	str r3, [r4, #0x44]
	movs r1, #0
_08094D9C:
	cmp r1, #0
	beq _08094DD0
	ldr r0, _08094DCC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094E40
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094E40
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08094ED4
	.align 2, 0
_08094DCC: .4byte gUnk_03000510
_08094DD0:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08094E38 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08094E12
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094E12
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094E12
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08094E12
	movs r3, #4
_08094E12:
	ldr r0, _08094E3C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08094E40
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08094E40
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08094ED4
	.align 2, 0
_08094E38: .4byte gKirbys
_08094E3C: .4byte gUnk_03000510
_08094E40:
	ldr r0, _08094EB4 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r4, #4]
	mov ip, r7
	cmp r0, #0
	beq _08094E88
	ldr r6, _08094EB8 @ =gCurLevelInfo
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08094EBC @ =gUnk_02026D50
_08094E56:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08094E80
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08094E9A
_08094E80:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08094E56
_08094E88:
	movs r0, #1
	cmp r0, #0
	beq _08094E9A
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08094E9A:
	mov r3, ip
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _08094EC0
	ldrh r1, [r4, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	str r2, [r4, #0x44]
	b _08094ED4
	.align 2, 0
_08094EB4: .4byte gUnk_0203AD44
_08094EB8: .4byte gCurLevelInfo
_08094EBC: .4byte gUnk_02026D50
_08094EC0:
	ldrh r0, [r4, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r4, #6]
	adds r0, r4, #0
	bl sub_0806FAC8
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
_08094ED4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08094EDC
sub_08094EDC: @ 0x08094EDC
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _08094F0C @ =sub_08094F7C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08094F10 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08094F14
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08094F1C
	.align 2, 0
_08094F0C: .4byte sub_08094F7C
_08094F10: .4byte sub_0803DCCC
_08094F14:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08094F1C:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r4, #9
	strh r4, [r5, #4]
	ldr r0, [r5, #0x38]
	ldr r1, _08094F74 @ =0xFFFFF000
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08094F78 @ =0x06012000
	movs r3, #0xaa
	lsls r3, r3, #2
	movs r0, #6
	str r0, [sp]
	str r4, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08094F74: .4byte 0xFFFFF000
_08094F78: .4byte 0x06012000

	thumb_func_start sub_08094F7C
sub_08094F7C: @ 0x08094F7C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08094F9C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08094FA0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08094FA8
	.align 2, 0
_08094F9C: .4byte gCurTask
_08094FA0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08094FA8:
	adds r3, r0, #0
	ldr r0, [r3, #0x44]
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08094FD0
	ldr r0, [r5]
	bl TaskDestroy
	b _08095130
_08094FD0:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _0809501C
	ldrb r0, [r1]
	cmp r0, #0
	beq _08094FE8
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08094FE8
	str r2, [r3, #0x44]
	movs r1, #0
_08094FE8:
	cmp r1, #0
	beq _0809501C
	ldr r0, _08095018 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809508C
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809508C
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08095130
	.align 2, 0
_08095018: .4byte gUnk_03000510
_0809501C:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08095084 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809505E
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809505E
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809505E
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809505E
	movs r4, #4
_0809505E:
	ldr r0, _08095088 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809508C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809508C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08095130
	.align 2, 0
_08095084: .4byte gKirbys
_08095088: .4byte gUnk_03000510
_0809508C:
	ldr r0, _08095100 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r6, [r3, #4]
	cmp r0, #0
	beq _080950D6
	ldr r7, _08095104 @ =gCurLevelInfo
	mov ip, r7
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08095108 @ =gUnk_02026D50
_080950A2:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, ip
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080950CE
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080950E8
_080950CE:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080950A2
_080950D6:
	movs r0, #1
	cmp r0, #0
	beq _080950E8
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080950E8:
	lsls r0, r6, #0x10
	asrs r2, r0, #0x10
	cmp r2, #0
	bne _0809510C
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r1
	strh r0, [r3, #6]
	str r2, [r3, #0x44]
	b _08095130
	.align 2, 0
_08095100: .4byte gUnk_0203AD44
_08095104: .4byte gCurLevelInfo
_08095108: .4byte gUnk_02026D50
_0809510C:
	ldr r0, [r3, #0x38]
	ldr r7, _08095138 @ =0xFFFFFE00
	adds r0, r0, r7
	str r0, [r3, #0x38]
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809512A
	subs r0, r6, #1
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0809512A:
	adds r0, r3, #0
	bl sub_0806FAC8
_08095130:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08095138: .4byte 0xFFFFFE00

	thumb_func_start sub_0809513C
sub_0809513C: @ 0x0809513C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	ldr r0, _08095174 @ =sub_080951E4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08095178 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809517C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08095184
	.align 2, 0
_08095174: .4byte sub_080951E4
_08095178: .4byte sub_0803DCCC
_0809517C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08095184:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r0, #0
	mov ip, r0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r3, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	lsls r0, r4, #0x18
	asrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r5, #8]
	orrs r2, r3
	strh r2, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _080951DC @ =0x06012000
	ldr r3, _080951E0 @ =0x000002BB
	mov r0, ip
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080951DC: .4byte 0x06012000
_080951E0: .4byte 0x000002BB

	thumb_func_start sub_080951E4
sub_080951E4: @ 0x080951E4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _08095208 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809520C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08095214
	.align 2, 0
_08095208: .4byte gCurTask
_0809520C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08095214:
	adds r4, r0, #0
	ldr r3, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0809522C
	ldr r0, [r2]
	bl TaskDestroy
	b _080953C6
_0809522C:
	ldr r0, _080952C8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r1, #0x42
	adds r1, r1, r4
	mov ip, r1
	movs r2, #0x60
	adds r2, r2, r3
	mov r8, r2
	cmp r0, #0
	beq _0809527C
	ldr r6, _080952CC @ =gCurLevelInfo
	mov sb, r6
	ldrh r5, [r1]
	ldr r6, _080952D0 @ =gUnk_02026D50
_08095248:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, sb
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r5
	bne _08095274
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809528E
_08095274:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08095248
_0809527C:
	movs r0, #1
	cmp r0, #0
	beq _0809528E
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0809528E:
	mov r6, r8
	ldrh r0, [r6]
	mov r7, ip
	strh r0, [r7]
	ldrh r2, [r4, #8]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x44]
	adds r0, r0, r2
	str r0, [r4, #0x38]
	ldr r2, [r3, #8]
	movs r0, #0xa0
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _080952D4
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _080953C6
	.align 2, 0
_080952C8: .4byte gUnk_0203AD44
_080952CC: .4byte gCurLevelInfo
_080952D0: .4byte gUnk_02026D50
_080952D4:
	ldr r3, [r4, #0x44]
	cmp r3, #0
	beq _08095324
	ldrb r0, [r3]
	cmp r0, #0
	beq _080952F0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080952F0
	str r2, [r4, #0x44]
	movs r3, #0
_080952F0:
	cmp r3, #0
	beq _08095324
	ldr r0, _08095320 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08095394
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08095394
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080953C6
	.align 2, 0
_08095320: .4byte gUnk_03000510
_08095324:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _0809538C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, ip
	ldrh r1, [r6]
	cmp r0, r1
	beq _08095364
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08095364
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08095364
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08095364
	movs r3, #4
_08095364:
	ldr r0, _08095390 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08095394
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08095394
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080953C6
	.align 2, 0
_0809538C: .4byte gKirbys
_08095390: .4byte gUnk_03000510
_08095394:
	ldrh r0, [r4, #4]
	movs r1, #3
	ands r1, r0
	cmp r1, #0
	bne _080953BC
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb
	ble _080953B0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x20]
	strh r1, [r4, #4]
	b _080953B6
_080953B0:
	movs r0, #0xe0
	lsls r0, r0, #3
	strh r0, [r4, #0x20]
_080953B6:
	adds r0, r4, #0
	bl sub_0806FAC8
_080953BC:
	ldrh r0, [r4, #4]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strh r0, [r4, #4]
_080953C6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080953D4
sub_080953D4: @ 0x080953D4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _0809540C @ =sub_08095468
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08095410 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095414
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0809541C
	.align 2, 0
_0809540C: .4byte sub_08095468
_08095410: .4byte sub_0803DCCC
_08095414:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0809541C:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r2, #0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	orrs r0, r1
	strh r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xc
	movs r3, #0xb2
	lsls r3, r3, #2
	str r2, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x10
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08095468
sub_08095468: @ 0x08095468
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _0809548C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095490
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08095498
	.align 2, 0
_0809548C: .4byte gCurTask
_08095490:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08095498:
	adds r5, r0, #0
	ldr r3, [r5, #0x44]
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080954B0
	ldr r0, [r2]
	bl TaskDestroy
	b _08095706
_080954B0:
	ldr r0, _0809554C @ =gUnk_0203AD44
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #0x42
	movs r1, #0x60
	adds r1, r1, r3
	mov r8, r1
	cmp r0, #0
	beq _08095500
	ldr r2, _08095550 @ =gCurLevelInfo
	mov ip, r2
	ldrh r4, [r7]
	ldr r6, _08095554 @ =gUnk_02026D50
	mov sb, r6
_080954CC:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, ip
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r4
	bne _080954F8
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, sb
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08095512
_080954F8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080954CC
_08095500:
	movs r0, #1
	cmp r0, #0
	beq _08095512
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_08095512:
	mov r6, r8
	ldrh r0, [r6]
	strh r0, [r7]
	ldrh r2, [r5, #8]
	lsls r1, r2, #0x10
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	lsls r2, r2, #0x18
	asrs r2, r2, #0x10
	ldr r0, [r3, #0x44]
	adds r0, r0, r2
	str r0, [r5, #0x38]
	ldr r0, [r3, #8]
	movs r1, #0xa0
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08095558
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _08095706
	.align 2, 0
_0809554C: .4byte gUnk_0203AD44
_08095550: .4byte gCurLevelInfo
_08095554: .4byte gUnk_02026D50
_08095558:
	ldr r2, _080955BC @ =gKirbys
	ldr r0, _080955C0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r7]
	cmp r0, r6
	bne _08095604
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080955CC
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0809562C
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080955C4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080955C8 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _0809562C
	.align 2, 0
_080955BC: .4byte gKirbys
_080955C0: .4byte gUnk_0203AD3C
_080955C4: .4byte 0xFFF7FFFF
_080955C8: .4byte 0x0400000A
_080955CC:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0809562C
	movs r0, #0x10
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080955FC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08095600 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _0809562C
	.align 2, 0
_080955FC: .4byte 0xFFF7FFFF
_08095600: .4byte 0x0400000A
_08095604:
	ldr r2, [r5, #0xc]
	cmp r2, #0
	beq _08095622
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08095622
	adds r0, r2, #0
	bl VramFree
	str r4, [r5, #0xc]
_08095622:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_0809562C:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _08095680
	ldrb r0, [r3]
	cmp r0, #0
	beq _0809564A
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _0809564A
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_0809564A:
	cmp r3, #0
	beq _08095680
	ldr r0, _0809567C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080956EC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080956EC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08095706
	.align 2, 0
_0809567C: .4byte gUnk_03000510
_08095680:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080956E4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080956BE
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080956BE
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080956BE
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080956BE
	movs r3, #4
_080956BE:
	ldr r0, _080956E8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080956EC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080956EC
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08095706
	.align 2, 0
_080956E4: .4byte gKirbys
_080956E8: .4byte gUnk_03000510
_080956EC:
	ldrh r1, [r5, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080956FC
	adds r0, r5, #0
	bl sub_0806FAC8
_080956FC:
	ldrh r0, [r5, #4]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strh r0, [r5, #4]
_08095706:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08095714
sub_08095714: @ 0x08095714
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08095744 @ =sub_080957F4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08095748 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809574C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08095754
	.align 2, 0
_08095744: .4byte sub_080957F4
_08095748: .4byte sub_0803DCCC
_0809574C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08095754:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08095786
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_08095786:
	ldr r0, _080957EC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	adds r0, r6, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080957AA
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080957AA:
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r0, _080957F0 @ =0x06010200
	adds r2, r2, r0
	movs r3, #0x88
	lsls r3, r3, #2
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldrh r0, [r5, #0x24]
	strh r0, [r4, #0x20]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080957EC: .4byte gUnk_03000510
_080957F0: .4byte 0x06010200

	thumb_func_start sub_080957F4
sub_080957F4: @ 0x080957F4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08095814 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095818
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08095820
	.align 2, 0
_08095814: .4byte gCurTask
_08095818:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08095820:
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r3, [r0]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08095844
	ldr r0, [r2]
	bl TaskDestroy
	b _080959E8
_08095844:
	ldr r0, _080958DC @ =gUnk_0203AD44
	ldrb r1, [r0]
	ldr r5, [r4, #0x44]
	cmp r1, #0
	beq _0809588C
	ldr r2, _080958E0 @ =gCurLevelInfo
	mov r8, r2
	lsls r0, r3, #0x10
	lsrs r3, r0, #0x10
	ldr r6, _080958E4 @ =gUnk_02026D50
_08095858:
	subs r2, r1, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08095884
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r6
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809589E
_08095884:
	lsls r0, r2, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0
	bne _08095858
_0809588C:
	movs r0, #1
	cmp r0, #0
	beq _0809589E
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0809589E:
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _080958B4
	ldr r6, _080958E8 @ =0x00000103
	adds r0, r5, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _080958C2
_080958B4:
	ldrh r1, [r4, #6]
	movs r7, #0xa0
	lsls r7, r7, #5
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r2, #1
_080958C2:
	cmp r2, #0
	beq _080958C8
	b _080959E8
_080958C8:
	ldr r0, _080958E8 @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0x19
	beq _080958EC
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	b _080959DC
	.align 2, 0
_080958DC: .4byte gUnk_0203AD44
_080958E0: .4byte gCurLevelInfo
_080958E4: .4byte gUnk_02026D50
_080958E8: .4byte 0x00000103
_080958EC:
	adds r3, r5, #0
	cmp r3, #0
	beq _0809593C
	ldrb r0, [r3]
	cmp r0, #0
	beq _08095908
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08095908
	str r2, [r4, #0x44]
	movs r3, #0
_08095908:
	cmp r3, #0
	beq _0809593C
	ldr r0, _08095938 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080959AC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080959AC
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080959E8
	.align 2, 0
_08095938: .4byte gUnk_03000510
_0809593C:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _080959A4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809597E
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809597E
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809597E
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809597E
	movs r3, #4
_0809597E:
	ldr r0, _080959A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080959AC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080959AC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080959E8
	.align 2, 0
_080959A4: .4byte gKirbys
_080959A8: .4byte gUnk_03000510
_080959AC:
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	subs r0, #0x67
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #7
	bls _080959C6
	ldrh r1, [r4, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r7, #0
	b _080959DC
_080959C6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	bne _080959E2
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
_080959DC:
	orrs r0, r1
	strh r0, [r4, #6]
	b _080959E8
_080959E2:
	adds r0, r4, #0
	bl sub_0806FAC8
_080959E8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080959F4
sub_080959F4: @ 0x080959F4
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08095A24 @ =sub_08095AD4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08095A28 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095A2C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08095A34
	.align 2, 0
_08095A24: .4byte sub_08095AD4
_08095A28: .4byte sub_0803DCCC
_08095A2C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08095A34:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08095A66
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_08095A66:
	ldr r0, _08095AC8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	adds r0, r6, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08095A8A
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08095A8A:
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r0, _08095ACC @ =0x06010200
	adds r2, r2, r0
	ldr r0, _08095AD0 @ =gUnk_0834D484
	ldrh r3, [r0, #0x14]
	ldrb r0, [r0, #0x16]
	str r0, [sp]
	ldrh r0, [r5, #0x24]
	lsrs r0, r0, #6
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08095AC8: .4byte gUnk_03000510
_08095ACC: .4byte 0x06010200
_08095AD0: .4byte gUnk_0834D484

	thumb_func_start sub_08095AD4
sub_08095AD4: @ 0x08095AD4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r2, _08095AFC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095B00
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08095B08
	.align 2, 0
_08095AFC: .4byte gCurTask
_08095B00:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08095B08:
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xc
	ldr r0, [r4, #0x44]
	mov ip, r0
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08095B28
	ldr r0, [r2]
	bl TaskDestroy
	b _08095F56
_08095B28:
	ldr r2, _08095B6C @ =0x0000DBFA
	ands r2, r1
	strh r2, [r4, #6]
	mov r1, ip
	ldr r0, [r1, #8]
	ldr r1, _08095B70 @ =0x00002405
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #6]
	mov r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r2, ip
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x38]
	mov r0, ip
	adds r0, #0xc0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	ldr r0, _08095B74 @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0x13
	beq _08095B78
	ldrh r1, [r4, #6]
	adds r0, r3, #0
	b _08095D9C
	.align 2, 0
_08095B6C: .4byte 0x0000DBFA
_08095B70: .4byte 0x00002405
_08095B74: .4byte 0x00000103
_08095B78:
	ldr r0, _08095BCC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r3, ip
	adds r3, #0x56
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp]
	cmp r2, #0
	bne _08095B96
	b _08095D58
_08095B96:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08095BA6
	b _08095D58
_08095BA6:
	ldrb r3, [r5, #0x1c]
	mov sl, r3
	ldrh r0, [r4, #0x18]
	cmp r0, #0
	bne _08095BB2
	b _08095F56
_08095BB2:
	movs r0, #0
	strb r0, [r5, #0x1c]
	ldrh r1, [r4, #6]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08095BD0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08095BD6
	.align 2, 0
_08095BCC: .4byte gUnk_03000510
_08095BD0:
	ldr r0, [r5, #8]
	ldr r1, _08095C44 @ =0xFFFFFBFF
	ands r0, r1
_08095BD6:
	str r0, [r5, #8]
	ldrh r2, [r4, #6]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08095C60
	ldrb r0, [r5, #0x1b]
	ldrb r3, [r5, #0x1a]
	cmp r0, r3
	bne _08095BF6
	ldrh r0, [r5, #0x18]
	ldrh r3, [r5, #0xc]
	cmp r0, r3
	beq _08095C06
_08095BF6:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08095C06
	strb r1, [r4, #1]
	strh r1, [r4, #2]
	ldr r0, _08095C48 @ =0x0000FFFB
	ands r0, r2
	strh r0, [r4, #6]
_08095C06:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08095C4C
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08095C60
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08095C60
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _08095C48 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08095C60
	.align 2, 0
_08095C44: .4byte 0xFFFFFBFF
_08095C48: .4byte 0x0000FFFB
_08095C4C:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _08095D44 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08095C60:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _08095D48 @ =gCurLevelInfo
	ldr r7, _08095D4C @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08095CC2
	mov r0, r8
	strb r0, [r6]
	strb r0, [r3]
_08095CC2:
	mov r1, sl
	strb r1, [r5, #0x1c]
	ldrb r0, [r7]
	ldr r3, [sp]
	ldrb r3, [r3]
	cmp r0, r3
	bne _08095CF2
	mov r1, ip
	muls r1, r0, r1
	add r1, sb
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_08095CF2:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08095D00
	b _08095F56
_08095D00:
	ldr r2, _08095D50 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08095D1C
	b _08095F56
_08095D1C:
	ldr r1, _08095D54 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08095D3C
	b _08095F32
_08095D3C:
	adds r0, r5, #0
	bl sub_0815604C
	b _08095F56
	.align 2, 0
_08095D44: .4byte 0x0000FFFD
_08095D48: .4byte gCurLevelInfo
_08095D4C: .4byte gUnk_0203AD3C
_08095D50: .4byte gKirbys
_08095D54: .4byte gUnk_0203AD18
_08095D58:
	mov r3, ip
	adds r3, #0xd4
	ldrh r0, [r3]
	cmp r0, #0x66
	bls _08095D7C
	ldr r1, _08095D78 @ =gUnk_0834D484
	subs r0, #0x65
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r0, [r3]
	subs r0, #0x65
	lsls r0, r0, #2
	adds r0, r0, r1
	b _08095DA8
	.align 2, 0
_08095D78: .4byte gUnk_0834D484
_08095D7C:
	cmp r0, #0x34
	bne _08095D90
	ldr r0, _08095D8C @ =gUnk_0834D484
	ldrh r1, [r0, #4]
	strh r1, [r5, #0xc]
	ldrb r0, [r0, #6]
	b _08095DAA
	.align 2, 0
_08095D8C: .4byte gUnk_0834D484
_08095D90:
	cmp r0, #0x35
	beq _08095DA2
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_08095D9C:
	orrs r0, r1
	strh r0, [r4, #6]
	b _08095F56
_08095DA2:
	ldr r0, _08095DCC @ =gUnk_0834D484
	ldrh r1, [r0]
	strh r1, [r5, #0xc]
_08095DA8:
	ldrb r0, [r0, #2]
_08095DAA:
	strb r0, [r5, #0x1a]
	ldrh r0, [r5, #0xc]
	adds r6, r0, #0
	cmp r6, #0
	bne _08095DB6
	b _08095F56
_08095DB6:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08095DD0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08095DD6
	.align 2, 0
_08095DCC: .4byte gUnk_0834D484
_08095DD0:
	ldr r0, [r5, #8]
	ldr r1, _08095E44 @ =0xFFFFFBFF
	ands r0, r1
_08095DD6:
	str r0, [r5, #8]
	ldrh r3, [r4, #6]
	movs r0, #8
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _08095E60
	ldrb r0, [r5, #0x1b]
	ldrb r1, [r5, #0x1a]
	cmp r0, r1
	bne _08095DF8
	ldrh r1, [r5, #0x18]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08095E08
_08095DF8:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08095E08
	strb r2, [r4, #1]
	strh r2, [r4, #2]
	ldr r0, _08095E48 @ =0x0000FFFB
	ands r0, r3
	strh r0, [r4, #6]
_08095E08:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08095E4C
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08095E60
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08095E60
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _08095E48 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08095E60
	.align 2, 0
_08095E44: .4byte 0xFFFFFBFF
_08095E48: .4byte 0x0000FFFB
_08095E4C:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _08095F3C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08095E60:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _08095F40 @ =gCurLevelInfo
	ldr r7, _08095F44 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08095EC2
	mov r0, r8
	strb r0, [r6]
	strb r0, [r3]
_08095EC2:
	ldrb r0, [r7]
	ldr r1, [sp]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08095EEE
	mov r1, ip
	muls r1, r0, r1
	add r1, sb
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_08095EEE:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08095F56
	ldr r2, _08095F48 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08095F56
	ldr r1, _08095F4C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08095F50
_08095F32:
	adds r0, r5, #0
	bl sub_081564D8
	b _08095F56
	.align 2, 0
_08095F3C: .4byte 0x0000FFFD
_08095F40: .4byte gCurLevelInfo
_08095F44: .4byte gUnk_0203AD3C
_08095F48: .4byte gKirbys
_08095F4C: .4byte gUnk_0203AD18
_08095F50:
	adds r0, r5, #0
	bl sub_0815604C
_08095F56:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08095F68
sub_08095F68: @ 0x08095F68
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08095F98 @ =sub_0809603C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08095F9C @ =sub_08099B28
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08095FA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08095FA8
	.align 2, 0
_08095F98: .4byte sub_0809603C
_08095F9C: .4byte sub_08099B28
_08095FA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08095FA8:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08095FDA
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_08095FDA:
	ldr r0, _08096034 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	adds r0, r6, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08095FFE
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08095FFE:
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r0, _08096038 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0x87
	lsls r3, r3, #2
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08096034: .4byte gUnk_03000510
_08096038: .4byte 0x06010400

	thumb_func_start sub_0809603C
sub_0809603C: @ 0x0809603C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08096060 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08096064
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809606C
	.align 2, 0
_08096060: .4byte gCurTask
_08096064:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809606C:
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xc
	ldr r6, [r4, #0x44]
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0809608A
	ldr r0, [r2]
	bl TaskDestroy
	b _08096456
_0809608A:
	ldr r2, _080960D0 @ =0x0000FBFE
	ands r2, r1
	strh r2, [r4, #6]
	ldr r0, [r6, #8]
	ldr r1, _080960D4 @ =0x00000401
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #6]
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r0, [r2]
	movs r1, #0x42
	adds r1, r1, r4
	mov r8, r1
	strh r0, [r1]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	adds r0, r6, #0
	adds r0, #0xc0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	ldr r1, _080960D8 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	mov sb, r2
	cmp r0, #0x13
	beq _080960DC
	ldrh r1, [r4, #6]
	adds r0, r3, #0
	b _080961BA
	.align 2, 0
_080960D0: .4byte 0x0000FBFE
_080960D4: .4byte 0x00000401
_080960D8: .4byte 0x00000103
_080960DC:
	ldr r0, _08096180 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r6, #0
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sl, r3
	cmp r2, #0
	beq _08096194
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08096194
	ldr r2, _08096184 @ =gCurLevelInfo
	ldr r6, _08096188 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r2, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r7, r0, #8
	strh r7, [r5, #0x10]
	ldrb r0, [r6]
	adds r1, r0, #0
	muls r1, r3, r1
	adds r2, #0x10
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r3, r0, #8
	strh r3, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08096142
	b _08096456
_08096142:
	ldr r2, _0809618C @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	cmp r0, r2
	beq _0809615C
	b _08096456
_0809615C:
	ldr r1, _08096190 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08096178
	b _08096432
_08096178:
	adds r0, r5, #0
	bl sub_0815604C
	b _08096456
	.align 2, 0
_08096180: .4byte gUnk_03000510
_08096184: .4byte gCurLevelInfo
_08096188: .4byte gUnk_0203AD3C
_0809618C: .4byte gKirbys
_08096190: .4byte gUnk_0203AD18
_08096194:
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x67
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _080961C0
	adds r0, r1, #0
	subs r0, #0x70
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	bls _080961C0
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
_080961BA:
	orrs r0, r1
	strh r0, [r4, #6]
	b _08096456
_080961C0:
	ldrh r0, [r4, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r4, #6]
	movs r1, #4
	ldrsh r0, [r6, r1]
	cmp r0, #0x2f
	ble _08096254
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #3
	strb r0, [r1]
	ldr r7, _08096240 @ =gUnk_0203AD3C
	mov r2, sl
	ldrb r0, [r2]
	ldrb r3, [r7]
	cmp r0, r3
	bne _080961EA
	movs r0, #0xdd
	bl m4aSongNumStop
_080961EA:
	ldr r1, _08096244 @ =gKirbys
	ldrb r2, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _080962A8
	ldrb r0, [r6]
	cmp r0, #0
	bne _08096210
	mov r3, sl
	ldrb r0, [r3]
	cmp r0, r2
	bne _080962A8
_08096210:
	ldr r1, _08096248 @ =gUnk_08D60FA4
	ldr r3, _0809624C @ =gSongTable
	ldr r2, _08096250 @ =0x000006F4
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08096236
	movs r1, #0xde
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _080962A8
_08096236:
	movs r0, #0xde
	bl m4aSongNumStart
	b _080962A8
	.align 2, 0
_08096240: .4byte gUnk_0203AD3C
_08096244: .4byte gKirbys
_08096248: .4byte gUnk_08D60FA4
_0809624C: .4byte gSongTable
_08096250: .4byte 0x000006F4
_08096254:
	ldr r1, _080962BC @ =gKirbys
	ldr r0, _080962C0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	mov r3, sb
	ldrh r3, [r3]
	cmp r0, r3
	bne _080962A8
	ldrb r0, [r6]
	cmp r0, #0
	bne _0809627C
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, r2
	bne _080962A8
_0809627C:
	ldr r1, _080962C4 @ =gUnk_08D60FA4
	ldr r3, _080962C8 @ =gSongTable
	ldr r2, _080962CC @ =0x000006EC
	adds r0, r3, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080962A2
	movs r1, #0xdd
	lsls r1, r1, #3
	adds r0, r3, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhs _080962A8
_080962A2:
	movs r0, #0xdd
	bl m4aSongNumStart
_080962A8:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080962D0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _080962D6
	.align 2, 0
_080962BC: .4byte gKirbys
_080962C0: .4byte gUnk_0203AD3C
_080962C4: .4byte gUnk_08D60FA4
_080962C8: .4byte gSongTable
_080962CC: .4byte 0x000006EC
_080962D0:
	ldr r0, [r5, #8]
	ldr r1, _08096344 @ =0xFFFFFBFF
	ands r0, r1
_080962D6:
	str r0, [r5, #8]
	ldrh r2, [r4, #6]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08096360
	ldrb r0, [r5, #0x1b]
	ldrb r3, [r5, #0x1a]
	cmp r0, r3
	bne _080962F6
	ldrh r0, [r5, #0x18]
	ldrh r3, [r5, #0xc]
	cmp r0, r3
	beq _08096306
_080962F6:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08096306
	strb r1, [r4, #1]
	strh r1, [r4, #2]
	ldr r0, _08096348 @ =0x0000FFFB
	ands r0, r2
	strh r0, [r4, #6]
_08096306:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0809634C
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08096360
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08096360
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _08096348 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08096360
	.align 2, 0
_08096344: .4byte 0xFFFFFBFF
_08096348: .4byte 0x0000FFFB
_0809634C:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _0809643C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08096360:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _08096440 @ =gCurLevelInfo
	ldr r7, _08096444 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _080963C2
	mov r0, r8
	strb r0, [r6]
	strb r0, [r3]
_080963C2:
	ldrb r0, [r7]
	mov r1, sl
	ldrb r1, [r1]
	cmp r0, r1
	bne _080963EE
	mov r1, ip
	muls r1, r0, r1
	add r1, sb
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_080963EE:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08096456
	ldr r2, _08096448 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08096456
	ldr r1, _0809644C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08096450
_08096432:
	adds r0, r5, #0
	bl sub_081564D8
	b _08096456
	.align 2, 0
_0809643C: .4byte 0x0000FFFD
_08096440: .4byte gCurLevelInfo
_08096444: .4byte gUnk_0203AD3C
_08096448: .4byte gKirbys
_0809644C: .4byte gUnk_0203AD18
_08096450:
	adds r0, r5, #0
	bl sub_0815604C
_08096456:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08096464
sub_08096464: @ 0x08096464
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _0809649C @ =sub_0809656C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080964A0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080964A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080964AC
	.align 2, 0
_0809649C: .4byte sub_0809656C
_080964A0: .4byte sub_0803DCCC
_080964A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080964AC:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r2, r1, #0
	orrs r2, r0
	orrs r2, r3
	strh r2, [r4, #6]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080964FA
	lsls r0, r6, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x34]
	subs r1, r1, r0
	str r1, [r4, #0x34]
	movs r0, #1
	orrs r2, r0
	strh r2, [r4, #6]
	b _08096504
_080964FA:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
_08096504:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, _08096560 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r5, #0x56
	movs r0, #1
	ldrb r1, [r5]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08096530
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08096530:
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r5]
	lsls r2, r2, #0xb
	ldr r0, _08096564 @ =0x06010600
	adds r2, r2, r0
	ldr r3, _08096568 @ =0x0000025B
	movs r0, #0
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	ldrb r0, [r5]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096560: .4byte gUnk_03000510
_08096564: .4byte 0x06010600
_08096568: .4byte 0x0000025B

	thumb_func_start sub_0809656C
sub_0809656C: @ 0x0809656C
	push {r4, r5, r6, r7, lr}
	ldr r2, _0809658C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08096590
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08096598
	.align 2, 0
_0809658C: .4byte gCurTask
_08096590:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08096598:
	adds r3, r0, #0
	ldr r0, [r3, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0x42
	movs r4, #0
	strh r0, [r1]
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, #4
	subs r1, #0x17
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _080965E0
	ldr r0, _080965DC @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #9
	bne _080965D2
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	bne _080965F4
_080965D2:
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	b _08096778
	.align 2, 0
_080965DC: .4byte 0x00000103
_080965E0:
	ldr r0, [r3, #0x44]
	ldr r0, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #5
	ands r0, r2
	cmp r0, #0
	beq _080965F4
	ldrh r1, [r3, #6]
	adds r0, r2, #0
	b _08096778
_080965F4:
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r5, r1, #0
	cmp r2, #0
	beq _08096610
	ldr r0, [r6]
	bl TaskDestroy
	b _080967B0
_08096610:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08096658
	ldrb r0, [r1]
	cmp r0, #0
	beq _08096628
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08096628
	str r2, [r3, #0x44]
	movs r1, #0
_08096628:
	cmp r1, #0
	beq _08096658
	ldr r0, _08096654 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080966C8
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r5
	cmp r0, #0
	bne _080966C8
	adds r0, r3, #0
	bl sub_0803DBC8
	b _080967B0
	.align 2, 0
_08096654: .4byte gUnk_03000510
_08096658:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080966C0 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809669A
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809669A
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809669A
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809669A
	movs r4, #4
_0809669A:
	ldr r0, _080966C4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080966C8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080966C8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080967B0
	.align 2, 0
_080966C0: .4byte gKirbys
_080966C4: .4byte gUnk_03000510
_080966C8:
	ldr r0, _08096734 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrb r7, [r3, #1]
	mov ip, r7
	cmp r0, #0
	beq _08096710
	ldr r6, _08096738 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _0809673C @ =gUnk_02026D50
_080966DE:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08096708
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08096722
_08096708:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080966DE
_08096710:
	movs r0, #1
	cmp r0, #0
	beq _08096722
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08096722:
	mov r6, ip
	lsls r0, r6, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08096740
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3, #0x3e]
	b _08096768
	.align 2, 0
_08096734: .4byte gUnk_0203AD44
_08096738: .4byte gCurLevelInfo
_0809673C: .4byte gUnk_02026D50
_08096740:
	cmp r1, #1
	bls _08096768
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r3, #0x3e]
	cmp r1, #2
	bne _08096768
	ldr r2, _08096780 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08096784 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08096788 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	strh r1, [r3, #0x3c]
_08096768:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809678C
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_08096778:
	orrs r0, r1
	strh r0, [r3, #6]
	b _080967B0
	.align 2, 0
_08096780: .4byte gRngVal
_08096784: .4byte 0x00196225
_08096788: .4byte 0x3C6EF35F
_0809678C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080967AA
	movs r6, #0x3c
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r7, #0x3e
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_080967AA:
	adds r0, r3, #0
	bl sub_0806FAC8
_080967B0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080967B8
sub_080967B8: @ 0x080967B8
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080967E8 @ =sub_08096898
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080967EC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080967F0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080967F8
	.align 2, 0
_080967E8: .4byte sub_08096898
_080967EC: .4byte sub_0803DCCC
_080967F0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080967F8:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _0809682A
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_0809682A:
	ldr r0, _0809688C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r5, #0
	adds r3, #0x56
	adds r0, r6, #0
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809684E
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_0809684E:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldrb r2, [r3]
	lsls r2, r2, #0xb
	ldr r0, _08096890 @ =0x06010200
	adds r2, r2, r0
	ldr r3, _08096894 @ =0x00000233
	movs r0, #0
	str r0, [sp]
	movs r0, #0x1c
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	adds r0, r5, #0
	adds r0, #0x2f
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x2b
	strb r1, [r0]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0809688C: .4byte gUnk_03000510
_08096890: .4byte 0x06010200
_08096894: .4byte 0x00000233

	thumb_func_start sub_08096898
sub_08096898: @ 0x08096898
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _080968B8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080968BC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080968C4
	.align 2, 0
_080968B8: .4byte gCurTask
_080968BC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080968C4:
	adds r4, r0, #0
	ldr r7, [r4, #0x44]
	mov ip, r7
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080968DE
	ldr r0, [r2]
	bl TaskDestroy
	b _08096AB4
_080968DE:
	ldr r0, _08096948 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08096926
	ldr r1, _0809694C @ =gCurLevelInfo
	mov r8, r1
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r5, _08096950 @ =gUnk_02026D50
_080968F2:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, r8
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809691E
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08096938
_0809691E:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080968F2
_08096926:
	movs r0, #1
	cmp r0, #0
	beq _08096938
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08096938:
	ldr r3, _08096954 @ =0x00000103
	mov r6, ip
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0x18
	beq _08096958
	ldrh r1, [r4, #6]
	b _08096A52
	.align 2, 0
_08096948: .4byte gUnk_0203AD44
_0809694C: .4byte gCurLevelInfo
_08096950: .4byte gUnk_02026D50
_08096954: .4byte 0x00000103
_08096958:
	movs r5, #0
	ldr r0, [r4, #0x44]
	adds r1, r0, #0
	adds r1, #0xd4
	ldrh r1, [r1]
	adds r2, r0, #0
	cmp r1, #0x5a
	beq _08096970
	adds r0, r2, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809697E
_08096970:
	ldrh r1, [r4, #6]
	movs r3, #0xa0
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
	movs r5, #1
_0809697E:
	cmp r5, #0
	beq _08096984
	b _08096AB4
_08096984:
	adds r3, r2, #0
	cmp r3, #0
	beq _080969D4
	ldrb r0, [r3]
	cmp r0, #0
	beq _080969A0
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080969A0
	str r5, [r4, #0x44]
	movs r3, #0
_080969A0:
	cmp r3, #0
	beq _080969D4
	ldr r0, _080969D0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08096A44
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08096A44
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08096AB4
	.align 2, 0
_080969D0: .4byte gUnk_03000510
_080969D4:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08096A3C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08096A16
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08096A16
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08096A16
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08096A16
	movs r3, #4
_08096A16:
	ldr r0, _08096A40 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08096A44
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08096A44
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08096AB4
	.align 2, 0
_08096A3C: .4byte gKirbys
_08096A40: .4byte gUnk_03000510
_08096A44:
	ldrh r1, [r4, #6]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _08096A5E
_08096A52:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08096AB4
_08096A5E:
	ldrb r0, [r4, #1]
	cmp r0, #0xf
	bne _08096A8A
	adds r0, r7, #0
	adds r0, #0x60
	ldrh r1, [r0]
	movs r0, #4
	bl sub_0803C83C
	movs r1, #2
	strb r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #1
	strh r1, [r0, #0xa]
	movs r1, #0xfe
	lsls r1, r1, #7
	strh r1, [r0, #4]
	strh r5, [r0, #6]
	ldrh r2, [r0, #8]
	movs r1, #0x40
	orrs r1, r2
	strh r1, [r0, #8]
_08096A8A:
	ldrb r0, [r4, #1]
	cmp r0, #0x24
	bne _08096AAE
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl sub_0803CA20
	movs r1, #0xc0
	lsls r1, r1, #3
	strh r1, [r0, #0xa]
	strh r5, [r0, #4]
	ldr r1, _08096AC0 @ =0x00003FFF
	strh r1, [r0, #6]
	ldrh r2, [r0, #8]
	movs r1, #0x40
	orrs r1, r2
	strh r1, [r0, #8]
_08096AAE:
	adds r0, r4, #0
	bl sub_0806FAC8
_08096AB4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096AC0: .4byte 0x00003FFF

	thumb_func_start sub_08096AC4
sub_08096AC4: @ 0x08096AC4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, _08096B00 @ =sub_08096C28
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08096B04 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08096B08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08096B10
	.align 2, 0
_08096B00: .4byte sub_08096C28
_08096B04: .4byte sub_0803DCCC
_08096B08:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08096B10:
	adds r7, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, r8
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	movs r3, #0
	strh r0, [r1]
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	adds r2, r1, #0
	orrs r2, r0
	orrs r2, r3
	strh r2, [r7, #6]
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08096B64
	ldr r0, [r7, #0x34]
	ldr r1, _08096B60 @ =0xFFFFF500
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r0, #1
	orrs r2, r0
	strh r2, [r7, #6]
	b _08096B6E
	.align 2, 0
_08096B60: .4byte 0xFFFFF500
_08096B64:
	ldr r0, [r7, #0x34]
	movs r2, #0xb0
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r7, #0x34]
_08096B6E:
	ldr r3, [r7, #0x38]
	ldr r1, _08096C0C @ =0xFFFFE800
	adds r0, r3, r1
	str r0, [r7, #0x38]
	ldr r4, _08096C10 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _08096C14 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _08096C18 @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r4]
	ldr r1, [r7, #0x34]
	movs r0, #0xf0
	lsls r0, r0, #4
	adds r1, r1, r0
	lsls r0, r2, #3
	lsrs r0, r0, #0x13
	subs r1, r1, r0
	str r1, [r7, #0x34]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	ldr r1, _08096C1C @ =0xFFFFE900
	adds r3, r3, r1
	lsls r0, r0, #4
	lsrs r0, r0, #0x14
	subs r3, r3, r0
	str r3, [r7, #0x38]
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _08096C20 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r4, r8
	adds r4, #0x56
	movs r0, #1
	ldrb r1, [r4]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08096BD4
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_08096BD4:
	adds r1, r7, #0
	adds r1, #0xc
	ldrb r2, [r4]
	lsls r2, r2, #0xb
	ldr r0, _08096C24 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0x82
	lsls r3, r3, #2
	mov r0, sb
	str r0, [sp]
	movs r0, #8
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	ldrb r0, [r4]
	adds r0, #4
	adds r1, r7, #0
	adds r1, #0x2b
	strb r0, [r1]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096C0C: .4byte 0xFFFFE800
_08096C10: .4byte gRngVal
_08096C14: .4byte 0x00196225
_08096C18: .4byte 0x3C6EF35F
_08096C1C: .4byte 0xFFFFE900
_08096C20: .4byte gUnk_03000510
_08096C24: .4byte 0x06010400

	thumb_func_start sub_08096C28
sub_08096C28: @ 0x08096C28
	push {r4, r5, r6, r7, lr}
	ldr r2, _08096C44 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08096C48
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08096C50
	.align 2, 0
_08096C44: .4byte gCurTask
_08096C48:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08096C50:
	adds r4, r0, #0
	ldr r0, [r4, #0x44]
	mov ip, r0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r3, r4, #0
	adds r3, #0x42
	strh r0, [r3]
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	adds r0, #4
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08096C82
	ldr r0, [r2]
	bl TaskDestroy
	b _08096E1C
_08096C82:
	ldr r0, _08096CEC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08096CC2
	ldr r6, _08096CF0 @ =gCurLevelInfo
	ldrh r3, [r3]
	ldr r5, _08096CF4 @ =gUnk_02026D50
_08096C90:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08096CBA
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08096CD4
_08096CBA:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08096C90
_08096CC2:
	movs r0, #1
	cmp r0, #0
	beq _08096CD4
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08096CD4:
	ldr r0, _08096CF8 @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0x15
	beq _08096CFC
	ldrh r1, [r4, #6]
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08096E1C
	.align 2, 0
_08096CEC: .4byte gUnk_0203AD44
_08096CF0: .4byte gCurLevelInfo
_08096CF4: .4byte gUnk_02026D50
_08096CF8: .4byte 0x00000103
_08096CFC:
	ldr r3, [r4, #0x44]
	cmp r3, #0
	beq _08096D50
	ldrb r0, [r3]
	cmp r0, #0
	beq _08096D1A
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08096D1A
	movs r0, #0
	str r0, [r4, #0x44]
	movs r3, #0
_08096D1A:
	cmp r3, #0
	beq _08096D50
	ldr r0, _08096D4C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08096DC0
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08096DC0
	adds r0, r4, #0
	bl sub_0803DBC8
	b _08096E1C
	.align 2, 0
_08096D4C: .4byte gUnk_03000510
_08096D50:
	adds r5, r4, #0
	movs r3, #0
	ldr r2, _08096DB8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08096D92
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08096D92
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08096D92
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08096D92
	movs r3, #4
_08096D92:
	ldr r0, _08096DBC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08096DC0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08096DC0
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08096E1C
	.align 2, 0
_08096DB8: .4byte gKirbys
_08096DBC: .4byte gUnk_03000510
_08096DC0:
	ldrh r1, [r4, #6]
	movs r0, #4
	movs r3, #0
	adds r2, r0, #0
	orrs r2, r1
	strh r2, [r4, #6]
	ldrh r0, [r4, #4]
	adds r1, r0, #1
	strh r1, [r4, #4]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _08096DE6
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r4, #6]
	b _08096E1C
_08096DE6:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08096DF6
	adds r1, r4, #0
	adds r1, #0x40
	movs r0, #1
	strb r0, [r1]
_08096DF6:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08096E16
	movs r2, #0x3c
	ldrsh r1, [r4, r2]
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	movs r6, #0x3e
	ldrsh r1, [r4, r6]
	ldr r0, [r4, #0x38]
	subs r0, r0, r1
	str r0, [r4, #0x38]
_08096E16:
	adds r0, r4, #0
	bl sub_0806FAC8
_08096E1C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08096E24
sub_08096E24: @ 0x08096E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	movs r7, #8
	adds r0, #0x56
	ldr r1, _08096E70 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08096E44
	movs r7, #7
_08096E44:
	ldr r0, _08096E74 @ =sub_08096F80
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08096E78 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08096E7C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08096E84
	.align 2, 0
_08096E70: .4byte gUnk_0203AD3C
_08096E74: .4byte sub_08096F80
_08096E78: .4byte sub_0803DCCC
_08096E7C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08096E84:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, _08096F64 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r6, r4, #0
	adds r6, #0x56
	movs r0, #1
	ldrb r1, [r6]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08096EC8
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_08096EC8:
	adds r4, r5, #0
	adds r4, #0xc
	ldrb r2, [r6]
	lsls r2, r2, #0xb
	ldr r0, _08096F68 @ =0x06010400
	adds r2, r2, r0
	movs r3, #0x82
	lsls r3, r3, #2
	movs r0, #6
	str r0, [sp]
	str r7, [sp, #4]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_080709F8
	ldrb r0, [r6]
	lsls r0, r0, #0xb
	ldr r1, _08096F6C @ =0x06010480
	adds r0, r0, r1
	str r0, [r5, #0xc]
	adds r7, r5, #0
	adds r7, #0x26
	movs r0, #9
	strb r0, [r7]
	adds r0, r4, #0
	bl sub_08155128
	ldrb r0, [r6]
	lsls r0, r0, #0xb
	ldr r2, _08096F70 @ =0x06010500
	adds r0, r0, r2
	str r0, [r5, #0xc]
	movs r0, #7
	strb r0, [r7]
	adds r0, r4, #0
	bl sub_08155128
	ldrb r0, [r6]
	lsls r0, r0, #0xb
	ldr r1, _08096F74 @ =0x06010580
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r0, #8
	strb r0, [r7]
	adds r0, r4, #0
	bl sub_08155128
	ldrb r0, [r6]
	lsls r0, r0, #0xb
	ldr r2, _08096F78 @ =0x06010600
	adds r0, r0, r2
	str r0, [r5, #0xc]
	movs r0, #0xa
	strb r0, [r7]
	adds r0, r4, #0
	bl sub_08155128
	ldrb r0, [r6]
	lsls r0, r0, #0xb
	ldr r1, _08096F7C @ =0x06010680
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r0, #0xb
	strb r0, [r7]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r5, #0x3c]
	mov r2, r8
	strh r2, [r5, #8]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08096F64: .4byte gUnk_03000510
_08096F68: .4byte 0x06010400
_08096F6C: .4byte 0x06010480
_08096F70: .4byte 0x06010500
_08096F74: .4byte 0x06010580
_08096F78: .4byte 0x06010600
_08096F7C: .4byte 0x06010680

	thumb_func_start sub_08096F80
sub_08096F80: @ 0x08096F80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _08096FA8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08096FAC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08096FB4
	.align 2, 0
_08096FA8: .4byte gCurTask
_08096FAC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08096FB4:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r8, r0
	mov r3, r8
	adds r3, #0x60
	ldrh r4, [r3]
	adds r0, r6, #0
	adds r0, #0x42
	strh r4, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08096FDA
	ldr r0, [r2]
	bl TaskDestroy
	b _0809728A
_08096FDA:
	ldr r0, _08097008 @ =0x00000103
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _08096FF8
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r3]
	cmp r0, r3
	bne _08096FF8
	mov r0, r8
	bl sub_0805BEC4
	cmp r0, #0
	beq _0809700C
_08096FF8:
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _0809728A
	.align 2, 0
_08097008: .4byte 0x00000103
_0809700C:
	ldrh r0, [r6, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r6, #6]
	mov r3, r8
	ldr r0, [r3, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r3, #0x44]
	ldr r1, _0809719C @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r6, #0x38]
	ldr r0, _080971A0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	str r3, [sp, #4]
	cmp r2, #0
	beq _08097048
	mov r2, r8
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _0809707E
_08097048:
	ldrh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x14
	ldrh r3, [r6, #4]
	adds r0, r0, r3
	ldr r1, _080971A4 @ =0x000003FF
	ands r0, r1
	strh r0, [r6, #4]
	movs r0, #0x8d
	lsls r0, r0, #1
	add r0, r8
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08097076
	ldrh r0, [r6, #0x3e]
	adds r0, #1
	strh r0, [r6, #0x3e]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x64
	ble _0809707E
_08097076:
	ldr r0, _080971A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080971AC @ =sub_0809729C
	str r0, [r1, #8]
_0809707E:
	ldrh r5, [r6, #4]
	movs r0, #0
	mov sl, r0
	ldr r1, _080971B0 @ =gCurLevelInfo
	str r1, [sp]
	ldr r2, _080971B4 @ =gUnk_0203AD3C
	mov sb, r2
_0809708C:
	lsls r5, r5, #0x10
	asrs r7, r5, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	lsls r0, r0, #1
	ldr r1, _080971B8 @ =gSineTable
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r7, #1
	ldr r2, _080971B8 @ =gSineTable
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r1, r1, #3
	ldr r2, [r6, #0x34]
	adds r2, r2, r1
	asrs r2, r2, #8
	mov r1, sb
	ldrb r0, [r1]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	ldr r1, [sp]
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	strh r2, [r6, #0x1c]
	lsls r3, r3, #3
	ldr r1, [r6, #0x38]
	adds r1, r1, r3
	asrs r1, r1, #8
	mov r2, sb
	ldrb r0, [r2]
	muls r0, r4, r0
	ldr r3, _080971BC @ =gCurLevelInfo+0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r6, #0x1e]
	ldr r0, _080971A0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	ldr r0, [sp, #4]
	ldrb r3, [r0]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08097114
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08097184
_08097114:
	ldr r2, _080971C0 @ =0xFFFFFD10
	adds r0, r7, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1f
	bhi _08097184
	ldr r1, _080971C4 @ =gKirbys
	mov r0, sb
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08097184
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _08097148
	cmp r3, r2
	bne _08097184
_08097148:
	ldr r1, _080971C8 @ =gUnk_08D60FA4
	ldr r4, _080971CC @ =gSongTable
	ldr r2, _080971D0 @ =0x000010EC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809716C
	ldr r1, _080971D4 @ =0x000010E8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08097184
_0809716C:
	cmp r3, #0
	beq _0809717E
	ldr r0, _080971D8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08097184
_0809717E:
	ldr r0, _080971DC @ =0x0000021D
	bl m4aSongNumStart
_08097184:
	ldr r3, _080971E0 @ =0xFD200000
	adds r0, r5, r3
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bhi _080971E8
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	lsls r0, r0, #0xb
	ldr r2, _080971E4 @ =0x06010680
	adds r0, r0, r2
	str r0, [r6, #0xc]
	b _08097206
	.align 2, 0
_0809719C: .4byte 0xFFFFF800
_080971A0: .4byte gUnk_03000510
_080971A4: .4byte 0x000003FF
_080971A8: .4byte gCurTask
_080971AC: .4byte sub_0809729C
_080971B0: .4byte gCurLevelInfo
_080971B4: .4byte gUnk_0203AD3C
_080971B8: .4byte gSineTable
_080971BC: .4byte gCurLevelInfo+0x10
_080971C0: .4byte 0xFFFFFD10
_080971C4: .4byte gKirbys
_080971C8: .4byte gUnk_08D60FA4
_080971CC: .4byte gSongTable
_080971D0: .4byte 0x000010EC
_080971D4: .4byte 0x000010E8
_080971D8: .4byte gUnk_0203AD10
_080971DC: .4byte 0x0000021D
_080971E0: .4byte 0xFD200000
_080971E4: .4byte 0x06010680
_080971E8:
	ldr r3, [sp, #4]
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	ldr r2, _08097258 @ =gUnk_0835100A
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #3
	add r0, sl
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #7
	ldr r2, _0809725C @ =0x06010400
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0xc]
_08097206:
	ldrh r3, [r6, #6]
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	bne _08097270
	ldr r2, _08097260 @ =gKirbys
	mov r0, sb
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08097270
	ldr r1, _08097264 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r6, #0x1c]
	adds r0, r0, r2
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08097268
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08097270
	.align 2, 0
_08097258: .4byte gUnk_0835100A
_0809725C: .4byte 0x06010400
_08097260: .4byte gKirbys
_08097264: .4byte gUnk_0203AD18
_08097268:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_08097270:
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r0, r5, r3
	lsls r0, r0, #6
	lsrs r5, r0, #0x16
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #7
	bhi _0809728A
	b _0809708C
_0809728A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809729C
sub_0809729C: @ 0x0809729C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r2, _080972C4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080972C8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080972D0
	.align 2, 0
_080972C4: .4byte gCurTask
_080972C8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080972D0:
	adds r6, r0, #0
	ldr r0, [r6, #0x44]
	mov r8, r0
	mov r3, r8
	adds r3, #0x60
	ldrh r4, [r3]
	adds r0, r6, #0
	adds r0, #0x42
	strh r4, [r0]
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080972F6
	ldr r0, [r2]
	bl TaskDestroy
	b _08097638
_080972F6:
	ldr r0, _08097324 @ =0x00000103
	add r0, r8
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _08097314
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r3]
	cmp r0, r3
	bne _08097314
	mov r0, r8
	bl sub_0805BEC4
	cmp r0, #0
	beq _08097328
_08097314:
	ldrh r1, [r6, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6, #6]
	b _08097638
	.align 2, 0
_08097324: .4byte 0x00000103
_08097328:
	ldrh r0, [r6, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r6, #6]
	mov r3, r8
	ldr r0, [r3, #0x40]
	str r0, [r6, #0x34]
	ldr r0, [r3, #0x44]
	ldr r1, _080974B0 @ =0xFFFFF800
	adds r0, r0, r1
	str r0, [r6, #0x38]
	ldr r0, _080974B4 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	mov r2, r8
	adds r2, #0x56
	movs r0, #1
	ldrb r3, [r2]
	lsls r0, r3
	movs r3, #0x10
	orrs r0, r3
	ands r1, r0
	mov sb, r2
	cmp r1, #0
	beq _08097366
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08097384
_08097366:
	ldrh r0, [r6, #0x3c]
	lsls r1, r0, #0x10
	asrs r1, r1, #0x14
	ldrh r2, [r6, #4]
	adds r1, r1, r2
	ldr r2, _080974B8 @ =0x000003FF
	ands r1, r2
	strh r1, [r6, #4]
	subs r0, #4
	strh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	bgt _08097384
	strh r3, [r6, #0x3c]
_08097384:
	ldrh r1, [r6, #4]
	movs r3, #0
	str r3, [sp]
	ldr r0, _080974BC @ =gCurLevelInfo
	str r0, [sp, #4]
	ldr r2, _080974C0 @ =gUnk_0203AD3C
	mov sl, r2
_08097392:
	ldr r2, _080974C4 @ =gSineTable
	lsls r5, r1, #0x10
	asrs r7, r5, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r7, r3
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r0, r7, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r3, r0, #1
	adds r3, r3, r0
	lsls r1, r1, #3
	ldr r2, [r6, #0x34]
	adds r2, r2, r1
	asrs r2, r2, #8
	mov r1, sl
	ldrb r0, [r1]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	ldr r1, [sp, #4]
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	strh r2, [r6, #0x1c]
	lsls r3, r3, #3
	ldr r1, [r6, #0x38]
	adds r1, r1, r3
	asrs r1, r1, #8
	mov r2, sl
	ldrb r0, [r2]
	muls r0, r4, r0
	ldr r3, _080974C8 @ =gCurLevelInfo+0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	strh r1, [r6, #0x1e]
	ldr r0, _080974B4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r0, sb
	ldrb r3, [r0]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08097418
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08097496
_08097418:
	ldrh r0, [r6, #0x3c]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x15
	movs r0, #0xc0
	lsls r0, r0, #2
	subs r0, r0, r1
	cmp r0, r7
	bgt _08097496
	movs r2, #0xc0
	lsls r2, r2, #2
	adds r0, r1, r2
	cmp r0, r7
	ble _08097496
	mov r0, sl
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	ldr r1, _080974CC @ =gKirbys
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08097496
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _0809745A
	cmp r3, r2
	bne _08097496
_0809745A:
	ldr r1, _080974D0 @ =gUnk_08D60FA4
	ldr r4, _080974D4 @ =gSongTable
	ldr r2, _080974D8 @ =0x000010EC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809747E
	ldr r1, _080974DC @ =0x000010E8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08097496
_0809747E:
	cmp r3, #0
	beq _08097490
	ldr r0, _080974E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r0, r2
	cmp r0, #0
	bne _08097496
_08097490:
	ldr r0, _080974E4 @ =0x0000021D
	bl m4aSongNumStart
_08097496:
	ldr r3, _080974E8 @ =0xFD200000
	adds r0, r5, r3
	lsrs r0, r0, #0x10
	cmp r0, #0x3f
	bhi _080974F0
	mov r1, sb
	ldrb r0, [r1]
	lsls r0, r0, #0xb
	ldr r2, _080974EC @ =0x06010680
	adds r0, r0, r2
	str r0, [r6, #0xc]
	b _08097510
	.align 2, 0
_080974B0: .4byte 0xFFFFF800
_080974B4: .4byte gUnk_03000510
_080974B8: .4byte 0x000003FF
_080974BC: .4byte gCurLevelInfo
_080974C0: .4byte gUnk_0203AD3C
_080974C4: .4byte gSineTable
_080974C8: .4byte gCurLevelInfo+0x10
_080974CC: .4byte gKirbys
_080974D0: .4byte gUnk_08D60FA4
_080974D4: .4byte gSongTable
_080974D8: .4byte 0x000010EC
_080974DC: .4byte 0x000010E8
_080974E0: .4byte gUnk_0203AD10
_080974E4: .4byte 0x0000021D
_080974E8: .4byte 0xFD200000
_080974EC: .4byte 0x06010680
_080974F0:
	mov r3, sb
	ldrb r1, [r3]
	lsls r1, r1, #0xb
	ldr r2, _08097564 @ =gUnk_0835100A
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #3
	ldr r3, [sp]
	adds r0, r3, r0
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #7
	ldr r2, _08097568 @ =0x06010400
	adds r0, r0, r2
	adds r1, r1, r0
	str r1, [r6, #0xc]
_08097510:
	ldrh r2, [r6, #6]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	bne _0809757C
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	ldr r1, _0809756C @ =gKirbys
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809757C
	ldr r1, _08097570 @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r3, [r6, #0x1c]
	adds r0, r0, r3
	strh r0, [r6, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r6, #0x1e]
	adds r0, r0, r1
	strh r0, [r6, #0x1e]
	movs r3, #0x80
	lsls r3, r3, #7
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08097574
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_081564D8
	b _0809757C
	.align 2, 0
_08097564: .4byte gUnk_0835100A
_08097568: .4byte 0x06010400
_0809756C: .4byte gKirbys
_08097570: .4byte gUnk_0203AD18
_08097574:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
_0809757C:
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	cmp r0, #0x10
	bne _0809761E
	asrs r1, r5, #0x10
	movs r2, #0xc0
	lsls r2, r2, #0x12
	asrs r0, r2, #0x10
	cmp r1, r0
	bne _0809761E
	movs r0, #0
	strh r0, [r6, #4]
	ldr r1, _08097648 @ =gUnk_0835100A
	movs r3, #8
	ldrsh r0, [r6, r3]
	lsls r0, r0, #3
	ldr r2, [sp]
	adds r0, r2, r0
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r1, r8
	adds r1, #0xd9
	strb r0, [r1]
	ldr r0, _0809764C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08097650 @ =sub_08097668
	str r0, [r1, #8]
	mov r3, sl
	ldrb r2, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	ldr r1, _08097654 @ =gKirbys
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809761E
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0
	bne _080975DE
	mov r1, sb
	ldrb r0, [r1]
	cmp r0, r2
	bne _0809761E
_080975DE:
	ldr r1, _08097658 @ =gUnk_08D60FA4
	ldr r4, _0809765C @ =gSongTable
	ldr r2, _08097660 @ =0x00000FD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08097604
	movs r1, #0xfd
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809761E
_08097604:
	cmp r3, #0
	beq _08097616
	ldr r0, _08097664 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #1
	ands r0, r2
	cmp r0, #0
	bne _0809761E
_08097616:
	movs r0, #0xfd
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809761E:
	movs r3, #0x80
	lsls r3, r3, #0x10
	adds r0, r5, r3
	lsls r0, r0, #6
	lsrs r1, r0, #0x16
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #7
	bhi _08097638
	b _08097392
_08097638:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097648: .4byte gUnk_0835100A
_0809764C: .4byte gCurTask
_08097650: .4byte sub_08097668
_08097654: .4byte gKirbys
_08097658: .4byte gUnk_08D60FA4
_0809765C: .4byte gSongTable
_08097660: .4byte 0x00000FD4
_08097664: .4byte gUnk_0203AD10

	thumb_func_start sub_08097668
sub_08097668: @ 0x08097668
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _0809768C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08097690
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08097698
	.align 2, 0
_0809768C: .4byte gCurTask
_08097690:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08097698:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov sb, r0
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _080976B2
	ldr r0, [r2]
	bl TaskDestroy
	b _08097852
_080976B2:
	ldr r0, _080976E4 @ =0x00000103
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0x15
	bne _080976D8
	adds r0, r7, #0
	adds r0, #0x42
	mov r2, sb
	adds r2, #0x60
	ldrh r1, [r0]
	mov sl, r0
	ldrh r2, [r2]
	cmp r1, r2
	bne _080976D8
	mov r0, sb
	bl sub_0805BEC4
	cmp r0, #0
	beq _080976E8
_080976D8:
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	b _0809784E
	.align 2, 0
_080976E4: .4byte 0x00000103
_080976E8:
	ldrh r1, [r7, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #6]
	mov r0, sb
	ldr r3, [r0, #0x40]
	str r3, [r7, #0x34]
	ldr r4, [r0, #0x44]
	ldr r1, _0809777C @ =0xFFFFF800
	adds r4, r4, r1
	str r4, [r7, #0x38]
	ldr r2, _08097780 @ =gSineTable
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r2, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r1, r0, #1
	adds r1, r1, r0
	movs r0, #0xc0
	lsls r0, r0, #3
	adds r2, r2, r0
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r1, r1, #3
	adds r3, r3, r1
	asrs r3, r3, #8
	ldr r5, _08097784 @ =gCurLevelInfo
	ldr r6, _08097788 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r1, #0xcd
	lsls r1, r1, #3
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r1, r5, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r3, r0
	strh r3, [r7, #0x1c]
	lsls r2, r2, #3
	adds r4, r4, r2
	asrs r4, r4, #8
	ldrb r0, [r6]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r5, #0x10
	adds r0, r0, r5
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r4, r4, r0
	strh r4, [r7, #0x1e]
	ldrh r1, [r7, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08097790
	mov r1, sb
	adds r1, #0x56
	ldrb r0, [r1]
	lsls r0, r0, #0xb
	ldr r3, _0809778C @ =0x06010680
	adds r0, r0, r3
	str r0, [r7, #0xc]
	adds r4, r1, #0
	b _080977AA
	.align 2, 0
_0809777C: .4byte 0xFFFFF800
_08097780: .4byte gSineTable
_08097784: .4byte gCurLevelInfo
_08097788: .4byte gUnk_0203AD3C
_0809778C: .4byte 0x06010680
_08097790:
	mov r2, sb
	adds r2, #0x56
	ldrb r1, [r2]
	lsls r1, r1, #0xb
	mov r0, sb
	adds r0, #0xd9
	ldrb r0, [r0]
	lsls r0, r0, #7
	ldr r3, _080977F4 @ =0x06010400
	adds r0, r0, r3
	adds r1, r1, r0
	str r1, [r7, #0xc]
	adds r4, r2, #0
_080977AA:
	ldrh r3, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _08097808
	ldr r2, _080977F8 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _08097808
	ldr r1, _080977FC @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r7, #0x1c]
	adds r0, r0, r2
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r7, #0x1e]
	adds r0, r0, r1
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _08097800
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _08097808
	.align 2, 0
_080977F4: .4byte 0x06010400
_080977F8: .4byte gKirbys
_080977FC: .4byte gUnk_0203AD18
_08097800:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_08097808:
	ldr r0, _08097860 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r4, [r4]
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809782C
	mov r2, sb
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	beq _08097852
_0809782C:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x10
	bne _0809783E
	mov r0, sb
	strh r3, [r0, #4]
_0809783E:
	movs r1, #4
	ldrsh r0, [r7, r1]
	cmp r0, #0x17
	ble _08097852
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
_0809784E:
	orrs r0, r1
	strh r0, [r7, #6]
_08097852:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097860: .4byte gUnk_03000510

	thumb_func_start sub_08097864
sub_08097864: @ 0x08097864
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, _080978A0 @ =sub_080979E0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080978A4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080978A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080978B0
	.align 2, 0
_080978A0: .4byte sub_080979E0
_080978A4: .4byte sub_0803DCCC
_080978A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080978B0:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080978F0
	ldr r0, [r5, #0x34]
	ldr r1, _080978EC @ =0xFFFFF500
	adds r0, r0, r1
	str r0, [r5, #0x34]
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	b _080978FA
	.align 2, 0
_080978EC: .4byte 0xFFFFF500
_080978F0:
	ldr r0, [r5, #0x34]
	movs r2, #0xb0
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r5, #0x34]
_080978FA:
	ldr r2, [r5, #0x38]
	movs r7, #0xc0
	lsls r7, r7, #5
	adds r0, r2, r7
	str r0, [r5, #0x38]
	ldr r0, _080979B8 @ =gRngVal
	ldr r1, [r0]
	ldr r0, _080979BC @ =0x00196225
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _080979C0 @ =0x3C6EF35F
	adds r3, r3, r0
	ldr r1, [r5, #0x34]
	movs r7, #0xf0
	lsls r7, r7, #4
	adds r1, r1, r7
	lsrs r3, r3, #0x10
	ldr r0, _080979C4 @ =0x00001FFF
	ands r0, r3
	subs r1, r1, r0
	str r1, [r5, #0x34]
	movs r0, #0xc8
	lsls r0, r0, #5
	adds r2, r2, r0
	ldr r0, _080979C8 @ =0x00000FFF
	ands r0, r3
	subs r2, r2, r0
	str r2, [r5, #0x38]
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r5, #0x3c]
	adds r0, #2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	ldr r2, _080979CC @ =0xFFFFFF00
	adds r4, r2, #0
	subs r0, r4, r0
	ldr r7, _080979D0 @ =0x000001FF
	adds r2, r7, #0
	ands r3, r2
	adds r3, r3, r4
	subs r1, r1, r3
	strh r1, [r5, #0x3c]
	subs r0, r0, r3
	strh r0, [r5, #0x3e]
	ldr r0, _080979D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r6, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08097982
	ldrh r0, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_08097982:
	ldrh r0, [r5, #6]
	movs r7, #0x80
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _080979D8 @ =0x06012000
	ldr r3, _080979DC @ =0x00000291
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080979B8: .4byte gRngVal
_080979BC: .4byte 0x00196225
_080979C0: .4byte 0x3C6EF35F
_080979C4: .4byte 0x00001FFF
_080979C8: .4byte 0x00000FFF
_080979CC: .4byte 0xFFFFFF00
_080979D0: .4byte 0x000001FF
_080979D4: .4byte gUnk_03000510
_080979D8: .4byte 0x06012000
_080979DC: .4byte 0x00000291

	thumb_func_start sub_080979E0
sub_080979E0: @ 0x080979E0
	push {r4, r5, r6, r7, lr}
	ldr r2, _08097A00 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08097A04
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08097A0C
	.align 2, 0
_08097A00: .4byte gCurTask
_08097A04:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08097A0C:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08097A28
	ldr r0, [r5]
	bl TaskDestroy
	b _08097B94
_08097A28:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08097A74
	ldrb r0, [r1]
	cmp r0, #0
	beq _08097A40
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08097A40
	str r2, [r3, #0x44]
	movs r1, #0
_08097A40:
	cmp r1, #0
	beq _08097A74
	ldr r0, _08097A70 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08097AE4
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08097AE4
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08097B94
	.align 2, 0
_08097A70: .4byte gUnk_03000510
_08097A74:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08097ADC @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08097AB6
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08097AB6
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08097AB6
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08097AB6
	movs r4, #4
_08097AB6:
	ldr r0, _08097AE0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08097AE4
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08097AE4
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08097B94
	.align 2, 0
_08097ADC: .4byte gKirbys
_08097AE0: .4byte gUnk_03000510
_08097AE4:
	ldr r0, _08097B64 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r7, [r3, #4]
	mov ip, r7
	cmp r0, #0
	beq _08097B2C
	ldr r6, _08097B68 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08097B6C @ =gUnk_02026D50
_08097AFA:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08097B24
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08097B3E
_08097B24:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08097AFA
_08097B2C:
	movs r0, #1
	cmp r0, #0
	beq _08097B3E
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08097B3E:
	ldrh r1, [r3, #6]
	movs r0, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	mov r0, ip
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	ble _08097B70
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r1, r0
	strh r1, [r3, #6]
	b _08097B94
	.align 2, 0
_08097B64: .4byte gUnk_0203AD44
_08097B68: .4byte gCurLevelInfo
_08097B6C: .4byte gUnk_02026D50
_08097B70:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _08097B8E
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08097B8E:
	adds r0, r3, #0
	bl sub_0806FAC8
_08097B94:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08097B9C
sub_08097B9C: @ 0x08097B9C
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08097BD0 @ =sub_08097C74
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08097BD4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08097BD8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08097BE0
	.align 2, 0
_08097BD0: .4byte sub_08097C74
_08097BD4: .4byte sub_0803DCCC
_08097BD8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08097BE0:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	ldr r0, [r5, #8]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _08097C1A
	ldrh r0, [r4, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r4, #6]
_08097C1A:
	ldr r0, _08097C68 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08097C3E
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08097C3E:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08097C6C @ =0x06012000
	ldr r3, _08097C70 @ =0x000002A9
	str r6, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08097C68: .4byte gUnk_03000510
_08097C6C: .4byte 0x06012000
_08097C70: .4byte 0x000002A9

	thumb_func_start sub_08097C74
sub_08097C74: @ 0x08097C74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08097C9C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08097CA0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08097CA8
	.align 2, 0
_08097C9C: .4byte gCurTask
_08097CA0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08097CA8:
	adds r3, r0, #0
	ldr r5, [r3, #0x44]
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _08097CC6
	ldr r0, [r6]
	bl TaskDestroy
	b _08097E8C
_08097CC6:
	adds r1, r5, #0
	cmp r5, #0
	beq _08097D10
	ldrb r0, [r5]
	cmp r0, #0
	beq _08097CDE
	ldr r0, [r5, #8]
	ands r0, r2
	cmp r0, #0
	beq _08097CDE
	str r4, [r3, #0x44]
	movs r1, #0
_08097CDE:
	cmp r1, #0
	beq _08097D10
	ldr r0, _08097D0C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08097D80
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08097D80
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08097E8C
	.align 2, 0
_08097D0C: .4byte gUnk_03000510
_08097D10:
	adds r6, r3, #0
	movs r4, #0
	ldr r2, _08097D78 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08097D52
	movs r4, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08097D52
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08097D52
	movs r4, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08097D52
	movs r4, #4
_08097D52:
	ldr r0, _08097D7C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08097D80
	ldrh r1, [r6, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08097D80
	adds r0, r6, #0
	bl sub_0803DBC8
	b _08097E8C
	.align 2, 0
_08097D78: .4byte gKirbys
_08097D7C: .4byte gUnk_03000510
_08097D80:
	ldr r0, _08097E04 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r6, [r3, #0x34]
	ldr r1, [r3, #0x38]
	mov sl, r1
	ldrh r2, [r3, #4]
	mov sb, r2
	cmp r0, #0
	beq _08097DD4
	ldr r7, _08097E08 @ =gCurLevelInfo
	mov r8, r7
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r1, _08097E0C @ =gUnk_02026D50
	mov ip, r1
_08097DA0:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _08097DCC
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08097DE6
_08097DCC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08097DA0
_08097DD4:
	movs r0, #1
	cmp r0, #0
	beq _08097DE6
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08097DE6:
	ldrh r1, [r3, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r3, #6]
	ldr r4, _08097E10 @ =0xFFFFFF00
	adds r1, r6, #0
	ands r1, r4
	ldr r2, [r5, #0x40]
	adds r0, r2, #0
	ands r0, r4
	cmp r1, r0
	bne _08097E14
	movs r0, #0
	strh r0, [r3, #0x3c]
	b _08097E22
	.align 2, 0
_08097E04: .4byte gUnk_0203AD44
_08097E08: .4byte gCurLevelInfo
_08097E0C: .4byte gUnk_02026D50
_08097E10: .4byte 0xFFFFFF00
_08097E14:
	cmp r6, r2
	bge _08097E20
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #0x3c]
	b _08097E22
_08097E20:
	strh r4, [r3, #0x3c]
_08097E22:
	ldr r2, _08097E38 @ =0xFFFFFF00
	mov r1, sl
	ands r1, r2
	ldr r4, [r5, #0x44]
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	bne _08097E3C
	movs r0, #0
	b _08097E46
	.align 2, 0
_08097E38: .4byte 0xFFFFFF00
_08097E3C:
	cmp sl, r4
	bge _08097E44
	movs r0, #0x80
	b _08097E46
_08097E44:
	ldr r0, _08097E64 @ =0x0000FF80
_08097E46:
	strh r0, [r3, #0x3e]
	mov r0, sb
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _08097E68
	ldrh r0, [r3, #6]
	movs r7, #0x80
	lsls r7, r7, #5
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _08097E8C
	.align 2, 0
_08097E64: .4byte 0x0000FF80
_08097E68:
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08097E86
	movs r1, #0x3c
	ldrsh r0, [r3, r1]
	adds r0, r6, r0
	str r0, [r3, #0x34]
	movs r2, #0x3e
	ldrsh r0, [r3, r2]
	mov r7, sl
	subs r0, r7, r0
	str r0, [r3, #0x38]
_08097E86:
	adds r0, r3, #0
	bl sub_0806FAC8
_08097E8C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08097E9C
sub_08097E9C: @ 0x08097E9C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _08097ED4 @ =sub_08097F90
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08097ED8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08097EDC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08097EE4
	.align 2, 0
_08097ED4: .4byte sub_08097F90
_08097ED8: .4byte sub_0803DCCC
_08097EDC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08097EE4:
	adds r5, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x38]
	str r4, [r5, #0x44]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08097F22
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	str r0, [r5, #0x34]
	ldrh r0, [r5, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r5, #6]
	b _08097F2C
_08097F22:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
_08097F2C:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x38]
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, _08097F84 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08097F5A
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_08097F5A:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	movs r4, #0
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08097F88 @ =0x06012000
	ldr r3, _08097F8C @ =0x000002C1
	str r4, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08097F84: .4byte gUnk_03000510
_08097F88: .4byte 0x06012000
_08097F8C: .4byte 0x000002C1

	thumb_func_start sub_08097F90
sub_08097F90: @ 0x08097F90
	push {r4, r5, r6, r7, lr}
	ldr r2, _08097FB0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08097FB4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08097FBC
	.align 2, 0
_08097FB0: .4byte gCurTask
_08097FB4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08097FBC:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08097FD8
	ldr r0, [r5]
	bl TaskDestroy
	b _0809817C
_08097FD8:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08098024
	ldrb r0, [r1]
	cmp r0, #0
	beq _08097FF0
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08097FF0
	str r2, [r3, #0x44]
	movs r1, #0
_08097FF0:
	cmp r1, #0
	beq _08098024
	ldr r0, _08098020 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08098094
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08098094
	adds r0, r3, #0
	bl sub_0803DBC8
	b _0809817C
	.align 2, 0
_08098020: .4byte gUnk_03000510
_08098024:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _0809808C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08098066
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08098066
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08098066
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08098066
	movs r4, #4
_08098066:
	ldr r0, _08098090 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08098094
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08098094
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0809817C
	.align 2, 0
_0809808C: .4byte gKirbys
_08098090: .4byte gUnk_03000510
_08098094:
	ldr r0, _08098100 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrb r7, [r3, #1]
	mov ip, r7
	cmp r0, #0
	beq _080980DC
	ldr r6, _08098104 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08098108 @ =gUnk_02026D50
_080980AA:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080980D4
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080980EE
_080980D4:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080980AA
_080980DC:
	movs r0, #1
	cmp r0, #0
	beq _080980EE
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080980EE:
	mov r6, ip
	lsls r0, r6, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0809810C
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r3, #0x3e]
	b _08098134
	.align 2, 0
_08098100: .4byte gUnk_0203AD44
_08098104: .4byte gCurLevelInfo
_08098108: .4byte gUnk_02026D50
_0809810C:
	cmp r1, #1
	bls _08098134
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r3, #0x3e]
	cmp r1, #2
	bne _08098134
	ldr r2, _0809814C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08098150 @ =0x00196225
	muls r0, r1, r0
	ldr r7, _08098154 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsls r0, r0, #7
	lsrs r0, r0, #0x17
	movs r1, #0x80
	lsls r1, r1, #1
	subs r1, r1, r0
	strh r1, [r3, #0x3c]
_08098134:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08098158
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _0809817C
	.align 2, 0
_0809814C: .4byte gRngVal
_08098150: .4byte 0x00196225
_08098154: .4byte 0x3C6EF35F
_08098158:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08098176
	movs r6, #0x3c
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r7, #0x3e
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08098176:
	adds r0, r3, #0
	bl sub_0806FAC8
_0809817C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08098184
sub_08098184: @ 0x08098184
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	movs r0, #0xa4
	lsls r0, r0, #2
	mov r8, r0
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	movs r1, #0
	strh r1, [r0, #0x3c]
	movs r1, #0xc0
	lsls r1, r1, #2
	mov sl, r1
	mov r1, sl
	strh r1, [r0, #0x3e]
	movs r1, #0
	strh r1, [r0, #4]
	ldr r1, _080982B4 @ =0x0000FFF0
	mov sb, r1
	mov r1, sb
	strh r1, [r0, #8]
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	ldr r1, _080982B8 @ =0x0000021F
	strh r1, [r0, #0x3c]
	strh r1, [r0, #0x3e]
	ldr r7, _080982BC @ =0x0000FFF5
	strh r7, [r0, #4]
	strh r7, [r0, #8]
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	mov r1, sl
	strh r1, [r0, #0x3c]
	movs r1, #0
	strh r1, [r0, #0x3e]
	mov r1, sb
	strh r1, [r0, #4]
	movs r1, #0
	strh r1, [r0, #8]
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	ldr r1, _080982B8 @ =0x0000021F
	strh r1, [r0, #0x3c]
	ldr r1, _080982C0 @ =0x0000FDE1
	mov sl, r1
	mov r1, sl
	strh r1, [r0, #0x3e]
	strh r7, [r0, #4]
	movs r1, #0xb
	mov sb, r1
	mov r1, sb
	strh r1, [r0, #8]
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	movs r1, #0
	strh r1, [r0, #0x3c]
	movs r4, #0xfd
	lsls r4, r4, #8
	strh r4, [r0, #0x3e]
	strh r1, [r0, #4]
	movs r5, #0x10
	strh r5, [r0, #8]
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	mov r1, sl
	strh r1, [r0, #0x3c]
	strh r1, [r0, #0x3e]
	mov r1, sb
	strh r1, [r0, #4]
	strh r1, [r0, #8]
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	strh r4, [r0, #0x3c]
	movs r1, #0
	strh r1, [r0, #0x3e]
	strh r5, [r0, #4]
	strh r1, [r0, #8]
	adds r0, r6, #0
	movs r1, #0
	mov r2, r8
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0xc8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	mov r1, sl
	strh r1, [r0, #0x3c]
	ldr r1, _080982B8 @ =0x0000021F
	strh r1, [r0, #0x3e]
	mov r1, sb
	strh r1, [r0, #4]
	strh r7, [r0, #8]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080982B4: .4byte 0x0000FFF0
_080982B8: .4byte 0x0000021F
_080982BC: .4byte 0x0000FFF5
_080982C0: .4byte 0x0000FDE1

	thumb_func_start sub_080982C4
sub_080982C4: @ 0x080982C4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	movs r5, #0x80
	lsls r5, r5, #2
	ldr r2, _08098328 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809832C @ =0x00196225
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _08098330 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r2]
	lsrs r3, r3, #0x10
	movs r0, #7
	ands r3, r0
	adds r3, #1
	ldr r2, _08098334 @ =0x00000291
	adds r0, r4, #0
	movs r1, #0
	bl sub_0808B248
	adds r7, r0, #0
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r7, #0x20]
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r1, [r0]
	ldr r0, _08098338 @ =0x000003D3
	cmp r1, r0
	bls _08098340
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, _0809833C @ =0xFFFFFB00
	subs r0, r0, r1
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	movs r5, #0x80
	lsls r5, r5, #3
	b _08098360
	.align 2, 0
_08098328: .4byte gRngVal
_0809832C: .4byte 0x00196225
_08098330: .4byte 0x3C6EF35F
_08098334: .4byte 0x00000291
_08098338: .4byte 0x000003D3
_0809833C: .4byte 0xFFFFFB00
_08098340:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	rsbs r0, r0, #0
	lsls r0, r0, #8
	lsrs r3, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	rsbs r0, r0, #0
	ldr r4, _080983EC @ =0xFFFFFE00
	adds r0, r0, r4
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
_08098360:
	lsls r0, r3, #0x10
	lsls r1, r2, #0x10
	asrs r3, r0, #0x10
	cmp r0, r1
	bne _08098370
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08098370:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	adds r0, r3, #0
	bl ArcTan2
	lsls r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #0xe
	adds r0, r0, r1
	adds r3, r5, #0
	ldr r2, _080983F0 @ =gSineTable
	lsrs r0, r0, #0x16
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r0, r4
	lsls r1, r1, #1
	adds r1, r1, r2
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	muls r1, r3, r1
	asrs r1, r1, #8
	strh r1, [r7, #0x3c]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	muls r0, r3, r0
	asrs r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r3, _080983F4 @ =gRngVal
	ldr r0, [r3]
	ldr r6, _080983F8 @ =0x00196225
	adds r2, r0, #0
	muls r2, r6, r2
	ldr r5, _080983FC @ =0x3C6EF35F
	adds r2, r2, r5
	str r2, [r3]
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	adds r1, #0x80
	lsrs r0, r2, #0x10
	movs r4, #0xff
	ands r0, r4
	subs r1, r1, r0
	strh r1, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	movs r2, #0x3e
	ldrsh r1, [r7, r2]
	adds r1, #0x80
	lsrs r0, r0, #0x10
	ands r0, r4
	subs r1, r1, r0
	strh r1, [r7, #0x3e]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080983EC: .4byte 0xFFFFFE00
_080983F0: .4byte gSineTable
_080983F4: .4byte gRngVal
_080983F8: .4byte 0x00196225
_080983FC: .4byte 0x3C6EF35F

	thumb_func_start sub_08098400
sub_08098400: @ 0x08098400
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	ldr r2, _08098428 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809842C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098434
	.align 2, 0
_08098428: .4byte gCurTask
_0809842C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098434:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov sl, r0
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0809844E
	ldr r0, [r2]
	bl TaskDestroy
	b _080986F0
_0809844E:
	movs r2, #0
	mov r0, sl
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x5a
	beq _08098464
	ldr r0, _080984B8 @ =0x00000103
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0
	bne _08098470
_08098464:
	movs r2, #0xa0
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	movs r2, #1
_08098470:
	cmp r2, #0
	beq _08098476
	b _080986F0
_08098476:
	ldr r0, _080984BC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sl
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809849C
	mov r1, sl
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080984A2
_0809849C:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080984A2:
	ldrh r1, [r7, #4]
	lsls r2, r1, #0x10
	cmp r1, #6
	bne _080984C0
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _080986F0
	.align 2, 0
_080984B8: .4byte 0x00000103
_080984BC: .4byte gUnk_03000510
_080984C0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080984CA
	b _080986F0
_080984CA:
	mov r1, sl
	ldr r0, [r1, #0x10]
	str r0, [r7, #0xc]
	ldr r0, [r1, #0x14]
	str r0, [r7, #0x10]
	ldr r0, [r1, #0x18]
	str r0, [r7, #0x14]
	ldrh r0, [r1, #0x1c]
	strh r0, [r7, #0x18]
	ldrh r0, [r1, #0x1e]
	strh r0, [r7, #0x1a]
	asrs r0, r2, #0x11
	adds r0, #0x1a
	lsls r0, r0, #6
	strh r0, [r7, #0x20]
	ldrh r0, [r1, #0x26]
	strh r0, [r7, #0x22]
	mov r0, sl
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r2, r7, #0
	adds r2, #0x26
	str r2, [sp]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x2b
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x27
	str r1, [sp, #4]
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x2c
	ldrb r0, [r0]
	movs r2, #0x28
	adds r2, r2, r7
	mov sb, r2
	strb r0, [r2]
	mov r0, sl
	adds r0, #0x2d
	ldrb r0, [r0]
	movs r1, #0x29
	adds r1, r1, r7
	mov r8, r1
	strb r0, [r1]
	mov r0, sl
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r6, r7, #0
	adds r6, #0x2a
	strb r0, [r6]
	mov r0, sl
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r5, r7, #0
	adds r5, #0x2b
	strb r0, [r5]
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	ldr r3, _080985C8 @ =gCurLevelInfo
	ldr r1, _080985CC @ =gUnk_0203AD3C
	ldrb r0, [r1]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov ip, r2
	mov r2, ip
	strh r2, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldr r2, _080985CC @ =gUnk_0203AD3C
	ldrb r0, [r2]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r7, #0x1e]
	ldrh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	ldr r1, [sp]
	str r1, [sp, #8]
	ldr r2, [sp, #4]
	str r2, [sp, #0xc]
	cmp r0, #0
	bne _080985E0
	ldr r2, _080985D0 @ =gKirbys
	ldr r0, _080985CC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080985E0
	ldr r1, _080985D4 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, ip
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080985D8
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _080985E0
	.align 2, 0
_080985C8: .4byte gCurLevelInfo
_080985CC: .4byte gUnk_0203AD3C
_080985D0: .4byte gKirbys
_080985D4: .4byte gUnk_0203AD18
_080985D8:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_080985E0:
	mov r1, sl
	adds r1, #0xb0
	ldrh r0, [r1]
	cmp r0, #0
	bne _080985EC
	b _080986F0
_080985EC:
	mov r0, sl
	adds r0, #0xa4
	ldr r0, [r0]
	str r0, [r7, #0xc]
	mov r0, sl
	adds r0, #0xa8
	ldr r0, [r0]
	str r0, [r7, #0x10]
	mov r0, sl
	adds r0, #0xac
	ldr r0, [r0]
	str r0, [r7, #0x14]
	ldrh r0, [r1]
	strh r0, [r7, #0x18]
	mov r0, sl
	adds r0, #0xb2
	ldrh r0, [r0]
	strh r0, [r7, #0x1a]
	ldrh r0, [r7, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	adds r0, #0x1a
	lsls r0, r0, #6
	strh r0, [r7, #0x20]
	mov r0, sl
	adds r0, #0xba
	ldrh r0, [r0]
	strh r0, [r7, #0x22]
	mov r0, sl
	adds r0, #0xbe
	ldrb r0, [r0]
	ldr r1, [sp, #8]
	strb r0, [r1]
	mov r0, sl
	adds r0, #0xbf
	ldrb r0, [r0]
	ldr r2, [sp, #0xc]
	strb r0, [r2]
	mov r0, sl
	adds r0, #0xc0
	ldrb r0, [r0]
	mov r1, sb
	strb r0, [r1]
	mov r0, sl
	adds r0, #0xc1
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	mov r0, sl
	adds r0, #0xc2
	ldrb r0, [r0]
	strb r0, [r6]
	mov r0, sl
	adds r0, #0xc3
	ldrb r0, [r0]
	strb r0, [r5]
	ldr r2, [r7, #0x34]
	asrs r2, r2, #8
	ldr r3, _080986D8 @ =gCurLevelInfo
	ldr r5, _080986DC @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r6, r2, r0
	strh r6, [r7, #0x1c]
	ldr r1, [r7, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r7, #0x1e]
	ldrh r4, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _080986F0
	ldr r2, _080986E0 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080986F0
	ldr r1, _080986E4 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r6, r0
	strh r0, [r7, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r7, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080986E8
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_081564D8
	b _080986F0
	.align 2, 0
_080986D8: .4byte gCurLevelInfo
_080986DC: .4byte gUnk_0203AD3C
_080986E0: .4byte gKirbys
_080986E4: .4byte gUnk_0203AD18
_080986E8:
	adds r0, r7, #0
	adds r0, #0xc
	bl sub_0815604C
_080986F0:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08098700
sub_08098700: @ 0x08098700
	push {r4, r5, r6, lr}
	ldr r2, _08098720 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08098724
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809872C
	.align 2, 0
_08098720: .4byte gCurTask
_08098724:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809872C:
	mov ip, r0
	ldr r3, [r0, #0x44]
	ldrh r2, [r0, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08098746
	ldr r0, [r4]
	bl TaskDestroy
	b _080988A8
_08098746:
	ldr r4, [r3, #8]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08098756
	adds r0, r1, #0
	orrs r0, r2
	b _08098794
_08098756:
	ldr r0, _0809879C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08098778
	movs r0, #0x80
	lsls r0, r0, #6
	ands r4, r0
	cmp r4, #0
	bne _08098780
_08098778:
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_08098780:
	mov r0, ip
	ldrh r1, [r0, #4]
	lsls r2, r1, #0x10
	cmp r1, #6
	bne _080987A0
	ldrh r1, [r0, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
_08098794:
	mov r1, ip
	strh r0, [r1, #6]
	b _080988A8
	.align 2, 0
_0809879C: .4byte gUnk_03000510
_080987A0:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080987AA
	b _080988A8
_080987AA:
	ldr r0, [r3, #0x10]
	mov r1, ip
	str r0, [r1, #0xc]
	ldr r0, [r3, #0x14]
	str r0, [r1, #0x10]
	ldr r0, [r3, #0x18]
	str r0, [r1, #0x14]
	ldrh r0, [r3, #0x1c]
	strh r0, [r1, #0x18]
	ldrh r0, [r3, #0x1e]
	strh r0, [r1, #0x1a]
	asrs r0, r2, #0x11
	adds r0, #0x1a
	lsls r0, r0, #6
	strh r0, [r1, #0x20]
	ldrh r0, [r3, #0x26]
	strh r0, [r1, #0x22]
	adds r0, r3, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r1, #0x26
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	mov r0, ip
	adds r0, #0x28
	strb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x29
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2e
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	adds r0, r3, #0
	adds r0, #0x2f
	ldrb r0, [r0]
	adds r1, #1
	strb r0, [r1]
	mov r0, ip
	ldr r2, [r0, #0x34]
	asrs r2, r2, #8
	ldr r3, _08098890 @ =gCurLevelInfo
	ldr r5, _08098894 @ =gUnk_0203AD3C
	ldrb r0, [r5]
	movs r4, #0xcd
	lsls r4, r4, #3
	muls r0, r4, r0
	adds r1, r3, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r6, r2, r0
	mov r1, ip
	strh r6, [r1, #0x1c]
	ldr r1, [r1, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r5]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	mov r2, ip
	strh r3, [r2, #0x1e]
	ldrh r4, [r2, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _080988A8
	ldr r2, _08098898 @ =gKirbys
	ldrb r1, [r5]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	mov r1, ip
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080988A8
	ldr r1, _0809889C @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r6, r0
	mov r2, ip
	strh r0, [r2, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r2, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080988A0
	mov r0, ip
	adds r0, #0xc
	bl sub_081564D8
	b _080988A8
	.align 2, 0
_08098890: .4byte gCurLevelInfo
_08098894: .4byte gUnk_0203AD3C
_08098898: .4byte gKirbys
_0809889C: .4byte gUnk_0203AD18
_080988A0:
	mov r0, ip
	adds r0, #0xc
	bl sub_0815604C
_080988A8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080988B0
sub_080988B0: @ 0x080988B0
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080988E0 @ =sub_08098938
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080988E4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080988E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080988F0
	.align 2, 0
_080988E0: .4byte sub_08098938
_080988E4: .4byte sub_0803DCCC
_080988E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080988F0:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r4, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xc
	movs r3, #0xe1
	lsls r3, r3, #2
	movs r0, #0x1e
	str r0, [sp]
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #2
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08098938
sub_08098938: @ 0x08098938
	push {r4, r5, lr}
	sub sp, #0x28
	ldr r2, _08098958 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809895C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098964
	.align 2, 0
_08098958: .4byte gCurTask
_0809895C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098964:
	adds r5, r0, #0
	ldrh r1, [r5, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0809897C
	ldr r0, [r2]
	bl TaskDestroy
	b _08098A70
_0809897C:
	ldr r0, [r5, #0x44]
	ldr r0, [r0, #8]
	ands r0, r3
	cmp r0, #0
	beq _0809898E
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _08098A70
_0809898E:
	movs r0, #4
	adds r3, r0, #0
	orrs r3, r1
	strh r3, [r5, #6]
	ldr r2, _080989FC @ =gKirbys
	ldr r0, _08098A00 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08098A44
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	cmp r3, #0
	beq _08098A0C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08098A6A
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #2
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08098A04 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _08098A08 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _08098A6A
	.align 2, 0
_080989FC: .4byte gKirbys
_08098A00: .4byte gUnk_0203AD3C
_08098A04: .4byte 0xFFF7FFFF
_08098A08: .4byte 0x0400000A
_08098A0C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _08098A6A
	movs r0, #2
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _08098A3C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _08098A40 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _08098A6A
	.align 2, 0
_08098A3C: .4byte 0xFFF7FFFF
_08098A40: .4byte 0x0400000A
_08098A44:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _08098A60
	movs r0, #0x80
	lsls r0, r0, #7
	ands r3, r0
	lsls r0, r3, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08098A60
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_08098A60:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_08098A6A:
	adds r0, r5, #0
	bl sub_0806FAC8
_08098A70:
	add sp, #0x28
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08098A78
sub_08098A78: @ 0x08098A78
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _08098AAC @ =sub_08098B34
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08098AB0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08098AB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08098ABC
	.align 2, 0
_08098AAC: .4byte sub_08098B34
_08098AB0: .4byte sub_0803DCCC
_08098AB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08098ABC:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08098AEC
	ldrh r0, [r4, #6]
	orrs r0, r1
	strh r0, [r4, #6]
_08098AEC:
	ldr r1, _08098B28 @ =0x00000103
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08098AFC
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08098AFC:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08098B2C @ =0x06012000
	ldr r3, _08098B30 @ =0x000002C7
	str r6, [sp]
	ldrh r0, [r5, #0x24]
	lsrs r0, r0, #6
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08098B28: .4byte 0x00000103
_08098B2C: .4byte 0x06012000
_08098B30: .4byte 0x000002C7

	thumb_func_start sub_08098B34
sub_08098B34: @ 0x08098B34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08098B58 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08098B5C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098B64
	.align 2, 0
_08098B58: .4byte gCurTask
_08098B5C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098B64:
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xc
	ldr r0, [r4, #0x44]
	mov ip, r0
	ldrh r1, [r4, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08098B84
	ldr r0, [r2]
	bl TaskDestroy
	b _08098E46
_08098B84:
	ldr r2, _08098BD0 @ =0x0000DBFA
	ands r2, r1
	strh r2, [r4, #6]
	mov r1, ip
	ldr r0, [r1, #8]
	ldr r1, _08098BD4 @ =0x00002405
	ands r0, r1
	orrs r0, r2
	strh r0, [r4, #6]
	mov r0, ip
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	mov r2, ip
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x38]
	mov r0, ip
	adds r0, #0xc0
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x28
	strb r1, [r0]
	ldr r0, _08098BD8 @ =0x00000103
	add r0, ip
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08098BDC
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x36
	beq _08098BF0
	b _08098BE6
	.align 2, 0
_08098BD0: .4byte 0x0000DBFA
_08098BD4: .4byte 0x00002405
_08098BD8: .4byte 0x00000103
_08098BDC:
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x63
	beq _08098BF0
_08098BE6:
	ldrh r1, [r4, #6]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r4, #6]
	b _08098E46
_08098BF0:
	ldr r0, _08098C98 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r3, ip
	adds r3, #0x56
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	mov sl, r3
	cmp r2, #0
	beq _08098CAC
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _08098CAC
	ldr r2, _08098C9C @ =gCurLevelInfo
	ldr r6, _08098CA0 @ =gUnk_0203AD3C
	ldrb r0, [r6]
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r2, #0
	adds r0, #0xc
	adds r1, r1, r0
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r7, r0, #8
	strh r7, [r5, #0x10]
	ldrb r0, [r6]
	adds r1, r0, #0
	muls r1, r3, r1
	adds r2, #0x10
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r3, r0, #8
	strh r3, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08098C58
	b _08098E46
_08098C58:
	ldr r2, _08098CA4 @ =gKirbys
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08098C74
	b _08098E46
_08098C74:
	ldr r1, _08098CA8 @ =gUnk_0203AD18
	ldrh r0, [r1]
	adds r0, r7, r0
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08098C90
	b _08098E22
_08098C90:
	adds r0, r5, #0
	bl sub_0815604C
	b _08098E46
	.align 2, 0
_08098C98: .4byte gUnk_03000510
_08098C9C: .4byte gCurLevelInfo
_08098CA0: .4byte gUnk_0203AD3C
_08098CA4: .4byte gKirbys
_08098CA8: .4byte gUnk_0203AD18
_08098CAC:
	ldrh r1, [r4, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08098CC0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _08098CC6
_08098CC0:
	ldr r0, [r5, #8]
	ldr r1, _08098D34 @ =0xFFFFFBFF
	ands r0, r1
_08098CC6:
	str r0, [r5, #8]
	ldrh r2, [r4, #6]
	movs r0, #8
	ands r0, r2
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08098D50
	ldrb r0, [r5, #0x1b]
	ldrb r3, [r5, #0x1a]
	cmp r0, r3
	bne _08098CE6
	ldrh r0, [r5, #0x18]
	ldrh r3, [r5, #0xc]
	cmp r0, r3
	beq _08098CF6
_08098CE6:
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08098CF6
	strb r1, [r4, #1]
	strh r1, [r4, #2]
	ldr r0, _08098D38 @ =0x0000FFFB
	ands r0, r2
	strh r0, [r4, #6]
_08098CF6:
	adds r0, r5, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _08098D3C
	ldrh r0, [r4, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08098D50
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08098D50
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	ldrh r1, [r4, #6]
	ldr r0, _08098D38 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r4, #6]
	strb r3, [r4, #1]
	strh r2, [r4, #2]
	adds r0, r5, #0
	bl sub_08155128
	b _08098D50
	.align 2, 0
_08098D34: .4byte 0xFFFFFBFF
_08098D38: .4byte 0x0000FFFB
_08098D3C:
	ldrb r1, [r5, #0x1c]
	ldrh r0, [r4, #2]
	adds r0, r0, r1
	strh r0, [r4, #2]
	lsrs r0, r0, #4
	strb r0, [r4, #1]
	ldrh r1, [r4, #6]
	ldr r0, _08098E2C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r4, #6]
_08098D50:
	ldr r1, [r4, #0x34]
	asrs r1, r1, #8
	ldr r2, _08098E30 @ =gCurLevelInfo
	ldr r7, _08098E34 @ =gUnk_0203AD3C
	ldrb r0, [r7]
	movs r3, #0xcd
	lsls r3, r3, #3
	mov ip, r3
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	movs r3, #0xc
	adds r3, r3, r2
	mov sb, r3
	add r0, sb
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r6, r4, #0
	adds r6, #0x40
	movs r0, #0
	ldrsb r0, [r6, r0]
	adds r0, r0, r1
	movs r1, #0
	mov r8, r1
	strh r0, [r5, #0x10]
	ldr r1, [r4, #0x38]
	asrs r1, r1, #8
	ldrb r0, [r7]
	mov r3, ip
	muls r3, r0, r3
	adds r0, r3, #0
	adds r2, #0x10
	adds r0, r0, r2
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r1, r1, r0
	adds r3, r4, #0
	adds r3, #0x41
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x12]
	ldrb r0, [r5, #0x1c]
	cmp r0, #0
	beq _08098DB2
	mov r0, r8
	strb r0, [r6]
	strb r0, [r3]
_08098DB2:
	ldrb r0, [r7]
	mov r1, sl
	ldrb r1, [r1]
	cmp r0, r1
	bne _08098DDE
	mov r1, ip
	muls r1, r0, r1
	add r1, sb
	ldr r0, [r4, #0x34]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x10]
	ldrb r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r2
	ldr r0, [r4, #0x38]
	ldr r1, [r1]
	subs r0, r0, r1
	asrs r0, r0, #8
	strh r0, [r5, #0x12]
_08098DDE:
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08098E46
	ldr r2, _08098E38 @ =gKirbys
	ldrb r1, [r7]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08098E46
	ldr r1, _08098E3C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x10]
	adds r0, r0, r2
	strh r0, [r5, #0x10]
	ldrh r0, [r1, #2]
	ldrh r3, [r5, #0x12]
	adds r0, r0, r3
	strh r0, [r5, #0x12]
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08098E40
_08098E22:
	adds r0, r5, #0
	bl sub_081564D8
	b _08098E46
	.align 2, 0
_08098E2C: .4byte 0x0000FFFD
_08098E30: .4byte gCurLevelInfo
_08098E34: .4byte gUnk_0203AD3C
_08098E38: .4byte gKirbys
_08098E3C: .4byte gUnk_0203AD18
_08098E40:
	adds r0, r5, #0
	bl sub_0815604C
_08098E46:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08098E54
sub_08098E54: @ 0x08098E54
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, [sp, #0x24]
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x10
	lsrs r7, r3, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, _08098EA0 @ =sub_08098F6C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _08098EA4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08098EA8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098EB0
	.align 2, 0
_08098EA0: .4byte sub_08098F6C
_08098EA4: .4byte sub_0803DCCC
_08098EA8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098EB0:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	strh r7, [r4, #0x3c]
	mov r0, r8
	strh r0, [r4, #0x3e]
	mov r2, sb
	lsls r1, r2, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08098F02
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x34]
	subs r0, r0, r1
	b _08098F0A
_08098F02:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
_08098F0A:
	str r0, [r4, #0x34]
	ldr r0, _08098F60 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r5, #0
	adds r1, #0x56
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08098F32
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_08098F32:
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08098F64 @ =0x06012000
	ldr r3, _08098F68 @ =0x00000297
	str r5, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08098F60: .4byte gUnk_03000510
_08098F64: .4byte 0x06012000
_08098F68: .4byte 0x00000297

	thumb_func_start sub_08098F6C
sub_08098F6C: @ 0x08098F6C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08098F8C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08098F90
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08098F98
	.align 2, 0
_08098F8C: .4byte gCurTask
_08098F90:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08098F98:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08098FB4
	ldr r0, [r5]
	bl TaskDestroy
	b _08099112
_08098FB4:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _08099000
	ldrb r0, [r1]
	cmp r0, #0
	beq _08098FCC
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08098FCC
	str r2, [r3, #0x44]
	movs r1, #0
_08098FCC:
	cmp r1, #0
	beq _08099000
	ldr r0, _08098FFC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08099070
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08099070
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08099112
	.align 2, 0
_08098FFC: .4byte gUnk_03000510
_08099000:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08099068 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08099042
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099042
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099042
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099042
	movs r4, #4
_08099042:
	ldr r0, _0809906C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08099070
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08099070
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08099112
	.align 2, 0
_08099068: .4byte gKirbys
_0809906C: .4byte gUnk_03000510
_08099070:
	ldr r0, _080990DC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080990B4
	ldr r6, _080990E0 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _080990E4 @ =gUnk_02026D50
_08099082:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080990AC
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080990C6
_080990AC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08099082
_080990B4:
	movs r0, #1
	cmp r0, #0
	beq _080990C6
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080990C6:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080990E8
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _08099112
	.align 2, 0
_080990DC: .4byte gUnk_0203AD44
_080990E0: .4byte gCurLevelInfo
_080990E4: .4byte gUnk_02026D50
_080990E8:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809910C
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_0809910C:
	adds r0, r3, #0
	bl sub_0806FAC8
_08099112:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08099118
sub_08099118: @ 0x08099118
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _08099148 @ =sub_0809924C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809914C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099150
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08099158
	.align 2, 0
_08099148: .4byte sub_0809924C
_0809914C: .4byte sub_0803DCCC
_08099150:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08099158:
	adds r0, r5, #0
	bl sub_0803E3B0
	movs r2, #0
	movs r0, #3
	strb r0, [r5]
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x38]
	str r6, [r5, #0x44]
	adds r4, r6, #0
	adds r4, #0x60
	ldrh r0, [r4]
	adds r1, r5, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	adds r3, r0, #0
	orrs r1, r3
	movs r7, #0x80
	lsls r7, r7, #3
	adds r0, r7, #0
	orrs r1, r0
	strh r2, [r5, #0x3c]
	strh r2, [r5, #0x3e]
	ldr r0, [r5, #0x38]
	ldr r2, _0809922C @ =0xFFFF6000
	adds r0, r0, r2
	str r0, [r5, #0x38]
	ldr r0, [r5, #0x34]
	adds r0, r0, r2
	str r0, [r5, #0x34]
	orrs r1, r3
	strh r1, [r5, #6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, _08099230 @ =0x06012000
	movs r3, #0xa7
	lsls r3, r3, #2
	movs r0, #1
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r5, #0
	bl sub_080709F8
	ldr r1, _08099234 @ =gKirbys
	ldr r0, _08099238 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r4, [r4]
	cmp r0, r4
	bne _08099222
	ldrb r0, [r6]
	cmp r0, #0
	bne _080991E2
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08099222
_080991E2:
	ldr r1, _0809923C @ =gUnk_08D60FA4
	ldr r4, _08099240 @ =gSongTable
	ldr r2, _08099244 @ =0x00001004
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08099208
	movs r7, #0x80
	lsls r7, r7, #5
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08099222
_08099208:
	cmp r3, #0
	beq _0809921A
	ldr r0, _08099248 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08099222
_0809921A:
	movs r0, #0x80
	lsls r0, r0, #2
	bl m4aSongNumStart
_08099222:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809922C: .4byte 0xFFFF6000
_08099230: .4byte 0x06012000
_08099234: .4byte gKirbys
_08099238: .4byte gUnk_0203AD3C
_0809923C: .4byte gUnk_08D60FA4
_08099240: .4byte gSongTable
_08099244: .4byte 0x00001004
_08099248: .4byte gUnk_0203AD10

	thumb_func_start sub_0809924C
sub_0809924C: @ 0x0809924C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _0809926C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099270
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08099278
	.align 2, 0
_0809926C: .4byte gCurTask
_08099270:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08099278:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	ldrh r1, [r5, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	beq _08099296
	ldr r0, [r2]
	bl TaskDestroy
	b _0809959E
_08099296:
	adds r1, r6, #0
	cmp r6, #0
	beq _080992E0
	ldrb r0, [r6]
	cmp r0, #0
	beq _080992AE
	ldr r0, [r6, #8]
	ands r0, r4
	cmp r0, #0
	beq _080992AE
	str r3, [r5, #0x44]
	movs r1, #0
_080992AE:
	cmp r1, #0
	beq _080992E0
	ldr r0, _080992DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08099350
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08099350
	adds r0, r5, #0
	bl sub_0803DBC8
	b _0809959E
	.align 2, 0
_080992DC: .4byte gUnk_03000510
_080992E0:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _08099348 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08099322
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099322
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099322
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _08099322
	movs r3, #4
_08099322:
	ldr r0, _0809934C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08099350
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _08099350
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809959E
	.align 2, 0
_08099348: .4byte gKirbys
_0809934C: .4byte gUnk_03000510
_08099350:
	ldr r0, _080993FC @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldrh r1, [r5, #4]
	mov ip, r1
	cmp r0, #0
	beq _0809939C
	ldr r2, _08099400 @ =gCurLevelInfo
	mov r8, r2
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _08099404 @ =gUnk_02026D50
_08099368:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r7, r8
	adds r1, r0, r7
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r3
	bne _08099394
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080993AE
_08099394:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08099368
_0809939C:
	movs r0, #1
	cmp r0, #0
	beq _080993AE
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080993AE:
	mov r7, ip
	lsls r0, r7, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _080993BA
	b _080994EC
_080993BA:
	ldrh r2, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08099442
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0809940C
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	cmp r1, #0x63
	beq _080993E6
	ldr r7, _08099408 @ =0x00000103
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08099484
_080993E6:
	cmp r1, #0x36
	bne _080993EC
	b _0809959E
_080993EC:
	ldr r1, _08099408 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _080993F8
	b _0809959E
_080993F8:
	b _08099484
	.align 2, 0
_080993FC: .4byte gUnk_0203AD44
_08099400: .4byte gCurLevelInfo
_08099404: .4byte gUnk_02026D50
_08099408: .4byte 0x00000103
_0809940C:
	ldr r0, _080994FC @ =0x0000FBFF
	ands r0, r2
	strh r0, [r5, #6]
	ldr r0, [r6, #0x44]
	ldr r1, _08099500 @ =0xFFFF6000
	adds r0, r0, r1
	str r0, [r5, #0x38]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	ldr r0, _08099504 @ =gUnk_0203AD3C
	adds r1, r6, #0
	adds r1, #0x56
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08099442
	ldr r2, _08099508 @ =0x00000292
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r5, #0x34]
	str r1, [r0, #0x34]
	ldr r1, [r5, #0x38]
	str r1, [r0, #0x38]
_08099442:
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	cmp r1, #0x63
	beq _08099456
	ldr r7, _0809950C @ =0x00000103
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #0xe
	bne _08099470
_08099456:
	cmp r1, #0x36
	beq _08099464
	ldr r1, _0809950C @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0xe
	beq _08099470
_08099464:
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0809952C
_08099470:
	ldr r2, _08099508 @ =0x00000292
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r5, #0x34]
	str r1, [r0, #0x34]
	ldr r1, [r5, #0x38]
	str r1, [r0, #0x38]
_08099484:
	ldr r1, _08099510 @ =gKirbys
	ldr r0, _08099504 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080994EC
	ldrb r0, [r6]
	cmp r0, #0
	bne _080994B0
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080994EC
_080994B0:
	ldr r1, _08099514 @ =gUnk_08D60FA4
	ldr r4, _08099518 @ =gSongTable
	ldr r2, _0809951C @ =0x0000107C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080994D4
	ldr r7, _08099520 @ =0x00001078
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080994EC
_080994D4:
	cmp r3, #0
	beq _080994E6
	ldr r0, _08099524 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080994EC
_080994E6:
	ldr r0, _08099528 @ =0x0000020F
	bl m4aSongNumStart
_080994EC:
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _0809959E
	.align 2, 0
_080994FC: .4byte 0x0000FBFF
_08099500: .4byte 0xFFFF6000
_08099504: .4byte gUnk_0203AD3C
_08099508: .4byte 0x00000292
_0809950C: .4byte 0x00000103
_08099510: .4byte gKirbys
_08099514: .4byte gUnk_08D60FA4
_08099518: .4byte gSongTable
_0809951C: .4byte 0x0000107C
_08099520: .4byte 0x00001078
_08099524: .4byte gUnk_0203AD10
_08099528: .4byte 0x0000020F
_0809952C:
	ldrh r0, [r5, #6]
	movs r3, #4
	orrs r3, r0
	strh r3, [r5, #6]
	ldr r4, _080995A8 @ =gUnk_0835104A
	movs r7, #4
	ldrsh r1, [r5, r7]
	movs r0, #0x20
	subs r0, r0, r1
	asrs r0, r0, #2
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	adds r0, r6, #0
	adds r0, #0x52
	ldrh r0, [r0]
	adds r2, r6, #0
	adds r2, #0xd2
	subs r0, r0, r1
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r5, #0x3e]
	ldrh r2, [r5, #4]
	lsls r0, r2, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #1
	adds r0, r0, r4
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r1, [r1]
	ldrh r0, [r0]
	adds r1, r1, r0
	adds r0, r6, #0
	adds r0, #0xd0
	ldrh r0, [r0]
	adds r0, r0, r1
	strh r0, [r5, #0x3c]
	adds r2, #1
	strh r2, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r3, r0
	cmp r3, #0
	bne _08099598
	movs r0, #0x3c
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r2, #0x3e
	ldrsh r1, [r5, r2]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_08099598:
	adds r0, r5, #0
	bl sub_0806FAC8
_0809959E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080995A8: .4byte gUnk_0835104A

	thumb_func_start sub_080995AC
sub_080995AC: @ 0x080995AC
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080995DC @ =sub_08099668
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080995E0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080995E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080995EC
	.align 2, 0
_080995DC: .4byte sub_08099668
_080995E0: .4byte sub_0803DCCC
_080995E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080995EC:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #2
	strh r1, [r4, #0x3c]
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _08099622
	rsbs r0, r1, #0
	strh r0, [r4, #0x3c]
_08099622:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x3e]
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bge _08099636
	strh r1, [r4, #0x3e]
_08099636:
	ldrh r0, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _08099664 @ =0x06012000
	movs r3, #0xa9
	lsls r3, r3, #2
	movs r0, #0
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08099664: .4byte 0x06012000

	thumb_func_start sub_08099668
sub_08099668: @ 0x08099668
	push {r4, r5, r6, r7, lr}
	ldr r2, _08099688 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _0809968C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08099694
	.align 2, 0
_08099688: .4byte gCurTask
_0809968C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08099694:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080996B0
	ldr r0, [r5]
	bl TaskDestroy
	b _08099820
_080996B0:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080996FC
	ldrb r0, [r1]
	cmp r0, #0
	beq _080996C8
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _080996C8
	str r2, [r3, #0x44]
	movs r1, #0
_080996C8:
	cmp r1, #0
	beq _080996FC
	ldr r0, _080996F8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809976C
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809976C
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08099820
	.align 2, 0
_080996F8: .4byte gUnk_03000510
_080996FC:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _08099764 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809973E
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809973E
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809973E
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809973E
	movs r4, #4
_0809973E:
	ldr r0, _08099768 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809976C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809976C
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08099820
	.align 2, 0
_08099764: .4byte gKirbys
_08099768: .4byte gUnk_03000510
_0809976C:
	ldr r0, _080997DC @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _080997B0
	ldr r6, _080997E0 @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _080997E4 @ =gUnk_02026D50
_0809977E:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080997A8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080997C2
_080997A8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809977E
_080997B0:
	movs r0, #1
	cmp r0, #0
	beq _080997C2
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_080997C2:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080997E8
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3, #6]
	b _08099820
	.align 2, 0
_080997DC: .4byte gUnk_0203AD44
_080997E0: .4byte gCurLevelInfo
_080997E4: .4byte gUnk_02026D50
_080997E8:
	ldrh r2, [r3, #4]
	movs r6, #4
	ldrsh r0, [r3, r6]
	cmp r0, #1
	bne _080997F8
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r3, #0x20]
_080997F8:
	adds r0, r2, #1
	strh r0, [r3, #4]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809981A
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_0809981A:
	adds r0, r3, #0
	bl sub_0806FAC8
_08099820:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08099828
sub_08099828: @ 0x08099828
	push {r4, r5, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _08099858 @ =sub_080998B8
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809985C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099860
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08099868
	.align 2, 0
_08099858: .4byte sub_080998B8
_0809985C: .4byte sub_0803DCCC
_08099860:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08099868:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r2, _080998B4 @ =0x06012000
	movs r3, #0xa9
	lsls r3, r3, #2
	movs r0, #1
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	bl sub_080709F8
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080998B4: .4byte 0x06012000

	thumb_func_start sub_080998B8
sub_080998B8: @ 0x080998B8
	push {r4, r5, r6, r7, lr}
	ldr r2, _080998D8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080998DC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080998E4
	.align 2, 0
_080998D8: .4byte gCurTask
_080998DC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080998E4:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _08099900
	ldr r0, [r5]
	bl TaskDestroy
	b _08099A58
_08099900:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _0809994C
	ldrb r0, [r1]
	cmp r0, #0
	beq _08099918
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _08099918
	str r2, [r3, #0x44]
	movs r1, #0
_08099918:
	cmp r1, #0
	beq _0809994C
	ldr r0, _08099948 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080999BC
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080999BC
	adds r0, r3, #0
	bl sub_0803DBC8
	b _08099A58
	.align 2, 0
_08099948: .4byte gUnk_03000510
_0809994C:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080999B4 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809998E
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809998E
	movs r4, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809998E
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809998E
	movs r4, #4
_0809998E:
	ldr r0, _080999B8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080999BC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080999BC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _08099A58
	.align 2, 0
_080999B4: .4byte gKirbys
_080999B8: .4byte gUnk_03000510
_080999BC:
	ldr r0, _08099A28 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _08099A00
	ldr r6, _08099A2C @ =gCurLevelInfo
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r4, [r1]
	ldr r5, _08099A30 @ =gUnk_02026D50
_080999CE:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r6
	movs r7, #0xbf
	lsls r7, r7, #3
	adds r0, r1, r7
	ldrh r0, [r0]
	cmp r0, r4
	bne _080999F8
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r5
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08099A12
_080999F8:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080999CE
_08099A00:
	movs r0, #1
	cmp r0, #0
	beq _08099A12
	ldrh r1, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
_08099A12:
	ldrh r1, [r3, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08099A34
	movs r6, #0x80
	lsls r6, r6, #5
	adds r0, r6, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _08099A58
	.align 2, 0
_08099A28: .4byte gUnk_0203AD44
_08099A2C: .4byte gCurLevelInfo
_08099A30: .4byte gUnk_02026D50
_08099A34:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08099A52
	movs r7, #0x3c
	ldrsh r1, [r3, r7]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_08099A52:
	adds r0, r3, #0
	bl sub_0806FAC8
_08099A58:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08099A60
sub_08099A60: @ 0x08099A60
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08099A90 @ =sub_08098400
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099A94
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08099A9C
	.align 2, 0
_08099A90: .4byte sub_08098400
_08099A94:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08099A9C:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08099AC4
sub_08099AC4: @ 0x08099AC4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _08099AF4 @ =sub_08098700
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099AF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08099B00
	.align 2, 0
_08099AF4: .4byte sub_08098700
_08099AF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08099B00:
	adds r0, r4, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x38]
	str r5, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x42
	strh r1, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08099B28
sub_08099B28: @ 0x08099B28
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08099B42
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08099B4A
_08099B42:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08099B4A:
	ldr r0, [r0, #0x44]
	adds r5, r0, #0
	adds r5, #0x56
	ldr r6, _08099B7C @ =gUnk_0203AD3C
	ldrb r0, [r5]
	ldrb r1, [r6]
	cmp r0, r1
	bne _08099B6E
	movs r0, #0xdd
	bl m4aSongNumStop
	ldrb r0, [r5]
	ldrb r6, [r6]
	cmp r0, r6
	bne _08099B6E
	movs r0, #0xde
	bl m4aSongNumStop
_08099B6E:
	adds r0, r4, #0
	bl sub_0803DCCC
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08099B7C: .4byte gUnk_0203AD3C
