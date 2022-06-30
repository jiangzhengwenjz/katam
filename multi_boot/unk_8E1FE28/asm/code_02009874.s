	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_02009874
sub_02009874: @ 0x02009874
	push {lr}
	bl sub_02009888
	bl sub_020001CC
	bl sub_02009DB8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02009888
sub_02009888: @ 0x02009888
	push {r4, lr}
	sub sp, #8
	ldr r1, _020098D8 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _020098DC @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _020098E0 @ =gUnk_030013D0
	movs r3, #0
	str r3, [r2]
	ldr r0, _020098E4 @ =gUnk_03002600
	str r3, [r0]
	ldr r1, _020098E8 @ =gUnk_03001E24
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _020098EC @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _020098C4
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
_020098C4:
	ldr r0, _020098F0 @ =gUnk_03001E20
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _020098F4
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	b _020098F6
	.align 2, 0
_020098D8: .4byte 0x04000208
_020098DC: .4byte 0x00004014
_020098E0: .4byte gUnk_030013D0
_020098E4: .4byte gUnk_03002600
_020098E8: .4byte gUnk_03001E24
_020098EC: .4byte 0x04000134
_020098F0: .4byte gUnk_03001E20
_020098F4:
	str r3, [r2]
_020098F6:
	ldr r1, _02009C60 @ =gUnk_03002564
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _02009C64 @ =gUnk_03002994
	movs r1, #0
	strb r1, [r0]
	ldr r0, _02009C68 @ =gUnk_03002720
	strb r1, [r0]
	ldr r0, _02009C6C @ =gUnk_03005840
	strb r1, [r0]
	ldr r0, _02009C70 @ =gUnk_03005008
	strb r1, [r0]
	ldr r0, _02009C74 @ =gUnk_03002934
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _02009C7C @ =gUnk_03001E10
	str r0, [r1, #4]
	ldr r0, _02009C80 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009926:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009926
	ldr r1, _02009C84 @ =gUnk_03005030
	movs r0, #0
	str r0, [r1]
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _02009C88 @ =gUnk_03002610
	str r0, [r1, #4]
	ldr r0, _02009C80 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009944:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009944
	ldr r0, _02009C8C @ =gUnk_03001384
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _02009C90 @ =gUnk_03002620
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r2]
	str r1, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _02009C94 @ =gUnk_03001E50
	str r0, [r1, #4]
	ldr r0, _02009C98 @ =0x850000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200996E:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200996E
	ldr r0, _02009C9C @ =gUnk_03001480
	movs r1, #0
	strb r1, [r0]
	ldr r0, _02009CA0 @ =gUnk_03002990
	strb r1, [r0]
	add r2, sp, #4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _02009C78 @ =0x040000D4
	str r2, [r1]
	ldr r0, _02009CA4 @ =gUnk_03005040
	str r0, [r1, #4]
	ldr r0, _02009CA8 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009996:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009996
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	ldr r1, _02009C78 @ =0x040000D4
	str r2, [r1]
	ldr r0, _02009CAC @ =gUnk_03002150
	str r0, [r1, #4]
	ldr r0, _02009CA8 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_020099B2:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _020099B2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _02009CB0 @ =gUnk_030013E0
	str r0, [r1, #4]
	ldr r0, _02009CB4 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_020099CE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _020099CE
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _02009CB8 @ =gUnk_03005010
	str r0, [r1, #4]
	ldr r0, _02009CB4 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_020099EA:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _020099EA
	ldr r1, _02009C78 @ =0x040000D4
	ldr r0, _02009CBC @ =0x05000200
	str r0, [r1]
	ldr r0, _02009CC0 @ =gUnk_03001BF0
	str r0, [r1, #4]
	ldr r0, _02009CC4 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009A00:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009A00
	ldr r1, _02009C78 @ =0x040000D4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1]
	ldr r0, _02009CC8 @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _02009CC4 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009A18:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009A18
	ldr r0, _02009CCC @ =gUnk_030014B0
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
	ldr r0, _02009CD0 @ =gUnk_030014A4
	strb r3, [r0]
	ldr r0, _02009CD4 @ =gUnk_030014D4
	strh r1, [r0]
	ldr r0, _02009CD8 @ =gUnk_03001380
	strh r2, [r0]
	ldr r0, _02009CDC @ =gUnk_03005844
	strh r2, [r0]
	ldr r0, _02009CE0 @ =gUnk_0300293C
	strh r1, [r0]
	ldr r0, _02009CE4 @ =gUnk_03005004
	strh r1, [r0]
	ldr r0, _02009CE8 @ =gUnk_030014DC
	strh r1, [r0]
	ldr r0, _02009CEC @ =gUnk_0300260C
	strh r1, [r0]
	ldr r0, _02009CF0 @ =gUnk_03005848
	strh r2, [r0]
	ldr r0, _02009CF4 @ =gUnk_03001E00
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _02009CF8 @ =gUnk_03001478
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _02009CFC @ =gUnk_03005868
	str r1, [r0]
_02009A7E:
	ldr r2, _02009D00 @ =gUnk_03002570
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	movs r1, #0x14
	strb r1, [r2]
	ldr r1, _02009D04 @ =gUnk_03002630
	adds r1, r0, r1
	movs r2, #8
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _02009A7E
	ldr r1, _02009D08 @ =gUnk_03001DF4
	movs r0, #0
	str r0, [r1]
	movs r1, #0
_02009AA6:
	ldr r3, _02009D0C @ =gUnk_03000740
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r3, r1, r3
	ldr r2, _02009D10 @ =gUnk_02021D50
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _02009AA6
	movs r0, #0
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _02009D14 @ =gUnk_030016F0
	str r2, [r1, #4]
	ldr r0, _02009D18 @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009AD8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009AD8
	ldr r0, _02009D1C @ =gUnk_03001414
	str r2, [r0]
	ldr r1, _02009D20 @ =gUnk_03001E3C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _02009D24 @ =gUnk_03002658
	movs r1, #0
	str r1, [r0]
	ldr r0, _02009D28 @ =gUnk_03002930
	strb r1, [r0]
	ldr r0, _02009D2C @ =gUnk_0300141C
	strb r1, [r0]
	ldr r0, _02009D30 @ =gUnk_03001474
	strb r1, [r0]
	str r1, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _02009D34 @ =gUnk_03002550
	str r0, [r1, #4]
	ldr r0, _02009C80 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009B10:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009B10
	movs r0, #0
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _02009D38 @ =gUnk_030029A0
	str r0, [r1, #4]
	ldr r0, _02009C80 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009B2A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009B2A
	ldr r0, _02009D3C @ =gUnk_03005000
	movs r1, #0
	strb r1, [r0]
	ldr r0, _02009D40 @ =gUnk_030014D8
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _02009D44 @ =gUnk_03001400
	str r0, [r1, #4]
	ldr r0, _02009C80 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009B4E:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009B4E
	movs r0, #0
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _02009D48 @ =gUnk_03005850
	str r0, [r1, #4]
	ldr r0, _02009C80 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009B68:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009B68
	bl m4aSoundInit
	ldr r0, _02009D4C @ =0x0095FA00
	bl SoundMode_rev01
	bl m4aSoundMain
	ldr r1, _02009D50 @ =gUnk_03005864
	movs r0, #1
	strb r0, [r1]
	bl sub_0200A690
	ldr r1, _02009D54 @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _02009D58 @ =gUnk_030014D0
	ldr r0, _02009D5C @ =0x06014000
	str r0, [r1]
	bl nullsub_01
	ldr r2, _02009D60 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _02009C78 @ =0x040000D4
	ldr r0, _02009D64 @ =sub_020000FC
	str r0, [r1]
	ldr r2, _02009D68 @ =gUnk_03000780
	str r2, [r1, #4]
	ldr r0, _02009CC4 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009BB6:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009BB6
	ldr r0, _02009D6C @ =0x03007FFC
	str r2, [r0]
	ldr r2, _02009D70 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r1, _02009D74 @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _02009D78 @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _02009BEA
	ldr r0, _02009D7C @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _02009D80 @ =0x454B3842
	cmp r1, r0
	bne _02009BEA
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_02009BEA:
	ldr r1, _02009D84 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _02009D88 @ =gUnk_03002640
	str r0, [r1, #4]
	ldr r0, _02009D8C @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009C04:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009C04
	movs r0, #0
	str r0, [sp]
	ldr r1, _02009C78 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _02009D90 @ =gUnk_03001420
	str r0, [r1, #4]
	ldr r0, _02009D94 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009C1E:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009C1E
	ldr r0, _02009D98 @ =gUnk_030014E4
	movs r4, #0
	str r4, [r0]
	ldr r0, _02009D9C @ =gUnk_030014E8
	strb r4, [r0]
	movs r0, #0
	bl MultiSioInit
	ldr r0, _02009DA0 @ =gUnk_0300500C
	strb r4, [r0]
	ldr r0, _02009DA4 @ =gUnk_03001470
	str r4, [r0]
	ldr r0, _02009DA8 @ =gUnk_030014E0
	strb r4, [r0]
	ldr r1, _02009C78 @ =0x040000D4
	ldr r0, _02009DAC @ =0x04000008
	str r0, [r1]
	ldr r0, _02009DB0 @ =gUnk_03001E40
	str r0, [r1, #4]
	ldr r0, _02009DB4 @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009C50:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009C50
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_02009C60: .4byte gUnk_03002564
_02009C64: .4byte gUnk_03002994
_02009C68: .4byte gUnk_03002720
_02009C6C: .4byte gUnk_03005840
_02009C70: .4byte gUnk_03005008
_02009C74: .4byte gUnk_03002934
_02009C78: .4byte 0x040000D4
_02009C7C: .4byte gUnk_03001E10
_02009C80: .4byte 0x85000004
_02009C84: .4byte gUnk_03005030
_02009C88: .4byte gUnk_03002610
_02009C8C: .4byte gUnk_03001384
_02009C90: .4byte gUnk_03002620
_02009C94: .4byte gUnk_03001E50
_02009C98: .4byte 0x850000C0
_02009C9C: .4byte gUnk_03001480
_02009CA0: .4byte gUnk_03002990
_02009CA4: .4byte gUnk_03005040
_02009CA8: .4byte 0x81000200
_02009CAC: .4byte gUnk_03002150
_02009CB0: .4byte gUnk_030013E0
_02009CB4: .4byte 0x85000008
_02009CB8: .4byte gUnk_03005010
_02009CBC: .4byte 0x05000200
_02009CC0: .4byte gUnk_03001BF0
_02009CC4: .4byte 0x84000080
_02009CC8: .4byte gUnk_03002730
_02009CCC: .4byte gUnk_030014B0
_02009CD0: .4byte gUnk_030014A4
_02009CD4: .4byte gUnk_030014D4
_02009CD8: .4byte gUnk_03001380
_02009CDC: .4byte gUnk_03005844
_02009CE0: .4byte gUnk_0300293C
_02009CE4: .4byte gUnk_03005004
_02009CE8: .4byte gUnk_030014DC
_02009CEC: .4byte gUnk_0300260C
_02009CF0: .4byte gUnk_03005848
_02009CF4: .4byte gUnk_03001E00
_02009CF8: .4byte gUnk_03001478
_02009CFC: .4byte gUnk_03005868
_02009D00: .4byte gUnk_03002570
_02009D04: .4byte gUnk_03002630
_02009D08: .4byte gUnk_03001DF4
_02009D0C: .4byte gUnk_03000740
_02009D10: .4byte gUnk_02021D50
_02009D14: .4byte gUnk_030016F0
_02009D18: .4byte 0x85000140
_02009D1C: .4byte gUnk_03001414
_02009D20: .4byte gUnk_03001E3C
_02009D24: .4byte gUnk_03002658
_02009D28: .4byte gUnk_03002930
_02009D2C: .4byte gUnk_0300141C
_02009D30: .4byte gUnk_03001474
_02009D34: .4byte gUnk_03002550
_02009D38: .4byte gUnk_030029A0
_02009D3C: .4byte gUnk_03005000
_02009D40: .4byte gUnk_030014D8
_02009D44: .4byte gUnk_03001400
_02009D48: .4byte gUnk_03005850
_02009D4C: .4byte 0x0095FA00
_02009D50: .4byte gUnk_03005864
_02009D54: .4byte gUnk_03001418
_02009D58: .4byte gUnk_030014D0
_02009D5C: .4byte 0x06014000
_02009D60: .4byte gUnk_030013D0
_02009D64: .4byte sub_020000FC
_02009D68: .4byte gUnk_03000780
_02009D6C: .4byte 0x03007FFC
_02009D70: .4byte 0x04000200
_02009D74: .4byte 0x04000004
_02009D78: .4byte 0x080000B2
_02009D7C: .4byte 0x080000AC
_02009D80: .4byte 0x454B3842
_02009D84: .4byte 0x04000208
_02009D88: .4byte gUnk_03002640
_02009D8C: .4byte 0x85000005
_02009D90: .4byte gUnk_03001420
_02009D94: .4byte 0x85000014
_02009D98: .4byte gUnk_030014E4
_02009D9C: .4byte gUnk_030014E8
_02009DA0: .4byte gUnk_0300500C
_02009DA4: .4byte gUnk_03001470
_02009DA8: .4byte gUnk_030014E0
_02009DAC: .4byte 0x04000008
_02009DB0: .4byte gUnk_03001E40
_02009DB4: .4byte 0x80000004

	thumb_func_start sub_02009DB8
sub_02009DB8: @ 0x02009DB8
	push {r4, r5, lr}
_02009DBA:
	ldr r1, _02009E18 @ =gUnk_03005864
	movs r0, #0
	strb r0, [r1]
	ldr r1, _02009E1C @ =gUnk_030013D0
	ldr r0, [r1]
	ldr r2, _02009E20 @ =0xFEFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r1, _02009E24 @ =gUnk_03002600
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r0, _02009E28 @ =gUnk_03002564
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _02009E46
	bl sub_0200A5CC
	ldr r0, _02009E2C @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _02009E04
	bl sub_02000470
	ldr r0, _02009E30 @ =gUnk_03002640
	ldr r1, _02009E34 @ =gUnk_03001420
	movs r2, #0
	bl MultiSioMain
	ldr r1, _02009E38 @ =gUnk_030014E4
	str r0, [r1]
	bl sub_020005A0
	cmp r0, #0
	bne _02009E04
	bl sub_02001160
_02009E04:
	ldr r0, _02009E3C @ =gUnk_03000470
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _02009E40
	bl sub_0200A96C
	b _02009E46
	.align 2, 0
_02009E18: .4byte gUnk_03005864
_02009E1C: .4byte gUnk_030013D0
_02009E20: .4byte 0xFEFFFFFF
_02009E24: .4byte gUnk_03002600
_02009E28: .4byte gUnk_03002564
_02009E2C: .4byte gUnk_030014E8
_02009E30: .4byte gUnk_03002640
_02009E34: .4byte gUnk_03001420
_02009E38: .4byte gUnk_030014E4
_02009E3C: .4byte gUnk_03000470
_02009E40:
	ldr r1, _02009E8C @ =gUnk_03002564
	movs r0, #0
	strb r0, [r1]
_02009E46:
	ldr r4, _02009E90 @ =gUnk_030013D0
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	ldr r1, _02009E94 @ =gUnk_03002600
	str r0, [r1]
	bl VBlankIntrWait
	ldr r1, _02009E98 @ =gUnk_030014A4
	movs r0, #0
	strb r0, [r1]
	bl sub_02009EDC
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	bne _02009E7E
	bl sub_0200A1C4
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _02009E9C
_02009E7E:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	b _02009EA2
	.align 2, 0
_02009E8C: .4byte gUnk_03002564
_02009E90: .4byte gUnk_030013D0
_02009E94: .4byte gUnk_03002600
_02009E98: .4byte gUnk_030014A4
_02009E9C:
	ldr r0, _02009ED0 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r4]
_02009EA2:
	ldr r0, _02009ED4 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _02009EB4
	bl m4aSoundMain
_02009EB4:
	ldr r0, _02009ED8 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _02009EC2
	b _02009DBA
_02009EC2:
	ldr r0, _02009ED8 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _02009EC2
	b _02009DBA
	.align 2, 0
_02009ED0: .4byte 0xFFFFF7FF
_02009ED4: .4byte gUnk_030013D0
_02009ED8: .4byte 0x04000004

	thumb_func_start sub_02009EDC
sub_02009EDC: @ 0x02009EDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _02009FD0 @ =gUnk_03002620
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _02009FD4 @ =0x040000D4
	ldr r0, _02009FD8 @ =gUnk_03001E40
	str r0, [r3]
	ldr r0, _02009FDC @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _02009FE0 @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _02009FE4 @ =gUnk_030013D0
	ldr r1, [r5]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r6, _02009FE8 @ =gUnk_03001E00
	ldr r7, _02009FEC @ =gUnk_03002610
	mov ip, r7
	ldr r7, _02009FF0 @ =gUnk_030014B0
	mov r8, r7
	ldr r7, _02009FF4 @ =gUnk_03001474
	mov sb, r7
	ldr r7, _02009FF8 @ =gUnk_03002564
	mov sl, r7
	cmp r0, #0
	beq _02009F38
	ldr r0, _02009FFC @ =gUnk_03002730
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _0200A000 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_02009F38:
	ldr r1, [r5]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _02009F56
	ldr r0, _0200A004 @ =gUnk_03001BF0
	str r0, [r3]
	ldr r0, _0200A008 @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _0200A000 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_02009F56:
	str r6, [r3]
	ldr r0, _0200A00C @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _0200A010 @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0200A014 @ =gUnk_03001478
	str r0, [r3]
	ldr r0, _0200A018 @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _0200A01C @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	str r1, [r3]
	ldr r0, _0200A020 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _0200A024 @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r7, r8
	str r7, [r3]
	ldr r0, _0200A028 @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _0200A02C @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r5]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0200A044
	ldr r2, _0200A030 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r4, _0200A034 @ =gUnk_030029A0
	str r4, [r3, #4]
	ldr r0, _0200A038 @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _0200A03C @ =gUnk_0300141C
	ldrb r2, [r1]
	cmp r2, #0
	beq _02009FCA
	ldr r0, _0200A040 @ =gUnk_03002550
	str r0, [r3]
	str r4, [r3, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_02009FCA:
	mov r1, sb
	strb r2, [r1]
	b _0200A052
	.align 2, 0
_02009FD0: .4byte gUnk_03002620
_02009FD4: .4byte 0x040000D4
_02009FD8: .4byte gUnk_03001E40
_02009FDC: .4byte 0x04000008
_02009FE0: .4byte 0x84000002
_02009FE4: .4byte gUnk_030013D0
_02009FE8: .4byte gUnk_03001E00
_02009FEC: .4byte gUnk_03002610
_02009FF0: .4byte gUnk_030014B0
_02009FF4: .4byte gUnk_03001474
_02009FF8: .4byte gUnk_03002564
_02009FFC: .4byte gUnk_03002730
_0200A000: .4byte 0x84000080
_0200A004: .4byte gUnk_03001BF0
_0200A008: .4byte 0x05000200
_0200A00C: .4byte 0x04000040
_0200A010: .4byte 0x84000003
_0200A014: .4byte gUnk_03001478
_0200A018: .4byte 0x04000050
_0200A01C: .4byte 0x80000003
_0200A020: .4byte 0x04000010
_0200A024: .4byte 0x80000008
_0200A028: .4byte 0x04000020
_0200A02C: .4byte 0x84000008
_0200A030: .4byte 0x04000200
_0200A034: .4byte gUnk_030029A0
_0200A038: .4byte 0x85000004
_0200A03C: .4byte gUnk_0300141C
_0200A040: .4byte gUnk_03002550
_0200A044:
	ldr r2, _0200A0CC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200A0D0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	mov r7, sb
	strb r4, [r7]
_0200A052:
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0200A07A
	ldr r2, _0200A0D4 @ =0x040000D4
	ldr r0, _0200A0D8 @ =gUnk_03001414
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0200A0DC @ =gUnk_03002658
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _0200A0E0 @ =gUnk_03002930
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0200A07A:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0200A0C8
	bl sub_0200BD40
	ldr r0, _0200A0D4 @ =0x040000D4
	ldr r3, _0200A0E4 @ =gUnk_03005040
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _0200A0E8 @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _0200A0EC @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r3, r7
	str r1, [r0]
	ldr r1, _0200A0F0 @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _0200A0F4 @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_0200A0C8:
	movs r4, #0
	b _0200A10A
	.align 2, 0
_0200A0CC: .4byte 0x04000200
_0200A0D0: .4byte 0x0000FFFD
_0200A0D4: .4byte 0x040000D4
_0200A0D8: .4byte gUnk_03001414
_0200A0DC: .4byte gUnk_03002658
_0200A0E0: .4byte gUnk_03002930
_0200A0E4: .4byte gUnk_03005040
_0200A0E8: .4byte 0x80000080
_0200A0EC: .4byte 0x07000100
_0200A0F0: .4byte 0x07000200
_0200A0F4: .4byte 0x07000300
_0200A0F8:
	ldr r1, _0200A158 @ =gUnk_03005850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0200A10A:
	ldr r0, _0200A15C @ =gUnk_030014D8
	ldrb r0, [r0]
	cmp r4, r0
	blo _0200A0F8
	ldr r0, _0200A160 @ =gUnk_030013D0
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r7, _0200A164 @ =gUnk_03002564
	mov sl, r7
	ldr r5, _0200A15C @ =gUnk_030014D8
	cmp r1, #0
	beq _0200A178
	movs r0, #0
	str r0, [sp]
	ldr r2, _0200A168 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r4, _0200A158 @ =gUnk_03005850
	str r4, [r2, #4]
	ldr r0, _0200A16C @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _0200A170 @ =gUnk_03005000
	ldrb r3, [r1]
	cmp r3, #0
	beq _0200A152
	ldr r0, _0200A174 @ =gUnk_03001400
	str r0, [r2]
	str r4, [r2, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0200A152:
	strb r3, [r5]
	b _0200A17A
	.align 2, 0
_0200A158: .4byte gUnk_03005850
_0200A15C: .4byte gUnk_030014D8
_0200A160: .4byte gUnk_030013D0
_0200A164: .4byte gUnk_03002564
_0200A168: .4byte 0x040000D4
_0200A16C: .4byte 0x85000004
_0200A170: .4byte gUnk_03005000
_0200A174: .4byte gUnk_03001400
_0200A178:
	strb r1, [r5]
_0200A17A:
	mov r1, sl
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _0200A184
	movs r4, #0
_0200A184:
	movs r0, #0xff
	mov r7, sl
	strb r0, [r7]
	b _0200A192
_0200A18C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0200A192:
	cmp r4, #1
	bhi _0200A1AA
	ldr r1, _0200A1BC @ =gUnk_02021D88
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _0200A18C
	ldr r0, _0200A1C0 @ =gUnk_03002564
	strb r4, [r0]
_0200A1AA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200A1BC: .4byte gUnk_02021D88
_0200A1C0: .4byte gUnk_03002564

	thumb_func_start sub_0200A1C4
sub_0200A1C4: @ 0x0200A1C4
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _0200A1FC @ =gUnk_0300141C
	movs r0, #0
	strb r0, [r1]
	ldr r5, _0200A200 @ =gUnk_030013D0
	ldr r0, [r5]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0200A21A
	ldr r2, _0200A204 @ =gUnk_03001414
	ldr r0, [r2]
	ldr r1, _0200A208 @ =gUnk_030016F0
	ldr r3, _0200A20C @ =gUnk_03001E3C
	cmp r0, r1
	bne _0200A210
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r1, r4
	str r0, [r2]
	str r1, [r3]
	b _0200A21A
	.align 2, 0
_0200A1FC: .4byte gUnk_0300141C
_0200A200: .4byte gUnk_030013D0
_0200A204: .4byte gUnk_03001414
_0200A208: .4byte gUnk_030016F0
_0200A20C: .4byte gUnk_03001E3C
_0200A210:
	str r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r3]
_0200A21A:
	ldr r4, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0200A28C @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _0200A290 @ =gUnk_03005040
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _0200A294 @ =0x81000080
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
	ldr r1, _0200A298 @ =gUnk_03005000
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
_0200A28C: .4byte 0x040000D4
_0200A290: .4byte gUnk_03005040
_0200A294: .4byte 0x81000080
_0200A298: .4byte gUnk_03005000

	thumb_func_start sub_0200A29C
sub_0200A29C: @ 0x0200A29C
	push {r4, r5, r6, lr}
	ldr r4, _0200A318 @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _0200A31C @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _0200A320 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl SoundVSync_rev01
	ldr r1, _0200A324 @ =0x03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0200A328 @ =gUnk_03005864
	strb r2, [r0]
	ldr r6, _0200A32C @ =gUnk_03002600
	ldr r3, [r6]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _0200A344
	ldr r2, _0200A330 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
_0200A2DC:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A2DC
	ldr r2, _0200A318 @ =0x040000B0
	ldr r0, _0200A334 @ =gUnk_03001414
	ldr r4, [r0]
	str r4, [r2]
	ldr r0, _0200A338 @ =gUnk_03002658
	ldr r5, [r0]
	str r5, [r2, #4]
	ldr r3, _0200A33C @ =gUnk_03002930
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
	ldr r1, _0200A340 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0200A358
	.align 2, 0
_0200A318: .4byte 0x040000B0
_0200A31C: .4byte 0x0000C5FF
_0200A320: .4byte 0x00007FFF
_0200A324: .4byte 0x03007FF8
_0200A328: .4byte gUnk_03005864
_0200A32C: .4byte gUnk_03002600
_0200A330: .4byte 0x04000200
_0200A334: .4byte gUnk_03001414
_0200A338: .4byte gUnk_03002658
_0200A33C: .4byte gUnk_03002930
_0200A340: .4byte 0xA2600000
_0200A344:
	ldr r4, _0200A39C @ =gUnk_03002658
	ldr r0, [r4]
	cmp r0, #0
	beq _0200A358
	ldr r2, _0200A3A0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200A3A4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_0200A358:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0200A3B4
	ldr r2, _0200A3A8 @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0200A3AC @ =gUnk_03002654
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0200A3B0 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _0200A3A0 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _0200A3D0
	.align 2, 0
_0200A39C: .4byte gUnk_03002658
_0200A3A0: .4byte 0x04000200
_0200A3A4: .4byte 0x0000FFFD
_0200A3A8: .4byte 0x04000004
_0200A3AC: .4byte gUnk_03002654
_0200A3B0: .4byte 0x0000FFFB
_0200A3B4:
	ldr r2, _0200A408 @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _0200A40C @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _0200A410 @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _0200A414 @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_0200A3D0:
	ldr r0, _0200A418 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	beq _0200A3F2
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0200A3F2
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0200A3F2
	bl m4aSoundMain
_0200A3F2:
	ldr r1, _0200A41C @ =gUnk_03001DF4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _0200A420 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200A408: .4byte 0x04000004
_0200A40C: .4byte 0x0000FFFB
_0200A410: .4byte 0x0000FFDF
_0200A414: .4byte 0x04000200
_0200A418: .4byte gUnk_030014E8
_0200A41C: .4byte gUnk_03001DF4
_0200A420: .4byte 0x04000202

	thumb_func_start sub_0200A424
sub_0200A424: @ 0x0200A424
	push {r4, r5, lr}
	ldr r0, _0200A434 @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _0200A454
	movs r4, #0
	b _0200A44C
	.align 2, 0
_0200A434: .4byte 0x04000006
_0200A438:
	ldr r1, _0200A460 @ =gUnk_030029A0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0200A44C:
	ldr r0, _0200A464 @ =gUnk_03001474
	ldrb r0, [r0]
	cmp r4, r0
	blo _0200A438
_0200A454:
	ldr r1, _0200A468 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200A460: .4byte gUnk_030029A0
_0200A464: .4byte gUnk_03001474
_0200A468: .4byte 0x04000202

	thumb_func_start sub_0200A46C
sub_0200A46C: @ 0x0200A46C
	ldr r1, _0200A474 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A474: .4byte 0x04000202

	thumb_func_start sub_0200A478
sub_0200A478: @ 0x0200A478
	ldr r1, _0200A480 @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A480: .4byte 0x04000202

	thumb_func_start sub_0200A484
sub_0200A484: @ 0x0200A484
	ldr r1, _0200A48C @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A48C: .4byte 0x04000202

	thumb_func_start sub_0200A490
sub_0200A490: @ 0x0200A490
	ldr r1, _0200A498 @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A498: .4byte 0x04000202

	thumb_func_start sub_0200A49C
sub_0200A49C: @ 0x0200A49C
	ldr r1, _0200A4A4 @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A4A4: .4byte 0x04000202

	thumb_func_start sub_0200A4A8
sub_0200A4A8: @ 0x0200A4A8
	ldr r1, _0200A4B4 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A4B4: .4byte 0x04000202

	thumb_func_start sub_0200A4B8
sub_0200A4B8: @ 0x0200A4B8
	ldr r1, _0200A4C4 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A4C4: .4byte 0x04000202

	thumb_func_start sub_0200A4C8
sub_0200A4C8: @ 0x0200A4C8
	ldr r1, _0200A4D4 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A4D4: .4byte 0x04000202

	thumb_func_start sub_0200A4D8
sub_0200A4D8: @ 0x0200A4D8
	ldr r1, _0200A4E4 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A4E4: .4byte 0x04000202

	thumb_func_start sub_0200A4E8
sub_0200A4E8: @ 0x0200A4E8
	ldr r1, _0200A4F4 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A4F4: .4byte 0x04000202

	thumb_func_start sub_0200A4F8
sub_0200A4F8: @ 0x0200A4F8
	ldr r1, _0200A504 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200A504: .4byte 0x04000202

	thumb_func_start nullsub_010
nullsub_010: @ 0x0200A508
	bx lr
	.align 2, 0

	thumb_func_start sub_0200A50C
sub_0200A50C: @ 0x0200A50C
	push {r4, r5, r6, r7, lr}
	ldr r0, _0200A558 @ =gUnk_03005008
	ldr r7, _0200A55C @ =gUnk_03002934
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _0200A5C2
_0200A51A:
	ldr r6, _0200A558 @ =gUnk_03005008
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0200A560 @ =gUnk_03001E50
	adds r3, r1, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	beq _0200A59A
	movs r5, #0
_0200A530:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r4, [r3]
	cmp r1, r0
	bls _0200A570
	ldr r1, _0200A564 @ =0x040000D4
	adds r0, r4, r5
	str r0, [r1]
	ldr r0, [r3, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _0200A568 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0200A56C @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	b _0200A58C
	.align 2, 0
_0200A558: .4byte gUnk_03005008
_0200A55C: .4byte gUnk_03002934
_0200A560: .4byte gUnk_03001E50
_0200A564: .4byte 0x040000D4
_0200A568: .4byte 0x80000200
_0200A56C: .4byte 0xFFFFFC00
_0200A570:
	ldr r2, _0200A5B4 @ =0x040000D4
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
_0200A58C:
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	bne _0200A530
_0200A59A:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _0200A5B8 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0200A5BC
	movs r0, #0
	b _0200A5C4
	.align 2, 0
_0200A5B4: .4byte 0x040000D4
_0200A5B8: .4byte 0x04000004
_0200A5BC:
	ldrb r1, [r7]
	cmp r2, r1
	bne _0200A51A
_0200A5C2:
	movs r0, #1
_0200A5C4:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200A5CC
sub_0200A5CC: @ 0x0200A5CC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0200A62C @ =gUnk_03001E30
	mov r8, r0
	ldr r1, _0200A630 @ =gUnk_03002570
	mov ip, r1
	ldr r2, _0200A634 @ =gUnk_03002630
	mov sb, r2
	ldr r0, _0200A638 @ =gUnk_03002938
	ldr r6, _0200A63C @ =gUnk_03001E20
	ldrh r3, [r6]
	strh r3, [r0]
	ldr r0, _0200A640 @ =0x04000130
	ldrh r0, [r0]
	ldr r7, _0200A644 @ =0x000003FF
	adds r1, r7, #0
	bics r1, r0
	strh r1, [r6]
	ldr r0, _0200A648 @ =gUnk_03001410
	strh r1, [r0]
	ldr r4, _0200A64C @ =gUnk_0300298C
	adds r0, r1, #0
	eors r0, r3
	adds r2, r0, #0
	ands r2, r1
	strh r2, [r4]
	ldr r1, _0200A650 @ =gUnk_0300257C
	ands r0, r3
	strh r0, [r1]
	ldr r5, _0200A654 @ =gUnk_03001E48
	strh r2, [r5]
	movs r1, #0
_0200A610:
	ldrh r0, [r6]
	lsls r4, r1, #0x18
	asrs r2, r4, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	mov r7, r8
	adds r3, r7, r2
	cmp r0, #0
	bne _0200A658
	mov r1, ip
	adds r0, r1, r2
	b _0200A670
	.align 2, 0
_0200A62C: .4byte gUnk_03001E30
_0200A630: .4byte gUnk_03002570
_0200A634: .4byte gUnk_03002630
_0200A638: .4byte gUnk_03002938
_0200A63C: .4byte gUnk_03001E20
_0200A640: .4byte 0x04000130
_0200A644: .4byte 0x000003FF
_0200A648: .4byte gUnk_03001410
_0200A64C: .4byte gUnk_0300298C
_0200A650: .4byte gUnk_0300257C
_0200A654: .4byte gUnk_03001E48
_0200A658:
	ldrb r0, [r3]
	cmp r0, #0
	beq _0200A662
	subs r0, #1
	b _0200A672
_0200A662:
	adds r0, r1, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r7, sb
	adds r0, r7, r2
_0200A670:
	ldrb r0, [r0]
_0200A672:
	strb r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r4, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _0200A610
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200A690
sub_0200A690: @ 0x0200A690
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0200A72C @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _0200A730 @ =gUnk_03001E4C
	str r1, [r0]
	ldr r0, _0200A734 @ =gUnk_03001E0C
	str r1, [r0]
	ldr r0, _0200A738 @ =gUnk_03001E28
	str r1, [r0]
	str r1, [sp]
	ldr r1, _0200A73C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _0200A740 @ =gUnk_03000980
	str r4, [r1, #4]
	ldr r0, _0200A744 @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	movs r3, #0
_0200A6BC:
	ldr r0, _0200A748 @ =gUnk_030014F0
	lsls r1, r2, #2
	adds r1, r1, r0
	adds r0, r3, r4
	str r0, [r1]
	adds r3, #0x14
	adds r2, #1
	cmp r2, #0x7f
	ble _0200A6BC
	bl sub_0200A774
	adds r4, r0, #0
	cmp r4, #0
	beq _0200A768
	ldr r0, _0200A74C @ =sub_0200AC1C
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl sub_0200A774
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _0200A768
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _0200A750 @ =sub_0200AC20
	str r0, [r4, #8]
	ldr r0, _0200A754 @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _0200A758 @ =gUnk_03001490
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _0200A75C @ =gUnk_03005C38
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _0200A760 @ =gUnk_030029B0
	strh r5, [r1]
	ldr r0, _0200A764 @ =0x00002604
	strh r0, [r1, #2]
	movs r0, #1
	b _0200A76A
	.align 2, 0
_0200A72C: .4byte gUnk_03002560
_0200A730: .4byte gUnk_03001E4C
_0200A734: .4byte gUnk_03001E0C
_0200A738: .4byte gUnk_03001E28
_0200A73C: .4byte 0x040000D4
_0200A740: .4byte gUnk_03000980
_0200A744: .4byte 0x85000080
_0200A748: .4byte gUnk_030014F0
_0200A74C: .4byte sub_0200AC1C
_0200A750: .4byte sub_0200AC20
_0200A754: .4byte 0x0000FFFF
_0200A758: .4byte gUnk_03001490
_0200A75C: .4byte gUnk_03005C38
_0200A760: .4byte gUnk_030029B0
_0200A764: .4byte 0x00002604
_0200A768:
	movs r0, #0
_0200A76A:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200A774
sub_0200A774: @ 0x0200A774
	push {lr}
	ldr r3, _0200A78C @ =gUnk_03001E0C
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _0200A794
	ldr r1, _0200A790 @ =gUnk_030014F0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _0200A796
	.align 2, 0
_0200A78C: .4byte gUnk_03001E0C
_0200A790: .4byte gUnk_030014F0
_0200A794:
	movs r0, #0
_0200A796:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200A79C
sub_0200A79C: @ 0x0200A79C
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
	bl sub_0200A774
	adds r4, r0, #0
	cmp r4, #0
	bne _0200A7C4
	ldr r0, _0200A7C0 @ =gUnk_03001490
	b _0200A834
	.align 2, 0
_0200A7C0: .4byte gUnk_03001490
_0200A7C4:
	str r7, [r4, #8]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	mov r0, r8
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r6, #0
	bl sub_0200AA50
	strh r0, [r4, #6]
	ldr r0, _0200A818 @ =gUnk_03002560
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _0200A81C @ =gUnk_030014F0
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r1
	beq _0200A832
	ldr r6, _0200A820 @ =gUnk_03001E4C
_0200A7F0:
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r2, r5
	ldrh r0, [r1, #0x10]
	cmp r0, r8
	bls _0200A824
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
	bne _0200A832
	str r4, [r6]
	b _0200A832
	.align 2, 0
_0200A818: .4byte gUnk_03002560
_0200A81C: .4byte gUnk_030014F0
_0200A820: .4byte gUnk_03001E4C
_0200A824:
	adds r3, r1, #0
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r5
	bne _0200A7F0
_0200A832:
	adds r0, r4, #0
_0200A834:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200A840
sub_0200A840: @ 0x0200A840
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _0200A894 @ =gUnk_030014F0
	ldr r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0200A8A8
_0200A854:
	ldrh r0, [r1, #0x10]
	cmp r0, r2
	blo _0200A89C
_0200A85A:
	ldrh r0, [r1, #0x10]
	ldr r2, _0200A898 @ =gUnk_03001E28
	cmp r0, r4
	bhs _0200A88C
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	str r0, [r2]
	ldr r2, _0200A894 @ =gUnk_030014F0
	ldr r0, [r2]
	cmp r1, r0
	beq _0200A880
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _0200A880
	adds r0, r1, #0
	bl sub_0200A8B8
_0200A880:
	ldr r2, _0200A898 @ =gUnk_03001E28
	ldr r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0200A85A
_0200A88C:
	movs r0, #0
	str r0, [r2]
	b _0200A8AE
	.align 2, 0
_0200A894: .4byte gUnk_030014F0
_0200A898: .4byte gUnk_03001E28
_0200A89C:
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r0, r3
	cmp r0, #0
	bne _0200A854
_0200A8A8:
	ldr r1, _0200A8B4 @ =gUnk_03001E28
	movs r0, #0
	str r0, [r1]
_0200A8AE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200A8B4: .4byte gUnk_03001E28

	thumb_func_start sub_0200A8B8
sub_0200A8B8: @ 0x0200A8B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0200A95A
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _0200A95A
	cmp r0, r5
	beq _0200A95A
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0200A8E6
	adds r0, r4, #0
	bl _call_via_r1
_0200A8E6:
	ldr r1, _0200A92C @ =gUnk_03001E4C
	ldr r0, [r1]
	cmp r4, r0
	bne _0200A8F4
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_0200A8F4:
	ldr r1, _0200A930 @ =gUnk_03001E28
	ldr r0, [r1]
	cmp r4, r0
	bne _0200A902
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_0200A902:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _0200A93A
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r4, #6]
	cmp r0, #0
	beq _0200A934
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _0200A936
	.align 2, 0
_0200A92C: .4byte gUnk_03001E4C
_0200A930: .4byte gUnk_03001E28
_0200A934:
	adds r0, r1, r5
_0200A936:
	bl sub_0200AAB8
_0200A93A:
	ldr r2, _0200A960 @ =gUnk_030014F0
	ldr r1, _0200A964 @ =gUnk_03001E0C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	movs r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	ldr r0, _0200A968 @ =nullsub_013
	str r0, [r4, #8]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #6]
_0200A95A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200A960: .4byte gUnk_030014F0
_0200A964: .4byte gUnk_03001E0C
_0200A968: .4byte nullsub_013

	thumb_func_start sub_0200A96C
sub_0200A96C: @ 0x0200A96C
	push {r4, r5, r6, lr}
	ldr r1, _0200A9D8 @ =gUnk_03002560
	ldr r0, _0200A9DC @ =gUnk_030014F0
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, _0200A9E0 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0200A9F0
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _0200AA32
_0200A98C:
	ldr r4, _0200A9E4 @ =gUnk_03001E4C
	ldr r5, _0200A9D8 @ =gUnk_03002560
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
	bne _0200A9AC
	ldr r0, [r2, #8]
	bl _call_via_r0
_0200A9AC:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _0200A9E8 @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _0200A9C8
	ldr r0, _0200A9EC @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	bne _0200A9C4
	bl m4aSoundMain
_0200A9C4:
	movs r0, #0
	strb r0, [r4]
_0200A9C8:
	ldr r0, _0200A9D8 @ =gUnk_03002560
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0200A98C
	b _0200AA32
	.align 2, 0
_0200A9D8: .4byte gUnk_03002560
_0200A9DC: .4byte gUnk_030014F0
_0200A9E0: .4byte gUnk_030013D0
_0200A9E4: .4byte gUnk_03001E4C
_0200A9E8: .4byte gUnk_03005864
_0200A9EC: .4byte gUnk_030014E8
_0200A9F0:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _0200AA32
_0200A9F8:
	ldr r4, _0200AA44 @ =gUnk_03001E4C
	ldr r5, _0200AA48 @ =gUnk_03002560
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
	bne _0200AA18
	ldr r0, [r2, #8]
	bl _call_via_r0
_0200AA18:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _0200AA4C @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _0200AA2C
	bl m4aSoundMain
	movs r0, #0
	strb r0, [r4]
_0200AA2C:
	ldr r0, [r5]
	cmp r0, r6
	bne _0200A9F8
_0200AA32:
	ldr r0, _0200AA48 @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _0200AA44 @ =gUnk_03001E4C
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200AA44: .4byte gUnk_03001E4C
_0200AA48: .4byte gUnk_03002560
_0200AA4C: .4byte gUnk_03005864

	thumb_func_start sub_0200AA50
sub_0200AA50: @ 0x0200AA50
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _0200AAB0
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _0200AA9C @ =gUnk_030029B0
_0200AA6A:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _0200AAA0
	cmp r0, r1
	beq _0200AA92
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _0200AAA0
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_0200AA92:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _0200AAB2
	.align 2, 0
_0200AA9C: .4byte gUnk_030029B0
_0200AAA0:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _0200AAB0
	adds r3, r1, #0
	b _0200AA6A
_0200AAB0:
	movs r0, #0
_0200AAB2:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0200AAB8
sub_0200AAB8: @ 0x0200AAB8
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r3, _0200AB30 @ =gUnk_030029B0
	adds r4, r3, #0
	cmp r2, r3
	beq _0200AAD4
_0200AAC6:
	adds r3, r4, #0
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, r4
	bne _0200AAC6
_0200AAD4:
	ldrh r1, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _0200AAE2
	rsbs r0, r1, #0
	strh r0, [r2, #2]
_0200AAE2:
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r0, r3, r0
	cmp r0, r2
	bne _0200AB02
	ldrh r1, [r3, #2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _0200AB02
	ldrh r0, [r4]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	adds r0, r1, r0
	strh r0, [r3, #2]
	adds r2, r3, #0
_0200AB02:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _0200AB28
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _0200AB28
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_0200AB28:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200AB30: .4byte gUnk_030029B0

	thumb_func_start sub_0200AB34
sub_0200AB34: @ 0x0200AB34
	push {lr}
	movs r2, #0
	ldr r1, _0200AB58 @ =gUnk_030029B0
_0200AB3A:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0200AB44
	subs r2, r2, r0
_0200AB44:
	ldrh r1, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	bne _0200AB3A
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0200AB58: .4byte gUnk_030029B0

	thumb_func_start sub_0200AB5C
sub_0200AB5C: @ 0x0200AB5C
	push {r4, r5, r6, r7, lr}
	ldr r3, _0200AB64 @ =gUnk_030029B0
	b _0200AC0A
	.align 2, 0
_0200AB64: .4byte gUnk_030029B0
_0200AB68:
	ldrh r4, [r3, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r2, [r3]
	cmp r0, #0
	blt _0200AC04
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldrh r1, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _0200AB98
	adds r0, r4, r1
	strh r0, [r3, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _0200AC0A
_0200AB94:
	strh r7, [r2, #6]
	b _0200ABCA
_0200AB98:
	ldr r4, _0200ABF8 @ =gUnk_03000004
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
_0200ABB4:
	ldr r0, _0200ABFC @ =gUnk_03000980
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _0200AB94
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0x7f
	ble _0200ABB4
_0200ABCA:
	ldr r2, _0200AC00 @ =0x040000D4
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
	b _0200AC0A
	.align 2, 0
_0200ABF8: .4byte gUnk_03000004
_0200ABFC: .4byte gUnk_03000980
_0200AC00: .4byte 0x040000D4
_0200AC04:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
_0200AC0A:
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	bne _0200AB68
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0200AC1C
sub_0200AC1C: @ 0x0200AC1C
	bx lr
	.align 2, 0

	thumb_func_start sub_0200AC20
sub_0200AC20: @ 0x0200AC20
	bx lr
	.align 2, 0

	thumb_func_start nullsub_013
nullsub_013: @ 0x0200AC24
	bx lr
	.align 2, 0

	thumb_func_start sub_0200AC28
sub_0200AC28: @ 0x0200AC28
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
	ldr r1, _0200ACC8 @ =gUnk_03001E40
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
	beq _0200ACB4
_0200AC7A:
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
	bne _0200AC7A
_0200ACB4:
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
_0200ACC8: .4byte gUnk_03001E40

	thumb_func_start sub_0200ACCC
sub_0200ACCC: @ 0x0200ACCC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
_0200ACDC:
	ldr r1, _0200AD7C @ =gUnk_03001E10
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
	bne _0200AD0C
	mov r1, ip
	adds r0, r5, r1
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0200AD0C
	b _0200AEBA
_0200AD0C:
	mov r0, sl
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _0200AD80 @ =gUnk_03001E40
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
	bls _0200ADEC
	ldr r0, _0200AD84 @ =gUnk_03002620
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0200ADEC
	add r7, sb
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r6, r0, #0x10
	cmp r2, #0xff
	bne _0200AD90
	ldr r0, _0200AD88 @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _0200AD8C @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	subs r0, r0, r4
	muls r0, r6, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	b _0200AE38
	.align 2, 0
_0200AD7C: .4byte gUnk_03001E10
_0200AD80: .4byte gUnk_03001E40
_0200AD84: .4byte gUnk_03002620
_0200AD88: .4byte gUnk_03005030
_0200AD8C: .4byte 0x040000D4
_0200AD90:
	cmp r4, r2
	bls _0200AD96
	b _0200AEA0
_0200AD96:
	ldr r0, _0200ADE4 @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _0200ADE8 @ =0x040000D4
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
	bls _0200AD96
	b _0200AEA0
	.align 2, 0
_0200ADE4: .4byte gUnk_03005030
_0200ADE8: .4byte 0x040000D4
_0200ADEC:
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	movs r6, #0x20
	ldr r0, _0200AE48 @ =gUnk_03001E40
	add r0, r8
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0200AE08
	movs r6, #0x40
_0200AE08:
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #3
	cmp r0, #0xff
	bne _0200AE54
	ldr r0, _0200AE4C @ =gUnk_03005030
	add r0, sl
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0200AE50 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r6, r0
	lsls r0, r0, #1
_0200AE38:
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0200AEA0
	.align 2, 0
_0200AE48: .4byte gUnk_03001E40
_0200AE4C: .4byte gUnk_03005030
_0200AE50: .4byte 0x040000D4
_0200AE54:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhi _0200AEA0
	ldr r0, _0200AEDC @ =gUnk_03005030
	mov r8, r0
_0200AE60:
	mov r0, sl
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0200AEE0 @ =0x040000D4
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
	bls _0200AE60
_0200AEA0:
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _0200AEE0 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _0200AEE4 @ =gUnk_03001E10
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0200AEE8 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0200AEBA:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _0200AECA
	b _0200ACDC
_0200AECA:
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
_0200AEDC: .4byte gUnk_03005030
_0200AEE0: .4byte 0x040000D4
_0200AEE4: .4byte gUnk_03001E10
_0200AEE8: .4byte 0x85000001

	thumb_func_start sub_0200AEEC
sub_0200AEEC: @ 0x0200AEEC
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _0200AF1C @ =gUnk_02022790
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
	bne _0200AF20
	movs r0, #1
	rsbs r0, r0, #0
	b _0200AF92
	.align 2, 0
_0200AF1C: .4byte gUnk_02022790
_0200AF20:
	cmp r1, #0
	bgt _0200AF2C
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_0200AF2C:
	cmp r2, #0
	bgt _0200AF3C
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0200AF3C:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _0200AF54
	lsls r0, r1, #0x17
	cmp r2, #0
	beq _0200AF68
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _0200AF62
_0200AF54:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	cmp r1, #0
	beq _0200AF68
	asrs r0, r0, #0x10
_0200AF62:
	bl __divsi3
	lsls r0, r0, #0x10
_0200AF68:
	lsrs r2, r0, #0x10
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0200AF84
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_0200AF84:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_0200AF92:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200AF9C
sub_0200AF9C: @ 0x0200AF9C
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_0200AFA6:
	lsrs r0, r1, #0xc
	adds r3, r4, r2
	lsls r1, r1, #0x14
	adds r2, #1
	cmp r0, #9
	bls _0200AFB6
	adds r0, #0x57
	b _0200AFB8
_0200AFB6:
	adds r0, #0x30
_0200AFB8:
	strb r0, [r3]
	lsrs r1, r1, #0x10
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0200AFA6
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0200AFD0
sub_0200AFD0: @ 0x0200AFD0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r6, #0
_0200AFDA:
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
	bls _0200AFDA
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200B010
sub_0200B010: @ 0x0200B010
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _0200B024
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _0200B038
_0200B024:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _0200B048 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_0200B038:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0200B04C
	movs r0, #0
	b _0200B0EE
	.align 2, 0
_0200B048: .4byte 0xFFFFBFFF
_0200B04C:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0200B064
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _0200B0EC
_0200B060:
	adds r0, r1, #0
	b _0200B0EE
_0200B064:
	ldr r0, _0200B07C @ =gUnk_03002604
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
	b _0200B0BC
	.align 2, 0
_0200B07C: .4byte gUnk_03002604
_0200B080:
	ldr r0, _0200B0F4 @ =gUnk_02022798
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	cmp r1, #1
	beq _0200B0BC
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0200B060
	ldr r0, _0200B0F8 @ =gUnk_03002604
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
_0200B0BC:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r1, [r3]
	cmp r1, #0
	blt _0200B080
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
_0200B0EC:
	movs r0, #1
_0200B0EE:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0200B0F4: .4byte gUnk_02022798
_0200B0F8: .4byte gUnk_03002604

	thumb_func_start sub_0200B0FC
sub_0200B0FC: @ 0x0200B0FC
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
	ldr r0, _0200B150 @ =gUnk_03002934
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
	ldr r1, _0200B154 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _0200B158 @ =gUnk_03002604
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
	blt _0200B220
	b _0200B1D4
	.align 2, 0
_0200B150: .4byte gUnk_03002934
_0200B154: .4byte 0xFFFFBFFF
_0200B158: .4byte gUnk_03002604
_0200B15C:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0200B166
	mov sb, sl
_0200B166:
	ldr r0, _0200B1B4 @ =gUnk_02022798
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r2, r0, #0
	ldr r3, _0200B1B8 @ =gUnk_03002934
	ldr r0, [sp]
	ldrb r1, [r3]
	cmp r0, r1
	beq _0200B18A
	strb r0, [r3]
	movs r1, #1
	mov r8, r1
_0200B18A:
	cmp r2, #1
	beq _0200B1D4
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0200B1C0
	ldr r0, _0200B1BC @ =gUnk_03002604
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
	b _0200B1D4
	.align 2, 0
_0200B1B4: .4byte gUnk_02022798
_0200B1B8: .4byte gUnk_03002934
_0200B1BC: .4byte gUnk_03002604
_0200B1C0:
	mov r0, r8
	cmp r0, #0
	beq _0200B1D0
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
_0200B1D0:
	adds r0, r2, #0
	b _0200B234
_0200B1D4:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r1, [r5]
	cmp r1, #0
	blt _0200B15C
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
	beq _0200B204
	cmp r6, #0
	ble _0200B204
	adds r0, r6, #0
	bl DivRem
	adds r6, r0, #0
	b _0200B208
_0200B204:
	ldr r0, [r5]
	add sl, r0
_0200B208:
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
	bge _0200B1D4
_0200B220:
	mov r0, r8
	cmp r0, #0
	beq _0200B232
	ldr r0, _0200B244 @ =gUnk_03002934
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0x3f
	ands r1, r2
	strb r1, [r0]
_0200B232:
	movs r0, #1
_0200B234:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0200B244: .4byte gUnk_03002934

	thumb_func_start sub_0200B248
sub_0200B248: @ 0x0200B248
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
	bne _0200B2C6
	ldr r1, [r2, #4]
	ldr r0, _0200B27C @ =gUnk_03002604
	ldr r4, [r2, #8]
	ldr r6, _0200B280 @ =gUnk_03001E50
	ldr r5, _0200B284 @ =gUnk_03002934
	cmp r1, #0
	bge _0200B288
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r2, r0, r1
	lsls r0, r4, #0x16
	b _0200B292
	.align 2, 0
_0200B27C: .4byte gUnk_03002604
_0200B280: .4byte gUnk_03001E50
_0200B284: .4byte gUnk_03002934
_0200B288:
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r2, r0, r1
	lsls r0, r4, #0x15
_0200B292:
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
_0200B2C6:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200B2D0
sub_0200B2D0: @ 0x0200B2D0
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
	bne _0200B31E
	ldr r1, [r4, #4]
	ldr r2, _0200B328 @ =0x040000D4
	ldr r0, _0200B32C @ =gUnk_03002604
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
	ldr r1, _0200B330 @ =gUnk_03001BF0
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _0200B334 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_0200B31E:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0200B328: .4byte 0x040000D4
_0200B32C: .4byte gUnk_03002604
_0200B330: .4byte gUnk_03001BF0
_0200B334: .4byte gUnk_030013D0

	thumb_func_start sub_0200B338
sub_0200B338: @ 0x0200B338
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_0200B344
sub_0200B344: @ 0x0200B344
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_0200B354
sub_0200B354: @ 0x0200B354
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_0200B368
sub_0200B368: @ 0x0200B368
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _0200B3A4 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _0200B3A8 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0200B3AC
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _0200B410
	.align 2, 0
_0200B3A4: .4byte 0x040000D4
_0200B3A8: .4byte 0x84000002
_0200B3AC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0200B3E0
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
_0200B3E0:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0200B410
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
_0200B410:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0200B418
sub_0200B418: @ 0x0200B418
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

	thumb_func_start sub_0200B434
sub_0200B434: @ 0x0200B434
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_0200B440
sub_0200B440: @ 0x0200B440
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

	thumb_func_start sub_0200B458
sub_0200B458: @ 0x0200B458
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_0200B460
sub_0200B460: @ 0x0200B460
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _0200B478 @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_0200B478: .4byte 0xFFFFCFFF

	thumb_func_start sub_0200B47C
sub_0200B47C: @ 0x0200B47C
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_0200B48C
sub_0200B48C: @ 0x0200B48C
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
	ldr r0, _0200B544 @ =gUnk_03005046
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl Div
	ldr r7, _0200B548 @ =gUnk_02021D90
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
_0200B544: .4byte gUnk_03005046
_0200B548: .4byte gUnk_02021D90

	thumb_func_start sub_0200B54C
sub_0200B54C: @ 0x0200B54C
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
	bne _0200B568
	b _0200B806
_0200B568:
	lsrs r0, r2, #0x1c
	ldr r1, _0200B5DC @ =gUnk_03002604
	ldr r3, [sp, #0x24]
	ldrh r5, [r3, #0xc]
	add r4, sp, #0x20
	ldr r3, [r3, #8]
	ldr r6, _0200B5E0 @ =gUnk_03005046
	mov r8, r6
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x2c]
	ldr r6, _0200B5E4 @ =gUnk_02021D90
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
	bne _0200B5E8
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r5, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _0200B5F6
	.align 2, 0
_0200B5DC: .4byte gUnk_03002604
_0200B5E0: .4byte gUnk_03005046
_0200B5E4: .4byte gUnk_02021D90
_0200B5E8:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r5, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_0200B5F6:
	movs r0, #0x1f
	ands r3, r0
	strh r3, [r4]
	ldrh r4, [r4]
	lsls r4, r4, #5
	add r4, r8
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r1, _0200B77C @ =0x000003FF
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
	bge _0200B6D4
	rsbs r0, r0, #0
	mov r1, sl
	strh r0, [r1]
_0200B6D4:
	mov r2, sb
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _0200B6E6
	rsbs r0, r4, #0
	mov r6, r8
	strh r0, [r6]
_0200B6E6:
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
	ble _0200B780
	ldrh r5, [r7, #8]
	b _0200B78A
	.align 2, 0
_0200B77C: .4byte 0x000003FF
_0200B780:
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0200B78A:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _0200B794
	ldrh r4, [r7, #0xa]
	b _0200B79E
_0200B794:
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0200B79E:
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
_0200B806:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200B818
sub_0200B818: @ 0x0200B818
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
	bne _0200B844
	b _0200BCA4
_0200B844:
	lsrs r0, r2, #0x1c
	ldr r1, _0200B864 @ =gUnk_03002604
	ldrh r3, [r6, #0xc]
	ldr r4, [r6, #8]
	cmp r0, #0
	bne _0200B868
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _0200B876
	.align 2, 0
_0200B864: .4byte gUnk_03002604
_0200B868:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_0200B876:
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
	beq _0200B8A8
	ldr r0, _0200B908 @ =gUnk_03001384
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
_0200B8A8:
	ldrh r3, [r7, #4]
	str r3, [sp, #8]
	ldrh r5, [r7, #6]
	str r5, [sp, #0xc]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0200B90C
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
	beq _0200B978
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
	b _0200B978
	.align 2, 0
_0200B908: .4byte gUnk_03001384
_0200B90C:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0200B926
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	ldr r5, [sp, #0xc]
	subs r0, r5, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	b _0200B930
_0200B926:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	mov r5, r8
	subs r5, r5, r0
	mov r8, r5
_0200B930:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0200B94A
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, [sp, #8]
	subs r0, r3, r0
	mov r5, sb
	subs r5, r5, r0
	mov sb, r5
	b _0200B954
_0200B94A:
	movs r1, #8
	ldrsh r0, [r7, r1]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
_0200B954:
	lsrs r0, r2, #0xb
	movs r4, #1
	ands r0, r4
	ldrh r1, [r7]
	lsls r3, r1, #0x10
	lsrs r1, r3, #0x1f
	cmp r0, r1
	beq _0200B968
	movs r5, #1
	str r5, [sp, #0x24]
_0200B968:
	lsrs r1, r2, #0xa
	lsrs r0, r3, #0x1e
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0200B978
	movs r0, #1
	str r0, [sp, #0x28]
_0200B978:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0200B9A2
	adds r0, r1, #0
	add r0, sb
	cmp r0, #0
	bge _0200B988
	b _0200BCA4
_0200B988:
	mov r2, sb
	cmp r2, #0xf0
	ble _0200B990
	b _0200BCA4
_0200B990:
	ldr r0, [sp, #0xc]
	add r0, r8
	cmp r0, #0
	bge _0200B99A
	b _0200BCA4
_0200B99A:
	mov r3, r8
	cmp r3, #0xa0
	ble _0200B9A2
	b _0200BCA4
_0200B9A2:
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
	ldr r0, _0200BBAC @ =gUnk_03002604
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _0200BBB0 @ =gUnk_03001480
	ldrb r0, [r0]
	strb r0, [r6, #0x1d]
	movs r5, #0
	str r5, [sp, #0x10]
	ldrh r0, [r7, #2]
	cmp r5, r0
	blo _0200B9EC
	b _0200BB6A
_0200B9EC:
	ldr r2, _0200BBB4 @ =0x040000D4
	ldrh r0, [r7]
	ldr r3, _0200BBB8 @ =0x00003FFF
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
	ldr r0, _0200BBBC @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sp
	ldrh r5, [r0, #2]
	ldr r1, _0200BBC0 @ =0x000001FF
	adds r0, r1, #0
	adds r4, r0, #0
	ands r4, r5
	cmp r4, #0xff
	ble _0200BA24
	ldr r2, _0200BBC4 @ =0xFFFFFE00
	adds r4, r4, r2
_0200BA24:
	mov r0, sp
	ldrb r3, [r0]
	cmp r3, #0x7f
	ble _0200BA30
	ldr r0, _0200BBC8 @ =0xFFFFFF00
	adds r3, r3, r0
_0200BA30:
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
	ldr r2, _0200BBCC @ =gUnk_020227C8
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
	beq _0200BAA8
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _0200BA8A
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
_0200BA8A:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _0200BAA8
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
_0200BAA8:
	add r3, r8
	mov r5, ip
	adds r0, r3, r5
	cmp r0, #0
	blt _0200BB58
	cmp r3, #0xa0
	bgt _0200BB58
	add r4, sb
	mov r1, sl
	adds r0, r4, r1
	cmp r0, #0
	blt _0200BB58
	cmp r4, #0xf0
	bgt _0200BB58
	mov r2, sp
	mov r1, sp
	movs r0, #0xff
	ands r3, r0
	ldrh r1, [r1]
	adds r0, r3, r1
	strh r0, [r2]
	mov r1, sp
	ldr r3, _0200BBC0 @ =0x000001FF
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
	beq _0200BB1C
	ldr r0, _0200BBD0 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r2, #4]
_0200BB1C:
	mov r2, sp
	mov r1, sp
	ldr r0, [r6]
	ldr r3, _0200BBD4 @ =0xF9FF0000
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
	bl sub_0200BCBC
	adds r1, r0, #0
	ldr r0, _0200BBD8 @ =gUnk_03005C38
	ldr r0, [r0]
	cmp r0, r1
	bne _0200BB4A
	b _0200BCA4
_0200BB4A:
	ldr r0, _0200BBB4 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _0200BBBC @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0200BB58:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r3, [r7, #2]
	cmp r0, r3
	bhs _0200BB6A
	b _0200B9EC
_0200BB6A:
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0200BB74
	b _0200BCA4
_0200BB74:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0200BB82
	b _0200BCA4
_0200BB82:
	ldr r0, _0200BBDC @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	ldr r0, [r7, #0xc]
	ldr r1, _0200BBE0 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, _0200BBAC @ =gUnk_03002604
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r3, r0, r1
	ldr r0, [r3]
	cmp r0, #0
	blt _0200BBE4
	movs r5, #0x20
	mov sb, r5
	ldr r2, [r2, #0x10]
	b _0200BBEA
	.align 2, 0
_0200BBAC: .4byte gUnk_03002604
_0200BBB0: .4byte gUnk_03001480
_0200BBB4: .4byte 0x040000D4
_0200BBB8: .4byte 0x00003FFF
_0200BBBC: .4byte 0x80000003
_0200BBC0: .4byte 0x000001FF
_0200BBC4: .4byte 0xFFFFFE00
_0200BBC8: .4byte 0xFFFFFF00
_0200BBCC: .4byte gUnk_020227C8
_0200BBD0: .4byte 0x000003FF
_0200BBD4: .4byte 0xF9FF0000
_0200BBD8: .4byte gUnk_03005C38
_0200BBDC: .4byte 0xFBFFFFFF
_0200BBE0: .4byte 0x00FFFFFF
_0200BBE4:
	movs r1, #0x40
	mov sb, r1
	ldr r2, [r2, #0x14]
_0200BBEA:
	mov r4, sb
	muls r0, r4, r0
	adds r5, r2, r0
	adds r3, #4
	ldr r6, [r6]
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r8, r1
	bhs _0200BC70
	ldr r0, _0200BC20 @ =gUnk_03001E50
	mov ip, r0
	ldr r7, _0200BC24 @ =gUnk_03002934
_0200BC04:
	ldm r3!, {r0}
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r2
	mov sl, r0
	adds r0, r5, r4
	cmp r0, sl
	bne _0200BC28
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0200BC60
	.align 2, 0
_0200BC20: .4byte gUnk_03001E50
_0200BC24: .4byte gUnk_03002934
_0200BC28:
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
_0200BC60:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [sp, #0x2c]
	cmp r8, r0
	blo _0200BC04
_0200BC70:
	ldr r3, _0200BCB4 @ =gUnk_03001E50
	ldr r2, _0200BCB8 @ =gUnk_03002934
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
_0200BCA4:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200BCB4: .4byte gUnk_03001E50
_0200BCB8: .4byte gUnk_03002934

	thumb_func_start sub_0200BCBC
sub_0200BCBC: @ 0x0200BCBC
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _0200BCC8
	movs r2, #0x1f
_0200BCC8:
	ldr r3, _0200BCD8 @ =gUnk_03001480
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0200BCE0
	ldr r0, _0200BCDC @ =gUnk_03005C38
	ldr r0, [r0]
	b _0200BD38
	.align 2, 0
_0200BCD8: .4byte gUnk_03001480
_0200BCDC: .4byte gUnk_03005C38
_0200BCE0:
	ldr r0, _0200BD08 @ =gUnk_030013E0
	adds r5, r2, r0
	ldrb r0, [r5]
	ldr r4, _0200BD0C @ =gUnk_03002150
	ldrb r1, [r3]
	ldr r6, _0200BD10 @ =gUnk_03005010
	adds r7, r4, #0
	subs r7, #8
	cmp r0, #0xff
	bne _0200BD14
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r3]
	strb r0, [r5]
	adds r1, r2, r6
	ldrb r0, [r3]
	strb r0, [r1]
	b _0200BD2C
	.align 2, 0
_0200BD08: .4byte gUnk_030013E0
_0200BD0C: .4byte gUnk_03002150
_0200BD10: .4byte gUnk_03005010
_0200BD14:
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
_0200BD2C:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r7
_0200BD38:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200BD40
sub_0200BD40: @ 0x0200BD40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r6, _0200BDEC @ =gUnk_03005040
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r4, #0
_0200BD56:
	ldr r1, _0200BDF0 @ =gUnk_030013E0
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
	beq _0200BDA2
	ldr r0, _0200BDF4 @ =gUnk_03002150
	mov sb, r0
	ldr r1, _0200BDF8 @ =gUnk_03002580
	mov ip, r1
_0200BD76:
	ldr r1, _0200BDFC @ =0x040000D4
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	add r3, sb
	str r3, [r1]
	str r5, [r1, #4]
	ldr r0, _0200BE00 @ =0x80000003
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
	bne _0200BD76
_0200BDA2:
	adds r4, #1
	cmp r4, #0x1f
	ble _0200BD56
	ldr r7, _0200BE04 @ =gUnk_030013D0
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	ldr r1, _0200BE08 @ =gUnk_03001480
	cmp r0, #0
	beq _0200BE14
	ldrb r4, [r1]
	lsls r0, r4, #3
	ldr r2, _0200BDEC @ =gUnk_03005040
	adds r5, r0, r2
	ldr r2, _0200BE0C @ =gUnk_03002990
	ldrb r3, [r2]
	cmp r4, r3
	bge _0200BE94
_0200BDC8:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0200BDFC @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _0200BE10 @ =0x81000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r5, #8
	adds r4, #1
	ldrb r0, [r2]
	cmp r4, r0
	blt _0200BDC8
	b _0200BE94
	.align 2, 0
_0200BDEC: .4byte gUnk_03005040
_0200BDF0: .4byte gUnk_030013E0
_0200BDF4: .4byte gUnk_03002150
_0200BDF8: .4byte gUnk_03002580
_0200BDFC: .4byte 0x040000D4
_0200BE00: .4byte 0x80000003
_0200BE04: .4byte gUnk_030013D0
_0200BE08: .4byte gUnk_03001480
_0200BE0C: .4byte gUnk_03002990
_0200BE10: .4byte 0x81000003
_0200BE14:
	movs r2, #0x80
	lsls r2, r2, #3
	ands r2, r3
	cmp r2, #0
	beq _0200BE90
	adds r5, r1, #0
	ldrb r0, [r5]
	subs r4, r0, #1
	movs r2, #0x7f
	cmp r4, #0
	blt _0200BE46
_0200BE2A:
	ldr r1, _0200BE7C @ =0x040000D4
	lsls r0, r4, #3
	adds r0, r0, r6
	str r0, [r1]
	lsls r0, r2, #3
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0200BE80 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r4, #1
	subs r2, #1
	cmp r4, #0
	bge _0200BE2A
_0200BE46:
	ldr r3, _0200BE84 @ =gUnk_03002990
	ldrb r1, [r5]
	movs r0, #0x80
	subs r0, r0, r1
	strb r0, [r3]
	movs r4, #0
	cmp r4, r0
	bge _0200BE94
_0200BE56:
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0200BE7C @ =0x040000D4
	str r1, [r2]
	lsls r0, r4, #3
	ldr r1, _0200BE88 @ =gUnk_03005040
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0200BE8C @ =0x81000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blt _0200BE56
	b _0200BE94
	.align 2, 0
_0200BE7C: .4byte 0x040000D4
_0200BE80: .4byte 0x80000003
_0200BE84: .4byte gUnk_03002990
_0200BE88: .4byte gUnk_03005040
_0200BE8C: .4byte 0x81000003
_0200BE90:
	ldr r0, _0200BEC8 @ =gUnk_03002990
	strb r2, [r0]
_0200BE94:
	ldr r1, _0200BECC @ =gUnk_03001480
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	add r6, sp, #8
	cmp r0, #0
	beq _0200BED8
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _0200BED0 @ =0x05000008
	mov r1, sl
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #8]
	ldr r1, _0200BED4 @ =gUnk_03005010
	adds r0, r6, #0
	adds r2, r5, #0
	bl CpuSet
	b _0200BEF8
	.align 2, 0
_0200BEC8: .4byte gUnk_03002990
_0200BECC: .4byte gUnk_03001480
_0200BED0: .4byte 0x05000008
_0200BED4: .4byte gUnk_03005010
_0200BED8:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _0200BF08 @ =0x040000D4
	str r6, [r0]
	mov r2, sl
	str r2, [r0, #4]
	ldr r2, _0200BF0C @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	str r6, [r0]
	ldr r1, _0200BF10 @ =gUnk_03005010
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_0200BEF8:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200BF08: .4byte 0x040000D4
_0200BF0C: .4byte 0x85000008
_0200BF10: .4byte gUnk_03005010

	thumb_func_start nullsub_01
nullsub_01: @ 0x0200BF14
	bx lr
	.align 2, 0

	thumb_func_start sub_0200BF18
sub_0200BF18: @ 0x0200BF18
	ldr r0, _0200BF20 @ =gUnk_03005C38
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0200BF20: .4byte gUnk_03005C38

	thumb_func_start nullsub_014
nullsub_014: @ 0x0200BF24
	bx lr
	.align 2, 0

	thumb_func_start sub_0200BF28
sub_0200BF28: @ 0x0200BF28
	movs r0, #0
	bx lr
