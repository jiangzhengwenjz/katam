	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_0815158C
sub_0815158C: @ 0x0815158C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _081515E4 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _081515E8 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _081515EC @ =gUnk_03002440
	movs r3, #0
	str r3, [r2]
	ldr r0, _081515F0 @ =gUnk_03003670
	str r3, [r0]
	ldr r1, _081515F4 @ =gUnk_03002E94
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _081515F8 @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _081515D0
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
_081515D0:
	ldr r0, _081515FC @ =gUnk_03002E90
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _08151600
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	b _08151602
	.align 2, 0
_081515E4: .4byte 0x04000208
_081515E8: .4byte 0x00004014
_081515EC: .4byte gUnk_03002440
_081515F0: .4byte gUnk_03003670
_081515F4: .4byte gUnk_03002E94
_081515F8: .4byte 0x04000134
_081515FC: .4byte gUnk_03002E90
_08151600:
	str r3, [r2]
_08151602:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08151978 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0815197C @ =0x85006000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r4, _08151980 @ =gUnk_030035D4
	ldr r5, _08151984 @ =gUnk_03003A04
	ldr r6, _08151988 @ =gUnk_03003790
	ldr r7, _0815198C @ =gUnk_03006078
	mov r8, r7
	ldr r3, _08151990 @ =gUnk_030039A4
	mov sb, r3
	ldr r7, _08151994 @ =gUnk_03002E80
	mov ip, r7
	ldr r3, _08151998 @ =gUnk_030023F4
	mov sl, r3
	add r3, sp, #4
	cmp r0, #0
	bge _08151642
_0815163A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0815163A
_08151642:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08151978 @ =0x040000D4
	mov r7, sp
	str r7, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0815199C @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _0815166A
_08151662:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08151662
_0815166A:
	movs r0, #0
	str r0, [sp]
	ldr r1, _08151978 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _0815199C @ =0x85000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08151692
_0815168A:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _0815168A
_08151692:
	movs r0, #0xff
	strb r0, [r4]
	movs r0, #0
	strb r0, [r5]
	strb r0, [r6]
	ldr r1, _081519A0 @ =gUnk_030068B0
	strb r0, [r1]
	mov r2, r8
	strb r0, [r2]
	mov r7, sb
	strb r0, [r7]
	movs r0, #0
	str r0, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	mov r2, ip
	str r2, [r0, #4]
	ldr r1, _081519A4 @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _081516D0
_081516C8:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _081516C8
_081516D0:
	movs r0, #0
	ldr r7, _081519A8 @ =gUnk_030060A0
	str r0, [r7]
	str r0, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _081519AC @ =gUnk_03003680
	str r2, [r0, #4]
	ldr r1, _081519A4 @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _081516FC
_081516F4:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _081516F4
_081516FC:
	movs r1, #0
	mov r7, sl
	strh r1, [r7]
	strh r1, [r7, #2]
	movs r0, #0x80
	ldr r2, _081519B0 @ =gUnk_03003690
	strh r0, [r2]
	str r1, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r7, sp
	str r7, [r0]
	ldr r1, _081519B4 @ =gUnk_03002EC0
	str r1, [r0, #4]
	ldr r1, _081519B8 @ =0x850000C0
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08151730
_08151728:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08151728
_08151730:
	movs r0, #0
	ldr r2, _081519BC @ =gUnk_030024F0
	strb r0, [r2]
	ldr r7, _081519C0 @ =gUnk_03003A00
	strb r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r3]
	ldr r0, _08151978 @ =0x040000D4
	str r3, [r0]
	ldr r2, _081519C4 @ =gUnk_030060B0
	str r2, [r0, #4]
	ldr r1, _081519C8 @ =0x81000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08151764
_0815175C:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0815175C
_08151764:
	movs r7, #0x80
	lsls r7, r7, #2
	adds r0, r7, #0
	strh r0, [r3]
	ldr r0, _08151978 @ =0x040000D4
	str r3, [r0]
	ldr r1, _081519CC @ =gUnk_030031C0
	str r1, [r0, #4]
	ldr r1, _081519C8 @ =0x81000200
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0815178E
_08151786:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08151786
_0815178E:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r3, _081519D0 @ =gUnk_03002450
	str r3, [r0, #4]
	ldr r1, _081519D4 @ =0x85000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _081517B8
_081517B0:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _081517B0
_081517B8:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r7, sp
	str r7, [r0]
	ldr r1, _081519D8 @ =gUnk_03006080
	str r1, [r0, #4]
	ldr r1, _081519D4 @ =0x85000008
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _081517E2
_081517DA:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _081517DA
_081517E2:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r3, _081519DC @ =gUnk_03002C60
	str r3, [r0, #4]
	ldr r1, _081519E0 @ =0x85000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _0815180A
_08151802:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08151802
_0815180A:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r7, sp
	str r7, [r0]
	ldr r1, _081519E4 @ =gUnk_030037A0
	str r1, [r0, #4]
	ldr r1, _081519E0 @ =0x85000080
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08151832
_0815182A:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0815182A
_08151832:
	bl sub_08158870
	ldr r0, _081519E8 @ =gUnk_03002520
	movs r3, #0
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	strh r2, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r2, [r0, #6]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	strh r2, [r0, #0x10]
	strh r1, [r0, #0x12]
	strh r1, [r0, #0x14]
	strh r2, [r0, #0x16]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	ldr r0, _081519EC @ =gUnk_03002514
	strb r3, [r0]
	ldr r0, _081519F0 @ =gUnk_03002544
	strh r1, [r0]
	ldr r0, _081519F4 @ =gUnk_030023F0
	strh r2, [r0]
	ldr r0, _081519F8 @ =gUnk_030068B4
	strh r2, [r0]
	ldr r0, _081519FC @ =gUnk_030039AC
	strh r1, [r0]
	ldr r0, _08151A00 @ =gUnk_03006074
	strh r1, [r0]
	ldr r0, _08151A04 @ =gUnk_0300254C
	strh r1, [r0]
	ldr r0, _08151A08 @ =gUnk_0300367C
	strh r1, [r0]
	ldr r0, _08151A0C @ =gUnk_030068B8
	strh r2, [r0]
	ldr r0, _08151A10 @ =gUnk_03002E70
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _08151A14 @ =gUnk_030024E8
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08151A18 @ =gUnk_030068D8
	str r1, [r0]
	movs r2, #0
	ldr r6, _08151A1C @ =gUnk_030035E0
	movs r5, #0x14
	ldr r4, _08151A20 @ =gUnk_030036A0
	movs r3, #8
_081518A0:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, r6
	strb r5, [r1]
	adds r1, r0, r4
	strb r3, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _081518A0
	ldr r0, _08151A24 @ =gUnk_03006CB0
	movs r1, #0
	strb r1, [r0, #8]
	ldr r0, _08151A28 @ =gUnk_03002480
	strh r1, [r0]
	ldr r0, _08151A2C @ =gUnk_030068D0
	str r1, [r0]
	ldr r0, _08151A30 @ =gUnk_03002E64
	str r1, [r0]
	movs r2, #0
	ldr r5, _08151A34 @ =gUnk_03002760
	ldr r6, _08151A38 @ =gUnk_03002484
	ldr r7, _08151A3C @ =gUnk_03002EAC
	ldr r3, _08151A40 @ =gUnk_030036C8
	mov ip, r3
	ldr r0, _08151A44 @ =gUnk_030039A0
	mov r8, r0
	ldr r1, _08151A48 @ =gUnk_0300248C
	mov sb, r1
	ldr r3, _08151A4C @ =gUnk_030024E4
	mov sl, r3
	ldr r4, _08151A50 @ =gIntrTable
	ldr r3, _08151A54 @ =gIntrTableTemplate
_081518E6:
	lsls r1, r2, #0x10
	asrs r1, r1, #0x10
	lsls r0, r1, #2
	adds r2, r0, r4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r2]
	adds r1, #1
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	asrs r1, r1, #0x10
	cmp r1, #0xe
	ble _081518E6
	movs r0, #0
	str r0, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08151A58 @ =0x85000140
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08151926
_0815191E:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _0815191E
_08151926:
	str r5, [r6]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r5, r2
	str r0, [r7]
	movs r0, #0
	mov r3, ip
	str r0, [r3]
	mov r7, r8
	strb r0, [r7]
	mov r1, sb
	strb r0, [r1]
	mov r2, sl
	strb r0, [r2]
	str r0, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r3, sp
	str r3, [r0]
	ldr r7, _08151A5C @ =gUnk_030035C0
	str r7, [r0, #4]
	ldr r1, _081519A4 @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08151968
_08151960:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08151960
_08151968:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08151978 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08151A60 @ =gUnk_03003A10
	str r2, [r0, #4]
	b _08151A64
	.align 2, 0
_08151978: .4byte 0x040000D4
_0815197C: .4byte 0x85006000
_08151980: .4byte gUnk_030035D4
_08151984: .4byte gUnk_03003A04
_08151988: .4byte gUnk_03003790
_0815198C: .4byte gUnk_03006078
_08151990: .4byte gUnk_030039A4
_08151994: .4byte gUnk_03002E80
_08151998: .4byte gUnk_030023F4
_0815199C: .4byte 0x85000100
_081519A0: .4byte gUnk_030068B0
_081519A4: .4byte 0x85000004
_081519A8: .4byte gUnk_030060A0
_081519AC: .4byte gUnk_03003680
_081519B0: .4byte gUnk_03003690
_081519B4: .4byte gUnk_03002EC0
_081519B8: .4byte 0x850000C0
_081519BC: .4byte gUnk_030024F0
_081519C0: .4byte gUnk_03003A00
_081519C4: .4byte gUnk_030060B0
_081519C8: .4byte 0x81000200
_081519CC: .4byte gUnk_030031C0
_081519D0: .4byte gUnk_03002450
_081519D4: .4byte 0x85000008
_081519D8: .4byte gUnk_03006080
_081519DC: .4byte gUnk_03002C60
_081519E0: .4byte 0x85000080
_081519E4: .4byte gUnk_030037A0
_081519E8: .4byte gUnk_03002520
_081519EC: .4byte gUnk_03002514
_081519F0: .4byte gUnk_03002544
_081519F4: .4byte gUnk_030023F0
_081519F8: .4byte gUnk_030068B4
_081519FC: .4byte gUnk_030039AC
_08151A00: .4byte gUnk_03006074
_08151A04: .4byte gUnk_0300254C
_08151A08: .4byte gUnk_0300367C
_08151A0C: .4byte gUnk_030068B8
_08151A10: .4byte gUnk_03002E70
_08151A14: .4byte gUnk_030024E8
_08151A18: .4byte gUnk_030068D8
_08151A1C: .4byte gUnk_030035E0
_08151A20: .4byte gUnk_030036A0
_08151A24: .4byte gUnk_03006CB0
_08151A28: .4byte gUnk_03002480
_08151A2C: .4byte gUnk_030068D0
_08151A30: .4byte gUnk_03002E64
_08151A34: .4byte gUnk_03002760
_08151A38: .4byte gUnk_03002484
_08151A3C: .4byte gUnk_03002EAC
_08151A40: .4byte gUnk_030036C8
_08151A44: .4byte gUnk_030039A0
_08151A48: .4byte gUnk_0300248C
_08151A4C: .4byte gUnk_030024E4
_08151A50: .4byte gIntrTable
_08151A54: .4byte gIntrTableTemplate
_08151A58: .4byte 0x85000140
_08151A5C: .4byte gUnk_030035C0
_08151A60: .4byte gUnk_03003A10
_08151A64:
	ldr r1, _08151BDC @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08151A7E
_08151A76:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08151A76
_08151A7E:
	movs r0, #0
	ldr r3, _08151BE0 @ =gUnk_03006070
	strb r0, [r3]
	ldr r7, _08151BE4 @ =gUnk_03002548
	strb r0, [r7]
	movs r0, #0
	str r0, [sp]
	ldr r0, _08151BE8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r2, _08151BEC @ =gUnk_03002470
	str r2, [r0, #4]
	ldr r1, _08151BDC @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08151AB0
_08151AA8:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08151AA8
_08151AB0:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08151BE8 @ =0x040000D4
	mov r3, sp
	str r3, [r0]
	ldr r7, _08151BF0 @ =gUnk_030068C0
	str r7, [r0, #4]
	ldr r1, _08151BDC @ =0x85000004
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08151AD8
_08151AD0:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08151AD0
_08151AD8:
	bl m4aSoundInit
	ldr r0, _08151BF4 @ =0x0095FA00
	bl m4aSoundMode
	bl m4aSoundMain
	ldr r1, _08151BF8 @ =gUnk_030068D4
	movs r0, #1
	strb r0, [r1]
	bl sub_08152A18
	bl sub_08159074
	ldr r1, _08151BFC @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08151C00 @ =gUnk_03002540
	ldr r0, _08151C04 @ =0x06010000
	str r0, [r1]
	bl sub_08157168
	ldr r1, _08151BE8 @ =0x040000D4
	ldr r0, _08151C08 @ =IntrMain
	str r0, [r1]
	ldr r0, _08151C0C @ =gUnk_030017F0
	str r0, [r1, #4]
	ldr r0, _08151C10 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08151B2A
_08151B22:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08151B22
_08151B2A:
	ldr r1, _08151C14 @ =INTR_VECTOR
	ldr r0, _08151C0C @ =gUnk_030017F0
	str r0, [r1]
	ldr r2, _08151C18 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08151C1C @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _08151C20 @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _08151B5A
	ldr r0, _08151C24 @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _08151C28 @ =0x454B3842
	cmp r1, r0
	bne _08151B5A
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08151B5A:
	ldr r1, _08151C2C @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08151BE8 @ =0x040000D4
	mov r7, sp
	str r7, [r1]
	ldr r0, _08151C30 @ =gUnk_030036B0
	str r0, [r1, #4]
	ldr r0, _08151C34 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r3, _08151C38 @ =gUnk_03002490
	ldr r5, _08151C3C @ =gUnk_03002554
	ldr r6, _08151C40 @ =gUnk_03002558
	cmp r0, #0
	bge _08151B8C
_08151B84:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08151B84
_08151B8C:
	movs r0, #0
	str r0, [sp]
	ldr r0, _08151BE8 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r3, [r0, #4]
	ldr r1, _08151C44 @ =0x85000014
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	cmp r0, #0
	bge _08151BB2
_08151BAA:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _08151BAA
_08151BB2:
	movs r4, #0
	str r4, [r5]
	strb r4, [r6]
	movs r0, #0
	bl MultiSioInit
	ldr r0, _08151C48 @ =gUnk_0300607C
	strb r4, [r0]
	ldr r0, _08151C4C @ =gUnk_030024E0
	str r4, [r0]
	ldr r0, _08151C50 @ =gUnk_03002550
	strb r4, [r0]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08151BDC: .4byte 0x85000004
_08151BE0: .4byte gUnk_03006070
_08151BE4: .4byte gUnk_03002548
_08151BE8: .4byte 0x040000D4
_08151BEC: .4byte gUnk_03002470
_08151BF0: .4byte gUnk_030068C0
_08151BF4: .4byte 0x0095FA00
_08151BF8: .4byte gUnk_030068D4
_08151BFC: .4byte gUnk_03002488
_08151C00: .4byte gUnk_03002540
_08151C04: .4byte 0x06010000
_08151C08: .4byte IntrMain
_08151C0C: .4byte gUnk_030017F0
_08151C10: .4byte 0x84000080
_08151C14: .4byte INTR_VECTOR
_08151C18: .4byte 0x04000200
_08151C1C: .4byte 0x04000004
_08151C20: .4byte 0x080000B2
_08151C24: .4byte 0x080000AC
_08151C28: .4byte 0x454B3842
_08151C2C: .4byte 0x04000208
_08151C30: .4byte gUnk_030036B0
_08151C34: .4byte 0x85000005
_08151C38: .4byte gUnk_03002490
_08151C3C: .4byte gUnk_03002554
_08151C40: .4byte gUnk_03002558
_08151C44: .4byte 0x85000014
_08151C48: .4byte gUnk_0300607C
_08151C4C: .4byte gUnk_030024E0
_08151C50: .4byte gUnk_03002550
