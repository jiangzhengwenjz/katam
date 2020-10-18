	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateMirrorDoor
CreateMirrorDoor: @ 0x08119CE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r0, #0
	str r0, [sp, #8]
	ldr r0, _08119D28 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _08119D2C @ =sub_0811A6A0
	str r1, [sp]
	movs r1, #0xc4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08119D30
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08119D38
	.align 2, 0
_08119D28: .4byte ObjectMain
_08119D2C: .4byte sub_0811A6A0
_08119D30:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08119D38:
	adds r5, r0, #0
	str r5, [sp, #4]
	mov r1, sb
	adds r2, r4, #0
	bl InitObject
	adds r1, r5, #0
	adds r1, #0xb4
	str r1, [sp, #0xc]
	movs r1, #0
	ldr r2, [sp, #0xc]
	str r1, [r2]
	adds r0, r5, #0
	adds r0, #0xb8
	str r1, [r0]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	adds r4, r5, #0
	adds r4, #0xbc
	movs r3, #0
	mov sl, r3
	strh r0, [r4]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #0xc
	movs r2, #0xbe
	adds r2, r2, r5
	mov r8, r2
	strh r0, [r2]
	adds r7, r5, #0
	adds r7, #0xc0
	strh r1, [r7]
	ldr r0, [r5, #8]
	movs r1, #0xd0
	lsls r1, r1, #2
	orrs r0, r1
	movs r3, #0x80
	lsls r3, r3, #7
	orrs r0, r3
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x44]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	str r0, [r5, #0x44]
	mov r3, sb
	ldrb r0, [r3, #0xe]
	adds r6, r5, #0
	adds r6, #0x83
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08119DAE
	mov r0, sl
	strb r0, [r6]
_08119DAE:
	mov r1, sb
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	blt _08119E98
	cmp r0, #1
	ble _08119DC0
	cmp r0, #2
	beq _08119E32
	b _08119E98
_08119DC0:
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4]
	mov r3, r8
	ldrh r2, [r3]
	bl sub_080023E4
	ldr r1, _08119DF8 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08119E14
	movs r2, #1
	str r2, [sp, #8]
	adds r0, r5, #0
	bl sub_0811A708
	cmp r0, #0
	beq _08119DFC
	movs r0, #2
	strb r0, [r6]
	b _08119E00
	.align 2, 0
_08119DF8: .4byte gUnk_082D88B8
_08119DFC:
	mov r3, sl
	strb r3, [r6]
_08119E00:
	adds r0, r5, #0
	bl sub_08119F88
	ldr r0, [sp, #4]
	adds r0, #0xb4
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r1, #0x20]
	b _08119E98
_08119E14:
	movs r0, #0
	str r0, [sp, #8]
	mov r1, sb
	ldrb r0, [r1, #0xe]
	cmp r0, #1
	bne _08119E2C
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r5, #8]
	b _08119E94
_08119E2C:
	movs r3, #1
	strb r3, [r6]
	b _08119E98
_08119E32:
	adds r0, r5, #0
	bl sub_08119F88
	mov r0, sb
	ldrb r1, [r0, #4]
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _08119E88
	movs r1, #0
	str r1, [sp, #8]
	ldrh r0, [r7]
	movs r2, #1
	mov sl, r2
	mov r3, sl
	orrs r0, r3
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4]
	mov r3, r8
	ldrh r2, [r3]
	movs r3, #0
	bl sub_0800255C
	adds r1, r5, #0
	adds r1, #0xc2
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	ldr r2, [r0]
	ldrh r0, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
	mov r0, sl
	strb r0, [r6]
	b _08119E98
_08119E88:
	movs r1, #1
	str r1, [sp, #8]
	ldrh r1, [r7]
	ldr r0, _08119F78 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r7]
_08119E94:
	mov r2, sl
	strb r2, [r6]
_08119E98:
	mov r3, sb
	ldrh r1, [r3, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08119ED2
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #7
	bl sub_08092944
	ldr r2, [sp, #4]
	adds r2, #0xb8
	str r0, [r2]
	movs r1, #0xf0
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08119ED2
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0, #6]
_08119ED2:
	ldr r0, _08119F7C @ =0x06012000
	str r0, [r5, #0x10]
	movs r3, #0
	movs r0, #0xd0
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	ldr r0, _08119F80 @ =gUnk_08351648
	mov r8, r0
	adds r7, r5, #0
	adds r7, #0x82
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	mov r2, r8
	adds r2, #0x14
	adds r0, r0, r2
	adds r6, r5, #0
	adds r6, #0x83
	ldrb r1, [r6]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r5, #0x1c]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r6]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	adds r1, r5, #0
	adds r1, #0x2a
	strb r0, [r1]
	strh r3, [r5, #0x26]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	strh r0, [r5, #0x20]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r5, #0x22]
	movs r0, #0xc2
	lsls r0, r0, #0xc
	str r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x10
	bl sub_08155128
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08119F84 @ =gUnk_08351658
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08119F78: .4byte 0x0000FFFE
_08119F7C: .4byte 0x06012000
_08119F80: .4byte gUnk_08351648
_08119F84: .4byte gUnk_08351658

	thumb_func_start sub_08119F88
sub_08119F88: @ 0x08119F88
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrb r1, [r1]
	adds r2, r4, #0
	adds r2, #0xbe
	ldrb r2, [r2]
	bl sub_080025AC
	adds r3, r0, #0
	ldr r1, _08119FDC @ =0xFFFFFC2C
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _08119FB6
	movs r5, #1
_08119FB6:
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r3, #8]
	ldrb r2, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	bl sub_08002BA8
	cmp r0, #0
	beq _0811A020
	cmp r5, #0
	beq _08119FE0
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #8
	b _0811A008
	.align 2, 0
_08119FDC: .4byte 0xFFFFFC2C
_08119FE0:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08119FFE
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #9
	b _0811A008
_08119FFE:
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
_0811A008:
	bl sub_08092944
	adds r1, r4, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r3, r1, #0
	adds r2, r4, #0
	adds r2, #0xc0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	b _0811A06E
_0811A020:
	cmp r5, #0
	beq _0811A030
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #4
	b _0811A058
_0811A030:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811A04E
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xa
	b _0811A058
_0811A04E:
	movs r2, #0xa5
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #3
_0811A058:
	bl sub_08092944
	adds r1, r4, #0
	adds r1, #0xb4
	str r0, [r1]
	adds r3, r1, #0
	adds r2, r4, #0
	adds r2, #0xc0
	ldrh r1, [r2]
	ldr r0, _0811A080 @ =0x0000FFFD
	ands r0, r1
_0811A06E:
	strh r0, [r2]
	ldr r1, [r3]
	movs r0, #0xf0
	lsls r0, r0, #3
	strh r0, [r1, #0x20]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0811A080: .4byte 0x0000FFFD

	thumb_func_start sub_0811A084
sub_0811A084: @ 0x0811A084
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0xc0
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0811A152
	adds r6, r4, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r5, r4, #0
	adds r5, #0xbc
	ldrh r1, [r5]
	adds r7, r4, #0
	adds r7, #0xbe
	ldrh r2, [r7]
	bl sub_080023E4
	ldr r1, _0811A114 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0811A152
	movs r0, #0
	mov r8, r0
	ldrb r0, [r6]
	ldrb r1, [r5]
	ldrb r2, [r7]
	bl sub_080025AC
	adds r3, r0, #0
	ldr r1, _0811A118 @ =0xFFFFFC2C
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #9
	bhi _0811A0E6
	movs r0, #1
	mov r8, r0
_0811A0E6:
	adds r0, r4, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r3, #8]
	ldrb r2, [r3, #0xa]
	ldrb r3, [r3, #0xb]
	bl sub_08002BA8
	cmp r0, #0
	beq _0811A152
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r0, [r0]
	adds r2, r0, #0
	adds r2, #0xc
	mov r1, r8
	cmp r1, #0
	beq _0811A11C
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r2, #0xc]
	movs r0, #8
	b _0811A140
	.align 2, 0
_0811A114: .4byte gUnk_082D88B8
_0811A118: .4byte 0xFFFFFC2C
_0811A11C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811A138
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r2, #0xc]
	movs r0, #9
	b _0811A140
_0811A138:
	movs r0, #0xa5
	lsls r0, r0, #2
	strh r0, [r2, #0xc]
	movs r0, #2
_0811A140:
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r2, r4, #0
	adds r2, #0xc0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_0811A152:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0811A15C
sub_0811A15C: @ 0x0811A15C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0811A084
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0xbe
	ldrh r2, [r2]
	bl sub_080023E4
	ldr r1, _0811A224 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0811A216
	adds r3, r4, #0
	adds r3, #0x10
	adds r5, r4, #0
	adds r5, #0x83
	movs r0, #1
	strb r0, [r5]
	ldr r2, _0811A228 @ =gUnk_08351648
	movs r0, #0x82
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x14
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	strh r0, [r3, #0xc]
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r5]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A1E6
	ldrh r0, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0811A1E6:
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A1FC
	ldrh r0, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0811A1FC:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r0, #0x38]
	ldr r2, _0811A22C @ =0xFFFFF000
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldr r0, _0811A230 @ =sub_0811A234
	str r0, [r4, #0x78]
_0811A216:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0811A224: .4byte gUnk_082D88B8
_0811A228: .4byte gUnk_08351648
_0811A22C: .4byte 0xFFFFF000
_0811A230: .4byte sub_0811A234

	thumb_func_start sub_0811A234
sub_0811A234: @ 0x0811A234
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	mov sb, r4
	adds r6, r4, #0
	adds r6, #0x56
	ldrb r0, [r6]
	adds r5, r4, #0
	adds r5, #0xbc
	ldrh r1, [r5]
	movs r2, #0xbe
	adds r2, r2, r4
	mov r8, r2
	ldrh r2, [r2]
	bl sub_080023E4
	ldr r1, _0811A2A0 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0811A33A
	adds r7, r4, #0
	adds r7, #0x10
	ldrb r0, [r6]
	ldrb r1, [r5]
	mov r3, r8
	ldrb r2, [r3]
	bl sub_080025AC
	ldr r2, _0811A2A4 @ =0xFFFFFC2C
	adds r1, r2, #0
	ldrh r0, [r0, #8]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
	cmp r1, #9
	bhi _0811A290
	movs r2, #1
_0811A290:
	cmp r2, #0
	beq _0811A2A8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	adds r3, r1, #0
	b _0811A2B0
	.align 2, 0
_0811A2A0: .4byte gUnk_082D88B8
_0811A2A4: .4byte 0xFFFFFC2C
_0811A2A8:
	adds r0, r4, #0
	adds r0, #0x83
	strb r2, [r0]
	adds r3, r0, #0
_0811A2B0:
	ldr r2, _0811A300 @ =gUnk_08351648
	movs r0, #0x82
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x14
	adds r0, r0, r2
	ldrb r1, [r3]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r7, #0xc]
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r3]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	mov r0, sb
	adds r0, #0xb4
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A308
	ldrh r1, [r2, #6]
	ldr r0, _0811A304 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #6]
	b _0811A30E
	.align 2, 0
_0811A300: .4byte gUnk_08351648
_0811A304: .4byte 0x0000FBFF
_0811A308:
	adds r0, r4, #0
	bl sub_08119F88
_0811A30E:
	mov r0, sb
	adds r0, #0xb8
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A320
	ldrh r1, [r2, #6]
	ldr r0, _0811A350 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #6]
_0811A320:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r0, #0x38]
	ldr r2, _0811A354 @ =0xFFFFF000
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldr r0, _0811A358 @ =sub_0811A15C
	str r0, [r4, #0x78]
_0811A33A:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811A350: .4byte 0x0000FBFF
_0811A354: .4byte 0xFFFFF000
_0811A358: .4byte sub_0811A15C

	thumb_func_start sub_0811A35C
sub_0811A35C: @ 0x0811A35C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0811A084
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0xbe
	ldrh r2, [r2]
	bl sub_080023E4
	ldr r1, _0811A3D0 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0811A3C0
	ldr r0, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #3
	orrs r0, r3
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A3AA
	ldrh r1, [r2, #6]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0811A3AA:
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A3BC
	ldrh r1, [r2, #6]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0811A3BC:
	ldr r0, _0811A3D4 @ =sub_0811A3D8
	str r0, [r4, #0x78]
_0811A3C0:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0811A3D0: .4byte gUnk_082D88B8
_0811A3D4: .4byte sub_0811A3D8

	thumb_func_start sub_0811A3D8
sub_0811A3D8: @ 0x0811A3D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrh r1, [r1]
	adds r2, r4, #0
	adds r2, #0xbe
	ldrh r2, [r2]
	bl sub_080023E4
	ldr r1, _0811A424 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0811A44C
	ldr r0, [r4, #8]
	ldr r1, _0811A428 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A430
	ldrh r1, [r2, #6]
	ldr r0, _0811A42C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #6]
	b _0811A436
	.align 2, 0
_0811A424: .4byte gUnk_082D88B8
_0811A428: .4byte 0xFFFFFBFF
_0811A42C: .4byte 0x0000FBFF
_0811A430:
	adds r0, r4, #0
	bl sub_08119F88
_0811A436:
	adds r0, r5, #0
	adds r0, #0xb8
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A448
	ldrh r1, [r2, #6]
	ldr r0, _0811A454 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #6]
_0811A448:
	ldr r0, _0811A458 @ =sub_0811A35C
	str r0, [r4, #0x78]
_0811A44C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0811A454: .4byte 0x0000FBFF
_0811A458: .4byte sub_0811A35C

	thumb_func_start sub_0811A45C
sub_0811A45C: @ 0x0811A45C
	push {r4, r5, lr}
	adds r4, r0, #0
	bl sub_0811A084
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	beq _0811A52C
	adds r3, r4, #0
	adds r3, #0x10
	adds r5, r4, #0
	adds r5, #0x83
	movs r0, #1
	strb r0, [r5]
	ldr r2, _0811A53C @ =gUnk_08351648
	movs r0, #0x82
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x14
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	strh r0, [r3, #0xc]
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r5]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	adds r2, r4, #0
	adds r2, #0xc0
	ldrh r0, [r2]
	movs r1, #1
	movs r5, #0
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrh r1, [r1]
	subs r2, #2
	ldrh r2, [r2]
	movs r3, #0
	bl sub_0800255C
	adds r1, r4, #0
	adds r1, #0xc2
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A4FC
	ldrh r0, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0811A4FC:
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A512
	ldrh r0, [r2, #6]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #6]
_0811A512:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r0, #0x38]
	ldr r2, _0811A540 @ =0xFFFFF000
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldr r0, _0811A544 @ =sub_0811A548
	str r0, [r4, #0x78]
_0811A52C:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0811A53C: .4byte gUnk_08351648
_0811A540: .4byte 0xFFFFF000
_0811A544: .4byte sub_0811A548

	thumb_func_start sub_0811A548
sub_0811A548: @ 0x0811A548
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	movs r0, #1
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0811A602
	adds r3, r4, #0
	adds r3, #0x10
	adds r5, r4, #0
	adds r5, #0x83
	strb r0, [r5]
	ldr r2, _0811A610 @ =gUnk_08351648
	movs r0, #0x82
	adds r0, r0, r4
	mov ip, r0
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x14
	adds r0, r0, r2
	ldr r0, [r0]
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r5]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r3, #0x1a]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	adds r2, r4, #0
	adds r2, #0xc0
	ldrh r1, [r2]
	ldr r0, _0811A614 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0xbc
	ldrh r1, [r1]
	subs r2, #2
	ldrh r2, [r2]
	adds r3, #0xb2
	ldrb r3, [r3]
	bl sub_0800255C
	adds r0, r4, #0
	adds r0, #0xb4
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A5D6
	ldrh r1, [r2, #6]
	ldr r0, _0811A618 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #6]
_0811A5D6:
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r2, [r0]
	cmp r2, #0
	beq _0811A5E8
	ldrh r1, [r2, #6]
	ldr r0, _0811A618 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2, #6]
_0811A5E8:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, [r0, #0x38]
	ldr r2, _0811A61C @ =0xFFFFF000
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldr r0, _0811A620 @ =sub_0811A45C
	str r0, [r4, #0x78]
_0811A602:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0811A610: .4byte gUnk_08351648
_0811A614: .4byte 0x0000FFFE
_0811A618: .4byte 0x0000FBFF
_0811A61C: .4byte 0xFFFFF000
_0811A620: .4byte sub_0811A45C

	thumb_func_start sub_0811A624
sub_0811A624: @ 0x0811A624
	push {lr}
	adds r2, r0, #0
	movs r0, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	beq _0811A664
	cmp r0, #1
	bgt _0811A642
	cmp r0, #0
	beq _0811A648
	b _0811A698
_0811A642:
	cmp r0, #2
	beq _0811A680
	b _0811A698
_0811A648:
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #1
	bne _0811A65C
	ldr r0, _0811A658 @ =sub_0811A234
	b _0811A696
	.align 2, 0
_0811A658: .4byte sub_0811A234
_0811A65C:
	ldr r0, _0811A660 @ =sub_0811A15C
	b _0811A696
	.align 2, 0
_0811A660: .4byte sub_0811A15C
_0811A664:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0811A678
	ldr r0, _0811A674 @ =sub_0811A3D8
	b _0811A696
	.align 2, 0
_0811A674: .4byte sub_0811A3D8
_0811A678:
	ldr r0, _0811A67C @ =sub_0811A35C
	b _0811A696
	.align 2, 0
_0811A67C: .4byte sub_0811A35C
_0811A680:
	adds r0, r2, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _0811A694
	ldr r0, _0811A690 @ =sub_0811A45C
	b _0811A696
	.align 2, 0
_0811A690: .4byte sub_0811A45C
_0811A694:
	ldr r0, _0811A69C @ =sub_0811A548
_0811A696:
	str r0, [r2, #0x78]
_0811A698:
	pop {r0}
	bx r0
	.align 2, 0
_0811A69C: .4byte sub_0811A548

	thumb_func_start sub_0811A6A0
sub_0811A6A0: @ 0x0811A6A0
	push {r4, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0811A6BA
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _0811A6C2
_0811A6BA:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_0811A6C2:
	adds r2, r3, #0
	adds r2, #0x56
	ldrb r0, [r2]
	cmp r0, #0xff
	beq _0811A6FA
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	bne _0811A6FA
	adds r0, r3, #0
	adds r0, #0xc0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811A6FA
	ldrb r0, [r2]
	adds r1, r3, #0
	adds r1, #0xbc
	ldrh r1, [r1]
	adds r2, #0x68
	ldrh r2, [r2]
	adds r3, #0xc2
	ldrb r3, [r3]
	bl sub_0800255C
_0811A6FA:
	adds r0, r4, #0
	bl ObjectDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0811A708
sub_0811A708: @ 0x0811A708
	push {lr}
	adds r2, r0, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r2, #0
	adds r1, #0xbc
	ldrb r1, [r1]
	adds r2, #0xbe
	ldrb r2, [r2]
	bl sub_080025AC
	ldr r2, _0811A734 @ =0xFFFFFC2C
	adds r1, r2, #0
	ldrh r0, [r0, #8]
	adds r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #9
	bls _0811A738
	movs r0, #0
	b _0811A73A
	.align 2, 0
_0811A734: .4byte 0xFFFFFC2C
_0811A738:
	movs r0, #1
_0811A73A:
	pop {r1}
	bx r1
	.align 2, 0
