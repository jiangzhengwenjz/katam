	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateMirra
CreateMirra: @ 0x080B0F90
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B0FC4 @ =ObjectMain
	ldr r2, _080B0FC8 @ =0x00003064
	ldr r1, _080B0FCC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B0FD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B0FD8
	.align 2, 0
_080B0FC4: .4byte ObjectMain
_080B0FC8: .4byte 0x00003064
_080B0FCC: .4byte ObjectDestroy
_080B0FD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B0FD8:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0xa0
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r0, #0
	str r0, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	beq _080B1024
	subs r0, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, _080B103C @ =gUnk_020229D8
	ldr r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080B1024
	adds r0, r4, #0
	bl sub_080B11C0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080B1024:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B1040
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B1048
	.align 2, 0
_080B103C: .4byte gUnk_020229D8
_080B1040:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B1048:
	str r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #0xd
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xf
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080B10A4 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
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
	str r0, [r4, #0x7c]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B10A4: .4byte gUnk_08351648

	thumb_func_start sub_080B10A8
sub_080B10A8: @ 0x080B10A8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_08070504
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080B1158
	movs r5, #0
	ldr r0, _080B10C8 @ =gUnk_0203AD44
	adds r6, r0, #0
	b _080B1166
	.align 2, 0
_080B10C8: .4byte gUnk_0203AD44
_080B10CC:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r1, r5, #0
	muls r1, r0, r1
	ldr r0, _080B1100 @ =gUnk_02020EE0
	adds r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080B1160
	movs r1, #4
	ldrsh r3, [r4, r1]
	mov r0, ip
	ldr r2, [r0, #0x40]
	ldr r0, [r4, #0x40]
	subs r1, r2, r0
	cmp r1, #0
	blt _080B1104
	cmp r1, r3
	blt _080B110A
	b _080B1160
	.align 2, 0
_080B1100: .4byte gUnk_02020EE0
_080B1104:
	subs r0, r0, r2
	cmp r0, r3
	bge _080B1160
_080B110A:
	movs r1, #4
	ldrsh r3, [r4, r1]
	mov r0, ip
	ldr r2, [r0, #0x44]
	ldr r0, [r4, #0x44]
	subs r1, r2, r0
	cmp r1, #0
	blt _080B1120
	cmp r1, r3
	blt _080B1126
	b _080B1160
_080B1120:
	subs r0, r0, r2
	cmp r0, r3
	bge _080B1160
_080B1126:
	mov r1, ip
	ldr r0, [r1, #0xc]
	movs r1, #0x80
	ands r0, r1
	cmp r0, #0
	bne _080B1158
	mov r0, ip
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x61
	beq _080B1158
	cmp r0, #0xd
	beq _080B1158
	cmp r0, #0x20
	beq _080B1158
	cmp r0, #0x14
	beq _080B1158
	cmp r0, #0x15
	beq _080B1158
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B116C
_080B1158:
	adds r0, r4, #0
	bl sub_080B1218
	b _080B116C
_080B1160:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080B1166:
	ldrb r0, [r6]
	cmp r5, r0
	blo _080B10CC
_080B116C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B1174
sub_080B1174: @ 0x080B1174
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B11A8 @ =sub_080B10A8
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080B11AC
	cmp r0, #1
	beq _080B11B2
	movs r0, #0x80
	lsls r0, r0, #8
	b _080B11B6
	.align 2, 0
_080B11A8: .4byte sub_080B10A8
_080B11AC:
	movs r0, #0xc0
	lsls r0, r0, #6
	b _080B11B6
_080B11B2:
	movs r0, #0xa0
	lsls r0, r0, #7
_080B11B6:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B11C0
sub_080B11C0: @ 0x080B11C0
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r5, r3, #0
	adds r5, #0xb0
	ldr r1, [r5]
	ldrh r0, [r1, #0x14]
	cmp r0, #0
	beq _080B11DE
	ldr r2, _080B1214 @ =gUnk_020229D8
	subs r0, #1
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2]
	orrs r0, r1
	str r0, [r2]
_080B11DE:
	adds r0, r3, #0
	adds r0, #0x56
	ldrb r4, [r0]
	ldr r0, [r5]
	ldrh r1, [r0, #6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x14
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldrh r2, [r0, #8]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x14
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B1214: .4byte gUnk_020229D8

	thumb_func_start sub_080B1218
sub_080B1218: @ 0x080B1218
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B1250 @ =sub_080B1254
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B1250: .4byte sub_080B1254

	thumb_func_start sub_080B1254
sub_080B1254: @ 0x080B1254
	push {lr}
	adds r1, r0, #0
	ldr r0, [r1, #8]
	movs r2, #2
	ands r0, r2
	cmp r0, #0
	beq _080B1268
	adds r0, r1, #0
	adds r0, #0x83
	strb r2, [r0]
_080B1268:
	pop {r0}
	bx r0
