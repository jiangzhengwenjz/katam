# KATAM `mid2agb` User Guide

This document describes the updated open-source `mid2agb` used by the KATAM decompilation project.

The implementation has two distinct goals:

1. Reproduce the implicit conversion behavior of **MID2AGB 1.06a** from AGBSDK 4.0 for normal, supported Standard MIDI Files.
2. Provide explicit reconstruction metadata for information that was lost when the original M4A/Sappy song data was converted back into MIDI.

The second category consists of **KATAM reconstruction extensions**. These options are not part of Nintendo's documented command-line interface. They should be used only when a trusted target exists, such as original ROM bytes, an original handwritten `.s` file, or another byte-accurate reference.

---

## 1. What the Tool Does

`mid2agb` converts a Standard MIDI File into assembly source for the GBA M4A/Sappy sound driver:

```text
song.mid
   |
   v
mid2agb
   |
   v
song.s
   |
   v
ARM assembler + linker
   |
   v
M4A song header, track bytecode, and GOTO/PATT relocations
```

`mid2agb` does not synthesize audio and does not contain the samples used by the song. Final playback also depends on:

- the selected `voicegroupNNN`;
- the sample and wave data referenced by that voicegroup;
- the M4A playback engine;
- the mixer, emulator, hardware, or external player.

For decompilation matching, the authoritative result is the assembled and relocated M4A song data, not merely the MIDI file or the textual `.s` output.

---

## 2. Building the Tool

From the repository root:

```bash
make -C tools/mid2agb
```

The executable is normally produced as:

```text
tools/mid2agb/mid2agb
```

On Windows, it may be named:

```text
tools/mid2agb/mid2agb.exe
```

The project Makefile builds the tool with warnings treated as errors. To remove generated files:

```bash
make -C tools/mid2agb clean
```

---

## 3. Command-Line Syntax

```bash
mid2agb INPUT.mid [OUTPUT.s] [OPTIONS...]
```

Example:

```bash
./tools/mid2agb/mid2agb \
    sound/songs/midi/mus_title_screen.mid \
    build/midi/mus_title_screen.s \
    -R0 -V106 -P128
```

### 3.1 Default output path

If `OUTPUT.s` is omitted:

```bash
mid2agb song.mid
```

then the output is:

```text
song.s
```

### 3.2 Default assembler label

If `-L` is not supplied, the assembler label is derived from the output filename's basename.

For example:

```bash
mid2agb input.mid build/audio/example.s
```

produces labels beginning with:

```text
example
example_1
example_2
...
```

A label can be specified explicitly:

```bash
mid2agb input.mid output.s -Lmus_example
```

### 3.3 Option arguments

Options that require values accept either attached or separate arguments:

```bash
-V106
-V 106
```

Attached arguments are recommended in `midi.cfg` because they are easier to pass through Make and shell expansion safely.

Option letters are case-insensitive, but project configuration should use uppercase consistently.

---

## 4. MID2AGB-Compatible Options

The following options correspond to ordinary MID2AGB conversion controls. The updated implementation has been extensively compared against MID2AGB 1.06a for these paths.

### 4.1 `-L<label>`: assembler label

```bash
-Lmus_example
```

Controls the primary symbol and all derived symbols, such as:

```text
mus_example
mus_example_1
mus_example_2
mus_example_grp
mus_example_pri
```

If omitted, the output filename's basename is used.

### 4.2 `-V<volume>`: master volume

```bash
-V106
```

Default:

```text
127
```

The output includes a master-volume constant similar to:

```asm
.equ mus_example_mvl, 106
```

Track `VOL` commands are scaled against this value:

```asm
.byte VOL, 100*mus_example_mvl/mxv
```

KATAM stores the required value for each song in `midi.cfg`. Do not change it merely to adjust listening volume when byte matching is required.

### 4.3 `-G<voicegroup>`: voicegroup number

```bash
-G003
```

Default:

```text
0
```

The output includes:

```asm
.equ mus_example_grp, voicegroup003
```

Leading zeroes are only a formatting convention in `midi.cfg`; `003` is parsed as decimal 3.

### 4.4 `-P<priority>`: MPlay priority

```bash
-P128
```

Default:

```text
0
```

The output includes:

```asm
.equ mus_example_pri, 128
```

This value controls sequence priority in the M4A playback system. It is unrelated to MIDI note velocity.

### 4.5 `-R<reverb>`: reverb setting

```bash
-R0
```

If `-R` is omitted, reverb is disabled and the output uses a literal zero:

```asm
.equ mus_example_rev, 0
```

If `-R0` is supplied explicitly, the output uses:

```asm
.equ mus_example_rev, reverb_set+0
```

Therefore, omitting `-R` and specifying `-R0` are not necessarily byte-equivalent. Preserve the explicit configuration used by the project.

### 4.6 `-X`: 48 clocks per beat

Default:

```text
24 clocks per beat
```

With:

```bash
-X
```

conversion uses:

```text
48 clocks per beat
```

This changes timing conversion, wait decomposition, note durations, measure boundaries, and potentially pattern compression. It is not merely a display option.

### 4.7 `-E`: exact gate time

```bash
-E
```

Enables exact gate-time representation. If a MIDI note duration cannot be represented exactly with a standard M4A note length, the converter may append a `gtpN` value:

```asm
.byte N24, Cn3, v100, gtp3
```

Default: disabled.

### 4.8 `-N`: disable compression

```bash
-N
```

Disables both:

- M4A command-state or running-status-style opcode omission;
- `PATT`/`PEND` measure pattern compression.

This usually increases output size and changes labels, relocations, and track layout. Use it only for diagnosis or when a trusted target requires it.

---

## 5. Loop-Placement and Historical Project Extensions

These options control where a MIDI sequence loop marker becomes an M4A loop label. They affect byte layout rather than ordinary listening parameters.

### 5.1 `-A`: defer loop placement to an initial controller

```bash
-A
```

When a MIDI loop-begin marker is encountered, the converter postpones emitting the loop label. In the default deferred mode, it places the label before the first suitable initial controller command:

- `VOL`;
- `PAN`;
- `MOD`.

This is used to reproduce the original relative ordering between a loop marker and initialization commands.

### 5.2 `-B`: prefer `MOD` as the deferred-loop anchor

```bash
-B
```

Implicitly enables deferred loop placement. If the generated AGB track contains a `MOD` command, the loop label is placed before that command. If no suitable `MOD` exists, the normal deferred-controller behavior is used.

### 5.3 `-C`: prefer `TEMPO` or `VOICE` as the deferred-loop anchor

```bash
-C
```

Implicitly enables deferred loop placement. The converter searches event order for `TEMPO` or `VOICE` and places the loop label before the selected anchor.

### 5.4 `-D`: preserve command state across a loop label

```bash
-D
```

Normally, emitting a loop or block label resets the converter's remembered previous opcode. `-D` preserves that command state at the relevant loop boundary, allowing commands after the label to use the same opcode omission as the reference bytecode.

This option changes encoding only. It does not change musical timing or pitch.

### 5.5 `-F`: first-note fallback for a deferred loop

```bash
-F
```

Enables deferred loop placement and adds this fallback:

> If no expected controller, tempo, or voice anchor is found before the first note, emit the loop label immediately before the first note.

This is useful when the original loop began at the first musical event but the original authoring anchor was not preserved by the reverse conversion.

---

## 6. KATAM Reconstruction-Only Options

These options restore M4A encoding or control-flow information that cannot always be represented by an ordinary sequence-level MIDI loop. They are not documented Nintendo SDK options.

### 6.1 `-I`: honor encoding-only MIDI markers

```bash
-I
```

Enables two non-audible reconstruction markers.

#### `!`

A short MIDI text/meta event containing:

```text
!
```

resets the emitted-command state. The next operation must emit its opcode explicitly instead of using an otherwise legal opcode omission.

The marker emits no M4A command and changes no event time.

#### `]+`

A sequence text marker containing:

```text
]+
```

has the same loop-end meaning as `]`, but with `-I` it is ordered after same-tick controller events. This restores cases where loop-end ordering relative to a controller affects the generated byte sequence.

Without `-I`, `]+` is still interpreted as a normal loop end, but the special late ordering is not applied.

### 6.2 `-J<track:offset,...>`: override per-track `GOTO` targets

Example:

```bash
-J2:110,3:55,6:19
```

Meaning:

```text
AGB track 2 -> start of AGB track 2 + 110 bytes
AGB track 3 -> start of AGB track 3 + 55 bytes
AGB track 6 -> start of AGB track 6 + 19 bytes
```

The generated assembly resembles:

```asm
.byte GOTO
.word mus_example_2+110
```

Important restrictions:

- Track numbers refer to generated **AGB tracks**, starting at 1.
- They are not necessarily the original MIDI `MTrk` chunk numbers.
- Different MIDI channels inside one MIDI track may become separate AGB tracks.
- The offset is a byte offset in generated M4A track bytecode.
- It is not a MIDI tick, measure number, or event index.
- Offsets use C-style integer parsing, so decimal and `0x` hexadecimal forms are accepted.
- Any change that alters bytes before the target can invalidate the offset.

Use `-J` only when a trusted target exists and validate the linked result with relocation-aware byte comparison. Do not guess offsets by listening.

### 6.3 `-Q`: protect control-flow boundaries from pattern compression

```bash
-Q
```

Prevents a measure immediately following a control-flow label from becoming a `PATT` definition or a pattern-match start. Protected boundaries include:

- loop begin;
- loop end followed by a new loop begin;
- generic labels.

Without this protection, pattern compression may absorb the measure containing a branch target and move the effective label or alter the track layout.

`-Q` does not disable all compression. Use `-N` to disable compression completely.

### 6.4 `-S<tracks>`: suppress the sequence loop on selected AGB tracks

Examples:

```bash
-S5
-S5,6,7
```

A sequence-level loop marker normally propagates to every generated AGB track that contains musical data. Some original M4A tracks instead ended with `FINE` and did not participate in the global loop.

`-S` removes loop-control events from the selected AGB tracks before timing, wait splitting, and compression are finalized.

Track numbers are 1-based generated AGB track numbers.

### 6.5 `-T<track:ticks,...>`: delay a selected track's loop end

Example:

```bash
-T7:12
```

This delays the loop-end event on AGB track 7 by 12 converted AGB ticks before event ordering, wait splitting, and encoding are recomputed.

Multiple tracks can be supplied:

```bash
-T2:6,7:12
```

This restores songs in which individual M4A tracks reached their `GOTO` at different times even though a sequence-level MIDI marker can express only one shared time.

### 6.6 `-U`: emulate a known MID2AGB 1.06a wrapped-wait bug

```bash
-U
```

Default: disabled.

The SA2 test corpus contains `mus_final_ending.mid`, whose unusual timestamp encoding triggers a 32-bit time wrap and an out-of-bounds duration-table consequence in MID2AGB 1.06a. The official tool consequently emits two extremely large wait values.

The default safe mode does not reproduce that memory-unsafe path. It rejects the resulting non-chronological event stream.

`-U` reproduces the verified output through explicit, safe simulation:

- no real out-of-bounds read;
- no dependence on signed integer overflow;
- no effect on ordinary KATAM songs;
- not intended as a general compatibility switch for malformed MIDI files.

---

## 7. MIDI Text Markers

The converter recognizes the following short sequence text/meta events:

| Marker | Meaning |
|---|---|
| `[` | loop begin |
| `]` | loop end |
| `][` | end the current loop and begin another at the same point |
| `]+` | loop end; with `-I`, ordered after same-tick controllers |
| `:` | generic block or branch label |
| `!` | track-local opcode-state reset; active only with `-I` |

These markers must be short text/meta events, normally no more than two characters. Longer ordinary text is ignored by the control-flow parser.

The markers do not normally produce sound, but they may change:

- labels;
- `GOTO` targets;
- wait decomposition;
- opcode omission;
- `PATT` candidates;
- relocation targets.

A normal MIDI player is expected to ignore these text markers. Their purpose is reconstruction of M4A encoding, not standalone MIDI playback semantics.

---

## 8. Advanced Controller Mapping

In addition to ordinary MIDI controllers, `mid2agb` supports SDK authoring conventions used to emit M4A-specific commands.

| MIDI controller | M4A purpose |
|---:|---|
| 1 | `MOD` |
| 7 | `VOL` |
| 10 | `PAN` |
| 12 / 16 | emit the currently configured `MEMACC` operation |
| 13 | set the `MEMACC` operation |
| 14 | set `MEMACC` parameter 1 |
| 15 | set `MEMACC` parameter 2 or target |
| 17 | generic label |
| 20 | `BENDR` |
| 21 | `LFOS` |
| 22 | `MODT` |
| 24 | `TUNE` |
| 26 | `LFODL` |
| 29 / 31 | emit an `XCMD` parameter |
| 30, value 100 | loop label |
| 30, value 101 | `GOTO` to the loop label |
| 30, other value | select a subsequent extended command |
| 33 / 39 | `PRIO` |

Controllers 42 through 63 are accepted as SDK-style aliases of controllers 12 through 33.

These mappings are intended for existing SDK-style authoring files. Do not add them to ordinary MIDI files without understanding the corresponding M4A command semantics.

---

## 9. Hidden MID2AGB Behavior Reproduced by Default

Many important conversion rules are not controlled by command-line parameters. The updated implementation reproduces verified MID2AGB 1.06a behavior for normal inputs, including:

- stable same-tick event ordering;
- note-on/note-off pairing and retrigger behavior;
- MIDI running status;
- controller aliases;
- note-duration selection and tie creation;
- wait splitting;
- measure and time-signature boundaries;
- command-state compression;
- pattern discovery, scoring, and reuse;
- loop-label generation;
- collapsing adjacent same-tick events that emit the same command.

### 9.1 Adjacent same-command collapse

After official-style event ordering, if two adjacent events at the same tick emit the same output command, the later value replaces the earlier one.

For example:

```text
PAN 20
PAN 80
```

becomes one final PAN command.

However:

```text
PAN 20
VOL 100
PAN 80
```

retains both PAN events because they are not adjacent after ordering.

These undocumented rules can change generated bytes and are among the hardest parts of reproducing the official converter.

---

## 10. `midi.cfg` Format

KATAM stores per-file conversion parameters in:

```text
sound/songs/midi/midi.cfg
```

Basic syntax:

```text
filename.mid:  OPTIONS...
```

Example:

```text
mus_title_screen.mid:  -A  -R0  -V106  -P128
```

The Make rules pass every token after the colon directly to `mid2agb`.

### 10.1 Column alignment

The aligned configuration assigns one fixed column to each option family:

```text
filename  -A  -B  -C  -D  -F  -I  -J...  -Q  -S...  -T...  -R...  -G...  -V...  -P...
```

If a row does not use an option, its column remains blank. Therefore every occurrence of `-A`, `-J`, `-R`, and so on begins in the same character column.

The whitespace does not affect Make semantics. The fixed-column layout exists to make review easier and reduce accidental option movement or omission.

### 10.2 Configuration rules

- Each MIDI filename must have exactly one configuration row.
- Do not use spaces inside filenames.
- Do not put spaces inside the comma-separated arguments of `-J`, `-S`, or `-T`.
- Avoid ordinary comment lines unless the Make parser is updated to support them.
- Regenerate the affected `.s` or object after editing the configuration; do not rely on a stale build artifact.

---

## 11. KATAM Build Flow

The project's audio Make rules read `midi.cfg`, invoke `mid2agb`, assemble the generated `.s`, and resolve relocations during the final link.

A typical individual target is similar to:

```bash
make build/katam/sound/songs/midi/mus_title_screen.o
```

The exact build directory may vary with project configuration.

The durable source of a converted song is:

```text
MIDI file + midi.cfg row + mid2agb implementation
```

Editing generated `.s` files in the build directory is not a maintainable solution.

---

## 12. Recommended Byte-Perfect Verification

Textual `.s` comparison is useful but not sufficient.

### Level 1: generated assembly text

```bash
mid2agb song.mid new.s OPTIONS...
diff -u expected.s new.s
```

Useful for locating differences in:

- wait decomposition;
- opcodes;
- labels;
- patterns;
- controller order.

### Level 2: assembled object and relocations

Assemble the reference and generated `.s` files and compare:

- `.rodata` payload;
- relocation offsets;
- relocation types;
- relocation target symbols or sections;
- addends.

Do not merely zero relocation words and compare payload bytes. That can hide a `GOTO` or `PATT` that points to the wrong symbol.

### Level 3: deterministically linked song bytes

Assign identical deterministic addresses to external symbols such as voicegroups, link both objects, and compare final song bytes directly.

This is essential for validating `-J` and other control-flow reconstruction options.

### Level 4: full ROM comparison

When a valid `baserom.gba` is available, run the project's complete compare or SHA-1 verification.

---

## 13. Common Examples

### Ordinary BGM

```bash
mid2agb song.mid song.s -R0 -V110 -P128
```

### Sound effect using `voicegroup003`

```bash
mid2agb effect.mid effect.s -R0 -G003 -V127 -P128
```

### Deferred loop before an initial controller

```bash
mid2agb song.mid song.s -A -R0 -V110 -P128
```

### Deferred loop with first-note fallback

```bash
mid2agb song.mid song.s -F -R0 -V110 -P128
```

### Selected tracks do not participate in the global loop

```bash
mid2agb song.mid song.s -S5,6,7 -R0 -V110 -P128
```

### Exact per-track loop-address reconstruction

```bash
mid2agb song.mid song.s \
    -J2:110,3:55,6:19 \
    -R0 -V115 -P128
```

Always validate the linked bytes.

### Encoding markers plus control-flow pattern protection

```bash
mid2agb song.mid song.s -I -Q -R0 -V115 -P128
```

---

## 14. Exit Codes and Error Handling

### Exit code 1

Usually indicates command-line usage failure:

- missing input filename;
- unknown option;
- malformed `-J`, `-S`, or `-T` syntax;
- missing value for an option that requires one.

The tool prints its usage text.

### Exit code 2

Indicates a conversion or file error, such as:

- failure to open the input or output;
- invalid MIDI header or track signature;
- declared track data extending beyond the physical file;
- invalid event or data byte;
- unterminated notes;
- invalid tempo or time signature;
- timestamp or synthetic-event overflow;
- a non-chronological wrapped event in default safe mode.

If the output file has already been opened, a conversion error closes and removes the incomplete output.

If the input file cannot be opened at all, the output has not yet been opened, so an existing output file with the requested name is not deleted.

---

## 15. Safety and Robustness

The updated implementation includes explicit checks for:

- physical file size;
- declared MIDI track boundaries;
- MIDI data-byte range;
- VLQ and timestamp arithmetic;
- note duration;
- tempo and time signature validity;
- synthetic-event growth;
- loop-delay arithmetic;
- controller-table indexing.

Default mode intentionally does not reproduce official-binary failures such as:

- out-of-bounds memory access;
- signed overflow;
- hangs or infinite loops;
- reading beyond malformed track chunks.

`-U` safely simulates one specific, verified wrapped-wait output. It does not disable general safety checks.

---

## 16. Verified Compatibility Scope

The implementation has been tested against MID2AGB 1.06a with the following results:

- KATAM: 424/424 MIDI files match on the official-option path.
- KATAM's former `non_matching` set: 18/18 match after assembly, relocation validation, and deterministic linking.
- FE8U, pokeemerald, and SA2: 1590/1591 match in default safe mode.
- The only default rejection is SA2 `mus_final_ending.mid`, which triggers an official overflow/out-of-bounds bug.
- With `-U`, the external corpus is 1591/1591.
- Real-world corpora pass ASAN, UBSAN, and LeakSanitizer testing.
- Directed malformed-input tests and mutation tests found no use-after-free, double free, out-of-bounds access, or leak in the tested implementation.

This is strong empirical evidence, not a formal proof over every theoretically constructible MIDI file.
