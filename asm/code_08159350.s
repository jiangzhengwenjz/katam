	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08159350
sub_08159350: @ 0x08159350
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x2c
	adds r7, r0, #0
	adds r6, r1, #0
	bl sub_0815973C
	adds r4, r0, #0
	ldr r0, _081593D4 @ =gUnk_08D60958
	ldr r0, [r0]
	mov sb, r0
	movs r0, #1
	rsbs r0, r0, #0
	cmp sb, r0
	bne _08159374
	b _08159730
_08159374:
	adds r0, r6, #0
	bl sub_0815A184
	cmp r0, #0
	beq _08159380
	b _08159730
_08159380:
	adds r0, r7, #0
	bl sub_0815A184
	cmp r0, #0
	beq _081593FC
	ldr r1, _081593D8 @ =0x00000000
	adds r0, r6, #0
	bl __eqsf2
	adds r1, r0, #0
	cmp r1, #0
	beq _0815939A
	b _08159730
_0815939A:
	movs r0, #1
	str r0, [sp]
	ldr r0, _081593DC @ =gUnk_08D608BC
	str r0, [sp, #4]
	str r1, [sp, #0x20]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r0, sb
	cmp r0, #2
	bne _081593E8
_081593C8:
	ldr r0, _081593E0 @ =0x3FF00000
	ldr r1, _081593E4 @ =0x00000000
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	b _08159702
	.align 2, 0
_081593D4: .4byte gUnk_08D60958
_081593D8: .4byte 0x00000000
_081593DC: .4byte gUnk_08D608BC
_081593E0: .4byte 0x3FF00000
_081593E4: .4byte 0x00000000
_081593E8:
	mov r0, sp
	bl sub_08159FEC
	cmp r0, #0
	beq _081593F4
	b _08159702
_081593F4:
	bl sub_0815BD18
	movs r1, #0x21
	b _08159700
_081593FC:
	ldr r1, _08159458 @ =0x00000000
	mov r8, r1
	adds r0, r7, #0
	bl __eqsf2
	adds r5, r0, #0
	cmp r5, #0
	bne _081594EC
	adds r0, r6, #0
	mov r1, r8
	bl __eqsf2
	cmp r0, #0
	bne _08159468
	movs r0, #1
	str r0, [sp]
	ldr r0, _0815945C @ =gUnk_08D608BC
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, _08159460 @ =0x00000000
	ldr r1, _08159464 @ =0x00000000
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	mov r2, sb
	cmp r2, #0
	bne _081593C8
	mov r0, sp
	bl sub_08159FEC
	cmp r0, #0
	beq _08159450
	b _08159702
_08159450:
	bl sub_0815BD18
	movs r1, #0x21
	b _08159700
	.align 2, 0
_08159458: .4byte 0x00000000
_0815945C: .4byte gUnk_08D608BC
_08159460: .4byte 0x00000000
_08159464: .4byte 0x00000000
_08159468:
	adds r0, r6, #0
	bl sub_0815A16C
	cmp r0, #0
	bne _08159474
	b _08159730
_08159474:
	adds r0, r6, #0
	mov r1, r8
	bl __ltsf2
	cmp r0, #0
	blt _08159482
	b _08159730
_08159482:
	movs r0, #1
	str r0, [sp]
	ldr r0, _081594AC @ =gUnk_08D608BC
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r0, sb
	cmp r0, #0
	bne _081594B8
	ldr r0, _081594B0 @ =0x00000000
	ldr r1, _081594B4 @ =0x00000000
	b _081594C2
	.align 2, 0
_081594AC: .4byte gUnk_08D608BC
_081594B0: .4byte 0x00000000
_081594B4: .4byte 0x00000000
_081594B8:
	ldr r0, _081594E4 @ =gUnk_08D60950
	ldr r1, [r0, #4]
	ldr r0, [r0]
	bl __negdf2
_081594C2:
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _081594E8 @ =gUnk_08D60958
	ldr r0, [r0]
	cmp r0, #2
	beq _081594DA
	mov r0, sp
	bl sub_08159FEC
	cmp r0, #0
	beq _081594DA
	b _08159702
_081594DA:
	bl sub_0815BD18
	movs r1, #0x21
	b _08159700
	.align 2, 0
_081594E4: .4byte gUnk_08D60950
_081594E8: .4byte gUnk_08D60958
_081594EC:
	adds r0, r4, #0
	bl sub_0815A16C
	adds r5, r0, #0
	cmp r5, #0
	beq _081594FA
	b _081596A0
_081594FA:
	adds r0, r7, #0
	bl sub_0815A16C
	cmp r0, #0
	bne _08159506
	b _081596A0
_08159506:
	adds r0, r6, #0
	bl sub_0815A16C
	cmp r0, #0
	bne _08159512
	b _081596A0
_08159512:
	adds r0, r4, #0
	bl sub_0815A184
	adds r1, r0, #0
	cmp r1, #0
	beq _08159584
	movs r0, #1
	str r0, [sp]
	ldr r0, _08159548 @ =gUnk_08D608BC
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r1, sb
	cmp r1, #0
	bne _08159554
	ldr r0, _0815954C @ =0x00000000
	ldr r1, _08159550 @ =0x00000000
	b _08159558
	.align 2, 0
_08159548: .4byte gUnk_08D608BC
_0815954C: .4byte 0x00000000
_08159550: .4byte 0x00000000
_08159554:
	ldr r1, _0815957C @ =0xFFFFFFFF
	ldr r0, _08159578 @ =0x7FFFFFFF
_08159558:
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	ldr r0, _08159580 @ =gUnk_08D60958
	ldr r0, [r0]
	cmp r0, #2
	beq _08159570
	mov r0, sp
	bl sub_08159FEC
	cmp r0, #0
	beq _08159570
	b _08159702
_08159570:
	bl sub_0815BD18
	movs r1, #0x21
	b _08159700
	.align 2, 0
_08159578: .4byte 0x7FFFFFFF
_0815957C: .4byte 0xFFFFFFFF
_08159580: .4byte gUnk_08D60958
_08159584:
	movs r0, #3
	str r0, [sp]
	ldr r0, _08159604 @ =gUnk_08D608BC
	str r0, [sp, #4]
	str r1, [sp, #0x20]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	mov r2, sb
	cmp r2, #0
	bne _08159628
	ldr r0, _08159608 @ =0x47EFFFFF
	ldr r1, _0815960C @ =0xE0000000
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
	adds r0, r6, #0
	bl __extendsfdf2
	ldr r2, _08159610 @ =0x3FE00000
	ldr r3, _08159614 @ =0x00000000
	bl __muldf3
	bl __truncdfsf2
	adds r6, r0, #0
	adds r0, r7, #0
	bl __extendsfdf2
	ldr r2, _08159618 @ =0x00000000
	ldr r3, _0815961C @ =0x00000000
	bl __ltdf2
	cmp r0, #0
	blt _081595D8
	b _081596E8
_081595D8:
	adds r0, r6, #0
	bl __extendsfdf2
	bl sub_0815A000
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	bl __extendsfdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _081596E8
	ldr r0, _08159620 @ =0xC7EFFFFF
	ldr r1, _08159624 @ =0xE0000000
	b _081596E4
	.align 2, 0
_08159604: .4byte gUnk_08D608BC
_08159608: .4byte 0x47EFFFFF
_0815960C: .4byte 0xE0000000
_08159610: .4byte 0x3FE00000
_08159614: .4byte 0x00000000
_08159618: .4byte 0x00000000
_0815961C: .4byte 0x00000000
_08159620: .4byte 0xC7EFFFFF
_08159624: .4byte 0xE0000000
_08159628:
	ldr r0, _0815968C @ =gUnk_08D60950
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x24]
	str r2, [sp, #0x28]
	str r1, [sp, #0x18]
	str r2, [sp, #0x1c]
	adds r0, r6, #0
	bl __extendsfdf2
	ldr r2, _08159690 @ =0x3FE00000
	ldr r3, _08159694 @ =0x00000000
	bl __muldf3
	bl __truncdfsf2
	adds r6, r0, #0
	adds r0, r7, #0
	bl __extendsfdf2
	ldr r2, _08159698 @ =0x00000000
	ldr r3, _0815969C @ =0x00000000
	bl __ltdf2
	cmp r0, #0
	bge _081596E8
	adds r0, r6, #0
	bl __extendsfdf2
	bl sub_0815A000
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	bl __extendsfdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _081596E8
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl __negdf2
	b _081596E4
	.align 2, 0
_0815968C: .4byte gUnk_08D60950
_08159690: .4byte 0x3FE00000
_08159694: .4byte 0x00000000
_08159698: .4byte 0x00000000
_0815969C: .4byte 0x00000000
_081596A0:
	ldr r1, _0815971C @ =0x00000000
	adds r0, r4, #0
	bl __eqsf2
	adds r5, r0, #0
	cmp r5, #0
	bne _08159730
	adds r0, r7, #0
	bl sub_0815A16C
	cmp r0, #0
	beq _08159730
	adds r0, r6, #0
	bl sub_0815A16C
	cmp r0, #0
	beq _08159730
	movs r0, #4
	str r0, [sp]
	ldr r0, _08159720 @ =gUnk_08D608BC
	str r0, [sp, #4]
	str r5, [sp, #0x20]
	adds r0, r7, #0
	bl __extendsfdf2
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	adds r0, r6, #0
	bl __extendsfdf2
	str r0, [sp, #0x10]
	str r1, [sp, #0x14]
	ldr r0, _08159724 @ =0x00000000
	ldr r1, _08159728 @ =0x00000000
_081596E4:
	str r0, [sp, #0x18]
	str r1, [sp, #0x1c]
_081596E8:
	ldr r0, _0815972C @ =gUnk_08D60958
	ldr r0, [r0]
	cmp r0, #2
	beq _081596FA
	mov r0, sp
	bl sub_08159FEC
	cmp r0, #0
	bne _08159702
_081596FA:
	bl sub_0815BD18
	movs r1, #0x22
_08159700:
	str r1, [r0]
_08159702:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _08159710
	bl sub_0815BD18
	ldr r1, [sp, #0x20]
	str r1, [r0]
_08159710:
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x1c]
	bl __truncdfsf2
	b _08159732
	.align 2, 0
_0815971C: .4byte 0x00000000
_08159720: .4byte gUnk_08D608BC
_08159724: .4byte 0x00000000
_08159728: .4byte 0x00000000
_0815972C: .4byte gUnk_08D60958
_08159730:
	adds r0, r4, #0
_08159732:
	add sp, #0x2c
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}

	thumb_func_start sub_0815973C
sub_0815973C: @ 0x0815973C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x30
	adds r6, r0, #0
	str r1, [sp]
	mov sb, r6
	ldr r2, [sp]
	ldr r0, _08159764 @ =0x7FFFFFFF
	mov r7, sb
	ands r7, r0
	adds r4, r2, #0
	ands r4, r0
	cmp r4, #0
	bne _0815976C
	ldr r0, _08159768 @ =0x3F800000
	b _08159F02
	.align 2, 0
_08159764: .4byte 0x7FFFFFFF
_08159768: .4byte 0x3F800000
_0815976C:
	movs r0, #0xff
	lsls r0, r0, #0x17
	cmp r7, r0
	bgt _08159778
	cmp r4, r0
	ble _08159782
_08159778:
	adds r0, r6, #0
	ldr r1, [sp]
	bl __addsf3
	b _08159F02
_08159782:
	movs r0, #0
	str r0, [sp, #0x14]
	mov r1, sb
	cmp r1, #0
	bge _081597BE
	ldr r0, _08159798 @ =0x4B7FFFFF
	cmp r4, r0
	ble _0815979C
	movs r3, #2
	str r3, [sp, #0x14]
	b _081597BE
	.align 2, 0
_08159798: .4byte 0x4B7FFFFF
_0815979C:
	ldr r0, _081597D8 @ =0x3F7FFFFF
	cmp r4, r0
	ble _081597BE
	asrs r0, r4, #0x17
	movs r1, #0x96
	subs r1, r1, r0
	adds r5, r4, #0
	asrs r5, r1
	adds r0, r5, #0
	lsls r0, r1
	cmp r0, r4
	bne _081597BE
	movs r0, #1
	ands r5, r0
	movs r0, #2
	subs r5, r0, r5
	str r5, [sp, #0x14]
_081597BE:
	movs r0, #0xff
	lsls r0, r0, #0x17
	cmp r4, r0
	bne _08159804
	movs r0, #0xfe
	lsls r0, r0, #0x16
	cmp r7, r0
	bne _081597DC
	ldr r0, [sp]
	adds r1, r0, #0
	bl __subsf3
	b _08159F02
	.align 2, 0
_081597D8: .4byte 0x3F7FFFFF
_081597DC:
	cmp r7, r0
	ble _081597F0
	ldr r0, _081597EC @ =0x00000000
	cmp r2, #0
	bge _081597E8
	b _08159F02
_081597E8:
	ldr r0, [sp]
	b _08159F02
	.align 2, 0
_081597EC: .4byte 0x00000000
_081597F0:
	cmp r2, #0
	bge _081597FC
	ldr r0, [sp]
	bl __negsf2
	b _08159F02
_081597FC:
	ldr r0, _08159800 @ =0x00000000
	b _08159F02
	.align 2, 0
_08159800: .4byte 0x00000000
_08159804:
	movs r0, #0xfe
	lsls r0, r0, #0x16
	cmp r4, r0
	bne _08159824
	cmp r2, #0
	bge _08159820
	ldr r0, _0815981C @ =0x3F800000
	adds r1, r6, #0
	bl __divsf3
	b _08159F02
	.align 2, 0
_0815981C: .4byte 0x3F800000
_08159820:
	adds r0, r6, #0
	b _08159F02
_08159824:
	movs r0, #0x80
	lsls r0, r0, #0x17
	cmp r2, r0
	bne _08159832
	adds r0, r6, #0
	adds r1, r6, #0
	b _08159EFE
_08159832:
	movs r0, #0xfc
	lsls r0, r0, #0x16
	cmp r2, r0
	bne _08159848
	mov r0, sb
	cmp r0, #0
	blt _08159848
	adds r0, r6, #0
	bl sub_08159F10
	b _08159F02
_08159848:
	adds r0, r6, #0
	str r2, [sp, #0x2c]
	bl sub_0815A160
	mov r8, r0
	movs r0, #0xff
	lsls r0, r0, #0x17
	ldr r2, [sp, #0x2c]
	cmp r7, r0
	beq _0815986A
	cmp r7, #0
	beq _0815986A
	movs r1, #0xfe
	lsls r1, r1, #0x16
	mov sl, r1
	cmp r7, sl
	bne _081598B6
_0815986A:
	mov r4, r8
	cmp r2, #0
	bge _0815987A
	ldr r0, _0815989C @ =0x3F800000
	adds r1, r4, #0
	bl __divsf3
	adds r4, r0, #0
_0815987A:
	mov r2, sb
	cmp r2, #0
	bge _081598B2
	ldr r3, _081598A0 @ =0xC0800000
	adds r0, r7, r3
	ldr r1, [sp, #0x14]
	orrs r0, r1
	cmp r0, #0
	bne _081598A4
	adds r0, r4, #0
	adds r1, r4, #0
	bl __subsf3
	adds r1, r0, #0
	bl __divsf3
	b _081598B0
	.align 2, 0
_0815989C: .4byte 0x3F800000
_081598A0: .4byte 0xC0800000
_081598A4:
	ldr r2, [sp, #0x14]
	cmp r2, #1
	bne _081598B2
	adds r0, r4, #0
	bl __negsf2
_081598B0:
	adds r4, r0, #0
_081598B2:
	adds r0, r4, #0
	b _08159F02
_081598B6:
	mov r3, sb
	lsrs r1, r3, #0x1f
	subs r0, r1, #1
	ldr r3, [sp, #0x14]
	orrs r0, r3
	str r1, [sp, #0x28]
	cmp r0, #0
	bne _081598D6
	adds r0, r6, #0
	adds r1, r6, #0
	bl __subsf3
	adds r1, r0, #0
	bl __divsf3
	b _08159F02
_081598D6:
	movs r0, #0x9a
	lsls r0, r0, #0x17
	cmp r4, r0
	ble _081599BC
	ldr r0, _081598F0 @ =0x3F7FFFF7
	cmp r7, r0
	bgt _081598FC
	ldr r0, _081598F4 @ =0x00000000
	cmp r2, #0
	blt _081598EC
	b _08159F02
_081598EC:
	ldr r0, _081598F8 @ =0x7F800000
	b _08159F02
	.align 2, 0
_081598F0: .4byte 0x3F7FFFF7
_081598F4: .4byte 0x00000000
_081598F8: .4byte 0x7F800000
_081598FC:
	ldr r0, _08159910 @ =0x3F800007
	cmp r7, r0
	ble _0815991C
	ldr r0, _08159914 @ =0x00000000
	cmp r2, #0
	bgt _0815990A
	b _08159F02
_0815990A:
	ldr r0, _08159918 @ =0x7F800000
	b _08159F02
	.align 2, 0
_08159910: .4byte 0x3F800007
_08159914: .4byte 0x00000000
_08159918: .4byte 0x7F800000
_0815991C:
	ldr r1, _0815999C @ =0x3F800000
	adds r0, r6, #0
	bl __subsf3
	adds r6, r0, #0
	adds r1, r6, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _081599A0 @ =0x3E800000
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r0, #0
	ldr r0, _081599A4 @ =0x3EAAAAAB
	bl __subsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r0, #0
	ldr r0, _081599A8 @ =0x3F000000
	bl __subsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __mulsf3
	mov r8, r0
	ldr r1, _081599AC @ =0x3FB8AA00
	adds r0, r6, #0
	bl __mulsf3
	str r0, [sp, #0xc]
	ldr r1, _081599B0 @ =0x36ECA570
	adds r0, r6, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _081599B4 @ =0x3FB8AA3B
	mov r0, r8
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __subsf3
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl __addsf3
	adds r7, r0, #0
	ldr r0, _081599B8 @ =0xFFFFF000
	ands r7, r0
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	b _08159C14
	.align 2, 0
_0815999C: .4byte 0x3F800000
_081599A0: .4byte 0x3E800000
_081599A4: .4byte 0x3EAAAAAB
_081599A8: .4byte 0x3F000000
_081599AC: .4byte 0x3FB8AA00
_081599B0: .4byte 0x36ECA570
_081599B4: .4byte 0x3FB8AA3B
_081599B8: .4byte 0xFFFFF000
_081599BC:
	movs r0, #0
	str r0, [sp, #0x18]
	ldr r4, _081599F8 @ =0x007FFFFF
	cmp r7, r4
	bgt _081599D8
	ldr r1, _081599FC @ =0x4B800000
	mov r0, r8
	bl __mulsf3
	mov r8, r0
	movs r1, #0x18
	rsbs r1, r1, #0
	str r1, [sp, #0x18]
	mov r7, r8
_081599D8:
	ldr r0, [sp, #0x18]
	subs r0, #0x7f
	asrs r1, r7, #0x17
	adds r0, r0, r1
	str r0, [sp, #0x18]
	adds r5, r4, #0
	ands r5, r7
	adds r7, r5, #0
	mov r2, sl
	orrs r7, r2
	ldr r0, _08159A00 @ =0x001CC471
	cmp r5, r0
	bgt _08159A04
	movs r3, #0
	str r3, [sp, #0x10]
	b _08159A1C
	.align 2, 0
_081599F8: .4byte 0x007FFFFF
_081599FC: .4byte 0x4B800000
_08159A00: .4byte 0x001CC471
_08159A04:
	ldr r0, _08159C84 @ =0x005DB3D6
	movs r1, #1
	str r1, [sp, #0x10]
	cmp r5, r0
	ble _08159A1C
	movs r2, #0
	str r2, [sp, #0x10]
	ldr r3, [sp, #0x18]
	adds r3, #1
	str r3, [sp, #0x18]
	ldr r0, _08159C88 @ =0xFF800000
	adds r7, r7, r0
_08159A1C:
	mov r8, r7
	ldr r0, _08159C8C @ =gUnk_08D608C4
	ldr r1, [sp, #0x10]
	lsls r1, r1, #2
	str r1, [sp, #0x1c]
	adds r0, r1, r0
	ldr r0, [r0]
	str r0, [sp, #0x20]
	mov r0, r8
	ldr r1, [sp, #0x20]
	bl __subsf3
	str r0, [sp, #0xc]
	mov r0, r8
	ldr r1, [sp, #0x20]
	bl __addsf3
	adds r1, r0, #0
	ldr r0, _08159C90 @ =0x3F800000
	bl __divsf3
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl __mulsf3
	str r0, [sp, #8]
	ldr r5, [sp, #8]
	ldr r2, _08159C94 @ =0xFFFFF000
	ands r5, r2
	asrs r2, r7, #1
	movs r0, #0x80
	lsls r0, r0, #0x16
	orrs r2, r0
	ldr r3, [sp, #0x10]
	lsls r0, r3, #0x15
	movs r1, #0x80
	lsls r1, r1, #0xb
	adds r0, r0, r1
	adds r7, r2, r0
	adds r0, r7, #0
	ldr r1, [sp, #0x20]
	bl __subsf3
	adds r1, r0, #0
	mov r0, r8
	bl __subsf3
	mov sb, r0
	adds r0, r5, #0
	adds r1, r7, #0
	bl __mulsf3
	adds r1, r0, #0
	ldr r0, [sp, #0xc]
	bl __subsf3
	adds r7, r0, #0
	adds r0, r5, #0
	mov r1, sb
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r7, #0
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	mov r8, r0
	ldr r0, [sp, #8]
	adds r1, r0, #0
	bl __mulsf3
	mov sl, r0
	mov r1, sl
	bl __mulsf3
	adds r7, r0, #0
	ldr r1, _08159C98 @ =0x3E53F142
	mov r0, sl
	bl __mulsf3
	ldr r1, _08159C9C @ =0x3E6C3255
	bl __addsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	ldr r1, _08159CA0 @ =0x3E8BA305
	bl __addsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	ldr r1, _08159CA4 @ =0x3EAAAAAB
	bl __addsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	ldr r1, _08159CA8 @ =0x3EDB6DB7
	bl __addsf3
	adds r1, r0, #0
	mov r0, sl
	bl __mulsf3
	ldr r1, _08159CAC @ =0x3F19999A
	bl __addsf3
	adds r1, r0, #0
	adds r0, r7, #0
	bl __mulsf3
	str r0, [sp, #4]
	adds r0, r5, #0
	ldr r1, [sp, #8]
	bl __addsf3
	adds r1, r0, #0
	mov r0, r8
	bl __mulsf3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	bl __addsf3
	str r0, [sp, #4]
	adds r0, r5, #0
	adds r1, r5, #0
	bl __mulsf3
	mov sl, r0
	ldr r1, _08159CB0 @ =0x40400000
	bl __addsf3
	ldr r1, [sp, #4]
	bl __addsf3
	adds r7, r0, #0
	ldr r0, _08159C94 @ =0xFFFFF000
	ands r7, r0
	adds r0, r7, #0
	ldr r1, _08159CB0 @ =0x40400000
	bl __subsf3
	mov r1, sl
	bl __subsf3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	bl __subsf3
	mov sb, r0
	adds r0, r5, #0
	adds r1, r7, #0
	bl __mulsf3
	str r0, [sp, #0xc]
	mov r0, r8
	adds r1, r7, #0
	bl __mulsf3
	adds r5, r0, #0
	mov r0, sb
	ldr r1, [sp, #8]
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl __addsf3
	adds r7, r0, #0
	ldr r1, _08159C94 @ =0xFFFFF000
	ands r7, r1
	adds r0, r7, #0
	ldr r1, [sp, #0xc]
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __subsf3
	mov sl, r0
	ldr r1, _08159CB4 @ =0x3F763800
	adds r0, r7, #0
	bl __mulsf3
	mov r8, r0
	ldr r1, _08159CB8 @ =0x369DC3A0
	adds r0, r7, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _08159CBC @ =0x3F76384F
	mov r0, sl
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	ldr r1, _08159CC0 @ =gUnk_08D608D4
	ldr r2, [sp, #0x1c]
	adds r1, r2, r1
	ldr r1, [r1]
	bl __addsf3
	adds r5, r0, #0
	ldr r0, [sp, #0x18]
	bl __floatsisf
	adds r6, r0, #0
	mov r0, r8
	adds r1, r5, #0
	bl __addsf3
	ldr r1, _08159CC4 @ =gUnk_08D608CC
	ldr r3, [sp, #0x1c]
	adds r1, r3, r1
	ldr r1, [r1]
	mov sb, r1
	bl __addsf3
	adds r1, r6, #0
	bl __addsf3
	adds r7, r0, #0
	ldr r2, _08159C94 @ =0xFFFFF000
	ands r7, r2
	adds r0, r7, #0
	adds r1, r6, #0
	bl __subsf3
	mov r1, sb
	bl __subsf3
	mov r1, r8
	bl __subsf3
	adds r1, r0, #0
	adds r0, r5, #0
_08159C14:
	bl __subsf3
	mov r8, r0
	ldr r3, _08159C90 @ =0x3F800000
	str r3, [sp, #8]
	ldr r0, [sp, #0x28]
	subs r0, #1
	ldr r1, [sp, #0x14]
	subs r1, #1
	orrs r0, r1
	cmp r0, #0
	bne _08159C30
	ldr r0, _08159CC8 @ =0xBF800000
	str r0, [sp, #8]
_08159C30:
	ldr r0, _08159C94 @ =0xFFFFF000
	ldr r6, [sp]
	ands r6, r0
	ldr r0, [sp]
	adds r1, r6, #0
	bl __subsf3
	adds r1, r7, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r0, [sp]
	mov r1, r8
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	mov sl, r0
	adds r0, r6, #0
	adds r1, r7, #0
	bl __mulsf3
	adds r7, r0, #0
	mov r0, sl
	adds r1, r7, #0
	bl __addsf3
	adds r4, r0, #0
	adds r5, r4, #0
	movs r0, #0x86
	lsls r0, r0, #0x17
	cmp r5, r0
	ble _08159CD0
	ldr r5, _08159CCC @ =0x7149F2CA
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl __mulsf3
	adds r1, r5, #0
	b _08159EFE
	.align 2, 0
_08159C84: .4byte 0x005DB3D6
_08159C88: .4byte 0xFF800000
_08159C8C: .4byte gUnk_08D608C4
_08159C90: .4byte 0x3F800000
_08159C94: .4byte 0xFFFFF000
_08159C98: .4byte 0x3E53F142
_08159C9C: .4byte 0x3E6C3255
_08159CA0: .4byte 0x3E8BA305
_08159CA4: .4byte 0x3EAAAAAB
_08159CA8: .4byte 0x3EDB6DB7
_08159CAC: .4byte 0x3F19999A
_08159CB0: .4byte 0x40400000
_08159CB4: .4byte 0x3F763800
_08159CB8: .4byte 0x369DC3A0
_08159CBC: .4byte 0x3F76384F
_08159CC0: .4byte gUnk_08D608D4
_08159CC4: .4byte gUnk_08D608CC
_08159CC8: .4byte 0xBF800000
_08159CCC: .4byte 0x7149F2CA
_08159CD0:
	cmp r5, r0
	bne _08159D08
	ldr r1, _08159D00 @ =0x3338AA3C
	mov r0, sl
	bl __addsf3
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl __subsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __gtsf2
	cmp r0, #0
	ble _08159D5C
	ldr r5, _08159D04 @ =0x7149F2CA
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl __mulsf3
	adds r1, r5, #0
	b _08159EFE
	.align 2, 0
_08159D00: .4byte 0x3338AA3C
_08159D04: .4byte 0x7149F2CA
_08159D08:
	ldr r0, _08159D20 @ =0x7FFFFFFF
	ands r0, r5
	ldr r1, _08159D24 @ =0x43160000
	cmp r0, r1
	ble _08159D2C
	ldr r5, _08159D28 @ =0x0DA24260
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl __mulsf3
	adds r1, r5, #0
	b _08159EFE
	.align 2, 0
_08159D20: .4byte 0x7FFFFFFF
_08159D24: .4byte 0x43160000
_08159D28: .4byte 0x0DA24260
_08159D2C:
	ldr r0, _08159D54 @ =0xC3160000
	cmp r5, r0
	bne _08159D5C
	adds r0, r4, #0
	adds r1, r7, #0
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __lesf2
	cmp r0, #0
	bgt _08159D5C
	ldr r5, _08159D58 @ =0x0DA24260
	ldr r0, [sp, #8]
	adds r1, r5, #0
	bl __mulsf3
	adds r1, r5, #0
	b _08159EFE
	.align 2, 0
_08159D54: .4byte 0xC3160000
_08159D58: .4byte 0x0DA24260
_08159D5C:
	ldr r3, _08159EC4 @ =0x7FFFFFFF
	adds r0, r5, #0
	ands r0, r3
	asrs r2, r0, #0x17
	movs r1, #0
	str r1, [sp, #0x18]
	movs r1, #0xfc
	lsls r1, r1, #0x16
	cmp r0, r1
	ble _08159DB8
	adds r1, r2, #0
	subs r1, #0x7e
	movs r2, #0x80
	lsls r2, r2, #0x10
	adds r0, r2, #0
	asrs r0, r1
	adds r0, r5, r0
	str r0, [sp, #0x18]
	ands r0, r3
	asrs r0, r0, #0x17
	subs r0, #0x7f
	str r0, [sp, #0x10]
	ldr r1, _08159EC8 @ =0x007FFFFF
	adds r0, r1, #0
	ldr r3, [sp, #0x10]
	asrs r0, r3
	ldr r6, [sp, #0x18]
	bics r6, r0
	ldr r0, [sp, #0x18]
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #0x18]
	movs r0, #0x17
	subs r0, r0, r3
	ldr r1, [sp, #0x18]
	asrs r1, r0
	str r1, [sp, #0x18]
	cmp r5, #0
	bge _08159DAE
	rsbs r1, r1, #0
	str r1, [sp, #0x18]
_08159DAE:
	adds r0, r7, #0
	adds r1, r6, #0
	bl __subsf3
	adds r7, r0, #0
_08159DB8:
	mov r0, sl
	adds r1, r7, #0
	bl __addsf3
	adds r6, r0, #0
	ldr r0, _08159ECC @ =0xFFFFF000
	ands r6, r0
	ldr r1, _08159ED0 @ =0x3F317200
	adds r0, r6, #0
	bl __mulsf3
	str r0, [sp, #0xc]
	adds r0, r6, #0
	adds r1, r7, #0
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __subsf3
	ldr r1, _08159ED4 @ =0x3F317218
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _08159ED8 @ =0x35BFBE8C
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __addsf3
	mov sl, r0
	ldr r0, [sp, #0xc]
	mov r1, sl
	bl __addsf3
	adds r4, r0, #0
	ldr r1, [sp, #0xc]
	bl __subsf3
	adds r1, r0, #0
	mov r0, sl
	bl __subsf3
	mov r8, r0
	adds r0, r4, #0
	adds r1, r4, #0
	bl __mulsf3
	adds r6, r0, #0
	ldr r1, _08159EDC @ =0x3331BB4C
	bl __mulsf3
	ldr r1, _08159EE0 @ =0xB5DDEA0E
	bl __addsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	ldr r1, _08159EE4 @ =0x388AB355
	bl __addsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	ldr r1, _08159EE8 @ =0xBB360B61
	bl __addsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	ldr r1, _08159EEC @ =0x3E2AAAAB
	bl __addsf3
	adds r1, r0, #0
	adds r0, r6, #0
	bl __mulsf3
	adds r1, r0, #0
	adds r0, r4, #0
	bl __subsf3
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r7, #0
	bl __mulsf3
	adds r5, r0, #0
	ldr r1, _08159EF0 @ =0x40000000
	adds r0, r7, #0
	bl __subsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __divsf3
	adds r5, r0, #0
	adds r0, r4, #0
	mov r1, r8
	bl __mulsf3
	adds r1, r0, #0
	mov r0, r8
	bl __addsf3
	adds r1, r0, #0
	adds r0, r5, #0
	bl __subsf3
	str r0, [sp, #4]
	adds r1, r4, #0
	bl __subsf3
	adds r1, r0, #0
	ldr r0, _08159EF4 @ =0x3F800000
	bl __subsf3
	adds r4, r0, #0
	ldr r2, [sp, #0x18]
	lsls r0, r2, #0x17
	adds r5, r4, r0
	asrs r0, r5, #0x17
	cmp r0, #0
	bgt _08159EF8
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_0815A198
	adds r4, r0, #0
	b _08159EFA
	.align 2, 0
_08159EC4: .4byte 0x7FFFFFFF
_08159EC8: .4byte 0x007FFFFF
_08159ECC: .4byte 0xFFFFF000
_08159ED0: .4byte 0x3F317200
_08159ED4: .4byte 0x3F317218
_08159ED8: .4byte 0x35BFBE8C
_08159EDC: .4byte 0x3331BB4C
_08159EE0: .4byte 0xB5DDEA0E
_08159EE4: .4byte 0x388AB355
_08159EE8: .4byte 0xBB360B61
_08159EEC: .4byte 0x3E2AAAAB
_08159EF0: .4byte 0x40000000
_08159EF4: .4byte 0x3F800000
_08159EF8:
	adds r4, r5, #0
_08159EFA:
	ldr r0, [sp, #8]
	adds r1, r4, #0
_08159EFE:
	bl __mulsf3
_08159F02:
	add sp, #0x30
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start sub_08159F10
sub_08159F10: @ 0x08159F10
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	movs r1, #0xff
	lsls r1, r1, #0x17
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _08159F32
	adds r0, r4, #0
	adds r1, r4, #0
	bl __mulsf3
	adds r1, r4, #0
	bl __addsf3
	b _08159FE8
_08159F32:
	cmp r2, #0
	bgt _08159F56
	adds r0, r2, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	bics r0, r1
	cmp r0, #0
	beq _08159FE6
	cmp r2, #0
	bge _08159F56
	adds r0, r4, #0
	adds r1, r4, #0
	bl __subsf3
	adds r1, r0, #0
	bl __divsf3
	b _08159FE8
_08159F56:
	asrs r5, r2, #0x17
	cmp r5, #0
	bne _08159F74
	movs r1, #0
	movs r3, #0x80
	lsls r3, r3, #0x10
	b _08159F68
_08159F64:
	lsls r2, r2, #1
	adds r1, #1
_08159F68:
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _08159F64
	movs r0, #1
	subs r5, r0, r1
_08159F74:
	subs r5, #0x7f
	ldr r0, _08159FCC @ =0x007FFFFF
	ands r2, r0
	adds r0, #1
	orrs r2, r0
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	beq _08159F88
	lsls r2, r2, #1
_08159F88:
	asrs r5, r5, #1
	lsls r2, r2, #1
	movs r3, #0
	movs r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x11
_08159F94:
	adds r0, r3, r1
	cmp r0, r2
	bgt _08159FA0
	adds r3, r0, r1
	subs r2, r2, r0
	adds r6, r6, r1
_08159FA0:
	lsls r2, r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _08159F94
	cmp r2, #0
	beq _08159FDA
	ldr r4, _08159FD0 @ =0x3F800000
	adds r0, r4, #0
	adds r1, r4, #0
	bl __gesf2
	cmp r0, #0
	blt _08159FDA
	adds r0, r4, #0
	adds r1, r4, #0
	bl __gtsf2
	cmp r0, #0
	ble _08159FD4
	adds r6, #2
	b _08159FDA
	.align 2, 0
_08159FCC: .4byte 0x007FFFFF
_08159FD0: .4byte 0x3F800000
_08159FD4:
	movs r0, #1
	ands r0, r6
	adds r6, r6, r0
_08159FDA:
	asrs r0, r6, #1
	movs r1, #0xfc
	lsls r1, r1, #0x16
	adds r2, r0, r1
	lsls r0, r5, #0x17
	adds r4, r2, r0
_08159FE6:
	adds r0, r4, #0
_08159FE8:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start sub_08159FEC
sub_08159FEC: @ 0x08159FEC
	push {lr}
	ldr r2, [r0, #8]
	ldr r3, [r0, #0xc]
	adds r1, r3, #0
	adds r0, r2, #0
	bl __nedf2
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0815A000
sub_0815A000: @ 0x0815A000
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r7, r1, #0
	adds r6, r0, #0
	mov ip, r0
	adds r2, r1, #0
	lsrs r0, r0, #0x1f
	mov sb, r0
	mov r1, ip
	lsls r0, r1, #1
	lsrs r0, r0, #0x15
	ldr r3, _0815A090 @ =0xFFFFFC01
	adds r1, r0, r3
	cmp r1, #0x13
	bgt _0815A0E0
	cmp r1, #0
	bge _0815A0A4
	ldr r4, _0815A094 @ =0x7FFFFFFF
	mov r8, r4
	mov r0, ip
	ands r0, r4
	orrs r0, r2
	cmp r0, #0
	beq _0815A10C
	ldr r0, _0815A098 @ =0x000FFFFF
	mov r1, ip
	ands r0, r1
	orrs r2, r0
	ldr r0, _0815A09C @ =0xFFFE0000
	ands r1, r0
	mov ip, r1
	rsbs r0, r2, #0
	orrs r2, r0
	lsrs r2, r2, #0xc
	movs r0, #0x80
	lsls r0, r0, #0xc
	ands r2, r0
	adds r1, r7, #0
	adds r0, r6, #0
	mov r0, ip
	orrs r0, r2
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r1, _0815A0A0 @ =gUnk_08D6095C
	mov r2, sb
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __adddf3
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	adds r4, r1, #0
	adds r3, r0, #0
	mov r2, r8
	ands r2, r3
	mov r4, sb
	lsls r3, r4, #0x1f
	adds r0, r2, #0
	orrs r0, r3
	adds r4, r1, #0
	adds r3, r0, #0
	b _0815A154
	.align 2, 0
_0815A090: .4byte 0xFFFFFC01
_0815A094: .4byte 0x7FFFFFFF
_0815A098: .4byte 0x000FFFFF
_0815A09C: .4byte 0xFFFE0000
_0815A0A0: .4byte gUnk_08D6095C
_0815A0A4:
	ldr r3, _0815A0C8 @ =0x000FFFFF
	asrs r3, r1
	mov r0, ip
	ands r0, r3
	orrs r0, r2
	cmp r0, #0
	beq _0815A10C
	lsrs r3, r3, #1
	mov r0, ip
	ands r0, r3
	orrs r0, r2
	cmp r0, #0
	beq _0815A12C
	cmp r1, #0x13
	bne _0815A0CC
	movs r2, #0x80
	lsls r2, r2, #0x17
	b _0815A12C
	.align 2, 0
_0815A0C8: .4byte 0x000FFFFF
_0815A0CC:
	mov r0, ip
	bics r0, r3
	mov ip, r0
	movs r0, #0x80
	lsls r0, r0, #0xa
	asrs r0, r1
	mov r1, ip
	orrs r1, r0
	mov ip, r1
	b _0815A12C
_0815A0E0:
	cmp r1, #0x33
	ble _0815A0FA
	movs r0, #0x80
	lsls r0, r0, #3
	cmp r1, r0
	bne _0815A10C
	adds r1, r7, #0
	adds r0, r6, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __adddf3
	b _0815A154
_0815A0FA:
	ldr r3, _0815A114 @ =0xFFFFFBED
	adds r1, r0, r3
	movs r3, #1
	rsbs r3, r3, #0
	lsrs r3, r1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	bne _0815A118
_0815A10C:
	adds r1, r7, #0
	adds r0, r6, #0
	b _0815A154
	.align 2, 0
_0815A114: .4byte 0xFFFFFBED
_0815A118:
	lsrs r3, r3, #1
	adds r0, r2, #0
	ands r0, r3
	cmp r0, #0
	beq _0815A12C
	bics r2, r3
	movs r0, #0x80
	lsls r0, r0, #0x17
	asrs r0, r1
	orrs r2, r0
_0815A12C:
	mov r4, ip
	adds r5, r2, #0
	adds r7, r5, #0
	adds r6, r4, #0
	ldr r1, _0815A15C @ =gUnk_08D6095C
	mov r4, sb
	lsls r0, r4, #3
	adds r0, r0, r1
	ldr r4, [r0]
	ldr r5, [r0, #4]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __adddf3
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
_0815A154:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0815A15C: .4byte gUnk_08D6095C

	thumb_func_start sub_0815A160
sub_0815A160: @ 0x0815A160
	ldr r1, _0815A168 @ =0x7FFFFFFF
	ands r0, r1
	bx lr
	.align 2, 0
_0815A168: .4byte 0x7FFFFFFF

	thumb_func_start sub_0815A16C
sub_0815A16C: @ 0x0815A16C
	adds r1, r0, #0
	ldr r0, _0815A17C @ =0x7FFFFFFF
	ands r0, r1
	ldr r1, _0815A180 @ =0x80800000
	adds r0, r0, r1
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0815A17C: .4byte 0x7FFFFFFF
_0815A180: .4byte 0x80800000

	thumb_func_start sub_0815A184
sub_0815A184: @ 0x0815A184
	adds r1, r0, #0
	ldr r0, _0815A194 @ =0x7FFFFFFF
	ands r0, r1
	movs r1, #0xff
	lsls r1, r1, #0x17
	subs r0, r1, r0
	lsrs r0, r0, #0x1f
	bx lr
	.align 2, 0
_0815A194: .4byte 0x7FFFFFFF

	thumb_func_start sub_0815A198
sub_0815A198: @ 0x0815A198
	push {r4, r5, lr}
	adds r3, r0, #0
	adds r4, r1, #0
	adds r1, r3, #0
	movs r5, #0xff
	lsls r5, r5, #0x17
	adds r0, r1, #0
	ands r0, r5
	asrs r2, r0, #0x17
	cmp r2, #0
	bne _0815A1EC
	ldr r0, _0815A1BC @ =0x7FFFFFFF
	ands r1, r0
	cmp r1, #0
	bne _0815A1C0
	adds r0, r3, #0
	b _0815A278
	.align 2, 0
_0815A1BC: .4byte 0x7FFFFFFF
_0815A1C0:
	ldr r1, _0815A1E0 @ =0x4C000000
	adds r0, r3, #0
	bl __mulsf3
	adds r3, r0, #0
	adds r1, r3, #0
	adds r0, r1, #0
	ands r0, r5
	asrs r0, r0, #0x17
	adds r2, r0, #0
	subs r2, #0x19
	ldr r0, _0815A1E4 @ =0xFFFF3CB0
	cmp r4, r0
	bge _0815A1EC
	ldr r1, _0815A1E8 @ =0x0DA24260
	b _0815A272
	.align 2, 0
_0815A1E0: .4byte 0x4C000000
_0815A1E4: .4byte 0xFFFF3CB0
_0815A1E8: .4byte 0x0DA24260
_0815A1EC:
	cmp r2, #0xff
	bne _0815A1FA
	adds r0, r3, #0
	adds r1, r3, #0
	bl __addsf3
	b _0815A278
_0815A1FA:
	adds r2, r2, r4
	cmp r2, #0xfe
	ble _0815A214
	ldr r4, _0815A210 @ =0x7149F2CA
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0815A284
	adds r1, r4, #0
	b _0815A274
	.align 2, 0
_0815A210: .4byte 0x7149F2CA
_0815A214:
	cmp r2, #0
	ble _0815A22C
	ldr r0, _0815A228 @ =0x807FFFFF
	ands r1, r0
	lsls r0, r2, #0x17
	adds r3, r1, #0
	orrs r3, r0
	adds r0, r3, #0
	b _0815A278
	.align 2, 0
_0815A228: .4byte 0x807FFFFF
_0815A22C:
	movs r0, #0x19
	rsbs r0, r0, #0
	cmp r2, r0
	bgt _0815A264
	ldr r0, _0815A248 @ =0x0000C350
	cmp r4, r0
	ble _0815A250
	ldr r4, _0815A24C @ =0x7149F2CA
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0815A284
	adds r1, r4, #0
	b _0815A274
	.align 2, 0
_0815A248: .4byte 0x0000C350
_0815A24C: .4byte 0x7149F2CA
_0815A250:
	ldr r4, _0815A260 @ =0x0DA24260
	adds r0, r4, #0
	adds r1, r3, #0
	bl sub_0815A284
	adds r1, r4, #0
	b _0815A274
	.align 2, 0
_0815A260: .4byte 0x0DA24260
_0815A264:
	adds r2, #0x19
	ldr r0, _0815A27C @ =0x807FFFFF
	ands r1, r0
	lsls r0, r2, #0x17
	adds r3, r1, #0
	orrs r3, r0
	ldr r1, _0815A280 @ =0x33000000
_0815A272:
	adds r0, r3, #0
_0815A274:
	bl __mulsf3
_0815A278:
	pop {r4, r5, pc}
	.align 2, 0
_0815A27C: .4byte 0x807FFFFF
_0815A280: .4byte 0x33000000

	thumb_func_start sub_0815A284
sub_0815A284: @ 0x0815A284
	ldr r2, _0815A294 @ =0x7FFFFFFF
	ands r2, r0
	movs r0, #0x80
	lsls r0, r0, #0x18
	ands r0, r1
	orrs r0, r2
	bx lr
	.align 2, 0
_0815A294: .4byte 0x7FFFFFFF
