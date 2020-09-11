	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateDroppy
CreateDroppy: @ 0x0809FD40
	push {r4, r5, r6, lr}
	sub sp, #0x2c
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _0809FD74 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0809FD78 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809FD7C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809FD84
	.align 2, 0
_0809FD74: .4byte ObjectMain
_0809FD78: .4byte ObjectDestroy
_0809FD7C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809FD84:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _0809FDB2
	movs r0, #1
	orrs r2, r0
	b _0809FDB8
_0809FDB2:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_0809FDB8:
	str r2, [r5, #8]
	movs r4, #5
	rsbs r4, r4, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #6
	bl sub_0803E308
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_0803E2B0
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _0809FE90 @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	beq _0809FE68
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp, #4]
	add r1, sp, #4
	movs r3, #0
	movs r2, #0
	ldr r0, _0809FE94 @ =0x000002F7
	strh r0, [r1, #0xc]
	adds r0, r1, #0
	strb r3, [r0, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	adds r0, r1, #0
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	adds r2, r1, #0
	ldrb r1, [r4]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #0xc]
	adds r0, r2, #0
	bl sub_08155128
	add r0, sp, #4
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_0809FE68:
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0809FE98 @ =sub_0809EF88
	str r0, [r5, #0x7c]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _0809FE86
	adds r0, r5, #0
	bl sub_080A09A4
_0809FE86:
	adds r0, r5, #0
	add sp, #0x2c
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0809FE90: .4byte gUnk_08351648
_0809FE94: .4byte 0x000002F7
_0809FE98: .4byte sub_0809EF88

	thumb_func_start sub_0809FE9C
sub_0809FE9C: @ 0x0809FE9C
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #2
	bne _0809FEB4
	adds r0, r4, #0
	bl sub_080A0D60
	b _0809FF18
_0809FEB4:
	ldr r5, [r4, #0xc]
	movs r0, #0x10
	ands r5, r0
	cmp r5, #0
	beq _0809FEC6
	adds r0, r4, #0
	bl sub_080A0D30
	b _0809FF18
_0809FEC6:
	ldrb r0, [r1, #0xe]
	cmp r0, #1
	bne _0809FED4
	adds r0, r4, #0
	bl sub_080A0C14
	b _0809FF18
_0809FED4:
	ldr r2, _0809FF0C @ =sub_080A0BA4
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	movs r1, #5
	rsbs r1, r1, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r2, #0
	movs r3, #5
	bl sub_0803E2B0
	adds r0, r4, #0
	adds r0, #0x50
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #1
	beq _0809FF14
	cmp r0, #2
	beq _0809FF10
	movs r0, #0x3c
	b _0809FF16
	.align 2, 0
_0809FF0C: .4byte sub_080A0BA4
_0809FF10:
	movs r0, #0xb4
	b _0809FF16
_0809FF14:
	movs r0, #0x5a
_0809FF16:
	strh r0, [r4, #4]
_0809FF18:
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_0809FF20
sub_0809FF20: @ 0x0809FF20
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _0809FF58 @ =sub_0809FF6C
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xa0
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809FF42
	rsbs r0, r3, #0
	strh r0, [r2]
_0809FF42:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #1
	beq _0809FF62
	cmp r0, #2
	beq _0809FF5C
	movs r0, #0x96
	lsls r0, r0, #2
	b _0809FF64
	.align 2, 0
_0809FF58: .4byte sub_0809FF6C
_0809FF5C:
	movs r0, #0xb4
	lsls r0, r0, #1
	b _0809FF64
_0809FF62:
	movs r0, #0x78
_0809FF64:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0809FF6C
sub_0809FF6C: @ 0x0809FF6C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r2, [r5, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0809FF9E
	eors r2, r3
	str r2, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_0809FF9E:
	ldrb r1, [r5, #1]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _0809FFAA
	b _080A00B0
_0809FFAA:
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _0809FFBC
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_0809FFBC:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	ldr r0, [r5, #0x40]
	adds r6, r0, r1
	ldr r4, _080A00A4 @ =gCurLevelInfo
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	mov r8, r2
	mov sb, r1
	cmp r6, r0
	bgt _080A00B0
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r6, r0
	blt _080A002C
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A002C
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A002C
	ldr r4, _080A00A8 @ =gUnk_082D88B8
	lsls r1, r6, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080A009A
_080A002C:
	mov r0, r8
	asrs r1, r0, #0x10
	ldr r0, [r5, #0x40]
	adds r1, r0, r1
	ldr r4, _080A00A4 @ =gCurLevelInfo
	mov r7, sb
	ldrb r6, [r7]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A00B0
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A00B0
	ldr r0, [r5, #0x44]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r2, r0, r7
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A00B0
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A00B0
	ldr r4, _080A00A8 @ =gUnk_082D88B8
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _080A00AC @ =0xF0000200
	ands r1, r0
	cmp r1, #0
	bne _080A00B0
_080A009A:
	adds r0, r5, #0
	bl sub_080A0C44
	b _080A0132
	.align 2, 0
_080A00A4: .4byte gCurLevelInfo
_080A00A8: .4byte gUnk_082D88B8
_080A00AC: .4byte 0xF0000200
_080A00B0:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080A00C4
	adds r0, r5, #0
	bl sub_080A0C6C
_080A00C4:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A0132
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A0132
	ldr r2, _080A00FC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A0100 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A0104 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r0, #1
	ands r4, r0
	cmp r4, #0
	beq _080A0108
	adds r0, r5, #0
	bl sub_0809FE9C
	b _080A0132
	.align 2, 0
_080A00FC: .4byte gRngVal
_080A0100: .4byte 0x00196225
_080A0104: .4byte 0x3C6EF35F
_080A0108:
	ldr r2, _080A0140 @ =sub_080A0BDC
	adds r0, r5, #0
	movs r1, #2
	bl ObjectSetFunc
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #4
	movs r3, #5
	bl sub_0803E2B0
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	movs r0, #0x1e
	strh r0, [r5, #4]
_080A0132:
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A0140: .4byte sub_080A0BDC

	thumb_func_start sub_080A0144
sub_080A0144: @ 0x080A0144
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r2, [r5, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080A0174
	eors r2, r3
	str r2, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A0174:
	ldrb r1, [r5, #1]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _080A0180
	b _080A0284
_080A0180:
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080A0192
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080A0192:
	lsls r2, r2, #0x10
	asrs r1, r2, #0x10
	ldr r0, [r5, #0x40]
	adds r6, r0, r1
	ldr r4, _080A0278 @ =gCurLevelInfo
	adds r1, r5, #0
	adds r1, #0x56
	ldrb r7, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r7, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	mov r8, r2
	mov sb, r1
	cmp r6, r0
	bgt _080A0284
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r6, r0
	blt _080A0202
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A0202
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A0202
	ldr r4, _080A027C @ =gUnk_082D88B8
	lsls r1, r6, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r1, r0
	cmp r1, #0
	bne _080A0270
_080A0202:
	mov r0, r8
	asrs r1, r0, #0x10
	ldr r0, [r5, #0x40]
	adds r1, r0, r1
	ldr r4, _080A0278 @ =gCurLevelInfo
	mov r7, sb
	ldrb r6, [r7]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A0284
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A0284
	ldr r0, [r5, #0x44]
	movs r7, #0x80
	lsls r7, r7, #6
	adds r2, r0, r7
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A0284
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A0284
	ldr r4, _080A027C @ =gUnk_082D88B8
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	ldr r0, _080A0280 @ =0xF0000200
	ands r1, r0
	cmp r1, #0
	bne _080A0284
_080A0270:
	adds r0, r5, #0
	bl sub_080A0C44
	b _080A0298
	.align 2, 0
_080A0278: .4byte gCurLevelInfo
_080A027C: .4byte gUnk_082D88B8
_080A0280: .4byte 0xF0000200
_080A0284:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080A0298
	adds r0, r5, #0
	bl sub_080A0C6C
_080A0298:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A02A4
sub_080A02A4: @ 0x080A02A4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0x40
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080A02BE
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xa
	b _080A02C8
_080A02BE:
	cmp r1, #0x3f
	bgt _080A02CA
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #9
_080A02C8:
	strb r0, [r1]
_080A02CA:
	adds r5, r4, #0
	adds r5, #0x62
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A02EC
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809FE9C
	movs r0, #0xf
	strh r0, [r4, #4]
_080A02EC:
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A02FC
	adds r0, r4, #0
	bl sub_080A0C8C
_080A02FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0304
sub_080A0304: @ 0x080A0304
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080A0334
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xa0
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A032C
	strh r2, [r1]
_080A032C:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xb
	b _080A0350
_080A0334:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x12
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A039C @ =0xFFFFFEC0
	cmp r0, r2
	bge _080A034A
	strh r2, [r1]
_080A034A:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0xc
_080A0350:
	strb r0, [r1]
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r2, r4, #0
	adds r2, #0x62
	cmp r0, #0x3c
	bgt _080A036E
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A0394
_080A036E:
	ldrb r1, [r2]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A0380
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
_080A0380:
	ldr r2, _080A03A0 @ =sub_080A0D00
	adds r0, r4, #0
	movs r1, #0xd
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080A0394:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A039C: .4byte 0xFFFFFEC0
_080A03A0: .4byte sub_080A0D00

	thumb_func_start sub_080A03A4
sub_080A03A4: @ 0x080A03A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	ldr r2, [r6, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r6, #8]
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #1
	mov sl, r0
	ands r0, r1
	cmp r0, #0
	beq _080A03D8
	mov r1, sl
	eors r2, r1
	str r2, [r6, #8]
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A03D8:
	ldrb r0, [r6, #1]
	movs r5, #7
	ands r5, r0
	cmp r5, #7
	bne _080A047E
	ldr r2, _080A048C @ =0x00000293
	adds r0, r6, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	adds r7, r0, #0
	ldr r0, _080A0490 @ =gRngVal
	mov r8, r0
	ldr r0, [r0]
	ldr r1, _080A0494 @ =0x00196225
	mov ip, r1
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r4, _080A0498 @ =0x3C6EF35F
	adds r0, r0, r4
	lsrs r3, r0, #0x10
	movs r2, #0xf
	ands r3, r2
	subs r3, r5, r3
	mov r1, ip
	muls r1, r0, r1
	adds r1, r1, r4
	lsrs r0, r1, #0x10
	ands r0, r2
	subs r0, r5, r0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x10
	mov sb, r0
	mov r2, ip
	muls r2, r1, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	lsrs r0, r2, #0x10
	movs r1, #0xff
	ands r0, r1
	adds r0, #0x20
	strh r0, [r7, #0x3e]
	mov r0, ip
	muls r0, r2, r0
	adds r0, r0, r4
	mov r1, r8
	str r0, [r1]
	lsrs r1, r0, #0x10
	movs r0, #0x7f
	ands r1, r0
	rsbs r0, r1, #0
	strh r0, [r7, #0x3c]
	lsls r3, r3, #0x18
	asrs r2, r3, #0x10
	cmp r2, #0
	ble _080A0450
	strh r1, [r7, #0x3c]
_080A0450:
	mov r1, sb
	lsls r0, r1, #0x10
	asrs r3, r0, #0x10
	cmp r3, #0
	ble _080A0460
	ldrh r0, [r7, #0x3e]
	rsbs r0, r0, #0
	strh r0, [r7, #0x3e]
_080A0460:
	ldr r0, [r6, #8]
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _080A0472
	ldrh r0, [r7, #6]
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #6]
_080A0472:
	ldr r0, [r7, #0x34]
	adds r0, r0, r2
	str r0, [r7, #0x34]
	ldr r0, [r7, #0x38]
	adds r0, r0, r3
	str r0, [r7, #0x38]
_080A047E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A048C: .4byte 0x00000293
_080A0490: .4byte gRngVal
_080A0494: .4byte 0x00196225
_080A0498: .4byte 0x3C6EF35F

	thumb_func_start sub_080A049C
sub_080A049C: @ 0x080A049C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xa
	bhi _080A04F4
	ldrb r0, [r6]
	cmp r0, #0
	bne _080A04F4
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r6, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080A04F4
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080A04F4
	cmp r0, #0x7a
	bhi _080A04F4
	movs r1, #0x88
	lsls r1, r1, #1
	adds r7, r6, r1
	ldr r0, [r7]
	cmp r0, #0
	bne _080A04F4
	ldr r4, [r6, #8]
	ldr r0, _080A04F8 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	bne _080A04F4
	ldr r2, _080A04FC @ =0x00000103
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A0500
_080A04F4:
	movs r0, #0
	b _080A059C
	.align 2, 0
_080A04F8: .4byte 0x03800B00
_080A04FC: .4byte 0x00000103
_080A0500:
	ldr r2, _080A05A8 @ =sub_080A05C8
	adds r0, r5, #0
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, _080A05AC @ =gUnk_08352E18
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	str r6, [r5, #0x6c]
	subs r0, #0xe
	strb r1, [r0]
	ldr r1, _080A05B0 @ =gUnk_02020EE0
	ldr r0, _080A05B4 @ =gUnk_0203AD3C
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
	bne _080A059A
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A055C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A059A
_080A055C:
	ldr r1, _080A05B8 @ =gUnk_08D60FA4
	ldr r4, _080A05BC @ =gSongTable
	ldr r2, _080A05C0 @ =0x00000A44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A0582
	movs r1, #0xa4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A059A
_080A0582:
	cmp r3, #0
	beq _080A0592
	ldr r0, _080A05C4 @ =gUnk_0203AD10
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	bne _080A059A
_080A0592:
	movs r0, #0xa4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080A059A:
	movs r0, #1
_080A059C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A05A8: .4byte sub_080A05C8
_080A05AC: .4byte gUnk_08352E18
_080A05B0: .4byte gUnk_02020EE0
_080A05B4: .4byte gUnk_0203AD3C
_080A05B8: .4byte gUnk_08D60FA4
_080A05BC: .4byte gSongTable
_080A05C0: .4byte 0x00000A44
_080A05C4: .4byte gUnk_0203AD10

	thumb_func_start sub_080A05C8
sub_080A05C8: @ 0x080A05C8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x28
	adds r4, r0, #0
	adds r0, #0xac
	ldr r5, [r0]
	ldr r0, _080A06F0 @ =0x00000103
	adds r3, r5, r0
	ldrb r1, [r3]
	cmp r1, #0
	beq _080A060E
	adds r0, r4, #0
	adds r0, #0x9e
	movs r2, #0
	strb r1, [r0]
	ldrb r1, [r3]
	subs r0, #0x1a
	strb r1, [r0]
	strb r2, [r3]
	adds r0, r5, #0
	bl sub_0806F260
	ldr r2, _080A06F4 @ =0x000002A9
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08097B9C
_080A060E:
	ldr r1, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r5, [r2]
	cmp r5, #0xf
	beq _080A0624
	b _080A0848
_080A0624:
	ldrb r0, [r4, #1]
	cmp r0, #0xe
	bne _080A0636
	ldr r2, _080A06F8 @ =0x0000028F
	adds r0, r4, #0
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
_080A0636:
	ldrb r0, [r4, #1]
	cmp r0, #0x10
	bne _080A064E
	ldr r2, _080A06F8 @ =0x0000028F
	adds r0, r4, #0
	movs r1, #0
	movs r3, #3
	bl sub_0808AE30
	movs r1, #0xe0
	lsls r1, r1, #2
	strh r1, [r0, #0x20]
_080A064E:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080A065A
	b _080A0854
_080A065A:
	ldr r2, _080A06FC @ =gUnk_08352E28
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	adds r0, r0, r2
	ldrb r3, [r0]
	adds r6, r1, #0
	mov sl, r2
	cmp r3, #0
	bne _080A070C
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r2, [r0]
	cmp r2, #0
	beq _080A06BA
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	ldr r0, _080A0700 @ =0x000002F7
	strh r0, [r1, #0xc]
	ldrb r0, [r6]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	ands r5, r2
	strb r5, [r0, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_080A06BA:
	ldr r0, [r4, #8]
	ldr r1, _080A0704 @ =0xFFFFF5FF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r2, _080A0708 @ =sub_080A03A4
	adds r0, r4, #0
	movs r1, #0x13
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x90
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A06EA
	b _080A0854
_080A06EA:
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080A0854
	.align 2, 0
_080A06F0: .4byte 0x00000103
_080A06F4: .4byte 0x000002A9
_080A06F8: .4byte 0x0000028F
_080A06FC: .4byte gUnk_08352E28
_080A0700: .4byte 0x000002F7
_080A0704: .4byte 0xFFFFF5FF
_080A0708: .4byte sub_080A03A4
_080A070C:
	adds r0, r4, #0
	adds r0, #0x2f
	ldrb r3, [r0]
	cmp r3, #0
	beq _080A075A
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r1, sp
	movs r2, #0
	ldr r0, _080A07A8 @ =0x000002F7
	strh r0, [r1, #0xc]
	ldrb r0, [r6]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r2, [r0, #0x10]
	strh r2, [r0, #0x12]
	strh r2, [r0, #0x14]
	strh r2, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	ands r5, r3
	strb r5, [r0, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_080A075A:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #0x28
	bne _080A0786
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A0786
	ldr r0, [r4, #0x44]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	str r0, [r4, #0x44]
_080A0786:
	movs r5, #0
	ldr r1, _080A07AC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080A07B0 @ =gUnk_08352E28
	mov sl, r7
	ldr r7, _080A07B4 @ =gUnk_08352E43
	mov ip, r7
	ldr r7, _080A07B8 @ =gUnk_08352E5E
	mov r8, r7
	movs r7, #0x56
	adds r7, r7, r4
	mov sb, r7
	b _080A07D0
	.align 2, 0
_080A07A8: .4byte 0x000002F7
_080A07AC: .4byte gUnk_020229D4
_080A07B0: .4byte gUnk_08352E28
_080A07B4: .4byte gUnk_08352E43
_080A07B8: .4byte gUnk_08352E5E
_080A07BC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x1f
	bhi _080A07D8
	movs r3, #1
	lsls r3, r5
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A07D0:
	cmp r0, #0
	bne _080A07BC
	orrs r2, r3
	str r2, [r1]
_080A07D8:
	lsls r1, r5, #3
	adds r1, r1, r5
	lsls r1, r1, #2
	ldr r0, _080A0844 @ =gUnk_020229E0
	adds r1, r1, r0
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	ldrb r0, [r6]
	add r0, sl
	ldrb r0, [r0]
	strb r0, [r1, #0xc]
	ldrb r0, [r6]
	add r0, ip
	ldrb r0, [r0]
	strb r0, [r1, #0xe]
	ldrb r0, [r6]
	strb r0, [r1, #0xf]
	ldrb r0, [r6]
	add r0, r8
	ldrb r0, [r0]
	strb r0, [r1, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, sb
	ldrb r0, [r2]
	bl CreateObject
	str r4, [r0, #0x70]
	b _080A0854
	.align 2, 0
_080A0844: .4byte gUnk_020229E0
_080A0848:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _080A0854
	movs r0, #0xf
	strb r0, [r2]
_080A0854:
	add sp, #0x28
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080A0864
sub_080A0864: @ 0x080A0864
	push {r4, r5, lr}
	mov ip, r0
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	mov r2, ip
	adds r2, #0x9e
	ldrb r0, [r2]
	ldr r4, _080A091C @ =gUnk_08352ED0
	cmp r0, #0
	bne _080A0944
	mov r3, ip
	adds r3, #0x9f
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A089C
	subs r0, r1, #1
	strb r0, [r3]
_080A089C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A08C2
	mov r0, ip
	adds r0, #0x83
	strb r1, [r0]
_080A08C2:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A0920
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A08F0
	mov r0, ip
	adds r0, #0x50
	strh r2, [r0]
_080A08F0:
	ldrb r2, [r3]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r4
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r2, [r1, #2]
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A0944
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	b _080A0944
	.align 2, 0
_080A091C: .4byte gUnk_08352ED0
_080A0920:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #2]
	mov r1, ip
	adds r1, #0x52
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x50
	strh r1, [r0]
_080A0944:
	mov r2, ip
	adds r2, #0x50
	mov r3, ip
	adds r3, #0x9f
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrh r0, [r0, #6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r1, [r3]
	adds r1, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r4
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A099E
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080A099E
	mov r0, ip
	bl sub_0809FE9C
_080A099E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A09A4
sub_080A09A4: @ 0x080A09A4
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080A09D4 @ =sub_080A0A78
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
	beq _080A09D8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080A09E0
	.align 2, 0
_080A09D4: .4byte sub_080A0A78
_080A09D8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080A09E0:
	adds r0, r4, #0
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
	ldr r0, _080A0A74 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080A0A2E
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080A0A2E:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0x14
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A0A74: .4byte gUnk_03000510

	thumb_func_start sub_080A0A78
sub_080A0A78: @ 0x080A0A78
	push {r4, r5, r6, lr}
	ldr r0, _080A0A94 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A0A98
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A0AA0
	.align 2, 0
_080A0A94: .4byte gCurTask
_080A0A98:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A0AA0:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080A0AF4 @ =0x0000FFFF
	cmp r2, r4
	beq _080A0AC2
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080A0AC2
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080A0AC2:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x56
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A0B96
	ldr r0, [r6, #8]

	thumb_func_start sub_080A0AE4
sub_080A0AE4: @ 0x080A0AE4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A0AF8
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080A0B00
	.align 2, 0
_080A0AF4: .4byte 0x0000FFFF
_080A0AF8:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A0B00:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0xa
	bhi _080A0B96
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080A0B24
	ldr r0, _080A0B20 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	b _080A0B96
	.align 2, 0
_080A0B20: .4byte 0xFFFBFFFF
_080A0B24:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080A0B96
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080A0B96
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080A0B5C
	ldr r2, _080A0B54 @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080A0B58 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080A0B5E
	.align 2, 0
_080A0B54: .4byte gCurLevelInfo
_080A0B58: .4byte 0x0000065E
_080A0B5C:
	movs r1, #0xff
_080A0B5E:
	cmp r1, #0xff
	beq _080A0B96
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080A0B9C @ =gUnk_02022EB0
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
	ldr r2, _080A0BA0 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080A0B96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A0B9C: .4byte gUnk_02022EB0
_080A0BA0: .4byte gUnk_02022F50

	thumb_func_start sub_080A0BA4
sub_080A0BA4: @ 0x080A0BA4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #4
	orrs r0, r5
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A0BC2
	adds r0, r4, #0
	bl sub_0809FF20
_080A0BC2:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080A0BD6
	adds r0, r4, #0
	bl sub_080A0C6C
_080A0BD6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A0BDC
sub_080A0BDC: @ 0x080A0BDC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #4
	orrs r0, r5
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A0BFA
	adds r0, r4, #0
	bl sub_0809FE9C
_080A0BFA:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080A0C0E
	adds r0, r4, #0
	bl sub_080A0C6C
_080A0C0E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A0C14
sub_080A0C14: @ 0x080A0C14
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A0C40 @ =sub_080A0144
	movs r1, #3
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x90
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A0C38
	rsbs r0, r3, #0
	strh r0, [r2]
_080A0C38:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A0C40: .4byte sub_080A0144

	thumb_func_start sub_080A0C44
sub_080A0C44: @ 0x080A0C44
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A0C68 @ =sub_080A02A4
	movs r1, #8
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A0C68: .4byte sub_080A02A4

	thumb_func_start sub_080A0C6C
sub_080A0C6C: @ 0x080A0C6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A0C88 @ =sub_080A02A4
	movs r1, #8
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A0C88: .4byte sub_080A02A4

	thumb_func_start sub_080A0C8C
sub_080A0C8C: @ 0x080A0C8C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A0CA8 @ =sub_080A0CAC
	movs r1, #0xd
	bl ObjectSetFunc
	adds r4, #0x52
	movs r0, #0x90
	lsls r0, r0, #2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A0CA8: .4byte sub_080A0CAC

	thumb_func_start sub_080A0CAC
sub_080A0CAC: @ 0x080A0CAC
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #8
	bne _080A0CBE
	adds r0, r4, #0
	bl sub_080A0CCC
_080A0CBE:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A0CCC
sub_080A0CCC: @ 0x080A0CCC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A0CFC @ =sub_080A0304
	movs r1, #0xb
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A0CEE
	rsbs r0, r3, #0
	strh r0, [r2]
_080A0CEE:
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A0CFC: .4byte sub_080A0304

	thumb_func_start sub_080A0D00
sub_080A0D00: @ 0x080A0D00
	push {r4, lr}
	adds r4, r0, #0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0x10
	bne _080A0D1E
	ldr r2, _080A0D2C @ =sub_080A02A4
	adds r0, r4, #0
	movs r1, #8
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
_080A0D1E:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A0D2C: .4byte sub_080A02A4

	thumb_func_start sub_080A0D30
sub_080A0D30: @ 0x080A0D30
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A0D5C @ =sub_080A03A4
	movs r1, #0x13
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x90
	lsls r3, r3, #2
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A0D54
	rsbs r0, r3, #0
	strh r0, [r2]
_080A0D54:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A0D5C: .4byte sub_080A03A4

	thumb_func_start sub_080A0D60
sub_080A0D60: @ 0x080A0D60
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A0D88 @ =sub_080A0D8C
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xa0
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A0D82
	rsbs r0, r3, #0
	strh r0, [r2]
_080A0D82:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A0D88: .4byte sub_080A0D8C

	thumb_func_start sub_080A0D8C
sub_080A0D8C: @ 0x080A0D8C
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
	beq _080A0DB6
	eors r2, r4
	str r2, [r3, #8]
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A0DB6:
	pop {r4}
	pop {r0}
	bx r0

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

	thumb_func_start CreatePrank
CreatePrank: @ 0x080A11AC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A11E0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A11E4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A11E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A11F0
	.align 2, 0
_080A11E0: .4byte ObjectMain
_080A11E4: .4byte ObjectDestroy
_080A11E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A11F0:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x12
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A1218
	movs r0, #1
	orrs r2, r0
	b _080A121E
_080A1218:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080A121E:
	str r2, [r4, #8]
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
	adds r1, r4, #0
	adds r1, #0xb0
	ldr r0, [r1]
	ldrb r0, [r0, #0xe]
	adds r5, r1, #0
	cmp r0, #4
	bne _080A1260
	adds r0, r4, #0
	bl sub_080A2748
	b _080A127A
_080A1260:
	ldr r2, _080A12A4 @ =gUnk_08351648
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
_080A127A:
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080A1288
	adds r0, r4, #0
	bl sub_080A1FB8
_080A1288:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r4, #0x7c]
	ldr r0, [r5]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080A12CC
	cmp r0, #2
	bne _080A12A8
	subs r1, #0x1a
	b _080A12C8
	.align 2, 0
_080A12A4: .4byte gUnk_08351648
_080A12A8:
	cmp r0, #1
	bne _080A12CC
	ldr r2, _080A12D8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A12DC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A12E0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080A12CC
	adds r1, r4, #0
	adds r1, #0x84
_080A12C8:
	movs r0, #0xc
	strb r0, [r1]
_080A12CC:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A12D8: .4byte gRngVal
_080A12DC: .4byte 0x00196225
_080A12E0: .4byte 0x3C6EF35F

	thumb_func_start sub_080A12E4
sub_080A12E4: @ 0x080A12E4
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #3
	bne _080A1304
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #2
	beq _080A1312
	adds r0, r4, #0
	bl sub_080A2710
	b _080A1338
_080A1304:
	cmp r0, #4
	beq _080A1312
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	cmp r0, #2
	bne _080A131A
_080A1312:
	adds r0, r4, #0
	bl sub_080A2534
	b _080A1338
_080A131A:
	ldr r2, _080A1340 @ =sub_080A24B0
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	movs r1, #0
	movs r2, #0x3c
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	strb r2, [r5]
_080A1338:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A1340: .4byte sub_080A24B0

	thumb_func_start sub_080A1344
sub_080A1344: @ 0x080A1344
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, [r5, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080A136E
	eors r2, r3
	str r2, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A136E:
	ldrb r1, [r5, #1]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A1408
	movs r1, #0x80
	lsls r1, r1, #6
	ldr r0, [r5, #8]
	ands r0, r3
	cmp r0, #0
	beq _080A138A
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080A138A:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	ldr r4, _080A1400 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A1408
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A1408
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A1408
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A1408
	ldr r4, _080A1404 @ =gUnk_082D88B8
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A1408
	adds r0, r5, #0
	bl sub_080A262C
	b _080A1428
	.align 2, 0
_080A1400: .4byte gCurLevelInfo
_080A1404: .4byte gUnk_082D88B8
_080A1408:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A1428
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A1428
	adds r0, r5, #0
	bl sub_080A2570
_080A1428:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1430
sub_080A1430: @ 0x080A1430
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r2, [r5, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r5, #8]
	ldrb r1, [r5, #1]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A14D4
	movs r1, #0x80
	lsls r1, r1, #6
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080A1458
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
_080A1458:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	ldr r4, _080A14CC @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A14D4
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A14D4
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A14D4
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A14D4
	ldr r4, _080A14D0 @ =gUnk_082D88B8
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A14D4
	adds r0, r5, #0
	bl sub_080A262C
	b _080A14F4
	.align 2, 0
_080A14CC: .4byte gCurLevelInfo
_080A14D0: .4byte gUnk_082D88B8
_080A14D4:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A14F4
	ldr r0, [r5, #8]
	eors r0, r2
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A14F4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A14FC
sub_080A14FC: @ 0x080A14FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A1586
	adds r6, r4, #0
	adds r6, #0x9e
	ldrb r5, [r6]
	cmp r5, #2
	beq _080A1550
	cmp r5, #2
	bgt _080A151E
	cmp r5, #0
	beq _080A1524
	b _080A1586
_080A151E:
	cmp r5, #3
	beq _080A1580
	b _080A1586
_080A1524:
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080A154C @ =sub_080A1344
	str r0, [r4, #0x78]
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0x80
	strh r3, [r2]
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A1544
	rsbs r0, r3, #0
	strh r0, [r2]
_080A1544:
	movs r0, #0
	strb r0, [r6]
	b _080A1586
	.align 2, 0
_080A154C: .4byte sub_080A1344
_080A1550:
	ldr r2, _080A157C @ =sub_080A1430
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A1572
	rsbs r0, r3, #0
	strh r0, [r2]
_080A1572:
	movs r0, #0x3c
	strh r0, [r4, #4]
	strb r5, [r6]
	b _080A1586
	.align 2, 0
_080A157C: .4byte sub_080A1430
_080A1580:
	adds r0, r4, #0
	bl sub_080A2710
_080A1586:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080A158C
sub_080A158C: @ 0x080A158C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A1620 @ =sub_080A163C
	movs r1, #0xe
	bl ObjectSetFunc
	ldr r0, [r4, #8]
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
	ldr r1, _080A1624 @ =gUnk_02020EE0
	ldr r0, _080A1628 @ =gUnk_0203AD3C
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
	bne _080A1618
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A15DA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A1618
_080A15DA:
	ldr r1, _080A162C @ =gUnk_08D60FA4
	ldr r4, _080A1630 @ =gSongTable
	ldr r2, _080A1634 @ =0x0000045C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A1600
	movs r1, #0x8b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A1618
_080A1600:
	cmp r3, #0
	beq _080A1612
	ldr r0, _080A1638 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A1618
_080A1612:
	movs r0, #0x8b
	bl m4aSongNumStart
_080A1618:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A1620: .4byte sub_080A163C
_080A1624: .4byte gUnk_02020EE0
_080A1628: .4byte gUnk_0203AD3C
_080A162C: .4byte gUnk_08D60FA4
_080A1630: .4byte gSongTable
_080A1634: .4byte 0x0000045C
_080A1638: .4byte gUnk_0203AD10

	thumb_func_start sub_080A163C
sub_080A163C: @ 0x080A163C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080A1670
	ldr r2, _080A16EC @ =sub_080A250C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A16F0 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4c
	strb r5, [r0]
_080A1670:
	ldrb r0, [r4, #1]
	cmp r0, #0x18
	beq _080A167A
	cmp r0, #0x30
	bne _080A16E4
_080A167A:
	ldr r1, _080A16F4 @ =gUnk_02020EE0
	ldr r0, _080A16F8 @ =gUnk_0203AD3C
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
	bne _080A16E4
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A16A6
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A16E4
_080A16A6:
	ldr r1, _080A16FC @ =gUnk_08D60FA4
	ldr r4, _080A1700 @ =gSongTable
	ldr r2, _080A1704 @ =0x0000045C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A16CC
	movs r1, #0x8b
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A16E4
_080A16CC:
	cmp r3, #0
	beq _080A16DE
	ldr r0, _080A1708 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A16E4
_080A16DE:
	movs r0, #0x8b
	bl m4aSongNumStart
_080A16E4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A16EC: .4byte sub_080A250C
_080A16F0: .4byte 0xFFFFF7FF
_080A16F4: .4byte gUnk_02020EE0
_080A16F8: .4byte gUnk_0203AD3C
_080A16FC: .4byte gUnk_08D60FA4
_080A1700: .4byte gSongTable
_080A1704: .4byte 0x0000045C
_080A1708: .4byte gUnk_0203AD10

	thumb_func_start sub_080A170C
sub_080A170C: @ 0x080A170C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	ldr r1, [r5, #8]
	movs r0, #4
	mov r8, r0
	orrs r1, r0
	str r1, [r5, #8]
	ldrb r0, [r5, #1]
	movs r7, #7
	ands r7, r0
	cmp r7, #0
	bne _080A17D8
	movs r2, #0x80
	lsls r2, r2, #6
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080A173A
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_080A173A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	ldr r1, [r5, #0x40]
	adds r1, r1, r0
	ldr r4, _080A17CC @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r4, #0
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	bgt _080A17D8
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r1, r0
	blt _080A17D8
	adds r0, r4, #0
	adds r0, #0x54
	adds r0, r3, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080A17D8
	adds r0, r4, #0
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080A17D8
	ldr r4, _080A17D0 @ =gUnk_082D88B8
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A17D8
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _080A17F8
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	ldr r0, _080A17D4 @ =sub_080A265C
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	b _080A17F8
	.align 2, 0
_080A17CC: .4byte gCurLevelInfo
_080A17D0: .4byte gUnk_082D88B8
_080A17D4: .4byte sub_080A265C
_080A17D8:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080A17F8
	ldr r0, [r5, #8]
	eors r0, r2
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A17F8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1804
sub_080A1804: @ 0x080A1804
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A184C
	ldrb r0, [r6]
	cmp r0, #0
	bne _080A184C
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _080A184C
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x27
	beq _080A184C
	cmp r0, #0x7a
	bhi _080A184C
	movs r0, #0x88
	lsls r0, r0, #1
	adds r7, r6, r0
	ldr r0, [r7]
	cmp r0, #0
	bne _080A184C
	ldr r4, [r6, #8]
	ldr r0, _080A1850 @ =0x03800B00
	ands r4, r0
	cmp r4, #0
	beq _080A1854
_080A184C:
	movs r0, #0
	b _080A1888
	.align 2, 0
_080A1850: .4byte 0x03800B00
_080A1854:
	ldr r2, _080A1890 @ =sub_080A1898
	adds r0, r5, #0
	movs r1, #0x10
	bl ObjectSetFunc
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x50
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r0, _080A1894 @ =gUnk_08352F84
	str r0, [r7]
	adds r0, r5, #0
	adds r0, #0xac
	str r6, [r0]
	str r6, [r5, #0x6c]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #3
	strb r0, [r1]
	movs r0, #1
_080A1888:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080A1890: .4byte sub_080A1898
_080A1894: .4byte gUnk_08352F84

	thumb_func_start sub_080A1898
sub_080A1898: @ 0x080A1898
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080A18D4
	ldr r2, _080A194C @ =sub_080A250C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A1950 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4c
	strb r5, [r0]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0x11
	strb r0, [r1]
_080A18D4:
	ldrb r0, [r4, #1]
	cmp r0, #0x46
	bne _080A1946
	ldr r1, _080A1954 @ =gUnk_02020EE0
	ldr r0, _080A1958 @ =gUnk_0203AD3C
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
	bne _080A1946
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A1906
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A1946
_080A1906:
	ldr r1, _080A195C @ =gUnk_08D60FA4
	ldr r4, _080A1960 @ =gSongTable
	ldr r2, _080A1964 @ =0x00000A54
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A192C
	movs r1, #0xa5
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A1946
_080A192C:
	cmp r3, #0
	beq _080A193E
	ldr r0, _080A1968 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A1946
_080A193E:
	movs r0, #0xa5
	lsls r0, r0, #1
	bl m4aSongNumStart
_080A1946:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A194C: .4byte sub_080A250C
_080A1950: .4byte 0xFFFFF7FF
_080A1954: .4byte gUnk_02020EE0
_080A1958: .4byte gUnk_0203AD3C
_080A195C: .4byte gUnk_08D60FA4
_080A1960: .4byte gSongTable
_080A1964: .4byte 0x00000A54
_080A1968: .4byte gUnk_0203AD10

	thumb_func_start sub_080A196C
sub_080A196C: @ 0x080A196C
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A198C
	ldr r0, _080A1988 @ =0x000077FF
	cmp r2, r0
	ble _080A1994
	b _080A19A0
	.align 2, 0
_080A1988: .4byte 0x000077FF
_080A198C:
	subs r1, r1, r0
	ldr r0, _080A199C @ =0x000077FF
	cmp r1, r0
	bgt _080A19A0
_080A1994:
	adds r0, r4, #0
	bl sub_080A2774
	b _080A19D4
	.align 2, 0
_080A199C: .4byte 0x000077FF
_080A19A0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	bne _080A19D4
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A19CA
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A19D2
_080A19CA:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A19D2:
	str r0, [r4, #8]
_080A19D4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A19DC
sub_080A19DC: @ 0x080A19DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A19FA
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #6
	b _080A1A00
_080A19FA:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #6
_080A1A00:
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	subs r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080A1A24 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A1A28 @ =gUnk_020229E0
	mov r8, r6
	ldr r7, _080A1A2C @ =gRngVal
	movs r6, #0x56
	adds r6, r6, r5
	mov sb, r6
	b _080A1A44
	.align 2, 0
_080A1A24: .4byte gUnk_020229D4
_080A1A28: .4byte gUnk_020229E0
_080A1A2C: .4byte gRngVal
_080A1A30:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A1A4C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A1A44:
	cmp r0, #0
	bne _080A1A30
	orrs r2, r3
	str r2, [r1]
_080A1A4C:
	adds r3, r4, #0
	lsls r0, r3, #3
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, r8
	movs r1, #1
	strb r1, [r0]
	movs r1, #0x24
	strb r1, [r0, #1]
	movs r2, #0
	mov r1, sl
	strh r1, [r0, #6]
	mov r6, ip
	strh r6, [r0, #8]
	strb r2, [r0, #2]
	movs r1, #0x1f
	strb r1, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	adds r4, r0, #0
	ldr r1, [r7]
	ldr r0, _080A1A8C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1A90 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r7]
	lsrs r2, r0, #0x10
	ldr r0, _080A1A94 @ =0x00005554
	cmp r2, r0
	bhi _080A1A98
	movs r1, #0
	b _080A1AA2
	.align 2, 0
_080A1A8C: .4byte 0x00196225
_080A1A90: .4byte 0x3C6EF35F
_080A1A94: .4byte 0x00005554
_080A1A98:
	ldr r0, _080A1AE4 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080A1AA2
	movs r1, #1
_080A1AA2:
	adds r1, #0xab
	movs r0, #0
	strb r1, [r4, #0xc]
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	add r1, r8
	strb r0, [r1, #0xe]
	strb r0, [r1, #0xf]
	strb r0, [r1, #0x10]
	movs r2, #0
	strh r0, [r1, #0x22]
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x1c]
	strh r0, [r1, #0x1e]
	strh r0, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r0, [r1, #0x12]
	strh r0, [r1, #0x14]
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x18]
	mov r2, sb
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
_080A1AE4: .4byte 0x0000AAA9

	thumb_func_start sub_080A1AE8
sub_080A1AE8: @ 0x080A1AE8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A1B1C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A1B20 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A1B24
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A1B2C
	.align 2, 0
_080A1B1C: .4byte ObjectMain
_080A1B20: .4byte ObjectDestroy
_080A1B24:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A1B2C:
	adds r5, r0, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	str r0, [r5, #8]
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r6, r5, #0
	adds r6, #0x82
	ldrb r0, [r6]
	cmp r0, #0xab
	bne _080A1B58
	ldr r0, [r5, #0x68]
	orrs r0, r2
	str r0, [r5, #0x68]
_080A1B58:
	ldrb r0, [r6]
	cmp r0, #0xad
	bne _080A1B66
	ldr r0, [r5, #8]
	ldr r1, _080A1BF0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r5, #8]
_080A1B66:
	ldr r0, [r5, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r4, #4
	rsbs r4, r4, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E308
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #4
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A1BBE
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
_080A1BBE:
	adds r0, r5, #0
	bl ObjectInitSprite
	movs r1, #0
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r5, #0x24]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080A1BF4 @ =sub_0809F840
	str r0, [r5, #0x7c]
	ldrb r0, [r6]
	cmp r0, #0xad
	bne _080A1BF8
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080A1BF8
	adds r0, r5, #0
	bl sub_080A2940
	b _080A1C12
	.align 2, 0
_080A1BF0: .4byte 0xFFFFFEFF
_080A1BF4: .4byte sub_0809F840
_080A1BF8:
	ldr r2, _080A1C1C @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
_080A1C12:
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A1C1C: .4byte gUnk_08351648

	thumb_func_start sub_080A1C20
sub_080A1C20: @ 0x080A1C20
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x70]
	adds r0, #0xac
	ldr r4, [r0]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r5, #0x7c]
	ldr r2, _080A1C7C @ =sub_080A1DE4
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r2, [r4, #0x40]
	ldr r1, [r5, #0x40]
	subs r0, r2, r1
	cmp r0, #0
	bge _080A1C4A
	subs r0, r1, r2
_080A1C4A:
	asrs r0, r0, #8
	cmp r0, #0x31
	bgt _080A1C8C
	ldr r2, _080A1C80 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1C84 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1C88 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080A1D2C
	.align 2, 0
_080A1C7C: .4byte sub_080A1DE4
_080A1C80: .4byte gRngVal
_080A1C84: .4byte 0x00196225
_080A1C88: .4byte 0x3C6EF35F
_080A1C8C:
	cmp r0, #0x63
	bgt _080A1CC8
	ldr r2, _080A1CBC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1CC0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1CC4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	b _080A1D2C
	.align 2, 0
_080A1CBC: .4byte gRngVal
_080A1CC0: .4byte 0x00196225
_080A1CC4: .4byte 0x3C6EF35F
_080A1CC8:
	cmp r0, #0x95
	bgt _080A1D04
	ldr r2, _080A1CF8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1CFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1D00 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0x90
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xa0
	lsls r0, r0, #2
	b _080A1D2C
	.align 2, 0
_080A1CF8: .4byte gRngVal
_080A1CFC: .4byte 0x00196225
_080A1D00: .4byte 0x3C6EF35F
_080A1D04:
	ldr r2, _080A1DB8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1DBC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1DC0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x7f
	ands r0, r1
	movs r2, #0xb0
	lsls r2, r2, #2
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
_080A1D2C:
	strh r0, [r2]
	adds r2, r1, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A1D40
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080A1D40:
	ldr r0, [r5, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	ldr r1, _080A1DC4 @ =gUnk_02020EE0
	ldr r0, _080A1DC8 @ =gUnk_0203AD3C
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
	bne _080A1DB2
	ldrb r0, [r5]
	cmp r0, #0
	bne _080A1D76
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A1DB2
_080A1D76:
	ldr r1, _080A1DCC @ =gUnk_08D60FA4
	ldr r4, _080A1DD0 @ =gSongTable
	ldr r2, _080A1DD4 @ =0x00000A4C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A1D9A
	ldr r1, _080A1DD8 @ =0x00000A48
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A1DB2
_080A1D9A:
	cmp r3, #0
	beq _080A1DAC
	ldr r0, _080A1DDC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A1DB2
_080A1DAC:
	ldr r0, _080A1DE0 @ =0x00000149
	bl m4aSongNumStart
_080A1DB2:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A1DB8: .4byte gRngVal
_080A1DBC: .4byte 0x00196225
_080A1DC0: .4byte 0x3C6EF35F
_080A1DC4: .4byte gUnk_02020EE0
_080A1DC8: .4byte gUnk_0203AD3C
_080A1DCC: .4byte gUnk_08D60FA4
_080A1DD0: .4byte gSongTable
_080A1DD4: .4byte 0x00000A4C
_080A1DD8: .4byte 0x00000A48
_080A1DDC: .4byte gUnk_0203AD10
_080A1DE0: .4byte 0x00000149

	thumb_func_start sub_080A1DE4
sub_080A1DE4: @ 0x080A1DE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080A1E0A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A1E18
	b _080A1E14
_080A1E0A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A1E18
_080A1E14:
	movs r0, #0
	strh r0, [r1]
_080A1E18:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xad
	bne _080A1E66
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A1E38
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080A1E38:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A1E66
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
	b _080A1E6C
_080A1E66:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080A1E6C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1E74
sub_080A1E74: @ 0x080A1E74
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r5, #7
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _080A1E98
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080A1E98:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A1EEE
	ldr r2, _080A1EC8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A1ECC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A1ED0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r5
	cmp r0, #0
	bne _080A1ED8
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r4, #4]
	ldr r0, _080A1ED4 @ =sub_080A290C
	str r0, [r4, #0x78]
	b _080A1EEE
	.align 2, 0
_080A1EC8: .4byte gRngVal
_080A1ECC: .4byte 0x00196225
_080A1ED0: .4byte 0x3C6EF35F
_080A1ED4: .4byte sub_080A290C
_080A1ED8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080A1EEE:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A1EF4
sub_080A1EF4: @ 0x080A1EF4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A1F10
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0x14
	b _080A1F16
_080A1F10:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0x14
_080A1F16:
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080A1F34 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A1F38 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080A1F50
	.align 2, 0
_080A1F34: .4byte gUnk_020229D4
_080A1F38: .4byte gUnk_020229E0
_080A1F3C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A1F58
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A1F50:
	cmp r0, #0
	bne _080A1F3C
	orrs r2, r3
	str r2, [r1]
_080A1F58:
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
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xae
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r0, [r5, #8]
	ands r0, r4
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
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A1FB8
sub_080A1FB8: @ 0x080A1FB8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _080A1FE8 @ =sub_080A2080
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
	beq _080A1FEC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080A1FF4
	.align 2, 0
_080A1FE8: .4byte sub_080A2080
_080A1FEC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080A1FF4:
	adds r0, r4, #0
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
	ldr r0, _080A207C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080A2042
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080A2042:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #0x20
	orrs r0, r1
	subs r1, #0x28
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x68]
	movs r2, #2
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0xe
	bl sub_0803E2B0
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A207C: .4byte gUnk_03000510

	thumb_func_start sub_080A2080
sub_080A2080: @ 0x080A2080
	push {r4, r5, r6, lr}
	ldr r0, _080A209C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A20A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A20A8
	.align 2, 0
_080A209C: .4byte gCurTask
_080A20A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A20A8:
	adds r5, r0, #0
	ldr r6, [r5, #0x70]
	adds r3, r5, #0
	adds r3, #0x60
	ldrh r2, [r3]
	ldr r4, _080A20FC @ =0x0000FFFF
	cmp r2, r4
	beq _080A20CA
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080A20CA
	adds r0, r4, #0
	orrs r0, r2
	strh r0, [r3]
_080A20CA:
	ldr r0, [r6, #0x40]
	str r0, [r5, #0x40]
	ldr r0, [r6, #0x44]
	str r0, [r5, #0x44]
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0x56
	strb r0, [r4]
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A219E
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2100
	ldr r0, [r5, #8]
	orrs r0, r1
	b _080A2108
	.align 2, 0
_080A20FC: .4byte 0x0000FFFF
_080A2100:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A2108:
	str r0, [r5, #8]
	adds r0, r6, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080A219E
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080A212C
	ldr r0, _080A2128 @ =0xFFFBFFFF
	ands r1, r0
	str r1, [r5, #8]
	b _080A219E
	.align 2, 0
_080A2128: .4byte 0xFFFBFFFF
_080A212C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080A219E
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _080A219E
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080A2164
	ldr r2, _080A215C @ =gCurLevelInfo
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080A2160 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080A2166
	.align 2, 0
_080A215C: .4byte gCurLevelInfo
_080A2160: .4byte 0x0000065E
_080A2164:
	movs r1, #0xff
_080A2166:
	cmp r1, #0xff
	beq _080A219E
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080A21A4 @ =gUnk_02022EB0
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
	ldr r2, _080A21A8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080A219E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A21A4: .4byte gUnk_02022EB0
_080A21A8: .4byte gUnk_02022F50

	thumb_func_start sub_080A21AC
sub_080A21AC: @ 0x080A21AC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A21C8
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	subs r0, #0xc
	b _080A21CE
_080A21C8:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r0, #0xc
_080A21CE:
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #4
	mov ip, r0
	movs r4, #0
	ldr r1, _080A21F0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080A21F4 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080A220C
	.align 2, 0
_080A21F0: .4byte gUnk_020229D4
_080A21F4: .4byte gUnk_020229E0
_080A21F8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A2214
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A220C:
	cmp r0, #0
	bne _080A21F8
	orrs r2, r3
	str r2, [r1]
_080A2214:
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
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xaf
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	ldr r0, [r5, #8]
	ands r0, r4
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
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A2274
sub_080A2274: @ 0x080A2274
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A22A8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A22AC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A22B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080A22B8
	.align 2, 0
_080A22A8: .4byte ObjectMain
_080A22AC: .4byte ObjectDestroy
_080A22B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080A22B8:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r3, [r5, #0x5c]
	movs r4, #8
	rsbs r4, r4, #0
	orrs r3, r4
	movs r0, #0x81
	rsbs r0, r0, #0
	ands r3, r0
	ldr r2, [r5, #0x68]
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r2, r0
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #9
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xf
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r5, #8]
	ands r2, r4
	movs r0, #7
	orrs r2, r0
	str r2, [r5, #0x68]
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r3, r0
	str r3, [r5, #0x5c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r5, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A2342
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
_080A2342:
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080A2378 @ =sub_080A29F0
	str r0, [r5, #0x7c]
	ldr r2, _080A237C @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2378: .4byte sub_080A29F0
_080A237C: .4byte gUnk_08351648

	thumb_func_start sub_080A2380
sub_080A2380: @ 0x080A2380
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A241A
	ldr r4, [r5, #0x70]
	ldr r2, _080A2420 @ =sub_080A29A0
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r3, r5, #0
	adds r3, #0x50
	movs r7, #0
	movs r0, #0x80
	strh r0, [r3]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r2, _080A2424 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A2428 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A242C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A23CE
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080A23CE:
	cmp r4, #0
	beq _080A2408
	adds r6, r4, #0
	adds r6, #0x83
	ldrb r0, [r6]
	cmp r0, #2
	bhi _080A2408
	ldr r2, _080A2430 @ =sub_080A250C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A2434 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #2
	strb r0, [r1]
	movs r0, #0x11
	strb r0, [r6]
_080A2408:
	ldr r0, [r5, #8]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	ldr r1, _080A2438 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r5, #8]
_080A241A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2420: .4byte sub_080A29A0
_080A2424: .4byte gRngVal
_080A2428: .4byte 0x00196225
_080A242C: .4byte 0x3C6EF35F
_080A2430: .4byte sub_080A250C
_080A2434: .4byte 0xFFFFF7FF
_080A2438: .4byte 0xFFFBFFFF

	thumb_func_start sub_080A243C
sub_080A243C: @ 0x080A243C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A2458 @ =sub_080A28BC
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2458: .4byte sub_080A28BC

	thumb_func_start sub_080A245C
sub_080A245C: @ 0x080A245C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A248C @ =sub_080A250C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A2490 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r4, #0x9e
	movs r0, #2
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A248C: .4byte sub_080A250C
_080A2490: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A2494
sub_080A2494: @ 0x080A2494
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A24AC @ =sub_080A2970
	movs r1, #0
	bl ObjectSetFunc
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A24AC: .4byte sub_080A2970

	thumb_func_start sub_080A24B0
sub_080A24B0: @ 0x080A24B0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A24D2
	movs r0, #0x3c
	strh r0, [r2, #4]
	adds r0, r2, #0
	bl sub_080A24D8
_080A24D2:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A24D8
sub_080A24D8: @ 0x080A24D8
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x83
	movs r1, #1
	strb r1, [r0]
	ldr r0, _080A2508 @ =sub_080A1344
	str r0, [r2, #0x78]
	adds r3, r2, #0
	adds r3, #0x50
	movs r4, #0x80
	strh r4, [r3]
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A24FA
	rsbs r0, r4, #0
	strh r0, [r3]
_080A24FA:
	adds r1, r2, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2508: .4byte sub_080A1344

	thumb_func_start sub_080A250C
sub_080A250C: @ 0x080A250C
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2530
	movs r0, #1
	eors r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_080A2534
_080A2530:
	pop {r0}
	bx r0

	thumb_func_start sub_080A2534
sub_080A2534: @ 0x080A2534
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A256C @ =sub_080A1430
	movs r1, #2
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2558
	rsbs r0, r3, #0
	strh r0, [r2]
_080A2558:
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #2
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A256C: .4byte sub_080A1430

	thumb_func_start sub_080A2570
sub_080A2570: @ 0x080A2570
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0xc
	bne _080A2584
	adds r0, r4, #0
	bl sub_080A2800
	b _080A25D6
_080A2584:
	ldr r2, _080A25C8 @ =sub_080A25DC
	adds r0, r4, #0
	movs r1, #0xa
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0x3c
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A25CC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A25D4
	.align 2, 0
_080A25C8: .4byte sub_080A25DC
_080A25CC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A25D4:
	str r0, [r4, #8]
_080A25D6:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A25DC
sub_080A25DC: @ 0x080A25DC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x19
	bne _080A25EC
	adds r0, r4, #0
	bl sub_080A19DC
_080A25EC:
	ldr r0, [r4, #8]
	movs r5, #2
	ands r0, r5
	cmp r0, #0
	beq _080A261C
	ldr r2, _080A2624 @ =sub_080A250C
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080A2628 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	movs r1, #0
	movs r0, #0x28
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r0, #0x4c
	strb r5, [r0]
_080A261C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080A2624: .4byte sub_080A250C
_080A2628: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A262C
sub_080A262C: @ 0x080A262C
	push {lr}
	adds r2, r0, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A2654
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #0
	movs r0, #3
	strb r0, [r3]
	ldr r0, _080A2658 @ =sub_080A265C
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_080A2654:
	pop {r0}
	bx r0
	.align 2, 0
_080A2658: .4byte sub_080A265C

	thumb_func_start sub_080A265C
sub_080A265C: @ 0x080A265C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A2670
	adds r0, r2, #0
	bl sub_080A2674
_080A2670:
	pop {r0}
	bx r0

	thumb_func_start sub_080A2674
sub_080A2674: @ 0x080A2674
	push {lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #4
	strb r0, [r1]
	ldr r0, _080A26B0 @ =sub_080A26B4
	str r0, [r2, #0x78]
	adds r3, r2, #0
	adds r3, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3]
	subs r1, #0x31
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r2, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A26AC
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080A26AC:
	pop {r0}
	bx r0
	.align 2, 0
_080A26B0: .4byte sub_080A26B4

	thumb_func_start sub_080A26B4
sub_080A26B4: @ 0x080A26B4
	push {r4, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r4, #1
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _080A26D8
	ldr r0, [r2, #8]
	eors r0, r4
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A26D8:
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A26E8
	adds r0, r2, #0
	bl sub_080A26F0
_080A26E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A26F0
sub_080A26F0: @ 0x080A26F0
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x83
	movs r1, #0
	movs r0, #7
	strb r0, [r3]
	ldr r0, _080A270C @ =sub_080A14FC
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	bx lr
	.align 2, 0
_080A270C: .4byte sub_080A14FC

	thumb_func_start sub_080A2710
sub_080A2710: @ 0x080A2710
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A2744 @ =sub_080A170C
	movs r1, #2
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2734
	rsbs r0, r3, #0
	strh r0, [r2]
_080A2734:
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #3
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2744: .4byte sub_080A170C

	thumb_func_start sub_080A2748
sub_080A2748: @ 0x080A2748
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A2770 @ =sub_080A196C
	movs r1, #8
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A2770: .4byte sub_080A196C

	thumb_func_start sub_080A2774
sub_080A2774: @ 0x080A2774
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A279C @ =sub_080A27A0
	movs r1, #9
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
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
_080A279C: .4byte sub_080A27A0

	thumb_func_start sub_080A27A0
sub_080A27A0: @ 0x080A27A0
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x30
	bne _080A27B0
	adds r0, r4, #0
	bl sub_080A21AC
_080A27B0:
	ldr r1, [r4, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080A27C6
	ldr r0, _080A27CC @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_080A27D0
_080A27C6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A27CC: .4byte 0xFFFFFDFF

	thumb_func_start sub_080A27D0
sub_080A27D0: @ 0x080A27D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A27F0 @ =sub_080A27F4
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
_080A27F0: .4byte sub_080A27F4

	thumb_func_start sub_080A27F4
sub_080A27F4: @ 0x080A27F4
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_080A2800
sub_080A2800: @ 0x080A2800
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A283C @ =sub_080A2850
	movs r1, #0xb
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A2840
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A2848
	.align 2, 0
_080A283C: .4byte sub_080A2850
_080A2840:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A2848:
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A2850
sub_080A2850: @ 0x080A2850
	push {r4, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	cmp r0, #0x30
	bne _080A286A
	adds r0, r4, #0
	bl sub_080A1EF4
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080A286A:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A287A
	adds r0, r4, #0
	bl sub_080A2880
_080A287A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A2880
sub_080A2880: @ 0x080A2880
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A289C @ =sub_080A28A0
	movs r1, #0xc
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A289C: .4byte sub_080A28A0

	thumb_func_start sub_080A28A0
sub_080A28A0: @ 0x080A28A0
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x58
	ble _080A28B8
	adds r1, #0x83
	movs r0, #0xf
	strb r0, [r1]
_080A28B8:
	pop {r0}
	bx r0

	thumb_func_start sub_080A28BC
sub_080A28BC: @ 0x080A28BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x70]
	ldr r1, [r0, #8]
	movs r0, #1
	ands r1, r0
	ldr r0, [r4, #8]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xad
	bne _080A28F2
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080A28F2
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080A28F2:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1b
	ble _080A2906
	adds r0, r4, #0
	bl sub_080A1C20
_080A2906:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080A290C
sub_080A290C: @ 0x080A290C
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	cmp r1, #0
	bne _080A293A
	adds r0, r2, #0
	adds r0, #0x80
	strh r1, [r0]
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
_080A293A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A2940
sub_080A2940: @ 0x080A2940
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A296C @ =sub_080A1E74
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x84
	movs r0, #9
	strb r0, [r1]
	movs r0, #0x20
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A296C: .4byte sub_080A1E74

	thumb_func_start sub_080A2970
sub_080A2970: @ 0x080A2970
	push {lr}
	adds r3, r0, #0
	ldr r2, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r0, r2
	cmp r0, #0
	beq _080A2998
	ldr r1, [r3, #0x6c]
	ldr r0, _080A299C @ =0xFFFBFFFF
	ands r2, r0
	str r2, [r3, #8]
	ldr r0, [r1, #8]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080A2998
	adds r0, r3, #0
	bl sub_080A2380
_080A2998:
	pop {r0}
	bx r0
	.align 2, 0
_080A299C: .4byte 0xFFFBFFFF

	thumb_func_start sub_080A29A0
sub_080A29A0: @ 0x080A29A0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080A29BC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080A29BC:
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080A29E0
	ldr r0, [r4, #8]
	ldr r1, _080A29E8 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080A29EC @ =sub_080A2970
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080A29E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A29E8: .4byte 0xFFFFFDFF
_080A29EC: .4byte sub_080A2970

	thumb_func_start sub_080A29F0
sub_080A29F0: @ 0x080A29F0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #0x70]
	cmp r0, #0
	beq _080A2A0A
	ldr r0, [r0, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _080A2A0A
	movs r0, #0
	str r0, [r2, #0x70]
_080A2A0A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateCupie
CreateCupie: @ 0x080A2A10
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080A2A44 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A2A48 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A2A4C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080A2A54
	.align 2, 0
_080A2A44: .4byte ObjectMain
_080A2A48: .4byte ObjectDestroy
_080A2A4C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080A2A54:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
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
	ldr r2, [r4, #8]
	movs r0, #0xa0
	lsls r0, r0, #1
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A2AA4
	movs r0, #1
	orrs r2, r0
	b _080A2AAA
_080A2AA4:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080A2AAA:
	str r2, [r4, #8]
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080A2AEC @ =gUnk_08351648
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
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _080A2AE0
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0xff
	strb r0, [r1]
_080A2AE0:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A2AEC: .4byte gUnk_08351648

	thumb_func_start sub_080A2AF0
sub_080A2AF0: @ 0x080A2AF0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #2
	beq _080A2B2E
	cmp r0, #2
	bgt _080A2B1A
	cmp r0, #1
	beq _080A2B26
	b _080A2B36
_080A2B1A:
	cmp r0, #4
	bgt _080A2B36
	adds r0, r2, #0
	bl sub_080A3AFC
	b _080A2B68
_080A2B26:
	adds r0, r2, #0
	bl sub_080A3A4C
	b _080A2B68
_080A2B2E:
	adds r0, r2, #0
	bl sub_080A3A24
	b _080A2B68
_080A2B36:
	adds r1, r2, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080A2B5C @ =sub_080A2B6C
	str r0, [r2, #0x78]
	ldr r0, [r2, #8]
	ldr r1, _080A2B60 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A2B64
	movs r0, #0x87
	lsls r0, r0, #1
	b _080A2B66
	.align 2, 0
_080A2B5C: .4byte sub_080A2B6C
_080A2B60: .4byte 0xFFFFF7FF
_080A2B64:
	movs r0, #0x5a
_080A2B66:
	strh r0, [r2, #4]
_080A2B68:
	pop {r0}
	bx r0

	thumb_func_start sub_080A2B6C
sub_080A2B6C: @ 0x080A2B6C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	bne _080A2B88
	b _080A2C92
_080A2B88:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r7, _080A2C40 @ =gUnk_08352FD4
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080A2C6A
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A2BBE
	subs r0, r1, #1
	strb r0, [r3]
_080A2BBE:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A2BE4
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A2BE4:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A2C44
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
	mov r8, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080A2C12
	mov r0, r8
	strh r0, [r5]
_080A2C12:
	ldrb r2, [r3]
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080A2C6A
	mov r1, r8
	rsbs r0, r1, #0
	mov r2, ip
	b _080A2C68
	.align 2, 0
_080A2C40: .4byte gUnk_08352FD4
_080A2C44:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r5]
	mov r2, ip
	ldrh r0, [r2]
	rsbs r0, r0, #0
_080A2C68:
	strh r0, [r2]
_080A2C6A:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	mov r2, ip
	ldrh r1, [r2]
	ldrh r0, [r0, #6]
	subs r1, r1, r0
	strh r1, [r2]
	b _080A2D92
_080A2C92:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	adds r3, r4, #0
	adds r3, #0x9f
	ldr r7, _080A2D48 @ =gUnk_08352FD4
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080A2D6A
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A2CC8
	subs r0, r1, #1
	strb r0, [r3]
_080A2CC8:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r0, [r0, #8]
	strb r0, [r6]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A2CEE
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A2CEE:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A2D4C
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
	mov r8, r2
	movs r2, #0
	ldrsh r1, [r1, r2]
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080A2D1C
	mov r0, r8
	strh r0, [r5]
_080A2D1C:
	ldrb r2, [r3]
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
	mov r8, r2
	movs r2, #2
	ldrsh r1, [r1, r2]
	movs r2, #2
	ldrsh r0, [r0, r2]
	cmp r1, r0
	beq _080A2D6A
	mov r1, r8
	mov r0, ip
	strh r1, [r0]
	b _080A2D6A
	.align 2, 0
_080A2D48: .4byte gUnk_08352FD4
_080A2D4C:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #2]
	mov r2, ip
	strh r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0]
	strh r0, [r5]
_080A2D6A:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #4]
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r7
	ldrh r0, [r0, #6]
	mov r2, ip
	ldrh r2, [r2]
	adds r0, r0, r2
	mov r1, ip
	strh r0, [r1]
_080A2D92:
	ldrb r0, [r6]
	subs r0, #1
	strb r0, [r6]
	ldrb r2, [r3]
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r7
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _080A2DB8
	ldrb r0, [r6]
	cmp r0, #0
	bne _080A2DB8
	movs r0, #0xff
	strb r0, [r3]
_080A2DB8:
	ldr r1, _080A2DF0 @ =gUnk_083533F4
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2E20
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A2DF4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A2DFC
	.align 2, 0
_080A2DF0: .4byte gUnk_083533F4
_080A2DF4:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A2DFC:
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r2, _080A2E2C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A2E30 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A2E34 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2E20
	adds r0, r4, #0
	bl sub_080A3A74
_080A2E20:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A2E2C: .4byte gRngVal
_080A2E30: .4byte 0x00196225
_080A2E34: .4byte 0x3C6EF35F

	thumb_func_start sub_080A2E38
sub_080A2E38: @ 0x080A2E38
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	ldr r6, _080A2EEC @ =gUnk_08353070
	cmp r0, #0
	bne _080A2F14
	adds r3, r4, #0
	adds r3, #0x9f
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
	bne _080A2E6E
	subs r0, r1, #1
	strb r0, [r3]
_080A2E6E:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A2E94
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A2E94:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A2EF0
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
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A2EC2
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080A2EC2:
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A2F14
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080A2F14
	.align 2, 0
_080A2EEC: .4byte gUnk_08353070
_080A2EF0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
_080A2F14:
	adds r2, r4, #0
	adds r2, #0x50
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r5, [r3]
	adds r1, r5, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A2F6E
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080A2F6E
	movs r0, #0xff
	orrs r0, r5
	strb r0, [r3]
_080A2F6E:
	ldr r1, _080A2FA8 @ =gUnk_083533F4
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A2FF0
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A2FAC
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A2FB4
	.align 2, 0
_080A2FA8: .4byte gUnk_083533F4
_080A2FAC:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A2FB4:
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r2, _080A2FF8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A2FFC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A3000 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A2FF0
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, _080A3004 @ =sub_080A3A9C
	str r0, [r4, #0x78]
	ldr r0, [r4, #8]
	subs r1, #4
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080A2FF0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A2FF8: .4byte gRngVal
_080A2FFC: .4byte 0x00196225
_080A3000: .4byte 0x3C6EF35F
_080A3004: .4byte sub_080A3A9C

	thumb_func_start sub_080A3008
sub_080A3008: @ 0x080A3008
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	ldr r6, _080A30BC @ =gUnk_083532C8
	cmp r0, #0
	bne _080A30E4
	adds r3, r4, #0
	adds r3, #0x9f
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
	bne _080A303E
	subs r0, r1, #1
	strb r0, [r3]
_080A303E:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	strb r0, [r2]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080A3064
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080A3064:
	ldrb r0, [r3]
	cmp r0, #0
	beq _080A30C0
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
	movs r5, #0
	ldrsh r1, [r1, r5]
	movs r5, #0
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A3092
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
_080A3092:
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
	movs r3, #2
	ldrsh r1, [r1, r3]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r1, r0
	beq _080A30E4
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	b _080A30E4
	.align 2, 0
_080A30BC: .4byte gUnk_083532C8
_080A30C0:
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r0]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
_080A30E4:
	adds r2, r4, #0
	adds r2, #0x50
	adds r3, r4, #0
	adds r3, #0x9f
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #4]
	ldrh r1, [r2]
	adds r0, r0, r1
	strh r0, [r2]
	adds r2, #2
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	ldrh r5, [r2]
	adds r0, r0, r5
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x9e
	ldrb r0, [r1]
	subs r2, r0, #1
	strb r2, [r1]
	ldrb r5, [r3]
	adds r1, r5, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080A313E
	lsls r0, r2, #0x18
	cmp r0, #0
	bne _080A313E
	movs r0, #0xff
	orrs r0, r5
	strb r0, [r3]
_080A313E:
	ldr r1, _080A3178 @ =gUnk_083533F4
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080A31C0
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A317C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A3184
	.align 2, 0
_080A3178: .4byte gUnk_083533F4
_080A317C:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A3184:
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r2, _080A31C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080A31CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080A31D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080A31C0
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, _080A31D4 @ =sub_080A3A9C
	str r0, [r4, #0x78]
	ldr r0, [r4, #8]
	subs r1, #4
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
_080A31C0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080A31C8: .4byte gRngVal
_080A31CC: .4byte 0x00196225
_080A31D0: .4byte 0x3C6EF35F
_080A31D4: .4byte sub_080A3A9C

	thumb_func_start sub_080A31D8
sub_080A31D8: @ 0x080A31D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A31FE
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080A31FE:
	adds r1, r4, #0
	adds r1, #0xac
	ldr r0, [r1]
	ldr r2, [r4, #0x40]
	ldr r0, [r0, #0x40]
	adds r3, r1, #0
	cmp r2, r0
	bgt _080A3210
	b _080A33CC
_080A3210:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0
	mov r8, r1
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080A324E
	adds r0, r4, #0
	str r3, [sp]
	bl sub_0803D368
	ldr r3, [sp]
	str r0, [r3]
	mov r2, r8
	strb r2, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080A324E:
	ldr r2, [r4, #0x44]
	ldr r1, _080A327C @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	subs r0, #0x40
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080A3280
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A32CC
	b _080A32CA
	.align 2, 0
_080A327C: .4byte 0xFFFFF000
_080A3280:
	cmp r2, r0
	bge _080A32A0
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A329C @ =0xFFFFFF00
	cmp r0, r2
	bge _080A32CC
	b _080A32CA
	.align 2, 0
_080A329C: .4byte 0xFFFFFF00
_080A32A0:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080A32BE
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A32CC
	mov r0, r8
	strh r0, [r1]
	b _080A32CC
_080A32BE:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A32CC
	mov r2, r8
_080A32CA:
	strh r2, [r1]
_080A32CC:
	ldr r2, [r4, #0x40]
	ldr r1, _080A32EC @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r7, r5]
	adds r0, #0x60
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080A32F0
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080A3328
	.align 2, 0
_080A32EC: .4byte 0xFFFFF000
_080A32F0:
	cmp r2, r0
	ble _080A334C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A3328
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A3324 @ =0xFFFFFF00
	cmp r0, r2
	blt _080A331E
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A3374
_080A331E:
	strh r2, [r1]
	b _080A3374
	.align 2, 0
_080A3324: .4byte 0xFFFFFF00
_080A3328:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080A331E
	ldr r2, _080A3348 @ =0xFFFFFF00
	cmp r0, r2
	bge _080A3374
	b _080A331E
	.align 2, 0
_080A3348: .4byte 0xFFFFFF00
_080A334C:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080A3366
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A3374
	b _080A3370
_080A3366:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A3374
_080A3370:
	movs r0, #0
	strh r0, [r1]
_080A3374:
	ldr r0, [r4, #8]
	movs r5, #1
	orrs r0, r5
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	beq _080A3388
	b _080A35A4
_080A3388:
	ldr r1, [r4, #0x40]
	ldr r2, _080A33C4 @ =0xFFFFF000
	ands r1, r2
	ldr r3, [r3]
	ldr r0, [r3, #0x40]
	movs r6, #0xc0
	lsls r6, r6, #7
	adds r0, r0, r6
	ands r0, r2
	cmp r1, r0
	beq _080A33A0
	b _080A35A8
_080A33A0:
	ldr r1, [r4, #0x44]
	ands r1, r2
	ldr r0, [r3, #0x44]
	ldr r3, _080A33C8 @ =0xFFFFC000
	adds r0, r0, r3
	ands r0, r2
	cmp r1, r0
	beq _080A33B2
	b _080A35A8
_080A33B2:
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x83
	strb r5, [r0]
	b _080A3578
	.align 2, 0
_080A33C4: .4byte 0xFFFFF000
_080A33C8: .4byte 0xFFFFC000
_080A33CC:
	adds r5, r4, #0
	adds r5, #0x9e
	ldrb r0, [r5]
	adds r0, #1
	movs r6, #0
	mov r8, r6
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r7, r4, #0
	adds r7, #0xa0
	adds r6, r4, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080A340A
	adds r0, r4, #0
	str r3, [sp]
	bl sub_0803D368
	ldr r3, [sp]
	str r0, [r3]
	mov r0, r8
	strb r0, [r5]
	ldr r0, [r3]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	strh r0, [r7]
	ldr r0, [r3]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080A340A:
	ldr r2, [r4, #0x44]
	ldr r1, _080A3438 @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r6, r5]
	subs r0, #0x40
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080A343C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A3488
	b _080A3486
	.align 2, 0
_080A3438: .4byte 0xFFFFF000
_080A343C:
	cmp r2, r0
	bge _080A345C
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A3458 @ =0xFFFFFF00
	cmp r0, r2
	bge _080A3488
	b _080A3486
	.align 2, 0
_080A3458: .4byte 0xFFFFFF00
_080A345C:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080A347A
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A3488
	mov r0, r8
	strh r0, [r1]
	b _080A3488
_080A347A:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A3488
	mov r2, r8
_080A3486:
	strh r2, [r1]
_080A3488:
	ldr r2, [r4, #0x40]
	ldr r1, _080A34A8 @ =0xFFFFF000
	ands r2, r1
	movs r5, #0
	ldrsh r0, [r7, r5]
	subs r0, #0x60
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080A34AC
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080A34E4
	.align 2, 0
_080A34A8: .4byte 0xFFFFF000
_080A34AC:
	cmp r2, r0
	ble _080A3508
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A34E4
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A34E0 @ =0xFFFFFF00
	cmp r0, r2
	blt _080A34DA
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080A3530
_080A34DA:
	strh r2, [r1]
	b _080A3530
	.align 2, 0
_080A34E0: .4byte 0xFFFFFF00
_080A34E4:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	bgt _080A34DA
	ldr r2, _080A3504 @ =0xFFFFFF00
	cmp r0, r2
	bge _080A3530
	b _080A34DA
	.align 2, 0
_080A3504: .4byte 0xFFFFFF00
_080A3508:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r6, #0
	ldrsh r0, [r1, r6]
	cmp r0, #0
	bge _080A3522
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A3530
	b _080A352C
_080A3522:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A3530
_080A352C:
	movs r0, #0
	strh r0, [r1]
_080A3530:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldrh r1, [r4, #4]
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0
	bne _080A35A4
	ldr r1, [r4, #0x40]
	ldr r2, _080A3594 @ =0xFFFFF000
	ands r1, r2
	ldr r3, [r3]
	ldr r0, [r3, #0x40]
	ldr r5, _080A3598 @ =0xFFFFA000
	adds r0, r0, r5
	ands r0, r2
	cmp r1, r0
	bne _080A35A8
	ldr r1, [r4, #0x44]
	ands r1, r2
	ldr r0, [r3, #0x44]
	ldr r6, _080A359C @ =0xFFFFC000
	adds r0, r0, r6
	ands r0, r2
	cmp r1, r0
	bne _080A35A8
	adds r1, r4, #0
	adds r1, #0x85
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	subs r1, #2
	movs r0, #1
	strb r0, [r1]
_080A3578:
	ldr r0, _080A35A0 @ =sub_080A3A9C
	str r0, [r4, #0x78]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _080A35B8
	.align 2, 0
_080A3594: .4byte 0xFFFFF000
_080A3598: .4byte 0xFFFFA000
_080A359C: .4byte 0xFFFFC000
_080A35A0: .4byte sub_080A3A9C
_080A35A4:
	subs r0, r1, #1
	strh r0, [r4, #4]
_080A35A8:
	ldr r1, _080A35C4 @ =gUnk_083533F4
	ldrb r0, [r4, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x55
	strb r1, [r0]
_080A35B8:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A35C4: .4byte gUnk_083533F4

	thumb_func_start sub_080A35C8
sub_080A35C8: @ 0x080A35C8
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r4, #0
	ldr r1, _080A35DC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r5, _080A35E0 @ =gUnk_020229E0
	b _080A35F8
	.align 2, 0
_080A35DC: .4byte gUnk_020229D4
_080A35E0: .4byte gUnk_020229E0
_080A35E4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080A3600
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080A35F8:
	cmp r0, #0
	bne _080A35E4
	orrs r2, r3
	str r2, [r1]
_080A3600:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r6, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xd8
	strb r0, [r1, #0xc]
	strb r3, [r1, #0xe]
	strb r3, [r1, #0xf]
	adds r0, r6, #0
	adds r0, #0x87
	ldrb r0, [r0]
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
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	str r6, [r0, #0x70]
	adds r3, r0, #0
	ldr r0, [r6, #8]
	ands r0, r4
	cmp r0, #0
	beq _080A366A
	ldr r0, [r3, #8]
	orrs r0, r4
	str r0, [r3, #8]
_080A366A:
	ldr r1, _080A36A8 @ =gRngVal
	ldr r0, [r1]
	ldr r2, _080A36AC @ =0x00196225
	mov ip, r2
	mov r2, ip
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r7, _080A36B0 @ =0x3C6EF35F
	adds r2, r0, r7
	str r2, [r1]
	lsrs r4, r2, #0x10
	ldr r0, _080A36B4 @ =0x00005554
	adds r5, r1, #0
	cmp r4, r0
	bls _080A36BC
	ldr r0, _080A36B8 @ =0x0000AAA9
	movs r1, #2
	cmp r4, r0
	bhi _080A3692
	movs r1, #1
_080A3692:
	cmp r1, #0
	beq _080A36BC
	mov r0, ip
	muls r0, r2, r0
	adds r0, r0, r7
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	adds r1, #0xc1
	b _080A36D2
	.align 2, 0
_080A36A8: .4byte gRngVal
_080A36AC: .4byte 0x00196225
_080A36B0: .4byte 0x3C6EF35F
_080A36B4: .4byte 0x00005554
_080A36B8: .4byte 0x0000AAA9
_080A36BC:
	ldr r1, [r5]
	ldr r0, _080A3700 @ =0x00196225
	muls r0, r1, r0
	ldr r2, _080A3704 @ =0x3C6EF35F
	adds r0, r0, r2
	str r0, [r5]
	lsrs r0, r0, #0x10
	movs r1, #0xff
	ands r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
_080A36D2:
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x50
	strh r0, [r1]
	adds r2, r3, #0
	adds r2, #0x52
	movs r0, #0
	strh r0, [r2]
	ldr r0, [r6, #8]
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080A36F8
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	ldr r0, [r3, #8]
	orrs r0, r2
	str r0, [r3, #8]
_080A36F8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080A3700: .4byte 0x00196225
_080A3704: .4byte 0x3C6EF35F

	thumb_func_start sub_080A3708
sub_080A3708: @ 0x080A3708
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080A373C @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080A3740 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080A3744
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080A374C
	.align 2, 0
_080A373C: .4byte ObjectMain
_080A3740: .4byte ObjectDestroy
_080A3744:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080A374C:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	adds r0, r5, #0
	adds r0, #0x63
	movs r3, #0
	movs r1, #1
	strb r1, [r0]
	ldr r2, [r5, #8]
	movs r0, #0x40
	orrs r2, r0
	ldr r0, [r5, #0xc]
	orrs r0, r1
	movs r1, #4
	orrs r0, r1
	movs r4, #2
	orrs r0, r4
	str r0, [r5, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x15
	orrs r2, r0
	str r2, [r5, #8]
	ldr r0, _080A37E8 @ =0x20000043
	str r0, [r5, #0x68]
	ldr r0, [r5, #0x5c]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #0x5c]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _080A37EC @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r2, #2
	rsbs r2, r2, #0
	str r4, [sp]
	adds r0, r5, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	str r4, [sp]
	adds r0, r5, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	ldr r2, _080A37F0 @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080A37E8: .4byte 0x20000043
_080A37EC: .4byte sub_0809F840
_080A37F0: .4byte gUnk_08351648

	thumb_func_start sub_080A37F4
sub_080A37F4: @ 0x080A37F4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A3880 @ =sub_080A389C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	str r0, [r4, #8]
	ldr r1, _080A3884 @ =gUnk_02020EE0
	ldr r0, _080A3888 @ =gUnk_0203AD3C
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
	bne _080A3878
	ldrb r0, [r4]
	cmp r0, #0
	bne _080A3838
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080A3878
_080A3838:
	ldr r1, _080A388C @ =gUnk_08D60FA4
	ldr r4, _080A3890 @ =gSongTable
	ldr r2, _080A3894 @ =0x00000AF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080A385E
	movs r1, #0xaf
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080A3878
_080A385E:
	cmp r3, #0
	beq _080A3870
	ldr r0, _080A3898 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080A3878
_080A3870:
	movs r0, #0xaf
	lsls r0, r0, #1
	bl m4aSongNumStart
_080A3878:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3880: .4byte sub_080A389C
_080A3884: .4byte gUnk_02020EE0
_080A3888: .4byte gUnk_0203AD3C
_080A388C: .4byte gUnk_08D60FA4
_080A3890: .4byte gSongTable
_080A3894: .4byte 0x00000AF4
_080A3898: .4byte gUnk_0203AD10

	thumb_func_start sub_080A389C
sub_080A389C: @ 0x080A389C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	ldr r1, _080A391C @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080A3920 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080A38F4
	adds r0, r2, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080A38F4
	adds r0, r2, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r3, [r4, #0x44]
	ldr r0, [r0]
	cmp r3, r0
	bgt _080A38F4
	adds r0, r2, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _080A38F4
	adds r0, r4, #0
	bl sub_0806FC70
_080A38F4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r6, [r0]
	cmp r6, #0
	beq _080A3924
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _080A3A1C
	.align 2, 0
_080A391C: .4byte 0xFFFFFEFF
_080A3920: .4byte gCurLevelInfo
_080A3924:
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080A3958 @ =0xFFFFFD80
	adds r5, r1, #0
	cmp r0, r2
	bge _080A393C
	strh r2, [r5]
_080A393C:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080A395C
	adds r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080A3968
	b _080A3966
	.align 2, 0
_080A3958: .4byte 0xFFFFFD80
_080A395C:
	subs r0, r3, #4
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080A3968
_080A3966:
	strh r6, [r2]
_080A3968:
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _080A3972
	rsbs r1, r1, #0
_080A3972:
	ldr r0, _080A39A8 @ =0x0000017F
	cmp r1, r0
	bgt _080A39DC
	adds r0, r4, #0
	adds r0, #0x83
	movs r1, #4
	strb r1, [r0]
	movs r2, #0
	ldrsh r1, [r5, r2]
	adds r2, r0, #0
	cmp r1, #0x80
	ble _080A39B0
	subs r0, #0x59
	movs r1, #2
	strb r1, [r0]
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r1, r0
	ble _080A39B0
	adds r0, #0xc0
	cmp r1, r0
	ble _080A39AC
	movs r0, #0
	b _080A39AE
	.align 2, 0
_080A39A8: .4byte 0x0000017F
_080A39AC:
	movs r0, #1
_080A39AE:
	strb r0, [r2]
_080A39B0:
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080A3A1C
	movs r0, #6
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	ldr r0, _080A39D4 @ =0xFFFFFE80
	cmp r1, r0
	bge _080A3A1C
	subs r0, #0xc0
	cmp r1, r0
	bge _080A39D8
	movs r0, #8
	b _080A3A1A
	.align 2, 0
_080A39D4: .4byte 0xFFFFFE80
_080A39D8:
	movs r0, #7
	b _080A3A1A
_080A39DC:
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #4
	strb r0, [r1]
	movs r2, #0
	ldrsh r3, [r5, r2]
	adds r2, r1, #0
	cmp r3, #0x80
	ble _080A39FE
	movs r0, #0xc0
	lsls r0, r0, #1
	cmp r3, r0
	ble _080A39FA
	movs r0, #2
	b _080A39FC
_080A39FA:
	movs r0, #3
_080A39FC:
	strb r0, [r2]
_080A39FE:
	movs r0, #0
	ldrsh r1, [r5, r0]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080A3A1C
	ldr r0, _080A3A14 @ =0xFFFFFE80
	cmp r1, r0
	bge _080A3A18
	movs r0, #6
	b _080A3A1A
	.align 2, 0
_080A3A14: .4byte 0xFFFFFE80
_080A3A18:
	movs r0, #5
_080A3A1A:
	strb r0, [r2]
_080A3A1C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080A3A24
sub_080A3A24: @ 0x080A3A24
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0
	strb r1, [r2]
	ldr r1, _080A3A44 @ =sub_080A2E38
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #0xa0
	lsls r2, r2, #1
	orrs r1, r2
	ldr r2, _080A3A48 @ =0xFFFFF7FF
	ands r1, r2
	str r1, [r0, #8]
	movs r1, #0x5a
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_080A3A44: .4byte sub_080A2E38
_080A3A48: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A3A4C
sub_080A3A4C: @ 0x080A3A4C
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #0
	strb r1, [r2]
	ldr r1, _080A3A6C @ =sub_080A3008
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #0xa0
	lsls r2, r2, #1
	orrs r1, r2
	ldr r2, _080A3A70 @ =0xFFFFF7FF
	ands r1, r2
	str r1, [r0, #8]
	movs r1, #0x5a
	strh r1, [r0, #4]
	bx lr
	.align 2, 0
_080A3A6C: .4byte sub_080A3008
_080A3A70: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A3A74
sub_080A3A74: @ 0x080A3A74
	adds r2, r0, #0
	adds r2, #0x83
	movs r1, #1
	strb r1, [r2]
	ldr r1, _080A3A98 @ =sub_080A3A9C
	str r1, [r0, #0x78]
	ldr r1, [r0, #8]
	movs r2, #3
	rsbs r2, r2, #0
	ands r1, r2
	movs r2, #0xa0
	lsls r2, r2, #1
	orrs r1, r2
	movs r2, #0x80
	lsls r2, r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0
_080A3A98: .4byte sub_080A3A9C

	thumb_func_start sub_080A3A9C
sub_080A3A9C: @ 0x080A3A9C
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x83
	ldrb r1, [r5]
	cmp r1, #2
	beq _080A3AC8
	cmp r1, #2
	bgt _080A3AB4
	cmp r1, #1
	beq _080A3ABA
	b _080A3AF6
_080A3AB4:
	cmp r1, #3
	beq _080A3AE6
	b _080A3AF6
_080A3ABA:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A3AF6
	strb r1, [r5]
	b _080A3ADA
_080A3AC8:
	ldr r0, [r4, #8]
	ands r0, r1
	cmp r0, #0
	beq _080A3AF6
	adds r0, r4, #0
	bl sub_080A35C8
	movs r0, #3
	strb r0, [r5]
_080A3ADA:
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	b _080A3AF6
_080A3AE6:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080A3AF6
	adds r0, r4, #0
	bl sub_080A2AF0
_080A3AF6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A3AFC
sub_080A3AFC: @ 0x080A3AFC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A3B24 @ =sub_080A31D8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #4
	bne _080A3B28
	movs r0, #0xc
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0xf
	bls _080A3B44
	b _080A3B3C
	.align 2, 0
_080A3B24: .4byte sub_080A31D8
_080A3B28:
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r1, [r0]
	adds r0, #2
	ldrb r0, [r0]
	adds r0, #1
	cmp r1, r0
	blt _080A3B44
_080A3B3C:
	adds r0, r4, #0
	bl sub_080A3B5C
	b _080A3B52
_080A3B44:
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080A3B58 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
_080A3B52:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3B58: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A3B5C
sub_080A3B5C: @ 0x080A3B5C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A3B8C @ =sub_080A3B94
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080A3B90 @ =0xFFFFF7FF
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A3B8C: .4byte sub_080A3B94
_080A3B90: .4byte 0xFFFFF7FF

	thumb_func_start sub_080A3B94
sub_080A3B94: @ 0x080A3B94
	push {lr}
	adds r2, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r2, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A3BAC
	adds r1, r2, #0
	adds r1, #0x50
	movs r0, #0x48
	b _080A3BB2
_080A3BAC:
	adds r1, r2, #0
	adds r1, #0x50
	ldr r0, _080A3BD4 @ =0x0000FFB8
_080A3BB2:
	strh r0, [r1]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	ldr r1, _080A3BD8 @ =gUnk_083533F4
	ldrb r0, [r2, #1]
	lsrs r0, r0, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0x55
	strb r1, [r0]
	pop {r0}
	bx r0
	.align 2, 0
_080A3BD4: .4byte 0x0000FFB8
_080A3BD8: .4byte gUnk_083533F4
