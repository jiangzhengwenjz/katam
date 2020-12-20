	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateGolem
CreateGolem: @ 0x080C53F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldrb r1, [r5, #0xe]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C5418
	ldr r0, _080C5410 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C5414 @ =sub_080C6734
	b _080C5420
	.align 2, 0
_080C5410: .4byte ObjectMain
_080C5414: .4byte sub_080C6734
_080C5418:
	ldr r0, _080C5444 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C5448 @ =ObjectDestroy
_080C5420:
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C544C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C5454
	.align 2, 0
_080C5444: .4byte ObjectMain
_080C5448: .4byte ObjectDestroy
_080C544C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C5454:
	adds r4, r0, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #8]
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #0xc
	bl sub_0803E2B0
	movs r1, #0xa
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0xe
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0xa
	bl sub_0803E308
	ldr r2, [r4, #8]
	movs r0, #0x82
	lsls r0, r0, #2
	orrs r2, r0
	str r2, [r4, #8]
	ldrb r1, [r5, #0xe]
	movs r6, #0x80
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _080C54AC
	movs r0, #0x80
	lsls r0, r0, #0x10
	orrs r2, r0
	str r2, [r4, #8]
_080C54AC:
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	bl ObjectInitSprite
	ldrb r1, [r5, #0xe]
	movs r0, #0x7f
	ands r0, r1
	adds r1, r4, #0
	adds r1, #0x85
	strb r0, [r1]
	ldrb r1, [r5, #0xe]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080C54F0
	adds r0, r4, #0
	bl sub_080C66DC
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080C54EC @ =sub_0809F840
	str r0, [r4, #0x7c]
	b _080C54F6
	.align 2, 0
_080C54EC: .4byte sub_0809F840
_080C54F0:
	adds r0, r4, #0
	bl sub_080C66B4
_080C54F6:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_080C5500
sub_080C5500: @ 0x080C5500
	push {lr}
	mov ip, r0
	movs r3, #0
	ldr r2, _080C5534 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C5538 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C553C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #0xf
	ands r1, r0
	mov r0, ip
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C5574
	cmp r1, #0xb
	bhi _080C55CE
	lsls r0, r1, #2
	ldr r1, _080C5540 @ =_080C5544
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C5534: .4byte gRngVal
_080C5538: .4byte 0x00196225
_080C553C: .4byte 0x3C6EF35F
_080C5540: .4byte _080C5544
_080C5544: @ jump table
	.4byte _080C55B6 @ case 0
	.4byte _080C55B6 @ case 1
	.4byte _080C55B6 @ case 2
	.4byte _080C55B6 @ case 3
	.4byte _080C55B6 @ case 4
	.4byte _080C55B6 @ case 5
	.4byte _080C559A @ case 6
	.4byte _080C559A @ case 7
	.4byte _080C55CC @ case 8
	.4byte _080C55CC @ case 9
	.4byte _080C55AA @ case 10
	.4byte _080C55AA @ case 11
_080C5574:
	mov r0, ip
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x20
	beq _080C559E
	cmp r0, #0x20
	bgt _080C5588
	cmp r0, #0x1f
	beq _080C558E
	b _080C55CE
_080C5588:
	cmp r0, #0x21
	beq _080C55AE
	b _080C55CE
_080C558E:
	cmp r1, #0
	blt _080C55CE
	cmp r1, #5
	ble _080C55B6
	cmp r1, #0xb
	bgt _080C55CE
_080C559A:
	movs r3, #1
	b _080C55CE
_080C559E:
	cmp r1, #0
	blt _080C55CE
	cmp r1, #5
	ble _080C55B6
	cmp r1, #0xb
	bgt _080C55CE
_080C55AA:
	movs r3, #0x82
	b _080C55CE
_080C55AE:
	cmp r1, #0
	blt _080C55CE
	cmp r1, #5
	bgt _080C55C8
_080C55B6:
	mov r1, ip
	ldr r0, [r1, #8]
	movs r1, #1
	ands r0, r1
	movs r3, #0x10
	cmp r0, #0
	beq _080C55CE
	movs r3, #0x20
	b _080C55CE
_080C55C8:
	cmp r1, #0xb
	bgt _080C55CE
_080C55CC:
	movs r3, #2
_080C55CE:
	adds r0, r3, #0
	pop {r1}
	bx r1

	thumb_func_start sub_080C55D4
sub_080C55D4: @ 0x080C55D4
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r5, #0
	ldr r1, [r4, #0x70]
	cmp r1, #0
	beq _080C5612
	ldrb r0, [r1]
	cmp r0, #1
	bne _080C5612
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x46
	bne _080C5612
	adds r0, r1, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080C5612
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	ldr r2, _080C5648 @ =0x00000292
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_080C5612:
	ldr r0, _080C564C @ =gUnk_03000510
	ldrb r2, [r0, #4]
	adds r1, r4, #0
	adds r1, #0x56
	movs r0, #1
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080C562C
	b _080C57D0
_080C562C:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	subs r0, #1
	adds r6, r4, #0
	adds r6, #0x9e
	cmp r0, #0xd
	bls _080C563E
	b _080C57BA
_080C563E:
	lsls r0, r0, #2
	ldr r1, _080C5650 @ =_080C5654
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C5648: .4byte 0x00000292
_080C564C: .4byte gUnk_03000510
_080C5650: .4byte _080C5654
_080C5654: @ jump table
	.4byte _080C568C @ case 0
	.4byte _080C56AE @ case 1
	.4byte _080C57BA @ case 2
	.4byte _080C57BA @ case 3
	.4byte _080C57BA @ case 4
	.4byte _080C5734 @ case 5
	.4byte _080C5734 @ case 6
	.4byte _080C57BA @ case 7
	.4byte _080C57BA @ case 8
	.4byte _080C57BA @ case 9
	.4byte _080C5788 @ case 10
	.4byte _080C5798 @ case 11
	.4byte _080C57BA @ case 12
	.4byte _080C57BA @ case 13
_080C568C:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x28
	bhi _080C569A
	b _080C57BA
_080C569A:
	adds r0, #0xe
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C571E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C5726
_080C56AE:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080C56C0
	movs r0, #0x20
	orrs r5, r0
	b _080C56C8
_080C56C0:
	movs r0, #0x10
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_080C56C8:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _080C56FE
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C56EC
	orrs r2, r3
	str r2, [r4, #8]
	b _080C56F4
_080C56EC:
	movs r0, #2
	rsbs r0, r0, #0
	ands r0, r2
	str r0, [r4, #8]
_080C56F4:
	adds r0, r4, #0
	bl sub_080C5500
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
_080C56FE:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x64
	bls _080C57BA
	adds r0, #0xe
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C571E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	b _080C5726
_080C571E:
	ldr r0, [r4, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C5726:
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080C5500
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	b _080C57BA
_080C5734:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0xf
	bhi _080C5742
	movs r5, #1
_080C5742:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5766
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	movs r1, #0xf0
	lsls r1, r1, #4
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	cmp r1, r0
	ble _080C57BA
	movs r0, #0x20
	orrs r5, r0
	b _080C57BA
_080C5766:
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r0, [r0, #0x40]
	ldr r1, _080C5784 @ =0xFFFFF100
	adds r0, r0, r1
	ldr r1, [r4, #0x40]
	cmp r1, r0
	bge _080C57BA
	movs r0, #0x10
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
	b _080C57BA
	.align 2, 0
_080C5784: .4byte 0xFFFFF100
_080C5788:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r6, r0, #0
	cmp r1, #0x13
	bhi _080C57BA
	movs r5, #2
	b _080C57BA
_080C5798:
	movs r5, #2
	ldrh r1, [r4, #4]
	movs r0, #0xf
	ands r0, r1
	adds r6, r4, #0
	adds r6, #0x9e
	cmp r0, #0xf
	bne _080C57BA
	adds r0, r4, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	movs r5, #0x12
	cmp r1, r0
	ble _080C57BA
	movs r5, #0x22
_080C57BA:
	adds r1, r4, #0
	adds r1, #0x9d
	ldrb r0, [r1]
	strb r5, [r1]
	bics r5, r0
	adds r0, r4, #0
	adds r0, #0x9c
	strb r5, [r0]
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
_080C57D0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C57D8
sub_080C57D8: @ 0x080C57D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #9
	bls _080C57E8
	b _080C5A2E
_080C57E8:
	lsls r0, r0, #2
	ldr r1, _080C57F4 @ =_080C57F8
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080C57F4: .4byte _080C57F8
_080C57F8: @ jump table
	.4byte _080C5820 @ case 0
	.4byte _080C5A2E @ case 1
	.4byte _080C5A2E @ case 2
	.4byte _080C5A2E @ case 3
	.4byte _080C5A2E @ case 4
	.4byte _080C593E @ case 5
	.4byte _080C5986 @ case 6
	.4byte _080C5986 @ case 7
	.4byte _080C5986 @ case 8
	.4byte _080C5A14 @ case 9
_080C5820:
	ldr r0, [r5, #8]
	movs r1, #8
	ands r0, r1
	cmp r0, #0
	beq _080C58CE
	adds r0, r5, #0
	bl sub_0803D368
	adds r3, r0, #0
	adds r0, r5, #0
	adds r0, #0xac
	str r3, [r0]
	ldr r1, [r3, #0xc]
	movs r2, #0x80
	lsls r2, r2, #8
	ands r1, r2
	adds r7, r0, #0
	cmp r1, #0
	beq _080C5848
	b _080C5A2E
_080C5848:
	subs r0, #0x4c
	adds r1, r3, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	beq _080C5858
	b _080C5A2E
_080C5858:
	ldr r0, [r3, #0x40]
	ldr r6, [r5, #0x40]
	cmp r6, r0
	ble _080C5868
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	b _080C5870
_080C5868:
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C5870:
	str r0, [r5, #8]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r2, [r0]
	movs r3, #0x1a
	ldrsh r1, [r2, r3]
	adds r4, r0, #0
	cmp r1, #0
	bne _080C588E
	ldr r0, [r2, #0x1c]
	cmp r0, #0
	bne _080C588E
	ldrh r0, [r2, #0x20]
	cmp r0, #0
	beq _080C58A6
_080C588E:
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	ldr r4, [r4]
	movs r7, #0x1a
	ldrsh r3, [r4, r7]
	movs r7, #0x1c
	ldrsh r1, [r4, r7]
	str r1, [sp]
	ldrh r1, [r4, #0x1e]
	str r1, [sp, #4]
	ldrh r1, [r4, #0x20]
	b _080C58B6
_080C58A6:
	ldr r0, [r7]
	ldr r2, [r5, #0x44]
	movs r3, #0x28
	rsbs r3, r3, #0
	str r3, [sp]
	movs r1, #0x50
	str r1, [sp, #4]
	movs r1, #0x3c
_080C58B6:
	str r1, [sp, #8]
	adds r1, r6, #0
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080C58CE
	ldr r0, [r5, #8]
	movs r1, #9
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080C58CE:
	ldr r2, [r5, #8]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080C5908
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C58F6
	adds r2, r5, #0
	adds r2, #0x83
	movs r1, #0
	movs r0, #5
	strb r0, [r2]
	strh r1, [r5, #4]
	b _080C5A2E
_080C58F6:
	ldr r0, _080C5904 @ =0xFFFFFDFF
	ands r2, r0
	str r2, [r5, #8]
	adds r0, r5, #0
	bl sub_080C6404
	b _080C5A2E
	.align 2, 0
_080C5904: .4byte 0xFFFFFDFF
_080C5908:
	movs r1, #4
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _080C5912
	b _080C5A2E
_080C5912:
	movs r0, #8
	ands r0, r2
	cmp r0, #0
	beq _080C591C
	b _080C5A2E
_080C591C:
	adds r0, r5, #0
	adds r0, #0xac
	ldr r0, [r0]
	ldr r1, [r5, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C5930
	movs r0, #1
	orrs r2, r0
	b _080C5936
_080C5930:
	movs r0, #2
	rsbs r0, r0, #0
	ands r2, r0
_080C5936:
	str r2, [r5, #8]
	movs r0, #1
	strh r0, [r5, #4]
	b _080C5A2E
_080C593E:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #4
	ble _080C5A2E
	movs r0, #0
	strh r0, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	adds r1, r5, #0
	adds r1, #0x52
	movs r0, #0xd0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5974
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080C5974:
	ldr r0, [r5, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #6
	strb r0, [r1]
	b _080C5A2E
_080C5986:
	adds r0, r5, #0
	adds r0, #0x83
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #7
	bne _080C59A2
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C59C2
	movs r0, #8
	strb r0, [r2]
	b _080C59C2
_080C59A2:
	cmp r1, #6
	bne _080C59C2
	adds r0, r5, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, _080C5A10 @ =0x000001CF
	cmp r1, r0
	bgt _080C59C2
	movs r0, #7
	strb r0, [r2]
	ldr r0, [r5, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
_080C59C2:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C5A2E
	adds r0, r5, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	movs r0, #9
	strb r0, [r2]
	ldr r0, [r5, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r5, #8]
	movs r0, #2
	adds r1, r5, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	b _080C5A2E
	.align 2, 0
_080C5A10: .4byte 0x000001CF
_080C5A14:
	ldr r1, [r5, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5A2E
	movs r0, #0
	strh r0, [r5, #4]
	ldr r0, _080C5A38 @ =0xFFFFFDFF
	ands r1, r0
	str r1, [r5, #8]
	adds r0, r5, #0
	bl sub_080C6404
_080C5A2E:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080C5A38: .4byte 0xFFFFFDFF

	thumb_func_start sub_080C5A3C
sub_080C5A3C: @ 0x080C5A3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C5A62
	adds r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5A70
	b _080C5A6C
_080C5A62:
	subs r0, r2, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5A70
_080C5A6C:
	movs r0, #0
	strh r0, [r1]
_080C5A70:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x14
	ble _080C5A84
	adds r0, r4, #0
	bl sub_080C645C
_080C5A84:
	movs r0, #4
	ldrsh r2, [r4, r0]
	cmp r2, #0xa
	bne _080C5A98
	ldr r0, [r4, #8]
	ldr r1, _080C5AAC @ =0xFFFFFDFF
	ands r0, r1
	ldr r1, _080C5AB0 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
_080C5A98:
	cmp r2, #0x10
	bne _080C5AA6
	ldr r0, [r4, #8]
	movs r1, #0x41
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080C5AA6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C5AAC: .4byte 0xFFFFFDFF
_080C5AB0: .4byte 0xFFFFFEFF

	thumb_func_start sub_080C5AB4
sub_080C5AB4: @ 0x080C5AB4
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080C5AD4
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5AE4
	b _080C5AE0
_080C5AD4:
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5AE4
_080C5AE0:
	movs r0, #0
	strh r0, [r1]
_080C5AE4:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C5AFA
	adds r0, r2, #0
	bl sub_080C65F8
	b _080C5B4A
_080C5AFA:
	adds r0, r2, #0
	adds r0, #0x9c
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5B10
	adds r0, r2, #0
	bl sub_080C6634
	b _080C5B4A
_080C5B10:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5B36
	adds r0, r2, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C5B2E
	adds r0, r2, #0
	bl sub_080C64A4
	b _080C5B4A
_080C5B2E:
	adds r0, r2, #0
	bl sub_080C6674
	b _080C5B4A
_080C5B36:
	adds r0, r2, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _080C5B4A
	adds r0, r2, #0
	bl sub_080C645C
_080C5B4A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5B50
sub_080C5B50: @ 0x080C5B50
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, [r5, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r5, #8]
	adds r0, r5, #0
	adds r0, #0x9c
	ldrb r2, [r0]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _080C5B74
	adds r0, r5, #0
	bl sub_080C6634
	b _080C5C9C
_080C5B74:
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080C5B9A
	adds r0, r5, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080C5B92
	adds r0, r5, #0
	bl sub_080C64A4
	b _080C5C9C
_080C5B92:
	adds r0, r5, #0
	bl sub_080C6674
	b _080C5C9C
_080C5B9A:
	adds r0, r5, #0
	adds r0, #0x9d
	ldrb r2, [r0]
	movs r4, #0x30
	ands r4, r2
	cmp r4, #0
	beq _080C5C1A
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080C5BB4
	orrs r1, r3
	b _080C5BC2
_080C5BB4:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080C5BC4
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_080C5BC2:
	str r1, [r5, #8]
_080C5BC4:
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5BF6
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xe0
	rsbs r0, r0, #0
	cmp r2, r0
	bge _080C5BF0
	ldr r0, _080C5BEC @ =0x0000FF20
	strh r0, [r1]
	b _080C5C9C
	.align 2, 0
_080C5BEC: .4byte 0x0000FF20
_080C5BF0:
	cmp r2, #0xe0
	ble _080C5C9C
	b _080C5C08
_080C5BF6:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x30
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080C5C0E
_080C5C08:
	movs r0, #0xe0
	strh r0, [r1]
	b _080C5C9C
_080C5C0E:
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080C5C9C
	strh r2, [r1]
	b _080C5C9C
_080C5C1A:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080C5C38
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5C46
	b _080C5C44
_080C5C38:
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5C46
_080C5C44:
	strh r4, [r2]
_080C5C46:
	movs r1, #0
	ldrsh r0, [r2, r1]
	cmp r0, #0
	bne _080C5C9C
	movs r4, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
	ldr r0, [r5, #8]
	ldr r1, _080C5C90 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080C5C94 @ =sub_080C5AB4
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C5C98 @ =sub_080C55D4
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	b _080C5CB0
	.align 2, 0
_080C5C90: .4byte 0xFFFFFEFF
_080C5C94: .4byte sub_080C5AB4
_080C5C98: .4byte sub_080C55D4
_080C5C9C:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C5CB0
	adds r0, r5, #0
	bl sub_080C65F8
_080C5CB0:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C5CB8
sub_080C5CB8: @ 0x080C5CB8
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x9d
	ldrb r2, [r0]
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080C5CD8
	movs r0, #1
	orrs r1, r0
	b _080C5CE6
_080C5CD8:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080C5CE8
	movs r0, #2
	rsbs r0, r0, #0
	ands r1, r0
_080C5CE6:
	str r1, [r4, #8]
_080C5CE8:
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #0xf
	ble _080C5D02
	adds r0, r4, #0
	adds r0, #0x9d
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _080C5D02
	movs r0, #0xc8
	strh r0, [r4, #4]
_080C5D02:
	movs r2, #4
	ldrsh r0, [r4, r2]
	cmp r0, #0xc7
	ble _080C5D3A
	adds r0, r4, #0
	adds r0, #0x50
	ldrh r3, [r0]
	movs r2, #0
	ldrsh r1, [r0, r2]
	adds r2, r0, #0
	cmp r1, #0
	bge _080C5D28
	adds r0, r3, #0
	adds r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5D8C
	b _080C5D34
_080C5D28:
	adds r0, r3, #0
	subs r0, #8
	strh r0, [r2]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5D8C
_080C5D34:
	movs r0, #0
	strh r0, [r2]
	b _080C5D8C
_080C5D3A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5D68
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r3, _080C5D64 @ =0xFFFFFDE0
	adds r2, r1, #0
	cmp r0, r3
	blt _080C5D80
	movs r1, #0x88
	lsls r1, r1, #2
	cmp r0, r1
	ble _080C5D8C
	b _080C5D8A
	.align 2, 0
_080C5D64: .4byte 0xFFFFFDE0
_080C5D68:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0xd
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0x88
	lsls r3, r3, #2
	adds r2, r1, #0
	cmp r0, r3
	ble _080C5D84
_080C5D80:
	strh r3, [r2]
	b _080C5D8C
_080C5D84:
	ldr r1, _080C5E18 @ =0xFFFFFDE0
	cmp r0, r1
	bge _080C5D8C
_080C5D8A:
	strh r1, [r2]
_080C5D8C:
	ldrh r0, [r4, #4]
	adds r3, r0, #1
	strh r3, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080C5E3C
	ldr r1, _080C5E1C @ =gKirbys
	ldr r0, _080C5E20 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C5E08
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C5DCC
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C5E08
_080C5DCC:
	ldr r1, _080C5E24 @ =gUnk_08D60FA4
	ldr r5, _080C5E28 @ =gSongTable
	ldr r2, _080C5E2C @ =0x00000A6C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C5DF0
	ldr r1, _080C5E30 @ =0x00000A68
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C5E08
_080C5DF0:
	cmp r3, #0
	beq _080C5E02
	ldr r0, _080C5E34 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C5E08
_080C5E02:
	ldr r0, _080C5E38 @ =0x0000014D
	bl m4aSongNumStart
_080C5E08:
	movs r0, #2
	adds r1, r4, #0
	bl sub_0806FE64
	adds r0, r4, #0
	bl sub_080C6588
	b _080C5E5A
	.align 2, 0
_080C5E18: .4byte 0xFFFFFDE0
_080C5E1C: .4byte gKirbys
_080C5E20: .4byte gUnk_0203AD3C
_080C5E24: .4byte gUnk_08D60FA4
_080C5E28: .4byte gSongTable
_080C5E2C: .4byte 0x00000A6C
_080C5E30: .4byte 0x00000A68
_080C5E34: .4byte gUnk_0203AD10
_080C5E38: .4byte 0x0000014D
_080C5E3C:
	lsls r0, r3, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xc7
	ble _080C5E5A
	movs r0, #0
	ldrsh r1, [r2, r0]
	cmp r1, #0
	bge _080C5E4E
	rsbs r1, r1, #0
_080C5E4E:
	ldr r0, _080C5E60 @ =0x0000017F
	cmp r1, r0
	bgt _080C5E5A
	adds r0, r4, #0
	bl sub_080C6588
_080C5E5A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C5E60: .4byte 0x0000017F

	thumb_func_start sub_080C5E64
sub_080C5E64: @ 0x080C5E64
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5EC4
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
	ldr r0, [r5, #8]
	ldr r1, _080C5EB8 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080C5EBC @ =sub_080C5AB4
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C5EC0 @ =sub_080C55D4
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	b _080C5F1A
	.align 2, 0
_080C5EB8: .4byte 0xFFFFFEFF
_080C5EBC: .4byte sub_080C5AB4
_080C5EC0: .4byte sub_080C55D4
_080C5EC4:
	movs r1, #4
	ldrsh r0, [r5, r1]
	adds r3, r5, #0
	adds r3, #0x50
	cmp r0, #0xc
	bne _080C5EE2
	ldr r0, _080C5F00 @ =0x0000FF80
	strh r0, [r3]
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C5EE2
	movs r0, #0x80
	strh r0, [r3]
_080C5EE2:
	adds r1, r3, #0
	ldrh r2, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080C5F04
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C5F14
	movs r0, #0
	strh r0, [r1]
	b _080C5F14
	.align 2, 0
_080C5F00: .4byte 0x0000FF80
_080C5F04:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r3]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C5F14
	movs r0, #0
	strh r0, [r3]
_080C5F14:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
_080C5F1A:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080C5F20
sub_080C5F20: @ 0x080C5F20
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r0, [r6, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C5F80
	movs r4, #1
	rsbs r4, r4, #0
	str r4, [r6, #0x30]
	movs r5, #0
	movs r0, #0
	strh r0, [r6, #4]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r6, #0
	bl sub_0803D368
	adds r1, r6, #0
	adds r1, #0xac
	str r0, [r1]
	str r4, [r6, #0x30]
	ldr r0, [r6, #8]
	ldr r1, _080C5F74 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r6, #8]
	ldr r0, _080C5F78 @ =sub_080C5AB4
	str r0, [r6, #0x78]
	adds r0, r6, #0
	adds r0, #0x9e
	strb r5, [r0]
	ldr r0, _080C5F7C @ =sub_080C55D4
	str r0, [r6, #0x7c]
	adds r1, r6, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	b _080C6062
	.align 2, 0
_080C5F74: .4byte 0xFFFFFEFF
_080C5F78: .4byte sub_080C5AB4
_080C5F7C: .4byte sub_080C55D4
_080C5F80:
	ldrb r0, [r6, #1]
	cmp r0, #0x14
	bne _080C5FF2
	ldr r1, _080C6018 @ =gKirbys
	ldr r0, _080C601C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C5FF2
	ldrb r0, [r6]
	cmp r0, #0
	bne _080C5FB2
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C5FF2
_080C5FB2:
	ldr r1, _080C6020 @ =gUnk_08D60FA4
	ldr r4, _080C6024 @ =gSongTable
	ldr r2, _080C6028 @ =0x00000A74
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C5FD8
	movs r1, #0xa7
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C5FF2
_080C5FD8:
	cmp r3, #0
	beq _080C5FEA
	ldr r0, _080C602C @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C5FF2
_080C5FEA:
	movs r0, #0xa7
	lsls r0, r0, #1
	bl m4aSongNumStart
_080C5FF2:
	ldrb r0, [r6, #1]
	subs r0, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #9
	bhi _080C6030
	adds r2, r6, #0
	adds r2, #0x50
	movs r3, #0xc0
	lsls r3, r3, #1
	strh r3, [r2]
	ldr r0, [r6, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C605C
	rsbs r0, r3, #0
	strh r0, [r2]
	b _080C605C
	.align 2, 0
_080C6018: .4byte gKirbys
_080C601C: .4byte gUnk_0203AD3C
_080C6020: .4byte gUnk_08D60FA4
_080C6024: .4byte gSongTable
_080C6028: .4byte 0x00000A74
_080C602C: .4byte gUnk_0203AD10
_080C6030:
	adds r1, r6, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C604C
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C605C
	b _080C6058
_080C604C:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C605C
_080C6058:
	movs r0, #0
	strh r0, [r1]
_080C605C:
	ldrh r0, [r6, #4]
	adds r0, #1
	strh r0, [r6, #4]
_080C6062:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080C6068
sub_080C6068: @ 0x080C6068
	push {r4, lr}
	adds r2, r0, #0
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r3, [r1]
	movs r4, #0
	ldrsh r0, [r1, r4]
	cmp r0, #0
	bge _080C6088
	adds r0, r3, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6098
	b _080C6094
_080C6088:
	adds r0, r3, #0
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6098
_080C6094:
	movs r0, #0
	strh r0, [r1]
_080C6098:
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #4
	ble _080C60AA
	adds r0, r2, #0
	bl sub_080C65B8
	b _080C60C2
_080C60AA:
	adds r0, r1, #1
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080C60C2
	adds r0, r2, #0
	bl sub_080C65F8
_080C60C2:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080C60C8
sub_080C60C8: @ 0x080C60C8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r1, #0
	strh r1, [r6, #4]
	adds r0, #0x50
	strh r1, [r0]
	adds r1, r6, #0
	adds r1, #0x83
	movs r0, #9
	strb r0, [r1]
	movs r0, #2
	adds r1, r6, #0
	bl sub_0806FE64
	movs r4, #0x10
	rsbs r4, r4, #0
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #1
	bl sub_08089864
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0xc
	movs r3, #0
	bl sub_08089864
	ldr r0, _080C6188 @ =sub_080C61B0
	str r0, [r6, #0x78]
	adds r0, r6, #0
	adds r0, #0x9e
	strb r5, [r0]
	ldr r0, _080C618C @ =sub_080C6770
	str r0, [r6, #0x7c]
	adds r1, r6, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	ldr r1, _080C6190 @ =gKirbys
	ldr r0, _080C6194 @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080C6180
	ldrb r0, [r6]
	cmp r0, #0
	bne _080C6144
	adds r0, r6, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C6180
_080C6144:
	ldr r1, _080C6198 @ =gUnk_08D60FA4
	ldr r4, _080C619C @ =gSongTable
	ldr r2, _080C61A0 @ =0x00000A5C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C6168
	ldr r1, _080C61A4 @ =0x00000A58
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C6180
_080C6168:
	cmp r3, #0
	beq _080C617A
	ldr r0, _080C61A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C6180
_080C617A:
	ldr r0, _080C61AC @ =0x0000014B
	bl m4aSongNumStart
_080C6180:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C6188: .4byte sub_080C61B0
_080C618C: .4byte sub_080C6770
_080C6190: .4byte gKirbys
_080C6194: .4byte gUnk_0203AD3C
_080C6198: .4byte gUnk_08D60FA4
_080C619C: .4byte gSongTable
_080C61A0: .4byte 0x00000A5C
_080C61A4: .4byte 0x00000A58
_080C61A8: .4byte gUnk_0203AD10
_080C61AC: .4byte 0x0000014B

	thumb_func_start sub_080C61B0
sub_080C61B0: @ 0x080C61B0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C61D0
	adds r0, r2, #0
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C61E0
	b _080C61DC
_080C61D0:
	adds r0, r2, #0
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C61E0
_080C61DC:
	movs r0, #0
	strh r0, [r1]
_080C61E0:
	ldr r0, [r5, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C622C
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
	ldr r0, [r5, #8]
	ldr r1, _080C6238 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080C623C @ =sub_080C5AB4
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C6240 @ =sub_080C55D4
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
_080C622C:
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C6238: .4byte 0xFFFFFEFF
_080C623C: .4byte sub_080C5AB4
_080C6240: .4byte sub_080C55D4

	thumb_func_start sub_080C6244
sub_080C6244: @ 0x080C6244
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #7
	bne _080C6262
	ldr r0, [r3, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C6262
	adds r0, r3, #0
	bl sub_080C65F8
	b _080C6378
_080C6262:
	movs r0, #0x52
	adds r0, r0, r3
	mov ip, r0
	movs r1, #0
	ldrsh r0, [r0, r1]
	ldr r4, _080C62C0 @ =0x000001CF
	cmp r0, r4
	bgt _080C6288
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #7
	strb r0, [r1]
	mov r2, ip
	movs r5, #0
	ldrsh r0, [r2, r5]
	adds r2, r3, #0
	adds r2, #0x9d
	cmp r0, r4
	ble _080C62A6
_080C6288:
	adds r2, r3, #0
	adds r2, #0x9d
	ldrb r1, [r2]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _080C62A6
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #7
	strb r0, [r1]
	movs r0, #0xe8
	lsls r0, r0, #1
	mov r1, ip
	strh r0, [r1]
_080C62A6:
	ldrb r2, [r2]
	movs r4, #0x30
	ands r4, r2
	cmp r4, #0
	beq _080C632A
	movs r0, #0x20
	ands r0, r2
	cmp r0, #0
	beq _080C62C4
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	b _080C62D4
	.align 2, 0
_080C62C0: .4byte 0x000001CF
_080C62C4:
	movs r0, #0x10
	ands r0, r2
	cmp r0, #0
	beq _080C62D6
	ldr r0, [r3, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
_080C62D4:
	str r0, [r3, #8]
_080C62D6:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C6306
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r2, r0, #0x10
	movs r0, #0xe0
	rsbs r0, r0, #0
	cmp r2, r0
	bge _080C6300
	ldr r0, _080C62FC @ =0x0000FF20
	strh r0, [r1]
	b _080C6354
	.align 2, 0
_080C62FC: .4byte 0x0000FF20
_080C6300:
	cmp r2, #0xe0
	ble _080C6354
	b _080C6318
_080C6306:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0xe0
	ble _080C631E
_080C6318:
	movs r0, #0xe0
	strh r0, [r1]
	b _080C6354
_080C631E:
	movs r2, #0xe0
	rsbs r2, r2, #0
	cmp r0, r2
	bge _080C6354
	strh r2, [r1]
	b _080C6354
_080C632A:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	bge _080C6346
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C6354
	b _080C6352
_080C6346:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C6354
_080C6352:
	strh r4, [r1]
_080C6354:
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C6378
	ldr r0, [r3, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_080C60C8
_080C6378:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6380
sub_080C6380: @ 0x080C6380
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080C63A0
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080C63B0
	b _080C63AC
_080C63A0:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080C63B0
_080C63AC:
	movs r0, #0
	strh r0, [r1]
_080C63B0:
	adds r5, r4, #0
	adds r5, #0x62
	ldrb r1, [r5]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080C63C6
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
_080C63C6:
	ldrb r1, [r5]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080C63E0
	ldr r0, [r4, #8]
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_080C60C8
_080C63E0:
	ldrb r1, [r5]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080C63F6
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
_080C63F6:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6404
sub_080C6404: @ 0x080C6404
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r5, #0x30]
	ldr r0, [r5, #8]
	ldr r1, _080C6450 @ =0xFFFFFEFF
	ands r0, r1
	adds r1, #0xc0
	ands r0, r1
	str r0, [r5, #8]
	ldr r0, _080C6454 @ =sub_080C5AB4
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C6458 @ =sub_080C55D4
	str r0, [r5, #0x7c]
	adds r1, r5, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C6450: .4byte 0xFFFFFEFF
_080C6454: .4byte sub_080C5AB4
_080C6458: .4byte sub_080C55D4

	thumb_func_start sub_080C645C
sub_080C645C: @ 0x080C645C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r5, _080C649C @ =sub_080C5B50
	movs r1, #2
	adds r2, r5, #0
	bl ObjectSetFunc
	movs r6, #0
	movs r0, #0
	strh r0, [r4, #4]
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #2
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_0803D368
	adds r1, r4, #0
	adds r1, #0xac
	str r0, [r1]
	str r5, [r4, #0x78]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r6, [r0]
	ldr r0, _080C64A0 @ =sub_080C55D4
	str r0, [r4, #0x7c]
	adds r4, #0x84
	movs r0, #8
	strb r0, [r4]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080C649C: .4byte sub_080C5B50
_080C64A0: .4byte sub_080C55D4

	thumb_func_start sub_080C64A4
sub_080C64A4: @ 0x080C64A4
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r1, #0
	strh r1, [r5, #4]
	adds r2, r5, #0
	adds r2, #0x83
	movs r0, #0xa
	strb r0, [r2]
	adds r0, r5, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, _080C64E4 @ =sub_080C64EC
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C64E8 @ =sub_080C6770
	str r0, [r5, #0x7c]
	subs r1, #0x28
	movs r0, #4
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C64E4: .4byte sub_080C64EC
_080C64E8: .4byte sub_080C6770

	thumb_func_start sub_080C64EC
sub_080C64EC: @ 0x080C64EC
	push {r4, lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080C651A
	adds r3, r2, #0
	adds r3, #0x50
	movs r4, #0xe8
	lsls r4, r4, #1
	strh r4, [r3]
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C6512
	rsbs r0, r4, #0
	strh r0, [r3]
_080C6512:
	adds r0, r2, #0
	bl sub_080C6528
	b _080C6520
_080C651A:
	ldrh r0, [r2, #4]
	adds r0, #1
	strh r0, [r2, #4]
_080C6520:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6528
sub_080C6528: @ 0x080C6528
	push {lr}
	adds r3, r0, #0
	movs r0, #0
	strh r0, [r3, #4]
	ldr r2, _080C6550 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080C6554 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080C6558 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C655C
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #0xb
	b _080C6562
	.align 2, 0
_080C6550: .4byte gRngVal
_080C6554: .4byte 0x00196225
_080C6558: .4byte 0x3C6EF35F
_080C655C:
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #0xc
_080C6562:
	strb r0, [r1]
	ldr r0, _080C6580 @ =sub_080C5CB8
	str r0, [r3, #0x78]
	adds r1, r3, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080C6584 @ =sub_080C55D4
	str r0, [r3, #0x7c]
	subs r1, #0x1a
	movs r0, #4
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_080C6580: .4byte sub_080C5CB8
_080C6584: .4byte sub_080C55D4

	thumb_func_start sub_080C6588
sub_080C6588: @ 0x080C6588
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #4]
	adds r3, r2, #0
	adds r3, #0x83
	movs r0, #0xd
	strb r0, [r3]
	ldr r0, _080C65B0 @ =sub_080C5E64
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080C65B4 @ =sub_080C6770
	str r0, [r2, #0x7c]
	adds r1, r2, #0
	adds r1, #0x84
	movs r0, #4
	strb r0, [r1]
	bx lr
	.align 2, 0
_080C65B0: .4byte sub_080C5E64
_080C65B4: .4byte sub_080C6770

	thumb_func_start sub_080C65B8
sub_080C65B8: @ 0x080C65B8
	adds r3, r0, #0
	movs r2, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x52
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r1]
	adds r1, #0x31
	movs r0, #6
	strb r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, _080C65F0 @ =sub_080C6244
	str r0, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _080C65F4 @ =sub_080C55D4
	str r0, [r3, #0x7c]
	adds r1, r3, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	bx lr
	.align 2, 0
_080C65F0: .4byte sub_080C6244
_080C65F4: .4byte sub_080C55D4

	thumb_func_start sub_080C65F8
sub_080C65F8: @ 0x080C65F8
	mov ip, r0
	movs r3, #0
	movs r0, #0
	mov r1, ip
	strh r0, [r1, #4]
	mov r0, ip
	adds r0, #0x83
	movs r2, #8
	strb r2, [r0]
	ldr r0, [r1, #8]
	movs r1, #0x20
	orrs r0, r1
	mov r1, ip
	str r0, [r1, #8]
	ldr r0, _080C662C @ =sub_080C6380
	str r0, [r1, #0x78]
	mov r0, ip
	adds r0, #0x9e
	strb r3, [r0]
	ldr r0, _080C6630 @ =sub_080C55D4
	str r0, [r1, #0x7c]
	mov r0, ip
	adds r0, #0x84
	strb r2, [r0]
	bx lr
	.align 2, 0
_080C662C: .4byte sub_080C6380
_080C6630: .4byte sub_080C55D4

	thumb_func_start sub_080C6634
sub_080C6634: @ 0x080C6634
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #5
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, _080C666C @ =sub_080C6068
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C6670 @ =sub_080C6770
	str r0, [r5, #0x7c]
	subs r1, #0x28
	movs r0, #8
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C666C: .4byte sub_080C6068
_080C6670: .4byte sub_080C6770

	thumb_func_start sub_080C6674
sub_080C6674: @ 0x080C6674
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #4]
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0xe
	strb r0, [r1]
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	ldr r0, _080C66AC @ =sub_080C5F20
	str r0, [r5, #0x78]
	adds r0, r5, #0
	adds r0, #0x9e
	strb r4, [r0]
	ldr r0, _080C66B0 @ =sub_080C6770
	str r0, [r5, #0x7c]
	subs r1, #0x28
	movs r0, #0x14
	strb r0, [r1]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080C66AC: .4byte sub_080C5F20
_080C66B0: .4byte sub_080C6770

	thumb_func_start sub_080C66B4
sub_080C66B4: @ 0x080C66B4
	adds r2, r0, #0
	movs r1, #0
	movs r0, #0
	strh r0, [r2, #4]
	adds r0, r2, #0
	adds r0, #0x83
	strb r1, [r0]
	ldr r0, _080C66D4 @ =sub_080C57D8
	str r0, [r2, #0x78]
	adds r0, r2, #0
	adds r0, #0x9e
	strb r1, [r0]
	ldr r0, _080C66D8 @ =sub_080C55D4
	str r0, [r2, #0x7c]
	bx lr
	.align 2, 0
_080C66D4: .4byte sub_080C57D8
_080C66D8: .4byte sub_080C55D4

	thumb_func_start sub_080C66DC
sub_080C66DC: @ 0x080C66DC
	adds r3, r0, #0
	movs r2, #0
	movs r0, #0
	strh r0, [r3, #4]
	adds r1, r3, #0
	adds r1, #0x83
	movs r0, #0xb
	strb r0, [r1]
	subs r1, #0x33
	ldr r0, _080C6728 @ =0x0000FDC0
	strh r0, [r1]
	ldr r0, [r3, #8]
	movs r1, #1
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x49
	ands r0, r1
	str r0, [r3, #8]
	ldr r0, _080C672C @ =sub_080C5A3C
	str r0, [r3, #0x78]
	adds r0, r3, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r0, _080C6730 @ =sub_080C6770
	str r0, [r3, #0x7c]
	adds r1, r3, #0
	adds r1, #0x84
	movs r0, #8
	strb r0, [r1]
	bx lr
	.align 2, 0
_080C6728: .4byte 0x0000FDC0
_080C672C: .4byte sub_080C5A3C
_080C6730: .4byte sub_080C6770

	thumb_func_start sub_080C6734
sub_080C6734: @ 0x080C6734
	push {lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C674E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080C6756
_080C674E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080C6756:
	ldr r0, [r0, #0x70]
	cmp r0, #0
	beq _080C6764
	adds r1, r0, #0
	adds r1, #0xb8
	movs r0, #0
	str r0, [r1]
_080C6764:
	adds r0, r2, #0
	bl ObjectDestroy
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C6770
sub_080C6770: @ 0x080C6770
	push {lr}
	adds r3, r0, #0
	ldr r1, [r3, #0x70]
	cmp r1, #0
	beq _080C67AC
	ldrb r0, [r1]
	cmp r0, #1
	bne _080C67AC
	adds r0, r1, #0
	adds r0, #0x82
	ldrb r0, [r0]
	cmp r0, #0x46
	bne _080C67AC
	adds r0, r1, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080C67AC
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	ldr r2, _080C67B0 @ =0x00000292
	adds r0, r3, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
_080C67AC:
	pop {r0}
	bx r0
	.align 2, 0
_080C67B0: .4byte 0x00000292
