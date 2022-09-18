	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080E5A20
sub_080E5A20: @ 0x080E5A20
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080E5A50
	subs r0, r1, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _080E5A42
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
_080E5A42:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	movs r1, #0
	b _080E5AA2
_080E5A50:
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	cmp r0, #0
	beq _080E5A7A
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080E5A6E
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
_080E5A6E:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	movs r1, #1
	b _080E5AA2
_080E5A7A:
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	cmp r0, #0
	beq _080E5AB0
	subs r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bne _080E5A98
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	strb r0, [r1]
_080E5A98:
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	movs r1, #2
_080E5AA2:
	bl sub_080E7848
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	b _080E5ABC
_080E5AB0:
	ldrh r0, [r2]
	cmp r0, #0
	bne _080E5ABC
	adds r0, r4, #0
	bl sub_080E7B50
_080E5ABC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E5AC4
sub_080E5AC4: @ 0x080E5AC4
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E5AE4
	adds r0, r2, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5AF4
	b _080E5AF0
_080E5AE4:
	adds r0, r2, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5AF4
_080E5AF0:
	movs r0, #0
	strh r0, [r1]
_080E5AF4:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E5B7A
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5B20
	ldr r2, _080E5B44 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E5B1E
	cmp r0, #0x1a
	bne _080E5B20
_080E5B1E:
	movs r1, #1
_080E5B20:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5B2E
	cmp r1, #0
	beq _080E5B54
_080E5B2E:
	ldr r2, _080E5B48 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5B4C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5B50 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E5B72
	.align 2, 0
_080E5B44: .4byte 0x00000103
_080E5B48: .4byte gRngVal
_080E5B4C: .4byte 0x00196225
_080E5B50: .4byte 0x3C6EF35F
_080E5B54:
	ldr r2, _080E5B80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5B84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5B88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E5B70
	movs r2, #1
_080E5B70:
	adds r1, r2, #0
_080E5B72:
	cmp r1, #0
	beq _080E5B7A
	movs r0, #1
	strh r0, [r4, #4]
_080E5B7A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E5B80: .4byte gRngVal
_080E5B84: .4byte 0x00196225
_080E5B88: .4byte 0x3C6EF35F

	thumb_func_start sub_080E5B8C
sub_080E5B8C: @ 0x080E5B8C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E5BAE
	adds r0, r2, #0
	adds r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E5BBE
	b _080E5BBA
_080E5BAE:
	adds r0, r2, #0
	subs r0, #0xf
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E5BBE
_080E5BBA:
	movs r0, #0
	strh r0, [r1]
_080E5BBE:
	ldrb r0, [r4, #1]
	cmp r0, #0x1e
	bne _080E5C62
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5BD4
	bl sub_080E7028
_080E5BD4:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080E5C0C
	ldr r2, _080E5CB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CB8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5CBC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E5CC0 @ =0x00005554
	cmp r2, r0
	bls _080E5C04
	ldr r0, _080E5CC4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E5C00
	movs r1, #1
_080E5C00:
	cmp r1, #0
	bne _080E5C0C
_080E5C04:
	ldr r0, [r7]
	bl sub_080E6CDC
	movs r6, #1
_080E5C0C:
	adds r0, r5, #0
	adds r0, #0xbc
	ldr r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	beq _080E5C44
	ldr r2, _080E5CB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CB8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5CBC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E5CC0 @ =0x00005554
	cmp r2, r0
	bls _080E5C3C
	ldr r0, _080E5CC4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E5C38
	movs r1, #1
_080E5C38:
	cmp r1, #0
	bne _080E5C44
_080E5C3C:
	ldr r0, [r5]
	bl sub_080E6CDC
	movs r6, #1
_080E5C44:
	cmp r6, #0
	bne _080E5C62
	ldr r0, [r7]
	cmp r0, #0
	beq _080E5C54
	bl sub_080E6CDC
	movs r6, #1
_080E5C54:
	cmp r6, #0
	bne _080E5C62
	ldr r0, [r5]
	cmp r0, #0
	beq _080E5C62
	bl sub_080E6CDC
_080E5C62:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E5CF2
	adds r0, r4, #0
	bl sub_080E43B4
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _080E5C8E
	ldr r2, _080E5CC8 @ =0x00000103
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0x12
	beq _080E5C8C
	cmp r0, #0x1a
	bne _080E5C8E
_080E5C8C:
	movs r1, #1
_080E5C8E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E5C9C
	cmp r1, #0
	beq _080E5CCC
_080E5C9C:
	ldr r2, _080E5CB4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CB8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080E5CBC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E5CEA
	.align 2, 0
_080E5CB4: .4byte gRngVal
_080E5CB8: .4byte 0x00196225
_080E5CBC: .4byte 0x3C6EF35F
_080E5CC0: .4byte 0x00005554
_080E5CC4: .4byte 0x0000AAA9
_080E5CC8: .4byte 0x00000103
_080E5CCC:
	ldr r2, _080E5CF8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5CFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5D00 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E5CE8
	movs r2, #1
_080E5CE8:
	adds r1, r2, #0
_080E5CEA:
	cmp r1, #0
	beq _080E5CF2
	movs r0, #1
	strh r0, [r4, #4]
_080E5CF2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E5CF8: .4byte gRngVal
_080E5CFC: .4byte 0x00196225
_080E5D00: .4byte 0x3C6EF35F

	thumb_func_start sub_080E5D04
sub_080E5D04: @ 0x080E5D04
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E5D9A
	ldr r2, _080E5DB8 @ =0x00000299
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r1, _080E5DBC @ =gKirbys
	ldr r0, _080E5DC0 @ =gUnk_0203AD3C
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
	bne _080E5D90
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E5D54
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E5D90
_080E5D54:
	ldr r1, _080E5DC4 @ =gUnk_08D60FA4
	ldr r5, _080E5DC8 @ =gSongTable
	ldr r2, _080E5DCC @ =0x00000BDC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E5D78
	ldr r1, _080E5DD0 @ =0x00000BD8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E5D90
_080E5D78:
	cmp r3, #0
	beq _080E5D8A
	ldr r0, _080E5DD4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E5D90
_080E5D8A:
	ldr r0, _080E5DD8 @ =0x0000017B
	bl m4aSongNumStart
_080E5D90:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080E5D9A:
	ldrh r1, [r4, #4]
	movs r0, #0x1f
	ands r0, r1
	cmp r0, #0
	bne _080E5E52
	ldr r2, _080E5DDC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E5DE0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E5DE4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r5, r0, #0x10
	movs r3, #0
	b _080E5DEC
	.align 2, 0
_080E5DB8: .4byte 0x00000299
_080E5DBC: .4byte gKirbys
_080E5DC0: .4byte gUnk_0203AD3C
_080E5DC4: .4byte gUnk_08D60FA4
_080E5DC8: .4byte gSongTable
_080E5DCC: .4byte 0x00000BDC
_080E5DD0: .4byte 0x00000BD8
_080E5DD4: .4byte gUnk_0203AD10
_080E5DD8: .4byte 0x0000017B
_080E5DDC: .4byte gRngVal
_080E5DE0: .4byte 0x00196225
_080E5DE4: .4byte 0x3C6EF35F
_080E5DE8:
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
_080E5DEC:
	cmp r3, #3
	bhi _080E5E02
	adds r2, r3, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r1, r0, #4
	adds r0, r0, r1
	lsls r1, r0, #8
	adds r0, r0, r1
	cmp r5, r0
	bge _080E5DE8
_080E5E02:
	cmp r3, #1
	beq _080E5E28
	cmp r3, #1
	bgt _080E5E10
	cmp r3, #0
	beq _080E5E1A
	b _080E5E52
_080E5E10:
	cmp r3, #2
	beq _080E5E38
	cmp r3, #3
	beq _080E5E46
	b _080E5E52
_080E5E1A:
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #4
	bl sub_080E625C
	b _080E5E52
_080E5E28:
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_080E625C
	b _080E5E52
_080E5E38:
	movs r1, #0xa
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #1
	bl sub_080E625C
	b _080E5E52
_080E5E46:
	movs r1, #7
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #0xc
	bl sub_080E625C
_080E5E52:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E5E58
sub_080E5E58: @ 0x080E5E58
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080E5E88 @ =sub_080E5F20
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080E5E8C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E5E90
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E5E98
	.align 2, 0
_080E5E88: .4byte sub_080E5F20
_080E5E8C: .4byte sub_0803DCCC
_080E5E90:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E5E98:
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
	adds r5, r4, #0
	adds r5, #0x42
	movs r7, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0xc
	movs r6, #0xc3
	lsls r6, r6, #2
	movs r0, #0x12
	str r0, [sp]
	movs r0, #0x1d
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x10
	adds r3, r6, #0
	bl sub_080709F8
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080E5F0C @ =gKirbys
	ldr r0, _080E5F10 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080E5F14
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E5F16
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080E5F16
	.align 2, 0
_080E5F0C: .4byte gKirbys
_080E5F10: .4byte gUnk_0203AD3C
_080E5F14:
	strb r7, [r4]
_080E5F16:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E5F20
sub_080E5F20: @ 0x080E5F20
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080E5F44 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E5F48
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E5F50
	.align 2, 0
_080E5F44: .4byte gCurTask
_080E5F48:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E5F50:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov r8, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E5F6C
	ldr r0, [r2]
	bl TaskDestroy
	b _080E6242
_080E5F6C:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E5F7E
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _080E6242
_080E5F7E:
	ldr r2, _080E5FE8 @ =gKirbys
	ldr r0, _080E5FEC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r5, [r6]
	cmp r0, r5
	bne _080E6030
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080E5FF8
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _080E6056
	ldrh r1, [r7, #0x18]
	adds r0, r7, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x10
	bl sub_0803DE54
	adds r4, r7, #0
	adds r4, #0xc
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	ldr r1, _080E5FF0 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080E5FF4 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r7, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080E6056
	.align 2, 0
_080E5FE8: .4byte gKirbys
_080E5FEC: .4byte gUnk_0203AD3C
_080E5FF0: .4byte 0xFFF7FFFF
_080E5FF4: .4byte 0x0400000A
_080E5FF8:
	ldr r0, [r7, #0xc]
	cmp r0, #0
	bne _080E6056
	movs r0, #0x10
	bl VramMalloc
	adds r3, r7, #0
	adds r3, #0xc
	str r0, [r7, #0xc]
	ldr r0, [r7, #0x14]
	ldr r1, _080E6028 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080E602C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r7, #1]
	mov r0, sp
	bl sub_0815521C
	b _080E6056
	.align 2, 0
_080E6028: .4byte 0xFFF7FFFF
_080E602C: .4byte 0x0400000A
_080E6030:
	ldr r1, [r7, #0xc]
	cmp r1, #0
	beq _080E604C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080E604C
	adds r0, r1, #0
	bl VramFree
	str r4, [r7, #0xc]
_080E604C:
	ldr r0, [r7, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r7, #0x14]
_080E6056:
	ldr r2, _080E6098 @ =gKirbys
	ldr r0, _080E609C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r6]
	cmp r0, r1
	bne _080E60A0
	adds r4, r7, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E60A8
	movs r5, #0xc3
	lsls r5, r5, #2
	adds r0, r5, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E60A8
	adds r0, r5, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080E60A8
	.align 2, 0
_080E6098: .4byte gKirbys
_080E609C: .4byte gUnk_0203AD3C
_080E60A0:
	adds r1, r7, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080E60A8:
	ldrh r0, [r7, #6]
	ldr r2, _080E613C @ =0x0000FBFF
	ands r2, r0
	strh r2, [r7, #6]
	mov r5, r8
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	orrs r1, r2
	ldr r0, _080E6140 @ =0x0000FFFE
	ands r1, r0
	strh r1, [r7, #6]
	ldr r0, [r5, #8]
	mvns r0, r0
	movs r2, #1
	ands r0, r2
	orrs r0, r1
	strh r0, [r7, #6]
	ldr r0, [r5, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r5, #0x44]
	str r0, [r7, #0x38]
	mov r0, r8
	adds r0, #0x54
	ldrb r1, [r0]
	adds r0, r7, #0
	adds r0, #0x40
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x55
	ldrb r0, [r0]
	adds r1, r7, #0
	adds r1, #0x41
	strb r0, [r1]
	ldr r3, [r7, #0x44]
	cmp r3, #0
	beq _080E6148
	ldrb r0, [r3]
	cmp r0, #0
	beq _080E610C
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E610C
	movs r0, #0
	str r0, [r7, #0x44]
	movs r3, #0
_080E610C:
	cmp r3, #0
	beq _080E6148
	ldr r0, _080E6144 @ =gUnk_03000510
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
	beq _080E61B4
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E61B4
	adds r0, r7, #0
	bl sub_0803DBC8
	b _080E6242
	.align 2, 0
_080E613C: .4byte 0x0000FBFF
_080E6140: .4byte 0x0000FFFE
_080E6144: .4byte gUnk_03000510
_080E6148:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _080E61AC @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r6]
	cmp r0, r1
	beq _080E6186
	movs r3, #1
	movs r5, #0x82
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E6186
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E6186
	movs r3, #3
	movs r5, #0xab
	lsls r5, r5, #3
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E6186
	movs r3, #4
_080E6186:
	ldr r0, _080E61B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E61B4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E61B4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080E6242
	.align 2, 0
_080E61AC: .4byte gKirbys
_080E61B0: .4byte gUnk_03000510
_080E61B4:
	ldrh r1, [r7, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #6]
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _080E61CE
	cmp r0, #7
	beq _080E61CE
	cmp r0, #0xc
	bls _080E61DA
_080E61CE:
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_080E61DA:
	adds r0, r7, #0
	bl sub_0806FAC8
	ldrh r1, [r7, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080E623C
	ldrh r1, [r7, #4]
	movs r0, #0x3f
	ands r0, r1
	cmp r0, #0
	bne _080E623C
	ldr r4, _080E6250 @ =gRngVal
	ldr r0, [r4]
	ldr r6, _080E6254 @ =0x00196225
	muls r0, r6, r0
	ldr r5, _080E6258 @ =0x3C6EF35F
	adds r0, r0, r5
	lsrs r1, r0, #0x10
	movs r3, #7
	ands r1, r3
	subs r1, #0x1b
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r5
	str r2, [r4]
	lsrs r2, r2, #0x10
	ands r2, r3
	subs r2, #3
	lsls r2, r2, #0x18
	asrs r2, r2, #0x18
	mov r0, r8
	bl sub_080E625C
	ldr r0, [r4]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r4]
	movs r5, #4
	ldrsh r2, [r7, r5]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r2, r2, r0
	strh r2, [r7, #4]
_080E623C:
	ldrh r0, [r7, #4]
	adds r0, #1
	strh r0, [r7, #4]
_080E6242:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E6250: .4byte gRngVal
_080E6254: .4byte 0x00196225
_080E6258: .4byte 0x3C6EF35F

	thumb_func_start sub_080E625C
sub_080E625C: @ 0x080E625C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080E6294 @ =sub_080E6320
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080E6298 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E629C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E62A4
	.align 2, 0
_080E6294: .4byte sub_080E6320
_080E6298: .4byte sub_0803DCCC
_080E629C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E62A4:
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
	movs r0, #0x80
	strh r0, [r5, #0x3e]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E62DC
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	subs r0, r0, r1
	b _080E62E4
_080E62DC:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
_080E62E4:
	str r0, [r5, #0x34]
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x38]
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
	ldr r2, _080E631C @ =0x06012000
	movs r3, #0xa8
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
_080E631C: .4byte 0x06012000

	thumb_func_start sub_080E6320
sub_080E6320: @ 0x080E6320
	push {r4, r5, r6, lr}
	ldr r2, _080E6340 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _080E6344
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E634C
	.align 2, 0
_080E6340: .4byte gCurTask
_080E6344:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E634C:
	adds r3, r0, #0
	ldrh r1, [r3, #6]
	movs r4, #0x80
	lsls r4, r4, #5
	adds r0, r4, #0
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	beq _080E6368
	ldr r0, [r5]
	bl TaskDestroy
	b _080E646A
_080E6368:
	ldr r1, [r3, #0x44]
	cmp r1, #0
	beq _080E63B4
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E6380
	ldr r0, [r1, #8]
	ands r0, r4
	cmp r0, #0
	beq _080E6380
	str r2, [r3, #0x44]
	movs r1, #0
_080E6380:
	cmp r1, #0
	beq _080E63B4
	ldr r0, _080E63B0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E6424
	ldrh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E6424
	adds r0, r3, #0
	bl sub_0803DBC8
	b _080E646A
	.align 2, 0
_080E63B0: .4byte gUnk_03000510
_080E63B4:
	adds r5, r3, #0
	movs r4, #0
	ldr r2, _080E641C @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r3, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080E63F6
	movs r4, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E63F6
	movs r4, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E63F6
	movs r4, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080E63F6
	movs r4, #4
_080E63F6:
	ldr r0, _080E6420 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r4
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E6424
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080E6424
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080E646A
	.align 2, 0
_080E641C: .4byte gKirbys
_080E6420: .4byte gUnk_03000510
_080E6424:
	ldrh r0, [r3, #6]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strh r1, [r3, #6]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080E644C
	movs r0, #0x3c
	ldrsh r1, [r3, r0]
	ldr r0, [r3, #0x34]
	adds r0, r0, r1
	str r0, [r3, #0x34]
	movs r6, #0x3e
	ldrsh r1, [r3, r6]
	ldr r0, [r3, #0x38]
	subs r0, r0, r1
	str r0, [r3, #0x38]
_080E644C:
	ldr r1, [r3, #0x38]
	movs r0, #0xe8
	lsls r0, r0, #8
	cmp r1, r0
	bgt _080E6464
	ldrh r0, [r3, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3, #6]
	b _080E646A
_080E6464:
	adds r0, r3, #0
	bl sub_0806FAC8
_080E646A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080E6470
sub_080E6470: @ 0x080E6470
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080E64A0 @ =sub_080E6550
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E64A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E64AC
	.align 2, 0
_080E64A0: .4byte sub_080E6550
_080E64A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E64AC:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080E6548 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E64FC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080E64FC:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080E654C @ =0x12010400
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E652A
	orrs r2, r3
_080E652A:
	str r2, [r4, #8]
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0x16
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #8
	movs r3, #0x1e
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E6548: .4byte gUnk_03000510
_080E654C: .4byte 0x12010400

	thumb_func_start sub_080E6550
sub_080E6550: @ 0x080E6550
	push {r4, r5, lr}
	ldr r2, _080E656C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E6570
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E6578
	.align 2, 0
_080E656C: .4byte gCurTask
_080E6570:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E6578:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E6592
	ldr r0, [r2]
	bl TaskDestroy
	b _080E668E
_080E6592:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E65A0
	orrs r1, r3
	str r1, [r4, #8]
	b _080E668E
_080E65A0:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080E65DC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E65E0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080E65E0
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080E668E
	.align 2, 0
_080E65DC: .4byte gUnk_03000510
_080E65E0:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E65F0
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080E65F8
_080E65F0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E65F8:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E668E
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080E661C
	ldr r0, _080E6618 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080E668E
	.align 2, 0
_080E6618: .4byte 0xFFFBFFFF
_080E661C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E668E
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080E668E
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080E6654
	ldr r2, _080E664C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080E6650 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080E6656
	.align 2, 0
_080E664C: .4byte gCurLevelInfo
_080E6650: .4byte 0x0000065E
_080E6654:
	movs r1, #0xff
_080E6656:
	cmp r1, #0xff
	beq _080E668E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080E6694 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080E6698 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080E668E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E6694: .4byte gUnk_02022EB0
_080E6698: .4byte gUnk_02022F50

	thumb_func_start CreateGobblerBaby
CreateGobblerBaby: @ 0x080E669C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E66D0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E66D4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E66D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E66E0
	.align 2, 0
_080E66D0: .4byte ObjectMain
_080E66D4: .4byte ObjectDestroy
_080E66D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E66E0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r5, r4, #0
	adds r5, #0xb0
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bhi _080E6744
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
_080E6744:
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E6754
	ldr r0, [r4, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
_080E6754:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E6780 @ =sub_0809F840
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080E79A4
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E6774
	adds r0, r4, #0
	bl sub_080E761C
_080E6774:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E6780: .4byte sub_0809F840

	thumb_func_start sub_080E6784
sub_080E6784: @ 0x080E6784
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r0
	ldr r0, [r0, #0x70]
	mov sl, r0
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _080E67B0
	cmp r0, #1
	ble _080E67AA
	cmp r0, #2
	beq _080E67B6
_080E67AA:
	movs r7, #0xe8
	movs r6, #0xf0
	b _080E67BA
_080E67B0:
	movs r7, #0xec
	movs r6, #0x1e
	b _080E67BA
_080E67B6:
	movs r7, #0xc
	movs r6, #0x18
_080E67BA:
	mov r1, sl
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E67CC
	lsls r0, r7, #0x18
	rsbs r0, r0, #0
	lsrs r7, r0, #0x18
_080E67CC:
	mov r0, ip
	adds r0, #0x83
	ldrb r1, [r0]
	str r0, [sp]
	cmp r1, #0
	bne _080E67E4
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	b _080E67FC
_080E67E4:
	lsls r0, r7, #0x18
	rsbs r0, r0, #0
	lsrs r7, r0, #0x18
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E67FC
	movs r0, #0
	ldr r5, [sp]
	strb r0, [r5]
_080E67FC:
	mov r1, ip
	adds r1, #0xac
	mov r0, sl
	str r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, ip
	adds r2, #0xa0
	movs r3, #0
	mov r8, r3
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	mov r4, ip
	adds r4, #0xa2
	strh r0, [r4]
	mov r0, sl
	adds r0, #0x83
	ldrb r1, [r0]
	mov sb, r2
	adds r5, r4, #0
	str r0, [sp, #4]
	cmp r1, #3
	blt _080E683E
	cmp r1, #4
	bgt _080E6834
	b _080E69A0
_080E6834:
	cmp r1, #0xf
	bgt _080E683E
	cmp r1, #0xe
	blt _080E683E
	b _080E6B00
_080E683E:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	mov r8, r2
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r2, _080E6884 @ =0xFFFFFC00
	ands r3, r2
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r6, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	ble _080E6888
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0xa
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x8c
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E68DA
	strh r2, [r4]
	b _080E68DA
	.align 2, 0
_080E6884: .4byte 0xFFFFFC00
_080E6888:
	cmp r3, r0
	bge _080E68AC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0xa
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E68A8 @ =0xFFFFFEE8
	adds r4, r1, #0
	cmp r0, r2
	bge _080E68DA
	strh r2, [r4]
	b _080E68DA
	.align 2, 0
_080E68A8: .4byte 0xFFFFFEE8
_080E68AC:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E68CC
	adds r0, r2, #6
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E68DA
	mov r5, r8
	strh r5, [r4]
	b _080E68DA
_080E68CC:
	subs r0, r2, #6
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E68DA
	mov r0, r8
	strh r0, [r4]
_080E68DA:
	mov r1, ip
	ldr r3, [r1, #0x40]
	ldr r2, _080E6920 @ =0xFFFFFC00
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E6928
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E691C
	b _080E6BFC
_080E691C:
	ldr r2, _080E6924 @ =0xFFFFFE80
	b _080E6C1C
	.align 2, 0
_080E6920: .4byte 0xFFFFFC00
_080E6924: .4byte 0xFFFFFE80
_080E6928:
	cmp r3, r0
	ble _080E697C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E695C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6958 @ =0xFFFFFE80
	cmp r0, r2
	bge _080E6952
	b _080E6BFC
_080E6952:
	movs r2, #0xc0
	lsls r2, r2, #1
	b _080E6BF8
	.align 2, 0
_080E6958: .4byte 0xFFFFFE80
_080E695C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E6974
	b _080E6BFC
_080E6974:
	ldr r2, _080E6978 @ =0xFFFFFE80
	b _080E6C1C
	.align 2, 0
_080E6978: .4byte 0xFFFFFE80
_080E697C:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E699A
	adds r0, r2, #0
	adds r0, #0x28
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E6998
	b _080E6C56
_080E6998:
	b _080E6C52
_080E699A:
	adds r0, r2, #0
	subs r0, #0x28
	b _080E6C4A
_080E69A0:
	lsls r1, r6, #0x18
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r2, _080E69E0 @ =0xFFFFFC00
	ands r3, r2
	movs r5, #0
	ldrsh r0, [r4, r5]
	asrs r1, r1, #0x19
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080E69E4
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E6A3A
	strh r2, [r4]
	b _080E6A3A
	.align 2, 0
_080E69E0: .4byte 0xFFFFFC00
_080E69E4:
	cmp r3, r0
	bge _080E6A08
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6A04 @ =0xFFFFFEE0
	adds r4, r1, #0
	cmp r0, r2
	bge _080E6A3A
	strh r2, [r4]
	b _080E6A3A
	.align 2, 0
_080E6A04: .4byte 0xFFFFFEE0
_080E6A08:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E6A2A
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6A3A
	mov r5, r8
	strh r5, [r4]
	b _080E6A3A
_080E6A2A:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6A3A
	mov r0, r8
	strh r0, [r4]
_080E6A3A:
	mov r1, ip
	ldr r3, [r1, #0x40]
	ldr r2, _080E6A80 @ =0xFFFFFC00
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E6A88
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x88
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E6A7C
	b _080E6BFC
_080E6A7C:
	ldr r2, _080E6A84 @ =0xFFFFFDE0
	b _080E6C1C
	.align 2, 0
_080E6A80: .4byte 0xFFFFFC00
_080E6A84: .4byte 0xFFFFFDE0
_080E6A88:
	cmp r3, r0
	ble _080E6ADC
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E6ABC
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6AB8 @ =0xFFFFFDE0
	cmp r0, r2
	bge _080E6AB2
	b _080E6BFC
_080E6AB2:
	movs r2, #0x88
	lsls r2, r2, #2
	b _080E6BF8
	.align 2, 0
_080E6AB8: .4byte 0xFFFFFDE0
_080E6ABC:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x18
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x88
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E6AD4
	b _080E6BFC
_080E6AD4:
	ldr r2, _080E6AD8 @ =0xFFFFFDE0
	b _080E6C1C
	.align 2, 0
_080E6AD8: .4byte 0xFFFFFDE0
_080E6ADC:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E6AFA
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080E6AF8
	b _080E6C56
_080E6AF8:
	b _080E6C52
_080E6AFA:
	adds r0, r2, #0
	subs r0, #0x60
	b _080E6C4A
_080E6B00:
	lsls r1, r6, #0x18
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r2, _080E6B40 @ =0xFFFFFC00
	ands r3, r2
	movs r5, #0
	ldrsh r0, [r4, r5]
	asrs r1, r1, #0x19
	adds r0, r0, r1
	lsls r0, r0, #8
	ands r0, r2
	cmp r3, r0
	ble _080E6B44
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080E6B9A
	strh r2, [r4]
	b _080E6B9A
	.align 2, 0
_080E6B40: .4byte 0xFFFFFC00
_080E6B44:
	cmp r3, r0
	bge _080E6B68
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6B64 @ =0xFFFFFF00
	adds r4, r1, #0
	cmp r0, r2
	bge _080E6B9A
	strh r2, [r4]
	b _080E6B9A
	.align 2, 0
_080E6B64: .4byte 0xFFFFFF00
_080E6B68:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080E6B8A
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6B9A
	mov r5, r8
	strh r5, [r4]
	b _080E6B9A
_080E6B8A:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6B9A
	mov r0, r8
	strh r0, [r4]
_080E6B9A:
	mov r1, ip
	ldr r3, [r1, #0x40]
	ldr r2, _080E6BC8 @ =0xFFFFFC00
	ands r3, r2
	mov r5, sb
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080E6BCC
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080E6C04
	.align 2, 0
_080E6BC8: .4byte 0xFFFFFC00
_080E6BCC:
	cmp r3, r0
	ble _080E6C28
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E6C04
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x48
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6C00 @ =0xFFFFFD20
	cmp r0, r2
	blt _080E6BFC
	movs r2, #0xb8
	lsls r2, r2, #2
_080E6BF8:
	cmp r0, r2
	ble _080E6C56
_080E6BFC:
	strh r2, [r1]
	b _080E6C56
	.align 2, 0
_080E6C00: .4byte 0xFFFFFD20
_080E6C04:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x48
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xb8
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E6BFC
	ldr r2, _080E6C24 @ =0xFFFFFD20
_080E6C1C:
	cmp r0, r2
	bge _080E6C56
	b _080E6BFC
	.align 2, 0
_080E6C24: .4byte 0xFFFFFD20
_080E6C28:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080E6C46
	movs r3, #0xa0
	lsls r3, r3, #1
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6C56
	b _080E6C52
_080E6C46:
	ldr r5, _080E6CD4 @ =0xFFFFFEC0
	adds r0, r2, r5
_080E6C4A:
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6C56
_080E6C52:
	movs r0, #0
	strh r0, [r1]
_080E6C56:
	mov r0, ip
	ldr r2, [r0, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	mov r1, ip
	str r2, [r1, #8]
	mov r3, sl
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	orrs r2, r0
	mov r5, ip
	str r2, [r5, #8]
	ldr r1, [sp, #4]
	ldrb r0, [r1]
	cmp r0, #1
	bne _080E6C90
	ldrb r0, [r3, #1]
	cmp r0, #0xe
	bne _080E6C90
	movs r0, #2
	ldr r2, [sp]
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080E6C90:
	adds r2, r4, #0
	movs r3, #0
	ldrsh r1, [r2, r3]
	mov r5, ip
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	movs r1, #0xee
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E6CAA
	movs r0, #0
	strh r0, [r2]
	str r1, [r5, #0x44]
_080E6CAA:
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r2, ip
	ldr r1, [r2, #0x44]
	subs r1, r1, r0
	ldr r0, _080E6CD8 @ =0x000129FF
	cmp r1, r0
	ble _080E6CC4
	movs r0, #0
	strh r0, [r4]
	movs r0, #0x95
	lsls r0, r0, #9
	str r0, [r2, #0x44]
_080E6CC4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E6CD4: .4byte 0xFFFFFEC0
_080E6CD8: .4byte 0x000129FF

	thumb_func_start sub_080E6CDC
sub_080E6CDC: @ 0x080E6CDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #0x78]
	ldr r0, _080E6D34 @ =sub_080E6784
	cmp r1, r0
	bne _080E6D44
	ldr r2, _080E6D38 @ =sub_080E6D4C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D5CC
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r1, [r0, #0xe]
	cmp r1, #1
	bne _080E6D3C
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	b _080E6D44
	.align 2, 0
_080E6D34: .4byte sub_080E6784
_080E6D38: .4byte sub_080E6D4C
_080E6D3C:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
	strb r0, [r1]
_080E6D44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E6D4C
sub_080E6D4C: @ 0x080E6D4C
	push {r4, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r2, r0, #0
	cmp r2, #0
	bne _080E6DDC
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xb
	bgt _080E6DC0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E6D9C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E6D8C @ =0xFFFFFF00
	cmp r2, r0
	bge _080E6D90
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _080E6DC6
	.align 2, 0
_080E6D8C: .4byte 0xFFFFFF00
_080E6D90:
	movs r0, #0x80
	lsls r0, r0, #1
	cmp r2, r0
	ble _080E6DC6
	strh r0, [r1]
	b _080E6DC6
_080E6D9C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E6DB8
	ldr r2, _080E6DBC @ =0xFFFFFF00
	cmp r0, r2
	bge _080E6DC6
_080E6DB8:
	strh r2, [r1]
	b _080E6DC6
	.align 2, 0
_080E6DBC: .4byte 0xFFFFFF00
_080E6DC0:
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080E6DC6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080E6DE0
	adds r0, r4, #0
	bl sub_080E7CA8
	b _080E6DE0
_080E6DDC:
	subs r0, #1
	strb r0, [r1]
_080E6DE0:
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	movs r1, #0xee
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E6DFA
	movs r0, #0
	strh r0, [r2]
	str r1, [r4, #0x44]
_080E6DFA:
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x44]
	subs r1, r1, r0
	ldr r0, _080E6E18 @ =0x000129FF
	cmp r1, r0
	ble _080E6E12
	movs r0, #0
	strh r0, [r2]
	movs r0, #0x95
	lsls r0, r0, #9
	str r0, [r4, #0x44]
_080E6E12:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E6E18: .4byte 0x000129FF

	thumb_func_start sub_080E6E1C
sub_080E6E1C: @ 0x080E6E1C
	push {r4, lr}
	mov ip, r0
	ldr r1, [r0, #8]
	movs r0, #4
	orrs r1, r0
	mov r0, ip
	str r1, [r0, #8]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080E6F14
	ands r1, r0
	cmp r1, #0
	beq _080E6E68
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	ldr r0, _080E6E54 @ =0xFFFFFDC0
	cmp r2, r0
	bge _080E6E5C
	ldr r0, _080E6E58 @ =0x0000FDC0
	strh r0, [r1]
	b _080E6E86
	.align 2, 0
_080E6E54: .4byte 0xFFFFFDC0
_080E6E58: .4byte 0x0000FDC0
_080E6E5C:
	movs r0, #0x90
	lsls r0, r0, #2
	cmp r2, r0
	ble _080E6E86
	strh r0, [r1]
	b _080E6E86
_080E6E68:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E6E84
	ldr r2, _080E6EB8 @ =0xFFFFFDC0
	cmp r0, r2
	bge _080E6E86
_080E6E84:
	strh r2, [r1]
_080E6E86:
	mov r0, ip
	adds r0, #0xac
	ldr r1, [r0]
	mov r3, ip
	ldr r2, [r3, #0x44]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r2, r4
	ldr r1, [r1, #0x44]
	cmp r1, r0
	blt _080E6EC4
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x20
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080E6EBC @ =0xFE800000
	adds r3, r0, #0
	cmp r1, r2
	blt _080E6EB2
	b _080E6FEA
_080E6EB2:
	ldr r0, _080E6EC0 @ =0x0000FE80
	b _080E6FE8
	.align 2, 0
_080E6EB8: .4byte 0xFFFFFDC0
_080E6EBC: .4byte 0xFE800000
_080E6EC0: .4byte 0x0000FE80
_080E6EC4:
	ldr r3, _080E6EEC @ =0xFFFFF800
	adds r0, r2, r3
	cmp r1, r0
	bgt _080E6EF0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r3, r1, #0
	cmp r0, r2
	bgt _080E6EE6
	b _080E6FEA
_080E6EE6:
	strh r2, [r3]
	b _080E6FEA
	.align 2, 0
_080E6EEC: .4byte 0xFFFFF800
_080E6EF0:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r3, r0, #0
	cmp r1, #0
	bge _080E6F0E
	adds r0, r2, #0
	adds r0, #0x12
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6FEA
	b _080E6FE6
_080E6F0E:
	adds r0, r2, #0
	subs r0, #0x12
	b _080E6FDE
_080E6F14:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E6F40
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E6F3C @ =0xFFFFFD30
	cmp r0, r2
	blt _080E6F5C
	movs r2, #0xb4
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E6F5E
	b _080E6F5C
	.align 2, 0
_080E6F3C: .4byte 0xFFFFFD30
_080E6F40:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x40
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xb4
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080E6F5C
	ldr r2, _080E6F8C @ =0xFFFFFD30
	cmp r0, r2
	bge _080E6F5E
_080E6F5C:
	strh r2, [r1]
_080E6F5E:
	mov r0, ip
	adds r0, #0xac
	ldr r1, [r0]
	mov r0, ip
	ldr r2, [r0, #0x44]
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r2, r3
	ldr r1, [r1, #0x44]
	cmp r1, r0
	blt _080E6F98
	mov r0, ip
	adds r0, #0x52
	ldrh r1, [r0]
	subs r1, #0x10
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r2, _080E6F90 @ =0xFF300000
	adds r3, r0, #0
	cmp r1, r2
	bge _080E6FEA
	ldr r0, _080E6F94 @ =0x0000FF30
	b _080E6FE8
	.align 2, 0
_080E6F8C: .4byte 0xFFFFFD30
_080E6F90: .4byte 0xFF300000
_080E6F94: .4byte 0x0000FF30
_080E6F98:
	ldr r4, _080E6FB8 @ =0xFFFFF800
	adds r0, r2, r4
	cmp r1, r0
	bgt _080E6FBC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r3, r1, #0
	cmp r0, #0xd0
	ble _080E6FEA
	movs r0, #0xd0
	b _080E6FE8
	.align 2, 0
_080E6FB8: .4byte 0xFFFFF800
_080E6FBC:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r3, r0, #0
	cmp r1, #0
	bge _080E6FDA
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E6FEA
	b _080E6FE6
_080E6FDA:
	adds r0, r2, #0
	subs r0, #8
_080E6FDE:
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E6FEA
_080E6FE6:
	movs r0, #0
_080E6FE8:
	strh r0, [r3]
_080E6FEA:
	adds r2, r3, #0
	movs r4, #0
	ldrsh r1, [r2, r4]
	mov r4, ip
	ldr r0, [r4, #0x44]
	subs r0, r0, r1
	movs r1, #0xee
	lsls r1, r1, #8
	cmp r0, r1
	bgt _080E7004
	movs r0, #0
	strh r0, [r2]
	str r1, [r4, #0x44]
_080E7004:
	movs r1, #0
	ldrsh r0, [r3, r1]
	mov r2, ip
	ldr r1, [r2, #0x44]
	subs r1, r1, r0
	ldr r0, _080E7024 @ =0x000129FF
	cmp r1, r0
	ble _080E701E
	movs r0, #0
	strh r0, [r3]
	movs r0, #0x95
	lsls r0, r0, #9
	str r0, [r2, #0x44]
_080E701E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7024: .4byte 0x000129FF

	thumb_func_start sub_080E7028
sub_080E7028: @ 0x080E7028
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #0x78]
	ldr r0, _080E7068 @ =sub_080E6784
	cmp r1, r0
	beq _080E7038
	b _080E7142
_080E7038:
	ldr r2, _080E706C @ =sub_080E7148
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E70C4
	ldr r2, _080E7070 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E7074 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E7078 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E707C @ =0x00005554
	cmp r2, r0
	bhi _080E7080
	movs r1, #0
	b _080E708A
	.align 2, 0
_080E7068: .4byte sub_080E6784
_080E706C: .4byte sub_080E7148
_080E7070: .4byte gRngVal
_080E7074: .4byte 0x00196225
_080E7078: .4byte 0x3C6EF35F
_080E707C: .4byte 0x00005554
_080E7080:
	ldr r0, _080E7098 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E708A
	movs r1, #1
_080E708A:
	cmp r1, #1
	beq _080E70AA
	cmp r1, #1
	bgt _080E709C
	cmp r1, #0
	beq _080E70A2
	b _080E70BC
	.align 2, 0
_080E7098: .4byte 0x0000AAA9
_080E709C:
	cmp r1, #2
	beq _080E70B2
	b _080E70BC
_080E70A2:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0xc0
	b _080E70BA
_080E70AA:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0xe0
	b _080E70BA
_080E70B2:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x88
	lsls r0, r0, #1
_080E70BA:
	strh r0, [r1]
_080E70BC:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080E7138
_080E70C4:
	ldr r2, _080E70E0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E70E4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E70E8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E70EC @ =0x00005554
	cmp r2, r0
	bhi _080E70F0
	movs r1, #0
	b _080E70FA
	.align 2, 0
_080E70E0: .4byte gRngVal
_080E70E4: .4byte 0x00196225
_080E70E8: .4byte 0x3C6EF35F
_080E70EC: .4byte 0x00005554
_080E70F0:
	ldr r0, _080E7108 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E70FA
	movs r1, #1
_080E70FA:
	cmp r1, #1
	beq _080E7120
	cmp r1, #1
	bgt _080E710C
	cmp r1, #0
	beq _080E7112
	b _080E7130
	.align 2, 0
_080E7108: .4byte 0x0000AAA9
_080E710C:
	cmp r1, #2
	beq _080E7128
	b _080E7130
_080E7112:
	adds r1, r4, #0
	adds r1, #0xa0
	ldr r0, _080E711C @ =0x0000FFF0
	b _080E712E
	.align 2, 0
_080E711C: .4byte 0x0000FFF0
_080E7120:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x20
	b _080E712E
_080E7128:
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0x40
_080E712E:
	strh r0, [r1]
_080E7130:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E7138:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	movs r0, #0xee
	strh r0, [r1]
_080E7142:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080E7148
sub_080E7148: @ 0x080E7148
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r5, #1
	ands r5, r0
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r4, #0
	strb r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x44]
	ldr r1, _080E7198 @ =0xFFFFFC00
	ands r3, r1
	mov r0, ip
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080E719C
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x90
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E71E6
	strh r2, [r1]
	b _080E71E6
	.align 2, 0
_080E7198: .4byte 0xFFFFFC00
_080E719C:
	cmp r3, r2
	bge _080E71BC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E71B8 @ =0xFFFFFEE0
	cmp r0, r2
	bge _080E71E6
	strh r2, [r1]
	b _080E71E6
	.align 2, 0
_080E71B8: .4byte 0xFFFFFEE0
_080E71BC:
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E71D8
	adds r0, r2, #0
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E71E6
	b _080E71E4
_080E71D8:
	adds r0, r2, #0
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E71E6
_080E71E4:
	strh r4, [r1]
_080E71E6:
	mov r0, ip
	ldr r3, [r0, #0x40]
	ldr r0, _080E720C @ =0xFFFFFC00
	ands r3, r0
	mov r1, ip
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080E7210
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	b _080E724C
	.align 2, 0
_080E720C: .4byte 0xFFFFFC00
_080E7210:
	cmp r3, r2
	ble _080E7270
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080E724C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080E7248 @ =0xFFFFFE80
	cmp r0, r2
	blt _080E7242
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080E729C
_080E7242:
	strh r2, [r1]
	b _080E729C
	.align 2, 0
_080E7248: .4byte 0xFFFFFE80
_080E724C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xe
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080E7242
	ldr r2, _080E726C @ =0xFFFFFE80
	cmp r0, r2
	bge _080E729C
	b _080E7242
	.align 2, 0
_080E726C: .4byte 0xFFFFFE80
_080E7270:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080E728C
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080E729C
	b _080E7298
_080E728C:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080E729C
_080E7298:
	movs r0, #0
	strh r0, [r1]
_080E729C:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	orrs r0, r5
	mov r2, ip
	str r0, [r2, #8]
	ldr r0, [r2, #0x50]
	cmp r0, #0
	bne _080E72B8
	mov r0, ip
	bl sub_080E7CBC
_080E72B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E72C0
sub_080E72C0: @ 0x080E72C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov r8, r0
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r7, _080E738C @ =gUnk_08356B88
	cmp r0, #0
	bne _080E73C2
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r6, r1, #0
	cmp r0, #0
	bne _080E72F8
	subs r0, r2, #1
	strb r0, [r6]
_080E72F8:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	movs r2, #0x83
	adds r2, r2, r4
	mov ip, r2
	cmp r0, #0xff
	beq _080E7320
	strb r1, [r2]
_080E7320:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080E7390
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080E735C
	adds r2, r4, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E735C
	rsbs r0, r3, #0
	strh r0, [r2]
_080E735C:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r2, [r0]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r7
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080E73C2
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080E73C2
	.align 2, 0
_080E738C: .4byte gUnk_08356B88
_080E7390:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r3, r4, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r5, [r0]
	adds r2, r4, #0
	adds r2, #0x50
	strh r5, [r2]
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E73F2
	rsbs r0, r5, #0
	strh r0, [r2]
_080E73C2:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r1, r0
	adds r6, r4, #0
	adds r6, #0x9f
	movs r0, #0x83
	adds r0, r0, r4
	mov ip, r0
	adds r2, r4, #0
	adds r2, #0x50
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080E73F2
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080E7404
_080E73F2:
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080E7404:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	mov r3, ip
	ldrb r0, [r3]
	adds r5, r1, #0
	cmp r0, #2
	bne _080E747C
	mov r1, r8
	ldr r0, [r1, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080E7444
	ldr r0, _080E7440 @ =0x00003FFF
	cmp r2, r0
	ble _080E744C
	b _080E7450
	.align 2, 0
_080E7440: .4byte 0x00003FFF
_080E7444:
	subs r1, r1, r0
	ldr r0, _080E7474 @ =0x00003FFF
	cmp r1, r0
	bgt _080E7450
_080E744C:
	movs r0, #1
	strh r0, [r4, #4]
_080E7450:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E747C
	adds r3, r4, #0
	adds r3, #0x85
	ldrb r0, [r3]
	cmp r0, #0
	beq _080E7478
	movs r0, #0
	mov r2, ip
	strb r0, [r2]
	ldr r1, [r4, #8]
	movs r2, #1
	eors r1, r2
	str r1, [r4, #8]
	b _080E747A
	.align 2, 0
_080E7474: .4byte 0x00003FFF
_080E7478:
	movs r0, #1
_080E747A:
	strb r0, [r3]
_080E747C:
	ldrb r2, [r6]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080E74DA
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E74DA
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	beq _080E74D4
	ldr r0, [r4, #0xc]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	ldr r2, _080E74CC @ =sub_080E6784
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080E74D0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	b _080E74DA
	.align 2, 0
_080E74CC: .4byte sub_080E6784
_080E74D0: .4byte 0xFDFFFFFF
_080E74D4:
	movs r0, #0xff
	orrs r0, r2
	strb r0, [r6]
_080E74DA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E74E4
sub_080E74E4: @ 0x080E74E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E7532
	ldrb r0, [r6]
	cmp r0, #0
	bne _080E7532
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080E7532
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080E7532
	cmp r0, #0x7a
	bhi _080E7532
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080E7532
	ldr r4, [r6, #8]
	ldr r0, _080E7538 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080E753C
_080E7532:
	movs r0, #0
	b _080E75F0
	.align 2, 0
_080E7538: .4byte 0x03800B00
_080E753C:
	ldr r2, _080E75FC @ =sub_080E7CF4
	adds r0, r5, #0
	movs r1, #7
	bl ObjectSetFunc
	adds r2, r5, #0
	adds r2, #0x50
	movs r0, #0
	strh r4, [r2]
	adds r1, r5, #0
	adds r1, #0x52
	strh r4, [r1]
	adds r1, #0x4d
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	ldr r0, _080E7600 @ =gUnk_08356B00
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	str r6, [r5, #0x6c]
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E7584
	rsbs r0, r3, #0
	strh r0, [r2]
_080E7584:
	ldr r1, _080E7604 @ =gKirbys
	ldr r0, _080E7608 @ =gUnk_0203AD3C
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
	bne _080E75EE
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E75B0
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E75EE
_080E75B0:
	ldr r1, _080E760C @ =gUnk_08D60FA4
	ldr r4, _080E7610 @ =gSongTable
	ldr r2, _080E7614 @ =0x00000C34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E75D6
	movs r1, #0xc3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E75EE
_080E75D6:
	cmp r3, #0
	beq _080E75E6
	ldr r0, _080E7618 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080E75EE
_080E75E6:
	movs r0, #0xc3
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E75EE:
	movs r0, #1
_080E75F0:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080E75FC: .4byte sub_080E7CF4
_080E7600: .4byte gUnk_08356B00
_080E7604: .4byte gKirbys
_080E7608: .4byte gUnk_0203AD3C
_080E760C: .4byte gUnk_08D60FA4
_080E7610: .4byte gSongTable
_080E7614: .4byte 0x00000C34
_080E7618: .4byte gUnk_0203AD10

	thumb_func_start sub_080E761C
sub_080E761C: @ 0x080E761C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080E764C @ =sub_080E76FC
	movs r2, #0xd4
	lsls r2, r2, #6
	movs r1, #0
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E7650
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E7658
	.align 2, 0
_080E764C: .4byte sub_080E76FC
_080E7650:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E7658:
	adds r4, r0, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080E76F4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E76A8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080E76A8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	ldr r2, _080E76F8 @ =0x12010400
	str r2, [r4, #8]
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E76D6
	orrs r2, r3
_080E76D6:
	str r2, [r4, #8]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xc
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E76F4: .4byte gUnk_03000510
_080E76F8: .4byte 0x12010400

	thumb_func_start sub_080E76FC
sub_080E76FC: @ 0x080E76FC
	push {r4, r5, lr}
	ldr r2, _080E7718 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E771C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E7724
	.align 2, 0
_080E7718: .4byte gCurTask
_080E771C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E7724:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080E773E
	ldr r0, [r2]
	bl TaskDestroy
	b _080E783A
_080E773E:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080E774C
	orrs r1, r3
	str r1, [r4, #8]
	b _080E783A
_080E774C:
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080E7788 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080E778C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080E778C
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080E783A
	.align 2, 0
_080E7788: .4byte gUnk_03000510
_080E778C:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E779C
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080E77A4
_080E779C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080E77A4:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #3
	bne _080E783A
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080E77C8
	ldr r0, _080E77C4 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080E783A
	.align 2, 0
_080E77C4: .4byte 0xFFFBFFFF
_080E77C8:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080E783A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080E783A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080E7800
	ldr r2, _080E77F8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080E77FC @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080E7802
	.align 2, 0
_080E77F8: .4byte gCurLevelInfo
_080E77FC: .4byte 0x0000065E
_080E7800:
	movs r1, #0xff
_080E7802:
	cmp r1, #0xff
	beq _080E783A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080E7840 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080E7844 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080E783A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E7840: .4byte gUnk_02022EB0
_080E7844: .4byte gUnk_02022F50

	thumb_func_start sub_080E7848
sub_080E7848: @ 0x080E7848
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	mov sl, r5
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	movs r4, #0
	ldr r1, _080E7878 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E787C @ =gUnk_020229E0
	mov ip, r7
	b _080E7894
	.align 2, 0
_080E7878: .4byte gUnk_020229D4
_080E787C: .4byte gUnk_020229E0
_080E7880:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E789C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E7894:
	cmp r0, #0
	bne _080E7880
	orrs r2, r3
	str r2, [r1]
_080E789C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, r8
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0x9f
	strb r0, [r1, #0xc]
	strb r6, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0x10]
	strb r0, [r1, #0x10]
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
	adds r4, r5, #0
	adds r4, #0x56
	ldrb r0, [r4]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	cmp r6, #1
	beq _080E7908
	cmp r6, #1
	ble _080E7902
	cmp r6, #2
	beq _080E790E
_080E7902:
	mov r0, sl
	adds r0, #0xb4
	b _080E7912
_080E7908:
	mov r0, sl
	adds r0, #0xb8
	b _080E7912
_080E790E:
	mov r0, sl
	adds r0, #0xbc
_080E7912:
	str r1, [r0]
	ldr r1, _080E798C @ =gKirbys
	ldr r0, _080E7990 @ =gUnk_0203AD3C
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
	bne _080E797C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080E793C
	ldrb r0, [r4]
	cmp r0, r2
	bne _080E797C
_080E793C:
	ldr r1, _080E7994 @ =gUnk_08D60FA4
	ldr r4, _080E7998 @ =gSongTable
	ldr r2, _080E799C @ =0x00000CE4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E7962
	movs r7, #0xce
	lsls r7, r7, #4
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E797C
_080E7962:
	cmp r3, #0
	beq _080E7974
	ldr r0, _080E79A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E797C
_080E7974:
	movs r0, #0xce
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E797C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E798C: .4byte gKirbys
_080E7990: .4byte gUnk_0203AD3C
_080E7994: .4byte gUnk_08D60FA4
_080E7998: .4byte gSongTable
_080E799C: .4byte 0x00000CE4
_080E79A0: .4byte gUnk_0203AD10

	thumb_func_start sub_080E79A4
sub_080E79A4: @ 0x080E79A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E79CC @ =sub_080E6784
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080E79D0 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E79CC: .4byte sub_080E6784
_080E79D0: .4byte 0xFDFFFFFF

	thumb_func_start sub_080E79D4
sub_080E79D4: @ 0x080E79D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E79F4 @ =sub_080E3FFC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E79F4: .4byte sub_080E3FFC

	thumb_func_start sub_080E79F8
sub_080E79F8: @ 0x080E79F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7A14 @ =sub_080E5290
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7A14: .4byte sub_080E5290

	thumb_func_start sub_080E7A18
sub_080E7A18: @ 0x080E7A18
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7A34 @ =sub_080E5760
	movs r1, #0xf
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7A34: .4byte sub_080E5760

	thumb_func_start sub_080E7A38
sub_080E7A38: @ 0x080E7A38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7A4C
	adds r0, r2, #0
	bl sub_080E7A50
_080E7A4C:
	pop {r0}
	bx r0

	thumb_func_start sub_080E7A50
sub_080E7A50: @ 0x080E7A50
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r4, [r0]
	ldr r2, _080E7A78 @ =sub_080E7A80
	adds r0, r5, #0
	movs r1, #6
	bl ObjectSetFunc
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r4, r0
	ldr r0, _080E7A7C @ =gUnk_08356AD8
	str r0, [r4]
	movs r0, #0x10
	strh r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E7A78: .4byte sub_080E7A80
_080E7A7C: .4byte gUnk_08356AD8

	thumb_func_start sub_080E7A80
sub_080E7A80: @ 0x080E7A80
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E7A96
	adds r0, r1, #0
	bl sub_080E7A9C
_080E7A96:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E7A9C
sub_080E7A9C: @ 0x080E7A9C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7AB8 @ =sub_080E7ABC
	movs r1, #7
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7AB8: .4byte sub_080E7ABC

	thumb_func_start sub_080E7ABC
sub_080E7ABC: @ 0x080E7ABC
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	adds r4, r2, #0
	adds r4, #0x83
	ldrb r0, [r4]
	cmp r0, #7
	bne _080E7AF0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7B06
	movs r0, #8
	strb r0, [r4]
	movs r0, #0x10
	strh r0, [r2, #4]
	movs r0, #0x88
	lsls r0, r0, #1
	adds r1, r3, r0
	ldr r0, _080E7AEC @ =gUnk_08356AF0
	str r0, [r1]
	b _080E7B06
	.align 2, 0
_080E7AEC: .4byte gUnk_08356AF0
_080E7AF0:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E7B06
	adds r0, r2, #0
	bl sub_080E4BD0
	movs r0, #4
	strb r0, [r4]
_080E7B06:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E7B0C
sub_080E7B0C: @ 0x080E7B0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7B34 @ =sub_080E7B38
	movs r1, #9
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7B34: .4byte sub_080E7B38

	thumb_func_start sub_080E7B38
sub_080E7B38: @ 0x080E7B38
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7B4C
	adds r0, r2, #0
	bl sub_080E59B4
_080E7B4C:
	pop {r0}
	bx r0

	thumb_func_start sub_080E7B50
sub_080E7B50: @ 0x080E7B50
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7B78 @ =sub_080E5AC4
	movs r1, #0xb
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #2
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7B78: .4byte sub_080E5AC4

	thumb_func_start sub_080E7B7C
sub_080E7B7C: @ 0x080E7B7C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7BA0 @ =sub_080E5B8C
	movs r1, #0xc
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BA0: .4byte sub_080E5B8C

	thumb_func_start sub_080E7BA4
sub_080E7BA4: @ 0x080E7BA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7BC8 @ =sub_080E45BC
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BC8: .4byte sub_080E45BC

	thumb_func_start sub_080E7BCC
sub_080E7BCC: @ 0x080E7BCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7BFC @ =sub_080E4784
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	adds r4, #0x9f
	movs r0, #0x12
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7BFC: .4byte sub_080E4784

	thumb_func_start sub_080E7C00
sub_080E7C00: @ 0x080E7C00
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7C4C @ =sub_080E5D04
	movs r1, #0x11
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080E7C50 @ =0x0000FFC0
	strh r0, [r1]
	movs r0, #0x78
	strh r0, [r4, #4]
	movs r1, #9
	rsbs r1, r1, #0
	adds r0, r4, #0
	movs r2, #4
	bl sub_080E625C
	movs r1, #8
	rsbs r1, r1, #0
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	bl sub_080E625C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7C4C: .4byte sub_080E5D04
_080E7C50: .4byte 0x0000FFC0

	thumb_func_start sub_080E7C54
sub_080E7C54: @ 0x080E7C54
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0xb4
	ldr r0, [r3]
	cmp r0, #0
	beq _080E7C72
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E7C72
	movs r0, #0
	str r0, [r3]
_080E7C72:
	adds r3, r2, #0
	adds r3, #0xb8
	ldr r0, [r3]
	cmp r0, #0
	beq _080E7C8C
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E7C8C
	movs r0, #0
	str r0, [r3]
_080E7C8C:
	adds r2, #0xbc
	ldr r0, [r2]
	cmp r0, #0
	beq _080E7CA4
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080E7CA4
	movs r0, #0
	str r0, [r2]
_080E7CA4:
	pop {r0}
	bx r0

	thumb_func_start sub_080E7CA8
sub_080E7CA8: @ 0x080E7CA8
	push {lr}
	ldr r2, _080E7CB8 @ =sub_080E6E1C
	movs r1, #3
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080E7CB8: .4byte sub_080E6E1C

	thumb_func_start sub_080E7CBC
sub_080E7CBC: @ 0x080E7CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7CF0 @ =sub_080E72C0
	movs r1, #6
	bl ObjectSetFunc
	ldr r1, [r4, #8]
	movs r0, #0x40
	orrs r1, r0
	subs r0, #0x61
	ands r1, r0
	ldr r0, [r4, #0xc]
	movs r2, #2
	orrs r0, r2
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r1, r0
	str r1, [r4, #8]
	adds r4, #0x85
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7CF0: .4byte sub_080E72C0

	thumb_func_start sub_080E7CF4
sub_080E7CF4: @ 0x080E7CF4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0xf
	bne _080E7D06
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080E7D06:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E7D16
	adds r0, r2, #0
	bl sub_080E7D1C
_080E7D16:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E7D1C
sub_080E7D1C: @ 0x080E7D1C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E7D34 @ =sub_080E7D38
	movs r1, #8
	bl ObjectSetFunc
	movs r0, #0x10
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7D34: .4byte sub_080E7D38

	thumb_func_start sub_080E7D38
sub_080E7D38: @ 0x080E7D38
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E7D66
	ldr r2, _080E7D6C @ =sub_080E6784
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	ldr r1, _080E7D70 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r4, #8]
_080E7D66:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E7D6C: .4byte sub_080E6784
_080E7D70: .4byte 0xFDFFFFFF
