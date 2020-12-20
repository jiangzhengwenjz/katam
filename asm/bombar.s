	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateBombar
CreateBombar: @ 0x080D7988
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080D79BC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D79C0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D79C4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D79CC
	.align 2, 0
_080D79BC: .4byte ObjectMain
_080D79C0: .4byte ObjectDestroy
_080D79C4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D79CC:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r2, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	ldr r0, [r6, #0xc]
	movs r1, #4
	orrs r0, r1
	movs r3, #1
	orrs r0, r3
	str r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x5c]
	subs r1, #0xc
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r6, #0x5c]
	adds r0, r6, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D7A1C
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _080D7A1E
_080D7A1C:
	orrs r2, r3
_080D7A1E:
	str r2, [r6, #8]
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #0x14
	bl sub_0803E2B0
	movs r1, #8
	rsbs r1, r1, #0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r6, #0
	movs r2, #8
	movs r3, #8
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080D9F54
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080D7A6C
sub_080D7A6C: @ 0x080D7A6C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	mov sl, r1
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D7A9E
	b _080D7C2E
_080D7A9E:
	adds r0, r5, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080D7AB2
	b _080D7C2E
_080D7AB2:
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r3, #0xb0
	adds r3, r3, r5
	mov r8, r3
	ldr r4, [r3]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D7AE2
	b _080D7C2E
_080D7AE2:
	ldr r4, _080D7C40 @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r6, #0xcd
	lsls r6, r6, #3
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r1, r4, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xaa
	strh r0, [r1]
	ldr r0, [r5, #8]
	ldr r1, _080D7C44 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_080D9E94
	movs r0, #0x5a
	strh r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080D7B6A
	movs r0, #0
	strb r0, [r1, #9]
_080D7B6A:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r4
	ldr r2, _080D7C48 @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080D7C2E
	ldr r0, _080D7C4C @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080D7C2E
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080D7C2E
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080D7BEC
	movs r4, #1
_080D7BB4:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080D7BB4
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080D7BEC:
	ldr r1, _080D7C4C @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080D7C50 @ =gKirbys
	ldr r0, _080D7C54 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sb
	ldrh r2, [r2]
	cmp r0, r2
	bne _080D7C2E
	ldr r0, _080D7C58 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080D7C2E
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080D7C2E:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D7C40: .4byte gCurLevelInfo
_080D7C44: .4byte 0xFFFFFDFF
_080D7C48: .4byte 0x0000065E
_080D7C4C: .4byte gUnk_08352D80
_080D7C50: .4byte gKirbys
_080D7C54: .4byte gUnk_0203AD3C
_080D7C58: .4byte gUnk_0203AD20

	thumb_func_start sub_080D7C5C
sub_080D7C5C: @ 0x080D7C5C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #1
	bls _080D7C90
	ldr r2, _080D7C84 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D7C88 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D7C8C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D7D08
	b _080D7D14
	.align 2, 0
_080D7C84: .4byte gRngVal
_080D7C88: .4byte 0x00196225
_080D7C8C: .4byte 0x3C6EF35F
_080D7C90:
	adds r0, #1
	strb r0, [r1]
	ldr r5, _080D7CC8 @ =gRngVal
	ldr r0, [r5]
	ldr r3, _080D7CCC @ =0x00196225
	muls r0, r3, r0
	ldr r6, _080D7CD0 @ =0x3C6EF35F
	adds r2, r0, r6
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D7CF4
	adds r0, r2, #0
	muls r0, r3, r0
	adds r1, r0, r6
	str r1, [r5]
	lsrs r0, r1, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080D7CD4
	adds r0, r4, #0
	bl sub_080DA00C
	b _080D7D22
	.align 2, 0
_080D7CC8: .4byte gRngVal
_080D7CCC: .4byte 0x00196225
_080D7CD0: .4byte 0x3C6EF35F
_080D7CD4:
	adds r0, r1, #0
	muls r0, r3, r0
	adds r0, r0, r6
	str r0, [r5]
	lsrs r0, r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080D7CEC
	adds r0, r4, #0
	bl sub_080D9F84
	b _080D7D22
_080D7CEC:
	adds r0, r4, #0
	bl sub_080D9FC8
	b _080D7D22
_080D7CF4:
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r2, _080D7D10 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D7D14
_080D7D08:
	adds r0, r4, #0
	bl sub_080DA070
	b _080D7D1A
	.align 2, 0
_080D7D10: .4byte 0x3C6EF35F
_080D7D14:
	adds r0, r4, #0
	bl sub_080D923C
_080D7D1A:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
_080D7D22:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D7D28
sub_080D7D28: @ 0x080D7D28
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D7D50
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D7D60
	b _080D7D5C
_080D7D50:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D7D60
_080D7D5C:
	movs r0, #0
	strh r0, [r1]
_080D7D60:
	adds r0, r2, #0
	adds r0, #0x52
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D7D7E
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D7D8E
	b _080D7D8A
_080D7D7E:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D7D8E
_080D7D8A:
	movs r0, #0
	strh r0, [r4]
_080D7D8E:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D7DA2
	adds r0, r2, #0
	bl sub_080D7C5C
	b _080D7DC0
_080D7DA2:
	ldr r3, _080D7DC8 @ =gUnk_08356380
	adds r2, #0x9e
	ldrb r0, [r2]
	lsrs r0, r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D7DC0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D7DC8: .4byte gUnk_08356380

	thumb_func_start sub_080D7DCC
sub_080D7DCC: @ 0x080D7DCC
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x44]
	ldr r1, _080D7E18 @ =0xFFFFF800
	ands r3, r1
	mov r0, ip
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D7E1C
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D7E6C
	strh r2, [r4]
	b _080D7E6C
	.align 2, 0
_080D7E18: .4byte 0xFFFFF800
_080D7E1C:
	cmp r3, r0
	bge _080D7E40
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D7E3C @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D7E6C
	strh r2, [r4]
	b _080D7E6C
	.align 2, 0
_080D7E3C: .4byte 0xFFFFFEC0
_080D7E40:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D7E5E
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D7E6C
	b _080D7E6A
_080D7E5E:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D7E6C
_080D7E6A:
	strh r5, [r4]
_080D7E6C:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D7E98 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D7E9C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D7ED4
	.align 2, 0
_080D7E98: .4byte 0xFFFFF800
_080D7E9C:
	cmp r3, r0
	ble _080D7EF8
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D7ED4
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D7ED0 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D7ECC
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D7F24
_080D7ECC:
	strh r2, [r1]
	b _080D7F24
	.align 2, 0
_080D7ED0: .4byte 0xFFFFFEC0
_080D7ED4:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D7ECC
	ldr r2, _080D7EF4 @ =0xFFFFFEC0
	cmp r0, r2
	bge _080D7F24
	b _080D7ECC
	.align 2, 0
_080D7EF4: .4byte 0xFFFFFEC0
_080D7EF8:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D7F14
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D7F24
	b _080D7F20
_080D7F14:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D7F24
_080D7F20:
	movs r0, #0
	strh r0, [r1]
_080D7F24:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D7F40
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D7F4A
_080D7F40:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D7F4A:
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x1f
	ble _080D7F5A
	mov r1, ip
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
_080D7F5A:
	movs r2, #0
	ldrsh r1, [r4, r2]
	movs r0, #0x20
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080D7F6E
	mov r1, ip
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
_080D7F6E:
	ldrh r0, [r4]
	adds r0, #0x10
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bhi _080D7F82
	mov r1, ip
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
_080D7F82:
	movs r3, #0
	ldrsh r1, [r5, r3]
	mov r5, ip
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D7F98
	cmp r2, #0xf
	ble _080D7F9E
	b _080D7FC6
_080D7F98:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080D7FC6
_080D7F9E:
	mov r0, ip
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	mov r3, ip
	ldr r0, [r3, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D7FB8
	cmp r1, #0xf
	ble _080D7FBE
	b _080D7FC6
_080D7FB8:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D7FC6
_080D7FBE:
	mov r0, ip
	bl sub_080D7C5C
	b _080D7FE6
_080D7FC6:
	ldr r2, _080D7FEC @ =gUnk_08356380
	mov r5, ip
	ldrh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080D7FE6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D7FEC: .4byte gUnk_08356380

	thumb_func_start sub_080D7FF0
sub_080D7FF0: @ 0x080D7FF0
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x87
	ldrb r5, [r0]
	cmp r5, #0
	bne _080D800A
	b _080D815C
_080D800A:
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x44]
	ldr r2, _080D8048 @ =0xFFFFF800
	ands r3, r2
	adds r1, #4
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	ble _080D804C
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D809C
	strh r2, [r4]
	b _080D809C
	.align 2, 0
_080D8048: .4byte 0xFFFFF800
_080D804C:
	cmp r3, r0
	bge _080D8070
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D806C @ =0xFFFFFE40
	adds r4, r1, #0
	cmp r0, r2
	bge _080D809C
	strh r2, [r4]
	b _080D809C
	.align 2, 0
_080D806C: .4byte 0xFFFFFE40
_080D8070:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D808E
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D809C
	b _080D809A
_080D808E:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D809C
_080D809A:
	strh r5, [r4]
_080D809C:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D80E0 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D80E8
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
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D80DC
	b _080D824C
_080D80DC:
	ldr r2, _080D80E4 @ =0xFFFFFE40
	b _080D826C
	.align 2, 0
_080D80E0: .4byte 0xFFFFF800
_080D80E4: .4byte 0xFFFFFE40
_080D80E8:
	cmp r3, r0
	ble _080D813C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D811C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8118 @ =0xFFFFFE40
	cmp r0, r2
	bge _080D8112
	b _080D824C
_080D8112:
	movs r2, #0xe0
	lsls r2, r2, #1
	b _080D8248
	.align 2, 0
_080D8118: .4byte 0xFFFFFE40
_080D811C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8134
	b _080D824C
_080D8134:
	ldr r2, _080D8138 @ =0xFFFFFE40
	b _080D826C
	.align 2, 0
_080D8138: .4byte 0xFFFFFE40
_080D813C:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080D814C
	b _080D8294
_080D814C:
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D815A
	b _080D82A4
_080D815A:
	b _080D82A0
_080D815C:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r4, ip
	ldr r3, [r4, #0x44]
	ldr r2, _080D8198 @ =0xFFFFF800
	ands r3, r2
	adds r1, #4
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	ble _080D819C
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D81EC
	strh r2, [r4]
	b _080D81EC
	.align 2, 0
_080D8198: .4byte 0xFFFFF800
_080D819C:
	cmp r3, r0
	bge _080D81C0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D81BC @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D81EC
	strh r2, [r4]
	b _080D81EC
	.align 2, 0
_080D81BC: .4byte 0xFFFFFEC0
_080D81C0:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D81DE
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D81EC
	b _080D81EA
_080D81DE:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D81EC
_080D81EA:
	strh r5, [r4]
_080D81EC:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D8218 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D821C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D8254
	.align 2, 0
_080D8218: .4byte 0xFFFFF800
_080D821C:
	cmp r3, r0
	ble _080D8278
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8254
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8250 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D824C
	movs r2, #0xa0
	lsls r2, r2, #1
_080D8248:
	cmp r0, r2
	ble _080D82A4
_080D824C:
	strh r2, [r1]
	b _080D82A4
	.align 2, 0
_080D8250: .4byte 0xFFFFFEC0
_080D8254:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D824C
	ldr r2, _080D8274 @ =0xFFFFFEC0
_080D826C:
	cmp r0, r2
	bge _080D82A4
	b _080D824C
	.align 2, 0
_080D8274: .4byte 0xFFFFFEC0
_080D8278:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D8294
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D82A4
	b _080D82A0
_080D8294:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D82A4
_080D82A0:
	movs r0, #0
	strh r0, [r1]
_080D82A4:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D82C0
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D82CA
_080D82C0:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D82CA:
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D82E0
	cmp r2, #9
	ble _080D82E6
	b _080D830A
_080D82E0:
	subs r0, r0, r1
	cmp r0, #9
	bgt _080D830A
_080D82E6:
	movs r3, #0
	ldrsh r1, [r6, r3]
	mov r5, ip
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D82FC
	cmp r2, #9
	ble _080D8302
	b _080D830A
_080D82FC:
	subs r0, r0, r1
	cmp r0, #9
	bgt _080D830A
_080D8302:
	mov r0, ip
	bl sub_080DA050
	b _080D832C
_080D830A:
	ldr r2, _080D8334 @ =gUnk_08356380
	mov r1, ip
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	mov r3, ip
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_080D832C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D8334: .4byte gUnk_08356380

	thumb_func_start sub_080D8338
sub_080D8338: @ 0x080D8338
	push {r4, r5, lr}
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #1
	bgt _080D834E
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_080D834E:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r1, _080D838C @ =0xFFFFF800
	ands r3, r1
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080D8390
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D83E0
	strh r2, [r4]
	b _080D83E0
	.align 2, 0
_080D838C: .4byte 0xFFFFF800
_080D8390:
	cmp r3, r2
	bge _080D83B4
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D83B0 @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D83E0
	strh r2, [r4]
	b _080D83E0
	.align 2, 0
_080D83B0: .4byte 0xFFFFFEC0
_080D83B4:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D83D2
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D83E0
	b _080D83DE
_080D83D2:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D83E0
_080D83DE:
	strh r5, [r4]
_080D83E0:
	mov r0, ip
	ldr r3, [r0, #0x40]
	ldr r0, _080D8408 @ =0xFFFFF800
	ands r3, r0
	mov r1, ip
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080D840C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	b _080D8448
	.align 2, 0
_080D8408: .4byte 0xFFFFF800
_080D840C:
	cmp r3, r2
	ble _080D846C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8448
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8444 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D843E
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8498
_080D843E:
	strh r2, [r1]
	b _080D8498
	.align 2, 0
_080D8444: .4byte 0xFFFFFEC0
_080D8448:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D843E
	ldr r2, _080D8468 @ =0xFFFFFEC0
	cmp r0, r2
	bge _080D8498
	b _080D843E
	.align 2, 0
_080D8468: .4byte 0xFFFFFEC0
_080D846C:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D8488
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8498
	b _080D8494
_080D8488:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8498
_080D8494:
	movs r0, #0
	strh r0, [r1]
_080D8498:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D84B4
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D84BE
_080D84B4:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D84BE:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D84E2
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080D84E2
	mov r0, ip
	bl sub_080D850C
	b _080D8502
_080D84E2:
	ldr r3, _080D8508 @ =gUnk_08356380
	mov r2, ip
	adds r2, #0x9f
	ldrb r0, [r2]
	lsrs r0, r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D8502:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D8508: .4byte gUnk_08356380

	thumb_func_start sub_080D850C
sub_080D850C: @ 0x080D850C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D85A0 @ =sub_080D85BC
	movs r1, #4
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
	ldr r1, _080D85A4 @ =gKirbys
	ldr r0, _080D85A8 @ =gUnk_0203AD3C
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
	bne _080D8598
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D8558
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D8598
_080D8558:
	ldr r1, _080D85AC @ =gUnk_08D60FA4
	ldr r4, _080D85B0 @ =gSongTable
	ldr r2, _080D85B4 @ =0x00000BD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D857E
	movs r1, #0xbd
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D8598
_080D857E:
	cmp r3, #0
	beq _080D8590
	ldr r0, _080D85B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D8598
_080D8590:
	movs r0, #0xbd
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D8598:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D85A0: .4byte sub_080D85BC
_080D85A4: .4byte gKirbys
_080D85A8: .4byte gUnk_0203AD3C
_080D85AC: .4byte gUnk_08D60FA4
_080D85B0: .4byte gSongTable
_080D85B4: .4byte 0x00000BD4
_080D85B8: .4byte gUnk_0203AD10

	thumb_func_start sub_080D85BC
sub_080D85BC: @ 0x080D85BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D85DA
	b _080D8790
_080D85DA:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080D86AC @ =gUnk_083562D8
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080D86DC
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080D8610
	subs r0, r1, #1
	strb r0, [r3]
_080D8610:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080D8636
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080D8636:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080D86B0
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	mov ip, r0
	ldrh r2, [r1]
	mov sb, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov r8, r0
	mov r0, ip
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov ip, r0
	cmp r8, ip
	beq _080D867C
	mov r2, sb
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D867C
	mov r1, sb
	rsbs r0, r1, #0
	strh r0, [r5]
_080D867C:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, r0
	beq _080D86DC
	mov r0, r8
	strh r0, [r2]
	b _080D86DC
	.align 2, 0
_080D86AC: .4byte gUnk_083562D8
_080D86B0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D86FA
	rsbs r0, r2, #0
	strh r0, [r5]
_080D86DC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D86FA
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080D870C
_080D86FA:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080D870C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2]
	ldrb r0, [r7]
	subs r2, r0, #1
	strb r2, [r7]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _080D8740
	b _080D8944
_080D8740:
	lsls r0, r2, #0x18
	cmp r0, #0
	beq _080D8748
	b _080D8944
_080D8748:
	ldr r2, _080D8784 @ =sub_080D7D28
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D877E
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D8788 @ =gUnk_08351530
	ldr r0, _080D878C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	ble _080D877E
	b _080D8940
_080D877E:
	movs r0, #0x18
	b _080D8942
	.align 2, 0
_080D8784: .4byte sub_080D7D28
_080D8788: .4byte gUnk_08351530
_080D878C: .4byte gUnk_0203AD30
_080D8790:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r7, r0, #0
	adds r3, r4, #0
	adds r3, #0x9f
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	ldr r6, _080D8864 @ =gUnk_08356278
	cmp r1, #0
	bne _080D8894
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080D87C6
	subs r0, r1, #1
	strb r0, [r3]
_080D87C6:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080D87EC
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080D87EC:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080D8868
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	mov r8, r0
	ldrh r2, [r1]
	mov sb, r2
	movs r2, #0
	ldrsh r0, [r1, r2]
	mov ip, r0
	mov r0, r8
	movs r1, #0
	ldrsh r0, [r0, r1]
	mov r8, r0
	cmp ip, r8
	beq _080D8832
	mov r2, sb
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D8832
	mov r1, sb
	rsbs r0, r1, #0
	strh r0, [r5]
_080D8832:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, r0
	beq _080D8894
	mov r0, r8
	strh r0, [r2]
	b _080D8894
	.align 2, 0
_080D8864: .4byte gUnk_08356278
_080D8868:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D88B2
	rsbs r0, r2, #0
	strh r0, [r5]
_080D8894:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D88B2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080D88C4
_080D88B2:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080D88C4:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r1, ip
	ldrh r1, [r1]
	adds r0, r0, r1
	mov r2, ip
	strh r0, [r2]
	ldrb r0, [r7]
	subs r2, r0, #1
	strb r2, [r7]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080D8944
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080D8944
	ldr r2, _080D8934 @ =sub_080D7D28
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D8930
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D8938 @ =gUnk_08351530
	ldr r0, _080D893C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D8940
_080D8930:
	movs r0, #0x18
	b _080D8942
	.align 2, 0
_080D8934: .4byte sub_080D7D28
_080D8938: .4byte gUnk_08351530
_080D893C: .4byte gUnk_0203AD30
_080D8940:
	movs r0, #0x30
_080D8942:
	strh r0, [r4, #4]
_080D8944:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D8950
sub_080D8950: @ 0x080D8950
	push {r4, r5, r6, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r0, ip
	adds r0, #0x87
	ldrb r5, [r0]
	cmp r5, #0
	bne _080D896A
	b _080D8ABC
_080D896A:
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r2, ip
	ldr r3, [r2, #0x44]
	ldr r2, _080D89A8 @ =0xFFFFF800
	ands r3, r2
	adds r1, #4
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	ble _080D89AC
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D89FC
	strh r2, [r4]
	b _080D89FC
	.align 2, 0
_080D89A8: .4byte 0xFFFFF800
_080D89AC:
	cmp r3, r0
	bge _080D89D0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D89CC @ =0xFFFFFE40
	adds r4, r1, #0
	cmp r0, r2
	bge _080D89FC
	strh r2, [r4]
	b _080D89FC
	.align 2, 0
_080D89CC: .4byte 0xFFFFFE40
_080D89D0:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D89EE
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D89FC
	b _080D89FA
_080D89EE:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D89FC
_080D89FA:
	strh r5, [r4]
_080D89FC:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D8A40 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D8A48
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
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8A3C
	b _080D8BAC
_080D8A3C:
	ldr r2, _080D8A44 @ =0xFFFFFE40
	b _080D8BCC
	.align 2, 0
_080D8A40: .4byte 0xFFFFF800
_080D8A44: .4byte 0xFFFFFE40
_080D8A48:
	cmp r3, r0
	ble _080D8A9C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8A7C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8A78 @ =0xFFFFFE40
	cmp r0, r2
	bge _080D8A72
	b _080D8BAC
_080D8A72:
	movs r2, #0xe0
	lsls r2, r2, #1
	b _080D8BA8
	.align 2, 0
_080D8A78: .4byte 0xFFFFFE40
_080D8A7C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8A94
	b _080D8BAC
_080D8A94:
	ldr r2, _080D8A98 @ =0xFFFFFE40
	b _080D8BCC
	.align 2, 0
_080D8A98: .4byte 0xFFFFFE40
_080D8A9C:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	blt _080D8AAC
	b _080D8BF4
_080D8AAC:
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D8ABA
	b _080D8C04
_080D8ABA:
	b _080D8C00
_080D8ABC:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r4, ip
	ldr r3, [r4, #0x44]
	ldr r2, _080D8AF8 @ =0xFFFFF800
	ands r3, r2
	adds r1, #4
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	ble _080D8AFC
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D8B4C
	strh r2, [r4]
	b _080D8B4C
	.align 2, 0
_080D8AF8: .4byte 0xFFFFF800
_080D8AFC:
	cmp r3, r0
	bge _080D8B20
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8B1C @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D8B4C
	strh r2, [r4]
	b _080D8B4C
	.align 2, 0
_080D8B1C: .4byte 0xFFFFFEC0
_080D8B20:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D8B3E
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8B4C
	b _080D8B4A
_080D8B3E:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8B4C
_080D8B4A:
	strh r5, [r4]
_080D8B4C:
	mov r5, ip
	ldr r3, [r5, #0x40]
	ldr r2, _080D8B78 @ =0xFFFFF800
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	bge _080D8B7C
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D8BB4
	.align 2, 0
_080D8B78: .4byte 0xFFFFF800
_080D8B7C:
	cmp r3, r0
	ble _080D8BD8
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8BB4
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8BB0 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D8BAC
	movs r2, #0xa0
	lsls r2, r2, #1
_080D8BA8:
	cmp r0, r2
	ble _080D8C04
_080D8BAC:
	strh r2, [r1]
	b _080D8C04
	.align 2, 0
_080D8BB0: .4byte 0xFFFFFEC0
_080D8BB4:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D8BAC
	ldr r2, _080D8BD4 @ =0xFFFFFEC0
_080D8BCC:
	cmp r0, r2
	bge _080D8C04
	b _080D8BAC
	.align 2, 0
_080D8BD4: .4byte 0xFFFFFEC0
_080D8BD8:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D8BF4
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8C04
	b _080D8C00
_080D8BF4:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8C04
_080D8C00:
	movs r0, #0
	strh r0, [r1]
_080D8C04:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D8C20
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D8C2A
_080D8C20:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D8C2A:
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D8C40
	cmp r2, #0xf
	ble _080D8C46
	b _080D8C6A
_080D8C40:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080D8C6A
_080D8C46:
	movs r3, #0
	ldrsh r1, [r6, r3]
	mov r5, ip
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D8C5C
	cmp r2, #0xf
	ble _080D8C62
	b _080D8C6A
_080D8C5C:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080D8C6A
_080D8C62:
	mov r0, ip
	bl sub_080DA09C
	b _080D8C8C
_080D8C6A:
	ldr r2, _080D8C94 @ =gUnk_08356380
	mov r1, ip
	ldrh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r4]
	adds r0, r0, r2
	strh r0, [r4]
	mov r3, ip
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_080D8C8C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D8C94: .4byte gUnk_08356380

	thumb_func_start sub_080D8C98
sub_080D8C98: @ 0x080D8C98
	push {r4, r5, lr}
	mov ip, r0
	movs r1, #4
	ldrsh r0, [r0, r1]
	cmp r0, #2
	bgt _080D8CAE
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_080D8CAE:
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	mov r0, ip
	ldr r3, [r0, #0x44]
	ldr r1, _080D8CEC @ =0xFFFFF800
	ands r3, r1
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080D8CF0
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D8D40
	strh r2, [r4]
	b _080D8D40
	.align 2, 0
_080D8CEC: .4byte 0xFFFFF800
_080D8CF0:
	cmp r3, r2
	bge _080D8D14
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8D10 @ =0xFFFFFEC0
	adds r4, r1, #0
	cmp r0, r2
	bge _080D8D40
	strh r2, [r4]
	b _080D8D40
	.align 2, 0
_080D8D10: .4byte 0xFFFFFEC0
_080D8D14:
	mov r0, ip
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D8D32
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8D40
	b _080D8D3E
_080D8D32:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8D40
_080D8D3E:
	strh r5, [r4]
_080D8D40:
	mov r0, ip
	ldr r3, [r0, #0x40]
	ldr r0, _080D8D68 @ =0xFFFFF800
	ands r3, r0
	mov r1, ip
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080D8D6C
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	b _080D8DA8
	.align 2, 0
_080D8D68: .4byte 0xFFFFF800
_080D8D6C:
	cmp r3, r2
	ble _080D8DCC
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8DA8
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D8DA4 @ =0xFFFFFEC0
	cmp r0, r2
	blt _080D8D9E
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D8DF8
_080D8D9E:
	strh r2, [r1]
	b _080D8DF8
	.align 2, 0
_080D8DA4: .4byte 0xFFFFFEC0
_080D8DA8:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080D8D9E
	ldr r2, _080D8DC8 @ =0xFFFFFEC0
	cmp r0, r2
	bge _080D8DF8
	b _080D8D9E
	.align 2, 0
_080D8DC8: .4byte 0xFFFFFEC0
_080D8DCC:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D8DE8
	adds r0, r2, #0
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D8DF8
	b _080D8DF4
_080D8DE8:
	adds r0, r2, #0
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D8DF8
_080D8DF4:
	movs r0, #0
	strh r0, [r1]
_080D8DF8:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D8E14
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D8E1E
_080D8E14:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D8E1E:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D8E42
	mov r2, ip
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080D8E42
	mov r0, ip
	bl sub_080D8E6C
	b _080D8E62
_080D8E42:
	ldr r3, _080D8E68 @ =gUnk_08356380
	mov r2, ip
	adds r2, #0x9f
	ldrb r0, [r2]
	lsrs r0, r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r3, [r4]
	adds r0, r0, r3
	strh r0, [r4]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D8E62:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D8E68: .4byte gUnk_08356380

	thumb_func_start sub_080D8E6C
sub_080D8E6C: @ 0x080D8E6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D8E8C @ =sub_080D8F34
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D8E90
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080D8E98
	.align 2, 0
_080D8E8C: .4byte sub_080D8F34
_080D8E90:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080D8E98:
	strh r0, [r1]
	adds r3, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080D8EE4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D8EE8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D8EEC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r1, #1
	ands r2, r1
	movs r0, #0x9e
	adds r0, r0, r4
	mov ip, r0
	strb r2, [r0]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D8EFC
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	beq _080D8EF0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	subs r0, #0x24
	b _080D8F16
	.align 2, 0
_080D8EE4: .4byte gRngVal
_080D8EE8: .4byte 0x00196225
_080D8EEC: .4byte 0x3C6EF35F
_080D8EF0:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	subs r0, #0x30
	b _080D8F16
_080D8EFC:
	cmp r2, #0
	beq _080D8F0C
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, #0x24
	b _080D8F16
_080D8F0C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #6]
	adds r0, #0x30
_080D8F16:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D8F34
sub_080D8F34: @ 0x080D8F34
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D8FB8
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #2
	bls _080D8F5E
	adds r0, #0x19
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D8F6C
_080D8F5E:
	cmp r1, #3
	bls _080D8FB8
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D8FB8
_080D8F6C:
	movs r0, #0
	strb r0, [r2]
	ldr r2, _080D8FA8 @ =sub_080D7D28
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D8FA4
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D8FAC @ =gUnk_08351530
	ldr r0, _080D8FB0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D8FB4
_080D8FA4:
	movs r0, #0x18
	b _080D9230
	.align 2, 0
_080D8FA8: .4byte sub_080D7D28
_080D8FAC: .4byte gUnk_08351530
_080D8FB0: .4byte gUnk_0203AD30
_080D8FB4:
	movs r0, #0x30
	b _080D9230
_080D8FB8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D90B4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xa0
	movs r0, #0
	ldrsh r2, [r1, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	adds r7, r4, #0
	adds r7, #0x83
	adds r5, r1, #0
	cmp r2, r0
	ble _080D8FE6
	b _080D91A0
_080D8FE6:
	subs r1, #0x1b
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080D95A4
	ldr r1, _080D906C @ =gKirbys
	ldr r0, _080D9070 @ =gUnk_0203AD3C
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
	bne _080D905C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D9020
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D905C
_080D9020:
	ldr r1, _080D9074 @ =gUnk_08D60FA4
	ldr r6, _080D9078 @ =gSongTable
	ldr r2, _080D907C @ =0x00000CDC
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D9044
	ldr r1, _080D9080 @ =0x00000CD8
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D905C
_080D9044:
	cmp r3, #0
	beq _080D9056
	ldr r0, _080D9084 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D905C
_080D9056:
	ldr r0, _080D9088 @ =0x0000019B
	bl m4aSongNumStart
_080D905C:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D908C
	ldrh r0, [r5]
	adds r0, #0x24
	b _080D9090
	.align 2, 0
_080D906C: .4byte gKirbys
_080D9070: .4byte gUnk_0203AD3C
_080D9074: .4byte gUnk_08D60FA4
_080D9078: .4byte gSongTable
_080D907C: .4byte 0x00000CDC
_080D9080: .4byte 0x00000CD8
_080D9084: .4byte gUnk_0203AD10
_080D9088: .4byte 0x0000019B
_080D908C:
	ldrh r0, [r5]
	adds r0, #0x30
_080D9090:
	strh r0, [r5]
	adds r2, r4, #0
	adds r2, #0x83
	movs r0, #7
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
	adds r7, r2, #0
	b _080D91A0
_080D90B4:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	bne _080D91A0
	adds r0, #0x1d
	movs r3, #0
	ldrsh r2, [r0, r3]
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	adds r5, r0, #0
	cmp r2, r1
	blt _080D91A0
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r1, _080D9160 @ =gKirbys
	ldr r0, _080D9164 @ =gUnk_0203AD3C
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
	bne _080D914A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D910E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D914A
_080D910E:
	ldr r1, _080D9168 @ =gUnk_08D60FA4
	ldr r6, _080D916C @ =gSongTable
	ldr r2, _080D9170 @ =0x00000CDC
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D9132
	ldr r1, _080D9174 @ =0x00000CD8
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D914A
_080D9132:
	cmp r3, #0
	beq _080D9144
	ldr r0, _080D9178 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D914A
_080D9144:
	ldr r0, _080D917C @ =0x0000019B
	bl m4aSongNumStart
_080D914A:
	adds r0, r4, #0
	bl sub_080D95A4
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D9180
	ldrh r0, [r5]
	subs r0, #0x24
	b _080D9184
	.align 2, 0
_080D9160: .4byte gKirbys
_080D9164: .4byte gUnk_0203AD3C
_080D9168: .4byte gUnk_08D60FA4
_080D916C: .4byte gSongTable
_080D9170: .4byte 0x00000CDC
_080D9174: .4byte 0x00000CD8
_080D9178: .4byte gUnk_0203AD10
_080D917C: .4byte 0x0000019B
_080D9180:
	ldrh r0, [r5]
	subs r0, #0x30
_080D9184:
	strh r0, [r5]
	movs r0, #7
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	strh r0, [r1]
_080D91A0:
	ldrb r0, [r7]
	cmp r0, #7
	bne _080D9210
	ldrb r0, [r4, #1]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D91CE
	ldr r2, _080D91F0 @ =gUnk_083563A0
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
_080D91CE:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D9210
	movs r0, #0
	strb r0, [r7]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D91F4
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080D91FC
	.align 2, 0
_080D91F0: .4byte gUnk_083563A0
_080D91F4:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080D91FC:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D9210
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D9210:
	adds r3, r4, #0
	adds r3, #0x52
	ldr r2, _080D9238 @ =gUnk_08356380
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	ldrh r0, [r4, #4]
	adds r0, #1
_080D9230:
	strh r0, [r4, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D9238: .4byte gUnk_08356380

	thumb_func_start sub_080D923C
sub_080D923C: @ 0x080D923C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D92DC @ =sub_080D92F8
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xff
	lsls r3, r3, #8
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D926A
	rsbs r0, r3, #0
	strh r0, [r2]
_080D926A:
	ldr r1, _080D92E0 @ =gKirbys
	ldr r0, _080D92E4 @ =gUnk_0203AD3C
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
	bne _080D92D6
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D9296
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D92D6
_080D9296:
	ldr r1, _080D92E8 @ =gUnk_08D60FA4
	ldr r4, _080D92EC @ =gSongTable
	ldr r2, _080D92F0 @ =0x00000BC4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D92BC
	movs r1, #0xbc
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D92D6
_080D92BC:
	cmp r3, #0
	beq _080D92CE
	ldr r0, _080D92F4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D92D6
_080D92CE:
	movs r0, #0xbc
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D92D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D92DC: .4byte sub_080D92F8
_080D92E0: .4byte gKirbys
_080D92E4: .4byte gUnk_0203AD3C
_080D92E8: .4byte gUnk_08D60FA4
_080D92EC: .4byte gSongTable
_080D92F0: .4byte 0x00000BC4
_080D92F4: .4byte gUnk_0203AD10

	thumb_func_start sub_080D92F8
sub_080D92F8: @ 0x080D92F8
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D9310
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D9316
_080D9310:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080D9316:
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D9334
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9344
	b _080D9340
_080D9334:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9344
_080D9340:
	movs r0, #0
	strh r0, [r1]
_080D9344:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D9360
	adds r0, r3, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9370
	b _080D936C
_080D9360:
	adds r0, r3, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9370
_080D936C:
	movs r0, #0
	strh r0, [r1]
_080D9370:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D9380
	adds r0, r2, #0
	bl sub_080DA0BC
_080D9380:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9388
sub_080D9388: @ 0x080D9388
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D93A0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D93A6
_080D93A0:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D93A6:
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D93C4
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D93D4
	b _080D93D0
_080D93C4:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D93D4
_080D93D0:
	movs r0, #0
	strh r0, [r1]
_080D93D4:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r6, r0, #0
	cmp r1, #0
	bge _080D93F2
	adds r0, r2, #0
	adds r0, #0x20
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9402
	b _080D93FE
_080D93F2:
	adds r0, r2, #0
	subs r0, #0x20
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9402
_080D93FE:
	movs r0, #0
	strh r0, [r6]
_080D9402:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #6
	beq _080D9410
	b _080D9556
_080D9410:
	ldrb r0, [r4, #1]
	cmp r0, #3
	bne _080D94B4
	ldr r2, _080D9438 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D943C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D9440 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D9444
	adds r0, r4, #0
	movs r1, #0
	bl sub_080D9764
	b _080D944C
	.align 2, 0
_080D9438: .4byte gRngVal
_080D943C: .4byte 0x00196225
_080D9440: .4byte 0x3C6EF35F
_080D9444:
	adds r0, r4, #0
	movs r1, #1
	bl sub_080D9764
_080D944C:
	ldr r1, _080D9520 @ =gKirbys
	ldr r0, _080D9524 @ =gUnk_0203AD3C
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
	bne _080D94B4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D9478
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D94B4
_080D9478:
	ldr r1, _080D9528 @ =gUnk_08D60FA4
	ldr r5, _080D952C @ =gSongTable
	ldr r2, _080D9530 @ =0x00000BCC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D949C
	ldr r1, _080D9534 @ =0x00000BC8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D94B4
_080D949C:
	cmp r3, #0
	beq _080D94AE
	ldr r0, _080D9538 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D94B4
_080D94AE:
	ldr r0, _080D953C @ =0x00000179
	bl m4aSongNumStart
_080D94B4:
	ldrb r0, [r4, #1]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D94DC
	ldr r2, _080D9540 @ =gUnk_083563A0
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
_080D94DC:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D955E
	ldr r2, _080D9544 @ =sub_080D7D28
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D951A
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D9548 @ =gUnk_08351530
	ldr r0, _080D954C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D9550
_080D951A:
	movs r0, #0x18
	strh r0, [r4, #4]
	b _080D9598
	.align 2, 0
_080D9520: .4byte gKirbys
_080D9524: .4byte gUnk_0203AD3C
_080D9528: .4byte gUnk_08D60FA4
_080D952C: .4byte gSongTable
_080D9530: .4byte 0x00000BCC
_080D9534: .4byte 0x00000BC8
_080D9538: .4byte gUnk_0203AD10
_080D953C: .4byte 0x00000179
_080D9540: .4byte gUnk_083563A0
_080D9544: .4byte sub_080D7D28
_080D9548: .4byte gUnk_08351530
_080D954C: .4byte gUnk_0203AD30
_080D9550:
	movs r0, #0x30
	strh r0, [r4, #4]
	b _080D9598
_080D9556:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080D955E:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D9578
	movs r0, #6
	strb r0, [r7]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080D9578:
	ldr r3, _080D95A0 @ =gUnk_08356380
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r0, [r2]
	lsrs r0, r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldrh r1, [r6]
	adds r0, r0, r1
	strh r0, [r6]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D9598:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D95A0: .4byte gUnk_08356380

	thumb_func_start sub_080D95A4
sub_080D95A4: @ 0x080D95A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080D95D8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080D95DC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080D95F4
	.align 2, 0
_080D95D8: .4byte gUnk_020229D4
_080D95DC: .4byte gUnk_020229E0
_080D95E0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D95FC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D95F4:
	cmp r0, #0
	bne _080D95E0
	orrs r2, r3
	str r2, [r1]
_080D95FC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb2
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateBombarBomb
CreateBombarBomb: @ 0x080D965C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D9690 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D9694 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D9698
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080D96A0
	.align 2, 0
_080D9690: .4byte ObjectMain
_080D9694: .4byte ObjectDestroy
_080D9698:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080D96A0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080D9704 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080D9EE8
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D9704: .4byte sub_0809F840

	thumb_func_start sub_080D9708
sub_080D9708: @ 0x080D9708
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080D9730
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080D9730:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D974C
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D975C
	b _080D9758
_080D974C:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D975C
_080D9758:
	movs r0, #0
	strh r0, [r1]
_080D975C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9764
sub_080D9764: @ 0x080D9764
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D978A
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0xc
	b _080D9792
_080D978A:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0xc
_080D9792:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #0xa
	mov sl, r0
	movs r4, #0
	ldr r1, _080D97B0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080D97C8
	.align 2, 0
_080D97B0: .4byte gUnk_020229D4
_080D97B4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D97D0
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D97C8:
	cmp r0, #0
	bne _080D97B4
	orrs r2, r3
	str r2, [r1]
_080D97D0:
	ldr r0, _080D9840 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sl
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb3
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sb
	strb r7, [r1, #0x10]
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r1, #0x24]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080D9844
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x10
	b _080D984C
	.align 2, 0
_080D9840: .4byte gUnk_020229E0
_080D9844:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x10
_080D984C:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #0xa
	mov sl, r0
	movs r4, #0
	ldr r1, _080D9868 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080D986C @ =gUnk_020229E0
	mov ip, r7
	b _080D9884
	.align 2, 0
_080D9868: .4byte gUnk_020229D4
_080D986C: .4byte gUnk_020229E0
_080D9870:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D988C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D9884:
	cmp r0, #0
	bne _080D9870
	orrs r2, r3
	str r2, [r1]
_080D988C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sl
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb3
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sb
	strb r7, [r1, #0x10]
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateBombarMissile
CreateBombarMissile: @ 0x080D98F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D9924 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D9928 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D992C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080D9934
	.align 2, 0
_080D9924: .4byte ObjectMain
_080D9928: .4byte ObjectDestroy
_080D992C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080D9934:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080D99A0 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080D99A4
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D99A0: .4byte sub_0809F840

	thumb_func_start sub_080D99A4
sub_080D99A4: @ 0x080D99A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D99FC @ =sub_080D9A04
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D99C4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D99C4:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080D9A00 @ =0x0000FE80
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D99E6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D99E6:
	ldr r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D99FC: .4byte sub_080D9A04
_080D9A00: .4byte 0x0000FE80

	thumb_func_start sub_080D9A04
sub_080D9A04: @ 0x080D9A04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	bne _080D9A16
	b _080D9B96
_080D9A16:
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, #1
	movs r7, #0
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r5
	mov r8, r1
	adds r6, r5, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080D9A54
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D9A54:
	ldr r2, [r5, #0x44]
	ldr r1, _080D9A84 @ =0xFFFFF700
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D9A88
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r6, r1, #0
	cmp r0, r2
	ble _080D9AD8
	strh r2, [r6]
	b _080D9AD8
	.align 2, 0
_080D9A84: .4byte 0xFFFFF700
_080D9A88:
	cmp r2, r0
	bge _080D9AAC
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9AA8 @ =0xFFFFFE00
	adds r6, r1, #0
	cmp r0, r2
	bge _080D9AD8
	strh r2, [r6]
	b _080D9AD8
	.align 2, 0
_080D9AA8: .4byte 0xFFFFFE00
_080D9AAC:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r6, r0, #0
	cmp r1, #0
	bge _080D9ACA
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9AD8
	b _080D9AD6
_080D9ACA:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9AD8
_080D9AD6:
	strh r7, [r6]
_080D9AD8:
	ldr r2, [r5, #0x40]
	ldr r1, _080D9B14 @ =0xFFFFF700
	ands r2, r1
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D9B1C
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r4, r1, #0
	cmp r0, r2
	ble _080D9B10
	b _080D9CE0
_080D9B10:
	ldr r1, _080D9B18 @ =0xFFFFFE00
	b _080D9CE6
	.align 2, 0
_080D9B14: .4byte 0xFFFFF700
_080D9B18: .4byte 0xFFFFFE00
_080D9B1C:
	cmp r2, r0
	ble _080D9B74
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D9B50
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9B4C @ =0xFFFFFE00
	adds r4, r1, #0
	cmp r0, r2
	bge _080D9B46
	b _080D9CE0
_080D9B46:
	movs r1, #0x80
	lsls r1, r1, #2
	b _080D9CBC
	.align 2, 0
_080D9B4C: .4byte 0xFFFFFE00
_080D9B50:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r4, r1, #0
	cmp r0, r2
	ble _080D9B6A
	b _080D9CE0
_080D9B6A:
	ldr r1, _080D9B70 @ =0xFFFFFE00
	b _080D9CE6
	.align 2, 0
_080D9B70: .4byte 0xFFFFFE00
_080D9B74:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	blt _080D9B86
	b _080D9D12
_080D9B86:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D9B94
	b _080D9D22
_080D9B94:
	b _080D9D1E
_080D9B96:
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r5
	mov r8, r1
	adds r6, r5, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080D9BD2
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D9BD2:
	ldr r2, [r5, #0x44]
	ldr r1, _080D9C00 @ =0xFFFFF700
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D9C04
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r6, r1, #0
	cmp r0, r2
	ble _080D9C54
	strh r2, [r6]
	b _080D9C54
	.align 2, 0
_080D9C00: .4byte 0xFFFFF700
_080D9C04:
	cmp r2, r0
	bge _080D9C28
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9C24 @ =0xFFFFFE60
	adds r6, r1, #0
	cmp r0, r2
	bge _080D9C54
	strh r2, [r6]
	b _080D9C54
	.align 2, 0
_080D9C24: .4byte 0xFFFFFE60
_080D9C28:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r6, r0, #0
	cmp r1, #0
	bge _080D9C46
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9C54
	b _080D9C52
_080D9C46:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9C54
_080D9C52:
	strh r7, [r6]
_080D9C54:
	ldr r2, [r5, #0x40]
	ldr r1, _080D9C8C @ =0xFFFFF700
	ands r2, r1
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D9C90
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	bgt _080D9CE0
	b _080D9CE4
	.align 2, 0
_080D9C8C: .4byte 0xFFFFF700
_080D9C90:
	cmp r2, r0
	ble _080D9CF4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D9CC8
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9CC4 @ =0xFFFFFE60
	adds r4, r1, #0
	cmp r0, r2
	blt _080D9CE0
	movs r1, #0xd0
	lsls r1, r1, #1
_080D9CBC:
	cmp r0, r1
	ble _080D9D22
	strh r1, [r4]
	b _080D9D22
	.align 2, 0
_080D9CC4: .4byte 0xFFFFFE60
_080D9CC8:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D9CE4
_080D9CE0:
	strh r2, [r4]
	b _080D9D22
_080D9CE4:
	ldr r1, _080D9CF0 @ =0xFFFFFE60
_080D9CE6:
	cmp r0, r1
	bge _080D9D22
	strh r1, [r4]
	b _080D9D22
	.align 2, 0
_080D9CF0: .4byte 0xFFFFFE60
_080D9CF4:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D9D12
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9D22
	b _080D9D1E
_080D9D12:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9D22
_080D9D1E:
	movs r0, #0
	strh r0, [r4]
_080D9D22:
	ldr r0, [r5, #8]
	movs r2, #1
	orrs r0, r2
	str r0, [r5, #8]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x80
	ble _080D9D5A
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r1, #0x80
	ble _080D9D42
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #5
	b _080D9DA4
_080D9D42:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080D9D52
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #3
	b _080D9DA4
_080D9D52:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #4
	b _080D9DA4
_080D9D5A:
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080D9D7E
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0x80
	ble _080D9D72
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #7
	b _080D9DA4
_080D9D72:
	cmp r0, r1
	bge _080D9D9E
	adds r0, r5, #0
	adds r0, #0x83
	strb r2, [r0]
	b _080D9DA6
_080D9D7E:
	movs r0, #0
	ldrsh r1, [r6, r0]
	cmp r1, #0x10
	ble _080D9D8E
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #6
	b _080D9DA4
_080D9D8E:
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080D9D9E
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #2
	b _080D9DA4
_080D9D9E:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0
_080D9DA4:
	strb r0, [r1]
_080D9DA6:
	ldrh r1, [r5, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080D9DF0
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r2, r2, #2
	ldr r1, [r0, #0x34]
	subs r1, r1, r2
	str r1, [r0, #0x34]
	movs r3, #0
	ldrsh r2, [r6, r3]
	lsls r2, r2, #2
	ldr r1, [r0, #0x38]
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3c]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3e]
	movs r1, #0xe8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
_080D9DF0:
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080D9E24
	movs r3, #0
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _080D9E04
	rsbs r1, r1, #0
_080D9E04:
	movs r4, #0
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _080D9E0E
	rsbs r0, r0, #0
_080D9E0E:
	adds r1, r1, r0
	ldr r0, _080D9E1C @ =0x0000017F
	cmp r1, r0
	ble _080D9E28
	ldr r0, _080D9E20 @ =sub_080D9E34
	str r0, [r5, #0x78]
	b _080D9E28
	.align 2, 0
_080D9E1C: .4byte 0x0000017F
_080D9E20: .4byte sub_080D9E34
_080D9E24:
	subs r0, r1, #1
	strh r0, [r5, #4]
_080D9E28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9E34
sub_080D9E34: @ 0x080D9E34
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080D9E8E
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r4, r5, #0
	adds r4, #0x50
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r2, r2, #2
	ldr r1, [r0, #0x34]
	subs r1, r1, r2
	str r1, [r0, #0x34]
	adds r3, r5, #0
	adds r3, #0x52
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r2, r2, #2
	ldr r1, [r0, #0x38]
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3c]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3e]
	movs r1, #0xe8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
_080D9E8E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D9E94
sub_080D9E94: @ 0x080D9E94
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9ED0 @ =sub_080D7D28
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D9ECA
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D9ED4 @ =gUnk_08351530
	ldr r0, _080D9ED8 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D9EDC
_080D9ECA:
	movs r0, #0x18
	b _080D9EDE
	.align 2, 0
_080D9ED0: .4byte sub_080D7D28
_080D9ED4: .4byte gUnk_08351530
_080D9ED8: .4byte gUnk_0203AD30
_080D9EDC:
	movs r0, #0x30
_080D9EDE:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9EE8
sub_080D9EE8: @ 0x080D9EE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9F4C @ =sub_080D9708
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D9F08
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D9F08:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, _080D9F50 @ =0xFFFFF000
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080D9F2C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_080D9F2C:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r1, [r1, #0x40]
	cmp r0, r1
	ble _080D9F46
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080D9F46:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D9F4C: .4byte sub_080D9708
_080D9F50: .4byte 0xFFFFF000

	thumb_func_start sub_080D9F54
sub_080D9F54: @ 0x080D9F54
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9F80 @ =sub_080D7A6C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D9F80: .4byte sub_080D7A6C

	thumb_func_start sub_080D9F84
sub_080D9F84: @ 0x080D9F84
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9FA4 @ =sub_080D7DCC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080D9FA8
	ldrh r0, [r1, #6]
	subs r0, #8
	b _080D9FAC
	.align 2, 0
_080D9FA4: .4byte sub_080D7DCC
_080D9FA8:
	ldrh r0, [r1, #6]
	adds r0, #8
_080D9FAC:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	adds r0, #0x40
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D9FC8
sub_080D9FC8: @ 0x080D9FC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9FE8 @ =sub_080D7DCC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080D9FEC
	ldrh r0, [r1, #6]
	adds r0, #0x30
	b _080D9FF0
	.align 2, 0
_080D9FE8: .4byte sub_080D7DCC
_080D9FEC:
	ldrh r0, [r1, #6]
	subs r0, #0x30
_080D9FF0:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	subs r0, #0x10
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DA00C
sub_080DA00C: @ 0x080DA00C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA02C @ =sub_080D7FF0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080DA030
	ldrh r0, [r1, #6]
	adds r0, #0x18
	b _080DA034
	.align 2, 0
_080DA02C: .4byte sub_080D7FF0
_080DA030:
	ldrh r0, [r1, #6]
	subs r0, #0x18
_080DA034:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA050
sub_080DA050: @ 0x080DA050
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA06C @ =sub_080D8338
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
_080DA06C: .4byte sub_080D8338

	thumb_func_start sub_080DA070
sub_080DA070: @ 0x080DA070
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA098 @ =sub_080D8950
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r4, #0xa2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DA098: .4byte sub_080D8950

	thumb_func_start sub_080DA09C
sub_080DA09C: @ 0x080DA09C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA0B8 @ =sub_080D8C98
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
_080DA0B8: .4byte sub_080D8C98

	thumb_func_start sub_080DA0BC
sub_080DA0BC: @ 0x080DA0BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA0E0 @ =sub_080D9388
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DA0E4
	movs r0, #0xc
	b _080DA0E6
	.align 2, 0
_080DA0E0: .4byte sub_080D9388
_080DA0E4:
	movs r0, #0x1c
_080DA0E6:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
