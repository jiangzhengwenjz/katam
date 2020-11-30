	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateFlameColumn
CreateFlameColumn: @ 0x0811FCF0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0811FD24 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0811FD28 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xc0
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811FD2C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0811FD34
	.align 2, 0
_0811FD24: .4byte ObjectMain
_0811FD28: .4byte ObjectDestroy
_0811FD2C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0811FD34:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r3, [r4, #8]
	ldr r0, _0811FD80 @ =0x00018940
	orrs r3, r0
	str r3, [r4, #8]
	ldr r2, [r4, #0x68]
	movs r0, #8
	rsbs r0, r0, #0
	ands r2, r0
	movs r0, #3
	orrs r2, r0
	ldr r0, [r4, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r5, #1
	orrs r0, r5
	str r0, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #0x68]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _0811FD84
	orrs r3, r5
	str r3, [r4, #8]
	b _0811FDB0
	.align 2, 0
_0811FD80: .4byte 0x00018940
_0811FD84:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0811FD96
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #7
	strb r0, [r1]
	b _0811FDB0
_0811FD96:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0811FDB0
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #7
	strb r0, [r1]
	ldr r0, [r4, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #0x18]
_0811FDB0:
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #4
	bl sub_0803E2B0
	ldr r2, _0811FDEC @ =gUnk_08351648
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
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0811FDEC: .4byte gUnk_08351648

	thumb_func_start sub_0811FDF0
sub_0811FDF0: @ 0x0811FDF0
	push {r4, lr}
	adds r3, r0, #0
	adds r4, r3, #0
	adds r0, #0xb4
	movs r2, #0
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #6
	strb r2, [r0]
	movs r0, #0xbf
	adds r0, r0, r3
	mov ip, r0
	strb r2, [r0]
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0811FE2C
	ldr r0, [r3, #8]
	orrs r0, r2
	str r0, [r3, #8]
	b _0811FE54
_0811FE2C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0811FE3C
	movs r0, #6
	mov r1, ip
	strb r0, [r1]
	b _0811FE54
_0811FE3C:
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0811FE54
	movs r0, #6
	mov r1, ip
	strb r0, [r1]
	ldr r0, [r3, #0x18]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r3, #0x18]
_0811FE54:
	ldr r0, [r3, #0x40]
	asrs r0, r0, #0xc
	adds r1, r4, #0
	adds r1, #0xba
	strh r0, [r1]
	ldr r0, [r3, #0x44]
	asrs r0, r0, #0xc
	strh r0, [r1]
	ldr r0, _0811FE70 @ =sub_0811FE74
	str r0, [r3, #0x78]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811FE70: .4byte sub_0811FE74

	thumb_func_start sub_0811FE74
sub_0811FE74: @ 0x0811FE74
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r6, ip
	mov r5, ip
	adds r5, #0xb6
	adds r0, #0xb0
	ldr r1, [r0]
	ldrh r0, [r5]
	ldrh r2, [r1, #0x12]
	cmp r0, r2
	bhi _0811FE8C
	b _0812002A
_0811FE8C:
	mov r2, ip
	adds r2, #0xb4
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0811FEAE
	mov r3, ip
	adds r3, #0xb8
	ldrh r0, [r3]
	ldrh r1, [r1, #0x16]
	cmp r0, r1
	bls _0811FED8
	movs r0, #0
	movs r1, #0
	strh r1, [r2]
	adds r2, #0xa
	b _0811FED0
_0811FEAE:
	movs r3, #0
	ldrsh r0, [r2, r3]
	ldrh r4, [r1, #0x14]
	cmp r0, r4
	blt _0811FEE4
	mov r3, ip
	adds r3, #0xb8
	ldrh r0, [r3]
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	bls _0811FED8
	subs r0, r4, #1
	movs r1, #0
	strh r0, [r2]
	mov r2, ip
	adds r2, #0xbe
	movs r0, #1
_0811FED0:
	strb r0, [r2]
	ldr r0, _0811FEE0 @ =0x00000FFF
	strh r0, [r5]
	strh r1, [r3]
_0811FED8:
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _0812002A
	.align 2, 0
_0811FEE0: .4byte 0x00000FFF
_0811FEE4:
	mov r0, ip
	adds r0, #0xbe
	ldrb r0, [r0]
	cmp r0, #0
	beq _0811FF4A
	mov r1, ip
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0811FF14
	ldr r2, _0811FF0C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811FF10 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	b _0811FF16
	.align 2, 0
_0811FF0C: .4byte gCurLevelInfo
_0811FF10: .4byte 0x0000065E
_0811FF14:
	movs r0, #0xff
_0811FF16:
	cmp r0, #0xff
	beq _0811FF40
	lsls r3, r0, #3
	ldr r1, _0811FF74 @ =gUnk_02022F40
	adds r1, r0, r1
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _0811FF78 @ =gUnk_02022EC0
	lsls r1, r0, #2
	adds r1, r1, r2
	mov r3, ip
	str r3, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_0811FF40:
	adds r0, r6, #0
	adds r0, #0xbe
	ldrb r0, [r0]
	cmp r0, #0
	bne _0811FFBC
_0811FF4A:
	adds r1, r6, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	adds r0, #1
	adds r2, r0, #0
	strh r0, [r1]
	adds r3, r2, #0
	mov r1, ip
	adds r1, #0x83
	strb r2, [r1]
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	cmp r0, #4
	beq _0811FF98
	cmp r0, #4
	ble _0811FF7C
	cmp r0, #8
	beq _0811FFAE
	b _08120022
	.align 2, 0
_0811FF74: .4byte gUnk_02022F40
_0811FF78: .4byte gUnk_02022EC0
_0811FF7C:
	cmp r0, #2
	bgt _08120022
	cmp r0, #1
	blt _08120022
	mov r0, ip
	adds r0, #0x38
	ldrb r1, [r0]
	subs r1, #0xe
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x3a
	ldrb r0, [r1]
	adds r0, #7
	b _08120020
_0811FF98:
	adds r0, r3, #6
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x39
	ldrb r0, [r1]
	subs r0, #0xe
	strb r0, [r1]
	adds r1, #2
	ldrb r0, [r1]
	adds r0, #7
	b _08120020
_0811FFAE:
	adds r0, r3, #6
	strb r0, [r1]
	mov r1, ip
	adds r1, #0x3b
	ldrb r0, [r1]
	adds r0, #7
	b _08120020
_0811FFBC:
	adds r1, r6, #0
	adds r1, #0xb4
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	adds r1, r0, #0
	adds r0, r1, #2
	mov r2, ip
	adds r2, #0x83
	strb r0, [r2]
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #0x22]
	cmp r0, #4
	beq _0811FFFE
	cmp r0, #4
	ble _0811FFE6
	cmp r0, #8
	beq _08120012
	b _08120022
_0811FFE6:
	cmp r0, #2
	bgt _08120022
	cmp r0, #1
	blt _08120022
	mov r0, ip
	adds r0, #0x38
	ldrb r1, [r0]
	adds r1, #0xe
	strb r1, [r0]
	mov r1, ip
	adds r1, #0x3a
	b _0812001C
_0811FFFE:
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x39
	ldrb r0, [r1]
	adds r0, #0xe
	strb r0, [r1]
	adds r1, #2
	b _0812001C
_08120012:
	adds r0, r1, #0
	adds r0, #8
	strb r0, [r2]
	mov r1, ip
	adds r1, #0x3b
_0812001C:
	ldrb r0, [r1]
	subs r0, #7
_08120020:
	strb r0, [r1]
_08120022:
	adds r1, r6, #0
	adds r1, #0xb6
	movs r0, #0
	strh r0, [r1]
_0812002A:
	adds r1, r6, #0
	adds r1, #0xb6
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #4
	orrs r0, r1
	mov r2, ip
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
