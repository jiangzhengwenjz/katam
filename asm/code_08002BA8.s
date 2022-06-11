	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08002BA8
sub_08002BA8: @ 0x08002BA8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	ldr r3, _08002BF8 @ =gUnk_08D640A4
	ldr r2, _08002BFC @ =gRoomProps
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, r1, r2
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r2, [r0]
	movs r3, #0
	ldr r7, _08002C00 @ =gUnk_02028CA0
_08002BD4:
	ldrb r0, [r2]
	cmp r0, #2
	bne _08002BEC
	ldrh r0, [r2, #4]
	cmp r0, r6
	bne _08002BEC
	ldrb r0, [r2, #6]
	cmp r0, r5
	bne _08002BEC
	ldrb r0, [r2, #7]
	cmp r0, r4
	beq _08002C04
_08002BEC:
	ldrb r0, [r2, #1]
	adds r2, r2, r0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08002BD4
	.align 2, 0
_08002BF8: .4byte gUnk_08D640A4
_08002BFC: .4byte gRoomProps
_08002C00: .4byte gUnk_02028CA0
_08002C04:
	ldrh r0, [r1, #0x24]
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
	asrs r0, r3
	movs r1, #1
	ands r0, r1
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08002C18
sub_08002C18: @ 0x08002C18
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	lsls r3, r3, #0x18
	lsrs r5, r3, #0x18
	ldr r2, _08002C6C @ =gUnk_08D640A4
	ldr r1, _08002C70 @ =gRoomProps
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #0x24]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r2, [r0]
	movs r3, #0
	ldr r0, _08002C74 @ =gUnk_02028CA0
	mov ip, r0
_08002C46:
	ldrb r0, [r2]
	cmp r0, #2
	bne _08002C5E
	ldrh r0, [r2, #4]
	cmp r0, r7
	bne _08002C5E
	ldrb r0, [r2, #6]
	cmp r0, r6
	bne _08002C5E
	ldrb r0, [r2, #7]
	cmp r0, r5
	beq _08002C78
_08002C5E:
	ldrb r0, [r2, #1]
	adds r2, r2, r0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	b _08002C46
	.align 2, 0
_08002C6C: .4byte gUnk_08D640A4
_08002C70: .4byte gRoomProps
_08002C74: .4byte gUnk_02028CA0
_08002C78:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r0, #0x24]
	lsls r1, r1, #1
	add r1, ip
	movs r0, #1
	lsls r0, r3
	ldrh r2, [r1]
	orrs r0, r2
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002C98
sub_08002C98: @ 0x08002C98
	push {r4, r5, r6, lr}
	adds r4, r1, #0
	adds r6, r2, #0
	adds r5, r3, #0
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r3, r2, #0
	ldr r0, _08002CC8 @ =gUnk_0203AD2C
	ldrh r1, [r0]
	cmp r1, #0xc7
	bhi _08002CD8
	ldr r1, _08002CCC @ =gUnk_082D8CB8
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, _08002CD0 @ =gUnk_082D8CC0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	ldr r1, _08002CD4 @ =gUnk_082D8CD0
	lsls r2, r2, #3
	b _08002D20
	.align 2, 0
_08002CC8: .4byte gUnk_0203AD2C
_08002CCC: .4byte gUnk_082D8CB8
_08002CD0: .4byte gUnk_082D8CC0
_08002CD4: .4byte gUnk_082D8CD0
_08002CD8:
	ldr r0, _08002CF8 @ =0x0000012B
	cmp r1, r0
	bhi _08002D08
	ldr r1, _08002CFC @ =gUnk_082D8CF0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, _08002D00 @ =gUnk_082D8CF8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	ldr r1, _08002D04 @ =gUnk_082D8D08
	lsls r2, r2, #3
	b _08002D20
	.align 2, 0
_08002CF8: .4byte 0x0000012B
_08002CFC: .4byte gUnk_082D8CF0
_08002D00: .4byte gUnk_082D8CF8
_08002D04: .4byte gUnk_082D8D08
_08002D08:
	ldr r1, _08002D34 @ =gUnk_082D8D28
	lsls r0, r3, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4]
	ldr r1, _08002D38 @ =gUnk_082D8D30
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	ldr r1, _08002D3C @ =gUnk_082D8D40
	lsls r2, r3, #3
_08002D20:
	adds r0, r2, r1
	ldr r0, [r0]
	str r0, [r5]
	adds r1, #4
	adds r2, r2, r1
	ldr r0, [r2]
	str r0, [r5, #4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002D34: .4byte gUnk_082D8D28
_08002D38: .4byte gUnk_082D8D30
_08002D3C: .4byte gUnk_082D8D40

	thumb_func_start sub_08002D40
sub_08002D40: @ 0x08002D40
	push {r4, lr}
	lsls r0, r0, #0x10
	ldr r4, _08002D5C @ =gUnk_0893CB44
	lsrs r0, r0, #0xf
	adds r3, r0, r4
	ldrb r3, [r3]
	strb r3, [r1]
	adds r4, #1
	adds r0, r0, r4
	ldrb r0, [r0]
	strb r0, [r2]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002D5C: .4byte gUnk_0893CB44

	thumb_func_start sub_08002D60
sub_08002D60: @ 0x08002D60
	push {r4, lr}
	movs r3, #0xcc
	lsls r3, r3, #3
	adds r2, r1, r3
	ldrb r3, [r2]
	movs r2, #0xd4
	lsls r2, r2, #1
	adds r4, r3, #0
	muls r4, r2, r4
	ldr r2, _08002D9C @ =gKirbys
	adds r4, r4, r2
	ldr r3, [r1, #0xc]
	movs r2, #0xf0
	lsls r2, r2, #7
	adds r3, r3, r2
	ldr r2, [r4, #0x40]
	subs r2, r2, r3
	str r2, [r1, #0x1c]
	ldr r3, [r1, #0x10]
	movs r2, #0xa0
	lsls r2, r2, #7
	adds r3, r3, r2
	ldr r2, [r4, #0x44]
	subs r2, r2, r3
	str r2, [r1, #0x20]
	bl sub_08002DA0
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002D9C: .4byte gKirbys

	thumb_func_start sub_08002DA0
sub_08002DA0: @ 0x08002DA0
	push {r4, r5, lr}
	adds r2, r1, #0
	ldr r0, [r2, #0xc]
	ldr r5, [r2, #0x1c]
	adds r3, r0, r5
	ldr r1, [r2, #0x10]
	ldr r0, [r2, #0x20]
	adds r4, r1, r0
	ldr r0, [r2, #0x6c]
	cmp r3, r0
	bge _08002DBC
	subs r0, r0, r3
	adds r0, r5, r0
	str r0, [r2, #0x1c]
_08002DBC:
	movs r0, #0xf0
	lsls r0, r0, #8
	adds r3, r3, r0
	ldr r0, [r2, #0x74]
	cmp r3, r0
	ble _08002DD0
	subs r1, r3, r0
	ldr r0, [r2, #0x1c]
	subs r0, r0, r1
	str r0, [r2, #0x1c]
_08002DD0:
	ldr r1, [r2, #0x70]
	cmp r4, r1
	bge _08002DDE
	subs r1, r1, r4
	ldr r0, [r2, #0x20]
	adds r0, r0, r1
	str r0, [r2, #0x20]
_08002DDE:
	movs r0, #0xa0
	lsls r0, r0, #8
	adds r4, r4, r0
	ldr r1, [r2, #0x78]
	cmp r4, r1
	ble _08002DF2
	subs r1, r4, r1
	ldr r0, [r2, #0x20]
	subs r0, r0, r1
	str r0, [r2, #0x20]
_08002DF2:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start nullsub_10
nullsub_10: @ 0x08002DF8
	bx lr
	.align 2, 0

	thumb_func_start sub_08002DFC
sub_08002DFC: @ 0x08002DFC
	push {lr}
	adds r2, r1, #0
	ldr r1, _08002E34 @ =0x00000661
	adds r0, r2, r1
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _08002E38 @ =gCurLevelInfo
	adds r3, r1, r0
	movs r0, #0xbf
	lsls r0, r0, #3
	adds r1, r2, r0
	adds r0, r3, r0
	ldrh r1, [r1]
	ldrh r0, [r0]
	cmp r1, r0
	bne _08002E2E
	ldr r0, [r3, #0xc]
	str r0, [r2, #0xc]
	ldr r0, [r3, #0x10]
	str r0, [r2, #0x10]
	movs r0, #0
	str r0, [r2, #0x1c]
	str r0, [r2, #0x20]
_08002E2E:
	pop {r0}
	bx r0
	.align 2, 0
_08002E34: .4byte 0x00000661
_08002E38: .4byte gCurLevelInfo

	thumb_func_start sub_08002E3C
sub_08002E3C: @ 0x08002E3C
	ldr r1, _08002E44 @ =gUnk_02023350
	movs r0, #0
	str r0, [r1]
	bx lr
	.align 2, 0
_08002E44: .4byte gUnk_02023350

	thumb_func_start sub_08002E48
sub_08002E48: @ 0x08002E48
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08002E62
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08002E6A
_08002E62:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08002E6A:
	adds r5, r0, #0
	movs r4, #0
	ldr r7, _08002EB4 @ =gCurLevelInfo
	ldr r6, _08002EB8 @ =0x0000FFFF
_08002E72:
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r4, r0
	adds r0, r0, r7
	movs r1, #0xbf
	lsls r1, r1, #3
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r0, r6
	beq _08002E96
	movs r1, #0
	ldrb r0, [r5]
	cmp r4, r0
	bne _08002E90
	movs r1, #1
_08002E90:
	adds r0, r4, #0
	bl sub_08003028
_08002E96:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08002E72
	ldr r1, _08002EBC @ =gUnk_03002E60
	ldr r0, [r5, #0x24]
	str r0, [r1]
	ldr r1, _08002EC0 @ =gUnk_02023354
	movs r0, #0
	str r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08002EB4: .4byte gCurLevelInfo
_08002EB8: .4byte 0x0000FFFF
_08002EBC: .4byte gUnk_03002E60
_08002EC0: .4byte gUnk_02023354

	thumb_func_start sub_08002EC4
sub_08002EC4: @ 0x08002EC4
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _08002EEC @ =gCurLevelInfo
	movs r1, #0xcd
	lsls r1, r1, #3
	adds r2, r0, #0
	muls r2, r1, r2
	adds r6, r2, r3
	subs r1, #0x70
	adds r0, r6, r1
	ldrh r1, [r0]
	ldr r0, _08002EF0 @ =0x00000396
	cmp r1, r0
	beq _08002EF4
	adds r0, #1
	cmp r1, r0
	beq _08002F64
	b _08003006
	.align 2, 0
_08002EEC: .4byte gCurLevelInfo
_08002EF0: .4byte 0x00000396
_08002EF4:
	cmp r5, #0
	bne _08002EFA
	b _08003006
_08002EFA:
	adds r0, r3, #0
	adds r0, #8
	adds r0, r2, r0
	movs r1, #7
	str r1, [r0]
	ldr r4, _08002F4C @ =gDispCnt
	ldrh r0, [r4]
	ldr r2, _08002F50 @ =0x0000FFF8
	ands r2, r0
	movs r0, #1
	orrs r2, r0
	ldr r3, _08002F54 @ =gBgCntRegs
	ldrh r1, [r3, #4]
	ldr r0, _08002F58 @ =0x00003FFF
	ands r0, r1
	movs r5, #0x80
	lsls r5, r5, #7
	adds r1, r5, #0
	movs r5, #0
	orrs r0, r1
	ldr r1, _08002F5C @ =0x0000FFFC
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r0, _08002F60 @ =0x0000F7FF
	ands r2, r0
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r2, r0
	strh r2, [r4]
	bl sub_0810B830
	movs r0, #0
	movs r1, #0x1b
	bl sub_08113C34
	str r5, [r6]
	b _08003006
	.align 2, 0
_08002F4C: .4byte gDispCnt
_08002F50: .4byte 0x0000FFF8
_08002F54: .4byte gBgCntRegs
_08002F58: .4byte 0x00003FFF
_08002F5C: .4byte 0x0000FFFC
_08002F60: .4byte 0x0000F7FF
_08002F64:
	movs r1, #0x80
	lsls r1, r1, #4
	str r1, [r6, #0x7c]
	str r1, [r6, #0x6c]
	adds r0, r6, #0
	adds r0, #0x80
	str r1, [r0]
	str r1, [r6, #0x70]
	adds r0, #4
	movs r3, #0xf8
	lsls r3, r3, #8
	str r3, [r0]
	str r3, [r6, #0x74]
	adds r0, #4
	movs r4, #0xa8
	lsls r4, r4, #8
	str r4, [r0]
	str r4, [r6, #0x78]
	adds r2, r6, #0
	adds r2, #0x90
	adds r0, #0x18
	str r1, [r0]
	str r1, [r2]
	adds r2, #4
	adds r0, #4
	str r1, [r0]
	str r1, [r2]
	adds r1, r6, #0
	adds r1, #0x98
	adds r0, #4
	str r3, [r0]
	str r3, [r1]
	adds r1, #4
	adds r0, #4
	str r4, [r0]
	str r4, [r1]
	adds r0, #0x12
	ldrh r0, [r0]
	subs r0, #0xa0
	lsls r0, r0, #8
	str r0, [r6]
	ldr r0, _0800300C @ =gBackgrounds
	adds r0, #0x88
	ldr r0, [r0]
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r1, r6, r2
	movs r2, #0x10
	bl CpuSet
	cmp r5, #0
	beq _08002FD6
	ldr r2, _08003010 @ =gBgCntRegs
	ldrh r1, [r2]
	ldr r0, _08003014 @ =0x0000FFFC
	ands r0, r1
	strh r0, [r2]
_08002FD6:
	ldr r1, _08003018 @ =gUnk_02026D50
	ldr r5, _0800301C @ =0x0000065E
	adds r0, r6, r5
	ldrb r0, [r0]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	ldr r3, _08003020 @ =gUnk_03000000
	cmp r0, #0
	beq _08003002
	ldr r2, _08003024 @ =gUnk_0203AD10
	ldr r0, [r2]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	subs r1, #0x20
	ands r0, r1
	str r0, [r2]
	movs r0, #0
	str r0, [r3]
_08003002:
	ldr r0, [r3]
	str r0, [r6, #0x38]
_08003006:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800300C: .4byte gBackgrounds
_08003010: .4byte gBgCntRegs
_08003014: .4byte 0x0000FFFC
_08003018: .4byte gUnk_02026D50
_0800301C: .4byte 0x0000065E
_08003020: .4byte gUnk_03000000
_08003024: .4byte gUnk_0203AD10

	thumb_func_start sub_08003028
sub_08003028: @ 0x08003028
	push {r4, r5, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r5, _08003050 @ =gCurLevelInfo
	movs r1, #0xcd
	lsls r1, r1, #3
	adds r2, r0, #0
	muls r2, r1, r2
	adds r3, r2, r5
	subs r1, #0x70
	adds r0, r3, r1
	ldrh r1, [r0]
	ldr r0, _08003054 @ =0x00000396
	cmp r1, r0
	beq _08003058
	adds r0, #1
	cmp r1, r0
	beq _080030D4
	b _080030F4
	.align 2, 0
_08003050: .4byte gCurLevelInfo
_08003054: .4byte 0x00000396
_08003058:
	cmp r4, #0
	beq _080030F4
	adds r1, r5, #0
	adds r1, #8
	adds r1, r2, r1
	ldr r0, [r1]
	movs r2, #8
	rsbs r2, r2, #0
	ands r0, r2
	str r0, [r1]
	movs r0, #0xb7
	lsls r0, r0, #1
	adds r2, r3, r0
	ldrh r1, [r2]
	ldr r0, _080030B4 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldr r4, _080030B8 @ =gDispCnt
	ldrh r0, [r4]
	ldr r2, _080030BC @ =0x0000FFF8
	ands r2, r0
	ldr r3, _080030C0 @ =gBgCntRegs
	ldrh r1, [r3, #4]
	ldr r0, _080030C4 @ =0x00003FFF
	ands r0, r1
	ldr r1, _080030C8 @ =0x0000FFFC
	ands r0, r1
	movs r1, #1
	orrs r0, r1
	strh r0, [r3, #4]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	orrs r2, r0
	ldr r0, _080030CC @ =0x0000FBFF
	ands r2, r0
	strh r2, [r4]
	ldrh r1, [r3]
	ldr r0, _080030D0 @ =0x0000E0FF
	ands r0, r1
	movs r2, #0xf8
	lsls r2, r2, #5
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
	b _080030F4
	.align 2, 0
_080030B4: .4byte 0x0000FF7F
_080030B8: .4byte gDispCnt
_080030BC: .4byte 0x0000FFF8
_080030C0: .4byte gBgCntRegs
_080030C4: .4byte 0x00003FFF
_080030C8: .4byte 0x0000FFFC
_080030CC: .4byte 0x0000FBFF
_080030D0: .4byte 0x0000E0FF
_080030D4:
	cmp r4, #0
	beq _080030F4
	ldr r2, _080030FC @ =gBgCntRegs
	ldrh r1, [r2]
	ldr r0, _08003100 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r2, _08003104 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #2
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_080030F4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080030FC: .4byte gBgCntRegs
_08003100: .4byte 0x0000FFFC
_08003104: .4byte gDispCnt

	thumb_func_start sub_08003108
sub_08003108: @ 0x08003108
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r1, [sp, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	movs r0, #0xcd
	lsls r0, r0, #3
	ldr r2, [sp]
	adds r1, r2, #0
	muls r1, r0, r1
	ldr r0, _080031C8 @ =gCurLevelInfo
	adds r1, r1, r0
	str r1, [sp, #8]
	movs r3, #0xbf
	lsls r3, r3, #3
	adds r0, r1, r3
	ldrh r3, [r0]
	ldr r4, [sp, #4]
	cmp r4, #0
	bne _0800313C
	b _08003268
_0800313C:
	ldr r0, _080031CC @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r0, #1
	ldr r7, [sp]
	lsls r0, r7
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _08003152
	b _08003268
_08003152:
	ldr r2, _080031D0 @ =gForegroundPalettes
	ldr r1, _080031D4 @ =gRoomProps
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #0x16]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov sl, r0
	ldrh r0, [r0, #8]
	mov sb, r0
	movs r1, #0
	mov r8, r1
	cmp r8, sb
	bhs _08003268
	ldr r7, _080031D8 @ =0x040000D4
_08003176:
	mov r2, r8
	lsls r1, r2, #2
	ldr r3, _080031DC @ =0x0000063C
	adds r0, r1, r3
	ldr r4, [sp, #8]
	adds r5, r4, r0
	mov r2, sl
	ldr r0, [r2, #4]
	adds r0, r1, r0
	ldr r4, [r0]
	ldrh r0, [r4, #4]
	cmp r0, #0
	beq _0800325A
	ldr r3, [r4]
	adds r0, r1, r3
	ldr r0, [r0]
	ldrh r1, [r0, #4]
	ldr r0, _080031E0 @ =0x000003E7
	cmp r1, r0
	beq _0800325A
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _0800322A
	ldr r6, _080031E4 @ =gUnk_03002440
	ldr r2, [r6]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _080031E8
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0]
	ldrb r1, [r4, #6]
	ldrh r2, [r4, #8]
	bl sub_08158334
	b _08003216
	.align 2, 0
_080031C8: .4byte gCurLevelInfo
_080031CC: .4byte gUnk_03000510
_080031D0: .4byte gForegroundPalettes
_080031D4: .4byte gRoomProps
_080031D8: .4byte 0x040000D4
_080031DC: .4byte 0x0000063C
_080031E0: .4byte 0x000003E7
_080031E4: .4byte gUnk_03002440
_080031E8:
	ldrh r0, [r5]
	lsls r0, r0, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r0, [r0]
	str r0, [r7]
	ldr r0, [r7]
	ldrh r0, [r4, #6]
	lsls r0, r0, #1
	ldr r1, _08003290 @ =gBgPalette
	adds r0, r0, r1
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r0, [r7, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r6]
_08003216:
	ldrh r0, [r5]
	ldr r1, [r4]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0]
	ldrb r1, [r4, #6]
	ldrh r2, [r4, #8]
	bl sub_0803D21C
_0800322A:
	ldrh r1, [r5, #2]
	adds r1, #1
	movs r3, #0
	strh r1, [r5, #2]
	ldrh r0, [r5]
	ldr r2, [r4]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r0, [r0, #4]
	cmp r1, r0
	blo _0800325A
	strh r3, [r5, #2]
	ldrh r0, [r5]
	adds r0, #1
	strh r0, [r5]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r4, [r4, #4]
	cmp r0, r4
	blo _0800325A
	strh r3, [r5]
_0800325A:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r8, sb
	blo _08003176
_08003268:
	ldr r1, _08003294 @ =gCurLevelInfo
	movs r0, #0xcd
	lsls r0, r0, #3
	ldr r3, [sp]
	adds r5, r3, #0
	muls r5, r0, r5
	adds r3, r5, r1
	movs r4, #0xbf
	lsls r4, r4, #3
	adds r0, r3, r4
	ldrh r4, [r0]
	ldr r0, _08003298 @ =0x00000396
	adds r6, r1, #0
	cmp r4, r0
	beq _0800329C
	adds r0, #1
	cmp r4, r0
	bne _0800328E
	b _08003380
_0800328E:
	b _08003426
	.align 2, 0
_08003290: .4byte gBgPalette
_08003294: .4byte gCurLevelInfo
_08003298: .4byte 0x00000396
_0800329C:
	adds r2, r6, #0
	adds r2, #0x34
	adds r2, r5, r2
	ldr r1, [r2]
	ldr r0, _080032E4 @ =0xFFFFF800
	ands r1, r0
	movs r4, #0x80
	lsls r4, r4, #4
	adds r1, r1, r4
	str r1, [r2]
	ldr r3, _080032E8 @ =gUnk_0203AD18
	movs r7, #0
	ldrsh r0, [r3, r7]
	lsls r0, r0, #8
	subs r1, r1, r0
	str r1, [r2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _08003302
	ldr r0, _080032EC @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080032F0
	adds r1, r6, #0
	adds r1, #0x38
	adds r1, r5, r1
	movs r2, #2
	ldrsh r0, [r3, r2]
	lsls r0, r0, #8
	adds r0, r0, r4
	str r0, [r1]
	b _0800330A
	.align 2, 0
_080032E4: .4byte 0xFFFFF800
_080032E8: .4byte gUnk_0203AD18
_080032EC: .4byte gUnk_0203AD20
_080032F0:
	adds r1, r6, #0
	adds r1, #0x38
	adds r1, r5, r1
	movs r7, #2
	ldrsh r0, [r3, r7]
	lsls r0, r0, #8
	subs r0, r4, r0
	str r0, [r1]
	b _0800330A
_08003302:
	adds r0, r6, #0
	adds r0, #0x38
	adds r0, r5, r0
	str r4, [r0]
_0800330A:
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08003312
	b _08003426
_08003312:
	ldr r0, _0800333C @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08003348
	ldr r0, _08003340 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r0, r6, r2
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r2, _08003344 @ =0x0600D800
	cmp r0, r2
	beq _08003426
	str r2, [r1]
	b _08003426
	.align 2, 0
_0800333C: .4byte gUnk_0203AD20
_08003340: .4byte gUnk_0203AD3C
_08003344: .4byte 0x0600D800
_08003348:
	ldr r0, _08003370 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	movs r3, #0xdc
	lsls r3, r3, #1
	adds r0, r6, r3
	adds r1, r1, r0
	ldr r2, _08003374 @ =gBackgrounds
	ldr r0, _08003378 @ =gRoomProps
	ldr r4, _0800337C @ =0x00008F8E
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	str r0, [r1]
	b _08003426
	.align 2, 0
_08003370: .4byte gUnk_0203AD3C
_08003374: .4byte gBackgrounds
_08003378: .4byte gRoomProps
_0800337C: .4byte 0x00008F8E
_08003380:
	ldr r7, [sp, #4]
	cmp r7, #0
	beq _08003426
	ldr r1, [r3]
	ldr r0, _08003400 @ =0xFFFFF600
	adds r1, r1, r0
	cmp r1, #0
	bge _0800339C
	adds r0, r3, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	subs r0, #0xa0
	lsls r0, r0, #8
	adds r1, r1, r0
_0800339C:
	str r1, [r3]
	adds r2, r3, #0
	adds r2, #0x46
	movs r4, #0
	ldrsh r0, [r2, r4]
	lsls r0, r0, #8
	adds r1, r1, r0
	cmp r1, #0
	bge _080033BA
	adds r0, r3, #0
	adds r0, #0xbe
	ldrh r0, [r0]
	subs r0, #0xa0
	lsls r0, r0, #8
	adds r1, r1, r0
_080033BA:
	asrs r0, r1, #8
	strh r0, [r2]
	ldr r5, _08003404 @ =gUnk_0203AD10
	ldr r2, [r5]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08003426
	movs r7, #0xd1
	lsls r7, r7, #1
	adds r0, r3, r7
	ldrh r0, [r0]
	lsls r0, r0, #0xb
	ldr r1, _08003408 @ =0xFFFF6000
	adds r0, r0, r1
	ldr r4, _0800340C @ =gUnk_03000000
	ldr r1, [r4]
	cmp r0, r1
	bls _08003418
	subs r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	ble _080033EC
	adds r0, r2, #0
_080033EC:
	adds r0, r1, r0
	str r0, [r4]
	str r0, [r3, #0x38]
	ldr r2, _08003410 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08003414 @ =0x0000FDFF
	ands r0, r1
	strh r0, [r2]
	b _08003426
	.align 2, 0
_08003400: .4byte 0xFFFFF600
_08003404: .4byte gUnk_0203AD10
_08003408: .4byte 0xFFFF6000
_0800340C: .4byte gUnk_03000000
_08003410: .4byte gDispCnt
_08003414: .4byte 0x0000FDFF
_08003418:
	movs r0, #0x40
	orrs r2, r0
	str r2, [r5]
	adds r1, r3, #0
	adds r1, #0xba
	movs r0, #0
	strh r0, [r1]
_08003426:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
