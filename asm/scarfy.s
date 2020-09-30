	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A8048
sub_080A8048: @ 0x080A8048
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x44]
	ldr r1, [r5, #0x44]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A8068
	ldr r0, _080A8064 @ =0x000003FF
	cmp r2, r0
	ble _080A8070
	b _080A8090
	.align 2, 0
_080A8064: .4byte 0x000003FF
_080A8068:
	subs r1, r1, r0
	ldr r0, _080A8084 @ =0x000003FF
	cmp r1, r0
	bgt _080A8090
_080A8070:
	ldr r0, [r5, #8]
	ldr r1, _080A8088 @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r2, _080A808C @ =sub_080A75C4
	adds r0, r5, #0
	movs r1, #0
	bl ObjectSetFunc
	b _080A80E6
	.align 2, 0
_080A8084: .4byte 0x000003FF
_080A8088: .4byte 0xFDFFFFFF
_080A808C: .4byte sub_080A75C4
_080A8090:
	adds r0, r5, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A80E6
	ldr r0, [r5, #8]
	ldr r1, _080A80CC @ =0xFDFFFFFF
	ands r0, r1
	str r0, [r5, #8]
	adds r0, r5, #0
	bl sub_0803D368
	adds r4, r5, #0
	adds r4, #0xac
	str r0, [r4]
	ldr r2, _080A80D0 @ =sub_080A78E4
	adds r0, r5, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A80D4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080A80DC
	.align 2, 0
_080A80CC: .4byte 0xFDFFFFFF
_080A80D0: .4byte sub_080A78E4
_080A80D4:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A80DC:
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x82
	movs r0, #0x24
	strb r0, [r1]
_080A80E6:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A80EC
sub_080A80EC: @ 0x080A80EC
	push {lr}
	ldr r2, _080A80FC @ =sub_080A75C4
	movs r1, #0
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080A80FC: .4byte sub_080A75C4

	thumb_func_start sub_080A8100
sub_080A8100: @ 0x080A8100
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_0803D368
	adds r4, r5, #0
	adds r4, #0xac
	str r0, [r4]
	ldr r2, _080A812C @ =sub_080A78E4
	adds r0, r5, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r0, [r4]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A8130
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080A8138
	.align 2, 0
_080A812C: .4byte sub_080A78E4
_080A8130:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A8138:
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x82
	movs r0, #0x24
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080A8148
sub_080A8148: @ 0x080A8148
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080A8164
	ldr r2, _080A8160 @ =sub_080A7C0C
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	b _080A816E
	.align 2, 0
_080A8160: .4byte sub_080A7C0C
_080A8164:
	ldr r2, _080A817C @ =sub_080A7A88
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
_080A816E:
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A817C: .4byte sub_080A7A88

	thumb_func_start sub_080A8180
sub_080A8180: @ 0x080A8180
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A81A0 @ =sub_080A7D90
	movs r1, #2
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
_080A81A0: .4byte sub_080A7D90

	thumb_func_start sub_080A81A4
sub_080A81A4: @ 0x080A81A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A81C0 @ =sub_080A81C4
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xc0
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A81C0: .4byte sub_080A81C4

	thumb_func_start sub_080A81C4
sub_080A81C4: @ 0x080A81C4
	push {r4, lr}
	adds r4, r0, #0
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #8
	ble _080A81E6
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
_080A81E6:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080A8204
	ldr r0, _080A8200 @ =0x000009FF
	cmp r2, r0
	ble _080A820C
	b _080A8212
	.align 2, 0
_080A8200: .4byte 0x000009FF
_080A8204:
	subs r1, r1, r0
	ldr r0, _080A8218 @ =0x000009FF
	cmp r1, r0
	bgt _080A8212
_080A820C:
	adds r0, r4, #0
	bl sub_080A7F64
_080A8212:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A8218: .4byte 0x000009FF
