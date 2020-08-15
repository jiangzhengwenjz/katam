	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text
    
	thumb_func_start CreateWaddleDee
CreateWaddleDee: @ 0x080A3BDC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A3C10 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A3C14 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A3C18
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A3C20
	.align 2, 0
_080A3C10: .4byte ObjectMain
_080A3C14: .4byte ObjectDestroy
_080A3C18:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A3C20:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	movs r4, #5
	rsbs r4, r4, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r0, #9
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0x3f
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r0, [r5, #0x44]
	adds r0, r0, r2
	ldr r1, _080A3C9C @ =0xFFFFF000
	ands r0, r1
	subs r0, r0, r2
	subs r0, #1
	str r0, [r5, #0x44]
	str r0, [r5, #0x4c]
	adds r0, r5, #0
	bl sub_0803D368
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A3C82
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
_080A3C82:
	adds r0, r5, #0
	bl sub_0809F3E0
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x37
	bne _080A3CA0
	adds r0, r5, #0
	bl sub_080A42B0
	b _080A3CE6
	.align 2, 0
_080A3C9C: .4byte 0xFFFFF000
_080A3CA0:
	ldrb r0, [r6, #0xe]
	cmp r0, #4
	bhi _080A3CC8
	lsls r0, r0, #2
	ldr r1, _080A3CB0 @ =_080A3CB4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A3CB0: .4byte _080A3CB4
_080A3CB4: @ jump table
	.4byte _080A3CC8 @ case 0
	.4byte _080A3CD0 @ case 1
	.4byte _080A3CD8 @ case 2
	.4byte _080A3CE0 @ case 3
	.4byte _080A3CE0 @ case 4
_080A3CC8:
	adds r0, r5, #0
	bl sub_080A3E58
	b _080A3CE6
_080A3CD0:
	adds r0, r5, #0
	bl sub_080A3EC4
	b _080A3CE6
_080A3CD8:
	adds r0, r5, #0
	bl sub_080A3FD4
	b _080A3CE6
_080A3CE0:
	adds r0, r5, #0
	bl sub_080A4514
_080A3CE6:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080A3CF0
sub_080A3CF0: @ 0x080A3CF0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #0
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bhi _080A3D76
	lsls r0, r0, #2
	ldr r1, _080A3D14 @ =_080A3D18
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A3D14: .4byte _080A3D18
_080A3D18: @ jump table
	.4byte _080A3D76 @ case 0
	.4byte _080A3D2C @ case 1
	.4byte _080A3D34 @ case 2
	.4byte _080A3D3C @ case 3
	.4byte _080A3D7E @ case 4
_080A3D2C:
	adds r0, r5, #0
	bl sub_080A3EC4
	b _080A3D84
_080A3D34:
	adds r0, r5, #0
	bl sub_080A3FD4
	b _080A3D84
_080A3D3C:
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A3D4E
	adds r0, r5, #0
	bl sub_080A45A8
	b _080A3D84
_080A3D4E:
	movs r4, #5
	rsbs r4, r4, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r0, #9
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E308
_080A3D76:
	adds r0, r5, #0
	bl sub_080A3E58
	b _080A3D84
_080A3D7E:
	adds r0, r5, #0
	bl sub_080A45D8
_080A3D84:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A3D8C
sub_080A3D8C: @ 0x080A3D8C
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A3DC2
	adds r0, r2, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #5
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r3, r1, #0x10
	movs r1, #0x80
	rsbs r1, r1, #0
	adds r4, r0, #0
	cmp r3, r1
	bge _080A3DBC
	ldr r0, _080A3DB8 @ =0x0000FF80
	strh r0, [r4]
	b _080A3DE6
	.align 2, 0
_080A3DB8: .4byte 0x0000FF80
_080A3DBC:
	cmp r3, #0x80
	ble _080A3DE6
	b _080A3DD6
_080A3DC2:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #5
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r4, r1, #0
	cmp r0, #0x80
	ble _080A3DDC
_080A3DD6:
	movs r0, #0x80
	strh r0, [r4]
	b _080A3DE6
_080A3DDC:
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080A3DE6
	strh r1, [r4]
_080A3DE6:
	ldrh r0, [r2, #4]
	ldr r1, _080A3E00 @ =0x000001FF
	ands r1, r0
	strh r1, [r2, #4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A3E04
	ldr r0, [r2, #8]
	movs r1, #1
	orrs r0, r1
	b _080A3E0C
	.align 2, 0
_080A3E00: .4byte 0x000001FF
_080A3E04:
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A3E0C:
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r5, #1
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080A3E4A
	ldrh r1, [r2, #4]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	beq _080A3E40
	movs r0, #0
	strh r0, [r2, #4]
	strh r0, [r4]
	ldr r0, [r2, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	b _080A3E48
_080A3E40:
	strh r0, [r4]
	strh r3, [r2, #4]
	ldr r0, [r2, #8]
	orrs r0, r5
_080A3E48:
	str r0, [r2, #8]
_080A3E4A:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A3E58
sub_080A3E58: @ 0x080A3E58
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A3E78 @ =sub_080A4454
	movs r1, #0
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A3E8E
	cmp r0, #1
	bgt _080A3E7C
	cmp r0, #0
	beq _080A3E86
	b _080A3EAA
	.align 2, 0
_080A3E78: .4byte sub_080A4454
_080A3E7C:
	cmp r0, #2
	beq _080A3E96
	cmp r0, #3
	beq _080A3EA0
	b _080A3EAA
_080A3E86:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A3EA8
_080A3E8E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080A3EA8
_080A3E96:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A3EA8
_080A3EA0:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080A3EA8:
	strh r0, [r1]
_080A3EAA:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A3EBE
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A3EBE:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A3EC4
sub_080A3EC4: @ 0x080A3EC4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A3EE4 @ =sub_080A3F30
	movs r1, #0
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A3EFA
	cmp r0, #1
	bgt _080A3EE8
	cmp r0, #0
	beq _080A3EF2
	b _080A3F16
	.align 2, 0
_080A3EE4: .4byte sub_080A3F30
_080A3EE8:
	cmp r0, #2
	beq _080A3F02
	cmp r0, #3
	beq _080A3F0C
	b _080A3F16
_080A3EF2:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A3F14
_080A3EFA:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080A3F14
_080A3F02:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A3F14
_080A3F0C:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080A3F14:
	strh r0, [r1]
_080A3F16:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A3F2A
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A3F2A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A3F30
sub_080A3F30: @ 0x080A3F30
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A3F5E
	eors r2, r4
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r1, [r0]
	rsbs r1, r1, #0
	movs r2, #0
	strh r1, [r0]
	strh r2, [r3, #4]
_080A3F5E:
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r2, [r0]
	cmp r2, #1
	beq _080A3F98
	cmp r2, #1
	bgt _080A3F72
	cmp r2, #0
	beq _080A3F7C
	b _080A3FC8
_080A3F72:
	cmp r2, #2
	beq _080A3FA2
	cmp r2, #3
	beq _080A3FAC
	b _080A3FC8
_080A3F7C:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0xc0
	ble _080A3FC8
	ldr r0, [r3, #8]
	eors r0, r4
	str r0, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	strh r2, [r3, #4]
	b _080A3FC8
_080A3F98:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0x80
	ble _080A3FC8
	b _080A3FB4
_080A3FA2:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0x60
	ble _080A3FC8
	b _080A3FB4
_080A3FAC:
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0x40
	ble _080A3FC8
_080A3FB4:
	ldr r0, [r3, #8]
	eors r0, r4
	str r0, [r3, #8]
	adds r2, r3, #0
	adds r2, #0x50
	ldrh r0, [r2]
	rsbs r0, r0, #0
	movs r1, #0
	strh r0, [r2]
	strh r1, [r3, #4]
_080A3FC8:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A3FD4
sub_080A3FD4: @ 0x080A3FD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A3FF8 @ =sub_080A4044
	movs r1, #0
	bl sub_0809F7D8
	movs r0, #0x64
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A400E
	cmp r0, #1
	bgt _080A3FFC
	cmp r0, #0
	beq _080A4006
	b _080A402A
	.align 2, 0
_080A3FF8: .4byte sub_080A4044
_080A3FFC:
	cmp r0, #2
	beq _080A4016
	cmp r0, #3
	beq _080A4020
	b _080A402A
_080A4006:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A4028
_080A400E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080A4028
_080A4016:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A4028
_080A4020:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080A4028:
	strh r0, [r1]
_080A402A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A403E
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A403E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A4044
sub_080A4044: @ 0x080A4044
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080A406E
	eors r2, r3
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A406E:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x1e
	bne _080A40A8
	movs r0, #0
	strh r0, [r4, #4]
	ldr r2, _080A409C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A40A0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A40A4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080A40CE
	adds r0, r4, #0
	bl sub_080A44C0
	b _080A40CE
	.align 2, 0
_080A409C: .4byte gRngVal
_080A40A0: .4byte 0x00196225
_080A40A4: .4byte 0x3C6EF35F
_080A40A8:
	cmp r0, #0xb4
	ble _080A40CE
	movs r0, #0
	strh r0, [r4, #4]
	ldr r2, _080A40E8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A40EC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A40F0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080A40CE
	adds r0, r4, #0
	bl sub_080A44C0
_080A40CE:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A40E2
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080A40E2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A40E8: .4byte gRngVal
_080A40EC: .4byte 0x00196225
_080A40F0: .4byte 0x3C6EF35F

	thumb_func_start sub_080A40F4
sub_080A40F4: @ 0x080A40F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A4120 @ =sub_080A4484
	movs r1, #2
	bl sub_0809F7D8
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A4136
	cmp r0, #1
	bgt _080A4124
	cmp r0, #0
	beq _080A412E
	b _080A4152
	.align 2, 0
_080A4120: .4byte sub_080A4484
_080A4124:
	cmp r0, #2
	beq _080A413E
	cmp r0, #3
	beq _080A4148
	b _080A4152
_080A412E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A4150
_080A4136:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080A4150
_080A413E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A4150
_080A4148:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080A4150:
	strh r0, [r1]
_080A4152:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4166
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A4166:
	ldr r1, _080A41D4 @ =gUnk_02020EE0
	ldr r0, _080A41D8 @ =gUnk_0203AD3C
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
	bne _080A41CE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A4192
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A41CE
_080A4192:
	ldr r1, _080A41DC @ =gUnk_08D60FA4
	ldr r4, _080A41E0 @ =gSongTable
	ldr r2, _080A41E4 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A41B6
	ldr r1, _080A41E8 @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A41CE
_080A41B6:
	cmp r3, #0
	beq _080A41C8
	ldr r0, _080A41EC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A41CE
_080A41C8:
	ldr r0, _080A41F0 @ =0x00000145
	bl m4aSongNumStart
_080A41CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A41D4: .4byte gUnk_02020EE0
_080A41D8: .4byte gUnk_0203AD3C
_080A41DC: .4byte gUnk_08D60FA4
_080A41E0: .4byte gSongTable
_080A41E4: .4byte 0x00000A2C
_080A41E8: .4byte 0x00000A28
_080A41EC: .4byte gUnk_0203AD10
_080A41F0: .4byte 0x00000145

	thumb_func_start sub_080A41F4
sub_080A41F4: @ 0x080A41F4
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	adds r6, r5, #0
	adds r6, #0x62
	ldrb r0, [r6]
	ands r1, r0
	cmp r1, #0
	beq _080A4288
	adds r0, r5, #0
	adds r0, #0x84
	movs r7, #0
	strb r7, [r0]
	adds r0, #1
	ldrb r0, [r0]
	cmp r0, #1
	bne _080A4226
	adds r0, r5, #0
	bl sub_080A3CF0
	b _080A42A8
_080A4226:
	movs r4, #5
	rsbs r4, r4, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r0, #9
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0x83
	strb r7, [r0]
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r2, r5, #0
	adds r2, #0x50
	movs r0, #0x80
	strh r0, [r2]
	ldrb r1, [r6]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080A4278
	ldr r0, [r5, #8]
	eors r0, r3
	str r0, [r5, #8]
_080A4278:
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080A42A8
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _080A42A8
_080A4288:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080A42A8
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
_080A42A8:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A42B0
sub_080A42B0: @ 0x080A42B0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A42D0 @ =sub_080A431C
	movs r1, #0
	bl sub_0809F7D8
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _080A42E6
	cmp r0, #1
	bgt _080A42D4
	cmp r0, #0
	beq _080A42DE
	b _080A4302
	.align 2, 0
_080A42D0: .4byte sub_080A431C
_080A42D4:
	cmp r0, #2
	beq _080A42EE
	cmp r0, #3
	beq _080A42F8
	b _080A4302
_080A42DE:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	b _080A4300
_080A42E6:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	b _080A4300
_080A42EE:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080A4300
_080A42F8:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
_080A4300:
	strh r0, [r1]
_080A4302:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A4316
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A4316:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A431C
sub_080A431C: @ 0x080A431C
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A439A
	mov r4, ip
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	mov r0, ip
	ldr r2, [r0, #0x40]
	adds r1, r2, r1
	mov r3, ip
	adds r3, #0xa8
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	ldr r5, _080A436C @ =0xFFFFF800
	adds r0, r0, r5
	cmp r1, r0
	blt _080A4370
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	b _080A43D8
	.align 2, 0
_080A436C: .4byte 0xFFFFF800
_080A4370:
	mov r4, ip
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	mov r3, ip
	adds r3, #0xa4
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	mov r2, ip
	adds r2, #0x62
	cmp r1, r0
	bgt _080A4426
	ldrb r1, [r2]
	movs r0, #1
	b _080A43C6
_080A439A:
	mov r4, ip
	adds r4, #0x3c
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	mov r0, ip
	ldr r2, [r0, #0x40]
	adds r1, r2, r1
	mov r3, ip
	adds r3, #0xa4
	movs r5, #0
	ldrsh r0, [r3, r5]
	lsls r0, r0, #8
	movs r5, #0x80
	lsls r5, r5, #4
	adds r0, r0, r5
	cmp r1, r0
	bgt _080A43E8
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
_080A43C6:
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	ldr r3, _080A43E4 @ =0xFFFFF800
_080A43D8:
	adds r0, r0, r3
	subs r1, r1, r0
	mov r5, ip
	str r1, [r5, #0x40]
	b _080A4426
	.align 2, 0
_080A43E4: .4byte 0xFFFFF800
_080A43E8:
	mov r4, ip
	adds r4, #0x3e
	movs r1, #0
	ldrsb r1, [r4, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	mov r3, ip
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _080A4450 @ =0xFFFFF800
	adds r0, r0, r2
	mov r2, ip
	adds r2, #0x62
	cmp r1, r0
	blt _080A4426
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r5
	subs r1, r1, r0
	mov r3, ip
	str r1, [r3, #0x40]
_080A4426:
	mov r5, ip
	ldr r3, [r5, #8]
	movs r0, #4
	orrs r3, r0
	str r3, [r5, #8]
	ldrb r1, [r2]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A444A
	eors r3, r2
	str r3, [r5, #8]
	mov r1, ip
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A444A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A4450: .4byte 0xFFFFF800

	thumb_func_start sub_080A4454
sub_080A4454: @ 0x080A4454
	push {r4, lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A447E
	eors r2, r4
	str r2, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A447E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A4484
sub_080A4484: @ 0x080A4484
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A44A8
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A44A8:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A44B8
	adds r0, r2, #0
	bl sub_080A3FD4
_080A44B8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A44C0
sub_080A44C0: @ 0x080A44C0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A44E0 @ =sub_080A44E4
	movs r1, #1
	bl sub_0809F7D8
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x85
	strb r2, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A44E0: .4byte sub_080A44E4

	thumb_func_start sub_080A44E4
sub_080A44E4: @ 0x080A44E4
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A450E
	adds r3, r2, #0
	adds r3, #0x85
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A4504
	adds r0, r2, #0
	bl sub_080A40F4
	b _080A450E
_080A4504:
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #8]
	movs r0, #1
	strb r0, [r3]
_080A450E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A4514
sub_080A4514: @ 0x080A4514
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r2, _080A4564 @ =sub_080A4568
	movs r1, #0
	bl sub_0809F7D8
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #5
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4564: .4byte sub_080A4568

	thumb_func_start sub_080A4568
sub_080A4568: @ 0x080A4568
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	ldr r1, _080A4590 @ =0xFFFFDFFF
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #3
	bne _080A4594
	ldrb r1, [r1, #0x10]
	adds r0, r4, #0
	bl sub_080C29C0
	adds r0, r4, #0
	bl sub_080A45A8
	b _080A45A2
	.align 2, 0
_080A4590: .4byte 0xFFFFDFFF
_080A4594:
	adds r0, r4, #0
	movs r1, #2
	bl sub_080C29C0
	adds r0, r4, #0
	bl sub_080A45D8
_080A45A2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A45A8
sub_080A45A8: @ 0x080A45A8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A45D4 @ =sub_080A41F4
	movs r1, #0
	bl sub_0809F7D8
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r1, #0x32
	movs r0, #5
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A45D4: .4byte sub_080A41F4

	thumb_func_start sub_080A45D8
sub_080A45D8: @ 0x080A45D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A4604 @ =sub_080A4608
	movs r1, #0
	bl sub_0809F7D8
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	strb r2, [r0]
	adds r1, #0x32
	movs r0, #5
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4604: .4byte sub_080A4608

	thumb_func_start sub_080A4608
sub_080A4608: @ 0x080A4608
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080A463E
	adds r0, r3, #0
	adds r0, #0x83
	movs r2, #0
	strb r2, [r0]
	ldr r0, [r3, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	b _080A464E
_080A463E:
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r3, #8]
_080A464E:
	pop {r0}
	bx r0
	.align 2, 0
