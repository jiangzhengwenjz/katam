	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_081434F8
sub_081434F8: @ 0x081434F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r0, _08143530 @ =sub_08145620
	ldr r1, _08143534 @ =0x00000928
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r3, _08143538 @ =sub_08143664
	str r3, [sp]
	movs r3, #0
	bl GameStateCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08143544
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _0814354C
	.align 2, 0
_08143530: .4byte sub_08145620
_08143534: .4byte 0x00000928
_08143538: .4byte sub_08143664
_0814353C:
	strh r4, [r5, #0x2e]
	b _081435D8
_08143540:
	strh r4, [r5, #0x32]
	b _08143626
_08143544:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_0814354C:
	adds r5, r0, #0
	add r1, sp, #4
	movs r0, #0
	strh r0, [r1]
	ldr r0, _08143640 @ =0x040000D4
	str r1, [r0]
	str r5, [r0, #4]
	ldr r1, _08143644 @ =0x81000494
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08143648 @ =sub_08143DA8
	str r0, [r5, #0x38]
	adds r1, r5, #0
	adds r1, #0x2d
	movs r0, #1
	strb r0, [r1]
	ldr r0, _0814364C @ =0x0000FFFF
	strh r0, [r5, #0x30]
	ldr r0, _08143650 @ =gUnk_0203ADE0
	ldrh r0, [r0]
	strb r0, [r5, #1]
	adds r0, r5, #0
	bl sub_08143730
	bl m4aMPlayAllStop
	movs r0, #0x19
	bl m4aSongNumStart
	movs r4, #0
	ldr r0, _08143654 @ =gUnk_08386A50
	ldr r1, _08143658 @ =gUnk_08386B2A
	mov r8, r1
	ldrh r0, [r0]
	mov ip, r0
	adds r7, r5, #2
	movs r2, #0x37
	adds r2, r2, r5
	mov sl, r2
_0814359A:
	movs r3, #0
	lsls r0, r4, #2
	mov r2, r8
	adds r1, r0, r2
	adds r2, r0, #0
	ldrh r1, [r1]
	cmp ip, r1
	beq _081435C6
	ldr r6, _08143654 @ =gUnk_08386A50
	ldr r0, _08143658 @ =gUnk_08386B2A
	adds r1, r2, r0
_081435B0:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081435C6
	lsls r0, r3, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	ldrh r2, [r1]
	cmp r0, r2
	bne _081435B0
_081435C6:
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _0814353C
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, #0x29
	bls _0814359A
_081435D8:
	movs r4, #0
	ldr r0, _08143654 @ =gUnk_08386A50
	ldr r1, _0814365C @ =gUnk_08386BD2
	mov sb, r1
	ldrh r0, [r0]
	mov ip, r0
	ldr r2, _08143660 @ =0x00000179
	mov r8, r2
_081435E8:
	movs r3, #0
	lsls r0, r4, #2
	mov r2, sb
	adds r1, r0, r2
	adds r2, r0, #0
	ldrh r1, [r1]
	cmp ip, r1
	beq _08143614
	ldr r6, _08143654 @ =gUnk_08386A50
	ldr r0, _0814365C @ =gUnk_08386BD2
	adds r1, r2, r0
_081435FE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _08143614
	lsls r0, r3, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	ldrh r2, [r1]
	cmp r0, r2
	bne _081435FE
_08143614:
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	bne _08143540
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	cmp r4, r8
	bls _081435E8
_08143626:
	adds r0, r5, #0
	bl sub_08143A90
	mov r1, sl
	strb r0, [r1]
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143640: .4byte 0x040000D4
_08143644: .4byte 0x81000494
_08143648: .4byte sub_08143DA8
_0814364C: .4byte 0x0000FFFF
_08143650: .4byte gUnk_0203ADE0
_08143654: .4byte gUnk_08386A50
_08143658: .4byte gUnk_08386B2A
_0814365C: .4byte gUnk_08386BD2
_08143660: .4byte 0x00000179

	thumb_func_start sub_08143664
sub_08143664: @ 0x08143664
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0814367E
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _08143686
_0814367E:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_08143686:
	adds r6, r0, #0
	movs r5, #0
_0814368A:
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x40
	adds r4, r6, r0
	ldr r0, [r4]
	cmp r0, #0
	beq _081436A2
	bl sub_08157190
	movs r0, #0
	str r0, [r4]
_081436A2:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x38
	bls _0814368A
	movs r5, #0
	ldr r4, _081436D0 @ =gUnk_030036A0
	movs r3, #8
	ldr r2, _081436D4 @ =gUnk_030035E0
	movs r1, #0x14
_081436B6:
	adds r0, r5, r4
	strb r3, [r0]
	adds r0, r5, r2
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bls _081436B6
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081436D0: .4byte gUnk_030036A0
_081436D4: .4byte gUnk_030035E0

	thumb_func_start sub_081436D8
sub_081436D8: @ 0x081436D8
	push {r4, r5, r6, lr}
	adds r1, r0, #0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xe
	bhi _081436EE
	movs r0, #0
	b _08143722
_081436EE:
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08143728 @ =gBgPalette
	ldrh r4, [r0, #0xc]
	movs r2, #5
	adds r5, r0, #0
	ldr r6, _0814372C @ =gUnk_03002440
	adds r3, r5, #0
_081436FE:
	adds r1, r2, #1
	lsls r1, r1, #1
	adds r1, r1, r3
	lsls r0, r2, #1
	adds r0, r0, r3
	ldrh r0, [r0]
	strh r0, [r1]
	subs r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _081436FE
	strh r4, [r5, #8]
	ldr r0, [r6]
	movs r1, #1
	orrs r0, r1
	str r0, [r6]
	movs r0, #1
_08143722:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08143728: .4byte gBgPalette
_0814372C: .4byte gUnk_03002440

	thumb_func_start sub_08143730
sub_08143730: @ 0x08143730
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #2
	movs r1, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #1
	cmp r0, r2
	beq _08143756
_08143742:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bhi _08143756
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r2
	bne _08143742
_08143756:
	adds r1, r6, r1
	movs r0, #1
	strb r0, [r1]
	movs r4, #1
_0814375E:
	subs r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019E14
	adds r5, r0, #0
	movs r2, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r7, #0x80
	lsls r7, r7, #1
	adds r1, r4, r7
	adds r4, #1
	cmp r0, r1
	beq _08143790
_0814377C:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08143790
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r1
	bne _0814377C
_08143790:
	adds r0, r6, r2
	strb r5, [r0]
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0xe
	bls _0814375E
	movs r0, #0
	bl sub_08019E80
	adds r4, r0, #0
	movs r1, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r2, #0x80
	lsls r2, r2, #5
	cmp r0, r2
	beq _081437C6
_081437B2:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bhi _081437C6
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r2
	bne _081437B2
_081437C6:
	adds r0, r6, r1
	strb r4, [r0]
	movs r4, #0
_081437CC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08019E80
	adds r5, r0, #0
	movs r2, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r7, #0x80
	lsls r7, r7, #3
	adds r1, r4, r7
	cmp r0, r1
	beq _081437FC
_081437E8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081437FC
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r1
	bne _081437E8
_081437FC:
	adds r0, r6, r2
	strb r5, [r0]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _081437CC
	bl sub_08019F0C
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	movs r4, #0
	cmp r4, r5
	bhs _08143854
	ldr r0, _08143898 @ =gUnk_08386A50
	ldrh r7, [r0]
	movs r0, #0x80
	lsls r0, r0, #4
	mov ip, r0
_08143822:
	movs r1, #0
	mov r2, ip
	adds r0, r4, r2
	cmp r7, r0
	beq _08143844
	ldr r3, _08143898 @ =gUnk_08386A50
	adds r2, r0, #0
_08143830:
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x27
	bhi _08143844
	lsls r0, r1, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r2
	bne _08143830
_08143844:
	adds r1, r6, r1
	movs r0, #1
	strb r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r5
	blo _08143822
_08143854:
	movs r4, #0
_08143856:
	adds r0, r4, #0
	bl sub_08019EEC
	adds r5, r0, #0
	movs r2, #0
	ldr r3, _08143898 @ =gUnk_08386A50
	ldrh r0, [r3]
	movs r7, #0x80
	lsls r7, r7, #2
	adds r1, r4, r7
	adds r4, #1
	cmp r0, r1
	beq _08143884
_08143870:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08143884
	lsls r0, r2, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r0, r1
	bne _08143870
_08143884:
	adds r0, r6, r2
	strb r5, [r0]
	lsls r0, r4, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #9
	bls _08143856
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143898: .4byte gUnk_08386A50

	thumb_func_start sub_0814389C
sub_0814389C: @ 0x0814389C
	push {r4, r5, r6, r7, lr}
	adds r2, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	adds r0, r2, #2
	adds r0, r0, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _081438B0
	b _081439CA
_081438B0:
	ldr r1, _081438E0 @ =gUnk_08386A50
	lsls r0, r7, #2
	adds r1, r0, r1
	ldrb r5, [r1, #2]
	adds r0, r0, r7
	lsls r0, r0, #3
	adds r0, #0x40
	adds r6, r2, r0
	cmp r5, #3
	bhi _081438EC
	ldr r3, _081438E4 @ =gUnk_08386838
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	ldr r0, _081438E8 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, #4
	adds r1, r1, r3
	ldrh r0, [r1]
	b _081438FC
	.align 2, 0
_081438E0: .4byte gUnk_08386A50
_081438E4: .4byte gUnk_08386838
_081438E8: .4byte gUnk_08D60A80
_081438EC:
	ldr r2, _08143928 @ =gUnk_083868C8
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #4
	adds r0, r0, r2
	ldrh r0, [r0]
_081438FC:
	bl sub_081570B0
	str r0, [r6]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r6, #0x14]
	cmp r5, #3
	bhi _08143934
	ldr r3, _0814392C @ =gUnk_08386838
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	ldr r0, _08143930 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08143942
	.align 2, 0
_08143928: .4byte gUnk_083868C8
_0814392C: .4byte gUnk_08386838
_08143930: .4byte gUnk_08D60A80
_08143934:
	ldr r2, _08143964 @ =gUnk_083868C8
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
_08143942:
	strh r0, [r6, #0xc]
	cmp r5, #3
	bhi _08143970
	ldr r3, _08143968 @ =gUnk_08386838
	lsls r1, r5, #1
	adds r1, r1, r5
	lsls r1, r1, #1
	ldr r0, _0814396C @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrb r0, [r1]
	b _08143980
	.align 2, 0
_08143964: .4byte gUnk_083868C8
_08143968: .4byte gUnk_08386838
_0814396C: .4byte gUnk_08D60A80
_08143970:
	ldr r2, _081439D0 @ =gUnk_083868C8
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
_08143980:
	movs r4, #0
	strb r0, [r6, #0x1a]
	strh r4, [r6, #0x16]
	movs r0, #0xff
	strb r0, [r6, #0x1b]
	movs r0, #0x10
	strb r0, [r6, #0x1c]
	ldr r0, _081439D4 @ =gUnk_08386A12
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r6, #0x1f]
	adds r0, r7, #0
	movs r1, #0xa
	bl __umodsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x16
	muls r0, r1, r0
	adds r0, #0x15
	strh r0, [r6, #0x10]
	adds r0, r7, #0
	movs r1, #0xa
	bl __udivsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, #0x23
	strh r1, [r6, #0x12]
	str r4, [r6, #8]
	adds r0, r6, #0
	bl sub_08155128
_081439CA:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081439D0: .4byte gUnk_083868C8
_081439D4: .4byte gUnk_08386A12

	thumb_func_start sub_081439D8
sub_081439D8: @ 0x081439D8
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r4, r4, r0
	ldr r5, _08143A30 @ =gUnk_083868C8
	adds r0, r5, #0
	adds r0, #0xe2
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r4]
	movs r1, #0
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
	adds r0, r5, #0
	adds r0, #0xde
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	adds r0, r5, #0
	adds r0, #0xe0
	ldrh r0, [r0]
	strb r0, [r4, #0x1a]
	strh r1, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	ldr r0, _08143A34 @ =gUnk_08386A12
	adds r0, #0x29
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	movs r0, #0x15
	strh r0, [r4, #0x10]
	movs r0, #0x23
	strh r0, [r4, #0x12]
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_08155128
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143A30: .4byte gUnk_083868C8
_08143A34: .4byte gUnk_08386A12

	thumb_func_start sub_08143A38
sub_08143A38: @ 0x08143A38
	push {r4, r5, lr}
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r5, r0, r1
	adds r1, r0, #0
	adds r1, #0x2b
	adds r4, r0, #0
	adds r4, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r1, r0
	beq _08143A86
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	movs r1, #0x16
	muls r0, r1, r0
	adds r0, #0x15
	strh r0, [r5, #0x10]
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #2
	adds r1, r1, r0
	adds r1, #0x23
	strh r1, [r5, #0x12]
	movs r0, #1
	b _08143A88
_08143A86:
	movs r0, #0
_08143A88:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08143A90
sub_08143A90: @ 0x08143A90
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #2
	movs r3, #0
	movs r4, #0
	movs r5, #1
	ldr r7, _08143AD4 @ =gUnk_08386A50
_08143A9C:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08143AE6
	lsls r0, r4, #2
	adds r2, r0, r7
	ldrh r0, [r2]
	lsrs r0, r0, #8
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	beq _08143AE6
	ldr r1, _08143AD8 @ =0xFFFFFBFA
	adds r0, r1, #0
	ldrh r2, [r2]
	adds r0, r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #3
	bhi _08143ADC
	movs r0, #2
	orrs r3, r0
	adds r0, r3, #0
	ands r0, r5
	cmp r0, #0
	beq _08143AE6
	b _08143AF0
	.align 2, 0
_08143AD4: .4byte gUnk_08386A50
_08143AD8: .4byte 0xFFFFFBFA
_08143ADC:
	orrs r3, r5
	movs r0, #2
	ands r0, r3
	cmp r0, #0
	bne _08143AF0
_08143AE6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08143A9C
_08143AF0:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08143AF8
sub_08143AF8: @ 0x08143AF8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x6c
	adds r6, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #0x28
	bl memset
	add r0, sp, #0x28
	mov r8, r0
	ldr r1, _08143C28 @ =gUnk_083871B8
	movs r2, #0x20
	bl memcpy
	add r5, sp, #0x48
	add r4, sp, #0x58
	movs r0, #1
	strb r0, [r4]
	mov r0, sp
	adds r0, #0x59
	movs r1, #0x39
	strb r1, [r0]
	adds r0, #1
	strb r1, [r0]
	mov r1, sp
	adds r1, #0x5b
	movs r0, #0x3a
	strb r0, [r1]
	add r1, sp, #0x5c
	movs r0, #0x35
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x36
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x37
	strb r0, [r1]
	adds r1, #1
	movs r0, #0x38
	strb r0, [r1]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0x64
	bl __divsi3
	adds r0, #0x2a
	add r1, sp, #0x60
	strb r0, [r1]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x2a
	mov r1, sp
	adds r1, #0x61
	strb r0, [r1]
	movs r1, #0x2e
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x2a
	mov r1, sp
	adds r1, #0x62
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #0x64
	bl __divsi3
	adds r0, #0x2a
	mov r1, sp
	adds r1, #0x63
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x2a
	add r1, sp, #0x64
	strb r0, [r1]
	movs r1, #0x32
	ldrsh r0, [r6, r1]
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x2a
	mov r1, sp
	adds r1, #0x65
	strb r0, [r1]
	adds r1, #1
	movs r0, #2
	strb r0, [r1]
	adds r1, #1
	movs r0, #3
	strb r0, [r1]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r2, #0x10
	bl memcpy
	movs r7, #0
	mov r0, sp
	adds r0, #0x29
	str r0, [sp, #0x68]
	ldr r1, _08143C2C @ =gUnk_083868C8
	mov sl, r1
	ldr r0, _08143C30 @ =gUnk_08D60A80
	mov r8, r0
	movs r1, #0
	mov sb, r1
_08143BF6:
	lsls r0, r7, #2
	adds r0, r0, r7
	lsls r0, r0, #3
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r0, r1
	adds r4, r6, r0
	mov r0, sp
	adds r0, r0, r7
	adds r0, #0x48
	ldrb r5, [r0]
	cmp r5, #3
	bhi _08143C38
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	mov r1, r8
	ldrh r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _08143C34 @ =gUnk_0838683C
	b _08143C42
	.align 2, 0
_08143C28: .4byte gUnk_083871B8
_08143C2C: .4byte gUnk_083868C8
_08143C30: .4byte gUnk_08D60A80
_08143C34: .4byte gUnk_0838683C
_08143C38:
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08143C70 @ =gUnk_083868CC
_08143C42:
	adds r0, r0, r1
	ldrh r0, [r0]
	bl sub_081570B0
	str r0, [r4]
	movs r0, #0xf0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	cmp r5, #3
	bhi _08143C78
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	mov r1, r8
	ldrh r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _08143C74 @ =gUnk_08386838
	adds r0, r0, r1
	b _08143C82
	.align 2, 0
_08143C70: .4byte gUnk_083868CC
_08143C74: .4byte gUnk_08386838
_08143C78:
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
_08143C82:
	ldrh r0, [r0]
	strh r0, [r4, #0xc]
	cmp r5, #3
	bhi _08143CA4
	lsls r0, r5, #1
	adds r0, r0, r5
	lsls r0, r0, #1
	mov r1, r8
	ldrh r2, [r1]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r0, r0, r1
	ldr r1, _08143CA0 @ =gUnk_0838683A
	b _08143CAE
	.align 2, 0
_08143CA0: .4byte gUnk_0838683A
_08143CA4:
	subs r1, r5, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	ldr r1, _08143D34 @ =gUnk_083868CA
_08143CAE:
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r4, #0x1a]
	mov r0, sb
	strh r0, [r4, #0x16]
	movs r0, #0xff
	strb r0, [r4, #0x1b]
	movs r0, #0x10
	strb r0, [r4, #0x1c]
	ldr r0, _08143D38 @ =gUnk_08386A12
	adds r0, r5, r0
	ldrb r0, [r0]
	strb r0, [r4, #0x1f]
	lsls r1, r7, #1
	mov r0, sp
	adds r0, r0, r1
	adds r0, #0x28
	ldrb r0, [r0]
	strh r0, [r4, #0x10]
	ldr r0, [sp, #0x68]
	adds r1, r0, r1
	ldrb r0, [r1]
	strh r0, [r4, #0x12]
	mov r1, sb
	str r1, [r4, #8]
	cmp r7, #2
	bne _08143CE8
	movs r0, #0xb
	strb r0, [r4, #0x1f]
_08143CE8:
	cmp r7, #3
	bne _08143CFC
	movs r0, #0xe0
	lsls r0, r0, #2
	strh r0, [r4, #0x14]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	orrs r0, r1
	str r0, [r4, #8]
_08143CFC:
	adds r0, r4, #0
	bl sub_08155128
	adds r0, r7, #1
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	cmp r7, #0xf
	bhi _08143D0E
	b _08143BF6
_08143D0E:
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	mov r5, sp
	movs r1, #1
	ldrsb r1, [r6, r1]
	movs r0, #1
	rsbs r0, r0, #0
	ldrb r4, [r6, #1]
	cmp r1, r0
	bne _08143D40
	ldr r0, _08143D3C @ =gUnk_08386AF0
	ldrh r2, [r0]
	adds r3, r0, #0
	b _08143D4E
	.align 2, 0
_08143D34: .4byte gUnk_083868CA
_08143D38: .4byte gUnk_08386A12
_08143D3C: .4byte gUnk_08386AF0
_08143D40:
	ldr r1, _08143D60 @ =gUnk_08386AF0
	movs r0, #1
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r3, r1, #0
_08143D4E:
	strh r2, [r5, #0xc]
	mov r5, sp
	lsls r1, r4, #0x18
	movs r0, #0xff
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _08143D64
	ldrb r0, [r3, #2]
	b _08143D70
	.align 2, 0
_08143D60: .4byte gUnk_08386AF0
_08143D64:
	movs r0, #1
	ldrsb r0, [r6, r0]
	lsls r0, r0, #2
	adds r1, r3, #2
	adds r0, r0, r1
	ldrb r0, [r0]
_08143D70:
	movs r2, #0
	strb r0, [r5, #0x1a]
	mov r0, sp
	strh r2, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xa
	strb r0, [r1, #0x1f]
	mov r0, sp
	ldr r1, _08143DA4 @ =0x0000FFC0
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	str r2, [sp, #8]
	bl sub_08155128
	add sp, #0x6c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143DA4: .4byte 0x0000FFC0

	thumb_func_start sub_08143DA8
sub_08143DA8: @ 0x08143DA8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r8, r0
	ldr r1, _08143E38 @ =gUnk_03002488
	movs r2, #0x80
	lsls r2, r2, #3
	adds r0, r2, #0
	strh r0, [r1]
	ldr r1, _08143E3C @ =gUnk_03002540
	ldr r0, _08143E40 @ =0x06010000
	str r0, [r1]
	mov r0, sp
	ldr r1, _08143E44 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _08143E48 @ =0x040000D4
	mov r2, sp
	str r2, [r0]
	ldr r1, _08143E4C @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _08143E50 @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _08143E54 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _08143E58 @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r1, _08143E5C @ =gDispCnt
	movs r2, #0x9a
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	movs r4, #0
	ldr r0, _08143E60 @ =sub_0814565C
	mov ip, r0
	ldr r7, _08143E64 @ =gBgCntRegs
	ldr r6, _08143E68 @ =gUnk_0838665C
	movs r5, #0x1f
_08143E08:
	lsls r2, r4, #1
	adds r2, r2, r7
	lsls r3, r4, #2
	adds r0, r3, r6
	ldr r1, [r0]
	subs r0, r5, r4
	lsls r0, r0, #8
	orrs r1, r0
	orrs r1, r3
	strh r1, [r2]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _08143E08
	mov r1, ip
	mov r2, r8
	str r1, [r2, #0x38]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143E38: .4byte gUnk_03002488
_08143E3C: .4byte gUnk_03002540
_08143E40: .4byte 0x06010000
_08143E44: .4byte 0x00007FFF
_08143E48: .4byte 0x040000D4
_08143E4C: .4byte gBgPalette
_08143E50: .4byte 0x81000100
_08143E54: .4byte gObjPalette
_08143E58: .4byte gUnk_03002440
_08143E5C: .4byte gDispCnt
_08143E60: .4byte sub_0814565C
_08143E64: .4byte gBgCntRegs
_08143E68: .4byte gUnk_0838665C

	thumb_func_start sub_08143E6C
sub_08143E6C: @ 0x08143E6C
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r2, _08143ED4 @ =gUnk_08386664
	ldr r0, _08143ED8 @ =gUnk_08D60A80
	ldrh r1, [r0]
	movs r0, #0x4e
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r0, [r0]
	ldr r1, _08143EDC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r5, [r1, #0x18]
	ldrh r4, [r1, #2]
	movs r2, #0
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r2, r3
	ldr r3, _08143EE0 @ =0x0600F800
	adds r6, r2, r3
	ldr r3, _08143EE4 @ =gBgScrollRegs
	strh r2, [r3]
	strh r2, [r3, #2]
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _08143ECA
	ldr r2, _08143EE8 @ =0x040000D4
	ldr r3, _08143EEC @ =0x80000020
_08143EAC:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r6, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _08143EAC
_08143ECA:
	ldr r0, _08143EF0 @ =sub_08143EF4
	str r0, [r7, #0x38]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143ED4: .4byte gUnk_08386664
_08143ED8: .4byte gUnk_08D60A80
_08143EDC: .4byte gUnk_082D7850
_08143EE0: .4byte 0x0600F800
_08143EE4: .4byte gBgScrollRegs
_08143EE8: .4byte 0x040000D4
_08143EEC: .4byte 0x80000020
_08143EF0: .4byte sub_08143EF4

	thumb_func_start sub_08143EF4
sub_08143EF4: @ 0x08143EF4
	push {r4, r5, r6, r7, lr}
	adds r7, r0, #0
	ldr r3, _08143F60 @ =gUnk_08386664
	ldr r0, _08143F64 @ =gUnk_08386A50
	ldrb r0, [r0, #3]
	lsls r0, r0, #1
	ldr r1, _08143F68 @ =gUnk_08D60A80
	ldrh r2, [r1]
	movs r1, #0x4e
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, _08143F6C @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r5, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r6, _08143F70 @ =0x0600F340
	ldr r2, _08143F74 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _08143F78 @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _08143F54
	ldr r2, _08143F7C @ =0x040000D4
	ldr r3, _08143F80 @ =0x80000020
_08143F36:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r6, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _08143F36
_08143F54:
	ldr r0, _08143F84 @ =sub_08145718
	str r0, [r7, #0x38]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08143F60: .4byte gUnk_08386664
_08143F64: .4byte gUnk_08386A50
_08143F68: .4byte gUnk_08D60A80
_08143F6C: .4byte gUnk_082D7850
_08143F70: .4byte 0x0600F340
_08143F74: .4byte gBgScrollRegs
_08143F78: .4byte 0x06004000
_08143F7C: .4byte 0x040000D4
_08143F80: .4byte 0x80000020
_08143F84: .4byte sub_08145718

	thumb_func_start sub_08143F88
sub_08143F88: @ 0x08143F88
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	movs r1, #0
	ldr r0, _08144044 @ =gUnk_08386838
	mov ip, r0
	ldr r7, _08144048 @ =gUnk_08D60A80
	ldr r2, _0814404C @ =gUnk_08386A12
	mov r8, r2
	ldr r6, _08144050 @ =gUnk_030036A0
	movs r4, #5
	ldr r3, _08144054 @ =gUnk_030035E0
	movs r2, #0xa
_08143FA4:
	adds r0, r1, r6
	strb r4, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08143FA4
	adds r1, r5, #0
	adds r1, #0x2c
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r5, r1
	ldrh r2, [r7]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	mov r2, ip
	adds r2, #6
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrh r2, [r7]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	mov r2, ip
	adds r2, #8
	adds r1, r1, r2
	ldrh r1, [r1]
	strb r1, [r0, #0x1a]
	mov r2, r8
	ldrb r1, [r2, #1]
	strb r1, [r0, #0x1f]
	bl sub_08155128
	adds r0, r5, #0
	bl sub_08144438
	ldr r0, _08144058 @ =sub_0814405C
	str r0, [r5, #0x38]
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_0814400C:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144022
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144022:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _0814400C
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144044: .4byte gUnk_08386838
_08144048: .4byte gUnk_08D60A80
_0814404C: .4byte gUnk_08386A12
_08144050: .4byte gUnk_030036A0
_08144054: .4byte gUnk_030035E0
_08144058: .4byte sub_0814405C

	thumb_func_start sub_0814405C
sub_0814405C: @ 0x0814405C
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x2b
	strb r0, [r1]
	adds r0, r4, #0
	bl sub_081447E0
	cmp r0, #0
	bne _081440B6
	ldr r0, _0814408C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08144098
	ldr r0, _08144090 @ =0x0000021F
	bl m4aSongNumStart
	ldr r0, _08144094 @ =sub_08145848
	str r0, [r4, #0x38]
	b _081440B6
	.align 2, 0
_0814408C: .4byte gPressedKeys
_08144090: .4byte 0x0000021F
_08144094: .4byte sub_08145848
_08144098:
	adds r0, r4, #0
	bl sub_08144238
	adds r0, r4, #0
	bl sub_08143A38
	adds r0, r4, #0
	bl sub_081443D8
	adds r0, r4, #0
	bl sub_08144438
	adds r0, r4, #0
	bl sub_08144304
_081440B6:
	adds r0, r4, #0
	bl sub_081445BC
	movs r5, #0
	adds r6, r4, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r4, r0
_081440C6:
	adds r0, r6, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _081440DC
	lsls r0, r5, #2
	adds r0, r0, r5
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r4, r0
	bl sub_0815604C
_081440DC:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bls _081440C6
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r4, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_081440F8
sub_081440F8: @ 0x081440F8
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x2c
	movs r5, #0
	strb r5, [r0]
	adds r1, r6, #0
	adds r1, #0x2d
	movs r0, #1
	strb r0, [r1]
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r6, r1
	ldr r3, _08144194 @ =gUnk_08386838
	ldr r4, _08144198 @ =gUnk_08D60A80
	ldrh r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r2, r3, #6
	adds r1, r1, r2
	ldrh r1, [r1]
	strh r1, [r0, #0xc]
	ldrh r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #3
	adds r3, #8
	adds r1, r1, r3
	ldrh r1, [r1]
	strb r1, [r0, #0x1a]
	ldr r1, _0814419C @ =gUnk_08386A12
	ldrb r1, [r1, #1]
	strb r1, [r0, #0x1f]
	bl sub_08155128
	adds r0, r6, #0
	bl sub_08144510
	adds r0, r6, #0
	bl sub_081459EC
	strh r5, [r6, #0x3c]
	ldr r0, _081441A0 @ =sub_081441A8
	str r0, [r6, #0x38]
	ldr r0, _081441A4 @ =0x0000073B
	adds r1, r6, r0
	movs r0, #0xff
	strb r0, [r1]
	movs r4, #0
_0814415A:
	adds r0, r6, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144172
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_08144172:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _0814415A
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r6, r1
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08144194: .4byte gUnk_08386838
_08144198: .4byte gUnk_08D60A80
_0814419C: .4byte gUnk_08386A12
_081441A0: .4byte sub_081441A8
_081441A4: .4byte 0x0000073B

	thumb_func_start sub_081441A8
sub_081441A8: @ 0x081441A8
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	ldrh r0, [r5, #0x3c]
	adds r0, #1
	strh r0, [r5, #0x3c]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	cmp r0, #0x1d
	ble _081441C6
	ldr r0, _0814422C @ =gUnk_0203ADE0
	movs r1, #1
	ldrsb r1, [r5, r1]
	strh r1, [r0]
	ldr r0, _08144230 @ =sub_08143F88
	str r0, [r5, #0x38]
_081441C6:
	adds r0, r5, #0
	bl sub_08144718
	adds r0, r5, #0
	bl sub_081459FC
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r4, r5, r0
	adds r0, r4, #0
	bl sub_08155128
	cmp r0, #0
	bne _081441EA
	ldr r0, _08144234 @ =0x0000073B
	adds r1, r5, r0
	movs r0, #0xff
	strb r0, [r1]
_081441EA:
	adds r0, r4, #0
	bl sub_0815604C
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_081441FA:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144210
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144210:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081441FA
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0814422C: .4byte gUnk_0203ADE0
_08144230: .4byte sub_08143F88
_08144234: .4byte 0x0000073B

	thumb_func_start sub_08144238
sub_08144238: @ 0x08144238
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	adds r0, #0x2a
	movs r4, #0
	ldrsb r4, [r0, r4]
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, _081442F4 @ =gUnk_03002EB8
	ldrh r1, [r2]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08144276
	lsls r0, r3, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r3, r0, #0x18
	cmp r0, #0
	bge _08144276
	movs r3, #3
_08144276:
	ldrh r1, [r2]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08144292
	lsls r0, r3, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r3, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #3
	ble _08144292
	movs r3, #0
_08144292:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _081442AC
	lsls r0, r5, #0x18
	movs r1, #0xff
	lsls r1, r1, #0x18
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	cmp r0, #0
	bge _081442AC
	movs r5, #9
_081442AC:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _081442C8
	lsls r0, r5, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	adds r0, r0, r1
	lsrs r5, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #9
	ble _081442C8
	movs r5, #0
_081442C8:
	lsls r0, r3, #0x18
	asrs r0, r0, #0x18
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #1
	lsls r0, r5, #0x18
	asrs r0, r0, #0x18
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r1, r6, #0
	adds r1, #0x2a
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	beq _081442FC
	strb r2, [r1]
	ldr r0, _081442F8 @ =0x0000021D
	bl m4aSongNumStart
	movs r0, #1
	b _081442FE
	.align 2, 0
_081442F4: .4byte gUnk_03002EB8
_081442F8: .4byte 0x0000021D
_081442FC:
	movs r0, #0
_081442FE:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08144304
sub_08144304: @ 0x08144304
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r2, r0, #0
	adds r0, #0x2b
	adds r3, r2, #0
	adds r3, #0x2a
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r1, r0
	beq _081443C2
	adds r4, r0, #0
	adds r0, r2, #2
	adds r0, r0, r4
	ldrb r1, [r0]
	cmp r1, #0
	beq _081443B0
	ldr r3, _0814438C @ =gUnk_08386664
	ldr r1, _08144390 @ =gUnk_08386A50
	lsls r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0, #3]
	lsls r0, r0, #1
	ldr r1, _08144394 @ =gUnk_08D60A80
	ldrh r2, [r1]
	movs r1, #0x4e
	muls r1, r2, r1
	adds r0, r0, r1
	adds r0, r0, r3
	ldrh r0, [r0]
	ldr r1, _08144398 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r5, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r6, _0814439C @ =0x0600F340
	ldr r2, _081443A0 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _081443A4 @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _081443C2
	ldr r2, _081443A8 @ =0x040000D4
	ldr r3, _081443AC @ =0x80000020
_0814436A:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r5, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r6, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _0814436A
	b _081443C2
	.align 2, 0
_0814438C: .4byte gUnk_08386664
_08144390: .4byte gUnk_08386A50
_08144394: .4byte gUnk_08D60A80
_08144398: .4byte gUnk_082D7850
_0814439C: .4byte 0x0600F340
_081443A0: .4byte gBgScrollRegs
_081443A4: .4byte 0x06004000
_081443A8: .4byte 0x040000D4
_081443AC: .4byte 0x80000020
_081443B0:
	mov r0, sp
	strh r1, [r0]
	ldr r1, _081443CC @ =0x040000D4
	str r0, [r1]
	ldr r0, _081443D0 @ =0x06004000
	str r0, [r1, #4]
	ldr r0, _081443D4 @ =0x81002000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
_081443C2:
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_081443CC: .4byte 0x040000D4
_081443D0: .4byte 0x06004000
_081443D4: .4byte 0x81002000

	thumb_func_start sub_081443D8
sub_081443D8: @ 0x081443D8
	push {lr}
	adds r3, r0, #0
	ldr r1, _08144408 @ =gUnk_08386A50
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r2, [r0]
	adds r0, r3, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r2, r2, #8
	lsrs r0, r0, #8
	cmp r2, r0
	bne _0814440C
	movs r0, #0
	b _08144434
	.align 2, 0
_08144408: .4byte gUnk_08386A50
_0814440C:
	cmp r2, #1
	beq _08144416
	cmp r2, #0x10
	beq _08144424
	b _08144432
_08144416:
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r1, r3, r0
	movs r0, #0x98
	strh r0, [r1, #0x10]
	movs r0, #0x8a
	b _08144430
_08144424:
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r1, r3, r0
	movs r0, #0xb4
	strh r0, [r1, #0x10]
	movs r0, #0x79
_08144430:
	strh r0, [r1, #0x12]
_08144432:
	movs r0, #1
_08144434:
	pop {r1}
	bx r1

	thumb_func_start sub_08144438
sub_08144438: @ 0x08144438
	push {r4, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #0x28
	bl memset
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	adds r2, r0, #0
	ldr r1, _0814448C @ =gUnk_08386A50
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r1, [r0]
	subs r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r0, r4, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144486
	lsrs r0, r1, #8
	cmp r0, #1
	bne _08144486
	adds r0, r4, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r2, r0
	beq _08144486
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	adds r4, r0, #0
	cmp r2, #0
	bge _08144490
_08144486:
	movs r0, #0
	b _08144502
	.align 2, 0
_0814448C: .4byte gUnk_08386A50
_08144490:
	movs r0, #0
	str r0, [sp]
	mov r1, sp
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	mov r3, sp
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _081444B4
	ldr r0, _081444B0 @ =gUnk_08386AF0
	ldrh r2, [r0]
	adds r1, r0, #0
	b _081444BC
	.align 2, 0
_081444B0: .4byte gUnk_08386AF0
_081444B4:
	ldr r1, _081444D0 @ =gUnk_08386AF0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r2, [r0]
_081444BC:
	strh r2, [r3, #0xc]
	mov r3, sp
	asrs r2, r4, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _081444D4
	ldrb r0, [r1, #2]
	b _081444DC
	.align 2, 0
_081444D0: .4byte gUnk_08386AF0
_081444D4:
	lsls r0, r2, #2
	adds r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
_081444DC:
	movs r2, #0
	strb r0, [r3, #0x1a]
	mov r0, sp
	strh r2, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xb
	strb r0, [r1, #0x1f]
	mov r0, sp
	ldr r1, _0814450C @ =0x0000FFC0
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	str r2, [sp, #8]
	bl sub_08155128
	movs r0, #1
_08144502:
	add sp, #0x28
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_0814450C: .4byte 0x0000FFC0

	thumb_func_start sub_08144510
sub_08144510: @ 0x08144510
	push {r4, r5, lr}
	sub sp, #0x28
	adds r4, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #0x28
	bl memset
	adds r0, r4, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	ldr r1, _08144558 @ =gUnk_08386A50
	lsls r0, r0, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	movs r0, #0
	strb r3, [r4, #1]
	str r0, [sp]
	mov r1, sp
	movs r0, #0xf8
	lsls r0, r0, #3
	strh r0, [r1, #0x14]
	mov r4, sp
	lsls r0, r3, #0x18
	asrs r2, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _08144560
	ldr r0, _0814455C @ =gUnk_08386AF0
	ldrh r2, [r0]
	adds r1, r0, #0
	b _08144568
	.align 2, 0
_08144558: .4byte gUnk_08386A50
_0814455C: .4byte gUnk_08386AF0
_08144560:
	ldr r1, _0814457C @ =gUnk_08386AF0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r2, [r0]
_08144568:
	strh r2, [r4, #0xc]
	mov r5, sp
	lsls r0, r3, #0x18
	asrs r4, r0, #0x18
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, r0
	bne _08144580
	ldrb r0, [r1, #2]
	b _08144588
	.align 2, 0
_0814457C: .4byte gUnk_08386AF0
_08144580:
	lsls r0, r4, #2
	adds r1, #2
	adds r0, r0, r1
	ldrb r0, [r0]
_08144588:
	movs r2, #0
	strb r0, [r5, #0x1a]
	mov r0, sp
	strh r2, [r0, #0x16]
	mov r1, sp
	movs r0, #0xff
	strb r0, [r1, #0x1b]
	movs r0, #0x10
	strb r0, [r1, #0x1c]
	movs r0, #0xa
	strb r0, [r1, #0x1f]
	mov r0, sp
	ldr r1, _081445B8 @ =0x0000FFC0
	strh r1, [r0, #0x10]
	strh r1, [r0, #0x12]
	str r2, [sp, #8]
	bl sub_08155128
	movs r0, #1
	add sp, #0x28
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_081445B8: .4byte 0x0000FFC0

	thumb_func_start sub_081445BC
sub_081445BC: @ 0x081445BC
	push {r4, r5, lr}
	adds r2, r0, #0
	ldr r0, _08144644 @ =gUnk_08386A50
	adds r1, r2, #0
	adds r1, #0x2a
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrh r1, [r1]
	lsrs r1, r1, #8
	adds r3, r0, #0
	cmp r1, #1
	beq _081445DE
	cmp r1, #0x10
	bne _08144666
_081445DE:
	adds r0, r2, #0
	adds r0, #0x2a
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r1, [r0]
	adds r0, r2, #0
	adds r0, #0x2b
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #2
	adds r0, r0, r3
	ldrh r0, [r0]
	lsrs r1, r1, #8
	lsrs r0, r0, #8
	cmp r1, r0
	beq _08144654
	adds r1, r2, #0
	adds r1, #0x2c
	movs r0, #0
	strb r0, [r1]
	adds r1, #1
	movs r0, #1
	strb r0, [r1]
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r5, r2, r0
	ldr r2, _08144648 @ =gUnk_08386838
	ldr r3, _0814464C @ =gUnk_08D60A80
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r1, r2, #6
	adds r0, r0, r1
	ldrh r0, [r0]
	strh r0, [r5, #0xc]
	ldrh r1, [r3]
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r2, #8
	adds r0, r0, r2
	ldrh r0, [r0]
	strb r0, [r5, #0x1a]
	ldr r0, _08144650 @ =gUnk_08386A12
	ldrb r0, [r0, #1]
	b _08144700
	.align 2, 0
_08144644: .4byte gUnk_08386A50
_08144648: .4byte gUnk_08386838
_0814464C: .4byte gUnk_08D60A80
_08144650: .4byte gUnk_08386A12
_08144654:
	adds r1, r2, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1d
	bhi _0814466A
_08144666:
	movs r0, #0
	b _0814470A
_0814466A:
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	adds r3, r2, #0
	adds r3, #0x2d
	ldrb r0, [r3]
	cmp r0, #0
	bne _0814467C
	movs r1, #1
_0814467C:
	strb r1, [r3]
	adds r4, r1, #0
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r5, r2, r0
	cmp r4, #3
	bhi _081446AC
	ldr r3, _081446A4 @ =gUnk_08386838
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	ldr r0, _081446A8 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _081446BA
	.align 2, 0
_081446A4: .4byte gUnk_08386838
_081446A8: .4byte gUnk_08D60A80
_081446AC:
	ldr r2, _081446DC @ =gUnk_083868C8
	subs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
_081446BA:
	strh r0, [r5, #0xc]
	cmp r4, #3
	bhi _081446E8
	ldr r3, _081446E0 @ =gUnk_08386838
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	ldr r0, _081446E4 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrb r0, [r1]
	b _081446F8
	.align 2, 0
_081446DC: .4byte gUnk_083868C8
_081446E0: .4byte gUnk_08386838
_081446E4: .4byte gUnk_08D60A80
_081446E8:
	ldr r2, _08144710 @ =gUnk_083868C8
	subs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
_081446F8:
	strb r0, [r5, #0x1a]
	ldr r0, _08144714 @ =gUnk_08386A12
	adds r0, r4, r0
	ldrb r0, [r0]
_08144700:
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl sub_08155128
	movs r0, #1
_0814470A:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08144710: .4byte gUnk_083868C8
_08144714: .4byte gUnk_08386A12

	thumb_func_start sub_08144718
sub_08144718: @ 0x08144718
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r1, r3, #0
	adds r1, #0x2c
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _08144732
	movs r0, #0
	b _081447D2
_08144732:
	movs r0, #0
	strb r0, [r1]
	movs r1, #0
	adds r2, r3, #0
	adds r2, #0x2d
	ldrb r0, [r2]
	cmp r0, #0
	bne _08144744
	movs r1, #1
_08144744:
	strb r1, [r2]
	adds r4, r1, #0
	movs r0, #0xd5
	lsls r0, r0, #3
	adds r5, r3, r0
	cmp r4, #3
	bhi _08144774
	ldr r3, _0814476C @ =gUnk_08386838
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	ldr r0, _08144770 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r1, r1, r3
	ldrh r0, [r1]
	b _08144782
	.align 2, 0
_0814476C: .4byte gUnk_08386838
_08144770: .4byte gUnk_08D60A80
_08144774:
	ldr r2, _081447A4 @ =gUnk_083868C8
	subs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r2
	ldrh r0, [r0]
_08144782:
	strh r0, [r5, #0xc]
	cmp r4, #3
	bhi _081447B0
	ldr r3, _081447A8 @ =gUnk_08386838
	lsls r1, r4, #1
	adds r1, r1, r4
	lsls r1, r1, #1
	ldr r0, _081447AC @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	adds r3, #2
	adds r1, r1, r3
	ldrb r0, [r1]
	b _081447C0
	.align 2, 0
_081447A4: .4byte gUnk_083868C8
_081447A8: .4byte gUnk_08386838
_081447AC: .4byte gUnk_08D60A80
_081447B0:
	ldr r2, _081447D8 @ =gUnk_083868C8
	subs r1, r4, #4
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r2, #2
	adds r0, r0, r2
	ldrb r0, [r0]
_081447C0:
	strb r0, [r5, #0x1a]
	ldr r0, _081447DC @ =gUnk_08386A12
	adds r0, r4, r0
	ldrb r0, [r0]
	strb r0, [r5, #0x1f]
	adds r0, r5, #0
	bl sub_08155128
	movs r0, #1
_081447D2:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_081447D8: .4byte gUnk_083868C8
_081447DC: .4byte gUnk_08386A12

	thumb_func_start sub_081447E0
sub_081447E0: @ 0x081447E0
	push {lr}
	adds r3, r0, #0
	ldr r0, _08144818 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08144814
	adds r0, r3, #0
	adds r0, #0x2a
	movs r2, #0
	ldrsb r2, [r0, r2]
	adds r0, r3, #2
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144814
	ldr r1, _0814481C @ =gUnk_08386A50
	lsls r0, r2, #2
	adds r0, r0, r1
	ldrh r0, [r0]
	lsrs r1, r0, #8
	cmp r1, #1
	beq _08144820
	cmp r1, #0x10
	beq _08144840
_08144814:
	movs r0, #0
	b _08144856
	.align 2, 0
_08144818: .4byte gPressedKeys
_0814481C: .4byte gUnk_08386A50
_08144820:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #1
	movs r1, #1
	ldrsb r1, [r3, r1]
	cmp r0, r1
	beq _08144814
	ldr r0, _08144838 @ =sub_081440F8
	str r0, [r3, #0x38]
	ldr r0, _0814483C @ =0x00000223
	b _08144850
	.align 2, 0
_08144838: .4byte sub_081440F8
_0814483C: .4byte 0x00000223
_08144840:
	adds r0, r3, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144814
	ldr r0, _0814485C @ =sub_08144864
	str r0, [r3, #0x38]
	ldr r0, _08144860 @ =0x0000021E
_08144850:
	bl m4aSongNumStart
	movs r0, #1
_08144856:
	pop {r1}
	bx r1
	.align 2, 0
_0814485C: .4byte sub_08144864
_08144860: .4byte 0x0000021E

	thumb_func_start sub_08144864
sub_08144864: @ 0x08144864
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	movs r0, #0x19
	bl m4aSongNumStop
	ldr r0, _08144984 @ =0x0000FFFF
	strh r0, [r5, #0x30]
	ldr r1, _08144988 @ =gUnk_08386664
	ldr r0, _0814498C @ =gUnk_08D60A80
	ldrh r2, [r0]
	movs r0, #0x4e
	muls r0, r2, r0
	adds r1, #0x38
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08144990 @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r7, _08144994 @ =0x0600F340
	ldr r2, _08144998 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _0814499C @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _081448D0
	ldr r2, _081449A0 @ =0x040000D4
	ldr r3, _081449A4 @ =0x80000020
_081448B2:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r7, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _081448B2
_081448D0:
	movs r1, #0
	adds r7, r5, #0
	adds r7, #0x37
	movs r0, #0x36
	adds r0, r0, r5
	mov r8, r0
	adds r3, r5, #2
	mov sb, r3
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r0, r0, r5
	mov sl, r0
	ldr r6, _081449A8 @ =gUnk_030036A0
	movs r4, #2
	ldr r3, _081449AC @ =gUnk_030035E0
	movs r2, #0xa
_081448F0:
	adds r0, r1, r6
	strb r4, [r0]
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _081448F0
	adds r4, r7, #0
	ldrb r1, [r4]
	movs r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08144936
	ldr r3, _081449B0 @ =0x00000838
	adds r1, r5, r3
	ldr r2, _081449B4 @ =gUnk_083868C8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r0, _081449B8 @ =gUnk_08386A12
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_08144936:
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08144968
	movs r0, #0x8b
	lsls r0, r0, #4
	adds r1, r5, r0
	ldr r2, _081449B4 @ =gUnk_083868C8
	movs r3, #0x90
	lsls r3, r3, #1
	adds r0, r2, r3
	ldrh r0, [r0]
	strh r0, [r1, #0xc]
	adds r3, #2
	adds r0, r2, r3
	ldrh r0, [r0]
	strb r0, [r1, #0x1a]
	ldr r0, _081449B8 @ =gUnk_08386A12
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r1, #0x1f]
	adds r0, r1, #0
	bl sub_08155128
_08144968:
	ldrb r1, [r7]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _08144976
	mov r0, r8
	strb r6, [r0]
_08144976:
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, #0
	bne _081449C0
	ldr r0, _081449BC @ =sub_08145A50
	b _081449C6
	.align 2, 0
_08144984: .4byte 0x0000FFFF
_08144988: .4byte gUnk_08386664
_0814498C: .4byte gUnk_08D60A80
_08144990: .4byte gUnk_082D7850
_08144994: .4byte 0x0600F340
_08144998: .4byte gBgScrollRegs
_0814499C: .4byte 0x06004000
_081449A0: .4byte 0x040000D4
_081449A4: .4byte 0x80000020
_081449A8: .4byte gUnk_030036A0
_081449AC: .4byte gUnk_030035E0
_081449B0: .4byte 0x00000838
_081449B4: .4byte gUnk_083868C8
_081449B8: .4byte gUnk_08386A12
_081449BC: .4byte sub_08145A50
_081449C0:
	cmp r0, #1
	bne _081449C8
	ldr r0, _08144A08 @ =sub_08145AA8
_081449C6:
	str r0, [r5, #0x38]
_081449C8:
	movs r4, #0
_081449CA:
	mov r3, sb
	adds r0, r3, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081449E2
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_081449E2:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081449CA
	mov r0, sl
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144A08: .4byte sub_08145AA8

	thumb_func_start sub_08144A0C
sub_08144A0C: @ 0x08144A0C
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08144C1C
	cmp r0, #0
	beq _08144A1E
	adds r0, r5, #0
	bl sub_0814514C
_08144A1E:
	adds r0, r5, #0
	bl sub_08145490
	ldr r2, _08144A98 @ =gPressedKeys
	ldrh r1, [r2]
	movs r3, #2
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144A36
	ldr r0, _08144A9C @ =sub_08144B38
	str r0, [r5, #0x38]
_08144A36:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08144A5A
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144A5A
	adds r1, r5, #0
	adds r1, #0x36
	movs r0, #1
	strb r0, [r1]
	ldr r0, _08144AA0 @ =sub_08145AA8
	str r0, [r5, #0x38]
_08144A5A:
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_08144A64:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144A7A
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144A7A:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08144A64
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144A98: .4byte gPressedKeys
_08144A9C: .4byte sub_08144B38
_08144AA0: .4byte sub_08145AA8

	thumb_func_start sub_08144AA4
sub_08144AA4: @ 0x08144AA4
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl sub_08144EB4
	cmp r0, #0
	beq _08144AB6
	adds r0, r5, #0
	bl sub_0814514C
_08144AB6:
	adds r0, r5, #0
	bl sub_08145574
	ldr r2, _08144B2C @ =gPressedKeys
	ldrh r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08144ACC
	ldr r0, _08144B30 @ =sub_08144B38
	str r0, [r5, #0x38]
_08144ACC:
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08144AF0
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08144AF0
	adds r1, r5, #0
	adds r1, #0x36
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08144B34 @ =sub_08145A50
	str r0, [r5, #0x38]
_08144AF0:
	movs r4, #0
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
_08144AFA:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144B10
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144B10:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08144AFA
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144B2C: .4byte gPressedKeys
_08144B30: .4byte sub_08144B38
_08144B34: .4byte sub_08145A50

	thumb_func_start sub_08144B38
sub_08144B38: @ 0x08144B38
	push {r4, r5, r6, r7, lr}
	adds r5, r0, #0
	bl m4aMPlayAllStop
	ldr r0, _08144BF0 @ =0x0000021F
	bl m4aSongNumStart
	movs r0, #0x19
	bl m4aSongNumStart
	ldr r1, _08144BF4 @ =gUnk_08386664
	ldr r0, _08144BF8 @ =gUnk_08D60A80
	ldrh r2, [r0]
	movs r0, #0x4e
	muls r0, r2, r0
	adds r1, #0x36
	adds r0, r0, r1
	ldrh r0, [r0]
	ldr r1, _08144BFC @ =gUnk_082D7850
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r0, [r1, #8]
	ldr r6, [r1, #0x18]
	ldrh r4, [r1, #2]
	ldr r7, _08144C00 @ =0x0600F340
	ldr r2, _08144C04 @ =gBgScrollRegs
	movs r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	ldr r1, _08144C08 @ =0x06004000
	bl LZ77UnCompVram
	movs r1, #0
	cmp r1, r4
	bhs _08144BA2
	ldr r2, _08144C0C @ =0x040000D4
	ldr r3, _08144C10 @ =0x80000020
_08144B84:
	lsls r0, r1, #4
	subs r0, r0, r1
	lsls r0, r0, #2
	adds r0, r6, r0
	str r0, [r2]
	lsls r0, r1, #6
	adds r0, r7, r0
	str r0, [r2, #4]
	str r3, [r2, #8]
	ldr r0, [r2, #8]
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, r4
	blo _08144B84
_08144BA2:
	movs r1, #0
	ldr r4, _08144C14 @ =sub_08143F88
	adds r6, r5, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r5, r0
	ldr r3, _08144C18 @ =gUnk_030036A0
	movs r2, #5
_08144BB2:
	adds r0, r1, r3
	strb r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #9
	bls _08144BB2
	str r4, [r5, #0x38]
	movs r4, #0
_08144BC4:
	adds r0, r6, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144BDA
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08144BDA:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08144BC4
	adds r0, r7, #0
	bl sub_0815604C
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08144BF0: .4byte 0x0000021F
_08144BF4: .4byte gUnk_08386664
_08144BF8: .4byte gUnk_08D60A80
_08144BFC: .4byte gUnk_082D7850
_08144C00: .4byte 0x0600F340
_08144C04: .4byte gBgScrollRegs
_08144C08: .4byte 0x06004000
_08144C0C: .4byte 0x040000D4
_08144C10: .4byte 0x80000020
_08144C14: .4byte sub_08143F88
_08144C18: .4byte gUnk_030036A0

	thumb_func_start sub_08144C1C
sub_08144C1C: @ 0x08144C1C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldrh r4, [r0, #0x2e]
	adds r6, r4, #0
	movs r0, #0x2a
	mov ip, r0
	movs r5, #0
	ldr r2, _08144CA0 @ =gUnk_08386A50
	ldr r3, _08144CA4 @ =gUnk_08386B28
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	adds r1, r3, #2
	adds r1, r0, r1
	ldrh r0, [r2]
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08144CA8 @ =gPressedKeys
	mov sb, r2
	ldrh r3, [r1]
	cmp r0, r3
	beq _08144C66
	adds r2, r7, #0
_08144C50:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08144C66
	lsls r0, r5, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r3, [r1]
	cmp r0, r3
	bne _08144C50
_08144C66:
	mov r0, sl
	adds r0, #2
	adds r1, r0, r5
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08144D20
	mov r5, sb
	ldrh r2, [r5]
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144CAC
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144C9A
	b _08144E90
_08144C9A:
	movs r4, #0
	b _08144E90
	.align 2, 0
_08144CA0: .4byte gUnk_08386A50
_08144CA4: .4byte gUnk_08386B28
_08144CA8: .4byte gPressedKeys
_08144CAC:
	ldr r0, _08144CD4 @ =gUnk_03002EB8
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144CD8
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144CD0
	b _08144E90
_08144CD0:
	b _08144E3C
	.align 2, 0
_08144CD4: .4byte gUnk_03002EB8
_08144CD8:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144D00
	lsls r0, r4, #0x10
	ldr r3, _08144CFC @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	lsls r6, r6, #0x10
	cmp r0, #0
	blt _08144CF2
	b _08144E90
_08144CF2:
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08144E90
	.align 2, 0
_08144CFC: .4byte 0xFFFF0000
_08144D00:
	adds r0, r3, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	bne _08144D0C
	b _08144E90
_08144D0C:
	lsls r0, r4, #0x10
	ldr r5, _08144D1C @ =0xFFFF0000
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	cmp r0, #0
	blt _08144D1A
	b _08144E90
_08144D1A:
	b _08144C9A
	.align 2, 0
_08144D1C: .4byte 0xFFFF0000
_08144D20:
	mov r0, sb
	ldrh r5, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08144D7E
	lsls r6, r6, #0x10
	b _08144D48
_08144D32:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	ble _08144D48
	movs r4, #0
_08144D48:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144D74
	mov sb, r7
_08144D5E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144D74
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144D5E
_08144D74:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144D32
	b _08144E90
_08144D7E:
	ldr r0, _08144D90 @ =gUnk_03002EB8
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08144DDE
	lsls r6, r6, #0x10
	b _08144DA8
	.align 2, 0
_08144D90: .4byte gUnk_03002EB8
_08144D94:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	bgt _08144E3C
_08144DA8:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144DD4
	mov sb, r7
_08144DBE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144DD4
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144DBE
_08144DD4:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144D94
	b _08144E90
_08144DDE:
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08144E42
	lsls r6, r6, #0x10
	b _08144E00
_08144DEC:
	lsls r0, r4, #0x10
	ldr r1, _08144E38 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08144E00
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08144E00:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144E2C
	mov sb, r7
_08144E16:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144E2C
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144E16
_08144E2C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144DEC
	b _08144E90
	.align 2, 0
_08144E38: .4byte 0xFFFF0000
_08144E3C:
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	b _08144E90
_08144E42:
	adds r0, r2, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	beq _08144E90
	b _08144E5C
_08144E4E:
	lsls r0, r4, #0x10
	ldr r1, _08144EA0 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08144E5C
	b _08144C9A
_08144E5C:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08144E88
	mov sb, r7
_08144E72:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08144E88
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144E72
_08144E88:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144E4E
_08144E90:
	lsls r0, r4, #0x10
	cmp r0, r6
	beq _08144EA4
	mov r0, sl
	strh r4, [r0, #0x2e]
	movs r0, #1
	b _08144EA6
	.align 2, 0
_08144EA0: .4byte 0xFFFF0000
_08144EA4:
	movs r0, #0
_08144EA6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08144EB4
sub_08144EB4: @ 0x08144EB4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	ldrh r4, [r0, #0x32]
	adds r6, r4, #0
	movs r0, #0xbd
	lsls r0, r0, #1
	mov ip, r0
	movs r5, #0
	ldr r2, _08144F38 @ =gUnk_08386A50
	ldr r3, _08144F3C @ =gUnk_08386BD0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	adds r1, r3, #2
	adds r1, r0, r1
	ldrh r0, [r2]
	adds r7, r2, #0
	mov r8, r3
	ldr r2, _08144F40 @ =gPressedKeys
	mov sb, r2
	ldrh r3, [r1]
	cmp r0, r3
	beq _08144F00
	adds r2, r7, #0
_08144EEA:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0x27
	bhi _08144F00
	lsls r0, r5, #2
	adds r0, r0, r2
	ldrh r0, [r0]
	ldrh r3, [r1]
	cmp r0, r3
	bne _08144EEA
_08144F00:
	mov r0, sl
	adds r0, #2
	adds r1, r0, r5
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	beq _08144FB8
	mov r5, sb
	ldrh r2, [r5]
	movs r3, #0x40
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144F44
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144F34
	b _08145128
_08144F34:
	movs r4, #0
	b _08145128
	.align 2, 0
_08144F38: .4byte gUnk_08386A50
_08144F3C: .4byte gUnk_08386BD0
_08144F40: .4byte gPressedKeys
_08144F44:
	ldr r0, _08144F6C @ =gUnk_03002EB8
	ldrh r1, [r0]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08144F70
	lsls r0, r4, #0x10
	movs r2, #0x80
	lsls r2, r2, #9
	adds r0, r0, r2
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	lsls r6, r6, #0x10
	cmp r0, r1
	bgt _08144F68
	b _08145128
_08144F68:
	b _081450D4
	.align 2, 0
_08144F6C: .4byte gUnk_03002EB8
_08144F70:
	movs r3, #0x80
	adds r0, r3, #0
	ands r0, r2
	cmp r0, #0
	beq _08144F98
	lsls r0, r4, #0x10
	ldr r3, _08144F94 @ =0xFFFF0000
	adds r0, r0, r3
	lsrs r4, r0, #0x10
	lsls r6, r6, #0x10
	cmp r0, #0
	blt _08144F8A
	b _08145128
_08144F8A:
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	b _08145128
	.align 2, 0
_08144F94: .4byte 0xFFFF0000
_08144F98:
	adds r0, r3, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	bne _08144FA4
	b _08145128
_08144FA4:
	lsls r0, r4, #0x10
	ldr r5, _08144FB4 @ =0xFFFF0000
	adds r0, r0, r5
	lsrs r4, r0, #0x10
	cmp r0, #0
	blt _08144FB2
	b _08145128
_08144FB2:
	b _08144F34
	.align 2, 0
_08144FB4: .4byte 0xFFFF0000
_08144FB8:
	mov r0, sb
	ldrh r5, [r0]
	movs r2, #0x40
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _08145016
	lsls r6, r6, #0x10
	b _08144FE0
_08144FCA:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	ble _08144FE0
	movs r4, #0
_08144FE0:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _0814500C
	mov sb, r7
_08144FF6:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _0814500C
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08144FF6
_0814500C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08144FCA
	b _08145128
_08145016:
	ldr r0, _08145028 @ =gUnk_03002EB8
	ldrh r1, [r0]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _08145076
	lsls r6, r6, #0x10
	b _08145040
	.align 2, 0
_08145028: .4byte gUnk_03002EB8
_0814502C:
	lsls r0, r4, #0x10
	movs r1, #0x80
	lsls r1, r1, #9
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	asrs r0, r0, #0x10
	mov r1, ip
	subs r1, #1
	cmp r0, r1
	bgt _081450D4
_08145040:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _0814506C
	mov sb, r7
_08145056:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _0814506C
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _08145056
_0814506C:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _0814502C
	b _08145128
_08145076:
	movs r2, #0x80
	adds r0, r2, #0
	ands r0, r5
	cmp r0, #0
	beq _081450DA
	lsls r6, r6, #0x10
	b _08145098
_08145084:
	lsls r0, r4, #0x10
	ldr r1, _081450D0 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _08145098
	mov r0, ip
	subs r0, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08145098:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _081450C4
	mov sb, r7
_081450AE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081450C4
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _081450AE
_081450C4:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145084
	b _08145128
	.align 2, 0
_081450D0: .4byte 0xFFFF0000
_081450D4:
	lsls r0, r1, #0x10
	lsrs r4, r0, #0x10
	b _08145128
_081450DA:
	adds r0, r2, #0
	ands r0, r1
	lsls r6, r6, #0x10
	cmp r0, #0
	beq _08145128
	b _081450F4
_081450E6:
	lsls r0, r4, #0x10
	ldr r1, _08145138 @ =0xFFFF0000
	adds r0, r0, r1
	lsrs r4, r0, #0x10
	cmp r0, #0
	bge _081450F4
	b _08144F34
_081450F4:
	movs r2, #0
	lsls r0, r4, #0x10
	asrs r0, r0, #0xe
	mov r1, r8
	adds r1, #2
	adds r1, r0, r1
	ldrh r0, [r7]
	ldrh r5, [r1]
	cmp r0, r5
	beq _08145120
	mov sb, r7
_0814510A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08145120
	lsls r0, r2, #2
	add r0, sb
	ldrh r0, [r0]
	ldrh r5, [r1]
	cmp r0, r5
	bne _0814510A
_08145120:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _081450E6
_08145128:
	lsls r0, r4, #0x10
	cmp r0, r6
	beq _0814513C
	mov r0, sl
	strh r4, [r0, #0x32]
	movs r0, #1
	b _0814513E
	.align 2, 0
_08145138: .4byte 0xFFFF0000
_0814513C:
	movs r0, #0
_0814513E:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0814514C
sub_0814514C: @ 0x0814514C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r0, #0
	adds r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	bne _081451A8
	movs r0, #0x31
	mov sb, r0
	movs r2, #0
	ldr r5, _08145184 @ =gUnk_08386A50
	ldr r0, _08145188 @ =gUnk_08386B28
	ldrh r4, [r6, #0x2e]
	movs r3, #0x2e
	ldrsh r1, [r6, r3]
	lsls r1, r1, #2
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r5]
	adds r3, r6, #2
	ldr r7, _0814518C @ =gUnk_08386A12
	mov r8, r7
	b _081451A0
	.align 2, 0
_08145184: .4byte gUnk_08386A50
_08145188: .4byte gUnk_08386B28
_0814518C: .4byte gUnk_08386A12
_08145190:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081451EA
	lsls r0, r2, #2
	adds r0, r0, r5
	ldrh r0, [r0]
_081451A0:
	ldrh r7, [r1]
	cmp r0, r7
	bne _08145190
	b _081451EA
_081451A8:
	movs r0, #0x34
	mov sb, r0
	movs r2, #0
	ldr r5, _081451C8 @ =gUnk_08386A50
	ldr r0, _081451CC @ =gUnk_08386BD0
	ldrh r4, [r6, #0x32]
	movs r3, #0x32
	ldrsh r1, [r6, r3]
	lsls r1, r1, #2
	adds r0, #2
	adds r1, r1, r0
	ldrh r0, [r5]
	adds r3, r6, #2
	ldr r7, _081451D0 @ =gUnk_08386A12
	mov r8, r7
	b _081451E4
	.align 2, 0
_081451C8: .4byte gUnk_08386A50
_081451CC: .4byte gUnk_08386BD0
_081451D0: .4byte gUnk_08386A12
_081451D4:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081451EA
	lsls r0, r2, #2
	adds r0, r0, r5
	ldrh r0, [r0]
_081451E4:
	ldrh r7, [r1]
	cmp r0, r7
	bne _081451D4
_081451EA:
	adds r0, r3, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _081452E0
	mov r5, sp
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	adds r0, r4, #0
	movs r1, #0x64
	bl __divsi3
	strb r0, [r5]
	mov r5, sp
	adds r0, r4, #0
	movs r1, #0xa
	bl __divsi3
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r1, #0xa
	bl __modsi3
	strb r0, [r5, #1]
	mov r5, sp
	adds r0, r4, #0
	movs r1, #0xa
	bl __modsi3
	strb r0, [r5, #2]
	movs r5, #0
	ldr r0, _08145268 @ =gUnk_08386838
	mov r8, r0
	ldr r7, _0814526C @ =gUnk_083868C8
	adds r1, r7, #2
	mov sl, r1
_08145230:
	mov r2, sb
	adds r0, r2, r5
	lsls r1, r0, #2
	adds r1, r1, r0
	lsls r1, r1, #3
	adds r1, #0x40
	adds r3, r6, r1
	mov r1, sp
	adds r0, r1, r5
	ldrb r1, [r0]
	adds r2, r1, #0
	adds r2, #0x2a
	adds r4, r0, #0
	cmp r2, #3
	bhi _08145274
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #1
	ldr r0, _08145270 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	add r1, r8
	ldrh r0, [r1]
	b _08145280
	.align 2, 0
_08145268: .4byte gUnk_08386838
_0814526C: .4byte gUnk_083868C8
_08145270: .4byte gUnk_08D60A80
_08145274:
	adds r1, #0x26
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	adds r0, r0, r7
	ldrh r0, [r0]
_08145280:
	strh r0, [r3, #0xc]
	ldrb r1, [r4]
	adds r0, r1, #0
	adds r0, #0x2a
	cmp r0, #3
	bhi _081452B0
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #1
	ldr r0, _081452A8 @ =gUnk_08D60A80
	ldrh r2, [r0]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldr r2, _081452AC @ =gUnk_0838683A
	adds r1, r1, r2
	ldrb r0, [r1]
	b _081452BC
	.align 2, 0
_081452A8: .4byte gUnk_08D60A80
_081452AC: .4byte gUnk_0838683A
_081452B0:
	adds r1, #0x26
	lsls r0, r1, #1
	adds r0, r0, r1
	lsls r0, r0, #1
	add r0, sl
	ldrb r0, [r0]
_081452BC:
	strb r0, [r3, #0x1a]
	ldr r1, _081452DC @ =gUnk_08386A12
	ldrb r0, [r4]
	adds r0, #0x2a
	adds r0, r0, r1
	ldrb r0, [r0]
	strb r0, [r3, #0x1f]
	adds r0, r3, #0
	bl sub_08155128
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #2
	bls _08145230
	b _08145310
	.align 2, 0
_081452DC: .4byte gUnk_08386A12
_081452E0:
	mov r3, sb
	lsls r0, r3, #2
	add r0, sb
	lsls r0, r0, #3
	adds r0, #0x90
	adds r3, r6, r0
	ldr r1, _08145320 @ =gUnk_083868C8
	movs r7, #0x90
	lsls r7, r7, #1
	adds r0, r1, r7
	ldrh r0, [r0]
	strh r0, [r3, #0xc]
	movs r2, #0x91
	lsls r2, r2, #1
	adds r0, r1, r2
	ldrh r0, [r0]
	strb r0, [r3, #0x1a]
	mov r0, r8
	adds r0, #0x34
	ldrb r0, [r0]
	strb r0, [r3, #0x1f]
	adds r0, r3, #0
	bl sub_08155128
_08145310:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145320: .4byte gUnk_083868C8

	thumb_func_start sub_08145324
sub_08145324: @ 0x08145324
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r5, r0, #0
	adds r6, r5, #0
	adds r6, #0x40
	movs r1, #0xe9
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	movs r3, #0xee
	lsls r3, r3, #3
	adds r0, r5, r3
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x36
	ldrb r4, [r0]
	cmp r4, #0
	bne _08145374
	ldr r7, _08145370 @ =0x000008D8
	adds r0, r5, r7
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08145398
	movs r1, #0xf8
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	b _08145398
	.align 2, 0
_08145370: .4byte 0x000008D8
_08145374:
	cmp r4, #1
	bne _08145398
	movs r3, #0x90
	lsls r3, r3, #4
	adds r0, r5, r3
	bl sub_0815604C
	adds r0, r5, #0
	adds r0, #0x37
	ldrb r0, [r0]
	ands r4, r0
	cmp r4, #0
	beq _08145398
	movs r7, #0xf3
	lsls r7, r7, #3
	adds r0, r5, r7
	bl sub_0815604C
_08145398:
	movs r2, #0
	ldr r4, _081453B0 @ =gUnk_08386A50
	ldr r0, _081453B4 @ =gUnk_08386B28
	movs r3, #0x2e
	ldrsh r1, [r5, r3]
	lsls r1, r1, #2
	adds r3, r0, #2
	adds r1, r1, r3
	ldrh r0, [r4]
	adds r7, r5, #2
	mov r8, r7
	b _081453D0
	.align 2, 0
_081453B0: .4byte gUnk_08386A50
_081453B4: .4byte gUnk_08386B28
_081453B8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _081453D6
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r7, #0x2e
	ldrsh r1, [r5, r7]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r0]
_081453D0:
	ldrh r1, [r1]
	cmp r0, r1
	bne _081453B8
_081453D6:
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145404
	movs r3, #0x2e
	ldrsh r0, [r5, r3]
	cmp r0, #0x63
	ble _081453F2
	movs r7, #0xf5
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_0815604C
_081453F2:
	movs r1, #0x2e
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _08145404
	movs r3, #0xfa
	lsls r3, r3, #3
	adds r0, r6, r3
	bl sub_0815604C
_08145404:
	movs r7, #0xff
	lsls r7, r7, #3
	adds r0, r6, r7
	bl sub_0815604C
	movs r2, #0
	ldr r4, _08145484 @ =gUnk_08386A50
	ldr r1, _08145488 @ =gUnk_08386BD0
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	lsls r0, r0, #2
	adds r3, r1, #2
	adds r0, r0, r3
	ldrh r1, [r4]
	ldrh r0, [r0]
	cmp r1, r0
	beq _08145444
_08145426:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0x27
	bhi _08145444
	lsls r0, r2, #2
	adds r0, r0, r4
	movs r7, #0x32
	ldrsh r1, [r5, r7]
	lsls r1, r1, #2
	adds r1, r1, r3
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08145426
_08145444:
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145470
	movs r3, #0x32
	ldrsh r0, [r5, r3]
	cmp r0, #0x63
	ble _08145460
	movs r7, #0x82
	lsls r7, r7, #4
	adds r0, r6, r7
	bl sub_0815604C
_08145460:
	movs r1, #0x32
	ldrsh r0, [r5, r1]
	cmp r0, #9
	ble _08145470
	ldr r3, _0814548C @ =0x00000848
	adds r0, r6, r3
	bl sub_0815604C
_08145470:
	movs r7, #0x87
	lsls r7, r7, #4
	adds r0, r6, r7
	bl sub_0815604C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145484: .4byte gUnk_08386A50
_08145488: .4byte gUnk_08386BD0
_0814548C: .4byte 0x00000848

	thumb_func_start sub_08145490
sub_08145490: @ 0x08145490
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _081454A8 @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _081454AC
	movs r0, #0
	b _08145564
	.align 2, 0
_081454A8: .4byte gPressedKeys
_081454AC:
	movs r3, #0
	ldr r7, _08145520 @ =gUnk_08386A50
	ldr r0, _08145524 @ =gUnk_08386B28
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	lsls r1, r1, #2
	adds r5, r0, #2
	adds r1, r1, r5
	ldrh r2, [r7]
	mov r8, r0
	adds r0, r4, #2
	mov ip, r0
	ldr r6, _08145528 @ =gUnk_030016A0
	ldrh r1, [r1]
	cmp r2, r1
	beq _081454EC
	adds r2, r5, #0
_081454CE:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081454EC
	lsls r0, r3, #2
	adds r0, r0, r7
	movs r5, #0x2e
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081454CE
_081454EC:
	mov r1, ip
	adds r0, r1, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145558
	movs r2, #0x2e
	ldrsh r1, [r4, r2]
	movs r5, #0x30
	ldrsh r0, [r4, r5]
	cmp r1, r0
	beq _08145530
	ldr r1, _0814552C @ =gSongTable
	movs r2, #0x2e
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl MPlayStart
	ldrh r0, [r4, #0x2e]
	b _08145560
	.align 2, 0
_08145520: .4byte gUnk_08386A50
_08145524: .4byte gUnk_08386B28
_08145528: .4byte gUnk_030016A0
_0814552C: .4byte gSongTable
_08145530:
	ldr r0, [r6, #4]
	cmp r0, #0
	bge _08145558
	ldr r1, _08145554 @ =gSongTable
	movs r5, #0x2e
	ldrsh r0, [r4, r5]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	adds r0, r6, #0
	bl MPlayStart
	ldrh r0, [r4, #0x2e]
	b _08145560
	.align 2, 0
_08145554: .4byte gSongTable
_08145558:
	adds r0, r6, #0
	bl MPlayStop
	ldr r0, _08145570 @ =0x0000FFFF
_08145560:
	strh r0, [r4, #0x30]
	movs r0, #1
_08145564:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08145570: .4byte 0x0000FFFF

	thumb_func_start sub_08145574
sub_08145574: @ 0x08145574
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	ldr r0, _0814558C @ =gPressedKeys
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _08145590
	movs r0, #0
	b _08145610
	.align 2, 0
_0814558C: .4byte gPressedKeys
_08145590:
	movs r3, #0
	ldr r6, _081455F4 @ =gUnk_08386A50
	ldr r0, _081455F8 @ =gUnk_08386BD0
	movs r2, #0x32
	ldrsh r1, [r4, r2]
	lsls r1, r1, #2
	adds r5, r0, #2
	adds r1, r1, r5
	ldrh r2, [r6]
	mov r8, r0
	adds r7, r4, #2
	ldr r0, _081455FC @ =gUnk_030016E0
	mov ip, r0
	ldrh r1, [r1]
	cmp r2, r1
	beq _081455D0
	adds r2, r5, #0
_081455B2:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0x27
	bhi _081455D0
	lsls r0, r3, #2
	adds r0, r0, r6
	movs r5, #0x32
	ldrsh r1, [r4, r5]
	lsls r1, r1, #2
	adds r1, r1, r2
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _081455B2
_081455D0:
	adds r0, r7, r3
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145604
	ldr r1, _08145600 @ =gSongTable
	movs r2, #0x32
	ldrsh r0, [r4, r2]
	lsls r0, r0, #2
	add r0, r8
	ldrh r0, [r0]
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0]
	mov r0, ip
	bl MPlayStart
	ldrh r0, [r4, #0x32]
	b _0814560C
	.align 2, 0
_081455F4: .4byte gUnk_08386A50
_081455F8: .4byte gUnk_08386BD0
_081455FC: .4byte gUnk_030016E0
_08145600: .4byte gSongTable
_08145604:
	mov r0, ip
	bl MPlayStop
	ldr r0, _0814561C @ =0x0000FFFF
_0814560C:
	strh r0, [r4, #0x34]
	movs r0, #1
_08145610:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0814561C: .4byte 0x0000FFFF

	thumb_func_start sub_08145620
sub_08145620: @ 0x08145620
	push {r4, lr}
	ldr r0, _0814563C @ =gCurGameState
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08145640
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _08145648
	.align 2, 0
_0814563C: .4byte gCurGameState
_08145640:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_08145648:
	adds r0, r4, #0
	bl sub_081436D8
	ldr r1, [r4, #0x38]
	adds r0, r4, #0
	bl _call_via_r1
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_0814565C
sub_0814565C: @ 0x0814565C
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_08145662:
	adds r0, r4, #0
	bl sub_08145B00
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #2
	bls _08145662
	movs r4, #0
_08145674:
	adds r0, r4, #0
	bl sub_08145B2C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #7
	bls _08145674
	ldr r0, _08145690 @ =sub_08145694
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145690: .4byte sub_08145694

	thumb_func_start sub_08145694
sub_08145694: @ 0x08145694
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r2, _081456CC @ =gUnk_08386664
	ldr r0, _081456D0 @ =gUnk_08D60A80
	ldrh r1, [r0]
	movs r0, #0x4e
	muls r0, r1, r0
	adds r0, r0, r2
	ldrh r4, [r0]
	ldr r5, _081456D4 @ =gUnk_03002440
	ldr r3, [r5]
	movs r0, #0x80
	lsls r0, r0, #9
	ands r0, r3
	cmp r0, #0
	beq _081456DC
	ldr r1, _081456D8 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	movs r1, #0
	movs r2, #0x80
	lsls r2, r2, #1
	bl sub_08158334
	b _081456FA
	.align 2, 0
_081456CC: .4byte gUnk_08386664
_081456D0: .4byte gUnk_08D60A80
_081456D4: .4byte gUnk_03002440
_081456D8: .4byte gUnk_082D7850
_081456DC:
	ldr r2, _08145704 @ =0x040000D4
	ldr r1, _08145708 @ =gUnk_082D7850
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x10]
	str r0, [r2]
	ldr r0, _0814570C @ =gBgPalette
	str r0, [r2, #4]
	ldr r0, _08145710 @ =0x80000100
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	movs r0, #1
	orrs r3, r0
	str r3, [r5]
_081456FA:
	ldr r0, _08145714 @ =sub_08143E6C
	str r0, [r6, #0x38]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145704: .4byte 0x040000D4
_08145708: .4byte gUnk_082D7850
_0814570C: .4byte gBgPalette
_08145710: .4byte 0x80000100
_08145714: .4byte sub_08143E6C

	thumb_func_start sub_08145718
sub_08145718: @ 0x08145718
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0
_0814571E:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0814389C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1e
	bls _0814571E
	ldr r0, _0814573C @ =sub_08145740
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0814573C: .4byte sub_08145740

	thumb_func_start sub_08145740
sub_08145740: @ 0x08145740
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r4, #0x1f
_08145746:
	adds r0, r5, #0
	adds r1, r4, #0
	bl sub_0814389C
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145746
	adds r0, r5, #0
	bl sub_08143AF8
	adds r0, r5, #0
	bl sub_081439D8
	ldr r0, _08145770 @ =sub_08145774
	str r0, [r5, #0x38]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145770: .4byte sub_08145774

	thumb_func_start sub_08145774
sub_08145774: @ 0x08145774
	movs r1, #0
	strh r1, [r0, #0x3c]
	ldr r1, _08145780 @ =sub_08145784
	str r1, [r0, #0x38]
	bx lr
	.align 2, 0
_08145780: .4byte sub_08145784

	thumb_func_start sub_08145784
sub_08145784: @ 0x08145784
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #0x3c]
	adds r4, #1
	strh r4, [r6, #0x3c]
	ldr r5, _081457EC @ =gBldRegs
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #0xa
	bl __divsi3
	movs r1, #0x10
	subs r1, r1, r0
	strh r1, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #9
	ble _081457AE
	ldr r0, _081457F0 @ =sub_081457F4
	str r0, [r6, #0x38]
_081457AE:
	movs r4, #0
	adds r5, r6, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r6, r0
_081457B8:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081457CE
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_081457CE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081457B8
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_081457EC: .4byte gBldRegs
_081457F0: .4byte sub_081457F4

	thumb_func_start sub_081457F4
sub_081457F4: @ 0x081457F4
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _08145840 @ =gBldRegs
	movs r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	ldr r0, _08145844 @ =sub_08143F88
	str r0, [r5, #0x38]
	movs r4, #0
_08145808:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145820
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145820:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145808
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145840: .4byte gBldRegs
_08145844: .4byte sub_08143F88

	thumb_func_start sub_08145848
sub_08145848: @ 0x08145848
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r1, _08145898 @ =gBldRegs
	movs r2, #0
	movs r0, #0xbf
	strh r0, [r1]
	strh r2, [r1, #2]
	strh r2, [r1, #4]
	strh r2, [r5, #0x3c]
	ldr r0, _0814589C @ =sub_081458A0
	str r0, [r5, #0x38]
	movs r4, #0
_08145860:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145878
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145878:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145860
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145974
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145898: .4byte gBldRegs
_0814589C: .4byte sub_081458A0

	thumb_func_start sub_081458A0
sub_081458A0: @ 0x081458A0
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	ldrh r4, [r6, #0x3c]
	adds r4, #1
	strh r4, [r6, #0x3c]
	ldr r5, _08145904 @ =gBldRegs
	movs r1, #0x3c
	ldrsh r0, [r6, r1]
	lsls r0, r0, #4
	movs r1, #5
	bl __divsi3
	strh r0, [r5, #4]
	lsls r4, r4, #0x10
	asrs r4, r4, #0x10
	cmp r4, #4
	ble _081458C6
	ldr r0, _08145908 @ =sub_0814590C
	str r0, [r6, #0x38]
_081458C6:
	movs r4, #0
	adds r5, r6, #2
	movs r0, #0xd0
	lsls r0, r0, #3
	adds r7, r6, r0
_081458D0:
	adds r0, r5, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _081458E6
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r6, r0
	bl sub_0815604C
_081458E6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _081458D0
	adds r0, r7, #0
	bl sub_0815604C
	adds r0, r6, #0
	bl sub_08145974
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08145904: .4byte gBldRegs
_08145908: .4byte sub_0814590C

	thumb_func_start sub_0814590C
sub_0814590C: @ 0x0814590C
	push {lr}
	sub sp, #4
	bl m4aMPlayAllStop
	mov r0, sp
	ldr r1, _08145958 @ =0x00007FFF
	adds r3, r1, #0
	strh r3, [r0]
	ldr r0, _0814595C @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	ldr r1, _08145960 @ =gBgPalette
	str r1, [r0, #4]
	ldr r2, _08145964 @ =0x81000100
	str r2, [r0, #8]
	ldr r1, [r0, #8]
	mov r1, sp
	strh r3, [r1]
	str r1, [r0]
	ldr r1, _08145968 @ =gObjPalette
	str r1, [r0, #4]
	str r2, [r0, #8]
	ldr r0, [r0, #8]
	ldr r2, _0814596C @ =gUnk_03002440
	ldr r0, [r2]
	movs r1, #3
	orrs r0, r1
	str r0, [r2]
	ldr r0, _08145970 @ =gCurGameState
	ldr r0, [r0]
	bl GameStateDestroy
	bl sub_08138F68
	add sp, #4
	pop {r0}
	bx r0
	.align 2, 0
_08145958: .4byte 0x00007FFF
_0814595C: .4byte 0x040000D4
_08145960: .4byte gBgPalette
_08145964: .4byte 0x81000100
_08145968: .4byte gObjPalette
_0814596C: .4byte gUnk_03002440
_08145970: .4byte gCurGameState

	thumb_func_start sub_08145974
sub_08145974: @ 0x08145974
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x2a
	movs r1, #0
	ldrsb r1, [r5, r1]
	adds r0, r4, #2
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	ldr r6, _081459A0 @ =gUnk_08386A50
	lsls r0, r1, #2
	adds r0, r0, r6
	ldrh r0, [r0]
	lsrs r0, r0, #8
	cmp r0, #1
	beq _081459A4
	cmp r0, #0x10
	beq _081459D2
	b _081459E6
	.align 2, 0
_081459A0: .4byte gUnk_08386A50
_081459A4:
	movs r1, #0xda
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #2
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	movs r1, #0xdf
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
	b _081459E6
_081459D2:
	adds r0, r4, #0
	adds r0, #0x37
	ldrb r0, [r0]
	cmp r0, #0
	beq _081459E6
	movs r1, #0xd5
	lsls r1, r1, #3
	adds r0, r4, r1
	bl sub_0815604C
_081459E6:
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_081459EC
sub_081459EC: @ 0x081459EC
	movs r1, #0xe4
	lsls r1, r1, #3
	adds r0, r0, r1
	movs r1, #0x67
	strh r1, [r0, #0x10]
	movs r1, #0x81
	strh r1, [r0, #0x12]
	bx lr

	thumb_func_start sub_081459FC
sub_081459FC: @ 0x081459FC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	movs r0, #0xe4
	lsls r0, r0, #3
	adds r6, r4, r0
	ldr r5, _08145A48 @ =gUnk_08D5FE14
	movs r1, #0x3c
	ldrsh r0, [r4, r1]
	lsls r0, r0, #0xb
	movs r1, #0x1e
	bl __udivsi3
	ldr r1, _08145A4C @ =0x000003FF
	ands r1, r0
	lsls r1, r1, #1
	adds r1, r1, r5
	movs r2, #0
	ldrsh r0, [r1, r2]
	lsls r1, r0, #3
	adds r1, r1, r0
	asrs r1, r1, #0xe
	movs r0, #0x70
	subs r0, r0, r1
	strh r0, [r6, #0x10]
	movs r0, #0x3c
	ldrsh r1, [r4, r0]
	lsls r0, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #1
	movs r1, #0x1e
	bl __divsi3
	adds r0, #0x81
	strh r0, [r6, #0x12]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08145A48: .4byte gUnk_08D5FE14
_08145A4C: .4byte 0x000003FF

	thumb_func_start sub_08145A50
sub_08145A50: @ 0x08145A50
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xeb
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0x60
	strh r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _08145AA4 @ =sub_08144A0C
	str r0, [r5, #0x38]
	movs r4, #0
_08145A6C:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145A84
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145A84:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145A6C
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145AA4: .4byte sub_08144A0C

	thumb_func_start sub_08145AA8
sub_08145AA8: @ 0x08145AA8
	push {r4, r5, lr}
	adds r5, r0, #0
	movs r1, #0xeb
	lsls r1, r1, #3
	adds r0, r5, r1
	movs r1, #0x90
	strh r1, [r0]
	movs r2, #0xf0
	lsls r2, r2, #3
	adds r0, r5, r2
	strh r1, [r0]
	ldr r0, _08145AFC @ =sub_08144AA4
	str r0, [r5, #0x38]
	movs r4, #0
_08145AC4:
	adds r0, r5, #2
	adds r0, r0, r4
	ldrb r0, [r0]
	cmp r0, #0
	beq _08145ADC
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #3
	adds r0, #0x40
	adds r0, r5, r0
	bl sub_0815604C
_08145ADC:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x27
	bls _08145AC4
	movs r1, #0xd0
	lsls r1, r1, #3
	adds r0, r5, r1
	bl sub_0815604C
	adds r0, r5, #0
	bl sub_08145324
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08145AFC: .4byte sub_08144AA4

	thumb_func_start sub_08145B00
sub_08145B00: @ 0x08145B00
	sub sp, #4
	lsls r0, r0, #0x18
	mov r2, sp
	movs r1, #0
	strh r1, [r2]
	ldr r2, _08145B24 @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	lsrs r0, r0, #0xa
	movs r1, #0xc0
	lsls r1, r1, #0x13
	adds r0, r0, r1
	str r0, [r2, #4]
	ldr r0, _08145B28 @ =0x81002000
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08145B24: .4byte 0x040000D4
_08145B28: .4byte 0x81002000

	thumb_func_start sub_08145B2C
sub_08145B2C: @ 0x08145B2C
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r2, sp
	ldr r3, _08145B58 @ =0x000001FF
	adds r1, r3, #0
	strh r1, [r2]
	ldr r2, _08145B5C @ =0x040000D4
	mov r1, sp
	str r1, [r2]
	movs r1, #0x1f
	subs r1, r1, r0
	lsls r1, r1, #0xb
	movs r3, #0xc0
	lsls r3, r3, #0x13
	adds r1, r1, r3
	str r1, [r2, #4]
	ldr r0, _08145B60 @ =0x81000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	add sp, #4
	bx lr
	.align 2, 0
_08145B58: .4byte 0x000001FF
_08145B5C: .4byte 0x040000D4
_08145B60: .4byte 0x81000400
