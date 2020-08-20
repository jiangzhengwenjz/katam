	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start ObjectMain
ObjectMain: @ 0x08099B80
	push {r4, r5, r6, r7, lr}
	ldr r2, _08099BA0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r6, r2, #0
	cmp r0, #0
	beq _08099BA4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08099BAC
	.align 2, 0
_08099BA0: .4byte gCurTask
_08099BA4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08099BAC:
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #5
	ands r0, r5
	cmp r0, #0
	beq _08099C00
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08099BF0
	ldr r1, _08099BF8 @ =gUnk_02020EE0
	adds r0, r4, #0
	adds r0, #0x86
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r2, r0, r2
	adds r1, #0xec
	adds r2, r2, r1
	ldr r3, _08099BFC @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r1, [r0, #2]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_08099BF0:
	ldr r0, [r6]
	bl TaskDestroy
	b _0809A1B6
	.align 2, 0
_08099BF8: .4byte gUnk_02020EE0
_08099BFC: .4byte gUnk_08351648
_08099C00:
	ldr r0, [r4, #0xc]
	movs r7, #0x80
	lsls r7, r7, #6
	ands r0, r7
	cmp r0, #0
	beq _08099C1A
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	orrs r0, r5
	str r0, [r4, #8]
	b _0809A1B6
_08099C1A:
	adds r0, r4, #0
	bl sub_0803D6B4
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08099C28
	b _08099E40
_08099C28:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x80
	cmp r0, #0x37
	bls _08099C38
	b _08099E30
_08099C38:
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08099C42
	b _08099E30
_08099C42:
	ldr r2, _08099C5C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08099C60 @ =0x00196225
	muls r0, r1, r0
	ldr r3, _08099C64 @ =0x3C6EF35F
	adds r0, r0, r3
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _08099C68 @ =0x00005554
	cmp r2, r0
	bhi _08099C6C
	movs r1, #0
	b _08099C76
	.align 2, 0
_08099C5C: .4byte gRngVal
_08099C60: .4byte 0x00196225
_08099C64: .4byte 0x3C6EF35F
_08099C68: .4byte 0x00005554
_08099C6C:
	ldr r0, _08099CA8 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _08099C76
	movs r1, #1
_08099C76:
	cmp r1, #1
	beq _08099CB4
	cmp r1, #2
	beq _08099D44
	ldr r2, _08099CAC @ =gUnk_02020EE0
	ldr r3, _08099CB0 @ =gUnk_0203AD3C
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08099C9C
	b _08099E34
_08099C9C:
	ldrb r0, [r4]
	cmp r0, #0
	beq _08099CA4
	b _08099DDC
_08099CA4:
	b _08099DD0
	.align 2, 0
_08099CA8: .4byte 0x0000AAA9
_08099CAC: .4byte gUnk_02020EE0
_08099CB0: .4byte gUnk_0203AD3C
_08099CB4:
	ldr r1, _08099D2C @ =gUnk_02020EE0
	ldr r0, _08099D30 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _08099CD2
	b _08099E34
_08099CD2:
	ldrb r0, [r4]
	cmp r0, #0
	bne _08099CE4
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _08099CE4
	b _08099E34
_08099CE4:
	ldr r1, _08099D34 @ =gUnk_08D60FA4
	ldr r5, _08099D38 @ =gSongTable
	ldr r6, _08099D3C @ =0x00000964
	adds r0, r5, r6
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08099D0C
	movs r1, #0x96
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _08099D0C
	b _08099E34
_08099D0C:
	cmp r3, #0
	beq _08099D20
	ldr r0, _08099D40 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08099D20
	b _08099E34
_08099D20:
	movs r0, #0x96
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _08099E34
	.align 2, 0
_08099D2C: .4byte gUnk_02020EE0
_08099D30: .4byte gUnk_0203AD3C
_08099D34: .4byte gUnk_08D60FA4
_08099D38: .4byte gSongTable
_08099D3C: .4byte 0x00000964
_08099D40: .4byte gUnk_0203AD10
_08099D44:
	ldr r1, _08099DB0 @ =gUnk_02020EE0
	ldr r0, _08099DB4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08099E34
	ldrb r0, [r4]
	cmp r0, #0
	bne _08099D70
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _08099E34
_08099D70:
	ldr r1, _08099DB8 @ =gUnk_08D60FA4
	ldr r5, _08099DBC @ =gSongTable
	ldr r2, _08099DC0 @ =0x0000096C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08099D94
	ldr r6, _08099DC4 @ =0x00000968
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08099E34
_08099D94:
	cmp r3, #0
	beq _08099DA6
	ldr r0, _08099DC8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08099E34
_08099DA6:
	ldr r0, _08099DCC @ =0x0000012D
	bl m4aSongNumStart
	b _08099E34
	.align 2, 0
_08099DB0: .4byte gUnk_02020EE0
_08099DB4: .4byte gUnk_0203AD3C
_08099DB8: .4byte gUnk_08D60FA4
_08099DBC: .4byte gSongTable
_08099DC0: .4byte 0x0000096C
_08099DC4: .4byte 0x00000968
_08099DC8: .4byte gUnk_0203AD10
_08099DCC: .4byte 0x0000012D
_08099DD0:
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r3, [r3]
	cmp r0, r3
	bne _08099E34
_08099DDC:
	ldr r1, _08099E20 @ =gUnk_08D60FA4
	ldr r5, _08099E24 @ =gSongTable
	ldr r2, _08099E28 @ =0x00000974
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08099E02
	movs r6, #0x97
	lsls r6, r6, #4
	adds r0, r5, r6
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08099E34
_08099E02:
	cmp r3, #0
	beq _08099E14
	ldr r0, _08099E2C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08099E34
_08099E14:
	movs r0, #0x97
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _08099E34
	.align 2, 0
_08099E20: .4byte gUnk_08D60FA4
_08099E24: .4byte gSongTable
_08099E28: .4byte 0x00000974
_08099E2C: .4byte gUnk_0203AD10
_08099E30:
	movs r0, #1
	strh r0, [r1]
_08099E34:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0809A1B6
_08099E40:
	adds r0, r4, #0
	bl sub_0809A630
	ldr r1, [r4, #0x7c]
	cmp r1, #0
	beq _08099E52
	adds r0, r4, #0
	bl _call_via_r1
_08099E52:
	ldr r0, _08099E98 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r3, r4, #0
	adds r3, #0x56
	ldrb r5, [r3]
	movs r0, #1
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	adds r6, r3, #0
	cmp r2, #0
	beq _08099EF0
	ldr r1, [r4, #8]
	adds r0, r1, #0
	ands r0, r7
	cmp r0, #0
	bne _08099EF0
	movs r0, #0x90
	lsls r0, r0, #5
	ands r1, r0
	cmp r1, #0
	bne _08099EDE
	cmp r5, #0xff
	beq _08099EA4
	ldr r1, _08099E9C @ =gUnk_02023530
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r5, r0
	adds r0, r0, r1
	ldr r1, _08099EA0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _08099EA6
	.align 2, 0
_08099E98: .4byte gUnk_03000510
_08099E9C: .4byte gUnk_02023530
_08099EA0: .4byte 0x0000065E
_08099EA4:
	movs r1, #0xff
_08099EA6:
	cmp r1, #0xff
	beq _08099EDE
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08099EE8 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08099EEC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08099EDE:
	adds r0, r4, #0
	bl sub_0809D7C8
	b _0809A1B6
	.align 2, 0
_08099EE8: .4byte gUnk_02022EB0
_08099EEC: .4byte gUnk_02022F50
_08099EF0:
	ldr r1, [r4, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08099F00
	bl sub_0809A990
	b _08099F0C
_08099F00:
	movs r0, #0x20
	ands r1, r0
	cmp r1, #0
	beq _08099F0C
	bl sub_0809A990
_08099F0C:
	ldr r1, [r4, #0x78]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, [r4, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08099F7E
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _08099F44
	ldr r2, _08099F3C @ =gUnk_02023530
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r3, _08099F40 @ =0x0000065E
	adds r0, r0, r3
	ldrb r1, [r0]
	b _08099F46
	.align 2, 0
_08099F3C: .4byte gUnk_02023530
_08099F40: .4byte 0x0000065E
_08099F44:
	movs r1, #0xff
_08099F46:
	cmp r1, #0xff
	beq _08099F7E
	lsls r3, r1, #6
	ldrb r0, [r4]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _08099FE8 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r4]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08099FEC @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r4, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_08099F7E:
	ldr r0, [r4, #8]
	ldr r1, _08099FF0 @ =0x04000800
	ands r0, r1
	cmp r0, #0
	bne _08099FA6
	adds r1, r4, #0
	adds r1, #0x50
	adds r0, r4, #0
	adds r0, #0x98
	ldrh r0, [r0]
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	adds r1, #2
	adds r0, r4, #0
	adds r0, #0x9a
	ldrh r0, [r0]
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
_08099FA6:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08099FD2
	ldr r1, [r4, #0x40]
	str r1, [r4, #0x48]
	ldr r2, [r4, #0x44]
	str r2, [r4, #0x4c]
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r0, [r0, r3]
	adds r1, r1, r0
	str r1, [r4, #0x40]
	adds r0, r4, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	subs r2, r2, r0
	str r2, [r4, #0x44]
_08099FD2:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08099FF4
	adds r0, r4, #0
	bl sub_0809D8C8
	b _0809A05E
	.align 2, 0
_08099FE8: .4byte gUnk_02022EB0
_08099FEC: .4byte gUnk_02022F50
_08099FF0: .4byte 0x04000800
_08099FF4:
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #0
	strb r0, [r1]
	ldr r2, _0809A0A4 @ =gUnk_02023530
	mov ip, r2
	ldrb r5, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r1, r5, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r4, #0x40]
	ldr r0, [r0]
	cmp r3, r0
	bgt _0809A05E
	mov r0, ip
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	blt _0809A05E
	mov r0, ip
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r4, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _0809A05E
	mov r0, ip
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _0809A05E
	lsls r1, r3, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	adds r2, r4, #0
	adds r2, #0x57
	strb r0, [r2]
	ldr r1, _0809A0A8 @ =gUnk_082D88B8
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4, #0x58]
_0809A05E:
	ldr r1, [r4, #8]
	movs r5, #0x80
	lsls r5, r5, #4
	ands r5, r1
	cmp r5, #0
	bne _0809A106
	adds r2, r4, #0
	adds r2, #0x98
	ldrh r3, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #0
	beq _0809A0BA
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r1, r0
	cmp r1, #0
	bne _0809A08C
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, r0, r3
	strh r0, [r1]
_0809A08C:
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0809A0AC
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0809A0BA
	b _0809A0B8
	.align 2, 0
_0809A0A4: .4byte gUnk_02023530
_0809A0A8: .4byte gUnk_082D88B8
_0809A0AC:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809A0BA
_0809A0B8:
	strh r5, [r2]
_0809A0BA:
	adds r2, r4, #0
	adds r2, #0x9a
	ldrh r3, [r2]
	movs r6, #0
	ldrsh r0, [r2, r6]
	cmp r0, #0
	beq _0809A106
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0809A0DE
	adds r1, r4, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, r0, r3
	strh r0, [r1]
_0809A0DE:
	ldrh r1, [r2]
	movs r3, #0
	ldrsh r0, [r2, r3]
	cmp r0, #0
	bge _0809A0F6
	adds r0, r1, #0
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0809A106
	b _0809A102
_0809A0F6:
	adds r0, r1, #0
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809A106
_0809A102:
	movs r0, #0
	strh r0, [r2]
_0809A106:
	ldr r0, [r4, #0x58]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0809A14C
	ldr r1, [r4, #0xc]
	movs r5, #8
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	bne _0809A136
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0809A130
	ldr r2, _0809A148 @ =0x00000296
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_0809A130:
	ldr r0, [r4, #0xc]
	orrs r0, r5
	str r0, [r4, #0xc]
_0809A136:
	ldr r0, [r4, #0xc]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809A174
	adds r0, r4, #0
	bl sub_0809D710
	b _0809A174
	.align 2, 0
_0809A148: .4byte 0x00000296
_0809A14C:
	ldr r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809A174
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	bne _0809A16A
	ldr r2, _0809A1BC @ =0x00000296
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808AE30
_0809A16A:
	ldr r0, [r4, #0xc]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
_0809A174:
	ldr r0, [r4, #0x30]
	cmp r0, #0
	bne _0809A188
	movs r6, #0x26
	ldrsh r0, [r4, r6]
	cmp r0, #0
	bne _0809A188
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x30]
_0809A188:
	bl sub_0809A7A4
	ldr r0, [r4, #0xc]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, _0809A1C0 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x90
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0xd0
	bne _0809A1B6
	adds r0, r4, #0
	bl sub_081111C4
_0809A1B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A1BC: .4byte 0x00000296
_0809A1C0: .4byte 0xFFFBFFFF

	thumb_func_start ObjectDestroy
ObjectDestroy: @ 0x0809A1C4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r2, r0, #0
	movs r0, #0
	mov sb, r0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809A1E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809A1F0
_0809A1E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809A1F0:
	adds r5, r0, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0x1a
	bne _0809A20A
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x98
	beq _0809A20A
	ldr r1, _0809A328 @ =gUnk_0203AD34
	movs r0, #0
	strb r0, [r1]
_0809A20A:
	ldr r0, _0809A32C @ =gUnk_0203AD10
	ldr r1, [r0]
	movs r0, #4
	ands r1, r0
	movs r2, #0x82
	adds r2, r2, r5
	mov r8, r2
	adds r6, r5, #0
	adds r6, #0x56
	cmp r1, #0
	beq _0809A27C
	ldrb r0, [r2]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _0809A27C
	adds r1, r5, #0
	adds r1, #0x60
	ldr r3, _0809A330 @ =0xFFFFFC45
	adds r0, r3, #0
	ldrh r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bhi _0809A27C
	ldr r2, _0809A334 @ =gUnk_02023530
	ldrb r1, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _0809A338 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_080029BC
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0809A27C
	movs r0, #1
	movs r1, #9
	movs r2, #0xff
	bl sub_08002888
	ldr r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x18
	orrs r1, r2
	str r1, [r0]
	ldr r1, _0809A33C @ =0x000003B7
	adds r0, r5, #0
	movs r2, #0x5a
	bl sub_0808859C
_0809A27C:
	ldr r2, _0809A340 @ =gUnk_08351648
	mov r3, r8
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _0809A2A4
	adds r1, r5, #0
	adds r1, #0x2f
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809A2A4
	bl sub_0803E4D4
_0809A2A4:
	ldr r2, [r5, #0x10]
	cmp r2, #0
	beq _0809A2BC
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0809A2BC
	adds r0, r2, #0
	bl sub_08157190
_0809A2BC:
	adds r0, r5, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _0809A2CA
	bl sub_081590EC
_0809A2CA:
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r2, [r0]
	adds r7, r0, #0
	cmp r2, #0
	bne _0809A2D8
	b _0809A516
_0809A2D8:
	ldrh r1, [r2, #2]
	movs r0, #0xf8
	lsls r0, r0, #5
	cmp r1, r0
	bne _0809A2E4
	b _0809A4DC
_0809A2E4:
	ldrb r0, [r2, #2]
	cmp r0, #0
	bne _0809A2F2
	ldrb r0, [r6]
	cmp r0, #0xff
	bne _0809A2F2
	b _0809A566
_0809A2F2:
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _0809A310
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0809A310
	movs r3, #1
	mov sb, r3
_0809A310:
	mov r1, r8
	ldrb r0, [r1]
	subs r0, #0x10
	cmp r0, #0x54
	bls _0809A31C
	b _0809A4B2
_0809A31C:
	lsls r0, r0, #2
	ldr r1, _0809A344 @ =_0809A348
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809A328: .4byte gUnk_0203AD34
_0809A32C: .4byte gUnk_0203AD10
_0809A330: .4byte 0xFFFFFC45
_0809A334: .4byte gUnk_02023530
_0809A338: .4byte 0x0000065E
_0809A33C: .4byte 0x000003B7
_0809A340: .4byte gUnk_08351648
_0809A344: .4byte _0809A348
_0809A348: @ jump table
	.4byte _0809A4A2 @ case 0
	.4byte _0809A4B2 @ case 1
	.4byte _0809A4B2 @ case 2
	.4byte _0809A4B2 @ case 3
	.4byte _0809A4B2 @ case 4
	.4byte _0809A4B2 @ case 5
	.4byte _0809A4B2 @ case 6
	.4byte _0809A4B2 @ case 7
	.4byte _0809A4B2 @ case 8
	.4byte _0809A4B2 @ case 9
	.4byte _0809A4B2 @ case 10
	.4byte _0809A49C @ case 11
	.4byte _0809A4B2 @ case 12
	.4byte _0809A4B2 @ case 13
	.4byte _0809A4B2 @ case 14
	.4byte _0809A4B2 @ case 15
	.4byte _0809A4B2 @ case 16
	.4byte _0809A4B2 @ case 17
	.4byte _0809A4B2 @ case 18
	.4byte _0809A4B2 @ case 19
	.4byte _0809A4B2 @ case 20
	.4byte _0809A4B2 @ case 21
	.4byte _0809A4A2 @ case 22
	.4byte _0809A4B2 @ case 23
	.4byte _0809A4B2 @ case 24
	.4byte _0809A4B2 @ case 25
	.4byte _0809A4B2 @ case 26
	.4byte _0809A4B2 @ case 27
	.4byte _0809A4B2 @ case 28
	.4byte _0809A4B2 @ case 29
	.4byte _0809A4B2 @ case 30
	.4byte _0809A4B2 @ case 31
	.4byte _0809A4B2 @ case 32
	.4byte _0809A4A2 @ case 33
	.4byte _0809A49C @ case 34
	.4byte _0809A49C @ case 35
	.4byte _0809A4A2 @ case 36
	.4byte _0809A4B2 @ case 37
	.4byte _0809A49C @ case 38
	.4byte _0809A4B2 @ case 39
	.4byte _0809A4B2 @ case 40
	.4byte _0809A4B2 @ case 41
	.4byte _0809A4B2 @ case 42
	.4byte _0809A4B2 @ case 43
	.4byte _0809A4B2 @ case 44
	.4byte _0809A4B2 @ case 45
	.4byte _0809A4B2 @ case 46
	.4byte _0809A4B2 @ case 47
	.4byte _0809A4B2 @ case 48
	.4byte _0809A4B2 @ case 49
	.4byte _0809A4B2 @ case 50
	.4byte _0809A4B2 @ case 51
	.4byte _0809A4B2 @ case 52
	.4byte _0809A4B2 @ case 53
	.4byte _0809A4B2 @ case 54
	.4byte _0809A4B2 @ case 55
	.4byte _0809A4B2 @ case 56
	.4byte _0809A4B2 @ case 57
	.4byte _0809A4B2 @ case 58
	.4byte _0809A4B2 @ case 59
	.4byte _0809A4B2 @ case 60
	.4byte _0809A4B2 @ case 61
	.4byte _0809A4B2 @ case 62
	.4byte _0809A4B2 @ case 63
	.4byte _0809A4B2 @ case 64
	.4byte _0809A4B2 @ case 65
	.4byte _0809A4B2 @ case 66
	.4byte _0809A4B2 @ case 67
	.4byte _0809A4B2 @ case 68
	.4byte _0809A4B2 @ case 69
	.4byte _0809A4B2 @ case 70
	.4byte _0809A4B2 @ case 71
	.4byte _0809A4B2 @ case 72
	.4byte _0809A4B2 @ case 73
	.4byte _0809A4B2 @ case 74
	.4byte _0809A4B2 @ case 75
	.4byte _0809A4B2 @ case 76
	.4byte _0809A4B2 @ case 77
	.4byte _0809A4A2 @ case 78
	.4byte _0809A4A2 @ case 79
	.4byte _0809A4A2 @ case 80
	.4byte _0809A4A2 @ case 81
	.4byte _0809A4A2 @ case 82
	.4byte _0809A4A2 @ case 83
	.4byte _0809A4A2 @ case 84
_0809A49C:
	movs r2, #1
	mov sb, r2
	b _0809A4B2
_0809A4A2:
	adds r0, r5, #0
	adds r0, #0x80
	movs r3, #0
	ldrsh r0, [r0, r3]
	cmp r0, #0
	bgt _0809A4B2
	movs r0, #1
	mov sb, r0
_0809A4B2:
	ldr r1, [r7]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	ldr r4, _0809A4D4 @ =gUnk_02023530
	ldrb r3, [r6]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r2, r3, r2
	adds r2, r2, r4
	ldr r3, _0809A4D8 @ =0x0000065E
	adds r2, r2, r3
	ldrb r2, [r2]
	mov r3, sb
	bl sub_08001678
	b _0809A516
	.align 2, 0
_0809A4D4: .4byte gUnk_02023530
_0809A4D8: .4byte 0x0000065E
_0809A4DC:
	ldr r1, _0809A4F0 @ =gUnk_020229E0
	movs r3, #0
	cmp r1, r2
	bne _0809A4F8
	ldr r2, _0809A4F4 @ =gUnk_020229D4
	movs r1, #2
	rsbs r1, r1, #0
	ldr r0, [r2]
	ands r0, r1
	b _0809A514
	.align 2, 0
_0809A4F0: .4byte gUnk_020229E0
_0809A4F4: .4byte gUnk_020229D4
_0809A4F8:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r1, #0x24
	cmp r3, #0x1f
	bhi _0809A516
	ldr r0, [r7]
	cmp r1, r0
	bne _0809A4F8
	ldr r2, _0809A574 @ =gUnk_020229D4
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
_0809A514:
	str r0, [r2]
_0809A516:
	ldrb r0, [r6]
	cmp r0, #0xff
	beq _0809A566
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0x64
	bhi _0809A554
	ldr r0, [r7]
	ldrh r1, [r0, #0x22]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0809A554
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0809A554
	ldr r2, _0809A578 @ =gUnk_02023530
	ldrb r1, [r6]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r3, _0809A57C @ =0x0000065E
	adds r0, r0, r3
	ldrb r0, [r0]
	movs r1, #1
	bl sub_080029CC
_0809A554:
	ldrb r4, [r6]
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_08002984
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080028CC
_0809A566:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809A574: .4byte gUnk_020229D4
_0809A578: .4byte gUnk_02023530
_0809A57C: .4byte 0x0000065E

	thumb_func_start sub_0809A580
sub_0809A580: @ 0x0809A580
	push {r4, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809A59A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809A5A2
_0809A59A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809A5A2:
	adds r4, r0, #0
	ldr r1, _0809A5BC @ =gUnk_020229E0
	movs r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r1, r0
	bne _0809A5C4
	ldr r2, _0809A5C0 @ =gUnk_020229D4
	movs r1, #2
	rsbs r1, r1, #0
	ldr r0, [r2]
	ands r0, r1
	b _0809A5E4
	.align 2, 0
_0809A5BC: .4byte gUnk_020229E0
_0809A5C0: .4byte gUnk_020229D4
_0809A5C4:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r1, #0x24
	cmp r3, #0x1f
	bhi _0809A5E6
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	cmp r1, r0
	bne _0809A5C4
	ldr r2, _0809A62C @ =gUnk_020229D4
	movs r1, #1
	lsls r1, r3
	ldr r0, [r2]
	bics r0, r1
_0809A5E4:
	str r0, [r2]
_0809A5E6:
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _0809A5FE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0809A5FE
	adds r0, r2, #0
	bl sub_08157190
_0809A5FE:
	adds r0, r4, #0
	adds r0, #0x8c
	ldr r0, [r0]
	cmp r0, #0
	beq _0809A60C
	bl sub_081590EC
_0809A60C:
	adds r1, r4, #0
	adds r1, #0x56
	ldrb r0, [r1]
	cmp r0, #0xff
	beq _0809A624
	adds r4, r0, #0
	bl sub_08002984
	adds r1, r0, #0
	adds r0, r4, #0
	bl sub_080028CC
_0809A624:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809A62C: .4byte gUnk_020229D4

	thumb_func_start sub_0809A630
sub_0809A630: @ 0x0809A630
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0x28
	adds r4, r0, #0
	ldr r1, _0809A6B8 @ =gUnk_08351648
	adds r0, #0x82
	ldrb r3, [r0]
	lsls r0, r3, #1
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r1, #0xc
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r7, #0
	bne _0809A652
	b _0809A798
_0809A652:
	adds r6, r4, #0
	adds r6, #0x10
	ldr r5, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r5, r0
	cmp r5, #0
	beq _0809A664
	b _0809A798
_0809A664:
	ldr r2, _0809A6BC @ =gUnk_02020EE0
	ldr r0, _0809A6C0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	mov r8, r1
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809A770
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0809A6EE
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0809A6CC
	adds r0, r3, #0
	bl sub_0803DD58
	str r0, [r4, #0x10]
	ldr r0, [r6, #8]
	ldr r1, _0809A6C4 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r6, #8]
	ldr r2, _0809A6C8 @ =0x0400000A
	adds r0, r6, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r4, #1]
	mov r0, sp
	bl sub_0815521C
	b _0809A6EE
	.align 2, 0
_0809A6B8: .4byte gUnk_08351648
_0809A6BC: .4byte gUnk_02020EE0
_0809A6C0: .4byte gUnk_0203AD3C
_0809A6C4: .4byte 0xFFF7FFFF
_0809A6C8: .4byte 0x0400000A
_0809A6CC:
	adds r0, r7, #0
	bl sub_081570B0
	str r0, [r4, #0x10]
	ldr r0, [r6, #8]
	ldr r1, _0809A75C @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r6, #8]
	ldr r2, _0809A760 @ =0x0400000A
	adds r0, r6, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r4, #1]
	mov r0, sp
	bl sub_0815521C
_0809A6EE:
	ldrb r0, [r6, #0x1f]
	cmp r0, #0
	bne _0809A798
	ldr r2, _0809A764 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r5, [r0, #8]
	ldr r0, [r4, #0xc]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809A718
	movs r1, #0x97
	lsls r1, r1, #3
	adds r0, r2, r1
	ldrh r5, [r0]
_0809A718:
	adds r0, r5, #0
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _0809A796
	ldr r2, _0809A768 @ =gUnk_02020EE0
	ldr r0, _0809A76C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	mov r2, r8
	ldrh r2, [r2]
	cmp r0, r2
	bne _0809A794
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0xf]
	adds r0, r5, #0
	bl sub_0803DFAC
	adds r0, r5, #0
	bl sub_0803DF24
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	b _0809A796
	.align 2, 0
_0809A75C: .4byte 0xFFF7FFFF
_0809A760: .4byte 0x0400000A
_0809A764: .4byte gUnk_08351648
_0809A768: .4byte gUnk_02020EE0
_0809A76C: .4byte gUnk_0203AD3C
_0809A770:
	ldr r2, [r4, #0x10]
	cmp r2, #0
	beq _0809A78A
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0809A788
	adds r0, r2, #0
	bl sub_08157190
_0809A788:
	str r5, [r4, #0x10]
_0809A78A:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r6, #8]
_0809A794:
	movs r0, #0
_0809A796:
	strb r0, [r6, #0x1f]
_0809A798:
	add sp, #0x28
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809A7A4
sub_0809A7A4: @ 0x0809A7A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0809A7C8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809A7CC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809A7D4
	.align 2, 0
_0809A7C8: .4byte gCurTask
_0809A7CC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809A7D4:
	adds r7, r0, #0
	ldr r2, _0809A808 @ =gUnk_08351648
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	bne _0809A7F0
	b _0809A982
_0809A7F0:
	adds r6, r7, #0
	adds r6, #0x10
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809A810
	ldr r0, [r6, #8]
	ldr r1, _0809A80C @ =0xFFFFFBFF
	ands r0, r1
	b _0809A818
	.align 2, 0
_0809A808: .4byte gUnk_08351648
_0809A80C: .4byte 0xFFFFFBFF
_0809A810:
	ldr r0, [r6, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
_0809A818:
	str r0, [r6, #8]
	ldr r4, [r7, #8]
	movs r0, #8
	ands r4, r0
	cmp r4, #0
	bne _0809A8CC
	adds r5, r7, #0
	adds r5, #0x82
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x14
	adds r0, r0, r2
	adds r3, r7, #0
	adds r3, #0x83
	ldrb r1, [r3]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	mov r8, r1
	strh r1, [r6, #0xc]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r3]
	ldr r0, [r0]
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r6, #0x1a]
	ldrb r1, [r6, #0x1b]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r1, r0
	bne _0809A872
	ldrh r1, [r6, #0x18]
	mov r2, r8
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _0809A882
_0809A872:
	movs r0, #0
	strb r0, [r7, #1]
	strh r4, [r7, #2]
	ldr r0, [r7, #8]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #8]
_0809A882:
	adds r0, r6, #0
	bl sub_08155128
	adds r2, r0, #0
	cmp r2, #0
	bne _0809A8B6
	ldr r0, [r7, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r7, #8]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0809A8CC
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	strb r2, [r7, #1]
	strh r2, [r7, #2]
	ldr r0, [r7, #8]
	subs r1, #9
	ands r0, r1
	str r0, [r7, #8]
	adds r0, r6, #0
	bl sub_08155128
	b _0809A8CC
_0809A8B6:
	ldr r0, [r7, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r7, #8]
	ldrb r1, [r6, #0x1c]
	ldrh r0, [r7, #2]
	adds r0, r0, r1
	strh r0, [r7, #2]
	lsrs r0, r0, #4
	strb r0, [r7, #1]
_0809A8CC:
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0809A982
	ldr r1, _0809A96C @ =gUnk_02020EE0
	ldr r0, _0809A970 @ =gUnk_0203AD3C
	mov sb, r0
	ldrb r3, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809A982
	ldr r2, [r7, #0x40]
	asrs r2, r2, #8
	ldr r4, _0809A974 @ =gUnk_02023530
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r0, r3, #0
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	movs r1, #0x54
	adds r1, r1, r7
	mov r8, r1
	movs r3, #0
	ldrsb r3, [r1, r3]
	adds r3, r3, r2
	movs r2, #0
	mov ip, r2
	strh r3, [r6, #0x10]
	ldr r2, [r7, #0x44]
	asrs r2, r2, #8
	mov r1, sb
	ldrb r0, [r1]
	muls r0, r5, r0
	adds r4, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r4, r7, #0
	adds r4, #0x55
	movs r1, #0
	ldrsb r1, [r4, r1]
	adds r1, r1, r2
	strh r1, [r6, #0x12]
	ldr r2, _0809A978 @ =gUnk_0203AD18
	ldrh r0, [r2]
	adds r3, r3, r0
	strh r3, [r6, #0x10]
	ldrh r0, [r2, #2]
	adds r1, r1, r0
	strh r1, [r6, #0x12]
	mov r2, ip
	strb r2, [r4]
	mov r0, r8
	strb r2, [r0]
	ldr r0, [r7, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0809A97C
	adds r0, r6, #0
	bl sub_081564D8
	b _0809A982
	.align 2, 0
_0809A96C: .4byte gUnk_02020EE0
_0809A970: .4byte gUnk_0203AD3C
_0809A974: .4byte gUnk_02023530
_0809A978: .4byte gUnk_0203AD18
_0809A97C:
	adds r0, r6, #0
	bl sub_0815604C
_0809A982:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809A990
sub_0809A990: @ 0x0809A990
	push {lr}
	ldr r0, _0809A9AC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809A9B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0809A9B8
	.align 2, 0
_0809A9AC: .4byte gCurTask
_0809A9B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0809A9B8:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809AA06
	ldr r1, [r2, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809AA06
	movs r0, #0x20
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #0xc]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0809A9F0
	adds r1, r2, #0
	adds r1, #0x52
	ldr r0, _0809A9EC @ =0x0000FFC0
	strh r0, [r1]
	b _0809AA06
	.align 2, 0
_0809A9EC: .4byte 0x0000FFC0
_0809A9F0:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x15
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _0809AA0C @ =0xFFFFFD00
	cmp r0, r2
	bge _0809AA06
	strh r2, [r1]
_0809AA06:
	pop {r0}
	bx r0
	.align 2, 0
_0809AA0C: .4byte 0xFFFFFD00

	thumb_func_start sub_0809AA10
sub_0809AA10: @ 0x0809AA10
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov sl, r0
	str r1, [sp]
	movs r0, #0x98
	lsls r0, r0, #1
	str r0, [sp, #8]
	adds r0, r1, #0
	adds r0, #0x63
	ldrb r7, [r0]
	movs r1, #0
	str r1, [sp, #4]
	ldr r2, [sp]
	ldr r0, [r2, #0x68]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809AA72
	mov r1, sl
	adds r1, #0x91
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r0, #0
	bgt _0809AA54
	movs r7, #1
_0809AA54:
	mov r0, sl
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x50
	beq _0809AA64
	mov r0, sl
	bl sub_0809E424
_0809AA64:
	lsls r1, r7, #0x18
	asrs r0, r1, #0x18
	ldr r2, [sp, #4]
	cmp r2, r0
	bge _0809AA72
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
_0809AA72:
	ldr r1, [sp]
	ldr r0, [r1, #0x68]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0809AAAE
	mov r1, sl
	adds r1, #0x92
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r0, #0
	bgt _0809AA96
	movs r7, #1
_0809AA96:
	mov r0, sl
	bl sub_0809EB90
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsls r1, r7, #0x18
	cmp r0, r1
	bge _0809AAAE
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	ldr r0, _0809AB14 @ =0x00000131
	str r0, [sp, #8]
_0809AAAE:
	ldr r1, [sp]
	ldr r0, [r1, #0x68]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0809AAEC
	mov r1, sl
	adds r1, #0x93
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r0, #0
	bgt _0809AAD2
	movs r7, #1
_0809AAD2:
	mov r0, sl
	bl sub_0809E79C
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsls r1, r7, #0x18
	cmp r0, r1
	bge _0809AAEC
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	movs r0, #0x98
	lsls r0, r0, #1
	str r0, [sp, #8]
_0809AAEC:
	ldr r2, [sp]
	ldr r1, [r2, #0x68]
	movs r0, #0xa0
	lsls r0, r0, #7
	ands r0, r1
	adds r3, r1, #0
	mov r1, sl
	adds r1, #0x82
	str r1, [sp, #0xc]
	cmp r0, #0
	bne _0809AB04
	b _0809AC16
_0809AB04:
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r3
	cmp r0, #0
	beq _0809AB18
	adds r1, #0x12
	b _0809AB1C
	.align 2, 0
_0809AB14: .4byte 0x00000131
_0809AB18:
	mov r1, sl
	adds r1, #0x96
_0809AB1C:
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r0, r7, #0x18
	cmp r0, #0
	bgt _0809AB30
	movs r7, #1
_0809AB30:
	mov r0, sl
	adds r0, #0x82
	ldrb r1, [r0]
	str r0, [sp, #0xc]
	cmp r1, #0x50
	beq _0809AB88
	ldr r2, _0809ABAC @ =0x000002A3
	mov r0, sl
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0x90
	lsls r1, r1, #2
	strh r1, [r0, #0x20]
	ldr r4, _0809ABB0 @ =gRngVal
	ldr r1, [r4]
	ldr r2, _0809ABB4 @ =0x00196225
	mov sb, r2
	mov r3, sb
	muls r3, r1, r3
	ldr r1, _0809ABB8 @ =0x3C6EF35F
	mov r8, r1
	add r3, r8
	str r3, [r4]
	ldr r2, [r0, #0x34]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r2, r2, r6
	lsrs r1, r3, #0x10
	ldr r5, _0809ABBC @ =0x00000FFF
	ands r1, r5
	subs r2, r2, r1
	str r2, [r0, #0x34]
	mov r1, sb
	muls r1, r3, r1
	add r1, r8
	str r1, [r4]
	ldr r2, [r0, #0x38]
	adds r2, r2, r6
	lsrs r1, r1, #0x10
	ands r1, r5
	subs r2, r2, r1
	str r2, [r0, #0x38]
_0809AB88:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsls r1, r7, #0x18
	ldr r2, [sp]
	ldr r3, [r2, #0x68]
	cmp r0, r1
	bge _0809AC16
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r3
	cmp r0, #0
	beq _0809ABC0
	movs r0, #0xba
	str r0, [sp, #8]
	b _0809AC16
	.align 2, 0
_0809ABAC: .4byte 0x000002A3
_0809ABB0: .4byte gRngVal
_0809ABB4: .4byte 0x00196225
_0809ABB8: .4byte 0x3C6EF35F
_0809ABBC: .4byte 0x00000FFF
_0809ABC0:
	ldr r2, _0809ABEC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809ABF0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809ABF4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0809ABF8
	cmp r1, #1
	blo _0809ABE4
	cmp r1, #2
	beq _0809AC04
	cmp r1, #3
	beq _0809AC10
_0809ABE4:
	movs r2, #0x9a
	lsls r2, r2, #1
	b _0809AC14
	.align 2, 0
_0809ABEC: .4byte gRngVal
_0809ABF0: .4byte 0x00196225
_0809ABF4: .4byte 0x3C6EF35F
_0809ABF8:
	ldr r0, _0809AC00 @ =0x00000135
	str r0, [sp, #8]
	b _0809AC16
	.align 2, 0
_0809AC00: .4byte 0x00000135
_0809AC04:
	ldr r1, _0809AC0C @ =0x0000015F
	str r1, [sp, #8]
	b _0809AC16
	.align 2, 0
_0809AC0C: .4byte 0x0000015F
_0809AC10:
	movs r2, #0xb0
	lsls r2, r2, #1
_0809AC14:
	str r2, [sp, #8]
_0809AC16:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	beq _0809ACB0
	mov r1, sl
	adds r1, #0x95
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r0, #0
	bgt _0809AC36
	movs r7, #1
_0809AC36:
	ldr r1, [sp, #0xc]
	ldrb r0, [r1]
	cmp r0, #0x50
	beq _0809AC8A
	ldr r2, _0809AD6C @ =0x000002A3
	mov r0, sl
	movs r1, #0
	movs r3, #2
	bl sub_0808AE30
	movs r1, #0x90
	lsls r1, r1, #2
	strh r1, [r0, #0x20]
	ldr r4, _0809AD70 @ =gRngVal
	ldr r1, [r4]
	ldr r2, _0809AD74 @ =0x00196225
	mov sb, r2
	mov r3, sb
	muls r3, r1, r3
	ldr r1, _0809AD78 @ =0x3C6EF35F
	mov r8, r1
	add r3, r8
	str r3, [r4]
	ldr r2, [r0, #0x34]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r2, r2, r6
	lsrs r1, r3, #0x10
	ldr r5, _0809AD7C @ =0x00000FFF
	ands r1, r5
	subs r2, r2, r1
	str r2, [r0, #0x34]
	mov r1, sb
	muls r1, r3, r1
	add r1, r8
	str r1, [r4]
	ldr r2, [r0, #0x38]
	adds r2, r2, r6
	lsrs r1, r1, #0x10
	ands r1, r5
	subs r2, r2, r1
	str r2, [r0, #0x38]
_0809AC8A:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsls r1, r7, #0x18
	cmp r0, r1
	bge _0809ACB0
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	ldr r1, [sp]
	ldr r0, [r1, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x12
	ands r0, r1
	movs r2, #0x99
	lsls r2, r2, #1
	str r2, [sp, #8]
	cmp r0, #0
	beq _0809ACB0
	ldr r0, _0809AD80 @ =0x00000133
	str r0, [sp, #8]
_0809ACB0:
	ldr r1, [sp]
	ldr r2, [r1, #0x68]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	bne _0809ACBE
	b _0809ADBC
_0809ACBE:
	mov r1, sl
	adds r1, #0x94
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r0, #0
	bgt _0809ACD4
	movs r7, #1
_0809ACD4:
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r2, r0
	cmp r2, #0
	beq _0809ADA2
	ldr r2, [sp, #0xc]
	ldrb r0, [r2]
	cmp r0, #0x50
	beq _0809AD32
	ldr r2, _0809AD6C @ =0x000002A3
	mov r0, sl
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0x90
	lsls r1, r1, #2
	strh r1, [r0, #0x20]
	ldr r4, _0809AD70 @ =gRngVal
	ldr r1, [r4]
	ldr r2, _0809AD74 @ =0x00196225
	mov sb, r2
	mov r3, sb
	muls r3, r1, r3
	ldr r1, _0809AD78 @ =0x3C6EF35F
	mov r8, r1
	add r3, r8
	str r3, [r4]
	ldr r2, [r0, #0x34]
	movs r6, #0x80
	lsls r6, r6, #4
	adds r2, r2, r6
	lsrs r1, r3, #0x10
	ldr r5, _0809AD7C @ =0x00000FFF
	ands r1, r5
	subs r2, r2, r1
	str r2, [r0, #0x34]
	mov r1, sb
	muls r1, r3, r1
	add r1, r8
	str r1, [r4]
	ldr r2, [r0, #0x38]
	adds r2, r2, r6
	lsrs r1, r1, #0x10
	ands r1, r5
	subs r2, r2, r1
	str r2, [r0, #0x38]
_0809AD32:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsls r1, r7, #0x18
	cmp r0, r1
	bge _0809ADBC
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	ldr r2, _0809AD70 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809AD74 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809AD78 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _0809AD84
	cmp r1, #1
	blo _0809AD64
	cmp r1, #2
	beq _0809AD90
	cmp r1, #3
	beq _0809AD9C
_0809AD64:
	movs r2, #0x9a
	lsls r2, r2, #1
	b _0809ADBA
	.align 2, 0
_0809AD6C: .4byte 0x000002A3
_0809AD70: .4byte gRngVal
_0809AD74: .4byte 0x00196225
_0809AD78: .4byte 0x3C6EF35F
_0809AD7C: .4byte 0x00000FFF
_0809AD80: .4byte 0x00000133
_0809AD84:
	ldr r0, _0809AD8C @ =0x00000135
	str r0, [sp, #8]
	b _0809ADBC
	.align 2, 0
_0809AD8C: .4byte 0x00000135
_0809AD90:
	ldr r1, _0809AD98 @ =0x0000015F
	str r1, [sp, #8]
	b _0809ADBC
	.align 2, 0
_0809AD98: .4byte 0x0000015F
_0809AD9C:
	movs r2, #0xb0
	lsls r2, r2, #1
	b _0809ADBA
_0809ADA2:
	mov r0, sl
	bl sub_0808925C
	ldr r1, [sp, #4]
	lsls r0, r1, #0x18
	lsls r1, r7, #0x18
	cmp r0, r1
	bge _0809ADBC
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
	movs r2, #0x98
	lsls r2, r2, #1
_0809ADBA:
	str r2, [sp, #8]
_0809ADBC:
	ldr r1, [sp]
	ldr r0, [r1, #0x68]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0809ADE0
	mov r1, sl
	adds r1, #0x97
	lsls r0, r7, #0x18
	asrs r0, r0, #0x18
	ldrb r1, [r1]
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r0, #0
	bgt _0809ADE0
	movs r7, #1
_0809ADE0:
	ldr r2, [sp]
	ldr r0, [r2, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x14
	ands r0, r1
	cmp r0, #0
	beq _0809ADFA
	ldr r1, _0809AE4C @ =gUnk_08352DF0
	mov r0, sl
	bl sub_080860A8
	movs r0, #0x92
	str r0, [sp, #8]
_0809ADFA:
	ldr r2, [sp, #0xc]
	ldrb r1, [r2]
	adds r0, r1, #0
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _0809AE0E
	ldr r0, _0809AE50 @ =0x00000169
	str r0, [sp, #8]
_0809AE0E:
	cmp r1, #0x4b
	beq _0809AE1E
	adds r0, r1, #0
	adds r0, #0x44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0809AE6E
_0809AE1E:
	mov r0, sl
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	ldr r0, [sp]
	ldr r1, [r0, #0x68]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r1, r0
	cmp r1, #0
	beq _0809AE3A
	ldrb r0, [r2]
	cmp r0, #0x4b
	beq _0809AE54
_0809AE3A:
	movs r2, #0
	str r2, [sp, #4]
	movs r7, #0
	cmp r1, #0
	bne _0809AE6E
	movs r0, #0xd0
	lsls r0, r0, #1
	str r0, [sp, #8]
	b _0809AE6E
	.align 2, 0
_0809AE4C: .4byte gUnk_08352DF0
_0809AE50: .4byte 0x00000169
_0809AE54:
	ldr r2, _0809AF1C @ =gUnk_08351648
	ldr r0, [sp, #0xc]
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r1, sl
	adds r1, #0x83
	strb r0, [r1]
	ldr r1, _0809AF20 @ =0x0000018F
	str r1, [sp, #8]
_0809AE6E:
	ldr r2, [sp, #4]
	lsls r0, r2, #0x18
	lsls r1, r7, #0x18
	cmp r0, r1
	bge _0809AE7C
	lsrs r1, r1, #0x18
	str r1, [sp, #4]
_0809AE7C:
	ldr r1, _0809AF24 @ =gUnk_02020EE0
	ldr r0, _0809AF28 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldr r1, [sp]
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809AEE6
	ldr r1, [sp]
	ldrb r0, [r1]
	cmp r0, #0
	bne _0809AEAA
	adds r0, r1, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809AEE6
_0809AEAA:
	ldr r2, _0809AF2C @ =gUnk_08D60FA4
	ldr r1, _0809AF30 @ =gSongTable
	ldr r0, [sp, #8]
	lsls r4, r0, #0x10
	lsrs r0, r4, #0xd
	adds r1, r0, r1
	ldrh r3, [r1, #4]
	lsls r0, r3, #2
	adds r0, r0, r2
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809AECE
	ldr r1, [r1]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809AEE6
_0809AECE:
	cmp r3, #0
	beq _0809AEE0
	ldr r0, _0809AF34 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809AEE6
_0809AEE0:
	lsrs r0, r4, #0x10
	bl m4aSongNumStart
_0809AEE6:
	mov r2, sl
	adds r2, #0x80
	ldr r0, [sp, #4]
	lsls r1, r0, #0x18
	asrs r1, r1, #0x18
	ldrh r0, [r2]
	subs r0, r0, r1
	strh r0, [r2]
	ldr r1, [sp]
	ldr r0, [r1, #0x68]
	movs r1, #0x80
	lsls r1, r1, #9
	ands r0, r1
	cmp r0, #0
	beq _0809AF0A
	mov r0, sl
	bl sub_080884C4
_0809AF0A:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809AF1C: .4byte gUnk_08351648
_0809AF20: .4byte 0x0000018F
_0809AF24: .4byte gUnk_02020EE0
_0809AF28: .4byte gUnk_0203AD3C
_0809AF2C: .4byte gUnk_08D60FA4
_0809AF30: .4byte gSongTable
_0809AF34: .4byte gUnk_0203AD10

	thumb_func_start sub_0809AF38
sub_0809AF38: @ 0x0809AF38
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r7, #0
	bl sub_0809AA10
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r0, [r0]
	adds r1, r0, #0
	cmp r1, #0x4b
	beq _0809AF6E
	adds r0, #0x44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0809AF6E
	cmp r1, #0xd0
	beq _0809AF6E
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0809AF70
_0809AF6E:
	movs r7, #1
_0809AF70:
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r8, r0
	cmp r1, #0
	bgt _0809AFCC
	ldr r1, [r4, #0x78]
	ldr r0, _0809AFB8 @ =sub_0809D1E0
	cmp r1, r0
	beq _0809AFCC
	ldr r0, [r4, #0x68]
	movs r1, #7
	ands r0, r1
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0x5c]
	cmp r7, #0
	bne _0809AFCC
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809AFCC
	ldr r0, [r4, #0x70]
	cmp r0, #0
	bne _0809AFBC
	adds r0, r4, #0
	bl sub_08086C48
	b _0809AFCC
	.align 2, 0
_0809AFB8: .4byte sub_0809D1E0
_0809AFBC:
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0809AFCC
	adds r0, r4, #0
	bl sub_08086C48
_0809AFCC:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x46
	beq _0809B01E
	cmp r1, #0x4e
	beq _0809B01E
	cmp r1, #0x50
	beq _0809B01E
	cmp r7, #0
	beq _0809AFF0
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0809B01E
_0809AFF0:
	ldr r2, _0809B0E0 @ =0x000002A3
	adds r0, r4, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808BA6C
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0809B01E
	ldr r1, _0809B0E4 @ =gUnk_08D61048
	ldrb r0, [r6]
	subs r0, #0x38
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0809B01E
	adds r0, r4, #0
	bl sub_08088398
_0809B01E:
	mov r2, r8
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0809B02A
	b _0809B18E
_0809B02A:
	ldrb r0, [r6]
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _0809B124
	cmp r7, #0
	bne _0809B0A6
	ldr r1, _0809B0E8 @ =gUnk_02020EE0
	ldr r0, _0809B0EC @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809B0A6
	ldrb r0, [r4]
	cmp r0, #0
	bne _0809B066
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809B0A6
_0809B066:
	ldr r1, _0809B0F0 @ =gUnk_08D60FA4
	ldr r5, _0809B0F4 @ =gSongTable
	ldr r2, _0809B0F8 @ =0x00000BE4
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809B08C
	movs r1, #0xbe
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809B0A6
_0809B08C:
	cmp r3, #0
	beq _0809B09E
	ldr r0, _0809B0FC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809B0A6
_0809B09E:
	movs r0, #0xbe
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809B0A6:
	ldrb r0, [r6]
	cmp r0, #0x46
	beq _0809B0C8
	cmp r0, #0x4b
	beq _0809B0C8
	cmp r0, #0x4c
	beq _0809B0C8
	cmp r0, #0x4a
	beq _0809B0C8
	cmp r0, #0x48
	beq _0809B0C8
	cmp r0, #0x4d
	bhi _0809B0C8
	cmp r0, #0x4f
	bhi _0809B0C8
	cmp r0, #0x49
	bne _0809B104
_0809B0C8:
	ldr r2, _0809B100 @ =gUnk_08351648
	ldrb r1, [r6]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _0809B112
	.align 2, 0
_0809B0E0: .4byte 0x000002A3
_0809B0E4: .4byte gUnk_08D61048
_0809B0E8: .4byte gUnk_02020EE0
_0809B0EC: .4byte gUnk_0203AD3C
_0809B0F0: .4byte gUnk_08D60FA4
_0809B0F4: .4byte gSongTable
_0809B0F8: .4byte 0x00000BE4
_0809B0FC: .4byte gUnk_0203AD10
_0809B100: .4byte gUnk_08351648
_0809B104:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _0809B120 @ =sub_0809F974
	str r0, [r4, #0x78]
_0809B112:
	cmp r7, #0
	bne _0809B1D8
	adds r0, r4, #0
	bl sub_08088528
	b _0809B1D8
	.align 2, 0
_0809B120: .4byte sub_0809F974
_0809B124:
	ldr r1, [r4, #0x78]
	ldr r0, _0809B154 @ =sub_0809D1E0
	cmp r1, r0
	beq _0809B17C
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0809B158
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	b _0809B1D8
	.align 2, 0
_0809B154: .4byte sub_0809D1E0
_0809B158:
	ldr r1, [r5, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _0809B16A
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	b _0809B172
_0809B16A:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
_0809B172:
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_0809D060
	b _0809B1D8
_0809B17C:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0808520C
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0808845C
	b _0809B1D8
_0809B18E:
	ldr r0, [r4, #0xc]
	movs r1, #0x20
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0809B1D8
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_0808520C
	adds r0, r4, #0
	movs r1, #0x10
	bl sub_0808845C
	cmp r7, #0
	bne _0809B1D8
	ldrb r0, [r6]
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bhi _0809B1D0
	movs r0, #3
	adds r1, r4, #0
	bl sub_0806FE64
	b _0809B1D8
_0809B1D0:
	movs r0, #1
	adds r1, r4, #0
	bl sub_0806FE64
_0809B1D8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809B1E4
sub_0809B1E4: @ 0x0809B1E4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	movs r7, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _0809B202
	b _0809B68E
_0809B202:
	ldr r6, [r4, #0x6c]
	ldr r1, [r6, #0x70]
	cmp r1, #0
	beq _0809B212
	ldrb r0, [r1]
	cmp r0, #0
	bne _0809B212
	adds r7, r1, #0
_0809B212:
	cmp r7, #0
	beq _0809B222
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x86
	strb r0, [r1]
_0809B222:
	ldr r0, [r4, #0xc]
	movs r1, #2
	ands r0, r1
	movs r1, #0x82
	adds r1, r1, r4
	mov r8, r1
	cmp r0, #0
	beq _0809B234
	b _0809B332
_0809B234:
	adds r0, r6, #0
	adds r0, #0x64
	ldrh r2, [r0]
	adds r0, #2
	ldrh r5, [r0]
	ldr r3, [r6, #0x70]
	ldrb r0, [r1]
	cmp r0, #0x4b
	beq _0809B250
	adds r0, #0x44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0809B2D8
_0809B250:
	lsls r0, r2, #0x10
	asrs r1, r0, #0x10
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809B298
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0809B27C @ =0xFFFFFE60
	cmp r1, r0
	ble _0809B284
	ldr r2, _0809B280 @ =0x0000FE60
	b _0809B2C6
	.align 2, 0
_0809B27C: .4byte 0xFFFFFE60
_0809B280: .4byte 0x0000FE60
_0809B284:
	ldr r0, _0809B290 @ =0xFFFFFCE0
	cmp r1, r0
	bge _0809B2C6
	ldr r2, _0809B294 @ =0x0000FCE0
	b _0809B2C6
	.align 2, 0
_0809B290: .4byte 0xFFFFFCE0
_0809B294: .4byte 0x0000FCE0
_0809B298:
	adds r0, r6, #0
	adds r0, #0x63
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	adds r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0809B2B8 @ =0x0000019F
	cmp r1, r0
	bgt _0809B2BC
	movs r2, #0xd0
	lsls r2, r2, #1
	b _0809B2C6
	.align 2, 0
_0809B2B8: .4byte 0x0000019F
_0809B2BC:
	movs r0, #0xc8
	lsls r0, r0, #2
	cmp r1, r0
	ble _0809B2C6
	adds r2, r0, #0
_0809B2C6:
	lsls r0, r5, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc0
	ble _0809B2D0
	movs r5, #0xc0
_0809B2D0:
	lsls r0, r5, #0x10
	cmp r0, #0
	bge _0809B2D8
	movs r5, #0
_0809B2D8:
	cmp r3, #0
	beq _0809B2F4
	ldr r1, [r3, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	bgt _0809B2FC
	cmp r1, r0
	blt _0809B30C
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809B2FC
	b _0809B30C
_0809B2F4:
	ldr r1, [r6, #0x40]
	ldr r0, [r4, #0x40]
	cmp r1, r0
	ble _0809B30C
_0809B2FC:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	adds r1, r4, #0
	adds r1, #0x98
	strh r0, [r1]
	adds r3, r1, #0
	b _0809B314
_0809B30C:
	adds r0, r4, #0
	adds r0, #0x98
	strh r2, [r0]
	adds r3, r0, #0
_0809B314:
	adds r0, r4, #0
	adds r0, #0x9a
	strh r5, [r0]
	cmp r7, #0
	beq _0809B332
	ldr r0, [r6, #0x68]
	cmp r0, #0
	bge _0809B332
	ldrh r0, [r3]
	adds r2, r7, #0
	adds r2, #0xe6
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0xe8
	str r4, [r0]
_0809B332:
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r1, #0
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bls _0809B35E
	adds r0, r1, #0
	adds r0, #0x44
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0809B35E
	cmp r1, #0xd0
	beq _0809B35E
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0809B368
_0809B35E:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0809AF38
	b _0809B68E
_0809B368:
	adds r0, r4, #0
	adds r1, r6, #0
	bl sub_0809AA10
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0x36
	bne _0809B37E
	adds r0, r4, #0
	bl sub_08024E20
_0809B37E:
	adds r0, r4, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	mov r3, r8
	ldrb r2, [r3]
	mov sb, r0
	cmp r1, #0
	ble _0809B39A
	adds r3, r4, #0
	adds r3, #0x98
	cmp r2, #0x34
	beq _0809B39A
	b _0809B4A8
_0809B39A:
	cmp r2, #0x34
	bne _0809B3A4
	adds r0, r4, #0
	bl sub_080B11C0
_0809B3A4:
	ldr r0, [r6, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x11
	ands r0, r1
	adds r3, r4, #0
	adds r3, #0x98
	cmp r0, #0
	bne _0809B472
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldrh r0, [r3]
	lsls r0, r0, #1
	strh r0, [r3]
	adds r1, r4, #0
	adds r1, #0x9a
	ldrh r0, [r1]
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r2
	adds r5, r1, #0
	cmp r0, #0
	bne _0809B3E6
	movs r0, #0x80
	lsls r0, r0, #1
	orrs r2, r0
	movs r0, #0x20
	orrs r2, r0
	str r2, [r4, #8]
_0809B3E6:
	ldr r0, [r4, #0xc]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x62
	movs r0, #0
	strb r0, [r1]
	movs r0, #0
	ldrsh r1, [r5, r0]
	cmp r1, #0
	bge _0809B400
	rsbs r1, r1, #0
_0809B400:
	movs r2, #0
	ldrsh r0, [r3, r2]
	cmp r0, #0
	bge _0809B40A
	rsbs r0, r0, #0
_0809B40A:
	adds r0, r1, r0
	lsls r0, r0, #0x10
	asrs r1, r0, #0x10
	ldr r0, _0809B438 @ =0x0000037F
	cmp r1, r0
	bgt _0809B44E
	movs r2, #0xe0
	lsls r2, r2, #2
	adds r0, r2, #0
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	ldrh r0, [r3]
	mov sl, r0
	movs r0, #0
	ldrsh r2, [r3, r0]
	cmp r2, #0
	ble _0809B43C
	lsls r1, r1, #0x10
	asrs r0, r1, #0x11
	add r0, sl
	b _0809B444
	.align 2, 0
_0809B438: .4byte 0x0000037F
_0809B43C:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x11
	mov r2, sl
	subs r0, r2, r0
_0809B444:
	strh r0, [r3]
	asrs r0, r1, #0x11
	ldrh r1, [r5]
	adds r0, r0, r1
	strh r0, [r5]
_0809B44E:
	ldrh r1, [r5]
	ldr r0, _0809B4A4 @ =0x000001FF
	cmp r1, r0
	bhi _0809B45A
	adds r0, #1
	strh r0, [r5]
_0809B45A:
	cmp r7, #0
	beq _0809B472
	ldr r0, [r6, #0x68]
	cmp r0, #0
	bge _0809B472
	adds r1, r7, #0
	adds r1, #0xe6
	movs r0, #0
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0xe8
	str r4, [r0]
_0809B472:
	ldr r0, [r6, #0x68]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _0809B4A8
	movs r1, #0
	strh r1, [r3]
	adds r0, r4, #0
	adds r0, #0x9a
	strh r1, [r0]
	cmp r7, #0
	bne _0809B492
	b _0809B592
_0809B492:
	ldr r0, [r6, #0x68]
	cmp r0, #0
	blt _0809B49A
	b _0809B592
_0809B49A:
	adds r0, r7, #0
	adds r0, #0xe6
	strh r1, [r0]
	b _0809B58E
	.align 2, 0
_0809B4A4: .4byte 0x000001FF
_0809B4A8:
	ldr r0, [r3]
	cmp r0, #0
	beq _0809B4DA
	movs r2, #0
	ldrsh r1, [r3, r2]
	movs r0, #0x80
	lsls r0, r0, #4
	cmp r1, r0
	bgt _0809B4C0
	ldr r0, _0809B504 @ =0xFFFFF800
	cmp r1, r0
	bge _0809B4C2
_0809B4C0:
	strh r0, [r3]
_0809B4C2:
	adds r0, r4, #0
	adds r0, #0x9a
	movs r1, #0
	ldrsh r2, [r0, r1]
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r2, r1
	bgt _0809B4D8
	ldr r1, _0809B504 @ =0xFFFFF800
	cmp r2, r1
	bge _0809B4DA
_0809B4D8:
	strh r1, [r0]
_0809B4DA:
	ldr r2, _0809B508 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809B50C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809B510 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809B518
	ldr r2, _0809B514 @ =gUnk_08351648
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	b _0809B528
	.align 2, 0
_0809B504: .4byte 0xFFFFF800
_0809B508: .4byte gRngVal
_0809B50C: .4byte 0x00196225
_0809B510: .4byte 0x3C6EF35F
_0809B514: .4byte gUnk_08351648
_0809B518:
	ldr r2, _0809B540 @ =gUnk_08351648
	mov r0, r8
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
_0809B528:
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r1, r0
	cmp r1, #0
	bne _0809B544
	strh r1, [r4, #4]
	b _0809B550
	.align 2, 0
_0809B540: .4byte gUnk_08351648
_0809B544:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #8
	ble _0809B550
	movs r0, #8
	strh r0, [r4, #4]
_0809B550:
	adds r0, r4, #0
	adds r0, #0x9e
	movs r5, #0
	strb r5, [r0]
	ldr r2, [r4, #0xc]
	movs r0, #2
	ands r2, r0
	cmp r2, #0
	beq _0809B5B8
	mov r2, sb
	strh r5, [r2]
	ldr r0, [r6, #0x68]
	movs r1, #0xc0
	lsls r1, r1, #2
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	bne _0809B59A
	strh r5, [r3]
	adds r0, r4, #0
	adds r0, #0x9a
	strh r5, [r0]
	cmp r7, #0
	beq _0809B592
	ldr r0, [r6, #0x68]
	cmp r0, #0
	bge _0809B592
	adds r0, r7, #0
	adds r0, #0xe6
	strh r5, [r0]
_0809B58E:
	adds r0, #2
	str r4, [r0]
_0809B592:
	adds r0, r4, #0
	bl sub_0809D5D0
	b _0809B68E
_0809B59A:
	ldr r0, [r4, #8]
	movs r1, #0xb0
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	strh r5, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x2c
	movs r0, #0
	strb r0, [r1]
	ldr r0, _0809B5B4 @ =sub_0809F88C
	b _0809B68C
	.align 2, 0
_0809B5B4: .4byte sub_0809F88C
_0809B5B8:
	ldr r1, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0809B5E6
	movs r0, #0x82
	lsls r0, r0, #4
	orrs r1, r0
	movs r0, #9
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r4, #0
	adds r1, #0x88
	ldr r0, [r6, #0x68]
	str r0, [r1]
	b _0809B5EC
_0809B5E6:
	adds r0, r4, #0
	adds r0, #0x88
	str r2, [r0]
_0809B5EC:
	ldr r2, [r4, #8]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r2, r0
	str r2, [r4, #8]
	ldr r1, [r4, #0xc]
	movs r0, #0x20
	orrs r1, r0
	movs r0, #0x40
	orrs r1, r0
	str r1, [r4, #0xc]
	mov r3, r8
	ldrb r0, [r3]
	cmp r0, #0x31
	beq _0809B64A
	cmp r0, #0x31
	bgt _0809B618
	cmp r0, #0x10
	beq _0809B652
	cmp r0, #0x26
	beq _0809B64A
	b _0809B668
_0809B618:
	cmp r0, #0x34
	beq _0809B62C
	cmp r0, #0x34
	bgt _0809B626
	cmp r0, #0x33
	beq _0809B636
	b _0809B668
_0809B626:
	cmp r0, #0x9f
	beq _0809B65A
	b _0809B668
_0809B62C:
	movs r0, #0x82
	lsls r0, r0, #8
	orrs r2, r0
	str r2, [r4, #8]
	b _0809B652
_0809B636:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0809B668
	b _0809B662
_0809B64A:
	movs r0, #0
	mov r3, sb
	strh r0, [r3]
	b _0809B668
_0809B652:
	movs r0, #0
	mov r1, sb
	strh r0, [r1]
	b _0809B668
_0809B65A:
	movs r0, #2
	ands r1, r0
	cmp r1, #0
	beq _0809B668
_0809B662:
	movs r0, #0
	mov r2, sb
	strh r0, [r2]
_0809B668:
	ldr r2, _0809B69C @ =gUnk_02020EE0
	ldr r0, _0809B6A0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809B68A
	adds r0, r4, #0
	bl sub_080857A0
_0809B68A:
	ldr r0, _0809B6A4 @ =sub_0809B6A8
_0809B68C:
	str r0, [r4, #0x78]
_0809B68E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B69C: .4byte gUnk_02020EE0
_0809B6A0: .4byte gUnk_0203AD3C
_0809B6A4: .4byte sub_0809B6A8

	thumb_func_start sub_0809B6A8
sub_0809B6A8: @ 0x0809B6A8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x37
	beq _0809B6B6
	b _0809B85E
_0809B6B6:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809B748
	adds r5, r3, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r7, _0809B700 @ =0xFFFFF800
	adds r0, r0, r7
	cmp r1, r0
	blt _0809B704
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	b _0809B7C8
	.align 2, 0
_0809B700: .4byte 0xFFFFF800
_0809B704:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	adds r2, r3, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _0809B7CC
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _0809B744 @ =0xFFFFF800
	adds r0, r0, r4
	b _0809B7C8
	.align 2, 0
_0809B744: .4byte 0xFFFFF800
_0809B748:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _0809B78C
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _0809B788 @ =0xFFFFF800
	adds r0, r0, r4
	b _0809B7C8
	.align 2, 0
_0809B788: .4byte 0xFFFFF800
_0809B78C:
	movs r7, #0x3e
	adds r7, r7, r3
	mov ip, r7
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	ldr r7, _0809B810 @ =0xFFFFF800
	adds r0, r0, r7
	adds r2, r3, #0
	adds r2, #0x62
	cmp r1, r0
	blt _0809B7CC
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	mov r4, ip
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_0809B7C8:
	subs r1, r1, r0
	str r1, [r3, #0x40]
_0809B7CC:
	adds r5, r3, #0
	adds r5, #0x3f
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r4, [r3, #0x44]
	adds r1, r4, r1
	movs r6, #0xaa
	adds r6, r6, r3
	mov ip, r6
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	ldr r6, _0809B810 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _0809B814
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	mov r7, ip
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	subs r1, r1, r0
	str r1, [r3, #0x44]
	b _0809B83A
	.align 2, 0
_0809B810: .4byte 0xFFFFF800
_0809B814:
	adds r0, r3, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r4, r1
	adds r0, #0x69
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _0809B83A
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_0809B83A:
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0809B84C
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_0809B84C:
	ldrb r1, [r2]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0809B85E
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_0809B85E:
	adds r0, r3, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0809B876
	movs r0, #0
	str r0, [r3, #0x68]
	ldr r0, [r3, #0x5c]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r3, #0x5c]
_0809B876:
	ldr r0, [r3, #0x68]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #0x68]
	ldr r1, [r3, #0x5c]
	movs r0, #0x80
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _0809B896
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #7
	orrs r0, r1
	b _0809B89C
_0809B896:
	ldr r0, [r3, #0xc]
	ldr r1, _0809B914 @ =0xFFFFBFFF
	ands r0, r1
_0809B89C:
	str r0, [r3, #0xc]
	movs r0, #0x80
	orrs r0, r2
	str r0, [r3, #0x5c]
	adds r2, r3, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	cmp r0, #7
	bhi _0809B8C0
	ldr r1, _0809B918 @ =gUnk_08352DD0
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0809B8C0:
	movs r2, #4
	ldrsh r0, [r3, r2]
	ldrh r1, [r3, #4]
	cmp r0, #0xa
	ble _0809B92E
	ldr r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0809B8DC
	ldr r0, _0809B91C @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r3, #8]
_0809B8DC:
	adds r1, r3, #0
	adds r1, #0x55
	movs r0, #0
	strb r0, [r1]
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x52
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r0, #0
	beq _0809B8FA
	ldr r0, [r3, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r3, #8]
_0809B8FA:
	adds r0, r3, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0809B928
	ldr r0, [r3, #8]
	ldr r1, _0809B920 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r0, _0809B924 @ =sub_0809BBB0
	b _0809B92A
	.align 2, 0
_0809B914: .4byte 0xFFFFBFFF
_0809B918: .4byte gUnk_08352DD0
_0809B91C: .4byte 0xFFFFF7FF
_0809B920: .4byte 0xFFFFFEFF
_0809B924: .4byte sub_0809BBB0
_0809B928:
	ldr r0, _0809B938 @ =sub_0809B93C
_0809B92A:
	str r0, [r3, #0x78]
	ldrh r1, [r3, #4]
_0809B92E:
	adds r0, r1, #1
	strh r0, [r3, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809B938: .4byte sub_0809B93C

	thumb_func_start sub_0809B93C
sub_0809B93C: @ 0x0809B93C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x37
	beq _0809B94A
	b _0809BAF2
_0809B94A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809B9DC
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r7, _0809B994 @ =0xFFFFF800
	adds r0, r0, r7
	cmp r1, r0
	blt _0809B998
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	b _0809BA5C
	.align 2, 0
_0809B994: .4byte 0xFFFFF800
_0809B998:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _0809BA60
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _0809B9D8 @ =0xFFFFF800
	adds r0, r0, r3
	b _0809BA5C
	.align 2, 0
_0809B9D8: .4byte 0xFFFFF800
_0809B9DC:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _0809BA20
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r7, #0
	ldrsh r1, [r3, r7]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _0809BA1C @ =0xFFFFF800
	adds r0, r0, r3
	b _0809BA5C
	.align 2, 0
_0809BA1C: .4byte 0xFFFFF800
_0809BA20:
	movs r7, #0x3e
	adds r7, r7, r4
	mov ip, r7
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r7, _0809BAA4 @ =0xFFFFF800
	adds r0, r0, r7
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	blt _0809BA60
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_0809BA5C:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_0809BA60:
	adds r5, r4, #0
	adds r5, #0x3f
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r4, #0x44]
	adds r1, r3, r1
	movs r6, #0xaa
	adds r6, r6, r4
	mov ip, r6
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	ldr r6, _0809BAA4 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _0809BAA8
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	mov r7, ip
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x44]
	b _0809BACE
	.align 2, 0
_0809BAA4: .4byte 0xFFFFF800
_0809BAA8:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r0, #0x69
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _0809BACE
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_0809BACE:
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0809BAE0
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_0809BAE0:
	ldrb r1, [r2]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0809BAF2
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_0809BAF2:
	ldrh r3, [r4, #4]
	movs r0, #4
	ldrsh r2, [r4, r0]
	cmp r2, #0xa
	bne _0809BB04
	ldr r0, [r4, #8]
	ldr r1, _0809BB48 @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #8]
_0809BB04:
	cmp r2, #0x12
	ble _0809BBA4
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0809BB50
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _0809BB4C @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	bl sub_0809F6BC
	b _0809BBA8
	.align 2, 0
_0809BB48: .4byte 0xFEFFFFFF
_0809BB4C: .4byte gUnk_08351648
_0809BB50:
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _0809BB6E
	ldr r0, [r4, #0x5c]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x5c]
_0809BB6E:
	ldr r0, _0809BB98 @ =0xFFFFBFFF
	ands r2, r0
	str r2, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, _0809BB9C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0809BBA0 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _0809BBA8
	.align 2, 0
_0809BB98: .4byte 0xFFFFBFFF
_0809BB9C: .4byte 0xFEFFFFFF
_0809BBA0: .4byte gUnk_08351648
_0809BBA4:
	adds r0, r3, #1
	strh r0, [r4, #4]
_0809BBA8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809BBB0
sub_0809BBB0: @ 0x0809BBB0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x36
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0809BBC4
	b _0809BD72
_0809BBC4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809BC58
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r6, _0809BC10 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _0809BC14
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	b _0809BCD4
	.align 2, 0
_0809BC10: .4byte 0xFFFFF800
_0809BC14:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _0809BCD8
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r6, #0
	ldrsh r1, [r3, r6]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _0809BC54 @ =0xFFFFF800
	adds r0, r0, r3
	b _0809BCD4
	.align 2, 0
_0809BC54: .4byte 0xFFFFF800
_0809BC58:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _0809BC9C
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _0809BC98 @ =0xFFFFF800
	adds r0, r0, r3
	b _0809BCD4
	.align 2, 0
_0809BC98: .4byte 0xFFFFF800
_0809BC9C:
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r2, _0809BD20 @ =0xFFFFF800
	adds r0, r0, r2
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	blt _0809BCD8
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_0809BCD4:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_0809BCD8:
	movs r1, #0x3f
	adds r1, r1, r4
	mov ip, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #8
	ldr r3, [r4, #0x44]
	adds r1, r3, r1
	adds r5, r4, #0
	adds r5, #0xaa
	movs r6, #0
	ldrsh r0, [r5, r6]
	lsls r0, r0, #8
	ldr r6, _0809BD20 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _0809BD24
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r5, r0]
	lsls r1, r1, #8
	mov r2, ip
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	subs r1, r1, r0
	str r1, [r4, #0x44]
	b _0809BD4A
	.align 2, 0
_0809BD20: .4byte 0xFFFFF800
_0809BD24:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r0, #0x69
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	cmp r1, r0
	bgt _0809BD4A
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_0809BD4A:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0809BD60
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_0809BD60:
	ldrb r1, [r2]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0809BD72
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_0809BD72:
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r6, #0
	ldrsh r1, [r0, r6]
	adds r5, r0, #0
	cmp r1, #0
	bge _0809BD8E
	adds r0, r2, #6
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0809BD9C
	b _0809BD98
_0809BD8E:
	subs r0, r2, #6
	strh r0, [r5]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809BD9C
_0809BD98:
	movs r0, #0
	strh r0, [r5]
_0809BD9C:
	ldr r1, [r4, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r4, #8]
	ldrh r2, [r4, #4]
	movs r3, #4
	ldrsh r0, [r4, r3]
	cmp r0, #0xa
	bne _0809BDB6
	ldr r0, _0809BE0C @ =0xFEFFFFFF
	ands r1, r0
	str r1, [r4, #8]
_0809BDB6:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #0xb
	ands r0, r1
	cmp r0, #0
	beq _0809BE18
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r0, [r4, #8]
	ldr r1, _0809BE0C @ =0xFEFFFFFF
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x52
	strh r0, [r1]
	strh r0, [r4, #4]
	ldr r0, _0809BE10 @ =sub_0809C180
	str r0, [r4, #0x78]
	ldr r0, [r4, #8]
	ldr r1, _0809BE14 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x82
	ldrb r0, [r3]
	subs r0, #0x36
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0809BEF0
	adds r0, r4, #0
	adds r0, #0x80
	movs r6, #0
	ldrsh r0, [r0, r6]
	cmp r0, #0
	ble _0809BE74
	b _0809BE98
	.align 2, 0
_0809BE0C: .4byte 0xFEFFFFFF
_0809BE10: .4byte sub_0809C180
_0809BE14: .4byte 0xFFFF7FFF
_0809BE18:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0809BEEC
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0809BE40
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
_0809BE40:
	ldr r0, _0809BE8C @ =sub_0809BEF8
	str r0, [r4, #0x78]
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	ldr r0, [r4, #8]
	ldr r1, _0809BE90 @ =0xFEFFFFFF
	ands r0, r1
	ldr r1, _0809BE94 @ =0xFFFF7FFF
	ands r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x82
	ldrb r0, [r3]
	subs r0, #0x36
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0809BEF0
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0809BE98
_0809BE74:
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809F6BC
	b _0809BEF0
	.align 2, 0
_0809BE8C: .4byte sub_0809BEF8
_0809BE90: .4byte 0xFEFFFFFF
_0809BE94: .4byte 0xFFFF7FFF
_0809BE98:
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r1, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _0809BEB8
	ldr r0, [r4, #0x5c]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x5c]
_0809BEB8:
	ldr r0, _0809BEE0 @ =0xFFFFBFFF
	ands r0, r2
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, _0809BEE4 @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0809BEE8 @ =gUnk_08351648
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _0809BEF0
	.align 2, 0
_0809BEE0: .4byte 0xFFFFBFFF
_0809BEE4: .4byte 0xFFFFFDFF
_0809BEE8: .4byte gUnk_08351648
_0809BEEC:
	adds r0, r2, #1
	strh r0, [r4, #4]
_0809BEF0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809BEF8
sub_0809BEF8: @ 0x0809BEF8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x36
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0809BF0C
	b _0809C0BA
_0809BF0C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809BFA0
	adds r5, r4, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	ldr r7, _0809BF58 @ =0xFFFFF800
	adds r0, r0, r7
	cmp r1, r0
	blt _0809BF5C
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r3, #0x80
	lsls r3, r3, #4
	adds r0, r0, r3
	b _0809C020
	.align 2, 0
_0809BF58: .4byte 0xFFFFF800
_0809BF5C:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _0809C024
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _0809BF9C @ =0xFFFFF800
	adds r0, r0, r3
	b _0809C020
	.align 2, 0
_0809BF9C: .4byte 0xFFFFF800
_0809BFA0:
	adds r5, r4, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r4, #0x40]
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa4
	movs r6, #0
	ldrsh r0, [r3, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _0809BFE4
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r7, #0
	ldrsh r1, [r3, r7]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _0809BFE0 @ =0xFFFFF800
	adds r0, r0, r3
	b _0809C020
	.align 2, 0
_0809BFE0: .4byte 0xFFFFF800
_0809BFE4:
	movs r7, #0x3e
	adds r7, r7, r4
	mov ip, r7
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r3, r4, #0
	adds r3, #0xa8
	movs r2, #0
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	ldr r7, _0809C068 @ =0xFFFFF800
	adds r0, r0, r7
	adds r2, r4, #0
	adds r2, #0x62
	cmp r1, r0
	blt _0809C024
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r3, r0]
	lsls r1, r1, #8
	mov r3, ip
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_0809C020:
	subs r1, r1, r0
	str r1, [r4, #0x40]
_0809C024:
	adds r5, r4, #0
	adds r5, #0x3f
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r3, [r4, #0x44]
	adds r1, r3, r1
	movs r6, #0xaa
	adds r6, r6, r4
	mov ip, r6
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	ldr r6, _0809C068 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _0809C06C
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	mov r7, ip
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r0, r2
	subs r1, r1, r0
	str r1, [r4, #0x44]
	b _0809C092
	.align 2, 0
_0809C068: .4byte 0xFFFFF800
_0809C06C:
	adds r0, r4, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r3, r1
	adds r0, #0x69
	movs r3, #0
	ldrsh r0, [r0, r3]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _0809C092
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_0809C092:
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0809C0A8
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_0809C0A8:
	ldrb r1, [r2]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0809C0BA
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_0809C0BA:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r0, [r1, r7]
	cmp r0, #0
	bge _0809C0D4
	adds r0, r2, #6
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _0809C0E2
	b _0809C0DE
_0809C0D4:
	subs r0, r2, #6
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _0809C0E2
_0809C0DE:
	movs r0, #0
	strh r0, [r1]
_0809C0E2:
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0809C174
	adds r0, r4, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _0809C11E
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809F6BC
	b _0809C17A
_0809C11E:
	ldr r0, [r4, #0x68]
	movs r1, #0x80
	orrs r0, r1
	str r0, [r4, #0x68]
	ldr r2, [r4, #0xc]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r2
	cmp r0, #0
	beq _0809C13C
	ldr r0, [r4, #0x5c]
	movs r1, #0x81
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x5c]
_0809C13C:
	ldr r0, _0809C168 @ =0xFFFFBFFF
	ands r2, r0
	str r2, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, _0809C16C @ =0xFFFFFDFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0809C170 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	b _0809C17A
	.align 2, 0
_0809C168: .4byte 0xFFFFBFFF
_0809C16C: .4byte 0xFFFFFDFF
_0809C170: .4byte gUnk_08351648
_0809C174:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_0809C17A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809C180
sub_0809C180: @ 0x0809C180
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #0x36
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0809C194
	b _0809C33E
_0809C194:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809C228
	adds r5, r3, #0
	adds r5, #0x3e
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	ldr r7, _0809C1E0 @ =0xFFFFF800
	adds r0, r0, r7
	cmp r1, r0
	blt _0809C1E4
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	b _0809C2A8
	.align 2, 0
_0809C1E0: .4byte 0xFFFFF800
_0809C1E4:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	adds r2, r3, #0
	adds r2, #0x62
	cmp r1, r0
	bgt _0809C2AC
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _0809C224 @ =0xFFFFF800
	adds r0, r0, r4
	b _0809C2A8
	.align 2, 0
_0809C224: .4byte 0xFFFFF800
_0809C228:
	adds r5, r3, #0
	adds r5, #0x3c
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r2, [r3, #0x40]
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa4
	movs r6, #0
	ldrsh r0, [r4, r6]
	lsls r0, r0, #8
	movs r6, #0x80
	lsls r6, r6, #4
	adds r0, r0, r6
	cmp r1, r0
	bgt _0809C26C
	adds r2, r3, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
	strb r0, [r2]
	movs r7, #0
	ldrsh r1, [r4, r7]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r4, _0809C268 @ =0xFFFFF800
	adds r0, r0, r4
	b _0809C2A8
	.align 2, 0
_0809C268: .4byte 0xFFFFF800
_0809C26C:
	movs r7, #0x3e
	adds r7, r7, r3
	mov ip, r7
	movs r1, #0
	ldrsb r1, [r7, r1]
	lsls r1, r1, #8
	adds r1, r2, r1
	adds r4, r3, #0
	adds r4, #0xa8
	movs r2, #0
	ldrsh r0, [r4, r2]
	lsls r0, r0, #8
	ldr r7, _0809C2F0 @ =0xFFFFF800
	adds r0, r0, r7
	adds r2, r3, #0
	adds r2, #0x62
	cmp r1, r0
	blt _0809C2AC
	ldrb r1, [r2]
	movs r0, #1
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	ldrsh r1, [r4, r0]
	lsls r1, r1, #8
	mov r4, ip
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r0, r6
_0809C2A8:
	subs r1, r1, r0
	str r1, [r3, #0x40]
_0809C2AC:
	adds r5, r3, #0
	adds r5, #0x3f
	movs r1, #0
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	ldr r4, [r3, #0x44]
	adds r1, r4, r1
	movs r6, #0xaa
	adds r6, r6, r3
	mov ip, r6
	movs r7, #0
	ldrsh r0, [r6, r7]
	lsls r0, r0, #8
	ldr r6, _0809C2F0 @ =0xFFFFF800
	adds r0, r0, r6
	cmp r1, r0
	blt _0809C2F4
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	mov r7, ip
	movs r0, #0
	ldrsh r1, [r7, r0]
	lsls r1, r1, #8
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	subs r1, r1, r0
	str r1, [r3, #0x44]
	b _0809C31A
	.align 2, 0
_0809C2F0: .4byte 0xFFFFF800
_0809C2F4:
	adds r0, r3, #0
	adds r0, #0x3d
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #8
	adds r1, r4, r1
	adds r0, #0x69
	movs r6, #0
	ldrsh r0, [r0, r6]
	lsls r0, r0, #8
	movs r7, #0x80
	lsls r7, r7, #4
	adds r0, r0, r7
	cmp r1, r0
	bgt _0809C31A
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	strb r0, [r2]
_0809C31A:
	ldrb r1, [r2]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0809C32C
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_0809C32C:
	ldrb r1, [r2]
	movs r0, #0xc
	ands r0, r1
	cmp r0, #0
	beq _0809C33E
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
_0809C33E:
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #7
	bgt _0809C35E
	ldr r0, _0809C378 @ =gUnk_08352DD0
	movs r2, #4
	ldrsh r1, [r3, r2]
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
_0809C35E:
	ldrh r1, [r3, #4]
	movs r4, #4
	ldrsh r0, [r3, r4]
	cmp r0, #0xa
	ble _0809C36C
	ldr r0, _0809C37C @ =sub_0809BEF8
	str r0, [r3, #0x78]
_0809C36C:
	adds r0, r1, #1
	strh r0, [r3, #4]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C378: .4byte gUnk_08352DD0
_0809C37C: .4byte sub_0809BEF8

	thumb_func_start sub_0809C380
sub_0809C380: @ 0x0809C380
	push {r4, lr}
	adds r3, r0, #0
	ldr r4, [r3, #0x6c]
	ldrb r0, [r4]
	cmp r0, #0
	bne _0809C3BC
	ldr r1, _0809C400 @ =0x00000103
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809C3B2
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r1, [r0]
	adds r0, r1, #0
	subs r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0809C47E
	adds r0, r1, #0
	cmp r0, #0xa3
	beq _0809C47E
	cmp r0, #0xa4
	beq _0809C47E
_0809C3B2:
	adds r1, r4, #0
	adds r1, #0xde
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_0809C3BC:
	movs r0, #0x82
	adds r0, r0, r3
	mov ip, r0
	ldrb r0, [r0]
	subs r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0809C42A
	adds r1, r3, #0
	adds r1, #0x80
	movs r0, #0
	strh r0, [r1]
	ldr r2, _0809C404 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809C408 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809C40C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809C414
	ldr r2, _0809C410 @ =gUnk_08351648
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	b _0809C424
	.align 2, 0
_0809C400: .4byte 0x00000103
_0809C404: .4byte gRngVal
_0809C408: .4byte 0x00196225
_0809C40C: .4byte 0x3C6EF35F
_0809C410: .4byte gUnk_08351648
_0809C414:
	ldr r2, _0809C484 @ =gUnk_08351648
	mov r0, ip
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
_0809C424:
	adds r1, r3, #0
	adds r1, #0x83
	strb r0, [r1]
_0809C42A:
	movs r0, #0
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x9f
	movs r2, #1
	strb r2, [r0]
	ldr r0, [r3, #0x40]
	ldr r1, [r4, #0x40]
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x50
	strh r0, [r1]
	ldr r0, [r3, #0x44]
	ldr r1, [r4, #0x44]
	subs r0, r0, r1
	adds r1, r3, #0
	adds r1, #0x52
	strh r0, [r1]
	ldr r1, [r3, #8]
	movs r0, #0xb4
	lsls r0, r0, #4
	orrs r1, r0
	ldr r0, [r3, #0xc]
	orrs r0, r2
	str r0, [r3, #0xc]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r3, #8]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x86
	strb r0, [r1]
	ldr r0, _0809C488 @ =sub_0809C48C
	str r0, [r3, #0x78]
	ldr r0, [r3, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r3, #0xc]
_0809C47E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809C484: .4byte gUnk_08351648
_0809C488: .4byte sub_0809C48C

	thumb_func_start sub_0809C48C
sub_0809C48C: @ 0x0809C48C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r6, [r5, #0x6c]
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	adds r0, r1, #0
	subs r0, #0x1a
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _0809C568
	adds r0, r1, #0
	cmp r0, #0x6a
	beq _0809C568
	cmp r0, #0x6b
	beq _0809C568
	cmp r0, #0x1c
	beq _0809C568
	adds r1, r6, #0
	adds r1, #0xde
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809C4C0
	subs r0, #1
	strb r0, [r1]
_0809C4C0:
	ldr r2, _0809C54C @ =0x00000292
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	ldr r1, _0809C550 @ =gUnk_02020EE0
	ldr r0, _0809C554 @ =gUnk_0203AD3C
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
	beq _0809C4F4
	b _0809C6C8
_0809C4F4:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809C506
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0809C506
	b _0809C6C8
_0809C506:
	ldr r1, _0809C558 @ =gUnk_08D60FA4
	ldr r4, _0809C55C @ =gSongTable
	ldr r2, _0809C560 @ =0x00000964
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809C52E
	movs r1, #0x96
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0809C52E
	b _0809C6C8
_0809C52E:
	cmp r3, #0
	beq _0809C542
	ldr r0, _0809C564 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809C542
	b _0809C6C8
_0809C542:
	movs r0, #0x96
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0809C6C8
	.align 2, 0
_0809C54C: .4byte 0x00000292
_0809C550: .4byte gUnk_02020EE0
_0809C554: .4byte gUnk_0203AD3C
_0809C558: .4byte gUnk_08D60FA4
_0809C55C: .4byte gSongTable
_0809C560: .4byte 0x00000964
_0809C564: .4byte gUnk_0203AD10
_0809C568:
	ldrh r0, [r5, #4]
	adds r2, r0, #0
	adds r2, #0x2a
	strh r2, [r5, #4]
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r7, r0, #0
	cmp r1, #0
	ble _0809C584
	subs r0, r3, r2
	b _0809C586
_0809C584:
	adds r0, r3, r2
_0809C586:
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	lsls r3, r2, #0x10
	asrs r1, r3, #0x10
	adds r4, r0, #0
	cmp r1, #0
	ble _0809C59E
	asrs r0, r3, #0x13
	subs r0, r2, r0
	b _0809C5AC
_0809C59E:
	cmp r1, #0
	bge _0809C5AE
	movs r1, #0
	ldrsh r0, [r4, r1]
	rsbs r0, r0, #0
	asrs r0, r0, #3
	adds r0, r2, r0
_0809C5AC:
	strh r0, [r4]
_0809C5AE:
	adds r2, r7, #0
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	movs r0, #0
	ldrsh r1, [r4, r0]
	ldr r0, [r6, #0x44]
	adds r0, r0, r1
	str r0, [r5, #0x44]
	adds r1, r5, #0
	adds r1, #0x9f
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809C5D4
	movs r0, #0
	strb r0, [r1]
	b _0809C6C8
_0809C5D4:
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _0809C5DE
	rsbs r1, r1, #0
_0809C5DE:
	ldr r0, _0809C630 @ =0x000011FF
	cmp r1, r0
	bgt _0809C6C8
	ldrb r1, [r6]
	cmp r1, #0
	bne _0809C6B4
	ldr r2, _0809C634 @ =0x00000103
	adds r0, r6, r2
	ldrb r0, [r0]
	cmp r0, #0xa
	bne _0809C63C
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x6f
	beq _0809C6C8
	adds r0, r6, #0
	movs r1, #0
	bl sub_08063D98
	adds r0, r5, #0
	bl sub_0807A7E8
	adds r1, r0, #0
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809C61C
	cmp r0, #0x12
	bne _0809C6BE
_0809C61C:
	adds r0, r5, #0
	adds r0, #0x84
	ldrb r0, [r0]
	cmp r0, #5
	bne _0809C6BE
	str r1, [r5, #0x70]
	ldr r0, _0809C638 @ =sub_0809F8BC
	str r0, [r5, #0x78]
	b _0809C6C8
	.align 2, 0
_0809C630: .4byte 0x000011FF
_0809C634: .4byte 0x00000103
_0809C638: .4byte sub_0809F8BC
_0809C63C:
	adds r3, r5, #0
	adds r3, #0x82
	ldrb r2, [r3]
	adds r0, r2, #0
	subs r0, #0x5e
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _0809C684
	strh r1, [r7]
	strh r1, [r4]
	ldr r0, [r5, #8]
	ldr r1, _0809C67C @ =0xFFFFFCFF
	ands r0, r1
	str r0, [r5, #8]
	ldr r2, _0809C680 @ =gUnk_08351648
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r6, #0
	movs r1, #0x1c
	bl sub_080547C4
	b _0809C6C8
	.align 2, 0
_0809C67C: .4byte 0xFFFFFCFF
_0809C680: .4byte gUnk_08351648
_0809C684:
	adds r0, r2, #0
	adds r0, #0x5d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0809C6A2
	adds r4, r5, #0
	adds r4, #0x84
	ldrb r0, [r4]
	movs r1, #0x80
	orrs r1, r0
	adds r0, r6, #0
	bl sub_080547C4
	b _0809C6AE
_0809C6A2:
	adds r4, r5, #0
	adds r4, #0x84
	ldrb r1, [r4]
	adds r0, r6, #0
	bl sub_080547C4
_0809C6AE:
	movs r0, #0
	strb r0, [r4]
	b _0809C6BE
_0809C6B4:
	cmp r1, #1
	bne _0809C6C8
	adds r0, r6, #0
	adds r0, #0x82
	ldrb r0, [r0]
_0809C6BE:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_0809C6C8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809C6D0
sub_0809C6D0: @ 0x0809C6D0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r7, [r4, #0x6c]
	ldr r6, [r7, #0x70]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x82
	ldrb r0, [r3]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bls _0809C6F4
	b _0809C7F6
_0809C6F4:
	movs r1, #0
	movs r0, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	subs r0, #0x1a
	strb r1, [r0]
	ldr r2, _0809C81C @ =gUnk_08351648
	ldrb r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x38
	ands r0, r1
	ldr r1, _0809C820 @ =0xFFFFF7FF
	ands r0, r1
	ldr r1, _0809C824 @ =0xFFDFFFFF
	ands r0, r1
	ldr r1, _0809C828 @ =0xFFFBFEFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x28
	rsbs r0, r0, #0
	str r0, [r4, #0x5c]
	ldr r1, _0809C82C @ =gUnk_02020EE0
	ldr r0, _0809C830 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809C7B0
	ldrb r0, [r4]
	cmp r0, #0
	bne _0809C770
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809C7B0
_0809C770:
	ldr r1, _0809C834 @ =gUnk_08D60FA4
	ldr r5, _0809C838 @ =gSongTable
	ldr r2, _0809C83C @ =0x00000B54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809C796
	movs r1, #0xb5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809C7B0
_0809C796:
	cmp r3, #0
	beq _0809C7A8
	ldr r0, _0809C840 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809C7B0
_0809C7A8:
	movs r0, #0xb5
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809C7B0:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r2, [r0]
	cmp r2, #0
	beq _0809C7F6
	subs r0, #0x2e
	ldrb r0, [r0]
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0809C7F6
	ldrh r1, [r2, #2]
	movs r0, #0xf8
	lsls r0, r0, #5
	cmp r1, r0
	beq _0809C7F6
	ldrb r1, [r2, #4]
	ldr r3, _0809C844 @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0809C848 @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
_0809C7F6:
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	cmp r0, #0x34
	bne _0809C806
	adds r0, r4, #0
	bl sub_080B11C0
_0809C806:
	ldr r0, [r7, #0x68]
	movs r1, #0x80
	lsls r1, r1, #0x17
	ands r0, r1
	cmp r0, #0
	beq _0809C84C
	adds r0, r4, #0
	bl sub_0809CDBC
	b _0809C988
	.align 2, 0
_0809C81C: .4byte gUnk_08351648
_0809C820: .4byte 0xFFFFF7FF
_0809C824: .4byte 0xFFDFFFFF
_0809C828: .4byte 0xFFFBFEFF
_0809C82C: .4byte gUnk_02020EE0
_0809C830: .4byte gUnk_0203AD3C
_0809C834: .4byte gUnk_08D60FA4
_0809C838: .4byte gSongTable
_0809C83C: .4byte 0x00000B54
_0809C840: .4byte gUnk_0203AD10
_0809C844: .4byte gUnk_02023530
_0809C848: .4byte 0x0000065E
_0809C84C:
	ldrb r0, [r6]
	adds r3, r6, #0
	adds r3, #0xde
	cmp r0, #0
	bne _0809C85C
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0809C85C:
	ldr r2, _0809C884 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809C888 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809C88C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809C894
	ldr r2, _0809C890 @ =gUnk_08351648
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	b _0809C8A2
	.align 2, 0
_0809C884: .4byte gRngVal
_0809C888: .4byte 0x00196225
_0809C88C: .4byte 0x3C6EF35F
_0809C890: .4byte gUnk_08351648
_0809C894:
	ldr r2, _0809C8D4 @ =gUnk_08351648
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
_0809C8A2:
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	ldrb r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #2
	movs r1, #0
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9f
	strb r1, [r0]
	subs r0, #1
	strb r1, [r0]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809C8D8
	ldr r0, [r4, #0x40]
	movs r2, #0x98
	lsls r2, r2, #5
	adds r0, r0, r2
	b _0809C8DE
	.align 2, 0
_0809C8D4: .4byte gUnk_08351648
_0809C8D8:
	ldr r0, [r4, #0x40]
	ldr r1, _0809C918 @ =0xFFFFED00
	adds r0, r0, r1
_0809C8DE:
	ldr r1, [r6, #0x40]
	subs r0, r0, r1
	str r0, [r4, #0x48]
	ldr r0, [r4, #0x44]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r0, r2
	ldr r1, [r6, #0x44]
	subs r0, r0, r1
	str r0, [r4, #0x4c]
	ldr r1, [r4, #0x48]
	cmp r1, #0
	beq _0809C934
	cmp r0, #0
	ble _0809C91C
	lsls r5, r1, #8
	cmp r5, #0
	bge _0809C904
	rsbs r5, r5, #0
_0809C904:
	movs r1, #3
	bl __divsi3
	adds r1, r0, #0
	asrs r1, r1, #8
	adds r1, #0x1e
	lsls r1, r1, #8
	adds r0, r5, #0
	b _0809C928
	.align 2, 0
_0809C918: .4byte 0xFFFFED00
_0809C91C:
	lsls r0, r1, #8
	cmp r0, #0
	bge _0809C924
	rsbs r0, r0, #0
_0809C924:
	movs r1, #0xf0
	lsls r1, r1, #5
_0809C928:
	bl __divsi3
	adds r1, r4, #0
	adds r1, #0x64
	strh r0, [r1]
	b _0809C93A
_0809C934:
	adds r0, r4, #0
	adds r0, #0x64
	strh r1, [r0]
_0809C93A:
	adds r1, r4, #0
	adds r1, #0x52
	movs r3, #0
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	strh r3, [r0]
	ldr r2, [r4, #8]
	movs r0, #0xb4
	lsls r0, r0, #4
	orrs r2, r0
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x80
	strh r3, [r0]
	adds r0, r7, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x86
	strb r0, [r1]
	ldr r0, _0809C990 @ =sub_0809C994
	str r0, [r4, #0x78]
	ldr r0, [r4, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r7, #0x70]
	str r0, [r4, #0x6c]
_0809C988:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809C990: .4byte sub_0809C994

	thumb_func_start sub_0809C994
sub_0809C994: @ 0x0809C994
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	ldr r7, [r5, #0x6c]
	adds r0, r7, #0
	adds r0, #0xd4
	ldrh r1, [r0]
	cmp r1, #0x27
	beq _0809C9C8
	movs r6, #0x80
	lsls r6, r6, #1
	adds r0, r7, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	ble _0809C9C8
	ldr r2, _0809C9F0 @ =0x00000103
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #0xc
	beq _0809C9F8
_0809C9C8:
	adds r1, r7, #0
	adds r1, #0xde
	ldrb r0, [r1]
	cmp r0, #0
	beq _0809C9D6
	subs r0, #1
	strb r0, [r1]
_0809C9D6:
	ldr r2, _0809C9F4 @ =0x00000292
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _0809CD8C
	.align 2, 0
_0809C9F0: .4byte 0x00000103
_0809C9F4: .4byte 0x00000292
_0809C9F8:
	cmp r1, #0x34
	beq _0809C9FE
	b _0809CB84
_0809C9FE:
	ldrh r1, [r5, #4]
	movs r3, #4
	ldrsh r0, [r5, r3]
	cmp r0, #0
	beq _0809CAA4
	subs r0, r1, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _0809CA14
	b _0809CB84
_0809CA14:
	ldr r1, _0809CA84 @ =gUnk_02020EE0
	ldr r0, _0809CA88 @ =gUnk_0203AD3C
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
	beq _0809CA32
	b _0809CB84
_0809CA32:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809CA44
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0809CA44
	b _0809CB84
_0809CA44:
	ldr r1, _0809CA8C @ =gUnk_08D60FA4
	ldr r4, _0809CA90 @ =gSongTable
	ldr r2, _0809CA94 @ =0x00000A2C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809CA6A
	ldr r1, _0809CA98 @ =0x00000A28
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0809CA6A
	b _0809CB84
_0809CA6A:
	cmp r3, #0
	beq _0809CA7A
	ldr r0, _0809CA9C @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	beq _0809CA7A
	b _0809CB84
_0809CA7A:
	ldr r0, _0809CAA0 @ =0x00000145
	bl m4aSongNumStart
	b _0809CB84
	.align 2, 0
_0809CA84: .4byte gUnk_02020EE0
_0809CA88: .4byte gUnk_0203AD3C
_0809CA8C: .4byte gUnk_08D60FA4
_0809CA90: .4byte gSongTable
_0809CA94: .4byte 0x00000A2C
_0809CA98: .4byte 0x00000A28
_0809CA9C: .4byte gUnk_0203AD10
_0809CAA0: .4byte 0x00000145
_0809CAA4:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r4, [r0]
	movs r3, #0
	ldrsh r2, [r0, r3]
	movs r1, #0xe0
	lsls r1, r1, #2
	adds r3, r0, #0
	cmp r2, r1
	bne _0809CABE
	ldr r0, [r5, #0x4c]
	cmp r0, #0
	bgt _0809CAC4
_0809CABE:
	adds r0, r4, #0
	subs r0, #0x2a
	strh r0, [r3]
_0809CAC4:
	adds r2, r3, #0
	movs r4, #0
	ldrsh r1, [r2, r4]
	ldr r0, _0809CB14 @ =0xFFFFFD00
	cmp r1, r0
	bge _0809CAD6
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_0809CAD6:
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r5, #0x4c]
	subs r0, r0, r1
	str r0, [r5, #0x4c]
	ldr r0, [r5, #0x48]
	cmp r0, #0
	ble _0809CB34
	lsls r0, r0, #0xd
	adds r2, r5, #0
	adds r2, #0x64
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	cmp r0, r1
	ble _0809CAFA
	ldrh r3, [r2]
_0809CAFA:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r2, r5, #0
	adds r2, #0x50
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r1, r0, r1
	cmp r1, #0xc0
	ble _0809CB18
	ldrh r0, [r2]
	adds r0, #0xc0
	strh r0, [r2]
	b _0809CB2A
	.align 2, 0
_0809CB14: .4byte 0xFFFFFD00
_0809CB18:
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0809CB28
	ldrh r0, [r2]
	subs r0, #0xc0
	strh r0, [r2]
	b _0809CB2A
_0809CB28:
	strh r3, [r2]
_0809CB2A:
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r5, #0x48]
	subs r0, r0, r1
	b _0809CB82
_0809CB34:
	cmp r0, #0
	bge _0809CB84
	rsbs r0, r0, #0
	lsls r0, r0, #0xd
	adds r2, r5, #0
	adds r2, #0x64
	lsrs r3, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	cmp r0, r1
	ble _0809CB4E
	ldrh r3, [r2]
_0809CB4E:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	adds r2, r5, #0
	adds r2, #0x50
	movs r4, #0
	ldrsh r1, [r2, r4]
	subs r1, r0, r1
	cmp r1, #0xc0
	ble _0809CB68
	ldrh r0, [r2]
	adds r0, #0xc0
	strh r0, [r2]
	b _0809CB7A
_0809CB68:
	movs r0, #0xc0
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0809CB78
	ldrh r0, [r2]
	subs r0, #0xc0
	strh r0, [r2]
	b _0809CB7A
_0809CB78:
	strh r3, [r2]
_0809CB7A:
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r5, #0x48]
	adds r0, r0, r1
_0809CB82:
	str r0, [r5, #0x48]
_0809CB84:
	ldr r0, [r7, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809CB9C
	ldr r2, [r5, #0x48]
	ldr r3, _0809CB98 @ =0xFFFFED00
	adds r1, r2, r3
	b _0809CBA4
	.align 2, 0
_0809CB98: .4byte 0xFFFFED00
_0809CB9C:
	ldr r2, [r5, #0x48]
	movs r4, #0x98
	lsls r4, r4, #5
	adds r1, r2, r4
_0809CBA4:
	ldr r0, [r7, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	ldr r3, [r5, #0x4c]
	ldr r0, _0809CC60 @ =0xFFFFF000
	adds r1, r3, r0
	ldr r0, [r7, #0x44]
	adds r4, r0, r1
	str r4, [r5, #0x44]
	adds r1, r2, #0
	cmp r2, #0
	bge _0809CBBE
	rsbs r1, r2, #0
_0809CBBE:
	ldr r0, _0809CC64 @ =0x00000FFF
	cmp r1, r0
	ble _0809CBC6
	b _0809CD8C
_0809CBC6:
	adds r1, r3, #0
	cmp r3, #0
	bge _0809CBCE
	rsbs r1, r3, #0
_0809CBCE:
	ldr r0, _0809CC68 @ =0x000003FF
	cmp r1, r0
	ble _0809CBD6
	b _0809CD8C
_0809CBD6:
	adds r0, r5, #0
	adds r0, #0x52
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _0809CBE4
	b _0809CD8C
_0809CBE4:
	movs r0, #0x5e
	mov r8, r0
	ldr r0, [r5, #0x40]
	subs r0, r0, r2
	str r0, [r5, #0x40]
	subs r0, r4, r3
	str r0, [r5, #0x44]
	ldr r2, _0809CC6C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809CC70 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809CC74 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _0809CC78 @ =0x00002AAA
	adds r3, r5, #0
	adds r3, #0x60
	str r3, [sp]
	ldr r3, [r5, #0x5c]
	movs r4, #0x82
	adds r4, r4, r5
	mov ip, r4
	ldr r6, _0809CC7C @ =gUnk_020229D4
	movs r4, #0x56
	adds r4, r4, r7
	mov sl, r4
	cmp r2, r0
	blt _0809CC34
	adds r4, r0, #0
_0809CC22:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _0809CC34
	adds r0, r1, #1
	muls r0, r4, r0
	cmp r2, r0
	bge _0809CC22
_0809CC34:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	movs r0, #7
	ands r3, r0
	cmp r3, #2
	bls _0809CC46
	movs r0, #0x60
	mov r8, r0
_0809CC46:
	mov r1, ip
	ldrb r0, [r1]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _0809CC58
	movs r2, #0x61
	mov r8, r2
_0809CC58:
	movs r3, #0
	movs r2, #1
	b _0809CC8E
	.align 2, 0
_0809CC60: .4byte 0xFFFFF000
_0809CC64: .4byte 0x00000FFF
_0809CC68: .4byte 0x000003FF
_0809CC6C: .4byte gRngVal
_0809CC70: .4byte 0x00196225
_0809CC74: .4byte 0x3C6EF35F
_0809CC78: .4byte 0x00002AAA
_0809CC7C: .4byte gUnk_020229D4
_0809CC80:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _0809CC9C
	movs r2, #1
	lsls r2, r3
_0809CC8E:
	ldr r1, [r6]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0809CC80
	orrs r1, r2
	str r1, [r6]
_0809CC9C:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	ldr r3, _0809CD9C @ =gUnk_020229E0
	adds r1, r1, r3
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	mov r0, r8
	strb r0, [r1, #0xc]
	mov r0, sb
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r4, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, sl
	ldrb r0, [r2]
	bl CreateObject
	str r7, [r0, #0x70]
	ldrb r0, [r7]
	cmp r0, #0
	bne _0809CD02
	adds r1, r7, #0
	adds r1, #0xde
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
_0809CD02:
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r5, #0x44]
	ldr r3, _0809CDA0 @ =0xFFFFF800
	adds r0, r0, r3
	str r0, [r5, #0x44]
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r1, _0809CDA4 @ =gUnk_02020EE0
	ldr r0, _0809CDA8 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	ldrh r0, [r0]
	ldr r4, [sp]
	ldrh r4, [r4]
	cmp r0, r4
	bne _0809CD8C
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809CD4C
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809CD8C
_0809CD4C:
	ldr r1, _0809CDAC @ =gUnk_08D60FA4
	ldr r4, _0809CDB0 @ =gSongTable
	ldr r2, _0809CDB4 @ =0x00000FA4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809CD72
	movs r1, #0xfa
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809CD8C
_0809CD72:
	cmp r3, #0
	beq _0809CD84
	ldr r0, _0809CDB8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809CD8C
_0809CD84:
	movs r0, #0xfa
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809CD8C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809CD9C: .4byte gUnk_020229E0
_0809CDA0: .4byte 0xFFFFF800
_0809CDA4: .4byte gUnk_02020EE0
_0809CDA8: .4byte gUnk_0203AD3C
_0809CDAC: .4byte gUnk_08D60FA4
_0809CDB0: .4byte gSongTable
_0809CDB4: .4byte 0x00000FA4
_0809CDB8: .4byte gUnk_0203AD10

	thumb_func_start sub_0809CDBC
sub_0809CDBC: @ 0x0809CDBC
	push {r4, lr}
	mov ip, r0
	ldr r4, [r0, #0x6c]
	ldr r2, _0809CDF0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809CDF4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809CDF8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809CE00
	ldr r2, _0809CDFC @ =gUnk_08351648
	mov r0, ip
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	b _0809CE12
	.align 2, 0
_0809CDF0: .4byte gRngVal
_0809CDF4: .4byte 0x00196225
_0809CDF8: .4byte 0x3C6EF35F
_0809CDFC: .4byte gUnk_08351648
_0809CE00:
	ldr r2, _0809CE78 @ =gUnk_08351648
	mov r0, ip
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
_0809CE12:
	mov r1, ip
	adds r1, #0x83
	strb r0, [r1]
	movs r0, #0
	movs r3, #0
	mov r1, ip
	strh r3, [r1, #4]
	adds r1, #0x9f
	strb r0, [r1]
	subs r1, #1
	strb r0, [r1]
	mov r0, ip
	ldr r2, [r0, #8]
	movs r0, #0xb4
	lsls r0, r0, #4
	orrs r2, r0
	mov r1, ip
	ldr r0, [r1, #0xc]
	movs r1, #1
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #0xc]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r2, r0
	str r2, [r1, #8]
	mov r0, ip
	adds r0, #0x80
	strh r3, [r0]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, #0x86
	strb r0, [r1]
	adds r1, #2
	ldr r0, [r4, #0x68]
	str r0, [r1]
	ldr r0, _0809CE7C @ =sub_0809CE80
	mov r1, ip
	str r0, [r1, #0x78]
	ldr r0, [r1, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #0xc]
	ldr r0, [r4, #0x70]
	str r0, [r1, #0x6c]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809CE78: .4byte gUnk_08351648
_0809CE7C: .4byte sub_0809CE80

	thumb_func_start sub_0809CE80
sub_0809CE80: @ 0x0809CE80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	ldr r0, [r4, #0x6c]
	mov sb, r0
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #7
	bgt _0809CEA2
	ldr r1, _0809CF10 @ =gUnk_08352DD0
	adds r0, r0, r1
	ldrb r1, [r0]
	adds r0, r4, #0
	adds r0, #0x54
	strb r1, [r0]
_0809CEA2:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1e
	bgt _0809CEB2
	b _0809CFB6
_0809CEB2:
	movs r6, #0x5e
	movs r0, #0
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x88
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xd
	ands r0, r1
	cmp r0, #0
	beq _0809CECA
	movs r6, #0x63
_0809CECA:
	ldr r5, _0809CF14 @ =gUnk_020229D4
	ldr r7, _0809CF18 @ =gUnk_020229E0
	movs r1, #0x56
	adds r1, r1, r4
	mov r8, r1
	cmp r6, #0x5e
	bne _0809CF0A
	ldr r2, _0809CF1C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809CF20 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809CF24 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	movs r1, #0
	ldr r0, _0809CF28 @ =0x00002AAA
	cmp r2, r0
	blt _0809CF04
	adds r3, r0, #0
_0809CEF2:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #4
	bhi _0809CF04
	adds r0, r1, #1
	muls r0, r3, r0
	cmp r2, r0
	bge _0809CEF2
_0809CF04:
	lsls r0, r1, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_0809CF0A:
	movs r3, #0
	movs r2, #1
	b _0809CF3A
	.align 2, 0
_0809CF10: .4byte gUnk_08352DD0
_0809CF14: .4byte gUnk_020229D4
_0809CF18: .4byte gUnk_020229E0
_0809CF1C: .4byte gRngVal
_0809CF20: .4byte 0x00196225
_0809CF24: .4byte 0x3C6EF35F
_0809CF28: .4byte 0x00002AAA
_0809CF2C:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x1f
	bhi _0809CF48
	movs r2, #1
	lsls r2, r3
_0809CF3A:
	ldr r1, [r5]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	bne _0809CF2C
	orrs r1, r2
	str r1, [r5]
_0809CF48:
	lsls r1, r3, #3
	adds r1, r1, r3
	lsls r1, r1, #2
	adds r1, r1, r7
	movs r2, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	ldr r0, [r4, #0x40]
	asrs r0, r0, #8
	movs r3, #0
	strh r0, [r1, #6]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	strb r6, [r1, #0xc]
	mov r0, ip
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	movs r0, #2
	strb r0, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	mov r1, sb
	str r1, [r0, #0x70]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #0xad
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_0809CFB6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0809CFC4
sub_0809CFC4: @ 0x0809CFC4
	push {lr}
	mov ip, r0
	ldr r2, _0809CFF4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809CFF8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809CFFC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809D004
	ldr r2, _0809D000 @ =gUnk_08351648
	mov r0, ip
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	b _0809D016
	.align 2, 0
_0809CFF4: .4byte gRngVal
_0809CFF8: .4byte 0x00196225
_0809CFFC: .4byte 0x3C6EF35F
_0809D000: .4byte gUnk_08351648
_0809D004:
	ldr r2, _0809D054 @ =gUnk_08351648
	mov r0, ip
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
_0809D016:
	mov r1, ip
	adds r1, #0x83
	strb r0, [r1]
	movs r0, #0
	mov r1, ip
	strh r0, [r1, #4]
	mov r0, ip
	adds r0, #0x9f
	movs r3, #1
	strb r3, [r0]
	ldr r1, [r1, #8]
	ldr r0, _0809D058 @ =gUnk_02000F40
	orrs r1, r0
	mov r0, ip
	ldr r2, [r0, #0xc]
	orrs r2, r3
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
	ldr r0, _0809D05C @ =nullsub_123
	mov r1, ip
	str r0, [r1, #0x78]
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r1, #0xc]
	pop {r0}
	bx r0
	.align 2, 0
_0809D054: .4byte gUnk_08351648
_0809D058: .4byte gUnk_02000F40
_0809D05C: .4byte nullsub_123

	thumb_func_start sub_0809D060
sub_0809D060: @ 0x0809D060
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	movs r3, #0
	strh r3, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x9e
	strb r0, [r1]
	adds r1, #1
	strb r0, [r1]
	subs r1, #0x1a
	strb r0, [r1]
	ldr r2, _0809D1A0 @ =gUnk_08351648
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	ldr r0, _0809D1A4 @ =sub_0809D1E0
	str r0, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x80
	strh r3, [r0]
	ldr r0, [r4, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x38
	ands r0, r1
	ldr r1, _0809D1A8 @ =0xFFFFF7FF
	ands r0, r1
	ldr r1, _0809D1AC @ =0xFFDDFFFF
	ands r0, r1
	ldr r1, _0809D1B0 @ =0xFFFBFEFF
	ands r0, r1
	ldr r1, _0809D1B4 @ =0xFFEEFFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	ldr r1, _0809D1B8 @ =0x00000801
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r0, #0x81
	str r0, [r4, #0x5c]
	str r3, [r4, #0x68]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r1, _0809D1BC @ =gUnk_08D610B4
	ldrb r0, [r5]
	subs r0, #0x38
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	cmp r1, #0
	beq _0809D0E6
	adds r0, r4, #0
	bl sub_08088398
_0809D0E6:
	ldr r1, _0809D1C0 @ =gUnk_02020EE0
	ldr r0, _0809D1C4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809D152
	ldrb r0, [r4]
	cmp r0, #0
	bne _0809D112
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809D152
_0809D112:
	ldr r1, _0809D1C8 @ =gUnk_08D60FA4
	ldr r5, _0809D1CC @ =gSongTable
	ldr r2, _0809D1D0 @ =0x00000B54
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809D138
	movs r1, #0xb5
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809D152
_0809D138:
	cmp r3, #0
	beq _0809D14A
	ldr r0, _0809D1D4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809D152
_0809D14A:
	movs r0, #0xb5
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809D152:
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r2, [r0]
	cmp r2, #0
	beq _0809D198
	subs r0, #0x2e
	ldrb r0, [r0]
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0809D198
	ldrh r1, [r2, #2]
	movs r0, #0xf8
	lsls r0, r0, #5
	cmp r1, r0
	beq _0809D198
	ldrb r1, [r2, #4]
	ldr r3, _0809D1D8 @ =gUnk_02023530
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r0, r0, r3
	ldr r2, _0809D1DC @ =0x0000065E
	adds r0, r0, r2
	ldrb r2, [r0]
	movs r0, #0
	bl sub_08002888
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
_0809D198:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809D1A0: .4byte gUnk_08351648
_0809D1A4: .4byte sub_0809D1E0
_0809D1A8: .4byte 0xFFFFF7FF
_0809D1AC: .4byte 0xFFDDFFFF
_0809D1B0: .4byte 0xFFFBFEFF
_0809D1B4: .4byte 0xFFEEFFFF
_0809D1B8: .4byte 0x00000801
_0809D1BC: .4byte gUnk_08D610B4
_0809D1C0: .4byte gUnk_02020EE0
_0809D1C4: .4byte gUnk_0203AD3C
_0809D1C8: .4byte gUnk_08D60FA4
_0809D1CC: .4byte gSongTable
_0809D1D0: .4byte 0x00000B54
_0809D1D4: .4byte gUnk_0203AD10
_0809D1D8: .4byte gUnk_02023530
_0809D1DC: .4byte 0x0000065E

	thumb_func_start sub_0809D1E0
sub_0809D1E0: @ 0x0809D1E0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r2, _0809D33C @ =gUnk_02023530
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r2, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r3, [r5, #0x40]
	ldr r0, [r0]
	adds r4, r2, #0
	cmp r3, r0
	bgt _0809D20C
	adds r0, r4, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r3, r0
	bge _0809D214
_0809D20C:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_0809D214:
	adds r2, r5, #0
	adds r2, #0x56
	ldrb r1, [r2]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r1, r4, #0
	adds r1, #0x4c
	adds r0, r0, r1
	ldr r1, [r5, #0x44]
	ldr r0, [r0]
	adds r7, r2, #0
	cmp r1, r0
	bge _0809D232
	str r0, [r5, #0x44]
_0809D232:
	ldr r0, [r5, #8]
	movs r1, #0x40
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x85
	cmp r0, #0
	bne _0809D26C
	adds r2, r5, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #5
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r1, _0809D340 @ =0xFFFFFD00
	cmp r0, r1
	bge _0809D256
	strh r1, [r2]
_0809D256:
	ldrb r1, [r4]
	cmp r1, #0
	bne _0809D262
	adds r0, r5, #0
	adds r0, #0x80
	strh r1, [r0]
_0809D262:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	ble _0809D26C
	b _0809D59E
_0809D26C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0809D36E
	ldrb r0, [r4]
	cmp r0, #0
	bne _0809D374
	movs r0, #0x82
	str r0, [r5, #0x68]
	ldr r1, _0809D344 @ =gUnk_02020EE0
	ldr r0, _0809D348 @ =gUnk_0203AD3C
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
	bne _0809D2EC
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809D2AC
	ldrb r0, [r7]
	cmp r0, r2
	bne _0809D2EC
_0809D2AC:
	ldr r1, _0809D34C @ =gUnk_08D60FA4
	ldr r6, _0809D350 @ =gSongTable
	ldr r2, _0809D354 @ =0x00000B24
	adds r0, r6, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809D2D2
	movs r1, #0xb2
	lsls r1, r1, #4
	adds r0, r6, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809D2EC
_0809D2D2:
	cmp r3, #0
	beq _0809D2E4
	ldr r0, _0809D358 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809D2EC
_0809D2E4:
	movs r0, #0xb2
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809D2EC:
	movs r0, #1
	strb r0, [r4]
	adds r4, r5, #0
	adds r4, #0x50
	ldrh r0, [r4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r4]
	ldr r2, _0809D35C @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	adds r1, r5, #0
	adds r1, #0x83
	strb r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #3
	adds r1, r5, #0
	bl sub_0806FE64
	movs r2, #0
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0809D360
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0x10
	movs r3, #0
	bl sub_08089864
	b _0809D3FE
	.align 2, 0
_0809D33C: .4byte gUnk_02023530
_0809D340: .4byte 0xFFFFFD00
_0809D344: .4byte gUnk_02020EE0
_0809D348: .4byte gUnk_0203AD3C
_0809D34C: .4byte gUnk_08D60FA4
_0809D350: .4byte gSongTable
_0809D354: .4byte 0x00000B24
_0809D358: .4byte gUnk_0203AD10
_0809D35C: .4byte gUnk_08351648
_0809D360:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0x10
	movs r3, #1
	bl sub_08089864
	b _0809D3FE
_0809D36E:
	ldrb r0, [r4]
	cmp r0, #0
	beq _0809D3FE
_0809D374:
	adds r3, r5, #0
	adds r3, #0x83
	ldr r2, _0809D3A8 @ =gUnk_08351648
	adds r0, r5, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r1, [r3]
	ldrb r0, [r0, #1]
	cmp r1, r0
	bne _0809D3AC
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	cmp r0, #0
	beq _0809D3B4
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _0809D3B4
	.align 2, 0
_0809D3A8: .4byte gUnk_08351648
_0809D3AC:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
_0809D3B4:
	ldrb r1, [r4]
	cmp r1, #0x1e
	bne _0809D3CA
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	b _0809D3FE
_0809D3CA:
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _0809D3F8
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0809D3EC
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0x10
	movs r3, #0
	bl sub_08089864
	b _0809D3F8
_0809D3EC:
	adds r0, r5, #0
	movs r1, #8
	movs r2, #0x10
	movs r3, #1
	bl sub_08089864
_0809D3F8:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
_0809D3FE:
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0xaa
	ble _0809D4B2
	cmp r0, #0xab
	bne _0809D472
	ldr r1, _0809D5A4 @ =gUnk_02020EE0
	ldr r0, _0809D5A8 @ =gUnk_0203AD3C
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
	bne _0809D472
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809D432
	ldrb r0, [r7]
	cmp r0, r2
	bne _0809D472
_0809D432:
	ldr r1, _0809D5AC @ =gUnk_08D60FA4
	ldr r4, _0809D5B0 @ =gSongTable
	ldr r2, _0809D5B4 @ =0x00000BE4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809D458
	movs r1, #0xbe
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809D472
_0809D458:
	cmp r3, #0
	beq _0809D46A
	ldr r0, _0809D5B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809D472
_0809D46A:
	movs r0, #0xbe
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809D472:
	ldr r0, [r5, #8]
	movs r1, #0x40
	orrs r0, r1
	str r0, [r5, #8]
	ldr r2, _0809D5BC @ =gUnk_08352DD8
	adds r3, r5, #0
	adds r3, #0x9e
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x50
	strh r1, [r0]
	ldrb r0, [r3]
	lsls r0, r0, #1
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	strh r0, [r1]
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #5
	bls _0809D4B2
	movs r0, #0
	strb r0, [r3]
_0809D4B2:
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0xaa
	beq _0809D4BE
	cmp r0, #0xca
	bne _0809D4CA
_0809D4BE:
	ldr r2, _0809D5C0 @ =0x000002A3
	adds r0, r5, #0
	movs r1, #0
	movs r3, #1
	bl sub_0808BA6C
_0809D4CA:
	ldr r3, _0809D5C4 @ =gUnk_02023530
	ldrb r1, [r7]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r3, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r2, [r5, #0x40]
	ldr r0, [r0]
	cmp r2, r0
	bgt _0809D4EE
	adds r0, r3, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	bge _0809D4F6
_0809D4EE:
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_0809D4F6:
	adds r0, r5, #0
	adds r0, #0x90
	ldrb r0, [r0]
	cmp r0, #0
	bne _0809D59E
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0xff
	bgt _0809D518
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r1, [r0, r2]
	movs r0, #0xc
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _0809D59E
_0809D518:
	ldr r1, _0809D5A4 @ =gUnk_02020EE0
	ldr r0, _0809D5A8 @ =gUnk_0203AD3C
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
	bne _0809D580
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809D540
	ldrb r0, [r7]
	cmp r0, r2
	bne _0809D580
_0809D540:
	ldr r1, _0809D5AC @ =gUnk_08D60FA4
	ldr r4, _0809D5B0 @ =gSongTable
	ldr r2, _0809D5C8 @ =0x00000B34
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809D566
	movs r1, #0xb3
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809D580
_0809D566:
	cmp r3, #0
	beq _0809D578
	ldr r0, _0809D5B8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809D580
_0809D578:
	movs r0, #0xb3
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809D580:
	movs r0, #3
	adds r1, r5, #0
	bl sub_0806FE64
	ldr r2, _0809D5CC @ =0x00000299
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
_0809D59E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809D5A4: .4byte gUnk_02020EE0
_0809D5A8: .4byte gUnk_0203AD3C
_0809D5AC: .4byte gUnk_08D60FA4
_0809D5B0: .4byte gSongTable
_0809D5B4: .4byte 0x00000BE4
_0809D5B8: .4byte gUnk_0203AD10
_0809D5BC: .4byte gUnk_08352DD8
_0809D5C0: .4byte 0x000002A3
_0809D5C4: .4byte gUnk_02023530
_0809D5C8: .4byte 0x00000B34
_0809D5CC: .4byte 0x00000299

	thumb_func_start sub_0809D5D0
sub_0809D5D0: @ 0x0809D5D0
	push {lr}
	mov ip, r0
	movs r3, #0
	strh r3, [r0, #4]
	ldr r2, _0809D644 @ =gUnk_08351648
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0x83
	strb r0, [r1]
	ldr r0, _0809D648 @ =sub_0809D654
	mov r1, ip
	str r0, [r1, #0x78]
	mov r0, ip
	adds r0, #0x50
	strh r3, [r0]
	adds r0, #2
	strh r3, [r0]
	adds r1, #0x85
	movs r0, #1
	strb r0, [r1]
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	movs r1, #0xc0
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r1, _0809D64C @ =0xFFFBFFFF
	ands r0, r1
	mov r1, ip
	str r0, [r1, #8]
	str r3, [r1, #0x68]
	ldr r0, _0809D650 @ =0x0000FFFF
	str r0, [r1, #0x5c]
	ldr r0, [r1, #0xc]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #0xc]
	mov r0, ip
	bl sub_0807DBCC
	pop {r0}
	bx r0
	.align 2, 0
_0809D644: .4byte gUnk_08351648
_0809D648: .4byte sub_0809D654
_0809D64C: .4byte 0xFFFBFFFF
_0809D650: .4byte 0x0000FFFF

	thumb_func_start sub_0809D654
sub_0809D654: @ 0x0809D654
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x85
	ldrb r0, [r2]
	cmp r0, #6
	bhi _0809D6CE
	ldrh r0, [r4, #4]
	movs r1, #7
	ands r1, r0
	ldrb r0, [r2]
	cmp r1, r0
	bne _0809D698
	ldr r0, [r4, #8]
	ldr r1, _0809D690 @ =0xFFFFFBFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _0809D694 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
	adds r1, r4, #0
	adds r1, #0x83
	strb r0, [r1]
	b _0809D6AC
	.align 2, 0
_0809D690: .4byte 0xFFFFFBFF
_0809D694: .4byte gUnk_08351648
_0809D698:
	cmp r1, #7
	bne _0809D6AC
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0809D6AC:
	ldrh r1, [r4, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809D6C2
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
	b _0809D6E0
_0809D6C2:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
	b _0809D6E0
_0809D6CE:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	b _0809D6FC
_0809D6E0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x78
	ble _0809D704
	ldr r2, _0809D70C @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r4, #8]
_0809D6FC:
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_0809D704:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809D70C: .4byte 0x00000292

	thumb_func_start sub_0809D710
sub_0809D710: @ 0x0809D710
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, [r3, #0x78]
	ldr r4, _0809D74C @ =sub_0809F988
	cmp r0, r4
	beq _0809D7BC
	movs r0, #0
	strh r0, [r3, #4]
	ldr r2, _0809D750 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809D754 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809D758 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809D760
	ldr r2, _0809D75C @ =gUnk_08351648
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0]
	b _0809D772
	.align 2, 0
_0809D74C: .4byte sub_0809F988
_0809D750: .4byte gRngVal
_0809D754: .4byte 0x00196225
_0809D758: .4byte 0x3C6EF35F
_0809D75C: .4byte gUnk_08351648
_0809D760:
	ldr r2, _0809D7A0 @ =gUnk_08351648
	adds r0, r3, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #1]
_0809D772:
	adds r1, r3, #0
	adds r1, #0x83
	strb r0, [r1]
	str r4, [r3, #0x78]
	ldr r0, [r3, #8]
	ldr r1, _0809D7A4 @ =0xFFFFFEDF
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	ldr r1, _0809D7A8 @ =0x0FFBFFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #0x5c]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0809D7AC
	str r1, [r3, #0x5c]
	b _0809D7AE
	.align 2, 0
_0809D7A0: .4byte gUnk_08351648
_0809D7A4: .4byte 0xFFFFFEDF
_0809D7A8: .4byte 0x0FFBFFFF
_0809D7AC:
	str r0, [r3, #0x5c]
_0809D7AE:
	adds r1, r3, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _0809D7C4 @ =0x0000FFC0
	strh r0, [r1]
_0809D7BC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0809D7C4: .4byte 0x0000FFC0

	thumb_func_start sub_0809D7C8
sub_0809D7C8: @ 0x0809D7C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	mov r7, r8
	adds r7, #0x10
	mov r1, r8
	ldr r0, [r1, #0x10]
	cmp r0, #0
	beq _0809D8BC
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	mov sb, r1
	ands r0, r1
	cmp r0, #0
	bne _0809D8BC
	ldr r1, _0809D884 @ =gUnk_02020EE0
	ldr r6, _0809D888 @ =gUnk_0203AD3C
	ldrb r3, [r6]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r3, r0
	adds r0, r0, r1
	adds r0, #0x60
	mov r1, r8
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _0809D8BC
	mov r0, r8
	ldr r2, [r0, #0x40]
	asrs r2, r2, #8
	ldr r4, _0809D88C @ =gUnk_02023530
	movs r5, #0xcd
	lsls r5, r5, #3
	adds r0, r3, #0
	muls r0, r5, r0
	adds r1, r4, #0
	adds r1, #0xc
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r0, r8
	adds r0, #0x54
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r3, r3, r2
	movs r1, #0
	mov ip, r1
	strh r3, [r7, #0x10]
	mov r0, r8
	ldr r2, [r0, #0x44]
	asrs r2, r2, #8
	ldrb r0, [r6]
	muls r0, r5, r0
	adds r4, #0x10
	adds r0, r0, r4
	ldr r0, [r0]
	asrs r0, r0, #8
	subs r2, r2, r0
	mov r0, r8
	adds r0, #0x55
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r4, _0809D890 @ =gUnk_0203AD18
	ldrh r0, [r4]
	adds r3, r3, r0
	strh r3, [r7, #0x10]
	adds r1, r1, r2
	ldrh r4, [r4, #2]
	adds r1, r1, r4
	strh r1, [r7, #0x12]
	ldrb r4, [r7, #0x1c]
	mov r1, ip
	strb r1, [r7, #0x1c]
	adds r0, r7, #0
	bl sub_08155128
	strb r4, [r7, #0x1c]
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809D898
	ldr r0, [r7, #8]
	ldr r1, _0809D894 @ =0xFFFFFBFF
	ands r0, r1
	b _0809D89E
	.align 2, 0
_0809D884: .4byte gUnk_02020EE0
_0809D888: .4byte gUnk_0203AD3C
_0809D88C: .4byte gUnk_02023530
_0809D890: .4byte gUnk_0203AD18
_0809D894: .4byte 0xFFFFFBFF
_0809D898:
	ldr r0, [r7, #8]
	mov r1, sb
	orrs r0, r1
_0809D89E:
	str r0, [r7, #8]
	mov r1, r8
	ldr r0, [r1, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0809D8B6
	adds r0, r7, #0
	bl sub_081564D8
	b _0809D8BC
_0809D8B6:
	adds r0, r7, #0
	bl sub_0815604C
_0809D8BC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809D8C8
sub_0809D8C8: @ 0x0809D8C8
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	movs r7, #0
	movs r6, #0
	adds r0, #0x3e
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r3, [r4, #0x40]
	adds r2, r3, r0
	ldr r0, _0809D97C @ =gUnk_02023530
	mov ip, r0
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x50
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	bge _0809D916
	adds r0, r4, #0
	adds r0, #0x3c
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r3, r0
	mov r0, ip
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	bgt _0809D91C
_0809D916:
	subs r6, r0, r2
	adds r0, r3, r6
	str r0, [r4, #0x40]
_0809D91C:
	adds r0, r5, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r3, [r5, #0x44]
	adds r2, r3, r0
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0x54
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	bge _0809D95E
	adds r0, r5, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r2, r3, r0
	mov r0, ip
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	bgt _0809D966
_0809D95E:
	subs r7, r0, r2
	ldr r0, [r4, #0x44]
	adds r0, r0, r7
	str r0, [r4, #0x44]
_0809D966:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809D980
	adds r0, r4, #0
	bl sub_08009DF8
	b _0809D986
	.align 2, 0
_0809D97C: .4byte gUnk_02023530
_0809D980:
	adds r0, r4, #0
	bl sub_08009DE8
_0809D986:
	ldr r0, [r4, #0x40]
	subs r0, r0, r6
	str r0, [r4, #0x40]
	ldr r0, [r4, #0x44]
	subs r0, r0, r7
	str r0, [r4, #0x44]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809D998
sub_0809D998: @ 0x0809D998
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2, #0x40]
	adds r4, r0, r1
	ldr r0, _0809DA20 @ =gUnk_02023530
	mov ip, r0
	adds r0, r2, #0
	adds r0, #0x56
	ldrb r5, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	adds r3, r5, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0x50
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r4, r0
	bgt _0809DA28
	mov r0, ip
	adds r0, #0x48
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r4, r0
	blt _0809DA28
	adds r0, r2, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, #1
	lsls r0, r0, #8
	ldr r1, [r2, #0x44]
	adds r2, r1, r0
	mov r0, ip
	adds r0, #0x54
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	bgt _0809DA28
	mov r0, ip
	adds r0, #0x4c
	adds r0, r3, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _0809DA28
	lsls r1, r4, #4
	lsrs r1, r1, #0x10
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_080023E4
	ldr r1, _0809DA24 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0809DA28
	movs r0, #1
	b _0809DA2A
	.align 2, 0
_0809DA20: .4byte gUnk_02023530
_0809DA24: .4byte gUnk_082D88B8
_0809DA28:
	movs r0, #0
_0809DA2A:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0809DA30
sub_0809DA30: @ 0x0809DA30
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0x82
	ldrb r0, [r0]
	subs r0, #5
	cmp r0, #0xd5
	bls _0809DA40
	b _0809E1FC
_0809DA40:
	lsls r0, r0, #2
	ldr r1, _0809DA4C @ =_0809DA50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809DA4C: .4byte _0809DA50
_0809DA50: @ jump table
	.4byte _0809DFC0 @ case 0
	.4byte _0809E1FC @ case 1
	.4byte _0809E1FC @ case 2
	.4byte _0809E1FC @ case 3
	.4byte _0809E1FC @ case 4
	.4byte _0809E1FC @ case 5
	.4byte _0809E1FC @ case 6
	.4byte _0809E1FC @ case 7
	.4byte _0809E1FC @ case 8
	.4byte _0809E1FC @ case 9
	.4byte _0809E1FC @ case 10
	.4byte _0809E1FC @ case 11
	.4byte _0809E1FC @ case 12
	.4byte _0809E1FC @ case 13
	.4byte _0809E1FC @ case 14
	.4byte _0809E1FC @ case 15
	.4byte _0809E1FC @ case 16
	.4byte _0809E1FC @ case 17
	.4byte _0809E1FC @ case 18
	.4byte _0809E1FC @ case 19
	.4byte _0809E1FC @ case 20
	.4byte _0809E1FC @ case 21
	.4byte _0809E1FC @ case 22
	.4byte _0809E1FC @ case 23
	.4byte _0809E1FC @ case 24
	.4byte _0809E1FC @ case 25
	.4byte _0809E1FC @ case 26
	.4byte _0809E1FC @ case 27
	.4byte _0809E1FC @ case 28
	.4byte _0809E1F4 @ case 29
	.4byte _0809E1FC @ case 30
	.4byte _0809DFC0 @ case 31
	.4byte _0809E1FC @ case 32
	.4byte _0809E1FC @ case 33
	.4byte _0809E1FC @ case 34
	.4byte _0809E1FC @ case 35
	.4byte _0809E1FC @ case 36
	.4byte _0809E1FC @ case 37
	.4byte _0809E1FC @ case 38
	.4byte _0809E1FC @ case 39
	.4byte _0809E1FC @ case 40
	.4byte _0809E1F4 @ case 41
	.4byte _0809DF1C @ case 42
	.4byte _0809E1FC @ case 43
	.4byte _0809E1FC @ case 44
	.4byte _0809E1FC @ case 45
	.4byte _0809E1FC @ case 46
	.4byte _0809E1FC @ case 47
	.4byte _0809E1FC @ case 48
	.4byte _0809E1FC @ case 49
	.4byte _0809E1FC @ case 50
	.4byte _0809E1FC @ case 51
	.4byte _0809E1FC @ case 52
	.4byte _0809E1FC @ case 53
	.4byte _0809E1FC @ case 54
	.4byte _0809E1FC @ case 55
	.4byte _0809E1FC @ case 56
	.4byte _0809E1FC @ case 57
	.4byte _0809E1FC @ case 58
	.4byte _0809E1FC @ case 59
	.4byte _0809E1FC @ case 60
	.4byte _0809E1FC @ case 61
	.4byte _0809E1FC @ case 62
	.4byte _0809E1FC @ case 63
	.4byte _0809E1FC @ case 64
	.4byte _0809E1FC @ case 65
	.4byte _0809E1FC @ case 66
	.4byte _0809E1FC @ case 67
	.4byte _0809E1FC @ case 68
	.4byte _0809E1FC @ case 69
	.4byte _0809E1FC @ case 70
	.4byte _0809E1FC @ case 71
	.4byte _0809E1FC @ case 72
	.4byte _0809E1FC @ case 73
	.4byte _0809E1FC @ case 74
	.4byte _0809E1FC @ case 75
	.4byte _0809E1FC @ case 76
	.4byte _0809E1FC @ case 77
	.4byte _0809E1FC @ case 78
	.4byte _0809E1FC @ case 79
	.4byte _0809E1FC @ case 80
	.4byte _0809E1FC @ case 81
	.4byte _0809E1FC @ case 82
	.4byte _0809E1FC @ case 83
	.4byte _0809E1FC @ case 84
	.4byte _0809E1FC @ case 85
	.4byte _0809E1FC @ case 86
	.4byte _0809E1FC @ case 87
	.4byte _0809E1FC @ case 88
	.4byte _0809E1FC @ case 89
	.4byte _0809E1FC @ case 90
	.4byte _0809E1FC @ case 91
	.4byte _0809E1FC @ case 92
	.4byte _0809E1FC @ case 93
	.4byte _0809E1FC @ case 94
	.4byte _0809E1FC @ case 95
	.4byte _0809E1FC @ case 96
	.4byte _0809E1FC @ case 97
	.4byte _0809E1FC @ case 98
	.4byte _0809E1FC @ case 99
	.4byte _0809E1FC @ case 100
	.4byte _0809E1FC @ case 101
	.4byte _0809E1FC @ case 102
	.4byte _0809E1FC @ case 103
	.4byte _0809E1FC @ case 104
	.4byte _0809E1FC @ case 105
	.4byte _0809E1FC @ case 106
	.4byte _0809E1FC @ case 107
	.4byte _0809E1FC @ case 108
	.4byte _0809E1FC @ case 109
	.4byte _0809E1FC @ case 110
	.4byte _0809E1FC @ case 111
	.4byte _0809E1FC @ case 112
	.4byte _0809E1FC @ case 113
	.4byte _0809E1FC @ case 114
	.4byte _0809E1FC @ case 115
	.4byte _0809E1FC @ case 116
	.4byte _0809E1FC @ case 117
	.4byte _0809E1FC @ case 118
	.4byte _0809E1FC @ case 119
	.4byte _0809E1FC @ case 120
	.4byte _0809E1FC @ case 121
	.4byte _0809E1FC @ case 122
	.4byte _0809E1FC @ case 123
	.4byte _0809E1FC @ case 124
	.4byte _0809E1FC @ case 125
	.4byte _0809E1FC @ case 126
	.4byte _0809E1FC @ case 127
	.4byte _0809E1FC @ case 128
	.4byte _0809E1FC @ case 129
	.4byte _0809E1FC @ case 130
	.4byte _0809E1FC @ case 131
	.4byte _0809E1FC @ case 132
	.4byte _0809E1FC @ case 133
	.4byte _0809E1FC @ case 134
	.4byte _0809E1FC @ case 135
	.4byte _0809E1FC @ case 136
	.4byte _0809E1FC @ case 137
	.4byte _0809E1FC @ case 138
	.4byte _0809E1FC @ case 139
	.4byte _0809E1FC @ case 140
	.4byte _0809E1FC @ case 141
	.4byte _0809E1FC @ case 142
	.4byte _0809E1FC @ case 143
	.4byte _0809E1FC @ case 144
	.4byte _0809E1FC @ case 145
	.4byte _0809E1FC @ case 146
	.4byte _0809E1FC @ case 147
	.4byte _0809E1FC @ case 148
	.4byte _0809E1FC @ case 149
	.4byte _0809E1FC @ case 150
	.4byte _0809E1FC @ case 151
	.4byte _0809DE38 @ case 152
	.4byte _0809E1FC @ case 153
	.4byte _0809E1FC @ case 154
	.4byte _0809DE38 @ case 155
	.4byte _0809DE38 @ case 156
	.4byte _0809E1FC @ case 157
	.4byte _0809E1FC @ case 158
	.4byte _0809E1FC @ case 159
	.4byte _0809E1FC @ case 160
	.4byte _0809E1FC @ case 161
	.4byte _0809E1FC @ case 162
	.4byte _0809DF1C @ case 163
	.4byte _0809DF1C @ case 164
	.4byte _0809DE38 @ case 165
	.4byte _0809DE38 @ case 166
	.4byte _0809DE38 @ case 167
	.4byte _0809DF1C @ case 168
	.4byte _0809E1FC @ case 169
	.4byte _0809E1FC @ case 170
	.4byte _0809E1FC @ case 171
	.4byte _0809E1FC @ case 172
	.4byte _0809DF1C @ case 173
	.4byte _0809E1FC @ case 174
	.4byte _0809E1FC @ case 175
	.4byte _0809DE38 @ case 176
	.4byte _0809DE38 @ case 177
	.4byte _0809E1FC @ case 178
	.4byte _0809DF1C @ case 179
	.4byte _0809E1FC @ case 180
	.4byte _0809DE38 @ case 181
	.4byte _0809E1FC @ case 182
	.4byte _0809E1FC @ case 183
	.4byte _0809E1FC @ case 184
	.4byte _0809E1FC @ case 185
	.4byte _0809E1FC @ case 186
	.4byte _0809E1FC @ case 187
	.4byte _0809E1FC @ case 188
	.4byte _0809E1FC @ case 189
	.4byte _0809E1FC @ case 190
	.4byte _0809E1F4 @ case 191
	.4byte _0809E1FC @ case 192
	.4byte _0809E1F4 @ case 193
	.4byte _0809E1FC @ case 194
	.4byte _0809E1FC @ case 195
	.4byte _0809DF1C @ case 196
	.4byte _0809E1FC @ case 197
	.4byte _0809E1FC @ case 198
	.4byte _0809E1FC @ case 199
	.4byte _0809E1FC @ case 200
	.4byte _0809E1FC @ case 201
	.4byte _0809E1FC @ case 202
	.4byte _0809E1FC @ case 203
	.4byte _0809E1FC @ case 204
	.4byte _0809E1FC @ case 205
	.4byte _0809E1FC @ case 206
	.4byte _0809E1FC @ case 207
	.4byte _0809DE38 @ case 208
	.4byte _0809DDA8 @ case 209
	.4byte _0809DDA8 @ case 210
	.4byte _0809DE38 @ case 211
	.4byte _0809DDA8 @ case 212
	.4byte _0809DF1C @ case 213
_0809DDA8:
	ldr r1, _0809DE18 @ =gUnk_02020EE0
	ldr r0, _0809DE1C @ =gUnk_0203AD3C
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
	bne _0809DE10
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809DDD4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809DE10
_0809DDD4:
	ldr r1, _0809DE20 @ =gUnk_08D60FA4
	ldr r4, _0809DE24 @ =gSongTable
	ldr r2, _0809DE28 @ =0x0000097C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809DDF8
	ldr r1, _0809DE2C @ =0x00000978
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809DE10
_0809DDF8:
	cmp r3, #0
	beq _0809DE0A
	ldr r0, _0809DE30 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809DE10
_0809DE0A:
	ldr r0, _0809DE34 @ =0x0000012F
	bl m4aSongNumStart
_0809DE10:
	movs r2, #0xa6
	lsls r2, r2, #2
	b _0809DF98
	.align 2, 0
_0809DE18: .4byte gUnk_02020EE0
_0809DE1C: .4byte gUnk_0203AD3C
_0809DE20: .4byte gUnk_08D60FA4
_0809DE24: .4byte gSongTable
_0809DE28: .4byte 0x0000097C
_0809DE2C: .4byte 0x00000978
_0809DE30: .4byte gUnk_0203AD10
_0809DE34: .4byte 0x0000012F
_0809DE38:
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bgt _0809DE8C
	ldr r2, _0809DE60 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809DE64 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809DE68 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _0809DE6C @ =0x00005554
	cmp r2, r0
	bhi _0809DE70
	movs r1, #0
	b _0809DE7A
	.align 2, 0
_0809DE60: .4byte gRngVal
_0809DE64: .4byte 0x00196225
_0809DE68: .4byte 0x3C6EF35F
_0809DE6C: .4byte 0x00005554
_0809DE70:
	ldr r0, _0809DE88 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0809DE7A
	movs r1, #1
_0809DE7A:
	cmp r1, #1
	bne _0809DE80
	b _0809E058
_0809DE80:
	cmp r1, #2
	beq _0809DE86
	b _0809E016
_0809DE86:
	b _0809E0E4
	.align 2, 0
_0809DE88: .4byte 0x0000AAA9
_0809DE8C:
	ldr r1, _0809DEFC @ =gUnk_02020EE0
	ldr r0, _0809DF00 @ =gUnk_0203AD3C
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
	bne _0809DEF4
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809DEB8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809DEF4
_0809DEB8:
	ldr r1, _0809DF04 @ =gUnk_08D60FA4
	ldr r4, _0809DF08 @ =gSongTable
	ldr r2, _0809DF0C @ =0x0000097C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809DEDC
	ldr r1, _0809DF10 @ =0x00000978
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809DEF4
_0809DEDC:
	cmp r3, #0
	beq _0809DEEE
	ldr r0, _0809DF14 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809DEF4
_0809DEEE:
	ldr r0, _0809DF18 @ =0x0000012F
	bl m4aSongNumStart
_0809DEF4:
	movs r2, #0xa6
	lsls r2, r2, #2
	b _0809DF98
	.align 2, 0
_0809DEFC: .4byte gUnk_02020EE0
_0809DF00: .4byte gUnk_0203AD3C
_0809DF04: .4byte gUnk_08D60FA4
_0809DF08: .4byte gSongTable
_0809DF0C: .4byte 0x0000097C
_0809DF10: .4byte 0x00000978
_0809DF14: .4byte gUnk_0203AD10
_0809DF18: .4byte 0x0000012F
_0809DF1C:
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _0809DF2A
	b _0809E1F4
_0809DF2A:
	ldr r1, _0809DFA4 @ =gUnk_02020EE0
	ldr r0, _0809DFA8 @ =gUnk_0203AD3C
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
	bne _0809DF96
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809DF56
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809DF96
_0809DF56:
	ldr r1, _0809DFAC @ =gUnk_08D60FA4
	ldr r4, _0809DFB0 @ =gSongTable
	ldr r2, _0809DFB4 @ =0x000009B4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809DF7C
	movs r1, #0x9b
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809DF96
_0809DF7C:
	cmp r3, #0
	beq _0809DF8E
	ldr r0, _0809DFB8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809DF96
_0809DF8E:
	movs r0, #0x9b
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809DF96:
	ldr r2, _0809DFBC @ =0x0000029B
_0809DF98:
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	b _0809E3FC
	.align 2, 0
_0809DFA4: .4byte gUnk_02020EE0
_0809DFA8: .4byte gUnk_0203AD3C
_0809DFAC: .4byte gUnk_08D60FA4
_0809DFB0: .4byte gSongTable
_0809DFB4: .4byte 0x000009B4
_0809DFB8: .4byte gUnk_0203AD10
_0809DFBC: .4byte 0x0000029B
_0809DFC0:
	ldr r0, [r5, #0xc]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0809DFD8
	adds r0, r5, #0
	adds r0, #0x80
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	ble _0809DFD8
	b _0809E1F4
_0809DFD8:
	ldr r2, _0809DFF4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809DFF8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809DFFC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _0809E000 @ =0x00005554
	cmp r2, r0
	bhi _0809E004
	movs r1, #0
	b _0809E00E
	.align 2, 0
_0809DFF4: .4byte gRngVal
_0809DFF8: .4byte 0x00196225
_0809DFFC: .4byte 0x3C6EF35F
_0809E000: .4byte 0x00005554
_0809E004:
	ldr r0, _0809E04C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0809E00E
	movs r1, #1
_0809E00E:
	cmp r1, #1
	beq _0809E058
	cmp r1, #2
	beq _0809E0E4
_0809E016:
	ldr r2, _0809E050 @ =gUnk_02020EE0
	ldr r3, _0809E054 @ =gUnk_0203AD3C
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E034
	b _0809E1B0
_0809E034:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0809E03C
	b _0809E170
_0809E03C:
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r3, [r3]
	cmp r0, r3
	beq _0809E04A
	b _0809E1B0
_0809E04A:
	b _0809E170
	.align 2, 0
_0809E04C: .4byte 0x0000AAA9
_0809E050: .4byte gUnk_02020EE0
_0809E054: .4byte gUnk_0203AD3C
_0809E058:
	ldr r1, _0809E0CC @ =gUnk_02020EE0
	ldr r0, _0809E0D0 @ =gUnk_0203AD3C
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
	beq _0809E076
	b _0809E1B0
_0809E076:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809E088
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0809E088
	b _0809E1B0
_0809E088:
	ldr r1, _0809E0D4 @ =gUnk_08D60FA4
	ldr r4, _0809E0D8 @ =gSongTable
	ldr r2, _0809E0DC @ =0x00000964
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E0B0
	movs r1, #0x96
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0809E0B0
	b _0809E1B0
_0809E0B0:
	cmp r3, #0
	beq _0809E0C2
	ldr r0, _0809E0E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E1B0
_0809E0C2:
	movs r0, #0x96
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0809E1B0
	.align 2, 0
_0809E0CC: .4byte gUnk_02020EE0
_0809E0D0: .4byte gUnk_0203AD3C
_0809E0D4: .4byte gUnk_08D60FA4
_0809E0D8: .4byte gSongTable
_0809E0DC: .4byte 0x00000964
_0809E0E0: .4byte gUnk_0203AD10
_0809E0E4:
	ldr r1, _0809E150 @ =gUnk_02020EE0
	ldr r0, _0809E154 @ =gUnk_0203AD3C
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
	bne _0809E1B0
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809E110
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809E1B0
_0809E110:
	ldr r1, _0809E158 @ =gUnk_08D60FA4
	ldr r4, _0809E15C @ =gSongTable
	ldr r2, _0809E160 @ =0x0000096C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E134
	ldr r1, _0809E164 @ =0x00000968
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809E1B0
_0809E134:
	cmp r3, #0
	beq _0809E146
	ldr r0, _0809E168 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E1B0
_0809E146:
	ldr r0, _0809E16C @ =0x0000012D
	bl m4aSongNumStart
	b _0809E1B0
	.align 2, 0
_0809E150: .4byte gUnk_02020EE0
_0809E154: .4byte gUnk_0203AD3C
_0809E158: .4byte gUnk_08D60FA4
_0809E15C: .4byte gSongTable
_0809E160: .4byte 0x0000096C
_0809E164: .4byte 0x00000968
_0809E168: .4byte gUnk_0203AD10
_0809E16C: .4byte 0x0000012D
_0809E170:
	ldr r1, _0809E1D4 @ =gUnk_08D60FA4
	ldr r4, _0809E1D8 @ =gSongTable
	ldr r2, _0809E1DC @ =0x00000974
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E196
	movs r1, #0x97
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809E1B0
_0809E196:
	cmp r3, #0
	beq _0809E1A8
	ldr r0, _0809E1E0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E1B0
_0809E1A8:
	movs r0, #0x97
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809E1B0:
	ldr r2, _0809E1E4 @ =0x00000292
	ldr r4, _0809E1E8 @ =gRngVal
	ldr r1, [r4]
	ldr r0, _0809E1EC @ =0x00196225
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _0809E1F0 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r4]
	lsrs r3, r3, #0x10
	movs r0, #3
	ands r3, r0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0808AE30
	b _0809E3FC
	.align 2, 0
_0809E1D4: .4byte gUnk_08D60FA4
_0809E1D8: .4byte gSongTable
_0809E1DC: .4byte 0x00000974
_0809E1E0: .4byte gUnk_0203AD10
_0809E1E4: .4byte 0x00000292
_0809E1E8: .4byte gRngVal
_0809E1EC: .4byte 0x00196225
_0809E1F0: .4byte 0x3C6EF35F
_0809E1F4:
	adds r0, r5, #0
	bl sub_08073D2C
	b _0809E3FC
_0809E1FC:
	ldr r2, _0809E218 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0809E21C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0809E220 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _0809E224 @ =0x00005554
	cmp r2, r0
	bhi _0809E228
	movs r1, #0
	b _0809E232
	.align 2, 0
_0809E218: .4byte gRngVal
_0809E21C: .4byte 0x00196225
_0809E220: .4byte 0x3C6EF35F
_0809E224: .4byte 0x00005554
_0809E228:
	ldr r0, _0809E270 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _0809E232
	movs r1, #1
_0809E232:
	cmp r1, #1
	beq _0809E27C
	cmp r1, #2
	beq _0809E308
	ldr r2, _0809E274 @ =gUnk_02020EE0
	ldr r3, _0809E278 @ =gUnk_0203AD3C
	ldrb r1, [r3]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E258
	b _0809E3D4
_0809E258:
	ldrb r0, [r5]
	cmp r0, #0
	beq _0809E260
	b _0809E394
_0809E260:
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrb r3, [r3]
	cmp r0, r3
	beq _0809E26E
	b _0809E3D4
_0809E26E:
	b _0809E394
	.align 2, 0
_0809E270: .4byte 0x0000AAA9
_0809E274: .4byte gUnk_02020EE0
_0809E278: .4byte gUnk_0203AD3C
_0809E27C:
	ldr r1, _0809E2F0 @ =gUnk_02020EE0
	ldr r0, _0809E2F4 @ =gUnk_0203AD3C
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
	beq _0809E29A
	b _0809E3D4
_0809E29A:
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809E2AC
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	beq _0809E2AC
	b _0809E3D4
_0809E2AC:
	ldr r1, _0809E2F8 @ =gUnk_08D60FA4
	ldr r4, _0809E2FC @ =gSongTable
	ldr r2, _0809E300 @ =0x00000964
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E2D4
	movs r1, #0x96
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bls _0809E2D4
	b _0809E3D4
_0809E2D4:
	cmp r3, #0
	beq _0809E2E6
	ldr r0, _0809E304 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E3D4
_0809E2E6:
	movs r0, #0x96
	lsls r0, r0, #1
	bl m4aSongNumStart
	b _0809E3D4
	.align 2, 0
_0809E2F0: .4byte gUnk_02020EE0
_0809E2F4: .4byte gUnk_0203AD3C
_0809E2F8: .4byte gUnk_08D60FA4
_0809E2FC: .4byte gSongTable
_0809E300: .4byte 0x00000964
_0809E304: .4byte gUnk_0203AD10
_0809E308:
	ldr r1, _0809E374 @ =gUnk_02020EE0
	ldr r0, _0809E378 @ =gUnk_0203AD3C
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
	bne _0809E3D4
	ldrb r0, [r5]
	cmp r0, #0
	bne _0809E334
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _0809E3D4
_0809E334:
	ldr r1, _0809E37C @ =gUnk_08D60FA4
	ldr r4, _0809E380 @ =gSongTable
	ldr r2, _0809E384 @ =0x0000096C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E358
	ldr r1, _0809E388 @ =0x00000968
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809E3D4
_0809E358:
	cmp r3, #0
	beq _0809E36A
	ldr r0, _0809E38C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E3D4
_0809E36A:
	ldr r0, _0809E390 @ =0x0000012D
	bl m4aSongNumStart
	b _0809E3D4
	.align 2, 0
_0809E374: .4byte gUnk_02020EE0
_0809E378: .4byte gUnk_0203AD3C
_0809E37C: .4byte gUnk_08D60FA4
_0809E380: .4byte gSongTable
_0809E384: .4byte 0x0000096C
_0809E388: .4byte 0x00000968
_0809E38C: .4byte gUnk_0203AD10
_0809E390: .4byte 0x0000012D
_0809E394:
	ldr r1, _0809E404 @ =gUnk_08D60FA4
	ldr r4, _0809E408 @ =gSongTable
	ldr r2, _0809E40C @ =0x00000974
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _0809E3BA
	movs r1, #0x97
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _0809E3D4
_0809E3BA:
	cmp r3, #0
	beq _0809E3CC
	ldr r0, _0809E410 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0809E3D4
_0809E3CC:
	movs r0, #0x97
	lsls r0, r0, #1
	bl m4aSongNumStart
_0809E3D4:
	ldr r2, _0809E414 @ =0x00000292
	ldr r4, _0809E418 @ =gRngVal
	ldr r1, [r4]
	ldr r0, _0809E41C @ =0x00196225
	adds r3, r1, #0
	muls r3, r0, r3
	ldr r0, _0809E420 @ =0x3C6EF35F
	adds r3, r3, r0
	str r3, [r4]
	lsrs r3, r3, #0x10
	movs r0, #3
	ands r3, r0
	adds r0, r5, #0
	movs r1, #0
	bl sub_0808AE30
	movs r0, #1
	adds r1, r5, #0
	bl sub_0806FE64
_0809E3FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809E404: .4byte gUnk_08D60FA4
_0809E408: .4byte gSongTable
_0809E40C: .4byte 0x00000974
_0809E410: .4byte gUnk_0203AD10
_0809E414: .4byte 0x00000292
_0809E418: .4byte gRngVal
_0809E41C: .4byte 0x00196225
_0809E420: .4byte 0x3C6EF35F

	thumb_func_start sub_0809E424
sub_0809E424: @ 0x0809E424
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0809E45C @ =sub_0809E55C
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809E460 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E464
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0809E46C
	.align 2, 0
_0809E45C: .4byte sub_0809E55C
_0809E460: .4byte sub_0803DCCC
_0809E464:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0809E46C:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	mov sl, r2
	mov r6, sl
	orrs r6, r0
	movs r5, #0
	orrs r6, r5
	strh r6, [r7, #6]
	ldr r1, _0809E544 @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0809E548 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0809E54C @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0809E544 @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0809E550 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r4, #1
	adds r0, r4, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E516
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0809E516:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0809E554 @ =0x06012000
	ldr r3, _0809E558 @ =0x00000297
	str r4, [sp]
	mov r5, ip
	str r5, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E544: .4byte gRngVal
_0809E548: .4byte 0x00196225
_0809E54C: .4byte 0x3C6EF35F
_0809E550: .4byte gUnk_03000510
_0809E554: .4byte 0x06012000
_0809E558: .4byte 0x00000297

	thumb_func_start sub_0809E55C
sub_0809E55C: @ 0x0809E55C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809E580 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E584
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809E58C
	.align 2, 0
_0809E580: .4byte gCurTask
_0809E584:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809E58C:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0809E5A8
	ldr r0, [r2]
	bl TaskDestroy
	b _0809E78C
_0809E5A8:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0809E5BA
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0809E78C
_0809E5BA:
	mov r5, ip
	cmp r5, #0
	beq _0809E5F0
	ldr r0, _0809E5EC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, ip
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E660
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0809E660
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0809E78C
	.align 2, 0
_0809E5EC: .4byte gUnk_03000510
_0809E5F0:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0809E658 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E632
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E632
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E632
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E632
	movs r3, #4
_0809E632:
	ldr r0, _0809E65C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E660
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809E660
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809E78C
	.align 2, 0
_0809E658: .4byte gUnk_02020EE0
_0809E65C: .4byte gUnk_03000510
_0809E660:
	ldr r0, _0809E6D8 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809E6A4
	ldr r5, _0809E6DC @ =gUnk_02023530
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0809E6E0 @ =gUnk_02026D50
_0809E672:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809E69C
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809E6B6
_0809E69C:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809E672
_0809E6A4:
	movs r0, #1
	cmp r0, #0
	beq _0809E6B6
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809E6B6:
	ldrh r2, [r7, #6]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _0809E6E8
	ldrh r1, [r7, #8]
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #1
	bne _0809E6E4
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r2
	strh r0, [r7, #6]
	b _0809E78C
	.align 2, 0
_0809E6D8: .4byte gUnk_0203AD44
_0809E6DC: .4byte gUnk_02023530
_0809E6E0: .4byte gUnk_02026D50
_0809E6E4:
	adds r0, r1, #1
	strh r0, [r7, #8]
_0809E6E8:
	ldrb r0, [r7, #1]
	lsls r2, r0, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0xa
	bls _0809E760
	ldr r6, _0809E754 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809E758 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809E75C @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	movs r6, #8
	ldrsh r0, [r7, r6]
	cmp r0, #1
	beq _0809E770
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r7, #6]
	b _0809E770
	.align 2, 0
_0809E754: .4byte gRngVal
_0809E758: .4byte 0x00196225
_0809E75C: .4byte 0x3C6EF35F
_0809E760:
	ldr r1, _0809E798 @ =gUnk_08352DF8
	lsrs r0, r2, #0x19
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r7, #0x3e]
	ldrh r0, [r0]
	subs r1, r1, r0
	strh r1, [r7, #0x3e]
_0809E770:
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0809E78C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E798: .4byte gUnk_08352DF8

	thumb_func_start sub_0809E79C
sub_0809E79C: @ 0x0809E79C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0809E7D4 @ =sub_0809E8D4
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809E7D8 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E7DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0809E7E4
	.align 2, 0
_0809E7D4: .4byte sub_0809E8D4
_0809E7D8: .4byte sub_0803DCCC
_0809E7DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0809E7E4:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	ldrh r0, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #7
	mov sl, r2
	mov r6, sl
	orrs r6, r0
	movs r5, #0
	orrs r6, r5
	strh r6, [r7, #6]
	ldr r1, _0809E8BC @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0809E8C0 @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0809E8C4 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0809E8BC @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0809E8C8 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E88C
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0809E88C:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0809E8CC @ =0x06012000
	ldr r3, _0809E8D0 @ =0x0000029D
	movs r0, #0
	str r0, [sp]
	mov r5, ip
	str r5, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809E8BC: .4byte gRngVal
_0809E8C0: .4byte 0x00196225
_0809E8C4: .4byte 0x3C6EF35F
_0809E8C8: .4byte gUnk_03000510
_0809E8CC: .4byte 0x06012000
_0809E8D0: .4byte 0x0000029D

	thumb_func_start sub_0809E8D4
sub_0809E8D4: @ 0x0809E8D4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809E8F8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809E8FC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809E904
	.align 2, 0
_0809E8F8: .4byte gCurTask
_0809E8FC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809E904:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0809E920
	ldr r0, [r2]
	bl TaskDestroy
	b _0809EB7E
_0809E920:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0809E932
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0809EB7E
_0809E932:
	mov r5, ip
	cmp r5, #0
	beq _0809E968
	ldr r0, _0809E964 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, ip
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E9D8
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0809E9D8
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0809EB7E
	.align 2, 0
_0809E964: .4byte gUnk_03000510
_0809E968:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0809E9D0 @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809E9AA
	movs r3, #4
_0809E9AA:
	ldr r0, _0809E9D4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809E9D8
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809E9D8
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809EB7E
	.align 2, 0
_0809E9D0: .4byte gUnk_02020EE0
_0809E9D4: .4byte gUnk_03000510
_0809E9D8:
	ldr r0, _0809EA44 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809EA1C
	ldr r5, _0809EA48 @ =gUnk_02023530
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0809EA4C @ =gUnk_02026D50
_0809E9EA:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809EA14
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809EA2E
_0809EA14:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809E9EA
_0809EA1C:
	movs r0, #1
	cmp r0, #0
	beq _0809EA2E
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809EA2E:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809EA50
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0809EB7E
	.align 2, 0
_0809EA44: .4byte gUnk_0203AD44
_0809EA48: .4byte gUnk_02023530
_0809EA4C: .4byte gUnk_02026D50
_0809EA50:
	ldrb r0, [r7, #1]
	cmp r0, #0xd
	beq _0809EA5E
	cmp r0, #0x2d
	beq _0809EA5E
	cmp r0, #0x31
	bne _0809EAAE
_0809EA5E:
	ldr r6, _0809EAD4 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809EAD8 @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809EADC @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
_0809EAAE:
	movs r6, #0x3c
	ldrsh r1, [r7, r6]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	ldrb r0, [r7, #1]
	cmp r0, #0xf
	bhi _0809EB78
	lsls r0, r0, #2
	ldr r1, _0809EAE0 @ =_0809EAE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0809EAD4: .4byte gRngVal
_0809EAD8: .4byte 0x00196225
_0809EADC: .4byte 0x3C6EF35F
_0809EAE0: .4byte _0809EAE4
_0809EAE4: @ jump table
	.4byte _0809EB40 @ case 0
	.4byte _0809EB24 @ case 1
	.4byte _0809EB68 @ case 2
	.4byte _0809EB78 @ case 3
	.4byte _0809EB78 @ case 4
	.4byte _0809EB78 @ case 5
	.4byte _0809EB78 @ case 6
	.4byte _0809EB78 @ case 7
	.4byte _0809EB78 @ case 8
	.4byte _0809EB78 @ case 9
	.4byte _0809EB78 @ case 10
	.4byte _0809EB78 @ case 11
	.4byte _0809EB78 @ case 12
	.4byte _0809EB40 @ case 13
	.4byte _0809EB4E @ case 14
	.4byte _0809EB68 @ case 15
_0809EB24:
	ldr r1, _0809EB3C @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r7, #0x3c]
	adds r0, r0, r2
	strh r0, [r7, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r5, [r7, #0x3e]
	adds r0, r0, r5
	b _0809EB76
	.align 2, 0
_0809EB3C: .4byte 0xFFFFFF00
_0809EB40:
	movs r5, #0x80
	lsls r5, r5, #1
	adds r0, r5, #0
	ldrh r6, [r7, #0x3c]
	adds r0, r0, r6
	strh r0, [r7, #0x3c]
	b _0809EB78
_0809EB4E:
	ldr r1, _0809EB64 @ =0xFFFFFF00
	adds r0, r1, #0
	ldrh r2, [r7, #0x3c]
	adds r0, r0, r2
	strh r0, [r7, #0x3c]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r5, [r7, #0x3e]
	adds r0, r0, r5
	b _0809EB76
	.align 2, 0
_0809EB64: .4byte 0xFFFFFF00
_0809EB68:
	ldr r6, _0809EB8C @ =0xFFFFFF00
	adds r0, r6, #0
	ldrh r2, [r7, #0x3c]
	adds r1, r0, r2
	strh r1, [r7, #0x3c]
	ldrh r3, [r7, #0x3e]
	adds r0, r0, r3
_0809EB76:
	strh r0, [r7, #0x3e]
_0809EB78:
	adds r0, r7, #0
	bl sub_0806FAC8
_0809EB7E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809EB8C: .4byte 0xFFFFFF00

	thumb_func_start sub_0809EB90
sub_0809EB90: @ 0x0809EB90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _0809EBC8 @ =sub_0809ECD0
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _0809EBCC @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x48
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809EBD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0809EBD8
	.align 2, 0
_0809EBC8: .4byte sub_0809ECD0
_0809EBCC: .4byte sub_0803DCCC
_0809EBD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0809EBD8:
	adds r0, r7, #0
	bl sub_0803E3B0
	movs r0, #3
	strb r0, [r7]
	mov r1, sb
	ldr r0, [r1, #0x40]
	str r0, [r7, #0x34]
	ldr r0, [r1, #0x44]
	str r0, [r7, #0x38]
	str r1, [r7, #0x44]
	mov r0, sb
	adds r0, #0x60
	ldrh r0, [r0]
	adds r1, r7, #0
	adds r1, #0x42
	strh r0, [r1]
	movs r2, #0
	strh r2, [r7, #8]
	ldrh r0, [r7, #6]
	movs r5, #0x80
	lsls r5, r5, #7
	mov sl, r5
	mov r6, sl
	orrs r6, r0
	movs r0, #0
	orrs r6, r0
	strh r6, [r7, #6]
	movs r0, #0x40
	strh r0, [r7, #4]
	ldr r1, _0809ECB8 @ =gRngVal
	ldr r0, [r1]
	ldr r4, _0809ECBC @ =0x00196225
	muls r0, r4, r0
	ldr r3, _0809ECC0 @ =0x3C6EF35F
	adds r0, r0, r3
	adds r2, r0, #0
	muls r2, r4, r2
	adds r2, r2, r3
	str r2, [r1]
	lsrs r1, r2, #0x10
	movs r5, #0xf
	mov r8, r5
	adds r0, r1, #0
	ands r0, r5
	movs r5, #7
	ands r1, r5
	adds r0, r0, r1
	movs r1, #0xc
	mov ip, r1
	subs r0, r1, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r2, #0
	muls r0, r4, r0
	adds r0, r0, r3
	adds r1, r0, #0
	muls r1, r4, r1
	adds r1, r1, r3
	ldr r2, _0809ECB8 @ =gRngVal
	str r1, [r2]
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	mov r2, r8
	ands r0, r2
	ands r1, r5
	adds r0, r0, r1
	mov r5, ip
	subs r0, r5, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3e]
	ldr r0, _0809ECC4 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, sb
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809EC88
	movs r1, #0x80
	lsls r1, r1, #6
	adds r0, r1, #0
	orrs r6, r0
	strh r6, [r7, #6]
_0809EC88:
	ldrh r0, [r7, #6]
	mov r2, sl
	orrs r0, r2
	strh r0, [r7, #6]
	adds r1, r7, #0
	adds r1, #0xc
	ldr r2, _0809ECC8 @ =0x06012000
	ldr r3, _0809ECCC @ =0x0000029E
	movs r5, #0
	str r5, [sp]
	mov r0, ip
	str r0, [sp, #4]
	adds r0, r7, #0
	bl sub_080709F8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0809ECB8: .4byte gRngVal
_0809ECBC: .4byte 0x00196225
_0809ECC0: .4byte 0x3C6EF35F
_0809ECC4: .4byte gUnk_03000510
_0809ECC8: .4byte 0x06012000
_0809ECCC: .4byte 0x0000029E

	thumb_func_start sub_0809ECD0
sub_0809ECD0: @ 0x0809ECD0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _0809ECF4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0809ECF8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0809ED00
	.align 2, 0
_0809ECF4: .4byte gCurTask
_0809ECF8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0809ED00:
	adds r7, r0, #0
	ldr r0, [r7, #0x44]
	mov ip, r0
	ldrh r3, [r7, #6]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _0809ED1C
	ldr r0, [r2]
	bl TaskDestroy
	b _0809EF7C
_0809ED1C:
	mov r2, ip
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	beq _0809ED2E
	adds r0, r1, #0
	orrs r0, r3
	strh r0, [r7, #6]
	b _0809EF7C
_0809ED2E:
	mov r5, ip
	cmp r5, #0
	beq _0809ED64
	ldr r0, _0809ED60 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	mov r1, ip
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809EDD4
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r3
	cmp r0, #0
	bne _0809EDD4
	adds r0, r7, #0
	bl sub_0803DBC8
	b _0809EF7C
	.align 2, 0
_0809ED60: .4byte gUnk_03000510
_0809ED64:
	adds r4, r7, #0
	movs r3, #0
	ldr r2, _0809EDCC @ =gUnk_02020EE0
	adds r0, r2, #0
	adds r0, #0x60
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #1
	movs r6, #0x82
	lsls r6, r6, #2
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #2
	movs r5, #0xec
	lsls r5, r5, #2
	adds r0, r2, r5
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #3
	movs r6, #0xab
	lsls r6, r6, #3
	adds r0, r2, r6
	ldrh r0, [r0]
	cmp r0, r1
	beq _0809EDA6
	movs r3, #4
_0809EDA6:
	ldr r0, _0809EDD0 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	lsls r0, r3
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _0809EDD4
	ldrh r1, [r4, #6]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	bne _0809EDD4
	adds r0, r4, #0
	bl sub_0803DBC8
	b _0809EF7C
	.align 2, 0
_0809EDCC: .4byte gUnk_02020EE0
_0809EDD0: .4byte gUnk_03000510
_0809EDD4:
	ldr r0, _0809EE48 @ =gUnk_0203AD44
	ldrb r0, [r0]
	cmp r0, #0
	beq _0809EE18
	ldr r5, _0809EE4C @ =gUnk_02023530
	adds r1, r7, #0
	adds r1, #0x42
	ldrh r3, [r1]
	ldr r4, _0809EE50 @ =gUnk_02026D50
_0809EDE6:
	subs r2, r0, #1
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, r0, r5
	movs r6, #0xbf
	lsls r6, r6, #3
	adds r0, r1, r6
	ldrh r0, [r0]
	cmp r0, r3
	bne _0809EE10
	adds r6, #0x66
	adds r0, r1, r6
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r4
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0809EE2A
_0809EE10:
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _0809EDE6
_0809EE18:
	movs r0, #1
	cmp r0, #0
	beq _0809EE2A
	ldrh r1, [r7, #6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r7, #6]
_0809EE2A:
	ldrh r1, [r7, #6]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0809EE58
	movs r3, #8
	ldrsh r0, [r7, r3]
	cmp r0, #0
	beq _0809EE54
	movs r5, #0x80
	lsls r5, r5, #5
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r7, #6]
	b _0809EF7C
	.align 2, 0
_0809EE48: .4byte gUnk_0203AD44
_0809EE4C: .4byte gUnk_02023530
_0809EE50: .4byte gUnk_02026D50
_0809EE54:
	movs r0, #1
	strh r0, [r7, #8]
_0809EE58:
	ldrb r0, [r7, #1]
	cmp r0, #0x12
	bne _0809EEC2
	ldr r6, _0809EF38 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809EF3C @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809EF40 @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	ldr r0, _0809EF44 @ =0x0000FFC0
	strh r0, [r7, #4]
	movs r6, #8
	ldrsh r0, [r7, r6]
	cmp r0, #0
	bne _0809EEC2
	ldrh r0, [r7, #6]
	movs r1, #4
	orrs r0, r1
	strh r0, [r7, #6]
_0809EEC2:
	ldrb r0, [r7, #1]
	cmp r0, #0x24
	bne _0809EF1C
	ldr r6, _0809EF38 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0809EF3C @ =0x00196225
	muls r0, r5, r0
	ldr r4, _0809EF40 @ =0x3C6EF35F
	adds r0, r0, r4
	adds r3, r0, #0
	muls r3, r5, r3
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	mov sb, r0
	adds r0, r1, #0
	mov r2, sb
	ands r0, r2
	movs r2, #7
	mov r8, r2
	ands r1, r2
	adds r0, r0, r1
	movs r2, #0xc
	subs r0, r2, r0
	lsls r0, r0, #8
	strh r0, [r7, #0x3c]
	adds r0, r3, #0
	muls r0, r5, r0
	adds r0, r0, r4
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	lsrs r0, r0, #0x10
	adds r1, r0, #0
	mov r3, sb
	ands r1, r3
	mov r5, r8
	ands r0, r5
	adds r1, r1, r0
	subs r2, r2, r1
	lsls r2, r2, #8
	strh r2, [r7, #0x3e]
	movs r0, #0x40
	strh r0, [r7, #4]
_0809EF1C:
	ldrb r0, [r7, #1]
	cmp r0, #0x11
	bls _0809EF48
	ldrh r0, [r7, #0x3e]
	subs r0, #0x40
	ldrb r1, [r7, #1]
	subs r1, #0x12
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r7, #0x3e]
	ldrh r0, [r7, #4]
	adds r0, #7
	b _0809EF5E
	.align 2, 0
_0809EF38: .4byte gRngVal
_0809EF3C: .4byte 0x00196225
_0809EF40: .4byte 0x3C6EF35F
_0809EF44: .4byte 0x0000FFC0
_0809EF48:
	ldrh r1, [r7, #0x3e]
	subs r1, #0x40
	ldrb r0, [r7, #1]
	lsls r0, r0, #4
	subs r1, r1, r0
	strh r1, [r7, #0x3e]
	ldrh r0, [r7, #4]
	ldrh r6, [r7, #0x3c]
	adds r1, r0, r6
	strh r1, [r7, #0x3c]
	subs r0, #7
_0809EF5E:
	strh r0, [r7, #4]
	movs r0, #0x3c
	ldrsh r1, [r7, r0]
	mov r2, ip
	ldr r0, [r2, #0x40]
	adds r0, r0, r1
	str r0, [r7, #0x34]
	movs r3, #0x3e
	ldrsh r1, [r7, r3]
	ldr r0, [r2, #0x44]
	adds r0, r0, r1
	str r0, [r7, #0x38]
	adds r0, r7, #0
	bl sub_0806FAC8
_0809EF7C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0809EF88
sub_0809EF88: @ 0x0809EF88
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, _0809F028 @ =gUnk_03000510
	ldrb r3, [r0, #4]
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r5, [r0]
	movs r0, #1
	lsls r0, r5
	movs r1, #0x10
	orrs r0, r1
	ands r3, r0
	cmp r3, #0
	bne _0809F022
	adds r0, r4, #0
	adds r0, #0x3d
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r2, [r4, #0x44]
	adds r2, r2, r0
	ldr r1, _0809F02C @ =gUnk_02023530
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r5, r0
	adds r1, #0x54
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0xc0
	lsls r1, r1, #5
	adds r0, r0, r1
	cmp r2, r0
	blt _0809F022
	adds r0, r4, #0
	adds r0, #0x80
	strh r3, [r0]
	adds r5, r4, #0
	adds r5, #0x82
	ldrb r0, [r5]
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _0809F018
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0809EFF8
	adds r0, r4, #0
	bl sub_08086C48
_0809EFF8:
	ldrb r1, [r5]
	adds r0, r1, #0
	subs r0, #0x38
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1a
	bhi _0809F018
	adds r0, r1, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _0809F018
	adds r0, r4, #0
	bl sub_0809D060
_0809F018:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_0809F022:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0809F028: .4byte gUnk_03000510
_0809F02C: .4byte gUnk_02023530
