	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0802F8D8
sub_0802F8D8: @ 0x0802F8D8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sl, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _0802F930 @ =sub_0802F9AC
	ldr r2, _0802F934 @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802F938
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802F940
	.align 2, 0
_0802F930: .4byte sub_0802F9AC
_0802F934: .4byte 0x00000101
_0802F938:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802F940:
	mov r0, r8
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x28]
	str r1, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r1, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r0, [sp, #4]
	str r0, [r4]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	mov r0, sl
	strh r0, [r4, #0xc]
	mov r0, sb
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xb
	strb r0, [r4, #0x1f]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #8
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0802F9AC
sub_0802F9AC: @ 0x0802F9AC
	push {r4, lr}
	ldr r2, _0802F9C8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802F9CC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802F9D4
	.align 2, 0
_0802F9C8: .4byte gCurTask
_0802F9CC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802F9D4:
	adds r4, r0, #0
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0802FA00
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802FA00
	ldr r1, [r2]
	ldr r0, _0802FA3C @ =sub_0802FE5C
	str r0, [r1, #8]
_0802FA00:
	ldr r0, [r4, #0x28]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	beq _0802FA1A
	ldr r1, [r2]
	ldr r0, _0802FA3C @ =sub_0802FE5C
	str r0, [r1, #8]
_0802FA1A:
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FA3C: .4byte sub_0802FE5C

	thumb_func_start sub_0802FA40
sub_0802FA40: @ 0x0802FA40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sl, r0
	str r3, [sp, #4]
	ldr r0, [sp, #0x30]
	ldr r3, [sp, #0x34]
	ldr r4, [sp, #0x38]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r3, r3, #0x10
	lsrs r6, r3, #0x10
	lsls r4, r4, #0x10
	lsrs r5, r4, #0x10
	ldr r0, _0802FA98 @ =sub_0802FB0C
	ldr r2, _0802FA9C @ =0x00000101
	movs r1, #0
	str r1, [sp]
	movs r1, #0x3c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802FAA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0802FAA8
	.align 2, 0
_0802FA98: .4byte sub_0802FB0C
_0802FA9C: .4byte 0x00000101
_0802FAA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0802FAA8:
	mov r0, sl
	str r0, [r4, #0x28]
	ldr r1, [sp, #0x28]
	str r1, [r4, #0x2c]
	ldr r0, [sp, #0x2c]
	str r0, [r4, #0x30]
	movs r0, #0
	strh r7, [r4, #0x34]
	strh r6, [r4, #0x36]
	strh r5, [r4, #0x38]
	ldr r1, [sp, #4]
	str r1, [r4]
	strh r0, [r4, #0x14]
	mov r1, sb
	strh r1, [r4, #0xc]
	mov r1, r8
	strb r1, [r4, #0x1a]
	strh r0, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #0xb
	strb r0, [r4, #0x1f]
	ldr r1, [sp, #0x28]
	asrs r0, r1, #8
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x2c]
	asrs r0, r1, #8
	strh r0, [r4, #0x12]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0802FB0C
sub_0802FB0C: @ 0x0802FB0C
	push {r4, r5, lr}
	ldr r0, _0802FB28 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0802FB2C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0802FB34
	.align 2, 0
_0802FB28: .4byte gCurTask
_0802FB2C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0802FB34:
	adds r4, r0, #0
	adds r5, r4, #0
	ldr r0, [r4, #0x2c]
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	ldr r0, [r4, #0x30]
	asrs r0, r0, #8
	strh r0, [r4, #0x12]
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0802FB74
	ldrh r0, [r4, #0x38]
	cmp r0, #0
	beq _0802FB70
	subs r0, #1
	strh r0, [r4, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0802FB70
	ldr r0, _0802FB68 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802FB6C @ =sub_0802FE70
	str r0, [r1, #8]
	b _0802FB74
	.align 2, 0
_0802FB68: .4byte gCurTask
_0802FB6C: .4byte sub_0802FE70
_0802FB70:
	movs r0, #0xff
	strb r0, [r4, #0x1b]
_0802FB74:
	adds r0, r5, #0
	bl sub_0815604C
	movs r0, #0x34
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x2c]
	adds r0, r0, r1
	str r0, [r4, #0x2c]
	movs r0, #0x36
	ldrsh r1, [r4, r0]
	ldr r0, [r4, #0x30]
	adds r0, r0, r1
	str r0, [r4, #0x30]
	ldrh r0, [r5, #0x10]
	adds r0, #0x40
	lsls r0, r0, #0x10
	movs r1, #0xb8
	lsls r1, r1, #0x11
	cmp r0, r1
	bhi _0802FBAC
	movs r0, #0x12
	ldrsh r1, [r5, r0]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	blt _0802FBAC
	cmp r1, #0xe0
	ble _0802FBB4
_0802FBAC:
	ldr r0, _0802FBD8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802FBDC @ =sub_0802FE70
	str r0, [r1, #8]
_0802FBB4:
	ldr r0, [r4, #0x28]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	beq _0802FBD0
	ldr r0, _0802FBD8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0802FBDC @ =sub_0802FE70
	str r0, [r1, #8]
_0802FBD0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802FBD8: .4byte gCurTask
_0802FBDC: .4byte sub_0802FE70

	thumb_func_start sub_0802FBE0
sub_0802FBE0: @ 0x0802FBE0
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x17
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802FBF4
sub_0802FBF4: @ 0x0802FBF4
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	orrs r1, r2
	str r1, [r0]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802FC08
sub_0802FC08: @ 0x0802FC08
	ldr r0, [r1, #0x2c]
	movs r2, #2
	orrs r0, r2
	str r0, [r1, #0x2c]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802FC14
sub_0802FC14: @ 0x0802FC14
	movs r2, #0
	movs r0, #0
	strh r0, [r1, #0xc]
	strb r2, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r1, #0x2c]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1, #0x2c]
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	ldr r3, _0802FC54 @ =gRngVal
	ldr r2, [r3]
	ldr r0, _0802FC58 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _0802FC5C @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r2, #0x1f
	ands r0, r2
	adds r2, r1, #0
	adds r2, #0x48
	strh r0, [r2]
	ldr r0, _0802FC60 @ =sub_0802FE84
	str r0, [r1, #0x28]
	bx lr
	.align 2, 0
_0802FC54: .4byte gRngVal
_0802FC58: .4byte 0x00196225
_0802FC5C: .4byte 0x3C6EF35F
_0802FC60: .4byte sub_0802FE84

	thumb_func_start sub_0802FC64
sub_0802FC64: @ 0x0802FC64
	push {r4, lr}
	movs r0, #0x49
	strh r0, [r1, #0xc]
	movs r4, #1
	strb r4, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r2, [r1, #0x2c]
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	subs r0, #8
	ands r2, r0
	str r2, [r1, #0x2c]
	ldr r3, [r1, #0x30]
	ldr r0, _0802FC90 @ =0x00004FFF
	cmp r3, r0
	bgt _0802FC94
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _0802FC9E
	.align 2, 0
_0802FC90: .4byte 0x00004FFF
_0802FC94:
	movs r0, #0xa0
	lsls r0, r0, #8
	cmp r3, r0
	ble _0802FCA0
	orrs r2, r4
_0802FC9E:
	str r2, [r1, #0x2c]
_0802FCA0:
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r1, #0x34]
	ldr r0, _0802FCB0 @ =sub_0802FEAC
	str r0, [r1, #0x28]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FCB0: .4byte sub_0802FEAC

	thumb_func_start sub_0802FCB4
sub_0802FCB4: @ 0x0802FCB4
	movs r2, #0
	ldr r0, _0802FCD4 @ =0x00000185
	strh r0, [r1, #0xc]
	strb r2, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r1, #0x2c]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	subs r2, #8
	ands r0, r2
	str r0, [r1, #0x2c]
	ldr r0, _0802FCD8 @ =sub_0802FFA8
	str r0, [r1, #0x28]
	bx lr
	.align 2, 0
_0802FCD4: .4byte 0x00000185
_0802FCD8: .4byte sub_0802FFA8

	thumb_func_start sub_0802FCDC
sub_0802FCDC: @ 0x0802FCDC
	movs r2, #6
	movs r0, #6
	strh r0, [r1, #0xc]
	strb r2, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r1, #0x2c]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	subs r2, #8
	ands r0, r2
	str r0, [r1, #0x2c]
	ldr r0, _0802FCFC @ =sub_0802F51C
	str r0, [r1, #0x28]
	bx lr
	.align 2, 0
_0802FCFC: .4byte sub_0802F51C

	thumb_func_start sub_0802FD00
sub_0802FD00: @ 0x0802FD00
	push {r4, lr}
	ldr r4, _0802FD2C @ =gRngVal
	ldr r3, [r4]
	ldr r2, _0802FD30 @ =0x00196225
	muls r2, r3, r2
	ldr r3, _0802FD34 @ =0x3C6EF35F
	adds r2, r2, r3
	str r2, [r4]
	lsrs r2, r2, #0x10
	movs r3, #0x1f
	ands r2, r3
	adds r3, r1, #0
	adds r3, #0x48
	strh r2, [r3]
	ldr r2, _0802FD38 @ =sub_0802F77C
	str r2, [r1, #0x28]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0802FD2C: .4byte gRngVal
_0802FD30: .4byte 0x00196225
_0802FD34: .4byte 0x3C6EF35F
_0802FD38: .4byte sub_0802F77C

	thumb_func_start sub_0802FD3C
sub_0802FD3C: @ 0x0802FD3C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r4, #0
	ldr r0, _0802FD98 @ =sub_0802FDA4
	mov ip, r0
	ldr r6, _0802FD9C @ =gUnk_082EB800
	ldr r7, _0802FDA0 @ =gUnk_082EB7D0
_0802FD4A:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #4
	adds r0, #0xc
	adds r2, r5, r0
	str r6, [r2, #0x3c]
	adds r1, r2, #0
	adds r1, #0x40
	ldrh r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r3, r2, #0
	adds r3, #0x42
	strh r0, [r3]
	ldrh r0, [r1]
	ldr r1, [r2, #0x3c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r1, [r0, #2]
	adds r0, r2, #0
	adds r0, #0x44
	strh r1, [r0]
	ldrh r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r7
	ldr r0, [r0]
	str r0, [r2, #0x28]
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _0802FD4A
	mov r0, ip
	str r0, [r5, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FD98: .4byte sub_0802FDA4
_0802FD9C: .4byte gUnk_082EB800
_0802FDA0: .4byte gUnk_082EB7D0

	thumb_func_start sub_0802FDA4
sub_0802FDA4: @ 0x0802FDA4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	movs r7, #1
	movs r6, #0
_0802FDAC:
	lsls r4, r6, #2
	adds r4, r4, r6
	lsls r4, r4, #4
	adds r1, r4, #0
	adds r1, #0xc
	adds r1, r5, r1
	adds r0, r5, #0
	bl sub_0802EF90
	adds r0, r5, #0
	adds r0, #0x38
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0802FDD0
	movs r7, #0
_0802FDD0:
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #3
	bls _0802FDAC
	cmp r7, #0
	beq _0802FDE8
	ldr r1, _0802FDF0 @ =sub_0802FDF4
	str r1, [r5, #4]
	adds r0, r5, #0
	bl _call_via_r1
_0802FDE8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0802FDF0: .4byte sub_0802FDF4

	thumb_func_start sub_0802FDF4
sub_0802FDF4: @ 0x0802FDF4
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r1, #0
	ldr r5, _0802FE28 @ =sub_0802E97C
	ldr r4, _0802FE2C @ =gUnk_082EB7F8
	movs r3, #0
_0802FE00:
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, #0xc
	adds r0, r2, r0
	str r4, [r0, #0x3c]
	adds r0, #0x40
	strh r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0802FE00
	str r5, [r2, #4]
	adds r0, r2, #0
	bl _call_via_r5
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0802FE28: .4byte sub_0802E97C
_0802FE2C: .4byte gUnk_082EB7F8

	thumb_func_start sub_0802FE30
sub_0802FE30: @ 0x0802FE30
	push {lr}
	movs r1, #0xc8
	lsls r1, r1, #1
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _0802FE48 @ =sub_0802ECBC
	str r1, [r0, #4]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_0802FE48: .4byte sub_0802ECBC

	thumb_func_start sub_0802FE4C
sub_0802FE4C: @ 0x0802FE4C
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, [r0]
	movs r2, #1
	orrs r1, r2
	str r1, [r0]
	bx lr

	thumb_func_start sub_0802FE5C
sub_0802FE5C: @ 0x0802FE5C
	push {lr}
	ldr r0, _0802FE6C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802FE6C: .4byte gCurTask

	thumb_func_start sub_0802FE70
sub_0802FE70: @ 0x0802FE70
	push {lr}
	ldr r0, _0802FE80 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0802FE80: .4byte gCurTask

	thumb_func_start sub_0802FE84
sub_0802FE84: @ 0x0802FE84
	push {lr}
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x44
	adds r3, r2, #0
	adds r3, #0x48
	ldrh r1, [r3]
	ldrh r0, [r0]
	cmp r0, r1
	bhs _0802FEA2
	ldr r0, [r2, #0x2c]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x2c]
	b _0802FEA6
_0802FEA2:
	adds r0, r1, #1
	strh r0, [r3]
_0802FEA6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0802FEAC
sub_0802FEAC: @ 0x0802FEAC
	push {lr}
	adds r2, r1, #0
	ldr r0, [r2, #0x2c]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0802FEBE
	ldr r0, _0802FEC4 @ =sub_0802FEC8
	str r0, [r2, #0x28]
_0802FEBE:
	pop {r0}
	bx r0
	.align 2, 0
_0802FEC4: .4byte sub_0802FEC8

	thumb_func_start sub_0802FEC8
sub_0802FEC8: @ 0x0802FEC8
	movs r2, #0
	movs r0, #0x49
	strh r0, [r1, #0xc]
	strb r2, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r1, #0x2c]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	movs r2, #0x10
	orrs r0, r2
	str r0, [r1, #0x2c]
	ldr r3, _0802FF04 @ =gRngVal
	ldr r2, [r3]
	ldr r0, _0802FF08 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _0802FF0C @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r2, #0x1f
	ands r0, r2
	adds r2, r1, #0
	adds r2, #0x48
	strh r0, [r2]
	ldr r0, _0802FF10 @ =sub_0802FF14
	str r0, [r1, #0x28]
	bx lr
	.align 2, 0
_0802FF04: .4byte gRngVal
_0802FF08: .4byte 0x00196225
_0802FF0C: .4byte 0x3C6EF35F
_0802FF10: .4byte sub_0802FF14

	thumb_func_start sub_0802FF14
sub_0802FF14: @ 0x0802FF14
	push {lr}
	adds r0, r1, #0
	adds r0, #0x44
	adds r3, r1, #0
	adds r3, #0x48
	ldrh r2, [r3]
	ldrh r0, [r0]
	cmp r0, r2
	bhs _0802FF30
	ldr r0, _0802FF2C @ =sub_0802FF38
	str r0, [r1, #0x28]
	b _0802FF34
	.align 2, 0
_0802FF2C: .4byte sub_0802FF38
_0802FF30:
	adds r0, r2, #1
	strh r0, [r3]
_0802FF34:
	pop {r0}
	bx r0

	thumb_func_start sub_0802FF38
sub_0802FF38: @ 0x0802FF38
	movs r0, #0x49
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r0, [r1, #0x2c]
	movs r2, #9
	rsbs r2, r2, #0
	ands r0, r2
	subs r2, #8
	ands r0, r2
	str r0, [r1, #0x2c]
	ldr r0, _0802FF58 @ =sub_0802FF5C
	str r0, [r1, #0x28]
	bx lr
	.align 2, 0
_0802FF58: .4byte sub_0802FF5C

	thumb_func_start sub_0802FF5C
sub_0802FF5C: @ 0x0802FF5C
	push {lr}
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0x44
	adds r3, r2, #0
	adds r3, #0x48
	ldrh r1, [r3]
	ldrh r0, [r0]
	cmp r0, r1
	bhs _0802FF94
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #0xc]
	strb r1, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldr r0, [r2, #0x2c]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2, #0x2c]
	ldr r0, _0802FF90 @ =sub_0802FF9C
	str r0, [r2, #0x28]
	b _0802FF98
	.align 2, 0
_0802FF90: .4byte sub_0802FF9C
_0802FF94:
	adds r0, r1, #1
	strh r0, [r3]
_0802FF98:
	pop {r0}
	bx r0

	thumb_func_start sub_0802FF9C
sub_0802FF9C: @ 0x0802FF9C
	ldr r0, [r1, #0x2c]
	movs r2, #2
	orrs r0, r2
	str r0, [r1, #0x2c]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802FFA8
sub_0802FFA8: @ 0x0802FFA8
	push {lr}
	ldr r2, [r1, #0x2c]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0802FFD0
	ldr r0, _0802FFD4 @ =0x00000185
	strh r0, [r1, #0xc]
	movs r0, #1
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	subs r0, #8
	ands r2, r0
	str r2, [r1, #0x2c]
	ldr r0, _0802FFD8 @ =sub_0802FFDC
	str r0, [r1, #0x28]
_0802FFD0:
	pop {r0}
	bx r0
	.align 2, 0
_0802FFD4: .4byte 0x00000185
_0802FFD8: .4byte sub_0802FFDC

	thumb_func_start sub_0802FFDC
sub_0802FFDC: @ 0x0802FFDC
	push {lr}
	ldr r2, [r1, #0x2c]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _0803000A
	ldr r0, _08030010 @ =0x00000185
	strh r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #0x10
	orrs r2, r0
	str r2, [r1, #0x2c]
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r1, #0x3a]
	ldr r0, _08030014 @ =sub_0802F40C
	str r0, [r1, #0x28]
_0803000A:
	pop {r0}
	bx r0
	.align 2, 0
_08030010: .4byte 0x00000185
_08030014: .4byte sub_0802F40C

	thumb_func_start sub_08030018
sub_08030018: @ 0x08030018
	ldr r0, [r1, #0x2c]
	movs r2, #2
	orrs r0, r2
	str r0, [r1, #0x2c]
	bx lr
	.align 2, 0

	thumb_func_start sub_08030024
sub_08030024: @ 0x08030024
	push {lr}
	adds r3, r1, #0
	ldr r2, [r3, #0x2c]
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _08030052
	movs r1, #0
	movs r0, #7
	strh r0, [r3, #0xc]
	strb r1, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #9
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #0x10
	orrs r2, r0
	movs r0, #0x20
	orrs r2, r0
	str r2, [r3, #0x2c]
	ldr r0, _08030058 @ =sub_0803005C
	str r0, [r3, #0x28]
_08030052:
	pop {r0}
	bx r0
	.align 2, 0
_08030058: .4byte sub_0803005C

	thumb_func_start sub_0803005C
sub_0803005C: @ 0x0803005C
	ldr r0, [r1, #0x2c]
	movs r2, #2
	orrs r0, r2
	str r0, [r1, #0x2c]
	bx lr
	.align 2, 0

	thumb_func_start sub_08030068
sub_08030068: @ 0x08030068
	push {r4, lr}
	movs r4, #0
	movs r2, #4
	strh r2, [r1, #0xc]
	movs r2, #2
	strb r2, [r1, #0x1a]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldr r2, [r1, #0x2c]
	movs r3, #9
	rsbs r3, r3, #0
	ands r2, r3
	movs r3, #0x10
	orrs r2, r3
	str r2, [r1, #0x2c]
	adds r2, r1, #0
	adds r2, #0x48
	strh r4, [r2]
	ldr r2, _0803009C @ =sub_0802F5B8
	str r2, [r1, #0x28]
	bl _call_via_r2
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0803009C: .4byte sub_0802F5B8

	thumb_func_start sub_080300A0
sub_080300A0: @ 0x080300A0
	push {lr}
	movs r2, #4
	strh r2, [r1, #0xc]
	movs r2, #3
	strb r2, [r1, #0x1a]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldr r2, [r1, #0x2c]
	movs r3, #9
	rsbs r3, r3, #0
	ands r2, r3
	subs r3, #8
	ands r2, r3
	str r2, [r1, #0x2c]
	ldr r2, _080300C8 @ =sub_0802F638
	str r2, [r1, #0x28]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080300C8: .4byte sub_0802F638

	thumb_func_start sub_080300CC
sub_080300CC: @ 0x080300CC
	push {lr}
	adds r2, r1, #0
	ldr r0, [r2, #0x2c]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08030100
	ldrh r0, [r2, #0x3a]
	adds r1, r0, #0
	adds r1, #0x26
	strh r1, [r2, #0x3a]
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	ldr r0, _080300FC @ =0xFFFFFEB0
	cmp r3, r0
	blt _080300F8
	adds r0, r1, #0
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r3, r1
	ble _080300F8
	adds r0, r1, #0
_080300F8:
	strh r0, [r2, #0x3a]
	b _08030104
	.align 2, 0
_080300FC: .4byte 0xFFFFFEB0
_08030100:
	ldr r0, _08030108 @ =sub_0803017C
	str r0, [r2, #0x28]
_08030104:
	pop {r0}
	bx r0
	.align 2, 0
_08030108: .4byte sub_0803017C

	thumb_func_start sub_0803010C
sub_0803010C: @ 0x0803010C
	push {lr}
	movs r2, #0
	strh r2, [r1, #0xc]
	movs r2, #1
	strb r2, [r1, #0x1a]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldr r2, [r1, #0x2c]
	movs r3, #9
	rsbs r3, r3, #0
	ands r2, r3
	subs r3, #8
	ands r2, r3
	str r2, [r1, #0x2c]
	ldr r2, _08030134 @ =sub_08030138
	str r2, [r1, #0x28]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08030134: .4byte sub_08030138

	thumb_func_start sub_08030138
sub_08030138: @ 0x08030138
	push {lr}
	adds r2, r1, #0
	ldrh r0, [r2, #0x38]
	movs r3, #0x38
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _08030152
	subs r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08030164
	b _08030160
_08030152:
	cmp r1, #0
	bge _08030164
	adds r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08030164
_08030160:
	movs r0, #0
	strh r0, [r2, #0x38]
_08030164:
	ldr r0, [r2, #0x2c]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08030172
	ldr r0, _08030178 @ =sub_080301DC
	str r0, [r2, #0x28]
_08030172:
	pop {r0}
	bx r0
	.align 2, 0
_08030178: .4byte sub_080301DC

	thumb_func_start sub_0803017C
sub_0803017C: @ 0x0803017C
	push {lr}
	movs r2, #4
	strh r2, [r1, #0xc]
	movs r2, #5
	strb r2, [r1, #0x1a]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldr r2, [r1, #0x2c]
	movs r3, #9
	rsbs r3, r3, #0
	ands r2, r3
	subs r3, #8
	ands r2, r3
	str r2, [r1, #0x2c]
	movs r2, #0xfe
	lsls r2, r2, #8
	strh r2, [r1, #0x3a]
	ldr r2, _080301AC @ =sub_0802F6A0
	str r2, [r1, #0x28]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080301AC: .4byte sub_0802F6A0

	thumb_func_start sub_080301B0
sub_080301B0: @ 0x080301B0
	push {lr}
	movs r2, #4
	strh r2, [r1, #0xc]
	movs r2, #2
	strb r2, [r1, #0x1a]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldr r2, [r1, #0x2c]
	movs r3, #9
	rsbs r3, r3, #0
	ands r2, r3
	subs r3, #8
	ands r2, r3
	str r2, [r1, #0x2c]
	ldr r2, _080301D8 @ =sub_0802F714
	str r2, [r1, #0x28]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_080301D8: .4byte sub_0802F714

	thumb_func_start sub_080301DC
sub_080301DC: @ 0x080301DC
	push {lr}
	movs r3, #0
	movs r2, #0
	strh r2, [r1, #0xc]
	strb r3, [r1, #0x1a]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldr r2, [r1, #0x2c]
	movs r3, #9
	rsbs r3, r3, #0
	ands r2, r3
	movs r3, #0x10
	orrs r2, r3
	subs r3, #0x31
	ands r2, r3
	str r2, [r1, #0x2c]
	ldr r2, _08030208 @ =sub_0803020C
	str r2, [r1, #0x28]
	bl _call_via_r2
	pop {r0}
	bx r0
	.align 2, 0
_08030208: .4byte sub_0803020C

	thumb_func_start sub_0803020C
sub_0803020C: @ 0x0803020C
	push {lr}
	adds r2, r1, #0
	ldrh r0, [r2, #0x38]
	movs r3, #0x38
	ldrsh r1, [r2, r3]
	cmp r1, #0
	ble _08030226
	subs r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _08030238
	b _08030234
_08030226:
	cmp r1, #0
	bge _08030238
	adds r0, #0xe
	strh r0, [r2, #0x38]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _08030238
_08030234:
	movs r0, #0
	strh r0, [r2, #0x38]
_08030238:
	movs r1, #0x38
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _08030248
	ldr r0, [r2, #0x2c]
	movs r1, #2
	orrs r0, r1
	str r0, [r2, #0x2c]
_08030248:
	pop {r0}
	bx r0
