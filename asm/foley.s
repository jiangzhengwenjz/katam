	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateFoley
CreateFoley: @ 0x080C05A8
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C05DC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C05E0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C05E4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C05EC
	.align 2, 0
_080C05DC: .4byte ObjectMain
_080C05E0: .4byte ObjectDestroy
_080C05E4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C05EC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
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
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0803D5CC
	ldr r1, [r4, #0x40]
	ldr r0, [r0, #0x40]
	cmp r1, r0
	ble _080C063E
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080C063E:
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _080C0668 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C0668: .4byte gUnk_08351648

	thumb_func_start sub_080C066C
sub_080C066C: @ 0x080C066C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bhi _080C068A
	b _080C07CC
_080C068A:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	mov r8, r0
	adds r5, r4, #0
	adds r5, #0x9f
	ldr r6, _080C074C @ =gUnk_08354EEC
	adds r3, r4, #0
	adds r3, #0x50
	movs r0, #0x52
	adds r0, r0, r4
	mov ip, r0
	cmp r1, #0
	bne _080C077C
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C06C0
	subs r0, r1, #1
	strb r0, [r5]
_080C06C0:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r1, r8
	strb r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C06E8
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080C06E8:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080C0750
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080C0720
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C0720
	rsbs r0, r2, #0
	strh r0, [r3]
_080C0720:
	ldrb r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r7, #2
	ldrsh r0, [r0, r7]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080C077C
	strh r2, [r7]
	b _080C077C
	.align 2, 0
_080C074C: .4byte gUnk_08354EEC
_080C0750:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C079A
	rsbs r0, r2, #0
	strh r0, [r3]
_080C077C:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C079A
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r3]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r3]
	b _080C07AC
_080C079A:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
_080C07AC:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	mov r1, ip
	strh r0, [r1]
	mov r2, r8
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	b _080C098C
_080C07CC:
	ldr r3, _080C08C0 @ =gUnk_08354E98
	adds r2, r4, #0
	adds r2, #0x9f
	ldrb r7, [r2]
	adds r1, r7, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrb r0, [r0, #8]
	movs r1, #0x9e
	adds r1, r1, r4
	mov r8, r1
	adds r5, r2, #0
	adds r6, r3, #0
	cmp r0, #0
	bne _080C0806
	ldrb r0, [r1]
	adds r3, r4, #0
	adds r3, #0x50
	movs r2, #0x52
	adds r2, r2, r4
	mov ip, r2
	cmp r0, #0
	bne _080C08F0
	movs r0, #0xff
	strb r0, [r5]
_080C0806:
	mov r7, r8
	ldrb r0, [r7]
	adds r3, r4, #0
	adds r3, #0x50
	movs r1, #0x52
	adds r1, r1, r4
	mov ip, r1
	cmp r0, #0
	bne _080C08F0
	ldrb r0, [r5]
	adds r0, #1
	strb r0, [r5]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	cmp r0, #0
	bne _080C0832
	subs r0, r1, #1
	strb r0, [r5]
_080C0832:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0, #8]
	mov r2, r8
	strb r0, [r2]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r1, [r0, #9]
	adds r0, r1, #0
	cmp r0, #0xff
	beq _080C085A
	adds r0, r4, #0
	adds r0, #0x83
	strb r1, [r0]
_080C085A:
	ldrb r0, [r5]
	cmp r0, #0
	beq _080C08C4
	adds r2, r0, #0
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1]
	movs r7, #0
	ldrsh r1, [r1, r7]
	movs r7, #0
	ldrsh r0, [r0, r7]
	cmp r1, r0
	beq _080C0892
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C0892
	rsbs r0, r2, #0
	strh r0, [r3]
_080C0892:
	ldrb r2, [r5]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r6
	subs r2, #1
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r1, #2]
	movs r7, #2
	ldrsh r1, [r1, r7]
	movs r7, #2
	ldrsh r0, [r0, r7]
	movs r7, #0x52
	adds r7, r7, r4
	mov ip, r7
	cmp r1, r0
	beq _080C08F0
	strh r2, [r7]
	b _080C08F0
	.align 2, 0
_080C08C0: .4byte gUnk_08354E98
_080C08C4:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #2]
	mov r1, ip
	strh r0, [r1]
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r2, [r0]
	strh r2, [r3]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C090E
	rsbs r0, r2, #0
	strh r0, [r3]
_080C08F0:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C090E
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r1, [r3]
	ldrh r0, [r0, #4]
	subs r1, r1, r0
	strh r1, [r3]
	b _080C0920
_080C090E:
	ldrb r0, [r5]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r6
	ldrh r0, [r1, #4]
	ldrh r2, [r3]
	adds r0, r0, r2
	strh r0, [r3]
_080C0920:
	ldrb r1, [r5]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrh r0, [r0, #6]
	mov r7, ip
	ldrh r7, [r7]
	adds r0, r0, r7
	mov r1, ip
	strh r0, [r1]
	mov r2, r8
	ldrb r0, [r2]
	subs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #1
	bne _080C098C
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080C095E
	cmp r0, #1
	beq _080C0962
	movs r0, #0xc0
	lsls r0, r0, #1
	b _080C0966
_080C095E:
	movs r0, #0x80
	b _080C0966
_080C0962:
	movs r0, #0x80
	lsls r0, r0, #1
_080C0966:
	strh r0, [r3]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r2, #1
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _080C097E
	ldr r0, [r4, #8]
	eors r0, r2
	str r0, [r4, #8]
_080C097E:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080C098C
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080C098C:
	ldrh r1, [r4, #4]
	movs r0, #0xf
	ands r0, r1
	adds r5, r4, #0
	adds r5, #0xac
	cmp r0, #0xf
	bne _080C09A2
	adds r0, r4, #0
	bl sub_0803D5CC
	str r0, [r5]
_080C09A2:
	ldr r0, [r5]
	ldr r0, [r0, #0x40]
	ldr r1, [r4, #0x40]
	subs r2, r0, r1
	cmp r2, #0
	blt _080C09BC
	ldr r0, _080C09B8 @ =0x000027FF
	cmp r2, r0
	ble _080C09C4
	b _080C09D0
	.align 2, 0
_080C09B8: .4byte 0x000027FF
_080C09BC:
	subs r1, r1, r0
	ldr r0, _080C09CC @ =0x000027FF
	cmp r1, r0
	bgt _080C09D0
_080C09C4:
	adds r0, r4, #0
	bl sub_080C09E0
	b _080C09D6
	.align 2, 0
_080C09CC: .4byte 0x000027FF
_080C09D0:
	ldrh r0, [r4, #4]
	adds r0, #1
	strh r0, [r4, #4]
_080C09D6:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080C09E0
sub_080C09E0: @ 0x080C09E0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0A78 @ =sub_080C0D18
	movs r1, #1
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x82
	movs r1, #0
	movs r0, #0x2e
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x50
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	strh r0, [r1]
	adds r0, r4, #0
	bl sub_080C0BD0
	ldr r1, _080C0A7C @ =gKirbys
	ldr r0, _080C0A80 @ =gUnk_0203AD3C
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
	bne _080C0A72
	ldrb r0, [r4]
	cmp r0, #0
	bne _080C0A36
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080C0A72
_080C0A36:
	ldr r1, _080C0A84 @ =gUnk_08D60FA4
	ldr r4, _080C0A88 @ =gSongTable
	ldr r2, _080C0A8C @ =0x00000A7C
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080C0A5A
	ldr r1, _080C0A90 @ =0x00000A78
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080C0A72
_080C0A5A:
	cmp r3, #0
	beq _080C0A6C
	ldr r0, _080C0A94 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080C0A72
_080C0A6C:
	ldr r0, _080C0A98 @ =0x0000014F
	bl m4aSongNumStart
_080C0A72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0A78: .4byte sub_080C0D18
_080C0A7C: .4byte gKirbys
_080C0A80: .4byte gUnk_0203AD3C
_080C0A84: .4byte gUnk_08D60FA4
_080C0A88: .4byte gSongTable
_080C0A8C: .4byte 0x00000A7C
_080C0A90: .4byte 0x00000A78
_080C0A94: .4byte gUnk_0203AD10
_080C0A98: .4byte 0x0000014F

	thumb_func_start CreateFoleyLeaves
CreateFoleyLeaves: @ 0x080C0A9C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080C0AD0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080C0AD4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080C0AD8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080C0AE0
	.align 2, 0
_080C0AD0: .4byte ObjectMain
_080C0AD4: .4byte ObjectDestroy
_080C0AD8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080C0AE0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	adds r1, #0xc0
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #8
	str r0, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #8
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #5
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	movs r0, #0xc8
	lsls r0, r0, #3
	strh r0, [r4, #0x24]
	ldr r2, _080C0B58 @ =gUnk_08351648
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r1, [r0]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #0x10
	adds r0, r0, r2
	ldr r1, [r0]
	adds r0, r4, #0
	bl _call_via_r1
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080C0B58: .4byte gUnk_08351648

	thumb_func_start sub_080C0B5C
sub_080C0B5C: @ 0x080C0B5C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r3, #0xc0
	lsls r3, r3, #2
	cmp r0, r3
	ble _080C0B80
	strh r3, [r1]
_080C0B80:
	ldr r0, [r2, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080C0BAC
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r2, _080C0BA8 @ =0xFFFFFD00
	cmp r0, r2
	blt _080C0BC4
	cmp r0, r3
	ble _080C0BC6
_080C0BA2:
	strh r3, [r1]
	b _080C0BC6
	.align 2, 0
_080C0BA8: .4byte 0xFFFFFD00
_080C0BAC:
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #4
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, r3
	bgt _080C0BA2
	ldr r2, _080C0BCC @ =0xFFFFFD00
	cmp r0, r2
	bge _080C0BC6
_080C0BC4:
	strh r2, [r1]
_080C0BC6:
	pop {r0}
	bx r0
	.align 2, 0
_080C0BCC: .4byte 0xFFFFFD00

	thumb_func_start sub_080C0BD0
sub_080C0BD0: @ 0x080C0BD0
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov ip, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	adds r7, r0, #0
	subs r7, #8
	movs r4, #0
	ldr r1, _080C0BF4 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080C0BF8 @ =gUnk_020229E0
	b _080C0C10
	.align 2, 0
_080C0BF4: .4byte gUnk_020229D4
_080C0BF8: .4byte gUnk_020229E0
_080C0BFC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080C0C18
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080C0C10:
	cmp r0, #0
	bne _080C0BFC
	orrs r2, r3
	str r2, [r1]
_080C0C18:
	lsls r1, r4, #3
	adds r1, r1, r4
	lsls r1, r1, #2
	adds r1, r1, r6
	movs r3, #0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x24
	strb r0, [r1, #1]
	movs r2, #0
	mov r0, ip
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	strb r2, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r2, [r1, #4]
	strb r2, [r1, #5]
	movs r0, #0x9d
	strb r0, [r1, #0xc]
	strb r2, [r1, #0xe]
	strb r2, [r1, #0xf]
	strb r2, [r1, #0x10]
	strh r3, [r1, #0x22]
	strh r3, [r1, #0x1a]
	strh r3, [r1, #0x1c]
	strh r3, [r1, #0x1e]
	strh r3, [r1, #0x20]
	strb r2, [r1, #0x11]
	strh r3, [r1, #0x12]
	strh r3, [r1, #0x14]
	strh r3, [r1, #0x16]
	strh r3, [r1, #0x18]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	bl CreateObject
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080C0C6C
sub_080C0C6C: @ 0x080C0C6C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0CB4 @ =sub_080C066C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	movs r1, #0x21
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080C0CAC
	ldr r0, [r4, #8]
	ldr r1, _080C0CB8 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
_080C0CAC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0CB4: .4byte sub_080C066C
_080C0CB8: .4byte 0xFFFFFEFF

	thumb_func_start sub_080C0CBC
sub_080C0CBC: @ 0x080C0CBC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0CE8 @ =sub_080C0D68
	movs r1, #2
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	ldr r1, _080C0CEC @ =0xFFFFFEBF
	ands r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0xc]
	movs r1, #2
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0xc]
	adds r4, #0x50
	movs r0, #0
	strh r0, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0CE8: .4byte sub_080C0D68
_080C0CEC: .4byte 0xFFFFFEBF

	thumb_func_start sub_080C0CF0
sub_080C0CF0: @ 0x080C0CF0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080C0D14 @ =sub_080C0B5C
	movs r1, #0
	bl ObjectSetFunc
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0xa0
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080C0D14: .4byte sub_080C0B5C

	thumb_func_start sub_080C0D18
sub_080C0D18: @ 0x080C0D18
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0xa
	ble _080C0D34
	adds r0, r3, #0
	bl sub_080C0CBC
	b _080C0D5E
_080C0D34:
	ldr r1, _080C0D64 @ =gUnk_08350BCC
	movs r2, #4
	ldrsh r0, [r3, r2]
	lsls r0, r0, #1
	adds r1, #1
	adds r0, r0, r1
	ldrb r2, [r0]
	adds r0, r3, #0
	adds r0, #0x54
	strb r2, [r0]
	movs r2, #4
	ldrsh r0, [r3, r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrb r0, [r0]
	adds r1, r3, #0
	adds r1, #0x55
	strb r0, [r1]
	ldrh r0, [r3, #4]
	adds r0, #1
	strh r0, [r3, #4]
_080C0D5E:
	pop {r0}
	bx r0
	.align 2, 0
_080C0D64: .4byte gUnk_08350BCC

	thumb_func_start sub_080C0D68
sub_080C0D68: @ 0x080C0D68
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
	beq _080C0D90
	adds r0, r4, #0
	bl sub_08073D2C
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080C0D90:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
