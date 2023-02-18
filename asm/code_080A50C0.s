	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A6CBC
sub_080A6CBC: @ 0x080A6CBC
	push {r4, r5, r6, lr}
	sub sp, #8
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A6CF0 @ =sub_080A6E44
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080A6CF4 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A6CF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A6D00
	.align 2, 0
_080A6CF0: .4byte sub_080A6E44
_080A6CF4: .4byte sub_0803DCCC
_080A6CF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A6D00:
	adds r4, r0, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r4]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x34]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x38]
	str r6, [r4, #0x44]
	adds r0, r6, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
	cmp r5, #1
	beq _080A6D54
	cmp r5, #1
	ble _080A6D3C
	cmp r5, #2
	beq _080A6D64
	cmp r5, #3
	beq _080A6D88
_080A6D3C:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x3c]
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x34]
	ldr r1, _080A6D50 @ =0xFFFFF400
	adds r0, r0, r1
	b _080A6DA2
	.align 2, 0
_080A6D50: .4byte 0xFFFFF400
_080A6D54:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3c]
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x34]
	movs r2, #0xc0
	lsls r2, r2, #4
	b _080A6DA0
_080A6D64:
	movs r0, #0xfe
	lsls r0, r0, #8
	strh r0, [r4, #0x3c]
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _080A6D80 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	ldr r2, _080A6D84 @ =0xFFFFF800
	b _080A6DA0
	.align 2, 0
_080A6D80: .4byte 0xFFFFF400
_080A6D84: .4byte 0xFFFFF800
_080A6D88:
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4, #0x3c]
	adds r0, #0x80
	strh r0, [r4, #0x3e]
	ldr r0, [r4, #0x38]
	ldr r1, _080A6E20 @ =0xFFFFF400
	adds r0, r0, r1
	str r0, [r4, #0x38]
	ldr r0, [r4, #0x34]
	movs r2, #0x80
	lsls r2, r2, #4
_080A6DA0:
	adds r0, r0, r2
_080A6DA2:
	str r0, [r4, #0x34]
	ldr r0, _080A6E24 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r6, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080A6DC8
	ldrh r1, [r4, #6]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r4, #6]
_080A6DC8:
	adds r1, r4, #0
	adds r1, #0xc
	ldr r3, _080A6E28 @ =0x00000329
	movs r0, #2
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080709F8
	adds r5, r4, #0
	adds r5, #0x2b
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080A6E2C @ =gKirbys
	ldr r0, _080A6E30 @ =gUnk_0203AD3C
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
	bne _080A6E38
	ldr r4, _080A6E34 @ =0x00000327
	adds r0, r4, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A6E3A
	adds r0, r4, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080A6E3A
	.align 2, 0
_080A6E20: .4byte 0xFFFFF400
_080A6E24: .4byte gUnk_03000510
_080A6E28: .4byte 0x00000329
_080A6E2C: .4byte gKirbys
_080A6E30: .4byte gUnk_0203AD3C
_080A6E34: .4byte 0x00000327
_080A6E38:
	strb r3, [r5]
_080A6E3A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A6E44
sub_080A6E44: @ 0x080A6E44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x28
	ldr r2, _080A6E68 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A6E6C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A6E74
	.align 2, 0
_080A6E68: .4byte gCurTask
_080A6E6C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A6E74:
	adds r5, r0, #0
	ldrh r3, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _080A6E8A
	ldr r0, [r2]
	bl TaskDestroy
	b _080A711C
_080A6E8A:
	ldr r2, _080A6EF0 @ =gKirbys
	ldr r0, _080A6EF4 @ =gUnk_0203AD3C
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
	bne _080A6F38
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	cmp r0, #0
	beq _080A6F00
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080A6F5E
	ldrh r1, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x26
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080A6EF8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080A6EFC @ =0x0400000A
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
	b _080A6F5E
	.align 2, 0
_080A6EF0: .4byte gKirbys
_080A6EF4: .4byte gUnk_0203AD3C
_080A6EF8: .4byte 0xFFF7FFFF
_080A6EFC: .4byte 0x0400000A
_080A6F00:
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _080A6F5E
	movs r0, #6
	bl VramMalloc
	adds r3, r5, #0
	adds r3, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r5, #0x14]
	ldr r1, _080A6F30 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080A6F34 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080A6F5E
	.align 2, 0
_080A6F30: .4byte 0xFFF7FFFF
_080A6F34: .4byte 0x0400000A
_080A6F38:
	ldr r1, [r5, #0xc]
	cmp r1, #0
	beq _080A6F54
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r3
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _080A6F54
	adds r0, r1, #0
	bl VramFree
	str r4, [r5, #0xc]
_080A6F54:
	ldr r0, [r5, #0x14]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x14]
_080A6F5E:
	ldr r2, _080A6FA4 @ =gKirbys
	ldr r0, _080A6FA8 @ =gUnk_0203AD3C
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
	bne _080A6FB0
	adds r4, r5, #0
	adds r4, #0x2b
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A6FB8
	ldr r6, _080A6FAC @ =0x00000327
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080A6FB8
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080A6FB8
	.align 2, 0
_080A6FA4: .4byte gKirbys
_080A6FA8: .4byte gUnk_0203AD3C
_080A6FAC: .4byte 0x00000327
_080A6FB0:
	adds r1, r5, #0
	adds r1, #0x2b
	movs r0, #0
	strb r0, [r1]
_080A6FB8:
	ldr r0, _080A7064 @ =gUnk_0203AD44
	ldrb r0, [r0]
	ldr r2, [r5, #0x44]
	mov ip, r2
	ldr r6, _080A7068 @ =gUnk_03000510
	mov r8, r6
	cmp r0, #0
	beq _080A7004
	ldr r1, _080A706C @ =gCurLevelInfo
	mov sb, r1
	ldrh r3, [r7]
	ldr r4, _080A7070 @ =gUnk_02026D50
_080A6FD0:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	mov r6, sb
	adds r1, r0, r6
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _080A6FFC
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080A7016
_080A6FFC:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _080A6FD0
_080A7004:
	movs r0, #1
	cmp r0, #0
	beq _080A7016
	ldrh r1, [r5, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
_080A7016:
	mov r3, ip
	cmp r3, #0
	beq _080A7074
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A7034
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080A7034
	movs r0, #0
	str r0, [r5, #0x44]
	movs r3, #0
_080A7034:
	cmp r3, #0
	beq _080A7074
	mov r6, r8
	ldrb r2, [r6, #4]
	adds r1, r3, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080A70DC
	ldrh r1, [r5, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080A70DC
	adds r0, r5, #0
	bl sub_0803DBC8
	b _080A711C
	.align 2, 0
_080A7064: .4byte gUnk_0203AD44
_080A7068: .4byte gUnk_03000510
_080A706C: .4byte gCurLevelInfo
_080A7070: .4byte gUnk_02026D50
_080A7074:
	adds r4, r5, #0
	movs r3, #0
	ldr r2, _080A70D8 @ =gKirbys
	adds r0, r2, #0
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r1, [r7]
	cmp r0, r1
	beq _080A70B2
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080A70B2
	movs r3, #2
	movs r6, #0xec
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080A70B2
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _080A70B2
	movs r3, #4
_080A70B2:
	mov r1, r8
	ldrb r0, [r1, #4]
	movs r1, #1
	lsls r1, r3
	movs r2, #0x10
	orrs r1, r2
	ands r0, r1
	cmp r0, #0
	beq _080A70DC
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _080A70DC
	adds r0, r4, #0
	bl sub_0803DBC8
	b _080A711C
	.align 2, 0
_080A70D8: .4byte gKirbys
_080A70DC:
	ldrh r0, [r5, #0x3e]
	subs r0, #0x80
	strh r0, [r5, #0x3e]
	ldrh r1, [r5, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A70F8
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r5, #6]
	b _080A711C
_080A70F8:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080A7116
	movs r6, #0x3c
	ldrsh r1, [r5, r6]
	ldr r0, [r5, #0x34]
	adds r0, r0, r1
	str r0, [r5, #0x34]
	movs r0, #0x3e
	ldrsh r1, [r5, r0]
	ldr r0, [r5, #0x38]
	subs r0, r0, r1
	str r0, [r5, #0x38]
_080A7116:
	adds r0, r5, #0
	bl sub_0806FAC8
_080A711C:
	add sp, #0x28
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A712C
sub_080A712C: @ 0x080A712C
	push {lr}
	adds r2, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bhi _080A715C
	lsls r0, r0, #2
	ldr r1, _080A7144 @ =_080A7148
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A7144: .4byte _080A7148
_080A7148: @ jump table
	.4byte _080A715C @ case 0
	.4byte _080A7164 @ case 1
	.4byte _080A716C @ case 2
	.4byte _080A7174 @ case 3
	.4byte _080A717C @ case 4
_080A715C:
	adds r0, r2, #0
	bl sub_080A7188
	b _080A7182
_080A7164:
	adds r0, r2, #0
	bl sub_080A71B4
	b _080A7182
_080A716C:
	adds r0, r2, #0
	bl sub_080A71E4
	b _080A7182
_080A7174:
	adds r0, r2, #0
	bl sub_080A726C
	b _080A7182
_080A717C:
	adds r0, r2, #0
	bl sub_080A726C
_080A7182:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7188
sub_080A7188: @ 0x080A7188
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A71B0 @ =sub_080A5188
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A71B0: .4byte sub_080A5188

	thumb_func_start sub_080A71B4
sub_080A71B4: @ 0x080A71B4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A71E0 @ =sub_080A561C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
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
_080A71E0: .4byte sub_080A561C

	thumb_func_start sub_080A71E4
sub_080A71E4: @ 0x080A71E4
	push {lr}
	adds r2, r0, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5a
	ldr r0, [r0]
	ldr r1, [r2, #0x44]
	ldr r0, [r0, #0x44]
	cmp r1, r0
	ble _080A7206
	adds r0, r2, #0
	bl sub_080A7210
	b _080A720C
_080A7206:
	adds r0, r2, #0
	bl sub_080A7238
_080A720C:
	pop {r0}
	bx r0

	thumb_func_start sub_080A7210
sub_080A7210: @ 0x080A7210
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A7234 @ =sub_080A58C0
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r4, #0x85
	movs r0, #0
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7234: .4byte sub_080A58C0

	thumb_func_start sub_080A7238
sub_080A7238: @ 0x080A7238
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A7264 @ =sub_080A5B1C
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x52
	ldr r0, _080A7268 @ =0x0000FF80
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7264: .4byte sub_080A5B1C
_080A7268: .4byte 0x0000FF80

	thumb_func_start sub_080A726C
sub_080A726C: @ 0x080A726C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A72A4 @ =sub_080A5C44
	movs r1, #3
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _080A72A8 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xe0
	ands r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A729E
	rsbs r0, r3, #0
	strh r0, [r2]
_080A729E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A72A4: .4byte sub_080A5C44
_080A72A8: .4byte 0xFFFFFEFF

	thumb_func_start sub_080A72AC
sub_080A72AC: @ 0x080A72AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A72D4 @ =sub_080A5E30
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x85
	movs r0, #0x5a
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A72D4: .4byte sub_080A5E30

	thumb_func_start sub_080A72D8
sub_080A72D8: @ 0x080A72D8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A72FC @ =sub_080A63A0
	movs r1, #7
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A7300
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A7308
	.align 2, 0
_080A72FC: .4byte sub_080A63A0
_080A7300:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A7308:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x5e
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080A7338
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080A7338:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A7340
sub_080A7340: @ 0x080A7340
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r3, _080A7380 @ =gRngVal
	ldr r0, [r3]
	ldr r6, _080A7384 @ =0x00196225
	muls r0, r6, r0
	ldr r5, _080A7388 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	movs r4, #7
	ands r0, r4
	cmp r0, #0
	bne _080A7364
	ldr r0, [r2, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r2, #8]
_080A7364:
	ldr r0, [r3]
	muls r0, r6, r0
	adds r0, r0, r5
	str r0, [r3]
	lsrs r0, r0, #0x10
	ands r0, r4
	cmp r0, #7
	bhi _080A73B0
	lsls r0, r0, #2
	ldr r1, _080A738C @ =_080A7390
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080A7380: .4byte gRngVal
_080A7384: .4byte 0x00196225
_080A7388: .4byte 0x3C6EF35F
_080A738C: .4byte _080A7390
_080A7390: @ jump table
	.4byte _080A73B0 @ case 0
	.4byte _080A73B8 @ case 1
	.4byte _080A73B8 @ case 2
	.4byte _080A73B8 @ case 3
	.4byte _080A73C0 @ case 4
	.4byte _080A73C0 @ case 5
	.4byte _080A73C8 @ case 6
	.4byte _080A73C8 @ case 7
_080A73B0:
	adds r0, r2, #0
	bl sub_080A73D4
	b _080A73CE
_080A73B8:
	adds r0, r2, #0
	bl sub_080A742C
	b _080A73CE
_080A73C0:
	adds r0, r2, #0
	bl sub_080A7460
	b _080A73CE
_080A73C8:
	adds r0, r2, #0
	bl sub_080A7498
_080A73CE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080A73D4
sub_080A73D4: @ 0x080A73D4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A73F8 @ =sub_080A64F0
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A73FC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A7404
	.align 2, 0
_080A73F8: .4byte sub_080A64F0
_080A73FC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A7404:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A742C
sub_080A742C: @ 0x080A742C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A745C @ =sub_080A6704
	movs r1, #9
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A745C: .4byte sub_080A6704

	thumb_func_start sub_080A7460
sub_080A7460: @ 0x080A7460
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A7494 @ =sub_080A6914
	movs r1, #0xa
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A7494: .4byte sub_080A6914

	thumb_func_start sub_080A7498
sub_080A7498: @ 0x080A7498
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A74CC @ =sub_080A6AE8
	movs r1, #0xb
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0xc0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	adds r4, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A74CC: .4byte sub_080A6AE8
