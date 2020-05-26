	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08030B38
sub_08030B38: @ 0x08030B38
	push {r4, lr}
	ldr r4, _08030B88 @ =0x04000208
	movs r3, #0
	strh r3, [r4]
	ldr r1, _08030B8C @ =gUnk_0300050C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r2, _08030B90 @ =0x04000128
	ldrh r1, [r2]
	ldr r0, _08030B94 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08030B98 @ =0x0400012A
	ldr r2, _08030B9C @ =0x00008F52
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08030BA0 @ =gIntrTable
	ldr r0, _08030BA4 @ =gUnk_03000470
	ldr r0, [r0]
	str r0, [r1, #0x1c]
	ldr r0, _08030BA8 @ =gUnk_03000484
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08030BAC @ =gUnk_03000490
	ldrb r1, [r0, #2]
	strb r3, [r0, #2]
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #1]
	strb r1, [r0, #1]
	ldr r2, _08030BB0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08030BB4 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030B88: .4byte 0x04000208
_08030B8C: .4byte gUnk_0300050C
_08030B90: .4byte 0x04000128
_08030B94: .4byte 0x0000BFFF
_08030B98: .4byte 0x0400012A
_08030B9C: .4byte 0x00008F52
_08030BA0: .4byte gIntrTable
_08030BA4: .4byte gUnk_03000470
_08030BA8: .4byte gUnk_03000484
_08030BAC: .4byte gUnk_03000490
_08030BB0: .4byte 0x04000200
_08030BB4: .4byte 0x0000FFBF

	thumb_func_start sub_08030BB8
sub_08030BB8: @ 0x08030BB8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	subs r4, r1, r6
	adds r4, #0x10
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0
	mov r8, r1
	strh r1, [r0]
	ldr r5, _08030C10 @ =gMultiBootParam
	ldr r2, _08030C14 @ =0x01000026
	adds r1, r5, #0
	bl CpuSet
	ldr r1, _08030C18 @ =gUnk_03000490
	adds r0, r6, #0
	adds r0, #0xc0
	str r0, [r1, #0x10]
	mov r0, sb
	str r0, [r1, #0x14]
	subs r4, #0xc0
	str r4, [r1, #0x18]
	str r6, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x4b
	mov r1, r8
	strb r1, [r0]
	adds r0, r5, #0
	bl MultiBootInit
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030C10: .4byte gMultiBootParam
_08030C14: .4byte 0x01000026
_08030C18: .4byte gUnk_03000490

	thumb_func_start sub_08030C1C
sub_08030C1C: @ 0x08030C1C
	push {lr}
	ldr r2, _08030C3C @ =gUnk_03000490
	adds r1, r2, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0
	bne _08030C36
	ldrb r0, [r2, #2]
	cmp r0, #2
	bne _08030C36
	ldrb r0, [r1]
	movs r0, #1
	strb r0, [r1]
_08030C36:
	pop {r0}
	bx r0
	.align 2, 0
_08030C3C: .4byte gUnk_03000490

	thumb_func_start sub_08030C40
sub_08030C40: @ 0x08030C40
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _08030C70 @ =gUnk_0300050C
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08030C8E
	ldr r2, _08030C74 @ =gUnk_03000490
	ldrb r0, [r2, #2]
	cmp r0, #3
	beq _08030C8E
	lsls r0, r3, #0xd
	ldrh r1, [r2, #0xc]
	strh r0, [r2, #0xc]
	ldr r1, [r4]
	cmp r1, #1
	beq _08030C84
	cmp r1, #1
	bgt _08030C78
	cmp r1, #0
	beq _08030C7E
	b _08030C8E
	.align 2, 0
_08030C70: .4byte gUnk_0300050C
_08030C74: .4byte gUnk_03000490
_08030C78:
	cmp r1, #2
	beq _08030C8A
	b _08030C8E
_08030C7E:
	bl sub_080302EC
	b _08030C8E
_08030C84:
	bl sub_0803040C
	b _08030C8E
_08030C8A:
	bl sub_080305F8
_08030C8E:
	pop {r4}
	pop {r0}
	bx r0
