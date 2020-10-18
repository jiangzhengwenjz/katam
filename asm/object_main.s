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
	ldr r1, _08099E9C @ =gCurLevelInfo
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
_08099E9C: .4byte gCurLevelInfo
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
	ldr r2, _08099F3C @ =gCurLevelInfo
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
_08099F3C: .4byte gCurLevelInfo
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
	ldr r2, _0809A0A4 @ =gCurLevelInfo
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
_0809A0A4: .4byte gCurLevelInfo
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
