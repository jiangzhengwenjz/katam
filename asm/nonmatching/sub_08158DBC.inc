	.syntax unified
	.text

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

	.syntax divided
