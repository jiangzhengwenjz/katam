	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateSwordKnight
CreateSwordKnight: @ 0x080B2DA4
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080B2DD8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080B2DDC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B2DE0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080B2DE8
	.align 2, 0
_080B2DD8: .4byte ObjectMain
_080B2DDC: .4byte ObjectDestroy
_080B2DE0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080B2DE8:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0x44]
	ldr r1, _080B2E64 @ =0xFFFFFF00
	adds r0, r0, r1
	str r0, [r4, #0x44]
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #6
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080B2E68 @ =gUnk_08351648
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
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080B2E5A
	adds r0, r4, #0
	bl sub_080B37DC
_080B2E5A:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080B2E64: .4byte 0xFFFFFF00
_080B2E68: .4byte gUnk_08351648

	thumb_func_start sub_080B2E6C
sub_080B2E6C: @ 0x080B2E6C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r6, [r0, #0xe]
	cmp r6, #0
	bne _080B2EA8
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x80
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B2E9A
	rsbs r0, r2, #0
	strh r0, [r5]
_080B2E9A:
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B2EA8
	strh r6, [r5]
_080B2EA8:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bhi _080B2F34
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0xac
	cmp r0, #0
	beq _080B2ECA
	adds r0, r4, #0
	bl sub_0803D368
	str r0, [r5]
_080B2ECA:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080B2EE4
	ldr r0, _080B2EE0 @ =0x00003FFF
	cmp r2, r0
	ble _080B2EEC
	b _080B2F2C
	.align 2, 0
_080B2EE0: .4byte 0x00003FFF
_080B2EE4:
	subs r1, r1, r0
	ldr r0, _080B2F14 @ =0x00003FFF
	cmp r1, r0
	bgt _080B2F2C
_080B2EEC:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r2, _080B2F18 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B2F1C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B2F20 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B2F24
	adds r0, r4, #0
	bl sub_080B3A60
	b _080B2F34
	.align 2, 0
_080B2F14: .4byte 0x00003FFF
_080B2F18: .4byte gRngVal
_080B2F1C: .4byte 0x00196225
_080B2F20: .4byte 0x3C6EF35F
_080B2F24:
	adds r0, r4, #0
	bl sub_080B3AAC
	b _080B2F34
_080B2F2C:
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
_080B2F34:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2F3C
sub_080B2F3C: @ 0x080B2F3C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B2F5C
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080B2F5C:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r6, [r0, #0xe]
	cmp r6, #0
	bne _080B2F8C
	adds r5, r4, #0
	adds r5, #0x50
	ldr r0, _080B2FBC @ =0x0000FF80
	strh r0, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B2F7E
	movs r0, #0x80
	strh r0, [r5]
_080B2F7E:
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B2F8C
	strh r6, [r5]
_080B2F8C:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x5a
	ble _080B2FDC
	ldr r2, _080B2FC0 @ =sub_080B2E6C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B2FC4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B2FCC
	.align 2, 0
_080B2FBC: .4byte 0x0000FF80
_080B2FC0: .4byte sub_080B2E6C
_080B2FC4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B2FCC:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080B2FDC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B2FE4
sub_080B2FE4: @ 0x080B2FE4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B306A
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _080B3082
	ldr r2, _080B3024 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3028 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B302C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B3030
	adds r0, r4, #0
	bl sub_080B3AAC
	b _080B31E2
	.align 2, 0
_080B3024: .4byte gRngVal
_080B3028: .4byte 0x00196225
_080B302C: .4byte 0x3C6EF35F
_080B3030:
	ldr r2, _080B3050 @ =sub_080B2F3C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3054
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B305C
	.align 2, 0
_080B3050: .4byte sub_080B2F3C
_080B3054:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B305C:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080B31E2
_080B306A:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #2
	bne _080B3082
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _080B3082
	adds r0, r4, #0
	bl sub_080B351C
_080B3082:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov sb, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080B3148 @ =gUnk_08353FCC
	adds r5, r4, #0
	adds r5, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080B3178
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
	bne _080B30B8
	subs r0, r1, #1
	strb r0, [r3]
_080B30B8:
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
	beq _080B30DE
	mov r0, r8
	strb r1, [r0]
_080B30DE:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B314C
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
	beq _080B3116
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B3116
	rsbs r0, r2, #0
	strh r0, [r5]
_080B3116:
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
	beq _080B3178
	mov r0, r8
	strh r0, [r7]
	b _080B3178
	.align 2, 0
_080B3148: .4byte gUnk_08353FCC
_080B314C:
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
	beq _080B3196
	rsbs r0, r2, #0
	strh r0, [r5]
_080B3178:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B3196
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B31A8
_080B3196:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080B31A8:
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
	bne _080B31E0
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B31E2
_080B31E0:
	strh r6, [r5]
_080B31E2:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B31F0
sub_080B31F0: @ 0x080B31F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B329A
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #4
	bne _080B32B2
	ldr r2, _080B3250 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3254 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B3258 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B3260
	ldr r2, _080B325C @ =sub_080B2FE4
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
	ble _080B3284
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B328C
	.align 2, 0
_080B3250: .4byte gRngVal
_080B3254: .4byte 0x00196225
_080B3258: .4byte 0x3C6EF35F
_080B325C: .4byte sub_080B2FE4
_080B3260:
	ldr r2, _080B3280 @ =sub_080B2F3C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3284
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B328C
	.align 2, 0
_080B3280: .4byte sub_080B2F3C
_080B3284:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B328C:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080B3412
_080B329A:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r1, [r0]
	mov r8, r0
	cmp r1, #4
	bne _080B32B2
	ldrb r0, [r4, #1]
	cmp r0, #2
	bne _080B32B2
	adds r0, r4, #0
	bl sub_080B351C
_080B32B2:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r5, r4, #0
	adds r5, #0x50
	mov sb, r0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r6, _080B3378 @ =gUnk_08354020
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r1, #0
	bne _080B33A8
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
	bne _080B32E8
	subs r0, r1, #1
	strb r0, [r3]
_080B32E8:
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
	beq _080B330E
	mov r0, r8
	strb r1, [r0]
_080B330E:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080B337C
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
	beq _080B3346
	strh r2, [r5]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B3346
	rsbs r0, r2, #0
	strh r0, [r5]
_080B3346:
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
	beq _080B33A8
	mov r0, r8
	strh r0, [r7]
	b _080B33A8
	.align 2, 0
_080B3378: .4byte gUnk_08354020
_080B337C:
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
	beq _080B33C6
	rsbs r0, r2, #0
	strh r0, [r5]
_080B33A8:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B33C6
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r5]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r5]
	b _080B33D8
_080B33C6:
	ldrb r0, [r3]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r5]
	adds r0, r0, r2
	strh r0, [r5]
_080B33D8:
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
	bne _080B3410
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B3412
_080B3410:
	strh r6, [r5]
_080B3412:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080B3420
sub_080B3420: @ 0x080B3420
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B346C @ =sub_080B3AF8
	movs r1, #5
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldr r2, _080B3470 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080B3474 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080B3478 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #3
	bne _080B3454
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
_080B3454:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B347C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3484
	.align 2, 0
_080B346C: .4byte sub_080B3AF8
_080B3470: .4byte gRngVal
_080B3474: .4byte 0x00196225
_080B3478: .4byte 0x3C6EF35F
_080B347C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3484:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080B3504 @ =gKirbys
	ldr r0, _080B3508 @ =gUnk_0203AD3C
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
	bne _080B34FC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B34BC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B34FC
_080B34BC:
	ldr r1, _080B350C @ =gUnk_08D60FA4
	ldr r4, _080B3510 @ =gSongTable
	ldr r2, _080B3514 @ =0x00000A14
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B34E2
	movs r1, #0xa1
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B34FC
_080B34E2:
	cmp r3, #0
	beq _080B34F4
	ldr r0, _080B3518 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B34FC
_080B34F4:
	movs r0, #0xa1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080B34FC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080B3504: .4byte gKirbys
_080B3508: .4byte gUnk_0203AD3C
_080B350C: .4byte gUnk_08D60FA4
_080B3510: .4byte gSongTable
_080B3514: .4byte 0x00000A14
_080B3518: .4byte gUnk_0203AD10

	thumb_func_start sub_080B351C
sub_080B351C: @ 0x080B351C
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B354C @ =sub_080B3694
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
	beq _080B3550
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B3558
	.align 2, 0
_080B354C: .4byte sub_080B3694
_080B3550:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B3558:
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
	ldr r0, _080B35D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B35A8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B35A8:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, _080B35D8 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r2, _080B35DC @ =0x50500400
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B35E4
	ldr r0, [r4, #0x40]
	ldr r1, _080B35E0 @ =0xFFFFE600
	adds r0, r0, r1
	str r0, [r4, #0x40]
	orrs r2, r3
	b _080B35EE
	.align 2, 0
_080B35D4: .4byte gUnk_03000510
_080B35D8: .4byte 0x20000043
_080B35DC: .4byte 0x50500400
_080B35E0: .4byte 0xFFFFE600
_080B35E4:
	ldr r0, [r4, #0x40]
	movs r1, #0xd0
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x40]
_080B35EE:
	str r2, [r4, #8]
	movs r1, #0xf
	rsbs r1, r1, #0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E2B0
	ldr r1, _080B3674 @ =gKirbys
	ldr r0, _080B3678 @ =gUnk_0203AD3C
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
	bne _080B366C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080B3630
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080B366C
_080B3630:
	ldr r1, _080B367C @ =gUnk_08D60FA4
	ldr r4, _080B3680 @ =gSongTable
	ldr r2, _080B3684 @ =0x00000A0C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080B3654
	ldr r1, _080B3688 @ =0x00000A08
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080B366C
_080B3654:
	cmp r3, #0
	beq _080B3666
	ldr r0, _080B368C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080B366C
_080B3666:
	ldr r0, _080B3690 @ =0x00000141
	bl m4aSongNumStart
_080B366C:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3674: .4byte gKirbys
_080B3678: .4byte gUnk_0203AD3C
_080B367C: .4byte gUnk_08D60FA4
_080B3680: .4byte gSongTable
_080B3684: .4byte 0x00000A0C
_080B3688: .4byte 0x00000A08
_080B368C: .4byte gUnk_0203AD10
_080B3690: .4byte 0x00000141

	thumb_func_start sub_080B3694
sub_080B3694: @ 0x080B3694
	push {r4, r5, r6, r7, lr}
	ldr r2, _080B36B0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B36B4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B36BC
	.align 2, 0
_080B36B0: .4byte gCurTask
_080B36B4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B36BC:
	adds r4, r0, #0
	ldr r5, [r4, #0x70]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	mov ip, r0
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	cmp r0, #0
	beq _080B36DA
	ldr r0, [r2]
	bl TaskDestroy
	b _080B37CE
_080B36DA:
	ldr r0, [r5, #8]
	mov r2, ip
	ands r0, r2
	cmp r0, #0
	beq _080B36EA
	orrs r1, r2
	str r1, [r4, #8]
	b _080B37CE
_080B36EA:
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r6, [r5, #0x40]
	str r6, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	ldr r0, _080B372C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r7, #1
	adds r0, r7, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080B37CE
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #3
	ble _080B3730
	ldr r0, [r4, #8]
	mov r3, ip
	orrs r0, r3
	str r0, [r4, #8]
	b _080B37CE
	.align 2, 0
_080B372C: .4byte gUnk_03000510
_080B3730:
	ldr r0, [r5, #8]
	ands r0, r7
	cmp r0, #0
	beq _080B3748
	ldr r1, _080B3744 @ =0xFFFFE600
	adds r0, r6, r1
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	orrs r0, r7
	b _080B3758
	.align 2, 0
_080B3744: .4byte 0xFFFFE600
_080B3748:
	movs r2, #0xd0
	lsls r2, r2, #5
	adds r0, r6, r2
	str r0, [r4, #0x40]
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3758:
	str r0, [r4, #8]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B37CE
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B37CE
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080B3794
	ldr r2, _080B378C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r3, _080B3790 @ =0x0000065E
	adds r0, r0, r3
	ldrb r1, [r0]
	b _080B3796
	.align 2, 0
_080B378C: .4byte gCurLevelInfo
_080B3790: .4byte 0x0000065E
_080B3794:
	movs r1, #0xff
_080B3796:
	cmp r1, #0xff
	beq _080B37CE
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B37D4 @ =gUnk_02022EB0
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
	ldr r2, _080B37D8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B37CE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080B37D4: .4byte gUnk_02022EB0
_080B37D8: .4byte gUnk_02022F50

	thumb_func_start sub_080B37DC
sub_080B37DC: @ 0x080B37DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080B380C @ =sub_080B38B0
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
	beq _080B3810
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B3818
	.align 2, 0
_080B380C: .4byte sub_080B38B0
_080B3810:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B3818:
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
	strh r6, [r4, #4]
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
	ldr r0, _080B38A8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080B3868
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080B3868:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	str r6, [r4, #0x68]
	ldr r2, _080B38AC @ =0x42110400
	str r2, [r4, #8]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B3888
	orrs r2, r3
_080B3888:
	str r2, [r4, #8]
	movs r1, #0x1e
	rsbs r1, r1, #0
	movs r2, #0x30
	rsbs r2, r2, #0
	movs r0, #0x30
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x1e
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080B38A8: .4byte gUnk_03000510
_080B38AC: .4byte 0x42110400

	thumb_func_start sub_080B38B0
sub_080B38B0: @ 0x080B38B0
	push {r4, r5, lr}
	ldr r2, _080B38CC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080B38D0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080B38D8
	.align 2, 0
_080B38CC: .4byte gCurTask
_080B38D0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080B38D8:
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	mov ip, r0
	ldr r1, [r4, #8]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _080B38F4
	ldr r0, [r2]
	bl TaskDestroy
	b _080B3A0A
_080B38F4:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _080B3904
	orrs r1, r3
	str r1, [r4, #8]
	b _080B3A0A
_080B3904:
	mov r1, ip
	ldr r0, [r1, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r1, #0x44]
	str r0, [r4, #0x44]
	adds r1, #0x56
	ldrb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x56
	strb r0, [r3]
	ldr r0, _080B3940 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r5, #1
	adds r0, r5, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	bne _080B3A0A
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r5
	cmp r0, #0
	beq _080B3944
	ldr r0, [r4, #8]
	orrs r0, r5
	b _080B394C
	.align 2, 0
_080B3940: .4byte gUnk_03000510
_080B3944:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B394C:
	str r0, [r4, #8]
	mov r5, ip
	adds r5, #0x85
	ldrb r0, [r5]
	cmp r0, #0
	beq _080B3A0A
	mov r0, ip
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bhi _080B3A0A
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080B3998
	ldr r2, [r4, #0x6c]
	ldr r0, _080B3994 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r4, #8]
	ldr r0, [r2, #0x70]
	cmp r0, #0
	beq _080B3998
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x16
	ands r0, r1
	cmp r0, #0
	beq _080B3998
	mov r0, ip
	bl sub_080B3420
	movs r0, #0
	strb r0, [r5]
	b _080B3A0A
	.align 2, 0
_080B3994: .4byte 0xFFFBFFFF
_080B3998:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080B3A0A
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080B3A0A
	ldrb r0, [r3]
	cmp r0, #0xff
	beq _080B39D0
	ldr r2, _080B39C8 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080B39CC @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080B39D2
	.align 2, 0
_080B39C8: .4byte gCurLevelInfo
_080B39CC: .4byte 0x0000065E
_080B39D0:
	movs r1, #0xff
_080B39D2:
	cmp r1, #0xff
	beq _080B3A0A
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080B3A10 @ =gUnk_02022EB0
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
	ldr r2, _080B3A14 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080B3A0A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080B3A10: .4byte gUnk_02022EB0
_080B3A14: .4byte gUnk_02022F50

	thumb_func_start sub_080B3A18
sub_080B3A18: @ 0x080B3A18
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B3A3C @ =sub_080B2E6C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3A40
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3A48
	.align 2, 0
_080B3A3C: .4byte sub_080B2E6C
_080B3A40:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3A48:
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

	thumb_func_start sub_080B3A60
sub_080B3A60: @ 0x080B3A60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B3A8C @ =sub_080B2FE4
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
	ble _080B3A90
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3A98
	.align 2, 0
_080B3A8C: .4byte sub_080B2FE4
_080B3A90:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3A98:
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

	thumb_func_start sub_080B3AAC
sub_080B3AAC: @ 0x080B3AAC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080B3AD8 @ =sub_080B31F0
	movs r1, #3
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
	ble _080B3ADC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3AE4
	.align 2, 0
_080B3AD8: .4byte sub_080B31F0
_080B3ADC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3AE4:
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

	thumb_func_start sub_080B3AF8
sub_080B3AF8: @ 0x080B3AF8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080B3B46
	ldr r2, _080B3B28 @ =sub_080B2E6C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080B3B2C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080B3B34
	.align 2, 0
_080B3B28: .4byte sub_080B2E6C
_080B3B2C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080B3B34:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _080B3B70
_080B3B46:
	ldrb r0, [r4, #1]
	cmp r0, #1
	bne _080B3B52
	adds r0, r4, #0
	bl sub_080B351C
_080B3B52:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r5, [r0, #0xe]
	cmp r5, #0
	bne _080B3B70
	adds r0, r4, #0
	bl sub_0809D998
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080B3B70
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
_080B3B70:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
