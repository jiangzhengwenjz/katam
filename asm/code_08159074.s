	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08159074
sub_08159074: @ 0x08159074
	ldr r0, _08159080 @ =gUnk_02000000
	movs r1, #0
	str r1, [r0]
	ldr r1, _08159084 @ =0x00020080
	str r1, [r0, #4]
	bx lr
	.align 2, 0
_08159080: .4byte gUnk_02000000
_08159084: .4byte 0x00020080

	thumb_func_start sub_08159088
sub_08159088: @ 0x08159088
	push {lr}
	adds r2, r0, #0
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _081590DE
	lsls r0, r2, #2
	adds r2, r0, #0
	adds r2, #8
	ldr r3, _081590B0 @ =gUnk_02000000
_0815909C:
	ldr r1, [r3, #4]
	cmp r2, r1
	bhi _081590D4
	cmp r2, r1
	bne _081590B4
	rsbs r0, r2, #0
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #8
	b _081590E2
	.align 2, 0
_081590B0: .4byte gUnk_02000000
_081590B4:
	adds r0, r2, #0
	adds r0, #8
	cmp r0, r1
	bgt _081590D4
	adds r1, r3, r2
	ldr r0, [r3]
	str r0, [r1]
	ldr r0, [r3, #4]
	subs r0, r0, r2
	str r0, [r1, #4]
	str r1, [r3]
	rsbs r0, r2, #0
	str r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #8
	b _081590E2
_081590D4:
	ldr r0, [r3]
	cmp r0, #0
	beq _081590DE
	adds r3, r0, #0
	b _0815909C
_081590DE:
	ldr r0, _081590E8 @ =gUnk_0203ADE4
	ldr r0, [r0]
_081590E2:
	pop {r1}
	bx r1
	.align 2, 0
_081590E8: .4byte gUnk_0203ADE4

	thumb_func_start sub_081590EC
sub_081590EC: @ 0x081590EC
	push {r4, lr}
	adds r1, r0, #0
	cmp r1, #0
	beq _08159148
	ldr r0, _08159150 @ =gUnk_0203ADE4
	ldr r0, [r0]
	cmp r0, r1
	beq _08159148
	subs r1, #8
	ldr r3, _08159154 @ =gUnk_02000000
	adds r4, r3, #0
	cmp r1, r3
	beq _0815910E
_08159106:
	adds r3, r4, #0
	ldr r4, [r3]
	cmp r1, r4
	bne _08159106
_0815910E:
	ldr r0, [r1, #4]
	cmp r0, #0
	bge _08159118
	rsbs r0, r0, #0
	str r0, [r1, #4]
_08159118:
	ldr r2, [r3, #4]
	adds r0, r3, r2
	cmp r0, r1
	bne _08159130
	cmp r2, #0
	ble _08159130
	ldr r0, [r4]
	str r0, [r3]
	ldr r0, [r1, #4]
	adds r0, r2, r0
	str r0, [r3, #4]
	adds r1, r3, #0
_08159130:
	ldr r3, [r1, #4]
	adds r2, r1, r3
	ldr r0, [r1]
	cmp r2, r0
	bne _08159148
	ldr r0, [r2, #4]
	cmp r0, #0
	ble _08159148
	adds r0, r3, r0
	str r0, [r1, #4]
	ldr r0, [r2]
	str r0, [r1]
_08159148:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08159150: .4byte gUnk_0203ADE4
_08159154: .4byte gUnk_02000000
