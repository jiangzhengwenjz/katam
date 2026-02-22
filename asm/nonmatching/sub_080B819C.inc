    .include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	adds r4, r0, #0
	movs r2, #0
	adds r0, #0x85
	ldrb r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _080B81BA
	b _080B8940
_080B81BA:
	movs r0, #0xc0
	ands r0, r1
	cmp r0, #0x40
	beq _080B81C4
	b _080B837E
_080B81C4:
	ldr r0, [r4, #0x40]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x3f
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x44]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r0, #0
	str r0, [sp, #8]
	lsls r1, r5, #0x10
	mov sb, r1
	asrs r2, r1, #0x10
	ldr r0, _080B836C @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r6, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r8, r1
	cmp r2, r0
	bgt _080B8260
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8260
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8260
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8260
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #8]
_080B8260:
	ldr r1, [sp, #8]
	lsls r0, r1, #2
	ldr r1, _080B8370 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8276
	b _080B8940
_080B8276:
	adds r0, r1, #0
	mov sb, r0
	movs r7, #0
	lsls r1, r5, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B836C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r2, r0
	bgt _080B82DE
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B82DE
	mov r1, sl
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B82DE
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B82DE
	lsrs r1, r6, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B82DE:
	lsls r0, r7, #2
	add r0, sb
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8374
	ldr r0, _080B8370 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	asrs r2, r6, #0x10
	ldr r3, _080B836C @ =gCurLevelInfo
	mov r0, r8
	ldrb r7, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r7, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8354
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8354
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	asrs r2, r5, #0x10
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8354
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8354
	lsrs r1, r6, #0x10
	lsrs r2, r5, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B8354:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8368
	b _080B8940
_080B8368:
	ldr r1, [sp, #4]
	b _080B8376
	.align 2, 0
_080B836C: .4byte gCurLevelInfo
_080B8370: .4byte gUnk_082D88B8
_080B8374:
	mov r1, sl
_080B8376:
	lsls r0, r1, #0x10
	asrs r0, r0, #4
	str r0, [r4, #0x44]
	b _080B8940
_080B837E:
	cmp r0, #0
	beq _080B8384
	b _080B8544
_080B8384:
	ldr r0, [r4, #0x40]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x44]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	movs r0, #0
	str r0, [sp, #0xc]
	lsls r1, r5, #0x10
	mov sb, r1
	asrs r2, r1, #0x10
	ldr r0, _080B852C @ =gCurLevelInfo
	mov ip, r0
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r6, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r8, r1
	cmp r2, r0
	bgt _080B8420
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8420
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8420
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8420
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
_080B8420:
	ldr r1, [sp, #0xc]
	lsls r0, r1, #2
	ldr r1, _080B8530 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8436
	b _080B8940
_080B8436:
	adds r0, r1, #0
	mov sb, r0
	movs r7, #0
	lsls r1, r5, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B852C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r1, #0
	cmp r2, r0
	bgt _080B849E
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B849E
	mov r1, sl
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B849E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B849E
	lsrs r1, r6, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_080B849E:
	lsls r0, r7, #2
	add r0, sb
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8534
	ldr r0, _080B8530 @ =gUnk_082D88B8
	mov sl, r0
	movs r1, #0
	mov sb, r1
	asrs r2, r6, #0x10
	ldr r3, _080B852C @ =gCurLevelInfo
	mov r0, r8
	ldrb r7, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r7, #0
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8514
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8514
	ldr r0, [sp, #4]
	lsls r5, r0, #0x10
	asrs r2, r5, #0x10
	adds r0, r3, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8514
	adds r0, r3, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8514
	lsrs r1, r6, #0x10
	lsrs r2, r5, #0x10
	adds r0, r7, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B8514:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8528
	b _080B8940
_080B8528:
	ldr r1, [sp, #4]
	b _080B8536
	.align 2, 0
_080B852C: .4byte gCurLevelInfo
_080B8530: .4byte gUnk_082D88B8
_080B8534:
	mov r1, sl
_080B8536:
	lsls r0, r1, #0x10
	asrs r0, r0, #4
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	str r0, [r4, #0x44]
	b _080B8940
_080B8544:
	cmp r0, #0x80
	beq _080B854A
	b _080B873E
_080B854A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B855A
	adds r0, r4, #0
	adds r0, #0x3c
	b _080B855E
_080B855A:
	adds r0, r4, #0
	adds r0, #0x3e
_080B855E:
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	ldr r0, [r4, #0x44]
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #0x10]
	lsls r5, r5, #0x10
	mov sb, r5
	asrs r5, r5, #0x10
	ldr r1, _080B871C @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r6, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	mov r8, r1
	cmp r5, r0
	bgt _080B85F6
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B85F6
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B85F6
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B85F6
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
_080B85F6:
	ldr r1, [sp, #0x10]
	lsls r0, r1, #2
	ldr r1, _080B8720 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B860C
	b _080B8940
_080B860C:
	movs r0, #0
	mov sb, r0
	mov r0, sl
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B871C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r5, r1, #0
	cmp r2, r0
	bgt _080B8674
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8674
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8674
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8674
	lsrs r1, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B8674:
	mov r1, sb
	lsls r0, r1, #2
	ldr r1, _080B8720 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8728
	adds r0, r1, #0
	mov sl, r0
	movs r1, #0
	mov sb, r1
	ldr r0, [sp]
	lsls r1, r0, #0x10
	asrs r2, r1, #0x10
	ldr r0, _080B871C @ =gCurLevelInfo
	mov ip, r0
	mov r0, r8
	ldrb r6, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r6, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r5, r1, #0
	cmp r2, r0
	bgt _080B86F4
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B86F4
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B86F4
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B86F4
	lsrs r1, r5, #0x10
	lsrs r2, r2, #0x10
	adds r0, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
_080B86F4:
	mov r1, sb
	lsls r0, r1, #2
	add r0, sl
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8708
	b _080B8940
_080B8708:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8724
	asrs r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #5
	b _080B893C
	.align 2, 0
_080B871C: .4byte gCurLevelInfo
_080B8720: .4byte gUnk_082D88B8
_080B8724:
	asrs r0, r5, #4
	b _080B893E
_080B8728:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B873A
	asrs r0, r5, #4
	movs r1, #0x80
	lsls r1, r1, #5
	b _080B893C
_080B873A:
	asrs r0, r5, #4
	b _080B893E
_080B873E:
	cmp r0, #0xc0
	beq _080B8744
	b _080B8940
_080B8744:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8754
	adds r0, r4, #0
	adds r0, #0x3e
	b _080B8758
_080B8754:
	adds r0, r4, #0
	adds r0, #0x3c
_080B8758:
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r0, r1, #8
	ldr r2, [r4, #0x40]
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	ldr r0, [r4, #0x44]
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	adds r0, r1, #3
	lsls r0, r0, #8
	adds r0, r2, r0
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov sl, r0
	subs r1, #3
	lsls r1, r1, #8
	adds r2, r2, r1
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	str r2, [sp]
	movs r0, #0
	str r0, [sp, #0x14]
	lsls r2, r5, #0x10
	asrs r5, r2, #0x10
	ldr r1, _080B8914 @ =gCurLevelInfo
	mov ip, r1
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	mov sb, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, sb
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	adds r6, r2, #0
	mov r8, r1
	cmp r5, r0
	bgt _080B87F0
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B87F0
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B87F0
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B87F0
	lsrs r1, r6, #0x10
	lsrs r2, r2, #0x10
	mov r0, sb
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x14]
_080B87F0:
	ldr r1, [sp, #0x14]
	lsls r0, r1, #2
	ldr r1, _080B8918 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8806
	b _080B8940
_080B8806:
	movs r0, #0
	str r0, [sp, #0x18]
	mov r1, sl
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r2, r1, #0x10
	ldr r0, _080B8914 @ =gCurLevelInfo
	mov ip, r0
	mov r1, r8
	ldrb r5, [r1]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	bgt _080B8870
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r2, r0
	blt _080B8870
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B8870
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B8870
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x18]
_080B8870:
	ldr r1, [sp, #0x18]
	lsls r0, r1, #2
	ldr r1, _080B8918 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	bne _080B8924
	movs r0, #0
	mov sl, r0
	ldr r1, [sp]
	lsls r1, r1, #0x10
	mov sb, r1
	asrs r5, r1, #0x10
	ldr r0, _080B8914 @ =gCurLevelInfo
	mov ip, r0
	mov r1, r8
	ldrb r1, [r1]
	mov r8, r1
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r3, r8
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	bgt _080B88F0
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r5, r0
	blt _080B88F0
	lsls r2, r7, #0x10
	asrs r1, r2, #0x10
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	bgt _080B88F0
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	asrs r0, r0, #0xc
	cmp r1, r0
	blt _080B88F0
	mov r0, sb
	lsrs r1, r0, #0x10
	lsrs r2, r2, #0x10
	mov r0, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
_080B88F0:
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _080B8918 @ =gUnk_082D88B8
	adds r0, r1, r0
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r2
	cmp r0, #0
	beq _080B8940
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8920
	asrs r0, r6, #4
	ldr r1, _080B891C @ =0xFFFFF000
	b _080B893C
	.align 2, 0
_080B8914: .4byte gCurLevelInfo
_080B8918: .4byte gUnk_082D88B8
_080B891C: .4byte 0xFFFFF000
_080B8920:
	asrs r0, r6, #4
	b _080B893E
_080B8924:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080B8936
	asrs r0, r6, #4
	movs r1, #0x80
	lsls r1, r1, #5
	b _080B893C
_080B8936:
	asrs r0, r6, #4
	movs r1, #0x80
	lsls r1, r1, #6
_080B893C:
	adds r0, r0, r1
_080B893E:
	str r0, [r4, #0x40]
_080B8940:
	adds r0, r2, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

    .syntax divided

