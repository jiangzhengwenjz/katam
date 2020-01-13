	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E2969C
sub_08E2969C: @ 0x08E2969C
	push {lr}
	bl sub_08E296B0
	bl sub_08E1FFF4
	bl sub_08E29BE0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E296B0
sub_08E296B0: @ 0x08E296B0
	push {r4, lr}
	sub sp, #8
	ldr r1, _08E29700 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _08E29704 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08E29708 @ =gUnk_030013D0
	movs r3, #0
	str r3, [r2]
	ldr r0, _08E2970C @ =gUnk_03002600
	str r3, [r0]
	ldr r1, _08E29710 @ =gUnk_03001E24
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _08E29714 @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _08E296EC
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
_08E296EC:
	ldr r0, _08E29718 @ =gUnk_03001E20
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _08E2971C
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	b _08E2971E
	.align 2, 0
_08E29700: .4byte 0x04000208
_08E29704: .4byte 0x00004014
_08E29708: .4byte gUnk_030013D0
_08E2970C: .4byte gUnk_03002600
_08E29710: .4byte gUnk_03001E24
_08E29714: .4byte 0x04000134
_08E29718: .4byte gUnk_03001E20
_08E2971C:
	str r3, [r2]
_08E2971E:
	ldr r1, _08E29A88 @ =gUnk_03002564
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08E29A8C @ =gUnk_03002994
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08E29A90 @ =gUnk_03002720
	strb r1, [r0]
	ldr r0, _08E29A94 @ =gUnk_03005840
	strb r1, [r0]
	ldr r0, _08E29A98 @ =gUnk_03005008
	strb r1, [r0]
	ldr r0, _08E29A9C @ =gUnk_03002934
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08E29AA4 @ =gUnk_03001E10
	str r0, [r1, #4]
	ldr r0, _08E29AA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E2974E:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E2974E
	ldr r1, _08E29AAC @ =gUnk_03005030
	movs r0, #0
	str r0, [r1]
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E29AB0 @ =gUnk_03002610
	str r0, [r1, #4]
	ldr r0, _08E29AA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E2976C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E2976C
	ldr r0, _08E29AB4 @ =gUnk_03001384
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _08E29AB8 @ =gUnk_03002620
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r2]
	str r1, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E29ABC @ =gUnk_03001E50
	str r0, [r1, #4]
	ldr r0, _08E29AC0 @ =0x850000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29796:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29796
	ldr r0, _08E29AC4 @ =gUnk_03001480
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08E29AC8 @ =gUnk_03002990
	strb r1, [r0]
	add r2, sp, #4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _08E29AA0 @ =0x040000D4
	str r2, [r1]
	ldr r0, _08E29ACC @ =gUnk_03005040
	str r0, [r1, #4]
	ldr r0, _08E29AD0 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E297BE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E297BE
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	ldr r1, _08E29AA0 @ =0x040000D4
	str r2, [r1]
	ldr r0, _08E29AD4 @ =gUnk_03002150
	str r0, [r1, #4]
	ldr r0, _08E29AD0 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E297DA:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E297DA
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E29AD8 @ =gUnk_030013E0
	str r0, [r1, #4]
	ldr r0, _08E29ADC @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E297F6:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E297F6
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08E29AE0 @ =gUnk_03005010
	str r0, [r1, #4]
	ldr r0, _08E29ADC @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29812:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29812
	ldr r1, _08E29AA0 @ =0x040000D4
	ldr r0, _08E29AE4 @ =0x05000200
	str r0, [r1]
	ldr r0, _08E29AE8 @ =gUnk_03001BF0
	str r0, [r1, #4]
	ldr r0, _08E29AEC @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29828:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29828
	ldr r1, _08E29AA0 @ =0x040000D4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1]
	ldr r0, _08E29AF0 @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _08E29AEC @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29840:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29840
	ldr r0, _08E29AF4 @ =gUnk_030014B0
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
	ldr r0, _08E29AF8 @ =gUnk_030014A4
	strb r3, [r0]
	ldr r0, _08E29AFC @ =gUnk_030014D4
	strh r1, [r0]
	ldr r0, _08E29B00 @ =gUnk_03001380
	strh r2, [r0]
	ldr r0, _08E29B04 @ =gUnk_03005844
	strh r2, [r0]
	ldr r0, _08E29B08 @ =gUnk_0300293C
	strh r1, [r0]
	ldr r0, _08E29B0C @ =gUnk_03005004
	strh r1, [r0]
	ldr r0, _08E29B10 @ =gUnk_030014DC
	strh r1, [r0]
	ldr r0, _08E29B14 @ =gUnk_0300260C
	strh r1, [r0]
	ldr r0, _08E29B18 @ =gUnk_03005848
	strh r2, [r0]
	ldr r0, _08E29B1C @ =gUnk_03001E00
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _08E29B20 @ =gUnk_03001478
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08E29B24 @ =gUnk_03005868
	str r1, [r0]
_08E298A6:
	ldr r2, _08E29B28 @ =gUnk_03002570
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	movs r1, #0x14
	strb r1, [r2]
	ldr r1, _08E29B2C @ =gUnk_03002630
	adds r1, r0, r1
	movs r2, #8
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08E298A6
	ldr r1, _08E29B30 @ =gUnk_03001DF4
	movs r0, #0
	str r0, [r1]
	movs r1, #0
_08E298CE:
	ldr r3, _08E29B34 @ =gUnk_03000740
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r3, r1, r3
	ldr r2, _08E29B38 @ =gUnk_02021D50
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _08E298CE
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08E29B3C @ =gUnk_030016F0
	str r2, [r1, #4]
	ldr r0, _08E29B40 @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29900:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29900
	ldr r0, _08E29B44 @ =gUnk_03001414
	str r2, [r0]
	ldr r1, _08E29B48 @ =gUnk_03001E3C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _08E29B4C @ =gUnk_03002658
	movs r1, #0
	str r1, [r0]
	ldr r0, _08E29B50 @ =gUnk_03002930
	strb r1, [r0]
	ldr r0, _08E29B54 @ =gUnk_0300141C
	strb r1, [r0]
	ldr r0, _08E29B58 @ =gUnk_03001474
	strb r1, [r0]
	str r1, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E29B5C @ =gUnk_03002550
	str r0, [r1, #4]
	ldr r0, _08E29AA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29938:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29938
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E29B60 @ =gUnk_030029A0
	str r0, [r1, #4]
	ldr r0, _08E29AA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29952:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29952
	ldr r0, _08E29B64 @ =gUnk_03005000
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08E29B68 @ =gUnk_030014D8
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08E29B6C @ =gUnk_03001400
	str r0, [r1, #4]
	ldr r0, _08E29AA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29976:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29976
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E29B70 @ =gUnk_03005850
	str r0, [r1, #4]
	ldr r0, _08E29AA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29990:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29990
	bl sub_08E281A8
	ldr r0, _08E29B74 @ =0x0095FA00
	bl sub_08E28744
	bl sub_08E28220
	ldr r1, _08E29B78 @ =gUnk_03005864
	movs r0, #1
	strb r0, [r1]
	bl sub_08E2A4B8
	ldr r1, _08E29B7C @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E29B80 @ =gUnk_030014D0
	ldr r0, _08E29B84 @ =0x06014000
	str r0, [r1]
	bl nullsub_08
	ldr r2, _08E29B88 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08E29AA0 @ =0x040000D4
	ldr r0, _08E29B8C @ =gUnk_020000FC
	str r0, [r1]
	ldr r2, _08E29B90 @ =gUnk_03000780
	str r2, [r1, #4]
	ldr r0, _08E29AEC @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E299DE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E299DE
	ldr r0, _08E29B94 @ =gUnk_03007FFC
	str r2, [r0]
	ldr r2, _08E29B98 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08E29B9C @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _08E29BA0 @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _08E29A12
	ldr r0, _08E29BA4 @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _08E29BA8 @ =0x454B3842
	cmp r1, r0
	bne _08E29A12
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08E29A12:
	ldr r1, _08E29BAC @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E29BB0 @ =gUnk_03002640
	str r0, [r1, #4]
	ldr r0, _08E29BB4 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29A2C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29A2C
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E29AA0 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E29BB8 @ =gUnk_03001420
	str r0, [r1, #4]
	ldr r0, _08E29BBC @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29A46:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29A46
	ldr r0, _08E29BC0 @ =gUnk_030014E4
	movs r4, #0
	str r4, [r0]
	ldr r0, _08E29BC4 @ =gUnk_030014E8
	strb r4, [r0]
	movs r0, #0
	bl sub_08E2BD54
	ldr r0, _08E29BC8 @ =gUnk_0300500C
	strb r4, [r0]
	ldr r0, _08E29BCC @ =gUnk_03001470
	str r4, [r0]
	ldr r0, _08E29BD0 @ =gUnk_030014E0
	strb r4, [r0]
	ldr r1, _08E29AA0 @ =0x040000D4
	ldr r0, _08E29BD4 @ =0x04000008
	str r0, [r1]
	ldr r0, _08E29BD8 @ =gUnk_03001E40
	str r0, [r1, #4]
	ldr r0, _08E29BDC @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E29A78:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E29A78
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E29A88: .4byte gUnk_03002564
_08E29A8C: .4byte gUnk_03002994
_08E29A90: .4byte gUnk_03002720
_08E29A94: .4byte gUnk_03005840
_08E29A98: .4byte gUnk_03005008
_08E29A9C: .4byte gUnk_03002934
_08E29AA0: .4byte 0x040000D4
_08E29AA4: .4byte gUnk_03001E10
_08E29AA8: .4byte 0x85000004
_08E29AAC: .4byte gUnk_03005030
_08E29AB0: .4byte gUnk_03002610
_08E29AB4: .4byte gUnk_03001384
_08E29AB8: .4byte gUnk_03002620
_08E29ABC: .4byte gUnk_03001E50
_08E29AC0: .4byte 0x850000C0
_08E29AC4: .4byte gUnk_03001480
_08E29AC8: .4byte gUnk_03002990
_08E29ACC: .4byte gUnk_03005040
_08E29AD0: .4byte 0x81000200
_08E29AD4: .4byte gUnk_03002150
_08E29AD8: .4byte gUnk_030013E0
_08E29ADC: .4byte 0x85000008
_08E29AE0: .4byte gUnk_03005010
_08E29AE4: .4byte 0x05000200
_08E29AE8: .4byte gUnk_03001BF0
_08E29AEC: .4byte 0x84000080
_08E29AF0: .4byte gUnk_03002730
_08E29AF4: .4byte gUnk_030014B0
_08E29AF8: .4byte gUnk_030014A4
_08E29AFC: .4byte gUnk_030014D4
_08E29B00: .4byte gUnk_03001380
_08E29B04: .4byte gUnk_03005844
_08E29B08: .4byte gUnk_0300293C
_08E29B0C: .4byte gUnk_03005004
_08E29B10: .4byte gUnk_030014DC
_08E29B14: .4byte gUnk_0300260C
_08E29B18: .4byte gUnk_03005848
_08E29B1C: .4byte gUnk_03001E00
_08E29B20: .4byte gUnk_03001478
_08E29B24: .4byte gUnk_03005868
_08E29B28: .4byte gUnk_03002570
_08E29B2C: .4byte gUnk_03002630
_08E29B30: .4byte gUnk_03001DF4
_08E29B34: .4byte gUnk_03000740
_08E29B38: .4byte gUnk_02021D50
_08E29B3C: .4byte gUnk_030016F0
_08E29B40: .4byte 0x85000140
_08E29B44: .4byte gUnk_03001414
_08E29B48: .4byte gUnk_03001E3C
_08E29B4C: .4byte gUnk_03002658
_08E29B50: .4byte gUnk_03002930
_08E29B54: .4byte gUnk_0300141C
_08E29B58: .4byte gUnk_03001474
_08E29B5C: .4byte gUnk_03002550
_08E29B60: .4byte gUnk_030029A0
_08E29B64: .4byte gUnk_03005000
_08E29B68: .4byte gUnk_030014D8
_08E29B6C: .4byte gUnk_03001400
_08E29B70: .4byte gUnk_03005850
_08E29B74: .4byte 0x0095FA00
_08E29B78: .4byte gUnk_03005864
_08E29B7C: .4byte gUnk_03001418
_08E29B80: .4byte gUnk_030014D0
_08E29B84: .4byte 0x06014000
_08E29B88: .4byte gUnk_030013D0
_08E29B8C: .4byte gUnk_020000FC
_08E29B90: .4byte gUnk_03000780
_08E29B94: .4byte gUnk_03007FFC
_08E29B98: .4byte 0x04000200
_08E29B9C: .4byte 0x04000004
_08E29BA0: .4byte 0x080000B2
_08E29BA4: .4byte 0x080000AC
_08E29BA8: .4byte 0x454B3842
_08E29BAC: .4byte 0x04000208
_08E29BB0: .4byte gUnk_03002640
_08E29BB4: .4byte 0x85000005
_08E29BB8: .4byte gUnk_03001420
_08E29BBC: .4byte 0x85000014
_08E29BC0: .4byte gUnk_030014E4
_08E29BC4: .4byte gUnk_030014E8
_08E29BC8: .4byte gUnk_0300500C
_08E29BCC: .4byte gUnk_03001470
_08E29BD0: .4byte gUnk_030014E0
_08E29BD4: .4byte 0x04000008
_08E29BD8: .4byte gUnk_03001E40
_08E29BDC: .4byte 0x80000004

	thumb_func_start sub_08E29BE0
sub_08E29BE0: @ 0x08E29BE0
	push {r4, r5, lr}
_08E29BE2:
	ldr r1, _08E29C40 @ =gUnk_03005864
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08E29C44 @ =gUnk_030013D0
	ldr r0, [r1]
	ldr r2, _08E29C48 @ =0xFEFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r1, _08E29C4C @ =gUnk_03002600
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r0, _08E29C50 @ =gUnk_03002564
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08E29C6E
	bl sub_08E2A3F4
	ldr r0, _08E29C54 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E29C2C
	bl sub_08E20298
	ldr r0, _08E29C58 @ =gUnk_03002640
	ldr r1, _08E29C5C @ =gUnk_03001420
	movs r2, #0
	bl sub_08E2BEB0
	ldr r1, _08E29C60 @ =gUnk_030014E4
	str r0, [r1]
	bl sub_08E203C8
	cmp r0, #0
	bne _08E29C2C
	bl sub_08E20F88
_08E29C2C:
	ldr r0, _08E29C64 @ =gUnk_03000470
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08E29C68
	bl sub_08E2A794
	b _08E29C6E
	.align 2, 0
_08E29C40: .4byte gUnk_03005864
_08E29C44: .4byte gUnk_030013D0
_08E29C48: .4byte 0xFEFFFFFF
_08E29C4C: .4byte gUnk_03002600
_08E29C50: .4byte gUnk_03002564
_08E29C54: .4byte gUnk_030014E8
_08E29C58: .4byte gUnk_03002640
_08E29C5C: .4byte gUnk_03001420
_08E29C60: .4byte gUnk_030014E4
_08E29C64: .4byte gUnk_03000470
_08E29C68:
	ldr r1, _08E29CB4 @ =gUnk_03002564
	movs r0, #0
	strb r0, [r1]
_08E29C6E:
	ldr r4, _08E29CB8 @ =gUnk_030013D0
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	ldr r1, _08E29CBC @ =gUnk_03002600
	str r0, [r1]
	bl sub_08E2C804
	ldr r1, _08E29CC0 @ =gUnk_030014A4
	movs r0, #0
	strb r0, [r1]
	bl sub_08E29D04
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	bne _08E29CA6
	bl sub_08E29FEC
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08E29CC4
_08E29CA6:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	b _08E29CCA
	.align 2, 0
_08E29CB4: .4byte gUnk_03002564
_08E29CB8: .4byte gUnk_030013D0
_08E29CBC: .4byte gUnk_03002600
_08E29CC0: .4byte gUnk_030014A4
_08E29CC4:
	ldr r0, _08E29CF8 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r4]
_08E29CCA:
	ldr r0, _08E29CFC @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08E29CDC
	bl sub_08E28220
_08E29CDC:
	ldr r0, _08E29D00 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E29CEA
	b _08E29BE2
_08E29CEA:
	ldr r0, _08E29D00 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E29CEA
	b _08E29BE2
	.align 2, 0
_08E29CF8: .4byte 0xFFFFF7FF
_08E29CFC: .4byte gUnk_030013D0
_08E29D00: .4byte 0x04000004

	thumb_func_start sub_08E29D04
sub_08E29D04: @ 0x08E29D04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08E29DF8 @ =gUnk_03002620
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _08E29DFC @ =0x040000D4
	ldr r0, _08E29E00 @ =gUnk_03001E40
	str r0, [r3]
	ldr r0, _08E29E04 @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _08E29E08 @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _08E29E0C @ =gUnk_030013D0
	ldr r1, [r5]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r6, _08E29E10 @ =gUnk_03001E00
	ldr r7, _08E29E14 @ =gUnk_03002610
	mov ip, r7
	ldr r7, _08E29E18 @ =gUnk_030014B0
	mov r8, r7
	ldr r7, _08E29E1C @ =gUnk_03001474
	mov sb, r7
	ldr r7, _08E29E20 @ =gUnk_03002564
	mov sl, r7
	cmp r0, #0
	beq _08E29D60
	ldr r0, _08E29E24 @ =gUnk_03002730
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _08E29E28 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08E29D60:
	ldr r1, [r5]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08E29D7E
	ldr r0, _08E29E2C @ =gUnk_03001BF0
	str r0, [r3]
	ldr r0, _08E29E30 @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _08E29E28 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08E29D7E:
	str r6, [r3]
	ldr r0, _08E29E34 @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _08E29E38 @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08E29E3C @ =gUnk_03001478
	str r0, [r3]
	ldr r0, _08E29E40 @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _08E29E44 @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	str r1, [r3]
	ldr r0, _08E29E48 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _08E29E4C @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r7, r8
	str r7, [r3]
	ldr r0, _08E29E50 @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _08E29E54 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r5]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08E29E6C
	ldr r2, _08E29E58 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r4, _08E29E5C @ =gUnk_030029A0
	str r4, [r3, #4]
	ldr r0, _08E29E60 @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08E29E64 @ =gUnk_0300141C
	ldrb r2, [r1]
	cmp r2, #0
	beq _08E29DF2
	ldr r0, _08E29E68 @ =gUnk_03002550
	str r0, [r3]
	str r4, [r3, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08E29DF2:
	mov r1, sb
	strb r2, [r1]
	b _08E29E7A
	.align 2, 0
_08E29DF8: .4byte gUnk_03002620
_08E29DFC: .4byte 0x040000D4
_08E29E00: .4byte gUnk_03001E40
_08E29E04: .4byte 0x04000008
_08E29E08: .4byte 0x84000002
_08E29E0C: .4byte gUnk_030013D0
_08E29E10: .4byte gUnk_03001E00
_08E29E14: .4byte gUnk_03002610
_08E29E18: .4byte gUnk_030014B0
_08E29E1C: .4byte gUnk_03001474
_08E29E20: .4byte gUnk_03002564
_08E29E24: .4byte gUnk_03002730
_08E29E28: .4byte 0x84000080
_08E29E2C: .4byte gUnk_03001BF0
_08E29E30: .4byte 0x05000200
_08E29E34: .4byte 0x04000040
_08E29E38: .4byte 0x84000003
_08E29E3C: .4byte gUnk_03001478
_08E29E40: .4byte 0x04000050
_08E29E44: .4byte 0x80000003
_08E29E48: .4byte 0x04000010
_08E29E4C: .4byte 0x80000008
_08E29E50: .4byte 0x04000020
_08E29E54: .4byte 0x84000008
_08E29E58: .4byte 0x04000200
_08E29E5C: .4byte gUnk_030029A0
_08E29E60: .4byte 0x85000004
_08E29E64: .4byte gUnk_0300141C
_08E29E68: .4byte gUnk_03002550
_08E29E6C:
	ldr r2, _08E29EF4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E29EF8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	mov r7, sb
	strb r4, [r7]
_08E29E7A:
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08E29EA2
	ldr r2, _08E29EFC @ =0x040000D4
	ldr r0, _08E29F00 @ =gUnk_03001414
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08E29F04 @ =gUnk_03002658
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08E29F08 @ =gUnk_03002930
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08E29EA2:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08E29EF0
	bl sub_08E2BB68
	ldr r0, _08E29EFC @ =0x040000D4
	ldr r3, _08E29F0C @ =gUnk_03005040
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _08E29F10 @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08E29F14 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r3, r7
	str r1, [r0]
	ldr r1, _08E29F18 @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08E29F1C @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08E29EF0:
	movs r4, #0
	b _08E29F32
	.align 2, 0
_08E29EF4: .4byte 0x04000200
_08E29EF8: .4byte 0x0000FFFD
_08E29EFC: .4byte 0x040000D4
_08E29F00: .4byte gUnk_03001414
_08E29F04: .4byte gUnk_03002658
_08E29F08: .4byte gUnk_03002930
_08E29F0C: .4byte gUnk_03005040
_08E29F10: .4byte 0x80000080
_08E29F14: .4byte 0x07000100
_08E29F18: .4byte 0x07000200
_08E29F1C: .4byte 0x07000300
_08E29F20:
	ldr r1, _08E29F80 @ =gUnk_03005850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08E2C80C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08E29F32:
	ldr r0, _08E29F84 @ =gUnk_030014D8
	ldrb r0, [r0]
	cmp r4, r0
	blo _08E29F20
	ldr r0, _08E29F88 @ =gUnk_030013D0
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r7, _08E29F8C @ =gUnk_03002564
	mov sl, r7
	ldr r5, _08E29F84 @ =gUnk_030014D8
	cmp r1, #0
	beq _08E29FA0
	movs r0, #0
	str r0, [sp]
	ldr r2, _08E29F90 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r4, _08E29F80 @ =gUnk_03005850
	str r4, [r2, #4]
	ldr r0, _08E29F94 @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _08E29F98 @ =gUnk_03005000
	ldrb r3, [r1]
	cmp r3, #0
	beq _08E29F7A
	ldr r0, _08E29F9C @ =gUnk_03001400
	str r0, [r2]
	str r4, [r2, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08E29F7A:
	strb r3, [r5]
	b _08E29FA2
	.align 2, 0
_08E29F80: .4byte gUnk_03005850
_08E29F84: .4byte gUnk_030014D8
_08E29F88: .4byte gUnk_030013D0
_08E29F8C: .4byte gUnk_03002564
_08E29F90: .4byte 0x040000D4
_08E29F94: .4byte 0x85000004
_08E29F98: .4byte gUnk_03005000
_08E29F9C: .4byte gUnk_03001400
_08E29FA0:
	strb r1, [r5]
_08E29FA2:
	mov r1, sl
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _08E29FAC
	movs r4, #0
_08E29FAC:
	movs r0, #0xff
	mov r7, sl
	strb r0, [r7]
	b _08E29FBA
_08E29FB4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08E29FBA:
	cmp r4, #1
	bhi _08E29FD2
	ldr r1, _08E29FE4 @ =gUnk_02021D88
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08E2C80C
	cmp r0, #0
	bne _08E29FB4
	ldr r0, _08E29FE8 @ =gUnk_03002564
	strb r4, [r0]
_08E29FD2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E29FE4: .4byte gUnk_02021D88
_08E29FE8: .4byte gUnk_03002564

	thumb_func_start sub_08E29FEC
sub_08E29FEC: @ 0x08E29FEC
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _08E2A024 @ =gUnk_0300141C
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08E2A028 @ =gUnk_030013D0
	ldr r0, [r5]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08E2A042
	ldr r2, _08E2A02C @ =gUnk_03001414
	ldr r0, [r2]
	ldr r1, _08E2A030 @ =gUnk_030016F0
	ldr r3, _08E2A034 @ =gUnk_03001E3C
	cmp r0, r1
	bne _08E2A038
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r1, r4
	str r0, [r2]
	str r1, [r3]
	b _08E2A042
	.align 2, 0
_08E2A024: .4byte gUnk_0300141C
_08E2A028: .4byte gUnk_030013D0
_08E2A02C: .4byte gUnk_03001414
_08E2A030: .4byte gUnk_030016F0
_08E2A034: .4byte gUnk_03001E3C
_08E2A038:
	str r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r3]
_08E2A042:
	ldr r4, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _08E2A0B4 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _08E2A0B8 @ =gUnk_03005040
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _08E2A0BC @ =0x81000080
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
	ldr r1, _08E2A0C0 @ =gUnk_03005000
	movs r0, #0
	strb r0, [r1]
	movs r0, #0x11
	rsbs r0, r0, #0
	ands r4, r0
	str r4, [r5]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E2A0B4: .4byte 0x040000D4
_08E2A0B8: .4byte gUnk_03005040
_08E2A0BC: .4byte 0x81000080
_08E2A0C0: .4byte gUnk_03005000

	thumb_func_start sub_08E2A0C4
sub_08E2A0C4: @ 0x08E2A0C4
	push {r4, r5, r6, lr}
	ldr r4, _08E2A140 @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _08E2A144 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _08E2A148 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl sub_08E27B4C
	ldr r1, _08E2A14C @ =gUnk_03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08E2A150 @ =gUnk_03005864
	strb r2, [r0]
	ldr r6, _08E2A154 @ =gUnk_03002600
	ldr r3, [r6]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _08E2A16C
	ldr r2, _08E2A158 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
_08E2A104:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E2A104
	ldr r2, _08E2A140 @ =0x040000B0
	ldr r0, _08E2A15C @ =gUnk_03001414
	ldr r4, [r0]
	str r4, [r2]
	ldr r0, _08E2A160 @ =gUnk_03002658
	ldr r5, [r0]
	str r5, [r2, #4]
	ldr r3, _08E2A164 @ =gUnk_03002930
	ldrb r0, [r3]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldrb r0, [r3]
	adds r4, r4, r0
	str r4, [r2]
	str r5, [r2, #4]
	ldrb r0, [r3]
	lsrs r0, r0, #1
	ldr r1, _08E2A168 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08E2A180
	.align 2, 0
_08E2A140: .4byte 0x040000B0
_08E2A144: .4byte 0x0000C5FF
_08E2A148: .4byte 0x00007FFF
_08E2A14C: .4byte gUnk_03007FF8
_08E2A150: .4byte gUnk_03005864
_08E2A154: .4byte gUnk_03002600
_08E2A158: .4byte 0x04000200
_08E2A15C: .4byte gUnk_03001414
_08E2A160: .4byte gUnk_03002658
_08E2A164: .4byte gUnk_03002930
_08E2A168: .4byte 0xA2600000
_08E2A16C:
	ldr r4, _08E2A1C4 @ =gUnk_03002658
	ldr r0, [r4]
	cmp r0, #0
	beq _08E2A180
	ldr r2, _08E2A1C8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2A1CC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_08E2A180:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08E2A1DC
	ldr r2, _08E2A1D0 @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08E2A1D4 @ =gUnk_03002654
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08E2A1D8 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _08E2A1C8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _08E2A1F8
	.align 2, 0
_08E2A1C4: .4byte gUnk_03002658
_08E2A1C8: .4byte 0x04000200
_08E2A1CC: .4byte 0x0000FFFD
_08E2A1D0: .4byte 0x04000004
_08E2A1D4: .4byte gUnk_03002654
_08E2A1D8: .4byte 0x0000FFFB
_08E2A1DC:
	ldr r2, _08E2A230 @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _08E2A234 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _08E2A238 @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _08E2A23C @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_08E2A1F8:
	ldr r0, _08E2A240 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08E2A21A
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08E2A21A
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	bne _08E2A21A
	bl sub_08E28220
_08E2A21A:
	ldr r1, _08E2A244 @ =gUnk_03001DF4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08E2A248 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E2A230: .4byte 0x04000004
_08E2A234: .4byte 0x0000FFFB
_08E2A238: .4byte 0x0000FFDF
_08E2A23C: .4byte 0x04000200
_08E2A240: .4byte gUnk_030014E8
_08E2A244: .4byte gUnk_03001DF4
_08E2A248: .4byte 0x04000202

	thumb_func_start sub_08E2A24C
sub_08E2A24C: @ 0x08E2A24C
	push {r4, r5, lr}
	ldr r0, _08E2A25C @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _08E2A27C
	movs r4, #0
	b _08E2A274
	.align 2, 0
_08E2A25C: .4byte 0x04000006
_08E2A260:
	ldr r1, _08E2A288 @ =gUnk_030029A0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08E2C810
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08E2A274:
	ldr r0, _08E2A28C @ =gUnk_03001474
	ldrb r0, [r0]
	cmp r4, r0
	blo _08E2A260
_08E2A27C:
	ldr r1, _08E2A290 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E2A288: .4byte gUnk_030029A0
_08E2A28C: .4byte gUnk_03001474
_08E2A290: .4byte 0x04000202

	thumb_func_start sub_08E2A294
sub_08E2A294: @ 0x08E2A294
	ldr r1, _08E2A29C @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A29C: .4byte 0x04000202

	thumb_func_start sub_08E2A2A0
sub_08E2A2A0: @ 0x08E2A2A0
	ldr r1, _08E2A2A8 @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A2A8: .4byte 0x04000202

	thumb_func_start sub_08E2A2AC
sub_08E2A2AC: @ 0x08E2A2AC
	ldr r1, _08E2A2B4 @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A2B4: .4byte 0x04000202

	thumb_func_start sub_08E2A2B8
sub_08E2A2B8: @ 0x08E2A2B8
	ldr r1, _08E2A2C0 @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A2C0: .4byte 0x04000202

	thumb_func_start sub_08E2A2C4
sub_08E2A2C4: @ 0x08E2A2C4
	ldr r1, _08E2A2CC @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A2CC: .4byte 0x04000202

	thumb_func_start sub_08E2A2D0
sub_08E2A2D0: @ 0x08E2A2D0
	ldr r1, _08E2A2DC @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A2DC: .4byte 0x04000202

	thumb_func_start sub_08E2A2E0
sub_08E2A2E0: @ 0x08E2A2E0
	ldr r1, _08E2A2EC @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A2EC: .4byte 0x04000202

	thumb_func_start sub_08E2A2F0
sub_08E2A2F0: @ 0x08E2A2F0
	ldr r1, _08E2A2FC @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A2FC: .4byte 0x04000202

	thumb_func_start sub_08E2A300
sub_08E2A300: @ 0x08E2A300
	ldr r1, _08E2A30C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A30C: .4byte 0x04000202

	thumb_func_start sub_08E2A310
sub_08E2A310: @ 0x08E2A310
	ldr r1, _08E2A31C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A31C: .4byte 0x04000202

	thumb_func_start sub_08E2A320
sub_08E2A320: @ 0x08E2A320
	ldr r1, _08E2A32C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E2A32C: .4byte 0x04000202

	thumb_func_start nullsub_65
nullsub_65: @ 0x08E2A330
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2A334
sub_08E2A334: @ 0x08E2A334
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E2A380 @ =gUnk_03005008
	ldr r7, _08E2A384 @ =gUnk_03002934
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _08E2A3EA
_08E2A342:
	ldr r6, _08E2A380 @ =gUnk_03005008
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08E2A388 @ =gUnk_03001E50
	adds r3, r1, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	beq _08E2A3C2
	movs r5, #0
_08E2A358:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r4, [r3]
	cmp r1, r0
	bls _08E2A398
	ldr r1, _08E2A38C @ =0x040000D4
	adds r0, r4, r5
	str r0, [r1]
	ldr r0, [r3, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08E2A390 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08E2A394 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	b _08E2A3B4
	.align 2, 0
_08E2A380: .4byte gUnk_03005008
_08E2A384: .4byte gUnk_03002934
_08E2A388: .4byte gUnk_03001E50
_08E2A38C: .4byte 0x040000D4
_08E2A390: .4byte 0x80000200
_08E2A394: .4byte 0xFFFFFC00
_08E2A398:
	ldr r2, _08E2A3DC @ =0x040000D4
	adds r0, r4, r5
	str r0, [r2]
	ldr r0, [r3, #4]
	adds r0, r0, r5
	str r0, [r2, #4]
	ldrh r0, [r3, #8]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #0
_08E2A3B4:
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	bne _08E2A358
_08E2A3C2:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _08E2A3E0 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E2A3E4
	movs r0, #0
	b _08E2A3EC
	.align 2, 0
_08E2A3DC: .4byte 0x040000D4
_08E2A3E0: .4byte 0x04000004
_08E2A3E4:
	ldrb r1, [r7]
	cmp r2, r1
	bne _08E2A342
_08E2A3EA:
	movs r0, #1
_08E2A3EC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2A3F4
sub_08E2A3F4: @ 0x08E2A3F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08E2A454 @ =gUnk_03001E30
	mov r8, r0
	ldr r1, _08E2A458 @ =gUnk_03002570
	mov ip, r1
	ldr r2, _08E2A45C @ =gUnk_03002630
	mov sb, r2
	ldr r0, _08E2A460 @ =gUnk_03002938
	ldr r6, _08E2A464 @ =gUnk_03001E20
	ldrh r3, [r6]
	strh r3, [r0]
	ldr r0, _08E2A468 @ =0x04000130
	ldrh r0, [r0]
	ldr r7, _08E2A46C @ =0x000003FF
	adds r1, r7, #0
	bics r1, r0
	strh r1, [r6]
	ldr r0, _08E2A470 @ =gUnk_03001410
	strh r1, [r0]
	ldr r4, _08E2A474 @ =gUnk_0300298C
	adds r0, r1, #0
	eors r0, r3
	adds r2, r0, #0
	ands r2, r1
	strh r2, [r4]
	ldr r1, _08E2A478 @ =gUnk_0300257C
	ands r0, r3
	strh r0, [r1]
	ldr r5, _08E2A47C @ =gUnk_03001E48
	strh r2, [r5]
	movs r1, #0
_08E2A438:
	ldrh r0, [r6]
	lsls r4, r1, #0x18
	asrs r2, r4, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	mov r7, r8
	adds r3, r7, r2
	cmp r0, #0
	bne _08E2A480
	mov r1, ip
	adds r0, r1, r2
	b _08E2A498
	.align 2, 0
_08E2A454: .4byte gUnk_03001E30
_08E2A458: .4byte gUnk_03002570
_08E2A45C: .4byte gUnk_03002630
_08E2A460: .4byte gUnk_03002938
_08E2A464: .4byte gUnk_03001E20
_08E2A468: .4byte 0x04000130
_08E2A46C: .4byte 0x000003FF
_08E2A470: .4byte gUnk_03001410
_08E2A474: .4byte gUnk_0300298C
_08E2A478: .4byte gUnk_0300257C
_08E2A47C: .4byte gUnk_03001E48
_08E2A480:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08E2A48A
	subs r0, #1
	b _08E2A49A
_08E2A48A:
	adds r0, r1, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r7, sb
	adds r0, r7, r2
_08E2A498:
	ldrb r0, [r0]
_08E2A49A:
	strb r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r4, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08E2A438
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E2A4B8
sub_08E2A4B8: @ 0x08E2A4B8
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08E2A554 @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _08E2A558 @ =gUnk_03001E4C
	str r1, [r0]
	ldr r0, _08E2A55C @ =gUnk_03001E0C
	str r1, [r0]
	ldr r0, _08E2A560 @ =gUnk_03001E28
	str r1, [r0]
	str r1, [sp]
	ldr r1, _08E2A564 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _08E2A568 @ =gUnk_03000980
	str r4, [r1, #4]
	ldr r0, _08E2A56C @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	movs r3, #0
_08E2A4E4:
	ldr r0, _08E2A570 @ =gUnk_030014F0
	lsls r1, r2, #2
	adds r1, r1, r0
	adds r0, r3, r4
	str r0, [r1]
	adds r3, #0x14
	adds r2, #1
	cmp r2, #0x7f
	ble _08E2A4E4
	bl sub_08E2A59C
	adds r4, r0, #0
	cmp r4, #0
	beq _08E2A590
	ldr r0, _08E2A574 @ =gUnk_0200AC1D
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl sub_08E2A59C
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08E2A590
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _08E2A578 @ =gUnk_0200AC21
	str r0, [r4, #8]
	ldr r0, _08E2A57C @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _08E2A580 @ =gUnk_03001490
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _08E2A584 @ =gUnk_03005C38
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _08E2A588 @ =gUnk_030029B0
	strh r5, [r1]
	ldr r0, _08E2A58C @ =0x00002604
	strh r0, [r1, #2]
	movs r0, #1
	b _08E2A592
	.align 2, 0
_08E2A554: .4byte gUnk_03002560
_08E2A558: .4byte gUnk_03001E4C
_08E2A55C: .4byte gUnk_03001E0C
_08E2A560: .4byte gUnk_03001E28
_08E2A564: .4byte 0x040000D4
_08E2A568: .4byte gUnk_03000980
_08E2A56C: .4byte 0x85000080
_08E2A570: .4byte gUnk_030014F0
_08E2A574: .4byte gUnk_0200AC1D
_08E2A578: .4byte gUnk_0200AC21
_08E2A57C: .4byte 0x0000FFFF
_08E2A580: .4byte gUnk_03001490
_08E2A584: .4byte gUnk_03005C38
_08E2A588: .4byte gUnk_030029B0
_08E2A58C: .4byte 0x00002604
_08E2A590:
	movs r0, #0
_08E2A592:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2A59C
sub_08E2A59C: @ 0x08E2A59C
	push {lr}
	ldr r3, _08E2A5B4 @ =gUnk_03001E0C
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _08E2A5BC
	ldr r1, _08E2A5B8 @ =gUnk_030014F0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _08E2A5BE
	.align 2, 0
_08E2A5B4: .4byte gUnk_03001E0C
_08E2A5B8: .4byte gUnk_030014F0
_08E2A5BC:
	movs r0, #0
_08E2A5BE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2A5C4
sub_08E2A5C4: @ 0x08E2A5C4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	lsls r3, r3, #0x10
	lsrs r5, r3, #0x10
	bl sub_08E2A59C
	adds r4, r0, #0
	cmp r4, #0
	bne _08E2A5EC
	ldr r0, _08E2A5E8 @ =gUnk_03001490
	b _08E2A65C
	.align 2, 0
_08E2A5E8: .4byte gUnk_03001490
_08E2A5EC:
	str r7, [r4, #8]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	mov r0, r8
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r6, #0
	bl sub_08E2A878
	strh r0, [r4, #6]
	ldr r0, _08E2A640 @ =gUnk_03002560
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _08E2A644 @ =gUnk_030014F0
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r1
	beq _08E2A65A
	ldr r6, _08E2A648 @ =gUnk_03001E4C
_08E2A618:
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r2, r5
	ldrh r0, [r1, #0x10]
	cmp r0, r8
	bls _08E2A64C
	strh r4, [r1, #2]
	ldrh r0, [r3, #4]
	strh r0, [r4, #4]
	strh r3, [r4, #2]
	strh r4, [r3, #4]
	ldr r1, [r6]
	lsls r0, r4, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r1, #2]
	cmp r0, r1
	bne _08E2A65A
	str r4, [r6]
	b _08E2A65A
	.align 2, 0
_08E2A640: .4byte gUnk_03002560
_08E2A644: .4byte gUnk_030014F0
_08E2A648: .4byte gUnk_03001E4C
_08E2A64C:
	adds r3, r1, #0
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r5
	bne _08E2A618
_08E2A65A:
	adds r0, r4, #0
_08E2A65C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2A668
sub_08E2A668: @ 0x08E2A668
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08E2A6BC @ =gUnk_030014F0
	ldr r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08E2A6D0
_08E2A67C:
	ldrh r0, [r1, #0x10]
	cmp r0, r2
	blo _08E2A6C4
_08E2A682:
	ldrh r0, [r1, #0x10]
	ldr r2, _08E2A6C0 @ =gUnk_03001E28
	cmp r0, r4
	bhs _08E2A6B4
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	str r0, [r2]
	ldr r2, _08E2A6BC @ =gUnk_030014F0
	ldr r0, [r2]
	cmp r1, r0
	beq _08E2A6A8
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _08E2A6A8
	adds r0, r1, #0
	bl sub_08E2A6E0
_08E2A6A8:
	ldr r2, _08E2A6C0 @ =gUnk_03001E28
	ldr r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08E2A682
_08E2A6B4:
	movs r0, #0
	str r0, [r2]
	b _08E2A6D6
	.align 2, 0
_08E2A6BC: .4byte gUnk_030014F0
_08E2A6C0: .4byte gUnk_03001E28
_08E2A6C4:
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r0, r3
	cmp r0, #0
	bne _08E2A67C
_08E2A6D0:
	ldr r1, _08E2A6DC @ =gUnk_03001E28
	movs r0, #0
	str r0, [r1]
_08E2A6D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2A6DC: .4byte gUnk_03001E28

	thumb_func_start sub_08E2A6E0
sub_08E2A6E0: @ 0x08E2A6E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E2A782
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _08E2A782
	cmp r0, r5
	beq _08E2A782
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _08E2A70E
	adds r0, r4, #0
	bl sub_08E2C810
_08E2A70E:
	ldr r1, _08E2A754 @ =gUnk_03001E4C
	ldr r0, [r1]
	cmp r4, r0
	bne _08E2A71C
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08E2A71C:
	ldr r1, _08E2A758 @ =gUnk_03001E28
	ldr r0, [r1]
	cmp r4, r0
	bne _08E2A72A
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08E2A72A:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _08E2A762
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r4, #6]
	cmp r0, #0
	beq _08E2A75C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E2A75E
	.align 2, 0
_08E2A754: .4byte gUnk_03001E4C
_08E2A758: .4byte gUnk_03001E28
_08E2A75C:
	adds r0, r1, r5
_08E2A75E:
	bl sub_08E2A8E0
_08E2A762:
	ldr r2, _08E2A788 @ =gUnk_030014F0
	ldr r1, _08E2A78C @ =gUnk_03001E0C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	movs r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	ldr r0, _08E2A790 @ =gUnk_0200AC25
	str r0, [r4, #8]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #6]
_08E2A782:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E2A788: .4byte gUnk_030014F0
_08E2A78C: .4byte gUnk_03001E0C
_08E2A790: .4byte gUnk_0200AC25

	thumb_func_start sub_08E2A794
sub_08E2A794: @ 0x08E2A794
	push {r4, r5, r6, lr}
	ldr r1, _08E2A800 @ =gUnk_03002560
	ldr r0, _08E2A804 @ =gUnk_030014F0
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, _08E2A808 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08E2A818
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08E2A85A
_08E2A7B4:
	ldr r4, _08E2A80C @ =gUnk_03001E4C
	ldr r5, _08E2A800 @ =gUnk_03002560
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	str r0, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E2A7D4
	ldr r0, [r2, #8]
	bl sub_08E2C80C
_08E2A7D4:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08E2A810 @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _08E2A7F0
	ldr r0, _08E2A814 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08E2A7EC
	bl sub_08E28220
_08E2A7EC:
	movs r0, #0
	strb r0, [r4]
_08E2A7F0:
	ldr r0, _08E2A800 @ =gUnk_03002560
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08E2A7B4
	b _08E2A85A
	.align 2, 0
_08E2A800: .4byte gUnk_03002560
_08E2A804: .4byte gUnk_030014F0
_08E2A808: .4byte gUnk_030013D0
_08E2A80C: .4byte gUnk_03001E4C
_08E2A810: .4byte gUnk_03005864
_08E2A814: .4byte gUnk_030014E8
_08E2A818:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08E2A85A
_08E2A820:
	ldr r4, _08E2A86C @ =gUnk_03001E4C
	ldr r5, _08E2A870 @ =gUnk_03002560
	ldr r2, [r5]
	ldrh r0, [r2, #4]
	movs r6, #0xc0
	lsls r6, r6, #0x12
	adds r0, r0, r6
	str r0, [r4]
	ldrh r1, [r2, #0x12]
	movs r0, #5
	ands r0, r1
	cmp r0, #4
	bne _08E2A840
	ldr r0, [r2, #8]
	bl sub_08E2C80C
_08E2A840:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08E2A874 @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _08E2A854
	bl sub_08E28220
	movs r0, #0
	strb r0, [r4]
_08E2A854:
	ldr r0, [r5]
	cmp r0, r6
	bne _08E2A820
_08E2A85A:
	ldr r0, _08E2A870 @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _08E2A86C @ =gUnk_03001E4C
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E2A86C: .4byte gUnk_03001E4C
_08E2A870: .4byte gUnk_03002560
_08E2A874: .4byte gUnk_03005864

	thumb_func_start sub_08E2A878
sub_08E2A878: @ 0x08E2A878
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _08E2A8D8
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _08E2A8C4 @ =gUnk_030029B0
_08E2A892:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _08E2A8C8
	cmp r0, r1
	beq _08E2A8BA
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _08E2A8C8
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_08E2A8BA:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _08E2A8DA
	.align 2, 0
_08E2A8C4: .4byte gUnk_030029B0
_08E2A8C8:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08E2A8D8
	adds r3, r1, #0
	b _08E2A892
_08E2A8D8:
	movs r0, #0
_08E2A8DA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08E2A8E0
sub_08E2A8E0: @ 0x08E2A8E0
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r3, _08E2A958 @ =gUnk_030029B0
	adds r4, r3, #0
	cmp r2, r3
	beq _08E2A8FC
_08E2A8EE:
	adds r3, r4, #0
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, r4
	bne _08E2A8EE
_08E2A8FC:
	ldrh r1, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08E2A90A
	rsbs r0, r1, #0
	strh r0, [r2, #2]
_08E2A90A:
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r0, r3, r0
	cmp r0, r2
	bne _08E2A92A
	ldrh r1, [r3, #2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _08E2A92A
	ldrh r0, [r4]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	adds r0, r1, r0
	strh r0, [r3, #2]
	adds r2, r3, #0
_08E2A92A:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _08E2A950
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08E2A950
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_08E2A950:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E2A958: .4byte gUnk_030029B0

	thumb_func_start sub_08E2A95C
sub_08E2A95C: @ 0x08E2A95C
	push {lr}
	movs r2, #0
	ldr r1, _08E2A980 @ =gUnk_030029B0
_08E2A962:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08E2A96C
	subs r2, r2, r0
_08E2A96C:
	ldrh r1, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	bne _08E2A962
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08E2A980: .4byte gUnk_030029B0

	thumb_func_start sub_08E2A984
sub_08E2A984: @ 0x08E2A984
	push {r4, r5, r6, r7, lr}
	ldr r3, _08E2A98C @ =gUnk_030029B0
	b _08E2AA32
	.align 2, 0
_08E2A98C: .4byte gUnk_030029B0
_08E2A990:
	ldrh r4, [r3, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r2, [r3]
	cmp r0, #0
	blt _08E2AA2C
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldrh r1, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _08E2A9C0
	adds r0, r4, r1
	strh r0, [r3, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _08E2AA32
_08E2A9BC:
	strh r7, [r2, #6]
	b _08E2A9F2
_08E2A9C0:
	ldr r4, _08E2AA20 @ =gUnk_03000004
	adds r6, r2, r4
	adds r7, r3, #4
	movs r0, #2
	ldrsh r5, [r3, r0]
	mov ip, r5
	strh r1, [r3, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	movs r5, #0
	movs r4, #0
_08E2A9DC:
	ldr r0, _08E2AA24 @ =gUnk_03000980
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08E2A9BC
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0x7f
	ble _08E2A9DC
_08E2A9F2:
	ldr r2, _08E2AA28 @ =0x040000D4
	str r6, [r2]
	str r7, [r2, #4]
	movs r4, #2
	ldrsh r0, [r3, r4]
	adds r0, #4
	lsrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r5, #2
	ldrsh r0, [r3, r5]
	adds r0, r3, r0
	ldrh r1, [r3]
	strh r1, [r0]
	mov r1, ip
	strh r1, [r0, #2]
	adds r3, r0, #0
	strh r3, [r3]
	b _08E2AA32
	.align 2, 0
_08E2AA20: .4byte gUnk_03000004
_08E2AA24: .4byte gUnk_03000980
_08E2AA28: .4byte 0x040000D4
_08E2AA2C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
_08E2AA32:
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	bne _08E2A990
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start nullsub_66
nullsub_66: @ 0x08E2AA44
	bx lr
	.align 2, 0

	thumb_func_start nullsub_67
nullsub_67: @ 0x08E2AA48
	bx lr
	.align 2, 0

	thumb_func_start nullsub_68
nullsub_68: @ 0x08E2AA4C
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2AA50
sub_08E2AA50: @ 0x08E2AA50
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	mov sl, r1
	ldr r0, [sp, #0x24]
	ldr r7, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	lsls r2, r2, #0x10
	lsls r3, r3, #0x10
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	movs r5, #0
	ldr r1, _08E2AAF0 @ =gUnk_03001E40
	lsrs r0, r0, #0x17
	adds r0, r0, r1
	ldrh r4, [r0]
	movs r0, #0xc
	ands r0, r4
	lsls r0, r0, #0xc
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	mov r8, r0
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r4
	lsls r0, r0, #3
	adds r0, r0, r1
	lsrs r3, r3, #0xa
	adds r0, r0, r3
	lsrs r2, r2, #0xf
	adds r6, r0, r2
	ldrb r0, [r7]
	cmp r0, #0
	beq _08E2AADC
_08E2AAA2:
	lsls r4, r5, #5
	ldr r0, [sp]
	adds r4, r0, r4
	adds r0, r7, r5
	ldrb r0, [r0]
	subs r0, #0x30
	lsls r0, r0, #5
	add r0, sl
	adds r1, r4, #0
	movs r2, #8
	bl sub_08E2C7EC
	mov r2, r8
	subs r4, r4, r2
	lsls r4, r4, #0xb
	lsrs r4, r4, #0x10
	lsls r0, r5, #1
	adds r0, r6, r0
	mov r2, sb
	lsls r1, r2, #0xc
	orrs r4, r1
	strh r4, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r7, r5
	ldrb r0, [r0]
	cmp r0, #0
	bne _08E2AAA2
_08E2AADC:
	lsls r0, r5, #5
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E2AAF0: .4byte gUnk_03001E40

	thumb_func_start sub_08E2AAF4
sub_08E2AAF4: @ 0x08E2AAF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
_08E2AB04:
	ldr r1, _08E2ABA4 @ =gUnk_03001E10
	mov ip, r1
	mov r0, sl
	lsls r5, r0, #2
	mov r0, ip
	adds r0, #1
	adds r4, r5, r0
	adds r0, #2
	adds r0, r5, r0
	str r0, [sp, #8]
	ldrb r0, [r4]
	ldr r1, [sp, #8]
	ldrb r2, [r1]
	cmp r0, r2
	bne _08E2AB34
	mov r1, ip
	adds r0, r5, r1
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08E2AB34
	b _08E2ACE2
_08E2AB34:
	mov r0, sl
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _08E2ABA8 @ =gUnk_03001E40
	add r0, r8
	ldrh r3, [r0]
	movs r1, #0xc0
	lsls r1, r1, #0x13
	movs r0, #0xf8
	lsls r0, r0, #5
	ands r0, r3
	lsls r0, r0, #3
	adds r7, r0, r1
	ldrb r4, [r4]
	mov r1, ip
	adds r0, r5, r1
	ldrb r0, [r0]
	mov sb, r0
	mov r0, sl
	cmp r0, #1
	bls _08E2AC14
	ldr r0, _08E2ABAC @ =gUnk_03002620
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08E2AC14
	add r7, sb
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r6, r0, #0x10
	cmp r2, #0xff
	bne _08E2ABB8
	ldr r0, _08E2ABB0 @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08E2ABB4 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	subs r0, r0, r4
	muls r0, r6, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	b _08E2AC60
	.align 2, 0
_08E2ABA4: .4byte gUnk_03001E10
_08E2ABA8: .4byte gUnk_03001E40
_08E2ABAC: .4byte gUnk_03002620
_08E2ABB0: .4byte gUnk_03005030
_08E2ABB4: .4byte 0x040000D4
_08E2ABB8:
	cmp r4, r2
	bls _08E2ABBE
	b _08E2ACC8
_08E2ABBE:
	ldr r0, _08E2AC0C @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08E2AC10 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, sb
	subs r0, r0, r1
	adds r0, #1
	asrs r1, r0, #1
	lsrs r0, r0, #0x1f
	adds r1, r1, r0
	asrs r1, r1, #1
	movs r0, #0x81
	lsls r0, r0, #0x18
	orrs r1, r0
	str r1, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, ip
	adds r0, #3
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	bls _08E2ABBE
	b _08E2ACC8
	.align 2, 0
_08E2AC0C: .4byte gUnk_03005030
_08E2AC10: .4byte 0x040000D4
_08E2AC14:
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	movs r6, #0x20
	ldr r0, _08E2AC70 @ =gUnk_03001E40
	add r0, r8
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08E2AC30
	movs r6, #0x40
_08E2AC30:
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #3
	cmp r0, #0xff
	bne _08E2AC7C
	ldr r0, _08E2AC74 @ =gUnk_03005030
	add r0, sl
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08E2AC78 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r6, r0
	lsls r0, r0, #1
_08E2AC60:
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08E2ACC8
	.align 2, 0
_08E2AC70: .4byte gUnk_03001E40
_08E2AC74: .4byte gUnk_03005030
_08E2AC78: .4byte 0x040000D4
_08E2AC7C:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhi _08E2ACC8
	ldr r0, _08E2AD04 @ =gUnk_03005030
	mov r8, r0
_08E2AC88:
	mov r0, sl
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08E2AD08 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, sb
	subs r0, r0, r1
	adds r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	mov r0, ip
	adds r0, #3
	adds r0, r5, r0
	ldrb r0, [r0]
	cmp r4, r0
	bls _08E2AC88
_08E2ACC8:
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _08E2AD08 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _08E2AD0C @ =gUnk_03001E10
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08E2AD10 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08E2ACE2:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _08E2ACF2
	b _08E2AB04
_08E2ACF2:
	movs r0, #1
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E2AD04: .4byte gUnk_03005030
_08E2AD08: .4byte 0x040000D4
_08E2AD0C: .4byte gUnk_03001E10
_08E2AD10: .4byte 0x85000001

	thumb_func_start sub_08E2AD14
sub_08E2AD14: @ 0x08E2AD14
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _08E2AD44 @ =gUnk_02022790
	mov r0, sp
	movs r2, #8
	bl sub_08E2C958
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _08E2AD48
	movs r0, #1
	rsbs r0, r0, #0
	b _08E2ADBA
	.align 2, 0
_08E2AD44: .4byte gUnk_02022790
_08E2AD48:
	cmp r1, #0
	bgt _08E2AD54
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_08E2AD54:
	cmp r2, #0
	bgt _08E2AD64
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08E2AD64:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _08E2AD7C
	lsls r0, r1, #0x17
	cmp r2, #0
	beq _08E2AD90
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _08E2AD8A
_08E2AD7C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	cmp r1, #0
	beq _08E2AD90
	asrs r0, r0, #0x10
_08E2AD8A:
	bl sub_08E2C848
	lsls r0, r0, #0x10
_08E2AD90:
	lsrs r2, r0, #0x10
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E2ADAC
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_08E2ADAC:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_08E2ADBA:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2ADC4
sub_08E2ADC4: @ 0x08E2ADC4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_08E2ADCE:
	lsrs r0, r1, #0xc
	adds r3, r4, r2
	lsls r1, r1, #0x14
	adds r2, #1
	cmp r0, #9
	bls _08E2ADDE
	adds r0, #0x57
	b _08E2ADE0
_08E2ADDE:
	adds r0, #0x30
_08E2ADE0:
	strb r0, [r3]
	lsrs r1, r1, #0x10
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08E2ADCE
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E2ADF8
sub_08E2ADF8: @ 0x08E2ADF8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r6, #0
_08E2AE02:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08E2C7F4
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	subs r1, r4, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r6, #2
	lsls r1, r0
	orrs r5, r1
	lsls r0, r5, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08E2AE02
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2AE38
sub_08E2AE38: @ 0x08E2AE38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _08E2AE4C
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _08E2AE60
_08E2AE4C:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _08E2AE70 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_08E2AE60:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08E2AE74
	movs r0, #0
	b _08E2AF16
	.align 2, 0
_08E2AE70: .4byte 0xFFFFBFFF
_08E2AE74:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _08E2AE8C
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _08E2AF14
_08E2AE88:
	adds r0, r1, #0
	b _08E2AF16
_08E2AE8C:
	ldr r0, _08E2AEA4 @ =gUnk_03002604
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r5, [r0]
	b _08E2AEE4
	.align 2, 0
_08E2AEA4: .4byte gUnk_03002604
_08E2AEA8:
	ldr r0, _08E2AF1C @ =gUnk_02022798
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08E2C814
	adds r1, r0, #0
	cmp r1, #1
	beq _08E2AEE4
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E2AE88
	ldr r0, _08E2AF20 @ =gUnk_03002604
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r4, #0xe]
	adds r5, r1, #0
_08E2AEE4:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r1, [r3]
	cmp r1, #0
	blt _08E2AEA8
	ldr r0, [r3]
	lsls r0, r0, #8
	ldrh r1, [r4, #0x16]
	adds r0, r0, r1
	ldrb r1, [r4, #0x1c]
	lsls r1, r1, #4
	subs r0, r0, r1
	strh r0, [r4, #0x16]
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #0xe]
	adds r0, #2
	strh r0, [r4, #0xe]
_08E2AF14:
	movs r0, #1
_08E2AF16:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08E2AF1C: .4byte gUnk_02022798
_08E2AF20: .4byte gUnk_03002604

	thumb_func_start sub_08E2AF24
sub_08E2AF24: @ 0x08E2AF24
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	movs r0, #0
	mov sl, r0
	mov sb, r0
	mov r8, r0
	ldr r0, _08E2AF78 @ =gUnk_03002934
	ldrb r0, [r0]
	str r0, [sp]
	ldrb r0, [r4, #0x1a]
	strb r0, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	mov r1, r8
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _08E2AF7C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _08E2AF80 @ =gUnk_03002604
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r7, [r0]
	cmp r6, #0
	blt _08E2B048
	b _08E2AFFC
	.align 2, 0
_08E2AF78: .4byte gUnk_03002934
_08E2AF7C: .4byte 0xFFFFBFFF
_08E2AF80: .4byte gUnk_03002604
_08E2AF84:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E2AF8E
	mov sb, sl
_08E2AF8E:
	ldr r0, _08E2AFDC @ =gUnk_02022798
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E2C814
	adds r2, r0, #0
	ldr r3, _08E2AFE0 @ =gUnk_03002934
	ldr r0, [sp]
	ldrb r1, [r3]
	cmp r0, r1
	beq _08E2AFB2
	strb r0, [r3]
	movs r1, #1
	mov r8, r1
_08E2AFB2:
	cmp r2, #1
	beq _08E2AFFC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08E2AFE8
	ldr r0, _08E2AFE4 @ =gUnk_03002604
	ldr r1, [r0]
	ldrh r0, [r4, #0xc]
	ldr r1, [r1]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strh r0, [r4, #0xe]
	adds r7, r1, #0
	b _08E2AFFC
	.align 2, 0
_08E2AFDC: .4byte gUnk_02022798
_08E2AFE0: .4byte gUnk_03002934
_08E2AFE4: .4byte gUnk_03002604
_08E2AFE8:
	mov r0, r8
	cmp r0, #0
	beq _08E2AFF8
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
_08E2AFF8:
	adds r0, r2, #0
	b _08E2B05C
_08E2AFFC:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r1, [r5]
	cmp r1, #0
	blt _08E2AF84
	ldr r0, [r5]
	lsls r0, r0, #8
	strh r0, [r4, #0x16]
	ldr r0, [r5]
	subs r6, r6, r0
	lsls r0, r6, #8
	rsbs r0, r0, #0
	strh r0, [r4, #0x16]
	mov r1, sb
	cmp r1, #0
	beq _08E2B02C
	cmp r6, #0
	ble _08E2B02C
	adds r0, r6, #0
	bl sub_08E2C7F8
	adds r6, r0, #0
	b _08E2B030
_08E2B02C:
	ldr r0, [r5]
	add sl, r0
_08E2B030:
	ldr r0, [r5, #4]
	str r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x13
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #0xe]
	adds r0, #2
	strh r0, [r4, #0xe]
	cmp r6, #0
	bge _08E2AFFC
_08E2B048:
	mov r0, r8
	cmp r0, #0
	beq _08E2B05A
	ldr r0, _08E2B06C @ =gUnk_03002934
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0x3f
	ands r1, r2
	strb r1, [r0]
_08E2B05A:
	movs r0, #1
_08E2B05C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E2B06C: .4byte gUnk_03002934

	thumb_func_start sub_08E2B070
sub_08E2B070: @ 0x08E2B070
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0xe]
	adds r0, #3
	strh r0, [r3, #0xe]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	bne _08E2B0EE
	ldr r1, [r2, #4]
	ldr r0, _08E2B0A4 @ =gUnk_03002604
	ldr r4, [r2, #8]
	ldr r6, _08E2B0A8 @ =gUnk_03001E50
	ldr r5, _08E2B0AC @ =gUnk_03002934
	cmp r1, #0
	bge _08E2B0B0
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r2, r0, r1
	lsls r0, r4, #0x16
	b _08E2B0BA
	.align 2, 0
_08E2B0A4: .4byte gUnk_03002604
_08E2B0A8: .4byte gUnk_03001E50
_08E2B0AC: .4byte gUnk_03002934
_08E2B0B0:
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r2, r0, r1
	lsls r0, r4, #0x15
_08E2B0BA:
	lsrs r4, r0, #0x10
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	str r2, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r1, [r3]
	str r1, [r0]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	strh r4, [r0, #8]
	ldrb r0, [r5]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r5]
_08E2B0EE:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2B0F8
sub_08E2B0F8: @ 0x08E2B0F8
	push {r4, lr}
	adds r4, r0, #0
	adds r3, r1, #0
	ldrh r0, [r3, #0xe]
	adds r0, #3
	strh r0, [r3, #0xe]
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	bne _08E2B146
	ldr r1, [r4, #4]
	ldr r2, _08E2B150 @ =0x040000D4
	ldr r0, _08E2B154 @ =gUnk_03002604
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0xc]
	adds r0, r0, r1
	str r0, [r2]
	ldrb r0, [r3, #0x1f]
	lsls r0, r0, #4
	ldrh r1, [r4, #0xa]
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08E2B158 @ =gUnk_03001BF0
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08E2B15C @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08E2B146:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08E2B150: .4byte 0x040000D4
_08E2B154: .4byte gUnk_03002604
_08E2B158: .4byte gUnk_03001BF0
_08E2B15C: .4byte gUnk_030013D0

	thumb_func_start sub_08E2B160
sub_08E2B160: @ 0x08E2B160
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_08E2B16C
sub_08E2B16C: @ 0x08E2B16C
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2B17C
sub_08E2B17C: @ 0x08E2B17C
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl sub_08E2822C
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08E2B190
sub_08E2B190: @ 0x08E2B190
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _08E2B1CC @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _08E2B1D0 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08E2B1D4
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _08E2B238
	.align 2, 0
_08E2B1CC: .4byte 0x040000D4
_08E2B1D0: .4byte 0x84000002
_08E2B1D4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08E2B208
	adds r2, r4, r3
	movs r0, #0x25
	adds r0, r0, r2
	mov ip, r0
	adds r2, #0x27
	ldrb r1, [r0]
	ldrb r0, [r2]
	eors r1, r0
	mov r5, ip
	strb r1, [r5]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r5]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r5]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_08E2B208:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08E2B238
	adds r2, r4, r3
	adds r3, r2, #0
	adds r3, #0x24
	adds r2, #0x26
	ldrb r1, [r3]
	ldrb r0, [r2]
	eors r1, r0
	strb r1, [r3]
	ldrb r0, [r2]
	eors r0, r1
	strb r0, [r2]
	ldrb r1, [r3]
	eors r0, r1
	rsbs r0, r0, #0
	strb r0, [r3]
	ldrb r0, [r2]
	rsbs r0, r0, #0
	strb r0, [r2]
_08E2B238:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08E2B240
sub_08E2B240: @ 0x08E2B240
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	ldrh r3, [r1, #0x10]
	adds r2, r2, r3
	strh r2, [r1, #0x10]
	ldrh r0, [r0, #6]
	ldrh r2, [r1, #0x12]
	adds r0, r0, r2
	strh r0, [r1, #0x12]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2B25C
sub_08E2B25C: @ 0x08E2B25C
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2B268
sub_08E2B268: @ 0x08E2B268
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r2, [r0, #4]
	strh r2, [r1, #0xc]
	movs r2, #0xff
	strb r2, [r1, #0x1b]
	ldrh r0, [r0, #6]
	strb r0, [r1, #0x1a]
	movs r0, #1
	rsbs r0, r0, #0
	bx lr

	thumb_func_start sub_08E2B280
sub_08E2B280: @ 0x08E2B280
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_08E2B288
sub_08E2B288: @ 0x08E2B288
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _08E2B2A0 @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_08E2B2A0: .4byte 0xFFFFCFFF

	thumb_func_start sub_08E2B2A4
sub_08E2B2A4: @ 0x08E2B2A4
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_08E2B2B4
sub_08E2B2B4: @ 0x08E2B2B4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r4, r0, #0
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	lsls r6, r6, #0x10
	lsrs r6, r6, #0xb
	ldr r0, _08E2B36C @ =gUnk_03005046
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl sub_08E2C7F4
	ldr r7, _08E2B370 @ =gUnk_02021D90
	movs r2, #0x80
	lsls r2, r2, #1
	adds r1, r4, r2
	lsls r1, r1, #1
	adds r1, r1, r7
	ldrh r1, [r1]
	mov sb, r1
	mov r1, sb
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	mov sb, r1
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r2, sb
	muls r2, r0, r2
	adds r0, r2, #0
	asrs r0, r0, #8
	strh r0, [r6]
	mov r0, sl
	mov r1, r8
	bl sub_08E2C7F4
	lsls r4, r4, #1
	adds r4, r4, r7
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x16
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #8]
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	mov r0, sl
	adds r1, r5, #0
	bl sub_08E2C7F4
	movs r2, #0
	ldrsh r1, [r4, r2]
	rsbs r1, r1, #0
	asrs r1, r1, #6
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r6, #0x10]
	mov r0, sl
	adds r1, r5, #0
	bl sub_08E2C7F4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	asrs r0, r0, #8
	strh r0, [r6, #0x18]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2B36C: .4byte gUnk_03005046
_08E2B370: .4byte gUnk_02021D90

	thumb_func_start sub_08E2B374
sub_08E2B374: @ 0x08E2B374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x60
	str r0, [sp, #0x24]
	mov sb, r1
	ldr r2, [r0, #4]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08E2B390
	b _08E2B62E
_08E2B390:
	lsrs r0, r2, #0x1c
	ldr r1, _08E2B404 @ =gUnk_03002604
	ldr r3, [sp, #0x24]
	ldrh r5, [r3, #0xc]
	add r4, sp, #0x20
	ldr r3, [r3, #8]
	ldr r6, _08E2B408 @ =gUnk_03005046
	mov r8, r6
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x2c]
	ldr r6, _08E2B40C @ =gUnk_02021D90
	mov sl, r6
	mov r7, sb
	ldrh r7, [r7]
	add r6, sp, #0x5c
	strh r7, [r6]
	mov r7, sp
	adds r7, #0xa
	str r7, [sp, #0x30]
	subs r6, #0x50
	str r6, [sp, #0x34]
	mov r7, sb
	ldrh r7, [r7, #2]
	mov ip, r7
	adds r6, #2
	str r6, [sp, #0x38]
	mov r7, sb
	ldrh r6, [r7, #4]
	mov r7, sp
	strh r6, [r7, #0x3c]
	adds r7, #2
	str r7, [sp, #0x40]
	mov r6, sp
	adds r6, #4
	str r6, [sp, #0x44]
	adds r7, #4
	str r7, [sp, #0x48]
	adds r6, #0x14
	str r6, [sp, #0x4c]
	adds r7, #0x14
	str r7, [sp, #0x50]
	adds r6, #4
	str r6, [sp, #0x54]
	adds r7, #4
	str r7, [sp, #0x58]
	cmp r0, #0
	bne _08E2B410
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r5, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08E2B41E
	.align 2, 0
_08E2B404: .4byte gUnk_03002604
_08E2B408: .4byte gUnk_03005046
_08E2B40C: .4byte gUnk_02021D90
_08E2B410:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r5, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08E2B41E:
	movs r0, #0x1f
	ands r3, r0
	strh r3, [r4]
	ldrh r4, [r4]
	lsls r4, r4, #5
	add r4, r8
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r1, _08E2B5A4 @ =0x000003FF
	add r2, sp, #0x5c
	ldrh r2, [r2]
	ands r1, r2
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r1, r3
	lsls r0, r0, #1
	add r0, sl
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	ldr r5, [sp, #0x28]
	strh r0, [r5]
	ldr r6, [sp, #0x30]
	lsls r1, r1, #1
	add r1, sl
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x16
	strh r0, [r6]
	ldr r0, [sp, #0x34]
	mov sl, r0
	mov r1, ip
	strh r1, [r0]
	ldr r2, [sp, #0x38]
	mov r8, r2
	mov r3, sp
	ldrh r3, [r3, #0x3c]
	strh r3, [r2]
	movs r5, #0x80
	lsls r5, r5, #9
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08E2C7F4
	ldr r2, [sp, #0x28]
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4]
	mov r3, sl
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08E2C7F4
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #8]
	mov r0, r8
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08E2C7F4
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x10]
	mov r2, r8
	ldrh r1, [r2]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	adds r0, r5, #0
	bl sub_08E2C7F4
	ldr r3, [sp, #0x28]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r4, #0x18]
	mov r5, sb
	ldrh r0, [r5, #2]
	movs r6, #2
	ldrsh r3, [r5, r6]
	cmp r3, #0
	bge _08E2B4FC
	rsbs r0, r0, #0
	mov r1, sl
	strh r0, [r1]
_08E2B4FC:
	mov r2, sb
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08E2B50E
	rsbs r0, r4, #0
	mov r6, r8
	strh r0, [r6]
_08E2B50E:
	mov r2, sp
	ldr r0, [sp, #0x2c]
	ldrh r1, [r0]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r5, [sp, #0x34]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	ldr r2, [sp, #0x40]
	ldr r6, [sp, #0x30]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	rsbs r1, r1, #0
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	strh r0, [r2]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r5, [sp, #0x38]
	ldrh r0, [r5]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r6, sl
	strh r0, [r6]
	ldr r0, [sp, #0x48]
	mov r8, r0
	ldr r5, [sp, #0x2c]
	ldrh r1, [r5]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	ldr r6, [sp, #0x38]
	ldrh r0, [r6]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r1, r0
	asrs r0, r0, #8
	mov r1, r8
	strh r0, [r1]
	movs r6, #0x80
	lsls r6, r6, #1
	ldr r5, [sp, #0x4c]
	strh r6, [r5]
	movs r0, #0
	ldr r1, [sp, #0x50]
	strh r0, [r1]
	ldr r5, [sp, #0x54]
	strh r0, [r5]
	adds r0, r6, #0
	ldr r6, [sp, #0x58]
	strh r0, [r6]
	mov r1, sb
	movs r5, #6
	ldrsh r0, [r1, r5]
	str r0, [sp, #0x10]
	movs r6, #8
	ldrsh r0, [r1, r6]
	str r0, [sp, #0x14]
	cmp r3, #0
	ble _08E2B5A8
	ldrh r5, [r7, #8]
	b _08E2B5B2
	.align 2, 0
_08E2B5A4: .4byte 0x000003FF
_08E2B5A8:
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08E2B5B2:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _08E2B5BC
	ldrh r4, [r7, #0xa]
	b _08E2B5C6
_08E2B5BC:
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08E2B5C6:
	mov r0, sp
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	lsls r5, r5, #0x10
	asrs r5, r5, #0x10
	ldrh r3, [r7, #4]
	lsrs r3, r3, #1
	subs r5, r5, r3
	adds r1, r0, #0
	muls r1, r5, r1
	ldrh r2, [r2]
	lsls r2, r2, #0x10
	asrs r2, r2, #0x10
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	ldrh r0, [r7, #6]
	lsrs r0, r0, #1
	lsls r6, r0, #0x10
	subs r4, r4, r0
	adds r0, r2, #0
	muls r0, r4, r0
	adds r1, r1, r0
	lsls r3, r3, #8
	adds r1, r1, r3
	asrs r1, r1, #8
	ldr r0, [sp, #0x10]
	subs r0, r0, r1
	str r0, [sp, #0x10]
	mov r7, sl
	ldrh r0, [r7]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	adds r1, r0, #0
	muls r1, r5, r1
	mov r2, r8
	ldrh r0, [r2]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	muls r0, r4, r0
	adds r1, r1, r0
	lsrs r6, r6, #8
	adds r1, r1, r6
	asrs r1, r1, #8
	ldr r0, [sp, #0x14]
	subs r0, r0, r1
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	ldr r3, [sp, #0x24]
	strh r0, [r3, #0x10]
	ldr r0, [sp, #0x14]
	strh r0, [r3, #0x12]
_08E2B62E:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E2B640
sub_08E2B640: @ 0x08E2B640
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	movs r0, #0
	str r0, [sp, #0x18]
	movs r1, #0
	str r1, [sp, #0x1c]
	movs r2, #0
	str r2, [sp, #0x20]
	movs r3, #0
	str r3, [sp, #0x24]
	movs r5, #0
	str r5, [sp, #0x28]
	ldr r2, [r6, #4]
	subs r0, #1
	cmp r2, r0
	bne _08E2B66C
	b _08E2BACC
_08E2B66C:
	lsrs r0, r2, #0x1c
	ldr r1, _08E2B68C @ =gUnk_03002604
	ldrh r3, [r6, #0xc]
	ldr r4, [r6, #8]
	cmp r0, #0
	bne _08E2B690
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08E2B69E
	.align 2, 0
_08E2B68C: .4byte gUnk_03002604
_08E2B690:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08E2B69E:
	ldrh r0, [r7, #2]
	strb r0, [r6, #0x1e]
	movs r1, #0x10
	ldrsh r0, [r6, r1]
	mov sb, r0
	movs r3, #0x12
	ldrsh r2, [r6, r3]
	mov r8, r2
	adds r2, r4, #0
	movs r0, #0x80
	lsls r0, r0, #0xa
	ands r0, r2
	cmp r0, #0
	beq _08E2B6D0
	ldr r0, _08E2B730 @ =gUnk_03001384
	movs r5, #0
	ldrsh r1, [r0, r5]
	mov r3, sb
	subs r3, r3, r1
	mov sb, r3
	movs r5, #2
	ldrsh r0, [r0, r5]
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
_08E2B6D0:
	ldrh r3, [r7, #4]
	str r3, [sp, #8]
	ldrh r5, [r7, #6]
	str r5, [sp, #0xc]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08E2B734
	movs r1, #0x80
	lsls r1, r1, #1
	adds r0, r1, #0
	ldr r3, [sp, #0x18]
	orrs r3, r0
	str r3, [sp, #0x18]
	movs r0, #0x1f
	ands r0, r2
	lsls r0, r0, #9
	ldr r5, [sp, #0x1c]
	orrs r5, r0
	str r5, [sp, #0x1c]
	movs r0, #0x40
	ands r0, r2
	cmp r0, #0
	beq _08E2B7A0
	ldr r1, [sp, #8]
	lsrs r0, r1, #1
	mov r2, sb
	subs r2, r2, r0
	mov sb, r2
	ldr r3, [sp, #0xc]
	lsrs r0, r3, #1
	mov r5, r8
	subs r5, r5, r0
	mov r8, r5
	lsls r1, r1, #1
	str r1, [sp, #8]
	lsls r3, r3, #1
	str r3, [sp, #0xc]
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	ldr r2, [sp, #0x18]
	orrs r2, r0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	str r0, [sp, #0x18]
	b _08E2B7A0
	.align 2, 0
_08E2B730: .4byte gUnk_03001384
_08E2B734:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08E2B74E
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	ldr r5, [sp, #0xc]
	subs r0, r5, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	b _08E2B758
_08E2B74E:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	mov r5, r8
	subs r5, r5, r0
	mov r8, r5
_08E2B758:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08E2B772
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, [sp, #8]
	subs r0, r3, r0
	mov r5, sb
	subs r5, r5, r0
	mov sb, r5
	b _08E2B77C
_08E2B772:
	movs r1, #8
	ldrsh r0, [r7, r1]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
_08E2B77C:
	lsrs r0, r2, #0xb
	movs r4, #1
	ands r0, r4
	ldrh r1, [r7]
	lsls r3, r1, #0x10
	lsrs r1, r3, #0x1f
	cmp r0, r1
	beq _08E2B790
	movs r5, #1
	str r5, [sp, #0x24]
_08E2B790:
	lsrs r1, r2, #0xa
	lsrs r0, r3, #0x1e
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08E2B7A0
	movs r0, #1
	str r0, [sp, #0x28]
_08E2B7A0:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08E2B7CA
	adds r0, r1, #0
	add r0, sb
	cmp r0, #0
	bge _08E2B7B0
	b _08E2BACC
_08E2B7B0:
	mov r2, sb
	cmp r2, #0xf0
	ble _08E2B7B8
	b _08E2BACC
_08E2B7B8:
	ldr r0, [sp, #0xc]
	add r0, r8
	cmp r0, #0
	bge _08E2B7C2
	b _08E2BACC
_08E2B7C2:
	mov r3, r8
	cmp r3, #0xa0
	ble _08E2B7CA
	b _08E2BACC
_08E2B7CA:
	ldrb r2, [r6, #0x1f]
	lsls r2, r2, #0xc
	ldr r5, [sp, #0x20]
	adds r2, r5, r2
	lsls r2, r2, #0x10
	ldr r1, [r6, #8]
	movs r0, #0xc0
	lsls r0, r0, #1
	ands r0, r1
	lsls r0, r0, #3
	ldr r3, [sp, #0x18]
	orrs r3, r0
	str r3, [sp, #0x18]
	movs r0, #0xc0
	lsls r0, r0, #6
	ands r1, r0
	lsls r1, r1, #0xe
	orrs r1, r2
	lsrs r1, r1, #0x10
	str r1, [sp, #0x20]
	ldr r0, _08E2B9D4 @ =gUnk_03002604
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _08E2B9D8 @ =gUnk_03001480
	ldrb r0, [r0]
	strb r0, [r6, #0x1d]
	movs r5, #0
	str r5, [sp, #0x10]
	ldrh r0, [r7, #2]
	cmp r5, r0
	blo _08E2B814
	b _08E2B992
_08E2B814:
	ldr r2, _08E2B9DC @ =0x040000D4
	ldrh r0, [r7]
	ldr r3, _08E2B9E0 @ =0x00003FFF
	adds r1, r3, #0
	ands r1, r0
	ldr r5, [sp, #0x10]
	adds r1, r1, r5
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, [sp, #0x14]
	adds r0, r1, r0
	str r0, [r2]
	mov r3, sp
	str r3, [r2, #4]
	ldr r0, _08E2B9E4 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sp
	ldrh r5, [r0, #2]
	ldr r1, _08E2B9E8 @ =0x000001FF
	adds r0, r1, #0
	adds r4, r0, #0
	ands r4, r5
	cmp r4, #0xff
	ble _08E2B84C
	ldr r2, _08E2B9EC @ =0xFFFFFE00
	adds r4, r4, r2
_08E2B84C:
	mov r0, sp
	ldrb r3, [r0]
	cmp r3, #0x7f
	ble _08E2B858
	ldr r0, _08E2B9F0 @ =0xFFFFFF00
	adds r3, r3, r0
_08E2B858:
	mov r2, sp
	movs r1, #0xfe
	lsls r1, r1, #8
	adds r0, r1, #0
	ands r0, r5
	strh r0, [r2, #2]
	mov r0, sp
	ldrh r0, [r0]
	ands r1, r0
	strh r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r1, r0
	lsrs r1, r1, #0xc
	ldrh r5, [r2, #2]
	ands r0, r5
	lsrs r0, r0, #0xe
	orrs r1, r0
	ldr r2, _08E2B9F4 @ =gUnk_020227C8
	lsls r1, r1, #1
	adds r0, r2, #1
	adds r0, r1, r0
	ldrb r0, [r0]
	mov ip, r0
	adds r1, r1, r2
	ldrb r1, [r1]
	mov sl, r1
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	orrs r0, r1
	cmp r0, #0
	beq _08E2B8D0
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08E2B8B2
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	eors r0, r5
	strh r0, [r1, #2]
	ldr r5, [sp, #0xc]
	mov r1, ip
	subs r0, r5, r1
	subs r3, r0, r3
_08E2B8B2:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _08E2B8D0
	mov r2, sp
	mov r0, sp
	ldrh r0, [r0, #2]
	movs r5, #0x80
	lsls r5, r5, #5
	adds r1, r5, #0
	eors r0, r1
	strh r0, [r2, #2]
	ldr r1, [sp, #8]
	mov r2, sl
	subs r0, r1, r2
	subs r4, r0, r4
_08E2B8D0:
	add r3, r8
	mov r5, ip
	adds r0, r3, r5
	cmp r0, #0
	blt _08E2B980
	cmp r3, #0xa0
	bgt _08E2B980
	add r4, sb
	mov r1, sl
	adds r0, r4, r1
	cmp r0, #0
	blt _08E2B980
	cmp r4, #0xf0
	bgt _08E2B980
	mov r2, sp
	mov r1, sp
	movs r0, #0xff
	ands r3, r0
	ldrh r1, [r1]
	adds r0, r3, r1
	strh r0, [r2]
	mov r1, sp
	ldr r3, _08E2B9E8 @ =0x000001FF
	adds r0, r3, #0
	ands r4, r0
	ldrh r0, [r1, #2]
	adds r0, r0, r4
	strh r0, [r2, #2]
	mov r0, sp
	ldrh r1, [r0]
	ldr r0, [sp, #0x18]
	orrs r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r1, [r0, #2]
	ldr r0, [sp, #0x1c]
	orrs r0, r1
	strh r0, [r2, #2]
	mov r1, sp
	mov r0, sp
	ldrh r0, [r0, #4]
	ldr r3, [sp, #0x20]
	orrs r3, r0
	strh r3, [r1, #4]
	mov r0, sp
	ldrh r0, [r0]
	movs r5, #0x80
	lsls r5, r5, #6
	adds r1, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08E2B944
	ldr r0, _08E2B9F8 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r2, #4]
_08E2B944:
	mov r2, sp
	mov r1, sp
	ldr r0, [r6]
	ldr r3, _08E2B9FC @ =0xF9FF0000
	adds r0, r0, r3
	lsrs r0, r0, #5
	ldrh r1, [r1, #4]
	adds r0, r0, r1
	strh r0, [r2, #4]
	ldrh r0, [r6, #0x14]
	movs r5, #0xf8
	lsls r5, r5, #3
	adds r1, r5, #0
	ands r0, r1
	lsrs r0, r0, #6
	bl sub_08E2BAE4
	adds r1, r0, #0
	ldr r0, _08E2BA00 @ =gUnk_03005C38
	ldr r0, [r0]
	cmp r0, r1
	bne _08E2B972
	b _08E2BACC
_08E2B972:
	ldr r0, _08E2B9DC @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _08E2B9E4 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08E2B980:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r3, [r7, #2]
	cmp r0, r3
	bhs _08E2B992
	b _08E2B814
_08E2B992:
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08E2B99C
	b _08E2BACC
_08E2B99C:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _08E2B9AA
	b _08E2BACC
_08E2B9AA:
	ldr r0, _08E2BA04 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	ldr r0, [r7, #0xc]
	ldr r1, _08E2BA08 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, _08E2B9D4 @ =gUnk_03002604
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r3, r0, r1
	ldr r0, [r3]
	cmp r0, #0
	blt _08E2BA0C
	movs r5, #0x20
	mov sb, r5
	ldr r2, [r2, #0x10]
	b _08E2BA12
	.align 2, 0
_08E2B9D4: .4byte gUnk_03002604
_08E2B9D8: .4byte gUnk_03001480
_08E2B9DC: .4byte 0x040000D4
_08E2B9E0: .4byte 0x00003FFF
_08E2B9E4: .4byte 0x80000003
_08E2B9E8: .4byte 0x000001FF
_08E2B9EC: .4byte 0xFFFFFE00
_08E2B9F0: .4byte 0xFFFFFF00
_08E2B9F4: .4byte gUnk_020227C8
_08E2B9F8: .4byte 0x000003FF
_08E2B9FC: .4byte 0xF9FF0000
_08E2BA00: .4byte gUnk_03005C38
_08E2BA04: .4byte 0xFBFFFFFF
_08E2BA08: .4byte 0x00FFFFFF
_08E2BA0C:
	movs r1, #0x40
	mov sb, r1
	ldr r2, [r2, #0x14]
_08E2BA12:
	mov r4, sb
	muls r0, r4, r0
	adds r5, r2, r0
	adds r3, #4
	ldr r6, [r6]
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r8, r1
	bhs _08E2BA98
	ldr r0, _08E2BA48 @ =gUnk_03001E50
	mov ip, r0
	ldr r7, _08E2BA4C @ =gUnk_03002934
_08E2BA2C:
	ldm r3!, {r0}
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r2
	mov sl, r0
	adds r0, r5, r4
	cmp r0, sl
	bne _08E2BA50
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08E2BA88
	.align 2, 0
_08E2BA48: .4byte gUnk_03001E50
_08E2BA4C: .4byte gUnk_03002934
_08E2BA50:
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	str r5, [r0]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	mov r1, ip
	adds r1, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r7]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	add r0, ip
	strh r4, [r0, #8]
	ldrb r0, [r7]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r7]
	adds r6, r6, r4
	mov r4, sb
	mov r5, sl
_08E2BA88:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [sp, #0x2c]
	cmp r8, r0
	blo _08E2BA2C
_08E2BA98:
	ldr r3, _08E2BADC @ =gUnk_03001E50
	ldr r2, _08E2BAE0 @ =gUnk_03002934
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	str r5, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r1, r3, #4
	adds r0, r0, r1
	str r6, [r0]
	ldrb r1, [r2]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	strh r4, [r0, #8]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r2]
_08E2BACC:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2BADC: .4byte gUnk_03001E50
_08E2BAE0: .4byte gUnk_03002934

	thumb_func_start sub_08E2BAE4
sub_08E2BAE4: @ 0x08E2BAE4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _08E2BAF0
	movs r2, #0x1f
_08E2BAF0:
	ldr r3, _08E2BB00 @ =gUnk_03001480
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08E2BB08
	ldr r0, _08E2BB04 @ =gUnk_03005C38
	ldr r0, [r0]
	b _08E2BB60
	.align 2, 0
_08E2BB00: .4byte gUnk_03001480
_08E2BB04: .4byte gUnk_03005C38
_08E2BB08:
	ldr r0, _08E2BB30 @ =gUnk_030013E0
	adds r5, r2, r0
	ldrb r0, [r5]
	ldr r4, _08E2BB34 @ =gUnk_03002150
	ldrb r1, [r3]
	ldr r6, _08E2BB38 @ =gUnk_03005010
	adds r7, r4, #0
	subs r7, #8
	cmp r0, #0xff
	bne _08E2BB3C
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r3]
	strb r0, [r5]
	adds r1, r2, r6
	ldrb r0, [r3]
	strb r0, [r1]
	b _08E2BB54
	.align 2, 0
_08E2BB30: .4byte gUnk_030013E0
_08E2BB34: .4byte gUnk_03002150
_08E2BB38: .4byte gUnk_03005010
_08E2BB3C:
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #6]
	adds r2, r2, r6
	ldrb r0, [r2]
	lsls r0, r0, #3
	adds r0, r0, r4
	ldrb r1, [r3]
	strb r1, [r0, #6]
	ldrb r0, [r3]
	strb r0, [r2]
_08E2BB54:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r7
_08E2BB60:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2BB68
sub_08E2BB68: @ 0x08E2BB68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r6, _08E2BC14 @ =gUnk_03005040
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r4, #0
_08E2BB7E:
	ldr r1, _08E2BC18 @ =gUnk_030013E0
	mov sl, r1
	adds r0, r4, r1
	ldrb r2, [r0]
	lsls r2, r2, #0x18
	movs r3, #1
	rsbs r3, r3, #0
	adds r7, r3, #0
	movs r0, #0xff
	lsls r0, r0, #0x18
	cmp r2, r0
	beq _08E2BBCA
	ldr r0, _08E2BC1C @ =gUnk_03002150
	mov sb, r0
	ldr r1, _08E2BC20 @ =gUnk_03002580
	mov ip, r1
_08E2BB9E:
	ldr r1, _08E2BC24 @ =0x040000D4
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	add r3, sb
	str r3, [r1]
	str r5, [r1, #4]
	ldr r0, _08E2BC28 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	adds r5, #8
	add r2, ip
	mov r1, r8
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	strb r1, [r2]
	ldrb r2, [r3, #6]
	lsls r2, r2, #0x18
	lsls r0, r7, #0x18
	cmp r2, r0
	bne _08E2BB9E
_08E2BBCA:
	adds r4, #1
	cmp r4, #0x1f
	ble _08E2BB7E
	ldr r7, _08E2BC2C @ =gUnk_030013D0
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	ldr r1, _08E2BC30 @ =gUnk_03001480
	cmp r0, #0
	beq _08E2BC3C
	ldrb r4, [r1]
	lsls r0, r4, #3
	ldr r2, _08E2BC14 @ =gUnk_03005040
	adds r5, r0, r2
	ldr r2, _08E2BC34 @ =gUnk_03002990
	ldrb r3, [r2]
	cmp r4, r3
	bge _08E2BCBC
_08E2BBF0:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08E2BC24 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08E2BC38 @ =0x81000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r5, #8
	adds r4, #1
	ldrb r0, [r2]
	cmp r4, r0
	blt _08E2BBF0
	b _08E2BCBC
	.align 2, 0
_08E2BC14: .4byte gUnk_03005040
_08E2BC18: .4byte gUnk_030013E0
_08E2BC1C: .4byte gUnk_03002150
_08E2BC20: .4byte gUnk_03002580
_08E2BC24: .4byte 0x040000D4
_08E2BC28: .4byte 0x80000003
_08E2BC2C: .4byte gUnk_030013D0
_08E2BC30: .4byte gUnk_03001480
_08E2BC34: .4byte gUnk_03002990
_08E2BC38: .4byte 0x81000003
_08E2BC3C:
	movs r2, #0x80
	lsls r2, r2, #3
	ands r2, r3
	cmp r2, #0
	beq _08E2BCB8
	adds r5, r1, #0
	ldrb r0, [r5]
	subs r4, r0, #1
	movs r2, #0x7f
	cmp r4, #0
	blt _08E2BC6E
_08E2BC52:
	ldr r1, _08E2BCA4 @ =0x040000D4
	lsls r0, r4, #3
	adds r0, r0, r6
	str r0, [r1]
	lsls r0, r2, #3
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08E2BCA8 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r4, #1
	subs r2, #1
	cmp r4, #0
	bge _08E2BC52
_08E2BC6E:
	ldr r3, _08E2BCAC @ =gUnk_03002990
	ldrb r1, [r5]
	movs r0, #0x80
	subs r0, r0, r1
	strb r0, [r3]
	movs r4, #0
	cmp r4, r0
	bge _08E2BCBC
_08E2BC7E:
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08E2BCA4 @ =0x040000D4
	str r1, [r2]
	lsls r0, r4, #3
	ldr r1, _08E2BCB0 @ =gUnk_03005040
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08E2BCB4 @ =0x81000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blt _08E2BC7E
	b _08E2BCBC
	.align 2, 0
_08E2BCA4: .4byte 0x040000D4
_08E2BCA8: .4byte 0x80000003
_08E2BCAC: .4byte gUnk_03002990
_08E2BCB0: .4byte gUnk_03005040
_08E2BCB4: .4byte 0x81000003
_08E2BCB8:
	ldr r0, _08E2BCF0 @ =gUnk_03002990
	strb r2, [r0]
_08E2BCBC:
	ldr r1, _08E2BCF4 @ =gUnk_03001480
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	add r6, sp, #8
	cmp r0, #0
	beq _08E2BD00
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _08E2BCF8 @ =0x05000008
	mov r1, sl
	adds r2, r5, #0
	bl sub_08E2C7F0
	str r4, [sp, #8]
	ldr r1, _08E2BCFC @ =gUnk_03005010
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08E2C7F0
	b _08E2BD20
	.align 2, 0
_08E2BCF0: .4byte gUnk_03002990
_08E2BCF4: .4byte gUnk_03001480
_08E2BCF8: .4byte 0x05000008
_08E2BCFC: .4byte gUnk_03005010
_08E2BD00:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _08E2BD30 @ =0x040000D4
	str r6, [r0]
	mov r2, sl
	str r2, [r0, #4]
	ldr r2, _08E2BD34 @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	str r6, [r0]
	ldr r1, _08E2BD38 @ =gUnk_03005010
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08E2BD20:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2BD30: .4byte 0x040000D4
_08E2BD34: .4byte 0x85000008
_08E2BD38: .4byte gUnk_03005010

	thumb_func_start nullsub_08
nullsub_08: @ 0x08E2BD3C
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2BD40
sub_08E2BD40: @ 0x08E2BD40
	ldr r0, _08E2BD48 @ =gUnk_03005C38
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08E2BD48: .4byte gUnk_03005C38

	thumb_func_start nullsub_69
nullsub_69: @ 0x08E2BD4C
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2BD50
sub_08E2BD50: @ 0x08E2BD50
	movs r0, #0
	bx lr

	thumb_func_start sub_08E2BD54
sub_08E2BD54: @ 0x08E2BD54
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _08E2BE10 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E2BE14 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2BE18 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08E2BE1C @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08E2BE20 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _08E2BE24 @ =gUnk_030059F0
	ldr r2, _08E2BE28 @ =0x0500007A
	mov r0, sp
	adds r1, r4, #0
	bl sub_08E2C7F0
	ldr r0, _08E2BE2C @ =gUnk_0200C864
	ldr r1, _08E2BE30 @ =gUnk_03005BE0
	ldr r2, _08E2BE34 @ =0x04000010
	bl sub_08E2C7F0
	ldr r0, _08E2BE38 @ =gUnk_0200C8A4
	ldr r1, _08E2BE3C @ =gUnk_03005870
	ldr r2, _08E2BE40 @ =0x04000060
	bl sub_08E2C7F0
	strb r5, [r4, #2]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r4, #0x14]
	adds r0, r4, #0
	adds r0, #0x60
	str r0, [r4, #0x28]
	adds r0, #0x1c
	str r0, [r4, #0x2c]
	movs r5, #0
_08E2BDBC:
	ldr r4, _08E2BE24 @ =gUnk_030059F0
	lsls r3, r5, #2
	adds r1, r4, #0
	adds r1, #0x30
	adds r1, r3, r1
	movs r0, #0x54
	adds r2, r5, #0
	muls r2, r0, r2
	adds r0, r4, #0
	adds r0, #0x98
	adds r0, r2, r0
	str r0, [r1]
	adds r1, r4, #0
	adds r1, #0x40
	adds r1, r3, r1
	adds r0, r4, #0
	adds r0, #0xb4
	adds r0, r2, r0
	str r0, [r1]
	adds r0, r4, #0
	adds r0, #0x50
	adds r3, r3, r0
	adds r0, #0x80
	adds r2, r2, r0
	str r2, [r3]
	adds r5, #1
	cmp r5, #3
	ble _08E2BDBC
	ldr r3, _08E2BE10 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08E2BE14 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E2BE10: .4byte 0x04000208
_08E2BE14: .4byte 0x04000200
_08E2BE18: .4byte 0x0000FF3F
_08E2BE1C: .4byte 0x04000134
_08E2BE20: .4byte 0x00004003
_08E2BE24: .4byte gUnk_030059F0
_08E2BE28: .4byte 0x0500007A
_08E2BE2C: .4byte gUnk_0200C864
_08E2BE30: .4byte gUnk_03005BE0
_08E2BE34: .4byte 0x04000010
_08E2BE38: .4byte gUnk_0200C8A4
_08E2BE3C: .4byte gUnk_03005870
_08E2BE40: .4byte 0x04000060

	thumb_func_start sub_08E2BE44
sub_08E2BE44: @ 0x08E2BE44
	push {lr}
	ldr r2, _08E2BE5C @ =gUnk_030059F0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08E2BE56
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_08E2BE56:
	pop {r0}
	bx r0
	.align 2, 0
_08E2BE5C: .4byte gUnk_030059F0

	thumb_func_start sub_08E2BE60
sub_08E2BE60: @ 0x08E2BE60
	ldr r3, _08E2BE94 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08E2BE98 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2BE9C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08E2BEA0 @ =0x04000128
	ldr r2, _08E2BEA4 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08E2BEA8 @ =0x0000BBBC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _08E2BEAC @ =gUnk_030059F0
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_08E2BE94: .4byte 0x04000208
_08E2BE98: .4byte 0x04000200
_08E2BE9C: .4byte 0x0000FF3F
_08E2BEA0: .4byte 0x04000128
_08E2BEA4: .4byte 0x00002003
_08E2BEA8: .4byte 0x0000BBBC
_08E2BEAC: .4byte gUnk_030059F0

	thumb_func_start sub_08E2BEB0
sub_08E2BEB0: @ 0x08E2BEB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08E2BED4 @ =0x04000128
	ldr r7, [r5]
	ldr r6, _08E2BED8 @ =gUnk_030059F0
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _08E2BF4C
	cmp r0, #1
	bgt _08E2BEDC
	cmp r0, #0
	beq _08E2BEE2
	b _08E2BF96
	.align 2, 0
_08E2BED4: .4byte 0x04000128
_08E2BED8: .4byte gUnk_030059F0
_08E2BEDC:
	cmp r0, #2
	beq _08E2BF88
	b _08E2BF96
_08E2BEE2:
	movs r1, #0x30
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08E2BF48
	movs r0, #0x88
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne _08E2BF96
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08E2BF48
	ldr r1, [r6, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E2BF48
	ldr r3, _08E2BF6C @ =0x04000208
	strh r2, [r3]
	ldr r2, _08E2BF70 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2BF74 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldrb r1, [r5, #1]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r5, #1]
	ldr r1, _08E2BF78 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08E2BF7C @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r6]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_08E2BF48:
	movs r0, #1
	strb r0, [r6, #1]
_08E2BF4C:
	ldr r2, _08E2BF80 @ =gUnk_030059F0
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08E2BF88
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08E2BF88
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bhi _08E2BF84
	adds r0, #1
	strb r0, [r2, #0xa]
	b _08E2BF88
	.align 2, 0
_08E2BF6C: .4byte 0x04000208
_08E2BF70: .4byte 0x04000200
_08E2BF74: .4byte 0x0000FF7F
_08E2BF78: .4byte 0x04000202
_08E2BF7C: .4byte 0x0000BBBC
_08E2BF80: .4byte gUnk_030059F0
_08E2BF84:
	movs r0, #2
	strb r0, [r2, #1]
_08E2BF88:
	mov r0, ip
	bl sub_08E2C0D8
	mov r0, sb
	mov r1, r8
	bl sub_08E2C008
_08E2BF96:
	ldr r3, _08E2BFC8 @ =gUnk_030059F0
	ldrb r0, [r3, #0xb]
	adds r0, #1
	strb r0, [r3, #0xb]
	ldrb r2, [r3, #3]
	ldrb r1, [r3, #8]
	movs r0, #0x10
	ands r0, r1
	orrs r2, r0
	movs r0, #0x20
	ands r0, r1
	orrs r2, r0
	movs r0, #0x40
	ands r0, r1
	orrs r2, r0
	ldrb r0, [r3, #2]
	lsls r1, r0, #8
	ldrb r0, [r3]
	cmp r0, #8
	bne _08E2BFCC
	movs r0, #0x80
	orrs r0, r1
	orrs r0, r2
	b _08E2BFD0
	.align 2, 0
_08E2BFC8: .4byte gUnk_030059F0
_08E2BFCC:
	adds r0, r2, #0
	orrs r0, r1
_08E2BFD0:
	adds r1, r0, #0
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _08E2BFDE
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
_08E2BFDE:
	ldrb r0, [r3, #0xa]
	lsrs r0, r0, #3
	lsls r2, r0, #0xf
	lsls r0, r7, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08E2BFF6
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b _08E2BFFA
_08E2BFF6:
	adds r0, r1, #0
	orrs r0, r2
_08E2BFFA:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E2C008
sub_08E2C008: @ 0x08E2C008
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08E2C0C8 @ =gUnk_030059F0
	ldr r4, [r5, #0x28]
	movs r2, #1
	ands r1, r2
	lsls r1, r1, #4
	ldrb r3, [r4, #1]
	movs r2, #0x11
	rsbs r2, r2, #0
	ands r2, r3
	orrs r2, r1
	strb r2, [r4, #1]
	ldr r6, [r5, #0x28]
	ldr r1, _08E2C0CC @ =gUnk_03005C20
	ldrb r1, [r1, #3]
	movs r3, #1
	adds r2, r3, #0
	ands r2, r1
	lsls r2, r2, #5
	ldrb r4, [r6, #1]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r1, r4
	orrs r1, r2
	strb r1, [r6, #1]
	ldr r4, [r5, #0x28]
	ldrb r1, [r5, #8]
	lsls r1, r1, #0x19
	lsrs r1, r1, #0x1f
	ands r3, r1
	lsls r3, r3, #6
	ldrb r2, [r4, #1]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r1, r2
	orrs r1, r3
	strb r1, [r4, #1]
	ldr r2, [r5, #0x28]
	ldrb r1, [r5, #0xb]
	strb r1, [r2]
	ldr r4, [r5, #0x28]
	ldrb r2, [r5, #2]
	ldrb r1, [r5, #3]
	eors r2, r1
	movs r1, #0xf
	ands r2, r1
	ldrb r3, [r4, #1]
	movs r1, #0x10
	rsbs r1, r1, #0
	ands r1, r3
	orrs r1, r2
	strb r1, [r4, #1]
	ldr r1, [r5, #0x28]
	strh r7, [r1, #2]
	ldr r1, [r5, #0x28]
	adds r1, #4
	ldr r2, _08E2C0D0 @ =0x04000005
	bl sub_08E2C7F0
	movs r1, #0
_08E2C082:
	ldr r3, _08E2C0C8 @ =gUnk_030059F0
	ldr r2, [r3, #0x28]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	cmp r1, #0xb
	bls _08E2C082
	mvns r0, r7
	subs r0, #0xe
	strh r0, [r2, #2]
	ldrb r2, [r3]
	cmp r2, #0
	beq _08E2C0A6
	ldr r1, _08E2C0D4 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08E2C0A6:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x14]
	cmp r2, #0
	beq _08E2C0C0
	ldrb r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08E2C0C0
	ldr r1, _08E2C0D4 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08E2C0C0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C0C8: .4byte gUnk_030059F0
_08E2C0CC: .4byte gUnk_03005C20
_08E2C0D0: .4byte 0x04000005
_08E2C0D4: .4byte 0x0400010E

	thumb_func_start sub_08E2C0D8
sub_08E2C0D8: @ 0x08E2C0D8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _08E2C1E0 @ =gUnk_03005BE0
	movs r4, #0
	str r4, [sp]
	bl sub_08E2C80C
	str r0, [sp, #4]
	ldr r1, _08E2C1E4 @ =gUnk_030059F0
	strb r4, [r1, #3]
	ldrb r2, [r1, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	strb r0, [r1, #8]
	movs r7, #0
	movs r0, #0
	mov r8, r0
	adds r6, r5, #0
_08E2C104:
	movs r3, #0
	movs r2, #0
_08E2C108:
	ldr r5, _08E2C1E4 @ =gUnk_030059F0
	adds r0, r5, #0
	adds r0, #0x50
	mov r1, r8
	adds r4, r1, r0
	ldr r1, [r4]
	lsls r0, r2, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r3, r3, r0
	adds r2, #1
	cmp r2, #0xb
	bls _08E2C108
	add r0, sp, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E2C16C
	lsls r1, r3, #0x10
	ldr r0, _08E2C1E8 @ =0xFFF10000
	cmp r1, r0
	bne _08E2C16C
	movs r0, #1
	lsls r0, r7
	ldrb r1, [r5, #3]
	orrs r0, r1
	strb r0, [r5, #3]
	ldrb r2, [r5, #8]
	lsls r1, r2, #0x1c
	lsrs r1, r1, #0x1c
	ldr r0, [r4]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1f
	lsls r0, r7
	orrs r0, r1
	movs r1, #0xf
	ands r0, r1
	movs r3, #0x10
	rsbs r3, r3, #0
	adds r1, r3, #0
	ands r2, r1
	orrs r2, r0
	strb r2, [r5, #8]
	ldr r0, [r4]
	adds r0, #4
	adds r1, r6, #0
	ldr r2, _08E2C1EC @ =0x04000005
	bl sub_08E2C7F0
_08E2C16C:
	movs r0, #0
	str r0, [sp, #8]
	ldr r5, _08E2C1E4 @ =gUnk_030059F0
	adds r0, r5, #0
	adds r0, #0x50
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	add r0, sp, #8
	ldr r2, _08E2C1F0 @ =0x05000005
	bl sub_08E2C7F0
	movs r0, #4
	add r8, r0
	adds r6, #0x14
	adds r7, #1
	cmp r7, #3
	ble _08E2C104
	adds r4, r5, #0
	ldrb r0, [r4, #2]
	ldrb r2, [r4, #3]
	adds r3, r0, #0
	orrs r3, r2
	strb r3, [r4, #2]
	movs r1, #1
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08E2C224
	ldrb r0, [r4]
	cmp r0, #8
	bne _08E2C1F4
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08E2C1C4
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _08E2C1C4
	ldrb r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #8]
_08E2C1C4:
	ldrb r5, [r4, #8]
	lsls r2, r5, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08E2C20C
	movs r0, #0x40
	orrs r0, r5
	strb r0, [r4, #8]
	b _08E2C20C
	.align 2, 0
_08E2C1E0: .4byte gUnk_03005BE0
_08E2C1E4: .4byte gUnk_030059F0
_08E2C1E8: .4byte 0xFFF10000
_08E2C1EC: .4byte 0x04000005
_08E2C1F0: .4byte 0x05000005
_08E2C1F4:
	ldr r0, [r5, #0x50]
	ldrb r0, [r0, #1]
	lsls r0, r0, #0x19
	lsrs r0, r0, #0x1f
	ands r1, r0
	lsls r1, r1, #6
	ldrb r2, [r5, #8]
	movs r0, #0x41
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r5, #8]
_08E2C20C:
	ldr r3, _08E2C234 @ =gUnk_030059F0
	ldr r0, [r3, #0x50]
	ldrb r1, [r0, #1]
	lsls r1, r1, #0x1b
	lsrs r1, r1, #0x1f
	lsls r1, r1, #5
	ldrb r2, [r3, #8]
	movs r0, #0x21
	rsbs r0, r0, #0
	ands r0, r2
	orrs r0, r1
	strb r0, [r3, #8]
_08E2C224:
	ldr r0, _08E2C234 @ =gUnk_030059F0
	ldrb r0, [r0, #3]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E2C234: .4byte gUnk_030059F0

	thumb_func_start sub_08E2C238
sub_08E2C238: @ 0x08E2C238
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08E2C2B4 @ =0x04000208
	strh r6, [r3]
	ldr r2, _08E2C2B8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2C2BC @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _08E2C2C0 @ =gUnk_03005C20
	ldr r2, _08E2C2C4 @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl sub_08E2C7F0
	ldr r1, _08E2C2C8 @ =0x04000128
	ldr r0, _08E2C2CC @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _08E2C2A6
	ldr r0, _08E2C2D0 @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_08E2C286:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _08E2C286
	ldr r1, _08E2C2C0 @ =gUnk_03005C20
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _08E2C2C8 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_08E2C2A6:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C2B4: .4byte 0x04000208
_08E2C2B8: .4byte 0x04000200
_08E2C2BC: .4byte 0x0000FF3F
_08E2C2C0: .4byte gUnk_03005C20
_08E2C2C4: .4byte 0x05000006
_08E2C2C8: .4byte 0x04000128
_08E2C2CC: .4byte 0x00002003
_08E2C2D0: .4byte 0x0400010C

	thumb_func_start sub_08E2C2D4
sub_08E2C2D4: @ 0x08E2C2D4
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _08E2C2EC @ =gUnk_03005C20
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _08E2C2E2
	b _08E2C4AE
_08E2C2E2:
	lsls r0, r0, #2
	ldr r1, _08E2C2F0 @ =gUnk_0200C4CC
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08E2C2EC: .4byte gUnk_03005C20
_08E2C2F0: .4byte gUnk_0200C4CC
_08E2C2F4: @ jump table
	.4byte 0x0200C4E0 @ case 0
	.4byte 0x0200C4F8 @ case 1
	.4byte 0x0200C594 @ case 2
	.4byte 0x0200C610 @ case 3
	.4byte 0x0200C67C @ case 4
_08E2C308:
	ldr r0, [r5]
	ldr r1, _08E2C31C @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08E2C314
	b _08E2C4AE
_08E2C314:
	movs r0, #1
	strb r0, [r5, #1]
	b _08E2C4AE
	.align 2, 0
_08E2C31C: .4byte 0x00FF00FF
_08E2C320:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08E2C330
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08E2C32E
	b _08E2C4AE
_08E2C32E:
	b _08E2C33A
_08E2C330:
	ldr r1, _08E2C370 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08E2C33A:
	ldr r0, _08E2C374 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _08E2C378 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _08E2C388
	ldr r2, _08E2C370 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08E2C37C @ =0x0400010C
	ldr r0, _08E2C380 @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08E2C384 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _08E2C3A8
	.align 2, 0
_08E2C370: .4byte 0x04000128
_08E2C374: .4byte 0x04000120
_08E2C378: .4byte 0x04000202
_08E2C37C: .4byte 0x0400010C
_08E2C380: .4byte 0x00C0F318
_08E2C384: .4byte 0x04000208
_08E2C388:
	ldr r2, _08E2C3B4 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08E2C3B8 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08E2C3A8:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _08E2C4AE
	.align 2, 0
_08E2C3B4: .4byte 0x04000128
_08E2C3B8: .4byte 0x04000208
_08E2C3BC:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08E2C3CC
	adds r3, r0, #0
	b _08E2C3D2
_08E2C3CC:
	cmp r6, #0
	bge _08E2C3D2
	movs r3, #0
_08E2C3D2:
	cmp r2, #0
	beq _08E2C3D8
	str r3, [r2]
_08E2C3D8:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08E2C41A
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _08E2C3FE
_08E2C3E6:
	ldr r2, [r4, #0x14]
	ldr r1, [r4, #4]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r4, #0x10]
	ldr r0, [r0]
	adds r1, r1, r0
	str r1, [r4, #0x10]
	adds r2, #1
	str r2, [r4, #0x14]
	cmp r2, r3
	blt _08E2C3E6
_08E2C3FE:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08E2C422
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08E2C41A
	movs r0, #1
	strb r0, [r5, #3]
_08E2C41A:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _08E2C42A
_08E2C422:
	ldr r0, _08E2C434 @ =gUnk_03005C20
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _08E2C4AE
_08E2C42A:
	ldr r1, _08E2C434 @ =gUnk_03005C20
	movs r0, #3
	strb r0, [r1, #1]
	b _08E2C4AE
	.align 2, 0
_08E2C434: .4byte gUnk_03005C20
_08E2C438:
	ldr r3, _08E2C488 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E2C48C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2C490 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08E2C494 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08E2C498 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _08E2C476
	ldr r1, _08E2C49C @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08E2C476:
	ldr r1, _08E2C4A0 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _08E2C4AA
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _08E2C4AE
	.align 2, 0
_08E2C488: .4byte 0x04000208
_08E2C48C: .4byte 0x04000200
_08E2C490: .4byte 0x0000FF3F
_08E2C494: .4byte 0x04000128
_08E2C498: .4byte 0x04000120
_08E2C49C: .4byte 0x0400010C
_08E2C4A0: .4byte 0x04000202
_08E2C4A4:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _08E2C4AE
_08E2C4AA:
	movs r0, #1
	b _08E2C4B8
_08E2C4AE:
	ldr r1, _08E2C4C0 @ =gUnk_03005C20
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_08E2C4B8:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08E2C4C0: .4byte gUnk_03005C20

	thumb_func_start sub_08E2C4C4
sub_08E2C4C4: @ 0x08E2C4C4
	push {r4, r5, lr}
	ldr r2, _08E2C4E8 @ =0x04000120
	ldr r4, [r2]
	ldr r5, _08E2C4EC @ =gUnk_03005C20
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _08E2C4F4
	ldr r0, _08E2C4F0 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _08E2C53C
	b _08E2C52A
	.align 2, 0
_08E2C4E8: .4byte 0x04000120
_08E2C4EC: .4byte gUnk_03005C20
_08E2C4F0: .4byte 0x04000128
_08E2C4F4:
	ldr r1, _08E2C504 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _08E2C50C
	ldr r0, _08E2C508 @ =0xFEFEFEFE
	str r0, [r2]
	b _08E2C552
	.align 2, 0
_08E2C504: .4byte 0x0400010E
_08E2C508: .4byte 0xFEFEFEFE
_08E2C50C:
	ldr r0, _08E2C520 @ =0x00001FFF
	cmp r3, r0
	bgt _08E2C524
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _08E2C552
	.align 2, 0
_08E2C520: .4byte 0x00001FFF
_08E2C524:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _08E2C552
_08E2C52A:
	ldr r0, _08E2C538 @ =0xFEFEFEFE
	cmp r4, r0
	beq _08E2C552
	subs r0, r1, #1
	str r0, [r5, #8]
	b _08E2C552
	.align 2, 0
_08E2C538: .4byte 0xFEFEFEFE
_08E2C53C:
	ldr r0, _08E2C54C @ =0x00001FFF
	cmp r3, r0
	bgt _08E2C550
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _08E2C552
	.align 2, 0
_08E2C54C: .4byte 0x00001FFF
_08E2C550:
	str r4, [r5, #0xc]
_08E2C552:
	ldr r1, [r5, #8]
	ldr r0, _08E2C57C @ =0x00002002
	cmp r1, r0
	bgt _08E2C574
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08E2C574
	ldr r2, _08E2C580 @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08E2C584 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08E2C574:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C57C: .4byte 0x00002002
_08E2C580: .4byte 0x04000128
_08E2C584: .4byte 0x0400010E

	thumb_func_start sub_08E2C588
sub_08E2C588: @ 0x08E2C588
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08E2C5C4 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08E2C5C8 @ =gUnk_03002640
	str r1, [r0, #4]
	ldr r1, _08E2C5CC @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08E2C5D0 @ =gUnk_03001420
	str r1, [r0, #4]
	ldr r1, _08E2C5D4 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08E2C5D8 @ =gUnk_030014E4
	str r2, [r0]
	ldr r0, _08E2C5DC @ =gUnk_030014E8
	strb r2, [r0]
	movs r0, #0
	bl sub_08E2BD54
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08E2C5C4: .4byte 0x040000D4
_08E2C5C8: .4byte gUnk_03002640
_08E2C5CC: .4byte 0x85000005
_08E2C5D0: .4byte gUnk_03001420
_08E2C5D4: .4byte 0x85000014
_08E2C5D8: .4byte gUnk_030014E4
_08E2C5DC: .4byte gUnk_030014E8

	thumb_func_start sub_08E2C5E0
sub_08E2C5E0: @ 0x08E2C5E0
	push {r4, lr}
	ldr r0, _08E2C620 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08E2C614
	ldr r3, _08E2C624 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E2C628 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E2C62C @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _08E2C630 @ =gUnk_03000740
	ldr r0, _08E2C634 @ =gUnk_03005870
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl sub_08E2BD54
_08E2C614:
	ldr r1, _08E2C638 @ =gUnk_030014E8
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C620: .4byte gUnk_030013D0
_08E2C624: .4byte 0x04000208
_08E2C628: .4byte 0x04000200
_08E2C62C: .4byte 0x0000FFBF
_08E2C630: .4byte gUnk_03000740
_08E2C634: .4byte gUnk_03005870
_08E2C638: .4byte gUnk_030014E8

	thumb_func_start sub_08E2C63C
sub_08E2C63C: @ 0x08E2C63C
	push {r4, lr}
	ldr r1, _08E2C670 @ =gUnk_030014E8
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08E2C674 @ =gUnk_030013D0
	ldr r0, [r4]
	ldr r1, _08E2C678 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl sub_08E2BE60
	movs r0, #0
	bl sub_08E2BD54
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08E2C668
	bl nullsub_9
_08E2C668:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E2C670: .4byte gUnk_030014E8
_08E2C674: .4byte gUnk_030013D0
_08E2C678: .4byte 0xFFEFFFFF

	thumb_func_start nullsub_70
nullsub_70: @ 0x08E2C67C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_9
nullsub_9: @ 0x08E2C680
	bx lr
	.align 2, 0

	thumb_func_start nullsub_71
nullsub_71: @ 0x08E2C684
	bx lr
	.align 2, 0

	thumb_func_start sub_08E2C688
sub_08E2C688: @ 0x08E2C688
	movs r0, #1
	bx lr
