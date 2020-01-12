	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08D9D338
sub_08D9D338: @ 0x08D9D338
	push {lr}
	bl sub_08D9D34C
	bl sub_08D94D68
	bl sub_08D9D87C
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9D34C
sub_08D9D34C: @ 0x08D9D34C
	push {r4, lr}
	sub sp, #8
	ldr r1, _08D9D39C @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _08D9D3A0 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08D9D3A4 @ =gUnk_030013D0
	movs r3, #0
	str r3, [r2]
	ldr r0, _08D9D3A8 @ =gUnk_03002600
	str r3, [r0]
	ldr r1, _08D9D3AC @ =gUnk_03001E24
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _08D9D3B0 @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _08D9D388
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
_08D9D388:
	ldr r0, _08D9D3B4 @ =gUnk_03001E20
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _08D9D3B8
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	b _08D9D3BA
	.align 2, 0
_08D9D39C: .4byte 0x04000208
_08D9D3A0: .4byte 0x00004014
_08D9D3A4: .4byte gUnk_030013D0
_08D9D3A8: .4byte gUnk_03002600
_08D9D3AC: .4byte gUnk_03001E24
_08D9D3B0: .4byte 0x04000134
_08D9D3B4: .4byte gUnk_03001E20
_08D9D3B8:
	str r3, [r2]
_08D9D3BA:
	ldr r1, _08D9D724 @ =gUnk_03002564
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08D9D728 @ =gUnk_03002994
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08D9D72C @ =gUnk_03002720
	strb r1, [r0]
	ldr r0, _08D9D730 @ =gUnk_03005840
	strb r1, [r0]
	ldr r0, _08D9D734 @ =gUnk_03005008
	strb r1, [r0]
	ldr r0, _08D9D738 @ =gUnk_03002934
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08D9D740 @ =gUnk_03001E10
	str r0, [r1, #4]
	ldr r0, _08D9D744 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D3EA:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D3EA
	ldr r1, _08D9D748 @ =gUnk_03005030
	movs r0, #0
	str r0, [r1]
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D9D74C @ =gUnk_03002610
	str r0, [r1, #4]
	ldr r0, _08D9D744 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D408:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D408
	ldr r0, _08D9D750 @ =gUnk_03001384
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _08D9D754 @ =gUnk_03002620
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r2]
	str r1, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08D9D758 @ =gUnk_03001E50
	str r0, [r1, #4]
	ldr r0, _08D9D75C @ =0x850000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D432:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D432
	ldr r0, _08D9D760 @ =gUnk_03001480
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08D9D764 @ =gUnk_03002990
	strb r1, [r0]
	add r2, sp, #4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _08D9D73C @ =0x040000D4
	str r2, [r1]
	ldr r0, _08D9D768 @ =gUnk_03005040
	str r0, [r1, #4]
	ldr r0, _08D9D76C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D45A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D45A
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	ldr r1, _08D9D73C @ =0x040000D4
	str r2, [r1]
	ldr r0, _08D9D770 @ =gUnk_03002150
	str r0, [r1, #4]
	ldr r0, _08D9D76C @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D476:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D476
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08D9D774 @ =gUnk_030013E0
	str r0, [r1, #4]
	ldr r0, _08D9D778 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D492:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D492
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08D9D77C @ =gUnk_03005010
	str r0, [r1, #4]
	ldr r0, _08D9D778 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D4AE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D4AE
	ldr r1, _08D9D73C @ =0x040000D4
	ldr r0, _08D9D780 @ =0x05000200
	str r0, [r1]
	ldr r0, _08D9D784 @ =gUnk_03001BF0
	str r0, [r1, #4]
	ldr r0, _08D9D788 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D4C4:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D4C4
	ldr r1, _08D9D73C @ =0x040000D4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1]
	ldr r0, _08D9D78C @ =gUnk_03002730
	str r0, [r1, #4]
	ldr r0, _08D9D788 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D4DC:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D4DC
	ldr r0, _08D9D790 @ =gUnk_030014B0
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
	ldr r0, _08D9D794 @ =gUnk_030014A4
	strb r3, [r0]
	ldr r0, _08D9D798 @ =gUnk_030014D4
	strh r1, [r0]
	ldr r0, _08D9D79C @ =gUnk_03001380
	strh r2, [r0]
	ldr r0, _08D9D7A0 @ =gUnk_03005844
	strh r2, [r0]
	ldr r0, _08D9D7A4 @ =gUnk_0300293C
	strh r1, [r0]
	ldr r0, _08D9D7A8 @ =gUnk_03005004
	strh r1, [r0]
	ldr r0, _08D9D7AC @ =gUnk_030014DC
	strh r1, [r0]
	ldr r0, _08D9D7B0 @ =gUnk_0300260C
	strh r1, [r0]
	ldr r0, _08D9D7B4 @ =gUnk_03005848
	strh r2, [r0]
	ldr r0, _08D9D7B8 @ =gUnk_03001E00
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _08D9D7BC @ =gUnk_03001478
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08D9D7C0 @ =gUnk_03005868
	str r1, [r0]
_08D9D542:
	ldr r2, _08D9D7C4 @ =gUnk_03002570
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	movs r1, #0x14
	strb r1, [r2]
	ldr r1, _08D9D7C8 @ =gUnk_03002630
	adds r1, r0, r1
	movs r2, #8
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08D9D542
	ldr r1, _08D9D7CC @ =gUnk_03001DF4
	movs r0, #0
	str r0, [r1]
	movs r1, #0
_08D9D56A:
	ldr r3, _08D9D7D0 @ =gUnk_03000740
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r3, r1, r3
	ldr r2, _08D9D7D4 @ =gUnk_0201DE94
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _08D9D56A
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08D9D7D8 @ =gUnk_030016F0
	str r2, [r1, #4]
	ldr r0, _08D9D7DC @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D59C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D59C
	ldr r0, _08D9D7E0 @ =gUnk_03001414
	str r2, [r0]
	ldr r1, _08D9D7E4 @ =gUnk_03001E3C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _08D9D7E8 @ =gUnk_03002658
	movs r1, #0
	str r1, [r0]
	ldr r0, _08D9D7EC @ =gUnk_03002930
	strb r1, [r0]
	ldr r0, _08D9D7F0 @ =gUnk_0300141C
	strb r1, [r0]
	ldr r0, _08D9D7F4 @ =gUnk_03001474
	strb r1, [r0]
	str r1, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D9D7F8 @ =gUnk_03002550
	str r0, [r1, #4]
	ldr r0, _08D9D744 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D5D4:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D5D4
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08D9D7FC @ =gUnk_030029A0
	str r0, [r1, #4]
	ldr r0, _08D9D744 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D5EE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D5EE
	ldr r0, _08D9D800 @ =gUnk_03005000
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08D9D804 @ =gUnk_030014D8
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08D9D808 @ =gUnk_03001400
	str r0, [r1, #4]
	ldr r0, _08D9D744 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D612:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D612
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D9D80C @ =gUnk_03005850
	str r0, [r1, #4]
	ldr r0, _08D9D744 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D62C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D62C
	bl sub_08D9BE44
	ldr r0, _08D9D810 @ =0x0095FA00
	bl sub_08D9C3E0
	bl sub_08D9BEBC
	ldr r1, _08D9D814 @ =gUnk_03005864
	movs r0, #1
	strb r0, [r1]
	bl sub_08D9E154
	ldr r1, _08D9D818 @ =gUnk_03001418
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08D9D81C @ =gUnk_030014D0
	ldr r0, _08D9D820 @ =0x06014000
	str r0, [r1]
	bl nullsub_18
	ldr r2, _08D9D824 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08D9D73C @ =0x040000D4
	ldr r0, _08D9D828 @ =gUnk_020000FC
	str r0, [r1]
	ldr r2, _08D9D82C @ =gUnk_03000780
	str r2, [r1, #4]
	ldr r0, _08D9D788 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D67A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D67A
	ldr r0, _08D9D830 @ =gUnk_03007FFC
	str r2, [r0]
	ldr r2, _08D9D834 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08D9D838 @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _08D9D83C @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _08D9D6AE
	ldr r0, _08D9D840 @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _08D9D844 @ =0x454B3842
	cmp r1, r0
	bne _08D9D6AE
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08D9D6AE:
	ldr r1, _08D9D848 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08D9D84C @ =gUnk_03002640
	str r0, [r1, #4]
	ldr r0, _08D9D850 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D6C8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D6C8
	movs r0, #0
	str r0, [sp]
	ldr r1, _08D9D73C @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08D9D854 @ =gUnk_03001420
	str r0, [r1, #4]
	ldr r0, _08D9D858 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D6E2:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D6E2
	ldr r0, _08D9D85C @ =gUnk_030014E4
	movs r4, #0
	str r4, [r0]
	ldr r0, _08D9D860 @ =gUnk_030014E8
	strb r4, [r0]
	movs r0, #0
	bl sub_08D9F9F0
	ldr r0, _08D9D864 @ =gUnk_0300500C
	strb r4, [r0]
	ldr r0, _08D9D868 @ =gUnk_03001470
	str r4, [r0]
	ldr r0, _08D9D86C @ =gUnk_030014E0
	strb r4, [r0]
	ldr r1, _08D9D73C @ =0x040000D4
	ldr r0, _08D9D870 @ =0x04000008
	str r0, [r1]
	ldr r0, _08D9D874 @ =gUnk_03001E40
	str r0, [r1, #4]
	ldr r0, _08D9D878 @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08D9D714:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9D714
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9D724: .4byte gUnk_03002564
_08D9D728: .4byte gUnk_03002994
_08D9D72C: .4byte gUnk_03002720
_08D9D730: .4byte gUnk_03005840
_08D9D734: .4byte gUnk_03005008
_08D9D738: .4byte gUnk_03002934
_08D9D73C: .4byte 0x040000D4
_08D9D740: .4byte gUnk_03001E10
_08D9D744: .4byte 0x85000004
_08D9D748: .4byte gUnk_03005030
_08D9D74C: .4byte gUnk_03002610
_08D9D750: .4byte gUnk_03001384
_08D9D754: .4byte gUnk_03002620
_08D9D758: .4byte gUnk_03001E50
_08D9D75C: .4byte 0x850000C0
_08D9D760: .4byte gUnk_03001480
_08D9D764: .4byte gUnk_03002990
_08D9D768: .4byte gUnk_03005040
_08D9D76C: .4byte 0x81000200
_08D9D770: .4byte gUnk_03002150
_08D9D774: .4byte gUnk_030013E0
_08D9D778: .4byte 0x85000008
_08D9D77C: .4byte gUnk_03005010
_08D9D780: .4byte 0x05000200
_08D9D784: .4byte gUnk_03001BF0
_08D9D788: .4byte 0x84000080
_08D9D78C: .4byte gUnk_03002730
_08D9D790: .4byte gUnk_030014B0
_08D9D794: .4byte gUnk_030014A4
_08D9D798: .4byte gUnk_030014D4
_08D9D79C: .4byte gUnk_03001380
_08D9D7A0: .4byte gUnk_03005844
_08D9D7A4: .4byte gUnk_0300293C
_08D9D7A8: .4byte gUnk_03005004
_08D9D7AC: .4byte gUnk_030014DC
_08D9D7B0: .4byte gUnk_0300260C
_08D9D7B4: .4byte gUnk_03005848
_08D9D7B8: .4byte gUnk_03001E00
_08D9D7BC: .4byte gUnk_03001478
_08D9D7C0: .4byte gUnk_03005868
_08D9D7C4: .4byte gUnk_03002570
_08D9D7C8: .4byte gUnk_03002630
_08D9D7CC: .4byte gUnk_03001DF4
_08D9D7D0: .4byte gUnk_03000740
_08D9D7D4: .4byte gUnk_0201DE94
_08D9D7D8: .4byte gUnk_030016F0
_08D9D7DC: .4byte 0x85000140
_08D9D7E0: .4byte gUnk_03001414
_08D9D7E4: .4byte gUnk_03001E3C
_08D9D7E8: .4byte gUnk_03002658
_08D9D7EC: .4byte gUnk_03002930
_08D9D7F0: .4byte gUnk_0300141C
_08D9D7F4: .4byte gUnk_03001474
_08D9D7F8: .4byte gUnk_03002550
_08D9D7FC: .4byte gUnk_030029A0
_08D9D800: .4byte gUnk_03005000
_08D9D804: .4byte gUnk_030014D8
_08D9D808: .4byte gUnk_03001400
_08D9D80C: .4byte gUnk_03005850
_08D9D810: .4byte 0x0095FA00
_08D9D814: .4byte gUnk_03005864
_08D9D818: .4byte gUnk_03001418
_08D9D81C: .4byte gUnk_030014D0
_08D9D820: .4byte 0x06014000
_08D9D824: .4byte gUnk_030013D0
_08D9D828: .4byte gUnk_020000FC
_08D9D82C: .4byte gUnk_03000780
_08D9D830: .4byte gUnk_03007FFC
_08D9D834: .4byte 0x04000200
_08D9D838: .4byte 0x04000004
_08D9D83C: .4byte 0x080000B2
_08D9D840: .4byte 0x080000AC
_08D9D844: .4byte 0x454B3842
_08D9D848: .4byte 0x04000208
_08D9D84C: .4byte gUnk_03002640
_08D9D850: .4byte 0x85000005
_08D9D854: .4byte gUnk_03001420
_08D9D858: .4byte 0x85000014
_08D9D85C: .4byte gUnk_030014E4
_08D9D860: .4byte gUnk_030014E8
_08D9D864: .4byte gUnk_0300500C
_08D9D868: .4byte gUnk_03001470
_08D9D86C: .4byte gUnk_030014E0
_08D9D870: .4byte 0x04000008
_08D9D874: .4byte gUnk_03001E40
_08D9D878: .4byte 0x80000004

	thumb_func_start sub_08D9D87C
sub_08D9D87C: @ 0x08D9D87C
	push {r4, r5, lr}
_08D9D87E:
	ldr r1, _08D9D8DC @ =gUnk_03005864
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08D9D8E0 @ =gUnk_030013D0
	ldr r0, [r1]
	ldr r2, _08D9D8E4 @ =0xFEFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r1, _08D9D8E8 @ =gUnk_03002600
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r0, _08D9D8EC @ =gUnk_03002564
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08D9D90A
	bl sub_08D9E090
	ldr r0, _08D9D8F0 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #0
	beq _08D9D8C8
	bl sub_08D9500C
	ldr r0, _08D9D8F4 @ =gUnk_03002640
	ldr r1, _08D9D8F8 @ =gUnk_03001420
	movs r2, #0
	bl sub_08D9FB4C
	ldr r1, _08D9D8FC @ =gUnk_030014E4
	str r0, [r1]
	bl sub_08D9513C
	cmp r0, #0
	bne _08D9D8C8
	bl sub_08D95CFC
_08D9D8C8:
	ldr r0, _08D9D900 @ =gUnk_03000470
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08D9D904
	bl sub_08D9E430
	b _08D9D90A
	.align 2, 0
_08D9D8DC: .4byte gUnk_03005864
_08D9D8E0: .4byte gUnk_030013D0
_08D9D8E4: .4byte 0xFEFFFFFF
_08D9D8E8: .4byte gUnk_03002600
_08D9D8EC: .4byte gUnk_03002564
_08D9D8F0: .4byte gUnk_030014E8
_08D9D8F4: .4byte gUnk_03002640
_08D9D8F8: .4byte gUnk_03001420
_08D9D8FC: .4byte gUnk_030014E4
_08D9D900: .4byte gUnk_03000470
_08D9D904:
	ldr r1, _08D9D950 @ =gUnk_03002564
	movs r0, #0
	strb r0, [r1]
_08D9D90A:
	ldr r4, _08D9D954 @ =gUnk_030013D0
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	ldr r1, _08D9D958 @ =gUnk_03002600
	str r0, [r1]
	bl sub_08DA04A4
	ldr r1, _08D9D95C @ =gUnk_030014A4
	movs r0, #0
	strb r0, [r1]
	bl sub_08D9D9A0
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	bne _08D9D942
	bl sub_08D9DC88
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08D9D960
_08D9D942:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	b _08D9D966
	.align 2, 0
_08D9D950: .4byte gUnk_03002564
_08D9D954: .4byte gUnk_030013D0
_08D9D958: .4byte gUnk_03002600
_08D9D95C: .4byte gUnk_030014A4
_08D9D960:
	ldr r0, _08D9D994 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r4]
_08D9D966:
	ldr r0, _08D9D998 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08D9D978
	bl sub_08D9BEBC
_08D9D978:
	ldr r0, _08D9D99C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D9D986
	b _08D9D87E
_08D9D986:
	ldr r0, _08D9D99C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D9D986
	b _08D9D87E
	.align 2, 0
_08D9D994: .4byte 0xFFFFF7FF
_08D9D998: .4byte gUnk_030013D0
_08D9D99C: .4byte 0x04000004

	thumb_func_start sub_08D9D9A0
sub_08D9D9A0: @ 0x08D9D9A0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08D9DA94 @ =gUnk_03002620
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _08D9DA98 @ =0x040000D4
	ldr r0, _08D9DA9C @ =gUnk_03001E40
	str r0, [r3]
	ldr r0, _08D9DAA0 @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _08D9DAA4 @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _08D9DAA8 @ =gUnk_030013D0
	ldr r1, [r5]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r6, _08D9DAAC @ =gUnk_03001E00
	ldr r7, _08D9DAB0 @ =gUnk_03002610
	mov ip, r7
	ldr r7, _08D9DAB4 @ =gUnk_030014B0
	mov r8, r7
	ldr r7, _08D9DAB8 @ =gUnk_03001474
	mov sb, r7
	ldr r7, _08D9DABC @ =gUnk_03002564
	mov sl, r7
	cmp r0, #0
	beq _08D9D9FC
	ldr r0, _08D9DAC0 @ =gUnk_03002730
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _08D9DAC4 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08D9D9FC:
	ldr r1, [r5]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08D9DA1A
	ldr r0, _08D9DAC8 @ =gUnk_03001BF0
	str r0, [r3]
	ldr r0, _08D9DACC @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _08D9DAC4 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08D9DA1A:
	str r6, [r3]
	ldr r0, _08D9DAD0 @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _08D9DAD4 @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08D9DAD8 @ =gUnk_03001478
	str r0, [r3]
	ldr r0, _08D9DADC @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _08D9DAE0 @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	str r1, [r3]
	ldr r0, _08D9DAE4 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _08D9DAE8 @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r7, r8
	str r7, [r3]
	ldr r0, _08D9DAEC @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _08D9DAF0 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r5]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08D9DB08
	ldr r2, _08D9DAF4 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r4, _08D9DAF8 @ =gUnk_030029A0
	str r4, [r3, #4]
	ldr r0, _08D9DAFC @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08D9DB00 @ =gUnk_0300141C
	ldrb r2, [r1]
	cmp r2, #0
	beq _08D9DA8E
	ldr r0, _08D9DB04 @ =gUnk_03002550
	str r0, [r3]
	str r4, [r3, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08D9DA8E:
	mov r1, sb
	strb r2, [r1]
	b _08D9DB16
	.align 2, 0
_08D9DA94: .4byte gUnk_03002620
_08D9DA98: .4byte 0x040000D4
_08D9DA9C: .4byte gUnk_03001E40
_08D9DAA0: .4byte 0x04000008
_08D9DAA4: .4byte 0x84000002
_08D9DAA8: .4byte gUnk_030013D0
_08D9DAAC: .4byte gUnk_03001E00
_08D9DAB0: .4byte gUnk_03002610
_08D9DAB4: .4byte gUnk_030014B0
_08D9DAB8: .4byte gUnk_03001474
_08D9DABC: .4byte gUnk_03002564
_08D9DAC0: .4byte gUnk_03002730
_08D9DAC4: .4byte 0x84000080
_08D9DAC8: .4byte gUnk_03001BF0
_08D9DACC: .4byte 0x05000200
_08D9DAD0: .4byte 0x04000040
_08D9DAD4: .4byte 0x84000003
_08D9DAD8: .4byte gUnk_03001478
_08D9DADC: .4byte 0x04000050
_08D9DAE0: .4byte 0x80000003
_08D9DAE4: .4byte 0x04000010
_08D9DAE8: .4byte 0x80000008
_08D9DAEC: .4byte 0x04000020
_08D9DAF0: .4byte 0x84000008
_08D9DAF4: .4byte 0x04000200
_08D9DAF8: .4byte gUnk_030029A0
_08D9DAFC: .4byte 0x85000004
_08D9DB00: .4byte gUnk_0300141C
_08D9DB04: .4byte gUnk_03002550
_08D9DB08:
	ldr r2, _08D9DB90 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D9DB94 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	mov r7, sb
	strb r4, [r7]
_08D9DB16:
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08D9DB3E
	ldr r2, _08D9DB98 @ =0x040000D4
	ldr r0, _08D9DB9C @ =gUnk_03001414
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08D9DBA0 @ =gUnk_03002658
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08D9DBA4 @ =gUnk_03002930
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08D9DB3E:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08D9DB8C
	bl sub_08D9F804
	ldr r0, _08D9DB98 @ =0x040000D4
	ldr r3, _08D9DBA8 @ =gUnk_03005040
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _08D9DBAC @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08D9DBB0 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r3, r7
	str r1, [r0]
	ldr r1, _08D9DBB4 @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08D9DBB8 @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08D9DB8C:
	movs r4, #0
	b _08D9DBCE
	.align 2, 0
_08D9DB90: .4byte 0x04000200
_08D9DB94: .4byte 0x0000FFFD
_08D9DB98: .4byte 0x040000D4
_08D9DB9C: .4byte gUnk_03001414
_08D9DBA0: .4byte gUnk_03002658
_08D9DBA4: .4byte gUnk_03002930
_08D9DBA8: .4byte gUnk_03005040
_08D9DBAC: .4byte 0x80000080
_08D9DBB0: .4byte 0x07000100
_08D9DBB4: .4byte 0x07000200
_08D9DBB8: .4byte 0x07000300
_08D9DBBC:
	ldr r1, _08D9DC1C @ =gUnk_03005850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08DA04AC
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08D9DBCE:
	ldr r0, _08D9DC20 @ =gUnk_030014D8
	ldrb r0, [r0]
	cmp r4, r0
	blo _08D9DBBC
	ldr r0, _08D9DC24 @ =gUnk_030013D0
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r7, _08D9DC28 @ =gUnk_03002564
	mov sl, r7
	ldr r5, _08D9DC20 @ =gUnk_030014D8
	cmp r1, #0
	beq _08D9DC3C
	movs r0, #0
	str r0, [sp]
	ldr r2, _08D9DC2C @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r4, _08D9DC1C @ =gUnk_03005850
	str r4, [r2, #4]
	ldr r0, _08D9DC30 @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _08D9DC34 @ =gUnk_03005000
	ldrb r3, [r1]
	cmp r3, #0
	beq _08D9DC16
	ldr r0, _08D9DC38 @ =gUnk_03001400
	str r0, [r2]
	str r4, [r2, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08D9DC16:
	strb r3, [r5]
	b _08D9DC3E
	.align 2, 0
_08D9DC1C: .4byte gUnk_03005850
_08D9DC20: .4byte gUnk_030014D8
_08D9DC24: .4byte gUnk_030013D0
_08D9DC28: .4byte gUnk_03002564
_08D9DC2C: .4byte 0x040000D4
_08D9DC30: .4byte 0x85000004
_08D9DC34: .4byte gUnk_03005000
_08D9DC38: .4byte gUnk_03001400
_08D9DC3C:
	strb r1, [r5]
_08D9DC3E:
	mov r1, sl
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _08D9DC48
	movs r4, #0
_08D9DC48:
	movs r0, #0xff
	mov r7, sl
	strb r0, [r7]
	b _08D9DC56
_08D9DC50:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08D9DC56:
	cmp r4, #1
	bhi _08D9DC6E
	ldr r1, _08D9DC80 @ =gUnk_0201DECC
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08DA04AC
	cmp r0, #0
	bne _08D9DC50
	ldr r0, _08D9DC84 @ =gUnk_03002564
	strb r4, [r0]
_08D9DC6E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9DC80: .4byte gUnk_0201DECC
_08D9DC84: .4byte gUnk_03002564

	thumb_func_start sub_08D9DC88
sub_08D9DC88: @ 0x08D9DC88
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _08D9DCC0 @ =gUnk_0300141C
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08D9DCC4 @ =gUnk_030013D0
	ldr r0, [r5]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08D9DCDE
	ldr r2, _08D9DCC8 @ =gUnk_03001414
	ldr r0, [r2]
	ldr r1, _08D9DCCC @ =gUnk_030016F0
	ldr r3, _08D9DCD0 @ =gUnk_03001E3C
	cmp r0, r1
	bne _08D9DCD4
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r1, r4
	str r0, [r2]
	str r1, [r3]
	b _08D9DCDE
	.align 2, 0
_08D9DCC0: .4byte gUnk_0300141C
_08D9DCC4: .4byte gUnk_030013D0
_08D9DCC8: .4byte gUnk_03001414
_08D9DCCC: .4byte gUnk_030016F0
_08D9DCD0: .4byte gUnk_03001E3C
_08D9DCD4:
	str r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r3]
_08D9DCDE:
	ldr r4, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _08D9DD50 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _08D9DD54 @ =gUnk_03005040
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _08D9DD58 @ =0x81000080
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
	ldr r1, _08D9DD5C @ =gUnk_03005000
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
_08D9DD50: .4byte 0x040000D4
_08D9DD54: .4byte gUnk_03005040
_08D9DD58: .4byte 0x81000080
_08D9DD5C: .4byte gUnk_03005000

	thumb_func_start sub_08D9DD60
sub_08D9DD60: @ 0x08D9DD60
	push {r4, r5, r6, lr}
	ldr r4, _08D9DDDC @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _08D9DDE0 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _08D9DDE4 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl sub_08D9B7E8
	ldr r1, _08D9DDE8 @ =gUnk_03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08D9DDEC @ =gUnk_03005864
	strb r2, [r0]
	ldr r6, _08D9DDF0 @ =gUnk_03002600
	ldr r3, [r6]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _08D9DE08
	ldr r2, _08D9DDF4 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
_08D9DDA0:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08D9DDA0
	ldr r2, _08D9DDDC @ =0x040000B0
	ldr r0, _08D9DDF8 @ =gUnk_03001414
	ldr r4, [r0]
	str r4, [r2]
	ldr r0, _08D9DDFC @ =gUnk_03002658
	ldr r5, [r0]
	str r5, [r2, #4]
	ldr r3, _08D9DE00 @ =gUnk_03002930
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
	ldr r1, _08D9DE04 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08D9DE1C
	.align 2, 0
_08D9DDDC: .4byte 0x040000B0
_08D9DDE0: .4byte 0x0000C5FF
_08D9DDE4: .4byte 0x00007FFF
_08D9DDE8: .4byte gUnk_03007FF8
_08D9DDEC: .4byte gUnk_03005864
_08D9DDF0: .4byte gUnk_03002600
_08D9DDF4: .4byte 0x04000200
_08D9DDF8: .4byte gUnk_03001414
_08D9DDFC: .4byte gUnk_03002658
_08D9DE00: .4byte gUnk_03002930
_08D9DE04: .4byte 0xA2600000
_08D9DE08:
	ldr r4, _08D9DE60 @ =gUnk_03002658
	ldr r0, [r4]
	cmp r0, #0
	beq _08D9DE1C
	ldr r2, _08D9DE64 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D9DE68 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_08D9DE1C:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08D9DE78
	ldr r2, _08D9DE6C @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08D9DE70 @ =gUnk_03002654
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08D9DE74 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _08D9DE64 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _08D9DE94
	.align 2, 0
_08D9DE60: .4byte gUnk_03002658
_08D9DE64: .4byte 0x04000200
_08D9DE68: .4byte 0x0000FFFD
_08D9DE6C: .4byte 0x04000004
_08D9DE70: .4byte gUnk_03002654
_08D9DE74: .4byte 0x0000FFFB
_08D9DE78:
	ldr r2, _08D9DECC @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _08D9DED0 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _08D9DED4 @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _08D9DED8 @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_08D9DE94:
	ldr r0, _08D9DEDC @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	beq _08D9DEB6
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08D9DEB6
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	bne _08D9DEB6
	bl sub_08D9BEBC
_08D9DEB6:
	ldr r1, _08D9DEE0 @ =gUnk_03001DF4
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08D9DEE4 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D9DECC: .4byte 0x04000004
_08D9DED0: .4byte 0x0000FFFB
_08D9DED4: .4byte 0x0000FFDF
_08D9DED8: .4byte 0x04000200
_08D9DEDC: .4byte gUnk_030014E8
_08D9DEE0: .4byte gUnk_03001DF4
_08D9DEE4: .4byte 0x04000202

	thumb_func_start sub_08D9DEE8
sub_08D9DEE8: @ 0x08D9DEE8
	push {r4, r5, lr}
	ldr r0, _08D9DEF8 @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _08D9DF18
	movs r4, #0
	b _08D9DF10
	.align 2, 0
_08D9DEF8: .4byte 0x04000006
_08D9DEFC:
	ldr r1, _08D9DF24 @ =gUnk_030029A0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08DA04B0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08D9DF10:
	ldr r0, _08D9DF28 @ =gUnk_03001474
	ldrb r0, [r0]
	cmp r4, r0
	blo _08D9DEFC
_08D9DF18:
	ldr r1, _08D9DF2C @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D9DF24: .4byte gUnk_030029A0
_08D9DF28: .4byte gUnk_03001474
_08D9DF2C: .4byte 0x04000202

	thumb_func_start sub_08D9DF30
sub_08D9DF30: @ 0x08D9DF30
	ldr r1, _08D9DF38 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DF38: .4byte 0x04000202

	thumb_func_start sub_08D9DF3C
sub_08D9DF3C: @ 0x08D9DF3C
	ldr r1, _08D9DF44 @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DF44: .4byte 0x04000202

	thumb_func_start sub_08D9DF48
sub_08D9DF48: @ 0x08D9DF48
	ldr r1, _08D9DF50 @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DF50: .4byte 0x04000202

	thumb_func_start sub_08D9DF54
sub_08D9DF54: @ 0x08D9DF54
	ldr r1, _08D9DF5C @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DF5C: .4byte 0x04000202

	thumb_func_start sub_08D9DF60
sub_08D9DF60: @ 0x08D9DF60
	ldr r1, _08D9DF68 @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DF68: .4byte 0x04000202

	thumb_func_start sub_08D9DF6C
sub_08D9DF6C: @ 0x08D9DF6C
	ldr r1, _08D9DF78 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DF78: .4byte 0x04000202

	thumb_func_start sub_08D9DF7C
sub_08D9DF7C: @ 0x08D9DF7C
	ldr r1, _08D9DF88 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DF88: .4byte 0x04000202

	thumb_func_start sub_08D9DF8C
sub_08D9DF8C: @ 0x08D9DF8C
	ldr r1, _08D9DF98 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DF98: .4byte 0x04000202

	thumb_func_start sub_08D9DF9C
sub_08D9DF9C: @ 0x08D9DF9C
	ldr r1, _08D9DFA8 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DFA8: .4byte 0x04000202

	thumb_func_start sub_08D9DFAC
sub_08D9DFAC: @ 0x08D9DFAC
	ldr r1, _08D9DFB8 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DFB8: .4byte 0x04000202

	thumb_func_start sub_08D9DFBC
sub_08D9DFBC: @ 0x08D9DFBC
	ldr r1, _08D9DFC8 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08D9DFC8: .4byte 0x04000202

	thumb_func_start nullsub_79
nullsub_79: @ 0x08D9DFCC
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9DFD0
sub_08D9DFD0: @ 0x08D9DFD0
	push {r4, r5, r6, r7, lr}
	ldr r0, _08D9E01C @ =gUnk_03005008
	ldr r7, _08D9E020 @ =gUnk_03002934
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _08D9E086
_08D9DFDE:
	ldr r6, _08D9E01C @ =gUnk_03005008
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08D9E024 @ =gUnk_03001E50
	adds r3, r1, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	beq _08D9E05E
	movs r5, #0
_08D9DFF4:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r4, [r3]
	cmp r1, r0
	bls _08D9E034
	ldr r1, _08D9E028 @ =0x040000D4
	adds r0, r4, r5
	str r0, [r1]
	ldr r0, [r3, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08D9E02C @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08D9E030 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	b _08D9E050
	.align 2, 0
_08D9E01C: .4byte gUnk_03005008
_08D9E020: .4byte gUnk_03002934
_08D9E024: .4byte gUnk_03001E50
_08D9E028: .4byte 0x040000D4
_08D9E02C: .4byte 0x80000200
_08D9E030: .4byte 0xFFFFFC00
_08D9E034:
	ldr r2, _08D9E078 @ =0x040000D4
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
_08D9E050:
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	bne _08D9DFF4
_08D9E05E:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _08D9E07C @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08D9E080
	movs r0, #0
	b _08D9E088
	.align 2, 0
_08D9E078: .4byte 0x040000D4
_08D9E07C: .4byte 0x04000004
_08D9E080:
	ldrb r1, [r7]
	cmp r2, r1
	bne _08D9DFDE
_08D9E086:
	movs r0, #1
_08D9E088:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9E090
sub_08D9E090: @ 0x08D9E090
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08D9E0F0 @ =gUnk_03001E30
	mov r8, r0
	ldr r1, _08D9E0F4 @ =gUnk_03002570
	mov ip, r1
	ldr r2, _08D9E0F8 @ =gUnk_03002630
	mov sb, r2
	ldr r0, _08D9E0FC @ =gUnk_03002938
	ldr r6, _08D9E100 @ =gUnk_03001E20
	ldrh r3, [r6]
	strh r3, [r0]
	ldr r0, _08D9E104 @ =0x04000130
	ldrh r0, [r0]
	ldr r7, _08D9E108 @ =0x000003FF
	adds r1, r7, #0
	bics r1, r0
	strh r1, [r6]
	ldr r0, _08D9E10C @ =gUnk_03001410
	strh r1, [r0]
	ldr r4, _08D9E110 @ =gUnk_0300298C
	adds r0, r1, #0
	eors r0, r3
	adds r2, r0, #0
	ands r2, r1
	strh r2, [r4]
	ldr r1, _08D9E114 @ =gUnk_0300257C
	ands r0, r3
	strh r0, [r1]
	ldr r5, _08D9E118 @ =gUnk_03001E48
	strh r2, [r5]
	movs r1, #0
_08D9E0D4:
	ldrh r0, [r6]
	lsls r4, r1, #0x18
	asrs r2, r4, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	mov r7, r8
	adds r3, r7, r2
	cmp r0, #0
	bne _08D9E11C
	mov r1, ip
	adds r0, r1, r2
	b _08D9E134
	.align 2, 0
_08D9E0F0: .4byte gUnk_03001E30
_08D9E0F4: .4byte gUnk_03002570
_08D9E0F8: .4byte gUnk_03002630
_08D9E0FC: .4byte gUnk_03002938
_08D9E100: .4byte gUnk_03001E20
_08D9E104: .4byte 0x04000130
_08D9E108: .4byte 0x000003FF
_08D9E10C: .4byte gUnk_03001410
_08D9E110: .4byte gUnk_0300298C
_08D9E114: .4byte gUnk_0300257C
_08D9E118: .4byte gUnk_03001E48
_08D9E11C:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08D9E126
	subs r0, #1
	b _08D9E136
_08D9E126:
	adds r0, r1, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r7, sb
	adds r0, r7, r2
_08D9E134:
	ldrb r0, [r0]
_08D9E136:
	strb r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r4, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08D9E0D4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9E154
sub_08D9E154: @ 0x08D9E154
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08D9E1F0 @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _08D9E1F4 @ =gUnk_03001E4C
	str r1, [r0]
	ldr r0, _08D9E1F8 @ =gUnk_03001E0C
	str r1, [r0]
	ldr r0, _08D9E1FC @ =gUnk_03001E28
	str r1, [r0]
	str r1, [sp]
	ldr r1, _08D9E200 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _08D9E204 @ =gUnk_03000980
	str r4, [r1, #4]
	ldr r0, _08D9E208 @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	movs r3, #0
_08D9E180:
	ldr r0, _08D9E20C @ =gUnk_030014F0
	lsls r1, r2, #2
	adds r1, r1, r0
	adds r0, r3, r4
	str r0, [r1]
	adds r3, #0x14
	adds r2, #1
	cmp r2, #0x7f
	ble _08D9E180
	bl sub_08D9E238
	adds r4, r0, #0
	cmp r4, #0
	beq _08D9E22C
	ldr r0, _08D9E210 @ =gUnk_02009B45
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl sub_08D9E238
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08D9E22C
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _08D9E214 @ =gUnk_02009B49
	str r0, [r4, #8]
	ldr r0, _08D9E218 @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _08D9E21C @ =gUnk_03001490
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _08D9E220 @ =gUnk_03005C38
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _08D9E224 @ =gUnk_030029B0
	strh r5, [r1]
	ldr r0, _08D9E228 @ =0x00002604
	strh r0, [r1, #2]
	movs r0, #1
	b _08D9E22E
	.align 2, 0
_08D9E1F0: .4byte gUnk_03002560
_08D9E1F4: .4byte gUnk_03001E4C
_08D9E1F8: .4byte gUnk_03001E0C
_08D9E1FC: .4byte gUnk_03001E28
_08D9E200: .4byte 0x040000D4
_08D9E204: .4byte gUnk_03000980
_08D9E208: .4byte 0x85000080
_08D9E20C: .4byte gUnk_030014F0
_08D9E210: .4byte gUnk_02009B45
_08D9E214: .4byte gUnk_02009B49
_08D9E218: .4byte 0x0000FFFF
_08D9E21C: .4byte gUnk_03001490
_08D9E220: .4byte gUnk_03005C38
_08D9E224: .4byte gUnk_030029B0
_08D9E228: .4byte 0x00002604
_08D9E22C:
	movs r0, #0
_08D9E22E:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9E238
sub_08D9E238: @ 0x08D9E238
	push {lr}
	ldr r3, _08D9E250 @ =gUnk_03001E0C
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _08D9E258
	ldr r1, _08D9E254 @ =gUnk_030014F0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _08D9E25A
	.align 2, 0
_08D9E250: .4byte gUnk_03001E0C
_08D9E254: .4byte gUnk_030014F0
_08D9E258:
	movs r0, #0
_08D9E25A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9E260
sub_08D9E260: @ 0x08D9E260
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
	bl sub_08D9E238
	adds r4, r0, #0
	cmp r4, #0
	bne _08D9E288
	ldr r0, _08D9E284 @ =gUnk_03001490
	b _08D9E2F8
	.align 2, 0
_08D9E284: .4byte gUnk_03001490
_08D9E288:
	str r7, [r4, #8]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	mov r0, r8
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r6, #0
	bl sub_08D9E514
	strh r0, [r4, #6]
	ldr r0, _08D9E2DC @ =gUnk_03002560
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _08D9E2E0 @ =gUnk_030014F0
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r1
	beq _08D9E2F6
	ldr r6, _08D9E2E4 @ =gUnk_03001E4C
_08D9E2B4:
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r2, r5
	ldrh r0, [r1, #0x10]
	cmp r0, r8
	bls _08D9E2E8
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
	bne _08D9E2F6
	str r4, [r6]
	b _08D9E2F6
	.align 2, 0
_08D9E2DC: .4byte gUnk_03002560
_08D9E2E0: .4byte gUnk_030014F0
_08D9E2E4: .4byte gUnk_03001E4C
_08D9E2E8:
	adds r3, r1, #0
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r5
	bne _08D9E2B4
_08D9E2F6:
	adds r0, r4, #0
_08D9E2F8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9E304
sub_08D9E304: @ 0x08D9E304
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08D9E358 @ =gUnk_030014F0
	ldr r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08D9E36C
_08D9E318:
	ldrh r0, [r1, #0x10]
	cmp r0, r2
	blo _08D9E360
_08D9E31E:
	ldrh r0, [r1, #0x10]
	ldr r2, _08D9E35C @ =gUnk_03001E28
	cmp r0, r4
	bhs _08D9E350
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	str r0, [r2]
	ldr r2, _08D9E358 @ =gUnk_030014F0
	ldr r0, [r2]
	cmp r1, r0
	beq _08D9E344
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _08D9E344
	adds r0, r1, #0
	bl sub_08D9E37C
_08D9E344:
	ldr r2, _08D9E35C @ =gUnk_03001E28
	ldr r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08D9E31E
_08D9E350:
	movs r0, #0
	str r0, [r2]
	b _08D9E372
	.align 2, 0
_08D9E358: .4byte gUnk_030014F0
_08D9E35C: .4byte gUnk_03001E28
_08D9E360:
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r0, r3
	cmp r0, #0
	bne _08D9E318
_08D9E36C:
	ldr r1, _08D9E378 @ =gUnk_03001E28
	movs r0, #0
	str r0, [r1]
_08D9E372:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08D9E378: .4byte gUnk_03001E28

	thumb_func_start sub_08D9E37C
sub_08D9E37C: @ 0x08D9E37C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08D9E41E
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _08D9E41E
	cmp r0, r5
	beq _08D9E41E
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _08D9E3AA
	adds r0, r4, #0
	bl sub_08DA04B0
_08D9E3AA:
	ldr r1, _08D9E3F0 @ =gUnk_03001E4C
	ldr r0, [r1]
	cmp r4, r0
	bne _08D9E3B8
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08D9E3B8:
	ldr r1, _08D9E3F4 @ =gUnk_03001E28
	ldr r0, [r1]
	cmp r4, r0
	bne _08D9E3C6
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08D9E3C6:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _08D9E3FE
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r4, #6]
	cmp r0, #0
	beq _08D9E3F8
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08D9E3FA
	.align 2, 0
_08D9E3F0: .4byte gUnk_03001E4C
_08D9E3F4: .4byte gUnk_03001E28
_08D9E3F8:
	adds r0, r1, r5
_08D9E3FA:
	bl sub_08D9E57C
_08D9E3FE:
	ldr r2, _08D9E424 @ =gUnk_030014F0
	ldr r1, _08D9E428 @ =gUnk_03001E0C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	movs r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	ldr r0, _08D9E42C @ =gUnk_02009B4D
	str r0, [r4, #8]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #6]
_08D9E41E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D9E424: .4byte gUnk_030014F0
_08D9E428: .4byte gUnk_03001E0C
_08D9E42C: .4byte gUnk_02009B4D

	thumb_func_start sub_08D9E430
sub_08D9E430: @ 0x08D9E430
	push {r4, r5, r6, lr}
	ldr r1, _08D9E49C @ =gUnk_03002560
	ldr r0, _08D9E4A0 @ =gUnk_030014F0
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, _08D9E4A4 @ =gUnk_030013D0
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08D9E4B4
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08D9E4F6
_08D9E450:
	ldr r4, _08D9E4A8 @ =gUnk_03001E4C
	ldr r5, _08D9E49C @ =gUnk_03002560
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
	bne _08D9E470
	ldr r0, [r2, #8]
	bl sub_08DA04AC
_08D9E470:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08D9E4AC @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _08D9E48C
	ldr r0, _08D9E4B0 @ =gUnk_030014E8
	ldrb r0, [r0]
	cmp r0, #1
	bne _08D9E488
	bl sub_08D9BEBC
_08D9E488:
	movs r0, #0
	strb r0, [r4]
_08D9E48C:
	ldr r0, _08D9E49C @ =gUnk_03002560
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08D9E450
	b _08D9E4F6
	.align 2, 0
_08D9E49C: .4byte gUnk_03002560
_08D9E4A0: .4byte gUnk_030014F0
_08D9E4A4: .4byte gUnk_030013D0
_08D9E4A8: .4byte gUnk_03001E4C
_08D9E4AC: .4byte gUnk_03005864
_08D9E4B0: .4byte gUnk_030014E8
_08D9E4B4:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08D9E4F6
_08D9E4BC:
	ldr r4, _08D9E508 @ =gUnk_03001E4C
	ldr r5, _08D9E50C @ =gUnk_03002560
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
	bne _08D9E4DC
	ldr r0, [r2, #8]
	bl sub_08DA04AC
_08D9E4DC:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08D9E510 @ =gUnk_03005864
	ldrb r0, [r4]
	cmp r0, #0
	beq _08D9E4F0
	bl sub_08D9BEBC
	movs r0, #0
	strb r0, [r4]
_08D9E4F0:
	ldr r0, [r5]
	cmp r0, r6
	bne _08D9E4BC
_08D9E4F6:
	ldr r0, _08D9E50C @ =gUnk_03002560
	movs r1, #0
	str r1, [r0]
	ldr r0, _08D9E508 @ =gUnk_03001E4C
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08D9E508: .4byte gUnk_03001E4C
_08D9E50C: .4byte gUnk_03002560
_08D9E510: .4byte gUnk_03005864

	thumb_func_start sub_08D9E514
sub_08D9E514: @ 0x08D9E514
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _08D9E574
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _08D9E560 @ =gUnk_030029B0
_08D9E52E:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _08D9E564
	cmp r0, r1
	beq _08D9E556
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _08D9E564
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_08D9E556:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _08D9E576
	.align 2, 0
_08D9E560: .4byte gUnk_030029B0
_08D9E564:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08D9E574
	adds r3, r1, #0
	b _08D9E52E
_08D9E574:
	movs r0, #0
_08D9E576:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08D9E57C
sub_08D9E57C: @ 0x08D9E57C
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r3, _08D9E5F4 @ =gUnk_030029B0
	adds r4, r3, #0
	cmp r2, r3
	beq _08D9E598
_08D9E58A:
	adds r3, r4, #0
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, r4
	bne _08D9E58A
_08D9E598:
	ldrh r1, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08D9E5A6
	rsbs r0, r1, #0
	strh r0, [r2, #2]
_08D9E5A6:
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r0, r3, r0
	cmp r0, r2
	bne _08D9E5C6
	ldrh r1, [r3, #2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _08D9E5C6
	ldrh r0, [r4]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	adds r0, r1, r0
	strh r0, [r3, #2]
	adds r2, r3, #0
_08D9E5C6:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _08D9E5EC
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08D9E5EC
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_08D9E5EC:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08D9E5F4: .4byte gUnk_030029B0

	thumb_func_start sub_08D9E5F8
sub_08D9E5F8: @ 0x08D9E5F8
	push {lr}
	movs r2, #0
	ldr r1, _08D9E61C @ =gUnk_030029B0
_08D9E5FE:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08D9E608
	subs r2, r2, r0
_08D9E608:
	ldrh r1, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	bne _08D9E5FE
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08D9E61C: .4byte gUnk_030029B0

	thumb_func_start sub_08D9E620
sub_08D9E620: @ 0x08D9E620
	push {r4, r5, r6, r7, lr}
	ldr r3, _08D9E628 @ =gUnk_030029B0
	b _08D9E6CE
	.align 2, 0
_08D9E628: .4byte gUnk_030029B0
_08D9E62C:
	ldrh r4, [r3, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r2, [r3]
	cmp r0, #0
	blt _08D9E6C8
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldrh r1, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _08D9E65C
	adds r0, r4, r1
	strh r0, [r3, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _08D9E6CE
_08D9E658:
	strh r7, [r2, #6]
	b _08D9E68E
_08D9E65C:
	ldr r4, _08D9E6BC @ =gUnk_03000004
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
_08D9E678:
	ldr r0, _08D9E6C0 @ =gUnk_03000980
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08D9E658
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0x7f
	ble _08D9E678
_08D9E68E:
	ldr r2, _08D9E6C4 @ =0x040000D4
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
	b _08D9E6CE
	.align 2, 0
_08D9E6BC: .4byte gUnk_03000004
_08D9E6C0: .4byte gUnk_03000980
_08D9E6C4: .4byte 0x040000D4
_08D9E6C8:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
_08D9E6CE:
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	bne _08D9E62C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start nullsub_080
nullsub_080: @ 0x08D9E6E0
	bx lr
	.align 2, 0

	thumb_func_start nullsub_081
nullsub_081: @ 0x08D9E6E4
	bx lr
	.align 2, 0

	thumb_func_start nullsub_082
nullsub_082: @ 0x08D9E6E8
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9E6EC
sub_08D9E6EC: @ 0x08D9E6EC
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
	ldr r1, _08D9E78C @ =gUnk_03001E40
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
	beq _08D9E778
_08D9E73E:
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
	bl sub_08DA0488
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
	bne _08D9E73E
_08D9E778:
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
_08D9E78C: .4byte gUnk_03001E40

	thumb_func_start sub_08D9E790
sub_08D9E790: @ 0x08D9E790
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
_08D9E7A0:
	ldr r1, _08D9E840 @ =gUnk_03001E10
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
	bne _08D9E7D0
	mov r1, ip
	adds r0, r5, r1
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08D9E7D0
	b _08D9E97E
_08D9E7D0:
	mov r0, sl
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _08D9E844 @ =gUnk_03001E40
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
	bls _08D9E8B0
	ldr r0, _08D9E848 @ =gUnk_03002620
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08D9E8B0
	add r7, sb
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r6, r0, #0x10
	cmp r2, #0xff
	bne _08D9E854
	ldr r0, _08D9E84C @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08D9E850 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	subs r0, r0, r4
	muls r0, r6, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	b _08D9E8FC
	.align 2, 0
_08D9E840: .4byte gUnk_03001E10
_08D9E844: .4byte gUnk_03001E40
_08D9E848: .4byte gUnk_03002620
_08D9E84C: .4byte gUnk_03005030
_08D9E850: .4byte 0x040000D4
_08D9E854:
	cmp r4, r2
	bls _08D9E85A
	b _08D9E964
_08D9E85A:
	ldr r0, _08D9E8A8 @ =gUnk_03005030
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08D9E8AC @ =0x040000D4
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
	bls _08D9E85A
	b _08D9E964
	.align 2, 0
_08D9E8A8: .4byte gUnk_03005030
_08D9E8AC: .4byte 0x040000D4
_08D9E8B0:
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	movs r6, #0x20
	ldr r0, _08D9E90C @ =gUnk_03001E40
	add r0, r8
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08D9E8CC
	movs r6, #0x40
_08D9E8CC:
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #3
	cmp r0, #0xff
	bne _08D9E918
	ldr r0, _08D9E910 @ =gUnk_03005030
	add r0, sl
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08D9E914 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r6, r0
	lsls r0, r0, #1
_08D9E8FC:
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08D9E964
	.align 2, 0
_08D9E90C: .4byte gUnk_03001E40
_08D9E910: .4byte gUnk_03005030
_08D9E914: .4byte 0x040000D4
_08D9E918:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhi _08D9E964
	ldr r0, _08D9E9A0 @ =gUnk_03005030
	mov r8, r0
_08D9E924:
	mov r0, sl
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08D9E9A4 @ =0x040000D4
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
	bls _08D9E924
_08D9E964:
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _08D9E9A4 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _08D9E9A8 @ =gUnk_03001E10
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08D9E9AC @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08D9E97E:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _08D9E98E
	b _08D9E7A0
_08D9E98E:
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
_08D9E9A0: .4byte gUnk_03005030
_08D9E9A4: .4byte 0x040000D4
_08D9E9A8: .4byte gUnk_03001E10
_08D9E9AC: .4byte 0x85000001

	thumb_func_start sub_08D9E9B0
sub_08D9E9B0: @ 0x08D9E9B0
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _08D9E9E0 @ =gUnk_0201E8D4
	mov r0, sp
	movs r2, #8
	bl sub_08DA0640
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _08D9E9E4
	movs r0, #1
	rsbs r0, r0, #0
	b _08D9EA56
	.align 2, 0
_08D9E9E0: .4byte gUnk_0201E8D4
_08D9E9E4:
	cmp r1, #0
	bgt _08D9E9F0
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_08D9E9F0:
	cmp r2, #0
	bgt _08D9EA00
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08D9EA00:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _08D9EA18
	lsls r0, r1, #0x17
	cmp r2, #0
	beq _08D9EA2C
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _08D9EA26
_08D9EA18:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	cmp r1, #0
	beq _08D9EA2C
	asrs r0, r0, #0x10
_08D9EA26:
	bl sub_08DA04E8
	lsls r0, r0, #0x10
_08D9EA2C:
	lsrs r2, r0, #0x10
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08D9EA48
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_08D9EA48:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_08D9EA56:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9EA60
sub_08D9EA60: @ 0x08D9EA60
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_08D9EA6A:
	lsrs r0, r1, #0xc
	adds r3, r4, r2
	lsls r1, r1, #0x14
	adds r2, #1
	cmp r0, #9
	bls _08D9EA7A
	adds r0, #0x57
	b _08D9EA7C
_08D9EA7A:
	adds r0, #0x30
_08D9EA7C:
	strb r0, [r3]
	lsrs r1, r1, #0x10
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08D9EA6A
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08D9EA94
sub_08D9EA94: @ 0x08D9EA94
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r6, #0
_08D9EA9E:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08DA0490
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
	bls _08D9EA9E
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9EAD4
sub_08D9EAD4: @ 0x08D9EAD4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _08D9EAE8
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _08D9EAFC
_08D9EAE8:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _08D9EB0C @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_08D9EAFC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08D9EB10
	movs r0, #0
	b _08D9EBB2
	.align 2, 0
_08D9EB0C: .4byte 0xFFFFBFFF
_08D9EB10:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _08D9EB28
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _08D9EBB0
_08D9EB24:
	adds r0, r1, #0
	b _08D9EBB2
_08D9EB28:
	ldr r0, _08D9EB40 @ =gUnk_03002604
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
	b _08D9EB80
	.align 2, 0
_08D9EB40: .4byte gUnk_03002604
_08D9EB44:
	ldr r0, _08D9EBB8 @ =gUnk_0201E8DC
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08DA04B4
	adds r1, r0, #0
	cmp r1, #1
	beq _08D9EB80
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08D9EB24
	ldr r0, _08D9EBBC @ =gUnk_03002604
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
_08D9EB80:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r1, [r3]
	cmp r1, #0
	blt _08D9EB44
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
_08D9EBB0:
	movs r0, #1
_08D9EBB2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08D9EBB8: .4byte gUnk_0201E8DC
_08D9EBBC: .4byte gUnk_03002604

	thumb_func_start sub_08D9EBC0
sub_08D9EBC0: @ 0x08D9EBC0
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
	ldr r0, _08D9EC14 @ =gUnk_03002934
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
	ldr r1, _08D9EC18 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _08D9EC1C @ =gUnk_03002604
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
	blt _08D9ECE4
	b _08D9EC98
	.align 2, 0
_08D9EC14: .4byte gUnk_03002934
_08D9EC18: .4byte 0xFFFFBFFF
_08D9EC1C: .4byte gUnk_03002604
_08D9EC20:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08D9EC2A
	mov sb, sl
_08D9EC2A:
	ldr r0, _08D9EC78 @ =gUnk_0201E8DC
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08DA04B4
	adds r2, r0, #0
	ldr r3, _08D9EC7C @ =gUnk_03002934
	ldr r0, [sp]
	ldrb r1, [r3]
	cmp r0, r1
	beq _08D9EC4E
	strb r0, [r3]
	movs r1, #1
	mov r8, r1
_08D9EC4E:
	cmp r2, #1
	beq _08D9EC98
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08D9EC84
	ldr r0, _08D9EC80 @ =gUnk_03002604
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
	b _08D9EC98
	.align 2, 0
_08D9EC78: .4byte gUnk_0201E8DC
_08D9EC7C: .4byte gUnk_03002934
_08D9EC80: .4byte gUnk_03002604
_08D9EC84:
	mov r0, r8
	cmp r0, #0
	beq _08D9EC94
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
_08D9EC94:
	adds r0, r2, #0
	b _08D9ECF8
_08D9EC98:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r1, [r5]
	cmp r1, #0
	blt _08D9EC20
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
	beq _08D9ECC8
	cmp r6, #0
	ble _08D9ECC8
	adds r0, r6, #0
	bl sub_08DA0494
	adds r6, r0, #0
	b _08D9ECCC
_08D9ECC8:
	ldr r0, [r5]
	add sl, r0
_08D9ECCC:
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
	bge _08D9EC98
_08D9ECE4:
	mov r0, r8
	cmp r0, #0
	beq _08D9ECF6
	ldr r0, _08D9ED08 @ =gUnk_03002934
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0x3f
	ands r1, r2
	strb r1, [r0]
_08D9ECF6:
	movs r0, #1
_08D9ECF8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08D9ED08: .4byte gUnk_03002934

	thumb_func_start sub_08D9ED0C
sub_08D9ED0C: @ 0x08D9ED0C
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
	bne _08D9ED8A
	ldr r1, [r2, #4]
	ldr r0, _08D9ED40 @ =gUnk_03002604
	ldr r4, [r2, #8]
	ldr r6, _08D9ED44 @ =gUnk_03001E50
	ldr r5, _08D9ED48 @ =gUnk_03002934
	cmp r1, #0
	bge _08D9ED4C
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r2, r0, r1
	lsls r0, r4, #0x16
	b _08D9ED56
	.align 2, 0
_08D9ED40: .4byte gUnk_03002604
_08D9ED44: .4byte gUnk_03001E50
_08D9ED48: .4byte gUnk_03002934
_08D9ED4C:
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r2, r0, r1
	lsls r0, r4, #0x15
_08D9ED56:
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
_08D9ED8A:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9ED94
sub_08D9ED94: @ 0x08D9ED94
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
	bne _08D9EDE2
	ldr r1, [r4, #4]
	ldr r2, _08D9EDEC @ =0x040000D4
	ldr r0, _08D9EDF0 @ =gUnk_03002604
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
	ldr r1, _08D9EDF4 @ =gUnk_03001BF0
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08D9EDF8 @ =gUnk_030013D0
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08D9EDE2:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08D9EDEC: .4byte 0x040000D4
_08D9EDF0: .4byte gUnk_03002604
_08D9EDF4: .4byte gUnk_03001BF0
_08D9EDF8: .4byte gUnk_030013D0

	thumb_func_start sub_08D9EDFC
sub_08D9EDFC: @ 0x08D9EDFC
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_08D9EE08
sub_08D9EE08: @ 0x08D9EE08
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9EE18
sub_08D9EE18: @ 0x08D9EE18
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl sub_08D9BEC8
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08D9EE2C
sub_08D9EE2C: @ 0x08D9EE2C
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _08D9EE68 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _08D9EE6C @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08D9EE70
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _08D9EED4
	.align 2, 0
_08D9EE68: .4byte 0x040000D4
_08D9EE6C: .4byte 0x84000002
_08D9EE70:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08D9EEA4
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
_08D9EEA4:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08D9EED4
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
_08D9EED4:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08D9EEDC
sub_08D9EEDC: @ 0x08D9EEDC
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

	thumb_func_start sub_08D9EEF8
sub_08D9EEF8: @ 0x08D9EEF8
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9EF04
sub_08D9EF04: @ 0x08D9EF04
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

	thumb_func_start sub_08D9EF1C
sub_08D9EF1C: @ 0x08D9EF1C
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_08D9EF24
sub_08D9EF24: @ 0x08D9EF24
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _08D9EF3C @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_08D9EF3C: .4byte 0xFFFFCFFF

	thumb_func_start sub_08D9EF40
sub_08D9EF40: @ 0x08D9EF40
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_08D9EF50
sub_08D9EF50: @ 0x08D9EF50
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
	ldr r0, _08D9F008 @ =gUnk_03005046
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl sub_08DA0490
	ldr r7, _08D9F00C @ =gUnk_0201DED4
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
	bl sub_08DA0490
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
	bl sub_08DA0490
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
	bl sub_08DA0490
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
_08D9F008: .4byte gUnk_03005046
_08D9F00C: .4byte gUnk_0201DED4

	thumb_func_start sub_08D9F010
sub_08D9F010: @ 0x08D9F010
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
	bne _08D9F02C
	b _08D9F2CA
_08D9F02C:
	lsrs r0, r2, #0x1c
	ldr r1, _08D9F0A0 @ =gUnk_03002604
	ldr r3, [sp, #0x24]
	ldrh r5, [r3, #0xc]
	add r4, sp, #0x20
	ldr r3, [r3, #8]
	ldr r6, _08D9F0A4 @ =gUnk_03005046
	mov r8, r6
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x2c]
	ldr r6, _08D9F0A8 @ =gUnk_0201DED4
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
	bne _08D9F0AC
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r5, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08D9F0BA
	.align 2, 0
_08D9F0A0: .4byte gUnk_03002604
_08D9F0A4: .4byte gUnk_03005046
_08D9F0A8: .4byte gUnk_0201DED4
_08D9F0AC:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r5, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08D9F0BA:
	movs r0, #0x1f
	ands r3, r0
	strh r3, [r4]
	ldrh r4, [r4]
	lsls r4, r4, #5
	add r4, r8
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r1, _08D9F240 @ =0x000003FF
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
	bl sub_08DA0490
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
	bl sub_08DA0490
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
	bl sub_08DA0490
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
	bl sub_08DA0490
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
	bge _08D9F198
	rsbs r0, r0, #0
	mov r1, sl
	strh r0, [r1]
_08D9F198:
	mov r2, sb
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08D9F1AA
	rsbs r0, r4, #0
	mov r6, r8
	strh r0, [r6]
_08D9F1AA:
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
	ble _08D9F244
	ldrh r5, [r7, #8]
	b _08D9F24E
	.align 2, 0
_08D9F240: .4byte 0x000003FF
_08D9F244:
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08D9F24E:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _08D9F258
	ldrh r4, [r7, #0xa]
	b _08D9F262
_08D9F258:
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08D9F262:
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
_08D9F2CA:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08D9F2DC
sub_08D9F2DC: @ 0x08D9F2DC
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
	bne _08D9F308
	b _08D9F768
_08D9F308:
	lsrs r0, r2, #0x1c
	ldr r1, _08D9F328 @ =gUnk_03002604
	ldrh r3, [r6, #0xc]
	ldr r4, [r6, #8]
	cmp r0, #0
	bne _08D9F32C
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08D9F33A
	.align 2, 0
_08D9F328: .4byte gUnk_03002604
_08D9F32C:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08D9F33A:
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
	beq _08D9F36C
	ldr r0, _08D9F3CC @ =gUnk_03001384
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
_08D9F36C:
	ldrh r3, [r7, #4]
	str r3, [sp, #8]
	ldrh r5, [r7, #6]
	str r5, [sp, #0xc]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08D9F3D0
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
	beq _08D9F43C
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
	b _08D9F43C
	.align 2, 0
_08D9F3CC: .4byte gUnk_03001384
_08D9F3D0:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08D9F3EA
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	ldr r5, [sp, #0xc]
	subs r0, r5, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	b _08D9F3F4
_08D9F3EA:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	mov r5, r8
	subs r5, r5, r0
	mov r8, r5
_08D9F3F4:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08D9F40E
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, [sp, #8]
	subs r0, r3, r0
	mov r5, sb
	subs r5, r5, r0
	mov sb, r5
	b _08D9F418
_08D9F40E:
	movs r1, #8
	ldrsh r0, [r7, r1]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
_08D9F418:
	lsrs r0, r2, #0xb
	movs r4, #1
	ands r0, r4
	ldrh r1, [r7]
	lsls r3, r1, #0x10
	lsrs r1, r3, #0x1f
	cmp r0, r1
	beq _08D9F42C
	movs r5, #1
	str r5, [sp, #0x24]
_08D9F42C:
	lsrs r1, r2, #0xa
	lsrs r0, r3, #0x1e
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08D9F43C
	movs r0, #1
	str r0, [sp, #0x28]
_08D9F43C:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08D9F466
	adds r0, r1, #0
	add r0, sb
	cmp r0, #0
	bge _08D9F44C
	b _08D9F768
_08D9F44C:
	mov r2, sb
	cmp r2, #0xf0
	ble _08D9F454
	b _08D9F768
_08D9F454:
	ldr r0, [sp, #0xc]
	add r0, r8
	cmp r0, #0
	bge _08D9F45E
	b _08D9F768
_08D9F45E:
	mov r3, r8
	cmp r3, #0xa0
	ble _08D9F466
	b _08D9F768
_08D9F466:
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
	ldr r0, _08D9F670 @ =gUnk_03002604
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _08D9F674 @ =gUnk_03001480
	ldrb r0, [r0]
	strb r0, [r6, #0x1d]
	movs r5, #0
	str r5, [sp, #0x10]
	ldrh r0, [r7, #2]
	cmp r5, r0
	blo _08D9F4B0
	b _08D9F62E
_08D9F4B0:
	ldr r2, _08D9F678 @ =0x040000D4
	ldrh r0, [r7]
	ldr r3, _08D9F67C @ =0x00003FFF
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
	ldr r0, _08D9F680 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sp
	ldrh r5, [r0, #2]
	ldr r1, _08D9F684 @ =0x000001FF
	adds r0, r1, #0
	adds r4, r0, #0
	ands r4, r5
	cmp r4, #0xff
	ble _08D9F4E8
	ldr r2, _08D9F688 @ =0xFFFFFE00
	adds r4, r4, r2
_08D9F4E8:
	mov r0, sp
	ldrb r3, [r0]
	cmp r3, #0x7f
	ble _08D9F4F4
	ldr r0, _08D9F68C @ =0xFFFFFF00
	adds r3, r3, r0
_08D9F4F4:
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
	ldr r2, _08D9F690 @ =gUnk_0201E90C
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
	beq _08D9F56C
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08D9F54E
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
_08D9F54E:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _08D9F56C
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
_08D9F56C:
	add r3, r8
	mov r5, ip
	adds r0, r3, r5
	cmp r0, #0
	blt _08D9F61C
	cmp r3, #0xa0
	bgt _08D9F61C
	add r4, sb
	mov r1, sl
	adds r0, r4, r1
	cmp r0, #0
	blt _08D9F61C
	cmp r4, #0xf0
	bgt _08D9F61C
	mov r2, sp
	mov r1, sp
	movs r0, #0xff
	ands r3, r0
	ldrh r1, [r1]
	adds r0, r3, r1
	strh r0, [r2]
	mov r1, sp
	ldr r3, _08D9F684 @ =0x000001FF
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
	beq _08D9F5E0
	ldr r0, _08D9F694 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r2, #4]
_08D9F5E0:
	mov r2, sp
	mov r1, sp
	ldr r0, [r6]
	ldr r3, _08D9F698 @ =0xF9FF0000
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
	bl sub_08D9F780
	adds r1, r0, #0
	ldr r0, _08D9F69C @ =gUnk_03005C38
	ldr r0, [r0]
	cmp r0, r1
	bne _08D9F60E
	b _08D9F768
_08D9F60E:
	ldr r0, _08D9F678 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _08D9F680 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08D9F61C:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r3, [r7, #2]
	cmp r0, r3
	bhs _08D9F62E
	b _08D9F4B0
_08D9F62E:
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08D9F638
	b _08D9F768
_08D9F638:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _08D9F646
	b _08D9F768
_08D9F646:
	ldr r0, _08D9F6A0 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	ldr r0, [r7, #0xc]
	ldr r1, _08D9F6A4 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, _08D9F670 @ =gUnk_03002604
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r3, r0, r1
	ldr r0, [r3]
	cmp r0, #0
	blt _08D9F6A8
	movs r5, #0x20
	mov sb, r5
	ldr r2, [r2, #0x10]
	b _08D9F6AE
	.align 2, 0
_08D9F670: .4byte gUnk_03002604
_08D9F674: .4byte gUnk_03001480
_08D9F678: .4byte 0x040000D4
_08D9F67C: .4byte 0x00003FFF
_08D9F680: .4byte 0x80000003
_08D9F684: .4byte 0x000001FF
_08D9F688: .4byte 0xFFFFFE00
_08D9F68C: .4byte 0xFFFFFF00
_08D9F690: .4byte gUnk_0201E90C
_08D9F694: .4byte 0x000003FF
_08D9F698: .4byte 0xF9FF0000
_08D9F69C: .4byte gUnk_03005C38
_08D9F6A0: .4byte 0xFBFFFFFF
_08D9F6A4: .4byte 0x00FFFFFF
_08D9F6A8:
	movs r1, #0x40
	mov sb, r1
	ldr r2, [r2, #0x14]
_08D9F6AE:
	mov r4, sb
	muls r0, r4, r0
	adds r5, r2, r0
	adds r3, #4
	ldr r6, [r6]
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r8, r1
	bhs _08D9F734
	ldr r0, _08D9F6E4 @ =gUnk_03001E50
	mov ip, r0
	ldr r7, _08D9F6E8 @ =gUnk_03002934
_08D9F6C8:
	ldm r3!, {r0}
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r2
	mov sl, r0
	adds r0, r5, r4
	cmp r0, sl
	bne _08D9F6EC
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08D9F724
	.align 2, 0
_08D9F6E4: .4byte gUnk_03001E50
_08D9F6E8: .4byte gUnk_03002934
_08D9F6EC:
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
_08D9F724:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [sp, #0x2c]
	cmp r8, r0
	blo _08D9F6C8
_08D9F734:
	ldr r3, _08D9F778 @ =gUnk_03001E50
	ldr r2, _08D9F77C @ =gUnk_03002934
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
_08D9F768:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9F778: .4byte gUnk_03001E50
_08D9F77C: .4byte gUnk_03002934

	thumb_func_start sub_08D9F780
sub_08D9F780: @ 0x08D9F780
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _08D9F78C
	movs r2, #0x1f
_08D9F78C:
	ldr r3, _08D9F79C @ =gUnk_03001480
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08D9F7A4
	ldr r0, _08D9F7A0 @ =gUnk_03005C38
	ldr r0, [r0]
	b _08D9F7FC
	.align 2, 0
_08D9F79C: .4byte gUnk_03001480
_08D9F7A0: .4byte gUnk_03005C38
_08D9F7A4:
	ldr r0, _08D9F7CC @ =gUnk_030013E0
	adds r5, r2, r0
	ldrb r0, [r5]
	ldr r4, _08D9F7D0 @ =gUnk_03002150
	ldrb r1, [r3]
	ldr r6, _08D9F7D4 @ =gUnk_03005010
	adds r7, r4, #0
	subs r7, #8
	cmp r0, #0xff
	bne _08D9F7D8
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r3]
	strb r0, [r5]
	adds r1, r2, r6
	ldrb r0, [r3]
	strb r0, [r1]
	b _08D9F7F0
	.align 2, 0
_08D9F7CC: .4byte gUnk_030013E0
_08D9F7D0: .4byte gUnk_03002150
_08D9F7D4: .4byte gUnk_03005010
_08D9F7D8:
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
_08D9F7F0:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r7
_08D9F7FC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08D9F804
sub_08D9F804: @ 0x08D9F804
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r6, _08D9F8B0 @ =gUnk_03005040
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r4, #0
_08D9F81A:
	ldr r1, _08D9F8B4 @ =gUnk_030013E0
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
	beq _08D9F866
	ldr r0, _08D9F8B8 @ =gUnk_03002150
	mov sb, r0
	ldr r1, _08D9F8BC @ =gUnk_03002580
	mov ip, r1
_08D9F83A:
	ldr r1, _08D9F8C0 @ =0x040000D4
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	add r3, sb
	str r3, [r1]
	str r5, [r1, #4]
	ldr r0, _08D9F8C4 @ =0x80000003
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
	bne _08D9F83A
_08D9F866:
	adds r4, #1
	cmp r4, #0x1f
	ble _08D9F81A
	ldr r7, _08D9F8C8 @ =gUnk_030013D0
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	ldr r1, _08D9F8CC @ =gUnk_03001480
	cmp r0, #0
	beq _08D9F8D8
	ldrb r4, [r1]
	lsls r0, r4, #3
	ldr r2, _08D9F8B0 @ =gUnk_03005040
	adds r5, r0, r2
	ldr r2, _08D9F8D0 @ =gUnk_03002990
	ldrb r3, [r2]
	cmp r4, r3
	bge _08D9F958
_08D9F88C:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08D9F8C0 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08D9F8D4 @ =0x81000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r5, #8
	adds r4, #1
	ldrb r0, [r2]
	cmp r4, r0
	blt _08D9F88C
	b _08D9F958
	.align 2, 0
_08D9F8B0: .4byte gUnk_03005040
_08D9F8B4: .4byte gUnk_030013E0
_08D9F8B8: .4byte gUnk_03002150
_08D9F8BC: .4byte gUnk_03002580
_08D9F8C0: .4byte 0x040000D4
_08D9F8C4: .4byte 0x80000003
_08D9F8C8: .4byte gUnk_030013D0
_08D9F8CC: .4byte gUnk_03001480
_08D9F8D0: .4byte gUnk_03002990
_08D9F8D4: .4byte 0x81000003
_08D9F8D8:
	movs r2, #0x80
	lsls r2, r2, #3
	ands r2, r3
	cmp r2, #0
	beq _08D9F954
	adds r5, r1, #0
	ldrb r0, [r5]
	subs r4, r0, #1
	movs r2, #0x7f
	cmp r4, #0
	blt _08D9F90A
_08D9F8EE:
	ldr r1, _08D9F940 @ =0x040000D4
	lsls r0, r4, #3
	adds r0, r0, r6
	str r0, [r1]
	lsls r0, r2, #3
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08D9F944 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r4, #1
	subs r2, #1
	cmp r4, #0
	bge _08D9F8EE
_08D9F90A:
	ldr r3, _08D9F948 @ =gUnk_03002990
	ldrb r1, [r5]
	movs r0, #0x80
	subs r0, r0, r1
	strb r0, [r3]
	movs r4, #0
	cmp r4, r0
	bge _08D9F958
_08D9F91A:
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08D9F940 @ =0x040000D4
	str r1, [r2]
	lsls r0, r4, #3
	ldr r1, _08D9F94C @ =gUnk_03005040
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08D9F950 @ =0x81000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blt _08D9F91A
	b _08D9F958
	.align 2, 0
_08D9F940: .4byte 0x040000D4
_08D9F944: .4byte 0x80000003
_08D9F948: .4byte gUnk_03002990
_08D9F94C: .4byte gUnk_03005040
_08D9F950: .4byte 0x81000003
_08D9F954:
	ldr r0, _08D9F98C @ =gUnk_03002990
	strb r2, [r0]
_08D9F958:
	ldr r1, _08D9F990 @ =gUnk_03001480
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	add r6, sp, #8
	cmp r0, #0
	beq _08D9F99C
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _08D9F994 @ =0x05000008
	mov r1, sl
	adds r2, r5, #0
	bl sub_08DA048C
	str r4, [sp, #8]
	ldr r1, _08D9F998 @ =gUnk_03005010
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08DA048C
	b _08D9F9BC
	.align 2, 0
_08D9F98C: .4byte gUnk_03002990
_08D9F990: .4byte gUnk_03001480
_08D9F994: .4byte 0x05000008
_08D9F998: .4byte gUnk_03005010
_08D9F99C:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _08D9F9CC @ =0x040000D4
	str r6, [r0]
	mov r2, sl
	str r2, [r0, #4]
	ldr r2, _08D9F9D0 @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	str r6, [r0]
	ldr r1, _08D9F9D4 @ =gUnk_03005010
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08D9F9BC:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08D9F9CC: .4byte 0x040000D4
_08D9F9D0: .4byte 0x85000008
_08D9F9D4: .4byte gUnk_03005010

	thumb_func_start nullsub_18
nullsub_18: @ 0x08D9F9D8
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9F9DC
sub_08D9F9DC: @ 0x08D9F9DC
	ldr r0, _08D9F9E4 @ =gUnk_03005C38
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08D9F9E4: .4byte gUnk_03005C38

	thumb_func_start nullsub_083
nullsub_083: @ 0x08D9F9E8
	bx lr
	.align 2, 0

	thumb_func_start sub_08D9F9EC
sub_08D9F9EC: @ 0x08D9F9EC
	movs r0, #0
	bx lr

	thumb_func_start sub_08D9F9F0
sub_08D9F9F0: @ 0x08D9F9F0
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _08D9FAAC @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08D9FAB0 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D9FAB4 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08D9FAB8 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08D9FABC @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _08D9FAC0 @ =gUnk_030059F0
	ldr r2, _08D9FAC4 @ =0x0500007A
	mov r0, sp
	adds r1, r4, #0
	bl sub_08DA048C
	ldr r0, _08D9FAC8 @ =gUnk_0200B78C
	ldr r1, _08D9FACC @ =gUnk_03005BE0
	ldr r2, _08D9FAD0 @ =0x04000010
	bl sub_08DA048C
	ldr r0, _08D9FAD4 @ =gUnk_0200B7CC
	ldr r1, _08D9FAD8 @ =gUnk_03005870
	ldr r2, _08D9FADC @ =0x04000060
	bl sub_08DA048C
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
_08D9FA58:
	ldr r4, _08D9FAC0 @ =gUnk_030059F0
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
	ble _08D9FA58
	ldr r3, _08D9FAAC @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08D9FAB0 @ =0x04000200
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
_08D9FAAC: .4byte 0x04000208
_08D9FAB0: .4byte 0x04000200
_08D9FAB4: .4byte 0x0000FF3F
_08D9FAB8: .4byte 0x04000134
_08D9FABC: .4byte 0x00004003
_08D9FAC0: .4byte gUnk_030059F0
_08D9FAC4: .4byte 0x0500007A
_08D9FAC8: .4byte gUnk_0200B78C
_08D9FACC: .4byte gUnk_03005BE0
_08D9FAD0: .4byte 0x04000010
_08D9FAD4: .4byte gUnk_0200B7CC
_08D9FAD8: .4byte gUnk_03005870
_08D9FADC: .4byte 0x04000060

	thumb_func_start sub_08D9FAE0
sub_08D9FAE0: @ 0x08D9FAE0
	push {lr}
	ldr r2, _08D9FAF8 @ =gUnk_030059F0
	ldrb r0, [r2]
	cmp r0, #0
	beq _08D9FAF2
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_08D9FAF2:
	pop {r0}
	bx r0
	.align 2, 0
_08D9FAF8: .4byte gUnk_030059F0

	thumb_func_start sub_08D9FAFC
sub_08D9FAFC: @ 0x08D9FAFC
	ldr r3, _08D9FB30 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08D9FB34 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08D9FB38 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08D9FB3C @ =0x04000128
	ldr r2, _08D9FB40 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08D9FB44 @ =0x0000BBBC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _08D9FB48 @ =gUnk_030059F0
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_08D9FB30: .4byte 0x04000208
_08D9FB34: .4byte 0x04000200
_08D9FB38: .4byte 0x0000FF3F
_08D9FB3C: .4byte 0x04000128
_08D9FB40: .4byte 0x00002003
_08D9FB44: .4byte 0x0000BBBC
_08D9FB48: .4byte gUnk_030059F0
