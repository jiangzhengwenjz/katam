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
	ldr r4, _08151A50 @ =gUnk_030017B0
	ldr r3, _08151A54 @ =gUnk_08D5FD9C
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
_08151A50: .4byte gUnk_030017B0
_08151A54: .4byte gUnk_08D5FD9C
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
	ldr r1, _08151C14 @ =gUnk_03007FFC
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
	bl sub_08157210
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
_08151C14: .4byte gUnk_03007FFC
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

	thumb_func_start sub_08151C54
sub_08151C54: @ 0x08151C54
	push {r4, r5, lr}
	ldr r5, _08151CB0 @ =gUnk_03002440
_08151C58:
	ldr r1, _08151CB4 @ =gUnk_030068D4
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r5]
	ldr r3, _08151CB8 @ =0xFEFFFFFF
	ands r1, r3
	str r1, [r5]
	ldr r2, _08151CBC @ =gUnk_03003670
	ldr r0, [r2]
	ands r0, r3
	str r0, [r2]
	movs r0, #0x80
	lsls r0, r0, #0xb
	ands r1, r0
	cmp r1, #0
	beq _08151C7C
	bl sub_08152790
_08151C7C:
	ldr r0, _08151CC0 @ =gUnk_030035D4
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08151D06
	bl sub_08152694
	ldr r0, _08151CC4 @ =gUnk_03002558
	ldrb r0, [r0]
	cmp r0, #0
	beq _08151CD4
	bl sub_08030E44
	ldr r0, _08151CC8 @ =gUnk_030036B0
	ldr r1, _08151CCC @ =gUnk_03002490
	movs r2, #0
	bl sub_08157308
	ldr r1, _08151CD0 @ =gUnk_03002554
	str r0, [r1]
	bl sub_08030FE0
	cmp r0, #0
	bne _08151CE8
	bl sub_08032E98
	b _08151CE8
	.align 2, 0
_08151CB0: .4byte gUnk_03002440
_08151CB4: .4byte gUnk_030068D4
_08151CB8: .4byte 0xFEFFFFFF
_08151CBC: .4byte gUnk_03003670
_08151CC0: .4byte gUnk_030035D4
_08151CC4: .4byte gUnk_03002558
_08151CC8: .4byte gUnk_030036B0
_08151CCC: .4byte gUnk_03002490
_08151CD0: .4byte gUnk_03002554
_08151CD4:
	ldr r0, [r5]
	movs r1, #0xc0
	lsls r1, r1, #0xd
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xc
	cmp r0, r1
	bne _08151CE8
	bl nullsub_2
_08151CE8:
	ldr r0, _08151CFC @ =gUnk_020382D0
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08151D00
	bl sub_08152CF4
	b _08151D06
	.align 2, 0
_08151CFC: .4byte gUnk_020382D0
_08151D00:
	ldr r1, _08151D44 @ =gUnk_030035D4
	movs r0, #0
	strb r0, [r1]
_08151D06:
	ldr r4, _08151D48 @ =gUnk_03002440
	ldr r1, [r4]
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r1, r0
	str r1, [r4]
	ldr r0, _08151D4C @ =gUnk_03003670
	str r1, [r0]
	bl VBlankIntrWait
	ldr r1, _08151D50 @ =gUnk_03002514
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08151D54
	bl sub_08152178
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08151D76
	bl sub_08152968
	b _08151D68
	.align 2, 0
_08151D44: .4byte gUnk_030035D4
_08151D48: .4byte gUnk_03002440
_08151D4C: .4byte gUnk_03003670
_08151D50: .4byte gUnk_03002514
_08151D54:
	bl sub_08151DC4
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	bne _08151D76
	bl sub_08152098
_08151D68:
	ldr r1, _08151D84 @ =gUnk_03002440
	ldr r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08151D88
_08151D76:
	ldr r0, [r5]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r5]
	ldr r1, _08151D84 @ =gUnk_03002440
	b _08151D8E
	.align 2, 0
_08151D84: .4byte gUnk_03002440
_08151D88:
	ldr r0, _08151DBC @ =0xFFFFF7FF
	ands r2, r0
	str r2, [r1]
_08151D8E:
	ldr r0, [r1]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08151D9E
	bl m4aSoundMain
_08151D9E:
	ldr r2, _08151DC0 @ =0x04000004
	ldrh r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08151DAC
	b _08151C58
_08151DAC:
	movs r3, #1
_08151DAE:
	ldrh r1, [r2]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	bne _08151DAE
	b _08151C58
	.align 2, 0
_08151DBC: .4byte 0xFFFFF7FF
_08151DC0: .4byte 0x04000004

	thumb_func_start sub_08151DC4
sub_08151DC4: @ 0x08151DC4
	push {r4, r5, r6, lr}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08151EA4 @ =gUnk_03003690
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _08151EA8 @ =0x040000D4
	ldr r0, _08151EAC @ =gUnk_03002EB0
	str r0, [r3]
	ldr r0, _08151EB0 @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _08151EB4 @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08151EB8 @ =gUnk_03002440
	ldr r2, [r1]
	movs r5, #1
	adds r0, r2, #0
	ands r0, r5
	adds r6, r1, #0
	cmp r0, #0
	beq _08151E08
	ldr r0, _08151EBC @ =gUnk_030037A0
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _08151EC0 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r2, r5
	str r2, [r6]
_08151E08:
	ldr r0, [r6]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _08151E26
	ldr r0, _08151EC4 @ =gUnk_03002C60
	str r0, [r3]
	ldr r0, _08151EC8 @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _08151EC0 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r6]
	eors r0, r1
	str r0, [r6]
_08151E26:
	ldr r0, _08151ECC @ =gUnk_03002E70
	str r0, [r3]
	ldr r0, _08151ED0 @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _08151ED4 @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08151ED8 @ =gUnk_030024E8
	str r0, [r3]
	ldr r0, _08151EDC @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _08151EE0 @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08151EE4 @ =gUnk_03003680
	str r0, [r3]
	ldr r0, _08151EE8 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _08151EEC @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08151EF0 @ =gUnk_03002520
	str r0, [r3]
	ldr r0, _08151EF4 @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _08151EF8 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, [r6]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _08151F14
	ldr r2, _08151EFC @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r1, _08151F00 @ =gUnk_03003A10
	str r1, [r3, #4]
	ldr r0, _08151F04 @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r2, _08151F08 @ =gUnk_0300248C
	ldrb r0, [r2]
	cmp r0, #0
	beq _08151E9C
	ldr r0, _08151F0C @ =gUnk_030035C0
	str r0, [r3]
	str r1, [r3, #4]
	ldrb r0, [r2]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08151E9C:
	ldr r1, _08151F10 @ =gUnk_030024E4
	ldrb r0, [r2]
	strb r0, [r1]
	b _08151F22
	.align 2, 0
_08151EA4: .4byte gUnk_03003690
_08151EA8: .4byte 0x040000D4
_08151EAC: .4byte gUnk_03002EB0
_08151EB0: .4byte 0x04000008
_08151EB4: .4byte 0x84000002
_08151EB8: .4byte gUnk_03002440
_08151EBC: .4byte gUnk_030037A0
_08151EC0: .4byte 0x84000080
_08151EC4: .4byte gUnk_03002C60
_08151EC8: .4byte 0x05000200
_08151ECC: .4byte gUnk_03002E70
_08151ED0: .4byte 0x04000040
_08151ED4: .4byte 0x84000003
_08151ED8: .4byte gUnk_030024E8
_08151EDC: .4byte 0x04000050
_08151EE0: .4byte 0x80000003
_08151EE4: .4byte gUnk_03003680
_08151EE8: .4byte 0x04000010
_08151EEC: .4byte 0x80000008
_08151EF0: .4byte gUnk_03002520
_08151EF4: .4byte 0x04000020
_08151EF8: .4byte 0x84000008
_08151EFC: .4byte 0x04000200
_08151F00: .4byte gUnk_03003A10
_08151F04: .4byte 0x85000004
_08151F08: .4byte gUnk_0300248C
_08151F0C: .4byte gUnk_030035C0
_08151F10: .4byte gUnk_030024E4
_08151F14:
	ldr r2, _08152000 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08152004 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08152008 @ =gUnk_030024E4
	strb r4, [r0]
_08151F22:
	ldr r0, [r6]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08151F4A
	ldr r2, _0815200C @ =0x040000D4
	ldr r0, _08152010 @ =gUnk_03002484
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08152014 @ =gUnk_030036C8
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08152018 @ =gUnk_030039A0
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08151F4A:
	ldr r0, _0815201C @ =gUnk_030035D4
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08151F98
	bl sub_08156E1C
	ldr r0, _0815200C @ =0x040000D4
	ldr r3, _08152020 @ =gUnk_030060B0
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _08152024 @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08152028 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _0815202C @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08152030 @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08151F98:
	movs r4, #0
	ldr r0, _08152034 @ =gUnk_03002548
	ldrb r1, [r0]
	cmp r4, r1
	bhs _08151FBC
	ldr r6, _08152038 @ =gUnk_030068C0
	adds r5, r0, #0
_08151FA6:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _08151FA6
_08151FBC:
	ldr r0, _0815203C @ =gUnk_03002440
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0815204C
	movs r0, #0
	str r0, [sp]
	ldr r2, _0815200C @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	ldr r1, _08152038 @ =gUnk_030068C0
	str r1, [r2, #4]
	ldr r0, _08152040 @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r3, _08152044 @ =gUnk_03006070
	ldrb r0, [r3]
	cmp r0, #0
	beq _08151FF6
	ldr r0, _08152048 @ =gUnk_03002470
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r0, [r3]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08151FF6:
	ldr r1, _08152034 @ =gUnk_03002548
	ldrb r0, [r3]
	strb r0, [r1]
	b _08152050
	.align 2, 0
_08152000: .4byte 0x04000200
_08152004: .4byte 0x0000FFFD
_08152008: .4byte gUnk_030024E4
_0815200C: .4byte 0x040000D4
_08152010: .4byte gUnk_03002484
_08152014: .4byte gUnk_030036C8
_08152018: .4byte gUnk_030039A0
_0815201C: .4byte gUnk_030035D4
_08152020: .4byte gUnk_030060B0
_08152024: .4byte 0x80000080
_08152028: .4byte 0x07000100
_0815202C: .4byte 0x07000200
_08152030: .4byte 0x07000300
_08152034: .4byte gUnk_03002548
_08152038: .4byte gUnk_030068C0
_0815203C: .4byte gUnk_03002440
_08152040: .4byte 0x85000004
_08152044: .4byte gUnk_03006070
_08152048: .4byte gUnk_03002470
_0815204C:
	ldr r0, _08152064 @ =gUnk_03002548
	strb r1, [r0]
_08152050:
	ldr r1, _08152068 @ =gUnk_030035D4
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _0815205A
	movs r4, #0
_0815205A:
	movs r0, #0xff
	strb r0, [r1]
	ldr r5, _0815206C @ =gUnk_08D5FDD4
	b _08152076
	.align 2, 0
_08152064: .4byte gUnk_03002548
_08152068: .4byte gUnk_030035D4
_0815206C: .4byte gUnk_08D5FDD4
_08152070:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08152076:
	cmp r4, #3
	bhi _0815208C
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _08152070
	ldr r0, _08152094 @ =gUnk_030035D4
	strb r4, [r0]
_0815208C:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08152094: .4byte gUnk_030035D4

	thumb_func_start sub_08152098
sub_08152098: @ 0x08152098
	push {r4, lr}
	sub sp, #4
	ldr r1, _081520D0 @ =gUnk_0300248C
	movs r0, #0
	strb r0, [r1]
	ldr r2, _081520D4 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r1, #0x20
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _081520F0
	ldr r1, _081520D8 @ =gUnk_03002484
	ldr r0, [r1]
	ldr r2, _081520DC @ =gUnk_03002760
	cmp r0, r2
	bne _081520E4
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _081520E0 @ =gUnk_03002EAC
	str r2, [r0]
	b _081520F0
	.align 2, 0
_081520D0: .4byte gUnk_0300248C
_081520D4: .4byte gUnk_03002440
_081520D8: .4byte gUnk_03002484
_081520DC: .4byte gUnk_03002760
_081520E0: .4byte gUnk_03002EAC
_081520E4:
	str r2, [r1]
	ldr r1, _08152164 @ =gUnk_03002EAC
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
_081520F0:
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _08152168 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _0815216C @ =gUnk_030060B0
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _08152170 @ =0x81000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	add r1, ip
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r1, #0x80
	lsls r1, r1, #2
	add r1, ip
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	movs r1, #0xc0
	lsls r1, r1, #2
	add r1, ip
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r1, _08152174 @ =gUnk_03006070
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08152164: .4byte gUnk_03002EAC
_08152168: .4byte 0x040000D4
_0815216C: .4byte gUnk_030060B0
_08152170: .4byte 0x81000080
_08152174: .4byte gUnk_03006070

	thumb_func_start sub_08152178
sub_08152178: @ 0x08152178
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08152230 @ =gUnk_03003690
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08152234 @ =gUnk_03002EB0
	ldr r7, _08152238 @ =0x04000008
	ldr r2, _0815223C @ =0x04000002
	adds r1, r7, #0
	bl CpuSet
	ldr r5, _08152240 @ =gUnk_03002440
	ldr r0, [r5]
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	beq _081521B2
	ldr r0, _08152244 @ =gUnk_030037A0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, [r5]
	eors r0, r6
	str r0, [r5]
_081521B2:
	ldr r0, [r5]
	movs r6, #2
	ands r0, r6
	cmp r0, #0
	beq _081521CC
	ldr r0, _08152248 @ =gUnk_03002C60
	ldr r1, _0815224C @ =0x05000200
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, [r5]
	eors r0, r6
	str r0, [r5]
_081521CC:
	ldr r0, _08152250 @ =gUnk_03002E70
	ldr r1, _08152254 @ =0x04000040
	ldr r2, _08152258 @ =0x04000003
	bl CpuSet
	ldr r0, _0815225C @ =gUnk_030024E8
	ldr r1, _08152260 @ =0x04000050
	movs r2, #3
	bl CpuSet
	ldr r0, _08152264 @ =gUnk_03003680
	ldr r1, _08152268 @ =0x04000010
	movs r2, #8
	bl CpuSet
	ldr r0, _0815226C @ =gUnk_03002520
	ldr r1, _08152270 @ =0x04000020
	adds r2, r7, #0
	bl CpuSet
	ldr r0, [r5]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _0815228C
	ldr r2, _08152274 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	ldr r5, _08152278 @ =gUnk_03003A10
	ldr r2, _0815227C @ =0x01000004
	mov r0, sp
	adds r1, r5, #0
	bl CpuFastSet
	ldr r4, _08152280 @ =gUnk_0300248C
	ldrb r0, [r4]
	cmp r0, #0
	beq _08152228
	ldr r0, _08152284 @ =gUnk_030035C0
	ldrb r2, [r4]
	adds r1, r5, #0
	bl CpuFastSet
_08152228:
	ldr r1, _08152288 @ =gUnk_030024E4
	ldrb r0, [r4]
	strb r0, [r1]
	b _0815229A
	.align 2, 0
_08152230: .4byte gUnk_03003690
_08152234: .4byte gUnk_03002EB0
_08152238: .4byte 0x04000008
_0815223C: .4byte 0x04000002
_08152240: .4byte gUnk_03002440
_08152244: .4byte gUnk_030037A0
_08152248: .4byte gUnk_03002C60
_0815224C: .4byte 0x05000200
_08152250: .4byte gUnk_03002E70
_08152254: .4byte 0x04000040
_08152258: .4byte 0x04000003
_0815225C: .4byte gUnk_030024E8
_08152260: .4byte 0x04000050
_08152264: .4byte gUnk_03003680
_08152268: .4byte 0x04000010
_0815226C: .4byte gUnk_03002520
_08152270: .4byte 0x04000020
_08152274: .4byte 0x04000200
_08152278: .4byte gUnk_03003A10
_0815227C: .4byte 0x01000004
_08152280: .4byte gUnk_0300248C
_08152284: .4byte gUnk_030035C0
_08152288: .4byte gUnk_030024E4
_0815228C:
	ldr r2, _08152310 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08152314 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08152318 @ =gUnk_030024E4
	strb r4, [r0]
_0815229A:
	ldr r0, _0815231C @ =gUnk_030035D4
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _081522B4
	bl sub_08156E1C
	ldr r0, _08152320 @ =gUnk_030060B0
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0x80
	lsls r2, r2, #1
	bl CpuFastSet
_081522B4:
	movs r4, #0
	ldr r0, _08152324 @ =gUnk_03002548
	ldrb r1, [r0]
	cmp r4, r1
	bhs _081522D8
	ldr r6, _08152328 @ =gUnk_030068C0
	adds r5, r0, #0
_081522C2:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldrb r0, [r5]
	cmp r4, r0
	blo _081522C2
_081522D8:
	ldr r0, _0815232C @ =gUnk_03002440
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	cmp r1, #0
	beq _0815233C
	movs r0, #0
	str r0, [sp, #4]
	add r0, sp, #4
	ldr r5, _08152328 @ =gUnk_030068C0
	ldr r2, _08152330 @ =0x01000004
	adds r1, r5, #0
	bl CpuFastSet
	ldr r4, _08152334 @ =gUnk_03006070
	ldrb r0, [r4]
	cmp r0, #0
	beq _08152306
	ldr r0, _08152338 @ =gUnk_03002470
	ldrb r2, [r4]
	adds r1, r5, #0
	bl CpuFastSet
_08152306:
	ldr r1, _08152324 @ =gUnk_03002548
	ldrb r0, [r4]
	strb r0, [r1]
	b _08152340
	.align 2, 0
_08152310: .4byte 0x04000200
_08152314: .4byte 0x0000FFFD
_08152318: .4byte gUnk_030024E4
_0815231C: .4byte gUnk_030035D4
_08152320: .4byte gUnk_030060B0
_08152324: .4byte gUnk_03002548
_08152328: .4byte gUnk_030068C0
_0815232C: .4byte gUnk_03002440
_08152330: .4byte 0x01000004
_08152334: .4byte gUnk_03006070
_08152338: .4byte gUnk_03002470
_0815233C:
	ldr r0, _08152354 @ =gUnk_03002548
	strb r1, [r0]
_08152340:
	ldr r1, _08152358 @ =gUnk_030035D4
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _0815234A
	movs r4, #0
_0815234A:
	movs r0, #0xff
	strb r0, [r1]
	ldr r5, _0815235C @ =gUnk_08D5FDD4
	b _08152366
	.align 2, 0
_08152354: .4byte gUnk_03002548
_08152358: .4byte gUnk_030035D4
_0815235C: .4byte gUnk_08D5FDD4
_08152360:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08152366:
	cmp r4, #3
	bhi _0815237C
	lsls r0, r4, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _08152360
	ldr r0, _08152384 @ =gUnk_030035D4
	strb r4, [r0]
_0815237C:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08152384: .4byte gUnk_030035D4

	thumb_func_start sub_08152388
sub_08152388: @ 0x08152388
	push {r4, r5, r6, r7, lr}
	ldr r4, _08152418 @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _0815241C @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _08152420 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl m4aSoundVSync
	ldr r1, _08152424 @ =gUnk_03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08152428 @ =gUnk_030068D4
	strb r2, [r0]
	ldr r5, _0815242C @ =gUnk_03003670
	ldr r3, [r5]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _08152448
	ldr r2, _08152430 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r2, r4, #0
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	adds r6, r5, #0
	ldr r4, _08152434 @ =gUnk_03002484
	ldr r5, _08152438 @ =gUnk_030036C8
	ldr r3, _0815243C @ =gUnk_030039A0
	ldr r7, _08152440 @ =gUnk_03002558
	cmp r0, #0
	bge _081523E4
_081523DC:
	ldr r0, [r2, #8]
	ands r0, r1
	cmp r0, #0
	bne _081523DC
_081523E4:
	ldr r2, _08152418 @ =0x040000B0
	ldr r0, [r4]
	str r0, [r2]
	ldr r0, [r5]
	str r0, [r2, #4]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r1, [r3]
	ldr r0, [r4]
	adds r0, r0, r1
	str r0, [r2]
	ldr r0, [r5]
	str r0, [r2, #4]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	ldr r1, _08152444 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08152460
	.align 2, 0
_08152418: .4byte 0x040000B0
_0815241C: .4byte 0x0000C5FF
_08152420: .4byte 0x00007FFF
_08152424: .4byte gUnk_03007FF8
_08152428: .4byte gUnk_030068D4
_0815242C: .4byte gUnk_03003670
_08152430: .4byte 0x04000200
_08152434: .4byte gUnk_03002484
_08152438: .4byte gUnk_030036C8
_0815243C: .4byte gUnk_030039A0
_08152440: .4byte gUnk_03002558
_08152444: .4byte 0xA2600000
_08152448:
	ldr r4, _081524A4 @ =gUnk_030036C8
	ldr r0, [r4]
	adds r6, r5, #0
	ldr r7, _081524A8 @ =gUnk_03002558
	cmp r0, #0
	beq _08152460
	ldr r2, _081524AC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _081524B0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_08152460:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _081524C0
	ldr r2, _081524B4 @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _081524B8 @ =gUnk_030036C4
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _081524BC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _081524AC @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _081524DC
	.align 2, 0
_081524A4: .4byte gUnk_030036C8
_081524A8: .4byte gUnk_03002558
_081524AC: .4byte 0x04000200
_081524B0: .4byte 0x0000FFFD
_081524B4: .4byte 0x04000004
_081524B8: .4byte gUnk_030036C4
_081524BC: .4byte 0x0000FFFB
_081524C0:
	ldr r2, _081525A4 @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _081525A8 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _081525AC @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _081525B0 @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_081524DC:
	ldrb r0, [r7]
	cmp r0, #1
	beq _081524FE
	ldr r0, _081525B4 @ =gUnk_03003670
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _081524FE
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	bne _081524FE
	bl m4aSoundMain
_081524FE:
	ldr r0, _081525B4 @ =gUnk_03003670
	ldr r3, [r0]
	movs r4, #0x80
	lsls r4, r4, #8
	ands r3, r4
	cmp r3, #0
	bne _0815258E
	ldr r0, _081525B8 @ =0x04000130
	ldrh r1, [r0]
	movs r0, #0xf
	adds r5, r0, #0
	bics r5, r1
	cmp r5, #0xf
	bne _0815258E
	ldr r2, _081525BC @ =gUnk_03002440
	ldr r1, [r2]
	orrs r1, r4
	ldr r0, _081525B0 @ =0x04000200
	strh r3, [r0]
	adds r0, #8
	strh r3, [r0]
	ldr r0, _081525A4 @ =0x04000004
	strh r3, [r0]
	movs r0, #5
	rsbs r0, r0, #0
	ands r1, r0
	str r1, [r2]
	ldr r1, _081525C0 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _081525C4 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _081525C8 @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _081525CC @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	ldr r0, _081525D0 @ =gUnk_03002E90
	strh r5, [r0]
	movs r0, #0x20
	bl SoftReset
_0815258E:
	ldr r1, _081525D4 @ =gUnk_03002E64
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _081525D8 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081525A4: .4byte 0x04000004
_081525A8: .4byte 0x0000FFFB
_081525AC: .4byte 0x0000FFDF
_081525B0: .4byte 0x04000200
_081525B4: .4byte gUnk_03003670
_081525B8: .4byte 0x04000130
_081525BC: .4byte gUnk_03002440
_081525C0: .4byte 0x040000B0
_081525C4: .4byte 0x0000C5FF
_081525C8: .4byte 0x00007FFF
_081525CC: .4byte 0x040000D4
_081525D0: .4byte gUnk_03002E90
_081525D4: .4byte gUnk_03002E64
_081525D8: .4byte 0x04000202

	thumb_func_start sub_081525DC
sub_081525DC: @ 0x081525DC
	push {r4, r5, r6, r7, lr}
	ldr r2, _08152628 @ =gUnk_03006078
	ldr r0, _0815262C @ =gUnk_030039A4
	ldrb r1, [r2]
	adds r7, r0, #0
	ldrb r0, [r7]
	cmp r1, r0
	beq _0815268A
	adds r6, r2, #0
_081525EE:
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08152630 @ =gUnk_03002EC0
	adds r2, r1, r0
	ldrh r0, [r2, #8]
	cmp r0, #0
	beq _08152666
	movs r4, #0
	movs r5, #0x80
	lsls r5, r5, #3
	ldr r3, _08152634 @ =0x040000D4
_08152608:
	cmp r0, r5
	bls _08152640
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, [r2, #4]
	adds r0, r0, r4
	str r0, [r3, #4]
	ldr r0, _08152638 @ =0x80000200
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _0815263C @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r2, #8]
	adds r0, r0, r1
	b _0815265C
	.align 2, 0
_08152628: .4byte gUnk_03006078
_0815262C: .4byte gUnk_030039A4
_08152630: .4byte gUnk_03002EC0
_08152634: .4byte 0x040000D4
_08152638: .4byte 0x80000200
_0815263C: .4byte 0xFFFFFC00
_08152640:
	ldr r0, [r2]
	adds r0, r0, r4
	str r0, [r3]
	ldr r0, [r2, #4]
	adds r0, r0, r4
	str r0, [r3, #4]
	ldrh r0, [r2, #8]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0
_0815265C:
	strh r0, [r2, #8]
	adds r4, r4, r5
	ldrh r0, [r2, #8]
	cmp r0, #0
	bne _08152608
_08152666:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _08152680 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08152684
	movs r0, #0
	b _0815268C
	.align 2, 0
_08152680: .4byte 0x04000004
_08152684:
	ldrb r0, [r7]
	cmp r2, r0
	bne _081525EE
_0815268A:
	movs r0, #1
_0815268C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08152694
sub_08152694: @ 0x08152694
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r7, _081526D0 @ =gUnk_03002EA0
	ldr r0, _081526D4 @ =gUnk_030035E0
	mov sb, r0
	ldr r1, _081526D8 @ =gUnk_030036A0
	mov r8, r1
	ldr r1, _081526DC @ =gUnk_030039A8
	ldr r4, _081526E0 @ =gUnk_03002E90
	ldrh r0, [r4]
	strh r0, [r1]
	ldr r0, _081526E4 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _081526E8 @ =0x000003FF
	adds r0, r2, #0
	bics r0, r1
	strh r0, [r4]
	ldr r1, _081526EC @ =gUnk_03002480
	strh r0, [r1]
	ldr r0, _081526F0 @ =gUnk_03006CB0
	ldrb r0, [r0, #8]
	cmp r0, #1
	bne _081526F4
	ldrh r0, [r4]
	bl sub_08158238
	b _081526FE
	.align 2, 0
_081526D0: .4byte gUnk_03002EA0
_081526D4: .4byte gUnk_030035E0
_081526D8: .4byte gUnk_030036A0
_081526DC: .4byte gUnk_030039A8
_081526E0: .4byte gUnk_03002E90
_081526E4: .4byte 0x04000130
_081526E8: .4byte 0x000003FF
_081526EC: .4byte gUnk_03002480
_081526F0: .4byte gUnk_03006CB0
_081526F4:
	cmp r0, #2
	bne _081526FE
	bl sub_08158208
	strh r0, [r4]
_081526FE:
	ldr r4, _08152744 @ =gUnk_030039FC
	ldr r5, _08152748 @ =gUnk_03002E90
	ldr r0, _0815274C @ =gUnk_030039A8
	ldrh r2, [r5]
	ldrh r3, [r0]
	adds r0, r2, #0
	eors r0, r3
	adds r1, r0, #0
	ands r1, r2
	strh r1, [r4]
	ldr r2, _08152750 @ =gUnk_030035EC
	ands r0, r3
	strh r0, [r2]
	ldr r0, _08152754 @ =gUnk_03002EB8
	strh r1, [r0]
	movs r1, #0
	mov ip, r5
	movs r6, #1
	adds r5, r0, #0
_08152724:
	mov r3, ip
	ldrh r0, [r3]
	lsls r1, r1, #0x18
	asrs r2, r1, #0x18
	asrs r0, r2
	ands r0, r6
	adds r4, r1, #0
	cmp r0, #0
	bne _08152758
	adds r0, r7, r2
	mov r3, sb
	adds r1, r3, r2
	ldrb r1, [r1]
	strb r1, [r0]
	b _08152776
	.align 2, 0
_08152744: .4byte gUnk_030039FC
_08152748: .4byte gUnk_03002E90
_0815274C: .4byte gUnk_030039A8
_08152750: .4byte gUnk_030035EC
_08152754: .4byte gUnk_03002EB8
_08152758:
	adds r3, r7, r2
	ldrb r0, [r3]
	cmp r0, #0
	beq _08152764
	subs r0, #1
	b _08152774
_08152764:
	adds r0, r6, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
_08152774:
	strb r0, [r3]
_08152776:
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r4, r2
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08152724
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08152790
sub_08152790: @ 0x08152790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	bl m4aMPlayAllStop
	bl m4aSoundVSyncOff
	ldr r1, _08152858 @ =gUnk_03003670
	ldr r0, [r1]
	str r0, [sp, #4]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	ldr r2, _08152858 @ =gUnk_03003670
	str r0, [r2]
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #0x13
	ldrh r0, [r2]
	strh r0, [r1]
	add r0, sp, #8
	mov sl, r0
	ldr r1, _0815285C @ =0x04000004
	mov sb, r1
	ldrh r0, [r1]
	mov r2, sl
	strh r0, [r2]
	movs r0, #0x80
	subs r1, #4
	strh r0, [r1]
	ldr r1, _08152860 @ =0x04000132
	ldr r2, _08152864 @ =0x00008304
	adds r0, r2, #0
	strh r0, [r1]
	ldr r5, _08152868 @ =0x04000208
	movs r6, #0
	strh r6, [r5]
	mov r0, sb
	strh r6, [r0]
	mov r7, sp
	adds r7, #2
	ldr r4, _0815286C @ =0x04000200
	ldrh r0, [r4]
	strh r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r4]
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #6
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4]
	movs r0, #1
	mov r8, r0
	strh r0, [r5]
	bl SoundBiasReset
	svc #3
	bl SoundBiasSet
	strh r6, [r5]
	ldrh r0, [r7]
	strh r0, [r4]
	mov r1, r8
	strh r1, [r5]
	mov r2, sl
	ldrh r0, [r2]
	mov r1, sb
	strh r0, [r1]
	bl VBlankIntrWait
	mov r0, sp
	ldrh r0, [r0]
	movs r2, #0x80
	lsls r2, r2, #0x13
	strh r0, [r2]
	ldr r0, [sp, #4]
	ldr r1, _08152858 @ =gUnk_03003670
	str r0, [r1]
	ldr r2, _08152870 @ =gUnk_03002440
	ldr r0, [r2]
	ldr r1, _08152874 @ =0xFFFBFFFF
	ands r0, r1
	str r0, [r2]
	bl m4aSoundVSyncOn
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08152858: .4byte gUnk_03003670
_0815285C: .4byte 0x04000004
_08152860: .4byte 0x04000132
_08152864: .4byte 0x00008304
_08152868: .4byte 0x04000208
_0815286C: .4byte 0x04000200
_08152870: .4byte gUnk_03002440
_08152874: .4byte 0xFFFBFFFF

	thumb_func_start sub_08152878
sub_08152878: @ 0x08152878
	push {r4, r5, r6, lr}
	ldr r0, _081528B8 @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _081528AA
	movs r4, #0
	ldr r0, _081528BC @ =gUnk_030024E4
	ldrb r0, [r0]
	cmp r4, r0
	bhs _081528AA
	ldr r6, _081528C0 @ =gUnk_03003A10
_08152890:
	lsls r0, r4, #2
	adds r0, r0, r6
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _081528BC @ =gUnk_030024E4
	ldrb r0, [r0]
	cmp r4, r0
	blo _08152890
_081528AA:
	ldr r1, _081528C4 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081528B8: .4byte 0x04000006
_081528BC: .4byte gUnk_030024E4
_081528C0: .4byte gUnk_03003A10
_081528C4: .4byte 0x04000202

	thumb_func_start sub_081528C8
sub_081528C8: @ 0x081528C8
	ldr r1, _081528D0 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_081528D0: .4byte 0x04000202

	thumb_func_start sub_081528D4
sub_081528D4: @ 0x081528D4
	ldr r1, _081528E0 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_081528E0: .4byte 0x04000202

	thumb_func_start sub_081528E4
sub_081528E4: @ 0x081528E4
	ldr r1, _081528F0 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_081528F0: .4byte 0x04000202

	thumb_func_start sub_081528F4
sub_081528F4: @ 0x081528F4
	ldr r1, _08152900 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08152900: .4byte 0x04000202

	thumb_func_start sub_08152904
sub_08152904: @ 0x08152904
	ldr r1, _08152910 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08152910: .4byte 0x04000202

	thumb_func_start sub_08152914
sub_08152914: @ 0x08152914
	ldr r1, _0815291C @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0815291C: .4byte 0x04000202

	thumb_func_start sub_08152920
sub_08152920: @ 0x08152920
	ldr r1, _08152928 @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_08152928: .4byte 0x04000202

	thumb_func_start sub_0815292C
sub_0815292C: @ 0x0815292C
	ldr r1, _08152934 @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_08152934: .4byte 0x04000202

	thumb_func_start sub_08152938
sub_08152938: @ 0x08152938
	ldr r1, _08152940 @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_08152940: .4byte 0x04000202

	thumb_func_start sub_08152944
sub_08152944: @ 0x08152944
	ldr r1, _08152950 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08152950: .4byte 0x04000202

	thumb_func_start sub_08152954
sub_08152954: @ 0x08152954
	ldr r1, _08152960 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08152960: .4byte 0x04000202

	thumb_func_start nullsub_142
nullsub_142: @ 0x08152964
	bx lr
	.align 2, 0

	thumb_func_start sub_08152968
sub_08152968: @ 0x08152968
	push {r4, lr}
	sub sp, #4
	ldr r1, _081529A0 @ =gUnk_0300248C
	movs r0, #0
	strb r0, [r1]
	ldr r2, _081529A4 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r2]
	movs r1, #0x20
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	bne _081529C0
	ldr r1, _081529A8 @ =gUnk_03002484
	ldr r0, [r1]
	ldr r2, _081529AC @ =gUnk_03002760
	cmp r0, r2
	bne _081529B4
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _081529B0 @ =gUnk_03002EAC
	str r2, [r0]
	b _081529C0
	.align 2, 0
_081529A0: .4byte gUnk_0300248C
_081529A4: .4byte gUnk_03002440
_081529A8: .4byte gUnk_03002484
_081529AC: .4byte gUnk_03002760
_081529B0: .4byte gUnk_03002EAC
_081529B4:
	str r2, [r1]
	ldr r1, _081529F4 @ =gUnk_03002EAC
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
_081529C0:
	ldr r0, [r4]
	movs r1, #5
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [sp]
	ldr r1, _081529F8 @ =gUnk_030060B0
	ldr r2, _081529FC @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	ldr r1, _08152A00 @ =gUnk_03006070
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4]
	movs r1, #0x11
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081529F4: .4byte gUnk_03002EAC
_081529F8: .4byte gUnk_030060B0
_081529FC: .4byte 0x01000100
_08152A00: .4byte gUnk_03006070
