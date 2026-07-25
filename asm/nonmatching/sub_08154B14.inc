
	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	movs r0, #0
	mov r8, r0
	mov r1, sp
	str r1, [sp, #0x10]
_08154B28:
	mov r2, r8
	lsls r0, r2, #2
	ldr r1, _08154BE0 @ =gUnk_03002E80
	adds r1, #1
	adds r4, r0, r1
	ldr r6, _08154BE4 @ =gUnk_03002E83
	adds r6, r0, r6
	str r6, [sp, #0xc]
	ldrb r1, [r4]
	ldrb r2, [r6]
	mov ip, r2
	mov sl, r0
	cmp r1, ip
	bne _08154B5A
	ldr r0, _08154BE0 @ =gUnk_03002E80
	add r0, sl
	ldr r1, _08154BE8 @ =gUnk_03002E82
	add r1, sl
	ldrb r0, [r0]
	mov r7, r8
	adds r7, #1
	ldrb r1, [r1]
	cmp r0, r1
	bne _08154B5A
	b _08154D46
_08154B5A:
	ldr r2, _08154BEC @ =gBgCntRegs
	mov r6, r8
	lsls r3, r6, #1
	adds r0, r3, r2
	ldrh r6, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r6
	lsls r0, r0, #3
	adds r5, r0, r1
	ldrb r4, [r4]
	ldr r0, _08154BE0 @ =gUnk_03002E80
	add r0, sl
	ldrb r0, [r0]
	str r0, [sp, #8]
	adds r7, r2, #0
	adds r2, r3, #0
	mov r0, r8
	cmp r0, #1
	bls _08154C6C
	ldr r0, _08154BF0 @ =gDispCnt
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08154C6C
	ldr r1, [sp, #8]
	adds r5, r5, r1
	lsrs r2, r6, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r2
	lsrs r3, r0, #0x10
	mov r2, ip
	cmp r2, #0xff
	bne _08154BFC
	ldr r0, _08154BF4 @ =gUnk_030060A0
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	ldr r2, _08154BF8 @ =0x040000D4
	str r1, [r2]
	str r0, [r2, #4]
	ldr r6, [sp, #0xc]
	ldrb r0, [r6]
	subs r0, r0, r4
	muls r0, r3, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add r2, sp, #4
	mov sb, r2
	b _08154CC4
	.align 2, 0
_08154BE0: .4byte gUnk_03002E80
_08154BE4: .4byte gUnk_03002E83
_08154BE8: .4byte gUnk_03002E82
_08154BEC: .4byte gBgCntRegs
_08154BF0: .4byte gDispCnt
_08154BF4: .4byte gUnk_030060A0
_08154BF8: .4byte 0x040000D4
_08154BFC:
	add r6, sp, #4
	mov sb, r6
	mov r7, r8
	adds r7, #1
	cmp r4, ip
	bls _08154C0A
	b _08154D30
_08154C0A:
	ldr r0, _08154C60 @ =gUnk_030060A0
	add r0, r8
	mov ip, r0
	ldr r2, _08154C64 @ =0x040000D4
	ldr r1, _08154C68 @ =gUnk_03002E82
	add r1, sl
	mov r8, r1
	ldr r6, [sp, #0xc]
	str r6, [sp, #0x14]
_08154C1C:
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, r8
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	asrs r1, r0, #1
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r1, r6
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _08154C1C
	b _08154D30
	.align 2, 0
_08154C60: .4byte gUnk_030060A0
_08154C64: .4byte 0x040000D4
_08154C68: .4byte gUnk_03002E82
_08154C6C:
	ldr r1, [sp, #8]
	lsls r0, r1, #1
	adds r5, r5, r0
	movs r3, #0x20
	adds r0, r2, r7
	ldrh r0, [r0]
	lsrs r2, r0, #0xe
	subs r0, r2, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08154C86
	movs r3, #0x40
_08154C86:
	ldr r1, _08154CCC @ =gUnk_03002E82
	add r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08154CDC
	ldr r0, _08154CD0 @ =gUnk_030060A0
	add r0, r8
	ldrb r1, [r0]
	lsls r0, r3, #1
	muls r0, r4, r0
	adds r0, r5, r0
	ldr r2, [sp, #0x10]
	strh r1, [r2]
	mov r6, sp
	ldr r1, _08154CD4 @ =0x040000D4
	str r6, [r1]
	str r0, [r1, #4]
	ldr r0, _08154CD8 @ =gUnk_03002E83
	add r0, sl
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r3, r0
	lsls r0, r0, #1
	asrs r0, r0, #1
	movs r2, #0x81
	lsls r2, r2, #0x18
	orrs r0, r2
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	add r6, sp, #4
	mov sb, r6
_08154CC4:
	mov r7, r8
	adds r7, #1
	b _08154D30
	.align 2, 0
_08154CCC: .4byte gUnk_03002E82
_08154CD0: .4byte gUnk_030060A0
_08154CD4: .4byte 0x040000D4
_08154CD8: .4byte gUnk_03002E83
_08154CDC:
	ldr r0, _08154D64 @ =gUnk_03002E83
	add r0, sl
	add r2, sp, #4
	mov sb, r2
	mov r7, r8
	adds r7, #1
	ldrb r6, [r0]
	cmp r4, r6
	bhi _08154D30
	ldr r2, _08154D68 @ =gUnk_030060A0
	add r8, r2
	ldr r2, _08154D6C @ =0x040000D4
	mov ip, r1
	str r0, [sp, #0x14]
	lsls r3, r3, #1
_08154CFA:
	mov r6, r8
	ldrb r1, [r6]
	adds r0, r4, #0
	muls r0, r3, r0
	adds r0, r5, r0
	ldr r6, [sp, #0x10]
	strh r1, [r6]
	mov r1, sp
	str r1, [r2]
	str r0, [r2, #4]
	mov r6, ip
	ldrb r0, [r6]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	adds r0, #1
	movs r6, #0x81
	lsls r6, r6, #0x18
	orrs r0, r6
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, [sp, #0x14]
	ldrb r0, [r0]
	cmp r4, r0
	bls _08154CFA
_08154D30:
	movs r0, #0
	str r0, [sp, #4]
	mov r1, sb
	ldr r2, _08154D6C @ =0x040000D4
	str r1, [r2]
	ldr r0, _08154D70 @ =gUnk_03002E80
	add r0, sl
	str r0, [r2, #4]
	ldr r0, _08154D74 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08154D46:
	lsls r0, r7, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08154D52
	b _08154B28
_08154D52:
	movs r0, #1
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08154D64: .4byte gUnk_03002E83
_08154D68: .4byte gUnk_030060A0
_08154D6C: .4byte 0x040000D4
_08154D70: .4byte gUnk_03002E80
_08154D74: .4byte 0x85000001

	.syntax divided
