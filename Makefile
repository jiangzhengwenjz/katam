include $(DEVKITARM)/base_tools

COMPARE ?= 0

ifeq (compare,$(MAKECMDGOALS))
COMPARE := 1
endif

CPP := $(CC) -E
LD := $(DEVKITARM)/bin/arm-none-eabi-ld

REVISION := 0
GAME_LANGUAGE := ENGLISH

TITLE       := AGB KIRBY AM
GAME_CODE   := B8KE
MAKER_CODE  := 01

SHELL := /bin/bash -o pipefail

BUILD_NAME  := katam
ROM := $(BUILD_NAME).gba
OBJ_DIR := build/$(BUILD_NAME)

ELF = $(ROM:.gba=.elf)
MAP = $(ROM:.gba=.map)

C_SUBDIR = src
DATA_C_SUBDIR = src/data
ASM_SUBDIR = asm
DATA_ASM_SUBDIR = data
SONG_SUBDIR = sound/songs
MID_SUBDIR = sound/songs/midi

C_BUILDDIR = $(OBJ_DIR)/$(C_SUBDIR)
ASM_BUILDDIR = $(OBJ_DIR)/$(ASM_SUBDIR)
DATA_ASM_BUILDDIR = $(OBJ_DIR)/$(DATA_ASM_SUBDIR)
SONG_BUILDDIR = $(OBJ_DIR)/$(SONG_SUBDIR)
MID_BUILDDIR = $(OBJ_DIR)/$(MID_SUBDIR)

ASFLAGS := -mcpu=arm7tdmi --defsym REVISION=$(REVISION) --defsym $(GAME_LANGUAGE)=1

CC1             := tools/agbcc/bin/agbcc
override CFLAGS += -mthumb-interwork -Wimplicit -Wparentheses -Werror -O2 -g -fhex-asm -f2003-patch

CPPFLAGS := -I tools/agbcc -I tools/agbcc/include -iquote include -nostdinc -DREVISION=$(REVISION) -D$(GAME_LANGUAGE)

LDFLAGS = -Map ../../$(MAP)

LIB := -L ../../tools/agbcc/lib -lc -lgcc

SHA1 := $(shell { command -v sha1sum || command -v shasum; } 2>/dev/null) -c
GFX := tools/gbagfx/gbagfx
AIF := tools/aif2pcm/aif2pcm
MID := tools/mid2agb/mid2agb
SCANINC := tools/scaninc/scaninc
PREPROC := tools/preproc/preproc
FIX := tools/gbafix/gbafix

# Clear the default suffixes
.SUFFIXES:
# Don't delete intermediate files
.SECONDARY:
# Delete files that weren't built properly
.DELETE_ON_ERROR:
# Secondary expansion is required for dependency variables in object rules.
.SECONDEXPANSION:

$(shell mkdir -p $(C_BUILDDIR) $(ASM_BUILDDIR) $(DATA_ASM_BUILDDIR) $(SONG_BUILDDIR) $(MID_BUILDDIR))

infoshell = $(foreach line, $(shell $1 | sed "s/ /__SPACE__/g"), $(info $(subst __SPACE__, ,$(line))))

# Build tools when building the rom
# Disable dependency scanning for clean/tidy/tools
ifeq (,$(filter-out all compare rom speed_eaters unk_8D94B9C unk_8E1FE28 unk_8E8490C,$(MAKECMDGOALS)))
$(call infoshell, $(MAKE) tools)
else
NODEP := 1
endif

C_SRCS := $(wildcard $(C_SUBDIR)/*.c)
C_OBJS := $(patsubst $(C_SUBDIR)/%.c,$(C_BUILDDIR)/%.o,$(C_SRCS))

ASM_SRCS := $(wildcard $(ASM_SUBDIR)/*.s)
ASM_OBJS := $(patsubst $(ASM_SUBDIR)/%.s,$(ASM_BUILDDIR)/%.o,$(ASM_SRCS))

DATA_ASM_SRCS := $(wildcard $(DATA_ASM_SUBDIR)/*.s)
DATA_ASM_OBJS := $(patsubst $(DATA_ASM_SUBDIR)/%.s,$(DATA_ASM_BUILDDIR)/%.o,$(DATA_ASM_SRCS))

SONG_SRCS := $(wildcard $(SONG_SUBDIR)/*.s)
SONG_OBJS := $(patsubst $(SONG_SUBDIR)/%.s,$(SONG_BUILDDIR)/%.o,$(SONG_SRCS))

MID_SRCS := $(wildcard $(MID_SUBDIR)/*.mid)
MID_OBJS := $(patsubst $(MID_SUBDIR)/%.mid,$(MID_BUILDDIR)/%.o,$(MID_SRCS))

OBJS := $(C_OBJS) $(ASM_OBJS) $(DATA_ASM_OBJS) $(SONG_OBJS) $(MID_OBJS)
OBJS_REL := $(patsubst $(OBJ_DIR)/%,%,$(OBJS))

TOOLDIRS := $(filter-out tools/agbcc tools/binutils,$(wildcard tools/*))
TOOLBASE = $(TOOLDIRS:tools/%=%)
TOOLS = $(foreach tool,$(TOOLBASE),tools/$(tool)/$(tool)$(EXE))

.PHONY: all rom tools clean-tools mostlyclean clean compare tidy speed_eaters unk_8D94B9C unk_8E1FE28 unk_8E8490C $(TOOLDIRS)

MAKEFLAGS += --no-print-directory

AUTO_GEN_TARGETS :=

all: tools rom

rom: $(ROM)
ifeq ($(COMPARE),1)
	@$(SHA1) katam.sha1
endif

tools: $(TOOLDIRS)

$(TOOLDIRS):
	@$(MAKE) -C $@

# For contributors to make sure a change didn't affect the contents of the ROM.
compare: all

SUBGAME_LOADERS := multi_boot/subgame_loaders

mostlyclean: tidy
	@rm -f sound/direct_sound_samples/*.bin
	@rm -f $(SONG_OBJS) $(MID_SUBDIR)/*.s
	@find . \( -iname '*.1bpp' -o -iname '*.4bpp' -o -iname '*.8bpp' -o -iname '*.gbapal' -o -iname '*.lz' -o -iname '*.rl' -o -iname '*.latfont' -o -iname '*.hwjpnfont' -o -iname '*.fwjpnfont' \) -exec rm {} +
	@rm -f $(AUTO_GEN_TARGETS)
	@$(MAKE) -C $(SUBGAME_LOADERS) $@
	@$(MAKE) -C multi_boot/unk_8D94B9C $@
	@$(MAKE) -C multi_boot/unk_8E1FE28 $@
	@$(MAKE) -C multi_boot/unk_8E8490C $@

clean-tools:
	@$(foreach tooldir,$(TOOLDIRS),$(MAKE) clean -C $(tooldir);)

clean: mostlyclean clean-tools
	@$(MAKE) -C $(SUBGAME_LOADERS) $@
	@$(MAKE) -C multi_boot/unk_8D94B9C $@
	@$(MAKE) -C multi_boot/unk_8E1FE28 $@
	@$(MAKE) -C multi_boot/unk_8E8490C $@

tidy:
	@rm -f $(ROM) $(ELF) $(MAP)
	@rm -r build/*
	@$(MAKE) -C $(SUBGAME_LOADERS) $@
	@$(MAKE) -C multi_boot/unk_8D94B9C $@
	@$(MAKE) -C multi_boot/unk_8E1FE28 $@
	@$(MAKE) -C multi_boot/unk_8E8490C $@

include graphics_file_rules.mk
include songs.mk

%.s: ;
%.png: ;
%.pal: ;
%.aif: ;

%.1bpp: %.png  ; $(GFX) $< $@
%.4bpp: %.png  ; $(GFX) $< $@
%.8bpp: %.png  ; $(GFX) $< $@
%.gbapal: %.pal ; $(GFX) $< $@
%.gbapal: %.png ; $(GFX) $< $@
%.lz: % ; $(GFX) $< $@
%.rl: % ; $(GFX) $< $@
sound/%.bin: sound/%.aif ; $(AIF) $< $@
sound/songs/%.s: sound/songs/%.mid
	cd $(@D) && ../../$(MID) $(<F)

# force targets
speed_eaters: ;
unk_8D94B9C: ;
unk_8E1FE28: ;
unk_8E8490C: ;

$(SUBGAME_LOADERS)/speed_eaters.gba: speed_eaters
	@$(MAKE) -C $(SUBGAME_LOADERS) COMPARE=$(COMPARE)

multi_boot/unk_8D94B9C/unk_8D94B9C.gba: unk_8D94B9C
	@$(MAKE) -C multi_boot/unk_8D94B9C COMPARE=$(COMPARE)

multi_boot/unk_8E1FE28/unk_8E1FE28.gba: unk_8E1FE28
	@$(MAKE) -C multi_boot/unk_8E1FE28 COMPARE=$(COMPARE)

multi_boot/unk_8E8490C/unk_8E8490C.gba: unk_8E8490C
	@$(MAKE) -C multi_boot/unk_8E8490C COMPARE=$(COMPARE)

$(C_BUILDDIR)/m4a.o: CC1 := tools/agbcc/bin/old_agbcc
$(C_BUILDDIR)/agb_sram.o: CFLAGS := -mthumb-interwork -Wimplicit -Wparentheses -Werror -O1 -g -fhex-asm
$(C_BUILDDIR)/agb_sram.o: CC1 := tools/agbcc/bin/old_agbcc
$(C_BUILDDIR)/task.o: CFLAGS := -mthumb-interwork -Wimplicit -Wparentheses -O2 -g -fhex-asm -f2003-patch

ifeq ($(NODEP),1)
$(C_BUILDDIR)/%.o: c_dep :=
else
$(C_BUILDDIR)/%.o: c_dep = $(shell $(SCANINC) -I include $(C_SUBDIR)/$*.c)
endif

$(C_BUILDDIR)/%.o : $(C_SUBDIR)/%.c $$(c_dep)
	@$(CPP) $(CPPFLAGS) $< -o $(C_BUILDDIR)/$*.i
	@$(PREPROC) $(C_BUILDDIR)/$*.i | $(CC1) $(CFLAGS) -o $(C_BUILDDIR)/$*.s
	@echo -e "\t.text\n\t.align\t2, 0 @ Don't pad with nop\n" >> $(C_BUILDDIR)/$*.s
	$(AS) $(ASFLAGS) -o $@ $(C_BUILDDIR)/$*.s

ifeq ($(NODEP),1)
$(ASM_BUILDDIR)/%.o: asm_dep :=
else
$(ASM_BUILDDIR)/%.o: asm_dep = $(shell $(SCANINC) -I . $(ASM_SUBDIR)/$*.s)
endif

$(ASM_BUILDDIR)/%.o: $(ASM_SUBDIR)/%.s $$(asm_dep)
	$(AS) $(ASFLAGS) -o $@ $<

ifeq ($(NODEP),1)
$(DATA_ASM_BUILDDIR)/%.o: data_dep :=
else
$(DATA_ASM_BUILDDIR)/%.o: data_dep = $(shell $(SCANINC) -I . $(DATA_ASM_SUBDIR)/$*.s)
endif

$(DATA_ASM_BUILDDIR)/%.o: $(DATA_ASM_SUBDIR)/%.s $$(data_dep)
	$(PREPROC) $< | $(CPP) -I include -nostdinc -undef -Wno-unicode - | $(AS) $(ASFLAGS) -o $@

$(SONG_BUILDDIR)/%.o: $(SONG_SUBDIR)/%.s
	$(AS) $(ASFLAGS) -I sound -o $@ $<

$(ELF): $(OBJS) linker.ld
	cd $(OBJ_DIR) && $(LD) $(LDFLAGS) -T ../../linker.ld -o ../../$@ $(LIB)
	$(FIX) $@ -t"$(TITLE)" -c$(GAME_CODE) -m$(MAKER_CODE) -r$(REVISION) --silent

$(ROM): $(ELF)
	$(OBJCOPY) -O binary --gap-fill 0xFF --pad-to 0x9000000 $< $@
