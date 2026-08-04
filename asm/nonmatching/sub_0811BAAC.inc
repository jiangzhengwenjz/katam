	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r5, r0, #0
	mov r8, r5
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0811BAF4
	ldr r2, _0811BAEC @ =gCurLevelInfo
	adds r4, r5, #0
	adds r4, #0xac
	ldr r0, [r4]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0811BAF0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_080029E4
	b _0811BB12
	.align 2, 0
_0811BAEC: .4byte gCurLevelInfo
_0811BAF0: .4byte 0x0000065E
_0811BAF4:
	ldr r2, _0811BBF4 @ =gCurLevelInfo
	adds r4, r5, #0
	adds r4, #0xac
	ldr r0, [r4]
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _0811BBF8 @ =0x0000065E
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_080029BC
_0811BB12:
	adds r1, r5, #0
	adds r1, #0xdc
	strh r0, [r1]
	str r4, [sp, #0x28]
	mov r1, r8
	adds r1, #0xdc
	adds r2, r5, #0
	adds r2, #0xb0
	ldr r4, [r2]
	ldrh r0, [r4, #0x18]
	movs r3, #0xff
	lsls r3, r3, #8
	ldrh r1, [r1]
	lsrs r0, r0, #8
	adds r6, r2, #0
	cmp r1, r0
	bhs _0811BB36
	b _0811BD9E
_0811BB36:
	mov r2, r8
	adds r2, #0xde
	ldrh r0, [r4, #0x14]
	ands r3, r0
	ldrb r1, [r2]
	lsrs r0, r3, #8
	str r2, [sp, #0x24]
	cmp r1, r0
	blo _0811BB4A
	b _0811BD9E
_0811BB4A:
	mov r1, r8
	adds r1, #0xdf
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	ldr r0, [r6]
	ldrh r2, [r0, #0x12]
	ldrb r0, [r1]
	mov sl, r1
	cmp r0, r2
	bhs _0811BB62
	b _0811BD9E
_0811BB62:
	strb r2, [r1]
	ldr r0, [r6]
	ldrb r0, [r0, #0x14]
	subs r0, #0x38
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x1a
	bhi _0811BC1C
	movs r7, #4
	ldrsh r0, [r5, r7]
	cmp r0, #0
	bne _0811BBF0
	movs r2, #0xb1
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0811BBFC @ =gKirbys
	ldr r0, _0811BC00 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811BBF0
	ldrb r0, [r5]
	cmp r0, #0
	bne _0811BBB4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811BBF0
_0811BBB4:
	ldr r1, _0811BC04 @ =gUnk_08D60FA4
	ldr r4, _0811BC08 @ =gSongTable
	ldr r2, _0811BC0C @ =0x000011B4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811BBD8
	ldr r7, _0811BC10 @ =0x000011B0
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811BBF0
_0811BBD8:
	cmp r3, #0
	beq _0811BBEA
	ldr r0, _0811BC14 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811BBF0
_0811BBEA:
	ldr r0, _0811BC18 @ =0x00000236
	bl m4aSongNumStart
_0811BBF0:
	movs r0, #5
	b _0811BC94
	.align 2, 0
_0811BBF4: .4byte gCurLevelInfo
_0811BBF8: .4byte 0x0000065E
_0811BBFC: .4byte gKirbys
_0811BC00: .4byte gUnk_0203AD3C
_0811BC04: .4byte gUnk_08D60FA4
_0811BC08: .4byte gSongTable
_0811BC0C: .4byte 0x000011B4
_0811BC10: .4byte 0x000011B0
_0811BC14: .4byte gUnk_0203AD10
_0811BC18: .4byte 0x00000236
_0811BC1C:
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0811BCB8 @ =gKirbys
	ldr r0, _0811BCBC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0811BC92
	ldrb r0, [r5]
	cmp r0, #0
	bne _0811BC56
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0811BC92
_0811BC56:
	ldr r1, _0811BCC0 @ =gUnk_08D60FA4
	ldr r4, _0811BCC4 @ =gSongTable
	ldr r2, _0811BCC8 @ =0x00000B3C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0811BC7A
	ldr r7, _0811BCCC @ =0x00000B38
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0811BC92
_0811BC7A:
	cmp r3, #0
	beq _0811BC8C
	ldr r0, _0811BCD0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0811BC92
_0811BC8C:
	ldr r0, _0811BCD4 @ =0x00000167
	bl m4aSongNumStart
_0811BC92:
	movs r0, #0
_0811BC94:
	mov ip, r0
	ldrh r0, [r5, #4]
	adds r1, r0, #1
	strh r1, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x40
	ble _0811BD9E
	movs r4, #0
	ldr r1, _0811BCD8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	movs r7, #0x8c
	adds r7, r7, r5
	mov sb, r7
	b _0811BCFC
	.align 2, 0
_0811BCB8: .4byte gKirbys
_0811BCBC: .4byte gUnk_0203AD3C
_0811BCC0: .4byte gUnk_08D60FA4
_0811BCC4: .4byte gSongTable
_0811BCC8: .4byte 0x00000B3C
_0811BCCC: .4byte 0x00000B38
_0811BCD0: .4byte gUnk_0203AD10
_0811BCD4: .4byte 0x00000167
_0811BCD8: .4byte gUnk_020229D4
_0811BCDC:
	str r4, [r1]
	ldr r1, [sp, #0x24]
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _0811BD98
_0811BCE8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _0811BD04
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_0811BCFC:
	cmp r0, #0
	bne _0811BCE8
	orrs r2, r3
	str r2, [r1]
_0811BD04:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	ldr r2, _0811BDCC @ =gUnk_020229E0
	adds r1, r1, r2
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r6]
	ldrh r0, [r0, #6]
	movs r2, #0
	strh r0, [r1, #6]
	ldr r0, [r6]
	ldrh r0, [r0, #8]
	strh r0, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	ldr r0, [r6]
	ldrh r0, [r0, #0x14]
	strb r0, [r1, #0xc]
	ldr r0, [r6]
	ldrb r0, [r0, #0xe]
	strb r0, [r1, #0xe]
	strb r2, [r1, #0xf]
	ldr r0, [r6]
	ldrb r0, [r0, #0x10]
	strb r0, [r1, #0x10]
	mov r7, ip
	strh r7, [r1, #0x22]
	ldr r0, [r6]
	ldrh r0, [r0, #0x1a]
	strh r0, [r1, #0x1a]
	ldr r0, [r6]
	ldrh r0, [r0, #0x1c]
	strh r0, [r1, #0x1c]
	ldr r0, [r6]
	ldrh r0, [r0, #0x1e]
	strh r0, [r1, #0x1e]
	ldr r0, [r6]
	ldrh r0, [r0, #0x20]
	strh r0, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	ldr r2, [sp, #0x28]
	ldr r0, [r2]
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	adds r4, r0, #0
	mov r7, sb
	ldr r1, [r7]
	movs r2, #0
	ldr r0, [r6]
	ldrh r0, [r0, #0x14]
	lsrs r0, r0, #8
	cmp r2, r0
	bhs _0811BD98
	adds r3, r0, #0
_0811BD8A:
	ldr r0, [r1]
	cmp r0, #0
	beq _0811BCDC
	adds r1, #4
	adds r2, #1
	cmp r2, r3
	blo _0811BD8A
_0811BD98:
	movs r0, #0
	mov r1, sl
	strb r0, [r1]
_0811BD9E:
	ldr r0, [r6]
	ldrh r1, [r0, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0811BDBA
	mov r0, r8
	adds r0, #0xde
	ldrb r0, [r0]
	cmp r0, #0
	beq _0811BDBA
	adds r0, r5, #0
	bl sub_0811BE64
_0811BDBA:
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0811BDCC: .4byte gUnk_020229E0

	.syntax divided
