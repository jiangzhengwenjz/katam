	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateMasterHand
CreateMasterHand: @ 0x080D168C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080D16C0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D16C4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D16C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D16D0
	.align 2, 0
_080D16C0: .4byte ObjectMain
_080D16C4: .4byte ObjectDestroy
_080D16C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D16D0:
	adds r6, r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r2, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	ldr r0, [r6, #0xc]
	movs r3, #1
	orrs r0, r3
	movs r1, #4
	orrs r0, r1
	str r0, [r6, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xe
	orrs r2, r0
	str r2, [r6, #8]
	ldr r0, [r6, #0x68]
	subs r1, #0xc
	ands r0, r1
	str r0, [r6, #0x68]
	ldr r0, [r6, #0x5c]
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
	beq _080D1726
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
	b _080D1728
_080D1726:
	orrs r2, r3
_080D1728:
	str r2, [r6, #8]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #0x10
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	adds r0, r6, #0
	bl sub_080D51EC
	adds r0, r6, #0
	bl sub_080D4FCC
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080D1780
sub_080D1780: @ 0x080D1780
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
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080D17B0
	b _080D194A
_080D17B0:
	adds r0, r5, #0
	adds r0, #0x60
	adds r2, r6, #0
	adds r2, #0x60
	ldrh r1, [r0]
	mov sl, r0
	ldrh r2, [r2]
	cmp r1, r2
	beq _080D17C4
	b _080D194A
_080D17C4:
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	movs r3, #0xb0
	adds r3, r3, r5
	mov sb, r3
	ldr r4, [r3]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov r8, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, r8
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D17F4
	b _080D194A
_080D17F4:
	ldr r4, _080D195C @ =gCurLevelInfo
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
	movs r2, #0
	mov r8, r2
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
	ldr r1, _080D1960 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x85
	mov r3, r8
	strb r3, [r0]
	adds r0, r5, #0
	bl sub_080D1A38
	movs r0, #0x5a
	strh r0, [r5, #4]
	adds r0, r5, #0
	bl sub_08034E14
	cmp r0, #0
	beq _080D1886
	mov r1, r8
	strb r1, [r0, #9]
_080D1886:
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r3, [r0]
	adds r1, r3, #0
	subs r1, #0x38
	subs r0, #0x2c
	ldrb r0, [r0]
	muls r0, r6, r0
	adds r0, r0, r4
	ldr r2, _080D1964 @ =0x0000065E
	adds r0, r0, r2
	ldrb r5, [r0]
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	cmp r1, #0
	blt _080D194A
	ldr r0, _080D1968 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080D194A
	mov r1, sb
	ldr r0, [r1]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D194A
	adds r0, r3, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r0, #0xf
	bls _080D1908
	movs r4, #1
_080D18D0:
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
	bls _080D18D0
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080D1908:
	ldr r1, _080D1968 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080D196C @ =gKirbys
	ldr r0, _080D1970 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, sl
	ldrh r2, [r2]
	cmp r0, r2
	bne _080D194A
	ldr r0, _080D1974 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080D194A
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080D194A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D195C: .4byte gCurLevelInfo
_080D1960: .4byte 0xFFFFFDFF
_080D1964: .4byte 0x0000065E
_080D1968: .4byte gUnk_08352D80
_080D196C: .4byte gKirbys
_080D1970: .4byte gUnk_0203AD3C
_080D1974: .4byte gUnk_0203AD20

	thumb_func_start sub_080D1978
sub_080D1978: @ 0x080D1978
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #1
	bls _080D19B8
	ldr r2, _080D19AC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D19B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D19B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D1A18
	b _080D1A24
	.align 2, 0
_080D19AC: .4byte gRngVal
_080D19B0: .4byte 0x00196225
_080D19B4: .4byte 0x3C6EF35F
_080D19B8:
	adds r0, #1
	strb r0, [r1]
	ldr r5, _080D19F0 @ =gRngVal
	ldr r0, [r5]
	ldr r3, _080D19F4 @ =0x00196225
	muls r0, r3, r0
	ldr r1, _080D19F8 @ =0x3C6EF35F
	adds r2, r0, r1
	str r2, [r5]
	lsrs r0, r2, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D1A04
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, _080D19F8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D19FC
	adds r0, r4, #0
	bl sub_080D3BF0
	b _080D1A32
	.align 2, 0
_080D19F0: .4byte gRngVal
_080D19F4: .4byte 0x00196225
_080D19F8: .4byte 0x3C6EF35F
_080D19FC:
	adds r0, r4, #0
	bl sub_080D534C
	b _080D1A32
_080D1A04:
	adds r0, r2, #0
	muls r0, r3, r0
	ldr r1, _080D1A20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D1A24
_080D1A18:
	adds r0, r4, #0
	bl sub_080D1B60
	b _080D1A2A
	.align 2, 0
_080D1A20: .4byte 0x3C6EF35F
_080D1A24:
	adds r0, r4, #0
	bl sub_080D22B0
_080D1A2A:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
_080D1A32:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D1A38
sub_080D1A38: @ 0x080D1A38
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D1A88 @ =sub_080D1AD4
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D1A6E
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D1A8C @ =gUnk_08351530
	ldr r0, _080D1A90 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D1AA0
_080D1A6E:
	ldr r2, _080D1A94 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D1A98 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D1A9C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #0x20
	b _080D1AB6
	.align 2, 0
_080D1A88: .4byte sub_080D1AD4
_080D1A8C: .4byte gUnk_08351530
_080D1A90: .4byte gUnk_0203AD30
_080D1A94: .4byte gRngVal
_080D1A98: .4byte 0x00196225
_080D1A9C: .4byte 0x3C6EF35F
_080D1AA0:
	ldr r2, _080D1AC8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D1ACC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D1AD0 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	adds r0, #0x3a
_080D1AB6:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D1AC8: .4byte gRngVal
_080D1ACC: .4byte 0x00196225
_080D1AD0: .4byte 0x3C6EF35F

	thumb_func_start sub_080D1AD4
sub_080D1AD4: @ 0x080D1AD4
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D1AF4
	adds r0, r3, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D1B04
	b _080D1B00
_080D1AF4:
	adds r0, r3, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D1B04
_080D1B00:
	movs r0, #0
	strh r0, [r1]
_080D1B04:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080D1B20
	adds r0, r3, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D1B30
	b _080D1B2C
_080D1B20:
	adds r0, r3, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D1B30
_080D1B2C:
	movs r0, #0
	strh r0, [r1]
_080D1B30:
	ldrh r3, [r2, #4]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _080D1B4C
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D1B58
	adds r0, r2, #0
	bl sub_080D1978
	b _080D1B58
_080D1B4C:
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	subs r0, r3, #1
	strh r0, [r2, #4]
_080D1B58:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D1B60
sub_080D1B60: @ 0x080D1B60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D1BB0 @ =sub_080D1BB4
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #8
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D1BB0: .4byte sub_080D1BB4

	thumb_func_start sub_080D1BB4
sub_080D1BB4: @ 0x080D1BB4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r6, #0
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _080D1BF0
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	strb r6, [r5]
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
_080D1BF0:
	ldr r3, [r4, #0x44]
	ldr r1, _080D1C24 @ =0xFFFFF000
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r0, #0x40
	lsls r2, r0, #8
	ands r2, r1
	cmp r3, r2
	ble _080D1C28
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	adds r5, r1, #0
	cmp r0, r2
	ble _080D1C74
	strh r2, [r5]
	b _080D1C74
	.align 2, 0
_080D1C24: .4byte 0xFFFFF000
_080D1C28:
	cmp r3, r2
	bge _080D1C4C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D1C48 @ =0xFFFFFE80
	adds r5, r1, #0
	cmp r0, r2
	bge _080D1C74
	strh r2, [r5]
	b _080D1C74
	.align 2, 0
_080D1C48: .4byte 0xFFFFFE80
_080D1C4C:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080D1C68
	adds r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D1C74
	b _080D1C72
_080D1C68:
	subs r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D1C74
_080D1C72:
	strh r6, [r5]
_080D1C74:
	ldr r3, [r4, #0x40]
	ldr r0, _080D1CB0 @ =0xFFFFF000
	ands r3, r0
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r2, r1, #8
	ands r2, r0
	cmp r3, r2
	bge _080D1CB4
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r4, #4]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D1D06
	b _080D1D0A
	.align 2, 0
_080D1CB0: .4byte 0xFFFFF000
_080D1CB4:
	cmp r3, r2
	ble _080D1D18
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D1CEC
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r1, [r0]
	ldrh r2, [r4, #4]
	subs r1, r1, r2
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r3, _080D1CE8 @ =0xFFFFFE80
	adds r2, r0, #0
	cmp r1, r3
	blt _080D1D06
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080D1D42
	b _080D1D40
	.align 2, 0
_080D1CE8: .4byte 0xFFFFFE80
_080D1CEC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r4, #4]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D1D0A
_080D1D06:
	strh r3, [r2]
	b _080D1D42
_080D1D0A:
	ldr r1, _080D1D14 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D1D42
	strh r1, [r2]
	b _080D1D42
	.align 2, 0
_080D1D14: .4byte 0xFFFFFE80
_080D1D18:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D1D34
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D1D42
	b _080D1D3E
_080D1D34:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D1D42
_080D1D3E:
	movs r0, #0
_080D1D40:
	strh r0, [r2]
_080D1D42:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D1D58
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D1D5E
_080D1D58:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D1D5E:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa6
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bge _080D1D76
	movs r0, #0
	strh r0, [r5]
_080D1D76:
	adds r0, r4, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D1D8C
	movs r0, #0
	strh r0, [r2]
	movs r6, #1
_080D1D8C:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D1DA2
	movs r0, #0
	strh r0, [r2]
	movs r6, #1
_080D1DA2:
	movs r1, #0
	ldrsh r0, [r5, r1]
	adds r1, r4, #0
	adds r1, #0x9f
	cmp r0, #0
	bgt _080D1DB2
	movs r0, #1
	strb r0, [r1]
_080D1DB2:
	ldrb r0, [r1]
	cmp r0, #0
	beq _080D1E0A
	movs r2, #0x10
	movs r0, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0x60
	bls _080D1DDE
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D1DE2
	movs r0, #0x60
	strh r0, [r4, #4]
	movs r2, #0x20
	b _080D1DE2
_080D1DDE:
	adds r0, #1
	strb r0, [r1]
_080D1DE2:
	lsls r3, r2, #8
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080D1DFA
	cmp r1, r3
	blt _080D1E04
	b _080D1E00
_080D1DFA:
	subs r0, r0, r2
	cmp r0, r3
	blt _080D1E04
_080D1E00:
	cmp r6, #0
	beq _080D1E0A
_080D1E04:
	adds r0, r4, #0
	bl sub_080D5218
_080D1E0A:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080D1E10
sub_080D1E10: @ 0x080D1E10
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D1E2A
	ldr r0, [r6, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D1E30
_080D1E2A:
	ldr r0, [r6, #8]
	movs r1, #1
	orrs r0, r1
_080D1E30:
	str r0, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #3
	beq _080D1E40
	b _080D1F50
_080D1E40:
	adds r2, r6, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x7a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D1F30 @ =0xF9800000
	cmp r0, r1
	bge _080D1E56
	ldr r0, _080D1F34 @ =0x0000F980
	strh r0, [r2]
_080D1E56:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080D1E66
	b _080D1F82
_080D1E66:
	movs r0, #1
	adds r1, r6, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r6, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r6, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r6, #8]
	ands r3, r4
	adds r0, r6, #0
	movs r2, #0xc
	bl sub_08089864
	movs r5, #8
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	str r5, [sp]
	adds r0, r6, #0
	movs r1, #0x1e
	movs r2, #8
	movs r3, #0
	bl sub_080A8D18
	ldr r0, [r6, #8]
	eors r0, r4
	str r0, [r6, #8]
	ldr r1, _080D1F38 @ =gKirbys
	ldr r0, _080D1F3C @ =gUnk_0203AD3C
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
	bne _080D1F28
	ldrb r0, [r6]
	cmp r0, #0
	bne _080D1EE8
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D1F28
_080D1EE8:
	ldr r1, _080D1F40 @ =gUnk_08D60FA4
	ldr r4, _080D1F44 @ =gSongTable
	ldr r2, _080D1F48 @ =0x00000BB4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D1F0E
	movs r1, #0xbb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D1F28
_080D1F0E:
	cmp r3, #0
	beq _080D1F20
	ldr r0, _080D1F4C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D1F28
_080D1F20:
	movs r0, #0xbb
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D1F28:
	adds r0, r6, #0
	bl sub_080D1FB4
	b _080D1FA4
	.align 2, 0
_080D1F30: .4byte 0xF9800000
_080D1F34: .4byte 0x0000F980
_080D1F38: .4byte gKirbys
_080D1F3C: .4byte gUnk_0203AD3C
_080D1F40: .4byte gUnk_08D60FA4
_080D1F44: .4byte gSongTable
_080D1F48: .4byte 0x00000BB4
_080D1F4C: .4byte gUnk_0203AD10
_080D1F50:
	adds r3, r6, #0
	adds r3, #0x85
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D1F82
	ldr r2, _080D1FAC @ =gUnk_08356168
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r6, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r6, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080D1F82:
	ldrh r0, [r6, #4]
	subs r0, #1
	strh r0, [r6, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D1FA4
	ldr r0, [r6, #8]
	ldr r1, _080D1FB0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	movs r0, #3
	strb r0, [r4]
_080D1FA4:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D1FAC: .4byte gUnk_08356168
_080D1FB0: .4byte 0xFFFFFEFF

	thumb_func_start sub_080D1FB4
sub_080D1FB4: @ 0x080D1FB4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D2000 @ =sub_080D2028
	movs r1, #3
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D2004 @ =gUnk_08351530
	ldr r0, _080D2008 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D200C
	movs r0, #0x18
	b _080D200E
	.align 2, 0
_080D2000: .4byte sub_080D2028
_080D2004: .4byte gUnk_08351530
_080D2008: .4byte gUnk_0203AD30
_080D200C:
	movs r0, #0x20
_080D200E:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D2028
sub_080D2028: @ 0x080D2028
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D2040
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D2046
_080D2040:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080D2046:
	str r0, [r2, #8]
	movs r0, #0x85
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #7
	bhi _080D206E
	ldr r1, _080D2084 @ =gUnk_08356168
	lsrs r0, r3, #0x19
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080D206E:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D2080
	adds r0, r2, #0
	bl sub_080D526C
_080D2080:
	pop {r0}
	bx r0
	.align 2, 0
_080D2084: .4byte gUnk_08356168

	thumb_func_start sub_080D2088
sub_080D2088: @ 0x080D2088
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D20C8 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D20CC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D2116
	strh r2, [r1]
	b _080D2116
	.align 2, 0
_080D20C8: .4byte 0xFFFFFC00
_080D20CC:
	cmp r3, r0
	bge _080D20EC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D20E8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D2116
	strh r2, [r1]
	b _080D2116
	.align 2, 0
_080D20E8: .4byte 0xFFFFFE00
_080D20EC:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D2108
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2116
	b _080D2114
_080D2108:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2116
_080D2114:
	strh r5, [r1]
_080D2116:
	ldr r3, [r4, #0x40]
	ldr r2, _080D213C @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080D2140
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D2178
	.align 2, 0
_080D213C: .4byte 0xFFFFFC00
_080D2140:
	cmp r3, r0
	ble _080D219C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D2178
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D2174 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D216E
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D21C8
_080D216E:
	strh r2, [r1]
	b _080D21C8
	.align 2, 0
_080D2174: .4byte 0xFFFFFE00
_080D2178:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D216E
	ldr r2, _080D2198 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D21C8
	b _080D216E
	.align 2, 0
_080D2198: .4byte 0xFFFFFE00
_080D219C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D21B8
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D21C8
	b _080D21C4
_080D21B8:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D21C8
_080D21C4:
	movs r0, #0
	strh r0, [r1]
_080D21C8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D21DE
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D21E4
_080D21DE:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D21E4:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D2238
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D220E
	cmp r2, #0x1f
	ble _080D2214
	b _080D2238
_080D220E:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D2238
_080D2214:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D222C
	cmp r1, #0xf
	ble _080D2232
	b _080D2238
_080D222C:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D2238
_080D2232:
	adds r0, r4, #0
	bl sub_080D1A38
_080D2238:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D229C
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2274
	ldr r2, _080D2268 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D226C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D2270 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D2292
	.align 2, 0
_080D2268: .4byte gRngVal
_080D226C: .4byte 0x00196225
_080D2270: .4byte 0x3C6EF35F
_080D2274:
	ldr r2, _080D22A4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D22A8 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080D22AC @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D2290
	movs r2, #1
_080D2290:
	adds r1, r2, #0
_080D2292:
	cmp r1, #0
	beq _080D229C
	adds r0, r4, #0
	bl sub_080D1978
_080D229C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D22A4: .4byte gRngVal
_080D22A8: .4byte 0x00196225
_080D22AC: .4byte 0x3C6EF35F

	thumb_func_start sub_080D22B0
sub_080D22B0: @ 0x080D22B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D2308 @ =sub_080D230C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	str r1, [r4, #8]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	movs r0, #8
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D2308: .4byte sub_080D230C

	thumb_func_start sub_080D230C
sub_080D230C: @ 0x080D230C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sb, r1
	cmp r0, #0
	beq _080D2328
	movs r2, #0xa0
	mov sb, r2
_080D2328:
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D2340
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D2340
	movs r0, #5
	strb r0, [r2]
_080D2340:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D237E
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, r8
	strh r0, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D237E:
	ldr r3, [r4, #0x44]
	ldr r1, _080D23B8 @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D23D8
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080D23BC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D2446
	strh r2, [r1]
	b _080D2446
	.align 2, 0
_080D23B8: .4byte 0xFFFFF000
_080D23BC:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D23D4 @ =0xFFFFFE80
	cmp r0, r2
	bge _080D2446
	strh r2, [r1]
	b _080D2446
	.align 2, 0
_080D23D4: .4byte 0xFFFFFE80
_080D23D8:
	cmp r3, r0
	bge _080D2420
	movs r5, #4
	ldrsh r0, [r4, r5]
	cmp r0, #0
	bge _080D2400
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D2446
	strh r1, [r2]
	b _080D2446
_080D2400:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D241C @ =0xFFFFFE80
	cmp r0, r1
	bge _080D2446
	strh r1, [r2]
	b _080D2446
	.align 2, 0
_080D241C: .4byte 0xFFFFFE80
_080D2420:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D243A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2446
	b _080D2444
_080D243A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2446
_080D2444:
	strh r7, [r1]
_080D2446:
	ldr r3, [r4, #0x40]
	ldr r2, _080D2488 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D248C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D24DC
	b _080D24E0
	.align 2, 0
_080D2488: .4byte 0xFFFFF000
_080D248C:
	cmp r3, r0
	ble _080D24F0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D24C4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D24C0 @ =0xFFFFFE80
	adds r2, r1, #0
	cmp r0, r3
	blt _080D24DC
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D251A
	strh r1, [r2]
	b _080D251A
	.align 2, 0
_080D24C0: .4byte 0xFFFFFE80
_080D24C4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D24E0
_080D24DC:
	strh r3, [r2]
	b _080D251A
_080D24E0:
	ldr r1, _080D24EC @ =0xFFFFFE80
	cmp r0, r1
	bge _080D251A
	strh r1, [r2]
	b _080D251A
	.align 2, 0
_080D24EC: .4byte 0xFFFFFE80
_080D24F0:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D250C
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D251A
	b _080D2516
_080D250C:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D251A
_080D2516:
	movs r0, #0
	strh r0, [r2]
_080D251A:
	adds r0, r4, #0
	adds r0, #0xaa
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	ble _080D252C
	str r1, [r4, #0x44]
_080D252C:
	adds r0, r4, #0
	adds r0, #0xa6
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0x10
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bge _080D2540
	str r1, [r4, #0x44]
_080D2540:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D2592
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D256C
	movs r0, #0
	strh r0, [r2]
_080D256C:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D2582
	movs r0, #0
	strh r0, [r2]
_080D2582:
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	blt _080D25D0
	adds r0, r4, #0
	bl sub_080D52C0
	b _080D25D0
_080D2592:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D25AE
	strh r3, [r2]
_080D25AE:
	adds r0, r4, #0
	adds r0, #0xa4
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D25C2
	strh r3, [r2]
_080D25C2:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bgt _080D25D0
	adds r0, r4, #0
	bl sub_080D52C0
_080D25D0:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D25DC
sub_080D25DC: @ 0x080D25DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sl, r1
	cmp r0, #0
	beq _080D2602
	movs r2, #0xa0
	mov sl, r2
_080D2602:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	str r0, [sp, #4]
	cmp r1, #0
	bne _080D261E
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D261E
	movs r0, #5
	ldr r3, [sp, #4]
	strb r0, [r3]
_080D261E:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xac
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0xa0
	adds r2, r2, r4
	mov sb, r2
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D2660
	adds r0, r4, #0
	bl sub_0803D368
	mov r3, r8
	str r0, [r3]
	strb r7, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, sb
	strh r0, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D2660:
	ldr r3, [r4, #0x44]
	ldr r1, _080D2698 @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D26B8
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080D269C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D2726
	strh r2, [r1]
	b _080D2726
	.align 2, 0
_080D2698: .4byte 0xFFFFF000
_080D269C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r7, [r1]
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D26B4 @ =0xFFFFFE80
	cmp r0, r2
	bge _080D2726
	strh r2, [r1]
	b _080D2726
	.align 2, 0
_080D26B4: .4byte 0xFFFFFE80
_080D26B8:
	cmp r3, r0
	bge _080D2700
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080D26E0
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D2726
	strh r1, [r2]
	b _080D2726
_080D26E0:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D26FC @ =0xFFFFFE80
	cmp r0, r1
	bge _080D2726
	strh r1, [r2]
	b _080D2726
	.align 2, 0
_080D26FC: .4byte 0xFFFFFE80
_080D2700:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D271A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2726
	b _080D2724
_080D271A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2726
_080D2724:
	strh r7, [r1]
_080D2726:
	ldr r3, [r4, #0x40]
	ldr r2, _080D2768 @ =0xFFFFF000
	ands r3, r2
	mov r5, sb
	movs r7, #0
	ldrsh r1, [r5, r7]
	mov r5, sl
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D276C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D27BC
	b _080D27C0
	.align 2, 0
_080D2768: .4byte 0xFFFFF000
_080D276C:
	cmp r3, r0
	ble _080D27D0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D27A4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D27A0 @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080D27BC
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D27FA
	strh r1, [r2]
	b _080D27FA
	.align 2, 0
_080D27A0: .4byte 0xFFFFFF00
_080D27A4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D27C0
_080D27BC:
	strh r3, [r2]
	b _080D27FA
_080D27C0:
	ldr r1, _080D27CC @ =0xFFFFFF00
	cmp r0, r1
	bge _080D27FA
	strh r1, [r2]
	b _080D27FA
	.align 2, 0
_080D27CC: .4byte 0xFFFFFF00
_080D27D0:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D27EC
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D27FA
	b _080D27F6
_080D27EC:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D27FA
_080D27F6:
	movs r0, #0
	strh r0, [r2]
_080D27FA:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D281E
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _080D2830
	movs r0, #0
	strh r0, [r2]
	b _080D2830
_080D281E:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080D2830
	strh r3, [r2]
_080D2830:
	adds r7, r4, #0
	adds r7, #0xa8
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	ble _080D2844
	str r1, [r4, #0x40]
_080D2844:
	adds r6, r4, #0
	adds r6, #0xa4
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	bge _080D2858
	str r1, [r4, #0x40]
_080D2858:
	adds r5, r4, #0
	adds r5, #0xaa
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	ble _080D286A
	str r1, [r4, #0x44]
_080D286A:
	adds r3, r4, #0
	adds r3, #0xa6
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0x10
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bge _080D287E
	str r1, [r4, #0x44]
_080D287E:
	mov r0, r8
	ldr r2, [r0]
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bgt _080D28B0
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	cmp r1, r0
	blt _080D28B0
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x44]
	cmp r1, r0
	bgt _080D28B0
	movs r2, #0
	ldrsh r0, [r3, r2]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D28B4
_080D28B0:
	movs r3, #1
	str r3, [sp]
_080D28B4:
	movs r2, #0xc
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #0x60
	bls _080D28D8
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D28DC
	movs r0, #0x60
	strh r0, [r4, #4]
	movs r2, #0x30
	b _080D28DC
_080D28D8:
	adds r0, r1, #1
	strb r0, [r7]
_080D28DC:
	lsls r0, r2, #0x10
	lsrs r5, r0, #8
	mov r2, r8
	ldr r1, [r2]
	ldr r1, [r1, #0x44]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r1, r1, r3
	ldr r3, [r4, #0x44]
	subs r2, r1, r3
	adds r6, r0, #0
	cmp r2, #0
	blt _080D28FC
	cmp r2, r5
	blt _080D290E
	b _080D2902
_080D28FC:
	subs r0, r3, r1
	cmp r0, r5
	blt _080D290E
_080D2902:
	asrs r0, r6, #0x10
	cmp r0, #0x30
	bne _080D2940
	ldr r5, [sp]
	cmp r5, #0
	beq _080D2940
_080D290E:
	movs r0, #5
	ldr r1, [sp, #4]
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2930
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x2c
	b _080D2936
_080D2930:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x30
_080D2936:
	strb r0, [r1]
	movs r0, #0
	strb r0, [r7]
	ldr r0, _080D2950 @ =sub_080D2954
	str r0, [r4, #0x78]
_080D2940:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D2950: .4byte sub_080D2954

	thumb_func_start sub_080D2954
sub_080D2954: @ 0x080D2954
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r0, #0
	mov sb, r0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	movs r1, #0x60
	mov sl, r1
	cmp r0, #0
	beq _080D2978
	movs r2, #0xa0
	mov sl, r2
_080D2978:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xac
	adds r3, r3, r4
	mov r8, r3
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D29B6
	adds r0, r4, #0
	bl sub_0803D368
	mov r1, r8
	str r0, [r1]
	mov r2, sb
	strb r2, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D29B6:
	ldr r3, [r4, #0x44]
	ldr r1, _080D29F0 @ =0xFFFFF000
	ands r3, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	adds r0, #0x10
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D2A10
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080D29F4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D2A84
	strh r2, [r1]
	b _080D2A84
	.align 2, 0
_080D29F0: .4byte 0xFFFFF000
_080D29F4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D2A0C @ =0xFFFFFE80
	cmp r0, r2
	bge _080D2A84
	strh r2, [r1]
	b _080D2A84
	.align 2, 0
_080D2A0C: .4byte 0xFFFFFE80
_080D2A10:
	cmp r3, r0
	bge _080D2A58
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080D2A38
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D2A84
	strh r1, [r2]
	b _080D2A84
_080D2A38:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D2A54 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D2A84
	strh r1, [r2]
	b _080D2A84
	.align 2, 0
_080D2A54: .4byte 0xFFFFFE80
_080D2A58:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D2A76
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2A84
	mov r5, sb
	strh r5, [r1]
	b _080D2A84
_080D2A76:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2A84
	mov r0, sb
	strh r0, [r1]
_080D2A84:
	ldr r3, [r4, #0x40]
	ldr r2, _080D2AC4 @ =0xFFFFF000
	ands r3, r2
	movs r5, #0
	ldrsh r1, [r7, r5]
	mov r7, sl
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D2AC8
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D2B18
	b _080D2B1C
	.align 2, 0
_080D2AC4: .4byte 0xFFFFF000
_080D2AC8:
	cmp r3, r0
	ble _080D2B2C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D2B00
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D2AFC @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080D2B18
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D2B56
	strh r1, [r2]
	b _080D2B56
	.align 2, 0
_080D2AFC: .4byte 0xFFFFFF00
_080D2B00:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D2B1C
_080D2B18:
	strh r3, [r2]
	b _080D2B56
_080D2B1C:
	ldr r1, _080D2B28 @ =0xFFFFFF00
	cmp r0, r1
	bge _080D2B56
	strh r1, [r2]
	b _080D2B56
	.align 2, 0
_080D2B28: .4byte 0xFFFFFF00
_080D2B2C:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D2B48
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2B56
	b _080D2B52
_080D2B48:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2B56
_080D2B52:
	movs r0, #0
	strh r0, [r2]
_080D2B56:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D2B7A
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080D2B8C
	movs r0, #0
	strh r0, [r2]
	b _080D2B8C
_080D2B7A:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080D2B8C
	strh r3, [r2]
_080D2B8C:
	adds r7, r4, #0
	adds r7, #0xa8
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	ble _080D2BA0
	str r1, [r4, #0x40]
_080D2BA0:
	adds r6, r4, #0
	adds r6, #0xa4
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	bge _080D2BB4
	str r1, [r4, #0x40]
_080D2BB4:
	adds r5, r4, #0
	adds r5, #0xaa
	movs r3, #0
	ldrsh r0, [r5, r3]
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	ble _080D2BC6
	str r1, [r4, #0x44]
_080D2BC6:
	adds r3, r4, #0
	adds r3, #0xa6
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0x10
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bge _080D2BDA
	str r1, [r4, #0x44]
_080D2BDA:
	mov r0, r8
	ldr r2, [r0]
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bgt _080D2C0A
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	cmp r1, r0
	blt _080D2C0A
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x44]
	cmp r1, r0
	bgt _080D2C0A
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D2C0E
_080D2C0A:
	movs r3, #1
	mov sb, r3
_080D2C0E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D2C20
	movs r0, #0x60
	strh r0, [r4, #4]
_080D2C20:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080D2C36
	mov r5, sb
	cmp r5, #0
	beq _080D2C3C
_080D2C36:
	adds r0, r4, #0
	bl sub_080D2C4C
_080D2C3C:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D2C4C
sub_080D2C4C: @ 0x080D2C4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D2C88 @ =sub_080D2CB0
	movs r1, #6
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D2C8C
	movs r0, #4
	b _080D2C8E
	.align 2, 0
_080D2C88: .4byte sub_080D2CB0
_080D2C8C:
	movs r0, #8
_080D2C8E:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D2CB0
sub_080D2CB0: @ 0x080D2CB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r0, [r5]
	cmp r0, #7
	beq _080D2CC0
	b _080D2E4A
_080D2CC0:
	ldrb r0, [r4, #1]
	cmp r0, #8
	bne _080D2D3C
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r4, #0
	bl sub_080D4DA4
	ldr r1, _080D2DA4 @ =gKirbys
	ldr r0, _080D2DA8 @ =gUnk_0203AD3C
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
	bne _080D2D3C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D2D00
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D2D3C
_080D2D00:
	ldr r1, _080D2DAC @ =gUnk_08D60FA4
	ldr r5, _080D2DB0 @ =gSongTable
	ldr r2, _080D2DB4 @ =0x00000BBC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D2D24
	ldr r6, _080D2DB8 @ =0x00000BB8
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D2D3C
_080D2D24:
	cmp r3, #0
	beq _080D2D36
	ldr r0, _080D2DBC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D2D3C
_080D2D36:
	ldr r0, _080D2DC0 @ =0x00000177
	bl m4aSongNumStart
_080D2D3C:
	ldrb r0, [r4, #1]
	subs r0, #8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bhi _080D2D58
	ldr r1, _080D2DC4 @ =gUnk_08356178
	ldrb r0, [r4, #1]
	subs r0, #8
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_080D2D58:
	ldrb r0, [r4, #1]
	cmp r0, #0x18
	bne _080D2E38
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r3, [r0]
	cmp r3, #2
	bhi _080D2E38
	adds r0, #2
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D2D92
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D2DC8 @ =gUnk_08351530
	ldr r0, _080D2DCC @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r6, #0
	ldrsh r1, [r2, r6]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D2DDC
_080D2D92:
	cmp r3, #1
	beq _080D2DF4
	ldr r2, _080D2DD0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D2DD4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D2DD8 @ =0x3C6EF35F
	adds r0, r0, r1
	b _080D2DE8
	.align 2, 0
_080D2DA4: .4byte gKirbys
_080D2DA8: .4byte gUnk_0203AD3C
_080D2DAC: .4byte gUnk_08D60FA4
_080D2DB0: .4byte gSongTable
_080D2DB4: .4byte 0x00000BBC
_080D2DB8: .4byte 0x00000BB8
_080D2DBC: .4byte gUnk_0203AD10
_080D2DC0: .4byte 0x00000177
_080D2DC4: .4byte gUnk_08356178
_080D2DC8: .4byte gUnk_08351530
_080D2DCC: .4byte gUnk_0203AD30
_080D2DD0: .4byte gRngVal
_080D2DD4: .4byte 0x00196225
_080D2DD8: .4byte 0x3C6EF35F
_080D2DDC:
	ldr r2, _080D2E18 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D2E1C @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080D2E20 @ =0x3C6EF35F
	adds r0, r0, r6
_080D2DE8:
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080D2E38
_080D2DF4:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x60
	strh r0, [r4, #4]
	ldrb r0, [r5]
	cmp r0, #0
	beq _080D2E24
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0xc
	b _080D2E2A
	.align 2, 0
_080D2E18: .4byte gRngVal
_080D2E1C: .4byte 0x00196225
_080D2E20: .4byte 0x3C6EF35F
_080D2E24:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
_080D2E2A:
	strb r0, [r1]
	ldr r0, _080D2E34 @ =sub_080D2954
	str r0, [r4, #0x78]
	b _080D2E9E
	.align 2, 0
_080D2E34: .4byte sub_080D2954
_080D2E38:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D2E9E
	adds r0, r4, #0
	bl sub_080D52F8
	b _080D2E9E
_080D2E4A:
	adds r3, r4, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D2E7C
	ldr r2, _080D2EA4 @ =gUnk_08356168
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_080D2E7C:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D2E9E
	movs r0, #7
	strb r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	subs r1, #5
	ands r0, r1
	str r0, [r4, #0x68]
_080D2E9E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D2EA4: .4byte gUnk_08356168

	thumb_func_start sub_080D2EA8
sub_080D2EA8: @ 0x080D2EA8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D2EE8 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D2EEC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D2F36
	strh r2, [r1]
	b _080D2F36
	.align 2, 0
_080D2EE8: .4byte 0xFFFFFC00
_080D2EEC:
	cmp r3, r0
	bge _080D2F0C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D2F08 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D2F36
	strh r2, [r1]
	b _080D2F36
	.align 2, 0
_080D2F08: .4byte 0xFFFFFE00
_080D2F0C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D2F28
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2F36
	b _080D2F34
_080D2F28:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2F36
_080D2F34:
	strh r5, [r1]
_080D2F36:
	ldr r3, [r4, #0x40]
	ldr r2, _080D2F5C @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080D2F60
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D2F98
	.align 2, 0
_080D2F5C: .4byte 0xFFFFFC00
_080D2F60:
	cmp r3, r0
	ble _080D2FBC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D2F98
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D2F94 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D2F8E
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D2FE8
_080D2F8E:
	strh r2, [r1]
	b _080D2FE8
	.align 2, 0
_080D2F94: .4byte 0xFFFFFE00
_080D2F98:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D2F8E
	ldr r2, _080D2FB8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D2FE8
	b _080D2F8E
	.align 2, 0
_080D2FB8: .4byte 0xFFFFFE00
_080D2FBC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D2FD8
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D2FE8
	b _080D2FE4
_080D2FD8:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D2FE8
_080D2FE4:
	movs r0, #0
	strh r0, [r1]
_080D2FE8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D2FFE
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D3004
_080D2FFE:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D3004:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D3058
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D302E
	cmp r2, #0x1f
	ble _080D3034
	b _080D3058
_080D302E:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D3058
_080D3034:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D304C
	cmp r1, #0xf
	ble _080D3052
	b _080D3058
_080D304C:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D3058
_080D3052:
	adds r0, r4, #0
	bl sub_080D1A38
_080D3058:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D30BC
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3094
	ldr r2, _080D3088 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D308C @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D3090 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D30B2
	.align 2, 0
_080D3088: .4byte gRngVal
_080D308C: .4byte 0x00196225
_080D3090: .4byte 0x3C6EF35F
_080D3094:
	ldr r2, _080D30C4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D30C8 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080D30CC @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D30B0
	movs r2, #1
_080D30B0:
	adds r1, r2, #0
_080D30B2:
	cmp r1, #0
	beq _080D30BC
	adds r0, r4, #0
	bl sub_080D1978
_080D30BC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D30C4: .4byte gRngVal
_080D30C8: .4byte 0x00196225
_080D30CC: .4byte 0x3C6EF35F

	thumb_func_start sub_080D30D0
sub_080D30D0: @ 0x080D30D0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D30F4
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D30F4
	movs r0, #9
	strb r0, [r2]
_080D30F4:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sb, r2
	mov sl, r0
	cmp r1, #0
	beq _080D310A
	movs r3, #0xa0
	mov sb, r3
_080D310A:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D3148
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D3148:
	ldr r3, [r4, #0x44]
	ldr r1, _080D3180 @ =0xFFFFF000
	ands r3, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D31A0
	ldrh r2, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _080D3184
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r3, [r1]
	adds r0, r2, r3
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D320E
	strh r2, [r1]
	b _080D320E
	.align 2, 0
_080D3180: .4byte 0xFFFFF000
_080D3184:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D319C @ =0xFFFFFE80
	cmp r0, r2
	bge _080D320E
	strh r2, [r1]
	b _080D320E
	.align 2, 0
_080D319C: .4byte 0xFFFFFE80
_080D31A0:
	cmp r3, r0
	bge _080D31E8
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080D31C8
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D320E
	strh r1, [r2]
	b _080D320E
_080D31C8:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D31E4 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D320E
	strh r1, [r2]
	b _080D320E
	.align 2, 0
_080D31E4: .4byte 0xFFFFFE80
_080D31E8:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D3202
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D320E
	b _080D320C
_080D3202:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D320E
_080D320C:
	strh r7, [r1]
_080D320E:
	ldr r3, [r4, #0x40]
	ldr r2, _080D3250 @ =0xFFFFF000
	ands r3, r2
	mov r5, r8
	movs r0, #0
	ldrsh r1, [r5, r0]
	mov r5, sb
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D3254
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D32A4
	b _080D32A8
	.align 2, 0
_080D3250: .4byte 0xFFFFF000
_080D3254:
	cmp r3, r0
	ble _080D32B8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D328C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D3288 @ =0xFFFFFE80
	adds r2, r1, #0
	cmp r0, r3
	blt _080D32A4
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D32E2
	strh r1, [r2]
	b _080D32E2
	.align 2, 0
_080D3288: .4byte 0xFFFFFE80
_080D328C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D32A8
_080D32A4:
	strh r3, [r2]
	b _080D32E2
_080D32A8:
	ldr r1, _080D32B4 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D32E2
	strh r1, [r2]
	b _080D32E2
	.align 2, 0
_080D32B4: .4byte 0xFFFFFE80
_080D32B8:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D32D4
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D32E2
	b _080D32DE
_080D32D4:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D32E2
_080D32DE:
	movs r0, #0
	strh r0, [r2]
_080D32E2:
	mov r3, sl
	ldr r0, [r3]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D3332
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	movs r5, #0
	ldrsh r0, [r0, r5]
	adds r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D330C
	movs r0, #0
	strh r0, [r2]
_080D330C:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D3322
	movs r0, #0
	strh r0, [r2]
_080D3322:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	blt _080D3370
	adds r0, r4, #0
	bl sub_080D5390
	b _080D3370
_080D3332:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa8
	movs r5, #0
	ldrsh r0, [r0, r5]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080D334E
	strh r3, [r2]
_080D334E:
	adds r0, r4, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #0x50
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080D3362
	strh r3, [r2]
_080D3362:
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bgt _080D3370
	adds r0, r4, #0
	bl sub_080D5390
_080D3370:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D3380
sub_080D3380: @ 0x080D3380
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	movs r0, #0xc
	str r0, [sp]
	movs r1, #0
	str r1, [sp, #4]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0
	bne _080D33AE
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D33AE
	movs r0, #9
	strb r0, [r2]
_080D33AE:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r1, [r1, #0xe]
	movs r2, #0x60
	mov sl, r2
	str r0, [sp, #8]
	cmp r1, #0
	beq _080D33C4
	movs r3, #0xa0
	mov sl, r3
_080D33C4:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xac
	adds r1, r1, r4
	mov r8, r1
	movs r2, #0xa0
	adds r2, r2, r4
	mov sb, r2
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D3406
	adds r0, r4, #0
	bl sub_0803D368
	mov r3, r8
	str r0, [r3]
	strb r7, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r5, sb
	strh r0, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D3406:
	ldr r3, [r4, #0x44]
	ldr r1, _080D343C @ =0xFFFFF000
	ands r3, r1
	movs r2, #0
	ldrsh r0, [r6, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D345C
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080D3440
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r5, [r1]
	adds r0, r2, r5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080D34CA
	strh r2, [r1]
	b _080D34CA
	.align 2, 0
_080D343C: .4byte 0xFFFFF000
_080D3440:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r7, [r1]
	adds r0, r2, r7
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3458 @ =0xFFFFFE80
	cmp r0, r2
	bge _080D34CA
	strh r2, [r1]
	b _080D34CA
	.align 2, 0
_080D3458: .4byte 0xFFFFFE80
_080D345C:
	cmp r3, r0
	bge _080D34A4
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0
	bge _080D3484
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xc0
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D34CA
	strh r1, [r2]
	b _080D34CA
_080D3484:
	adds r2, r4, #0
	adds r2, #0x52
	ldrh r0, [r2]
	ldrh r1, [r4, #4]
	subs r0, r0, r1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _080D34A0 @ =0xFFFFFE80
	cmp r0, r1
	bge _080D34CA
	strh r1, [r2]
	b _080D34CA
	.align 2, 0
_080D34A0: .4byte 0xFFFFFE80
_080D34A4:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D34BE
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D34CA
	b _080D34C8
_080D34BE:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D34CA
_080D34C8:
	strh r7, [r1]
_080D34CA:
	ldr r3, [r4, #0x40]
	ldr r2, _080D350C @ =0xFFFFF000
	ands r3, r2
	mov r5, sb
	movs r7, #0
	ldrsh r1, [r5, r7]
	mov r5, sl
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	lsls r0, r1, #8
	ands r0, r2
	cmp r3, r0
	bge _080D3510
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D3560
	b _080D3564
	.align 2, 0
_080D350C: .4byte 0xFFFFF000
_080D3510:
	cmp r3, r0
	ble _080D3574
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D3548
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D3544 @ =0xFFFFFF00
	adds r2, r1, #0
	cmp r0, r3
	blt _080D3560
	movs r1, #0x80
	lsls r1, r1, #1
	cmp r0, r1
	ble _080D359E
	strh r1, [r2]
	b _080D359E
	.align 2, 0
_080D3544: .4byte 0xFFFFFF00
_080D3548:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D3564
_080D3560:
	strh r3, [r2]
	b _080D359E
_080D3564:
	ldr r1, _080D3570 @ =0xFFFFFF00
	cmp r0, r1
	bge _080D359E
	strh r1, [r2]
	b _080D359E
	.align 2, 0
_080D3570: .4byte 0xFFFFFF00
_080D3574:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r7, #0
	ldrsh r1, [r0, r7]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D3590
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D359E
	b _080D359A
_080D3590:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D359E
_080D359A:
	movs r0, #0
	strh r0, [r2]
_080D359E:
	ldr r1, [sp, #8]
	ldr r0, [r1]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080D35C0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	ble _080D35D2
	movs r0, #0
	strh r0, [r2]
	b _080D35D2
_080D35C0:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r5, #0
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _080D35D2
	strh r3, [r2]
_080D35D2:
	adds r7, r4, #0
	adds r7, #0xa8
	movs r1, #0
	ldrsh r0, [r7, r1]
	subs r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	ble _080D35E6
	str r1, [r4, #0x40]
_080D35E6:
	adds r6, r4, #0
	adds r6, #0xa4
	movs r2, #0
	ldrsh r0, [r6, r2]
	adds r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x40]
	cmp r0, r1
	bge _080D35FA
	str r1, [r4, #0x40]
_080D35FA:
	adds r5, r4, #0
	adds r5, #0xaa
	movs r3, #0
	ldrsh r0, [r5, r3]
	subs r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	ble _080D360E
	str r1, [r4, #0x44]
_080D360E:
	adds r3, r4, #0
	adds r3, #0xa6
	movs r1, #0
	ldrsh r0, [r3, r1]
	adds r0, #0xc
	lsls r1, r0, #8
	ldr r0, [r4, #0x44]
	cmp r0, r1
	bge _080D3622
	str r1, [r4, #0x44]
_080D3622:
	mov r0, r8
	ldr r2, [r0]
	movs r1, #0
	ldrsh r0, [r7, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x40]
	cmp r1, r0
	bgt _080D3652
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	cmp r1, r0
	blt _080D3652
	movs r1, #0
	ldrsh r0, [r5, r1]
	lsls r0, r0, #8
	ldr r1, [r2, #0x44]
	cmp r1, r0
	bgt _080D3652
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D3656
_080D3652:
	movs r3, #1
	str r3, [sp, #4]
_080D3656:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xa
	bne _080D368C
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D3674
	movs r0, #0x60
	strh r0, [r4, #4]
_080D3674:
	adds r1, r4, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080D36E8
	adds r0, r4, #0
	bl sub_080D36F8
	b _080D36E8
_080D368C:
	adds r0, r4, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0x40
	bls _080D36B0
	movs r7, #0x30
	str r7, [sp]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x60
	ble _080D36B4
	movs r0, #0x60
	strh r0, [r4, #4]
	b _080D36B4
_080D36B0:
	adds r0, r1, #1
	strb r0, [r5]
_080D36B4:
	ldr r0, [sp]
	lsls r3, r0, #8
	mov r1, r8
	ldr r0, [r1]
	ldr r2, [r0, #0x44]
	ldr r0, [r4, #0x44]
	subs r1, r2, r0
	cmp r1, #0
	blt _080D36CC
	cmp r1, r3
	blt _080D36E0
	b _080D36D2
_080D36CC:
	subs r0, r0, r2
	cmp r0, r3
	blt _080D36E0
_080D36D2:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0x60
	bne _080D36E8
	ldr r3, [sp, #4]
	cmp r3, #0
	beq _080D36E8
_080D36E0:
	movs r0, #0xa
	strb r0, [r6]
	movs r0, #0x18
	strb r0, [r5]
_080D36E8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080D36F8
sub_080D36F8: @ 0x080D36F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D3730 @ =sub_080D379C
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r2, _080D3734 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D3738 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080D373C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	beq _080D3740
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0x10
	b _080D3746
	.align 2, 0
_080D3730: .4byte sub_080D379C
_080D3734: .4byte gRngVal
_080D3738: .4byte 0x00196225
_080D373C: .4byte 0x3C6EF35F
_080D3740:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0xff
_080D3746:
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3768
	movs r0, #0x14
	b _080D376A
_080D3768:
	movs r0, #0x18
_080D376A:
	strh r0, [r4, #4]
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	ldr r0, [r2]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D379C
sub_080D379C: @ 0x080D379C
	push {r4, lr}
	adds r3, r0, #0
	movs r0, #0x9e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #7
	bhi _080D37D8
	ldr r2, _080D380C @ =gUnk_08356168
	lsrs r0, r1, #0x19
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	lsrs r0, r0, #1
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	mov r2, ip
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080D37D8:
	ldrh r1, [r3, #4]
	movs r2, #4
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bne _080D38B2
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D3814
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x90
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3810 @ =0xFFFFF880
	cmp r0, r2
	blt _080D3830
	movs r2, #0xf0
	lsls r2, r2, #3
	cmp r0, r2
	ble _080D3832
	b _080D3830
	.align 2, 0
_080D380C: .4byte gUnk_08356168
_080D3810: .4byte 0xFFFFF880
_080D3814:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x90
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xf0
	lsls r2, r2, #3
	cmp r0, r2
	bgt _080D3830
	ldr r2, _080D3868 @ =0xFFFFF880
	cmp r0, r2
	bge _080D3832
_080D3830:
	strh r2, [r1]
_080D3832:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D386C
	adds r0, r3, #0
	adds r0, #0xa4
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	ldr r2, [r3, #0x40]
	cmp r2, r0
	blt _080D387C
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _080D38AA
	adds r0, #1
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #8
	lsls r0, r0, #8
	cmp r2, r0
	bge _080D38A4
	b _080D387C
	.align 2, 0
_080D3868: .4byte 0xFFFFF880
_080D386C:
	adds r0, r3, #0
	adds r0, #0xa8
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ldr r2, [r3, #0x40]
	cmp r2, r0
	ble _080D3884
_080D387C:
	adds r0, r3, #0
	bl sub_080D394C
	b _080D3924
_080D3884:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #0
	bne _080D38AA
	adds r0, #1
	movs r1, #0
	ldrsh r0, [r0, r1]
	adds r0, #8
	lsls r0, r0, #8
	cmp r2, r0
	ble _080D38A4
	adds r0, r3, #0
	bl sub_080D394C
_080D38A4:
	ldrb r0, [r4]
	cmp r0, #0
	beq _080D3924
_080D38AA:
	ldrb r0, [r4]
	subs r0, #1
	strb r0, [r4]
	b _080D3924
_080D38B2:
	subs r0, r1, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D3924
	ldr r1, _080D392C @ =gKirbys
	ldr r0, _080D3930 @ =gUnk_0203AD3C
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
	bne _080D3924
	ldrb r0, [r3]
	cmp r0, #0
	bne _080D38E8
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D3924
_080D38E8:
	ldr r1, _080D3934 @ =gUnk_08D60FA4
	ldr r4, _080D3938 @ =gSongTable
	ldr r2, _080D393C @ =0x00000CCC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D390C
	ldr r1, _080D3940 @ =0x00000CC8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D3924
_080D390C:
	cmp r3, #0
	beq _080D391E
	ldr r0, _080D3944 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D3924
_080D391E:
	ldr r0, _080D3948 @ =0x00000199
	bl m4aSongNumStart
_080D3924:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D392C: .4byte gKirbys
_080D3930: .4byte gUnk_0203AD3C
_080D3934: .4byte gUnk_08D60FA4
_080D3938: .4byte gSongTable
_080D393C: .4byte 0x00000CCC
_080D3940: .4byte 0x00000CC8
_080D3944: .4byte gUnk_0203AD10
_080D3948: .4byte 0x00000199

	thumb_func_start sub_080D394C
sub_080D394C: @ 0x080D394C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D39A8 @ =sub_080D53C4
	movs r1, #0xa
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D39A4
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D39AC @ =gUnk_08351530
	ldr r0, _080D39B0 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x30
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D39B4
_080D39A4:
	movs r0, #0x1c
	b _080D39B6
	.align 2, 0
_080D39A8: .4byte sub_080D53C4
_080D39AC: .4byte gUnk_08351530
_080D39B0: .4byte gUnk_0203AD30
_080D39B4:
	movs r0, #0x20
_080D39B6:
	strh r0, [r4, #4]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D39C8
sub_080D39C8: @ 0x080D39C8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D3A08 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D3A0C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D3A56
	strh r2, [r1]
	b _080D3A56
	.align 2, 0
_080D3A08: .4byte 0xFFFFFC00
_080D3A0C:
	cmp r3, r0
	bge _080D3A2C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3A28 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D3A56
	strh r2, [r1]
	b _080D3A56
	.align 2, 0
_080D3A28: .4byte 0xFFFFFE00
_080D3A2C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D3A48
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3A56
	b _080D3A54
_080D3A48:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3A56
_080D3A54:
	strh r5, [r1]
_080D3A56:
	ldr r3, [r4, #0x40]
	ldr r2, _080D3A7C @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080D3A80
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D3AB8
	.align 2, 0
_080D3A7C: .4byte 0xFFFFFC00
_080D3A80:
	cmp r3, r0
	ble _080D3ADC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D3AB8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3AB4 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D3AAE
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D3B08
_080D3AAE:
	strh r2, [r1]
	b _080D3B08
	.align 2, 0
_080D3AB4: .4byte 0xFFFFFE00
_080D3AB8:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D3AAE
	ldr r2, _080D3AD8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D3B08
	b _080D3AAE
	.align 2, 0
_080D3AD8: .4byte 0xFFFFFE00
_080D3ADC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D3AF8
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3B08
	b _080D3B04
_080D3AF8:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3B08
_080D3B04:
	movs r0, #0
	strh r0, [r1]
_080D3B08:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D3B1E
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D3B24
_080D3B1E:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D3B24:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D3B78
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D3B4E
	cmp r2, #0x1f
	ble _080D3B54
	b _080D3B78
_080D3B4E:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D3B78
_080D3B54:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D3B6C
	cmp r1, #0xf
	ble _080D3B72
	b _080D3B78
_080D3B6C:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D3B78
_080D3B72:
	adds r0, r4, #0
	bl sub_080D1A38
_080D3B78:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D3BDC
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3BB4
	ldr r2, _080D3BA8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D3BAC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D3BB0 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D3BD2
	.align 2, 0
_080D3BA8: .4byte gRngVal
_080D3BAC: .4byte 0x00196225
_080D3BB0: .4byte 0x3C6EF35F
_080D3BB4:
	ldr r2, _080D3BE4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D3BE8 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080D3BEC @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D3BD0
	movs r2, #1
_080D3BD0:
	adds r1, r2, #0
_080D3BD2:
	cmp r1, #0
	beq _080D3BDC
	adds r0, r4, #0
	bl sub_080D1978
_080D3BDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D3BE4: .4byte gRngVal
_080D3BE8: .4byte 0x00196225
_080D3BEC: .4byte 0x3C6EF35F

	thumb_func_start sub_080D3BF0
sub_080D3BF0: @ 0x080D3BF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D3C48 @ =sub_080D3C58
	movs r1, #0xc
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r3, r4, #0
	adds r3, #0xac
	str r0, [r3]
	ldr r1, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r1, r2
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	str r1, [r4, #8]
	ldr r1, [r4, #0xc]
	subs r2, #0x3e
	ands r1, r2
	str r1, [r4, #0xc]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0xa0
	movs r2, #0
	strh r0, [r1]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r2, [r0]
	subs r0, #0x18
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D3C4C
	movs r0, #0x3e
	b _080D3C4E
	.align 2, 0
_080D3C48: .4byte sub_080D3C58
_080D3C4C:
	movs r0, #0x44
_080D3C4E:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D3C58
sub_080D3C58: @ 0x080D3C58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	bne _080D3C6A
	b _080D3DE4
_080D3C6A:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r7, #0
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r4
	mov r8, r1
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D3CA8
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D3CA8:
	ldr r2, [r4, #0x44]
	ldr r1, _080D3CD8 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D3CDC
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	ble _080D3D28
	strh r2, [r5]
	b _080D3D28
	.align 2, 0
_080D3CD8: .4byte 0xFFFFF000
_080D3CDC:
	cmp r2, r0
	bge _080D3D00
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3CFC @ =0xFFFFFE00
	adds r5, r1, #0
	cmp r0, r2
	bge _080D3D28
	strh r2, [r5]
	b _080D3D28
	.align 2, 0
_080D3CFC: .4byte 0xFFFFFE00
_080D3D00:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r5, r0, #0
	cmp r1, #0
	bge _080D3D1C
	adds r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3D28
	b _080D3D26
_080D3D1C:
	subs r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3D28
_080D3D26:
	strh r7, [r5]
_080D3D28:
	ldr r2, [r4, #0x40]
	ldr r1, _080D3D64 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D3D6C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080D3D60
	b _080D3F2C
_080D3D60:
	ldr r1, _080D3D68 @ =0xFFFFFE00
	b _080D3F32
	.align 2, 0
_080D3D64: .4byte 0xFFFFF000
_080D3D68: .4byte 0xFFFFFE00
_080D3D6C:
	cmp r2, r0
	ble _080D3DC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D3DA0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D3D9C @ =0xFFFFFE00
	adds r2, r1, #0
	cmp r0, r3
	bge _080D3D96
	b _080D3F2C
_080D3D96:
	movs r1, #0x80
	lsls r1, r1, #2
	b _080D3F08
	.align 2, 0
_080D3D9C: .4byte 0xFFFFFE00
_080D3DA0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080D3DBA
	b _080D3F2C
_080D3DBA:
	ldr r1, _080D3DC0 @ =0xFFFFFE00
	b _080D3F32
	.align 2, 0
_080D3DC0: .4byte 0xFFFFFE00
_080D3DC4:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	blt _080D3DD6
	b _080D3F5C
_080D3DD6:
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D3DE2
	b _080D3F6A
_080D3DE2:
	b _080D3F66
_080D3DE4:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r3, #0xa0
	adds r3, r3, r4
	mov r8, r3
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #7
	bls _080D3E20
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r5]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D3E20:
	ldr r2, [r4, #0x44]
	ldr r1, _080D3E50 @ =0xFFFFF000
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D3E54
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r5, r1, #0
	cmp r0, r2
	ble _080D3EA0
	strh r2, [r5]
	b _080D3EA0
	.align 2, 0
_080D3E50: .4byte 0xFFFFF000
_080D3E54:
	cmp r2, r0
	bge _080D3E78
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D3E74 @ =0xFFFFFE40
	adds r5, r1, #0
	cmp r0, r2
	bge _080D3EA0
	strh r2, [r5]
	b _080D3EA0
	.align 2, 0
_080D3E74: .4byte 0xFFFFFE40
_080D3E78:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r5, r0, #0
	cmp r1, #0
	bge _080D3E94
	adds r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3EA0
	b _080D3E9E
_080D3E94:
	subs r0, r2, #4
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3EA0
_080D3E9E:
	strh r7, [r5]
_080D3EA0:
	ldr r2, [r4, #0x40]
	ldr r1, _080D3ED8 @ =0xFFFFF000
	ands r2, r1
	mov r3, r8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D3EDC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D3F2C
	b _080D3F30
	.align 2, 0
_080D3ED8: .4byte 0xFFFFF000
_080D3EDC:
	cmp r2, r0
	ble _080D3F40
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D3F14
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D3F10 @ =0xFFFFFE40
	adds r2, r1, #0
	cmp r0, r3
	blt _080D3F2C
	movs r1, #0xe0
	lsls r1, r1, #1
_080D3F08:
	cmp r0, r1
	ble _080D3F6A
	strh r1, [r2]
	b _080D3F6A
	.align 2, 0
_080D3F10: .4byte 0xFFFFFE40
_080D3F14:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x50
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xe0
	lsls r3, r3, #1
	adds r2, r1, #0
	cmp r0, r3
	ble _080D3F30
_080D3F2C:
	strh r3, [r2]
	b _080D3F6A
_080D3F30:
	ldr r1, _080D3F3C @ =0xFFFFFE40
_080D3F32:
	cmp r0, r1
	bge _080D3F6A
	strh r1, [r2]
	b _080D3F6A
	.align 2, 0
_080D3F3C: .4byte 0xFFFFFE40
_080D3F40:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D3F5C
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D3F6A
	b _080D3F66
_080D3F5C:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D3F6A
_080D3F66:
	movs r0, #0
	strh r0, [r2]
_080D3F6A:
	adds r0, r4, #0
	adds r0, #0xa8
	movs r3, #0
	ldrsh r0, [r0, r3]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bgt _080D3F8C
	adds r0, r4, #0
	adds r0, #0xa4
	movs r6, #0
	ldrsh r0, [r0, r6]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D3F90
_080D3F8C:
	movs r0, #0
	strh r0, [r2]
_080D3F90:
	adds r0, r4, #0
	adds r0, #0xaa
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r0, #0xc
	lsls r0, r0, #8
	ldr r1, [r4, #0x44]
	cmp r1, r0
	bgt _080D3FB2
	adds r0, r4, #0
	adds r0, #0xa6
	movs r2, #0
	ldrsh r0, [r0, r2]
	adds r0, #0xc
	lsls r0, r0, #8
	cmp r1, r0
	bge _080D3FB6
_080D3FB2:
	movs r0, #0
	strh r0, [r5]
_080D3FB6:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D3FCC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D3FD2
_080D3FCC:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D3FD2:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D3FE6
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xd
	strb r0, [r1]
_080D3FE6:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D3FF8
	adds r0, r4, #0
	bl sub_080D5574
_080D3FF8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D4004
sub_080D4004: @ 0x080D4004
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080D4054
	ldrb r0, [r6]
	cmp r0, #0
	bne _080D4054
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080D4054
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080D4054
	cmp r0, #0x7a
	bhi _080D4054
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080D4054
	ldr r5, [r6, #8]
	ldr r0, _080D4058 @ =0x03800B00
	ands r5, r0
	cmp r5, #0
	beq _080D405C
_080D4054:
	movs r0, #0
	b _080D4116
	.align 2, 0
_080D4058: .4byte 0x03800B00
_080D405C:
	ldr r2, _080D4124 @ =sub_080D5458
	adds r0, r4, #0
	movs r1, #0xe
	bl ObjectSetFunc
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #0x4d
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r0, _080D4128 @ =gUnk_08356120
	str r0, [r7]
	adds r0, r4, #0
	adds r0, #0xac
	str r6, [r0]
	subs r0, #0x2c
	ldrh r0, [r0]
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	str r6, [r4, #0x6c]
	ldr r1, _080D412C @ =gKirbys
	ldr r0, _080D4130 @ =gUnk_0203AD3C
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
	bne _080D4114
	ldrb r0, [r4]
	cmp r0, #0
	bne _080D40D6
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D4114
_080D40D6:
	ldr r1, _080D4134 @ =gUnk_08D60FA4
	ldr r4, _080D4138 @ =gSongTable
	ldr r2, _080D413C @ =0x00000CD4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D40FC
	movs r1, #0xcd
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D4114
_080D40FC:
	cmp r3, #0
	beq _080D410C
	ldr r0, _080D4140 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080D4114
_080D410C:
	movs r0, #0xcd
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D4114:
	movs r0, #1
_080D4116:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080D4124: .4byte sub_080D5458
_080D4128: .4byte gUnk_08356120
_080D412C: .4byte gKirbys
_080D4130: .4byte gUnk_0203AD3C
_080D4134: .4byte gUnk_08D60FA4
_080D4138: .4byte gSongTable
_080D413C: .4byte 0x00000CD4
_080D4140: .4byte gUnk_0203AD10

	thumb_func_start sub_080D4144
sub_080D4144: @ 0x080D4144
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080D41A4 @ =gUnk_08356140
	str r1, [r0]
	ldr r2, _080D41A8 @ =sub_080D41BC
	adds r0, r4, #0
	movs r1, #0xf
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xa4
	ldrh r0, [r0]
	adds r0, #0x78
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r3, r4, #0
	adds r3, #0xa6
	movs r5, #0
	ldrsh r1, [r3, r5]
	adds r1, #0x40
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r2, [r0]
	movs r5, #8
	ldrsh r0, [r2, r5]
	cmp r1, r0
	bge _080D41AC
	ldrh r0, [r3]
	adds r0, #0x40
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	b _080D41B4
	.align 2, 0
_080D41A4: .4byte gUnk_08356140
_080D41A8: .4byte sub_080D41BC
_080D41AC:
	ldrh r1, [r2, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
_080D41B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D41BC
sub_080D41BC: @ 0x080D41BC
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0xc]
	movs r6, #0x80
	ands r6, r1
	cmp r6, #0
	bne _080D41DC
	movs r2, #0x88
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r0, [r0]
	cmp r0, #0
	bne _080D41EC
_080D41DC:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080D4AF4
	b _080D439C
_080D41EC:
	adds r1, r5, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r4, [r5, #0x44]
	ldr r2, _080D4224 @ =0xFFFFF000
	ands r4, r2
	adds r1, #4
	movs r3, #0
	ldrsh r0, [r1, r3]
	lsls r3, r0, #8
	ands r3, r2
	adds r7, r1, #0
	cmp r4, r3
	ble _080D4228
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D426E
	strh r2, [r1]
	b _080D426E
	.align 2, 0
_080D4224: .4byte 0xFFFFF000
_080D4228:
	cmp r4, r3
	bge _080D4248
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D4244 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D426E
	strh r2, [r1]
	b _080D426E
	.align 2, 0
_080D4244: .4byte 0xFFFFFE00
_080D4248:
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D4262
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D426E
	b _080D426C
_080D4262:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D426E
_080D426C:
	strh r6, [r1]
_080D426E:
	ldr r4, [r5, #0x40]
	ldr r0, _080D4290 @ =0xFFFFF000
	ands r4, r0
	adds r1, r5, #0
	adds r1, #0xa0
	movs r2, #0
	ldrsh r1, [r1, r2]
	lsls r3, r1, #8
	ands r3, r0
	cmp r4, r3
	bge _080D4294
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	b _080D42CC
	.align 2, 0
_080D4290: .4byte 0xFFFFF000
_080D4294:
	cmp r4, r3
	ble _080D42F0
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D42CC
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D42C8 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D42C2
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D4318
_080D42C2:
	strh r2, [r1]
	b _080D4318
	.align 2, 0
_080D42C8: .4byte 0xFFFFFE00
_080D42CC:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D42C2
	ldr r2, _080D42EC @ =0xFFFFFE00
	cmp r0, r2
	bge _080D4318
	b _080D42C2
	.align 2, 0
_080D42EC: .4byte 0xFFFFFE00
_080D42F0:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D430A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4318
	b _080D4314
_080D430A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4318
_080D4314:
	movs r0, #0
	strh r0, [r1]
_080D4318:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D432E
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D4334
_080D432E:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
_080D4334:
	str r0, [r5, #8]
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x83
	cmp r0, #0
	beq _080D435A
	movs r0, #0x10
	strb r0, [r4]
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #0x10
	bl sub_0803E2B0
_080D435A:
	ldrb r0, [r4]
	cmp r0, #0x10
	bne _080D439C
	movs r0, #0
	ldrsh r1, [r7, r0]
	adds r1, #0x10
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	cmp r1, r0
	blt _080D439C
	adds r0, r5, #0
	adds r0, #0xa8
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r0, r2
	ldr r1, [r5, #0x40]
	cmp r1, r0
	bge _080D439C
	adds r0, r5, #0
	adds r0, #0xa4
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	ldr r2, _080D43A4 @ =0xFFFFFC00
	adds r0, r0, r2
	cmp r1, r0
	ble _080D439C
	adds r0, r5, #0
	bl sub_080D54A4
_080D439C:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D43A4: .4byte 0xFFFFFC00

	thumb_func_start sub_080D43A8
sub_080D43A8: @ 0x080D43A8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r2, [r0]
	ldr r1, [r5, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080D43C6
	movs r3, #0x88
	lsls r3, r3, #1
	adds r0, r2, r3
	ldr r0, [r0]
	cmp r0, #0
	bne _080D43D6
_080D43C6:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r5, #0xc]
	adds r0, r5, #0
	bl sub_080D4AF4
	b _080D4500
_080D43D6:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D43EC
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D43F2
_080D43EC:
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
_080D43F2:
	str r0, [r5, #8]
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080D44E4
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x7a
	strh r0, [r2]
	lsls r0, r0, #0x10
	ldr r1, _080D44C4 @ =0xF9800000
	cmp r0, r1
	bge _080D4414
	ldr r0, _080D44C8 @ =0x0000F980
	strh r0, [r2]
_080D4414:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080D4500
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
	movs r1, #8
	rsbs r1, r1, #0
	ldr r0, [r5, #8]
	movs r4, #1
	adds r3, r4, #0
	bics r3, r0
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	movs r1, #0x14
	rsbs r1, r1, #0
	ldr r3, [r5, #8]
	ands r3, r4
	adds r0, r5, #0
	movs r2, #0xc
	bl sub_08089864
	ldr r1, _080D44CC @ =gKirbys
	ldr r0, _080D44D0 @ =gUnk_0203AD3C
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
	bne _080D44BA
	ldrb r0, [r5]
	cmp r0, #0
	bne _080D447A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080D44BA
_080D447A:
	ldr r1, _080D44D4 @ =gUnk_08D60FA4
	ldr r4, _080D44D8 @ =gSongTable
	ldr r3, _080D44DC @ =0x00000BB4
	adds r0, r4, r3
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080D44A0
	movs r1, #0xbb
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080D44BA
_080D44A0:
	cmp r3, #0
	beq _080D44B2
	ldr r0, _080D44E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080D44BA
_080D44B2:
	movs r0, #0xbb
	lsls r0, r0, #1
	bl m4aSongNumStart
_080D44BA:
	adds r0, r5, #0
	bl sub_080D54D8
	b _080D4500
	.align 2, 0
_080D44C4: .4byte 0xF9800000
_080D44C8: .4byte 0x0000F980
_080D44CC: .4byte gKirbys
_080D44D0: .4byte gUnk_0203AD3C
_080D44D4: .4byte gUnk_08D60FA4
_080D44D8: .4byte gSongTable
_080D44DC: .4byte 0x00000BB4
_080D44E0: .4byte gUnk_0203AD10
_080D44E4:
	subs r0, r1, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D4500
	ldr r0, [r5, #8]
	ldr r1, _080D4508 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080D4500:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D4508: .4byte 0xFFFFFEFF

	thumb_func_start sub_080D450C
sub_080D450C: @ 0x080D450C
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080D452A
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080D453A
_080D452A:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080D4AF4
	b _080D4590
_080D453A:
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4550
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D4556
_080D4550:
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
_080D4556:
	str r0, [r2, #8]
	movs r0, #0x9e
	adds r0, r0, r2
	mov ip, r0
	ldrb r0, [r0]
	lsls r3, r0, #0x18
	lsrs r0, r3, #0x18
	cmp r0, #7
	bhi _080D457E
	ldr r1, _080D4598 @ =gUnk_08356168
	lsrs r0, r3, #0x19
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x54
	strb r1, [r0]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080D457E:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D4590
	adds r0, r2, #0
	bl sub_080D5514
_080D4590:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D4598: .4byte gUnk_08356168

	thumb_func_start sub_080D459C
sub_080D459C: @ 0x080D459C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r6, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D45E0 @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D45E4
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r5, r1, #0
	cmp r0, r2
	ble _080D4634
	strh r2, [r5]
	b _080D4634
	.align 2, 0
_080D45E0: .4byte 0xFFFFFC00
_080D45E4:
	cmp r3, r0
	bge _080D4608
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D4604 @ =0xFFFFFE00
	adds r5, r1, #0
	cmp r0, r2
	bge _080D4634
	strh r2, [r5]
	b _080D4634
	.align 2, 0
_080D4604: .4byte 0xFFFFFE00
_080D4608:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r5, r0, #0
	cmp r1, #0
	bge _080D4626
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4634
	b _080D4632
_080D4626:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4634
_080D4632:
	strh r6, [r5]
_080D4634:
	ldr r3, [r4, #0x40]
	ldr r2, _080D4670 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r6, #0
	ldrsh r0, [r1, r6]
	lsls r0, r0, #8
	ands r0, r2
	adds r7, r1, #0
	cmp r3, r0
	bge _080D4674
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	bgt _080D46C4
	b _080D46C8
	.align 2, 0
_080D4670: .4byte 0xFFFFFC00
_080D4674:
	cmp r3, r0
	ble _080D46D8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D46AC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080D46A8 @ =0xFFFFFE00
	adds r2, r1, #0
	cmp r0, r3
	blt _080D46C4
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080D4706
	strh r1, [r2]
	b _080D4706
	.align 2, 0
_080D46A8: .4byte 0xFFFFFE00
_080D46AC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x80
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080D46C8
_080D46C4:
	strh r3, [r2]
	b _080D4706
_080D46C8:
	ldr r1, _080D46D4 @ =0xFFFFFE00
	cmp r0, r1
	bge _080D4706
	strh r1, [r2]
	b _080D4706
	.align 2, 0
_080D46D4: .4byte 0xFFFFFE00
_080D46D8:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080D46F6
	adds r0, r3, #0
	adds r0, #0xa0
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4706
	b _080D4702
_080D46F6:
	adds r0, r3, #0
	subs r0, #0xa0
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4706
_080D4702:
	movs r0, #0
	strh r0, [r2]
_080D4706:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D471C
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D4722
_080D471C:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D4722:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080D4778
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r3, #0
	ldrsh r1, [r7, r3]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D474C
	cmp r2, #0x1f
	ble _080D4752
	b _080D4788
_080D474C:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D4788
_080D4752:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D476A
	cmp r1, #0xf
	ble _080D4770
	b _080D4788
_080D476A:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D4788
_080D4770:
	adds r0, r4, #0
	bl sub_080D1A38
	b _080D4788
_080D4778:
	ldrb r0, [r4, #1]
	cmp r0, #0x17
	bhi _080D4788
	movs r0, #0
	strh r0, [r2]
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r5]
_080D4788:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D47EC
	movs r0, #0
	strb r0, [r6]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D47C4
	ldr r2, _080D47B8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D47BC @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D47C0 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D47E2
	.align 2, 0
_080D47B8: .4byte gRngVal
_080D47BC: .4byte 0x00196225
_080D47C0: .4byte 0x3C6EF35F
_080D47C4:
	ldr r2, _080D47F4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D47F8 @ =0x00196225
	muls r0, r1, r0
	ldr r6, _080D47FC @ =0x3C6EF35F
	adds r0, r0, r6
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D47E0
	movs r2, #1
_080D47E0:
	adds r1, r2, #0
_080D47E2:
	cmp r1, #0
	beq _080D47EC
	adds r0, r4, #0
	bl sub_080D1978
_080D47EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080D47F4: .4byte gRngVal
_080D47F8: .4byte 0x00196225
_080D47FC: .4byte 0x3C6EF35F

	thumb_func_start sub_080D4800
sub_080D4800: @ 0x080D4800
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D4822
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4832
	b _080D482E
_080D4822:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4832
_080D482E:
	movs r0, #0
	strh r0, [r1]
_080D4832:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D484E
	adds r0, r2, #0
	adds r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D485E
	b _080D485A
_080D484E:
	adds r0, r2, #0
	subs r0, #0x4c
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D485E
_080D485A:
	movs r0, #0
	strh r0, [r1]
_080D485E:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4874
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D487A
_080D4874:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D487A:
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #0xe
	bne _080D489E
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080D48C4
	movs r0, #3
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	movs r0, #0xf
	strb r0, [r2]
	b _080D48C4
_080D489E:
	cmp r0, #0xf
	bne _080D48C4
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D48C4
	subs r1, #0x12
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	adds r0, r4, #0
	bl sub_080D55CC
_080D48C4:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D48CC
sub_080D48CC: @ 0x080D48CC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	movs r5, #0
	strb r0, [r1]
	ldr r3, [r4, #0x44]
	ldr r1, _080D490C @ =0xFFFFFC00
	ands r3, r1
	adds r0, r4, #0
	adds r0, #0xa2
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #8
	ands r0, r1
	cmp r3, r0
	ble _080D4910
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D495A
	strh r2, [r1]
	b _080D495A
	.align 2, 0
_080D490C: .4byte 0xFFFFFC00
_080D4910:
	cmp r3, r0
	bge _080D4930
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D492C @ =0xFFFFFE00
	cmp r0, r2
	bge _080D495A
	strh r2, [r1]
	b _080D495A
	.align 2, 0
_080D492C: .4byte 0xFFFFFE00
_080D4930:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D494C
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D495A
	b _080D4958
_080D494C:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D495A
_080D4958:
	strh r5, [r1]
_080D495A:
	ldr r3, [r4, #0x40]
	ldr r2, _080D4980 @ =0xFFFFFC00
	ands r3, r2
	adds r1, r4, #0
	adds r1, #0xa0
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r6, r1, #0
	cmp r3, r0
	bge _080D4984
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080D49BC
	.align 2, 0
_080D4980: .4byte 0xFFFFFC00
_080D4984:
	cmp r3, r0
	ble _080D49E0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D49BC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D49B8 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D49B2
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D4A0C
_080D49B2:
	strh r2, [r1]
	b _080D4A0C
	.align 2, 0
_080D49B8: .4byte 0xFFFFFE00
_080D49BC:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D49B2
	ldr r2, _080D49DC @ =0xFFFFFE00
	cmp r0, r2
	bge _080D4A0C
	b _080D49B2
	.align 2, 0
_080D49DC: .4byte 0xFFFFFE00
_080D49E0:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D49FC
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4A0C
	b _080D4A08
_080D49FC:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4A0C
_080D4A08:
	movs r0, #0
	strh r0, [r1]
_080D4A0C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4A22
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080D4A28
_080D4A22:
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
_080D4A28:
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r5, r0, #0
	cmp r1, #0
	bne _080D4A7C
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0
	ldrsh r1, [r6, r0]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D4A52
	cmp r2, #0x1f
	ble _080D4A58
	b _080D4A7C
_080D4A52:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D4A7C
_080D4A58:
	adds r0, r4, #0
	adds r0, #0xa2
	movs r1, #0
	ldrsh r2, [r0, r1]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	subs r1, r2, r0
	cmp r1, #0
	blt _080D4A70
	cmp r1, #0xf
	ble _080D4A76
	b _080D4A7C
_080D4A70:
	subs r0, r0, r2
	cmp r0, #0xf
	bgt _080D4A7C
_080D4A76:
	adds r0, r4, #0
	bl sub_080D1A38
_080D4A7C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D4AE0
	movs r0, #0
	strb r0, [r5]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D4AB8
	ldr r2, _080D4AAC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D4AB0 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D4AB4 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D4AD6
	.align 2, 0
_080D4AAC: .4byte gRngVal
_080D4AB0: .4byte 0x00196225
_080D4AB4: .4byte 0x3C6EF35F
_080D4AB8:
	ldr r2, _080D4AE8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D4AEC @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080D4AF0 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D4AD4
	movs r2, #1
_080D4AD4:
	adds r1, r2, #0
_080D4AD6:
	cmp r1, #0
	beq _080D4AE0
	adds r0, r4, #0
	bl sub_080D1978
_080D4AE0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080D4AE8: .4byte gRngVal
_080D4AEC: .4byte 0x00196225
_080D4AF0: .4byte 0x3C6EF35F

	thumb_func_start sub_080D4AF4
sub_080D4AF4: @ 0x080D4AF4
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080D4B58 @ =sub_080D4B5C
	movs r1, #0x16
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r0, #0x10
	strh r0, [r4, #4]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0x13
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D4B58: .4byte sub_080D4B5C

	thumb_func_start sub_080D4B5C
sub_080D4B5C: @ 0x080D4B5C
	push {r4, r5, lr}
	mov ip, r0
	ldrh r0, [r0, #4]
	mov r1, ip
	movs r2, #4
	ldrsh r4, [r1, r2]
	cmp r4, #0
	beq _080D4B6E
	b _080D4D26
_080D4B6E:
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	mov r5, ip
	ldr r3, [r5, #0x44]
	ldr r2, _080D4BA8 @ =0xFFFFFC00
	ands r3, r2
	adds r1, #4
	movs r5, #0
	ldrsh r0, [r1, r5]
	lsls r0, r0, #8
	ands r0, r2
	adds r5, r1, #0
	cmp r3, r0
	ble _080D4BAC
	subs r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D4BF6
	strh r2, [r1]
	b _080D4BF6
	.align 2, 0
_080D4BA8: .4byte 0xFFFFFC00
_080D4BAC:
	cmp r3, r0
	bge _080D4BCC
	mov r1, ip
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D4BC8 @ =0xFFFFFE00
	cmp r0, r2
	bge _080D4BF6
	strh r2, [r1]
	b _080D4BF6
	.align 2, 0
_080D4BC8: .4byte 0xFFFFFE00
_080D4BCC:
	mov r1, ip
	adds r1, #0x52
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D4BE8
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4BF6
	b _080D4BF4
_080D4BE8:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4BF6
_080D4BF4:
	strh r4, [r1]
_080D4BF6:
	mov r4, ip
	ldr r3, [r4, #0x40]
	ldr r2, _080D4C20 @ =0xFFFFFC00
	ands r3, r2
	mov r1, ip
	adds r1, #0xa0
	movs r4, #0
	ldrsh r0, [r1, r4]
	lsls r0, r0, #8
	ands r0, r2
	adds r4, r1, #0
	cmp r3, r0
	bge _080D4C24
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D4C5C
	.align 2, 0
_080D4C20: .4byte 0xFFFFFC00
_080D4C24:
	cmp r3, r0
	ble _080D4C80
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D4C5C
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D4C58 @ =0xFFFFFE00
	cmp r0, r2
	blt _080D4C54
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	ble _080D4CAC
_080D4C54:
	strh r2, [r1]
	b _080D4CAC
	.align 2, 0
_080D4C58: .4byte 0xFFFFFE00
_080D4C5C:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	cmp r0, r2
	bgt _080D4C54
	ldr r2, _080D4C7C @ =0xFFFFFE00
	cmp r0, r2
	bge _080D4CAC
	b _080D4C54
	.align 2, 0
_080D4C7C: .4byte 0xFFFFFE00
_080D4C80:
	mov r1, ip
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D4C9C
	adds r0, r2, #0
	adds r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D4CAC
	b _080D4CA8
_080D4C9C:
	adds r0, r2, #0
	subs r0, #0xa0
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D4CAC
_080D4CA8:
	movs r0, #0
	strh r0, [r1]
_080D4CAC:
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4CC8
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #8]
	b _080D4CD2
_080D4CC8:
	mov r3, ip
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r3, #8]
_080D4CD2:
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D4D90
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #4
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	movs r3, #0
	ldrsh r1, [r4, r3]
	ldr r0, [r2, #0x40]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D4CFC
	cmp r2, #0x1f
	ble _080D4D02
	b _080D4D90
_080D4CFC:
	subs r0, r0, r1
	cmp r0, #0x1f
	bgt _080D4D90
_080D4D02:
	movs r4, #0
	ldrsh r1, [r5, r4]
	mov r5, ip
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r2, r1, r0
	cmp r2, #0
	blt _080D4D18
	cmp r2, #0xf
	ble _080D4D1E
	b _080D4D90
_080D4D18:
	subs r0, r0, r1
	cmp r0, #0xf
	bgt _080D4D90
_080D4D1E:
	mov r0, ip
	bl sub_080D1A38
	b _080D4D90
_080D4D26:
	subs r0, #1
	mov r1, ip
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D4D90
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	mov r0, ip
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D4D68
	ldr r2, _080D4D5C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D4D60 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _080D4D64 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	eors r1, r0
	ands r1, r0
	b _080D4D86
	.align 2, 0
_080D4D5C: .4byte gRngVal
_080D4D60: .4byte 0x00196225
_080D4D64: .4byte 0x3C6EF35F
_080D4D68:
	ldr r2, _080D4D98 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080D4D9C @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080D4DA0 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080D4D84
	movs r2, #1
_080D4D84:
	adds r1, r2, #0
_080D4D86:
	cmp r1, #0
	beq _080D4D90
	mov r0, ip
	bl sub_080D1978
_080D4D90:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D4D98: .4byte gRngVal
_080D4D9C: .4byte 0x00196225
_080D4DA0: .4byte 0x3C6EF35F

	thumb_func_start sub_080D4DA4
sub_080D4DA4: @ 0x080D4DA4
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
	beq _080D4DC8
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	b _080D4DCE
_080D4DC8:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
_080D4DCE:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #0x10
	mov ip, r0
	movs r4, #0
	ldr r1, _080D4DF0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080D4DF4 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080D4E0C
	.align 2, 0
_080D4DF0: .4byte gUnk_020229D4
_080D4DF4: .4byte gUnk_020229E0
_080D4DF8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D4E14
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D4E0C:
	cmp r0, #0
	bne _080D4DF8
	orrs r2, r3
	str r2, [r1]
_080D4E14:
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
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xc8
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
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
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	@ This function is also in the spawn table, but
	@ I'm still putting it here because of a few xrefs. 

	thumb_func_start sub_080D4E78
sub_080D4E78: @ 0x080D4E78
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D4EAC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D4EB0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D4EB4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080D4EBC
	.align 2, 0
_080D4EAC: .4byte ObjectMain
_080D4EB0: .4byte ObjectDestroy
_080D4EB4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080D4EBC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #7
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
	ldr r0, _080D4F38 @ =sub_0809F840
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
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080D4F3C
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D4F38: .4byte sub_0809F840

	thumb_func_start sub_080D4F3C
sub_080D4F3C: @ 0x080D4F3C
	push {r4, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r2, _080D4F70 @ =sub_080D5618
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D4F5E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D4F5E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #0
	beq _080D4F74
	cmp r2, #1
	beq _080D4F80
	b _080D4F90
	.align 2, 0
_080D4F70: .4byte sub_080D5618
_080D4F74:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb0
	lsls r0, r0, #3
	strh r0, [r1]
	b _080D4F90
_080D4F80:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
_080D4F90:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D4FA4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080D4FA4:
	ldr r2, _080D4FC0 @ =0x000002A1
	ldr r0, _080D4FC4 @ =sub_08072B98
	str r0, [sp]
	ldr r0, _080D4FC8 @ =sub_08084AA0
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_080706A0
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D4FC0: .4byte 0x000002A1
_080D4FC4: .4byte sub_08072B98
_080D4FC8: .4byte sub_08084AA0

	thumb_func_start sub_080D4FCC
sub_080D4FCC: @ 0x080D4FCC
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080D4FFC @ =sub_080D50A0
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
	beq _080D5000
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D5008
	.align 2, 0
_080D4FFC: .4byte sub_080D50A0
_080D5000:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D5008:
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
	ldr r0, _080D5098 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080D5058
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080D5058:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	ldr r2, _080D509C @ =0x12010400
	str r2, [r4, #8]
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080D507C
	orrs r2, r3
_080D507C:
	str r2, [r4, #8]
	movs r2, #0x18
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x28
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D5098: .4byte gUnk_03000510
_080D509C: .4byte 0x12010400

	thumb_func_start sub_080D50A0
sub_080D50A0: @ 0x080D50A0
	push {r4, r5, lr}
	ldr r2, _080D50BC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D50C0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080D50C8
	.align 2, 0
_080D50BC: .4byte gCurTask
_080D50C0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080D50C8:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080D50E2
	ldr r0, [r2]
	bl TaskDestroy
	b _080D51DE
_080D50E2:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080D50F0
	orrs r1, r3
	str r1, [r4, #8]
	b _080D51DE
_080D50F0:
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
	ldr r0, _080D512C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080D5130
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080D5130
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080D51DE
	.align 2, 0
_080D512C: .4byte gUnk_03000510
_080D5130:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D5140
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080D5148
_080D5140:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080D5148:
	str r0, [r4, #8]
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xd
	bne _080D51DE
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080D516C
	ldr r0, _080D5168 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080D51DE
	.align 2, 0
_080D5168: .4byte 0xFFFBFFFF
_080D516C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080D51DE
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080D51DE
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080D51A4
	ldr r2, _080D519C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080D51A0 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080D51A6
	.align 2, 0
_080D519C: .4byte gCurLevelInfo
_080D51A0: .4byte 0x0000065E
_080D51A4:
	movs r1, #0xff
_080D51A6:
	cmp r1, #0xff
	beq _080D51DE
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080D51E4 @ =gUnk_02022EB0
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
	ldr r2, _080D51E8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080D51DE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080D51E4: .4byte gUnk_02022EB0
_080D51E8: .4byte gUnk_02022F50

	thumb_func_start sub_080D51EC
sub_080D51EC: @ 0x080D51EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5214 @ =sub_080D1780
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
_080D5214: .4byte sub_080D1780

	thumb_func_start sub_080D5218
sub_080D5218: @ 0x080D5218
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5248 @ =sub_080D1E10
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080D524C
	movs r0, #0xc
	b _080D524E
	.align 2, 0
_080D5248: .4byte sub_080D1E10
_080D524C:
	movs r0, #0x14
_080D524E:
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D526C
sub_080D526C: @ 0x080D526C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D52BC @ =sub_080D2088
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D52BC: .4byte sub_080D2088

	thumb_func_start sub_080D52C0
sub_080D52C0: @ 0x080D52C0
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080D52F4 @ =sub_080D25DC
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	adds r1, #0x1a
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
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
_080D52F4: .4byte sub_080D25DC

	thumb_func_start sub_080D52F8
sub_080D52F8: @ 0x080D52F8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5348 @ =sub_080D2EA8
	movs r1, #8
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D5348: .4byte sub_080D2EA8

	thumb_func_start sub_080D534C
sub_080D534C: @ 0x080D534C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D538C @ =sub_080D30D0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D538C: .4byte sub_080D30D0

	thumb_func_start sub_080D5390
sub_080D5390: @ 0x080D5390
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r2, _080D53C0 @ =sub_080D3380
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	movs r0, #8
	strh r0, [r4, #4]
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
_080D53C0: .4byte sub_080D3380

	thumb_func_start sub_080D53C4
sub_080D53C4: @ 0x080D53C4
	push {lr}
	adds r3, r0, #0
	movs r0, #0x9e
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #7
	bhi _080D53F0
	ldr r1, _080D5408 @ =gUnk_08356168
	lsrs r0, r2, #0x19
	adds r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_080D53F0:
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080D5402
	adds r0, r3, #0
	bl sub_080D540C
_080D5402:
	pop {r0}
	bx r0
	.align 2, 0
_080D5408: .4byte gUnk_08356168

	thumb_func_start sub_080D540C
sub_080D540C: @ 0x080D540C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5454 @ =sub_080D39C8
	movs r1, #0xb
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D5454: .4byte sub_080D39C8

	thumb_func_start sub_080D5458
sub_080D5458: @ 0x080D5458
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r3, [r0]
	ldr r1, [r2, #0xc]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080D5476
	movs r4, #0x88
	lsls r4, r4, #1
	adds r0, r3, r4
	ldr r0, [r0]
	cmp r0, #0
	bne _080D5486
_080D5476:
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2, #0xc]
	adds r0, r2, #0
	bl sub_080D4AF4
	b _080D549E
_080D5486:
	adds r0, r2, #0
	adds r0, #0x80
	ldrh r0, [r0]
	strh r0, [r2, #4]
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080D549E
	adds r0, r2, #0
	bl sub_080D4144
_080D549E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D54A4
sub_080D54A4: @ 0x080D54A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D54D4 @ =sub_080D43A8
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D54D4: .4byte sub_080D43A8

	thumb_func_start sub_080D54D8
sub_080D54D8: @ 0x080D54D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5510 @ =sub_080D450C
	movs r1, #0x10
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #8
	strh r0, [r4, #4]
	adds r4, #0x9e
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D5510: .4byte sub_080D450C

	thumb_func_start sub_080D5514
sub_080D5514: @ 0x080D5514
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	movs r1, #0x88
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r1, _080D556C @ =gUnk_08356150
	str r1, [r0]
	ldr r2, _080D5570 @ =sub_080D459C
	adds r0, r4, #0
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D556C: .4byte gUnk_08356150
_080D5570: .4byte sub_080D459C

	thumb_func_start sub_080D5574
sub_080D5574: @ 0x080D5574
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080D55C8 @ =sub_080D4800
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	movs r1, #0x10
	rsbs r1, r1, #0
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E2B0
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D55C8: .4byte sub_080D4800

	thumb_func_start sub_080D55CC
sub_080D55CC: @ 0x080D55CC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D5614 @ =sub_080D48CC
	movs r1, #0x11
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D5614: .4byte sub_080D48CC

	thumb_func_start sub_080D5618
sub_080D5618: @ 0x080D5618
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

