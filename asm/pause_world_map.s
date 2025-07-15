	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08126CEC
sub_08126CEC: @ 0x08126CEC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	movs r2, #0
	ldr r0, _08126D4C @ =gUnk_0203AD44
	mov sb, r0
	ldrb r0, [r0]
	cmp r2, r0
	bhs _08126DCA
	movs r1, #0xda
	lsls r1, r1, #3
	adds r1, r1, r6
	mov sl, r1
	movs r7, #0x34
	mov r8, r7
	movs r0, #0xa4
	lsls r0, r0, #1
	mov ip, r0
_08126D18:
	ldr r1, _08126D50 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r1
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r3, [r0]
	ldr r1, _08126D54 @ =gUnk_08D6CD0C
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x46
	ldrb r0, [r0]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08126D5C
	movs r3, #0
	lsls r4, r2, #2
	adds r7, r2, #1
	str r7, [sp]
	b _08126D7A
	.align 2, 0
_08126D4C: .4byte gUnk_0203AD44
_08126D50: .4byte gCurLevelInfo
_08126D54: .4byte gUnk_08D6CD0C
_08126D58:
	adds r3, r0, #0
	b _08126D7A
_08126D5C:
	movs r1, #0
	lsls r4, r2, #2
	adds r0, r2, #1
	str r0, [sp]
	movs r5, #0x83
	lsls r5, r5, #1
	ldr r0, _08126DB0 @ =gUnk_08361220
_08126D6A:
	ldrh r7, [r0]
	cmp r3, r7
	beq _08126D58
	adds r0, #8
	adds r1, #1
	cmp r1, r5
	bls _08126D6A
	movs r3, #0
_08126D7A:
	mov r1, sl
	adds r0, r1, r4
	str r3, [r0]
	cmp r3, #0
	beq _08126DB4
	mov r7, r8
	muls r7, r2, r7
	adds r2, r7, #0
	adds r0, r6, r2
	ldrb r1, [r3, #2]
	add r0, ip
	strb r1, [r0]
	movs r0, #0xa6
	lsls r0, r0, #1
	adds r1, r6, r0
	adds r1, r1, r2
	ldrb r0, [r3, #4]
	lsls r0, r0, #3
	str r0, [r1]
	movs r7, #0xa8
	lsls r7, r7, #1
	adds r1, r6, r7
	adds r1, r1, r2
	ldrb r0, [r3, #5]
	lsls r0, r0, #3
	str r0, [r1]
	b _08126DC0
	.align 2, 0
_08126DB0: .4byte gUnk_08361220
_08126DB4:
	mov r0, r8
	muls r0, r2, r0
	adds r0, r6, r0
	add r0, ip
	movs r1, #0xff
	strb r1, [r0]
_08126DC0:
	ldr r2, [sp]
	mov r0, sb
	ldrb r0, [r0]
	cmp r2, r0
	blo _08126D18
_08126DCA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08126DDC
sub_08126DDC: @ 0x08126DDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r7, r0, #0
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r6, r7, r0
	movs r1, #0
	mov r8, r1
	ldr r0, _08126E40 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r8, r0
	bhs _08126EE0
	movs r2, #1
	mov sl, r2
	mov sb, r1
_08126E00:
	movs r0, #0x34
	mov r1, r8
	muls r1, r0, r1
	movs r2, #0x90
	lsls r2, r2, #1
	adds r0, r1, r2
	adds r3, r7, r0
	adds r2, #0xd0
	adds r0, r1, r2
	adds r5, r7, r0
	adds r1, r3, #0
	adds r1, #0x28
	ldrb r0, [r6, #6]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08126ECE
	mov r1, r8
	lsls r0, r1, #2
	movs r2, #0xda
	lsls r2, r2, #3
	adds r1, r7, r2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrb r0, [r0, #3]
	cmp r0, #0
	beq _08126E48
	cmp r0, #0
	blt _08126E48
	cmp r0, #2
	bgt _08126E48
	ldr r1, _08126E44 @ =gUnk_08363A98
	b _08126E4A
	.align 2, 0
_08126E40: .4byte gUnk_0203AD44
_08126E44: .4byte gUnk_08363A98
_08126E48:
	ldr r1, _08126EF0 @ =gUnk_08363A90
_08126E4A:
	mov r2, sb
	adds r0, r2, r1
	ldrb r0, [r0]
	add r1, sl
	ldrb r4, [r1]
	ldr r1, [r3, #0x2c]
	adds r1, r1, r0
	ldr r0, [r6, #8]
	subs r1, r1, r0
	ldrh r0, [r6, #4]
	adds r2, r1, #0
	muls r2, r0, r2
	asrs r2, r2, #8
	adds r2, #0x78
	strh r2, [r3, #0x10]
	ldr r1, [r3, #0x30]
	adds r1, r1, r4
	ldr r0, [r6, #0xc]
	subs r1, r1, r0
	ldrh r0, [r6, #4]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r3, #0x12]
	strh r2, [r5, #0x10]
	ldrh r0, [r3, #0x12]
	strh r0, [r5, #0x12]
	movs r1, #0x10
	ldrsh r0, [r5, r1]
	movs r1, #0x12
	ldrsh r2, [r5, r1]
	adds r0, #0x1d
	movs r1, #0x90
	lsls r1, r1, #1
	movs r4, #0
	cmp r0, r1
	bhi _08126E9E
	adds r0, r2, #0
	adds r0, #0xf
	cmp r0, #0xbe
	bhi _08126E9E
	movs r4, #1
_08126E9E:
	cmp r4, #0
	beq _08126ECE
	adds r0, r3, #0
	bl sub_0815604C
	ldr r1, _08126EF4 @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	adds r0, r0, r1
	ldr r1, _08126EF8 @ =0x00000103
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _08126EFC @ =gUnk_08350B30
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r0, #0
	beq _08126ECE
	adds r0, r5, #0
	bl sub_0815604C
_08126ECE:
	movs r0, #2
	add sl, r0
	add sb, r0
	movs r1, #1
	add r8, r1
	ldr r0, _08126F00 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r8, r0
	blo _08126E00
_08126EE0:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08126EF0: .4byte gUnk_08363A90
_08126EF4: .4byte gKirbys
_08126EF8: .4byte 0x00000103
_08126EFC: .4byte gUnk_08350B30
_08126F00: .4byte gUnk_0203AD44

	thumb_func_start sub_08126F04
sub_08126F04: @ 0x08126F04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp, #4]
	movs r0, #0
	str r0, [sp]
	movs r4, #0xb0
	lsls r4, r4, #2
	ldr r0, [sp, #4]
	adds r1, r0, r4
	ldr r2, _08126FF0 @ =0x05000068
	mov r0, sp
	bl CpuSet
	movs r6, #0
	ldr r1, _08126FF4 @ =gUnk_08361A6E
	ldr r3, [sp, #4]
	ldr r5, _08126FF8 @ =0x000006E6
	adds r2, r3, r5
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	bhs _08126FE0
	mov r8, r2
	mov sb, r6
	ldr r7, _08126FFC @ =gLanguage
	mov sl, r7
_08126F42:
	ldr r1, _08127000 @ =gUnk_08361A58
	mov r2, r8
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r0, r0, r6
	lsls r4, r0, #1
	adds r4, r4, r0
	lsls r4, r4, #2
	ldr r0, _08127004 @ =gUnk_08361A7C
	adds r4, r4, r0
	movs r0, #0x34
	muls r0, r6, r0
	ldr r5, [sp, #4]
	adds r3, r0, r5
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r3, r3, r7
	ldr r1, _08127008 @ =0x06012000
	str r1, [r3]
	movs r1, #0xa0
	lsls r1, r1, #2
	strh r1, [r3, #0x14]
	ldrb r1, [r4, #3]
	lsls r1, r1, #2
	mov r5, sl
	ldrh r2, [r5]
	movs r5, #0x2c
	muls r2, r5, r2
	adds r1, r1, r2
	ldr r7, _0812700C @ =gUnk_08363898
	adds r1, r1, r7
	ldrh r1, [r1]
	strh r1, [r3, #0xc]
	ldrb r1, [r4, #3]
	lsls r1, r1, #2
	mov r7, sl
	ldrh r2, [r7]
	muls r2, r5, r2
	adds r1, r1, r2
	ldr r2, _0812700C @ =gUnk_08363898
	adds r1, r1, r2
	ldrb r1, [r1, #2]
	strb r1, [r3, #0x1a]
	mov r5, sb
	strh r5, [r3, #0x16]
	movs r1, #0xff
	strb r1, [r3, #0x1b]
	movs r1, #0x10
	strb r1, [r3, #0x1c]
	movs r1, #8
	strb r1, [r3, #0x1f]
	strh r5, [r3, #0x10]
	strh r5, [r3, #0x12]
	movs r1, #0xc1
	lsls r1, r1, #0xc
	str r1, [r3, #8]
	ldr r1, [r4, #4]
	str r1, [r3, #0x2c]
	ldr r1, [r4, #8]
	str r1, [r3, #0x30]
	movs r7, #0xb0
	lsls r7, r7, #2
	adds r0, r0, r7
	ldr r1, [sp, #4]
	adds r0, r1, r0
	bl sub_08155128
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r1, _08126FF4 @ =gUnk_08361A6E
	mov r2, r8
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r6, r0
	blo _08126F42
_08126FE0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08126FF0: .4byte 0x05000068
_08126FF4: .4byte gUnk_08361A6E
_08126FF8: .4byte 0x000006E6
_08126FFC: .4byte gLanguage
_08127000: .4byte gUnk_08361A58
_08127004: .4byte gUnk_08361A7C
_08127008: .4byte 0x06012000
_0812700C: .4byte gUnk_08363898

	thumb_func_start sub_08127010
sub_08127010: @ 0x08127010
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	ldr r1, _081270B0 @ =0x000006E6
	adds r0, r6, r1
	ldrb r2, [r0]
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _081270A6
	movs r0, #0xdc
	lsls r0, r0, #3
	adds r5, r6, r0
	movs r7, #0
	ldr r1, _081270B4 @ =gUnk_08361A6E
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r7, r0
	bhs _081270A6
	mov r8, r1
_08127042:
	movs r0, #0x34
	muls r0, r7, r0
	movs r1, #0xb0
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r2, r6, r0
	ldr r1, [r2, #0x2c]
	ldr r0, [r5, #8]
	subs r1, r1, r0
	ldrh r0, [r5, #4]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r0, #0x78
	strh r0, [r2, #0x10]
	ldr r1, [r2, #0x30]
	ldr r0, [r5, #0xc]
	subs r1, r1, r0
	ldrh r0, [r5, #4]
	muls r0, r1, r0
	asrs r0, r0, #8
	adds r0, #0x50
	strh r0, [r2, #0x12]
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	movs r1, #0x12
	ldrsh r3, [r2, r1]
	adds r0, #0x1d
	movs r1, #0x90
	lsls r1, r1, #1
	movs r4, #0
	cmp r0, r1
	bhi _0812708C
	adds r0, r3, #0
	adds r0, #0xf
	cmp r0, #0xbe
	bhi _0812708C
	movs r4, #1
_0812708C:
	cmp r4, #0
	beq _08127096
	adds r0, r2, #0
	bl sub_081564D8
_08127096:
	adds r7, #1
	ldr r1, _081270B0 @ =0x000006E6
	adds r0, r6, r1
	ldrb r0, [r0]
	add r0, r8
	ldrb r0, [r0]
	cmp r7, r0
	blo _08127042
_081270A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081270B0: .4byte 0x000006E6
_081270B4: .4byte gUnk_08361A6E

	thumb_func_start sub_081270B8
sub_081270B8: @ 0x081270B8
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	cmp r0, #0
	bgt _081270C2
	b _081271EC
_081270C2:
	cmp r0, #9
	ble _081270C8
	b _081271EC
_081270C8:
	ldr r1, _081271F4 @ =gUnk_08D61248
	subs r0, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _081271F8 @ =0x0600A800
	bl LZ77UnCompVram
	ldr r0, _081271FC @ =gUnk_08361E14
	ldr r1, _08127200 @ =0x0600B800
	bl LZ77UnCompVram
	cmp r4, #2
	beq _08127120
	ldr r5, _08127204 @ =gUnk_08D61220
	ldrh r3, [r5, #0xa]
	adds r6, r5, #0
	ldrh r0, [r6, #0xe]
	cmp r3, r0
	bhi _08127120
	adds r4, r6, #0
_081270F2:
	ldrh r2, [r4, #8]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r6, _08127200 @ =0x0600B800
	adds r0, r0, r6
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r7, [r4, #0xc]
	cmp r2, r7
	bhi _08127118
	movs r6, #0xe1
	lsls r6, r6, #7
	adds r3, r6, #0
_0812710C:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r7, [r4, #0xc]
	cmp r2, r7
	bls _0812710C
_08127118:
	adds r3, r0, #0
	ldrh r0, [r5, #0xe]
	cmp r3, r0
	bls _081270F2
_08127120:
	ldr r0, _08127208 @ =gUnk_0203AD50
	ldr r1, _0812720C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldr r7, _08127210 @ =gUnk_0203ACC0
	ldrb r1, [r1]
	cmp r0, r1
	beq _0812716A
	ldr r5, _08127204 @ =gUnk_08D61220
	ldrh r3, [r5, #0x12]
	adds r6, r5, #0
	ldrh r0, [r6, #0x16]
	cmp r3, r0
	bhi _0812716A
	adds r4, r6, #0
_0812713C:
	ldrh r2, [r4, #0x10]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r6, _08127200 @ =0x0600B800
	adds r0, r0, r6
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r3, [r4, #0x14]
	cmp r2, r3
	bhi _08127162
	movs r6, #0xe1
	lsls r6, r6, #7
	adds r3, r6, #0
_08127156:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r6, [r4, #0x14]
	cmp r2, r6
	bls _08127156
_08127162:
	adds r3, r0, #0
	ldrh r0, [r5, #0x16]
	cmp r3, r0
	bls _0812713C
_0812716A:
	ldrh r1, [r7, #0xe]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _081271EC
	ldr r5, _08127204 @ =gUnk_08D61220
	ldrh r3, [r5, #0x1a]
	adds r6, r5, #0
	ldrh r7, [r6, #0x1e]
	cmp r3, r7
	bhi _081271B2
	adds r4, r6, #0
_08127184:
	ldrh r2, [r4, #0x18]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r7, _08127200 @ =0x0600B800
	adds r0, r0, r7
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r3, [r4, #0x1c]
	cmp r2, r3
	bhi _081271AA
	movs r7, #0xe1
	lsls r7, r7, #7
	adds r3, r7, #0
_0812719E:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r7, [r4, #0x1c]
	cmp r2, r7
	bls _0812719E
_081271AA:
	adds r3, r0, #0
	ldrh r0, [r5, #0x1e]
	cmp r3, r0
	bls _08127184
_081271B2:
	adds r5, r6, #0
	ldrh r3, [r5, #0x22]
	ldrh r6, [r5, #0x26]
	cmp r3, r6
	bhi _081271EC
	adds r4, r5, #0
_081271BE:
	ldrh r2, [r4, #0x20]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r7, _08127200 @ =0x0600B800
	adds r0, r0, r7
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r3, [r4, #0x24]
	cmp r2, r3
	bhi _081271E4
	movs r6, #0xe1
	lsls r6, r6, #7
	adds r3, r6, #0
_081271D8:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r7, [r4, #0x24]
	cmp r2, r7
	bls _081271D8
_081271E4:
	adds r3, r0, #0
	ldrh r0, [r5, #0x26]
	cmp r3, r0
	bls _081271BE
_081271EC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081271F4: .4byte gUnk_08D61248
_081271F8: .4byte 0x0600A800
_081271FC: .4byte gUnk_08361E14
_08127200: .4byte 0x0600B800
_08127204: .4byte gUnk_08D61220
_08127208: .4byte gUnk_0203AD50
_0812720C: .4byte gUnk_0203AD3C
_08127210: .4byte gUnk_0203ACC0

	thumb_func_start sub_08127214
sub_08127214: @ 0x08127214
	push {r4, r5, r6, lr}
	ldr r2, _0812724C @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08127250 @ =gBgCntRegs
	movs r2, #0
	ldr r0, _08127254 @ =0x00001708
	strh r0, [r1, #2]
	ldr r0, _08127258 @ =gBgScrollRegs
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	ldr r3, _0812725C @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08127264
	ldr r0, _08127260 @ =gUnk_08361DF4
	movs r1, #0x70
	movs r2, #0x10
	bl LoadBgPaletteWithTransformation
	b _0812727A
	.align 2, 0
_0812724C: .4byte gDispCnt
_08127250: .4byte gBgCntRegs
_08127254: .4byte 0x00001708
_08127258: .4byte gBgScrollRegs
_0812725C: .4byte gMainFlags
_08127260: .4byte gUnk_08361DF4
_08127264:
	ldr r1, _081272D8 @ =0x040000D4
	ldr r0, _081272DC @ =gUnk_08361DF4
	str r0, [r1]
	ldr r0, _081272E0 @ =gBgPalette + 0xE0
	str r0, [r1, #4]
	ldr r0, _081272E4 @ =0x80000010
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0812727A:
	ldr r0, _081272E8 @ =gUnk_08362104
	ldr r1, _081272EC @ =0x06009000
	bl LZ77UnCompVram
	ldr r0, _081272F0 @ =gUnk_08361FA8
	ldr r1, _081272F4 @ =0x0600B800
	bl LZ77UnCompVram
	ldr r0, _081272F8 @ =gUnk_0203AD50
	ldr r1, _081272FC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	beq _081272D0
	ldr r5, _08127300 @ =gUnk_08D61220
	ldrh r3, [r5, #2]
	ldrh r6, [r5, #6]
	cmp r3, r6
	bhi _081272D0
	adds r4, r5, #0
_081272A2:
	ldrh r2, [r4]
	lsls r1, r3, #6
	lsls r0, r2, #1
	ldr r6, _081272F4 @ =0x0600B800
	adds r0, r0, r6
	adds r1, r1, r0
	adds r0, r3, #1
	ldrh r3, [r4, #4]
	cmp r2, r3
	bhi _081272C8
	movs r6, #0xe1
	lsls r6, r6, #7
	adds r3, r6, #0
_081272BC:
	strh r3, [r1]
	adds r1, #2
	adds r2, #1
	ldrh r6, [r4, #4]
	cmp r2, r6
	bls _081272BC
_081272C8:
	adds r3, r0, #0
	ldrh r0, [r5, #6]
	cmp r3, r0
	bls _081272A2
_081272D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081272D8: .4byte 0x040000D4
_081272DC: .4byte gUnk_08361DF4
_081272E0: .4byte gBgPalette + 0xE0
_081272E4: .4byte 0x80000010
_081272E8: .4byte gUnk_08362104
_081272EC: .4byte 0x06009000
_081272F0: .4byte gUnk_08361FA8
_081272F4: .4byte 0x0600B800
_081272F8: .4byte gUnk_0203AD50
_081272FC: .4byte gUnk_0203AD3C
_08127300: .4byte gUnk_08D61220

