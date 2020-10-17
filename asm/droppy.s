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
