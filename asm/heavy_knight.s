	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateHeavyKnight
CreateHeavyKnight: @ 0x080BEA08
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080BEA3C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080BEA40 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BEA44
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _080BEA4C
	.align 2, 0
_080BEA3C: .4byte ObjectMain
_080BEA40: .4byte ObjectDestroy
_080BEA44:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_080BEA4C:
	adds r0, r6, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r6, #8]
	ldr r0, [r6, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r6, #0x5c]
	subs r1, #0xc
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r6, #0
	movs r3, #9
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r6, #0
	adds r1, r2, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r6, #0
	bl ObjectInitSprite
	movs r4, #0
	movs r5, #0
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r6, #0x24]
	ldr r2, _080BEAE4 @ =gUnk_08351648
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	adds r0, r6, #0
	adds r0, #0x9e
	strb r4, [r0]
	str r5, [r6, #0x7c]
	adds r0, #0x12
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BEADA
	adds r0, r6, #0
	bl sub_080BF914
_080BEADA:
	adds r0, r6, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080BEAE4: .4byte gUnk_08351648

	thumb_func_start sub_080BEAE8
sub_080BEAE8: @ 0x080BEAE8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BEB00
	adds r0, r4, #0
	bl sub_080BFC28
	b _080BED30
_080BEB00:
	ldr r3, _080BEB6C @ =gUnk_08354C08
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r5, [r2]
	adds r1, r5, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	adds r6, r2, #0
	cmp r0, #0
	bne _080BEB2C
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BEB2C
	movs r0, #0xff
	strb r0, [r6]
_080BEB2C:
	ldr r2, [r4, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r4, #8]
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	adds r7, r1, #0
	cmp r0, #1
	bhi _080BEBE4
	movs r0, #2
	ands r2, r0
	adds r5, r4, #0
	adds r5, #0xac
	cmp r2, #0
	beq _080BEB56
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
_080BEB56:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080BEB74
	ldr r0, _080BEB70 @ =0x000059FF
	cmp r2, r0
	ble _080BEB7C
	b _080BEBDC
	.align 2, 0
_080BEB6C: .4byte gUnk_08354C08
_080BEB70: .4byte 0x000059FF
_080BEB74:
	subs r1, r1, r0
	ldr r0, _080BEBA4 @ =0x000059FF
	cmp r1, r0
	bgt _080BEBDC
_080BEB7C:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080BEBA8 @ =gRngVal
	ldr r0, [r2]
	ldr r5, _080BEBAC @ =0x00196225
	muls r0, r5, r0
	ldr r3, _080BEBB0 @ =0x3C6EF35F
	adds r1, r0, r3
	str r1, [r2]
	lsrs r0, r1, #0x10
	movs r3, #3
	ands r0, r3
	cmp r0, #3
	bne _080BEBB4
	adds r0, r4, #0
	bl sub_080BFD58
	b _080BED30
	.align 2, 0
_080BEBA4: .4byte 0x000059FF
_080BEBA8: .4byte gRngVal
_080BEBAC: .4byte 0x00196225
_080BEBB0: .4byte 0x3C6EF35F
_080BEBB4:
	adds r0, r1, #0
	muls r0, r5, r0
	ldr r1, _080BEBD0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #3
	bne _080BEBD4
	adds r0, r4, #0
	bl sub_080BFCC0
	b _080BED30
	.align 2, 0
_080BEBD0: .4byte 0x3C6EF35F
_080BEBD4:
	adds r0, r4, #0
	bl sub_080BFD0C
	b _080BED30
_080BEBDC:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
_080BEBE4:
	ldr r0, [r7]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080BEBEE
	b _080BED30
_080BEBEE:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	ldr r7, _080BECA8 @ =gUnk_08354C08
	mov ip, r0
	adds r5, r4, #0
	adds r5, #0x50
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, #0
	bne _080BECD6
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080BEC1E
	subs r0, r1, #1
	strb r0, [r6]
_080BEC1E:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	mov r1, ip
	strb r0, [r1]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BEC46
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080BEC46:
	ldrb r0, [r6]
	cmp r0, #0
	beq _080BECAC
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
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r1, [r1, r3]
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r1, r0
	beq _080BEC7E
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BEC7E
	rsbs r0, r2, #0
	strh r0, [r5]
_080BEC7E:
	ldrb r2, [r6]
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
	adds r3, r4, #0
	adds r3, #0x52
	cmp r1, r0
	beq _080BECD6
	strh r2, [r3]
	b _080BECD6
	.align 2, 0
_080BECA8: .4byte gUnk_08354C08
_080BECAC:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	strh r0, [r3]
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r2, [r0]
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BECF4
	rsbs r0, r2, #0
	strh r0, [r5]
_080BECD6:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BECF4
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BED06
_080BECF4:
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrh r0, [r1, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_080BED06:
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	ldrh r1, [r3]
	adds r0, r0, r1
	strh r0, [r3]
	mov r3, ip
	ldrb r0, [r3]
	subs r0, #1
	strb r0, [r3]
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BED30
	movs r0, #0
	strh r0, [r5]
_080BED30:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BED38
sub_080BED38: @ 0x080BED38
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r2, _080BEE5C @ =gUnk_08354C8C
	adds r5, r4, #0
	adds r5, #0x9f
	ldrb r3, [r5]
	adds r1, r3, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080BED6C
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BED6C
	movs r0, #0xff
	strb r0, [r5]
_080BED6C:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BED88
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080BED88:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080BED96
	b _080BEEEA
_080BED96:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	ldr r6, _080BEE5C @ =gUnk_08354C8C
	adds r3, r4, #0
	adds r3, #0x9f
	mov sb, r0
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080BEE8C
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
	bne _080BEDCC
	subs r0, r1, #1
	strb r0, [r3]
_080BEDCC:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r1, sb
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BEDF4
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080BEDF4:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BEE60
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
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BEE2C
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BEE2C
	rsbs r0, r2, #0
	strh r0, [r5]
_080BEE2C:
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
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BEE8C
	mov r0, r8
	strh r0, [r7]
	b _080BEE8C
	.align 2, 0
_080BEE5C: .4byte gUnk_08354C8C
_080BEE60:
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
	beq _080BEEAA
	rsbs r0, r2, #0
	strh r0, [r5]
_080BEE8C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BEEAA
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BEEBC
_080BEEAA:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BEEBC:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BEEEA
	movs r0, #0
	strh r0, [r5]
_080BEEEA:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _080BEF36
	ldr r2, _080BEF18 @ =sub_080BEAE8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BEF1C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BEF24
	.align 2, 0
_080BEF18: .4byte sub_080BEAE8
_080BEF1C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BEF24:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _080BEF4A
_080BEF36:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BEF4A
	adds r0, r4, #0
	bl sub_080BFC28
_080BEF4A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BEF58
sub_080BEF58: @ 0x080BEF58
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BEFD6
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r3, [r0]
	cmp r3, #3
	bne _080BEFD6
	ldr r2, _080BEF94 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BEF98 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BEF9C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r3
	cmp r0, #3
	bne _080BEFA0
	adds r0, r4, #0
	bl sub_080BFD0C
	b _080BF18A
	.align 2, 0
_080BEF94: .4byte gRngVal
_080BEF98: .4byte 0x00196225
_080BEF9C: .4byte 0x3C6EF35F
_080BEFA0:
	ldr r2, _080BEFC0 @ =sub_080BED38
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BEFC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BEFCC
	.align 2, 0
_080BEFC0: .4byte sub_080BED38
_080BEFC4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BEFCC:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	b _080BF186
_080BEFD6:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _080BEFEE
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080BEFEE
	adds r0, r4, #0
	bl sub_080BF654
_080BEFEE:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080BF0B4 @ =gUnk_08354D10
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080BF0E4
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
	bne _080BF024
	subs r0, r1, #1
	strb r0, [r3]
_080BF024:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r7, sb
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BF04A
	mov r0, r8
	strb r1, [r0]
_080BF04A:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BF0B8
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
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BF082
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF082
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF082:
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
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BF0E4
	mov r0, r8
	strh r0, [r7]
	b _080BF0E4
	.align 2, 0
_080BF0B4: .4byte gUnk_08354D10
_080BF0B8:
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
	beq _080BF102
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF0E4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF102
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BF114
_080BF102:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BF114:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	movs r6, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BF14C
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BF14E
_080BF14C:
	strh r6, [r5]
_080BF14E:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BF18A
	ldr r2, _080BF17C @ =sub_080BFC60
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF180
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF188
	.align 2, 0
_080BF17C: .4byte sub_080BFC60
_080BF180:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
_080BF186:
	ands r0, r1
_080BF188:
	str r0, [r4, #8]
_080BF18A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF198
sub_080BF198: @ 0x080BF198
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080BF252
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bne _080BF252
	ldr r2, _080BF1F8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BF1FC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BF200 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080BF21A
	ldr r2, _080BF204 @ =sub_080BEF58
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF208
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF210
	.align 2, 0
_080BF1F8: .4byte gRngVal
_080BF1FC: .4byte 0x00196225
_080BF200: .4byte 0x3C6EF35F
_080BF204: .4byte sub_080BEF58
_080BF208:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BF210:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	b _080BF402
_080BF21A:
	ldr r2, _080BF23C @ =sub_080BED38
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF240
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF248
	.align 2, 0
_080BF23C: .4byte sub_080BED38
_080BF240:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BF248:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	b _080BF402
_080BF252:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #5
	bne _080BF26A
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080BF26A
	adds r0, r4, #0
	bl sub_080BF654
_080BF26A:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r5, r4, #0
	adds r5, #0x50
	mov sb, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080BF330 @ =gUnk_08354D58
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080BF360
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
	bne _080BF2A0
	subs r0, r1, #1
	strb r0, [r3]
_080BF2A0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r7, sb
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BF2C6
	mov r0, r8
	strb r1, [r0]
_080BF2C6:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BF334
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
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BF2FE
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF2FE
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF2FE:
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
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BF360
	mov r0, r8
	strh r0, [r7]
	b _080BF360
	.align 2, 0
_080BF330: .4byte gUnk_08354D58
_080BF334:
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
	beq _080BF37E
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF360:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF37E
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BF390
_080BF37E:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BF390:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	movs r6, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BF3C8
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BF3CA
_080BF3C8:
	strh r6, [r5]
_080BF3CA:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BF406
	ldr r2, _080BF3F8 @ =sub_080BFC60
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF3FC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF404
	.align 2, 0
_080BF3F8: .4byte sub_080BFC60
_080BF3FC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
_080BF402:
	ands r0, r1
_080BF404:
	str r0, [r4, #8]
_080BF406:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF414
sub_080BF414: @ 0x080BF414
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r2, _080BF464 @ =gUnk_08354DA0
	adds r0, #0x9f
	ldrb r1, [r0]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080BF47E
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	bne _080BF47E
	ldr r2, _080BF468 @ =sub_080BED38
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF46C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF474
	.align 2, 0
_080BF464: .4byte gUnk_08354DA0
_080BF468: .4byte sub_080BED38
_080BF46C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BF474:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	b _080BF642
_080BF47E:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #5
	bne _080BF496
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080BF496
	adds r0, r4, #0
	bl sub_080BF654
_080BF496:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #2
	bne _080BF4AA
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080BF4AA
	adds r0, r4, #0
	bl sub_080BF654
_080BF4AA:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	ldr r6, _080BF570 @ =gUnk_08354DA0
	adds r3, r4, #0
	adds r3, #0x9f
	mov sb, r0
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080BF5A0
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
	bne _080BF4E0
	subs r0, r1, #1
	strb r0, [r3]
_080BF4E0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r7, sb
	strb r0, [r7]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080BF506
	mov r0, r8
	strb r1, [r0]
_080BF506:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080BF574
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
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080BF53E
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF53E
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF53E:
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
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r2, #2
	ldrsh r0, [r0, r2]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080BF5A0
	mov r0, r8
	strh r0, [r7]
	b _080BF5A0
	.align 2, 0
_080BF570: .4byte gUnk_08354DA0
_080BF574:
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
	beq _080BF5BE
	rsbs r0, r2, #0
	strh r0, [r5]
_080BF5A0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF5BE
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080BF5D0
_080BF5BE:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080BF5D0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	movs r6, #0
	mov r1, ip
	strh r0, [r1]
	mov r2, sb
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080BF608
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080BF60A
_080BF608:
	strh r6, [r5]
_080BF60A:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080BF646
	ldr r2, _080BF638 @ =sub_080BFC60
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BF63C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BF644
	.align 2, 0
_080BF638: .4byte sub_080BFC60
_080BF63C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
_080BF642:
	ands r0, r1
_080BF644:
	str r0, [r4, #8]
_080BF646:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF654
sub_080BF654: @ 0x080BF654
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080BF684 @ =sub_080BF7D0
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
	beq _080BF688
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BF690
	.align 2, 0
_080BF684: .4byte sub_080BF7D0
_080BF688:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BF690:
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
	ldr r0, _080BF710 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BF6E0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080BF6E0:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r2, _080BF714 @ =0x50400400
	str r2, [r4, #8]
	ldr r0, _080BF718 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080BF720
	ldr r0, [r4, #0x40]
	ldr r1, _080BF71C @ =0xFFFFD800
	adds r0, r0, r1
	str r0, [r4, #0x40]
	adds r0, r3, #0
	orrs r0, r2
	str r0, [r4, #8]
	b _080BF72C
	.align 2, 0
_080BF710: .4byte gUnk_03000510
_080BF714: .4byte 0x50400400
_080BF718: .4byte 0x20000043
_080BF71C: .4byte 0xFFFFD800
_080BF720:
	ldr r0, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x40]
	str r2, [r4, #8]
_080BF72C:
	movs r1, #0xf
	rsbs r1, r1, #0
	movs r2, #0xe
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	ldr r1, _080BF7B0 @ =gUnk_02020EE0
	ldr r0, _080BF7B4 @ =gUnk_0203AD3C
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
	bne _080BF7A8
	ldrb r0, [r4]
	cmp r0, #0
	bne _080BF76C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080BF7A8
_080BF76C:
	ldr r1, _080BF7B8 @ =gUnk_08D60FA4
	ldr r4, _080BF7BC @ =gSongTable
	ldr r2, _080BF7C0 @ =0x00000AAC
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080BF790
	ldr r1, _080BF7C4 @ =0x00000AA8
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080BF7A8
_080BF790:
	cmp r3, #0
	beq _080BF7A2
	ldr r0, _080BF7C8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080BF7A8
_080BF7A2:
	ldr r0, _080BF7CC @ =0x00000155
	bl m4aSongNumStart
_080BF7A8:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BF7B0: .4byte gUnk_02020EE0
_080BF7B4: .4byte gUnk_0203AD3C
_080BF7B8: .4byte gUnk_08D60FA4
_080BF7BC: .4byte gSongTable
_080BF7C0: .4byte 0x00000AAC
_080BF7C4: .4byte 0x00000AA8
_080BF7C8: .4byte gUnk_0203AD10
_080BF7CC: .4byte 0x00000155

	thumb_func_start sub_080BF7D0
sub_080BF7D0: @ 0x080BF7D0
	push {r4, r5, r6, lr}
	ldr r2, _080BF7EC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BF7F0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BF7F8
	.align 2, 0
_080BF7EC: .4byte gCurTask
_080BF7F0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BF7F8:
	adds r4, r0, #0
	ldr r6, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _080BF812
	ldr r0, [r2]
	bl TaskDestroy
	b _080BF90C
_080BF812:
	ldr r0, [r6, #8]
	ands r0, r5
	cmp r0, #0
	beq _080BF820
	orrs r1, r5
	str r1, [r4, #8]
	b _080BF90C
_080BF820:
	adds r1, r6, #0
	adds r1, #0x56
	ldrb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, [r6, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r4, #0x44]
	ldr r0, _080BF85C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080BF90C
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #5
	ble _080BF860
	ldr r0, [r4, #8]
	orrs r0, r5
	b _080BF90A
	.align 2, 0
_080BF85C: .4byte gUnk_03000510
_080BF860:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BF8D2
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080BF8D2
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080BF898
	ldr r2, _080BF890 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080BF894 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080BF89A
	.align 2, 0
_080BF890: .4byte gCurLevelInfo
_080BF894: .4byte 0x0000065E
_080BF898:
	movs r1, #0xff
_080BF89A:
	cmp r1, #0xff
	beq _080BF8D2
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080BF8EC @ =gUnk_02022EB0
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
	ldr r2, _080BF8F0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080BF8D2:
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080BF8F8
	ldr r0, [r4, #0x40]
	ldr r2, _080BF8F4 @ =0xFFFFD800
	adds r0, r0, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r1
	b _080BF90A
	.align 2, 0
_080BF8EC: .4byte gUnk_02022EB0
_080BF8F0: .4byte gUnk_02022F50
_080BF8F4: .4byte 0xFFFFD800
_080BF8F8:
	ldr r0, [r4, #0x40]
	movs r1, #0xa0
	lsls r1, r1, #6
	adds r0, r0, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BF90A:
	str r0, [r4, #8]
_080BF90C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BF914
sub_080BF914: @ 0x080BF914
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080BF944 @ =sub_080BF9EC
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
	beq _080BF948
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BF950
	.align 2, 0
_080BF944: .4byte sub_080BF9EC
_080BF948:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BF950:
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
	ldr r0, _080BF9E0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BF9A0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080BF9A0:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, _080BF9E4 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r2, _080BF9E8 @ =0x42110400
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080BF9C2
	orrs r2, r3
_080BF9C2:
	str r2, [r4, #8]
	movs r1, #0x40
	rsbs r1, r1, #0
	movs r2, #0x20
	rsbs r2, r2, #0
	movs r0, #0x20
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x40
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080BF9E0: .4byte gUnk_03000510
_080BF9E4: .4byte 0x20000043
_080BF9E8: .4byte 0x42110400

	thumb_func_start sub_080BF9EC
sub_080BF9EC: @ 0x080BF9EC
	push {r4, r5, r6, lr}
	ldr r2, _080BFA08 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080BFA0C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080BFA14
	.align 2, 0
_080BFA08: .4byte gCurTask
_080BFA0C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080BFA14:
	adds r5, r0, #0
	ldr r4, [r5, #0x70]
	ldr r1, [r5, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080BFA2E
	ldr r0, [r2]
	bl TaskDestroy
	b _080BFBD2
_080BFA2E:
	ldr r0, [r4, #8]
	ands r0, r3
	cmp r0, #0
	beq _080BFA3C
	orrs r1, r3
	str r1, [r5, #8]
	b _080BFBD2
_080BFA3C:
	ldr r0, [r4, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r4, #0x44]
	str r0, [r5, #0x44]
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	adds r3, r5, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080BFA78 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r6, #1
	adds r0, r6, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080BFA68
	b _080BFBD2
_080BFA68:
	ldr r0, [r4, #8]
	ands r0, r6
	cmp r0, #0
	beq _080BFA7C
	ldr r0, [r5, #8]
	orrs r0, r6
	b _080BFA84
	.align 2, 0
_080BFA78: .4byte gUnk_03000510
_080BFA7C:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFA84:
	str r0, [r5, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0
	bne _080BFA94
	b _080BFBD2
_080BFA94:
	subs r0, #2
	ldrb r0, [r0]
	cmp r0, #6
	bls _080BFA9E
	b _080BFBD2
_080BFA9E:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080BFB5E
	ldr r2, [r5, #0x6c]
	ldr r0, _080BFB04 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	ldr r0, [r2, #0x70]
	cmp r0, #0
	beq _080BFB5E
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	beq _080BFB5E
	ldr r2, _080BFB08 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080BFB0C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080BFB10 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080BFB18
	ldr r2, _080BFB14 @ =sub_080BEF58
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFB44
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFB4C
	.align 2, 0
_080BFB04: .4byte 0xFFFBFFFF
_080BFB08: .4byte gRngVal
_080BFB0C: .4byte 0x00196225
_080BFB10: .4byte 0x3C6EF35F
_080BFB14: .4byte sub_080BEF58
_080BFB18:
	ldr r2, _080BFB40 @ =sub_080BF198
	adds r0, r4, #0
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFB44
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFB4C
	.align 2, 0
_080BFB40: .4byte sub_080BF198
_080BFB44:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFB4C:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strb r0, [r6]
	b _080BFBD2
_080BFB5E:
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080BFBD2
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080BFBD2
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080BFB98
	ldr r2, _080BFB90 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _080BFB94 @ =0x0000065E
	adds r0, r0, r2
	ldrb r1, [r0]
	b _080BFB9A
	.align 2, 0
_080BFB90: .4byte gCurLevelInfo
_080BFB94: .4byte 0x0000065E
_080BFB98:
	movs r1, #0xff
_080BFB9A:
	cmp r1, #0xff
	beq _080BFBD2
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080BFBD8 @ =gUnk_02022EB0
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
	ldr r2, _080BFBDC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080BFBD2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080BFBD8: .4byte gUnk_02022EB0
_080BFBDC: .4byte gUnk_02022F50

	thumb_func_start sub_080BFBE0
sub_080BFBE0: @ 0x080BFBE0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFC04 @ =sub_080BEAE8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFC08
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFC10
	.align 2, 0
_080BFC04: .4byte sub_080BEAE8
_080BFC08:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFC10:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFC28
sub_080BFC28: @ 0x080BFC28
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFC4C @ =sub_080BFC60
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFC50
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFC58
	.align 2, 0
_080BFC4C: .4byte sub_080BFC60
_080BFC50:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFC58:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080BFC60
sub_080BFC60: @ 0x080BFC60
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080BFCB8
	ldr r2, _080BFC9C @ =sub_080BEAE8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFCA0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFCA8
	.align 2, 0
_080BFC9C: .4byte sub_080BEAE8
_080BFCA0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFCA8:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080BFCB8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFCC0
sub_080BFCC0: @ 0x080BFCC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFCEC @ =sub_080BEF58
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFCF0
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFCF8
	.align 2, 0
_080BFCEC: .4byte sub_080BEF58
_080BFCF0:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFCF8:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFD0C
sub_080BFD0C: @ 0x080BFD0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFD38 @ =sub_080BF198
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFD3C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFD44
	.align 2, 0
_080BFD38: .4byte sub_080BF198
_080BFD3C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFD44:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080BFD58
sub_080BFD58: @ 0x080BFD58
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080BFD84 @ =sub_080BF414
	movs r1, #1
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080BFD88
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080BFD90
	.align 2, 0
_080BFD84: .4byte sub_080BF414
_080BFD88:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080BFD90:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
