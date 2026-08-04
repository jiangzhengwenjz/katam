	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov ip, r0
	ldr r2, _0811BFA8 @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	mov sl, r0
	movs r6, #0
	ldr r0, _0811BFAC @ =gUnk_0203AD44
	mov r8, r0
	ldrb r7, [r0]
	cmp r6, r7
	blo _0811BF58
	b _0811C05E
_0811BF58:
	ldr r5, _0811BFB0 @ =gKirbys
	mov r4, sp
	mov sb, r5
	mov r0, ip
	adds r0, #0xb6
	str r0, [sp, #8]
_0811BF64:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	add r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	cmp r0, sl
	bne _0811C050
	mov r0, ip
	adds r0, #0xb0
	ldr r3, [r0]
	ldrh r1, [r3, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0811BFB4
	mov r1, ip
	ldr r2, [r1, #0x40]
	asrs r2, r2, #8
	ldrh r7, [r3, #0x1a]
	adds r2, r2, r7
	strh r2, [r4]
	ldr r0, [r1, #0x44]
	asrs r0, r0, #8
	ldrh r1, [r3, #0x1c]
	adds r0, r0, r1
	strh r0, [r4, #2]
	ldrh r1, [r3, #0x1e]
	adds r2, r2, r1
	strh r2, [r4, #4]
	ldrh r1, [r3, #0x20]
	adds r0, r0, r1
	strh r0, [r4, #6]
	b _0811BFD2
	.align 2, 0
_0811BFA8: .4byte gCurLevelInfo
_0811BFAC: .4byte gUnk_0203AD44
_0811BFB0: .4byte gKirbys
_0811BFB4:
	mov r7, ip
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4]
	ldr r1, [r7, #0x44]
	asrs r1, r1, #8
	adds r0, r1, #0
	subs r0, #0x18
	strh r0, [r4, #2]
	adds r2, #8
	strh r2, [r4, #4]
	subs r1, #8
	strh r1, [r4, #6]
_0811BFD2:
	movs r0, #0xd4
	lsls r0, r0, #1
	adds r3, r6, #0
	muls r3, r0, r3
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r3, r0
	ldr r1, [r0]
	lsls r1, r1, #8
	adds r0, r5, #0
	adds r0, #0x44
	adds r0, r3, r0
	ldr r0, [r0]
	lsls r0, r0, #8
	lsrs r2, r0, #0x10
	movs r7, #0
	ldrsh r0, [r4, r7]
	asrs r1, r1, #0x10
	cmp r0, r1
	bgt _0811C050
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r0, r1
	blt _0811C050
	ldrh r0, [r4, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	asrs r2, r1, #0x10
	cmp r0, r1
	bgt _0811C050
	movs r1, #6
	ldrsh r0, [r4, r1]
	cmp r0, r2
	blt _0811C050
	adds r0, r5, #0
	adds r0, #0xc
	adds r0, r3, r0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _0811C050
	adds r0, r5, #0
	adds r0, #8
	adds r0, r3, r0
	ldr r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0811C050
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	bne _0811C050
	ldr r7, [sp, #8]
	ldrh r1, [r7]
	movs r0, #1
	orrs r0, r1
	strh r0, [r7]
	ldr r0, _0811C078 @ =sub_0811C07C
	mov r1, ip
	str r0, [r1, #0x78]
_0811C050:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	mov r7, r8
	ldrb r7, [r7]
	cmp r6, r7
	blo _0811BF64
_0811C05E:
	mov r1, ip
	ldrh r0, [r1, #4]
	adds r0, #1
	strh r0, [r1, #4]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811C078: .4byte sub_0811C07C

	.syntax divided
