	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08124BE0
sub_08124BE0: @ 0x08124BE0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r5, _08124C18 @ =gUnk_0203ACC0
	movs r4, #3
_08124BEC:
	adds r0, r5, #0
	bl sub_0812403C
	adds r5, #0x14
	subs r4, #1
	cmp r4, #0
	bge _08124BEC
	ldr r6, _08124C18 @ =gUnk_0203ACC0
	ldr r5, _08124C1C @ =0x0000FFFB
	adds r2, r6, #0
	adds r2, #0xe
	movs r3, #4
	movs r4, #3
_08124C06:
	ldrb r1, [r2, #4]
	cmp r1, #0
	beq _08124C20
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	subs r0, r1, #1
	strb r0, [r2, #4]
	b _08124C28
	.align 2, 0
_08124C18: .4byte gUnk_0203ACC0
_08124C1C: .4byte 0x0000FFFB
_08124C20:
	ldrh r1, [r2]
	adds r0, r5, #0
	ands r0, r1
	strh r0, [r2]
_08124C28:
	adds r2, #0x14
	subs r4, #1
	cmp r4, #0
	bge _08124C06
	ldr r5, _08124C98 @ =gUnk_0203ACC0
	movs r4, #3
_08124C34:
	adds r0, r5, #0
	bl sub_0812403C
	adds r5, #0x14
	subs r4, #1
	cmp r4, #0
	bge _08124C34
	movs r4, #4
	ldr r2, _08124C98 @ =gUnk_0203ACC0
	ldr r0, _08124C9C @ =gUnk_0203AD50
	ldrb r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r3, r0, r2
	ldrh r1, [r3, #8]
	movs r0, #0xa
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08124CA0
	ldrh r0, [r3, #0xe]
	ands r4, r0
	cmp r4, #0
	bne _08124CA0
	adds r5, r6, #0
	adds r5, #0xe
	movs r4, #3
_08124C6C:
	ldrh r0, [r5]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r1, r0
	strh r1, [r5]
	movs r0, #0x3c
	strb r0, [r5, #4]
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _08124C8C
	movs r0, #0xfd
	lsls r0, r0, #1
	bl m4aSongNumStart
_08124C8C:
	adds r5, #0x14
	subs r4, #1
	cmp r4, #0
	bge _08124C6C
	b _08124E6A
	.align 2, 0
_08124C98: .4byte gUnk_0203ACC0
_08124C9C: .4byte gUnk_0203AD50
_08124CA0:
	ldr r0, _08124D00 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08124CAE
	b _08124E6A
_08124CAE:
	movs r0, #0
	mov sb, r0
	ldr r3, _08124D04 @ =gUnk_0203AD3C
	ldr r0, _08124D08 @ =gUnk_0203ACC0
	movs r5, #4
	adds r2, r0, #0
	adds r2, #8
	movs r4, #3
_08124CBE:
	ldrh r1, [r2, #6]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08124CD0
	ldrh r0, [r2]
	mov r1, sb
	orrs r1, r0
	mov sb, r1
_08124CD0:
	adds r2, #0x14
	subs r4, #1
	cmp r4, #0
	bge _08124CBE
	movs r4, #4
	mov r2, sb
	ands r4, r2
	cmp r4, #0
	beq _08124DD4
	ldr r2, _08124D08 @ =gUnk_0203ACC0
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0xd
	ldrsb r1, [r0, r1]
	mov r8, r1
	adds r3, r1, #0
	cmp r3, #2
	bne _08124D0C
	movs r2, #1
	b _08124D66
	.align 2, 0
_08124D00: .4byte gUnk_0203AD10
_08124D04: .4byte gUnk_0203AD3C
_08124D08: .4byte gUnk_0203ACC0
_08124D0C:
	cmp r3, #4
	bne _08124D16
	movs r0, #2
	mov r8, r0
	b _08124D68
_08124D16:
	movs r5, #0
	movs r4, #0
	movs r7, #1
	adds r6, r2, #0
_08124D1E:
	ldrh r1, [r6, #0xe]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08124D34
	adds r0, r4, #0
	bl sub_08128694
	adds r1, r7, #0
	lsls r1, r0
	orrs r5, r1
_08124D34:
	adds r6, #0x14
	adds r4, #1
	cmp r4, #3
	ble _08124D1E
	movs r0, #9
	ands r0, r5
	cmp r0, #0
	bne _08124D68
	movs r0, #4
	ands r0, r5
	cmp r0, #0
	beq _08124D5C
	movs r0, #0
	bl HasBigChest
	cmp r0, #0
	beq _08124D68
	movs r1, #2
	mov r8, r1
	b _08124D68
_08124D5C:
	movs r0, #2
	ands r5, r0
	cmp r5, #0
	beq _08124D68
	movs r2, #4
_08124D66:
	mov r8, r2
_08124D68:
	ldr r2, _08124DC8 @ =gUnk_0203ACC0
	ldr r3, _08124DCC @ =gUnk_0203AD3C
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #0xd]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r6, r2, #0
	cmp r8, r0
	beq _08124DD4
	movs r4, #0
	adds r5, r6, #0
	movs r6, #2
_08124D88:
	mov r0, r8
	strb r0, [r5, #0xd]
	movs r0, #0x28
	strb r0, [r5, #0x12]
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08124DD0 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	beq _08124DAC
	ldr r0, _08124DCC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r1, r0
	beq _08124DAC
	movs r0, #8
	bl sub_08031CE4
_08124DAC:
	ldrh r1, [r5, #0xe]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08124DBE
	movs r0, #0xfd
	lsls r0, r0, #1
	bl m4aSongNumStart
_08124DBE:
	adds r5, #0x14
	adds r4, #1
	cmp r4, #3
	ble _08124D88
	b _08124E6A
	.align 2, 0
_08124DC8: .4byte gUnk_0203ACC0
_08124DCC: .4byte gUnk_0203AD3C
_08124DD0: .4byte gUnk_0203AD10
_08124DD4:
	ldrb r0, [r3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r0, #0xd
	ldrsb r0, [r1, r0]
	cmp r0, #4
	bne _08124E6A
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08124E6A
	ldrh r0, [r6, #0xe]
	ldrh r1, [r6, #0x22]
	orrs r0, r1
	ldrh r1, [r6, #0x36]
	orrs r0, r1
	adds r1, r6, #0
	adds r1, #0x4a
	ldrh r1, [r1]
	orrs r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _08124E6A
	movs r0, #0x80
	lsls r0, r0, #1
	mov r1, sb
	ands r1, r0
	adds r7, r0, #0
	cmp r1, #0
	beq _08124E22
	movs r7, #0x80
	lsls r7, r7, #2
_08124E22:
	movs r4, #0
	adds r5, r6, #0
	movs r6, #2
_08124E28:
	ldrh r1, [r5, #0xe]
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r5, #0xe]
	movs r0, #0x28
	strb r0, [r5, #0x12]
	lsls r0, r4, #0x18
	lsrs r1, r0, #0x18
	ldr r0, _08124E78 @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	beq _08124E50
	ldr r0, _08124E7C @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r1, r0
	beq _08124E50
	movs r0, #8
	bl sub_08031CE4
_08124E50:
	ldrh r1, [r5, #0xe]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08124E62
	movs r0, #0xfd
	lsls r0, r0, #1
	bl m4aSongNumStart
_08124E62:
	adds r5, #0x14
	adds r4, #1
	cmp r4, #3
	ble _08124E28
_08124E6A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08124E78: .4byte gUnk_0203AD10
_08124E7C: .4byte gUnk_0203AD3C

	thumb_func_start sub_08124E80
sub_08124E80: @ 0x08124E80
	push {lr}
	ldr r0, _08124E9C @ =gUnk_0203ACC0
	movs r3, #1
	movs r2, #0x10
	adds r0, #0xd
	movs r1, #3
_08124E8C:
	strb r3, [r0]
	strb r2, [r0, #6]
	adds r0, #0x14
	subs r1, #1
	cmp r1, #0
	bge _08124E8C
	pop {r0}
	bx r0
	.align 2, 0
_08124E9C: .4byte gUnk_0203ACC0

	thumb_func_start sub_08124EA0
sub_08124EA0: @ 0x08124EA0
	push {lr}
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _08124EC4 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	pop {r0}
	bx r0
	.align 2, 0
_08124EC4: .4byte 0x0000FFFF

	thumb_func_start sub_08124EC8
sub_08124EC8: @ 0x08124EC8
	push {lr}
	sub sp, #4
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _08124F08 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	ldr r1, _08124F0C @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	ldr r3, _08124F10 @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08124F14
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl LoadBgPaletteWithTransformation
	b _08124F2A
	.align 2, 0
_08124F08: .4byte 0x0000FFFF
_08124F0C: .4byte 0x00007FFF
_08124F10: .4byte gMainFlags
_08124F14:
	ldr r1, _08124F38 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08124F3C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08124F40 @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08124F2A:
	movs r0, #0
	movs r1, #0xff
	bl sub_0803D2A8
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08124F38: .4byte 0x040000D4
_08124F3C: .4byte gBgPalette
_08124F40: .4byte 0x80000001

	thumb_func_start sub_08124F44
sub_08124F44: @ 0x08124F44
	push {lr}
	sub sp, #4
	ldr r0, _08124F60 @ =sub_08124BE0
	movs r2, #0xf0
	lsls r2, r2, #4
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #4
	bl TaskCreate
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_08124F60: .4byte sub_08124BE0

	thumb_func_start sub_08124F64
sub_08124F64: @ 0x08124F64
	push {lr}
	ldr r1, _08124F80 @ =gUnk_08D6113C
	lsls r0, r0, #3
	adds r2, r0, r1
	ldr r3, [r2]
	adds r1, #4
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, _08124F84 @ =0x04000100
	adds r0, r3, #0
	bl CpuSet
	pop {r0}
	bx r0
	.align 2, 0
_08124F80: .4byte gUnk_08D6113C
_08124F84: .4byte 0x04000100

	thumb_func_start sub_08124F88
sub_08124F88: @ 0x08124F88
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r2, #0
	movs r3, #0
	ldr r1, _08124FB0 @ =gUnk_08D6CD0C
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r0, #0x46
	ldrb r0, [r0]
	cmp r0, #0xa
	bhi _0812500E
	lsls r0, r0, #2
	ldr r1, _08124FB4 @ =_08124FB8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08124FB0: .4byte gUnk_08D6CD0C
_08124FB4: .4byte _08124FB8
_08124FB8: @ jump table
	.4byte _08124FE4 @ case 0
	.4byte _08124FE8 @ case 1
	.4byte _08124FF8 @ case 2
	.4byte _08125000 @ case 3
	.4byte _08124FEC @ case 4
	.4byte _08124FF4 @ case 5
	.4byte _08124FF0 @ case 6
	.4byte _08124FFC @ case 7
	.4byte _08125004 @ case 8
	.4byte _08125008 @ case 9
	.4byte _0812500C @ case 10
_08124FE4:
	movs r2, #1
	b _0812500E
_08124FE8:
	movs r2, #2
	b _0812500E
_08124FEC:
	movs r2, #5
	b _0812500E
_08124FF0:
	movs r2, #7
	b _0812500E
_08124FF4:
	movs r2, #6
	b _0812500E
_08124FF8:
	movs r2, #3
	b _0812500E
_08124FFC:
	movs r2, #8
	b _0812500E
_08125000:
	movs r2, #4
	b _0812500E
_08125004:
	movs r2, #9
	b _0812500E
_08125008:
	movs r2, #0
	b _0812500E
_0812500C:
	movs r2, #0xa
_0812500E:
	ldr r0, _0812503C @ =gUnk_08D6115C
	lsls r1, r2, #2
	adds r1, r1, r0
	ldr r5, [r1]
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #0
	beq _0812507E
_0812501E:
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r0, r5
	ldr r0, [r2]
	cmp r0, r6
	bne _0812506A
	cmp r4, #1
	beq _08125052
	cmp r4, #1
	bgt _08125040
	cmp r4, #0
	beq _0812504A
	b _0812506A
	.align 2, 0
_0812503C: .4byte gUnk_08D6115C
_08125040:
	cmp r4, #2
	beq _0812505A
	cmp r4, #3
	beq _08125062
	b _0812506A
_0812504A:
	ldrb r0, [r2, #4]
	lsls r0, r0, #8
	ldrb r3, [r2, #5]
	b _08125068
_08125052:
	ldrb r0, [r2, #6]
	lsls r0, r0, #8
	ldrb r3, [r2, #7]
	b _08125068
_0812505A:
	ldrb r0, [r2, #8]
	lsls r0, r0, #8
	ldrb r3, [r2, #9]
	b _08125068
_08125062:
	ldrb r0, [r2, #0xa]
	lsls r0, r0, #8
	ldrb r3, [r2, #0xb]
_08125068:
	orrs r3, r0
_0812506A:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	cmp r0, #0
	bne _0812501E
_0812507E:
	adds r0, r3, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08125088
sub_08125088: @ 0x08125088
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r7, r0, #0
	adds r6, r1, #0
	lsls r0, r6, #0x11
	movs r1, #0xa0
	lsls r1, r1, #0xc
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, _081251DC @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r6, r0
	bne _081250B0
	movs r2, #8
	mov sb, r2
_081250B0:
	adds r3, r7, #0
	adds r3, #0x50
	movs r0, #0
	strh r0, [r3]
	ldr r2, _081251E0 @ =gUnk_08350B30
	ldr r1, _081251E4 @ =gKirbys
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r0, r0, r1
	ldr r4, _081251E8 @ =0x00000103
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r2, r0, r2
	ldrh r0, [r2]
	mov r8, r3
	cmp r0, #0
	bne _081250E0
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _081250E0
	movs r0, #2
	strh r0, [r3]
_081250E0:
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r6, r0
	adds r5, r0, r1
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	lsls r1, r6, #0x18
	lsrs r4, r1, #0x18
	adds r1, r4, #0
	bl sub_08124F88
	lsls r0, r0, #0x10
	mov sl, r0
	lsrs r0, r0, #0x10
	str r0, [sp]
	cmp r0, #0
	bne _08125110
	mov r0, r8
	ldrh r1, [r0]
	movs r0, #3
	orrs r0, r1
	mov r1, r8
	strh r0, [r1]
_08125110:
	adds r0, r4, #0
	bl sub_0803E558
	lsls r2, r6, #8
	ldr r3, _081251EC @ =0x06013800
	adds r0, r2, r3
	str r0, [r7]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #6
	strh r0, [r7, #0x14]
	ldr r1, _081251F0 @ =gUnk_08350AAC
	ldr r4, _081251E8 @ =0x00000103
	adds r4, r4, r5
	mov ip, r4
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	movs r5, #0
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r4, #0x10
	strb r4, [r7, #0x1c]
	strb r6, [r7, #0x1f]
	mov r0, sl
	lsrs r0, r0, #0x18
	mov sl, r0
	strh r0, [r7, #0x10]
	movs r1, #0xff
	ldr r3, [sp]
	ands r1, r3
	adds r1, #7
	strh r1, [r7, #0x12]
	movs r3, #0x82
	lsls r3, r3, #0xb
	str r3, [r7, #8]
	ldr r5, _081251F4 @ =0x06013880
	adds r2, r2, r5
	str r2, [r7, #0x28]
	mov r2, sb
	lsls r0, r2, #6
	strh r0, [r7, #0x3c]
	ldr r2, _081251E0 @ =gUnk_08350B30
	mov r5, ip
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r7, #0x34]
	ldrb r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	adds r2, r7, #0
	adds r2, #0x42
	strb r0, [r2]
	movs r0, #0
	strh r0, [r7, #0x3e]
	adds r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0x44
	strb r4, [r0]
	adds r0, r6, #4
	adds r4, r7, #0
	adds r4, #0x47
	strb r0, [r4]
	mov r2, sl
	strh r2, [r7, #0x38]
	strh r1, [r7, #0x3a]
	str r3, [r7, #0x30]
	adds r0, r7, #0
	bl sub_08155128
	mov r3, r8
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _081251CC
	adds r0, r7, #0
	adds r0, #0x28
	bl sub_08155128
_081251CC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081251DC: .4byte gUnk_0203AD3C
_081251E0: .4byte gUnk_08350B30
_081251E4: .4byte gKirbys
_081251E8: .4byte 0x00000103
_081251EC: .4byte 0x06013800
_081251F0: .4byte gUnk_08350AAC
_081251F4: .4byte 0x06013880

	thumb_func_start sub_081251F8
sub_081251F8: @ 0x081251F8
	push {r4, lr}
	sub sp, #0x2c
	movs r4, #0
	str r4, [sp, #0x28]
	add r0, sp, #0x28
	ldr r2, _0812524C @ =0x0500000A
	mov r1, sp
	bl CpuSet
	ldr r0, _08125250 @ =0x06012000
	str r0, [sp]
	mov r1, sp
	movs r3, #0
	movs r0, #0xa0
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	ldr r2, _08125254 @ =gUnk_08359BE8
	ldrh r0, [r2]
	strh r0, [r1, #0xc]
	ldrb r0, [r2, #2]
	strb r0, [r1, #0x1a]
	mov r0, sp
	strh r4, [r0, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	mov r0, sp
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r0, #0x82
	lsls r0, r0, #0xb
	str r0, [sp, #8]
	mov r0, sp
	bl sub_08155128
	add sp, #0x2c
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812524C: .4byte 0x0500000A
_08125250: .4byte 0x06012000
_08125254: .4byte gUnk_08359BE8

	thumb_func_start sub_08125258
sub_08125258: @ 0x08125258
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _08125288 @ =sub_081264B8
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	str r1, [sp]
	movs r1, #0x28
	movs r3, #4
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812528C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08125294
	.align 2, 0
_08125288: .4byte sub_081264B8
_0812528C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08125294:
	adds r3, r0, #0
	movs r6, #5
	ldr r0, _081252F0 @ =gUnk_08359C48
	lsls r1, r4, #2
	adds r4, r1, r0
	ldrb r2, [r4, #2]
	adds r7, r0, #0
	adds r5, r1, #0
	cmp r2, #0x70
	bne _081252B0
	ldrb r0, [r4, #3]
	cmp r0, #0x50
	bne _081252B0
	movs r6, #1
_081252B0:
	ldr r0, _081252F4 @ =0x06012000
	str r0, [r3]
	movs r2, #0
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r3, #0x14]
	ldr r1, _081252F8 @ =gUnk_08359BE8
	lsls r0, r6, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	strh r1, [r3, #0xc]
	ldrb r0, [r0, #2]
	strb r0, [r3, #0x1a]
	strh r2, [r3, #0x16]
	movs r0, #0xff
	strb r0, [r3, #0x1b]
	movs r0, #0x10
	strb r0, [r3, #0x1c]
	movs r0, #8
	strb r0, [r3, #0x1f]
	adds r1, r5, r7
	ldrb r0, [r1, #2]
	strh r0, [r3, #0x10]
	ldrb r0, [r1, #3]
	strh r0, [r3, #0x12]
	movs r0, #0xc1
	lsls r0, r0, #0xc
	str r0, [r3, #8]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081252F0: .4byte gUnk_08359C48
_081252F4: .4byte 0x06012000
_081252F8: .4byte gUnk_08359BE8

	thumb_func_start sub_081252FC
sub_081252FC: @ 0x081252FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x20
	str r0, [sp, #0x10]
	ldr r0, _08125338 @ =sub_08126504
	movs r2, #0x80
	lsls r2, r2, #5
	movs r1, #0
	str r1, [sp]
	movs r1, #0x80
	movs r3, #4
	bl TaskCreate
	str r0, [sp, #0x14]
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812533C
	ldr r1, [sp, #0x14]
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08125346
	.align 2, 0
_08125338: .4byte sub_08126504
_0812533C:
	ldr r2, [sp, #0x14]
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08125346:
	adds r7, r1, #0
	movs r0, #6
	str r0, [sp, #0x18]
	adds r3, r7, #0
	adds r3, #0x7f
	movs r0, #0
	strb r0, [r3]
	ldr r0, _08125494 @ =gUnk_08359C48
	ldr r2, [sp, #0x10]
	lsls r1, r2, #2
	adds r2, r1, r0
	ldrb r0, [r2, #2]
	str r1, [sp, #0x1c]
	cmp r0, #0x70
	bne _08125372
	ldrb r0, [r2, #3]
	cmp r0, #0x50
	bne _08125372
	movs r0, #2
	str r0, [sp, #0x18]
	movs r0, #1
	strb r0, [r3]
_08125372:
	movs r5, #0
	str r5, [sp, #4]
	ldr r4, _08125498 @ =0x0500000A
	add r0, sp, #4
	adds r1, r7, #0
	adds r2, r4, #0
	bl CpuSet
	str r5, [sp, #8]
	add r0, sp, #8
	adds r1, r7, #0
	adds r1, #0x28
	adds r2, r4, #0
	bl CpuSet
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	adds r1, r7, #0
	adds r1, #0x50
	adds r2, r4, #0
	bl CpuSet
	ldr r1, _0812549C @ =0x06012000
	mov r8, r1
	str r1, [r7]
	movs r4, #0x90
	lsls r4, r4, #3
	strh r4, [r7, #0x14]
	ldr r3, _081254A0 @ =gUnk_08359BE8
	ldrh r0, [r3, #0x18]
	strh r0, [r7, #0xc]
	ldrb r0, [r3, #0x1a]
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r2, #0x10
	mov sb, r2
	mov r0, sb
	strb r0, [r7, #0x1c]
	movs r1, #8
	mov sl, r1
	mov r2, sl
	strb r2, [r7, #0x1f]
	ldr r2, _08125494 @ =gUnk_08359C48
	ldr r0, [sp, #0x1c]
	adds r2, r0, r2
	ldrb r1, [r2]
	mov ip, r1
	strh r1, [r7, #0x10]
	ldrb r6, [r2, #1]
	strh r6, [r7, #0x12]
	movs r0, #0xc1
	lsls r0, r0, #0xc
	str r0, [r7, #8]
	mov r1, r8
	str r1, [r7, #0x28]
	strh r4, [r7, #0x3c]
	ldr r1, [sp, #0x18]
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r1, [r0]
	strh r1, [r7, #0x34]
	ldrb r0, [r0, #2]
	adds r1, r7, #0
	adds r1, #0x42
	strb r0, [r1]
	strh r5, [r7, #0x3e]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x44
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	mov r1, sl
	strb r1, [r0]
	ldrb r0, [r2, #2]
	strh r0, [r7, #0x38]
	ldrb r0, [r2, #3]
	strh r0, [r7, #0x3a]
	movs r2, #0xc1
	lsls r2, r2, #0xc
	str r2, [r7, #0x30]
	mov r0, r8
	str r0, [r7, #0x50]
	adds r0, r7, #0
	adds r0, #0x64
	strh r4, [r0]
	ldrh r1, [r3, #0x1c]
	subs r0, #8
	strh r1, [r0]
	ldrb r0, [r3, #0x1e]
	adds r1, r7, #0
	adds r1, #0x6a
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x66
	strh r5, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x6c
	mov r1, sb
	strb r1, [r0]
	adds r0, #3
	mov r2, sl
	strb r2, [r0]
	subs r0, #0xf
	mov r1, ip
	strh r1, [r0]
	adds r0, #2
	strh r6, [r0]
	movs r2, #0xc1
	lsls r2, r2, #0xc
	str r2, [r7, #0x58]
	ldr r0, _081254A4 @ =gUnk_08D61188
	ldr r1, [sp, #0x1c]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [r7, #0x78]
	adds r0, r7, #0
	adds r0, #0x7c
	mov r2, sp
	ldrb r2, [r2, #0x10]
	strb r2, [r0]
	adds r0, #1
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, [sp, #0x14]
	add sp, #0x20
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08125494: .4byte gUnk_08359C48
_08125498: .4byte 0x0500000A
_0812549C: .4byte 0x06012000
_081254A0: .4byte gUnk_08359BE8
_081254A4: .4byte gUnk_08D61188

	thumb_func_start sub_081254A8
sub_081254A8: @ 0x081254A8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _081254C8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081254CC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081254D4
	.align 2, 0
_081254C8: .4byte gCurTask
_081254CC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081254D4:
	adds r5, r0, #0
	adds r3, r5, #0
	adds r3, #0x7d
	movs r2, #0
	ldrsb r2, [r3, r2]
	ldr r1, _08125518 @ =gUnk_08359C88
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r2, r0
	bge _0812551C
	adds r1, r5, #0
	adds r1, #0x7e
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0812558E
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x89
	lsls r0, r0, #2
	bl m4aSongNumStart
	b _0812558E
	.align 2, 0
_08125518: .4byte gUnk_08359C88
_0812551C:
	ldr r2, _08125550 @ =gUnk_08359BE8
	ldrh r3, [r2, #0xc]
	strh r3, [r5, #0xc]
	ldrb r4, [r2, #0xe]
	strb r4, [r5, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	adds r6, r0, #0
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	adds r0, r5, #0
	adds r0, #0x7f
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08125554
	ldrh r0, [r2]
	strh r0, [r5, #0x34]
	ldrb r0, [r2, #2]
	adds r1, r5, #0
	adds r1, #0x42
	strb r0, [r1]
	adds r1, #1
	b _08125560
	.align 2, 0
_08125550: .4byte gUnk_08359BE8
_08125554:
	strh r3, [r5, #0x34]
	adds r0, r5, #0
	adds r0, #0x42
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x43
_08125560:
	ldrb r0, [r1]
	orrs r0, r6
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x7c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bl sub_08125258
	ldr r0, _081255FC @ =0x00000225
	bl m4aSongNumStart
	ldr r0, _08125600 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08125604 @ =sub_08125608
	str r0, [r1, #8]
	adds r2, r5, #0
	adds r2, #0x7f
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
_0812558E:
	adds r4, r5, #0
	adds r4, #0x50
	adds r0, r4, #0
	bl sub_08155128
	movs r6, #0
	adds r0, r5, #0
	adds r0, #0x7d
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r7, r0, #0
	movs r0, #0x28
	adds r0, r0, r5
	mov r8, r0
	cmp r6, r1
	bhs _081255D8
_081255AE:
	ldr r0, [r5, #0x78]
	lsls r1, r6, #2
	adds r0, r1, r0
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r2, [r0]
	ldr r0, [r5, #0x78]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	adds r1, r5, #0
	adds r1, #0x62
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_081564D8
	adds r6, #1
	movs r0, #0
	ldrsb r0, [r7, r0]
	cmp r6, r0
	blo _081255AE
_081255D8:
	adds r0, r5, #0
	bl sub_08155128
	mov r0, r8
	bl sub_08155128
	adds r0, r5, #0
	bl sub_081564D8
	mov r0, r8
	bl sub_081564D8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081255FC: .4byte 0x00000225
_08125600: .4byte gCurTask
_08125604: .4byte sub_08125608

	thumb_func_start sub_08125608
sub_08125608: @ 0x08125608
	push {r4, r5, lr}
	ldr r0, _08125624 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08125628
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08125630
	.align 2, 0
_08125624: .4byte gCurTask
_08125628:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08125630:
	adds r5, r0, #0
	adds r0, #0x50
	bl sub_08155128
	movs r4, #0
	b _08125660
_0812563C:
	ldr r0, [r5, #0x78]
	lsls r1, r4, #2
	adds r0, r1, r0
	ldrb r2, [r0]
	adds r0, r5, #0
	adds r0, #0x60
	strh r2, [r0]
	ldr r0, [r5, #0x78]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	adds r1, r5, #0
	adds r1, #0x62
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x50
	bl sub_081564D8
	adds r4, #1
_08125660:
	adds r0, r5, #0
	adds r0, #0x7d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r4, r0
	blo _0812563C
	adds r0, r5, #0
	bl sub_08155128
	adds r4, r5, #0
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r5, #0
	bl sub_081564D8
	adds r0, r4, #0
	bl sub_081564D8
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08125690
sub_08125690: @ 0x08125690
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	sub sp, #0x2c
	ldr r3, _081256B8 @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _081256C0
	ldr r0, _081256BC @ =gUnk_081E07FC
	movs r1, #0x80
	movs r2, #0x80
	bl LoadBgPaletteWithTransformation
	b _081256D6
	.align 2, 0
_081256B8: .4byte gMainFlags
_081256BC: .4byte gUnk_081E07FC
_081256C0:
	ldr r1, _081256F0 @ =0x040000D4
	ldr r0, _081256F4 @ =gUnk_081E07FC
	str r0, [r1]
	ldr r0, _081256F8 @ =gBgPalette + 0x100
	str r0, [r1, #4]
	ldr r0, _081256FC @ =0x80000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_081256D6:
	ldr r3, _08125700 @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08125708
	ldr r0, _08125704 @ =gUnk_08359E84
	movs r1, #0
	movs r2, #0x20
	bl LoadBgPaletteWithTransformation
	b _0812571E
	.align 2, 0
_081256F0: .4byte 0x040000D4
_081256F4: .4byte gUnk_081E07FC
_081256F8: .4byte gBgPalette + 0x100
_081256FC: .4byte 0x80000080
_08125700: .4byte gMainFlags
_08125704: .4byte gUnk_08359E84
_08125708:
	ldr r1, _08125740 @ =0x040000D4
	ldr r0, _08125744 @ =gUnk_08359E84
	str r0, [r1]
	ldr r0, _08125748 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0812574C @ =0x80000020
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0812571E:
	ldr r1, _08125750 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	ldr r3, _08125754 @ =gMainFlags
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08125758
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl LoadBgPaletteWithTransformation
	b _0812576E
	.align 2, 0
_08125740: .4byte 0x040000D4
_08125744: .4byte gUnk_08359E84
_08125748: .4byte gBgPalette
_0812574C: .4byte 0x80000020
_08125750: .4byte 0x00007FFF
_08125754: .4byte gMainFlags
_08125758:
	ldr r1, _08125808 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0812580C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08125810 @ =0x80000001
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0812576E:
	ldr r0, _08125814 @ =gUnk_08359EC4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	bl sub_081251F8
	ldr r0, _08125818 @ =gUnk_08359BE8
	ldrh r1, [r0]
	ldrb r0, [r0, #2]
	movs r2, #8
	add r4, sp, #4
	ldr r3, _0812581C @ =0x06012000
	mov sl, r3
	str r3, [sp, #4]
	movs r5, #0
	movs r3, #0xa0
	lsls r3, r3, #2
	mov sb, r3
	mov r3, sb
	strh r3, [r4, #0x14]
	strh r1, [r4, #0xc]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	mov r8, r0
	mov r3, r8
	strb r3, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	movs r6, #0x81
	lsls r6, r6, #0xc
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	ldr r2, _08125820 @ =gUnk_08358D94
	ldr r0, _08125824 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	ldrb r0, [r0, #2]
	movs r2, #9
	mov r3, sl
	str r3, [sp, #4]
	mov r3, sb
	strh r3, [r4, #0x14]
	strh r1, [r4, #0xc]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r0, r8
	strb r0, [r4, #0x1c]
	strb r2, [r4, #0x1f]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	str r6, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08125808: .4byte 0x040000D4
_0812580C: .4byte gBgPalette
_08125810: .4byte 0x80000001
_08125814: .4byte gUnk_08359EC4
_08125818: .4byte gUnk_08359BE8
_0812581C: .4byte 0x06012000
_08125820: .4byte gUnk_08358D94
_08125824: .4byte gLanguage

	thumb_func_start sub_08125828
sub_08125828: @ 0x08125828
	push {lr}
	movs r0, #2
	movs r1, #2
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812583E
	bl sub_081265C8
_0812583E:
	movs r0, #2
	movs r1, #1
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125852
	bl sub_08126618
_08125852:
	movs r0, #2
	movs r1, #6
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125866
	bl sub_08126668
_08125866:
	movs r0, #2
	movs r1, #5
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812587A
	bl sub_081266B8
_0812587A:
	movs r0, #2
	movs r1, #9
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812588E
	bl sub_08126708
_0812588E:
	movs r0, #2
	movs r1, #0xa
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258A2
	bl sub_08126758
_081258A2:
	movs r0, #2
	movs r1, #0xd
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258B6
	bl sub_081267A8
_081258B6:
	movs r0, #2
	movs r1, #0xf
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258CA
	bl sub_081267F8
_081258CA:
	movs r0, #2
	movs r1, #7
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258DE
	bl sub_08126848
_081258DE:
	movs r0, #2
	movs r1, #8
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _081258F2
	bl sub_08126898
_081258F2:
	movs r0, #2
	movs r1, #0xb
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125906
	bl sub_081268E8
_08125906:
	movs r0, #2
	movs r1, #0xc
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812591A
	bl sub_08126938
_0812591A:
	movs r0, #2
	movs r1, #3
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0812592E
	bl sub_08126988
_0812592E:
	movs r0, #2
	movs r1, #4
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125942
	bl sub_081269D8
_08125942:
	movs r0, #2
	movs r1, #0xe
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _08125956
	bl sub_08126A28
_08125956:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0812595C
sub_0812595C: @ 0x0812595C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r4, #0x40
	adds r6, r5, #0
	adds r6, #0x90
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08125996
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08125996
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08125996:
	adds r4, r5, #0
	adds r4, #0x94
	adds r6, r5, #0
	adds r6, #0xe4
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081259CC
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _081259CC
	adds r4, #0x28
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_081259CC:
	adds r4, r5, #0
	adds r4, #0xe8
	movs r0, #0x9c
	lsls r0, r0, #1
	adds r6, r5, r0
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08125A08
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08125A08
	movs r0, #0x88
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08125A08:
	movs r0, #0x9e
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, #0x50
	adds r6, r5, r0
	ldrh r1, [r6]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08125A44
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08125A44
	movs r0, #0xb2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r4, #0
	bl sub_081564D8
_08125A44:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
