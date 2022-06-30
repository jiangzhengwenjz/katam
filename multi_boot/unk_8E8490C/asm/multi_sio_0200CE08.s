	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0200CE08
sub_0200CE08: @ 0x0200CE08
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _0200CE44 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0200CE48 @ =gUnk_03003E90
	str r1, [r0, #4]
	ldr r1, _0200CE4C @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0200CE50 @ =gUnk_03002C70
	str r1, [r0, #4]
	ldr r1, _0200CE54 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _0200CE58 @ =gUnk_03002D34
	str r2, [r0]
	ldr r0, _0200CE5C @ =gUnk_03002D38
	strb r2, [r0]
	movs r0, #0
	bl MultiSioInit
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0200CE44: .4byte 0x040000D4
_0200CE48: .4byte gUnk_03003E90
_0200CE4C: .4byte 0x85000005
_0200CE50: .4byte gUnk_03002C70
_0200CE54: .4byte 0x85000014
_0200CE58: .4byte gUnk_03002D34
_0200CE5C: .4byte gUnk_03002D38

	thumb_func_start sub_0200CE60
sub_0200CE60: @ 0x0200CE60
	push {r4, lr}
	ldr r0, _0200CEA0 @ =gUnk_03002C20
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0200CE94
	ldr r3, _0200CEA4 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _0200CEA8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200CEAC @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _0200CEB0 @ =gUnk_03001F90
	ldr r0, _0200CEB4 @ =gUnk_030070C0
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl MultiSioInit
_0200CE94:
	ldr r1, _0200CEB8 @ =gUnk_03002D38
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200CEA0: .4byte gUnk_03002C20
_0200CEA4: .4byte 0x04000208
_0200CEA8: .4byte 0x04000200
_0200CEAC: .4byte 0x0000FFBF
_0200CEB0: .4byte gUnk_03001F90
_0200CEB4: .4byte gUnk_030070C0
_0200CEB8: .4byte gUnk_03002D38

	thumb_func_start sub_0200CEBC
sub_0200CEBC: @ 0x0200CEBC
	push {r4, lr}
	ldr r1, _0200CEF0 @ =gUnk_03002D38
	movs r0, #0
	strb r0, [r1]
	ldr r4, _0200CEF4 @ =gUnk_03002C20
	ldr r0, [r4]
	ldr r1, _0200CEF8 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0200CEE8
	bl sub_0200CF00
_0200CEE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200CEF0: .4byte gUnk_03002D38
_0200CEF4: .4byte gUnk_03002C20
_0200CEF8: .4byte 0xFFEFFFFF

	thumb_func_start sub_0200CEFC
sub_0200CEFC: @ 0x0200CEFC
	bx lr
	.align 2, 0

	thumb_func_start sub_0200CF00
sub_0200CF00: @ 0x0200CF00
	bx lr
	.align 2, 0

	thumb_func_start nullsub_014
nullsub_014: @ 0x0200CF04
	bx lr
	.align 2, 0

	thumb_func_start sub_0200CF08
sub_0200CF08: @ 0x0200CF08
	movs r0, #1
	bx lr
