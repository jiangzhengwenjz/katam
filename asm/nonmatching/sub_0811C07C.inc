	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r7, [r4]
	ldr r0, [r6, #0x40]
	lsls r0, r0, #4
	lsrs r0, r0, #0x10
	mov r8, r0
	ldr r0, [r6, #0x44]
	lsls r0, r0, #4
	lsrs r5, r0, #0x10
	adds r1, r6, #0
	adds r1, #0xb4
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bne _0811C170
	ldr r2, _0811C154 @ =0x0000028D
	adds r0, r6, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0811C158 @ =gKirbys
	ldr r0, _0811C15C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811C11C
	ldrb r0, [r6]
	cmp r0, #0
	bne _0811C0DC
	ldrb r0, [r4]
	cmp r0, r2
	bne _0811C11C
_0811C0DC:
	ldr r1, _0811C160 @ =gUnk_08D60FA4
	ldr r4, _0811C164 @ =gSongTable
	ldr r2, _0811C168 @ =0x00000FF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811C102
	movs r1, #0xff
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811C11C
_0811C102:
	cmp r3, #0
	beq _0811C114
	ldr r0, _0811C16C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811C11C
_0811C114:
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
_0811C11C:
	mov r4, r8
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080023E4
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	adds r0, r7, #0
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r7, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r6, #8]
	b _0811C174
	.align 2, 0
_0811C154: .4byte 0x0000028D
_0811C158: .4byte gKirbys
_0811C15C: .4byte gUnk_0203AD3C
_0811C160: .4byte gUnk_08D60FA4
_0811C164: .4byte gSongTable
_0811C168: .4byte 0x00000FF4
_0811C16C: .4byte gUnk_0203AD10
_0811C170:
	subs r0, r2, #1
	strh r0, [r1]
_0811C174:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	.syntax divided
