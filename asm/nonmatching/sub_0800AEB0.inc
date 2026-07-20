
	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	mov r8, r0
	str r0, [sp]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _0800AF90 @ =gCurLevelInfo
	adds r1, r1, r0
	mov ip, r1
	mov r0, ip
	adds r0, #0xbe
	ldrh r0, [r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #7
	adds r1, r0, r2
	mov r3, r8
	ldr r0, [r3, #0x44]
	cmp r1, r0
	bge _0800AEE8
	str r1, [r3, #0x44]
_0800AEE8:
	ldr r6, _0800AF94 @ =gKirbys
	mov sb, r6
	mov r0, r8
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r1, r3, #8
	mov r2, r8
	ldr r0, [r2, #0x40]
	adds r4, r0, r1
	mov r0, r8
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r1, r2, #8
	mov r6, r8
	ldr r0, [r6, #0x44]
	adds r5, r0, r1
	mov r0, r8
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	lsls r6, r0, #8
	mov r0, r8
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	lsls r7, r0, #8
	movs r2, #0
	ldr r0, _0800AF98 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r2, r0
	bhs _0800AFB4
	movs r0, #0xbf
	lsls r0, r0, #3
	mov sl, r0
	mov r1, ip
	add r1, sl
	str r1, [sp, #4]
_0800AF3E:
	ldr r1, _0800AF90 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r1
	add r0, sl
	ldr r3, [sp, #4]
	ldrh r1, [r3]
	ldrh r0, [r0]
	cmp r1, r0
	bne _0800AFA0
	mov r0, sb
	ldr r1, [r0, #0x40]
	cmp r4, r1
	bgt _0800AFA0
	adds r0, r4, r6
	cmp r0, r1
	blt _0800AFA0
	mov r3, sb
	ldr r1, [r3, #0x44]
	cmp r5, r1
	bgt _0800AFA0
	adds r0, r5, r7
	cmp r0, r1
	blt _0800AFA0
	mov r0, sb
	str r2, [sp, #8]
	bl sub_0804B6FC
	lsls r0, r0, #0x18
	ldr r2, [sp, #8]
	cmp r0, #0
	beq _0800AFA0
	ldr r0, [sp]
	adds r0, #0xe4
	strh r2, [r0]
	ldr r0, _0800AF9C @ =sub_0800AFC8
	mov r6, r8
	str r0, [r6, #0x78]
	b _0800AFB4
	.align 2, 0
_0800AF90: .4byte gCurLevelInfo
_0800AF94: .4byte gKirbys
_0800AF98: .4byte gUnk_0203AD30
_0800AF9C: .4byte sub_0800AFC8
_0800AFA0:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	movs r0, #0xd4
	lsls r0, r0, #1
	add sb, r0
	ldr r0, _0800AFC4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r2, r0
	blo _0800AF3E
_0800AFB4:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AFC4: .4byte gUnk_0203AD30

	.syntax divided
