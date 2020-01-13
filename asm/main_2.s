	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D7A748
sub_08D7A748: @ 0x08D7A748
	push {lr}
	bl sub_08D7A75C
	bl sub_08D72194
	bl sub_08D7AC8C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D7A75C
sub_08D7A75C: @ 0x08D7A75C
	push {r4, lr}
	sub sp, #8
	ldr r1, _08D7A7AC @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _08D7A7B0 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08D7A7B4 @ =gUnk_030013D0
	movs r3, #0
	str r3, [r2]
	ldr r0, _08D7A7B8 @ =gUnk_03002600
	str r3, [r0]
	ldr r1, _08D7A7BC @ =gUnk_03001E24
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _08D7A7C0 @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _08D7A798
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
_08D7A798:
	ldr r0, _08D7A7C4 @ =gUnk_03001E20
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _08D7A7C8
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	b _08D7A7CA
	.align 2, 0
_08D7A7AC: .4byte 0x04000208
_08D7A7B0: .4byte 0x00004014
_08D7A7B4: .4byte gUnk_030013D0
_08D7A7B8: .4byte gUnk_03002600
_08D7A7BC: .4byte gUnk_03001E24
_08D7A7C0: .4byte 0x04000134
_08D7A7C4: .4byte gUnk_03001E20
_08D7A7C8:
	str r3, [r2]
_08D7A7CA:
	ldr r1, _08D7AB34 @ =gUnk_03002564
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08D7AB38 @ =gUnk_03002994
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08D7AB3C @ =gUnk_03002720
	strb r1, [r0]
	ldr r0, _08D7AB40 @ =gUnk_03005840
	strb r1, [r0]
	ldr r0, _08D7AB44 @ =gUnk_03005008
	strb r1, [r0]
	ldr r0, _08D7AB48 @ =gUnk_03002934
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08D7AB50 @ =gUnk_03001E10
	str r0, [r1, #4]
	ldr r0, _08D7AB54 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A7FA:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A7FA
	ldr r1, _08D7AB58 @ =gUnk_03005030
	movs r0, #0
	str r0, [r1]
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D7AB5C @ =gUnk_03002610
	str r0, [r1, #4]
	ldr r0, _08D7AB54 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A818:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A818
	ldr r0, _08D7AB60 @ =gUnk_03001384
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _08D7AB64 @ =gUnk_03002620
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r2]
	str r1, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08D7AB68 @ =gUnk_03001E50
	str r0, [r1, #4]
	ldr r0, _08D7AB6C @ =0x850000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A842:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A842
	ldr r0, _08D7AB70 @ =gUnk_03001480
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08D7AB74 @ =gUnk_03002990
	strb r1, [r0]
	add r2, sp, #4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _08D7AB4C @ =0x040000D4
	str r2, [r1]
	ldr r0, _08D7AB78 @ =gUnk_03005040
	str r0, [r1, #4]
	ldr r0, _08D7AB7C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A86A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A86A
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	ldr r1, _08D7AB4C @ =0x040000D4
	str r2, [r1]
	ldr r0, _08D7AB80 @ =gUnk_03002150
	str r0, [r1, #4]
	ldr r0, _08D7AB7C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A886:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A886
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08D7AB84 @ =gUnk_030013E0
	str r0, [r1, #4]
	ldr r0, _08D7AB88 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A8A2:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A8A2
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08D7AB8C @ =gUnk_03005010
	str r0, [r1, #4]
	ldr r0, _08D7AB88 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A8BE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A8BE
	ldr r1, _08D7AB4C @ =0x040000D4
	ldr r0, _08D7AB90 @ =0x05000200
	str r0, [r1]
	ldr r0, _08D7AB94 @ =gUnk_03001BF0
	str r0, [r1, #4]
	ldr r0, _08D7AB98 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A8D4:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A8D4
	ldr r1, _08D7AB4C @ =0x040000D4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1]
	ldr r0, _08D7AB9C @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _08D7AB98 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A8EC:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A8EC
	ldr r0, _08D7ABA0 @ =gUnk_030014B0
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
	ldr r0, _08D7ABA4 @ =gUnk_030014A4
	strb r3, [r0]
	ldr r0, _08D7ABA8 @ =gUnk_030014D4
	strh r1, [r0]
	ldr r0, _08D7ABAC @ =gUnk_03001380
	strh r2, [r0]
	ldr r0, _08D7ABB0 @ =gUnk_03005844
	strh r2, [r0]
	ldr r0, _08D7ABB4 @ =gUnk_0300293C
	strh r1, [r0]
	ldr r0, _08D7ABB8 @ =gUnk_03005004
	strh r1, [r0]
	ldr r0, _08D7ABBC @ =gUnk_030014DC
	strh r1, [r0]
	ldr r0, _08D7ABC0 @ =gUnk_0300260C
	strh r1, [r0]
	ldr r0, _08D7ABC4 @ =gUnk_03005848
	strh r2, [r0]
	ldr r0, _08D7ABC8 @ =gUnk_03001E00
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _08D7ABCC @ =gUnk_03001478
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08D7ABD0 @ =gUnk_03005868
	str r1, [r0]
_08D7A952:
	ldr r2, _08D7ABD4 @ =gUnk_03002570
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	movs r1, #0x14
	strb r1, [r2]
	ldr r1, _08D7ABD8 @ =gUnk_03002630
	adds r1, r0, r1
	movs r2, #8
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08D7A952
	ldr r1, _08D7ABDC @ =gUnk_03001DF4
	movs r0, #0
	str r0, [r1]
	movs r1, #0
_08D7A97A:
	ldr r3, _08D7ABE0 @ =gUnk_03000740
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r3, r1, r3
	ldr r2, _08D7ABE4 @ =gUnk_0201DECC
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _08D7A97A
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08D7ABE8 @ =gUnk_030016F0
	str r2, [r1, #4]
	ldr r0, _08D7ABEC @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A9AC:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A9AC
	ldr r0, _08D7ABF0 @ =gUnk_03001414
	str r2, [r0]
	ldr r1, _08D7ABF4 @ =gUnk_03001E3C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _08D7ABF8 @ =gUnk_03002658
	movs r1, #0
	str r1, [r0]
	ldr r0, _08D7ABFC @ =gUnk_03002930
	strb r1, [r0]
	ldr r0, _08D7AC00 @ =gUnk_0300141C
	strb r1, [r0]
	ldr r0, _08D7AC04 @ =gUnk_03001474
	strb r1, [r0]
	str r1, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D7AC08 @ =gUnk_03002550
	str r0, [r1, #4]
	ldr r0, _08D7AB54 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A9E4:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A9E4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08D7AC0C @ =gUnk_030029A0
	str r0, [r1, #4]
	ldr r0, _08D7AB54 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7A9FE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7A9FE
	ldr r0, _08D7AC10 @ =gUnk_03005000
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08D7AC14 @ =gUnk_030014D8
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08D7AC18 @ =gUnk_03001400
	str r0, [r1, #4]
	ldr r0, _08D7AB54 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7AA22:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7AA22
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D7AC1C @ =gUnk_03005850
	str r0, [r1, #4]
	ldr r0, _08D7AB54 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7AA3C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7AA3C
	bl sub_08D79254
	ldr r0, _08D7AC20 @ =0x0095FA00
	bl sub_08D797F0
	bl sub_08D792CC
	ldr r1, _08D7AC24 @ =gUnk_03005864
	movs r0, #1
	strb r0, [r1]
	bl sub_08D7B564
	ldr r1, _08D7AC28 @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08D7AC2C @ =gUnk_030014D0
	ldr r0, _08D7AC30 @ =0x06014000
	str r0, [r1]
	bl nullsub_13
	ldr r2, _08D7AC34 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08D7AB4C @ =0x040000D4
	ldr r0, _08D7AC38 @ =gUnk_020000FC
	str r0, [r1]
	ldr r2, _08D7AC3C @ =gUnk_03000780
	str r2, [r1, #4]
	ldr r0, _08D7AB98 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7AA8A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7AA8A
	ldr r0, _08D7AC40 @ =gUnk_03007FFC
	str r2, [r0]
	ldr r2, _08D7AC44 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08D7AC48 @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _08D7AC4C @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _08D7AABE
	ldr r0, _08D7AC50 @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _08D7AC54 @ =0x454B3842
	cmp r1, r0
	bne _08D7AABE
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08D7AABE:
	ldr r1, _08D7AC58 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D7AC5C @ =gUnk_03002640
	str r0, [r1, #4]
	ldr r0, _08D7AC60 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7AAD8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7AAD8
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D7AB4C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08D7AC64 @ =gUnk_03001420
	str r0, [r1, #4]
	ldr r0, _08D7AC68 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7AAF2:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7AAF2
	ldr r0, _08D7AC6C @ =gUnk_030014E4
	movs r4, #0
	str r4, [r0]
	ldr r0, _08D7AC70 @ =gUnk_030014E8
	strb r4, [r0]
	movs r0, #0
	bl sub_08D7CE00
	ldr r0, _08D7AC74 @ =gUnk_0300500C
	strb r4, [r0]
	ldr r0, _08D7AC78 @ =gUnk_03001470
	str r4, [r0]
	ldr r0, _08D7AC7C @ =gUnk_030014E0
	strb r4, [r0]
	ldr r1, _08D7AB4C @ =0x040000D4
	ldr r0, _08D7AC80 @ =0x04000008
	str r0, [r1]
	ldr r0, _08D7AC84 @ =gUnk_03001E40
	str r0, [r1, #4]
	ldr r0, _08D7AC88 @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D7AB24:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7AB24
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7AB34: .4byte gUnk_03002564
_08D7AB38: .4byte gUnk_03002994
_08D7AB3C: .4byte gUnk_03002720
_08D7AB40: .4byte gUnk_03005840
_08D7AB44: .4byte gUnk_03005008
_08D7AB48: .4byte gUnk_03002934
_08D7AB4C: .4byte 0x040000D4
_08D7AB50: .4byte gUnk_03001E10
_08D7AB54: .4byte 0x85000004
_08D7AB58: .4byte gUnk_03005030
_08D7AB5C: .4byte gUnk_03002610
_08D7AB60: .4byte gUnk_03001384
_08D7AB64: .4byte gUnk_03002620
_08D7AB68: .4byte gUnk_03001E50
_08D7AB6C: .4byte 0x850000C0
_08D7AB70: .4byte gUnk_03001480
_08D7AB74: .4byte gUnk_03002990
_08D7AB78: .4byte gUnk_03005040
_08D7AB7C: .4byte 0x81000200
_08D7AB80: .4byte gUnk_03002150
_08D7AB84: .4byte gUnk_030013E0
_08D7AB88: .4byte 0x85000008
_08D7AB8C: .4byte gUnk_03005010
_08D7AB90: .4byte 0x05000200
_08D7AB94: .4byte gUnk_03001BF0
_08D7AB98: .4byte 0x84000080
_08D7AB9C: .4byte gUnk_03002730
_08D7ABA0: .4byte gUnk_030014B0
_08D7ABA4: .4byte gUnk_030014A4
_08D7ABA8: .4byte gUnk_030014D4
_08D7ABAC: .4byte gUnk_03001380
_08D7ABB0: .4byte gUnk_03005844
_08D7ABB4: .4byte gUnk_0300293C
_08D7ABB8: .4byte gUnk_03005004
_08D7ABBC: .4byte gUnk_030014DC
_08D7ABC0: .4byte gUnk_0300260C
_08D7ABC4: .4byte gUnk_03005848
_08D7ABC8: .4byte gUnk_03001E00
_08D7ABCC: .4byte gUnk_03001478
_08D7ABD0: .4byte gUnk_03005868
_08D7ABD4: .4byte gUnk_03002570
_08D7ABD8: .4byte gUnk_03002630
_08D7ABDC: .4byte gUnk_03001DF4
_08D7ABE0: .4byte gUnk_03000740
_08D7ABE4: .4byte gUnk_0201DECC
_08D7ABE8: .4byte gUnk_030016F0
_08D7ABEC: .4byte 0x85000140
_08D7ABF0: .4byte gUnk_03001414
_08D7ABF4: .4byte gUnk_03001E3C
_08D7ABF8: .4byte gUnk_03002658
_08D7ABFC: .4byte gUnk_03002930
_08D7AC00: .4byte gUnk_0300141C
_08D7AC04: .4byte gUnk_03001474
_08D7AC08: .4byte gUnk_03002550
_08D7AC0C: .4byte gUnk_030029A0
_08D7AC10: .4byte gUnk_03005000
_08D7AC14: .4byte gUnk_030014D8
_08D7AC18: .4byte gUnk_03001400
_08D7AC1C: .4byte gUnk_03005850
_08D7AC20: .4byte 0x0095FA00
_08D7AC24: .4byte gUnk_03005864
_08D7AC28: .4byte gUnk_03001418
_08D7AC2C: .4byte gUnk_030014D0
_08D7AC30: .4byte 0x06014000
_08D7AC34: .4byte gUnk_030013D0
_08D7AC38: .4byte gUnk_020000FC
_08D7AC3C: .4byte gUnk_03000780
_08D7AC40: .4byte gUnk_03007FFC
_08D7AC44: .4byte 0x04000200
_08D7AC48: .4byte 0x04000004
_08D7AC4C: .4byte 0x080000B2
_08D7AC50: .4byte 0x080000AC
_08D7AC54: .4byte 0x454B3842
_08D7AC58: .4byte 0x04000208
_08D7AC5C: .4byte gUnk_03002640
_08D7AC60: .4byte 0x85000005
_08D7AC64: .4byte gUnk_03001420
_08D7AC68: .4byte 0x85000014
_08D7AC6C: .4byte gUnk_030014E4
_08D7AC70: .4byte gUnk_030014E8
_08D7AC74: .4byte gUnk_0300500C
_08D7AC78: .4byte gUnk_03001470
_08D7AC7C: .4byte gUnk_030014E0
_08D7AC80: .4byte 0x04000008
_08D7AC84: .4byte gUnk_03001E40
_08D7AC88: .4byte 0x80000004

	thumb_func_start sub_08D7AC8C
sub_08D7AC8C: @ 0x08D7AC8C
	push {r4, r5, lr}
_08D7AC8E:
	ldr r1, _08D7ACEC @ =gUnk_03005864
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08D7ACF0 @ =gUnk_030013D0
	ldr r0, [r1]
	ldr r2, _08D7ACF4 @ =0xFEFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r1, _08D7ACF8 @ =gUnk_03002600
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r0, _08D7ACFC @ =gUnk_03002564
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08D7AD1A
	bl sub_08D7B4A0
	ldr r0, _08D7AD00 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08D7ACD8
	bl sub_08D72438
	ldr r0, _08D7AD04 @ =gUnk_03002640
	ldr r1, _08D7AD08 @ =gUnk_03001420
	movs r2, #0
	bl sub_08D7CF5C
	ldr r1, _08D7AD0C @ =gUnk_030014E4
	str r0, [r1]
	bl sub_08D72568
	cmp r0, #0
	bne _08D7ACD8
	bl sub_08D73128
_08D7ACD8:
	ldr r0, _08D7AD10 @ =gUnk_03000470
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08D7AD14
	bl sub_08D7B840
	b _08D7AD1A
	.align 2, 0
_08D7ACEC: .4byte gUnk_03005864
_08D7ACF0: .4byte gUnk_030013D0
_08D7ACF4: .4byte 0xFEFFFFFF
_08D7ACF8: .4byte gUnk_03002600
_08D7ACFC: .4byte gUnk_03002564
_08D7AD00: .4byte gUnk_030014E8
_08D7AD04: .4byte gUnk_03002640
_08D7AD08: .4byte gUnk_03001420
_08D7AD0C: .4byte gUnk_030014E4
_08D7AD10: .4byte gUnk_03000470
_08D7AD14:
	ldr r1, _08D7AD60 @ =gUnk_03002564
	movs r0, #0
	strb r0, [r1]
_08D7AD1A:
	ldr r4, _08D7AD64 @ =gUnk_030013D0
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	ldr r1, _08D7AD68 @ =gUnk_03002600
	str r0, [r1]
	bl sub_08D7D8B4
	ldr r1, _08D7AD6C @ =gUnk_030014A4
	movs r0, #0
	strb r0, [r1]
	bl sub_08D7ADB0
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	bne _08D7AD52
	bl sub_08D7B098
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08D7AD70
_08D7AD52:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	b _08D7AD76
	.align 2, 0
_08D7AD60: .4byte gUnk_03002564
_08D7AD64: .4byte gUnk_030013D0
_08D7AD68: .4byte gUnk_03002600
_08D7AD6C: .4byte gUnk_030014A4
_08D7AD70:
	ldr r0, _08D7ADA4 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r4]
_08D7AD76:
	ldr r0, _08D7ADA8 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08D7AD88
	bl sub_08D792CC
_08D7AD88:
	ldr r0, _08D7ADAC @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D7AD96
	b _08D7AC8E
_08D7AD96:
	ldr r0, _08D7ADAC @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D7AD96
	b _08D7AC8E
	.align 2, 0
_08D7ADA4: .4byte 0xFFFFF7FF
_08D7ADA8: .4byte gUnk_030013D0
_08D7ADAC: .4byte 0x04000004

	thumb_func_start sub_08D7ADB0
sub_08D7ADB0: @ 0x08D7ADB0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08D7AEA4 @ =gUnk_03002620
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _08D7AEA8 @ =0x040000D4
	ldr r0, _08D7AEAC @ =gUnk_03001E40
	str r0, [r3]
	ldr r0, _08D7AEB0 @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _08D7AEB4 @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _08D7AEB8 @ =gUnk_030013D0
	ldr r1, [r5]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r6, _08D7AEBC @ =gUnk_03001E00
	ldr r7, _08D7AEC0 @ =gUnk_03002610
	mov ip, r7
	ldr r7, _08D7AEC4 @ =gUnk_030014B0
	mov r8, r7
	ldr r7, _08D7AEC8 @ =gUnk_03001474
	mov sb, r7
	ldr r7, _08D7AECC @ =gUnk_03002564
	mov sl, r7
	cmp r0, #0
	beq _08D7AE0C
	ldr r0, _08D7AED0 @ =gUnk_03002730
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _08D7AED4 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08D7AE0C:
	ldr r1, [r5]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08D7AE2A
	ldr r0, _08D7AED8 @ =gUnk_03001BF0
	str r0, [r3]
	ldr r0, _08D7AEDC @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _08D7AED4 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08D7AE2A:
	str r6, [r3]
	ldr r0, _08D7AEE0 @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _08D7AEE4 @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08D7AEE8 @ =gUnk_03001478
	str r0, [r3]
	ldr r0, _08D7AEEC @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _08D7AEF0 @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	str r1, [r3]
	ldr r0, _08D7AEF4 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _08D7AEF8 @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r7, r8
	str r7, [r3]
	ldr r0, _08D7AEFC @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _08D7AF00 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r5]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08D7AF18
	ldr r2, _08D7AF04 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r4, _08D7AF08 @ =gUnk_030029A0
	str r4, [r3, #4]
	ldr r0, _08D7AF0C @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08D7AF10 @ =gUnk_0300141C
	ldrb r2, [r1]
	cmp r2, #0
	beq _08D7AE9E
	ldr r0, _08D7AF14 @ =gUnk_03002550
	str r0, [r3]
	str r4, [r3, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08D7AE9E:
	mov r1, sb
	strb r2, [r1]
	b _08D7AF26
	.align 2, 0
_08D7AEA4: .4byte gUnk_03002620
_08D7AEA8: .4byte 0x040000D4
_08D7AEAC: .4byte gUnk_03001E40
_08D7AEB0: .4byte 0x04000008
_08D7AEB4: .4byte 0x84000002
_08D7AEB8: .4byte gUnk_030013D0
_08D7AEBC: .4byte gUnk_03001E00
_08D7AEC0: .4byte gUnk_03002610
_08D7AEC4: .4byte gUnk_030014B0
_08D7AEC8: .4byte gUnk_03001474
_08D7AECC: .4byte gUnk_03002564
_08D7AED0: .4byte gUnk_03002730
_08D7AED4: .4byte 0x84000080
_08D7AED8: .4byte gUnk_03001BF0
_08D7AEDC: .4byte 0x05000200
_08D7AEE0: .4byte 0x04000040
_08D7AEE4: .4byte 0x84000003
_08D7AEE8: .4byte gUnk_03001478
_08D7AEEC: .4byte 0x04000050
_08D7AEF0: .4byte 0x80000003
_08D7AEF4: .4byte 0x04000010
_08D7AEF8: .4byte 0x80000008
_08D7AEFC: .4byte 0x04000020
_08D7AF00: .4byte 0x84000008
_08D7AF04: .4byte 0x04000200
_08D7AF08: .4byte gUnk_030029A0
_08D7AF0C: .4byte 0x85000004
_08D7AF10: .4byte gUnk_0300141C
_08D7AF14: .4byte gUnk_03002550
_08D7AF18:
	ldr r2, _08D7AFA0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7AFA4 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	mov r7, sb
	strb r4, [r7]
_08D7AF26:
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08D7AF4E
	ldr r2, _08D7AFA8 @ =0x040000D4
	ldr r0, _08D7AFAC @ =gUnk_03001414
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08D7AFB0 @ =gUnk_03002658
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08D7AFB4 @ =gUnk_03002930
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08D7AF4E:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08D7AF9C
	bl sub_08D7CC14
	ldr r0, _08D7AFA8 @ =0x040000D4
	ldr r3, _08D7AFB8 @ =gUnk_03005040
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _08D7AFBC @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08D7AFC0 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r3, r7
	str r1, [r0]
	ldr r1, _08D7AFC4 @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08D7AFC8 @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08D7AF9C:
	movs r4, #0
	b _08D7AFDE
	.align 2, 0
_08D7AFA0: .4byte 0x04000200
_08D7AFA4: .4byte 0x0000FFFD
_08D7AFA8: .4byte 0x040000D4
_08D7AFAC: .4byte gUnk_03001414
_08D7AFB0: .4byte gUnk_03002658
_08D7AFB4: .4byte gUnk_03002930
_08D7AFB8: .4byte gUnk_03005040
_08D7AFBC: .4byte 0x80000080
_08D7AFC0: .4byte 0x07000100
_08D7AFC4: .4byte 0x07000200
_08D7AFC8: .4byte 0x07000300
_08D7AFCC:
	ldr r1, _08D7B02C @ =gUnk_03005850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08D7D8BC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08D7AFDE:
	ldr r0, _08D7B030 @ =gUnk_030014D8
	ldrb r0, [r0]
	cmp r4, r0
	blo _08D7AFCC
	ldr r0, _08D7B034 @ =gUnk_030013D0
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r7, _08D7B038 @ =gUnk_03002564
	mov sl, r7
	ldr r5, _08D7B030 @ =gUnk_030014D8
	cmp r1, #0
	beq _08D7B04C
	movs r0, #0
	str r0, [sp]
	ldr r2, _08D7B03C @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r4, _08D7B02C @ =gUnk_03005850
	str r4, [r2, #4]
	ldr r0, _08D7B040 @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _08D7B044 @ =gUnk_03005000
	ldrb r3, [r1]
	cmp r3, #0
	beq _08D7B026
	ldr r0, _08D7B048 @ =gUnk_03001400
	str r0, [r2]
	str r4, [r2, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08D7B026:
	strb r3, [r5]
	b _08D7B04E
	.align 2, 0
_08D7B02C: .4byte gUnk_03005850
_08D7B030: .4byte gUnk_030014D8
_08D7B034: .4byte gUnk_030013D0
_08D7B038: .4byte gUnk_03002564
_08D7B03C: .4byte 0x040000D4
_08D7B040: .4byte 0x85000004
_08D7B044: .4byte gUnk_03005000
_08D7B048: .4byte gUnk_03001400
_08D7B04C:
	strb r1, [r5]
_08D7B04E:
	mov r1, sl
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _08D7B058
	movs r4, #0
_08D7B058:
	movs r0, #0xff
	mov r7, sl
	strb r0, [r7]
	b _08D7B066
_08D7B060:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08D7B066:
	cmp r4, #1
	bhi _08D7B07E
	ldr r1, _08D7B090 @ =gUnk_0201DF04
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08D7D8BC
	cmp r0, #0
	bne _08D7B060
	ldr r0, _08D7B094 @ =gUnk_03002564
	strb r4, [r0]
_08D7B07E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7B090: .4byte gUnk_0201DF04
_08D7B094: .4byte gUnk_03002564

	thumb_func_start sub_08D7B098
sub_08D7B098: @ 0x08D7B098
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _08D7B0D0 @ =gUnk_0300141C
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08D7B0D4 @ =gUnk_030013D0
	ldr r0, [r5]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08D7B0EE
	ldr r2, _08D7B0D8 @ =gUnk_03001414
	ldr r0, [r2]
	ldr r1, _08D7B0DC @ =gUnk_030016F0
	ldr r3, _08D7B0E0 @ =gUnk_03001E3C
	cmp r0, r1
	bne _08D7B0E4
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r1, r4
	str r0, [r2]
	str r1, [r3]
	b _08D7B0EE
	.align 2, 0
_08D7B0D0: .4byte gUnk_0300141C
_08D7B0D4: .4byte gUnk_030013D0
_08D7B0D8: .4byte gUnk_03001414
_08D7B0DC: .4byte gUnk_030016F0
_08D7B0E0: .4byte gUnk_03001E3C
_08D7B0E4:
	str r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r3]
_08D7B0EE:
	ldr r4, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _08D7B160 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _08D7B164 @ =gUnk_03005040
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _08D7B168 @ =0x81000080
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
	ldr r1, _08D7B16C @ =gUnk_03005000
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
_08D7B160: .4byte 0x040000D4
_08D7B164: .4byte gUnk_03005040
_08D7B168: .4byte 0x81000080
_08D7B16C: .4byte gUnk_03005000

	thumb_func_start sub_08D7B170
sub_08D7B170: @ 0x08D7B170
	push {r4, r5, r6, lr}
	ldr r4, _08D7B1EC @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _08D7B1F0 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _08D7B1F4 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl sub_08D78BF8
	ldr r1, _08D7B1F8 @ =gUnk_03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08D7B1FC @ =gUnk_03005864
	strb r2, [r0]
	ldr r6, _08D7B200 @ =gUnk_03002600
	ldr r3, [r6]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _08D7B218
	ldr r2, _08D7B204 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
_08D7B1B0:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D7B1B0
	ldr r2, _08D7B1EC @ =0x040000B0
	ldr r0, _08D7B208 @ =gUnk_03001414
	ldr r4, [r0]
	str r4, [r2]
	ldr r0, _08D7B20C @ =gUnk_03002658
	ldr r5, [r0]
	str r5, [r2, #4]
	ldr r3, _08D7B210 @ =gUnk_03002930
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
	ldr r1, _08D7B214 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08D7B22C
	.align 2, 0
_08D7B1EC: .4byte 0x040000B0
_08D7B1F0: .4byte 0x0000C5FF
_08D7B1F4: .4byte 0x00007FFF
_08D7B1F8: .4byte gUnk_03007FF8
_08D7B1FC: .4byte gUnk_03005864
_08D7B200: .4byte gUnk_03002600
_08D7B204: .4byte 0x04000200
_08D7B208: .4byte gUnk_03001414
_08D7B20C: .4byte gUnk_03002658
_08D7B210: .4byte gUnk_03002930
_08D7B214: .4byte 0xA2600000
_08D7B218:
	ldr r4, _08D7B270 @ =gUnk_03002658
	ldr r0, [r4]
	cmp r0, #0
	beq _08D7B22C
	ldr r2, _08D7B274 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7B278 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_08D7B22C:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08D7B288
	ldr r2, _08D7B27C @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08D7B280 @ =gUnk_03002654
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08D7B284 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _08D7B274 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _08D7B2A4
	.align 2, 0
_08D7B270: .4byte gUnk_03002658
_08D7B274: .4byte 0x04000200
_08D7B278: .4byte 0x0000FFFD
_08D7B27C: .4byte 0x04000004
_08D7B280: .4byte gUnk_03002654
_08D7B284: .4byte 0x0000FFFB
_08D7B288:
	ldr r2, _08D7B2DC @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _08D7B2E0 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _08D7B2E4 @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _08D7B2E8 @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_08D7B2A4:
	ldr r0, _08D7B2EC @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08D7B2C6
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08D7B2C6
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	bne _08D7B2C6
	bl sub_08D792CC
_08D7B2C6:
	ldr r1, _08D7B2F0 @ =gUnk_03001DF4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08D7B2F4 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D7B2DC: .4byte 0x04000004
_08D7B2E0: .4byte 0x0000FFFB
_08D7B2E4: .4byte 0x0000FFDF
_08D7B2E8: .4byte 0x04000200
_08D7B2EC: .4byte gUnk_030014E8
_08D7B2F0: .4byte gUnk_03001DF4
_08D7B2F4: .4byte 0x04000202

	thumb_func_start sub_08D7B2F8
sub_08D7B2F8: @ 0x08D7B2F8
	push {r4, r5, lr}
	ldr r0, _08D7B308 @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _08D7B328
	movs r4, #0
	b _08D7B320
	.align 2, 0
_08D7B308: .4byte 0x04000006
_08D7B30C:
	ldr r1, _08D7B334 @ =gUnk_030029A0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08D7D8C0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08D7B320:
	ldr r0, _08D7B338 @ =gUnk_03001474
	ldrb r0, [r0]
	cmp r4, r0
	blo _08D7B30C
_08D7B328:
	ldr r1, _08D7B33C @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7B334: .4byte gUnk_030029A0
_08D7B338: .4byte gUnk_03001474
_08D7B33C: .4byte 0x04000202

	thumb_func_start sub_08D7B340
sub_08D7B340: @ 0x08D7B340
	ldr r1, _08D7B348 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B348: .4byte 0x04000202

	thumb_func_start sub_08D7B34C
sub_08D7B34C: @ 0x08D7B34C
	ldr r1, _08D7B354 @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B354: .4byte 0x04000202

	thumb_func_start sub_08D7B358
sub_08D7B358: @ 0x08D7B358
	ldr r1, _08D7B360 @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B360: .4byte 0x04000202

	thumb_func_start sub_08D7B364
sub_08D7B364: @ 0x08D7B364
	ldr r1, _08D7B36C @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B36C: .4byte 0x04000202

	thumb_func_start sub_08D7B370
sub_08D7B370: @ 0x08D7B370
	ldr r1, _08D7B378 @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B378: .4byte 0x04000202

	thumb_func_start sub_08D7B37C
sub_08D7B37C: @ 0x08D7B37C
	ldr r1, _08D7B388 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B388: .4byte 0x04000202

	thumb_func_start sub_08D7B38C
sub_08D7B38C: @ 0x08D7B38C
	ldr r1, _08D7B398 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B398: .4byte 0x04000202

	thumb_func_start sub_08D7B39C
sub_08D7B39C: @ 0x08D7B39C
	ldr r1, _08D7B3A8 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B3A8: .4byte 0x04000202

	thumb_func_start sub_08D7B3AC
sub_08D7B3AC: @ 0x08D7B3AC
	ldr r1, _08D7B3B8 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B3B8: .4byte 0x04000202

	thumb_func_start sub_08D7B3BC
sub_08D7B3BC: @ 0x08D7B3BC
	ldr r1, _08D7B3C8 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B3C8: .4byte 0x04000202

	thumb_func_start sub_08D7B3CC
sub_08D7B3CC: @ 0x08D7B3CC
	ldr r1, _08D7B3D8 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D7B3D8: .4byte 0x04000202

	thumb_func_start nullsub_92
nullsub_92: @ 0x08D7B3DC
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7B3E0
sub_08D7B3E0: @ 0x08D7B3E0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D7B42C @ =gUnk_03005008
	ldr r7, _08D7B430 @ =gUnk_03002934
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _08D7B496
_08D7B3EE:
	ldr r6, _08D7B42C @ =gUnk_03005008
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08D7B434 @ =gUnk_03001E50
	adds r3, r1, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	beq _08D7B46E
	movs r5, #0
_08D7B404:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r4, [r3]
	cmp r1, r0
	bls _08D7B444
	ldr r1, _08D7B438 @ =0x040000D4
	adds r0, r4, r5
	str r0, [r1]
	ldr r0, [r3, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08D7B43C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08D7B440 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	b _08D7B460
	.align 2, 0
_08D7B42C: .4byte gUnk_03005008
_08D7B430: .4byte gUnk_03002934
_08D7B434: .4byte gUnk_03001E50
_08D7B438: .4byte 0x040000D4
_08D7B43C: .4byte 0x80000200
_08D7B440: .4byte 0xFFFFFC00
_08D7B444:
	ldr r2, _08D7B488 @ =0x040000D4
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
_08D7B460:
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	bne _08D7B404
_08D7B46E:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _08D7B48C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D7B490
	movs r0, #0
	b _08D7B498
	.align 2, 0
_08D7B488: .4byte 0x040000D4
_08D7B48C: .4byte 0x04000004
_08D7B490:
	ldrb r1, [r7]
	cmp r2, r1
	bne _08D7B3EE
_08D7B496:
	movs r0, #1
_08D7B498:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7B4A0
sub_08D7B4A0: @ 0x08D7B4A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08D7B500 @ =gUnk_03001E30
	mov r8, r0
	ldr r1, _08D7B504 @ =gUnk_03002570
	mov ip, r1
	ldr r2, _08D7B508 @ =gUnk_03002630
	mov sb, r2
	ldr r0, _08D7B50C @ =gUnk_03002938
	ldr r6, _08D7B510 @ =gUnk_03001E20
	ldrh r3, [r6]
	strh r3, [r0]
	ldr r0, _08D7B514 @ =0x04000130
	ldrh r0, [r0]
	ldr r7, _08D7B518 @ =0x000003FF
	adds r1, r7, #0
	bics r1, r0
	strh r1, [r6]
	ldr r0, _08D7B51C @ =gUnk_03001410
	strh r1, [r0]
	ldr r4, _08D7B520 @ =gUnk_0300298C
	adds r0, r1, #0
	eors r0, r3
	adds r2, r0, #0
	ands r2, r1
	strh r2, [r4]
	ldr r1, _08D7B524 @ =gUnk_0300257C
	ands r0, r3
	strh r0, [r1]
	ldr r5, _08D7B528 @ =gUnk_03001E48
	strh r2, [r5]
	movs r1, #0
_08D7B4E4:
	ldrh r0, [r6]
	lsls r4, r1, #0x18
	asrs r2, r4, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	mov r7, r8
	adds r3, r7, r2
	cmp r0, #0
	bne _08D7B52C
	mov r1, ip
	adds r0, r1, r2
	b _08D7B544
	.align 2, 0
_08D7B500: .4byte gUnk_03001E30
_08D7B504: .4byte gUnk_03002570
_08D7B508: .4byte gUnk_03002630
_08D7B50C: .4byte gUnk_03002938
_08D7B510: .4byte gUnk_03001E20
_08D7B514: .4byte 0x04000130
_08D7B518: .4byte 0x000003FF
_08D7B51C: .4byte gUnk_03001410
_08D7B520: .4byte gUnk_0300298C
_08D7B524: .4byte gUnk_0300257C
_08D7B528: .4byte gUnk_03001E48
_08D7B52C:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08D7B536
	subs r0, #1
	b _08D7B546
_08D7B536:
	adds r0, r1, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r7, sb
	adds r0, r7, r2
_08D7B544:
	ldrb r0, [r0]
_08D7B546:
	strb r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r4, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08D7B4E4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D7B564
sub_08D7B564: @ 0x08D7B564
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08D7B600 @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _08D7B604 @ =gUnk_03001E4C
	str r1, [r0]
	ldr r0, _08D7B608 @ =gUnk_03001E0C
	str r1, [r0]
	ldr r0, _08D7B60C @ =gUnk_03001E28
	str r1, [r0]
	str r1, [sp]
	ldr r1, _08D7B610 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _08D7B614 @ =gUnk_03000980
	str r4, [r1, #4]
	ldr r0, _08D7B618 @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	movs r3, #0
_08D7B590:
	ldr r0, _08D7B61C @ =gUnk_030014F0
	lsls r1, r2, #2
	adds r1, r1, r0
	adds r0, r3, r4
	str r0, [r1]
	adds r3, #0x14
	adds r2, #1
	cmp r2, #0x7f
	ble _08D7B590
	bl sub_08D7B648
	adds r4, r0, #0
	cmp r4, #0
	beq _08D7B63C
	ldr r0, _08D7B620 @ =gUnk_02009B29
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl sub_08D7B648
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08D7B63C
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _08D7B624 @ =gUnk_02009B2D
	str r0, [r4, #8]
	ldr r0, _08D7B628 @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _08D7B62C @ =gUnk_03001490
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _08D7B630 @ =gUnk_03005C38
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _08D7B634 @ =gUnk_030029B0
	strh r5, [r1]
	ldr r0, _08D7B638 @ =0x00002604
	strh r0, [r1, #2]
	movs r0, #1
	b _08D7B63E
	.align 2, 0
_08D7B600: .4byte gUnk_03002560
_08D7B604: .4byte gUnk_03001E4C
_08D7B608: .4byte gUnk_03001E0C
_08D7B60C: .4byte gUnk_03001E28
_08D7B610: .4byte 0x040000D4
_08D7B614: .4byte gUnk_03000980
_08D7B618: .4byte 0x85000080
_08D7B61C: .4byte gUnk_030014F0
_08D7B620: .4byte gUnk_02009B29
_08D7B624: .4byte gUnk_02009B2D
_08D7B628: .4byte 0x0000FFFF
_08D7B62C: .4byte gUnk_03001490
_08D7B630: .4byte gUnk_03005C38
_08D7B634: .4byte gUnk_030029B0
_08D7B638: .4byte 0x00002604
_08D7B63C:
	movs r0, #0
_08D7B63E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7B648
sub_08D7B648: @ 0x08D7B648
	push {lr}
	ldr r3, _08D7B660 @ =gUnk_03001E0C
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _08D7B668
	ldr r1, _08D7B664 @ =gUnk_030014F0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _08D7B66A
	.align 2, 0
_08D7B660: .4byte gUnk_03001E0C
_08D7B664: .4byte gUnk_030014F0
_08D7B668:
	movs r0, #0
_08D7B66A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7B670
sub_08D7B670: @ 0x08D7B670
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
	bl sub_08D7B648
	adds r4, r0, #0
	cmp r4, #0
	bne _08D7B698
	ldr r0, _08D7B694 @ =gUnk_03001490
	b _08D7B708
	.align 2, 0
_08D7B694: .4byte gUnk_03001490
_08D7B698:
	str r7, [r4, #8]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	mov r0, r8
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r6, #0
	bl sub_08D7B924
	strh r0, [r4, #6]
	ldr r0, _08D7B6EC @ =gUnk_03002560
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _08D7B6F0 @ =gUnk_030014F0
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r1
	beq _08D7B706
	ldr r6, _08D7B6F4 @ =gUnk_03001E4C
_08D7B6C4:
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r2, r5
	ldrh r0, [r1, #0x10]
	cmp r0, r8
	bls _08D7B6F8
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
	bne _08D7B706
	str r4, [r6]
	b _08D7B706
	.align 2, 0
_08D7B6EC: .4byte gUnk_03002560
_08D7B6F0: .4byte gUnk_030014F0
_08D7B6F4: .4byte gUnk_03001E4C
_08D7B6F8:
	adds r3, r1, #0
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r5
	bne _08D7B6C4
_08D7B706:
	adds r0, r4, #0
_08D7B708:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7B714
sub_08D7B714: @ 0x08D7B714
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08D7B768 @ =gUnk_030014F0
	ldr r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08D7B77C
_08D7B728:
	ldrh r0, [r1, #0x10]
	cmp r0, r2
	blo _08D7B770
_08D7B72E:
	ldrh r0, [r1, #0x10]
	ldr r2, _08D7B76C @ =gUnk_03001E28
	cmp r0, r4
	bhs _08D7B760
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	str r0, [r2]
	ldr r2, _08D7B768 @ =gUnk_030014F0
	ldr r0, [r2]
	cmp r1, r0
	beq _08D7B754
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _08D7B754
	adds r0, r1, #0
	bl sub_08D7B78C
_08D7B754:
	ldr r2, _08D7B76C @ =gUnk_03001E28
	ldr r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08D7B72E
_08D7B760:
	movs r0, #0
	str r0, [r2]
	b _08D7B782
	.align 2, 0
_08D7B768: .4byte gUnk_030014F0
_08D7B76C: .4byte gUnk_03001E28
_08D7B770:
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r0, r3
	cmp r0, #0
	bne _08D7B728
_08D7B77C:
	ldr r1, _08D7B788 @ =gUnk_03001E28
	movs r0, #0
	str r0, [r1]
_08D7B782:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7B788: .4byte gUnk_03001E28

	thumb_func_start sub_08D7B78C
sub_08D7B78C: @ 0x08D7B78C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D7B82E
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _08D7B82E
	cmp r0, r5
	beq _08D7B82E
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _08D7B7BA
	adds r0, r4, #0
	bl sub_08D7D8C0
_08D7B7BA:
	ldr r1, _08D7B800 @ =gUnk_03001E4C
	ldr r0, [r1]
	cmp r4, r0
	bne _08D7B7C8
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08D7B7C8:
	ldr r1, _08D7B804 @ =gUnk_03001E28
	ldr r0, [r1]
	cmp r4, r0
	bne _08D7B7D6
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08D7B7D6:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _08D7B80E
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r4, #6]
	cmp r0, #0
	beq _08D7B808
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D7B80A
	.align 2, 0
_08D7B800: .4byte gUnk_03001E4C
_08D7B804: .4byte gUnk_03001E28
_08D7B808:
	adds r0, r1, r5
_08D7B80A:
	bl sub_08D7B98C
_08D7B80E:
	ldr r2, _08D7B834 @ =gUnk_030014F0
	ldr r1, _08D7B838 @ =gUnk_03001E0C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	movs r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	ldr r0, _08D7B83C @ =gUnk_02009B31
	str r0, [r4, #8]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #6]
_08D7B82E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7B834: .4byte gUnk_030014F0
_08D7B838: .4byte gUnk_03001E0C
_08D7B83C: .4byte gUnk_02009B31

	thumb_func_start sub_08D7B840
sub_08D7B840: @ 0x08D7B840
	push {r4, r5, r6, lr}
	ldr r1, _08D7B8AC @ =gUnk_03002560
	ldr r0, _08D7B8B0 @ =gUnk_030014F0
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, _08D7B8B4 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08D7B8C4
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08D7B906
_08D7B860:
	ldr r4, _08D7B8B8 @ =gUnk_03001E4C
	ldr r5, _08D7B8AC @ =gUnk_03002560
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
	bne _08D7B880
	ldr r0, [r2, #8]
	bl sub_08D7D8BC
_08D7B880:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08D7B8BC @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _08D7B89C
	ldr r0, _08D7B8C0 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08D7B898
	bl sub_08D792CC
_08D7B898:
	movs r0, #0
	strb r0, [r4]
_08D7B89C:
	ldr r0, _08D7B8AC @ =gUnk_03002560
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08D7B860
	b _08D7B906
	.align 2, 0
_08D7B8AC: .4byte gUnk_03002560
_08D7B8B0: .4byte gUnk_030014F0
_08D7B8B4: .4byte gUnk_030013D0
_08D7B8B8: .4byte gUnk_03001E4C
_08D7B8BC: .4byte gUnk_03005864
_08D7B8C0: .4byte gUnk_030014E8
_08D7B8C4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08D7B906
_08D7B8CC:
	ldr r4, _08D7B918 @ =gUnk_03001E4C
	ldr r5, _08D7B91C @ =gUnk_03002560
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
	bne _08D7B8EC
	ldr r0, [r2, #8]
	bl sub_08D7D8BC
_08D7B8EC:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08D7B920 @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _08D7B900
	bl sub_08D792CC
	movs r0, #0
	strb r0, [r4]
_08D7B900:
	ldr r0, [r5]
	cmp r0, r6
	bne _08D7B8CC
_08D7B906:
	ldr r0, _08D7B91C @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _08D7B918 @ =gUnk_03001E4C
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D7B918: .4byte gUnk_03001E4C
_08D7B91C: .4byte gUnk_03002560
_08D7B920: .4byte gUnk_03005864

	thumb_func_start sub_08D7B924
sub_08D7B924: @ 0x08D7B924
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _08D7B984
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _08D7B970 @ =gUnk_030029B0
_08D7B93E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _08D7B974
	cmp r0, r1
	beq _08D7B966
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _08D7B974
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_08D7B966:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _08D7B986
	.align 2, 0
_08D7B970: .4byte gUnk_030029B0
_08D7B974:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08D7B984
	adds r3, r1, #0
	b _08D7B93E
_08D7B984:
	movs r0, #0
_08D7B986:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08D7B98C
sub_08D7B98C: @ 0x08D7B98C
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r3, _08D7BA04 @ =gUnk_030029B0
	adds r4, r3, #0
	cmp r2, r3
	beq _08D7B9A8
_08D7B99A:
	adds r3, r4, #0
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, r4
	bne _08D7B99A
_08D7B9A8:
	ldrh r1, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08D7B9B6
	rsbs r0, r1, #0
	strh r0, [r2, #2]
_08D7B9B6:
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r0, r3, r0
	cmp r0, r2
	bne _08D7B9D6
	ldrh r1, [r3, #2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _08D7B9D6
	ldrh r0, [r4]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	adds r0, r1, r0
	strh r0, [r3, #2]
	adds r2, r3, #0
_08D7B9D6:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _08D7B9FC
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08D7B9FC
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_08D7B9FC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7BA04: .4byte gUnk_030029B0

	thumb_func_start sub_08D7BA08
sub_08D7BA08: @ 0x08D7BA08
	push {lr}
	movs r2, #0
	ldr r1, _08D7BA2C @ =gUnk_030029B0
_08D7BA0E:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08D7BA18
	subs r2, r2, r0
_08D7BA18:
	ldrh r1, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	bne _08D7BA0E
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08D7BA2C: .4byte gUnk_030029B0

	thumb_func_start sub_08D7BA30
sub_08D7BA30: @ 0x08D7BA30
	push {r4, r5, r6, r7, lr}
	ldr r3, _08D7BA38 @ =gUnk_030029B0
	b _08D7BADE
	.align 2, 0
_08D7BA38: .4byte gUnk_030029B0
_08D7BA3C:
	ldrh r4, [r3, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r2, [r3]
	cmp r0, #0
	blt _08D7BAD8
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldrh r1, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _08D7BA6C
	adds r0, r4, r1
	strh r0, [r3, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _08D7BADE
_08D7BA68:
	strh r7, [r2, #6]
	b _08D7BA9E
_08D7BA6C:
	ldr r4, _08D7BACC @ =gUnk_03000004
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
_08D7BA88:
	ldr r0, _08D7BAD0 @ =gUnk_03000980
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08D7BA68
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0x7f
	ble _08D7BA88
_08D7BA9E:
	ldr r2, _08D7BAD4 @ =0x040000D4
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
	b _08D7BADE
	.align 2, 0
_08D7BACC: .4byte gUnk_03000004
_08D7BAD0: .4byte gUnk_03000980
_08D7BAD4: .4byte 0x040000D4
_08D7BAD8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
_08D7BADE:
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	bne _08D7BA3C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start nullsub_93
nullsub_93: @ 0x08D7BAF0
	bx lr
	.align 2, 0

	thumb_func_start nullsub_94
nullsub_94: @ 0x08D7BAF4
	bx lr
	.align 2, 0

	thumb_func_start nullsub_95
nullsub_95: @ 0x08D7BAF8
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7BAFC
sub_08D7BAFC: @ 0x08D7BAFC
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
	ldr r1, _08D7BB9C @ =gUnk_03001E40
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
	beq _08D7BB88
_08D7BB4E:
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
	bl sub_08D7D898
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
	bne _08D7BB4E
_08D7BB88:
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
_08D7BB9C: .4byte gUnk_03001E40

	thumb_func_start sub_08D7BBA0
sub_08D7BBA0: @ 0x08D7BBA0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
_08D7BBB0:
	ldr r1, _08D7BC50 @ =gUnk_03001E10
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
	bne _08D7BBE0
	mov r1, ip
	adds r0, r5, r1
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08D7BBE0
	b _08D7BD8E
_08D7BBE0:
	mov r0, sl
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _08D7BC54 @ =gUnk_03001E40
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
	bls _08D7BCC0
	ldr r0, _08D7BC58 @ =gUnk_03002620
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08D7BCC0
	add r7, sb
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r6, r0, #0x10
	cmp r2, #0xff
	bne _08D7BC64
	ldr r0, _08D7BC5C @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08D7BC60 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	subs r0, r0, r4
	muls r0, r6, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	b _08D7BD0C
	.align 2, 0
_08D7BC50: .4byte gUnk_03001E10
_08D7BC54: .4byte gUnk_03001E40
_08D7BC58: .4byte gUnk_03002620
_08D7BC5C: .4byte gUnk_03005030
_08D7BC60: .4byte 0x040000D4
_08D7BC64:
	cmp r4, r2
	bls _08D7BC6A
	b _08D7BD74
_08D7BC6A:
	ldr r0, _08D7BCB8 @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08D7BCBC @ =0x040000D4
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
	bls _08D7BC6A
	b _08D7BD74
	.align 2, 0
_08D7BCB8: .4byte gUnk_03005030
_08D7BCBC: .4byte 0x040000D4
_08D7BCC0:
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	movs r6, #0x20
	ldr r0, _08D7BD1C @ =gUnk_03001E40
	add r0, r8
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08D7BCDC
	movs r6, #0x40
_08D7BCDC:
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #3
	cmp r0, #0xff
	bne _08D7BD28
	ldr r0, _08D7BD20 @ =gUnk_03005030
	add r0, sl
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08D7BD24 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r6, r0
	lsls r0, r0, #1
_08D7BD0C:
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08D7BD74
	.align 2, 0
_08D7BD1C: .4byte gUnk_03001E40
_08D7BD20: .4byte gUnk_03005030
_08D7BD24: .4byte 0x040000D4
_08D7BD28:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhi _08D7BD74
	ldr r0, _08D7BDB0 @ =gUnk_03005030
	mov r8, r0
_08D7BD34:
	mov r0, sl
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08D7BDB4 @ =0x040000D4
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
	bls _08D7BD34
_08D7BD74:
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _08D7BDB4 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _08D7BDB8 @ =gUnk_03001E10
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08D7BDBC @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08D7BD8E:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _08D7BD9E
	b _08D7BBB0
_08D7BD9E:
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
_08D7BDB0: .4byte gUnk_03005030
_08D7BDB4: .4byte 0x040000D4
_08D7BDB8: .4byte gUnk_03001E10
_08D7BDBC: .4byte 0x85000001

	thumb_func_start sub_08D7BDC0
sub_08D7BDC0: @ 0x08D7BDC0
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _08D7BDF0 @ =gUnk_0201E90C
	mov r0, sp
	movs r2, #8
	bl sub_08D7DA50
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _08D7BDF4
	movs r0, #1
	rsbs r0, r0, #0
	b _08D7BE66
	.align 2, 0
_08D7BDF0: .4byte gUnk_0201E90C
_08D7BDF4:
	cmp r1, #0
	bgt _08D7BE00
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_08D7BE00:
	cmp r2, #0
	bgt _08D7BE10
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08D7BE10:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _08D7BE28
	lsls r0, r1, #0x17
	cmp r2, #0
	beq _08D7BE3C
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _08D7BE36
_08D7BE28:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	cmp r1, #0
	beq _08D7BE3C
	asrs r0, r0, #0x10
_08D7BE36:
	bl sub_08D7D8F8
	lsls r0, r0, #0x10
_08D7BE3C:
	lsrs r2, r0, #0x10
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D7BE58
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_08D7BE58:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_08D7BE66:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7BE70
sub_08D7BE70: @ 0x08D7BE70
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_08D7BE7A:
	lsrs r0, r1, #0xc
	adds r3, r4, r2
	lsls r1, r1, #0x14
	adds r2, #1
	cmp r0, #9
	bls _08D7BE8A
	adds r0, #0x57
	b _08D7BE8C
_08D7BE8A:
	adds r0, #0x30
_08D7BE8C:
	strb r0, [r3]
	lsrs r1, r1, #0x10
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08D7BE7A
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D7BEA4
sub_08D7BEA4: @ 0x08D7BEA4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r6, #0
_08D7BEAE:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08D7D8A0
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
	bls _08D7BEAE
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7BEE4
sub_08D7BEE4: @ 0x08D7BEE4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _08D7BEF8
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _08D7BF0C
_08D7BEF8:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _08D7BF1C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_08D7BF0C:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08D7BF20
	movs r0, #0
	b _08D7BFC2
	.align 2, 0
_08D7BF1C: .4byte 0xFFFFBFFF
_08D7BF20:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _08D7BF38
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _08D7BFC0
_08D7BF34:
	adds r0, r1, #0
	b _08D7BFC2
_08D7BF38:
	ldr r0, _08D7BF50 @ =gUnk_03002604
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
	b _08D7BF90
	.align 2, 0
_08D7BF50: .4byte gUnk_03002604
_08D7BF54:
	ldr r0, _08D7BFC8 @ =gUnk_0201E914
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08D7D8C4
	adds r1, r0, #0
	cmp r1, #1
	beq _08D7BF90
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08D7BF34
	ldr r0, _08D7BFCC @ =gUnk_03002604
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
_08D7BF90:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r1, [r3]
	cmp r1, #0
	blt _08D7BF54
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
_08D7BFC0:
	movs r0, #1
_08D7BFC2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08D7BFC8: .4byte gUnk_0201E914
_08D7BFCC: .4byte gUnk_03002604

	thumb_func_start sub_08D7BFD0
sub_08D7BFD0: @ 0x08D7BFD0
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
	ldr r0, _08D7C024 @ =gUnk_03002934
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
	ldr r1, _08D7C028 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _08D7C02C @ =gUnk_03002604
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
	blt _08D7C0F4
	b _08D7C0A8
	.align 2, 0
_08D7C024: .4byte gUnk_03002934
_08D7C028: .4byte 0xFFFFBFFF
_08D7C02C: .4byte gUnk_03002604
_08D7C030:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08D7C03A
	mov sb, sl
_08D7C03A:
	ldr r0, _08D7C088 @ =gUnk_0201E914
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08D7D8C4
	adds r2, r0, #0
	ldr r3, _08D7C08C @ =gUnk_03002934
	ldr r0, [sp]
	ldrb r1, [r3]
	cmp r0, r1
	beq _08D7C05E
	strb r0, [r3]
	movs r1, #1
	mov r8, r1
_08D7C05E:
	cmp r2, #1
	beq _08D7C0A8
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08D7C094
	ldr r0, _08D7C090 @ =gUnk_03002604
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
	b _08D7C0A8
	.align 2, 0
_08D7C088: .4byte gUnk_0201E914
_08D7C08C: .4byte gUnk_03002934
_08D7C090: .4byte gUnk_03002604
_08D7C094:
	mov r0, r8
	cmp r0, #0
	beq _08D7C0A4
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
_08D7C0A4:
	adds r0, r2, #0
	b _08D7C108
_08D7C0A8:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r1, [r5]
	cmp r1, #0
	blt _08D7C030
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
	beq _08D7C0D8
	cmp r6, #0
	ble _08D7C0D8
	adds r0, r6, #0
	bl sub_08D7D8A4
	adds r6, r0, #0
	b _08D7C0DC
_08D7C0D8:
	ldr r0, [r5]
	add sl, r0
_08D7C0DC:
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
	bge _08D7C0A8
_08D7C0F4:
	mov r0, r8
	cmp r0, #0
	beq _08D7C106
	ldr r0, _08D7C118 @ =gUnk_03002934
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0x3f
	ands r1, r2
	strb r1, [r0]
_08D7C106:
	movs r0, #1
_08D7C108:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D7C118: .4byte gUnk_03002934

	thumb_func_start sub_08D7C11C
sub_08D7C11C: @ 0x08D7C11C
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
	bne _08D7C19A
	ldr r1, [r2, #4]
	ldr r0, _08D7C150 @ =gUnk_03002604
	ldr r4, [r2, #8]
	ldr r6, _08D7C154 @ =gUnk_03001E50
	ldr r5, _08D7C158 @ =gUnk_03002934
	cmp r1, #0
	bge _08D7C15C
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r2, r0, r1
	lsls r0, r4, #0x16
	b _08D7C166
	.align 2, 0
_08D7C150: .4byte gUnk_03002604
_08D7C154: .4byte gUnk_03001E50
_08D7C158: .4byte gUnk_03002934
_08D7C15C:
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r2, r0, r1
	lsls r0, r4, #0x15
_08D7C166:
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
_08D7C19A:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7C1A4
sub_08D7C1A4: @ 0x08D7C1A4
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
	bne _08D7C1F2
	ldr r1, [r4, #4]
	ldr r2, _08D7C1FC @ =0x040000D4
	ldr r0, _08D7C200 @ =gUnk_03002604
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
	ldr r1, _08D7C204 @ =gUnk_03001BF0
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08D7C208 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08D7C1F2:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08D7C1FC: .4byte 0x040000D4
_08D7C200: .4byte gUnk_03002604
_08D7C204: .4byte gUnk_03001BF0
_08D7C208: .4byte gUnk_030013D0

	thumb_func_start sub_08D7C20C
sub_08D7C20C: @ 0x08D7C20C
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_08D7C218
sub_08D7C218: @ 0x08D7C218
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7C228
sub_08D7C228: @ 0x08D7C228
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl sub_08D792D8
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08D7C23C
sub_08D7C23C: @ 0x08D7C23C
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _08D7C278 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _08D7C27C @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08D7C280
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _08D7C2E4
	.align 2, 0
_08D7C278: .4byte 0x040000D4
_08D7C27C: .4byte 0x84000002
_08D7C280:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08D7C2B4
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
_08D7C2B4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08D7C2E4
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
_08D7C2E4:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08D7C2EC
sub_08D7C2EC: @ 0x08D7C2EC
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

	thumb_func_start sub_08D7C308
sub_08D7C308: @ 0x08D7C308
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7C314
sub_08D7C314: @ 0x08D7C314
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

	thumb_func_start sub_08D7C32C
sub_08D7C32C: @ 0x08D7C32C
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_08D7C334
sub_08D7C334: @ 0x08D7C334
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _08D7C34C @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_08D7C34C: .4byte 0xFFFFCFFF

	thumb_func_start sub_08D7C350
sub_08D7C350: @ 0x08D7C350
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_08D7C360
sub_08D7C360: @ 0x08D7C360
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
	ldr r0, _08D7C418 @ =gUnk_03005046
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl sub_08D7D8A0
	ldr r7, _08D7C41C @ =gUnk_0201DF0C
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
	bl sub_08D7D8A0
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
	bl sub_08D7D8A0
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
	bl sub_08D7D8A0
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
_08D7C418: .4byte gUnk_03005046
_08D7C41C: .4byte gUnk_0201DF0C

	thumb_func_start sub_08D7C420
sub_08D7C420: @ 0x08D7C420
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
	bne _08D7C43C
	b _08D7C6DA
_08D7C43C:
	lsrs r0, r2, #0x1c
	ldr r1, _08D7C4B0 @ =gUnk_03002604
	ldr r3, [sp, #0x24]
	ldrh r5, [r3, #0xc]
	add r4, sp, #0x20
	ldr r3, [r3, #8]
	ldr r6, _08D7C4B4 @ =gUnk_03005046
	mov r8, r6
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x2c]
	ldr r6, _08D7C4B8 @ =gUnk_0201DF0C
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
	bne _08D7C4BC
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r5, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08D7C4CA
	.align 2, 0
_08D7C4B0: .4byte gUnk_03002604
_08D7C4B4: .4byte gUnk_03005046
_08D7C4B8: .4byte gUnk_0201DF0C
_08D7C4BC:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r5, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08D7C4CA:
	movs r0, #0x1f
	ands r3, r0
	strh r3, [r4]
	ldrh r4, [r4]
	lsls r4, r4, #5
	add r4, r8
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r1, _08D7C650 @ =0x000003FF
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
	bl sub_08D7D8A0
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
	bl sub_08D7D8A0
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
	bl sub_08D7D8A0
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
	bl sub_08D7D8A0
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
	bge _08D7C5A8
	rsbs r0, r0, #0
	mov r1, sl
	strh r0, [r1]
_08D7C5A8:
	mov r2, sb
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08D7C5BA
	rsbs r0, r4, #0
	mov r6, r8
	strh r0, [r6]
_08D7C5BA:
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
	ble _08D7C654
	ldrh r5, [r7, #8]
	b _08D7C65E
	.align 2, 0
_08D7C650: .4byte 0x000003FF
_08D7C654:
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08D7C65E:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _08D7C668
	ldrh r4, [r7, #0xa]
	b _08D7C672
_08D7C668:
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08D7C672:
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
_08D7C6DA:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D7C6EC
sub_08D7C6EC: @ 0x08D7C6EC
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
	bne _08D7C718
	b _08D7CB78
_08D7C718:
	lsrs r0, r2, #0x1c
	ldr r1, _08D7C738 @ =gUnk_03002604
	ldrh r3, [r6, #0xc]
	ldr r4, [r6, #8]
	cmp r0, #0
	bne _08D7C73C
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08D7C74A
	.align 2, 0
_08D7C738: .4byte gUnk_03002604
_08D7C73C:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08D7C74A:
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
	beq _08D7C77C
	ldr r0, _08D7C7DC @ =gUnk_03001384
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
_08D7C77C:
	ldrh r3, [r7, #4]
	str r3, [sp, #8]
	ldrh r5, [r7, #6]
	str r5, [sp, #0xc]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08D7C7E0
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
	beq _08D7C84C
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
	b _08D7C84C
	.align 2, 0
_08D7C7DC: .4byte gUnk_03001384
_08D7C7E0:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08D7C7FA
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	ldr r5, [sp, #0xc]
	subs r0, r5, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	b _08D7C804
_08D7C7FA:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	mov r5, r8
	subs r5, r5, r0
	mov r8, r5
_08D7C804:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08D7C81E
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, [sp, #8]
	subs r0, r3, r0
	mov r5, sb
	subs r5, r5, r0
	mov sb, r5
	b _08D7C828
_08D7C81E:
	movs r1, #8
	ldrsh r0, [r7, r1]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
_08D7C828:
	lsrs r0, r2, #0xb
	movs r4, #1
	ands r0, r4
	ldrh r1, [r7]
	lsls r3, r1, #0x10
	lsrs r1, r3, #0x1f
	cmp r0, r1
	beq _08D7C83C
	movs r5, #1
	str r5, [sp, #0x24]
_08D7C83C:
	lsrs r1, r2, #0xa
	lsrs r0, r3, #0x1e
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08D7C84C
	movs r0, #1
	str r0, [sp, #0x28]
_08D7C84C:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08D7C876
	adds r0, r1, #0
	add r0, sb
	cmp r0, #0
	bge _08D7C85C
	b _08D7CB78
_08D7C85C:
	mov r2, sb
	cmp r2, #0xf0
	ble _08D7C864
	b _08D7CB78
_08D7C864:
	ldr r0, [sp, #0xc]
	add r0, r8
	cmp r0, #0
	bge _08D7C86E
	b _08D7CB78
_08D7C86E:
	mov r3, r8
	cmp r3, #0xa0
	ble _08D7C876
	b _08D7CB78
_08D7C876:
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
	ldr r0, _08D7CA80 @ =gUnk_03002604
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _08D7CA84 @ =gUnk_03001480
	ldrb r0, [r0]
	strb r0, [r6, #0x1d]
	movs r5, #0
	str r5, [sp, #0x10]
	ldrh r0, [r7, #2]
	cmp r5, r0
	blo _08D7C8C0
	b _08D7CA3E
_08D7C8C0:
	ldr r2, _08D7CA88 @ =0x040000D4
	ldrh r0, [r7]
	ldr r3, _08D7CA8C @ =0x00003FFF
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
	ldr r0, _08D7CA90 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sp
	ldrh r5, [r0, #2]
	ldr r1, _08D7CA94 @ =0x000001FF
	adds r0, r1, #0
	adds r4, r0, #0
	ands r4, r5
	cmp r4, #0xff
	ble _08D7C8F8
	ldr r2, _08D7CA98 @ =0xFFFFFE00
	adds r4, r4, r2
_08D7C8F8:
	mov r0, sp
	ldrb r3, [r0]
	cmp r3, #0x7f
	ble _08D7C904
	ldr r0, _08D7CA9C @ =0xFFFFFF00
	adds r3, r3, r0
_08D7C904:
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
	ldr r2, _08D7CAA0 @ =gUnk_0201E944
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
	beq _08D7C97C
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08D7C95E
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
_08D7C95E:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _08D7C97C
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
_08D7C97C:
	add r3, r8
	mov r5, ip
	adds r0, r3, r5
	cmp r0, #0
	blt _08D7CA2C
	cmp r3, #0xa0
	bgt _08D7CA2C
	add r4, sb
	mov r1, sl
	adds r0, r4, r1
	cmp r0, #0
	blt _08D7CA2C
	cmp r4, #0xf0
	bgt _08D7CA2C
	mov r2, sp
	mov r1, sp
	movs r0, #0xff
	ands r3, r0
	ldrh r1, [r1]
	adds r0, r3, r1
	strh r0, [r2]
	mov r1, sp
	ldr r3, _08D7CA94 @ =0x000001FF
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
	beq _08D7C9F0
	ldr r0, _08D7CAA4 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r2, #4]
_08D7C9F0:
	mov r2, sp
	mov r1, sp
	ldr r0, [r6]
	ldr r3, _08D7CAA8 @ =0xF9FF0000
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
	bl sub_08D7CB90
	adds r1, r0, #0
	ldr r0, _08D7CAAC @ =gUnk_03005C38
	ldr r0, [r0]
	cmp r0, r1
	bne _08D7CA1E
	b _08D7CB78
_08D7CA1E:
	ldr r0, _08D7CA88 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _08D7CA90 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08D7CA2C:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r3, [r7, #2]
	cmp r0, r3
	bhs _08D7CA3E
	b _08D7C8C0
_08D7CA3E:
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08D7CA48
	b _08D7CB78
_08D7CA48:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _08D7CA56
	b _08D7CB78
_08D7CA56:
	ldr r0, _08D7CAB0 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	ldr r0, [r7, #0xc]
	ldr r1, _08D7CAB4 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, _08D7CA80 @ =gUnk_03002604
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r3, r0, r1
	ldr r0, [r3]
	cmp r0, #0
	blt _08D7CAB8
	movs r5, #0x20
	mov sb, r5
	ldr r2, [r2, #0x10]
	b _08D7CABE
	.align 2, 0
_08D7CA80: .4byte gUnk_03002604
_08D7CA84: .4byte gUnk_03001480
_08D7CA88: .4byte 0x040000D4
_08D7CA8C: .4byte 0x00003FFF
_08D7CA90: .4byte 0x80000003
_08D7CA94: .4byte 0x000001FF
_08D7CA98: .4byte 0xFFFFFE00
_08D7CA9C: .4byte 0xFFFFFF00
_08D7CAA0: .4byte gUnk_0201E944
_08D7CAA4: .4byte 0x000003FF
_08D7CAA8: .4byte 0xF9FF0000
_08D7CAAC: .4byte gUnk_03005C38
_08D7CAB0: .4byte 0xFBFFFFFF
_08D7CAB4: .4byte 0x00FFFFFF
_08D7CAB8:
	movs r1, #0x40
	mov sb, r1
	ldr r2, [r2, #0x14]
_08D7CABE:
	mov r4, sb
	muls r0, r4, r0
	adds r5, r2, r0
	adds r3, #4
	ldr r6, [r6]
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r8, r1
	bhs _08D7CB44
	ldr r0, _08D7CAF4 @ =gUnk_03001E50
	mov ip, r0
	ldr r7, _08D7CAF8 @ =gUnk_03002934
_08D7CAD8:
	ldm r3!, {r0}
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r2
	mov sl, r0
	adds r0, r5, r4
	cmp r0, sl
	bne _08D7CAFC
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08D7CB34
	.align 2, 0
_08D7CAF4: .4byte gUnk_03001E50
_08D7CAF8: .4byte gUnk_03002934
_08D7CAFC:
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
_08D7CB34:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [sp, #0x2c]
	cmp r8, r0
	blo _08D7CAD8
_08D7CB44:
	ldr r3, _08D7CB88 @ =gUnk_03001E50
	ldr r2, _08D7CB8C @ =gUnk_03002934
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
_08D7CB78:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7CB88: .4byte gUnk_03001E50
_08D7CB8C: .4byte gUnk_03002934

	thumb_func_start sub_08D7CB90
sub_08D7CB90: @ 0x08D7CB90
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _08D7CB9C
	movs r2, #0x1f
_08D7CB9C:
	ldr r3, _08D7CBAC @ =gUnk_03001480
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08D7CBB4
	ldr r0, _08D7CBB0 @ =gUnk_03005C38
	ldr r0, [r0]
	b _08D7CC0C
	.align 2, 0
_08D7CBAC: .4byte gUnk_03001480
_08D7CBB0: .4byte gUnk_03005C38
_08D7CBB4:
	ldr r0, _08D7CBDC @ =gUnk_030013E0
	adds r5, r2, r0
	ldrb r0, [r5]
	ldr r4, _08D7CBE0 @ =gUnk_03002150
	ldrb r1, [r3]
	ldr r6, _08D7CBE4 @ =gUnk_03005010
	adds r7, r4, #0
	subs r7, #8
	cmp r0, #0xff
	bne _08D7CBE8
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r3]
	strb r0, [r5]
	adds r1, r2, r6
	ldrb r0, [r3]
	strb r0, [r1]
	b _08D7CC00
	.align 2, 0
_08D7CBDC: .4byte gUnk_030013E0
_08D7CBE0: .4byte gUnk_03002150
_08D7CBE4: .4byte gUnk_03005010
_08D7CBE8:
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
_08D7CC00:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r7
_08D7CC0C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7CC14
sub_08D7CC14: @ 0x08D7CC14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r6, _08D7CCC0 @ =gUnk_03005040
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r4, #0
_08D7CC2A:
	ldr r1, _08D7CCC4 @ =gUnk_030013E0
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
	beq _08D7CC76
	ldr r0, _08D7CCC8 @ =gUnk_03002150
	mov sb, r0
	ldr r1, _08D7CCCC @ =gUnk_03002580
	mov ip, r1
_08D7CC4A:
	ldr r1, _08D7CCD0 @ =0x040000D4
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	add r3, sb
	str r3, [r1]
	str r5, [r1, #4]
	ldr r0, _08D7CCD4 @ =0x80000003
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
	bne _08D7CC4A
_08D7CC76:
	adds r4, #1
	cmp r4, #0x1f
	ble _08D7CC2A
	ldr r7, _08D7CCD8 @ =gUnk_030013D0
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	ldr r1, _08D7CCDC @ =gUnk_03001480
	cmp r0, #0
	beq _08D7CCE8
	ldrb r4, [r1]
	lsls r0, r4, #3
	ldr r2, _08D7CCC0 @ =gUnk_03005040
	adds r5, r0, r2
	ldr r2, _08D7CCE0 @ =gUnk_03002990
	ldrb r3, [r2]
	cmp r4, r3
	bge _08D7CD68
_08D7CC9C:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08D7CCD0 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08D7CCE4 @ =0x81000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r5, #8
	adds r4, #1
	ldrb r0, [r2]
	cmp r4, r0
	blt _08D7CC9C
	b _08D7CD68
	.align 2, 0
_08D7CCC0: .4byte gUnk_03005040
_08D7CCC4: .4byte gUnk_030013E0
_08D7CCC8: .4byte gUnk_03002150
_08D7CCCC: .4byte gUnk_03002580
_08D7CCD0: .4byte 0x040000D4
_08D7CCD4: .4byte 0x80000003
_08D7CCD8: .4byte gUnk_030013D0
_08D7CCDC: .4byte gUnk_03001480
_08D7CCE0: .4byte gUnk_03002990
_08D7CCE4: .4byte 0x81000003
_08D7CCE8:
	movs r2, #0x80
	lsls r2, r2, #3
	ands r2, r3
	cmp r2, #0
	beq _08D7CD64
	adds r5, r1, #0
	ldrb r0, [r5]
	subs r4, r0, #1
	movs r2, #0x7f
	cmp r4, #0
	blt _08D7CD1A
_08D7CCFE:
	ldr r1, _08D7CD50 @ =0x040000D4
	lsls r0, r4, #3
	adds r0, r0, r6
	str r0, [r1]
	lsls r0, r2, #3
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08D7CD54 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r4, #1
	subs r2, #1
	cmp r4, #0
	bge _08D7CCFE
_08D7CD1A:
	ldr r3, _08D7CD58 @ =gUnk_03002990
	ldrb r1, [r5]
	movs r0, #0x80
	subs r0, r0, r1
	strb r0, [r3]
	movs r4, #0
	cmp r4, r0
	bge _08D7CD68
_08D7CD2A:
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08D7CD50 @ =0x040000D4
	str r1, [r2]
	lsls r0, r4, #3
	ldr r1, _08D7CD5C @ =gUnk_03005040
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08D7CD60 @ =0x81000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blt _08D7CD2A
	b _08D7CD68
	.align 2, 0
_08D7CD50: .4byte 0x040000D4
_08D7CD54: .4byte 0x80000003
_08D7CD58: .4byte gUnk_03002990
_08D7CD5C: .4byte gUnk_03005040
_08D7CD60: .4byte 0x81000003
_08D7CD64:
	ldr r0, _08D7CD9C @ =gUnk_03002990
	strb r2, [r0]
_08D7CD68:
	ldr r1, _08D7CDA0 @ =gUnk_03001480
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	add r6, sp, #8
	cmp r0, #0
	beq _08D7CDAC
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _08D7CDA4 @ =0x05000008
	mov r1, sl
	adds r2, r5, #0
	bl sub_08D7D89C
	str r4, [sp, #8]
	ldr r1, _08D7CDA8 @ =gUnk_03005010
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08D7D89C
	b _08D7CDCC
	.align 2, 0
_08D7CD9C: .4byte gUnk_03002990
_08D7CDA0: .4byte gUnk_03001480
_08D7CDA4: .4byte 0x05000008
_08D7CDA8: .4byte gUnk_03005010
_08D7CDAC:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _08D7CDDC @ =0x040000D4
	str r6, [r0]
	mov r2, sl
	str r2, [r0, #4]
	ldr r2, _08D7CDE0 @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	str r6, [r0]
	ldr r1, _08D7CDE4 @ =gUnk_03005010
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08D7CDCC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7CDDC: .4byte 0x040000D4
_08D7CDE0: .4byte 0x85000008
_08D7CDE4: .4byte gUnk_03005010

	thumb_func_start nullsub_13
nullsub_13: @ 0x08D7CDE8
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7CDEC
sub_08D7CDEC: @ 0x08D7CDEC
	ldr r0, _08D7CDF4 @ =gUnk_03005C38
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08D7CDF4: .4byte gUnk_03005C38

	thumb_func_start nullsub_96
nullsub_96: @ 0x08D7CDF8
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7CDFC
sub_08D7CDFC: @ 0x08D7CDFC
	movs r0, #0
	bx lr

	thumb_func_start sub_08D7CE00
sub_08D7CE00: @ 0x08D7CE00
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _08D7CEBC @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08D7CEC0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7CEC4 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08D7CEC8 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08D7CECC @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _08D7CED0 @ =gUnk_030059F0
	ldr r2, _08D7CED4 @ =0x0500007A
	mov r0, sp
	adds r1, r4, #0
	bl sub_08D7D89C
	ldr r0, _08D7CED8 @ =gUnk_0200B770
	ldr r1, _08D7CEDC @ =gUnk_03005BE0
	ldr r2, _08D7CEE0 @ =0x04000010
	bl sub_08D7D89C
	ldr r0, _08D7CEE4 @ =gUnk_0200B7B0
	ldr r1, _08D7CEE8 @ =gUnk_03005870
	ldr r2, _08D7CEEC @ =0x04000060
	bl sub_08D7D89C
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
_08D7CE68:
	ldr r4, _08D7CED0 @ =gUnk_030059F0
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
	ble _08D7CE68
	ldr r3, _08D7CEBC @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08D7CEC0 @ =0x04000200
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
_08D7CEBC: .4byte 0x04000208
_08D7CEC0: .4byte 0x04000200
_08D7CEC4: .4byte 0x0000FF3F
_08D7CEC8: .4byte 0x04000134
_08D7CECC: .4byte 0x00004003
_08D7CED0: .4byte gUnk_030059F0
_08D7CED4: .4byte 0x0500007A
_08D7CED8: .4byte gUnk_0200B770
_08D7CEDC: .4byte gUnk_03005BE0
_08D7CEE0: .4byte 0x04000010
_08D7CEE4: .4byte gUnk_0200B7B0
_08D7CEE8: .4byte gUnk_03005870
_08D7CEEC: .4byte 0x04000060

	thumb_func_start sub_08D7CEF0
sub_08D7CEF0: @ 0x08D7CEF0
	push {lr}
	ldr r2, _08D7CF08 @ =gUnk_030059F0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08D7CF02
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_08D7CF02:
	pop {r0}
	bx r0
	.align 2, 0
_08D7CF08: .4byte gUnk_030059F0

	thumb_func_start sub_08D7CF0C
sub_08D7CF0C: @ 0x08D7CF0C
	ldr r3, _08D7CF40 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08D7CF44 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7CF48 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08D7CF4C @ =0x04000128
	ldr r2, _08D7CF50 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08D7CF54 @ =0x0000BBBC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _08D7CF58 @ =gUnk_030059F0
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_08D7CF40: .4byte 0x04000208
_08D7CF44: .4byte 0x04000200
_08D7CF48: .4byte 0x0000FF3F
_08D7CF4C: .4byte 0x04000128
_08D7CF50: .4byte 0x00002003
_08D7CF54: .4byte 0x0000BBBC
_08D7CF58: .4byte gUnk_030059F0

	thumb_func_start sub_08D7CF5C
sub_08D7CF5C: @ 0x08D7CF5C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	mov ip, r1
	mov r8, r2
	ldr r5, _08D7CF80 @ =0x04000128
	ldr r7, [r5]
	ldr r6, _08D7CF84 @ =gUnk_030059F0
	ldrb r0, [r6, #1]
	cmp r0, #1
	beq _08D7CFF8
	cmp r0, #1
	bgt _08D7CF88
	cmp r0, #0
	beq _08D7CF8E
	b _08D7D042
	.align 2, 0
_08D7CF80: .4byte 0x04000128
_08D7CF84: .4byte gUnk_030059F0
_08D7CF88:
	cmp r0, #2
	beq _08D7D034
	b _08D7D042
_08D7CF8E:
	movs r1, #0x30
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	bne _08D7CFF4
	movs r0, #0x88
	adds r4, r7, #0
	ands r4, r0
	cmp r4, #8
	bne _08D7D042
	movs r1, #4
	adds r0, r7, #0
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0
	bne _08D7CFF4
	ldr r1, [r6, #0x14]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08D7CFF4
	ldr r3, _08D7D018 @ =0x04000208
	strh r2, [r3]
	ldr r2, _08D7D01C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7D020 @ =0x0000FF7F
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
	ldr r1, _08D7D024 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	subs r1, #0xf6
	ldr r0, _08D7D028 @ =0x0000BBBC
	str r0, [r1]
	strb r4, [r6]
	ldrb r0, [r5]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r5]
_08D7CFF4:
	movs r0, #1
	strb r0, [r6, #1]
_08D7CFF8:
	ldr r2, _08D7D02C @ =gUnk_030059F0
	ldrb r0, [r2, #2]
	cmp r0, #0
	beq _08D7D034
	ldrb r1, [r2, #8]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	bne _08D7D034
	ldrb r0, [r2, #0xa]
	cmp r0, #7
	bhi _08D7D030
	adds r0, #1
	strb r0, [r2, #0xa]
	b _08D7D034
	.align 2, 0
_08D7D018: .4byte 0x04000208
_08D7D01C: .4byte 0x04000200
_08D7D020: .4byte 0x0000FF7F
_08D7D024: .4byte 0x04000202
_08D7D028: .4byte 0x0000BBBC
_08D7D02C: .4byte gUnk_030059F0
_08D7D030:
	movs r0, #2
	strb r0, [r2, #1]
_08D7D034:
	mov r0, ip
	bl sub_08D7D184
	mov r0, sb
	mov r1, r8
	bl sub_08D7D0B4
_08D7D042:
	ldr r3, _08D7D074 @ =gUnk_030059F0
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
	bne _08D7D078
	movs r0, #0x80
	orrs r0, r1
	orrs r0, r2
	b _08D7D07C
	.align 2, 0
_08D7D074: .4byte gUnk_030059F0
_08D7D078:
	adds r0, r2, #0
	orrs r0, r1
_08D7D07C:
	adds r1, r0, #0
	ldrb r0, [r3, #9]
	cmp r0, #0
	beq _08D7D08A
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
_08D7D08A:
	ldrb r0, [r3, #0xa]
	lsrs r0, r0, #3
	lsls r2, r0, #0xf
	lsls r0, r7, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, #3
	bls _08D7D0A2
	movs r0, #0x80
	lsls r0, r0, #6
	orrs r0, r2
	orrs r0, r1
	b _08D7D0A6
_08D7D0A2:
	adds r0, r1, #0
	orrs r0, r2
_08D7D0A6:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D7D0B4
sub_08D7D0B4: @ 0x08D7D0B4
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	ldr r5, _08D7D174 @ =gUnk_030059F0
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
	ldr r1, _08D7D178 @ =gUnk_03005C20
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
	ldr r2, _08D7D17C @ =0x04000005
	bl sub_08D7D89C
	movs r1, #0
_08D7D12E:
	ldr r3, _08D7D174 @ =gUnk_030059F0
	ldr r2, [r3, #0x28]
	lsls r0, r1, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	adds r7, r7, r0
	adds r1, #1
	cmp r1, #0xb
	bls _08D7D12E
	mvns r0, r7
	subs r0, #0xe
	strh r0, [r2, #2]
	ldrb r2, [r3]
	cmp r2, #0
	beq _08D7D152
	ldr r1, _08D7D180 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
_08D7D152:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r3, #0x14]
	cmp r2, #0
	beq _08D7D16C
	ldrb r1, [r3, #8]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08D7D16C
	ldr r1, _08D7D180 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08D7D16C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D174: .4byte gUnk_030059F0
_08D7D178: .4byte gUnk_03005C20
_08D7D17C: .4byte 0x04000005
_08D7D180: .4byte 0x0400010E

	thumb_func_start sub_08D7D184
sub_08D7D184: @ 0x08D7D184
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r5, r0, #0
	ldr r0, _08D7D28C @ =gUnk_03005BE0
	movs r4, #0
	str r4, [sp]
	bl sub_08D7D8BC
	str r0, [sp, #4]
	ldr r1, _08D7D290 @ =gUnk_030059F0
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
_08D7D1B0:
	movs r3, #0
	movs r2, #0
_08D7D1B4:
	ldr r5, _08D7D290 @ =gUnk_030059F0
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
	bls _08D7D1B4
	add r0, sp, #4
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	beq _08D7D218
	lsls r1, r3, #0x10
	ldr r0, _08D7D294 @ =0xFFF10000
	cmp r1, r0
	bne _08D7D218
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
	ldr r2, _08D7D298 @ =0x04000005
	bl sub_08D7D89C
_08D7D218:
	movs r0, #0
	str r0, [sp, #8]
	ldr r5, _08D7D290 @ =gUnk_030059F0
	adds r0, r5, #0
	adds r0, #0x50
	add r0, r8
	ldr r1, [r0]
	adds r1, #4
	add r0, sp, #8
	ldr r2, _08D7D29C @ =0x05000005
	bl sub_08D7D89C
	movs r0, #4
	add r8, r0
	adds r6, #0x14
	adds r7, #1
	cmp r7, #3
	ble _08D7D1B0
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
	beq _08D7D2D0
	ldrb r0, [r4]
	cmp r0, #8
	bne _08D7D2A0
	movs r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08D7D270
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x18
	cmp r0, r3
	bne _08D7D270
	ldrb r0, [r4, #8]
	movs r1, #0x10
	orrs r0, r1
	strb r0, [r4, #8]
_08D7D270:
	ldrb r5, [r4, #8]
	lsls r2, r5, #0x1c
	lsrs r2, r2, #0x1c
	movs r0, #0xe
	ldrb r3, [r4, #2]
	adds r1, r0, #0
	ands r1, r2
	ands r0, r3
	cmp r1, r0
	bne _08D7D2B8
	movs r0, #0x40
	orrs r0, r5
	strb r0, [r4, #8]
	b _08D7D2B8
	.align 2, 0
_08D7D28C: .4byte gUnk_03005BE0
_08D7D290: .4byte gUnk_030059F0
_08D7D294: .4byte 0xFFF10000
_08D7D298: .4byte 0x04000005
_08D7D29C: .4byte 0x05000005
_08D7D2A0:
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
_08D7D2B8:
	ldr r3, _08D7D2E0 @ =gUnk_030059F0
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
_08D7D2D0:
	ldr r0, _08D7D2E0 @ =gUnk_030059F0
	ldrb r0, [r0, #3]
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D7D2E0: .4byte gUnk_030059F0

	thumb_func_start sub_08D7D2E4
sub_08D7D2E4: @ 0x08D7D2E4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	adds r7, r1, #0
	movs r6, #0
	ldr r3, _08D7D360 @ =0x04000208
	strh r6, [r3]
	ldr r2, _08D7D364 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7D368 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r4, #1
	strh r4, [r3]
	str r6, [sp]
	ldr r5, _08D7D36C @ =gUnk_03005C20
	ldr r2, _08D7D370 @ =0x05000006
	mov r0, sp
	adds r1, r5, #0
	bl sub_08D7D89C
	ldr r1, _08D7D374 @ =0x04000128
	ldr r0, _08D7D378 @ =0x00002003
	str r0, [r1]
	str r7, [r5, #4]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #8]
	mov r0, r8
	cmp r0, #0
	beq _08D7D352
	ldr r0, _08D7D37C @ =0x0400010C
	str r6, [r0]
	strb r4, [r5]
	adds r1, r7, #0
	movs r2, #0x80
	lsls r2, r2, #6
_08D7D332:
	ldm r1!, {r0}
	adds r6, r6, r0
	subs r2, #1
	cmp r2, #0
	bne _08D7D332
	ldr r1, _08D7D36C @ =gUnk_03005C20
	mvns r0, r6
	str r0, [r1, #0xc]
	ldr r1, _08D7D374 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #1
	adds r0, r2, #0
	strh r0, [r1]
_08D7D352:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D360: .4byte 0x04000208
_08D7D364: .4byte 0x04000200
_08D7D368: .4byte 0x0000FF3F
_08D7D36C: .4byte gUnk_03005C20
_08D7D370: .4byte 0x05000006
_08D7D374: .4byte 0x04000128
_08D7D378: .4byte 0x00002003
_08D7D37C: .4byte 0x0400010C

	thumb_func_start sub_08D7D380
sub_08D7D380: @ 0x08D7D380
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r5, _08D7D398 @ =gUnk_03005C20
	ldrb r0, [r5, #1]
	cmp r0, #4
	bls _08D7D38E
	b _08D7D55A
_08D7D38E:
	lsls r0, r0, #2
	ldr r1, _08D7D39C @ =gUnk_0200B3D8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08D7D398: .4byte gUnk_03005C20
_08D7D39C: .4byte gUnk_0200B3D8
_08D7D3A0: @ jump table
	.4byte 0x0200B3EC @ case 0
	.4byte 0x0200B404 @ case 1
	.4byte 0x0200B4A0 @ case 2
	.4byte 0x0200B51C @ case 3
	.4byte 0x0200B588 @ case 4
_08D7D3B4:
	ldr r0, [r5]
	ldr r1, _08D7D3C8 @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08D7D3C0
	b _08D7D55A
_08D7D3C0:
	movs r0, #1
	strb r0, [r5, #1]
	b _08D7D55A
	.align 2, 0
_08D7D3C8: .4byte 0x00FF00FF
_08D7D3CC:
	ldrb r0, [r5]
	cmp r0, #1
	bne _08D7D3DC
	ldrb r0, [r5, #2]
	cmp r0, #5
	bhi _08D7D3DA
	b _08D7D55A
_08D7D3DA:
	b _08D7D3E6
_08D7D3DC:
	ldr r1, _08D7D41C @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
_08D7D3E6:
	ldr r0, _08D7D420 @ =0x04000120
	movs r6, #0
	str r6, [r0]
	ldr r1, _08D7D424 @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	ldrb r4, [r5]
	cmp r4, #1
	bne _08D7D434
	ldr r2, _08D7D41C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08D7D428 @ =0x0400010C
	ldr r0, _08D7D42C @ =0x00C0F318
	str r0, [r1]
	ldr r3, _08D7D430 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strh r0, [r2]
	strh r4, [r3]
	b _08D7D454
	.align 2, 0
_08D7D41C: .4byte 0x04000128
_08D7D420: .4byte 0x04000120
_08D7D424: .4byte 0x04000202
_08D7D428: .4byte 0x0400010C
_08D7D42C: .4byte 0x00C0F318
_08D7D430: .4byte 0x04000208
_08D7D434:
	ldr r2, _08D7D460 @ =0x04000128
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08D7D464 @ =0x04000208
	strh r6, [r3]
	adds r2, #0xd8
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
_08D7D454:
	movs r0, #0
	strb r0, [r5, #2]
	movs r0, #2
	strb r0, [r5, #1]
	b _08D7D55A
	.align 2, 0
_08D7D460: .4byte 0x04000128
_08D7D464: .4byte 0x04000208
_08D7D468:
	ldr r6, [r5, #8]
	adds r3, r6, #0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08D7D478
	adds r3, r0, #0
	b _08D7D47E
_08D7D478:
	cmp r6, #0
	bge _08D7D47E
	movs r3, #0
_08D7D47E:
	cmp r2, #0
	beq _08D7D484
	str r3, [r2]
_08D7D484:
	adds r4, r5, #0
	ldrb r0, [r5]
	cmp r0, #1
	beq _08D7D4C6
	ldr r0, [r5, #0x14]
	cmp r0, r3
	bge _08D7D4AA
_08D7D492:
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
	blt _08D7D492
_08D7D4AA:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	ble _08D7D4CE
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	adds r0, r0, r1
	str r0, [r5, #0xc]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _08D7D4C6
	movs r0, #1
	strb r0, [r5, #3]
_08D7D4C6:
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r6, r0
	bgt _08D7D4D6
_08D7D4CE:
	ldr r0, _08D7D4E0 @ =gUnk_03005C20
	ldrb r0, [r0, #2]
	cmp r0, #0x8c
	bne _08D7D55A
_08D7D4D6:
	ldr r1, _08D7D4E0 @ =gUnk_03005C20
	movs r0, #3
	strb r0, [r1, #1]
	b _08D7D55A
	.align 2, 0
_08D7D4E0: .4byte gUnk_03005C20
_08D7D4E4:
	ldr r3, _08D7D534 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08D7D538 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7D53C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08D7D540 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1]
	adds r0, #3
	str r0, [r1]
	ldr r2, _08D7D544 @ =0x04000120
	movs r0, #0
	movs r1, #0
	str r0, [r2]
	str r1, [r2, #4]
	ldrb r2, [r5]
	cmp r2, #0
	beq _08D7D522
	ldr r1, _08D7D548 @ =0x0400010C
	movs r0, #0
	str r0, [r1]
_08D7D522:
	ldr r1, _08D7D54C @ =0x04000202
	movs r0, #0xc0
	strh r0, [r1]
	cmp r2, #0
	beq _08D7D556
	strb r4, [r5, #2]
	movs r0, #4
	strb r0, [r5, #1]
	b _08D7D55A
	.align 2, 0
_08D7D534: .4byte 0x04000208
_08D7D538: .4byte 0x04000200
_08D7D53C: .4byte 0x0000FF3F
_08D7D540: .4byte 0x04000128
_08D7D544: .4byte 0x04000120
_08D7D548: .4byte 0x0400010C
_08D7D54C: .4byte 0x04000202
_08D7D550:
	ldrb r0, [r5, #2]
	cmp r0, #2
	bls _08D7D55A
_08D7D556:
	movs r0, #1
	b _08D7D564
_08D7D55A:
	ldr r1, _08D7D56C @ =gUnk_03005C20
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	movs r0, #0
_08D7D564:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08D7D56C: .4byte gUnk_03005C20

	thumb_func_start sub_08D7D570
sub_08D7D570: @ 0x08D7D570
	push {r4, r5, lr}
	ldr r2, _08D7D594 @ =0x04000120
	ldr r4, [r2]
	ldr r5, _08D7D598 @ =gUnk_03005C20
	ldrb r0, [r5]
	ldr r3, [r5, #8]
	cmp r0, #1
	beq _08D7D5A0
	ldr r0, _08D7D59C @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
	adds r1, r3, #0
	cmp r1, #0
	bge _08D7D5E8
	b _08D7D5D6
	.align 2, 0
_08D7D594: .4byte 0x04000120
_08D7D598: .4byte gUnk_03005C20
_08D7D59C: .4byte 0x04000128
_08D7D5A0:
	ldr r1, _08D7D5B0 @ =0x0400010E
	movs r0, #0
	strh r0, [r1]
	cmp r3, #0
	bge _08D7D5B8
	ldr r0, _08D7D5B4 @ =0xFEFEFEFE
	str r0, [r2]
	b _08D7D5FE
	.align 2, 0
_08D7D5B0: .4byte 0x0400010E
_08D7D5B4: .4byte 0xFEFEFEFE
_08D7D5B8:
	ldr r0, _08D7D5CC @ =0x00001FFF
	cmp r3, r0
	bgt _08D7D5D0
	ldr r0, [r5, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r0, [r2]
	b _08D7D5FE
	.align 2, 0
_08D7D5CC: .4byte 0x00001FFF
_08D7D5D0:
	ldr r0, [r5, #0xc]
	str r0, [r2]
	b _08D7D5FE
_08D7D5D6:
	ldr r0, _08D7D5E4 @ =0xFEFEFEFE
	cmp r4, r0
	beq _08D7D5FE
	subs r0, r1, #1
	str r0, [r5, #8]
	b _08D7D5FE
	.align 2, 0
_08D7D5E4: .4byte 0xFEFEFEFE
_08D7D5E8:
	ldr r0, _08D7D5F8 @ =0x00001FFF
	cmp r3, r0
	bgt _08D7D5FC
	ldr r1, [r5, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	str r4, [r0]
	b _08D7D5FE
	.align 2, 0
_08D7D5F8: .4byte 0x00001FFF
_08D7D5FC:
	str r4, [r5, #0xc]
_08D7D5FE:
	ldr r1, [r5, #8]
	ldr r0, _08D7D628 @ =0x00002002
	cmp r1, r0
	bgt _08D7D620
	adds r0, r1, #1
	str r0, [r5, #8]
	ldrb r0, [r5]
	cmp r0, #1
	bne _08D7D620
	ldr r2, _08D7D62C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	ldr r1, _08D7D630 @ =0x0400010E
	movs r0, #0xc0
	strh r0, [r1]
_08D7D620:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D628: .4byte 0x00002002
_08D7D62C: .4byte 0x04000128
_08D7D630: .4byte 0x0400010E

	thumb_func_start sub_08D7D634
sub_08D7D634: @ 0x08D7D634
	push {lr}
	sub sp, #4
	movs r2, #0
	str r2, [sp]
	ldr r0, _08D7D670 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08D7D674 @ =gUnk_03002640
	str r1, [r0, #4]
	ldr r1, _08D7D678 @ =0x85000005
	str r1, [r0, #8]
	ldr r1, [r0, #8]
	str r2, [sp]
	mov r1, sp
	str r1, [r0]
	ldr r1, _08D7D67C @ =gUnk_03001420
	str r1, [r0, #4]
	ldr r1, _08D7D680 @ =0x85000014
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08D7D684 @ =gUnk_030014E4
	str r2, [r0]
	ldr r0, _08D7D688 @ =gUnk_030014E8
	strb r2, [r0]
	movs r0, #0
	bl sub_08D7CE00
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08D7D670: .4byte 0x040000D4
_08D7D674: .4byte gUnk_03002640
_08D7D678: .4byte 0x85000005
_08D7D67C: .4byte gUnk_03001420
_08D7D680: .4byte 0x85000014
_08D7D684: .4byte gUnk_030014E4
_08D7D688: .4byte gUnk_030014E8

	thumb_func_start sub_08D7D68C
sub_08D7D68C: @ 0x08D7D68C
	push {r4, lr}
	ldr r0, _08D7D6CC @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08D7D6C0
	ldr r3, _08D7D6D0 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08D7D6D4 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D7D6D8 @ =0x0000FFBF
	ands r0, r1
	strh r0, [r2]
	movs r2, #1
	strh r2, [r3]
	strh r4, [r3]
	ldr r1, _08D7D6DC @ =gUnk_03000740
	ldr r0, _08D7D6E0 @ =gUnk_03005870
	str r0, [r1]
	strh r2, [r3]
	movs r0, #0
	bl sub_08D7CE00
_08D7D6C0:
	ldr r1, _08D7D6E4 @ =gUnk_030014E8
	movs r0, #1
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D6CC: .4byte gUnk_030013D0
_08D7D6D0: .4byte 0x04000208
_08D7D6D4: .4byte 0x04000200
_08D7D6D8: .4byte 0x0000FFBF
_08D7D6DC: .4byte gUnk_03000740
_08D7D6E0: .4byte gUnk_03005870
_08D7D6E4: .4byte gUnk_030014E8

	thumb_func_start sub_08D7D6E8
sub_08D7D6E8: @ 0x08D7D6E8
	push {r4, lr}
	ldr r1, _08D7D71C @ =gUnk_030014E8
	movs r0, #0
	strb r0, [r1]
	ldr r4, _08D7D720 @ =gUnk_030013D0
	ldr r0, [r4]
	ldr r1, _08D7D724 @ =0xFFEFFFFF
	ands r0, r1
	str r0, [r4]
	bl sub_08D7CF0C
	movs r0, #0
	bl sub_08D7CE00
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0xc
	ands r0, r1
	cmp r0, #0
	beq _08D7D714
	bl nullsub_17
_08D7D714:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D7D71C: .4byte gUnk_030014E8
_08D7D720: .4byte gUnk_030013D0
_08D7D724: .4byte 0xFFEFFFFF

	thumb_func_start nullsub_97
nullsub_97: @ 0x08D7D728
	bx lr
	.align 2, 0

	thumb_func_start nullsub_17
nullsub_17: @ 0x08D7D72C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_98
nullsub_98: @ 0x08D7D730
	bx lr
	.align 2, 0

	thumb_func_start sub_08D7D734
sub_08D7D734: @ 0x08D7D734
	movs r0, #1
	bx lr
