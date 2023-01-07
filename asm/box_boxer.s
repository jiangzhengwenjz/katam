	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080C885C
sub_080C885C: @ 0x080C885C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C8914
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C889C @ =gRngVal
	cmp r0, #0
	beq _080C88A8
	ldr r1, [r3]
	ldr r0, _080C88A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C88A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C8890
	movs r2, #1
_080C8890:
	cmp r2, #0
	beq _080C88A8
	adds r0, r4, #0
	bl sub_080C7504
	b _080C8914
	.align 2, 0
_080C889C: .4byte gRngVal
_080C88A0: .4byte 0x00196225
_080C88A4: .4byte 0x3C6EF35F
_080C88A8:
	ldr r1, [r3]
	ldr r0, _080C88D0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C88D4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C88C2
	movs r2, #1
_080C88C2:
	cmp r2, #0
	beq _080C88D8
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C8914
	.align 2, 0
_080C88D0: .4byte 0x00196225
_080C88D4: .4byte 0x3C6EF35F
_080C88D8:
	ldr r2, _080C8900 @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C8904
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C890C
	.align 2, 0
_080C8900: .4byte sub_080C776C
_080C8904:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C890C:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C8914:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C891C
sub_080C891C: @ 0x080C891C
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C89D8
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	ldr r3, _080C8960 @ =gRngVal
	cmp r0, #0
	beq _080C896C
	ldr r1, [r3]
	ldr r0, _080C8964 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C8968 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080C8952
	movs r2, #1
_080C8952:
	cmp r2, #0
	beq _080C896C
	adds r0, r4, #0
	bl sub_080C7504
	b _080C89D8
	.align 2, 0
_080C8960: .4byte gRngVal
_080C8964: .4byte 0x00196225
_080C8968: .4byte 0x3C6EF35F
_080C896C:
	ldr r1, [r3]
	ldr r0, _080C8994 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C8998 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080C8986
	movs r2, #1
_080C8986:
	cmp r2, #0
	beq _080C899C
	adds r0, r4, #0
	bl sub_080C75D0
	b _080C89D8
	.align 2, 0
_080C8994: .4byte 0x00196225
_080C8998: .4byte 0x3C6EF35F
_080C899C:
	ldr r2, _080C89C4 @ =sub_080C776C
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C89C8
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C89D0
	.align 2, 0
_080C89C4: .4byte sub_080C776C
_080C89C8:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C89D0:
	str r0, [r4, #8]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
_080C89D8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C89E0
sub_080C89E0: @ 0x080C89E0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C8A10 @ =sub_080C8AB8
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
	beq _080C8A14
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8A1C
	.align 2, 0
_080C8A10: .4byte sub_080C8AB8
_080C8A14:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8A1C:
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
	ldr r0, _080C8AB0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C8A6C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C8A6C:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080C8AB4 @ =0x12010400
	str r2, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C8A90
	orrs r2, r3
_080C8A90:
	str r2, [r4, #8]
	movs r1, #0xd
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xd
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C8AB0: .4byte gUnk_03000510
_080C8AB4: .4byte 0x12010400

	thumb_func_start sub_080C8AB8
sub_080C8AB8: @ 0x080C8AB8
	push {r4, lr}
	ldr r2, _080C8AD4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8AD8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8AE0
	.align 2, 0
_080C8AD4: .4byte gCurTask
_080C8AD8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8AE0:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov ip, r0
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080C8AFC
	ldr r0, [r2]
	bl TaskDestroy
	b _080C8C2A
_080C8AFC:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C8B0C
	orrs r1, r3
	str r1, [r4, #8]
	b _080C8C2A
_080C8B0C:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	mov r0, ip
	adds r0, #0x56
	ldrb r0, [r0]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080C8B4C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r3]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C8B50
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	ands r0, r1
	cmp r0, #0
	bne _080C8B50
	adds r0, r4, #0
	bl sub_0803D9A8
	b _080C8C2A
	.align 2, 0
_080C8B4C: .4byte gUnk_03000510
_080C8B50:
	mov r2, ip
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C8B62
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080C8B6A
_080C8B62:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8B6A:
	str r0, [r4, #8]
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080C8C18
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080C8B9C
	ldr r0, _080C8B98 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	b _080C8C2A
	.align 2, 0
_080C8B98: .4byte 0xFFFBFFFF
_080C8B9C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C8C2A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080C8C2A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080C8BD4
	ldr r2, _080C8BCC @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C8BD0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C8BD6
	.align 2, 0
_080C8BCC: .4byte gCurLevelInfo
_080C8BD0: .4byte 0x0000065E
_080C8BD4:
	movs r1, #0xff
_080C8BD6:
	cmp r1, #0xff
	beq _080C8C2A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C8C10 @ =gUnk_02022EB0
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
	ldr r2, _080C8C14 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
	b _080C8C2A
	.align 2, 0
_080C8C10: .4byte gUnk_02022EB0
_080C8C14: .4byte gUnk_02022F50
_080C8C18:
	mov r1, ip
	ldr r0, [r1, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #0x68]
_080C8C2A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C8C30
sub_080C8C30: @ 0x080C8C30
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
	beq _080C8C54
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x20
	b _080C8C5A
_080C8C54:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x20
_080C8C5A:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080C8C78 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080C8C7C @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080C8C94
	.align 2, 0
_080C8C78: .4byte gUnk_020229D4
_080C8C7C: .4byte gUnk_020229E0
_080C8C80:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080C8C9C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080C8C94:
	cmp r0, #0
	bne _080C8C80
	orrs r2, r3
	str r2, [r1]
_080C8C9C:
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
	movs r0, #0xb4
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

	thumb_func_start CreateBoxBoxerEnergyBall
CreateBoxBoxerEnergyBall: @ 0x080C8D00
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C8D34 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C8D38 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8D3C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C8D44
	.align 2, 0
_080C8D34: .4byte ObjectMain
_080C8D38: .4byte ObjectDestroy
_080C8D3C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C8D44:
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
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080C8DAC @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xa
	bl sub_0803E2B0
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080C8FA4
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C8DAC: .4byte sub_0809F840

	thumb_func_start sub_080C8DB0
sub_080C8DB0: @ 0x080C8DB0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080C8DE0 @ =sub_080C8EA4
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
	beq _080C8DE4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8DEC
	.align 2, 0
_080C8DE0: .4byte sub_080C8EA4
_080C8DE4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8DEC:
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
	ldr r0, _080C8E74 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C8E3C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080C8E3C:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, _080C8E78 @ =0x12000400
	str r0, [r4, #8]
	ldr r0, _080C8E7C @ =0x20000043
	str r0, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x64
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080C8E80
	ldr r0, [r4, #8]
	orrs r0, r3
	b _080C8E88
	.align 2, 0
_080C8E74: .4byte gUnk_03000510
_080C8E78: .4byte 0x12000400
_080C8E7C: .4byte 0x20000043
_080C8E80:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C8E88:
	str r0, [r4, #8]
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0x10
	movs r3, #0x30
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C8EA4
sub_080C8EA4: @ 0x080C8EA4
	push {r4, r5, r6, lr}
	ldr r0, _080C8EC0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C8EC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C8ECC
	.align 2, 0
_080C8EC0: .4byte gCurTask
_080C8EC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C8ECC:
	adds r4, r0, #0
	ldr r2, [r4, #0x70]
	adds r5, r4, #0
	adds r5, #0x60
	ldrh r3, [r5]
	ldr r6, _080C8F28 @ =0x0000FFFF
	cmp r3, r6
	beq _080C8EEE
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080C8EEE
	adds r0, r6, #0
	orrs r0, r3
	strh r0, [r5]
_080C8EEE:
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r5, r4, #0
	adds r5, #0x56
	strb r0, [r5]
	ldr r0, [r2, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r2, #0x44]
	str r0, [r4, #0x44]
	adds r0, r4, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080C8F96
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xa
	ble _080C8F2C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080C8F96
	.align 2, 0
_080C8F28: .4byte 0x0000FFFF
_080C8F2C:
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _080C8F96
	ldrb r0, [r5]
	cmp r0, #0xff
	beq _080C8F5C
	ldr r2, _080C8F54 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080C8F58 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080C8F5E
	.align 2, 0
_080C8F54: .4byte gCurLevelInfo
_080C8F58: .4byte 0x0000065E
_080C8F5C:
	movs r1, #0xff
_080C8F5E:
	cmp r1, #0xff
	beq _080C8F96
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080C8F9C @ =gUnk_02022EB0
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
	ldr r2, _080C8FA0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080C8F96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C8F9C: .4byte gUnk_02022EB0
_080C8FA0: .4byte gUnk_02022F50

	thumb_func_start sub_080C8FA4
sub_080C8FA4: @ 0x080C8FA4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C8FD4 @ =sub_080C9274
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C8FC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080C8FC4:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C8FD8
	cmp r0, #1
	beq _080C8FE2
	b _080C8FEC
	.align 2, 0
_080C8FD4: .4byte sub_080C9274
_080C8FD8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080C8FEA
_080C8FE2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #3
_080C8FEA:
	strh r0, [r1]
_080C8FEC:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C9000
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080C9000:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9008
sub_080C9008: @ 0x080C9008
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9028 @ =sub_080C72CC
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
_080C9028: .4byte sub_080C72CC

	thumb_func_start sub_080C902C
sub_080C902C: @ 0x080C902C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9064 @ =sub_080C9084
	movs r1, #2
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9068
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9070
	.align 2, 0
_080C9064: .4byte sub_080C9084
_080C9068:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9070:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9084
sub_080C9084: @ 0x080C9084
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C9098
	adds r0, r2, #0
	bl sub_080C909C
_080C9098:
	pop {r0}
	bx r0

	thumb_func_start sub_080C909C
sub_080C909C: @ 0x080C909C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C90D8 @ =sub_080C7980
	movs r1, #3
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C90D2
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C90D2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C90D8: .4byte sub_080C7980

	thumb_func_start sub_080C90DC
sub_080C90DC: @ 0x080C90DC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9114 @ =sub_080C9134
	movs r1, #0xf
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C9118
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C9120
	.align 2, 0
_080C9114: .4byte sub_080C9134
_080C9118:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C9120:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9134
sub_080C9134: @ 0x080C9134
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C9148
	adds r0, r2, #0
	bl sub_080C914C
_080C9148:
	pop {r0}
	bx r0

	thumb_func_start sub_080C914C
sub_080C914C: @ 0x080C914C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9168 @ =sub_080C8320
	movs r1, #0x10
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C916C
	movs r0, #0x10
	b _080C916E
	.align 2, 0
_080C9168: .4byte sub_080C8320
_080C916C:
	movs r0, #0x2d
_080C916E:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9178
sub_080C9178: @ 0x080C9178
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9194 @ =sub_080C83D0
	movs r1, #0x11
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
_080C9194: .4byte sub_080C83D0

	thumb_func_start sub_080C9198
sub_080C9198: @ 0x080C9198
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C91B4 @ =sub_080C8488
	movs r1, #0x12
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
_080C91B4: .4byte sub_080C8488

	thumb_func_start sub_080C91B8
sub_080C91B8: @ 0x080C91B8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C91F0 @ =sub_080C9280
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	bl sub_0803D368
	adds r2, r4, #0
	adds r2, #0xac
	str r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r2]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C91F4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C91FC
	.align 2, 0
_080C91F0: .4byte sub_080C9280
_080C91F4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C91FC:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C9210
sub_080C9210: @ 0x080C9210
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C922C @ =sub_080C8234
	movs r1, #9
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
_080C922C: .4byte sub_080C8234

	thumb_func_start sub_080C9230
sub_080C9230: @ 0x080C9230
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C924C @ =sub_080C885C
	movs r1, #0xe
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
_080C924C: .4byte sub_080C885C

	thumb_func_start sub_080C9250
sub_080C9250: @ 0x080C9250
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C9270 @ =sub_080C891C
	movs r1, #0x13
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x10
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C9270: .4byte sub_080C891C

	thumb_func_start sub_080C9274
sub_080C9274: @ 0x080C9274
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080C9280
sub_080C9280: @ 0x080C9280
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C9294
	adds r0, r2, #0
	bl sub_080C9298
_080C9294:
	pop {r0}
	bx r0

	thumb_func_start sub_080C9298
sub_080C9298: @ 0x080C9298
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C92B4 @ =sub_080C7F64
	movs r1, #8
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
_080C92B4: .4byte sub_080C7F64
