	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D7CF5C
sub_08D7CF5C: @ 0x08D7CF5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08D7CF80 @ =0x04000128
	ldr r7, [r5]
	ldr r6, _08D7CF84 @ =gUnk_030059F0
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _08D7CFF8
	cmp r0, #1
	bgt _08D7CF88
	cmp r0, #0
	beq _08D7CF8E
	b _08D7D042
	.align 2, 0
_08D7CF80: .4byte 0x04000128
_08D7CF84: .4byte gUnk_030059F0
_08D7CF88:
	cmp r0, #2
	beq _08D7D034
	b _08D7D042
_08D7CF8E:
	movs r1, #0x30
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08D7CFF4
	movs r0, #0x88
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne _08D7D042
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08D7CFF4
	ldr r1, [r6, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08D7CFF4
	ldr r3, _08D7D018 @ =0x04000208
	strh r2, [r3]
	ldr r2, _08D7D01C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7D020 @ =0x0000FF7F
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
	ldr r1, _08D7D024 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08D7D028 @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r6]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_08D7CFF4:
	movs r0, #1
	strb r0, [r6, #1]
_08D7CFF8:
	ldr r2, _08D7D02C @ =gUnk_030059F0
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08D7D034
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08D7D034
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bhi _08D7D030
	adds r0, #1
	strb r0, [r2, #0xa]
	b _08D7D034
	.align 2, 0
_08D7D018: .4byte 0x04000208
_08D7D01C: .4byte 0x04000200
_08D7D020: .4byte 0x0000FF7F
_08D7D024: .4byte 0x04000202
_08D7D028: .4byte 0x0000BBBC
_08D7D02C: .4byte gUnk_030059F0
_08D7D030:
	movs r0, #2
	strb r0, [r2, #1]
_08D7D034:
	mov r0, ip
	bl sub_08D7D184
	mov r0, sb
	mov r1, r8
	bl sub_08D7D0B4
_08D7D042:
	ldr r3, _08D7D074 @ =gUnk_030059F0
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
	bne _08D7D078
	movs r0, #0x80
	orrs r0, r1
	orrs r0, r2
	b _08D7D07C
	.align 2, 0
_08D7D074: .4byte gUnk_030059F0
_08D7D078:
	adds r0, r2, #0
	orrs r0, r1
_08D7D07C:
	adds r1, r0, #0
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _08D7D08A
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
_08D7D08A:
	ldrb r0, [r3, #0xa]
	lsrs r0, r0, #3
	lsls r2, r0, #0xf
	lsls r0, r7, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08D7D0A2
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b _08D7D0A6
_08D7D0A2:
	adds r0, r1, #0
	orrs r0, r2
_08D7D0A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7D0B4
sub_08D7D0B4: @ 0x08D7D0B4
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08D7D174 @ =gUnk_030059F0
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
	ldr r1, _08D7D178 @ =gUnk_03005C20
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
	ldr r2, _08D7D17C @ =0x04000005
	bl sub_08D7D89C
	movs r1, #0
_08D7D12E:
	ldr r3, _08D7D174 @ =gUnk_030059F0
	ldr r2, [r3, #0x28]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	cmp r1, #0xb
	bls _08D7D12E
	mvns r0, r7
	subs r0, #0xe
	strh r0, [r2, #2]
	ldrb r2, [r3]
	cmp r2, #0
	beq _08D7D152
	ldr r1, _08D7D180 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08D7D152:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x14]
	cmp r2, #0
	beq _08D7D16C
	ldrb r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08D7D16C
	ldr r1, _08D7D180 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08D7D16C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D174: .4byte gUnk_030059F0
_08D7D178: .4byte gUnk_03005C20
_08D7D17C: .4byte 0x04000005
_08D7D180: .4byte 0x0400010E

	thumb_func_start sub_08D7D184
sub_08D7D184: @ 0x08D7D184
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _08D7D28C @ =gUnk_03005BE0
	movs r4, #0
	str r4, [sp]
	bl sub_08D7D8BC
	str r0, [sp, #4]
	ldr r1, _08D7D290 @ =gUnk_030059F0
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
_08D7D1B0:
	movs r3, #0
	movs r2, #0
_08D7D1B4:
	ldr r5, _08D7D290 @ =gUnk_030059F0
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
	bls _08D7D1B4
	add r0, sp, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08D7D218
	lsls r1, r3, #0x10
	ldr r0, _08D7D294 @ =0xFFF10000
	cmp r1, r0
	bne _08D7D218
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
	ldr r2, _08D7D298 @ =0x04000005
	bl sub_08D7D89C
_08D7D218:
	movs r0, #0
	str r0, [sp, #8]
	ldr r5, _08D7D290 @ =gUnk_030059F0
	adds r0, r5, #0
	adds r0, #0x50
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	add r0, sp, #8
	ldr r2, _08D7D29C @ =0x05000005
	bl sub_08D7D89C
	movs r0, #4
	add r8, r0
	adds r6, #0x14
	adds r7, #1
	cmp r7, #3
	ble _08D7D1B0
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
	beq _08D7D2D0
	ldrb r0, [r4]
	cmp r0, #8
	bne _08D7D2A0
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08D7D270
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _08D7D270
	ldrb r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #8]
_08D7D270:
	ldrb r5, [r4, #8]
	lsls r2, r5, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08D7D2B8
	movs r0, #0x40
	orrs r0, r5
	strb r0, [r4, #8]
	b _08D7D2B8
	.align 2, 0
_08D7D28C: .4byte gUnk_03005BE0
_08D7D290: .4byte gUnk_030059F0
_08D7D294: .4byte 0xFFF10000
_08D7D298: .4byte 0x04000005
_08D7D29C: .4byte 0x05000005
_08D7D2A0:
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
_08D7D2B8:
	ldr r3, _08D7D2E0 @ =gUnk_030059F0
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
_08D7D2D0:
	ldr r0, _08D7D2E0 @ =gUnk_030059F0
	ldrb r0, [r0, #3]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D7D2E0: .4byte gUnk_030059F0

	thumb_func_start sub_08D7D2E4
sub_08D7D2E4: @ 0x08D7D2E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08D7D360 @ =0x04000208
	strh r6, [r3]
	ldr r2, _08D7D364 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7D368 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _08D7D36C @ =gUnk_03005C20
	ldr r2, _08D7D370 @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl sub_08D7D89C
	ldr r1, _08D7D374 @ =0x04000128
	ldr r0, _08D7D378 @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _08D7D352
	ldr r0, _08D7D37C @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_08D7D332:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _08D7D332
	ldr r1, _08D7D36C @ =gUnk_03005C20
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _08D7D374 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_08D7D352:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D360: .4byte 0x04000208
_08D7D364: .4byte 0x04000200
_08D7D368: .4byte 0x0000FF3F
_08D7D36C: .4byte gUnk_03005C20
_08D7D370: .4byte 0x05000006
_08D7D374: .4byte 0x04000128
_08D7D378: .4byte 0x00002003
_08D7D37C: .4byte 0x0400010C

	thumb_func_start sub_08D7D380
sub_08D7D380: @ 0x08D7D380
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _08D7D398 @ =gUnk_03005C20
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _08D7D38E
	b _08D7D55A
_08D7D38E:
	lsls r0, r0, #2
	ldr r1, _08D7D39C @ =gUnk_0200B3D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08D7D398: .4byte gUnk_03005C20
_08D7D39C: .4byte gUnk_0200B3D8
_08D7D3A0: @ jump table
	.4byte 0x0200B3EC @ case 0
	.4byte 0x0200B404 @ case 1
	.4byte 0x0200B4A0 @ case 2
	.4byte 0x0200B51C @ case 3
	.4byte 0x0200B588 @ case 4
_08D7D3B4:
	ldr r0, [r5]
	ldr r1, _08D7D3C8 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08D7D3C0
	b _08D7D55A
_08D7D3C0:
	movs r0, #1
	strb r0, [r5, #1]
	b _08D7D55A
	.align 2, 0
_08D7D3C8: .4byte 0x00FF00FF
_08D7D3CC:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08D7D3DC
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08D7D3DA
	b _08D7D55A
_08D7D3DA:
	b _08D7D3E6
_08D7D3DC:
	ldr r1, _08D7D41C @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08D7D3E6:
	ldr r0, _08D7D420 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _08D7D424 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _08D7D434
	ldr r2, _08D7D41C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08D7D428 @ =0x0400010C
	ldr r0, _08D7D42C @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08D7D430 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _08D7D454
	.align 2, 0
_08D7D41C: .4byte 0x04000128
_08D7D420: .4byte 0x04000120
_08D7D424: .4byte 0x04000202
_08D7D428: .4byte 0x0400010C
_08D7D42C: .4byte 0x00C0F318
_08D7D430: .4byte 0x04000208
_08D7D434:
	ldr r2, _08D7D460 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08D7D464 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08D7D454:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _08D7D55A
	.align 2, 0
_08D7D460: .4byte 0x04000128
_08D7D464: .4byte 0x04000208
_08D7D468:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08D7D478
	adds r3, r0, #0
	b _08D7D47E
_08D7D478:
	cmp r6, #0
	bge _08D7D47E
	movs r3, #0
_08D7D47E:
	cmp r2, #0
	beq _08D7D484
	str r3, [r2]
_08D7D484:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08D7D4C6
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _08D7D4AA
_08D7D492:
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
	blt _08D7D492
_08D7D4AA:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08D7D4CE
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08D7D4C6
	movs r0, #1
	strb r0, [r5, #3]
_08D7D4C6:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _08D7D4D6
_08D7D4CE:
	ldr r0, _08D7D4E0 @ =gUnk_03005C20
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _08D7D55A
_08D7D4D6:
	ldr r1, _08D7D4E0 @ =gUnk_03005C20
	movs r0, #3
	strb r0, [r1, #1]
	b _08D7D55A
	.align 2, 0
_08D7D4E0: .4byte gUnk_03005C20
_08D7D4E4:
	ldr r3, _08D7D534 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08D7D538 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7D53C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08D7D540 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08D7D544 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _08D7D522
	ldr r1, _08D7D548 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08D7D522:
	ldr r1, _08D7D54C @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _08D7D556
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _08D7D55A
	.align 2, 0
_08D7D534: .4byte 0x04000208
_08D7D538: .4byte 0x04000200
_08D7D53C: .4byte 0x0000FF3F
_08D7D540: .4byte 0x04000128
_08D7D544: .4byte 0x04000120
_08D7D548: .4byte 0x0400010C
_08D7D54C: .4byte 0x04000202
_08D7D550:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _08D7D55A
_08D7D556:
	movs r0, #1
	b _08D7D564
_08D7D55A:
	ldr r1, _08D7D56C @ =gUnk_03005C20
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_08D7D564:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08D7D56C: .4byte gUnk_03005C20

	thumb_func_start sub_08D7D570
sub_08D7D570: @ 0x08D7D570
	push {r4, r5, lr}
	ldr r2, _08D7D594 @ =0x04000120
	ldr r4, [r2]
	ldr r5, _08D7D598 @ =gUnk_03005C20
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _08D7D5A0
	ldr r0, _08D7D59C @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _08D7D5E8
	b _08D7D5D6
	.align 2, 0
_08D7D594: .4byte 0x04000120
_08D7D598: .4byte gUnk_03005C20
_08D7D59C: .4byte 0x04000128
_08D7D5A0:
	ldr r1, _08D7D5B0 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _08D7D5B8
	ldr r0, _08D7D5B4 @ =0xFEFEFEFE
	str r0, [r2]
	b _08D7D5FE
	.align 2, 0
_08D7D5B0: .4byte 0x0400010E
_08D7D5B4: .4byte 0xFEFEFEFE
_08D7D5B8:
	ldr r0, _08D7D5CC @ =0x00001FFF
	cmp r3, r0
	bgt _08D7D5D0
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _08D7D5FE
	.align 2, 0
_08D7D5CC: .4byte 0x00001FFF
_08D7D5D0:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _08D7D5FE
_08D7D5D6:
	ldr r0, _08D7D5E4 @ =0xFEFEFEFE
	cmp r4, r0
	beq _08D7D5FE
	subs r0, r1, #1
	str r0, [r5, #8]
	b _08D7D5FE
	.align 2, 0
_08D7D5E4: .4byte 0xFEFEFEFE
_08D7D5E8:
	ldr r0, _08D7D5F8 @ =0x00001FFF
	cmp r3, r0
	bgt _08D7D5FC
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _08D7D5FE
	.align 2, 0
_08D7D5F8: .4byte 0x00001FFF
_08D7D5FC:
	str r4, [r5, #0xc]
_08D7D5FE:
	ldr r1, [r5, #8]
	ldr r0, _08D7D628 @ =0x00002002
	cmp r1, r0
	bgt _08D7D620
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08D7D620
	ldr r2, _08D7D62C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08D7D630 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08D7D620:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D628: .4byte 0x00002002
_08D7D62C: .4byte 0x04000128
_08D7D630: .4byte 0x0400010E

	thumb_func_start sub_08D7D634
sub_08D7D634: @ 0x08D7D634
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08D7D670 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08D7D674 @ =gUnk_03002640
	str r1, [r0, #4]
	ldr r1, _08D7D678 @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08D7D67C @ =gUnk_03001420
	str r1, [r0, #4]
	ldr r1, _08D7D680 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08D7D684 @ =gUnk_030014E4
	str r2, [r0]
	ldr r0, _08D7D688 @ =gUnk_030014E8
	strb r2, [r0]
	movs r0, #0
	bl sub_08D7CE00
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08D7D670: .4byte 0x040000D4
_08D7D674: .4byte gUnk_03002640
_08D7D678: .4byte 0x85000005
_08D7D67C: .4byte gUnk_03001420
_08D7D680: .4byte 0x85000014
_08D7D684: .4byte gUnk_030014E4
_08D7D688: .4byte gUnk_030014E8

	thumb_func_start sub_08D7D68C
sub_08D7D68C: @ 0x08D7D68C
	push {r4, lr}
	ldr r0, _08D7D6CC @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08D7D6C0
	ldr r3, _08D7D6D0 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08D7D6D4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7D6D8 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _08D7D6DC @ =gUnk_03000740
	ldr r0, _08D7D6E0 @ =gUnk_03005870
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl sub_08D7CE00
_08D7D6C0:
	ldr r1, _08D7D6E4 @ =gUnk_030014E8
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D6CC: .4byte gUnk_030013D0
_08D7D6D0: .4byte 0x04000208
_08D7D6D4: .4byte 0x04000200
_08D7D6D8: .4byte 0x0000FFBF
_08D7D6DC: .4byte gUnk_03000740
_08D7D6E0: .4byte gUnk_03005870
_08D7D6E4: .4byte gUnk_030014E8

	thumb_func_start sub_08D7D6E8
sub_08D7D6E8: @ 0x08D7D6E8
	push {r4, lr}
	ldr r1, _08D7D71C @ =gUnk_030014E8
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08D7D720 @ =gUnk_030013D0
	ldr r0, [r4]
	ldr r1, _08D7D724 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl sub_08D7CF0C
	movs r0, #0
	bl sub_08D7CE00
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08D7D714
	bl nullsub_17
_08D7D714:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D71C: .4byte gUnk_030014E8
_08D7D720: .4byte gUnk_030013D0
_08D7D724: .4byte 0xFFEFFFFF

	thumb_func_start nullsub_97
nullsub_97: @ 0x08D7D728
	bx lr
	.align 2, 0

	thumb_func_start nullsub_17
nullsub_17: @ 0x08D7D72C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_98
nullsub_98: @ 0x08D7D730
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7D734
sub_08D7D734: @ 0x08D7D734
	movs r0, #1
	bx lr
