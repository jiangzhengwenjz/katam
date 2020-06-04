	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08019CB8
sub_08019CB8: @ 0x08019CB8
	push {lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08019CD4 @ =gUnk_02038960
	ldr r2, _08019CD8 @ =0x01000002
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08019CD4: .4byte gUnk_02038960
_08019CD8: .4byte 0x01000002

	thumb_func_start sub_08019CDC
sub_08019CDC: @ 0x08019CDC
	push {r4, r5, r6, lr}
	movs r3, #0
	movs r0, #0
	ldr r6, _08019D18 @ =gUnk_02038960
	movs r5, #1
_08019CE6:
	movs r1, #0
	adds r4, r0, #1
	adds r0, r0, r6
	ldrb r2, [r0]
_08019CEE:
	adds r0, r2, #0
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _08019CFE
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
_08019CFE:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08019CEE
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0xf
	bls _08019CE6
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08019D18: .4byte gUnk_02038960

	thumb_func_start sub_08019D1C
sub_08019D1C: @ 0x08019D1C
	lsls r0, r0, #0x18
	ldr r1, _08019D38 @ =gUnk_02038960
	lsrs r2, r0, #0x1b
	adds r2, r2, r1
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ands r1, r0
	lsrs r1, r1, #0x18
	movs r0, #1
	lsls r0, r1
	ldrb r1, [r2]
	orrs r0, r1
	strb r0, [r2]
	bx lr
	.align 2, 0
_08019D38: .4byte gUnk_02038960

	thumb_func_start sub_08019D3C
sub_08019D3C: @ 0x08019D3C
	adds r2, r0, #0
	lsls r2, r2, #0x18
	ldr r1, _08019D58 @ =gUnk_02038960
	lsrs r0, r2, #0x1b
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ands r1, r2
	lsrs r1, r1, #0x18
	asrs r0, r1
	movs r1, #1
	ands r0, r1
	bx lr
	.align 2, 0
_08019D58: .4byte gUnk_02038960

	thumb_func_start sub_08019D5C
sub_08019D5C: @ 0x08019D5C
	push {r4, lr}
	movs r2, #0
	movs r1, #0
	ldr r0, _08019D8C @ =gUnk_02038960
	movs r4, #1
	ldr r3, [r0, #0x10]
_08019D68:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08019D78
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08019D78:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #7
	bls _08019D68
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08019D8C: .4byte gUnk_02038960

	thumb_func_start sub_08019D90
sub_08019D90: @ 0x08019D90
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08019DA4 @ =gUnk_02038960
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x10]
	orrs r0, r1
	str r0, [r2, #0x10]
	bx lr
	.align 2, 0
_08019DA4: .4byte gUnk_02038960

	thumb_func_start sub_08019DA8
sub_08019DA8: @ 0x08019DA8
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08019DC4 @ =gUnk_02038960
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x10]
	ands r0, r1
	cmp r0, #0
	beq _08019DBE
	movs r0, #1
_08019DBE:
	pop {r1}
	bx r1
	.align 2, 0
_08019DC4: .4byte gUnk_02038960

	thumb_func_start sub_08019DC8
sub_08019DC8: @ 0x08019DC8
	push {r4, lr}
	movs r2, #0
	movs r1, #0
	ldr r0, _08019DF8 @ =gUnk_02038960
	movs r4, #1
	ldr r3, [r0, #0x14]
_08019DD4:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08019DE4
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08019DE4:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xd
	bls _08019DD4
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08019DF8: .4byte gUnk_02038960

	thumb_func_start sub_08019DFC
sub_08019DFC: @ 0x08019DFC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08019E10 @ =gUnk_02038960
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x14]
	orrs r0, r1
	str r0, [r2, #0x14]
	bx lr
	.align 2, 0
_08019E10: .4byte gUnk_02038960

	thumb_func_start sub_08019E14
sub_08019E14: @ 0x08019E14
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08019E30 @ =gUnk_02038960
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x14]
	ands r0, r1
	cmp r0, #0
	beq _08019E2A
	movs r0, #1
_08019E2A:
	pop {r1}
	bx r1
	.align 2, 0
_08019E30: .4byte gUnk_02038960

	thumb_func_start sub_08019E34
sub_08019E34: @ 0x08019E34
	push {r4, lr}
	movs r2, #0
	movs r1, #0
	ldr r0, _08019E64 @ =gUnk_02038960
	movs r4, #1
	ldr r3, [r0, #0x18]
_08019E40:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08019E50
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08019E50:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0xa
	bls _08019E40
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08019E64: .4byte gUnk_02038960

	thumb_func_start sub_08019E68
sub_08019E68: @ 0x08019E68
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08019E7C @ =gUnk_02038960
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x18]
	orrs r0, r1
	str r0, [r2, #0x18]
	bx lr
	.align 2, 0
_08019E7C: .4byte gUnk_02038960

	thumb_func_start sub_08019E80
sub_08019E80: @ 0x08019E80
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08019E9C @ =gUnk_02038960
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x18]
	ands r0, r1
	cmp r0, #0
	beq _08019E96
	movs r0, #1
_08019E96:
	pop {r1}
	bx r1
	.align 2, 0
_08019E9C: .4byte gUnk_02038960

	thumb_func_start sub_08019EA0
sub_08019EA0: @ 0x08019EA0
	push {r4, lr}
	movs r2, #0
	movs r1, #0
	ldr r0, _08019ED0 @ =gUnk_02038960
	movs r4, #1
	ldr r3, [r0, #0x1c]
_08019EAC:
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r3
	cmp r0, #0
	beq _08019EBC
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
_08019EBC:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #9
	bls _08019EAC
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08019ED0: .4byte gUnk_02038960

	thumb_func_start sub_08019ED4
sub_08019ED4: @ 0x08019ED4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08019EE8 @ =gUnk_02038960
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x1c]
	orrs r0, r1
	str r0, [r2, #0x1c]
	bx lr
	.align 2, 0
_08019EE8: .4byte gUnk_02038960

	thumb_func_start sub_08019EEC
sub_08019EEC: @ 0x08019EEC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08019F08 @ =gUnk_02038960
	movs r1, #1
	lsls r1, r0
	ldr r0, [r2, #0x1c]
	ands r0, r1
	cmp r0, #0
	beq _08019F02
	movs r0, #1
_08019F02:
	pop {r1}
	bx r1
	.align 2, 0
_08019F08: .4byte gUnk_02038960

	thumb_func_start sub_08019F0C
sub_08019F0C: @ 0x08019F0C
	ldr r0, _08019F14 @ =gUnk_02038960
	ldrh r0, [r0, #0x20]
	bx lr
	.align 2, 0
_08019F14: .4byte gUnk_02038960

	thumb_func_start sub_08019F18
sub_08019F18: @ 0x08019F18
	ldr r1, _08019F24 @ =gUnk_02038960
	ldrh r0, [r1, #0x20]
	adds r0, #1
	strh r0, [r1, #0x20]
	bx lr
	.align 2, 0
_08019F24: .4byte gUnk_02038960
