# Instructions for AI agents

This file is for AI coding assistants working on this repository.
Read it before you start and follow it.
It exists so reviewers spend their time on the decompilation and not on repeating the same corrections.

Everything here comes from review comments already made on this repo.

The sections follow the order you will need them:
pick the work, write the code, match, verify, submit.

---

## 0. Three things that override everything else

**Do not guess.**
A wrong name, a wrong type or a wrong claim is worse than leaving something alone,
because it misleads everyone who reads the file afterwards.
If you are not confident, leave the symbol as `sub_08XXXXXX` or `gUnk_08XXXXXX`,
leave the type as it was,
and say in the pull request what you could not resolve.

**Keep pull requests small.**
A pull request a person cannot review in one sitting will not be reviewed.

**Verify properly before you submit.**
See section 6. A partial build is not a pass.

---

## 1. Scope of one pull request

One system per pull request.
Do not mix a rename of Kirby code with a rename of menu code.
Do not mix decompilation with unrelated renaming.

Submit one at a time and wait for it to be merged before opening the next,
so you do not create merge conflicts for yourself.

Rough guidance:

| Kind of change | Aim for |
|---|---|
| Decompiling code | one file, or a few small related files |
| Decompiling data | one table or one related group |
| Renaming | one system, roughly 20–40 symbols |
| A fix or a single match | as small as it can be |

What makes a pull request reviewable is how many judgements a person has to check,
not how many lines changed.
A pure rename touching many files is fine if the number of decisions is small.

---

## 2. Writing C

### 2.1 Naming

| What | Style | Example |
|---|---|---|
| Functions | PascalCase | `CreateBonkers` |
| Local variables | camelCase | `objBase` |
| Static variables | `s` + PascalCase | `sAreaMapRoomInfos` |
| Header guards | `GUARD_<FILE>_H` | `GUARD_WADDLE_DEE_H` |
| Unknown field, type known | `unk` + hex offset | `unk3C` |
| Unknown field, type unknown | `filler` + hex offset | `filler6` |
| Unknown local | `sp` + hex offset, or the register name | `sp00`, `r4` |

A name must add knowledge.
`gBonkersAnimInfo2` and `gBonkersAnimInfo3` tell a reader nothing that `gUnk_08356058` did not.
If the only thing the name expresses is the order the symbols appear in, leave them alone.

A name must not claim more than the code does.
Words like *Closest*, *First*, *All* and *Always* are claims about control flow.
Check them against the loop's exit condition, not just its body.

Follow the words already used in the repository.
If the tree spells it `Eight`, do not introduce `8Dir`.

Write real English.
The plural of *life* is *lives*.
Keep capitalisation consistent within a file.

Be careful naming anything after a sound effect.
Count the callers of the constant first.
`SE_BOSS_GROUND_POUND_ATTACK` is played by eight different bosses on any heavy landing,
so it identifies an impact, not an attack.
A constant used by one or two callers is good evidence; a widely shared one is not.

### 2.2 Types

Infer a type from **all** of its accesses, not from one convenient use.
A field read once as a `u32` and elsewhere as two `u16`s is not settled by the first thing you found.

Prefer the most specific type you know.
If a pointer is really a `struct Object2 *`, say so rather than leaving it `struct ObjectBase *`.

Try to eliminate explicit casts.
A cast usually means a type is wrong somewhere.
Fixing the declaration is better than casting at the use site.

You may change a declaration that already exists in the repo,
but only when it is necessary to get the types right,
and say so in the pull request.

Use `bool32` with `TRUE` and `FALSE` only when the value really is a boolean.
If you are not sure a function returns a boolean, leaving it as `u32` is better than guessing.
Write `if (x)`, not `if (x != FALSE)`.

Write `void` explicitly for functions that take no arguments.

Use `sizeof` when the value genuinely means the size of the complete typed object
and doing so preserves the match.

### 2.3 Where declarations go

Static functions do not belong in headers.
Mark them `static` and forward declare them at the top of the `.c` file.
Only symbols used by another file go in a header.

Do not mark something `static` merely because nothing in the same file calls it.
Some functions are reached only through a data table that is still raw binary;
`gUnk_08351648` is the common one.
Before adding `static`, search the ROM for the function's address with the Thumb bit set
(`address | 1`, 4-byte aligned).
A hit outside its own literal pool means something references it.

If a declaration has no dedicated header yet,
put functions in `functions.h` and data in `data.h`, both sorted by address.

Includes belong in the `.c` file unless the header itself needs the type.

Do not declare a symbol that is already declared somewhere else.

End every file with a newline.

### 2.4 Structs

Put the offset in a comment before every member, and the total size after the closing brace.
This is what makes identical structs easy to recognise:

```c
struct TiledBg {
    /* 0x00 */ u16 width;
    /* 0x02 */ u16 height;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ const u32 *tileset;
    /* 0x0C */ u32 tilesetSize; // in tiles
}; /* size = 0x10 */
```

### 2.5 Existing constants and macros

Before writing a literal or open-coding something, search the repository for an existing name.
Constants live in `gba/io_reg.h`, `include/constants/` and various headers;
macros such as `TaskGetStructPtr`, `PlaySfx` and the `SpriteInit*` family
live in the headers next to what they operate on.
Search rather than rely on any list, including this one.

If a macro almost fits but not quite,
adding a parameter to the macro and updating its call sites is better than working around it locally —
but only when the new parameter represents a genuinely shared abstraction,
not when it is really two different things wearing one name.

A multi-statement macro should normally use a statement expression `({ ... })`
rather than `do { ... } while (0)`.
They are not equivalent: `({ ... })` is an expression and can be evaluated, `do { ... } while (0)` cannot.
Both can change the generated code, so check the match either way.

### 2.6 Formatting

Match the file you are editing.
These are the rules most often corrected in review:

- Space after `if`, `while`, `for`, `switch`, `do`.
- Space between `)` and `{`.
- Space before `?` and `:`.
- Space after `//`.
- `switch` cases are not indented relative to the `switch`.
- No stray blank lines, and never two in a row.
- Assembly files indent with tabs.

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

## 3. Matching

A real match is always better than a fake one.

The repository already uses several tricks to steer the old compiler.
Read the surrounding files, learn them, and use them when they are needed:

- `asm("":::"rN");` — an empty inline asm statement that clobbers a register, to force allocation.
- `++x; --x;` — a no-op pair that forces a reload or fixes the stack.
- `x->f = x->f; // regswap` — a self-assignment that swaps two registers.
- A redundant local or a redundant assignment, to move a store out of a branch.

Comment any of these where they appear, so the next reader knows the line is deliberate.
If you write something non-obvious purely to satisfy the compiler,
say in a comment what the natural form would have been.

If a function will not match, use the escape hatch rather than grinding on it:

```c
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

Keep the `#else` body honest and readable.
People continue these in decomp.me scratches,
so a body that is close and clear is worth more than one that is shorter and full of tricks.
If a scratch already exists for the function, link it in a comment above;
do not invent a link.

When you report that something does not match,
show the instructions that differ rather than only saying it failed.
Make sure you tested exactly the one change you are describing —
a single global search-and-replace followed by one build gives one answer to several questions.

---

## 4. Decompiling data

Data becomes a `.c` file under `src/data/` with a typed, named array,
replacing the `.incbin` in `data/`, and the entry in `linker.ld` moves with it.

Give the data a real type.
A table of pointers should be an array of the pointer type, not `u32[]`.
If entries are structs, declare the struct with offset comments as in section 2.4.

Use the existing helpers for values that have them, such as `RGB(...)` for palette entries.

Decimal is usually clearer than hex for counts, coordinates and sizes.
Hex is for bit masks, addresses and offsets.

Keep the file to one table or one related group.
Confirm the bytes are identical afterwards — the ROM check in section 6 covers this.

---

## 5. Flagging problems instead of fixing them

If you find a bug in the game, undefined behaviour, or something that looks wrong but matches,
add a `TODO` comment describing it and leave the behaviour alone.

```c
// TODO: reads one past the end of gUnk_08361A6E when unk6 is 8
```

Do not silently correct the game's own mistakes.
The build has to reproduce the original ROM, mistakes included.

---

## 6. Verifying

Run `make compare`.
It must print **six** `OK` lines:
`katam.gba`, `payload.gba`, `speed_eaters.gba`, `unk_8D94B9C.gba`, `unk_8E1FE28.gba`, `unk_8E8490C.gba`.
Check for all six — a partial pass looks very like a full one.

Do not use `NODEP` or `MODERN` for your final verification.
They are for fast iteration only.
The final check must be an ordinary build.

Also build the whole project with `NONMATCHING` defined.
It will not match, and it is not supposed to,
but it must still compile and link.
`make compare` does not build the `#else` bodies at all,
so six green ROMs say nothing about them,
and this is the only thing that catches a `#else` body you have broken.

---

## 7. Submitting

Before you open a pull request:

- Both builds in section 6 pass.
- Only files that belong to the build are committed.
  Editor configuration, scratch scripts, personal ignore entries and generated files stay out.
  If you are unsure whether a file belongs, ask rather than commit it.
- The description says plainly that the work was AI-assisted.

If the pull request renames symbols, include a manifest.
For each rename give the old name, the new name, and concrete evidence —
something a reviewer can check, such as a line number, a called function, or a value written to a register.
Attach the manifest to the pull request; do not commit it to the repository.

Do not rebase or force-push branches that are not yours.
If you force-push your own, say so in a comment.

---

## 8. If you are unsure

Ask in the pull request.
Say what you checked, what you found, and what you could not resolve.

A question with evidence attached is welcome.
A guess presented as a fact is not.
