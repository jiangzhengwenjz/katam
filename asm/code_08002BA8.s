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

	thumb_func_start sub_08003438
sub_08003438: @ 0x08003438
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	bl sub_08002374
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xcd
	lsls r1, r1, #3
	muls r1, r0, r1
	ldr r0, _08003574 @ =gCurLevelInfo
	adds r1, r1, r0
	str r1, [sp]
	movs r2, #0xbf
	lsls r2, r2, #3
	adds r0, r1, r2
	ldrh r0, [r0]
	str r0, [sp, #4]
	ldr r2, _08003578 @ =gForegroundInfo
	ldr r1, _0800357C @ =gRoomProps
	lsls r0, r0, #2
	ldr r3, [sp, #4]
	adds r0, r0, r3
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r0, [r0, #0x14]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov sb, r0
	ldrh r4, [r0, #0xc]
	mov sl, r4
	movs r3, #0
	cmp r3, sl
	bhs _080034EA
_08003484:
	lsls r1, r3, #2
	ldr r7, _08003580 @ =0x000005FC
	adds r2, r1, r7
	ldr r0, [sp]
	adds r2, r0, r2
	adds r1, r1, r3
	lsls r1, r1, #2
	mov r4, sb
	ldr r0, [r4, #8]
	adds r4, r0, r1
	ldrh r0, [r2]
	ldr r1, [r4, #0xc]
	lsls r0, r0, #3
	adds r0, r0, r1
	mov r7, sb
	ldr r1, [r7, #4]
	ldr r0, [r0]
	adds r6, r1, r0
	ldr r0, [r4]
	ldr r1, _08003584 @ =0x06008000
	adds r5, r0, r1
	movs r7, #0
	adds r3, #1
	mov r8, r3
	ldrh r2, [r4, #0x12]
	cmp r7, r2
	bhs _080034E0
_080034BA:
	ldr r2, [r4, #4]
	lsls r2, r2, #9
	lsrs r2, r2, #0xb
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r6, #0
	adds r1, r5, #0
	bl CpuSet
	ldr r0, [r4, #8]
	adds r6, r6, r0
	adds r5, r5, r0
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	ldrh r3, [r4, #0x12]
	cmp r7, r3
	blo _080034BA
_080034E0:
	mov r4, r8
	lsls r0, r4, #0x10
	lsrs r3, r0, #0x10
	cmp r3, sl
	blo _08003484
_080034EA:
	ldr r0, _08003588 @ =0x00000396
	ldr r7, [sp, #4]
	cmp r7, r0
	bne _080035D4
	ldr r1, [sp]
	ldr r0, [r1]
	cmp r0, #0
	bne _080035D4
	bl sub_08002374
	ldr r5, _08003574 @ =gCurLevelInfo
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r6, #0xcd
	lsls r6, r6, #3
	muls r0, r6, r0
	adds r1, r5, #0
	adds r1, #8
	adds r0, r0, r1
	movs r1, #7
	str r1, [r0]
	ldr r4, _0800358C @ =gDispCnt
	ldrh r0, [r4]
	ldr r2, _08003590 @ =0x0000FFF8
	ands r2, r0
	movs r0, #1
	orrs r2, r0
	ldr r3, _08003594 @ =gBgCntRegs
	ldrh r1, [r3, #4]
	ldr r0, _08003598 @ =0x00003FFF
	ands r0, r1
	movs r7, #0x80
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	ldr r1, _0800359C @ =0x0000FFFC
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strh r0, [r3, #4]
	ldr r0, _080035A0 @ =0x0000F7FF
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
	ldr r0, _080035A4 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080035B0
	ldr r0, _080035A8 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	muls r0, r6, r0
	movs r2, #0xdc
	lsls r2, r2, #1
	adds r1, r5, r2
	adds r0, r0, r1
	ldr r1, _080035AC @ =0x0600D800
	str r1, [r0]
	b _080035D4
	.align 2, 0
_08003574: .4byte gCurLevelInfo
_08003578: .4byte gForegroundInfo
_0800357C: .4byte gRoomProps
_08003580: .4byte 0x000005FC
_08003584: .4byte 0x06008000
_08003588: .4byte 0x00000396
_0800358C: .4byte gDispCnt
_08003590: .4byte 0x0000FFF8
_08003594: .4byte gBgCntRegs
_08003598: .4byte 0x00003FFF
_0800359C: .4byte 0x0000FFFC
_080035A0: .4byte 0x0000F7FF
_080035A4: .4byte gUnk_0203AD20
_080035A8: .4byte gUnk_0203AD3C
_080035AC: .4byte 0x0600D800
_080035B0:
	ldr r0, _080035E4 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	adds r1, r0, #0
	muls r1, r6, r1
	movs r3, #0xdc
	lsls r3, r3, #1
	adds r0, r5, r3
	adds r1, r1, r0
	ldr r2, _080035E8 @ =gBackgrounds
	ldr r0, _080035EC @ =gRoomProps
	ldr r4, _080035F0 @ =0x00008F8E
	adds r0, r0, r4
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	ldr r0, [r0, #0x18]
	str r0, [r1]
_080035D4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080035E4: .4byte gUnk_0203AD3C
_080035E8: .4byte gBackgrounds
_080035EC: .4byte gRoomProps
_080035F0: .4byte 0x00008F8E

	thumb_func_start sub_080035F4
sub_080035F4: @ 0x080035F4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r7, #0
	ldr r1, [r6, #0x40]
	asrs r1, r1, #8
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r2, r3
	asrs r0, r0, #1
	adds r0, r1, r0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0x10
	adds r2, r1, r2
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	str r2, [sp]
	adds r1, r1, r3
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	str r1, [sp, #4]
	ldr r0, [r6, #8]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0800364C
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x3f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r0, #1
	b _0800365C
_0800364C:
	ldr r0, [r6, #0x44]
	asrs r0, r0, #8
	adds r1, r6, #0
	adds r1, #0x3f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
_0800365C:
	lsls r0, r0, #0xc
	lsrs r4, r0, #0x10
	adds r6, #0x56
	ldrb r0, [r6]
	lsls r5, r5, #0x10
	lsrs r1, r5, #0x10
	lsls r4, r4, #0x10
	lsrs r2, r4, #0x10
	mov r8, r2
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r3, _080036E8 @ =gUnk_082D88B8
	adds r0, r0, r3
	ldr r1, [r0]
	movs r0, #9
	mov sl, r0
	adds r0, r1, #0
	mov r2, sl
	ands r0, r2
	mov sb, r4
	cmp r0, #0
	beq _080036E2
	movs r4, #8
	ands r1, r4
	orrs r7, r1
	ldr r3, [sp]
	lsls r1, r3, #0x10
	cmp r5, r1
	beq _080036BC
	ldrb r0, [r6]
	lsrs r1, r1, #0x10
	mov r2, r8
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	ldr r1, _080036E8 @ =gUnk_082D88B8
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r1, #0
	mov r2, sl
	ands r0, r2
	cmp r0, #0
	beq _080036E2
	ands r1, r4
	orrs r7, r1
_080036BC:
	ldr r3, [sp, #4]
	lsls r1, r3, #0x10
	cmp r5, r1
	beq _080036F2
	ldr r4, _080036E8 @ =gUnk_082D88B8
	ldrb r0, [r6]
	lsrs r1, r1, #0x10
	mov r3, sb
	lsrs r2, r3, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r1, [r0]
	movs r0, #9
	ands r0, r1
	cmp r0, #0
	bne _080036EC
_080036E2:
	movs r0, #0
	b _080036F4
	.align 2, 0
_080036E8: .4byte gUnk_082D88B8
_080036EC:
	movs r0, #8
	ands r1, r0
	orrs r7, r1
_080036F2:
	adds r0, r7, #0
_080036F4:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08003704
sub_08003704: @ 0x08003704
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r4, r0, #0
	ldr r1, [r4, #0x40]
	asrs r1, r1, #8
	adds r0, #0x3c
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, #2
	movs r3, #0
	ldrsb r3, [r0, r3]
	adds r0, r2, r3
	asrs r0, r0, #1
	adds r0, r1, r0
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	str r0, [sp]
	adds r2, r1, r2
	lsls r2, r2, #0xc
	lsrs r2, r2, #0x10
	str r2, [sp, #4]
	adds r1, r1, r3
	lsls r1, r1, #0xc
	lsrs r1, r1, #0x10
	str r1, [sp, #8]
	ldr r0, [r4, #0x44]
	asrs r0, r0, #8
	adds r1, r4, #0
	adds r1, #0x3f
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	adds r0, r0, r1
	adds r0, #1
	lsls r0, r0, #0xc
	lsrs r0, r0, #0x10
	mov sb, r0
	adds r7, r4, #0
	adds r7, #0x56
	ldrb r0, [r7]
	ldr r1, [sp]
	lsls r5, r1, #0x10
	lsrs r1, r5, #0x10
	mov r6, sb
	adds r2, r6, #0
	bl sub_080023E4
	ldr r2, _080037D0 @ =gUnk_082D88B8
	mov sl, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sl
	ldr r0, [r0]
	movs r1, #1
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	beq _080037CC
	ldr r2, [sp, #4]
	lsls r1, r2, #0x10
	cmp r5, r1
	beq _080037A2
	ldrb r0, [r7]
	lsrs r1, r1, #0x10
	adds r2, r6, #0
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sl
	ldr r0, [r0]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080037CC
_080037A2:
	ldr r2, [sp, #8]
	lsls r1, r2, #0x10
	ldr r0, [sp]
	cmp r0, r2
	beq _080037D4
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	lsrs r1, r1, #0x10
	mov r2, sb
	bl sub_080023E4
	ldr r1, _080037D0 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080037D4
_080037CC:
	movs r0, #1
	b _080037D6
	.align 2, 0
_080037D0: .4byte gUnk_082D88B8
_080037D4:
	movs r0, #0
_080037D6:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080037E8
sub_080037E8: @ 0x080037E8
	push {r4, lr}
	adds r2, r0, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	ldr r0, _08003854 @ =gCurLevelInfo
	adds r3, r1, r0
	adds r0, r3, #0
	adds r0, #0x90
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r2, #0x40]
	cmp r1, r0
	blt _0800381A
	adds r0, r3, #0
	adds r0, #0x98
	ldr r0, [r0]
	ldr r4, _08003858 @ =0xFFFFF800
	adds r0, r0, r4
	cmp r1, r0
	ble _0800381C
_0800381A:
	str r0, [r2, #0x40]
_0800381C:
	adds r0, r3, #0
	adds r0, #0x94
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r2, #0x44]
	cmp r1, r0
	blt _0800384C
	adds r0, r2, #0
	adds r0, #0x3f
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r4, r0, #8
	adds r1, r1, r4
	adds r0, r3, #0
	adds r0, #0x9c
	ldr r3, [r0]
	subs r0, r3, #2
	cmp r1, r0
	ble _0800384E
	subs r0, r3, r4
	subs r0, #2
_0800384C:
	str r0, [r2, #0x44]
_0800384E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003854: .4byte gCurLevelInfo
_08003858: .4byte 0xFFFFF800

	thumb_func_start sub_0800385C
sub_0800385C: @ 0x0800385C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	adds r6, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	movs r7, #0xf
	cmp r1, #0
	bne _0800387A
	bl sub_080037E8
_0800387A:
	ldr r1, [r6, #0x40]
	str r1, [sp]
	ldr r2, [r6, #0x44]
	str r2, [sp, #4]
	adds r3, r6, #0
	adds r3, #0x3c
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #8
	adds r0, r1, r0
	str r0, [sp, #8]
	movs r0, #0x3e
	adds r0, r0, r6
	mov ip, r0
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0x10]
	adds r5, r6, #0
	adds r5, #0x3d
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, r2, r0
	str r0, [sp, #0xc]
	adds r4, r6, #0
	adds r4, #0x3f
	movs r0, #0
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r2, r2, r0
	str r2, [sp, #0x14]
	mov r1, sp
	ldrb r0, [r3]
	movs r2, #0
	mov sb, r2
	strb r0, [r1, #0x18]
	mov r2, ip
	ldrb r0, [r2]
	strb r0, [r1, #0x1a]
	ldrb r0, [r5]
	strb r0, [r1, #0x19]
	ldrb r0, [r4]
	strb r0, [r1, #0x1b]
	movs r4, #0x62
	adds r4, r4, r6
	mov sl, r4
	ldrb r0, [r4]
	add r4, sp, #0x28
	strb r0, [r4]
	mov r3, sp
	adds r3, #0x29
	mov r5, sb
	strb r5, [r3]
	mov r2, sp
	adds r2, #0x2a
	strb r5, [r2]
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r0, [r0]
	movs r5, #0
	mov ip, r5
	strh r0, [r1, #0x20]
	adds r0, r6, #0
	adds r0, #0x52
	ldrh r0, [r0]
	strh r0, [r1, #0x22]
	mov r0, r8
	cmp r0, #0
	bne _08003926
	mov r2, sp
	adds r0, r6, #0
	adds r0, #0xd0
	ldrh r0, [r0]
	ldrh r1, [r1, #0x20]
	adds r0, r0, r1
	strh r0, [r2, #0x20]
	mov r1, sp
	adds r0, r6, #0
	adds r0, #0xd2
	ldrh r0, [r0]
	ldrh r1, [r1, #0x22]
	adds r0, r0, r1
	strh r0, [r2, #0x22]
_08003926:
	mov r3, sp
	ldr r4, _08003A34 @ =gCurLevelInfo
	adds r2, r6, #0
	adds r2, #0x56
	ldrb r0, [r2]
	movs r1, #0xcd
	lsls r1, r1, #3
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0xbc
	ldrh r0, [r0]
	lsrs r0, r0, #4
	strh r0, [r3, #0x24]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r0, r4
	adds r0, #0xbe
	ldrh r0, [r0]
	lsrs r0, r0, #4
	strh r0, [r3, #0x26]
	mov r4, ip
	mov r1, sl
	strb r4, [r1]
	mov r5, sb
	str r5, [r6, #0x58]
	adds r1, r6, #0
	adds r1, #0x57
	strb r4, [r1]
	ldr r0, [sp, #0x14]
	adds r0, #1
	str r0, [sp, #0x14]
	adds r5, r2, #0
	mov sb, r1
	mov r0, r8
	cmp r0, #0
	bne _08003994
	ldr r0, [r6, #8]
	movs r1, #0x70
	ands r0, r1
	cmp r0, #0x10
	bne _08003994
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #8]
	subs r0, r0, r1
	ldr r1, _08003A38 @ =0x00000FFF
	cmp r0, r1
	bgt _08003994
	ldr r0, [r6, #0x40]
	ldr r2, _08003A3C @ =0xFFFFF800
	adds r1, r0, r2
	str r1, [sp, #8]
	movs r4, #0x80
	lsls r4, r4, #4
	adds r0, r0, r4
	str r0, [sp, #0x10]
_08003994:
	mov r0, sp
	movs r1, #0x22
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _08003A58
	mov r2, r8
	cmp r2, #1
	beq _080039FC
	cmp r0, #0
	bge _080039FC
	mov r2, sp
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #0xd
	strh r0, [r2, #0x1c]
	mov r1, sp
	ldr r0, [sp, #0xc]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r4, #0x29
	add r4, sp
	strb r2, [r4]
	ldr r0, _08003A40 @ =gUnk_082D88B8
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080039FC
	ldr r0, _08003A44 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0x84
	lsls r2, r2, #3
	adds r1, r2, #0
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_080039FC:
	mov r2, sp
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #0xd
	strh r0, [r2, #0x1c]
	mov r1, sp
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r4, #0x2a
	add r4, sp
	strb r2, [r4]
	mov r0, r8
	cmp r0, #1
	beq _08003A48
	ldr r1, _08003A44 @ =gUnk_082D8DA4
	lsls r0, r2, #2
	adds r0, r0, r1
	movs r1, #0x50
	b _08003B00
	.align 2, 0
_08003A34: .4byte gCurLevelInfo
_08003A38: .4byte 0x00000FFF
_08003A3C: .4byte 0xFFFFF800
_08003A40: .4byte gUnk_082D88B8
_08003A44: .4byte gUnk_082D8DA4
_08003A48:
	ldr r1, _08003A54 @ =gUnk_082D8DA4
	lsls r0, r2, #2
	adds r0, r0, r1
	movs r2, #0x8a
	lsls r2, r2, #3
	b _08003AFE
	.align 2, 0
_08003A54: .4byte gUnk_082D8DA4
_08003A58:
	mov r4, r8
	cmp r4, #1
	beq _08003AB2
	mov r2, sp
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #0xd
	strh r0, [r2, #0x1c]
	mov r1, sp
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0x2a
	add r0, sp
	strb r2, [r0]
	ldr r0, _08003AEC @ =gUnk_082D88B8
	lsls r2, r2, #2
	adds r0, r2, r0
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08003AB2
	ldr r0, _08003AF0 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0x8a
	lsls r2, r2, #3
	adds r1, r2, #0
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
_08003AB2:
	mov r2, sp
	ldr r0, [sp, #8]
	ldr r1, [sp, #0x10]
	adds r0, r0, r1
	asrs r0, r0, #0xd
	strh r0, [r2, #0x1c]
	mov r1, sp
	ldr r0, [sp, #0xc]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r4, #0x29
	add r4, sp
	strb r2, [r4]
	mov r0, r8
	cmp r0, #1
	beq _08003AF4
	ldr r1, _08003AF0 @ =gUnk_082D8DA4
	lsls r0, r2, #2
	adds r0, r0, r1
	movs r1, #0x20
	b _08003B00
	.align 2, 0
_08003AEC: .4byte gUnk_082D88B8
_08003AF0: .4byte gUnk_082D8DA4
_08003AF4:
	ldr r1, _08003B68 @ =gUnk_082D8DA4
	lsls r0, r2, #2
	adds r0, r0, r1
	movs r2, #0x84
	lsls r2, r2, #3
_08003AFE:
	adds r1, r2, #0
_08003B00:
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl _call_via_r3
	ands r7, r0
	movs r2, #0
	mov r0, sp
	ldrb r0, [r0, #0x18]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	ldr r1, [r6, #0x40]
	adds r0, r1, r0
	subs r0, #1
	str r0, [sp, #8]
	mov r0, sp
	ldrb r0, [r0, #0x1a]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	adds r1, #1
	str r1, [sp, #0x10]
	mov r4, r8
	cmp r4, #0
	bne _08003B6C
	mov r0, sp
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, sp
	ldrb r1, [r1, #0x19]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #8
	ble _08003B98
	adds r0, r1, #4
	lsls r0, r0, #8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, sp
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #4
	b _08003BA8
	.align 2, 0
_08003B68: .4byte gUnk_082D8DA4
_08003B6C:
	mov r0, sp
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	mov r1, sp
	ldrb r1, [r1, #0x19]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	cmp r0, #8
	ble _08003B98
	adds r0, r1, #2
	lsls r0, r0, #8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, sp
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #2
	b _08003BA8
_08003B98:
	lsls r0, r1, #8
	ldr r1, [sp, #4]
	adds r0, r1, r0
	str r0, [sp, #0xc]
	mov r0, sp
	ldrb r0, [r0, #0x1b]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
_08003BA8:
	lsls r0, r0, #8
	adds r1, r1, r0
	str r1, [sp, #0x14]
	mov r0, sp
	movs r1, #0x20
	ldrsh r0, [r0, r1]
	cmp r0, #0
	blt _08003BF2
	cmp r0, #0
	bgt _08003BDA
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08003BDE
	add r0, sp, #0x28
	ldrb r4, [r0]
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	bne _08003BF2
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08003BF4
_08003BDA:
	movs r2, #2
	b _08003BF4
_08003BDE:
	add r0, sp, #0x28
	ldrb r4, [r0]
	adds r0, r1, #0
	ands r0, r4
	cmp r0, #0
	bne _08003BDA
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08003BF4
_08003BF2:
	movs r2, #1
_08003BF4:
	cmp r2, #1
	beq _08003C10
	cmp r2, #2
	beq _08003CD4
	mov r1, r8
	cmp r1, #1
	bne _08003C04
	b _08003F3E
_08003C04:
	movs r0, #1
	ands r0, r7
	cmp r0, #0
	bne _08003C0E
	b _08003E22
_08003C0E:
	b _08003DAC
_08003C10:
	ands r2, r7
	cmp r2, #0
	beq _08003C8C
	movs r3, #1
	ldr r1, _08003CCC @ =gUnk_082D88B8
	movs r2, #0x2a
	add r2, sp
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r2, r0
	beq _08003C3C
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r2, r0
	bne _08003C58
_08003C3C:
	mov r0, sp
	movs r2, #0x1b
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r1, [sp, #4]
	adds r2, r1, r2
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	cmp r2, r1
	bne _08003C58
	movs r3, #0
_08003C58:
	cmp r3, #0
	beq _08003C8C
	mov r1, sp
	ldr r0, [sp, #8]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1c]
	ldr r0, [sp, #0xc]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	mov r2, sp
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08003CD0 @ =gUnk_082D8DA4
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	mov r2, r8
	bl _call_via_r3
	ands r7, r0
_08003C8C:
	movs r0, #2
	ands r7, r0
	cmp r7, #0
	bne _08003C96
	b _08003F3E
_08003C96:
	mov r4, sl
	ldrb r1, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08003CA4
	b _08003F3E
_08003CA4:
	mov r1, sp
	ldr r0, [sp, #8]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1c]
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	mov r2, sp
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08003CD0 @ =gUnk_082D8DA4
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	movs r1, #0x10
	b _08003D92
	.align 2, 0
_08003CCC: .4byte gUnk_082D88B8
_08003CD0: .4byte gUnk_082D8DA4
_08003CD4:
	movs r0, #4
	ands r0, r7
	cmp r0, #0
	beq _08003D56
	movs r3, #1
	ldr r1, _08003DA4 @ =gUnk_082D88B8
	movs r2, #0x2a
	add r2, sp
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r2, r0
	beq _08003D02
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r2, r0
	bne _08003D1E
_08003D02:
	mov r0, sp
	movs r2, #0x1b
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r1, [sp, #4]
	adds r2, r1, r2
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	cmp r2, r1
	bne _08003D1E
	movs r3, #0
_08003D1E:
	cmp r3, #0
	beq _08003D56
	mov r1, sp
	ldr r0, [sp, #0x10]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1c]
	ldr r0, [sp, #0xc]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	mov r2, sp
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08003DA8 @ =gUnk_082D8DA4
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	movs r1, #0x30
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl _call_via_r3
	ands r7, r0
_08003D56:
	movs r0, #8
	ands r7, r0
	cmp r7, #0
	bne _08003D60
	b _08003F3E
_08003D60:
	mov r4, sl
	ldrb r1, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08003D6E
	b _08003F3E
_08003D6E:
	mov r1, sp
	ldr r0, [sp, #0x10]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1c]
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	mov r2, sp
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08003DA8 @ =gUnk_082D8DA4
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	movs r1, #0x40
_08003D92:
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl _call_via_r3
	b _08003F3E
	.align 2, 0
_08003DA4: .4byte gUnk_082D88B8
_08003DA8: .4byte gUnk_082D8DA4
_08003DAC:
	movs r3, #1
	ldr r1, _08003FA8 @ =gUnk_082D88B8
	movs r2, #0x2a
	add r2, sp
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r1, r0
	beq _08003DD2
	movs r0, #0xc0
	lsls r0, r0, #0x17
	cmp r1, r0
	bne _08003DEE
_08003DD2:
	mov r0, sp
	movs r2, #0x1b
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r1, [sp, #4]
	adds r2, r1, r2
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	cmp r2, r1
	bne _08003DEE
	movs r3, #0
_08003DEE:
	cmp r3, #0
	beq _08003E22
	mov r1, sp
	ldr r0, [sp, #8]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1c]
	ldr r0, [sp, #0xc]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	mov r2, sp
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08003FAC @ =gUnk_082D8DA4
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	mov r2, r8
	bl _call_via_r3
	ands r7, r0
_08003E22:
	movs r0, #2
	ands r0, r7
	cmp r0, #0
	beq _08003E6A
	mov r4, sl
	ldrb r1, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08003E6A
	mov r1, sp
	ldr r0, [sp, #8]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1c]
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	mov r2, sp
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08003FAC @ =gUnk_082D8DA4
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	movs r1, #0x10
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl _call_via_r3
	ands r7, r0
_08003E6A:
	movs r0, #4
	ands r0, r7
	cmp r0, #0
	beq _08003EF8
	mov r0, sl
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08003EF8
	movs r3, #1
	ldr r1, _08003FA8 @ =gUnk_082D88B8
	movs r2, #0x2a
	add r2, sp
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x16
	cmp r2, r0
	beq _08003EA4
	movs r0, #0xc0
	lsls r0, r0, #0x16
	cmp r2, r0
	bne _08003EC0
_08003EA4:
	mov r0, sp
	movs r2, #0x1b
	ldrsb r2, [r0, r2]
	lsls r2, r2, #8
	ldr r1, [sp, #4]
	adds r2, r1, r2
	ldrb r0, [r0, #0x19]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #8
	adds r1, r1, r0
	cmp r2, r1
	bne _08003EC0
	movs r3, #0
_08003EC0:
	cmp r3, #0
	beq _08003EF8
	mov r1, sp
	ldr r0, [sp, #0x10]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1c]
	ldr r0, [sp, #0xc]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	mov r2, sp
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08003FAC @ =gUnk_082D8DA4
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	movs r1, #0x30
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl _call_via_r3
	ands r7, r0
_08003EF8:
	movs r0, #8
	ands r7, r0
	cmp r7, #0
	beq _08003F3E
	mov r4, sl
	ldrb r1, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08003F3E
	mov r1, sp
	ldr r0, [sp, #0x10]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1c]
	ldr r0, [sp, #0x14]
	asrs r0, r0, #0xc
	strh r0, [r1, #0x1e]
	ldrb r0, [r5]
	ldrh r1, [r1, #0x1c]
	mov r2, sp
	ldrh r2, [r2, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08003FAC @ =gUnk_082D8DA4
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	movs r1, #0x40
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	mov r1, sp
	bl _call_via_r3
_08003F3E:
	mov r1, sb
	ldrb r0, [r1]
	ldr r4, _08003FA8 @ =gUnk_082D88B8
	cmp r0, #0
	bne _08003F50
	ldr r0, [r6, #0x58]
	ldr r1, [r4]
	orrs r0, r1
	str r0, [r6, #0x58]
_08003F50:
	ldrb r0, [r5]
	ldr r1, [sp]
	lsls r1, r1, #4
	lsrs r1, r1, #0x10
	ldr r2, [sp, #4]
	lsls r2, r2, #4
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r4
	ldr r2, [r0]
	ldr r1, [r6, #0x58]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08003F7C
	adds r0, r2, #0
	ands r0, r3
_08003F7C:
	ldr r0, _08003FB0 @ =0xFF0FFFFF
	ands r0, r2
	orrs r1, r0
	str r1, [r6, #0x58]
	mov r4, r8
	cmp r4, #0
	bne _08003FD2
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08003FBE
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08003FB4
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080098C4
	b _08003FD2
	.align 2, 0
_08003FA8: .4byte gUnk_082D88B8
_08003FAC: .4byte gUnk_082D8DA4
_08003FB0: .4byte 0xFF0FFFFF
_08003FB4:
	adds r0, r6, #0
	adds r1, r2, #0
	bl sub_080097C4
	b _08003FD2
_08003FBE:
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r2
	cmp r0, #0
	beq _08003FD2
	ldr r0, [r6, #0x58]
	ldr r1, _08004004 @ =0xFF0FFFFF
	ands r0, r1
	orrs r0, r2
	str r0, [r6, #0x58]
_08003FD2:
	ldr r0, [sp]
	str r0, [r6, #0x40]
	ldr r0, [sp, #4]
	str r0, [r6, #0x44]
	mov r5, sl
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08003FF0
	ldr r0, [r6, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r6, #8]
_08003FF0:
	mov r1, sl
	ldrb r0, [r1]
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004004: .4byte 0xFF0FFFFF

	thumb_func_start sub_08004008
sub_08004008: @ 0x08004008
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	ldr r0, [r6, #0x40]
	asrs r1, r0, #0xc
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r1, r0
	beq _08004022
	b _080042AC
_08004022:
	ldr r0, [r6, #0x48]
	asrs r0, r0, #0xc
	cmp r0, r1
	beq _0800402C
	b _080042AC
_0800402C:
	ldr r0, [r6, #0x44]
	asrs r1, r0, #0xc
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	cmp r1, r0
	beq _0800403A
	b _080042AC
_0800403A:
	ldr r0, [r6, #0x4c]
	asrs r0, r0, #0xc
	cmp r0, r1
	beq _08004044
	b _080042AC
_08004044:
	ldr r0, [r6, #8]
	movs r1, #1
	mov r8, r1
	ands r0, r1
	cmp r0, #0
	beq _08004118
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_08002470
	lsls r0, r0, #0x18
	ldr r2, _080040B4 @ =gUnk_082D88B8
	mov sb, r2
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	mov r3, r8
	ands r0, r3
	adds r7, r4, #0
	cmp r0, #0
	beq _080040BC
	movs r0, #0x1c
	ldrsh r1, [r5, r0]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r2, r1, r0
	ldr r3, [r5]
	subs r1, r2, r3
	ldr r0, _080040B8 @ =0x00000BFF
	cmp r1, r0
	ble _0800409A
	movs r1, #0xc0
	lsls r1, r1, #4
	adds r2, r3, r1
_0800409A:
	str r2, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _080040AE
	b _080041D8
_080040AE:
	mov r0, r8
	b _080041DA
	.align 2, 0
_080040B4: .4byte gUnk_082D88B8
_080040B8: .4byte 0x00000BFF
_080040BC:
	ldrb r0, [r7]
	ldrh r1, [r5, #0x1c]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_08002470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _080040DE
	b _080041E2
_080040DE:
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	lsls r1, r1, #0xc
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, #1
	subs r2, r1, r0
	ldr r3, [r5]
	subs r1, r3, r2
	movs r0, #0xc0
	lsls r0, r0, #4
	cmp r1, r0
	ble _080040FE
	ldr r0, _08004114 @ =0xFFFFF400
	adds r2, r3, r0
_080040FE:
	str r2, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _080041D8
	mov r0, r8
	b _080041DA
	.align 2, 0
_08004114: .4byte 0xFFFFF400
_08004118:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_08002470
	lsls r0, r0, #0x18
	ldr r1, _08004178 @ =gUnk_082D88B8
	mov sb, r1
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	mov r2, r8
	ands r0, r2
	adds r7, r4, #0
	cmp r0, #0
	beq _08004180
	movs r3, #0x1c
	ldrsh r1, [r5, r3]
	lsls r1, r1, #0xc
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	adds r0, #1
	subs r2, r1, r0
	ldr r3, [r5]
	subs r1, r3, r2
	movs r0, #0xc0
	lsls r0, r0, #4
	cmp r1, r0
	ble _08004162
	ldr r0, _0800417C @ =0xFFFFF400
	adds r2, r3, r0
_08004162:
	str r2, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _080041D8
	mov r0, r8
	b _080041DA
	.align 2, 0
_08004178: .4byte gUnk_082D88B8
_0800417C: .4byte 0xFFFFF400
_08004180:
	ldrb r0, [r7]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_08002470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080041E2
	movs r2, #0x1c
	ldrsh r1, [r5, r2]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r2, r1, r0
	ldr r3, [r5]
	subs r1, r2, r3
	ldr r0, _080041D4 @ =0x00000BFF
	cmp r1, r0
	ble _080041BE
	adds r0, #1
	adds r2, r3, r0
_080041BE:
	str r2, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	beq _080041D8
	mov r0, r8
	b _080041DA
	.align 2, 0
_080041D4: .4byte 0x00000BFF
_080041D8:
	movs r0, #2
_080041DA:
	orrs r0, r2
	strb r0, [r1]
_080041DE:
	movs r0, #1
	b _080042AE
_080041E2:
	ldrb r0, [r7]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08002470
	lsls r0, r0, #0x18
	ldr r1, _08004244 @ =gUnk_082D88B8
	mov sb, r1
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r4, [r0]
	movs r2, #1
	mov r8, r2
	ands r4, r2
	cmp r4, #0
	beq _0800424C
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	adds r0, #1
	lsls r0, r0, #0xc
	movs r1, #0x19
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	adds r2, r0, #1
	ldr r3, [r5, #4]
	subs r1, r2, r3
	ldr r0, _08004248 @ =0x00000BFF
	cmp r1, r0
	ble _08004228
	adds r0, #1
	adds r2, r3, r0
_08004228:
	str r2, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x52
	strh r2, [r0]
	adds r0, #0x80
	strh r2, [r0]
	b _080041DE
	.align 2, 0
_08004244: .4byte gUnk_082D88B8
_08004248: .4byte 0x00000BFF
_0800424C:
	ldrb r0, [r7]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_08002470
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080041DE
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	lsls r1, r1, #0xc
	movs r0, #0x1b
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r1, r1, r0
	subs r2, r1, #1
	ldr r3, [r5, #4]
	subs r1, r3, r2
	ldr r0, _080042A4 @ =0x00000BFF
	cmp r1, r0
	ble _0800428A
	ldr r0, _080042A8 @ =0xFFFFF400
	adds r2, r3, r0
_0800428A:
	str r2, [r5, #4]
	adds r2, r6, #0
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #8
	orrs r1, r0
	strb r1, [r2]
	adds r0, r6, #0
	adds r0, #0x52
	strh r4, [r0]
	adds r0, #0x80
	strh r4, [r0]
	b _080041DE
	.align 2, 0
_080042A4: .4byte 0x00000BFF
_080042A8: .4byte 0xFFFFF400
_080042AC:
	movs r0, #0
_080042AE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080042BC
sub_080042BC: @ 0x080042BC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	str r3, [sp]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080042EA
	adds r0, r6, #0
	bl sub_08004008
	cmp r0, #0
	beq _080042EA
	b _080047CC
_080042EA:
	movs r0, #0x70
	mov r1, r8
	ands r0, r1
	cmp r0, #0x20
	beq _08004350
	cmp r0, #0x20
	bgt _08004302
	cmp r0, #0
	beq _0800431C
	cmp r0, #0x10
	beq _0800431C
	b _080047CC
_08004302:
	cmp r0, #0x40
	bne _08004308
	b _08004484
_08004308:
	cmp r0, #0x40
	bgt _08004314
	cmp r0, #0x30
	bne _08004312
	b _08004484
_08004312:
	b _080047CC
_08004314:
	cmp r0, #0x50
	bne _0800431A
	b _080044B8
_0800431A:
	b _080047CC
_0800431C:
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	adds r0, #1
	lsls r4, r0, #0xc
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r0, r4, r0
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08004344
	adds r0, r2, #0
	orrs r0, r3
	b _08004348
_08004344:
	movs r0, #2
	orrs r0, r2
_08004348:
	strb r0, [r1]
	ldr r0, [r5, #8]
	adds r0, #1
	b _080047CC
_08004350:
	movs r3, #0x26
	ldrsh r1, [r5, r3]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	adds r0, #1
	cmp r1, r0
	bgt _08004360
	b _080047BE
_08004360:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r3, _08004480 @ =gUnk_082D88B8
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r0, [r0]
	movs r7, #0x80
	lsls r7, r7, #2
	ands r0, r7
	cmp r0, #0
	beq _0800438C
	b _080047BE
_0800438C:
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _080043E4
	ldrh r1, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _080043E4
	ldrb r0, [r4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r0, [r0]
	ands r0, r7
	cmp r0, #0
	bne _080043E4
	movs r3, #0x20
	ldrsh r0, [r5, r3]
	ldr r3, [r6, #0x40]
	adds r3, r3, r0
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	subs r3, r3, r0
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x22
	ldrsh r2, [r5, r0]
	ldr r0, [r6, #0x44]
	subs r0, r0, r2
	adds r0, #1
	subs r1, r1, r0
	cmp r3, r1
	bge _080043E4
	b _080047BE
_080043E4:
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _0800444A
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	adds r0, #1
	cmp r1, r0
	ble _0800444A
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	ldr r1, _08004480 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0800444A
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	adds r2, #1
	lsls r2, r2, #0xc
	movs r3, #0x20
	ldrsh r1, [r5, r3]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	subs r2, r2, r0
	movs r0, #0x1e
	ldrsh r1, [r5, r0]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x22
	ldrsh r3, [r5, r0]
	ldr r0, [r6, #0x44]
	subs r0, r0, r3
	adds r0, #1
	subs r1, r1, r0
	cmp r2, r1
	bge _0800444A
	b _080047BE
_0800444A:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	adds r0, #1
	lsls r0, r0, #0xc
	movs r1, #0x19
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	adds r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrb r1, [r6]
	cmp r1, #0
	beq _0800447A
	b _080047BE
_0800447A:
	adds r0, #0x80
	strh r1, [r0]
	b _080047BE
	.align 2, 0
_08004480: .4byte gUnk_082D88B8
_08004484:
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	subs r4, r0, #1
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r0, r4, r0
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080044AC
	movs r0, #2
	orrs r0, r2
	b _080044B0
_080044AC:
	adds r0, r2, #0
	orrs r0, r3
_080044B0:
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	subs r0, #1
	b _080047CC
_080044B8:
	ldrh r2, [r5, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bgt _080044C4
	b _080047BE
_080044C4:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _08004524 @ =gUnk_082D88B8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080044EE
	b _080047BE
_080044EE:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0800450A
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800450A
	ldr r3, _08004528 @ =0x00000103
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _0800450A
	b _080047BE
_0800450A:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08004530
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r1, _0800452C @ =gUnk_082D8DA4
	lsls r0, r2, #2
	adds r0, r0, r1
	b _08004698
	.align 2, 0
_08004524: .4byte gUnk_082D88B8
_08004528: .4byte 0x00000103
_0800452C: .4byte gUnk_082D8DA4
_08004530:
	ldr r0, [r6, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	bne _0800453C
	b _0800475C
_0800453C:
	movs r3, #0x20
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _080045E0
	ldrh r1, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _080045E0
	ldrb r0, [r4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _080045DC @ =gUnk_082D88B8
	mov sl, r3
	lsls r0, r7, #2
	add r0, sl
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _080045E0
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	ldr r2, [r6, #0x40]
	adds r2, r2, r0
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	subs r2, r2, r0
	mov ip, r2
	movs r2, #0x22
	ldrsh r0, [r5, r2]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp ip, r1
	bge _080045E0
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	bne _080045AA
	b _080047BE
_080045AA:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x16
	mov r1, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _080045D0
	b _080047BE
_080045D0:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	bne _0800468E
	b _080046BC
	.align 2, 0
_080045DC: .4byte gUnk_082D88B8
_080045E0:
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _080045EA
	b _0800475C
_080045EA:
	movs r3, #0x24
	ldrsh r1, [r5, r3]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	adds r0, #1
	cmp r1, r0
	bgt _080045FA
	b _0800475C
_080045FA:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _080046B4 @ =gUnk_082D88B8
	mov sl, r3
	lsls r0, r7, #2
	add r0, sl
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _0800462A
	b _0800475C
_0800462A:
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	adds r2, #1
	lsls r2, r2, #0xc
	movs r0, #0x20
	ldrsh r1, [r5, r0]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	subs r2, r2, r0
	mov ip, r2
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp ip, r1
	blt _08004654
	b _0800475C
_08004654:
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	bne _0800465E
	b _080047BE
_0800465E:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x16
	mov r1, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _08004684
	b _080047BE
_08004684:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _080046BC
_0800468E:
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r0, _080046B8 @ =gUnk_082D8DA4
	adds r0, r2, r0
_08004698:
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080047CE
	.align 2, 0
_080046B4: .4byte gUnk_082D88B8
_080046B8: .4byte gUnk_082D8DA4
_080046BC:
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r3, r0, #0xc
	movs r2, #0x1b
	ldrsb r2, [r5, r2]
	lsls r1, r2, #8
	ldr r0, [r6, #0x4c]
	adds r0, r0, r1
	cmp r3, r0
	bls _080046D8
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	cmp r3, r0
	bls _080046F2
_080046D8:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080047BE
	ldr r0, [r6, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r5, r3]
	cmp r0, r1
	beq _080047BE
_080046F2:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	lsls r1, r2, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r6]
	cmp r1, #0
	bne _08004736
	adds r0, r6, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08004736
	ldr r1, [r6, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08004736
	ldr r0, _08004750 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r6, #8]
	strh r2, [r3]
_08004736:
	adds r0, r6, #0
	adds r0, #0x57
	strb r7, [r0]
	ldr r1, _08004754 @ =gUnk_082D88B8
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08004758 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r6, #0x58]
	orrs r0, r1
	str r0, [r6, #0x58]
	b _080047BE
	.align 2, 0
_08004750: .4byte 0xFFFFEF9F
_08004754: .4byte gUnk_082D88B8
_08004758: .4byte 0x000FFFFF
_0800475C:
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	movs r1, #0x1b
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r6]
	cmp r1, #0
	bne _080047A4
	adds r0, r6, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080047A4
	ldr r1, [r6, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _080047A4
	ldr r0, _080047C4 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r6, #8]
	strh r2, [r3]
_080047A4:
	adds r0, r6, #0
	adds r0, #0x57
	mov r3, sp
	ldrb r3, [r3]
	strb r3, [r0]
	ldr r1, _080047C8 @ =gUnk_082D88B8
	ldr r2, [sp]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r6, #0x58]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r6, #0x58]
_080047BE:
	movs r0, #0xf
	b _080047CE
	.align 2, 0
_080047C4: .4byte 0xFFFFEF9F
_080047C8: .4byte gUnk_082D88B8
_080047CC:
	movs r0, #0
_080047CE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080047E0
sub_080047E0: @ 0x080047E0
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, [r0, #0x40]
	asrs r2, r0, #0xc
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r2, r0
	bne _08004806
	ldr r0, [r4, #0xc]
	asrs r1, r0, #0xc
	movs r6, #0x1e
	ldrsh r0, [r4, r6]
	cmp r1, r0
	beq _0800480A
_08004806:
	movs r0, #0xf
	b _08004878
_0800480A:
	lsls r1, r1, #4
	ldr r0, [r4]
	asrs r0, r0, #8
	lsls r2, r2, #4
	subs r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	cmp r0, r1
	bgt _08004854
	str r1, [r4, #4]
	mov r2, ip
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #8
	orrs r1, r0
	strb r1, [r2]
	mov r1, ip
	adds r1, #0x52
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08004854
	movs r0, #0
	strh r0, [r1]
	mov r6, ip
	ldrb r1, [r6]
	cmp r1, #0
	bne _08004854
	mov r0, ip
	adds r0, #0xd2
	strh r1, [r0]
_08004854:
	movs r0, #0x70
	ands r0, r5
	cmp r0, #0x20
	bne _08004876
	mov r0, ip
	adds r0, #0x57
	strb r3, [r0]
	ldr r1, _08004880 @ =gUnk_082D88B8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08004884 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08004876:
	movs r0, #0xb
_08004878:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08004880: .4byte gUnk_082D88B8
_08004884: .4byte 0x000FFFFF

	thumb_func_start sub_08004888
sub_08004888: @ 0x08004888
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _08004900
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xc
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _08004900
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4, #0x1c]
	ldrh r2, [r4, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080048F8 @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _08004918
	ldrh r0, [r4, #0x1e]
	subs r0, #1
	strh r0, [r4, #0x1e]
	ldr r0, _080048FC @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	adds r2, r6, #0
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08004988
	.align 2, 0
_080048F8: .4byte gUnk_082D88B8
_080048FC: .4byte gUnk_082D8DA4
_08004900:
	ldr r0, [r5, #0x40]
	asrs r2, r0, #0xc
	movs r7, #0x1c
	ldrsh r0, [r4, r7]
	cmp r2, r0
	bne _08004918
	ldr r0, [r4, #0xc]
	asrs r1, r0, #0xc
	movs r7, #0x1e
	ldrsh r0, [r4, r7]
	cmp r1, r0
	beq _0800491C
_08004918:
	movs r0, #0xf
	b _08004988
_0800491C:
	lsls r1, r1, #4
	adds r1, #8
	ldr r0, [r4]
	asrs r0, r0, #8
	lsls r2, r2, #4
	subs r0, r0, r2
	asrs r0, r0, #1
	adds r1, r1, r0
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	cmp r0, r1
	bgt _08004966
	str r1, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #8
	orrs r1, r0
	strb r1, [r2]
	adds r1, r5, #0
	adds r1, #0x52
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08004966
	movs r0, #0
	strh r0, [r1]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08004966
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
_08004966:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x20
	bne _08004986
	adds r0, r5, #0
	adds r0, #0x57
	strb r3, [r0]
	ldr r1, _08004990 @ =gUnk_082D88B8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08004994 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_08004986:
	movs r0, #0xb
_08004988:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004990: .4byte gUnk_082D88B8
_08004994: .4byte 0x000FFFFF

	thumb_func_start sub_08004998
sub_08004998: @ 0x08004998
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, [r0, #0x40]
	asrs r1, r0, #0xc
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	cmp r1, r0
	bne _080049BE
	ldr r0, [r4, #0xc]
	asrs r2, r0, #0xc
	movs r6, #0x1e
	ldrsh r0, [r4, r6]
	cmp r2, r0
	beq _080049C2
_080049BE:
	movs r0, #0xf
	b _08004A34
_080049C2:
	lsls r2, r2, #4
	adds r0, r1, #1
	lsls r0, r0, #4
	ldr r1, [r4]
	asrs r1, r1, #8
	subs r0, r0, r1
	subs r0, #1
	asrs r0, r0, #1
	adds r2, r2, r0
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r2, r2, r0
	adds r2, #2
	lsls r2, r2, #8
	ldr r0, [r4, #4]
	cmp r0, r2
	bgt _08004A10
	str r2, [r4, #4]
	mov r2, ip
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #8
	orrs r1, r0
	strb r1, [r2]
	mov r1, ip
	adds r1, #0x52
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08004A10
	movs r0, #0
	strh r0, [r1]
	mov r6, ip
	ldrb r1, [r6]
	cmp r1, #0
	bne _08004A10
	mov r0, ip
	adds r0, #0xd2
	strh r1, [r0]
_08004A10:
	movs r0, #0x70
	ands r0, r5
	cmp r0, #0x20
	bne _08004A32
	mov r0, ip
	adds r0, #0x57
	strb r3, [r0]
	ldr r1, _08004A3C @ =gUnk_082D88B8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08004A40 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08004A32:
	movs r0, #0xe
_08004A34:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08004A3C: .4byte gUnk_082D88B8
_08004A40: .4byte 0x000FFFFF

	thumb_func_start sub_08004A44
sub_08004A44: @ 0x08004A44
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _08004ABC
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xc
	ldr r1, [r4, #4]
	cmp r1, r0
	bgt _08004ABC
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4, #0x1c]
	ldrh r2, [r4, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08004AB4 @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #0x18
	ands r0, r1
	cmp r0, #0
	beq _08004AD4
	ldrh r0, [r4, #0x1e]
	subs r0, #1
	strh r0, [r4, #0x1e]
	ldr r0, _08004AB8 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	adds r2, r6, #0
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08004B48
	.align 2, 0
_08004AB4: .4byte gUnk_082D88B8
_08004AB8: .4byte gUnk_082D8DA4
_08004ABC:
	ldr r0, [r5, #0x40]
	asrs r1, r0, #0xc
	movs r7, #0x1c
	ldrsh r0, [r4, r7]
	cmp r1, r0
	bne _08004AD4
	ldr r0, [r4, #0xc]
	asrs r2, r0, #0xc
	movs r7, #0x1e
	ldrsh r0, [r4, r7]
	cmp r2, r0
	beq _08004AD8
_08004AD4:
	movs r0, #0xf
	b _08004B48
_08004AD8:
	lsls r2, r2, #4
	adds r2, #8
	adds r0, r1, #1
	lsls r0, r0, #4
	ldr r1, [r4]
	asrs r1, r1, #8
	subs r0, r0, r1
	subs r0, #1
	asrs r0, r0, #1
	adds r2, r2, r0
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r2, r2, r0
	adds r2, #2
	lsls r2, r2, #8
	ldr r0, [r4, #4]
	cmp r0, r2
	bgt _08004B26
	str r2, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #8
	orrs r1, r0
	strb r1, [r2]
	adds r1, r5, #0
	adds r1, #0x52
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08004B26
	movs r0, #0
	strh r0, [r1]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08004B26
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
_08004B26:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x20
	bne _08004B46
	adds r0, r5, #0
	adds r0, #0x57
	strb r3, [r0]
	ldr r1, _08004B50 @ =gUnk_082D88B8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08004B54 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_08004B46:
	movs r0, #0xe
_08004B48:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004B50: .4byte gUnk_082D88B8
_08004B54: .4byte 0x000FFFFF

	thumb_func_start sub_08004B58
sub_08004B58: @ 0x08004B58
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x50
	beq _08004B7C
	cmp r0, #0x30
	beq _08004B7A
	b _08004DA2
_08004B7A:
	b _08004B9E
_08004B7C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _08004BA2
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08004B9E
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r3, #0x1e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _08004BA2
_08004B9E:
	movs r0, #0xf
	b _08004DB2
_08004BA2:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r2, r0, #1
	lsls r1, r2, #4
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	subs r1, r1, r0
	subs r6, r1, #1
	ldrh r1, [r4, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _08004C36
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	cmp r0, r2
	ble _08004C36
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08004C78 @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08004C7C @ =0x00000127
	cmp r1, r0
	bne _08004C10
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08004C10
	movs r0, #2
	orrs r3, r0
_08004C10:
	ands r3, r2
	cmp r3, #0
	bne _08004C1E
	ldr r0, _08004C80 @ =0xF0000004
	ands r2, r0
	cmp r2, #4
	bne _08004C36
_08004C1E:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	cmp r0, r6
	bge _08004C36
	adds r6, r0, #0
_08004C36:
	ldr r1, [r5, #8]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08004CF0
	ldr r2, [r4, #4]
	cmp r2, r6
	blt _08004CCC
	ldrb r0, [r5]
	cmp r0, #0
	bne _08004C8C
	ldr r2, _08004C84 @ =0xFFFFFB00
	adds r3, r6, r2
	ldr r1, _08004C88 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08004C8C
	ldr r1, [r5, #0x4c]
	cmp r6, r1
	bgt _08004C8C
	ldr r0, [r5, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08004C8E
	.align 2, 0
_08004C78: .4byte gUnk_082D88B8
_08004C7C: .4byte 0x00000127
_08004C80: .4byte 0xF0000004
_08004C84: .4byte 0xFFFFFB00
_08004C88: .4byte gCurLevelInfo
_08004C8C:
	str r6, [r4, #4]
_08004C8E:
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08004D74
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r2, [r5]
	cmp r2, #0
	bne _08004D74
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08004CC2
	ldr r0, _08004CC8 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
_08004CC2:
	strh r2, [r3]
	b _08004D74
	.align 2, 0
_08004CC8: .4byte 0xFFFFEF9F
_08004CCC:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08004D74
	ldr r3, _08004CEC @ =0xFFFFF800
	adds r0, r6, r3
	cmp r2, r0
	blt _08004D74
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08004D74
	.align 2, 0
_08004CEC: .4byte 0xFFFFF800
_08004CF0:
	ldr r0, _08004D2C @ =0xFFFFF800
	adds r1, r6, r0
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08004D74
	ldrb r0, [r5]
	cmp r0, #0
	bne _08004D38
	ldr r1, _08004D30 @ =0xFFFFFB00
	adds r3, r6, r1
	ldr r1, _08004D34 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08004D38
	ldr r1, [r5, #0x4c]
	cmp r6, r1
	bgt _08004D38
	ldr r0, [r5, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08004D3A
	.align 2, 0
_08004D2C: .4byte 0xFFFFF800
_08004D30: .4byte 0xFFFFFB00
_08004D34: .4byte gCurLevelInfo
_08004D38:
	str r6, [r4, #4]
_08004D3A:
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08004D58
	adds r0, #0x80
	strh r1, [r0]
_08004D58:
	movs r0, #0xf
	ands r0, r7
	cmp r0, #0
	bne _08004D74
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _08004D74
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08004D74:
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x50
	bne _08004D98
	adds r0, r5, #0
	adds r0, #0x57
	mov r2, r8
	strb r2, [r0]
	ldr r1, _08004DA8 @ =gUnk_082D88B8
	mov r3, r8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08004DAC @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_08004D98:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _08004DB0
_08004DA2:
	movs r0, #7
	b _08004DB2
	.align 2, 0
_08004DA8: .4byte gUnk_082D88B8
_08004DAC: .4byte 0x000FFFFF
_08004DB0:
	movs r0, #5
_08004DB2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08004DBC
sub_08004DBC: @ 0x08004DBC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	beq _08004DE0
	cmp r0, #0x30
	beq _08004DDE
	b _08004F94
_08004DDE:
	b _08004E04
_08004DE0:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _08004E08
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08004E04
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _08004E08
_08004E04:
	movs r0, #0xf
	b _08004F96
_08004E08:
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	adds r1, #1
	lsls r1, r1, #4
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0x1b
	ldrsb r2, [r4, r2]
	adds r0, r2, #0
	adds r0, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	subs r3, r1, r0
	subs r5, r3, #1
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x60
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08004EE8
	ldr r2, [r4, #4]
	cmp r2, r5
	blt _08004EC4
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08004E80
	ldr r2, _08004E78 @ =0xFFFFFAFF
	adds r3, r3, r2
	ldr r1, _08004E7C @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08004E80
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08004E80
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08004E82
	.align 2, 0
_08004E78: .4byte 0xFFFFFAFF
_08004E7C: .4byte gCurLevelInfo
_08004E80:
	str r5, [r4, #4]
_08004E82:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08004F6E
	adds r0, #0xd2
	strh r1, [r0]
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _08004F6E
	ldr r1, [r1, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08004EBA
	ldr r0, _08004EC0 @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
_08004EBA:
	strh r2, [r3]
	b _08004F6E
	.align 2, 0
_08004EC0: .4byte 0xFFFFEF9F
_08004EC4:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08004F6E
	ldr r1, _08004EE4 @ =0xFFFFF7FF
	adds r0, r3, r1
	cmp r2, r0
	blt _08004F6E
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08004F6E
	.align 2, 0
_08004EE4: .4byte 0xFFFFF7FF
_08004EE8:
	ldr r2, _08004F28 @ =0xFFFFF7FF
	adds r1, r3, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08004F6E
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08004F34
	ldr r2, _08004F2C @ =0xFFFFFAFF
	adds r3, r3, r2
	ldr r1, _08004F30 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08004F34
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08004F34
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08004F36
	.align 2, 0
_08004F28: .4byte 0xFFFFF7FF
_08004F2C: .4byte 0xFFFFFAFF
_08004F30: .4byte gCurLevelInfo
_08004F34:
	str r5, [r4, #4]
_08004F36:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08004F56
	adds r0, #0xd2
	strh r1, [r0]
_08004F56:
	movs r0, #0xf
	ands r0, r6
	cmp r0, #0
	bne _08004F6E
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r0, r7, r0
	cmp r0, #0xb
	bgt _08004F6E
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08004F6E:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _08004F94
	mov r0, ip
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _08004FA0 @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08004FA4 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08004F94:
	movs r0, #7
_08004F96:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004FA0: .4byte gUnk_082D88B8
_08004FA4: .4byte 0x000FFFFF

	thumb_func_start sub_08004FA8
sub_08004FA8: @ 0x08004FA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x50
	beq _08004FCC
	cmp r0, #0
	beq _08004FCA
	b _080051F2
_08004FCA:
	b _08004FEE
_08004FCC:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _08004FF2
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08004FEE
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _08004FF2
_08004FEE:
	movs r0, #0xf
	b _08005202
_08004FF2:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r3, r0, #1
	lsls r1, r3, #4
	movs r0, #0x1c
	ldrsh r2, [r4, r0]
	adds r2, #1
	lsls r0, r2, #3
	subs r1, r1, r0
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	adds r6, r1, r0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, r2
	ble _08005086
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	cmp r0, r3
	ble _08005086
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080050C8 @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _080050CC @ =0x00000127
	cmp r1, r0
	bne _08005060
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08005060
	movs r0, #2
	orrs r3, r0
_08005060:
	ands r3, r2
	cmp r3, #0
	bne _0800506E
	ldr r0, _080050D0 @ =0xF0000004
	ands r2, r0
	cmp r2, #4
	bne _08005086
_0800506E:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	cmp r0, r6
	bge _08005086
	adds r6, r0, #0
_08005086:
	ldr r1, [r5, #8]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08005140
	ldr r2, [r4, #4]
	cmp r2, r6
	blt _0800511C
	ldrb r0, [r5]
	cmp r0, #0
	bne _080050DC
	ldr r2, _080050D4 @ =0xFFFFFB00
	adds r3, r6, r2
	ldr r1, _080050D8 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _080050DC
	ldr r1, [r5, #0x4c]
	cmp r6, r1
	bgt _080050DC
	ldr r0, [r5, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _080050DE
	.align 2, 0
_080050C8: .4byte gUnk_082D88B8
_080050CC: .4byte 0x00000127
_080050D0: .4byte 0xF0000004
_080050D4: .4byte 0xFFFFFB00
_080050D8: .4byte gCurLevelInfo
_080050DC:
	str r6, [r4, #4]
_080050DE:
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080051C4
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r2, [r5]
	cmp r2, #0
	bne _080051C4
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08005112
	ldr r0, _08005118 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
_08005112:
	strh r2, [r3]
	b _080051C4
	.align 2, 0
_08005118: .4byte 0xFFFFEF9F
_0800511C:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080051C4
	ldr r1, _0800513C @ =0xFFFFF800
	adds r0, r6, r1
	cmp r2, r0
	blt _080051C4
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _080051C4
	.align 2, 0
_0800513C: .4byte 0xFFFFF800
_08005140:
	ldr r2, _0800517C @ =0xFFFFF800
	adds r1, r6, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _080051C4
	ldrb r0, [r5]
	cmp r0, #0
	bne _08005188
	ldr r0, _08005180 @ =0xFFFFFB00
	adds r3, r6, r0
	ldr r1, _08005184 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005188
	ldr r1, [r5, #0x4c]
	cmp r6, r1
	bgt _08005188
	ldr r0, [r5, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _0800518A
	.align 2, 0
_0800517C: .4byte 0xFFFFF800
_08005180: .4byte 0xFFFFFB00
_08005184: .4byte gCurLevelInfo
_08005188:
	str r6, [r4, #4]
_0800518A:
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080051A8
	adds r0, #0x80
	strh r1, [r0]
_080051A8:
	movs r0, #0xf
	ands r0, r7
	cmp r0, #0
	bne _080051C4
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _080051C4
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_080051C4:
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x50
	bne _080051E8
	adds r0, r5, #0
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _080051F8 @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080051FC @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_080051E8:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _08005200
_080051F2:
	movs r0, #0xd
	b _08005202
	.align 2, 0
_080051F8: .4byte gUnk_082D88B8
_080051FC: .4byte 0x000FFFFF
_08005200:
	movs r0, #5
_08005202:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800520C
sub_0800520C: @ 0x0800520C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	beq _08005230
	cmp r0, #0
	beq _0800522E
	b _080053E4
_0800522E:
	b _08005254
_08005230:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _08005258
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08005254
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _08005258
_08005254:
	movs r0, #0xf
	b _080053E6
_08005258:
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	adds r1, #1
	lsls r1, r1, #4
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	adds r0, #1
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r2, #0x1b
	ldrsb r2, [r4, r2]
	adds r0, r2, #0
	adds r0, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	adds r5, r1, r0
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x60
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08005338
	ldr r2, [r4, #4]
	cmp r2, r5
	blt _08005314
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _080052D0
	ldr r2, _080052C8 @ =0xFFFFFB00
	adds r3, r5, r2
	ldr r1, _080052CC @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _080052D0
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _080052D0
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _080052D2
	.align 2, 0
_080052C8: .4byte 0xFFFFFB00
_080052CC: .4byte gCurLevelInfo
_080052D0:
	str r5, [r4, #4]
_080052D2:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _080053BE
	adds r0, #0xd2
	strh r1, [r0]
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _080053BE
	ldr r1, [r1, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800530A
	ldr r0, _08005310 @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
_0800530A:
	strh r2, [r3]
	b _080053BE
	.align 2, 0
_08005310: .4byte 0xFFFFEF9F
_08005314:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080053BE
	ldr r1, _08005334 @ =0xFFFFF800
	adds r0, r5, r1
	cmp r2, r0
	blt _080053BE
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _080053BE
	.align 2, 0
_08005334: .4byte 0xFFFFF800
_08005338:
	ldr r2, _08005378 @ =0xFFFFF800
	adds r1, r5, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _080053BE
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08005384
	ldr r2, _0800537C @ =0xFFFFFB00
	adds r3, r5, r2
	ldr r1, _08005380 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005384
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08005384
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005386
	.align 2, 0
_08005378: .4byte 0xFFFFF800
_0800537C: .4byte 0xFFFFFB00
_08005380: .4byte gCurLevelInfo
_08005384:
	str r5, [r4, #4]
_08005386:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _080053A6
	adds r0, #0xd2
	strh r1, [r0]
_080053A6:
	movs r0, #0xf
	ands r0, r6
	cmp r0, #0
	bne _080053BE
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r0, r7, r0
	cmp r0, #0xb
	bgt _080053BE
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_080053BE:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _080053E4
	mov r0, ip
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _080053F0 @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080053F4 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_080053E4:
	movs r0, #0xd
_080053E6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080053F0: .4byte gUnk_082D88B8
_080053F4: .4byte 0x000FFFFF

	thumb_func_start sub_080053F8
sub_080053F8: @ 0x080053F8
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, [r0, #0x40]
	asrs r2, r0, #0xc
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r2, r0
	bne _0800541E
	ldr r0, [r4, #0xc]
	asrs r1, r0, #0xc
	movs r6, #0x1e
	ldrsh r0, [r4, r6]
	cmp r1, r0
	beq _08005422
_0800541E:
	movs r0, #0xf
	b _0800548E
_08005422:
	lsls r1, r1, #4
	ldr r0, [r4]
	asrs r0, r0, #8
	lsls r2, r2, #4
	subs r0, r0, r2
	adds r1, r1, r0
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	adds r1, #1
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	cmp r0, r1
	bgt _0800546A
	str r1, [r4, #4]
	mov r2, ip
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #8
	orrs r1, r0
	strb r1, [r2]
	mov r1, ip
	adds r1, #0x52
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _0800546A
	movs r0, #0
	strh r0, [r1]
	mov r6, ip
	ldrb r1, [r6]
	cmp r1, #0
	bne _0800546A
	mov r0, ip
	adds r0, #0xd2
	strh r1, [r0]
_0800546A:
	movs r0, #0x70
	ands r0, r5
	cmp r0, #0x20
	bne _0800548C
	mov r0, ip
	adds r0, #0x57
	strb r3, [r0]
	ldr r1, _08005494 @ =gUnk_082D88B8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08005498 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_0800548C:
	movs r0, #0xb
_0800548E:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08005494: .4byte gUnk_082D88B8
_08005498: .4byte 0x000FFFFF

	thumb_func_start sub_0800549C
sub_0800549C: @ 0x0800549C
	push {r4, r5, r6, lr}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	ldr r0, [r0, #0x40]
	asrs r2, r0, #0xc
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r2, r0
	bne _080054C2
	ldr r0, [r4, #0xc]
	asrs r1, r0, #0xc
	movs r6, #0x1e
	ldrsh r0, [r4, r6]
	cmp r1, r0
	beq _080054C6
_080054C2:
	movs r0, #0xf
	b _08005536
_080054C6:
	lsls r1, r1, #4
	subs r1, #1
	adds r2, #1
	lsls r2, r2, #4
	ldr r0, [r4]
	asrs r0, r0, #8
	subs r2, r2, r0
	adds r1, r1, r2
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	adds r1, #2
	lsls r1, r1, #8
	ldr r0, [r4, #4]
	cmp r0, r1
	bgt _08005512
	str r1, [r4, #4]
	mov r2, ip
	adds r2, #0x62
	ldrb r0, [r2]
	movs r1, #8
	orrs r1, r0
	strb r1, [r2]
	mov r1, ip
	adds r1, #0x52
	movs r2, #0
	ldrsh r0, [r1, r2]
	cmp r0, #0
	ble _08005512
	movs r0, #0
	strh r0, [r1]
	mov r6, ip
	ldrb r1, [r6]
	cmp r1, #0
	bne _08005512
	mov r0, ip
	adds r0, #0xd2
	strh r1, [r0]
_08005512:
	movs r0, #0x70
	ands r0, r5
	cmp r0, #0x20
	bne _08005534
	mov r0, ip
	adds r0, #0x57
	strb r3, [r0]
	ldr r1, _0800553C @ =gUnk_082D88B8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08005540 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08005534:
	movs r0, #0xe
_08005536:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800553C: .4byte gUnk_082D88B8
_08005540: .4byte 0x000FFFFF

	thumb_func_start sub_08005544
sub_08005544: @ 0x08005544
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x50
	beq _08005568
	cmp r0, #0x30
	beq _08005566
	b _0800578A
_08005566:
	b _0800558A
_08005568:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _0800558E
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0800558A
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _0800558E
_0800558A:
	movs r0, #0xf
	b _0800579A
_0800558E:
	movs r0, #0x1e
	ldrsh r2, [r4, r0]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	adds r0, #1
	adds r0, r2, r0
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r4]
	subs r0, r0, r1
	subs r6, r0, #1
	ldrh r3, [r4, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08005620
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	adds r0, r2, #1
	cmp r1, r0
	ble _08005620
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	subs r1, r3, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08005660 @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08005664 @ =0x00000127
	cmp r1, r0
	bne _080055FA
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _080055FA
	movs r0, #2
	orrs r3, r0
_080055FA:
	ands r3, r2
	cmp r3, #0
	bne _08005608
	ldr r0, _08005668 @ =0xF0000004
	ands r2, r0
	cmp r2, #4
	bne _08005620
_08005608:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	cmp r0, r6
	bge _08005620
	adds r6, r0, #0
_08005620:
	ldr r1, [r5, #8]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080056D8
	ldr r2, [r4, #4]
	cmp r2, r6
	blt _080056B4
	ldrb r0, [r5]
	cmp r0, #0
	bne _08005674
	ldr r2, _0800566C @ =0xFFFFFB00
	adds r3, r6, r2
	ldr r1, _08005670 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005674
	ldr r1, [r5, #0x4c]
	cmp r6, r1
	bgt _08005674
	ldr r0, [r5, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005676
	.align 2, 0
_08005660: .4byte gUnk_082D88B8
_08005664: .4byte 0x00000127
_08005668: .4byte 0xF0000004
_0800566C: .4byte 0xFFFFFB00
_08005670: .4byte gCurLevelInfo
_08005674:
	str r6, [r4, #4]
_08005676:
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _0800575C
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r2, [r5]
	cmp r2, #0
	bne _0800575C
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080056AA
	ldr r0, _080056B0 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
_080056AA:
	strh r2, [r3]
	b _0800575C
	.align 2, 0
_080056B0: .4byte 0xFFFFEF9F
_080056B4:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800575C
	ldr r1, _080056D4 @ =0xFFFFF800
	adds r0, r6, r1
	cmp r2, r0
	blt _0800575C
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _0800575C
	.align 2, 0
_080056D4: .4byte 0xFFFFF800
_080056D8:
	ldr r2, _08005714 @ =0xFFFFF800
	adds r1, r6, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _0800575C
	ldrb r0, [r5]
	cmp r0, #0
	bne _08005720
	ldr r0, _08005718 @ =0xFFFFFB00
	adds r3, r6, r0
	ldr r1, _0800571C @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005720
	ldr r1, [r5, #0x4c]
	cmp r6, r1
	bgt _08005720
	ldr r0, [r5, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005722
	.align 2, 0
_08005714: .4byte 0xFFFFF800
_08005718: .4byte 0xFFFFFB00
_0800571C: .4byte gCurLevelInfo
_08005720:
	str r6, [r4, #4]
_08005722:
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08005740
	adds r0, #0x80
	strh r1, [r0]
_08005740:
	movs r0, #0xf
	ands r0, r7
	cmp r0, #0
	bne _0800575C
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _0800575C
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_0800575C:
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x50
	bne _08005780
	adds r0, r5, #0
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _08005790 @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08005794 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_08005780:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _08005798
_0800578A:
	movs r0, #7
	b _0800579A
	.align 2, 0
_08005790: .4byte gUnk_082D88B8
_08005794: .4byte 0x000FFFFF
_08005798:
	movs r0, #5
_0800579A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080057A4
sub_080057A4: @ 0x080057A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x50
	beq _080057C8
	cmp r0, #0
	beq _080057C6
	b _080059EA
_080057C6:
	b _080057EA
_080057C8:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _080057EE
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _080057EA
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _080057EE
_080057EA:
	movs r0, #0xf
	b _080059FA
_080057EE:
	movs r0, #0x1e
	ldrsh r3, [r4, r0]
	movs r1, #0x1c
	ldrsh r2, [r4, r1]
	subs r0, r3, r2
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r4]
	adds r6, r0, r1
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	adds r2, #1
	cmp r0, r2
	ble _0800587E
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	adds r0, r3, #1
	cmp r1, r0
	ble _0800587E
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080058C0 @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _080058C4 @ =0x00000127
	cmp r1, r0
	bne _08005858
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08005858
	movs r0, #2
	orrs r3, r0
_08005858:
	ands r3, r2
	cmp r3, #0
	bne _08005866
	ldr r0, _080058C8 @ =0xF0000004
	ands r2, r0
	cmp r2, #4
	bne _0800587E
_08005866:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	cmp r0, r6
	bge _0800587E
	adds r6, r0, #0
_0800587E:
	ldr r1, [r5, #8]
	movs r0, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08005938
	ldr r2, [r4, #4]
	cmp r2, r6
	blt _08005914
	ldrb r0, [r5]
	cmp r0, #0
	bne _080058D4
	ldr r2, _080058CC @ =0xFFFFFB00
	adds r3, r6, r2
	ldr r1, _080058D0 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _080058D4
	ldr r1, [r5, #0x4c]
	cmp r6, r1
	bgt _080058D4
	ldr r0, [r5, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _080058D6
	.align 2, 0
_080058C0: .4byte gUnk_082D88B8
_080058C4: .4byte 0x00000127
_080058C8: .4byte 0xF0000004
_080058CC: .4byte 0xFFFFFB00
_080058D0: .4byte gCurLevelInfo
_080058D4:
	str r6, [r4, #4]
_080058D6:
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080059BC
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r2, [r5]
	cmp r2, #0
	bne _080059BC
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800590A
	ldr r0, _08005910 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
_0800590A:
	strh r2, [r3]
	b _080059BC
	.align 2, 0
_08005910: .4byte 0xFFFFEF9F
_08005914:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080059BC
	ldr r1, _08005934 @ =0xFFFFF800
	adds r0, r6, r1
	cmp r2, r0
	blt _080059BC
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _080059BC
	.align 2, 0
_08005934: .4byte 0xFFFFF800
_08005938:
	ldr r2, _08005974 @ =0xFFFFF800
	adds r1, r6, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _080059BC
	ldrb r0, [r5]
	cmp r0, #0
	bne _08005980
	ldr r0, _08005978 @ =0xFFFFFB00
	adds r3, r6, r0
	ldr r1, _0800597C @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005980
	ldr r1, [r5, #0x4c]
	cmp r6, r1
	bgt _08005980
	ldr r0, [r5, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005982
	.align 2, 0
_08005974: .4byte 0xFFFFF800
_08005978: .4byte 0xFFFFFB00
_0800597C: .4byte gCurLevelInfo
_08005980:
	str r6, [r4, #4]
_08005982:
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	adds r0, r5, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080059A0
	adds r0, #0x80
	strh r1, [r0]
_080059A0:
	movs r0, #0xf
	ands r0, r7
	cmp r0, #0
	bne _080059BC
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _080059BC
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_080059BC:
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x50
	bne _080059E0
	adds r0, r5, #0
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _080059F0 @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080059F4 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_080059E0:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r7
	cmp r0, #0
	bne _080059F8
_080059EA:
	movs r0, #0xd
	b _080059FA
	.align 2, 0
_080059F0: .4byte gUnk_082D88B8
_080059F4: .4byte 0x000FFFFF
_080059F8:
	movs r0, #5
_080059FA:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08005A04
sub_08005A04: @ 0x08005A04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	beq _08005A22
	b _08005BDE
_08005A22:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _08005A4A
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08005A46
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _08005A4A
_08005A46:
	movs r0, #0xf
	b _08005BEE
_08005A4A:
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	adds r1, #1
	lsls r1, r1, #4
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0x1b
	ldrsb r2, [r4, r2]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	subs r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r3, r0
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x60
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08005B28
	ldr r2, [r4, #4]
	cmp r2, r5
	blt _08005B04
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08005AC0
	ldr r2, _08005AB8 @ =0xFFFFFC00
	adds r3, r3, r2
	ldr r1, _08005ABC @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005AC0
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08005AC0
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005AC2
	.align 2, 0
_08005AB8: .4byte 0xFFFFFC00
_08005ABC: .4byte gCurLevelInfo
_08005AC0:
	str r5, [r4, #4]
_08005AC2:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08005BAE
	adds r0, #0xd2
	strh r1, [r0]
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _08005BAE
	ldr r1, [r1, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08005AFA
	ldr r0, _08005B00 @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
_08005AFA:
	strh r2, [r3]
	b _08005BAE
	.align 2, 0
_08005B00: .4byte 0xFFFFEF9F
_08005B04:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08005BAE
	ldr r1, _08005B24 @ =0xFFFFF900
	adds r0, r3, r1
	cmp r2, r0
	blt _08005BAE
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08005BAE
	.align 2, 0
_08005B24: .4byte 0xFFFFF900
_08005B28:
	ldr r2, _08005B68 @ =0xFFFFF900
	adds r1, r3, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08005BAE
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08005B74
	ldr r2, _08005B6C @ =0xFFFFFC00
	adds r3, r3, r2
	ldr r1, _08005B70 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005B74
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08005B74
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005B76
	.align 2, 0
_08005B68: .4byte 0xFFFFF900
_08005B6C: .4byte 0xFFFFFC00
_08005B70: .4byte gCurLevelInfo
_08005B74:
	str r5, [r4, #4]
_08005B76:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08005B96
	adds r0, #0xd2
	strh r1, [r0]
_08005B96:
	movs r0, #0xf
	ands r0, r6
	cmp r0, #0
	bne _08005BAE
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r0, r7, r0
	cmp r0, #0xb
	bgt _08005BAE
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08005BAE:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _08005BD4
	mov r0, ip
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _08005BE4 @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08005BE8 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08005BD4:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _08005BEC
_08005BDE:
	movs r0, #7
	b _08005BEE
	.align 2, 0
_08005BE4: .4byte gUnk_082D88B8
_08005BE8: .4byte 0x000FFFFF
_08005BEC:
	movs r0, #5
_08005BEE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08005BF8
sub_08005BF8: @ 0x08005BF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	beq _08005C16
	b _08005DCC
_08005C16:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _08005C3E
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08005C3A
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _08005C3E
_08005C3A:
	movs r0, #0xf
	b _08005DCE
_08005C3E:
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	adds r1, #1
	lsls r1, r1, #4
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0x1b
	ldrsb r2, [r4, r2]
	adds r0, r2, #0
	adds r0, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	subs r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r3, r0
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x60
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08005D20
	ldr r2, [r4, #4]
	cmp r2, r5
	blt _08005CFC
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08005CB8
	ldr r2, _08005CB0 @ =0xFFFFFC00
	adds r3, r3, r2
	ldr r1, _08005CB4 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005CB8
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08005CB8
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005CBA
	.align 2, 0
_08005CB0: .4byte 0xFFFFFC00
_08005CB4: .4byte gCurLevelInfo
_08005CB8:
	str r5, [r4, #4]
_08005CBA:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08005DA6
	adds r0, #0xd2
	strh r1, [r0]
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _08005DA6
	ldr r1, [r1, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08005CF2
	ldr r0, _08005CF8 @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
_08005CF2:
	strh r2, [r3]
	b _08005DA6
	.align 2, 0
_08005CF8: .4byte 0xFFFFEF9F
_08005CFC:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08005DA6
	ldr r1, _08005D1C @ =0xFFFFF900
	adds r0, r3, r1
	cmp r2, r0
	blt _08005DA6
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08005DA6
	.align 2, 0
_08005D1C: .4byte 0xFFFFF900
_08005D20:
	ldr r2, _08005D60 @ =0xFFFFF900
	adds r1, r3, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08005DA6
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08005D6C
	ldr r2, _08005D64 @ =0xFFFFFC00
	adds r3, r3, r2
	ldr r1, _08005D68 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005D6C
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08005D6C
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005D6E
	.align 2, 0
_08005D60: .4byte 0xFFFFF900
_08005D64: .4byte 0xFFFFFC00
_08005D68: .4byte gCurLevelInfo
_08005D6C:
	str r5, [r4, #4]
_08005D6E:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08005D8E
	adds r0, #0xd2
	strh r1, [r0]
_08005D8E:
	movs r0, #0xf
	ands r0, r6
	cmp r0, #0
	bne _08005DA6
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r0, r7, r0
	cmp r0, #0xb
	bgt _08005DA6
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08005DA6:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _08005DCC
	mov r0, ip
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _08005DD8 @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08005DDC @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08005DCC:
	movs r0, #7
_08005DCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08005DD8: .4byte gUnk_082D88B8
_08005DDC: .4byte 0x000FFFFF

	thumb_func_start sub_08005DE0
sub_08005DE0: @ 0x08005DE0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	beq _08005DFE
	b _08005FBE
_08005DFE:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _08005E26
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08005E22
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _08005E26
_08005E22:
	movs r0, #0xf
	b _08005FCE
_08005E26:
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	adds r1, #1
	lsls r1, r1, #4
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	adds r0, #1
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r2, #0x1b
	ldrsb r2, [r4, r2]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r3, r0
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x60
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08005F08
	ldr r2, [r4, #4]
	cmp r2, r5
	blt _08005EE4
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08005EA0
	ldr r2, _08005E98 @ =0xFFFFFC00
	adds r3, r3, r2
	ldr r1, _08005E9C @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005EA0
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08005EA0
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005EA2
	.align 2, 0
_08005E98: .4byte 0xFFFFFC00
_08005E9C: .4byte gCurLevelInfo
_08005EA0:
	str r5, [r4, #4]
_08005EA2:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08005F8E
	adds r0, #0xd2
	strh r1, [r0]
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _08005F8E
	ldr r1, [r1, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08005EDA
	ldr r0, _08005EE0 @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
_08005EDA:
	strh r2, [r3]
	b _08005F8E
	.align 2, 0
_08005EE0: .4byte 0xFFFFEF9F
_08005EE4:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08005F8E
	ldr r1, _08005F04 @ =0xFFFFF900
	adds r0, r3, r1
	cmp r2, r0
	blt _08005F8E
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08005F8E
	.align 2, 0
_08005F04: .4byte 0xFFFFF900
_08005F08:
	ldr r2, _08005F48 @ =0xFFFFF900
	adds r1, r3, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08005F8E
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08005F54
	ldr r2, _08005F4C @ =0xFFFFFC00
	adds r3, r3, r2
	ldr r1, _08005F50 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08005F54
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08005F54
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08005F56
	.align 2, 0
_08005F48: .4byte 0xFFFFF900
_08005F4C: .4byte 0xFFFFFC00
_08005F50: .4byte gCurLevelInfo
_08005F54:
	str r5, [r4, #4]
_08005F56:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08005F76
	adds r0, #0xd2
	strh r1, [r0]
_08005F76:
	movs r0, #0xf
	ands r0, r6
	cmp r0, #0
	bne _08005F8E
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r0, r7, r0
	cmp r0, #0xb
	bgt _08005F8E
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08005F8E:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _08005FB4
	mov r0, ip
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _08005FC4 @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08005FC8 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08005FB4:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _08005FCC
_08005FBE:
	movs r0, #0xd
	b _08005FCE
	.align 2, 0
_08005FC4: .4byte gUnk_082D88B8
_08005FC8: .4byte 0x000FFFFF
_08005FCC:
	movs r0, #5
_08005FCE:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08005FD8
sub_08005FD8: @ 0x08005FD8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	beq _08005FF6
	b _080061B0
_08005FF6:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0800601E
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _0800601A
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _0800601E
_0800601A:
	movs r0, #0xf
	b _080061B2
_0800601E:
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	adds r1, #1
	lsls r1, r1, #4
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	adds r0, #1
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r2, #0x1b
	ldrsb r2, [r4, r2]
	adds r0, r2, #0
	adds r0, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	adds r3, r1, r0
	movs r0, #0x80
	lsls r0, r0, #1
	adds r5, r3, r0
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x60
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08006104
	ldr r2, [r4, #4]
	cmp r2, r5
	blt _080060E0
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800609C
	ldr r2, _08006094 @ =0xFFFFFC00
	adds r3, r3, r2
	ldr r1, _08006098 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _0800609C
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _0800609C
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _0800609E
	.align 2, 0
_08006094: .4byte 0xFFFFFC00
_08006098: .4byte gCurLevelInfo
_0800609C:
	str r5, [r4, #4]
_0800609E:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _0800618A
	adds r0, #0xd2
	strh r1, [r0]
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _0800618A
	ldr r1, [r1, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080060D6
	ldr r0, _080060DC @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
_080060D6:
	strh r2, [r3]
	b _0800618A
	.align 2, 0
_080060DC: .4byte 0xFFFFEF9F
_080060E0:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800618A
	ldr r1, _08006100 @ =0xFFFFF900
	adds r0, r3, r1
	cmp r2, r0
	blt _0800618A
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _0800618A
	.align 2, 0
_08006100: .4byte 0xFFFFF900
_08006104:
	ldr r2, _08006144 @ =0xFFFFF900
	adds r1, r3, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _0800618A
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08006150
	ldr r2, _08006148 @ =0xFFFFFC00
	adds r3, r3, r2
	ldr r1, _0800614C @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08006150
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08006150
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08006152
	.align 2, 0
_08006144: .4byte 0xFFFFF900
_08006148: .4byte 0xFFFFFC00
_0800614C: .4byte gCurLevelInfo
_08006150:
	str r5, [r4, #4]
_08006152:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08006172
	adds r0, #0xd2
	strh r1, [r0]
_08006172:
	movs r0, #0xf
	ands r0, r6
	cmp r0, #0
	bne _0800618A
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r0, r7, r0
	cmp r0, #0xb
	bgt _0800618A
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_0800618A:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _080061B0
	mov r0, ip
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _080061BC @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080061C0 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_080061B0:
	movs r0, #0xd
_080061B2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080061BC: .4byte gUnk_082D88B8
_080061C0: .4byte 0x000FFFFF

	thumb_func_start sub_080061C4
sub_080061C4: @ 0x080061C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	beq _080061E2
	b _08006396
_080061E2:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0800620A
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08006206
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _0800620A
_08006206:
	movs r0, #0xf
	b _080063A6
_0800620A:
	movs r0, #0x1e
	ldrsh r1, [r4, r0]
	movs r2, #0x1c
	ldrsh r0, [r4, r2]
	adds r0, #1
	adds r1, r1, r0
	lsls r1, r1, #4
	movs r2, #0x1b
	ldrsb r2, [r4, r2]
	subs r1, r1, r2
	lsls r1, r1, #8
	ldr r0, [r4]
	subs r3, r1, r0
	subs r5, r3, #1
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x60
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _080062E0
	ldr r2, [r4, #4]
	cmp r2, r5
	blt _080062BC
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08006278
	ldr r2, _08006270 @ =0xFFFFFAFF
	adds r3, r3, r2
	ldr r1, _08006274 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08006278
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08006278
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _0800627A
	.align 2, 0
_08006270: .4byte 0xFFFFFAFF
_08006274: .4byte gCurLevelInfo
_08006278:
	str r5, [r4, #4]
_0800627A:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08006366
	adds r0, #0xd2
	strh r1, [r0]
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _08006366
	ldr r1, [r1, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _080062B2
	ldr r0, _080062B8 @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
_080062B2:
	strh r2, [r3]
	b _08006366
	.align 2, 0
_080062B8: .4byte 0xFFFFEF9F
_080062BC:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08006366
	ldr r1, _080062DC @ =0xFFFFF7FF
	adds r0, r3, r1
	cmp r2, r0
	blt _08006366
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08006366
	.align 2, 0
_080062DC: .4byte 0xFFFFF7FF
_080062E0:
	ldr r2, _08006320 @ =0xFFFFF7FF
	adds r1, r3, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08006366
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _0800632C
	ldr r2, _08006324 @ =0xFFFFFAFF
	adds r3, r3, r2
	ldr r1, _08006328 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _0800632C
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _0800632C
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _0800632E
	.align 2, 0
_08006320: .4byte 0xFFFFF7FF
_08006324: .4byte 0xFFFFFAFF
_08006328: .4byte gCurLevelInfo
_0800632C:
	str r5, [r4, #4]
_0800632E:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _0800634E
	adds r0, #0xd2
	strh r1, [r0]
_0800634E:
	movs r0, #0xf
	ands r0, r6
	cmp r0, #0
	bne _08006366
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r0, r7, r0
	cmp r0, #0xb
	bgt _08006366
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08006366:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _0800638C
	mov r0, ip
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _0800639C @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080063A0 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_0800638C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _080063A4
_08006396:
	movs r0, #7
	b _080063A6
	.align 2, 0
_0800639C: .4byte gUnk_082D88B8
_080063A0: .4byte 0x000FFFFF
_080063A4:
	movs r0, #5
_080063A6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080063B0
sub_080063B0: @ 0x080063B0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov ip, r0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r6, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	beq _080063CE
	b _0800657E
_080063CE:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _080063F6
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _080063F2
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r4, r2]
	cmp r0, r1
	beq _080063F6
_080063F2:
	movs r0, #0xf
	b _0800658E
_080063F6:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #4
	movs r2, #0x1b
	ldrsb r2, [r4, r2]
	subs r0, r0, r2
	lsls r0, r0, #8
	ldr r1, [r4]
	adds r5, r0, r1
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x60
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _080064C8
	ldr r2, [r4, #4]
	cmp r2, r5
	blt _080064A4
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08006460
	ldr r2, _08006458 @ =0xFFFFFB00
	adds r3, r5, r2
	ldr r1, _0800645C @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08006460
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08006460
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08006462
	.align 2, 0
_08006458: .4byte 0xFFFFFB00
_0800645C: .4byte gCurLevelInfo
_08006460:
	str r5, [r4, #4]
_08006462:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _0800654E
	adds r0, #0xd2
	strh r1, [r0]
	mov r1, ip
	ldrb r2, [r1]
	cmp r2, #0
	bne _0800654E
	ldr r1, [r1, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _0800649A
	ldr r0, _080064A0 @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
_0800649A:
	strh r2, [r3]
	b _0800654E
	.align 2, 0
_080064A0: .4byte 0xFFFFEF9F
_080064A4:
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800654E
	ldr r1, _080064C4 @ =0xFFFFF800
	adds r0, r5, r1
	cmp r2, r0
	blt _0800654E
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _0800654E
	.align 2, 0
_080064C4: .4byte 0xFFFFF800
_080064C8:
	ldr r2, _08006508 @ =0xFFFFF800
	adds r1, r5, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _0800654E
	mov r1, ip
	ldrb r0, [r1]
	cmp r0, #0
	bne _08006514
	ldr r2, _0800650C @ =0xFFFFFB00
	adds r3, r5, r2
	ldr r1, _08006510 @ =gCurLevelInfo
	mov r0, ip
	adds r0, #0x56
	ldrb r2, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r2, r0
	adds r1, #0x94
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r3, r0
	bgt _08006514
	mov r0, ip
	ldr r1, [r0, #0x4c]
	cmp r5, r1
	bgt _08006514
	mov r2, ip
	ldr r0, [r2, #0x48]
	str r0, [r4]
	str r1, [r4, #4]
	b _08006516
	.align 2, 0
_08006508: .4byte 0xFFFFF800
_0800650C: .4byte 0xFFFFFB00
_08006510: .4byte gCurLevelInfo
_08006514:
	str r5, [r4, #4]
_08006516:
	mov r3, ip
	adds r3, #0x62
	ldrb r0, [r3]
	movs r1, #4
	movs r2, #0
	orrs r1, r0
	strb r1, [r3]
	mov r0, ip
	adds r0, #0x52
	strh r2, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08006536
	adds r0, #0xd2
	strh r1, [r0]
_08006536:
	movs r0, #0xf
	ands r0, r6
	cmp r0, #0
	bne _0800654E
	movs r0, #0x19
	ldrsb r0, [r4, r0]
	subs r0, r7, r0
	cmp r0, #0xb
	bgt _0800654E
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_0800654E:
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x50
	bne _08006574
	mov r0, ip
	adds r0, #0x57
	mov r1, r8
	strb r1, [r0]
	ldr r1, _08006584 @ =gUnk_082D88B8
	mov r2, r8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _08006588 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08006574:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r6
	cmp r0, #0
	bne _0800658C
_0800657E:
	movs r0, #0xd
	b _0800658E
	.align 2, 0
_08006584: .4byte gUnk_082D88B8
_08006588: .4byte 0x000FFFFF
_0800658C:
	movs r0, #5
_0800658E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08006598
sub_08006598: @ 0x08006598
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	lsls r3, r3, #0x18
	lsrs r3, r3, #0x18
	mov r8, r3
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x20
	beq _08006610
	cmp r0, #0x20
	bgt _080065C2
	cmp r0, #0
	beq _080065DC
	cmp r0, #0x10
	beq _080065DC
	b _08006954
_080065C2:
	cmp r0, #0x40
	bne _080065C8
	b _08006740
_080065C8:
	cmp r0, #0x40
	bgt _080065D4
	cmp r0, #0x30
	bne _080065D2
	b _08006740
_080065D2:
	b _08006954
_080065D4:
	cmp r0, #0x50
	bne _080065DA
	b _08006774
_080065DA:
	b _08006954
_080065DC:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	adds r0, #1
	lsls r4, r0, #0xc
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r0, r4, r0
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08006604
	adds r0, r2, #0
	orrs r0, r3
	b _08006608
_08006604:
	movs r0, #2
	orrs r0, r2
_08006608:
	strb r0, [r1]
	ldr r0, [r5, #8]
	adds r0, #1
	b _08006954
_08006610:
	movs r2, #0x26
	ldrsh r1, [r5, r2]
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	adds r0, #1
	cmp r1, r0
	bgt _08006620
	b _080067C0
_08006620:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r1, _0800673C @ =gUnk_082D88B8
	mov r8, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r0, [r0]
	movs r7, #0x80
	lsls r7, r7, #2
	ands r0, r7
	cmp r0, #0
	beq _0800664C
	b _080067C0
_0800664C:
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _080066A4
	ldrh r1, [r5, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _080066A4
	ldrb r0, [r4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r0, [r0]
	ands r0, r7
	cmp r0, #0
	bne _080066A4
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	ldr r3, [r6, #0x40]
	adds r3, r3, r0
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	subs r3, r3, r0
	movs r0, #0x1e
	ldrsh r1, [r5, r0]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x22
	ldrsh r2, [r5, r0]
	ldr r0, [r6, #0x44]
	subs r0, r0, r2
	adds r0, #1
	subs r1, r1, r0
	cmp r3, r1
	bge _080066A4
	b _080067C0
_080066A4:
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08006708
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	adds r0, #1
	cmp r1, r0
	ble _08006708
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	ldr r1, _0800673C @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08006708
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	adds r2, #1
	lsls r2, r2, #0xc
	movs r3, #0x20
	ldrsh r1, [r5, r3]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	subs r2, r2, r0
	movs r0, #0x1e
	ldrsh r1, [r5, r0]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x22
	ldrsh r3, [r5, r0]
	ldr r0, [r6, #0x44]
	subs r0, r0, r3
	adds r0, #1
	subs r1, r1, r0
	cmp r2, r1
	blt _080067C0
_08006708:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	adds r0, #1
	lsls r0, r0, #0xc
	movs r1, #0x19
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	adds r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrb r1, [r6]
	cmp r1, #0
	bne _080067C0
	adds r0, #0x80
	strh r1, [r0]
	b _080067C0
	.align 2, 0
_0800673C: .4byte gUnk_082D88B8
_08006740:
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	subs r4, r0, #1
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r0, r4, r0
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08006768
	movs r0, #2
	orrs r0, r2
	b _0800676C
_08006768:
	adds r0, r2, #0
	orrs r0, r3
_0800676C:
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	subs r0, #1
	b _08006954
_08006774:
	ldrh r2, [r5, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _080067C0
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r1, _080067C4 @ =gUnk_082D88B8
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	bne _080067C0
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _080067DA
	ldrb r0, [r6]
	cmp r0, #0
	bne _080067CC
	ldr r1, _080067C8 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _080067DA
_080067C0:
	movs r0, #0xf
	b _08006956
	.align 2, 0
_080067C4: .4byte gUnk_082D88B8
_080067C8: .4byte 0x00000103
_080067CC:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0xc]
	subs r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #4
	cmp r0, r1
	bgt _080067C0
_080067DA:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r2, r0
	cmp r2, #0
	beq _08006810
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r1, _0800680C @ =gUnk_082D8DA4
	lsls r0, r3, #2
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	adds r2, r7, #0
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08006956
	.align 2, 0
_0800680C: .4byte gUnk_082D8DA4
_08006810:
	movs r0, #0xf
	ands r0, r7
	cmp r0, #1
	beq _080068DC
	ldr r0, [r6, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _080068DC
	movs r3, #0x20
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _0800687A
	ldrh r1, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0800687A
	ldrb r0, [r4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	ldr r1, _0800694C @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _0800687A
	movs r3, #0x20
	ldrsh r0, [r5, r3]
	ldr r2, [r6, #0x40]
	adds r2, r2, r0
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	subs r2, r2, r0
	movs r3, #0x22
	ldrsh r0, [r5, r3]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp r2, r1
	blt _080067C0
_0800687A:
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080068DC
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	adds r0, #1
	cmp r1, r0
	ble _080068DC
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	ldr r1, _0800694C @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080068DC
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	adds r2, #1
	lsls r2, r2, #0xc
	movs r3, #0x20
	ldrsh r1, [r5, r3]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	subs r2, r2, r0
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp r2, r1
	bge _080068DC
	b _080067C0
_080068DC:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	movs r1, #0x1b
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r6]
	mov r2, r8
	lsls r4, r2, #2
	cmp r1, #0
	bne _08006934
	adds r0, r6, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08006934
	ldr r1, [r6, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08006928
	ldr r0, _08006950 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r6, #8]
	strh r2, [r3]
_08006928:
	ldr r0, _0800694C @ =gUnk_082D88B8
	adds r0, r4, r0
	ldr r1, [r0]
	adds r0, r6, #0
	bl sub_080097C4
_08006934:
	adds r0, r6, #0
	adds r0, #0x57
	mov r3, r8
	strb r3, [r0]
	ldr r0, _0800694C @ =gUnk_082D88B8
	adds r0, r4, r0
	ldr r1, [r6, #0x58]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r6, #0x58]
	b _080067C0
	.align 2, 0
_0800694C: .4byte gUnk_082D88B8
_08006950: .4byte 0xFFFFEF9F
_08006954:
	movs r0, #0
_08006956:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08006960
sub_08006960: @ 0x08006960
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #3
	mov sl, r0
	adds r0, r7, #0
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	beq _08006986
	b _08006B7C
_08006986:
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x20
	beq _080069A6
	cmp r0, #0x20
	bgt _08006994
	b _08006B7C
_08006994:
	cmp r0, #0x40
	bne _0800699A
	b _08006B7C
_0800699A:
	cmp r0, #0x40
	bgt _080069A0
	b _08006B7C
_080069A0:
	cmp r0, #0x50
	beq _08006A64
	b _08006B7C
_080069A6:
	ldrh r0, [r5, #0x1c]
	add r1, sp, #4
	strh r0, [r1]
	ldrh r2, [r5, #0x1e]
	mov r0, sp
	adds r0, #6
	strh r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	movs r4, #0xf
	ldr r0, [r5, #8]
	asrs r0, r0, #0xc
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0xc]
	asrs r2, r1, #0xc
	strh r2, [r5, #0x1e]
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _080069E4
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	cmp r0, r1
	beq _08006A1A
_080069E4:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08006A5C @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08006A1A
	ldr r0, _08006A60 @ =gUnk_082D8DA4
	adds r0, r2, r0
	adds r2, r7, #0
	mov r1, sl
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	ands r4, r0
_08006A1A:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08006A2A
	b _08006B6E
_08006A2A:
	ldr r0, [r5, #0x10]
	asrs r0, r0, #0xc
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0xc]
	asrs r2, r1, #0xc
	strh r2, [r5, #0x1e]
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _08006A52
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	cmp r0, r1
	bne _08006A52
	b _08006B6E
_08006A52:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	b _08006B3A
	.align 2, 0
_08006A5C: .4byte gUnk_082D88B8
_08006A60: .4byte gUnk_082D8DA4
_08006A64:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r3, _08006B74 @ =gUnk_082D88B8
	mov sb, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	mov r8, r4
	cmp r0, #0
	bne _08006B7C
	ldrh r0, [r5, #0x1c]
	add r1, sp, #4
	strh r0, [r1]
	ldrh r2, [r5, #0x1e]
	mov r0, sp
	adds r0, #6
	strh r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	movs r4, #0xf
	ldr r0, [r5, #8]
	asrs r0, r0, #0xc
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	asrs r2, r1, #0xc
	strh r2, [r5, #0x1e]
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _08006ACE
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	cmp r0, r1
	beq _08006B02
_08006ACE:
	mov r1, r8
	ldrb r0, [r1]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x16
	mov r3, sb
	adds r0, r2, r3
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08006B02
	ldr r0, _08006B78 @ =gUnk_082D8DA4
	adds r0, r2, r0
	adds r2, r7, #0
	mov r1, sl
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	ands r4, r0
_08006B02:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08006B6E
	ldr r0, [r5, #0x10]
	asrs r0, r0, #0xc
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	asrs r2, r1, #0xc
	strh r2, [r5, #0x1e]
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _08006B36
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	cmp r0, r1
	beq _08006B6E
_08006B36:
	mov r1, r8
	ldrb r0, [r1]
_08006B3A:
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08006B74 @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08006B6E
	ldr r0, _08006B78 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r1, r2, #0
	adds r2, r7, #0
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	ands r4, r0
_08006B6E:
	adds r0, r4, #0
	b _08006B7E
	.align 2, 0
_08006B74: .4byte gUnk_082D88B8
_08006B78: .4byte gUnk_082D8DA4
_08006B7C:
	movs r0, #0xf
_08006B7E:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08006B90
sub_08006B90: @ 0x08006B90
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r6, r2, #0
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x20
	bne _08006BA6
	b _08006CB8
_08006BA6:
	cmp r0, #0x20
	bgt _08006BAC
	b _08006CB8
_08006BAC:
	cmp r0, #0x40
	bne _08006BB2
	b _08006CB8
_08006BB2:
	cmp r0, #0x40
	bgt _08006BB8
	b _08006CB8
_08006BB8:
	cmp r0, #0x50
	beq _08006BBE
	b _08006CB8
_08006BBE:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08006CB8
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08006C20 @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08006CB8
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08006C28
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r0, _08006C24 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r6, r1
	ldr r3, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08006CBA
	.align 2, 0
_08006C20: .4byte gUnk_082D88B8
_08006C24: .4byte gUnk_082D8DA4
_08006C28:
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r3, r0, #0xc
	movs r2, #0x1b
	ldrsb r2, [r5, r2]
	lsls r1, r2, #8
	ldr r0, [r4, #0x4c]
	adds r0, r0, r1
	cmp r3, r0
	bls _08006C44
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	cmp r3, r0
	bls _08006C5E
_08006C44:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08006CB8
	ldr r0, [r4, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r5, r3]
	cmp r0, r1
	beq _08006CB8
_08006C5E:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	lsls r1, r2, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r4]
	cmp r1, #0
	bne _08006CA2
	adds r0, r4, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	bne _08006CA2
	ldr r1, [r4, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08006CA2
	ldr r0, _08006CC0 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r4, #8]
	strh r2, [r3]
_08006CA2:
	adds r1, r4, #0
	adds r1, #0x57
	movs r0, #0xe
	strb r0, [r1]
	ldr r0, _08006CC4 @ =gUnk_082D88B8
	ldr r1, [r0, #0x38]
	ldr r0, _08006CC8 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r4, #0x58]
	orrs r0, r1
	str r0, [r4, #0x58]
_08006CB8:
	movs r0, #0xf
_08006CBA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006CC0: .4byte 0xFFFFEF9F
_08006CC4: .4byte gUnk_082D88B8
_08006CC8: .4byte 0x000FFFFF

	thumb_func_start sub_08006CCC
sub_08006CCC: @ 0x08006CCC
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	adds r6, r2, #0
	movs r0, #0x70
	ands r0, r6
	cmp r0, #0x20
	bne _08006CE2
	b _08006DE4
_08006CE2:
	cmp r0, #0x20
	bgt _08006CE8
	b _08006DE4
_08006CE8:
	cmp r0, #0x40
	beq _08006DE4
	cmp r0, #0x40
	ble _08006DE4
	cmp r0, #0x50
	bne _08006DE4
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4, #0x1c]
	ldrh r2, [r4, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08006D4C @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08006DE4
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08006D54
	ldrh r0, [r4, #0x1e]
	subs r0, #1
	strh r0, [r4, #0x1e]
	ldr r0, _08006D50 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	orrs r6, r1
	ldr r3, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	adds r2, r6, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08006DE6
	.align 2, 0
_08006D4C: .4byte gUnk_082D88B8
_08006D50: .4byte gUnk_082D8DA4
_08006D54:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	lsls r3, r0, #0xc
	movs r2, #0x1b
	ldrsb r2, [r4, r2]
	lsls r1, r2, #8
	ldr r0, [r5, #0x4c]
	adds r0, r0, r1
	cmp r3, r0
	bls _08006D70
	ldr r0, [r4, #0x14]
	lsls r0, r0, #8
	cmp r3, r0
	bls _08006D8A
_08006D70:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08006DE4
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _08006DE4
_08006D8A:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xc
	lsls r1, r2, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08006DCE
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08006DCE
	ldr r1, [r5, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08006DCE
	ldr r0, _08006DEC @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
	strh r2, [r3]
_08006DCE:
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _08006DF0 @ =gUnk_082D88B8
	ldr r1, [r0, #0x3c]
	ldr r0, _08006DF4 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_08006DE4:
	movs r0, #0xf
_08006DE6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006DEC: .4byte 0xFFFFEF9F
_08006DF0: .4byte gUnk_082D88B8
_08006DF4: .4byte 0x000FFFFF

	thumb_func_start sub_08006DF8
sub_08006DF8: @ 0x08006DF8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _08006E5A
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _08006E36
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08006E36
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08006E5A
_08006E36:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _08006E5E
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08006E5A
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r3, #0x1e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _08006E5E
_08006E5A:
	movs r0, #0xf
	b _08007044
_08006E5E:
	movs r0, #0x1e
	ldrsh r3, [r4, r0]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	adds r1, #1
	adds r1, r3, r1
	lsls r1, r1, #4
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	subs r0, r1, r0
	subs r6, r0, #1
	ldr r0, [r5, #0x48]
	subs r1, r1, r0
	subs r7, r1, #1
	ldrh r2, [r4, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08006EF6
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08006EF6
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	subs r1, r2, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08006F9C @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08006FA0 @ =0x00000127
	cmp r1, r0
	bne _08006ED0
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08006ED0
	movs r0, #2
	orrs r3, r0
_08006ED0:
	ands r3, r2
	cmp r3, #0
	bne _08006EDE
	ldr r0, _08006FA4 @ =0xF0000004
	ands r2, r0
	cmp r2, #4
	bne _08006EF6
_08006EDE:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	cmp r0, r6
	bge _08006EF6
	adds r6, r0, #0
_08006EF6:
	ldr r0, [r5, #8]
	movs r3, #0x60
	ands r3, r0
	mov ip, r0
	cmp r3, #0
	beq _08006FDC
	ldr r2, [r4, #4]
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r3, _08006FA8 @ =0x00001001
	adds r0, r0, r3
	ldrh r1, [r4, #0x1e]
	adds r1, #1
	lsls r1, r1, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [r5, #0x4c]
	cmp r7, r0
	blt _08006F28
	cmp r6, r2
	ble _08006F5E
_08006F28:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08006F3A
	cmp r7, r6
	bge _08006FB0
_08006F3A:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08006FB0
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _08006FB0
	mov r0, sb
	lsls r1, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _08006FB0
_08006F5E:
	subs r0, r6, #1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007022
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08007022
	ldr r1, [r5, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08007022
	ldr r0, _08006FAC @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
	strh r2, [r3]
	b _08007022
	.align 2, 0
_08006F9C: .4byte gUnk_082D88B8
_08006FA0: .4byte 0x00000127
_08006FA4: .4byte 0xF0000004
_08006FA8: .4byte 0x00001001
_08006FAC: .4byte 0xFFFFEF9F
_08006FB0:
	movs r0, #0x40
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08007022
	cmp r6, r7
	ble _08007022
	ldr r3, _08006FD8 @ =0xFFFFF800
	adds r0, r6, r3
	cmp r2, r0
	blt _08007022
	cmp r2, r6
	bgt _08007022
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08007022
	.align 2, 0
_08006FD8: .4byte 0xFFFFF800
_08006FDC:
	ldr r0, _08007050 @ =0xFFFFF800
	adds r1, r6, r0
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08007022
	str r6, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007004
	adds r0, #0x80
	strh r1, [r0]
_08007004:
	movs r0, #0xf
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08007022
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _08007022
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08007022:
	movs r0, #0x70
	mov r2, r8
	ands r0, r2
	cmp r0, #0x50
	bne _08007042
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0x18
	strb r0, [r1]
	ldr r0, _08007054 @ =gUnk_082D88B8
	ldr r1, [r0, #0x60]
	ldr r0, _08007058 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_08007042:
	movs r0, #7
_08007044:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007050: .4byte 0xFFFFF800
_08007054: .4byte gUnk_082D88B8
_08007058: .4byte 0x000FFFFF

	thumb_func_start sub_0800705C
sub_0800705C: @ 0x0800705C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r1, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _080070BE
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800709A
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0800709A
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080070BE
_0800709A:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _080070C2
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _080070BE
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r3, #0x1e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _080070C2
_080070BE:
	movs r0, #0xf
	b _080072A4
_080070C2:
	movs r0, #0x1e
	ldrsh r3, [r4, r0]
	movs r1, #0x1c
	ldrsh r2, [r4, r1]
	subs r0, r3, r2
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r4]
	adds r6, r0, r1
	ldr r1, [r5, #0x48]
	adds r7, r0, r1
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	adds r2, #1
	cmp r0, r2
	ble _08007156
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	adds r0, r3, #1
	cmp r1, r0
	ble _08007156
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080071FC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08007200 @ =0x00000127
	cmp r1, r0
	bne _08007130
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08007130
	movs r0, #2
	orrs r3, r0
_08007130:
	ands r3, r2
	cmp r3, #0
	bne _0800713E
	ldr r0, _08007204 @ =0xF0000004
	ands r2, r0
	cmp r2, #4
	bne _08007156
_0800713E:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	cmp r0, r6
	bge _08007156
	adds r6, r0, #0
_08007156:
	ldr r0, [r5, #8]
	movs r3, #0x60
	ands r3, r0
	mov ip, r0
	cmp r3, #0
	beq _0800723C
	ldr r2, [r4, #4]
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r1, _08007208 @ =0x00001001
	adds r0, r0, r1
	ldrh r1, [r4, #0x1e]
	adds r1, #1
	lsls r1, r1, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r0, [r5, #0x4c]
	cmp r7, r0
	blt _08007188
	cmp r6, r2
	ble _080071BE
_08007188:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800719A
	cmp r7, r6
	bge _08007210
_0800719A:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _08007210
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _08007210
	mov r0, sb
	lsls r1, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _08007210
_080071BE:
	subs r0, r6, #1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007282
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08007282
	ldr r1, [r5, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08007282
	ldr r0, _0800720C @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
	strh r2, [r3]
	b _08007282
	.align 2, 0
_080071FC: .4byte gUnk_082D88B8
_08007200: .4byte 0x00000127
_08007204: .4byte 0xF0000004
_08007208: .4byte 0x00001001
_0800720C: .4byte 0xFFFFEF9F
_08007210:
	movs r0, #0x40
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08007282
	cmp r6, r7
	ble _08007282
	ldr r3, _08007238 @ =0xFFFFF800
	adds r0, r6, r3
	cmp r2, r0
	blt _08007282
	cmp r2, r6
	bgt _08007282
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08007282
	.align 2, 0
_08007238: .4byte 0xFFFFF800
_0800723C:
	ldr r0, _080072B0 @ =0xFFFFF800
	adds r1, r6, r0
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08007282
	str r6, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007264
	adds r0, #0x80
	strh r1, [r0]
_08007264:
	movs r0, #0xf
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _08007282
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _08007282
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08007282:
	movs r0, #0x70
	mov r2, r8
	ands r0, r2
	cmp r0, #0x50
	bne _080072A2
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0x19
	strb r0, [r1]
	ldr r0, _080072B4 @ =gUnk_082D88B8
	ldr r1, [r0, #0x64]
	ldr r0, _080072B8 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_080072A2:
	movs r0, #0xd
_080072A4:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080072B0: .4byte 0xFFFFF800
_080072B4: .4byte gUnk_082D88B8
_080072B8: .4byte 0x000FFFFF

	thumb_func_start sub_080072BC
sub_080072BC: @ 0x080072BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08007322
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _080072FE
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08007322
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r3, #0x1e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bne _08007322
_080072FE:
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	adds r7, r1, #0
	cmp r0, #0
	beq _08007326
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08007326
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08007326
_08007322:
	movs r0, #0xf
	b _08007510
_08007326:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	adds r2, r0, #1
	lsls r1, r2, #4
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	subs r0, r1, r0
	subs r6, r0, #1
	ldr r0, [r5, #0x48]
	asrs r0, r0, #1
	subs r1, r1, r0
	subs r1, #1
	mov r8, r1
	ldrh r1, [r4, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _080073C8
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	cmp r0, r2
	ble _080073C8
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08007468 @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _0800746C @ =0x00000127
	cmp r1, r0
	bne _0800739E
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800739E
	movs r0, #2
	orrs r3, r0
_0800739E:
	ands r3, r2
	cmp r3, #0
	bne _080073AE
	ldr r0, _08007470 @ =0xF0000004
	ands r2, r0
	ldr r7, [r5, #8]
	cmp r2, #4
	bne _080073C8
_080073AE:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	ldr r7, [r5, #8]
	cmp r0, r6
	bge _080073C8
	adds r6, r0, #0
_080073C8:
	movs r3, #0x60
	ands r3, r7
	cmp r3, #0
	beq _080074A8
	ldr r2, [r4, #4]
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r3, _08007474 @ =0x00000801
	adds r0, r0, r3
	ldrh r1, [r4, #0x1e]
	adds r1, #1
	lsls r1, r1, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r5, #0x4c]
	cmp r8, r0
	blt _080073F6
	cmp r6, r2
	ble _0800742C
_080073F6:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08007408
	cmp r8, r6
	bge _0800747C
_08007408:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _0800747C
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _0800747C
	mov r0, ip
	lsls r1, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _0800747C
_0800742C:
	subs r0, r6, #1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080074EE
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _080074EE
	ldr r1, [r5, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _080074EE
	ldr r0, _08007478 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
	strh r2, [r3]
	b _080074EE
	.align 2, 0
_08007468: .4byte gUnk_082D88B8
_0800746C: .4byte 0x00000127
_08007470: .4byte 0xF0000004
_08007474: .4byte 0x00000801
_08007478: .4byte 0xFFFFEF9F
_0800747C:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _080074EE
	cmp r6, r8
	ble _080074EE
	ldr r1, _080074A4 @ =0xFFFFF800
	adds r0, r6, r1
	cmp r2, r0
	blt _080074EE
	cmp r2, r6
	bgt _080074EE
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _080074EE
	.align 2, 0
_080074A4: .4byte 0xFFFFF800
_080074A8:
	ldr r2, _0800751C @ =0xFFFFF800
	adds r1, r6, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _080074EE
	str r6, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080074D0
	adds r0, #0x80
	strh r1, [r0]
_080074D0:
	movs r0, #0xf
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _080074EE
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _080074EE
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_080074EE:
	movs r0, #0x70
	mov r1, sb
	ands r0, r1
	cmp r0, #0x50
	bne _0800750E
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0x10
	strb r0, [r1]
	ldr r0, _08007520 @ =gUnk_082D88B8
	ldr r1, [r0, #0x40]
	ldr r0, _08007524 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_0800750E:
	movs r0, #7
_08007510:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800751C: .4byte 0xFFFFF800
_08007520: .4byte gUnk_082D88B8
_08007524: .4byte 0x000FFFFF

	thumb_func_start sub_08007528
sub_08007528: @ 0x08007528
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r3, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _08007590
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _0800756A
	mov r0, ip
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _0800756A
	mov r0, ip
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _08007590
_0800756A:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r5, sl
	ands r0, r5
	cmp r0, #0
	bne _08007594
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r3, r2]
	cmp r0, r1
	bne _08007590
	ldr r0, [r3, #0x14]
	asrs r0, r0, #0xc
	movs r5, #0x1e
	ldrsh r1, [r3, r5]
	cmp r0, r1
	beq _08007594
_08007590:
	movs r0, #0xf
	b _08007704
_08007594:
	movs r0, #0x1e
	ldrsh r1, [r3, r0]
	adds r1, #1
	lsls r1, r1, #4
	movs r5, #0x1c
	ldrsh r2, [r3, r5]
	mov sb, r2
	lsls r0, r2, #3
	adds r1, r1, r0
	movs r6, #0x1b
	ldrsb r6, [r3, r6]
	adds r0, r6, #0
	adds r0, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r3]
	asrs r0, r0, #1
	subs r2, r1, r0
	subs r4, r2, #1
	mov r0, ip
	ldr r0, [r0, #0x48]
	mov r8, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	subs r7, r1, #1
	mov r1, ip
	ldr r0, [r1, #8]
	movs r5, #0x60
	ands r5, r0
	str r0, [sp]
	adds r1, r6, #0
	cmp r5, #0
	beq _0800769C
	ldr r2, [r3, #4]
	lsls r1, r1, #8
	adds r1, r2, r1
	ldr r5, _08007668 @ =0x00001001
	adds r1, r1, r5
	ldrh r0, [r3, #0x1e]
	adds r0, #1
	lsls r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	ldr r0, [r1, #0x4c]
	cmp r7, r0
	blt _080075F8
	cmp r4, r2
	ble _08007628
_080075F8:
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800760A
	cmp r7, r4
	bge _08007670
_0800760A:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _08007670
	mov r1, r8
	asrs r0, r1, #0xc
	cmp r0, sb
	beq _08007670
	lsls r1, r5, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _08007670
_08007628:
	subs r0, r4, #1
	str r0, [r3, #4]
	mov r3, ip
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _080076E0
	mov r0, ip
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _080076E0
	ldr r1, [r2, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _080076E0
	ldr r0, _0800766C @ =0xFFFFEF9F
	ands r1, r0
	mov r5, ip
	str r1, [r5, #8]
	strh r2, [r3]
	b _080076E0
	.align 2, 0
_08007668: .4byte 0x00001001
_0800766C: .4byte 0xFFFFEF9F
_08007670:
	movs r0, #0x40
	ldr r1, [sp]
	ands r0, r1
	cmp r0, #0
	beq _080076E0
	cmp r4, r7
	ble _080076E0
	ldr r5, _08007698 @ =0xFFFFF800
	adds r0, r4, r5
	cmp r2, r0
	blt _080076E0
	cmp r2, r4
	bgt _080076E0
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _080076E0
	.align 2, 0
_08007698: .4byte 0xFFFFF800
_0800769C:
	ldr r0, _08007714 @ =0xFFFFF7FF
	adds r1, r2, r0
	ldr r0, [r3, #4]
	cmp r0, r1
	blt _080076E0
	str r4, [r3, #4]
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x52
	strh r5, [r0]
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _080076C6
	adds r0, #0x80
	strh r1, [r0]
_080076C6:
	movs r0, #0xf
	mov r5, sl
	ands r0, r5
	cmp r0, #0
	bne _080076E0
	movs r0, #0x19
	ldrsb r0, [r3, r0]
	subs r0, r6, r0
	cmp r0, #0xb
	bgt _080076E0
	ldrb r0, [r3, #0x1b]
	subs r0, #0xc
	strb r0, [r3, #0x19]
_080076E0:
	movs r0, #0x70
	mov r1, sl
	ands r0, r1
	cmp r0, #0x50
	bne _08007702
	mov r1, ip
	adds r1, #0x57
	movs r0, #0x11
	strb r0, [r1]
	ldr r0, _08007718 @ =gUnk_082D88B8
	ldr r1, [r0, #0x44]
	ldr r0, _0800771C @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08007702:
	movs r0, #7
_08007704:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007714: .4byte 0xFFFFF7FF
_08007718: .4byte gUnk_082D88B8
_0800771C: .4byte 0x000FFFFF

	thumb_func_start sub_08007720
sub_08007720: @ 0x08007720
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	ands r0, r1
	cmp r0, #0
	bne _08007786
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _08007762
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08007786
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r3, #0x1e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bne _08007786
_08007762:
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	adds r7, r1, #0
	cmp r0, #0
	beq _0800778A
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _0800778A
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _0800778A
_08007786:
	movs r0, #0xf
	b _08007974
_0800778A:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	adds r3, r0, #1
	lsls r1, r3, #4
	movs r0, #0x1c
	ldrsh r2, [r4, r0]
	adds r2, #1
	lsls r0, r2, #3
	subs r1, r1, r0
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	adds r6, r1, r0
	ldr r0, [r5, #0x48]
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r8, r1
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, r2
	ble _0800782A
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	cmp r0, r3
	ble _0800782A
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080078CC @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _080078D0 @ =0x00000127
	cmp r1, r0
	bne _08007800
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08007800
	movs r0, #2
	orrs r3, r0
_08007800:
	ands r3, r2
	cmp r3, #0
	bne _08007810
	ldr r0, _080078D4 @ =0xF0000004
	ands r2, r0
	ldr r7, [r5, #8]
	cmp r2, #4
	bne _0800782A
_08007810:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	ldr r7, [r5, #8]
	cmp r0, r6
	bge _0800782A
	adds r6, r0, #0
_0800782A:
	movs r3, #0x60
	ands r3, r7
	cmp r3, #0
	beq _0800790C
	ldr r2, [r4, #4]
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r1, _080078D8 @ =0x00000801
	adds r0, r0, r1
	ldrh r1, [r4, #0x1e]
	adds r1, #1
	lsls r1, r1, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r5, #0x4c]
	cmp r8, r0
	blt _08007858
	cmp r6, r2
	ble _0800788E
_08007858:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800786A
	cmp r8, r6
	bge _080078E0
_0800786A:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _080078E0
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _080078E0
	mov r0, ip
	lsls r1, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _080078E0
_0800788E:
	subs r0, r6, #1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007952
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08007952
	ldr r1, [r5, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08007952
	ldr r0, _080078DC @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
	strh r2, [r3]
	b _08007952
	.align 2, 0
_080078CC: .4byte gUnk_082D88B8
_080078D0: .4byte 0x00000127
_080078D4: .4byte 0xF0000004
_080078D8: .4byte 0x00000801
_080078DC: .4byte 0xFFFFEF9F
_080078E0:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _08007952
	cmp r6, r8
	ble _08007952
	ldr r1, _08007908 @ =0xFFFFF800
	adds r0, r6, r1
	cmp r2, r0
	blt _08007952
	cmp r2, r6
	bgt _08007952
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08007952
	.align 2, 0
_08007908: .4byte 0xFFFFF800
_0800790C:
	ldr r2, _08007980 @ =0xFFFFF800
	adds r1, r6, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08007952
	str r6, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007934
	adds r0, #0x80
	strh r1, [r0]
_08007934:
	movs r0, #0xf
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _08007952
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _08007952
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08007952:
	movs r0, #0x70
	mov r1, sb
	ands r0, r1
	cmp r0, #0x50
	bne _08007972
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0x13
	strb r0, [r1]
	ldr r0, _08007984 @ =gUnk_082D88B8
	ldr r1, [r0, #0x4c]
	ldr r0, _08007988 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_08007972:
	movs r0, #0xd
_08007974:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007980: .4byte 0xFFFFF800
_08007984: .4byte gUnk_082D88B8
_08007988: .4byte 0x000FFFFF

	thumb_func_start sub_0800798C
sub_0800798C: @ 0x0800798C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r3, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	ldr r1, [r0, #8]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	bne _080079F4
	movs r0, #0x40
	ands r1, r0
	cmp r1, #0
	beq _080079CE
	mov r0, ip
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080079CE
	mov r0, ip
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	beq _080079F4
_080079CE:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _080079F8
	mov r2, ip
	ldr r0, [r2, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r3, r2]
	cmp r0, r1
	bne _080079F4
	ldr r0, [r3, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r3, r2]
	cmp r0, r1
	beq _080079F8
_080079F4:
	movs r0, #0xf
	b _08007B68
_080079F8:
	movs r0, #0x1e
	ldrsh r1, [r3, r0]
	adds r1, #1
	lsls r1, r1, #4
	movs r0, #0x1c
	ldrsh r2, [r3, r0]
	mov sb, r2
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r6, #0x1b
	ldrsb r6, [r3, r6]
	adds r0, r6, #0
	adds r0, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r3]
	asrs r0, r0, #1
	adds r4, r1, r0
	mov r2, ip
	ldr r2, [r2, #0x48]
	mov r8, r2
	asrs r0, r2, #1
	adds r7, r1, r0
	mov r1, ip
	ldr r0, [r1, #8]
	movs r5, #0x60
	ands r5, r0
	str r0, [sp]
	adds r1, r6, #0
	cmp r5, #0
	beq _08007B00
	ldr r2, [r3, #4]
	lsls r1, r1, #8
	adds r1, r2, r1
	ldr r0, _08007ACC @ =0x00001001
	adds r1, r1, r0
	ldrh r0, [r3, #0x1e]
	adds r0, #1
	lsls r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	ldr r0, [r1, #0x4c]
	cmp r7, r0
	blt _08007A5C
	cmp r4, r2
	ble _08007A8C
_08007A5C:
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08007A6E
	cmp r7, r4
	bge _08007AD4
_08007A6E:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _08007AD4
	mov r1, r8
	asrs r0, r1, #0xc
	cmp r0, sb
	beq _08007AD4
	lsls r1, r5, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _08007AD4
_08007A8C:
	subs r0, r4, #1
	str r0, [r3, #4]
	mov r3, ip
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _08007B44
	mov r0, ip
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08007B44
	ldr r1, [r2, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08007B44
	ldr r0, _08007AD0 @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
	strh r2, [r3]
	b _08007B44
	.align 2, 0
_08007ACC: .4byte 0x00001001
_08007AD0: .4byte 0xFFFFEF9F
_08007AD4:
	movs r0, #0x40
	ldr r1, [sp]
	ands r0, r1
	cmp r0, #0
	beq _08007B44
	cmp r4, r7
	ble _08007B44
	ldr r1, _08007AFC @ =0xFFFFF800
	adds r0, r4, r1
	cmp r2, r0
	blt _08007B44
	cmp r2, r4
	bgt _08007B44
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08007B44
	.align 2, 0
_08007AFC: .4byte 0xFFFFF800
_08007B00:
	ldr r2, _08007B78 @ =0xFFFFF800
	adds r1, r4, r2
	ldr r0, [r3, #4]
	cmp r0, r1
	blt _08007B44
	str r4, [r3, #4]
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x52
	strh r5, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08007B2A
	adds r0, #0xd2
	strh r1, [r0]
_08007B2A:
	movs r0, #0xf
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _08007B44
	movs r0, #0x19
	ldrsb r0, [r3, r0]
	subs r0, r6, r0
	cmp r0, #0xb
	bgt _08007B44
	ldrb r0, [r3, #0x1b]
	subs r0, #0xc
	strb r0, [r3, #0x19]
_08007B44:
	movs r0, #0x70
	mov r2, sl
	ands r0, r2
	cmp r0, #0x50
	bne _08007B66
	mov r1, ip
	adds r1, #0x57
	movs r0, #0x12
	strb r0, [r1]
	ldr r0, _08007B7C @ =gUnk_082D88B8
	ldr r1, [r0, #0x48]
	ldr r0, _08007B80 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08007B66:
	movs r0, #0xd
_08007B68:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007B78: .4byte 0xFFFFF800
_08007B7C: .4byte gUnk_082D88B8
_08007B80: .4byte 0x000FFFFF

	thumb_func_start sub_08007B84
sub_08007B84: @ 0x08007B84
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	bne _08007BB8
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08007BDC
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r3, #0x1e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bne _08007BDC
_08007BB8:
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	adds r7, r1, #0
	cmp r0, #0
	beq _08007BE0
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08007BE0
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08007BE0
_08007BDC:
	movs r0, #0xf
	b _08007DC8
_08007BE0:
	movs r0, #0x1e
	ldrsh r3, [r4, r0]
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	adds r1, #1
	adds r1, r3, r1
	lsls r1, r1, #4
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	subs r0, r1, r0
	subs r6, r0, #1
	ldr r0, [r5, #0x48]
	subs r1, r1, r0
	subs r1, #1
	mov r8, r1
	ldrh r2, [r4, #0x1c]
	movs r1, #0x1c
	ldrsh r0, [r4, r1]
	cmp r0, #0
	ble _08007C7E
	movs r0, #0x26
	ldrsh r1, [r4, r0]
	adds r0, r3, #1
	cmp r1, r0
	ble _08007C7E
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	subs r1, r2, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08007D20 @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08007D24 @ =0x00000127
	cmp r1, r0
	bne _08007C54
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08007C54
	movs r0, #2
	orrs r3, r0
_08007C54:
	ands r3, r2
	cmp r3, #0
	bne _08007C64
	ldr r0, _08007D28 @ =0xF0000004
	ands r2, r0
	ldr r7, [r5, #8]
	cmp r2, #4
	bne _08007C7E
_08007C64:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	ldr r7, [r5, #8]
	cmp r0, r6
	bge _08007C7E
	adds r6, r0, #0
_08007C7E:
	movs r3, #0x60
	ands r3, r7
	cmp r3, #0
	beq _08007D60
	ldr r2, [r4, #4]
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r3, _08007D2C @ =0x00001001
	adds r0, r0, r3
	ldrh r1, [r4, #0x1e]
	adds r1, #1
	lsls r1, r1, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r5, #0x4c]
	cmp r8, r0
	blt _08007CAC
	cmp r6, r2
	ble _08007CE2
_08007CAC:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08007CBE
	cmp r8, r6
	bge _08007D34
_08007CBE:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _08007D34
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _08007D34
	mov r0, ip
	lsls r1, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _08007D34
_08007CE2:
	subs r0, r6, #1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007DA6
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08007DA6
	ldr r1, [r5, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08007DA6
	ldr r0, _08007D30 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
	strh r2, [r3]
	b _08007DA6
	.align 2, 0
_08007D20: .4byte gUnk_082D88B8
_08007D24: .4byte 0x00000127
_08007D28: .4byte 0xF0000004
_08007D2C: .4byte 0x00001001
_08007D30: .4byte 0xFFFFEF9F
_08007D34:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _08007DA6
	cmp r6, r8
	ble _08007DA6
	ldr r1, _08007D5C @ =0xFFFFF800
	adds r0, r6, r1
	cmp r2, r0
	blt _08007DA6
	cmp r2, r6
	bgt _08007DA6
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08007DA6
	.align 2, 0
_08007D5C: .4byte 0xFFFFF800
_08007D60:
	ldr r2, _08007DD4 @ =0xFFFFF800
	adds r1, r6, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08007DA6
	str r6, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007D88
	adds r0, #0x80
	strh r1, [r0]
_08007D88:
	movs r0, #0xf
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _08007DA6
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _08007DA6
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08007DA6:
	movs r0, #0x70
	mov r1, sb
	ands r0, r1
	cmp r0, #0x50
	bne _08007DC6
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0x1a
	strb r0, [r1]
	ldr r0, _08007DD8 @ =gUnk_082D88B8
	ldr r1, [r0, #0x68]
	ldr r0, _08007DDC @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_08007DC6:
	movs r0, #7
_08007DC8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08007DD4: .4byte 0xFFFFF800
_08007DD8: .4byte gUnk_082D88B8
_08007DDC: .4byte 0x000FFFFF

	thumb_func_start sub_08007DE0
sub_08007DE0: @ 0x08007DE0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	bne _08007E14
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08007E38
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r3, #0x1e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bne _08007E38
_08007E14:
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	adds r7, r1, #0
	cmp r0, #0
	beq _08007E3C
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08007E3C
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08007E3C
_08007E38:
	movs r0, #0xf
	b _08008020
_08007E3C:
	movs r0, #0x1e
	ldrsh r3, [r4, r0]
	movs r1, #0x1c
	ldrsh r2, [r4, r1]
	subs r0, r3, r2
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	ldr r1, [r4]
	adds r6, r0, r1
	ldr r1, [r5, #0x48]
	adds r0, r0, r1
	mov r8, r0
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	adds r2, #1
	cmp r0, r2
	ble _08007ED6
	movs r2, #0x26
	ldrsh r1, [r4, r2]
	adds r0, r3, #1
	cmp r1, r0
	ble _08007ED6
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08007F78 @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08007F7C @ =0x00000127
	cmp r1, r0
	bne _08007EAC
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08007EAC
	movs r0, #2
	orrs r3, r0
_08007EAC:
	ands r3, r2
	cmp r3, #0
	bne _08007EBC
	ldr r0, _08007F80 @ =0xF0000004
	ands r2, r0
	ldr r7, [r5, #8]
	cmp r2, #4
	bne _08007ED6
_08007EBC:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	ldr r7, [r5, #8]
	cmp r0, r6
	bge _08007ED6
	adds r6, r0, #0
_08007ED6:
	movs r3, #0x60
	ands r3, r7
	cmp r3, #0
	beq _08007FB8
	ldr r2, [r4, #4]
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r1, _08007F84 @ =0x00001001
	adds r0, r0, r1
	ldrh r1, [r4, #0x1e]
	adds r1, #1
	lsls r1, r1, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r5, #0x4c]
	cmp r8, r0
	blt _08007F04
	cmp r6, r2
	ble _08007F3A
_08007F04:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08007F16
	cmp r8, r6
	bge _08007F8C
_08007F16:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _08007F8C
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _08007F8C
	mov r0, ip
	lsls r1, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _08007F8C
_08007F3A:
	subs r0, r6, #1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007FFE
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _08007FFE
	ldr r1, [r5, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08007FFE
	ldr r0, _08007F88 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
	strh r2, [r3]
	b _08007FFE
	.align 2, 0
_08007F78: .4byte gUnk_082D88B8
_08007F7C: .4byte 0x00000127
_08007F80: .4byte 0xF0000004
_08007F84: .4byte 0x00001001
_08007F88: .4byte 0xFFFFEF9F
_08007F8C:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _08007FFE
	cmp r6, r8
	ble _08007FFE
	ldr r1, _08007FB4 @ =0xFFFFF800
	adds r0, r6, r1
	cmp r2, r0
	blt _08007FFE
	cmp r2, r6
	bgt _08007FFE
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08007FFE
	.align 2, 0
_08007FB4: .4byte 0xFFFFF800
_08007FB8:
	ldr r2, _0800802C @ =0xFFFFF800
	adds r1, r6, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _08007FFE
	str r6, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08007FE0
	adds r0, #0x80
	strh r1, [r0]
_08007FE0:
	movs r0, #0xf
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _08007FFE
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _08007FFE
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_08007FFE:
	movs r0, #0x70
	mov r1, sb
	ands r0, r1
	cmp r0, #0x50
	bne _0800801E
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0x1b
	strb r0, [r1]
	ldr r0, _08008030 @ =gUnk_082D88B8
	ldr r1, [r0, #0x6c]
	ldr r0, _08008034 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_0800801E:
	movs r0, #0xd
_08008020:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800802C: .4byte 0xFFFFF800
_08008030: .4byte gUnk_082D88B8
_08008034: .4byte 0x000FFFFF

	thumb_func_start sub_08008038
sub_08008038: @ 0x08008038
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	bne _0800806C
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _08008090
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r3, #0x1e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bne _08008090
_0800806C:
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	adds r7, r1, #0
	cmp r0, #0
	beq _08008094
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _08008094
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08008094
_08008090:
	movs r0, #0xf
	b _08008280
_08008094:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	adds r2, r0, #1
	lsls r1, r2, #4
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	subs r0, r1, r0
	subs r6, r0, #1
	ldr r0, [r5, #0x48]
	asrs r0, r0, #1
	subs r1, r1, r0
	subs r1, #1
	mov r8, r1
	ldrh r1, [r4, #0x1c]
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	cmp r0, #0
	ble _08008136
	movs r3, #0x26
	ldrsh r0, [r4, r3]
	cmp r0, r2
	ble _08008136
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _080081D8 @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _080081DC @ =0x00000127
	cmp r1, r0
	bne _0800810C
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800810C
	movs r0, #2
	orrs r3, r0
_0800810C:
	ands r3, r2
	cmp r3, #0
	bne _0800811C
	ldr r0, _080081E0 @ =0xF0000004
	ands r2, r0
	ldr r7, [r5, #8]
	cmp r2, #4
	bne _08008136
_0800811C:
	movs r1, #0x1e
	ldrsh r0, [r4, r1]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	ldr r7, [r5, #8]
	cmp r0, r6
	bge _08008136
	adds r6, r0, #0
_08008136:
	movs r3, #0x60
	ands r3, r7
	cmp r3, #0
	beq _08008218
	ldr r2, [r4, #4]
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r3, _080081E4 @ =0x00000801
	adds r0, r0, r3
	ldrh r1, [r4, #0x1e]
	adds r1, #1
	lsls r1, r1, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r5, #0x4c]
	cmp r8, r0
	blt _08008164
	cmp r6, r2
	ble _0800819A
_08008164:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08008176
	cmp r8, r6
	bge _080081EC
_08008176:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _080081EC
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _080081EC
	mov r0, ip
	lsls r1, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _080081EC
_0800819A:
	subs r0, r6, #1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _0800825E
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _0800825E
	ldr r1, [r5, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _0800825E
	ldr r0, _080081E8 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
	strh r2, [r3]
	b _0800825E
	.align 2, 0
_080081D8: .4byte gUnk_082D88B8
_080081DC: .4byte 0x00000127
_080081E0: .4byte 0xF0000004
_080081E4: .4byte 0x00000801
_080081E8: .4byte 0xFFFFEF9F
_080081EC:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _0800825E
	cmp r6, r8
	ble _0800825E
	ldr r1, _08008214 @ =0xFFFFF800
	adds r0, r6, r1
	cmp r2, r0
	blt _0800825E
	cmp r2, r6
	bgt _0800825E
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _0800825E
	.align 2, 0
_08008214: .4byte 0xFFFFF800
_08008218:
	ldr r2, _0800828C @ =0xFFFFF800
	adds r1, r6, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _0800825E
	str r6, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08008240
	adds r0, #0x80
	strh r1, [r0]
_08008240:
	movs r0, #0xf
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _0800825E
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _0800825E
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_0800825E:
	movs r0, #0x70
	mov r1, sb
	ands r0, r1
	cmp r0, #0x50
	bne _0800827E
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0x14
	strb r0, [r1]
	ldr r0, _08008290 @ =gUnk_082D88B8
	ldr r1, [r0, #0x50]
	ldr r0, _08008294 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_0800827E:
	movs r0, #7
_08008280:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800828C: .4byte 0xFFFFF800
_08008290: .4byte gUnk_082D88B8
_08008294: .4byte 0x000FFFFF

	thumb_func_start sub_08008298
sub_08008298: @ 0x08008298
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r3, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	bne _080082D2
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r3, r2]
	cmp r0, r1
	bne _080082F8
	ldr r0, [r3, #0x14]
	asrs r0, r0, #0xc
	movs r5, #0x1e
	ldrsh r1, [r3, r5]
	cmp r0, r1
	bne _080082F8
_080082D2:
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	str r1, [sp]
	cmp r0, #0
	beq _080082FC
	mov r0, ip
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bge _080082FC
	mov r0, ip
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080082FC
_080082F8:
	movs r0, #0xf
	b _08008468
_080082FC:
	movs r5, #0x1e
	ldrsh r1, [r3, r5]
	adds r1, #1
	lsls r1, r1, #4
	movs r2, #0x1c
	ldrsh r0, [r3, r2]
	mov sb, r0
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r6, #0x1b
	ldrsb r6, [r3, r6]
	adds r0, r6, #0
	adds r0, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r3]
	asrs r0, r0, #1
	subs r2, r1, r0
	subs r4, r2, #1
	mov r5, ip
	ldr r5, [r5, #0x48]
	mov r8, r5
	asrs r0, r5, #1
	subs r1, r1, r0
	subs r7, r1, #1
	movs r5, #0x60
	ldr r0, [sp]
	ands r5, r0
	adds r1, r6, #0
	cmp r5, #0
	beq _08008400
	ldr r2, [r3, #4]
	lsls r1, r1, #8
	adds r1, r2, r1
	ldr r5, _080083CC @ =0x00001001
	adds r1, r1, r5
	ldrh r0, [r3, #0x1e]
	adds r0, #1
	lsls r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	ldr r0, [r1, #0x4c]
	cmp r7, r0
	blt _0800835C
	cmp r4, r2
	ble _0800838C
_0800835C:
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0800836E
	cmp r7, r4
	bge _080083D4
_0800836E:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _080083D4
	mov r1, r8
	asrs r0, r1, #0xc
	cmp r0, sb
	beq _080083D4
	lsls r1, r5, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _080083D4
_0800838C:
	subs r0, r4, #1
	str r0, [r3, #4]
	mov r3, ip
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _08008444
	mov r0, ip
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _08008444
	ldr r1, [r2, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08008444
	ldr r0, _080083D0 @ =0xFFFFEF9F
	ands r1, r0
	mov r5, ip
	str r1, [r5, #8]
	strh r2, [r3]
	b _08008444
	.align 2, 0
_080083CC: .4byte 0x00001001
_080083D0: .4byte 0xFFFFEF9F
_080083D4:
	movs r0, #0x40
	ldr r1, [sp]
	ands r0, r1
	cmp r0, #0
	beq _08008444
	cmp r4, r7
	ble _08008444
	ldr r5, _080083FC @ =0xFFFFF800
	adds r0, r4, r5
	cmp r2, r0
	blt _08008444
	cmp r2, r4
	bgt _08008444
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _08008444
	.align 2, 0
_080083FC: .4byte 0xFFFFF800
_08008400:
	ldr r0, _08008478 @ =0xFFFFF7FF
	adds r1, r2, r0
	ldr r0, [r3, #4]
	cmp r0, r1
	blt _08008444
	str r4, [r3, #4]
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x52
	strh r5, [r0]
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _0800842A
	adds r0, #0x80
	strh r1, [r0]
_0800842A:
	movs r0, #0xf
	mov r5, sl
	ands r0, r5
	cmp r0, #0
	bne _08008444
	movs r0, #0x19
	ldrsb r0, [r3, r0]
	subs r0, r6, r0
	cmp r0, #0xb
	bgt _08008444
	ldrb r0, [r3, #0x1b]
	subs r0, #0xc
	strb r0, [r3, #0x19]
_08008444:
	movs r0, #0x70
	mov r1, sl
	ands r0, r1
	cmp r0, #0x50
	bne _08008466
	mov r1, ip
	adds r1, #0x57
	movs r0, #0x15
	strb r0, [r1]
	ldr r0, _0800847C @ =gUnk_082D88B8
	ldr r1, [r0, #0x54]
	ldr r0, _08008480 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_08008466:
	movs r0, #7
_08008468:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008478: .4byte 0xFFFFF7FF
_0800847C: .4byte gUnk_082D88B8
_08008480: .4byte 0x000FFFFF

	thumb_func_start sub_08008484
sub_08008484: @ 0x08008484
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	adds r4, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sb, r2
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	bne _080084B8
	ldr r0, [r5, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r4, r2]
	cmp r0, r1
	bne _080084DC
	ldr r0, [r4, #0x14]
	asrs r0, r0, #0xc
	movs r3, #0x1e
	ldrsh r1, [r4, r3]
	cmp r0, r1
	bne _080084DC
_080084B8:
	ldr r1, [r5, #8]
	movs r0, #0x40
	ands r0, r1
	adds r7, r1, #0
	cmp r0, #0
	beq _080084E0
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _080084E0
	adds r0, r5, #0
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _080084E0
_080084DC:
	movs r0, #0xf
	b _080086C8
_080084E0:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	adds r3, r0, #1
	lsls r1, r3, #4
	movs r0, #0x1c
	ldrsh r2, [r4, r0]
	adds r2, #1
	lsls r0, r2, #3
	subs r1, r1, r0
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r4]
	asrs r0, r0, #1
	adds r6, r1, r0
	ldr r0, [r5, #0x48]
	asrs r0, r0, #1
	adds r1, r1, r0
	mov r8, r1
	movs r1, #0x24
	ldrsh r0, [r4, r1]
	cmp r0, r2
	ble _08008580
	movs r2, #0x26
	ldrsh r0, [r4, r2]
	cmp r0, r3
	ble _08008580
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r4, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r4, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08008620 @ =gUnk_082D88B8
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r2, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	ldrh r1, [r5, #0x1c]
	ldr r0, _08008624 @ =0x00000127
	cmp r1, r0
	bne _08008556
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	bne _08008556
	movs r0, #2
	orrs r3, r0
_08008556:
	ands r3, r2
	cmp r3, #0
	bne _08008566
	ldr r0, _08008628 @ =0xF0000004
	ands r2, r0
	ldr r7, [r5, #8]
	cmp r2, #4
	bne _08008580
_08008566:
	movs r3, #0x1e
	ldrsh r0, [r4, r3]
	adds r0, #1
	lsls r0, r0, #4
	movs r1, #0x1b
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	lsls r0, r0, #8
	subs r0, #1
	ldr r7, [r5, #8]
	cmp r0, r6
	bge _08008580
	adds r6, r0, #0
_08008580:
	movs r3, #0x60
	ands r3, r7
	cmp r3, #0
	beq _08008660
	ldr r2, [r4, #4]
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	lsls r0, r0, #8
	adds r0, r2, r0
	ldr r1, _0800862C @ =0x00000801
	adds r0, r0, r1
	ldrh r1, [r4, #0x1e]
	adds r1, #1
	lsls r1, r1, #0xc
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov ip, r0
	ldr r0, [r5, #0x4c]
	cmp r8, r0
	blt _080085AE
	cmp r6, r2
	ble _080085E4
_080085AE:
	adds r0, r4, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080085C0
	cmp r8, r6
	bge _08008634
_080085C0:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _08008634
	ldr r0, [r5, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r4, r3]
	cmp r0, r1
	beq _08008634
	mov r0, ip
	lsls r1, r0, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _08008634
_080085E4:
	subs r0, r6, #1
	str r0, [r4, #4]
	adds r3, r5, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r5]
	cmp r1, #0
	bne _080086A6
	adds r0, r5, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r5]
	cmp r0, #0
	bne _080086A6
	ldr r1, [r5, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _080086A6
	ldr r0, _08008630 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r5, #8]
	strh r2, [r3]
	b _080086A6
	.align 2, 0
_08008620: .4byte gUnk_082D88B8
_08008624: .4byte 0x00000127
_08008628: .4byte 0xF0000004
_0800862C: .4byte 0x00000801
_08008630: .4byte 0xFFFFEF9F
_08008634:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _080086A6
	cmp r6, r8
	ble _080086A6
	ldr r1, _0800865C @ =0xFFFFF800
	adds r0, r6, r1
	cmp r2, r0
	blt _080086A6
	cmp r2, r6
	bgt _080086A6
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _080086A6
	.align 2, 0
_0800865C: .4byte 0xFFFFF800
_08008660:
	ldr r2, _080086D4 @ =0xFFFFF800
	adds r1, r6, r2
	ldr r0, [r4, #4]
	cmp r0, r1
	blt _080086A6
	str r6, [r4, #4]
	adds r2, r5, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x52
	strh r3, [r0]
	ldrb r1, [r5]
	cmp r1, #0
	bne _08008688
	adds r0, #0x80
	strh r1, [r0]
_08008688:
	movs r0, #0xf
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	bne _080086A6
	movs r0, #0x1b
	ldrsb r0, [r4, r0]
	movs r1, #0x19
	ldrsb r1, [r4, r1]
	subs r0, r0, r1
	cmp r0, #0xb
	bgt _080086A6
	ldrb r0, [r4, #0x1b]
	subs r0, #0xc
	strb r0, [r4, #0x19]
_080086A6:
	movs r0, #0x70
	mov r1, sb
	ands r0, r1
	cmp r0, #0x50
	bne _080086C6
	adds r1, r5, #0
	adds r1, #0x57
	movs r0, #0x17
	strb r0, [r1]
	ldr r0, _080086D8 @ =gUnk_082D88B8
	ldr r1, [r0, #0x5c]
	ldr r0, _080086DC @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r5, #0x58]
	orrs r0, r1
	str r0, [r5, #0x58]
_080086C6:
	movs r0, #0xd
_080086C8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080086D4: .4byte 0xFFFFF800
_080086D8: .4byte gUnk_082D88B8
_080086DC: .4byte 0x000FFFFF

	thumb_func_start sub_080086E0
sub_080086E0: @ 0x080086E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov ip, r0
	adds r3, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	bne _0800871A
	mov r1, ip
	ldr r0, [r1, #0x40]
	asrs r0, r0, #0xc
	movs r2, #0x1c
	ldrsh r1, [r3, r2]
	cmp r0, r1
	bne _08008740
	ldr r0, [r3, #0x14]
	asrs r0, r0, #0xc
	movs r2, #0x1e
	ldrsh r1, [r3, r2]
	cmp r0, r1
	bne _08008740
_0800871A:
	mov r0, ip
	ldr r1, [r0, #8]
	movs r0, #0x40
	ands r0, r1
	str r1, [sp]
	cmp r0, #0
	beq _08008744
	mov r0, ip
	adds r0, #0x50
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	ble _08008744
	mov r0, ip
	adds r0, #0x52
	movs r2, #0
	ldrsh r0, [r0, r2]
	cmp r0, #0
	bne _08008744
_08008740:
	movs r0, #0xf
	b _080088B0
_08008744:
	movs r0, #0x1e
	ldrsh r1, [r3, r0]
	adds r1, #1
	lsls r1, r1, #4
	movs r0, #0x1c
	ldrsh r2, [r3, r0]
	mov sb, r2
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #3
	subs r1, r1, r0
	movs r6, #0x1b
	ldrsb r6, [r3, r6]
	adds r0, r6, #0
	adds r0, #8
	subs r1, r1, r0
	lsls r1, r1, #8
	ldr r0, [r3]
	asrs r0, r0, #1
	adds r4, r1, r0
	mov r2, ip
	ldr r2, [r2, #0x48]
	mov r8, r2
	asrs r0, r2, #1
	adds r7, r1, r0
	movs r5, #0x60
	ldr r0, [sp]
	ands r5, r0
	adds r1, r6, #0
	cmp r5, #0
	beq _08008848
	ldr r2, [r3, #4]
	lsls r1, r1, #8
	adds r1, r2, r1
	ldr r0, _08008814 @ =0x00001001
	adds r1, r1, r0
	ldrh r0, [r3, #0x1e]
	adds r0, #1
	lsls r0, r0, #0xc
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	mov r1, ip
	ldr r0, [r1, #0x4c]
	cmp r7, r0
	blt _080087A4
	cmp r4, r2
	ble _080087D4
_080087A4:
	adds r0, r3, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080087B6
	cmp r7, r4
	bge _0800881C
_080087B6:
	movs r0, #0x80
	lsls r0, r0, #3
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _0800881C
	mov r1, r8
	asrs r0, r1, #0xc
	cmp r0, sb
	beq _0800881C
	lsls r1, r5, #0x10
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bgt _0800881C
_080087D4:
	subs r0, r4, #1
	str r0, [r3, #4]
	mov r3, ip
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	mov r2, ip
	ldrb r1, [r2]
	cmp r1, #0
	bne _0800888C
	mov r0, ip
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r2]
	cmp r0, #0
	bne _0800888C
	ldr r1, [r2, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _0800888C
	ldr r0, _08008818 @ =0xFFFFEF9F
	ands r1, r0
	mov r0, ip
	str r1, [r0, #8]
	strh r2, [r3]
	b _0800888C
	.align 2, 0
_08008814: .4byte 0x00001001
_08008818: .4byte 0xFFFFEF9F
_0800881C:
	movs r0, #0x40
	ldr r1, [sp]
	ands r0, r1
	cmp r0, #0
	beq _0800888C
	cmp r4, r7
	ble _0800888C
	ldr r1, _08008844 @ =0xFFFFF800
	adds r0, r4, r1
	cmp r2, r0
	blt _0800888C
	cmp r2, r4
	bgt _0800888C
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	b _0800888C
	.align 2, 0
_08008844: .4byte 0xFFFFF800
_08008848:
	ldr r2, _080088C0 @ =0xFFFFF800
	adds r1, r4, r2
	ldr r0, [r3, #4]
	cmp r0, r1
	blt _0800888C
	str r4, [r3, #4]
	mov r2, ip
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	adds r0, #0x52
	strh r5, [r0]
	mov r0, ip
	ldrb r1, [r0]
	cmp r1, #0
	bne _08008872
	adds r0, #0xd2
	strh r1, [r0]
_08008872:
	movs r0, #0xf
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _0800888C
	movs r0, #0x19
	ldrsb r0, [r3, r0]
	subs r0, r6, r0
	cmp r0, #0xb
	bgt _0800888C
	ldrb r0, [r3, #0x1b]
	subs r0, #0xc
	strb r0, [r3, #0x19]
_0800888C:
	movs r0, #0x70
	mov r2, sl
	ands r0, r2
	cmp r0, #0x50
	bne _080088AE
	mov r1, ip
	adds r1, #0x57
	movs r0, #0x16
	strb r0, [r1]
	ldr r0, _080088C4 @ =gUnk_082D88B8
	ldr r1, [r0, #0x58]
	ldr r0, _080088C8 @ =0x000FFFFF
	ands r1, r0
	mov r2, ip
	ldr r0, [r2, #0x58]
	orrs r0, r1
	str r0, [r2, #0x58]
_080088AE:
	movs r0, #0xd
_080088B0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080088C0: .4byte 0xFFFFF800
_080088C4: .4byte gUnk_082D88B8
_080088C8: .4byte 0x000FFFFF

	thumb_func_start sub_080088CC
sub_080088CC: @ 0x080088CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x20
	beq _08008980
	cmp r0, #0x20
	bgt _080088F2
	cmp r0, #0
	beq _08008908
	cmp r0, #0x10
	beq _08008908
	b _08008BF4
_080088F2:
	cmp r0, #0x40
	beq _080089BC
	cmp r0, #0x40
	bgt _08008900
	cmp r0, #0x30
	beq _080089BC
	b _08008BF4
_08008900:
	cmp r0, #0x50
	bne _08008906
	b _08008A38
_08008906:
	b _08008BF4
_08008908:
	movs r2, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _08008928
	ldr r1, _08008924 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	movs r1, #0x17
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r2, r1, #0x1f
	b _08008936
	.align 2, 0
_08008924: .4byte 0x00000103
_08008928:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0xc]
	subs r0, r0, r1
	ldr r1, _0800897C @ =0x000007FF
	cmp r0, r1
	ble _08008936
	movs r2, #1
_08008936:
	cmp r2, #0
	bne _08008954
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	cmp r1, r0
	bge _0800894E
	movs r2, #1
_0800894E:
	cmp r2, #0
	bne _08008954
	b _08008BE8
_08008954:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	adds r0, #1
	lsls r0, r0, #0xc
	movs r1, #0x18
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _08008A2A
_08008976:
	movs r0, #2
	orrs r0, r2
	b _08008A2E
	.align 2, 0
_0800897C: .4byte 0x000007FF
_08008980:
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	lsls r1, r1, #0xc
	movs r0, #0x19
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	ldr r3, _080089B8 @ =0xFFFFF800
	adds r0, r0, r3
	subs r1, r1, r0
	adds r1, #1
	str r1, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrb r1, [r6]
	cmp r1, #0
	beq _080089B2
	b _08008BE8
_080089B2:
	adds r0, #0x80
	strh r1, [r0]
	b _08008BE8
	.align 2, 0
_080089B8: .4byte 0xFFFFF800
_080089BC:
	movs r2, #0
	ldrb r0, [r6]
	cmp r0, #0
	bne _080089DC
	ldr r1, _080089D8 @ =0x00000103
	adds r0, r6, r1
	ldrb r0, [r0]
	movs r1, #0x17
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r2, r1, #0x1f
	b _080089EA
	.align 2, 0
_080089D8: .4byte 0x00000103
_080089DC:
	ldr r0, [r5, #0x14]
	ldr r1, [r5, #0xc]
	subs r0, r0, r1
	ldr r1, _08008A34 @ =0x000007FF
	cmp r0, r1
	ble _080089EA
	movs r2, #1
_080089EA:
	cmp r2, #0
	bne _08008A08
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0xc
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r5, #0xc]
	cmp r1, r0
	bge _08008A02
	movs r2, #1
_08008A02:
	cmp r2, #0
	bne _08008A08
	b _08008BE8
_08008A08:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	movs r1, #0x1a
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	bne _08008976
_08008A2A:
	adds r0, r2, #0
	orrs r0, r3
_08008A2E:
	strb r0, [r1]
	b _08008BE8
	.align 2, 0
_08008A34: .4byte 0x000007FF
_08008A38:
	ldrh r2, [r5, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bgt _08008A44
	b _08008BE8
_08008A44:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08008AA0 @ =gUnk_082D88B8
	mov sb, r1
	lsrs r2, r0, #0x16
	adds r0, r2, r1
	ldr r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #2
	mov r8, r3
	adds r0, r1, #0
	ands r0, r3
	cmp r0, #0
	beq _08008A72
	b _08008BE8
_08008A72:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08008AA8
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r0, _08008AA4 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	adds r2, r7, #0
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08008BF6
	.align 2, 0
_08008AA0: .4byte gUnk_082D88B8
_08008AA4: .4byte gUnk_082D8DA4
_08008AA8:
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r1, r0, #0xc
	ldr r2, [r5, #0x14]
	cmp r1, r2
	ble _08008AB6
	b _08008BE8
_08008AB6:
	movs r0, #0x80
	lsls r0, r0, #4
	adds r0, r1, r0
	cmp r2, r0
	blt _08008AC2
	b _08008BE8
_08008AC2:
	movs r0, #0xf
	ands r0, r7
	cmp r0, #1
	beq _08008B88
	ldr r0, [r6, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	beq _08008B88
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08008B28
	ldrh r1, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08008B28
	ldrb r0, [r4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, sb
	ldr r0, [r0]
	mov r3, r8
	ands r0, r3
	cmp r0, #0
	bne _08008B28
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	ldr r2, [r6, #0x40]
	adds r2, r2, r0
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0xc
	subs r2, r2, r0
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp r2, r1
	blt _08008BE8
_08008B28:
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08008B88
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	adds r0, #1
	cmp r1, r0
	ble _08008B88
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	ldr r1, _08008BEC @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08008B88
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	adds r2, #1
	lsls r2, r2, #0xc
	movs r3, #0x20
	ldrsh r1, [r5, r3]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	subs r2, r2, r0
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp r2, r1
	blt _08008BE8
_08008B88:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	movs r1, #0x1b
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r6]
	cmp r1, #0
	bne _08008BD0
	adds r0, r6, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08008BD0
	ldr r1, [r6, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08008BD0
	ldr r0, _08008BF0 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r6, #8]
	strh r2, [r3]
_08008BD0:
	adds r1, r6, #0
	adds r1, #0x57
	movs r0, #0x59
	strb r0, [r1]
	ldr r0, _08008BEC @ =gUnk_082D88B8
	movs r2, #0xb2
	lsls r2, r2, #1
	adds r0, r0, r2
	ldr r1, [r6, #0x58]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r6, #0x58]
_08008BE8:
	movs r0, #0xf
	b _08008BF6
	.align 2, 0
_08008BEC: .4byte gUnk_082D88B8
_08008BF0: .4byte 0xFFFFEF9F
_08008BF4:
	movs r0, #0
_08008BF6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08008C04
sub_08008C04: @ 0x08008C04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0x70
	ands r0, r2
	cmp r0, #0x20
	beq _08008C90
	cmp r0, #0x20
	bgt _08008C2E
	cmp r0, #0
	beq _08008C48
	cmp r0, #0x10
	beq _08008C48
	b _0800912C
_08008C2E:
	cmp r0, #0x40
	bne _08008C34
	b _08008DCC
_08008C34:
	cmp r0, #0x40
	bgt _08008C40
	cmp r0, #0x30
	bne _08008C3E
	b _08008DCC
_08008C3E:
	b _0800912C
_08008C40:
	cmp r0, #0x50
	bne _08008C46
	b _08008E1C
_08008C46:
	b _0800912C
_08008C48:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	adds r0, #1
	lsls r4, r0, #0xc
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r0, r4, r0
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08008C70
	adds r0, r2, #0
	orrs r0, r3
	b _08008C74
_08008C70:
	movs r0, #2
	orrs r0, r2
_08008C74:
	strb r0, [r1]
	ldr r0, [r5, #8]
	adds r0, #1
	cmp r4, r0
	bgt _08008C80
	b _0800912C
_08008C80:
	ldr r0, _08008C8C @ =gUnk_082D88B8
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r0, r0, r2
	b _08008E0C
	.align 2, 0
_08008C8C: .4byte gUnk_082D88B8
_08008C90:
	movs r3, #0x26
	ldrsh r1, [r5, r3]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	adds r0, #1
	cmp r1, r0
	bgt _08008CA0
	b _08009120
_08008CA0:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r3, _08008DC8 @ =gUnk_082D88B8
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r0, [r0]
	movs r7, #0x80
	lsls r7, r7, #2
	ands r0, r7
	cmp r0, #0
	beq _08008CCC
	b _08009120
_08008CCC:
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _08008D24
	ldrh r1, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08008D24
	ldrb r0, [r4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r0, [r0]
	ands r0, r7
	cmp r0, #0
	bne _08008D24
	movs r3, #0x20
	ldrsh r0, [r5, r3]
	ldr r3, [r6, #0x40]
	adds r3, r3, r0
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	subs r3, r3, r0
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x22
	ldrsh r2, [r5, r0]
	ldr r0, [r6, #0x44]
	subs r0, r0, r2
	adds r0, #1
	subs r1, r1, r0
	cmp r3, r1
	bge _08008D24
	b _08009120
_08008D24:
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _08008D8A
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	adds r0, #1
	cmp r1, r0
	ble _08008D8A
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	ldr r1, _08008DC8 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08008D8A
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	adds r2, #1
	lsls r2, r2, #0xc
	movs r3, #0x20
	ldrsh r1, [r5, r3]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	subs r2, r2, r0
	movs r0, #0x1e
	ldrsh r1, [r5, r0]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x22
	ldrsh r3, [r5, r0]
	ldr r0, [r6, #0x44]
	subs r0, r0, r3
	adds r0, #1
	subs r1, r1, r0
	cmp r2, r1
	bge _08008D8A
	b _08009120
_08008D8A:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	adds r0, #1
	lsls r0, r0, #0xc
	movs r1, #0x19
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	adds r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrb r1, [r6]
	cmp r1, #0
	bne _08008DBC
	adds r0, #0x80
	strh r1, [r0]
_08008DBC:
	ldr r0, _08008DC8 @ =gUnk_082D88B8
	movs r2, #0xb4
	lsls r2, r2, #1
	adds r0, r0, r2
	b _08009118
	.align 2, 0
_08008DC8: .4byte gUnk_082D88B8
_08008DCC:
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0xc
	subs r4, r0, #1
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r0, r4, r0
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _08008DF4
	movs r0, #2
	orrs r0, r2
	b _08008DF8
_08008DF4:
	adds r0, r2, #0
	orrs r0, r3
_08008DF8:
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	subs r0, #1
	cmp r4, r0
	blt _08008E04
	b _0800912C
_08008E04:
	ldr r0, _08008E18 @ =gUnk_082D88B8
	movs r1, #0xb4
	lsls r1, r1, #1
	adds r0, r0, r1
_08008E0C:
	ldr r1, [r6, #0x58]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r6, #0x58]
	b _0800912C
	.align 2, 0
_08008E18: .4byte gUnk_082D88B8
_08008E1C:
	ldrh r2, [r5, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bgt _08008E28
	b _08009120
_08008E28:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _08008E88 @ =gUnk_082D88B8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08008E52
	b _08009120
_08008E52:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08008E6E
	ldrb r0, [r6]
	cmp r0, #0
	bne _08008E6E
	ldr r3, _08008E8C @ =0x00000103
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _08008E6E
	b _08009120
_08008E6E:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08008E94
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r1, _08008E90 @ =gUnk_082D8DA4
	lsls r0, r2, #2
	adds r0, r0, r1
	b _08008FFC
	.align 2, 0
_08008E88: .4byte gUnk_082D88B8
_08008E8C: .4byte 0x00000103
_08008E90: .4byte gUnk_082D8DA4
_08008E94:
	ldr r0, [r6, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	bne _08008EA0
	b _080090C0
_08008EA0:
	movs r3, #0x20
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _08008F44
	ldrh r1, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _08008F44
	ldrb r0, [r4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _08008F40 @ =gUnk_082D88B8
	mov sl, r3
	lsls r0, r7, #2
	add r0, sl
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _08008F44
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	ldr r2, [r6, #0x40]
	adds r2, r2, r0
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	subs r2, r2, r0
	mov ip, r2
	movs r2, #0x22
	ldrsh r0, [r5, r2]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp ip, r1
	bge _08008F44
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	bne _08008F0E
	b _08009120
_08008F0E:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x16
	mov r1, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _08008F34
	b _08009120
_08008F34:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	bne _08008FF2
	b _08009020
	.align 2, 0
_08008F40: .4byte gUnk_082D88B8
_08008F44:
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _08008F4E
	b _080090C0
_08008F4E:
	movs r3, #0x24
	ldrsh r1, [r5, r3]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	adds r0, #1
	cmp r1, r0
	bgt _08008F5E
	b _080090C0
_08008F5E:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _08009018 @ =gUnk_082D88B8
	mov sl, r3
	lsls r0, r7, #2
	add r0, sl
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _08008F8E
	b _080090C0
_08008F8E:
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	adds r2, #1
	lsls r2, r2, #0xc
	movs r0, #0x20
	ldrsh r1, [r5, r0]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	subs r2, r2, r0
	mov ip, r2
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp ip, r1
	blt _08008FB8
	b _080090C0
_08008FB8:
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	bne _08008FC2
	b _08009120
_08008FC2:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x16
	mov r1, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _08008FE8
	b _08009120
_08008FE8:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08009020
_08008FF2:
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r0, _0800901C @ =gUnk_082D8DA4
	adds r0, r2, r0
_08008FFC:
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _0800912E
	.align 2, 0
_08009018: .4byte gUnk_082D88B8
_0800901C: .4byte gUnk_082D8DA4
_08009020:
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r3, r0, #0xc
	movs r2, #0x1b
	ldrsb r2, [r5, r2]
	lsls r1, r2, #8
	ldr r0, [r6, #0x4c]
	adds r0, r0, r1
	cmp r3, r0
	bls _0800903C
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	cmp r3, r0
	bls _08009056
_0800903C:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08009120
	ldr r0, [r6, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r5, r3]
	cmp r0, r1
	beq _08009120
_08009056:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	lsls r1, r2, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r6]
	cmp r1, #0
	bne _0800909A
	adds r0, r6, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _0800909A
	ldr r1, [r6, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _0800909A
	ldr r0, _080090B4 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r6, #8]
	strh r2, [r3]
_0800909A:
	adds r0, r6, #0
	adds r0, #0x57
	strb r7, [r0]
	ldr r1, _080090B8 @ =gUnk_082D88B8
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080090BC @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r6, #0x58]
	orrs r0, r1
	str r0, [r6, #0x58]
	b _08009120
	.align 2, 0
_080090B4: .4byte 0xFFFFEF9F
_080090B8: .4byte gUnk_082D88B8
_080090BC: .4byte 0x000FFFFF
_080090C0:
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	movs r1, #0x1b
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r6]
	cmp r1, #0
	bne _08009108
	adds r0, r6, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08009108
	ldr r1, [r6, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08009108
	ldr r0, _08009124 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r6, #8]
	strh r2, [r3]
_08009108:
	adds r1, r6, #0
	adds r1, #0x57
	movs r0, #0x5a
	strb r0, [r1]
	ldr r0, _08009128 @ =gUnk_082D88B8
	movs r3, #0xb4
	lsls r3, r3, #1
	adds r0, r0, r3
_08009118:
	ldr r1, [r6, #0x58]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r6, #0x58]
_08009120:
	movs r0, #0xf
	b _0800912E
	.align 2, 0
_08009124: .4byte 0xFFFFEF9F
_08009128: .4byte gUnk_082D88B8
_0800912C:
	movs r0, #0
_0800912E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800913C
sub_0800913C: @ 0x0800913C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	movs r0, #0x70
	ands r0, r2
	cmp r0, #0x20
	beq _080091C8
	cmp r0, #0x20
	bgt _08009166
	cmp r0, #0
	beq _08009180
	cmp r0, #0x10
	beq _08009180
	b _08009664
_08009166:
	cmp r0, #0x40
	bne _0800916C
	b _08009304
_0800916C:
	cmp r0, #0x40
	bgt _08009178
	cmp r0, #0x30
	bne _08009176
	b _08009304
_08009176:
	b _08009664
_08009178:
	cmp r0, #0x50
	bne _0800917E
	b _08009354
_0800917E:
	b _08009664
_08009180:
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	adds r0, #1
	lsls r4, r0, #0xc
	movs r0, #0x18
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r0, r4, r0
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _080091A8
	adds r0, r2, #0
	orrs r0, r3
	b _080091AC
_080091A8:
	movs r0, #2
	orrs r0, r2
_080091AC:
	strb r0, [r1]
	ldr r0, [r5, #8]
	adds r0, #1
	cmp r4, r0
	bgt _080091B8
	b _08009664
_080091B8:
	ldr r0, _080091C4 @ =gUnk_082D88B8
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r0, r2
	b _08009344
	.align 2, 0
_080091C4: .4byte gUnk_082D88B8
_080091C8:
	movs r3, #0x26
	ldrsh r1, [r5, r3]
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	adds r0, #1
	cmp r1, r0
	bgt _080091D8
	b _08009658
_080091D8:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	adds r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r3, _08009300 @ =gUnk_082D88B8
	mov r8, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r0, [r0]
	movs r7, #0x80
	lsls r7, r7, #2
	ands r0, r7
	cmp r0, #0
	beq _08009204
	b _08009658
_08009204:
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	ble _0800925C
	ldrh r1, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0800925C
	ldrb r0, [r4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r0, [r0]
	ands r0, r7
	cmp r0, #0
	bne _0800925C
	movs r3, #0x20
	ldrsh r0, [r5, r3]
	ldr r3, [r6, #0x40]
	adds r3, r3, r0
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	subs r3, r3, r0
	movs r2, #0x1e
	ldrsh r1, [r5, r2]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x22
	ldrsh r2, [r5, r0]
	ldr r0, [r6, #0x44]
	subs r0, r0, r2
	adds r0, #1
	subs r1, r1, r0
	cmp r3, r1
	bge _0800925C
	b _08009658
_0800925C:
	movs r1, #0x20
	ldrsh r0, [r5, r1]
	cmp r0, #0
	bge _080092C2
	movs r2, #0x24
	ldrsh r1, [r5, r2]
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	adds r0, #1
	cmp r1, r0
	ble _080092C2
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	ldr r1, _08009300 @ =gUnk_082D88B8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _080092C2
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	adds r2, #1
	lsls r2, r2, #0xc
	movs r3, #0x20
	ldrsh r1, [r5, r3]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	subs r2, r2, r0
	movs r0, #0x1e
	ldrsh r1, [r5, r0]
	adds r1, #1
	lsls r1, r1, #0xc
	movs r0, #0x22
	ldrsh r3, [r5, r0]
	ldr r0, [r6, #0x44]
	subs r0, r0, r3
	adds r0, #1
	subs r1, r1, r0
	cmp r2, r1
	bge _080092C2
	b _08009658
_080092C2:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	adds r0, #1
	lsls r0, r0, #0xc
	movs r1, #0x19
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	adds r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #8
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	adds r0, r6, #0
	adds r0, #0x52
	strh r2, [r0]
	ldrb r1, [r6]
	cmp r1, #0
	bne _080092F4
	adds r0, #0x80
	strh r1, [r0]
_080092F4:
	ldr r0, _08009300 @ =gUnk_082D88B8
	movs r2, #0xba
	lsls r2, r2, #1
	adds r0, r0, r2
	b _08009650
	.align 2, 0
_08009300: .4byte gUnk_082D88B8
_08009304:
	movs r3, #0x1c
	ldrsh r0, [r5, r3]
	lsls r0, r0, #0xc
	subs r4, r0, #1
	movs r0, #0x1a
	ldrsb r0, [r5, r0]
	lsls r0, r0, #8
	subs r0, r4, r0
	str r0, [r5]
	adds r1, r6, #0
	adds r1, #0x62
	ldrb r2, [r1]
	ldr r0, [r6, #8]
	movs r3, #1
	ands r0, r3
	cmp r0, #0
	beq _0800932C
	movs r0, #2
	orrs r0, r2
	b _08009330
_0800932C:
	adds r0, r2, #0
	orrs r0, r3
_08009330:
	strb r0, [r1]
	ldr r0, [r5, #0x10]
	subs r0, #1
	cmp r4, r0
	blt _0800933C
	b _08009664
_0800933C:
	ldr r0, _08009350 @ =gUnk_082D88B8
	movs r1, #0xba
	lsls r1, r1, #1
	adds r0, r0, r1
_08009344:
	ldr r1, [r6, #0x58]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r6, #0x58]
	b _08009664
	.align 2, 0
_08009350: .4byte gUnk_082D88B8
_08009354:
	ldrh r2, [r5, #0x1e]
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	cmp r0, #0
	bgt _08009360
	b _08009658
_08009360:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r1, _080093C0 @ =gUnk_082D88B8
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800938A
	b _08009658
_0800938A:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080093A6
	ldrb r0, [r6]
	cmp r0, #0
	bne _080093A6
	ldr r3, _080093C4 @ =0x00000103
	adds r0, r6, r3
	ldrb r0, [r0]
	cmp r0, #0x17
	beq _080093A6
	b _08009658
_080093A6:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _080093CC
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r1, _080093C8 @ =gUnk_082D8DA4
	lsls r0, r2, #2
	adds r0, r0, r1
	b _08009534
	.align 2, 0
_080093C0: .4byte gUnk_082D88B8
_080093C4: .4byte 0x00000103
_080093C8: .4byte gUnk_082D8DA4
_080093CC:
	ldr r0, [r6, #8]
	movs r1, #0x60
	ands r0, r1
	cmp r0, #0
	bne _080093D8
	b _080095F8
_080093D8:
	movs r3, #0x20
	ldrsh r0, [r5, r3]
	cmp r0, #0
	ble _0800947C
	ldrh r1, [r5, #0x1c]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	cmp r0, #0
	ble _0800947C
	ldrb r0, [r4]
	subs r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _08009478 @ =gUnk_082D88B8
	mov sl, r3
	lsls r0, r7, #2
	add r0, sl
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	bne _0800947C
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	ldr r2, [r6, #0x40]
	adds r2, r2, r0
	movs r1, #0x1c
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	subs r2, r2, r0
	mov ip, r2
	movs r2, #0x22
	ldrsh r0, [r5, r2]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp ip, r1
	bge _0800947C
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	bne _08009446
	b _08009658
_08009446:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x16
	mov r1, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _0800946C
	b _08009658
_0800946C:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	bne _0800952A
	b _08009558
	.align 2, 0
_08009478: .4byte gUnk_082D88B8
_0800947C:
	movs r2, #0x20
	ldrsh r0, [r5, r2]
	cmp r0, #0
	blt _08009486
	b _080095F8
_08009486:
	movs r3, #0x24
	ldrsh r1, [r5, r3]
	movs r2, #0x1c
	ldrsh r0, [r5, r2]
	adds r0, #1
	cmp r1, r0
	bgt _08009496
	b _080095F8
_08009496:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r3, _08009550 @ =gUnk_082D88B8
	mov sl, r3
	lsls r0, r7, #2
	add r0, sl
	ldr r3, [r0]
	movs r0, #0x80
	lsls r0, r0, #2
	mov sb, r0
	adds r0, r3, #0
	mov r1, sb
	ands r0, r1
	cmp r0, #0
	beq _080094C6
	b _080095F8
_080094C6:
	movs r0, #0x1c
	ldrsh r2, [r5, r0]
	adds r2, #1
	lsls r2, r2, #0xc
	movs r0, #0x20
	ldrsh r1, [r5, r0]
	ldr r0, [r6, #0x40]
	adds r0, r0, r1
	subs r2, r2, r0
	mov ip, r2
	movs r1, #0x22
	ldrsh r0, [r5, r1]
	ldr r1, [r6, #0x44]
	subs r1, r1, r0
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	subs r1, r1, r0
	cmp ip, r1
	blt _080094F0
	b _080095F8
_080094F0:
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	bne _080094FA
	b _08009658
_080094FA:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x16
	mov r1, sl
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r1, #0
	mov r3, sb
	ands r0, r3
	cmp r0, #0
	beq _08009520
	b _08009658
_08009520:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08009558
_0800952A:
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r0, _08009554 @ =gUnk_082D8DA4
	adds r0, r2, r0
_08009534:
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	mov r2, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08009666
	.align 2, 0
_08009550: .4byte gUnk_082D88B8
_08009554: .4byte gUnk_082D8DA4
_08009558:
	movs r3, #0x1e
	ldrsh r0, [r5, r3]
	lsls r3, r0, #0xc
	movs r2, #0x1b
	ldrsb r2, [r5, r2]
	lsls r1, r2, #8
	ldr r0, [r6, #0x4c]
	adds r0, r0, r1
	cmp r3, r0
	bls _08009574
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	cmp r3, r0
	bls _0800958E
_08009574:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08009658
	ldr r0, [r6, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r5, r3]
	cmp r0, r1
	beq _08009658
_0800958E:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	lsls r1, r2, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r6]
	cmp r1, #0
	bne _080095D2
	adds r0, r6, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _080095D2
	ldr r1, [r6, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _080095D2
	ldr r0, _080095EC @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r6, #8]
	strh r2, [r3]
_080095D2:
	adds r0, r6, #0
	adds r0, #0x57
	strb r7, [r0]
	ldr r1, _080095F0 @ =gUnk_082D88B8
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, _080095F4 @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r6, #0x58]
	orrs r0, r1
	str r0, [r6, #0x58]
	b _08009658
	.align 2, 0
_080095EC: .4byte 0xFFFFEF9F
_080095F0: .4byte gUnk_082D88B8
_080095F4: .4byte 0x000FFFFF
_080095F8:
	movs r2, #0x1e
	ldrsh r0, [r5, r2]
	lsls r0, r0, #0xc
	movs r1, #0x1b
	ldrsb r1, [r5, r1]
	lsls r1, r1, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r6]
	cmp r1, #0
	bne _08009640
	adds r0, r6, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08009640
	ldr r1, [r6, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08009640
	ldr r0, _0800965C @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r6, #8]
	strh r2, [r3]
_08009640:
	adds r1, r6, #0
	adds r1, #0x57
	movs r0, #0x5d
	strb r0, [r1]
	ldr r0, _08009660 @ =gUnk_082D88B8
	movs r3, #0xba
	lsls r3, r3, #1
	adds r0, r0, r3
_08009650:
	ldr r1, [r6, #0x58]
	ldr r0, [r0]
	orrs r1, r0
	str r1, [r6, #0x58]
_08009658:
	movs r0, #0xf
	b _08009666
	.align 2, 0
_0800965C: .4byte 0xFFFFEF9F
_08009660: .4byte gUnk_082D88B8
_08009664:
	movs r0, #0
_08009666:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08009674
sub_08009674: @ 0x08009674
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x20
	beq _080096AC
	cmp r0, #0x20
	bgt _08009698
	cmp r0, #0
	beq _080096E4
	cmp r0, #0x10
	beq _080096E4
	b _080097B6
_08009698:
	cmp r0, #0x40
	beq _080096E4
	cmp r0, #0x40
	bgt _080096A6
	cmp r0, #0x30
	beq _080096E4
	b _080097B6
_080096A6:
	cmp r0, #0x50
	beq _080096AC
	b _080097B6
_080096AC:
	movs r2, #0x1c
	ldrsh r0, [r1, r2]
	lsls r0, r0, #0xc
	movs r2, #0x80
	lsls r2, r2, #4
	adds r4, r0, #0
	orrs r4, r2
	movs r3, #0x1e
	ldrsh r0, [r1, r3]
	lsls r0, r0, #0xc
	adds r5, r0, #0
	orrs r5, r2
	ldr r0, [r6, #0x40]
	subs r1, r4, r0
	cmp r0, r4
	ble _080096CE
	subs r1, r0, r4
_080096CE:
	ldr r0, [r6, #0x44]
	subs r3, r5, r0
	cmp r0, r5
	ble _080096D8
	subs r3, r0, r5
_080096D8:
	adds r0, r3, #0
	cmp r0, r1
	bge _080096E0
	adds r0, r1, #0
_080096E0:
	cmp r0, r2
	ble _080096E8
_080096E4:
	movs r0, #0xf
	b _080097B8
_080096E8:
	movs r1, #0xf
	ands r1, r7
	cmp r1, #0
	bne _0800972A
	ldr r7, _0800971C @ =0x00000103
	adds r0, r6, r7
	ldrb r0, [r0]
	cmp r0, #8
	bne _0800972A
	adds r0, r6, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	bne _0800972A
	adds r0, r6, #0
	adds r0, #0x52
	strh r1, [r0]
	ldr r0, [r6, #0x40]
	cmp r4, r0
	bge _08009720
	adds r1, r6, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #2
	b _080097B2
	.align 2, 0
_0800971C: .4byte 0x00000103
_08009720:
	adds r1, r6, #0
	adds r1, #0x50
	movs r0, #0xfe
	lsls r0, r0, #8
	b _080097B2
_0800972A:
	adds r0, r6, #0
	adds r0, #0x50
	ldrh r1, [r0]
	mov sb, r1
	movs r2, #0x52
	adds r2, r2, r6
	mov ip, r2
	ldrh r1, [r2]
	movs r7, #0
	ldrsh r3, [r2, r7]
	mov r8, r0
	cmp r3, #0
	bge _08009746
	rsbs r3, r3, #0
_08009746:
	cmp r3, #0x80
	ble _0800975E
	lsls r2, r1, #0x10
	asrs r1, r2, #0x10
	lsls r0, r1, #1
	adds r0, r0, r1
	asrs r0, r0, #2
	rsbs r0, r0, #0
	mov r1, ip
	strh r0, [r1]
	adds r1, r2, #0
	b _08009768
_0800975E:
	lsls r1, r1, #0x10
	asrs r0, r1, #0x10
	rsbs r0, r0, #0
	mov r2, ip
	strh r0, [r2]
_08009768:
	mov r3, sb
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bge _08009774
	rsbs r0, r0, #0
_08009774:
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	asrs r0, r1, #0x10
	cmp r0, #0
	bge _08009780
	rsbs r0, r0, #0
_08009780:
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r0, #0
	lsls r0, r0, #0x10
	lsls r1, r3, #0x10
	cmp r0, r1
	bge _08009790
	adds r2, r3, #0
_08009790:
	adds r1, r2, #0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xff
	bgt _0800979E
	movs r1, #0x80
	lsls r1, r1, #1
_0800979E:
	ldr r0, [r6, #0x40]
	cmp r4, r0
	bge _080097AA
	mov r7, r8
	strh r1, [r7]
	b _080096E4
_080097AA:
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	rsbs r0, r0, #0
	mov r1, r8
_080097B2:
	strh r0, [r1]
	b _080096E4
_080097B6:
	movs r0, #0
_080097B8:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_080097C4
sub_080097C4: @ 0x080097C4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r0, #0xf0
	lsls r0, r0, #0x10
	ands r0, r3
	lsrs r5, r0, #0x14
	ldr r1, _08009814 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _080097E0
	cmp r0, #0x16
	bne _080097F8
_080097E0:
	movs r0, #0xf0
	lsls r0, r0, #0x14
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _080097F8
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _080098B8
_080097F8:
	movs r1, #0xf0
	lsls r1, r1, #0x14
	ands r1, r3
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	beq _0800984C
	cmp r1, r0
	bhi _08009818
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	beq _0800982A
	b _080098B8
	.align 2, 0
_08009814: .4byte 0x00000103
_08009818:
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r1, r0
	beq _0800987C
	movs r0, #0x80
	lsls r0, r0, #0x14
	cmp r1, r0
	beq _0800989C
	b _080098B8
_0800982A:
	cmp r5, #0
	bne _0800983C
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080098B8
_0800983C:
	adds r4, r2, #0
	adds r4, #0xd2
	ldr r0, _08009848 @ =gUnk_082D91A4
	lsls r1, r5, #1
	adds r0, #6
	b _080098A6
	.align 2, 0
_08009848: .4byte gUnk_082D91A4
_0800984C:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080098B8
	adds r4, r2, #0
	adds r4, #0xd2
	ldr r0, _08009878 @ =gUnk_082D91A4
	lsls r1, r5, #1
	adds r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r2, r0
	ble _080098B8
	b _080098B6
	.align 2, 0
_08009878: .4byte gUnk_082D91A4
_0800987C:
	adds r3, r2, #0
	adds r3, #0xd0
	ldr r1, _08009898 @ =gUnk_082D91A4
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _080098B8
	strh r2, [r3]
	b _080098B8
	.align 2, 0
_08009898: .4byte gUnk_082D91A4
_0800989C:
	adds r4, r2, #0
	adds r4, #0xd0
	ldr r0, _080098C0 @ =gUnk_082D91A4
	lsls r1, r5, #1
	adds r0, #0xc
_080098A6:
	adds r1, r1, r0
	movs r5, #0
	ldrsh r2, [r4, r5]
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r2, r0
	bge _080098B8
_080098B6:
	strh r3, [r4]
_080098B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080098C0: .4byte gUnk_082D91A4

	thumb_func_start sub_080098C4
sub_080098C4: @ 0x080098C4
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	movs r0, #0xf0
	lsls r0, r0, #0x10
	ands r0, r3
	lsrs r5, r0, #0x14
	ldr r1, _08009914 @ =0x00000103
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #8
	beq _080098E0
	cmp r0, #0x16
	bne _080098F8
_080098E0:
	movs r0, #0xf0
	lsls r0, r0, #0x14
	ands r0, r3
	movs r1, #0x80
	lsls r1, r1, #0x11
	cmp r0, r1
	bne _080098F8
	adds r0, r2, #0
	adds r0, #0xd4
	ldrh r0, [r0]
	cmp r0, #0x34
	beq _080099B8
_080098F8:
	movs r1, #0xf0
	lsls r1, r1, #0x14
	ands r1, r3
	movs r0, #0x80
	lsls r0, r0, #0x12
	cmp r1, r0
	beq _0800994C
	cmp r1, r0
	bhi _08009918
	movs r0, #0x80
	lsls r0, r0, #0x11
	cmp r1, r0
	beq _0800992A
	b _080099B8
	.align 2, 0
_08009914: .4byte 0x00000103
_08009918:
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r1, r0
	beq _0800997C
	movs r0, #0x80
	lsls r0, r0, #0x14
	cmp r1, r0
	beq _0800999C
	b _080099B8
_0800992A:
	cmp r5, #0
	bne _0800993C
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080099B8
_0800993C:
	adds r4, r2, #0
	adds r4, #0xd2
	ldr r0, _08009948 @ =gUnk_082D91BC
	lsls r1, r5, #1
	adds r0, #6
	b _080099A6
	.align 2, 0
_08009948: .4byte gUnk_082D91BC
_0800994C:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080099B8
	adds r4, r2, #0
	adds r4, #0xd2
	ldr r0, _08009978 @ =gUnk_082D91BC
	lsls r1, r5, #1
	adds r0, #0x12
	adds r1, r1, r0
	movs r0, #0
	ldrsh r2, [r4, r0]
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r2, r0
	ble _080099B8
	b _080099B6
	.align 2, 0
_08009978: .4byte gUnk_082D91BC
_0800997C:
	adds r3, r2, #0
	adds r3, #0xd0
	ldr r1, _08009998 @ =gUnk_082D91BC
	lsls r0, r5, #1
	adds r0, r0, r1
	movs r2, #0
	ldrsh r1, [r3, r2]
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r0, [r0, r4]
	cmp r1, r0
	ble _080099B8
	strh r2, [r3]
	b _080099B8
	.align 2, 0
_08009998: .4byte gUnk_082D91BC
_0800999C:
	adds r4, r2, #0
	adds r4, #0xd0
	ldr r0, _080099C0 @ =gUnk_082D91BC
	lsls r1, r5, #1
	adds r0, #0xc
_080099A6:
	adds r1, r1, r0
	movs r5, #0
	ldrsh r2, [r4, r5]
	ldrh r3, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r2, r0
	bge _080099B8
_080099B6:
	strh r3, [r4]
_080099B8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080099C0: .4byte gUnk_082D91BC

	thumb_func_start sub_080099C4
sub_080099C4: @ 0x080099C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	movs r0, #0x80
	lsls r0, r0, #3
	mov r8, r0
	adds r0, r7, #0
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _080099E6
	b _08009D12
_080099E6:
	movs r0, #0x70
	ands r0, r7
	cmp r0, #0x20
	beq _08009A06
	cmp r0, #0x20
	bgt _080099F4
	b _08009D12
_080099F4:
	cmp r0, #0x40
	bne _080099FA
	b _08009D12
_080099FA:
	cmp r0, #0x40
	bgt _08009A00
	b _08009D12
_08009A00:
	cmp r0, #0x50
	beq _08009AF4
	b _08009D12
_08009A06:
	ldrh r0, [r5, #0x1c]
	add r1, sp, #4
	strh r0, [r1]
	ldrh r2, [r5, #0x1e]
	mov r0, sp
	adds r0, #6
	strh r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	movs r4, #0xf
	ldr r0, [r5, #8]
	asrs r0, r0, #0xc
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0xc]
	asrs r2, r1, #0xc
	strh r2, [r5, #0x1e]
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _08009A44
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	cmp r0, r1
	beq _08009A7A
_08009A44:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08009AEC @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08009A7A
	ldr r0, _08009AF0 @ =gUnk_082D8DA4
	adds r0, r2, r0
	adds r2, r7, #0
	mov r1, r8
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	ands r4, r0
_08009A7A:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	bne _08009AE8
	ldr r0, [r5, #0x10]
	asrs r0, r0, #0xc
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0xc]
	asrs r2, r1, #0xc
	strh r2, [r5, #0x1e]
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _08009AAE
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	cmp r0, r1
	beq _08009AE8
_08009AAE:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08009AEC @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08009AE8
	ldr r0, _08009AF0 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r1, r2, #0
	adds r2, r7, #0
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	ands r4, r0
_08009AE8:
	adds r0, r4, #0
	b _08009D14
	.align 2, 0
_08009AEC: .4byte gUnk_082D88B8
_08009AF0: .4byte gUnk_082D8DA4
_08009AF4:
	ldrh r1, [r6, #0x1c]
	ldr r0, _08009B60 @ =0x00000127
	cmp r1, r0
	beq _08009AFE
	b _08009C10
_08009AFE:
	adds r0, r6, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	cmp r0, #1
	beq _08009B0A
	b _08009C10
_08009B0A:
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08009B64 @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r1, [r1]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08009B34
	b _08009D12
_08009B34:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r1, r0
	cmp r1, #0
	beq _08009B6C
	ldrh r0, [r5, #0x1e]
	subs r0, #1
	strh r0, [r5, #0x1e]
	ldr r0, _08009B68 @ =gUnk_082D8DA4
	adds r0, r2, r0
	adds r2, r7, #0
	mov r3, r8
	orrs r2, r3
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _08009D14
	.align 2, 0
_08009B60: .4byte 0x00000127
_08009B64: .4byte gUnk_082D88B8
_08009B68: .4byte gUnk_082D8DA4
_08009B6C:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r3, r0, #0xc
	movs r2, #0x1b
	ldrsb r2, [r5, r2]
	lsls r1, r2, #8
	ldr r0, [r6, #0x4c]
	adds r0, r0, r1
	cmp r3, r0
	bls _08009B88
	ldr r0, [r5, #0x14]
	lsls r0, r0, #8
	cmp r3, r0
	bls _08009BA6
_08009B88:
	adds r0, r5, #0
	adds r0, #0x28
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08009B98
	b _08009D12
_08009B98:
	ldr r0, [r6, #0x48]
	asrs r0, r0, #0xc
	movs r3, #0x1c
	ldrsh r1, [r5, r3]
	cmp r0, r1
	bne _08009BA6
	b _08009D12
_08009BA6:
	movs r1, #0x1e
	ldrsh r0, [r5, r1]
	lsls r0, r0, #0xc
	lsls r1, r2, #8
	subs r0, r0, r1
	subs r0, #1
	str r0, [r5, #4]
	adds r3, r6, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #4
	movs r2, #0
	orrs r0, r1
	strb r0, [r3]
	subs r3, #0x10
	strh r2, [r3]
	ldrb r1, [r6]
	cmp r1, #0
	bne _08009BEA
	adds r0, r6, #0
	adds r0, #0xd2
	strh r1, [r0]
	ldrb r0, [r6]
	cmp r0, #0
	bne _08009BEA
	ldr r1, [r6, #8]
	movs r2, #0x40
	ands r2, r1
	cmp r2, #0
	bne _08009BEA
	ldr r0, _08009C04 @ =0xFFFFEF9F
	ands r1, r0
	str r1, [r6, #8]
	strh r2, [r3]
_08009BEA:
	adds r1, r6, #0
	adds r1, #0x57
	movs r0, #0xf
	strb r0, [r1]
	ldr r0, _08009C08 @ =gUnk_082D88B8
	ldr r1, [r0, #0x3c]
	ldr r0, _08009C0C @ =0x000FFFFF
	ands r1, r0
	ldr r0, [r6, #0x58]
	orrs r0, r1
	str r0, [r6, #0x58]
	b _08009D12
	.align 2, 0
_08009C04: .4byte 0xFFFFEF9F
_08009C08: .4byte gUnk_082D88B8
_08009C0C: .4byte 0x000FFFFF
_08009C10:
	adds r4, r6, #0
	adds r4, #0x56
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	subs r2, #1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	bl sub_080023E4
	ldr r2, _08009D20 @ =gUnk_082D88B8
	mov r8, r2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	add r0, r8
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	ands r0, r1
	cmp r0, #0
	bne _08009D12
	ldrh r0, [r5, #0x1c]
	add r1, sp, #4
	strh r0, [r1]
	ldrh r2, [r5, #0x1e]
	mov r0, sp
	adds r0, #6
	strh r2, [r0]
	mov r0, sp
	movs r2, #4
	bl memcpy
	ldr r0, [r5, #8]
	asrs r0, r0, #0xc
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	asrs r2, r1, #0xc
	strh r2, [r5, #0x1e]
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _08009C76
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	cmp r0, r1
	beq _08009CAA
_08009C76:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x16
	mov r1, r8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08009CAA
	ldr r0, _08009D24 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r2, #0
	adds r2, r7, #0
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
_08009CAA:
	adds r0, r6, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08009D12
	ldr r0, [r5, #0x10]
	asrs r0, r0, #0xc
	strh r0, [r5, #0x1c]
	ldr r1, [r5, #0x14]
	asrs r2, r1, #0xc
	strh r2, [r5, #0x1e]
	mov r1, sp
	movs r3, #0
	ldrsh r1, [r1, r3]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r1, r0
	bne _08009CDE
	mov r0, sp
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x10
	lsls r1, r2, #0x10
	cmp r0, r1
	beq _08009D12
_08009CDE:
	ldrb r0, [r4]
	ldrh r1, [r5, #0x1c]
	ldrh r2, [r5, #0x1e]
	bl sub_080023E4
	lsls r0, r0, #0x18
	ldr r1, _08009D20 @ =gUnk_082D88B8
	lsrs r2, r0, #0x16
	adds r1, r2, r1
	ldr r0, [r1]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08009D12
	ldr r0, _08009D24 @ =gUnk_082D8DA4
	adds r0, r2, r0
	movs r2, #0xc0
	lsls r2, r2, #3
	adds r1, r2, #0
	adds r2, r7, #0
	orrs r2, r1
	ldr r3, [r0]
	adds r0, r6, #0
	adds r1, r5, #0
	bl _call_via_r3
_08009D12:
	movs r0, #0xf
_08009D14:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009D20: .4byte gUnk_082D88B8
_08009D24: .4byte gUnk_082D8DA4
