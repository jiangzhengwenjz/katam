    .include "asm/macros.inc"
    .include "constants/constants.inc"

    .section .rodata

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
	.incbin "baserom.gba", 0x351648, 0x0001488

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
