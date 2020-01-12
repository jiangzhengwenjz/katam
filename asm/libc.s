	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0815BD24
sub_0815BD24: @ 0x0815BD24
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _0815BD64
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0815BD64
	adds r1, r5, #0
_0815BD3E:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0815BD3E
	cmp r2, #3
	bls _0815BD62
_0815BD58:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _0815BD58
_0815BD62:
	adds r4, r1, #0
_0815BD64:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0815BD7E
	adds r1, r0, #0
_0815BD70:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _0815BD70
_0815BD7E:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start sub_0815BD84
sub_0815BD84: @ 0x0815BD84
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _0815BDCA
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0815BDCA
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _0815BDBE
_0815BDAA:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0815BDAA
	b _0815BDBE
_0815BDBA:
	stm r1!, {r3}
	subs r2, #4
_0815BDBE:
	cmp r2, #3
	bhi _0815BDBA
	adds r3, r1, #0
	b _0815BDCA
_0815BDC6:
	strb r4, [r3]
	adds r3, #1
_0815BDCA:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0815BDC6
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0
