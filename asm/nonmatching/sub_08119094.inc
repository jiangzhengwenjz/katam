
	.syntax unified
	.text

	push {r4, r5, r6, r7, lr}
	ldr r2, _081190EC @ =gCurLevelInfo
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _081190F0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r2, [r0]
	movs r0, #1
	movs r1, #9
	bl sub_08002888
	adds r6, r0, #0
	ldr r1, [r6]
	movs r0, #0xf0
	lsls r0, r0, #0xc
	ands r0, r1
	lsrs r5, r0, #0x10
	cmp r5, #0
	bne _081190CA
	movs r0, #0x80
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r6]
_081190CA:
	ldr r0, [r6]
	adds r4, r0, #0
	cmp r4, #0
	bge _08119170
	movs r2, #1
	lsls r2, r5
	orrs r2, r4
	str r2, [r6]
	ldr r1, _081190F4 @ =0x00000FFF
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _081190F8
	movs r5, #0xc
	adds r4, r2, #0
	b _08119170
	.align 2, 0
_081190EC: .4byte gCurLevelInfo
_081190F0: .4byte 0x0000065E
_081190F4: .4byte 0x00000FFF
_081190F8:
	ldr r2, _08119154 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08119158 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0811915C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r3, r0, #0x10
	movs r1, #0xf
	lsls r0, r5, #0x10
	lsrs r2, r0, #0x10
	ands r3, r1
	ldr r0, _08119160 @ =0x0000FFFF
	cmp r3, r0
	beq _0811916C
	ldr r4, [r6]
	movs r7, #1
	mov ip, r0
_0811911C:
	subs r5, r3, #1
_0811911E:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	beq _0811914E
	adds r0, r7, #0
	lsls r0, r2
	ands r0, r4
	cmp r0, #0
	beq _0811914A
	movs r3, #1
	adds r1, r4, #0
_08119136:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xc
	beq _0811914E
	adds r0, r3, #0
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08119136
_0811914A:
	cmp r2, #0xc
	bne _08119164
_0811914E:
	movs r2, #0
	b _0811911E
	.align 2, 0
_08119154: .4byte gRngVal
_08119158: .4byte 0x00196225
_0811915C: .4byte 0x3C6EF35F
_08119160: .4byte 0x0000FFFF
_08119164:
	lsls r0, r5, #0x10
	lsrs r3, r0, #0x10
	cmp r3, ip
	bne _0811911C
_0811916C:
	adds r5, r2, #0
	ldr r4, [r6]
_08119170:
	ldr r1, _08119180 @ =0x7FF0FFFF
	ands r1, r4
	lsls r0, r5, #0x10
	orrs r0, r1
	str r0, [r6]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08119180: .4byte 0x7FF0FFFF

	.syntax divided
