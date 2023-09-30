	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08137874
sub_08137874: @ 0x08137874
	push {lr}
	sub sp, #4
	ldr r0, _081378A4 @ =sub_081373A8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081378A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _081378B0
	.align 2, 0
_081378A4: .4byte sub_081373A8
_081378A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_081378B0:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081378BC
sub_081378BC: @ 0x081378BC
	push {lr}
	ldr r0, _081378CC @ =gUnk_083850A4
	ldr r1, _081378D0 @ =0x0600F000
	bl RLUnCompVram
	pop {r0}
	bx r0
	.align 2, 0
_081378CC: .4byte gUnk_083850A4
_081378D0: .4byte 0x0600F000

	thumb_func_start sub_081378D4
sub_081378D4: @ 0x081378D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137908 @ =sub_08137A80
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813790C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137914
	.align 2, 0
_08137908: .4byte sub_08137A80
_0813790C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137914:
	adds r5, r0, #0
	adds r0, #0x54
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08137930 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137964
	lsls r0, r0, #2
	ldr r1, _08137934 @ =_08137938
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137930: .4byte gLanguage
_08137934: .4byte _08137938
_08137938: @ jump table
	.4byte _08137950 @ case 0
	.4byte _08137950 @ case 1
	.4byte _08137950 @ case 2
	.4byte _08137950 @ case 3
	.4byte _08137950 @ case 4
	.4byte _08137950 @ case 5
_08137950:
	ldr r0, _081379F8 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _081379FC @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08137964:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	subs r0, #0xbb
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137A08
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137A00 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137A04 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137A60
	.align 2, 0
_081379F8: .4byte 0xFFFF0000
_081379FC: .4byte 0xFF00FFFF
_08137A00: .4byte 0x05000011
_08137A04: .4byte 0x06010000
_08137A08:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137A78 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137A7C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137A60:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	movs r0, #2
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137A78: .4byte 0x05000011
_08137A7C: .4byte 0x06010000

	thumb_func_start sub_08137A80
sub_08137A80: @ 0x08137A80
	push {r4, lr}
	ldr r0, _08137A9C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137AA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137AA8
	.align 2, 0
_08137A9C: .4byte gCurTask
_08137AA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137AA8:
	adds r0, r4, #0
	bl sub_0812A2C0
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08137AC8
	movs r0, #0
	strh r0, [r2]
	subs r0, #0xb8
	str r0, [r4, #0x4c]
_08137AC8:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137AEE
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08137AE6
	subs r0, #1
	strh r0, [r1]
	b _08137AEE
_08137AE6:
	ldr r0, _08137AF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08137AEE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137AF4: .4byte gCurTask

	thumb_func_start sub_08137AF8
sub_08137AF8: @ 0x08137AF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137B2C @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137B30
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137B38
	.align 2, 0
_08137B2C: .4byte sub_08128980
_08137B30:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137B38:
	adds r5, r0, #0
	ldr r0, _08137B4C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137B80
	lsls r0, r0, #2
	ldr r1, _08137B50 @ =_08137B54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137B4C: .4byte gLanguage
_08137B50: .4byte _08137B54
_08137B54: @ jump table
	.4byte _08137B6C @ case 0
	.4byte _08137B6C @ case 1
	.4byte _08137B6C @ case 2
	.4byte _08137B6C @ case 3
	.4byte _08137B6C @ case 4
	.4byte _08137B6C @ case 5
_08137B6C:
	ldr r0, _08137C14 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08137C18 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r4, r0
_08137B80:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	subs r0, #0xbb
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137C24
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137C1C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137C20 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137C7C
	.align 2, 0
_08137C14: .4byte 0xFFFF0000
_08137C18: .4byte 0xFF00FFFF
_08137C1C: .4byte 0x05000011
_08137C20: .4byte 0x06010000
_08137C24:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137C90 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137C94 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137C7C:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137C90: .4byte 0x05000011
_08137C94: .4byte 0x06010000

	thumb_func_start sub_08137C98
sub_08137C98: @ 0x08137C98
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08137CC8 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137CCC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137CD4
	.align 2, 0
_08137CC8: .4byte sub_08128980
_08137CCC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137CD4:
	adds r4, r0, #0
	ldr r0, _08137CE8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137D16
	lsls r0, r0, #2
	ldr r1, _08137CEC @ =_08137CF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137CE8: .4byte gLanguage
_08137CEC: .4byte _08137CF0
_08137CF0: @ jump table
	.4byte _08137D08 @ case 0
	.4byte _08137D08 @ case 1
	.4byte _08137D08 @ case 2
	.4byte _08137D08 @ case 3
	.4byte _08137D08 @ case 4
	.4byte _08137D08 @ case 5
_08137D08:
	ldr r0, _08137DAC @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r5, r0
	ldr r0, _08137DB0 @ =0xFF00FFFF
	ands r5, r0
_08137D16:
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	movs r0, #0xf0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137DBC
	str r7, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08137DB4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137DB8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08137E14
	.align 2, 0
_08137DAC: .4byte 0xFFFF0000
_08137DB0: .4byte 0xFF00FFFF
_08137DB4: .4byte 0x05000011
_08137DB8: .4byte 0x06010000
_08137DBC:
	str r6, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08137E1C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137E20 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
_08137E14:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137E1C: .4byte 0x05000011
_08137E20: .4byte 0x06010000

	thumb_func_start sub_08137E24
sub_08137E24: @ 0x08137E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137E58 @ =sub_08137FC8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137E5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137E64
	.align 2, 0
_08137E58: .4byte sub_08137FC8
_08137E5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137E64:
	adds r5, r0, #0
	mov r0, r8
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, _08137E88 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137EB4
	lsls r0, r0, #2
	ldr r1, _08137E8C @ =_08137E90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137E88: .4byte gLanguage
_08137E8C: .4byte _08137E90
_08137E90: @ jump table
	.4byte _08137EA8 @ case 0
	.4byte _08137EA8 @ case 1
	.4byte _08137EA8 @ case 2
	.4byte _08137EA8 @ case 3
	.4byte _08137EA8 @ case 4
	.4byte _08137EA8 @ case 5
_08137EA8:
	ldr r0, _08137F44 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _08137F48 @ =0x0000036A
	orrs r4, r0
	ldr r0, _08137F4C @ =0xFF00FFFF
	ands r4, r0
_08137EB4:
	mov r1, r8
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137F58
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137F50 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137F54 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137FAE
	.align 2, 0
_08137F44: .4byte 0xFFFF0000
_08137F48: .4byte 0x0000036A
_08137F4C: .4byte 0xFF00FFFF
_08137F50: .4byte 0x05000011
_08137F54: .4byte 0x06010000
_08137F58:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137FC0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137FC4 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137FAE:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137FC0: .4byte 0x05000011
_08137FC4: .4byte 0x06010000

	thumb_func_start sub_08137FC8
sub_08137FC8: @ 0x08137FC8
	push {r4, r5, lr}
	ldr r0, _08137FE4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137FE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137FF0
	.align 2, 0
_08137FE4: .4byte gCurTask
_08137FE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137FF0:
	adds r5, r4, #0
	adds r0, r4, #0
	bl sub_0812A2C0
	movs r0, #0x59
	adds r0, r0, r4
	mov ip, r0
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #0
	bne _0813802C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _081380B4
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r3, [r2]
	b _081380B4
_0813802C:
	cmp r3, #1
	bne _0813809C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _081380B4
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
	strb r0, [r2]
	ldr r0, _08138068 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _081380B4
	lsls r0, r0, #2
	ldr r1, _0813806C @ =_08138070
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08138068: .4byte gLanguage
_0813806C: .4byte _08138070
_08138070: @ jump table
	.4byte _08138088 @ case 0
	.4byte _08138088 @ case 1
	.4byte _08138088 @ case 2
	.4byte _08138088 @ case 3
	.4byte _08138088 @ case 4
	.4byte _08138088 @ case 5
_08138088:
	ldr r0, _08138098 @ =0x0000036A
	strh r0, [r5, #0x10]
	movs r0, #1
	strb r0, [r5, #0x1e]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	b _081380B4
	.align 2, 0
_08138098: .4byte 0x0000036A
_0813809C:
	cmp r3, #2
	bne _081380B4
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081380B4
	ldr r0, _081380BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081380B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081380BC: .4byte gCurTask

	thumb_func_start sub_081380C0
sub_081380C0: @ 0x081380C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	mov sl, r2
	ldr r0, _08138100 @ =sub_0813870C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138104
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0813810E
	.align 2, 0
_08138100: .4byte sub_0813870C
_08138104:
	mov r2, r8
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0813810E:
	adds r5, r0, #0
	ldr r0, _08138124 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08138150
	lsls r0, r0, #2
	ldr r1, _08138128 @ =_0813812C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08138124: .4byte gLanguage
_08138128: .4byte _0813812C
_0813812C: @ jump table
	.4byte _08138144 @ case 0
	.4byte _08138144 @ case 1
	.4byte _08138144 @ case 2
	.4byte _08138144 @ case 3
	.4byte _08138144 @ case 4
	.4byte _08138144 @ case 5
_08138144:
	ldr r0, _081381E0 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081381E4 @ =0x00000369
	orrs r4, r0
	ldr r0, _081381E8 @ =0xFF00FFFF
	ands r4, r0
_08138150:
	mov r0, sb
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r6, [r5, #0x48]
	mov r2, sl
	str r2, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081381F4
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081381EC @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081381F0 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _0813824A
	.align 2, 0
_081381E0: .4byte 0xFFFF0000
_081381E4: .4byte 0x00000369
_081381E8: .4byte 0xFF00FFFF
_081381EC: .4byte 0x05000011
_081381F0: .4byte 0x06010000
_081381F4:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08138290 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08138294 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_0813824A:
	mov r4, sb
	ldr r0, [r4, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0xc]
	ldr r1, _08138298 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x18]
	ldr r2, _0813829C @ =0x0000F83F
	ands r2, r0
	movs r3, #0
	strh r2, [r5, #0x18]
	ldrh r0, [r4, #0x14]
	subs r0, #1
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x54
	strb r3, [r0]
	mov r0, r8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08138290: .4byte 0x05000011
_08138294: .4byte 0x06010000
_08138298: .4byte 0xFFFFCFFF
_0813829C: .4byte 0x0000F83F

	thumb_func_start sub_081382A0
sub_081382A0: @ 0x081382A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r0, _081382D8 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081382DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081382E4
	.align 2, 0
_081382D8: .4byte sub_08128980
_081382DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081382E4:
	adds r5, r0, #0
	ldr r0, _081382F8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0813832A
	lsls r0, r0, #2
	ldr r1, _081382FC @ =_08138300
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081382F8: .4byte gLanguage
_081382FC: .4byte _08138300
_08138300: @ jump table
	.4byte _08138318 @ case 0
	.4byte _08138318 @ case 1
	.4byte _08138318 @ case 2
	.4byte _08138318 @ case 3
	.4byte _08138318 @ case 4
	.4byte _08138318 @ case 5
_08138318:
	ldr r0, _081383B8 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081383BC @ =0x0000036A
	orrs r4, r0
	ldr r0, _081383C0 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	orrs r4, r0
_0813832A:
	movs r7, #0
	str r7, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	str r6, [r5, #0x48]
	mov r1, r8
	str r1, [r5, #0x4c]
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081383CC
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081383C4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081383C8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08138422
	.align 2, 0
_081383B8: .4byte 0xFFFF0000
_081383BC: .4byte 0x0000036A
_081383C0: .4byte 0xFF00FFFF
_081383C4: .4byte 0x05000011
_081383C8: .4byte 0x06010000
_081383CC:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08138430 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08138434 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08138422:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08138430: .4byte 0x05000011
_08138434: .4byte 0x06010000

	thumb_func_start sub_08138438
sub_08138438: @ 0x08138438
	push {r4, r5, lr}
	ldr r0, _08138454 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138458
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138460
	.align 2, 0
_08138454: .4byte gCurTask
_08138458:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138460:
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0813850C
	ldr r2, _081384A0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081384A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081384A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r0, #0
	movs r0, #0x1e
	ands r0, r3
	ldr r2, _081384AC @ =gUnk_083852D0
	adds r1, r0, r2
	ldrb r5, [r1]
	strb r5, [r4]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	lsrs r0, r3, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384B0
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	adds r0, r5, r0
	b _081384B8
	.align 2, 0
_081384A0: .4byte gRngVal
_081384A4: .4byte 0x00196225
_081384A8: .4byte 0x3C6EF35F
_081384AC: .4byte gUnk_083852D0
_081384B0:
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	subs r0, r5, r0
_081384B8:
	strb r0, [r4]
	lsrs r0, r3, #5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384D2
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	strb r0, [r4, #1]
	b _081384DE
_081384D2:
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	subs r1, r1, r0
	strb r1, [r4, #1]
_081384DE:
	movs r0, #0x1f
	ands r3, r0
	strb r3, [r4, #3]
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	bl sub_081382A0
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0813850C
	ldr r0, _08138508 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08138512
	.align 2, 0
_08138508: .4byte gCurTask
_0813850C:
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #3]
_08138512:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08138518
sub_08138518: @ 0x08138518
	push {r4, lr}
	sub sp, #4
	ldr r2, _08138538 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813853C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138544
	.align 2, 0
_08138538: .4byte gCurTask
_0813853C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138544:
	adds r4, r0, #0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08138558
	ldr r0, [r2]
	bl TaskDestroy
	b _081385C6
_08138558:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _081385C6
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081385C6
	ldr r0, _08138598 @ =sub_08138438
	str r1, [sp]
	movs r1, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813859C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _081385A2
	.align 2, 0
_08138598: .4byte sub_08138438
_0813859C:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_081385A2:
	adds r2, r0, r1
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	ldr r2, _081385D0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081385D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081385D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x4f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #2]
_081385C6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081385D0: .4byte gRngVal
_081385D4: .4byte 0x00196225
_081385D8: .4byte 0x3C6EF35F

	thumb_func_start sub_081385DC
sub_081385DC: @ 0x081385DC
	push {lr}
	sub sp, #4
	ldr r0, _0813860C @ =sub_08138438
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138610
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08138618
	.align 2, 0
_0813860C: .4byte sub_08138438
_08138610:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08138618:
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813862C
sub_0813862C: @ 0x0813862C
	push {lr}
	sub sp, #4
	ldr r0, _0813865C @ =sub_08138518
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138660
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138668
	.align 2, 0
_0813865C: .4byte sub_08138518
_08138660:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138668:
	movs r0, #2
	strh r0, [r1]
	movs r0, #1
	strb r0, [r1, #2]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_08138678
sub_08138678: @ 0x08138678
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138692
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0813869A
_08138692:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0813869A:
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081386A8
sub_081386A8: @ 0x081386A8
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386C2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386CA
_081386C2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386CA:
	ldrh r1, [r2]
	ldr r0, _081386D8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_081386D8: .4byte 0x0000FFFD

	thumb_func_start sub_081386DC
sub_081386DC: @ 0x081386DC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386F6
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386FE
_081386F6:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386FE:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813870C
sub_0813870C: @ 0x0813870C
	push {lr}
	ldr r0, _08138728 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813872C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138734
	.align 2, 0
_08138728: .4byte gCurTask
_0813872C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138734:
	adds r2, r1, #0
	adds r2, #0x54
	ldrb r0, [r2]
	cmp r0, #4
	bhi _0813874A
	ldr r0, [r1, #0x4c]
	subs r0, #4
	str r0, [r1, #0x4c]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0813874A:
	adds r0, r1, #0
	bl sub_0812A2C0
	pop {r0}
	bx r0

	thumb_func_start nullsub_129
nullsub_129: @ 0x08138754
	bx lr
	.align 2, 0

	thumb_func_start nullsub_130
nullsub_130: @ 0x08138758
	bx lr
	.align 2, 0

	thumb_func_start nullsub_131
nullsub_131: @ 0x0813875C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_132
nullsub_132: @ 0x08138760
	bx lr
	.align 2, 0

	thumb_func_start sub_08138764
sub_08138764: @ 0x08138764
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r1, #0
	cmp r1, r4
	bhs _081387A4
	movs r7, #0xf
_08138776:
	adds r2, r5, r1
	subs r0, r4, r1
	subs r0, #1
	lsls r0, r0, #2
	adds r3, r7, #0
	lsls r3, r0
	ands r3, r6
	asrs r3, r0
	adds r0, r3, #0
	adds r0, #0x30
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x39
	bls _0813879A
	adds r0, r3, #0
	adds r0, #0x37
	strb r0, [r2]
_0813879A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r4
	blo _08138776
_081387A4:
	adds r1, r5, r1
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
