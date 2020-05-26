	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08030898
sub_08030898: @ 0x08030898
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r1, sp
	ldr r4, _0803097C @ =0x04000128
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r3, _08030980 @ =gUnk_03000490
	mov r0, sp
	ldrh r0, [r0]
	ldrh r1, [r3, #0x28]
	movs r5, #0
	strh r0, [r3, #0x28]
	adds r2, r3, #0
	adds r2, #0x26
	ldrb r0, [r2]
	adds r0, #1
	ldrb r1, [r2]
	strb r0, [r2]
	ldr r2, _08030984 @ =gUnk_03000478
	ldr r0, _08030988 @ =0x04000120
	ldr r1, [r0, #4]
	ldr r0, [r0]
	str r0, [r2]
	str r1, [r2, #4]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x30
	ands r0, r1
	lsrs r0, r0, #4
	ldrb r1, [r3]
	strb r0, [r3]
	ldrb r1, [r3, #3]
	movs r0, #0xbf
	ands r0, r1
	ldrb r1, [r3, #3]
	strb r0, [r3, #3]
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	ldrb r1, [r3, #3]
	orrs r0, r1
	ldrb r1, [r3, #3]
	strb r0, [r3, #3]
	ldr r1, _0803098C @ =gUnk_0300050C
	ldr r0, [r1]
	adds r6, r2, #0
	cmp r0, #2
	beq _08030908
	ldr r0, [r1]
	cmp r0, #0
	bne _0803099C
_08030908:
	ldrh r1, [r4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803091A
	ldr r1, _08030990 @ =0x0400012A
	ldr r2, _08030994 @ =0x00008F51
	adds r0, r2, #0
	strh r0, [r1]
_0803091A:
	ldrh r1, [r6, #2]
	ldr r0, _08030998 @ =0x0000FFFF
	cmp r1, r0
	bne _0803092C
	adds r0, r3, #0
	adds r0, #0x24
	ldrb r1, [r0]
	movs r1, #0
	strb r1, [r0]
_0803092C:
	adds r5, r3, #0
	adds r5, #0x24
	movs r7, #0x1e
	adds r7, r7, r3
	mov ip, r7
	adds r2, r6, #2
	movs r6, #0
	movs r4, #2
_0803093C:
	ldrh r1, [r2]
	mov r7, ip
	ldrh r0, [r7]
	cmp r1, r0
	beq _0803094A
	ldrb r0, [r5]
	strb r6, [r5]
_0803094A:
	ldrh r0, [r2]
	mov r7, ip
	ldrh r1, [r7]
	strh r0, [r7]
	movs r0, #2
	add ip, r0
	adds r2, #2
	subs r4, #1
	cmp r4, #0
	bge _0803093C
	adds r2, r3, #0
	adds r2, #0x24
	ldrb r0, [r2]
	adds r0, #1
	ldrb r1, [r2]
	strb r0, [r2]
	ldrb r0, [r2]
	cmp r0, #0x1d
	bhi _08030972
	b _08030B26
_08030972:
	ldrb r0, [r2]
	movs r0, #0x1e
	strb r0, [r2]
	b _08030B26
	.align 2, 0
_0803097C: .4byte 0x04000128
_08030980: .4byte gUnk_03000490
_08030984: .4byte gUnk_03000478
_08030988: .4byte 0x04000120
_0803098C: .4byte gUnk_0300050C
_08030990: .4byte 0x0400012A
_08030994: .4byte 0x00008F51
_08030998: .4byte 0x0000FFFF
_0803099C:
	ldrh r0, [r6]
	adds r1, r0, #0
	ldr r0, _080309B4 @ =0x0000E4E4
	cmp r1, r0
	bne _080309BC
	ldr r0, _080309B8 @ =0x0400012A
	strh r1, [r0]
	ldrb r0, [r3, #2]
	movs r0, #3
	strb r0, [r3, #2]
	b _08030B26
	.align 2, 0
_080309B4: .4byte 0x0000E4E4
_080309B8: .4byte 0x0400012A
_080309BC:
	mov r0, sp
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080309D6
	ldrh r0, [r3, #0xa]
	cmp r0, #0x13
	bls _08030A82
	ldrb r0, [r3, #2]
	movs r0, #2
	strb r0, [r3, #2]
	b _08030A82
_080309D6:
	ldrh r0, [r3, #8]
	adds r0, #1
	ldrh r1, [r3, #8]
	strh r0, [r3, #8]
	ldrh r1, [r3, #8]
	ldr r4, _08030A34 @ =0x00001FFF
	adds r0, r4, #0
	ands r0, r1
	ldrh r1, [r3, #8]
	strh r0, [r3, #8]
	ldrh r0, [r3, #8]
	cmp r0, #0xff
	bhi _080309F8
	ldrh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r3, #8]
_080309F8:
	ldrh r0, [r6]
	ldrh r2, [r3, #8]
	adds r1, r4, #0
	ands r1, r0
	cmp r2, r1
	bne _08030A4C
	ldrh r0, [r3, #0xa]
	cmp r0, #3
	bls _08030A42
	ldrh r2, [r6]
	movs r4, #0xe0
	lsls r4, r4, #8
	ldrh r1, [r3, #0xc]
	adds r0, r4, #0
	ands r0, r2
	cmp r1, r0
	beq _08030A38
	ldrh r1, [r6]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08030A50
	ldrb r0, [r3, #3]
	movs r1, #1
	orrs r0, r1
	ldrb r1, [r3, #3]
	movs r1, #0
	orrs r0, r1
	strb r0, [r3, #3]
	b _08030A4C
	.align 2, 0
_08030A34: .4byte 0x00001FFF
_08030A38:
	ldrb r1, [r3, #3]
	movs r0, #0xfe
	ands r0, r1
	ldrb r1, [r3, #3]
	strb r0, [r3, #3]
_08030A42:
	ldrh r0, [r3, #0xa]
	adds r0, #1
	ldrh r1, [r3, #0xa]
	strh r0, [r3, #0xa]
	b _08030A50
_08030A4C:
	ldrh r0, [r3, #0xa]
	strh r5, [r3, #0xa]
_08030A50:
	ldrh r0, [r6]
	ldrh r1, [r3, #8]
	strh r0, [r3, #8]
	ldrh r0, [r3, #0xa]
	cmp r0, #0x1e
	bls _08030A74
	ldrb r0, [r3, #2]
	movs r0, #2
	strb r0, [r3, #2]
	ldr r1, _08030A6C @ =0x0400012A
	ldr r2, _08030A70 @ =0x000070AE
	adds r0, r2, #0
	b _08030A80
	.align 2, 0
_08030A6C: .4byte 0x0400012A
_08030A70: .4byte 0x000070AE
_08030A74:
	ldrb r0, [r3, #2]
	movs r0, #0
	strb r0, [r3, #2]
	ldr r1, _08030AE8 @ =0x0400012A
	ldr r7, _08030AEC @ =0x00008F51
	adds r0, r7, #0
_08030A80:
	strh r0, [r1]
_08030A82:
	ldrb r0, [r3, #1]
	movs r1, #0
	movs r0, #1
	strb r0, [r3, #1]
	movs r5, #1
	ldrh r0, [r3, #0xe]
	mov r8, r0
	ldrh r0, [r3, #0xe]
	strh r1, [r3, #0xe]
	movs r4, #1
	ldr r0, _08030AF0 @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ldr r1, _08030AF4 @ =0x000070AE
	mov sl, r1
	ldr r7, _08030AF8 @ =gUnk_03000478
	adds r6, r7, #2
	ldr r0, _08030AEC @ =0x00008F51
	mov sb, r0
_08030AA8:
	ldrh r0, [r6]
	cmp r0, ip
	bne _08030ABA
	movs r0, #1
	lsls r0, r4
	ldrh r1, [r2, #0xe]
	orrs r0, r1
	ldrh r1, [r2, #0xe]
	strh r0, [r2, #0xe]
_08030ABA:
	mov r0, r8
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08030B1A
	ldrh r0, [r6]
	cmp r0, sl
	bne _08030B02
	ldrh r0, [r7]
	cmp r0, ip
	bne _08030AD8
	movs r5, #0
	ldrb r0, [r2, #2]
	strb r1, [r2, #2]
_08030AD8:
	cmp r5, #0
	beq _08030AFC
	ldrb r0, [r2, #1]
	adds r0, #1
	ldrb r1, [r2, #1]
	strb r0, [r2, #1]
	b _08030B1C
	.align 2, 0
_08030AE8: .4byte 0x0400012A
_08030AEC: .4byte 0x00008F51
_08030AF0: .4byte 0x0000FFFF
_08030AF4: .4byte 0x000070AE
_08030AF8: .4byte gUnk_03000478
_08030AFC:
	ldrb r0, [r2, #1]
	strb r1, [r2, #1]
	b _08030B1C
_08030B02:
	ldrh r0, [r6]
	cmp r0, sb
	bne _08030B1A
	ldrb r0, [r2, #2]
	strb r1, [r2, #2]
	ldrh r0, [r7]
	cmp r0, ip
	bne _08030B1C
	movs r5, #0
	ldrh r0, [r3, #0xa]
	strh r5, [r3, #0xa]
	b _08030B1C
_08030B1A:
	movs r5, #0
_08030B1C:
	adds r7, #2
	adds r6, #2
	adds r4, #1
	cmp r4, #3
	ble _08030AA8
_08030B26:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08030B38
sub_08030B38: @ 0x08030B38
	push {r4, lr}
	ldr r4, _08030B88 @ =0x04000208
	movs r3, #0
	strh r3, [r4]
	ldr r1, _08030B8C @ =gUnk_0300050C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r2, _08030B90 @ =0x04000128
	ldrh r1, [r2]
	ldr r0, _08030B94 @ =0x0000BFFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _08030B98 @ =0x0400012A
	ldr r2, _08030B9C @ =0x00008F52
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08030BA0 @ =gIntrTable
	ldr r0, _08030BA4 @ =gUnk_03000470
	ldr r0, [r0]
	str r0, [r1, #0x1c]
	ldr r0, _08030BA8 @ =gUnk_03000484
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, _08030BAC @ =gUnk_03000490
	ldrb r1, [r0, #2]
	strb r3, [r0, #2]
	ldrb r1, [r0, #2]
	ldrb r2, [r0, #1]
	strb r1, [r0, #1]
	ldr r2, _08030BB0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08030BB4 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08030B88: .4byte 0x04000208
_08030B8C: .4byte gUnk_0300050C
_08030B90: .4byte 0x04000128
_08030B94: .4byte 0x0000BFFF
_08030B98: .4byte 0x0400012A
_08030B9C: .4byte 0x00008F52
_08030BA0: .4byte gIntrTable
_08030BA4: .4byte gUnk_03000470
_08030BA8: .4byte gUnk_03000484
_08030BAC: .4byte gUnk_03000490
_08030BB0: .4byte 0x04000200
_08030BB4: .4byte 0x0000FFBF

	thumb_func_start sub_08030BB8
sub_08030BB8: @ 0x08030BB8
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	sub sp, #4
	adds r6, r0, #0
	mov sb, r1
	subs r4, r1, r6
	adds r4, #0x10
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0
	mov r8, r1
	strh r1, [r0]
	ldr r5, _08030C10 @ =gMultiBootParam
	ldr r2, _08030C14 @ =0x01000026
	adds r1, r5, #0
	bl CpuSet
	ldr r1, _08030C18 @ =gUnk_03000490
	adds r0, r6, #0
	adds r0, #0xc0
	str r0, [r1, #0x10]
	mov r0, sb
	str r0, [r1, #0x14]
	subs r4, #0xc0
	str r4, [r1, #0x18]
	str r6, [r5, #0x28]
	adds r0, r5, #0
	adds r0, #0x4b
	mov r1, r8
	strb r1, [r0]
	adds r0, r5, #0
	bl MultiBootInit
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08030C10: .4byte gMultiBootParam
_08030C14: .4byte 0x01000026
_08030C18: .4byte gUnk_03000490

	thumb_func_start sub_08030C1C
sub_08030C1C: @ 0x08030C1C
	push {lr}
	ldr r2, _08030C3C @ =gUnk_03000490
	adds r1, r2, #0
	adds r1, #0x2b
	ldrb r0, [r1]
	cmp r0, #0
	bne _08030C36
	ldrb r0, [r2, #2]
	cmp r0, #2
	bne _08030C36
	ldrb r0, [r1]
	movs r0, #1
	strb r0, [r1]
_08030C36:
	pop {r0}
	bx r0
	.align 2, 0
_08030C3C: .4byte gUnk_03000490

	thumb_func_start sub_08030C40
sub_08030C40: @ 0x08030C40
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r4, _08030C70 @ =gUnk_0300050C
	ldr r1, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08030C8E
	ldr r2, _08030C74 @ =gUnk_03000490
	ldrb r0, [r2, #2]
	cmp r0, #3
	beq _08030C8E
	lsls r0, r3, #0xd
	ldrh r1, [r2, #0xc]
	strh r0, [r2, #0xc]
	ldr r1, [r4]
	cmp r1, #1
	beq _08030C84
	cmp r1, #1
	bgt _08030C78
	cmp r1, #0
	beq _08030C7E
	b _08030C8E
	.align 2, 0
_08030C70: .4byte gUnk_0300050C
_08030C74: .4byte gUnk_03000490
_08030C78:
	cmp r1, #2
	beq _08030C8A
	b _08030C8E
_08030C7E:
	bl sub_080302EC
	b _08030C8E
_08030C84:
	bl sub_0803040C
	b _08030C8E
_08030C8A:
	bl sub_080305F8
_08030C8E:
	pop {r4}
	pop {r0}
	bx r0
