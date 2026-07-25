
	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x40
	mov sl, r0
	mov sb, sl
	ldr r0, [r0, #8]
	movs r1, #4
	orrs r0, r1
	mov r1, sl
	str r0, [r1, #8]
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r0, [r0]
	movs r1, #0xf0
	lsls r1, r1, #0xc
	ands r0, r1
	lsrs r7, r0, #0x10
	ldr r4, _08118E40 @ =gCurLevelInfo
	mov r0, sl
	adds r0, #0x56
	ldrb r0, [r0]
	movs r3, #0xcd
	lsls r3, r3, #3
	adds r1, r0, #0
	muls r1, r3, r1
	adds r1, r1, r4
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r1, r1, r2
	ldr r0, _08118E44 @ =gUnk_0203AD3C
	ldrb r5, [r0]
	adds r0, r5, #0
	muls r0, r3, r0
	adds r0, r0, r4
	adds r0, r0, r2
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _08118EC0
	mov r1, sl
	adds r1, #0xb8
	ldr r2, [r1]
	adds r3, r2, #0
	adds r3, #0x2b
	ldrb r0, [r3]
	adds r6, r1, #0
	cmp r0, #0
	bne _08118E64
	ldr r1, _08118E48 @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r5, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r2, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08118E50
	ldr r2, _08118E4C @ =gUnk_08357B3E
	mov r8, r2
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r4, r0, #1
	adds r0, r4, r2
	ldrh r5, [r0]
	adds r0, r5, #0
	bl sub_0803DF24
	ldr r1, [r6]
	adds r1, #0x2b
	strb r0, [r1]
	ldr r0, [r6]
	adds r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08118E54
	mov r0, r8
	adds r0, #2
	adds r0, r4, r0
	ldrb r1, [r0]
	adds r0, r5, #0
	bl sub_0803DFAC
	ldr r1, [r6]
	adds r1, #0x2b
	strb r0, [r1]
	b _08118E54
	.align 2, 0
_08118E40: .4byte gCurLevelInfo
_08118E44: .4byte gUnk_0203AD3C
_08118E48: .4byte gKirbys
_08118E4C: .4byte gUnk_08357B3E
_08118E50:
	movs r5, #0
	strb r5, [r3]
_08118E54:
	mov r0, sb
	adds r0, #0xb8
	ldr r1, [r0]
	adds r1, #0x2b
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _08118EC0
_08118E64:
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [sp]
	mov r4, sp
	ldr r2, _08119074 @ =gUnk_08357B3E
	lsls r0, r7, #1
	adds r0, r0, r7
	lsls r0, r0, #1
	adds r1, r0, r2
	ldrh r1, [r1]
	movs r3, #0
	strh r1, [r4, #0xc]
	mov r1, sp
	adds r2, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	strh r3, [r0, #0x10]
	strh r3, [r0, #0x12]
	strh r3, [r0, #0x14]
	strh r3, [r0, #0x16]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r2, sp
	ldr r0, [r6]
	adds r0, #0x2b
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #0x1f]
	movs r0, #0x80
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	mov r0, sp
	ldrb r0, [r0, #0x1f]
	lsls r0, r0, #0x1c
	lsrs r0, r0, #0x18
	movs r1, #0x10
	bl sub_0803D280
_08118EC0:
	movs r0, #0x56
	add r0, sl
	mov sb, r0
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	ldr r4, _08119078 @ =gCurLevelInfo
	adds r0, r0, r4
	str r0, [sp, #0x2c]
	mov r0, sl
	adds r0, #0x3c
	movs r3, #0
	ldrsb r3, [r0, r3]
	lsls r1, r3, #8
	mov r2, sl
	ldr r0, [r2, #0x40]
	adds r6, r0, r1
	mov r0, sl
	adds r0, #0x3d
	movs r2, #0
	ldrsb r2, [r0, r2]
	lsls r1, r2, #8
	mov r5, sl
	ldr r0, [r5, #0x44]
	adds r7, r0, r1
	mov r0, sl
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r3
	lsls r0, r0, #8
	str r0, [sp, #0x30]
	mov r0, sl
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, r0, r2
	lsls r0, r0, #8
	str r0, [sp, #0x34]
	movs r0, #0
	mov r8, r0
	ldr r0, _0811907C @ =gUnk_0203AD30
	ldrb r1, [r0]
	mov ip, sb
	cmp r8, r1
	bhs _08118F9C
	movs r3, #0xbf
	lsls r3, r3, #3
	ldr r2, [sp, #0x2c]
	adds r0, r2, r3
	adds r5, r4, #0
	mov sb, r5
	ldrh r0, [r0]
	str r0, [sp, #0x3c]
	adds r4, r1, #0
_08118F34:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r1, r8
	muls r1, r0, r1
	ldr r0, _08119080 @ =gKirbys
	adds r2, r1, r0
	movs r0, #0xcd
	lsls r0, r0, #3
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	add r0, sb
	adds r0, r0, r3
	ldr r5, [sp, #0x3c]
	ldrh r0, [r0]
	cmp r5, r0
	bne _08118F8E
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r2, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08118F8E
	ldr r0, [r2, #0xc]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	beq _08118F8E
	ldr r1, [r2, #0x40]
	cmp r6, r1
	bgt _08118F8E
	ldr r5, [sp, #0x30]
	adds r0, r6, r5
	cmp r0, r1
	blt _08118F8E
	ldr r1, [r2, #0x44]
	cmp r7, r1
	bgt _08118F8E
	ldr r2, [sp, #0x34]
	adds r0, r7, r2
	cmp r0, r1
	bge _08118FA2
_08118F8E:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, r4
	blo _08118F34
_08118F9C:
	movs r5, #0
	cmp r5, #0
	beq _0811905C
_08118FA2:
	movs r0, #0
	ldr r2, _0811907C @ =gUnk_0203AD30
	ldrb r1, [r2]
	cmp r0, r1
	bhs _08118FB6
_08118FAC:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	blo _08118FAC
_08118FB6:
	mov r5, ip
	ldrb r1, [r5]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	ldr r1, _08119078 @ =gCurLevelInfo
	adds r0, r0, r1
	ldr r2, _08119084 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #1
	movs r1, #9
	bl sub_08002888
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r1, r0
	movs r5, #0
	mov r8, r5
	ldr r0, _08119088 @ =gUnk_08357B24
	add r2, sp, #0x28
	mov sb, r2
	lsrs r1, r1, #0xf
	adds r1, r1, r0
	str r1, [sp, #0x38]
	mov r7, sp
	adds r7, #0x29
_08118FEE:
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r6, r8
	muls r6, r0, r6
	ldr r0, _08119080 @ =gKirbys
	adds r5, r6, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _08119048
	ldr r2, [sp, #0x2c]
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r2, r1
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08119048
	ldr r2, [sp, #0x38]
	ldrh r4, [r2]
	adds r0, r4, #0
	mov r1, sb
	adds r2, r7, #0
	bl sub_08002D40
	ldr r0, _0811908C @ =gKirbys+0xC
	adds r2, r6, r0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x10
	orrs r0, r1
	str r0, [r2]
	mov r1, sb
	ldrb r2, [r1]
	ldrb r3, [r7]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0805BDF4
_08119048:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #3
	bls _08118FEE
	ldr r0, _08119090 @ =sub_081191B4
	mov r2, sl
	str r0, [r2, #0x78]
_0811905C:
	mov r5, sl
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	add sp, #0x40
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08119074: .4byte gUnk_08357B3E
_08119078: .4byte gCurLevelInfo
_0811907C: .4byte gUnk_0203AD30
_08119080: .4byte gKirbys
_08119084: .4byte 0x0000065E
_08119088: .4byte gUnk_08357B24
_0811908C: .4byte gKirbys+0xC
_08119090: .4byte sub_081191B4

	.syntax divided
