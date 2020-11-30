	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start CreateWiz
CreateWiz: @ 0x080E7D74
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E7DA8 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E7DAC @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E7DB0
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080E7DB8
	.align 2, 0
_080E7DA8: .4byte ObjectMain
_080E7DAC: .4byte ObjectDestroy
_080E7DB0:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080E7DB8:
	adds r4, r0, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0x5c]
	movs r1, #8
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	ldr r1, _080E7EA4 @ =0x001080A0
	orrs r0, r1
	str r0, [r4, #0x5c]
	ldr r0, [r4, #0xc]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x12
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0xe
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x14
	rsbs r1, r1, #0
	movs r2, #0x10
	rsbs r2, r2, #0
	movs r0, #0x10
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #0x10
	bl sub_0803E2B0
	movs r1, #7
	rsbs r1, r1, #0
	movs r2, #0xa
	rsbs r2, r2, #0
	movs r0, #0x12
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #7
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080EAD0C
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	str r0, [r4, #0x7c]
	ldr r2, _080E7EA8 @ =gCurLevelInfo
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080E7EAC @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
	adds r0, r5, #0
	movs r1, #0
	bl sub_08002A1C
	ldr r2, _080E7EB0 @ =gUnk_02020EE0
	ldr r0, _080E7EB4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080E7E98
	ldr r0, _080E7EB8 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080E7E98
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080E7E98:
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E7EA4: .4byte 0x001080A0
_080E7EA8: .4byte gCurLevelInfo
_080E7EAC: .4byte 0x0000065E
_080E7EB0: .4byte gUnk_02020EE0
_080E7EB4: .4byte gUnk_0203AD3C
_080E7EB8: .4byte gUnk_0203AD20

	thumb_func_start sub_080E7EBC
sub_080E7EBC: @ 0x080E7EBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	adds r5, r0, #0
	bl sub_0803D368
	adds r6, r0, #0
	adds r7, r5, #0
	adds r7, #0xac
	str r6, [r7]
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	ldr r0, [r6, #0xc]
	movs r1, #0x80
	lsls r1, r1, #8
	ands r0, r1
	cmp r0, #0
	bne _080E7F8A
	adds r0, r5, #0
	adds r0, #0x60
	adds r1, r6, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080E7F8A
	ldr r1, [r5, #0x40]
	ldr r2, [r5, #0x44]
	adds r0, r5, #0
	adds r0, #0xb0
	ldr r4, [r0]
	movs r3, #0x1a
	ldrsh r0, [r4, r3]
	mov ip, r0
	movs r3, #0x1c
	ldrsh r0, [r4, r3]
	str r0, [sp]
	ldrh r0, [r4, #0x1e]
	str r0, [sp, #4]
	ldrh r0, [r4, #0x20]
	str r0, [sp, #8]
	adds r0, r6, #0
	mov r3, ip
	bl sub_08039430
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080E7F8A
	ldr r3, _080E7F94 @ =gCurLevelInfo
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	movs r2, #0xcd
	lsls r2, r2, #3
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa0
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa4
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa4
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa6
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xa8
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r1, r5, #0
	adds r1, #0xa8
	strh r0, [r1]
	ldr r0, [r7]
	adds r0, #0x56
	ldrb r0, [r0]
	muls r0, r2, r0
	adds r1, r3, #0
	adds r1, #0xac
	adds r0, r0, r1
	ldr r0, [r0]
	asrs r0, r0, #8
	adds r2, r5, #0
	adds r2, #0xaa
	strh r0, [r2]
	adds r0, r5, #0
	bl sub_080EABC0
_080E7F8A:
	add sp, #0xc
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E7F94: .4byte gCurLevelInfo

	thumb_func_start sub_080E7F98
sub_080E7F98: @ 0x080E7F98
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	cmp r0, #1
	beq _080E7FAE
	cmp r0, #0x20
	bne _080E8016
_080E7FAE:
	ldr r1, _080E8030 @ =gUnk_02020EE0
	ldr r0, _080E8034 @ =gUnk_0203AD3C
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
	bne _080E8016
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E7FDA
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E8016
_080E7FDA:
	ldr r1, _080E8038 @ =gUnk_08D60FA4
	ldr r5, _080E803C @ =gSongTable
	ldr r2, _080E8040 @ =0x00000D0C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E7FFE
	ldr r1, _080E8044 @ =0x00000D08
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E8016
_080E7FFE:
	cmp r3, #0
	beq _080E8010
	ldr r0, _080E8048 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E8016
_080E8010:
	ldr r0, _080E804C @ =0x000001A1
	bl m4aSongNumStart
_080E8016:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E8028
	adds r0, r4, #0
	bl sub_080EAC18
_080E8028:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E8030: .4byte gUnk_02020EE0
_080E8034: .4byte gUnk_0203AD3C
_080E8038: .4byte gUnk_08D60FA4
_080E803C: .4byte gSongTable
_080E8040: .4byte 0x00000D0C
_080E8044: .4byte 0x00000D08
_080E8048: .4byte gUnk_0203AD10
_080E804C: .4byte 0x000001A1

	thumb_func_start sub_080E8050
sub_080E8050: @ 0x080E8050
	push {r4, r5, lr}
	adds r4, r0, #0
	ldrb r1, [r4, #1]
	cmp r1, #0x2c
	bhi _080E80CE
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080E80CE
	ldr r1, _080E8154 @ =gUnk_02020EE0
	ldr r0, _080E8158 @ =gUnk_0203AD3C
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
	bne _080E80CE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E808E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E80CE
_080E808E:
	ldr r1, _080E815C @ =gUnk_08D60FA4
	ldr r5, _080E8160 @ =gSongTable
	ldr r2, _080E8164 @ =0x00000D14
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E80B4
	movs r1, #0xd1
	lsls r1, r1, #4
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E80CE
_080E80B4:
	cmp r3, #0
	beq _080E80C6
	ldr r0, _080E8168 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E80CE
_080E80C6:
	movs r0, #0xd1
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E80CE:
	ldrb r0, [r4, #1]
	cmp r0, #0x59
	bne _080E813C
	ldr r1, _080E8154 @ =gUnk_02020EE0
	ldr r0, _080E8158 @ =gUnk_0203AD3C
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
	bne _080E813C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E8100
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E813C
_080E8100:
	ldr r1, _080E815C @ =gUnk_08D60FA4
	ldr r5, _080E8160 @ =gSongTable
	ldr r2, _080E816C @ =0x00000D1C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8124
	ldr r1, _080E8170 @ =0x00000D18
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E813C
_080E8124:
	cmp r3, #0
	beq _080E8136
	ldr r0, _080E8168 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E813C
_080E8136:
	ldr r0, _080E8174 @ =0x000001A3
	bl m4aSongNumStart
_080E813C:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E814C
	adds r0, r4, #0
	bl sub_080EAC48
_080E814C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E8154: .4byte gUnk_02020EE0
_080E8158: .4byte gUnk_0203AD3C
_080E815C: .4byte gUnk_08D60FA4
_080E8160: .4byte gSongTable
_080E8164: .4byte 0x00000D14
_080E8168: .4byte gUnk_0203AD10
_080E816C: .4byte 0x00000D1C
_080E8170: .4byte 0x00000D18
_080E8174: .4byte 0x000001A3

	thumb_func_start sub_080E8178
sub_080E8178: @ 0x080E8178
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, _080E81A8 @ =sub_080EACD8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080E81B0
	ldr r0, _080E81AC @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080E81B6
	.align 2, 0
_080E81A8: .4byte sub_080EACD8
_080E81AC: .4byte 0xFFFFFF00
_080E81B0:
	ldr r0, _080E82A8 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080E81B6:
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r0, r4, #0
	bl sub_08034E14
	adds r1, r0, #0
	cmp r1, #0
	beq _080E81D2
	movs r0, #0
	strb r0, [r1, #9]
_080E81D2:
	adds r0, r4, #0
	adds r0, #0x82
	ldrb r6, [r0]
	adds r3, r6, #0
	subs r3, #0x38
	ldr r2, _080E82AC @ =gCurLevelInfo
	subs r0, #0x2c
	ldrb r1, [r0]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r2
	ldr r1, _080E82B0 @ =0x0000065E
	adds r0, r0, r1
	ldrb r5, [r0]
	lsls r3, r3, #0x10
	asrs r1, r3, #0x10
	cmp r1, #0
	blt _080E82A0
	ldr r0, _080E82B4 @ =gUnk_08352D80
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _080E82A0
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrh r1, [r0, #0x22]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	bne _080E82A0
	adds r0, r6, #0
	subs r0, #0x43
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r3, #0
	adds r7, r4, #0
	adds r7, #0x60
	cmp r0, #0xf
	bls _080E8260
	movs r4, #1
_080E8228:
	subs r1, r4, #1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r0, r5, #0
	bl sub_08002A2C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	adds r2, r4, #0
	bl sub_08002A44
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #1
	bls _080E8228
	adds r0, r5, #0
	bl sub_08002A0C
	adds r1, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r0, r5, #0
	movs r2, #0
	bl sub_08002A44
_080E8260:
	ldr r1, _080E82B4 @ =gUnk_08352D80
	asrs r0, r6, #0xf
	adds r0, r0, r1
	ldrh r1, [r0]
	adds r0, r5, #0
	bl sub_08002A1C
	ldr r2, _080E82B8 @ =gUnk_02020EE0
	ldr r0, _080E82BC @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080E82A0
	ldr r0, _080E82C0 @ =gUnk_0203AD20
	ldr r0, [r0]
	movs r1, #4
	ands r0, r1
	cmp r0, #0
	bne _080E82A0
	adds r0, r5, #0
	bl sub_08002A0C
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	bl m4aSongNumStartOrChange
_080E82A0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E82A8: .4byte 0xFFFFFF00
_080E82AC: .4byte gCurLevelInfo
_080E82B0: .4byte 0x0000065E
_080E82B4: .4byte gUnk_08352D80
_080E82B8: .4byte gUnk_02020EE0
_080E82BC: .4byte gUnk_0203AD3C
_080E82C0: .4byte gUnk_0203AD20

	thumb_func_start sub_080E82C4
sub_080E82C4: @ 0x080E82C4
	push {r4, lr}
	adds r4, r0, #0
	adds r0, #0x80
	movs r1, #0
	ldrsh r0, [r0, r1]
	cmp r0, #0
	bgt _080E82DA
	adds r0, r4, #0
	bl sub_080EAFDC
	b _080E83A0
_080E82DA:
	ldr r2, _080E82FC @ =sub_080E83A8
	adds r0, r4, #0
	movs r1, #0
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080E8304
	ldr r0, _080E8300 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080E830A
	.align 2, 0
_080E82FC: .4byte sub_080E83A8
_080E8300: .4byte 0xFFFFFF00
_080E8304:
	ldr r0, _080E8350 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080E830A:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080E8354 @ =gUnk_08351530
	ldr r0, _080E8358 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r3, #0
	ldrsh r1, [r2, r3]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E8372
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8360
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E835C
	movs r0, #0x14
	b _080E839E
	.align 2, 0
_080E8350: .4byte 0xFFFFFF00
_080E8354: .4byte gUnk_08351530
_080E8358: .4byte gUnk_0203AD30
_080E835C:
	movs r0, #0x1e
	b _080E839E
_080E8360:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E836E
	movs r0, #8
	b _080E839E
_080E836E:
	movs r0, #0x10
	b _080E839E
_080E8372:
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E838E
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E838A
	movs r0, #0x28
	b _080E839E
_080E838A:
	movs r0, #0x5a
	b _080E839E
_080E838E:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E839C
	movs r0, #0x1e
	b _080E839E
_080E839C:
	movs r0, #0x3c
_080E839E:
	strh r0, [r4, #4]
_080E83A0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E83A8
sub_080E83A8: @ 0x080E83A8
	push {lr}
	adds r3, r0, #0
	ldr r0, [r3, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r3, #8]
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E842A
	adds r1, r3, #0
	adds r1, #0x85
	ldrb r0, [r1]
	cmp r0, #0
	beq _080E83D6
	movs r0, #0
	strb r0, [r1]
	adds r0, r3, #0
	bl sub_080EAE98
	b _080E842A
_080E83D6:
	adds r0, #1
	strb r0, [r1]
	ldr r2, _080E8400 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8404 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8408 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	cmp r1, #1
	beq _080E8414
	cmp r1, #1
	blo _080E840C
	cmp r1, #2
	beq _080E841C
	cmp r1, #3
	beq _080E8424
	b _080E842A
	.align 2, 0
_080E8400: .4byte gRngVal
_080E8404: .4byte 0x00196225
_080E8408: .4byte 0x3C6EF35F
_080E840C:
	adds r0, r3, #0
	bl sub_080E8430
	b _080E842A
_080E8414:
	adds r0, r3, #0
	bl sub_080E8588
	b _080E842A
_080E841C:
	adds r0, r3, #0
	bl sub_080EAD3C
	b _080E842A
_080E8424:
	adds r0, r3, #0
	bl sub_080EADE4
_080E842A:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E8430
sub_080E8430: @ 0x080E8430
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _080E8460 @ =sub_080E8738
	adds r0, r4, #0
	movs r1, #1
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080E8468
	ldr r0, _080E8464 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080E846E
	.align 2, 0
_080E8460: .4byte sub_080E8738
_080E8464: .4byte 0xFFFFFF00
_080E8468:
	ldr r0, _080E84AC @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080E846E:
	adds r1, r4, #0
	adds r1, #0x50
	movs r2, #0
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	strb r2, [r0]
	ldr r3, _080E84B0 @ =gRngVal
	ldr r0, [r3]
	ldr r7, _080E84B4 @ =0x00196225
	muls r0, r7, r0
	ldr r6, _080E84B8 @ =0x3C6EF35F
	adds r2, r0, r6
	str r2, [r3]
	lsrs r0, r2, #0x10
	movs r5, #1
	ands r0, r5
	adds r1, #0x4d
	strb r0, [r1]
	ldr r1, [r4, #0x44]
	ldr r0, _080E84BC @ =0x00003FFF
	cmp r1, r0
	bgt _080E84C0
	adds r1, r4, #0
	adds r1, #0x85
	movs r0, #2
	strb r0, [r1]
	b _080E84F0
	.align 2, 0
_080E84AC: .4byte 0xFFFFFF00
_080E84B0: .4byte gRngVal
_080E84B4: .4byte 0x00196225
_080E84B8: .4byte 0x3C6EF35F
_080E84BC: .4byte 0x00003FFF
_080E84C0:
	adds r0, r4, #0
	adds r0, #0x85
	strb r5, [r0]
	adds r5, r0, #0
	mov r0, r8
	cmp r0, #3
	beq _080E84F0
	adds r0, r2, #0
	muls r0, r7, r0
	adds r0, r0, r6
	str r0, [r3]
	lsrs r2, r0, #0x10
	ldr r0, _080E8568 @ =0x00005554
	cmp r2, r0
	bls _080E84EC
	ldr r0, _080E856C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E84E8
	movs r1, #1
_080E84E8:
	cmp r1, #0
	bne _080E84F0
_080E84EC:
	movs r0, #3
	strb r0, [r5]
_080E84F0:
	ldr r1, _080E8570 @ =gUnk_02020EE0
	ldr r0, _080E8574 @ =gUnk_0203AD3C
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
	bne _080E855C
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E851C
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E855C
_080E851C:
	ldr r1, _080E8578 @ =gUnk_08D60FA4
	ldr r4, _080E857C @ =gSongTable
	ldr r2, _080E8580 @ =0x00000CF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8542
	movs r1, #0xcf
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E855C
_080E8542:
	cmp r3, #0
	beq _080E8554
	ldr r0, _080E8584 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E855C
_080E8554:
	movs r0, #0xcf
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E855C:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E8568: .4byte 0x00005554
_080E856C: .4byte 0x0000AAA9
_080E8570: .4byte gUnk_02020EE0
_080E8574: .4byte gUnk_0203AD3C
_080E8578: .4byte gUnk_08D60FA4
_080E857C: .4byte gSongTable
_080E8580: .4byte 0x00000CF4
_080E8584: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8588
sub_080E8588: @ 0x080E8588
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r4, r0, #0
	adds r0, #0x85
	ldrb r0, [r0]
	mov r8, r0
	ldr r2, _080E85BC @ =sub_080E8738
	adds r0, r4, #0
	movs r1, #2
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080E85C4
	ldr r0, _080E85C0 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080E85CA
	.align 2, 0
_080E85BC: .4byte sub_080E8738
_080E85C0: .4byte 0xFFFFFF00
_080E85C4:
	ldr r0, _080E863C @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080E85CA:
	adds r1, r4, #0
	adds r1, #0x50
	movs r7, #0
	mov sb, r7
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x9e
	mov r1, sb
	strb r1, [r0]
	adds r3, r4, #0
	adds r3, #0x9f
	strb r1, [r3]
	adds r1, r4, #0
	adds r1, #0x85
	movs r6, #1
	strb r6, [r1]
	subs r0, #0x17
	ldrb r0, [r0]
	adds r5, r1, #0
	cmp r0, #0
	bne _080E8616
	movs r2, #0x80
	ldr r1, _080E8640 @ =gUnk_08351530
	ldr r0, _080E8644 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E865A
_080E8616:
	ldr r2, _080E8648 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E864C @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8650 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r6
	strb r0, [r3]
	ldr r1, [r4, #0x44]
	ldr r0, _080E8654 @ =0x00003FFF
	cmp r1, r0
	bgt _080E8658
	mov r2, sb
	strb r2, [r3]
	movs r0, #2
	strb r0, [r5]
	b _080E865A
	.align 2, 0
_080E863C: .4byte 0xFFFFFF00
_080E8640: .4byte gUnk_08351530
_080E8644: .4byte gUnk_0203AD30
_080E8648: .4byte gRngVal
_080E864C: .4byte 0x00196225
_080E8650: .4byte 0x3C6EF35F
_080E8654: .4byte 0x00003FFF
_080E8658:
	strb r6, [r5]
_080E865A:
	mov r7, r8
	cmp r7, #3
	beq _080E8692
	ldr r2, _080E870C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8710 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8714 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E8718 @ =0x00005554
	cmp r2, r0
	bls _080E8684
	ldr r0, _080E871C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E8680
	movs r1, #1
_080E8680:
	cmp r1, #0
	bne _080E8692
_080E8684:
	ldr r1, [r4, #0x44]
	movs r0, #0x80
	lsls r0, r0, #7
	cmp r1, r0
	ble _080E8692
	movs r0, #3
	strb r0, [r5]
_080E8692:
	ldr r1, _080E8720 @ =gUnk_02020EE0
	ldr r0, _080E8724 @ =gUnk_0203AD3C
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
	bne _080E86FE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E86BE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E86FE
_080E86BE:
	ldr r1, _080E8728 @ =gUnk_08D60FA4
	ldr r4, _080E872C @ =gSongTable
	ldr r2, _080E8730 @ =0x00000CF4
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E86E4
	movs r7, #0xcf
	lsls r7, r7, #4
	adds r0, r4, r7
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E86FE
_080E86E4:
	cmp r3, #0
	beq _080E86F6
	ldr r0, _080E8734 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E86FE
_080E86F6:
	movs r0, #0xcf
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E86FE:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080E870C: .4byte gRngVal
_080E8710: .4byte 0x00196225
_080E8714: .4byte 0x3C6EF35F
_080E8718: .4byte 0x00005554
_080E871C: .4byte 0x0000AAA9
_080E8720: .4byte gUnk_02020EE0
_080E8724: .4byte gUnk_0203AD3C
_080E8728: .4byte gUnk_08D60FA4
_080E872C: .4byte gSongTable
_080E8730: .4byte 0x00000CF4
_080E8734: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8738
sub_080E8738: @ 0x080E8738
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E8808
	adds r2, r3, #0
	adds r2, #0x52
	ldrh r0, [r2]
	subs r0, #0x18
	strh r0, [r2]
	lsls r0, r0, #0x10
	movs r1, #0xfd
	lsls r1, r1, #0x18
	cmp r0, r1
	bge _080E875E
	movs r0, #0xfd
	lsls r0, r0, #8
	strh r0, [r2]
_080E875E:
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E87B8
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E8798
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080E8794 @ =0xFFFFFB80
	adds r2, r1, #0
	cmp r0, r4
	blt _080E8850
	movs r1, #0x90
	lsls r1, r1, #3
	cmp r0, r1
	ble _080E885C
	b _080E885A
	.align 2, 0
_080E8794: .4byte 0xFFFFFB80
_080E8798:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x90
	lsls r4, r4, #3
	adds r2, r1, #0
	cmp r0, r4
	bgt _080E8850
	ldr r1, _080E87B4 @ =0xFFFFFB80
	b _080E8856
	.align 2, 0
_080E87B4: .4byte 0xFFFFFB80
_080E87B8:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E87E8
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080E87E4 @ =0xFFFFFC80
	adds r2, r1, #0
	cmp r0, r4
	blt _080E8850
	movs r1, #0xe0
	lsls r1, r1, #2
	cmp r0, r1
	ble _080E885C
	b _080E885A
	.align 2, 0
_080E87E4: .4byte 0xFFFFFC80
_080E87E8:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r2, r1, #0
	cmp r0, r4
	bgt _080E8850
	ldr r1, _080E8804 @ =0xFFFFFC80
	b _080E8856
	.align 2, 0
_080E8804: .4byte 0xFFFFFC80
_080E8808:
	ldr r0, [r3, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E8838
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080E8834 @ =0xFFFFFE00
	adds r2, r1, #0
	cmp r0, r4
	blt _080E8850
	movs r1, #0x80
	lsls r1, r1, #2
	cmp r0, r1
	ble _080E885C
	b _080E885A
	.align 2, 0
_080E8834: .4byte 0xFFFFFE00
_080E8838:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x60
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r1, #0
	cmp r0, r4
	ble _080E8854
_080E8850:
	strh r4, [r2]
	b _080E885C
_080E8854:
	ldr r1, _080E8890 @ =0xFFFFFE00
_080E8856:
	cmp r0, r1
	bge _080E885C
_080E885A:
	strh r1, [r2]
_080E885C:
	ldr r0, [r3, #8]
	movs r6, #4
	orrs r0, r6
	str r0, [r3, #8]
	movs r4, #1
	ands r4, r0
	cmp r4, #0
	bne _080E886E
	b _080E8980
_080E886E:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r4, [r0]
	cmp r4, #3
	bne _080E8894
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	ble _080E888A
	b _080E8AA8
_080E888A:
	movs r0, #0
	strh r0, [r2]
	b _080E899C
	.align 2, 0
_080E8890: .4byte 0xFFFFFE00
_080E8894:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E88CA
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080E88CA
	movs r5, #0
	ldrsh r1, [r2, r5]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	movs r1, #0xdc
	lsls r1, r1, #7
	cmp r0, r1
	ble _080E88BE
	b _080E8AA8
_080E88BE:
	cmp r4, #2
	beq _080E88C4
	str r1, [r3, #0x40]
_080E88C4:
	movs r0, #0
	strh r0, [r2]
	b _080E89D8
_080E88CA:
	movs r0, #0
	ldrsh r1, [r2, r0]
	ldr r0, [r3, #0x40]
	adds r0, r0, r1
	movs r1, #0xb8
	lsls r1, r1, #6
	cmp r0, r1
	ble _080E88DC
	b _080E8AA8
_080E88DC:
	str r1, [r3, #0x40]
	movs r0, #0
	strh r0, [r2]
	ldr r0, [r3, #8]
	movs r4, #1
	eors r0, r4
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E8914
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080E8928 @ =gUnk_08351530
	ldr r0, _080E892C @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E893C
_080E8914:
	ldr r2, _080E8930 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8934 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8938 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r4
	b _080E8974
	.align 2, 0
_080E8928: .4byte gUnk_08351530
_080E892C: .4byte gUnk_0203AD30
_080E8930: .4byte gRngVal
_080E8934: .4byte 0x00196225
_080E8938: .4byte 0x3C6EF35F
_080E893C:
	ldr r2, _080E8958 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E895C @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E8960 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E8964 @ =0x00005554
	cmp r2, r0
	bhi _080E8968
	movs r1, #0
	b _080E8972
	.align 2, 0
_080E8958: .4byte gRngVal
_080E895C: .4byte 0x00196225
_080E8960: .4byte 0x3C6EF35F
_080E8964: .4byte 0x00005554
_080E8968:
	ldr r0, _080E897C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E8972
	movs r1, #1
_080E8972:
	adds r0, r1, #0
_080E8974:
	cmp r0, #0
	beq _080E897A
	b _080E8A94
_080E897A:
	b _080E8AA0
	.align 2, 0
_080E897C: .4byte 0x0000AAA9
_080E8980:
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r5, [r0]
	cmp r5, #3
	bne _080E89A8
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	ldr r0, _080E89A4 @ =0x00007FFF
	cmp r1, r0
	bgt _080E899A
	b _080E8AA8
_080E899A:
	strh r4, [r2]
_080E899C:
	adds r0, r3, #0
	bl sub_080EAE98
	b _080E8AFE
	.align 2, 0
_080E89A4: .4byte 0x00007FFF
_080E89A8:
	adds r0, r3, #0
	adds r0, #0x9f
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E89E4
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080E89E4
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	ldr r0, _080E89E0 @ =0x000092FF
	cmp r1, r0
	ble _080E8AA8
	cmp r5, #2
	beq _080E89D6
	adds r0, #1
	str r0, [r3, #0x40]
_080E89D6:
	strh r4, [r2]
_080E89D8:
	adds r0, r3, #0
	bl sub_080E8C04
	b _080E8AFE
	.align 2, 0
_080E89E0: .4byte 0x000092FF
_080E89E4:
	movs r5, #0
	ldrsh r0, [r2, r5]
	ldr r1, [r3, #0x40]
	adds r1, r1, r0
	ldr r0, _080E8A40 @ =0x0000D2FF
	cmp r1, r0
	ble _080E8AA8
	adds r0, #1
	str r0, [r3, #0x40]
	movs r0, #0
	strh r0, [r2]
	ldr r0, [r3, #8]
	movs r4, #1
	eors r0, r4
	str r0, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E8A2C
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080E8A44 @ =gUnk_08351530
	ldr r0, _080E8A48 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E8A58
_080E8A2C:
	ldr r2, _080E8A4C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8A50 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8A54 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r4
	b _080E8A90
	.align 2, 0
_080E8A40: .4byte 0x0000D2FF
_080E8A44: .4byte gUnk_08351530
_080E8A48: .4byte gUnk_0203AD30
_080E8A4C: .4byte gRngVal
_080E8A50: .4byte 0x00196225
_080E8A54: .4byte 0x3C6EF35F
_080E8A58:
	ldr r2, _080E8A74 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8A78 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E8A7C @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E8A80 @ =0x00005554
	cmp r2, r0
	bhi _080E8A84
	movs r1, #0
	b _080E8A8E
	.align 2, 0
_080E8A74: .4byte gRngVal
_080E8A78: .4byte 0x00196225
_080E8A7C: .4byte 0x3C6EF35F
_080E8A80: .4byte 0x00005554
_080E8A84:
	ldr r0, _080E8A9C @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E8A8E
	movs r1, #1
_080E8A8E:
	adds r0, r1, #0
_080E8A90:
	cmp r0, #0
	beq _080E8AA0
_080E8A94:
	adds r0, r3, #0
	bl sub_080E82C4
	b _080E8AFE
	.align 2, 0
_080E8A9C: .4byte 0x0000AAA9
_080E8AA0:
	adds r0, r3, #0
	bl sub_080EAD3C
	b _080E8AFE
_080E8AA8:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	adds r2, r3, #0
	adds r2, #0x9e
	cmp r0, #0
	bne _080E8AE0
	ldrb r0, [r2]
	cmp r0, #0
	bne _080E8AE0
	movs r0, #0x22
	strh r0, [r3, #4]
	adds r0, r3, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E8AD2
	movs r0, #0x16
	strh r0, [r3, #4]
_080E8AD2:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r3, #8]
	movs r0, #1
	strb r0, [r2]
_080E8AE0:
	ldrb r0, [r2]
	cmp r0, #1
	bne _080E8AFE
	ldrh r0, [r3, #4]
	subs r0, #1
	strh r0, [r3, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E8AFE
	ldr r0, [r3, #8]
	ldr r1, _080E8B04 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r3, #8]
	movs r0, #2
	strb r0, [r2]
_080E8AFE:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E8B04: .4byte 0xFFFFFEFF

	thumb_func_start sub_080E8B08
sub_080E8B08: @ 0x080E8B08
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080E8BE4 @ =sub_080E8CF0
	movs r1, #4
	bl ObjectSetFunc
	adds r5, r4, #0
	adds r5, #0x50
	movs r1, #0
	movs r0, #0
	strh r0, [r5]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	adds r3, r4, #0
	adds r3, #0x9e
	strb r1, [r3]
	ldr r1, [r4, #0x44]
	ldr r0, _080E8BE8 @ =0x00003FFF
	cmp r1, r0
	bgt _080E8B4E
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r2]
	movs r0, #0x3c
	strh r0, [r4, #4]
	movs r0, #1
	strb r0, [r3]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E8B4E:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E8B72
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080E8B72:
	ldr r1, _080E8BEC @ =gUnk_02020EE0
	ldr r0, _080E8BF0 @ =gUnk_0203AD3C
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
	bne _080E8BDE
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E8B9E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E8BDE
_080E8B9E:
	ldr r1, _080E8BF4 @ =gUnk_08D60FA4
	ldr r4, _080E8BF8 @ =gSongTable
	ldr r2, _080E8BFC @ =0x00000C44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8BC4
	movs r1, #0xc4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E8BDE
_080E8BC4:
	cmp r3, #0
	beq _080E8BD6
	ldr r0, _080E8C00 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E8BDE
_080E8BD6:
	movs r0, #0xc4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E8BDE:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080E8BE4: .4byte sub_080E8CF0
_080E8BE8: .4byte 0x00003FFF
_080E8BEC: .4byte gUnk_02020EE0
_080E8BF0: .4byte gUnk_0203AD3C
_080E8BF4: .4byte gUnk_08D60FA4
_080E8BF8: .4byte gSongTable
_080E8BFC: .4byte 0x00000C44
_080E8C00: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8C04
sub_080E8C04: @ 0x080E8C04
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r2, _080E8CD4 @ =sub_080E8CF0
	movs r1, #4
	bl ObjectSetFunc
	adds r5, r4, #0
	adds r5, #0x50
	movs r0, #0xd0
	strh r0, [r5]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r1]
	adds r0, r4, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #2
	bne _080E8C30
	movs r0, #0xa4
	strh r0, [r5]
_080E8C30:
	movs r0, #0x3c
	strh r0, [r4, #4]
	adds r0, r4, #0
	adds r0, #0x9e
	movs r2, #1
	strb r2, [r0]
	ldr r0, [r4, #8]
	movs r6, #0x80
	lsls r6, r6, #1
	orrs r0, r6
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x62
	ldrb r1, [r3]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r3]
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080E8C64
	ldrh r0, [r5]
	rsbs r0, r0, #0
	strh r0, [r5]
_080E8C64:
	ldr r1, _080E8CD8 @ =gUnk_02020EE0
	ldr r0, _080E8CDC @ =gUnk_0203AD3C
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
	bne _080E8CCC
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E8C90
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E8CCC
_080E8C90:
	ldr r1, _080E8CE0 @ =gUnk_08D60FA4
	ldr r4, _080E8CE4 @ =gSongTable
	ldr r2, _080E8CE8 @ =0x00000C44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8CB6
	movs r1, #0xc4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E8CCC
_080E8CB6:
	cmp r3, #0
	beq _080E8CC4
	ldr r0, _080E8CEC @ =gUnk_0203AD10
	ldr r0, [r0]
	ands r0, r6
	cmp r0, #0
	bne _080E8CCC
_080E8CC4:
	movs r0, #0xc4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E8CCC:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080E8CD4: .4byte sub_080E8CF0
_080E8CD8: .4byte gUnk_02020EE0
_080E8CDC: .4byte gUnk_0203AD3C
_080E8CE0: .4byte gUnk_08D60FA4
_080E8CE4: .4byte gSongTable
_080E8CE8: .4byte 0x00000C44
_080E8CEC: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8CF0
sub_080E8CF0: @ 0x080E8CF0
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #4
	bne _080E8D0C
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E8D20
	movs r0, #5
	b _080E8D1E
_080E8D0C:
	adds r0, r4, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080E8D20
	movs r0, #6
_080E8D1E:
	strb r0, [r2]
_080E8D20:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bne _080E8D44
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080E8D44
	adds r0, r4, #0
	bl sub_080EADA4
_080E8D44:
	ldr r1, [r4, #8]
	movs r0, #1
	ands r0, r1
	adds r2, r1, #0
	cmp r0, #0
	beq _080E8D70
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	ldr r1, _080E8D6C @ =0x00002DFF
	cmp r0, r1
	bgt _080E8D86
	movs r0, #0xb8
	lsls r0, r0, #6
	str r0, [r4, #0x40]
	b _080E8D86
	.align 2, 0
_080E8D6C: .4byte 0x00002DFF
_080E8D70:
	adds r0, r4, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	movs r1, #0xd3
	lsls r1, r1, #8
	cmp r0, r1
	ble _080E8D86
	str r1, [r4, #0x40]
_080E8D86:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8DA2
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E8DA2
	ldr r0, _080E8DA8 @ =0xFFFFFEFF
	ands r0, r2
	str r0, [r4, #8]
_080E8DA2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E8DA8: .4byte 0xFFFFFEFF

	thumb_func_start sub_080E8DAC
sub_080E8DAC: @ 0x080E8DAC
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080E8E6E
	adds r0, r3, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E8DCA
	movs r0, #1
	eors r1, r0
	str r1, [r3, #8]
_080E8DCA:
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E8DF4
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080E8E0C @ =gUnk_08351530
	ldr r0, _080E8E10 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r4, #0
	ldrsh r1, [r2, r4]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E8E20
_080E8DF4:
	ldr r2, _080E8E14 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8E18 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E8E1C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	ands r1, r0
	b _080E8E56
	.align 2, 0
_080E8E0C: .4byte gUnk_08351530
_080E8E10: .4byte gUnk_0203AD30
_080E8E14: .4byte gRngVal
_080E8E18: .4byte 0x00196225
_080E8E1C: .4byte 0x3C6EF35F
_080E8E20:
	ldr r2, _080E8E3C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E8E40 @ =0x00196225
	muls r0, r1, r0
	ldr r4, _080E8E44 @ =0x3C6EF35F
	adds r0, r0, r4
	str r0, [r2]
	lsrs r2, r0, #0x10
	ldr r0, _080E8E48 @ =0x00005554
	cmp r2, r0
	bhi _080E8E4C
	movs r1, #0
	b _080E8E56
	.align 2, 0
_080E8E3C: .4byte gRngVal
_080E8E40: .4byte 0x00196225
_080E8E44: .4byte 0x3C6EF35F
_080E8E48: .4byte 0x00005554
_080E8E4C:
	ldr r0, _080E8E64 @ =0x0000AAA9
	movs r1, #2
	cmp r2, r0
	bhi _080E8E56
	movs r1, #1
_080E8E56:
	cmp r1, #0
	beq _080E8E68
	adds r0, r3, #0
	bl sub_080E82C4
	b _080E8E6E
	.align 2, 0
_080E8E64: .4byte 0x0000AAA9
_080E8E68:
	adds r0, r3, #0
	bl sub_080E8E74
_080E8E6E:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080E8E74
sub_080E8E74: @ 0x080E8E74
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E8F50 @ =sub_080E8F74
	movs r1, #4
	bl ObjectSetFunc
	adds r3, r4, #0
	adds r3, #0x50
	ldr r0, _080E8F54 @ =0x000001A1
	strh r0, [r3]
	adds r2, r4, #0
	adds r2, #0x52
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r2]
	ldr r1, [r4, #0x44]
	ldr r0, _080E8F58 @ =0x00003FFF
	cmp r1, r0
	bgt _080E8EBA
	movs r0, #0x8e
	lsls r0, r0, #2
	strh r0, [r3]
	adds r0, #0xc8
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #1
	strb r0, [r1]
	movs r0, #0x3c
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E8EBA:
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	adds r2, r4, #0
	adds r2, #0x62
	ldrb r1, [r2]
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E8EDE
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080E8EDE:
	ldr r1, _080E8F5C @ =gUnk_02020EE0
	ldr r0, _080E8F60 @ =gUnk_0203AD3C
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
	bne _080E8F4A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E8F0A
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E8F4A
_080E8F0A:
	ldr r1, _080E8F64 @ =gUnk_08D60FA4
	ldr r4, _080E8F68 @ =gSongTable
	ldr r2, _080E8F6C @ =0x00000C44
	adds r0, r4, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E8F30
	movs r1, #0xc4
	lsls r1, r1, #4
	adds r0, r4, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E8F4A
_080E8F30:
	cmp r3, #0
	beq _080E8F42
	ldr r0, _080E8F70 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E8F4A
_080E8F42:
	movs r0, #0xc4
	lsls r0, r0, #1
	bl m4aSongNumStart
_080E8F4A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E8F50: .4byte sub_080E8F74
_080E8F54: .4byte 0x000001A1
_080E8F58: .4byte 0x00003FFF
_080E8F5C: .4byte gUnk_02020EE0
_080E8F60: .4byte gUnk_0203AD3C
_080E8F64: .4byte gUnk_08D60FA4
_080E8F68: .4byte gSongTable
_080E8F6C: .4byte 0x00000C44
_080E8F70: .4byte gUnk_0203AD10

	thumb_func_start sub_080E8F74
sub_080E8F74: @ 0x080E8F74
	push {r4, lr}
	adds r4, r0, #0
	adds r2, r4, #0
	adds r2, #0x83
	ldrb r0, [r2]
	cmp r0, #4
	bne _080E8F90
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E8FA4
	movs r0, #5
	b _080E8FA2
_080E8F90:
	adds r0, r4, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	movs r0, #0x80
	rsbs r0, r0, #0
	cmp r1, r0
	bgt _080E8FA4
	movs r0, #6
_080E8FA2:
	strb r0, [r2]
_080E8FA4:
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #6
	bne _080E8FC8
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r0, [r0]
	ands r1, r0
	cmp r1, #0
	beq _080E8FC8
	adds r0, r4, #0
	bl sub_080EAE4C
_080E8FC8:
	ldr r2, [r4, #8]
	movs r0, #1
	ands r2, r0
	cmp r2, #0
	beq _080E8FF4
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	ldrsh r0, [r2, r1]
	ldr r1, [r4, #0x40]
	adds r1, r1, r0
	ldr r0, _080E8FF0 @ =0x00002DFF
	cmp r1, r0
	bgt _080E900C
	adds r0, #1
	str r0, [r4, #0x40]
	movs r0, #0
	strh r0, [r2]
	b _080E900C
	.align 2, 0
_080E8FF0: .4byte 0x00002DFF
_080E8FF4:
	adds r3, r4, #0
	adds r3, #0x50
	movs r0, #0
	ldrsh r1, [r3, r0]
	ldr r0, [r4, #0x40]
	adds r0, r0, r1
	movs r1, #0xd3
	lsls r1, r1, #8
	cmp r0, r1
	ble _080E900C
	str r1, [r4, #0x40]
	strh r2, [r3]
_080E900C:
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E902A
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E902A
	ldr r0, [r4, #8]
	ldr r1, _080E9030 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r4, #8]
_080E902A:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E9030: .4byte 0xFFFFFEFF

	thumb_func_start sub_080E9034
sub_080E9034: @ 0x080E9034
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	cmp r0, #0xb
	beq _080E9052
	cmp r0, #0x15
	bne _080E90BA
_080E9052:
	ldr r1, _080E9190 @ =gUnk_02020EE0
	ldr r0, _080E9194 @ =gUnk_0203AD3C
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
	bne _080E90BA
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E907E
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E90BA
_080E907E:
	ldr r1, _080E9198 @ =gUnk_08D60FA4
	ldr r5, _080E919C @ =gSongTable
	ldr r2, _080E91A0 @ =0x00000C3C
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E90A2
	ldr r1, _080E91A4 @ =0x00000C38
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E90BA
_080E90A2:
	cmp r3, #0
	beq _080E90B4
	ldr r0, _080E91A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E90BA
_080E90B4:
	ldr r0, _080E91AC @ =0x00000187
	bl m4aSongNumStart
_080E90BA:
	ldrb r0, [r4, #1]
	cmp r0, #0x28
	bne _080E913A
	ldr r2, _080E91B0 @ =0x000002AA
	adds r0, r4, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	adds r0, r4, #0
	bl sub_080E921C
	ldr r1, _080E9190 @ =gUnk_02020EE0
	ldr r0, _080E9194 @ =gUnk_0203AD3C
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
	bne _080E913A
	ldrb r0, [r4]
	cmp r0, #0
	bne _080E90FE
	adds r0, r4, #0
	adds r0, #0x56
	ldrb r0, [r0]
	cmp r0, r2
	bne _080E913A
_080E90FE:
	ldr r1, _080E9198 @ =gUnk_08D60FA4
	ldr r5, _080E919C @ =gSongTable
	ldr r2, _080E91B4 @ =0x00000CEC
	adds r0, r5, r2
	ldrh r3, [r0]
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r0, [r2, #4]
	cmp r0, #0
	blt _080E9122
	ldr r1, _080E91B8 @ =0x00000CE8
	adds r0, r5, r1
	ldr r1, [r0]
	ldrb r0, [r2, #9]
	ldrb r1, [r1, #2]
	cmp r0, r1
	bhi _080E913A
_080E9122:
	cmp r3, #0
	beq _080E9134
	ldr r0, _080E91A8 @ =gUnk_0203AD10
	ldr r0, [r0]
	movs r1, #0x80
	lsls r1, r1, #1
	ands r0, r1
	cmp r0, #0
	bne _080E913A
_080E9134:
	ldr r0, _080E91BC @ =0x0000019D
	bl m4aSongNumStart
_080E913A:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E9214
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	adds r1, r4, #0
	adds r1, #0x87
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bne _080E917C
	adds r2, r4, #0
	adds r2, #0x80
	ldr r1, _080E91C0 @ =gUnk_08351530
	ldr r0, _080E91C4 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	cmp r1, r0
	bgt _080E91D4
_080E917C:
	ldr r2, _080E91C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E91CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E91D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #1
	b _080E91E6
	.align 2, 0
_080E9190: .4byte gUnk_02020EE0
_080E9194: .4byte gUnk_0203AD3C
_080E9198: .4byte gUnk_08D60FA4
_080E919C: .4byte gSongTable
_080E91A0: .4byte 0x00000C3C
_080E91A4: .4byte 0x00000C38
_080E91A8: .4byte gUnk_0203AD10
_080E91AC: .4byte 0x00000187
_080E91B0: .4byte 0x000002AA
_080E91B4: .4byte 0x00000CEC
_080E91B8: .4byte 0x00000CE8
_080E91BC: .4byte 0x0000019D
_080E91C0: .4byte gUnk_08351530
_080E91C4: .4byte gUnk_0203AD30
_080E91C8: .4byte gRngVal
_080E91CC: .4byte 0x00196225
_080E91D0: .4byte 0x3C6EF35F
_080E91D4:
	ldr r2, _080E91FC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9200 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E9204 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
_080E91E6:
	ands r1, r0
	ldrb r0, [r3]
	cmp r0, #2
	bls _080E91F0
	movs r1, #1
_080E91F0:
	cmp r1, #0
	beq _080E9208
	adds r0, r4, #0
	bl sub_080EAF24
	b _080E9214
	.align 2, 0
_080E91FC: .4byte gRngVal
_080E9200: .4byte 0x00196225
_080E9204: .4byte 0x3C6EF35F
_080E9208:
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x38
	strh r0, [r4, #4]
_080E9214:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E921C
sub_080E921C: @ 0x080E921C
	push {r4, r5, r6, lr}
	adds r3, r0, #0
	movs r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E924C
	adds r2, r3, #0
	adds r2, #0x80
	ldr r1, _080E9274 @ =gUnk_08351530
	ldr r0, _080E9278 @ =gUnk_0203AD30
	ldrb r0, [r0]
	subs r0, #1
	lsls r0, r0, #1
	adds r1, #0x88
	adds r0, r0, r1
	ldrh r0, [r0]
	lsls r0, r0, #0x10
	movs r5, #0
	ldrsh r1, [r2, r5]
	asrs r0, r0, #0x11
	ldr r6, _080E927C @ =gRngVal
	cmp r1, r0
	bgt _080E9262
_080E924C:
	ldr r2, _080E927C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9280 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E9284 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r4, r0, #0x10
	movs r0, #1
	ands r4, r0
	adds r6, r2, #0
_080E9262:
	ldr r1, [r6]
	ldr r0, _080E9280 @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E9284 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r6]
	lsrs r5, r0, #0x10
	movs r2, #0
	b _080E928C
	.align 2, 0
_080E9274: .4byte gUnk_08351530
_080E9278: .4byte gUnk_0203AD30
_080E927C: .4byte gRngVal
_080E9280: .4byte 0x00196225
_080E9284: .4byte 0x3C6EF35F
_080E9288:
	lsls r0, r1, #0x10
	lsrs r2, r0, #0x10
_080E928C:
	cmp r2, #8
	bhi _080E929A
	adds r1, r2, #1
	ldr r0, _080E92A8 @ =0x00001999
	muls r0, r1, r0
	cmp r5, r0
	bge _080E9288
_080E929A:
	cmp r2, #9
	bhi _080E937C
	lsls r0, r2, #2
	ldr r1, _080E92AC @ =_080E92B0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_080E92A8: .4byte 0x00001999
_080E92AC: .4byte _080E92B0
_080E92B0: @ jump table
	.4byte _080E932C @ case 0
	.4byte _080E9340 @ case 1
	.4byte _080E9360 @ case 2
	.4byte _080E92D8 @ case 3
	.4byte _080E92E2 @ case 4
	.4byte _080E92EC @ case 5
	.4byte _080E92F6 @ case 6
	.4byte _080E9306 @ case 7
	.4byte _080E9316 @ case 8
	.4byte _080E934A @ case 9
_080E92D8:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9A54
	b _080E937C
_080E92E2:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9C58
	b _080E937C
_080E92EC:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9FC0
	b _080E937C
_080E92F6:
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r3, #0
	bl sub_080EA1C0
	b _080E937C
_080E9306:
	adds r0, r3, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r1, [r0, #0x10]
	adds r0, r3, #0
	bl sub_080EA27C
	b _080E937C
_080E9316:
	ldr r1, [r6]
	ldr r0, _080E9338 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E933C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E9340
_080E932C:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9384
	b _080E937C
	.align 2, 0
_080E9338: .4byte 0x00196225
_080E933C: .4byte 0x3C6EF35F
_080E9340:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9524
	b _080E937C
_080E934A:
	ldr r1, [r6]
	ldr r0, _080E936C @ =0x00196225
	muls r0, r1, r0
	ldr r5, _080E9370 @ =0x3C6EF35F
	adds r0, r0, r5
	str r0, [r6]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E9374
_080E9360:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E96F8
	b _080E937C
	.align 2, 0
_080E936C: .4byte 0x00196225
_080E9370: .4byte 0x3C6EF35F
_080E9374:
	adds r0, r3, #0
	adds r1, r4, #0
	bl sub_080E9A54
_080E937C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9384
sub_080E9384: @ 0x080E9384
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E93C0 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E93C4 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E93DC
	.align 2, 0
_080E93C0: .4byte gUnk_020229D4
_080E93C4: .4byte gUnk_020229E0
_080E93C8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E93E4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E93DC:
	cmp r0, #0
	bne _080E93C8
	orrs r2, r3
	str r2, [r1]
_080E93E4:
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
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb5
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
	strb r0, [r1, #0x10]
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
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9448
sub_080E9448: @ 0x080E9448
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r2, [r4, #8]
	movs r6, #4
	orrs r2, r6
	str r2, [r4, #8]
	adds r5, r4, #0
	adds r5, #0x62
	ldrb r1, [r5]
	movs r7, #3
	adds r0, r7, #0
	ands r0, r1
	cmp r0, #0
	beq _080E9472
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r2, r0
	str r2, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080E9472:
	ldrb r1, [r5]
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _080E951E
	ldr r2, _080E94A0 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E94A4 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E94A8 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	ands r0, r7
	cmp r0, #1
	beq _080E94BE
	cmp r0, #1
	blo _080E94AC
	cmp r0, #2
	beq _080E94D0
	cmp r0, #3
	beq _080E94E4
	b _080E94F6
	.align 2, 0
_080E94A0: .4byte gRngVal
_080E94A4: .4byte 0x00196225
_080E94A8: .4byte 0x3C6EF35F
_080E94AC:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xd0
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	b _080E94F4
_080E94BE:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x88
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	b _080E94F4
_080E94D0:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x90
	lsls r1, r1, #1
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	b _080E94F4
_080E94E4:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #2
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x64
_080E94F4:
	strh r0, [r1]
_080E94F6:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E950A
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #0x80
	strh r0, [r1]
_080E950A:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E951E
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080E951E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080E9524
sub_080E9524: @ 0x080E9524
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E9560 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E9564 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E957C
	.align 2, 0
_080E9560: .4byte gUnk_020229D4
_080E9564: .4byte gUnk_020229E0
_080E9568:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9584
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E957C:
	cmp r0, #0
	bne _080E9568
	orrs r2, r3
	str r2, [r1]
_080E9584:
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
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb6
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
	strb r0, [r1, #0x10]
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
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E95E8
sub_080E95E8: @ 0x080E95E8
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, [r3, #8]
	movs r0, #4
	orrs r1, r0
	str r1, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9658
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E9638
	adds r0, r3, #0
	adds r0, #0x50
	ldrh r1, [r0]
	subs r1, #8
	strh r1, [r0]
	lsls r1, r1, #0x10
	asrs r4, r1, #0x10
	ldr r1, _080E9624 @ =0xFFFFFC80
	adds r2, r0, #0
	cmp r4, r1
	bge _080E962C
	ldr r0, _080E9628 @ =0x0000FC80
	strh r0, [r2]
	b _080E96A8
	.align 2, 0
_080E9624: .4byte 0xFFFFFC80
_080E9628: .4byte 0x0000FC80
_080E962C:
	movs r0, #0xe0
	lsls r0, r0, #2
	cmp r4, r0
	ble _080E96A8
	strh r0, [r2]
	b _080E96A8
_080E9638:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xe0
	lsls r4, r4, #2
	adds r2, r1, #0
	cmp r0, r4
	bgt _080E969C
	ldr r1, _080E9654 @ =0xFFFFFC80
	b _080E96A2
	.align 2, 0
_080E9654: .4byte 0xFFFFFC80
_080E9658:
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	beq _080E9684
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	subs r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	ldr r4, _080E9680 @ =0xFFFFFD80
	adds r2, r1, #0
	cmp r0, r4
	blt _080E969C
	movs r1, #0xa0
	lsls r1, r1, #2
	cmp r0, r1
	ble _080E96A8
	b _080E96A6
	.align 2, 0
_080E9680: .4byte 0xFFFFFD80
_080E9684:
	adds r1, r3, #0
	adds r1, #0x50
	ldrh r0, [r1]
	adds r0, #8
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r4, #0xa0
	lsls r4, r4, #2
	adds r2, r1, #0
	cmp r0, r4
	ble _080E96A0
_080E969C:
	strh r4, [r2]
	b _080E96A8
_080E96A0:
	ldr r1, _080E96DC @ =0xFFFFFD80
_080E96A2:
	cmp r0, r1
	bge _080E96A8
_080E96A6:
	strh r1, [r2]
_080E96A8:
	ldrh r1, [r3, #4]
	movs r4, #4
	ldrsh r0, [r3, r4]
	cmp r0, #0
	beq _080E96B6
	subs r0, r1, #1
	strh r0, [r3, #4]
_080E96B6:
	adds r0, r3, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080E96F0
	movs r1, #4
	ldrsh r0, [r3, r1]
	cmp r0, #0
	beq _080E96E0
	ldr r0, [r3, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r3, #8]
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
	b _080E96F0
	.align 2, 0
_080E96DC: .4byte 0xFFFFFD80
_080E96E0:
	ldr r0, [r3, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r3, #8]
	adds r0, r3, #0
	bl sub_0809DA30
_080E96F0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E96F8
sub_080E96F8: @ 0x080E96F8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	adds r5, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r0, [r5, #8]
	movs r1, #1
	ands r0, r1
	ldr r0, [r5, #0x40]
	asrs r6, r0, #8
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov r8, r0
	movs r4, #0
	ldr r1, _080E9734 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E9738 @ =gUnk_020229E0
	mov ip, r7
	movs r7, #0x56
	adds r7, r7, r5
	mov sb, r7
	b _080E9750
	.align 2, 0
_080E9734: .4byte gUnk_020229D4
_080E9738: .4byte gUnk_020229E0
_080E973C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9758
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E9750:
	cmp r0, #0
	bne _080E973C
	orrs r2, r3
	str r2, [r1]
_080E9758:
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
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb7
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sl
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
	mov r2, sb
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
	mov r7, sl
	cmp r7, #0
	beq _080E97D4
	ldr r2, _080E97C8 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E97CC @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E97D0 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r1, r0, #0x10
	movs r0, #3
	ands r1, r0
	b _080E97F2
	.align 2, 0
_080E97C8: .4byte gRngVal
_080E97CC: .4byte 0x00196225
_080E97D0: .4byte 0x3C6EF35F
_080E97D4:
	ldr r2, _080E9808 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E980C @ =0x00196225
	muls r0, r1, r0
	ldr r7, _080E9810 @ =0x3C6EF35F
	adds r0, r0, r7
	str r0, [r2]
	movs r2, #0
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _080E97F0
	movs r2, #1
_080E97F0:
	adds r1, r2, #0
_080E97F2:
	cmp r1, #0
	beq _080E988A
	movs r4, #0
	ldr r1, _080E9814 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r7, _080E9818 @ =gUnk_020229E0
	mov ip, r7
	b _080E9830
	.align 2, 0
_080E9808: .4byte gRngVal
_080E980C: .4byte 0x00196225
_080E9810: .4byte 0x3C6EF35F
_080E9814: .4byte gUnk_020229D4
_080E9818: .4byte gUnk_020229E0
_080E981C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9838
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E9830:
	cmp r0, #0
	bne _080E981C
	orrs r2, r3
	str r2, [r1]
_080E9838:
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
	mov r0, r8
	strh r0, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb7
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r7, sl
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
	mov r2, sb
	ldrb r0, [r2]
	bl CreateObject
	str r5, [r0, #0x70]
_080E988A:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start CreateWizBalloon
CreateWizBalloon: @ 0x080E9898
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E98CC @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E98D0 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E98D4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E98DC
	.align 2, 0
_080E98CC: .4byte ObjectMain
_080E98D0: .4byte ObjectDestroy
_080E98D4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E98DC:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r1, #0xfe
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E9944 @ =sub_0809F840
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
	bl sub_080E9948
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E9944: .4byte sub_0809F840

	thumb_func_start sub_080E9948
sub_080E9948: @ 0x080E9948
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E9990 @ =sub_080E99F0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E9968
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E9968:
	ldr r2, _080E9994 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9998 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E999C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #3
	ands r0, r1
	strh r0, [r4, #4]
	movs r1, #4
	ldrsh r0, [r4, r1]
	cmp r0, #1
	beq _080E99B2
	cmp r0, #1
	bgt _080E99A0
	cmp r0, #0
	beq _080E99AA
	b _080E99D4
	.align 2, 0
_080E9990: .4byte sub_080E99F0
_080E9994: .4byte gRngVal
_080E9998: .4byte 0x00196225
_080E999C: .4byte 0x3C6EF35F
_080E99A0:
	cmp r0, #2
	beq _080E99BA
	cmp r0, #3
	beq _080E99C2
	b _080E99D4
_080E99AA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	b _080E99CA
_080E99B2:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0x80
	b _080E99CA
_080E99BA:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xe0
	b _080E99CA
_080E99C2:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0xc0
	lsls r1, r1, #1
_080E99CA:
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x28
	strh r0, [r1]
_080E99D4:
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E99E8
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
_080E99E8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E99F0
sub_080E99F0: @ 0x080E99F0
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #1
	beq _080E9A22
	cmp r0, #1
	bgt _080E9A0E
	cmp r0, #0
	beq _080E9A18
	b _080E9A4E
_080E9A0E:
	cmp r0, #2
	beq _080E9A2C
	cmp r0, #3
	beq _080E9A36
	b _080E9A4E
_080E9A18:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x10
	b _080E9A3E
_080E9A22:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #0x18
	b _080E9A3E
_080E9A2C:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #8
	b _080E9A3E
_080E9A36:
	adds r1, r2, #0
	adds r1, #0x52
	ldrh r0, [r1]
	adds r0, #4
_080E9A3E:
	strh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x10
	movs r2, #0xc0
	lsls r2, r2, #2
	cmp r0, r2
	ble _080E9A4E
	strh r2, [r1]
_080E9A4E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9A54
sub_080E9A54: @ 0x080E9A54
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E9A90 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E9A94 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E9AAC
	.align 2, 0
_080E9A90: .4byte gUnk_020229D4
_080E9A94: .4byte gUnk_020229E0
_080E9A98:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9AB4
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E9AAC:
	cmp r0, #0
	bne _080E9A98
	orrs r2, r3
	str r2, [r1]
_080E9AB4:
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
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb8
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
	strb r0, [r1, #0x10]
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
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9B18
sub_080E9B18: @ 0x080E9B18
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E9B4C @ =sub_080E9BA0
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E9B38
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E9B38:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9B50
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0x80
	lsls r0, r0, #1
	b _080E9B56
	.align 2, 0
_080E9B4C: .4byte sub_080E9BA0
_080E9B50:
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
_080E9B56:
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E9B74
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080E9B74:
	ldr r2, _080E9B94 @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9B98 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E9B9C @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #0x3f
	ands r0, r1
	adds r0, #0x78
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E9B94: .4byte gRngVal
_080E9B98: .4byte 0x00196225
_080E9B9C: .4byte 0x3C6EF35F

	thumb_func_start sub_080E9BA0
sub_080E9BA0: @ 0x080E9BA0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r1, [r4, #8]
	movs r5, #4
	orrs r1, r5
	str r1, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E9BC6
	movs r0, #0x80
	lsls r0, r0, #5
	orrs r1, r0
	str r1, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080E9BC6:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _080E9C3A
	adds r0, r4, #0
	adds r0, #0x9e
	ldrb r1, [r0]
	adds r2, r0, #0
	cmp r1, #4
	beq _080E9C3A
	ldrb r0, [r2]
	cmp r0, #1
	beq _080E9C04
	cmp r0, #1
	bgt _080E9BF0
	cmp r0, #0
	beq _080E9BFA
	b _080E9C20
_080E9BF0:
	cmp r0, #2
	beq _080E9C0E
	cmp r0, #3
	beq _080E9C18
	b _080E9C20
_080E9BFA:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xe8
	lsls r0, r0, #1
	b _080E9C1E
_080E9C04:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xa0
	lsls r0, r0, #1
	b _080E9C1E
_080E9C0E:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #1
	b _080E9C1E
_080E9C18:
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
_080E9C1E:
	strh r0, [r1]
_080E9C20:
	adds r1, r4, #0
	adds r1, #0x50
	ldrh r0, [r1]
	lsls r0, r0, #0x10
	asrs r0, r0, #0x11
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #0x20
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_080E9C3A:
	ldrh r1, [r4, #4]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080E9C50
	movs r2, #6
	rsbs r2, r2, #0
	adds r0, r4, #0
	adds r1, r2, #0
	bl sub_08097E9C
_080E9C50:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9C58
sub_080E9C58: @ 0x080E9C58
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E9C94 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080E9C98 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080E9CB0
	.align 2, 0
_080E9C94: .4byte gUnk_020229D4
_080E9C98: .4byte gUnk_020229E0
_080E9C9C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080E9CB8
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080E9CB0:
	cmp r0, #0
	bne _080E9C9C
	orrs r2, r3
	str r2, [r1]
_080E9CB8:
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
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xb9
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
	strb r0, [r1, #0x10]
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
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateWizCloud
CreateWizCloud: @ 0x080E9D1C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080E9D50 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080E9D54 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080E9D58
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080E9D60
	.align 2, 0
_080E9D50: .4byte ObjectMain
_080E9D54: .4byte ObjectDestroy
_080E9D58:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080E9D60:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	ldr r0, [r4, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	adds r1, #0xfe
	orrs r0, r1
	movs r1, #0x40
	orrs r0, r1
	str r0, [r4, #8]
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080E9DD0 @ =sub_0809F840
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
	movs r0, #0xb0
	lsls r0, r0, #2
	strh r0, [r4, #0x24]
	adds r0, r4, #0
	bl sub_080EAA30
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080E9DD0: .4byte sub_0809F840

	thumb_func_start sub_080E9DD4
sub_080E9DD4: @ 0x080E9DD4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080E9E10 @ =sub_080E9E58
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080E9DF4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080E9DF4:
	adds r2, r4, #0
	adds r2, #0x50
	movs r1, #0
	movs r0, #0x80
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x52
	strh r1, [r0]
	adds r0, #0x35
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9E14
	movs r0, #0x30
	b _080E9E16
	.align 2, 0
_080E9E10: .4byte sub_080E9E58
_080E9E14:
	movs r0, #0x40
_080E9E16:
	strh r0, [r4, #4]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080E9E28
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080E9E28:
	ldr r2, _080E9E4C @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080E9E50 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080E9E54 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	movs r1, #4
	ldrsh r2, [r4, r1]
	lsrs r0, r0, #0x10
	movs r1, #0x1f
	ands r0, r1
	subs r2, r2, r0
	strh r2, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080E9E4C: .4byte gRngVal
_080E9E50: .4byte 0x00196225
_080E9E54: .4byte 0x3C6EF35F

	thumb_func_start sub_080E9E58
sub_080E9E58: @ 0x080E9E58
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	ldr r1, _080E9E90 @ =gUnk_08356CB4
	adds r2, r4, #0
	adds r2, #0x9e
	ldrb r0, [r2]
	lsls r0, r0, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r6, #0
	strh r0, [r1]
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #0xf
	ands r0, r1
	strb r0, [r2]
	adds r0, r4, #0
	adds r0, #0x83
	ldrb r0, [r0]
	cmp r0, #0
	bne _080E9E94
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	b _080E9F9A
	.align 2, 0
_080E9E90: .4byte gUnk_08356CB4
_080E9E94:
	ldrb r1, [r4, #1]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080E9ED4
	adds r3, r4, #0
	adds r3, #0x2f
	strb r6, [r3]
	ldr r2, _080E9ECC @ =gUnk_02020EE0
	ldr r0, _080E9ED0 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r5, r3, #0
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080E9F24
	movs r6, #0xc6
	lsls r6, r6, #2
	b _080E9EFC
	.align 2, 0
_080E9ECC: .4byte gUnk_02020EE0
_080E9ED0: .4byte gUnk_0203AD3C
_080E9ED4:
	adds r3, r4, #0
	adds r3, #0x2f
	strb r6, [r3]
	ldr r2, _080E9F18 @ =gUnk_02020EE0
	ldr r0, _080E9F1C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	adds r5, r3, #0
	adds r7, r1, #0
	ldrh r1, [r7]
	cmp r0, r1
	bne _080E9F24
	ldr r6, _080E9F20 @ =0x00000317
_080E9EFC:
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E9F26
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080E9F26
	.align 2, 0
_080E9F18: .4byte gUnk_02020EE0
_080E9F1C: .4byte gUnk_0203AD3C
_080E9F20: .4byte 0x00000317
_080E9F24:
	strb r6, [r5]
_080E9F26:
	ldr r0, [r4, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080E9F9A
	adds r0, r4, #0
	bl sub_080EA3B8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #0
	strb r0, [r1]
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	cmp r0, #0
	beq _080E9F4C
	movs r0, #0x30
	b _080E9F4E
_080E9F4C:
	movs r0, #0x40
_080E9F4E:
	strh r0, [r4, #4]
	movs r3, #0
	strb r3, [r5]
	ldr r2, _080E9F8C @ =gUnk_02020EE0
	ldr r0, _080E9F90 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080E9F98
	ldr r6, _080E9F94 @ =0x00000317
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080E9F9A
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080E9F9A
	.align 2, 0
_080E9F8C: .4byte gUnk_02020EE0
_080E9F90: .4byte gUnk_0203AD3C
_080E9F94: .4byte 0x00000317
_080E9F98:
	strb r3, [r5]
_080E9F9A:
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080E9FB8
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #1
	strb r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
_080E9FB8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080E9FC0
sub_080E9FC0: @ 0x080E9FC0
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080E9FFC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080EA000 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080EA018
	.align 2, 0
_080E9FFC: .4byte gUnk_020229D4
_080EA000: .4byte gUnk_020229E0
_080EA004:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080EA020
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080EA018:
	cmp r0, #0
	bne _080EA004
	orrs r2, r3
	str r2, [r1]
_080EA020:
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
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xba
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
	strb r0, [r1, #0x10]
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
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EA084
sub_080EA084: @ 0x080EA084
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EA0D4 @ =sub_080EA0D8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EA0A4
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EA0A4:
	adds r0, r4, #0
	adds r0, #0x87
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xd0
	strh r0, [r1]
	adds r2, r1, #0
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EA0CE
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080EA0CE:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EA0D4: .4byte sub_080EA0D8

	thumb_func_start sub_080EA0D8
sub_080EA0D8: @ 0x080EA0D8
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrb r0, [r4, #1]
	movs r6, #3
	ands r6, r0
	cmp r6, #0
	bne _080EA19A
	movs r0, #4
	ldrsh r3, [r4, r0]
	cmp r3, #0
	beq _080EA14A
	adds r5, r4, #0
	adds r5, #0x2f
	strb r6, [r5]
	ldr r2, _080EA138 @ =gUnk_02020EE0
	ldr r0, _080EA13C @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EA144
	ldr r6, _080EA140 @ =0x00000317
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080EA146
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080EA146
	.align 2, 0
_080EA138: .4byte gUnk_02020EE0
_080EA13C: .4byte gUnk_0203AD3C
_080EA140: .4byte 0x00000317
_080EA144:
	strb r6, [r5]
_080EA146:
	movs r0, #0
	b _080EA198
_080EA14A:
	adds r5, r4, #0
	adds r5, #0x2f
	strb r3, [r5]
	ldr r2, _080EA18C @ =gUnk_02020EE0
	ldr r0, _080EA190 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r4, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EA194
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080EA196
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080EA196
	.align 2, 0
_080EA18C: .4byte gUnk_02020EE0
_080EA190: .4byte gUnk_0203AD3C
_080EA194:
	strb r3, [r5]
_080EA196:
	movs r0, #1
_080EA198:
	strh r0, [r4, #4]
_080EA19A:
	adds r0, r4, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080EA1B8
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	bl sub_0809DA30
_080EA1B8:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EA1C0
sub_080EA1C0: @ 0x080EA1C0
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080EA1FC @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080EA200 @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080EA218
	.align 2, 0
_080EA1FC: .4byte gUnk_020229D4
_080EA200: .4byte gUnk_020229E0
_080EA204:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080EA220
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080EA218:
	cmp r0, #0
	bne _080EA204
	orrs r2, r3
	str r2, [r1]
_080EA220:
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
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	strb r4, [r1, #0xc]
	strb r4, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
	strb r0, [r1, #0x10]
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
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080EA27C
sub_080EA27C: @ 0x080EA27C
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
	ldr r0, [r5, #0x40]
	asrs r0, r0, #8
	mov sl, r0
	ldr r0, [r5, #0x44]
	asrs r0, r0, #8
	mov ip, r0
	movs r4, #0
	ldr r1, _080EA2B8 @ =gUnk_020229D4
	movs r3, #1
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
	ldr r6, _080EA2BC @ =gUnk_020229E0
	movs r7, #0x56
	adds r7, r7, r5
	mov r8, r7
	b _080EA2D4
	.align 2, 0
_080EA2B8: .4byte gUnk_020229D4
_080EA2BC: .4byte gUnk_020229E0
_080EA2C0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #0x1f
	bhi _080EA2DC
	movs r3, #1
	lsls r3, r4
	ldr r2, [r1]
	adds r0, r2, #0
	ands r0, r3
_080EA2D4:
	cmp r0, #0
	bne _080EA2C0
	orrs r2, r3
	str r2, [r1]
_080EA2DC:
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
	mov r0, sl
	strh r0, [r1, #6]
	mov r7, ip
	strh r7, [r1, #8]
	strb r3, [r1, #2]
	movs r0, #0x1f
	strb r0, [r1, #3]
	strb r3, [r1, #4]
	strb r3, [r1, #5]
	movs r0, #0xbb
	strb r0, [r1, #0xc]
	ldr r0, [r5, #8]
	ands r0, r4
	strb r0, [r1, #0xe]
	strb r3, [r1, #0xf]
	mov r0, sb
	strb r0, [r1, #0x10]
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
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EA340
sub_080EA340: @ 0x080EA340
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EA3A8 @ =sub_080EB0DC
	movs r1, #1
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EA360
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EA360:
	adds r3, r4, #0
	adds r3, #0x50
	movs r0, #0xa0
	strh r0, [r3]
	ldr r2, _080EA3AC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EA3B0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EA3B4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _080EA38E
	adds r1, r4, #0
	adds r1, #0x83
	movs r0, #3
	strb r0, [r1]
	movs r0, #0x90
	lsls r0, r0, #1
	strh r0, [r3]
_080EA38E:
	ldr r0, [r4, #8]
	ands r0, r2
	cmp r0, #0
	beq _080EA39C
	ldrh r0, [r3]
	rsbs r0, r0, #0
	strh r0, [r3]
_080EA39C:
	movs r0, #0x5a
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EA3A8: .4byte sub_080EB0DC
_080EA3AC: .4byte gRngVal
_080EA3B0: .4byte 0x00196225
_080EA3B4: .4byte 0x3C6EF35F

	thumb_func_start sub_080EA3B8
sub_080EA3B8: @ 0x080EA3B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r5, r0, #0
	ldr r0, _080EA3EC @ =sub_080EA528
	movs r2, #0xd4
	lsls r2, r2, #6
	ldr r1, _080EA3F0 @ =sub_0803DCCC
	str r1, [sp]
	movs r1, #0x78
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA3F4
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080EA3FC
	.align 2, 0
_080EA3EC: .4byte sub_080EA528
_080EA3F0: .4byte sub_0803DCCC
_080EA3F4:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080EA3FC:
	adds r4, r0, #0
	bl sub_0803E380
	movs r0, #0
	mov ip, r0
	movs r6, #2
	strb r6, [r4]
	ldr r0, [r5, #0x40]
	str r0, [r4, #0x40]
	ldr r0, [r5, #0x44]
	str r0, [r4, #0x44]
	str r5, [r4, #0x70]
	movs r1, #0
	mov r8, r1
	mov r0, ip
	strh r0, [r4, #4]
	adds r0, r5, #0
	adds r0, #0x60
	ldrh r0, [r0]
	adds r7, r4, #0
	adds r7, #0x60
	strh r0, [r7]
	adds r0, r5, #0
	adds r0, #0x56
	ldrb r0, [r0]
	adds r1, r4, #0
	adds r1, #0x56
	strb r0, [r1]
	ldr r0, _080EA500 @ =gUnk_03000510
	ldrb r2, [r0, #4]
	movs r3, #1
	adds r0, r3, #0
	ldrb r1, [r1]
	lsls r0, r1
	movs r1, #0x10
	orrs r0, r1
	ands r2, r0
	cmp r2, #0
	beq _080EA454
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #6
	orrs r0, r1
	str r0, [r4, #8]
_080EA454:
	adds r0, r4, #0
	adds r0, #0x63
	strb r3, [r0]
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #0x15
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	ldr r0, _080EA504 @ =0x20000043
	str r0, [r4, #0x68]
	ldr r0, [r4, #0x5c]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #0x5c]
	adds r0, r4, #0
	adds r0, #0x50
	mov r1, ip
	strh r1, [r0]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xfc
	lsls r0, r0, #8
	strh r0, [r1]
	movs r2, #2
	rsbs r2, r2, #0
	str r6, [sp]
	adds r0, r4, #0
	adds r1, r2, #0
	movs r3, #2
	bl sub_0803E2B0
	str r6, [sp]
	adds r0, r4, #0
	movs r1, #2
	movs r2, #2
	movs r3, #2
	bl sub_0803E308
	adds r1, r4, #0
	adds r1, #0x10
	ldr r3, _080EA508 @ =0x00000317
	movs r0, #0x18
	str r0, [sp]
	movs r0, #0xc
	str r0, [sp, #4]
	adds r0, r4, #0
	movs r2, #6
	bl sub_080708DC
	adds r5, r4, #0
	adds r5, #0x2f
	mov r0, r8
	strb r0, [r5]
	ldr r2, _080EA50C @ =gUnk_02020EE0
	ldr r0, _080EA510 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	ldrh r0, [r0]
	ldrh r7, [r7]
	cmp r0, r7
	bne _080EA514
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r5]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080EA518
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r5]
	b _080EA518
	.align 2, 0
_080EA500: .4byte gUnk_03000510
_080EA504: .4byte 0x20000043
_080EA508: .4byte 0x00000317
_080EA50C: .4byte gUnk_02020EE0
_080EA510: .4byte gUnk_0203AD3C
_080EA514:
	mov r1, r8
	strb r1, [r5]
_080EA518:
	movs r0, #8
	strh r0, [r4, #4]
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080EA528
sub_080EA528: @ 0x080EA528
	push {r4, r5, r6, lr}
	sub sp, #0x28
	ldr r0, _080EA548 @ =gCurTask
	ldr r2, [r0]
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA54C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r0, r0, r1
	b _080EA554
	.align 2, 0
_080EA548: .4byte gCurTask
_080EA54C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r0, r1, r0
_080EA554:
	adds r5, r0, #0
	ldr r2, _080EA5C0 @ =gUnk_02020EE0
	ldr r0, _080EA5C4 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EA608
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r0, r1
	cmp r0, #0
	beq _080EA5D0
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080EA62C
	ldrh r1, [r5, #0x1c]
	adds r0, r5, #0
	adds r0, #0x2a
	ldrb r2, [r0]
	movs r0, #6
	bl sub_0803DE54
	adds r4, r5, #0
	adds r4, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080EA5C8 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r4, #8]
	ldr r2, _080EA5CC @ =0x0400000A
	adds r0, r4, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r4, #8]
	b _080EA62C
	.align 2, 0
_080EA5C0: .4byte gUnk_02020EE0
_080EA5C4: .4byte gUnk_0203AD3C
_080EA5C8: .4byte 0xFFF7FFFF
_080EA5CC: .4byte 0x0400000A
_080EA5D0:
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _080EA62C
	movs r0, #6
	bl sub_081570B0
	adds r3, r5, #0
	adds r3, #0x10
	str r0, [r5, #0x10]
	ldr r0, [r5, #0x18]
	ldr r1, _080EA600 @ =0xFFF7FFFF
	ands r0, r1
	str r0, [r3, #8]
	ldr r2, _080EA604 @ =0x0400000A
	adds r0, r3, #0
	mov r1, sp
	bl CpuSet
	ldrb r1, [r5, #1]
	mov r0, sp
	bl sub_0815521C
	b _080EA62C
	.align 2, 0
_080EA600: .4byte 0xFFF7FFFF
_080EA604: .4byte 0x0400000A
_080EA608:
	ldr r1, [r5, #0x10]
	cmp r1, #0
	beq _080EA622
	ldr r4, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r4, r0
	cmp r4, #0
	bne _080EA622
	adds r0, r1, #0
	bl sub_08157190
	str r4, [r5, #0x10]
_080EA622:
	ldr r0, [r5, #0x18]
	movs r1, #0x80
	lsls r1, r1, #0xc
	orrs r0, r1
	str r0, [r5, #0x18]
_080EA62C:
	ldr r2, _080EA674 @ =gUnk_02020EE0
	ldr r0, _080EA678 @ =gUnk_0203AD3C
	ldrb r1, [r0]
	movs r0, #0xd4
	lsls r0, r0, #1
	muls r0, r1, r0
	adds r0, r0, r2
	adds r0, #0x60
	adds r1, r5, #0
	adds r1, #0x60
	ldrh r0, [r0]
	ldrh r1, [r1]
	cmp r0, r1
	bne _080EA67C
	adds r4, r5, #0
	adds r4, #0x2f
	ldrb r0, [r4]
	cmp r0, #0
	bne _080EA684
	movs r6, #0xc6
	lsls r6, r6, #2
	adds r0, r6, #0
	bl sub_0803DF24
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xff
	bne _080EA684
	adds r0, r6, #0
	movs r1, #0
	bl sub_0803DFAC
	strb r0, [r4]
	b _080EA684
	.align 2, 0
_080EA674: .4byte gUnk_02020EE0
_080EA678: .4byte gUnk_0203AD3C
_080EA67C:
	adds r1, r5, #0
	adds r1, #0x2f
	movs r0, #0
	strb r0, [r1]
_080EA684:
	adds r0, r5, #0
	bl sub_0806F780
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080EA692
	b _080EA7C6
_080EA692:
	ldr r0, [r5, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r5, #8]
	movs r1, #0x90
	lsls r1, r1, #5
	ands r0, r1
	adds r4, r5, #0
	adds r4, #0x56
	ldr r6, _080EA6C4 @ =gCurLevelInfo
	cmp r0, #0
	bne _080EA706
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _080EA6CC
	adds r1, r0, #0
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r0, r1, r0
	adds r0, r0, r6
	ldr r1, _080EA6C8 @ =0x0000065E
	adds r0, r0, r1
	ldrb r1, [r0]
	b _080EA6CE
	.align 2, 0
_080EA6C4: .4byte gCurLevelInfo
_080EA6C8: .4byte 0x0000065E
_080EA6CC:
	movs r1, #0xff
_080EA6CE:
	cmp r1, #0xff
	beq _080EA706
	lsls r3, r1, #6
	ldrb r0, [r5]
	subs r0, #1
	lsls r0, r0, #5
	adds r3, r3, r0
	ldr r0, _080EA7B4 @ =gUnk_02022EB0
	lsls r1, r1, #1
	subs r1, #1
	ldrb r2, [r5]
	adds r1, r1, r2
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r2, r0, #1
	strb r2, [r1]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r2, _080EA7B8 @ =gUnk_02022F50
	lsls r1, r0, #2
	adds r1, r1, r2
	str r5, [r1]
	adds r0, #1
	lsls r0, r0, #2
	adds r0, r0, r2
	movs r1, #0
	str r1, [r0]
_080EA706:
	ldr r2, [r5, #8]
	movs r0, #0x80
	lsls r0, r0, #4
	ands r0, r2
	cmp r0, #0
	bne _080EA72E
	adds r0, r5, #0
	adds r0, #0x50
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x40]
	adds r0, r0, r1
	str r0, [r5, #0x40]
	adds r0, r5, #0
	adds r0, #0x52
	movs r3, #0
	ldrsh r1, [r0, r3]
	ldr r0, [r5, #0x44]
	subs r0, r0, r1
	str r0, [r5, #0x44]
_080EA72E:
	ldrh r0, [r5, #4]
	subs r0, #1
	strh r0, [r5, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EA740
	ldr r0, _080EA7BC @ =0xFFFFFEFF
	ands r2, r0
	str r2, [r5, #8]
_080EA740:
	ldrb r1, [r4]
	movs r0, #0xcd
	lsls r0, r0, #3
	muls r1, r0, r1
	adds r0, r6, #0
	adds r0, #0x50
	adds r0, r1, r0
	ldr r2, [r5, #0x40]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080EA782
	adds r0, r6, #0
	adds r0, #0x48
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080EA782
	adds r0, r6, #0
	adds r0, #0x54
	adds r0, r1, r0
	ldr r2, [r5, #0x44]
	ldr r0, [r0]
	cmp r2, r0
	bgt _080EA782
	adds r0, r6, #0
	adds r0, #0x4c
	adds r0, r1, r0
	ldr r0, [r0]
	cmp r2, r0
	blt _080EA782
	adds r0, r5, #0
	bl sub_0806FC70
_080EA782:
	adds r0, r5, #0
	adds r0, #0x62
	ldrb r0, [r0]
	cmp r0, #0
	bne _080EA798
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #0xb
	ands r0, r1
	cmp r0, #0
	beq _080EA7C0
_080EA798:
	movs r2, #0xa6
	lsls r2, r2, #2
	adds r0, r5, #0
	movs r1, #0
	movs r3, #0
	bl sub_0808AE30
	ldr r0, [r5, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r5, #8]
	b _080EA7C6
	.align 2, 0
_080EA7B4: .4byte gUnk_02022EB0
_080EA7B8: .4byte gUnk_02022F50
_080EA7BC: .4byte 0xFFFFFEFF
_080EA7C0:
	adds r0, r5, #0
	bl sub_0806F8BC
_080EA7C6:
	add sp, #0x28
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start CreateWizFootball
CreateWizFootball: @ 0x080EA7D0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080EA804 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EA808 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA80C
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080EA814
	.align 2, 0
_080EA804: .4byte ObjectMain
_080EA808: .4byte ObjectDestroy
_080EA80C:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080EA814:
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
	ldr r0, _080EA870 @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080EA874
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EA870: .4byte sub_0809F840

	thumb_func_start sub_080EA874
sub_080EA874: @ 0x080EA874
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EA8BC @ =sub_080E9448
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EA894
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EA894:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xd0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0x80
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EA8B6
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080EA8B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EA8BC: .4byte sub_080E9448

	thumb_func_start CreateWizCar
CreateWizCar: @ 0x080EA8C0
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080EA8F4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EA8F8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA8FC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080EA904
	.align 2, 0
_080EA8F4: .4byte ObjectMain
_080EA8F8: .4byte ObjectDestroy
_080EA8FC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080EA904:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EA958 @ =sub_0809F840
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
	bl sub_080EA95C
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EA958: .4byte sub_0809F840

	thumb_func_start sub_080EA95C
sub_080EA95C: @ 0x080EA95C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EA988 @ =sub_080E95E8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EA97C
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EA97C:
	movs r0, #0x5a
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EA988: .4byte sub_080E95E8

	thumb_func_start CreateWizBomb
CreateWizBomb: @ 0x080EA98C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080EA9C0 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EA9C4 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EA9C8
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080EA9D0
	.align 2, 0
_080EA9C0: .4byte ObjectMain
_080EA9C4: .4byte ObjectDestroy
_080EA9C8:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080EA9D0:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EAA2C @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r4, #6
	rsbs r4, r4, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_080E9B18
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EAA2C: .4byte sub_0809F840

	thumb_func_start sub_080EAA30
sub_080EAA30: @ 0x080EAA30
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAA7C @ =sub_080EB0B8
	movs r1, #0
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0xb0
	ldr r0, [r0]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _080EAA50
	ldr r0, [r4, #8]
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
_080EAA50:
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #1
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EAA72
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080EAA72:
	movs r0, #0x18
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAA7C: .4byte sub_080EB0B8

	thumb_func_start CreateWizApple
CreateWizApple: @ 0x080EAA80
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	ldr r0, _080EAAB4 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EAAB8 @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EAABC
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r5, r0, r1
	b _080EAAC4
	.align 2, 0
_080EAAB4: .4byte ObjectMain
_080EAAB8: .4byte ObjectDestroy
_080EAABC:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r5, r1, r0
_080EAAC4:
	adds r0, r5, #0
	adds r1, r6, #0
	adds r2, r4, #0
	bl InitObject
	ldr r0, [r5, #0xc]
	movs r1, #2
	orrs r0, r1
	str r0, [r5, #0xc]
	adds r1, r5, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EAB20 @ =sub_0809F840
	str r0, [r5, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r4, #6
	rsbs r4, r4, #0
	movs r0, #5
	str r0, [sp]
	adds r0, r5, #0
	adds r2, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #7
	str r0, [sp]
	adds r0, r5, #0
	adds r1, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r5, #0
	bl ObjectInitSprite
	adds r0, r5, #0
	bl sub_080EA084
	adds r0, r5, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EAB20: .4byte sub_0809F840

	thumb_func_start CreateWizDroppy
CreateWizDroppy: @ 0x080EAB24
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	ldr r0, _080EAB58 @ =ObjectMain
	movs r2, #0x80
	lsls r2, r2, #5
	ldr r1, _080EAB5C @ =ObjectDestroy
	str r1, [sp]
	movs r1, #0xb4
	movs r3, #0x10
	bl TaskCreate
	adds r2, r0, #0
	ldrh r1, [r2, #0x12]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _080EAB60
	ldrh r0, [r2, #6]
	lsls r0, r0, #2
	movs r1, #0x80
	lsls r1, r1, #0x12
	adds r4, r0, r1
	b _080EAB68
	.align 2, 0
_080EAB58: .4byte ObjectMain
_080EAB5C: .4byte ObjectDestroy
_080EAB60:
	ldrh r1, [r2, #6]
	movs r0, #0xc0
	lsls r0, r0, #0x12
	adds r4, r1, r0
_080EAB68:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl InitObject
	adds r1, r4, #0
	adds r1, #0x9e
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080EABBC @ =sub_0809F840
	str r0, [r4, #0x7c]
	movs r1, #5
	rsbs r1, r1, #0
	movs r2, #7
	rsbs r2, r2, #0
	movs r0, #4
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #5
	bl sub_0803E2B0
	movs r1, #6
	rsbs r1, r1, #0
	movs r2, #8
	rsbs r2, r2, #0
	movs r0, #6
	str r0, [sp]
	adds r0, r4, #0
	movs r3, #6
	bl sub_0803E308
	adds r0, r4, #0
	bl ObjectInitSprite
	adds r0, r4, #0
	bl sub_080EA340
	adds r0, r4, #0
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080EABBC: .4byte sub_0809F840

	thumb_func_start sub_080EABC0
sub_080EABC0: @ 0x080EABC0
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAC08 @ =sub_080E7F98
	movs r1, #0x10
	bl ObjectSetFunc
	movs r0, #0x80
	lsls r0, r0, #8
	str r0, [r4, #0x40]
	ldr r0, _080EAC0C @ =0xFFFFF000
	str r0, [r4, #0x44]
	adds r2, r4, #0
	adds r2, #0x52
	movs r1, #0
	ldr r0, _080EAC10 @ =0x0000FF80
	strh r0, [r2]
	adds r0, r4, #0
	adds r0, #0x85
	strb r1, [r0]
	ldr r0, [r4, #8]
	ldr r1, _080EAC14 @ =0xFFFFFBFF
	ands r0, r1
	movs r1, #0xb4
	strh r1, [r4, #4]
	adds r1, #0x4c
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	movs r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAC08: .4byte sub_080E7F98
_080EAC0C: .4byte 0xFFFFF000
_080EAC10: .4byte 0x0000FF80
_080EAC14: .4byte 0xFFFFFBFF

	thumb_func_start sub_080EAC18
sub_080EAC18: @ 0x080EAC18
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAC44 @ =sub_080E8050
	movs r1, #0x11
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
	movs r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAC44: .4byte sub_080E8050

	thumb_func_start sub_080EAC48
sub_080EAC48: @ 0x080EAC48
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAC7C @ =sub_080EAC80
	movs r1, #4
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0xb0
	lsls r0, r0, #1
	strh r0, [r1]
	adds r1, #2
	adds r0, #0x20
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #2
	orrs r0, r1
	subs r1, #0x43
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x28
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAC7C: .4byte sub_080EAC80

	thumb_func_start sub_080EAC80
sub_080EAC80: @ 0x080EAC80
	push {lr}
	adds r2, r0, #0
	adds r3, r2, #0
	adds r3, #0x83
	ldrb r0, [r3]
	cmp r0, #6
	bne _080EAC98
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	b _080EACA6
_080EAC98:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EACA6
	movs r0, #6
	strb r0, [r3]
_080EACA6:
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EACBA
	ldr r0, [r2, #8]
	ldr r1, _080EACD4 @ =0xFFFFFEFF
	ands r0, r1
	str r0, [r2, #8]
_080EACBA:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _080EACCE
	adds r0, r2, #0
	bl sub_080E8178
_080EACCE:
	pop {r0}
	bx r0
	.align 2, 0
_080EACD4: .4byte 0xFFFFFEFF

	thumb_func_start sub_080EACD8
sub_080EACD8: @ 0x080EACD8
	push {lr}
	adds r1, r0, #0
	ldr r2, [r1, #8]
	movs r0, #4
	orrs r2, r0
	str r2, [r1, #8]
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EAD04
	ldr r0, _080EAD08 @ =0xFFFFFDFF
	ands r2, r0
	str r2, [r1, #8]
	adds r2, r1, #0
	adds r2, #0x85
	movs r0, #0
	strb r0, [r2]
	adds r0, r1, #0
	bl sub_080E82C4
_080EAD04:
	pop {r0}
	bx r0
	.align 2, 0
_080EAD08: .4byte 0xFFFFFDFF

	thumb_func_start sub_080EAD0C
sub_080EAD0C: @ 0x080EAD0C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAD38 @ =sub_080E7EBC
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
	movs r1, #0x80
	lsls r1, r1, #3
	orrs r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAD38: .4byte sub_080E7EBC

	thumb_func_start sub_080EAD3C
sub_080EAD3C: @ 0x080EAD3C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAD60 @ =sub_080EAD8C
	movs r1, #3
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080EAD68
	ldr r0, _080EAD64 @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080EAD6E
	.align 2, 0
_080EAD60: .4byte sub_080EAD8C
_080EAD64: .4byte 0xFFFFFF00
_080EAD68:
	ldr r0, _080EAD88 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080EAD6E:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAD88: .4byte 0xFFFFFF00

	thumb_func_start sub_080EAD8C
sub_080EAD8C: @ 0x080EAD8C
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EADA0
	adds r0, r2, #0
	bl sub_080E8B08
_080EADA0:
	pop {r0}
	bx r0

	thumb_func_start sub_080EADA4
sub_080EADA4: @ 0x080EADA4
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r2, _080EADE0 @ =sub_080E8DAC
	movs r1, #7
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r3, r4, #0
	adds r3, #0x9e
	movs r2, #0
	strb r2, [r3]
	adds r1, r4, #0
	adds r1, #0x50
	movs r5, #0
	ldrsh r0, [r1, r5]
	cmp r0, #0
	beq _080EADD2
	movs r0, #1
	strb r0, [r3]
_080EADD2:
	strh r2, [r1]
	adds r0, r4, #0
	adds r0, #0x52
	strh r2, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080EADE0: .4byte sub_080E8DAC

	thumb_func_start sub_080EADE4
sub_080EADE4: @ 0x080EADE4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAE08 @ =sub_080EAE34
	movs r1, #3
	bl ObjectSetFunc
	ldr r1, [r4, #0x40]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080EAE10
	ldr r0, _080EAE0C @ =0xFFFFFF00
	ands r1, r0
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r1, r2
	str r0, [r4, #0x40]
	b _080EAE16
	.align 2, 0
_080EAE08: .4byte sub_080EAE34
_080EAE0C: .4byte 0xFFFFFF00
_080EAE10:
	ldr r0, _080EAE30 @ =0xFFFFFF00
	ands r1, r0
	str r1, [r4, #0x40]
_080EAE16:
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAE30: .4byte 0xFFFFFF00

	thumb_func_start sub_080EAE34
sub_080EAE34: @ 0x080EAE34
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EAE48
	adds r0, r2, #0
	bl sub_080E8E74
_080EAE48:
	pop {r0}
	bx r0

	thumb_func_start sub_080EAE4C
sub_080EAE4C: @ 0x080EAE4C
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAE74 @ =sub_080EAE78
	movs r1, #7
	bl ObjectSetFunc
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	str r0, [r4, #8]
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r4, #0x52
	strh r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAE74: .4byte sub_080EAE78

	thumb_func_start sub_080EAE78
sub_080EAE78: @ 0x080EAE78
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080EAE92
	movs r0, #1
	eors r1, r0
	str r1, [r2, #8]
	adds r0, r2, #0
	bl sub_080E82C4
_080EAE92:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EAE98
sub_080EAE98: @ 0x080EAE98
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAEC0 @ =sub_080EAEC4
	movs r1, #0xd
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAEC0: .4byte sub_080EAEC4

	thumb_func_start sub_080EAEC4
sub_080EAEC4: @ 0x080EAEC4
	push {lr}
	adds r2, r0, #0
	ldrb r0, [r2, #1]
	cmp r0, #0x14
	bls _080EAEDE
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #8
	orrs r0, r1
	movs r1, #0x80
	lsls r1, r1, #0x11
	orrs r0, r1
	str r0, [r2, #8]
_080EAEDE:
	ldr r0, [r2, #8]
	movs r1, #2
	ands r0, r1
	cmp r0, #0
	beq _080EAEEE
	adds r0, r2, #0
	bl sub_080EAEF4
_080EAEEE:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EAEF4
sub_080EAEF4: @ 0x080EAEF4
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAF20 @ =sub_080E9034
	movs r1, #0xe
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	movs r0, #0x38
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAF20: .4byte sub_080E9034

	thumb_func_start sub_080EAF24
sub_080EAF24: @ 0x080EAF24
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EAF4C @ =sub_080EAF50
	movs r1, #0xf
	bl ObjectSetFunc
	adds r0, r4, #0
	adds r0, #0x50
	movs r1, #0
	strh r1, [r0]
	adds r0, #2
	strh r1, [r0]
	ldr r0, [r4, #8]
	subs r1, #3
	ands r0, r1
	str r0, [r4, #8]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EAF4C: .4byte sub_080EAF50

	thumb_func_start sub_080EAF50
sub_080EAF50: @ 0x080EAF50
	push {lr}
	adds r3, r0, #0
	ldrb r2, [r3, #1]
	cmp r2, #0x1d
	bhi _080EAF78
	ldr r1, [r3, #8]
	movs r0, #0x80
	lsls r0, r0, #8
	orrs r1, r0
	movs r0, #0x80
	lsls r0, r0, #0x11
	orrs r1, r0
	str r1, [r3, #8]
	cmp r2, #0x1d
	bne _080EAF78
	ldr r0, _080EAFB4 @ =0xFFFF7FFF
	ands r1, r0
	ldr r0, _080EAFB8 @ =0xFEFFFFFF
	ands r1, r0
	str r1, [r3, #8]
_080EAF78:
	ldr r1, [r3, #8]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _080EAFD6
	ldr r0, _080EAFB4 @ =0xFFFF7FFF
	ands r1, r0
	str r1, [r3, #8]
	adds r0, r3, #0
	adds r0, #0x85
	ldrb r0, [r0]
	cmp r0, #0
	beq _080EAFD0
	ldr r2, _080EAFBC @ =gRngVal
	ldr r1, [r2]
	ldr r0, _080EAFC0 @ =0x00196225
	muls r0, r1, r0
	ldr r1, _080EAFC4 @ =0x3C6EF35F
	adds r0, r0, r1
	str r0, [r2]
	lsrs r0, r0, #0x10
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EAFC8
	adds r0, r3, #0
	bl sub_080E8430
	b _080EAFD6
	.align 2, 0
_080EAFB4: .4byte 0xFFFF7FFF
_080EAFB8: .4byte 0xFEFFFFFF
_080EAFBC: .4byte gRngVal
_080EAFC0: .4byte 0x00196225
_080EAFC4: .4byte 0x3C6EF35F
_080EAFC8:
	adds r0, r3, #0
	bl sub_080E8588
	b _080EAFD6
_080EAFD0:
	adds r0, r3, #0
	bl sub_080E82C4
_080EAFD6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EAFDC
sub_080EAFDC: @ 0x080EAFDC
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EB024 @ =sub_080EB028
	movs r1, #0x12
	bl ObjectSetFunc
	adds r2, r4, #0
	adds r2, #0x50
	movs r0, #0xff
	lsls r0, r0, #8
	strh r0, [r2]
	adds r1, r4, #0
	adds r1, #0x52
	movs r0, #0xc0
	lsls r0, r0, #2
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #2
	orrs r0, r1
	str r0, [r4, #8]
	movs r1, #0x1e
	strh r1, [r4, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080EB01E
	ldrh r0, [r2]
	rsbs r0, r0, #0
	strh r0, [r2]
_080EB01E:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EB024: .4byte sub_080EB028

	thumb_func_start sub_080EB028
sub_080EB028: @ 0x080EB028
	push {lr}
	adds r1, r0, #0
	ldrh r0, [r1, #4]
	subs r0, #1
	strh r0, [r1, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EB03E
	adds r0, r1, #0
	bl sub_080EB044
_080EB03E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EB044
sub_080EB044: @ 0x080EB044
	push {r4, lr}
	adds r4, r0, #0
	ldr r2, _080EB080 @ =sub_080EB088
	movs r1, #0x13
	bl ObjectSetFunc
	adds r1, r4, #0
	adds r1, #0x50
	movs r0, #0
	strh r0, [r1]
	adds r1, #2
	ldr r0, _080EB084 @ =0x0000FF80
	strh r0, [r1]
	ldr r0, [r4, #8]
	movs r1, #3
	rsbs r1, r1, #0
	ands r0, r1
	movs r1, #0x40
	orrs r0, r1
	subs r1, #0x61
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #1
	orrs r0, r1
	str r0, [r4, #8]
	movs r0, #0x8c
	strh r0, [r4, #4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080EB080: .4byte sub_080EB088
_080EB084: .4byte 0x0000FF80

	thumb_func_start sub_080EB088
sub_080EB088: @ 0x080EB088
	push {r4, lr}
	adds r4, r0, #0
	ldr r0, [r4, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r4, #8]
	ldrh r0, [r4, #4]
	subs r0, #1
	strh r0, [r4, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EB0B0
	adds r0, r4, #0
	bl sub_0809DA30
	ldr r0, [r4, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r4, #8]
_080EB0B0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EB0B8
sub_080EB0B8: @ 0x080EB0B8
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r0, [r2, #4]
	subs r0, #1
	strh r0, [r2, #4]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080EB0D6
	adds r0, r2, #0
	bl sub_080E9DD4
_080EB0D6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080EB0DC
sub_080EB0DC: @ 0x080EB0DC
	push {lr}
	adds r2, r0, #0
	ldr r0, [r2, #8]
	movs r1, #4
	orrs r0, r1
	str r0, [r2, #8]
	ldrh r1, [r2, #4]
	movs r3, #4
	ldrsh r0, [r2, r3]
	cmp r0, #0
	beq _080EB0F6
	subs r0, r1, #1
	strh r0, [r2, #4]
_080EB0F6:
	adds r0, r2, #0
	adds r0, #0x62
	ldrb r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	beq _080EB130
	movs r1, #4
	ldrsh r0, [r2, r1]
	cmp r0, #0
	beq _080EB120
	ldr r0, [r2, #8]
	movs r1, #1
	eors r0, r1
	str r0, [r2, #8]
	adds r1, r2, #0
	adds r1, #0x50
	ldrh r0, [r1]
	rsbs r0, r0, #0
	strh r0, [r1]
	b _080EB130
_080EB120:
	ldr r0, [r2, #8]
	movs r1, #0x80
	lsls r1, r1, #5
	orrs r0, r1
	str r0, [r2, #8]
	adds r0, r2, #0
	bl sub_0809DA30
_080EB130:
	pop {r0}
	bx r0
