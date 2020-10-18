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
	ldr r2, _080D7C50 @ =gUnk_02020EE0
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
_080D7C50: .4byte gUnk_02020EE0
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
	ldr r1, _080D85A4 @ =gUnk_02020EE0
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
_080D85A4: .4byte gUnk_02020EE0
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
	ldr r1, _080D906C @ =gUnk_02020EE0
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
_080D906C: .4byte gUnk_02020EE0
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
	ldr r1, _080D9160 @ =gUnk_02020EE0
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
_080D9160: .4byte gUnk_02020EE0
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
	ldr r1, _080D92E0 @ =gUnk_02020EE0
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
_080D92E0: .4byte gUnk_02020EE0
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
	ldr r1, _080D9520 @ =gUnk_02020EE0
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
_080D9520: .4byte gUnk_02020EE0
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

	thumb_func_start sub_080D965C
sub_080D965C: @ 0x080D965C
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

	thumb_func_start sub_080D98F0
sub_080D98F0: @ 0x080D98F0
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

	thumb_func_start sub_080DA0F0
sub_080DA0F0: @ 0x080DA0F0
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080DA124 @ =ObjectMain
	ldr r2, _080DA128 @ =0x00001001
	ldr r1, _080DA12C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc0
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DA130
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DA138
	.align 2, 0
_080DA124: .4byte ObjectMain
_080DA128: .4byte 0x00001001
_080DA12C: .4byte ObjectDestroy
_080DA130:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DA138:
	adds r4, r0, #0
	adds r7, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r5, #1
	orrs r0, r5
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	movs r1, #0
	strb r1, [r0]
	adds r0, #0x33
	str r1, [r0]
	adds r0, #4
	strb r1, [r0]
	adds r2, r4, #0
	adds r2, #0xbe
	movs r0, #0
	strh r1, [r2]
	adds r1, r4, #0
	adds r1, #0xbd
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	orrs r0, r5
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xd
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	subs r1, #0x48
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080DA29C @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, _080DA2A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DA1C2
	movs r0, #1
	bl sub_08019DA8
	cmp r0, #0
	beq _080DA1C8
_080DA1C2:
	adds r0, r4, #0
	adds r0, #0x87
	strb r5, [r0]
_080DA1C8:
	movs r0, #0xd4
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	movs r0, #0xec
	lsls r0, r0, #8
	str r0, [r4, #0x44]
	movs r1, #0x20
	rsbs r1, r1, #0
	movs r2, #0x40
	rsbs r2, r2, #0
	movs r0, #0x40
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x20
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #2
	rsbs r0, r0, #0
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080DA2A4 @ =sub_080DB85C
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	bl sub_080DA68C
	adds r1, r7, #0
	adds r1, #0xb4
	str r0, [r1]
	ldr r2, _080DA2A8 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DA2AC @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080DA2B0 @ =gUnk_02020EE0
	ldr r0, _080DA2B4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DA28A
	ldr r0, _080DA2B8 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DA28A
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DA28A:
	adds r0, r4, #0
	bl sub_080DB640
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080DA29C: .4byte 0x001080A0
_080DA2A0: .4byte gUnk_0203AD10
_080DA2A4: .4byte sub_080DB85C
_080DA2A8: .4byte gCurLevelInfo
_080DA2AC: .4byte 0x0000065E
_080DA2B0: .4byte gUnk_02020EE0
_080DA2B4: .4byte gUnk_0203AD3C
_080DA2B8: .4byte gUnk_0203AD20

	thumb_func_start sub_080DA2BC
sub_080DA2BC: @ 0x080DA2BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	mov sl, r1
	orrs r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080DA2F0
	b _080DA480
_080DA2F0:
	adds r0, r5, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sb, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080DA304
	b _080DA480
_080DA304:
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
	bne _080DA334
	b _080DA480
_080DA334:
	ldr r4, _080DA490 @ =gCurLevelInfo
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
	adds r0, r5, #0
	bl sub_080DA4B0
	ldr r0, _080DA494 @ =sub_080DB664
	str r0, [r5, #0x78]
	ldr r0, [r5, #8]
	ldr r1, _080DA498 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080DA3BC
	movs r0, #0
	strb r0, [r1, #9]
_080DA3BC:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r4
	ldr r2, _080DA49C @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080DA480
	ldr r0, _080DA4A0 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080DA480
	mov r1, r8
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	bne _080DA480
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080DA43E
	movs r4, #1
_080DA406:
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
	bls _080DA406
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080DA43E:
	ldr r1, _080DA4A0 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080DA4A4 @ =gUnk_02020EE0
	ldr r0, _080DA4A8 @ =gUnk_0203AD3C
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
	bne _080DA480
	ldr r0, _080DA4AC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DA480
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DA480:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DA490: .4byte gCurLevelInfo
_080DA494: .4byte sub_080DB664
_080DA498: .4byte 0xFFFFFDFF
_080DA49C: .4byte 0x0000065E
_080DA4A0: .4byte gUnk_08352D80
_080DA4A4: .4byte gUnk_02020EE0
_080DA4A8: .4byte gUnk_0203AD3C
_080DA4AC: .4byte gUnk_0203AD20

	thumb_func_start sub_080DA4B0
sub_080DA4B0: @ 0x080DA4B0
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	movs r0, #0
	movs r5, #0
	strh r5, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x9f
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	adds r3, r2, #0
	adds r3, #0x83
	strb r0, [r3]
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r1, r0
	str r1, [r2, #8]
	adds r4, r2, #0
	adds r4, #0x80
	movs r6, #0
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bgt _080DA4F8
	strh r5, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r1, r0
	str r1, [r2, #8]
	movs r0, #5
	strb r0, [r3]
	ldr r0, _080DA4F4 @ =sub_080DB694
	str r0, [r2, #0x78]
	b _080DA538
	.align 2, 0
_080DA4F4: .4byte sub_080DB694
_080DA4F8:
	ldr r0, _080DA528 @ =sub_080DA540
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DA522
	ldr r1, _080DA52C @ =gUnk_08351530
	ldr r0, _080DA530 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r4, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DA534
_080DA522:
	movs r0, #0x10
	b _080DA536
	.align 2, 0
_080DA528: .4byte sub_080DA540
_080DA52C: .4byte gUnk_08351530
_080DA530: .4byte gUnk_0203AD30
_080DA534:
	movs r0, #0x30
_080DA536:
	strh r0, [r2, #4]
_080DA538:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA540
sub_080DA540: @ 0x080DA540
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	adds r3, r5, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r2, r5, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #4
	bne _080DA578
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2a
	bls _080DA580
	movs r0, #0
	strb r0, [r2]
	b _080DA580
_080DA578:
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
_080DA580:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DA672
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x87
	ldrb r1, [r1]
	mov ip, r0
	cmp r1, #0
	bne _080DA5C2
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080DA5C8 @ =gUnk_08351530
	ldr r0, _080DA5CC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DA5D0
_080DA5C2:
	movs r0, #0x10
	b _080DA5D2
	.align 2, 0
_080DA5C8: .4byte gUnk_08351530
_080DA5CC: .4byte gUnk_0203AD30
_080DA5D0:
	movs r0, #0x30
_080DA5D2:
	strh r0, [r3, #4]
	ldr r6, _080DA650 @ =gRngVal
	ldr r0, [r6]
	ldr r7, _080DA654 @ =0x00196225
	mov sb, r7
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _080DA658 @ =0x3C6EF35F
	mov r8, r2
	adds r4, r0, r2
	str r4, [r6]
	lsrs r0, r4, #0x10
	movs r7, #1
	mov sl, r7
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080DA600
	mov r2, ip
	ldrb r0, [r2]
	cmp r0, #3
	bls _080DA672
_080DA600:
	movs r7, #0x80
	ldr r1, _080DA65C @ =gUnk_08351530
	ldr r0, _080DA660 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldrsh r1, [r7, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080DA66C
	mov r0, sb
	muls r0, r4, r0
	add r0, r8
	str r0, [r6]
	lsrs r0, r0, #0x10
	mov r4, sl
	ands r0, r4
	adds r1, r3, #0
	adds r1, #0x85
	cmp r0, #0
	bne _080DA638
	ldrb r0, [r1]
	cmp r0, #0
	bne _080DA66C
_080DA638:
	mov r7, sl
	strb r7, [r1]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _080DA664
	adds r0, r3, #0
	bl sub_080DB6BC
	b _080DA672
	.align 2, 0
_080DA650: .4byte gRngVal
_080DA654: .4byte 0x00196225
_080DA658: .4byte 0x3C6EF35F
_080DA65C: .4byte gUnk_08351530
_080DA660: .4byte gUnk_0203AD30
_080DA664:
	adds r0, r3, #0
	bl sub_080DB790
	b _080DA672
_080DA66C:
	adds r0, r3, #0
	bl sub_080DB790
_080DA672:
	adds r1, r5, #0
	adds r1, #0xbe
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA68C
sub_080DA68C: @ 0x080DA68C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080DA6C0 @ =sub_080DA768
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080DA6C4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DA6C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DA6D0
	.align 2, 0
_080DA6C0: .4byte sub_080DA768
_080DA6C4: .4byte sub_0803DCCC
_080DA6C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DA6D0:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r7, _080DA748 @ =0x00000303
	movs r0, #7
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x1e
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080DA74C @ =gUnk_02020EE0
	ldr r0, _080DA750 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DA754
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DA758
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DA758
	.align 2, 0
_080DA748: .4byte 0x00000303
_080DA74C: .4byte gUnk_02020EE0
_080DA750: .4byte gUnk_0203AD3C
_080DA754:
	mov r1, r8
	strb r1, [r5]
_080DA758:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080DA768
sub_080DA768: @ 0x080DA768
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	ldr r2, _080DA790 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DA794
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DA79C
	.align 2, 0
_080DA790: .4byte gCurTask
_080DA794:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DA79C:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov sb, r0
	mov sl, sb
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DA7BA
	ldr r0, [r2]
	bl TaskDestroy
	b _080DAAD6
_080DA7BA:
	mov r2, sb
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DA7CA
	adds r0, r1, #0
	orrs r0, r3
	b _080DAAD4
_080DA7CA:
	ldr r0, _080DA890 @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r4, #0x42
	adds r4, r4, r5
	mov r8, r4
	ldr r3, [r5, #0xc]
	adds r6, r5, #0
	adds r6, #0x2b
	cmp r0, #0
	beq _080DA81A
	ldr r7, _080DA894 @ =gCurLevelInfo
	mov ip, r7
	ldrh r4, [r4]
_080DA7E4:
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
	bne _080DA812
	adds r7, #0x66
	adds r0, r1, r7
	ldrb r0, [r0]
	lsls r0, r0, #1
	ldr r1, _080DA898 @ =gUnk_02026D50
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080DA82C
_080DA812:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080DA7E4
_080DA81A:
	movs r0, #1
	cmp r0, #0
	beq _080DA82C
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080DA82C:
	ldr r2, _080DA89C @ =gUnk_02020EE0
	ldr r0, _080DA8A0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _080DA8E0
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080DA8AC
	cmp r3, #0
	bne _080DA906
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x1e
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DA8A4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DA8A8 @ =0x0400000A
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
	b _080DA906
	.align 2, 0
_080DA890: .4byte gUnk_0203AD44
_080DA894: .4byte gCurLevelInfo
_080DA898: .4byte gUnk_02026D50
_080DA89C: .4byte gUnk_02020EE0
_080DA8A0: .4byte gUnk_0203AD3C
_080DA8A4: .4byte 0xFFF7FFFF
_080DA8A8: .4byte 0x0400000A
_080DA8AC:
	cmp r3, #0
	bne _080DA906
	movs r0, #0x1e
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DA8D8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DA8DC @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DA906
	.align 2, 0
_080DA8D8: .4byte 0xFFF7FFFF
_080DA8DC: .4byte 0x0400000A
_080DA8E0:
	cmp r3, #0
	beq _080DA8FC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DA8FC
	adds r0, r3, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DA8FC:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DA906:
	ldr r2, _080DA944 @ =gUnk_02020EE0
	ldr r0, _080DA948 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r7, r8
	ldrh r7, [r7]
	cmp r0, r7
	bne _080DA950
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DA954
	ldr r4, _080DA94C @ =0x00000303
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DA954
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DA952
	.align 2, 0
_080DA944: .4byte gUnk_02020EE0
_080DA948: .4byte gUnk_0203AD3C
_080DA94C: .4byte 0x00000303
_080DA950:
	movs r0, #0
_080DA952:
	strb r0, [r6]
_080DA954:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DA9A8
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DA972
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DA972
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DA972:
	cmp r3, #0
	beq _080DA9A8
	ldr r0, _080DA9A4 @ =gUnk_03000510
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
	beq _080DAA18
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DAA18
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DAAD6
	.align 2, 0
_080DA9A4: .4byte gUnk_03000510
_080DA9A8:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DAA10 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r6, r8
	ldrh r1, [r6]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DA9E8
	movs r3, #4
_080DA9E8:
	ldr r0, _080DAA14 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DAA18
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DAA18
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DAAD6
	.align 2, 0
_080DAA10: .4byte gUnk_02020EE0
_080DAA14: .4byte gUnk_03000510
_080DAA18:
	mov r0, sb
	ldr r1, [r0, #0x78]
	ldr r0, _080DAA78 @ =sub_080DB7DC
	cmp r1, r0
	bne _080DAABE
	mov r1, sl
	adds r1, #0xbd
	movs r0, #0
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	movs r3, #1
	strh r3, [r5, #8]
	mov r0, sb
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DAA5C
	mov r2, sb
	adds r2, #0x80
	ldr r1, _080DAA7C @ =gUnk_08351530
	ldr r0, _080DAA80 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DAA90
_080DAA5C:
	ldr r2, _080DAA84 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DAA88 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080DAA8C @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080DAAAA
	b _080DAAA6
	.align 2, 0
_080DAA78: .4byte sub_080DB7DC
_080DAA7C: .4byte gUnk_08351530
_080DAA80: .4byte gUnk_0203AD30
_080DAA84: .4byte gRngVal
_080DAA88: .4byte 0x00196225
_080DAA8C: .4byte 0x3C6EF35F
_080DAA90:
	ldr r2, _080DAAE8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DAAEC @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080DAAF0 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _080DAAAA
_080DAAA6:
	movs r0, #2
	strh r0, [r5, #8]
_080DAAAA:
	ldr r0, _080DAAF4 @ =0x00000303
	strh r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #8
	strb r0, [r1]
	ldr r0, _080DAAF8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080DAAFC @ =sub_080DAB00
	str r0, [r1, #8]
_080DAABE:
	adds r0, r5, #0
	bl sub_0806FAC8
	mov r0, sb
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bne _080DAAD6
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
_080DAAD4:
	strh r0, [r5, #6]
_080DAAD6:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DAAE8: .4byte gRngVal
_080DAAEC: .4byte 0x00196225
_080DAAF0: .4byte 0x3C6EF35F
_080DAAF4: .4byte 0x00000303
_080DAAF8: .4byte gCurTask
_080DAAFC: .4byte sub_080DAB00

	thumb_func_start sub_080DAB00
sub_080DAB00: @ 0x080DAB00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	ldr r2, _080DAB28 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DAB2C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DAB34
	.align 2, 0
_080DAB28: .4byte gCurTask
_080DAB2C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DAB34:
	adds r5, r0, #0
	ldr r6, [r5, #0x44]
	mov sl, r6
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DAB50
	ldr r0, [r2]
	bl TaskDestroy
	b _080DAFCC
_080DAB50:
	ldr r0, [r6, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DAB60
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DAFCC
_080DAB60:
	ldr r0, _080DAC2C @ =gUnk_0203AD44
	ldrb r0, [r0]
	movs r1, #0x42
	adds r1, r1, r5
	mov r8, r1
	ldr r3, [r5, #0xc]
	adds r7, r5, #0
	adds r7, #0x2b
	cmp r0, #0
	beq _080DABB6
	ldr r2, _080DAC30 @ =gCurLevelInfo
	mov sb, r2
	ldrh r4, [r1]
	str r4, [sp, #0x28]
	ldr r1, _080DAC34 @ =gUnk_02026D50
	mov ip, r1
_080DAB80:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r4, sb
	adds r1, r0, r4
	movs r4, #0xbf
	lsls r4, r4, #3
	adds r0, r1, r4
	ldrh r0, [r0]
	ldr r4, [sp, #0x28]
	cmp r0, r4
	bne _080DABAE
	ldr r4, _080DAC38 @ =0x0000065E
	adds r0, r1, r4
	ldrb r0, [r0]
	lsls r0, r0, #1
	add r0, ip
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080DABC8
_080DABAE:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080DAB80
_080DABB6:
	movs r0, #1
	cmp r0, #0
	beq _080DABC8
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080DABC8:
	ldr r2, _080DAC3C @ =gUnk_02020EE0
	ldr r0, _080DAC40 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r4, r8
	ldrh r4, [r4]
	cmp r0, r4
	bne _080DAC80
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080DAC4C
	cmp r3, #0
	bne _080DACA6
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x1e
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DAC44 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DAC48 @ =0x0400000A
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
	b _080DACA6
	.align 2, 0
_080DAC2C: .4byte gUnk_0203AD44
_080DAC30: .4byte gCurLevelInfo
_080DAC34: .4byte gUnk_02026D50
_080DAC38: .4byte 0x0000065E
_080DAC3C: .4byte gUnk_02020EE0
_080DAC40: .4byte gUnk_0203AD3C
_080DAC44: .4byte 0xFFF7FFFF
_080DAC48: .4byte 0x0400000A
_080DAC4C:
	cmp r3, #0
	bne _080DACA6
	movs r0, #0x1e
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DAC78 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DAC7C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DACA6
	.align 2, 0
_080DAC78: .4byte 0xFFF7FFFF
_080DAC7C: .4byte 0x0400000A
_080DAC80:
	cmp r3, #0
	beq _080DAC9C
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DAC9C
	adds r0, r3, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DAC9C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DACA6:
	ldr r2, _080DACE4 @ =gUnk_02020EE0
	ldr r0, _080DACE8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DACF0
	ldrb r0, [r7]
	cmp r0, #0
	bne _080DACF4
	ldr r4, _080DACEC @ =0x00000303
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DACF4
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DACF2
	.align 2, 0
_080DACE4: .4byte gUnk_02020EE0
_080DACE8: .4byte gUnk_0203AD3C
_080DACEC: .4byte 0x00000303
_080DACF0:
	movs r0, #0
_080DACF2:
	strb r0, [r7]
_080DACF4:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DAD48
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DAD12
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DAD12
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DAD12:
	cmp r3, #0
	beq _080DAD48
	ldr r0, _080DAD44 @ =gUnk_03000510
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
	beq _080DADB8
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DADB8
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DAFCC
	.align 2, 0
_080DAD44: .4byte gUnk_03000510
_080DAD48:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DADB0 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	mov r7, r8
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DAD88
	movs r3, #1
	movs r7, #0x82
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DAD88
	movs r3, #2
	movs r7, #0xec
	lsls r7, r7, #2
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DAD88
	movs r3, #3
	movs r7, #0xab
	lsls r7, r7, #3
	adds r0, r2, r7
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DAD88
	movs r3, #4
_080DAD88:
	ldr r0, _080DADB4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DADB8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DADB8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DAFCC
	.align 2, 0
_080DADB0: .4byte gUnk_02020EE0
_080DADB4: .4byte gUnk_03000510
_080DADB8:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x12
	beq _080DADC2
	b _080DAF3C
_080DADC2:
	mov r0, sl
	adds r0, #0xbd
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DAEC4
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r0, #1
	beq _080DADE0
	cmp r0, #2
	beq _080DADF4
_080DADE0:
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DAE1E
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
	b _080DAE38
_080DADF4:
	adds r2, r6, #0
	adds r2, #0x80
	ldr r1, _080DAE28 @ =gUnk_08351530
	ldr r0, _080DAE2C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DAE38
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DAE30
_080DAE1E:
	adds r0, r6, #0
	movs r1, #1
	bl sub_080DB1B8
	b _080DAE38
	.align 2, 0
_080DAE28: .4byte gUnk_08351530
_080DAE2C: .4byte gUnk_0203AD30
_080DAE30:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
_080DAE38:
	ldr r1, _080DAEA4 @ =gUnk_02020EE0
	ldr r0, _080DAEA8 @ =gUnk_0203AD3C
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
	bne _080DAF34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DAE64
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DAF34
_080DAE64:
	ldr r1, _080DAEAC @ =gUnk_08D60FA4
	ldr r4, _080DAEB0 @ =gSongTable
	ldr r7, _080DAEB4 @ =0x00000C0C
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DAE88
	ldr r1, _080DAEB8 @ =0x00000C08
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DAF34
_080DAE88:
	cmp r3, #0
	beq _080DAE9A
	ldr r0, _080DAEBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DAF34
_080DAE9A:
	ldr r0, _080DAEC0 @ =0x00000181
	bl m4aSongNumStart
	b _080DAF34
	.align 2, 0
_080DAEA4: .4byte gUnk_02020EE0
_080DAEA8: .4byte gUnk_0203AD3C
_080DAEAC: .4byte gUnk_08D60FA4
_080DAEB0: .4byte gSongTable
_080DAEB4: .4byte 0x00000C0C
_080DAEB8: .4byte 0x00000C08
_080DAEBC: .4byte gUnk_0203AD10
_080DAEC0: .4byte 0x00000181
_080DAEC4:
	adds r0, r6, #0
	movs r1, #0
	bl sub_080DB1B8
	ldr r1, _080DAFDC @ =gUnk_02020EE0
	ldr r0, _080DAFE0 @ =gUnk_0203AD3C
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
	bne _080DAF34
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DAEF8
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DAF34
_080DAEF8:
	ldr r1, _080DAFE4 @ =gUnk_08D60FA4
	ldr r4, _080DAFE8 @ =gSongTable
	ldr r2, _080DAFEC @ =0x00000C0C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DAF1C
	ldr r7, _080DAFF0 @ =0x00000C08
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DAF34
_080DAF1C:
	cmp r3, #0
	beq _080DAF2E
	ldr r0, _080DAFF4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DAF34
_080DAF2E:
	ldr r0, _080DAFF8 @ =0x00000181
	bl m4aSongNumStart
_080DAF34:
	movs r0, #2
	adds r1, r6, #0
	bl sub_0806FE64
_080DAF3C:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DAF8C
	mov r0, sl
	adds r0, #0xbd
	ldrb r1, [r0]
	movs r2, #8
	ldrsh r0, [r5, r2]
	cmp r1, r0
	blt _080DAF8C
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r0, #0x64
	ble _080DAF8C
	adds r0, r6, #0
	adds r0, #0x80
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	ble _080DAF6E
	adds r0, r6, #0
	bl sub_080DA4B0
_080DAF6E:
	mov r1, sl
	adds r1, #0xbc
	movs r0, #0
	strb r0, [r1]
	strh r0, [r5, #4]
	ldr r0, _080DAFFC @ =0x00000303
	strh r0, [r5, #0x18]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #7
	strb r0, [r1]
	ldr r0, _080DB000 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080DB004 @ =sub_080DA768
	str r0, [r1, #8]
_080DAF8C:
	ldrb r0, [r5, #1]
	cmp r0, #0x20
	bne _080DAFC0
	mov r1, sl
	adds r1, #0xbd
	ldrb r2, [r1]
	movs r7, #8
	ldrsh r0, [r5, r7]
	cmp r2, r0
	bge _080DAFC0
	adds r0, r2, #1
	movs r2, #0
	strb r0, [r1]
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	strh r2, [r5, #4]
	ldr r0, [r6, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #8]
	ldrh r1, [r5, #6]
	ldr r0, _080DB008 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #6]
_080DAFC0:
	adds r0, r5, #0
	bl sub_0806FAC8
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080DAFCC:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DAFDC: .4byte gUnk_02020EE0
_080DAFE0: .4byte gUnk_0203AD3C
_080DAFE4: .4byte gUnk_08D60FA4
_080DAFE8: .4byte gSongTable
_080DAFEC: .4byte 0x00000C0C
_080DAFF0: .4byte 0x00000C08
_080DAFF4: .4byte gUnk_0203AD10
_080DAFF8: .4byte 0x00000181
_080DAFFC: .4byte 0x00000303
_080DB000: .4byte gCurTask
_080DB004: .4byte sub_080DA768
_080DB008: .4byte 0x0000FFFD

	thumb_func_start sub_080DB00C
sub_080DB00C: @ 0x080DB00C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080DB040 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080DB044 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DB048
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080DB050
	.align 2, 0
_080DB040: .4byte ObjectMain
_080DB044: .4byte ObjectDestroy
_080DB048:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080DB050:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0x9c
	bne _080DB096
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	ldr r1, _080DB0F0 @ =0x00108020
	orrs r0, r1
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #6
	orrs r0, r1
	str r0, [r4, #0x5c]
_080DB096:
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #4
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
	ldr r2, _080DB0F4 @ =gUnk_08351648
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080DB0F8 @ =sub_0809F840
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080DB0F0: .4byte 0x00108020
_080DB0F4: .4byte gUnk_08351648
_080DB0F8: .4byte sub_0809F840

	thumb_func_start sub_080DB0FC
sub_080DB0FC: @ 0x080DB0FC
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080DB122
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080DB130
	b _080DB12C
_080DB122:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080DB130
_080DB12C:
	movs r0, #0
	strh r0, [r1]
_080DB130:
	ldr r1, [r3, #0x44]
	movs r0, #0x94
	lsls r0, r0, #9
	cmp r1, r0
	ble _080DB1B2
	movs r0, #0x85
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	cmp r0, #1
	bne _080DB17E
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB1B2
	adds r0, r3, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	beq _080DB1B2
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #0
	movs r0, #2
	mov r2, ip
	strb r0, [r2]
	adds r0, r3, #0
	adds r0, #0x62
	strb r1, [r0]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080DB1B0
_080DB17E:
	cmp r0, #0
	bne _080DB1B2
	movs r2, #1
	mov r4, ip
	strb r2, [r4]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r1]
	subs r1, #0x26
	movs r0, #0x20
	strb r0, [r1]
	ldr r0, [r3, #8]
	ands r0, r2
	cmp r0, #0
	beq _080DB1A8
	adds r1, #0x24
	movs r0, #0x80
	lsls r0, r0, #1
	b _080DB1B0
_080DB1A8:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
_080DB1B0:
	strh r0, [r1]
_080DB1B2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DB1B8
sub_080DB1B8: @ 0x080DB1B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	lsls r1, r1, #0x18
	movs r0, #0x9b
	str r0, [sp]
	cmp r1, #0
	beq _080DB1D4
	movs r1, #0x9c
	str r1, [sp]
_080DB1D4:
	ldr r0, [r6, #0x40]
	asrs r7, r0, #8
	ldr r0, [r6, #0x44]
	asrs r5, r0, #8
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB206
	adds r2, r6, #0
	adds r2, #0x80
	ldr r1, _080DB2B8 @ =gUnk_08351530
	ldr r0, _080DB2BC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DB2D4
_080DB206:
	ldr r2, _080DB2C0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DB2C4 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080DB2C8 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080DB2CC @ =0x00002AAA
	mov sl, r2
	adds r4, r6, #0
	adds r4, #0xbc
	subs r7, #0x32
	subs r5, #0x1c
	mov ip, r5
	ldr r2, _080DB2D0 @ =gUnk_020229D4
	mov r8, r2
	adds r2, r6, #0
	adds r2, #0xb0
	str r2, [sp, #4]
	subs r2, #0x5a
	str r2, [sp, #8]
	cmp r3, r0
	blt _080DB24C
	adds r5, r0, #0
_080DB23A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _080DB24C
	adds r0, r1, #1
	muls r0, r5, r0
	cmp r3, r0
	bge _080DB23A
_080DB24C:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DB294
	ldr r5, _080DB2C0 @ =gRngVal
_080DB25C:
	ldr r1, [r5]
	ldr r0, _080DB2C4 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080DB2C8 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r5]
	lsrs r3, r0, #0x10
	movs r1, #0
	ldr r0, _080DB2CC @ =0x00002AAA
	cmp r3, r0
	blt _080DB286
	adds r2, r0, #0
_080DB274:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _080DB286
	adds r0, r1, #1
	muls r0, r2, r0
	cmp r3, r0
	bge _080DB274
_080DB286:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DB25C
_080DB294:
	movs r0, #0x1a
	muls r0, r3, r0
	subs r7, r7, r0
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _080DB2C4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DB2C8 @ =0x3C6EF35F
	adds r0, r0, r1
	mov r2, sl
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x18
	ands r0, r1
	mov r1, ip
	subs r5, r1, r0
	b _080DB384
	.align 2, 0
_080DB2B8: .4byte gUnk_08351530
_080DB2BC: .4byte gUnk_0203AD30
_080DB2C0: .4byte gRngVal
_080DB2C4: .4byte 0x00196225
_080DB2C8: .4byte 0x3C6EF35F
_080DB2CC: .4byte 0x00002AAA
_080DB2D0: .4byte gUnk_020229D4
_080DB2D4:
	ldr r2, _080DB3A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DB3A8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080DB3AC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #7
	mov sl, r2
	adds r4, r6, #0
	adds r4, #0xbc
	subs r5, #0x1c
	mov ip, r5
	subs r7, #0x3a
	mov sb, r7
	ldr r2, _080DB3B0 @ =gUnk_020229D4
	mov r8, r2
	adds r2, r6, #0
	adds r2, #0xb0
	str r2, [sp, #4]
	subs r2, #0x5a
	str r2, [sp, #8]
	cmp r3, r0
	blt _080DB31C
_080DB30A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bhi _080DB31C
	adds r0, r1, #1
	lsls r0, r0, #0xe
	cmp r3, r0
	bge _080DB30A
_080DB31C:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DB364
	ldr r2, _080DB3A4 @ =gRngVal
	movs r7, #1
	movs r5, #0x80
	lsls r5, r5, #7
_080DB332:
	ldr r1, [r2]
	ldr r0, _080DB3A8 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080DB3AC @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0
	cmp r3, r5
	blt _080DB358
_080DB346:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #2
	bhi _080DB358
	adds r0, r1, #1
	lsls r0, r0, #0xe
	cmp r3, r0
	bge _080DB346
_080DB358:
	adds r3, r1, #0
	ldrb r0, [r4]
	asrs r0, r3
	ands r0, r7
	cmp r0, #0
	bne _080DB332
_080DB364:
	movs r0, #0x2a
	muls r0, r3, r0
	mov r1, sb
	subs r7, r1, r0
	mov r2, sl
	ldr r1, [r2]
	ldr r0, _080DB3A8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DB3AC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x18
	ands r0, r1
	mov r2, ip
	subs r5, r2, r0
_080DB384:
	movs r2, #1
	adds r0, r2, #0
	lsls r0, r3
	ldrb r1, [r4]
	orrs r0, r1
	strb r0, [r4]
	movs r3, #0
	mov r4, r8
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080DB3B4
	orrs r1, r2
	str r1, [r4]
	b _080DB3D4
	.align 2, 0
_080DB3A4: .4byte gRngVal
_080DB3A8: .4byte 0x00196225
_080DB3AC: .4byte 0x3C6EF35F
_080DB3B0: .4byte gUnk_020229D4
_080DB3B4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080DB3D4
	movs r2, #1
	lsls r2, r3
	mov r0, r8
	ldr r1, [r0]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080DB3B4
	orrs r1, r2
	mov r2, r8
	str r1, [r2]
_080DB3D4:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _080DB438 @ =gUnk_020229E0
	adds r1, r1, r3
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r7, [r1, #6]
	strh r5, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r4, sp
	ldrb r4, [r4]
	strb r4, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r4, [sp, #4]
	ldr r0, [r4]
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
	ldr r2, [sp, #8]
	ldrb r0, [r2]
	bl CreateObject
	str r6, [r0, #0x70]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DB438: .4byte gUnk_020229E0

	thumb_func_start sub_080DB43C
sub_080DB43C: @ 0x080DB43C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r4, r0, #0
	str r4, [sp]
	ldr r3, _080DB4C0 @ =gRngVal
	ldr r0, [r3]
	ldr r7, _080DB4C4 @ =0x00196225
	muls r0, r7, r0
	ldr r6, _080DB4C8 @ =0x3C6EF35F
	adds r2, r0, r6
	str r2, [r3]
	lsrs r1, r2, #0x10
	movs r0, #3
	ands r1, r0
	ldr r5, _080DB4CC @ =gUnk_020229D4
	cmp r1, #3
	bne _080DB47C
	mov ip, r3
	movs r3, #3
	adds r0, r2, #0
_080DB46C:
	muls r0, r7, r0
	adds r0, r0, r6
	lsrs r1, r0, #0x10
	ands r1, r3
	cmp r1, #3
	beq _080DB46C
	mov r2, ip
	str r0, [r2]
_080DB47C:
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r0, #0x10
	mov r8, r0
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r0, #0x28
	mov ip, r0
	ldr r3, [sp]
	adds r3, #0xb8
	mov sl, r3
	movs r3, #0
	movs r6, #1
	ldr r2, [r5]
	adds r0, r2, #0
	ands r0, r6
	mov r7, sl
	str r7, [sp, #4]
	adds r7, r1, #0
	adds r7, #0x1f
	movs r1, #0xb0
	adds r1, r1, r4
	mov sb, r1
	adds r1, r4, #0
	adds r1, #0x56
	str r1, [sp, #0xc]
	adds r1, #0xa
	str r1, [sp, #8]
	cmp r0, #0
	bne _080DB4D0
	orrs r2, r6
	str r2, [r5]
	b _080DB4EC
	.align 2, 0
_080DB4C0: .4byte gRngVal
_080DB4C4: .4byte 0x00196225
_080DB4C8: .4byte 0x3C6EF35F
_080DB4CC: .4byte gUnk_020229D4
_080DB4D0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _080DB4EC
	movs r2, #1
	lsls r2, r3
	ldr r1, [r5]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _080DB4D0
	orrs r1, r2
	str r1, [r5]
_080DB4EC:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r2, _080DB5C4 @ =gUnk_020229E0
	adds r1, r1, r2
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r5, r8
	strh r5, [r1, #6]
	mov r0, ip
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	strb r7, [r1, #0xc]
	movs r0, #0x80
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r5, sb
	ldr r0, [r5]
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
	ldr r7, [sp, #0xc]
	ldrb r0, [r7]
	bl CreateObject
	mov r1, sl
	str r0, [r1]
	ldr r2, [sp, #4]
	ldr r0, [r2]
	ldr r3, [sp]
	str r3, [r0, #0x70]
	ldr r1, _080DB5C8 @ =gUnk_02020EE0
	ldr r0, _080DB5CC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r5, [sp, #8]
	ldrh r5, [r5]
	cmp r0, r5
	bne _080DB5B2
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DB572
	ldrb r0, [r7]
	cmp r0, r2
	bne _080DB5B2
_080DB572:
	ldr r1, _080DB5D0 @ =gUnk_08D60FA4
	ldr r4, _080DB5D4 @ =gSongTable
	ldr r7, _080DB5D8 @ =0x00000C14
	adds r0, r4, r7
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DB598
	movs r1, #0xc1
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DB5B2
_080DB598:
	cmp r3, #0
	beq _080DB5AA
	ldr r0, _080DB5DC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DB5B2
_080DB5AA:
	movs r0, #0xc1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DB5B2:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DB5C4: .4byte gUnk_020229E0
_080DB5C8: .4byte gUnk_02020EE0
_080DB5CC: .4byte gUnk_0203AD3C
_080DB5D0: .4byte gUnk_08D60FA4
_080DB5D4: .4byte gSongTable
_080DB5D8: .4byte 0x00000C14
_080DB5DC: .4byte gUnk_0203AD10

	thumb_func_start sub_080DB5E0
sub_080DB5E0: @ 0x080DB5E0
	push {r4, lr}
	adds r3, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x83
	strb r4, [r0]
	ldr r2, _080DB630 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DB634 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DB638 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DB60E
	ldr r0, [r3, #8]
	orrs r0, r1
	str r0, [r3, #8]
_080DB60E:
	ldr r0, [r3, #8]
	movs r1, #8
	orrs r0, r1
	adds r1, #0xf8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x85
	strb r4, [r0]
	ldr r0, _080DB63C @ =sub_080DB7FC
	str r0, [r3, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DB630: .4byte gRngVal
_080DB634: .4byte 0x00196225
_080DB638: .4byte 0x3C6EF35F
_080DB63C: .4byte sub_080DB7FC

	thumb_func_start sub_080DB640
sub_080DB640: @ 0x080DB640
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DB660 @ =sub_080DA2BC
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
_080DB660: .4byte sub_080DA2BC

	thumb_func_start sub_080DB664
sub_080DB664: @ 0x080DB664
	push {lr}
	adds r2, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #4
	beq _080DB678
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
_080DB678:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _080DB690
	movs r0, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	bl sub_080DA4B0
_080DB690:
	pop {r0}
	bx r0

	thumb_func_start sub_080DB694
sub_080DB694: @ 0x080DB694
	push {lr}
	adds r2, r0, #0
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0x23
	ble _080DB6B0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
_080DB6B0:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DB6BC
sub_080DB6BC: @ 0x080DB6BC
	movs r1, #0
	strh r1, [r0, #4]
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #1
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _080DB6D8 @ =sub_080DB6DC
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080DB6D8: .4byte sub_080DB6DC

	thumb_func_start sub_080DB6DC
sub_080DB6DC: @ 0x080DB6DC
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	bne _080DB6FC
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_080DB43C
_080DB6FC:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB726
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080DB738 @ =gUnk_08351530
	ldr r0, _080DB73C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x70
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bge _080DB740
_080DB726:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x38
	ble _080DB74E
	adds r0, r4, #0
	bl sub_080DB754
	b _080DB74E
	.align 2, 0
_080DB738: .4byte gUnk_08351530
_080DB73C: .4byte gUnk_0203AD30
_080DB740:
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0x52
	ble _080DB74E
	adds r0, r4, #0
	bl sub_080DB754
_080DB74E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DB754
sub_080DB754: @ 0x080DB754
	movs r1, #0
	strh r1, [r0, #4]
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #2
	strb r1, [r2]
	ldr r1, [r0, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r0, #8]
	ldr r1, _080DB770 @ =sub_080DB774
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_080DB770: .4byte sub_080DB774

	thumb_func_start sub_080DB774
sub_080DB774: @ 0x080DB774
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080DB78C
	adds r0, r1, #0
	bl sub_080DA4B0
_080DB78C:
	pop {r0}
	bx r0

	thumb_func_start sub_080DB790
sub_080DB790: @ 0x080DB790
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DB7AA
	adds r0, r2, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	cmp r0, #0x37
	bls _080DB7D2
	b _080DB7B4
_080DB7AA:
	adds r0, r2, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	cmp r0, #0x57
	bls _080DB7D2
_080DB7B4:
	adds r1, #0xbe
	movs r0, #0
	strh r0, [r1]
	strh r0, [r2, #4]
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, _080DB7D8 @ =sub_080DB7DC
	str r0, [r2, #0x78]
_080DB7D2:
	pop {r0}
	bx r0
	.align 2, 0
_080DB7D8: .4byte sub_080DB7DC

	thumb_func_start sub_080DB7DC
sub_080DB7DC: @ 0x080DB7DC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	ldr r1, _080DB7F8 @ =0x03E70000
	cmp r0, r1
	ble _080DB7F4
	adds r0, r2, #0
	bl sub_080DA4B0
_080DB7F4:
	pop {r0}
	bx r0
	.align 2, 0
_080DB7F8: .4byte 0x03E70000

	thumb_func_start sub_080DB7FC
sub_080DB7FC: @ 0x080DB7FC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080DB818
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	eors r0, r1
	str r0, [r2, #8]
_080DB818:
	movs r0, #4
	ldrsh r1, [r2, r0]
	cmp r1, #0x24
	bne _080DB82A
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB838
_080DB82A:
	cmp r1, #0x3c
	bne _080DB84C
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DB84C
_080DB838:
	movs r0, #0
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	ldr r1, _080DB850 @ =0xFFFFFBFF
	ands r0, r1
	ldr r1, _080DB854 @ =0xFFFFF5B7
	ands r0, r1
	str r0, [r2, #8]
	ldr r0, _080DB858 @ =sub_080DB0FC
	str r0, [r2, #0x78]
_080DB84C:
	pop {r0}
	bx r0
	.align 2, 0
_080DB850: .4byte 0xFFFFFBFF
_080DB854: .4byte 0xFFFFF5B7
_080DB858: .4byte sub_080DB0FC

	thumb_func_start sub_080DB85C
sub_080DB85C: @ 0x080DB85C
	push {lr}
	adds r3, r0, #0
	ldr r0, _080DB8A0 @ =gUnk_03000510
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
	bne _080DB89A
	ldr r0, [r3, #0xc]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080DB89A
	ldr r2, _080DB8A4 @ =gUnk_08351648
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x83
	strb r1, [r0]
_080DB89A:
	pop {r0}
	bx r0
	.align 2, 0
_080DB8A0: .4byte gUnk_03000510
_080DB8A4: .4byte gUnk_08351648

	thumb_func_start sub_080DB8A8
sub_080DB8A8: @ 0x080DB8A8
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080DB8DC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080DB8E0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DB8E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DB8EC
	.align 2, 0
_080DB8DC: .4byte ObjectMain
_080DB8E0: .4byte ObjectDestroy
_080DB8E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DB8EC:
	adds r5, r0, #0
	adds r6, r5, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r2, #1
	orrs r0, r2
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	ldr r1, _080DB9FC @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0xb0
	lsls r1, r1, #8
	str r1, [r5, #0x40]
	orrs r0, r2
	str r0, [r5, #8]
	ldr r0, [r5, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080DBA00 @ =0x001080A0
	orrs r0, r1
	str r0, [r5, #0x5c]
	ldr r0, [r5, #0x68]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #0x68]
	movs r1, #0x1a
	rsbs r1, r1, #0
	subs r2, #0x15
	movs r0, #0xe
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0x1a
	bl sub_0803E2B0
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080DBA04 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DBA08 @ =0x0000065E
	adds r0, r0, r1
	ldrb r4, [r0]
	adds r0, r4, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r4, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r4, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080DBA0C @ =gUnk_02020EE0
	ldr r0, _080DBA10 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DB9C8
	ldr r0, _080DBA14 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DB9C8
	adds r0, r4, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DB9C8:
	adds r0, r5, #0
	adds r0, #0x9e
	movs r4, #0
	strb r4, [r0]
	ldr r0, _080DBA18 @ =sub_080DEF64
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	bl sub_080DF000
	adds r0, r6, #0
	adds r0, #0xbc
	str r4, [r0]
	adds r0, #4
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, #1
	strb r4, [r0]
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080DB9FC: .4byte 0xFFFFFBFF
_080DBA00: .4byte 0x001080A0
_080DBA04: .4byte gCurLevelInfo
_080DBA08: .4byte 0x0000065E
_080DBA0C: .4byte gUnk_02020EE0
_080DBA10: .4byte gUnk_0203AD3C
_080DBA14: .4byte gUnk_0203AD20
_080DBA18: .4byte sub_080DEF64

	thumb_func_start sub_080DBA1C
sub_080DBA1C: @ 0x080DBA1C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080DBAEA
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DBAEA
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
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
	beq _080DBAEA
	ldr r3, _080DBAF4 @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
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
	muls r0, r2, r0
	adds r1, r3, #0
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
	muls r0, r2, r0
	adds r1, r3, #0
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
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_080DF2BC
_080DBAEA:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DBAF4: .4byte gCurLevelInfo

	thumb_func_start sub_080DBAF8
sub_080DBAF8: @ 0x080DBAF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	mov sb, r5
	adds r3, r5, #0
	adds r3, #0x9e
	ldrb r2, [r3]
	cmp r2, #0
	bne _080DBB30
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	beq _080DBB20
	b _080DBC74
_080DBB20:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	strh r2, [r5, #4]
	movs r0, #1
	strb r0, [r3]
	b _080DBC74
_080DBB30:
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #6
	mov sl, r2
	cmp r0, r1
	ble _080DBB50
	str r1, [r5, #0x44]
	adds r0, r5, #0
	bl sub_080DBE3C
	b _080DBC74
_080DBB50:
	ldrh r0, [r5, #4]
	adds r0, #1
	movs r4, #0
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x6f
	bne _080DBB66
	adds r0, r5, #0
	adds r0, #0x83
	strb r4, [r0]
_080DBB66:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0x20
	bne _080DBC4C
	adds r0, r5, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080DBB7A
	strb r4, [r0, #9]
_080DBB7A:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r4, [r0]
	adds r3, r4, #0
	subs r3, #0x38
	ldr r2, _080DBC84 @ =gCurLevelInfo
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080DBC88 @ =0x0000065E
	adds r0, r0, r2
	ldrb r6, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080DBC4C
	ldr r0, _080DBC8C @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080DBC4C
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080DBC4C
	adds r0, r4, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r3, #0
	movs r3, #0x60
	adds r3, r3, r5
	mov r8, r3
	cmp r0, #0xf
	bls _080DBC0A
	movs r4, #1
_080DBBD2:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r6, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080DBBD2
	adds r0, r6, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r6, #0
	movs r2, #0
	bl sub_08002A44
_080DBC0A:
	ldr r1, _080DBC8C @ =gUnk_08352D80
	asrs r0, r7, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r6, #0
	bl sub_08002A1C
	ldr r2, _080DBC90 @ =gUnk_02020EE0
	ldr r0, _080DBC94 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DBC4C
	ldr r0, _080DBC98 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DBC4C
	adds r0, r6, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080DBC4C:
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0x4c
	bne _080DBC74
	mov r4, sb
	adds r4, #0xb4
	ldr r2, [r4]
	ldrh r1, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	adds r0, r5, #0
	bl sub_080DCF18
	str r0, [r4]
	ldr r0, _080DBC9C @ =0x0000FF80
	mov r1, sl
	strh r0, [r1]
_080DBC74:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DBC84: .4byte gCurLevelInfo
_080DBC88: .4byte 0x0000065E
_080DBC8C: .4byte gUnk_08352D80
_080DBC90: .4byte gUnk_02020EE0
_080DBC94: .4byte gUnk_0203AD3C
_080DBC98: .4byte gUnk_0203AD20
_080DBC9C: .4byte 0x0000FF80

	thumb_func_start sub_080DBCA0
sub_080DBCA0: @ 0x080DBCA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r6, #0
	movs r0, #3
	mov sb, r0
	movs r1, #2
	mov r8, r1
	mov sl, r1
	adds r7, r5, #0
	adds r4, r5, #0
	adds r4, #0xc0
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DBD08
	adds r3, r5, #0
	adds r3, #0x85
	ldrb r0, [r3]
	cmp r0, #4
	bls _080DBCD6
	strb r6, [r3]
	movs r0, #1
	strb r0, [r4]
	b _080DBCF2
_080DBCD6:
	ldr r2, _080DBCFC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DBD00 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DBD04 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DBD08
	strb r6, [r3]
	strb r1, [r4]
_080DBCF2:
	adds r0, r5, #0
	bl sub_080DF158
	b _080DBE2E
	.align 2, 0
_080DBCFC: .4byte gRngVal
_080DBD00: .4byte 0x00196225
_080DBD04: .4byte 0x3C6EF35F
_080DBD08:
	adds r1, r7, #0
	adds r1, #0xc0
	movs r0, #0
	strb r0, [r1]
	adds r1, r5, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r4, r0, #0
	adds r3, r5, #0
	adds r3, #0xac
	str r4, [r3]
	ldr r2, _080DBD80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DBD84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DBD88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r6, r0, #0x10
	movs r0, #7
	ands r6, r0
	ldr r0, [r4, #0x40]
	ldr r1, _080DBD8C @ =0xFFFFD000
	adds r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #8
	cmp r0, r1
	bls _080DBD4E
	movs r0, #1
	mov sb, r0
_080DBD4E:
	ldr r1, [r4, #0x44]
	movs r0, #0x90
	lsls r0, r0, #7
	adds r4, r7, #0
	adds r4, #0xc1
	cmp r1, r0
	ble _080DBD62
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DBD66
_080DBD62:
	movs r1, #0
	mov r8, r1
_080DBD66:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DBD94
	ldr r0, [r3]
	ldr r1, [r0, #0x40]
	ldr r0, _080DBD90 @ =0x00004FFF
	adds r2, r7, #0
	adds r2, #0xc2
	cmp r1, r0
	ble _080DBDB0
	b _080DBDA4
	.align 2, 0
_080DBD80: .4byte gRngVal
_080DBD84: .4byte 0x00196225
_080DBD88: .4byte 0x3C6EF35F
_080DBD8C: .4byte 0xFFFFD000
_080DBD90: .4byte 0x00004FFF
_080DBD94:
	ldr r0, [r3]
	ldr r1, [r0, #0x40]
	movs r0, #0xb0
	lsls r0, r0, #8
	adds r2, r7, #0
	adds r2, #0xc2
	cmp r1, r0
	bgt _080DBDB0
_080DBDA4:
	adds r1, r7, #0
	adds r1, #0xc2
	ldrb r0, [r1]
	adds r2, r1, #0
	cmp r0, #0
	beq _080DBDB4
_080DBDB0:
	movs r0, #0
	mov sl, r0
_080DBDB4:
	cmp r6, r8
	bhs _080DBDC8
	movs r1, #0
	movs r0, #1
	strb r0, [r4]
	strb r1, [r2]
	adds r0, r5, #0
	bl sub_080DF02C
	b _080DBE2E
_080DBDC8:
	mov r0, r8
	add r0, sb
	cmp r6, r0
	bge _080DBDDE
	movs r0, #0
	strb r0, [r4]
	strb r0, [r2]
	adds r0, r5, #0
	bl sub_080DBF40
	b _080DBE2E
_080DBDDE:
	add r0, sl
	cmp r6, r0
	bge _080DBDF4
	movs r1, #0
	movs r0, #1
	strb r0, [r2]
	strb r1, [r4]
	adds r0, r5, #0
	bl sub_080DCB38
	b _080DBE2E
_080DBDF4:
	movs r0, #0
	strb r0, [r4]
	strb r0, [r2]
	ldr r2, _080DBE1C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DBE20 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DBE24 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DBE28
	adds r0, r5, #0
	bl sub_080DF118
	b _080DBE2E
	.align 2, 0
_080DBE1C: .4byte gRngVal
_080DBE20: .4byte 0x00196225
_080DBE24: .4byte 0x3C6EF35F
_080DBE28:
	adds r0, r5, #0
	bl sub_080DCDC0
_080DBE2E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DBE3C
sub_080DBE3C: @ 0x080DBE3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DBE60 @ =sub_080DBEE0
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	ldr r0, _080DBE64 @ =0x00007FFF
	cmp r1, r0
	bgt _080DBE68
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #7
	b _080DBE74
	.align 2, 0
_080DBE60: .4byte sub_080DBEE0
_080DBE64: .4byte 0x00007FFF
_080DBE68:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0xb0
	lsls r0, r0, #8
_080DBE74:
	str r0, [r4, #0x40]
	movs r0, #0xc0
	lsls r0, r0, #6
	str r0, [r4, #0x44]
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080DBED4 @ =0xFFFFFDFF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
	adds r3, r4, #0
	adds r3, #0x9f
	movs r0, #2
	strb r0, [r3]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DBEC8
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080DBED8 @ =gUnk_08351530
	ldr r0, _080DBEDC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x68
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080DBECC
_080DBEC8:
	movs r0, #1
	strb r0, [r3]
_080DBECC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DBED4: .4byte 0xFFFFFDFF
_080DBED8: .4byte gUnk_08351530
_080DBEDC: .4byte gUnk_0203AD30

	thumb_func_start sub_080DBEE0
sub_080DBEE0: @ 0x080DBEE0
	push {lr}
	adds r3, r0, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	cmp r1, #0
	bne _080DBEF8
	subs r0, #0x4d
	strh r1, [r0]
	adds r0, r3, #0
	bl sub_080DBCA0
	b _080DBF3C
_080DBEF8:
	ldrh r0, [r3, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x2f
	bgt _080DBF18
	ldr r0, _080DBF14 @ =gUnk_083567D4
	asrs r1, r1, #0x13
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r3, #0
	adds r2, #0x52
	strh r0, [r2]
	b _080DBF20
	.align 2, 0
_080DBF14: .4byte gUnk_083567D4
_080DBF18:
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_080DBF20:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	ble _080DBF3C
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_080DBF3C:
	pop {r0}
	bx r0

	thumb_func_start sub_080DBF40
sub_080DBF40: @ 0x080DBF40
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080DC01C @ =sub_080DC050
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #0x5a
	strh r0, [r4, #4]
	ldr r1, _080DC020 @ =gUnk_02020EE0
	ldr r0, _080DC024 @ =gUnk_0203AD3C
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
	bne _080DBFC8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DBF88
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DBFC8
_080DBF88:
	ldr r1, _080DC028 @ =gUnk_08D60FA4
	ldr r5, _080DC02C @ =gSongTable
	ldr r2, _080DC030 @ =0x00000C04
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DBFAE
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DBFC8
_080DBFAE:
	cmp r3, #0
	beq _080DBFC0
	ldr r0, _080DC034 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DBFC8
_080DBFC0:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DBFC8:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DBFF2
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080DC038 @ =gUnk_08351530
	ldr r0, _080DC03C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x68
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080DC016
_080DBFF2:
	ldr r2, _080DC040 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DC044 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DC048 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC016
	ldr r0, _080DC04C @ =sub_080DC1CC
	str r0, [r4, #0x78]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
_080DC016:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DC01C: .4byte sub_080DC050
_080DC020: .4byte gUnk_02020EE0
_080DC024: .4byte gUnk_0203AD3C
_080DC028: .4byte gUnk_08D60FA4
_080DC02C: .4byte gSongTable
_080DC030: .4byte 0x00000C04
_080DC034: .4byte gUnk_0203AD10
_080DC038: .4byte gUnk_08351530
_080DC03C: .4byte gUnk_0203AD30
_080DC040: .4byte gRngVal
_080DC044: .4byte 0x00196225
_080DC048: .4byte 0x3C6EF35F
_080DC04C: .4byte sub_080DC1CC

	thumb_func_start sub_080DC050
sub_080DC050: @ 0x080DC050
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080DC114 @ =gUnk_08356418
	cmp r0, #0
	bne _080DC14C
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC080
	subs r0, r2, #1
	strb r0, [r4]
_080DC080:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC0A6
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080DC0A6:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC118
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080DC0E4
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC0E4
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC0E4:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080DC14C
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080DC14C
	.align 2, 0
_080DC114: .4byte gUnk_08356418
_080DC118:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC176
	rsbs r0, r5, #0
	strh r0, [r2]
_080DC14C:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080DC176
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC188
_080DC176:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC188:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080DC1C6
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080DC1C6
	mov r0, ip
	bl sub_080DBE3C
_080DC1C6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080DC1CC
sub_080DC1CC: @ 0x080DC1CC
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r7, _080DC28C @ =gUnk_0835658C
	cmp r0, #0
	bne _080DC2C2
	adds r1, r5, #0
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
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC1FC
	subs r0, r2, #1
	strb r0, [r4]
_080DC1FC:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC222
	adds r0, r5, #0
	adds r0, #0x83
	strb r1, [r0]
_080DC222:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC290
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
	beq _080DC25E
	adds r2, r5, #0
	adds r2, #0x50
	strh r3, [r2]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC25E
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC25E:
	adds r0, r5, #0
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
	beq _080DC2C2
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080DC2C2
	.align 2, 0
_080DC28C: .4byte gUnk_0835658C
_080DC290:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	adds r3, r5, #0
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x50
	strh r6, [r2]
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC2EC
	rsbs r0, r6, #0
	strh r0, [r2]
_080DC2C2:
	ldr r1, [r5, #8]
	movs r0, #1
	ands r1, r0
	adds r4, r5, #0
	adds r4, #0x9f
	adds r2, r5, #0
	adds r2, #0x50
	adds r3, r5, #0
	adds r3, #0x52
	cmp r1, #0
	beq _080DC2EC
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC2FE
_080DC2EC:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC2FE:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	adds r2, r5, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	subs r3, r0, #1
	strb r3, [r2]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	adds r4, r2, #0
	cmp r0, #0
	bne _080DC33E
	lsls r0, r3, #0x18
	cmp r0, #0
	bne _080DC33E
	adds r0, r5, #0
	bl sub_080DBE3C
_080DC33E:
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bne _080DC3B4
	ldr r1, _080DC3BC @ =gUnk_02020EE0
	ldr r0, _080DC3C0 @ =gUnk_0203AD3C
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
	bne _080DC3B4
	ldrb r0, [r5]
	cmp r0, #0
	bne _080DC374
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DC3B4
_080DC374:
	ldr r1, _080DC3C4 @ =gUnk_08D60FA4
	ldr r4, _080DC3C8 @ =gSongTable
	ldr r3, _080DC3CC @ =0x00000C04
	adds r0, r4, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DC39A
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DC3B4
_080DC39A:
	cmp r3, #0
	beq _080DC3AC
	ldr r0, _080DC3D0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DC3B4
_080DC3AC:
	movs r0, #0xc0
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DC3B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DC3BC: .4byte gUnk_02020EE0
_080DC3C0: .4byte gUnk_0203AD3C
_080DC3C4: .4byte gUnk_08D60FA4
_080DC3C8: .4byte gSongTable
_080DC3CC: .4byte 0x00000C04
_080DC3D0: .4byte gUnk_0203AD10

	thumb_func_start sub_080DC3D4
sub_080DC3D4: @ 0x080DC3D4
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080DC498 @ =gUnk_0835670C
	cmp r0, #0
	bne _080DC4D0
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC404
	subs r0, r2, #1
	strb r0, [r4]
_080DC404:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC42A
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080DC42A:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC49C
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080DC468
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC468
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC468:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080DC4D0
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080DC4D0
	.align 2, 0
_080DC498: .4byte gUnk_0835670C
_080DC49C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC4FA
	rsbs r0, r5, #0
	strh r0, [r2]
_080DC4D0:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080DC4FA
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC50C
_080DC4FA:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC50C:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080DC54A
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080DC54A
	mov r0, ip
	bl sub_080DF088
_080DC54A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080DC550
sub_080DC550: @ 0x080DC550
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080DC614 @ =gUnk_08356784
	cmp r0, #0
	bne _080DC64C
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC580
	subs r0, r2, #1
	strb r0, [r4]
_080DC580:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC5A6
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080DC5A6:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC618
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080DC5E4
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC5E4
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC5E4:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080DC64C
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080DC64C
	.align 2, 0
_080DC614: .4byte gUnk_08356784
_080DC618:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC676
	rsbs r0, r5, #0
	strh r0, [r2]
_080DC64C:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080DC676
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC688
_080DC676:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC688:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080DC6D0
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080DC6D0
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r3, #8]
	mov r0, ip
	bl sub_080DF088
_080DC6D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DC6D8
sub_080DC6D8: @ 0x080DC6D8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080DC6EC
	adds r0, r4, #0
	bl sub_080DE188
_080DC6EC:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080DC75E
	ldr r1, _080DC77C @ =gUnk_02020EE0
	ldr r0, _080DC780 @ =gUnk_0203AD3C
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
	bne _080DC75E
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DC722
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DC75E
_080DC722:
	ldr r1, _080DC784 @ =gUnk_08D60FA4
	ldr r5, _080DC788 @ =gSongTable
	ldr r2, _080DC78C @ =0x00000BFC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DC746
	ldr r1, _080DC790 @ =0x00000BF8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DC75E
_080DC746:
	cmp r3, #0
	beq _080DC758
	ldr r0, _080DC794 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DC75E
_080DC758:
	ldr r0, _080DC798 @ =0x0000017F
	bl m4aSongNumStart
_080DC75E:
	ldrh r0, [r4, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x8f
	bgt _080DC7A0
	ldr r2, _080DC79C @ =gUnk_083567CC
	asrs r0, r1, #0x12
	movs r1, #3
	ands r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	b _080DC7A6
	.align 2, 0
_080DC77C: .4byte gUnk_02020EE0
_080DC780: .4byte gUnk_0203AD3C
_080DC784: .4byte gUnk_08D60FA4
_080DC788: .4byte gSongTable
_080DC78C: .4byte 0x00000BFC
_080DC790: .4byte 0x00000BF8
_080DC794: .4byte gUnk_0203AD10
_080DC798: .4byte 0x0000017F
_080DC79C: .4byte gUnk_083567CC
_080DC7A0:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
_080DC7A6:
	strh r0, [r1]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC7DC
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080DC7D8 @ =0x00001F7F
	cmp r0, r1
	bgt _080DC7F6
	movs r0, #0xfc
	lsls r0, r0, #5
	str r0, [r4, #0x40]
	adds r0, r4, #0
	bl sub_080DF0C0
	b _080DC7F6
	.align 2, 0
_080DC7D8: .4byte 0x00001F7F
_080DC7DC:
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080DC7FC @ =0x0000E080
	cmp r0, r1
	ble _080DC7F6
	str r1, [r4, #0x40]
	adds r0, r4, #0
	bl sub_080DF0C0
_080DC7F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DC7FC: .4byte 0x0000E080

	thumb_func_start sub_080DC800
sub_080DC800: @ 0x080DC800
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r3, ip
	adds r3, #0x9e
	ldrb r0, [r3]
	ldr r6, _080DC8C4 @ =gUnk_08356748
	cmp r0, #0
	bne _080DC8FC
	mov r1, ip
	adds r1, #0x9f
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldrb r2, [r1]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	adds r4, r1, #0
	cmp r0, #0
	bne _080DC830
	subs r0, r2, #1
	strb r0, [r4]
_080DC830:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080DC856
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080DC856:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080DC8C8
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
	ldrh r3, [r1]
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080DC894
	mov r2, ip
	adds r2, #0x50
	strh r3, [r2]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DC894
	rsbs r0, r3, #0
	strh r0, [r2]
_080DC894:
	mov r0, ip
	adds r0, #0x9f
	ldrb r2, [r0]
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r3, #2
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080DC8FC
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080DC8FC
	.align 2, 0
_080DC8C4: .4byte gUnk_08356748
_080DC8C8:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r3, ip
	adds r3, #0x52
	strh r0, [r3]
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r5, [r0]
	mov r2, ip
	adds r2, #0x50
	strh r5, [r2]
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080DC926
	rsbs r0, r5, #0
	strh r0, [r2]
_080DC8FC:
	mov r2, ip
	ldr r1, [r2, #8]
	movs r0, #1
	ands r1, r0
	mov r4, ip
	adds r4, #0x9f
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x52
	cmp r1, #0
	beq _080DC926
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r2]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r2]
	b _080DC938
_080DC926:
	ldrb r0, [r4]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
_080DC938:
	ldrb r1, [r4]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r4]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080DC976
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080DC976
	mov r0, ip
	bl sub_080DBE3C
_080DC976:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080DC97C
sub_080DC97C: @ 0x080DC97C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	lsls r1, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0x2f
	bgt _080DC99A
	ldr r0, _080DC9C0 @ =gUnk_083567D4
	asrs r1, r1, #0x13
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	adds r2, r4, #0
	adds r2, #0x52
	strh r0, [r2]
_080DC99A:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x2f
	ble _080DC9C6
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r1, [r1]
	cmp r1, #0
	beq _080DC9C4
	cmp r0, #0x30
	ble _080DC9C6
	adds r0, r4, #0
	bl sub_080DBE3C
	b _080DCA3E
	.align 2, 0
_080DC9C0: .4byte gUnk_083567D4
_080DC9C4:
	strh r1, [r4, #4]
_080DC9C6:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080DC9EA
	movs r1, #0x30
	rsbs r1, r1, #0
	ldr r3, _080DCA10 @ =gRngVal
	ldr r2, [r3]
	ldr r0, _080DCA14 @ =0x00196225
	muls r0, r2, r0
	ldr r2, _080DCA18 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r3]
	movs r2, #8
	adds r0, r4, #0
	bl sub_080DDC44
_080DC9EA:
	ldr r2, [r4, #8]
	movs r5, #1
	ands r2, r5
	cmp r2, #0
	beq _080DCA20
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080DCA1C @ =0x00004FFF
	cmp r1, r0
	bgt _080DCA3E
	adds r0, #1
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	b _080DCA38
	.align 2, 0
_080DCA10: .4byte gRngVal
_080DCA14: .4byte 0x00196225
_080DCA18: .4byte 0x3C6EF35F
_080DCA1C: .4byte 0x00004FFF
_080DCA20:
	adds r3, r4, #0
	adds r3, #0x50
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	movs r1, #0xb0
	lsls r1, r1, #8
	cmp r0, r1
	ble _080DCA3E
	str r1, [r4, #0x40]
	strh r2, [r3]
_080DCA38:
	adds r0, r4, #0
	adds r0, #0x9e
	strb r5, [r0]
_080DCA3E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080DCA44
sub_080DCA44: @ 0x080DCA44
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DCACA
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_080DE064
	ldr r1, _080DCB14 @ =gUnk_02020EE0
	ldr r0, _080DCB18 @ =gUnk_0203AD3C
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
	bne _080DCACA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DCA8E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DCACA
_080DCA8E:
	ldr r1, _080DCB1C @ =gUnk_08D60FA4
	ldr r5, _080DCB20 @ =gSongTable
	ldr r2, _080DCB24 @ =0x00000B3C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DCAB2
	ldr r1, _080DCB28 @ =0x00000B38
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DCACA
_080DCAB2:
	cmp r3, #0
	beq _080DCAC4
	ldr r0, _080DCB2C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DCACA
_080DCAC4:
	ldr r0, _080DCB30 @ =0x00000167
	bl m4aSongNumStart
_080DCACA:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DCB0C
	ldr r2, _080DCB34 @ =gUnk_0835681B
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _080DCB0C
	adds r0, r4, #0
	bl sub_080DBE3C
_080DCB0C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DCB14: .4byte gUnk_02020EE0
_080DCB18: .4byte gUnk_0203AD3C
_080DCB1C: .4byte gUnk_08D60FA4
_080DCB20: .4byte gSongTable
_080DCB24: .4byte 0x00000B3C
_080DCB28: .4byte 0x00000B38
_080DCB2C: .4byte gUnk_0203AD10
_080DCB30: .4byte 0x00000167
_080DCB34: .4byte gUnk_0835681B

	thumb_func_start sub_080DCB38
sub_080DCB38: @ 0x080DCB38
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DCB7C @ =sub_080DF18C
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DCB78
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080DCB80 @ =gUnk_08351530
	ldr r0, _080DCB84 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x68
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080DCB88
_080DCB78:
	movs r0, #0x10
	b _080DCB8A
	.align 2, 0
_080DCB7C: .4byte sub_080DF18C
_080DCB80: .4byte gUnk_08351530
_080DCB84: .4byte gUnk_0203AD30
_080DCB88:
	movs r0, #0x24
_080DCB8A:
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DCBA0
sub_080DCBA0: @ 0x080DCBA0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DCC7C
	movs r6, #0
	adds r2, r5, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _080DCBC8
	adds r0, r4, #0
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080DCBC8:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080DCBD6
	movs r6, #1
_080DCBD6:
	ldrb r1, [r2]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_080DE658
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080DE658
	ldrb r0, [r7]
	cmp r0, #0
	bne _080DCC5C
	ldr r1, _080DCC98 @ =gUnk_02020EE0
	ldr r0, _080DCC9C @ =gUnk_0203AD3C
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
	bne _080DCC5C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080DCC1C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DCC5C
_080DCC1C:
	ldr r1, _080DCCA0 @ =gUnk_08D60FA4
	ldr r4, _080DCCA4 @ =gSongTable
	ldr r2, _080DCCA8 @ =0x000009D4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DCC42
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DCC5C
_080DCC42:
	cmp r3, #0
	beq _080DCC54
	ldr r0, _080DCCAC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DCC5C
_080DCC54:
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DCC5C:
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080DCC7C
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #4]
	strb r1, [r7]
_080DCC7C:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #6
	bne _080DCC92
	adds r0, r5, #0
	bl sub_080DBE3C
_080DCC92:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DCC98: .4byte gUnk_02020EE0
_080DCC9C: .4byte gUnk_0203AD3C
_080DCCA0: .4byte gUnk_08D60FA4
_080DCCA4: .4byte gSongTable
_080DCCA8: .4byte 0x000009D4
_080DCCAC: .4byte gUnk_0203AD10

	thumb_func_start sub_080DCCB0
sub_080DCCB0: @ 0x080DCCB0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r1, [r5, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DCD8C
	movs r6, #0
	adds r2, r5, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	adds r0, #6
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xb
	bls _080DCCD8
	adds r0, r4, #0
	subs r0, #0xc
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_080DCCD8:
	adds r0, r5, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0
	beq _080DCCE6
	movs r6, #1
_080DCCE6:
	ldrb r1, [r2]
	adds r0, r5, #0
	adds r2, r6, #0
	bl sub_080DE658
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl sub_080DE658
	ldrb r0, [r7]
	cmp r0, #0
	bne _080DCD6C
	ldr r1, _080DCDA8 @ =gUnk_02020EE0
	ldr r0, _080DCDAC @ =gUnk_0203AD3C
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
	bne _080DCD6C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080DCD2C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DCD6C
_080DCD2C:
	ldr r1, _080DCDB0 @ =gUnk_08D60FA4
	ldr r4, _080DCDB4 @ =gSongTable
	ldr r2, _080DCDB8 @ =0x000009D4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DCD52
	movs r1, #0x9d
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DCD6C
_080DCD52:
	cmp r3, #0
	beq _080DCD64
	ldr r0, _080DCDBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DCD6C
_080DCD64:
	movs r0, #0x9d
	lsls r0, r0, #1
	bl m4aSongNumStart
_080DCD6C:
	ldrb r0, [r7]
	adds r0, #1
	strb r0, [r7]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _080DCD8C
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r1, #0
	movs r0, #0
	strh r0, [r5, #4]
	strb r1, [r7]
_080DCD8C:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080DCDA2
	adds r0, r5, #0
	bl sub_080DBE3C
_080DCDA2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DCDA8: .4byte gUnk_02020EE0
_080DCDAC: .4byte gUnk_0203AD3C
_080DCDB0: .4byte gUnk_08D60FA4
_080DCDB4: .4byte gSongTable
_080DCDB8: .4byte 0x000009D4
_080DCDBC: .4byte gUnk_0203AD10

	thumb_func_start sub_080DCDC0
sub_080DCDC0: @ 0x080DCDC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DCE04 @ =sub_080DF1E4
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	subs r1, r1, r0
	lsrs r1, r1, #5
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	strh r1, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DCE08
	movs r0, #0xc
	b _080DCE0A
	.align 2, 0
_080DCE04: .4byte sub_080DF1E4
_080DCE08:
	movs r0, #0x18
_080DCE0A:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DCE28
sub_080DCE28: @ 0x080DCE28
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, _080DCE44 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #4
	ldrsh r1, [r4, r0]
	cmp r1, #0x1f
	ble _080DCE48
	adds r0, r4, #0
	bl sub_080DF21C
	b _080DCE9C
	.align 2, 0
_080DCE44: .4byte 0xFFFFF7FF
_080DCE48:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DCE82
	cmp r1, #7
	ble _080DCE82
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r0, [r5]
	cmp r0, #0
	beq _080DCE6C
	adds r0, r4, #0
	movs r1, #1
	bl sub_080DEA94
	movs r0, #0
	strb r0, [r5]
_080DCE6C:
	ldrh r1, [r4, #4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _080DCE82
	adds r0, r4, #0
	movs r1, #0
	bl sub_080DEA94
	movs r0, #1
	strb r0, [r5]
_080DCE82:
	ldr r1, _080DCEA4 @ =gUnk_083567E0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080DCE9C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DCEA4: .4byte gUnk_083567E0

	thumb_func_start sub_080DCEA8
sub_080DCEA8: @ 0x080DCEA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #4
	ldrsh r2, [r4, r0]
	cmp r2, #0x63
	ble _080DCEBC
	adds r0, r4, #0
	bl sub_080DF258
	b _080DCF0E
_080DCEBC:
	movs r1, #4
	ldrsh r0, [r4, r1]
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r1, [r5]
	cmp r0, r1
	blt _080DCF08
	cmp r2, #0x54
	bgt _080DCF08
	cmp r1, #0
	beq _080DCEDE
	adds r0, r4, #0
	movs r1, #1
	bl sub_080DEA94
	movs r0, #0
	strb r0, [r5]
_080DCEDE:
	ldrh r1, [r4, #4]
	movs r6, #3
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080DCEF6
	adds r0, r4, #0
	movs r1, #0
	bl sub_080DEA94
	movs r0, #1
	strb r0, [r5]
_080DCEF6:
	ldr r2, _080DCF14 @ =gUnk_0835681B
	ldrh r1, [r4, #4]
	adds r0, r6, #0
	ands r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
_080DCF08:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080DCF0E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080DCF14: .4byte gUnk_0835681B

	thumb_func_start sub_080DCF18
sub_080DCF18: @ 0x080DCF18
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r0, _080DCF48 @ =sub_080DD044
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DCF4C @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DCF50
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DCF58
	.align 2, 0
_080DCF48: .4byte sub_080DD044
_080DCF4C: .4byte sub_0803DCCC
_080DCF50:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DCF58:
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
	adds r6, r5, #0
	adds r6, #0x42
	movs r7, #0
	strh r0, [r6]
	adds r1, r5, #0
	adds r1, #0xc
	ldr r3, _080DCFCC @ =0x00000339
	movs r0, #9
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x30
	bl sub_080709F8
	adds r4, r5, #0
	adds r4, #0x2b
	strb r7, [r4]
	ldr r2, _080DCFD0 @ =gUnk_02020EE0
	ldr r0, _080DCFD4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DCFDC
	ldr r6, _080DCFD8 @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DCFDE
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DCFDE
	.align 2, 0
_080DCFCC: .4byte 0x00000339
_080DCFD0: .4byte gUnk_02020EE0
_080DCFD4: .4byte gUnk_0203AD3C
_080DCFD8: .4byte 0x0000033B
_080DCFDC:
	strb r7, [r4]
_080DCFDE:
	adds r2, r5, #0
	adds r2, #0x2b
	ldrb r0, [r2]
	movs r6, #0
	strh r0, [r5, #8]
	strb r6, [r2]
	ldr r3, _080DD028 @ =gUnk_02020EE0
	ldr r0, _080DD02C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r3
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r4, r2, #0
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DD034
	ldr r6, _080DD030 @ =0x0000033A
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD036
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DD036
	.align 2, 0
_080DD028: .4byte gUnk_02020EE0
_080DD02C: .4byte gUnk_0203AD3C
_080DD030: .4byte 0x0000033A
_080DD034:
	strb r6, [r4]
_080DD036:
	ldrb r0, [r4]
	strh r0, [r5, #4]
	adds r0, r5, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080DD044
sub_080DD044: @ 0x080DD044
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	movs r0, #0
	mov r8, r0
	ldr r2, _080DD070 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD074
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD07C
	.align 2, 0
_080DD070: .4byte gCurTask
_080DD074:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD07C:
	adds r5, r0, #0
	ldr r7, [r5, #0x44]
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DD096
	ldr r0, [r2]
	bl TaskDestroy
	b _080DD54A
_080DD096:
	ldr r0, [r7, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DD0A6
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DD54A
_080DD0A6:
	ldr r2, _080DD110 @ =gUnk_02020EE0
	ldr r0, _080DD114 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	mov sl, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DD158
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DD120
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD17E
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x30
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD118 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DD11C @ =0x0400000A
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
	b _080DD17E
	.align 2, 0
_080DD110: .4byte gUnk_02020EE0
_080DD114: .4byte gUnk_0203AD3C
_080DD118: .4byte 0xFFF7FFFF
_080DD11C: .4byte 0x0400000A
_080DD120:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD17E
	movs r0, #0x30
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD150 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DD154 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DD17E
	.align 2, 0
_080DD150: .4byte 0xFFF7FFFF
_080DD154: .4byte 0x0400000A
_080DD158:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DD174
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DD174
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DD174:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DD17E:
	adds r0, r5, #0
	adds r0, #0x2b
	ldrb r3, [r0]
	adds r6, r0, #0
	cmp r3, #0
	bne _080DD18E
	movs r2, #1
	mov r8, r2
_080DD18E:
	ldr r2, _080DD1C8 @ =gUnk_02020EE0
	ldr r0, _080DD1CC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DD1D4
	cmp r3, #0
	bne _080DD1D8
	ldr r4, _080DD1D0 @ =0x0000033B
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD1D8
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DD1D6
	.align 2, 0
_080DD1C8: .4byte gUnk_02020EE0
_080DD1CC: .4byte gUnk_0203AD3C
_080DD1D0: .4byte 0x0000033B
_080DD1D4:
	movs r0, #0
_080DD1D6:
	strb r0, [r6]
_080DD1D8:
	mov r2, r8
	cmp r2, #0
	beq _080DD236
	ldrb r0, [r6]
	movs r3, #0
	strh r0, [r5, #8]
	strb r3, [r6]
	ldr r2, _080DD220 @ =gUnk_02020EE0
	ldr r0, _080DD224 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DD22C
	ldr r4, _080DD228 @ =0x0000033A
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD22E
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r6]
	b _080DD22E
	.align 2, 0
_080DD220: .4byte gUnk_02020EE0
_080DD224: .4byte gUnk_0203AD3C
_080DD228: .4byte 0x0000033A
_080DD22C:
	strb r3, [r6]
_080DD22E:
	ldrb r0, [r6]
	strh r0, [r5, #4]
	ldrh r0, [r5, #8]
	strb r0, [r6]
_080DD236:
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DD240
	strh r0, [r5, #8]
	strh r0, [r5, #4]
_080DD240:
	ldr r0, _080DD28C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r7, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DD294
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080DD294
	ldrh r0, [r5, #8]
	strb r0, [r6]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD290 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0803DBC8
	ldrh r0, [r5, #4]
	strb r0, [r6]
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x14]
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DD54A
	.align 2, 0
_080DD28C: .4byte gUnk_03000510
_080DD290: .4byte 0xFFFFF7FF
_080DD294:
	ldr r0, [r7, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r7, #0x44]
	str r0, [r5, #0x38]
	adds r4, r7, #0
	adds r4, #0x54
	ldrb r0, [r4]
	adds r3, r5, #0
	adds r3, #0x40
	strb r0, [r3]
	adds r2, r7, #0
	adds r2, #0x55
	ldrb r0, [r2]
	adds r1, r5, #0
	adds r1, #0x41
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x83
	ldrb r0, [r0]
	str r4, [sp, #0x30]
	str r3, [sp, #0x28]
	str r2, [sp, #0x34]
	str r1, [sp, #0x2c]
	cmp r0, #1
	beq _080DD2EE
	cmp r0, #1
	bgt _080DD2D0
	cmp r0, #0
	beq _080DD2D6
	b _080DD2EE
_080DD2D0:
	cmp r0, #2
	beq _080DD2E6
	b _080DD2EE
_080DD2D6:
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0xa
	b _080DD2FC
_080DD2E6:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0x12
	b _080DD2FC
_080DD2EE:
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #9
_080DD2FC:
	strb r0, [r1]
	adds r3, r1, #0
	ldrh r1, [r5, #6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DD318
	adds r0, r5, #0
	adds r0, #0xc
	ldr r1, [r5, #0x14]
	movs r2, #0x80
	lsls r2, r2, #3
	orrs r1, r2
	b _080DD322
_080DD318:
	adds r0, r5, #0
	adds r0, #0xc
	ldr r1, [r5, #0x14]
	ldr r2, _080DD3A8 @ =0xFFFFFBFF
	ands r1, r2
_080DD322:
	str r1, [r0, #8]
	adds r7, r0, #0
	ldrh r4, [r5, #6]
	movs r0, #8
	ands r0, r4
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0x28
	adds r0, r0, r5
	mov r8, r0
	cmp r2, #0
	bne _080DD3C6
	adds r0, r5, #0
	adds r0, #0x27
	ldrb r1, [r0]
	mov sb, r0
	ldrb r3, [r3]
	cmp r1, r3
	bne _080DD350
	ldrh r0, [r5, #0x24]
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	beq _080DD366
_080DD350:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #0
	beq _080DD366
	strb r2, [r5, #1]
	strh r2, [r5, #2]
	ldr r0, _080DD3AC @ =0x0000FFFB
	ands r0, r4
	strh r0, [r5, #6]
_080DD366:
	adds r0, r7, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _080DD3B0
	ldrh r0, [r5, #6]
	movs r1, #2
	movs r3, #0
	orrs r1, r0
	strh r1, [r5, #6]
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _080DD3C6
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _080DD3C6
	movs r0, #0xff
	mov r1, sb
	strb r0, [r1]
	ldrh r1, [r5, #6]
	ldr r0, _080DD3AC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r5, #6]
	strb r3, [r5, #1]
	strh r2, [r5, #2]
	adds r0, r7, #0
	bl sub_08155128
	b _080DD3C6
	.align 2, 0
_080DD3A8: .4byte 0xFFFFFBFF
_080DD3AC: .4byte 0x0000FFFB
_080DD3B0:
	mov r2, r8
	ldrb r1, [r2]
	ldrh r0, [r5, #2]
	adds r0, r0, r1
	strh r0, [r5, #2]
	lsrs r0, r0, #4
	strb r0, [r5, #1]
	ldrh r1, [r5, #6]
	ldr r0, _080DD478 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r5, #6]
_080DD3C6:
	ldr r2, [r5, #0x34]
	asrs r2, r2, #8
	ldr r3, _080DD47C @ =gCurLevelInfo
	ldr r0, _080DD480 @ =gUnk_0203AD3C
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
	ldr r1, [sp, #0x28]
	movs r0, #0
	ldrsb r0, [r1, r0]
	adds r0, r0, r2
	movs r2, #0
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x38]
	asrs r1, r1, #8
	mov sb, r1
	mov r1, ip
	ldrb r0, [r1]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	mov r3, sb
	subs r1, r3, r0
	ldr r3, [sp, #0x2c]
	movs r0, #0
	ldrsb r0, [r3, r0]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	beq _080DD422
	ldr r3, [sp, #0x28]
	strb r2, [r3]
	ldr r0, [sp, #0x2c]
	strb r2, [r0]
_080DD422:
	ldr r0, [r5, #0x14]
	ldr r1, _080DD484 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r5, #0x14]
	ldrh r0, [r5, #8]
	strb r0, [r6]
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r3
	cmp r0, #0
	bne _080DD496
	ldr r2, _080DD488 @ =gUnk_02020EE0
	mov r0, ip
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sl
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DD496
	ldr r1, _080DD48C @ =gUnk_0203AD18
	ldrh r0, [r1]
	ldrh r2, [r5, #0x1c]
	adds r0, r0, r2
	strh r0, [r5, #0x1c]
	ldrh r0, [r1, #2]
	ldrh r1, [r5, #0x1e]
	adds r0, r0, r1
	strh r0, [r5, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DD490
	adds r0, r7, #0
	bl sub_081564D8
	b _080DD496
	.align 2, 0
_080DD478: .4byte 0x0000FFFD
_080DD47C: .4byte gCurLevelInfo
_080DD480: .4byte gUnk_0203AD3C
_080DD484: .4byte 0xFFFFF7FF
_080DD488: .4byte gUnk_02020EE0
_080DD48C: .4byte gUnk_0203AD18
_080DD490:
	adds r0, r7, #0
	bl sub_0815604C
_080DD496:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5, #0x14]
	ldrh r0, [r5, #4]
	strb r0, [r6]
	ldr r2, [sp, #0x30]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	ldr r2, [r5, #0x34]
	adds r2, r2, r0
	asrs r2, r2, #8
	ldr r3, _080DD534 @ =gCurLevelInfo
	ldr r6, _080DD538 @ =gUnk_0203AD3C
	ldrb r0, [r6]
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
	strh r0, [r5, #0x1c]
	ldr r1, [sp, #0x34]
	movs r0, #0
	ldrsb r0, [r1, r0]
	lsls r0, r0, #8
	ldr r1, [r5, #0x38]
	adds r1, r1, r0
	asrs r1, r1, #8
	ldrb r0, [r6]
	muls r0, r4, r0
	adds r3, #0x10
	adds r0, r0, r3
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r3, r1, r0
	strh r3, [r5, #0x1e]
	ldrh r4, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	bne _080DD54A
	ldr r2, _080DD53C @ =gUnk_02020EE0
	ldrb r1, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	bne _080DD54A
	ldr r1, _080DD540 @ =gUnk_0203AD18
	ldrh r0, [r1]
	add r0, r8
	strh r0, [r5, #0x1c]
	ldrh r0, [r1, #2]
	adds r0, r3, r0
	strh r0, [r5, #0x1e]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r4
	cmp r0, #0
	beq _080DD544
	adds r0, r7, #0
	bl sub_081564D8
	b _080DD54A
	.align 2, 0
_080DD534: .4byte gCurLevelInfo
_080DD538: .4byte gUnk_0203AD3C
_080DD53C: .4byte gUnk_02020EE0
_080DD540: .4byte gUnk_0203AD18
_080DD544:
	adds r0, r7, #0
	bl sub_0815604C
_080DD54A:
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DD55C
sub_080DD55C: @ 0x080DD55C
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080DD58C @ =sub_080DD62C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DD590 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD594
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD59C
	.align 2, 0
_080DD58C: .4byte sub_080DD62C
_080DD590: .4byte sub_0803DCCC
_080DD594:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD59C:
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r7, #0
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080DD610 @ =0x00000339
	movs r0, #0xc
	str r0, [sp]
	movs r0, #0x19
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x40
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	strb r7, [r5]
	ldr r2, _080DD614 @ =gUnk_02020EE0
	ldr r0, _080DD618 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DD620
	ldr r6, _080DD61C @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD622
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DD622
	.align 2, 0
_080DD610: .4byte 0x00000339
_080DD614: .4byte gUnk_02020EE0
_080DD618: .4byte gUnk_0203AD3C
_080DD61C: .4byte 0x0000033B
_080DD620:
	strb r7, [r5]
_080DD622:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080DD62C
sub_080DD62C: @ 0x080DD62C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080DD650 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD654
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD65C
	.align 2, 0
_080DD650: .4byte gCurTask
_080DD654:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD65C:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DD678
	ldr r0, [r2]
	bl TaskDestroy
	b _080DD8CA
_080DD678:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DD68A
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DD8CA
_080DD68A:
	ldr r2, _080DD6F4 @ =gUnk_02020EE0
	ldr r0, _080DD6F8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r6, [r7]
	cmp r0, r6
	bne _080DD73C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DD704
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD762
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #0x40
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD6FC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DD700 @ =0x0400000A
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
	b _080DD762
	.align 2, 0
_080DD6F4: .4byte gUnk_02020EE0
_080DD6F8: .4byte gUnk_0203AD3C
_080DD6FC: .4byte 0xFFF7FFFF
_080DD700: .4byte 0x0400000A
_080DD704:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DD762
	movs r0, #0x40
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DD734 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DD738 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DD762
	.align 2, 0
_080DD734: .4byte 0xFFF7FFFF
_080DD738: .4byte 0x0400000A
_080DD73C:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DD758
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DD758
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DD758:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DD762:
	ldr r2, _080DD7A4 @ =gUnk_02020EE0
	ldr r0, _080DD7A8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080DD7B0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DD7B8
	ldr r6, _080DD7AC @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD7B8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DD7B8
	.align 2, 0
_080DD7A4: .4byte gUnk_02020EE0
_080DD7A8: .4byte gUnk_0203AD3C
_080DD7AC: .4byte 0x0000033B
_080DD7B0:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080DD7B8:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DD80C
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DD7D6
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DD7D6
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DD7D6:
	cmp r3, #0
	beq _080DD80C
	ldr r0, _080DD808 @ =gUnk_03000510
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
	beq _080DD878
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DD878
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DD8CA
	.align 2, 0
_080DD808: .4byte gUnk_03000510
_080DD80C:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DD870 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DD84A
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DD84A
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DD84A
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DD84A
	movs r3, #4
_080DD84A:
	ldr r0, _080DD874 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DD878
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DD878
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DD8CA
	.align 2, 0
_080DD870: .4byte gUnk_02020EE0
_080DD874: .4byte gUnk_03000510
_080DD878:
	mov r0, r8
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	beq _080DD8AA
	cmp r0, #1
	bgt _080DD88C
	cmp r0, #0
	beq _080DD892
	b _080DD8AA
_080DD88C:
	cmp r0, #2
	beq _080DD8A2
	b _080DD8AA
_080DD892:
	ldrh r0, [r5, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0xd
	b _080DD8B8
_080DD8A2:
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0x11
	b _080DD8B8
_080DD8AA:
	ldrh r0, [r5, #6]
	movs r1, #4
	orrs r1, r0
	strh r1, [r5, #6]
	adds r1, r5, #0
	adds r1, #0x26
	movs r0, #0xc
_080DD8B8:
	strb r0, [r1]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x38]
	adds r0, r5, #0
	bl sub_0806FAC8
_080DD8CA:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DD8D8
sub_080DD8D8: @ 0x080DD8D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080DD90C @ =sub_080DD9B4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DD910 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD914
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD91C
	.align 2, 0
_080DD90C: .4byte sub_080DD9B4
_080DD910: .4byte sub_0803DCCC
_080DD914:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD91C:
	adds r4, r0, #0
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
	adds r6, r4, #0
	adds r6, #0x42
	movs r1, #0
	mov r8, r1
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r7, _080DD994 @ =0x00000339
	str r2, [sp]
	movs r0, #0x18
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #9
	adds r3, r7, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080DD998 @ =gUnk_02020EE0
	ldr r0, _080DD99C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r6, [r6]
	cmp r0, r6
	bne _080DD9A0
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DD9A4
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DD9A4
	.align 2, 0
_080DD994: .4byte 0x00000339
_080DD998: .4byte gUnk_02020EE0
_080DD99C: .4byte gUnk_0203AD3C
_080DD9A0:
	mov r1, r8
	strb r1, [r5]
_080DD9A4:
	adds r0, r4, #0
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080DD9B4
sub_080DD9B4: @ 0x080DD9B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	ldr r2, _080DD9D8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DD9DC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DD9E4
	.align 2, 0
_080DD9D8: .4byte gCurTask
_080DD9DC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DD9E4:
	adds r5, r0, #0
	ldr r0, [r5, #0x44]
	mov r8, r0
	ldrh r3, [r5, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080DDA00
	ldr r0, [r2]
	bl TaskDestroy
	b _080DDC38
_080DDA00:
	mov r2, r8
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080DDA12
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r5, #6]
	b _080DDC38
_080DDA12:
	ldr r2, _080DDA7C @ =gUnk_02020EE0
	ldr r0, _080DDA80 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r6, [r7]
	cmp r0, r6
	bne _080DDAC4
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DDA8C
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDAEA
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #9
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDA84 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DDA88 @ =0x0400000A
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
	b _080DDAEA
	.align 2, 0
_080DDA7C: .4byte gUnk_02020EE0
_080DDA80: .4byte gUnk_0203AD3C
_080DDA84: .4byte 0xFFF7FFFF
_080DDA88: .4byte 0x0400000A
_080DDA8C:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDAEA
	movs r0, #9
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDABC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DDAC0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DDAEA
	.align 2, 0
_080DDABC: .4byte 0xFFF7FFFF
_080DDAC0: .4byte 0x0400000A
_080DDAC4:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DDAE0
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DDAE0
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DDAE0:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DDAEA:
	ldr r2, _080DDB2C @ =gUnk_02020EE0
	ldr r0, _080DDB30 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	bne _080DDB38
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DDB40
	ldr r6, _080DDB34 @ =0x00000339
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DDB40
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DDB40
	.align 2, 0
_080DDB2C: .4byte gUnk_02020EE0
_080DDB30: .4byte gUnk_0203AD3C
_080DDB34: .4byte 0x00000339
_080DDB38:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080DDB40:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DDB94
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DDB5E
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DDB5E
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DDB5E:
	cmp r3, #0
	beq _080DDB94
	ldr r0, _080DDB90 @ =gUnk_03000510
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
	beq _080DDC00
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDC00
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DDC38
	.align 2, 0
_080DDB90: .4byte gUnk_03000510
_080DDB94:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DDBF8 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDBD2
	movs r3, #4
_080DDBD2:
	ldr r0, _080DDBFC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DDC00
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDC00
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DDC38
	.align 2, 0
_080DDBF8: .4byte gUnk_02020EE0
_080DDBFC: .4byte gUnk_03000510
_080DDC00:
	ldrh r1, [r5, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r5, #6]
	mov r1, r8
	ldr r0, [r1, #0x40]
	str r0, [r5, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r5, #0x38]
	mov r0, r8
	adds r0, #0x54
	ldrb r1, [r0]
	adds r0, r5, #0
	adds r0, #0x40
	strb r1, [r0]
	mov r0, r8
	adds r0, #0x55
	ldrb r0, [r0]
	adds r1, r5, #0
	adds r1, #0x41
	strb r0, [r1]
	adds r0, r5, #0
	mov r1, r8
	bl sub_080DDFB4
	adds r0, r5, #0
	bl sub_0806FAC8
_080DDC38:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DDC44
sub_080DDC44: @ 0x080DDC44
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080DDC7C @ =sub_080DDD60
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DDC80 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DDC84
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DDC8C
	.align 2, 0
_080DDC7C: .4byte sub_080DDD60
_080DDC80: .4byte sub_0803DCCC
_080DDC84:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DDC8C:
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
	beq _080DDCDA
	lsls r0, r6, #0x18
	asrs r0, r0, #0x10
	ldr r1, [r4, #0x34]
	subs r1, r1, r0
	str r1, [r4, #0x34]
	movs r0, #1
	orrs r2, r0
	strh r2, [r4, #6]
	b _080DDCE4
_080DDCDA:
	lsls r1, r6, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x34]
	adds r0, r0, r1
	str r0, [r4, #0x34]
_080DDCE4:
	lsls r1, r7, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r4, #0x38]
	adds r0, r0, r1
	str r0, [r4, #0x38]
	adds r1, r4, #0
	adds r1, #0xc
	ldr r6, _080DDD48 @ =0x0000033B
	movs r0, #0xe
	str r0, [sp]
	movs r0, #0x1a
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080DDD4C @ =gUnk_02020EE0
	ldr r0, _080DDD50 @ =gUnk_0203AD3C
	ldrb r1, [r0]
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
	bne _080DDD54
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DDD56
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DDD56
	.align 2, 0
_080DDD48: .4byte 0x0000033B
_080DDD4C: .4byte gUnk_02020EE0
_080DDD50: .4byte gUnk_0203AD3C
_080DDD54:
	strb r3, [r5]
_080DDD56:
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080DDD60
sub_080DDD60: @ 0x080DDD60
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r2, _080DDD80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DDD84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DDD8C
	.align 2, 0
_080DDD80: .4byte gCurTask
_080DDD84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DDD8C:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080DDDA2
	ldr r0, [r2]
	bl TaskDestroy
	b _080DDFAC
_080DDDA2:
	ldr r2, _080DDE08 @ =gUnk_02020EE0
	ldr r0, _080DDE0C @ =gUnk_0203AD3C
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
	bne _080DDE50
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080DDE18
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDE76
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #9
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDE10 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DDE14 @ =0x0400000A
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
	b _080DDE76
	.align 2, 0
_080DDE08: .4byte gUnk_02020EE0
_080DDE0C: .4byte gUnk_0203AD3C
_080DDE10: .4byte 0xFFF7FFFF
_080DDE14: .4byte 0x0400000A
_080DDE18:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080DDE76
	movs r0, #9
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080DDE48 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DDE4C @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DDE76
	.align 2, 0
_080DDE48: .4byte 0xFFF7FFFF
_080DDE4C: .4byte 0x0400000A
_080DDE50:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080DDE6C
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080DDE6C
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0xc]
_080DDE6C:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080DDE76:
	ldr r2, _080DDEBC @ =gUnk_02020EE0
	ldr r0, _080DDEC0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x42
	ldrh r0, [r0]
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080DDEC8
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DDED0
	ldr r6, _080DDEC4 @ =0x00000339
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DDED0
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DDED0
	.align 2, 0
_080DDEBC: .4byte gUnk_02020EE0
_080DDEC0: .4byte gUnk_0203AD3C
_080DDEC4: .4byte 0x00000339
_080DDEC8:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080DDED0:
	ldr r3, [r5, #0x44]
	cmp r3, #0
	beq _080DDF24
	ldrb r0, [r3]
	cmp r0, #0
	beq _080DDEEE
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DDEEE
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080DDEEE:
	cmp r3, #0
	beq _080DDF24
	ldr r0, _080DDF20 @ =gUnk_03000510
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
	beq _080DDF90
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDF90
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080DDFAC
	.align 2, 0
_080DDF20: .4byte gUnk_03000510
_080DDF24:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080DDF88 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080DDF62
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDF62
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDF62
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080DDF62
	movs r3, #4
_080DDF62:
	ldr r0, _080DDF8C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DDF90
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080DDF90
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080DDFAC
	.align 2, 0
_080DDF88: .4byte gUnk_02020EE0
_080DDF8C: .4byte gUnk_03000510
_080DDF90:
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DDFA6
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080DDFAC
_080DDFA6:
	adds r0, r5, #0
	bl sub_0806FAC8
_080DDFAC:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DDFB4
sub_080DDFB4: @ 0x080DDFB4
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r1, #0
	adds r0, r2, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r0, [r3, #0x40]
	ldr r1, [r2, #0x40]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r3, #0x44]
	ldr r2, [r2, #0x44]
	subs r1, r1, r2
	lsls r1, r1, #8
	asrs r0, r0, #0x10
	asrs r1, r1, #0x10
	bl ArcTan2
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	asrs r1, r0, #0xd
	movs r0, #7
	ands r1, r0
	cmp r1, #7
	bhi _080DE05C
	lsls r0, r1, #2
	ldr r1, _080DDFF8 @ =_080DDFFC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080DDFF8: .4byte _080DDFFC
_080DDFFC: @ jump table
	.4byte _080DE01C @ case 0
	.4byte _080DE024 @ case 1
	.4byte _080DE02C @ case 2
	.4byte _080DE034 @ case 3
	.4byte _080DE03C @ case 4
	.4byte _080DE044 @ case 5
	.4byte _080DE04C @ case 6
	.4byte _080DE054 @ case 7
_080DE01C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #0
	b _080DE05A
_080DE024:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #7
	b _080DE05A
_080DE02C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #6
	b _080DE05A
_080DE034:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #5
	b _080DE05A
_080DE03C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #4
	b _080DE05A
_080DE044:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #3
	b _080DE05A
_080DE04C:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #2
	b _080DE05A
_080DE054:
	adds r1, r4, #0
	adds r1, #0x26
	movs r0, #1
_080DE05A:
	strb r0, [r1]
_080DE05C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DE064
sub_080DE064: @ 0x080DE064
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #0x18
	mov sl, r0
	ldr r3, _080DE0A8 @ =gRngVal
	ldr r0, [r3]
	ldr r4, _080DE0AC @ =0x00196225
	muls r0, r4, r0
	ldr r1, _080DE0B0 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DE0B4
	movs r2, #0x12
	str r2, [sp]
	mov sb, r1
	b _080DE0E0
	.align 2, 0
_080DE0A8: .4byte gRngVal
_080DE0AC: .4byte 0x00196225
_080DE0B0: .4byte 0x3C6EF35F
_080DE0B4:
	adds r0, r2, #0
	muls r0, r4, r0
	ldr r4, _080DE0D4 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080DE0D8
	movs r7, #0x13
	str r7, [sp]
	movs r0, #1
	mov sb, r0
	b _080DE0E0
	.align 2, 0
_080DE0D4: .4byte 0x3C6EF35F
_080DE0D8:
	movs r1, #0x1c
	str r1, [sp]
	movs r2, #0
	mov sb, r2
_080DE0E0:
	movs r4, #0
	ldr r1, _080DE0F8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080DE0FC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080DE114
	.align 2, 0
_080DE0F8: .4byte gUnk_020229D4
_080DE0FC: .4byte gUnk_020229E0
_080DE100:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080DE11C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080DE114:
	cmp r0, #0
	bne _080DE100
	orrs r2, r3
	str r2, [r1]
_080DE11C:
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
	mov r0, ip
	strh r0, [r1, #6]
	mov r4, sl
	strh r4, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r7, sp
	ldrb r7, [r7]
	strb r7, [r1, #0xc]
	movs r0, #0
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r4, sb
	strb r4, [r1, #0x10]
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
	mov r7, r8
	ldrb r0, [r7]
	bl CreateObject
	str r5, [r0, #0x70]
	ldr r1, _080DE184 @ =sub_0809F840
	str r1, [r0, #0x7c]
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DE184: .4byte sub_0809F840

	thumb_func_start sub_080DE188
sub_080DE188: @ 0x080DE188
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r3, #0
	ldr r2, _080DE29C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DE2A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DE2A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r5, r0, #0x10
	movs r1, #0
	ldr r0, _080DE2A8 @ =0x00001555
	mov sb, r2
	cmp r5, r0
	blt _080DE1C4
	adds r2, r0, #0
_080DE1B2:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xa
	bhi _080DE1C4
	adds r0, r1, #1
	muls r0, r2, r0
	cmp r5, r0
	bge _080DE1B2
_080DE1C4:
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	mov r1, sb
	ldr r0, [r1]
	ldr r1, _080DE2A0 @ =0x00196225
	mov r8, r1
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r6, _080DE2A4 @ =0x3C6EF35F
	adds r0, r0, r6
	mov r1, sb
	str r0, [r1]
	lsls r4, r3, #0x18
	asrs r4, r4, #0x18
	adds r4, #8
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	subs r4, r4, r0
	ldr r0, _080DE2AC @ =gUnk_08356800
	adds r0, r7, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	movs r5, #0x20
	lsls r5, r5, #0x18
	asrs r2, r5, #0x18
	mov r0, sl
	adds r1, r4, #0
	adds r3, r7, #0
	bl sub_080DE2B4
	ldr r0, _080DE2B0 @ =gUnk_0835680C
	adds r0, r7, r0
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x18
	lsrs r3, r4, #0x18
	mov r1, sb
	ldr r0, [r1]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r6
	mov r1, sb
	str r0, [r1]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _080DE2A8 @ =0x00001555
	cmp r2, r0
	blt _080DE246
	adds r6, r0, #0
_080DE234:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xa
	bhi _080DE246
	adds r0, r1, #1
	muls r0, r6, r0
	cmp r2, r0
	bge _080DE234
_080DE246:
	lsls r0, r1, #0x18
	lsrs r7, r0, #0x18
	ldr r0, _080DE2AC @ =gUnk_08356800
	adds r0, r7, r0
	lsls r4, r3, #0x18
	asrs r4, r4, #0x18
	ldrb r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	movs r0, #0x80
	lsls r0, r0, #0x15
	adds r5, r5, r0
	asrs r5, r5, #0x18
	mov r0, sl
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r7, #0
	bl sub_080DE2B4
	ldr r0, _080DE2B0 @ =gUnk_0835680C
	adds r0, r7, r0
	ldrb r0, [r0]
	adds r4, r4, r0
	adds r5, #0x10
	lsls r4, r4, #0x18
	asrs r4, r4, #0x18
	lsls r5, r5, #0x18
	asrs r5, r5, #0x18
	mov r0, sl
	adds r1, r4, #0
	adds r2, r5, #0
	movs r3, #0xc
	bl sub_080DE2B4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DE29C: .4byte gRngVal
_080DE2A0: .4byte 0x00196225
_080DE2A4: .4byte 0x3C6EF35F
_080DE2A8: .4byte 0x00001555
_080DE2AC: .4byte gUnk_08356800
_080DE2B0: .4byte gUnk_0835680C

	thumb_func_start sub_080DE2B4
sub_080DE2B4: @ 0x080DE2B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov sb, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov sl, r3
	ldr r0, _080DE300 @ =sub_080DE42C
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
	beq _080DE304
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080DE30C
	.align 2, 0
_080DE300: .4byte sub_080DE42C
_080DE304:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080DE30C:
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_0803E380
	movs r1, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	strh r1, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x60
	strh r0, [r7]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080DE404 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DE35E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080DE35E:
	adds r0, r5, #0
	adds r0, #0x63
	strb r3, [r0]
	mov r0, r8
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	mov r0, sb
	lsls r1, r0, #0x18
	asrs r1, r1, #0x10
	ldr r0, [r5, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	ldr r0, _080DE408 @ =0x20000403
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r5, #8]
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r1, r5, #0
	adds r1, #0x10
	ldr r6, _080DE40C @ =0x0000033B
	mov r0, sl
	str r0, [sp]
	movs r0, #0xa
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r4, r5, #0
	adds r4, #0x2f
	movs r0, #0
	strb r0, [r4]
	ldr r2, _080DE410 @ =gUnk_02020EE0
	ldr r0, _080DE414 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080DE418
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE41C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	b _080DE41A
	.align 2, 0
_080DE404: .4byte gUnk_03000510
_080DE408: .4byte 0x20000403
_080DE40C: .4byte 0x0000033B
_080DE410: .4byte gUnk_02020EE0
_080DE414: .4byte gUnk_0203AD3C
_080DE418:
	movs r0, #0
_080DE41A:
	strb r0, [r4]
_080DE41C:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DE42C
sub_080DE42C: @ 0x080DE42C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080DE44C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE450
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DE458
	.align 2, 0
_080DE44C: .4byte gCurTask
_080DE450:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DE458:
	adds r5, r0, #0
	ldr r7, [r5, #0x70]
	ldr r2, _080DE4C4 @ =gUnk_02020EE0
	ldr r0, _080DE4C8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DE50C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080DE4D4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE530
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE4CC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DE4D0 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080DE530
	.align 2, 0
_080DE4C4: .4byte gUnk_02020EE0
_080DE4C8: .4byte gUnk_0203AD3C
_080DE4CC: .4byte 0xFFF7FFFF
_080DE4D0: .4byte 0x0400000A
_080DE4D4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE530
	movs r0, #0x20
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE504 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DE508 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DE530
	.align 2, 0
_080DE504: .4byte 0xFFF7FFFF
_080DE508: .4byte 0x0400000A
_080DE50C:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080DE526
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080DE526
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080DE526:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080DE530:
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r2, [r0]
	ldr r4, _080DE590 @ =0x0000FFFF
	adds r3, r0, #0
	cmp r2, r4
	beq _080DE550
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DE550
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080DE550:
	ldr r2, _080DE594 @ =gUnk_02020EE0
	ldr r0, _080DE598 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r3, [r3]
	cmp r0, r3
	bne _080DE5A0
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DE5A8
	ldr r6, _080DE59C @ =0x0000033B
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE5A8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DE5A8
	.align 2, 0
_080DE590: .4byte 0x0000FFFF
_080DE594: .4byte gUnk_02020EE0
_080DE598: .4byte gUnk_0203AD3C
_080DE59C: .4byte 0x0000033B
_080DE5A0:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080DE5A8:
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x56
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DE648
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080DE5DA
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _080DE648
_080DE5DA:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080DE642
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080DE608
	ldr r2, _080DE600 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DE604 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080DE60A
	.align 2, 0
_080DE600: .4byte gCurLevelInfo
_080DE604: .4byte 0x0000065E
_080DE608:
	movs r1, #0xff
_080DE60A:
	cmp r1, #0xff
	beq _080DE642
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080DE650 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080DE654 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080DE642:
	adds r0, r5, #0
	bl sub_0806F8BC
_080DE648:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DE650: .4byte gUnk_02022EB0
_080DE654: .4byte gUnk_02022F50

	thumb_func_start sub_080DE658
sub_080DE658: @ 0x080DE658
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	ldr r0, _080DE69C @ =sub_080DE80C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DE6A0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE6A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080DE6AC
	.align 2, 0
_080DE69C: .4byte sub_080DE80C
_080DE6A0: .4byte sub_0803DCCC
_080DE6A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080DE6AC:
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_0803E380
	movs r0, #0
	mov sl, r0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	str r6, [r4, #0x70]
	mov r1, sl
	strh r1, [r4, #4]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r2, #0x60
	adds r2, r2, r4
	mov sb, r2
	strh r0, [r2]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080DE7E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080DE704
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080DE704:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, _080DE7E4 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	cmp r7, #0
	beq _080DE740
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_080DE740:
	adds r0, r5, #0
	adds r0, #0x62
	strb r7, [r0]
	ldr r3, _080DE7E8 @ =gUnk_08356838
	mov r0, r8
	lsls r1, r0, #1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r2, [r0]
	adds r0, r5, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r1, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	ldrh r0, [r1]
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E2B0
	mov r1, sl
	str r1, [sp]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r5, #0
	adds r1, #0x10
	ldr r6, _080DE7EC @ =0x0000033B
	movs r0, #0xd
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r5, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r4, r5, #0
	adds r4, #0x2f
	movs r2, #0
	strb r2, [r4]
	ldr r2, _080DE7F0 @ =gUnk_02020EE0
	ldr r0, _080DE7F4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, sb
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DE7F8
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE7FC
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DE7FC
	.align 2, 0
_080DE7E0: .4byte gUnk_03000510
_080DE7E4: .4byte 0x20000043
_080DE7E8: .4byte gUnk_08356838
_080DE7EC: .4byte 0x0000033B
_080DE7F0: .4byte gUnk_02020EE0
_080DE7F4: .4byte gUnk_0203AD3C
_080DE7F8:
	movs r2, #0
	strb r2, [r4]
_080DE7FC:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080DE80C
sub_080DE80C: @ 0x080DE80C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080DE82C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DE830
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DE838
	.align 2, 0
_080DE82C: .4byte gCurTask
_080DE830:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DE838:
	adds r5, r0, #0
	ldr r2, _080DE8A4 @ =gUnk_02020EE0
	ldr r0, _080DE8A8 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DE8EC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080DE8B4
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE910
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE8AC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DE8B0 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080DE910
	.align 2, 0
_080DE8A4: .4byte gUnk_02020EE0
_080DE8A8: .4byte gUnk_0203AD3C
_080DE8AC: .4byte 0xFFF7FFFF
_080DE8B0: .4byte 0x0400000A
_080DE8B4:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DE910
	movs r0, #0x20
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DE8E4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DE8E8 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DE910
	.align 2, 0
_080DE8E4: .4byte 0xFFF7FFFF
_080DE8E8: .4byte 0x0400000A
_080DE8EC:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080DE906
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080DE906
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080DE906:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080DE910:
	ldr r2, _080DE958 @ =gUnk_02020EE0
	ldr r0, _080DE95C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080DE964
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DE96C
	ldr r7, _080DE960 @ =0x0000033B
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DE96C
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DE96C
	.align 2, 0
_080DE958: .4byte gUnk_02020EE0
_080DE95C: .4byte gUnk_0203AD3C
_080DE960: .4byte 0x0000033B
_080DE964:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080DE96C:
	ldr r0, [r5, #0x70]
	ldrh r2, [r6]
	ldr r3, _080DE9BC @ =0x0000FFFF
	cmp r2, r3
	beq _080DE988
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DE988
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r6]
_080DE988:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DEA84
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080DE9C0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	ble _080DE9C0
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r5, #8]
	b _080DEA84
	.align 2, 0
_080DE9BC: .4byte 0x0000FFFF
_080DE9C0:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080DE9E8
	adds r0, r5, #0
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080DE9E8:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DEA0E
	ldrb r1, [r5, #1]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080DEA06
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	b _080DEA0C
_080DEA06:
	ldr r0, [r5, #8]
	ldr r1, _080DEA38 @ =0xFFFFFDFF
	ands r0, r1
_080DEA0C:
	str r0, [r5, #8]
_080DEA0E:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080DEA7E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080DEA44
	ldr r2, _080DEA3C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080DEA40 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080DEA46
	.align 2, 0
_080DEA38: .4byte 0xFFFFFDFF
_080DEA3C: .4byte gCurLevelInfo
_080DEA40: .4byte 0x0000065E
_080DEA44:
	movs r1, #0xff
_080DEA46:
	cmp r1, #0xff
	beq _080DEA7E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080DEA8C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080DEA90 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080DEA7E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080DEA84:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DEA8C: .4byte gUnk_02022EB0
_080DEA90: .4byte gUnk_02022F50

	thumb_func_start sub_080DEA94
sub_080DEA94: @ 0x080DEA94
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	ldr r0, _080DEAD0 @ =sub_080DECE4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080DEAD4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DEAD8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DEAE0
	.align 2, 0
_080DEAD0: .4byte sub_080DECE4
_080DEAD4: .4byte sub_0803DCCC
_080DEAD8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DEAE0:
	adds r4, r0, #0
	bl sub_0803E380
	movs r6, #0
	movs r0, #2
	strb r0, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r0, #0
	mov sb, r0
	strh r6, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	movs r1, #0x60
	adds r1, r1, r4
	mov r8, r1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r2, r4, #0
	adds r2, #0x56
	strb r0, [r2]
	ldr r0, _080DEC28 @ =gUnk_03000510
	ldrb r1, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r2, [r2]
	lsls r0, r2
	movs r5, #0x10
	orrs r0, r5
	ands r1, r0
	cmp r1, #0
	beq _080DEB36
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080DEB36:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	ldr r0, _080DEC2C @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	cmp r7, #0
	beq _080DEB72
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
_080DEB72:
	adds r0, r4, #0
	adds r0, #0x62
	strb r7, [r0]
	subs r0, #0x12
	strh r6, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xf8
	lsls r0, r0, #8
	strh r0, [r1]
	ldr r2, _080DEC30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DEC34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DEC38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	subs r0, r5, r0
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	ldr r0, [r4, #0x44]
	movs r2, #0xc0
	lsls r2, r2, #5
	adds r0, r0, r2
	str r0, [r4, #0x44]
	movs r1, #2
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #2
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #0
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r6, _080DEC3C @ =0x0000033B
	movs r0, #0xf
	str r0, [sp]
	movs r0, #0x1b
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #0x20
	adds r3, r6, #0
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r0, sb
	strb r0, [r5]
	ldr r2, _080DEC40 @ =gUnk_02020EE0
	ldr r0, _080DEC44 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r1, r8
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DEC48
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DEC4C
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080DEC4C
	.align 2, 0
_080DEC28: .4byte gUnk_03000510
_080DEC2C: .4byte 0x20000043
_080DEC30: .4byte gRngVal
_080DEC34: .4byte 0x00196225
_080DEC38: .4byte 0x3C6EF35F
_080DEC3C: .4byte 0x0000033B
_080DEC40: .4byte gUnk_02020EE0
_080DEC44: .4byte gUnk_0203AD3C
_080DEC48:
	mov r2, sb
	strb r2, [r5]
_080DEC4C:
	ldr r1, _080DECC4 @ =gUnk_02020EE0
	ldr r0, _080DECC8 @ =gUnk_0203AD3C
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
	bne _080DECB4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DEC78
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080DECB4
_080DEC78:
	ldr r1, _080DECCC @ =gUnk_08D60FA4
	ldr r4, _080DECD0 @ =gSongTable
	ldr r2, _080DECD4 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080DEC9C
	ldr r1, _080DECD8 @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080DECB4
_080DEC9C:
	cmp r3, #0
	beq _080DECAE
	ldr r0, _080DECDC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080DECB4
_080DECAE:
	ldr r0, _080DECE0 @ =0x00000145
	bl m4aSongNumStart
_080DECB4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DECC4: .4byte gUnk_02020EE0
_080DECC8: .4byte gUnk_0203AD3C
_080DECCC: .4byte gUnk_08D60FA4
_080DECD0: .4byte gSongTable
_080DECD4: .4byte 0x00000A2C
_080DECD8: .4byte 0x00000A28
_080DECDC: .4byte gUnk_0203AD10
_080DECE0: .4byte 0x00000145

	thumb_func_start sub_080DECE4
sub_080DECE4: @ 0x080DECE4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x28
	ldr r0, _080DED04 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080DED08
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080DED10
	.align 2, 0
_080DED04: .4byte gCurTask
_080DED08:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080DED10:
	adds r5, r0, #0
	ldr r2, _080DED7C @ =gUnk_02020EE0
	ldr r0, _080DED80 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080DEDC4
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080DED8C
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DEDE8
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #0x20
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DED84 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080DED88 @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080DEDE8
	.align 2, 0
_080DED7C: .4byte gUnk_02020EE0
_080DED80: .4byte gUnk_0203AD3C
_080DED84: .4byte 0xFFF7FFFF
_080DED88: .4byte 0x0400000A
_080DED8C:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080DEDE8
	movs r0, #0x20
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080DEDBC @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080DEDC0 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080DEDE8
	.align 2, 0
_080DEDBC: .4byte 0xFFF7FFFF
_080DEDC0: .4byte 0x0400000A
_080DEDC4:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080DEDDE
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080DEDDE
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080DEDDE:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080DEDE8:
	ldr r2, _080DEE30 @ =gUnk_02020EE0
	ldr r0, _080DEE34 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r6, r1, #0
	ldrh r1, [r6]
	cmp r0, r1
	bne _080DEE3C
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080DEE44
	ldr r7, _080DEE38 @ =0x0000033B
	adds r0, r7, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080DEE44
	adds r0, r7, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080DEE44
	.align 2, 0
_080DEE30: .4byte gUnk_02020EE0
_080DEE34: .4byte gUnk_0203AD3C
_080DEE38: .4byte 0x0000033B
_080DEE3C:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080DEE44:
	ldr r4, [r5, #0x70]
	ldrh r2, [r6]
	ldr r3, _080DEEA4 @ =0x0000FFFF
	cmp r2, r3
	beq _080DEE60
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080DEE60
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r6]
_080DEE60:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DEF54
	ldr r0, [r4, #8]
	movs r4, #0x80
	lsls r4, r4, #5
	ands r0, r4
	cmp r0, #0
	bne _080DEE9A
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	ldr r2, [r5, #0x44]
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r2, r0
	ble _080DEEA8
	movs r0, #0x8a
	lsls r0, r0, #8
	str r0, [r5, #0x44]
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0
	bl sub_080DDC44
_080DEE9A:
	ldr r0, [r5, #8]
	orrs r0, r4
	str r0, [r5, #8]
	b _080DEF54
	.align 2, 0
_080DEEA4: .4byte 0x0000FFFF
_080DEEA8:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r1, r0
	cmp r1, #0
	bne _080DEECC
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, r2, r0
	str r0, [r5, #0x44]
_080DEECC:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080DEEDE
	ldr r0, [r5, #8]
	ldr r1, _080DEF08 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
_080DEEDE:
	ldr r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080DEF4E
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _080DEF14
	ldr r2, _080DEF0C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080DEF10 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080DEF16
	.align 2, 0
_080DEF08: .4byte 0xFFFFFDFF
_080DEF0C: .4byte gCurLevelInfo
_080DEF10: .4byte 0x0000065E
_080DEF14:
	movs r1, #0xff
_080DEF16:
	cmp r1, #0xff
	beq _080DEF4E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080DEF5C @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080DEF60 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080DEF4E:
	adds r0, r5, #0
	bl sub_0806F8BC
_080DEF54:
	add sp, #0x28
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080DEF5C: .4byte gUnk_02022EB0
_080DEF60: .4byte gUnk_02022F50

	thumb_func_start sub_080DEF64
sub_080DEF64: @ 0x080DEF64
	push {r4, r5, r6, lr}
	sub sp, #0x78
	adds r3, r0, #0
	adds r5, r3, #0
	ldr r0, _080DEFF0 @ =gUnk_03000510
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
	bne _080DEFE6
	adds r6, r3, #0
	adds r6, #0xc3
	ldrb r0, [r6]
	cmp r0, #0
	beq _080DEF92
	subs r0, #1
	strb r0, [r6]
_080DEF92:
	ldr r0, [r5, #0xc]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _080DEFE6
	ldrb r0, [r6]
	cmp r0, #0
	bne _080DEFE6
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r1, [r0]
	add r0, sp, #0x60
	strh r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r0, [r0]
	adds r0, #0x2b
	ldrb r0, [r0]
	mov r4, sp
	adds r4, #0x2f
	strb r0, [r4]
	ldr r1, _080DEFF4 @ =gUnk_08356868
	mov r0, sp
	bl sub_08085CE8
	adds r5, #0xb4
	ldr r0, [r5]
	ldrh r0, [r0, #8]
	strb r0, [r4]
	ldr r1, _080DEFF8 @ =gUnk_083568A0
	mov r0, sp
	bl sub_08085CE8
	ldr r0, [r5]
	ldrh r0, [r0, #4]
	strb r0, [r4]
	ldr r1, _080DEFFC @ =gUnk_083568D8
	mov r0, sp
	bl sub_08085CE8
	movs r0, #0x1e
	strb r0, [r6]
_080DEFE6:
	add sp, #0x78
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080DEFF0: .4byte gUnk_03000510
_080DEFF4: .4byte gUnk_08356868
_080DEFF8: .4byte gUnk_083568A0
_080DEFFC: .4byte gUnk_083568D8

	thumb_func_start sub_080DF000
sub_080DF000: @ 0x080DF000
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF028 @ =sub_080DBA1C
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
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF028: .4byte sub_080DBA1C

	thumb_func_start sub_080DF02C
sub_080DF02C: @ 0x080DF02C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r2, _080DF050 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF054 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF058 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080DF05C
	adds r0, r5, #0
	bl sub_080DF0EC
	b _080DF07C
	.align 2, 0
_080DF050: .4byte gRngVal
_080DF054: .4byte 0x00196225
_080DF058: .4byte 0x3C6EF35F
_080DF05C:
	ldr r2, _080DF084 @ =sub_080DC3D4
	adds r0, r5, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, r5, #0
	bl sub_0808671C
	adds r1, r5, #0
	adds r1, #0xbc
	str r0, [r1]
_080DF07C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080DF084: .4byte sub_080DC3D4

	thumb_func_start sub_080DF088
sub_080DF088: @ 0x080DF088
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF0BC @ =sub_080DC6D8
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF0B6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080DF0B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF0BC: .4byte sub_080DC6D8

	thumb_func_start sub_080DF0C0
sub_080DF0C0: @ 0x080DF0C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF0E8 @ =sub_080DC800
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r4, #0xbc
	ldr r0, [r4]
	bl sub_080867A0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF0E8: .4byte sub_080DC800

	thumb_func_start sub_080DF0EC
sub_080DF0EC: @ 0x080DF0EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF114 @ =sub_080DC550
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, r4, #0
	bl sub_0808671C
	adds r4, #0xbc
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF114: .4byte sub_080DC550

	thumb_func_start sub_080DF118
sub_080DF118: @ 0x080DF118
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF154 @ =sub_080DC97C
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0xa0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF146
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080DF146:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF154: .4byte sub_080DC97C

	thumb_func_start sub_080DF158
sub_080DF158: @ 0x080DF158
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF188 @ =sub_080DCA44
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	movs r0, #0x1c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	adds r0, #1
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF188: .4byte sub_080DCA44

	thumb_func_start sub_080DF18C
sub_080DF18C: @ 0x080DF18C
	push {lr}
	adds r3, r0, #0
	ldrh r0, [r3, #4]
	subs r0, #1
	movs r1, #0
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080DF1DC
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r2, _080DF1C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080DF1CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080DF1D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080DF1D8
	ldr r0, _080DF1D4 @ =sub_080DCBA0
	b _080DF1DA
	.align 2, 0
_080DF1C8: .4byte gRngVal
_080DF1CC: .4byte 0x00196225
_080DF1D0: .4byte 0x3C6EF35F
_080DF1D4: .4byte sub_080DCBA0
_080DF1D8:
	ldr r0, _080DF1E0 @ =sub_080DCCB0
_080DF1DA:
	str r0, [r3, #0x78]
_080DF1DC:
	pop {r0}
	bx r0
	.align 2, 0
_080DF1E0: .4byte sub_080DCCB0

	thumb_func_start sub_080DF1E4
sub_080DF1E4: @ 0x080DF1E4
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080DF1FA
	adds r0, r1, #0
	bl sub_080DF200
_080DF1FA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DF200
sub_080DF200: @ 0x080DF200
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF218 @ =sub_080DCE28
	movs r1, #1
	bl ObjectSetFunc
	adds r4, #0x9f
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF218: .4byte sub_080DCE28

	thumb_func_start sub_080DF21C
sub_080DF21C: @ 0x080DF21C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF244 @ =sub_080DCEA8
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DF248
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	b _080DF24E
	.align 2, 0
_080DF244: .4byte sub_080DCEA8
_080DF248:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
_080DF24E:
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DF258
sub_080DF258: @ 0x080DF258
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF274 @ =sub_080DF278
	movs r1, #1
	bl ObjectSetFunc
	adds r4, #0x50
	ldrh r0, [r4]
	rsbs r0, r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF274: .4byte sub_080DF278

	thumb_func_start sub_080DF278
sub_080DF278: @ 0x080DF278
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	ldr r1, _080DF298 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	lsls r3, r0, #0x10
	asrs r0, r3, #0x10
	cmp r0, #0x1f
	ble _080DF29C
	adds r0, r2, #0
	bl sub_080DBE3C
	b _080DF2B2
	.align 2, 0
_080DF298: .4byte 0xFFFFF7FF
_080DF29C:
	ldr r1, _080DF2B8 @ =gUnk_083567F0
	asrs r0, r3, #0x12
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r2, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_080DF2B2:
	pop {r0}
	bx r0
	.align 2, 0
_080DF2B8: .4byte gUnk_083567F0

	thumb_func_start sub_080DF2BC
sub_080DF2BC: @ 0x080DF2BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DF310 @ =sub_080DBAF8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r3, r4, #0
	adds r3, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r3]
	movs r0, #0xb0
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	ldr r0, _080DF314 @ =0xFFFFC000
	str r0, [r4, #0x44]
	strh r1, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r0, #0x19
	strb r2, [r0]
	adds r0, r4, #0
	bl sub_080DD8D8
	adds r1, r4, #0
	adds r1, #0xb8
	str r0, [r1]
	adds r0, r4, #0
	bl sub_080DD55C
	adds r1, r4, #0
	adds r1, #0xb4
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DF310: .4byte sub_080DBAF8
_080DF314: .4byte 0xFFFFC000
