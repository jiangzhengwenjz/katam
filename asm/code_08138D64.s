	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_081428A0
sub_081428A0: @ 0x081428A0
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _081428C6
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
_081428C6:
	mov r0, sp
	ldr r1, _08142904 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142908 @ =gBgPalette
	ldr r5, _0814290C @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08142910 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08142914 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08142918 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_081434F8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142904: .4byte 0x00007FFF
_08142908: .4byte gBgPalette
_0814290C: .4byte 0x01000100
_08142910: .4byte gObjPalette
_08142914: .4byte gMainFlags
_08142918: .4byte gCurTask

	thumb_func_start sub_0814291C
sub_0814291C: @ 0x0814291C
	ldr r1, _08142930 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142934 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142938 @ =sub_0814293C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142930: .4byte 0x000009D8
_08142934: .4byte 0x000009CC
_08142938: .4byte sub_0814293C

	thumb_func_start sub_0814293C
sub_0814293C: @ 0x0814293C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142978 @ =0x000009D8
	adds r4, r5, r0
	ldrh r0, [r4]
	adds r0, #1
	strh r0, [r4]
	movs r0, #0
	ldrsh r1, [r4, r0]
	movs r0, #0x9c
	muls r0, r1, r0
	movs r1, #5
	bl __divsi3
	subs r0, #0x9c
	strh r0, [r5, #0x1c]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #4
	ble _0814296C
	ldr r0, _0814297C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142980 @ =sub_0813E2CC
	str r0, [r1]
_0814296C:
	adds r0, r5, #0
	bl sub_0813AE30
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142978: .4byte 0x000009D8
_0814297C: .4byte 0x000009CC
_08142980: .4byte sub_0813E2CC

	thumb_func_start sub_08142984
sub_08142984: @ 0x08142984
	push {r4, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0xa]
	ldr r1, _081429DC @ =gUnk_0203ACB0
	lsls r0, r2, #1
	adds r0, r0, r1
	ldr r1, _081429E0 @ =0x0000FFFF
	strh r1, [r0]
	adds r0, r4, #7
	adds r0, r0, r2
	movs r1, #0xff
	strb r1, [r0]
	adds r0, r4, #4
	adds r0, r0, r2
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	bl sub_0800AC00
	ldrb r1, [r4, #0xa]
	movs r0, #1
	bl sub_0800ACD4
	ldr r0, _081429E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081429E8 @ =sub_081429EC
	str r0, [r1]
	adds r0, r4, #0
	bl sub_0813AE30
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r0, r4, #0
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081429DC: .4byte gUnk_0203ACB0
_081429E0: .4byte 0x0000FFFF
_081429E4: .4byte 0x000009CC
_081429E8: .4byte sub_081429EC

	thumb_func_start sub_081429EC
sub_081429EC: @ 0x081429EC
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142A40 @ =0x000009D8
	adds r1, r4, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	bgt _08142A0E
	ldr r0, _08142A44 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08142A20
_08142A0E:
	ldr r0, _08142A48 @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08142A4C @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142A50 @ =sub_08142A54
	str r0, [r1]
	movs r0, #1
	strb r0, [r4, #2]
_08142A20:
	adds r0, r4, #0
	bl sub_0813AE30
	movs r1, #0xea
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142A40: .4byte 0x000009D8
_08142A44: .4byte gPressedKeys
_08142A48: .4byte 0x0000021F
_08142A4C: .4byte 0x000009CC
_08142A50: .4byte sub_08142A54

	thumb_func_start sub_08142A54
sub_08142A54: @ 0x08142A54
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142A8C @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142A90 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142A94 @ =sub_0813EBDC
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142A7E
	ldr r0, _08142A98 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142A7E:
	adds r0, r4, #0
	bl sub_0813AD9C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142A8C: .4byte 0x000009D8
_08142A90: .4byte 0x000009CC
_08142A94: .4byte sub_0813EBDC
_08142A98: .4byte 0x000002A7

	thumb_func_start sub_08142A9C
sub_08142A9C: @ 0x08142A9C
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813AA4C
	ldrb r0, [r4, #2]
	cmp r0, #1
	bne _08142ABC
	ldr r0, _08142AB4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142AB8 @ =sub_0813C414
	b _08142AC2
	.align 2, 0
_08142AB4: .4byte 0x000009CC
_08142AB8: .4byte sub_0813C414
_08142ABC:
	ldr r0, _08142ACC @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142AD0 @ =sub_0813CDE4
_08142AC2:
	str r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142ACC: .4byte 0x000009CC
_08142AD0: .4byte sub_0813CDE4

	thumb_func_start sub_08142AD4
sub_08142AD4: @ 0x08142AD4
	ldr r1, _08142AE0 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142AE4 @ =sub_08142AE8
	str r1, [r0]
	bx lr
	.align 2, 0
_08142AE0: .4byte 0x000009CC
_08142AE4: .4byte sub_08142AE8

	thumb_func_start sub_08142AE8
sub_08142AE8: @ 0x08142AE8
	push {r4, lr}
	adds r4, r0, #0
	bl sub_08139F58
	adds r0, r4, #0
	bl sub_0813A110
	ldr r0, _08142B04 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142B08 @ =sub_0813EE48
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142B04: .4byte 0x000009CC
_08142B08: .4byte sub_0813EE48

	thumb_func_start sub_08142B0C
sub_08142B0C: @ 0x08142B0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142B38 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08142B2A
	ldr r0, _08142B3C @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08142B40 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142B44 @ =sub_08142B48
	str r0, [r1]
_08142B2A:
	adds r0, r4, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142B38: .4byte gPressedKeys
_08142B3C: .4byte 0x0000021F
_08142B40: .4byte 0x000009CC
_08142B44: .4byte sub_08142B48

	thumb_func_start sub_08142B48
sub_08142B48: @ 0x08142B48
	push {lr}
	ldr r2, _08142B70 @ =gBldRegs
	movs r3, #0
	movs r1, #0x97
	strh r1, [r2]
	strh r3, [r2, #2]
	strh r3, [r2, #4]
	ldr r2, _08142B74 @ =0x000009D8
	adds r1, r0, r2
	strh r3, [r1]
	ldr r1, _08142B78 @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08142B7C @ =sub_08142B80
	str r1, [r2]
	adds r0, #0xc
	bl sub_0815604C
	pop {r0}
	bx r0
	.align 2, 0
_08142B70: .4byte gBldRegs
_08142B74: .4byte 0x000009D8
_08142B78: .4byte 0x000009CC
_08142B7C: .4byte sub_08142B80

	thumb_func_start sub_08142B80
sub_08142B80: @ 0x08142B80
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08142BBC @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08142BC0 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _08142BAE
	ldr r0, _08142BC4 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08142BC8 @ =sub_081400BC
	str r0, [r1]
_08142BAE:
	adds r0, r6, #0
	adds r0, #0xc
	bl sub_0815604C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142BBC: .4byte 0x000009D8
_08142BC0: .4byte gBldRegs
_08142BC4: .4byte 0x000009CC
_08142BC8: .4byte sub_081400BC

	thumb_func_start sub_08142BCC
sub_08142BCC: @ 0x08142BCC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142BF0 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08142BE2
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08142BE2:
	ldr r0, _08142BF4 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142BF8 @ =sub_08142BFC
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142BF0: .4byte 0x00000BEC
_08142BF4: .4byte 0x000009CC
_08142BF8: .4byte sub_08142BFC

	thumb_func_start sub_08142BFC
sub_08142BFC: @ 0x08142BFC
	ldr r1, _08142C08 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C0C @ =sub_08142C10
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C08: .4byte 0x000009CC
_08142C0C: .4byte sub_08142C10

	thumb_func_start sub_08142C10
sub_08142C10: @ 0x08142C10
	ldr r1, _08142C1C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C20 @ =sub_08140380
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C1C: .4byte 0x000009CC
_08142C20: .4byte sub_08140380

	thumb_func_start sub_08142C24
sub_08142C24: @ 0x08142C24
	ldr r1, _08142C38 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142C3C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142C40 @ =sub_08142C44
	str r1, [r0]
	bx lr
	.align 2, 0
_08142C38: .4byte 0x000009D8
_08142C3C: .4byte 0x000009CC
_08142C40: .4byte sub_08142C44

	thumb_func_start sub_08142C44
sub_08142C44: @ 0x08142C44
	push {lr}
	adds r2, r0, #0
	ldr r0, _08142C78 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3b
	ble _08142C92
	ldr r1, _08142C7C @ =0x00000BE8
	adds r0, r2, r1
	ldr r0, [r0]
	movs r3, #4
	ldrsh r1, [r0, r3]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08142C88
	ldr r0, _08142C80 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142C84 @ =sub_081404AC
	str r0, [r1]
	b _08142C92
	.align 2, 0
_08142C78: .4byte 0x000009D8
_08142C7C: .4byte 0x00000BE8
_08142C80: .4byte 0x000009CC
_08142C84: .4byte sub_081404AC
_08142C88:
	ldr r1, _08142C98 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
_08142C92:
	pop {r0}
	bx r0
	.align 2, 0
_08142C98: .4byte gUnk_02038580

	thumb_func_start sub_08142C9C
sub_08142C9C: @ 0x08142C9C
	ldr r1, _08142CB0 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08142CB4 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142CB8 @ =sub_0814069C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142CB0: .4byte 0x000009D8
_08142CB4: .4byte 0x000009CC
_08142CB8: .4byte sub_0814069C

	thumb_func_start sub_08142CBC
sub_08142CBC: @ 0x08142CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142CF4 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	ldr r0, _08142CF8 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142CFC @ =sub_081407B4
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142CE8
	ldr r0, _08142D00 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142CE8:
	adds r0, r4, #0
	bl sub_0813AEC8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142CF4: .4byte gBldRegs
_08142CF8: .4byte 0x000009CC
_08142CFC: .4byte sub_081407B4
_08142D00: .4byte 0x000002A7

	thumb_func_start sub_08142D04
sub_08142D04: @ 0x08142D04
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _08142D50 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142D54 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _08142D58 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142D5C @ =sub_0814086C
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_08155128
	cmp r0, #0
	bne _08142D38
	ldr r0, _08142D60 @ =0x000002A7
	adds r1, r4, r0
	movs r0, #0xff
	strb r0, [r1]
_08142D38:
	adds r0, r4, #0
	bl sub_0813AEC8
	ldr r1, _08142D64 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142D50: .4byte gBldRegs
_08142D54: .4byte 0x000009D8
_08142D58: .4byte 0x000009CC
_08142D5C: .4byte sub_0814086C
_08142D60: .4byte 0x000002A7
_08142D64: .4byte 0x00000BDC

	thumb_func_start sub_08142D68
sub_08142D68: @ 0x08142D68
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _08142DC0 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08142DC4 @ =0x0000FCFF
	ands r0, r1
	strh r0, [r2]
	movs r0, #0xa3
	lsls r0, r0, #2
	adds r5, r4, r0
	ldr r0, [r5]
	cmp r0, #0
	beq _08142D8A
	bl VramFree
	movs r0, #0
	str r0, [r5]
_08142D8A:
	ldr r0, [r4, #0xc]
	cmp r0, #0
	beq _08142D98
	bl VramFree
	movs r0, #0
	str r0, [r4, #0xc]
_08142D98:
	adds r0, r4, #0
	bl sub_0813ACA0
	ldr r1, _08142DC8 @ =0x00000BEC
	adds r0, r4, r1
	ldr r0, [r0]
	bl sub_0802E6C4
	ldr r0, _08142DCC @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08142DD0 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _08142DD4 @ =sub_08142DD8
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142DC0: .4byte gDispCnt
_08142DC4: .4byte 0x0000FCFF
_08142DC8: .4byte 0x00000BEC
_08142DCC: .4byte 0x000009D8
_08142DD0: .4byte 0x000009CC
_08142DD4: .4byte sub_08142DD8

	thumb_func_start sub_08142DD8
sub_08142DD8: @ 0x08142DD8
	push {lr}
	adds r1, r0, #0
	ldr r0, _08142E00 @ =0x000009D8
	adds r2, r1, r0
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142DFA
	movs r0, #0
	strh r0, [r2]
	ldr r0, _08142E04 @ =0x000009CC
	adds r1, r1, r0
	ldr r0, _08142E08 @ =sub_081409AC
	str r0, [r1]
_08142DFA:
	pop {r0}
	bx r0
	.align 2, 0
_08142E00: .4byte 0x000009D8
_08142E04: .4byte 0x000009CC
_08142E08: .4byte sub_081409AC

	thumb_func_start sub_08142E0C
sub_08142E0C: @ 0x08142E0C
	push {lr}
	adds r2, r0, #0
	ldr r1, _08142E40 @ =0x00000BE8
	adds r0, r2, r1
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	cmp r0, #5
	bne _08142E3A
	adds r1, #4
	adds r0, r2, r1
	ldr r0, [r0]
	movs r1, #0xc4
	lsls r1, r1, #1
	adds r0, r0, r1
	ldr r0, [r0]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08142E3A
	ldr r0, _08142E44 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142E48 @ =sub_08142E4C
	str r0, [r1]
_08142E3A:
	pop {r0}
	bx r0
	.align 2, 0
_08142E40: .4byte 0x00000BE8
_08142E44: .4byte 0x000009CC
_08142E48: .4byte sub_08142E4C

	thumb_func_start sub_08142E4C
sub_08142E4C: @ 0x08142E4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, _08142E78 @ =gUnk_030016A0
	movs r1, #1
	bl m4aMPlayFadeOut
	ldr r1, _08142E7C @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08142E80 @ =0x000009D8
	adds r0, r4, r1
	strh r2, [r0]
	ldr r0, _08142E84 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08142E88 @ =sub_08142E8C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08142E78: .4byte gUnk_030016A0
_08142E7C: .4byte gBldRegs
_08142E80: .4byte 0x000009D8
_08142E84: .4byte 0x000009CC
_08142E88: .4byte sub_08142E8C

	thumb_func_start sub_08142E8C
sub_08142E8C: @ 0x08142E8C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _08142EC4 @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08142EC8 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0xf
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0xe
	ble _08142EBE
	bl m4aMPlayAllStop
	ldr r0, _08142ECC @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08142ED0 @ =sub_08142ED4
	str r0, [r1]
_08142EBE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142EC4: .4byte 0x000009D8
_08142EC8: .4byte gBldRegs
_08142ECC: .4byte 0x000009CC
_08142ED0: .4byte sub_08142ED4

	thumb_func_start sub_08142ED4
sub_08142ED4: @ 0x08142ED4
	push {lr}
	adds r2, r0, #0
	ldr r0, _08142EF8 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142EF2
	ldr r0, _08142EFC @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08142F00 @ =sub_08142F04
	str r0, [r1]
_08142EF2:
	pop {r0}
	bx r0
	.align 2, 0
_08142EF8: .4byte 0x000009D8
_08142EFC: .4byte 0x000009CC
_08142F00: .4byte sub_08142F04

	thumb_func_start sub_08142F04
sub_08142F04: @ 0x08142F04
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08142F28 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08142F1A
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08142F1A:
	ldr r0, _08142F2C @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08142F30 @ =sub_08142F34
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08142F28: .4byte 0x00000BEC
_08142F2C: .4byte 0x000009CC
_08142F30: .4byte sub_08142F34

	thumb_func_start sub_08142F34
sub_08142F34: @ 0x08142F34
	ldr r1, _08142F40 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142F44 @ =sub_08142F48
	str r1, [r0]
	bx lr
	.align 2, 0
_08142F40: .4byte 0x000009CC
_08142F44: .4byte sub_08142F48

	thumb_func_start sub_08142F48
sub_08142F48: @ 0x08142F48
	ldr r1, _08142F54 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08142F58 @ =sub_08142F5C
	str r1, [r0]
	bx lr
	.align 2, 0
_08142F54: .4byte 0x000009CC
_08142F58: .4byte sub_08142F5C

	thumb_func_start sub_08142F5C
sub_08142F5C: @ 0x08142F5C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r1, _08142FB0 @ =gBldRegs
	movs r0, #0
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	mov r0, sp
	ldr r1, _08142FB4 @ =0x00007FFF
	adds r4, r1, #0
	strh r4, [r0]
	ldr r1, _08142FB8 @ =gBgPalette
	ldr r5, _08142FBC @ =0x01000100
	adds r2, r5, #0
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08142FC0 @ =gObjPalette
	adds r2, r5, #0
	bl CpuSet
	ldr r2, _08142FC4 @ =gMainFlags
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08142FC8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r0, _08142FCC @ =0x00000BE8
	adds r6, r6, r0
	ldr r0, [r6]
	bl sub_08032BD4
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08142FB0: .4byte gBldRegs
_08142FB4: .4byte 0x00007FFF
_08142FB8: .4byte gBgPalette
_08142FBC: .4byte 0x01000100
_08142FC0: .4byte gObjPalette
_08142FC4: .4byte gMainFlags
_08142FC8: .4byte gCurTask
_08142FCC: .4byte 0x00000BE8

	thumb_func_start sub_08142FD0
sub_08142FD0: @ 0x08142FD0
	push {lr}
	adds r2, r0, #0
	ldr r0, _08143000 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _08142FEE
	ldr r0, _08143004 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _08143008 @ =sub_08143010
	str r0, [r1]
_08142FEE:
	ldr r1, _0814300C @ =0x00000BDC
	adds r0, r2, r1
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08143000: .4byte 0x000009D8
_08143004: .4byte 0x000009CC
_08143008: .4byte sub_08143010
_0814300C: .4byte 0x00000BDC

	thumb_func_start sub_08143010
sub_08143010: @ 0x08143010
	push {lr}
	ldr r1, _08143030 @ =0x000009D8
	adds r2, r0, r1
	movs r1, #0
	strh r1, [r2]
	ldr r1, _08143034 @ =0x000009CC
	adds r2, r0, r1
	ldr r1, _08143038 @ =sub_08140B4C
	str r1, [r2]
	ldr r2, _0814303C @ =0x00000BDC
	adds r1, r0, r2
	ldr r1, [r1]
	bl _call_via_r1
	pop {r0}
	bx r0
	.align 2, 0
_08143030: .4byte 0x000009D8
_08143034: .4byte 0x000009CC
_08143038: .4byte sub_08140B4C
_0814303C: .4byte 0x00000BDC

	thumb_func_start sub_08143040
sub_08143040: @ 0x08143040
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081430AC @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081430B0 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081430B4 @ =sub_08140BE8
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814306C
	ldr r0, _081430B8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0814306C:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0814307C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0814307C
	ldr r1, _081430BC @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081430AC: .4byte 0x000009D8
_081430B0: .4byte 0x000009CC
_081430B4: .4byte sub_08140BE8
_081430B8: .4byte 0x000002A7
_081430BC: .4byte 0x00000BDC

	thumb_func_start sub_081430C0
sub_081430C0: @ 0x081430C0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0814312C @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143130 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _08143134 @ =sub_08140CD0
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081430EC
	ldr r0, _08143138 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_081430EC:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_081430FC:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _081430FC
	ldr r1, _0814313C @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814312C: .4byte 0x000009D8
_08143130: .4byte 0x000009CC
_08143134: .4byte sub_08140CD0
_08143138: .4byte 0x000002A7
_0814313C: .4byte 0x00000BDC

	thumb_func_start sub_08143140
sub_08143140: @ 0x08143140
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081431AC @ =0x000009D8
	adds r1, r5, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _081431B0 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081431B4 @ =sub_08141A3C
	str r0, [r1]
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r4, r5, r1
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _0814316C
	ldr r0, _081431B8 @ =0x000002A7
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_0814316C:
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
_0814317C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0814317C
	ldr r1, _081431BC @ =0x00000BDC
	adds r0, r5, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081431AC: .4byte 0x000009D8
_081431B0: .4byte 0x000009CC
_081431B4: .4byte sub_08141A3C
_081431B8: .4byte 0x000002A7
_081431BC: .4byte 0x00000BDC

	thumb_func_start sub_081431C0
sub_081431C0: @ 0x081431C0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_0813AD2C
	ldr r0, _081431E4 @ =0x000009CC
	adds r1, r4, r0
	ldr r0, _081431E8 @ =sub_0813CDE4
	str r0, [r1]
	ldr r1, _081431EC @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081431E4: .4byte 0x000009CC
_081431E8: .4byte sub_0813CDE4
_081431EC: .4byte 0x00000BDC

	thumb_func_start sub_081431F0
sub_081431F0: @ 0x081431F0
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08143250 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	ldr r1, _08143254 @ =0x000009D8
	adds r0, r5, r1
	strh r2, [r0]
	ldr r0, _08143258 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814325C @ =sub_08141B78
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xc
	bl sub_0815604C
	movs r1, #0xa3
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	movs r4, #0
_08143222:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	movs r1, #0xb7
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r5, r0
	bl sub_0815604C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08143222
	movs r1, #0xdf
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_0815604C
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143250: .4byte gBldRegs
_08143254: .4byte 0x000009D8
_08143258: .4byte 0x000009CC
_0814325C: .4byte sub_08141B78

	thumb_func_start sub_08143260
sub_08143260: @ 0x08143260
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08143284 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08143276
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_08143276:
	ldr r0, _08143288 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _0814328C @ =sub_08143290
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143284: .4byte 0x00000BEC
_08143288: .4byte 0x000009CC
_0814328C: .4byte sub_08143290

	thumb_func_start sub_08143290
sub_08143290: @ 0x08143290
	ldr r1, _0814329C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _081432A0 @ =sub_081432A4
	str r1, [r0]
	bx lr
	.align 2, 0
_0814329C: .4byte 0x000009CC
_081432A0: .4byte sub_081432A4

	thumb_func_start sub_081432A4
sub_081432A4: @ 0x081432A4
	ldr r1, _081432B0 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _081432B4 @ =sub_08141BF8
	str r1, [r0]
	bx lr
	.align 2, 0
_081432B0: .4byte 0x000009CC
_081432B4: .4byte sub_08141BF8

	thumb_func_start sub_081432B8
sub_081432B8: @ 0x081432B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r0, [r4, #1]
	movs r5, #0
	strb r0, [r4]
	ldr r1, _081432FC @ =0x000009D8
	adds r0, r4, r1
	strh r5, [r0]
	ldr r0, _08143300 @ =gUnk_030016A0
	movs r1, #2
	bl m4aMPlayFadeOut
	ldr r0, _08143304 @ =gBldRegs
	movs r1, #0xbf
	strh r1, [r0]
	strh r5, [r0, #2]
	strh r5, [r0, #4]
	adds r0, r4, #0
	bl sub_08141CDC
	ldr r1, _08143308 @ =0x00000BDC
	adds r0, r4, r1
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	ldr r0, _0814330C @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08143310 @ =sub_08143314
	str r0, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081432FC: .4byte 0x000009D8
_08143300: .4byte gUnk_030016A0
_08143304: .4byte gBldRegs
_08143308: .4byte 0x00000BDC
_0814330C: .4byte 0x000009CC
_08143310: .4byte sub_08143314

	thumb_func_start sub_08143314
sub_08143314: @ 0x08143314
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r1, _0814335C @ =0x000009D8
	adds r0, r6, r1
	ldrh r4, [r0]
	adds r4, #1
	strh r4, [r0]
	ldr r5, _08143360 @ =gBldRegs
	movs r1, #0
	ldrsh r0, [r0, r1]
	lsls r0, r0, #4
	movs r1, #0x1e
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #0x1d
	ble _08143342
	ldr r0, _08143364 @ =0x000009CC
	adds r1, r6, r0
	ldr r0, _08143368 @ =sub_08143370
	str r0, [r1]
_08143342:
	adds r0, r6, #0
	bl sub_08141CDC
	ldr r1, _0814336C @ =0x00000BDC
	adds r0, r6, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl _call_via_r1
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0814335C: .4byte 0x000009D8
_08143360: .4byte gBldRegs
_08143364: .4byte 0x000009CC
_08143368: .4byte sub_08143370
_0814336C: .4byte 0x00000BDC

	thumb_func_start sub_08143370
sub_08143370: @ 0x08143370
	push {r4, lr}
	adds r4, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _08143390 @ =0x000009D8
	adds r1, r4, r0
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143394 @ =0x000009CC
	adds r4, r4, r0
	ldr r0, _08143398 @ =sub_0814339C
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08143390: .4byte 0x000009D8
_08143394: .4byte 0x000009CC
_08143398: .4byte sub_0814339C

	thumb_func_start sub_0814339C
sub_0814339C: @ 0x0814339C
	push {lr}
	adds r2, r0, #0
	ldr r0, _081433C0 @ =0x000009D8
	adds r1, r2, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _081433BA
	ldr r0, _081433C4 @ =0x000009CC
	adds r1, r2, r0
	ldr r0, _081433C8 @ =sub_081433CC
	str r0, [r1]
_081433BA:
	pop {r0}
	bx r0
	.align 2, 0
_081433C0: .4byte 0x000009D8
_081433C4: .4byte 0x000009CC
_081433C8: .4byte sub_081433CC

	thumb_func_start sub_081433CC
sub_081433CC: @ 0x081433CC
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _081433F0 @ =0x00000BEC
	adds r4, r5, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _081433E2
	bl sub_0802FBE0
	movs r0, #0
	str r0, [r4]
_081433E2:
	ldr r0, _081433F4 @ =0x000009CC
	adds r1, r5, r0
	ldr r0, _081433F8 @ =sub_081433FC
	str r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081433F0: .4byte 0x00000BEC
_081433F4: .4byte 0x000009CC
_081433F8: .4byte sub_081433FC

	thumb_func_start sub_081433FC
sub_081433FC: @ 0x081433FC
	ldr r1, _08143408 @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _0814340C @ =sub_08143410
	str r1, [r0]
	bx lr
	.align 2, 0
_08143408: .4byte 0x000009CC
_0814340C: .4byte sub_08143410

	thumb_func_start sub_08143410
sub_08143410: @ 0x08143410
	ldr r1, _0814341C @ =0x000009CC
	adds r0, r0, r1
	ldr r1, _08143420 @ =sub_08143424
	str r1, [r0]
	bx lr
	.align 2, 0
_0814341C: .4byte 0x000009CC
_08143420: .4byte sub_08143424

	thumb_func_start sub_08143424
sub_08143424: @ 0x08143424
	push {lr}
	ldr r0, _08143438 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl CreateTitleScreen
	pop {r0}
	bx r0
	.align 2, 0
_08143438: .4byte gCurTask

	thumb_func_start sub_0814343C
sub_0814343C: @ 0x0814343C
	push {lr}
	sub sp, #4
	adds r1, r0, #0
	lsls r1, r1, #0x18
	mov r2, sp
	movs r0, #0
	strh r0, [r2]
	lsrs r1, r1, #0xa
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _08143460 @ =0x01002000
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08143460: .4byte 0x01002000

	thumb_func_start sub_08143464
sub_08143464: @ 0x08143464
	push {lr}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _08143490 @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r0, #0xc0
	lsls r0, r0, #0x13
	adds r1, r1, r0
	ldr r2, _08143494 @ =0x01000400
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08143490: .4byte 0x000001FF
_08143494: .4byte 0x01000400

	thumb_func_start sub_08143498
sub_08143498: @ 0x08143498
	push {lr}
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _081434A6
	movs r0, #1
	b _081434A8
_081434A6:
	movs r0, #0
_081434A8:
	pop {r1}
	bx r1

	thumb_func_start sub_081434AC
sub_081434AC: @ 0x081434AC
	push {r4, r5, r6, lr}
	ldr r1, _081434F0 @ =gObjPalette
	adds r0, r1, #0
	adds r0, #0x70
	ldrh r4, [r0]
	movs r2, #3
	adds r5, r1, #0
	ldr r6, _081434F4 @ =gMainFlags
	adds r3, r5, #0
_081434BE:
	adds r1, r2, #0
	adds r1, #0x35
	lsls r1, r1, #1
	adds r1, r1, r3
	adds r0, r2, #0
	adds r0, #0x34
	lsls r0, r0, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _081434BE
	adds r0, r5, #0
	adds r0, #0x6a
	strh r4, [r0]
	ldr r0, [r6]
	movs r1, #2
	orrs r0, r1
	str r0, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081434F0: .4byte gObjPalette
_081434F4: .4byte gMainFlags
