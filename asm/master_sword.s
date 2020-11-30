	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateMasterSwordNonCollectible
CreateMasterSwordNonCollectible: @ 0x0802538C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080253C0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080253C4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080253C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080253D0
	.align 2, 0
_080253C0: .4byte ObjectMain
_080253C4: .4byte ObjectDestroy
_080253C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080253D0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #0
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x82
	lsls r1, r1, #8
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, [r4, #0x68]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #0x68]
	movs r2, #0xc
	rsbs r2, r2, #0
	movs r0, #0xc
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #8
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	ldr r2, _08025430 @ =gUnk_08351648
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
_08025430: .4byte gUnk_08351648

	thumb_func_start sub_08025434
sub_08025434: @ 0x08025434
	ldr r1, _0802543C @ =sub_08025440
	str r1, [r0, #0x78]
	bx lr
	.align 2, 0
_0802543C: .4byte sub_08025440

	thumb_func_start sub_08025440
sub_08025440: @ 0x08025440
	ldr r1, [r0, #8]
	movs r2, #4
	orrs r1, r2
	str r1, [r0, #8]
	bx lr
	.align 2, 0

	thumb_func_start sub_0802544C
sub_0802544C: @ 0x0802544C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	movs r6, #0
	adds r4, r5, #0
	adds r4, #0xb0
	ldr r0, [r4]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0802546A
	cmp r0, #1
	beq _0802549C
	b _080254C4
_0802546A:
	ldr r2, _08025494 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _08025498 @ =0x0000065E
	adds r0, r0, r1
	ldrb r0, [r0]
	bl sub_080029BC
	ldr r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	bne _080254C4
	b _080254C8
	.align 2, 0
_08025494: .4byte gCurLevelInfo
_08025498: .4byte 0x0000065E
_0802549C:
	ldr r2, _08025590 @ =gCurLevelInfo
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r2, _08025594 @ =0x0000065E
	adds r0, r0, r2
	ldrb r0, [r0]
	bl sub_080029E4
	ldr r1, [r4]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrb r1, [r1, #0xf]
	cmp r0, r1
	bne _080254C4
	movs r6, #1
_080254C4:
	cmp r6, #0
	beq _08025582
_080254C8:
	mov sb, r5
	ldr r0, [r5, #0x40]
	lsls r0, r0, #4
	lsrs r7, r0, #0x10
	ldr r0, [r5, #0x44]
	lsls r0, r0, #4
	lsrs r6, r0, #0x10
	movs r0, #0x56
	adds r0, r0, r5
	mov r8, r0
	ldrb r4, [r0]
	lsls r1, r7, #0x18
	lsrs r1, r1, #0x18
	lsls r2, r6, #0x18
	lsrs r2, r2, #0x18
	adds r0, r4, #0
	bl sub_080025AC
	adds r1, r0, #0
	adds r0, r4, #0
	movs r2, #0
	movs r3, #0
	bl sub_08001408
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	adds r0, r5, #0
	bl sub_0800E0E4
	ldr r1, _08025598 @ =gUnk_02020EE0
	ldr r0, _0802559C @ =gUnk_0203AD3C
	ldrb r2, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r2, r0
	adds r0, r0, r1
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08025570
	ldrb r0, [r5]
	cmp r0, #0
	bne _08025530
	mov r1, r8
	ldrb r0, [r1]
	cmp r0, r2
	bne _08025570
_08025530:
	ldr r1, _080255A0 @ =gUnk_08D60FA4
	ldr r4, _080255A4 @ =gSongTable
	ldr r2, _080255A8 @ =0x00000FF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _08025556
	movs r1, #0xff
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _08025570
_08025556:
	cmp r3, #0
	beq _08025568
	ldr r0, _080255AC @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _08025570
_08025568:
	movs r0, #0xff
	lsls r0, r0, #1
	bl m4aSongNumStart
_08025570:
	lsls r1, r7, #0x10
	asrs r1, r1, #0x10
	lsls r2, r6, #0x10
	asrs r2, r2, #0x10
	mov r0, sb
	bl sub_0800E0E4
	ldr r0, _080255B0 @ =nullsub_115
	str r0, [r5, #0x78]
_08025582:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08025590: .4byte gCurLevelInfo
_08025594: .4byte 0x0000065E
_08025598: .4byte gUnk_02020EE0
_0802559C: .4byte gUnk_0203AD3C
_080255A0: .4byte gUnk_08D60FA4
_080255A4: .4byte gSongTable
_080255A8: .4byte 0x00000FF4
_080255AC: .4byte gUnk_0203AD10
_080255B0: .4byte nullsub_115
