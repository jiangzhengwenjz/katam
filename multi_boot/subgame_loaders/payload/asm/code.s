	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0203826C
sub_0203826C: @ 0x0203826C
	push {r7, lr}
	sub sp, #0x34
	add r7, sp, #4
	adds r0, r7, #0
	adds r0, #0x24
	movs r1, #0
	strh r1, [r0]
	bl sub_020384D0
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_020385FC
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x10
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0, #2]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xf8
	lsls r3, r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #2]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0, #4]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0xf8
	lsls r3, r3, #7
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #4]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0, #6]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _02038330 @ =0x000003FF
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #6]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0, #8]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _02038334 @ =0x00007FE0
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #8]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0, #0xa]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _02038338 @ =0x00007C1F
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xa]
	adds r0, r7, #0
	adds r0, #0x14
	ldrh r1, [r0, #0xc]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _0203833C @ =0x00004210
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #0xc]
	adds r0, r7, #0
	adds r0, #0x24
	movs r1, #0
	strh r1, [r0]
_0203832C:
	b _02038342
	.align 2, 0
_02038330: .4byte 0x000003FF
_02038334: .4byte 0x00007FE0
_02038338: .4byte 0x00007C1F
_0203833C: .4byte 0x00004210
_02038340:
	b _020384C8
_02038342:
	adds r0, r7, #0
	ldrb r1, [r0, #0xf]
	cmp r1, #5
	bhi _0203835A
	ldr r0, _0203836C @ =gUnk_0203CF50
	movs r1, #0
	str r1, [sp]
	movs r1, #1
	movs r2, #0x68
	movs r3, #0x48
	bl sub_02038A6C
_0203835A:
	adds r1, r7, #0
	ldrb r0, [r1, #0xf]
	cmp r0, #6
	bhi _020383CA
	lsls r1, r0, #2
	ldr r2, _02038370 @ =_02038374
	adds r0, r1, r2
	ldr r1, [r0]
	mov pc, r1
	.align 2, 0
_0203836C: .4byte gUnk_0203CF50
_02038370: .4byte _02038374
_02038374: @ jump table
	.4byte _02038390 @ case 0
	.4byte _02038390 @ case 1
	.4byte _0203839A @ case 2
	.4byte _020383A2 @ case 3
	.4byte _020383AC @ case 4
	.4byte _020383B6 @ case 5
	.4byte _020383C0 @ case 6
_02038390:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_02038CB8
	b _020383CC
_0203839A:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_02038DF4
_020383A2:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_02038E50
	b _020383CC
_020383AC:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_02038EE8
	b _020383CC
_020383B6:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_02039194
	b _020383CC
_020383C0:
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_020391C8
	b _020383CC
_020383CA:
	b _020383CC
_020383CC:
	bl VBlankIntrWait
	ldr r0, _020384B8 @ =gUnk_03000034
	ldrh r1, [r0]
	adds r0, r1, #0
	lsls r2, r0, #0x18
	lsrs r1, r2, #0x18
	adds r0, r1, #0
	bl sub_02038A04
	ldr r0, _020384B8 @ =gUnk_03000034
	movs r1, #0
	strh r1, [r0]
	adds r0, r7, #0
	ldrb r1, [r0, #0xf]
	cmp r1, #5
	bhi _020384B6
	adds r0, r7, #0
	adds r0, #0x28
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r0, r7, #0
	adds r0, #0x2a
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r0, #0x2c
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrh r1, [r1, #8]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	ldrh r2, [r1, #8]
	ldr r3, _020384BC @ =0xFFFFF800
	adds r1, r2, r3
	ldrh r2, [r0, #8]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #8]
	adds r0, r7, #0
	adds r0, #0x28
	ldr r1, _020384C0 @ =0x07000006
	movs r2, #1
	movs r3, #8
	bl ObjAffineSet
	ldr r0, _020384C4 @ =0x04000018
	adds r1, r7, #0
	ldrh r2, [r1, #6]
	strh r2, [r0]
	adds r0, r7, #0
	adds r1, r7, #0
	ldrh r2, [r1, #6]
	adds r1, r2, #2
	ldrh r2, [r0, #6]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #6]
	adds r0, r7, #0
	adds r1, r7, #0
	ldrh r2, [r1, #6]
	lsls r3, r2, #0x17
	lsrs r1, r3, #0x17
	ldrh r2, [r0, #6]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #6]
	adds r0, r7, #0
	ldrh r1, [r0, #0xa]
	adds r2, r1, #1
	adds r3, r2, #0
	strh r3, [r0, #0xa]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	movs r1, #0xb4
	lsls r1, r1, #2
	cmp r0, r1
	bls _020384B6
	adds r1, r7, #0
	adds r0, r1, #0
	bl sub_02038BB8
_020384B6:
	b _0203832C
	.align 2, 0
_020384B8: .4byte gUnk_03000034
_020384BC: .4byte 0xFFFFF800
_020384C0: .4byte 0x07000006
_020384C4: .4byte 0x04000018
_020384C8:
	add sp, #0x34
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start sub_020384D0
sub_020384D0: @ 0x020384D0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	movs r0, #2
	bl RegisterRamReset
	ldr r0, _020385B4 @ =0x040000D4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _020385B8 @ =gUnk_0203A110
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _020385BC @ =gUnk_03000000
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020385C0 @ =0x8400000D
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _020385B4 @ =0x040000D4
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _020385C4 @ =sub_0203803C
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r1, _020385C8 @ =gUnk_030000A0
	str r1, [r0]
	ldr r1, [r7]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020385CC @ =0x84000100
	str r1, [r0]
	ldr r0, [r7]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _020385D0 @ =0x03007FFC
	ldr r1, _020385C8 @ =gUnk_030000A0
	str r1, [r0]
	movs r0, #0xa0
	str r0, [r7]
	ldr r0, _020385B4 @ =0x040000D4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	str r7, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020385D4 @ =0x85000100
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _020385D8 @ =0x04000200
	movs r1, #1
	strh r1, [r0]
	ldr r0, _020385DC @ =0x080000B2
	ldrb r1, [r0]
	lsls r2, r1, #0x18
	lsrs r0, r2, #0x18
	cmp r0, #0x96
	bne _02038580
	ldr r0, _020385E0 @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _020385E4 @ =0x454B3842
	cmp r1, r0
	bne _02038580
	ldr r0, _020385D8 @ =0x04000200
	ldr r1, _020385D8 @ =0x04000200
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
_02038580:
	ldr r0, _020385E8 @ =0x04000004
	movs r1, #8
	strh r1, [r0]
	ldr r0, _020385EC @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	ldr r0, _020385F0 @ =gUnk_030004A0
	ldrh r1, [r0]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	ldr r3, _020385F4 @ =0x0000F001
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _020385F8 @ =gUnk_03000034
	movs r1, #0
	strh r1, [r0]
	movs r0, #0x80
	bl sub_02038A04
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_020385B4: .4byte 0x040000D4
_020385B8: .4byte gUnk_0203A110
_020385BC: .4byte gUnk_03000000
_020385C0: .4byte 0x8400000D
_020385C4: .4byte sub_0203803C
_020385C8: .4byte gUnk_030000A0
_020385CC: .4byte 0x84000100
_020385D0: .4byte 0x03007FFC
_020385D4: .4byte 0x85000100
_020385D8: .4byte 0x04000200
_020385DC: .4byte 0x080000B2
_020385E0: .4byte 0x080000AC
_020385E4: .4byte 0x454B3842
_020385E8: .4byte 0x04000004
_020385EC: .4byte 0x04000208
_020385F0: .4byte gUnk_030004A0
_020385F4: .4byte 0x0000F001
_020385F8: .4byte gUnk_03000034

	thumb_func_start sub_020385FC
sub_020385FC: @ 0x020385FC
	push {r4, r7, lr}
	sub sp, #0x14
	mov r7, sp
	str r0, [r7]
	adds r0, r7, #4
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020386C0 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	adds r1, r7, #4
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, [r7]
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020386C4 @ =0x8100000A
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7]
	ldr r1, _020386C8 @ =gUnk_030004A2
	str r1, [r0]
	ldr r0, _020386CC @ =gUnk_0203C3D4
	ldr r1, _020386D0 @ =0x06017C00
	bl LZ77UnCompVram
	ldr r0, _020386C0 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r1, _020386D4 @ =gUnk_0203C3B4
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _020386D8 @ =0x05000200
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020386DC @ =0x80000010
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, _020386E0 @ =0x04000008
	ldr r2, _020386E4 @ =0x00001F0B
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _020386E8 @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020386EC @ =0x04000012
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020386C0 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r1, _020386F0 @ =gUnk_0203A168
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020386F4 @ =0x80000060
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _020386F8 @ =gUnk_0203A228
	ldr r1, _020386FC @ =0x06008000
	bl LZ77UnCompVram
	adds r0, r7, #4
	movs r1, #0
	strh r1, [r0]
_020386B0:
	adds r0, r7, #4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #0x13
	bls _02038700
	b _02038764
	.align 2, 0
_020386C0: .4byte 0x040000D4
_020386C4: .4byte 0x8100000A
_020386C8: .4byte gUnk_030004A2
_020386CC: .4byte gUnk_0203C3D4
_020386D0: .4byte 0x06017C00
_020386D4: .4byte gUnk_0203C3B4
_020386D8: .4byte 0x05000200
_020386DC: .4byte 0x80000010
_020386E0: .4byte 0x04000008
_020386E4: .4byte 0x00001F0B
_020386E8: .4byte 0x04000010
_020386EC: .4byte 0x04000012
_020386F0: .4byte gUnk_0203A168
_020386F4: .4byte 0x80000060
_020386F8: .4byte gUnk_0203A228
_020386FC: .4byte 0x06008000
_02038700:
	ldr r0, _02038754 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	adds r1, r7, #4
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	adds r3, r1, #0
	lsls r2, r3, #4
	subs r2, r2, r1
	lsls r1, r2, #2
	ldr r2, _02038758 @ =gUnk_0203B5F8
	adds r1, r2, r1
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	adds r1, r7, #4
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	lsls r2, r1, #6
	ldr r3, _0203875C @ =0x0600F800
	adds r1, r2, r3
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02038760 @ =0x8000001E
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _020386B0
	.align 2, 0
_02038754: .4byte 0x040000D4
_02038758: .4byte gUnk_0203B5F8
_0203875C: .4byte 0x0600F800
_02038760: .4byte 0x8000001E
_02038764:
	ldr r0, _020387EC @ =0x0400000A
	ldr r2, _020387F0 @ =0x00001E0E
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _020387F4 @ =0x04000014
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020387F8 @ =0x04000016
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020387FC @ =gUnk_0203C298
	ldr r1, _02038800 @ =0x0600CC80
	bl LZ77UnCompVram
	movs r0, #0
	str r0, [r7, #8]
	ldr r0, _02038804 @ =0x040000D4
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #4
	ldr r1, _02038808 @ =0x0600DF20
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0203880C @ =0x85000008
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	adds r0, r7, #4
	movs r1, #0xf9
	strh r1, [r0]
	ldr r0, _02038804 @ =0x040000D4
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	adds r1, r7, #4
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #4
	ldr r1, _02038810 @ =0x0600F000
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02038814 @ =0x81000400
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _02038818 @ =0x0600F1D6
	str r0, [r7, #0xc]
	adds r0, r7, #0
	adds r0, #0x10
	movs r1, #0
	strh r1, [r0]
_020387E0:
	adds r0, r7, #0
	adds r0, #0x10
	ldrh r1, [r0]
	cmp r1, #7
	bls _0203881C
	b _0203889A
	.align 2, 0
_020387EC: .4byte 0x0400000A
_020387F0: .4byte 0x00001E0E
_020387F4: .4byte 0x04000014
_020387F8: .4byte 0x04000016
_020387FC: .4byte gUnk_0203C298
_02038800: .4byte 0x0600CC80
_02038804: .4byte 0x040000D4
_02038808: .4byte 0x0600DF20
_0203880C: .4byte 0x85000008
_02038810: .4byte 0x0600F000
_02038814: .4byte 0x81000400
_02038818: .4byte 0x0600F1D6
_0203881C:
	adds r0, r7, #4
	movs r1, #0
	strh r1, [r0]
_02038822:
	adds r0, r7, #4
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #7
	bls _02038830
	b _02038884
_02038830:
	adds r0, r7, #0
	adds r0, #0x10
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r1, r7, #4
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	adds r0, r0, r1
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r1, [r7, #0xc]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r1]
	lsls r1, r2, #3
	adds r2, r7, #4
	ldrh r3, [r2]
	lsls r4, r3, #0x10
	lsrs r2, r4, #0x10
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r2, _02038880 @ =gUnk_0203C318
	adds r1, r1, r2
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0x64
	adds r2, r1, #0
	strh r2, [r0]
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _02038822
	.align 2, 0
_02038880: .4byte gUnk_0203C318
_02038884:
	adds r1, r7, #0
	adds r1, #0x10
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _020387E0
_0203889A:
	ldr r0, _020389B4 @ =0x0400000C
	ldr r3, _020389B8 @ =0x00005C0D
	adds r1, r3, #0
	strh r1, [r0]
	ldr r0, _020389BC @ =0x04000018
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020389C0 @ =0x0400001A
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020389C4 @ =gUnk_0203BAC4
	ldr r1, _020389C8 @ =0x0600C000
	bl LZ77UnCompVram
	movs r0, #0
	str r0, [r7, #0xc]
	ldr r0, _020389CC @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0xc
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _020389D0 @ =0x0600CC60
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020389D4 @ =0x85000008
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	adds r0, r7, #0
	adds r0, #0x10
	movs r1, #0x63
	strh r1, [r0]
	ldr r0, _020389CC @ =0x040000D4
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	adds r1, r7, #0
	adds r1, #0x10
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #4
	ldr r1, _020389D8 @ =0x0600E000
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020389DC @ =0x81000800
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _020389CC @ =0x040000D4
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	ldr r1, _020389E0 @ =gUnk_0203BE04
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #4
	ldr r1, _020389E4 @ =0x0600E480
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020389E8 @ =0x80000020
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _020389CC @ =0x040000D4
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	ldr r1, _020389EC @ =gUnk_0203BE84
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #4
	ldr r1, _020389F0 @ =0x0600E4C0
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020389E8 @ =0x80000020
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _020389CC @ =0x040000D4
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	ldr r1, _020389F4 @ =gUnk_0203BE44
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #4
	ldr r1, _020389F8 @ =0x0600EC80
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020389E8 @ =0x80000020
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _020389CC @ =0x040000D4
	str r0, [r7, #0xc]
	ldr r0, [r7, #0xc]
	ldr r1, _020389FC @ =gUnk_0203BEC4
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #4
	ldr r1, _02038A00 @ =0x0600ECC0
	str r1, [r0]
	ldr r1, [r7, #0xc]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _020389E8 @ =0x80000020
	str r1, [r0]
	ldr r0, [r7, #0xc]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r2, #0xba
	lsls r2, r2, #5
	adds r1, r2, #0
	strh r1, [r0]
	add sp, #0x14
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020389B4: .4byte 0x0400000C
_020389B8: .4byte 0x00005C0D
_020389BC: .4byte 0x04000018
_020389C0: .4byte 0x0400001A
_020389C4: .4byte gUnk_0203BAC4
_020389C8: .4byte 0x0600C000
_020389CC: .4byte 0x040000D4
_020389D0: .4byte 0x0600CC60
_020389D4: .4byte 0x85000008
_020389D8: .4byte 0x0600E000
_020389DC: .4byte 0x81000800
_020389E0: .4byte gUnk_0203BE04
_020389E4: .4byte 0x0600E480
_020389E8: .4byte 0x80000020
_020389EC: .4byte gUnk_0203BE84
_020389F0: .4byte 0x0600E4C0
_020389F4: .4byte gUnk_0203BE44
_020389F8: .4byte 0x0600EC80
_020389FC: .4byte gUnk_0203BEC4
_02038A00: .4byte 0x0600ECC0

	thumb_func_start sub_02038A04
sub_02038A04: @ 0x02038A04
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r7, #0
	strb r0, [r1]
	adds r0, r7, #0
	ldrb r1, [r0]
	cmp r1, #0x80
	bls _02038A1C
	adds r0, r7, #0
	movs r1, #0x80
	strb r1, [r0]
_02038A1C:
	adds r0, r7, #1
	movs r1, #0
	strb r1, [r0]
_02038A22:
	adds r0, r7, #1
	adds r1, r7, #0
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	blo _02038A30
	b _02038A64
_02038A30:
	adds r0, r7, #2
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #2
	adds r1, r7, #1
	ldrb r2, [r1]
	lsls r3, r2, #3
	movs r2, #0xe0
	lsls r2, r2, #0x13
	adds r1, r3, r2
	ldr r2, _02038A60 @ =0x01000003
	bl CpuSet
	adds r1, r7, #1
	adds r0, r7, #1
	adds r1, r7, #1
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _02038A22
	.align 2, 0
_02038A60: .4byte 0x01000003
_02038A64:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02038A6C
sub_02038A6C: @ 0x02038A6C
	push {r4, r7, lr}
	sub sp, #0x18
	mov r7, sp
	str r0, [r7]
	adds r4, r1, #0
	adds r1, r3, #0
	ldr r0, [r7, #0x24]
	adds r3, r7, #4
	strh r4, [r3]
	adds r3, r7, #6
	strh r2, [r3]
	adds r2, r7, #0
	adds r2, #8
	strh r1, [r2]
	adds r1, r7, #0
	adds r1, #0xa
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	movs r1, #0
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0
	strh r1, [r0]
_02038A9E:
	adds r0, r7, #0
	adds r0, #0xc
	adds r1, r7, #4
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bhs _02038ABC
	ldr r0, _02038AB8 @ =gUnk_03000034
	ldrh r1, [r0]
	cmp r1, #0x7f
	bls _02038ABE
	b _02038ABC
	.align 2, 0
_02038AB8: .4byte gUnk_03000034
_02038ABC:
	b _02038BB0
_02038ABE:
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r0, [r1]
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r0
	lsls r0, r1, #1
	ldr r1, [r7]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0x10
	movs r2, #3
	bl CpuSet
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r1]
	movs r3, #0xff
	lsls r3, r3, #8
	adds r1, r2, #0
	ands r1, r3
	adds r2, r7, #0
	adds r2, #0x10
	adds r3, r7, #0
	adds r3, #8
	ldrh r2, [r2]
	ldrh r3, [r3]
	adds r2, r2, r3
	adds r3, r2, #0
	movs r4, #0xff
	adds r2, r3, #0
	ands r2, r4
	orrs r1, r2
	ldrh r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x10
	ldrh r2, [r1, #2]
	movs r3, #0xfe
	lsls r3, r3, #8
	adds r1, r2, #0
	ands r1, r3
	adds r2, r7, #0
	adds r2, #0x10
	adds r3, r7, #6
	ldrh r2, [r2, #2]
	ldrh r3, [r3]
	adds r2, r2, r3
	adds r3, r2, #0
	lsls r4, r3, #0x17
	lsrs r2, r4, #0x17
	orrs r1, r2
	ldrh r2, [r0, #2]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #2]
	adds r0, r7, #0
	adds r0, #0x10
	adds r1, r7, #0
	adds r1, #0x10
	adds r2, r7, #0
	adds r2, #0xa
	ldrb r3, [r2]
	adds r2, r3, #0
	ldrh r3, [r1, #4]
	adds r1, r2, r3
	ldrh r2, [r0, #4]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strh r1, [r0, #4]
	adds r0, r7, #0
	adds r0, #0x10
	ldr r1, _02038BAC @ =gUnk_03000034
	ldrh r2, [r1]
	lsls r1, r2, #3
	movs r3, #0xe0
	lsls r3, r3, #0x13
	adds r2, r1, r3
	adds r1, r2, #0
	movs r2, #3
	bl CpuSet
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r7, #0
	adds r0, #0xc
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, _02038BAC @ =gUnk_03000034
	ldr r0, _02038BAC @ =gUnk_03000034
	ldr r1, _02038BAC @ =gUnk_03000034
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _02038A9E
	.align 2, 0
_02038BAC: .4byte gUnk_03000034
_02038BB0:
	add sp, #0x18
	pop {r4, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02038BB8
sub_02038BB8: @ 0x02038BB8
	push {r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x40
	strh r1, [r0]
	ldr r0, _02038C18 @ =0x04000008
	ldr r2, _02038C1C @ =0x00001F0B
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _02038C20 @ =0x04000010
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02038C24 @ =0x04000012
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02038C28 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r1, _02038C2C @ =gUnk_0203C54C
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	movs r1, #0xa0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02038C30 @ =0x80000010
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _02038C34 @ =gUnk_0203C56C
	ldr r1, _02038C38 @ =0x06008000
	bl LZ77UnCompVram
	movs r0, #0
	str r0, [r7, #4]
_02038C0E:
	ldr r0, [r7, #4]
	cmp r0, #0x13
	bls _02038C3C
	b _02038C8C
	.align 2, 0
_02038C18: .4byte 0x04000008
_02038C1C: .4byte 0x00001F0B
_02038C20: .4byte 0x04000010
_02038C24: .4byte 0x04000012
_02038C28: .4byte 0x040000D4
_02038C2C: .4byte gUnk_0203C54C
_02038C30: .4byte 0x80000010
_02038C34: .4byte gUnk_0203C56C
_02038C38: .4byte 0x06008000
_02038C3C:
	ldr r0, _02038C7C @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r1, [r7, #4]
	adds r3, r1, #0
	lsls r2, r3, #4
	subs r2, r2, r1
	lsls r1, r2, #2
	ldr r2, _02038C80 @ =gUnk_0203C854
	adds r1, r2, r1
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r2, [r7, #4]
	lsls r1, r2, #6
	ldr r3, _02038C84 @ =0x0600F800
	adds r2, r1, r3
	str r2, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02038C88 @ =0x8000001E
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7, #4]
	adds r1, r0, #1
	str r1, [r7, #4]
	b _02038C0E
	.align 2, 0
_02038C7C: .4byte 0x040000D4
_02038C80: .4byte gUnk_0203C854
_02038C84: .4byte 0x0600F800
_02038C88: .4byte 0x8000001E
_02038C8C:
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #0xf]
	movs r2, #0xff
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0xf]
	add sp, #0xc
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02038CB8
sub_02038CB8: @ 0x02038CB8
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _02038D28 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02038D2C @ =0x04000200
	ldr r1, _02038D2C @ =0x04000200
	ldrh r2, [r1]
	ldr r3, _02038D30 @ =0x0000FF3F
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _02038D28 @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	ldr r0, _02038D34 @ =gUnk_03000000
	ldr r1, _02038D38 @ =gUnk_030004C0
	str r1, [r0]
	ldr r0, _02038D3C @ =gUnk_03000090
	ldr r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #4
	adds r0, r1, #0
	ands r0, r2
	lsrs r1, r0, #8
	adds r0, r1, #0
	bl MultiSioInit
	ldr r0, [r7]
	ldrb r1, [r0, #0x10]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strb r2, [r0, #0x10]
	ldr r0, _02038D3C @ =gUnk_03000090
	movs r1, #0
	str r1, [r0]
	ldr r0, [r7]
	ldrb r1, [r0, #0xf]
	cmp r1, #0
	bne _02038D40
	ldr r0, [r7]
	ldrb r1, [r0, #0xf]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xf]
	b _02038DEC
	.align 2, 0
_02038D28: .4byte 0x04000208
_02038D2C: .4byte 0x04000200
_02038D30: .4byte 0x0000FF3F
_02038D34: .4byte gUnk_03000000
_02038D38: .4byte gUnk_030004C0
_02038D3C: .4byte gUnk_03000090
_02038D40:
	ldr r0, [r7]
	ldrb r1, [r0, #0xf]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #2
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xf]
	ldr r1, [r7]
	ldrh r0, [r1, #4]
	cmp r0, #1
	beq _02038D8C
	cmp r0, #1
	bgt _02038D66
	cmp r0, #0
	beq _02038D72
	b _02038DEC
_02038D66:
	cmp r0, #2
	beq _02038DD4
	cmp r0, #8
	beq _02038D70
	b _02038DEC
_02038D70:
	b _02038DEC
_02038D72:
	ldr r0, _02038D84 @ =gUnk_0203A144
	ldr r1, [r0]
	ldr r2, _02038D88 @ =0x06010000
	adds r0, r1, #0
	adds r1, r2, #0
	bl LZ77UnCompVram
	b _02038DEC
	.align 2, 0
_02038D84: .4byte gUnk_0203A144
_02038D88: .4byte 0x06010000
_02038D8C:
	ldr r0, _02038DC4 @ =gUnk_0203A144
	ldr r1, [r0, #4]
	ldr r2, _02038DC8 @ =gUnk_02028000
	adds r0, r1, #0
	adds r1, r2, #0
	bl LZ77UnCompWram
	ldr r0, _02038DCC @ =0x040000D4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	ldr r1, _02038DC8 @ =gUnk_02028000
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02038DD0 @ =0x84002000
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	b _02038DEC
	.align 2, 0
_02038DC4: .4byte gUnk_0203A144
_02038DC8: .4byte gUnk_02028000
_02038DCC: .4byte 0x040000D4
_02038DD0: .4byte 0x84002000
_02038DD4:
	ldr r0, _02038DE4 @ =gUnk_0203A144
	ldr r1, [r0, #8]
	ldr r2, _02038DE8 @ =0x06004000
	adds r0, r1, #0
	adds r1, r2, #0
	bl LZ77UnCompVram
	b _02038DEC
	.align 2, 0
_02038DE4: .4byte gUnk_0203A144
_02038DE8: .4byte 0x06004000
_02038DEC:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start sub_02038DF4
sub_02038DF4: @ 0x02038DF4
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _02038E4C @ =gUnk_03000090
	ldr r1, [r0]
	movs r2, #0x10
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _02038E40
	ldr r0, _02038E4C @ =gUnk_03000090
	ldr r1, [r0]
	movs r2, #0x40
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _02038E2C
	ldr r1, [r7]
	ldr r0, [r1]
	ldr r1, [r7]
	ldr r0, [r1]
	ldr r1, [r7]
	ldr r2, [r1]
	ldrb r1, [r2]
	adds r2, r1, #1
	adds r1, r2, #0
	strb r1, [r0]
_02038E2C:
	ldr r0, [r7]
	ldrb r1, [r0, #0xf]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #3
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xf]
_02038E40:
	bl MultiSioStart
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_02038E4C: .4byte gUnk_03000090

	thumb_func_start sub_02038E50
sub_02038E50: @ 0x02038E50
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	str r0, [r7]
	ldr r0, _02038EDC @ =gUnk_03000090
	ldr r1, [r0]
	movs r2, #0x20
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _02038E7A
	ldr r0, [r7]
	ldrb r1, [r0, #0xf]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #4
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xf]
_02038E7A:
	ldr r0, _02038EE0 @ =gUnk_030004A0
	ldr r1, _02038EE4 @ =gUnk_03000040
	ldr r3, [r7]
	ldrb r2, [r3, #0x10]
	bl MultiSioMain
	ldr r1, _02038EDC @ =gUnk_03000090
	str r0, [r1]
	ldr r0, [r7]
	ldr r1, _02038EE4 @ =gUnk_03000040
	ldrh r2, [r1]
	adds r1, r2, #0
	ldrb r2, [r0, #0xe]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xe]
	ldr r0, [r7]
	ldr r1, _02038EE4 @ =gUnk_03000040
	ldrb r2, [r1, #2]
	adds r1, r2, #0
	ldrh r0, [r0, #4]
	lsls r2, r1, #0x10
	lsrs r1, r2, #0x10
	cmp r0, r1
	beq _02038ED4
	ldr r0, [r7]
	ldrh r1, [r0, #0xa]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #0xa]
	ldr r0, [r7]
	ldr r1, _02038EE4 @ =gUnk_03000040
	ldrb r2, [r1, #2]
	adds r1, r2, #0
	ldrh r2, [r0, #4]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0, #4]
_02038ED4:
	add sp, #4
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_02038EDC: .4byte gUnk_03000090
_02038EE0: .4byte gUnk_030004A0
_02038EE4: .4byte gUnk_03000040

	thumb_func_start sub_02038EE8
sub_02038EE8: @ 0x02038EE8
	push {r4, r7, lr}
	sub sp, #0x10
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldr r1, _02038F9C @ =0x04000128
	ldr r2, [r1]
	lsls r3, r2, #0x1a
	lsrs r1, r3, #0x1e
	ldrb r2, [r0, #0x11]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #0x11]
	bl MultiSioStop
	ldr r0, [r7]
	ldrh r1, [r0, #4]
	cmp r1, #9
	beq _02038F18
	b _02039128
_02038F18:
	ldr r0, [r7]
	ldrh r1, [r0, #0xc]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	strh r2, [r0, #0xc]
	ldr r0, _02038FA0 @ =gUnk_0203C10C
	ldr r1, _02038FA4 @ =0x0600CC80
	bl LZ77UnCompVram
	movs r0, #0
	str r0, [r7, #4]
	ldr r0, _02038FA8 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	adds r1, r7, #4
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _02038FAC @ =0x0600DF20
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02038FB0 @ =0x85000008
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0xf9
	strh r1, [r0]
	ldr r0, _02038FA8 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	adds r1, r7, #0
	adds r1, #0xc
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _02038FB4 @ =0x0600F000
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02038FB8 @ =0x81000400
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _02038FBC @ =0x0600F1D6
	str r0, [r7, #8]
	adds r0, r7, #0
	adds r0, #0xe
	movs r1, #0
	strh r1, [r0]
_02038F8E:
	adds r0, r7, #0
	adds r0, #0xe
	ldrh r1, [r0]
	cmp r1, #7
	bls _02038FC0
	b _0203904A
	.align 2, 0
_02038F9C: .4byte 0x04000128
_02038FA0: .4byte gUnk_0203C10C
_02038FA4: .4byte 0x0600CC80
_02038FA8: .4byte 0x040000D4
_02038FAC: .4byte 0x0600DF20
_02038FB0: .4byte 0x85000008
_02038FB4: .4byte 0x0600F000
_02038FB8: .4byte 0x81000400
_02038FBC: .4byte 0x0600F1D6
_02038FC0:
	adds r0, r7, #0
	adds r0, #0xc
	movs r1, #0
	strh r1, [r0]
_02038FC8:
	adds r0, r7, #0
	adds r0, #0xc
	ldrh r1, [r0]
	lsls r2, r1, #0x10
	lsrs r0, r2, #0x10
	cmp r0, #7
	bls _02038FD8
	b _02039034
_02038FD8:
	adds r0, r7, #0
	adds r0, #0xe
	ldrh r1, [r0]
	lsls r0, r1, #5
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	lsls r3, r2, #0x10
	lsrs r1, r3, #0x10
	adds r0, r0, r1
	adds r1, r0, #0
	lsls r0, r1, #1
	ldr r1, [r7, #8]
	adds r0, r0, r1
	adds r1, r7, #0
	adds r1, #0xe
	ldrh r2, [r1]
	lsls r1, r2, #3
	adds r2, r7, #0
	adds r2, #0xc
	ldrh r3, [r2]
	lsls r4, r3, #0x10
	lsrs r2, r4, #0x10
	adds r1, r1, r2
	adds r2, r1, #0
	lsls r1, r2, #1
	ldr r2, _02039030 @ =gUnk_0203C1FC
	adds r1, r1, r2
	ldrh r2, [r1]
	adds r1, r2, #0
	adds r1, #0x64
	adds r2, r1, #0
	strh r2, [r0]
	adds r1, r7, #0
	adds r1, #0xc
	adds r0, r7, #0
	adds r0, #0xc
	adds r1, r7, #0
	adds r1, #0xc
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _02038FC8
	.align 2, 0
_02039030: .4byte gUnk_0203C1FC
_02039034:
	adds r1, r7, #0
	adds r1, #0xe
	adds r0, r7, #0
	adds r0, #0xe
	adds r1, r7, #0
	adds r1, #0xe
	ldrh r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strh r2, [r0]
	b _02038F8E
_0203904A:
	ldr r0, _020390F0 @ =0x0400000C
	ldr r2, _020390F4 @ =0x00001C0D
	adds r1, r2, #0
	strh r1, [r0]
	ldr r0, _020390F8 @ =0x04000018
	movs r1, #0
	strh r1, [r0]
	ldr r0, _020390FC @ =0x0400001A
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02039100 @ =gUnk_0203BF20
	ldr r1, _02039104 @ =0x0600C000
	bl LZ77UnCompVram
	movs r0, #0
	str r0, [r7, #8]
	ldr r0, _02039108 @ =0x040000D4
	str r0, [r7, #4]
	ldr r0, [r7, #4]
	adds r1, r7, #0
	adds r1, #8
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #4
	ldr r1, _0203910C @ =0x0600CC60
	str r1, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _02039110 @ =0x85000008
	str r1, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _02039108 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r1, _02039114 @ =gUnk_0203C078
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _02039118 @ =0x0600E480
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0203911C @ =0x8000001E
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, _02039108 @ =0x040000D4
	str r0, [r7, #8]
	ldr r0, [r7, #8]
	ldr r1, _02039120 @ =gUnk_0203C0B4
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #4
	ldr r1, _02039124 @ =0x0600E4C0
	str r1, [r0]
	ldr r1, [r7, #8]
	adds r0, r1, #0
	adds r0, #8
	ldr r1, _0203911C @ =0x8000001E
	str r1, [r0]
	ldr r0, [r7, #8]
	adds r1, r0, #0
	adds r1, #8
	ldr r0, [r1]
	ldr r0, [r7]
	ldrb r1, [r0, #0xf]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #6
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xf]
	b _02039172
	.align 2, 0
_020390F0: .4byte 0x0400000C
_020390F4: .4byte 0x00001C0D
_020390F8: .4byte 0x04000018
_020390FC: .4byte 0x0400001A
_02039100: .4byte gUnk_0203BF20
_02039104: .4byte 0x0600C000
_02039108: .4byte 0x040000D4
_0203910C: .4byte 0x0600CC60
_02039110: .4byte 0x85000008
_02039114: .4byte gUnk_0203C078
_02039118: .4byte 0x0600E480
_0203911C: .4byte 0x8000001E
_02039120: .4byte gUnk_0203C0B4
_02039124: .4byte 0x0600E4C0
_02039128:
	ldr r0, _0203917C @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02039180 @ =0x04000200
	ldr r1, _02039180 @ =0x04000200
	ldrh r2, [r1]
	ldr r3, _02039184 @ =0x0000FF3F
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, _0203917C @ =0x04000208
	movs r1, #1
	strh r1, [r0]
	ldr r0, _02039188 @ =gUnk_03000000
	ldr r1, _0203918C @ =Sio32MultiLoadIntr
	str r1, [r0]
	ldr r0, _02039190 @ =gUnk_0203A144
	ldr r1, [r7]
	ldrh r2, [r1, #4]
	adds r1, r2, #0
	lsls r2, r1, #2
	adds r0, r0, r2
	ldr r1, [r0]
	movs r0, #0
	bl Sio32MultiLoadInit
	ldr r0, [r7]
	ldrb r1, [r0, #0xf]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #5
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xf]
_02039172:
	add sp, #0x10
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0203917C: .4byte 0x04000208
_02039180: .4byte 0x04000200
_02039184: .4byte 0x0000FF3F
_02039188: .4byte gUnk_03000000
_0203918C: .4byte Sio32MultiLoadIntr
_02039190: .4byte gUnk_0203A144

	thumb_func_start sub_02039194
sub_02039194: @ 0x02039194
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	movs r0, #0
	str r0, [r7, #4]
	adds r1, r7, #4
	adds r0, r1, #0
	bl Sio32MultiLoadMain
	cmp r0, #0
	beq _020391C0
	ldr r0, [r7]
	ldrb r1, [r0, #0xf]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #0xf]
_020391C0:
	add sp, #8
	pop {r7}
	pop {r0}
	bx r0

	thumb_func_start sub_020391C8
sub_020391C8: @ 0x020391C8
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, [r7]
	ldrh r1, [r0, #0xc]
	adds r2, r1, #1
	adds r3, r2, #0
	strh r3, [r0, #0xc]
	lsls r1, r1, #0x10
	lsrs r0, r1, #0x10
	cmp r0, #0x3c
	bhi _020391E4
	b _020392E6
_020391E4:
	ldr r0, _020392F0 @ =0x040000B0
	str r0, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xa
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r1, #0xa
	ldrh r2, [r1]
	ldr r3, _020392F4 @ =0x0000C5FF
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xa
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r1, #0xa
	ldrh r2, [r1]
	lsls r3, r2, #0x11
	lsrs r1, r3, #0x11
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #0xa
	ldrh r0, [r1]
	ldr r0, _020392F8 @ =0x040000BC
	str r0, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xa
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r1, #0xa
	ldrh r2, [r1]
	ldr r3, _020392F4 @ =0x0000C5FF
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xa
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r1, #0xa
	ldrh r2, [r1]
	lsls r3, r2, #0x11
	lsrs r1, r3, #0x11
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #0xa
	ldrh r0, [r1]
	ldr r0, _020392FC @ =0x040000C8
	str r0, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xa
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r1, #0xa
	ldrh r2, [r1]
	ldr r3, _020392F4 @ =0x0000C5FF
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xa
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r1, #0xa
	ldrh r2, [r1]
	lsls r3, r2, #0x11
	lsrs r1, r3, #0x11
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #0xa
	ldrh r0, [r1]
	ldr r0, _02039300 @ =0x040000D4
	str r0, [r7, #4]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xa
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r1, #0xa
	ldrh r2, [r1]
	ldr r3, _020392F4 @ =0x0000C5FF
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	ldr r1, [r7, #4]
	adds r0, r1, #0
	adds r0, #0xa
	ldr r2, [r7, #4]
	adds r1, r2, #0
	adds r1, #0xa
	ldrh r2, [r1]
	lsls r3, r2, #0x11
	lsrs r1, r3, #0x11
	adds r2, r1, #0
	strh r2, [r0]
	ldr r0, [r7, #4]
	adds r1, r0, #0
	adds r1, #0xa
	ldrh r0, [r1]
	ldr r0, _02039304 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _02039308 @ =0x04000200
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0203930C @ =0x04000004
	movs r1, #0
	strh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #0x12
	bl _call_via_r4
_020392E6:
	add sp, #8
	pop {r4, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020392F0: .4byte 0x040000B0
_020392F4: .4byte 0x0000C5FF
_020392F8: .4byte 0x040000BC
_020392FC: .4byte 0x040000C8
_02039300: .4byte 0x040000D4
_02039304: .4byte 0x04000208
_02039308: .4byte 0x04000200
_0203930C: .4byte 0x04000004

	thumb_func_start sub_02039310
sub_02039310: @ 0x02039310
	push {r7, lr}
	mov r7, sp
	ldr r0, _0203932C @ =0x03007FF8
	ldr r1, _0203932C @ =0x03007FF8
	ldrh r2, [r1]
	movs r3, #1
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strh r2, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0203932C: .4byte 0x03007FF8

	thumb_func_start sub_02039330
sub_02039330: @ 0x02039330
	push {r7, lr}
	mov r7, sp
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
