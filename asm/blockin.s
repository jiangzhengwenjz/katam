	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080A49D0
sub_080A49D0: @ 0x080A49D0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080A4A04 @ =sub_080A4728
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r2, #0
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	str r2, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4A04: .4byte sub_080A4728

	thumb_func_start sub_080A4A08
sub_080A4A08: @ 0x080A4A08
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0xac
	ldr r1, [r4, #0x6c]
	str r1, [r2]
	ldrb r0, [r1]
	cmp r0, #0
	beq _080A4A22
	ldr r0, [r1, #0x70]
	cmp r0, #0
	beq _080A4A22
	str r0, [r2]
_080A4A22:
	ldr r2, _080A4A44 @ =sub_080A47C8
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080A4A48
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080A4A50
	.align 2, 0
_080A4A44: .4byte sub_080A47C8
_080A4A48:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080A4A50:
	str r0, [r4, #8]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	ldr r1, _080A4A78 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #0x68]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080A4A78: .4byte 0xFFFF7FFF

	thumb_func_start sub_080A4A7C
sub_080A4A7C: @ 0x080A4A7C
	push {lr}
	ldr r2, _080A4A8C @ =sub_080A4840
	movs r1, #2
	bl ObjectSetFunc
	pop {r0}
	bx r0
	.align 2, 0
_080A4A8C: .4byte sub_080A4840
