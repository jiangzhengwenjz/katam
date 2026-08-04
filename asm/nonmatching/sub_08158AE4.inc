	.syntax unified
	.text

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

	.syntax divided
