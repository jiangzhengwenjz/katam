	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08E61790
sub_08E61790: @ 0x08E61790
	push {lr}
	bl sub_08E617A4
	bl sub_08E57A64
	bl sub_08E61CD4
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E617A4
sub_08E617A4: @ 0x08E617A4
	push {r4, lr}
	sub sp, #8
	ldr r1, _08E617F4 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _08E617F8 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08E617FC @ =gUnk_03002C20
	movs r3, #0
	str r3, [r2]
	ldr r0, _08E61800 @ =gUnk_03003E50
	str r3, [r0]
	ldr r1, _08E61804 @ =gUnk_03003674
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _08E61808 @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _08E617E0
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
_08E617E0:
	ldr r0, _08E6180C @ =gUnk_03003670
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _08E61810
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	b _08E61812
	.align 2, 0
_08E617F4: .4byte 0x04000208
_08E617F8: .4byte 0x00004014
_08E617FC: .4byte gUnk_03002C20
_08E61800: .4byte gUnk_03003E50
_08E61804: .4byte gUnk_03003674
_08E61808: .4byte 0x04000134
_08E6180C: .4byte gUnk_03003670
_08E61810:
	str r3, [r2]
_08E61812:
	ldr r1, _08E61B7C @ =gUnk_03003DB4
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _08E61B80 @ =gUnk_030041E4
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08E61B84 @ =gUnk_03003F70
	strb r1, [r0]
	ldr r0, _08E61B88 @ =gUnk_03007090
	strb r1, [r0]
	ldr r0, _08E61B8C @ =gUnk_03006858
	strb r1, [r0]
	ldr r0, _08E61B90 @ =gUnk_03004184
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08E61B98 @ =gUnk_03003660
	str r0, [r1, #4]
	ldr r0, _08E61B9C @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61842:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61842
	ldr r1, _08E61BA0 @ =gUnk_03006880
	movs r0, #0
	str r0, [r1]
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E61BA4 @ =gUnk_03003E60
	str r0, [r1, #4]
	ldr r0, _08E61B9C @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61860:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61860
	ldr r0, _08E61BA8 @ =gUnk_03002BD4
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _08E61BAC @ =gUnk_03003E70
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r2]
	str r1, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E61BB0 @ =gUnk_030036A0
	str r0, [r1, #4]
	ldr r0, _08E61BB4 @ =0x850000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E6188A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E6188A
	ldr r0, _08E61BB8 @ =gUnk_03002CD0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08E61BBC @ =gUnk_030041E0
	strb r1, [r0]
	add r2, sp, #4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _08E61B94 @ =0x040000D4
	str r2, [r1]
	ldr r0, _08E61BC0 @ =gUnk_03006890
	str r0, [r1, #4]
	ldr r0, _08E61BC4 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E618B2:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E618B2
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	ldr r1, _08E61B94 @ =0x040000D4
	str r2, [r1]
	ldr r0, _08E61BC8 @ =gUnk_030039A0
	str r0, [r1, #4]
	ldr r0, _08E61BC4 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E618CE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E618CE
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E61BCC @ =gUnk_03002C30
	str r0, [r1, #4]
	ldr r0, _08E61BD0 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E618EA:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E618EA
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08E61BD4 @ =gUnk_03006860
	str r0, [r1, #4]
	ldr r0, _08E61BD0 @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61906:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61906
	ldr r1, _08E61B94 @ =0x040000D4
	ldr r0, _08E61BD8 @ =0x05000200
	str r0, [r1]
	ldr r0, _08E61BDC @ =gUnk_03003440
	str r0, [r1, #4]
	ldr r0, _08E61BE0 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E6191C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E6191C
	ldr r1, _08E61B94 @ =0x040000D4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1]
	ldr r0, _08E61BE4 @ =gUnk_03003F80
	str r0, [r1, #4]
	ldr r0, _08E61BE0 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61934:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61934
	ldr r0, _08E61BE8 @ =gUnk_03002D00
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
	ldr r0, _08E61BEC @ =gUnk_03002CF4
	strb r3, [r0]
	ldr r0, _08E61BF0 @ =gUnk_03002D24
	strh r1, [r0]
	ldr r0, _08E61BF4 @ =gUnk_03002BD0
	strh r2, [r0]
	ldr r0, _08E61BF8 @ =gUnk_03007094
	strh r2, [r0]
	ldr r0, _08E61BFC @ =gUnk_0300418C
	strh r1, [r0]
	ldr r0, _08E61C00 @ =gUnk_03006854
	strh r1, [r0]
	ldr r0, _08E61C04 @ =gUnk_03002D2C
	strh r1, [r0]
	ldr r0, _08E61C08 @ =gUnk_03003E5C
	strh r1, [r0]
	ldr r0, _08E61C0C @ =gUnk_03007098
	strh r2, [r0]
	ldr r0, _08E61C10 @ =gUnk_03003650
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _08E61C14 @ =gUnk_03002CC8
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08E61C18 @ =gUnk_030070B8
	str r1, [r0]
_08E6199A:
	ldr r2, _08E61C1C @ =gUnk_03003DC0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	movs r1, #0x14
	strb r1, [r2]
	ldr r1, _08E61C20 @ =gUnk_03003E80
	adds r1, r0, r1
	movs r2, #8
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _08E6199A
	ldr r1, _08E61C24 @ =gUnk_03003644
	movs r0, #0
	str r0, [r1]
	movs r1, #0
_08E619C2:
	ldr r3, _08E61C28 @ =gUnk_03001F90
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r3, r1, r3
	ldr r2, _08E61C2C @ =gUnk_02027D40
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _08E619C2
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _08E61C30 @ =gUnk_03002F40
	str r2, [r1, #4]
	ldr r0, _08E61C34 @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E619F4:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E619F4
	ldr r0, _08E61C38 @ =gUnk_03002C64
	str r2, [r0]
	ldr r1, _08E61C3C @ =gUnk_0300368C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _08E61C40 @ =gUnk_03003EA8
	movs r1, #0
	str r1, [r0]
	ldr r0, _08E61C44 @ =gUnk_03004180
	strb r1, [r0]
	ldr r0, _08E61C48 @ =gUnk_03002C6C
	strb r1, [r0]
	ldr r0, _08E61C4C @ =gUnk_03002CC4
	strb r1, [r0]
	str r1, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E61C50 @ =gUnk_03003DA0
	str r0, [r1, #4]
	ldr r0, _08E61B9C @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61A2C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61A2C
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E61C54 @ =gUnk_030041F0
	str r0, [r1, #4]
	ldr r0, _08E61B9C @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61A46:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61A46
	ldr r0, _08E61C58 @ =gUnk_03006850
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08E61C5C @ =gUnk_03002D28
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _08E61C60 @ =gUnk_03002C50
	str r0, [r1, #4]
	ldr r0, _08E61B9C @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61A6A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61A6A
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E61C64 @ =gUnk_030070A0
	str r0, [r1, #4]
	ldr r0, _08E61B9C @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61A84:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61A84
	bl sub_08E6029C
	ldr r0, _08E61C68 @ =0x0095FA00
	bl sub_08E60838
	bl sub_08E60314
	ldr r1, _08E61C6C @ =gUnk_030070B4
	movs r0, #1
	strb r0, [r1]
	bl sub_08E625AC
	ldr r1, _08E61C70 @ =gUnk_03002C68
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08E61C74 @ =gUnk_03002D20
	ldr r0, _08E61C78 @ =0x06014000
	str r0, [r1]
	bl nullsub_20
	ldr r2, _08E61C7C @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08E61B94 @ =0x040000D4
	ldr r0, _08E61C80 @ =gUnk_020000FC
	str r0, [r1]
	ldr r2, _08E61C84 @ =gUnk_03001FD0
	str r2, [r1, #4]
	ldr r0, _08E61BE0 @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61AD2:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61AD2
	ldr r0, _08E61C88 @ =gUnk_03007FFC
	str r2, [r0]
	ldr r2, _08E61C8C @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r1, _08E61C90 @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _08E61C94 @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _08E61B06
	ldr r0, _08E61C98 @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _08E61C9C @ =0x454B3842
	cmp r1, r0
	bne _08E61B06
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_08E61B06:
	ldr r1, _08E61CA0 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _08E61CA4 @ =gUnk_03003E90
	str r0, [r1, #4]
	ldr r0, _08E61CA8 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61B20:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61B20
	movs r0, #0
	str r0, [sp]
	ldr r1, _08E61B94 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _08E61CAC @ =gUnk_03002C70
	str r0, [r1, #4]
	ldr r0, _08E61CB0 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61B3A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61B3A
	ldr r0, _08E61CB4 @ =gUnk_03002D34
	movs r4, #0
	str r4, [r0]
	ldr r0, _08E61CB8 @ =gUnk_03002D38
	strb r4, [r0]
	movs r0, #0
	bl sub_08E63E48
	ldr r0, _08E61CBC @ =gUnk_0300685C
	strb r4, [r0]
	ldr r0, _08E61CC0 @ =gUnk_03002CC0
	str r4, [r0]
	ldr r0, _08E61CC4 @ =gUnk_03002D30
	strb r4, [r0]
	ldr r1, _08E61B94 @ =0x040000D4
	ldr r0, _08E61CC8 @ =0x04000008
	str r0, [r1]
	ldr r0, _08E61CCC @ =gUnk_03003690
	str r0, [r1, #4]
	ldr r0, _08E61CD0 @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_08E61B6C:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E61B6C
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E61B7C: .4byte gUnk_03003DB4
_08E61B80: .4byte gUnk_030041E4
_08E61B84: .4byte gUnk_03003F70
_08E61B88: .4byte gUnk_03007090
_08E61B8C: .4byte gUnk_03006858
_08E61B90: .4byte gUnk_03004184
_08E61B94: .4byte 0x040000D4
_08E61B98: .4byte gUnk_03003660
_08E61B9C: .4byte 0x85000004
_08E61BA0: .4byte gUnk_03006880
_08E61BA4: .4byte gUnk_03003E60
_08E61BA8: .4byte gUnk_03002BD4
_08E61BAC: .4byte gUnk_03003E70
_08E61BB0: .4byte gUnk_030036A0
_08E61BB4: .4byte 0x850000C0
_08E61BB8: .4byte gUnk_03002CD0
_08E61BBC: .4byte gUnk_030041E0
_08E61BC0: .4byte gUnk_03006890
_08E61BC4: .4byte 0x81000200
_08E61BC8: .4byte gUnk_030039A0
_08E61BCC: .4byte gUnk_03002C30
_08E61BD0: .4byte 0x85000008
_08E61BD4: .4byte gUnk_03006860
_08E61BD8: .4byte 0x05000200
_08E61BDC: .4byte gUnk_03003440
_08E61BE0: .4byte 0x84000080
_08E61BE4: .4byte gUnk_03003F80
_08E61BE8: .4byte gUnk_03002D00
_08E61BEC: .4byte gUnk_03002CF4
_08E61BF0: .4byte gUnk_03002D24
_08E61BF4: .4byte gUnk_03002BD0
_08E61BF8: .4byte gUnk_03007094
_08E61BFC: .4byte gUnk_0300418C
_08E61C00: .4byte gUnk_03006854
_08E61C04: .4byte gUnk_03002D2C
_08E61C08: .4byte gUnk_03003E5C
_08E61C0C: .4byte gUnk_03007098
_08E61C10: .4byte gUnk_03003650
_08E61C14: .4byte gUnk_03002CC8
_08E61C18: .4byte gUnk_030070B8
_08E61C1C: .4byte gUnk_03003DC0
_08E61C20: .4byte gUnk_03003E80
_08E61C24: .4byte gUnk_03003644
_08E61C28: .4byte gUnk_03001F90
_08E61C2C: .4byte gUnk_02027D40
_08E61C30: .4byte gUnk_03002F40
_08E61C34: .4byte 0x85000140
_08E61C38: .4byte gUnk_03002C64
_08E61C3C: .4byte gUnk_0300368C
_08E61C40: .4byte gUnk_03003EA8
_08E61C44: .4byte gUnk_03004180
_08E61C48: .4byte gUnk_03002C6C
_08E61C4C: .4byte gUnk_03002CC4
_08E61C50: .4byte gUnk_03003DA0
_08E61C54: .4byte gUnk_030041F0
_08E61C58: .4byte gUnk_03006850
_08E61C5C: .4byte gUnk_03002D28
_08E61C60: .4byte gUnk_03002C50
_08E61C64: .4byte gUnk_030070A0
_08E61C68: .4byte 0x0095FA00
_08E61C6C: .4byte gUnk_030070B4
_08E61C70: .4byte gUnk_03002C68
_08E61C74: .4byte gUnk_03002D20
_08E61C78: .4byte 0x06014000
_08E61C7C: .4byte gUnk_03002C20
_08E61C80: .4byte gUnk_020000FC
_08E61C84: .4byte gUnk_03001FD0
_08E61C88: .4byte gUnk_03007FFC
_08E61C8C: .4byte 0x04000200
_08E61C90: .4byte 0x04000004
_08E61C94: .4byte 0x080000B2
_08E61C98: .4byte 0x080000AC
_08E61C9C: .4byte 0x454B3842
_08E61CA0: .4byte 0x04000208
_08E61CA4: .4byte gUnk_03003E90
_08E61CA8: .4byte 0x85000005
_08E61CAC: .4byte gUnk_03002C70
_08E61CB0: .4byte 0x85000014
_08E61CB4: .4byte gUnk_03002D34
_08E61CB8: .4byte gUnk_03002D38
_08E61CBC: .4byte gUnk_0300685C
_08E61CC0: .4byte gUnk_03002CC0
_08E61CC4: .4byte gUnk_03002D30
_08E61CC8: .4byte 0x04000008
_08E61CCC: .4byte gUnk_03003690
_08E61CD0: .4byte 0x80000004

	thumb_func_start sub_08E61CD4
sub_08E61CD4: @ 0x08E61CD4
	push {r4, r5, lr}
_08E61CD6:
	ldr r1, _08E61D34 @ =gUnk_030070B4
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08E61D38 @ =gUnk_03002C20
	ldr r0, [r1]
	ldr r2, _08E61D3C @ =0xFEFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r1, _08E61D40 @ =gUnk_03003E50
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r0, _08E61D44 @ =gUnk_03003DB4
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08E61D62
	bl sub_08E624E8
	ldr r0, _08E61D48 @ =gUnk_03002D38
	ldrb r0, [r0]
	cmp r0, #0
	beq _08E61D20
	bl sub_08E57D08
	ldr r0, _08E61D4C @ =gUnk_03003E90
	ldr r1, _08E61D50 @ =gUnk_03002C70
	movs r2, #0
	bl sub_08E63FA4
	ldr r1, _08E61D54 @ =gUnk_03002D34
	str r0, [r1]
	bl sub_08E57E38
	cmp r0, #0
	bne _08E61D20
	bl sub_08E589F8
_08E61D20:
	ldr r0, _08E61D58 @ =gUnk_03000AB0
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _08E61D5C
	bl sub_08E62888
	b _08E61D62
	.align 2, 0
_08E61D34: .4byte gUnk_030070B4
_08E61D38: .4byte gUnk_03002C20
_08E61D3C: .4byte 0xFEFFFFFF
_08E61D40: .4byte gUnk_03003E50
_08E61D44: .4byte gUnk_03003DB4
_08E61D48: .4byte gUnk_03002D38
_08E61D4C: .4byte gUnk_03003E90
_08E61D50: .4byte gUnk_03002C70
_08E61D54: .4byte gUnk_03002D34
_08E61D58: .4byte gUnk_03000AB0
_08E61D5C:
	ldr r1, _08E61DA8 @ =gUnk_03003DB4
	movs r0, #0
	strb r0, [r1]
_08E61D62:
	ldr r4, _08E61DAC @ =gUnk_03002C20
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	ldr r1, _08E61DB0 @ =gUnk_03003E50
	str r0, [r1]
	bl sub_08E648F8
	ldr r1, _08E61DB4 @ =gUnk_03002CF4
	movs r0, #0
	strb r0, [r1]
	bl sub_08E61DF8
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	bne _08E61D9A
	bl sub_08E620E0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _08E61DB8
_08E61D9A:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	b _08E61DBE
	.align 2, 0
_08E61DA8: .4byte gUnk_03003DB4
_08E61DAC: .4byte gUnk_03002C20
_08E61DB0: .4byte gUnk_03003E50
_08E61DB4: .4byte gUnk_03002CF4
_08E61DB8:
	ldr r0, _08E61DEC @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r4]
_08E61DBE:
	ldr r0, _08E61DF0 @ =gUnk_03002C20
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _08E61DD0
	bl sub_08E60314
_08E61DD0:
	ldr r0, _08E61DF4 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E61DDE
	b _08E61CD6
_08E61DDE:
	ldr r0, _08E61DF4 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E61DDE
	b _08E61CD6
	.align 2, 0
_08E61DEC: .4byte 0xFFFFF7FF
_08E61DF0: .4byte gUnk_03002C20
_08E61DF4: .4byte 0x04000004

	thumb_func_start sub_08E61DF8
sub_08E61DF8: @ 0x08E61DF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _08E61EEC @ =gUnk_03003E70
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _08E61EF0 @ =0x040000D4
	ldr r0, _08E61EF4 @ =gUnk_03003690
	str r0, [r3]
	ldr r0, _08E61EF8 @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _08E61EFC @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _08E61F00 @ =gUnk_03002C20
	ldr r1, [r5]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r6, _08E61F04 @ =gUnk_03003650
	ldr r7, _08E61F08 @ =gUnk_03003E60
	mov ip, r7
	ldr r7, _08E61F0C @ =gUnk_03002D00
	mov r8, r7
	ldr r7, _08E61F10 @ =gUnk_03002CC4
	mov sb, r7
	ldr r7, _08E61F14 @ =gUnk_03003DB4
	mov sl, r7
	cmp r0, #0
	beq _08E61E54
	ldr r0, _08E61F18 @ =gUnk_03003F80
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _08E61F1C @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08E61E54:
	ldr r1, [r5]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08E61E72
	ldr r0, _08E61F20 @ =gUnk_03003440
	str r0, [r3]
	ldr r0, _08E61F24 @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _08E61F1C @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_08E61E72:
	str r6, [r3]
	ldr r0, _08E61F28 @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _08E61F2C @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08E61F30 @ =gUnk_03002CC8
	str r0, [r3]
	ldr r0, _08E61F34 @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _08E61F38 @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	str r1, [r3]
	ldr r0, _08E61F3C @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _08E61F40 @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r7, r8
	str r7, [r3]
	ldr r0, _08E61F44 @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _08E61F48 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r5]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _08E61F60
	ldr r2, _08E61F4C @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r4, _08E61F50 @ =gUnk_030041F0
	str r4, [r3, #4]
	ldr r0, _08E61F54 @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _08E61F58 @ =gUnk_03002C6C
	ldrb r2, [r1]
	cmp r2, #0
	beq _08E61EE6
	ldr r0, _08E61F5C @ =gUnk_03003DA0
	str r0, [r3]
	str r4, [r3, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_08E61EE6:
	mov r1, sb
	strb r2, [r1]
	b _08E61F6E
	.align 2, 0
_08E61EEC: .4byte gUnk_03003E70
_08E61EF0: .4byte 0x040000D4
_08E61EF4: .4byte gUnk_03003690
_08E61EF8: .4byte 0x04000008
_08E61EFC: .4byte 0x84000002
_08E61F00: .4byte gUnk_03002C20
_08E61F04: .4byte gUnk_03003650
_08E61F08: .4byte gUnk_03003E60
_08E61F0C: .4byte gUnk_03002D00
_08E61F10: .4byte gUnk_03002CC4
_08E61F14: .4byte gUnk_03003DB4
_08E61F18: .4byte gUnk_03003F80
_08E61F1C: .4byte 0x84000080
_08E61F20: .4byte gUnk_03003440
_08E61F24: .4byte 0x05000200
_08E61F28: .4byte 0x04000040
_08E61F2C: .4byte 0x84000003
_08E61F30: .4byte gUnk_03002CC8
_08E61F34: .4byte 0x04000050
_08E61F38: .4byte 0x80000003
_08E61F3C: .4byte 0x04000010
_08E61F40: .4byte 0x80000008
_08E61F44: .4byte 0x04000020
_08E61F48: .4byte 0x84000008
_08E61F4C: .4byte 0x04000200
_08E61F50: .4byte gUnk_030041F0
_08E61F54: .4byte 0x85000004
_08E61F58: .4byte gUnk_03002C6C
_08E61F5C: .4byte gUnk_03003DA0
_08E61F60:
	ldr r2, _08E61FE8 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E61FEC @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	mov r7, sb
	strb r4, [r7]
_08E61F6E:
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08E61F96
	ldr r2, _08E61FF0 @ =0x040000D4
	ldr r0, _08E61FF4 @ =gUnk_03002C64
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _08E61FF8 @ =gUnk_03003EA8
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _08E61FFC @ =gUnk_03004180
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08E61F96:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08E61FE4
	bl sub_08E63C5C
	ldr r0, _08E61FF0 @ =0x040000D4
	ldr r3, _08E62000 @ =gUnk_03006890
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _08E62004 @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08E62008 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r3, r7
	str r1, [r0]
	ldr r1, _08E6200C @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _08E62010 @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08E61FE4:
	movs r4, #0
	b _08E62026
	.align 2, 0
_08E61FE8: .4byte 0x04000200
_08E61FEC: .4byte 0x0000FFFD
_08E61FF0: .4byte 0x040000D4
_08E61FF4: .4byte gUnk_03002C64
_08E61FF8: .4byte gUnk_03003EA8
_08E61FFC: .4byte gUnk_03004180
_08E62000: .4byte gUnk_03006890
_08E62004: .4byte 0x80000080
_08E62008: .4byte 0x07000100
_08E6200C: .4byte 0x07000200
_08E62010: .4byte 0x07000300
_08E62014:
	ldr r1, _08E62074 @ =gUnk_030070A0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08E64900
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08E62026:
	ldr r0, _08E62078 @ =gUnk_03002D28
	ldrb r0, [r0]
	cmp r4, r0
	blo _08E62014
	ldr r0, _08E6207C @ =gUnk_03002C20
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r7, _08E62080 @ =gUnk_03003DB4
	mov sl, r7
	ldr r5, _08E62078 @ =gUnk_03002D28
	cmp r1, #0
	beq _08E62094
	movs r0, #0
	str r0, [sp]
	ldr r2, _08E62084 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r4, _08E62074 @ =gUnk_030070A0
	str r4, [r2, #4]
	ldr r0, _08E62088 @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _08E6208C @ =gUnk_03006850
	ldrb r3, [r1]
	cmp r3, #0
	beq _08E6206E
	ldr r0, _08E62090 @ =gUnk_03002C50
	str r0, [r2]
	str r4, [r2, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08E6206E:
	strb r3, [r5]
	b _08E62096
	.align 2, 0
_08E62074: .4byte gUnk_030070A0
_08E62078: .4byte gUnk_03002D28
_08E6207C: .4byte gUnk_03002C20
_08E62080: .4byte gUnk_03003DB4
_08E62084: .4byte 0x040000D4
_08E62088: .4byte 0x85000004
_08E6208C: .4byte gUnk_03006850
_08E62090: .4byte gUnk_03002C50
_08E62094:
	strb r1, [r5]
_08E62096:
	mov r1, sl
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _08E620A0
	movs r4, #0
_08E620A0:
	movs r0, #0xff
	mov r7, sl
	strb r0, [r7]
	b _08E620AE
_08E620A8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08E620AE:
	cmp r4, #1
	bhi _08E620C6
	ldr r1, _08E620D8 @ =gUnk_02027D78
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl sub_08E64900
	cmp r0, #0
	bne _08E620A8
	ldr r0, _08E620DC @ =gUnk_03003DB4
	strb r4, [r0]
_08E620C6:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E620D8: .4byte gUnk_02027D78
_08E620DC: .4byte gUnk_03003DB4

	thumb_func_start sub_08E620E0
sub_08E620E0: @ 0x08E620E0
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _08E62118 @ =gUnk_03002C6C
	movs r0, #0
	strb r0, [r1]
	ldr r5, _08E6211C @ =gUnk_03002C20
	ldr r0, [r5]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _08E62136
	ldr r2, _08E62120 @ =gUnk_03002C64
	ldr r0, [r2]
	ldr r1, _08E62124 @ =gUnk_03002F40
	ldr r3, _08E62128 @ =gUnk_0300368C
	cmp r0, r1
	bne _08E6212C
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r1, r4
	str r0, [r2]
	str r1, [r3]
	b _08E62136
	.align 2, 0
_08E62118: .4byte gUnk_03002C6C
_08E6211C: .4byte gUnk_03002C20
_08E62120: .4byte gUnk_03002C64
_08E62124: .4byte gUnk_03002F40
_08E62128: .4byte gUnk_0300368C
_08E6212C:
	str r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r3]
_08E62136:
	ldr r4, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _08E621A8 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _08E621AC @ =gUnk_03006890
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _08E621B0 @ =0x81000080
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
	ldr r1, _08E621B4 @ =gUnk_03006850
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
_08E621A8: .4byte 0x040000D4
_08E621AC: .4byte gUnk_03006890
_08E621B0: .4byte 0x81000080
_08E621B4: .4byte gUnk_03006850

	thumb_func_start sub_08E621B8
sub_08E621B8: @ 0x08E621B8
	push {r4, r5, r6, lr}
	ldr r4, _08E62234 @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _08E62238 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _08E6223C @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl sub_08E5FC40
	ldr r1, _08E62240 @ =gUnk_03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _08E62244 @ =gUnk_030070B4
	strb r2, [r0]
	ldr r6, _08E62248 @ =gUnk_03003E50
	ldr r3, [r6]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _08E62260
	ldr r2, _08E6224C @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
_08E621F8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _08E621F8
	ldr r2, _08E62234 @ =0x040000B0
	ldr r0, _08E62250 @ =gUnk_03002C64
	ldr r4, [r0]
	str r4, [r2]
	ldr r0, _08E62254 @ =gUnk_03003EA8
	ldr r5, [r0]
	str r5, [r2, #4]
	ldr r3, _08E62258 @ =gUnk_03004180
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
	ldr r1, _08E6225C @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08E62274
	.align 2, 0
_08E62234: .4byte 0x040000B0
_08E62238: .4byte 0x0000C5FF
_08E6223C: .4byte 0x00007FFF
_08E62240: .4byte gUnk_03007FF8
_08E62244: .4byte gUnk_030070B4
_08E62248: .4byte gUnk_03003E50
_08E6224C: .4byte 0x04000200
_08E62250: .4byte gUnk_03002C64
_08E62254: .4byte gUnk_03003EA8
_08E62258: .4byte gUnk_03004180
_08E6225C: .4byte 0xA2600000
_08E62260:
	ldr r4, _08E622B8 @ =gUnk_03003EA8
	ldr r0, [r4]
	cmp r0, #0
	beq _08E62274
	ldr r2, _08E622BC @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E622C0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_08E62274:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08E622D0
	ldr r2, _08E622C4 @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _08E622C8 @ =gUnk_03003EA4
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _08E622CC @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _08E622BC @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _08E622EC
	.align 2, 0
_08E622B8: .4byte gUnk_03003EA8
_08E622BC: .4byte 0x04000200
_08E622C0: .4byte 0x0000FFFD
_08E622C4: .4byte 0x04000004
_08E622C8: .4byte gUnk_03003EA4
_08E622CC: .4byte 0x0000FFFB
_08E622D0:
	ldr r2, _08E62324 @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _08E62328 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _08E6232C @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _08E62330 @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_08E622EC:
	ldr r0, _08E62334 @ =gUnk_03002D38
	ldrb r0, [r0]
	cmp r0, #1
	beq _08E6230E
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _08E6230E
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	bne _08E6230E
	bl sub_08E60314
_08E6230E:
	ldr r1, _08E62338 @ =gUnk_03003644
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08E6233C @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E62324: .4byte 0x04000004
_08E62328: .4byte 0x0000FFFB
_08E6232C: .4byte 0x0000FFDF
_08E62330: .4byte 0x04000200
_08E62334: .4byte gUnk_03002D38
_08E62338: .4byte gUnk_03003644
_08E6233C: .4byte 0x04000202

	thumb_func_start sub_08E62340
sub_08E62340: @ 0x08E62340
	push {r4, r5, lr}
	ldr r0, _08E62350 @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _08E62370
	movs r4, #0
	b _08E62368
	.align 2, 0
_08E62350: .4byte 0x04000006
_08E62354:
	ldr r1, _08E6237C @ =gUnk_030041F0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl sub_08E64904
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_08E62368:
	ldr r0, _08E62380 @ =gUnk_03002CC4
	ldrb r0, [r0]
	cmp r4, r0
	blo _08E62354
_08E62370:
	ldr r1, _08E62384 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E6237C: .4byte gUnk_030041F0
_08E62380: .4byte gUnk_03002CC4
_08E62384: .4byte 0x04000202

	thumb_func_start sub_08E62388
sub_08E62388: @ 0x08E62388
	ldr r1, _08E62390 @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E62390: .4byte 0x04000202

	thumb_func_start sub_08E62394
sub_08E62394: @ 0x08E62394
	ldr r1, _08E6239C @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E6239C: .4byte 0x04000202

	thumb_func_start sub_08E623A0
sub_08E623A0: @ 0x08E623A0
	ldr r1, _08E623A8 @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E623A8: .4byte 0x04000202

	thumb_func_start sub_08E623AC
sub_08E623AC: @ 0x08E623AC
	ldr r1, _08E623B4 @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E623B4: .4byte 0x04000202

	thumb_func_start sub_08E623B8
sub_08E623B8: @ 0x08E623B8
	ldr r1, _08E623C0 @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E623C0: .4byte 0x04000202

	thumb_func_start sub_08E623C4
sub_08E623C4: @ 0x08E623C4
	ldr r1, _08E623D0 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E623D0: .4byte 0x04000202

	thumb_func_start sub_08E623D4
sub_08E623D4: @ 0x08E623D4
	ldr r1, _08E623E0 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E623E0: .4byte 0x04000202

	thumb_func_start sub_08E623E4
sub_08E623E4: @ 0x08E623E4
	ldr r1, _08E623F0 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E623F0: .4byte 0x04000202

	thumb_func_start sub_08E623F4
sub_08E623F4: @ 0x08E623F4
	ldr r1, _08E62400 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E62400: .4byte 0x04000202

	thumb_func_start sub_08E62404
sub_08E62404: @ 0x08E62404
	ldr r1, _08E62410 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E62410: .4byte 0x04000202

	thumb_func_start sub_08E62414
sub_08E62414: @ 0x08E62414
	ldr r1, _08E62420 @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_08E62420: .4byte 0x04000202

	thumb_func_start nullsub_38
nullsub_38: @ 0x08E62424
	bx lr
	.align 2, 0

	thumb_func_start sub_08E62428
sub_08E62428: @ 0x08E62428
	push {r4, r5, r6, r7, lr}
	ldr r0, _08E62474 @ =gUnk_03006858
	ldr r7, _08E62478 @ =gUnk_03004184
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _08E624DE
_08E62436:
	ldr r6, _08E62474 @ =gUnk_03006858
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08E6247C @ =gUnk_030036A0
	adds r3, r1, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	beq _08E624B6
	movs r5, #0
_08E6244C:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r4, [r3]
	cmp r1, r0
	bls _08E6248C
	ldr r1, _08E62480 @ =0x040000D4
	adds r0, r4, r5
	str r0, [r1]
	ldr r0, [r3, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _08E62484 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _08E62488 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	b _08E624A8
	.align 2, 0
_08E62474: .4byte gUnk_03006858
_08E62478: .4byte gUnk_03004184
_08E6247C: .4byte gUnk_030036A0
_08E62480: .4byte 0x040000D4
_08E62484: .4byte 0x80000200
_08E62488: .4byte 0xFFFFFC00
_08E6248C:
	ldr r2, _08E624D0 @ =0x040000D4
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
_08E624A8:
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	bne _08E6244C
_08E624B6:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _08E624D4 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08E624D8
	movs r0, #0
	b _08E624E0
	.align 2, 0
_08E624D0: .4byte 0x040000D4
_08E624D4: .4byte 0x04000004
_08E624D8:
	ldrb r1, [r7]
	cmp r2, r1
	bne _08E62436
_08E624DE:
	movs r0, #1
_08E624E0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E624E8
sub_08E624E8: @ 0x08E624E8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08E62548 @ =gUnk_03003680
	mov r8, r0
	ldr r1, _08E6254C @ =gUnk_03003DC0
	mov ip, r1
	ldr r2, _08E62550 @ =gUnk_03003E80
	mov sb, r2
	ldr r0, _08E62554 @ =gUnk_03004188
	ldr r6, _08E62558 @ =gUnk_03003670
	ldrh r3, [r6]
	strh r3, [r0]
	ldr r0, _08E6255C @ =0x04000130
	ldrh r0, [r0]
	ldr r7, _08E62560 @ =0x000003FF
	adds r1, r7, #0
	bics r1, r0
	strh r1, [r6]
	ldr r0, _08E62564 @ =gUnk_03002C60
	strh r1, [r0]
	ldr r4, _08E62568 @ =gUnk_030041DC
	adds r0, r1, #0
	eors r0, r3
	adds r2, r0, #0
	ands r2, r1
	strh r2, [r4]
	ldr r1, _08E6256C @ =gUnk_03003DCC
	ands r0, r3
	strh r0, [r1]
	ldr r5, _08E62570 @ =gUnk_03003698
	strh r2, [r5]
	movs r1, #0
_08E6252C:
	ldrh r0, [r6]
	lsls r4, r1, #0x18
	asrs r2, r4, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	mov r7, r8
	adds r3, r7, r2
	cmp r0, #0
	bne _08E62574
	mov r1, ip
	adds r0, r1, r2
	b _08E6258C
	.align 2, 0
_08E62548: .4byte gUnk_03003680
_08E6254C: .4byte gUnk_03003DC0
_08E62550: .4byte gUnk_03003E80
_08E62554: .4byte gUnk_03004188
_08E62558: .4byte gUnk_03003670
_08E6255C: .4byte 0x04000130
_08E62560: .4byte 0x000003FF
_08E62564: .4byte gUnk_03002C60
_08E62568: .4byte gUnk_030041DC
_08E6256C: .4byte gUnk_03003DCC
_08E62570: .4byte gUnk_03003698
_08E62574:
	ldrb r0, [r3]
	cmp r0, #0
	beq _08E6257E
	subs r0, #1
	b _08E6258E
_08E6257E:
	adds r0, r1, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r7, sb
	adds r0, r7, r2
_08E6258C:
	ldrb r0, [r0]
_08E6258E:
	strb r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r4, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _08E6252C
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E625AC
sub_08E625AC: @ 0x08E625AC
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _08E62648 @ =gUnk_03003DB0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08E6264C @ =gUnk_0300369C
	str r1, [r0]
	ldr r0, _08E62650 @ =gUnk_0300365C
	str r1, [r0]
	ldr r0, _08E62654 @ =gUnk_03003678
	str r1, [r0]
	str r1, [sp]
	ldr r1, _08E62658 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _08E6265C @ =gUnk_030021D0
	str r4, [r1, #4]
	ldr r0, _08E62660 @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	movs r3, #0
_08E625D8:
	ldr r0, _08E62664 @ =gUnk_03002D40
	lsls r1, r2, #2
	adds r1, r1, r0
	adds r0, r3, r4
	str r0, [r1]
	adds r3, #0x14
	adds r2, #1
	cmp r2, #0x7f
	ble _08E625D8
	bl sub_08E62690
	adds r4, r0, #0
	cmp r4, #0
	beq _08E62684
	ldr r0, _08E62668 @ =gUnk_0200B2A1
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl sub_08E62690
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08E62684
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _08E6266C @ =gUnk_0200B2A5
	str r0, [r4, #8]
	ldr r0, _08E62670 @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _08E62674 @ =gUnk_03002CE0
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _08E62678 @ =gUnk_03007488
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _08E6267C @ =gUnk_03004200
	strh r5, [r1]
	ldr r0, _08E62680 @ =0x00002604
	strh r0, [r1, #2]
	movs r0, #1
	b _08E62686
	.align 2, 0
_08E62648: .4byte gUnk_03003DB0
_08E6264C: .4byte gUnk_0300369C
_08E62650: .4byte gUnk_0300365C
_08E62654: .4byte gUnk_03003678
_08E62658: .4byte 0x040000D4
_08E6265C: .4byte gUnk_030021D0
_08E62660: .4byte 0x85000080
_08E62664: .4byte gUnk_03002D40
_08E62668: .4byte gUnk_0200B2A1
_08E6266C: .4byte gUnk_0200B2A5
_08E62670: .4byte 0x0000FFFF
_08E62674: .4byte gUnk_03002CE0
_08E62678: .4byte gUnk_03007488
_08E6267C: .4byte gUnk_03004200
_08E62680: .4byte 0x00002604
_08E62684:
	movs r0, #0
_08E62686:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E62690
sub_08E62690: @ 0x08E62690
	push {lr}
	ldr r3, _08E626A8 @ =gUnk_0300365C
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _08E626B0
	ldr r1, _08E626AC @ =gUnk_03002D40
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _08E626B2
	.align 2, 0
_08E626A8: .4byte gUnk_0300365C
_08E626AC: .4byte gUnk_03002D40
_08E626B0:
	movs r0, #0
_08E626B2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E626B8
sub_08E626B8: @ 0x08E626B8
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
	bl sub_08E62690
	adds r4, r0, #0
	cmp r4, #0
	bne _08E626E0
	ldr r0, _08E626DC @ =gUnk_03002CE0
	b _08E62750
	.align 2, 0
_08E626DC: .4byte gUnk_03002CE0
_08E626E0:
	str r7, [r4, #8]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	mov r0, r8
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r6, #0
	bl sub_08E6296C
	strh r0, [r4, #6]
	ldr r0, _08E62734 @ =gUnk_03003DB0
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _08E62738 @ =gUnk_03002D40
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r1
	beq _08E6274E
	ldr r6, _08E6273C @ =gUnk_0300369C
_08E6270C:
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r2, r5
	ldrh r0, [r1, #0x10]
	cmp r0, r8
	bls _08E62740
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
	bne _08E6274E
	str r4, [r6]
	b _08E6274E
	.align 2, 0
_08E62734: .4byte gUnk_03003DB0
_08E62738: .4byte gUnk_03002D40
_08E6273C: .4byte gUnk_0300369C
_08E62740:
	adds r3, r1, #0
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r5
	bne _08E6270C
_08E6274E:
	adds r0, r4, #0
_08E62750:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E6275C
sub_08E6275C: @ 0x08E6275C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08E627B0 @ =gUnk_03002D40
	ldr r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _08E627C4
_08E62770:
	ldrh r0, [r1, #0x10]
	cmp r0, r2
	blo _08E627B8
_08E62776:
	ldrh r0, [r1, #0x10]
	ldr r2, _08E627B4 @ =gUnk_03003678
	cmp r0, r4
	bhs _08E627A8
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	str r0, [r2]
	ldr r2, _08E627B0 @ =gUnk_03002D40
	ldr r0, [r2]
	cmp r1, r0
	beq _08E6279C
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _08E6279C
	adds r0, r1, #0
	bl sub_08E627D4
_08E6279C:
	ldr r2, _08E627B4 @ =gUnk_03003678
	ldr r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08E62776
_08E627A8:
	movs r0, #0
	str r0, [r2]
	b _08E627CA
	.align 2, 0
_08E627B0: .4byte gUnk_03002D40
_08E627B4: .4byte gUnk_03003678
_08E627B8:
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r0, r3
	cmp r0, #0
	bne _08E62770
_08E627C4:
	ldr r1, _08E627D0 @ =gUnk_03003678
	movs r0, #0
	str r0, [r1]
_08E627CA:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08E627D0: .4byte gUnk_03003678

	thumb_func_start sub_08E627D4
sub_08E627D4: @ 0x08E627D4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08E62876
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _08E62876
	cmp r0, r5
	beq _08E62876
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _08E62802
	adds r0, r4, #0
	bl sub_08E64904
_08E62802:
	ldr r1, _08E62848 @ =gUnk_0300369C
	ldr r0, [r1]
	cmp r4, r0
	bne _08E62810
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08E62810:
	ldr r1, _08E6284C @ =gUnk_03003678
	ldr r0, [r1]
	cmp r4, r0
	bne _08E6281E
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_08E6281E:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _08E62856
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r4, #6]
	cmp r0, #0
	beq _08E62850
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _08E62852
	.align 2, 0
_08E62848: .4byte gUnk_0300369C
_08E6284C: .4byte gUnk_03003678
_08E62850:
	adds r0, r1, r5
_08E62852:
	bl sub_08E629D4
_08E62856:
	ldr r2, _08E6287C @ =gUnk_03002D40
	ldr r1, _08E62880 @ =gUnk_0300365C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	movs r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	ldr r0, _08E62884 @ =gUnk_0200B2A9
	str r0, [r4, #8]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #6]
_08E62876:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E6287C: .4byte gUnk_03002D40
_08E62880: .4byte gUnk_0300365C
_08E62884: .4byte gUnk_0200B2A9

	thumb_func_start sub_08E62888
sub_08E62888: @ 0x08E62888
	push {r4, r5, r6, lr}
	ldr r1, _08E628F4 @ =gUnk_03003DB0
	ldr r0, _08E628F8 @ =gUnk_03002D40
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, _08E628FC @ =gUnk_03002C20
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _08E6290C
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08E6294E
_08E628A8:
	ldr r4, _08E62900 @ =gUnk_0300369C
	ldr r5, _08E628F4 @ =gUnk_03003DB0
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
	bne _08E628C8
	ldr r0, [r2, #8]
	bl sub_08E64900
_08E628C8:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08E62904 @ =gUnk_030070B4
	ldrb r0, [r4]
	cmp r0, #0
	beq _08E628E4
	ldr r0, _08E62908 @ =gUnk_03002D38
	ldrb r0, [r0]
	cmp r0, #1
	bne _08E628E0
	bl sub_08E60314
_08E628E0:
	movs r0, #0
	strb r0, [r4]
_08E628E4:
	ldr r0, _08E628F4 @ =gUnk_03003DB0
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _08E628A8
	b _08E6294E
	.align 2, 0
_08E628F4: .4byte gUnk_03003DB0
_08E628F8: .4byte gUnk_03002D40
_08E628FC: .4byte gUnk_03002C20
_08E62900: .4byte gUnk_0300369C
_08E62904: .4byte gUnk_030070B4
_08E62908: .4byte gUnk_03002D38
_08E6290C:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _08E6294E
_08E62914:
	ldr r4, _08E62960 @ =gUnk_0300369C
	ldr r5, _08E62964 @ =gUnk_03003DB0
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
	bne _08E62934
	ldr r0, [r2, #8]
	bl sub_08E64900
_08E62934:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _08E62968 @ =gUnk_030070B4
	ldrb r0, [r4]
	cmp r0, #0
	beq _08E62948
	bl sub_08E60314
	movs r0, #0
	strb r0, [r4]
_08E62948:
	ldr r0, [r5]
	cmp r0, r6
	bne _08E62914
_08E6294E:
	ldr r0, _08E62964 @ =gUnk_03003DB0
	movs r1, #0
	str r1, [r0]
	ldr r0, _08E62960 @ =gUnk_0300369C
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08E62960: .4byte gUnk_0300369C
_08E62964: .4byte gUnk_03003DB0
_08E62968: .4byte gUnk_030070B4

	thumb_func_start sub_08E6296C
sub_08E6296C: @ 0x08E6296C
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _08E629CC
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _08E629B8 @ =gUnk_03004200
_08E62986:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _08E629BC
	cmp r0, r1
	beq _08E629AE
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _08E629BC
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_08E629AE:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _08E629CE
	.align 2, 0
_08E629B8: .4byte gUnk_03004200
_08E629BC:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _08E629CC
	adds r3, r1, #0
	b _08E62986
_08E629CC:
	movs r0, #0
_08E629CE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_08E629D4
sub_08E629D4: @ 0x08E629D4
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r3, _08E62A4C @ =gUnk_03004200
	adds r4, r3, #0
	cmp r2, r3
	beq _08E629F0
_08E629E2:
	adds r3, r4, #0
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, r4
	bne _08E629E2
_08E629F0:
	ldrh r1, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08E629FE
	rsbs r0, r1, #0
	strh r0, [r2, #2]
_08E629FE:
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r0, r3, r0
	cmp r0, r2
	bne _08E62A1E
	ldrh r1, [r3, #2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _08E62A1E
	ldrh r0, [r4]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	adds r0, r1, r0
	strh r0, [r3, #2]
	adds r2, r3, #0
_08E62A1E:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _08E62A44
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _08E62A44
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_08E62A44:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08E62A4C: .4byte gUnk_03004200

	thumb_func_start sub_08E62A50
sub_08E62A50: @ 0x08E62A50
	push {lr}
	movs r2, #0
	ldr r1, _08E62A74 @ =gUnk_03004200
_08E62A56:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _08E62A60
	subs r2, r2, r0
_08E62A60:
	ldrh r1, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	bne _08E62A56
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_08E62A74: .4byte gUnk_03004200

	thumb_func_start sub_08E62A78
sub_08E62A78: @ 0x08E62A78
	push {r4, r5, r6, r7, lr}
	ldr r3, _08E62A80 @ =gUnk_03004200
	b _08E62B26
	.align 2, 0
_08E62A80: .4byte gUnk_03004200
_08E62A84:
	ldrh r4, [r3, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r2, [r3]
	cmp r0, #0
	blt _08E62B20
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldrh r1, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _08E62AB4
	adds r0, r4, r1
	strh r0, [r3, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _08E62B26
_08E62AB0:
	strh r7, [r2, #6]
	b _08E62AE6
_08E62AB4:
	ldr r4, _08E62B14 @ =gUnk_03000004
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
_08E62AD0:
	ldr r0, _08E62B18 @ =gUnk_030021D0
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _08E62AB0
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0x7f
	ble _08E62AD0
_08E62AE6:
	ldr r2, _08E62B1C @ =0x040000D4
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
	b _08E62B26
	.align 2, 0
_08E62B14: .4byte gUnk_03000004
_08E62B18: .4byte gUnk_030021D0
_08E62B1C: .4byte 0x040000D4
_08E62B20:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
_08E62B26:
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	bne _08E62A84
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start nullsub_39
nullsub_39: @ 0x08E62B38
	bx lr
	.align 2, 0

	thumb_func_start nullsub_40
nullsub_40: @ 0x08E62B3C
	bx lr
	.align 2, 0

	thumb_func_start nullsub_41
nullsub_41: @ 0x08E62B40
	bx lr
	.align 2, 0

	thumb_func_start sub_08E62B44
sub_08E62B44: @ 0x08E62B44
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
	ldr r1, _08E62BE4 @ =gUnk_03003690
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
	beq _08E62BD0
_08E62B96:
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
	bl sub_08E648E0
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
	bne _08E62B96
_08E62BD0:
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
_08E62BE4: .4byte gUnk_03003690

	thumb_func_start sub_08E62BE8
sub_08E62BE8: @ 0x08E62BE8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
_08E62BF8:
	ldr r1, _08E62C98 @ =gUnk_03003660
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
	bne _08E62C28
	mov r1, ip
	adds r0, r5, r1
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08E62C28
	b _08E62DD6
_08E62C28:
	mov r0, sl
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _08E62C9C @ =gUnk_03003690
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
	bls _08E62D08
	ldr r0, _08E62CA0 @ =gUnk_03003E70
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _08E62D08
	add r7, sb
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r6, r0, #0x10
	cmp r2, #0xff
	bne _08E62CAC
	ldr r0, _08E62CA4 @ =gUnk_03006880
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08E62CA8 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	subs r0, r0, r4
	muls r0, r6, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	b _08E62D54
	.align 2, 0
_08E62C98: .4byte gUnk_03003660
_08E62C9C: .4byte gUnk_03003690
_08E62CA0: .4byte gUnk_03003E70
_08E62CA4: .4byte gUnk_03006880
_08E62CA8: .4byte 0x040000D4
_08E62CAC:
	cmp r4, r2
	bls _08E62CB2
	b _08E62DBC
_08E62CB2:
	ldr r0, _08E62D00 @ =gUnk_03006880
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _08E62D04 @ =0x040000D4
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
	bls _08E62CB2
	b _08E62DBC
	.align 2, 0
_08E62D00: .4byte gUnk_03006880
_08E62D04: .4byte 0x040000D4
_08E62D08:
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	movs r6, #0x20
	ldr r0, _08E62D64 @ =gUnk_03003690
	add r0, r8
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08E62D24
	movs r6, #0x40
_08E62D24:
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #3
	cmp r0, #0xff
	bne _08E62D70
	ldr r0, _08E62D68 @ =gUnk_03006880
	add r0, sl
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08E62D6C @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r6, r0
	lsls r0, r0, #1
_08E62D54:
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _08E62DBC
	.align 2, 0
_08E62D64: .4byte gUnk_03003690
_08E62D68: .4byte gUnk_03006880
_08E62D6C: .4byte 0x040000D4
_08E62D70:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhi _08E62DBC
	ldr r0, _08E62DF8 @ =gUnk_03006880
	mov r8, r0
_08E62D7C:
	mov r0, sl
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _08E62DFC @ =0x040000D4
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
	bls _08E62D7C
_08E62DBC:
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _08E62DFC @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _08E62E00 @ =gUnk_03003660
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08E62E04 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_08E62DD6:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _08E62DE6
	b _08E62BF8
_08E62DE6:
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
_08E62DF8: .4byte gUnk_03006880
_08E62DFC: .4byte 0x040000D4
_08E62E00: .4byte gUnk_03003660
_08E62E04: .4byte 0x85000001

	thumb_func_start sub_08E62E08
sub_08E62E08: @ 0x08E62E08
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _08E62E38 @ =gUnk_02028780
	mov r0, sp
	movs r2, #8
	bl sub_08E64B0C
	lsls r0, r4, #0x10
	asrs r1, r0, #0x10
	lsls r0, r5, #0x10
	asrs r2, r0, #0x10
	adds r0, r1, #0
	orrs r0, r2
	cmp r0, #0
	bne _08E62E3C
	movs r0, #1
	rsbs r0, r0, #0
	b _08E62EAE
	.align 2, 0
_08E62E38: .4byte gUnk_02028780
_08E62E3C:
	cmp r1, #0
	bgt _08E62E48
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_08E62E48:
	cmp r2, #0
	bgt _08E62E58
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_08E62E58:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _08E62E70
	lsls r0, r1, #0x17
	cmp r2, #0
	beq _08E62E84
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _08E62E7E
_08E62E70:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	cmp r1, #0
	beq _08E62E84
	asrs r0, r0, #0x10
_08E62E7E:
	bl sub_08E6493C
	lsls r0, r0, #0x10
_08E62E84:
	lsrs r2, r0, #0x10
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08E62EA0
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_08E62EA0:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_08E62EAE:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E62EB8
sub_08E62EB8: @ 0x08E62EB8
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_08E62EC2:
	lsrs r0, r1, #0xc
	adds r3, r4, r2
	lsls r1, r1, #0x14
	adds r2, #1
	cmp r0, #9
	bls _08E62ED2
	adds r0, #0x57
	b _08E62ED4
_08E62ED2:
	adds r0, #0x30
_08E62ED4:
	strb r0, [r3]
	lsrs r1, r1, #0x10
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08E62EC2
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08E62EEC
sub_08E62EEC: @ 0x08E62EEC
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r6, #0
_08E62EF6:
	adds r0, r4, #0
	movs r1, #0xa
	bl sub_08E648E8
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
	bls _08E62EF6
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E62F2C
sub_08E62F2C: @ 0x08E62F2C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _08E62F40
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _08E62F54
_08E62F40:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _08E62F64 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_08E62F54:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _08E62F68
	movs r0, #0
	b _08E6300A
	.align 2, 0
_08E62F64: .4byte 0xFFFFBFFF
_08E62F68:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _08E62F80
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _08E63008
_08E62F7C:
	adds r0, r1, #0
	b _08E6300A
_08E62F80:
	ldr r0, _08E62F98 @ =gUnk_03003E54
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
	b _08E62FD8
	.align 2, 0
_08E62F98: .4byte gUnk_03003E54
_08E62F9C:
	ldr r0, _08E63010 @ =gUnk_02028788
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_08E64908
	adds r1, r0, #0
	cmp r1, #1
	beq _08E62FD8
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E62F7C
	ldr r0, _08E63014 @ =gUnk_03003E54
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
_08E62FD8:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r1, [r3]
	cmp r1, #0
	blt _08E62F9C
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
_08E63008:
	movs r0, #1
_08E6300A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08E63010: .4byte gUnk_02028788
_08E63014: .4byte gUnk_03003E54

	thumb_func_start sub_08E63018
sub_08E63018: @ 0x08E63018
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
	ldr r0, _08E6306C @ =gUnk_03004184
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
	ldr r1, _08E63070 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _08E63074 @ =gUnk_03003E54
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
	blt _08E6313C
	b _08E630F0
	.align 2, 0
_08E6306C: .4byte gUnk_03004184
_08E63070: .4byte 0xFFFFBFFF
_08E63074: .4byte gUnk_03003E54
_08E63078:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08E63082
	mov sb, sl
_08E63082:
	ldr r0, _08E630D0 @ =gUnk_02028788
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_08E64908
	adds r2, r0, #0
	ldr r3, _08E630D4 @ =gUnk_03004184
	ldr r0, [sp]
	ldrb r1, [r3]
	cmp r0, r1
	beq _08E630A6
	strb r0, [r3]
	movs r1, #1
	mov r8, r1
_08E630A6:
	cmp r2, #1
	beq _08E630F0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08E630DC
	ldr r0, _08E630D8 @ =gUnk_03003E54
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
	b _08E630F0
	.align 2, 0
_08E630D0: .4byte gUnk_02028788
_08E630D4: .4byte gUnk_03004184
_08E630D8: .4byte gUnk_03003E54
_08E630DC:
	mov r0, r8
	cmp r0, #0
	beq _08E630EC
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
_08E630EC:
	adds r0, r2, #0
	b _08E63150
_08E630F0:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r1, [r5]
	cmp r1, #0
	blt _08E63078
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
	beq _08E63120
	cmp r6, #0
	ble _08E63120
	adds r0, r6, #0
	bl sub_08E648EC
	adds r6, r0, #0
	b _08E63124
_08E63120:
	ldr r0, [r5]
	add sl, r0
_08E63124:
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
	bge _08E630F0
_08E6313C:
	mov r0, r8
	cmp r0, #0
	beq _08E6314E
	ldr r0, _08E63160 @ =gUnk_03004184
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0x3f
	ands r1, r2
	strb r1, [r0]
_08E6314E:
	movs r0, #1
_08E63150:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08E63160: .4byte gUnk_03004184

	thumb_func_start sub_08E63164
sub_08E63164: @ 0x08E63164
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
	bne _08E631E2
	ldr r1, [r2, #4]
	ldr r0, _08E63198 @ =gUnk_03003E54
	ldr r4, [r2, #8]
	ldr r6, _08E6319C @ =gUnk_030036A0
	ldr r5, _08E631A0 @ =gUnk_03004184
	cmp r1, #0
	bge _08E631A4
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r2, r0, r1
	lsls r0, r4, #0x16
	b _08E631AE
	.align 2, 0
_08E63198: .4byte gUnk_03003E54
_08E6319C: .4byte gUnk_030036A0
_08E631A0: .4byte gUnk_03004184
_08E631A4:
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r2, r0, r1
	lsls r0, r4, #0x15
_08E631AE:
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
_08E631E2:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E631EC
sub_08E631EC: @ 0x08E631EC
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
	bne _08E6323A
	ldr r1, [r4, #4]
	ldr r2, _08E63244 @ =0x040000D4
	ldr r0, _08E63248 @ =gUnk_03003E54
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
	ldr r1, _08E6324C @ =gUnk_03003440
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _08E63250 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_08E6323A:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08E63244: .4byte 0x040000D4
_08E63248: .4byte gUnk_03003E54
_08E6324C: .4byte gUnk_03003440
_08E63250: .4byte gUnk_03002C20

	thumb_func_start sub_08E63254
sub_08E63254: @ 0x08E63254
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_08E63260
sub_08E63260: @ 0x08E63260
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_08E63270
sub_08E63270: @ 0x08E63270
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl sub_08E60320
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_08E63284
sub_08E63284: @ 0x08E63284
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _08E632C0 @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _08E632C4 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08E632C8
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _08E6332C
	.align 2, 0
_08E632C0: .4byte 0x040000D4
_08E632C4: .4byte 0x84000002
_08E632C8:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08E632FC
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
_08E632FC:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _08E6332C
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
_08E6332C:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08E63334
sub_08E63334: @ 0x08E63334
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

	thumb_func_start sub_08E63350
sub_08E63350: @ 0x08E63350
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_08E6335C
sub_08E6335C: @ 0x08E6335C
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

	thumb_func_start sub_08E63374
sub_08E63374: @ 0x08E63374
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_08E6337C
sub_08E6337C: @ 0x08E6337C
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _08E63394 @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_08E63394: .4byte 0xFFFFCFFF

	thumb_func_start sub_08E63398
sub_08E63398: @ 0x08E63398
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_08E633A8
sub_08E633A8: @ 0x08E633A8
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
	ldr r0, _08E63460 @ =gUnk_03006896
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl sub_08E648E8
	ldr r7, _08E63464 @ =gUnk_02027D80
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
	bl sub_08E648E8
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
	bl sub_08E648E8
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
	bl sub_08E648E8
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
_08E63460: .4byte gUnk_03006896
_08E63464: .4byte gUnk_02027D80

	thumb_func_start sub_08E63468
sub_08E63468: @ 0x08E63468
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
	bne _08E63484
	b _08E63722
_08E63484:
	lsrs r0, r2, #0x1c
	ldr r1, _08E634F8 @ =gUnk_03003E54
	ldr r3, [sp, #0x24]
	ldrh r5, [r3, #0xc]
	add r4, sp, #0x20
	ldr r3, [r3, #8]
	ldr r6, _08E634FC @ =gUnk_03006896
	mov r8, r6
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x2c]
	ldr r6, _08E63500 @ =gUnk_02027D80
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
	bne _08E63504
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r5, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08E63512
	.align 2, 0
_08E634F8: .4byte gUnk_03003E54
_08E634FC: .4byte gUnk_03006896
_08E63500: .4byte gUnk_02027D80
_08E63504:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r5, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08E63512:
	movs r0, #0x1f
	ands r3, r0
	strh r3, [r4]
	ldrh r4, [r4]
	lsls r4, r4, #5
	add r4, r8
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r1, _08E63698 @ =0x000003FF
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
	bl sub_08E648E8
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
	bl sub_08E648E8
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
	bl sub_08E648E8
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
	bl sub_08E648E8
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
	bge _08E635F0
	rsbs r0, r0, #0
	mov r1, sl
	strh r0, [r1]
_08E635F0:
	mov r2, sb
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _08E63602
	rsbs r0, r4, #0
	mov r6, r8
	strh r0, [r6]
_08E63602:
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
	ble _08E6369C
	ldrh r5, [r7, #8]
	b _08E636A6
	.align 2, 0
_08E63698: .4byte 0x000003FF
_08E6369C:
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_08E636A6:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _08E636B0
	ldrh r4, [r7, #0xa]
	b _08E636BA
_08E636B0:
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08E636BA:
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
_08E63722:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08E63734
sub_08E63734: @ 0x08E63734
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
	bne _08E63760
	b _08E63BC0
_08E63760:
	lsrs r0, r2, #0x1c
	ldr r1, _08E63780 @ =gUnk_03003E54
	ldrh r3, [r6, #0xc]
	ldr r4, [r6, #8]
	cmp r0, #0
	bne _08E63784
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _08E63792
	.align 2, 0
_08E63780: .4byte gUnk_03003E54
_08E63784:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_08E63792:
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
	beq _08E637C4
	ldr r0, _08E63824 @ =gUnk_03002BD4
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
_08E637C4:
	ldrh r3, [r7, #4]
	str r3, [sp, #8]
	ldrh r5, [r7, #6]
	str r5, [sp, #0xc]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _08E63828
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
	beq _08E63894
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
	b _08E63894
	.align 2, 0
_08E63824: .4byte gUnk_03002BD4
_08E63828:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _08E63842
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	ldr r5, [sp, #0xc]
	subs r0, r5, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	b _08E6384C
_08E63842:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	mov r5, r8
	subs r5, r5, r0
	mov r8, r5
_08E6384C:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _08E63866
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, [sp, #8]
	subs r0, r3, r0
	mov r5, sb
	subs r5, r5, r0
	mov sb, r5
	b _08E63870
_08E63866:
	movs r1, #8
	ldrsh r0, [r7, r1]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
_08E63870:
	lsrs r0, r2, #0xb
	movs r4, #1
	ands r0, r4
	ldrh r1, [r7]
	lsls r3, r1, #0x10
	lsrs r1, r3, #0x1f
	cmp r0, r1
	beq _08E63884
	movs r5, #1
	str r5, [sp, #0x24]
_08E63884:
	lsrs r1, r2, #0xa
	lsrs r0, r3, #0x1e
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08E63894
	movs r0, #1
	str r0, [sp, #0x28]
_08E63894:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _08E638BE
	adds r0, r1, #0
	add r0, sb
	cmp r0, #0
	bge _08E638A4
	b _08E63BC0
_08E638A4:
	mov r2, sb
	cmp r2, #0xf0
	ble _08E638AC
	b _08E63BC0
_08E638AC:
	ldr r0, [sp, #0xc]
	add r0, r8
	cmp r0, #0
	bge _08E638B6
	b _08E63BC0
_08E638B6:
	mov r3, r8
	cmp r3, #0xa0
	ble _08E638BE
	b _08E63BC0
_08E638BE:
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
	ldr r0, _08E63AC8 @ =gUnk_03003E54
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _08E63ACC @ =gUnk_03002CD0
	ldrb r0, [r0]
	strb r0, [r6, #0x1d]
	movs r5, #0
	str r5, [sp, #0x10]
	ldrh r0, [r7, #2]
	cmp r5, r0
	blo _08E63908
	b _08E63A86
_08E63908:
	ldr r2, _08E63AD0 @ =0x040000D4
	ldrh r0, [r7]
	ldr r3, _08E63AD4 @ =0x00003FFF
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
	ldr r0, _08E63AD8 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sp
	ldrh r5, [r0, #2]
	ldr r1, _08E63ADC @ =0x000001FF
	adds r0, r1, #0
	adds r4, r0, #0
	ands r4, r5
	cmp r4, #0xff
	ble _08E63940
	ldr r2, _08E63AE0 @ =0xFFFFFE00
	adds r4, r4, r2
_08E63940:
	mov r0, sp
	ldrb r3, [r0]
	cmp r3, #0x7f
	ble _08E6394C
	ldr r0, _08E63AE4 @ =0xFFFFFF00
	adds r3, r3, r0
_08E6394C:
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
	ldr r2, _08E63AE8 @ =gUnk_020287B8
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
	beq _08E639C4
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _08E639A6
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
_08E639A6:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _08E639C4
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
_08E639C4:
	add r3, r8
	mov r5, ip
	adds r0, r3, r5
	cmp r0, #0
	blt _08E63A74
	cmp r3, #0xa0
	bgt _08E63A74
	add r4, sb
	mov r1, sl
	adds r0, r4, r1
	cmp r0, #0
	blt _08E63A74
	cmp r4, #0xf0
	bgt _08E63A74
	mov r2, sp
	mov r1, sp
	movs r0, #0xff
	ands r3, r0
	ldrh r1, [r1]
	adds r0, r3, r1
	strh r0, [r2]
	mov r1, sp
	ldr r3, _08E63ADC @ =0x000001FF
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
	beq _08E63A38
	ldr r0, _08E63AEC @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r2, #4]
_08E63A38:
	mov r2, sp
	mov r1, sp
	ldr r0, [r6]
	ldr r3, _08E63AF0 @ =0xF9FF0000
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
	bl sub_08E63BD8
	adds r1, r0, #0
	ldr r0, _08E63AF4 @ =gUnk_03007488
	ldr r0, [r0]
	cmp r0, r1
	bne _08E63A66
	b _08E63BC0
_08E63A66:
	ldr r0, _08E63AD0 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _08E63AD8 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_08E63A74:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r3, [r7, #2]
	cmp r0, r3
	bhs _08E63A86
	b _08E63908
_08E63A86:
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _08E63A90
	b _08E63BC0
_08E63A90:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _08E63A9E
	b _08E63BC0
_08E63A9E:
	ldr r0, _08E63AF8 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	ldr r0, [r7, #0xc]
	ldr r1, _08E63AFC @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, _08E63AC8 @ =gUnk_03003E54
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r3, r0, r1
	ldr r0, [r3]
	cmp r0, #0
	blt _08E63B00
	movs r5, #0x20
	mov sb, r5
	ldr r2, [r2, #0x10]
	b _08E63B06
	.align 2, 0
_08E63AC8: .4byte gUnk_03003E54
_08E63ACC: .4byte gUnk_03002CD0
_08E63AD0: .4byte 0x040000D4
_08E63AD4: .4byte 0x00003FFF
_08E63AD8: .4byte 0x80000003
_08E63ADC: .4byte 0x000001FF
_08E63AE0: .4byte 0xFFFFFE00
_08E63AE4: .4byte 0xFFFFFF00
_08E63AE8: .4byte gUnk_020287B8
_08E63AEC: .4byte 0x000003FF
_08E63AF0: .4byte 0xF9FF0000
_08E63AF4: .4byte gUnk_03007488
_08E63AF8: .4byte 0xFBFFFFFF
_08E63AFC: .4byte 0x00FFFFFF
_08E63B00:
	movs r1, #0x40
	mov sb, r1
	ldr r2, [r2, #0x14]
_08E63B06:
	mov r4, sb
	muls r0, r4, r0
	adds r5, r2, r0
	adds r3, #4
	ldr r6, [r6]
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r8, r1
	bhs _08E63B8C
	ldr r0, _08E63B3C @ =gUnk_030036A0
	mov ip, r0
	ldr r7, _08E63B40 @ =gUnk_03004184
_08E63B20:
	ldm r3!, {r0}
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r2
	mov sl, r0
	adds r0, r5, r4
	cmp r0, sl
	bne _08E63B44
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08E63B7C
	.align 2, 0
_08E63B3C: .4byte gUnk_030036A0
_08E63B40: .4byte gUnk_03004184
_08E63B44:
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
_08E63B7C:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [sp, #0x2c]
	cmp r8, r0
	blo _08E63B20
_08E63B8C:
	ldr r3, _08E63BD0 @ =gUnk_030036A0
	ldr r2, _08E63BD4 @ =gUnk_03004184
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
_08E63BC0:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E63BD0: .4byte gUnk_030036A0
_08E63BD4: .4byte gUnk_03004184

	thumb_func_start sub_08E63BD8
sub_08E63BD8: @ 0x08E63BD8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _08E63BE4
	movs r2, #0x1f
_08E63BE4:
	ldr r3, _08E63BF4 @ =gUnk_03002CD0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _08E63BFC
	ldr r0, _08E63BF8 @ =gUnk_03007488
	ldr r0, [r0]
	b _08E63C54
	.align 2, 0
_08E63BF4: .4byte gUnk_03002CD0
_08E63BF8: .4byte gUnk_03007488
_08E63BFC:
	ldr r0, _08E63C24 @ =gUnk_03002C30
	adds r5, r2, r0
	ldrb r0, [r5]
	ldr r4, _08E63C28 @ =gUnk_030039A0
	ldrb r1, [r3]
	ldr r6, _08E63C2C @ =gUnk_03006860
	adds r7, r4, #0
	subs r7, #8
	cmp r0, #0xff
	bne _08E63C30
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r3]
	strb r0, [r5]
	adds r1, r2, r6
	ldrb r0, [r3]
	strb r0, [r1]
	b _08E63C48
	.align 2, 0
_08E63C24: .4byte gUnk_03002C30
_08E63C28: .4byte gUnk_030039A0
_08E63C2C: .4byte gUnk_03006860
_08E63C30:
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
_08E63C48:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r7
_08E63C54:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08E63C5C
sub_08E63C5C: @ 0x08E63C5C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r6, _08E63D08 @ =gUnk_03006890
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r4, #0
_08E63C72:
	ldr r1, _08E63D0C @ =gUnk_03002C30
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
	beq _08E63CBE
	ldr r0, _08E63D10 @ =gUnk_030039A0
	mov sb, r0
	ldr r1, _08E63D14 @ =gUnk_03003DD0
	mov ip, r1
_08E63C92:
	ldr r1, _08E63D18 @ =0x040000D4
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	add r3, sb
	str r3, [r1]
	str r5, [r1, #4]
	ldr r0, _08E63D1C @ =0x80000003
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
	bne _08E63C92
_08E63CBE:
	adds r4, #1
	cmp r4, #0x1f
	ble _08E63C72
	ldr r7, _08E63D20 @ =gUnk_03002C20
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	ldr r1, _08E63D24 @ =gUnk_03002CD0
	cmp r0, #0
	beq _08E63D30
	ldrb r4, [r1]
	lsls r0, r4, #3
	ldr r2, _08E63D08 @ =gUnk_03006890
	adds r5, r0, r2
	ldr r2, _08E63D28 @ =gUnk_030041E0
	ldrb r3, [r2]
	cmp r4, r3
	bge _08E63DB0
_08E63CE4:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _08E63D18 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08E63D2C @ =0x81000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r5, #8
	adds r4, #1
	ldrb r0, [r2]
	cmp r4, r0
	blt _08E63CE4
	b _08E63DB0
	.align 2, 0
_08E63D08: .4byte gUnk_03006890
_08E63D0C: .4byte gUnk_03002C30
_08E63D10: .4byte gUnk_030039A0
_08E63D14: .4byte gUnk_03003DD0
_08E63D18: .4byte 0x040000D4
_08E63D1C: .4byte 0x80000003
_08E63D20: .4byte gUnk_03002C20
_08E63D24: .4byte gUnk_03002CD0
_08E63D28: .4byte gUnk_030041E0
_08E63D2C: .4byte 0x81000003
_08E63D30:
	movs r2, #0x80
	lsls r2, r2, #3
	ands r2, r3
	cmp r2, #0
	beq _08E63DAC
	adds r5, r1, #0
	ldrb r0, [r5]
	subs r4, r0, #1
	movs r2, #0x7f
	cmp r4, #0
	blt _08E63D62
_08E63D46:
	ldr r1, _08E63D98 @ =0x040000D4
	lsls r0, r4, #3
	adds r0, r0, r6
	str r0, [r1]
	lsls r0, r2, #3
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _08E63D9C @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r4, #1
	subs r2, #1
	cmp r4, #0
	bge _08E63D46
_08E63D62:
	ldr r3, _08E63DA0 @ =gUnk_030041E0
	ldrb r1, [r5]
	movs r0, #0x80
	subs r0, r0, r1
	strb r0, [r3]
	movs r4, #0
	cmp r4, r0
	bge _08E63DB0
_08E63D72:
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _08E63D98 @ =0x040000D4
	str r1, [r2]
	lsls r0, r4, #3
	ldr r1, _08E63DA4 @ =gUnk_03006890
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08E63DA8 @ =0x81000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blt _08E63D72
	b _08E63DB0
	.align 2, 0
_08E63D98: .4byte 0x040000D4
_08E63D9C: .4byte 0x80000003
_08E63DA0: .4byte gUnk_030041E0
_08E63DA4: .4byte gUnk_03006890
_08E63DA8: .4byte 0x81000003
_08E63DAC:
	ldr r0, _08E63DE4 @ =gUnk_030041E0
	strb r2, [r0]
_08E63DB0:
	ldr r1, _08E63DE8 @ =gUnk_03002CD0
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	add r6, sp, #8
	cmp r0, #0
	beq _08E63DF4
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _08E63DEC @ =0x05000008
	mov r1, sl
	adds r2, r5, #0
	bl sub_08E648E4
	str r4, [sp, #8]
	ldr r1, _08E63DF0 @ =gUnk_03006860
	adds r0, r6, #0
	adds r2, r5, #0
	bl sub_08E648E4
	b _08E63E14
	.align 2, 0
_08E63DE4: .4byte gUnk_030041E0
_08E63DE8: .4byte gUnk_03002CD0
_08E63DEC: .4byte 0x05000008
_08E63DF0: .4byte gUnk_03006860
_08E63DF4:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _08E63E24 @ =0x040000D4
	str r6, [r0]
	mov r2, sl
	str r2, [r0, #4]
	ldr r2, _08E63E28 @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	str r6, [r0]
	ldr r1, _08E63E2C @ =gUnk_03006860
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_08E63E14:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08E63E24: .4byte 0x040000D4
_08E63E28: .4byte 0x85000008
_08E63E2C: .4byte gUnk_03006860

	thumb_func_start nullsub_20
nullsub_20: @ 0x08E63E30
	bx lr
	.align 2, 0

	thumb_func_start sub_08E63E34
sub_08E63E34: @ 0x08E63E34
	ldr r0, _08E63E3C @ =gUnk_03007488
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08E63E3C: .4byte gUnk_03007488

	thumb_func_start nullsub_42
nullsub_42: @ 0x08E63E40
	bx lr
	.align 2, 0

	thumb_func_start sub_08E63E44
sub_08E63E44: @ 0x08E63E44
	movs r0, #0
	bx lr

	thumb_func_start sub_08E63E48
sub_08E63E48: @ 0x08E63E48
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r3, _08E63F04 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _08E63F08 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E63F0C @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _08E63F10 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r2]
	ldrh r0, [r2]
	ldr r3, _08E63F14 @ =0x00004003
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r4, _08E63F18 @ =gUnk_03007240
	ldr r2, _08E63F1C @ =0x0500007A
	mov r0, sp
	adds r1, r4, #0
	bl sub_08E648E4
	ldr r0, _08E63F20 @ =gUnk_0200CEE8
	ldr r1, _08E63F24 @ =gUnk_03007430
	ldr r2, _08E63F28 @ =0x04000010
	bl sub_08E648E4
	ldr r0, _08E63F2C @ =gUnk_0200CF28
	ldr r1, _08E63F30 @ =gUnk_030070C0
	ldr r2, _08E63F34 @ =0x04000060
	bl sub_08E648E4
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
_08E63EB0:
	ldr r4, _08E63F18 @ =gUnk_03007240
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
	ble _08E63EB0
	ldr r3, _08E63F04 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08E63F08 @ =0x04000200
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
_08E63F04: .4byte 0x04000208
_08E63F08: .4byte 0x04000200
_08E63F0C: .4byte 0x0000FF3F
_08E63F10: .4byte 0x04000134
_08E63F14: .4byte 0x00004003
_08E63F18: .4byte gUnk_03007240
_08E63F1C: .4byte 0x0500007A
_08E63F20: .4byte gUnk_0200CEE8
_08E63F24: .4byte gUnk_03007430
_08E63F28: .4byte 0x04000010
_08E63F2C: .4byte gUnk_0200CF28
_08E63F30: .4byte gUnk_030070C0
_08E63F34: .4byte 0x04000060

	thumb_func_start sub_08E63F38
sub_08E63F38: @ 0x08E63F38
	push {lr}
	ldr r2, _08E63F50 @ =gUnk_03007240
	ldrb r0, [r2]
	cmp r0, #0
	beq _08E63F4A
	ldrb r0, [r2, #8]
	movs r1, #0x80
	orrs r0, r1
	strb r0, [r2, #8]
_08E63F4A:
	pop {r0}
	bx r0
	.align 2, 0
_08E63F50: .4byte gUnk_03007240

	thumb_func_start sub_08E63F54
sub_08E63F54: @ 0x08E63F54
	ldr r3, _08E63F88 @ =0x04000208
	movs r0, #0
	strh r0, [r3]
	ldr r2, _08E63F8C @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _08E63F90 @ =0x0000FF3F
	ands r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r1, _08E63F94 @ =0x04000128
	ldr r2, _08E63F98 @ =0x00002003
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0x1c
	ldr r0, _08E63F9C @ =0x0000BBBC
	str r0, [r1]
	adds r1, #0xf6
	movs r0, #0xc0
	strh r0, [r1]
	ldr r2, _08E63FA0 @ =gUnk_03007240
	ldrb r1, [r2, #8]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2, #8]
	bx lr
	.align 2, 0
_08E63F88: .4byte 0x04000208
_08E63F8C: .4byte 0x04000200
_08E63F90: .4byte 0x0000FF3F
_08E63F94: .4byte 0x04000128
_08E63F98: .4byte 0x00002003
_08E63F9C: .4byte 0x0000BBBC
_08E63FA0: .4byte gUnk_03007240
