    .include "asm/macros.inc"
    .include "constants/constants.inc"

    .section .rodata

gUnk_08350BB0:: @ 08350BB0
	.incbin "baserom.gba", 0x350BB0, 0x000001C

gUnk_08350BCC:: @ 08350BCC
	.incbin "baserom.gba", 0x350BCC, 0x0000024

gUnk_08350BF0:: @ 08350BF0
	.incbin "baserom.gba", 0x350BF0, 0x0000030

gUnk_08350C20:: @ 08350C20
	.incbin "baserom.gba", 0x350C20, 0x0000018

gUnk_08350C38:: @ 08350C38
	.incbin "baserom.gba", 0x350C38, 0x0000050

gUnk_08350C88:: @ 08350C88
	.incbin "baserom.gba", 0x350C88, 0x0000028

gUnk_08350CB0:: @ 08350CB0
	.incbin "baserom.gba", 0x350CB0, 0x0000018

gUnk_08350CC8:: @ 08350CC8
	.incbin "baserom.gba", 0x350CC8, 0x000000A

gUnk_08350CD2:: @ 08350CD2
	.incbin "baserom.gba", 0x350CD2, 0x000000A

gUnk_08350CDC:: @ 08350CDC
	.incbin "baserom.gba", 0x350CDC, 0x000000A

gUnk_08350CE6:: @ 08350CE6
	.incbin "baserom.gba", 0x350CE6, 0x0000008

gUnk_08350CEE:: @ 08350CEE
	.incbin "baserom.gba", 0x350CEE, 0x0000008

gUnk_08350CF6:: @ 08350CF6
	.incbin "baserom.gba", 0x350CF6, 0x0000008

gUnk_08350CFE:: @ 08350CFE
	.incbin "baserom.gba", 0x350CFE, 0x0000020

gUnk_08350D1E:: @ 08350D1E
	.incbin "baserom.gba", 0x350D1E, 0x0000020

gUnk_08350D3E:: @ 08350D3E
	.incbin "baserom.gba", 0x350D3E, 0x0000020

gUnk_08350D5E:: @ 08350D5E
	.incbin "baserom.gba", 0x350D5E, 0x0000020

gUnk_08350D7E:: @ 08350D7E
	.incbin "baserom.gba", 0x350D7E, 0x0000018

gUnk_08350D96:: @ 08350D96
	.incbin "baserom.gba", 0x350D96, 0x0000018

gUnk_08350DAE:: @ 08350DAE
	.incbin "baserom.gba", 0x350DAE, 0x0000018

gUnk_08350DC6:: @ 08350DC6
	.incbin "baserom.gba", 0x350DC6, 0x000000A

gUnk_08350DD0:: @ 08350DD0
	.incbin "baserom.gba", 0x350DD0, 0x0000020

gUnk_08350DF0:: @ 08350DF0
	.incbin "baserom.gba", 0x350DF0, 0x0000014

gUnk_08350E04:: @ 08350E04
	.incbin "baserom.gba", 0x350E04, 0x0000018

gUnk_08350E1C:: @ 08350E1C
	.incbin "baserom.gba", 0x350E1C, 0x0000018

gUnk_08350E34:: @ 08350E34
	.incbin "baserom.gba", 0x350E34, 0x0000024

gUnk_08350E58:: @ 08350E58
	.incbin "baserom.gba", 0x350E58, 0x0000040

gUnk_08350E98:: @ 08350E98
	.incbin "baserom.gba", 0x350E98, 0x0000008

gUnk_08350EA0:: @ 08350EA0
	.incbin "baserom.gba", 0x350EA0, 0x0000020

gUnk_08350EC0:: @ 08350EC0
	.incbin "baserom.gba", 0x350EC0, 0x0000020

gUnk_08350EE0:: @ 08350EE0
	.incbin "baserom.gba", 0x350EE0, 0x0000010

gUnk_08350EF0:: @ 08350EF0
	.incbin "baserom.gba", 0x350EF0, 0x000010A

gUnk_08350FFA:: @ 08350FFA
	.incbin "baserom.gba", 0x350FFA, 0x0000010

gUnk_0835100A:: @ 0835100A
	.incbin "baserom.gba", 0x35100A, 0x0000040

gUnk_0835104A:: @ 0835104A
	.incbin "baserom.gba", 0x35104A, 0x0000012

gUnk_0835105C:: @ 0835105C
	.incbin "baserom.gba", 0x35105C, 0x0000020

gSpawnFuncTable1:: @ 0835107C
    .4byte CreateWaddleDee
    .4byte CreateBrontoBurt
    .4byte CreateBlipper
    .4byte CreateGlunk
    .4byte CreateSquishy
    .4byte CreateScarfy
    .4byte CreateGordo
    .4byte CreateSnooter
    .4byte CreateChip
    .4byte CreateSoarar
    .4byte CreateHaley
    .4byte CreateRolyPoly
    .4byte CreateCupie
    .4byte CreateBlockin
    .4byte CreateSnooter
    .4byte CreateLeap
    .4byte CreateJack
    .4byte CreateBigWaddleDee
    .4byte CreateWaddleDoo
    .4byte CreateFlamer
    .4byte CreateHotHead
    .4byte CreateLaserBall
    .4byte CreatePengy
    .4byte CreateRocky
    .4byte CreateSirKibble
    .4byte CreateSparky
    .4byte CreateSwordKnight
    .4byte CreateUFO
    .4byte CreateTwister
    .4byte CreateWheelie
    .4byte CreateNoddy
    .4byte CreateGolem
    .4byte CreateGolem
    .4byte CreateGolem
    .4byte CreateFoley
    .4byte CreateShooty
    .4byte CreateScarfy
    .4byte CreateBoxin
    .4byte CreateCookin
    .4byte CreateMinny
    .4byte CreateBomber
    .4byte CreateHeavyKnight
    .4byte CreateGiantRocky
    .4byte CreateMetalGuardian
    .4byte CreateEmpty
    .4byte CreateBatty
    .4byte CreateFoley
    .4byte CreateBangBang
    .4byte CreateDarkMindBomb
    .4byte CreateEmpty
    .4byte CreateDroppy
    .4byte CreatePrank
    .4byte CreateMirra
    .4byte CreateShotzo
    .4byte CreateShadowKirby
    .4byte CreateWaddleDee
    .4byte CreateMrFrosty
    .4byte CreateBonkers
    .4byte CreatePhanPhan
    .4byte CreateBatafire
    .4byte CreateBoxBoxer
    .4byte CreateBoxy
    .4byte CreateMasterHand
    .4byte CreateBombar
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateKracko
    .4byte CreateKingGolem
    .4byte CreateCrazyHand
    .4byte CreateGobbler
    .4byte CreateWiz
    .4byte CreateMoley
    .4byte CreateMegaTitan
    .4byte CreateTitanHead
    .4byte CreateCrazyHand
    .4byte CreateDarkMetaKnight
    .4byte CreateDarkMindForm1
    .4byte CreateDarkMindForm2
    .4byte CreateDarkMindTrigger
    .4byte CreateDarkMetaKnight
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateBonus
    .4byte CreateBonus
    .4byte CreateBonus
    .4byte CreateBonus
    .4byte CreateBonus
    .4byte CreateBonus
    .4byte CreateBonus
    .4byte CreateShard
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateGoalGameBonus
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateEmpty
    .4byte CreateSmallSwitch
    .4byte CreateFire
    .4byte CreateMirrorDoor
    .4byte CreateShotzo
    .4byte CreateVertSlidingDoor
    .4byte CreateBossChallengeDoor
    .4byte CreateObjectSpawner
    .4byte CreateDestroyableRockBlock
    .4byte CreateUnknown75
    .4byte CreateLavaWall
    .4byte CreateScrollLock
    .4byte CreateCannonFuse
    .4byte CreateStarStoneBlock
    .4byte CreateUnknown7A
    .4byte CreateStarPlatform
    .4byte CreateFlameColumn
    .4byte CreateLargeStarStoneBlock7D
    .4byte CreateLargeStarStoneBlock7E
    .4byte CreateCPUKirbyTrigger
    .4byte CreateChest
    .4byte CreateChest
    .4byte CreateUnknown82
    .4byte CreateUnknown83
    .4byte CreateWarpStar
    .4byte CreateGoalStar
    .4byte CreateBigSwitch
    .4byte CreateUnknown87
    .4byte CreateLargeStarStoneBlock88
    .4byte CreateLargeStarStoneBlock89
    .4byte CreateKirbyCannon
    .4byte Create8DirCannon
    .4byte CreateSpecialHubMirror
    .4byte CreateHammerPeg
    .4byte CreateCutsceneTrigger
    .4byte CreateMasterSwordNonCollectible
    .4byte CreateDustCloud
    .4byte CreateLeverWall
    .4byte CreateAbilityStatue
    .4byte CreateAbilityStatue
    .4byte CreateAbilityStatue
    .4byte CreateAbilityStatue
    .4byte CreateAbilityStatueRandom
    .4byte CreateDoorToHub
    .4byte CreateAbilityStatue
    .4byte CreateAreaDoor
    .4byte CreateEmpty
    .4byte CreateKingGolemRockOrGordo
    .4byte CreateKingGolemRockOrGordo
    .4byte CreateFoleyLeaves
    .4byte CreateCookinPan
    .4byte CreateGobblerBaby
    .4byte CreateUnknownA0
    .4byte CreateBatafireFireball
    .4byte CreateParasol
    .4byte CreateAbilityStar
    .4byte CreateAbilityStar
    .4byte CreateInhalableStar
    .4byte CreateMrFrostyIceCube
    .4byte CreateMrFrostyIceCube
    .4byte CreateBonkersNut
    .4byte CreateBonkersNut
    .4byte CreatePhanPhanApple
    .4byte CreatePrankItem
    .4byte CreatePrankItem
    .4byte CreatePrankItem
    .4byte CreateCookinPan
    .4byte CreateBananaPeel
    .4byte CreateBoxyBox
    .4byte CreateShootingEnemyStar
    .4byte CreateBombarBomb
    .4byte CreateBombarMissile
    .4byte CreateBoxBoxerEnergyBall
    .4byte CreateWizFootball
    .4byte CreateWizCar
    .4byte CreateWizBalloon
    .4byte CreateWizBomb
    .4byte CreateWizCloud
    .4byte CreateWizApple
    .4byte CreateWizDroppy
    .4byte CreateTitanArm1
    .4byte CreateTitanArm2
    .4byte CreateTitanArm3
    .4byte CreateTitanArm4
    .4byte CreateTitanHeadMissile
    .4byte CreateMoleyItem
    .4byte CreateMoleyItem
    .4byte CreateMoleyItem
    .4byte CreateMoleyItem
    .4byte CreateMoleyItem
    .4byte CreateMoleyItem
    .4byte CreateMoleyItem
    .4byte CreateMasterHandBullet
    .4byte sub_0802470C
    .4byte CreateShadowKirbyBomb
    .4byte CreateDarkMindStar
    .4byte CreateDarkMindStar
    .4byte CreateDarkMindStar
    .4byte CreateDarkMindStar
    .4byte sub_08107780
    .4byte sub_0810F320
    .4byte sub_081113EC
    .4byte sub_08111984
    .4byte CreateDarkMindMirrorCutter
    .4byte sub_08117BBC
    .4byte CreateSirKibbleCutter
    .4byte CreateGlunkBullet
    .4byte CreateShotzoBullet
    .4byte CreateCupieArrow
    .4byte CreateJackStar
    .4byte CreateShootyBomb

gUnk_083513E8:: @ 083513E8
	.incbin "baserom.gba", 0x3513E8, 0x0000070

gUnk_08351458:: @ 08351458
	.incbin "baserom.gba", 0x351458, 0x00000D8

gUnk_08351530:: @ 08351530
	.incbin "baserom.gba", 0x351530, 0x00000D8

gUnk_08351608:: @ 08351608
	.incbin "baserom.gba", 0x351608, 0x0000020

gUnk_08351628:: @ 08351628
	.incbin "baserom.gba", 0x351628, 0x0000020

gUnk_08351648:: @ 08351648
	.incbin "baserom.gba", 0x351648, 0x00009C9

gUnk_08352011:: @ 08352011
	.incbin "baserom.gba", 0x352011, 0x0000111

gUnk_08352122:: @ 08352122
	.incbin "baserom.gba", 0x352122, 0x00006C4

gUnk_083527E6:: @ 083527E6
	.incbin "baserom.gba", 0x3527E6, 0x00002EA

gUnk_08352AD0:: @ 08352AD0
	.incbin "baserom.gba", 0x352AD0, 0x00002B0

gUnk_08352D80:: @ 08352D80
	.incbin "baserom.gba", 0x352D80, 0x000003E

gUnk_08352DBE:: @ 08352DBE
	.incbin "baserom.gba", 0x352DBE, 0x0000001

gUnk_08352DBF:: @ 08352DBF
	.incbin "baserom.gba", 0x352DBF, 0x0000011

gUnk_08352DD0:: @ 08352DD0
	.incbin "baserom.gba", 0x352DD0, 0x0000008

gUnk_08352DD8:: @ 08352DD8
	.incbin "baserom.gba", 0x352DD8, 0x0000018

gUnk_08352DF0:: @ 08352DF0
	.incbin "baserom.gba", 0x352DF0, 0x0000008

gUnk_08352DF8:: @ 08352DF8
	.incbin "baserom.gba", 0x352DF8, 0x000000C

gUnk_08352E04:: @ 08352E04
	.incbin "baserom.gba", 0x352E04, 0x0000010

gUnk_08352E14:: @ 08352E14
	.incbin "baserom.gba", 0x352E14, 0x0000004

gUnk_08352E18:: @ 08352E18
	.incbin "baserom.gba", 0x352E18, 0x0000010

gUnk_08352E28:: @ 08352E28
	.incbin "baserom.gba", 0x352E28, 0x000001B

gUnk_08352E43:: @ 08352E43
	.incbin "baserom.gba", 0x352E43, 0x000001B

gUnk_08352E5E:: @ 08352E5E
	.incbin "baserom.gba", 0x352E5E, 0x000001A

gUnk_08352E78:: @ 08352E78
	.incbin "baserom.gba", 0x352E78, 0x0000058

gUnk_08352ED0:: @ 08352ED0
	.incbin "baserom.gba", 0x352ED0, 0x0000030

gUnk_08352F00:: @ 08352F00
	.incbin "baserom.gba", 0x352F00, 0x0000010

gUnk_08352F10:: @ 08352F10
	.incbin "baserom.gba", 0x352F10, 0x0000050

gUnk_08352F60:: @ 08352F60
	.incbin "baserom.gba", 0x352F60, 0x0000004

gUnk_08352F64:: @ 08352F64
	.incbin "baserom.gba", 0x352F64, 0x0000004

gUnk_08352F68:: @ 08352F68
	.incbin "baserom.gba", 0x352F68, 0x0000008

gUnk_08352F70:: @ 08352F70
	.incbin "baserom.gba", 0x352F70, 0x000000C

gUnk_08352F7C:: @ 08352F7C
	.incbin "baserom.gba", 0x352F7C, 0x0000008

gUnk_08352F84:: @ 08352F84
	.incbin "baserom.gba", 0x352F84, 0x0000010
