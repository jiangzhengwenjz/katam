	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0814A828
sub_0814A828: @ 0x0814A828
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _0814A840 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814A844
	bl sub_08039670
	b _0814A902
	.align 2, 0
_0814A840: .4byte gUnk_0203AD10
_0814A844:
	ldr r0, _0814A8C4 @ =gUnk_0203AD2C
	ldrh r1, [r0]
	ldr r0, _0814A8C8 @ =0x0000012B
	cmp r1, r0
	bhi _0814A902
	ldr r1, _0814A8CC @ =0x00007FFF
	add r0, sp, #4
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r1, _0814A8D0 @ =gDispCnt
	movs r2, #0x82
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bl m4aSoundVSyncOn
	movs r2, #0
	ldr r3, _0814A8D4 @ =gUnk_0203AD30
	mov r7, sp
	adds r7, #6
	ldrb r0, [r3]
	cmp r2, r0
	bhs _0814A898
	movs r6, #0xd4
	lsls r6, r6, #1
	ldr r5, _0814A8D8 @ =gUnk_02020EE8
	ldr r4, _0814A8DC @ =0xFEFFFFFF
_0814A880:
	adds r0, r2, #0
	muls r0, r6, r0
	adds r0, r0, r5
	ldr r1, [r0]
	ands r1, r4
	str r1, [r0]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldrb r0, [r3]
	cmp r2, r0
	blo _0814A880
_0814A898:
	ldr r0, _0814A8E0 @ =sub_0814A914
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0814A8E4 @ =nullsub_12
	str r1, [sp]
	movs r1, #0xc8
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814A8E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814A8F0
	.align 2, 0
_0814A8C4: .4byte gUnk_0203AD2C
_0814A8C8: .4byte 0x0000012B
_0814A8CC: .4byte 0x00007FFF
_0814A8D0: .4byte gDispCnt
_0814A8D4: .4byte gUnk_0203AD30
_0814A8D8: .4byte gUnk_02020EE8
_0814A8DC: .4byte 0xFEFFFFFF
_0814A8E0: .4byte sub_0814A914
_0814A8E4: .4byte nullsub_12
_0814A8E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814A8F0:
	movs r0, #0
	strh r0, [r7]
	ldr r2, _0814A90C @ =0x01000064
	adds r0, r7, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814A910 @ =sub_0814E0B4
	str r0, [r4, #8]
_0814A902:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814A90C: .4byte 0x01000064
_0814A910: .4byte sub_0814E0B4

	thumb_func_start sub_0814A914
sub_0814A914: @ 0x0814A914
	push {r4, r5, r6, lr}
	ldr r0, _0814A930 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814A934
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814A93C
	.align 2, 0
_0814A930: .4byte gCurTask
_0814A934:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814A93C:
	adds r4, r0, #0
	ldr r0, _0814A988 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0814A994
	movs r2, #0
	ldr r0, _0814A98C @ =gUnk_0203AD30
	adds r5, r0, #0
	adds r6, r4, #0
	adds r6, #0xa0
	ldrb r0, [r5]
	cmp r2, r0
	bhs _0814A9AC
	ldr r3, _0814A990 @ =gUnk_020382D0
	ldrh r1, [r3, #0x10]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	bne _0814A9A4
_0814A966:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldrb r0, [r5]
	cmp r2, r0
	bhs _0814A9AC
	lsls r0, r2, #1
	adds r1, r3, #0
	adds r1, #0x10
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0814A966
	b _0814A9A4
	.align 2, 0
_0814A988: .4byte gUnk_0203AD10
_0814A98C: .4byte gUnk_0203AD30
_0814A990: .4byte gUnk_020382D0
_0814A994:
	ldr r0, _0814A9DC @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #0xb
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0xa0
	cmp r0, #0
	beq _0814A9AC
_0814A9A4:
	ldr r0, [r4, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #4]
_0814A9AC:
	ldr r1, [r4, #4]
	ldr r0, _0814A9E0 @ =0x80000007
	ands r0, r1
	cmp r0, #1
	bne _0814A9C2
	ldr r0, _0814A9E4 @ =sub_0814E290
	str r0, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r4, #4]
_0814A9C2:
	ldr r1, [r6]
	cmp r1, #0
	beq _0814A9CE
	adds r0, r4, #0
	bl _call_via_r1
_0814A9CE:
	ldr r1, [r4, #8]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814A9DC: .4byte gPressedKeys
_0814A9E0: .4byte 0x80000007
_0814A9E4: .4byte sub_0814E290

	thumb_func_start sub_0814A9E8
sub_0814A9E8: @ 0x0814A9E8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xa4
	ldrh r4, [r0]
	adds r4, #1
	movs r2, #0
	strh r4, [r0]
	ldr r7, _0814AA40 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	adds r6, r5, #0
	adds r6, #0xa6
	movs r3, #0
	ldrsh r1, [r6, r3]
	str r2, [sp]
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r7, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	movs r1, #0
	ldrsh r0, [r6, r1]
	ldr r2, [sp]
	cmp r4, r0
	blt _0814AA44
	ldr r0, [r5, #4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #4]
	cmp r0, #0
	blt _0814AA36
	strh r2, [r7, #4]
	strh r2, [r7, #2]
	strh r2, [r7]
_0814AA36:
	adds r0, r5, #0
	adds r0, #0xa0
	str r2, [r0]
	movs r0, #1
	b _0814AA46
	.align 2, 0
_0814AA40: .4byte gBldRegs
_0814AA44:
	movs r0, #0
_0814AA46:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0814AA50
sub_0814AA50: @ 0x0814AA50
	push {r4, lr}
	mov ip, r0
	mov r4, ip
	adds r4, #0x60
	ldr r1, _0814AACC @ =gDispCnt
	movs r2, #0x8a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _0814AAD0 @ =gBgScrollRegs
	movs r3, #0
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _0814AAD4 @ =gBgCntRegs
	ldr r0, _0814AAD8 @ =0x00001F0A
	strh r0, [r2]
	ldr r0, _0814AADC @ =0x06008000
	str r0, [r4, #4]
	strh r1, [r4, #0xa]
	ldr r0, _0814AAE0 @ =0x0600F800
	str r0, [r4, #0xc]
	strh r1, [r4, #0x18]
	strh r1, [r4, #0x1a]
	ldr r0, _0814AAE4 @ =0x00000306
	strh r0, [r4, #0x1c]
	strh r1, [r4, #0x1e]
	strh r1, [r4, #0x20]
	strh r1, [r4, #0x22]
	strh r1, [r4, #0x24]
	movs r0, #0x1e
	strh r0, [r4, #0x26]
	movs r0, #0x14
	strh r0, [r4, #0x28]
	mov r0, ip
	adds r0, #0x8a
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	movs r0, #0x18
	strh r0, [r4, #0x2e]
	strh r1, [r4, #0x30]
	strh r1, [r4, #0x32]
	ldr r0, _0814AAE8 @ =0x00007FFF
	strh r0, [r4, #0x34]
	strh r0, [r4, #0x36]
	ldr r0, _0814AAEC @ =gUnk_082D7850
	ldr r1, _0814AAF0 @ =0x00000C18
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r4, #4]
	bl LZ77UnCompVram
	adds r0, r4, #0
	bl sub_08153060
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814AACC: .4byte gDispCnt
_0814AAD0: .4byte gBgScrollRegs
_0814AAD4: .4byte gBgCntRegs
_0814AAD8: .4byte 0x00001F0A
_0814AADC: .4byte 0x06008000
_0814AAE0: .4byte 0x0600F800
_0814AAE4: .4byte 0x00000306
_0814AAE8: .4byte 0x00007FFF
_0814AAEC: .4byte gUnk_082D7850
_0814AAF0: .4byte 0x00000C18

	thumb_func_start sub_0814AAF4
sub_0814AAF4: @ 0x0814AAF4
	push {r4, r5, r6, r7, lr}
	ldr r1, _0814AB5C @ =gUnk_08D64A24
	ldr r0, _0814AB60 @ =gUnk_089331AC
	ldr r2, _0814AB64 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	ldr r1, _0814AB68 @ =gBgScrollRegs
	movs r0, #0
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	ldr r1, _0814AB6C @ =gBgCntRegs
	ldr r0, _0814AB70 @ =0x00001E03
	strh r0, [r1, #2]
	ldr r0, [r7, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r4, [r7, #0x18]
	ldr r6, _0814AB74 @ =0x0600F000
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r5, #0
_0814AB2A:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r6, #0x40
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0814AB2A
	ldr r0, _0814AB78 @ =gDispCnt
	ldrh r1, [r0]
	movs r3, #0xc0
	lsls r3, r3, #2
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814AB5C: .4byte gUnk_08D64A24
_0814AB60: .4byte gUnk_089331AC
_0814AB64: .4byte 0x00007D46
_0814AB68: .4byte gBgScrollRegs
_0814AB6C: .4byte gBgCntRegs
_0814AB70: .4byte 0x00001E03
_0814AB74: .4byte 0x0600F000
_0814AB78: .4byte gDispCnt

	thumb_func_start sub_0814AB7C
sub_0814AB7C: @ 0x0814AB7C
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r4, r0, #0
	adds r0, #0x10
	ldr r3, _0814AC20 @ =gUnk_08387D8C
	ldrb r1, [r3, #4]
	lsls r1, r1, #5
	ldr r2, _0814AC24 @ =0x06012000
	adds r1, r1, r2
	str r1, [r4, #0x10]
	movs r4, #0
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	ldrh r5, [r3]
	strh r5, [r0, #0xc]
	ldrh r6, [r3, #2]
	strb r6, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1c]
	ldrb r3, [r3, #5]
	mov sb, r3
	strb r3, [r0, #0x1f]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	movs r1, #0x80
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r1, sp
	movs r0, #0xf
	mov r2, sb
	ands r0, r2
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814AC20: .4byte gUnk_08387D8C
_0814AC24: .4byte 0x06012000

	thumb_func_start sub_0814AC28
sub_0814AC28: @ 0x0814AC28
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #0
	bl sub_0814E394
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xa8
	str r2, [r0]
	adds r3, r4, #0
	adds r3, #0xb8
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814AC54
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814AC5C
_0814AC54:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814AC5C:
	str r0, [r3]
	adds r0, r4, #0
	movs r1, #1
	bl sub_0814E394
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xac
	str r2, [r0]
	adds r3, r4, #0
	adds r3, #0xbc
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814AC88
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814AC90
_0814AC88:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814AC90:
	str r0, [r3]
	adds r0, r4, #0
	bl sub_0814ADC8
	ldr r0, _0814ACA4 @ =sub_0814ACA8
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814ACA4: .4byte sub_0814ACA8

	thumb_func_start sub_0814ACA8
sub_0814ACA8: @ 0x0814ACA8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0814AD24 @ =gUnk_082D7850
	ldr r1, _0814AD28 @ =0x00000C18
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, _0814AD2C @ =gUnk_08D64A24
	ldr r0, _0814AD30 @ =gUnk_089331AC
	ldr r3, _0814AD34 @ =0x00007D46
	adds r0, r0, r3
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r1, _0814AD38 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	ldr r0, [r2, #0x10]
	movs r1, #0
	movs r2, #0x60
	bl sub_0803D21C
	ldr r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	ldrh r2, [r4, #0x16]
	bl sub_0803D21C
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	movs r4, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0814AD3C @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	strh r4, [r5, #0xc]
	ldr r0, _0814AD40 @ =sub_0814E0E8
	str r0, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r5, #0x26]
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_0815604C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814AD24: .4byte gUnk_082D7850
_0814AD28: .4byte 0x00000C18
_0814AD2C: .4byte gUnk_08D64A24
_0814AD30: .4byte gUnk_089331AC
_0814AD34: .4byte 0x00007D46
_0814AD38: .4byte 0x00007FFF
_0814AD3C: .4byte 0x0000FFFF
_0814AD40: .4byte sub_0814E0E8

	thumb_func_start sub_0814AD44
sub_0814AD44: @ 0x0814AD44
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r2, #0x3c
	ldr r0, [r5, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0xa4
	movs r4, #0
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r5, #0
	adds r1, #0xa0
	ldr r0, _0814ADBC @ =sub_0814A9E8
	str r0, [r1]
	ldr r1, _0814ADC0 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r4, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	adds r6, r5, #0
	adds r6, #0x2b
	subs r0, #0x11
	adds r7, r0, #0
	movs r0, #0xff
	strb r0, [r6]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	movs r1, #0
	bl sub_0814B2A0
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r0, [r0]
	movs r1, #1
	bl sub_0814B2A0
	strh r4, [r5, #0xc]
	ldr r0, _0814ADC4 @ =sub_0814E198
	str r0, [r5, #8]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814ADB0
	ldrb r0, [r6]
	orrs r0, r7
	strb r0, [r6]
_0814ADB0:
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814ADBC: .4byte sub_0814A9E8
_0814ADC0: .4byte gBldRegs
_0814ADC4: .4byte sub_0814E198

	thumb_func_start sub_0814ADC8
sub_0814ADC8: @ 0x0814ADC8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #0x28
	adds r4, r0, #0
	adds r0, #0x38
	ldr r3, _0814AE70 @ =gUnk_08387D8C
	adds r1, r3, #0
	adds r1, #0x2c
	ldrb r1, [r1]
	lsls r1, r1, #5
	ldr r2, _0814AE74 @ =0x06012000
	adds r1, r1, r2
	str r1, [r4, #0x38]
	movs r4, #0
	movs r1, #0xa0
	lsls r1, r1, #1
	strh r1, [r0, #0x14]
	ldrh r5, [r3, #0x28]
	strh r5, [r0, #0xc]
	ldrh r6, [r3, #0x2a]
	strb r6, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0x10
	mov r8, r1
	mov r2, r8
	strb r2, [r0, #0x1c]
	adds r3, #0x2d
	ldrb r3, [r3]
	mov sb, r3
	strb r3, [r0, #0x1f]
	movs r1, #0x78
	strh r1, [r0, #0x10]
	movs r1, #0x50
	strh r1, [r0, #0x12]
	movs r1, #0x80
	str r1, [r0, #8]
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r0, sp
	strh r5, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	mov r1, r8
	strb r1, [r0, #0x1c]
	mov r1, sp
	movs r0, #0xf
	mov r2, sb
	ands r0, r2
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814AE70: .4byte gUnk_08387D8C
_0814AE74: .4byte 0x06012000

	thumb_func_start sub_0814AE78
sub_0814AE78: @ 0x0814AE78
	push {r4, r5, r6, lr}
	sub sp, #0x28
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x10
	ldr r1, _0814AEF8 @ =gUnk_08387F68
	ldrh r0, [r1, #4]
	movs r5, #0
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldrh r0, [r4, #0xc]
	strh r0, [r1, #0xc]
	ldrb r0, [r4, #0x1a]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r5, [r0, #0x10]
	strh r5, [r0, #0x12]
	strh r5, [r0, #0x14]
	strh r5, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	ldrb r1, [r4, #0x1f]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r1, [r0]
	ldr r0, _0814AEFC @ =sub_0814EA00
	str r0, [r1]
	ldr r0, _0814AF00 @ =sub_0814E264
	str r0, [r6, #8]
	adds r0, r4, #0
	bl sub_0815604C
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814AEF8: .4byte gUnk_08387F68
_0814AEFC: .4byte sub_0814EA00
_0814AF00: .4byte sub_0814E264

	thumb_func_start sub_0814AF04
sub_0814AF04: @ 0x0814AF04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r0, _0814AF58 @ =gUnk_0203AD10
	ldr r2, [r0]
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	bne _0814AF8A
	ldr r3, _0814AF5C @ =gUnk_0203AD2C
	ldrh r1, [r3]
	ldr r0, _0814AF60 @ =0x0000012B
	cmp r1, r0
	bhi _0814AF8A
	movs r1, #0x96
	lsls r1, r1, #1
	adds r0, r1, #0
	strh r0, [r3]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0814AF78
	ldr r0, _0814AF64 @ =gUnk_0203AD3C
	ldr r1, _0814AF68 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0814AF70
	ldr r2, _0814AF6C @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0814AF50
	adds r1, r0, #0
_0814AF50:
	movs r0, #1
	bl sub_0800ACD4
	b _0814AF8A
	.align 2, 0
_0814AF58: .4byte gUnk_0203AD10
_0814AF5C: .4byte gUnk_0203AD2C
_0814AF60: .4byte 0x0000012B
_0814AF64: .4byte gUnk_0203AD3C
_0814AF68: .4byte gUnk_0203AD24
_0814AF6C: .4byte gUnk_0203AD48
_0814AF70:
	movs r0, #8
	bl sub_08031CE4
	b _0814AF8A
_0814AF78:
	ldr r2, _0814B01C @ =gUnk_0203AD48
	ldrh r0, [r2]
	movs r1, #0
	cmp r0, #2
	bhi _0814AF84
	adds r1, r0, #0
_0814AF84:
	movs r0, #1
	bl sub_0800ACD4
_0814AF8A:
	bl sub_08039670
	movs r6, #0
	movs r0, #0xa8
	adds r0, r0, r4
	mov sb, r0
	movs r1, #0xb8
	adds r1, r1, r4
	mov r8, r1
	movs r0, #0xb0
	adds r0, r0, r4
	mov sl, r0
	adds r1, r4, #0
	adds r1, #0xc0
	str r1, [sp, #4]
	adds r0, r4, #0
	adds r0, #0xb4
	str r0, [sp]
	adds r4, #0xc4
	str r4, [sp, #8]
	movs r7, #0
_0814AFB4:
	lsls r5, r6, #2
	mov r1, sb
	adds r4, r1, r5
	ldr r0, [r4]
	cmp r0, #0
	beq _0814AFC6
	bl TaskDestroy
	str r7, [r4]
_0814AFC6:
	mov r1, r8
	adds r0, r1, r5
	str r7, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0814AFB4
	mov r1, sl
	ldr r0, [r1]
	cmp r0, #0
	beq _0814AFE8
	bl TaskDestroy
	movs r0, #0
	mov r1, sl
	str r0, [r1]
_0814AFE8:
	movs r4, #0
	ldr r0, [sp, #4]
	str r4, [r0]
	ldr r1, [sp]
	ldr r0, [r1]
	cmp r0, #0
	beq _0814AFFE
	bl TaskDestroy
	ldr r0, [sp]
	str r4, [r0]
_0814AFFE:
	ldr r1, [sp, #8]
	str r4, [r1]
	ldr r0, _0814B020 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814B01C: .4byte gUnk_0203AD48
_0814B020: .4byte gCurTask

	thumb_func_start sub_0814B024
sub_0814B024: @ 0x0814B024
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x5c
	str r0, [sp, #0x58]
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814B040
	cmp r0, #1
	bne _0814B03E
	b _0814B1A0
_0814B03E:
	b _0814B286
_0814B040:
	add r2, sp, #0x28
	movs r0, #1
	strb r0, [r2]
	movs r0, #2
	strb r0, [r2, #1]
	add r1, sp, #0x2c
	movs r0, #8
	strb r0, [r1]
	movs r0, #9
	strb r0, [r1, #1]
	movs r6, #0
	ldr r7, _0814B190 @ =gUnk_08387D8C
	mov r8, r6
	movs r0, #0xff
	mov sl, r0
	movs r1, #0x10
	mov sb, r1
	add r5, sp, #0x30
_0814B064:
	mov r2, sp
	mov r4, sp
	adds r4, r4, r6
	adds r4, #0x2c
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	lsls r0, r0, #5
	ldr r3, _0814B194 @ =0x06012000
	adds r0, r0, r3
	str r0, [sp]
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r2, #0x1a]
	mov r0, r8
	strh r0, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	mov r3, sb
	strb r3, [r2, #0x1c]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #5]
	strb r0, [r2, #0x1f]
	ldr r0, _0814B198 @ =0x0000FFC0
	strh r0, [r2, #0x10]
	strh r0, [r2, #0x12]
	mov r0, r8
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x10
	ldr r1, [sp, #0x58]
	adds r2, r1, r0
	mov r1, sp
	adds r1, r1, r6
	adds r1, #0x28
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	lsls r0, r0, #5
	ldr r3, _0814B194 @ =0x06012000
	adds r0, r0, r3
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0xa
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r2, #0x1a]
	mov r0, r8
	strh r0, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r3, sl
	orrs r0, r3
	strb r0, [r2, #0x1b]
	mov r0, sb
	strb r0, [r2, #0x1c]
	ldrb r0, [r1]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #5]
	strb r0, [r2, #0x1f]
	movs r0, #0x84
	strh r0, [r2, #0x10]
	movs r0, #0x50
	strh r0, [r2, #0x12]
	ldr r0, _0814B19C @ =0x00040080
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #0x30]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1b]
	mov r3, r8
	strh r3, [r5, #0x10]
	strh r3, [r5, #0x12]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x16]
	mov r0, sb
	strb r0, [r5, #0x1c]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08155128
	ldrb r0, [r5, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bhi _0814B18C
	b _0814B064
_0814B18C:
	b _0814B286
	.align 2, 0
_0814B190: .4byte gUnk_08387D8C
_0814B194: .4byte 0x06012000
_0814B198: .4byte 0x0000FFC0
_0814B19C: .4byte 0x00040080
_0814B1A0:
	add r0, sp, #0x28
	movs r1, #3
	strb r1, [r0]
	movs r1, #4
	strb r1, [r0, #1]
	movs r6, #0
	ldr r7, _0814B298 @ =gUnk_08387D8C
	mov r8, r6
	movs r1, #0xff
	mov sl, r1
	movs r3, #0x10
	mov sb, r3
	add r5, sp, #0x30
_0814B1BA:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r0, r0, #3
	adds r0, #0x10
	ldr r1, [sp, #0x58]
	adds r2, r1, r0
	mov r4, sp
	adds r4, r4, r6
	adds r4, #0x28
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #4]
	lsls r0, r0, #5
	ldr r3, _0814B29C @ =0x06012000
	adds r0, r0, r3
	str r0, [r2]
	adds r0, r6, #0
	adds r0, #0xa
	lsls r0, r0, #6
	strh r0, [r2, #0x14]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r2, #0x1a]
	mov r0, r8
	strh r0, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	mov r3, sb
	strb r3, [r2, #0x1c]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r0, [r0, #5]
	strb r0, [r2, #0x1f]
	movs r0, #0x64
	strh r0, [r2, #0x10]
	movs r0, #0x48
	strh r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #0x30]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strb r0, [r5, #0x1a]
	ldrb r0, [r5, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1b]
	mov r3, r8
	strh r3, [r5, #0x10]
	strh r3, [r5, #0x12]
	strh r3, [r5, #0x14]
	strh r3, [r5, #0x16]
	mov r0, sb
	strb r0, [r5, #0x1c]
	ldrb r0, [r4]
	lsls r0, r0, #3
	adds r0, r0, r7
	ldrb r1, [r0, #5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r5, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08155128
	ldrb r0, [r5, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #1
	bls _0814B1BA
_0814B286:
	add sp, #0x5c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814B298: .4byte gUnk_08387D8C
_0814B29C: .4byte 0x06012000

	thumb_func_start sub_0814B2A0
sub_0814B2A0: @ 0x0814B2A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0814B2F8
	movs r0, #0x8c
	lsls r0, r0, #0x10
	str r0, [r4, #0x60]
	ldr r0, _0814B2E8 @ =0xFFFDD000
	str r0, [r4, #0x68]
	movs r0, #0x96
	lsls r0, r0, #4
	str r0, [r4, #0x70]
	adds r2, r4, #0
	adds r2, #0x10
	ldr r1, _0814B2EC @ =gUnk_08387E2C
	ldrh r0, [r1, #0x14]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r2, r4, #0
	adds r2, #0x38
	ldr r1, _0814B2F0 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x14]
	strh r0, [r2, #0xc]
	ldrh r0, [r1, #0x16]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, _0814B2F4 @ =sub_0814B7D8
	b _0814B34E
	.align 2, 0
_0814B2E8: .4byte 0xFFFDD000
_0814B2EC: .4byte gUnk_08387E2C
_0814B2F0: .4byte gUnk_08387EB4
_0814B2F4: .4byte sub_0814B7D8
_0814B2F8:
	movs r0, #0xf0
	lsls r0, r0, #0xf
	str r0, [r4, #0x60]
	ldr r1, _0814B358 @ =0x00000CAA
	str r1, [r4, #0x74]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	subs r0, #0x4e
	muls r0, r1, r0
	lsls r0, r0, #1
	bl Sqrt
	lsls r0, r0, #0x10
	lsrs r0, r0, #8
	rsbs r0, r0, #0
	str r0, [r4, #0x6c]
	adds r2, r4, #0
	adds r2, #0x10
	ldr r0, _0814B35C @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	adds r2, r4, #0
	adds r2, #0x38
	ldr r0, _0814B360 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	strh r1, [r2, #0xc]
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r2, #0x1a]
	adds r0, r2, #0
	bl sub_08155128
	ldr r0, _0814B364 @ =sub_0814CB60
_0814B34E:
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814B358: .4byte 0x00000CAA
_0814B35C: .4byte gUnk_08387E2C
_0814B360: .4byte gUnk_08387EB4
_0814B364: .4byte sub_0814CB60

	thumb_func_start sub_0814B368
sub_0814B368: @ 0x0814B368
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0x88
	lsls r0, r0, #9
	str r0, [r5, #0x68]
	ldr r0, _0814B3EC @ =0xFFFD4000
	str r0, [r5, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #6
	str r0, [r5, #0x74]
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814B3F0 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x2c]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2e]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814B3F4 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x2c]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2e]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _0814B3F8 @ =0x0000024B
	bl m4aSongNumStart
	strh r4, [r5, #8]
	ldr r0, _0814B3FC @ =sub_0814B400
	str r0, [r5, #4]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B3C6
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814B3C6:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B3D8
	adds r1, r5, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814B3D8:
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B3EC: .4byte 0xFFFD4000
_0814B3F0: .4byte gUnk_08387E2C
_0814B3F4: .4byte gUnk_08387EB4
_0814B3F8: .4byte 0x0000024B
_0814B3FC: .4byte sub_0814B400

	thumb_func_start sub_0814B400
sub_0814B400: @ 0x0814B400
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0814B416
	ldr r0, _0814B49C @ =sub_0814B4A4
	str r0, [r4, #4]
_0814B416:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B4A0 @ =0x00049FFF
	cmp r0, r1
	ble _0814B436
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814B436:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B472
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814B472:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B488
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814B488:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B49C: .4byte sub_0814B4A4
_0814B4A0: .4byte 0x00049FFF

	thumb_func_start sub_0814B4A4
sub_0814B4A4: @ 0x0814B4A4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814B53C @ =gUnk_08387E2C
	ldrh r0, [r1, #0x30]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814B540 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x30]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #8]
	ldr r0, _0814B544 @ =sub_0814B54C
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B548 @ =0x00049FFF
	cmp r0, r1
	ble _0814B4F4
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814B4F4:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B53C: .4byte gUnk_08387E2C
_0814B540: .4byte gUnk_08387EB4
_0814B544: .4byte sub_0814B54C
_0814B548: .4byte 0x00049FFF

	thumb_func_start sub_0814B54C
sub_0814B54C: @ 0x0814B54C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B5CC @ =0x00049FFF
	cmp r0, r1
	ble _0814B570
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814B570:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814B5B2
	movs r1, #1
_0814B5B2:
	cmp r1, #0
	beq _0814B5BA
	ldr r0, _0814B5D0 @ =sub_0814B5D4
	str r0, [r4, #4]
_0814B5BA:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B5CC: .4byte 0x00049FFF
_0814B5D0: .4byte sub_0814B5D4

	thumb_func_start sub_0814B5D4
sub_0814B5D4: @ 0x0814B5D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814B66C @ =gUnk_08387E2C
	ldrh r0, [r1, #0x34]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814B670 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x34]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #8]
	ldr r0, _0814B674 @ =sub_0814B67C
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B678 @ =0x00049FFF
	cmp r0, r1
	ble _0814B624
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814B624:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B66C: .4byte gUnk_08387E2C
_0814B670: .4byte gUnk_08387EB4
_0814B674: .4byte sub_0814B67C
_0814B678: .4byte 0x00049FFF

	thumb_func_start sub_0814B67C
sub_0814B67C: @ 0x0814B67C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B71C @ =0x00049FFF
	cmp r0, r1
	ble _0814B6A0
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814B6A0:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	ldr r1, _0814B720 @ =0x0087FFFF
	cmp r0, r1
	ble _0814B6C8
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x64]
	ldr r0, _0814B724 @ =sub_0814B728
	str r0, [r4, #4]
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_0814B6C8:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B6F4
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814B6F4:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B70A
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814B70A:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B71C: .4byte 0x00049FFF
_0814B720: .4byte 0x0087FFFF
_0814B724: .4byte sub_0814B728

	thumb_func_start sub_0814B728
sub_0814B728: @ 0x0814B728
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814B778 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x38]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814B77C @ =gUnk_08387EB4
	ldrh r0, [r1, #0x38]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	str r4, [r5, #0x74]
	str r4, [r5, #0x6c]
	str r4, [r5, #0x70]
	str r4, [r5, #0x68]
	strh r4, [r5, #8]
	ldr r0, _0814B780 @ =sub_0814E47C
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B778: .4byte gUnk_08387E2C
_0814B77C: .4byte gUnk_08387EB4
_0814B780: .4byte sub_0814E47C

	thumb_func_start sub_0814B784
sub_0814B784: @ 0x0814B784
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814B7CC @ =gUnk_08387E2C
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814B7D0 @ =gUnk_08387EB4
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814B7D4 @ =sub_0814E4AC
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B7CC: .4byte gUnk_08387E2C
_0814B7D0: .4byte gUnk_08387EB4
_0814B7D4: .4byte sub_0814E4AC

	thumb_func_start sub_0814B7D8
sub_0814B7D8: @ 0x0814B7D8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x74]
	adds r0, r0, r1
	str r0, [r5, #0x6c]
	ldr r1, _0814B868 @ =0x00049FFF
	cmp r0, r1
	ble _0814B7FC
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r5, #0x6c]
	movs r0, #0
	str r0, [r5, #0x74]
_0814B7FC:
	ldr r0, [r5, #0x60]
	ldr r2, [r5, #0x68]
	adds r3, r0, r2
	str r3, [r5, #0x60]
	ldr r0, [r5, #0x64]
	ldr r1, [r5, #0x6c]
	adds r0, r0, r1
	str r0, [r5, #0x64]
	cmp r2, #0
	ble _0814B81A
	subs r0, r3, r2
	str r0, [r5, #0x60]
	movs r0, #0
	str r0, [r5, #0x68]
	str r0, [r5, #0x70]
_0814B81A:
	ldr r0, [r5, #0x60]
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r5, #0x22]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r6, r4, #0
	cmp r0, #0
	bne _0814B848
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814B848:
	adds r4, r5, #0
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814B874
	adds r1, r5, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, [r5, #0x68]
	cmp r0, #0
	bne _0814B870
	ldr r0, _0814B86C @ =sub_0814E4C4
	b _0814B872
	.align 2, 0
_0814B868: .4byte 0x00049FFF
_0814B86C: .4byte sub_0814E4C4
_0814B870:
	ldr r0, _0814B888 @ =sub_0814B88C
_0814B872:
	str r0, [r5, #4]
_0814B874:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B888: .4byte sub_0814B88C

	thumb_func_start sub_0814B88C
sub_0814B88C: @ 0x0814B88C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814B900 @ =0x00049FFF
	cmp r0, r1
	ble _0814B8B0
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814B8B0:
	ldr r0, [r4, #0x60]
	ldr r2, [r4, #0x68]
	adds r3, r0, r2
	str r3, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	cmp r2, #0
	ble _0814B8D2
	subs r0, r3, r2
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x68]
	str r0, [r4, #0x70]
	ldr r0, _0814B904 @ =sub_0814E4C4
	str r0, [r4, #4]
_0814B8D2:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814B900: .4byte 0x00049FFF
_0814B904: .4byte sub_0814E4C4

	thumb_func_start sub_0814B908
sub_0814B908: @ 0x0814B908
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814B950 @ =gUnk_08387E2C
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814B954 @ =gUnk_08387EB4
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814B958 @ =sub_0814E518
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B950: .4byte gUnk_08387E2C
_0814B954: .4byte gUnk_08387EB4
_0814B958: .4byte sub_0814E518

	thumb_func_start sub_0814B95C
sub_0814B95C: @ 0x0814B95C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r3, [r6, #0xc]
	movs r2, #0x2d
	ldr r0, [r3, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0xa4
	movs r4, #0
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r3, #0
	adds r1, #0xa0
	ldr r0, _0814B9F4 @ =sub_0814A9E8
	str r0, [r1]
	ldr r1, _0814B9F8 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r4, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r1, #0xa0
	lsls r1, r1, #0xf
	str r1, [r6, #0x60]
	movs r0, #0xf0
	lsls r0, r0, #9
	str r0, [r6, #0x68]
	ldr r0, _0814B9FC @ =0xFFFFF830
	str r0, [r6, #0x70]
	str r1, [r6, #0x64]
	str r4, [r6, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #1
	str r0, [r6, #0x74]
	adds r5, r6, #0
	adds r5, #0x10
	ldr r0, _0814BA00 @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x60
	ldrh r1, [r1]
	strh r1, [r5, #0xc]
	adds r0, #0x62
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r0, _0814BA04 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x60
	ldrh r1, [r1]
	strh r1, [r5, #0xc]
	adds r0, #0x62
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814BA08 @ =sub_0814BA0C
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814B9F4: .4byte sub_0814A9E8
_0814B9F8: .4byte gBldRegs
_0814B9FC: .4byte 0xFFFFF830
_0814BA00: .4byte gUnk_08387E2C
_0814BA04: .4byte gUnk_08387EB4
_0814BA08: .4byte sub_0814BA0C

	thumb_func_start sub_0814BA0C
sub_0814BA0C: @ 0x0814BA0C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0814BA22
	ldr r0, _0814BAB8 @ =sub_0814BAC4
	str r0, [r4, #4]
_0814BA22:
	ldrb r1, [r4, #1]
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _0814BA44
	adds r1, #1
	strb r1, [r4, #1]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	ble _0814BA44
	movs r0, #0xff
	orrs r1, r0
	strb r1, [r4, #1]
	ldr r0, _0814BABC @ =0x0000024B
	bl m4aSongNumStart
_0814BA44:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814BAC0 @ =0x00049FFF
	cmp r0, r1
	ble _0814BA64
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BA64:
	ldr r0, [r4, #0x60]
	ldr r2, [r4, #0x68]
	adds r0, r0, r2
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	cmp r2, #0
	bge _0814BA7E
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
_0814BA7E:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r5, r4, #0
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_08155128
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814BAB8: .4byte sub_0814BAC4
_0814BABC: .4byte 0x0000024B
_0814BAC0: .4byte 0x00049FFF

	thumb_func_start sub_0814BAC4
sub_0814BAC4: @ 0x0814BAC4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r3, [r0, #0xc]
	movs r2, #0x2d
	ldr r0, [r3, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0xa4
	movs r6, #0
	movs r5, #0
	strh r5, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r3, #0
	adds r1, #0xa0
	ldr r0, _0814BB84 @ =sub_0814A9E8
	str r0, [r1]
	ldr r1, _0814BB88 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r5, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xa0
	lsls r0, r0, #0x10
	mov r1, r8
	str r0, [r1, #0x60]
	ldr r0, _0814BB8C @ =0xFFFE2000
	str r0, [r1, #0x68]
	movs r0, #0xfa
	lsls r0, r0, #3
	str r0, [r1, #0x70]
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r1, #0x64]
	str r5, [r1, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #1
	str r0, [r1, #0x74]
	mov r7, r8
	adds r7, #0x10
	ldr r0, [r7, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	adds r7, #0x28
	ldr r0, [r7, #8]
	eors r0, r4
	str r0, [r7, #8]
	adds r0, r7, #0
	bl sub_08155128
	mov r0, r8
	adds r0, #0x10
	ldr r2, _0814BB90 @ =gUnk_08387E2C
	ldrh r1, [r2, #0x1c]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x1e]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, _0814BB94 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x1c]
	strh r0, [r7, #0xc]
	ldrh r0, [r1, #0x1e]
	strb r0, [r7, #0x1a]
	adds r0, r7, #0
	bl sub_08155128
	mov r0, r8
	strh r5, [r0, #8]
	strb r6, [r0, #1]
	ldr r0, _0814BB98 @ =sub_0814BB9C
	mov r1, r8
	str r0, [r1, #4]
	mov r0, r8
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r7, #0
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814BB84: .4byte sub_0814A9E8
_0814BB88: .4byte gBldRegs
_0814BB8C: .4byte 0xFFFE2000
_0814BB90: .4byte gUnk_08387E2C
_0814BB94: .4byte gUnk_08387EB4
_0814BB98: .4byte sub_0814BB9C

	thumb_func_start sub_0814BB9C
sub_0814BB9C: @ 0x0814BB9C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0814BBB2
	ldr r0, _0814BC48 @ =sub_0814BC54
	str r0, [r4, #4]
_0814BBB2:
	ldrb r1, [r4, #1]
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _0814BBD4
	adds r1, #1
	strb r1, [r4, #1]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	ble _0814BBD4
	movs r0, #0xff
	orrs r1, r0
	strb r1, [r4, #1]
	ldr r0, _0814BC4C @ =0x0000024B
	bl m4aSongNumStart
_0814BBD4:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814BC50 @ =0x00049FFF
	cmp r0, r1
	ble _0814BBF4
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BBF4:
	ldr r0, [r4, #0x60]
	ldr r2, [r4, #0x68]
	adds r0, r0, r2
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	cmp r2, #0
	ble _0814BC0E
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
_0814BC0E:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r5, r4, #0
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_08155128
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814BC48: .4byte sub_0814BC54
_0814BC4C: .4byte 0x0000024B
_0814BC50: .4byte 0x00049FFF

	thumb_func_start sub_0814BC54
sub_0814BC54: @ 0x0814BC54
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r3, [r7, #0xc]
	movs r2, #0x78
	ldr r0, [r3, #4]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0xa4
	movs r5, #0
	movs r4, #0
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r3, #0
	adds r1, #0xa0
	ldr r0, _0814BCEC @ =sub_0814A9E8
	str r0, [r1]
	ldr r1, _0814BCF0 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	strh r4, [r1, #2]
	movs r0, #0x10
	strh r0, [r1, #4]
	movs r0, #0xf0
	lsls r0, r0, #0xf
	str r0, [r7, #0x60]
	str r4, [r7, #0x70]
	str r4, [r7, #0x68]
	movs r0, #0x8c
	lsls r0, r0, #0xe
	str r0, [r7, #0x64]
	str r4, [r7, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #6
	str r0, [r7, #0x74]
	adds r6, r7, #0
	adds r6, #0x10
	ldr r0, _0814BCF4 @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x46
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r0, _0814BCF8 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x44
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x46
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	strh r4, [r7, #8]
	strb r5, [r7, #1]
	ldr r0, _0814BCFC @ =sub_0814BD00
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814BCEC: .4byte sub_0814A9E8
_0814BCF0: .4byte gBldRegs
_0814BCF4: .4byte gUnk_08387E2C
_0814BCF8: .4byte gUnk_08387EB4
_0814BCFC: .4byte sub_0814BD00

	thumb_func_start sub_0814BD00
sub_0814BD00: @ 0x0814BD00
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	movs r0, #1
	ldrsb r0, [r4, r0]
	cmp r0, #0
	blt _0814BD26
	adds r1, #1
	strb r1, [r4, #1]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xd
	ble _0814BD26
	movs r0, #0xff
	orrs r1, r0
	strb r1, [r4, #1]
	ldr r0, _0814BDB8 @ =0x0000024B
	bl m4aSongNumStart
_0814BD26:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814BDBC @ =0x00049FFF
	cmp r0, r1
	ble _0814BD46
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BD46:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	ldr r1, [r4, #0x64]
	ldr r0, _0814BDC0 @ =0x005FFFFF
	cmp r1, r0
	ble _0814BD78
	ldr r0, _0814BDC4 @ =sub_0814BDC8
	str r0, [r4, #4]
_0814BD78:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BD8E
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BD8E:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BDA4
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BDA4:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814BDB8: .4byte 0x0000024B
_0814BDBC: .4byte 0x00049FFF
_0814BDC0: .4byte 0x005FFFFF
_0814BDC4: .4byte sub_0814BDC8

	thumb_func_start sub_0814BDC8
sub_0814BDC8: @ 0x0814BDC8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814BE34 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x34]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814BE38 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x34]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814BE3C @ =sub_0814BE40
	str r0, [r6, #4]
	adds r4, r6, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BE10
	adds r1, r6, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BE10:
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BE22
	adds r1, r6, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BE22:
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814BE34: .4byte gUnk_08387E2C
_0814BE38: .4byte gUnk_08387EB4
_0814BE3C: .4byte sub_0814BE40

	thumb_func_start sub_0814BE40
sub_0814BE40: @ 0x0814BE40
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814BED8 @ =0x00049FFF
	cmp r0, r1
	ble _0814BE64
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BE64:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	ldr r1, [r4, #0x64]
	ldr r0, _0814BEDC @ =0x0087FFFF
	cmp r1, r0
	ble _0814BE9A
	adds r0, #1
	str r0, [r4, #0x64]
	ldr r0, _0814BEE0 @ =sub_0814BEE4
	str r0, [r4, #4]
_0814BE9A:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BEB0
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BEB0:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BEC6
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BEC6:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814BED8: .4byte 0x00049FFF
_0814BEDC: .4byte 0x0087FFFF
_0814BEE0: .4byte sub_0814BEE4

	thumb_func_start sub_0814BEE4
sub_0814BEE4: @ 0x0814BEE4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	str r6, [r4, #0x6c]
	str r6, [r4, #0x74]
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814BF60 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x28]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814BF64 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x28]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	ldr r1, [r4, #0xc]
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _0814BF20
	ldr r0, _0814BF68 @ =sub_0814E224
	str r0, [r1, #8]
_0814BF20:
	strh r6, [r4, #8]
	ldr r0, _0814BF6C @ =sub_0814BF70
	str r0, [r4, #4]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BF3C
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BF3C:
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BF4E
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BF4E:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814BF60: .4byte gUnk_08387E2C
_0814BF64: .4byte gUnk_08387EB4
_0814BF68: .4byte sub_0814E224
_0814BF6C: .4byte sub_0814BF70

	thumb_func_start sub_0814BF70
sub_0814BF70: @ 0x0814BF70
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0814BF86
	ldr r0, _0814C00C @ =sub_0814C014
	str r0, [r4, #4]
_0814BF86:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C010 @ =0x00049FFF
	cmp r0, r1
	ble _0814BFA6
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814BFA6:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BFE2
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814BFE2:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814BFF8
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814BFF8:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C00C: .4byte sub_0814C014
_0814C010: .4byte 0x00049FFF

	thumb_func_start sub_0814C014
sub_0814C014: @ 0x0814C014
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r0, #0xa0
	lsls r0, r0, #9
	str r0, [r5, #0x68]
	ldr r0, _0814C090 @ =0xFFFD4000
	str r0, [r5, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #6
	str r0, [r5, #0x74]
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814C094 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x2c]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2e]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814C098 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x2c]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2e]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	strh r4, [r5, #8]
	ldr r0, _0814C09C @ =sub_0814C0A0
	str r0, [r5, #4]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C06C
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C06C:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C07E
	adds r1, r5, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C07E:
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C090: .4byte 0xFFFD4000
_0814C094: .4byte gUnk_08387E2C
_0814C098: .4byte gUnk_08387EB4
_0814C09C: .4byte sub_0814C0A0

	thumb_func_start sub_0814C0A0
sub_0814C0A0: @ 0x0814C0A0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0814C0B6
	ldr r0, _0814C13C @ =sub_0814C144
	str r0, [r4, #4]
_0814C0B6:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C140 @ =0x00049FFF
	cmp r0, r1
	ble _0814C0D6
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C0D6:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C112
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C112:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C128
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C128:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C13C: .4byte sub_0814C144
_0814C140: .4byte 0x00049FFF

	thumb_func_start sub_0814C144
sub_0814C144: @ 0x0814C144
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814C1DC @ =gUnk_08387E2C
	ldrh r0, [r1, #0x30]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814C1E0 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x30]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x32]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #8]
	ldr r0, _0814C1E4 @ =sub_0814C1EC
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C1E8 @ =0x00049FFF
	cmp r0, r1
	ble _0814C194
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814C194:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C1DC: .4byte gUnk_08387E2C
_0814C1E0: .4byte gUnk_08387EB4
_0814C1E4: .4byte sub_0814C1EC
_0814C1E8: .4byte 0x00049FFF

	thumb_func_start sub_0814C1EC
sub_0814C1EC: @ 0x0814C1EC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C26C @ =0x00049FFF
	cmp r0, r1
	ble _0814C210
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C210:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814C252
	movs r1, #1
_0814C252:
	cmp r1, #0
	beq _0814C25A
	ldr r0, _0814C270 @ =sub_0814C274
	str r0, [r4, #4]
_0814C25A:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C26C: .4byte 0x00049FFF
_0814C270: .4byte sub_0814C274

	thumb_func_start sub_0814C274
sub_0814C274: @ 0x0814C274
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	ldr r1, _0814C30C @ =gUnk_08387E2C
	ldrh r0, [r1, #0x34]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814C310 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x34]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #8]
	ldr r0, _0814C314 @ =sub_0814C31C
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C318 @ =0x00049FFF
	cmp r0, r1
	ble _0814C2C4
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814C2C4:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C30C: .4byte gUnk_08387E2C
_0814C310: .4byte gUnk_08387EB4
_0814C314: .4byte sub_0814C31C
_0814C318: .4byte 0x00049FFF

	thumb_func_start sub_0814C31C
sub_0814C31C: @ 0x0814C31C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C3BC @ =0x00049FFF
	cmp r0, r1
	ble _0814C340
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C340:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	ldr r1, _0814C3C0 @ =0x0087FFFF
	cmp r0, r1
	ble _0814C368
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x64]
	ldr r0, _0814C3C4 @ =sub_0814C3C8
	str r0, [r4, #4]
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_0814C368:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C394
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C394:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C3AA
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C3AA:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C3BC: .4byte 0x00049FFF
_0814C3C0: .4byte 0x0087FFFF
_0814C3C4: .4byte sub_0814C3C8

	thumb_func_start sub_0814C3C8
sub_0814C3C8: @ 0x0814C3C8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814C418 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x38]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814C41C @ =gUnk_08387EB4
	ldrh r0, [r1, #0x38]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	str r4, [r5, #0x74]
	str r4, [r5, #0x6c]
	str r4, [r5, #0x70]
	str r4, [r5, #0x68]
	strh r4, [r5, #8]
	ldr r0, _0814C420 @ =sub_0814E600
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C418: .4byte gUnk_08387E2C
_0814C41C: .4byte gUnk_08387EB4
_0814C420: .4byte sub_0814E600

	thumb_func_start sub_0814C424
sub_0814C424: @ 0x0814C424
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814C46C @ =gUnk_08387E2C
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814C470 @ =gUnk_08387EB4
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814C474 @ =sub_0814E630
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C46C: .4byte gUnk_08387E2C
_0814C470: .4byte gUnk_08387EB4
_0814C474: .4byte sub_0814E630

	thumb_func_start sub_0814C478
sub_0814C478: @ 0x0814C478
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r7, #0
	adds r6, #0x10
	ldr r1, _0814C4E4 @ =gUnk_08387E2C
	ldrh r0, [r1, #8]
	movs r5, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814C4E8 @ =gUnk_08387EB4
	ldrh r0, [r1, #8]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0xa]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r1, r4
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	movs r0, #0xc0
	lsls r0, r0, #8
	str r0, [r7, #0x68]
	strh r5, [r7, #8]
	ldr r0, _0814C4EC @ =sub_0814C4F0
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C4E4: .4byte gUnk_08387E2C
_0814C4E8: .4byte gUnk_08387EB4
_0814C4EC: .4byte sub_0814C4F0

	thumb_func_start sub_0814C4F0
sub_0814C4F0: @ 0x0814C4F0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C58C @ =0x00049FFF
	cmp r0, r1
	ble _0814C514
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C514:
	ldr r2, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r2, r2, r0
	str r2, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	ldr r0, _0814C590 @ =0x00B7FFFF
	cmp r2, r0
	ble _0814C538
	adds r0, #1
	str r0, [r4, #0x60]
	movs r0, #0
	str r0, [r4, #0x70]
	str r0, [r4, #0x68]
	ldr r0, _0814C594 @ =sub_0814C598
	str r0, [r4, #4]
_0814C538:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C564
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C564:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C57A
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C57A:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C58C: .4byte 0x00049FFF
_0814C590: .4byte 0x00B7FFFF
_0814C594: .4byte sub_0814C598

	thumb_func_start sub_0814C598
sub_0814C598: @ 0x0814C598
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814C5E0 @ =gUnk_08387E2C
	ldrh r0, [r1]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814C5E4 @ =gUnk_08387EB4
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814C5E8 @ =sub_0814E660
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C5E0: .4byte gUnk_08387E2C
_0814C5E4: .4byte gUnk_08387EB4
_0814C5E8: .4byte sub_0814E660

	thumb_func_start sub_0814C5EC
sub_0814C5EC: @ 0x0814C5EC
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r6, r7, #0
	adds r6, #0x10
	ldr r1, _0814C664 @ =gUnk_08387E2C
	adds r0, r1, #0
	adds r0, #0x78
	ldrh r0, [r0]
	movs r5, #0
	strh r0, [r6, #0xc]
	adds r1, #0x7a
	ldrh r0, [r1]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r0, _0814C668 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x78
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x7a
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r1, r4
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	ldr r0, _0814C66C @ =0x0000024E
	bl m4aSongNumStart
	strh r5, [r7, #8]
	ldr r0, _0814C670 @ =sub_0814E690
	str r0, [r7, #4]
	adds r0, r7, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C664: .4byte gUnk_08387E2C
_0814C668: .4byte gUnk_08387EB4
_0814C66C: .4byte 0x0000024E
_0814C670: .4byte sub_0814E690

	thumb_func_start sub_0814C674
sub_0814C674: @ 0x0814C674
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r0, _0814C718 @ =0xFFFD0000
	str r0, [r7, #0x68]
	movs r0, #0xe0
	lsls r0, r0, #5
	str r0, [r7, #0x70]
	movs r5, #0
	str r5, [r7, #0x6c]
	str r5, [r7, #0x74]
	adds r6, r7, #0
	adds r6, #0x10
	ldr r0, _0814C71C @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x70
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x72
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r0, _0814C720 @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x70
	ldrh r1, [r1]
	strh r1, [r6, #0xc]
	adds r0, #0x72
	ldrh r0, [r0]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r1, r4
	str r1, [r0, #8]
	bl sub_08155128
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	strh r5, [r7, #8]
	ldr r0, _0814C724 @ =sub_0814C728
	str r0, [r7, #4]
	adds r4, r7, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C6F4
	adds r1, r7, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C6F4:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C706
	adds r1, r7, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C706:
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C718: .4byte 0xFFFD0000
_0814C71C: .4byte gUnk_08387E2C
_0814C720: .4byte gUnk_08387EB4
_0814C724: .4byte sub_0814C728

	thumb_func_start sub_0814C728
sub_0814C728: @ 0x0814C728
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0814C73E
	ldr r0, _0814C7C4 @ =sub_0814C7CC
	str r0, [r4, #4]
_0814C73E:
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C7C8 @ =0x00049FFF
	cmp r0, r1
	ble _0814C75E
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C75E:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C79A
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814C79A:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814C7B0
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814C7B0:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C7C4: .4byte sub_0814C7CC
_0814C7C8: .4byte 0x00049FFF

	thumb_func_start sub_0814C7CC
sub_0814C7CC: @ 0x0814C7CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	str r6, [r4, #0x68]
	str r6, [r4, #0x70]
	str r6, [r4, #0x6c]
	adds r5, r4, #0
	adds r5, #0x10
	ldr r0, _0814C888 @ =gUnk_08387E2C
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	strh r1, [r5, #0xc]
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r0, _0814C88C @ =gUnk_08387EB4
	adds r1, r0, #0
	adds r1, #0x74
	ldrh r1, [r1]
	strh r1, [r5, #0xc]
	adds r0, #0x76
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	lsls r0, r0, #1
	strb r0, [r1]
	adds r1, #0x28
	ldrb r0, [r1]
	lsls r0, r0, #1
	strb r0, [r1]
	strh r6, [r4, #8]
	ldr r0, _0814C890 @ =sub_0814C898
	str r0, [r4, #4]
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C894 @ =0x00049FFF
	cmp r0, r1
	ble _0814C840
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	str r6, [r4, #0x74]
_0814C840:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C888: .4byte gUnk_08387E2C
_0814C88C: .4byte gUnk_08387EB4
_0814C890: .4byte sub_0814C898
_0814C894: .4byte 0x00049FFF

	thumb_func_start sub_0814C898
sub_0814C898: @ 0x0814C898
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814C918 @ =0x00049FFF
	cmp r0, r1
	ble _0814C8BC
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814C8BC:
	ldr r1, [r4, #0x60]
	ldr r0, [r4, #0x68]
	adds r1, r1, r0
	str r1, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r2, [r4, #0x6c]
	adds r0, r0, r2
	str r0, [r4, #0x64]
	asrs r1, r1, #0x10
	adds r0, r4, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814C8FE
	movs r1, #1
_0814C8FE:
	cmp r1, #0
	beq _0814C906
	ldr r0, _0814C91C @ =sub_0814C920
	str r0, [r4, #4]
_0814C906:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814C918: .4byte 0x00049FFF
_0814C91C: .4byte sub_0814C920

	thumb_func_start sub_0814C920
sub_0814C920: @ 0x0814C920
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #0
	str r7, [r5, #0x68]
	str r7, [r5, #0x6c]
	movs r0, #0x98
	lsls r0, r0, #6
	str r0, [r5, #0x74]
	adds r6, r5, #0
	adds r6, #0x10
	ldr r0, [r6, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
	adds r1, r5, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r1, #0x28
	ldrb r0, [r1]
	lsrs r0, r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x10
	ldr r2, _0814C9F4 @ =gUnk_08387E2C
	ldrh r1, [r2, #0x34]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x36]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, _0814C9F8 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x34]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x36]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	strh r7, [r5, #8]
	ldr r0, _0814C9FC @ =sub_0814CA04
	str r0, [r5, #4]
	ldr r0, [r5, #0x68]
	ldr r1, [r5, #0x70]
	adds r0, r0, r1
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x6c]
	ldr r1, [r5, #0x74]
	adds r0, r0, r1
	str r0, [r5, #0x6c]
	ldr r1, _0814CA00 @ =0x00049FFF
	cmp r0, r1
	ble _0814C9AA
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r5, #0x6c]
	str r7, [r5, #0x74]
_0814C9AA:
	ldr r1, [r5, #0x60]
	ldr r0, [r5, #0x68]
	adds r1, r1, r0
	str r1, [r5, #0x60]
	ldr r0, [r5, #0x64]
	ldr r2, [r5, #0x6c]
	adds r0, r0, r2
	str r0, [r5, #0x64]
	asrs r1, r1, #0x10
	adds r0, r5, #0
	adds r0, #0x48
	strh r1, [r0]
	strh r1, [r5, #0x20]
	ldr r0, [r5, #0x64]
	asrs r0, r0, #0x10
	adds r1, r5, #0
	adds r1, #0x4a
	strh r0, [r1]
	strh r0, [r5, #0x22]
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r6, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814C9F4: .4byte gUnk_08387E2C
_0814C9F8: .4byte gUnk_08387EB4
_0814C9FC: .4byte sub_0814CA04
_0814CA00: .4byte 0x00049FFF

	thumb_func_start sub_0814CA04
sub_0814CA04: @ 0x0814CA04
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814CAA4 @ =0x00049FFF
	cmp r0, r1
	ble _0814CA28
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814CA28:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r0, r0, r1
	str r0, [r4, #0x64]
	ldr r1, _0814CAA8 @ =0x0087FFFF
	cmp r0, r1
	ble _0814CA50
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x64]
	ldr r0, _0814CAAC @ =sub_0814CAB0
	str r0, [r4, #4]
	movs r0, #0x93
	lsls r0, r0, #2
	bl m4aSongNumStart
_0814CA50:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CA7C
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CA7C:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CA92
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CA92:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CAA4: .4byte 0x00049FFF
_0814CAA8: .4byte 0x0087FFFF
_0814CAAC: .4byte sub_0814CAB0

	thumb_func_start sub_0814CAB0
sub_0814CAB0: @ 0x0814CAB0
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x10
	ldr r1, _0814CB00 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x38]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	adds r6, #0x28
	ldr r1, _0814CB04 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x38]
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x3a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	str r4, [r5, #0x74]
	str r4, [r5, #0x6c]
	str r4, [r5, #0x70]
	str r4, [r5, #0x68]
	strh r4, [r5, #8]
	ldr r0, _0814CB08 @ =sub_0814E700
	str r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CB00: .4byte gUnk_08387E2C
_0814CB04: .4byte gUnk_08387EB4
_0814CB08: .4byte sub_0814E700

	thumb_func_start sub_0814CB0C
sub_0814CB0C: @ 0x0814CB0C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r1, _0814CB54 @ =gUnk_08387E2C
	ldrh r0, [r1, #0x28]
	movs r4, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r1, _0814CB58 @ =gUnk_08387EB4
	ldrh r0, [r1, #0x28]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r4, [r6, #8]
	ldr r0, _0814CB5C @ =sub_0814E730
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CB54: .4byte gUnk_08387E2C
_0814CB58: .4byte gUnk_08387EB4
_0814CB5C: .4byte sub_0814E730

	thumb_func_start sub_0814CB60
sub_0814CB60: @ 0x0814CB60
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	ldr r1, [r4, #0x70]
	adds r0, r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x6c]
	ldr r1, [r4, #0x74]
	adds r0, r0, r1
	str r0, [r4, #0x6c]
	ldr r1, _0814CC00 @ =0x00049FFF
	cmp r0, r1
	ble _0814CB84
	movs r0, #0x94
	lsls r0, r0, #0xb
	str r0, [r4, #0x6c]
	movs r0, #0
	str r0, [r4, #0x74]
_0814CB84:
	ldr r0, [r4, #0x60]
	ldr r1, [r4, #0x68]
	adds r0, r0, r1
	str r0, [r4, #0x60]
	ldr r0, [r4, #0x64]
	ldr r1, [r4, #0x6c]
	adds r2, r0, r1
	str r2, [r4, #0x64]
	cmp r1, #0
	blt _0814CBAC
	ldr r0, _0814CC04 @ =0x004FFFFF
	cmp r2, r0
	ble _0814CBAC
	adds r0, #1
	str r0, [r4, #0x64]
	movs r0, #0
	str r0, [r4, #0x74]
	str r0, [r4, #0x6c]
	ldr r0, _0814CC08 @ =sub_0814CC0C
	str r0, [r4, #4]
_0814CBAC:
	ldr r0, [r4, #0x60]
	asrs r0, r0, #0x10
	adds r1, r4, #0
	adds r1, #0x48
	strh r0, [r1]
	strh r0, [r4, #0x20]
	ldr r0, [r4, #0x64]
	asrs r0, r0, #0x10
	adds r1, #2
	strh r0, [r1]
	strh r0, [r4, #0x22]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CBD8
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CBD8:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CBEE
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CBEE:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CC00: .4byte 0x00049FFF
_0814CC04: .4byte 0x004FFFFF
_0814CC08: .4byte sub_0814CC0C

	thumb_func_start sub_0814CC0C
sub_0814CC0C: @ 0x0814CC0C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	adds r0, #0xb8
	ldr r1, [r0]
	ldr r0, _0814CC78 @ =sub_0814E4DC
	str r0, [r1, #4]
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0814CC7C @ =sub_0814CC80
	str r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	cmp r0, #0xfe
	bhi _0814CC38
	adds r0, #1
	strb r0, [r1]
	adds r1, #0x28
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0814CC38:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CC4E
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CC4E:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CC64
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CC64:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CC78: .4byte sub_0814E4DC
_0814CC7C: .4byte sub_0814CC80

	thumb_func_start sub_0814CC80
sub_0814CC80: @ 0x0814CC80
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0814CC96
	ldr r0, _0814CCF8 @ =sub_0814CCFC
	str r0, [r4, #4]
_0814CC96:
	adds r3, r4, #0
	adds r3, #0x2c
	ldrb r2, [r3]
	cmp r2, #0xfe
	bhi _0814CCB8
	ldrh r1, [r4, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0814CCB8
	adds r0, r2, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x54
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0814CCB8:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CCCE
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CCCE:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CCE4
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CCE4:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CCF8: .4byte sub_0814CCFC

	thumb_func_start sub_0814CCFC
sub_0814CCFC: @ 0x0814CCFC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, [r4, #0xc]
	adds r0, r2, #0
	adds r0, #0xb8
	ldr r1, [r0]
	ldr r0, _0814CD58 @ =sub_0814B908
	str r0, [r1, #4]
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0814CD5C @ =sub_0814CDE4
	str r0, [r4, #4]
	ldr r1, [r2, #4]
	cmp r1, #0
	bge _0814CD64
	ldr r0, _0814CD60 @ =sub_0814E7AC
	str r0, [r4, #4]
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CD34
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CD34:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CD4A
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CD4A:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	b _0814CDD6
	.align 2, 0
_0814CD58: .4byte sub_0814B908
_0814CD5C: .4byte sub_0814CDE4
_0814CD60: .4byte sub_0814E7AC
_0814CD64:
	movs r0, #2
	orrs r1, r0
	str r1, [r2, #4]
	ldr r1, _0814CDDC @ =gBldRegs
	movs r0, #0xe4
	lsls r0, r0, #2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	ldr r0, _0814CDE0 @ =0x0000024A
	bl m4aSongNumStart
	adds r3, r4, #0
	adds r3, #0x2c
	ldrb r2, [r3]
	cmp r2, #0xfe
	bhi _0814CD9E
	ldrh r1, [r4, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0814CD9E
	adds r0, r2, #1
	strb r0, [r3]
	adds r1, r4, #0
	adds r1, #0x54
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0814CD9E:
	adds r6, r4, #0
	adds r6, #0x10
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CDB4
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CDB4:
	adds r5, r4, #0
	adds r5, #0x38
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CDCA
	adds r1, r4, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CDCA:
	adds r0, r6, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
_0814CDD6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814CDDC: .4byte gBldRegs
_0814CDE0: .4byte 0x0000024A

	thumb_func_start sub_0814CDE4
sub_0814CDE4: @ 0x0814CDE4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	adds r6, r0, #0
	adds r6, #0x38
	ldrh r0, [r5, #8]
	adds r0, #1
	strh r0, [r5, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4a
	ble _0814CE00
	ldr r0, _0814CEA0 @ =sub_0814E748
	str r0, [r5, #4]
_0814CE00:
	ldr r4, _0814CEA4 @ =gBldRegs
	movs r1, #8
	ldrsh r0, [r5, r1]
	lsls r0, r0, #4
	movs r1, #0x4b
	bl __divsi3
	strh r0, [r4, #4]
	ldrb r0, [r5, #1]
	adds r0, #1
	strb r0, [r5, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0814CE28
	movs r0, #0
	strb r0, [r5, #1]
	ldr r0, _0814CEA8 @ =0x0000024A
	bl m4aSongNumStart
_0814CE28:
	adds r4, r5, #0
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r7, r4, #0
	cmp r0, #0
	bne _0814CE40
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814CE40:
	adds r4, r5, #0
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CE56
	adds r1, r5, #0
	adds r1, #0x53
	movs r0, #0xff
	strb r0, [r1]
_0814CE56:
	adds r0, r6, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CE64
	movs r0, #0xff
	strb r0, [r6, #0x1b]
_0814CE64:
	adds r3, r5, #0
	adds r3, #0x2c
	ldrb r2, [r3]
	cmp r2, #0xfe
	bhi _0814CE86
	ldrh r1, [r5, #8]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0814CE86
	adds r0, r2, #1
	strb r0, [r3]
	adds r1, r5, #0
	adds r1, #0x54
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0814CE86:
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814CEA0: .4byte sub_0814E748
_0814CEA4: .4byte gBldRegs
_0814CEA8: .4byte 0x0000024A

	thumb_func_start sub_0814CEAC
sub_0814CEAC: @ 0x0814CEAC
	push {r4, r5, lr}
	adds r3, r0, #0
	ldr r1, [r3, #0xc]
	adds r4, r1, #0
	adds r4, #0x38
	ldrh r0, [r3, #8]
	adds r0, #1
	movs r5, #0
	strh r0, [r3, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0814CEFC
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _0814CED0
	ldr r0, _0814CEF4 @ =sub_0814E1C0
	str r0, [r1, #8]
_0814CED0:
	ldr r2, [r3, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0xa8
	adds r0, r0, r1
	str r5, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r2, #0xb8
	adds r2, r2, r0
	str r5, [r2]
	ldr r0, _0814CEF8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0814CF28
	.align 2, 0
_0814CEF4: .4byte sub_0814E1C0
_0814CEF8: .4byte gCurTask
_0814CEFC:
	ldrb r0, [r3, #1]
	adds r0, #1
	strb r0, [r3, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0814CF14
	movs r0, #0
	strb r0, [r3, #1]
	ldr r0, _0814CF30 @ =0x0000024A
	bl m4aSongNumStart
_0814CF14:
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814CF22
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0814CF22:
	adds r0, r4, #0
	bl sub_0815604C
_0814CF28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814CF30: .4byte 0x0000024A

	thumb_func_start sub_0814CF34
sub_0814CF34: @ 0x0814CF34
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x50
	mov r8, r0
	mov r1, sp
	ldr r7, _0814D024 @ =gUnk_08387D8C
	adds r0, r7, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r4, _0814D028 @ =0x06012000
	adds r0, r0, r4
	str r0, [sp]
	movs r5, #0
	movs r0, #0xff
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	ldrh r0, [r7, #0x38]
	mov sl, r0
	strh r0, [r1, #0xc]
	ldrh r2, [r7, #0x3a]
	mov sb, r2
	mov r0, sb
	strb r0, [r1, #0x1a]
	strh r5, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r2, #0x10
	strb r2, [r1, #0x1c]
	adds r0, r7, #0
	adds r0, #0x3d
	ldrb r6, [r0]
	strb r6, [r1, #0x1f]
	ldr r0, _0814D02C @ =0x0000FFC0
	strh r0, [r1, #0x10]
	strh r0, [r1, #0x12]
	str r5, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r1, r8
	adds r1, #0xc
	adds r0, r7, #0
	adds r0, #0x34
	ldrb r0, [r0]
	lsls r0, r0, #5
	adds r0, r0, r4
	mov r2, r8
	str r0, [r2, #0xc]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	ldrh r0, [r7, #0x30]
	strh r0, [r1, #0xc]
	ldrh r0, [r7, #0x32]
	strb r0, [r1, #0x1a]
	strh r5, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	adds r0, r7, #0
	adds r0, #0x35
	ldrb r0, [r0]
	strb r0, [r1, #0x1f]
	movs r0, #0x14
	strh r0, [r1, #0x10]
	ldr r0, _0814D030 @ =0x0000FFEC
	strh r0, [r1, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r1, #8]
	adds r0, r1, #0
	bl sub_08155128
	add r4, sp, #0x28
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #0x28]
	mov r2, sl
	strh r2, [r4, #0xc]
	mov r0, sb
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4, #0x14]
	strh r5, [r4, #0x16]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #0xf
	ands r0, r6
	strb r0, [r4, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldrb r0, [r4, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add sp, #0x50
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814D024: .4byte gUnk_08387D8C
_0814D028: .4byte 0x06012000
_0814D02C: .4byte 0x0000FFC0
_0814D030: .4byte 0x0000FFEC

	thumb_func_start sub_0814D034
sub_0814D034: @ 0x0814D034
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #7]
	cmp r0, #0
	bne _0814D050
	ldr r1, [r4, #0x38]
	ldr r0, _0814D0DC @ =0xFFF80000
	cmp r1, r0
	blt _0814D050
	ldr r0, _0814D0E0 @ =0x00000251
	bl m4aSongNumStart
	movs r0, #1
	strb r0, [r4, #7]
_0814D050:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x22
	ble _0814D062
	ldr r0, _0814D0E4 @ =sub_0814D0F4
	str r0, [r4]
_0814D062:
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D072
	rsbs r2, r1, #0
_0814D072:
	ldr r0, _0814D0E8 @ =0x00014BFF
	cmp r2, r0
	ble _0814D088
	ldr r0, _0814D0EC @ =0xFFFEB400
	cmp r1, #0
	ble _0814D082
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D082:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D088:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D0F0 @ =0x00027FFF
	cmp r0, r1
	ble _0814D0A0
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D0A0:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D0CE
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D0CE:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D0DC: .4byte 0xFFF80000
_0814D0E0: .4byte 0x00000251
_0814D0E4: .4byte sub_0814D0F4
_0814D0E8: .4byte 0x00014BFF
_0814D0EC: .4byte 0xFFFEB400
_0814D0F0: .4byte 0x00027FFF

	thumb_func_start sub_0814D0F4
sub_0814D0F4: @ 0x0814D0F4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xc
	ldr r2, _0814D184 @ =gUnk_08387F3C
	ldrh r1, [r2, #0x18]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x1a]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D118
	rsbs r2, r1, #0
_0814D118:
	ldr r0, _0814D188 @ =0x00014BFF
	cmp r2, r0
	ble _0814D12E
	ldr r0, _0814D18C @ =0xFFFEB400
	cmp r1, #0
	ble _0814D128
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D128:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D12E:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D190 @ =0x00027FFF
	cmp r0, r1
	ble _0814D146
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D146:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D194 @ =sub_0814D198
	str r0, [r4]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D178
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D178:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D184: .4byte gUnk_08387F3C
_0814D188: .4byte 0x00014BFF
_0814D18C: .4byte 0xFFFEB400
_0814D190: .4byte 0x00027FFF
_0814D194: .4byte sub_0814D198

	thumb_func_start sub_0814D198
sub_0814D198: @ 0x0814D198
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D1AC
	rsbs r2, r1, #0
_0814D1AC:
	ldr r0, _0814D218 @ =0x00014BFF
	cmp r2, r0
	ble _0814D1C2
	ldr r0, _0814D21C @ =0xFFFEB400
	cmp r1, #0
	ble _0814D1BC
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D1BC:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D1C2:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D220 @ =0x00027FFF
	cmp r0, r1
	ble _0814D1DA
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D1DA:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814D204
	movs r1, #1
_0814D204:
	cmp r1, #0
	beq _0814D20C
	ldr r0, _0814D224 @ =sub_0814D228
	str r0, [r4]
_0814D20C:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D218: .4byte 0x00014BFF
_0814D21C: .4byte 0xFFFEB400
_0814D220: .4byte 0x00027FFF
_0814D224: .4byte sub_0814D228

	thumb_func_start sub_0814D228
sub_0814D228: @ 0x0814D228
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xc
	ldr r2, _0814D2B8 @ =gUnk_08387F3C
	ldrh r1, [r2, #0x1c]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x1e]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D24C
	rsbs r2, r1, #0
_0814D24C:
	ldr r0, _0814D2BC @ =0x00014BFF
	cmp r2, r0
	ble _0814D262
	ldr r0, _0814D2C0 @ =0xFFFEB400
	cmp r1, #0
	ble _0814D25C
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D25C:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D262:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D2C4 @ =0x00027FFF
	cmp r0, r1
	ble _0814D27A
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D27A:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D2C8 @ =sub_0814D2CC
	str r0, [r4]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D2AC
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D2AC:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D2B8: .4byte gUnk_08387F3C
_0814D2BC: .4byte 0x00014BFF
_0814D2C0: .4byte 0xFFFEB400
_0814D2C4: .4byte 0x00027FFF
_0814D2C8: .4byte sub_0814D2CC

	thumb_func_start sub_0814D2CC
sub_0814D2CC: @ 0x0814D2CC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D2E0
	rsbs r2, r1, #0
_0814D2E0:
	ldr r0, _0814D35C @ =0x00014BFF
	cmp r2, r0
	ble _0814D2F6
	ldr r0, _0814D360 @ =0xFFFEB400
	cmp r1, #0
	ble _0814D2F0
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D2F0:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D2F6:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D364 @ =0x00027FFF
	cmp r0, r1
	ble _0814D30E
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D30E:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r1, _0814D368 @ =0x0087FFFF
	cmp r0, r1
	ble _0814D32E
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x38]
	ldr r0, _0814D36C @ =sub_0814D370
	str r0, [r4]
_0814D32E:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1c]
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D350
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D350:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D35C: .4byte 0x00014BFF
_0814D360: .4byte 0xFFFEB400
_0814D364: .4byte 0x00027FFF
_0814D368: .4byte 0x0087FFFF
_0814D36C: .4byte sub_0814D370

	thumb_func_start sub_0814D370
sub_0814D370: @ 0x0814D370
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0814D41C @ =0x0000024F
	bl m4aSongNumStart
	adds r0, r4, #0
	adds r0, #0xc
	ldr r2, _0814D420 @ =gUnk_08387F3C
	ldrh r1, [r2, #0x20]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x22]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r0, [r4, #0x40]
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x40]
	ldr r0, _0814D424 @ =0x00001388
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r0, r2
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D3AE
	rsbs r2, r1, #0
_0814D3AE:
	ldr r0, _0814D428 @ =0x00014BFF
	cmp r2, r0
	ble _0814D3C4
	ldr r0, _0814D42C @ =0xFFFEB400
	cmp r1, #0
	ble _0814D3BE
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D3BE:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D3C4:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D430 @ =0x00027FFF
	cmp r0, r1
	ble _0814D3DC
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D3DC:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D434 @ =sub_0814D438
	str r0, [r4]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D40E
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D40E:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D41C: .4byte 0x0000024F
_0814D420: .4byte gUnk_08387F3C
_0814D424: .4byte 0x00001388
_0814D428: .4byte 0x00014BFF
_0814D42C: .4byte 0xFFFEB400
_0814D430: .4byte 0x00027FFF
_0814D434: .4byte sub_0814D438

	thumb_func_start sub_0814D438
sub_0814D438: @ 0x0814D438
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D44C
	rsbs r2, r1, #0
_0814D44C:
	ldr r0, _0814D4B8 @ =0x00014BFF
	cmp r2, r0
	ble _0814D462
	ldr r0, _0814D4BC @ =0xFFFEB400
	cmp r1, #0
	ble _0814D45C
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D45C:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D462:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D4C0 @ =0x00027FFF
	cmp r0, r1
	ble _0814D47A
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D47A:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	movs r1, #0
	cmp r0, #0
	bne _0814D4A4
	movs r1, #1
_0814D4A4:
	cmp r1, #0
	beq _0814D4AC
	ldr r0, _0814D4C4 @ =sub_0814D4C8
	str r0, [r4]
_0814D4AC:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D4B8: .4byte 0x00014BFF
_0814D4BC: .4byte 0xFFFEB400
_0814D4C0: .4byte 0x00027FFF
_0814D4C4: .4byte sub_0814D4C8

	thumb_func_start sub_0814D4C8
sub_0814D4C8: @ 0x0814D4C8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xc
	ldr r2, _0814D558 @ =gUnk_08387F3C
	ldrh r1, [r2, #0x14]
	strh r1, [r0, #0xc]
	ldrh r1, [r2, #0x16]
	strb r1, [r0, #0x1a]
	bl sub_08155128
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D4EC
	rsbs r2, r1, #0
_0814D4EC:
	ldr r0, _0814D55C @ =0x00014BFF
	cmp r2, r0
	ble _0814D502
	ldr r0, _0814D560 @ =0xFFFEB400
	cmp r1, #0
	ble _0814D4FC
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D4FC:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D502:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D564 @ =0x00027FFF
	cmp r0, r1
	ble _0814D51A
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D51A:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D568 @ =sub_0814D56C
	str r0, [r4]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D54C
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D54C:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D558: .4byte gUnk_08387F3C
_0814D55C: .4byte 0x00014BFF
_0814D560: .4byte 0xFFFEB400
_0814D564: .4byte 0x00027FFF
_0814D568: .4byte sub_0814D56C

	thumb_func_start sub_0814D56C
sub_0814D56C: @ 0x0814D56C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D580
	rsbs r2, r1, #0
_0814D580:
	ldr r0, _0814D604 @ =0x00014BFF
	cmp r2, r0
	ble _0814D596
	ldr r0, _0814D608 @ =0xFFFEB400
	cmp r1, #0
	ble _0814D590
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D590:
	str r0, [r4, #0x3c]
	movs r0, #0
	str r0, [r4, #0x44]
_0814D596:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D60C @ =0x00027FFF
	cmp r0, r1
	ble _0814D5AE
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D5AE:
	ldr r0, [r4, #0x34]
	ldr r1, [r4, #0x3c]
	adds r0, r0, r1
	str r0, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r1, _0814D610 @ =0x0087FFFF
	cmp r0, r1
	ble _0814D5D4
	movs r0, #0x88
	lsls r0, r0, #0x10
	str r0, [r4, #0x38]
	movs r0, #0x69
	bl m4aSongNumStart
	ldr r0, _0814D614 @ =sub_0814E7F8
	str r0, [r4]
_0814D5D4:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1c]
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D5F6
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D5F6:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D604: .4byte 0x00014BFF
_0814D608: .4byte 0xFFFEB400
_0814D60C: .4byte 0x00027FFF
_0814D610: .4byte 0x0087FFFF
_0814D614: .4byte sub_0814E7F8

	thumb_func_start sub_0814D618
sub_0814D618: @ 0x0814D618
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0x94
	lsls r0, r0, #2
	bl m4aSongNumStart
	adds r5, r4, #0
	adds r5, #0xc
	ldr r1, _0814D694 @ =gUnk_08387F3C
	ldrh r0, [r1, #4]
	movs r6, #0
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r4, #0x44]
	str r6, [r4, #0x48]
	str r0, [r4, #0x3c]
	adds r0, r6, #0
	adds r1, r0, #0
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D698 @ =0x00027FFF
	cmp r0, r1
	ble _0814D658
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
_0814D658:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	asrs r2, r2, #0x10
	strh r2, [r4, #0x1c]
	asrs r0, r0, #0x10
	strh r0, [r4, #0x1e]
	ldr r0, _0814D69C @ =sub_0814D6A0
	str r0, [r4]
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D686
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D686:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814D694: .4byte gUnk_08387F3C
_0814D698: .4byte 0x00027FFF
_0814D69C: .4byte sub_0814D6A0

	thumb_func_start sub_0814D6A0
sub_0814D6A0: @ 0x0814D6A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #6]
	adds r0, #1
	movs r5, #0
	strb r0, [r4, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x13
	ble _0814D6BE
	strb r5, [r4, #6]
	movs r0, #0x94
	lsls r0, r0, #2
	bl m4aSongNumStart
_0814D6BE:
	ldr r1, [r4, #0x3c]
	ldr r0, [r4, #0x44]
	adds r1, r1, r0
	str r1, [r4, #0x3c]
	adds r2, r1, #0
	cmp r1, #0
	bge _0814D6CE
	rsbs r2, r1, #0
_0814D6CE:
	ldr r0, _0814D748 @ =0x00014BFF
	cmp r2, r0
	ble _0814D6E2
	ldr r0, _0814D74C @ =0xFFFEB400
	cmp r1, #0
	ble _0814D6DE
	movs r0, #0xa6
	lsls r0, r0, #9
_0814D6DE:
	str r0, [r4, #0x3c]
	str r5, [r4, #0x44]
_0814D6E2:
	ldr r0, [r4, #0x40]
	ldr r1, [r4, #0x48]
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r1, _0814D750 @ =0x00027FFF
	cmp r0, r1
	ble _0814D6FA
	movs r0, #0xa0
	lsls r0, r0, #0xa
	str r0, [r4, #0x40]
	movs r0, #0
	str r0, [r4, #0x48]
_0814D6FA:
	ldr r2, [r4, #0x34]
	ldr r0, [r4, #0x3c]
	adds r2, r2, r0
	str r2, [r4, #0x34]
	ldr r0, [r4, #0x38]
	ldr r1, [r4, #0x40]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, _0814D754 @ =0x00B7FFFF
	cmp r2, r0
	ble _0814D718
	adds r0, #1
	str r0, [r4, #0x34]
	ldr r0, _0814D758 @ =sub_0814E85C
	str r0, [r4]
_0814D718:
	movs r1, #0x36
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1c]
	movs r1, #0x3a
	ldrsh r0, [r4, r1]
	strh r0, [r4, #0x1e]
	adds r5, r4, #0
	adds r5, #0xc
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814D73A
	adds r1, r4, #0
	adds r1, #0x27
	movs r0, #0xff
	strb r0, [r1]
_0814D73A:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814D748: .4byte 0x00014BFF
_0814D74C: .4byte 0xFFFEB400
_0814D750: .4byte 0x00027FFF
_0814D754: .4byte 0x00B7FFFF
_0814D758: .4byte sub_0814E85C

	thumb_func_start sub_0814D75C
sub_0814D75C: @ 0x0814D75C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x28]
	movs r3, #0
	movs r5, #0
	movs r0, #0xff
	mov sl, r0
	movs r1, #0x10
	mov r8, r1
	mov r7, sp
_0814D778:
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, #0xc
	ldr r4, [sp, #0x28]
	adds r2, r4, r0
	ldr r6, _0814D970 @ =gUnk_08387D8C
	mov sb, r6
	adds r1, r3, #0
	adds r1, #0xa
	lsls r1, r1, #3
	add r1, sb
	ldrb r0, [r1, #4]
	lsls r0, r0, #5
	ldr r4, _0814D974 @ =0x06012000
	adds r0, r0, r4
	str r0, [r2]
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	ldrh r0, [r1]
	mov r6, sp
	strh r0, [r6, #0x2c]
	strh r0, [r2, #0xc]
	ldrh r4, [r1, #2]
	strb r4, [r2, #0x1a]
	strh r5, [r2, #0x16]
	ldrb r0, [r2, #0x1b]
	mov r6, sl
	orrs r0, r6
	strb r0, [r2, #0x1b]
	mov r0, r8
	strb r0, [r2, #0x1c]
	ldrb r1, [r1, #5]
	add r6, sp, #0x34
	strb r1, [r6]
	strb r1, [r2, #0x1f]
	lsls r1, r3, #4
	ldr r6, _0814D978 @ =gUnk_08387F70
	adds r0, r1, r6
	ldrh r0, [r0]
	strh r0, [r2, #0x10]
	ldr r0, _0814D97C @ =gUnk_08387F72
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xb
	str r0, [r2, #8]
	adds r0, r2, #0
	str r3, [sp, #0x30]
	bl sub_08155128
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [sp]
	mov r2, sp
	ldrh r2, [r2, #0x2c]
	strh r2, [r7, #0xc]
	strb r4, [r7, #0x1a]
	ldrb r0, [r7, #0x1b]
	mov r4, sl
	orrs r0, r4
	strb r0, [r7, #0x1b]
	strh r5, [r7, #0x10]
	strh r5, [r7, #0x12]
	strh r5, [r7, #0x14]
	strh r5, [r7, #0x16]
	mov r6, r8
	strb r6, [r7, #0x1c]
	movs r0, #0xf
	add r1, sp, #0x34
	ldrb r1, [r1]
	ands r0, r1
	strb r0, [r7, #0x1f]
	movs r2, #0x80
	lsls r2, r2, #0xc
	str r2, [sp, #8]
	mov r0, sp
	bl sub_08155128
	ldrb r0, [r7, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	ldr r3, [sp, #0x30]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0814D778
	ldr r4, [sp, #0x28]
	movs r6, #0xa6
	lsls r6, r6, #1
	adds r2, r4, r6
	mov r0, sb
	adds r0, #0x94
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r1, _0814D974 @ =0x06012000
	adds r0, r0, r1
	str r0, [r2]
	movs r4, #0
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	mov r0, sb
	adds r0, #0x90
	ldrh r0, [r0]
	mov r8, r0
	strh r0, [r2, #0xc]
	mov r0, sb
	adds r0, #0x92
	ldrh r6, [r0]
	strb r6, [r2, #0x1a]
	strh r4, [r2, #0x16]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, sb
	adds r0, #0x95
	ldrb r0, [r0]
	mov sl, r0
	strb r0, [r2, #0x1f]
	ldr r7, _0814D980 @ =0x0000FFC0
	strh r7, [r2, #0x10]
	strh r7, [r2, #0x12]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [sp]
	mov r0, sp
	mov r2, r8
	strh r2, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	movs r0, #0xf
	mov r2, sl
	ands r0, r2
	strb r0, [r1, #0x1f]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	ldr r0, [sp, #0x28]
	movs r1, #0xbc
	lsls r1, r1, #1
	adds r2, r0, r1
	mov r0, sb
	adds r0, #0x9c
	ldrb r0, [r0]
	lsls r0, r0, #5
	ldr r6, _0814D974 @ =0x06012000
	adds r0, r0, r6
	str r0, [r2]
	movs r0, #0xe0
	lsls r0, r0, #1
	strh r0, [r2, #0x14]
	mov r0, sb
	adds r0, #0x98
	ldrh r0, [r0]
	mov r8, r0
	strh r0, [r2, #0xc]
	mov r0, sb
	adds r0, #0x9a
	ldrh r6, [r0]
	strb r6, [r2, #0x1a]
	strh r4, [r2, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2, #0x1b]
	movs r0, #0x10
	strb r0, [r2, #0x1c]
	mov r0, sb
	adds r0, #0x9d
	ldrb r0, [r0]
	mov sl, r0
	strb r0, [r2, #0x1f]
	strh r7, [r2, #0x10]
	strh r7, [r2, #0x12]
	str r4, [r2, #8]
	adds r0, r2, #0
	bl sub_08155128
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [sp]
	mov r0, sp
	mov r2, r8
	strh r2, [r0, #0xc]
	strb r6, [r0, #0x1a]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	strh r4, [r0, #0x14]
	strh r4, [r0, #0x16]
	movs r4, #0x10
	strb r4, [r0, #0x1c]
	movs r0, #0xf
	mov r6, sl
	ands r0, r6
	strb r0, [r1, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814D970: .4byte gUnk_08387D8C
_0814D974: .4byte 0x06012000
_0814D978: .4byte gUnk_08387F70
_0814D97C: .4byte gUnk_08387F72
_0814D980: .4byte 0x0000FFC0

	thumb_func_start sub_0814D984
sub_0814D984: @ 0x0814D984
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r7, r5, r0
	movs r6, #0xba
	lsls r6, r6, #1
	adds r1, r5, r6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	ble _0814D9BA
	movs r0, #0
	strb r0, [r1]
	movs r2, #0
	ldr r0, _0814DA20 @ =0x00000175
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0814D9B8
	movs r2, #1
_0814D9B8:
	strb r2, [r1]
_0814D9BA:
	ldr r1, _0814DA20 @ =0x00000175
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814DA12
	movs r4, #0
	ldr r6, _0814DA24 @ =gUnk_08387F70
	mov sb, r6
	movs r0, #0xe
	add r0, sb
	mov r8, r0
_0814D9D0:
	lsls r3, r4, #3
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r0, r0, r3
	lsls r2, r4, #4
	mov r1, sb
	adds r1, #0xc
	adds r1, r2, r1
	movs r6, #2
	ldrsh r0, [r0, r6]
	ldrh r1, [r1]
	adds r0, r0, r1
	strh r0, [r7, #0x10]
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r0, r5, r1
	adds r0, r0, r3
	add r2, r8
	movs r6, #2
	ldrsh r0, [r0, r6]
	ldrh r2, [r2]
	adds r0, r0, r2
	strh r0, [r7, #0x12]
	subs r1, #0x58
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814D9D0
_0814DA12:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DA20: .4byte 0x00000175
_0814DA24: .4byte gUnk_08387F70

	thumb_func_start sub_0814DA28
sub_0814DA28: @ 0x0814DA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	movs r0, #0xbc
	lsls r0, r0, #1
	add r0, sl
	mov sb, r0
	movs r1, #0
	str r1, [sp]
	ldr r7, _0814DB38 @ =gUnk_08387F70
_0814DA44:
	movs r2, #0
	mov r8, r2
	ldr r4, [sp]
	adds r4, #1
	str r4, [sp, #4]
_0814DA4E:
	mov r5, r8
	lsls r2, r5, #2
	movs r0, #0x98
	lsls r0, r0, #2
	add r0, sl
	adds r0, r0, r2
	ldr r1, [r0]
	subs r1, #2
	movs r0, #0xa0
	lsls r0, r0, #2
	add r0, sl
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [sp]
	muls r0, r2, r0
	lsls r0, r0, #1
	subs r1, r1, r0
	cmp r1, #0
	ble _0814DAFC
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	asrs r0, r0, #8
	adds r5, r0, #0
	muls r5, r0, r5
	asrs r1, r1, #8
	adds r4, r1, #0
	muls r4, r0, r4
	lsls r4, r4, #1
	adds r6, r1, #0
	muls r6, r1, r6
	mov r0, r8
	lsls r2, r0, #4
	adds r0, r2, r7
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r3, r5, #0
	muls r3, r0, r3
	adds r0, r7, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r4, r0
	adds r3, r3, r0
	adds r0, r7, #4
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	muls r0, r6, r0
	adds r3, r3, r0
	adds r0, r7, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0xa
	adds r0, r2, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r4, r0
	adds r1, r1, r0
	adds r0, r7, #6
	adds r0, r2, r0
	movs r4, #0
	ldrsh r0, [r0, r4]
	muls r0, r6, r0
	adds r1, r1, r0
	adds r0, r7, #0
	adds r0, #0xc
	adds r0, r2, r0
	asrs r3, r3, #0x10
	ldrh r0, [r0]
	adds r3, r3, r0
	mov r5, sb
	strh r3, [r5, #0x10]
	ldr r0, _0814DB3C @ =gUnk_08387F7E
	adds r2, r2, r0
	asrs r1, r1, #0x10
	ldrh r2, [r2]
	adds r1, r1, r2
	strh r1, [r5, #0x12]
	mov r0, sb
	bl sub_0815604C
_0814DAFC:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #7
	bls _0814DA4E
	mov r0, sb
	bl sub_08155128
	cmp r0, #0
	bne _0814DB1A
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1, #0x1b]
_0814DB1A:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	cmp r0, #3
	bls _0814DA44
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DB38: .4byte gUnk_08387F70
_0814DB3C: .4byte gUnk_08387F7E

	thumb_func_start sub_0814DB40
sub_0814DB40: @ 0x0814DB40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r6, #0
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r1, r0, r1
	str r1, [sp]
	movs r1, #0x88
	lsls r1, r1, #2
	adds r1, r1, r0
	mov sl, r1
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sb, r1
	movs r1, #0x89
	lsls r1, r1, #2
	adds r1, r1, r0
	mov r8, r1
	movs r1, #0xd0
	lsls r1, r1, #1
	adds r1, r1, r0
	mov ip, r1
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r7, r0, r1
_0814DB7C:
	lsls r2, r6, #3
	ldr r0, [sp]
	adds r5, r0, r2
	mov r0, sl
	adds r1, r0, r2
	ldr r0, [r5]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r5]
	mov r1, sb
	adds r4, r1, r2
	mov r0, r8
	adds r1, r0, r2
	ldr r0, [r4]
	ldr r1, [r1]
	adds r0, r0, r1
	str r0, [r4]
	mov r1, ip
	adds r3, r1, r2
	ldr r0, [r3]
	ldr r1, [r5]
	adds r0, r0, r1
	str r0, [r3]
	adds r2, r7, r2
	ldr r0, [r2]
	ldr r1, [r4]
	adds r0, r0, r1
	str r0, [r2]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0814DB7C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814DBD0
sub_0814DBD0: @ 0x0814DBD0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r7, #0
	movs r1, #0x98
	lsls r1, r1, #2
	adds r1, r0, r1
	str r1, [sp]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r2, r0, r2
	str r2, [sp, #4]
	ldr r3, _0814DCB4 @ =gUnk_08387F70
	mov ip, r3
	movs r5, #0xd0
	lsls r5, r5, #1
	adds r5, r5, r0
	mov sl, r5
	movs r1, #0xd2
	lsls r1, r1, #1
	adds r1, r1, r0
	mov sb, r1
_0814DC02:
	lsls r0, r7, #2
	ldr r3, [sp]
	adds r2, r3, r0
	ldr r5, [sp, #4]
	adds r0, r5, r0
	ldr r1, [r2]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #9
	subs r0, r0, r1
	asrs r0, r0, #8
	adds r6, r0, #0
	muls r6, r0, r6
	asrs r1, r1, #8
	adds r3, r1, #0
	muls r3, r0, r3
	lsls r3, r3, #1
	adds r0, r1, #0
	muls r0, r1, r0
	mov r8, r0
	lsls r4, r7, #3
	mov r1, sl
	adds r1, r1, r4
	str r1, [sp, #8]
	lsls r2, r7, #4
	mov r5, ip
	adds r0, r2, r5
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #8
	adds r0, r2, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r3, r0
	adds r1, r1, r0
	mov r0, ip
	adds r0, #4
	adds r0, r2, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	ldr r0, [sp, #8]
	str r1, [r0]
	add r4, sb
	mov r0, ip
	adds r0, #2
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r1, r6, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0xa
	adds r0, r2, r0
	movs r5, #0
	ldrsh r0, [r0, r5]
	muls r0, r3, r0
	adds r1, r1, r0
	ldr r0, _0814DCB8 @ =gUnk_08387F76
	adds r2, r2, r0
	movs r3, #0
	ldrsh r0, [r2, r3]
	mov r5, r8
	muls r5, r0, r5
	adds r0, r5, #0
	adds r1, r1, r0
	str r1, [r4]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #7
	bls _0814DC02
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DCB4: .4byte gUnk_08387F70
_0814DCB8: .4byte gUnk_08387F76

	thumb_func_start sub_0814DCBC
sub_0814DCBC: @ 0x0814DCBC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	movs r2, #0
	ldr r0, _0814DD5C @ =sub_0814DD64
	mov sl, r0
	ldr r1, _0814DD60 @ =gUnk_08387F70
	mov r8, r1
	movs r0, #2
	add r0, r8
	mov sb, r0
_0814DCDA:
	lsls r6, r2, #3
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r4, r7, r1
	adds r4, r4, r6
	lsls r5, r2, #4
	mov r1, r8
	adds r0, r5, r1
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x78
	lsls r0, r0, #0x10
	movs r1, #0xf
	str r2, [sp]
	bl __divsi3
	str r0, [r4]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r7, r0
	adds r4, r4, r6
	add r5, sb
	movs r1, #0
	ldrsh r0, [r5, r1]
	subs r0, #0x50
	lsls r0, r0, #0x10
	movs r1, #0xf
	bl __divsi3
	str r0, [r4]
	ldr r2, [sp]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0814DCDA
	movs r0, #0
	strh r0, [r7, #4]
	mov r0, sl
	str r0, [r7]
	movs r4, #0
_0814DD2C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r7, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DD2C
	adds r0, r7, #0
	bl sub_0814D984
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DD5C: .4byte sub_0814DD64
_0814DD60: .4byte gUnk_08387F70

	thumb_func_start sub_0814DD64
sub_0814DD64: @ 0x0814DD64
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0814DD7A
	ldr r0, _0814DDD8 @ =sub_0814DDDC
	str r0, [r5]
_0814DD7A:
	adds r0, r5, #0
	bl sub_0814DB40
	movs r3, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r4, r5, r7
_0814DD8E:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r5, r1
	lsls r2, r3, #3
	adds r0, r6, r2
	movs r7, #2
	ldrsh r0, [r0, r7]
	strh r0, [r1, #0x1c]
	adds r2, r4, r2
	movs r7, #2
	ldrsh r0, [r2, r7]
	strh r0, [r1, #0x1e]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0814DD8E
	movs r4, #0
_0814DDB4:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DDB4
	adds r0, r5, #0
	bl sub_0814D984
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DDD8: .4byte sub_0814DDDC

	thumb_func_start sub_0814DDDC
sub_0814DDDC: @ 0x0814DDDC
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r2, #0
	ldr r7, _0814DE58 @ =sub_0814DE5C
	movs r0, #0xf0
	lsls r0, r0, #1
	adds r5, r6, r0
	adds r0, #4
	adds r4, r6, r0
	movs r3, #0
_0814DDF0:
	lsls r0, r2, #3
	adds r1, r5, r0
	adds r0, r4, r0
	str r3, [r0]
	str r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0814DDF0
	movs r0, #0
	strh r0, [r6, #4]
	str r7, [r6]
	movs r5, #0
_0814DE0C:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814DE28
	adds r0, r6, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814DE28:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0814DE0C
	movs r4, #0
_0814DE34:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DE34
	adds r0, r6, #0
	bl sub_0814D984
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DE58: .4byte sub_0814DE5C

	thumb_func_start sub_0814DE5C
sub_0814DE5C: @ 0x0814DE5C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0814DE70
	ldr r0, _0814DEC0 @ =sub_0814DEC4
	str r0, [r6]
_0814DE70:
	movs r5, #0
_0814DE72:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814DE8E
	adds r0, r6, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814DE8E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0814DE72
	movs r4, #0
_0814DE9A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DE9A
	adds r0, r6, #0
	bl sub_0814D984
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814DEC0: .4byte sub_0814DEC4

	thumb_func_start sub_0814DEC4
sub_0814DEC4: @ 0x0814DEC4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r1, #0
	ldr r4, _0814DF38 @ =sub_0814DF40
	movs r0, #0xa0
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r3, _0814DF3C @ =0x00000369
_0814DED4:
	lsls r0, r1, #2
	adds r0, r2, r0
	str r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #7
	bls _0814DED4
	movs r0, #0
	strh r0, [r6, #4]
	str r4, [r6]
	movs r5, #0
_0814DEEC:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814DF08
	adds r0, r6, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814DF08:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #7
	bls _0814DEEC
	movs r4, #0
_0814DF14:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r6, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DF14
	adds r0, r6, #0
	bl sub_0814D984
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814DF38: .4byte sub_0814DF40
_0814DF3C: .4byte 0x00000369

	thumb_func_start sub_0814DF40
sub_0814DF40: @ 0x0814DF40
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0814DBD0
	movs r3, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r4, r5, r7
_0814DF56:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r5, r1
	lsls r2, r3, #3
	adds r0, r6, r2
	movs r7, #2
	ldrsh r0, [r0, r7]
	strh r0, [r1, #0x1c]
	adds r2, r4, r2
	movs r7, #2
	ldrsh r0, [r2, r7]
	strh r0, [r1, #0x1e]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0814DF56
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0814DF9C
	ldr r1, [r5, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _0814DF94
	ldr r0, _0814DFF0 @ =sub_0814E270
	str r0, [r1, #8]
_0814DF94:
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _0814DFF4 @ =sub_0814DFF8
	str r0, [r5]
_0814DF9C:
	movs r6, #0
_0814DF9E:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814DFBA
	adds r0, r5, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814DFBA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0814DF9E
	adds r0, r5, #0
	bl sub_0814DA28
	movs r4, #0
_0814DFCC:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814DFCC
	adds r0, r5, #0
	bl sub_0814D984
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814DFF0: .4byte sub_0814E270
_0814DFF4: .4byte sub_0814DFF8

	thumb_func_start sub_0814DFF8
sub_0814DFF8: @ 0x0814DFF8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_0814DBD0
	movs r3, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r6, r5, r0
	movs r7, #0xd2
	lsls r7, r7, #1
	adds r4, r5, r7
_0814E00E:
	lsls r1, r3, #2
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r1, r5, r1
	lsls r2, r3, #3
	adds r0, r6, r2
	movs r7, #2
	ldrsh r0, [r0, r7]
	strh r0, [r1, #0x1c]
	adds r2, r4, r2
	movs r7, #2
	ldrsh r0, [r2, r7]
	strh r0, [r1, #0x1e]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _0814E00E
	ldrh r0, [r5, #4]
	adds r0, #1
	movs r2, #0
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _0814E05C
	ldr r0, [r5, #8]
	adds r1, r0, #0
	adds r1, #0xb4
	str r2, [r1]
	adds r0, #0xc4
	str r2, [r0]
	ldr r0, _0814E058 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0814E0AA
	.align 2, 0
_0814E058: .4byte gCurTask
_0814E05C:
	movs r6, #0
_0814E05E:
	lsls r0, r6, #2
	adds r0, r0, r6
	lsls r4, r0, #3
	adds r0, r4, #0
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_08155128
	cmp r0, #0
	bne _0814E07A
	adds r0, r5, r4
	adds r0, #0x27
	movs r1, #0xff
	strb r1, [r0]
_0814E07A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #7
	bls _0814E05E
	adds r0, r5, #0
	bl sub_0814DA28
	movs r4, #0
_0814E08C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814E08C
	adds r0, r5, #0
	bl sub_0814D984
_0814E0AA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start nullsub_12
nullsub_12: @ 0x0814E0B0
	bx lr
	.align 2, 0

	thumb_func_start sub_0814E0B4
sub_0814E0B4: @ 0x0814E0B4
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814AA50
	adds r0, r4, #0
	bl sub_0814AAF4
	ldr r0, _0814E0CC @ =sub_0814E0D0
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E0CC: .4byte sub_0814E0D0

	thumb_func_start sub_0814E0D0
sub_0814E0D0: @ 0x0814E0D0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814AB7C
	ldr r0, _0814E0E4 @ =sub_0814AC28
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E0E4: .4byte sub_0814AC28

	thumb_func_start sub_0814E0E8
sub_0814E0E8: @ 0x0814E0E8
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xc]
	adds r1, r0, #1
	strh r1, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _0814E0FE
	ldr r0, _0814E10C @ =sub_0814E110
	str r0, [r2, #8]
_0814E0FE:
	adds r0, r2, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E10C: .4byte sub_0814E110

	thumb_func_start sub_0814E110
sub_0814E110: @ 0x0814E110
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0x1a
	bl m4aSongNumStart
	ldr r0, _0814E12C @ =sub_0814E130
	str r0, [r4, #8]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E12C: .4byte sub_0814E130

	thumb_func_start sub_0814E130
sub_0814E130: @ 0x0814E130
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _0814E150
	ldr r0, _0814E160 @ =0x00000249
	bl m4aSongNumStart
	movs r0, #0
	strh r0, [r4, #0xc]
	ldr r0, _0814E164 @ =sub_0814E168
	str r0, [r4, #8]
_0814E150:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E160: .4byte 0x00000249
_0814E164: .4byte sub_0814E168

	thumb_func_start sub_0814E168
sub_0814E168: @ 0x0814E168
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #0xc]
	adds r0, #1
	strh r0, [r4, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _0814E17E
	ldr r0, _0814E194 @ =sub_0814AD44
	str r0, [r4, #8]
_0814E17E:
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E194: .4byte sub_0814AD44

	thumb_func_start sub_0814E198
sub_0814E198: @ 0x0814E198
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814E1B2
	adds r1, r4, #0
	adds r1, #0x2b
	movs r0, #0xff
	strb r0, [r1]
_0814E1B2:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814E1C0
sub_0814E1C0: @ 0x0814E1C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814E918
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xb4
	str r2, [r0]
	adds r3, r4, #0
	adds r3, #0xc4
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E1EA
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814E1F2
_0814E1EA:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814E1F2:
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r1, [r0]
	ldr r0, _0814E210 @ =sub_0814E5A8
	str r0, [r1, #4]
	ldr r0, _0814E214 @ =sub_0814E218
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E210: .4byte sub_0814E5A8
_0814E214: .4byte sub_0814E218

	thumb_func_start sub_0814E218
sub_0814E218: @ 0x0814E218
	push {lr}
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0

	thumb_func_start sub_0814E224
sub_0814E224: @ 0x0814E224
	push {lr}
	movs r1, #0
	strh r1, [r0, #0xc]
	ldr r1, _0814E238 @ =sub_0814E23C
	str r1, [r0, #8]
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E238: .4byte sub_0814E23C

	thumb_func_start sub_0814E23C
sub_0814E23C: @ 0x0814E23C
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0xc]
	adds r0, #1
	strh r0, [r1, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x59
	ble _0814E252
	ldr r0, _0814E260 @ =sub_0814AE78
	str r0, [r1, #8]
_0814E252:
	adds r0, r1, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E260: .4byte sub_0814AE78

	thumb_func_start sub_0814E264
sub_0814E264: @ 0x0814E264
	push {lr}
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0

	thumb_func_start sub_0814E270
sub_0814E270: @ 0x0814E270
	push {lr}
	ldr r1, _0814E280 @ =sub_0814E284
	str r1, [r0, #8]
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E280: .4byte sub_0814E284

	thumb_func_start sub_0814E284
sub_0814E284: @ 0x0814E284
	push {lr}
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0

	thumb_func_start sub_0814E290
sub_0814E290: @ 0x0814E290
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0814E304 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	movs r5, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0814E308 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r0, [r4, #4]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r4, #4]
	ldr r0, _0814E30C @ =gUnk_030016A0
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _0814E310 @ =gUnk_030016E0
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _0814E314 @ =gUnk_03001720
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _0814E318 @ =gUnk_03001770
	movs r1, #2
	bl m4aMPlayFadeOut
	strh r5, [r4, #0xc]
	ldr r0, _0814E31C @ =sub_0814E320
	str r0, [r4, #8]
	adds r4, #0x10
	adds r0, r4, #0
	bl sub_0815604C
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814E304: .4byte 0x00007FFF
_0814E308: .4byte 0x0000FFFF
_0814E30C: .4byte gUnk_030016A0
_0814E310: .4byte gUnk_030016E0
_0814E314: .4byte gUnk_03001720
_0814E318: .4byte gUnk_03001770
_0814E31C: .4byte sub_0814E320

	thumb_func_start sub_0814E320
sub_0814E320: @ 0x0814E320
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xc]
	adds r1, r0, #1
	strh r1, [r2, #0xc]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x20
	ble _0814E336
	ldr r0, _0814E344 @ =sub_0814E348
	str r0, [r2, #8]
_0814E336:
	adds r0, r2, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E344: .4byte sub_0814E348

	thumb_func_start sub_0814E348
sub_0814E348: @ 0x0814E348
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r2, _0814E364 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _0814E368 @ =sub_0814E36C
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E364: .4byte gUnk_03002440
_0814E368: .4byte sub_0814E36C

	thumb_func_start sub_0814E36C
sub_0814E36C: @ 0x0814E36C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0814E388 @ =gUnk_089331AC
	ldr r1, _0814E38C @ =0x00007D28
	adds r0, r0, r1
	ldrh r0, [r0]
	bl m4aSongNumStart
	ldr r0, _0814E390 @ =sub_0814AF04
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E388: .4byte gUnk_089331AC
_0814E38C: .4byte 0x00007D28
_0814E390: .4byte sub_0814AF04

	thumb_func_start sub_0814E394
sub_0814E394: @ 0x0814E394
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r0, _0814E3C8 @ =sub_0814E408
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0814E3CC @ =nullsub_135
	str r1, [sp]
	movs r1, #0x78
	movs r3, #4
	bl TaskCreate
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E3D0
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814E3D8
	.align 2, 0
_0814E3C8: .4byte sub_0814E408
_0814E3CC: .4byte nullsub_135
_0814E3D0:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814E3D8:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814E3FC @ =0x0100003C
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814E400 @ =sub_0814E43C
	str r0, [r4, #4]
	strb r6, [r4]
	str r7, [r4, #0xc]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814E3FC: .4byte 0x0100003C
_0814E400: .4byte sub_0814E43C

	thumb_func_start nullsub_135
nullsub_135: @ 0x0814E404
	bx lr
	.align 2, 0

	thumb_func_start sub_0814E408
sub_0814E408: @ 0x0814E408
	push {lr}
	ldr r0, _0814E424 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E428
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814E430
	.align 2, 0
_0814E424: .4byte gCurTask
_0814E428:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814E430:
	ldr r1, [r0, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814E43C
sub_0814E43C: @ 0x0814E43C
	push {lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0
	bne _0814E45C
	movs r0, #0x84
	lsls r0, r0, #0x10
	str r0, [r1, #0x60]
	movs r0, #0xa0
	lsls r0, r0, #0xf
	str r0, [r1, #0x64]
	ldr r0, _0814E458 @ =sub_0814B368
	b _0814E46A
	.align 2, 0
_0814E458: .4byte sub_0814B368
_0814E45C:
	movs r0, #0xc8
	lsls r0, r0, #0xf
	str r0, [r1, #0x60]
	movs r0, #0x90
	lsls r0, r0, #0xf
	str r0, [r1, #0x64]
	ldr r0, _0814E478 @ =sub_0814C674
_0814E46A:
	str r0, [r1, #4]
	adds r0, r1, #0
	bl sub_0814B024
	pop {r0}
	bx r0
	.align 2, 0
_0814E478: .4byte sub_0814C674

	thumb_func_start sub_0814E47C
sub_0814E47C: @ 0x0814E47C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0814E492
	ldr r0, _0814E4A8 @ =sub_0814B784
	str r0, [r4, #4]
_0814E492:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E4A8: .4byte sub_0814B784

	thumb_func_start sub_0814E4AC
sub_0814E4AC: @ 0x0814E4AC
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E4C4
sub_0814E4C4: @ 0x0814E4C4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E4DC
sub_0814E4DC: @ 0x0814E4DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _0814E4FC @ =sub_0814E500
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E4FC: .4byte sub_0814E500

	thumb_func_start sub_0814E500
sub_0814E500: @ 0x0814E500
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E518
sub_0814E518: @ 0x0814E518
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	ble _0814E52E
	ldr r0, _0814E544 @ =sub_0814E548
	str r0, [r4, #4]
_0814E52E:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E544: .4byte sub_0814E548

	thumb_func_start sub_0814E548
sub_0814E548: @ 0x0814E548
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r5, r6, #0
	adds r5, #0x10
	ldr r0, [r5, #8]
	movs r4, #0x80
	lsls r4, r4, #3
	eors r0, r4
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08155128
	adds r5, #0x28
	ldr r0, [r5, #8]
	eors r0, r4
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08155128
	movs r0, #0
	strh r0, [r6, #8]
	ldr r0, _0814E58C @ =sub_0814E590
	str r0, [r6, #4]
	adds r0, r6, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814E58C: .4byte sub_0814E590

	thumb_func_start sub_0814E590
sub_0814E590: @ 0x0814E590
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E5A8
sub_0814E5A8: @ 0x0814E5A8
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0814E5CC @ =sub_0814E5D0
	str r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E5CC: .4byte sub_0814E5D0

	thumb_func_start sub_0814E5D0
sub_0814E5D0: @ 0x0814E5D0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x4a
	ble _0814E5E6
	ldr r0, _0814E5FC @ =sub_0814B95C
	str r0, [r4, #4]
_0814E5E6:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E5FC: .4byte sub_0814B95C

	thumb_func_start sub_0814E600
sub_0814E600: @ 0x0814E600
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0814E616
	ldr r0, _0814E62C @ =sub_0814C424
	str r0, [r4, #4]
_0814E616:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E62C: .4byte sub_0814C424

	thumb_func_start sub_0814E630
sub_0814E630: @ 0x0814E630
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x59
	ble _0814E646
	ldr r0, _0814E65C @ =sub_0814C478
	str r0, [r4, #4]
_0814E646:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E65C: .4byte sub_0814C478

	thumb_func_start sub_0814E660
sub_0814E660: @ 0x0814E660
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0814E676
	ldr r0, _0814E68C @ =sub_0814C5EC
	str r0, [r4, #4]
_0814E676:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E68C: .4byte sub_0814C5EC

	thumb_func_start sub_0814E690
sub_0814E690: @ 0x0814E690
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	movs r3, #0
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	ble _0814E6DC
	ldr r2, [r4, #0xc]
	ldr r0, [r2, #4]
	adds r1, r2, #0
	cmp r0, #0
	blt _0814E6B2
	ldr r0, _0814E6D4 @ =sub_0814EA74
	str r0, [r1, #8]
_0814E6B2:
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0xa8
	adds r0, r0, r1
	str r3, [r0]
	ldrb r1, [r4]
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0xb8
	adds r0, r0, r1
	str r3, [r0]
	ldr r0, _0814E6D8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0814E6FA
	.align 2, 0
_0814E6D4: .4byte sub_0814EA74
_0814E6D8: .4byte gCurTask
_0814E6DC:
	adds r5, r4, #0
	adds r5, #0x10
	adds r0, r5, #0
	bl sub_08155128
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
_0814E6FA:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E700
sub_0814E700: @ 0x0814E700
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _0814E716
	ldr r0, _0814E72C @ =sub_0814CB0C
	str r0, [r4, #4]
_0814E716:
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r0, r4, #0
	adds r0, #0x38
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E72C: .4byte sub_0814CB0C

	thumb_func_start sub_0814E730
sub_0814E730: @ 0x0814E730
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x10
	bl sub_0815604C
	adds r4, #0x38
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E748
sub_0814E748: @ 0x0814E748
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r3, [r4, #0xc]
	adds r5, r3, #0
	adds r5, #0x38
	ldr r1, _0814E7A0 @ =gBldRegs
	movs r2, #0
	strh r2, [r1]
	movs r0, #0x10
	strh r0, [r1, #2]
	strh r2, [r1, #4]
	ldr r0, [r3, #4]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #4]
	ldrb r0, [r4, #1]
	adds r0, #1
	strb r0, [r4, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0814E780
	movs r0, #0
	strb r0, [r4, #1]
	ldr r0, _0814E7A4 @ =0x0000024A
	bl m4aSongNumStart
_0814E780:
	ldr r0, _0814E7A8 @ =sub_0814E7AC
	str r0, [r4, #4]
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814E792
	movs r0, #0xff
	strb r0, [r5, #0x1b]
_0814E792:
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814E7A0: .4byte gBldRegs
_0814E7A4: .4byte 0x0000024A
_0814E7A8: .4byte sub_0814E7AC

	thumb_func_start sub_0814E7AC
sub_0814E7AC: @ 0x0814E7AC
	push {r4, lr}
	adds r1, r0, #0
	ldr r0, [r1, #0xc]
	adds r4, r0, #0
	adds r4, #0x38
	movs r0, #0
	strh r0, [r1, #8]
	ldr r0, _0814E7F0 @ =sub_0814CEAC
	str r0, [r1, #4]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #7
	ble _0814E7D6
	movs r0, #0
	strb r0, [r1, #1]
	ldr r0, _0814E7F4 @ =0x0000024A
	bl m4aSongNumStart
_0814E7D6:
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814E7E4
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0814E7E4:
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814E7F0: .4byte sub_0814CEAC
_0814E7F4: .4byte 0x0000024A

	thumb_func_start sub_0814E7F8
sub_0814E7F8: @ 0x0814E7F8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	str r6, [r4, #0x3c]
	str r6, [r4, #0x48]
	str r6, [r4, #0x40]
	adds r5, r4, #0
	adds r5, #0xc
	ldr r1, _0814E82C @ =gUnk_08387F3C
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	ldrh r0, [r1, #2]
	strb r0, [r5, #0x1a]
	adds r0, r5, #0
	bl sub_08155128
	strh r6, [r4, #4]
	ldr r0, _0814E830 @ =sub_0814E834
	str r0, [r4]
	adds r0, r5, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814E82C: .4byte gUnk_08387F3C
_0814E830: .4byte sub_0814E834

	thumb_func_start sub_0814E834
sub_0814E834: @ 0x0814E834
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0814E84A
	ldr r0, _0814E858 @ =sub_0814D618
	str r0, [r1]
_0814E84A:
	adds r0, r1, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E858: .4byte sub_0814D618

	thumb_func_start sub_0814E85C
sub_0814E85C: @ 0x0814E85C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0xc
	ldr r1, _0814E888 @ =gUnk_08387F3C
	ldrh r0, [r1, #4]
	movs r6, #0
	strh r0, [r4, #0xc]
	ldrh r0, [r1, #6]
	strb r0, [r4, #0x1a]
	adds r0, r4, #0
	bl sub_08155128
	strh r6, [r5, #4]
	ldr r0, _0814E88C @ =sub_0814E890
	str r0, [r5]
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814E888: .4byte gUnk_08387F3C
_0814E88C: .4byte sub_0814E890

	thumb_func_start sub_0814E890
sub_0814E890: @ 0x0814E890
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _0814E8A6
	ldr r0, _0814E8B4 @ =sub_0814E8B8
	str r0, [r1]
_0814E8A6:
	adds r0, r1, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_0814E8B4: .4byte sub_0814E8B8

	thumb_func_start sub_0814E8B8
sub_0814E8B8: @ 0x0814E8B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0xc
	ldr r1, _0814E8F4 @ =gUnk_08387F3C
	ldrh r0, [r1, #0x28]
	movs r4, #0
	strh r0, [r6, #0xc]
	ldrh r0, [r1, #0x2a]
	strb r0, [r6, #0x1a]
	adds r0, r6, #0
	bl sub_08155128
	str r4, [r5, #0x44]
	str r4, [r5, #0x3c]
	ldr r1, [r5, #8]
	ldr r0, [r1, #4]
	cmp r0, #0
	blt _0814E8E2
	ldr r0, _0814E8F8 @ =sub_0814E290
	str r0, [r1, #8]
_0814E8E2:
	ldr r0, _0814E8FC @ =sub_0814E900
	str r0, [r5]
	adds r0, r6, #0
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814E8F4: .4byte gUnk_08387F3C
_0814E8F8: .4byte sub_0814E290
_0814E8FC: .4byte sub_0814E900

	thumb_func_start sub_0814E900
sub_0814E900: @ 0x0814E900
	push {r4, lr}
	adds r4, r0, #0
	adds r4, #0xc
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814E918
sub_0814E918: @ 0x0814E918
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0814E94C @ =sub_0814E988
	movs r1, #0xa8
	lsls r1, r1, #2
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r3, _0814E950 @ =nullsub_136
	str r3, [sp]
	movs r3, #4
	bl TaskCreate
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E954
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814E95C
	.align 2, 0
_0814E94C: .4byte sub_0814E988
_0814E950: .4byte nullsub_136
_0814E954:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814E95C:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814E97C @ =0x01000150
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814E980 @ =sub_0814E9BC
	str r0, [r4]
	str r6, [r4, #8]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0814E97C: .4byte 0x01000150
_0814E980: .4byte sub_0814E9BC

	thumb_func_start nullsub_136
nullsub_136: @ 0x0814E984
	bx lr
	.align 2, 0

	thumb_func_start sub_0814E988
sub_0814E988: @ 0x0814E988
	push {lr}
	ldr r0, _0814E9A4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814E9A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814E9B0
	.align 2, 0
_0814E9A4: .4byte gCurTask
_0814E9A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814E9B0:
	ldr r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814E9BC
sub_0814E9BC: @ 0x0814E9BC
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	bl sub_0814D75C
	movs r2, #0
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r5, r4, r0
	movs r7, #0xf0
	lsls r7, r7, #0xf
	adds r0, #4
	adds r3, r4, r0
	movs r6, #0xa0
	lsls r6, r6, #0xf
_0814E9D8:
	lsls r1, r2, #3
	adds r0, r5, r1
	str r7, [r0]
	adds r1, r3, r1
	str r6, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _0814E9D8
	ldr r0, _0814E9F8 @ =nullsub_137
	str r0, [r4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814E9F8: .4byte nullsub_137

	thumb_func_start nullsub_137
nullsub_137: @ 0x0814E9FC
	bx lr
	.align 2, 0

	thumb_func_start sub_0814EA00
sub_0814EA00: @ 0x0814EA00
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _0814EA34 @ =sub_0814EA3C
	str r0, [r5]
	ldr r0, _0814EA38 @ =0x0000024D
	bl m4aSongNumStart
	movs r4, #0
_0814EA14:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814EA14
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814EA34: .4byte sub_0814EA3C
_0814EA38: .4byte 0x0000024D

	thumb_func_start sub_0814EA3C
sub_0814EA3C: @ 0x0814EA3C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0814EA50
	ldr r0, _0814EA70 @ =sub_0814DEC4
	str r0, [r5]
_0814EA50:
	movs r4, #0
_0814EA52:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0xc
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814EA52
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814EA70: .4byte sub_0814DEC4

	thumb_func_start sub_0814EA74
sub_0814EA74: @ 0x0814EA74
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814EACC
	adds r2, r0, #0
	adds r0, r4, #0
	adds r0, #0xb0
	str r2, [r0]
	adds r3, r4, #0
	adds r3, #0xc0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814EA9E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814EAA6
_0814EA9E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814EAA6:
	str r0, [r3]
	ldr r0, _0814EABC @ =sub_0814EAC0
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x10
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814EABC: .4byte sub_0814EAC0

	thumb_func_start sub_0814EAC0
sub_0814EAC0: @ 0x0814EAC0
	push {lr}
	adds r0, #0x10
	bl sub_0815604C
	pop {r0}
	bx r0

	thumb_func_start sub_0814EACC
sub_0814EACC: @ 0x0814EACC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	ldr r0, _0814EAFC @ =sub_0814EB38
	movs r2, #0x80
	lsls r2, r2, #6
	ldr r1, _0814EB00 @ =nullsub_138
	str r1, [sp]
	movs r1, #0x4c
	movs r3, #4
	bl TaskCreate
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814EB04
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814EB0C
	.align 2, 0
_0814EAFC: .4byte sub_0814EB38
_0814EB00: .4byte nullsub_138
_0814EB04:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814EB0C:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814EB2C @ =0x01000026
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814EB30 @ =sub_0814EB6C
	str r0, [r4]
	str r6, [r4, #8]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0814EB2C: .4byte 0x01000026
_0814EB30: .4byte sub_0814EB6C

	thumb_func_start nullsub_138
nullsub_138: @ 0x0814EB34
	bx lr
	.align 2, 0

	thumb_func_start sub_0814EB38
sub_0814EB38: @ 0x0814EB38
	push {lr}
	ldr r0, _0814EB54 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814EB58
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814EB60
	.align 2, 0
_0814EB54: .4byte gCurTask
_0814EB58:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814EB60:
	ldr r1, [r0]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814EB6C
sub_0814EB6C: @ 0x0814EB6C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0814CF34
	ldr r0, _0814EB80 @ =sub_0814EB84
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814EB80: .4byte sub_0814EB84

	thumb_func_start sub_0814EB84
sub_0814EB84: @ 0x0814EB84
	movs r1, #0
	strh r1, [r0, #4]
	ldr r1, _0814EB90 @ =sub_0814EB94
	str r1, [r0]
	bx lr
	.align 2, 0
_0814EB90: .4byte sub_0814EB94

	thumb_func_start sub_0814EB94
sub_0814EB94: @ 0x0814EB94
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _0814EBAA
	ldr r0, _0814EBB0 @ =sub_0814EBB4
	str r0, [r1]
_0814EBAA:
	pop {r0}
	bx r0
	.align 2, 0
_0814EBB0: .4byte sub_0814EBB4

	thumb_func_start sub_0814EBB4
sub_0814EBB4: @ 0x0814EBB4
	movs r1, #0xa0
	lsls r1, r1, #0xd
	str r1, [r0, #0x34]
	movs r1, #0xc0
	lsls r1, r1, #8
	str r1, [r0, #0x3c]
	movs r2, #0
	str r2, [r0, #0x44]
	ldr r1, _0814EBDC @ =0xFFEC0000
	str r1, [r0, #0x38]
	movs r1, #0x80
	lsls r1, r1, #5
	str r1, [r0, #0x40]
	movs r1, #0x98
	lsls r1, r1, #6
	str r1, [r0, #0x48]
	strh r2, [r0, #4]
	ldr r1, _0814EBE0 @ =sub_0814D034
	str r1, [r0]
	bx lr
	.align 2, 0
_0814EBDC: .4byte 0xFFEC0000
_0814EBE0: .4byte sub_0814D034

	thumb_func_start sub_0814EBE4
sub_0814EBE4: @ 0x0814EBE4
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r1, _0814EC5C @ =gDispCnt
	movs r2, #0xd0
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0814EC60 @ =gBgCntRegs
	ldr r0, _0814EC64 @ =0x00001F02
	strh r0, [r1]
	subs r0, #0xfb
	strh r0, [r1, #2]
	subs r0, #0xff
	strh r0, [r1, #4]
	subs r0, #0xff
	strh r0, [r1, #6]
	movs r2, #0
	ldr r5, _0814EC68 @ =gBldRegs
	ldr r0, _0814EC6C @ =sub_0814EF9C
	mov ip, r0
	ldr r7, _0814EC70 @ =nullsub_139
	ldr r4, _0814EC74 @ =gBgScrollRegs
	adds r6, r4, #2
	movs r3, #0
_0814EC14:
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r0, r0, r6
	strh r3, [r0]
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0814EC14
	movs r1, #0
	movs r0, #0xbf
	strh r0, [r5]
	strh r1, [r5, #2]
	movs r4, #0x10
	strh r4, [r5, #4]
	movs r2, #0x80
	lsls r2, r2, #5
	str r7, [sp]
	mov r0, ip
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _0814EC78
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0814EC80
	.align 2, 0
_0814EC5C: .4byte gDispCnt
_0814EC60: .4byte gBgCntRegs
_0814EC64: .4byte 0x00001F02
_0814EC68: .4byte gBldRegs
_0814EC6C: .4byte sub_0814EF9C
_0814EC70: .4byte nullsub_139
_0814EC74: .4byte gBgScrollRegs
_0814EC78:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0814EC80:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0814EC9C @ =0x01000006
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0814ECA0 @ =sub_0814ECA4
	str r0, [r4, #4]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814EC9C: .4byte 0x01000006
_0814ECA0: .4byte sub_0814ECA4

	thumb_func_start sub_0814ECA4
sub_0814ECA4: @ 0x0814ECA4
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	bl sub_08141E30
	ldr r0, _0814ECD0 @ =gUnk_0203AD3C
	ldr r1, _0814ECD4 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0814ED68
	ldr r2, _0814ECD8 @ =gUnk_0203ACB0
	ldr r0, _0814ECDC @ =gUnk_0203AD48
	ldrh r1, [r0]
	adds r3, r0, #0
	cmp r1, #2
	bhi _0814ECE0
	ldrh r0, [r3]
	lsls r0, r0, #1
	b _0814ECE2
	.align 2, 0
_0814ECD0: .4byte gUnk_0203AD3C
_0814ECD4: .4byte gUnk_0203AD24
_0814ECD8: .4byte gUnk_0203ACB0
_0814ECDC: .4byte gUnk_0203AD48
_0814ECE0:
	movs r0, #0
_0814ECE2:
	adds r0, r2, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0x64
	bne _0814ED68
	ldr r2, _0814ED30 @ =gUnk_0203AD2C
	ldrh r1, [r2]
	ldr r0, _0814ED34 @ =0x0000270F
	cmp r1, r0
	bhi _0814ED68
	ldr r1, _0814ED38 @ =0x00002710
	adds r0, r1, #0
	strh r0, [r2]
	ldr r0, _0814ED3C @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0814ED60
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0814ED50
	ldr r0, _0814ED40 @ =gUnk_0203AD3C
	ldr r1, _0814ED44 @ =gUnk_0203AD24
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0814ED48
	ldrh r0, [r3]
	movs r1, #0
	cmp r0, #2
	bhi _0814ED26
	adds r1, r0, #0
_0814ED26:
	movs r0, #1
	bl sub_0800ACD4
	b _0814ED60
	.align 2, 0
_0814ED30: .4byte gUnk_0203AD2C
_0814ED34: .4byte 0x0000270F
_0814ED38: .4byte 0x00002710
_0814ED3C: .4byte gUnk_0203AD10
_0814ED40: .4byte gUnk_0203AD3C
_0814ED44: .4byte gUnk_0203AD24
_0814ED48:
	movs r0, #8
	bl sub_08031CE4
	b _0814ED60
_0814ED50:
	ldrh r0, [r3]
	movs r1, #0
	cmp r0, #2
	bhi _0814ED5A
	adds r1, r0, #0
_0814ED5A:
	movs r0, #1
	bl sub_0800ACD4
_0814ED60:
	ldr r0, _0814ED64 @ =sub_0814ED78
	b _0814ED6A
	.align 2, 0
_0814ED64: .4byte sub_0814ED78
_0814ED68:
	ldr r0, _0814ED74 @ =sub_0814F20C
_0814ED6A:
	str r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814ED74: .4byte sub_0814F20C

	thumb_func_start sub_0814ED78
sub_0814ED78: @ 0x0814ED78
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	movs r4, #0
_0814ED82:
	adds r0, r4, #0
	bl sub_0814EFD8
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _0814ED82
	movs r4, #0
_0814ED94:
	adds r0, r4, #0
	bl sub_0814F000
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _0814ED94
	ldr r4, _0814EEBC @ =gUnk_08387FF0
	ldr r5, _0814EEC0 @ =gUnk_08D60A80
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #0
	movs r2, #0
	movs r3, #0
	bl sub_0814F034
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r1, r4, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	movs r2, #0
	movs r3, #0
	bl sub_0814F034
	ldrh r0, [r5]
	lsls r0, r0, #3
	adds r4, #4
	adds r0, r0, r4
	ldrh r0, [r0]
	ldr r1, _0814EEC4 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814EEC8 @ =gBgCntRegs
	ldrh r2, [r1, #4]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r6, r2, r3
	lsls r1, r1, #0xe
	adds r1, r1, r3
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814EE2A
_0814EE0E:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0814EE0E
_0814EE2A:
	ldr r1, _0814EEBC @ =gUnk_08387FF0
	ldr r0, _0814EEC0 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _0814EEC4 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r7, [r1, #0x18]
	ldrh r5, [r1, #2]
	ldr r1, _0814EEC8 @ =gBgCntRegs
	ldrh r2, [r1, #6]
	lsls r2, r2, #0x10
	lsrs r1, r2, #0x12
	movs r3, #3
	ands r1, r3
	lsrs r2, r2, #0x18
	movs r3, #0x1f
	ands r2, r3
	lsls r2, r2, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r6, r2, r3
	lsls r1, r1, #0xe
	ldr r2, _0814EECC @ =0x06002000
	adds r1, r1, r2
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r5
	bhs _0814EE8C
_0814EE70:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	adds r0, r7, r0
	lsls r1, r4, #6
	adds r1, r6, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r5
	blo _0814EE70
_0814EE8C:
	ldr r1, _0814EEBC @ =gUnk_08387FF0
	ldr r0, _0814EEC0 @ =gUnk_08D60A80
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r1, #2
	adds r0, r0, r1
	ldrh r4, [r0]
	ldr r5, _0814EED0 @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0814EED4
	ldr r1, _0814EEC4 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x20
	bl sub_08158334
	b _0814EEF2
	.align 2, 0
_0814EEBC: .4byte gUnk_08387FF0
_0814EEC0: .4byte gUnk_08D60A80
_0814EEC4: .4byte gUnk_082D7850
_0814EEC8: .4byte gBgCntRegs
_0814EECC: .4byte 0x06002000
_0814EED0: .4byte gUnk_03002440
_0814EED4:
	ldr r2, _0814EF08 @ =0x040000D4
	ldr r1, _0814EF0C @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _0814EF10 @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _0814EF14 @ =0x80000020
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_0814EEF2:
	movs r0, #0
	mov r1, r8
	strh r0, [r1, #8]
	ldr r0, _0814EF18 @ =sub_0814F0B8
	str r0, [r1, #4]
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814EF08: .4byte 0x040000D4
_0814EF0C: .4byte gUnk_082D7850
_0814EF10: .4byte gBgPalette
_0814EF14: .4byte 0x80000020
_0814EF18: .4byte sub_0814F0B8

	thumb_func_start sub_0814EF1C
sub_0814EF1C: @ 0x0814EF1C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r0, [r6, #8]
	adds r0, #1
	strh r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0814EF60
	ldr r5, _0814EF80 @ =gRngVal
	ldr r0, [r5]
	ldr r4, _0814EF84 @ =0x00196225
	muls r0, r4, r0
	ldr r2, _0814EF88 @ =0x3C6EF35F
	adds r0, r0, r2
	movs r3, #7
	adds r1, r0, #0
	ands r1, r3
	subs r1, #3
	muls r0, r4, r0
	adds r0, r0, r2
	str r0, [r5]
	ands r0, r3
	subs r0, #3
	ldr r2, _0814EF8C @ =gBgScrollRegs
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	strh r1, [r2, #0xc]
	strh r1, [r2, #8]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #0xc
	strh r0, [r2, #0xe]
	strh r0, [r2, #0xa]
_0814EF60:
	movs r1, #8
	ldrsh r0, [r6, r1]
	cmp r0, #0x2c
	ble _0814EF78
	ldr r1, _0814EF8C @ =gBgScrollRegs
	ldr r0, _0814EF90 @ =0x0000FFF4
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xa]
	movs r0, #0
	strh r0, [r6, #8]
	ldr r0, _0814EF94 @ =sub_0814F164
	str r0, [r6, #4]
_0814EF78:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814EF80: .4byte gRngVal
_0814EF84: .4byte 0x00196225
_0814EF88: .4byte 0x3C6EF35F
_0814EF8C: .4byte gBgScrollRegs
_0814EF90: .4byte 0x0000FFF4
_0814EF94: .4byte sub_0814F164

	thumb_func_start nullsub_139
nullsub_139: @ 0x0814EF98
	bx lr
	.align 2, 0

	thumb_func_start sub_0814EF9C
sub_0814EF9C: @ 0x0814EF9C
	push {lr}
	ldr r0, _0814EFB8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814EFBC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0814EFC4
	.align 2, 0
_0814EFB8: .4byte gCurTask
_0814EFBC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0814EFC4:
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	ldr r1, [r2, #4]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0814EFD8
sub_0814EFD8: @ 0x0814EFD8
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	lsrs r1, r1, #0xa
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _0814EFFC @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814EFFC: .4byte 0x01002000

	thumb_func_start sub_0814F000
sub_0814F000: @ 0x0814F000
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _0814F02C @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _0814F030 @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0814F02C: .4byte 0x000001FF
_0814F030: .4byte 0x01000400

	thumb_func_start sub_0814F034
sub_0814F034: @ 0x0814F034
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x10
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	ldr r4, _0814F0B0 @ =gUnk_082D7850
	lsrs r1, r1, #0xe
	adds r1, r1, r4
	ldr r1, [r1]
	ldr r5, [r1, #8]
	ldr r4, [r1, #0x18]
	mov r8, r4
	ldrh r6, [r1, #2]
	ldr r1, _0814F0B4 @ =gBgCntRegs
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x12
	movs r4, #3
	ands r1, r4
	lsrs r0, r0, #0x18
	movs r4, #0x1f
	ands r0, r4
	lsls r0, r0, #0xb
	lsrs r2, r2, #0x13
	lsls r2, r2, #6
	movs r4, #0xc0
	lsls r4, r4, #0x13
	adds r2, r2, r4
	adds r7, r0, r2
	lsls r1, r1, #0xe
	lsrs r3, r3, #0xb
	adds r3, r3, r4
	adds r1, r1, r3
	adds r0, r5, #0
	bl LZ77UnCompVram
	movs r4, #0
	cmp r4, r6
	bhs _0814F0A6
_0814F08A:
	lsls r0, r4, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	add r0, r8
	lsls r1, r4, #6
	adds r1, r7, r1
	movs r2, #0x1e
	bl CpuSet
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r6
	blo _0814F08A
_0814F0A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814F0B0: .4byte gUnk_082D7850
_0814F0B4: .4byte gBgCntRegs

	thumb_func_start sub_0814F0B8
sub_0814F0B8: @ 0x0814F0B8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r4, [r5, #8]
	adds r4, #1
	movs r7, #0
	strh r4, [r5, #8]
	ldr r6, _0814F0F8 @ =gBldRegs
	movs r1, #8
	ldrsh r0, [r5, r1]
	lsls r0, r0, #4
	movs r1, #0x14
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r6, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x13
	ble _0814F0F2
	movs r0, #0x22
	bl m4aSongNumStart
	strh r7, [r6, #4]
	strh r7, [r6, #2]
	strh r7, [r6]
	strh r7, [r5, #8]
	ldr r0, _0814F0FC @ =sub_0814F100
	str r0, [r5, #4]
_0814F0F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814F0F8: .4byte gBldRegs
_0814F0FC: .4byte sub_0814F100

	thumb_func_start sub_0814F100
sub_0814F100: @ 0x0814F100
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #8]
	adds r0, #1
	strh r0, [r1, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xef
	ble _0814F11A
	movs r0, #0
	strh r0, [r1, #8]
	ldr r0, _0814F120 @ =sub_0814F124
	str r0, [r1, #4]
_0814F11A:
	pop {r0}
	bx r0
	.align 2, 0
_0814F120: .4byte sub_0814F124

	thumb_func_start sub_0814F124
sub_0814F124: @ 0x0814F124
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _0814F154 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0xc0
	lsls r3, r3, #4
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _0814F158 @ =gBgScrollRegs
	movs r4, #0
	ldr r0, _0814F15C @ =0x0000FFF4
	strh r0, [r1, #0xe]
	strh r0, [r1, #0xa]
	movs r0, #0xc8
	bl m4aSongNumStart
	strh r4, [r5, #8]
	ldr r0, _0814F160 @ =sub_0814EF1C
	str r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814F154: .4byte gDispCnt
_0814F158: .4byte gBgScrollRegs
_0814F15C: .4byte 0x0000FFF4
_0814F160: .4byte sub_0814EF1C

	thumb_func_start sub_0814F164
sub_0814F164: @ 0x0814F164
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x27
	ble _0814F186
	movs r0, #0x8b
	lsls r0, r0, #2
	bl m4aSongNumStart
	movs r0, #0
	strh r0, [r4, #8]
	ldr r0, _0814F18C @ =sub_0814F190
	str r0, [r4, #4]
_0814F186:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0814F18C: .4byte sub_0814F190

	thumb_func_start sub_0814F190
sub_0814F190: @ 0x0814F190
	push {lr}
	adds r2, r0, #0
	ldr r0, _0814F1CC @ =gPressedKeys
	ldrh r0, [r0]
	movs r1, #0xb
	ands r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r1, r0, #0x1f
	ldrh r0, [r2, #8]
	adds r0, #1
	movs r3, #0
	strh r0, [r2, #8]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xb3
	ble _0814F1C6
	cmp r1, #0
	beq _0814F1C6
	ldr r0, _0814F1D0 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r2, #8]
	ldr r0, _0814F1D4 @ =sub_0814F1D8
	str r0, [r2, #4]
_0814F1C6:
	pop {r0}
	bx r0
	.align 2, 0
_0814F1CC: .4byte gPressedKeys
_0814F1D0: .4byte gBldRegs
_0814F1D4: .4byte sub_0814F1D8

	thumb_func_start sub_0814F1D8
sub_0814F1D8: @ 0x0814F1D8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #8]
	adds r4, #1
	strh r4, [r6, #8]
	ldr r5, _0814F204 @ =gBldRegs
	movs r1, #8
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0x28
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x27
	ble _0814F1FE
	ldr r0, _0814F208 @ =sub_0814F20C
	str r0, [r6, #4]
_0814F1FE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814F204: .4byte gBldRegs
_0814F208: .4byte sub_0814F20C

	thumb_func_start sub_0814F20C
sub_0814F20C: @ 0x0814F20C
	push {r4, r5, lr}
	sub sp, #4
	bl m4aMPlayAllStop
	mov r0, sp
	ldr r1, _0814F258 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _0814F25C @ =gBgPalette
	ldr r5, _0814F260 @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _0814F264 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _0814F268 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0814F26C @ =gUnk_0203AD10
	movs r0, #0
	str r0, [r1]
	ldr r0, _0814F270 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateTitleScreen
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814F258: .4byte 0x00007FFF
_0814F25C: .4byte gBgPalette
_0814F260: .4byte 0x01000100
_0814F264: .4byte gObjPalette
_0814F268: .4byte gUnk_03002440
_0814F26C: .4byte gUnk_0203AD10
_0814F270: .4byte gCurTask

	thumb_func_start sub_0814F274
sub_0814F274: @ 0x0814F274
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r6, [r4, #8]
	movs r0, #1
	str r0, [sp]
	ldrh r0, [r4, #6]
	ldr r1, _0814F2D0 @ =0x0000FFDD
	ands r1, r0
	strh r1, [r4, #6]
	movs r2, #2
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0814F29A
	b _0814F398
_0814F29A:
	ldrb r3, [r6]
	ldrh r0, [r4, #4]
	cmp r0, r3
	blo _0814F2AE
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0814F2AE
	movs r0, #0
	strh r0, [r4, #4]
_0814F2AE:
	ldr r2, [r6, #4]
	ldrh r1, [r4, #4]
	lsls r0, r1, #2
	adds r0, r0, r2
	ldr r5, [r0]
	cmp r1, r3
	bne _0814F2D8
	ldrh r0, [r4, #6]
	movs r1, #0x20
	orrs r1, r0
	strh r1, [r4, #6]
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	bne _0814F2D4
	movs r0, #0
	b _0814F3AC
	.align 2, 0
_0814F2D0: .4byte 0x0000FFDD
_0814F2D4:
	movs r0, #0
	str r0, [sp]
_0814F2D8:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	ldrh r0, [r5]
	lsls r0, r0, #8
	strh r0, [r4, #2]
	ldr r1, [r6]
	lsrs r0, r1, #8
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	mov r8, r7
	lsrs r1, r1, #0x10
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	mov r6, ip
	adds r5, #2
	ldrh r1, [r4, #6]
	movs r2, #1
	mov sl, r2
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _0814F350
	ldr r6, _0814F324 @ =gUnk_03002440
	ldr r3, [r6]
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r3
	cmp r0, #0
	beq _0814F328
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, ip
	bl sub_0815828C
	b _0814F390
	.align 2, 0
_0814F324: .4byte gUnk_03002440
_0814F328:
	ldr r2, _0814F348 @ =0x040000D4
	str r5, [r2]
	lsls r0, r7, #1
	ldr r1, _0814F34C @ =gObjPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	mov r1, ip
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #2
	orrs r3, r0
	str r3, [r6]
	b _0814F390
	.align 2, 0
_0814F348: .4byte 0x040000D4
_0814F34C: .4byte gObjPalette
_0814F350:
	ldr r2, _0814F36C @ =gUnk_03002440
	mov sb, r2
	ldr r3, [r2]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _0814F370
	adds r0, r5, #0
	adds r1, r7, #0
	mov r2, ip
	bl sub_08158334
	b _0814F390
	.align 2, 0
_0814F36C: .4byte gUnk_03002440
_0814F370:
	ldr r2, _0814F3BC @ =0x040000D4
	str r5, [r2]
	mov r1, r8
	lsls r0, r1, #1
	ldr r1, _0814F3C0 @ =gBgPalette
	adds r0, r0, r1
	str r0, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r6, r0
	str r6, [r2, #8]
	ldr r0, [r2, #8]
	mov r2, sl
	orrs r3, r2
	mov r0, sb
	str r3, [r0]
_0814F390:
	ldrh r1, [r4, #6]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #6]
_0814F398:
	ldrh r1, [r4, #6]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0814F3AA
	ldrh r0, [r4, #2]
	ldrh r1, [r4]
	subs r0, r0, r1
	strh r0, [r4, #2]
_0814F3AA:
	ldr r0, [sp]
_0814F3AC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814F3BC: .4byte 0x040000D4
_0814F3C0: .4byte gBgPalette

	thumb_func_start sub_0814F3C4
sub_0814F3C4: @ 0x0814F3C4
	movs r3, #0
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	strh r3, [r0, #2]
	strh r3, [r0, #4]
	strh r3, [r0, #6]
	str r1, [r0, #8]
	bx lr
	.align 2, 0
