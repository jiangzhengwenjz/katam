	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0812DB2C
sub_0812DB2C: @ 0x0812DB2C
	push {r4, lr}
	ldr r0, _0812DB48 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812DB4C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0812DB54
	.align 2, 0
_0812DB48: .4byte gCurTask
_0812DB4C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0812DB54:
	ldr r0, _0812DBB0 @ =0x00000113
	adds r1, r4, r0
	ldrb r0, [r1]
	subs r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	cmp r0, r1
	bne _0812DB76
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r2, r4, r1
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_0812DB76:
	adds r0, r4, #0
	bl sub_081288DC
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_081288DC
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_081288DC
	adds r0, r4, #0
	adds r0, #0xcc
	bl sub_081288DC
	movs r1, #0x8c
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xf2
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812DBB0: .4byte 0x00000113

	thumb_func_start sub_0812DBB4
sub_0812DBB4: @ 0x0812DBB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r4, [sp, #0x24]
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r3, r3, #0x10
	mov sb, r3
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	mov sl, r4
	ldr r0, _0812DC08 @ =sub_0812DC90
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r1, _0812DC0C @ =nullsub_32
	str r1, [sp]
	movs r1, #0x2c
	movs r3, #0
	bl TaskCreate
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812DC10
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0812DC18
	.align 2, 0
_0812DC08: .4byte sub_0812DC90
_0812DC0C: .4byte nullsub_32
_0812DC10:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0812DC18:
	mov r3, sb
	mov r0, sb
	lsls r1, r0, #0x10
	mov r4, r8
	lsls r0, r4, #0x10
	cmp r1, r0
	bge _0812DC28
	mov r3, r8
_0812DC28:
	lsls r1, r3, #0x10
	lsls r0, r7, #0x10
	cmp r1, r0
	bge _0812DC32
	adds r3, r7, #0
_0812DC32:
	lsls r1, r3, #0x10
	lsls r0, r6, #0x10
	cmp r1, r0
	bge _0812DC3C
	adds r3, r6, #0
_0812DC3C:
	movs r4, #0
	movs r0, #0
	adds r1, r3, #0
	subs r1, #0x78
	strh r1, [r2, #0x20]
	strh r0, [r2, #0x22]
	strh r0, [r2, #0x24]
	adds r3, r2, #0
	adds r3, #0x26
	movs r1, #1
	strb r1, [r3]
	strh r0, [r2, #0x28]
	strh r6, [r2]
	strh r0, [r2, #2]
	strb r4, [r2, #4]
	strh r7, [r2, #8]
	strh r0, [r2, #0xa]
	strb r4, [r2, #0xc]
	mov r1, r8
	strh r1, [r2, #0x10]
	strh r0, [r2, #0x12]
	strb r4, [r2, #0x14]
	mov r1, sb
	strh r1, [r2, #0x18]
	strh r0, [r2, #0x1a]
	strb r4, [r2, #0x1c]
	mov r0, sl
	cmp r0, #0
	beq _0812DC7E
	ldrh r0, [r2, #0x24]
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2, #0x24]
_0812DC7E:
	adds r0, r5, #0
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0812DC90
sub_0812DC90: @ 0x0812DC90
	push {r4, r5, lr}
	ldr r0, _0812DCAC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812DCB0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0812DCB8
	.align 2, 0
_0812DCAC: .4byte gCurTask
_0812DCB0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0812DCB8:
	adds r4, r0, #0
	movs r1, #0x20
	ldrsh r0, [r4, r1]
	movs r2, #0x22
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	asrs r0, r0, #6
	adds r1, r4, #0
	adds r1, #0x26
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _0812DCF0
	movs r0, #0x10
	strb r0, [r1]
	ldr r1, _0812DCE8 @ =gDispCnt
	ldrh r2, [r1]
	ldr r0, _0812DCEC @ =0x0000FEFF
	ands r0, r2
	strh r0, [r1]
	adds r2, r1, #0
	b _0812DD00
	.align 2, 0
_0812DCE8: .4byte gDispCnt
_0812DCEC: .4byte 0x0000FEFF
_0812DCF0:
	ldr r0, _0812DD20 @ =gDispCnt
	ldrh r1, [r0]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r2, r3, #0
	orrs r1, r2
	strh r1, [r0]
	adds r2, r0, #0
_0812DD00:
	adds r0, r4, #0
	adds r0, #0x26
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0
	bne _0812DD2C
	movs r0, #0x20
	ldrsh r1, [r4, r0]
	movs r3, #0x22
	ldrsh r0, [r4, r3]
	cmp r1, r0
	beq _0812DD24
	movs r0, #1
	strb r0, [r5]
	b _0812DD2C
	.align 2, 0
_0812DD20: .4byte gDispCnt
_0812DD24:
	ldrh r1, [r4, #0x24]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r4, #0x24]
_0812DD2C:
	ldr r1, _0812DD80 @ =gBgScrollRegs
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r3, [r1, #2]
	adds r0, r0, r3
	strh r0, [r1, #2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r1, #6]
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r3, [r4, #0x22]
	adds r0, r0, r3
	strh r0, [r4, #0x22]
	movs r0, #0
	ldrsb r0, [r5, r0]
	ldrh r3, [r1, #0xa]
	adds r0, r0, r3
	strh r0, [r1, #0xa]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x17
	ble _0812DE00
	movs r0, #0
	strh r0, [r1, #0xa]
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _0812DD90
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0812DD88
	ldr r0, _0812DD84 @ =0x00000231
	bl m4aSongNumStart
	b _0812DD90
	.align 2, 0
_0812DD80: .4byte gBgScrollRegs
_0812DD84: .4byte 0x00000231
_0812DD88:
	movs r0, #0x8c
	lsls r0, r0, #2
	bl m4aSongNumStart
_0812DD90:
	movs r1, #0
	ldrsh r0, [r4, r1]
	movs r2, #2
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0812DDAA
	movs r0, #0x14
	strb r0, [r4, #4]
	b _0812DDAC
_0812DDAA:
	strb r1, [r4, #4]
_0812DDAC:
	movs r3, #8
	ldrsh r0, [r4, r3]
	movs r2, #0xa
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0812DDC6
	movs r0, #0x14
	strb r0, [r4, #0xc]
	b _0812DDC8
_0812DDC6:
	strb r1, [r4, #0xc]
_0812DDC8:
	movs r3, #0x10
	ldrsh r0, [r4, r3]
	movs r2, #0x12
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0812DDE2
	movs r0, #0x14
	strb r0, [r4, #0x14]
	b _0812DDE4
_0812DDE2:
	strb r1, [r4, #0x14]
_0812DDE4:
	movs r3, #0x18
	ldrsh r0, [r4, r3]
	movs r2, #0x1a
	ldrsh r1, [r4, r2]
	subs r0, r0, r1
	lsls r0, r0, #0xd
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x13
	ble _0812DDFE
	movs r0, #0x14
	strb r0, [r4, #0x1c]
	b _0812DE00
_0812DDFE:
	strb r1, [r4, #0x1c]
_0812DE00:
	ldrb r0, [r5]
	bl sub_0812E6E4
	movs r3, #0
	ldrsh r1, [r4, r3]
	movs r2, #2
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bgt _0812DE20
	movs r0, #0
	strb r0, [r4, #4]
	ldrh r0, [r4]
	b _0812DE24
_0812DE20:
	ldrh r0, [r4, #2]
	adds r0, r0, r2
_0812DE24:
	strh r0, [r4, #2]
	movs r3, #8
	ldrsh r1, [r4, r3]
	movs r2, #0xa
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bge _0812DE40
	movs r0, #0
	strb r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	b _0812DE44
_0812DE40:
	ldrh r0, [r4, #0xa]
	adds r0, r0, r2
_0812DE44:
	strh r0, [r4, #0xa]
	movs r3, #0x10
	ldrsh r1, [r4, r3]
	movs r2, #0x12
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bge _0812DE60
	movs r0, #0
	strb r0, [r4, #0x14]
	ldrh r0, [r4, #0x10]
	b _0812DE64
_0812DE60:
	ldrh r0, [r4, #0x12]
	adds r0, r0, r2
_0812DE64:
	strh r0, [r4, #0x12]
	movs r3, #0x18
	ldrsh r1, [r4, r3]
	movs r2, #0x1a
	ldrsh r0, [r4, r2]
	movs r2, #0
	ldrsb r2, [r5, r2]
	adds r0, r0, r2
	cmp r1, r0
	bgt _0812DE80
	movs r0, #0
	strb r0, [r4, #0x1c]
	ldrh r0, [r4, #0x18]
	b _0812DE84
_0812DE80:
	ldrh r0, [r4, #0x1a]
	adds r0, r0, r2
_0812DE84:
	strh r0, [r4, #0x1a]
	ldr r0, _0812DEF8 @ =gUnk_03000530
	str r4, [r0]
	ldr r3, _0812DEFC @ =gUnk_03002470
	ldr r2, _0812DF00 @ =gUnk_03006070
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0812DF04 @ =sub_0812DFD4
	str r1, [r0]
	ldr r2, _0812DF08 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r3, #2
	ldrsh r2, [r4, r3]
	movs r0, #0xa
	bl sub_0812E194
	movs r0, #0xa
	ldrsh r2, [r4, r0]
	movs r0, #0x46
	movs r1, #0x10
	bl sub_0812E194
	movs r1, #0x12
	ldrsh r2, [r4, r1]
	movs r0, #0x82
	movs r1, #0x10
	bl sub_0812E194
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_0812E194
	ldrh r1, [r4, #0x24]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0812DEF0
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0812DEF0
	ldr r0, _0812DF0C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0812DF10 @ =sub_0812DF14
	str r0, [r1, #8]
_0812DEF0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0812DEF8: .4byte gUnk_03000530
_0812DEFC: .4byte gUnk_03002470
_0812DF00: .4byte gUnk_03006070
_0812DF04: .4byte sub_0812DFD4
_0812DF08: .4byte gUnk_03002440
_0812DF0C: .4byte gCurTask
_0812DF10: .4byte sub_0812DF14

	thumb_func_start sub_0812DF14
sub_0812DF14: @ 0x0812DF14
	push {r4, lr}
	ldr r0, _0812DF30 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812DF34
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0812DF3C
	.align 2, 0
_0812DF30: .4byte gCurTask
_0812DF34:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0812DF3C:
	ldrh r1, [r4, #0x24]
	movs r0, #2
	orrs r0, r1
	strh r0, [r4, #0x24]
	ldr r1, _0812DFBC @ =gBgScrollRegs
	adds r2, r4, #0
	adds r2, #0x26
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r3, [r1, #2]
	adds r0, r0, r3
	strh r0, [r1, #2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	ldrh r3, [r1, #6]
	adds r0, r0, r3
	strh r0, [r1, #6]
	ldrb r0, [r2]
	bl sub_0812E6E4
	ldr r0, _0812DFC0 @ =gUnk_03000530
	str r4, [r0]
	ldr r3, _0812DFC4 @ =gUnk_03002470
	ldr r2, _0812DFC8 @ =gUnk_03006070
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _0812DFCC @ =sub_0812DFD4
	str r1, [r0]
	ldr r2, _0812DFD0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	movs r0, #2
	ldrsh r2, [r4, r0]
	movs r0, #0xa
	bl sub_0812E194
	movs r3, #0xa
	ldrsh r2, [r4, r3]
	movs r0, #0x46
	movs r1, #0x10
	bl sub_0812E194
	movs r0, #0x12
	ldrsh r2, [r4, r0]
	movs r0, #0x82
	movs r1, #0x10
	bl sub_0812E194
	movs r3, #0x1a
	ldrsh r2, [r4, r3]
	movs r0, #0xbe
	movs r1, #0x10
	bl sub_0812E194
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812DFBC: .4byte gBgScrollRegs
_0812DFC0: .4byte gUnk_03000530
_0812DFC4: .4byte gUnk_03002470
_0812DFC8: .4byte gUnk_03006070
_0812DFCC: .4byte sub_0812DFD4
_0812DFD0: .4byte gUnk_03002440

	thumb_func_start sub_0812DFD4
sub_0812DFD4: @ 0x0812DFD4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _0812E0B0 @ =gUnk_03000530
	ldr r0, [r0]
	mov r8, r0
	ldrb r6, [r0, #4]
	ldr r7, _0812E0B4 @ =0x0600F004
	movs r5, #0
	adds r0, r6, #5
	cmp r5, r0
	bhs _0812E00C
	rsbs r0, r6, #0
	adds r4, r0, #0
	adds r4, #0x17
_0812DFF2:
	lsls r0, r4, #2
	ldr r1, _0812E0B8 @ =gUnk_0836ECC8
	adds r0, r0, r1
	adds r1, r7, #0
	movs r2, #2
	bl CpuSet
	adds r7, #0x40
	adds r4, #1
	adds r5, #1
	adds r0, r6, #5
	cmp r5, r0
	blo _0812DFF2
_0812E00C:
	mov r0, r8
	ldrb r6, [r0, #0xc]
	ldr r7, _0812E0BC @ =0x0600F014
	movs r5, #0
	adds r0, r6, #5
	cmp r5, r0
	bhs _0812E03C
	rsbs r0, r6, #0
	adds r4, r0, #0
	adds r4, #0x17
_0812E020:
	lsls r0, r4, #2
	ldr r1, _0812E0B8 @ =gUnk_0836ECC8
	adds r0, r0, r1
	adds r0, #0x80
	adds r1, r7, #0
	movs r2, #2
	bl CpuSet
	adds r7, #0x40
	adds r4, #1
	adds r5, #1
	adds r0, r6, #5
	cmp r5, r0
	blo _0812E020
_0812E03C:
	mov r1, r8
	ldrb r6, [r1, #0x14]
	ldr r7, _0812E0C0 @ =0x0600F024
	movs r5, #0
	adds r0, r6, #5
	cmp r5, r0
	bhs _0812E070
	rsbs r0, r6, #0
	adds r4, r0, #0
	adds r4, #0x17
_0812E050:
	lsls r0, r4, #2
	ldr r1, _0812E0B8 @ =gUnk_0836ECC8
	adds r0, r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r7, #0
	movs r2, #2
	bl CpuSet
	adds r7, #0x40
	adds r4, #1
	adds r5, #1
	adds r0, r6, #5
	cmp r5, r0
	blo _0812E050
_0812E070:
	mov r0, r8
	ldrb r6, [r0, #0x1c]
	ldr r7, _0812E0C4 @ =0x0600F034
	movs r5, #0
	adds r0, r6, #5
	cmp r5, r0
	bhs _0812E0A4
	rsbs r0, r6, #0
	adds r4, r0, #0
	adds r4, #0x17
_0812E084:
	lsls r0, r4, #2
	ldr r1, _0812E0B8 @ =gUnk_0836ECC8
	adds r0, r0, r1
	movs r1, #0xc0
	lsls r1, r1, #1
	adds r0, r0, r1
	adds r1, r7, #0
	movs r2, #2
	bl CpuSet
	adds r7, #0x40
	adds r4, #1
	adds r5, #1
	adds r0, r6, #5
	cmp r5, r0
	blo _0812E084
_0812E0A4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812E0B0: .4byte gUnk_03000530
_0812E0B4: .4byte 0x0600F004
_0812E0B8: .4byte gUnk_0836ECC8
_0812E0BC: .4byte 0x0600F014
_0812E0C0: .4byte 0x0600F024
_0812E0C4: .4byte 0x0600F034

	thumb_func_start sub_0812E0C8
sub_0812E0C8: @ 0x0812E0C8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x48
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	lsls r2, r2, #0x18
	lsrs r0, r2, #0x18
	adds r6, r0, #0
	movs r1, #0
	mov sb, r1
	cmp r0, #0
	beq _0812E0F6
	lsls r0, r0, #0x15
	movs r1, #0xe0
	lsls r1, r1, #0xe
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	mov sb, r0
_0812E0F6:
	movs r4, #0
	str r4, [sp, #0x44]
	add r0, sp, #0x44
	ldr r2, _0812E184 @ =0x05000011
	mov r1, sp
	bl CpuSet
	ldr r0, _0812E188 @ =0x06010000
	str r0, [sp]
	mov r1, sp
	movs r0, #0xa0
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	mov r3, sp
	ldr r5, _0812E18C @ =gUnk_08364FF4
	lsls r1, r6, #2
	ldr r2, _0812E190 @ =gLanguage
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r0, r0, r5
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r5
	ldrb r0, [r1, #2]
	strb r0, [r3, #0x1a]
	mov r0, sp
	strh r4, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	movs r0, #0xc
	strb r0, [r1, #0x1f]
	mov r0, sp
	lsls r3, r7, #2
	strh r7, [r0, #0x10]
	mov r2, sp
	mov r0, r8
	lsls r1, r0, #2
	add r1, sb
	asrs r0, r1, #2
	strh r0, [r2, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	str r3, [sp, #0x28]
	str r1, [sp, #0x2c]
	mov r0, sp
	strh r4, [r0, #0x30]
	strh r4, [r0, #0x32]
	strh r5, [r0, #0x34]
	strh r4, [r0, #0x36]
	str r4, [sp, #0x38]
	str r4, [sp, #0x3c]
	str r4, [sp, #0x40]
	bl sub_081288DC
	add sp, #0x48
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812E184: .4byte 0x05000011
_0812E188: .4byte 0x06010000
_0812E18C: .4byte gUnk_08364FF4
_0812E190: .4byte gLanguage

	thumb_func_start sub_0812E194
sub_0812E194: @ 0x0812E194
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x128
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x120]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x124]
	lsls r2, r2, #0x10
	movs r0, #0xf0
	lsls r0, r0, #0xf
	adds r2, r2, r0
	asrs r2, r2, #0x13
	lsls r2, r2, #0x10
	lsrs r7, r2, #0x10
	ldr r0, _0812E454 @ =0x000003E7
	cmp r7, r0
	bls _0812E1C2
	adds r7, r0, #0
_0812E1C2:
	movs r1, #0xfa
	lsls r1, r1, #2
	adds r0, r7, #0
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #5
	subs r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	subs r1, r7, r1
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	movs r5, #0x64
	adds r0, r7, #0
	movs r1, #0x64
	bl __udivsi3
	adds r4, r0, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r0, r4, #0
	muls r0, r5, r0
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	lsls r1, r0, #2
	mov r8, r1
	add r0, r8
	lsls r0, r0, #1
	subs r0, r7, r0
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	add r0, sp, #0x110
	movs r5, #0
	str r5, [r0]
	add r6, sp, #0xcc
	adds r1, r6, #0
	ldr r2, _0812E458 @ =0x05000011
	bl CpuSet
	ldr r2, _0812E45C @ =0x06010000
	str r2, [r6]
	movs r0, #0xd0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	lsls r4, r4, #2
	ldr r2, _0812E460 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r4, r0
	ldr r1, _0812E464 @ =gUnk_08364E1C
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r6, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r4, r4, r0
	ldr r2, _0812E464 @ =gUnk_08364E1C
	adds r4, r4, r2
	ldrb r0, [r4, #2]
	strb r0, [r6, #0x1a]
	strh r5, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	movs r1, #0xc
	strb r1, [r6, #0x1f]
	ldr r2, [sp, #0x120]
	lsls r0, r2, #2
	strh r2, [r6, #0x10]
	ldr r2, [sp, #0x124]
	lsls r2, r2, #2
	mov sl, r2
	asrs r2, r2, #2
	mov sb, r2
	strh r2, [r6, #0x12]
	movs r1, #0xc0
	lsls r1, r1, #0xc
	str r1, [r6, #8]
	str r0, [r6, #0x28]
	mov r2, sl
	str r2, [r6, #0x2c]
	strh r5, [r6, #0x30]
	strh r5, [r6, #0x32]
	movs r0, #0x10
	strh r0, [r6, #0x34]
	strh r5, [r6, #0x36]
	str r5, [r6, #0x38]
	str r5, [r6, #0x3c]
	str r5, [r6, #0x40]
	add r0, sp, #0x114
	str r5, [r0]
	add r4, sp, #0x88
	adds r1, r4, #0
	ldr r2, _0812E458 @ =0x05000011
	bl CpuSet
	ldr r1, _0812E45C @ =0x06010000
	str r1, [r4]
	movs r2, #0xd0
	lsls r2, r2, #2
	strh r2, [r4, #0x14]
	ldr r0, _0812E460 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r0, r8
	ldr r1, _0812E464 @ =gUnk_08364E1C
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r2, _0812E460 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	add r8, r0
	ldr r0, _0812E464 @ =gUnk_08364E1C
	add r8, r0
	mov r1, r8
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #0xc
	strb r0, [r4, #0x1f]
	ldr r0, [sp, #0x120]
	adds r0, #0xa
	lsls r1, r0, #2
	strh r0, [r4, #0x10]
	mov r2, sb
	strh r2, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r1, [r4, #0x28]
	mov r1, sl
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r2, #0x10
	strh r2, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add r0, sp, #0x118
	str r5, [r0]
	add r1, sp, #0x44
	mov r8, r1
	ldr r2, _0812E458 @ =0x05000011
	bl CpuSet
	ldr r2, _0812E45C @ =0x06010000
	str r2, [sp, #0x44]
	add r0, sp, #0x58
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r0]
	lsls r2, r7, #2
	ldr r0, _0812E460 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r0, r2, r0
	ldr r1, _0812E464 @ =gUnk_08364E1C
	adds r0, r0, r1
	ldrh r1, [r0]
	add r0, sp, #0x50
	strh r1, [r0]
	ldr r0, _0812E460 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	adds r2, r2, r0
	ldr r1, _0812E464 @ =gUnk_08364E1C
	adds r2, r2, r1
	ldrb r1, [r2, #2]
	mov r0, sp
	adds r0, #0x5e
	strb r1, [r0]
	subs r0, #4
	strh r5, [r0]
	mov r1, sp
	adds r1, #0x5f
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	add r0, sp, #0x60
	movs r2, #0x10
	strb r2, [r0]
	adds r0, #3
	movs r1, #0xc
	strb r1, [r0]
	ldr r1, [sp, #0x120]
	adds r1, #0x14
	lsls r2, r1, #2
	add r0, sp, #0x54
	strh r1, [r0]
	adds r0, #2
	mov r1, sb
	strh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #0x4c]
	str r2, [sp, #0x6c]
	mov r1, sl
	str r1, [sp, #0x70]
	add r0, sp, #0x74
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	add r0, sp, #0x78
	movs r2, #0x10
	strh r2, [r0]
	adds r0, #2
	strh r5, [r0]
	str r5, [sp, #0x7c]
	add r0, sp, #0x80
	str r5, [r0]
	add r0, sp, #0x84
	str r5, [r0]
	add r0, sp, #0x11c
	str r5, [r0]
	mov r1, sp
	ldr r2, _0812E458 @ =0x05000011
	bl CpuSet
	ldr r0, _0812E45C @ =0x06010000
	str r0, [sp]
	mov r0, sp
	movs r1, #0xd0
	lsls r1, r1, #2
	strh r1, [r0, #0x14]
	mov r2, sp
	ldr r0, _0812E460 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0812E464 @ =gUnk_08364E1C
	adds r0, r0, r1
	ldrh r0, [r0, #0x2c]
	strh r0, [r2, #0xc]
	ldr r0, _0812E460 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #4
	ldr r1, _0812E464 @ =gUnk_08364E1C
	adds r0, r0, r1
	adds r0, #0x2e
	ldrb r0, [r0]
	strb r0, [r2, #0x1a]
	mov r0, sp
	strh r5, [r0, #0x16]
	mov r1, sp
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r2, #0x10
	strb r2, [r0, #0x1c]
	movs r1, #0xc
	strb r1, [r0, #0x1f]
	mov r1, sp
	ldr r0, [sp, #0x120]
	adds r0, #0x22
	lsls r2, r0, #2
	strh r0, [r1, #0x10]
	mov r0, sp
	mov r1, sb
	strh r1, [r0, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [sp, #8]
	str r2, [sp, #0x28]
	mov r1, sl
	str r1, [sp, #0x2c]
	mov r0, sp
	strh r5, [r0, #0x30]
	strh r5, [r0, #0x32]
	movs r2, #0x10
	strh r2, [r0, #0x34]
	strh r5, [r0, #0x36]
	str r5, [sp, #0x38]
	str r5, [sp, #0x3c]
	str r5, [sp, #0x40]
	bl sub_081288DC
	mov r0, r8
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_081288DC
	adds r0, r6, #0
	bl sub_081288DC
	add sp, #0x128
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812E454: .4byte 0x000003E7
_0812E458: .4byte 0x05000011
_0812E45C: .4byte 0x06010000
_0812E460: .4byte gLanguage
_0812E464: .4byte gUnk_08364E1C

	thumb_func_start sub_0812E468
sub_0812E468: @ 0x0812E468
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov r8, r0
	mov r1, sp
	adds r0, #0xdc
	ldrh r0, [r0]
	strh r0, [r1]
	movs r0, #0xc6
	lsls r0, r0, #1
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1, #2]
	movs r0, #0x8f
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1, #4]
	movs r0, #0xbb
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r1, #6]
	movs r0, #0
	mov ip, r0
	mov r4, sp
_0812E4A0:
	movs r6, #0
	ldrh r2, [r4, #6]
	movs r5, #6
	ldrsh r1, [r4, r5]
	ldrh r3, [r4, #4]
	movs r7, #4
	ldrsh r0, [r4, r7]
	cmp r1, r0
	bge _0812E4B4
	adds r2, r3, #0
_0812E4B4:
	ldrh r3, [r4, #2]
	lsls r1, r2, #0x10
	lsls r0, r3, #0x10
	cmp r1, r0
	bge _0812E4C0
	adds r2, r3, #0
_0812E4C0:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	ldrh r3, [r4]
	movs r5, #0
	ldrsh r0, [r4, r5]
	cmp r1, r0
	bge _0812E4D0
	adds r2, r3, #0
_0812E4D0:
	movs r1, #0
	lsls r0, r2, #0x10
	asrs r5, r0, #0x10
	mov sb, r1
	mov r3, sp
	mov r2, r8
	adds r2, #0xdc
_0812E4DE:
	movs r7, #0
	ldrsh r0, [r2, r7]
	cmp r5, r0
	bne _0812E4F4
	mov r0, ip
	strb r0, [r2, #0x10]
	mov r7, sb
	strh r7, [r3]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0812E4F4:
	adds r3, #2
	adds r2, #0xb0
	adds r1, #1
	cmp r1, #3
	bls _0812E4DE
	mov r1, ip
	adds r0, r1, r6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _0812E4A0
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0812E51C
sub_0812E51C: @ 0x0812E51C
	push {r4, lr}
	ldr r2, _0812E53C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _0812E540
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0812E548
	.align 2, 0
_0812E53C: .4byte gCurTask
_0812E540:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0812E548:
	ldr r1, _0812E580 @ =0x000005F6
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _0812E57A
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, _0812E584 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0812E574
	bl sub_08031CC8
	bl sub_081589E8
_0812E574:
	movs r0, #1
	bl sub_08138D64
_0812E57A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812E580: .4byte 0x000005F6
_0812E584: .4byte gUnk_0203AD10

	thumb_func_start sub_0812E588
sub_0812E588: @ 0x0812E588
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812E5A2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0812E5AA
_0812E5A2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0812E5AA:
	ldr r0, [r5, #0x14]
	bl TaskDestroy
	movs r4, #0
	str r4, [r5, #0x14]
	ldr r0, [r5, #0x18]
	bl TaskDestroy
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	bl TaskDestroy
	str r4, [r5, #0x1c]
	ldr r0, [r5, #0x20]
	bl TaskDestroy
	str r4, [r5, #0x20]
	ldr r0, [r5, #0x24]
	bl TaskDestroy
	str r4, [r5, #0x24]
	ldr r0, [r5, #0x28]
	bl TaskDestroy
	str r4, [r5, #0x28]
	ldr r0, [r5, #0x2c]
	bl TaskDestroy
	str r4, [r5, #0x2c]
	ldr r0, [r5, #0x30]
	bl TaskDestroy
	str r4, [r5, #0x30]
	ldr r0, [r5, #0x34]
	bl TaskDestroy
	str r4, [r5, #0x34]
	ldr r0, [r5, #0x38]
	bl TaskDestroy
	str r4, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0812E604
sub_0812E604: @ 0x0812E604
	push {r4, lr}
	adds r2, r0, #0
	adds r4, r2, #0
	adds r4, #0xa6
	ldrh r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0812E636
	adds r0, r2, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0812E636
	adds r0, r2, #0
	bl sub_0812BE74
	ldrh r0, [r4]
	movs r1, #4
	orrs r1, r0
	ldr r0, _0812E63C @ =0x0000FFFD
	ands r1, r0
	strh r1, [r4]
_0812E636:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812E63C: .4byte 0x0000FFFD

	thumb_func_start sub_0812E640
sub_0812E640: @ 0x0812E640
	push {lr}
	sub sp, #4
	ldr r2, _0812E680 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _0812E684 @ =0x0000DBFF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _0812E688 @ =gBgCntRegs
	movs r2, #0
	ldr r0, _0812E68C @ =0x00001E01
	strh r0, [r1, #4]
	ldr r0, _0812E690 @ =gBgScrollRegs
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	str r2, [sp]
	ldr r1, _0812E694 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0812E698 @ =0x0600F000
	str r0, [r1, #4]
	ldr r0, _0812E69C @ =0x85000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	str r2, [sp]
	ldr r1, _0812E6A0 @ =gWinRegs
	ldr r2, _0812E6A4 @ =0x05000001
	mov r0, sp
	bl CpuSet
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0812E680: .4byte gDispCnt
_0812E684: .4byte 0x0000DBFF
_0812E688: .4byte gBgCntRegs
_0812E68C: .4byte 0x00001E01
_0812E690: .4byte gBgScrollRegs
_0812E694: .4byte 0x040000D4
_0812E698: .4byte 0x0600F000
_0812E69C: .4byte 0x85000200
_0812E6A0: .4byte gWinRegs
_0812E6A4: .4byte 0x05000001

	thumb_func_start sub_0812E6A8
sub_0812E6A8: @ 0x0812E6A8
	push {lr}
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0812E6BE
	movs r0, #0
	b _0812E6C0
_0812E6BE:
	movs r0, #1
_0812E6C0:
	pop {r1}
	bx r1

	thumb_func_start nullsub_31
nullsub_31: @ 0x0812E6C4
	bx lr
	.align 2, 0

	thumb_func_start sub_0812E6C8
sub_0812E6C8: @ 0x0812E6C8
	push {lr}
	ldrh r1, [r0, #0x24]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0812E6D8
	movs r0, #0
	b _0812E6DA
_0812E6D8:
	movs r0, #1
_0812E6DA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start nullsub_32
nullsub_32: @ 0x0812E6E0
	bx lr
	.align 2, 0

	thumb_func_start sub_0812E6E4
sub_0812E6E4: @ 0x0812E6E4
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r5, r0, #1
	movs r4, #0xa0
	subs r4, r4, r0
	lsls r4, r4, #1
	ldr r2, _0812E748 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #4
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0812E74C @ =gUnk_030036C8
	ldr r0, _0812E750 @ =0x04000018
	str r0, [r1]
	ldr r1, _0812E754 @ =gUnk_030039A0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0812E758 @ =gUnk_03002484
	mov sb, r0
	ldr r0, [r0]
	adds r0, r0, r5
	ldr r6, _0812E75C @ =gUnk_03002EAC
	ldr r1, [r6]
	lsrs r2, r4, #1
	ldr r3, _0812E760 @ =0x001FFFFF
	mov r8, r3
	ands r2, r3
	bl CpuSet
	mov r1, sb
	ldr r0, [r1]
	ldr r1, [r6]
	adds r1, r1, r4
	lsrs r5, r5, #1
	mov r2, r8
	ands r5, r2
	adds r2, r5, #0
	bl CpuSet
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0812E748: .4byte gUnk_03002440
_0812E74C: .4byte gUnk_030036C8
_0812E750: .4byte 0x04000018
_0812E754: .4byte gUnk_030039A0
_0812E758: .4byte gUnk_03002484
_0812E75C: .4byte gUnk_03002EAC
_0812E760: .4byte 0x001FFFFF

	thumb_func_start sub_0812E764
sub_0812E764: @ 0x0812E764
	push {r4, r5, lr}
	lsls r1, r1, #0x18
	ldr r5, _0812E798 @ =gUnk_08364CE4
	lsrs r1, r1, #0x16
	ldr r4, _0812E79C @ =gLanguage
	ldrh r3, [r4]
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r2, r1, r2
	adds r2, r2, r5
	ldrh r2, [r2]
	strh r2, [r0, #0xc]
	ldrh r3, [r4]
	lsls r2, r3, #3
	subs r2, r2, r3
	lsls r2, r2, #2
	adds r1, r1, r2
	adds r1, r1, r5
	ldrb r1, [r1, #2]
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0812E798: .4byte gUnk_08364CE4
_0812E79C: .4byte gLanguage

	thumb_func_start sub_0812E7A0
sub_0812E7A0: @ 0x0812E7A0
	push {r4, lr}
	movs r3, #0
	movs r2, #0
	ldr r1, _0812E7D4 @ =gUnk_030036C8
	ldr r0, _0812E7D8 @ =0x04000018
	str r0, [r1]
	ldr r1, _0812E7DC @ =gUnk_030039A0
	movs r0, #2
	strb r0, [r1]
	ldr r0, _0812E7E0 @ =gUnk_03002484
	ldr r4, [r0]
	ldr r0, _0812E7E4 @ =gUnk_03002EAC
	ldr r1, [r0]
_0812E7BA:
	lsrs r0, r2, #2
	strh r0, [r4]
	adds r4, #2
	strh r0, [r1]
	adds r1, #2
	cmp r3, #9
	bls _0812E804
	cmp r3, #0x13
	bls _0812E808
	cmp r3, #0x27
	bhi _0812E7E8
	adds r2, #2
	b _0812E80A
	.align 2, 0
_0812E7D4: .4byte gUnk_030036C8
_0812E7D8: .4byte 0x04000018
_0812E7DC: .4byte gUnk_030039A0
_0812E7E0: .4byte gUnk_03002484
_0812E7E4: .4byte gUnk_03002EAC
_0812E7E8:
	cmp r3, #0x3b
	bhi _0812E7F0
	subs r2, #2
	b _0812E80A
_0812E7F0:
	cmp r3, #0x59
	bhi _0812E7F8
	adds r2, #1
	b _0812E80A
_0812E7F8:
	cmp r3, #0x77
	bhi _0812E800
	subs r2, #1
	b _0812E80A
_0812E800:
	cmp r3, #0x8b
	bhi _0812E808
_0812E804:
	adds r2, #3
	b _0812E80A
_0812E808:
	subs r2, #3
_0812E80A:
	adds r3, #1
	cmp r3, #0x9f
	bls _0812E7BA
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0812E818
sub_0812E818: @ 0x0812E818
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _0812E84C @ =sub_0812E9CC
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812E850
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0812E858
	.align 2, 0
_0812E84C: .4byte sub_0812E9CC
_0812E850:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0812E858:
	adds r5, r0, #0
	adds r0, #0x54
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0812E874 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0812E8A6
	lsls r0, r0, #2
	ldr r1, _0812E878 @ =_0812E87C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0812E874: .4byte gLanguage
_0812E878: .4byte _0812E87C
_0812E87C: @ jump table
	.4byte _0812E894 @ case 0
	.4byte _0812E894 @ case 1
	.4byte _0812E894 @ case 2
	.4byte _0812E894 @ case 3
	.4byte _0812E894 @ case 4
	.4byte _0812E894 @ case 5
_0812E894:
	ldr r0, _0812E93C @ =0xFFFF0000
	ands r4, r0
	ldr r0, _0812E940 @ =0x00000343
	orrs r4, r0
	ldr r0, _0812E944 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xc
	orrs r4, r0
_0812E8A6:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	ldr r0, _0812E948 @ =0xFFFFFF00
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0812E954
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _0812E94C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0812E950 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xb
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _0812E9AC
	.align 2, 0
_0812E93C: .4byte 0xFFFF0000
_0812E940: .4byte 0x00000343
_0812E944: .4byte 0xFF00FFFF
_0812E948: .4byte 0xFFFFFF00
_0812E94C: .4byte 0x05000011
_0812E950: .4byte 0x06010000
_0812E954:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _0812E9C4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0812E9C8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #0xb
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_0812E9AC:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	movs r0, #2
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812E9C4: .4byte 0x05000011
_0812E9C8: .4byte 0x06010000

	thumb_func_start sub_0812E9CC
sub_0812E9CC: @ 0x0812E9CC
	push {r4, lr}
	ldr r0, _0812E9E8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812E9EC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0812E9F4
	.align 2, 0
_0812E9E8: .4byte gCurTask
_0812E9EC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0812E9F4:
	adds r0, r4, #0
	bl sub_0812A2C0
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _0812EA14
	movs r0, #0
	strh r0, [r2]
	ldr r0, _0812EA34 @ =0xFFFFFF00
	str r0, [r4, #0x4c]
_0812EA14:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0812EA40
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _0812EA38
	subs r0, #1
	strh r0, [r1]
	b _0812EA40
	.align 2, 0
_0812EA34: .4byte 0xFFFFFF00
_0812EA38:
	ldr r0, _0812EA48 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0812EA40:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812EA48: .4byte gCurTask

	thumb_func_start sub_0812EA4C
sub_0812EA4C: @ 0x0812EA4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r4, r0, #0
	mov r8, r1
	ldr r0, _0812EA84 @ =sub_0812EC54
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812EA88
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0812EA90
	.align 2, 0
_0812EA84: .4byte sub_0812EC54
_0812EA88:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0812EA90:
	adds r5, r0, #0
	ldr r2, _0812EB50 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0812EB54 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0812EB58 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r6, r0, #0x10
	movs r0, #0xf
	ands r6, r0
	movs r7, #0
	str r7, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r0, #0x14
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	str r4, [r5, #0x48]
	mov r0, r8
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	beq _0812EB6C
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _0812EB5C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0812EB60 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	ldr r3, _0812EB64 @ =gUnk_08372440
	lsls r1, r6, #2
	ldr r2, _0812EB68 @ =gLanguage
	ldrh r0, [r2]
	lsls r0, r0, #6
	adds r0, r1, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r0, [r2]
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1, #2]
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _0812EBDC
	.align 2, 0
_0812EB50: .4byte gRngVal
_0812EB54: .4byte 0x00196225
_0812EB58: .4byte 0x3C6EF35F
_0812EB5C: .4byte 0x05000011
_0812EB60: .4byte 0x06010000
_0812EB64: .4byte gUnk_08372440
_0812EB68: .4byte gLanguage
_0812EB6C:
	str r4, [sp, #4]
	adds r1, r5, #4
	ldr r2, _0812EC04 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0812EC08 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	ldr r3, _0812EC0C @ =gUnk_08372440
	lsls r1, r6, #2
	ldr r2, _0812EC10 @ =gLanguage
	ldrh r0, [r2]
	lsls r0, r0, #6
	adds r0, r1, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r0, [r2]
	lsls r0, r0, #6
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1, #2]
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_0812EBDC:
	ldr r2, _0812EC14 @ =gRngVal
	ldr r0, [r2]
	ldr r4, _0812EC18 @ =0x00196225
	adds r1, r0, #0
	muls r1, r4, r1
	ldr r3, _0812EC1C @ =0x3C6EF35F
	adds r1, r1, r3
	lsrs r6, r1, #0x10
	movs r0, #0xf
	ands r6, r0
	adds r0, r1, #0
	muls r0, r4, r0
	adds r0, r0, r3
	str r0, [r2]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812EC20
	strh r6, [r5, #0x34]
	b _0812EC24
	.align 2, 0
_0812EC04: .4byte 0x05000011
_0812EC08: .4byte 0x06010000
_0812EC0C: .4byte gUnk_08372440
_0812EC10: .4byte gLanguage
_0812EC14: .4byte gRngVal
_0812EC18: .4byte 0x00196225
_0812EC1C: .4byte 0x3C6EF35F
_0812EC20:
	rsbs r0, r6, #0
	strh r0, [r5, #0x34]
_0812EC24:
	ldr r1, [r2]
	ldr r0, _0812EC4C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0812EC50 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	adds r0, #4
	lsls r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812EC4C: .4byte 0x00196225
_0812EC50: .4byte 0x3C6EF35F

	thumb_func_start sub_0812EC54
sub_0812EC54: @ 0x0812EC54
	push {r4, r5, lr}
	ldr r0, _0812EC70 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812EC74
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0812EC7C
	.align 2, 0
_0812EC70: .4byte gCurTask
_0812EC74:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0812EC7C:
	adds r4, r5, #0
	adds r0, r4, #0
	bl sub_0812A2C0
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0812ECA2
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _0812ECB6
	subs r0, #1
	strh r0, [r1]
	b _0812ECD4
_0812ECA2:
	ldr r1, [r4, #0x4c]
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r1, r0
	bgt _0812ECB6
	ldr r1, [r5, #0x48]
	movs r0, #0x28
	rsbs r0, r0, #0
	cmp r1, r0
	bge _0812ECC4
_0812ECB6:
	ldr r0, _0812ECC0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0812ECD4
	.align 2, 0
_0812ECC0: .4byte gCurTask
_0812ECC4:
	movs r0, #0xfa
	lsls r0, r0, #2
	cmp r1, r0
	ble _0812ECD4
	ldr r0, _0812ECDC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0812ECD4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0812ECDC: .4byte gCurTask

	thumb_func_start sub_0812ECE0
sub_0812ECE0: @ 0x0812ECE0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0812ECFC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812ED00
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r7, r0, r1
	b _0812ED08
	.align 2, 0
_0812ECFC: .4byte gCurTask
_0812ED00:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r7, r1, r0
_0812ED08:
	ldrh r0, [r7]
	subs r1, r0, #1
	strh r1, [r7]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _0812ED62
	ldr r6, _0812ED68 @ =gRngVal
	ldr r0, [r6]
	ldr r5, _0812ED6C @ =0x00196225
	adds r3, r0, #0
	muls r3, r5, r3
	ldr r4, _0812ED70 @ =0x3C6EF35F
	adds r3, r3, r4
	str r3, [r6]
	lsrs r1, r3, #0x10
	movs r0, #0xf
	ands r1, r0
	ldr r2, _0812ED74 @ =gUnk_08372620
	ldrb r0, [r7, #3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r1, r1, r0
	strh r1, [r7]
	adds r2, r3, #0
	muls r2, r5, r2
	adds r2, r2, r4
	lsrs r0, r2, #0x10
	movs r1, #0x1f
	ands r0, r1
	lsls r3, r0, #2
	adds r0, r2, #0
	muls r0, r5, r0
	adds r0, r0, r4
	str r0, [r6]
	movs r1, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812ED5A
	rsbs r3, r3, #0
_0812ED5A:
	ldr r0, [r7, #4]
	adds r0, r0, r3
	bl sub_0812ED78
_0812ED62:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812ED68: .4byte gRngVal
_0812ED6C: .4byte 0x00196225
_0812ED70: .4byte 0x3C6EF35F
_0812ED74: .4byte gUnk_08372620

	thumb_func_start sub_0812ED78
sub_0812ED78: @ 0x0812ED78
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _0812EDA8 @ =sub_0812EF3C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812EDAC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0812EDB4
	.align 2, 0
_0812EDA8: .4byte sub_0812EF3C
_0812EDAC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0812EDB4:
	adds r4, r0, #0
	ldr r2, _0812EE74 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0812EE78 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0812EE7C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r6, r0, #0x10
	movs r0, #3
	ands r6, r0
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	str r5, [r4, #0x48]
	str r7, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0
	beq _0812EE90
	str r7, [sp, #4]
	adds r1, r4, #4
	ldr r2, _0812EE80 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0812EE84 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r3, _0812EE88 @ =gUnk_083725C0
	lsls r1, r6, #2
	ldr r2, _0812EE8C @ =gLanguage
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r4, #0x10]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #7
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _0812EF00
	.align 2, 0
_0812EE74: .4byte gRngVal
_0812EE78: .4byte 0x00196225
_0812EE7C: .4byte 0x3C6EF35F
_0812EE80: .4byte 0x05000011
_0812EE84: .4byte 0x06010000
_0812EE88: .4byte gUnk_083725C0
_0812EE8C: .4byte gLanguage
_0812EE90:
	str r5, [sp, #4]
	adds r1, r4, #4
	ldr r2, _0812EF20 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0812EF24 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	ldr r3, _0812EF28 @ =gUnk_083725C0
	lsls r1, r6, #2
	ldr r2, _0812EF2C @ =gLanguage
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r0, r1, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r4, #0x10]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r0, [r1, #2]
	strb r0, [r4, #0x1e]
	strh r5, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #7
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r5, [r4, #0x34]
	strh r5, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r5, [r4, #0x3a]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [r4, #0x44]
_0812EF00:
	ldr r2, _0812EF30 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0812EF34 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0812EF38 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	adds r6, r0, #1
	strh r6, [r4, #0x36]
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812EF20: .4byte 0x05000011
_0812EF24: .4byte 0x06010000
_0812EF28: .4byte gUnk_083725C0
_0812EF2C: .4byte gLanguage
_0812EF30: .4byte gRngVal
_0812EF34: .4byte 0x00196225
_0812EF38: .4byte 0x3C6EF35F

	thumb_func_start sub_0812EF3C
sub_0812EF3C: @ 0x0812EF3C
	push {r4, lr}
	ldr r0, _0812EF58 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812EF5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0812EF64
	.align 2, 0
_0812EF58: .4byte gCurTask
_0812EF5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0812EF64:
	adds r0, r4, #0
	bl sub_0812A2C0
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0812EF98
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _0812EF88
	subs r0, #1
	strh r0, [r1]
	b _0812EFAA
_0812EF88:
	ldr r0, _0812EF94 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _0812EFAA
	.align 2, 0
_0812EF94: .4byte gCurTask
_0812EF98:
	ldr r1, [r4, #0x4c]
	movs r0, #0xaa
	lsls r0, r0, #2
	cmp r1, r0
	ble _0812EFAA
	ldr r0, _0812EFB0 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_0812EFAA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0812EFB0: .4byte gCurTask

	thumb_func_start sub_0812EFB4
sub_0812EFB4: @ 0x0812EFB4
	push {lr}
	sub sp, #4
	ldr r0, _0812EFE4 @ =sub_0812F070
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812EFE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0812EFF0
	.align 2, 0
_0812EFE4: .4byte sub_0812F070
_0812EFE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0812EFF0:
	movs r0, #0
	strh r0, [r1]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_0812EFFC
sub_0812EFFC: @ 0x0812EFFC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _0812F030 @ =sub_0812ECE0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812F034
	ldrh r0, [r4, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _0812F03C
	.align 2, 0
_0812F030: .4byte sub_0812ECE0
_0812F034:
	ldrh r1, [r4, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_0812F03C:
	ldr r2, _0812F064 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0812F068 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0812F06C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	movs r1, #0
	strh r0, [r3]
	strb r1, [r3, #2]
	strb r5, [r3, #3]
	str r6, [r3, #4]
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0812F064: .4byte gRngVal
_0812F068: .4byte 0x00196225
_0812F06C: .4byte 0x3C6EF35F

	thumb_func_start sub_0812F070
sub_0812F070: @ 0x0812F070
	push {r4, r5, lr}
	ldr r0, _0812F08C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812F090
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0812F098
	.align 2, 0
_0812F08C: .4byte gCurTask
_0812F090:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0812F098:
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _0812F0D8
	movs r0, #0
	strh r0, [r2]
	movs r5, #0x92
	lsls r5, r5, #2
	movs r0, #0x78
	adds r1, r5, #0
	bl sub_0812EA4C
	movs r0, #0xb4
	lsls r0, r0, #1
	movs r4, #0x8a
	lsls r4, r4, #2
	adds r1, r4, #0
	bl sub_0812EA4C
	movs r0, #0x96
	lsls r0, r0, #2
	adds r1, r4, #0
	bl sub_0812EA4C
	movs r0, #0xd2
	lsls r0, r0, #2
	adds r1, r5, #0
	bl sub_0812EA4C
_0812F0D8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0812F0E0
sub_0812F0E0: @ 0x0812F0E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r5, r0, #0
	str r1, [sp, #8]
	adds r7, r2, #0
	lsls r3, r3, #0x18
	lsrs r4, r3, #0x18
	ldr r0, _0812F108 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp r4, r0
	bhs _0812F10C
	adds r1, r5, #0
	adds r1, #0x94
	movs r0, #0
	b _0812F112
	.align 2, 0
_0812F108: .4byte gUnk_0203AD30
_0812F10C:
	adds r1, r5, #0
	adds r1, #0x94
	movs r0, #1
_0812F112:
	strh r0, [r1]
	mov sb, r1
	ldr r0, _0812F1B4 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r4, r0
	bne _0812F12A
	mov r0, sb
	ldrh r1, [r0]
	movs r0, #2
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
_0812F12A:
	mov r2, sb
	ldrh r1, [r2]
	movs r0, #0x10
	movs r3, #0
	movs r2, #0
	orrs r0, r1
	mov r1, sb
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x9a
	strh r2, [r0]
	subs r0, #2
	strh r2, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r1, r5, #0
	adds r1, #0xa0
	movs r0, #6
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	adds r1, #1
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0xa4
	strh r2, [r0]
	adds r0, #2
	strb r3, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	str r2, [r0]
	adds r0, #4
	strh r2, [r0]
	adds r0, #2
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strh r2, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strb r3, [r0]
	adds r0, #4
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r1, #0x1e
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r1]
	cmp r4, #1
	beq _0812F1CC
	cmp r4, #1
	bgt _0812F1B8
	cmp r4, #0
	beq _0812F1C2
	b _0812F1EA
	.align 2, 0
_0812F1B4: .4byte gUnk_0203AD3C
_0812F1B8:
	cmp r4, #2
	beq _0812F1D6
	cmp r4, #3
	beq _0812F1E0
	b _0812F1EA
_0812F1C2:
	adds r1, r5, #0
	adds r1, #0xc4
	movs r0, #0xe8
	lsls r0, r0, #2
	b _0812F1E8
_0812F1CC:
	adds r1, r5, #0
	adds r1, #0xc4
	movs r0, #0xc8
	lsls r0, r0, #2
	b _0812F1E8
_0812F1D6:
	adds r1, r5, #0
	adds r1, #0xc4
	movs r0, #0xa8
	lsls r0, r0, #2
	b _0812F1E8
_0812F1E0:
	adds r1, r5, #0
	adds r1, #0xc4
	movs r0, #0x88
	lsls r0, r0, #2
_0812F1E8:
	str r0, [r1]
_0812F1EA:
	adds r0, r5, #0
	adds r0, #0xc8
	movs r6, #0
	str r6, [r0]
	adds r0, #4
	str r6, [r0]
	adds r0, #4
	strh r6, [r0]
	adds r0, #4
	str r7, [r0]
	adds r1, r5, #0
	adds r1, #0xd8
	ldr r2, _0812F3D0 @ =gUnk_0837EA54
	ldrb r0, [r7]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	ldrb r0, [r7, #1]
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r5, #0
	adds r0, #0xe0
	movs r2, #0
	strb r2, [r0]
	adds r0, #4
	strb r2, [r0]
	adds r7, r5, #0
	adds r7, #0xe5
	strb r2, [r7]
	adds r0, #2
	strh r6, [r0]
	adds r3, r5, #0
	adds r3, #0xe8
	ldr r2, _0812F3D4 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0812F3D8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0812F3DC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	str r0, [r3]
	str r6, [sp]
	mov r0, sp
	adds r1, r5, #0
	ldr r2, _0812F3E0 @ =0x05000011
	bl CpuSet
	ldr r2, _0812F3E4 @ =0x06010000
	str r2, [r5]
	movs r3, #0x88
	lsls r3, r3, #3
	strh r3, [r5, #0x14]
	ldr r2, _0812F3E8 @ =gUnk_083726B8
	ldr r0, _0812F3EC @ =gLanguage
	mov r8, r0
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	mov r3, r8
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r5, #0x1a]
	strh r6, [r5, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	mov r0, sp
	strb r1, [r0, #0xc]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
	movs r2, #0x10
	mov sl, r2
	mov r3, sl
	strb r3, [r5, #0x1c]
	strb r4, [r5, #0x1f]
	movs r0, #0x14
	strh r0, [r5, #0x10]
	movs r0, #0x82
	strh r0, [r5, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #8]
	movs r0, #0x50
	str r0, [r5, #0x28]
	movs r0, #0x82
	lsls r0, r0, #2
	str r0, [r5, #0x2c]
	strh r6, [r5, #0x30]
	strh r6, [r5, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x34]
	strh r6, [r5, #0x36]
	str r6, [r5, #0x38]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	ldr r0, _0812F3F0 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp r4, r0
	bne _0812F2CE
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x14]
_0812F2CE:
	str r6, [sp, #4]
	add r0, sp, #4
	adds r4, r5, #0
	adds r4, #0x44
	adds r1, r4, #0
	ldr r2, _0812F3E0 @ =0x05000011
	bl CpuSet
	ldr r1, _0812F3E4 @ =0x06010000
	str r1, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0x58
	movs r2, #0x88
	lsls r2, r2, #3
	strh r2, [r0]
	ldr r3, _0812F3F4 @ =gUnk_0837283C
	ldrb r0, [r7]
	adds r0, #1
	lsls r0, r0, #2
	mov r2, r8
	ldrh r1, [r2]
	movs r2, #0x2c
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r1, [r0]
	adds r0, r5, #0
	adds r0, #0x50
	strh r1, [r0]
	ldrb r0, [r7]
	adds r0, #1
	lsls r0, r0, #2
	mov r7, r8
	ldrh r1, [r7]
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	adds r1, r5, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x5a
	strh r6, [r0]
	adds r1, #1
	ldrb r0, [r1]
	mov r2, sp
	ldrb r2, [r2, #0xc]
	orrs r0, r2
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0x60
	mov r3, sl
	strb r3, [r0]
	adds r0, #3
	movs r1, #4
	strb r1, [r0]
	subs r0, #0xf
	strh r1, [r0]
	adds r1, r5, #0
	adds r1, #0x56
	ldr r0, _0812F3F8 @ =0x0000FFEC
	strh r0, [r1]
	movs r7, #0xc0
	lsls r7, r7, #0xc
	str r7, [r5, #0x4c]
	mov r0, sl
	str r0, [r5, #0x6c]
	movs r0, #0x50
	rsbs r0, r0, #0
	str r0, [r5, #0x70]
	adds r0, r5, #0
	adds r0, #0x74
	strh r6, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x78
	ldr r0, _0812F3FC @ =0x00001010
	strh r0, [r2]
	adds r0, r5, #0
	adds r0, #0x7a
	strh r6, [r0]
	str r6, [r5, #0x7c]
	adds r1, #0x2a
	str r6, [r1]
	adds r0, #0xa
	str r6, [r0]
	str r4, [r5, #0x40]
	str r5, [r1]
	ldrh r1, [r2]
	ldr r0, _0812F400 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r1, [sp, #8]
	str r1, [r5, #0x38]
	adds r4, #0x44
	str r6, [r4]
	adds r7, r5, #0
	adds r7, #0x8c
	str r6, [r7]
	mov r2, sb
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0812F3C0
	adds r0, r5, #0
	bl sub_08134788
	str r0, [r4]
	adds r0, r5, #0
	bl sub_08133D44
	str r0, [r7]
	adds r0, r5, #0
	bl sub_081334DC
	adds r1, r5, #0
	adds r1, #0x90
	str r0, [r1]
_0812F3C0:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812F3D0: .4byte gUnk_0837EA54
_0812F3D4: .4byte gRngVal
_0812F3D8: .4byte 0x00196225
_0812F3DC: .4byte 0x3C6EF35F
_0812F3E0: .4byte 0x05000011
_0812F3E4: .4byte 0x06010000
_0812F3E8: .4byte gUnk_083726B8
_0812F3EC: .4byte gLanguage
_0812F3F0: .4byte gUnk_0203AD3C
_0812F3F4: .4byte gUnk_0837283C
_0812F3F8: .4byte 0x0000FFEC
_0812F3FC: .4byte 0x00001010
_0812F400: .4byte 0x0000FFEF

	thumb_func_start sub_0812F404
sub_0812F404: @ 0x0812F404
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x38
	adds r7, r0, #0
	mov r8, r1
	adds r4, r3, #0
	mov r0, r8
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r2, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	ldr r2, [sp, #0x58]
	lsls r2, r2, #0x10
	str r2, [sp, #0x2c]
	lsrs r0, r2, #0x10
	str r0, [sp, #0x28]
	movs r5, #0
	str r5, [sp, #4]
	add r0, sp, #4
	adds r1, r7, #0
	ldr r2, _0812F7FC @ =0x05000011
	bl CpuSet
	ldr r1, _0812F800 @ =0x06010000
	str r1, [r7]
	movs r2, #0x90
	lsls r2, r2, #3
	strh r2, [r7, #0x14]
	ldr r1, _0812F804 @ =gUnk_083727DC
	lsls r4, r4, #2
	ldr r2, _0812F808 @ =gLanguage
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r0, r4, r0
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r0, [r2]
	lsls r0, r0, #4
	adds r4, r4, r0
	adds r4, r4, r1
	ldrb r0, [r4, #2]
	strb r0, [r7, #0x1a]
	strh r5, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	movs r0, #0x10
	strb r0, [r7, #0x1c]
	movs r1, #4
	strb r1, [r7, #0x1f]
	movs r0, #0x38
	strh r0, [r7, #0x10]
	mov r2, sb
	lsls r2, r2, #7
	str r2, [sp, #0x30]
	adds r4, r2, #0
	adds r4, #0x90
	asrs r6, r4, #2
	strh r6, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #8]
	movs r0, #0xe0
	str r0, [r7, #0x28]
	str r4, [r7, #0x2c]
	strh r5, [r7, #0x30]
	strh r5, [r7, #0x32]
	movs r1, #0x10
	strh r1, [r7, #0x34]
	strh r5, [r7, #0x36]
	str r5, [r7, #0x38]
	str r5, [r7, #0x3c]
	str r5, [r7, #0x40]
	str r5, [sp, #8]
	add r0, sp, #8
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _0812F7FC @ =0x05000011
	bl CpuSet
	ldr r2, _0812F800 @ =0x06010000
	str r2, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x58
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r0]
	ldr r2, _0812F80C @ =gUnk_083726B8
	ldr r0, _0812F808 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x50
	strh r1, [r0]
	ldr r0, _0812F808 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	adds r1, r7, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r5, [r0]
	adds r1, #1
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x60
	movs r1, #0x10
	strb r1, [r0]
	adds r0, #3
	mov r2, r8
	strb r2, [r0]
	adds r1, r7, #0
	adds r1, #0x54
	movs r0, #0x72
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x56
	strh r6, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x4c]
	movs r0, #0xe4
	lsls r0, r0, #1
	str r0, [r7, #0x6c]
	str r4, [r7, #0x70]
	adds r0, r7, #0
	adds r0, #0x74
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	movs r1, #0x10
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	str r5, [r7, #0x7c]
	adds r0, #6
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	mov r0, sp
	ldr r1, [sp, #0x28]
	bl sub_08133044
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	adds r4, r7, #0
	adds r4, #0x88
	adds r1, r4, #0
	ldr r2, _0812F7FC @ =0x05000011
	bl CpuSet
	ldr r2, _0812F800 @ =0x06010000
	str r2, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r2, _0812F808 @ =gLanguage
	ldrh r1, [r2]
	movs r2, #0x2c
	mov r8, r2
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	ldr r1, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #3]
	lsls r0, r0, #2
	ldr r2, _0812F808 @ =gLanguage
	ldrh r1, [r2]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	ldr r1, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0xa4
	strh r0, [r4, #0x10]
	ldr r1, [sp, #0x30]
	adds r1, #0x9c
	str r1, [sp, #0x34]
	asrs r1, r1, #2
	mov sl, r1
	strh r1, [r4, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #8]
	movs r0, #0xa4
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x34]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x10]
	add r0, sp, #0x10
	adds r4, #0x44
	adds r1, r4, #0
	ldr r2, _0812F7FC @ =0x05000011
	bl CpuSet
	ldr r2, _0812F800 @ =0x06010000
	str r2, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	ldr r2, _0812F808 @ =gLanguage
	ldrh r1, [r2]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	ldr r1, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #2]
	lsls r0, r0, #2
	ldr r2, _0812F808 @ =gLanguage
	ldrh r1, [r2]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	ldr r1, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0xac
	strh r0, [r4, #0x10]
	mov r1, sl
	strh r1, [r4, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #8]
	movs r0, #0xac
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x34]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x14]
	add r0, sp, #0x14
	movs r2, #0x88
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r1, r4, #0
	ldr r2, _0812F7FC @ =0x05000011
	bl CpuSet
	ldr r0, _0812F800 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	ldr r2, _0812F808 @ =gLanguage
	ldrh r0, [r2]
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	ldr r2, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r2
	ldrh r0, [r0, #0x28]
	strh r0, [r4, #0xc]
	ldr r1, _0812F808 @ =gLanguage
	ldrh r0, [r1]
	mov r2, r8
	muls r2, r0, r2
	adds r0, r2, #0
	ldr r1, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r1
	adds r0, #0x2a
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0xb4
	strh r0, [r4, #0x10]
	mov r1, sl
	strh r1, [r4, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #8]
	movs r0, #0xb4
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x34]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x18]
	add r0, sp, #0x18
	movs r2, #0xaa
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r1, r4, #0
	ldr r2, _0812F7FC @ =0x05000011
	bl CpuSet
	ldr r0, _0812F800 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	ldr r2, _0812F808 @ =gLanguage
	ldrh r1, [r2]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	ldr r1, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #2
	ldr r2, _0812F808 @ =gLanguage
	ldrh r1, [r2]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	ldr r1, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0xbc
	strh r0, [r4, #0x10]
	mov r1, sl
	strh r1, [r4, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #8]
	movs r0, #0xbc
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x34]
	str r0, [r4, #0x2c]
	movs r0, #0
	strh r0, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	str r5, [sp, #0x1c]
	add r0, sp, #0x1c
	movs r2, #0xcc
	lsls r2, r2, #1
	adds r4, r7, r2
	adds r1, r4, #0
	ldr r2, _0812F7FC @ =0x05000011
	bl CpuSet
	ldr r0, _0812F800 @ =0x06010000
	str r0, [r4]
	movs r1, #0x90
	lsls r1, r1, #3
	strh r1, [r4, #0x14]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _0812F808 @ =gLanguage
	ldrh r1, [r2]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	ldr r1, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	mov r0, sp
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r2, _0812F808 @ =gLanguage
	ldrh r1, [r2]
	mov r2, r8
	muls r2, r1, r2
	adds r1, r2, #0
	adds r0, r0, r1
	ldr r1, _0812F810 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	movs r2, #0x10
	strb r2, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0xc4
	strh r0, [r4, #0x10]
	mov r1, sl
	strh r1, [r4, #0x12]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r4, #8]
	movs r0, #0xc4
	lsls r0, r0, #2
	str r0, [r4, #0x28]
	ldr r0, [sp, #0x34]
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r1, #0x10
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add sp, #0x38
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0812F7FC: .4byte 0x05000011
_0812F800: .4byte 0x06010000
_0812F804: .4byte gUnk_083727DC
_0812F808: .4byte gLanguage
_0812F80C: .4byte gUnk_083726B8
_0812F810: .4byte gUnk_0837283C

	thumb_func_start sub_0812F814
sub_0812F814: @ 0x0812F814
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _0812F844 @ =0x05006000
	mov r0, sp
	bl CpuSet
	ldr r3, _0812F848 @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _0812F850
	ldr r0, _0812F84C @ =gUnk_083729E0
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08158334
	b _0812F866
	.align 2, 0
_0812F844: .4byte 0x05006000
_0812F848: .4byte gUnk_03002440
_0812F84C: .4byte gUnk_083729E0
_0812F850:
	ldr r1, _0812F884 @ =0x040000D4
	ldr r0, _0812F888 @ =gUnk_083729E0
	str r0, [r1]
	ldr r0, _0812F88C @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _0812F890 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_0812F866:
	ldr r0, _0812F894 @ =gUnk_08372BE0
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r0, _0812F898 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0812F8F2
	lsls r0, r0, #2
	ldr r1, _0812F89C @ =_0812F8A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0812F884: .4byte 0x040000D4
_0812F888: .4byte gUnk_083729E0
_0812F88C: .4byte gBgPalette
_0812F890: .4byte 0x80000100
_0812F894: .4byte gUnk_08372BE0
_0812F898: .4byte gLanguage
_0812F89C: .4byte _0812F8A0
_0812F8A0: @ jump table
	.4byte _0812F8B8 @ case 0
	.4byte _0812F8C0 @ case 1
	.4byte _0812F8C8 @ case 2
	.4byte _0812F8D0 @ case 3
	.4byte _0812F8D8 @ case 4
	.4byte _0812F8E8 @ case 5
_0812F8B8:
	ldr r0, _0812F8BC @ =gUnk_083744AC
	b _0812F8DA
	.align 2, 0
_0812F8BC: .4byte gUnk_083744AC
_0812F8C0:
	ldr r0, _0812F8C4 @ =gUnk_08375400
	b _0812F8DA
	.align 2, 0
_0812F8C4: .4byte gUnk_08375400
_0812F8C8:
	ldr r0, _0812F8CC @ =gUnk_08375798
	b _0812F8DA
	.align 2, 0
_0812F8CC: .4byte gUnk_08375798
_0812F8D0:
	ldr r0, _0812F8D4 @ =gUnk_08374C50
	b _0812F8DA
	.align 2, 0
_0812F8D4: .4byte gUnk_08374C50
_0812F8D8:
	ldr r0, _0812F8E4 @ =gUnk_08375064
_0812F8DA:
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	b _0812F8F2
	.align 2, 0
_0812F8E4: .4byte gUnk_08375064
_0812F8E8:
	ldr r0, _0812F90C @ =gUnk_08374890
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
_0812F8F2:
	ldr r1, _0812F910 @ =gUnk_08D61B54
	ldr r0, _0812F914 @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _0812F918 @ =0x06010000
	bl LZ77UnCompVram
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_0812F90C: .4byte gUnk_08374890
_0812F910: .4byte gUnk_08D61B54
_0812F914: .4byte gLanguage
_0812F918: .4byte 0x06010000

	thumb_func_start sub_0812F91C
sub_0812F91C: @ 0x0812F91C
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0812F980 @ =gRngVal
	movs r2, #0
	str r2, [r0]
	ldr r1, _0812F984 @ =gDispCnt
	movs r3, #0x9a
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _0812F988 @ =gBgCntRegs
	ldr r0, _0812F98C @ =0x00001C01
	strh r0, [r1]
	ldr r0, _0812F990 @ =0x00001D01
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _0812F994 @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r0, _0812F998 @ =gBgScrollRegs
	strh r2, [r0]
	strh r2, [r0, #2]
	strh r2, [r0, #4]
	strh r2, [r0, #6]
	strh r2, [r0, #8]
	strh r2, [r0, #0xa]
	ldr r0, _0812F99C @ =sub_0812FA28
	movs r1, #0xb0
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _0812F9A0 @ =sub_08133118
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _0812F9A4
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0812F9AC
	.align 2, 0
_0812F980: .4byte gRngVal
_0812F984: .4byte gDispCnt
_0812F988: .4byte gBgCntRegs
_0812F98C: .4byte 0x00001C01
_0812F990: .4byte 0x00001D01
_0812F994: .4byte gBldRegs
_0812F998: .4byte gBgScrollRegs
_0812F99C: .4byte sub_0812FA28
_0812F9A0: .4byte sub_08133118
_0812F9A4:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0812F9AC:
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _0812FA04 @ =0x010002C0
	adds r1, r5, #0
	bl CpuSet
	ldr r0, _0812FA08 @ =gUnk_0203AD14
	ldrb r1, [r0]
	ldr r2, _0812FA0C @ =0x0000057C
	adds r0, r5, r2
	strb r1, [r0]
	ldr r0, _0812FA10 @ =gUnk_0837EAF4
	bl sub_08128D48
	str r0, [r5, #0x10]
	ldr r0, _0812FA14 @ =gUnk_0837EB08
	bl sub_08128E28
	str r0, [r5, #0x14]
	ldr r0, _0812FA18 @ =gUnk_0837EC14
	bl sub_08128E28
	str r0, [r5, #0x18]
	ldr r0, _0812FA1C @ =gUnk_0837EE88
	bl sub_08128E28
	str r0, [r5, #0x1c]
	movs r3, #0xa5
	lsls r3, r3, #3
	adds r0, r5, r3
	strb r4, [r0]
	ldr r1, _0812FA20 @ =0x00000529
	adds r0, r5, r1
	strb r4, [r0]
	ldr r2, _0812FA24 @ =0x0000052A
	adds r0, r5, r2
	strb r4, [r0]
	bl m4aMPlayAllStop
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0812FA04: .4byte 0x010002C0
_0812FA08: .4byte gUnk_0203AD14
_0812FA0C: .4byte 0x0000057C
_0812FA10: .4byte gUnk_0837EAF4
_0812FA14: .4byte gUnk_0837EB08
_0812FA18: .4byte gUnk_0837EC14
_0812FA1C: .4byte gUnk_0837EE88
_0812FA20: .4byte 0x00000529
_0812FA24: .4byte 0x0000052A

	thumb_func_start sub_0812FA28
sub_0812FA28: @ 0x0812FA28
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0812FA5C @ =0xFFFFF964
	add sp, r4
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl CreatePauseFade
	ldr r0, _0812FA60 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0812FA64
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0812FA6C
	.align 2, 0
_0812FA5C: .4byte 0xFFFFF964
_0812FA60: .4byte gCurTask
_0812FA64:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0812FA6C:
	ldr r1, _0812FA90 @ =0x00000694
	add r1, sp
	str r0, [r1]
	ldr r0, _0812FA94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0812FA98 @ =sub_08130534
	str r0, [r1, #8]
	ldr r0, _0812FA9C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bls _0812FA84
	b _08130248
_0812FA84:
	lsls r0, r0, #2
	ldr r1, _0812FAA0 @ =_0812FAA4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0812FA90: .4byte 0x00000694
_0812FA94: .4byte gCurTask
_0812FA98: .4byte sub_08130534
_0812FA9C: .4byte gLanguage
_0812FAA0: .4byte _0812FAA4
_0812FAA4: @ jump table
	.4byte _0812FABC @ case 0
	.4byte _0812FC04 @ case 1
	.4byte _0812FD30 @ case 2
	.4byte _0812FE5C @ case 3
	.4byte _0812FF90 @ case 4
	.4byte _081300F4 @ case 5
_0812FABC:
	ldr r2, _0812FBF8 @ =0x06010000
	mov sb, r2
	str r2, [sp]
	mov r0, sp
	movs r4, #0
	movs r3, #0x90
	lsls r3, r3, #3
	mov r8, r3
	mov r5, r8
	strh r5, [r0, #0x14]
	ldr r1, _0812FBFC @ =0x00000347
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp, #8]
	bl sub_08155128
	add r0, sp, #0x28
	mov r1, sb
	str r1, [sp, #0x28]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x50
	mov r1, sb
	str r1, [sp, #0x50]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xd
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x78
	mov r2, sb
	str r2, [sp, #0x78]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xf
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0xa0
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	movs r1, #0xd2
	lsls r1, r1, #2
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0xc8
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r1, _0812FC00 @ =0x0000034D
	strh r1, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0xf0
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	b _08130248
	.align 2, 0
_0812FBF8: .4byte 0x06010000
_0812FBFC: .4byte 0x00000347
_0812FC00: .4byte 0x0000034D
_0812FC04:
	add r0, sp, #0x118
	ldr r2, _0812FD24 @ =0x06010000
	mov sb, r2
	str r2, [r0]
	movs r4, #0
	movs r3, #0x90
	lsls r3, r3, #3
	mov r8, r3
	mov r5, r8
	strh r5, [r0, #0x14]
	ldr r1, _0812FD28 @ =0x00000347
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x140
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x168
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xd
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x190
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xf
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x1b8
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	movs r1, #0xd2
	lsls r1, r1, #2
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x1e0
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r1, _0812FD2C @ =0x0000034D
	strh r1, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x208
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	b _081300CC
	.align 2, 0
_0812FD24: .4byte 0x06010000
_0812FD28: .4byte 0x00000347
_0812FD2C: .4byte 0x0000034D
_0812FD30:
	add r0, sp, #0x230
	ldr r2, _0812FE50 @ =0x06010000
	mov sb, r2
	str r2, [r0]
	movs r4, #0
	movs r3, #0x90
	lsls r3, r3, #3
	mov r8, r3
	mov r5, r8
	strh r5, [r0, #0x14]
	ldr r1, _0812FE54 @ =0x00000347
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x258
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x280
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xd
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x2a8
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xf
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x2d0
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	movs r1, #0xd2
	lsls r1, r1, #2
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x2f8
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r1, _0812FE58 @ =0x0000034D
	strh r1, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x320
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	b _081300CC
	.align 2, 0
_0812FE50: .4byte 0x06010000
_0812FE54: .4byte 0x00000347
_0812FE58: .4byte 0x0000034D
_0812FE5C:
	add r0, sp, #0x348
	ldr r2, _0812FF84 @ =0x06010000
	mov sb, r2
	str r2, [r0]
	movs r4, #0
	movs r3, #0x90
	lsls r3, r3, #3
	mov r8, r3
	mov r5, r8
	strh r5, [r0, #0x14]
	ldr r1, _0812FF88 @ =0x00000347
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #0
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x370
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x398
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xd
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x3c0
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xf
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x3e8
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	movs r1, #0xd2
	lsls r1, r1, #2
	strh r1, [r0, #0xc]
	movs r2, #0
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0x82
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r1, _0812FF8C @ =0x0000034D
	strh r1, [r0, #0xc]
	movs r2, #0
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0x87
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	movs r2, #0xd2
	lsls r2, r2, #2
	strh r2, [r0, #0xc]
	movs r3, #2
	strb r3, [r0, #0x1a]
	b _081300CC
	.align 2, 0
_0812FF84: .4byte 0x06010000
_0812FF88: .4byte 0x00000347
_0812FF8C: .4byte 0x0000034D
_0812FF90:
	movs r0, #0x8c
	lsls r0, r0, #3
	add r0, sp
	ldr r4, _081300E8 @ =0x06010000
	mov sb, r4
	str r4, [r0]
	movs r4, #0
	movs r5, #0x90
	lsls r5, r5, #3
	mov r8, r5
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _081300EC @ =0x00000347
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r5, #0
	strb r5, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0x91
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0x96
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xd
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0x9b
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xf
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xa0
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	movs r2, #0xd2
	lsls r2, r2, #2
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xa5
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	ldr r1, _081300F0 @ =0x0000034D
	strh r1, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xaa
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #2
	strb r2, [r0, #0x1a]
_081300CC:
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	b _08130248
	.align 2, 0
_081300E8: .4byte 0x06010000
_081300EC: .4byte 0x00000347
_081300F0: .4byte 0x0000034D
_081300F4:
	movs r0, #0xaf
	lsls r0, r0, #3
	add r0, sp
	ldr r3, _081303B4 @ =0x06010000
	mov sb, r3
	str r3, [r0]
	movs r4, #0
	movs r5, #0x90
	lsls r5, r5, #3
	mov r8, r5
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _081303B8 @ =0x00000347
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r5, #0
	strb r5, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r5, #0x10
	strb r5, [r0, #0x1c]
	movs r1, #0
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r6, #0x80
	lsls r6, r6, #0xc
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xb4
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #0xd
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xe
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #1
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xb9
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #0xc
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xd
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xbe
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #0xe
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xf
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xc3
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	movs r2, #0xd2
	lsls r2, r2, #2
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	ldr r1, _081303BC @ =0x0000034D
	strh r1, [r0, #0xc]
	movs r1, #0
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
	movs r0, #0xcd
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #2
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r5, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r6, [r0, #8]
	bl sub_08155128
_08130248:
	ldr r0, _081303C0 @ =gUnk_08376854
	ldr r1, _081303C4 @ =0x0600E000
	ldr r4, _081303C8 @ =0x04000200
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _081303CC @ =gUnk_08376054
	ldr r1, _081303D0 @ =0x0600E800
	adds r2, r4, #0
	bl CpuSet
	ldr r0, _081303D4 @ =gUnk_08375B54
	ldr r1, _081303D8 @ =0x0600F000
	ldr r2, _081303DC @ =0x04000140
	bl CpuSet
	movs r2, #0
	ldr r3, _081303E0 @ =0x00000694
	add r3, sp
	ldr r3, [r3]
	str r2, [r3]
	str r2, [r3, #4]
	str r2, [r3, #8]
	str r2, [r3, #0xc]
	movs r1, #0xf4
	lsls r1, r1, #2
	adds r0, r3, r1
	strb r2, [r0]
	ldr r4, _081303E4 @ =0x000003D1
	adds r0, r3, r4
	strb r2, [r0]
	ldr r5, _081303E8 @ =0x000003D2
	adds r0, r3, r5
	strb r2, [r0]
	adds r1, #3
	adds r0, r3, r1
	strb r2, [r0]
	ldr r4, _081303EC @ =0x0000057A
	adds r0, r3, r4
	movs r5, #0
	mov r8, r5
	strh r2, [r0]
	ldr r0, _081303F0 @ =0x0000052A
	adds r4, r3, r0
	ldrb r5, [r4]
	adds r6, r5, #0
	mov r1, r8
	strb r1, [r4]
	subs r0, #2
	adds r3, r3, r0
	mov sb, r3
	ldrh r1, [r3]
	ldr r0, _081303F4 @ =0x00000A05
	cmp r1, r0
	bne _081302D4
	ldr r0, _081303F8 @ =0x00000235
	movs r1, #0xd3
	lsls r1, r1, #3
	add r1, sp
	str r2, [r1]
	bl m4aSongNumStart
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
	movs r3, #0xd3
	lsls r3, r3, #3
	add r3, sp
	ldr r2, [r3]
_081302D4:
	movs r0, #1
	ands r5, r0
	cmp r5, #0
	beq _081302E4
	ldrb r0, [r4]
	movs r1, #1
	orrs r0, r1
	strb r0, [r4]
_081302E4:
	movs r0, #2
	ands r6, r0
	cmp r6, #0
	beq _081302F4
	ldrb r0, [r4]
	movs r1, #2
	orrs r0, r1
	strb r0, [r4]
_081302F4:
	mov r5, r8
	mov r4, sb
	strb r5, [r4]
	ldr r1, _081303E0 @ =0x00000694
	add r1, sp
	ldr r1, [r1]
	ldr r3, _081303FC @ =0x00000529
	adds r0, r1, r3
	strb r5, [r0]
	ldr r0, _08130400 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	ldr r3, _081303E0 @ =0x00000694
	add r3, sp
	ldr r3, [r3]
	ldr r4, _08130404 @ =0x00000579
	adds r0, r3, r4
	strb r1, [r0]
	adds r4, #4
	adds r0, r3, r4
	strb r1, [r0]
	ldr r5, _08130408 @ =0x0000057E
	adds r0, r3, r5
	strh r2, [r0]
	ldr r1, _081303E0 @ =0x00000694
	add r1, sp
	ldr r0, [r1]
	bl sub_081316F0
	ldr r2, _081303E0 @ =0x00000694
	add r2, sp
	ldr r0, [r2]
	adds r0, #0x20
	ldr r5, [r2]
	adds r5, #8
	ldr r3, [r2]
	ldr r1, _0813040C @ =0x0000052C
	adds r4, r3, r1
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #0
	bl sub_0812F0E0
	ldr r2, _081303E0 @ =0x00000694
	add r2, sp
	ldr r2, [r2]
	movs r3, #0x86
	lsls r3, r3, #1
	adds r0, r2, r3
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #1
	bl sub_0812F0E0
	ldr r3, _081303E0 @ =0x00000694
	add r3, sp
	ldr r3, [r3]
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r3, r1
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #2
	bl sub_0812F0E0
	ldr r1, _081303E0 @ =0x00000694
	add r1, sp
	ldr r1, [r1]
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r1, r2
	adds r1, r5, #0
	adds r2, r4, #0
	movs r3, #3
	bl sub_0812F0E0
	ldr r2, _081303E0 @ =0x00000694
	add r2, sp
	ldr r0, [r2]
	bl sub_081317FC
	ldr r3, _081303E0 @ =0x00000694
	add r3, sp
	ldr r0, [r3]
	bl sub_08132800
	ldr r0, _08130410 @ =gLanguage
	ldrh r0, [r0]
	adds r6, r5, #0
	cmp r0, #5
	bhi _08130444
	lsls r0, r0, #2
	ldr r1, _08130414 @ =_08130418
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081303B4: .4byte 0x06010000
_081303B8: .4byte 0x00000347
_081303BC: .4byte 0x0000034D
_081303C0: .4byte gUnk_08376854
_081303C4: .4byte 0x0600E000
_081303C8: .4byte 0x04000200
_081303CC: .4byte gUnk_08376054
_081303D0: .4byte 0x0600E800
_081303D4: .4byte gUnk_08375B54
_081303D8: .4byte 0x0600F000
_081303DC: .4byte 0x04000140
_081303E0: .4byte 0x00000694
_081303E4: .4byte 0x000003D1
_081303E8: .4byte 0x000003D2
_081303EC: .4byte 0x0000057A
_081303F0: .4byte 0x0000052A
_081303F4: .4byte 0x00000A05
_081303F8: .4byte 0x00000235
_081303FC: .4byte 0x00000529
_08130400: .4byte gUnk_0203AD3C
_08130404: .4byte 0x00000579
_08130408: .4byte 0x0000057E
_0813040C: .4byte 0x0000052C
_08130410: .4byte gLanguage
_08130414: .4byte _08130418
_08130418: @ jump table
	.4byte _08130430 @ case 0
	.4byte _08130430 @ case 1
	.4byte _08130430 @ case 2
	.4byte _08130430 @ case 3
	.4byte _08130430 @ case 4
	.4byte _08130430 @ case 5
_08130430:
	ldr r0, _08130514 @ =0xFFFF0000
	ands r7, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r7, r0
	ldr r0, _08130518 @ =0xFF00FFFF
	ands r7, r0
	movs r0, #0xc0
	lsls r0, r0, #0xb
	orrs r7, r0
_08130444:
	movs r0, #0xd2
	lsls r0, r0, #3
	add r0, sp
	movs r5, #0
	str r5, [r0]
	ldr r1, _0813051C @ =0x00000694
	add r1, sp
	ldr r1, [r1]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r4, r1, r2
	ldr r2, _08130520 @ =0x05000011
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _08130524 @ =0x06010000
	str r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r7, [r4, #0xc]
	lsrs r0, r7, #0x10
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r5, [r4, #0x28]
	str r5, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	ldr r2, _0813051C @ =0x00000694
	add r2, sp
	ldr r2, [r2]
	movs r3, #0x8a
	lsls r3, r3, #3
	adds r0, r2, r3
	str r6, [r0]
	movs r3, #0xae
	lsls r3, r3, #3
	adds r4, r2, r3
	ldr r5, _08130528 @ =0x00000579
	adds r3, r2, r5
	ldrb r0, [r3]
	movs r2, #0xec
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r5, _0813051C @ =0x00000694
	add r5, sp
	ldr r0, [r5]
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, [r5]
	ldr r1, _0813052C @ =0x00000574
	adds r4, r0, r1
	ldrb r0, [r3]
	adds r1, r0, #0
	muls r1, r2, r1
	ldr r0, [r5]
	adds r0, #0xfc
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r3]
	muls r0, r2, r0
	ldr r2, [r5]
	adds r0, r2, r0
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r0, r3
	ldrb r1, [r0]
	movs r4, #0xaf
	lsls r4, r4, #3
	adds r0, r2, r4
	strb r1, [r0]
	movs r0, #0x1e
	bl m4aSongNumStart
	ldr r3, _08130530 @ =0x0000069C
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08130514: .4byte 0xFFFF0000
_08130518: .4byte 0xFF00FFFF
_0813051C: .4byte 0x00000694
_08130520: .4byte 0x05000011
_08130524: .4byte 0x06010000
_08130528: .4byte 0x00000579
_0813052C: .4byte 0x00000574
_08130530: .4byte 0x0000069C

	thumb_func_start sub_08130534
sub_08130534: @ 0x08130534
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0813055C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08130560
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08130568
	.align 2, 0
_0813055C: .4byte gCurTask
_08130560:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08130568:
	adds r7, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r3, _08130940 @ =gRngVal
	ldr r0, [r3]
	ldr r2, _08130944 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08130948 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	str r0, [r4]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r4, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	str r0, [r4]
	adds r5, #0xec
	adds r4, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	str r0, [r4]
	adds r5, #0xec
	adds r4, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	str r0, [r4]
	adds r1, r7, #0
	adds r1, #0xe8
	movs r0, #0xe0
	adds r0, r0, r7
	mov sl, r0
	ldr r0, [r0]
	str r0, [r1]
	adds r1, #4
	adds r2, r7, #0
	adds r2, #0xe4
	str r2, [sp]
	ldr r0, [r2]
	str r0, [r1]
	movs r5, #0xea
	lsls r5, r5, #1
	adds r1, r7, r5
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #4
	adds r1, r7, r5
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #0xe8
	adds r1, r7, r5
	adds r2, #0xe8
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #4
	adds r1, r7, r5
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #0xe8
	adds r1, r7, r5
	adds r2, #0xe8
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r5, #4
	adds r1, r7, r5
	adds r2, #4
	adds r0, r7, r2
	ldr r0, [r0]
	str r0, [r1]
	adds r4, r7, #0
	adds r4, #0xd2
	ldrb r0, [r4]
	adds r1, r7, #0
	adds r1, #0xd3
	strb r0, [r1]
	movs r5, #0x20
	adds r5, r5, r7
	mov r8, r5
	mov r0, r8
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	strb r0, [r4]
	movs r0, #0xdf
	lsls r0, r0, #1
	adds r4, r7, r0
	ldrb r0, [r4]
	ldr r2, _0813094C @ =0x000001BF
	adds r1, r7, r2
	strb r0, [r1]
	movs r5, #0x86
	lsls r5, r5, #1
	adds r5, r5, r7
	mov sb, r5
	mov r0, sb
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	strb r0, [r4]
	ldr r0, _08130950 @ =0x000002AA
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r2, _08130954 @ =0x000002AB
	adds r0, r7, r2
	strb r1, [r0]
	movs r5, #0xfc
	lsls r5, r5, #1
	adds r6, r7, r5
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	strb r0, [r4]
	ldr r0, _08130958 @ =0x00000396
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r2, _0813095C @ =0x00000397
	adds r0, r7, r2
	strb r1, [r0]
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r5, r7, r0
	adds r0, r5, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	strb r0, [r4]
	mov r0, r8
	bl sub_08131C88
	mov r0, sb
	bl sub_08131C88
	adds r0, r6, #0
	bl sub_08131C88
	adds r0, r5, #0
	bl sub_08131C88
	mov r0, r8
	bl sub_08133164
	mov r0, sb
	bl sub_08133164
	adds r0, r6, #0
	bl sub_08133164
	adds r0, r5, #0
	bl sub_08133164
	mov r0, r8
	bl sub_0813318C
	mov r0, sb
	bl sub_0813318C
	adds r0, r6, #0
	bl sub_0813318C
	adds r0, r5, #0
	bl sub_0813318C
	mov r0, r8
	bl sub_08131D54
	mov r0, sb
	bl sub_08131D54
	adds r0, r6, #0
	bl sub_08131D54
	adds r0, r5, #0
	bl sub_08131D54
	mov r0, r8
	bl sub_08131F78
	mov r0, sb
	bl sub_08131F78
	adds r0, r6, #0
	bl sub_08131F78
	adds r0, r5, #0
	bl sub_08131F78
	ldr r2, _08130960 @ =0x0000045C
	adds r1, r7, r2
	adds r2, #0xc8
	adds r0, r7, r2
	ldrb r2, [r0]
	mov r0, r8
	bl sub_08132034
	mov r0, r8
	bl sub_08132350
	mov r0, sb
	bl sub_08132350
	adds r0, r6, #0
	bl sub_08132350
	adds r0, r5, #0
	bl sub_08132350
	mov r0, r8
	bl sub_08132540
	mov r0, sb
	bl sub_08132540
	adds r0, r6, #0
	bl sub_08132540
	adds r0, r5, #0
	bl sub_08132540
	adds r4, r7, #0
	adds r4, #8
	mov r0, r8
	adds r1, r4, #0
	bl sub_081331F0
	mov r0, sb
	adds r1, r4, #0
	bl sub_081331F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_081331F0
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_081331F0
	ldr r5, _08130964 @ =0x00000579
	adds r3, r7, r5
	ldrb r0, [r3]
	movs r4, #0xec
	adds r2, r0, #0
	muls r2, r4, r2
	adds r0, r7, r2
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08130848
	mov r1, sl
	adds r0, r1, r2
	ldr r0, [r0]
	rsbs r0, r0, #0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r0, r2
	str r0, [r7, #8]
	ldrb r0, [r3]
	muls r0, r4, r0
	ldr r5, [sp]
	adds r1, r5, r0
	ldr r1, [r1]
	rsbs r1, r1, #0
	adds r0, r7, r0
	adds r0, #0xf0
	movs r2, #0
	ldrsh r0, [r0, r2]
	subs r1, r1, r0
	movs r5, #0xa0
	lsls r5, r5, #1
	adds r0, r1, r5
	str r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _081307BA
	ldr r1, _08130968 @ =0xFFFFFE80
	cmp r0, r1
	bge _081307BC
_081307BA:
	str r1, [r7, #0xc]
_081307BC:
	movs r0, #0xae
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, _08130964 @ =0x00000579
	adds r3, r7, r1
	ldrb r0, [r3]
	movs r2, #0xec
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r5, _0813096C @ =0x00000574
	adds r4, r7, r5
	ldrb r0, [r3]
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xfc
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r0, r7, r2
	strb r1, [r0]
	ldr r2, _08130970 @ =gBgScrollRegs
	movs r0, #7
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #2]
	ldr r0, [r7, #8]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	rsbs r0, r0, #0
	strh r0, [r2, #4]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #6]
	ldr r0, _08130974 @ =gUnk_03000530
	str r7, [r0]
	ldr r3, _08130978 @ =gUnk_03002470
	ldr r2, _0813097C @ =gUnk_03006070
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08130980 @ =sub_08132AC8
	str r1, [r0]
	ldr r2, _08130984 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
_08130848:
	adds r0, r7, #0
	bl sub_08132888
	adds r0, r7, #0
	adds r0, #0x20
	bl sub_08133248
	movs r5, #0x86
	lsls r5, r5, #1
	adds r0, r7, r5
	bl sub_08133248
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r0, r7, r1
	bl sub_08133248
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r0, r7, r2
	bl sub_08133248
	adds r0, r7, #0
	bl sub_081325A4
	adds r0, r7, #0
	adds r0, #0xe0
	movs r5, #0xad
	lsls r5, r5, #3
	adds r1, r7, r5
	ldr r0, [r0]
	ldr r1, [r1]
	cmp r0, r1
	bgt _0813088E
	b _081309A0
_0813088E:
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, r1
	bgt _0813089C
	b _081309A0
_0813089C:
	movs r5, #0xae
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r1
	ble _081309A0
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r0, [r0]
	cmp r0, r1
	ble _081309A0
	ldr r5, _08130988 @ =0x0000052A
	adds r0, r7, r5
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081308F8
	adds r3, r7, #0
	adds r3, #0x98
	ldrh r2, [r3]
	ldr r1, _0813098C @ =0x0000EFFF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r0, #0xc2
	lsls r0, r0, #1
	adds r3, r7, r0
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r2, #0x9c
	lsls r2, r2, #2
	adds r3, r7, r2
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r5, #0xd7
	lsls r5, r5, #2
	adds r2, r7, r5
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_081308F8:
	adds r3, r7, #0
	adds r3, #0xb4
	ldrh r2, [r3]
	ldr r1, _08130990 @ =0x0000FFEF
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r0, #0xd0
	lsls r0, r0, #1
	adds r3, r7, r0
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r2, #0xa3
	lsls r2, r2, #2
	adds r3, r7, r2
	ldrh r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	strh r0, [r3]
	movs r5, #0xde
	lsls r5, r5, #2
	adds r2, r7, r5
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
	bl sub_081343EC
	ldr r0, _08130994 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08130998 @ =sub_081309B0
	str r0, [r1, #8]
	movs r0, #0x1d
	b _0813099C
	.align 2, 0
_08130940: .4byte gRngVal
_08130944: .4byte 0x00196225
_08130948: .4byte 0x3C6EF35F
_0813094C: .4byte 0x000001BF
_08130950: .4byte 0x000002AA
_08130954: .4byte 0x000002AB
_08130958: .4byte 0x00000396
_0813095C: .4byte 0x00000397
_08130960: .4byte 0x0000045C
_08130964: .4byte 0x00000579
_08130968: .4byte 0xFFFFFE80
_0813096C: .4byte 0x00000574
_08130970: .4byte gBgScrollRegs
_08130974: .4byte gUnk_03000530
_08130978: .4byte gUnk_03002470
_0813097C: .4byte gUnk_03006070
_08130980: .4byte sub_08132AC8
_08130984: .4byte gUnk_03002440
_08130988: .4byte 0x0000052A
_0813098C: .4byte 0x0000EFFF
_08130990: .4byte 0x0000FFEF
_08130994: .4byte gCurTask
_08130998: .4byte sub_081309B0
_0813099C:
	bl m4aSongNumStart
_081309A0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081309B0
sub_081309B0: @ 0x081309B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _081309D8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081309DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081309E4
	.align 2, 0
_081309D8: .4byte gCurTask
_081309DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081309E4:
	adds r7, r0, #0
	movs r0, #0xfa
	lsls r0, r0, #1
	adds r4, r7, r0
	ldr r3, _08130CD0 @ =gRngVal
	ldr r0, [r3]
	ldr r2, _08130CD4 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _08130CD8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r3]
	str r0, [r4]
	movs r5, #0xb8
	lsls r5, r5, #2
	adds r4, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	str r0, [r4]
	adds r5, #0xec
	adds r4, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	str r0, [r4]
	adds r5, #0xec
	adds r4, r7, r5
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	str r0, [r4]
	adds r1, r7, #0
	adds r1, #0xe8
	adds r5, r7, #0
	adds r5, #0xe0
	ldr r0, [r5]
	str r0, [r1]
	adds r1, #4
	adds r0, r7, #0
	adds r0, #0xe4
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xea
	lsls r0, r0, #1
	adds r1, r7, r0
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r2, r7, r2
	str r2, [sp]
	ldr r0, [r2]
	str r0, [r1]
	movs r3, #0xec
	lsls r3, r3, #1
	adds r1, r7, r3
	movs r4, #0xe8
	lsls r4, r4, #1
	adds r0, r7, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xb0
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r2, #0xae
	lsls r2, r2, #2
	adds r2, r7, r2
	str r2, [sp, #4]
	ldr r0, [r2]
	str r0, [r1]
	adds r3, #0xec
	adds r1, r7, r3
	adds r4, #0xec
	adds r0, r7, r4
	ldr r0, [r0]
	str r0, [r1]
	movs r0, #0xeb
	lsls r0, r0, #2
	adds r1, r7, r0
	movs r2, #0xe9
	lsls r2, r2, #2
	adds r2, r7, r2
	str r2, [sp, #8]
	ldr r0, [r2]
	str r0, [r1]
	adds r3, #0xec
	adds r1, r7, r3
	adds r4, #0xec
	adds r0, r7, r4
	ldr r0, [r0]
	str r0, [r1]
	ldr r1, _08130CDC @ =0x0000045C
	adds r0, r7, r1
	ldr r2, _08130CE0 @ =0x00000524
	adds r1, r7, r2
	ldrb r1, [r1]
	bl sub_08131948
	adds r0, r7, #0
	bl sub_081315AC
	movs r3, #0x20
	adds r3, r3, r7
	mov sl, r3
	mov r0, sl
	bl sub_081319BC
	movs r4, #0x86
	lsls r4, r4, #1
	adds r4, r4, r7
	mov sb, r4
	mov r0, sb
	bl sub_081319BC
	movs r0, #0xfc
	lsls r0, r0, #1
	adds r0, r0, r7
	mov r8, r0
	bl sub_081319BC
	movs r1, #0xb9
	lsls r1, r1, #2
	adds r6, r7, r1
	adds r0, r6, #0
	bl sub_081319BC
	adds r4, r7, #0
	adds r4, #0xd2
	ldrb r0, [r4]
	adds r1, r7, #0
	adds r1, #0xd3
	strb r0, [r1]
	mov r0, sl
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	strb r0, [r4]
	movs r2, #0xdf
	lsls r2, r2, #1
	adds r4, r7, r2
	ldrb r0, [r4]
	ldr r3, _08130CE4 @ =0x000001BF
	adds r1, r7, r3
	strb r0, [r1]
	mov r0, sb
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	strb r0, [r4]
	ldr r0, _08130CE8 @ =0x000002AA
	adds r4, r7, r0
	ldrb r1, [r4]
	ldr r2, _08130CEC @ =0x000002AB
	adds r0, r7, r2
	strb r1, [r0]
	mov r0, r8
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	strb r0, [r4]
	ldr r3, _08130CF0 @ =0x00000396
	adds r4, r7, r3
	ldrb r1, [r4]
	ldr r2, _08130CF4 @ =0x00000397
	adds r0, r7, r2
	strb r1, [r0]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	strb r0, [r4]
	mov r0, sl
	bl sub_08131A6C
	mov r0, sb
	bl sub_08131A6C
	mov r0, r8
	bl sub_08131A6C
	adds r0, r6, #0
	bl sub_08131A6C
	mov r0, sl
	bl sub_08131C20
	mov r0, sb
	bl sub_08131C20
	mov r0, r8
	bl sub_08131C20
	adds r0, r6, #0
	bl sub_08131C20
	mov r0, sl
	bl sub_08131C88
	mov r0, sb
	bl sub_08131C88
	mov r0, r8
	bl sub_08131C88
	adds r0, r6, #0
	bl sub_08131C88
	mov r0, sl
	bl sub_08133164
	mov r0, sb
	bl sub_08133164
	mov r0, r8
	bl sub_08133164
	adds r0, r6, #0
	bl sub_08133164
	mov r0, sl
	bl sub_0813318C
	mov r0, sb
	bl sub_0813318C
	mov r0, r8
	bl sub_0813318C
	adds r0, r6, #0
	bl sub_0813318C
	ldr r3, _08130CF8 @ =0x0000056C
	adds r2, r7, r3
	ldr r1, [r5]
	ldr r0, [r2]
	cmp r1, r0
	ble _08130BCA
	adds r0, r7, #0
	adds r0, #0xc8
	movs r4, #0
	strh r4, [r0]
_08130BCA:
	ldr r5, [sp]
	ldr r1, [r5]
	ldr r0, [r2]
	cmp r1, r0
	ble _08130BDE
	movs r1, #0xda
	lsls r1, r1, #1
	adds r0, r7, r1
	movs r3, #0
	strh r3, [r0]
_08130BDE:
	ldr r4, [sp, #4]
	ldr r1, [r4]
	ldr r0, [r2]
	cmp r1, r0
	ble _08130BF2
	movs r5, #0xa8
	lsls r5, r5, #2
	adds r0, r7, r5
	movs r1, #0
	strh r1, [r0]
_08130BF2:
	ldr r3, [sp, #8]
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	ble _08130C06
	movs r4, #0xe3
	lsls r4, r4, #2
	adds r0, r7, r4
	movs r5, #0
	strh r5, [r0]
_08130C06:
	mov r0, sl
	bl sub_08131D54
	mov r0, sb
	bl sub_08131D54
	mov r0, r8
	bl sub_08131D54
	adds r0, r6, #0
	bl sub_08131D54
	ldr r1, _08130CFC @ =0x00000579
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r2, r7, r0
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08130C50
	movs r3, #0x83
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	cmp r0, #0
	bne _08130C50
	bl sub_0813457C
	str r0, [r7]
	movs r0, #0x1f
	bl m4aSongNumStart
_08130C50:
	movs r4, #0x20
	adds r4, r4, r7
	mov r8, r4
	ldr r5, _08130D00 @ =0x0000057A
	adds r4, r7, r5
	ldrh r1, [r4]
	mov r0, r8
	bl sub_081331CC
	movs r0, #0x86
	lsls r0, r0, #1
	adds r0, r0, r7
	mov sb, r0
	ldrh r1, [r4]
	bl sub_081331CC
	movs r1, #0xfc
	lsls r1, r1, #1
	adds r6, r7, r1
	ldrh r1, [r4]
	adds r0, r6, #0
	bl sub_081331CC
	movs r2, #0xb9
	lsls r2, r2, #2
	adds r5, r7, r2
	ldrh r1, [r4]
	adds r0, r5, #0
	bl sub_081331CC
	mov r0, r8
	bl sub_08131F78
	mov r0, sb
	bl sub_08131F78
	adds r0, r6, #0
	bl sub_08131F78
	adds r0, r5, #0
	bl sub_08131F78
	ldr r3, _08130CFC @ =0x00000579
	adds r0, r7, r3
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	mov sl, r8
	cmp r0, #0
	beq _08130D04
	ldr r4, _08130CDC @ =0x0000045C
	adds r1, r7, r4
	ldr r5, _08130CE0 @ =0x00000524
	adds r0, r7, r5
	ldrb r2, [r0]
	mov r0, sl
	bl sub_08132160
	b _08130D14
	.align 2, 0
_08130CD0: .4byte gRngVal
_08130CD4: .4byte 0x00196225
_08130CD8: .4byte 0x3C6EF35F
_08130CDC: .4byte 0x0000045C
_08130CE0: .4byte 0x00000524
_08130CE4: .4byte 0x000001BF
_08130CE8: .4byte 0x000002AA
_08130CEC: .4byte 0x000002AB
_08130CF0: .4byte 0x00000396
_08130CF4: .4byte 0x00000397
_08130CF8: .4byte 0x0000056C
_08130CFC: .4byte 0x00000579
_08130D00: .4byte 0x0000057A
_08130D04:
	ldr r0, _08130E54 @ =0x0000045C
	adds r1, r7, r0
	ldr r2, _08130E58 @ =0x00000524
	adds r0, r7, r2
	ldrb r2, [r0]
	mov r0, sl
	bl sub_08132034
_08130D14:
	ldr r3, _08130E54 @ =0x0000045C
	adds r5, r7, r3
	ldr r0, _08130E58 @ =0x00000524
	adds r4, r7, r0
	ldrb r2, [r4]
	mov r0, sl
	adds r1, r5, #0
	bl sub_08132280
	movs r1, #0x86
	lsls r1, r1, #1
	adds r1, r1, r7
	mov sb, r1
	ldrb r2, [r4]
	mov r0, sb
	adds r1, r5, #0
	bl sub_08132280
	movs r2, #0xfc
	lsls r2, r2, #1
	adds r2, r2, r7
	mov r8, r2
	ldrb r2, [r4]
	mov r0, r8
	adds r1, r5, #0
	bl sub_08132280
	movs r3, #0xb9
	lsls r3, r3, #2
	adds r6, r7, r3
	ldrb r2, [r4]
	adds r0, r6, #0
	adds r1, r5, #0
	bl sub_08132280
	mov r0, sl
	bl sub_08132350
	mov r0, sb
	bl sub_08132350
	mov r0, r8
	bl sub_08132350
	adds r0, r6, #0
	bl sub_08132350
	mov r0, sl
	bl sub_08132498
	mov r0, sb
	bl sub_08132498
	mov r0, r8
	bl sub_08132498
	adds r0, r6, #0
	bl sub_08132498
	mov r0, sl
	bl sub_08132540
	mov r0, sb
	bl sub_08132540
	mov r0, r8
	bl sub_08132540
	adds r0, r6, #0
	bl sub_08132540
	adds r4, r7, #0
	adds r4, #8
	mov r0, sl
	adds r1, r4, #0
	bl sub_081331F0
	mov r0, sb
	adds r1, r4, #0
	bl sub_081331F0
	mov r0, r8
	adds r1, r4, #0
	bl sub_081331F0
	adds r0, r6, #0
	adds r1, r4, #0
	bl sub_081331F0
	ldr r4, _08130E5C @ =0x00000579
	adds r5, r7, r4
	ldrb r0, [r5]
	movs r3, #0xec
	adds r4, r0, #0
	muls r4, r3, r4
	adds r2, r7, r4
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r6, #0x20
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08130DE6
	b _08130F78
_08130DE6:
	adds r0, r2, #0
	adds r0, #0xb8
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08130E22
	ldr r5, _08130E60 @ =0x0000057D
	adds r1, r7, r5
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08130E0C
	movs r0, #0
	strb r0, [r1]
_08130E0C:
	ldrb r0, [r1]
	muls r0, r3, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _08130EA8
	ldr r0, _08130E64 @ =0xFFFFFE80
	str r0, [r7, #0xc]
_08130E22:
	ldr r1, _08130E60 @ =0x0000057D
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08130EA8
	ldr r2, _08130E68 @ =0x0000057C
	adds r0, r7, r2
	ldrb r0, [r0]
	cmp r0, #1
	beq _08130E88
	cmp r0, #1
	bgt _08130E6C
	cmp r0, #0
	beq _08130E78
	movs r3, #0xe0
	adds r3, r3, r7
	b _08130EE4
	.align 2, 0
_08130E54: .4byte 0x0000045C
_08130E58: .4byte 0x00000524
_08130E5C: .4byte 0x00000579
_08130E60: .4byte 0x0000057D
_08130E64: .4byte 0xFFFFFE80
_08130E68: .4byte 0x0000057C
_08130E6C:
	cmp r0, #2
	beq _08130E98
	movs r4, #0xe0
	adds r4, r4, r7
	mov r8, r4
	b _08130EE6
_08130E78:
	ldr r0, _08130E84 @ =0xFFFF738B
	str r0, [r7, #8]
	movs r5, #0xe0
	adds r5, r5, r7
	mov r8, r5
	b _08130EE6
	.align 2, 0
_08130E84: .4byte 0xFFFF738B
_08130E88:
	ldr r0, _08130E94 @ =0xFFFF4B90
	str r0, [r7, #8]
	movs r0, #0xe0
	adds r0, r0, r7
	mov r8, r0
	b _08130EE6
	.align 2, 0
_08130E94: .4byte 0xFFFF4B90
_08130E98:
	ldr r0, _08130EA4 @ =0xFFFF238C
	str r0, [r7, #8]
	movs r1, #0xe0
	adds r1, r1, r7
	mov r8, r1
	b _08130EE6
	.align 2, 0
_08130EA4: .4byte 0xFFFF238C
_08130EA8:
	ldr r3, _08130F64 @ =0x0000057D
	adds r2, r7, r3
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	adds r3, r7, #0
	adds r3, #0xe0
	adds r0, r3, r0
	ldr r0, [r0]
	rsbs r0, r0, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r7, #8]
	ldrb r0, [r2]
	muls r1, r0, r1
	adds r0, r7, #0
	adds r0, #0xe4
	adds r0, r0, r1
	ldr r0, [r0]
	rsbs r0, r0, #0
	adds r1, r7, r1
	adds r1, #0xf0
	movs r5, #0
	ldrsh r1, [r1, r5]
	subs r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7, #0xc]
_08130EE4:
	mov r8, r3
_08130EE6:
	ldr r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08130EF6
	ldr r1, _08130F68 @ =0xFFFFFE80
	cmp r0, r1
	bge _08130EF8
_08130EF6:
	str r1, [r7, #0xc]
_08130EF8:
	movs r2, #0xae
	lsls r2, r2, #3
	adds r6, r7, r2
	ldr r4, _08130F64 @ =0x0000057D
	adds r3, r7, r4
	ldrb r0, [r3]
	movs r2, #0xec
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r6]
	ldr r0, _08130F6C @ =0x00000574
	adds r5, r7, r0
	ldrb r0, [r3]
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xfc
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r5]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r4, r7, r1
	strb r0, [r4]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08130F5E
	ldr r1, _08130F70 @ =gUnk_0837EA54
	ldr r0, [r1, #0x2c]
	str r0, [r6]
	ldr r0, [r1]
	str r0, [r5]
	movs r0, #0x24
	strb r0, [r4]
_08130F5E:
	ldr r2, _08130F74 @ =gBgScrollRegs
	ldrb r1, [r4]
	b _08131006
	.align 2, 0
_08130F64: .4byte 0x0000057D
_08130F68: .4byte 0xFFFFFE80
_08130F6C: .4byte 0x00000574
_08130F70: .4byte gUnk_0837EA54
_08130F74: .4byte gBgScrollRegs
_08130F78:
	adds r2, r7, #0
	adds r2, #0xe0
	adds r0, r2, r4
	ldr r0, [r0]
	rsbs r0, r0, #0
	movs r4, #0x80
	lsls r4, r4, #1
	adds r0, r0, r4
	str r0, [r7, #8]
	ldrb r0, [r5]
	adds r1, r0, #0
	muls r1, r3, r1
	adds r0, r7, #0
	adds r0, #0xe4
	adds r0, r0, r1
	ldr r0, [r0]
	rsbs r0, r0, #0
	adds r1, r7, r1
	adds r1, #0xf0
	movs r5, #0
	ldrsh r1, [r1, r5]
	subs r0, r0, r1
	movs r1, #0xa0
	lsls r1, r1, #1
	adds r0, r0, r1
	str r0, [r7, #0xc]
	movs r1, #0x20
	rsbs r1, r1, #0
	mov r8, r2
	cmp r0, r1
	bgt _08130FBC
	ldr r1, _08131168 @ =0xFFFFFE80
	cmp r0, r1
	bge _08130FBE
_08130FBC:
	str r1, [r7, #0xc]
_08130FBE:
	movs r2, #0xae
	lsls r2, r2, #3
	adds r4, r7, r2
	ldr r5, _0813116C @ =0x00000579
	adds r3, r7, r5
	ldrb r0, [r3]
	movs r2, #0xec
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xf8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldr r0, _08131170 @ =0x00000574
	adds r4, r7, r0
	ldrb r0, [r3]
	adds r1, r0, #0
	muls r1, r2, r1
	adds r0, r7, #0
	adds r0, #0xfc
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r4]
	ldrb r0, [r3]
	muls r0, r2, r0
	adds r0, r7, r0
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r0, r1
	ldrb r1, [r0]
	movs r2, #0xaf
	lsls r2, r2, #3
	adds r0, r7, r2
	strb r1, [r0]
	ldr r2, _08131174 @ =gBgScrollRegs
_08131006:
	movs r0, #7
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #2]
	ldr r0, [r7, #8]
	asrs r0, r0, #3
	movs r1, #0xff
	ands r0, r1
	rsbs r0, r0, #0
	strh r0, [r2, #4]
	ldr r0, [r7, #0xc]
	asrs r0, r0, #2
	rsbs r0, r0, #0
	strh r0, [r2, #6]
	ldr r0, _08131178 @ =gUnk_03000530
	str r7, [r0]
	ldr r3, _0813117C @ =gUnk_03002470
	ldr r2, _08131180 @ =gUnk_03006070
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _08131184 @ =sub_08132AC8
	str r1, [r0]
	ldr r2, _08131188 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	adds r0, r7, #0
	bl sub_08132650
	mov r0, sl
	bl sub_08133280
	movs r3, #0x86
	lsls r3, r3, #1
	adds r6, r7, r3
	adds r0, r6, #0
	bl sub_08133280
	movs r4, #0xfc
	lsls r4, r4, #1
	adds r5, r7, r4
	adds r0, r5, #0
	bl sub_08133280
	movs r0, #0xb9
	lsls r0, r0, #2
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_08133280
	adds r0, r7, #0
	bl sub_08132888
	mov r0, sl
	bl sub_08133248
	adds r0, r6, #0
	bl sub_08133248
	adds r0, r5, #0
	bl sub_08133248
	adds r0, r4, #0
	bl sub_08133248
	adds r0, r7, #0
	bl sub_081325A4
	ldr r1, _0813118C @ =0x0000056C
	adds r0, r7, r1
	mov r2, r8
	ldr r1, [r2]
	ldr r2, [r0]
	cmp r1, r2
	ble _0813114C
	movs r3, #0xe6
	lsls r3, r3, #1
	adds r0, r7, r3
	ldr r0, [r0]
	cmp r0, r2
	ble _0813114C
	movs r4, #0xae
	lsls r4, r4, #2
	adds r0, r7, r4
	ldr r0, [r0]
	cmp r0, r2
	ble _0813114C
	movs r5, #0xe9
	lsls r5, r5, #2
	adds r0, r7, r5
	ldr r0, [r0]
	cmp r0, r2
	ble _0813114C
	ldr r0, [r7]
	bl TaskDestroy
	movs r0, #0
	mov sl, r0
	str r0, [r7]
	ldr r1, _0813116C @ =0x00000579
	adds r1, r1, r7
	mov sb, r1
	ldrb r0, [r1]
	movs r6, #0xec
	muls r0, r6, r0
	movs r2, #0xa8
	adds r2, r2, r7
	mov r8, r2
	add r0, r8
	ldr r0, [r0]
	bl TaskDestroy
	mov r3, sb
	ldrb r0, [r3]
	muls r0, r6, r0
	adds r5, r7, #0
	adds r5, #0xac
	adds r0, r5, r0
	ldr r0, [r0]
	bl TaskDestroy
	mov r4, sb
	ldrb r0, [r4]
	muls r0, r6, r0
	adds r4, r7, #0
	adds r4, #0xb0
	adds r0, r4, r0
	ldr r0, [r0]
	bl TaskDestroy
	mov r1, sb
	ldrb r0, [r1]
	muls r0, r6, r0
	add r8, r0
	mov r2, sl
	mov r3, r8
	str r2, [r3]
	ldrb r0, [r1]
	muls r0, r6, r0
	adds r5, r5, r0
	str r2, [r5]
	ldrb r0, [r1]
	muls r0, r6, r0
	adds r4, r4, r0
	str r2, [r4]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
	ldr r0, _08131190 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08131194 @ =sub_0813119C
	str r0, [r1, #8]
	bl m4aMPlayAllStop
_0813114C:
	ldr r4, _08131198 @ =0x0000057A
	adds r1, r7, r4
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08131168: .4byte 0xFFFFFE80
_0813116C: .4byte 0x00000579
_08131170: .4byte 0x00000574
_08131174: .4byte gBgScrollRegs
_08131178: .4byte gUnk_03000530
_0813117C: .4byte gUnk_03002470
_08131180: .4byte gUnk_03006070
_08131184: .4byte sub_08132AC8
_08131188: .4byte gUnk_03002440
_0813118C: .4byte 0x0000056C
_08131190: .4byte gCurTask
_08131194: .4byte sub_0813119C
_08131198: .4byte 0x0000057A

	thumb_func_start sub_0813119C
sub_0813119C: @ 0x0813119C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r0, _081311C0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081311C4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081311CC
	.align 2, 0
_081311C0: .4byte gCurTask
_081311C4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081311CC:
	adds r7, r0, #0
	bl sub_0812A304
	adds r6, r0, #0
	cmp r6, #0
	beq _081311DA
	b _0813133E
_081311DA:
	ldr r1, _081312D8 @ =gBgScrollRegs
	movs r4, #0
	strh r6, [r1, #4]
	movs r0, #0x50
	strh r0, [r1, #6]
	subs r0, #0x60
	movs r1, #1
	bl CreatePauseFade
	ldr r0, _081312DC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _081312E0 @ =sub_0813134C
	str r0, [r1, #8]
	adds r3, r7, #0
	adds r3, #0xf8
	ldr r0, _081312E4 @ =gUnk_0837EA54
	ldr r2, [r0, #0x30]
	str r2, [r3]
	movs r1, #0xfc
	adds r1, r1, r7
	mov ip, r1
	ldr r1, [r0]
	mov r5, ip
	str r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #1
	mov r8, r0
	adds r0, r7, r0
	strb r4, [r0]
	movs r5, #0xf2
	lsls r5, r5, #1
	adds r0, r7, r5
	str r2, [r0]
	adds r5, #4
	adds r0, r7, r5
	str r1, [r0]
	adds r5, #4
	adds r0, r7, r5
	strb r4, [r0]
	adds r5, #0xe4
	adds r0, r7, r5
	str r2, [r0]
	adds r5, #4
	adds r0, r7, r5
	str r1, [r0]
	adds r5, #4
	adds r0, r7, r5
	strb r4, [r0]
	adds r5, #0xe4
	adds r0, r7, r5
	str r2, [r0]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r7, r2
	str r1, [r0]
	adds r5, #8
	adds r0, r7, r5
	strb r4, [r0]
	movs r0, #0xae
	lsls r0, r0, #3
	adds r4, r7, r0
	ldr r1, _081312E8 @ =0x00000579
	adds r2, r7, r1
	ldrb r0, [r2]
	movs r1, #0xec
	muls r0, r1, r0
	adds r3, r3, r0
	ldr r0, [r3]
	str r0, [r4]
	ldr r4, _081312EC @ =0x00000574
	adds r3, r7, r4
	ldrb r0, [r2]
	muls r0, r1, r0
	mov r4, ip
	adds r5, r4, r0
	ldr r0, [r5]
	str r0, [r3]
	ldrb r0, [r2]
	muls r0, r1, r0
	adds r0, r7, r0
	add r0, r8
	ldrb r1, [r0]
	movs r5, #0xaf
	lsls r5, r5, #3
	adds r0, r7, r5
	strb r1, [r0]
	ldr r0, _081312F0 @ =gUnk_03000530
	str r7, [r0]
	ldr r3, _081312F4 @ =gUnk_03002470
	ldr r2, _081312F8 @ =gUnk_03006070
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _081312FC @ =sub_08132AC8
	str r1, [r0]
	ldr r1, _08131300 @ =gUnk_03002440
	ldr r0, [r1]
	movs r4, #0x10
	orrs r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl sub_081326F8
	ldr r0, _08131304 @ =sub_08132B84
	movs r1, #0x84
	lsls r1, r1, #4
	str r6, [sp]
	mov r2, r8
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	str r1, [r7]
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _08131308
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08131310
	.align 2, 0
_081312D8: .4byte gBgScrollRegs
_081312DC: .4byte gCurTask
_081312E0: .4byte sub_0813134C
_081312E4: .4byte gUnk_0837EA54
_081312E8: .4byte 0x00000579
_081312EC: .4byte 0x00000574
_081312F0: .4byte gUnk_03000530
_081312F4: .4byte gUnk_03002470
_081312F8: .4byte gUnk_03006070
_081312FC: .4byte sub_08132AC8
_08131300: .4byte gUnk_03002440
_08131304: .4byte sub_08132B84
_08131308:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08131310:
	str r7, [r0]
	ldr r1, _08131330 @ =0x00000579
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, r7, r0
	ldr r2, _08131334 @ =0x00000105
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	bne _08131338
	movs r0, #0x21
	bl m4aSongNumStart
	b _0813133E
	.align 2, 0
_08131330: .4byte 0x00000579
_08131334: .4byte 0x00000105
_08131338:
	movs r0, #0x20
	bl m4aSongNumStart
_0813133E:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813134C
sub_0813134C: @ 0x0813134C
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _0813136C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08131370
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08131378
	.align 2, 0
_0813136C: .4byte gCurTask
_08131370:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08131378:
	adds r5, r0, #0
	bl sub_0812A304
	cmp r0, #0
	beq _08131384
	b _081314B8
_08131384:
	ldr r2, [r5, #4]
	cmp r2, #0
	bne _0813144C
	ldr r0, _081313A0 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _081313A8
	ldr r0, _081313A4 @ =gUnk_020382D0
	ldrh r2, [r0, #0x10]
	ldrh r1, [r0, #8]
	b _081313B0
	.align 2, 0
_081313A0: .4byte gUnk_0203AD10
_081313A4: .4byte gUnk_020382D0
_081313A8:
	ldr r0, _081313D8 @ =gPressedKeys
	ldrh r2, [r0]
	ldr r0, _081313DC @ =gInput
	ldrh r1, [r0]
_081313B0:
	movs r3, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08131418
	ldr r0, _081313E0 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	cmp r2, #0
	beq _081313EC
	ldr r0, _081313E4 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _081313E8 @ =gUnk_08372628
	adds r0, r0, r1
	movs r1, #0x50
	str r1, [sp]
	str r3, [sp, #4]
	b _08131400
	.align 2, 0
_081313D8: .4byte gPressedKeys
_081313DC: .4byte gInput
_081313E0: .4byte gUnk_0203AD3C
_081313E4: .4byte gLanguage
_081313E8: .4byte gUnk_08372628
_081313EC:
	ldr r0, _08131410 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08131414 @ =gUnk_08372628
	adds r0, r0, r1
	movs r1, #0x50
	str r1, [sp]
	str r2, [sp, #4]
_08131400:
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_08128F44
	str r0, [r5, #4]
	b _081314B8
	.align 2, 0
_08131410: .4byte gLanguage
_08131414: .4byte gUnk_08372628
_08131418:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _081314B8
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08131432
	movs r0, #0xa5
	lsls r0, r0, #3
	adds r1, r5, r0
	b _08131440
_08131432:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r2, r0
	cmp r2, #0
	beq _081314B8
	ldr r2, _08131448 @ =0x00000529
	adds r1, r5, r2
_08131440:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _081314B8
	.align 2, 0
_08131448: .4byte 0x00000529
_0813144C:
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08131462
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _0813146A
_08131462:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_0813146A:
	adds r0, r4, #0
	bl sub_0812A328
	cmp r0, #0
	beq _081314B8
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
	ldr r1, _081314A0 @ =0x000002AD
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _081314A4 @ =0x0000057C
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081314B0
	ldr r0, _081314A8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _081314AC @ =sub_081314C8
	b _081314B6
	.align 2, 0
_081314A0: .4byte 0x000002AD
_081314A4: .4byte 0x0000057C
_081314A8: .4byte gCurTask
_081314AC: .4byte sub_081314C8
_081314B0:
	ldr r0, _081314C0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _081314C4 @ =sub_08131524
_081314B6:
	str r0, [r1, #8]
_081314B8:
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081314C0: .4byte gCurTask
_081314C4: .4byte sub_08131524

	thumb_func_start sub_081314C8
sub_081314C8: @ 0x081314C8
	push {r4, r5, lr}
	ldr r0, _081314E4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081314E8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081314F0
	.align 2, 0
_081314E4: .4byte gCurTask
_081314E8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081314F0:
	bl sub_0812A304
	adds r5, r0, #0
	cmp r5, #0
	bne _08131516
	bl m4aMPlayAllStop
	ldr r0, _0813151C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08131520 @ =sub_0812FA28
	str r0, [r1, #8]
	ldr r0, [r4]
	bl TaskDestroy
	str r5, [r4]
	ldr r0, [r4, #4]
	bl TaskDestroy
	str r5, [r4, #4]
_08131516:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0813151C: .4byte gCurTask
_08131520: .4byte sub_0812FA28

	thumb_func_start sub_08131524
sub_08131524: @ 0x08131524
	push {r4, r5, r6, lr}
	ldr r0, _08131540 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08131544
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _0813154C
	.align 2, 0
_08131540: .4byte gCurTask
_08131544:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_0813154C:
	adds r4, r6, #0
	bl sub_0812A304
	adds r5, r0, #0
	cmp r5, #0
	bne _0813158C
	ldr r0, [r4]
	bl TaskDestroy
	str r5, [r4]
	ldr r0, [r4, #4]
	bl TaskDestroy
	str r5, [r4, #4]
	ldr r0, _08131594 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0813157E
	ldr r2, _08131598 @ =gUnk_020382D0
	ldrh r1, [r2, #4]
	ldr r0, _0813159C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_0813157E:
	ldr r1, _081315A0 @ =0x0000057E
	adds r0, r6, r1
	strh r5, [r0]
	ldr r0, _081315A4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _081315A8 @ =sub_081330AC
	str r0, [r1, #8]
_0813158C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08131594: .4byte gUnk_0203AD10
_08131598: .4byte gUnk_020382D0
_0813159C: .4byte 0x0000FFFD
_081315A0: .4byte 0x0000057E
_081315A4: .4byte gCurTask
_081315A8: .4byte sub_081330AC

	thumb_func_start sub_081315AC
sub_081315AC: @ 0x081315AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov sb, r0
	movs r6, #0
	ldr r0, _0813163C @ =0x0000057C
	add r0, sb
	str r0, [sp]
	ldr r7, _08131640 @ =gUnk_020382D0
	ldr r1, _08131644 @ =gRngVal
	mov sl, r1
_081315C8:
	movs r0, #0xec
	muls r0, r6, r0
	mov r1, sb
	adds r3, r1, r0
	adds r0, r3, #0
	adds r0, #0xb4
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08131654
	movs r0, #0xba
	adds r0, r0, r3
	mov ip, r0
	ldrh r0, [r0]
	adds r5, r3, #0
	adds r5, #0xbc
	movs r1, #0
	mov r8, r1
	strh r0, [r5]
	ldr r0, [sp]
	ldrb r2, [r0]
	movs r4, #0
	mov r0, sl
	ldr r1, [r0]
	ldr r0, _08131648 @ =0x00196225
	muls r1, r0, r1
	ldr r0, _0813164C @ =0x3C6EF35F
	adds r1, r1, r0
	mov r0, sl
	str r1, [r0]
	lsrs r1, r1, #0x10
	movs r0, #0xf
	ands r1, r0
	adds r0, r3, #0
	adds r0, #0xd2
	lsls r2, r2, #4
	ldrb r0, [r0]
	adds r2, r2, r0
	ldr r0, _08131650 @ =gUnk_083729A4
	adds r2, r2, r0
	ldrb r2, [r2]
	cmp r1, r2
	bhs _08131622
	movs r4, #1
_08131622:
	mov r1, ip
	strh r4, [r1]
	ldrh r1, [r5]
	adds r0, r4, #0
	eors r0, r1
	ands r4, r0
	adds r0, r3, #0
	adds r0, #0xb8
	strh r4, [r0]
	adds r0, #6
	mov r1, r8
	b _081316C2
	.align 2, 0
_0813163C: .4byte 0x0000057C
_08131640: .4byte gUnk_020382D0
_08131644: .4byte gRngVal
_08131648: .4byte 0x00196225
_0813164C: .4byte 0x3C6EF35F
_08131650: .4byte gUnk_083729A4
_08131654:
	ldr r0, _08131694 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _0813169C
	movs r0, #0xba
	adds r0, r0, r3
	mov ip, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xbc
	strh r1, [r0]
	lsls r2, r6, #1
	adds r0, r7, #0
	adds r0, #8
	adds r0, r2, r0
	ldrh r0, [r0]
	mov r1, ip
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xb8
	strh r1, [r0]
	ldr r0, _08131698 @ =gUnk_020382D0 + 0x18
	adds r2, r2, r0
	ldrh r1, [r2]
	b _081316BE
	.align 2, 0
_08131694: .4byte gUnk_0203AD10
_08131698: .4byte gUnk_020382D0 + 0x18
_0813169C:
	ldr r0, _081316E0 @ =gPrevInput
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xbc
	strh r1, [r0]
	ldr r0, _081316E4 @ =gInput
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0xba
	strh r0, [r1]
	ldr r0, _081316E8 @ =gPressedKeys
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xb8
	strh r1, [r0]
	ldr r0, _081316EC @ =gReleasedKeys
	ldrh r1, [r0]
_081316BE:
	adds r0, r3, #0
	adds r0, #0xbe
_081316C2:
	strh r1, [r0]
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _081316D0
	b _081315C8
_081316D0:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081316E0: .4byte gPrevInput
_081316E4: .4byte gInput
_081316E8: .4byte gPressedKeys
_081316EC: .4byte gReleasedKeys

	thumb_func_start sub_081316F0
sub_081316F0: @ 0x081316F0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r0, _08131724 @ =0x0000052C
	adds r1, r6, r0
	ldr r2, _08131728 @ =0x0500000F
	mov r0, sp
	bl CpuSet
	movs r7, #0xa
	ldr r1, _0813172C @ =0x0000057C
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _0813173A
	cmp r0, #1
	bgt _08131730
	cmp r0, #0
	beq _08131736
	b _08131740
	.align 2, 0
_08131724: .4byte 0x0000052C
_08131728: .4byte 0x0500000F
_0813172C: .4byte 0x0000057C
_08131730:
	cmp r0, #2
	beq _0813173E
	b _08131740
_08131736:
	movs r7, #0x24
	b _08131740
_0813173A:
	movs r7, #0x2e
	b _08131740
_0813173E:
	movs r7, #0x38
_08131740:
	movs r2, #9
	mov r8, r2
	movs r5, #0
	subs r0, r7, #2
	mov sb, r0
	subs r1, r7, #1
	mov sl, r1
	adds r2, r7, #1
	str r2, [sp, #4]
	cmp r5, r7
	bhs _08131782
	ldr r2, _081317E4 @ =gRngVal
_08131758:
	ldr r1, [r2]
	ldr r0, _081317E8 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081317EC @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ldr r1, _081317F0 @ =0x0000052C
	adds r4, r6, r1
	adds r4, r4, r5
	mov r1, r8
	str r2, [sp, #8]
	bl __umodsi3
	strb r0, [r4]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r2, [sp, #8]
	cmp r5, r7
	blo _08131758
_08131782:
	movs r5, #0
	cmp r5, r7
	bhs _0813179C
	ldr r2, _081317F0 @ =0x0000052C
	adds r1, r6, r2
	movs r2, #9
_0813178E:
	adds r0, r1, r5
	strb r2, [r0]
	adds r0, r5, #2
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r7
	blo _0813178E
_0813179C:
	ldr r0, _081317F0 @ =0x0000052C
	adds r1, r6, r0
	movs r3, #0
	movs r0, #0xa
	strb r0, [r1]
	ldr r2, _081317F4 @ =0x0000052D
	adds r0, r6, r2
	strb r3, [r0]
	mov r2, sb
	adds r0, r1, r2
	strb r3, [r0]
	mov r0, sl
	adds r2, r1, r0
	movs r0, #0xb
	strb r0, [r2]
	adds r1, r1, r7
	strb r3, [r1]
	movs r2, #0xad
	lsls r2, r2, #3
	adds r1, r6, r2
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [r1]
	ldr r0, _081317F8 @ =0x0000056C
	adds r1, r6, r0
	ldr r2, [sp, #4]
	lsls r0, r2, #0xa
	str r0, [r1]
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081317E4: .4byte gRngVal
_081317E8: .4byte 0x00196225
_081317EC: .4byte 0x3C6EF35F
_081317F0: .4byte 0x0000052C
_081317F4: .4byte 0x0000052D
_081317F8: .4byte 0x0000056C

	thumb_func_start sub_081317FC
sub_081317FC: @ 0x081317FC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	movs r0, #0
	mov sl, r0
	movs r1, #8
	str r1, [sp]
	ldr r1, _08131828 @ =0x0000057C
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #1
	beq _08131836
	cmp r0, #1
	bgt _0813182C
	cmp r0, #0
	beq _08131832
	b _08131840
	.align 2, 0
_08131828: .4byte 0x0000057C
_0813182C:
	cmp r0, #2
	beq _0813183C
	b _08131840
_08131832:
	movs r0, #0x24
	b _0813183E
_08131836:
	movs r1, #0x2e
	str r1, [sp]
	b _08131840
_0813183C:
	movs r0, #0x38
_0813183E:
	str r0, [sp]
_08131840:
	ldr r0, _081318E8 @ =0x00000524
	adds r1, r6, r0
	movs r0, #0
	strb r0, [r1]
	movs r7, #0
	ldr r1, [sp]
	cmp r7, r1
	bhs _0813191A
	ldr r0, _081318EC @ =0x0000052C
	adds r0, r6, r0
	str r0, [sp, #4]
_08131856:
	ldr r1, [sp, #4]
	adds r0, r1, r7
	ldrb r1, [r0]
	ldr r0, _081318F0 @ =gUnk_0837EABC
	adds r0, r1, r0
	ldrb r0, [r0]
	mov ip, r0
	ldr r0, _081318F4 @ =gUnk_0837EAC9
	adds r1, r1, r0
	ldrb r1, [r1]
	mov sb, r1
	movs r5, #0
	cmp r5, ip
	bhs _0813190E
	ldr r0, _081318F8 @ =0x0000052A
	adds r0, r0, r6
	mov r8, r0
_08131878:
	mov r1, sl
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	mov r0, sb
	adds r4, r0, r5
	lsls r2, r1, #2
	adds r2, r2, r1
	lsls r2, r2, #2
	adds r2, r2, r6
	ldr r1, _081318FC @ =0x0000045C
	adds r2, r2, r1
	lsls r4, r4, #2
	ldr r0, _08131900 @ =gUnk_0837EAD8
	adds r4, r4, r0
	ldrb r0, [r4]
	lsls r0, r0, #2
	lsls r1, r7, #0xa
	adds r0, r0, r1
	str r0, [r2]
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	str r1, [r2, #4]
	ldrb r0, [r4, #2]
	lsrs r0, r0, #4
	lsls r0, r0, #5
	subs r0, r1, r0
	str r0, [r2, #8]
	ldrb r3, [r4, #2]
	movs r0, #0xf
	ands r0, r3
	lsls r0, r0, #5
	adds r1, r1, r0
	str r1, [r2, #0xc]
	ldrb r0, [r4, #3]
	strh r0, [r2, #0x10]
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r2, #0x12]
	mov r0, sl
	cmp r0, #9
	bls _08131904
	ldr r1, _081318E8 @ =0x00000524
	adds r2, r6, r1
	movs r0, #0
	strb r0, [r2]
	mov r0, r8
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08131934
	mov r1, sl
	strb r1, [r2]
	b _08131934
	.align 2, 0
_081318E8: .4byte 0x00000524
_081318EC: .4byte 0x0000052C
_081318F0: .4byte gUnk_0837EABC
_081318F4: .4byte gUnk_0837EAC9
_081318F8: .4byte 0x0000052A
_081318FC: .4byte 0x0000045C
_08131900: .4byte gUnk_0837EAD8
_08131904:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, ip
	blo _08131878
_0813190E:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp]
	cmp r7, r0
	blo _08131856
_0813191A:
	ldr r1, _08131944 @ =0x00000524
	adds r2, r6, r1
	movs r0, #0
	strb r0, [r2]
	adds r1, #6
	adds r0, r6, r1
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08131934
	mov r0, sl
	strb r0, [r2]
_08131934:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08131944: .4byte 0x00000524

	thumb_func_start sub_08131948
sub_08131948: @ 0x08131948
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r4, #0
	cmp r4, r5
	bhs _081319B6
	movs r6, #0x80
	lsls r6, r6, #1
	ldr r0, _0813198C @ =0x0000FEFF
	mov ip, r0
_0813195E:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r2, r0, r7
	ldrh r3, [r2, #0x12]
	adds r0, r6, #0
	ands r0, r3
	cmp r0, #0
	beq _08131990
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0813197A
	rsbs r0, r0, #0
_0813197A:
	ldr r1, [r2, #4]
	subs r1, r1, r0
	str r1, [r2, #4]
	ldr r0, [r2, #8]
	cmp r1, r0
	bge _081319AC
	mov r0, ip
	ands r0, r3
	b _081319AA
	.align 2, 0
_0813198C: .4byte 0x0000FEFF
_08131990:
	movs r1, #0x10
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bge _0813199A
	rsbs r0, r0, #0
_0813199A:
	ldr r1, [r2, #4]
	adds r1, r1, r0
	str r1, [r2, #4]
	ldr r0, [r2, #0xc]
	cmp r1, r0
	ble _081319AC
	adds r0, r6, #0
	orrs r0, r3
_081319AA:
	strh r0, [r2, #0x12]
_081319AC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _0813195E
_081319B6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081319BC
sub_081319BC: @ 0x081319BC
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x94
	ldrh r1, [r3]
	movs r0, #0x20
	movs r7, #0
	orrs r1, r0
	strh r1, [r3]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081319DC
	ldr r0, _08131A64 @ =0x0000FFDF
	ands r1, r0
	strh r1, [r3]
_081319DC:
	adds r0, r2, #0
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r4, #0x20
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _081319F4
	ldrh r1, [r3]
	ldr r0, _08131A64 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3]
_081319F4:
	ldrh r1, [r3]
	adds r0, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08131A5E
	adds r0, r2, #0
	adds r0, #0x98
	ldrh r1, [r0]
	movs r6, #1
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08131A5E
	adds r1, r2, #0
	adds r1, #0xe4
	ldrb r0, [r1]
	cmp r0, #1
	bhi _08131A5E
	adds r0, #1
	strb r0, [r1]
	adds r5, r2, #0
	adds r5, #0xa4
	ldrh r1, [r5]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0
	bne _08131A5E
	adds r0, r1, #0
	orrs r0, r6
	movs r1, #2
	orrs r0, r1
	strh r0, [r5]
	adds r0, r2, #0
	adds r0, #0xa2
	strh r4, [r0]
	adds r1, r2, #0
	adds r1, #0xa0
	movs r0, #6
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0xbf
	strb r6, [r0]
	ldrh r1, [r3]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08131A5E
	ldr r0, _08131A68 @ =0x0000022D
	bl m4aSongNumStart
_08131A5E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08131A64: .4byte 0x0000FFDF
_08131A68: .4byte 0x0000022D

	thumb_func_start sub_08131A6C
sub_08131A6C: @ 0x08131A6C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0xb8
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08131A94
	adds r0, r4, #0
	adds r0, #0xa4
	ldrh r2, [r0]
	ldr r1, _08131A90 @ =0x0000EFFF
	ands r1, r2
	strh r1, [r0]
	adds r6, r0, #0
	b _08131AAA
	.align 2, 0
_08131A90: .4byte 0x0000EFFF
_08131A94:
	subs r0, r2, #1
	strb r0, [r1]
	adds r1, r4, #0
	adds r1, #0xa4
	ldrh r2, [r1]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r2
	strh r0, [r1]
	adds r6, r1, #0
_08131AAA:
	ldrh r2, [r6]
	movs r7, #2
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _08131AB8
	b _08131C0E
_08131AB8:
	ldr r1, _08131B10 @ =0x0000FFFD
	ands r1, r2
	strh r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r1
	cmp r0, #0
	beq _08131ACA
	b _08131C0E
_08131ACA:
	adds r0, r4, #0
	adds r0, #0xb2
	ldrb r0, [r0]
	cmp r0, #8
	beq _08131AD8
	cmp r0, #0xb
	bne _08131B14
_08131AD8:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r2, #0xa0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	subs r1, #8
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0
	bl sub_08133EEC
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08131BFA
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	b _08131BE0
	.align 2, 0
_08131B10: .4byte 0x0000FFFD
_08131B14:
	cmp r0, #9
	beq _08131B1C
	cmp r0, #0xc
	bne _08131B7C
_08131B1C:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r3, #0xc0
	lsls r3, r3, #1
	adds r0, r3, #0
	ldrh r2, [r1]
	adds r0, r0, r2
	strh r0, [r1]
	subs r1, #8
	movs r0, #5
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #1
	bl sub_08133EEC
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08131B6C
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #1
	bl sub_081347D8
	adds r0, r4, #0
	bl sub_08133344
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08131B6C
	ldr r0, _08131B78 @ =0x00000232
	bl m4aSongNumStart
_08131B6C:
	ldrh r1, [r6]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	b _08131C02
	.align 2, 0
_08131B78: .4byte 0x00000232
_08131B7C:
	cmp r0, #0xa
	beq _08131B84
	cmp r0, #0xd
	bne _08131C0E
_08131B84:
	adds r1, r4, #0
	adds r1, #0xa8
	movs r2, #0xe0
	lsls r2, r2, #1
	adds r0, r2, #0
	ldrh r3, [r1]
	adds r0, r0, r3
	strh r0, [r1]
	subs r1, #8
	movs r0, #6
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #2
	bl sub_08133EEC
	ldr r3, _08131C14 @ =gUnk_083726B8
	ldr r2, _08131C18 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0, #0x20]
	strh r0, [r4, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	adds r0, #0x22
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	adds r5, r4, #0
	adds r5, #0x94
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08131BFA
	adds r0, r4, #0
	adds r0, #0xe8
	ldr r2, [r0]
	adds r0, r4, #0
	movs r1, #2
_08131BE0:
	bl sub_081347D8
	adds r0, r4, #0
	bl sub_08133344
	ldrh r1, [r5]
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _08131BFA
	ldr r0, _08131C1C @ =0x00000232
	bl m4aSongNumStart
_08131BFA:
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
_08131C02:
	orrs r0, r1
	strh r0, [r6]
	adds r1, r4, #0
	adds r1, #0xb8
	movs r0, #0xa
	strb r0, [r1]
_08131C0E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08131C14: .4byte gUnk_083726B8
_08131C18: .4byte gLanguage
_08131C1C: .4byte 0x00000232

	thumb_func_start sub_08131C20
sub_08131C20: @ 0x08131C20
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r4, #0
	adds r6, #0xa4
	ldrh r3, [r6]
	movs r2, #1
	ands r2, r3
	cmp r2, #0
	bne _08131C7E
	ldr r5, _08131C84 @ =gUnk_08372944
	adds r0, #0xb3
	ldrb r0, [r0]
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0xb2
	ldrb r1, [r1]
	adds r1, r1, r5
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bls _08131C7E
	movs r0, #1
	orrs r0, r3
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r6]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r2, [r0]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r0, r0, r5
	adds r1, r4, #0
	adds r1, #0xa8
	ldrh r1, [r1]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x18
	ldrb r0, [r0]
	adds r1, r1, r0
	adds r0, r4, #0
	adds r0, #0xa0
	strb r1, [r0]
_08131C7E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08131C84: .4byte gUnk_08372944

	thumb_func_start sub_08131C88
sub_08131C88: @ 0x08131C88
	push {r4, r5, lr}
	mov ip, r0
	mov r5, ip
	adds r5, #0xa4
	ldrh r4, [r5]
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _08131D14
	mov r0, ip
	adds r0, #0xa0
	movs r1, #0
	ldrsb r1, [r0, r1]
	mov r2, ip
	adds r2, #0xa2
	ldrh r0, [r2]
	muls r1, r0, r1
	movs r3, #0
	ldrsh r0, [r2, r3]
	adds r3, r0, #0
	muls r3, r0, r3
	mov r0, ip
	adds r0, #0xa1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r3, r0
	asrs r0, r0, #1
	subs r1, r1, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r3, r2, #0
	cmp r1, #0
	bge _08131CF0
	ldr r0, _08131CE8 @ =0x0000FFFE
	ands r0, r4
	movs r2, #0
	ldr r1, _08131CEC @ =0x0000FFEF
	ands r0, r1
	strh r0, [r5]
	strh r2, [r3]
	mov r1, ip
	adds r1, #0xac
	mov r0, ip
	adds r0, #0xc4
	ldr r0, [r0]
	str r0, [r1]
	b _08131D4C
	.align 2, 0
_08131CE8: .4byte 0x0000FFFE
_08131CEC: .4byte 0x0000FFEF
_08131CF0:
	cmp r1, #0x1f
	ble _08131D04
	mov r1, ip
	adds r1, #0xaa
	ldr r0, _08131D00 @ =0x0000FFE0
	strh r0, [r1]
	b _08131D0C
	.align 2, 0
_08131D00: .4byte 0x0000FFE0
_08131D04:
	rsbs r1, r1, #0
	mov r0, ip
	adds r0, #0xaa
	strh r1, [r0]
_08131D0C:
	ldrh r0, [r3]
	adds r0, #1
	strh r0, [r3]
	b _08131D4C
_08131D14:
	mov r2, ip
	adds r2, #0xa2
	movs r1, #0
	ldrsh r0, [r2, r1]
	adds r1, r0, #0
	muls r1, r0, r1
	mov r0, ip
	adds r0, #0xa1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r1, r0
	lsls r0, r0, #0xf
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xf
	ble _08131D40
	mov r1, ip
	adds r1, #0xaa
	movs r0, #0x10
	strh r0, [r1]
	b _08131D4C
_08131D40:
	mov r0, ip
	adds r0, #0xaa
	strh r1, [r0]
	ldrh r0, [r2]
	adds r0, #1
	strh r0, [r2]
_08131D4C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08131D54
sub_08131D54: @ 0x08131D54
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0xb0
	ldrh r0, [r5]
	ldr r1, _08131EE8 @ =0x0000FFE0
	ands r1, r0
	strh r1, [r5]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08131DAC
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _08131D98
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bne _08131DA0
_08131D98:
	ldrh r0, [r5]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r5]
_08131DA0:
	adds r2, r4, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
_08131DAC:
	movs r5, #0x20
	rsbs r5, r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08131DCC
	adds r2, r4, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08131DCC:
	adds r0, r4, #0
	movs r1, #0
	adds r2, r5, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08131E1A
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _08131E04
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0xb0
	cmp r0, #0xf
	bne _08131E12
_08131E04:
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r2, [r0]
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	adds r2, r0, #0
_08131E12:
	ldrh r1, [r2]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2]
_08131E1A:
	adds r0, r4, #0
	movs r1, #0x20
	movs r2, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08131E36
	adds r2, r4, #0
	adds r2, #0xb0
	ldrh r1, [r2]
	movs r0, #8
	orrs r0, r1
	strh r0, [r2]
_08131E36:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08131E48
	b _08131F4C
_08131E48:
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	beq _08131E70
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	bl sub_081332D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r2, r4, #0
	adds r2, #0xb0
	cmp r0, #0xf
	bne _08131E7E
_08131E70:
	adds r0, r4, #0
	adds r0, #0xb0
	ldrh r2, [r0]
	movs r1, #0x20
	orrs r1, r2
	strh r1, [r0]
	adds r2, r0, #0
_08131E7E:
	ldrh r0, [r2]
	movs r1, #0x10
	movs r6, #0
	orrs r1, r0
	strh r1, [r2]
	adds r3, r4, #0
	adds r3, #0xac
	ldr r0, [r3]
	adds r5, r4, #0
	adds r5, #0x94
	cmp r0, #0
	beq _08131EF6
	adds r2, r4, #0
	adds r2, #0xa4
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0
	beq _08131EF4
	ldr r0, _08131EEC @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0xc4
	ldr r0, [r3]
	ldr r1, [r1]
	subs r0, r0, r1
	str r0, [r3]
	movs r1, #0x60
	rsbs r1, r1, #0
	cmp r0, r1
	bgt _08131EF6
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [r3]
	adds r0, r4, #0
	adds r0, #0xe4
	strb r6, [r0]
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08131F70
	ldr r0, _08131EF0 @ =0x0000022E
	bl m4aSongNumStart
	b _08131EF6
	.align 2, 0
_08131EE8: .4byte 0x0000FFE0
_08131EEC: .4byte 0x0000FFBF
_08131EF0: .4byte 0x0000022E
_08131EF4:
	str r0, [r3]
_08131EF6:
	ldrh r1, [r5]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08131F70
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08131F3A
	adds r0, r4, #0
	adds r0, #0xb3
	ldrb r0, [r0]
	cmp r0, #1
	bne _08131F2E
	adds r4, #0x90
	ldr r0, [r4]
	bl sub_08134720
	ldr r0, [r4]
	movs r1, #1
	bl sub_08133688
	b _08131F70
_08131F2E:
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl sub_08134754
	b _08131F70
_08131F3A:
	adds r4, #0x90
	ldr r0, [r4]
	bl sub_08134720
	ldr r0, [r4]
	movs r1, #0
	bl sub_08133688
	b _08131F70
_08131F4C:
	adds r2, r4, #0
	adds r2, #0xa4
	ldrh r1, [r2]
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08131F70
	adds r0, r4, #0
	adds r0, #0x90
	ldr r0, [r0]
	bl sub_08134754
_08131F70:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08131F78
sub_08131F78: @ 0x08131F78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r2, r6, #0
	adds r2, #0xc4
	ldr r0, [r2]
	lsls r0, r0, #0xb
	lsrs r1, r0, #0x10
	adds r0, r6, #0
	adds r0, #0xb0
	ldrh r3, [r0]
	movs r0, #1
	ands r0, r3
	cmp r0, #0
	bne _08131FA6
	movs r0, #0x10
	ands r0, r3
	cmp r0, #0
	beq _0813201C
_08131FA6:
	mov sl, r2
	movs r0, #0xc0
	adds r0, r0, r6
	mov r8, r0
	adds r7, r6, #0
	adds r7, #0xd4
	adds r2, r6, #0
	adds r2, #0xd0
	str r2, [sp]
	b _08131FC6
_08131FBA:
	subs r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r0, #0
	bge _08131FC6
	movs r1, #0
_08131FC6:
	ldr r0, _0813202C @ =gUnk_08372954
	mov sb, r0
	mov r2, r8
	ldr r0, [r2]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	lsls r5, r4, #5
	ldr r2, [r7]
	adds r1, r5, #0
	bl sub_081332FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrb r0, [r0]
	cmp r0, #0
	bne _08131FBA
	mov r0, sl
	str r5, [r0]
	adds r0, r6, #0
	movs r1, #0
	movs r2, #0x20
	bl sub_081332D0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	add r0, sb
	ldrb r2, [r0]
	ldr r3, _08132030 @ =gUnk_08372964
	mov r1, r8
	ldr r0, [r1]
	asrs r0, r0, #2
	movs r1, #7
	ands r0, r1
	lsls r2, r2, #3
	adds r0, r0, r2
	adds r0, r0, r3
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	ldr r2, [sp]
	strh r0, [r2]
_0813201C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813202C: .4byte gUnk_08372954
_08132030: .4byte gUnk_08372964

	thumb_func_start sub_08132034
sub_08132034: @ 0x08132034
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov ip, r0
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	movs r7, #0
	cmp r7, r2
	bhs _08132148
	adds r0, #0xc0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, _08132158 @ =0xFFFFFF00
	mov sl, r0
	movs r1, #1
	mov sb, r1
_0813205E:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r8, r0
	ldr r3, [sp]
	add r3, r8
	ldrh r0, [r3, #0x12]
	ldr r5, _0813215C @ =0x0000FF0E
	ands r5, r0
	strh r5, [r3, #0x12]
	movs r2, #0
	ldr r0, [sp, #8]
	add r0, sl
	ldr r1, [r3]
	cmp r0, r1
	bgt _08132080
	movs r2, #1
_08132080:
	movs r4, #0
	movs r6, #0xb0
	lsls r6, r6, #2
	ldr r0, [sp, #8]
	adds r0, r0, r6
	str r0, [sp, #0xc]
	cmp r1, r0
	bgt _08132092
	movs r4, #1
_08132092:
	ands r2, r4
	cmp r2, #0
	beq _081320A4
	adds r0, r5, #0
	mov r1, sb
	orrs r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r3, #0x12]
_081320A4:
	movs r2, #0
	movs r0, #0xd6
	lsls r0, r0, #1
	add r0, ip
	ldr r1, [r0]
	mov r4, sl
	adds r0, r1, r4
	ldr r5, [r3]
	cmp r0, r5
	bgt _081320BA
	movs r2, #1
_081320BA:
	movs r4, #0
	adds r0, r1, r6
	cmp r5, r0
	bgt _081320C4
	movs r4, #1
_081320C4:
	ands r2, r4
	cmp r2, #0
	beq _081320D6
	ldrh r0, [r3, #0x12]
	mov r1, sb
	orrs r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r3, #0x12]
_081320D6:
	movs r2, #0
	movs r0, #0xa6
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r4, sl
	adds r0, r1, r4
	cmp r0, r5
	bgt _081320EA
	movs r2, #1
_081320EA:
	movs r4, #0
	adds r0, r1, r6
	cmp r5, r0
	bgt _081320F4
	movs r4, #1
_081320F4:
	ands r2, r4
	cmp r2, #0
	beq _08132106
	ldrh r0, [r3, #0x12]
	mov r1, sb
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r3, #0x12]
_08132106:
	movs r4, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r2, sl
	adds r0, r1, r2
	cmp r0, r5
	bgt _0813211A
	movs r4, #1
_0813211A:
	movs r5, #0
	ldr r3, [sp]
	add r3, r8
	adds r1, r1, r6
	ldr r0, [r3]
	cmp r0, r1
	bgt _0813212A
	movs r5, #1
_0813212A:
	ands r4, r5
	cmp r4, #0
	beq _0813213C
	ldrh r0, [r3, #0x12]
	mov r4, sb
	orrs r0, r4
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r3, #0x12]
_0813213C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp, #4]
	cmp r7, r0
	blo _0813205E
_08132148:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08132158: .4byte 0xFFFFFF00
_0813215C: .4byte 0x0000FF0E

	thumb_func_start sub_08132160
sub_08132160: @ 0x08132160
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	mov ip, r0
	str r1, [sp]
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #4]
	movs r7, #0
	cmp r7, r2
	bhs _08132268
	adds r0, #0xc0
	ldr r0, [r0]
	str r0, [sp, #8]
	ldr r0, _08132278 @ =0xFFFFFF00
	mov sl, r0
	movs r1, #0xf1
	mov sb, r1
_0813218A:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r8, r0
	ldr r2, [sp]
	add r2, r8
	ldrh r0, [r2, #0x12]
	ldr r3, _0813227C @ =0x0000FF0E
	ands r3, r0
	strh r3, [r2, #0x12]
	movs r4, #0
	ldr r0, [sp, #8]
	add r0, sl
	ldr r1, [r2]
	cmp r0, r1
	bgt _081321AC
	movs r4, #1
_081321AC:
	movs r5, #0
	str r5, [sp, #0xc]
	movs r6, #0xb0
	lsls r6, r6, #2
	ldr r5, [sp, #8]
	adds r0, r5, r6
	cmp r1, r0
	bgt _081321C0
	movs r0, #1
	str r0, [sp, #0xc]
_081321C0:
	ldr r1, [sp, #0xc]
	ands r4, r1
	cmp r4, #0
	beq _081321D0
	adds r0, r3, #0
	mov r5, sb
	orrs r0, r5
	strh r0, [r2, #0x12]
_081321D0:
	movs r4, #0
	movs r0, #0xd6
	lsls r0, r0, #1
	add r0, ip
	ldr r3, [r0]
	mov r1, sl
	adds r0, r3, r1
	ldr r5, [r2]
	cmp r0, r5
	bgt _081321E6
	movs r4, #1
_081321E6:
	movs r1, #0
	adds r0, r3, r6
	cmp r5, r0
	bgt _081321F0
	movs r1, #1
_081321F0:
	ands r4, r1
	cmp r4, #0
	beq _081321FE
	ldrh r0, [r2, #0x12]
	mov r1, sb
	orrs r0, r1
	strh r0, [r2, #0x12]
_081321FE:
	movs r4, #0
	movs r0, #0xa6
	lsls r0, r0, #2
	add r0, ip
	ldr r3, [r0]
	mov r1, sl
	adds r0, r3, r1
	cmp r0, r5
	bgt _08132212
	movs r4, #1
_08132212:
	movs r1, #0
	adds r0, r3, r6
	cmp r5, r0
	bgt _0813221C
	movs r1, #1
_0813221C:
	ands r4, r1
	cmp r4, #0
	beq _0813222A
	ldrh r0, [r2, #0x12]
	mov r1, sb
	orrs r0, r1
	strh r0, [r2, #0x12]
_0813222A:
	movs r4, #0
	movs r0, #0xe1
	lsls r0, r0, #2
	add r0, ip
	ldr r1, [r0]
	mov r2, sl
	adds r0, r1, r2
	cmp r0, r5
	bgt _0813223E
	movs r4, #1
_0813223E:
	movs r5, #0
	ldr r3, [sp]
	add r3, r8
	adds r1, r1, r6
	ldr r0, [r3]
	cmp r0, r1
	bgt _0813224E
	movs r5, #1
_0813224E:
	ands r4, r5
	cmp r4, #0
	beq _0813225C
	ldrh r0, [r3, #0x12]
	mov r5, sb
	orrs r0, r5
	strh r0, [r3, #0x12]
_0813225C:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r0, [sp, #4]
	cmp r7, r0
	blo _0813218A
_08132268:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08132278: .4byte 0xFFFFFF00
_0813227C: .4byte 0x0000FF0E

	thumb_func_start sub_08132280
sub_08132280: @ 0x08132280
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r6, r0, #0
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	movs r7, #0
	cmp r7, r8
	bhs _0813233E
_08132298:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #2
	mov r1, sb
	adds r4, r0, r1
	ldrh r1, [r4, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08132334
	movs r5, #0
	ldr r0, [r4]
	asrs r3, r0, #2
	adds r1, r3, #0
	subs r1, #0xe
	adds r0, r6, #0
	adds r0, #0xc0
	ldr r0, [r0]
	asrs r2, r0, #2
	cmp r1, r2
	bgt _081322C4
	movs r5, #1
_081322C4:
	movs r1, #0
	adds r0, r3, #0
	adds r0, #0xe
	cmp r2, r0
	bgt _081322D0
	movs r1, #1
_081322D0:
	adds r3, r5, #0
	ands r3, r1
	movs r5, #0
	ldr r0, [r4, #4]
	asrs r4, r0, #2
	adds r1, r4, #0
	subs r1, #0xe
	adds r0, r6, #0
	adds r0, #0xc4
	ldr r0, [r0]
	asrs r2, r0, #2
	cmp r1, r2
	bgt _081322EC
	movs r5, #1
_081322EC:
	movs r1, #0
	adds r0, r4, #0
	adds r0, #0xe
	cmp r2, r0
	bgt _081322F8
	movs r1, #1
_081322F8:
	ands r5, r1
	ands r3, r5
	cmp r3, #0
	beq _08132334
	adds r4, r6, #0
	adds r4, #0xa4
	ldrh r1, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	bne _08132334
	adds r0, r6, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08132326
	ldr r0, _0813234C @ =0x00000235
	bl m4aSongNumStart
_08132326:
	ldrh r1, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	orrs r0, r5
	strh r0, [r4]
_08132334:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, r8
	blo _08132298
_0813233E:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813234C: .4byte 0x00000235

	thumb_func_start sub_08132350
sub_08132350: @ 0x08132350
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, #0xa4
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _081323DC
	adds r0, r5, #0
	adds r0, #0xb2
	ldrb r2, [r0]
	adds r4, r0, #0
	cmp r2, #0
	beq _081323C2
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _081323A0
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0813238C
	cmp r2, #1
	bne _0813238C
	adds r0, r5, #0
	bl sub_08133804
_0813238C:
	adds r2, r5, #0
	adds r2, #0xa4
	ldrh r1, [r2]
	ldr r0, _08132440 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0xbf
	movs r0, #5
	strb r0, [r1]
_081323A0:
	adds r2, r5, #0
	adds r2, #0xbf
	ldrb r0, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	cmp r1, #0
	beq _081323C2
	cmp r1, #4
	beq _081323B6
	adds r0, #1
	strb r0, [r2]
_081323B6:
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xa
	ble _081323C2
	movs r0, #0
	strb r0, [r2]
_081323C2:
	adds r0, r5, #0
	adds r0, #0xa4
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _081323DC
	ldrb r1, [r4]
	cmp r1, #0
	beq _081323DC
	adds r0, r5, #0
	adds r0, #0xbc
	strb r1, [r0]
_081323DC:
	movs r0, #0xbd
	adds r0, r0, r5
	mov ip, r0
	ldrb r0, [r0]
	adds r4, r5, #0
	adds r4, #0xbe
	strb r0, [r4]
	ldr r3, _08132444 @ =gUnk_083727B8
	adds r0, r5, #0
	adds r0, #0xbf
	movs r1, #0
	ldrsb r1, [r0, r1]
	ldr r2, _08132448 @ =gUnk_083727A8
	subs r0, #3
	ldrb r0, [r0]
	adds r0, r0, r2
	movs r2, #0
	ldrsb r2, [r0, r2]
	movs r0, #0xb
	muls r0, r2, r0
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r2, [r1]
	mov r1, ip
	strb r2, [r1]
	adds r3, r5, #0
	adds r3, #0xa4
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08132450
	adds r2, r5, #0
	adds r2, #0xb4
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x3c
	ble _0813248A
	ldrh r1, [r3]
	ldr r0, _0813244C @ =0x0000FBFF
	ands r0, r1
	strh r0, [r3]
	movs r0, #0
	strh r0, [r2]
	b _08132456
	.align 2, 0
_08132440: .4byte 0x0000FF7F
_08132444: .4byte gUnk_083727B8
_08132448: .4byte gUnk_083727A8
_0813244C: .4byte 0x0000FBFF
_08132450:
	ldrb r0, [r4]
	cmp r0, r2
	beq _0813248A
_08132456:
	ldr r4, _08132490 @ =gUnk_083726B8
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldr r3, _08132494 @ =gLanguage
	ldrh r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r4
	ldrh r0, [r1]
	strh r0, [r5, #0xc]
	mov r0, ip
	ldrb r1, [r0]
	lsls r1, r1, #2
	ldrh r2, [r3]
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r4
	ldrb r0, [r1, #2]
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
_0813248A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08132490: .4byte gUnk_083726B8
_08132494: .4byte gLanguage

	thumb_func_start sub_08132498
sub_08132498: @ 0x08132498
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r2, r5, #0
	adds r2, #0xa4
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0813253A
	ldr r0, _081324C4 @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, _081324C8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _081324F4
	lsls r0, r0, #2
	ldr r1, _081324CC @ =_081324D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081324C4: .4byte 0x0000FEFF
_081324C8: .4byte gLanguage
_081324CC: .4byte _081324D0
_081324D0: @ jump table
	.4byte _081324E8 @ case 0
	.4byte _081324E8 @ case 1
	.4byte _081324E8 @ case 2
	.4byte _081324E8 @ case 3
	.4byte _081324E8 @ case 4
	.4byte _081324E8 @ case 5
_081324E8:
	ldr r0, _0813250C @ =0x00000347
	strh r0, [r5, #0xc]
	movs r0, #0xb
	strb r0, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1b]
_081324F4:
	adds r0, r5, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08132510
	adds r0, r5, #0
	bl sub_081340AC
	b _08132514
	.align 2, 0
_0813250C: .4byte 0x00000347
_08132510:
	bl sub_08134178
_08132514:
	adds r1, r5, #0
	adds r1, #0xa4
	ldrh r2, [r1]
	movs r0, #1
	movs r4, #0
	movs r3, #0
	orrs r0, r2
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0xa2
	strh r3, [r0]
	subs r1, #4
	movs r0, #4
	strb r0, [r1]
	adds r0, r5, #0
	adds r0, #0xe4
	strb r4, [r0]
	subs r0, #0x3c
	strh r3, [r0]
_0813253A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08132540
sub_08132540: @ 0x08132540
	push {r4, r5, r6, lr}
	mov ip, r0
	mov r5, ip
	adds r5, #0xc0
	ldr r0, [r5]
	ldr r6, _0813259C @ =0xFFFFFF00
	adds r0, r0, r6
	asrs r0, r0, #0xa
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r0, #0
	bge _0813255A
	movs r1, #0
_0813255A:
	mov r3, ip
	adds r3, #0xd8
	ldr r4, _081325A0 @ =gUnk_0837EA54
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	mov r2, ip
	adds r2, #0xd4
	ldr r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r3]
	adds r3, #4
	ldr r0, [r2]
	adds r1, r1, r0
	ldrb r0, [r1, #1]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r0, [r0]
	str r0, [r3]
	ldr r0, [r5]
	adds r0, r0, r6
	asrs r1, r0, #2
	movs r0, #0xff
	ands r1, r0
	mov r0, ip
	adds r0, #0xe0
	strb r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813259C: .4byte 0xFFFFFF00
_081325A0: .4byte gUnk_0837EA54

	thumb_func_start sub_081325A4
sub_081325A4: @ 0x081325A4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _08132638 @ =0x0000044C
	adds r2, r4, r0
	ldrh r1, [r2]
	ldr r0, _0813263C @ =0x0000FEFF
	ands r0, r1
	strh r0, [r2]
	movs r5, #0
	ldr r1, _08132640 @ =0x00000524
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r5, r0
	bhs _0813262E
	movs r2, #0x88
	lsls r2, r2, #3
	adds r2, r2, r4
	mov r8, r2
	ldr r0, _08132638 @ =0x0000044C
	adds r6, r4, r0
	subs r1, #0xe0
	adds r7, r4, r1
_081325D4:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r3, r0, #2
	adds r0, r4, r3
	ldr r2, _08132644 @ =0x0000046E
	adds r0, r0, r2
	ldrh r1, [r0]
	ldr r0, _08132648 @ =0x00000579
	adds r2, r4, r0
	movs r0, #0x10
	ldrb r2, [r2]
	lsls r0, r2
	ands r1, r0
	cmp r1, #0
	beq _0813261E
	ldr r1, _0813264C @ =0x0000045C
	adds r0, r4, r1
	adds r0, r0, r3
	ldr r0, [r0]
	mov r2, r8
	str r0, [r2]
	adds r1, #4
	adds r0, r4, r1
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r7]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r0, r4, r2
	bl sub_081288DC
	ldrh r1, [r6]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r6]
_0813261E:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r1, _08132640 @ =0x00000524
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r5, r0
	blo _081325D4
_0813262E:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08132638: .4byte 0x0000044C
_0813263C: .4byte 0x0000FEFF
_08132640: .4byte 0x00000524
_08132644: .4byte 0x0000046E
_08132648: .4byte 0x00000579
_0813264C: .4byte 0x0000045C

	thumb_func_start sub_08132650
sub_08132650: @ 0x08132650
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r6, r0, #0
	adds r1, r6, #0
	adds r1, #0xe0
	ldr r0, [r1]
	str r0, [sp]
	movs r2, #0xe6
	lsls r2, r2, #1
	adds r0, r6, r2
	ldr r0, [r0]
	str r0, [sp, #4]
	adds r2, #0xec
	adds r0, r6, r2
	ldr r0, [r0]
	str r0, [sp, #8]
	adds r2, #0xec
	adds r0, r6, r2
	ldr r0, [r0]
	str r0, [sp, #0xc]
	movs r7, #0
	mov sl, r1
_08132684:
	movs r5, #0
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #8]
	cmp r3, r0
	bge _08132690
	adds r3, r0, #0
_08132690:
	ldr r0, [sp, #4]
	cmp r3, r0
	bge _08132698
	adds r3, r0, #0
_08132698:
	ldr r0, [sp]
	cmp r3, r0
	bge _081326A0
	adds r3, r0, #0
_081326A0:
	movs r1, #0
	movs r0, #0xec
	mov sb, r0
	mov r4, sl
	mov r8, r1
	ldr r2, _081326F4 @ =0x00000105
	mov ip, r2
_081326AE:
	mov r2, sb
	muls r2, r1, r2
	adds r0, r4, r2
	ldr r0, [r0]
	cmp r3, r0
	bne _081326CE
	adds r0, r6, r2
	add r0, ip
	strb r7, [r0]
	lsls r0, r1, #2
	add r0, sp
	mov r2, r8
	str r2, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_081326CE:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _081326AE
	adds r0, r7, r5
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bls _08132684
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081326F4: .4byte 0x00000105

	thumb_func_start sub_081326F8
sub_081326F8: @ 0x081326F8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r1, sp
	movs r2, #0x83
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0xf9
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r0, [r0]
	strh r0, [r1, #2]
	ldr r4, _08132744 @ =0x000002DE
	adds r0, r6, r4
	ldrh r0, [r0]
	strh r0, [r1, #4]
	ldr r5, _08132748 @ =0x000003CA
	adds r0, r6, r5
	ldrh r0, [r0]
	strh r0, [r1, #6]
	movs r0, #0
	mov ip, r0
	mov r2, sp
_0813272E:
	movs r7, #0
	ldrh r3, [r2]
	ldrh r1, [r2, #2]
	ldrh r0, [r2, #4]
	ldrh r4, [r2, #6]
	cmp r0, r4
	bhs _0813274C
	ldrh r5, [r2, #4]
	cmp r1, r5
	blt _08132752
	b _0813275A
	.align 2, 0
_08132744: .4byte 0x000002DE
_08132748: .4byte 0x000003CA
_0813274C:
	ldrh r0, [r2, #6]
	cmp r1, r0
	bge _0813275A
_08132752:
	ldrh r0, [r2, #2]
	cmp r3, r0
	blt _08132770
	b _08132774
_0813275A:
	ldrh r0, [r2, #4]
	ldrh r1, [r2, #6]
	cmp r0, r1
	bhs _0813276A
	ldrh r4, [r2, #4]
	cmp r3, r4
	blt _08132770
	b _08132774
_0813276A:
	ldrh r5, [r2, #6]
	cmp r3, r5
	bge _08132774
_08132770:
	ldrh r0, [r2]
	b _0813279A
_08132774:
	ldrh r1, [r2, #2]
	ldrh r0, [r2, #4]
	ldrh r3, [r2, #6]
	cmp r0, r3
	bhs _08132786
	ldrh r4, [r2, #4]
	cmp r1, r4
	blt _0813278C
	b _08132790
_08132786:
	ldrh r5, [r2, #6]
	cmp r1, r5
	bge _08132790
_0813278C:
	ldrh r0, [r2, #2]
	b _0813279A
_08132790:
	ldrh r0, [r2, #6]
	ldrh r1, [r2, #4]
	cmp r0, r1
	bls _0813279A
	adds r0, r1, #0
_0813279A:
	mov r8, r0
	movs r3, #0
	movs r0, #0xf4
	lsls r0, r0, #2
	adds r4, r6, r0
_081327A4:
	movs r0, #0xec
	muls r0, r3, r0
	adds r1, r6, r0
	movs r5, #0x83
	lsls r5, r5, #1
	adds r0, r1, r5
	ldrh r0, [r0]
	cmp r8, r0
	bne _081327D6
	subs r5, #1
	adds r0, r1, r5
	mov r1, ip
	strb r1, [r0]
	mov r5, ip
	adds r0, r5, r7
	adds r0, r4, r0
	strb r3, [r0]
	lsls r0, r3, #1
	mov r5, sp
	adds r1, r5, r0
	ldr r0, _081327FC @ =0x0000FFFF
	strh r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_081327D6:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _081327A4
	mov r1, ip
	adds r0, r1, r7
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	cmp r0, #3
	bls _0813272E
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081327FC: .4byte 0x0000FFFF

	thumb_func_start sub_08132800
sub_08132800: @ 0x08132800
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	movs r5, #0
	str r5, [sp]
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r4, r4, r0
	ldr r2, _08132878 @ =0x05000011
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _0813287C @ =0x06010000
	str r0, [r4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r3, _08132880 @ =gUnk_0837283C
	ldr r2, _08132884 @ =gLanguage
	ldrh r0, [r2]
	movs r1, #0x2c
	muls r0, r1, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrh r0, [r2]
	muls r0, r1, r0
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r1, #0x10
	strb r1, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	strh r5, [r4, #0x10]
	movs r0, #0x40
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r5, [r4, #0x28]
	movs r0, #0x80
	lsls r0, r0, #1
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08132878: .4byte 0x05000011
_0813287C: .4byte 0x06010000
_08132880: .4byte gUnk_0837283C
_08132884: .4byte gLanguage

	thumb_func_start sub_08132888
sub_08132888: @ 0x08132888
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	adds r7, r0, #0
	ldr r1, _081328E0 @ =0x0000052A
	adds r0, r7, r1
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _081328A6
	b _08132AA6
_081328A6:
	ldr r0, _081328E4 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	movs r2, #0xec
	muls r0, r2, r0
	adds r0, r7, r0
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r3, #0x20
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _081328F8
	ldr r6, _081328E8 @ =0x0000057D
	adds r0, r7, r6
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r2, r7, r0
	adds r0, r2, #0
	adds r0, #0xd0
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _081328EC
	movs r1, #0x83
	lsls r1, r1, #1
	adds r0, r2, r1
	b _081328FC
	.align 2, 0
_081328E0: .4byte 0x0000052A
_081328E4: .4byte gUnk_0203AD3C
_081328E8: .4byte 0x0000057D
_081328EC:
	ldr r2, _081328F4 @ =0x0000057A
	adds r0, r7, r2
	b _081328FC
	.align 2, 0
_081328F4: .4byte 0x0000057A
_081328F8:
	ldr r3, _08132A38 @ =0x0000057A
	adds r0, r7, r3
_081328FC:
	mov r6, sp
	ldrh r4, [r0]
	ldr r0, _08132A3C @ =0x0000176F
	cmp r4, r0
	bls _08132908
	adds r4, r0, #0
_08132908:
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	bl __udivsi3
	strb r0, [r6, #3]
	ldrb r0, [r6, #3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl __udivsi3
	strb r0, [r6, #2]
	ldrb r1, [r6, #2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r6, #1]
	ldrb r1, [r6, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r4, r0
	strb r0, [r6]
	movs r6, #0
	movs r0, #0xf5
	lsls r0, r0, #2
	adds r4, r7, r0
	ldr r1, _08132A40 @ =gLanguage
	mov sl, r1
	movs r3, #0x2c
	movs r2, #0xff
	lsls r2, r2, #2
	adds r2, r7, r2
	str r2, [sp, #8]
_0813296A:
	movs r0, #3
	subs r0, r0, r6
	mov r1, sp
	adds r2, r1, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	mov r1, sl
	ldrh r1, [r1]
	mov r8, r1
	mov r1, r8
	muls r1, r3, r1
	adds r0, r0, r1
	ldr r1, _08132A44 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrb r0, [r2]
	lsls r0, r0, #2
	mov r2, sl
	ldrh r1, [r2]
	muls r1, r3, r1
	adds r0, r0, r1
	ldr r1, _08132A44 @ =gUnk_0837283C
	adds r0, r0, r1
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	mov r2, sp
	strb r0, [r2, #4]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	ldr r1, _08132A48 @ =gUnk_083729D4
	mov sb, r1
	lsls r0, r6, #1
	add r0, sb
	movs r2, #0
	ldrsh r0, [r0, r2]
	lsls r0, r0, #2
	ldr r1, [sp, #8]
	str r0, [r1]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r7, r2
	movs r1, #0x40
	mov r8, r1
	str r1, [r0]
	adds r0, r4, #0
	str r3, [sp, #0xc]
	bl sub_081288DC
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	ldr r3, [sp, #0xc]
	cmp r6, #3
	bls _0813296A
	movs r2, #0xf5
	lsls r2, r2, #2
	adds r0, r7, r2
	ldr r3, _08132A44 @ =gUnk_0837283C
	ldr r4, _08132A40 @ =gLanguage
	ldrh r1, [r4]
	movs r2, #0x2c
	muls r1, r2, r1
	adds r1, r1, r3
	ldrh r1, [r1, #0x28]
	strh r1, [r0, #0xc]
	ldrh r1, [r4]
	muls r1, r2, r1
	adds r1, r1, r3
	adds r1, #0x2a
	ldrb r1, [r1]
	strb r1, [r0, #0x1a]
	ldrb r1, [r0, #0x1b]
	mov r3, sp
	ldrb r3, [r3, #4]
	orrs r1, r3
	strb r1, [r0, #0x1b]
	movs r6, #0xff
	lsls r6, r6, #2
	adds r2, r7, r6
	mov r3, sb
	movs r6, #8
	ldrsh r1, [r3, r6]
	lsls r1, r1, #2
	str r1, [r2]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r1, r7, r2
	mov r3, r8
	str r3, [r1]
	bl sub_081288DC
	ldrh r0, [r4]
	cmp r0, #5
	bhi _08132A7A
	lsls r0, r0, #2
	ldr r1, _08132A4C @ =_08132A50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08132A38: .4byte 0x0000057A
_08132A3C: .4byte 0x0000176F
_08132A40: .4byte gLanguage
_08132A44: .4byte gUnk_0837283C
_08132A48: .4byte gUnk_083729D4
_08132A4C: .4byte _08132A50
_08132A50: @ jump table
	.4byte _08132A68 @ case 0
	.4byte _08132A68 @ case 1
	.4byte _08132A68 @ case 2
	.4byte _08132A68 @ case 3
	.4byte _08132A68 @ case 4
	.4byte _08132A68 @ case 5
_08132A68:
	ldr r0, _08132AB8 @ =0xFFFF0000
	ands r5, r0
	ldr r0, _08132ABC @ =0x00000349
	orrs r5, r0
	ldr r0, _08132AC0 @ =0xFF00FFFF
	ands r5, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r5, r0
_08132A7A:
	movs r6, #0xf5
	lsls r6, r6, #2
	adds r0, r7, r6
	strh r5, [r0, #0xc]
	lsrs r1, r5, #0x10
	strb r1, [r0, #0x1a]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r1, #0xff
	lsls r1, r1, #2
	adds r2, r7, r1
	ldr r1, _08132AC4 @ =gUnk_083729D4
	movs r3, #0xa
	ldrsh r1, [r1, r3]
	lsls r1, r1, #2
	str r1, [r2]
	adds r6, #0x2c
	adds r2, r7, r6
	movs r1, #0x40
	str r1, [r2]
	bl sub_081288DC
_08132AA6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08132AB8: .4byte 0xFFFF0000
_08132ABC: .4byte 0x00000349
_08132AC0: .4byte 0xFF00FFFF
_08132AC4: .4byte gUnk_083729D4

	thumb_func_start sub_08132AC8
sub_08132AC8: @ 0x08132AC8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08132B70 @ =gUnk_03000530
	ldr r4, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r5, _08132B74 @ =0x0600E000
	ldr r2, _08132B78 @ =0x05000200
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #0xae
	lsls r0, r0, #3
	adds r3, r4, r0
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrb r1, [r0]
	lsrs r1, r1, #3
	lsls r2, r1, #1
	ldr r0, [r3]
	adds r7, r0, r2
	ldr r2, _08132B7C @ =0x00000574
	adds r0, r4, r2
	ldr r6, [r0]
	mov r8, r5
	movs r0, #0x20
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r5, r0, r5
	movs r0, #0
	mov sb, r0
	movs r1, #0xaf
	lsls r1, r1, #3
	adds r4, r4, r1
	ldr r2, _08132B80 @ =0x001FFFFF
	mov sl, r2
_08132B1C:
	ldrb r0, [r4]
	lsrs r0, r0, #3
	lsls r0, r0, #1
	movs r2, #0x40
	subs r2, r2, r0
	asrs r2, r2, #1
	mov r0, sl
	ands r2, r0
	adds r0, r7, #0
	mov r1, r8
	bl CpuSet
	ldrb r0, [r4]
	lsrs r2, r0, #3
	cmp r2, #0
	beq _08132B48
	mov r1, sl
	ands r2, r1
	adds r0, r6, #0
	adds r1, r5, #0
	bl CpuSet
_08132B48:
	movs r2, #0x40
	add r8, r2
	adds r5, #0x40
	adds r7, #0x40
	adds r6, #0x40
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #0x1f
	bls _08132B1C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08132B70: .4byte gUnk_03000530
_08132B74: .4byte 0x0600E000
_08132B78: .4byte 0x05000200
_08132B7C: .4byte 0x00000574
_08132B80: .4byte 0x001FFFFF

	thumb_func_start sub_08132B84
sub_08132B84: @ 0x08132B84
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	ldr r2, _08132BAC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08132BB0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08132BB8
	.align 2, 0
_08132BAC: .4byte gCurTask
_08132BB0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08132BB8:
	adds r7, r0, #0
	ldr r0, [r2]
	ldr r1, _08132BDC @ =sub_08132ED8
	str r1, [r0, #8]
	ldr r0, [r7]
	mov sb, r0
	movs r1, #0x20
	add r1, sb
	mov sl, r1
	ldr r0, _08132BE0 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08132C0C
	lsls r0, r0, #2
	ldr r1, _08132BE4 @ =_08132BE8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08132BDC: .4byte sub_08132ED8
_08132BE0: .4byte gLanguage
_08132BE4: .4byte _08132BE8
_08132BE8: @ jump table
	.4byte _08132C00 @ case 0
	.4byte _08132C00 @ case 1
	.4byte _08132C00 @ case 2
	.4byte _08132C00 @ case 3
	.4byte _08132C00 @ case 4
	.4byte _08132C00 @ case 5
_08132C00:
	ldr r0, _08132C74 @ =0xFFFF0000
	ands r6, r0
	ldr r0, _08132C78 @ =0x00000349
	orrs r6, r0
	ldr r0, _08132C7C @ =0xFF00FFFF
	ands r6, r0
_08132C0C:
	movs r4, #0
	str r4, [sp, #4]
	adds r1, r7, #4
	ldr r2, _08132C80 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08132C84 @ =0x06010000
	str r0, [r7, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r7, #0x18]
	strh r6, [r7, #0x10]
	lsrs r0, r6, #0x10
	strb r0, [r7, #0x1e]
	strh r4, [r7, #0x1a]
	movs r0, #0xff
	strb r0, [r7, #0x1f]
	adds r0, r7, #0
	adds r0, #0x20
	movs r1, #0x10
	strb r1, [r0]
	adds r2, r7, #0
	adds r2, #0x23
	movs r0, #4
	strb r0, [r2]
	movs r0, #0x3b
	strh r0, [r7, #0x14]
	strh r1, [r7, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0xc]
	movs r0, #0xec
	str r0, [r7, #0x2c]
	movs r0, #0x40
	str r0, [r7, #0x30]
	strh r4, [r7, #0x34]
	strh r4, [r7, #0x36]
	strh r1, [r7, #0x38]
	strh r4, [r7, #0x3a]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	str r4, [r7, #0x44]
	ldr r0, _08132C88 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08132CBA
	lsls r0, r0, #2
	ldr r1, _08132C8C @ =_08132C90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08132C74: .4byte 0xFFFF0000
_08132C78: .4byte 0x00000349
_08132C7C: .4byte 0xFF00FFFF
_08132C80: .4byte 0x05000011
_08132C84: .4byte 0x06010000
_08132C88: .4byte gLanguage
_08132C8C: .4byte _08132C90
_08132C90: @ jump table
	.4byte _08132CA8 @ case 0
	.4byte _08132CA8 @ case 1
	.4byte _08132CA8 @ case 2
	.4byte _08132CA8 @ case 3
	.4byte _08132CA8 @ case 4
	.4byte _08132CA8 @ case 5
_08132CA8:
	ldr r0, _08132DCC @ =0xFFFF0000
	ands r6, r0
	ldr r0, _08132DD0 @ =0x00000349
	orrs r6, r0
	ldr r0, _08132DD4 @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r6, r0
_08132CBA:
	movs r4, #0
	str r4, [sp, #8]
	add r0, sp, #8
	adds r1, r7, #0
	adds r1, #0x48
	ldr r2, _08132DD8 @ =0x05000011
	bl CpuSet
	ldr r0, _08132DDC @ =0x06010000
	str r0, [r7, #0x48]
	adds r1, r7, #0
	adds r1, #0x5c
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x54
	strh r6, [r0]
	lsrs r0, r6, #0x10
	adds r1, #6
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5e
	strh r4, [r0]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x64
	movs r2, #0x10
	strb r2, [r0]
	adds r1, #4
	movs r0, #4
	strb r0, [r1]
	subs r1, #0xf
	movs r0, #0xb5
	strh r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r2, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #0x50]
	movs r0, #0xb5
	lsls r0, r0, #2
	str r0, [r7, #0x70]
	movs r0, #0x40
	str r0, [r7, #0x74]
	adds r0, r7, #0
	adds r0, #0x78
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strh r2, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	adds r0, #4
	str r4, [r0]
	mov r8, r4
_08132D3A:
	mov r3, r8
	lsls r0, r3, #4
	subs r0, r0, r3
	lsls r0, r0, #3
	subs r0, r0, r3
	lsls r5, r0, #2
	adds r0, r5, #0
	adds r0, #0xd0
	adds r0, r7, r0
	movs r4, #0xf4
	lsls r4, r4, #2
	add r4, sb
	add r4, r8
	ldrb r1, [r4]
	movs r2, #0xec
	muls r2, r1, r2
	add r2, sl
	adds r3, r2, #0
	adds r3, #0xe5
	ldrb r3, [r3]
	adds r2, #0xe6
	ldrh r2, [r2]
	str r2, [sp]
	mov r2, r8
	bl sub_0812F404
	ldr r1, _08132DE0 @ =0x00000579
	add r1, sb
	ldrb r0, [r4]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08132D7C
	b _08132EA8
_08132D7C:
	adds r2, r7, r5
	movs r4, #0x94
	lsls r4, r4, #1
	adds r3, r2, r4
	ldrh r1, [r3]
	ldr r0, _08132DE4 @ =0x0000F83F
	ands r0, r1
	movs r4, #0x80
	lsls r4, r4, #3
	adds r1, r4, #0
	orrs r0, r1
	strh r0, [r3]
	ldr r1, _08132DE8 @ =0x00000177
	adds r0, r2, r1
	movs r1, #5
	strb r1, [r0]
	ldr r3, _08132DEC @ =0x000001BB
	adds r0, r2, r3
	strb r1, [r0]
	ldr r4, _08132DF0 @ =0x000001FF
	adds r0, r2, r4
	strb r1, [r0]
	adds r3, #0x88
	adds r0, r2, r3
	strb r1, [r0]
	adds r4, #0x88
	adds r2, r2, r4
	strb r1, [r2]
	movs r3, #0x98
	mov r0, r8
	cmp r0, #1
	beq _08132DF4
	cmp r0, #1
	ble _08132E04
	cmp r0, #2
	beq _08132DFA
	cmp r0, #3
	beq _08132E00
	b _08132E04
	.align 2, 0
_08132DCC: .4byte 0xFFFF0000
_08132DD0: .4byte 0x00000349
_08132DD4: .4byte 0xFF00FFFF
_08132DD8: .4byte 0x05000011
_08132DDC: .4byte 0x06010000
_08132DE0: .4byte 0x00000579
_08132DE4: .4byte 0x0000F83F
_08132DE8: .4byte 0x00000177
_08132DEC: .4byte 0x000001BB
_08132DF0: .4byte 0x000001FF
_08132DF4:
	movs r3, #0x8c
	lsls r3, r3, #1
	b _08132E04
_08132DFA:
	movs r3, #0xcc
	lsls r3, r3, #1
	b _08132E04
_08132E00:
	movs r3, #0x86
	lsls r3, r3, #2
_08132E04:
	ldr r0, _08132E18 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08132E4C
	lsls r0, r0, #2
	ldr r1, _08132E1C @ =_08132E20
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08132E18: .4byte gLanguage
_08132E1C: .4byte _08132E20
_08132E20: @ jump table
	.4byte _08132E38 @ case 0
	.4byte _08132E38 @ case 1
	.4byte _08132E38 @ case 2
	.4byte _08132E38 @ case 3
	.4byte _08132E38 @ case 4
	.4byte _08132E38 @ case 5
_08132E38:
	ldr r0, _08132EC8 @ =0xFFFF0000
	ands r6, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r6, r0
	ldr r0, _08132ECC @ =0xFF00FFFF
	ands r6, r0
	movs r0, #0xe0
	lsls r0, r0, #0xb
	orrs r6, r0
_08132E4C:
	movs r5, #0
	str r5, [sp, #0xc]
	add r0, sp, #0xc
	adds r4, r7, #0
	adds r4, #0x8c
	ldr r2, _08132ED0 @ =0x05000011
	adds r1, r4, #0
	str r3, [sp, #0x10]
	bl CpuSet
	ldr r0, _08132ED4 @ =0x06010000
	str r0, [r4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	strh r6, [r4, #0xc]
	lsrs r0, r6, #0x10
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	movs r0, #4
	strb r0, [r4, #0x1f]
	movs r0, #0x76
	strh r0, [r4, #0x10]
	ldr r3, [sp, #0x10]
	lsrs r0, r3, #2
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xec
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	str r3, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
_08132EA8:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bhi _08132EB8
	b _08132D3A
_08132EB8:
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08132EC8: .4byte 0xFFFF0000
_08132ECC: .4byte 0xFF00FFFF
_08132ED0: .4byte 0x05000011
_08132ED4: .4byte 0x06010000

	thumb_func_start sub_08132ED8
sub_08132ED8: @ 0x08132ED8
	push {r4, lr}
	ldr r0, _08132EF4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08132EF8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08132F00
	.align 2, 0
_08132EF4: .4byte gCurTask
_08132EF8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08132F00:
	adds r0, r4, #4
	bl sub_081288DC
	adds r0, r4, #0
	adds r0, #0x48
	bl sub_081288DC
	adds r0, r4, #0
	adds r0, #0x8c
	bl sub_081288DC
	adds r0, r4, #0
	adds r0, #0xd0
	bl sub_081288DC
	movs r1, #0x8a
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xac
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xce
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0x89
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0x9a
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xbc
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xcd
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xde
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xef
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0x80
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133024 @ =0x00000444
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0x91
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133028 @ =0x000004CC
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xa2
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _0813302C @ =0x00000554
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xb3
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133030 @ =0x000005DC
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xc4
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133034 @ =0x00000664
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133038 @ =0x000006EC
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xe6
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _0813303C @ =0x00000774
	adds r0, r4, r1
	bl sub_081288DC
	movs r1, #0xf7
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_081288DC
	ldr r1, _08133040 @ =0x000007FC
	adds r0, r4, r1
	bl sub_081288DC
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08133024: .4byte 0x00000444
_08133028: .4byte 0x000004CC
_0813302C: .4byte 0x00000554
_08133030: .4byte 0x000005DC
_08133034: .4byte 0x00000664
_08133038: .4byte 0x000006EC
_0813303C: .4byte 0x00000774
_08133040: .4byte 0x000007FC

	thumb_func_start sub_08133044
sub_08133044: @ 0x08133044
	push {r4, r5, lr}
	adds r5, r0, #0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _081330A8 @ =0x0000176F
	cmp r4, r0
	bls _08133054
	adds r4, r0, #0
_08133054:
	movs r1, #0x96
	lsls r1, r1, #2
	adds r0, r4, #0
	bl __udivsi3
	strb r0, [r5, #3]
	ldrb r0, [r5, #3]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #3
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0x3c
	bl __udivsi3
	strb r0, [r5, #2]
	ldrb r1, [r5, #2]
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	strb r0, [r5, #1]
	ldrb r1, [r5, #1]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #1
	subs r0, r4, r0
	strb r0, [r5]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081330A8: .4byte 0x0000176F

	thumb_func_start sub_081330AC
sub_081330AC: @ 0x081330AC
	push {r4, lr}
	ldr r2, _081330CC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _081330D0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081330D8
	.align 2, 0
_081330CC: .4byte gCurTask
_081330D0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081330D8:
	ldr r1, _08133110 @ =0x0000057E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _0813310A
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, _08133114 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08133104
	bl sub_08031CC8
	bl sub_081589E8
_08133104:
	movs r0, #2
	bl sub_08138D64
_0813310A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08133110: .4byte 0x0000057E
_08133114: .4byte gUnk_0203AD10

	thumb_func_start sub_08133118
sub_08133118: @ 0x08133118
	push {r4, r5, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133132
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _0813313A
_08133132:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_0813313A:
	ldr r0, [r5, #0x10]
	bl TaskDestroy
	movs r4, #0
	str r4, [r5, #0x10]
	ldr r0, [r5, #0x14]
	bl TaskDestroy
	str r4, [r5, #0x14]
	ldr r0, [r5, #0x18]
	bl TaskDestroy
	str r4, [r5, #0x18]
	ldr r0, [r5, #0x1c]
	bl TaskDestroy
	str r4, [r5, #0x1c]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08133164
sub_08133164: @ 0x08133164
	adds r3, r0, #0
	adds r2, r3, #0
	adds r2, #0xc0
	adds r0, #0xa8
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	adds r2, #4
	adds r0, r3, #0
	adds r0, #0xaa
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
	bx lr
	.align 2, 0

	thumb_func_start sub_0813318C
sub_0813318C: @ 0x0813318C
	push {lr}
	adds r2, r0, #0
	adds r2, #0xa8
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, _081331C8 @ =0x000002FF
	cmp r1, r0
	bgt _081331A2
	adds r0, r3, #4
	strh r0, [r2]
_081331A2:
	ldrh r3, [r2]
	movs r0, #0
	ldrsh r1, [r2, r0]
	movs r0, #0xc0
	lsls r0, r0, #2
	cmp r1, r0
	ble _081331B4
	subs r0, r3, #3
	strh r0, [r2]
_081331B4:
	movs r1, #0
	ldrsh r0, [r2, r1]
	movs r1, #0xc0
	lsls r1, r1, #3
	cmp r0, r1
	ble _081331C2
	strh r1, [r2]
_081331C2:
	pop {r0}
	bx r0
	.align 2, 0
_081331C8: .4byte 0x000002FF

	thumb_func_start sub_081331CC
sub_081331CC: @ 0x081331CC
	push {lr}
	adds r2, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	adds r0, #0xb0
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _081331EC
	adds r1, r2, #0
	adds r1, #0xe6
	ldrh r0, [r1]
	cmp r0, #0
	bne _081331EC
	strh r3, [r1]
_081331EC:
	pop {r0}
	bx r0

	thumb_func_start sub_081331F0
sub_081331F0: @ 0x081331F0
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r6, r1, #0
	adds r4, r3, #0
	adds r4, #0x94
	ldrh r0, [r4]
	ldr r5, _08133244 @ =0x0000FFFB
	ands r5, r0
	strh r5, [r4]
	movs r1, #0
	ldr r2, [r6]
	cmp r2, #0
	bge _0813320C
	rsbs r2, r2, #0
_0813320C:
	adds r0, r3, #0
	adds r0, #0xc0
	ldr r3, [r0]
	cmp r2, r3
	bgt _08133218
	movs r1, #1
_08133218:
	movs r2, #0
	ldr r0, [r6]
	cmp r0, #0
	bge _08133222
	rsbs r0, r0, #0
_08133222:
	movs r6, #0x80
	lsls r6, r6, #3
	adds r0, r0, r6
	cmp r3, r0
	bgt _0813322E
	movs r2, #1
_0813322E:
	ands r1, r2
	cmp r1, #0
	beq _0813323C
	movs r1, #4
	adds r0, r5, #0
	orrs r0, r1
	strh r0, [r4]
_0813323C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08133244: .4byte 0x0000FFFB

	thumb_func_start sub_08133248
sub_08133248: @ 0x08133248
	push {r4, lr}
	adds r3, r0, #0
	adds r0, #0xc0
	ldr r0, [r0]
	str r0, [r3, #0x28]
	adds r2, r3, #0
	adds r2, #0xc4
	adds r0, r3, #0
	adds r0, #0xd0
	movs r4, #0
	ldrsh r1, [r0, r4]
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r3, #0x2c]
	adds r0, r3, #0
	adds r0, #0x94
	ldrh r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08133278
	adds r0, r3, #0
	bl sub_081288DC
_08133278:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08133280
sub_08133280: @ 0x08133280
	push {r4, r5, lr}
	mov ip, r0
	ldr r4, _081332C8 @ =gUnk_0837283C
	mov r5, ip
	adds r5, #0xe5
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #2
	ldr r3, _081332CC @ =gLanguage
	ldrh r1, [r3]
	movs r2, #0x2c
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r4
	ldrh r1, [r0]
	mov r0, ip
	adds r0, #0x50
	strh r1, [r0]
	ldrb r0, [r5]
	adds r0, #1
	lsls r0, r0, #2
	ldrh r1, [r3]
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r0, [r0, #2]
	mov r1, ip
	adds r1, #0x5e
	strb r0, [r1]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081332C8: .4byte gUnk_0837283C
_081332CC: .4byte gLanguage

	thumb_func_start sub_081332D0
sub_081332D0: @ 0x081332D0
	push {lr}
	adds r3, r0, #0
	adds r0, #0xc0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r0, [r0]
	adds r0, r0, r1
	adds r1, r3, #0
	adds r1, #0xc4
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	ldr r1, [r1]
	adds r1, r1, r2
	adds r2, r3, #0
	adds r2, #0xd4
	ldr r2, [r2]
	bl sub_081332FC
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	pop {r1}
	bx r1

	thumb_func_start sub_081332FC
sub_081332FC: @ 0x081332FC
	push {r4, lr}
	ldr r3, _08133334 @ =0x000003FF
	adds r4, r3, #0
	adds r3, r0, #0
	ands r3, r4
	ands r1, r4
	ldr r4, _08133338 @ =gUnk_0837EA88
	asrs r0, r0, #0xa
	adds r2, r2, r0
	ldrb r0, [r2]
	lsls r0, r0, #2
	adds r0, r0, r4
	ldr r2, [r0]
	lsrs r1, r1, #5
	lsls r3, r3, #0x10
	lsrs r0, r3, #0x16
	lsls r1, r1, #4
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r1, [r1]
	asrs r3, r3, #0x15
	movs r0, #1
	ands r3, r0
	cmp r3, #0
	beq _0813333C
	movs r0, #0xf
	ands r0, r1
	b _0813333E
	.align 2, 0
_08133334: .4byte 0x000003FF
_08133338: .4byte gUnk_0837EA88
_0813333C:
	lsrs r0, r1, #4
_0813333E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08133344
sub_08133344: @ 0x08133344
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08133378 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813337C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133384
	.align 2, 0
_08133378: .4byte sub_08128980
_0813337C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133384:
	adds r5, r0, #0
	ldr r0, _08133398 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _081333CC
	lsls r0, r0, #2
	ldr r1, _0813339C @ =_081333A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133398: .4byte gLanguage
_0813339C: .4byte _081333A0
_081333A0: @ jump table
	.4byte _081333B8 @ case 0
	.4byte _081333B8 @ case 1
	.4byte _081333B8 @ case 2
	.4byte _081333B8 @ case 3
	.4byte _081333B8 @ case 4
	.4byte _081333B8 @ case 5
_081333B8:
	ldr r0, _0813345C @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133460 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xb
	orrs r4, r0
_081333CC:
	mov r0, r8
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	str r7, [r5, #0x48]
	movs r1, #0x20
	str r1, [r5, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0813346C
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133464 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133468 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _081334C2
	.align 2, 0
_0813345C: .4byte 0xFFFF0000
_08133460: .4byte 0xFF00FFFF
_08133464: .4byte 0x05000011
_08133468: .4byte 0x06010000
_0813346C:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081334D4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081334D8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_081334C2:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081334D4: .4byte 0x05000011
_081334D8: .4byte 0x06010000

	thumb_func_start sub_081334DC
sub_081334DC: @ 0x081334DC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _08133514 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133518
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133522
	.align 2, 0
_08133514: .4byte sub_08128980
_08133518:
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133522:
	adds r5, r0, #0
	ldr r0, _08133538 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0813356C
	lsls r0, r0, #2
	ldr r1, _0813353C @ =_08133540
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133538: .4byte gLanguage
_0813353C: .4byte _08133540
_08133540: @ jump table
	.4byte _08133558 @ case 0
	.4byte _08133558 @ case 1
	.4byte _08133558 @ case 2
	.4byte _08133558 @ case 3
	.4byte _08133558 @ case 4
	.4byte _08133558 @ case 5
_08133558:
	ldr r0, _08133600 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133604 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r4, r0
_0813356C:
	mov r1, sb
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	str r7, [r5, #0x48]
	movs r1, #8
	str r1, [r5, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08133610
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133608 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0813360C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #6
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08133668
	.align 2, 0
_08133600: .4byte 0xFFFF0000
_08133604: .4byte 0xFF00FFFF
_08133608: .4byte 0x05000011
_0813360C: .4byte 0x06010000
_08133610:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133680 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133684 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #6
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08133668:
	mov r1, sb
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	mov r0, r8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08133680: .4byte 0x05000011
_08133684: .4byte 0x06010000

	thumb_func_start sub_08133688
sub_08133688: @ 0x08133688
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081336A6
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081336AE
_081336A6:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081336AE:
	adds r5, r0, #0
	cmp r4, #0
	beq _08133790
	ldr r0, _081336C8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bls _081336BE
	b _081337D8
_081336BE:
	lsls r0, r0, #2
	ldr r1, _081336CC @ =_081336D0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081336C8: .4byte gLanguage
_081336CC: .4byte _081336D0
_081336D0: @ jump table
	.4byte _081336E8 @ case 0
	.4byte _08133704 @ case 1
	.4byte _08133720 @ case 2
	.4byte _0813373C @ case 3
	.4byte _08133758 @ case 4
	.4byte _08133774 @ case 5
_081336E8:
	ldr r0, _081336FC @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133700 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_081336FC: .4byte 0xFFFF0000
_08133700: .4byte 0xFF00FFFF
_08133704:
	ldr r0, _08133718 @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _0813371C @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_08133718: .4byte 0xFFFF0000
_0813371C: .4byte 0xFF00FFFF
_08133720:
	ldr r0, _08133734 @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133738 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_08133734: .4byte 0xFFFF0000
_08133738: .4byte 0xFF00FFFF
_0813373C:
	ldr r0, _08133750 @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133754 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_08133750: .4byte 0xFFFF0000
_08133754: .4byte 0xFF00FFFF
_08133758:
	ldr r0, _0813376C @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133770 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_0813376C: .4byte 0xFFFF0000
_08133770: .4byte 0xFF00FFFF
_08133774:
	ldr r0, _08133788 @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _0813378C @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	b _081337D6
	.align 2, 0
_08133788: .4byte 0xFFFF0000
_0813378C: .4byte 0xFF00FFFF
_08133790:
	ldr r0, _081337A4 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _081337D8
	lsls r0, r0, #2
	ldr r1, _081337A8 @ =_081337AC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081337A4: .4byte gLanguage
_081337A8: .4byte _081337AC
_081337AC: @ jump table
	.4byte _081337C4 @ case 0
	.4byte _081337C4 @ case 1
	.4byte _081337C4 @ case 2
	.4byte _081337C4 @ case 3
	.4byte _081337C4 @ case 4
	.4byte _081337C4 @ case 5
_081337C4:
	ldr r0, _081337FC @ =0xFFFF0000
	ands r2, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r2, r0
	ldr r0, _08133800 @ =0xFF00FFFF
	ands r2, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
_081337D6:
	orrs r2, r0
_081337D8:
	ldrh r1, [r5, #0x10]
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	lsls r3, r2, #8
	cmp r1, r0
	bne _081337EC
	ldrb r1, [r5, #0x1e]
	lsrs r0, r3, #0x18
	cmp r1, r0
	beq _081337F6
_081337EC:
	strh r2, [r5, #0x10]
	lsrs r0, r3, #0x18
	strb r0, [r5, #0x1e]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
_081337F6:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081337FC: .4byte 0xFFFF0000
_08133800: .4byte 0xFF00FFFF

	thumb_func_start sub_08133804
sub_08133804: @ 0x08133804
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08133838 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813383C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133844
	.align 2, 0
_08133838: .4byte sub_08128980
_0813383C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133844:
	adds r5, r0, #0
	ldr r0, _08133858 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0813388C
	lsls r0, r0, #2
	ldr r1, _0813385C @ =_08133860
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133858: .4byte gLanguage
_0813385C: .4byte _08133860
_08133860: @ jump table
	.4byte _08133878 @ case 0
	.4byte _08133878 @ case 1
	.4byte _08133878 @ case 2
	.4byte _08133878 @ case 3
	.4byte _08133878 @ case 4
	.4byte _08133878 @ case 5
_08133878:
	ldr r0, _0813391C @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133920 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0xa0
	lsls r0, r0, #0xb
	orrs r4, r0
_0813388C:
	mov r0, r8
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _0813392C
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133924 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133928 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08133982
	.align 2, 0
_0813391C: .4byte 0xFFFF0000
_08133920: .4byte 0xFF00FFFF
_08133924: .4byte 0x05000011
_08133928: .4byte 0x06010000
_0813392C:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133994 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133998 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08133982:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08133994: .4byte 0x05000011
_08133998: .4byte 0x06010000

	thumb_func_start sub_0813399C
sub_0813399C: @ 0x0813399C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _081339D0 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081339D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081339DC
	.align 2, 0
_081339D0: .4byte sub_08128980
_081339D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081339DC:
	adds r5, r0, #0
	ldr r0, _081339F0 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08133A24
	lsls r0, r0, #2
	ldr r1, _081339F4 @ =_081339F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081339F0: .4byte gLanguage
_081339F4: .4byte _081339F8
_081339F8: @ jump table
	.4byte _08133A10 @ case 0
	.4byte _08133A10 @ case 1
	.4byte _08133A10 @ case 2
	.4byte _08133A10 @ case 3
	.4byte _08133A10 @ case 4
	.4byte _08133A10 @ case 5
_08133A10:
	ldr r0, _08133AE0 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133AE4 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08133A24:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0xf
	strh r0, [r1]
	adds r6, r5, #0
	adds r6, #0x52
	movs r0, #1
	strh r0, [r6]
	mov r1, r8
	ldr r0, [r1, #0x28]
	subs r0, #0x20
	str r0, [r5, #0x48]
	ldr r3, _08133AE8 @ =gUnk_0837EEDC
	ldr r2, _08133AEC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08133AF0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08133AF4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #7
	ands r0, r1
	adds r0, r0, r3
	ldrb r1, [r0]
	lsls r1, r1, #2
	mov r2, r8
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldrh r1, [r6]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08133B00
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133AF8 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133AFC @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08133B58
	.align 2, 0
_08133AE0: .4byte 0xFFFF0000
_08133AE4: .4byte 0xFF00FFFF
_08133AE8: .4byte gUnk_0837EEDC
_08133AEC: .4byte gRngVal
_08133AF0: .4byte 0x00196225
_08133AF4: .4byte 0x3C6EF35F
_08133AF8: .4byte 0x05000011
_08133AFC: .4byte 0x06010000
_08133B00:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133B6C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133B70 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08133B58:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08133B6C: .4byte 0x05000011
_08133B70: .4byte 0x06010000

	thumb_func_start sub_08133B74
sub_08133B74: @ 0x08133B74
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	mov sb, r2
	mov sl, r3
	ldr r0, _08133BB4 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133BB8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133BC0
	.align 2, 0
_08133BB4: .4byte sub_08128980
_08133BB8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133BC0:
	adds r5, r0, #0
	ldr r0, _08133BD4 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08133C08
	lsls r0, r0, #2
	ldr r1, _08133BD8 @ =_08133BDC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133BD4: .4byte gLanguage
_08133BD8: .4byte _08133BDC
_08133BDC: @ jump table
	.4byte _08133BF4 @ case 0
	.4byte _08133BF4 @ case 1
	.4byte _08133BF4 @ case 2
	.4byte _08133BF4 @ case 3
	.4byte _08133BF4 @ case 4
	.4byte _08133BF4 @ case 5
_08133BF4:
	ldr r0, _08133CAC @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08133CB0 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08133C08:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x19
	strh r0, [r1]
	adds r2, r5, #0
	adds r2, #0x52
	movs r0, #1
	strh r0, [r2]
	lsls r1, r6, #2
	mov r3, r8
	ldr r0, [r3, #0x28]
	adds r0, r0, r1
	str r0, [r5, #0x48]
	mov r0, sb
	lsls r1, r0, #2
	ldr r0, [r3, #0x2c]
	adds r0, r0, r1
	str r0, [r5, #0x4c]
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08133CBC
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133CB4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133CB8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08133D14
	.align 2, 0
_08133CAC: .4byte 0xFFFF0000
_08133CB0: .4byte 0xFF00FFFF
_08133CB4: .4byte 0x05000011
_08133CB8: .4byte 0x06010000
_08133CBC:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133D38 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133D3C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08133D14:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	movs r0, #4
	strh r0, [r5, #0x34]
	ldr r0, _08133D40 @ =gUnk_0837EEDC
	add r0, sl
	ldrb r0, [r0]
	lsls r0, r0, #2
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08133D38: .4byte 0x05000011
_08133D3C: .4byte 0x06010000
_08133D40: .4byte gUnk_0837EEDC

	thumb_func_start sub_08133D44
sub_08133D44: @ 0x08133D44
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r0, _08133D7C @ =sub_08134884
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133D80
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133D8A
	.align 2, 0
_08133D7C: .4byte sub_08134884
_08133D80:
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133D8A:
	adds r4, r0, #0
	ldr r0, _08133DA0 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08133DCE
	lsls r0, r0, #2
	ldr r1, _08133DA4 @ =_08133DA8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08133DA0: .4byte gLanguage
_08133DA4: .4byte _08133DA8
_08133DA8: @ jump table
	.4byte _08133DC0 @ case 0
	.4byte _08133DC0 @ case 1
	.4byte _08133DC0 @ case 2
	.4byte _08133DC0 @ case 3
	.4byte _08133DC0 @ case 4
	.4byte _08133DC0 @ case 5
_08133DC0:
	ldr r0, _08133E64 @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r5, r0
	ldr r0, _08133E68 @ =0xFF00FFFF
	ands r5, r0
_08133DCE:
	mov r1, sb
	str r1, [r4]
	adds r0, r4, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #2
	strh r0, [r2]
	movs r1, #0x30
	rsbs r1, r1, #0
	str r1, [r4, #0x48]
	movs r1, #0x30
	str r1, [r4, #0x4c]
	ldrh r1, [r2]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08133E74
	str r7, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08133E6C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133E70 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08133ECC
	.align 2, 0
_08133E64: .4byte 0xFFFF0000
_08133E68: .4byte 0xFF00FFFF
_08133E6C: .4byte 0x05000011
_08133E70: .4byte 0x06010000
_08133E74:
	str r6, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08133EE4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133EE8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
_08133ECC:
	mov r1, sb
	ldr r0, [r1, #0x38]
	str r0, [r4, #0x3c]
	mov r0, r8
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08133EE4: .4byte 0x05000011
_08133EE8: .4byte 0x06010000

	thumb_func_start sub_08133EEC
sub_08133EEC: @ 0x08133EEC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov r8, r1
	ldr r0, _08133F28 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08133F2C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08133F34
	.align 2, 0
_08133F28: .4byte sub_08128980
_08133F2C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08133F34:
	adds r5, r0, #0
	mov r0, sb
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x1e
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	subs r0, #0x23
	str r0, [r5, #0x48]
	movs r0, #0x40
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08134000
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08133FF0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08133FF4 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r4, _08133FF8 @ =gUnk_0837EEF0
	mov r1, r8
	lsls r2, r1, #2
	ldr r3, _08133FFC @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _0813407A
	.align 2, 0
_08133FF0: .4byte 0x05000011
_08133FF4: .4byte 0x06010000
_08133FF8: .4byte gUnk_0837EEF0
_08133FFC: .4byte gLanguage
_08134000:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08134098 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0813409C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r4, _081340A0 @ =gUnk_0837EEF0
	mov r0, r8
	lsls r2, r0, #2
	ldr r3, _081340A4 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r2, r0
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r2, r2, r0
	adds r2, r2, r4
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_0813407A:
	mov r1, sb
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, _081340A8 @ =0x0000FFFE
	strh r0, [r5, #0x34]
	subs r0, #2
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134098: .4byte 0x05000011
_0813409C: .4byte 0x06010000
_081340A0: .4byte gUnk_0837EEF0
_081340A4: .4byte gLanguage
_081340A8: .4byte 0x0000FFFE

	thumb_func_start sub_081340AC
sub_081340AC: @ 0x081340AC
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	mov sb, r0
	ldr r0, _0813416C @ =gRngVal
	mov r8, r0
	ldr r0, [r0]
	ldr r6, _08134170 @ =0x00196225
	muls r0, r6, r0
	ldr r4, _08134174 @ =0x3C6EF35F
	adds r0, r0, r4
	movs r5, #7
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #0x11
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_081341B0
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #0x11
	rsbs r1, r1, #0
	asrs r1, r1, #0x10
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_081341B0
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_081341B0
	mov r1, r8
	ldr r0, [r1]
	muls r0, r6, r0
	adds r0, r0, r4
	adds r1, r0, #0
	ands r1, r5
	lsls r1, r1, #1
	adds r2, r0, #0
	muls r2, r6, r2
	adds r2, r2, r4
	mov r0, r8
	str r2, [r0]
	ands r2, r5
	lsls r2, r2, #0x12
	rsbs r2, r2, #0
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_081341B0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813416C: .4byte gRngVal
_08134170: .4byte 0x00196225
_08134174: .4byte 0x3C6EF35F

	thumb_func_start sub_08134178
sub_08134178: @ 0x08134178
	ldr r3, _081341A4 @ =gRngVal
	ldr r0, [r3]
	ldr r2, _081341A8 @ =0x00196225
	muls r0, r2, r0
	ldr r1, _081341AC @ =0x3C6EF35F
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	muls r0, r2, r0
	adds r0, r0, r1
	str r0, [r3]
	bx lr
	.align 2, 0
_081341A4: .4byte gRngVal
_081341A8: .4byte 0x00196225
_081341AC: .4byte 0x3C6EF35F

	thumb_func_start sub_081341B0
sub_081341B0: @ 0x081341B0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov sb, r1
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov sl, r2
	ldr r0, _081341F4 @ =sub_0813436C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081341F8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08134200
	.align 2, 0
_081341F4: .4byte sub_0813436C
_081341F8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08134200:
	adds r5, r0, #0
	ldr r0, _08134214 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08134248
	lsls r0, r0, #2
	ldr r1, _08134218 @ =_0813421C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08134214: .4byte gLanguage
_08134218: .4byte _0813421C
_0813421C: @ jump table
	.4byte _08134234 @ case 0
	.4byte _08134234 @ case 1
	.4byte _08134234 @ case 2
	.4byte _08134234 @ case 3
	.4byte _08134234 @ case 4
	.4byte _08134234 @ case 5
_08134234:
	ldr r0, _081342DC @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xd2
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _081342E0 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08134248:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x3c
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081342EC
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081342E4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081342E8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08134344
	.align 2, 0
_081342DC: .4byte 0xFFFF0000
_081342E0: .4byte 0xFF00FFFF
_081342E4: .4byte 0x05000011
_081342E8: .4byte 0x06010000
_081342EC:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08134364 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08134368 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x90
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08134344:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	mov r0, sb
	strh r0, [r5, #0x34]
	mov r1, sl
	strh r1, [r5, #0x36]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134364: .4byte 0x05000011
_08134368: .4byte 0x06010000

	thumb_func_start sub_0813436C
sub_0813436C: @ 0x0813436C
	push {r4, lr}
	ldr r0, _08134388 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813438C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08134394
	.align 2, 0
_08134388: .4byte gCurTask
_0813438C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08134394:
	ldrh r0, [r4, #0x36]
	adds r0, #2
	strh r0, [r4, #0x36]
	adds r0, r4, #0
	bl sub_0812A2C0
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081343CC
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _081343BE
	subs r0, #1
	strh r0, [r1]
	b _081343E0
_081343BE:
	ldr r0, _081343C8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _081343E0
	.align 2, 0
_081343C8: .4byte gCurTask
_081343CC:
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081343E0
	ldr r0, _081343E8 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081343E0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081343E8: .4byte gCurTask

	thumb_func_start sub_081343EC
sub_081343EC: @ 0x081343EC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _0813441C @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08134420
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08134428
	.align 2, 0
_0813441C: .4byte sub_08128980
_08134420:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08134428:
	adds r4, r0, #0
	ldr r0, _0813443C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08134468
	lsls r0, r0, #2
	ldr r1, _08134440 @ =_08134444
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0813443C: .4byte gLanguage
_08134440: .4byte _08134444
_08134444: @ jump table
	.4byte _0813445C @ case 0
	.4byte _0813445C @ case 1
	.4byte _0813445C @ case 2
	.4byte _0813445C @ case 3
	.4byte _0813445C @ case 4
	.4byte _0813445C @ case 5
_0813445C:
	ldr r0, _08134500 @ =0xFFFF0000
	ands r5, r0
	ldr r0, _08134504 @ =0x0000034A
	orrs r5, r0
	ldr r0, _08134508 @ =0xFF00FFFF
	ands r5, r0
_08134468:
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	subs r0, #0xa0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08134514
	str r7, [sp, #4]
	adds r1, r4, #4
	ldr r2, _0813450C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08134510 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _0813456C
	.align 2, 0
_08134500: .4byte 0xFFFF0000
_08134504: .4byte 0x0000034A
_08134508: .4byte 0xFF00FFFF
_0813450C: .4byte 0x05000011
_08134510: .4byte 0x06010000
_08134514:
	str r6, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08134574 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08134578 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
_0813456C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134574: .4byte 0x05000011
_08134578: .4byte 0x06010000

	thumb_func_start sub_0813457C
sub_0813457C: @ 0x0813457C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	ldr r0, _081345B0 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081345B4
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081345BE
	.align 2, 0
_081345B0: .4byte sub_08128980
_081345B4:
	mov r0, r8
	ldrh r1, [r0, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081345BE:
	adds r5, r0, #0
	ldr r0, _081345D4 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08134606
	lsls r0, r0, #2
	ldr r1, _081345D8 @ =_081345DC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081345D4: .4byte gLanguage
_081345D8: .4byte _081345DC
_081345DC: @ jump table
	.4byte _081345F4 @ case 0
	.4byte _081345F4 @ case 1
	.4byte _081345F4 @ case 2
	.4byte _081345F4 @ case 3
	.4byte _081345F4 @ case 4
	.4byte _081345F4 @ case 5
_081345F4:
	ldr r0, _0813469C @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081346A0 @ =0x0000034A
	orrs r4, r0
	ldr r0, _081346A4 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08134606:
	movs r7, #0
	str r7, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	strh r7, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r5, #0x48]
	subs r0, #0xa0
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081346B0
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081346A8 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081346AC @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08134708
	.align 2, 0
_0813469C: .4byte 0xFFFF0000
_081346A0: .4byte 0x0000034A
_081346A4: .4byte 0xFF00FFFF
_081346A8: .4byte 0x05000011
_081346AC: .4byte 0x06010000
_081346B0:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08134718 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _0813471C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #4
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08134708:
	mov r0, r8
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08134718: .4byte 0x05000011
_0813471C: .4byte 0x06010000

	thumb_func_start sub_08134720
sub_08134720: @ 0x08134720
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813473A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08134742
_0813473A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08134742:
	ldrh r1, [r2, #0x38]
	ldr r0, _08134750 @ =0x0000EFFF
	ands r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0
_08134750: .4byte 0x0000EFFF

	thumb_func_start sub_08134754
sub_08134754: @ 0x08134754
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813476E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08134776
_0813476E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08134776:
	ldrh r1, [r2, #0x38]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2, #0x38]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08134788
sub_08134788: @ 0x08134788
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _081347B8 @ =sub_0813483C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r3, r0, #0
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081347BC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081347C4
	.align 2, 0
_081347B8: .4byte sub_0813483C
_081347BC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081347C4:
	str r4, [r2]
	ldr r0, [r4, #0x28]
	movs r1, #0
	strh r0, [r2, #4]
	strb r1, [r2, #6]
	adds r0, r3, #0
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_081347D8
sub_081347D8: @ 0x081347D8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r6, r2, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _08134810 @ =sub_081348B4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0xc
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08134814
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0813481C
	.align 2, 0
_08134810: .4byte sub_081348B4
_08134814:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0813481C:
	str r4, [r2]
	ldr r0, [r4, #0x28]
	movs r1, #0
	strh r0, [r2, #4]
	strb r1, [r2, #6]
	ldr r0, _08134838 @ =gUnk_0837EEE3
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r2, #7]
	str r6, [r2, #8]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08134838: .4byte gUnk_0837EEE3

	thumb_func_start sub_0813483C
sub_0813483C: @ 0x0813483C
	push {r4, lr}
	ldr r0, _08134858 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813485C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08134864
	.align 2, 0
_08134858: .4byte gCurTask
_0813485C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08134864:
	ldrb r0, [r4, #6]
	adds r1, r0, #1
	strb r1, [r4, #6]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	ble _0813487C
	ldr r0, [r4]
	bl sub_0813399C
	movs r0, #0
	strb r0, [r4, #6]
_0813487C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08134884
sub_08134884: @ 0x08134884
	push {lr}
	ldr r0, _081348A0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081348A4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081348AC
	.align 2, 0
_081348A0: .4byte gCurTask
_081348A4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081348AC:
	bl sub_0812A2C0
	pop {r0}
	bx r0

	thumb_func_start sub_081348B4
sub_081348B4: @ 0x081348B4
	push {r4, lr}
	ldr r0, _081348D0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081348D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081348DC
	.align 2, 0
_081348D0: .4byte gCurTask
_081348D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081348DC:
	ldr r0, [r4]
	movs r2, #8
	rsbs r2, r2, #0
	movs r1, #0x1a
	movs r3, #0
	bl sub_08133B74
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #0
	movs r3, #1
	bl sub_08133B74
	ldr r0, [r4]
	movs r1, #0x1a
	movs r2, #8
	movs r3, #2
	bl sub_08133B74
	ldr r0, [r4]
	movs r2, #4
	rsbs r2, r2, #0
	movs r1, #0x1e
	movs r3, #3
	bl sub_08133B74
	ldr r0, [r4]
	movs r1, #0x1e
	movs r2, #4
	movs r3, #4
	bl sub_08133B74
	ldr r0, _0813492C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813492C: .4byte gCurTask

	thumb_func_start sub_08134930
sub_08134930: @ 0x08134930
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r7, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, _08134954 @ =gUnk_0203AD30
	ldrb r0, [r0]
	cmp sl, r0
	bhs _08134958
	adds r1, r7, #0
	adds r1, #0xd0
	movs r0, #0
	b _0813495E
	.align 2, 0
_08134954: .4byte gUnk_0203AD30
_08134958:
	adds r1, r7, #0
	adds r1, #0xd0
	movs r0, #1
_0813495E:
	strh r0, [r1]
	adds r2, r1, #0
	ldr r0, _08134BB4 @ =gUnk_0203AD3C
	ldrb r0, [r0]
	cmp sl, r0
	bne _08134972
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
_08134972:
	ldrh r0, [r2]
	movs r5, #0x10
	movs r6, #0
	movs r4, #0
	orrs r0, r5
	strh r0, [r2]
	adds r0, r7, #0
	adds r0, #0xcc
	str r4, [r0]
	adds r0, #0x10
	strh r4, [r0]
	adds r0, #2
	str r0, [sp, #0xc]
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	adds r0, #1
	strh r4, [r0]
	adds r0, #2
	strb r6, [r0]
	adds r0, #2
	strh r4, [r0]
	adds r0, #2
	strb r6, [r0]
	adds r0, #1
	strb r6, [r0]
	movs r1, #0xe8
	adds r1, r1, r7
	mov sb, r1
	strb r6, [r1]
	str r4, [sp]
	ldr r2, _08134BB8 @ =0x05000011
	mov r0, sp
	adds r1, r7, #0
	bl CpuSet
	ldr r0, _08134BBC @ =0x06010000
	str r0, [r7]
	movs r0, #0xa8
	lsls r0, r0, #3
	strh r0, [r7, #0x14]
	ldr r3, _08134BC0 @ =gUnk_0837EFC8
	ldr r2, _08134BC4 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r7, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	strb r0, [r7, #0x1a]
	strh r4, [r7, #0x16]
	movs r0, #0xff
	strb r0, [r7, #0x1b]
	strb r5, [r7, #0x1c]
	mov r2, sl
	strb r2, [r7, #0x1f]
	ldr r1, _08134BC8 @ =gUnk_0837F058
	mov r0, sl
	lsls r3, r0, #1
	lsls r5, r0, #3
	adds r0, r5, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	strh r0, [r7, #0x10]
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	asrs r0, r1, #2
	strh r0, [r7, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r7, #8]
	str r2, [r7, #0x28]
	str r1, [r7, #0x2c]
	strh r4, [r7, #0x30]
	strh r4, [r7, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r7, #0x34]
	strh r4, [r7, #0x36]
	str r4, [r7, #0x38]
	str r4, [r7, #0x3c]
	str r4, [r7, #0x40]
	ldr r4, [sp, #0xc]
	mov r1, sb
	str r1, [sp, #0x20]
	str r3, [sp, #0x18]
	str r5, [sp, #0x1c]
	mov r2, sl
	cmp r2, #1
	bhi _08134A3E
	movs r1, #1
	orrs r0, r1
	strh r0, [r7, #0x34]
_08134A3E:
	mov r3, sl
	cmp r3, #0
	beq _08134A48
	cmp r3, #3
	bne _08134A58
_08134A48:
	ldrh r0, [r7, #0x14]
	ldr r1, _08134BCC @ =0x0000F83F
	ands r1, r0
	movs r2, #0x98
	lsls r2, r2, #3
	adds r0, r2, #0
	orrs r1, r0
	strh r1, [r7, #0x14]
_08134A58:
	ldr r0, [r7, #8]
	ldr r1, _08134BD0 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r7, #8]
	movs r5, #0
	str r5, [sp, #4]
	add r0, sp, #4
	adds r1, r7, #0
	adds r1, #0x44
	ldr r2, _08134BB8 @ =0x05000011
	bl CpuSet
	ldr r3, _08134BBC @ =0x06010000
	str r3, [r7, #0x44]
	adds r0, r7, #0
	adds r0, #0x58
	movs r1, #0xf0
	lsls r1, r1, #2
	strh r1, [r0]
	ldr r2, _08134BD4 @ =gUnk_0837F078
	ldr r3, _08134BC4 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r4]
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrh r1, [r0]
	adds r0, r7, #0
	adds r0, #0x50
	strh r1, [r0]
	ldrh r1, [r3]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r4, [r4]
	adds r0, r0, r4
	lsls r0, r0, #2
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	adds r1, r7, #0
	adds r1, #0x5e
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x5a
	strh r5, [r0]
	adds r1, #1
	movs r0, #0xff
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0x60
	movs r2, #0x10
	mov sb, r2
	mov r3, sb
	strb r3, [r0]
	adds r0, #3
	mov r1, sl
	strb r1, [r0]
	ldr r1, _08134BD8 @ =gUnk_0837F150
	ldr r2, [sp, #0x1c]
	adds r0, r2, r1
	ldr r3, [r0]
	asrs r2, r3, #2
	adds r0, r7, #0
	adds r0, #0x54
	strh r2, [r0]
	ldr r0, [sp, #0x18]
	adds r0, #1
	lsls r0, r0, #2
	mov r8, r0
	add r1, r8
	ldr r1, [r1]
	asrs r0, r1, #2
	adds r2, r7, #0
	adds r2, #0x56
	strh r0, [r2]
	movs r2, #0xc0
	lsls r2, r2, #0xc
	str r2, [r7, #0x4c]
	str r3, [r7, #0x6c]
	str r1, [r7, #0x70]
	adds r0, r7, #0
	adds r0, #0x74
	strh r5, [r0]
	adds r0, #2
	strh r5, [r0]
	adds r0, #2
	movs r3, #0x10
	mov sl, r3
	mov r1, sb
	strh r1, [r0]
	adds r0, #2
	strh r5, [r0]
	str r5, [r7, #0x7c]
	adds r0, #6
	str r5, [r0]
	adds r0, #4
	str r5, [r0]
	str r5, [sp, #8]
	add r0, sp, #8
	adds r4, r7, #0
	adds r4, #0x88
	adds r1, r4, #0
	ldr r2, _08134BB8 @ =0x05000011
	bl CpuSet
	ldr r2, _08134BBC @ =0x06010000
	str r2, [r4]
	movs r3, #0xf0
	lsls r3, r3, #2
	strh r3, [r4, #0x14]
	ldr r2, _08134BDC @ =gUnk_0837F170
	ldr r1, [sp, #0x20]
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldr r3, _08134BC4 @ =gLanguage
	ldrh r1, [r3]
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldr r1, [sp, #0x20]
	ldrb r0, [r1]
	lsls r0, r0, #2
	ldrh r1, [r3]
	lsls r1, r1, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #1
	rsbs r0, r0, #0
	strb r0, [r4, #0x1b]
	mov r2, sl
	strb r2, [r4, #0x1c]
	movs r0, #5
	strb r0, [r4, #0x1f]
	ldr r1, _08134BE0 @ =gUnk_0837F1D0
	ldr r3, [sp, #0x1c]
	adds r0, r3, r1
	ldr r2, [r0]
	asrs r0, r2, #2
	strh r0, [r4, #0x10]
	add r1, r8
	ldr r1, [r1]
	asrs r0, r1, #2
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	str r2, [r4, #0x28]
	str r1, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	mov r1, sb
	strh r1, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134BB4: .4byte gUnk_0203AD3C
_08134BB8: .4byte 0x05000011
_08134BBC: .4byte 0x06010000
_08134BC0: .4byte gUnk_0837EFC8
_08134BC4: .4byte gLanguage
_08134BC8: .4byte gUnk_0837F058
_08134BCC: .4byte 0x0000F83F
_08134BD0: .4byte 0xFFFFCFFF
_08134BD4: .4byte gUnk_0837F078
_08134BD8: .4byte gUnk_0837F150
_08134BDC: .4byte gUnk_0837F170
_08134BE0: .4byte gUnk_0837F1D0

	thumb_func_start sub_08134BE4
sub_08134BE4: @ 0x08134BE4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r3, r4, #0
	adds r3, #0xd0
	ldrh r0, [r3]
	ldr r2, _08134C4C @ =0x0000FEFF
	ands r2, r0
	movs r7, #0
	movs r6, #0
	ldr r0, _08134C50 @ =0x0000FDFF
	ands r2, r0
	strh r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08134C12
	movs r0, #0x80
	lsls r0, r0, #2
	adds r1, r0, #0
	adds r0, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08134C12:
	ldrh r1, [r3]
	ldr r0, _08134C54 @ =0x0000FFDF
	ands r0, r1
	strh r0, [r3]
	adds r5, r4, #0
	adds r5, #0xcc
	ldr r0, [r5]
	cmp r0, #0
	beq _08134C2A
	bl TaskDestroy
	str r6, [r5]
_08134C2A:
	adds r0, r4, #0
	adds r0, #0xdc
	strh r6, [r0]
	adds r0, #3
	strb r7, [r0]
	adds r0, #1
	strh r6, [r0]
	adds r0, #2
	strb r7, [r0]
	adds r0, #2
	strh r6, [r0]
	adds r0, #2
	strb r7, [r0]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08134C4C: .4byte 0x0000FEFF
_08134C50: .4byte 0x0000FDFF
_08134C54: .4byte 0x0000FFDF

	thumb_func_start sub_08134C58
sub_08134C58: @ 0x08134C58
	push {lr}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	ldr r2, _08134C88 @ =0x05006000
	mov r0, sp
	bl CpuSet
	ldr r3, _08134C8C @ =gUnk_03002440
	ldr r2, [r3]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r2
	cmp r0, #0
	beq _08134C94
	ldr r0, _08134C90 @ =gUnk_0837F4C4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	bl sub_08158334
	b _08134CAA
	.align 2, 0
_08134C88: .4byte 0x05006000
_08134C8C: .4byte gUnk_03002440
_08134C90: .4byte gUnk_0837F4C4
_08134C94:
	ldr r1, _08134CC8 @ =0x040000D4
	ldr r0, _08134CCC @ =gUnk_0837F4C4
	str r0, [r1]
	ldr r0, _08134CD0 @ =gBgPalette
	str r0, [r1, #4]
	ldr r0, _08134CD4 @ =0x80000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r3]
_08134CAA:
	ldr r0, _08134CD8 @ =gUnk_0837F6C4
	movs r1, #0xc0
	lsls r1, r1, #0x13
	bl LZ77UnCompVram
	ldr r0, _08134CDC @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08134D38
	lsls r0, r0, #2
	ldr r1, _08134CE0 @ =_08134CE4
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08134CC8: .4byte 0x040000D4
_08134CCC: .4byte gUnk_0837F4C4
_08134CD0: .4byte gBgPalette
_08134CD4: .4byte 0x80000100
_08134CD8: .4byte gUnk_0837F6C4
_08134CDC: .4byte gLanguage
_08134CE0: .4byte _08134CE4
_08134CE4: @ jump table
	.4byte _08134CFC @ case 0
	.4byte _08134D04 @ case 1
	.4byte _08134D0C @ case 2
	.4byte _08134D14 @ case 3
	.4byte _08134D1C @ case 4
	.4byte _08134D30 @ case 5
_08134CFC:
	ldr r0, _08134D00 @ =gUnk_083828DC
	b _08134D1E
	.align 2, 0
_08134D00: .4byte gUnk_083828DC
_08134D04:
	ldr r0, _08134D08 @ =gUnk_08383C0C
	b _08134D1E
	.align 2, 0
_08134D08: .4byte gUnk_08383C0C
_08134D0C:
	ldr r0, _08134D10 @ =gUnk_08384098
	b _08134D1E
	.align 2, 0
_08134D10: .4byte gUnk_08384098
_08134D14:
	ldr r0, _08134D18 @ =gUnk_0838326C
	b _08134D1E
	.align 2, 0
_08134D18: .4byte gUnk_0838326C
_08134D1C:
	ldr r0, _08134D28 @ =gUnk_08383774
_08134D1E:
	ldr r1, _08134D2C @ =0x06004000
	bl LZ77UnCompVram
	b _08134D38
	.align 2, 0
_08134D28: .4byte gUnk_08383774
_08134D2C: .4byte 0x06004000
_08134D30:
	ldr r0, _08134D50 @ =gUnk_08382DB8
	ldr r1, _08134D54 @ =0x06004000
	bl LZ77UnCompVram
_08134D38:
	ldr r1, _08134D58 @ =gUnk_08D61B80
	ldr r0, _08134D5C @ =gLanguage
	ldrh r0, [r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r1, _08134D60 @ =0x06010000
	bl LZ77UnCompVram
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08134D50: .4byte gUnk_08382DB8
_08134D54: .4byte 0x06004000
_08134D58: .4byte gUnk_08D61B80
_08134D5C: .4byte gLanguage
_08134D60: .4byte 0x06010000

	thumb_func_start sub_08134D64
sub_08134D64: @ 0x08134D64
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08134DCC @ =gRngVal
	movs r2, #0
	str r2, [r0]
	ldr r1, _08134DD0 @ =gDispCnt
	movs r3, #0xba
	lsls r3, r3, #5
	adds r0, r3, #0
	strh r0, [r1]
	ldr r1, _08134DD4 @ =gBgCntRegs
	ldr r0, _08134DD8 @ =0x00001C02
	strh r0, [r1]
	adds r0, #0xff
	strh r0, [r1, #2]
	adds r0, #0xff
	strh r0, [r1, #4]
	ldr r1, _08134DDC @ =gBldRegs
	movs r0, #0xbf
	strh r0, [r1]
	movs r4, #0x10
	strh r4, [r1, #4]
	ldr r1, _08134DE0 @ =gBgScrollRegs
	movs r0, #8
	strh r0, [r1]
	strh r0, [r1, #2]
	strh r0, [r1, #4]
	strh r0, [r1, #6]
	strh r2, [r1, #8]
	strh r2, [r1, #0xa]
	ldr r0, _08134DE4 @ =sub_08134E54
	movs r1, #0x84
	lsls r1, r1, #3
	movs r2, #0x80
	lsls r2, r2, #1
	ldr r3, _08134DE8 @ =nullsub_128
	str r3, [sp]
	movs r3, #0
	bl TaskCreate
	adds r1, r0, #0
	ldrh r0, [r1, #0x12]
	ands r4, r0
	cmp r4, #0
	beq _08134DEC
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _08134DF4
	.align 2, 0
_08134DCC: .4byte gRngVal
_08134DD0: .4byte gDispCnt
_08134DD4: .4byte gBgCntRegs
_08134DD8: .4byte 0x00001C02
_08134DDC: .4byte gBldRegs
_08134DE0: .4byte gBgScrollRegs
_08134DE4: .4byte sub_08134E54
_08134DE8: .4byte nullsub_128
_08134DEC:
	ldrh r1, [r1, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_08134DF4:
	add r0, sp, #4
	movs r4, #0
	strh r4, [r0]
	ldr r2, _08134E38 @ =0x01000210
	adds r1, r5, #0
	bl CpuSet
	bl sub_0813862C
	str r0, [r5, #0xc]
	ldr r0, _08134E3C @ =gUnk_0203AD14
	ldrb r1, [r0]
	ldr r2, _08134E40 @ =0x0000041C
	adds r0, r5, r2
	movs r2, #0
	strb r1, [r0]
	ldr r0, _08134E44 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	ldr r3, _08134E48 @ =0x0000041D
	adds r0, r5, r3
	strb r1, [r0]
	ldr r1, _08134E4C @ =0x0000040E
	adds r0, r5, r1
	strh r2, [r0]
	ldr r2, _08134E50 @ =0x00000416
	adds r0, r5, r2
	strb r4, [r0]
	subs r3, #6
	adds r0, r5, r3
	strb r4, [r0]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08134E38: .4byte 0x01000210
_08134E3C: .4byte gUnk_0203AD14
_08134E40: .4byte 0x0000041C
_08134E44: .4byte gUnk_0203AD3C
_08134E48: .4byte 0x0000041D
_08134E4C: .4byte 0x0000040E
_08134E50: .4byte 0x00000416

	thumb_func_start sub_08134E54
sub_08134E54: @ 0x08134E54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _08134E7C @ =0xFFFFF878
	add sp, r4
	ldr r2, _08134E80 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08134E84
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08134E8C
	.align 2, 0
_08134E7C: .4byte 0xFFFFF878
_08134E80: .4byte gCurTask
_08134E84:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08134E8C:
	ldr r1, _08134EB0 @ =0x00000784
	add r1, sp
	str r0, [r1]
	ldr r0, [r2]
	ldr r1, _08134EB4 @ =sub_081358EC
	str r1, [r0, #8]
	ldr r0, _08134EB8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bls _08134EA4
	bl _08135736
_08134EA4:
	lsls r0, r0, #2
	ldr r1, _08134EBC @ =_08134EC0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08134EB0: .4byte 0x00000784
_08134EB4: .4byte sub_081358EC
_08134EB8: .4byte gLanguage
_08134EBC: .4byte _08134EC0
_08134EC0: @ jump table
	.4byte _08134ED8 @ case 0
	.4byte _08135044 @ case 1
	.4byte _08135188 @ case 2
	.4byte _081352CC @ case 3
	.4byte _08135428 @ case 4
	.4byte _081355B8 @ case 5
_08134ED8:
	ldr r2, _08135034 @ =0x06010000
	mov sb, r2
	str r2, [sp]
	mov r0, sp
	movs r7, #0
	movs r4, #0
	movs r3, #0x90
	lsls r3, r3, #3
	mov r8, r3
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _08135038 @ =0x00000366
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	mov r0, sp
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [sp, #8]
	bl sub_08155128
	add r0, sp, #0x28
	mov r1, sb
	str r1, [sp, #0x28]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #7
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #1
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x50
	mov r3, sb
	str r3, [sp, #0x50]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #6
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #2
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x78
	mov r2, sb
	str r2, [sp, #0x78]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0xa0
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0xc8
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	ldr r1, _0813503C @ =0x0000036A
	mov sl, r1
	mov r2, sl
	strh r2, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0xf0
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r3, #2
	strb r3, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #6
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x118
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	ldr r1, _08135040 @ =0x00000369
	strh r1, [r0, #0xc]
	movs r1, #1
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #7
	strb r2, [r0, #0x1f]
	b _0813559C
	.align 2, 0
_08135034: .4byte 0x06010000
_08135038: .4byte 0x00000366
_0813503C: .4byte 0x0000036A
_08135040: .4byte 0x00000369
_08135044:
	add r0, sp, #0x140
	ldr r3, _0813517C @ =0x06010000
	mov sb, r3
	str r3, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _08135180 @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x168
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x190
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x1b8
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x1e0
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x208
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _08135184 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x230
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x258
	b _0813557E
	.align 2, 0
_0813517C: .4byte 0x06010000
_08135180: .4byte 0x00000366
_08135184: .4byte 0x0000036A
_08135188:
	add r0, sp, #0x280
	ldr r4, _081352C0 @ =0x06010000
	mov sb, r4
	str r4, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _081352C4 @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x2a8
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x2d0
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x2f8
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x320
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x348
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _081352C8 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x370
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x398
	b _0813557E
	.align 2, 0
_081352C0: .4byte 0x06010000
_081352C4: .4byte 0x00000366
_081352C8: .4byte 0x0000036A
_081352CC:
	add r0, sp, #0x3c0
	ldr r4, _0813541C @ =0x06010000
	mov sb, r4
	str r4, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _08135420 @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	add r0, sp, #0x3e8
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x82
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x87
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x8c
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x91
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _08135424 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x96
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0x9b
	lsls r0, r0, #3
	b _0813557C
	.align 2, 0
_0813541C: .4byte 0x06010000
_08135420: .4byte 0x00000366
_08135424: .4byte 0x0000036A
_08135428:
	movs r0, #0xa0
	lsls r0, r0, #3
	add r0, sp
	ldr r4, _081355A8 @ =0x06010000
	mov sb, r4
	str r4, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _081355AC @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xa5
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xaa
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xaf
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xb4
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xb9
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _081355B0 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xbe
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xc3
	lsls r0, r0, #3
_0813557C:
	add r0, sp
_0813557E:
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r1, _081355B4 @ =0x00000369
	strh r1, [r0, #0xc]
	movs r2, #1
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #7
	strb r3, [r0, #0x1f]
_0813559C:
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	b _08135736
	.align 2, 0
_081355A8: .4byte 0x06010000
_081355AC: .4byte 0x00000366
_081355B0: .4byte 0x0000036A
_081355B4: .4byte 0x00000369
_081355B8:
	movs r0, #0xc8
	lsls r0, r0, #3
	add r0, sp
	ldr r4, _081358A0 @ =0x06010000
	mov sb, r4
	str r4, [r0]
	movs r7, #0
	movs r4, #0
	movs r1, #0x90
	lsls r1, r1, #3
	mov r8, r1
	mov r2, r8
	strh r2, [r0, #0x14]
	ldr r3, _081358A4 @ =0x00000366
	mov sl, r3
	mov r1, sl
	strh r1, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #0xff
	strb r1, [r0, #0x1b]
	movs r6, #0x10
	strb r6, [r0, #0x1c]
	strb r7, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	movs r5, #0x80
	lsls r5, r5, #0xc
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xcd
	lsls r0, r0, #3
	add r0, sp
	mov r2, sb
	str r2, [r0]
	mov r3, r8
	strh r3, [r0, #0x14]
	mov r1, sl
	strh r1, [r0, #0xc]
	movs r2, #7
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #1
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xd2
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #6
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #2
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xd7
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #8
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #9
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #3
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xdc
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	mov r2, sl
	strh r2, [r0, #0xc]
	movs r1, #9
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	subs r1, #0xa
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #4
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xe1
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r2, _081358A8 @ =0x0000036A
	mov sl, r2
	mov r3, sl
	strh r3, [r0, #0xc]
	strb r7, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r1, #5
	strb r1, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xe6
	lsls r0, r0, #3
	add r0, sp
	mov r1, sb
	str r1, [r0]
	mov r2, r8
	strh r2, [r0, #0x14]
	mov r3, sl
	strh r3, [r0, #0xc]
	movs r1, #2
	strb r1, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r2, #6
	strb r2, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
	movs r0, #0xeb
	lsls r0, r0, #3
	add r0, sp
	mov r3, sb
	str r3, [r0]
	mov r1, r8
	strh r1, [r0, #0x14]
	ldr r1, _081358AC @ =0x00000369
	strh r1, [r0, #0xc]
	movs r2, #1
	strb r2, [r0, #0x1a]
	strh r4, [r0, #0x16]
	movs r1, #1
	rsbs r1, r1, #0
	strb r1, [r0, #0x1b]
	strb r6, [r0, #0x1c]
	movs r3, #7
	strb r3, [r0, #0x1f]
	strh r4, [r0, #0x10]
	strh r4, [r0, #0x12]
	str r5, [r0, #8]
	bl sub_08155128
_08135736:
	ldr r0, _081358B0 @ =gUnk_0838454C
	ldr r1, _081358B4 @ =0x0600E000
	bl RLUnCompVram
	ldr r0, _081358B8 @ =gUnk_083849B8
	ldr r1, _081358BC @ =0x0600E800
	bl RLUnCompVram
	ldr r0, _081358C0 @ =gUnk_08384F18
	ldr r1, _081358C4 @ =0x0600F000
	bl RLUnCompVram
	movs r5, #0
	ldr r4, _081358C8 @ =0x00000784
	add r4, sp
	ldr r4, [r4]
	str r5, [r4]
	adds r0, r4, #0
	adds r0, #0x10
	movs r1, #0
	bl sub_08134930
	adds r0, r4, #0
	adds r0, #0xfc
	movs r1, #1
	bl sub_08134930
	movs r3, #0xf4
	lsls r3, r3, #1
	adds r0, r4, r3
	movs r1, #2
	bl sub_08134930
	movs r1, #0xb5
	lsls r1, r1, #2
	adds r0, r4, r1
	movs r1, #3
	bl sub_08134930
	movs r0, #0xf0
	lsls r0, r0, #3
	add r0, sp
	str r5, [r0]
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r4, r4, r2
	ldr r2, _081358CC @ =0x05000011
	adds r1, r4, #0
	bl CpuSet
	ldr r0, _081358A0 @ =0x06010000
	str r0, [r4]
	movs r7, #0
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	ldr r3, _081358D0 @ =gUnk_0837F228
	ldr r2, _081358D4 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	ldrh r1, [r2]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r3
	ldrb r0, [r0, #2]
	strb r0, [r4, #0x1a]
	strh r5, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r3, #0x10
	strb r3, [r4, #0x1c]
	movs r0, #5
	strb r0, [r4, #0x1f]
	movs r0, #0x78
	strh r0, [r4, #0x10]
	movs r0, #0x80
	strh r0, [r4, #0x12]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #8]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x28]
	adds r0, #0x20
	str r0, [r4, #0x2c]
	strh r5, [r4, #0x30]
	strh r5, [r4, #0x32]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x34]
	strh r5, [r4, #0x36]
	str r5, [r4, #0x38]
	str r5, [r4, #0x3c]
	str r5, [r4, #0x40]
	ldr r4, _081358C8 @ =0x00000784
	add r4, sp
	ldr r4, [r4]
	movs r0, #0xf2
	lsls r0, r0, #2
	adds r2, r4, r0
	ldr r0, [r2]
	ldr r1, _081358D8 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	movs r1, #0x81
	lsls r1, r1, #3
	adds r0, r4, r1
	strb r7, [r0]
	ldr r2, _081358DC @ =0x00000409
	adds r0, r4, r2
	strb r7, [r0]
	adds r1, #2
	adds r0, r4, r1
	strb r7, [r0]
	adds r2, #2
	adds r0, r4, r2
	strb r7, [r0]
	adds r1, #0x10
	adds r0, r4, r1
	strb r7, [r0]
	adds r2, #0xd
	adds r4, r4, r2
	strh r3, [r4]
	ldr r3, _081358C8 @ =0x00000784
	add r3, sp
	ldr r3, [r3]
	ldr r0, _081358E0 @ =0x00000416
	adds r6, r3, r0
	ldrh r1, [r6]
	adds r0, #0xf4
	cmp r1, r0
	bne _08135872
	movs r0, #0x8f
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r3, _081358C8 @ =0x00000784
	add r3, sp
	ldr r3, [r3]
	ldr r4, _081358E4 @ =0x0000041C
	adds r1, r3, r4
	movs r0, #3
	strb r0, [r1]
_08135872:
	strb r5, [r6]
	ldr r4, _081358C8 @ =0x00000784
	add r4, sp
	ldr r4, [r4]
	ldr r1, _081358E8 @ =0x00000417
	adds r0, r4, r1
	strb r7, [r0]
	adds r1, #7
	adds r0, r4, r1
	strh r5, [r0]
	movs r0, #0x23
	bl m4aSongNumStart
	movs r3, #0xf1
	lsls r3, r3, #3
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081358A0: .4byte 0x06010000
_081358A4: .4byte 0x00000366
_081358A8: .4byte 0x0000036A
_081358AC: .4byte 0x00000369
_081358B0: .4byte gUnk_0838454C
_081358B4: .4byte 0x0600E000
_081358B8: .4byte gUnk_083849B8
_081358BC: .4byte 0x0600E800
_081358C0: .4byte gUnk_08384F18
_081358C4: .4byte 0x0600F000
_081358C8: .4byte 0x00000784
_081358CC: .4byte 0x05000011
_081358D0: .4byte gUnk_0837F228
_081358D4: .4byte gLanguage
_081358D8: .4byte 0xFFFFCFFF
_081358DC: .4byte 0x00000409
_081358E0: .4byte 0x00000416
_081358E4: .4byte 0x0000041C
_081358E8: .4byte 0x00000417

	thumb_func_start sub_081358EC
sub_081358EC: @ 0x081358EC
	push {r4, r5, lr}
	ldr r2, _08135908 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813590C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08135914
	.align 2, 0
_08135908: .4byte gCurTask
_0813590C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08135914:
	adds r5, r0, #0
	ldr r0, _08135934 @ =0x0000040E
	adds r1, r5, r0
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	beq _0813593C
	cmp r0, #0xb3
	ble _081359B2
	movs r0, #0
	strh r0, [r1]
	ldr r1, [r2]
	ldr r0, _08135938 @ =sub_081359EC
	str r0, [r1, #8]
	b _081359B2
	.align 2, 0
_08135934: .4byte 0x0000040E
_08135938: .4byte sub_081359EC
_0813593C:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl CreatePauseFade
	ldr r2, _081359D4 @ =gDispCnt
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _081359D8 @ =gUnk_08384F18
	ldr r1, _081359DC @ =0x0600F000
	bl RLUnCompVram
	bl sub_08137C98
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r5, r0
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081359B2
	ldr r0, _081359E0 @ =0x0000FFEF
	ands r0, r1
	strh r0, [r2]
	ldr r1, _081359E4 @ =0x0000041D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r0, #0x10
	adds r0, r5, r0
	bl sub_081378D4
	movs r4, #0
_0813598A:
	movs r0, #0xec
	adds r2, r4, #0
	muls r2, r0, r2
	adds r0, r5, r2
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081359A8
	adds r0, r2, #0
	adds r0, #0x10
	adds r0, r5, r0
	bl sub_08137AF8
_081359A8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0813598A
_081359B2:
	ldr r3, _081359E8 @ =0x0000040E
	adds r0, r5, r3
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081359D4: .4byte gDispCnt
_081359D8: .4byte gUnk_08384F18
_081359DC: .4byte 0x0600F000
_081359E0: .4byte 0x0000FFEF
_081359E4: .4byte 0x0000041D
_081359E8: .4byte 0x0000040E

	thumb_func_start sub_081359EC
sub_081359EC: @ 0x081359EC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r2, _08135A10 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08135A14
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08135A1C
	.align 2, 0
_08135A10: .4byte gCurTask
_08135A14:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08135A1C:
	ldr r1, [r2]
	ldr r0, _08135B28 @ =sub_08137420
	str r0, [r1, #8]
	movs r0, #0x83
	lsls r0, r0, #3
	adds r4, r6, r0
	ldrh r0, [r4]
	adds r2, r0, #0
	movs r0, #0
	str r0, [r6, #4]
	str r0, [r6, #8]
	ldr r3, _08135B2C @ =0x0000040C
	adds r1, r6, r3
	strb r0, [r1]
	adds r3, #1
	adds r1, r6, r3
	strb r0, [r1]
	adds r3, #1
	adds r1, r6, r3
	strh r0, [r1]
	adds r3, #4
	adds r1, r6, r3
	strh r0, [r1]
	adds r3, #2
	adds r1, r6, r3
	strh r0, [r1]
	strh r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #2
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08135A60
	strh r5, [r4]
_08135A60:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r2, r0
	cmp r2, #0
	beq _08135A70
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
_08135A70:
	adds r7, r6, #0
	adds r7, #0x10
	adds r0, r7, #0
	movs r1, #0
	bl sub_08134BE4
	movs r0, #0xfc
	adds r0, r0, r6
	mov r8, r0
	movs r1, #1
	bl sub_08134BE4
	movs r1, #0xf4
	lsls r1, r1, #1
	adds r1, r1, r6
	mov sb, r1
	mov r0, sb
	movs r1, #2
	bl sub_08134BE4
	movs r3, #0xb5
	lsls r3, r3, #2
	adds r3, r3, r6
	mov sl, r3
	mov r0, sl
	movs r1, #3
	bl sub_08134BE4
	movs r0, #0xfd
	lsls r0, r0, #2
	adds r2, r6, r0
	ldrh r0, [r2]
	ldr r3, _08135B30 @ =0x0000EFFF
	ands r3, r0
	strh r3, [r2]
	ldrh r1, [r4]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08135ACC
	movs r0, #0x80
	lsls r0, r0, #5
	adds r1, r0, #0
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08135ACC:
	adds r0, r6, #0
	bl sub_08136D5C
	adds r0, r6, #0
	bl sub_081375BC
	ldr r1, _08135B34 @ =0x0000041C
	adds r5, r6, r1
	ldrb r1, [r5]
	movs r3, #0x82
	lsls r3, r3, #3
	adds r4, r6, r3
	ldrh r2, [r4]
	adds r0, r7, #0
	bl sub_08137610
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, r8
	bl sub_08137610
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sb
	bl sub_08137610
	ldrb r1, [r5]
	ldrh r2, [r4]
	mov r0, sl
	bl sub_08137610
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_081288DC
	adds r0, r6, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08135B28: .4byte sub_08137420
_08135B2C: .4byte 0x0000040C
_08135B30: .4byte 0x0000EFFF
_08135B34: .4byte 0x0000041C

	thumb_func_start sub_08135B38
sub_08135B38: @ 0x08135B38
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08135B60 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08135B64
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08135B6C
	.align 2, 0
_08135B60: .4byte gCurTask
_08135B64:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08135B6C:
	adds r5, r0, #0
	bl sub_08136C68
	movs r0, #0x82
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, _08135C84 @ =0x00000412
	adds r6, r5, r1
	ldrh r0, [r4]
	ldrh r2, [r6]
	cmp r0, r2
	bne _08135BA4
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r5, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
	bl sub_08137668
	ldr r0, [r5, #0xc]
	bl sub_081386DC
_08135BA4:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r5, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08135BD2
	ldrh r0, [r4]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _08135BD2
	adds r0, r1, #0
	movs r1, #0x78
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08135BD2
	bl sub_08137874
_08135BD2:
	movs r0, #0
	str r0, [sp]
	movs r6, #0
	adds r1, r5, #0
	adds r1, #0xe0
	str r1, [sp, #4]
_08135BDE:
	movs r0, #0xec
	adds r2, r6, #0
	muls r2, r0, r2
	str r2, [sp, #8]
	adds r2, r2, r5
	mov ip, r2
	mov r4, ip
	adds r4, #0xe0
	ldrh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08135CBA
	movs r7, #0x80
	lsls r7, r7, #2
	mov sb, r7
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	bne _08135CBA
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	mov sl, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08135CBA
	movs r1, #0x83
	lsls r1, r1, #3
	adds r3, r5, r1
	ldrh r1, [r3]
	movs r2, #0x20
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08135C36
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r3]
_08135C36:
	mov r2, ip
	adds r2, #0xf0
	ldrh r0, [r2]
	cmp r0, #0
	bne _08135CBA
	ldrh r1, [r4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08135C84 @ =0x00000412
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r2, _08135C88 @ =0x0000040D
	adds r0, r5, r2
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08135C8C
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	mov r1, ip
	adds r1, #0xec
	ldrh r0, [r1]
	mov r3, sl
	orrs r0, r3
	strh r0, [r1]
	b _08135CBA
	.align 2, 0
_08135C84: .4byte 0x00000412
_08135C88: .4byte 0x0000040D
_08135C8C:
	ldrh r1, [r4]
	mov r0, sb
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [sp, #8]
	adds r0, #0x10
	adds r0, r5, r0
	ldr r3, _08135D34 @ =gUnk_0837F1F0
	lsls r2, r6, #1
	lsls r1, r6, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_081380C0
	adds r1, r5, #0
	adds r1, #0xdc
	ldr r4, [sp, #8]
	adds r1, r1, r4
	str r0, [r1]
_08135CBA:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08135BDE
	ldr r7, [sp]
	cmp r7, #0
	beq _08135CD4
	ldr r0, _08135D38 @ =0x0000040D
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08135CD4:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08135DC6
	ldr r2, _08135D3C @ =0x00000414
	adds r1, r5, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #4
	bls _08135DC6
	movs r6, #0
	ldr r3, _08135D40 @ =gCurTask
	mov sb, r3
	ldr r4, _08135D44 @ =sub_08135E9C
	mov sl, r4
	movs r7, #0x80
	lsls r7, r7, #1
	mov r8, r7
	movs r7, #0x80
	lsls r7, r7, #2
	movs r4, #0x40
	ldr r0, _08135D48 @ =0x0000040C
	adds r3, r5, r0
_08135D10:
	movs r0, #0xec
	muls r0, r6, r0
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0xe0
	ldrh r2, [r0]
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _08135D4C
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _08135D4C
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _08135D54
	.align 2, 0
_08135D34: .4byte gUnk_0837F1F0
_08135D38: .4byte 0x0000040D
_08135D3C: .4byte 0x00000414
_08135D40: .4byte gCurTask
_08135D44: .4byte sub_08135E9C
_08135D48: .4byte 0x0000040C
_08135D4C:
	adds r1, #0xec
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
_08135D54:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08135D10
	movs r6, #0
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r4, _08135E88 @ =gUnk_08D61B6C
	ldr r0, _08135E8C @ =0x0000040C
	adds r3, r5, r0
_08135D70:
	movs r0, #0xec
	muls r0, r6, r0
	adds r2, r5, r0
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08135DA2
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08135DA2
	adds r1, r2, #0
	adds r1, #0xf2
	ldrb r0, [r3]
	lsls r0, r0, #2
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0xef
	strb r1, [r0]
_08135DA2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08135D70
	movs r1, #0xfd
	lsls r1, r1, #2
	adds r2, r5, r1
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r4, sb
	ldr r0, [r4]
	mov r7, sl
	str r7, [r0, #8]
_08135DC6:
	ldr r0, _08135E90 @ =0x00000412
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r3, r5, r2
	ldrh r2, [r3]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08135E0A
	ldrh r1, [r1]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r5, r4
	ldrh r0, [r0]
	movs r7, #0x96
	lsls r7, r7, #2
	adds r0, r0, r7
	cmp r1, r0
	blt _08135E0A
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _08135E94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08135E98 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_08135E0A:
	ldr r0, [sp, #4]
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08135E68
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08135E68
	movs r3, #0xae
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08135E68
	movs r4, #0xe9
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08135E68
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r5, r7
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08135E94 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08135E98 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_08135E68:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08135E88: .4byte gUnk_08D61B6C
_08135E8C: .4byte 0x0000040C
_08135E90: .4byte 0x00000412
_08135E94: .4byte gCurTask
_08135E98: .4byte sub_081366B8

	thumb_func_start sub_08135E9C
sub_08135E9C: @ 0x08135E9C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08135EC0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08135EC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08135ECC
	.align 2, 0
_08135EC0: .4byte gCurTask
_08135EC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08135ECC:
	adds r6, r0, #0
	movs r7, #0
	movs r0, #1
	mov sl, r0
	ldr r1, _08136050 @ =gUnk_0837EFC8
	mov sb, r1
	ldr r2, _08136054 @ =gLanguage
	mov r8, r2
_08135EDC:
	movs r0, #0xec
	adds r4, r7, #0
	muls r4, r0, r4
	adds r0, r6, r4
	adds r2, r0, #0
	adds r2, #0xec
	ldrh r1, [r2]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08135F1E
	ldr r3, _08136058 @ =0x0000FFFE
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r1, [r0]
	mov r0, sl
	ands r0, r1
	cmp r0, #0
	beq _08135F1E
	ldr r0, _0813605C @ =0x00000239
	bl m4aSongNumStart
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r6, r0
	adds r1, r7, #0
	movs r2, #0
	bl sub_08136F3C
_08135F1E:
	movs r0, #0xec
	muls r0, r7, r0
	adds r5, r6, r0
	adds r4, r5, #0
	adds r4, #0xec
	ldrh r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08135F7E
	ldr r0, _0813605C @ =0x00000239
	bl m4aSongNumStop
	ldr r0, _08136060 @ =0x0000023A
	bl m4aSongNumStart
	ldrh r1, [r4]
	ldr r2, _08136064 @ =0x0000FFEF
	adds r0, r2, #0
	ands r1, r0
	movs r0, #0x20
	orrs r1, r0
	strh r1, [r4]
	adds r2, r5, #0
	adds r2, #0x10
	mov r3, r8
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0, #8]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrb r0, [r0, #0xa]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r2, #0x34
	ldrh r0, [r2]
	ldr r3, _08136068 @ =0x0000F7FF
	adds r1, r3, #0
	ands r0, r1
	strh r0, [r2]
_08135F7E:
	ldrh r2, [r4]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08135FDC
	adds r3, r5, #0
	adds r3, #0x44
	ldrh r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #2
	mov ip, r1
	mov r1, ip
	ands r0, r1
	cmp r0, #0
	beq _08135FDC
	ldr r1, _0813606C @ =0x0000FFDF
	adds r0, r1, #0
	ands r0, r2
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r4]
	adds r2, r5, #0
	adds r2, #0x10
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sb
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	ldrh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #4
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r3]
_08135FDC:
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #3
	bhi _08135FE8
	b _08135EDC
_08135FE8:
	adds r0, r6, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136030
	movs r3, #0xec
	lsls r3, r3, #1
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136030
	movs r1, #0xb1
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136030
	movs r3, #0xec
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136030
	ldr r0, _08136070 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136074 @ =sub_08136078
	str r0, [r1, #8]
_08136030:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_081288DC
	adds r0, r6, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136050: .4byte gUnk_0837EFC8
_08136054: .4byte gLanguage
_08136058: .4byte 0x0000FFFE
_0813605C: .4byte 0x00000239
_08136060: .4byte 0x0000023A
_08136064: .4byte 0x0000FFEF
_08136068: .4byte 0x0000F7FF
_0813606C: .4byte 0x0000FFDF
_08136070: .4byte gCurTask
_08136074: .4byte sub_08136078

	thumb_func_start sub_08136078
sub_08136078: @ 0x08136078
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _0813609C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081360A0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081360A8
	.align 2, 0
_0813609C: .4byte gCurTask
_081360A0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081360A8:
	adds r7, r0, #0
	bl sub_08136C68
	movs r0, #0
	mov r8, r0
	ldr r1, _0813619C @ =gUnk_0837F078
	mov sl, r1
	ldr r0, _081361A0 @ =gLanguage
	mov sb, r0
_081360BA:
	movs r0, #0xec
	mov r1, r8
	muls r1, r0, r1
	adds r0, r1, #0
	adds r6, r7, r0
	adds r5, r6, #0
	adds r5, #0xef
	ldrb r0, [r5]
	cmp r0, #0
	beq _08136136
	adds r4, r6, #0
	adds r4, #0xf7
	ldrb r0, [r4]
	adds r1, r0, #1
	strb r1, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xf
	bls _08136136
	ldr r0, _081361A4 @ =0x0000023B
	bl m4aSongNumStart
	movs r0, #0
	strb r0, [r4]
	ldrb r0, [r5]
	subs r0, #1
	strb r0, [r5]
	adds r3, r6, #0
	adds r3, #0xee
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #8
	bls _08136106
	movs r0, #8
	strb r0, [r3]
_08136106:
	adds r2, r6, #0
	adds r2, #0x54
	mov r0, sb
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r1, [r3]
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, sl
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	mov r0, sb
	ldrh r1, [r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	ldrb r3, [r3]
	adds r0, r0, r3
	lsls r0, r0, #2
	add r0, sl
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_08136136:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _081360BA
	adds r0, r7, #0
	adds r0, #0xef
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813617C
	ldr r1, _081361A8 @ =0x000001DB
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813617C
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813617C
	adds r1, #0xec
	adds r0, r7, r1
	ldrb r0, [r0]
	cmp r0, #0
	bne _0813617C
	ldr r0, _081361AC @ =gCurTask
	ldr r1, [r0]
	ldr r0, _081361B0 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_0813617C:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r7, r1
	bl sub_081288DC
	adds r0, r7, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813619C: .4byte gUnk_0837F078
_081361A0: .4byte gLanguage
_081361A4: .4byte 0x0000023B
_081361A8: .4byte 0x000001DB
_081361AC: .4byte gCurTask
_081361B0: .4byte sub_081366B8

	thumb_func_start sub_081361B4
sub_081361B4: @ 0x081361B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _081361DC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081361E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081361E8
	.align 2, 0
_081361DC: .4byte gCurTask
_081361E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081361E8:
	adds r5, r0, #0
	bl sub_08136C68
	movs r0, #0x82
	lsls r0, r0, #3
	adds r4, r5, r0
	ldr r1, _08136300 @ =0x00000412
	adds r6, r5, r1
	ldrh r0, [r4]
	ldrh r2, [r6]
	cmp r0, r2
	bne _08136220
	movs r3, #0x83
	lsls r3, r3, #3
	adds r2, r5, r3
	ldrh r1, [r2]
	movs r0, #0x20
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0x8e
	lsls r0, r0, #2
	bl m4aSongNumStart
	bl sub_08137668
	ldr r0, [r5, #0xc]
	bl sub_081386DC
_08136220:
	movs r7, #0x83
	lsls r7, r7, #3
	adds r0, r5, r7
	ldrh r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0813624E
	ldrh r0, [r4]
	subs r0, #0x3c
	ldrh r1, [r6]
	cmp r0, r1
	ble _0813624E
	adds r0, r1, #0
	movs r1, #0x78
	bl __umodsi3
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0813624E
	bl sub_08137874
_0813624E:
	movs r0, #0
	str r0, [sp]
	movs r6, #0
	adds r1, r5, #0
	adds r1, #0xe0
	str r1, [sp, #4]
_0813625A:
	movs r0, #0xec
	adds r2, r6, #0
	muls r2, r0, r2
	str r2, [sp, #8]
	adds r2, r2, r5
	mov ip, r2
	mov r4, ip
	adds r4, #0xe0
	ldrh r1, [r4]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08136336
	movs r7, #0x80
	lsls r7, r7, #2
	mov sb, r7
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	bne _08136336
	mov r0, ip
	adds r0, #0xe4
	ldrh r1, [r0]
	movs r0, #1
	mov sl, r0
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08136336
	movs r1, #0x83
	lsls r1, r1, #3
	adds r3, r5, r1
	ldrh r1, [r3]
	movs r2, #0x20
	mov r8, r2
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _081362B2
	movs r0, #0x40
	orrs r0, r1
	strh r0, [r3]
_081362B2:
	mov r2, ip
	adds r2, #0xf0
	ldrh r0, [r2]
	cmp r0, #0
	bne _08136336
	ldrh r1, [r4]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r0, r7, #0
	orrs r0, r1
	strh r0, [r4]
	ldr r1, _08136300 @ =0x00000412
	adds r0, r5, r1
	ldrh r0, [r0]
	strh r0, [r2]
	ldr r2, _08136304 @ =0x0000040D
	adds r0, r5, r2
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #0xf2
	strb r0, [r1]
	ldrh r1, [r3]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _08136308
	ldr r0, [sp]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp]
	mov r1, ip
	adds r1, #0xec
	ldrh r0, [r1]
	mov r3, sl
	orrs r0, r3
	strh r0, [r1]
	b _08136336
	.align 2, 0
_08136300: .4byte 0x00000412
_08136304: .4byte 0x0000040D
_08136308:
	ldrh r1, [r4]
	mov r0, sb
	orrs r0, r1
	strh r0, [r4]
	ldr r0, [sp, #8]
	adds r0, #0x10
	adds r0, r5, r0
	ldr r3, _081363B0 @ =gUnk_0837F1F0
	lsls r2, r6, #1
	lsls r1, r6, #3
	adds r1, r1, r3
	ldr r1, [r1]
	adds r2, #1
	lsls r2, r2, #2
	adds r2, r2, r3
	ldr r2, [r2]
	bl sub_081380C0
	adds r1, r5, #0
	adds r1, #0xdc
	ldr r4, [sp, #8]
	adds r1, r1, r4
	str r0, [r1]
_08136336:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0813625A
	ldr r7, [sp]
	cmp r7, #0
	beq _08136350
	ldr r0, _081363B4 @ =0x0000040D
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08136350:
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08136442
	ldr r2, _081363B8 @ =0x00000414
	adds r1, r5, r2
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #2
	bls _08136442
	movs r6, #0
	ldr r3, _081363BC @ =gCurTask
	mov sl, r3
	ldr r4, _081363C0 @ =sub_08136518
	mov sb, r4
	movs r7, #0x80
	lsls r7, r7, #1
	mov r8, r7
	movs r7, #0x80
	lsls r7, r7, #2
	movs r4, #0x40
	ldr r0, _081363C4 @ =0x0000040C
	adds r3, r5, r0
_0813638C:
	movs r0, #0xec
	muls r0, r6, r0
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0xe0
	ldrh r2, [r0]
	mov r0, r8
	ands r0, r2
	cmp r0, #0
	beq _081363C8
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _081363C8
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	b _081363D0
	.align 2, 0
_081363B0: .4byte gUnk_0837F1F0
_081363B4: .4byte 0x0000040D
_081363B8: .4byte 0x00000414
_081363BC: .4byte gCurTask
_081363C0: .4byte sub_08136518
_081363C4: .4byte 0x0000040C
_081363C8:
	adds r1, #0xec
	ldrh r0, [r1]
	orrs r0, r4
	strh r0, [r1]
_081363D0:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0813638C
	movs r6, #0
	movs r2, #0x80
	lsls r2, r2, #1
	mov r8, r2
	movs r7, #0x80
	lsls r7, r7, #2
	ldr r4, _08136504 @ =gUnk_08D61B6C
	ldr r0, _08136508 @ =0x0000040C
	adds r3, r5, r0
_081363EC:
	movs r0, #0xec
	muls r0, r6, r0
	adds r2, r5, r0
	adds r0, r2, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	mov r0, r8
	ands r0, r1
	cmp r0, #0
	beq _0813641E
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _0813641E
	adds r1, r2, #0
	adds r1, #0xf2
	ldrb r0, [r3]
	lsls r0, r0, #2
	ldrb r1, [r1]
	adds r0, r0, r1
	adds r0, r0, r4
	ldrb r1, [r0]
	adds r0, r2, #0
	adds r0, #0xef
	strb r1, [r0]
_0813641E:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _081363EC
	movs r1, #0xfd
	lsls r1, r1, #2
	adds r2, r5, r1
	ldrh r1, [r2]
	movs r3, #0x80
	lsls r3, r3, #5
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r2]
	mov r4, sl
	ldr r0, [r4]
	mov r7, sb
	str r7, [r0, #8]
_08136442:
	ldr r0, _0813650C @ =0x00000412
	adds r1, r5, r0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	movs r2, #0x83
	lsls r2, r2, #3
	adds r3, r5, r2
	ldrh r2, [r3]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08136486
	ldrh r1, [r1]
	movs r4, #0x82
	lsls r4, r4, #3
	adds r0, r5, r4
	ldrh r0, [r0]
	movs r7, #0x96
	lsls r7, r7, #1
	adds r0, r0, r7
	cmp r1, r0
	blt _08136486
	movs r0, #0x80
	orrs r0, r2
	strh r0, [r3]
	ldr r0, _08136510 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136514 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_08136486:
	ldr r0, [sp, #4]
	ldrh r1, [r0]
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _081364E4
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r0, r5, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _081364E4
	movs r3, #0xae
	lsls r3, r3, #2
	adds r0, r5, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _081364E4
	movs r4, #0xe9
	lsls r4, r4, #2
	adds r0, r5, r4
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _081364E4
	movs r7, #0x83
	lsls r7, r7, #3
	adds r2, r5, r7
	ldrh r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08136510 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136514 @ =sub_081366B8
	str r0, [r1, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
_081364E4:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r5, r1
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136504: .4byte gUnk_08D61B6C
_08136508: .4byte 0x0000040C
_0813650C: .4byte 0x00000412
_08136510: .4byte gCurTask
_08136514: .4byte sub_081366B8

	thumb_func_start sub_08136518
sub_08136518: @ 0x08136518
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08136540 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136544
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0813654C
	.align 2, 0
_08136540: .4byte gCurTask
_08136544:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0813654C:
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp]
	mov r8, r0
	ldr r1, _08136694 @ =gUnk_0837EFC8
	mov sl, r1
	ldr r2, _08136698 @ =gLanguage
	mov sb, r2
_0813655C:
	movs r0, #0xec
	mov r4, r8
	muls r4, r0, r4
	adds r0, r6, r4
	adds r2, r0, #0
	adds r2, #0xec
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0813659E
	ldr r3, _0813669C @ =0x0000FFFE
	adds r0, r3, #0
	ands r0, r1
	strh r0, [r2]
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r6, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0813659E
	ldr r0, _081366A0 @ =0x00000239
	bl m4aSongNumStart
	adds r0, r4, #0
	adds r0, #0x10
	adds r0, r6, r0
	mov r1, r8
	movs r2, #1
	bl sub_08136F3C
_0813659E:
	movs r0, #0xec
	mov r7, r8
	muls r7, r0, r7
	adds r5, r6, r7
	adds r4, r5, #0
	adds r4, #0xec
	ldrh r1, [r4]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081365F2
	ldr r2, _081366A4 @ =0x0000FFEF
	adds r0, r2, #0
	ands r0, r1
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r4]
	ldr r0, _081366A0 @ =0x00000239
	bl m4aSongNumStop
	ldr r0, _081366A8 @ =0x0000023A
	bl m4aSongNumStart
	adds r2, r5, #0
	adds r2, #0x10
	mov r3, sb
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrh r0, [r0, #0xc]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, sl
	ldrb r0, [r0, #0xe]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
_081365F2:
	ldrh r1, [r4]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _0813661C
	ldr r2, _081366AC @ =0x0000FFDF
	adds r0, r2, #0
	ands r0, r1
	strh r0, [r4]
	adds r0, r7, #0
	adds r0, #0x10
	adds r0, r6, r0
	bl sub_0813773C
	ldr r3, [sp]
	cmp r3, #0
	bne _0813661C
	movs r0, #1
	str r0, [sp]
	bl sub_081377D4
_0813661C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _0813655C
	adds r0, r6, #0
	adds r0, #0xec
	ldrh r1, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136672
	movs r1, #0xec
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136672
	movs r3, #0xb1
	lsls r3, r3, #2
	adds r0, r6, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136672
	movs r1, #0xec
	lsls r1, r1, #2
	adds r0, r6, r1
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08136672
	ldr r0, _081366B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _081366B4 @ =sub_08137498
	str r0, [r1, #8]
_08136672:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r6, r2
	bl sub_081288DC
	adds r0, r6, #0
	bl sub_08137788
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136694: .4byte gUnk_0837EFC8
_08136698: .4byte gLanguage
_0813669C: .4byte 0x0000FFFE
_081366A0: .4byte 0x00000239
_081366A4: .4byte 0x0000FFEF
_081366A8: .4byte 0x0000023A
_081366AC: .4byte 0x0000FFDF
_081366B0: .4byte gCurTask
_081366B4: .4byte sub_08137498

	thumb_func_start sub_081366B8
sub_081366B8: @ 0x081366B8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _081366DC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081366E0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081366E8
	.align 2, 0
_081366DC: .4byte gCurTask
_081366E0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081366E8:
	adds r6, r0, #0
	bl sub_0812A304
	cmp r0, #0
	beq _081366F4
	b _08136806
_081366F4:
	movs r5, #0
	adds r7, r6, #0
	adds r7, #0xdc
	movs r0, #0xee
	adds r0, r0, r6
	mov r8, r0
_08136700:
	movs r0, #0xec
	muls r0, r5, r0
	adds r4, r7, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _08136714
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
_08136714:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _08136700
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #7
	bhi _08136746
	movs r1, #0xed
	lsls r1, r1, #1
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08136746
	adds r1, #0xec
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #7
	bhi _08136746
	adds r1, #0xec
	adds r0, r6, r1
	ldrb r0, [r0]
	cmp r0, #7
	bls _08136758
_08136746:
	ldr r0, _08136750 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136754 @ =sub_0813683C
	str r0, [r1, #8]
	b _08136806
	.align 2, 0
_08136750: .4byte gCurTask
_08136754: .4byte sub_0813683C
_08136758:
	ldr r0, _08136824 @ =0x0000041A
	adds r2, r6, r0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _0813676E
	movs r0, #7
	strb r0, [r2]
_0813676E:
	ldr r0, _08136828 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0813682C @ =sub_081358EC
	str r0, [r1, #8]
	movs r5, #0
	movs r1, #0x80
	lsls r1, r1, #3
	mov ip, r1
	ldr r0, _08136830 @ =gUnk_0837EFC8
	mov r8, r0
	ldr r7, _08136834 @ =gLanguage
	adds r1, #0x18
	adds r1, r1, r6
	mov sl, r1
	mov sb, r2
_0813678C:
	movs r0, #0xec
	muls r0, r5, r0
	adds r3, r6, r0
	adds r4, r3, #0
	adds r4, #0xe0
	ldrh r1, [r4]
	mov r0, ip
	ands r0, r1
	cmp r0, #0
	beq _081367D0
	ldr r0, _08136838 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r4]
	adds r2, r3, #0
	adds r2, #0x10
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	adds r0, r3, #0
	adds r0, #0x2f
	strb r5, [r0]
_081367D0:
	mov r1, sl
	ldrh r0, [r1]
	movs r1, #1
	ands r1, r0
	cmp r1, #0
	bne _081367FC
	mov r0, sb
	strb r1, [r0]
	ldrh r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #1
	ands r0, r1
	cmp r0, #0
	beq _081367FC
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	bne _081367FC
	mov r0, ip
	orrs r0, r1
	strh r0, [r4]
_081367FC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0813678C
_08136806:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r6, r1
	bl sub_081288DC
	adds r0, r6, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136824: .4byte 0x0000041A
_08136828: .4byte gCurTask
_0813682C: .4byte sub_081358EC
_08136830: .4byte gUnk_0837EFC8
_08136834: .4byte gLanguage
_08136838: .4byte 0x0000FBFF

	thumb_func_start sub_0813683C
sub_0813683C: @ 0x0813683C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08136860 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136864
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0813686C
	.align 2, 0
_08136860: .4byte gCurTask
_08136864:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0813686C:
	adds r5, r0, #0
	bl sub_0812A304
	cmp r0, #0
	beq _08136878
	b _08136A1A
_08136878:
	movs r0, #0x10
	rsbs r0, r0, #0
	movs r1, #1
	bl CreatePauseFade
	adds r0, r5, #0
	bl sub_08137204
	movs r0, #0
	mov sb, r0
	ldr r7, _08136920 @ =gLanguage
	movs r1, #0xff
	mov sl, r1
	ldr r2, _08136924 @ =gUnk_0837EFC8
	mov r8, r2
_08136896:
	movs r0, #0xec
	mov r6, sb
	muls r6, r0, r6
	adds r4, r6, r5
	adds r2, r4, #0
	adds r2, #0x98
	adds r3, r4, #0
	adds r3, #0xf8
	ldrb r1, [r3]
	lsls r1, r1, #2
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08136928 @ =gUnk_0837F170
	adds r1, r1, r0
	ldrh r0, [r1]
	strh r0, [r2, #0xc]
	ldrb r1, [r3]
	lsls r1, r1, #2
	ldrh r0, [r7]
	lsls r0, r0, #4
	adds r1, r1, r0
	ldr r0, _08136928 @ =gUnk_0837F170
	adds r1, r1, r0
	ldrb r0, [r1, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	adds r2, #0x48
	ldrh r0, [r2]
	movs r1, #0x20
	orrs r0, r1
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x2f
	mov r2, sb
	strb r2, [r0]
	ldrb r0, [r3]
	cmp r0, #0
	bne _0813692C
	adds r2, r4, #0
	adds r2, #0x10
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0, #0x14]
	strh r0, [r2, #0xc]
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #0x16]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sl
	orrs r0, r3
	strb r0, [r2, #0x1b]
	adds r1, r5, #0
	adds r1, #0x3c
	adds r1, r1, r6
	ldr r0, [r1]
	subs r0, #0x30
	str r0, [r1]
	b _0813699C
	.align 2, 0
_08136920: .4byte gLanguage
_08136924: .4byte gUnk_0837EFC8
_08136928: .4byte gUnk_0837F170
_0813692C:
	cmp r0, #3
	bne _0813695A
	adds r2, r4, #0
	adds r2, #0x10
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0, #0x10]
	strh r0, [r2, #0xc]
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #0x12]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r1, sl
	orrs r0, r1
	strb r0, [r2, #0x1b]
	b _0813699C
_0813695A:
	adds r2, r4, #0
	adds r2, #0x10
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrh r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	add r0, r8
	ldrb r0, [r0, #2]
	strb r0, [r2, #0x1a]
	ldrb r0, [r2, #0x1b]
	mov r3, sl
	orrs r0, r3
	strb r0, [r2, #0x1b]
	adds r0, r6, #0
	adds r0, #0x10
	adds r0, r5, r0
	bl sub_08155128
	adds r2, r4, #0
	adds r2, #0x44
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0813699C:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	cmp r0, #3
	bhi _081369AC
	b _08136896
_081369AC:
	ldr r1, _081369F8 @ =0x0000041D
	adds r0, r5, r1
	ldrb r1, [r0]
	movs r0, #0xec
	muls r0, r1, r0
	adds r1, r5, r0
	adds r0, r1, #0
	adds r0, #0xf8
	ldrb r0, [r0]
	cmp r0, #0
	bne _08136A0C
	adds r0, r1, #0
	adds r0, #0xee
	ldrb r0, [r0]
	cmp r0, #8
	bne _08136A04
	adds r0, r5, #0
	adds r0, #0xee
	ldrb r0, [r0]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r1, r5, r2
	ldrb r1, [r1]
	ldr r3, _081369FC @ =0x000002C6
	adds r2, r5, r3
	adds r0, r0, r1
	ldrb r2, [r2]
	adds r0, r0, r2
	ldr r2, _08136A00 @ =0x000003B2
	adds r1, r5, r2
	ldrb r1, [r1]
	adds r0, r0, r1
	cmp r0, #8
	bne _08136A04
	movs r0, #0x22
	bl m4aSongNumStart
	b _08136A12
	.align 2, 0
_081369F8: .4byte 0x0000041D
_081369FC: .4byte 0x000002C6
_08136A00: .4byte 0x000003B2
_08136A04:
	movs r0, #0x21
	bl m4aSongNumStart
	b _08136A12
_08136A0C:
	movs r0, #0x24
	bl m4aSongNumStart
_08136A12:
	ldr r0, _08136A38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136A3C @ =sub_08136A40
	str r0, [r1, #8]
_08136A1A:
	movs r3, #0xf0
	lsls r3, r3, #2
	adds r0, r5, r3
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136A38: .4byte gCurTask
_08136A3C: .4byte sub_08136A40

	thumb_func_start sub_08136A40
sub_08136A40: @ 0x08136A40
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08136A60 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136A64
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08136A6C
	.align 2, 0
_08136A60: .4byte gCurTask
_08136A64:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08136A6C:
	adds r5, r0, #0
	bl sub_0812A304
	cmp r0, #0
	beq _08136A78
	b _08136BBC
_08136A78:
	ldr r2, [r5]
	cmp r2, #0
	bne _08136B44
	ldr r0, _08136A94 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08136A9C
	ldr r0, _08136A98 @ =gUnk_020382D0
	ldrh r2, [r0, #0x10]
	ldrh r1, [r0, #8]
	b _08136AA4
	.align 2, 0
_08136A94: .4byte gUnk_0203AD10
_08136A98: .4byte gUnk_020382D0
_08136A9C:
	ldr r0, _08136ACC @ =gPressedKeys
	ldrh r2, [r0]
	ldr r0, _08136AD0 @ =gInput
	ldrh r1, [r0]
_08136AA4:
	movs r3, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08136B0C
	ldr r0, _08136AD4 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	cmp r2, #0
	beq _08136AE0
	ldr r0, _08136AD8 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08136ADC @ =gUnk_0837EF38
	adds r0, r0, r1
	movs r1, #0x82
	str r1, [sp]
	str r3, [sp, #4]
	b _08136AF4
	.align 2, 0
_08136ACC: .4byte gPressedKeys
_08136AD0: .4byte gInput
_08136AD4: .4byte gUnk_0203AD3C
_08136AD8: .4byte gLanguage
_08136ADC: .4byte gUnk_0837EF38
_08136AE0:
	ldr r0, _08136B04 @ =gLanguage
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	ldr r1, _08136B08 @ =gUnk_0837EF38
	adds r0, r0, r1
	movs r1, #0x82
	str r1, [sp]
	str r2, [sp, #4]
_08136AF4:
	movs r1, #0xd
	movs r2, #0xe
	movs r3, #0x50
	bl sub_08128F44
	str r0, [r5]
	b _08136BBC
	.align 2, 0
_08136B04: .4byte gLanguage
_08136B08: .4byte gUnk_0837EF38
_08136B0C:
	movs r0, #4
	ands r1, r0
	cmp r1, #0
	beq _08136BBC
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r2
	cmp r0, #0
	beq _08136B28
	ldr r0, _08136B24 @ =0x00000416
	adds r1, r5, r0
	b _08136B36
	.align 2, 0
_08136B24: .4byte 0x00000416
_08136B28:
	movs r0, #0x80
	lsls r0, r0, #1
	ands r2, r0
	cmp r2, #0
	beq _08136BBC
	ldr r2, _08136B40 @ =0x00000417
	adds r1, r5, r2
_08136B36:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	b _08136BBC
	.align 2, 0
_08136B40: .4byte 0x00000417
_08136B44:
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136B5A
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08136B62
_08136B5A:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08136B62:
	adds r0, r4, #0
	bl sub_0812A328
	cmp r0, #0
	beq _08136BBC
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
	ldr r1, _08136B9C @ =0x000002AD
	adds r0, r4, r1
	ldrb r1, [r0]
	ldr r2, _08136BA0 @ =0x0000041C
	adds r0, r5, r2
	strb r1, [r0]
	movs r1, #0xab
	lsls r1, r1, #2
	adds r0, r4, r1
	ldrb r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136BAC
	ldr r0, _08136BA4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136BA8 @ =sub_081374E8
	str r0, [r1, #8]
	b _08136BBC
	.align 2, 0
_08136B9C: .4byte 0x000002AD
_08136BA0: .4byte 0x0000041C
_08136BA4: .4byte gCurTask
_08136BA8: .4byte sub_081374E8
_08136BAC:
	ldr r0, _08136BD4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136BD8 @ =sub_08136BE4
	str r0, [r1, #8]
	ldr r0, _08136BDC @ =gUnk_0838518C
	ldr r1, _08136BE0 @ =0x0600F000
	bl RLUnCompVram
_08136BBC:
	movs r2, #0xf0
	lsls r2, r2, #2
	adds r0, r5, r2
	bl sub_081288DC
	adds r0, r5, #0
	bl sub_08137788
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08136BD4: .4byte gCurTask
_08136BD8: .4byte sub_08136BE4
_08136BDC: .4byte gUnk_0838518C
_08136BE0: .4byte 0x0600F000

	thumb_func_start sub_08136BE4
sub_08136BE4: @ 0x08136BE4
	push {r4, r5, lr}
	ldr r0, _08136C00 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136C04
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08136C0C
	.align 2, 0
_08136C00: .4byte gCurTask
_08136C04:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08136C0C:
	bl sub_0812A304
	adds r5, r0, #0
	cmp r5, #0
	bne _08136C4A
	ldr r0, [r4]
	bl TaskDestroy
	str r5, [r4]
	ldr r0, [r4, #0xc]
	bl TaskDestroy
	str r5, [r4, #0xc]
	ldr r0, _08136C50 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08136C3C
	ldr r2, _08136C54 @ =gUnk_020382D0
	ldrh r1, [r2, #4]
	ldr r0, _08136C58 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
_08136C3C:
	ldr r1, _08136C5C @ =0x0000041E
	adds r0, r4, r1
	strh r5, [r0]
	ldr r0, _08136C60 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08136C64 @ =sub_0813754C
	str r0, [r1, #8]
_08136C4A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08136C50: .4byte gUnk_0203AD10
_08136C54: .4byte gUnk_020382D0
_08136C58: .4byte 0x0000FFFD
_08136C5C: .4byte 0x0000041E
_08136C60: .4byte gCurTask
_08136C64: .4byte sub_0813754C

	thumb_func_start sub_08136C68
sub_08136C68: @ 0x08136C68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	movs r4, #0
	ldr r0, _08136CC0 @ =0x00000412
	add r0, sl
	mov sb, r0
	ldr r5, _08136CC4 @ =gUnk_020382D0
	movs r1, #0x18
	adds r1, r1, r5
	mov r8, r1
_08136C84:
	movs r0, #0xec
	muls r0, r4, r0
	mov r6, sl
	adds r3, r6, r0
	adds r0, r3, #0
	adds r0, #0xe0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08136CC8
	adds r0, r3, #0
	adds r0, #0xe8
	movs r1, #0
	strh r1, [r0]
	subs r0, #2
	strh r1, [r0]
	movs r2, #0
	adds r0, #0xe
	ldrh r0, [r0]
	mov r7, sb
	ldrh r7, [r7]
	cmp r0, r7
	bne _08136CB6
	movs r2, #1
_08136CB6:
	adds r0, r3, #0
	adds r0, #0xe4
	strh r2, [r0]
	adds r0, #6
	b _08136D32
	.align 2, 0
_08136CC0: .4byte 0x00000412
_08136CC4: .4byte gUnk_020382D0
_08136CC8:
	ldr r0, _08136D08 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08136D0C
	movs r0, #0xe6
	adds r0, r0, r3
	mov ip, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
	lsls r2, r4, #1
	adds r0, r5, #0
	adds r0, #8
	adds r0, r2, r0
	ldrh r0, [r0]
	mov r1, ip
	strh r0, [r1]
	adds r0, r5, #0
	adds r0, #0x10
	adds r0, r2, r0
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe4
	strh r1, [r0]
	add r2, r8
	ldrh r1, [r2]
	adds r0, #6
	b _08136D32
	.align 2, 0
_08136D08: .4byte gUnk_0203AD10
_08136D0C:
	ldr r0, _08136D4C @ =gPrevInput
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe8
	strh r1, [r0]
	ldr r0, _08136D50 @ =gInput
	ldrh r0, [r0]
	adds r1, r3, #0
	adds r1, #0xe6
	strh r0, [r1]
	ldr r0, _08136D54 @ =gPressedKeys
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xe4
	strh r1, [r0]
	ldr r0, _08136D58 @ =gReleasedKeys
	ldrh r1, [r0]
	adds r0, r3, #0
	adds r0, #0xea
_08136D32:
	strh r1, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08136C84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136D4C: .4byte gPrevInput
_08136D50: .4byte gInput
_08136D54: .4byte gPressedKeys
_08136D58: .4byte gReleasedKeys

	thumb_func_start sub_08136D5C
sub_08136D5C: @ 0x08136D5C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r5, _08136DCC @ =gRngVal
	ldr r0, [r5]
	ldr r1, _08136DD0 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _08136DD4 @ =0x3C6EF35F
	adds r0, r0, r4
	lsrs r2, r0, #0x10
	movs r3, #0xf
	ands r2, r3
	muls r1, r0, r1
	adds r1, r1, r4
	str r1, [r5]
	ands r1, r3
	ldr r3, _08136DD8 @ =gUnk_0837F408
	ldr r4, _08136DDC @ =0x0000041A
	adds r0, r6, r4
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r1, r1, r0
	adds r1, r1, r3
	ldrb r1, [r1]
	cmp r2, r1
	bhs _08136DEC
	movs r0, #0x83
	lsls r0, r0, #3
	adds r2, r6, r0
	ldrh r1, [r2]
	ldr r0, _08136DE0 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r2]
	subs r4, #0x3b
	adds r1, r6, r4
	movs r0, #5
	strb r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #2
	adds r2, r6, r0
	ldr r4, _08136DE4 @ =gUnk_0837F228
	ldr r3, _08136DE8 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x14]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x16]
	b _08136E24
	.align 2, 0
_08136DCC: .4byte gRngVal
_08136DD0: .4byte 0x00196225
_08136DD4: .4byte 0x3C6EF35F
_08136DD8: .4byte gUnk_0837F408
_08136DDC: .4byte 0x0000041A
_08136DE0: .4byte 0x0000FFFE
_08136DE4: .4byte gUnk_0837F228
_08136DE8: .4byte gLanguage
_08136DEC:
	movs r4, #0x83
	lsls r4, r4, #3
	adds r2, r6, r4
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _08136E30 @ =0x000003DF
	adds r1, r6, r0
	movs r0, #7
	strb r0, [r1]
	subs r4, #0x58
	adds r2, r6, r4
	ldr r4, _08136E34 @ =gUnk_0837F228
	ldr r3, _08136E38 @ =gLanguage
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0]
	strh r0, [r2, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #2]
_08136E24:
	strb r0, [r2, #0x1a]
	movs r0, #0xff
	strb r0, [r2, #0x1b]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08136E30: .4byte 0x000003DF
_08136E34: .4byte gUnk_0837F228
_08136E38: .4byte gLanguage

	thumb_func_start sub_08136E3C
sub_08136E3C: @ 0x08136E3C
	push {r4, r5, r6, r7, lr}
	ldr r2, _08136E5C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r7, r2, #0
	cmp r0, #0
	beq _08136E60
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08136E68
	.align 2, 0
_08136E5C: .4byte gCurTask
_08136E60:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08136E68:
	ldrb r0, [r6, #4]
	adds r0, #1
	strb r0, [r6, #4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x3c
	bhi _08136E82
	cmp r0, #0x37
	bne _08136EBC
	ldr r0, [r6]
	bl sub_08137E24
	b _08136EBC
_08136E82:
	ldr r3, [r6]
	ldr r4, _08136EC4 @ =gUnk_0837EFC8
	ldr r2, _08136EC8 @ =gLanguage
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrh r0, [r0, #0x10]
	movs r5, #0
	strh r0, [r3, #0xc]
	ldr r3, [r6]
	ldrh r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r0, [r0, #0x12]
	strb r0, [r3, #0x1a]
	ldr r1, [r6]
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	ldr r1, [r6]
	movs r0, #4
	strb r0, [r1, #0x1f]
	strb r5, [r6, #4]
	ldr r1, [r7]
	ldr r0, _08136ECC @ =sub_08136ED0
	str r0, [r1, #8]
_08136EBC:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08136EC4: .4byte gUnk_0837EFC8
_08136EC8: .4byte gLanguage
_08136ECC: .4byte sub_08136ED0

	thumb_func_start sub_08136ED0
sub_08136ED0: @ 0x08136ED0
	push {r4, r5, lr}
	ldr r2, _08136EF0 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08136EF4
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08136EFC
	.align 2, 0
_08136EF0: .4byte gCurTask
_08136EF4:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08136EFC:
	adds r4, r0, #0
	ldrb r0, [r4, #4]
	cmp r0, #0x15
	bhi _08136F1C
	ldr r2, [r4]
	ldr r1, _08136F18 @ =gUnk_0837F210
	adds r0, r0, r1
	movs r1, #0
	ldrsb r1, [r0, r1]
	lsls r1, r1, #2
	ldr r0, [r2, #0x2c]
	adds r0, r0, r1
	str r0, [r2, #0x2c]
	b _08136F2E
	.align 2, 0
_08136F18: .4byte gUnk_0837F210
_08136F1C:
	ldr r1, [r4]
	adds r1, #0xdc
	ldrh r2, [r1]
	movs r0, #0x40
	orrs r0, r2
	strh r0, [r1]
	ldr r0, [r5]
	bl TaskDestroy
_08136F2E:
	ldrb r0, [r4, #4]
	adds r0, #1
	strb r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08136F3C
sub_08136F3C: @ 0x08136F3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x14
	adds r4, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	str r2, [sp, #8]
	ldr r0, _08136F80 @ =sub_08137190
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08136F84
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08136F8C
	.align 2, 0
_08136F80: .4byte sub_08137190
_08136F84:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08136F8C:
	adds r5, r0, #0
	str r4, [r5, #0x54]
	adds r0, r4, #0
	adds r0, #0xdf
	ldrb r7, [r0]
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _08136FA2
	adds r0, r7, #5
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
_08136FA2:
	ldr r2, _081370A4 @ =gUnk_0837EFC8
	ldr r1, _081370A8 @ =gLanguage
	mov r8, r1
	ldrh r1, [r1]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrh r0, [r0, #4]
	movs r6, #0
	strh r0, [r4, #0xc]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r2
	ldrb r0, [r0, #6]
	strb r0, [r4, #0x1a]
	movs r1, #1
	rsbs r1, r1, #0
	mov sl, r1
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	str r4, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r6, [r0]
	adds r2, r5, #0
	adds r2, #0x52
	str r2, [sp, #0x10]
	movs r1, #2
	strh r1, [r2]
	ldr r2, _081370AC @ =gUnk_0837F318
	mov r4, sb
	lsls r3, r4, #1
	lsls r4, r4, #3
	mov ip, r4
	add ip, r2
	mov r0, ip
	ldr r0, [r0]
	str r0, [r5, #0x48]
	adds r0, r3, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	ldr r0, [r0]
	str r0, [r5, #0x4c]
	ldr r2, [sp, #0x10]
	ldrh r0, [r2]
	ands r1, r0
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	str r3, [sp, #0xc]
	cmp r4, #0
	beq _081370BC
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081370B0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081370B4 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r3, _081370B8 @ =gUnk_0837F228
	lsls r2, r7, #2
	mov r4, r8
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	ldrh r1, [r4]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r2, r3
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	ldrb r0, [r5, #0x1f]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r4, r5, #0
	adds r4, #0x23
	movs r0, #7
	strb r0, [r4]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
	adds r3, r4, #0
	b _0813713C
	.align 2, 0
_081370A4: .4byte gUnk_0837EFC8
_081370A8: .4byte gLanguage
_081370AC: .4byte gUnk_0837F318
_081370B0: .4byte 0x05000011
_081370B4: .4byte 0x06010000
_081370B8: .4byte gUnk_0837F228
_081370BC:
	str r4, [sp, #4]
	adds r1, r5, #4
	ldr r2, _0813717C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137180 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x88
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	ldr r3, _08137184 @ =gUnk_0837F228
	lsls r2, r7, #2
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r2, r0
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r5, #0x10]
	mov r0, r8
	ldrh r1, [r0]
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, r2, r0
	adds r2, r2, r3
	ldrb r0, [r2, #2]
	strb r0, [r5, #0x1e]
	strh r4, [r5, #0x1a]
	ldrb r0, [r5, #0x1f]
	mov r1, sl
	orrs r0, r1
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r3, r5, #0
	adds r3, #0x23
	movs r0, #7
	strb r0, [r3]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r4, [r5, #0x34]
	strh r4, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r4, [r5, #0x3a]
	str r4, [r5, #0x3c]
	str r4, [r5, #0x40]
	str r4, [r5, #0x44]
_0813713C:
	ldr r2, [sp, #8]
	cmp r2, #0
	beq _08137146
	movs r0, #5
	strb r0, [r3]
_08137146:
	ldr r0, [r5, #0xc]
	ldr r1, _08137188 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r1, _0813718C @ =gUnk_0837F338
	mov r4, sb
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x34]
	ldr r0, [sp, #0xc]
	adds r0, #1
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0x36]
	add sp, #0x14
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0813717C: .4byte 0x05000011
_08137180: .4byte 0x06010000
_08137184: .4byte gUnk_0837F228
_08137188: .4byte 0xFFFFCFFF
_0813718C: .4byte gUnk_0837F338

	thumb_func_start sub_08137190
sub_08137190: @ 0x08137190
	push {r4, lr}
	ldr r0, _081371AC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081371B0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081371B8
	.align 2, 0
_081371AC: .4byte gCurTask
_081371B0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081371B8:
	ldr r0, [r4, #0x48]
	adds r0, #7
	cmp r0, #0xe
	bhi _081371C6
	movs r0, #0
	str r0, [r4, #0x48]
	strh r0, [r4, #0x34]
_081371C6:
	ldr r0, [r4, #0x4c]
	cmp r0, #8
	bgt _081371D2
	movs r0, #0
	str r0, [r4, #0x4c]
	strh r0, [r4, #0x36]
_081371D2:
	adds r0, r4, #0
	bl sub_0812A2C0
	ldr r0, [r4, #0x48]
	cmp r0, #0
	bne _081371F8
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _081371F8
	ldr r1, [r4, #0x54]
	adds r1, #0xdc
	ldrh r2, [r1]
	movs r0, #0x10
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08137200 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081371F8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137200: .4byte gCurTask

	thumb_func_start sub_08137204
sub_08137204: @ 0x08137204
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	adds r6, r0, #0
	mov r1, sp
	adds r0, #0xee
	ldrb r0, [r0]
	strb r0, [r1]
	movs r2, #0xed
	lsls r2, r2, #1
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1, #1]
	adds r2, #0xec
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1, #2]
	adds r2, #0xec
	adds r0, r6, r2
	ldrb r0, [r0]
	strb r0, [r1, #3]
	movs r0, #0
	mov r8, r0
	mov r2, sp
_08137238:
	movs r1, #0
	mov ip, r1
	ldrb r4, [r2]
	ldrb r3, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _08137250
	ldrb r0, [r2, #2]
	cmp r3, r0
	bgt _08137256
	b _0813725A
_08137250:
	ldrb r0, [r2, #3]
	cmp r3, r0
	ble _0813725A
_08137256:
	ldrb r0, [r2, #1]
	b _08137264
_0813725A:
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _0813726A
	ldrb r0, [r2, #2]
_08137264:
	cmp r4, r0
	bgt _08137270
	b _08137274
_0813726A:
	ldrb r0, [r2, #3]
	cmp r4, r0
	ble _08137274
_08137270:
	ldrb r0, [r2]
	b _0813729E
_08137274:
	ldrb r3, [r2, #1]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _08137286
	ldrb r0, [r2, #2]
	cmp r3, r0
	bgt _0813728C
	b _08137290
_08137286:
	ldrb r0, [r2, #3]
	cmp r3, r0
	ble _08137290
_0813728C:
	ldrb r0, [r2, #1]
	b _0813729E
_08137290:
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	cmp r1, r0
	bls _0813729C
	ldrb r0, [r2, #2]
	b _0813729E
_0813729C:
	ldrb r0, [r2, #3]
_0813729E:
	adds r5, r0, #0
	movs r3, #0
	mov sb, r3
	movs r0, #0x81
	lsls r0, r0, #3
	adds r4, r6, r0
	movs r7, #0xec
_081372AC:
	adds r0, r3, #0
	muls r0, r7, r0
	adds r0, r6, r0
	adds r1, r0, #0
	adds r1, #0xee
	ldrb r1, [r1]
	cmp r5, r1
	bne _081372DC
	adds r0, #0xf8
	mov r1, r8
	strb r1, [r0]
	mov r0, r8
	add r0, ip
	adds r0, r4, r0
	strb r3, [r0]
	mov r1, sp
	adds r0, r1, r3
	mov r1, sb
	strb r1, [r0]
	mov r0, ip
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
_081372DC:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _081372AC
	mov r0, r8
	add r0, ip
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	cmp r0, #3
	bls _08137238
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08137304
sub_08137304: @ 0x08137304
	push {r4, r5, r6, lr}
	ldr r2, _08137324 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _08137328
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08137330
	.align 2, 0
_08137324: .4byte gCurTask
_08137328:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08137330:
	ldr r4, _0813739C @ =gBgScrollRegs
	ldr r2, _081373A0 @ =gUnk_0837F488
	ldrb r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r1, [r4]
	adds r0, r0, r1
	strh r0, [r4]
	ldr r1, _081373A4 @ =gUnk_0837F497
	ldrb r0, [r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #2]
	adds r0, r0, r6
	strh r0, [r4, #2]
	ldrb r0, [r3]
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r2, [r4, #4]
	adds r0, r0, r2
	strh r0, [r4, #4]
	ldrb r0, [r3]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldrh r6, [r4, #6]
	adds r0, r0, r6
	strh r0, [r4, #6]
	ldrb r0, [r3]
	adds r1, r0, #1
	strb r1, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _08137394
	movs r0, #8
	strh r0, [r4]
	strh r0, [r4, #2]
	strh r0, [r4, #4]
	strh r0, [r4, #6]
	ldr r0, [r5]
	bl TaskDestroy
_08137394:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0813739C: .4byte gBgScrollRegs
_081373A0: .4byte gUnk_0837F488
_081373A4: .4byte gUnk_0837F497

	thumb_func_start sub_081373A8
sub_081373A8: @ 0x081373A8
	push {r4, r5, lr}
	ldr r2, _081373C8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r5, r2, #0
	cmp r0, #0
	beq _081373CC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081373D4
	.align 2, 0
_081373C8: .4byte gCurTask
_081373CC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081373D4:
	ldr r3, _08137414 @ =gBgScrollRegs
	ldr r1, _08137418 @ =gUnk_0837F4A6
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r4, #0
	strh r0, [r3, #8]
	ldr r1, _0813741C @ =gUnk_0837F4B5
	ldrb r0, [r2]
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	strh r0, [r3, #0xa]
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bls _0813740C
	strh r4, [r3, #8]
	strh r4, [r3, #0xa]
	ldr r0, [r5]
	bl TaskDestroy
_0813740C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08137414: .4byte gBgScrollRegs
_08137418: .4byte gUnk_0837F4A6
_0813741C: .4byte gUnk_0837F4B5

	thumb_func_start sub_08137420
sub_08137420: @ 0x08137420
	push {r4, lr}
	ldr r0, _0813743C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137440
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137448
	.align 2, 0
_0813743C: .4byte gCurTask
_08137440:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137448:
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	bl sub_081386A8
	movs r1, #0x83
	lsls r1, r1, #3
	adds r0, r4, r1
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137470
	ldr r0, _08137468 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _0813746C @ =sub_08135B38
	b _08137476
	.align 2, 0
_08137468: .4byte gCurTask
_0813746C: .4byte sub_08135B38
_08137470:
	ldr r0, _08137490 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08137494 @ =sub_081361B4
_08137476:
	str r0, [r1, #8]
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_08137788
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137490: .4byte gCurTask
_08137494: .4byte sub_081361B4

	thumb_func_start sub_08137498
sub_08137498: @ 0x08137498
	push {r4, lr}
	ldr r2, _081374B4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081374B8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _081374C0
	.align 2, 0
_081374B4: .4byte gCurTask
_081374B8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_081374C0:
	ldr r0, [r2]
	ldr r1, _081374E4 @ =sub_081366B8
	str r1, [r0, #8]
	movs r0, #0x10
	movs r1, #1
	bl CreatePauseFade
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_08137788
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081374E4: .4byte sub_081366B8

	thumb_func_start sub_081374E8
sub_081374E8: @ 0x081374E8
	push {r4, r5, lr}
	ldr r0, _08137504 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137508
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137510
	.align 2, 0
_08137504: .4byte gCurTask
_08137508:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137510:
	bl sub_0812A304
	adds r5, r0, #0
	cmp r5, #0
	bne _0813752E
	bl m4aMPlayAllStop
	ldr r0, _08137544 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08137548 @ =sub_08134E54
	str r0, [r1, #8]
	ldr r0, [r4]
	bl TaskDestroy
	str r5, [r4]
_0813752E:
	movs r1, #0xf0
	lsls r1, r1, #2
	adds r0, r4, r1
	bl sub_081288DC
	adds r0, r4, #0
	bl sub_08137788
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08137544: .4byte gCurTask
_08137548: .4byte sub_08134E54

	thumb_func_start sub_0813754C
sub_0813754C: @ 0x0813754C
	push {r4, lr}
	ldr r2, _0813756C @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08137570
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137578
	.align 2, 0
_0813756C: .4byte gCurTask
_08137570:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137578:
	ldr r1, _081375B0 @ =0x0000041E
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r2, r1, #1
	strh r2, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0x32
	ble _081375AA
	ldr r0, [r4]
	bl TaskDestroy
	ldr r0, _081375B4 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _081375A4
	bl sub_08031CC8
	bl sub_081589E8
_081375A4:
	movs r0, #0
	bl sub_08138D64
_081375AA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081375B0: .4byte 0x0000041E
_081375B4: .4byte gUnk_0203AD10

	thumb_func_start nullsub_128
nullsub_128: @ 0x081375B8
	bx lr
	.align 2, 0

	thumb_func_start sub_081375BC
sub_081375BC: @ 0x081375BC
	push {r4, r5, lr}
	ldr r4, _081375FC @ =gRngVal
	ldr r2, [r4]
	ldr r1, _08137600 @ =0x00196225
	adds r3, r2, #0
	muls r3, r1, r3
	ldr r1, _08137604 @ =0x3C6EF35F
	adds r3, r3, r1
	str r3, [r4]
	ldr r4, _08137608 @ =gUnk_0837F388
	movs r2, #0xf
	ands r2, r3
	lsls r2, r2, #1
	ldr r5, _0813760C @ =0x0000041C
	adds r1, r0, r5
	ldrb r1, [r1]
	lsls r1, r1, #5
	adds r2, r2, r1
	adds r2, r2, r4
	movs r1, #0
	ldrsh r2, [r2, r1]
	lsrs r3, r3, #2
	movs r1, #0xf
	ands r3, r1
	adds r2, r2, r3
	subs r5, #0xc
	adds r0, r0, r5
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081375FC: .4byte gRngVal
_08137600: .4byte 0x00196225
_08137604: .4byte 0x3C6EF35F
_08137608: .4byte gUnk_0837F388
_0813760C: .4byte 0x0000041C

	thumb_func_start sub_08137610
sub_08137610: @ 0x08137610
	push {r4, r5, lr}
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	lsls r2, r2, #0x10
	lsrs r5, r2, #0x10
	adds r0, #0xd0
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137652
	ldr r2, _08137658 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _0813765C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _08137660 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0xf
	ands r0, r1
	ldr r2, _08137664 @ =gUnk_0837F348
	lsls r1, r4, #4
	adds r0, r0, r1
	adds r0, r0, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r0, r5, r0
	adds r1, r3, #0
	adds r1, #0xe4
	strh r0, [r1]
_08137652:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08137658: .4byte gRngVal
_0813765C: .4byte 0x00196225
_08137660: .4byte 0x3C6EF35F
_08137664: .4byte gUnk_0837F348

	thumb_func_start sub_08137668
sub_08137668: @ 0x08137668
	push {lr}
	sub sp, #4
	ldr r0, _08137698 @ =sub_081376E4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813769C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _081376A4
	.align 2, 0
_08137698: .4byte sub_081376E4
_0813769C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_081376A4:
	movs r0, #0
	strb r0, [r1]
	ldr r0, _081376D0 @ =gUnk_03000530
	str r1, [r0]
	ldr r3, _081376D4 @ =gUnk_03002470
	ldr r2, _081376D8 @ =gUnk_03006070
	ldrb r0, [r2]
	adds r1, r0, #1
	strb r1, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x16
	adds r0, r0, r3
	ldr r1, _081376DC @ =sub_081378BC
	str r1, [r0]
	ldr r2, _081376E0 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #0x10
	orrs r0, r1
	str r0, [r2]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_081376D0: .4byte gUnk_03000530
_081376D4: .4byte gUnk_03002470
_081376D8: .4byte gUnk_03006070
_081376DC: .4byte sub_081378BC
_081376E0: .4byte gUnk_03002440

	thumb_func_start sub_081376E4
sub_081376E4: @ 0x081376E4
	push {r4, lr}
	ldr r2, _08137704 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08137708
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08137710
	.align 2, 0
_08137704: .4byte gCurTask
_08137708:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08137710:
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bls _0813772E
	ldr r2, _08137734 @ =gDispCnt
	ldrh r1, [r2]
	ldr r0, _08137738 @ =0x0000FBFF
	ands r0, r1
	strh r0, [r2]
	ldr r0, [r4]
	bl TaskDestroy
_0813772E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137734: .4byte gDispCnt
_08137738: .4byte 0x0000FBFF

	thumb_func_start sub_0813773C
sub_0813773C: @ 0x0813773C
	push {r4, lr}
	sub sp, #4
	adds r4, r0, #0
	ldr r0, _0813776C @ =sub_08136E3C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #8
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137770
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08137778
	.align 2, 0
_0813776C: .4byte sub_08136E3C
_08137770:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08137778:
	str r4, [r1]
	movs r0, #0
	strb r0, [r1, #4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08137788
sub_08137788: @ 0x08137788
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	movs r6, #0
_0813778E:
	movs r0, #0xec
	muls r0, r6, r0
	adds r0, #0x10
	adds r4, r7, r0
	adds r0, r4, #0
	bl sub_081288DC
	adds r5, r4, #0
	adds r5, #0xd0
	ldrh r1, [r5]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081377B2
	adds r0, r4, #0
	adds r0, #0x44
	bl sub_081288DC
_081377B2:
	ldrh r1, [r5]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _081377C4
	adds r0, r4, #0
	adds r0, #0x88
	bl sub_081288DC
_081377C4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0813778E
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081377D4
sub_081377D4: @ 0x081377D4
	push {lr}
	sub sp, #4
	ldr r0, _08137804 @ =sub_0813781C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137808
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08137810
	.align 2, 0
_08137804: .4byte sub_0813781C
_08137808:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08137810:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813781C
sub_0813781C: @ 0x0813781C
	push {r4, lr}
	ldr r0, _08137838 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813783C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137844
	.align 2, 0
_08137838: .4byte gCurTask
_0813783C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137844:
	ldrb r0, [r4]
	cmp r0, #0x3c
	bls _0813785E
	movs r0, #0
	strb r0, [r4]
	movs r0, #0x8f
	lsls r0, r0, #2
	bl m4aSongNumStart
	ldr r0, _0813786C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08137870 @ =sub_08137304
	str r0, [r1, #8]
_0813785E:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0813786C: .4byte gCurTask
_08137870: .4byte sub_08137304

	thumb_func_start sub_08137874
sub_08137874: @ 0x08137874
	push {lr}
	sub sp, #4
	ldr r0, _081378A4 @ =sub_081373A8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081378A8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _081378B0
	.align 2, 0
_081378A4: .4byte sub_081373A8
_081378A8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_081378B0:
	movs r0, #0
	strb r0, [r1]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081378BC
sub_081378BC: @ 0x081378BC
	push {lr}
	ldr r0, _081378CC @ =gUnk_083850A4
	ldr r1, _081378D0 @ =0x0600F000
	bl RLUnCompVram
	pop {r0}
	bx r0
	.align 2, 0
_081378CC: .4byte gUnk_083850A4
_081378D0: .4byte 0x0600F000

	thumb_func_start sub_081378D4
sub_081378D4: @ 0x081378D4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137908 @ =sub_08137A80
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813790C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137914
	.align 2, 0
_08137908: .4byte sub_08137A80
_0813790C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137914:
	adds r5, r0, #0
	adds r0, #0x54
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08137930 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137964
	lsls r0, r0, #2
	ldr r1, _08137934 @ =_08137938
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137930: .4byte gLanguage
_08137934: .4byte _08137938
_08137938: @ jump table
	.4byte _08137950 @ case 0
	.4byte _08137950 @ case 1
	.4byte _08137950 @ case 2
	.4byte _08137950 @ case 3
	.4byte _08137950 @ case 4
	.4byte _08137950 @ case 5
_08137950:
	ldr r0, _081379F8 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _081379FC @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #9
	orrs r4, r0
_08137964:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	subs r0, #0xbb
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137A08
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137A00 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137A04 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137A60
	.align 2, 0
_081379F8: .4byte 0xFFFF0000
_081379FC: .4byte 0xFF00FFFF
_08137A00: .4byte 0x05000011
_08137A04: .4byte 0x06010000
_08137A08:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137A78 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137A7C @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137A60:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	movs r0, #2
	strh r0, [r5, #0x36]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137A78: .4byte 0x05000011
_08137A7C: .4byte 0x06010000

	thumb_func_start sub_08137A80
sub_08137A80: @ 0x08137A80
	push {r4, lr}
	ldr r0, _08137A9C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137AA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137AA8
	.align 2, 0
_08137A9C: .4byte gCurTask
_08137AA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137AA8:
	adds r0, r4, #0
	bl sub_0812A2C0
	adds r2, r4, #0
	adds r2, #0x54
	ldrh r0, [r2]
	adds r1, r0, #1
	strh r1, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x18
	ble _08137AC8
	movs r0, #0
	strh r0, [r2]
	subs r0, #0xb8
	str r0, [r4, #0x4c]
_08137AC8:
	adds r0, r4, #0
	adds r0, #0x52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08137AEE
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	cmp r0, #0
	beq _08137AE6
	subs r0, #1
	strh r0, [r1]
	b _08137AEE
_08137AE6:
	ldr r0, _08137AF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08137AEE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08137AF4: .4byte gCurTask

	thumb_func_start sub_08137AF8
sub_08137AF8: @ 0x08137AF8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137B2C @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137B30
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137B38
	.align 2, 0
_08137B2C: .4byte sub_08128980
_08137B30:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137B38:
	adds r5, r0, #0
	ldr r0, _08137B4C @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137B80
	lsls r0, r0, #2
	ldr r1, _08137B50 @ =_08137B54
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137B4C: .4byte gLanguage
_08137B50: .4byte _08137B54
_08137B54: @ jump table
	.4byte _08137B6C @ case 0
	.4byte _08137B6C @ case 1
	.4byte _08137B6C @ case 2
	.4byte _08137B6C @ case 3
	.4byte _08137B6C @ case 4
	.4byte _08137B6C @ case 5
_08137B6C:
	ldr r0, _08137C14 @ =0xFFFF0000
	ands r4, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r4, r0
	ldr r0, _08137C18 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	orrs r4, r0
_08137B80:
	mov r0, r8
	str r0, [r5]
	adds r1, r5, #0
	adds r1, #0x50
	movs r7, #0
	movs r0, #0x5a
	strh r0, [r1]
	adds r1, #2
	movs r0, #3
	strh r0, [r1]
	str r7, [r5, #0x48]
	subs r0, #0xbb
	str r0, [r5, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137C24
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137C1C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137C20 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137C7C
	.align 2, 0
_08137C14: .4byte 0xFFFF0000
_08137C18: .4byte 0xFF00FFFF
_08137C1C: .4byte 0x05000011
_08137C20: .4byte 0x06010000
_08137C24:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137C90 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137C94 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r1, r5, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137C7C:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137C90: .4byte 0x05000011
_08137C94: .4byte 0x06010000

	thumb_func_start sub_08137C98
sub_08137C98: @ 0x08137C98
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	ldr r0, _08137CC8 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137CCC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137CD4
	.align 2, 0
_08137CC8: .4byte sub_08128980
_08137CCC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137CD4:
	adds r4, r0, #0
	ldr r0, _08137CE8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137D16
	lsls r0, r0, #2
	ldr r1, _08137CEC @ =_08137CF0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137CE8: .4byte gLanguage
_08137CEC: .4byte _08137CF0
_08137CF0: @ jump table
	.4byte _08137D08 @ case 0
	.4byte _08137D08 @ case 1
	.4byte _08137D08 @ case 2
	.4byte _08137D08 @ case 3
	.4byte _08137D08 @ case 4
	.4byte _08137D08 @ case 5
_08137D08:
	ldr r0, _08137DAC @ =0xFFFF0000
	ands r5, r0
	movs r0, #0xda
	lsls r0, r0, #2
	orrs r5, r0
	ldr r0, _08137DB0 @ =0xFF00FFFF
	ands r5, r0
_08137D16:
	movs r7, #0
	str r7, [r4]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x96
	strh r0, [r1]
	adds r1, #2
	movs r0, #1
	strh r0, [r1]
	movs r0, #0xf0
	lsls r0, r0, #1
	str r0, [r4, #0x48]
	movs r0, #0xf0
	str r0, [r4, #0x4c]
	ldrh r1, [r1]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137DBC
	str r7, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08137DB4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137DB8 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r7, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r4]
	ldr r2, [r4, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r4, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r4, #0x30]
	strh r7, [r4, #0x34]
	strh r7, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r7, [r4, #0x3a]
	str r7, [r4, #0x3c]
	str r7, [r4, #0x40]
	str r7, [r4, #0x44]
	b _08137E14
	.align 2, 0
_08137DAC: .4byte 0xFFFF0000
_08137DB0: .4byte 0xFF00FFFF
_08137DB4: .4byte 0x05000011
_08137DB8: .4byte 0x06010000
_08137DBC:
	str r6, [sp, #4]
	adds r1, r4, #4
	ldr r2, _08137E1C @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137E20 @ =0x06010000
	str r0, [r4, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x18]
	strh r5, [r4, #0x10]
	lsrs r0, r5, #0x10
	strb r0, [r4, #0x1e]
	strh r6, [r4, #0x1a]
	movs r0, #0xff
	strb r0, [r4, #0x1f]
	adds r1, r4, #0
	adds r1, #0x20
	movs r0, #0x10
	strb r0, [r1]
	adds r1, #3
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r4, #0x48]
	asrs r0, r2, #2
	strh r0, [r4, #0x14]
	ldr r1, [r4, #0x4c]
	asrs r0, r1, #2
	strh r0, [r4, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r4, #0xc]
	str r2, [r4, #0x2c]
	str r1, [r4, #0x30]
	strh r6, [r4, #0x34]
	strh r6, [r4, #0x36]
	movs r0, #0x81
	lsls r0, r0, #4
	strh r0, [r4, #0x38]
	strh r6, [r4, #0x3a]
	str r6, [r4, #0x3c]
	str r6, [r4, #0x40]
	str r6, [r4, #0x44]
_08137E14:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137E1C: .4byte 0x05000011
_08137E20: .4byte 0x06010000

	thumb_func_start sub_08137E24
sub_08137E24: @ 0x08137E24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	ldr r0, _08137E58 @ =sub_08137FC8
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137E5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08137E64
	.align 2, 0
_08137E58: .4byte sub_08137FC8
_08137E5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08137E64:
	adds r5, r0, #0
	mov r0, r8
	str r0, [r5, #0x54]
	adds r0, r5, #0
	adds r0, #0x58
	movs r1, #0
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	ldr r0, _08137E88 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08137EB4
	lsls r0, r0, #2
	ldr r1, _08137E8C @ =_08137E90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08137E88: .4byte gLanguage
_08137E8C: .4byte _08137E90
_08137E90: @ jump table
	.4byte _08137EA8 @ case 0
	.4byte _08137EA8 @ case 1
	.4byte _08137EA8 @ case 2
	.4byte _08137EA8 @ case 3
	.4byte _08137EA8 @ case 4
	.4byte _08137EA8 @ case 5
_08137EA8:
	ldr r0, _08137F44 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _08137F48 @ =0x0000036A
	orrs r4, r0
	ldr r0, _08137F4C @ =0xFF00FFFF
	ands r4, r0
_08137EB4:
	mov r1, r8
	str r1, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r7, [r5, #0x48]
	str r7, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08137F58
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137F50 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137F54 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08137FAE
	.align 2, 0
_08137F44: .4byte 0xFFFF0000
_08137F48: .4byte 0x0000036A
_08137F4C: .4byte 0xFF00FFFF
_08137F50: .4byte 0x05000011
_08137F54: .4byte 0x06010000
_08137F58:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08137FC0 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08137FC4 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08137FAE:
	mov r1, r8
	ldr r0, [r1, #0x38]
	str r0, [r5, #0x3c]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08137FC0: .4byte 0x05000011
_08137FC4: .4byte 0x06010000

	thumb_func_start sub_08137FC8
sub_08137FC8: @ 0x08137FC8
	push {r4, r5, lr}
	ldr r0, _08137FE4 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08137FE8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08137FF0
	.align 2, 0
_08137FE4: .4byte gCurTask
_08137FE8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08137FF0:
	adds r5, r4, #0
	adds r0, r4, #0
	bl sub_0812A2C0
	movs r0, #0x59
	adds r0, r0, r4
	mov ip, r0
	movs r3, #0
	ldrsb r3, [r0, r3]
	cmp r3, #0
	bne _0813802C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _081380B4
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #6
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r3, [r2]
	b _081380B4
_0813802C:
	cmp r3, #1
	bne _0813809C
	adds r2, r4, #0
	adds r2, #0x58
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _081380B4
	adds r1, r4, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	mov r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	movs r0, #0
	strb r0, [r2]
	ldr r0, _08138068 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _081380B4
	lsls r0, r0, #2
	ldr r1, _0813806C @ =_08138070
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08138068: .4byte gLanguage
_0813806C: .4byte _08138070
_08138070: @ jump table
	.4byte _08138088 @ case 0
	.4byte _08138088 @ case 1
	.4byte _08138088 @ case 2
	.4byte _08138088 @ case 3
	.4byte _08138088 @ case 4
	.4byte _08138088 @ case 5
_08138088:
	ldr r0, _08138098 @ =0x0000036A
	strh r0, [r5, #0x10]
	movs r0, #1
	strb r0, [r5, #0x1e]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	b _081380B4
	.align 2, 0
_08138098: .4byte 0x0000036A
_0813809C:
	cmp r3, #2
	bne _081380B4
	ldrh r1, [r4, #0x38]
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r1
	cmp r0, #0
	beq _081380B4
	ldr r0, _081380BC @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_081380B4:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_081380BC: .4byte gCurTask

	thumb_func_start sub_081380C0
sub_081380C0: @ 0x081380C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r0
	adds r6, r1, #0
	mov sl, r2
	ldr r0, _08138100 @ =sub_0813870C
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x58
	movs r3, #0
	bl TaskCreate
	mov r8, r0
	ldrh r1, [r0, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138104
	mov r1, r8
	ldrh r0, [r1, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0813810E
	.align 2, 0
_08138100: .4byte sub_0813870C
_08138104:
	mov r2, r8
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0813810E:
	adds r5, r0, #0
	ldr r0, _08138124 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _08138150
	lsls r0, r0, #2
	ldr r1, _08138128 @ =_0813812C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08138124: .4byte gLanguage
_08138128: .4byte _0813812C
_0813812C: @ jump table
	.4byte _08138144 @ case 0
	.4byte _08138144 @ case 1
	.4byte _08138144 @ case 2
	.4byte _08138144 @ case 3
	.4byte _08138144 @ case 4
	.4byte _08138144 @ case 5
_08138144:
	ldr r0, _081381E0 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081381E4 @ =0x00000369
	orrs r4, r0
	ldr r0, _081381E8 @ =0xFF00FFFF
	ands r4, r0
_08138150:
	mov r0, sb
	str r0, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	movs r7, #0
	strh r7, [r0]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #2
	strh r0, [r1]
	str r6, [r5, #0x48]
	mov r2, sl
	str r2, [r5, #0x4c]
	ldrh r1, [r1]
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081381F4
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081381EC @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081381F0 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _0813824A
	.align 2, 0
_081381E0: .4byte 0xFFFF0000
_081381E4: .4byte 0x00000369
_081381E8: .4byte 0xFF00FFFF
_081381EC: .4byte 0x05000011
_081381F0: .4byte 0x06010000
_081381F4:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08138290 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08138294 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_0813824A:
	mov r4, sb
	ldr r0, [r4, #0x38]
	str r0, [r5, #0x3c]
	ldr r0, [r5, #0xc]
	ldr r1, _08138298 @ =0xFFFFCFFF
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r5, #0xc]
	ldrh r0, [r5, #0x18]
	ldr r2, _0813829C @ =0x0000F83F
	ands r2, r0
	movs r3, #0
	strh r2, [r5, #0x18]
	ldrh r0, [r4, #0x14]
	subs r0, #1
	movs r4, #0xf8
	lsls r4, r4, #3
	adds r1, r4, #0
	ands r0, r1
	orrs r0, r2
	strh r0, [r5, #0x18]
	adds r0, r5, #0
	adds r0, #0x54
	strb r3, [r0]
	mov r0, r8
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08138290: .4byte 0x05000011
_08138294: .4byte 0x06010000
_08138298: .4byte 0xFFFFCFFF
_0813829C: .4byte 0x0000F83F

	thumb_func_start sub_081382A0
sub_081382A0: @ 0x081382A0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r0, #0
	mov r8, r1
	ldr r0, _081382D8 @ =sub_08128980
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #0x54
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081382DC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _081382E4
	.align 2, 0
_081382D8: .4byte sub_08128980
_081382DC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_081382E4:
	adds r5, r0, #0
	ldr r0, _081382F8 @ =gLanguage
	ldrh r0, [r0]
	cmp r0, #5
	bhi _0813832A
	lsls r0, r0, #2
	ldr r1, _081382FC @ =_08138300
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081382F8: .4byte gLanguage
_081382FC: .4byte _08138300
_08138300: @ jump table
	.4byte _08138318 @ case 0
	.4byte _08138318 @ case 1
	.4byte _08138318 @ case 2
	.4byte _08138318 @ case 3
	.4byte _08138318 @ case 4
	.4byte _08138318 @ case 5
_08138318:
	ldr r0, _081383B8 @ =0xFFFF0000
	ands r4, r0
	ldr r0, _081383BC @ =0x0000036A
	orrs r4, r0
	ldr r0, _081383C0 @ =0xFF00FFFF
	ands r4, r0
	movs r0, #0xc0
	lsls r0, r0, #0xa
	orrs r4, r0
_0813832A:
	movs r7, #0
	str r7, [r5]
	adds r0, r5, #0
	adds r0, #0x50
	strh r7, [r0]
	adds r0, #2
	strh r7, [r0]
	str r6, [r5, #0x48]
	mov r1, r8
	str r1, [r5, #0x4c]
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _081383CC
	str r7, [sp, #4]
	adds r1, r5, #4
	ldr r2, _081383C4 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _081383C8 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r7, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r4, #0x10
	strb r4, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r3, [r5]
	ldr r2, [r5, #0x48]
	ldr r0, [r3, #0x28]
	adds r0, r2, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	ldr r0, [r3, #0x2c]
	adds r0, r1, r0
	asrs r0, r0, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	ldr r0, [r3, #0x28]
	adds r2, r2, r0
	str r2, [r5, #0x2c]
	ldr r0, [r3, #0x2c]
	adds r1, r1, r0
	str r1, [r5, #0x30]
	strh r7, [r5, #0x34]
	strh r7, [r5, #0x36]
	strh r4, [r5, #0x38]
	strh r7, [r5, #0x3a]
	str r7, [r5, #0x3c]
	str r7, [r5, #0x40]
	str r7, [r5, #0x44]
	b _08138422
	.align 2, 0
_081383B8: .4byte 0xFFFF0000
_081383BC: .4byte 0x0000036A
_081383C0: .4byte 0xFF00FFFF
_081383C4: .4byte 0x05000011
_081383C8: .4byte 0x06010000
_081383CC:
	str r6, [sp, #4]
	adds r1, r5, #4
	ldr r2, _08138430 @ =0x05000011
	add r0, sp, #4
	bl CpuSet
	ldr r0, _08138434 @ =0x06010000
	str r0, [r5, #4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r5, #0x18]
	strh r4, [r5, #0x10]
	lsrs r0, r4, #0x10
	strb r0, [r5, #0x1e]
	strh r6, [r5, #0x1a]
	movs r0, #0xff
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	adds r0, #0x20
	movs r3, #0x10
	strb r3, [r0]
	adds r1, r5, #0
	adds r1, #0x23
	movs r0, #5
	strb r0, [r1]
	ldr r2, [r5, #0x48]
	asrs r0, r2, #2
	strh r0, [r5, #0x14]
	ldr r1, [r5, #0x4c]
	asrs r0, r1, #2
	strh r0, [r5, #0x16]
	movs r0, #0xc0
	lsls r0, r0, #0xc
	str r0, [r5, #0xc]
	str r2, [r5, #0x2c]
	str r1, [r5, #0x30]
	strh r6, [r5, #0x34]
	strh r6, [r5, #0x36]
	strh r3, [r5, #0x38]
	strh r6, [r5, #0x3a]
	str r6, [r5, #0x3c]
	str r6, [r5, #0x40]
	str r6, [r5, #0x44]
_08138422:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08138430: .4byte 0x05000011
_08138434: .4byte 0x06010000

	thumb_func_start sub_08138438
sub_08138438: @ 0x08138438
	push {r4, r5, lr}
	ldr r0, _08138454 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138458
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138460
	.align 2, 0
_08138454: .4byte gCurTask
_08138458:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138460:
	adds r4, r0, #0
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0813850C
	ldr r2, _081384A0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081384A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081384A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	adds r3, r0, #0
	movs r0, #0x1e
	ands r0, r3
	ldr r2, _081384AC @ =gUnk_083852D0
	adds r1, r0, r2
	ldrb r5, [r1]
	strb r5, [r4]
	adds r0, #1
	adds r0, r0, r2
	ldrb r0, [r0]
	strb r0, [r4, #1]
	lsrs r0, r3, #3
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384B0
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	adds r0, r5, r0
	b _081384B8
	.align 2, 0
_081384A0: .4byte gRngVal
_081384A4: .4byte 0x00196225
_081384A8: .4byte 0x3C6EF35F
_081384AC: .4byte gUnk_083852D0
_081384B0:
	lsrs r0, r3, #2
	movs r1, #3
	ands r0, r1
	subs r0, r5, r0
_081384B8:
	strb r0, [r4]
	lsrs r0, r3, #5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _081384D2
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	adds r0, r0, r1
	strb r0, [r4, #1]
	b _081384DE
_081384D2:
	lsrs r0, r3, #4
	movs r1, #3
	ands r0, r1
	ldrb r1, [r4, #1]
	subs r1, r1, r0
	strb r1, [r4, #1]
_081384DE:
	movs r0, #0x1f
	ands r3, r0
	strb r3, [r4, #3]
	ldrb r0, [r4]
	lsls r0, r0, #2
	ldrb r1, [r4, #1]
	lsls r1, r1, #2
	bl sub_081382A0
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _0813850C
	ldr r0, _08138508 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	b _08138512
	.align 2, 0
_08138508: .4byte gCurTask
_0813850C:
	ldrb r0, [r4, #3]
	subs r0, #1
	strb r0, [r4, #3]
_08138512:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_08138518
sub_08138518: @ 0x08138518
	push {r4, lr}
	sub sp, #4
	ldr r2, _08138538 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813853C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08138544
	.align 2, 0
_08138538: .4byte gCurTask
_0813853C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08138544:
	adds r4, r0, #0
	ldrh r1, [r4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08138558
	ldr r0, [r2]
	bl TaskDestroy
	b _081385C6
_08138558:
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _081385C6
	ldrb r0, [r4, #2]
	subs r0, #1
	strb r0, [r4, #2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _081385C6
	ldr r0, _08138598 @ =sub_08138438
	str r1, [sp]
	movs r1, #4
	movs r2, #0x80
	lsls r2, r2, #1
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813859C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	b _081385A2
	.align 2, 0
_08138598: .4byte sub_08138438
_0813859C:
	ldrh r0, [r2, #6]
	movs r1, #0xc0
	lsls r1, r1, #0x12
_081385A2:
	adds r2, r0, r1
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	ldr r2, _081385D0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _081385D4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _081385D8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #0x4f
	ands r0, r1
	adds r0, #0x78
	strb r0, [r4, #2]
_081385C6:
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081385D0: .4byte gRngVal
_081385D4: .4byte 0x00196225
_081385D8: .4byte 0x3C6EF35F

	thumb_func_start sub_081385DC
sub_081385DC: @ 0x081385DC
	push {lr}
	sub sp, #4
	ldr r0, _0813860C @ =sub_08138438
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138610
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08138618
	.align 2, 0
_0813860C: .4byte sub_08138438
_08138610:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08138618:
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	movs r0, #2
	strb r0, [r2, #2]
	strb r1, [r2, #3]
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813862C
sub_0813862C: @ 0x0813862C
	push {lr}
	sub sp, #4
	ldr r0, _0813865C @ =sub_08138518
	movs r2, #0x80
	lsls r2, r2, #1
	movs r1, #0
	str r1, [sp]
	movs r1, #4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138660
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138668
	.align 2, 0
_0813865C: .4byte sub_08138518
_08138660:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138668:
	movs r0, #2
	strh r0, [r1]
	movs r0, #1
	strb r0, [r1, #2]
	adds r0, r2, #0
	add sp, #4
	pop {r1}
	bx r1

	thumb_func_start sub_08138678
sub_08138678: @ 0x08138678
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08138692
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _0813869A
_08138692:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_0813869A:
	ldrh r1, [r2]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_081386A8
sub_081386A8: @ 0x081386A8
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386C2
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386CA
_081386C2:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386CA:
	ldrh r1, [r2]
	ldr r0, _081386D8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_081386D8: .4byte 0x0000FFFD

	thumb_func_start sub_081386DC
sub_081386DC: @ 0x081386DC
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081386F6
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _081386FE
_081386F6:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_081386FE:
	ldrh r1, [r2]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0813870C
sub_0813870C: @ 0x0813870C
	push {lr}
	ldr r0, _08138728 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0813872C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08138734
	.align 2, 0
_08138728: .4byte gCurTask
_0813872C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08138734:
	adds r2, r1, #0
	adds r2, #0x54
	ldrb r0, [r2]
	cmp r0, #4
	bhi _0813874A
	ldr r0, [r1, #0x4c]
	subs r0, #4
	str r0, [r1, #0x4c]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0813874A:
	adds r0, r1, #0
	bl sub_0812A2C0
	pop {r0}
	bx r0

	thumb_func_start nullsub_129
nullsub_129: @ 0x08138754
	bx lr
	.align 2, 0

	thumb_func_start nullsub_130
nullsub_130: @ 0x08138758
	bx lr
	.align 2, 0

	thumb_func_start nullsub_131
nullsub_131: @ 0x0813875C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_132
nullsub_132: @ 0x08138760
	bx lr
	.align 2, 0

	thumb_func_start sub_08138764
sub_08138764: @ 0x08138764
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r1, #0
	cmp r1, r4
	bhs _081387A4
	movs r7, #0xf
_08138776:
	adds r2, r5, r1
	subs r0, r4, r1
	subs r0, #1
	lsls r0, r0, #2
	adds r3, r7, #0
	lsls r3, r0
	ands r3, r6
	asrs r3, r0
	adds r0, r3, #0
	adds r0, #0x30
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x39
	bls _0813879A
	adds r0, r3, #0
	adds r0, #0x37
	strb r0, [r2]
_0813879A:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, r4
	blo _08138776
_081387A4:
	adds r1, r5, r1
	movs r0, #0
	strb r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
