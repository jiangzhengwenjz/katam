	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0800F044
sub_0800F044: @ 0x0800F044
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x3c
	adds r7, r0, #0
	ldr r0, [r7, #0x40]
	mov r8, r0
	ldr r1, [r7, #0x14]
	mov sb, r1
	ldr r0, [r1, #0x6c]
	asrs r0, r0, #0xc
	add r1, sp, #8
	movs r4, #0
	strh r0, [r1]
	mov r2, sb
	ldr r0, [r2, #0x70]
	asrs r0, r0, #0xc
	mov r2, sp
	adds r2, #0xa
	strh r0, [r2]
	mov r3, sb
	ldr r0, [r3, #0x74]
	asrs r0, r0, #0xc
	add r2, sp, #0xc
	strh r0, [r2]
	ldr r0, [r3, #0x78]
	asrs r0, r0, #0xc
	adds r2, #2
	strh r0, [r2]
	mov r0, sp
	movs r2, #8
	bl memcpy
	mov r1, r8
	ldr r0, [r1, #0x40]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [r1, #0x44]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	movs r6, #0
	adds r0, r7, #0
	adds r0, #0x28
	strb r4, [r0]
	ldr r0, [r7, #0x14]
	ldr r1, [sp, #0x10]
	mov r2, sl
	bl sub_080024F0
	ldr r1, _0800F0D4 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _0800F0E8
	cmp r1, r0
	bhi _0800F0D8
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r1, r0
	beq _0800F0E8
	b _0800F0EA
	.align 2, 0
_0800F0D4: .4byte gUnk_082D88B8
_0800F0D8:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _0800F0E8
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r1, r0
	bne _0800F0EA
_0800F0E8:
	movs r6, #1
_0800F0EA:
	mov r0, sp
	ldrh r0, [r0]
	adds r5, r7, #0
	adds r5, #0x26
	ldr r2, [sp, #0x10]
	subs r2, #1
	str r2, [sp, #0x2c]
	cmp r0, r2
	bge _0800F104
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r2, r0
	blt _0800F108
_0800F104:
	movs r0, #0xff
	b _0800F186
_0800F108:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F186
	ldr r4, _0800F13C @ =gUnk_082D88B8
	ldr r3, [sp, #0x10]
	ldr r0, _0800F140 @ =0x0000FFFF
	adds r1, r3, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	mov r2, sl
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	ands r2, r1
	cmp r2, #0
	beq _0800F144
	movs r0, #1
	b _0800F186
	.align 2, 0
_0800F13C: .4byte gUnk_082D88B8
_0800F140: .4byte 0x0000FFFF
_0800F144:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F168
	cmp r6, #0
	beq _0800F156
	strb r2, [r5, #1]
	b _0800F188
_0800F156:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800F164
	movs r0, #3
	b _0800F186
_0800F164:
	movs r0, #2
	b _0800F186
_0800F168:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800F186
	ldr r0, _0800F1A0 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F186:
	strb r0, [r5, #1]
_0800F188:
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, [sp, #0x10]
	subs r1, #2
	cmp r0, r1
	bge _0800F19C
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r1, r0
	blt _0800F1A4
_0800F19C:
	movs r0, #0xff
	b _0800F21A
	.align 2, 0
_0800F1A0: .4byte 0x00000103
_0800F1A4:
	adds r0, r7, #0
	adds r0, #0x27
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F21A
	ldr r4, _0800F1D8 @ =gUnk_082D88B8
	ldr r2, [sp, #0x10]
	ldr r3, _0800F1DC @ =0x0000FFFE
	adds r1, r2, r3
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	mov r2, sl
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _0800F1E0
	movs r0, #1
	b _0800F21A
	.align 2, 0
_0800F1D8: .4byte gUnk_082D88B8
_0800F1DC: .4byte 0x0000FFFE
_0800F1E0:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F1FC
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800F1F8
	movs r0, #3
	b _0800F21A
_0800F1F8:
	movs r0, #2
	b _0800F21A
_0800F1FC:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800F21A
	ldr r0, _0800F238 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F21A:
	strb r0, [r5]
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x30]
	cmp r0, r1
	bge _0800F232
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r1, r0
	blt _0800F23C
_0800F232:
	movs r0, #0xff
	b _0800F2B2
	.align 2, 0
_0800F238: .4byte 0x00000103
_0800F23C:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F2B2
	ldr r4, _0800F26C @ =gUnk_082D88B8
	ldr r2, [sp, #0x30]
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	mov r2, sl
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #6
	ands r2, r1
	cmp r2, #0
	beq _0800F270
	movs r0, #1
	b _0800F2B2
	.align 2, 0
_0800F26C: .4byte gUnk_082D88B8
_0800F270:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F294
	cmp r6, #0
	beq _0800F282
	strb r2, [r5, #3]
	b _0800F2B4
_0800F282:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800F290
	movs r0, #3
	b _0800F2B2
_0800F290:
	movs r0, #2
	b _0800F2B2
_0800F294:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800F2B2
	ldr r0, _0800F2D0 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F2B2:
	strb r0, [r5, #3]
_0800F2B4:
	adds r6, r5, #0
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, [sp, #0x10]
	adds r1, #2
	cmp r0, r1
	bge _0800F2CA
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r1, r0
	blt _0800F2D4
_0800F2CA:
	movs r0, #0xff
	strb r0, [r6, #4]
	b _0800F356
	.align 2, 0
_0800F2D0: .4byte 0x00000103
_0800F2D4:
	adds r0, r7, #0
	adds r0, #0x29
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800F2E2
	strb r0, [r6, #4]
	b _0800F356
_0800F2E2:
	ldr r4, _0800F308 @ =gUnk_082D88B8
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r0, sb
	mov r2, sl
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _0800F30C
	movs r0, #1
	strb r0, [r6, #4]
	b _0800F356
	.align 2, 0
_0800F308: .4byte gUnk_082D88B8
_0800F30C:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F32C
	movs r0, #0x80
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	beq _0800F326
	movs r0, #3
	strb r0, [r6, #4]
	b _0800F356
_0800F326:
	movs r0, #2
	strb r0, [r6, #4]
	b _0800F356
_0800F32C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800F354
	ldr r0, _0800F350 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
	strb r0, [r6, #4]
	b _0800F356
	.align 2, 0
_0800F350: .4byte 0x00000103
_0800F354:
	strb r0, [r5, #4]
_0800F356:
	mov r0, sp
	ldrh r0, [r0, #2]
	adds r5, r7, #0
	adds r5, #0x1c
	mov r3, sl
	subs r3, #1
	str r3, [sp, #0x34]
	cmp r0, r3
	bge _0800F370
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r3, r0
	blt _0800F374
_0800F370:
	movs r0, #0xff
	b _0800F3EC
_0800F374:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F3EC
	ldr r4, _0800F3A8 @ =gUnk_082D88B8
	ldr r2, _0800F3AC @ =0x0000FFFF
	add r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	ldr r1, [sp, #0x10]
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0800F3B0
	movs r0, #1
	b _0800F3EC
	.align 2, 0
_0800F3A8: .4byte gUnk_082D88B8
_0800F3AC: .4byte 0x0000FFFF
_0800F3B0:
	adds r0, r2, #0
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F3CE
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0800F3CA
	movs r0, #3
	b _0800F3EC
_0800F3CA:
	movs r0, #2
	b _0800F3EC
_0800F3CE:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800F3EC
	ldr r0, _0800F408 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F3EC:
	strb r0, [r5, #7]
	mov r0, sp
	ldrh r0, [r0, #2]
	mov r1, sl
	subs r1, #2
	cmp r0, r1
	bge _0800F402
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r1, r0
	blt _0800F40C
_0800F402:
	movs r0, #0xff
	b _0800F484
	.align 2, 0
_0800F408: .4byte 0x00000103
_0800F40C:
	adds r0, r7, #0
	adds r0, #0x23
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F484
	ldr r4, _0800F440 @ =gUnk_082D88B8
	ldr r2, _0800F444 @ =0x0000FFFE
	add r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	ldr r1, [sp, #0x10]
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0800F448
	movs r0, #1
	b _0800F484
	.align 2, 0
_0800F440: .4byte gUnk_082D88B8
_0800F444: .4byte 0x0000FFFE
_0800F448:
	adds r0, r2, #0
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F466
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0800F462
	movs r0, #3
	b _0800F484
_0800F462:
	movs r0, #2
	b _0800F484
_0800F466:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800F484
	ldr r0, _0800F4A0 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F484:
	strb r0, [r5, #2]
	mov r0, sp
	ldrh r0, [r0, #2]
	mov r6, sl
	adds r6, #1
	cmp r0, r6
	bge _0800F49A
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r6, r0
	blt _0800F4A4
_0800F49A:
	movs r0, #0xff
	b _0800F514
	.align 2, 0
_0800F4A0: .4byte 0x00000103
_0800F4A4:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F514
	ldr r4, _0800F4D4 @ =gUnk_082D88B8
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	ldr r1, [sp, #0x10]
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0800F4D8
	movs r0, #1
	b _0800F514
	.align 2, 0
_0800F4D4: .4byte gUnk_082D88B8
_0800F4D8:
	adds r0, r2, #0
	movs r1, #0x83
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F4F6
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0800F4F2
	movs r0, #3
	b _0800F514
_0800F4F2:
	movs r0, #2
	b _0800F514
_0800F4F6:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800F514
	ldr r0, _0800F530 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F514:
	strb r0, [r5, #0x11]
	mov r0, sp
	ldrh r0, [r0, #2]
	mov r2, sl
	adds r2, #2
	cmp r0, r2
	bge _0800F52A
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r2, r0
	blt _0800F534
_0800F52A:
	movs r0, #0xff
	b _0800F5A4
	.align 2, 0
_0800F530: .4byte 0x00000103
_0800F534:
	adds r0, r7, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F5A4
	ldr r4, _0800F564 @ =gUnk_082D88B8
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	ldr r1, [sp, #0x10]
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0800F568
	movs r0, #1
	b _0800F5A4
	.align 2, 0
_0800F564: .4byte gUnk_082D88B8
_0800F568:
	adds r0, r2, #0
	movs r1, #0x83
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F586
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0800F582
	movs r0, #3
	b _0800F5A4
_0800F582:
	movs r0, #2
	b _0800F5A4
_0800F586:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800F5A4
	ldr r0, _0800F5D4 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F5A4:
	strb r0, [r5, #0x16]
	adds r1, r5, #0
	mov r0, sp
	ldrh r0, [r0]
	ldr r2, [sp, #0x2c]
	cmp r0, r2
	bge _0800F5CC
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r2, r0
	bge _0800F5CC
	mov r0, sp
	ldrh r0, [r0, #2]
	ldr r3, [sp, #0x34]
	cmp r0, r3
	bge _0800F5CC
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r3, r0
	blt _0800F5D8
_0800F5CC:
	movs r0, #0xff
	strb r0, [r1, #6]
	b _0800F65A
	.align 2, 0
_0800F5D4: .4byte 0x00000103
_0800F5D8:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F658
	ldr r4, _0800F614 @ =gUnk_082D88B8
	ldr r0, _0800F618 @ =0x0000FFFF
	adds r2, r0, #0
	ldr r3, [sp, #0x10]
	adds r1, r3, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	add r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0800F61C
	movs r0, #1
	b _0800F658
	.align 2, 0
_0800F614: .4byte gUnk_082D88B8
_0800F618: .4byte 0x0000FFFF
_0800F61C:
	adds r0, r2, #0
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F63A
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0800F636
	movs r0, #3
	b _0800F658
_0800F636:
	movs r0, #2
	b _0800F658
_0800F63A:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800F658
	ldr r0, _0800F688 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F658:
	strb r0, [r5, #6]
_0800F65A:
	adds r1, r5, #0
	mov r0, sp
	ldrh r0, [r0]
	ldr r2, [sp, #0x30]
	cmp r0, r2
	bge _0800F680
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r2, r0
	bge _0800F680
	mov r0, sp
	ldrh r0, [r0, #2]
	ldr r3, [sp, #0x34]
	cmp r0, r3
	bge _0800F680
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r3, r0
	blt _0800F68C
_0800F680:
	movs r0, #0xff
	strb r0, [r1, #8]
	b _0800F70A
	.align 2, 0
_0800F688: .4byte 0x00000103
_0800F68C:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F708
	ldr r4, _0800F6C4 @ =gUnk_082D88B8
	ldr r0, [sp, #0x30]
	lsls r1, r0, #0x10
	lsrs r1, r1, #0x10
	ldr r2, _0800F6C8 @ =0x0000FFFF
	add r2, sl
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0800F6CC
	movs r0, #1
	b _0800F708
	.align 2, 0
_0800F6C4: .4byte gUnk_082D88B8
_0800F6C8: .4byte 0x0000FFFF
_0800F6CC:
	adds r0, r2, #0
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F6EA
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0800F6E6
	movs r0, #3
	b _0800F708
_0800F6E6:
	movs r0, #2
	b _0800F708
_0800F6EA:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800F708
	ldr r0, _0800F734 @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F708:
	strb r0, [r5, #8]
_0800F70A:
	adds r2, r5, #0
	mov r0, sp
	ldrh r0, [r0]
	ldr r1, [sp, #0x30]
	cmp r0, r1
	bge _0800F72E
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r1, r0
	bge _0800F72E
	mov r0, sp
	ldrh r0, [r0, #2]
	cmp r0, r6
	bge _0800F72E
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r6, r0
	blt _0800F738
_0800F72E:
	movs r0, #0xff
	strb r0, [r2, #0x12]
	b _0800F7AE
	.align 2, 0
_0800F734: .4byte 0x00000103
_0800F738:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F7AC
	ldr r4, _0800F76C @ =gUnk_082D88B8
	ldr r2, [sp, #0x30]
	lsls r1, r2, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0800F770
	movs r0, #1
	b _0800F7AC
	.align 2, 0
_0800F76C: .4byte gUnk_082D88B8
_0800F770:
	adds r0, r2, #0
	movs r1, #0x83
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F78E
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0800F78A
	movs r0, #3
	b _0800F7AC
_0800F78A:
	movs r0, #2
	b _0800F7AC
_0800F78E:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800F7AC
	ldr r0, _0800F7DC @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F7AC:
	strb r0, [r5, #0x12]
_0800F7AE:
	adds r2, r5, #0
	mov r0, sp
	ldrh r0, [r0]
	ldr r3, [sp, #0x2c]
	cmp r0, r3
	bge _0800F7D4
	mov r0, sp
	ldrh r0, [r0, #4]
	cmp r3, r0
	bge _0800F7D4
	mov r0, sp
	ldrh r0, [r0, #2]
	adds r1, r6, #0
	cmp r0, r1
	bge _0800F7D4
	mov r0, sp
	ldrh r0, [r0, #6]
	cmp r1, r0
	blt _0800F7E0
_0800F7D4:
	movs r0, #0xff
	strb r0, [r2, #0x10]
	b _0800F85E
	.align 2, 0
_0800F7DC: .4byte 0x00000103
_0800F7E0:
	adds r0, r7, #0
	adds r0, #0x28
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800F85C
	ldr r4, _0800F818 @ =gUnk_082D88B8
	ldr r0, [sp, #0x10]
	ldr r2, _0800F81C @ =0x0000FFFF
	adds r1, r0, r2
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r6, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080024F0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _0800F820
	movs r0, #1
	b _0800F85C
	.align 2, 0
_0800F818: .4byte gUnk_082D88B8
_0800F81C: .4byte 0x0000FFFF
_0800F820:
	adds r0, r2, #0
	movs r1, #0x83
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F83E
	movs r0, #0x80
	lsls r0, r0, #5
	ands r2, r0
	cmp r2, #0
	beq _0800F83A
	movs r0, #3
	b _0800F85C
_0800F83A:
	movs r0, #2
	b _0800F85C
_0800F83E:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0800F85C
	ldr r0, _0800F93C @ =0x00000103
	add r0, r8
	ldrb r1, [r0]
	movs r0, #0x17
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	asrs r0, r0, #0x1f
	movs r1, #2
	ands r0, r1
_0800F85C:
	strb r0, [r5, #0x10]
_0800F85E:
	mov r0, r8
	bl sub_080394C8
	adds r7, r0, #0
	mov r3, r8
	ldr r0, [r3, #0x40]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	str r0, [sp, #0x14]
	ldr r0, [r3, #0x44]
	lsls r0, r0, #8
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	mov r0, r8
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0800F886
	b _0800FB68
_0800F886:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800F892
	b _0800F9FC
_0800F892:
	ldr r0, [r7]
	cmp r0, #0
	bne _0800F89A
	b _0800FE40
_0800F89A:
	mov r4, sp
	ldr r2, [sp, #0x14]
	lsls r1, r2, #0x10
	ldr r3, [sp, #0x18]
	lsls r0, r3, #0x10
	ldr r2, _0800F940 @ =0xFFF00000
	adds r2, r2, r0
	mov sl, r2
	ldr r3, _0800F944 @ =0xFFE00000
	adds r3, r3, r0
	mov sb, r3
	ldr r0, _0800F940 @ =0xFFF00000
	adds r0, r0, r1
	mov r8, r0
	ldr r2, _0800F944 @ =0xFFE00000
	adds r2, r1, r2
	str r2, [sp, #0x1c]
	movs r3, #2
	mov ip, r3
_0800F8C0:
	ldr r0, [r7]
	ldr r1, [r0, #0x40]
	lsls r1, r1, #8
	ldr r2, [r0, #0x44]
	lsls r2, r2, #8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	asrs r1, r1, #0x10
	adds r3, r1, r3
	strh r3, [r4]
	ldr r0, [r7]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r2, r2, #0x10
	adds r6, r2, r0
	strh r6, [r4, #2]
	ldr r0, [r7]
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	strh r1, [r4, #4]
	ldr r0, [r7]
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	strh r2, [r4, #6]
	lsls r3, r3, #0x10
	str r3, [sp, #0x38]
	ldr r1, [sp, #0x14]
	lsls r0, r1, #0x10
	asrs r1, r0, #0x10
	ldr r3, [sp, #0x18]
	lsls r2, r3, #0x10
	ldr r3, [sp, #0x38]
	cmp r3, r0
	bgt _0800F964
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800F964
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0800F948
	lsls r0, r6, #0x10
	mov r3, sl
	asrs r1, r3, #0x10
	cmp r0, sl
	bgt _0800F964
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800F964
	mov r0, ip
	strb r0, [r5, #7]
	b _0800F964
	.align 2, 0
_0800F93C: .4byte 0x00000103
_0800F940: .4byte 0xFFF00000
_0800F944: .4byte 0xFFE00000
_0800F948:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0800F964
	lsls r0, r6, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	cmp r0, sb
	bgt _0800F964
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800F964
	mov r0, ip
	strb r0, [r5, #2]
_0800F964:
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r1, r2, #0x10
	cmp r0, r2
	bgt _0800F9B4
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800F9B4
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0800F996
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r3, r8
	asrs r1, r3, #0x10
	cmp r0, r1
	bgt _0800F9B4
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800F9B4
	mov r0, ip
	strb r0, [r5, #0xb]
	b _0800F9B4
_0800F996:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0800F9B4
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r3, [sp, #0x1c]
	asrs r1, r3, #0x10
	cmp r0, r1
	bgt _0800F9B4
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800F9B4
	mov r0, ip
	strb r0, [r5, #0xa]
_0800F9B4:
	ldrb r0, [r5, #6]
	cmp r0, #0
	bne _0800F9EC
	ldr r1, _0800F9F8 @ =0xFFF00000
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	mov r3, r8
	asrs r2, r3, #0x10
	cmp r0, r2
	bgt _0800F9EC
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r2
	blt _0800F9EC
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r0, r1
	bgt _0800F9EC
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, r2
	blt _0800F9EC
	mov r2, ip
	strb r2, [r5, #6]
_0800F9EC:
	adds r7, #4
	ldr r0, [r7]
	cmp r0, #0
	beq _0800F9F6
	b _0800F8C0
_0800F9F6:
	b _0800FE40
	.align 2, 0
_0800F9F8: .4byte 0xFFF00000
_0800F9FC:
	ldr r0, [r7]
	cmp r0, #0
	bne _0800FA04
	b _0800FE40
_0800FA04:
	mov r4, sp
	ldr r3, [sp, #0x14]
	lsls r1, r3, #0x10
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	ldr r3, _0800FAAC @ =0xFFF00000
	adds r3, r3, r0
	mov sl, r3
	ldr r2, _0800FAB0 @ =0xFFE00000
	adds r2, r2, r0
	mov sb, r2
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r3, r3, r1
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x20]
	movs r1, #2
	mov ip, r1
_0800FA2E:
	ldr r0, [r7]
	ldr r1, [r0, #0x40]
	lsls r1, r1, #8
	ldr r2, [r0, #0x44]
	lsls r2, r2, #8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	asrs r1, r1, #0x10
	adds r3, r1, r3
	strh r3, [r4]
	ldr r0, [r7]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r2, r2, #0x10
	adds r6, r2, r0
	strh r6, [r4, #2]
	ldr r0, [r7]
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	strh r1, [r4, #4]
	ldr r0, [r7]
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	strh r2, [r4, #6]
	lsls r3, r3, #0x10
	str r3, [sp, #0x38]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	ldr r3, [sp, #0x18]
	lsls r2, r3, #0x10
	ldr r3, [sp, #0x38]
	cmp r3, r0
	bgt _0800FAD0
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FAD0
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0800FAB4
	lsls r0, r6, #0x10
	mov r3, sl
	asrs r1, r3, #0x10
	cmp r0, sl
	bgt _0800FAD0
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FAD0
	mov r0, ip
	strb r0, [r5, #7]
	b _0800FAD0
	.align 2, 0
_0800FAAC: .4byte 0xFFF00000
_0800FAB0: .4byte 0xFFE00000
_0800FAB4:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0800FAD0
	lsls r0, r6, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	cmp r0, sb
	bgt _0800FAD0
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FAD0
	mov r0, ip
	strb r0, [r5, #2]
_0800FAD0:
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r1, r2, #0x10
	cmp r0, r2
	bgt _0800FB20
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FB20
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0800FB02
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r3, r8
	asrs r1, r3, #0x10
	cmp r0, r1
	bgt _0800FB20
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FB20
	mov r0, ip
	strb r0, [r5, #0xd]
	b _0800FB20
_0800FB02:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0800FB20
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r3, [sp, #0x20]
	asrs r1, r3, #0x10
	cmp r0, r1
	bgt _0800FB20
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FB20
	mov r0, ip
	strb r0, [r5, #0xe]
_0800FB20:
	ldrb r0, [r5, #8]
	cmp r0, #0
	bne _0800FB58
	ldr r1, _0800FB64 @ =0xFFF00000
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	mov r3, r8
	asrs r2, r3, #0x10
	cmp r0, r2
	bgt _0800FB58
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r2
	blt _0800FB58
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r0, r1
	bgt _0800FB58
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, r2
	blt _0800FB58
	mov r2, ip
	strb r2, [r5, #8]
_0800FB58:
	adds r7, #4
	ldr r0, [r7]
	cmp r0, #0
	beq _0800FB62
	b _0800FA2E
_0800FB62:
	b _0800FE40
	.align 2, 0
_0800FB64: .4byte 0xFFF00000
_0800FB68:
	mov r3, r8
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800FB76
	b _0800FCDA
_0800FB76:
	ldr r0, [r7]
	cmp r0, #0
	bne _0800FB7E
	b _0800FE40
_0800FB7E:
	mov r4, sp
	ldr r0, [sp, #0x14]
	lsls r1, r0, #0x10
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	ldr r3, _0800FC20 @ =0xFFF00000
	adds r3, r3, r0
	mov sl, r3
	ldr r2, _0800FC24 @ =0xFFE00000
	adds r2, r2, r0
	mov sb, r2
	ldr r3, _0800FC20 @ =0xFFF00000
	adds r3, r3, r1
	mov r8, r3
	ldr r0, _0800FC24 @ =0xFFE00000
	adds r0, r1, r0
	str r0, [sp, #0x24]
	movs r1, #2
	mov ip, r1
_0800FBA4:
	ldr r0, [r7]
	ldr r1, [r0, #0x40]
	lsls r1, r1, #8
	ldr r2, [r0, #0x44]
	lsls r2, r2, #8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	asrs r1, r1, #0x10
	adds r3, r1, r3
	strh r3, [r4]
	ldr r0, [r7]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r2, r2, #0x10
	adds r6, r2, r0
	strh r6, [r4, #2]
	ldr r0, [r7]
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	strh r1, [r4, #4]
	ldr r0, [r7]
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	strh r2, [r4, #6]
	lsls r3, r3, #0x10
	str r3, [sp, #0x38]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	ldr r3, [sp, #0x18]
	lsls r2, r3, #0x10
	ldr r3, [sp, #0x38]
	cmp r3, r0
	bgt _0800FC44
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FC44
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0800FC28
	lsls r0, r6, #0x10
	mov r3, sl
	asrs r1, r3, #0x10
	cmp r0, sl
	bgt _0800FC44
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FC44
	mov r0, ip
	strb r0, [r5, #7]
	b _0800FC44
	.align 2, 0
_0800FC20: .4byte 0xFFF00000
_0800FC24: .4byte 0xFFE00000
_0800FC28:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0800FC44
	lsls r0, r6, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	cmp r0, sb
	bgt _0800FC44
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FC44
	mov r0, ip
	strb r0, [r5, #2]
_0800FC44:
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r1, r2, #0x10
	cmp r0, r2
	bgt _0800FC94
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FC94
	ldrb r0, [r5, #0xb]
	cmp r0, #0
	bne _0800FC76
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r3, r8
	asrs r1, r3, #0x10
	cmp r0, r1
	bgt _0800FC94
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FC94
	mov r0, ip
	strb r0, [r5, #0xb]
	b _0800FC94
_0800FC76:
	ldrb r0, [r5, #0xa]
	cmp r0, #0
	bne _0800FC94
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r3, [sp, #0x24]
	asrs r1, r3, #0x10
	cmp r0, r1
	bgt _0800FC94
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FC94
	mov r0, ip
	strb r0, [r5, #0xa]
_0800FC94:
	ldrb r0, [r5, #0x10]
	cmp r0, #0
	bne _0800FCCE
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	mov r3, r8
	asrs r2, r3, #0x10
	cmp r0, r2
	bgt _0800FCCE
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r2
	blt _0800FCCE
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r0, r1
	bgt _0800FCCE
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, r2
	blt _0800FCCE
	mov r2, ip
	strb r2, [r5, #0x10]
_0800FCCE:
	adds r7, #4
	ldr r0, [r7]
	cmp r0, #0
	beq _0800FCD8
	b _0800FBA4
_0800FCD8:
	b _0800FE40
_0800FCDA:
	ldr r0, [r7]
	cmp r0, #0
	bne _0800FCE2
	b _0800FE40
_0800FCE2:
	mov r4, sp
	ldr r3, [sp, #0x14]
	lsls r1, r3, #0x10
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x10
	ldr r3, _0800FD88 @ =0xFFF00000
	adds r3, r3, r0
	mov sl, r3
	ldr r2, _0800FD8C @ =0xFFE00000
	adds r2, r2, r0
	mov sb, r2
	movs r3, #0x80
	lsls r3, r3, #0xd
	adds r3, r3, r1
	mov r8, r3
	movs r0, #0x80
	lsls r0, r0, #0xe
	adds r0, r1, r0
	str r0, [sp, #0x28]
	movs r1, #2
	mov ip, r1
_0800FD0C:
	ldr r0, [r7]
	ldr r1, [r0, #0x40]
	lsls r1, r1, #8
	ldr r2, [r0, #0x44]
	lsls r2, r2, #8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	asrs r1, r1, #0x10
	adds r3, r1, r3
	strh r3, [r4]
	ldr r0, [r7]
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	asrs r2, r2, #0x10
	adds r6, r2, r0
	strh r6, [r4, #2]
	ldr r0, [r7]
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	strh r1, [r4, #4]
	ldr r0, [r7]
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r2, r2, r0
	strh r2, [r4, #6]
	lsls r3, r3, #0x10
	str r3, [sp, #0x38]
	ldr r2, [sp, #0x14]
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	ldr r3, [sp, #0x18]
	lsls r2, r3, #0x10
	ldr r3, [sp, #0x38]
	cmp r3, r0
	bgt _0800FDAC
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FDAC
	ldrb r0, [r5, #7]
	cmp r0, #0
	bne _0800FD90
	lsls r0, r6, #0x10
	mov r3, sl
	asrs r1, r3, #0x10
	cmp r0, sl
	bgt _0800FDAC
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FDAC
	mov r0, ip
	strb r0, [r5, #7]
	b _0800FDAC
	.align 2, 0
_0800FD88: .4byte 0xFFF00000
_0800FD8C: .4byte 0xFFE00000
_0800FD90:
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _0800FDAC
	lsls r0, r6, #0x10
	mov r3, sb
	asrs r1, r3, #0x10
	cmp r0, sb
	bgt _0800FDAC
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FDAC
	mov r0, ip
	strb r0, [r5, #2]
_0800FDAC:
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	asrs r1, r2, #0x10
	cmp r0, r2
	bgt _0800FDFC
	movs r3, #6
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FDFC
	ldrb r0, [r5, #0xd]
	cmp r0, #0
	bne _0800FDDE
	movs r1, #0
	ldrsh r0, [r4, r1]
	mov r3, r8
	asrs r1, r3, #0x10
	cmp r0, r1
	bgt _0800FDFC
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FDFC
	mov r0, ip
	strb r0, [r5, #0xd]
	b _0800FDFC
_0800FDDE:
	ldrb r0, [r5, #0xe]
	cmp r0, #0
	bne _0800FDFC
	movs r1, #0
	ldrsh r0, [r4, r1]
	ldr r3, [sp, #0x28]
	asrs r1, r3, #0x10
	cmp r0, r1
	bgt _0800FDFC
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r1
	blt _0800FDFC
	mov r0, ip
	strb r0, [r5, #0xe]
_0800FDFC:
	ldrb r0, [r5, #0x12]
	cmp r0, #0
	bne _0800FE36
	movs r1, #0x80
	lsls r1, r1, #0xd
	adds r0, r2, r1
	lsrs r1, r0, #0x10
	movs r2, #0
	ldrsh r0, [r4, r2]
	mov r3, r8
	asrs r2, r3, #0x10
	cmp r0, r2
	bgt _0800FE36
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, r2
	blt _0800FE36
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsls r1, r1, #0x10
	asrs r2, r1, #0x10
	cmp r0, r1
	bgt _0800FE36
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, r2
	blt _0800FE36
	mov r2, ip
	strb r2, [r5, #0x12]
_0800FE36:
	adds r7, #4
	ldr r0, [r7]
	cmp r0, #0
	beq _0800FE40
	b _0800FD0C
_0800FE40:
	add sp, #0x3c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
