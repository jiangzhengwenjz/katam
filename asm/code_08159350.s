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
	bl __ieee754_powf
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
	bl isnanf
	cmp r0, #0
	beq _08159380
	b _08159730
_08159380:
	adds r0, r7, #0
	bl isnanf
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
	bl matherr
	cmp r0, #0
	beq _081593F4
	b _08159702
_081593F4:
	bl __errno
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
	bl matherr
	cmp r0, #0
	beq _08159450
	b _08159702
_08159450:
	bl __errno
	movs r1, #0x21
	b _08159700
	.align 2, 0
_08159458: .4byte 0x00000000
_0815945C: .4byte gUnk_08D608BC
_08159460: .4byte 0x00000000
_08159464: .4byte 0x00000000
_08159468:
	adds r0, r6, #0
	bl finitef
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
	bl matherr
	cmp r0, #0
	beq _081594DA
	b _08159702
_081594DA:
	bl __errno
	movs r1, #0x21
	b _08159700
	.align 2, 0
_081594E4: .4byte gUnk_08D60950
_081594E8: .4byte gUnk_08D60958
_081594EC:
	adds r0, r4, #0
	bl finitef
	adds r5, r0, #0
	cmp r5, #0
	beq _081594FA
	b _081596A0
_081594FA:
	adds r0, r7, #0
	bl finitef
	cmp r0, #0
	bne _08159506
	b _081596A0
_08159506:
	adds r0, r6, #0
	bl finitef
	cmp r0, #0
	bne _08159512
	b _081596A0
_08159512:
	adds r0, r4, #0
	bl isnanf
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
	bl matherr
	cmp r0, #0
	beq _08159570
	b _08159702
_08159570:
	bl __errno
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
	bl rint
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
	bl rint
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
	bl finitef
	cmp r0, #0
	beq _08159730
	adds r0, r6, #0
	bl finitef
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
	bl matherr
	cmp r0, #0
	bne _08159702
_081596FA:
	bl __errno
	movs r1, #0x22
_08159700:
	str r1, [r0]
_08159702:
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _08159710
	bl __errno
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
