	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08030D4C
sub_08030D4C: @ 0x08030D4C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _08030DE4 @ =gUnk_020382D0
	mov ip, r0
	ldr r0, [r0]
	subs r0, #5
	mov sb, r0
	movs r3, #0
	ldr r0, _08030DE8 @ =gUnk_0203AD30
	mov r8, ip
	adds r1, r0, #0
	ldrb r1, [r1]
	cmp r3, r1
	bhs _08030E10
	movs r2, #0xa9
	lsls r2, r2, #2
	add r2, r8
	mov sl, r2
	movs r7, #0xf
_08030D7C:
	ldr r0, _08030DEC @ =gUnk_02038578
	adds r2, r0, r3
	mov r0, sl
	adds r1, r0, r3
	ldrb r0, [r1]
	subs r0, #1
	ands r0, r7
	strb r0, [r2]
	ldrb r1, [r1]
	cmp r0, r1
	beq _08030DCA
	ldr r1, _08030DEC @ =gUnk_02038578
	adds r2, r1, r3
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, ip
	adds r6, r0, r3
	lsls r5, r3, #7
	mov r4, ip
	adds r4, #0xa0
_08030DA4:
	ldrb r1, [r2]
	lsls r0, r1, #3
	adds r0, r0, r5
	adds r0, r4, r0
	ldr r0, [r0]
	cmp sb, r0
	beq _08030DBE
	subs r0, r1, #1
	ands r0, r7
	strb r0, [r2]
	ldrb r1, [r6]
	cmp r0, r1
	bne _08030DA4
_08030DBE:
	mov r1, sl
	adds r0, r1, r3
	ldrb r2, [r2]
	ldrb r1, [r0]
	cmp r2, r1
	bne _08030DF4
_08030DCA:
	ldr r2, _08030DE4 @ =gUnk_020382D0
	ldrh r1, [r2, #4]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r0, r2, #0
	orrs r0, r1
	ldr r1, _08030DE4 @ =gUnk_020382D0
	strh r0, [r1, #4]
	ldr r1, _08030DF0 @ =gUnk_02038580
	movs r0, #5
	str r0, [r1]
	movs r0, #0
	b _08030E2E
	.align 2, 0
_08030DE4: .4byte gUnk_020382D0
_08030DE8: .4byte gUnk_0203AD30
_08030DEC: .4byte gUnk_02038578
_08030DF0: .4byte gUnk_02038580
_08030DF4:
	movs r0, #0xa8
	lsls r0, r0, #2
	add r0, ip
	adds r0, r0, r3
	subs r1, r1, r2
	ands r1, r7
	strb r1, [r0]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r2, _08030E40 @ =gUnk_0203AD30
	ldrb r2, [r2]
	cmp r3, r2
	blo _08030D7C
_08030E10:
	mov r0, r8
	ldrh r1, [r0, #4]
	movs r0, #2
	movs r2, #0
	orrs r1, r0
	mov r0, r8
	strh r1, [r0, #4]
	ldr r0, [sp]
	cmp r0, #0
	beq _08030E2C
	movs r0, #8
	orrs r1, r0
	mov r2, r8
	strh r1, [r2, #4]
_08030E2C:
	movs r0, #1
_08030E2E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08030E40: .4byte gUnk_0203AD30

	thumb_func_start sub_08030E44
sub_08030E44: @ 0x08030E44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r7, _08030FC8 @ =gUnk_020382D0
	ldrh r1, [r7, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08030E5C
	b _08030FB8
_08030E5C:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08030E66
	b _08030FB8
_08030E66:
	movs r2, #0xab
	lsls r2, r2, #2
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, #0x20
	adds r4, r0, r7
	movs r5, #0
	movs r0, #8
	ands r0, r1
	ldr r3, [r7]
	mov r8, r3
	ldr r1, _08030FCC @ =gInput
	mov sb, r1
	ldr r2, _08030FD0 @ =gMultiSioSend
	mov sl, r2
	cmp r0, #0
	beq _08030EB8
	ldr r0, _08030FD4 @ =gRngVal
	ldrh r5, [r0]
	movs r2, #0
	movs r3, #0xd4
	lsls r3, r3, #1
	mov ip, r3
	ldr r3, _08030FD8 @ =gUnk_02020F20
	adds r6, r3, #4
_08030E9A:
	mov r1, ip
	muls r1, r2, r1
	adds r0, r1, r3
	ldr r0, [r0]
	adds r1, r1, r6
	ldr r1, [r1]
	adds r0, r0, r1
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08030E9A
_08030EB8:
	mov r0, r8
	str r0, [r4]
	mov r1, sb
	ldrh r0, [r1]
	ldr r1, _08030FDC @ =0x000003FF
	ands r1, r0
	lsls r0, r5, #0xa
	movs r3, #0xc0
	lsls r3, r3, #4
	adds r2, r3, #0
	ands r0, r2
	orrs r1, r0
	strh r1, [r4, #4]
	mov r6, sl
	movs r0, #0x20
	strb r0, [r6]
	ldr r1, _08030FC8 @ =gUnk_020382D0
	ldrb r0, [r1, #6]
	strb r0, [r6, #1]
	ldr r0, [r4]
	str r0, [r6, #0x10]
	movs r5, #0
	adds r2, r6, #2
	movs r1, #0
_08030EE8:
	lsls r0, r5, #1
	adds r0, r2, r0
	strh r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #5
	bls _08030EE8
	movs r2, #0xab
	lsls r2, r2, #2
	adds r3, r7, r2
	ldrb r5, [r3]
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r1, [r6, #2]
	ldrh r0, [r4, #0x24]
	orrs r1, r0
	strh r1, [r6, #2]
	subs r5, #1
	movs r2, #0xf
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r6, #2]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #4
	ldrh r0, [r6, #4]
	orrs r1, r0
	strh r1, [r6, #4]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #8
	ldrh r0, [r6, #6]
	orrs r1, r0
	strh r1, [r6, #6]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #6]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r4, r0, r7
	ldrh r1, [r6, #8]
	ldrh r0, [r4, #0x24]
	orrs r1, r0
	strh r1, [r6, #8]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #0xc
	orrs r1, r0
	strh r1, [r6, #8]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #4
	ldrh r0, [r6, #0xa]
	orrs r1, r0
	strh r1, [r6, #0xa]
	subs r5, #1
	ands r5, r2
	lsls r0, r5, #3
	adds r0, #0x20
	adds r4, r7, r0
	ldrh r0, [r4, #4]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #0xa]
	ldrh r1, [r4, #4]
	lsrs r1, r1, #8
	ldrh r0, [r6, #0xc]
	orrs r1, r0
	strh r1, [r6, #0xc]
	subs r0, r5, #1
	ands r0, r2
	lsls r0, r0, #3
	adds r4, r0, r7
	ldrh r0, [r4, #0x24]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #0xc]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
_08030FB8:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08030FC8: .4byte gUnk_020382D0
_08030FCC: .4byte gInput
_08030FD0: .4byte gMultiSioSend
_08030FD4: .4byte gRngVal
_08030FD8: .4byte gUnk_02020F20
_08030FDC: .4byte 0x000003FF

	thumb_func_start sub_08030FE0
sub_08030FE0: @ 0x08030FE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	ldr r0, _08031004 @ =gUnk_020382D0
	mov r8, r0
	ldrh r1, [r0, #4]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08030FFC
	b _08031488
_08030FFC:
	movs r1, #0
	mov sb, r1
	b _080311F0
	.align 2, 0
_08031004: .4byte gUnk_020382D0
_08031008:
	ldr r0, _08031060 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, sb
	bne _08031068
	movs r0, #0xab
	lsls r0, r0, #2
	add r0, r8
	ldrb r0, [r0]
	subs r0, #1
	movs r6, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, #0x20
	mov r7, r8
	adds r5, r7, r0
	ldr r3, _08031064 @ =gUnk_02038574
	add r3, sb
	ldrb r4, [r3]
	subs r1, r4, #1
	ands r1, r6
	mov r2, sb
	lsls r0, r2, #7
	adds r0, #0xa0
	adds r2, r7, r0
	lsls r1, r1, #3
	adds r6, r2, r1
	ldr r0, [r6]
	ldr r1, [r5]
	cmp r0, r1
	bne _0803104A
	b _080311E6
_0803104A:
	lsls r0, r4, #3
	adds r6, r2, r0
	str r1, [r6]
	ldrh r0, [r5, #4]
	strh r0, [r6, #4]
	ldrb r0, [r3]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r3]
	b _080311E6
	.align 2, 0
_08031060: .4byte 0x04000128
_08031064: .4byte gUnk_02038574
_08031068:
	mov r6, sb
	lsls r0, r6, #2
	add r0, sb
	lsls r0, r0, #2
	ldr r1, _080312B0 @ =gMultiSioRecv
	adds r5, r0, r1
	ldr r7, _080312B4 @ =gUnk_02038574
	add r7, sb
	mov ip, r7
	ldrb r2, [r7]
	subs r1, r2, #1
	movs r0, #0xf
	ands r1, r0
	ldr r4, [r5, #0x10]
	lsls r1, r1, #3
	lsls r6, r6, #7
	mov sl, r6
	add r1, sl
	mov r0, r8
	adds r0, #0xa0
	adds r0, r0, r1
	ldr r3, [r0]
	subs r3, r4, r3
	lsls r3, r3, #0x18
	lsrs r1, r3, #0x18
	str r1, [sp]
	asrs r3, r3, #0x18
	adds r2, r2, r3
	subs r7, r2, #1
	movs r2, #0xf
	ands r7, r2
	mov r0, sl
	adds r0, #0xa0
	mov r6, r8
	adds r2, r6, r0
	lsls r0, r7, #3
	adds r6, r2, r0
	str r4, [r6]
	ldrh r0, [r5, #2]
	strh r0, [r6, #4]
	subs r7, #1
	movs r4, #0xf
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #1
	str r0, [r6]
	ldrh r1, [r5, #2]
	lsrs r1, r1, #0xc
	strh r1, [r6, #4]
	ldrh r0, [r5, #4]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #2
	str r0, [r6]
	ldrh r1, [r5, #4]
	lsrs r1, r1, #8
	strh r1, [r6, #4]
	ldrh r0, [r5, #6]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #3
	str r0, [r6]
	ldrh r0, [r5, #6]
	lsrs r0, r0, #4
	strh r0, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #4
	str r0, [r6]
	ldrh r0, [r5, #8]
	strh r0, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #5
	str r0, [r6]
	ldrh r1, [r5, #8]
	lsrs r1, r1, #0xc
	strh r1, [r6, #4]
	ldrh r0, [r5, #0xa]
	lsls r0, r0, #4
	orrs r1, r0
	strh r1, [r6, #4]
	subs r7, #1
	ands r7, r4
	lsls r0, r7, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #6
	str r0, [r6]
	ldrh r1, [r5, #0xa]
	lsrs r1, r1, #8
	strh r1, [r6, #4]
	ldrh r0, [r5, #0xc]
	lsls r0, r0, #8
	orrs r1, r0
	strh r1, [r6, #4]
	subs r0, r7, #1
	ands r0, r4
	lsls r0, r0, #3
	adds r6, r2, r0
	ldr r0, [r5, #0x10]
	subs r0, #7
	str r0, [r6]
	ldrh r0, [r5, #0xc]
	lsrs r0, r0, #4
	strh r0, [r6, #4]
	cmp r3, #0
	ble _08031174
	mov r7, ip
	ldrb r0, [r7]
	ldr r1, [sp]
	adds r0, r0, r1
	ands r0, r4
	strb r0, [r7]
_08031174:
	ldr r0, _080312B8 @ =gUnk_02038578
	add r0, sb
	ldrb r0, [r0]
	subs r7, r0, #1
	movs r6, #0xf
	ands r7, r6
	mov r0, ip
	ldrb r0, [r0]
	cmp r7, r0
	beq _080311B0
	adds r4, r2, #0
	ldr r3, _080312BC @ =0x0000FFFF
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, r8
	mov r1, sb
	adds r2, r0, r1
_08031196:
	lsls r0, r7, #3
	adds r6, r4, r0
	str r3, [r6]
	ldrh r1, [r6, #4]
	adds r0, r3, #0
	orrs r0, r1
	strh r0, [r6, #4]
	subs r7, #1
	movs r6, #0xf
	ands r7, r6
	ldrb r0, [r2]
	cmp r7, r0
	bne _08031196
_080311B0:
	mov r1, r8
	ldrh r2, [r1, #4]
	movs r0, #2
	ands r0, r2
	cmp r0, #0
	beq _080311E6
	ldrb r0, [r5]
	cmp r0, #0x20
	beq _080311C4
	b _0803142C
_080311C4:
	ldrb r0, [r1, #6]
	ldrb r5, [r5, #1]
	cmp r0, r5
	beq _080311CE
	b _08031444
_080311CE:
	ldr r0, _080312B8 @ =gUnk_02038578
	add r0, sb
	ldrb r0, [r0]
	lsls r0, r0, #3
	add r0, sl
	add r0, r8
	adds r0, #0xa4
	ldrh r1, [r0]
	ldr r0, _080312BC @ =0x0000FFFF
	cmp r1, r0
	bne _080311E6
	b _0803145C
_080311E6:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
_080311F0:
	ldr r2, _080312C0 @ =gUnk_0203AD30
	ldrb r2, [r2]
	cmp sb, r2
	bhs _080311FA
	b _08031008
_080311FA:
	mov r6, r8
	ldrh r1, [r6, #4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080312EC
	ldr r0, _080312C4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r6, #4]
	movs r7, #0
	mov sl, r7
	movs r0, #0
	mov sb, r0
	ldr r1, _080312C0 @ =gUnk_0203AD30
	ldrb r0, [r1]
	cmp sb, r0
	bhs _08031294
	movs r2, #0xa9
	lsls r2, r2, #2
	add r2, r8
	mov ip, r2
	mov r3, r8
	adds r3, #0xa0
	movs r6, #0xaa
	lsls r6, r6, #2
	add r6, r8
	adds r5, r0, #0
	movs r4, #0xa8
	lsls r4, r4, #2
	add r4, r8
_08031236:
	ldr r0, _080312C8 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, sb
	beq _08031286
	mov r0, ip
	add r0, sb
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	lsls r0, r0, #3
	mov r7, sb
	lsls r2, r7, #7
	adds r0, r0, r2
	adds r0, r3, r0
	ldr r1, [r0]
	adds r0, r6, r7
	ldrb r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r2
	adds r0, r3, r0
	ldr r0, [r0]
	subs r1, r1, r0
	adds r0, r4, r7
	ldrb r0, [r0]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	subs r0, r0, r1
	lsls r0, r0, #0x18
	asrs r1, r0, #0x18
	movs r2, #0x80
	lsls r2, r2, #0x11
	adds r0, r0, r2
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08031286
	cmp r1, #1
	bgt _0803129A
_08031286:
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	cmp sb, r5
	blo _08031236
_08031294:
	mov r6, sl
	cmp r6, #0
	beq _080312D0
_0803129A:
	mov r7, r8
	ldrh r1, [r7, #4]
	movs r0, #4
	orrs r0, r1
	strh r0, [r7, #4]
	ldr r1, _080312CC @ =0x000002AD
	add r1, r8
	ldrb r0, [r1]
	adds r0, #1
	b _080312EA
	.align 2, 0
_080312B0: .4byte gMultiSioRecv
_080312B4: .4byte gUnk_02038574
_080312B8: .4byte gUnk_02038578
_080312BC: .4byte 0x0000FFFF
_080312C0: .4byte gUnk_0203AD30
_080312C4: .4byte 0x0000FFFB
_080312C8: .4byte 0x04000128
_080312CC: .4byte 0x000002AD
_080312D0:
	ldr r1, _080312E4 @ =0x000002AD
	add r1, r8
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _080312E8
	adds r0, r2, #1
	b _080312EA
	.align 2, 0
_080312E4: .4byte 0x000002AD
_080312E8:
	mov r0, sl
_080312EA:
	strb r0, [r1]
_080312EC:
	mov r2, r8
	ldrh r1, [r2, #4]
	movs r0, #4
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	bne _080313C8
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08031304
	b _08031478
_08031304:
	ldr r6, _080313B8 @ =0x0000FFFF
	str r6, [sp, #4]
	movs r7, #0
	mov sl, r7
	movs r0, #0
	mov sb, r0
	ldr r1, _080313BC @ =gUnk_0203AD30
	ldrb r1, [r1]
	cmp sb, r1
	bhs _0803138E
	movs r2, #0xaa
	lsls r2, r2, #2
	add r2, r8
	str r2, [sp, #8]
_08031320:
	mov r6, sb
	lsls r4, r6, #1
	mov r2, r8
	adds r2, #8
	adds r2, r2, r4
	ldrh r3, [r2]
	ldr r7, [sp, #8]
	add r7, sb
	mov ip, r7
	ldrb r7, [r7]
	lsls r0, r6, #7
	adds r0, #0xa0
	add r0, r8
	lsls r1, r7, #3
	adds r6, r0, r1
	ldrh r1, [r6, #4]
	ldr r0, _080313C0 @ =0x000003FF
	ands r0, r1
	strh r0, [r2]
	mov r1, r8
	adds r1, #0x10
	adds r1, r1, r4
	bics r0, r3
	strh r0, [r1]
	mov r1, r8
	adds r1, #0x18
	adds r1, r1, r4
	ldrh r0, [r2]
	bics r3, r0
	strh r3, [r1]
	ldrh r1, [r6, #4]
	movs r0, #0xc0
	lsls r0, r0, #4
	ands r0, r1
	ldr r1, [sp, #4]
	ands r1, r0
	str r1, [sp, #4]
	mov r2, sl
	orrs r2, r0
	mov sl, r2
	mov r6, ip
	ldrb r0, [r6]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r6]
	mov r0, sb
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sb, r0
	ldr r7, _080313BC @ =gUnk_0203AD30
	ldrb r7, [r7]
	cmp sb, r7
	blo _08031320
_0803138E:
	mov r0, r8
	ldrh r1, [r0, #4]
	movs r2, #8
	adds r0, r2, #0
	ands r0, r1
	adds r3, r1, #0
	cmp r0, #0
	beq _080313C8
	ldr r1, [sp, #4]
	cmp r1, sl
	beq _080313C8
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r6, #0
	orrs r0, r3
	mov r7, r8
	strh r0, [r7, #4]
	ldr r0, _080313C4 @ =gUnk_02038580
	str r2, [r0]
	movs r0, #0
	b _0803148A
	.align 2, 0
_080313B8: .4byte 0x0000FFFF
_080313BC: .4byte gUnk_0203AD30
_080313C0: .4byte 0x000003FF
_080313C4: .4byte gUnk_02038580
_080313C8:
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	beq _08031478
	ldr r0, _080313F0 @ =0x000002AD
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x10
	ble _080313F8
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r3
	mov r2, r8
	strh r0, [r2, #4]
	ldr r1, _080313F4 @ =gUnk_02038580
	movs r0, #7
	b _0803146C
	.align 2, 0
_080313F0: .4byte 0x000002AD
_080313F4: .4byte gUnk_02038580
_080313F8:
	movs r0, #0xa9
	lsls r0, r0, #2
	add r0, r8
	add r0, sb
	ldrb r2, [r0]
	movs r0, #0xaa
	lsls r0, r0, #2
	add r0, r8
	add r0, sb
	ldrb r0, [r0]
	subs r0, #1
	movs r1, #0xf
	ands r0, r1
	cmp r2, r0
	bne _08031478
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r6, #0
	orrs r0, r3
	mov r7, r8
	strh r0, [r7, #4]
	ldr r1, _08031428 @ =gUnk_02038580
	movs r0, #5
	b _0803146C
	.align 2, 0
_08031428: .4byte gUnk_02038580
_0803142C:
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r2
	mov r2, r8
	strh r0, [r2, #4]
	ldr r1, _08031440 @ =gUnk_02038580
	movs r0, #3
	b _0803146C
	.align 2, 0
_08031440: .4byte gUnk_02038580
_08031444:
	movs r6, #0x80
	lsls r6, r6, #8
	adds r0, r6, #0
	orrs r0, r2
	mov r7, r8
	strh r0, [r7, #4]
	ldr r1, _08031458 @ =gUnk_02038580
	movs r0, #4
	b _0803146C
	.align 2, 0
_08031458: .4byte gUnk_02038580
_0803145C:
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	orrs r0, r2
	mov r2, r8
	strh r0, [r2, #4]
	ldr r1, _08031474 @ =gUnk_02038580
	movs r0, #6
_0803146C:
	str r0, [r1]
	movs r0, #0
	b _0803148A
	.align 2, 0
_08031474: .4byte gUnk_02038580
_08031478:
	movs r0, #4
	ands r0, r3
	cmp r0, #0
	bne _08031488
	mov r6, r8
	ldr r0, [r6]
	adds r0, #1
	str r0, [r6]
_08031488:
	movs r0, #1
_0803148A:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0803149C
sub_0803149C: @ 0x0803149C
	push {r4, r5, r6, r7, lr}
	ldr r0, _080314B8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080314BC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080314C4
	.align 2, 0
_080314B8: .4byte gCurTask
_080314BC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080314C4:
	adds r4, r0, #0
	ldr r5, _080314E8 @ =gUnk_020382A0
	ldr r0, [r4, #0xc]
	cmp r0, #0
	bne _080315AE
	ldr r1, _080314EC @ =gMultiSioStatusFlags
	ldr r2, [r1]
	movs r0, #0x80
	lsls r0, r0, #5
	ands r0, r2
	adds r7, r1, #0
	cmp r0, #0
	beq _080314F4
	ldr r0, _080314F0 @ =0x0000FFFE
	strh r0, [r5, #4]
	ldrh r1, [r5, #6]
	subs r0, #2
	b _08031524
	.align 2, 0
_080314E8: .4byte gUnk_020382A0
_080314EC: .4byte gMultiSioStatusFlags
_080314F0: .4byte 0x0000FFFE
_080314F4:
	movs r1, #0x80
	lsls r1, r1, #6
	ands r1, r2
	cmp r1, #0
	beq _0803150C
	ldr r0, _08031508 @ =0x0000FFFD
	strh r0, [r5, #4]
	ldrh r1, [r5, #6]
	subs r0, #2
	b _08031528
	.align 2, 0
_08031508: .4byte 0x0000FFFD
_0803150C:
	movs r0, #0xf0
	lsls r0, r0, #4
	ands r2, r0
	cmp r2, #0
	bne _08031558
	ldrh r0, [r4, #0x18]
	cmp r0, #8
	bls _0803153C
	ldr r0, _08031534 @ =0x0000FFFF
	strh r0, [r5, #4]
	ldrh r1, [r5, #6]
	subs r0, #3
_08031524:
	ands r0, r1
	ldr r1, _08031538 @ =0x0000FFFB
_08031528:
	ands r0, r1
	strh r0, [r5, #6]
	movs r0, #1
	str r0, [r4, #0xc]
	b _080315AE
	.align 2, 0
_08031534: .4byte 0x0000FFFF
_08031538: .4byte 0x0000FFFB
_0803153C:
	adds r0, #1
	strh r0, [r4, #0x18]
	b _0803155A
_08031542:
	ldr r0, _08031554 @ =0x0000FFFC
	strh r0, [r5, #4]
	ldrh r1, [r5, #6]
	subs r0, #1
	ands r0, r1
	strh r0, [r5, #6]
	str r6, [r4, #0xc]
	b _080315AE
	.align 2, 0
_08031554: .4byte 0x0000FFFC
_08031558:
	strh r1, [r4, #0x18]
_0803155A:
	movs r2, #0
	adds r3, r4, #0
	adds r3, #0x10
_08031560:
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	ldr r1, [r7]
	ands r0, r1
	cmp r0, #0
	beq _0803158A
	movs r6, #1
	adds r0, r6, #0
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _0803158A
	lsls r0, r2, #1
	adds r1, r3, r0
	ldrh r0, [r1]
	cmp r0, #0xa
	bhi _08031542
	adds r0, #1
	strh r0, [r1]
	b _08031592
_0803158A:
	lsls r0, r2, #1
	adds r0, r3, r0
	movs r1, #0
	strh r1, [r0]
_08031592:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _08031560
	ldr r1, [r4]
	adds r0, r4, #0
	bl _call_via_r1
	strh r0, [r5, #4]
	ldrh r1, [r5, #6]
	ldr r0, _080315B4 @ =0x0000FFFB
	ands r0, r1
	strh r0, [r5, #6]
_080315AE:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080315B4: .4byte 0x0000FFFB

	thumb_func_start sub_080315B8
sub_080315B8: @ 0x080315B8
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov r8, r0
	ldr r0, _080315F4 @ =gUnk_020382A0
	ldr r5, _080315F8 @ =gMultiSioSend
	movs r1, #0
	mov sb, r1
	adds r1, r0, #0
	adds r1, #0x28
	mov r2, sb
	strb r2, [r1]
	adds r0, #0x29
	strb r2, [r0]
	movs r3, #0
	mov ip, r1
	adds r4, r0, #0
	movs r6, #1
_080315DE:
	ldr r0, _080315FC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r3
	bne _08031600
	adds r2, r3, #1
	mov r7, ip
	strb r2, [r7]
	b _08031656
	.align 2, 0
_080315F4: .4byte gUnk_020382A0
_080315F8: .4byte gMultiSioSend
_080315FC: .4byte 0x04000128
_08031600:
	movs r1, #0x80
	lsls r1, r1, #1
	lsls r1, r3
	ldr r0, _08031638 @ =gMultiSioStatusFlags
	ldr r2, [r0]
	ands r1, r2
	cmp r1, #0
	beq _08031668
	adds r2, r3, #1
	mov r0, ip
	strb r2, [r0]
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _0803163C @ =gMultiSioRecv
	adds r1, r0, r1
	ldrb r0, [r1]
	cmp r0, #2
	bne _0803167C
	mov r7, r8
	ldrb r0, [r7, #0x1c]
	ldrb r7, [r1, #1]
	cmp r0, r7
	beq _08031644
	ldr r0, _08031640 @ =0x0000FFFB
	mov sb, r0
	b _0803167C
	.align 2, 0
_08031638: .4byte gMultiSioStatusFlags
_0803163C: .4byte gMultiSioRecv
_08031640: .4byte 0x0000FFFB
_08031644:
	ldrb r0, [r1, #0xe]
	cmp r0, #0x20
	beq _08031656
	cmp r0, #0x20
	blt _0803167C
	cmp r0, #0x41
	bgt _0803167C
	cmp r0, #0x40
	blt _0803167C
_08031656:
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	adds r0, r6, #0
	lsls r0, r3
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
	b _0803167C
_08031668:
	adds r0, r6, #0
	lsls r0, r3
	ands r0, r2
	adds r2, r3, #1
	cmp r0, #0
	bne _0803167C
	lsls r0, r3, #1
	ldr r1, _08031698 @ =0x04000120
	adds r0, r0, r1
	ldrh r0, [r0]
_0803167C:
	lsls r0, r2, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _080315DE
	mov r2, sb
	lsls r0, r2, #0x10
	asrs r0, r0, #0x10
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08031698: .4byte 0x04000120

	thumb_func_start sub_0803169C
sub_0803169C: @ 0x0803169C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r6, _08031700 @ =gUnk_020382A0
	ldr r1, _08031704 @ =gMultiSioSend
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	movs r7, #0
	ldr r0, _08031708 @ =0x00000123
	strh r0, [r1, #2]
	strb r7, [r1, #0xe]
	strh r2, [r1, #0xc]
	adds r0, r4, #4
	adds r1, #4
	movs r2, #4
	bl CpuSet
	ldrh r0, [r6, #6]
	ldr r3, _0803170C @ =0x0000FFFC
	ands r3, r0
	strh r3, [r6, #6]
	ldr r5, _08031710 @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _0803171C
	ldr r0, _08031714 @ =gMultiSioStatusFlags
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _0803171C
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _0803171C
	movs r0, #1
	adds r1, r3, #0
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08031718 @ =sub_08031764
	b _0803174E
	.align 2, 0
_08031700: .4byte gUnk_020382A0
_08031704: .4byte gMultiSioSend
_08031708: .4byte 0x00000123
_0803170C: .4byte 0x0000FFFC
_08031710: .4byte 0x04000128
_08031714: .4byte gMultiSioStatusFlags
_08031718: .4byte sub_08031764
_0803171C:
	ldr r3, _08031758 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08031750
	ldr r0, _0803175C @ =gMultiSioStatusFlags
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08031750
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	beq _08031750
	ldrh r0, [r6, #6]
	movs r1, #2
	orrs r1, r0
	strh r1, [r6, #6]
	ldr r0, _08031760 @ =sub_080319F0
_0803174E:
	str r0, [r4]
_08031750:
	movs r0, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08031758: .4byte 0x04000128
_0803175C: .4byte gMultiSioStatusFlags
_08031760: .4byte sub_080319F0

	thumb_func_start sub_08031764
sub_08031764: @ 0x08031764
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r5, _080317BC @ =gUnk_020382A0
	ldr r6, _080317C0 @ =gMultiSioSend
	movs r0, #2
	strb r0, [r6]
	ldrb r0, [r7, #0x1c]
	strb r0, [r6, #1]
	ldr r0, _080317C4 @ =0x00000123
	strh r0, [r6, #2]
	movs r0, #0x20
	strb r0, [r6, #0xe]
	movs r4, #1
	strh r4, [r6, #0xc]
	ldr r3, _080317C8 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _080317A8
	ldr r0, _080317CC @ =gMultiSioStatusFlags
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _080317A8
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	adds r0, r4, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _080317D8
_080317A8:
	ldrh r0, [r5, #6]
	ldr r1, _080317D0 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r5, #6]
	ldr r0, _080317D4 @ =sub_0803169C
	str r0, [r7]
	movs r0, #1
	rsbs r0, r0, #0
	b _0803185A
	.align 2, 0
_080317BC: .4byte gUnk_020382A0
_080317C0: .4byte gMultiSioSend
_080317C4: .4byte 0x00000123
_080317C8: .4byte 0x04000128
_080317CC: .4byte gMultiSioStatusFlags
_080317D0: .4byte 0x0000FFFC
_080317D4: .4byte sub_0803169C
_080317D8:
	adds r0, r7, #0
	bl sub_080315B8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _0803185A
	adds r0, r5, #0
	adds r0, #0x28
	adds r1, r5, #0
	adds r1, #0x29
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08031858
	cmp r0, #1
	bls _08031858
	ldrh r1, [r5, #6]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0803184C
	movs r4, #0
	adds r5, #8
_08031808:
	ldr r0, _08031824 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r4
	bne _08031828
	lsls r1, r4, #3
	adds r1, r1, r5
	adds r0, r6, #4
	movs r2, #4
	bl CpuSet
	b _0803183E
	.align 2, 0
_08031824: .4byte 0x04000128
_08031828:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08031850 @ =gMultiSioRecv
	adds r0, r0, r1
	adds r0, #4
	lsls r1, r4, #3
	adds r1, r1, r5
	movs r2, #4
	bl CpuSet
_0803183E:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08031808
	ldr r0, _08031854 @ =sub_08031860
	str r0, [r7]
_0803184C:
	movs r0, #1
	b _0803185A
	.align 2, 0
_08031850: .4byte gMultiSioRecv
_08031854: .4byte sub_08031860
_08031858:
	movs r0, #0
_0803185A:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08031860
sub_08031860: @ 0x08031860
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	ldr r5, _080318CC @ =gUnk_020382A0
	ldr r4, _080318D0 @ =gMultiSioSend
	movs r0, #2
	strb r0, [r4]
	ldrb r0, [r6, #0x1c]
	strb r0, [r4, #1]
	ldr r0, _080318D4 @ =0x00000123
	mov r8, r0
	mov r1, r8
	strh r1, [r4, #2]
	movs r0, #0x22
	strb r0, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	movs r0, #1
	orrs r0, r1
	strh r0, [r4, #0xc]
	ldr r3, _080318D8 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	bne _080318B8
	ldr r1, _080318DC @ =gMultiSioStatusFlags
	ldr r2, [r1]
	movs r0, #0x80
	ands r0, r2
	mov sl, r1
	cmp r0, #0
	beq _080318B8
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _080318E8
_080318B8:
	ldrh r0, [r5, #6]
	ldr r1, _080318E0 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r5, #6]
	ldr r0, _080318E4 @ =sub_0803169C
	str r0, [r6]
	movs r0, #1
	rsbs r0, r0, #0
	b _080319DE
	.align 2, 0
_080318CC: .4byte gUnk_020382A0
_080318D0: .4byte gMultiSioSend
_080318D4: .4byte 0x00000123
_080318D8: .4byte 0x04000128
_080318DC: .4byte gMultiSioStatusFlags
_080318E0: .4byte 0x0000FFFC
_080318E4: .4byte sub_0803169C
_080318E8:
	movs r7, #0
	str r7, [sp]
	movs r2, #0
	adds r0, r5, #0
	adds r0, #0x28
	mov ip, r0
	ldrb r0, [r0]
	cmp r2, r0
	bhs _08031992
	movs r3, #1
	movs r5, #0x10
	mov sb, r8
	ldr r1, _08031940 @ =gMultiSioRecv
	mov r8, r1
_08031904:
	ldr r0, _08031944 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r2
	beq _08031974
	movs r0, #0x80
	lsls r0, r0, #1
	lsls r0, r2
	mov r7, sl
	ldr r1, [r7]
	ands r0, r1
	cmp r0, #0
	beq _08031984
	lsls r0, r2, #2
	adds r0, r0, r2
	lsls r0, r0, #2
	mov r7, r8
	adds r1, r0, r7
	ldrb r0, [r1]
	cmp r0, #2
	bne _08031984
	ldrb r0, [r6, #0x1c]
	ldrb r7, [r1, #1]
	cmp r0, r7
	beq _0803194C
	ldr r0, _08031948 @ =0x0000FFFB
	str r0, [sp]
	b _08031984
	.align 2, 0
_08031940: .4byte gMultiSioRecv
_08031944: .4byte 0x04000128
_08031948: .4byte 0x0000FFFB
_0803194C:
	ldrh r0, [r1, #2]
	cmp r0, sb
	beq _0803195C
	ldr r1, _08031958 @ =0x0000FFFA
	str r1, [sp]
	b _08031984
	.align 2, 0
_08031958: .4byte 0x0000FFFA
_0803195C:
	ldrb r0, [r1, #0xe]
	cmp r0, #0x40
	blt _08031984
	cmp r0, #0x41
	ble _0803196C
	cmp r0, #0x42
	beq _08031974
	b _08031984
_0803196C:
	adds r0, r3, #0
	lsls r0, r2
	ldrh r1, [r4, #0xc]
	b _08031980
_08031974:
	adds r0, r3, #0
	lsls r0, r2
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	adds r1, r5, #0
	lsls r1, r2
_08031980:
	orrs r0, r1
	strh r0, [r4, #0xc]
_08031984:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	mov r7, ip
	ldrb r7, [r7]
	cmp r2, r7
	blo _08031904
_08031992:
	ldr r1, [sp]
	lsls r0, r1, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _080319DE
	movs r2, #0
	mov r7, ip
	ldrb r3, [r7]
	cmp r2, r3
	bhs _080319C6
	ldrh r1, [r4, #0xc]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080319C6
	movs r4, #0x10
_080319B2:
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, r3
	bhs _080319C6
	adds r0, r4, #0
	lsls r0, r2
	ands r0, r1
	cmp r0, #0
	bne _080319B2
_080319C6:
	mov r0, ip
	ldrb r0, [r0]
	cmp r2, r0
	bne _080319DC
	ldr r0, _080319D8 @ =sub_08031D00
	str r0, [r6]
	movs r0, #2
	b _080319DE
	.align 2, 0
_080319D8: .4byte sub_08031D00
_080319DC:
	movs r0, #1
_080319DE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080319F0
sub_080319F0: @ 0x080319F0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r3, _08031A4C @ =gUnk_020382A0
	ldr r1, _08031A50 @ =gMultiSioSend
	ldr r6, _08031A54 @ =gMultiSioRecv
	movs r2, #0
	movs r0, #2
	strb r0, [r1]
	ldrb r0, [r4, #0x1c]
	strb r0, [r1, #1]
	ldr r0, _08031A58 @ =0x00000123
	strh r0, [r1, #2]
	movs r0, #0x40
	strb r0, [r1, #0xe]
	strh r2, [r1, #0xc]
	ldr r5, _08031A5C @ =0x04000128
	ldrb r1, [r5]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08031A38
	ldr r0, _08031A60 @ =gMultiSioStatusFlags
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08031A38
	ldr r1, [r5]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08031A6C
_08031A38:
	ldrh r0, [r3, #6]
	ldr r1, _08031A64 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r3, #6]
	ldr r0, _08031A68 @ =sub_0803169C
	str r0, [r4]
	movs r0, #1
	rsbs r0, r0, #0
	b _08031A9C
	.align 2, 0
_08031A4C: .4byte gUnk_020382A0
_08031A50: .4byte gMultiSioSend
_08031A54: .4byte gMultiSioRecv
_08031A58: .4byte 0x00000123
_08031A5C: .4byte 0x04000128
_08031A60: .4byte gMultiSioStatusFlags
_08031A64: .4byte 0x0000FFFC
_08031A68: .4byte sub_0803169C
_08031A6C:
	ldrb r0, [r6]
	cmp r0, #2
	bne _08031A9A
	adds r0, r4, #0
	bl sub_080315B8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08031A9C
	ldrb r0, [r6, #0xe]
	cmp r0, #0x20
	bne _08031A9A
	ldrh r1, [r6, #0xc]
	ldr r0, [r5]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	asrs r1, r0
	ands r1, r7
	cmp r1, #0
	beq _08031A9A
	ldr r0, _08031AA4 @ =sub_08031AA8
	str r0, [r4]
_08031A9A:
	movs r0, #0
_08031A9C:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08031AA4: .4byte sub_08031AA8

	thumb_func_start sub_08031AA8
sub_08031AA8: @ 0x08031AA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	ldr r5, _08031B08 @ =gUnk_020382A0
	ldr r6, _08031B0C @ =gMultiSioSend
	ldr r7, _08031B10 @ =gMultiSioRecv
	movs r1, #0
	movs r0, #2
	strb r0, [r6]
	mov r2, r8
	ldrb r0, [r2, #0x1c]
	strb r0, [r6, #1]
	ldr r0, _08031B14 @ =0x00000123
	strh r0, [r6, #2]
	movs r0, #0x41
	strb r0, [r6, #0xe]
	strh r1, [r6, #0xc]
	ldr r3, _08031B18 @ =0x04000128
	ldrb r1, [r3]
	movs r0, #0x30
	ands r0, r1
	cmp r0, #0
	beq _08031AF4
	ldr r0, _08031B1C @ =gMultiSioStatusFlags
	ldr r2, [r0]
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	bne _08031AF4
	ldr r1, [r3]
	lsls r1, r1, #0x1a
	lsrs r1, r1, #0x1e
	movs r0, #1
	lsls r0, r1
	ands r0, r2
	cmp r0, #0
	bne _08031B28
_08031AF4:
	ldrh r0, [r5, #6]
	ldr r1, _08031B20 @ =0x0000FFFC
	ands r1, r0
	strh r1, [r5, #6]
	ldr r0, _08031B24 @ =sub_0803169C
	mov r1, r8
	str r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	b _08031B9C
	.align 2, 0
_08031B08: .4byte gUnk_020382A0
_08031B0C: .4byte gMultiSioSend
_08031B10: .4byte gMultiSioRecv
_08031B14: .4byte 0x00000123
_08031B18: .4byte 0x04000128
_08031B1C: .4byte gMultiSioStatusFlags
_08031B20: .4byte 0x0000FFFC
_08031B24: .4byte sub_0803169C
_08031B28:
	ldrb r0, [r7]
	cmp r0, #2
	beq _08031B34
	movs r0, #1
	rsbs r0, r0, #0
	b _08031B9C
_08031B34:
	mov r0, r8
	bl sub_080315B8
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0
	bne _08031B9C
	ldrb r0, [r7, #0xe]
	cmp r0, #0x22
	bne _08031B9A
	movs r4, #0
	adds r5, #8
_08031B4C:
	ldr r0, _08031B68 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r0, r4
	bne _08031B6C
	lsls r1, r4, #3
	adds r1, r1, r5
	adds r0, r6, #4
	movs r2, #4
	bl CpuSet
	b _08031B82
	.align 2, 0
_08031B68: .4byte 0x04000128
_08031B6C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #2
	ldr r1, _08031BA8 @ =gMultiSioRecv
	adds r7, r0, r1
	adds r0, r7, #4
	lsls r1, r4, #3
	adds r1, r1, r5
	movs r2, #4
	bl CpuSet
_08031B82:
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08031B4C
	ldr r0, _08031BAC @ =sub_08031BB0
	mov r2, r8
	str r0, [r2]
	movs r0, #2
	strh r0, [r2, #0x1a]
	movs r0, #0x42
	strb r0, [r6, #0xe]
_08031B9A:
	movs r0, #0
_08031B9C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08031BA8: .4byte gMultiSioRecv
_08031BAC: .4byte sub_08031BB0

	thumb_func_start sub_08031BB0
sub_08031BB0: @ 0x08031BB0
	push {lr}
	adds r1, r0, #0
	ldr r2, _08031BD4 @ =gMultiSioSend
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _08031BDC
	movs r0, #1
	str r0, [r1, #0xc]
	movs r0, #2
	strb r0, [r2]
	ldrb r0, [r1, #0x1c]
	strb r0, [r2, #1]
	ldr r0, _08031BD8 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x42
	strb r0, [r2, #0xe]
	movs r0, #2
	b _08031BF2
	.align 2, 0
_08031BD4: .4byte gMultiSioSend
_08031BD8: .4byte 0x00000123
_08031BDC:
	subs r0, #1
	strh r0, [r1, #0x1a]
	movs r0, #2
	strb r0, [r2]
	ldrb r0, [r1, #0x1c]
	strb r0, [r2, #1]
	ldr r0, _08031BF8 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x41
	strb r0, [r2, #0xe]
	movs r0, #0
_08031BF2:
	pop {r1}
	bx r1
	.align 2, 0
_08031BF8: .4byte 0x00000123

	thumb_func_start sub_08031BFC
sub_08031BFC: @ 0x08031BFC
	push {r4, lr}
	sub sp, #4
	ldr r0, _08031C28 @ =gUnk_02038580
	movs r4, #0
	str r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _08031C2C @ =gUnk_020382D0
	ldr r2, _08031C30 @ =0x01000158
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08031C34 @ =gUnk_020382A0
	ldr r2, _08031C38 @ =0x01000016
	bl CpuSet
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031C28: .4byte gUnk_02038580
_08031C2C: .4byte gUnk_020382D0
_08031C30: .4byte 0x01000158
_08031C34: .4byte gUnk_020382A0
_08031C38: .4byte 0x01000016

	thumb_func_start sub_08031C3C
sub_08031C3C: @ 0x08031C3C
	push {r4, lr}
	ldr r4, _08031C50 @ =gUnk_020382A0
	ldr r0, [r4]
	bl TaskDestroy
	movs r0, #0
	str r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08031C50: .4byte gUnk_020382A0

	thumb_func_start sub_08031C54
sub_08031C54: @ 0x08031C54
	ldr r2, _08031C60 @ =gUnk_020382A0
	ldrh r1, [r2, #6]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #6]
	bx lr
	.align 2, 0
_08031C60: .4byte gUnk_020382A0

	thumb_func_start sub_08031C64
sub_08031C64: @ 0x08031C64
	ldr r0, _08031C6C @ =gUnk_020382A0
	movs r1, #4
	ldrsh r0, [r0, r1]
	bx lr
	.align 2, 0
_08031C6C: .4byte gUnk_020382A0

	thumb_func_start sub_08031C70
sub_08031C70: @ 0x08031C70
	push {r4, r5, r6, lr}
	sub sp, #0xc
	adds r5, r0, #0
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	movs r6, #0
	str r6, [sp]
	ldr r1, _08031CB0 @ =gMultiSioRecv
	ldr r2, _08031CB4 @ =0x05000014
	mov r0, sp
	bl CpuSet
	str r6, [sp, #4]
	add r0, sp, #4
	ldr r1, _08031CB8 @ =gMultiSioSend
	ldr r2, _08031CBC @ =0x05000005
	bl CpuSet
	add r0, sp, #8
	strh r6, [r0]
	ldr r4, _08031CC0 @ =gUnk_020382D0
	ldr r2, _08031CC4 @ =0x01000158
	adds r1, r4, #0
	bl CpuSet
	strh r6, [r4, #4]
	strb r5, [r4, #6]
	add sp, #0xc
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031CB0: .4byte gMultiSioRecv
_08031CB4: .4byte 0x05000014
_08031CB8: .4byte gMultiSioSend
_08031CBC: .4byte 0x05000005
_08031CC0: .4byte gUnk_020382D0
_08031CC4: .4byte 0x01000158

	thumb_func_start sub_08031CC8
sub_08031CC8: @ 0x08031CC8
	ldr r1, _08031CD0 @ =gUnk_020382D0
	movs r0, #0
	strh r0, [r1, #4]
	bx lr
	.align 2, 0
_08031CD0: .4byte gUnk_020382D0

	thumb_func_start sub_08031CD4
sub_08031CD4: @ 0x08031CD4
	ldr r2, _08031CE0 @ =gUnk_020382D0
	ldrh r1, [r2, #4]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #4]
	bx lr
	.align 2, 0
_08031CE0: .4byte gUnk_020382D0

	thumb_func_start sub_08031CE4
sub_08031CE4: @ 0x08031CE4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _08031CF8 @ =gUnk_020382D0
	ldr r1, _08031CFC @ =0x000002AD
	adds r2, r2, r1
	ldrb r1, [r2]
	subs r1, r1, r0
	strb r1, [r2]
	bx lr
	.align 2, 0
_08031CF8: .4byte gUnk_020382D0
_08031CFC: .4byte 0x000002AD

	thumb_func_start sub_08031D00
sub_08031D00: @ 0x08031D00
	ldr r2, _08031D1C @ =gMultiSioSend
	movs r1, #1
	str r1, [r0, #0xc]
	movs r1, #2
	strb r1, [r2]
	ldrb r0, [r0, #0x1c]
	strb r0, [r2, #1]
	ldr r0, _08031D20 @ =0x00000123
	strh r0, [r2, #2]
	movs r0, #0x22
	strb r0, [r2, #0xe]
	movs r0, #2
	bx lr
	.align 2, 0
_08031D1C: .4byte gMultiSioSend
_08031D20: .4byte 0x00000123

	thumb_func_start sub_08031D24
sub_08031D24: @ 0x08031D24
	push {r4, r5, r6, lr}
	sub sp, #8
	bl sub_081589E8
	ldr r0, _08031D48 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08031D4C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r6, r0, r1
	b _08031D54
	.align 2, 0
_08031D48: .4byte gCurTask
_08031D4C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r6, r1, r0
_08031D54:
	movs r4, #0
	strh r4, [r6, #0x20]
	ldr r0, _08031DC4 @ =0x04000134
	strh r4, [r0]
	mov r0, sp
	strh r4, [r0]
	ldr r1, _08031DC8 @ =gMultiBootParam
	ldr r2, _08031DCC @ =0x01000026
	bl CpuSet
	mov r0, sp
	adds r0, #2
	strh r4, [r0]
	ldr r5, _08031DD0 @ =gMultiBootStruct
	ldr r2, _08031DD4 @ =0x01000016
	adds r1, r5, #0
	bl CpuSet
	add r0, sp, #4
	strh r4, [r0]
	ldr r1, _08031DD8 @ =gMultiBootDataRecv
	ldr r2, _08031DDC @ =0x01000004
	bl CpuSet
	ldr r1, _08031DE0 @ =gUnk_0300050C
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
	ldr r0, _08031DE4 @ =gUnk_03000480
	str r4, [r0]
	bl sub_0803024C
	movs r1, #0x80
	lsls r1, r1, #1
	movs r0, #0
	bl MultiBootInitWithParams
	ldrh r1, [r5, #6]
	adds r0, r6, #0
	adds r0, #0x54
	strh r1, [r0]
	ldrh r0, [r5, #8]
	adds r1, r6, #0
	adds r1, #0x56
	strh r0, [r1]
	adds r0, r6, #0
	adds r0, #0x58
	strh r4, [r0]
	ldr r0, _08031DE8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08031DEC @ =sub_08031DF0
	str r0, [r1, #8]
	add sp, #8
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031DC4: .4byte 0x04000134
_08031DC8: .4byte gMultiBootParam
_08031DCC: .4byte 0x01000026
_08031DD0: .4byte gMultiBootStruct
_08031DD4: .4byte 0x01000016
_08031DD8: .4byte gMultiBootDataRecv
_08031DDC: .4byte 0x01000004
_08031DE0: .4byte gUnk_0300050C
_08031DE4: .4byte gUnk_03000480
_08031DE8: .4byte gCurTask
_08031DEC: .4byte sub_08031DF0

	thumb_func_start sub_08031DF0
sub_08031DF0: @ 0x08031DF0
	push {r4, r5, r6, lr}
	ldr r0, _08031E0C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08031E10
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08031E18
	.align 2, 0
_08031E0C: .4byte gCurTask
_08031E10:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08031E18:
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r4, #0xe]
	ldrh r1, [r4, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08031E40
	bl sub_08030B38
	movs r0, #7
	strh r0, [r4, #0xe]
	ldr r0, _08031E38 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08031E3C @ =nullsub_118
	b _08031F9A
	.align 2, 0
_08031E38: .4byte gCurTask
_08031E3C: .4byte nullsub_118
_08031E40:
	movs r0, #1
	bl sub_08030C40
	ldr r2, _08031E7C @ =gMultiBootStruct
	ldrb r0, [r2, #1]
	cmp r0, #1
	bls _08031E94
	ldrb r0, [r2, #2]
	cmp r0, #3
	bne _08031E94
	ldr r0, _08031E80 @ =gUnk_0300050C
	ldr r0, [r0]
	cmp r0, #1
	bne _08031E94
	ldrb r0, [r2]
	strb r0, [r4, #0x10]
	ldrb r0, [r2, #1]
	strb r0, [r4, #0x11]
	ldr r1, _08031E84 @ =gUnk_0203AD3C
	ldrb r0, [r2]
	strb r0, [r1]
	ldr r1, _08031E88 @ =gUnk_0203AD30
	ldrb r0, [r2, #1]
	strb r0, [r1]
	bl sub_08030B38
	ldr r0, _08031E8C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08031E90 @ =sub_08032BEC
	b _08031F9A
	.align 2, 0
_08031E7C: .4byte gMultiBootStruct
_08031E80: .4byte gUnk_0300050C
_08031E84: .4byte gUnk_0203AD3C
_08031E88: .4byte gUnk_0203AD30
_08031E8C: .4byte gCurTask
_08031E90: .4byte sub_08032BEC
_08031E94:
	adds r5, r4, #0
	adds r5, #0x54
	ldr r0, _08031EC4 @ =gMultiBootStruct
	ldrh r2, [r0, #6]
	ldrh r1, [r5]
	adds r6, r0, #0
	adds r3, r4, #0
	adds r3, #0x56
	cmp r1, r2
	bne _08031EB0
	ldrh r1, [r6, #8]
	ldrh r0, [r3]
	cmp r0, r1
	beq _08031EC8
_08031EB0:
	ldrh r0, [r6, #6]
	movs r1, #0
	strh r0, [r5]
	ldrh r0, [r6, #8]
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x58
	strh r1, [r0]
	b _08031EE2
	.align 2, 0
_08031EC4: .4byte gMultiBootStruct
_08031EC8:
	adds r1, r4, #0
	adds r1, #0x58
	ldrh r0, [r1]
	cmp r0, #0xb4
	bls _08031EDE
	bl sub_08030B38
	movs r0, #0
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	b _08031F94
_08031EDE:
	adds r0, #1
	strh r0, [r1]
_08031EE2:
	adds r1, r6, #0
	ldrb r0, [r1, #3]
	movs r5, #1
	ands r5, r0
	cmp r5, #0
	beq _08031F08
	bl sub_08030B38
	movs r0, #8
	strh r0, [r4, #0xe]
	ldr r0, _08031F00 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08031F04 @ =nullsub_118
	b _08031F9A
	.align 2, 0
_08031F00: .4byte gCurTask
_08031F04: .4byte nullsub_118
_08031F08:
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _08031F8C
	ldrb r0, [r1]
	strb r0, [r4, #0x10]
	ldrb r0, [r1, #1]
	strb r0, [r4, #0x11]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08031F20
	strb r5, [r4, #0x11]
_08031F20:
	ldrb r0, [r6]
	ldr r2, _08031F54 @ =gUnk_0300050C
	cmp r0, #0
	bne _08031F66
	ldr r1, [r2]
	cmp r1, #1
	bne _08031F66
	ldrb r0, [r6, #2]
	cmp r0, #2
	bne _08031F62
	ldrh r0, [r4, #0x20]
	cmp r0, #0x5a
	bls _08031F5C
	strh r1, [r4, #0xe]
	ldrh r0, [r4, #0xc]
	ands r1, r0
	cmp r1, #0
	beq _08031F9C
	bl sub_08030C1C
	ldrh r1, [r4, #0xc]
	ldr r0, _08031F58 @ =0x0000FFFE
	ands r0, r1
	strh r0, [r4, #0xc]
	b _08031F9C
	.align 2, 0
_08031F54: .4byte gUnk_0300050C
_08031F58: .4byte 0x0000FFFE
_08031F5C:
	adds r0, #1
	strh r0, [r4, #0x20]
	b _08031F9C
_08031F62:
	strh r5, [r4, #0x20]
	b _08031F9C
_08031F66:
	ldr r0, [r2]
	cmp r0, #2
	bne _08031F9C
	movs r0, #0
	strb r0, [r4, #0x10]
	strb r0, [r4, #0x11]
	bl sub_08030B38
	movs r0, #8
	strh r0, [r4, #0xe]
	ldr r0, _08031F84 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08031F88 @ =nullsub_118
	b _08031F9A
	.align 2, 0
_08031F84: .4byte gCurTask
_08031F88: .4byte nullsub_118
_08031F8C:
	bl sub_08030B38
	strb r5, [r4, #0x10]
	strb r5, [r4, #0x11]
_08031F94:
	ldr r0, _08031FA4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08031FA8 @ =sub_08031D24
_08031F9A:
	str r0, [r1, #8]
_08031F9C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08031FA4: .4byte gCurTask
_08031FA8: .4byte sub_08031D24

	thumb_func_start sub_08031FAC
sub_08031FAC: @ 0x08031FAC
	push {lr}
	sub sp, #8
	ldr r0, _08031FCC @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08031FD0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08031FD8
	.align 2, 0
_08031FCC: .4byte gCurTask
_08031FD0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08031FD8:
	movs r0, #0
	strh r0, [r1, #0x20]
	mov r2, sp
	ldr r3, _08031FEC @ =gUnk_0203ACB0
	ldr r1, _08031FF0 @ =gUnk_0203AD48
	ldrh r0, [r1]
	cmp r0, #2
	bhi _08031FF4
	lsls r0, r0, #1
	b _08031FF6
	.align 2, 0
_08031FEC: .4byte gUnk_0203ACB0
_08031FF0: .4byte gUnk_0203AD48
_08031FF4:
	movs r0, #0
_08031FF6:
	adds r0, r3, r0
	ldrh r0, [r0]
	strh r0, [r2]
	mov r1, sp
	ldr r0, _08032018 @ =gUnk_0203ADE0
	ldrh r0, [r0]
	strb r0, [r1, #2]
	movs r0, #1
	bl sub_08030C94
	ldr r0, _0803201C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032020 @ =sub_08032024
	str r0, [r1, #8]
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08032018: .4byte gUnk_0203ADE0
_0803201C: .4byte gCurTask
_08032020: .4byte sub_08032024

	thumb_func_start sub_08032024
sub_08032024: @ 0x08032024
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r2, _08032044 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032048
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08032050
	.align 2, 0
_08032044: .4byte gCurTask
_08032048:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08032050:
	mov r8, r4
	ldrh r0, [r4, #0x1e]
	subs r0, #1
	movs r6, #0
	strh r0, [r4, #0x1e]
	lsls r0, r0, #0x10
	ldr r1, _08032068 @ =0xFFFF0000
	cmp r0, r1
	bne _0803206C
	ldr r0, [r2]
	b _0803210C
	.align 2, 0
_08032068: .4byte 0xFFFF0000
_0803206C:
	bl sub_08031C64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08032124
	ldr r5, _080320F0 @ =gUnk_0203AD30
	ldr r2, _080320F4 @ =gUnk_020382A0
	adds r1, r2, #0
	adds r1, #0x28
	ldrb r0, [r5]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08032108
	movs r3, #0
	ldrb r0, [r5]
	cmp r6, r0
	bhs _080320B6
	adds r4, #4
	adds r7, r2, #0
	adds r7, #8
	ldr r6, _080320F8 @ =gUnk_0203AD1C
_08032098:
	lsls r2, r3, #1
	adds r2, r4, r2
	lsls r1, r3, #3
	adds r1, r1, r7
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, r3, r6
	ldrb r0, [r1, #2]
	strb r0, [r2]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r5]
	cmp r3, r0
	blo _08032098
_080320B6:
	cmp r3, #3
	bhi _080320E2
	mov r2, r8
	adds r2, #4
	ldr r0, _080320FC @ =0x0000FFFF
	adds r6, r0, #0
	ldr r5, _080320F8 @ =gUnk_0203AD1C
	movs r4, #0xff
_080320C6:
	lsls r1, r3, #1
	adds r1, r2, r1
	ldrh r0, [r1]
	orrs r0, r6
	strh r0, [r1]
	adds r1, r3, r5
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #3
	bls _080320C6
_080320E2:
	bl sub_08031C3C
	ldr r0, _08032100 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032104 @ =sub_08032C3C
	str r0, [r1, #8]
	b _0803215A
	.align 2, 0
_080320F0: .4byte gUnk_0203AD30
_080320F4: .4byte gUnk_020382A0
_080320F8: .4byte gUnk_0203AD1C
_080320FC: .4byte 0x0000FFFF
_08032100: .4byte gCurTask
_08032104: .4byte sub_08032C3C
_08032108:
	ldr r0, _0803211C @ =gCurTask
	ldr r0, [r0]
_0803210C:
	bl TaskDestroy
	ldr r0, _08032120 @ =gUnk_02038580
	str r6, [r0]
	bl sub_08032E98
	b _0803215A
	.align 2, 0
_0803211C: .4byte gCurTask
_08032120: .4byte gUnk_02038580
_08032124:
	cmp r0, #1
	bne _0803213C
	ldrh r0, [r4, #0x20]
	adds r1, r0, #1
	strh r1, [r4, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0803215A
	bl sub_08031C54
	b _0803215A
_0803213C:
	cmp r0, #0
	bge _08032158
	bl sub_08031C3C
	ldr r0, _08032150 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032154 @ =sub_08031FAC
	str r0, [r1, #8]
	b _0803215A
	.align 2, 0
_08032150: .4byte gCurTask
_08032154: .4byte sub_08031FAC
_08032158:
	strh r6, [r4, #0x20]
_0803215A:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08032164
sub_08032164: @ 0x08032164
	push {r4, r5, r6, lr}
	ldr r0, _08032180 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032184
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0803218C
	.align 2, 0
_08032180: .4byte gCurTask
_08032184:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0803218C:
	movs r0, #0
	strh r0, [r1, #0x16]
	strh r0, [r1, #0x18]
	movs r2, #0
	adds r6, r1, #0
	adds r6, #0x22
	movs r3, #0
	adds r5, r1, #0
	adds r5, #0x2a
	adds r4, r1, #0
	adds r4, #0x32
_080321A2:
	lsls r1, r2, #1
	adds r0, r6, r1
	strh r3, [r0]
	adds r0, r5, r1
	strh r3, [r0]
	adds r1, r4, r1
	strh r3, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #3
	bls _080321A2
	movs r0, #2
	bl sub_08031C70
	bl sub_08031CD4
	ldr r0, _080321D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080321D8 @ =sub_08032DA4
	str r0, [r1, #8]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080321D4: .4byte gCurTask
_080321D8: .4byte sub_08032DA4

	thumb_func_start sub_080321DC
sub_080321DC: @ 0x080321DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r0, #0
	str r0, [sp]
	movs r7, #0
	ldr r2, _08032208 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803220C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08032214
	.align 2, 0
_08032208: .4byte gCurTask
_0803220C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08032214:
	mov ip, r0
	movs r6, #0
	ldr r1, _080322AC @ =gUnk_0203AD30
	mov r8, r1
	mov sl, r8
	ldrb r2, [r1]
	cmp r6, r2
	bhs _08032266
	ldr r0, _080322B0 @ =gUnk_020382D8
	mov sb, r0
_08032228:
	lsls r4, r6, #1
	mov r3, ip
	adds r3, #0x22
	adds r3, r3, r4
	ldrh r5, [r3]
	mov r1, sb
	adds r0, r4, r1
	ldrh r1, [r0]
	strh r1, [r3]
	mov r2, ip
	adds r2, #0x2a
	adds r2, r2, r4
	adds r0, r5, #0
	eors r0, r1
	ands r0, r1
	strh r0, [r2]
	mov r1, ip
	adds r1, #0x32
	adds r1, r1, r4
	ldrh r0, [r3]
	bics r5, r0
	strh r5, [r1]
	ldrh r0, [r2]
	orrs r7, r0
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	mov r2, r8
	ldrb r2, [r2]
	cmp r6, r2
	blo _08032228
_08032266:
	movs r0, #0x40
	ands r0, r7
	cmp r0, #0
	beq _0803227A
	mov r1, ip
	ldrh r0, [r1, #0x18]
	cmp r0, #0
	beq _0803227A
	subs r0, #1
	strh r0, [r1, #0x18]
_0803227A:
	movs r0, #0x80
	ands r0, r7
	cmp r0, #0
	beq _08032294
	mov r2, sl
	ldrb r0, [r2]
	subs r0, #1
	mov r2, ip
	ldrh r1, [r2, #0x18]
	cmp r0, r1
	ble _08032294
	adds r0, r1, #1
	strh r0, [r2, #0x18]
_08032294:
	mov r1, ip
	ldrh r0, [r1, #0x16]
	cmp r0, #0x3c
	bls _080322B4
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _080322BA
	movs r2, #1
	str r2, [sp]
	b _080322BA
	.align 2, 0
_080322AC: .4byte gUnk_0203AD30
_080322B0: .4byte gUnk_020382D8
_080322B4:
	adds r0, #1
	mov r1, ip
	strh r0, [r1, #0x16]
_080322BA:
	mov r2, ip
	ldrh r0, [r2, #0x18]
	strb r0, [r2, #0x12]
	ldr r0, [sp]
	cmp r0, #0
	beq _080322CE
	ldr r2, _080322E0 @ =gCurTask
	ldr r1, [r2]
	ldr r0, _080322E4 @ =sub_08032C50
	str r0, [r1, #8]
_080322CE:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080322E0: .4byte gCurTask
_080322E4: .4byte sub_08032C50

	thumb_func_start sub_080322E8
sub_080322E8: @ 0x080322E8
	push {r4, lr}
	ldr r0, _08032304 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032308
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032310
	.align 2, 0
_08032304: .4byte gCurTask
_08032308:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032310:
	ldrh r0, [r2, #0x16]
	adds r1, r0, #1
	strh r1, [r2, #0x16]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _0803233A
	ldr r4, _08032340 @ =gMultiSioSend
	bl sub_08031CC8
	movs r1, #0
	movs r0, #3
	strb r0, [r4]
	movs r0, #2
	strb r0, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	ldr r0, _08032344 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032348 @ =sub_0803234C
	str r0, [r1, #8]
_0803233A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032340: .4byte gMultiSioSend
_08032344: .4byte gCurTask
_08032348: .4byte sub_0803234C

	thumb_func_start sub_0803234C
sub_0803234C: @ 0x0803234C
	push {r4, r5, lr}
	ldr r0, _08032368 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803236C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08032374
	.align 2, 0
_08032368: .4byte gCurTask
_0803236C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08032374:
	adds r5, r0, #0
	ldr r4, _080323B8 @ =gUnk_0203AD48
	ldrh r0, [r4]
	movs r1, #0
	cmp r0, #2
	bhi _08032382
	adds r1, r0, #0
_08032382:
	movs r0, #1
	bl sub_0800A91C
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080323A4
	movs r0, #1
	bl sub_0800AC00
	ldrh r0, [r4]
	movs r1, #0
	cmp r0, #2
	bhi _0803239E
	adds r1, r0, #0
_0803239E:
	movs r0, #1
	bl sub_0800ACD4
_080323A4:
	ldr r0, _080323BC @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldrh r1, [r5, #0x18]
	cmp r0, r1
	bne _080323C0
	movs r0, #0x20
	b _080323C2
	.align 2, 0
_080323B8: .4byte gUnk_0203AD48
_080323BC: .4byte 0x04000128
_080323C0:
	movs r0, #8
_080323C2:
	strh r0, [r5, #0x16]
	ldr r0, _080323D4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080323D8 @ =sub_080323DC
	str r0, [r1, #8]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080323D4: .4byte gCurTask
_080323D8: .4byte sub_080323DC

	thumb_func_start sub_080323DC
sub_080323DC: @ 0x080323DC
	push {r4, lr}
	ldr r2, _080323FC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08032400
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032408
	.align 2, 0
_080323FC: .4byte gCurTask
_08032400:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032408:
	ldrh r0, [r2, #0x16]
	subs r0, #1
	strh r0, [r2, #0x16]
	lsls r0, r0, #0x10
	ldr r1, _0803242C @ =0xFFFF0000
	cmp r0, r1
	bne _0803243E
	ldr r0, _08032430 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	ldrh r2, [r2, #0x18]
	cmp r0, r2
	bne _08032438
	ldr r1, [r4]
	ldr r0, _08032434 @ =sub_08032448
	b _0803243C
	.align 2, 0
_0803242C: .4byte 0xFFFF0000
_08032430: .4byte 0x04000128
_08032434: .4byte sub_08032448
_08032438:
	ldr r1, [r4]
	ldr r0, _08032444 @ =sub_0803264C
_0803243C:
	str r0, [r1, #8]
_0803243E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032444: .4byte sub_0803264C

	thumb_func_start sub_08032448
sub_08032448: @ 0x08032448
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _08032468 @ =gMultiSioSend
	ldr r0, _0803246C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032470
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08032478
	.align 2, 0
_08032468: .4byte gMultiSioSend
_0803246C: .4byte gCurTask
_08032470:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08032478:
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x1c]
	strh r0, [r1, #0x1e]
	str r0, [r1, #0x50]
	mov r1, sp
	strh r0, [r1]
	ldr r2, _080324B0 @ =0x0100000A
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #3
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #1]
	strb r4, [r5, #2]
	strb r4, [r5, #3]
	ldr r0, _080324B4 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080324B8 @ =sub_080324BC
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080324B0: .4byte 0x0100000A
_080324B4: .4byte gCurTask
_080324B8: .4byte sub_080324BC

	thumb_func_start sub_080324BC
sub_080324BC: @ 0x080324BC
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _080324E4 @ =gMultiSioSend
	mov r8, r0
	ldr r2, _080324E8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080324EC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080324F4
	.align 2, 0
_080324E4: .4byte gMultiSioSend
_080324E8: .4byte gCurTask
_080324EC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080324F4:
	adds r4, r0, #0
	mov r1, r8
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08032502
	movs r0, #1
	strb r0, [r1, #2]
_08032502:
	movs r3, #0
	ldr r0, _080325D0 @ =gUnk_0203AD30
	adds r5, r0, #0
	ldrb r6, [r5]
	cmp r3, r6
	bhs _08032556
	ldr r0, _080325D4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _08032528
	ldr r1, _080325D8 @ =gMultiSioRecv
	mov r6, r8
	ldrb r0, [r6, #2]
	adds r0, #1
	ldrb r1, [r1, #2]
	cmp r0, r1
	bne _08032556
_08032528:
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldrb r0, [r5]
	cmp r3, r0
	bhs _08032556
	ldr r0, _080325D4 @ =0x04000128
	ldr r0, [r0]
	lsls r0, r0, #0x1a
	lsrs r0, r0, #0x1e
	cmp r3, r0
	beq _08032528
	lsls r0, r3, #2
	adds r0, r0, r3
	lsls r0, r0, #2
	ldr r1, _080325D8 @ =gMultiSioRecv
	adds r0, r0, r1
	mov r6, r8
	ldrb r1, [r6, #2]
	adds r1, #1
	ldrb r0, [r0, #2]
	cmp r1, r0
	beq _08032528
_08032556:
	ldrb r5, [r5]
	cmp r3, r5
	bne _080325E0
	movs r5, #0
	ldrh r3, [r4, #0x1c]
	ldr r6, _080325DC @ =gUnk_082D91FC
	ldrh r2, [r4, #0x1a]
	lsls r0, r2, #3
	adds r1, r6, #4
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r3
	adds r7, r2, #0
	cmp r3, r0
	bhs _080325A4
	mov sb, r6
	adds r6, r1, #0
_08032578:
	lsls r0, r2, #3
	add r0, sb
	ldr r0, [r0]
	adds r1, r3, r5
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x50]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bhi _080325A4
	mov r3, ip
	adds r0, r3, r5
	adds r2, r7, #0
	lsls r1, r2, #3
	adds r1, r1, r6
	ldr r1, [r1]
	cmp r0, r1
	blo _08032578
_080325A4:
	movs r5, #0
	strh r5, [r4, #0x1e]
	mov r1, r8
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldrh r0, [r4, #0x1c]
	adds r0, #0x10
	strh r0, [r4, #0x1c]
	ldrh r2, [r4, #0x1c]
	ldr r1, _080325DC @ =gUnk_082D91FC
	ldrh r3, [r4, #0x1a]
	lsls r0, r3, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blo _08032604
	adds r0, r3, #1
	strh r0, [r4, #0x1a]
	strh r5, [r4, #0x1c]
	b _08032604
	.align 2, 0
_080325D0: .4byte gUnk_0203AD30
_080325D4: .4byte 0x04000128
_080325D8: .4byte gMultiSioRecv
_080325DC: .4byte gUnk_082D91FC
_080325E0:
	ldrh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _08032604
	ldr r0, [r2]
	bl TaskDestroy
	ldr r1, _08032600 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
	b _08032632
	.align 2, 0
_08032600: .4byte gUnk_02038580
_08032604:
	ldr r1, _08032640 @ =gUnk_082D91FC
	ldrh r0, [r4, #0x1a]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldrh r1, [r4, #0x1c]
	ldr r0, [r0]
	adds r0, r0, r1
	mov r1, r8
	adds r1, #4
	movs r2, #8
	bl CpuSet
	bl sub_0800ABFC
	ldrh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _08032632
	ldr r0, _08032644 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032648 @ =sub_08032CA8
	str r0, [r1, #8]
_08032632:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032640: .4byte gUnk_082D91FC
_08032644: .4byte gCurTask
_08032648: .4byte sub_08032CA8

	thumb_func_start sub_0803264C
sub_0803264C: @ 0x0803264C
	push {r4, r5, lr}
	sub sp, #4
	ldr r5, _0803266C @ =gMultiSioSend
	ldr r0, _08032670 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032674
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _0803267C
	.align 2, 0
_0803266C: .4byte gMultiSioSend
_08032670: .4byte gCurTask
_08032674:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_0803267C:
	movs r4, #0
	movs r0, #0
	strh r0, [r1, #0x1a]
	strh r0, [r1, #0x1c]
	strh r0, [r1, #0x1e]
	str r0, [r1, #0x50]
	mov r1, sp
	strh r0, [r1]
	ldr r2, _080326B4 @ =0x0100000A
	mov r0, sp
	adds r1, r5, #0
	bl CpuSet
	movs r0, #3
	strb r0, [r5]
	movs r0, #2
	strb r0, [r5, #1]
	movs r0, #1
	strb r0, [r5, #2]
	strb r4, [r5, #3]
	ldr r0, _080326B8 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080326BC @ =sub_080326C0
	str r0, [r1, #8]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080326B4: .4byte 0x0100000A
_080326B8: .4byte gCurTask
_080326BC: .4byte sub_080326C0

	thumb_func_start sub_080326C0
sub_080326C0: @ 0x080326C0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	ldr r0, _080326E4 @ =gMultiSioSend
	mov r8, r0
	ldr r2, _080326E8 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080326EC
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080326F4
	.align 2, 0
_080326E4: .4byte gMultiSioSend
_080326E8: .4byte gCurTask
_080326EC:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080326F4:
	adds r4, r0, #0
	ldrh r0, [r4, #0x18]
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r0, _08032728 @ =gMultiSioRecv
	adds r1, r1, r0
	mov ip, r1
	ldrb r5, [r1, #2]
	cmp r5, #0
	bne _08032730
	ldrh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x40
	bls _08032802
	ldr r0, [r2]
	bl TaskDestroy
	ldr r0, _0803272C @ =gUnk_02038580
	str r5, [r0]
	bl sub_08032E98
	b _08032802
	.align 2, 0
_08032728: .4byte gMultiSioRecv
_0803272C: .4byte gUnk_02038580
_08032730:
	mov r1, r8
	ldrb r1, [r1, #2]
	cmp r5, r1
	beq _0803275C
	ldrh r0, [r4, #0x1e]
	adds r1, r0, #1
	strh r1, [r4, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #0x10
	bls _08032802
	ldr r0, [r2]
	bl TaskDestroy
	ldr r1, _08032758 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
	b _08032802
	.align 2, 0
_08032758: .4byte gUnk_02038580
_0803275C:
	movs r0, #0
	strh r0, [r4, #0x1e]
	ldr r7, _0803280C @ =gUnk_082D91FC
	ldrh r0, [r4, #0x1a]
	lsls r1, r0, #3
	adds r6, r7, #4
	adds r0, r1, r6
	ldrh r3, [r4, #0x1c]
	ldr r0, [r0]
	subs r2, r0, r3
	cmp r2, #0x10
	bls _08032776
	movs r2, #0x10
_08032776:
	mov r0, ip
	adds r0, #4
	adds r1, r1, r7
	ldr r1, [r1]
	adds r1, r1, r3
	lsls r2, r2, #0xa
	lsrs r2, r2, #0xb
	bl CpuSet
	movs r5, #0
	ldrh r3, [r4, #0x1c]
	ldrh r2, [r4, #0x1a]
	lsls r0, r2, #3
	adds r0, r0, r6
	ldr r0, [r0]
	cmp r3, r0
	bhs _080327C4
_08032798:
	lsls r0, r2, #3
	adds r0, r0, r7
	ldr r0, [r0]
	adds r1, r3, r5
	adds r0, r0, r1
	ldrb r1, [r0]
	ldr r0, [r4, #0x50]
	adds r0, r0, r1
	str r0, [r4, #0x50]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #0xf
	bhi _080327C4
	ldrh r3, [r4, #0x1c]
	adds r0, r3, r5
	ldrh r2, [r4, #0x1a]
	lsls r1, r2, #3
	adds r1, r1, r6
	ldr r1, [r1]
	cmp r0, r1
	blo _08032798
_080327C4:
	mov r1, r8
	ldrb r0, [r1, #2]
	adds r0, #1
	strb r0, [r1, #2]
	ldrh r0, [r4, #0x1c]
	adds r0, #0x10
	strh r0, [r4, #0x1c]
	ldrh r2, [r4, #0x1c]
	ldr r1, _0803280C @ =gUnk_082D91FC
	ldrh r3, [r4, #0x1a]
	lsls r0, r3, #3
	adds r1, #4
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r2, r0
	blo _080327EC
	adds r0, r3, #1
	strh r0, [r4, #0x1a]
	movs r0, #0
	strh r0, [r4, #0x1c]
_080327EC:
	bl sub_0800ABFC
	ldrh r1, [r4, #0x1a]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	blo _08032802
	ldr r0, _08032810 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032814 @ =sub_08032CA8
	str r0, [r1, #8]
_08032802:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0803280C: .4byte gUnk_082D91FC
_08032810: .4byte gCurTask
_08032814: .4byte sub_08032CA8

	thumb_func_start sub_08032818
sub_08032818: @ 0x08032818
	push {lr}
	sub sp, #8
	ldr r0, _08032838 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0803283C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08032844
	.align 2, 0
_08032838: .4byte gCurTask
_0803283C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08032844:
	movs r0, #0
	strh r0, [r3, #0x20]
	ldr r2, _08032874 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _08032878 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _0803287C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	str r0, [sp]
	mov r1, sp
	ldr r0, [r3, #0x50]
	strh r0, [r1, #4]
	movs r0, #1
	bl sub_08030C94
	ldr r0, _08032880 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032884 @ =sub_08032888
	str r0, [r1, #8]
	add sp, #8
	pop {r0}
	bx r0
	.align 2, 0
_08032874: .4byte gRngVal
_08032878: .4byte 0x00196225
_0803287C: .4byte 0x3C6EF35F
_08032880: .4byte gCurTask
_08032884: .4byte sub_08032888

	thumb_func_start sub_08032888
sub_08032888: @ 0x08032888
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r2, _080328AC @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080328B0
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080328B8
	.align 2, 0
_080328AC: .4byte gCurTask
_080328B0:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080328B8:
	ldrh r0, [r4, #0x1e]
	subs r0, #1
	movs r1, #0
	mov r8, r1
	strh r0, [r4, #0x1e]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r5, _080328D0 @ =0x0000FFFF
	cmp r0, r5
	bne _080328D4
	ldr r0, [r2]
	b _0803296C
	.align 2, 0
_080328D0: .4byte 0x0000FFFF
_080328D4:
	bl sub_08031C64
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #2
	bne _08032984
	ldr r6, _08032944 @ =gUnk_0203AD30
	ldr r0, _08032948 @ =gUnk_020382A0
	mov sb, r0
	mov r1, sb
	adds r1, #0x28
	ldrb r0, [r6]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08032968
	bl sub_08031C3C
	adds r7, r5, #0
	movs r5, #0
	movs r3, #0
	ldrb r1, [r6]
	cmp r8, r1
	bhs _0803292A
	adds r4, #0x40
	mov r8, r6
	mov r6, sb
	adds r6, #8
_0803290A:
	lsls r2, r3, #2
	adds r2, r4, r2
	lsls r1, r3, #3
	adds r1, r1, r6
	ldr r0, [r1]
	str r0, [r2]
	ldrh r0, [r1, #4]
	ands r7, r0
	orrs r5, r0
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	blo _0803290A
_0803292A:
	cmp r7, r5
	beq _08032954
	ldr r0, _0803294C @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	ldr r1, _08032950 @ =gUnk_02038580
	movs r0, #0
	str r0, [r1]
	bl sub_08032E98
	b _080329BC
	.align 2, 0
_08032944: .4byte gUnk_0203AD30
_08032948: .4byte gUnk_020382A0
_0803294C: .4byte gCurTask
_08032950: .4byte gUnk_02038580
_08032954:
	ldr r0, _08032960 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032964 @ =sub_08032CE8
	str r0, [r1, #8]
	b _080329BC
	.align 2, 0
_08032960: .4byte gCurTask
_08032964: .4byte sub_08032CE8
_08032968:
	ldr r0, _0803297C @ =gCurTask
	ldr r0, [r0]
_0803296C:
	bl TaskDestroy
	ldr r0, _08032980 @ =gUnk_02038580
	mov r1, r8
	str r1, [r0]
	bl sub_08032E98
	b _080329BC
	.align 2, 0
_0803297C: .4byte gCurTask
_08032980: .4byte gUnk_02038580
_08032984:
	cmp r0, #1
	bne _0803299C
	ldrh r0, [r4, #0x20]
	adds r1, r0, #1
	strh r1, [r4, #0x20]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _080329BC
	bl sub_08031C54
	b _080329BC
_0803299C:
	cmp r0, #0
	bge _080329B8
	bl sub_08031C3C
	ldr r0, _080329B0 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _080329B4 @ =sub_08032818
	str r0, [r1, #8]
	b _080329BC
	.align 2, 0
_080329B0: .4byte gCurTask
_080329B4: .4byte sub_08032818
_080329B8:
	mov r0, r8
	strh r0, [r4, #0x20]
_080329BC:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080329C8
sub_080329C8: @ 0x080329C8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r0, _080329E8 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080329EC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080329F4
	.align 2, 0
_080329E8: .4byte gCurTask
_080329EC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080329F4:
	adds r5, r0, #0
	movs r0, #0
	strh r0, [r5, #0x16]
	movs r4, #0
	add r6, sp, #0xc
	add r7, sp, #0x1c
_08032A00:
	lsls r0, r4, #1
	mov r1, sp
	adds r1, r1, r0
	adds r1, #4
	lsls r2, r4, #2
	adds r2, r6, r2
	lsls r3, r4, #3
	adds r3, r7, r3
	adds r0, r4, #0
	bl sub_08002C98
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #3
	bls _08032A00
	ldr r2, _08032A68 @ =gRngVal
	ldrh r1, [r5, #0x18]
	lsls r1, r1, #2
	adds r0, r5, #0
	adds r0, #0x40
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	movs r0, #1
	bl sub_08031C70
	bl sub_08031CD4
	ldr r1, _08032A6C @ =gUnk_0203AD24
	ldrh r0, [r5, #0x18]
	strb r0, [r1]
	ldr r1, _08032A70 @ =gUnk_0203AD10
	movs r0, #2
	str r0, [r1]
	ldr r0, _08032A74 @ =gUnk_0203AD30
	ldrb r0, [r0]
	str r6, [sp]
	movs r1, #0
	add r2, sp, #4
	adds r3, r7, #0
	bl sub_080332BC
	ldr r0, _08032A78 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032A7C @ =sub_08032A80
	str r0, [r1, #8]
	add sp, #0x3c
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08032A68: .4byte gRngVal
_08032A6C: .4byte gUnk_0203AD24
_08032A70: .4byte gUnk_0203AD10
_08032A74: .4byte gUnk_0203AD30
_08032A78: .4byte gCurTask
_08032A7C: .4byte sub_08032A80

	thumb_func_start sub_08032A80
sub_08032A80: @ 0x08032A80
	push {r4, lr}
	ldr r0, _08032A9C @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032AA0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08032AA8
	.align 2, 0
_08032A9C: .4byte gCurTask
_08032AA0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08032AA8:
	ldrh r0, [r3, #0x14]
	adds r0, #1
	strh r0, [r3, #0x14]
	ldr r4, _08032AEC @ =gUnk_03002440
	ldr r2, [r4]
	movs r0, #0x80
	lsls r0, r0, #3
	orrs r2, r0
	str r2, [r4]
	ldrh r0, [r3, #0x16]
	adds r1, r0, #1
	strh r1, [r3, #0x16]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08032B00
	movs r0, #0
	strh r0, [r3, #0x16]
	ldr r0, _08032AF0 @ =0xFFFFFBFF
	ands r2, r0
	str r2, [r4]
	movs r0, #1
	bl sub_08030D4C
	cmp r0, #0
	bne _08032AF8
	ldr r0, _08032AF4 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
	bl sub_08032E98
	b _08032B00
	.align 2, 0
_08032AEC: .4byte gUnk_03002440
_08032AF0: .4byte 0xFFFFFBFF
_08032AF4: .4byte gCurTask
_08032AF8:
	ldr r0, _08032B08 @ =gCurTask
	ldr r0, [r0]
	bl TaskDestroy
_08032B00:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032B08: .4byte gCurTask

	thumb_func_start sub_08032B0C
sub_08032B0C: @ 0x08032B0C
	push {r4, r5, lr}
	sub sp, #8
	ldr r0, _08032B38 @ =sub_08031D24
	ldr r2, _08032B3C @ =0x0000FFFE
	movs r1, #0
	str r1, [sp]
	movs r1, #0x5c
	movs r3, #4
	bl TaskCreate
	adds r5, r0, #0
	ldrh r1, [r5, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032B40
	ldrh r0, [r5, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08032B48
	.align 2, 0
_08032B38: .4byte sub_08031D24
_08032B3C: .4byte 0x0000FFFE
_08032B40:
	ldrh r1, [r5, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08032B48:
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r2, _08032B78 @ =0x0100002E
	adds r0, r1, #0
	adds r1, r4, #0
	bl CpuSet
	mov r0, sp
	adds r0, #6
	ldr r2, _08032B7C @ =0x0000FFFF
	adds r1, r2, #0
	strh r1, [r0]
	adds r1, r4, #4
	ldr r2, _08032B80 @ =0x01000004
	bl CpuSet
	str r5, [r4]
	adds r0, r4, #0
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08032B78: .4byte 0x0100002E
_08032B7C: .4byte 0x0000FFFF
_08032B80: .4byte 0x01000004

	thumb_func_start sub_08032B84
sub_08032B84: @ 0x08032B84
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #0xe]
	subs r0, #7
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bls _08032B98
	movs r0, #0
	b _08032BA0
_08032B98:
	ldr r0, [r1]
	bl TaskDestroy
	movs r0, #1
_08032BA0:
	pop {r1}
	bx r1

	thumb_func_start sub_08032BA4
sub_08032BA4: @ 0x08032BA4
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xe]
	cmp r0, #1
	bne _08032BB6
	ldrh r1, [r2, #0xc]
	movs r0, #1
	orrs r0, r1
	strh r0, [r2, #0xc]
_08032BB6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032BBC
sub_08032BBC: @ 0x08032BBC
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xe]
	cmp r0, #1
	bhi _08032BCE
	ldrh r1, [r2, #0xc]
	movs r0, #2
	orrs r0, r1
	strh r0, [r2, #0xc]
_08032BCE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032BD4
sub_08032BD4: @ 0x08032BD4
	push {lr}
	adds r2, r0, #0
	ldrh r0, [r2, #0xe]
	cmp r0, #5
	bne _08032BE6
	ldrh r1, [r2, #0xc]
	movs r0, #4
	orrs r0, r1
	strh r0, [r2, #0xc]
_08032BE6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08032BEC
sub_08032BEC: @ 0x08032BEC
	push {r4, lr}
	ldr r0, _08032C08 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032C0C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08032C14
	.align 2, 0
_08032C08: .4byte gCurTask
_08032C0C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08032C14:
	bl sub_08158934
	movs r0, #8
	strh r0, [r4, #0x16]
	movs r0, #0x3c
	strh r0, [r4, #0x1e]
	movs r0, #2
	strh r0, [r4, #0xe]
	ldr r0, _08032C34 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032C38 @ =sub_08032D3C
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032C34: .4byte gCurTask
_08032C38: .4byte sub_08032D3C

	thumb_func_start sub_08032C3C
sub_08032C3C: @ 0x08032C3C
	ldr r0, _08032C48 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032C4C @ =sub_08032D90
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08032C48: .4byte gCurTask
_08032C4C: .4byte sub_08032D90

	thumb_func_start sub_08032C50
sub_08032C50: @ 0x08032C50
	push {r4, lr}
	ldr r2, _08032C70 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08032C74
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r3, r0, r1
	b _08032C7C
	.align 2, 0
_08032C70: .4byte gCurTask
_08032C74:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r3, r1, r0
_08032C7C:
	movs r0, #0
	strh r0, [r3, #0x16]
	ldr r2, _08032C9C @ =gUnk_020382D0
	ldrh r1, [r2, #4]
	ldr r0, _08032CA0 @ =0x0000FFFD
	ands r0, r1
	strh r0, [r2, #4]
	movs r0, #4
	strh r0, [r3, #0xe]
	ldr r1, [r4]
	ldr r0, _08032CA4 @ =sub_080322E8
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032C9C: .4byte gUnk_020382D0
_08032CA0: .4byte 0x0000FFFD
_08032CA4: .4byte sub_080322E8

	thumb_func_start sub_08032CA8
sub_08032CA8: @ 0x08032CA8
	push {lr}
	ldr r2, _08032CC4 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032CC8
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08032CD0
	.align 2, 0
_08032CC4: .4byte gCurTask
_08032CC8:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08032CD0:
	movs r0, #8
	strh r0, [r1, #0x16]
	movs r0, #0x3c
	strh r0, [r1, #0x1e]
	ldr r1, [r2]
	ldr r0, _08032CE4 @ =sub_08032E08
	str r0, [r1, #8]
	pop {r0}
	bx r0
	.align 2, 0
_08032CE4: .4byte sub_08032E08

	thumb_func_start sub_08032CE8
sub_08032CE8: @ 0x08032CE8
	push {r4, lr}
	ldr r2, _08032D08 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08032D0C
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032D14
	.align 2, 0
_08032D08: .4byte gCurTask
_08032D0C:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032D14:
	movs r0, #5
	strh r0, [r2, #0xe]
	ldrh r1, [r2, #0xc]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08032D2C
	movs r0, #6
	strh r0, [r2, #0xe]
	ldr r1, [r4]
	ldr r0, _08032D34 @ =sub_080329C8
	str r0, [r1, #8]
_08032D2C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032D34: .4byte sub_080329C8

	thumb_func_start nullsub_118
nullsub_118: @ 0x08032D38
	bx lr
	.align 2, 0

	thumb_func_start sub_08032D3C
sub_08032D3C: @ 0x08032D3C
	push {lr}
	ldr r0, _08032D58 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032D5C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08032D64
	.align 2, 0
_08032D58: .4byte gCurTask
_08032D5C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08032D64:
	ldrh r0, [r1, #0x16]
	subs r0, #1
	strh r0, [r1, #0x16]
	lsls r0, r0, #0x10
	ldr r1, _08032D84 @ =0xFFFF0000
	cmp r0, r1
	bne _08032D7E
	bl sub_0815898C
	ldr r0, _08032D88 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032D8C @ =sub_08031FAC
	str r0, [r1, #8]
_08032D7E:
	pop {r0}
	bx r0
	.align 2, 0
_08032D84: .4byte 0xFFFF0000
_08032D88: .4byte gCurTask
_08032D8C: .4byte sub_08031FAC

	thumb_func_start sub_08032D90
sub_08032D90: @ 0x08032D90
	ldr r0, _08032D9C @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032DA0 @ =sub_08032164
	str r0, [r1, #8]
	bx lr
	.align 2, 0
_08032D9C: .4byte gCurTask
_08032DA0: .4byte sub_08032164

	thumb_func_start sub_08032DA4
sub_08032DA4: @ 0x08032DA4
	push {lr}
	ldr r0, _08032DC0 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032DC4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032DCC
	.align 2, 0
_08032DC0: .4byte gCurTask
_08032DC4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032DCC:
	ldrh r0, [r2, #0x14]
	adds r0, #1
	strh r0, [r2, #0x14]
	ldrh r0, [r2, #0x16]
	adds r1, r0, #1
	strh r1, [r2, #0x16]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #8
	bls _08032DFA
	movs r0, #0
	strh r0, [r2, #0x16]
	bl sub_08030D4C
	cmp r0, #0
	bne _08032DF2
	bl sub_08032E98
	b _08032DFA
_08032DF2:
	ldr r0, _08032E00 @ =gCurTask
	ldr r1, [r0]
	ldr r0, _08032E04 @ =sub_08032E50
	str r0, [r1, #8]
_08032DFA:
	pop {r0}
	bx r0
	.align 2, 0
_08032E00: .4byte gCurTask
_08032E04: .4byte sub_08032E50

	thumb_func_start sub_08032E08
sub_08032E08: @ 0x08032E08
	push {lr}
	ldr r2, _08032E24 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032E28
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r1, r0, r1
	b _08032E30
	.align 2, 0
_08032E24: .4byte gCurTask
_08032E28:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r1, r1, r0
_08032E30:
	ldrh r0, [r1, #0x16]
	subs r0, #1
	strh r0, [r1, #0x16]
	lsls r0, r0, #0x10
	ldr r1, _08032E48 @ =0xFFFF0000
	cmp r0, r1
	bne _08032E44
	ldr r1, [r2]
	ldr r0, _08032E4C @ =sub_08032818
	str r0, [r1, #8]
_08032E44:
	pop {r0}
	bx r0
	.align 2, 0
_08032E48: .4byte 0xFFFF0000
_08032E4C: .4byte sub_08032818

	thumb_func_start sub_08032E50
sub_08032E50: @ 0x08032E50
	push {r4, lr}
	ldr r2, _08032E70 @ =gCurTask
	ldr r3, [r2]
	ldrh r1, [r3, #0x12]
	movs r0, #0x10
	ands r0, r1
	adds r4, r2, #0
	cmp r0, #0
	beq _08032E74
	ldrh r0, [r3, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032E7C
	.align 2, 0
_08032E70: .4byte gCurTask
_08032E74:
	ldrh r1, [r3, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032E7C:
	movs r1, #0
	strb r1, [r2, #0x12]
	movs r0, #3
	strh r0, [r2, #0xe]
	strh r1, [r2, #0x16]
	ldr r1, [r4]
	ldr r0, _08032E94 @ =sub_080321DC
	str r0, [r1, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08032E94: .4byte sub_080321DC

	thumb_func_start sub_08032E98
sub_08032E98: @ 0x08032E98
	push {r4, r5, lr}
	sub sp, #8
	ldr r1, _08032EFC @ =0x0000FFFF
	movs r0, #0
	bl sub_08152FB0
	ldr r1, _08032F00 @ =gUnk_03003A04
	ldr r0, _08032F04 @ =gUnk_03003790
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r1, _08032F08 @ =gUnk_030068B0
	movs r0, #0
	strb r0, [r1]
	ldr r1, _08032F0C @ =gUnk_03006078
	ldr r0, _08032F10 @ =gUnk_030039A4
	ldrb r0, [r0]
	strb r0, [r1]
	bl sub_08157168
	ldr r1, _08032F14 @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08032F18 @ =gUnk_03002540
	ldr r0, _08032F1C @ =0x06010000
	str r0, [r1]
	bl EwramInitHeap
	ldr r0, _08032F20 @ =sub_080331E0
	movs r1, #0
	str r1, [sp]
	movs r1, #0x48
	movs r2, #1
	movs r3, #0xc
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08032F24
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r2, r0, r1
	b _08032F2C
	.align 2, 0
_08032EFC: .4byte 0x0000FFFF
_08032F00: .4byte gUnk_03003A04
_08032F04: .4byte gUnk_03003790
_08032F08: .4byte gUnk_030068B0
_08032F0C: .4byte gUnk_03006078
_08032F10: .4byte gUnk_030039A4
_08032F14: .4byte gUnk_03002488
_08032F18: .4byte gUnk_03002540
_08032F1C: .4byte 0x06010000
_08032F20: .4byte sub_080331E0
_08032F24:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r2, r1, r0
_08032F2C:
	ldr r0, _08032FD8 @ =sub_08033008
	str r0, [r2, #0x40]
	adds r0, r2, #0
	adds r0, #0x44
	movs r4, #0
	strh r4, [r0]
	ldr r0, _08032FDC @ =gUnk_02038580
	ldr r1, [r0]
	adds r0, r2, #0
	adds r0, #0x46
	strh r1, [r0]
	bl sub_08031CC8
	bl sub_081589E8
	str r4, [sp, #4]
	ldr r1, _08032FE0 @ =0x040000D4
	add r0, sp, #4
	str r0, [r1]
	ldr r0, _08032FE4 @ =gMultiSioSend
	str r0, [r1, #4]
	ldr r0, _08032FE8 @ =0x85000005
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	cmp r0, #0
	bge _08032F6E
_08032F66:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08032F66
_08032F6E:
	movs r0, #0
	str r0, [sp, #4]
	ldr r1, _08032FE0 @ =0x040000D4
	add r2, sp, #4
	str r2, [r1]
	ldr r0, _08032FEC @ =gMultiSioRecv
	str r0, [r1, #4]
	ldr r0, _08032FF0 @ =0x85000014
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r2, #0x80
	lsls r2, r2, #0x18
	ldr r3, _08032FF4 @ =gMultiSioStatusFlags
	ldr r5, _08032FF8 @ =gUnk_03002558
	cmp r0, #0
	bge _08032F98
_08032F90:
	ldr r0, [r1, #8]
	ands r0, r2
	cmp r0, #0
	bne _08032F90
_08032F98:
	movs r4, #0
	str r4, [r3]
	strb r4, [r5]
	movs r0, #0
	bl MultiSioInit
	bl sub_08031BFC
	bl m4aMPlayAllStop
	ldr r0, _08032FFC @ =0x04000208
	strh r4, [r0]
	movs r2, #0
	ldr r4, _08033000 @ =gIntrTable
	ldr r3, _08033004 @ =gIntrTableTemplate
_08032FB6:
	lsls r0, r2, #2
	adds r1, r0, r4
	adds r0, r0, r3
	ldr r0, [r0]
	str r0, [r1]
	adds r0, r2, #1
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0xe
	bls _08032FB6
	ldr r1, _08032FFC @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	add sp, #8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08032FD8: .4byte sub_08033008
_08032FDC: .4byte gUnk_02038580
_08032FE0: .4byte 0x040000D4
_08032FE4: .4byte gMultiSioSend
_08032FE8: .4byte 0x85000005
_08032FEC: .4byte gMultiSioRecv
_08032FF0: .4byte 0x85000014
_08032FF4: .4byte gMultiSioStatusFlags
_08032FF8: .4byte gUnk_03002558
_08032FFC: .4byte 0x04000208
_08033000: .4byte gIntrTable
_08033004: .4byte gIntrTableTemplate
