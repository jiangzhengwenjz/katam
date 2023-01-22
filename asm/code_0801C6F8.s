	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0801DA58
sub_0801DA58: @ 0x0801DA58
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	ldr r0, _0801DAA8 @ =sub_0801DFF4
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _0801DAAC @ =nullsub_28
	str r1, [sp]
	movs r1, #0xe4
	movs r3, #4
	bl TaskCreate
	adds r4, r0, #0
	ldr r1, _0801DAB0 @ =0x00007FFF
	add r0, sp, #4
	strh r1, [r0]
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	ldr r1, _0801DAB4 @ =gDispCnt
	movs r0, #0xca
	lsls r0, r0, #5
	strh r0, [r1]
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801DAB8
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0801DAC0
	.align 2, 0
_0801DAA8: .4byte sub_0801DFF4
_0801DAAC: .4byte nullsub_28
_0801DAB0: .4byte 0x00007FFF
_0801DAB4: .4byte gDispCnt
_0801DAB8:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0801DAC0:
	adds r1, r7, #0
	adds r1, #0xd8
	ldr r0, _0801DC24 @ =sub_0801E030
	str r0, [r1]
	movs r0, #0xdc
	adds r0, r0, r7
	mov r8, r0
	movs r4, #0
	strh r5, [r0]
	adds r0, r7, #0
	adds r0, #0xe2
	strh r4, [r0]
	subs r0, #0x12
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	ldr r6, _0801DC28 @ =0x06012000
	subs r1, #0x58
	str r6, [r1]
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r1, #0x14]
	ldr r0, _0801DC2C @ =0x000002B9
	strh r0, [r1, #0xc]
	movs r2, #0
	strb r2, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	mov sl, r0
	mov r2, sl
	strb r2, [r1, #0x1c]
	movs r0, #0
	strb r0, [r1, #0x1f]
	ldr r5, _0801DC30 @ =0x0000FFC0
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	movs r2, #0x80
	lsls r2, r2, #0xb
	mov sb, r2
	str r2, [r1, #8]
	adds r0, r1, #0
	bl sub_08155128
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r6, r6, r0
	adds r1, r7, #0
	adds r1, #0xa8
	str r6, [r1]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1, #0x14]
	ldr r2, _0801DC2C @ =0x000002B9
	strh r2, [r1, #0xc]
	movs r0, #0
	strb r0, [r1, #0x1a]
	strh r4, [r1, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r2, sl
	strb r2, [r1, #0x1c]
	movs r0, #0
	strb r0, [r1, #0x1f]
	strh r5, [r1, #0x10]
	strh r5, [r1, #0x12]
	mov r2, sb
	str r2, [r1, #8]
	adds r0, r1, #0
	bl sub_08155128
	ldr r5, _0801DC34 @ =gBgScrollRegs
	strh r4, [r5, #0xc]
	strh r4, [r5, #0xe]
	ldr r6, _0801DC38 @ =gBgCntRegs
	ldr r0, _0801DC3C @ =0x00001E0A
	strh r0, [r6, #6]
	ldr r0, _0801DC40 @ =0x06008000
	str r0, [r7, #4]
	strh r4, [r7, #0xa]
	ldr r0, _0801DC44 @ =0x0600F000
	str r0, [r7, #0xc]
	strh r4, [r7, #0x18]
	strh r4, [r7, #0x1a]
	ldr r0, _0801DC48 @ =0x00000307
	strh r0, [r7, #0x1c]
	strh r4, [r7, #0x1e]
	strh r4, [r7, #0x20]
	strh r4, [r7, #0x22]
	strh r4, [r7, #0x24]
	movs r0, #0x1e
	strh r0, [r7, #0x26]
	movs r0, #0x14
	strh r0, [r7, #0x28]
	adds r0, r7, #0
	adds r0, #0x2a
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	movs r0, #0x1b
	strh r0, [r7, #0x2e]
	ldr r1, _0801DC4C @ =gUnk_082DE694
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x30]
	ldrh r0, [r2]
	lsls r0, r0, #2
	adds r1, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0x32]
	ldr r0, _0801DC50 @ =0x00007FFF
	strh r0, [r7, #0x34]
	strh r0, [r7, #0x36]
	ldr r0, _0801DC54 @ =gUnk_082D7850
	ldr r1, _0801DC58 @ =0x00000C1C
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #8]
	ldr r1, [r7, #4]
	bl LZ77UnCompVram
	adds r0, r7, #0
	bl sub_08153060
	ldr r1, _0801DC5C @ =gBackgrounds
	ldr r0, _0801DC60 @ =gRoomProps
	ldr r2, _0801DC64 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	strh r4, [r5]
	strh r4, [r5, #2]
	ldr r0, _0801DC68 @ =0x00001F03
	strh r0, [r6]
	ldr r0, [r7, #8]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r4, [r7, #0x18]
	ldr r6, _0801DC6C @ =0x0600F800
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r4, r4, r0
	movs r5, #0
_0801DBF8:
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #0x1e
	bl CpuSet
	ldrh r0, [r7]
	lsls r0, r0, #1
	adds r4, r4, r0
	adds r6, #0x40
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0x13
	bls _0801DBF8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DC24: .4byte sub_0801E030
_0801DC28: .4byte 0x06012000
_0801DC2C: .4byte 0x000002B9
_0801DC30: .4byte 0x0000FFC0
_0801DC34: .4byte gBgScrollRegs
_0801DC38: .4byte gBgCntRegs
_0801DC3C: .4byte 0x00001E0A
_0801DC40: .4byte 0x06008000
_0801DC44: .4byte 0x0600F000
_0801DC48: .4byte 0x00000307
_0801DC4C: .4byte gUnk_082DE694
_0801DC50: .4byte 0x00007FFF
_0801DC54: .4byte gUnk_082D7850
_0801DC58: .4byte 0x00000C1C
_0801DC5C: .4byte gBackgrounds
_0801DC60: .4byte gRoomProps
_0801DC64: .4byte 0x00007D46
_0801DC68: .4byte 0x00001F03
_0801DC6C: .4byte 0x0600F800

	thumb_func_start sub_0801DC70
sub_0801DC70: @ 0x0801DC70
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r4, [sp, #0x18]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r2, r2, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov ip, r4
	ldr r4, _0801DD14 @ =gUnk_082D7850
	ldr r5, _0801DD18 @ =0x00000C1C
	adds r4, r4, r5
	ldr r7, [r4]
	ldrh r5, [r7]
	ldr r4, _0801DD1C @ =gUnk_082DE690
	mov r8, r4
	lsrs r2, r2, #0xe
	adds r4, #2
	adds r4, r2, r4
	ldrh r6, [r4]
	subs r4, r6, #1
	muls r4, r5, r4
	lsls r4, r4, #1
	ldr r5, [r7, #0x18]
	adds r5, r5, r4
	add r2, r8
	ldrh r2, [r2]
	lsls r4, r2, #1
	adds r5, r5, r4
	subs r5, #2
	mov r8, r5
	adds r5, r3, #0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r1, #1
	subs r6, r6, r1
	add r6, ip
	subs r2, #1
	subs r2, r2, r0
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	lsls r6, r6, #0x10
	lsrs r0, r6, #0x10
	cmp r0, #0x14
	bhi _0801DD08
	movs r3, #0
	asrs r6, r6, #0xb
_0801DCD0:
	lsls r4, r2, #0x10
	lsrs r0, r4, #0x10
	lsls r3, r3, #0x10
	cmp r0, #0x1e
	bhi _0801DCF6
	asrs r2, r4, #0x10
	adds r2, r6, r2
	lsls r2, r2, #1
	adds r2, r2, r5
	ldrh r0, [r7]
	mov r1, ip
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r1, r3, #0x10
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2]
_0801DCF6:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r3, r2
	adds r0, r4, r2
	lsrs r2, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0801DCD0
_0801DD08:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DD14: .4byte gUnk_082D7850
_0801DD18: .4byte 0x00000C1C
_0801DD1C: .4byte gUnk_082DE690

	thumb_func_start sub_0801DD20
sub_0801DD20: @ 0x0801DD20
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r6, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	mov sb, r3
	lsls r6, r6, #0x10
	lsrs r6, r6, #0x10
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	ldr r2, _0801DDF0 @ =gUnk_082D7850
	ldr r1, _0801DDF4 @ =gUnk_082DE698
	lsls r0, r5, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r2, [sp, #0x20]
	lsls r1, r2, #5
	ldr r2, _0801DDF8 @ =0x06008000
	adds r1, r1, r2
	bl LZ77UnCompVram
	mov r0, r8
	ldr r0, [r0, #0x18]
	mov ip, r0
	ldr r1, _0801DDFC @ =gUnk_082DE690
	lsls r5, r5, #2
	adds r0, r1, #2
	adds r0, r5, r0
	mvns r4, r4
	ldrh r0, [r0]
	adds r4, r4, r0
	lsls r4, r4, #0x10
	lsrs r0, r4, #0x10
	movs r3, #0
	adds r5, r5, r1
	mvns r6, r6
	ldrh r5, [r5]
	adds r6, r6, r5
	lsls r6, r6, #0x10
	mov sl, r6
_0801DD84:
	mov r1, sl
	lsrs r2, r1, #0x10
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	mov r8, r0
	lsls r6, r3, #0x10
	cmp r1, #0x14
	bhi _0801DDCE
	movs r5, #0
	asrs r7, r0, #0xb
	asrs r4, r6, #0xe
_0801DD9A:
	lsls r3, r2, #0x10
	lsrs r0, r3, #0x10
	lsls r2, r5, #0x10
	cmp r0, #0x1e
	bhi _0801DDBC
	asrs r0, r3, #0x10
	adds r0, r7, r0
	lsls r0, r0, #1
	add r0, sb
	asrs r1, r2, #0x10
	adds r1, r4, r1
	lsls r1, r1, #1
	add r1, ip
	ldrh r1, [r1]
	ldr r5, [sp, #0x20]
	adds r1, r1, r5
	strh r1, [r0]
_0801DDBC:
	movs r0, #0x80
	lsls r0, r0, #9
	adds r1, r2, r0
	adds r0, r3, r0
	lsrs r2, r0, #0x10
	lsrs r5, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #3
	ble _0801DD9A
_0801DDCE:
	movs r2, #0x80
	lsls r2, r2, #9
	adds r1, r6, r2
	adds r0, r2, #0
	add r0, r8
	lsrs r0, r0, #0x10
	lsrs r3, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #4
	ble _0801DD84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DDF0: .4byte gUnk_082D7850
_0801DDF4: .4byte gUnk_082DE698
_0801DDF8: .4byte 0x06008000
_0801DDFC: .4byte gUnk_082DE690

	thumb_func_start sub_0801DE00
sub_0801DE00: @ 0x0801DE00
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	movs r0, #0xc0
	lsls r0, r0, #2
	mov r8, r0
	ldrh r0, [r5, #0x24]
	lsls r0, r0, #5
	ldrh r1, [r5, #0x22]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [r5, #0xc]
	adds r1, r1, r0
	mov sl, r1
	ldrh r1, [r5, #0x30]
	lsrs r1, r1, #3
	ldrh r0, [r5, #0x32]
	lsrs r0, r0, #3
	movs r4, #0
	ldr r2, _0801DEBC @ =gUnk_082DE690
	mov sb, r2
	lsls r7, r1, #0x10
	lsls r6, r0, #0x10
_0801DE36:
	adds r0, r5, #0
	adds r0, #0xdc
	ldrh r0, [r0]
	cmp r4, r0
	beq _0801DE8A
	ldr r1, _0801DEC0 @ =gUnk_082DE69A
	lsls r0, r4, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r0, #2
	movs r2, #0
	bl sub_08002888
	ldr r0, [r0]
	cmp r0, #0
	bne _0801DEA0
	lsls r0, r4, #2
	mov r2, sb
	adds r1, r0, r2
	ldr r2, _0801DEC4 @ =gUnk_082DE692
	adds r0, r0, r2
	ldrh r3, [r0]
	movs r0, #0
	ldrsh r2, [r1, r0]
	adds r0, r2, #3
	asrs r1, r7, #0x10
	cmp r0, r1
	ble _0801DEA0
	adds r1, #0x1e
	subs r0, r2, #1
	cmp r1, r0
	ble _0801DEA0
	lsls r0, r3, #0x10
	asrs r2, r0, #0x10
	adds r0, r2, #4
	asrs r1, r6, #0x10
	cmp r0, r1
	ble _0801DEA0
	adds r1, #0x14
	subs r0, r2, #1
	cmp r1, r0
	ble _0801DEA0
_0801DE8A:
	movs r1, #0x14
	rsbs r1, r1, #0
	add r8, r1
	mov r2, r8
	str r2, [sp]
	asrs r0, r7, #0x10
	asrs r1, r6, #0x10
	adds r2, r4, #0
	mov r3, sl
	bl sub_0801DD20
_0801DEA0:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0801DE36
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DEBC: .4byte gUnk_082DE690
_0801DEC0: .4byte gUnk_082DE69A
_0801DEC4: .4byte gUnk_082DE692

	thumb_func_start sub_0801DEC8
sub_0801DEC8: @ 0x0801DEC8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xd0
	ldr r0, [r5]
	cmp r0, #0
	beq _0801DEDE
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_0815604C
_0801DEDE:
	adds r0, r4, #0
	adds r0, #0x80
	bl sub_08155128
	cmp r0, #0
	bne _0801DEF8
	str r0, [r5]
	adds r0, r4, #0
	adds r0, #0x90
	ldr r1, _0801DF2C @ =0x0000FFC0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_0801DEF8:
	adds r6, r4, #0
	adds r6, #0xd4
	ldr r0, [r6]
	adds r5, r4, #0
	adds r5, #0xa8
	cmp r0, #0
	beq _0801DF0C
	adds r0, r5, #0
	bl sub_0815604C
_0801DF0C:
	adds r0, r5, #0
	bl sub_08155128
	cmp r0, #0
	bne _0801DF24
	str r0, [r6]
	adds r0, r4, #0
	adds r0, #0xb8
	ldr r1, _0801DF2C @ =0x0000FFC0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_0801DF24:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801DF2C: .4byte 0x0000FFC0

	thumb_func_start sub_0801DF30
sub_0801DF30: @ 0x0801DF30
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	adds r4, r7, #0
	adds r4, #0xe2
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, #0x80
	adds r0, r7, r0
	adds r2, r7, #0
	adds r2, #0x88
	ldr r1, [r2]
	ldr r3, _0801DFD4 @ =0xFFFBFFFF
	ands r1, r3
	str r1, [r2]
	adds r2, #0x28
	ldr r1, [r2]
	ands r1, r3
	str r1, [r2]
	ldrh r1, [r4]
	lsls r1, r1, #2
	adds r2, #0x20
	adds r2, r2, r1
	movs r1, #1
	str r1, [r2]
	movs r6, #0
	strb r6, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	ldr r3, _0801DFD8 @ =gUnk_082DE690
	adds r5, r7, #0
	adds r5, #0xdc
	ldrh r2, [r5]
	lsls r2, r2, #2
	adds r1, r2, r3
	ldrh r1, [r1]
	lsls r1, r1, #3
	ldr r4, _0801DFDC @ =gUnk_082DE694
	adds r2, r2, r4
	ldrh r2, [r2]
	subs r1, r1, r2
	adds r1, #8
	strh r1, [r0, #0x10]
	ldrh r1, [r5]
	lsls r1, r1, #2
	adds r3, #2
	adds r3, r1, r3
	ldrh r2, [r3]
	lsls r2, r2, #3
	adds r4, #2
	adds r1, r1, r4
	ldrh r1, [r1]
	subs r2, r2, r1
	adds r3, r7, #0
	adds r3, #0xe0
	ldr r4, _0801DFE0 @ =0x0000FFFF
	adds r1, r4, #0
	ldrh r3, [r3]
	adds r1, r1, r3
	lsls r1, r1, #3
	adds r2, r2, r1
	strh r2, [r0, #0x12]
	bl sub_08155128
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
	adds r0, r7, #0
	adds r0, #0xde
	strh r6, [r0]
	adds r1, r7, #0
	adds r1, #0xd8
	ldr r0, _0801DFE4 @ =sub_0801E0D8
	str r0, [r1]
	adds r0, r7, #0
	bl sub_0801DEC8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0801DFD4: .4byte 0xFFFBFFFF
_0801DFD8: .4byte gUnk_082DE690
_0801DFDC: .4byte gUnk_082DE694
_0801DFE0: .4byte 0x0000FFFF
_0801DFE4: .4byte sub_0801E0D8

	thumb_func_start sub_0801DFE8
sub_0801DFE8: @ 0x0801DFE8
	push {lr}
	movs r0, #0
	bl sub_0801DA58
	pop {r0}
	bx r0

	thumb_func_start sub_0801DFF4
sub_0801DFF4: @ 0x0801DFF4
	push {lr}
	ldr r0, _0801E010 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0801E014
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0801E01C
	.align 2, 0
_0801E010: .4byte gCurTask
_0801E014:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0801E01C:
	adds r0, r2, #0
	adds r0, #0xd8
	ldr r1, [r0]
	adds r0, r2, #0
	bl _call_via_r1
	pop {r0}
	bx r0

	thumb_func_start nullsub_28
nullsub_28: @ 0x0801E02C
	bx lr
	.align 2, 0

	thumb_func_start sub_0801E030
sub_0801E030: @ 0x0801E030
	adds r0, #0xd8
	ldr r1, _0801E038 @ =sub_0801E03C
	str r1, [r0]
	bx lr
	.align 2, 0
_0801E038: .4byte sub_0801E03C

	thumb_func_start sub_0801E03C
sub_0801E03C: @ 0x0801E03C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r0, _0801E098 @ =gUnk_082D7850
	ldr r1, _0801E09C @ =0x00000C1C
	adds r0, r0, r1
	ldr r6, [r0]
	ldr r1, _0801E0A0 @ =gBackgrounds
	ldr r0, _0801E0A4 @ =gRoomProps
	ldr r2, _0801E0A8 @ =0x00007D46
	adds r0, r0, r2
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r1, r5, #0
	adds r1, #0xde
	movs r0, #0
	strh r0, [r1]
	adds r0, r5, #0
	bl sub_0801DE00
	ldr r0, [r6, #0x10]
	movs r1, #0
	movs r2, #0x60
	bl sub_0803D21C
	ldr r0, [r4, #0x10]
	ldrb r1, [r4, #0x14]
	ldrh r2, [r4, #0x16]
	bl sub_0803D21C
	movs r0, #7
	bl sub_0803C95C
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	adds r5, #0xd8
	ldr r0, _0801E0AC @ =sub_0801E0B0
	str r0, [r5]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0801E098: .4byte gUnk_082D7850
_0801E09C: .4byte 0x00000C1C
_0801E0A0: .4byte gBackgrounds
_0801E0A4: .4byte gRoomProps
_0801E0A8: .4byte 0x00007D46
_0801E0AC: .4byte sub_0801E0B0

	thumb_func_start sub_0801E0B0
sub_0801E0B0: @ 0x0801E0B0
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0801E0CE
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E0D4 @ =sub_0801E1A0
	str r0, [r1]
_0801E0CE:
	pop {r0}
	bx r0
	.align 2, 0
_0801E0D4: .4byte sub_0801E1A0

	thumb_func_start sub_0801E0D8
sub_0801E0D8: @ 0x0801E0D8
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _0801E11E
	ldrh r0, [r5, #0x30]
	lsrs r0, r0, #3
	ldrh r1, [r5, #0x32]
	lsrs r1, r1, #3
	subs r2, #2
	ldrh r2, [r2]
	ldrh r4, [r5, #0x24]
	lsls r4, r4, #5
	ldrh r3, [r5, #0x22]
	adds r4, r4, r3
	lsls r4, r4, #1
	ldr r3, [r5, #0xc]
	adds r3, r3, r4
	adds r4, r5, #0
	adds r4, #0xe0
	ldrh r4, [r4]
	str r4, [sp]
	bl sub_0801DC70
	adds r1, r5, #0
	adds r1, #0xd8
	ldr r0, _0801E12C @ =sub_0801E130
	str r0, [r1]
_0801E11E:
	adds r0, r5, #0
	bl sub_0801DEC8
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0801E12C: .4byte sub_0801E130

	thumb_func_start sub_0801E130
sub_0801E130: @ 0x0801E130
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #6
	bls _0801E14E
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E158 @ =sub_0801E15C
	str r0, [r1]
_0801E14E:
	adds r0, r3, #0
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E158: .4byte sub_0801E15C

	thumb_func_start sub_0801E15C
sub_0801E15C: @ 0x0801E15C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xe2
	ldrh r0, [r2]
	movs r1, #1
	eors r0, r1
	strh r0, [r2]
	adds r1, r3, #0
	adds r1, #0xe0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #5
	beq _0801E188
	subs r1, #8
	ldr r0, _0801E184 @ =sub_0801DF30
	b _0801E18E
	.align 2, 0
_0801E184: .4byte sub_0801DF30
_0801E188:
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E19C @ =sub_0801E1B4
_0801E18E:
	str r0, [r1]
	adds r0, r3, #0
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E19C: .4byte sub_0801E1B4

	thumb_func_start sub_0801E1A0
sub_0801E1A0: @ 0x0801E1A0
	adds r2, r0, #0
	adds r2, #0xde
	movs r1, #0
	strh r1, [r2]
	adds r0, #0xd8
	ldr r1, _0801E1B0 @ =sub_0801E1D0
	str r1, [r0]
	bx lr
	.align 2, 0
_0801E1B0: .4byte sub_0801E1D0

	thumb_func_start sub_0801E1B4
sub_0801E1B4: @ 0x0801E1B4
	push {lr}
	adds r2, r0, #0
	adds r2, #0xde
	movs r1, #0
	strh r1, [r2]
	subs r2, #6
	ldr r1, _0801E1CC @ =sub_0801E1F8
	str r1, [r2]
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E1CC: .4byte sub_0801E1F8

	thumb_func_start sub_0801E1D0
sub_0801E1D0: @ 0x0801E1D0
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801E1EE
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E1F4 @ =sub_0801E224
	str r0, [r1]
_0801E1EE:
	pop {r0}
	bx r0
	.align 2, 0
_0801E1F4: .4byte sub_0801E224

	thumb_func_start sub_0801E1F8
sub_0801E1F8: @ 0x0801E1F8
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x3c
	bls _0801E216
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E220 @ =sub_0801E238
	str r0, [r1]
_0801E216:
	adds r0, r3, #0
	bl sub_0801DEC8
	pop {r0}
	bx r0
	.align 2, 0
_0801E220: .4byte sub_0801E238

	thumb_func_start sub_0801E224
sub_0801E224: @ 0x0801E224
	adds r2, r0, #0
	adds r2, #0xe0
	movs r1, #0
	strh r1, [r2]
	adds r0, #0xd8
	ldr r1, _0801E234 @ =sub_0801DF30
	str r1, [r0]
	bx lr
	.align 2, 0
_0801E234: .4byte sub_0801DF30

	thumb_func_start sub_0801E238
sub_0801E238: @ 0x0801E238
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r1, _0801E280 @ =0x00007FFF
	mov r0, sp
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0xde
	movs r0, #0
	strh r0, [r1]
	movs r0, #7
	bl sub_0803CA20
	ldrh r2, [r0, #8]
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r1, r2
	strh r1, [r0, #8]
	ldr r1, _0801E284 @ =0x0000FFFF
	strh r1, [r0, #4]
	movs r1, #1
	rsbs r1, r1, #0
	strh r1, [r0, #6]
	mov r0, sp
	movs r1, #0
	movs r2, #1
	bl sub_0803D21C
	adds r4, #0xd8
	ldr r0, _0801E288 @ =sub_0801E28C
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0801E280: .4byte 0x00007FFF
_0801E284: .4byte 0x0000FFFF
_0801E288: .4byte sub_0801E28C

	thumb_func_start sub_0801E28C
sub_0801E28C: @ 0x0801E28C
	push {lr}
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xde
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x20
	bls _0801E2AA
	adds r1, r3, #0
	adds r1, #0xd8
	ldr r0, _0801E2B0 @ =sub_0801E2B4
	str r0, [r1]
_0801E2AA:
	pop {r0}
	bx r0
	.align 2, 0
_0801E2B0: .4byte sub_0801E2B4

	thumb_func_start sub_0801E2B4
sub_0801E2B4: @ 0x0801E2B4
	push {lr}
	bl sub_08039670
	ldr r0, _0801E2C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r0}
	bx r0
	.align 2, 0
_0801E2C8: .4byte gCurTask
