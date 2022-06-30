	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_200879C
sub_200879C: @ 0x0200879C
	push {lr}
	bl sub_20087B0
	bl sub_20001CC
	bl sub_2008CE0
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_20087B0
sub_20087B0: @ 0x020087B0
	push {r4, lr}
	sub sp, #8
	ldr r1, _02008800 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _02008804 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _02008808 @ =gUnk_030013D0
	movs r3, #0
	str r3, [r2]
	ldr r0, _0200880C @ =gUnk_03002600
	str r3, [r0]
	ldr r1, _02008810 @ =gUnk_03001E24
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _02008814 @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _020087EC
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
_020087EC:
	ldr r0, _02008818 @ =gUnk_03001E20
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _0200881C
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	b _0200881E
	.align 2, 0
_02008800: .4byte 0x04000208
_02008804: .4byte 0x00004014
_02008808: .4byte gUnk_030013D0
_0200880C: .4byte gUnk_03002600
_02008810: .4byte gUnk_03001E24
_02008814: .4byte 0x04000134
_02008818: .4byte gUnk_03001E20
_0200881C:
	str r3, [r2]
_0200881E:
	ldr r1, _02008B88 @ =gUnk_03002564
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _02008B8C @ =gUnk_03002994
	movs r1, #0
	strb r1, [r0]
	ldr r0, _02008B90 @ =gUnk_03002720
	strb r1, [r0]
	ldr r0, _02008B94 @ =gUnk_03005840
	strb r1, [r0]
	ldr r0, _02008B98 @ =gUnk_03005008
	strb r1, [r0]
	ldr r0, _02008B9C @ =gUnk_03002934
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _02008BA4 @ =gUnk_03001E10
	str r0, [r1, #4]
	ldr r0, _02008BA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200884E:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200884E
	ldr r1, _02008BAC @ =gUnk_03005030
	movs r0, #0
	str r0, [r1]
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _02008BB0 @ =gUnk_03002610
	str r0, [r1, #4]
	ldr r0, _02008BA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200886C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200886C
	ldr r0, _02008BB4 @ =gUnk_03001384
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _02008BB8 @ =gUnk_03002620
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r2]
	str r1, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _02008BBC @ =gUnk_03001E50
	str r0, [r1, #4]
	ldr r0, _02008BC0 @ =0x850000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008896:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008896
	ldr r0, _02008BC4 @ =gUnk_03001480
	movs r1, #0
	strb r1, [r0]
	ldr r0, _02008BC8 @ =gUnk_03002990
	strb r1, [r0]
	add r2, sp, #4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _02008BA0 @ =0x040000D4
	str r2, [r1]
	ldr r0, _02008BCC @ =gUnk_03005040
	str r0, [r1, #4]
	ldr r0, _02008BD0 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_020088BE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _020088BE
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	ldr r1, _02008BA0 @ =0x040000D4
	str r2, [r1]
	ldr r0, _02008BD4 @ =gUnk_03002150
	str r0, [r1, #4]
	ldr r0, _02008BD0 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_020088DA:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _020088DA
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _02008BD8 @ =gUnk_030013E0
	str r0, [r1, #4]
	ldr r0, _02008BDC @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_020088F6:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _020088F6
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _02008BE0 @ =gUnk_03005010
	str r0, [r1, #4]
	ldr r0, _02008BDC @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008912:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008912
	ldr r1, _02008BA0 @ =0x040000D4
	ldr r0, _02008BE4 @ =0x05000200
	str r0, [r1]
	ldr r0, _02008BE8 @ =gUnk_03001BF0
	str r0, [r1, #4]
	ldr r0, _02008BEC @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008928:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008928
	ldr r1, _02008BA0 @ =0x040000D4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1]
	ldr r0, _02008BF0 @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _02008BEC @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008940:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008940
	ldr r0, _02008BF4 @ =gUnk_030014B0
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
	ldr r0, _02008BF8 @ =gUnk_030014A4
	strb r3, [r0]
	ldr r0, _02008BFC @ =gUnk_030014D4
	strh r1, [r0]
	ldr r0, _02008C00 @ =gUnk_03001380
	strh r2, [r0]
	ldr r0, _02008C04 @ =gUnk_03005844
	strh r2, [r0]
	ldr r0, _02008C08 @ =gUnk_0300293C
	strh r1, [r0]
	ldr r0, _02008C0C @ =gUnk_03005004
	strh r1, [r0]
	ldr r0, _02008C10 @ =gUnk_030014DC
	strh r1, [r0]
	ldr r0, _02008C14 @ =gUnk_0300260C
	strh r1, [r0]
	ldr r0, _02008C18 @ =gUnk_03005848
	strh r2, [r0]
	ldr r0, _02008C1C @ =gUnk_03001E00
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _02008C20 @ =gUnk_03001478
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _02008C24 @ =gUnk_03005868
	str r1, [r0]
_020089A6:
	ldr r2, _02008C28 @ =gUnk_03002570
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	movs r1, #0x14
	strb r1, [r2]
	ldr r1, _02008C2C @ =gUnk_03002630
	adds r1, r0, r1
	movs r2, #8
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _020089A6
	ldr r1, _02008C30 @ =gUnk_03001DF4
	movs r0, #0
	str r0, [r1]
	movs r1, #0
_020089CE:
	ldr r3, _02008C34 @ =gUnk_03000740
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r3, r1, r3
	ldr r2, _02008C38 @ =gUnk_0201DE94
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _020089CE
	movs r0, #0
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _02008C3C @ =gUnk_030016F0
	str r2, [r1, #4]
	ldr r0, _02008C40 @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008A00:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008A00
	ldr r0, _02008C44 @ =gUnk_03001414
	str r2, [r0]
	ldr r1, _02008C48 @ =gUnk_03001E3C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _02008C4C @ =gUnk_03002658
	movs r1, #0
	str r1, [r0]
	ldr r0, _02008C50 @ =gUnk_03002930
	strb r1, [r0]
	ldr r0, _02008C54 @ =gUnk_0300141C
	strb r1, [r0]
	ldr r0, _02008C58 @ =gUnk_03001474
	strb r1, [r0]
	str r1, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _02008C5C @ =gUnk_03002550
	str r0, [r1, #4]
	ldr r0, _02008BA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008A38:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008A38
	movs r0, #0
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _02008C60 @ =gUnk_030029A0
	str r0, [r1, #4]
	ldr r0, _02008BA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008A52:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008A52
	ldr r0, _02008C64 @ =gUnk_03005000
	movs r1, #0
	strb r1, [r0]
	ldr r0, _02008C68 @ =gUnk_030014D8
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _02008C6C @ =gUnk_03001400
	str r0, [r1, #4]
	ldr r0, _02008BA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008A76:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008A76
	movs r0, #0
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _02008C70 @ =gUnk_03005850
	str r0, [r1, #4]
	ldr r0, _02008BA8 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008A90:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008A90
	bl m4aSoundInit
	ldr r0, _02008C74 @ =0x0095FA00
	bl SoundMode_rev01
	bl m4aSoundMain
	ldr r1, _02008C78 @ =gUnk_03005864
	movs r0, #1
	strb r0, [r1]
	bl sub_20095B8
	ldr r1, _02008C7C @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _02008C80 @ =gUnk_030014D0
	ldr r0, _02008C84 @ =0x06014000
	str r0, [r1]
	bl nullsub_1
	ldr r2, _02008C88 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _02008BA0 @ =0x040000D4
	ldr r0, _02008C8C @ =sub_020000FC
	str r0, [r1]
	ldr r2, _02008C90 @ =gUnk_03000780
	str r2, [r1, #4]
	ldr r0, _02008BEC @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008ADE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008ADE
	ldr r0, _02008C94 @ =0x03007FFC
	str r2, [r0]
	ldr r2, _02008C98 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r1, _02008C9C @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _02008CA0 @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _02008B12
	ldr r0, _02008CA4 @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _02008CA8 @ =0x454B3842
	cmp r1, r0
	bne _02008B12
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_02008B12:
	ldr r1, _02008CAC @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _02008CB0 @ =gUnk_03002640
	str r0, [r1, #4]
	ldr r0, _02008CB4 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008B2C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008B2C
	movs r0, #0
	str r0, [sp]
	ldr r1, _02008BA0 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _02008CB8 @ =gUnk_03001420
	str r0, [r1, #4]
	ldr r0, _02008CBC @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008B46:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008B46
	ldr r0, _02008CC0 @ =gUnk_030014E4
	movs r4, #0
	str r4, [r0]
	ldr r0, _02008CC4 @ =gUnk_030014E8
	strb r4, [r0]
	movs r0, #0
	bl MultiSioInit
	ldr r0, _02008CC8 @ =gUnk_0300500C
	strb r4, [r0]
	ldr r0, _02008CCC @ =gUnk_03001470
	str r4, [r0]
	ldr r0, _02008CD0 @ =gUnk_030014E0
	strb r4, [r0]
	ldr r1, _02008BA0 @ =0x040000D4
	ldr r0, _02008CD4 @ =0x04000008
	str r0, [r1]
	ldr r0, _02008CD8 @ =gUnk_03001E40
	str r0, [r1, #4]
	ldr r0, _02008CDC @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02008B78:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02008B78
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02008B88: .4byte gUnk_03002564
_02008B8C: .4byte gUnk_03002994
_02008B90: .4byte gUnk_03002720
_02008B94: .4byte gUnk_03005840
_02008B98: .4byte gUnk_03005008
_02008B9C: .4byte gUnk_03002934
_02008BA0: .4byte 0x040000D4
_02008BA4: .4byte gUnk_03001E10
_02008BA8: .4byte 0x85000004
_02008BAC: .4byte gUnk_03005030
_02008BB0: .4byte gUnk_03002610
_02008BB4: .4byte gUnk_03001384
_02008BB8: .4byte gUnk_03002620
_02008BBC: .4byte gUnk_03001E50
_02008BC0: .4byte 0x850000C0
_02008BC4: .4byte gUnk_03001480
_02008BC8: .4byte gUnk_03002990
_02008BCC: .4byte gUnk_03005040
_02008BD0: .4byte 0x81000200
_02008BD4: .4byte gUnk_03002150
_02008BD8: .4byte gUnk_030013E0
_02008BDC: .4byte 0x85000008
_02008BE0: .4byte gUnk_03005010
_02008BE4: .4byte 0x05000200
_02008BE8: .4byte gUnk_03001BF0
_02008BEC: .4byte 0x84000080
_02008BF0: .4byte gUnk_03002730
_02008BF4: .4byte gUnk_030014B0
_02008BF8: .4byte gUnk_030014A4
_02008BFC: .4byte gUnk_030014D4
_02008C00: .4byte gUnk_03001380
_02008C04: .4byte gUnk_03005844
_02008C08: .4byte gUnk_0300293C
_02008C0C: .4byte gUnk_03005004
_02008C10: .4byte gUnk_030014DC
_02008C14: .4byte gUnk_0300260C
_02008C18: .4byte gUnk_03005848
_02008C1C: .4byte gUnk_03001E00
_02008C20: .4byte gUnk_03001478
_02008C24: .4byte gUnk_03005868
_02008C28: .4byte gUnk_03002570
_02008C2C: .4byte gUnk_03002630
_02008C30: .4byte gUnk_03001DF4
_02008C34: .4byte gUnk_03000740
_02008C38: .4byte gUnk_0201DE94
_02008C3C: .4byte gUnk_030016F0
_02008C40: .4byte 0x85000140
_02008C44: .4byte gUnk_03001414
_02008C48: .4byte gUnk_03001E3C
_02008C4C: .4byte gUnk_03002658
_02008C50: .4byte gUnk_03002930
_02008C54: .4byte gUnk_0300141C
_02008C58: .4byte gUnk_03001474
_02008C5C: .4byte gUnk_03002550
_02008C60: .4byte gUnk_030029A0
_02008C64: .4byte gUnk_03005000
_02008C68: .4byte gUnk_030014D8
_02008C6C: .4byte gUnk_03001400
_02008C70: .4byte gUnk_03005850
_02008C74: .4byte 0x0095FA00
_02008C78: .4byte gUnk_03005864
_02008C7C: .4byte gUnk_03001418
_02008C80: .4byte gUnk_030014D0
_02008C84: .4byte 0x06014000
_02008C88: .4byte gUnk_030013D0
_02008C8C: .4byte sub_020000FC
_02008C90: .4byte gUnk_03000780
_02008C94: .4byte 0x03007FFC
_02008C98: .4byte 0x04000200
_02008C9C: .4byte 0x04000004
_02008CA0: .4byte 0x080000B2
_02008CA4: .4byte 0x080000AC
_02008CA8: .4byte 0x454B3842
_02008CAC: .4byte 0x04000208
_02008CB0: .4byte gUnk_03002640
_02008CB4: .4byte 0x85000005
_02008CB8: .4byte gUnk_03001420
_02008CBC: .4byte 0x85000014
_02008CC0: .4byte gUnk_030014E4
_02008CC4: .4byte gUnk_030014E8
_02008CC8: .4byte gUnk_0300500C
_02008CCC: .4byte gUnk_03001470
_02008CD0: .4byte gUnk_030014E0
_02008CD4: .4byte 0x04000008
_02008CD8: .4byte gUnk_03001E40
_02008CDC: .4byte 0x80000004

	thumb_func_start sub_2008CE0
sub_2008CE0: @ 0x02008CE0
	push {r4, r5, lr}
_02008CE2:
	ldr r1, _02008D40 @ =gUnk_03005864
	movs r0, #0
	strb r0, [r1]
	ldr r1, _02008D44 @ =gUnk_030013D0
	ldr r0, [r1]
	ldr r2, _02008D48 @ =0xFEFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r1, _02008D4C @ =gUnk_03002600
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r0, _02008D50 @ =gUnk_03002564
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _02008D6E
	bl sub_20094F4
	ldr r0, _02008D54 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _02008D2C
	bl sub_2000470
	ldr r0, _02008D58 @ =gUnk_03002640
	ldr r1, _02008D5C @ =gUnk_03001420
	movs r2, #0
	bl MultiSioMain
	ldr r1, _02008D60 @ =gUnk_030014E4
	str r0, [r1]
	bl sub_20005A0
	cmp r0, #0
	bne _02008D2C
	bl sub_2001160
_02008D2C:
	ldr r0, _02008D64 @ =gUnk_03000470
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _02008D68
	bl sub_2009894
	b _02008D6E
	.align 2, 0
_02008D40: .4byte gUnk_03005864
_02008D44: .4byte gUnk_030013D0
_02008D48: .4byte 0xFEFFFFFF
_02008D4C: .4byte gUnk_03002600
_02008D50: .4byte gUnk_03002564
_02008D54: .4byte gUnk_030014E8
_02008D58: .4byte gUnk_03002640
_02008D5C: .4byte gUnk_03001420
_02008D60: .4byte gUnk_030014E4
_02008D64: .4byte gUnk_03000470
_02008D68:
	ldr r1, _02008DB4 @ =gUnk_03002564
	movs r0, #0
	strb r0, [r1]
_02008D6E:
	ldr r4, _02008DB8 @ =gUnk_030013D0
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	ldr r1, _02008DBC @ =gUnk_03002600
	str r0, [r1]
	bl VBlankIntrWait
	ldr r1, _02008DC0 @ =gUnk_030014A4
	movs r0, #0
	strb r0, [r1]
	bl sub_2008E04
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	bne _02008DA6
	bl sub_20090EC
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _02008DC4
_02008DA6:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	b _02008DCA
	.align 2, 0
_02008DB4: .4byte gUnk_03002564
_02008DB8: .4byte gUnk_030013D0
_02008DBC: .4byte gUnk_03002600
_02008DC0: .4byte gUnk_030014A4
_02008DC4:
	ldr r0, _02008DF8 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r4]
_02008DCA:
	ldr r0, _02008DFC @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _02008DDC
	bl m4aSoundMain
_02008DDC:
	ldr r0, _02008E00 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _02008DEA
	b _02008CE2
_02008DEA:
	ldr r0, _02008E00 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _02008DEA
	b _02008CE2
	.align 2, 0
_02008DF8: .4byte 0xFFFFF7FF
_02008DFC: .4byte gUnk_030013D0
_02008E00: .4byte 0x04000004

	thumb_func_start sub_2008E04
sub_2008E04: @ 0x02008E04
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _02008EF8 @ =gUnk_03002620
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _02008EFC @ =0x040000D4
	ldr r0, _02008F00 @ =gUnk_03001E40
	str r0, [r3]
	ldr r0, _02008F04 @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _02008F08 @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _02008F0C @ =gUnk_030013D0
	ldr r1, [r5]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r6, _02008F10 @ =gUnk_03001E00
	ldr r7, _02008F14 @ =gUnk_03002610
	mov ip, r7
	ldr r7, _02008F18 @ =gUnk_030014B0
	mov r8, r7
	ldr r7, _02008F1C @ =gUnk_03001474
	mov sb, r7
	ldr r7, _02008F20 @ =gUnk_03002564
	mov sl, r7
	cmp r0, #0
	beq _02008E60
	ldr r0, _02008F24 @ =gUnk_03002730
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _02008F28 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_02008E60:
	ldr r1, [r5]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _02008E7E
	ldr r0, _02008F2C @ =gUnk_03001BF0
	str r0, [r3]
	ldr r0, _02008F30 @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _02008F28 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_02008E7E:
	str r6, [r3]
	ldr r0, _02008F34 @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _02008F38 @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _02008F3C @ =gUnk_03001478
	str r0, [r3]
	ldr r0, _02008F40 @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _02008F44 @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	str r1, [r3]
	ldr r0, _02008F48 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _02008F4C @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r7, r8
	str r7, [r3]
	ldr r0, _02008F50 @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _02008F54 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r5]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _02008F6C
	ldr r2, _02008F58 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r4, _02008F5C @ =gUnk_030029A0
	str r4, [r3, #4]
	ldr r0, _02008F60 @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _02008F64 @ =gUnk_0300141C
	ldrb r2, [r1]
	cmp r2, #0
	beq _02008EF2
	ldr r0, _02008F68 @ =gUnk_03002550
	str r0, [r3]
	str r4, [r3, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_02008EF2:
	mov r1, sb
	strb r2, [r1]
	b _02008F7A
	.align 2, 0
_02008EF8: .4byte gUnk_03002620
_02008EFC: .4byte 0x040000D4
_02008F00: .4byte gUnk_03001E40
_02008F04: .4byte 0x04000008
_02008F08: .4byte 0x84000002
_02008F0C: .4byte gUnk_030013D0
_02008F10: .4byte gUnk_03001E00
_02008F14: .4byte gUnk_03002610
_02008F18: .4byte gUnk_030014B0
_02008F1C: .4byte gUnk_03001474
_02008F20: .4byte gUnk_03002564
_02008F24: .4byte gUnk_03002730
_02008F28: .4byte 0x84000080
_02008F2C: .4byte gUnk_03001BF0
_02008F30: .4byte 0x05000200
_02008F34: .4byte 0x04000040
_02008F38: .4byte 0x84000003
_02008F3C: .4byte gUnk_03001478
_02008F40: .4byte 0x04000050
_02008F44: .4byte 0x80000003
_02008F48: .4byte 0x04000010
_02008F4C: .4byte 0x80000008
_02008F50: .4byte 0x04000020
_02008F54: .4byte 0x84000008
_02008F58: .4byte 0x04000200
_02008F5C: .4byte gUnk_030029A0
_02008F60: .4byte 0x85000004
_02008F64: .4byte gUnk_0300141C
_02008F68: .4byte gUnk_03002550
_02008F6C:
	ldr r2, _02008FF4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _02008FF8 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	mov r7, sb
	strb r4, [r7]
_02008F7A:
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _02008FA2
	ldr r2, _02008FFC @ =0x040000D4
	ldr r0, _02009000 @ =gUnk_03001414
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _02009004 @ =gUnk_03002658
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _02009008 @ =gUnk_03002930
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_02008FA2:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _02008FF0
	bl sub_200AC68
	ldr r0, _02008FFC @ =0x040000D4
	ldr r3, _0200900C @ =gUnk_03005040
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _02009010 @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _02009014 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r3, r7
	str r1, [r0]
	ldr r1, _02009018 @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _0200901C @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_02008FF0:
	movs r4, #0
	b _02009032
	.align 2, 0
_02008FF4: .4byte 0x04000200
_02008FF8: .4byte 0x0000FFFD
_02008FFC: .4byte 0x040000D4
_02009000: .4byte gUnk_03001414
_02009004: .4byte gUnk_03002658
_02009008: .4byte gUnk_03002930
_0200900C: .4byte gUnk_03005040
_02009010: .4byte 0x80000080
_02009014: .4byte 0x07000100
_02009018: .4byte 0x07000200
_0200901C: .4byte 0x07000300
_02009020:
	ldr r1, _02009080 @ =gUnk_03005850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_02009032:
	ldr r0, _02009084 @ =gUnk_030014D8
	ldrb r0, [r0]
	cmp r4, r0
	blo _02009020
	ldr r0, _02009088 @ =gUnk_030013D0
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r7, _0200908C @ =gUnk_03002564
	mov sl, r7
	ldr r5, _02009084 @ =gUnk_030014D8
	cmp r1, #0
	beq _020090A0
	movs r0, #0
	str r0, [sp]
	ldr r2, _02009090 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r4, _02009080 @ =gUnk_03005850
	str r4, [r2, #4]
	ldr r0, _02009094 @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _02009098 @ =gUnk_03005000
	ldrb r3, [r1]
	cmp r3, #0
	beq _0200907A
	ldr r0, _0200909C @ =gUnk_03001400
	str r0, [r2]
	str r4, [r2, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0200907A:
	strb r3, [r5]
	b _020090A2
	.align 2, 0
_02009080: .4byte gUnk_03005850
_02009084: .4byte gUnk_030014D8
_02009088: .4byte gUnk_030013D0
_0200908C: .4byte gUnk_03002564
_02009090: .4byte 0x040000D4
_02009094: .4byte 0x85000004
_02009098: .4byte gUnk_03005000
_0200909C: .4byte gUnk_03001400
_020090A0:
	strb r1, [r5]
_020090A2:
	mov r1, sl
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _020090AC
	movs r4, #0
_020090AC:
	movs r0, #0xff
	mov r7, sl
	strb r0, [r7]
	b _020090BA
_020090B4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_020090BA:
	cmp r4, #1
	bhi _020090D2
	ldr r1, _020090E4 @ =gUnk_0201DECC
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _020090B4
	ldr r0, _020090E8 @ =gUnk_03002564
	strb r4, [r0]
_020090D2:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_020090E4: .4byte gUnk_0201DECC
_020090E8: .4byte gUnk_03002564

	thumb_func_start sub_20090EC
sub_20090EC: @ 0x020090EC
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _02009124 @ =gUnk_0300141C
	movs r0, #0
	strb r0, [r1]
	ldr r5, _02009128 @ =gUnk_030013D0
	ldr r0, [r5]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _02009142
	ldr r2, _0200912C @ =gUnk_03001414
	ldr r0, [r2]
	ldr r1, _02009130 @ =gUnk_030016F0
	ldr r3, _02009134 @ =gUnk_03001E3C
	cmp r0, r1
	bne _02009138
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r1, r4
	str r0, [r2]
	str r1, [r3]
	b _02009142
	.align 2, 0
_02009124: .4byte gUnk_0300141C
_02009128: .4byte gUnk_030013D0
_0200912C: .4byte gUnk_03001414
_02009130: .4byte gUnk_030016F0
_02009134: .4byte gUnk_03001E3C
_02009138:
	str r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r3]
_02009142:
	ldr r4, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _020091B4 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _020091B8 @ =gUnk_03005040
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _020091BC @ =0x81000080
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
	ldr r1, _020091C0 @ =gUnk_03005000
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
_020091B4: .4byte 0x040000D4
_020091B8: .4byte gUnk_03005040
_020091BC: .4byte 0x81000080
_020091C0: .4byte gUnk_03005000

	thumb_func_start sub_20091C4
sub_20091C4: @ 0x020091C4
	push {r4, r5, r6, lr}
	ldr r4, _02009240 @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _02009244 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _02009248 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl SoundVSync_rev01
	ldr r1, _0200924C @ =0x03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _02009250 @ =gUnk_03005864
	strb r2, [r0]
	ldr r6, _02009254 @ =gUnk_03002600
	ldr r3, [r6]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _0200926C
	ldr r2, _02009258 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
_02009204:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009204
	ldr r2, _02009240 @ =0x040000B0
	ldr r0, _0200925C @ =gUnk_03001414
	ldr r4, [r0]
	str r4, [r2]
	ldr r0, _02009260 @ =gUnk_03002658
	ldr r5, [r0]
	str r5, [r2, #4]
	ldr r3, _02009264 @ =gUnk_03002930
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
	ldr r1, _02009268 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _02009280
	.align 2, 0
_02009240: .4byte 0x040000B0
_02009244: .4byte 0x0000C5FF
_02009248: .4byte 0x00007FFF
_0200924C: .4byte 0x03007FF8
_02009250: .4byte gUnk_03005864
_02009254: .4byte gUnk_03002600
_02009258: .4byte 0x04000200
_0200925C: .4byte gUnk_03001414
_02009260: .4byte gUnk_03002658
_02009264: .4byte gUnk_03002930
_02009268: .4byte 0xA2600000
_0200926C:
	ldr r4, _020092C4 @ =gUnk_03002658
	ldr r0, [r4]
	cmp r0, #0
	beq _02009280
	ldr r2, _020092C8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _020092CC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_02009280:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _020092DC
	ldr r2, _020092D0 @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _020092D4 @ =gUnk_03002654
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _020092D8 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _020092C8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _020092F8
	.align 2, 0
_020092C4: .4byte gUnk_03002658
_020092C8: .4byte 0x04000200
_020092CC: .4byte 0x0000FFFD
_020092D0: .4byte 0x04000004
_020092D4: .4byte gUnk_03002654
_020092D8: .4byte 0x0000FFFB
_020092DC:
	ldr r2, _02009330 @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _02009334 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _02009338 @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _0200933C @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_020092F8:
	ldr r0, _02009340 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	beq _0200931A
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0200931A
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0200931A
	bl m4aSoundMain
_0200931A:
	ldr r1, _02009344 @ =gUnk_03001DF4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _02009348 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_02009330: .4byte 0x04000004
_02009334: .4byte 0x0000FFFB
_02009338: .4byte 0x0000FFDF
_0200933C: .4byte 0x04000200
_02009340: .4byte gUnk_030014E8
_02009344: .4byte gUnk_03001DF4
_02009348: .4byte 0x04000202

	thumb_func_start sub_200934C
sub_200934C: @ 0x0200934C
	push {r4, r5, lr}
	ldr r0, _0200935C @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _0200937C
	movs r4, #0
	b _02009374
	.align 2, 0
_0200935C: .4byte 0x04000006
_02009360:
	ldr r1, _02009388 @ =gUnk_030029A0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_02009374:
	ldr r0, _0200938C @ =gUnk_03001474
	ldrb r0, [r0]
	cmp r4, r0
	blo _02009360
_0200937C:
	ldr r1, _02009390 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02009388: .4byte gUnk_030029A0
_0200938C: .4byte gUnk_03001474
_02009390: .4byte 0x04000202

	thumb_func_start sub_2009394
sub_2009394: @ 0x02009394
	ldr r1, _0200939C @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200939C: .4byte 0x04000202

	thumb_func_start sub_20093A0
sub_20093A0: @ 0x020093A0
	ldr r1, _020093A8 @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_020093A8: .4byte 0x04000202

	thumb_func_start sub_20093AC
sub_20093AC: @ 0x020093AC
	ldr r1, _020093B4 @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_020093B4: .4byte 0x04000202

	thumb_func_start sub_20093B8
sub_20093B8: @ 0x020093B8
	ldr r1, _020093C0 @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_020093C0: .4byte 0x04000202

	thumb_func_start sub_20093C4
sub_20093C4: @ 0x020093C4
	ldr r1, _020093CC @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_020093CC: .4byte 0x04000202

	thumb_func_start sub_20093D0
sub_20093D0: @ 0x020093D0
	ldr r1, _020093DC @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_020093DC: .4byte 0x04000202

	thumb_func_start sub_20093E0
sub_20093E0: @ 0x020093E0
	ldr r1, _020093EC @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_020093EC: .4byte 0x04000202

	thumb_func_start sub_20093F0
sub_20093F0: @ 0x020093F0
	ldr r1, _020093FC @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_020093FC: .4byte 0x04000202

	thumb_func_start sub_2009400
sub_2009400: @ 0x02009400
	ldr r1, _0200940C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200940C: .4byte 0x04000202

	thumb_func_start sub_2009410
sub_2009410: @ 0x02009410
	ldr r1, _0200941C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200941C: .4byte 0x04000202

	thumb_func_start sub_2009420
sub_2009420: @ 0x02009420
	ldr r1, _0200942C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200942C: .4byte 0x04000202

	thumb_func_start nullsub_10
nullsub_10: @ 0x02009430
	bx lr
	.align 2, 0

	thumb_func_start sub_2009434
sub_2009434: @ 0x02009434
	push {r4, r5, r6, r7, lr}
	ldr r0, _02009480 @ =gUnk_03005008
	ldr r7, _02009484 @ =gUnk_03002934
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _020094EA
_02009442:
	ldr r6, _02009480 @ =gUnk_03005008
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _02009488 @ =gUnk_03001E50
	adds r3, r1, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	beq _020094C2
	movs r5, #0
_02009458:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r4, [r3]
	cmp r1, r0
	bls _02009498
	ldr r1, _0200948C @ =0x040000D4
	adds r0, r4, r5
	str r0, [r1]
	ldr r0, [r3, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _02009490 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _02009494 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	b _020094B4
	.align 2, 0
_02009480: .4byte gUnk_03005008
_02009484: .4byte gUnk_03002934
_02009488: .4byte gUnk_03001E50
_0200948C: .4byte 0x040000D4
_02009490: .4byte 0x80000200
_02009494: .4byte 0xFFFFFC00
_02009498:
	ldr r2, _020094DC @ =0x040000D4
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
_020094B4:
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	bne _02009458
_020094C2:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _020094E0 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _020094E4
	movs r0, #0
	b _020094EC
	.align 2, 0
_020094DC: .4byte 0x040000D4
_020094E0: .4byte 0x04000004
_020094E4:
	ldrb r1, [r7]
	cmp r2, r1
	bne _02009442
_020094EA:
	movs r0, #1
_020094EC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_20094F4
sub_20094F4: @ 0x020094F4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _02009554 @ =gUnk_03001E30
	mov r8, r0
	ldr r1, _02009558 @ =gUnk_03002570
	mov ip, r1
	ldr r2, _0200955C @ =gUnk_03002630
	mov sb, r2
	ldr r0, _02009560 @ =gUnk_03002938
	ldr r6, _02009564 @ =gUnk_03001E20
	ldrh r3, [r6]
	strh r3, [r0]
	ldr r0, _02009568 @ =0x04000130
	ldrh r0, [r0]
	ldr r7, _0200956C @ =0x000003FF
	adds r1, r7, #0
	bics r1, r0
	strh r1, [r6]
	ldr r0, _02009570 @ =gUnk_03001410
	strh r1, [r0]
	ldr r4, _02009574 @ =gUnk_0300298C
	adds r0, r1, #0
	eors r0, r3
	adds r2, r0, #0
	ands r2, r1
	strh r2, [r4]
	ldr r1, _02009578 @ =gUnk_0300257C
	ands r0, r3
	strh r0, [r1]
	ldr r5, _0200957C @ =gUnk_03001E48
	strh r2, [r5]
	movs r1, #0
_02009538:
	ldrh r0, [r6]
	lsls r4, r1, #0x18
	asrs r2, r4, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	mov r7, r8
	adds r3, r7, r2
	cmp r0, #0
	bne _02009580
	mov r1, ip
	adds r0, r1, r2
	b _02009598
	.align 2, 0
_02009554: .4byte gUnk_03001E30
_02009558: .4byte gUnk_03002570
_0200955C: .4byte gUnk_03002630
_02009560: .4byte gUnk_03002938
_02009564: .4byte gUnk_03001E20
_02009568: .4byte 0x04000130
_0200956C: .4byte 0x000003FF
_02009570: .4byte gUnk_03001410
_02009574: .4byte gUnk_0300298C
_02009578: .4byte gUnk_0300257C
_0200957C: .4byte gUnk_03001E48
_02009580:
	ldrb r0, [r3]
	cmp r0, #0
	beq _0200958A
	subs r0, #1
	b _0200959A
_0200958A:
	adds r0, r1, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r7, sb
	adds r0, r7, r2
_02009598:
	ldrb r0, [r0]
_0200959A:
	strb r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r4, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _02009538
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_20095B8
sub_20095B8: @ 0x020095B8
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _02009654 @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _02009658 @ =gUnk_03001E4C
	str r1, [r0]
	ldr r0, _0200965C @ =gUnk_03001E0C
	str r1, [r0]
	ldr r0, _02009660 @ =gUnk_03001E28
	str r1, [r0]
	str r1, [sp]
	ldr r1, _02009664 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _02009668 @ =gUnk_03000980
	str r4, [r1, #4]
	ldr r0, _0200966C @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	movs r3, #0
_020095E4:
	ldr r0, _02009670 @ =gUnk_030014F0
	lsls r1, r2, #2
	adds r1, r1, r0
	adds r0, r3, r4
	str r0, [r1]
	adds r3, #0x14
	adds r2, #1
	cmp r2, #0x7f
	ble _020095E4
	bl sub_200969C
	adds r4, r0, #0
	cmp r4, #0
	beq _02009690
	ldr r0, _02009674 @ =sub_2009B44
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl sub_200969C
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _02009690
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _02009678 @ =sub_2009B48
	str r0, [r4, #8]
	ldr r0, _0200967C @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _02009680 @ =gUnk_03001490
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _02009684 @ =gUnk_03005C38
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _02009688 @ =gUnk_030029B0
	strh r5, [r1]
	ldr r0, _0200968C @ =0x00002604
	strh r0, [r1, #2]
	movs r0, #1
	b _02009692
	.align 2, 0
_02009654: .4byte gUnk_03002560
_02009658: .4byte gUnk_03001E4C
_0200965C: .4byte gUnk_03001E0C
_02009660: .4byte gUnk_03001E28
_02009664: .4byte 0x040000D4
_02009668: .4byte gUnk_03000980
_0200966C: .4byte 0x85000080
_02009670: .4byte gUnk_030014F0
_02009674: .4byte sub_2009B44
_02009678: .4byte sub_2009B48
_0200967C: .4byte 0x0000FFFF
_02009680: .4byte gUnk_03001490
_02009684: .4byte gUnk_03005C38
_02009688: .4byte gUnk_030029B0
_0200968C: .4byte 0x00002604
_02009690:
	movs r0, #0
_02009692:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_200969C
sub_200969C: @ 0x0200969C
	push {lr}
	ldr r3, _020096B4 @ =gUnk_03001E0C
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _020096BC
	ldr r1, _020096B8 @ =gUnk_030014F0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _020096BE
	.align 2, 0
_020096B4: .4byte gUnk_03001E0C
_020096B8: .4byte gUnk_030014F0
_020096BC:
	movs r0, #0
_020096BE:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_20096C4
sub_20096C4: @ 0x020096C4
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
	bl sub_200969C
	adds r4, r0, #0
	cmp r4, #0
	bne _020096EC
	ldr r0, _020096E8 @ =gUnk_03001490
	b _0200975C
	.align 2, 0
_020096E8: .4byte gUnk_03001490
_020096EC:
	str r7, [r4, #8]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	mov r0, r8
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r6, #0
	bl sub_2009978
	strh r0, [r4, #6]
	ldr r0, _02009740 @ =gUnk_03002560
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _02009744 @ =gUnk_030014F0
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r1
	beq _0200975A
	ldr r6, _02009748 @ =gUnk_03001E4C
_02009718:
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r2, r5
	ldrh r0, [r1, #0x10]
	cmp r0, r8
	bls _0200974C
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
	bne _0200975A
	str r4, [r6]
	b _0200975A
	.align 2, 0
_02009740: .4byte gUnk_03002560
_02009744: .4byte gUnk_030014F0
_02009748: .4byte gUnk_03001E4C
_0200974C:
	adds r3, r1, #0
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r5
	bne _02009718
_0200975A:
	adds r0, r4, #0
_0200975C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_2009768
sub_2009768: @ 0x02009768
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _020097BC @ =gUnk_030014F0
	ldr r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _020097D0
_0200977C:
	ldrh r0, [r1, #0x10]
	cmp r0, r2
	blo _020097C4
_02009782:
	ldrh r0, [r1, #0x10]
	ldr r2, _020097C0 @ =gUnk_03001E28
	cmp r0, r4
	bhs _020097B4
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	str r0, [r2]
	ldr r2, _020097BC @ =gUnk_030014F0
	ldr r0, [r2]
	cmp r1, r0
	beq _020097A8
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _020097A8
	adds r0, r1, #0
	bl sub_20097E0
_020097A8:
	ldr r2, _020097C0 @ =gUnk_03001E28
	ldr r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _02009782
_020097B4:
	movs r0, #0
	str r0, [r2]
	b _020097D6
	.align 2, 0
_020097BC: .4byte gUnk_030014F0
_020097C0: .4byte gUnk_03001E28
_020097C4:
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r0, r3
	cmp r0, #0
	bne _0200977C
_020097D0:
	ldr r1, _020097DC @ =gUnk_03001E28
	movs r0, #0
	str r0, [r1]
_020097D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_020097DC: .4byte gUnk_03001E28

	thumb_func_start sub_20097E0
sub_20097E0: @ 0x020097E0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _02009882
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _02009882
	cmp r0, r5
	beq _02009882
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0200980E
	adds r0, r4, #0
	bl _call_via_r1
_0200980E:
	ldr r1, _02009854 @ =gUnk_03001E4C
	ldr r0, [r1]
	cmp r4, r0
	bne _0200981C
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_0200981C:
	ldr r1, _02009858 @ =gUnk_03001E28
	ldr r0, [r1]
	cmp r4, r0
	bne _0200982A
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_0200982A:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _02009862
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r4, #6]
	cmp r0, #0
	beq _0200985C
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _0200985E
	.align 2, 0
_02009854: .4byte gUnk_03001E4C
_02009858: .4byte gUnk_03001E28
_0200985C:
	adds r0, r1, r5
_0200985E:
	bl sub_20099E0
_02009862:
	ldr r2, _02009888 @ =gUnk_030014F0
	ldr r1, _0200988C @ =gUnk_03001E0C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	movs r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	ldr r0, _02009890 @ =nullsub_13
	str r0, [r4, #8]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #6]
_02009882:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02009888: .4byte gUnk_030014F0
_0200988C: .4byte gUnk_03001E0C
_02009890: .4byte nullsub_13

	thumb_func_start sub_2009894
sub_2009894: @ 0x02009894
	push {r4, r5, r6, lr}
	ldr r1, _02009900 @ =gUnk_03002560
	ldr r0, _02009904 @ =gUnk_030014F0
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, _02009908 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _02009918
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _0200995A
_020098B4:
	ldr r4, _0200990C @ =gUnk_03001E4C
	ldr r5, _02009900 @ =gUnk_03002560
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
	bne _020098D4
	ldr r0, [r2, #8]
	bl _call_via_r0
_020098D4:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _02009910 @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _020098F0
	ldr r0, _02009914 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	bne _020098EC
	bl m4aSoundMain
_020098EC:
	movs r0, #0
	strb r0, [r4]
_020098F0:
	ldr r0, _02009900 @ =gUnk_03002560
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _020098B4
	b _0200995A
	.align 2, 0
_02009900: .4byte gUnk_03002560
_02009904: .4byte gUnk_030014F0
_02009908: .4byte gUnk_030013D0
_0200990C: .4byte gUnk_03001E4C
_02009910: .4byte gUnk_03005864
_02009914: .4byte gUnk_030014E8
_02009918:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _0200995A
_02009920:
	ldr r4, _0200996C @ =gUnk_03001E4C
	ldr r5, _02009970 @ =gUnk_03002560
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
	bne _02009940
	ldr r0, [r2, #8]
	bl _call_via_r0
_02009940:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _02009974 @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _02009954
	bl m4aSoundMain
	movs r0, #0
	strb r0, [r4]
_02009954:
	ldr r0, [r5]
	cmp r0, r6
	bne _02009920
_0200995A:
	ldr r0, _02009970 @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _0200996C @ =gUnk_03001E4C
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200996C: .4byte gUnk_03001E4C
_02009970: .4byte gUnk_03002560
_02009974: .4byte gUnk_03005864

	thumb_func_start sub_2009978
sub_2009978: @ 0x02009978
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _020099D8
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _020099C4 @ =gUnk_030029B0
_02009992:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _020099C8
	cmp r0, r1
	beq _020099BA
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _020099C8
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_020099BA:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _020099DA
	.align 2, 0
_020099C4: .4byte gUnk_030029B0
_020099C8:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _020099D8
	adds r3, r1, #0
	b _02009992
_020099D8:
	movs r0, #0
_020099DA:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_20099E0
sub_20099E0: @ 0x020099E0
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r3, _02009A58 @ =gUnk_030029B0
	adds r4, r3, #0
	cmp r2, r3
	beq _020099FC
_020099EE:
	adds r3, r4, #0
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, r4
	bne _020099EE
_020099FC:
	ldrh r1, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _02009A0A
	rsbs r0, r1, #0
	strh r0, [r2, #2]
_02009A0A:
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r0, r3, r0
	cmp r0, r2
	bne _02009A2A
	ldrh r1, [r3, #2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _02009A2A
	ldrh r0, [r4]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	adds r0, r1, r0
	strh r0, [r3, #2]
	adds r2, r3, #0
_02009A2A:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _02009A50
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _02009A50
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_02009A50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_02009A58: .4byte gUnk_030029B0

	thumb_func_start sub_2009A5C
sub_2009A5C: @ 0x02009A5C
	push {lr}
	movs r2, #0
	ldr r1, _02009A80 @ =gUnk_030029B0
_02009A62:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _02009A6C
	subs r2, r2, r0
_02009A6C:
	ldrh r1, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	bne _02009A62
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_02009A80: .4byte gUnk_030029B0

	thumb_func_start sub_2009A84
sub_2009A84: @ 0x02009A84
	push {r4, r5, r6, r7, lr}
	ldr r3, _02009A8C @ =gUnk_030029B0
	b _02009B32
	.align 2, 0
_02009A8C: .4byte gUnk_030029B0
_02009A90:
	ldrh r4, [r3, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r2, [r3]
	cmp r0, #0
	blt _02009B2C
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldrh r1, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _02009AC0
	adds r0, r4, r1
	strh r0, [r3, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _02009B32
_02009ABC:
	strh r7, [r2, #6]
	b _02009AF2
_02009AC0:
	ldr r4, _02009B20 @ =gUnk_03000004
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
_02009ADC:
	ldr r0, _02009B24 @ =gUnk_03000980
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _02009ABC
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0x7f
	ble _02009ADC
_02009AF2:
	ldr r2, _02009B28 @ =0x040000D4
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
	b _02009B32
	.align 2, 0
_02009B20: .4byte gUnk_03000004
_02009B24: .4byte gUnk_03000980
_02009B28: .4byte 0x040000D4
_02009B2C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
_02009B32:
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	bne _02009A90
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_2009B44
sub_2009B44: @ 0x02009B44
	bx lr
	.align 2, 0

	thumb_func_start sub_2009B48
sub_2009B48: @ 0x02009B48
	bx lr
	.align 2, 0

	thumb_func_start nullsub_13
nullsub_13: @ 0x02009B4C
	bx lr
	.align 2, 0

	thumb_func_start sub_2009B50
sub_2009B50: @ 0x02009B50
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
	ldr r1, _02009BF0 @ =gUnk_03001E40
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
	beq _02009BDC
_02009BA2:
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
	bl CpuFastSet
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
	bne _02009BA2
_02009BDC:
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
_02009BF0: .4byte gUnk_03001E40

	thumb_func_start sub_2009BF4
sub_2009BF4: @ 0x02009BF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
_02009C04:
	ldr r1, _02009CA4 @ =gUnk_03001E10
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
	bne _02009C34
	mov r1, ip
	adds r0, r5, r1
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _02009C34
	b _02009DE2
_02009C34:
	mov r0, sl
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _02009CA8 @ =gUnk_03001E40
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
	bls _02009D14
	ldr r0, _02009CAC @ =gUnk_03002620
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _02009D14
	add r7, sb
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r6, r0, #0x10
	cmp r2, #0xff
	bne _02009CB8
	ldr r0, _02009CB0 @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _02009CB4 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	subs r0, r0, r4
	muls r0, r6, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	b _02009D60
	.align 2, 0
_02009CA4: .4byte gUnk_03001E10
_02009CA8: .4byte gUnk_03001E40
_02009CAC: .4byte gUnk_03002620
_02009CB0: .4byte gUnk_03005030
_02009CB4: .4byte 0x040000D4
_02009CB8:
	cmp r4, r2
	bls _02009CBE
	b _02009DC8
_02009CBE:
	ldr r0, _02009D0C @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _02009D10 @ =0x040000D4
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
	bls _02009CBE
	b _02009DC8
	.align 2, 0
_02009D0C: .4byte gUnk_03005030
_02009D10: .4byte 0x040000D4
_02009D14:
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	movs r6, #0x20
	ldr r0, _02009D70 @ =gUnk_03001E40
	add r0, r8
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _02009D30
	movs r6, #0x40
_02009D30:
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #3
	cmp r0, #0xff
	bne _02009D7C
	ldr r0, _02009D74 @ =gUnk_03005030
	add r0, sl
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _02009D78 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r6, r0
	lsls r0, r0, #1
_02009D60:
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _02009DC8
	.align 2, 0
_02009D70: .4byte gUnk_03001E40
_02009D74: .4byte gUnk_03005030
_02009D78: .4byte 0x040000D4
_02009D7C:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhi _02009DC8
	ldr r0, _02009E04 @ =gUnk_03005030
	mov r8, r0
_02009D88:
	mov r0, sl
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _02009E08 @ =0x040000D4
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
	bls _02009D88
_02009DC8:
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _02009E08 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _02009E0C @ =gUnk_03001E10
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _02009E10 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_02009DE2:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _02009DF2
	b _02009C04
_02009DF2:
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
_02009E04: .4byte gUnk_03005030
_02009E08: .4byte 0x040000D4
_02009E0C: .4byte gUnk_03001E10
_02009E10: .4byte 0x85000001

	thumb_func_start sub_2009E14
sub_2009E14: @ 0x02009E14
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _02009E44 @ =gUnk_0201E8D4
	mov r0, sp
	movs r2, #8
	bl memcpy
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _02009E48
	movs r0, #1
	rsbs r0, r0, #0
	b _02009EBA
	.align 2, 0
_02009E44: .4byte gUnk_0201E8D4
_02009E48:
	cmp r1, #0
	bgt _02009E54
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_02009E54:
	cmp r2, #0
	bgt _02009E64
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_02009E64:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _02009E7C
	lsls r0, r1, #0x17
	cmp r2, #0
	beq _02009E90
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _02009E8A
_02009E7C:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	cmp r1, #0
	beq _02009E90
	asrs r0, r0, #0x10
_02009E8A:
	bl __divsi3
	lsls r0, r0, #0x10
_02009E90:
	lsrs r2, r0, #0x10
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _02009EAC
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_02009EAC:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_02009EBA:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_2009EC4
sub_2009EC4: @ 0x02009EC4
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_02009ECE:
	lsrs r0, r1, #0xc
	adds r3, r4, r2
	lsls r1, r1, #0x14
	adds r2, #1
	cmp r0, #9
	bls _02009EDE
	adds r0, #0x57
	b _02009EE0
_02009EDE:
	adds r0, #0x30
_02009EE0:
	strb r0, [r3]
	lsrs r1, r1, #0x10
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _02009ECE
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_2009EF8
sub_2009EF8: @ 0x02009EF8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r6, #0
_02009F02:
	adds r0, r4, #0
	movs r1, #0xa
	bl Div
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
	bls _02009F02
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_2009F38
sub_2009F38: @ 0x02009F38
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _02009F4C
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _02009F60
_02009F4C:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _02009F70 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_02009F60:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _02009F74
	movs r0, #0
	b _0200A016
	.align 2, 0
_02009F70: .4byte 0xFFFFBFFF
_02009F74:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _02009F8C
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _0200A014
_02009F88:
	adds r0, r1, #0
	b _0200A016
_02009F8C:
	ldr r0, _02009FA4 @ =gUnk_03002604
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
	b _02009FE4
	.align 2, 0
_02009FA4: .4byte gUnk_03002604
_02009FA8:
	ldr r0, _0200A01C @ =gUnk_0201E8DC
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	cmp r1, #1
	beq _02009FE4
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _02009F88
	ldr r0, _0200A020 @ =gUnk_03002604
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
_02009FE4:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r1, [r3]
	cmp r1, #0
	blt _02009FA8
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
_0200A014:
	movs r0, #1
_0200A016:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0200A01C: .4byte gUnk_0201E8DC
_0200A020: .4byte gUnk_03002604

	thumb_func_start sub_200A024
sub_200A024: @ 0x0200A024
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
	ldr r0, _0200A078 @ =gUnk_03002934
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
	ldr r1, _0200A07C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _0200A080 @ =gUnk_03002604
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
	blt _0200A148
	b _0200A0FC
	.align 2, 0
_0200A078: .4byte gUnk_03002934
_0200A07C: .4byte 0xFFFFBFFF
_0200A080: .4byte gUnk_03002604
_0200A084:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0200A08E
	mov sb, sl
_0200A08E:
	ldr r0, _0200A0DC @ =gUnk_0201E8DC
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r2, r0, #0
	ldr r3, _0200A0E0 @ =gUnk_03002934
	ldr r0, [sp]
	ldrb r1, [r3]
	cmp r0, r1
	beq _0200A0B2
	strb r0, [r3]
	movs r1, #1
	mov r8, r1
_0200A0B2:
	cmp r2, #1
	beq _0200A0FC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0200A0E8
	ldr r0, _0200A0E4 @ =gUnk_03002604
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
	b _0200A0FC
	.align 2, 0
_0200A0DC: .4byte gUnk_0201E8DC
_0200A0E0: .4byte gUnk_03002934
_0200A0E4: .4byte gUnk_03002604
_0200A0E8:
	mov r0, r8
	cmp r0, #0
	beq _0200A0F8
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
_0200A0F8:
	adds r0, r2, #0
	b _0200A15C
_0200A0FC:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r1, [r5]
	cmp r1, #0
	blt _0200A084
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
	beq _0200A12C
	cmp r6, #0
	ble _0200A12C
	adds r0, r6, #0
	bl DivRem
	adds r6, r0, #0
	b _0200A130
_0200A12C:
	ldr r0, [r5]
	add sl, r0
_0200A130:
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
	bge _0200A0FC
_0200A148:
	mov r0, r8
	cmp r0, #0
	beq _0200A15A
	ldr r0, _0200A16C @ =gUnk_03002934
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0x3f
	ands r1, r2
	strb r1, [r0]
_0200A15A:
	movs r0, #1
_0200A15C:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0200A16C: .4byte gUnk_03002934

	thumb_func_start sub_200A170
sub_200A170: @ 0x0200A170
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
	bne _0200A1EE
	ldr r1, [r2, #4]
	ldr r0, _0200A1A4 @ =gUnk_03002604
	ldr r4, [r2, #8]
	ldr r6, _0200A1A8 @ =gUnk_03001E50
	ldr r5, _0200A1AC @ =gUnk_03002934
	cmp r1, #0
	bge _0200A1B0
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r2, r0, r1
	lsls r0, r4, #0x16
	b _0200A1BA
	.align 2, 0
_0200A1A4: .4byte gUnk_03002604
_0200A1A8: .4byte gUnk_03001E50
_0200A1AC: .4byte gUnk_03002934
_0200A1B0:
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r2, r0, r1
	lsls r0, r4, #0x15
_0200A1BA:
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
_0200A1EE:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_200A1F8
sub_200A1F8: @ 0x0200A1F8
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
	bne _0200A246
	ldr r1, [r4, #4]
	ldr r2, _0200A250 @ =0x040000D4
	ldr r0, _0200A254 @ =gUnk_03002604
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
	ldr r1, _0200A258 @ =gUnk_03001BF0
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _0200A25C @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_0200A246:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0200A250: .4byte 0x040000D4
_0200A254: .4byte gUnk_03002604
_0200A258: .4byte gUnk_03001BF0
_0200A25C: .4byte gUnk_030013D0

	thumb_func_start sub_200A260
sub_200A260: @ 0x0200A260
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_200A26C
sub_200A26C: @ 0x0200A26C
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_200A27C
sub_200A27C: @ 0x0200A27C
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_200A290
sub_200A290: @ 0x0200A290
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _0200A2CC @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _0200A2D0 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0200A2D4
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _0200A338
	.align 2, 0
_0200A2CC: .4byte 0x040000D4
_0200A2D0: .4byte 0x84000002
_0200A2D4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0200A308
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
_0200A308:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0200A338
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
_0200A338:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_200A340
sub_200A340: @ 0x0200A340
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

	thumb_func_start sub_200A35C
sub_200A35C: @ 0x0200A35C
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_200A368
sub_200A368: @ 0x0200A368
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

	thumb_func_start sub_200A380
sub_200A380: @ 0x0200A380
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_200A388
sub_200A388: @ 0x0200A388
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _0200A3A0 @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_0200A3A0: .4byte 0xFFFFCFFF

	thumb_func_start sub_200A3A4
sub_200A3A4: @ 0x0200A3A4
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_200A3B4
sub_200A3B4: @ 0x0200A3B4
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
	ldr r0, _0200A46C @ =gUnk_03005046
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl Div
	ldr r7, _0200A470 @ =gUnk_0201DED4
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
	bl Div
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
	bl Div
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
	bl Div
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
_0200A46C: .4byte gUnk_03005046
_0200A470: .4byte gUnk_0201DED4

	thumb_func_start sub_200A474
sub_200A474: @ 0x0200A474
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
	bne _0200A490
	b _0200A72E
_0200A490:
	lsrs r0, r2, #0x1c
	ldr r1, _0200A504 @ =gUnk_03002604
	ldr r3, [sp, #0x24]
	ldrh r5, [r3, #0xc]
	add r4, sp, #0x20
	ldr r3, [r3, #8]
	ldr r6, _0200A508 @ =gUnk_03005046
	mov r8, r6
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x2c]
	ldr r6, _0200A50C @ =gUnk_0201DED4
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
	bne _0200A510
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r5, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _0200A51E
	.align 2, 0
_0200A504: .4byte gUnk_03002604
_0200A508: .4byte gUnk_03005046
_0200A50C: .4byte gUnk_0201DED4
_0200A510:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r5, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_0200A51E:
	movs r0, #0x1f
	ands r3, r0
	strh r3, [r4]
	ldrh r4, [r4]
	lsls r4, r4, #5
	add r4, r8
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r1, _0200A6A4 @ =0x000003FF
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
	bl Div
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
	bl Div
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
	bl Div
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
	bl Div
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
	bge _0200A5FC
	rsbs r0, r0, #0
	mov r1, sl
	strh r0, [r1]
_0200A5FC:
	mov r2, sb
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _0200A60E
	rsbs r0, r4, #0
	mov r6, r8
	strh r0, [r6]
_0200A60E:
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
	ble _0200A6A8
	ldrh r5, [r7, #8]
	b _0200A6B2
	.align 2, 0
_0200A6A4: .4byte 0x000003FF
_0200A6A8:
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0200A6B2:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _0200A6BC
	ldrh r4, [r7, #0xa]
	b _0200A6C6
_0200A6BC:
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0200A6C6:
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
_0200A72E:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_200A740
sub_200A740: @ 0x0200A740
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
	bne _0200A76C
	b _0200ABCC
_0200A76C:
	lsrs r0, r2, #0x1c
	ldr r1, _0200A78C @ =gUnk_03002604
	ldrh r3, [r6, #0xc]
	ldr r4, [r6, #8]
	cmp r0, #0
	bne _0200A790
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _0200A79E
	.align 2, 0
_0200A78C: .4byte gUnk_03002604
_0200A790:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_0200A79E:
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
	beq _0200A7D0
	ldr r0, _0200A830 @ =gUnk_03001384
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
_0200A7D0:
	ldrh r3, [r7, #4]
	str r3, [sp, #8]
	ldrh r5, [r7, #6]
	str r5, [sp, #0xc]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0200A834
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
	beq _0200A8A0
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
	b _0200A8A0
	.align 2, 0
_0200A830: .4byte gUnk_03001384
_0200A834:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0200A84E
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	ldr r5, [sp, #0xc]
	subs r0, r5, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	b _0200A858
_0200A84E:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	mov r5, r8
	subs r5, r5, r0
	mov r8, r5
_0200A858:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0200A872
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, [sp, #8]
	subs r0, r3, r0
	mov r5, sb
	subs r5, r5, r0
	mov sb, r5
	b _0200A87C
_0200A872:
	movs r1, #8
	ldrsh r0, [r7, r1]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
_0200A87C:
	lsrs r0, r2, #0xb
	movs r4, #1
	ands r0, r4
	ldrh r1, [r7]
	lsls r3, r1, #0x10
	lsrs r1, r3, #0x1f
	cmp r0, r1
	beq _0200A890
	movs r5, #1
	str r5, [sp, #0x24]
_0200A890:
	lsrs r1, r2, #0xa
	lsrs r0, r3, #0x1e
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0200A8A0
	movs r0, #1
	str r0, [sp, #0x28]
_0200A8A0:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0200A8CA
	adds r0, r1, #0
	add r0, sb
	cmp r0, #0
	bge _0200A8B0
	b _0200ABCC
_0200A8B0:
	mov r2, sb
	cmp r2, #0xf0
	ble _0200A8B8
	b _0200ABCC
_0200A8B8:
	ldr r0, [sp, #0xc]
	add r0, r8
	cmp r0, #0
	bge _0200A8C2
	b _0200ABCC
_0200A8C2:
	mov r3, r8
	cmp r3, #0xa0
	ble _0200A8CA
	b _0200ABCC
_0200A8CA:
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
	ldr r0, _0200AAD4 @ =gUnk_03002604
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _0200AAD8 @ =gUnk_03001480
	ldrb r0, [r0]
	strb r0, [r6, #0x1d]
	movs r5, #0
	str r5, [sp, #0x10]
	ldrh r0, [r7, #2]
	cmp r5, r0
	blo _0200A914
	b _0200AA92
_0200A914:
	ldr r2, _0200AADC @ =0x040000D4
	ldrh r0, [r7]
	ldr r3, _0200AAE0 @ =0x00003FFF
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
	ldr r0, _0200AAE4 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sp
	ldrh r5, [r0, #2]
	ldr r1, _0200AAE8 @ =0x000001FF
	adds r0, r1, #0
	adds r4, r0, #0
	ands r4, r5
	cmp r4, #0xff
	ble _0200A94C
	ldr r2, _0200AAEC @ =0xFFFFFE00
	adds r4, r4, r2
_0200A94C:
	mov r0, sp
	ldrb r3, [r0]
	cmp r3, #0x7f
	ble _0200A958
	ldr r0, _0200AAF0 @ =0xFFFFFF00
	adds r3, r3, r0
_0200A958:
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
	ldr r2, _0200AAF4 @ =gUnk_0201E90C
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
	beq _0200A9D0
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _0200A9B2
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
_0200A9B2:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _0200A9D0
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
_0200A9D0:
	add r3, r8
	mov r5, ip
	adds r0, r3, r5
	cmp r0, #0
	blt _0200AA80
	cmp r3, #0xa0
	bgt _0200AA80
	add r4, sb
	mov r1, sl
	adds r0, r4, r1
	cmp r0, #0
	blt _0200AA80
	cmp r4, #0xf0
	bgt _0200AA80
	mov r2, sp
	mov r1, sp
	movs r0, #0xff
	ands r3, r0
	ldrh r1, [r1]
	adds r0, r3, r1
	strh r0, [r2]
	mov r1, sp
	ldr r3, _0200AAE8 @ =0x000001FF
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
	beq _0200AA44
	ldr r0, _0200AAF8 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r2, #4]
_0200AA44:
	mov r2, sp
	mov r1, sp
	ldr r0, [r6]
	ldr r3, _0200AAFC @ =0xF9FF0000
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
	bl sub_200ABE4
	adds r1, r0, #0
	ldr r0, _0200AB00 @ =gUnk_03005C38
	ldr r0, [r0]
	cmp r0, r1
	bne _0200AA72
	b _0200ABCC
_0200AA72:
	ldr r0, _0200AADC @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _0200AAE4 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0200AA80:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r3, [r7, #2]
	cmp r0, r3
	bhs _0200AA92
	b _0200A914
_0200AA92:
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0200AA9C
	b _0200ABCC
_0200AA9C:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0200AAAA
	b _0200ABCC
_0200AAAA:
	ldr r0, _0200AB04 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	ldr r0, [r7, #0xc]
	ldr r1, _0200AB08 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, _0200AAD4 @ =gUnk_03002604
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r3, r0, r1
	ldr r0, [r3]
	cmp r0, #0
	blt _0200AB0C
	movs r5, #0x20
	mov sb, r5
	ldr r2, [r2, #0x10]
	b _0200AB12
	.align 2, 0
_0200AAD4: .4byte gUnk_03002604
_0200AAD8: .4byte gUnk_03001480
_0200AADC: .4byte 0x040000D4
_0200AAE0: .4byte 0x00003FFF
_0200AAE4: .4byte 0x80000003
_0200AAE8: .4byte 0x000001FF
_0200AAEC: .4byte 0xFFFFFE00
_0200AAF0: .4byte 0xFFFFFF00
_0200AAF4: .4byte gUnk_0201E90C
_0200AAF8: .4byte 0x000003FF
_0200AAFC: .4byte 0xF9FF0000
_0200AB00: .4byte gUnk_03005C38
_0200AB04: .4byte 0xFBFFFFFF
_0200AB08: .4byte 0x00FFFFFF
_0200AB0C:
	movs r1, #0x40
	mov sb, r1
	ldr r2, [r2, #0x14]
_0200AB12:
	mov r4, sb
	muls r0, r4, r0
	adds r5, r2, r0
	adds r3, #4
	ldr r6, [r6]
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r8, r1
	bhs _0200AB98
	ldr r0, _0200AB48 @ =gUnk_03001E50
	mov ip, r0
	ldr r7, _0200AB4C @ =gUnk_03002934
_0200AB2C:
	ldm r3!, {r0}
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r2
	mov sl, r0
	adds r0, r5, r4
	cmp r0, sl
	bne _0200AB50
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0200AB88
	.align 2, 0
_0200AB48: .4byte gUnk_03001E50
_0200AB4C: .4byte gUnk_03002934
_0200AB50:
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
_0200AB88:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [sp, #0x2c]
	cmp r8, r0
	blo _0200AB2C
_0200AB98:
	ldr r3, _0200ABDC @ =gUnk_03001E50
	ldr r2, _0200ABE0 @ =gUnk_03002934
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
_0200ABCC:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200ABDC: .4byte gUnk_03001E50
_0200ABE0: .4byte gUnk_03002934

	thumb_func_start sub_200ABE4
sub_200ABE4: @ 0x0200ABE4
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _0200ABF0
	movs r2, #0x1f
_0200ABF0:
	ldr r3, _0200AC00 @ =gUnk_03001480
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0200AC08
	ldr r0, _0200AC04 @ =gUnk_03005C38
	ldr r0, [r0]
	b _0200AC60
	.align 2, 0
_0200AC00: .4byte gUnk_03001480
_0200AC04: .4byte gUnk_03005C38
_0200AC08:
	ldr r0, _0200AC30 @ =gUnk_030013E0
	adds r5, r2, r0
	ldrb r0, [r5]
	ldr r4, _0200AC34 @ =gUnk_03002150
	ldrb r1, [r3]
	ldr r6, _0200AC38 @ =gUnk_03005010
	adds r7, r4, #0
	subs r7, #8
	cmp r0, #0xff
	bne _0200AC3C
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r3]
	strb r0, [r5]
	adds r1, r2, r6
	ldrb r0, [r3]
	strb r0, [r1]
	b _0200AC54
	.align 2, 0
_0200AC30: .4byte gUnk_030013E0
_0200AC34: .4byte gUnk_03002150
_0200AC38: .4byte gUnk_03005010
_0200AC3C:
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
_0200AC54:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r7
_0200AC60:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_200AC68
sub_200AC68: @ 0x0200AC68
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r6, _0200AD14 @ =gUnk_03005040
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r4, #0
_0200AC7E:
	ldr r1, _0200AD18 @ =gUnk_030013E0
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
	beq _0200ACCA
	ldr r0, _0200AD1C @ =gUnk_03002150
	mov sb, r0
	ldr r1, _0200AD20 @ =gUnk_03002580
	mov ip, r1
_0200AC9E:
	ldr r1, _0200AD24 @ =0x040000D4
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	add r3, sb
	str r3, [r1]
	str r5, [r1, #4]
	ldr r0, _0200AD28 @ =0x80000003
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
	bne _0200AC9E
_0200ACCA:
	adds r4, #1
	cmp r4, #0x1f
	ble _0200AC7E
	ldr r7, _0200AD2C @ =gUnk_030013D0
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	ldr r1, _0200AD30 @ =gUnk_03001480
	cmp r0, #0
	beq _0200AD3C
	ldrb r4, [r1]
	lsls r0, r4, #3
	ldr r2, _0200AD14 @ =gUnk_03005040
	adds r5, r0, r2
	ldr r2, _0200AD34 @ =gUnk_03002990
	ldrb r3, [r2]
	cmp r4, r3
	bge _0200ADBC
_0200ACF0:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0200AD24 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _0200AD38 @ =0x81000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r5, #8
	adds r4, #1
	ldrb r0, [r2]
	cmp r4, r0
	blt _0200ACF0
	b _0200ADBC
	.align 2, 0
_0200AD14: .4byte gUnk_03005040
_0200AD18: .4byte gUnk_030013E0
_0200AD1C: .4byte gUnk_03002150
_0200AD20: .4byte gUnk_03002580
_0200AD24: .4byte 0x040000D4
_0200AD28: .4byte 0x80000003
_0200AD2C: .4byte gUnk_030013D0
_0200AD30: .4byte gUnk_03001480
_0200AD34: .4byte gUnk_03002990
_0200AD38: .4byte 0x81000003
_0200AD3C:
	movs r2, #0x80
	lsls r2, r2, #3
	ands r2, r3
	cmp r2, #0
	beq _0200ADB8
	adds r5, r1, #0
	ldrb r0, [r5]
	subs r4, r0, #1
	movs r2, #0x7f
	cmp r4, #0
	blt _0200AD6E
_0200AD52:
	ldr r1, _0200ADA4 @ =0x040000D4
	lsls r0, r4, #3
	adds r0, r0, r6
	str r0, [r1]
	lsls r0, r2, #3
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0200ADA8 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r4, #1
	subs r2, #1
	cmp r4, #0
	bge _0200AD52
_0200AD6E:
	ldr r3, _0200ADAC @ =gUnk_03002990
	ldrb r1, [r5]
	movs r0, #0x80
	subs r0, r0, r1
	strb r0, [r3]
	movs r4, #0
	cmp r4, r0
	bge _0200ADBC
_0200AD7E:
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0200ADA4 @ =0x040000D4
	str r1, [r2]
	lsls r0, r4, #3
	ldr r1, _0200ADB0 @ =gUnk_03005040
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0200ADB4 @ =0x81000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blt _0200AD7E
	b _0200ADBC
	.align 2, 0
_0200ADA4: .4byte 0x040000D4
_0200ADA8: .4byte 0x80000003
_0200ADAC: .4byte gUnk_03002990
_0200ADB0: .4byte gUnk_03005040
_0200ADB4: .4byte 0x81000003
_0200ADB8:
	ldr r0, _0200ADF0 @ =gUnk_03002990
	strb r2, [r0]
_0200ADBC:
	ldr r1, _0200ADF4 @ =gUnk_03001480
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	add r6, sp, #8
	cmp r0, #0
	beq _0200AE00
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _0200ADF8 @ =0x05000008
	mov r1, sl
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #8]
	ldr r1, _0200ADFC @ =gUnk_03005010
	adds r0, r6, #0
	adds r2, r5, #0
	bl CpuSet
	b _0200AE20
	.align 2, 0
_0200ADF0: .4byte gUnk_03002990
_0200ADF4: .4byte gUnk_03001480
_0200ADF8: .4byte 0x05000008
_0200ADFC: .4byte gUnk_03005010
_0200AE00:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _0200AE30 @ =0x040000D4
	str r6, [r0]
	mov r2, sl
	str r2, [r0, #4]
	ldr r2, _0200AE34 @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	str r6, [r0]
	ldr r1, _0200AE38 @ =gUnk_03005010
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_0200AE20:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200AE30: .4byte 0x040000D4
_0200AE34: .4byte 0x85000008
_0200AE38: .4byte gUnk_03005010

	thumb_func_start nullsub_1
nullsub_1: @ 0x0200AE3C
	bx lr
	.align 2, 0

	thumb_func_start sub_200AE40
sub_200AE40: @ 0x0200AE40
	ldr r0, _0200AE48 @ =gUnk_03005C38
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0200AE48: .4byte gUnk_03005C38

	thumb_func_start nullsub_14
nullsub_14: @ 0x0200AE4C
	bx lr
	.align 2, 0

	thumb_func_start sub_200AE50
sub_200AE50: @ 0x0200AE50
	movs r0, #0
	bx lr
