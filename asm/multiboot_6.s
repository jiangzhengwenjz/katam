	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E9103C
sub_08E9103C: @ 0x08E9103C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08E91060 @ =0x04000128
	ldr r7, [r5]
	ldr r6, _08E91064 @ =gUnk_03007240
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _08E910D8
	cmp r0, #1
	bgt _08E91068
	cmp r0, #0
	beq _08E9106E
	b _08E91122
	.align 2, 0
_08E91060: .4byte 0x04000128
_08E91064: .4byte gUnk_03007240
_08E91068:
	cmp r0, #2
	beq _08E91114
	b _08E91122
_08E9106E:
	movs r1, #0x30
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08E910D4
	movs r0, #0x88
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne _08E91122
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08E910D4
	ldr r1, [r6, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E910D4
	ldr r3, _08E910F8 @ =0x04000208
	strh r2, [r3]
	ldr r2, _08E910FC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E91100 @ =0x0000FF7F
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
	ldr r1, _08E91104 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08E91108 @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r6]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_08E910D4:
	movs r0, #1
	strb r0, [r6, #1]
_08E910D8:
	ldr r2, _08E9110C @ =gUnk_03007240
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08E91114
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08E91114
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bhi _08E91110
	adds r0, #1
	strb r0, [r2, #0xa]
	b _08E91114
	.align 2, 0
_08E910F8: .4byte 0x04000208
_08E910FC: .4byte 0x04000200
_08E91100: .4byte 0x0000FF7F
_08E91104: .4byte 0x04000202
_08E91108: .4byte 0x0000BBBC
_08E9110C: .4byte gUnk_03007240
_08E91110:
	movs r0, #2
	strb r0, [r2, #1]
_08E91114:
	mov r0, ip
	bl sub_08E91264
	mov r0, sb
	mov r1, r8
	bl sub_08E91194
_08E91122:
	ldr r3, _08E91154 @ =gUnk_03007240
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
	bne _08E91158
	movs r0, #0x80
	orrs r0, r1
	orrs r0, r2
	b _08E9115C
	.align 2, 0
_08E91154: .4byte gUnk_03007240
_08E91158:
	adds r0, r2, #0
	orrs r0, r1
_08E9115C:
	adds r1, r0, #0
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _08E9116A
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
_08E9116A:
	ldrb r0, [r3, #0xa]
	lsrs r0, r0, #3
	lsls r2, r0, #0xf
	lsls r0, r7, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08E91182
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b _08E91186
_08E91182:
	adds r0, r1, #0
	orrs r0, r2
_08E91186:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E91194
sub_08E91194: @ 0x08E91194
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08E91254 @ =gUnk_03007240
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
	ldr r1, _08E91258 @ =gUnk_03007470
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
	ldr r2, _08E9125C @ =0x04000005
	bl sub_08E9197C
	movs r1, #0
_08E9120E:
	ldr r3, _08E91254 @ =gUnk_03007240
	ldr r2, [r3, #0x28]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	cmp r1, #0xb
	bls _08E9120E
	mvns r0, r7
	subs r0, #0xe
	strh r0, [r2, #2]
	ldrb r2, [r3]
	cmp r2, #0
	beq _08E91232
	ldr r1, _08E91260 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08E91232:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x14]
	cmp r2, #0
	beq _08E9124C
	ldrb r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08E9124C
	ldr r1, _08E91260 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08E9124C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E91254: .4byte gUnk_03007240
_08E91258: .4byte gUnk_03007470
_08E9125C: .4byte 0x04000005
_08E91260: .4byte 0x0400010E

	thumb_func_start sub_08E91264
sub_08E91264: @ 0x08E91264
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _08E9136C @ =gUnk_03007430
	movs r4, #0
	str r4, [sp]
	bl sub_08E91998
	str r0, [sp, #4]
	ldr r1, _08E91370 @ =gUnk_03007240
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
_08E91290:
	movs r3, #0
	movs r2, #0
_08E91294:
	ldr r5, _08E91370 @ =gUnk_03007240
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
	bls _08E91294
	add r0, sp, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E912F8
	lsls r1, r3, #0x10
	ldr r0, _08E91374 @ =0xFFF10000
	cmp r1, r0
	bne _08E912F8
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
	ldr r2, _08E91378 @ =0x04000005
	bl sub_08E9197C
_08E912F8:
	movs r0, #0
	str r0, [sp, #8]
	ldr r5, _08E91370 @ =gUnk_03007240
	adds r0, r5, #0
	adds r0, #0x50
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	add r0, sp, #8
	ldr r2, _08E9137C @ =0x05000005
	bl sub_08E9197C
	movs r0, #4
	add r8, r0
	adds r6, #0x14
	adds r7, #1
	cmp r7, #3
	ble _08E91290
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
	beq _08E913B0
	ldrb r0, [r4]
	cmp r0, #8
	bne _08E91380
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08E91350
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _08E91350
	ldrb r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #8]
_08E91350:
	ldrb r5, [r4, #8]
	lsls r2, r5, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08E91398
	movs r0, #0x40
	orrs r0, r5
	strb r0, [r4, #8]
	b _08E91398
	.align 2, 0
_08E9136C: .4byte gUnk_03007430
_08E91370: .4byte gUnk_03007240
_08E91374: .4byte 0xFFF10000
_08E91378: .4byte 0x04000005
_08E9137C: .4byte 0x05000005
_08E91380:
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
_08E91398:
	ldr r3, _08E913C0 @ =gUnk_03007240
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
_08E913B0:
	ldr r0, _08E913C0 @ =gUnk_03007240
	ldrb r0, [r0, #3]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E913C0: .4byte gUnk_03007240

	thumb_func_start sub_08E913C4
sub_08E913C4: @ 0x08E913C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08E91440 @ =0x04000208
	strh r6, [r3]
	ldr r2, _08E91444 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E91448 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _08E9144C @ =gUnk_03007470
	ldr r2, _08E91450 @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E9197C
	ldr r1, _08E91454 @ =0x04000128
	ldr r0, _08E91458 @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _08E91432
	ldr r0, _08E9145C @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_08E91412:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _08E91412
	ldr r1, _08E9144C @ =gUnk_03007470
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _08E91454 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_08E91432:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E91440: .4byte 0x04000208
_08E91444: .4byte 0x04000200
_08E91448: .4byte 0x0000FF3F
_08E9144C: .4byte gUnk_03007470
_08E91450: .4byte 0x05000006
_08E91454: .4byte 0x04000128
_08E91458: .4byte 0x00002003
_08E9145C: .4byte 0x0400010C

	thumb_func_start sub_08E91460
sub_08E91460: @ 0x08E91460
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _08E91478 @ =gUnk_03007470
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _08E9146E
	b _08E9163A
_08E9146E:
	lsls r0, r0, #2
	ldr r1, _08E9147C @ =gUnk_0200CB74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08E91478: .4byte gUnk_03007470
_08E9147C: .4byte gUnk_0200CB74
_08E91480: @ jump table
	.4byte 0x0200CB88 @ case 0
	.4byte 0x0200CBA0 @ case 1
	.4byte 0x0200CC3C @ case 2
	.4byte 0x0200CCB8 @ case 3
	.4byte 0x0200CD24 @ case 4
_08E91494:
	ldr r0, [r5]
	ldr r1, _08E914A8 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08E914A0
	b _08E9163A
_08E914A0:
	movs r0, #1
	strb r0, [r5, #1]
	b _08E9163A
	.align 2, 0
_08E914A8: .4byte 0x00FF00FF
_08E914AC:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08E914BC
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08E914BA
	b _08E9163A
_08E914BA:
	b _08E914C6
_08E914BC:
	ldr r1, _08E914FC @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08E914C6:
	ldr r0, _08E91500 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _08E91504 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _08E91514
	ldr r2, _08E914FC @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08E91508 @ =0x0400010C
	ldr r0, _08E9150C @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08E91510 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _08E91534
	.align 2, 0
_08E914FC: .4byte 0x04000128
_08E91500: .4byte 0x04000120
_08E91504: .4byte 0x04000202
_08E91508: .4byte 0x0400010C
_08E9150C: .4byte 0x00C0F318
_08E91510: .4byte 0x04000208
_08E91514:
	ldr r2, _08E91540 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08E91544 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08E91534:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _08E9163A
	.align 2, 0
_08E91540: .4byte 0x04000128
_08E91544: .4byte 0x04000208
_08E91548:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08E91558
	adds r3, r0, #0
	b _08E9155E
_08E91558:
	cmp r6, #0
	bge _08E9155E
	movs r3, #0
_08E9155E:
	cmp r2, #0
	beq _08E91564
	str r3, [r2]
_08E91564:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08E915A6
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _08E9158A
_08E91572:
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
	blt _08E91572
_08E9158A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08E915AE
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08E915A6
	movs r0, #1
	strb r0, [r5, #3]
_08E915A6:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _08E915B6
_08E915AE:
	ldr r0, _08E915C0 @ =gUnk_03007470
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _08E9163A
_08E915B6:
	ldr r1, _08E915C0 @ =gUnk_03007470
	movs r0, #3
	strb r0, [r1, #1]
	b _08E9163A
	.align 2, 0
_08E915C0: .4byte gUnk_03007470
_08E915C4:
	ldr r3, _08E91614 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E91618 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E9161C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08E91620 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08E91624 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _08E91602
	ldr r1, _08E91628 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08E91602:
	ldr r1, _08E9162C @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _08E91636
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _08E9163A
	.align 2, 0
_08E91614: .4byte 0x04000208
_08E91618: .4byte 0x04000200
_08E9161C: .4byte 0x0000FF3F
_08E91620: .4byte 0x04000128
_08E91624: .4byte 0x04000120
_08E91628: .4byte 0x0400010C
_08E9162C: .4byte 0x04000202
_08E91630:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _08E9163A
_08E91636:
	movs r0, #1
	b _08E91644
_08E9163A:
	ldr r1, _08E9164C @ =gUnk_03007470
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_08E91644:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08E9164C: .4byte gUnk_03007470

	thumb_func_start sub_08E91650
sub_08E91650: @ 0x08E91650
	push {r4, r5, lr}
	ldr r2, _08E91674 @ =0x04000120
	ldr r4, [r2]
	ldr r5, _08E91678 @ =gUnk_03007470
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _08E91680
	ldr r0, _08E9167C @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _08E916C8
	b _08E916B6
	.align 2, 0
_08E91674: .4byte 0x04000120
_08E91678: .4byte gUnk_03007470
_08E9167C: .4byte 0x04000128
_08E91680:
	ldr r1, _08E91690 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _08E91698
	ldr r0, _08E91694 @ =0xFEFEFEFE
	str r0, [r2]
	b _08E916DE
	.align 2, 0
_08E91690: .4byte 0x0400010E
_08E91694: .4byte 0xFEFEFEFE
_08E91698:
	ldr r0, _08E916AC @ =0x00001FFF
	cmp r3, r0
	bgt _08E916B0
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _08E916DE
	.align 2, 0
_08E916AC: .4byte 0x00001FFF
_08E916B0:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _08E916DE
_08E916B6:
	ldr r0, _08E916C4 @ =0xFEFEFEFE
	cmp r4, r0
	beq _08E916DE
	subs r0, r1, #1
	str r0, [r5, #8]
	b _08E916DE
	.align 2, 0
_08E916C4: .4byte 0xFEFEFEFE
_08E916C8:
	ldr r0, _08E916D8 @ =0x00001FFF
	cmp r3, r0
	bgt _08E916DC
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _08E916DE
	.align 2, 0
_08E916D8: .4byte 0x00001FFF
_08E916DC:
	str r4, [r5, #0xc]
_08E916DE:
	ldr r1, [r5, #8]
	ldr r0, _08E91708 @ =0x00002002
	cmp r1, r0
	bgt _08E91700
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08E91700
	ldr r2, _08E9170C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08E91710 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08E91700:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E91708: .4byte 0x00002002
_08E9170C: .4byte 0x04000128
_08E91710: .4byte 0x0400010E

	thumb_func_start sub_08E91714
sub_08E91714: @ 0x08E91714
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08E91750 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08E91754 @ =gUnk_03003E90
	str r1, [r0, #4]
	ldr r1, _08E91758 @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08E9175C @ =gUnk_03002C70
	str r1, [r0, #4]
	ldr r1, _08E91760 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08E91764 @ =gUnk_03002D34
	str r2, [r0]
	ldr r0, _08E91768 @ =gUnk_03002D38
	strb r2, [r0]
	movs r0, #0
	bl sub_08E90EE0
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E91750: .4byte 0x040000D4
_08E91754: .4byte gUnk_03003E90
_08E91758: .4byte 0x85000005
_08E9175C: .4byte gUnk_03002C70
_08E91760: .4byte 0x85000014
_08E91764: .4byte gUnk_03002D34
_08E91768: .4byte gUnk_03002D38

	thumb_func_start sub_08E9176C
sub_08E9176C: @ 0x08E9176C
	push {r4, lr}
	ldr r0, _08E917AC @ =gUnk_03002C20
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08E917A0
	ldr r3, _08E917B0 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E917B4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E917B8 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _08E917BC @ =gUnk_03001F90
	ldr r0, _08E917C0 @ =gUnk_030070C0
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl sub_08E90EE0
_08E917A0:
	ldr r1, _08E917C4 @ =gUnk_03002D38
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E917AC: .4byte gUnk_03002C20
_08E917B0: .4byte 0x04000208
_08E917B4: .4byte 0x04000200
_08E917B8: .4byte 0x0000FFBF
_08E917BC: .4byte gUnk_03001F90
_08E917C0: .4byte gUnk_030070C0
_08E917C4: .4byte gUnk_03002D38

	thumb_func_start sub_08E917C8
sub_08E917C8: @ 0x08E917C8
	push {r4, lr}
	ldr r1, _08E917FC @ =gUnk_03002D38
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08E91800 @ =gUnk_03002C20
	ldr r0, [r4]
	ldr r1, _08E91804 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl sub_08E90FEC
	movs r0, #0
	bl sub_08E90EE0
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08E917F4
	bl nullsub_24
_08E917F4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E917FC: .4byte gUnk_03002D38
_08E91800: .4byte gUnk_03002C20
_08E91804: .4byte 0xFFEFFFFF

	thumb_func_start nullsub_55
nullsub_55: @ 0x08E91808
	bx lr
	.align 2, 0

	thumb_func_start nullsub_24
nullsub_24: @ 0x08E9180C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_56
nullsub_56: @ 0x08E91810
	bx lr
	.align 2, 0

	thumb_func_start sub_08E91814
sub_08E91814: @ 0x08E91814
	movs r0, #1
	bx lr
