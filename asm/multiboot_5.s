	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E63FA4
sub_08E63FA4: @ 0x08E63FA4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08E63FC8 @ =0x04000128
	ldr r7, [r5]
	ldr r6, _08E63FCC @ =gUnk_03007240
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _08E64040
	cmp r0, #1
	bgt _08E63FD0
	cmp r0, #0
	beq _08E63FD6
	b _08E6408A
	.align 2, 0
_08E63FC8: .4byte 0x04000128
_08E63FCC: .4byte gUnk_03007240
_08E63FD0:
	cmp r0, #2
	beq _08E6407C
	b _08E6408A
_08E63FD6:
	movs r1, #0x30
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08E6403C
	movs r0, #0x88
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne _08E6408A
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08E6403C
	ldr r1, [r6, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E6403C
	ldr r3, _08E64060 @ =0x04000208
	strh r2, [r3]
	ldr r2, _08E64064 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E64068 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r5, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _08E6406C @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08E64070 @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r6]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_08E6403C:
	movs r0, #1
	strb r0, [r6, #1]
_08E64040:
	ldr r2, _08E64074 @ =gUnk_03007240
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08E6407C
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08E6407C
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bhi _08E64078
	adds r0, #1
	strb r0, [r2, #0xa]
	b _08E6407C
	.align 2, 0
_08E64060: .4byte 0x04000208
_08E64064: .4byte 0x04000200
_08E64068: .4byte 0x0000FF7F
_08E6406C: .4byte 0x04000202
_08E64070: .4byte 0x0000BBBC
_08E64074: .4byte gUnk_03007240
_08E64078:
	movs r0, #2
	strb r0, [r2, #1]
_08E6407C:
	mov r0, ip
	bl sub_08E641CC
	mov r0, sb
	mov r1, r8
	bl sub_08E640FC
_08E6408A:
	ldr r3, _08E640BC @ =gUnk_03007240
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
	ldrb r2, [r3, #3]
	ldrb r1, [r3, #8]
	movs r0, #0x10
	ands r0, r1
	orrs r2, r0
	movs r0, #0x20
	ands r0, r1
	orrs r2, r0
	movs r0, #0x40
	ands r0, r1
	orrs r2, r0
	ldrb r0, [r3, #2]
	lsls r1, r0, #8
	ldrb r0, [r3]
	cmp r0, #8
	bne _08E640C0
	movs r0, #0x80
	orrs r0, r1
	orrs r0, r2
	b _08E640C4
	.align 2, 0
_08E640BC: .4byte gUnk_03007240
_08E640C0:
	adds r0, r2, #0
	orrs r0, r1
_08E640C4:
	adds r1, r0, #0
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _08E640D2
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
_08E640D2:
	ldrb r0, [r3, #0xa]
	lsrs r0, r0, #3
	lsls r2, r0, #0xf
	lsls r0, r7, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08E640EA
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b _08E640EE
_08E640EA:
	adds r0, r1, #0
	orrs r0, r2
_08E640EE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E640FC
sub_08E640FC: @ 0x08E640FC
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08E641BC @ =gUnk_03007240
	ldr r4, [r5, #0x28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #1]
	ldr r6, [r5, #0x28]
	ldr r1, _08E641C0 @ =gUnk_03007470
	ldrb r1, [r1, #3]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsls r2, r2, #5
	ldrb r4, [r6, #1]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r6, #1]
	ldr r4, [r5, #0x28]
	ldrb r1, [r5, #8]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldrb r2, [r4, #1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #1]
	ldr r2, [r5, #0x28]
	ldrb r1, [r5, #0xb]
	strb r1, [r2]
	ldr r4, [r5, #0x28]
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
	eors r2, r1
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #1]
	ldr r1, [r5, #0x28]
	strh r7, [r1, #2]
	ldr r1, [r5, #0x28]
	adds r1, #4
	ldr r2, _08E641C4 @ =0x04000005
	bl sub_08E648E4
	movs r1, #0
_08E64176:
	ldr r3, _08E641BC @ =gUnk_03007240
	ldr r2, [r3, #0x28]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	cmp r1, #0xb
	bls _08E64176
	mvns r0, r7
	subs r0, #0xe
	strh r0, [r2, #2]
	ldrb r2, [r3]
	cmp r2, #0
	beq _08E6419A
	ldr r1, _08E641C8 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08E6419A:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x14]
	cmp r2, #0
	beq _08E641B4
	ldrb r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08E641B4
	ldr r1, _08E641C8 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08E641B4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E641BC: .4byte gUnk_03007240
_08E641C0: .4byte gUnk_03007470
_08E641C4: .4byte 0x04000005
_08E641C8: .4byte 0x0400010E

	thumb_func_start sub_08E641CC
sub_08E641CC: @ 0x08E641CC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _08E642D4 @ =gUnk_03007430
	movs r4, #0
	str r4, [sp]
	bl sub_08E64900
	str r0, [sp, #4]
	ldr r1, _08E642D8 @ =gUnk_03007240
	strb r4, [r1, #3]
	ldrb r2, [r1, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #8]
	movs r7, #0
	movs r0, #0
	mov r8, r0
	adds r6, r5, #0
_08E641F8:
	movs r3, #0
	movs r2, #0
_08E641FC:
	ldr r5, _08E642D8 @ =gUnk_03007240
	adds r0, r5, #0
	adds r0, #0x50
	mov r1, r8
	adds r4, r1, r0
	ldr r1, [r4]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r3, r0
	adds r2, #1
	cmp r2, #0xb
	bls _08E641FC
	add r0, sp, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E64260
	lsls r1, r3, #0x10
	ldr r0, _08E642DC @ =0xFFF10000
	cmp r1, r0
	bne _08E64260
	movs r0, #1
	lsls r0, r7
	ldrb r1, [r5, #3]
	orrs r0, r1
	strb r0, [r5, #3]
	ldrb r2, [r5, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r7
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #8]
	ldr r0, [r4]
	adds r0, #4
	adds r1, r6, #0
	ldr r2, _08E642E0 @ =0x04000005
	bl sub_08E648E4
_08E64260:
	movs r0, #0
	str r0, [sp, #8]
	ldr r5, _08E642D8 @ =gUnk_03007240
	adds r0, r5, #0
	adds r0, #0x50
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	add r0, sp, #8
	ldr r2, _08E642E4 @ =0x05000005
	bl sub_08E648E4
	movs r0, #4
	add r8, r0
	adds r6, #0x14
	adds r7, #1
	cmp r7, #3
	ble _08E641F8
	adds r4, r5, #0
	ldrb r0, [r4, #2]
	ldrb r2, [r4, #3]
	adds r3, r0, #0
	orrs r3, r2
	strb r3, [r4, #2]
	movs r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08E64318
	ldrb r0, [r4]
	cmp r0, #8
	bne _08E642E8
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08E642B8
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _08E642B8
	ldrb r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #8]
_08E642B8:
	ldrb r5, [r4, #8]
	lsls r2, r5, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08E64300
	movs r0, #0x40
	orrs r0, r5
	strb r0, [r4, #8]
	b _08E64300
	.align 2, 0
_08E642D4: .4byte gUnk_03007430
_08E642D8: .4byte gUnk_03007240
_08E642DC: .4byte 0xFFF10000
_08E642E0: .4byte 0x04000005
_08E642E4: .4byte 0x05000005
_08E642E8:
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #8]
_08E64300:
	ldr r3, _08E64328 @ =gUnk_03007240
	ldr r0, [r3, #0x50]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	ldrb r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
_08E64318:
	ldr r0, _08E64328 @ =gUnk_03007240
	ldrb r0, [r0, #3]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E64328: .4byte gUnk_03007240

	thumb_func_start sub_08E6432C
sub_08E6432C: @ 0x08E6432C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08E643A8 @ =0x04000208
	strh r6, [r3]
	ldr r2, _08E643AC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E643B0 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _08E643B4 @ =gUnk_03007470
	ldr r2, _08E643B8 @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E648E4
	ldr r1, _08E643BC @ =0x04000128
	ldr r0, _08E643C0 @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _08E6439A
	ldr r0, _08E643C4 @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_08E6437A:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _08E6437A
	ldr r1, _08E643B4 @ =gUnk_03007470
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _08E643BC @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_08E6439A:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E643A8: .4byte 0x04000208
_08E643AC: .4byte 0x04000200
_08E643B0: .4byte 0x0000FF3F
_08E643B4: .4byte gUnk_03007470
_08E643B8: .4byte 0x05000006
_08E643BC: .4byte 0x04000128
_08E643C0: .4byte 0x00002003
_08E643C4: .4byte 0x0400010C

	thumb_func_start sub_08E643C8
sub_08E643C8: @ 0x08E643C8
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _08E643E0 @ =gUnk_03007470
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _08E643D6
	b _08E645A2
_08E643D6:
	lsls r0, r0, #2
	ldr r1, _08E643E4 @ =gUnk_0200CB50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08E643E0: .4byte gUnk_03007470
_08E643E4: .4byte gUnk_0200CB50
_08E643E8: @ jump table
	.4byte 0x0200CB64 @ case 0
	.4byte 0x0200CB7C @ case 1
	.4byte 0x0200CC18 @ case 2
	.4byte 0x0200CC94 @ case 3
	.4byte 0x0200CD00 @ case 4
_08E643FC:
	ldr r0, [r5]
	ldr r1, _08E64410 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08E64408
	b _08E645A2
_08E64408:
	movs r0, #1
	strb r0, [r5, #1]
	b _08E645A2
	.align 2, 0
_08E64410: .4byte 0x00FF00FF
_08E64414:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08E64424
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08E64422
	b _08E645A2
_08E64422:
	b _08E6442E
_08E64424:
	ldr r1, _08E64464 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08E6442E:
	ldr r0, _08E64468 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _08E6446C @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _08E6447C
	ldr r2, _08E64464 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08E64470 @ =0x0400010C
	ldr r0, _08E64474 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08E64478 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _08E6449C
	.align 2, 0
_08E64464: .4byte 0x04000128
_08E64468: .4byte 0x04000120
_08E6446C: .4byte 0x04000202
_08E64470: .4byte 0x0400010C
_08E64474: .4byte 0x00C0F318
_08E64478: .4byte 0x04000208
_08E6447C:
	ldr r2, _08E644A8 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08E644AC @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08E6449C:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _08E645A2
	.align 2, 0
_08E644A8: .4byte 0x04000128
_08E644AC: .4byte 0x04000208
_08E644B0:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08E644C0
	adds r3, r0, #0
	b _08E644C6
_08E644C0:
	cmp r6, #0
	bge _08E644C6
	movs r3, #0
_08E644C6:
	cmp r2, #0
	beq _08E644CC
	str r3, [r2]
_08E644CC:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08E6450E
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _08E644F2
_08E644DA:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	adds r2, #1
	str r2, [r4, #0x14]
	cmp r2, r3
	blt _08E644DA
_08E644F2:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08E64516
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08E6450E
	movs r0, #1
	strb r0, [r5, #3]
_08E6450E:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _08E6451E
_08E64516:
	ldr r0, _08E64528 @ =gUnk_03007470
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _08E645A2
_08E6451E:
	ldr r1, _08E64528 @ =gUnk_03007470
	movs r0, #3
	strb r0, [r1, #1]
	b _08E645A2
	.align 2, 0
_08E64528: .4byte gUnk_03007470
_08E6452C:
	ldr r3, _08E6457C @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E64580 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E64584 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08E64588 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08E6458C @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _08E6456A
	ldr r1, _08E64590 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08E6456A:
	ldr r1, _08E64594 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _08E6459E
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _08E645A2
	.align 2, 0
_08E6457C: .4byte 0x04000208
_08E64580: .4byte 0x04000200
_08E64584: .4byte 0x0000FF3F
_08E64588: .4byte 0x04000128
_08E6458C: .4byte 0x04000120
_08E64590: .4byte 0x0400010C
_08E64594: .4byte 0x04000202
_08E64598:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _08E645A2
_08E6459E:
	movs r0, #1
	b _08E645AC
_08E645A2:
	ldr r1, _08E645B4 @ =gUnk_03007470
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_08E645AC:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08E645B4: .4byte gUnk_03007470

	thumb_func_start sub_08E645B8
sub_08E645B8: @ 0x08E645B8
	push {r4, r5, lr}
	ldr r2, _08E645DC @ =0x04000120
	ldr r4, [r2]
	ldr r5, _08E645E0 @ =gUnk_03007470
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _08E645E8
	ldr r0, _08E645E4 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _08E64630
	b _08E6461E
	.align 2, 0
_08E645DC: .4byte 0x04000120
_08E645E0: .4byte gUnk_03007470
_08E645E4: .4byte 0x04000128
_08E645E8:
	ldr r1, _08E645F8 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _08E64600
	ldr r0, _08E645FC @ =0xFEFEFEFE
	str r0, [r2]
	b _08E64646
	.align 2, 0
_08E645F8: .4byte 0x0400010E
_08E645FC: .4byte 0xFEFEFEFE
_08E64600:
	ldr r0, _08E64614 @ =0x00001FFF
	cmp r3, r0
	bgt _08E64618
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _08E64646
	.align 2, 0
_08E64614: .4byte 0x00001FFF
_08E64618:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _08E64646
_08E6461E:
	ldr r0, _08E6462C @ =0xFEFEFEFE
	cmp r4, r0
	beq _08E64646
	subs r0, r1, #1
	str r0, [r5, #8]
	b _08E64646
	.align 2, 0
_08E6462C: .4byte 0xFEFEFEFE
_08E64630:
	ldr r0, _08E64640 @ =0x00001FFF
	cmp r3, r0
	bgt _08E64644
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _08E64646
	.align 2, 0
_08E64640: .4byte 0x00001FFF
_08E64644:
	str r4, [r5, #0xc]
_08E64646:
	ldr r1, [r5, #8]
	ldr r0, _08E64670 @ =0x00002002
	cmp r1, r0
	bgt _08E64668
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08E64668
	ldr r2, _08E64674 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08E64678 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08E64668:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E64670: .4byte 0x00002002
_08E64674: .4byte 0x04000128
_08E64678: .4byte 0x0400010E

	thumb_func_start sub_08E6467C
sub_08E6467C: @ 0x08E6467C
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08E646B8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08E646BC @ =gUnk_03003E90
	str r1, [r0, #4]
	ldr r1, _08E646C0 @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08E646C4 @ =gUnk_03002C70
	str r1, [r0, #4]
	ldr r1, _08E646C8 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08E646CC @ =gUnk_03002D34
	str r2, [r0]
	ldr r0, _08E646D0 @ =gUnk_03002D38
	strb r2, [r0]
	movs r0, #0
	bl sub_08E63E48
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E646B8: .4byte 0x040000D4
_08E646BC: .4byte gUnk_03003E90
_08E646C0: .4byte 0x85000005
_08E646C4: .4byte gUnk_03002C70
_08E646C8: .4byte 0x85000014
_08E646CC: .4byte gUnk_03002D34
_08E646D0: .4byte gUnk_03002D38

	thumb_func_start sub_08E646D4
sub_08E646D4: @ 0x08E646D4
	push {r4, lr}
	ldr r0, _08E64714 @ =gUnk_03002C20
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08E64708
	ldr r3, _08E64718 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E6471C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E64720 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _08E64724 @ =gUnk_03001F90
	ldr r0, _08E64728 @ =gUnk_030070C0
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl sub_08E63E48
_08E64708:
	ldr r1, _08E6472C @ =gUnk_03002D38
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E64714: .4byte gUnk_03002C20
_08E64718: .4byte 0x04000208
_08E6471C: .4byte 0x04000200
_08E64720: .4byte 0x0000FFBF
_08E64724: .4byte gUnk_03001F90
_08E64728: .4byte gUnk_030070C0
_08E6472C: .4byte gUnk_03002D38

	thumb_func_start sub_08E64730
sub_08E64730: @ 0x08E64730
	push {r4, lr}
	ldr r1, _08E64764 @ =gUnk_03002D38
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08E64768 @ =gUnk_03002C20
	ldr r0, [r4]
	ldr r1, _08E6476C @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl sub_08E63F54
	movs r0, #0
	bl sub_08E63E48
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08E6475C
	bl nullsub_21
_08E6475C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E64764: .4byte gUnk_03002D38
_08E64768: .4byte gUnk_03002C20
_08E6476C: .4byte 0xFFEFFFFF

	thumb_func_start nullsub_43
nullsub_43: @ 0x08E64770
	bx lr
	.align 2, 0

	thumb_func_start nullsub_21
nullsub_21: @ 0x08E64774
	bx lr
	.align 2, 0

	thumb_func_start nullsub_44
nullsub_44: @ 0x08E64778
	bx lr
	.align 2, 0

	thumb_func_start sub_08E6477C
sub_08E6477C: @ 0x08E6477C
	movs r0, #1
	bx lr
