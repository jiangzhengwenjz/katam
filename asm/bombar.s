	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_080D95A4
sub_080D95A4: @ 0x080D95A4
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sb, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080D95D8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080D95DC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080D95F4
	.align 2, 0
_080D95D8: .4byte gUnk_020229D4
_080D95DC: .4byte gUnk_020229E0
_080D95E0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D95FC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D95F4:
	cmp r0, #0
	bne _080D95E0
	orrs r2, r3
	str r2, [r1]
_080D95FC:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	mov r0, sb
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb2
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	strb r3, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateBombarBomb
CreateBombarBomb: @ 0x080D965C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D9690 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D9694 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D9698
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080D96A0
	.align 2, 0
_080D9690: .4byte ObjectMain
_080D9694: .4byte ObjectDestroy
_080D9698:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080D96A0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080D9704 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080D9EE8
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D9704: .4byte sub_0809F840

	thumb_func_start sub_080D9708
sub_080D9708: @ 0x080D9708
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080D9730
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080D9730:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r2, [r1]
	movs r3, #0
	ldrsh r0, [r1, r3]
	cmp r0, #0
	bge _080D974C
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D975C
	b _080D9758
_080D974C:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D975C
_080D9758:
	movs r0, #0
	strh r0, [r1]
_080D975C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9764
sub_080D9764: @ 0x080D9764
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sb, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D978A
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0xc
	b _080D9792
_080D978A:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0xc
_080D9792:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #0xa
	mov sl, r0
	movs r4, #0
	ldr r1, _080D97B0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080D97C8
	.align 2, 0
_080D97B0: .4byte gUnk_020229D4
_080D97B4:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D97D0
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D97C8:
	cmp r0, #0
	bne _080D97B4
	orrs r2, r3
	str r2, [r1]
_080D97D0:
	ldr r0, _080D9840 @ =gUnk_020229E0
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r0
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sl
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb3
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sb
	strb r7, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	movs r0, #0xd8
	lsls r0, r0, #3
	strh r0, [r1, #0x24]
	ldr r0, [r5, #8]
	ands r0, r4
	cmp r0, #0
	beq _080D9844
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	adds r6, #0x10
	b _080D984C
	.align 2, 0
_080D9840: .4byte gUnk_020229E0
_080D9844:
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	adds r6, r0, #0
	subs r6, #0x10
_080D984C:
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r0, #0xa
	mov sl, r0
	movs r4, #0
	ldr r1, _080D9868 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080D986C @ =gUnk_020229E0
	mov ip, r7
	b _080D9884
	.align 2, 0
_080D9868: .4byte gUnk_020229D4
_080D986C: .4byte gUnk_020229E0
_080D9870:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080D988C
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080D9884:
	cmp r0, #0
	bne _080D9870
	orrs r2, r3
	str r2, [r1]
_080D988C:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	add r1, ip
	movs r2, #0
	movs r4, #1
	strb r4, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r3, #0
	strh r6, [r1, #6]
	mov r0, sl
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb3
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sb
	strb r7, [r1, #0x10]
	strh r2, [r1, #0x22]
	strh r2, [r1, #0x1a]
	strh r2, [r1, #0x1c]
	strh r2, [r1, #0x1e]
	strh r2, [r1, #0x20]
	strb r3, [r1, #0x11]
	strh r2, [r1, #0x12]
	strh r2, [r1, #0x14]
	strh r2, [r1, #0x16]
	strh r2, [r1, #0x18]
	mov r2, r8
	ldrb r0, [r2]
	bl CreateObject
	adds r1, r0, #0
	str r5, [r1, #0x70]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateBombarMissile
CreateBombarMissile: @ 0x080D98F0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080D9924 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080D9928 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080D992C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080D9934
	.align 2, 0
_080D9924: .4byte ObjectMain
_080D9928: .4byte ObjectDestroy
_080D992C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080D9934:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080D99A0 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #3
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #4
	rsbs r2, r2, #0
	movs r0, #0xa
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080D99A4
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080D99A0: .4byte sub_0809F840

	thumb_func_start sub_080D99A4
sub_080D99A4: @ 0x080D99A4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D99FC @ =sub_080D9A04
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D99C4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D99C4:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	ldr r0, _080D9A00 @ =0x0000FE80
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080D99E6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080D99E6:
	ldr r0, [r4, #8]
	movs r2, #0x80
	lsls r2, r2, #1
	orrs r0, r2
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	strh r2, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D99FC: .4byte sub_080D9A04
_080D9A00: .4byte 0x0000FE80

	thumb_func_start sub_080D9A04
sub_080D9A04: @ 0x080D9A04
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r0, #0x87
	ldrb r7, [r0]
	cmp r7, #0
	bne _080D9A16
	b _080D9B96
_080D9A16:
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, #1
	movs r7, #0
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r5
	mov r8, r1
	adds r6, r5, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080D9A54
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D9A54:
	ldr r2, [r5, #0x44]
	ldr r1, _080D9A84 @ =0xFFFFF700
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D9A88
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r6, r1, #0
	cmp r0, r2
	ble _080D9AD8
	strh r2, [r6]
	b _080D9AD8
	.align 2, 0
_080D9A84: .4byte 0xFFFFF700
_080D9A88:
	cmp r2, r0
	bge _080D9AAC
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9AA8 @ =0xFFFFFE00
	adds r6, r1, #0
	cmp r0, r2
	bge _080D9AD8
	strh r2, [r6]
	b _080D9AD8
	.align 2, 0
_080D9AA8: .4byte 0xFFFFFE00
_080D9AAC:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r6, r0, #0
	cmp r1, #0
	bge _080D9ACA
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9AD8
	b _080D9AD6
_080D9ACA:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9AD8
_080D9AD6:
	strh r7, [r6]
_080D9AD8:
	ldr r2, [r5, #0x40]
	ldr r1, _080D9B14 @ =0xFFFFF700
	ands r2, r1
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D9B1C
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r4, r1, #0
	cmp r0, r2
	ble _080D9B10
	b _080D9CE0
_080D9B10:
	ldr r1, _080D9B18 @ =0xFFFFFE00
	b _080D9CE6
	.align 2, 0
_080D9B14: .4byte 0xFFFFF700
_080D9B18: .4byte 0xFFFFFE00
_080D9B1C:
	cmp r2, r0
	ble _080D9B74
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D9B50
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9B4C @ =0xFFFFFE00
	adds r4, r1, #0
	cmp r0, r2
	bge _080D9B46
	b _080D9CE0
_080D9B46:
	movs r1, #0x80
	lsls r1, r1, #2
	b _080D9CBC
	.align 2, 0
_080D9B4C: .4byte 0xFFFFFE00
_080D9B50:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0x80
	lsls r2, r2, #2
	adds r4, r1, #0
	cmp r0, r2
	ble _080D9B6A
	b _080D9CE0
_080D9B6A:
	ldr r1, _080D9B70 @ =0xFFFFFE00
	b _080D9CE6
	.align 2, 0
_080D9B70: .4byte 0xFFFFFE00
_080D9B74:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	blt _080D9B86
	b _080D9D12
_080D9B86:
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bgt _080D9B94
	b _080D9D22
_080D9B94:
	b _080D9D1E
_080D9B96:
	adds r4, r5, #0
	adds r4, #0x9e
	ldrb r0, [r4]
	adds r0, #1
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0xa0
	adds r1, r1, r5
	mov r8, r1
	adds r6, r5, #0
	adds r6, #0xa2
	cmp r0, #0xf
	bls _080D9BD2
	adds r0, r5, #0
	bl sub_0803D368
	adds r1, r5, #0
	adds r1, #0xac
	str r0, [r1]
	strb r7, [r4]
	ldr r0, [r1]
	ldr r0, [r0, #0x40]
	asrs r0, r0, #8
	mov r2, r8
	strh r0, [r2]
	ldr r0, [r1]
	ldr r0, [r0, #0x44]
	asrs r0, r0, #8
	strh r0, [r6]
_080D9BD2:
	ldr r2, [r5, #0x44]
	ldr r1, _080D9C00 @ =0xFFFFF700
	ands r2, r1
	movs r3, #0
	ldrsh r0, [r6, r3]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	ble _080D9C04
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r6, r1, #0
	cmp r0, r2
	ble _080D9C54
	strh r2, [r6]
	b _080D9C54
	.align 2, 0
_080D9C00: .4byte 0xFFFFF700
_080D9C04:
	cmp r2, r0
	bge _080D9C28
	adds r1, r5, #0
	adds r1, #0x52
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9C24 @ =0xFFFFFE60
	adds r6, r1, #0
	cmp r0, r2
	bge _080D9C54
	strh r2, [r6]
	b _080D9C54
	.align 2, 0
_080D9C24: .4byte 0xFFFFFE60
_080D9C28:
	adds r0, r5, #0
	adds r0, #0x52
	ldrh r2, [r0]
	movs r4, #0
	ldrsh r1, [r0, r4]
	adds r6, r0, #0
	cmp r1, #0
	bge _080D9C46
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9C54
	b _080D9C52
_080D9C46:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r6]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9C54
_080D9C52:
	strh r7, [r6]
_080D9C54:
	ldr r2, [r5, #0x40]
	ldr r1, _080D9C8C @ =0xFFFFF700
	ands r2, r1
	mov r3, r8
	movs r4, #0
	ldrsh r0, [r3, r4]
	lsls r0, r0, #8
	ands r0, r1
	cmp r2, r0
	bge _080D9C90
	ldr r0, [r5, #8]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r5, #8]
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	bgt _080D9CE0
	b _080D9CE4
	.align 2, 0
_080D9C8C: .4byte 0xFFFFF700
_080D9C90:
	cmp r2, r0
	ble _080D9CF4
	ldr r0, [r5, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r5, #8]
	ands r0, r1
	cmp r0, #0
	beq _080D9CC8
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080D9CC4 @ =0xFFFFFE60
	adds r4, r1, #0
	cmp r0, r2
	blt _080D9CE0
	movs r1, #0xd0
	lsls r1, r1, #1
_080D9CBC:
	cmp r0, r1
	ble _080D9D22
	strh r1, [r4]
	b _080D9D22
	.align 2, 0
_080D9CC4: .4byte 0xFFFFFE60
_080D9CC8:
	adds r1, r5, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x10
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xd0
	lsls r2, r2, #1
	adds r4, r1, #0
	cmp r0, r2
	ble _080D9CE4
_080D9CE0:
	strh r2, [r4]
	b _080D9D22
_080D9CE4:
	ldr r1, _080D9CF0 @ =0xFFFFFE60
_080D9CE6:
	cmp r0, r1
	bge _080D9D22
	strh r1, [r4]
	b _080D9D22
	.align 2, 0
_080D9CF0: .4byte 0xFFFFFE60
_080D9CF4:
	adds r0, r5, #0
	adds r0, #0x50
	ldrh r2, [r0]
	movs r3, #0
	ldrsh r1, [r0, r3]
	adds r4, r0, #0
	cmp r1, #0
	bge _080D9D12
	adds r0, r2, #0
	subs r0, #8
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	ble _080D9D22
	b _080D9D1E
_080D9D12:
	adds r0, r2, #0
	adds r0, #8
	strh r0, [r4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bge _080D9D22
_080D9D1E:
	movs r0, #0
	strh r0, [r4]
_080D9D22:
	ldr r0, [r5, #8]
	movs r2, #1
	orrs r0, r2
	str r0, [r5, #8]
	movs r1, #0
	ldrsh r0, [r4, r1]
	cmp r0, #0x80
	ble _080D9D5A
	movs r2, #0
	ldrsh r1, [r6, r2]
	cmp r1, #0x80
	ble _080D9D42
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #5
	b _080D9DA4
_080D9D42:
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080D9D52
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #3
	b _080D9DA4
_080D9D52:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #4
	b _080D9DA4
_080D9D5A:
	movs r1, #0x80
	rsbs r1, r1, #0
	cmp r0, r1
	bge _080D9D7E
	movs r3, #0
	ldrsh r0, [r6, r3]
	cmp r0, #0x80
	ble _080D9D72
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #7
	b _080D9DA4
_080D9D72:
	cmp r0, r1
	bge _080D9D9E
	adds r0, r5, #0
	adds r0, #0x83
	strb r2, [r0]
	b _080D9DA6
_080D9D7E:
	movs r0, #0
	ldrsh r1, [r6, r0]
	cmp r1, #0x10
	ble _080D9D8E
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #6
	b _080D9DA4
_080D9D8E:
	movs r0, #0x10
	rsbs r0, r0, #0
	cmp r1, r0
	bge _080D9D9E
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #2
	b _080D9DA4
_080D9D9E:
	adds r1, r5, #0
	adds r1, #0x83
	movs r0, #0
_080D9DA4:
	strb r0, [r1]
_080D9DA6:
	ldrh r1, [r5, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080D9DF0
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r2, r2, #2
	ldr r1, [r0, #0x34]
	subs r1, r1, r2
	str r1, [r0, #0x34]
	movs r3, #0
	ldrsh r2, [r6, r3]
	lsls r2, r2, #2
	ldr r1, [r0, #0x38]
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3c]
	ldrh r1, [r6]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3e]
	movs r1, #0xe8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
_080D9DF0:
	ldrh r1, [r5, #4]
	movs r2, #4
	ldrsh r0, [r5, r2]
	cmp r0, #0
	bne _080D9E24
	movs r3, #0
	ldrsh r1, [r4, r3]
	cmp r1, #0
	bge _080D9E04
	rsbs r1, r1, #0
_080D9E04:
	movs r4, #0
	ldrsh r0, [r6, r4]
	cmp r0, #0
	bge _080D9E0E
	rsbs r0, r0, #0
_080D9E0E:
	adds r1, r1, r0
	ldr r0, _080D9E1C @ =0x0000017F
	cmp r1, r0
	ble _080D9E28
	ldr r0, _080D9E20 @ =sub_080D9E34
	str r0, [r5, #0x78]
	b _080D9E28
	.align 2, 0
_080D9E1C: .4byte 0x0000017F
_080D9E20: .4byte sub_080D9E34
_080D9E24:
	subs r0, r1, #1
	strh r0, [r5, #4]
_080D9E28:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9E34
sub_080D9E34: @ 0x080D9E34
	push {r4, r5, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #4]
	adds r0, #1
	strh r0, [r5, #4]
	movs r1, #7
	ands r0, r1
	cmp r0, #0
	bne _080D9E8E
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r4, r5, #0
	adds r4, #0x50
	movs r1, #0
	ldrsh r2, [r4, r1]
	lsls r2, r2, #2
	ldr r1, [r0, #0x34]
	subs r1, r1, r2
	str r1, [r0, #0x34]
	adds r3, r5, #0
	adds r3, #0x52
	movs r1, #0
	ldrsh r2, [r3, r1]
	lsls r2, r2, #2
	ldr r1, [r0, #0x38]
	adds r1, r1, r2
	str r1, [r0, #0x38]
	ldrh r1, [r4]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3c]
	ldrh r1, [r3]
	lsls r1, r1, #0x10
	asrs r1, r1, #0x11
	rsbs r1, r1, #0
	strh r1, [r0, #0x3e]
	movs r1, #0xe8
	lsls r1, r1, #3
	strh r1, [r0, #0x20]
_080D9E8E:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start sub_080D9E94
sub_080D9E94: @ 0x080D9E94
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9ED0 @ =sub_080D7D28
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080D9ECA
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080D9ED4 @ =gUnk_08351530
	ldr r0, _080D9ED8 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080D9EDC
_080D9ECA:
	movs r0, #0x18
	b _080D9EDE
	.align 2, 0
_080D9ED0: .4byte sub_080D7D28
_080D9ED4: .4byte gUnk_08351530
_080D9ED8: .4byte gUnk_0203AD30
_080D9EDC:
	movs r0, #0x30
_080D9EDE:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080D9EE8
sub_080D9EE8: @ 0x080D9EE8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9F4C @ =sub_080D9708
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080D9F08
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080D9F08:
	adds r1, r4, #0
	adds r1, #0x9f
	movs r0, #0
	strb r0, [r1]
	ldr r1, [r4, #0x40]
	ldr r0, _080D9F50 @ =0xFFFFF000
	adds r1, r1, r0
	adds r2, r4, #0
	adds r2, #0xac
	ldr r0, [r2]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	bge _080D9F2C
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	strh r0, [r1]
_080D9F2C:
	ldr r0, [r4, #0x40]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r0, r1
	ldr r1, [r2]
	ldr r1, [r1, #0x40]
	cmp r0, r1
	ble _080D9F46
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r1]
_080D9F46:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D9F4C: .4byte sub_080D9708
_080D9F50: .4byte 0xFFFFF000

	thumb_func_start sub_080D9F54
sub_080D9F54: @ 0x080D9F54
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9F80 @ =sub_080D7A6C
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x40
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080D9F80: .4byte sub_080D7A6C

	thumb_func_start sub_080D9F84
sub_080D9F84: @ 0x080D9F84
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9FA4 @ =sub_080D7DCC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080D9FA8
	ldrh r0, [r1, #6]
	subs r0, #8
	b _080D9FAC
	.align 2, 0
_080D9FA4: .4byte sub_080D7DCC
_080D9FA8:
	ldrh r0, [r1, #6]
	adds r0, #8
_080D9FAC:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	adds r0, #0x40
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080D9FC8
sub_080D9FC8: @ 0x080D9FC8
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080D9FE8 @ =sub_080D7DCC
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080D9FEC
	ldrh r0, [r1, #6]
	adds r0, #0x30
	b _080D9FF0
	.align 2, 0
_080D9FE8: .4byte sub_080D7DCC
_080D9FEC:
	ldrh r0, [r1, #6]
	subs r0, #0x30
_080D9FF0:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r0, [r0, #8]
	subs r0, #0x10
	adds r1, r4, #0
	adds r1, #0xa2
	strh r0, [r1]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080DA00C
sub_080DA00C: @ 0x080DA00C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA02C @ =sub_080D7FF0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	cmp r0, #0
	beq _080DA030
	ldrh r0, [r1, #6]
	adds r0, #0x18
	b _080DA034
	.align 2, 0
_080DA02C: .4byte sub_080D7FF0
_080DA030:
	ldrh r0, [r1, #6]
	subs r0, #0x18
_080DA034:
	adds r1, r4, #0
	adds r1, #0xa0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #8]
	adds r0, r4, #0
	adds r0, #0xa2
	strh r1, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080DA050
sub_080DA050: @ 0x080DA050
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA06C @ =sub_080D8338
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DA06C: .4byte sub_080D8338

	thumb_func_start sub_080DA070
sub_080DA070: @ 0x080DA070
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA098 @ =sub_080D8950
	movs r1, #0
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0xb0
	ldr r0, [r2]
	ldrh r1, [r0, #6]
	adds r0, r4, #0
	adds r0, #0xa0
	strh r1, [r0]
	ldr r0, [r2]
	ldrh r0, [r0, #8]
	adds r4, #0xa2
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DA098: .4byte sub_080D8950

	thumb_func_start sub_080DA09C
sub_080DA09C: @ 0x080DA09C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA0B8 @ =sub_080D8C98
	movs r1, #4
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080DA0B8: .4byte sub_080D8C98

	thumb_func_start sub_080DA0BC
sub_080DA0BC: @ 0x080DA0BC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080DA0E0 @ =sub_080D9388
	movs r1, #5
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080DA0E4
	movs r0, #0xc
	b _080DA0E6
	.align 2, 0
_080DA0E0: .4byte sub_080D9388
_080DA0E4:
	movs r0, #0x1c
_080DA0E6:
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
