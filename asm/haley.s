	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateHaley
CreateHaley: @ 0x080A0DBC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A0DF0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A0DF4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A0DF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A0E00
	.align 2, 0
_080A0DF0: .4byte ObjectMain
_080A0DF4: .4byte ObjectDestroy
_080A0DF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A0E00:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A0E20
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A0E28
_080A0E20:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A0E28:
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
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
	ldr r2, _080A0E94 @ =gUnk_08351648
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
_080A0E94: .4byte gUnk_08351648

	thumb_func_start sub_080A0E98
sub_080A0E98: @ 0x080A0E98
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A0ED8
	cmp r0, #1
	bgt _080A0EC8
	cmp r0, #0
	beq _080A0ECE
	b _080A0EEC
_080A0EC8:
	cmp r0, #2
	beq _080A0EE2
	b _080A0EEC
_080A0ECE:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080A0EF2
_080A0ED8:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #2
	b _080A0EF2
_080A0EE2:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0xe0
	lsls r0, r0, #2
	b _080A0EF2
_080A0EEC:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
_080A0EF2:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A0F06
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080A0F06:
	ldr r0, [r3, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A0F18
	adds r0, r3, #0
	bl sub_080A118C
	b _080A0F22
_080A0F18:
	ldr r2, _080A0F28 @ =sub_080A0F2C
	adds r0, r3, #0
	movs r1, #0
	bl ObjectSetFunc
_080A0F22:
	pop {r0}
	bx r0
	.align 2, 0
_080A0F28: .4byte sub_080A0F2C

	thumb_func_start sub_080A0F2C
sub_080A0F2C: @ 0x080A0F2C
	push {r4, lr}
	mov ip, r0
	ldr r1, [r0, #8]
	movs r0, #4
	orrs r1, r0
	mov r0, ip
	str r1, [r0, #8]
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #0
	beq _080A0F4A
	cmp r3, #2
	beq _080A0FA4
	b _080A0FEE
_080A0F4A:
	mov r0, ip
	adds r0, #0x50
	ldrh r4, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080A0F66
	adds r0, r4, #5
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A0F72
	b _080A0F70
_080A0F66:
	subs r0, r4, #5
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A0F72
_080A0F70:
	strh r3, [r2]
_080A0F72:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A0F94
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _080A0F90 @ =0xFFFFFF00
	cmp r1, r0
	ble _080A0FEE
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	b _080A0FEE
	.align 2, 0
_080A0F90: .4byte 0xFFFFFF00
_080A0F94:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0xff
	bgt _080A0FEE
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2]
	b _080A0FEE
_080A0FA4:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080A0FD0
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A0FCC @ =0xFFFFFB40
	cmp r0, r2
	blt _080A0FEC
	movs r2, #0x98
	lsls r2, r2, #3
	cmp r0, r2
	ble _080A0FEE
	b _080A0FEC
	.align 2, 0
_080A0FCC: .4byte 0xFFFFFB40
_080A0FD0:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x98
	lsls r2, r2, #3
	cmp r0, r2
	bgt _080A0FEC
	ldr r2, _080A1008 @ =0xFFFFFB40
	cmp r0, r2
	bge _080A0FEE
_080A0FEC:
	strh r2, [r1]
_080A0FEE:
	mov r2, ip
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A1000
	mov r0, ip
	bl sub_080A118C
_080A1000:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1008: .4byte 0xFFFFFB40

	thumb_func_start sub_080A100C
sub_080A100C: @ 0x080A100C
	push {r4, lr}
	mov ip, r0
	ldrh r0, [r0, #4]
	mov r1, ip
	adds r1, #0x50
	strh r0, [r1]
	mov r0, ip
	ldr r2, [r0, #8]
	movs r0, #4
	orrs r2, r0
	mov r4, ip
	str r2, [r4, #8]
	mov r0, ip
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r3, [r0, #0xe]
	cmp r3, #1
	beq _080A109C
	cmp r3, #1
	bgt _080A103C
	cmp r3, #0
	beq _080A1044
	adds r3, r1, #0
	b _080A1156
_080A103C:
	cmp r3, #2
	beq _080A10C2
	adds r3, r1, #0
	b _080A1156
_080A1044:
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080A105A
	adds r0, r2, #5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A1066
	b _080A1064
_080A105A:
	subs r0, r2, #5
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A1066
_080A1064:
	strh r3, [r1]
_080A1066:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A108C
	mov r0, ip
	adds r0, #0x50
	movs r4, #0
	ldrsh r2, [r0, r4]
	ldr r1, _080A1088 @ =0xFFFFFF00
	adds r3, r0, #0
	cmp r2, r1
	ble _080A1156
	movs r0, #0xff
	lsls r0, r0, #8
	b _080A1154
	.align 2, 0
_080A1088: .4byte 0xFFFFFF00
_080A108C:
	mov r0, ip
	adds r0, #0x50
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r3, r0, #0
	cmp r1, #0xff
	bgt _080A1156
	b _080A1150
_080A109C:
	ands r2, r3
	cmp r2, #0
	beq _080A10B4
	movs r4, #0
	ldrsh r0, [r1, r4]
	ldr r2, _080A10B0 @ =0xFFFFFF00
	cmp r0, r2
	ble _080A10C2
	strh r2, [r1]
	b _080A10C2
	.align 2, 0
_080A10B0: .4byte 0xFFFFFF00
_080A10B4:
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0xff
	bgt _080A10C2
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_080A10C2:
	mov r4, ip
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A1100
	mov r0, ip
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	ldr r1, _080A10EC @ =0xFFFFFB40
	adds r3, r0, #0
	cmp r2, r1
	bge _080A10F4
	ldr r0, _080A10F0 @ =0x0000FB40
	strh r0, [r3]
	b _080A1124
	.align 2, 0
_080A10EC: .4byte 0xFFFFFB40
_080A10F0: .4byte 0x0000FB40
_080A10F4:
	movs r0, #0x98
	lsls r0, r0, #3
	cmp r2, r0
	ble _080A1124
	strh r0, [r3]
	b _080A1124
_080A1100:
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x98
	lsls r2, r2, #3
	adds r3, r1, #0
	cmp r0, r2
	ble _080A111C
	strh r2, [r3]
	b _080A1124
_080A111C:
	ldr r1, _080A1140 @ =0xFFFFFB40
	cmp r0, r1
	bge _080A1124
	strh r1, [r3]
_080A1124:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A1148
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldr r0, _080A1144 @ =0xFFFFFF00
	cmp r1, r0
	ble _080A1156
	movs r0, #0xff
	lsls r0, r0, #8
	b _080A1154
	.align 2, 0
_080A1140: .4byte 0xFFFFFB40
_080A1144: .4byte 0xFFFFFF00
_080A1148:
	movs r4, #0
	ldrsh r0, [r3, r4]
	cmp r0, #0xff
	bgt _080A1156
_080A1150:
	movs r0, #0x80
	lsls r0, r0, #1
_080A1154:
	strh r0, [r3]
_080A1156:
	ldrh r0, [r3]
	mov r1, ip
	strh r0, [r1, #4]
	ldrb r0, [r1, #1]
	cmp r0, #0x13
	bhi _080A116A
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x12
	b _080A1170
_080A116A:
	ldrh r0, [r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
_080A1170:
	strh r0, [r3]
	mov r2, ip
	ldr r0, [r2, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080A1184
	mov r0, ip
	bl sub_080A0E98
_080A1184:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A118C
sub_080A118C: @ 0x080A118C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A11A8 @ =sub_080A100C
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r0, [r0]
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A11A8: .4byte sub_080A100C
