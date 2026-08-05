# Instructions for AI agents

If you are an AI coding assistant working on this repository, read this first and
follow it. It exists so that reviewers spend their time on the decompilation
itself and not on the same corrections over and over.

Everything here comes from review comments already made on this repo. Nothing in
it is new policy.

---

## The one rule that matters most

**A wrong name or a wrong guess is worse than no name and no guess.**

If you are not confident, leave the symbol as `sub_08XXXXXX` / `gUnk_08XXXXXX`,
leave the type as it was, and say in the pull request what you were unsure about.
Nobody minds an honest gap. Everybody minds a confident mistake, because it
misleads every person who reads the file afterwards.

---

## Pull requests

**Keep them small and submit them one at a time.** A pull request that a person
cannot review in one sitting will not get reviewed. If your work is large, split
it. Wait for one to be merged before opening the next, so you do not create merge
conflicts for yourself.

**One system per pull request.** Do not mix a rename of Kirby code with a rename
of menu code. Do not mix decompilation with unrelated renaming.

**Rough size guidance:**

| Kind of change | Aim for |
|---|---|
| Decompiling | one file, or a few small related files |
| Renaming | one system, about 20–40 symbols |
| A fix or a match | as small as it can be |

These are guidelines, not hard limits. A pure rename touching many files is fine
if the number of *decisions* is small — what makes a pull request reviewable is
how many judgements a person has to check, not how many lines changed.

**Before you open a pull request:**

- `make compare` passes and prints **six** `OK` lines: `katam.gba`, `payload.gba`,
  `speed_eaters.gba`, `unk_8D94B9C.gba`, `unk_8E1FE28.gba`, `unk_8E8490C.gba`.
  Check for all six. A partial pass looks very like a full one.
- Do not commit editor or tooling files: `.clangd`, `compile_flags.txt`, personal
  `.gitignore` entries, scratch scripts.
- Say plainly in the description that the work was AI-assisted.

**If you are renaming symbols, include a manifest.** For every rename: the old
name, the new name, and the concrete evidence. "Concrete" means something a
reviewer can check — a line number, a called function, a value written to a
register. Not "it looks like a jump".

Attach the manifest to the pull request. Do not commit it to the repository.

**Do not rebase or force-push other people's branches.** If you must force-push
your own, say so in a comment.

---

## Naming things

| What | Style | Example |
|---|---|---|
| Functions | PascalCase | `CreateBonkers` |
| Local variables | camelCase | `objBase`, `saveBuffer` |
| Static variables | `s` + PascalCase | `sAreaMapRoomInfos` |
| Header guards | `GUARD_<FILE>_H` | `GUARD_WADDLE_DEE_H` |
| Unknown field, type known | `unk` + hex offset | `unk3C` |
| Unknown field, type unknown | `filler` + hex offset | `filler6` |
| Unknown local | `sp` + hex offset, or the register | `sp00`, `r4` |

**A name has to add knowledge.** `gBonkersAnimInfo2`, `gBonkersAnimInfo3` tell a
reader nothing that `gUnk_08356058` did not. If the only thing you can express is
which order they appear in the file, leave them alone.

**A name must not claim more than the code does.** Words like *Closest*, *First*,
*All* and *Always* are claims about control flow. Check them against the loop's
exit condition, not just its body. A function named `FindClosestKirby` that stops
at the first match once it is past a certain index is a wrong name.

**Match the words already used in the repository.** If the tree says `Eight`, do
not introduce `8Dir`. If a struct field is documented one way, follow it.

**Write real English.** The plural of *life* is *lives*. Keep capitalisation
consistent in comments — pick `Dark Mind` or `DarkMind` and stay with it.

**Be careful naming things after sound effects.** Check how many callers a sound
constant has first. `SE_BOSS_GROUND_POUND_ATTACK` is played by eight different
bosses on any heavy landing, so it identifies an impact, not an attack. A
constant used by one or two callers is good evidence; a shared one is not.

---

## Where code goes

**Static functions do not belong in headers.** Mark them `static` and forward
declare them at the top of the `.c` file. Only symbols used by another file go in
a header.

**But do not mark something `static` just because nothing in the file calls it.**
Some functions are reached only through a data table that is still raw binary —
`gUnk_08351648` is the common one. Before making a function `static`, search the
ROM for its address with the Thumb bit set (`address | 1`, 4-byte aligned). A hit
outside its own literal pool means something references it.

**If a declaration has no dedicated header yet, put it in `functions.h`** (for
functions) or `data.h` (for data). Keep both sorted by address.

**Includes belong in the `.c` file**, not in the header, unless the header itself
needs the type.

**Do not declare a symbol that is already declared somewhere else.**

**End every file with a newline.**

**Give each struct a size comment** so identical structs are easy to spot:

```c
struct VertSlidingDoor {
    struct Object2 obj2;
    u16 unkB4;
    s8 unkB6;
    s8 unkB7;
}; /* size = 0xB8 */
```

---

## Types and constants

**Use the constants that already exist.** `DISPCNT_*`, `BLDALPHA_BLEND`,
`RGB_WHITE`, `KEYS_MASK` and the rest are in `gba/io_reg.h`, `palette.h` and
`include/constants/`. Sound effects are named in `include/constants/songs.h`.

**Use `sizeof`** instead of writing the size as a number.

**Use the existing macros** rather than open-coding what they do:
`TaskGetStructPtr`, `PlaySfx`, the `SpriteInit*` family, `Macro_*`. If a macro
almost fits but not quite, it is usually better to add a parameter to the macro
and update its call sites than to work around it locally.

**Use the most specific type you know.** If a pointer is really a
`struct Object2 *`, say so rather than leaving it as `struct ObjectBase *`.

**Use `bool32` with `TRUE` and `FALSE` when a value is genuinely a boolean** — but
only then. If you are not sure a function returns a boolean, leaving it as `u32`
is better than guessing. Write `if (x)`, not `if (x != FALSE)`.

**Write `void` explicitly** for functions that take no arguments.

**Do not add casts that are not needed.**

**A multi-statement macro should use a statement expression `({ ... })`**, not
`do { ... } while (0)`. It behaves the same and usually does not change codegen.

---

## Formatting

- Space after `if`, `while`, `for`, `switch`, `do`.
- Space between `)` and `{`.
- Space before `?` and `:`.
- Space after `//`.
- `switch` cases are not indented relative to the `switch`.
- No stray blank lines, and no more than one in a row.
- Assembly files use tabs to indent.

```c
    switch (obj->subtype) {
    case 0:
        DoSomething(obj);
        break;
    default:
        break;
    }
```

---

## Matching

**A real match is always better than a fake one.** If you write something
non-obvious purely to make the compiler produce the right instructions, add a
comment saying what the natural form would have been.

**If it will not match, use the sanctioned escape hatch** rather than grinding.
Put a decomp.me link and the percentage above it, as the existing ones have:

```c
// sub_08153184: https://decomp.me/scratch/z1VmL (95.20%)
#ifndef NONMATCHING
NAKED bool32 sub_08153184(void) {
    asm(".include \"asm/nonmatching/sub_08153184.inc\"");
}
#else
bool32 sub_08153184(void) {
    /* readable best-effort C */
}
#endif
```

Keep the `#else` body honest and readable. People work on these in decomp.me
scratches, so a body that is close and clear is worth more than one that is
slightly shorter and full of tricks.

**`make compare` does not check the `#else` body.** That code is not built in the
normal build, so six green ROMs say nothing about it. If you change a file
containing one, build it separately with `NONMATCHING` defined and confirm the
body still compiles and has not grown.

**Measure one change at a time.** If an edit touches several places, test each
place separately. A single global search-and-replace followed by one build gives
you one answer to several questions, and it will be the wrong answer.

**When you claim something does not match, show the difference** — the
instructions that differ, not just "it failed". It is much easier to discuss.

---

## When you are unsure

Ask in the pull request. Say what you checked, what you found, and what you could
not resolve. A question with evidence attached is welcome. A guess presented as a
fact is not.
