	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08158934
sub_08158934: @ 0x08158934
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08158970 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08158974 @ =gMultiSioSend
	str r1, [r0, #4]
	ldr r1, _08158978 @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _0815897C @ =gMultiSioRecv
	str r1, [r0, #4]
	ldr r1, _08158980 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08158984 @ =gMultiSioStatusFlags
	str r2, [r0]
	ldr r0, _08158988 @ =gUnk_03002558
	strb r2, [r0]
	movs r0, #0
	bl MultiSioInit
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08158970: .4byte 0x040000D4
_08158974: .4byte gMultiSioSend
_08158978: .4byte 0x85000005
_0815897C: .4byte gMultiSioRecv
_08158980: .4byte 0x85000014
_08158984: .4byte gMultiSioStatusFlags
_08158988: .4byte gUnk_03002558

	thumb_func_start sub_0815898C
sub_0815898C: @ 0x0815898C
	push {r4, lr}
	ldr r0, _081589CC @ =gUnk_03002440
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _081589C0
	ldr r3, _081589D0 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _081589D4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _081589D8 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _081589DC @ =gIntrTable
	ldr r0, _081589E0 @ =gMultiSioIntrFuncBuf
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl MultiSioInit
_081589C0:
	ldr r1, _081589E4 @ =gUnk_03002558
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081589CC: .4byte gUnk_03002440
_081589D0: .4byte 0x04000208
_081589D4: .4byte 0x04000200
_081589D8: .4byte 0x0000FFBF
_081589DC: .4byte gIntrTable
_081589E0: .4byte gMultiSioIntrFuncBuf
_081589E4: .4byte gUnk_03002558

	thumb_func_start sub_081589E8
sub_081589E8: @ 0x081589E8
	push {r4, lr}
	ldr r1, _08158A1C @ =gUnk_03002558
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08158A20 @ =gUnk_03002440
	ldr r0, [r4]
	ldr r1, _08158A24 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl MultiSioStop
	movs r0, #0
	bl MultiSioInit
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08158A14
	bl nullsub_1
_08158A14:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08158A1C: .4byte gUnk_03002558
_08158A20: .4byte gUnk_03002440
_08158A24: .4byte 0xFFEFFFFF

	thumb_func_start sub_08158A28
sub_08158A28: @ 0x08158A28
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	ldr r6, _08158AB8 @ =0x04000208
	movs r3, #0
	strh r3, [r6]
	ldr r2, _08158ABC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08158AC0 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	mov r8, r0
	strh r0, [r6]
	ldr r0, _08158AC4 @ =0x04000134
	strh r3, [r0]
	ldr r4, _08158AC8 @ =0x04000128
	ldr r1, _08158ACC @ =0x00001008
	adds r0, r1, #0
	strh r0, [r4]
	ldrh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #7
	adds r1, r5, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _08158AD0 @ =0x04000202
	movs r1, #0xc0
	strh r1, [r0]
	strh r3, [r6]
	ldrh r0, [r2]
	orrs r0, r1
	strh r0, [r2]
	mov r0, r8
	strh r0, [r6]
	ldrb r1, [r4]
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4]
	ldr r0, _08158AD4 @ =gUnk_03006CC0
	strb r3, [r0]
	movs r5, #0
	str r5, [sp]
	ldr r1, _08158AD8 @ =gUnk_03000020
	ldr r2, _08158ADC @ =0x05000003
	mov r0, sp
	bl CpuSet
	strh r5, [r6]
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
	mov r1, r8
	strh r1, [r6]
	ldr r1, _08158AE0 @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	adds r1, #2
	movs r0, #0xc1
	strh r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08158AB8: .4byte 0x04000208
_08158ABC: .4byte 0x04000200
_08158AC0: .4byte 0x0000FF3F
_08158AC4: .4byte 0x04000134
_08158AC8: .4byte 0x04000128
_08158ACC: .4byte 0x00001008
_08158AD0: .4byte 0x04000202
_08158AD4: .4byte gUnk_03006CC0
_08158AD8: .4byte gUnk_03000020
_08158ADC: .4byte 0x05000003
_08158AE0: .4byte 0x0400010C

	thumb_func_start sub_08158AE4
sub_08158AE4: @ 0x08158AE4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	ldr r1, _08158B1C @ =gUnk_03000030
	ldr r0, _08158B20 @ =0x04000120
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08158B24 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	subs r1, #2
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08158B28 @ =gUnk_03006CC0
	ldrb r1, [r0]
	adds r7, r0, #0
	cmp r1, #5
	bls _08158B10
	b _08158CCC
_08158B10:
	lsls r0, r1, #2
	ldr r1, _08158B2C @ =_08158B30
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08158B1C: .4byte gUnk_03000030
_08158B20: .4byte 0x04000120
_08158B24: .4byte 0x0400010E
_08158B28: .4byte gUnk_03006CC0
_08158B2C: .4byte _08158B30
_08158B30: @ jump table
	.4byte _08158B48 @ case 0
	.4byte _08158C0C @ case 1
	.4byte _08158C4C @ case 2
	.4byte _08158C8C @ case 3
	.4byte _08158CCC @ case 4
	.4byte _08158CCC @ case 5
_08158B48:
	ldr r0, _08158B9C @ =0x04000120
	mov r8, r0
	ldr r6, [r0]
	ldr r3, _08158BA0 @ =gUnk_03000020
	ldrb r1, [r3]
	lsls r2, r1, #4
	adds r0, r6, #0
	lsls r0, r2
	lsrs r0, r0, #0x10
	movs r2, #1
	mov ip, r2
	subs r1, r2, r1
	lsls r1, r1, #4
	lsls r6, r1
	adds r1, r6, #0
	lsrs r6, r1, #0x10
	ldrh r5, [r3, #0xa]
	adds r4, r3, #0
	cmp r5, #0
	bne _08158BD0
	ldrh r2, [r4, #6]
	adds r1, r0, #0
	cmp r1, r2
	bne _08158BCE
	ldrh r3, [r4, #2]
	cmp r3, #3
	bhi _08158BA4
	ldrh r0, [r4, #4]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _08158BD0
	mvns r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r6, r0
	bne _08158BD0
	adds r0, r3, #1
	strh r0, [r4, #2]
	b _08158BD0
	.align 2, 0
_08158B9C: .4byte 0x04000120
_08158BA0: .4byte gUnk_03000020
_08158BA4:
	strh r6, [r4, #0xa]
	ldr r0, _08158BC4 @ =0x00008002
	cmp r6, r0
	bne _08158BCC
	mov r0, ip
	strb r0, [r7]
	movs r0, #1
	bl sub_08158DBC
	ldr r1, _08158BC8 @ =gUnk_0300002C
	str r0, [r1]
	mov r1, r8
	str r0, [r1]
	strh r5, [r4, #2]
	b _08158CF0
	.align 2, 0
_08158BC4: .4byte 0x00008002
_08158BC8: .4byte gUnk_0300002C
_08158BCC:
	strh r5, [r4, #0xa]
_08158BCE:
	strh r5, [r4, #2]
_08158BD0:
	ldrh r0, [r4, #2]
	cmp r0, #3
	bhi _08158BE4
	lsls r0, r0, #1
	ldr r1, _08158BE0 @ =gAgbSramLibVer
	adds r0, r0, r1
	ldrh r0, [r0]
	b _08158BE8
	.align 2, 0
_08158BE0: .4byte gAgbSramLibVer
_08158BE4:
	movs r0, #0x80
	lsls r0, r0, #8
_08158BE8:
	strh r0, [r4, #4]
	mvns r0, r6
	strh r0, [r4, #6]
	ldr r3, _08158C08 @ =0x04000120
	ldrh r2, [r4, #4]
	ldrb r1, [r4]
	movs r0, #1
	subs r0, r0, r1
	lsls r0, r0, #4
	lsls r2, r0
	ldrh r0, [r4, #6]
	lsls r1, r1, #4
	lsls r0, r1
	adds r2, r2, r0
	str r2, [r3]
	b _08158CF0
	.align 2, 0
_08158C08: .4byte 0x04000120
_08158C0C:
	ldr r5, _08158C30 @ =gUnk_03006CC0
	ldrb r0, [r5]
	bl sub_08158D14
	cmp r0, #0
	beq _08158C3C
	ldr r1, _08158C34 @ =gUnk_03000020
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp]
	ldr r2, _08158C38 @ =0x05000003
	mov r0, sp
	bl CpuSet
	strb r4, [r5]
	b _08158C40
	.align 2, 0
_08158C30: .4byte gUnk_03006CC0
_08158C34: .4byte gUnk_03000020
_08158C38: .4byte 0x05000003
_08158C3C:
	movs r0, #2
	strb r0, [r5]
_08158C40:
	ldr r0, _08158C48 @ =gUnk_03006CC0
	ldrb r0, [r0]
	b _08158CAE
	.align 2, 0
_08158C48: .4byte gUnk_03006CC0
_08158C4C:
	ldr r5, _08158C70 @ =gUnk_03006CC0
	ldrb r0, [r5]
	bl sub_08158D14
	cmp r0, #0
	beq _08158C7C
	ldr r1, _08158C74 @ =gUnk_03000020
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r2, _08158C78 @ =0x05000003
	bl CpuSet
	strb r4, [r5]
	b _08158C80
	.align 2, 0
_08158C70: .4byte gUnk_03006CC0
_08158C74: .4byte gUnk_03000020
_08158C78: .4byte 0x05000003
_08158C7C:
	movs r0, #3
	strb r0, [r5]
_08158C80:
	ldr r0, _08158C88 @ =gUnk_03006CC0
	ldrb r0, [r0]
	b _08158CAE
	.align 2, 0
_08158C88: .4byte gUnk_03006CC0
_08158C8C:
	adds r5, r7, #0
	ldrb r0, [r5]
	bl sub_08158D14
	cmp r0, #0
	beq _08158CAC
	ldr r1, _08158CBC @ =gUnk_03000020
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #2]
	str r0, [sp, #8]
	add r0, sp, #8
	ldr r2, _08158CC0 @ =0x05000003
	bl CpuSet
	strb r4, [r5]
_08158CAC:
	ldrb r0, [r7]
_08158CAE:
	bl sub_08158DBC
	ldr r1, _08158CC4 @ =gUnk_0300002C
	str r0, [r1]
	ldr r1, _08158CC8 @ =0x04000120
	str r0, [r1]
	b _08158CF0
	.align 2, 0
_08158CBC: .4byte gUnk_03000020
_08158CC0: .4byte 0x05000003
_08158CC4: .4byte gUnk_0300002C
_08158CC8: .4byte 0x04000120
_08158CCC:
	ldr r3, _08158CE4 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08158CE8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08158CEC @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	b _08158D00
	.align 2, 0
_08158CE4: .4byte 0x04000208
_08158CE8: .4byte 0x04000200
_08158CEC: .4byte 0x0000FF7F
_08158CF0:
	ldr r2, _08158D0C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08158D10 @ =0x0400010E
	movs r0, #0xc1
	strh r0, [r1]
_08158D00:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08158D0C: .4byte 0x04000128
_08158D10: .4byte 0x0400010E

	thumb_func_start sub_08158D14
sub_08158D14: @ 0x08158D14
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r6, _08158D38 @ =gUnk_03000030
	ldr r0, [r6]
	lsrs r5, r0, #0x1c
	bl sub_08158D80
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08158D52
	cmp r4, #2
	beq _08158D5C
	cmp r4, #2
	bgt _08158D3C
	cmp r4, #1
	beq _08158D42
	b _08158D52
	.align 2, 0
_08158D38: .4byte gUnk_03000030
_08158D3C:
	cmp r4, #3
	beq _08158D74
	b _08158D52
_08158D42:
	ldr r1, _08158D58 @ =gUnk_03000034
	ldr r0, [r6]
	lsls r0, r0, #4
	lsrs r0, r0, #8
	ands r0, r4
	str r0, [r1]
	cmp r5, #1
	beq _08158D78
_08158D52:
	movs r0, #1
	b _08158D7A
	.align 2, 0
_08158D58: .4byte gUnk_03000034
_08158D5C:
	cmp r5, #2
	bne _08158D52
	ldr r0, _08158D70 @ =gUnk_03000034
	ldr r1, [r6]
	lsls r1, r1, #4
	lsrs r1, r1, #8
	ldr r0, [r0]
	cmp r0, r1
	beq _08158D78
	b _08158D52
	.align 2, 0
_08158D70: .4byte gUnk_03000034
_08158D74:
	cmp r5, #3
	bne _08158D52
_08158D78:
	movs r0, #0
_08158D7A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08158D80
sub_08158D80: @ 0x08158D80
	push {r4, r5, r6, lr}
	ldr r0, _08158DB0 @ =gUnk_03000030
	ldr r0, [r0]
	lsrs r4, r0, #4
	movs r5, #0xf
	ands r5, r0
	lsrs r3, r4, #0x18
	movs r0, #6
	movs r6, #0xf
_08158D92:
	subs r0, #1
	lsls r2, r0, #2
	adds r1, r4, #0
	lsrs r1, r2
	ands r1, r6
	eors r3, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0
	bne _08158D92
	cmp r3, r5
	beq _08158DB4
	movs r0, #1
	b _08158DB6
	.align 2, 0
_08158DB0: .4byte gUnk_03000030
_08158DB4:
	movs r0, #0
_08158DB6:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08158DBC
sub_08158DBC: @ 0x08158DBC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	subs r0, #1
	cmp r0, #4
	bhi _08158E9A
	lsls r0, r0, #2
	ldr r1, _08158DD4 @ =_08158DD8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08158DD4: .4byte _08158DD8
_08158DD8: @ jump table
	.4byte _08158DEC @ case 0
	.4byte _08158E10 @ case 1
	.4byte _08158E48 @ case 2
	.4byte _08158E78 @ case 3
	.4byte _08158E78 @ case 4
_08158DEC:
	ldr r4, _08158E0C @ =0x10000010
	movs r3, #1
	movs r2, #6
	movs r5, #0xf
_08158DF4:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08158DF4
	b _08158E94
	.align 2, 0
_08158E0C: .4byte 0x10000010
_08158E10:
	ldr r0, _08158E40 @ =gUnk_03000034
	ldr r0, [r0]
	ldr r1, _08158E44 @ =0x00FFFFFF
	ands r0, r1
	lsls r4, r0, #4
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r4, r0
	lsrs r0, r4, #0x1c
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #6
	movs r5, #0xf
_08158E2A:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08158E2A
	b _08158E94
	.align 2, 0
_08158E40: .4byte gUnk_03000034
_08158E44: .4byte 0x00FFFFFF
_08158E48:
	ldr r0, _08158E74 @ =gUnk_0300607C
	ldrb r0, [r0]
	lsls r4, r0, #4
	movs r0, #0x80
	lsls r0, r0, #0x17
	orrs r4, r0
	lsrs r0, r4, #0x1c
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r2, #6
	movs r5, #0xf
_08158E5E:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08158E5E
	b _08158E94
	.align 2, 0
_08158E74: .4byte gUnk_0300607C
_08158E78:
	ldr r4, _08158EA4 @ =0x10000010
	movs r3, #1
	movs r2, #6
	movs r5, #0xf
_08158E80:
	lsls r0, r2, #2
	adds r1, r4, #0
	lsrs r1, r0
	ands r1, r5
	eors r3, r1
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08158E80
_08158E94:
	movs r1, #0xf
	ands r1, r3
	orrs r1, r4
_08158E9A:
	adds r0, r1, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08158EA4: .4byte 0x10000010

	thumb_func_start Timer3Intr
Timer3Intr: @ 0x08158EA8
	push {r4, r5, lr}
	ldr r3, _08158EE8 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08158EEC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08158EF0 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r5, #1
	strh r5, [r3]
	strh r4, [r3]
	subs r2, #0xd8
	ldrh r1, [r2]
	ldr r0, _08158EF4 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	strh r5, [r3]
	ldr r0, _08158EF8 @ =0x0400010E
	strh r4, [r0]
	ldr r1, _08158EFC @ =0x0400010C
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08158F00 @ =gUnk_03006CC0
	movs r0, #5
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08158EE8: .4byte 0x04000208
_08158EEC: .4byte 0x04000200
_08158EF0: .4byte 0x0000FFBF
_08158EF4: .4byte 0x0000FF7F
_08158EF8: .4byte 0x0400010E
_08158EFC: .4byte 0x0400010C
_08158F00: .4byte gUnk_03006CC0

	thumb_func_start nullsub_147
nullsub_147: @ 0x08158F04
	bx lr
	.align 2, 0

	thumb_func_start nullsub_1
nullsub_1: @ 0x08158F08
	bx lr
	.align 2, 0

	thumb_func_start nullsub_2
nullsub_2: @ 0x08158F0C
	bx lr
	.align 2, 0

	thumb_func_start sub_08158F10
sub_08158F10: @ 0x08158F10
	movs r0, #1
	bx lr
