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
