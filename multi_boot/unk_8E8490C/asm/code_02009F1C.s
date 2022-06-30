	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_02009F1C
sub_02009F1C: @ 0x02009F1C
	push {lr}
	bl sub_02009F30
	bl sub_020001CC
	bl sub_0200A460
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_02009F30
sub_02009F30: @ 0x02009F30
	push {r4, lr}
	sub sp, #8
	ldr r1, _02009F80 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	subs r1, #4
	ldr r2, _02009F84 @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _02009F88 @ =gUnk_03002C20
	movs r3, #0
	str r3, [r2]
	ldr r0, _02009F8C @ =gUnk_03003E50
	str r3, [r0]
	ldr r1, _02009F90 @ =gUnk_03003674
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _02009F94 @ =0x04000134
	ldrh r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #8
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #8
	cmp r0, r1
	beq _02009F6C
	movs r0, #0x80
	lsls r0, r0, #2
	str r0, [r2]
_02009F6C:
	ldr r0, _02009F98 @ =gUnk_03003670
	ldrh r0, [r0]
	cmp r0, #0xf
	bne _02009F9C
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2]
	b _02009F9E
	.align 2, 0
_02009F80: .4byte 0x04000208
_02009F84: .4byte 0x00004014
_02009F88: .4byte gUnk_03002C20
_02009F8C: .4byte gUnk_03003E50
_02009F90: .4byte gUnk_03003674
_02009F94: .4byte 0x04000134
_02009F98: .4byte gUnk_03003670
_02009F9C:
	str r3, [r2]
_02009F9E:
	ldr r1, _0200A308 @ =gUnk_03003DB4
	movs r0, #0xff
	strb r0, [r1]
	ldr r0, _0200A30C @ =gUnk_030041E4
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0200A310 @ =gUnk_03003F70
	strb r1, [r0]
	ldr r0, _0200A314 @ =gUnk_03007090
	strb r1, [r0]
	ldr r0, _0200A318 @ =gUnk_03006858
	strb r1, [r0]
	ldr r0, _0200A31C @ =gUnk_03004184
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _0200A324 @ =gUnk_03003660
	str r0, [r1, #4]
	ldr r0, _0200A328 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009FCE:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009FCE
	ldr r1, _0200A32C @ =gUnk_03006880
	movs r0, #0
	str r0, [r1]
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0200A330 @ =gUnk_03003E60
	str r0, [r1, #4]
	ldr r0, _0200A328 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_02009FEC:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _02009FEC
	ldr r0, _0200A334 @ =gUnk_03002BD4
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	ldr r2, _0200A338 @ =gUnk_03003E70
	movs r0, #0x80
	lsls r0, r0, #0x13
	ldrh r0, [r0]
	strh r0, [r2]
	str r1, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _0200A33C @ =gUnk_030036A0
	str r0, [r1, #4]
	ldr r0, _0200A340 @ =0x850000C0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A016:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A016
	ldr r0, _0200A344 @ =gUnk_03002CD0
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0200A348 @ =gUnk_030041E0
	strb r1, [r0]
	add r2, sp, #4
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r2]
	ldr r1, _0200A320 @ =0x040000D4
	str r2, [r1]
	ldr r0, _0200A34C @ =gUnk_03006890
	str r0, [r1, #4]
	ldr r0, _0200A350 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A03E:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A03E
	movs r1, #0x80
	lsls r1, r1, #2
	adds r0, r1, #0
	strh r0, [r2]
	ldr r1, _0200A320 @ =0x040000D4
	str r2, [r1]
	ldr r0, _0200A354 @ =gUnk_030039A0
	str r0, [r1, #4]
	ldr r0, _0200A350 @ =0x81000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A05A:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A05A
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _0200A358 @ =gUnk_03002C30
	str r0, [r1, #4]
	ldr r0, _0200A35C @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A076:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A076
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _0200A360 @ =gUnk_03006860
	str r0, [r1, #4]
	ldr r0, _0200A35C @ =0x85000008
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A092:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A092
	ldr r1, _0200A320 @ =0x040000D4
	ldr r0, _0200A364 @ =0x05000200
	str r0, [r1]
	ldr r0, _0200A368 @ =gUnk_03003440
	str r0, [r1, #4]
	ldr r0, _0200A36C @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A0A8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A0A8
	ldr r1, _0200A320 @ =0x040000D4
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r1]
	ldr r0, _0200A370 @ =gUnk_03003F80
	str r0, [r1, #4]
	ldr r0, _0200A36C @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A0C0:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A0C0
	ldr r0, _0200A374 @ =gUnk_03002D00
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
	ldr r0, _0200A378 @ =gUnk_03002CF4
	strb r3, [r0]
	ldr r0, _0200A37C @ =gUnk_03002D24
	strh r1, [r0]
	ldr r0, _0200A380 @ =gUnk_03002BD0
	strh r2, [r0]
	ldr r0, _0200A384 @ =gUnk_03007094
	strh r2, [r0]
	ldr r0, _0200A388 @ =gUnk_0300418C
	strh r1, [r0]
	ldr r0, _0200A38C @ =gUnk_03006854
	strh r1, [r0]
	ldr r0, _0200A390 @ =gUnk_03002D2C
	strh r1, [r0]
	ldr r0, _0200A394 @ =gUnk_03003E5C
	strh r1, [r0]
	ldr r0, _0200A398 @ =gUnk_03007098
	strh r2, [r0]
	ldr r0, _0200A39C @ =gUnk_03003650
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	strh r1, [r0, #6]
	strh r1, [r0, #8]
	strh r1, [r0, #0xa]
	ldr r0, _0200A3A0 @ =gUnk_03002CC8
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _0200A3A4 @ =gUnk_030070B8
	str r1, [r0]
_0200A126:
	ldr r2, _0200A3A8 @ =gUnk_03003DC0
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	adds r2, r0, r2
	movs r1, #0x14
	strb r1, [r2]
	ldr r1, _0200A3AC @ =gUnk_03003E80
	adds r1, r0, r1
	movs r2, #8
	strb r2, [r1]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #9
	ble _0200A126
	ldr r1, _0200A3B0 @ =gUnk_03003644
	movs r0, #0
	str r0, [r1]
	movs r1, #0
_0200A14E:
	ldr r3, _0200A3B4 @ =gUnk_03001F90
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	lsls r1, r0, #2
	adds r3, r1, r3
	ldr r2, _0200A3B8 @ =gUnk_02027D4C
	adds r1, r1, r2
	ldr r1, [r1]
	str r1, [r3]
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe
	ble _0200A14E
	movs r0, #0
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r2, _0200A3BC @ =gUnk_03002F40
	str r2, [r1, #4]
	ldr r0, _0200A3C0 @ =0x85000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A180:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A180
	ldr r0, _0200A3C4 @ =gUnk_03002C64
	str r2, [r0]
	ldr r1, _0200A3C8 @ =gUnk_0300368C
	movs r3, #0xa0
	lsls r3, r3, #2
	adds r0, r2, r3
	str r0, [r1]
	ldr r0, _0200A3CC @ =gUnk_03003EA8
	movs r1, #0
	str r1, [r0]
	ldr r0, _0200A3D0 @ =gUnk_03004180
	strb r1, [r0]
	ldr r0, _0200A3D4 @ =gUnk_03002C6C
	strb r1, [r0]
	ldr r0, _0200A3D8 @ =gUnk_03002CC4
	strb r1, [r0]
	str r1, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0200A3DC @ =gUnk_03003DA0
	str r0, [r1, #4]
	ldr r0, _0200A328 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A1B8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A1B8
	movs r0, #0
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _0200A3E0 @ =gUnk_030041F0
	str r0, [r1, #4]
	ldr r0, _0200A328 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A1D2:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A1D2
	ldr r0, _0200A3E4 @ =gUnk_03006850
	movs r1, #0
	strb r1, [r0]
	ldr r0, _0200A3E8 @ =gUnk_03002D28
	strb r1, [r0]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r3, sp
	str r3, [r1]
	ldr r0, _0200A3EC @ =gUnk_03002C50
	str r0, [r1, #4]
	ldr r0, _0200A328 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A1F6:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A1F6
	movs r0, #0
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0200A3F0 @ =gUnk_030070A0
	str r0, [r1, #4]
	ldr r0, _0200A328 @ =0x85000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A210:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A210
	bl m4aSoundInit
	ldr r0, _0200A3F4 @ =0x0095FA00
	bl SoundMode_rev01
	bl m4aSoundMain
	ldr r1, _0200A3F8 @ =gUnk_030070B4
	movs r0, #1
	strb r0, [r1]
	bl sub_0200AD38
	ldr r1, _0200A3FC @ =gUnk_03002C68
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _0200A400 @ =gUnk_03002D20
	ldr r0, _0200A404 @ =0x06014000
	str r0, [r1]
	bl nullsub_01
	ldr r2, _0200A408 @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r2]
	ldr r1, _0200A320 @ =0x040000D4
	ldr r0, _0200A40C @ =sub_020000FC
	str r0, [r1]
	ldr r2, _0200A410 @ =gUnk_03001FD0
	str r2, [r1, #4]
	ldr r0, _0200A36C @ =0x84000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A25E:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A25E
	ldr r0, _0200A414 @ =0x03007FFC
	str r2, [r0]
	ldr r2, _0200A418 @ =0x04000200
	movs r0, #1
	strh r0, [r2]
	ldr r1, _0200A41C @ =0x04000004
	movs r0, #0x18
	strh r0, [r1]
	ldr r0, _0200A420 @ =0x080000B2
	ldrb r0, [r0]
	cmp r0, #0x96
	bne _0200A292
	ldr r0, _0200A424 @ =0x080000AC
	ldr r1, [r0]
	ldr r0, _0200A428 @ =0x454B3842
	cmp r1, r0
	bne _0200A292
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #6
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
_0200A292:
	ldr r1, _0200A42C @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r0, _0200A430 @ =gUnk_03003E90
	str r0, [r1, #4]
	ldr r0, _0200A434 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A2AC:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A2AC
	movs r0, #0
	str r0, [sp]
	ldr r1, _0200A320 @ =0x040000D4
	mov r2, sp
	str r2, [r1]
	ldr r0, _0200A438 @ =gUnk_03002C70
	str r0, [r1, #4]
	ldr r0, _0200A43C @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A2C6:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A2C6
	ldr r0, _0200A440 @ =gUnk_03002D34
	movs r4, #0
	str r4, [r0]
	ldr r0, _0200A444 @ =gUnk_03002D38
	strb r4, [r0]
	movs r0, #0
	bl MultiSioInit
	ldr r0, _0200A448 @ =gUnk_0300685C
	strb r4, [r0]
	ldr r0, _0200A44C @ =gUnk_03002CC0
	str r4, [r0]
	ldr r0, _0200A450 @ =gUnk_03002D30
	strb r4, [r0]
	ldr r1, _0200A320 @ =0x040000D4
	ldr r0, _0200A454 @ =0x04000008
	str r0, [r1]
	ldr r0, _0200A458 @ =gUnk_03003690
	str r0, [r1, #4]
	ldr r0, _0200A45C @ =0x80000004
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_0200A2F8:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A2F8
	add sp, #8
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200A308: .4byte gUnk_03003DB4
_0200A30C: .4byte gUnk_030041E4
_0200A310: .4byte gUnk_03003F70
_0200A314: .4byte gUnk_03007090
_0200A318: .4byte gUnk_03006858
_0200A31C: .4byte gUnk_03004184
_0200A320: .4byte 0x040000D4
_0200A324: .4byte gUnk_03003660
_0200A328: .4byte 0x85000004
_0200A32C: .4byte gUnk_03006880
_0200A330: .4byte gUnk_03003E60
_0200A334: .4byte gUnk_03002BD4
_0200A338: .4byte gUnk_03003E70
_0200A33C: .4byte gUnk_030036A0
_0200A340: .4byte 0x850000C0
_0200A344: .4byte gUnk_03002CD0
_0200A348: .4byte gUnk_030041E0
_0200A34C: .4byte gUnk_03006890
_0200A350: .4byte 0x81000200
_0200A354: .4byte gUnk_030039A0
_0200A358: .4byte gUnk_03002C30
_0200A35C: .4byte 0x85000008
_0200A360: .4byte gUnk_03006860
_0200A364: .4byte 0x05000200
_0200A368: .4byte gUnk_03003440
_0200A36C: .4byte 0x84000080
_0200A370: .4byte gUnk_03003F80
_0200A374: .4byte gUnk_03002D00
_0200A378: .4byte gUnk_03002CF4
_0200A37C: .4byte gUnk_03002D24
_0200A380: .4byte gUnk_03002BD0
_0200A384: .4byte gUnk_03007094
_0200A388: .4byte gUnk_0300418C
_0200A38C: .4byte gUnk_03006854
_0200A390: .4byte gUnk_03002D2C
_0200A394: .4byte gUnk_03003E5C
_0200A398: .4byte gUnk_03007098
_0200A39C: .4byte gUnk_03003650
_0200A3A0: .4byte gUnk_03002CC8
_0200A3A4: .4byte gUnk_030070B8
_0200A3A8: .4byte gUnk_03003DC0
_0200A3AC: .4byte gUnk_03003E80
_0200A3B0: .4byte gUnk_03003644
_0200A3B4: .4byte gUnk_03001F90
_0200A3B8: .4byte gUnk_02027D4C
_0200A3BC: .4byte gUnk_03002F40
_0200A3C0: .4byte 0x85000140
_0200A3C4: .4byte gUnk_03002C64
_0200A3C8: .4byte gUnk_0300368C
_0200A3CC: .4byte gUnk_03003EA8
_0200A3D0: .4byte gUnk_03004180
_0200A3D4: .4byte gUnk_03002C6C
_0200A3D8: .4byte gUnk_03002CC4
_0200A3DC: .4byte gUnk_03003DA0
_0200A3E0: .4byte gUnk_030041F0
_0200A3E4: .4byte gUnk_03006850
_0200A3E8: .4byte gUnk_03002D28
_0200A3EC: .4byte gUnk_03002C50
_0200A3F0: .4byte gUnk_030070A0
_0200A3F4: .4byte 0x0095FA00
_0200A3F8: .4byte gUnk_030070B4
_0200A3FC: .4byte gUnk_03002C68
_0200A400: .4byte gUnk_03002D20
_0200A404: .4byte 0x06014000
_0200A408: .4byte gUnk_03002C20
_0200A40C: .4byte sub_020000FC
_0200A410: .4byte gUnk_03001FD0
_0200A414: .4byte 0x03007FFC
_0200A418: .4byte 0x04000200
_0200A41C: .4byte 0x04000004
_0200A420: .4byte 0x080000B2
_0200A424: .4byte 0x080000AC
_0200A428: .4byte 0x454B3842
_0200A42C: .4byte 0x04000208
_0200A430: .4byte gUnk_03003E90
_0200A434: .4byte 0x85000005
_0200A438: .4byte gUnk_03002C70
_0200A43C: .4byte 0x85000014
_0200A440: .4byte gUnk_03002D34
_0200A444: .4byte gUnk_03002D38
_0200A448: .4byte gUnk_0300685C
_0200A44C: .4byte gUnk_03002CC0
_0200A450: .4byte gUnk_03002D30
_0200A454: .4byte 0x04000008
_0200A458: .4byte gUnk_03003690
_0200A45C: .4byte 0x80000004

	thumb_func_start sub_0200A460
sub_0200A460: @ 0x0200A460
	push {r4, r5, lr}
_0200A462:
	ldr r1, _0200A4C0 @ =gUnk_030070B4
	movs r0, #0
	strb r0, [r1]
	ldr r1, _0200A4C4 @ =gUnk_03002C20
	ldr r0, [r1]
	ldr r2, _0200A4C8 @ =0xFEFFFFFF
	ands r0, r2
	str r0, [r1]
	ldr r1, _0200A4CC @ =gUnk_03003E50
	ldr r0, [r1]
	ands r0, r2
	str r0, [r1]
	ldr r0, _0200A4D0 @ =gUnk_03003DB4
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0200A4EE
	bl sub_0200AC74
	ldr r0, _0200A4D4 @ =gUnk_03002D38
	ldrb r0, [r0]
	cmp r0, #0
	beq _0200A4AC
	bl sub_02000470
	ldr r0, _0200A4D8 @ =gUnk_03003E90
	ldr r1, _0200A4DC @ =gUnk_03002C70
	movs r2, #0
	bl MultiSioMain
	ldr r1, _0200A4E0 @ =gUnk_03002D34
	str r0, [r1]
	bl sub_020005A0
	cmp r0, #0
	bne _0200A4AC
	bl sub_02001160
_0200A4AC:
	ldr r0, _0200A4E4 @ =gUnk_03000AB0
	ldrh r1, [r0, #4]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _0200A4E8
	bl sub_0200B014
	b _0200A4EE
	.align 2, 0
_0200A4C0: .4byte gUnk_030070B4
_0200A4C4: .4byte gUnk_03002C20
_0200A4C8: .4byte 0xFEFFFFFF
_0200A4CC: .4byte gUnk_03003E50
_0200A4D0: .4byte gUnk_03003DB4
_0200A4D4: .4byte gUnk_03002D38
_0200A4D8: .4byte gUnk_03003E90
_0200A4DC: .4byte gUnk_03002C70
_0200A4E0: .4byte gUnk_03002D34
_0200A4E4: .4byte gUnk_03000AB0
_0200A4E8:
	ldr r1, _0200A534 @ =gUnk_03003DB4
	movs r0, #0
	strb r0, [r1]
_0200A4EE:
	ldr r4, _0200A538 @ =gUnk_03002C20
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4]
	ldr r1, _0200A53C @ =gUnk_03003E50
	str r0, [r1]
	bl VBlankIntrWait
	ldr r1, _0200A540 @ =gUnk_03002CF4
	movs r0, #0
	strb r0, [r1]
	bl sub_0200A584
	ldr r0, [r4]
	movs r5, #0x80
	lsls r5, r5, #3
	ands r0, r5
	cmp r0, #0
	bne _0200A526
	bl sub_0200A86C
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	cmp r0, #0
	beq _0200A544
_0200A526:
	ldr r0, [r4]
	movs r1, #0x80
	lsls r1, r1, #4
	orrs r0, r1
	str r0, [r4]
	b _0200A54A
	.align 2, 0
_0200A534: .4byte gUnk_03003DB4
_0200A538: .4byte gUnk_03002C20
_0200A53C: .4byte gUnk_03003E50
_0200A540: .4byte gUnk_03002CF4
_0200A544:
	ldr r0, _0200A578 @ =0xFFFFF7FF
	ands r1, r0
	str r1, [r4]
_0200A54A:
	ldr r0, _0200A57C @ =gUnk_03002C20
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	bne _0200A55C
	bl m4aSoundMain
_0200A55C:
	ldr r0, _0200A580 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0200A56A
	b _0200A462
_0200A56A:
	ldr r0, _0200A580 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0200A56A
	b _0200A462
	.align 2, 0
_0200A578: .4byte 0xFFFFF7FF
_0200A57C: .4byte gUnk_03002C20
_0200A580: .4byte 0x04000004

	thumb_func_start sub_0200A584
sub_0200A584: @ 0x0200A584
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r4, #0
	movs r1, #0x80
	lsls r1, r1, #0x13
	ldr r0, _0200A678 @ =gUnk_03003E70
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r3, _0200A67C @ =0x040000D4
	ldr r0, _0200A680 @ =gUnk_03003690
	str r0, [r3]
	ldr r0, _0200A684 @ =0x04000008
	str r0, [r3, #4]
	ldr r0, _0200A688 @ =0x84000002
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r5, _0200A68C @ =gUnk_03002C20
	ldr r1, [r5]
	movs r2, #1
	adds r0, r1, #0
	ands r0, r2
	ldr r6, _0200A690 @ =gUnk_03003650
	ldr r7, _0200A694 @ =gUnk_03003E60
	mov ip, r7
	ldr r7, _0200A698 @ =gUnk_03002D00
	mov r8, r7
	ldr r7, _0200A69C @ =gUnk_03002CC4
	mov sb, r7
	ldr r7, _0200A6A0 @ =gUnk_03003DB4
	mov sl, r7
	cmp r0, #0
	beq _0200A5E0
	ldr r0, _0200A6A4 @ =gUnk_03003F80
	str r0, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _0200A6A8 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_0200A5E0:
	ldr r1, [r5]
	movs r2, #2
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _0200A5FE
	ldr r0, _0200A6AC @ =gUnk_03003440
	str r0, [r3]
	ldr r0, _0200A6B0 @ =0x05000200
	str r0, [r3, #4]
	ldr r0, _0200A6A8 @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	eors r1, r2
	str r1, [r5]
_0200A5FE:
	str r6, [r3]
	ldr r0, _0200A6B4 @ =0x04000040
	str r0, [r3, #4]
	ldr r0, _0200A6B8 @ =0x84000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _0200A6BC @ =gUnk_03002CC8
	str r0, [r3]
	ldr r0, _0200A6C0 @ =0x04000050
	str r0, [r3, #4]
	ldr r0, _0200A6C4 @ =0x80000003
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r1, ip
	str r1, [r3]
	ldr r0, _0200A6C8 @ =0x04000010
	str r0, [r3, #4]
	ldr r0, _0200A6CC @ =0x80000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	mov r7, r8
	str r7, [r3]
	ldr r0, _0200A6D0 @ =0x04000020
	str r0, [r3, #4]
	ldr r0, _0200A6D4 @ =0x84000008
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, [r5]
	movs r0, #8
	ands r1, r0
	cmp r1, #0
	beq _0200A6EC
	ldr r2, _0200A6D8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	str r4, [sp]
	mov r0, sp
	str r0, [r3]
	ldr r4, _0200A6DC @ =gUnk_030041F0
	str r4, [r3, #4]
	ldr r0, _0200A6E0 @ =0x85000004
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _0200A6E4 @ =gUnk_03002C6C
	ldrb r2, [r1]
	cmp r2, #0
	beq _0200A672
	ldr r0, _0200A6E8 @ =gUnk_03003DA0
	str r0, [r3]
	str r4, [r3, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
_0200A672:
	mov r1, sb
	strb r2, [r1]
	b _0200A6FA
	.align 2, 0
_0200A678: .4byte gUnk_03003E70
_0200A67C: .4byte 0x040000D4
_0200A680: .4byte gUnk_03003690
_0200A684: .4byte 0x04000008
_0200A688: .4byte 0x84000002
_0200A68C: .4byte gUnk_03002C20
_0200A690: .4byte gUnk_03003650
_0200A694: .4byte gUnk_03003E60
_0200A698: .4byte gUnk_03002D00
_0200A69C: .4byte gUnk_03002CC4
_0200A6A0: .4byte gUnk_03003DB4
_0200A6A4: .4byte gUnk_03003F80
_0200A6A8: .4byte 0x84000080
_0200A6AC: .4byte gUnk_03003440
_0200A6B0: .4byte 0x05000200
_0200A6B4: .4byte 0x04000040
_0200A6B8: .4byte 0x84000003
_0200A6BC: .4byte gUnk_03002CC8
_0200A6C0: .4byte 0x04000050
_0200A6C4: .4byte 0x80000003
_0200A6C8: .4byte 0x04000010
_0200A6CC: .4byte 0x80000008
_0200A6D0: .4byte 0x04000020
_0200A6D4: .4byte 0x84000008
_0200A6D8: .4byte 0x04000200
_0200A6DC: .4byte gUnk_030041F0
_0200A6E0: .4byte 0x85000004
_0200A6E4: .4byte gUnk_03002C6C
_0200A6E8: .4byte gUnk_03003DA0
_0200A6EC:
	ldr r2, _0200A774 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200A778 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	mov r7, sb
	strb r4, [r7]
_0200A6FA:
	ldr r0, [r5]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0200A722
	ldr r2, _0200A77C @ =0x040000D4
	ldr r0, _0200A780 @ =gUnk_03002C64
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _0200A784 @ =gUnk_03003EA8
	ldr r0, [r0]
	str r0, [r2, #4]
	ldr r0, _0200A788 @ =gUnk_03004180
	ldrb r0, [r0]
	lsrs r0, r0, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0200A722:
	mov r1, sl
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _0200A770
	bl sub_0200C3E8
	ldr r0, _0200A77C @ =0x040000D4
	ldr r3, _0200A78C @ =gUnk_03006890
	str r3, [r0]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	str r1, [r0, #4]
	ldr r2, _0200A790 @ =0x80000080
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0x80
	lsls r4, r4, #1
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _0200A794 @ =0x07000100
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r3, r7
	str r1, [r0]
	ldr r1, _0200A798 @ =0x07000200
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	movs r4, #0xc0
	lsls r4, r4, #2
	adds r1, r3, r4
	str r1, [r0]
	ldr r1, _0200A79C @ =0x07000300
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_0200A770:
	movs r4, #0
	b _0200A7B2
	.align 2, 0
_0200A774: .4byte 0x04000200
_0200A778: .4byte 0x0000FFFD
_0200A77C: .4byte 0x040000D4
_0200A780: .4byte gUnk_03002C64
_0200A784: .4byte gUnk_03003EA8
_0200A788: .4byte gUnk_03004180
_0200A78C: .4byte gUnk_03006890
_0200A790: .4byte 0x80000080
_0200A794: .4byte 0x07000100
_0200A798: .4byte 0x07000200
_0200A79C: .4byte 0x07000300
_0200A7A0:
	ldr r1, _0200A800 @ =gUnk_030070A0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0200A7B2:
	ldr r0, _0200A804 @ =gUnk_03002D28
	ldrb r0, [r0]
	cmp r4, r0
	blo _0200A7A0
	ldr r0, _0200A808 @ =gUnk_03002C20
	ldr r1, [r0]
	movs r0, #0x10
	ands r1, r0
	ldr r7, _0200A80C @ =gUnk_03003DB4
	mov sl, r7
	ldr r5, _0200A804 @ =gUnk_03002D28
	cmp r1, #0
	beq _0200A820
	movs r0, #0
	str r0, [sp]
	ldr r2, _0200A810 @ =0x040000D4
	mov r0, sp
	str r0, [r2]
	ldr r4, _0200A800 @ =gUnk_030070A0
	str r4, [r2, #4]
	ldr r0, _0200A814 @ =0x85000004
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _0200A818 @ =gUnk_03006850
	ldrb r3, [r1]
	cmp r3, #0
	beq _0200A7FA
	ldr r0, _0200A81C @ =gUnk_03002C50
	str r0, [r2]
	str r4, [r2, #4]
	ldrb r0, [r1]
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0200A7FA:
	strb r3, [r5]
	b _0200A822
	.align 2, 0
_0200A800: .4byte gUnk_030070A0
_0200A804: .4byte gUnk_03002D28
_0200A808: .4byte gUnk_03002C20
_0200A80C: .4byte gUnk_03003DB4
_0200A810: .4byte 0x040000D4
_0200A814: .4byte 0x85000004
_0200A818: .4byte gUnk_03006850
_0200A81C: .4byte gUnk_03002C50
_0200A820:
	strb r1, [r5]
_0200A822:
	mov r1, sl
	ldrb r4, [r1]
	cmp r4, #0xff
	bne _0200A82C
	movs r4, #0
_0200A82C:
	movs r0, #0xff
	mov r7, sl
	strb r0, [r7]
	b _0200A83A
_0200A834:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0200A83A:
	cmp r4, #1
	bhi _0200A852
	ldr r1, _0200A864 @ =gUnk_02027D84
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	cmp r0, #0
	bne _0200A834
	ldr r0, _0200A868 @ =gUnk_03003DB4
	strb r4, [r0]
_0200A852:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200A864: .4byte gUnk_02027D84
_0200A868: .4byte gUnk_03003DB4

	thumb_func_start sub_0200A86C
sub_0200A86C: @ 0x0200A86C
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _0200A8A4 @ =gUnk_03002C6C
	movs r0, #0
	strb r0, [r1]
	ldr r5, _0200A8A8 @ =gUnk_03002C20
	ldr r0, [r5]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5]
	movs r1, #0x20
	ands r0, r1
	cmp r0, #0
	bne _0200A8C2
	ldr r2, _0200A8AC @ =gUnk_03002C64
	ldr r0, [r2]
	ldr r1, _0200A8B0 @ =gUnk_03002F40
	ldr r3, _0200A8B4 @ =gUnk_0300368C
	cmp r0, r1
	bne _0200A8B8
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r0, r1, r4
	str r0, [r2]
	str r1, [r3]
	b _0200A8C2
	.align 2, 0
_0200A8A4: .4byte gUnk_03002C6C
_0200A8A8: .4byte gUnk_03002C20
_0200A8AC: .4byte gUnk_03002C64
_0200A8B0: .4byte gUnk_03002F40
_0200A8B4: .4byte gUnk_0300368C
_0200A8B8:
	str r1, [r2]
	movs r2, #0xa0
	lsls r2, r2, #2
	adds r0, r1, r2
	str r0, [r3]
_0200A8C2:
	ldr r4, [r5]
	movs r0, #5
	rsbs r0, r0, #0
	ands r4, r0
	mov r0, sp
	movs r1, #0x80
	lsls r1, r1, #2
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0200A934 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _0200A938 @ =gUnk_03006890
	mov ip, r1
	str r1, [r0, #4]
	ldr r2, _0200A93C @ =0x81000080
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
	ldr r1, _0200A940 @ =gUnk_03006850
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
_0200A934: .4byte 0x040000D4
_0200A938: .4byte gUnk_03006890
_0200A93C: .4byte 0x81000080
_0200A940: .4byte gUnk_03006850

	thumb_func_start sub_0200A944
sub_0200A944: @ 0x0200A944
	push {r4, r5, r6, lr}
	ldr r4, _0200A9C0 @ =0x040000B0
	ldrh r1, [r4, #0xa]
	ldr r0, _0200A9C4 @ =0x0000C5FF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r1, [r4, #0xa]
	ldr r0, _0200A9C8 @ =0x00007FFF
	ands r0, r1
	strh r0, [r4, #0xa]
	ldrh r0, [r4, #0xa]
	bl SoundVSync_rev01
	ldr r1, _0200A9CC @ =0x03007FF8
	ldrh r0, [r1]
	movs r2, #1
	orrs r0, r2
	strh r0, [r1]
	ldr r0, _0200A9D0 @ =gUnk_030070B4
	strb r2, [r0]
	ldr r6, _0200A9D4 @ =gUnk_03003E50
	ldr r3, [r6]
	movs r0, #4
	ands r3, r0
	cmp r3, #0
	beq _0200A9EC
	ldr r2, _0200A9D8 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	adds r1, r4, #0
_0200A984:
	ldr r0, [r1, #8]
	cmp r0, #0
	blt _0200A984
	ldr r2, _0200A9C0 @ =0x040000B0
	ldr r0, _0200A9DC @ =gUnk_03002C64
	ldr r4, [r0]
	str r4, [r2]
	ldr r0, _0200A9E0 @ =gUnk_03003EA8
	ldr r5, [r0]
	str r5, [r2, #4]
	ldr r3, _0200A9E4 @ =gUnk_03004180
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
	ldr r1, _0200A9E8 @ =0xA2600000
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0200AA00
	.align 2, 0
_0200A9C0: .4byte 0x040000B0
_0200A9C4: .4byte 0x0000C5FF
_0200A9C8: .4byte 0x00007FFF
_0200A9CC: .4byte 0x03007FF8
_0200A9D0: .4byte gUnk_030070B4
_0200A9D4: .4byte gUnk_03003E50
_0200A9D8: .4byte 0x04000200
_0200A9DC: .4byte gUnk_03002C64
_0200A9E0: .4byte gUnk_03003EA8
_0200A9E4: .4byte gUnk_03004180
_0200A9E8: .4byte 0xA2600000
_0200A9EC:
	ldr r4, _0200AA44 @ =gUnk_03003EA8
	ldr r0, [r4]
	cmp r0, #0
	beq _0200AA00
	ldr r2, _0200AA48 @ =0x04000200
	ldrh r1, [r2]
	ldr r0, _0200AA4C @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2]
	str r3, [r4]
_0200AA00:
	ldr r0, [r6]
	movs r1, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0200AA5C
	ldr r2, _0200AA50 @ =0x04000004
	ldrh r0, [r2]
	movs r3, #0x20
	orrs r0, r3
	strh r0, [r2]
	ldrh r1, [r2]
	movs r0, #0xff
	ands r0, r1
	strh r0, [r2]
	ldr r0, _0200AA54 @ =gUnk_03003EA4
	ldrb r0, [r0]
	lsls r0, r0, #8
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r1, [r2]
	ldr r0, _0200AA58 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	orrs r0, r3
	strh r0, [r2]
	ldr r2, _0200AA48 @ =0x04000200
	ldrh r0, [r2]
	movs r1, #4
	orrs r0, r1
	strh r0, [r2]
	b _0200AA78
	.align 2, 0
_0200AA44: .4byte gUnk_03003EA8
_0200AA48: .4byte 0x04000200
_0200AA4C: .4byte 0x0000FFFD
_0200AA50: .4byte 0x04000004
_0200AA54: .4byte gUnk_03003EA4
_0200AA58: .4byte 0x0000FFFB
_0200AA5C:
	ldr r2, _0200AAB0 @ =0x04000004
	ldrh r3, [r2]
	ldr r1, _0200AAB4 @ =0x0000FFFB
	adds r0, r1, #0
	ands r0, r3
	strh r0, [r2]
	ldrh r3, [r2]
	ldr r0, _0200AAB8 @ =0x0000FFDF
	ands r0, r3
	strh r0, [r2]
	ldr r2, _0200AABC @ =0x04000200
	ldrh r0, [r2]
	ands r1, r0
	strh r1, [r2]
_0200AA78:
	ldr r0, _0200AAC0 @ =gUnk_03002D38
	ldrb r0, [r0]
	cmp r0, #1
	beq _0200AA9A
	ldr r1, [r6]
	movs r0, #0x80
	lsls r0, r0, #0x11
	ands r0, r1
	cmp r0, #0
	bne _0200AA9A
	movs r0, #0x80
	lsls r0, r0, #7
	ands r1, r0
	cmp r1, #0
	bne _0200AA9A
	bl m4aSoundMain
_0200AA9A:
	ldr r1, _0200AAC4 @ =gUnk_03003644
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _0200AAC8 @ =0x04000202
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200AAB0: .4byte 0x04000004
_0200AAB4: .4byte 0x0000FFFB
_0200AAB8: .4byte 0x0000FFDF
_0200AABC: .4byte 0x04000200
_0200AAC0: .4byte gUnk_03002D38
_0200AAC4: .4byte gUnk_03003644
_0200AAC8: .4byte 0x04000202

	thumb_func_start sub_0200AACC
sub_0200AACC: @ 0x0200AACC
	push {r4, r5, lr}
	ldr r0, _0200AADC @ =0x04000006
	ldrb r0, [r0]
	adds r5, r0, #0
	cmp r5, #0x9f
	bhi _0200AAFC
	movs r4, #0
	b _0200AAF4
	.align 2, 0
_0200AADC: .4byte 0x04000006
_0200AAE0:
	ldr r1, _0200AB08 @ =gUnk_030041F0
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r5, #0
	bl _call_via_r1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
_0200AAF4:
	ldr r0, _0200AB0C @ =gUnk_03002CC4
	ldrb r0, [r0]
	cmp r4, r0
	blo _0200AAE0
_0200AAFC:
	ldr r1, _0200AB10 @ =0x04000202
	movs r0, #2
	strh r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200AB08: .4byte gUnk_030041F0
_0200AB0C: .4byte gUnk_03002CC4
_0200AB10: .4byte 0x04000202

	thumb_func_start sub_0200AB14
sub_0200AB14: @ 0x0200AB14
	ldr r1, _0200AB1C @ =0x04000202
	movs r0, #4
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB1C: .4byte 0x04000202

	thumb_func_start sub_0200AB20
sub_0200AB20: @ 0x0200AB20
	ldr r1, _0200AB28 @ =0x04000202
	movs r0, #8
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB28: .4byte 0x04000202

	thumb_func_start sub_0200AB2C
sub_0200AB2C: @ 0x0200AB2C
	ldr r1, _0200AB34 @ =0x04000202
	movs r0, #0x10
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB34: .4byte 0x04000202

	thumb_func_start sub_0200AB38
sub_0200AB38: @ 0x0200AB38
	ldr r1, _0200AB40 @ =0x04000202
	movs r0, #0x20
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB40: .4byte 0x04000202

	thumb_func_start sub_0200AB44
sub_0200AB44: @ 0x0200AB44
	ldr r1, _0200AB4C @ =0x04000202
	movs r0, #0x40
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB4C: .4byte 0x04000202

	thumb_func_start sub_0200AB50
sub_0200AB50: @ 0x0200AB50
	ldr r1, _0200AB5C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB5C: .4byte 0x04000202

	thumb_func_start sub_0200AB60
sub_0200AB60: @ 0x0200AB60
	ldr r1, _0200AB6C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB6C: .4byte 0x04000202

	thumb_func_start sub_0200AB70
sub_0200AB70: @ 0x0200AB70
	ldr r1, _0200AB7C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB7C: .4byte 0x04000202

	thumb_func_start sub_0200AB80
sub_0200AB80: @ 0x0200AB80
	ldr r1, _0200AB8C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB8C: .4byte 0x04000202

	thumb_func_start sub_0200AB90
sub_0200AB90: @ 0x0200AB90
	ldr r1, _0200AB9C @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200AB9C: .4byte 0x04000202

	thumb_func_start sub_0200ABA0
sub_0200ABA0: @ 0x0200ABA0
	ldr r1, _0200ABAC @ =0x04000202
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	bx lr
	.align 2, 0
_0200ABAC: .4byte 0x04000202

	thumb_func_start nullsub_08
nullsub_08: @ 0x0200ABB0
	bx lr
	.align 2, 0

	thumb_func_start sub_0200ABB4
sub_0200ABB4: @ 0x0200ABB4
	push {r4, r5, r6, r7, lr}
	ldr r0, _0200AC00 @ =gUnk_03006858
	ldr r7, _0200AC04 @ =gUnk_03004184
	ldrb r0, [r0]
	ldrb r1, [r7]
	cmp r0, r1
	beq _0200AC6A
_0200ABC2:
	ldr r6, _0200AC00 @ =gUnk_03006858
	ldrb r0, [r6]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _0200AC08 @ =gUnk_030036A0
	adds r3, r1, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	beq _0200AC42
	movs r5, #0
_0200ABD8:
	movs r0, #0x80
	lsls r0, r0, #3
	ldr r4, [r3]
	cmp r1, r0
	bls _0200AC18
	ldr r1, _0200AC0C @ =0x040000D4
	adds r0, r4, r5
	str r0, [r1]
	ldr r0, [r3, #4]
	adds r0, r0, r5
	str r0, [r1, #4]
	ldr r0, _0200AC10 @ =0x80000200
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _0200AC14 @ =0xFFFFFC00
	adds r0, r1, #0
	ldrh r1, [r3, #8]
	adds r0, r0, r1
	b _0200AC34
	.align 2, 0
_0200AC00: .4byte gUnk_03006858
_0200AC04: .4byte gUnk_03004184
_0200AC08: .4byte gUnk_030036A0
_0200AC0C: .4byte 0x040000D4
_0200AC10: .4byte 0x80000200
_0200AC14: .4byte 0xFFFFFC00
_0200AC18:
	ldr r2, _0200AC5C @ =0x040000D4
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
_0200AC34:
	strh r0, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #3
	adds r5, r5, r0
	ldrh r1, [r3, #8]
	cmp r1, #0
	bne _0200ABD8
_0200AC42:
	ldrb r0, [r6]
	adds r2, r0, #1
	movs r0, #0x3f
	ands r2, r0
	strb r2, [r6]
	ldr r0, _0200AC60 @ =0x04000004
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0200AC64
	movs r0, #0
	b _0200AC6C
	.align 2, 0
_0200AC5C: .4byte 0x040000D4
_0200AC60: .4byte 0x04000004
_0200AC64:
	ldrb r1, [r7]
	cmp r2, r1
	bne _0200ABC2
_0200AC6A:
	movs r0, #1
_0200AC6C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200AC74
sub_0200AC74: @ 0x0200AC74
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _0200ACD4 @ =gUnk_03003680
	mov r8, r0
	ldr r1, _0200ACD8 @ =gUnk_03003DC0
	mov ip, r1
	ldr r2, _0200ACDC @ =gUnk_03003E80
	mov sb, r2
	ldr r0, _0200ACE0 @ =gUnk_03004188
	ldr r6, _0200ACE4 @ =gUnk_03003670
	ldrh r3, [r6]
	strh r3, [r0]
	ldr r0, _0200ACE8 @ =0x04000130
	ldrh r0, [r0]
	ldr r7, _0200ACEC @ =0x000003FF
	adds r1, r7, #0
	bics r1, r0
	strh r1, [r6]
	ldr r0, _0200ACF0 @ =gUnk_03002C60
	strh r1, [r0]
	ldr r4, _0200ACF4 @ =gUnk_030041DC
	adds r0, r1, #0
	eors r0, r3
	adds r2, r0, #0
	ands r2, r1
	strh r2, [r4]
	ldr r1, _0200ACF8 @ =gUnk_03003DCC
	ands r0, r3
	strh r0, [r1]
	ldr r5, _0200ACFC @ =gUnk_03003698
	strh r2, [r5]
	movs r1, #0
_0200ACB8:
	ldrh r0, [r6]
	lsls r4, r1, #0x18
	asrs r2, r4, #0x18
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	mov r7, r8
	adds r3, r7, r2
	cmp r0, #0
	bne _0200AD00
	mov r1, ip
	adds r0, r1, r2
	b _0200AD18
	.align 2, 0
_0200ACD4: .4byte gUnk_03003680
_0200ACD8: .4byte gUnk_03003DC0
_0200ACDC: .4byte gUnk_03003E80
_0200ACE0: .4byte gUnk_03004188
_0200ACE4: .4byte gUnk_03003670
_0200ACE8: .4byte 0x04000130
_0200ACEC: .4byte 0x000003FF
_0200ACF0: .4byte gUnk_03002C60
_0200ACF4: .4byte gUnk_030041DC
_0200ACF8: .4byte gUnk_03003DCC
_0200ACFC: .4byte gUnk_03003698
_0200AD00:
	ldrb r0, [r3]
	cmp r0, #0
	beq _0200AD0A
	subs r0, #1
	b _0200AD1A
_0200AD0A:
	adds r0, r1, #0
	lsls r0, r2
	ldrh r1, [r5]
	orrs r0, r1
	strh r0, [r5]
	mov r7, sb
	adds r0, r7, r2
_0200AD18:
	ldrb r0, [r0]
_0200AD1A:
	strb r0, [r3]
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r4, r1
	lsrs r1, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _0200ACB8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200AD38
sub_0200AD38: @ 0x0200AD38
	push {r4, r5, lr}
	sub sp, #4
	ldr r0, _0200ADD4 @ =gUnk_03003DB0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0200ADD8 @ =gUnk_0300369C
	str r1, [r0]
	ldr r0, _0200ADDC @ =gUnk_0300365C
	str r1, [r0]
	ldr r0, _0200ADE0 @ =gUnk_03003678
	str r1, [r0]
	str r1, [sp]
	ldr r1, _0200ADE4 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	ldr r4, _0200ADE8 @ =gUnk_030021D0
	str r4, [r1, #4]
	ldr r0, _0200ADEC @ =0x85000080
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0
	movs r3, #0
_0200AD64:
	ldr r0, _0200ADF0 @ =gUnk_03002D40
	lsls r1, r2, #2
	adds r1, r1, r0
	adds r0, r3, r4
	str r0, [r1]
	adds r3, #0x14
	adds r2, #1
	cmp r2, #0x7f
	ble _0200AD64
	bl sub_0200AE1C
	adds r4, r0, #0
	cmp r4, #0
	beq _0200AE10
	ldr r0, _0200ADF4 @ =sub_0200B2C4
	str r0, [r4, #8]
	movs r5, #0
	strh r5, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #2]
	bl sub_0200AE1C
	strh r0, [r4, #4]
	ldrh r1, [r4, #4]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _0200AE10
	strh r4, [r1, #2]
	ldrh r0, [r4, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r4, r0, r1
	ldr r0, _0200ADF8 @ =__malloc_unlock
	str r0, [r4, #8]
	ldr r0, _0200ADFC @ =0x0000FFFF
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	strh r5, [r4]
	strh r5, [r4, #4]
	ldr r1, _0200AE00 @ =gUnk_03002CE0
	strh r5, [r1]
	strh r5, [r1, #2]
	strh r5, [r1, #4]
	ldr r0, _0200AE04 @ =gUnk_03007488
	ldr r0, [r0]
	strh r0, [r1, #6]
	ldr r1, _0200AE08 @ =gUnk_03004200
	strh r5, [r1]
	ldr r0, _0200AE0C @ =0x00002604
	strh r0, [r1, #2]
	movs r0, #1
	b _0200AE12
	.align 2, 0
_0200ADD4: .4byte gUnk_03003DB0
_0200ADD8: .4byte gUnk_0300369C
_0200ADDC: .4byte gUnk_0300365C
_0200ADE0: .4byte gUnk_03003678
_0200ADE4: .4byte 0x040000D4
_0200ADE8: .4byte gUnk_030021D0
_0200ADEC: .4byte 0x85000080
_0200ADF0: .4byte gUnk_03002D40
_0200ADF4: .4byte sub_0200B2C4
_0200ADF8: .4byte __malloc_unlock
_0200ADFC: .4byte 0x0000FFFF
_0200AE00: .4byte gUnk_03002CE0
_0200AE04: .4byte gUnk_03007488
_0200AE08: .4byte gUnk_03004200
_0200AE0C: .4byte 0x00002604
_0200AE10:
	movs r0, #0
_0200AE12:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200AE1C
sub_0200AE1C: @ 0x0200AE1C
	push {lr}
	ldr r3, _0200AE34 @ =gUnk_0300365C
	ldr r2, [r3]
	cmp r2, #0x7f
	bgt _0200AE3C
	ldr r1, _0200AE38 @ =gUnk_03002D40
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	adds r1, r2, #1
	str r1, [r3]
	b _0200AE3E
	.align 2, 0
_0200AE34: .4byte gUnk_0300365C
_0200AE38: .4byte gUnk_03002D40
_0200AE3C:
	movs r0, #0
_0200AE3E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200AE44
sub_0200AE44: @ 0x0200AE44
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
	bl sub_0200AE1C
	adds r4, r0, #0
	cmp r4, #0
	bne _0200AE6C
	ldr r0, _0200AE68 @ =gUnk_03002CE0
	b _0200AEDC
	.align 2, 0
_0200AE68: .4byte gUnk_03002CE0
_0200AE6C:
	str r7, [r4, #8]
	ldr r0, [sp, #0x18]
	str r0, [r4, #0xc]
	mov r0, r8
	strh r0, [r4, #0x10]
	strh r5, [r4, #0x12]
	adds r0, r6, #0
	bl sub_0200B0F8
	strh r0, [r4, #6]
	ldr r0, _0200AEC0 @ =gUnk_03003DB0
	ldr r0, [r0]
	strh r0, [r4]
	ldr r0, _0200AEC4 @ =gUnk_03002D40
	ldr r3, [r0]
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r1
	beq _0200AEDA
	ldr r6, _0200AEC8 @ =gUnk_0300369C
_0200AE98:
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r2, r5
	ldrh r0, [r1, #0x10]
	cmp r0, r8
	bls _0200AECC
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
	bne _0200AEDA
	str r4, [r6]
	b _0200AEDA
	.align 2, 0
_0200AEC0: .4byte gUnk_03003DB0
_0200AEC4: .4byte gUnk_03002D40
_0200AEC8: .4byte gUnk_0300369C
_0200AECC:
	adds r3, r1, #0
	ldrh r2, [r3, #4]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	cmp r0, r5
	bne _0200AE98
_0200AEDA:
	adds r0, r4, #0
_0200AEDC:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200AEE8
sub_0200AEE8: @ 0x0200AEE8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _0200AF3C @ =gUnk_03002D40
	ldr r1, [r0]
	ldrh r0, [r0]
	cmp r0, #0
	beq _0200AF50
_0200AEFC:
	ldrh r0, [r1, #0x10]
	cmp r0, r2
	blo _0200AF44
_0200AF02:
	ldrh r0, [r1, #0x10]
	ldr r2, _0200AF40 @ =gUnk_03003678
	cmp r0, r4
	bhs _0200AF34
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r0, r0, r3
	str r0, [r2]
	ldr r2, _0200AF3C @ =gUnk_03002D40
	ldr r0, [r2]
	cmp r1, r0
	beq _0200AF28
	ldr r0, [r2, #4]
	cmp r1, r0
	beq _0200AF28
	adds r0, r1, #0
	bl sub_0200AF60
_0200AF28:
	ldr r2, _0200AF40 @ =gUnk_03003678
	ldr r1, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0200AF02
_0200AF34:
	movs r0, #0
	str r0, [r2]
	b _0200AF56
	.align 2, 0
_0200AF3C: .4byte gUnk_03002D40
_0200AF40: .4byte gUnk_03003678
_0200AF44:
	ldrh r0, [r1, #4]
	movs r3, #0xc0
	lsls r3, r3, #0x12
	adds r1, r0, r3
	cmp r0, #0
	bne _0200AEFC
_0200AF50:
	ldr r1, _0200AF5C @ =gUnk_03003678
	movs r0, #0
	str r0, [r1]
_0200AF56:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0200AF5C: .4byte gUnk_03003678

	thumb_func_start sub_0200AF60
sub_0200AF60: @ 0x0200AF60
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrh r1, [r4, #0x12]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _0200B002
	ldrh r0, [r4, #2]
	movs r5, #0xc0
	lsls r5, r5, #0x12
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	cmp r1, r5
	beq _0200B002
	cmp r0, r5
	beq _0200B002
	ldr r1, [r4, #0xc]
	cmp r1, #0
	beq _0200AF8E
	adds r0, r4, #0
	bl _call_via_r1
_0200AF8E:
	ldr r1, _0200AFD4 @ =gUnk_0300369C
	ldr r0, [r1]
	cmp r4, r0
	bne _0200AF9C
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_0200AF9C:
	ldr r1, _0200AFD8 @ =gUnk_03003678
	ldr r0, [r1]
	cmp r4, r0
	bne _0200AFAA
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	str r0, [r1]
_0200AFAA:
	ldrh r0, [r4, #2]
	adds r1, r0, r5
	ldrh r0, [r4, #4]
	adds r0, r0, r5
	strh r0, [r1, #4]
	strh r1, [r0, #2]
	ldrh r0, [r4, #6]
	cmp r0, #0
	beq _0200AFE2
	ldrh r1, [r4, #0x12]
	movs r0, #0x10
	ands r0, r1
	ldrh r1, [r4, #6]
	cmp r0, #0
	beq _0200AFDC
	lsls r1, r1, #2
	movs r0, #0x80
	lsls r0, r0, #0x12
	adds r0, r1, r0
	b _0200AFDE
	.align 2, 0
_0200AFD4: .4byte gUnk_0300369C
_0200AFD8: .4byte gUnk_03003678
_0200AFDC:
	adds r0, r1, r5
_0200AFDE:
	bl sub_0200B160
_0200AFE2:
	ldr r2, _0200B008 @ =gUnk_03002D40
	ldr r1, _0200B00C @ =gUnk_0300365C
	ldr r0, [r1]
	subs r0, #1
	str r0, [r1]
	lsls r0, r0, #2
	adds r0, r0, r2
	str r4, [r0]
	movs r1, #0
	strh r1, [r4]
	strh r1, [r4, #2]
	ldr r0, _0200B010 @ =nullsub_011
	str r0, [r4, #8]
	strh r1, [r4, #0x10]
	strh r1, [r4, #0x12]
	strh r1, [r4, #6]
_0200B002:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200B008: .4byte gUnk_03002D40
_0200B00C: .4byte gUnk_0300365C
_0200B010: .4byte nullsub_011

	thumb_func_start sub_0200B014
sub_0200B014: @ 0x0200B014
	push {r4, r5, r6, lr}
	ldr r1, _0200B080 @ =gUnk_03003DB0
	ldr r0, _0200B084 @ =gUnk_03002D40
	ldr r2, [r0]
	str r2, [r1]
	ldr r0, _0200B088 @ =gUnk_03002C20
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	bne _0200B098
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _0200B0DA
_0200B034:
	ldr r4, _0200B08C @ =gUnk_0300369C
	ldr r5, _0200B080 @ =gUnk_03003DB0
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
	bne _0200B054
	ldr r0, [r2, #8]
	bl _call_via_r0
_0200B054:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _0200B090 @ =gUnk_030070B4
	ldrb r0, [r4]
	cmp r0, #0
	beq _0200B070
	ldr r0, _0200B094 @ =gUnk_03002D38
	ldrb r0, [r0]
	cmp r0, #1
	bne _0200B06C
	bl m4aSoundMain
_0200B06C:
	movs r0, #0
	strb r0, [r4]
_0200B070:
	ldr r0, _0200B080 @ =gUnk_03003DB0
	ldr r1, [r0]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r1, r0
	bne _0200B034
	b _0200B0DA
	.align 2, 0
_0200B080: .4byte gUnk_03003DB0
_0200B084: .4byte gUnk_03002D40
_0200B088: .4byte gUnk_03002C20
_0200B08C: .4byte gUnk_0300369C
_0200B090: .4byte gUnk_030070B4
_0200B094: .4byte gUnk_03002D38
_0200B098:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	cmp r2, r0
	beq _0200B0DA
_0200B0A0:
	ldr r4, _0200B0EC @ =gUnk_0300369C
	ldr r5, _0200B0F0 @ =gUnk_03003DB0
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
	bne _0200B0C0
	ldr r0, [r2, #8]
	bl _call_via_r0
_0200B0C0:
	ldr r0, [r4]
	str r0, [r5]
	ldr r4, _0200B0F4 @ =gUnk_030070B4
	ldrb r0, [r4]
	cmp r0, #0
	beq _0200B0D4
	bl m4aSoundMain
	movs r0, #0
	strb r0, [r4]
_0200B0D4:
	ldr r0, [r5]
	cmp r0, r6
	bne _0200B0A0
_0200B0DA:
	ldr r0, _0200B0F0 @ =gUnk_03003DB0
	movs r1, #0
	str r1, [r0]
	ldr r0, _0200B0EC @ =gUnk_0300369C
	str r1, [r0]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0200B0EC: .4byte gUnk_0300369C
_0200B0F0: .4byte gUnk_03003DB0
_0200B0F4: .4byte gUnk_030070B4

	thumb_func_start sub_0200B0F8
sub_0200B0F8: @ 0x0200B0F8
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	adds r0, r2, #3
	lsrs r2, r0, #2
	cmp r2, #0
	beq _0200B158
	lsls r0, r2, #0x12
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	lsrs r2, r0, #0x10
	ldr r3, _0200B144 @ =gUnk_03004200
_0200B112:
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	movs r4, #2
	ldrsh r1, [r3, r4]
	cmp r0, r1
	bgt _0200B148
	cmp r0, r1
	beq _0200B13A
	adds r0, r2, #4
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r1
	bgt _0200B148
	adds r1, r3, r2
	ldrh r0, [r3]
	strh r0, [r1]
	ldrh r0, [r3, #2]
	subs r0, r0, r2
	strh r0, [r1, #2]
	strh r1, [r3]
_0200B13A:
	rsbs r0, r2, #0
	strh r0, [r3, #2]
	adds r0, r3, #4
	b _0200B15A
	.align 2, 0
_0200B144: .4byte gUnk_03004200
_0200B148:
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	beq _0200B158
	adds r3, r1, #0
	b _0200B112
_0200B158:
	movs r0, #0
_0200B15A:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_0200B160
sub_0200B160: @ 0x0200B160
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #4
	ldr r3, _0200B1D8 @ =gUnk_03004200
	adds r4, r3, #0
	cmp r2, r3
	beq _0200B17C
_0200B16E:
	adds r3, r4, #0
	ldrh r1, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
	cmp r2, r4
	bne _0200B16E
_0200B17C:
	ldrh r1, [r2, #2]
	movs r5, #2
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _0200B18A
	rsbs r0, r1, #0
	strh r0, [r2, #2]
_0200B18A:
	movs r1, #2
	ldrsh r0, [r3, r1]
	adds r0, r3, r0
	cmp r0, r2
	bne _0200B1AA
	ldrh r1, [r3, #2]
	movs r5, #2
	ldrsh r0, [r3, r5]
	cmp r0, #0
	ble _0200B1AA
	ldrh r0, [r4]
	strh r0, [r3]
	ldrh r0, [r2, #2]
	adds r0, r1, r0
	strh r0, [r3, #2]
	adds r2, r3, #0
_0200B1AA:
	movs r1, #2
	ldrsh r0, [r2, r1]
	adds r3, r2, r0
	ldrh r0, [r2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r3, r0
	bne _0200B1D0
	ldrh r1, [r3, #2]
	movs r4, #2
	ldrsh r0, [r3, r4]
	cmp r0, #0
	ble _0200B1D0
	ldrh r5, [r2, #2]
	adds r0, r1, r5
	strh r0, [r2, #2]
	ldrh r0, [r3]
	strh r0, [r2]
_0200B1D0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0200B1D8: .4byte gUnk_03004200

	thumb_func_start sub_0200B1DC
sub_0200B1DC: @ 0x0200B1DC
	push {lr}
	movs r2, #0
	ldr r1, _0200B200 @ =gUnk_03004200
_0200B1E2:
	movs r3, #2
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _0200B1EC
	subs r2, r2, r0
_0200B1EC:
	ldrh r1, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
	cmp r1, r0
	bne _0200B1E2
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0200B200: .4byte gUnk_03004200

	thumb_func_start sub_0200B204
sub_0200B204: @ 0x0200B204
	push {r4, r5, r6, r7, lr}
	ldr r3, _0200B20C @ =gUnk_03004200
	b _0200B2B2
	.align 2, 0
_0200B20C: .4byte gUnk_03004200
_0200B210:
	ldrh r4, [r3, #2]
	movs r1, #2
	ldrsh r0, [r3, r1]
	ldrh r2, [r3]
	cmp r0, #0
	blt _0200B2AC
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r2, r0
	ldrh r1, [r0, #2]
	movs r5, #2
	ldrsh r0, [r0, r5]
	cmp r0, #0
	blt _0200B240
	adds r0, r4, r1
	strh r0, [r3, #2]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r2, r1
	ldrh r0, [r0]
	strh r0, [r3]
	b _0200B2B2
_0200B23C:
	strh r7, [r2, #6]
	b _0200B272
_0200B240:
	ldr r4, _0200B2A0 @ =gUnk_03000004
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
_0200B25C:
	ldr r0, _0200B2A4 @ =gUnk_030021D0
	adds r2, r4, r0
	ldrh r1, [r2, #6]
	lsls r0, r6, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	beq _0200B23C
	adds r4, #0x14
	adds r5, #1
	cmp r5, #0x7f
	ble _0200B25C
_0200B272:
	ldr r2, _0200B2A8 @ =0x040000D4
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
	b _0200B2B2
	.align 2, 0
_0200B2A0: .4byte gUnk_03000004
_0200B2A4: .4byte gUnk_030021D0
_0200B2A8: .4byte 0x040000D4
_0200B2AC:
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r2, r0
_0200B2B2:
	ldrh r0, [r3]
	movs r1, #0xc0
	lsls r1, r1, #0x12
	adds r0, r0, r1
	cmp r0, r1
	bne _0200B210
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_0200B2C4
sub_0200B2C4: @ 0x0200B2C4
	bx lr
	.align 2, 0

	thumb_func_start __malloc_unlock
__malloc_unlock: @ 0x0200B2C8
	bx lr
	.align 2, 0

	thumb_func_start nullsub_011
nullsub_011: @ 0x0200B2CC
	bx lr
	.align 2, 0

	thumb_func_start sub_0200B2D0
sub_0200B2D0: @ 0x0200B2D0
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
	ldr r1, _0200B370 @ =gUnk_03003690
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
	beq _0200B35C
_0200B322:
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
	bne _0200B322
_0200B35C:
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
_0200B370: .4byte gUnk_03003690

	thumb_func_start sub_0200B374
sub_0200B374: @ 0x0200B374
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	movs r0, #0
	mov sl, r0
_0200B384:
	ldr r1, _0200B424 @ =gUnk_03003660
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
	bne _0200B3B4
	mov r1, ip
	adds r0, r5, r1
	adds r1, #2
	adds r1, r5, r1
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _0200B3B4
	b _0200B562
_0200B3B4:
	mov r0, sl
	lsls r0, r0, #1
	mov r8, r0
	ldr r0, _0200B428 @ =gUnk_03003690
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
	bls _0200B494
	ldr r0, _0200B42C @ =gUnk_03003E70
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _0200B494
	add r7, sb
	lsrs r1, r3, #0xe
	movs r0, #0x80
	lsls r0, r0, #0xd
	lsls r0, r1
	lsrs r6, r0, #0x10
	cmp r2, #0xff
	bne _0200B438
	ldr r0, _0200B430 @ =gUnk_03006880
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _0200B434 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	ldr r1, [sp, #8]
	ldrb r0, [r1]
	subs r0, r0, r4
	muls r0, r6, r0
	lsrs r1, r0, #0x1f
	adds r0, r0, r1
	b _0200B4E0
	.align 2, 0
_0200B424: .4byte gUnk_03003660
_0200B428: .4byte gUnk_03003690
_0200B42C: .4byte gUnk_03003E70
_0200B430: .4byte gUnk_03006880
_0200B434: .4byte 0x040000D4
_0200B438:
	cmp r4, r2
	bls _0200B43E
	b _0200B548
_0200B43E:
	ldr r0, _0200B48C @ =gUnk_03006880
	add r0, sl
	ldrb r1, [r0]
	lsls r0, r1, #8
	orrs r1, r0
	adds r0, r4, #0
	muls r0, r6, r0
	adds r3, r7, r0
	mov r0, sp
	strh r1, [r0]
	ldr r2, _0200B490 @ =0x040000D4
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
	bls _0200B43E
	b _0200B548
	.align 2, 0
_0200B48C: .4byte gUnk_03006880
_0200B490: .4byte 0x040000D4
_0200B494:
	mov r1, sb
	lsls r0, r1, #1
	adds r7, r7, r0
	movs r6, #0x20
	ldr r0, _0200B4F0 @ =gUnk_03003690
	add r0, r8
	ldrh r0, [r0]
	lsrs r1, r0, #0xe
	subs r0, r1, #2
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _0200B4B0
	movs r6, #0x40
_0200B4B0:
	mov r0, ip
	adds r0, #2
	adds r0, r5, r0
	ldrb r0, [r0]
	mov r1, ip
	adds r1, #3
	cmp r0, #0xff
	bne _0200B4FC
	ldr r0, _0200B4F4 @ =gUnk_03006880
	add r0, sl
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0200B4F8 @ =0x040000D4
	str r0, [r2]
	str r3, [r2, #4]
	adds r0, r5, r1
	ldrb r0, [r0]
	subs r0, r0, r4
	muls r0, r6, r0
	lsls r0, r0, #1
_0200B4E0:
	asrs r0, r0, #1
	movs r1, #0x81
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	b _0200B548
	.align 2, 0
_0200B4F0: .4byte gUnk_03003690
_0200B4F4: .4byte gUnk_03006880
_0200B4F8: .4byte 0x040000D4
_0200B4FC:
	adds r0, r5, r1
	ldrb r0, [r0]
	cmp r4, r0
	bhi _0200B548
	ldr r0, _0200B584 @ =gUnk_03006880
	mov r8, r0
_0200B508:
	mov r0, sl
	add r0, r8
	ldrb r2, [r0]
	lsls r0, r6, #1
	muls r0, r4, r0
	adds r3, r7, r0
	mov r0, sp
	strh r2, [r0]
	ldr r2, _0200B588 @ =0x040000D4
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
	bls _0200B508
_0200B548:
	movs r0, #0
	str r0, [sp, #4]
	ldr r2, _0200B588 @ =0x040000D4
	add r0, sp, #4
	str r0, [r2]
	mov r1, sl
	lsls r0, r1, #2
	ldr r1, _0200B58C @ =gUnk_03003660
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0200B590 @ =0x85000001
	str r0, [r2, #8]
	ldr r0, [r2, #8]
_0200B562:
	mov r0, sl
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	cmp r0, #3
	bhi _0200B572
	b _0200B384
_0200B572:
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
_0200B584: .4byte gUnk_03006880
_0200B588: .4byte 0x040000D4
_0200B58C: .4byte gUnk_03003660
_0200B590: .4byte 0x85000001

	thumb_func_start sub_0200B594
sub_0200B594: @ 0x0200B594
	push {r4, r5, r6, lr}
	sub sp, #8
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	movs r6, #0
	ldr r1, _0200B5C4 @ =gUnk_0202878C
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
	bne _0200B5C8
	movs r0, #1
	rsbs r0, r0, #0
	b _0200B63A
	.align 2, 0
_0200B5C4: .4byte gUnk_0202878C
_0200B5C8:
	cmp r1, #0
	bgt _0200B5D4
	rsbs r0, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #4
_0200B5D4:
	cmp r2, #0
	bgt _0200B5E4
	rsbs r0, r2, #0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r6, #2
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0200B5E4:
	lsls r0, r4, #0x10
	asrs r2, r0, #0x10
	lsls r0, r5, #0x10
	asrs r1, r0, #0x10
	cmp r2, r1
	blt _0200B5FC
	lsls r0, r1, #0x17
	cmp r2, #0
	beq _0200B610
	asrs r0, r0, #0x10
	adds r1, r2, #0
	b _0200B60A
_0200B5FC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r0, r2, #0x17
	cmp r1, #0
	beq _0200B610
	asrs r0, r0, #0x10
_0200B60A:
	bl __divsi3
	lsls r0, r0, #0x10
_0200B610:
	lsrs r2, r0, #0x10
	mov r0, sp
	adds r3, r0, r6
	ldrb r1, [r3]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0200B62C
	movs r1, #0x80
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	subs r1, r1, r0
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
_0200B62C:
	ldrb r1, [r3]
	lsls r1, r1, #7
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	adds r0, r0, r1
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
_0200B63A:
	add sp, #8
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200B644
sub_0200B644: @ 0x0200B644
	push {r4, lr}
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r2, #0
_0200B64E:
	lsrs r0, r1, #0xc
	adds r3, r4, r2
	lsls r1, r1, #0x14
	adds r2, #1
	cmp r0, #9
	bls _0200B65E
	adds r0, #0x57
	b _0200B660
_0200B65E:
	adds r0, #0x30
_0200B660:
	strb r0, [r3]
	lsrs r1, r1, #0x10
	lsls r0, r2, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0200B64E
	adds r1, r4, r2
	movs r0, #0
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0200B678
sub_0200B678: @ 0x0200B678
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r5, #0
	movs r6, #0
_0200B682:
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
	bls _0200B682
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200B6B8
sub_0200B6B8: @ 0x0200B6B8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r2, [r4, #0x1a]
	ldrb r0, [r4, #0x1b]
	cmp r0, r2
	bne _0200B6CC
	ldrh r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	cmp r0, r1
	beq _0200B6E0
_0200B6CC:
	movs r1, #0
	strb r2, [r4, #0x1b]
	ldrh r0, [r4, #0xc]
	strh r0, [r4, #0x18]
	strh r1, [r4, #0xe]
	strh r1, [r4, #0x16]
	ldr r0, [r4, #8]
	ldr r1, _0200B6F0 @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
_0200B6E0:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _0200B6F4
	movs r0, #0
	b _0200B796
	.align 2, 0
_0200B6F0: .4byte 0xFFFFBFFF
_0200B6F4:
	ldrh r1, [r4, #0x16]
	movs r2, #0x16
	ldrsh r0, [r4, r2]
	cmp r0, #0
	ble _0200B70C
	ldrb r0, [r4, #0x1c]
	lsls r0, r0, #4
	subs r0, r1, r0
	strh r0, [r4, #0x16]
	b _0200B794
_0200B708:
	adds r0, r1, #0
	b _0200B796
_0200B70C:
	ldr r0, _0200B724 @ =gUnk_03003E54
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
	b _0200B764
	.align 2, 0
_0200B724: .4byte gUnk_03003E54
_0200B728:
	ldr r0, _0200B79C @ =gUnk_02028794
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r3, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r1, r0, #0
	cmp r1, #1
	beq _0200B764
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0200B708
	ldr r0, _0200B7A0 @ =gUnk_03003E54
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
_0200B764:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r3, r5, r0
	ldr r1, [r3]
	cmp r1, #0
	blt _0200B728
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
_0200B794:
	movs r0, #1
_0200B796:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0200B79C: .4byte gUnk_02028794
_0200B7A0: .4byte gUnk_03003E54

	thumb_func_start sub_0200B7A4
sub_0200B7A4: @ 0x0200B7A4
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
	ldr r0, _0200B7F8 @ =gUnk_03004184
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
	ldr r1, _0200B7FC @ =0xFFFFBFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, _0200B800 @ =gUnk_03003E54
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
	blt _0200B8C8
	b _0200B87C
	.align 2, 0
_0200B7F8: .4byte gUnk_03004184
_0200B7FC: .4byte 0xFFFFBFFF
_0200B800: .4byte gUnk_03003E54
_0200B804:
	movs r0, #3
	rsbs r0, r0, #0
	cmp r1, r0
	bne _0200B80E
	mov sb, sl
_0200B80E:
	ldr r0, _0200B85C @ =gUnk_02028794
	mvns r1, r1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
	adds r2, r0, #0
	ldr r3, _0200B860 @ =gUnk_03004184
	ldr r0, [sp]
	ldrb r1, [r3]
	cmp r0, r1
	beq _0200B832
	strb r0, [r3]
	movs r1, #1
	mov r8, r1
_0200B832:
	cmp r2, #1
	beq _0200B87C
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0200B868
	ldr r0, _0200B864 @ =gUnk_03003E54
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
	b _0200B87C
	.align 2, 0
_0200B85C: .4byte gUnk_02028794
_0200B860: .4byte gUnk_03004184
_0200B864: .4byte gUnk_03003E54
_0200B868:
	mov r0, r8
	cmp r0, #0
	beq _0200B878
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0x3f
	ands r0, r1
	strb r0, [r3]
_0200B878:
	adds r0, r2, #0
	b _0200B8DC
_0200B87C:
	ldrh r0, [r4, #0xe]
	lsls r0, r0, #2
	adds r5, r7, r0
	ldr r1, [r5]
	cmp r1, #0
	blt _0200B804
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
	beq _0200B8AC
	cmp r6, #0
	ble _0200B8AC
	adds r0, r6, #0
	bl DivRem
	adds r6, r0, #0
	b _0200B8B0
_0200B8AC:
	ldr r0, [r5]
	add sl, r0
_0200B8B0:
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
	bge _0200B87C
_0200B8C8:
	mov r0, r8
	cmp r0, #0
	beq _0200B8DA
	ldr r0, _0200B8EC @ =gUnk_03004184
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #0x3f
	ands r1, r2
	strb r1, [r0]
_0200B8DA:
	movs r0, #1
_0200B8DC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0200B8EC: .4byte gUnk_03004184

	thumb_func_start sub_0200B8F0
sub_0200B8F0: @ 0x0200B8F0
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
	bne _0200B96E
	ldr r1, [r2, #4]
	ldr r0, _0200B924 @ =gUnk_03003E54
	ldr r4, [r2, #8]
	ldr r6, _0200B928 @ =gUnk_030036A0
	ldr r5, _0200B92C @ =gUnk_03004184
	cmp r1, #0
	bge _0200B930
	ldr r0, [r0]
	lsls r1, r1, #6
	ldr r0, [r0, #0x14]
	adds r2, r0, r1
	lsls r0, r4, #0x16
	b _0200B93A
	.align 2, 0
_0200B924: .4byte gUnk_03003E54
_0200B928: .4byte gUnk_030036A0
_0200B92C: .4byte gUnk_03004184
_0200B930:
	ldr r0, [r0]
	lsls r1, r1, #5
	ldr r0, [r0, #0x10]
	adds r2, r0, r1
	lsls r0, r4, #0x15
_0200B93A:
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
_0200B96E:
	movs r0, #1
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200B978
sub_0200B978: @ 0x0200B978
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
	bne _0200B9C6
	ldr r1, [r4, #4]
	ldr r2, _0200B9D0 @ =0x040000D4
	ldr r0, _0200B9D4 @ =gUnk_03003E54
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
	ldr r1, _0200B9D8 @ =gUnk_03003440
	adds r0, r0, r1
	str r0, [r2, #4]
	ldrh r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r2, _0200B9DC @ =gUnk_03002C20
	ldr r0, [r2]
	movs r1, #2
	orrs r0, r1
	str r0, [r2]
_0200B9C6:
	movs r0, #1
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0200B9D0: .4byte 0x040000D4
_0200B9D4: .4byte gUnk_03003E54
_0200B9D8: .4byte gUnk_03003440
_0200B9DC: .4byte gUnk_03002C20

	thumb_func_start sub_0200B9E0
sub_0200B9E0: @ 0x0200B9E0
	ldr r2, [r0, #4]
	ldrh r0, [r1, #0xe]
	subs r0, r0, r2
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr

	thumb_func_start sub_0200B9EC
sub_0200B9EC: @ 0x0200B9EC
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #7
	orrs r0, r2
	str r0, [r1, #8]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_0200B9FC
sub_0200B9FC: @ 0x0200B9FC
	push {lr}
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldrh r0, [r0, #4]
	bl m4aSongNumStart
	movs r0, #1
	pop {r1}
	bx r1

	thumb_func_start sub_0200BA10
sub_0200BA10: @ 0x0200BA10
	push {r4, r5, lr}
	adds r4, r1, #0
	ldr r3, [r0, #4]
	movs r1, #0xf
	ands r3, r1
	ldrh r1, [r4, #0xe]
	adds r1, #3
	strh r1, [r4, #0xe]
	ldr r2, _0200BA4C @ =0x040000D4
	adds r1, r0, #4
	str r1, [r2]
	lsls r3, r3, #3
	adds r1, r3, #0
	adds r1, #0x20
	adds r1, r4, r1
	str r1, [r2, #4]
	ldr r1, _0200BA50 @ =0x84000002
	str r1, [r2, #8]
	ldr r1, [r2, #8]
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _0200BA54
	adds r0, r4, #0
	adds r0, #0x20
	adds r0, r0, r3
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0]
	b _0200BAB8
	.align 2, 0
_0200BA4C: .4byte 0x040000D4
_0200BA50: .4byte 0x84000002
_0200BA54:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #4
	ands r0, r1
	cmp r0, #0
	beq _0200BA88
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
_0200BA88:
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #3
	ands r0, r1
	cmp r0, #0
	beq _0200BAB8
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
_0200BAB8:
	movs r0, #1
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0200BAC0
sub_0200BAC0: @ 0x0200BAC0
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

	thumb_func_start sub_0200BADC
sub_0200BADC: @ 0x0200BADC
	ldrh r0, [r1, #0xe]
	adds r0, #3
	strh r0, [r1, #0xe]
	movs r0, #1
	bx lr
	.align 2, 0

	thumb_func_start sub_0200BAE8
sub_0200BAE8: @ 0x0200BAE8
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

	thumb_func_start sub_0200BB00
sub_0200BB00: @ 0x0200BB00
	ldrh r2, [r1, #0xe]
	adds r2, #4
	strh r2, [r1, #0xe]
	bx lr

	thumb_func_start sub_0200BB08
sub_0200BB08: @ 0x0200BB08
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r2, [r1, #8]
	ldr r3, _0200BB20 @ =0xFFFFCFFF
	ands r2, r3
	ldr r0, [r0, #4]
	lsls r0, r0, #0xc
	orrs r2, r0
	str r2, [r1, #8]
	movs r0, #1
	bx lr
	.align 2, 0
_0200BB20: .4byte 0xFFFFCFFF

	thumb_func_start sub_0200BB24
sub_0200BB24: @ 0x0200BB24
	ldrh r2, [r1, #0xe]
	adds r2, #2
	strh r2, [r1, #0xe]
	ldr r0, [r0, #4]
	lsls r0, r0, #6
	strh r0, [r1, #0x14]
	movs r0, #1
	bx lr

	thumb_func_start sub_0200BB34
sub_0200BB34: @ 0x0200BB34
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
	ldr r0, _0200BBEC @ =gUnk_03006896
	adds r6, r6, r0
	movs r0, #0x80
	lsls r0, r0, #9
	mov sl, r0
	lsls r1, r1, #0x10
	asrs r1, r1, #0x10
	mov r8, r1
	bl Div
	ldr r7, _0200BBF0 @ =gUnk_02027D8C
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
_0200BBEC: .4byte gUnk_03006896
_0200BBF0: .4byte gUnk_02027D8C

	thumb_func_start sub_0200BBF4
sub_0200BBF4: @ 0x0200BBF4
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
	bne _0200BC10
	b _0200BEAE
_0200BC10:
	lsrs r0, r2, #0x1c
	ldr r1, _0200BC84 @ =gUnk_03003E54
	ldr r3, [sp, #0x24]
	ldrh r5, [r3, #0xc]
	add r4, sp, #0x20
	ldr r3, [r3, #8]
	ldr r6, _0200BC88 @ =gUnk_03006896
	mov r8, r6
	mov r7, sp
	adds r7, #8
	str r7, [sp, #0x2c]
	ldr r6, _0200BC8C @ =gUnk_02027D8C
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
	bne _0200BC90
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r5, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _0200BC9E
	.align 2, 0
_0200BC84: .4byte gUnk_03003E54
_0200BC88: .4byte gUnk_03006896
_0200BC8C: .4byte gUnk_02027D8C
_0200BC90:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r5, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_0200BC9E:
	movs r0, #0x1f
	ands r3, r0
	strh r3, [r4]
	ldrh r4, [r4]
	lsls r4, r4, #5
	add r4, r8
	ldr r0, [sp, #0x2c]
	str r0, [sp, #0x28]
	ldr r1, _0200BE24 @ =0x000003FF
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
	bge _0200BD7C
	rsbs r0, r0, #0
	mov r1, sl
	strh r0, [r1]
_0200BD7C:
	mov r2, sb
	ldrh r4, [r2, #4]
	movs r5, #4
	ldrsh r0, [r2, r5]
	cmp r0, #0
	bge _0200BD8E
	rsbs r0, r4, #0
	mov r6, r8
	strh r0, [r6]
_0200BD8E:
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
	ble _0200BE28
	ldrh r5, [r7, #8]
	b _0200BE32
	.align 2, 0
_0200BE24: .4byte 0x000003FF
_0200BE28:
	ldrh r0, [r7, #4]
	ldrh r1, [r7, #8]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0200BE32:
	lsls r0, r4, #0x10
	cmp r0, #0
	ble _0200BE3C
	ldrh r4, [r7, #0xa]
	b _0200BE46
_0200BE3C:
	ldrh r0, [r7, #6]
	ldrh r1, [r7, #0xa]
	subs r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_0200BE46:
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
_0200BEAE:
	add sp, #0x60
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0200BEC0
sub_0200BEC0: @ 0x0200BEC0
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
	bne _0200BEEC
	b _0200C34C
_0200BEEC:
	lsrs r0, r2, #0x1c
	ldr r1, _0200BF0C @ =gUnk_03003E54
	ldrh r3, [r6, #0xc]
	ldr r4, [r6, #8]
	cmp r0, #0
	bne _0200BF10
	ldr r0, [r1]
	ldr r0, [r0, #4]
	lsls r1, r3, #2
	adds r1, r1, r0
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	ldr r1, [r1]
	adds r7, r1, r0
	b _0200BF1E
	.align 2, 0
_0200BF0C: .4byte gUnk_03003E54
_0200BF10:
	ldr r0, [r1]
	ldr r1, [r0, #4]
	lsls r0, r3, #2
	adds r0, r0, r1
	lsls r1, r2, #4
	ldr r0, [r0]
	adds r7, r0, r1
_0200BF1E:
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
	beq _0200BF50
	ldr r0, _0200BFB0 @ =gUnk_03002BD4
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
_0200BF50:
	ldrh r3, [r7, #4]
	str r3, [sp, #8]
	ldrh r5, [r7, #6]
	str r5, [sp, #0xc]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _0200BFB4
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
	beq _0200C020
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
	b _0200C020
	.align 2, 0
_0200BFB0: .4byte gUnk_03002BD4
_0200BFB4:
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	beq _0200BFCE
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	ldr r5, [sp, #0xc]
	subs r0, r5, r0
	mov r1, r8
	subs r1, r1, r0
	mov r8, r1
	b _0200BFD8
_0200BFCE:
	movs r3, #0xa
	ldrsh r0, [r7, r3]
	mov r5, r8
	subs r5, r5, r0
	mov r8, r5
_0200BFD8:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r2
	cmp r0, #0
	beq _0200BFF2
	movs r1, #8
	ldrsh r0, [r7, r1]
	ldr r3, [sp, #8]
	subs r0, r3, r0
	mov r5, sb
	subs r5, r5, r0
	mov sb, r5
	b _0200BFFC
_0200BFF2:
	movs r1, #8
	ldrsh r0, [r7, r1]
	mov r3, sb
	subs r3, r3, r0
	mov sb, r3
_0200BFFC:
	lsrs r0, r2, #0xb
	movs r4, #1
	ands r0, r4
	ldrh r1, [r7]
	lsls r3, r1, #0x10
	lsrs r1, r3, #0x1f
	cmp r0, r1
	beq _0200C010
	movs r5, #1
	str r5, [sp, #0x24]
_0200C010:
	lsrs r1, r2, #0xa
	lsrs r0, r3, #0x1e
	eors r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0200C020
	movs r0, #1
	str r0, [sp, #0x28]
_0200C020:
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _0200C04A
	adds r0, r1, #0
	add r0, sb
	cmp r0, #0
	bge _0200C030
	b _0200C34C
_0200C030:
	mov r2, sb
	cmp r2, #0xf0
	ble _0200C038
	b _0200C34C
_0200C038:
	ldr r0, [sp, #0xc]
	add r0, r8
	cmp r0, #0
	bge _0200C042
	b _0200C34C
_0200C042:
	mov r3, r8
	cmp r3, #0xa0
	ble _0200C04A
	b _0200C34C
_0200C04A:
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
	ldr r0, _0200C254 @ =gUnk_03003E54
	ldr r1, [r0]
	ldrh r0, [r6, #0xc]
	ldr r1, [r1, #8]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #0x14]
	ldr r0, _0200C258 @ =gUnk_03002CD0
	ldrb r0, [r0]
	strb r0, [r6, #0x1d]
	movs r5, #0
	str r5, [sp, #0x10]
	ldrh r0, [r7, #2]
	cmp r5, r0
	blo _0200C094
	b _0200C212
_0200C094:
	ldr r2, _0200C25C @ =0x040000D4
	ldrh r0, [r7]
	ldr r3, _0200C260 @ =0x00003FFF
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
	ldr r0, _0200C264 @ =0x80000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	mov r0, sp
	ldrh r5, [r0, #2]
	ldr r1, _0200C268 @ =0x000001FF
	adds r0, r1, #0
	adds r4, r0, #0
	ands r4, r5
	cmp r4, #0xff
	ble _0200C0CC
	ldr r2, _0200C26C @ =0xFFFFFE00
	adds r4, r4, r2
_0200C0CC:
	mov r0, sp
	ldrb r3, [r0]
	cmp r3, #0x7f
	ble _0200C0D8
	ldr r0, _0200C270 @ =0xFFFFFF00
	adds r3, r3, r0
_0200C0D8:
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
	ldr r2, _0200C274 @ =gUnk_020287C4
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
	beq _0200C150
	ldr r2, [sp, #0x24]
	cmp r2, #0
	beq _0200C132
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
_0200C132:
	ldr r2, [sp, #0x28]
	cmp r2, #0
	beq _0200C150
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
_0200C150:
	add r3, r8
	mov r5, ip
	adds r0, r3, r5
	cmp r0, #0
	blt _0200C200
	cmp r3, #0xa0
	bgt _0200C200
	add r4, sb
	mov r1, sl
	adds r0, r4, r1
	cmp r0, #0
	blt _0200C200
	cmp r4, #0xf0
	bgt _0200C200
	mov r2, sp
	mov r1, sp
	movs r0, #0xff
	ands r3, r0
	ldrh r1, [r1]
	adds r0, r3, r1
	strh r0, [r2]
	mov r1, sp
	ldr r3, _0200C268 @ =0x000001FF
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
	beq _0200C1C4
	ldr r0, _0200C278 @ =0x000003FF
	adds r1, r0, #0
	adds r0, r3, #0
	ands r0, r1
	adds r0, r3, r0
	strh r0, [r2, #4]
_0200C1C4:
	mov r2, sp
	mov r1, sp
	ldr r0, [r6]
	ldr r3, _0200C27C @ =0xF9FF0000
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
	bl sub_0200C364
	adds r1, r0, #0
	ldr r0, _0200C280 @ =gUnk_03007488
	ldr r0, [r0]
	cmp r0, r1
	bne _0200C1F2
	b _0200C34C
_0200C1F2:
	ldr r0, _0200C25C @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	str r1, [r0, #4]
	ldr r1, _0200C264 @ =0x80000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
_0200C200:
	ldr r0, [sp, #0x10]
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x10]
	ldrh r3, [r7, #2]
	cmp r0, r3
	bhs _0200C212
	b _0200C094
_0200C212:
	ldr r0, [r6, #4]
	lsrs r0, r0, #0x1c
	cmp r0, #1
	beq _0200C21C
	b _0200C34C
_0200C21C:
	ldr r1, [r6, #8]
	movs r0, #0x80
	lsls r0, r0, #0x13
	ands r0, r1
	cmp r0, #0
	bne _0200C22A
	b _0200C34C
_0200C22A:
	ldr r0, _0200C284 @ =0xFBFFFFFF
	ands r1, r0
	str r1, [r6, #8]
	ldr r0, [r7, #0xc]
	ldr r1, _0200C288 @ =0x00FFFFFF
	ands r1, r0
	lsrs r0, r0, #0x18
	str r0, [sp, #0x2c]
	ldr r0, _0200C254 @ =gUnk_03003E54
	ldr r2, [r0]
	lsls r1, r1, #2
	ldr r0, [r2, #0x18]
	adds r3, r0, r1
	ldr r0, [r3]
	cmp r0, #0
	blt _0200C28C
	movs r5, #0x20
	mov sb, r5
	ldr r2, [r2, #0x10]
	b _0200C292
	.align 2, 0
_0200C254: .4byte gUnk_03003E54
_0200C258: .4byte gUnk_03002CD0
_0200C25C: .4byte 0x040000D4
_0200C260: .4byte 0x00003FFF
_0200C264: .4byte 0x80000003
_0200C268: .4byte 0x000001FF
_0200C26C: .4byte 0xFFFFFE00
_0200C270: .4byte 0xFFFFFF00
_0200C274: .4byte gUnk_020287C4
_0200C278: .4byte 0x000003FF
_0200C27C: .4byte 0xF9FF0000
_0200C280: .4byte gUnk_03007488
_0200C284: .4byte 0xFBFFFFFF
_0200C288: .4byte 0x00FFFFFF
_0200C28C:
	movs r1, #0x40
	mov sb, r1
	ldr r2, [r2, #0x14]
_0200C292:
	mov r4, sb
	muls r0, r4, r0
	adds r5, r2, r0
	adds r3, #4
	ldr r6, [r6]
	movs r0, #1
	mov r8, r0
	ldr r1, [sp, #0x2c]
	cmp r8, r1
	bhs _0200C318
	ldr r0, _0200C2C8 @ =gUnk_030036A0
	mov ip, r0
	ldr r7, _0200C2CC @ =gUnk_03004184
_0200C2AC:
	ldm r3!, {r0}
	mov r1, sb
	muls r1, r0, r1
	adds r0, r1, #0
	adds r0, r0, r2
	mov sl, r0
	adds r0, r5, r4
	cmp r0, sl
	bne _0200C2D0
	mov r1, sb
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _0200C308
	.align 2, 0
_0200C2C8: .4byte gUnk_030036A0
_0200C2CC: .4byte gUnk_03004184
_0200C2D0:
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
_0200C308:
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r0, [sp, #0x2c]
	cmp r8, r0
	blo _0200C2AC
_0200C318:
	ldr r3, _0200C35C @ =gUnk_030036A0
	ldr r2, _0200C360 @ =gUnk_03004184
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
_0200C34C:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200C35C: .4byte gUnk_030036A0
_0200C360: .4byte gUnk_03004184

	thumb_func_start sub_0200C364
sub_0200C364: @ 0x0200C364
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x1f
	bls _0200C370
	movs r2, #0x1f
_0200C370:
	ldr r3, _0200C380 @ =gUnk_03002CD0
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bge _0200C388
	ldr r0, _0200C384 @ =gUnk_03007488
	ldr r0, [r0]
	b _0200C3E0
	.align 2, 0
_0200C380: .4byte gUnk_03002CD0
_0200C384: .4byte gUnk_03007488
_0200C388:
	ldr r0, _0200C3B0 @ =gUnk_03002C30
	adds r5, r2, r0
	ldrb r0, [r5]
	ldr r4, _0200C3B4 @ =gUnk_030039A0
	ldrb r1, [r3]
	ldr r6, _0200C3B8 @ =gUnk_03006860
	adds r7, r4, #0
	subs r7, #8
	cmp r0, #0xff
	bne _0200C3BC
	lsls r0, r1, #3
	adds r0, r0, r4
	movs r1, #0xff
	strb r1, [r0, #6]
	ldrb r0, [r3]
	strb r0, [r5]
	adds r1, r2, r6
	ldrb r0, [r3]
	strb r0, [r1]
	b _0200C3D4
	.align 2, 0
_0200C3B0: .4byte gUnk_03002C30
_0200C3B4: .4byte gUnk_030039A0
_0200C3B8: .4byte gUnk_03006860
_0200C3BC:
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
_0200C3D4:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	ldrb r0, [r3]
	lsls r0, r0, #3
	adds r0, r0, r7
_0200C3E0:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0200C3E8
sub_0200C3E8: @ 0x0200C3E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r6, _0200C494 @ =gUnk_03006890
	adds r5, r6, #0
	movs r0, #0
	mov r8, r0
	movs r4, #0
_0200C3FE:
	ldr r1, _0200C498 @ =gUnk_03002C30
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
	beq _0200C44A
	ldr r0, _0200C49C @ =gUnk_030039A0
	mov sb, r0
	ldr r1, _0200C4A0 @ =gUnk_03003DD0
	mov ip, r1
_0200C41E:
	ldr r1, _0200C4A4 @ =0x040000D4
	asrs r2, r2, #0x18
	lsls r3, r2, #3
	add r3, sb
	str r3, [r1]
	str r5, [r1, #4]
	ldr r0, _0200C4A8 @ =0x80000003
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
	bne _0200C41E
_0200C44A:
	adds r4, #1
	cmp r4, #0x1f
	ble _0200C3FE
	ldr r7, _0200C4AC @ =gUnk_03002C20
	ldr r3, [r7]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r3
	ldr r1, _0200C4B0 @ =gUnk_03002CD0
	cmp r0, #0
	beq _0200C4BC
	ldrb r4, [r1]
	lsls r0, r4, #3
	ldr r2, _0200C494 @ =gUnk_03006890
	adds r5, r0, r2
	ldr r2, _0200C4B4 @ =gUnk_030041E0
	ldrb r3, [r2]
	cmp r4, r3
	bge _0200C53C
_0200C470:
	mov r1, sp
	movs r3, #0x80
	lsls r3, r3, #2
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, _0200C4A4 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _0200C4B8 @ =0x81000003
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	adds r5, #8
	adds r4, #1
	ldrb r0, [r2]
	cmp r4, r0
	blt _0200C470
	b _0200C53C
	.align 2, 0
_0200C494: .4byte gUnk_03006890
_0200C498: .4byte gUnk_03002C30
_0200C49C: .4byte gUnk_030039A0
_0200C4A0: .4byte gUnk_03003DD0
_0200C4A4: .4byte 0x040000D4
_0200C4A8: .4byte 0x80000003
_0200C4AC: .4byte gUnk_03002C20
_0200C4B0: .4byte gUnk_03002CD0
_0200C4B4: .4byte gUnk_030041E0
_0200C4B8: .4byte 0x81000003
_0200C4BC:
	movs r2, #0x80
	lsls r2, r2, #3
	ands r2, r3
	cmp r2, #0
	beq _0200C538
	adds r5, r1, #0
	ldrb r0, [r5]
	subs r4, r0, #1
	movs r2, #0x7f
	cmp r4, #0
	blt _0200C4EE
_0200C4D2:
	ldr r1, _0200C524 @ =0x040000D4
	lsls r0, r4, #3
	adds r0, r0, r6
	str r0, [r1]
	lsls r0, r2, #3
	adds r0, r0, r6
	str r0, [r1, #4]
	ldr r0, _0200C528 @ =0x80000003
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	subs r4, #1
	subs r2, #1
	cmp r4, #0
	bge _0200C4D2
_0200C4EE:
	ldr r3, _0200C52C @ =gUnk_030041E0
	ldrb r1, [r5]
	movs r0, #0x80
	subs r0, r0, r1
	strb r0, [r3]
	movs r4, #0
	cmp r4, r0
	bge _0200C53C
_0200C4FE:
	mov r1, sp
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	strh r0, [r1]
	ldr r2, _0200C524 @ =0x040000D4
	str r1, [r2]
	lsls r0, r4, #3
	ldr r1, _0200C530 @ =gUnk_03006890
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _0200C534 @ =0x81000003
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	adds r4, #1
	ldrb r0, [r3]
	cmp r4, r0
	blt _0200C4FE
	b _0200C53C
	.align 2, 0
_0200C524: .4byte 0x040000D4
_0200C528: .4byte 0x80000003
_0200C52C: .4byte gUnk_030041E0
_0200C530: .4byte gUnk_03006890
_0200C534: .4byte 0x81000003
_0200C538:
	ldr r0, _0200C570 @ =gUnk_030041E0
	strb r2, [r0]
_0200C53C:
	ldr r1, _0200C574 @ =gUnk_03002CD0
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r7]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	add r6, sp, #8
	cmp r0, #0
	beq _0200C580
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [sp, #4]
	add r0, sp, #4
	ldr r5, _0200C578 @ =0x05000008
	mov r1, sl
	adds r2, r5, #0
	bl CpuSet
	str r4, [sp, #8]
	ldr r1, _0200C57C @ =gUnk_03006860
	adds r0, r6, #0
	adds r2, r5, #0
	bl CpuSet
	b _0200C5A0
	.align 2, 0
_0200C570: .4byte gUnk_030041E0
_0200C574: .4byte gUnk_03002CD0
_0200C578: .4byte 0x05000008
_0200C57C: .4byte gUnk_03006860
_0200C580:
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [sp, #8]
	ldr r0, _0200C5B0 @ =0x040000D4
	str r6, [r0]
	mov r2, sl
	str r2, [r0, #4]
	ldr r2, _0200C5B4 @ =0x85000008
	str r2, [r0, #8]
	ldr r3, [r0, #8]
	str r1, [sp, #8]
	str r6, [r0]
	ldr r1, _0200C5B8 @ =gUnk_03006860
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
_0200C5A0:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0200C5B0: .4byte 0x040000D4
_0200C5B4: .4byte 0x85000008
_0200C5B8: .4byte gUnk_03006860

	thumb_func_start nullsub_01
nullsub_01: @ 0x0200C5BC
	bx lr
	.align 2, 0

	thumb_func_start sub_0200C5C0
sub_0200C5C0: @ 0x0200C5C0
	ldr r0, _0200C5C8 @ =gUnk_03007488
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0200C5C8: .4byte gUnk_03007488

	thumb_func_start nullsub_012
nullsub_012: @ 0x0200C5CC
	bx lr
	.align 2, 0

	thumb_func_start sub_0200C5D0
sub_0200C5D0: @ 0x0200C5D0
	movs r0, #0
	bx lr
