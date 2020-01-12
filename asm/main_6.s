	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E8E828
sub_08E8E828: @ 0x08E8E828
	push {lr}
	bl sub_08E8E83C
	bl sub_08E84AD8
	bl sub_08E8ED6C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8E83C
sub_08E8E83C: @ 0x08E8E83C
	push {r4, lr}
	sub sp, #8
	ldr r1, _08E8E88C @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _08E8E890 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08E8E894 @ =gUnk_03002C20
	movs r3, #0
	str r3, [r2]
	ldr r0, _08E8E898 @ =gUnk_03003E50
	str r3, [r0]
	ldr r1, _08E8E89C @ =gUnk_03003674
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _08E8E8A0 @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _08E8E878
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
_08E8E878:
	ldr r0, _08E8E8A4 @ =gUnk_03003670
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _08E8E8A8
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	b _08E8E8AA
	.align 2, 0
_08E8E88C: .4byte 0x04000208
_08E8E890: .4byte 0x00004014
_08E8E894: .4byte gUnk_03002C20
_08E8E898: .4byte gUnk_03003E50
_08E8E89C: .4byte gUnk_03003674
_08E8E8A0: .4byte 0x04000134
_08E8E8A4: .4byte gUnk_03003670
_08E8E8A8:
	str r3, [r2]
_08E8E8AA:
	ldr r1, _08E8EC14 @ =gUnk_03003DB4
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08E8EC18 @ =gUnk_030041E4
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08E8EC1C @ =gUnk_03003F70
	strb r1, [r0]
	ldr r0, _08E8EC20 @ =gUnk_03007090
	strb r1, [r0]
	ldr r0, _08E8EC24 @ =gUnk_03006858
	strb r1, [r0]
	ldr r0, _08E8EC28 @ =gUnk_03004184
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08E8EC30 @ =gUnk_03003660
	str r0, [r1, #4]
	ldr r0, _08E8EC34 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8E8DA:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8E8DA
	ldr r1, _08E8EC38 @ =gUnk_03006880
	movs r0, #0
	str r0, [r1]
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E8EC3C @ =gUnk_03003E60
	str r0, [r1, #4]
	ldr r0, _08E8EC34 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8E8F8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8E8F8
	ldr r0, _08E8EC40 @ =gUnk_03002BD4
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _08E8EC44 @ =gUnk_03003E70
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r2]
	str r1, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E8EC48 @ =gUnk_030036A0
	str r0, [r1, #4]
	ldr r0, _08E8EC4C @ =0x850000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8E922:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8E922
	ldr r0, _08E8EC50 @ =gUnk_03002CD0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08E8EC54 @ =gUnk_030041E0
	strb r1, [r0]
	add r2, sp, #4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _08E8EC2C @ =0x040000D4
	str r2, [r1]
	ldr r0, _08E8EC58 @ =gUnk_03006890
	str r0, [r1, #4]
	ldr r0, _08E8EC5C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8E94A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8E94A
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	ldr r1, _08E8EC2C @ =0x040000D4
	str r2, [r1]
	ldr r0, _08E8EC60 @ =gUnk_030039A0
	str r0, [r1, #4]
	ldr r0, _08E8EC5C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8E966:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8E966
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E8EC64 @ =gUnk_03002C30
	str r0, [r1, #4]
	ldr r0, _08E8EC68 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8E982:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8E982
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08E8EC6C @ =gUnk_03006860
	str r0, [r1, #4]
	ldr r0, _08E8EC68 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8E99E:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8E99E
	ldr r1, _08E8EC2C @ =0x040000D4
	ldr r0, _08E8EC70 @ =0x05000200
	str r0, [r1]
	ldr r0, _08E8EC74 @ =gUnk_03003440
	str r0, [r1, #4]
	ldr r0, _08E8EC78 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8E9B4:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8E9B4
	ldr r1, _08E8EC2C @ =0x040000D4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1]
	ldr r0, _08E8EC7C @ =gUnk_03003F80
	str r0, [r1, #4]
	ldr r0, _08E8EC78 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8E9CC:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8E9CC
	ldr r0, _08E8EC80 @ =gUnk_03002D00
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
	ldr r0, _08E8EC84 @ =gUnk_03002CF4
	strb r3, [r0]
	ldr r0, _08E8EC88 @ =gUnk_03002D24
	strh r1, [r0]
	ldr r0, _08E8EC8C @ =gUnk_03002BD0
	strh r2, [r0]
	ldr r0, _08E8EC90 @ =gUnk_03007094
	strh r2, [r0]
	ldr r0, _08E8EC94 @ =gUnk_0300418C
	strh r1, [r0]
	ldr r0, _08E8EC98 @ =gUnk_03006854
	strh r1, [r0]
	ldr r0, _08E8EC9C @ =gUnk_03002D2C
	strh r1, [r0]
	ldr r0, _08E8ECA0 @ =gUnk_03003E5C
	strh r1, [r0]
	ldr r0, _08E8ECA4 @ =gUnk_03007098
	strh r2, [r0]
	ldr r0, _08E8ECA8 @ =gUnk_03003650
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _08E8ECAC @ =gUnk_03002CC8
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08E8ECB0 @ =gUnk_030070B8
	str r1, [r0]
_08E8EA32:
	ldr r2, _08E8ECB4 @ =gUnk_03003DC0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	movs r1, #0x14
	strb r1, [r2]
	ldr r1, _08E8ECB8 @ =gUnk_03003E80
	adds r1, r0, r1
	movs r2, #8
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08E8EA32
	ldr r1, _08E8ECBC @ =gUnk_03003644
	movs r0, #0
	str r0, [r1]
	movs r1, #0
_08E8EA5A:
	ldr r3, _08E8ECC0 @ =gUnk_03001F90
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r3, r1, r3
	ldr r2, _08E8ECC4 @ =gUnk_02027D4C
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _08E8EA5A
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08E8ECC8 @ =gUnk_03002F40
	str r2, [r1, #4]
	ldr r0, _08E8ECCC @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8EA8C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8EA8C
	ldr r0, _08E8ECD0 @ =gUnk_03002C64
	str r2, [r0]
	ldr r1, _08E8ECD4 @ =gUnk_0300368C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _08E8ECD8 @ =gUnk_03003EA8
	movs r1, #0
	str r1, [r0]
	ldr r0, _08E8ECDC @ =gUnk_03004180
	strb r1, [r0]
	ldr r0, _08E8ECE0 @ =gUnk_03002C6C
	strb r1, [r0]
	ldr r0, _08E8ECE4 @ =gUnk_03002CC4
	strb r1, [r0]
	str r1, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E8ECE8 @ =gUnk_03003DA0
	str r0, [r1, #4]
	ldr r0, _08E8EC34 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8EAC4:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8EAC4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E8ECEC @ =gUnk_030041F0
	str r0, [r1, #4]
	ldr r0, _08E8EC34 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8EADE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8EADE
	ldr r0, _08E8ECF0 @ =gUnk_03006850
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08E8ECF4 @ =gUnk_03002D28
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08E8ECF8 @ =gUnk_03002C50
	str r0, [r1, #4]
	ldr r0, _08E8EC34 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8EB02:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8EB02
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E8ECFC @ =gUnk_030070A0
	str r0, [r1, #4]
	ldr r0, _08E8EC34 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8EB1C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8EB1C
	bl sub_08E8D334
	ldr r0, _08E8ED00 @ =0x0095FA00
	bl sub_08E8D8D0
	bl sub_08E8D3AC
	ldr r1, _08E8ED04 @ =gUnk_030070B4
	movs r0, #1
	strb r0, [r1]
	bl sub_08E8F644
	ldr r1, _08E8ED08 @ =gUnk_03002C68
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E8ED0C @ =gUnk_03002D20
	ldr r0, _08E8ED10 @ =0x06014000
	str r0, [r1]
	bl nullsub_23
	ldr r2, _08E8ED14 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08E8EC2C @ =0x040000D4
	ldr r0, _08E8ED18 @ =gUnk_020000FC
	str r0, [r1]
	ldr r2, _08E8ED1C @ =gUnk_03001FD0
	str r2, [r1, #4]
	ldr r0, _08E8EC78 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8EB6A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8EB6A
	ldr r0, _08E8ED20 @ =gUnk_03007FFC
	str r2, [r0]
	ldr r2, _08E8ED24 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08E8ED28 @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _08E8ED2C @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _08E8EB9E
	ldr r0, _08E8ED30 @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _08E8ED34 @ =0x454B3842
	cmp r1, r0
	bne _08E8EB9E
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08E8EB9E:
	ldr r1, _08E8ED38 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E8ED3C @ =gUnk_03003E90
	str r0, [r1, #4]
	ldr r0, _08E8ED40 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8EBB8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8EBB8
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E8EC2C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E8ED44 @ =gUnk_03002C70
	str r0, [r1, #4]
	ldr r0, _08E8ED48 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8EBD2:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8EBD2
	ldr r0, _08E8ED4C @ =gUnk_03002D34
	movs r4, #0
	str r4, [r0]
	ldr r0, _08E8ED50 @ =gUnk_03002D38
	strb r4, [r0]
	movs r0, #0
	bl sub_08E90EE0
	ldr r0, _08E8ED54 @ =gUnk_0300685C
	strb r4, [r0]
	ldr r0, _08E8ED58 @ =gUnk_03002CC0
	str r4, [r0]
	ldr r0, _08E8ED5C @ =gUnk_03002D30
	strb r4, [r0]
	ldr r1, _08E8EC2C @ =0x040000D4
	ldr r0, _08E8ED60 @ =0x04000008
	str r0, [r1]
	ldr r0, _08E8ED64 @ =gUnk_03003690
	str r0, [r1, #4]
	ldr r0, _08E8ED68 @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E8EC04:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8EC04
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E8EC14: .4byte gUnk_03003DB4
_08E8EC18: .4byte gUnk_030041E4
_08E8EC1C: .4byte gUnk_03003F70
_08E8EC20: .4byte gUnk_03007090
_08E8EC24: .4byte gUnk_03006858
_08E8EC28: .4byte gUnk_03004184
_08E8EC2C: .4byte 0x040000D4
_08E8EC30: .4byte gUnk_03003660
_08E8EC34: .4byte 0x85000004
_08E8EC38: .4byte gUnk_03006880
_08E8EC3C: .4byte gUnk_03003E60
_08E8EC40: .4byte gUnk_03002BD4
_08E8EC44: .4byte gUnk_03003E70
_08E8EC48: .4byte gUnk_030036A0
_08E8EC4C: .4byte 0x850000C0
_08E8EC50: .4byte gUnk_03002CD0
_08E8EC54: .4byte gUnk_030041E0
_08E8EC58: .4byte gUnk_03006890
_08E8EC5C: .4byte 0x81000200
_08E8EC60: .4byte gUnk_030039A0
_08E8EC64: .4byte gUnk_03002C30
_08E8EC68: .4byte 0x85000008
_08E8EC6C: .4byte gUnk_03006860
_08E8EC70: .4byte 0x05000200
_08E8EC74: .4byte gUnk_03003440
_08E8EC78: .4byte 0x84000080
_08E8EC7C: .4byte gUnk_03003F80
_08E8EC80: .4byte gUnk_03002D00
_08E8EC84: .4byte gUnk_03002CF4
_08E8EC88: .4byte gUnk_03002D24
_08E8EC8C: .4byte gUnk_03002BD0
_08E8EC90: .4byte gUnk_03007094
_08E8EC94: .4byte gUnk_0300418C
_08E8EC98: .4byte gUnk_03006854
_08E8EC9C: .4byte gUnk_03002D2C
_08E8ECA0: .4byte gUnk_03003E5C
_08E8ECA4: .4byte gUnk_03007098
_08E8ECA8: .4byte gUnk_03003650
_08E8ECAC: .4byte gUnk_03002CC8
_08E8ECB0: .4byte gUnk_030070B8
_08E8ECB4: .4byte gUnk_03003DC0
_08E8ECB8: .4byte gUnk_03003E80
_08E8ECBC: .4byte gUnk_03003644
_08E8ECC0: .4byte gUnk_03001F90
_08E8ECC4: .4byte gUnk_02027D4C
_08E8ECC8: .4byte gUnk_03002F40
_08E8ECCC: .4byte 0x85000140
_08E8ECD0: .4byte gUnk_03002C64
_08E8ECD4: .4byte gUnk_0300368C
_08E8ECD8: .4byte gUnk_03003EA8
_08E8ECDC: .4byte gUnk_03004180
_08E8ECE0: .4byte gUnk_03002C6C
_08E8ECE4: .4byte gUnk_03002CC4
_08E8ECE8: .4byte gUnk_03003DA0
_08E8ECEC: .4byte gUnk_030041F0
_08E8ECF0: .4byte gUnk_03006850
_08E8ECF4: .4byte gUnk_03002D28
_08E8ECF8: .4byte gUnk_03002C50
_08E8ECFC: .4byte gUnk_030070A0
_08E8ED00: .4byte 0x0095FA00
_08E8ED04: .4byte gUnk_030070B4
_08E8ED08: .4byte gUnk_03002C68
_08E8ED0C: .4byte gUnk_03002D20
_08E8ED10: .4byte 0x06014000
_08E8ED14: .4byte gUnk_03002C20
_08E8ED18: .4byte gUnk_020000FC
_08E8ED1C: .4byte gUnk_03001FD0
_08E8ED20: .4byte gUnk_03007FFC
_08E8ED24: .4byte 0x04000200
_08E8ED28: .4byte 0x04000004
_08E8ED2C: .4byte 0x080000B2
_08E8ED30: .4byte 0x080000AC
_08E8ED34: .4byte 0x454B3842
_08E8ED38: .4byte 0x04000208
_08E8ED3C: .4byte gUnk_03003E90
_08E8ED40: .4byte 0x85000005
_08E8ED44: .4byte gUnk_03002C70
_08E8ED48: .4byte 0x85000014
_08E8ED4C: .4byte gUnk_03002D34
_08E8ED50: .4byte gUnk_03002D38
_08E8ED54: .4byte gUnk_0300685C
_08E8ED58: .4byte gUnk_03002CC0
_08E8ED5C: .4byte gUnk_03002D30
_08E8ED60: .4byte 0x04000008
_08E8ED64: .4byte gUnk_03003690
_08E8ED68: .4byte 0x80000004

	thumb_func_start sub_08E8ED6C
sub_08E8ED6C: @ 0x08E8ED6C
	push {r4, r5, lr}
_08E8ED6E:
	ldr r1, _08E8EDCC @ =gUnk_030070B4
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08E8EDD0 @ =gUnk_03002C20
	ldr r0, [r1]
	ldr r2, _08E8EDD4 @ =0xFEFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r1, _08E8EDD8 @ =gUnk_03003E50
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r0, _08E8EDDC @ =gUnk_03003DB4
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08E8EDFA
	bl sub_08E8F580
	ldr r0, _08E8EDE0 @ =gUnk_03002D38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E8EDB8
	bl sub_08E84D7C
	ldr r0, _08E8EDE4 @ =gUnk_03003E90
	ldr r1, _08E8EDE8 @ =gUnk_03002C70
	movs r2, #0
	bl sub_08E9103C
	ldr r1, _08E8EDEC @ =gUnk_03002D34
	str r0, [r1]
	bl sub_08E84EAC
	cmp r0, #0
	bne _08E8EDB8
	bl sub_08E85A6C
_08E8EDB8:
	ldr r0, _08E8EDF0 @ =gUnk_03000AB0
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08E8EDF4
	bl sub_08E8F920
	b _08E8EDFA
	.align 2, 0
_08E8EDCC: .4byte gUnk_030070B4
_08E8EDD0: .4byte gUnk_03002C20
_08E8EDD4: .4byte 0xFEFFFFFF
_08E8EDD8: .4byte gUnk_03003E50
_08E8EDDC: .4byte gUnk_03003DB4
_08E8EDE0: .4byte gUnk_03002D38
_08E8EDE4: .4byte gUnk_03003E90
_08E8EDE8: .4byte gUnk_03002C70
_08E8EDEC: .4byte gUnk_03002D34
_08E8EDF0: .4byte gUnk_03000AB0
_08E8EDF4:
	ldr r1, _08E8EE40 @ =gUnk_03003DB4
	movs r0, #0
	strb r0, [r1]
_08E8EDFA:
	ldr r4, _08E8EE44 @ =gUnk_03002C20
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	ldr r1, _08E8EE48 @ =gUnk_03003E50
	str r0, [r1]
	bl sub_08E91990
	ldr r1, _08E8EE4C @ =gUnk_03002CF4
	movs r0, #0
	strb r0, [r1]
	bl sub_08E8EE90
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	bne _08E8EE32
	bl sub_08E8F178
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08E8EE50
_08E8EE32:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	b _08E8EE56
	.align 2, 0
_08E8EE40: .4byte gUnk_03003DB4
_08E8EE44: .4byte gUnk_03002C20
_08E8EE48: .4byte gUnk_03003E50
_08E8EE4C: .4byte gUnk_03002CF4
_08E8EE50:
	ldr r0, _08E8EE84 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r4]
_08E8EE56:
	ldr r0, _08E8EE88 @ =gUnk_03002C20
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08E8EE68
	bl sub_08E8D3AC
_08E8EE68:
	ldr r0, _08E8EE8C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E8EE76
	b _08E8ED6E
_08E8EE76:
	ldr r0, _08E8EE8C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E8EE76
	b _08E8ED6E
	.align 2, 0
_08E8EE84: .4byte 0xFFFFF7FF
_08E8EE88: .4byte gUnk_03002C20
_08E8EE8C: .4byte 0x04000004

	thumb_func_start sub_08E8EE90
sub_08E8EE90: @ 0x08E8EE90
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08E8EF84 @ =gUnk_03003E70
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _08E8EF88 @ =0x040000D4
	ldr r0, _08E8EF8C @ =gUnk_03003690
	str r0, [r3]
	ldr r0, _08E8EF90 @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _08E8EF94 @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _08E8EF98 @ =gUnk_03002C20
	ldr r1, [r5]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r6, _08E8EF9C @ =gUnk_03003650
	ldr r7, _08E8EFA0 @ =gUnk_03003E60
	mov ip, r7
	ldr r7, _08E8EFA4 @ =gUnk_03002D00
	mov r8, r7
	ldr r7, _08E8EFA8 @ =gUnk_03002CC4
	mov sb, r7
	ldr r7, _08E8EFAC @ =gUnk_03003DB4
	mov sl, r7
	cmp r0, #0
	beq _08E8EEEC
	ldr r0, _08E8EFB0 @ =gUnk_03003F80
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _08E8EFB4 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08E8EEEC:
	ldr r1, [r5]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08E8EF0A
	ldr r0, _08E8EFB8 @ =gUnk_03003440
	str r0, [r3]
	ldr r0, _08E8EFBC @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _08E8EFB4 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08E8EF0A:
	str r6, [r3]
	ldr r0, _08E8EFC0 @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _08E8EFC4 @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08E8EFC8 @ =gUnk_03002CC8
	str r0, [r3]
	ldr r0, _08E8EFCC @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _08E8EFD0 @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	str r1, [r3]
	ldr r0, _08E8EFD4 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _08E8EFD8 @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r7, r8
	str r7, [r3]
	ldr r0, _08E8EFDC @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _08E8EFE0 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r5]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08E8EFF8
	ldr r2, _08E8EFE4 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r4, _08E8EFE8 @ =gUnk_030041F0
	str r4, [r3, #4]
	ldr r0, _08E8EFEC @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08E8EFF0 @ =gUnk_03002C6C
	ldrb r2, [r1]
	cmp r2, #0
	beq _08E8EF7E
	ldr r0, _08E8EFF4 @ =gUnk_03003DA0
	str r0, [r3]
	str r4, [r3, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08E8EF7E:
	mov r1, sb
	strb r2, [r1]
	b _08E8F006
	.align 2, 0
_08E8EF84: .4byte gUnk_03003E70
_08E8EF88: .4byte 0x040000D4
_08E8EF8C: .4byte gUnk_03003690
_08E8EF90: .4byte 0x04000008
_08E8EF94: .4byte 0x84000002
_08E8EF98: .4byte gUnk_03002C20
_08E8EF9C: .4byte gUnk_03003650
_08E8EFA0: .4byte gUnk_03003E60
_08E8EFA4: .4byte gUnk_03002D00
_08E8EFA8: .4byte gUnk_03002CC4
_08E8EFAC: .4byte gUnk_03003DB4
_08E8EFB0: .4byte gUnk_03003F80
_08E8EFB4: .4byte 0x84000080
_08E8EFB8: .4byte gUnk_03003440
_08E8EFBC: .4byte 0x05000200
_08E8EFC0: .4byte 0x04000040
_08E8EFC4: .4byte 0x84000003
_08E8EFC8: .4byte gUnk_03002CC8
_08E8EFCC: .4byte 0x04000050
_08E8EFD0: .4byte 0x80000003
_08E8EFD4: .4byte 0x04000010
_08E8EFD8: .4byte 0x80000008
_08E8EFDC: .4byte 0x04000020
_08E8EFE0: .4byte 0x84000008
_08E8EFE4: .4byte 0x04000200
_08E8EFE8: .4byte gUnk_030041F0
_08E8EFEC: .4byte 0x85000004
_08E8EFF0: .4byte gUnk_03002C6C
_08E8EFF4: .4byte gUnk_03003DA0
_08E8EFF8:
	ldr r2, _08E8F080 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E8F084 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	mov r7, sb
	strb r4, [r7]
_08E8F006:
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08E8F02E
	ldr r2, _08E8F088 @ =0x040000D4
	ldr r0, _08E8F08C @ =gUnk_03002C64
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08E8F090 @ =gUnk_03003EA8
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08E8F094 @ =gUnk_03004180
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08E8F02E:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08E8F07C
	bl sub_08E90CF4
	ldr r0, _08E8F088 @ =0x040000D4
	ldr r3, _08E8F098 @ =gUnk_03006890
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _08E8F09C @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08E8F0A0 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r3, r7
	str r1, [r0]
	ldr r1, _08E8F0A4 @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08E8F0A8 @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08E8F07C:
	movs r4, #0
	b _08E8F0BE
	.align 2, 0
_08E8F080: .4byte 0x04000200
_08E8F084: .4byte 0x0000FFFD
_08E8F088: .4byte 0x040000D4
_08E8F08C: .4byte gUnk_03002C64
_08E8F090: .4byte gUnk_03003EA8
_08E8F094: .4byte gUnk_03004180
_08E8F098: .4byte gUnk_03006890
_08E8F09C: .4byte 0x80000080
_08E8F0A0: .4byte 0x07000100
_08E8F0A4: .4byte 0x07000200
_08E8F0A8: .4byte 0x07000300
_08E8F0AC:
	ldr r1, _08E8F10C @ =gUnk_030070A0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08E91998
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08E8F0BE:
	ldr r0, _08E8F110 @ =gUnk_03002D28
	ldrb r0, [r0]
	cmp r4, r0
	blo _08E8F0AC
	ldr r0, _08E8F114 @ =gUnk_03002C20
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r7, _08E8F118 @ =gUnk_03003DB4
	mov sl, r7
	ldr r5, _08E8F110 @ =gUnk_03002D28
	cmp r1, #0
	beq _08E8F12C
	movs r0, #0
	str r0, [sp]
	ldr r2, _08E8F11C @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r4, _08E8F10C @ =gUnk_030070A0
	str r4, [r2, #4]
	ldr r0, _08E8F120 @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _08E8F124 @ =gUnk_03006850
	ldrb r3, [r1]
	cmp r3, #0
	beq _08E8F106
	ldr r0, _08E8F128 @ =gUnk_03002C50
	str r0, [r2]
	str r4, [r2, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08E8F106:
	strb r3, [r5]
	b _08E8F12E
	.align 2, 0
_08E8F10C: .4byte gUnk_030070A0
_08E8F110: .4byte gUnk_03002D28
_08E8F114: .4byte gUnk_03002C20
_08E8F118: .4byte gUnk_03003DB4
_08E8F11C: .4byte 0x040000D4
_08E8F120: .4byte 0x85000004
_08E8F124: .4byte gUnk_03006850
_08E8F128: .4byte gUnk_03002C50
_08E8F12C:
	strb r1, [r5]
_08E8F12E:
	mov r1, sl
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _08E8F138
	movs r4, #0
_08E8F138:
	movs r0, #0xff
	mov r7, sl
	strb r0, [r7]
	b _08E8F146
_08E8F140:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08E8F146:
	cmp r4, #1
	bhi _08E8F15E
	ldr r1, _08E8F170 @ =gUnk_02027D84
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08E91998
	cmp r0, #0
	bne _08E8F140
	ldr r0, _08E8F174 @ =gUnk_03003DB4
	strb r4, [r0]
_08E8F15E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E8F170: .4byte gUnk_02027D84
_08E8F174: .4byte gUnk_03003DB4

	thumb_func_start sub_08E8F178
sub_08E8F178: @ 0x08E8F178
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _08E8F1B0 @ =gUnk_03002C6C
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08E8F1B4 @ =gUnk_03002C20
	ldr r0, [r5]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08E8F1CE
	ldr r2, _08E8F1B8 @ =gUnk_03002C64
	ldr r0, [r2]
	ldr r1, _08E8F1BC @ =gUnk_03002F40
	ldr r3, _08E8F1C0 @ =gUnk_0300368C
	cmp r0, r1
	bne _08E8F1C4
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r1, r4
	str r0, [r2]
	str r1, [r3]
	b _08E8F1CE
	.align 2, 0
_08E8F1B0: .4byte gUnk_03002C6C
_08E8F1B4: .4byte gUnk_03002C20
_08E8F1B8: .4byte gUnk_03002C64
_08E8F1BC: .4byte gUnk_03002F40
_08E8F1C0: .4byte gUnk_0300368C
_08E8F1C4:
	str r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r3]
_08E8F1CE:
	ldr r4, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _08E8F240 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _08E8F244 @ =gUnk_03006890
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _08E8F248 @ =0x81000080
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
	ldr r1, _08E8F24C @ =gUnk_03006850
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
_08E8F240: .4byte 0x040000D4
_08E8F244: .4byte gUnk_03006890
_08E8F248: .4byte 0x81000080
_08E8F24C: .4byte gUnk_03006850

	thumb_func_start sub_08E8F250
sub_08E8F250: @ 0x08E8F250
	push {r4, r5, r6, lr}
	ldr r4, _08E8F2CC @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _08E8F2D0 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _08E8F2D4 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl sub_08E8CCD8
	ldr r1, _08E8F2D8 @ =gUnk_03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08E8F2DC @ =gUnk_030070B4
	strb r2, [r0]
	ldr r6, _08E8F2E0 @ =gUnk_03003E50
	ldr r3, [r6]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _08E8F2F8
	ldr r2, _08E8F2E4 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
_08E8F290:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E8F290
	ldr r2, _08E8F2CC @ =0x040000B0
	ldr r0, _08E8F2E8 @ =gUnk_03002C64
	ldr r4, [r0]
	str r4, [r2]
	ldr r0, _08E8F2EC @ =gUnk_03003EA8
	ldr r5, [r0]
	str r5, [r2, #4]
	ldr r3, _08E8F2F0 @ =gUnk_03004180
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
	ldr r1, _08E8F2F4 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08E8F30C
	.align 2, 0
_08E8F2CC: .4byte 0x040000B0
_08E8F2D0: .4byte 0x0000C5FF
_08E8F2D4: .4byte 0x00007FFF
_08E8F2D8: .4byte gUnk_03007FF8
_08E8F2DC: .4byte gUnk_030070B4
_08E8F2E0: .4byte gUnk_03003E50
_08E8F2E4: .4byte 0x04000200
_08E8F2E8: .4byte gUnk_03002C64
_08E8F2EC: .4byte gUnk_03003EA8
_08E8F2F0: .4byte gUnk_03004180
_08E8F2F4: .4byte 0xA2600000
_08E8F2F8:
	ldr r4, _08E8F350 @ =gUnk_03003EA8
	ldr r0, [r4]
	cmp r0, #0
	beq _08E8F30C
	ldr r2, _08E8F354 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E8F358 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_08E8F30C:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08E8F368
	ldr r2, _08E8F35C @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08E8F360 @ =gUnk_03003EA4
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08E8F364 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _08E8F354 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _08E8F384
	.align 2, 0
_08E8F350: .4byte gUnk_03003EA8
_08E8F354: .4byte 0x04000200
_08E8F358: .4byte 0x0000FFFD
_08E8F35C: .4byte 0x04000004
_08E8F360: .4byte gUnk_03003EA4
_08E8F364: .4byte 0x0000FFFB
_08E8F368:
	ldr r2, _08E8F3BC @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _08E8F3C0 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _08E8F3C4 @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _08E8F3C8 @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_08E8F384:
	ldr r0, _08E8F3CC @ =gUnk_03002D38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08E8F3A6
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08E8F3A6
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	bne _08E8F3A6
	bl sub_08E8D3AC
_08E8F3A6:
	ldr r1, _08E8F3D0 @ =gUnk_03003644
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08E8F3D4 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8F3BC: .4byte 0x04000004
_08E8F3C0: .4byte 0x0000FFFB
_08E8F3C4: .4byte 0x0000FFDF
_08E8F3C8: .4byte 0x04000200
_08E8F3CC: .4byte gUnk_03002D38
_08E8F3D0: .4byte gUnk_03003644
_08E8F3D4: .4byte 0x04000202

	thumb_func_start sub_08E8F3D8
sub_08E8F3D8: @ 0x08E8F3D8
	push {r4, r5, lr}
	ldr r0, _08E8F3E8 @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _08E8F408
	movs r4, #0
	b _08E8F400
	.align 2, 0
_08E8F3E8: .4byte 0x04000006
_08E8F3EC:
	ldr r1, _08E8F414 @ =gUnk_030041F0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08E9199C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08E8F400:
	ldr r0, _08E8F418 @ =gUnk_03002CC4
	ldrb r0, [r0]
	cmp r4, r0
	blo _08E8F3EC
_08E8F408:
	ldr r1, _08E8F41C @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8F414: .4byte gUnk_030041F0
_08E8F418: .4byte gUnk_03002CC4
_08E8F41C: .4byte 0x04000202

	thumb_func_start sub_08E8F420
sub_08E8F420: @ 0x08E8F420
	ldr r1, _08E8F428 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F428: .4byte 0x04000202

	thumb_func_start sub_08E8F42C
sub_08E8F42C: @ 0x08E8F42C
	ldr r1, _08E8F434 @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F434: .4byte 0x04000202

	thumb_func_start sub_08E8F438
sub_08E8F438: @ 0x08E8F438
	ldr r1, _08E8F440 @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F440: .4byte 0x04000202

	thumb_func_start sub_08E8F444
sub_08E8F444: @ 0x08E8F444
	ldr r1, _08E8F44C @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F44C: .4byte 0x04000202

	thumb_func_start sub_08E8F450
sub_08E8F450: @ 0x08E8F450
	ldr r1, _08E8F458 @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F458: .4byte 0x04000202

	thumb_func_start sub_08E8F45C
sub_08E8F45C: @ 0x08E8F45C
	ldr r1, _08E8F468 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F468: .4byte 0x04000202

	thumb_func_start sub_08E8F46C
sub_08E8F46C: @ 0x08E8F46C
	ldr r1, _08E8F478 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F478: .4byte 0x04000202

	thumb_func_start sub_08E8F47C
sub_08E8F47C: @ 0x08E8F47C
	ldr r1, _08E8F488 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F488: .4byte 0x04000202

	thumb_func_start sub_08E8F48C
sub_08E8F48C: @ 0x08E8F48C
	ldr r1, _08E8F498 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F498: .4byte 0x04000202

	thumb_func_start sub_08E8F49C
sub_08E8F49C: @ 0x08E8F49C
	ldr r1, _08E8F4A8 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F4A8: .4byte 0x04000202

	thumb_func_start sub_08E8F4AC
sub_08E8F4AC: @ 0x08E8F4AC
	ldr r1, _08E8F4B8 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E8F4B8: .4byte 0x04000202

	thumb_func_start nullsub_50
nullsub_50: @ 0x08E8F4BC
	bx lr
	.align 2, 0

	thumb_func_start sub_08E8F4C0
sub_08E8F4C0: @ 0x08E8F4C0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E8F50C @ =gUnk_03006858
	ldr r7, _08E8F510 @ =gUnk_03004184
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _08E8F576
_08E8F4CE:
	ldr r6, _08E8F50C @ =gUnk_03006858
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08E8F514 @ =gUnk_030036A0
	adds r3, r1, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	beq _08E8F54E
	movs r5, #0
_08E8F4E4:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r4, [r3]
	cmp r1, r0
	bls _08E8F524
	ldr r1, _08E8F518 @ =0x040000D4
	adds r0, r4, r5
	str r0, [r1]
	ldr r0, [r3, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08E8F51C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08E8F520 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	b _08E8F540
	.align 2, 0
_08E8F50C: .4byte gUnk_03006858
_08E8F510: .4byte gUnk_03004184
_08E8F514: .4byte gUnk_030036A0
_08E8F518: .4byte 0x040000D4
_08E8F51C: .4byte 0x80000200
_08E8F520: .4byte 0xFFFFFC00
_08E8F524:
	ldr r2, _08E8F568 @ =0x040000D4
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
_08E8F540:
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	bne _08E8F4E4
_08E8F54E:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _08E8F56C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E8F570
	movs r0, #0
	b _08E8F578
	.align 2, 0
_08E8F568: .4byte 0x040000D4
_08E8F56C: .4byte 0x04000004
_08E8F570:
	ldrb r1, [r7]
	cmp r2, r1
	bne _08E8F4CE
_08E8F576:
	movs r0, #1
_08E8F578:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E8F580
sub_08E8F580: @ 0x08E8F580
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08E8F5E0 @ =gUnk_03003680
	mov r8, r0
	ldr r1, _08E8F5E4 @ =gUnk_03003DC0
	mov ip, r1
	ldr r2, _08E8F5E8 @ =gUnk_03003E80
	mov sb, r2
	ldr r0, _08E8F5EC @ =gUnk_03004188
	ldr r6, _08E8F5F0 @ =gUnk_03003670
	ldrh r3, [r6]
	strh r3, [r0]
	ldr r0, _08E8F5F4 @ =0x04000130
	ldrh r0, [r0]
	ldr r7, _08E8F5F8 @ =0x000003FF
	adds r1, r7, #0
	bics r1, r0
	strh r1, [r6]
	ldr r0, _08E8F5FC @ =gUnk_03002C60
	strh r1, [r0]
	ldr r4, _08E8F600 @ =gUnk_030041DC
	adds r0, r1, #0
	eors r0, r3
	adds r2, r0, #0
	ands r2, r1
	strh r2, [r4]
	ldr r1, _08E8F604 @ =gUnk_03003DCC
	ands r0, r3
	strh r0, [r1]
	ldr r5, _08E8F608 @ =gUnk_03003698
	strh r2, [r5]
	movs r1, #0
_08E8F5C4:
	ldrh r0, [r6]
	lsls r4, r1, #0x18
	asrs r2, r4, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	mov r7, r8
	adds r3, r7, r2
	cmp r0, #0
	bne _08E8F60C
	mov r1, ip
	adds r0, r1, r2
	b _08E8F624
	.align 2, 0
_08E8F5E0: .4byte gUnk_03003680
_08E8F5E4: .4byte gUnk_03003DC0
_08E8F5E8: .4byte gUnk_03003E80
_08E8F5EC: .4byte gUnk_03004188
_08E8F5F0: .4byte gUnk_03003670
_08E8F5F4: .4byte 0x04000130
_08E8F5F8: .4byte 0x000003FF
_08E8F5FC: .4byte gUnk_03002C60
_08E8F600: .4byte gUnk_030041DC
_08E8F604: .4byte gUnk_03003DCC
_08E8F608: .4byte gUnk_03003698
_08E8F60C:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08E8F616
	subs r0, #1
	b _08E8F626
_08E8F616:
	adds r0, r1, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r7, sb
	adds r0, r7, r2
_08E8F624:
	ldrb r0, [r0]
_08E8F626:
	strb r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r4, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08E8F5C4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E8F644
sub_08E8F644: @ 0x08E8F644
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08E8F6E0 @ =gUnk_03003DB0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08E8F6E4 @ =gUnk_0300369C
	str r1, [r0]
	ldr r0, _08E8F6E8 @ =gUnk_0300365C
	str r1, [r0]
	ldr r0, _08E8F6EC @ =gUnk_03003678
	str r1, [r0]
	str r1, [sp]
	ldr r1, _08E8F6F0 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _08E8F6F4 @ =gUnk_030021D0
	str r4, [r1, #4]
	ldr r0, _08E8F6F8 @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	movs r3, #0
_08E8F670:
	ldr r0, _08E8F6FC @ =gUnk_03002D40
	lsls r1, r2, #2
	adds r1, r1, r0
	adds r0, r3, r4
	str r0, [r1]
	adds r3, #0x14
	adds r2, #1
	cmp r2, #0x7f
	ble _08E8F670
	bl sub_08E8F728
	adds r4, r0, #0
	cmp r4, #0
	beq _08E8F71C
	ldr r0, _08E8F700 @ =gUnk_0200B2C5
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl sub_08E8F728
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08E8F71C
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _08E8F704 @ =gUnk_0200B2C9
	str r0, [r4, #8]
	ldr r0, _08E8F708 @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _08E8F70C @ =gUnk_03002CE0
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _08E8F710 @ =gUnk_03007488
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _08E8F714 @ =gUnk_03004200
	strh r5, [r1]
	ldr r0, _08E8F718 @ =0x00002604
	strh r0, [r1, #2]
	movs r0, #1
	b _08E8F71E
	.align 2, 0
_08E8F6E0: .4byte gUnk_03003DB0
_08E8F6E4: .4byte gUnk_0300369C
_08E8F6E8: .4byte gUnk_0300365C
_08E8F6EC: .4byte gUnk_03003678
_08E8F6F0: .4byte 0x040000D4
_08E8F6F4: .4byte gUnk_030021D0
_08E8F6F8: .4byte 0x85000080
_08E8F6FC: .4byte gUnk_03002D40
_08E8F700: .4byte gUnk_0200B2C5
_08E8F704: .4byte gUnk_0200B2C9
_08E8F708: .4byte 0x0000FFFF
_08E8F70C: .4byte gUnk_03002CE0
_08E8F710: .4byte gUnk_03007488
_08E8F714: .4byte gUnk_03004200
_08E8F718: .4byte 0x00002604
_08E8F71C:
	movs r0, #0
_08E8F71E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E8F728
sub_08E8F728: @ 0x08E8F728
	push {lr}
	ldr r3, _08E8F740 @ =gUnk_0300365C
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _08E8F748
	ldr r1, _08E8F744 @ =gUnk_03002D40
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _08E8F74A
	.align 2, 0
_08E8F740: .4byte gUnk_0300365C
_08E8F744: .4byte gUnk_03002D40
_08E8F748:
	movs r0, #0
_08E8F74A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E8F750
sub_08E8F750: @ 0x08E8F750
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
	bl sub_08E8F728
	adds r4, r0, #0
	cmp r4, #0
	bne _08E8F778
	ldr r0, _08E8F774 @ =gUnk_03002CE0
	b _08E8F7E8
	.align 2, 0
_08E8F774: .4byte gUnk_03002CE0
_08E8F778:
	str r7, [r4, #8]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	mov r0, r8
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r6, #0
	bl sub_08E8FA04
	strh r0, [r4, #6]
	ldr r0, _08E8F7CC @ =gUnk_03003DB0
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _08E8F7D0 @ =gUnk_03002D40
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r1
	beq _08E8F7E6
	ldr r6, _08E8F7D4 @ =gUnk_0300369C
_08E8F7A4:
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r2, r5
	ldrh r0, [r1, #0x10]
	cmp r0, r8
	bls _08E8F7D8
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
	bne _08E8F7E6
	str r4, [r6]
	b _08E8F7E6
	.align 2, 0
_08E8F7CC: .4byte gUnk_03003DB0
_08E8F7D0: .4byte gUnk_03002D40
_08E8F7D4: .4byte gUnk_0300369C
_08E8F7D8:
	adds r3, r1, #0
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r5
	bne _08E8F7A4
_08E8F7E6:
	adds r0, r4, #0
_08E8F7E8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E8F7F4
sub_08E8F7F4: @ 0x08E8F7F4
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08E8F848 @ =gUnk_03002D40
	ldr r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08E8F85C
_08E8F808:
	ldrh r0, [r1, #0x10]
	cmp r0, r2
	blo _08E8F850
_08E8F80E:
	ldrh r0, [r1, #0x10]
	ldr r2, _08E8F84C @ =gUnk_03003678
	cmp r0, r4
	bhs _08E8F840
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	str r0, [r2]
	ldr r2, _08E8F848 @ =gUnk_03002D40
	ldr r0, [r2]
	cmp r1, r0
	beq _08E8F834
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _08E8F834
	adds r0, r1, #0
	bl sub_08E8F86C
_08E8F834:
	ldr r2, _08E8F84C @ =gUnk_03003678
	ldr r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08E8F80E
_08E8F840:
	movs r0, #0
	str r0, [r2]
	b _08E8F862
	.align 2, 0
_08E8F848: .4byte gUnk_03002D40
_08E8F84C: .4byte gUnk_03003678
_08E8F850:
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r0, r3
	cmp r0, #0
	bne _08E8F808
_08E8F85C:
	ldr r1, _08E8F868 @ =gUnk_03003678
	movs r0, #0
	str r0, [r1]
_08E8F862:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E8F868: .4byte gUnk_03003678

	thumb_func_start sub_08E8F86C
sub_08E8F86C: @ 0x08E8F86C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E8F90E
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _08E8F90E
	cmp r0, r5
	beq _08E8F90E
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _08E8F89A
	adds r0, r4, #0
	bl sub_08E9199C
_08E8F89A:
	ldr r1, _08E8F8E0 @ =gUnk_0300369C
	ldr r0, [r1]
	cmp r4, r0
	bne _08E8F8A8
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08E8F8A8:
	ldr r1, _08E8F8E4 @ =gUnk_03003678
	ldr r0, [r1]
	cmp r4, r0
	bne _08E8F8B6
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08E8F8B6:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _08E8F8EE
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r4, #6]
	cmp r0, #0
	beq _08E8F8E8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E8F8EA
	.align 2, 0
_08E8F8E0: .4byte gUnk_0300369C
_08E8F8E4: .4byte gUnk_03003678
_08E8F8E8:
	adds r0, r1, r5
_08E8F8EA:
	bl sub_08E8FA6C
_08E8F8EE:
	ldr r2, _08E8F914 @ =gUnk_03002D40
	ldr r1, _08E8F918 @ =gUnk_0300365C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	movs r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	ldr r0, _08E8F91C @ =gUnk_0200B2CD
	str r0, [r4, #8]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #6]
_08E8F90E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8F914: .4byte gUnk_03002D40
_08E8F918: .4byte gUnk_0300365C
_08E8F91C: .4byte gUnk_0200B2CD

	thumb_func_start sub_08E8F920
sub_08E8F920: @ 0x08E8F920
	push {r4, r5, r6, lr}
	ldr r1, _08E8F98C @ =gUnk_03003DB0
	ldr r0, _08E8F990 @ =gUnk_03002D40
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, _08E8F994 @ =gUnk_03002C20
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08E8F9A4
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08E8F9E6
_08E8F940:
	ldr r4, _08E8F998 @ =gUnk_0300369C
	ldr r5, _08E8F98C @ =gUnk_03003DB0
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
	bne _08E8F960
	ldr r0, [r2, #8]
	bl sub_08E91998
_08E8F960:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08E8F99C @ =gUnk_030070B4
	ldrb r0, [r4]
	cmp r0, #0
	beq _08E8F97C
	ldr r0, _08E8F9A0 @ =gUnk_03002D38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08E8F978
	bl sub_08E8D3AC
_08E8F978:
	movs r0, #0
	strb r0, [r4]
_08E8F97C:
	ldr r0, _08E8F98C @ =gUnk_03003DB0
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08E8F940
	b _08E8F9E6
	.align 2, 0
_08E8F98C: .4byte gUnk_03003DB0
_08E8F990: .4byte gUnk_03002D40
_08E8F994: .4byte gUnk_03002C20
_08E8F998: .4byte gUnk_0300369C
_08E8F99C: .4byte gUnk_030070B4
_08E8F9A0: .4byte gUnk_03002D38
_08E8F9A4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08E8F9E6
_08E8F9AC:
	ldr r4, _08E8F9F8 @ =gUnk_0300369C
	ldr r5, _08E8F9FC @ =gUnk_03003DB0
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
	bne _08E8F9CC
	ldr r0, [r2, #8]
	bl sub_08E91998
_08E8F9CC:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08E8FA00 @ =gUnk_030070B4
	ldrb r0, [r4]
	cmp r0, #0
	beq _08E8F9E0
	bl sub_08E8D3AC
	movs r0, #0
	strb r0, [r4]
_08E8F9E0:
	ldr r0, [r5]
	cmp r0, r6
	bne _08E8F9AC
_08E8F9E6:
	ldr r0, _08E8F9FC @ =gUnk_03003DB0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08E8F9F8 @ =gUnk_0300369C
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E8F9F8: .4byte gUnk_0300369C
_08E8F9FC: .4byte gUnk_03003DB0
_08E8FA00: .4byte gUnk_030070B4

	thumb_func_start sub_08E8FA04
sub_08E8FA04: @ 0x08E8FA04
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _08E8FA64
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _08E8FA50 @ =gUnk_03004200
_08E8FA1E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _08E8FA54
	cmp r0, r1
	beq _08E8FA46
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _08E8FA54
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_08E8FA46:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _08E8FA66
	.align 2, 0
_08E8FA50: .4byte gUnk_03004200
_08E8FA54:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08E8FA64
	adds r3, r1, #0
	b _08E8FA1E
_08E8FA64:
	movs r0, #0
_08E8FA66:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08E8FA6C
sub_08E8FA6C: @ 0x08E8FA6C
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r3, _08E8FAE4 @ =gUnk_03004200
	adds r4, r3, #0
	cmp r2, r3
	beq _08E8FA88
_08E8FA7A:
	adds r3, r4, #0
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, r4
	bne _08E8FA7A
_08E8FA88:
	ldrh r1, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08E8FA96
	rsbs r0, r1, #0
	strh r0, [r2, #2]
_08E8FA96:
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r0, r3, r0
	cmp r0, r2
	bne _08E8FAB6
	ldrh r1, [r3, #2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _08E8FAB6
	ldrh r0, [r4]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	adds r0, r1, r0
	strh r0, [r3, #2]
	adds r2, r3, #0
_08E8FAB6:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _08E8FADC
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08E8FADC
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_08E8FADC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E8FAE4: .4byte gUnk_03004200

	thumb_func_start sub_08E8FAE8
sub_08E8FAE8: @ 0x08E8FAE8
	push {lr}
	movs r2, #0
	ldr r1, _08E8FB0C @ =gUnk_03004200
_08E8FAEE:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08E8FAF8
	subs r2, r2, r0
_08E8FAF8:
	ldrh r1, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	bne _08E8FAEE
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08E8FB0C: .4byte gUnk_03004200

	thumb_func_start sub_08E8FB10
sub_08E8FB10: @ 0x08E8FB10
	push {r4, r5, r6, r7, lr}
	ldr r3, _08E8FB18 @ =gUnk_03004200
	b _08E8FBBE
	.align 2, 0
_08E8FB18: .4byte gUnk_03004200
_08E8FB1C:
	ldrh r4, [r3, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r2, [r3]
	cmp r0, #0
	blt _08E8FBB8
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldrh r1, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _08E8FB4C
	adds r0, r4, r1
	strh r0, [r3, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _08E8FBBE
_08E8FB48:
	strh r7, [r2, #6]
	b _08E8FB7E
_08E8FB4C:
	ldr r4, _08E8FBAC @ =gUnk_03000004
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
_08E8FB68:
	ldr r0, _08E8FBB0 @ =gUnk_030021D0
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08E8FB48
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0x7f
	ble _08E8FB68
_08E8FB7E:
	ldr r2, _08E8FBB4 @ =0x040000D4
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
	b _08E8FBBE
	.align 2, 0
_08E8FBAC: .4byte gUnk_03000004
_08E8FBB0: .4byte gUnk_030021D0
_08E8FBB4: .4byte 0x040000D4
_08E8FBB8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
_08E8FBBE:
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	bne _08E8FB1C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start nullsub_51
nullsub_51: @ 0x08E8FBD0
	bx lr
	.align 2, 0

	thumb_func_start nullsub_52
nullsub_52: @ 0x08E8FBD4
	bx lr
	.align 2, 0

	thumb_func_start nullsub_53
nullsub_53: @ 0x08E8FBD8
	bx lr
	.align 2, 0

	thumb_func_start sub_08E8FBDC
sub_08E8FBDC: @ 0x08E8FBDC
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
	ldr r1, _08E8FC7C @ =gUnk_03003690
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
	beq _08E8FC68
_08E8FC2E:
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
	bl sub_08E91978
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
	bne _08E8FC2E
_08E8FC68:
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
_08E8FC7C: .4byte gUnk_03003690

	thumb_func_start sub_08E8FC80
sub_08E8FC80: @ 0x08E8FC80
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
_08E8FC90:
	ldr r1, _08E8FD30 @ =gUnk_03003660
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
	bne _08E8FCC0
	mov r1, ip
	adds r0, r5, r1
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08E8FCC0
	b _08E8FE6E
_08E8FCC0:
	mov r0, sl
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _08E8FD34 @ =gUnk_03003690
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
	bls _08E8FDA0
	ldr r0, _08E8FD38 @ =gUnk_03003E70
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08E8FDA0
	add r7, sb
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r6, r0, #0x10
	cmp r2, #0xff
	bne _08E8FD44
	ldr r0, _08E8FD3C @ =gUnk_03006880
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08E8FD40 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	subs r0, r0, r4
	muls r0, r6, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	b _08E8FDEC
	.align 2, 0
_08E8FD30: .4byte gUnk_03003660
_08E8FD34: .4byte gUnk_03003690
_08E8FD38: .4byte gUnk_03003E70
_08E8FD3C: .4byte gUnk_03006880
_08E8FD40: .4byte 0x040000D4
_08E8FD44:
	cmp r4, r2
	bls _08E8FD4A
	b _08E8FE54
_08E8FD4A:
	ldr r0, _08E8FD98 @ =gUnk_03006880
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08E8FD9C @ =0x040000D4
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
	bls _08E8FD4A
	b _08E8FE54
	.align 2, 0
_08E8FD98: .4byte gUnk_03006880
_08E8FD9C: .4byte 0x040000D4
_08E8FDA0:
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	movs r6, #0x20
	ldr r0, _08E8FDFC @ =gUnk_03003690
	add r0, r8
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08E8FDBC
	movs r6, #0x40
_08E8FDBC:
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #3
	cmp r0, #0xff
	bne _08E8FE08
	ldr r0, _08E8FE00 @ =gUnk_03006880
	add r0, sl
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08E8FE04 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r6, r0
	lsls r0, r0, #1
_08E8FDEC:
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08E8FE54
	.align 2, 0
_08E8FDFC: .4byte gUnk_03003690
_08E8FE00: .4byte gUnk_03006880
_08E8FE04: .4byte 0x040000D4
_08E8FE08:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhi _08E8FE54
	ldr r0, _08E8FE90 @ =gUnk_03006880
	mov r8, r0
_08E8FE14:
	mov r0, sl
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08E8FE94 @ =0x040000D4
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
	bls _08E8FE14
_08E8FE54:
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _08E8FE94 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _08E8FE98 @ =gUnk_03003660
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08E8FE9C @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08E8FE6E:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _08E8FE7E
	b _08E8FC90
_08E8FE7E:
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
_08E8FE90: .4byte gUnk_03006880
_08E8FE94: .4byte 0x040000D4
_08E8FE98: .4byte gUnk_03003660
_08E8FE9C: .4byte 0x85000001

	thumb_func_start sub_08E8FEA0
sub_08E8FEA0: @ 0x08E8FEA0
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _08E8FED0 @ =gUnk_0202878C
	mov r0, sp
	movs r2, #8
	bl sub_08E91BA4
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _08E8FED4
	movs r0, #1
	rsbs r0, r0, #0
	b _08E8FF46
	.align 2, 0
_08E8FED0: .4byte gUnk_0202878C
_08E8FED4:
	cmp r1, #0
	bgt _08E8FEE0
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_08E8FEE0:
	cmp r2, #0
	bgt _08E8FEF0
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08E8FEF0:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _08E8FF08
	lsls r0, r1, #0x17
	cmp r2, #0
	beq _08E8FF1C
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _08E8FF16
_08E8FF08:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	cmp r1, #0
	beq _08E8FF1C
	asrs r0, r0, #0x10
_08E8FF16:
	bl sub_08E919D4
	lsls r0, r0, #0x10
_08E8FF1C:
	lsrs r2, r0, #0x10
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E8FF38
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_08E8FF38:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_08E8FF46:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E8FF50
sub_08E8FF50: @ 0x08E8FF50
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_08E8FF5A:
	lsrs r0, r1, #0xc
	adds r3, r4, r2
	lsls r1, r1, #0x14
	adds r2, #1
	cmp r0, #9
	bls _08E8FF6A
	adds r0, #0x57
	b _08E8FF6C
_08E8FF6A:
	adds r0, #0x30
_08E8FF6C:
	strb r0, [r3]
	lsrs r1, r1, #0x10
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08E8FF5A
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E8FF84
sub_08E8FF84: @ 0x08E8FF84
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r6, #0
_08E8FF8E:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08E91980
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
	bls _08E8FF8E
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E8FFC4
sub_08E8FFC4: @ 0x08E8FFC4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _08E8FFD8
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _08E8FFEC
_08E8FFD8:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _08E8FFFC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_08E8FFEC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08E90000
	movs r0, #0
	b _08E900A2
	.align 2, 0
_08E8FFFC: .4byte 0xFFFFBFFF
_08E90000:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _08E90018
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _08E900A0
_08E90014:
	adds r0, r1, #0
	b _08E900A2
_08E90018:
	ldr r0, _08E90030 @ =gUnk_03003E54
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
	b _08E90070
	.align 2, 0
_08E90030: .4byte gUnk_03003E54
_08E90034:
	ldr r0, _08E900A8 @ =gUnk_02028794
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08E919A0
	adds r1, r0, #0
	cmp r1, #1
	beq _08E90070
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E90014
	ldr r0, _08E900AC @ =gUnk_03003E54
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
_08E90070:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r1, [r3]
	cmp r1, #0
	blt _08E90034
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
_08E900A0:
	movs r0, #1
_08E900A2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08E900A8: .4byte gUnk_02028794
_08E900AC: .4byte gUnk_03003E54

	thumb_func_start sub_08E900B0
sub_08E900B0: @ 0x08E900B0
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
	ldr r0, _08E90104 @ =gUnk_03004184
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
	ldr r1, _08E90108 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _08E9010C @ =gUnk_03003E54
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
	blt _08E901D4
	b _08E90188
	.align 2, 0
_08E90104: .4byte gUnk_03004184
_08E90108: .4byte 0xFFFFBFFF
_08E9010C: .4byte gUnk_03003E54
_08E90110:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E9011A
	mov sb, sl
_08E9011A:
	ldr r0, _08E90168 @ =gUnk_02028794
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E919A0
	adds r2, r0, #0
	ldr r3, _08E9016C @ =gUnk_03004184
	ldr r0, [sp]
	ldrb r1, [r3]
	cmp r0, r1
	beq _08E9013E
	strb r0, [r3]
	movs r1, #1
	mov r8, r1
_08E9013E:
	cmp r2, #1
	beq _08E90188
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08E90174
	ldr r0, _08E90170 @ =gUnk_03003E54
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
	b _08E90188
	.align 2, 0
_08E90168: .4byte gUnk_02028794
_08E9016C: .4byte gUnk_03004184
_08E90170: .4byte gUnk_03003E54
_08E90174:
	mov r0, r8
	cmp r0, #0
	beq _08E90184
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
_08E90184:
	adds r0, r2, #0
	b _08E901E8
_08E90188:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r1, [r5]
	cmp r1, #0
	blt _08E90110
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
	beq _08E901B8
	cmp r6, #0
	ble _08E901B8
	adds r0, r6, #0
	bl sub_08E91984
	adds r6, r0, #0
	b _08E901BC
_08E901B8:
	ldr r0, [r5]
	add sl, r0
_08E901BC:
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
	bge _08E90188
_08E901D4:
	mov r0, r8
	cmp r0, #0
	beq _08E901E6
	ldr r0, _08E901F8 @ =gUnk_03004184
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0x3f
	ands r1, r2
	strb r1, [r0]
_08E901E6:
	movs r0, #1
_08E901E8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E901F8: .4byte gUnk_03004184

	thumb_func_start sub_08E901FC
sub_08E901FC: @ 0x08E901FC
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
	bne _08E9027A
	ldr r1, [r2, #4]
	ldr r0, _08E90230 @ =gUnk_03003E54
	ldr r4, [r2, #8]
	ldr r6, _08E90234 @ =gUnk_030036A0
	ldr r5, _08E90238 @ =gUnk_03004184
	cmp r1, #0
	bge _08E9023C
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r2, r0, r1
	lsls r0, r4, #0x16
	b _08E90246
	.align 2, 0
_08E90230: .4byte gUnk_03003E54
_08E90234: .4byte gUnk_030036A0
_08E90238: .4byte gUnk_03004184
_08E9023C:
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r2, r0, r1
	lsls r0, r4, #0x15
_08E90246:
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
_08E9027A:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E90284
sub_08E90284: @ 0x08E90284
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
	bne _08E902D2
	ldr r1, [r4, #4]
	ldr r2, _08E902DC @ =0x040000D4
	ldr r0, _08E902E0 @ =gUnk_03003E54
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
	ldr r1, _08E902E4 @ =gUnk_03003440
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08E902E8 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1

	thumb_func_start sub_08E902D0
sub_08E902D0: @ 0x08E902D0
	str r0, [r2]
_08E902D2:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08E902DC: .4byte 0x040000D4
_08E902E0: .4byte gUnk_03003E54
_08E902E4: .4byte gUnk_03003440
_08E902E8: .4byte gUnk_03002C20

	thumb_func_start sub_08E902EC
sub_08E902EC: @ 0x08E902EC
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_08E902F8
sub_08E902F8: @ 0x08E902F8
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08E90308
sub_08E90308: @ 0x08E90308
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl sub_08E8D3B8
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08E9031C
sub_08E9031C: @ 0x08E9031C
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _08E90358 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _08E9035C @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08E90360
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _08E903C4
	.align 2, 0
_08E90358: .4byte 0x040000D4
_08E9035C: .4byte 0x84000002
_08E90360:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08E90394
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
_08E90394:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08E903C4
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
_08E903C4:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08E903CC
sub_08E903CC: @ 0x08E903CC
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

	thumb_func_start sub_08E903E8
sub_08E903E8: @ 0x08E903E8
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08E903F4
sub_08E903F4: @ 0x08E903F4
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

	thumb_func_start sub_08E9040C
sub_08E9040C: @ 0x08E9040C
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_08E90414
sub_08E90414: @ 0x08E90414
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _08E9042C @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_08E9042C: .4byte 0xFFFFCFFF

	thumb_func_start sub_08E90430
sub_08E90430: @ 0x08E90430
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_08E90440
sub_08E90440: @ 0x08E90440
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
	ldr r0, _08E904F8 @ =gUnk_03006896
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl sub_08E91980
	ldr r7, _08E904FC @ =gUnk_02027D8C
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
	bl sub_08E91980
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
	bl sub_08E91980
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
	bl sub_08E91980
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
_08E904F8: .4byte gUnk_03006896
_08E904FC: .4byte gUnk_02027D8C

	thumb_func_start sub_08E90500
sub_08E90500: @ 0x08E90500
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
	bne _08E9051C
	b _08E907BA
_08E9051C:
	lsrs r0, r2, #0x1c
	ldr r1, _08E90590 @ =gUnk_03003E54
	ldr r3, [sp, #0x24]
	ldrh r5, [r3, #0xc]
	add r4, sp, #0x20
	ldr r3, [r3, #8]
	ldr r6, _08E90594 @ =gUnk_03006896
	mov r8, r6
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x2c]
	ldr r6, _08E90598 @ =gUnk_02027D8C
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
	bne _08E9059C
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r5, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08E905AA
	.align 2, 0
_08E90590: .4byte gUnk_03003E54
_08E90594: .4byte gUnk_03006896
_08E90598: .4byte gUnk_02027D8C
_08E9059C:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r5, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08E905AA:
	movs r0, #0x1f
	ands r3, r0
	strh r3, [r4]
	ldrh r4, [r4]
	lsls r4, r4, #5
	add r4, r8
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r1, _08E90730 @ =0x000003FF
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
	bl sub_08E91980
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
	bl sub_08E91980
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
	bl sub_08E91980
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
	bl sub_08E91980
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
	bge _08E90688
	rsbs r0, r0, #0
	mov r1, sl
	strh r0, [r1]
_08E90688:
	mov r2, sb
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08E9069A
	rsbs r0, r4, #0
	mov r6, r8
	strh r0, [r6]
_08E9069A:
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
	ble _08E90734
	ldrh r5, [r7, #8]
	b _08E9073E
	.align 2, 0
_08E90730: .4byte 0x000003FF
_08E90734:
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08E9073E:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _08E90748
	ldrh r4, [r7, #0xa]
	b _08E90752
_08E90748:
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08E90752:
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
_08E907BA:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E907CC
sub_08E907CC: @ 0x08E907CC
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
	bne _08E907F8
	b _08E90C58
_08E907F8:
	lsrs r0, r2, #0x1c
	ldr r1, _08E90818 @ =gUnk_03003E54
	ldrh r3, [r6, #0xc]
	ldr r4, [r6, #8]
	cmp r0, #0
	bne _08E9081C
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08E9082A
	.align 2, 0
_08E90818: .4byte gUnk_03003E54
_08E9081C:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08E9082A:
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
	beq _08E9085C
	ldr r0, _08E908BC @ =gUnk_03002BD4
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
_08E9085C:
	ldrh r3, [r7, #4]
	str r3, [sp, #8]
	ldrh r5, [r7, #6]
	str r5, [sp, #0xc]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08E908C0
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
	beq _08E9092C
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
	b _08E9092C
	.align 2, 0
_08E908BC: .4byte gUnk_03002BD4
_08E908C0:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08E908DA
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	ldr r5, [sp, #0xc]
	subs r0, r5, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	b _08E908E4
_08E908DA:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	mov r5, r8
	subs r5, r5, r0
	mov r8, r5
_08E908E4:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08E908FE
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, [sp, #8]
	subs r0, r3, r0
	mov r5, sb
	subs r5, r5, r0
	mov sb, r5
	b _08E90908
_08E908FE:
	movs r1, #8
	ldrsh r0, [r7, r1]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
_08E90908:
	lsrs r0, r2, #0xb
	movs r4, #1
	ands r0, r4
	ldrh r1, [r7]
	lsls r3, r1, #0x10
	lsrs r1, r3, #0x1f
	cmp r0, r1
	beq _08E9091C
	movs r5, #1
	str r5, [sp, #0x24]
_08E9091C:
	lsrs r1, r2, #0xa
	lsrs r0, r3, #0x1e
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08E9092C
	movs r0, #1
	str r0, [sp, #0x28]
_08E9092C:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08E90956
	adds r0, r1, #0
	add r0, sb
	cmp r0, #0
	bge _08E9093C
	b _08E90C58
_08E9093C:
	mov r2, sb
	cmp r2, #0xf0
	ble _08E90944
	b _08E90C58
_08E90944:
	ldr r0, [sp, #0xc]
	add r0, r8
	cmp r0, #0
	bge _08E9094E
	b _08E90C58
_08E9094E:
	mov r3, r8
	cmp r3, #0xa0
	ble _08E90956
	b _08E90C58
_08E90956:
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
	ldr r0, _08E90B60 @ =gUnk_03003E54
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _08E90B64 @ =gUnk_03002CD0
	ldrb r0, [r0]
	strb r0, [r6, #0x1d]
	movs r5, #0
	str r5, [sp, #0x10]
	ldrh r0, [r7, #2]
	cmp r5, r0
	blo _08E909A0
	b _08E90B1E
_08E909A0:
	ldr r2, _08E90B68 @ =0x040000D4
	ldrh r0, [r7]
	ldr r3, _08E90B6C @ =0x00003FFF
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
	ldr r0, _08E90B70 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sp
	ldrh r5, [r0, #2]
	ldr r1, _08E90B74 @ =0x000001FF
	adds r0, r1, #0
	adds r4, r0, #0
	ands r4, r5
	cmp r4, #0xff
	ble _08E909D8
	ldr r2, _08E90B78 @ =0xFFFFFE00
	adds r4, r4, r2
_08E909D8:
	mov r0, sp
	ldrb r3, [r0]
	cmp r3, #0x7f
	ble _08E909E4
	ldr r0, _08E90B7C @ =0xFFFFFF00
	adds r3, r3, r0
_08E909E4:
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
	ldr r2, _08E90B80 @ =gUnk_020287C4
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
	beq _08E90A5C
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08E90A3E
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
_08E90A3E:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _08E90A5C
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
_08E90A5C:
	add r3, r8
	mov r5, ip
	adds r0, r3, r5
	cmp r0, #0
	blt _08E90B0C
	cmp r3, #0xa0
	bgt _08E90B0C
	add r4, sb
	mov r1, sl
	adds r0, r4, r1
	cmp r0, #0
	blt _08E90B0C
	cmp r4, #0xf0
	bgt _08E90B0C
	mov r2, sp
	mov r1, sp
	movs r0, #0xff
	ands r3, r0
	ldrh r1, [r1]
	adds r0, r3, r1
	strh r0, [r2]
	mov r1, sp
	ldr r3, _08E90B74 @ =0x000001FF
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
	beq _08E90AD0
	ldr r0, _08E90B84 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r2, #4]
_08E90AD0:
	mov r2, sp
	mov r1, sp
	ldr r0, [r6]
	ldr r3, _08E90B88 @ =0xF9FF0000
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
	bl sub_08E90C70
	adds r1, r0, #0
	ldr r0, _08E90B8C @ =gUnk_03007488
	ldr r0, [r0]
	cmp r0, r1
	bne _08E90AFE
	b _08E90C58
_08E90AFE:
	ldr r0, _08E90B68 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _08E90B70 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08E90B0C:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r3, [r7, #2]
	cmp r0, r3
	bhs _08E90B1E
	b _08E909A0
_08E90B1E:
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08E90B28
	b _08E90C58
_08E90B28:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _08E90B36
	b _08E90C58
_08E90B36:
	ldr r0, _08E90B90 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	ldr r0, [r7, #0xc]
	ldr r1, _08E90B94 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, _08E90B60 @ =gUnk_03003E54
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r3, r0, r1
	ldr r0, [r3]
	cmp r0, #0
	blt _08E90B98
	movs r5, #0x20
	mov sb, r5
	ldr r2, [r2, #0x10]
	b _08E90B9E
	.align 2, 0
_08E90B60: .4byte gUnk_03003E54
_08E90B64: .4byte gUnk_03002CD0
_08E90B68: .4byte 0x040000D4
_08E90B6C: .4byte 0x00003FFF
_08E90B70: .4byte 0x80000003
_08E90B74: .4byte 0x000001FF
_08E90B78: .4byte 0xFFFFFE00
_08E90B7C: .4byte 0xFFFFFF00
_08E90B80: .4byte gUnk_020287C4
_08E90B84: .4byte 0x000003FF
_08E90B88: .4byte 0xF9FF0000
_08E90B8C: .4byte gUnk_03007488
_08E90B90: .4byte 0xFBFFFFFF
_08E90B94: .4byte 0x00FFFFFF
_08E90B98:
	movs r1, #0x40
	mov sb, r1
	ldr r2, [r2, #0x14]
_08E90B9E:
	mov r4, sb
	muls r0, r4, r0
	adds r5, r2, r0
	adds r3, #4
	ldr r6, [r6]
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r8, r1
	bhs _08E90C24
	ldr r0, _08E90BD4 @ =gUnk_030036A0
	mov ip, r0
	ldr r7, _08E90BD8 @ =gUnk_03004184
_08E90BB8:
	ldm r3!, {r0}
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r2
	mov sl, r0
	adds r0, r5, r4
	cmp r0, sl
	bne _08E90BDC
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08E90C14
	.align 2, 0
_08E90BD4: .4byte gUnk_030036A0
_08E90BD8: .4byte gUnk_03004184
_08E90BDC:
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
_08E90C14:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [sp, #0x2c]
	cmp r8, r0
	blo _08E90BB8
_08E90C24:
	ldr r3, _08E90C68 @ =gUnk_030036A0
	ldr r2, _08E90C6C @ =gUnk_03004184
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
_08E90C58:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E90C68: .4byte gUnk_030036A0
_08E90C6C: .4byte gUnk_03004184

	thumb_func_start sub_08E90C70
sub_08E90C70: @ 0x08E90C70
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _08E90C7C
	movs r2, #0x1f
_08E90C7C:
	ldr r3, _08E90C8C @ =gUnk_03002CD0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08E90C94
	ldr r0, _08E90C90 @ =gUnk_03007488
	ldr r0, [r0]
	b _08E90CEC
	.align 2, 0
_08E90C8C: .4byte gUnk_03002CD0
_08E90C90: .4byte gUnk_03007488
_08E90C94:
	ldr r0, _08E90CBC @ =gUnk_03002C30
	adds r5, r2, r0
	ldrb r0, [r5]
	ldr r4, _08E90CC0 @ =gUnk_030039A0
	ldrb r1, [r3]
	ldr r6, _08E90CC4 @ =gUnk_03006860
	adds r7, r4, #0
	subs r7, #8
	cmp r0, #0xff
	bne _08E90CC8
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r3]
	strb r0, [r5]
	adds r1, r2, r6
	ldrb r0, [r3]
	strb r0, [r1]
	b _08E90CE0
	.align 2, 0
_08E90CBC: .4byte gUnk_03002C30
_08E90CC0: .4byte gUnk_030039A0
_08E90CC4: .4byte gUnk_03006860
_08E90CC8:
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
_08E90CE0:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r7
_08E90CEC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E90CF4
sub_08E90CF4: @ 0x08E90CF4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r6, _08E90DA0 @ =gUnk_03006890
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r4, #0
_08E90D0A:
	ldr r1, _08E90DA4 @ =gUnk_03002C30
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
	beq _08E90D56
	ldr r0, _08E90DA8 @ =gUnk_030039A0
	mov sb, r0
	ldr r1, _08E90DAC @ =gUnk_03003DD0
	mov ip, r1
_08E90D2A:
	ldr r1, _08E90DB0 @ =0x040000D4
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	add r3, sb
	str r3, [r1]
	str r5, [r1, #4]
	ldr r0, _08E90DB4 @ =0x80000003
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
	bne _08E90D2A
_08E90D56:
	adds r4, #1
	cmp r4, #0x1f
	ble _08E90D0A
	ldr r7, _08E90DB8 @ =gUnk_03002C20
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	ldr r1, _08E90DBC @ =gUnk_03002CD0
	cmp r0, #0
	beq _08E90DC8
	ldrb r4, [r1]
	lsls r0, r4, #3
	ldr r2, _08E90DA0 @ =gUnk_03006890
	adds r5, r0, r2
	ldr r2, _08E90DC0 @ =gUnk_030041E0
	ldrb r3, [r2]
	cmp r4, r3
	bge _08E90E48
_08E90D7C:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08E90DB0 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08E90DC4 @ =0x81000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r5, #8
	adds r4, #1
	ldrb r0, [r2]
	cmp r4, r0
	blt _08E90D7C
	b _08E90E48
	.align 2, 0
_08E90DA0: .4byte gUnk_03006890
_08E90DA4: .4byte gUnk_03002C30
_08E90DA8: .4byte gUnk_030039A0
_08E90DAC: .4byte gUnk_03003DD0
_08E90DB0: .4byte 0x040000D4
_08E90DB4: .4byte 0x80000003
_08E90DB8: .4byte gUnk_03002C20
_08E90DBC: .4byte gUnk_03002CD0
_08E90DC0: .4byte gUnk_030041E0
_08E90DC4: .4byte 0x81000003
_08E90DC8:
	movs r2, #0x80
	lsls r2, r2, #3
	ands r2, r3
	cmp r2, #0
	beq _08E90E44
	adds r5, r1, #0
	ldrb r0, [r5]
	subs r4, r0, #1
	movs r2, #0x7f
	cmp r4, #0
	blt _08E90DFA
_08E90DDE:
	ldr r1, _08E90E30 @ =0x040000D4
	lsls r0, r4, #3
	adds r0, r0, r6
	str r0, [r1]
	lsls r0, r2, #3
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08E90E34 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r4, #1
	subs r2, #1
	cmp r4, #0
	bge _08E90DDE
_08E90DFA:
	ldr r3, _08E90E38 @ =gUnk_030041E0
	ldrb r1, [r5]
	movs r0, #0x80
	subs r0, r0, r1
	strb r0, [r3]
	movs r4, #0
	cmp r4, r0
	bge _08E90E48
_08E90E0A:
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08E90E30 @ =0x040000D4
	str r1, [r2]
	lsls r0, r4, #3
	ldr r1, _08E90E3C @ =gUnk_03006890
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08E90E40 @ =0x81000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blt _08E90E0A
	b _08E90E48
	.align 2, 0
_08E90E30: .4byte 0x040000D4
_08E90E34: .4byte 0x80000003
_08E90E38: .4byte gUnk_030041E0
_08E90E3C: .4byte gUnk_03006890
_08E90E40: .4byte 0x81000003
_08E90E44:
	ldr r0, _08E90E7C @ =gUnk_030041E0
	strb r2, [r0]
_08E90E48:
	ldr r1, _08E90E80 @ =gUnk_03002CD0
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	add r6, sp, #8
	cmp r0, #0
	beq _08E90E8C
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _08E90E84 @ =0x05000008
	mov r1, sl
	adds r2, r5, #0
	bl sub_08E9197C
	str r4, [sp, #8]
	ldr r1, _08E90E88 @ =gUnk_03006860
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08E9197C
	b _08E90EAC
	.align 2, 0
_08E90E7C: .4byte gUnk_030041E0
_08E90E80: .4byte gUnk_03002CD0
_08E90E84: .4byte 0x05000008
_08E90E88: .4byte gUnk_03006860
_08E90E8C:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _08E90EBC @ =0x040000D4
	str r6, [r0]
	mov r2, sl
	str r2, [r0, #4]
	ldr r2, _08E90EC0 @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	str r6, [r0]
	ldr r1, _08E90EC4 @ =gUnk_03006860
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08E90EAC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E90EBC: .4byte 0x040000D4
_08E90EC0: .4byte 0x85000008
_08E90EC4: .4byte gUnk_03006860

	thumb_func_start nullsub_23
nullsub_23: @ 0x08E90EC8
	bx lr
	.align 2, 0

	thumb_func_start sub_08E90ECC
sub_08E90ECC: @ 0x08E90ECC
	ldr r0, _08E90ED4 @ =gUnk_03007488
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08E90ED4: .4byte gUnk_03007488

	thumb_func_start nullsub_54
nullsub_54: @ 0x08E90ED8
	bx lr
	.align 2, 0

	thumb_func_start sub_08E90EDC
sub_08E90EDC: @ 0x08E90EDC
	movs r0, #0
	bx lr

	thumb_func_start sub_08E90EE0
sub_08E90EE0: @ 0x08E90EE0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _08E90F9C @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E90FA0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E90FA4 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08E90FA8 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08E90FAC @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _08E90FB0 @ =gUnk_03007240
	ldr r2, _08E90FB4 @ =0x0500007A
	mov r0, sp
	adds r1, r4, #0
	bl sub_08E9197C
	ldr r0, _08E90FB8 @ =gUnk_0200CF0C
	ldr r1, _08E90FBC @ =gUnk_03007430
	ldr r2, _08E90FC0 @ =0x04000010
	bl sub_08E9197C
	ldr r0, _08E90FC4 @ =gUnk_0200CF4C
	ldr r1, _08E90FC8 @ =gUnk_030070C0
	ldr r2, _08E90FCC @ =0x04000060
	bl sub_08E9197C
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
_08E90F48:
	ldr r4, _08E90FB0 @ =gUnk_03007240
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
	ble _08E90F48
	ldr r3, _08E90F9C @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08E90FA0 @ =0x04000200
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
_08E90F9C: .4byte 0x04000208
_08E90FA0: .4byte 0x04000200
_08E90FA4: .4byte 0x0000FF3F
_08E90FA8: .4byte 0x04000134
_08E90FAC: .4byte 0x00004003
_08E90FB0: .4byte gUnk_03007240
_08E90FB4: .4byte 0x0500007A
_08E90FB8: .4byte gUnk_0200CF0C
_08E90FBC: .4byte gUnk_03007430
_08E90FC0: .4byte 0x04000010
_08E90FC4: .4byte gUnk_0200CF4C
_08E90FC8: .4byte gUnk_030070C0
_08E90FCC: .4byte 0x04000060

	thumb_func_start sub_08E90FD0
sub_08E90FD0: @ 0x08E90FD0
	push {lr}
	ldr r2, _08E90FE8 @ =gUnk_03007240
	ldrb r0, [r2]
	cmp r0, #0
	beq _08E90FE2
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_08E90FE2:
	pop {r0}
	bx r0
	.align 2, 0
_08E90FE8: .4byte gUnk_03007240

	thumb_func_start sub_08E90FEC
sub_08E90FEC: @ 0x08E90FEC
	ldr r3, _08E91020 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08E91024 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E91028 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08E9102C @ =0x04000128
	ldr r2, _08E91030 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08E91034 @ =0x0000BBBC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _08E91038 @ =gUnk_03007240
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_08E91020: .4byte 0x04000208
_08E91024: .4byte 0x04000200
_08E91028: .4byte 0x0000FF3F
_08E9102C: .4byte 0x04000128
_08E91030: .4byte 0x00002003
_08E91034: .4byte 0x0000BBBC
_08E91038: .4byte gUnk_03007240
