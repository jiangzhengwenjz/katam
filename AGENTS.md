# Instructions for AI agents

This document defines the repository-specific standards for AI-assisted work on `katam`. Read it before editing code, data, build files, assets, or documentation. These rules do not replace direct inspection of the relevant C, assembly, linker layout, ROM data, build system, and pull-request history.

## 1. Non-negotiable principles

### Preserve the original program

The purpose of this repository is to reproduce the original ROM. Preserve its observable behavior, binary layout, calling conventions, data representation, timing-sensitive ordering, and verified mistakes unless a pull request is explicitly dedicated to changing them.

Do not fix an original-game bug, remove original behavior, modernize an algorithm, strengthen validation, reorder effects, or perform speculative cleanup as part of ordinary decompilation. Report the problem and preserve the original result.

Preserving the original result does not require preserving a provisional source expression that invokes undefined behavior. When a defined C expression produces the same instructions and behavior, prefer the defined expression. Do not introduce a behavioral change merely to make the source look safer. If the original behavior can only be matched with a source form that actually relies on undefined behavior, keep that form only after the defined alternatives have been tested and mark it with a local `TODO` that identifies the undefined behavior and why it must remain for matching. All intentionally preserved undefined behavior must be searchable through `TODO`; do not document it only with an ordinary explanatory comment.

### Do not guess

An unknown name, type, field, source boundary, or relationship is preferable to a confident but unsupported interpretation. Leave a symbol as `sub_08XXXXXX`, `gUnk_08XXXXXX`, or an equivalent unknown form when the available evidence does not justify a better result.

Never fabricate evidence, build results, test output, instruction diffs, decomp.me links, external references, or explanations for compiler behavior. State what was checked, what the evidence establishes, and what remains uncertain.

### Separate binary evidence from semantic evidence

A matching ROM proves binary equivalence for the tested build. It does not prove that a name, type, comment, struct interpretation, source-file boundary, or explanation is correct.

Review semantic claims independently of the build result. A symbol may match perfectly and still be badly named, incorrectly typed, or placed in the wrong conceptual subsystem.

### Keep claims within the evidence

Do not report a broader conclusion than an experiment supports. If several independent source changes are applied before one comparison, the combined result does not establish which change caused an instruction difference or whether every change was necessary.

A repository-wide mechanical operation can still be one coherent change. Renaming one symbol everywhere is one semantic decision even when it touches many files; changing several unrelated expressions that can independently affect code generation is not.

### Keep the scope reviewable

A pull request should contain one coherent body of work. Reviewability is determined primarily by the number and difficulty of the decisions a reviewer must verify, not by the raw line count.

Do not mix unrelated decompilation, renaming, data conversion, build-system work, formatting cleanup, or behavioral changes in one pull request. Mechanical propagation required by one well-supported decision is acceptable.

### Treat matching tricks as a last resort

Compiler-steering tricks are an escape hatch, not the normal way to decompile a function. Exhaust reasonable attempts to recover the original algorithm, control-flow graph, types, aggregate objects, pointer relationships, prototypes, source boundaries, and natural expression forms before introducing artificial register pressure, dummy operations, volatile qualifiers, empty inline assembly, or hand-written instructions.

A trick can make an incorrect reconstruction match by compensating for an earlier structural mistake. A successful trick therefore proves only that the tested source emits the desired instructions; it does not prove that the source resembles the original program.

Every surviving trick is technical debt. Keep it local, explain the exact instruction difference it resolves, and remove it when a clearer structural reconstruction produces the same match. Do not stop at the first matching result when an equally accurate and substantially more natural source form remains plausible.

## 2. Before editing

### Identify the kind of work

Determine whether the task is primarily code decompilation, code matching, semantic naming, type or layout recovery, data decompilation, asset reconstruction, build tooling, or documentation. Apply the specialized rules for that category instead of treating every change as ordinary C editing.

### Establish the exact baseline

Confirm the branch, commit, compiler path, build flags, and target being compared. Do not reason from a stale local object, a different regional build, a modern-toolchain build, or a generated file left over from another configuration.

Inspect the final diff against the actual pull-request base, not merely against the working tree state from which the current session began.

### Inspect the complete local context

Read the surrounding C and assembly, all known callers and callees, every known read and write of affected data, relevant declarations, nearby linker entries, and raw tables that may contain addresses or function pointers. Do not infer a symbol from one convenient reference when other references are available.

For state machines, inspect every entry path, transition, exit condition, animation event, callback assignment, subtype-dependent path, and recovery path. The behavior that is invariant across all entries is usually stronger naming evidence than an optional setup phase, visual effect, or sound effect.

For shared engine symbols, search outside the file where the implementation lives. A helper used by many object classes may have a broader or narrower contract than its most obvious caller suggests.

Before changing a declaration, inspect all users. Before changing a user, inspect the declaration and the data layout it implies. Treat repeated casts, unusual pointer arithmetic, and contradictory indexing as evidence that the current type may be provisional.

### Search before inventing

Search the repository for established terminology, constants, macros, types, naming patterns, analogous implementations, and existing comments before introducing a new one. Prefer the repository's vocabulary when it accurately describes the evidence.

A matching technique is only a candidate experiment until its effect is verified under this repository's compiler and build. Do not adopt a trick, macro convention, attribute, or file-organization rule without establishing why it applies here.

### Inspect existing technical debt

Before working in a subsystem, search its nearby source for `TODO`, `FIXME`, `NONMATCHING`, `NAKED`, inline assembly, unusual register names, and comments mentioning matching or compiler behavior. These often identify an unresolved source-form constraint or a deliberate preservation of original behavior.

Do not delete, rewrite, or broaden such a marker until its original purpose has been checked against the current output. If the surrounding code is changed, verify that the marker is still accurate.

### Check overlap and ownership

Check whether another open pull request or active branch is already changing the same subsystem, file, symbol family, or data range. Avoid unnecessary stacked work and merge conflicts; coordinate with the maintainer when overlap is unavoidable.

Do not rebase, rewrite, or force-push a branch that is not yours. If you force-push your own branch, state that clearly in the pull request.

## 3. Semantic and structural inference

### 3.1 Evidence hierarchy

Prefer direct evidence from control flow, data flow, callers, callees, all readers and writers, element stride, pointer arithmetic, copy sizes, masks, shifts, state transitions, object creation and destruction, callback ownership, animation events, and pointer tables.

Treat filenames, nearby names, shared effect constants, visual impressions, and behavior observed in only one caller as supporting evidence rather than proof. A widely reused constant usually identifies a generic event, not the exact semantic role of every caller.

Prefer names and types that describe what is always true. Do not make an optional jump, effect, subtype-specific phase, or fallback path the defining identity of a state whose invariant purpose is different.

When evidence conflicts, do not average the interpretations into a vague but misleading name. Preserve the unknown name or choose a deliberately broad description whose contract remains true on every path.

### 3.2 Naming style

| Symbol kind | Style | Example |
|---|---|---|
| Functions and named types | PascalCase | `CreateBonkers`, `struct ObjectBase` |
| Global variables | `g` followed by PascalCase | `gNumKirbys` |
| Static variables | `s` followed by PascalCase | `sAreaMapRoomInfos` |
| Local variables and parameters with known meaning | camelCase | `objBase` |
| Constants and enum values | SCREAMING_SNAKE_CASE | `SE_BOSS_GROUND_POUND_ATTACK` |
| Header guards | `GUARD_<FILE>_H` | `GUARD_WADDLE_DEE_H` |
| Unknown struct member with known type | `unk` followed by its hexadecimal offset | `unk3C` |
| Unknown struct region with unknown interpretation | `filler` followed by its hexadecimal offset | `filler6` |
| Unknown parameter | positional placeholder | `arg0`, `arg1` |
| Unknown local retained for matching | stack offset or register name | `sp00`, `r4` |

Use the spelling and capitalization already established for the same concept. Do not introduce a second vocabulary for an existing engine abstraction.

### 3.3 Naming evidence

A new name must add knowledge. Names such as `gBonkersAnimInfo2`, `State3`, `UnknownHandler2`, or `DataTable4` merely replace an address with an ordinal and should not be introduced.

Do not replace `arg0`, `unk4`, or an address-derived symbol with vague words such as `value`, `data`, `info`, `state`, `thing`, or `handler` unless the new word establishes a real and reviewable distinction.

A name must not claim more than the implementation guarantees. Words such as `Closest`, `Nearest`, `First`, `Last`, `All`, `Always`, `Only`, `Init`, `Create`, `Destroy`, `Clear`, `Reset`, `Update`, `Draw`, and `Display` imply specific selection, lifecycle, mutation, or presentation behavior and must be checked against every path.

For target-selection helpers, distinguish geometric selection from priority and fallback policy. A function that usually selects the local or human-controlled Kirby and only conditionally considers other candidates is not accurately described as finding the closest Kirby.

For counts, distinguish the number of allocated slots, active objects, human participants, linked consoles, visible entities, and total possible entities. Do not use `gNumPlayers` when the value specifically excludes AI-controlled Kirby and another count covers the full set.

For state machines, name the state by its sustained or guaranteed behavior rather than by the transition that happens to enter it. Use `StartX` and `X` only when the first function clearly prepares or enters the behavior implemented by the second.

Do not name a state or action solely from a sound effect, animation index, or visual frame. First determine how broadly that asset or constant is reused and whether it identifies the exact operation or only a generic impact, movement, landing, recoil, or transition.

Do not assign a narrow role to an animation or data table merely because one known state uses it. Preserve an unknown data name until the table's consumers or entries establish a stable semantic distinction.

When renaming a symbol, search the entire tree and update every declaration, definition, C reference, assembly reference, linker reference, filename, data reference, raw function-pointer table, and build rule that actually belongs to the rename. Search for the old name after the change and inspect every remaining hit rather than assuming it is harmless.

### 3.4 Rename manifests

A rename pull request must include a reviewable manifest in the pull-request description or as an attached artifact. Do not commit a temporary manifest to the repository.

For every renamed symbol, include the old name, proposed name, concrete evidence, important limitations or fallback behavior, and the files or symbol families affected by mechanical propagation.

Evidence must identify verifiable control flow, calls, writes, state transitions, data use, or other specific facts. “The name is obvious,” “the model inferred it,” a visual resemblance, and a matching build are not semantic evidence.

Large rename diffs are acceptable only when the number of semantic decisions remains reviewable. Split a pull request when the reviewer would otherwise need to validate many unrelated state machines, globals, structures, or naming vocabularies at once.

### 3.5 Type inference

Infer a type from all known accesses, not from the declaration currently present or the single use that is easiest to read. Consider element stride, pointer arithmetic, indexing expressions, copy lengths, masks, shifts, signed comparisons, alignment, initialization, adjacent linker symbols, and every known reader and writer.

Work the layout algebra explicitly. If an apparent two-dimensional array is indexed with a row expression whose byte stride is incompatible with its declared inner dimension, calculate the actual block size and inspect whether the region is better represented as a struct containing header fields and a payload array.

Do not preserve a declaration merely because it compiles. If it forces impossible indexing, repeated reinterpretation, incorrect stride, or contradictory access patterns, recover the real layout and update the declaration and users consistently.

An explicit cast is evidence to investigate, not automatic proof that a declaration is wrong. Remove casts when a better-supported declaration makes them unnecessary; retain a cast when it represents a real conversion, aliasing boundary, hardware view, or matching requirement.

Use `void *` only when the pointed-to type is genuinely generic or still unknown. Do not erase a known pointer type merely to silence a diagnostic or avoid updating callers.

Distinguish an array of records from a flat byte or halfword buffer. Use a struct when repeated fields, copy boundaries, and stride establish a record. Keep a raw integer array when the internal meaning remains unknown or multiple incompatible views are still plausible.

Treat masks and shifts as layout evidence. A `u16` whose low ten bits hold an identifier and high six bits are incremented in `0x400` steps is likely a packed value, but that does not justify a C bit-field unless compiler bit ordering and code generation are proven.

### 3.6 Signedness, width, and Boolean types

Use signed types when negative values, arithmetic right shifts, signed comparisons, or sign extension are part of the contract. Use unsigned types when wraparound, masks, logical shifts, or encoded bit patterns are intentional.

Do not change a parameter or field width without inspecting both callers and callees. A narrower type can move truncation or extension across the call boundary and change caller instructions even when the callee body looks unchanged.

Use `bool32` with `TRUE` and `FALSE` only when the value is genuinely Boolean and the repository convention calls for it. Do not convert counters, status codes, bitmasks, or tri-state results into Boolean types merely because they are tested in a condition.

Write `if (flag)`, not `if (flag != FALSE)`, unless the exact comparison is required by semantics or matching.

Write `void` explicitly for functions that take no arguments.

### 3.7 Structs, unions, and ABI layout

Preserve exact object size, alignment, member offsets, array stride, and trailing padding. When defining a struct, include a hexadecimal offset comment for each member and the total size after the closing brace.

```c
struct TiledBg {
    /* 0x00 */ u16 width;
    /* 0x02 */ u16 height;
    /* 0x04 */ u16 unk4;
    /* 0x06 */ u8 unk6;
    /* 0x07 */ u8 unk7;
    /* 0x08 */ const u32 *tileset;
    /* 0x0C */ u32 tilesetSize;
}; /* size = 0x10 */
```

Do not introduce bit-fields, packed structs, narrow enum storage, anonymous layout tricks, or compiler-specific alignment attributes merely because they make the source look descriptive. Use them only when their ABI, bit ordering, alignment, code generation, and repository compatibility are established.

Use a union only when the storage genuinely has multiple verified views or when it is a conservative transitional representation for an incompletely recovered layout. Do not use a union to conceal unrelated guesses.

Check function-pointer types as carefully as data pointers. A mismatched prototype can alter argument extension, register use, stack layout, and return-value handling even when a cast suppresses the compiler warning.

### 3.8 Constants and source expressions

Use an existing named constant when it expresses the verified meaning exactly. Do not replace an independently meaningful protocol length, encoded field, hardware value, partial-copy size, or original table index with `sizeof` merely because the numeric values currently agree.

Use `sizeof` when the value genuinely means the complete size of the typed object and the resulting code matches.

Prefer defined C semantics when equivalent expressions match. Multiplication may be preferable to a signed left shift; a typed load may be preferable to aliasing through an incompatible pointer; and a range check may be preferable to an overflowing expression. Preserve the ROM result, not accidental undefined behavior in a provisional decompilation.

Expression spelling can affect old compiler output. Parentheses, temporary variables, statement expressions, pointer arithmetic form, pre-increment versus post-increment, and the order in which subexpressions are written may change register allocation or instruction selection. Do not rewrite a matching expression for style without comparing the output.

### 3.9 Fixed-point values

Treat an integer as fixed-point only when its scale is established by consistent shifts, masks, conversion helpers, constants, field use, or arithmetic across the relevant code. Do not infer a real-number interpretation from one multiplication or shift in isolation.

Preserve the verified storage width, signedness, scale, rounding, truncation, saturation or wraparound behavior, and the order of multiply, divide, add, and shift operations. Algebraically equivalent real-number formulas can differ for fixed-point integers because intermediate truncation and overflow occur at different points.

Use an existing repository fixed-point type or conversion macro when it accurately represents the established format. Do not invent a new fixed-point abstraction for one uncertain value, and do not convert fixed-point state to `float` or `double` merely to make the mathematical intent clearer; the integer representation is part of the original program unless the binary proves otherwise.

## 4. Linkage and source organization

### 4.1 Hidden references and `static`

Mark a function or object `static` only after confirming that it has no reference outside its translation unit. The absence of a visible C caller is not sufficient because raw data may contain a function pointer or address.

Before making a Thumb function `static`, search relevant data and ROM ranges for its address with the Thumb bit set. A pointer-table reference can exist even while the table remains an `incbin`.

Inspect assembly, linker symbols, callback tables, animation scripts, process scripts, and other encoded tables for hidden references before changing linkage or deleting a declaration.

### 4.2 Declarations and headers

Keep private forward declarations in the owning `.c` file. Put a symbol in a header only when another translation unit needs it.

Use a subsystem-specific header when one exists. Until a proper owner is known, place general function declarations in `functions.h` and data declarations in `data.h`, preserving the repository's ordering conventions.

Put includes in the `.c` file unless the header itself requires the complete declaration. Use a forward declaration when only an incomplete type is needed and doing so matches repository style.

Do not duplicate an existing declaration in another header. After changing a shared declaration, audit C, assembly, headers, data sources, linker scripts, raw pointer tables, and build configuration.

### 4.3 Recoverable source boundaries

Use linker order, symbol contiguity, shared static data, internal call structure, and cross-references to infer likely source-file ownership. Do not split or merge files merely for aesthetics, but correct an artificial boundary when the binary layout and shared implementation strongly support a different original translation unit.

Keep unrelated systems in separate files. Move declarations, static data, and helper functions with their owning subsystem only when ownership is established.

Do not turn a large general header into a dumping ground merely to avoid identifying ownership. Conversely, do not invent a new subsystem header for one speculative relationship.

### 4.4 Deferred inline emission as boundary evidence

Non-static inline functions can provide useful supporting evidence for translation-unit boundaries under the matching compiler. In `rest_of_compilation`, a top-level function that agbcc considers inlinable can have `DECL_DEFER_OUTPUT` set so that the decision to emit its out-of-line body is deferred until end-of-file processing. When such a body is emitted late, its placement after normally emitted functions can therefore support the hypothesis that it belongs to the preceding translation unit rather than to the source unit suggested by simple ROM proximity.

Do not treat this as an unconditional boundary rule. `function_cannot_inline_p` can reject an explicitly `inline` function—for example, it rejects variadic functions—and linkage, addressability, use, and whether an out-of-line body is required also affect emission. Before using a late non-static inline function as a boundary marker, check that the function is eligible for the deferred-inline path and combine its placement with linker order, neighboring symbols, calls, static data, and other ownership evidence.

## 5. Writing C for decompilation

### 5.1 Prefer natural C first

Start with the clearest C expression of the established behavior. Do not begin with hand-written assembly, a `NAKED` wrapper, fixed-register locals, volatile temporaries, empty inline assembly, dummy arithmetic, or other compiler-steering constructs when ordinary C may match.

Recover the algorithm, control-flow graph, types, aggregate objects, and data layout before steering the compiler. A type, lifetime, or control-flow mistake often presents as a register-allocation problem; adding a trick too early can hide the real error.

Do not assume that source written to resemble individual assembly instructions is closer to the original source. Related scalar values may have originated as a meaningful record or struct, such as an existing vector, rectangle, coordinate pair, or configuration type. A local aggregate has object identity, member layout, and lifetime rules that differ from several independent scalar declarations, so restoring the aggregate can change code generation while also making the source more faithful.

When values form an established pair or record, test the repository's existing type before inventing register tricks. For example, a position and a width-height measurement may naturally be represented as two `struct S32Vec2` locals rather than four unrelated `s32` variables. Likewise, prefer one pointer to the actual subobject being manipulated over repeated deep member chains or a redundant alias to the enclosing object when the code consistently operates on that subobject.

Reconsider unnecessary temporaries as well as missing ones. Recomputing a simple expression at its two natural use sites can match better than extending the lifetime of a temporary, while an aggregate or meaningful temporary can match better than repeatedly decomposing the same conceptual value. Choose between them from the instruction diff and the recovered source abstraction, not from a blanket preference for fewer or more locals.

### 5.2 Reuse real abstractions

Do not open-code an operation when an existing repository constant, macro, helper, or typed field expresses it accurately. Search `include/constants/`, hardware register headers, subsystem headers, and nearby source before adding a literal or duplicate helper.

Do not create a new macro or extend an existing macro merely to avoid a small local expression. Create or parameterize a macro only when it represents a genuinely shared abstraction, then audit and verify every affected call site.

A GNU statement expression, a compound block, an expression macro, and `do { ... } while (0)` are not interchangeable. Preserve the form required by the macro's intended use and verify the generated code rather than changing it for style alone. When multiple forms are semantically valid for the same syntactic role and match equally well, prefer the form already established by analogous repository code; in particular, retain the repository's statement-expression style where an expression-valued multi-statement construct is genuinely required. This is a style tie-breaker, not evidence that a statement expression is intrinsically closer to the original source.

### 5.3 Keep matching artifacts localized

When a compiler-steering construct is required, keep it in the narrowest possible scope and avoid exposing it through a widely used header or macro unless the same source constraint is genuinely shared.

Do not cargo-cult a trick into analogous functions. Two functions with visually similar instruction diffs may require different source changes because their live ranges, surrounding control flow, and call boundaries differ.

If a natural expression begins to match after nearby code or types are improved, remove the obsolete trick and its comment.

## 6. Matching workflow

### 6.1 Diagnose the mismatch before changing source

Compare the actual instructions and identify the first meaningful divergence. Do not report only that a function failed to match.

Classify the mismatch before choosing an experiment. Common categories include control-flow shape, branch direction, shared-tail formation, register identity, live-range length, spill or reload placement, stack-slot layout, stack-argument placement, address materialization, load or store width, signed or unsigned extension, constant materialization, alias analysis, loop-invariant code motion or CSE hoisting, expression ordering, helper inlining, and call ABI. A load or computation appearing before a loop in the target may be the optimizer's placement of a natural loop expression rather than evidence that the original source declared an explicit pre-loop temporary.

A later register difference may be caused by an earlier extra live value or different branch shape. Work from the earliest causal difference rather than patching the final visible symptom.

Verify that the comparison target is valid. Stale objects, a wrong function range, an incorrectly assembled reference, mismatched compiler flags, unresolved relocations, or a different build configuration are not evidence about the proposed source.

When reporting a mismatch, include the relevant instruction-level diff with enough surrounding context to identify the first divergence and any later reconvergence. Explain the tested source change separately from the observed result.

### 6.2 Isolate independent code-generation decisions

Change one independent code-generation variable at a time when diagnosing a mismatch, then compare the complete function. Examples of independent variables include signedness, branch structure, declaration order, one temporary's lifetime, one expression spelling, or one compiler-steering constraint.

A single experiment may legitimately modify several textual sites when they implement one indivisible decision. A whole-tree mechanical rename, a prototype change propagated to all callers, or a macro signature update is not required to be split by file.

If several independent edits are tested together, report only the combined result until their effects are isolated. Do not claim that each site required the same trick merely because the aggregate build matched.

### 6.3 Exhaust structural explanations before compiler steering

Matching tricks may be used only after ordinary reconstruction has been pursued seriously. Do not move to register clobbers, dummy operations, volatile casts, fixed-register locals, statement-expression barriers, or inline instructions merely because the first readable draft differs.

Use the following escalation order. Later steps do not replace the obligation to revisit earlier ones when new evidence appears:

1. Verify the function range, reference object, compiler flags, relocations, and comparison method.
2. Recover the behavior and mirror the reference control-flow graph, including branch polarity, loop form, shared tails, early exits, and callback transitions.
3. Correct prototypes, return types, signedness, widths, qualifiers, pointer targets, struct layouts, array strides, and hidden aggregate relationships.
4. Recover likely source abstractions such as subobject pointers, meaningful records or structs (including existing vector or rectangle types when supported by the accesses), and real temporaries instead of preserving an assembly-oriented decomposition into unrelated scalars.
5. Test natural C variations that remain semantically and structurally plausible, including declaration order, expression grouping, direct access versus a meaningful local, recomputation versus a real temporary, and a helper or inline boundary supported by the codebase.
6. Only then use a localized compiler-steering trick whose measured effect addresses the remaining instruction difference.
7. After obtaining a match, make a cleanup pass that removes each trick in turn and retests whether the improved types, aggregates, or control flow have made it unnecessary.

Mirror the reference control-flow graph rather than forcing registers around a different algorithm. An explicit `goto` or shared tail can be more faithful and more readable than duplicated cleanup code when the assembly clearly converges at one label.

Use temporaries to represent actual intermediate values and lifetimes. Do not add arbitrary locals solely because they perturb allocation. Conversely, do not flatten an established aggregate into scalars merely because the assembly ultimately operates on its members.

A repository example demonstrates the intended priority: a function previously left under `NONMATCHING` matched after four scalar geometry locals and redundant aliases were replaced with a pointer to the actual subobject, a `const` pointer to the referenced level data, and two meaningful `struct S32Vec2` values for position and measurement. The successful source was clearer and more structured than the provisional nonmatching C; no compiler-steering trick was needed. Treat this as evidence that an apparent register-allocation mismatch may actually be a missing source-level abstraction.

A trick that matches a function while structural questions remain unresolved is provisional. The pull request must explain which normal reconstructions were tested, why they were rejected, what exact mismatch remains, and why the chosen trick is the narrowest justified intervention.

### 6.4 Compiler model for matching work

The matching compiler identifies itself as GCC `2.9-arm-000512`. For compiler-level explanations, use the exact agbcc source configured by this repository: [`jiangzhengwenjz/agbcc`, branch `new_newlib_pret`](https://github.com/jiangzhengwenjz/agbcc/tree/new_newlib_pret), which is the branch named by `INSTALL.md`. Do not substitute a different GCC or agbcc tree merely because it has a similar version string. The compiler's output is the result of several distinct stages rather than one direct translation from C syntax to Thumb instructions, so a source edit can affect a later instruction through an earlier change to RTL, control flow, liveness, pseudo-register numbering, allocation, reload, or cross-jumping.

The relevant high-level pass order is visible in `rest_of_compilation` in `gcc/toplev.c`: initial RTL expansion, jump optimization, local common-subexpression elimination, optional global common-subexpression elimination, loop optimization, a second CSE and jump cleanup, flow and liveness analysis, instruction combination, register-move optimization, local register allocation, global allocation and reload, hard-register CSE, a second liveness analysis, and a final jump pass with cross-jumping enabled. Diagnose the earliest stage that can explain the mismatch instead of treating every late register difference as an allocator problem.

Several source files are especially useful when a trick needs a compiler-level explanation:

- `gcc/stmt.c` lowers inline assembly, statement expressions, loops, and control-flow statements to RTL.
- `gcc/expr.c`, `gcc/expmed.c`, and `gcc/fold-const.c` lower and simplify expressions, conversions, loads, stores, shifts, arithmetic, and Boolean operations.
- `gcc/cse.c`, `gcc/gcse.c`, `gcc/loop.c`, `gcc/combine.c`, and `gcc/jump.c` perform value reuse, loop motion, instruction combination, branch cleanup, and cross-jumping.
- `gcc/flow.c` computes basic blocks, liveness, references, and deaths.
- `gcc/local-alloc.c`, `gcc/global.c`, `gcc/reload.c`, and `gcc/reload1.c` assign hard registers, insert reloads, and repair operands that do not satisfy machine constraints.
- `gcc/thumb.md` defines the Thumb instruction patterns and operand constraints used by this compiler.

Do not claim a more specific mechanism than these sources establish. When a source form is known to change output but the exact responsible pass has not been isolated, describe it as an empirical matching experiment and state the measured instruction difference rather than inventing a compiler explanation.

### 6.5 Pseudo-register creation, liveness, and allocation

Most ordinary scalar temporaries are first represented as pseudo-registers. Flow analysis records their references, births, deaths, and conflicts before local and global allocation map them to hard registers or leave them for reload.

The allocators do not use only source variable names or lexical scope. `local-alloc.c` prioritizes quantities using reference count, live-range length, size, hard-register preferences, and deterministic quantity-number tie-breaking. `global.c` uses a related priority based on references, live length, and size, then breaks equal priorities by allocation number. Consequently, source changes that create a different number of pseudos, create them in a different order, split or join live ranges, add a reference, or move a death point can change hard-register assignments throughout the function.

Use this model to interpret the following common experiments:

- Changing local declaration order can change pseudo creation order and therefore deterministic allocator tie-breaking, but it is not guaranteed to swap the desired registers when priorities or conflicts differ.
- Reusing one local for two values can join or overlap their value histories, while introducing a second local creates another pseudo with its own birth, death, references, and conflicts.
- Copying an intermediate into a dedicated temporary can shorten one live range and lengthen another, which may move either value to a different hard register or stack slot.
- Copying an incoming argument to a local can end direct use of the incoming hard register and create a pseudo that survives calls; this is often relevant when the target frees `r0` through `r3` early or keeps an argument in a callee-saved register.
- A redundant initialization or apparently dead definition can change data-flow information before later dead-code removal, but its exact allocator effect is empirical and must be verified on the complete function.
- A truly unused declaration with no initializer or use is not a reliable way to obtain a dummy register because the front end may emit no meaningful RTL for it.

Do not name a local `r4`, `r7`, `ip`, or by a stack offset merely because the current allocator placed it there unless its semantics remain unknown and the matching state must be documented. A meaningful local name and a narrow matching comment are preferable when the value is understood.

### 6.6 Fixed-register locals and explicit hard-register pressure

A fixed-register local can be written as:

```c
register u32 value asm("r4") = expression;
```

This creates an explicit hard-register requirement rather than an ordinary pseudo that the allocator may place freely. Use it only after the instruction diff establishes that the same value occupies that hard register across the relevant live range.

Forcing a callee-saved register can change the prologue and epilogue because the register may need to be pushed and restored. Forcing a high Thumb register can also change instruction selection because many Thumb patterns accept only low registers directly. Forcing a call-clobbered register can require the value to be copied or reloaded around calls.

In this compiler's Thumb backend, `thumb.h` marks `r0` through `r3` and `r12` as call-used, marks `r4` through `r10` as available and not call-used, and treats `r11`, `sp`, `lr`, and `pc` as fixed. Do not assume that `r11` is an ordinary allocatable callee-saved local register, and do not omit `r12` when auditing values that cross calls.

Do not bind a local to the register visible at one late instruction without tracing the value backward through definitions, calls, and merges. A forced register can conceal an incorrect type, wrong live range, or wrong control-flow graph and can introduce unrelated spills elsewhere.

Do not bind locals to `sp`, `lr`, or `pc`. Treat aliases such as `sl`, `fp`, and `ip` as physical register names, not as evidence for a variable's meaning.

An explicit clobber can create local hard-register pressure without binding a value:

```c
asm("" ::: "r5");
```

`expand_asm_operands` in `gcc/stmt.c` lowers a named register clobber to an RTL `CLOBBER` of that hard register. `gcc/reload.c` explicitly treats a clobbered register as unavailable from before the asm through after it, and flow and allocation see an explicit conflict at that point. This can move a pseudo away from the register, shorten a usable interval, or force a reload.

A register clobber does not reserve the register for the entire function and does not imply that the original source contained assembly. Place it at the narrowest verified point, document the exact allocation difference it resolves, and re-check the prologue, epilogue, and every surrounding call.

### 6.7 Empty inline assembly

An empty asm with a register input can force a value or address to be materialized and treated as used at a precise point:

```c
asm("" : : "r"(value));
asm("" : : "r"(&object.field));
```

`expand_asm_operands` in `gcc/stmt.c` expands the operand according to the constraint and forces a constant into a register when the `r` constraint requires one. `gcc/flow.c` traverses the asm input operands and marks their registers as used. Because an asm with no outputs is treated as volatile by this compiler, the asm is retained as an opaque RTL operation even though its template emits no machine instruction.

This technique can extend a live range, prevent a value from dying before the asm, force an address calculation to exist, or alter register-class and reload decisions. It does not guarantee a particular register unless combined with a hard-register constraint, and it should consume the actual value or address involved in the mismatch rather than an unrelated dummy.

A plain no-output asm such as `asm("");` is also represented as a volatile asm operation. It emits no instruction, but it can still act as an opaque RTL boundary and can make two otherwise identical instruction tails non-identical to the final cross-jump pass. It may therefore prevent tail merging or alter memory-value reuse even though nothing appears in the final assembly at that source location.

A memory clobber is written as:

```c
asm("" ::: "memory");
```

`expand_asm_operands` in `gcc/stmt.c` lowers the `memory` clobber to a clobber of an unknown block of memory, and `mark_used_regs` in `gcc/flow.c` clears its remembered memory-set information when it sees the volatile asm. This is a compiler memory barrier: it can prevent reuse or motion of memory values across the point and can force reloads. It is not a GBA hardware memory barrier and must not be described as synchronization.

An output-only empty asm is fundamentally different:

```c
asm("" : "=r"(value));
```

The compiler models the asm as defining a new output value and allocates an output operand, but the empty template executes no instruction that produces that value. The previous C value is not an input unless it is explicitly tied. Reading an untied output as though it preserved its old value is therefore not semantically justified. Retain this pattern only when an existing matching fragment has already established that the output is not meaningfully consumed, and prefer a safer input, clobber, or tied operand when it expresses the real constraint.

A tied operand such as `"+r"(value)` tells the compiler that the asm reads and writes the same operand. The empty template leaves the physical bits unchanged at runtime, but the compiler treats the asm as an opaque definition and may not propagate the pre-asm value through it. This is a deliberate compiler-steering dependency, not ordinary C semantics, and requires a precise matching comment.

### 6.8 Volatile accesses, addressability, and stack objects

Use `volatile` normally for memory whose accesses are semantically observable, including hardware registers and genuinely volatile shared state. A matching-only volatile qualification is a separate technique and must not be confused with the program's real memory semantics.

The compiler marks volatile memory references so that they are not deleted as dead and are handled specially by expression expansion, flow analysis, CSE, and reload. A type with volatile components is explicitly made addressable by the C front end. A volatile local will normally require memory storage rather than living only in a pseudo-register.

A narrow volatile lvalue can force a load or store of the declared width, while a volatile aggregate or pointer path can force repeated address calculation and reloads. Verify the exact number, width, and order of accesses after introducing volatile. Adding an observable read or write is a behavioral change, not a harmless matching trick.

Taking the address of a local or using a type that requires memory can also create a stack object without volatile. Arrays and other block-mode objects are assigned memory, whereas an ordinary scalar temporary may be represented only by a pseudo-register. This explains why source forms such as the following can produce different stack and load/store code even when they carry the same logical values:

```c
int values[2];
```

versus:

```c
int first;
int second;
```

and:

```c
int value[1];
```

versus:

```c
int value;
```

These forms are not interchangeable C types. An array has contiguous storage, decays to a pointer in most expressions, and is necessarily addressable; a scalar can remain in a register. Use the array form only when the target stack layout or access pattern and the recovered source semantics support an array or stack scratch area.

Taking the address of a field and feeding it to an empty asm can force address materialization without adding an actual memory access. Taking an unrelated address only to enlarge the frame is not acceptable; recover the real stack object or use a narrowly documented matching construct.

### 6.9 Types, loads, stores, and access spelling

The declared type determines the machine mode, integer promotions, sign or zero extension, pointer scaling, alignment, and the load or store width presented to the backend. Before using allocator tricks, verify that the target's `ldrb`, `ldrh`, sign extension, mask, or full-word load is consistent with the current type.

An explicit cast such as `(u16)expr` introduces a truncating conversion in the expression tree. Depending on the surrounding operation, the compiler may keep the value in a halfword mode, insert a mask or shift pair, or eliminate the conversion when range information proves it redundant. Use a cast only when the source value is genuinely converted at that point or the matching branch clearly documents the required source-form constraint.

Integer arithmetic applies the usual promotions. For example, `smallField + 0` has promoted integer type even though the numeric value is unchanged. A statement expression whose final expression is `smallField + 0` therefore has the promoted type of that expression, not necessarily the field's narrow type. This can change extension and store code, but the source should use it only when that promoted intermediate is consistent with the intended computation.

Bit-field base type and signedness affect extraction mode and whether the result is sign-extended or zero-extended. Do not change a bit-field's base type merely to obtain a desired instruction unless the layout, signedness, ABI, and every access support that type.

Typed struct access, flat pointer access, and array access can produce different address trees even when they reach the same byte. A nested array expression such as `array[i][j]` carries two element strides; a flat expression carries one combined index; a typed field access carries a fixed offset, field mode, alignment, and aggregate relationship. These distinctions can affect address folding, loop induction analysis, alias information, and load width.

Pointer arithmetic and integer arithmetic are not interchangeable. Pointer addition scales each integer operand by the pointed-to type, while integer addition operates on the numeric address representation. Even semantically equivalent pointer expressions can present different trees to the compiler: `ptr + a + b` versus `ptr + (a + b)`, and `(ptr + a)[b]` versus `ptr[a + b]`, can differ in when integer additions are associated and when scaling is introduced. Treat these as plausible source-form experiments only when both expressions denote the same object and stay within valid pointer arithmetic; compare the complete function rather than assuming a particular operand order will result.

If an address genuinely needs an integer representation, make that conversion explicit and use `uintptr_t` when the repository headers provide it, rather than using an unrelated integer type merely because it is pointer-sized on the GBA. Do not integerize an ordinary pointer solely to perturb code generation.

Do not cast a region to a two-dimensional array, mix typed field access with raw pointer access, or use an invalid symbol plus or minus an offset merely because one form matches. First determine whether the declaration or linker symbol is wrong. A wrong symbol boundary or wrong element type should be fixed at its source rather than hidden behind pointer arithmetic.

Expressions such as `*&value` or `*&object.field` are normally eligible for simplification back to the original lvalue. They are not reliable tricks by themselves. If a particular address-and-dereference spelling changes the target, document the measured effect and verify that aliasing, type, and object identity remain correct.

### 6.10 Calls, arguments, and return values

Treat a mismatch near a call as an interface and sequencing problem before treating it as a register problem. Verify the exact prototype, argument widths and signedness, pointer types, function-pointer type, return type, and whether any argument is passed on the stack.

The first argument registers are call-clobbered. Copying an argument to a local can move it into a pseudo and permit the incoming hard register to be reused; retaining direct uses of the parameter can keep its value live in or related to the incoming register for longer. This can affect which values occupy `r0` through `r3` when later arguments are prepared.

C does not specify the evaluation order of function arguments. The compiler's chosen order can therefore differ when an expression is moved into a local, expanded through a macro, or placed in an inline wrapper. If the target requires a particular order and the expressions have no required side-effect ordering, explicit temporaries can sequence the computations before the call and make the intended order reviewable.

An inline helper removes the call boundary and exposes its expressions to CSE, combination, loop motion, and the caller's register allocator. It can also cause an expression to be expanded separately at each call site instead of preserving a value across a real call. Use `inline` only when the target has no call and the helper abstraction is otherwise plausible; do not use an identity inline wrapper as a guaranteed anti-CSE mechanism because the optimizer may still eliminate it.

The return type is part of the ABI. A non-void return creates a result value and may require normalization, extension, or a move into the return register even when callers ignore it. A void return does not. Do not add or remove a return value as an allocator trick unless the function body, every caller, and any function-pointer table support the recovered signature.

A Boolean-returning function must distinguish a normalized Boolean result from an arbitrary nonzero value. Returning a comparison normally creates `0` or `1`; returning an existing flag or mask may preserve other bits. Use `bool32` and `TRUE` or `FALSE` only when the target and callers require normalized Boolean semantics.

### 6.11 Expression trees and Thumb instruction patterns

Algebraically equivalent C expressions can reach different RTL forms before CSE and combine, and `gcc/thumb.md` often imposes two-address constraints that make operand identity matter.

The Thumb `addsi3` pattern supports alternatives where the output is tied to the first input and an alternative with three low registers. Consequently, these source forms can lead to different operand assignment and move insertion:

```c
result = left + right;
```

```c
result = left;
result += right;
```

The second form explicitly creates a copy followed by an update of the same C object and can encourage the output to match the first input. It is not a universal way to swap add operands; verify the complete function.

The Thumb `ior`, `xor`, and ordinary `and` patterns are also two-address operations whose output is tied to one input. Reusing a local, copying through a temporary, or spelling a compound assignment can therefore change which operand occupies the destination register.

The backend has direct patterns for the following RTL shapes:

- `plus` selects addition or, for a suitable negative immediate, subtraction.
- `minus` selects subtraction.
- `ior` selects `orr`.
- `xor` selects `eor`.
- `not` selects `mvn`.
- `and (not x) y` selects `bic`.

Do not claim that a particular high-level expression must produce one of these instructions until folding and combine are checked. For example, `(a ^ b) & b` is algebraically equal to `(~a) & b`, so the combiner may expose a `bic` form; a source perturbation that prevents that canonicalization may leave an `eor` and `and` sequence. The backend pattern explains the final selection, but the exact reason a specific dummy assignment blocks or enables the transformation remains empirical unless the relevant RTL dump confirms it.

A direct assignment and a compound assignment are not the same source operation:

```c
*ptr = -1;
```

```c
*ptr |= 0xFF;
```

The direct assignment need not read the old object. The compound assignment performs a read, integer promotion, bitwise operation, conversion back to the lvalue type, and write. They may produce different `mov`, `orr`, load, and store sequences. They are not interchangeable for volatile memory or when an intervening read is observable.

Similarly, combining two writes into one expression can change behavior:

```c
reg = base;
reg |= mask;
```

```c
reg = base | mask;
```

The first form performs two assignments and, for a compound assignment, reads the value after the first write. The second performs one assignment. Do not use one to match the other for hardware or volatile state unless the reference proves the number and order of accesses.

Subtraction and negation spellings can alter operand order and intermediate pseudos:

```c
result = left - right;
```

```c
result = right - left;
result = -result;
```

```c
result = left + (-right);
```

These are equivalent only under the applicable integer-overflow rules, and they create different RTL before combine. Use the form supported by the target, not an algebraic rewrite that introduces undefined signed overflow or changes flags observed by inline assembly.

Comparison spelling can also affect operand order and branch condition. `index < limit` and `limit > index` are semantically equivalent for side-effect-free operands, but they can present the operands to comparison expansion in a different order and thereby alter register use or branch inversion.

Chained and separated assignments have different expression trees and value dependencies:

```c
a = b = c;
```

```c
b = c;
a = b;
```

```c
b = c;
a = c;
```

Choose among them only when the assigned objects and conversions make the forms semantically equivalent. The source form can change whether the compiler reuses the assigned value, reloads `b`, or keeps `c` live.

Combining an increment with a test can likewise change load and store placement:

```c
++object->field;
if (object->field > limit)
```

```c
if (++object->field > limit)
```

The compiler may reuse the increment result in either form, but the expression boundary and volatile semantics differ. Do not combine or split them without checking the target and the field's volatility.

### 6.12 Identity operations, dummy uses, and dead source

Identity operations and redundant source can change initial RTL, value numbering, live ranges, or control-flow shape before later optimization removes them. They are empirical tools, not portable compiler directives.

Examples that have sometimes changed matching output include:

```c
value ^= 0;
value += 0;
++value;
--value;
object->field = object->field;
```

and a dummy conditional use such as:

```c
if (condition) {
    ++value;
    --value;
}
```

The front end may fold some of these immediately, while others can create loads, stores, definitions, or references that survive long enough to affect CSE, liveness, allocation, or block ordering. There is no general guarantee that a particular no-op produces a dummy register, load, or reload.

Use a no-op only after the target proves that an otherwise unexplained value definition, load, store, or allocator perturbation is required. Comment the precise measured effect, such as “keeps `index` live through the call” or “prevents the final store from sharing the previous loaded value,” rather than labeling it only as a matching trick.

A global or memory-backed self-assignment can introduce an apparent read and write, while a scalar pseudo self-assignment is more likely to disappear. For volatile objects, a self-assignment performs observable accesses and is not a semantic no-op.

An expression that is mathematically constant, such as masking a value known by type to exclude all selected bits, may be folded to zero. Such a form can sometimes reproduce an explicit zero pseudo or dead comparison in the target, but it deliberately obscures the invariant. Prefer a clear zero-valued temporary unless the opaque expression is the only measured match, and explain the range fact that makes it constant.

A logical negation such as `value = !value` creates Boolean normalization and normally requires a comparison or condition-code result when the input is not already known Boolean. It is appropriate only when the logical value is genuinely used or the target clearly contains the normalization; it is not a safe way to request an arbitrary dummy register.

Do not use comparisons such as `global != global` as dead code without checking volatility. Two reads of a volatile object can differ, so the condition is not generally false.

### 6.13 Constants, literal pools, and address materialization

A direct constant or address can be rematerialized, loaded from a literal pool, folded into an immediate, or kept in a pseudo depending on its value, mode, uses, and the Thumb constraints. The `movsi` and arithmetic patterns in `gcc/thumb.md` accept only specific immediate classes; other constants are forced into registers or memory during expansion and reload.

Assigning a constant or global address to a local creates a pseudo with a definition and live range. Directly repeating the constant or global expression gives CSE and reload different opportunities to reuse or rematerialize it. Either form can produce a pool load or a retained register; neither is guaranteed.

Use a local pointer when the program logically holds the address across several operations. Use the global directly when each access is conceptually independent. Do not introduce a long-lived pointer solely to suppress a pool load unless the target and the resulting live range are verified.

Pointer arithmetic and integer arithmetic are not interchangeable. Pointer addition scales by the pointed-to type and retains pointer semantics, while integer arithmetic operates on the numeric address representation. Use an integer representation for an address only when the original interface or hardware calculation genuinely requires it.

Precomputing a constant subexpression can change grouping and constant folding:

```c
result = 0x10 * (0x70 + index);
```

```c
result = 0x700 + 0x10 * index;
```

These forms are algebraically equivalent under appropriate integer semantics but produce different initial trees. Use the target-supported form and ensure that signed overflow or pointer scaling does not make the rewrite invalid.

Using a wider type such as `long long` changes the machine mode and can require a register pair, multiword moves, or different constant materialization. Do not widen a constant or temporary as a matching trick unless the surrounding operation and recovered data type genuinely use that width.

### 6.14 Shifts, masks, remainders, and conversions

A left shift and a multiplication are distinct source operations and initially lower through different optabs even when the multiplier is a power of two. CSE or combine may canonicalize them, but their type rules, signed-overflow behavior, and intermediate pseudos can differ. Use multiplication or shifting according to the recovered computation and compare the entire function after changing between them.

A mask and a remainder by a power of two are equivalent only under the correct domain. For unsigned `value`, `value & (power - 1)` equals `value % power` when `power` is a nonzero power of two. For negative signed values, the results can differ. Do not replace one with the other without proving the value range and signedness.

Bitwise OR and addition are equivalent only when the set bits of the operands cannot overlap and no carry can occur. They lower to different RTL and direct Thumb patterns, so replacing `+` with `|` can change code generation, but it must be justified by a proven bit-layout invariant.

Manual grouping of several shifts can change the order in which the compiler creates pseudos and combines operations. Preserve explicit masks and conversions that establish the intended width. Do not reorder shifts merely to match if the transformation changes behavior for out-of-range shift counts or signed values.

The compiler can use shifts to implement sign and zero extension when the source is not a direct memory extension. `gcc/thumb.md` explicitly expands register halfword and byte extensions through shift pairs. A type change that moves an extension from memory to a register can therefore create or remove those shifts.

### 6.15 Control-flow shape, Boolean structure, and block order

Equivalent Boolean formulas do not necessarily create the same initial control-flow graph. Short-circuit operators, nested `if` statements, early `break`, early `return`, and explicit labels determine where branches and joins are emitted before jump optimization.

For example, these forms can create different branch topology:

```c
for (i = 0; firstCondition && secondCondition; ++i) {
    body;
}
```

```c
for (i = 0; firstCondition; ++i) {
    if (!secondCondition)
        break;
    body;
}
```

and:

```c
if (value >= lower && value <= upper)
    body;
```

```c
if (value >= lower) {
    if (value <= upper)
        body;
}
```

The forms are equivalent only when operand evaluation and side effects agree. The nested form can preserve two explicit branch decisions that an optimizer may otherwise combine into a range test.

A logically expanded condition such as `(a && b) || (!a && c)` can preserve a branch on `a` followed by separate paths, while a simplified conditional expression may create a different join. Match the reference CFG and do not simplify Boolean algebra solely for style.

An explicit `goto` can reproduce a verified shared tail, backedge, or block order. It does not disable data-flow analysis; it changes the CFG on which CSE, liveness, loop analysis, and jump optimization operate. Use it when the target has the same control-flow relationship, not as a generic way to stop optimization.

Always-true or always-false conditions, empty loops, `while (0);`, and redundant branches can perturb front-end expansion or block layout before folding. Their precise effect is not guaranteed by a single compiler rule. Retain such a construct only when its measured contribution is isolated and its truth value is obvious and safe.

### 6.16 Loops and induction variables

`gcc/loop.c` performs loop analysis and can move invariant computations out of loops, recognize induction variables, and transform address calculations. Source forms that expose different induction variables or apparent invariants can therefore produce different setup, compare, increment, and addressing code.

Pointer iteration and indexed iteration are distinct induction forms:

```c
*palette = value;
++palette;
```

```c
palette[index] = value;
```

The first advances a pointer; the second combines a base pointer with a scaled index. Either may match depending on the target's loop register and address update.

Equivalent index ranges can produce different initialization and limit comparisons:

```c
for (i = 1; i < 0x10; ++i)
    palette[0xE0 + i] = 0;
```

```c
for (i = 0; i < 0x0F; ++i)
    palette[0xE1 + i] = 0;
```

The same locations are written, but the induction variable's initial value, bound, and address constant differ. Preserve the form supported by the loop setup and compare instructions.

A value loaded inside a loop may be hoisted when it is loop-invariant and alias analysis permits reuse. Moving the load into an explicit local before the loop makes the hoisting part of the source; keeping a direct memory expression leaves the decision to loop optimization and CSE. For volatile or possibly modified memory, these forms are not equivalent.

When the natural direct expression and an explicit pre-loop local both match because the compiler hoists the former, prefer the natural expression unless other source-level evidence supports the explicit local. Do not encode an optimization result into the source merely because that placement is visible in the assembly; let CSE or loop optimization perform the hoist when ordinary C already reproduces it.

Automatic decompilers reconstruct a structured control-flow form from the machine CFG, not necessarily the source construct that existed before optimization. In particular, a normal `for` loop can be rendered as an entry test followed by a `do { ... } while (...)` body because that representation follows the branch layout closely. Treat such output as evidence about the CFG, not proof that the original source used `do-while`; test the natural `for` or `while` form when its initialization, condition, increment, and semantics fit the target.

For example, a decompiler may present a branch layout as:

```c
if (i < limit) {
    do {
        body(i);
        ++i;
    } while (i < limit);
}
```

while the likely source-level construct may simply have been:

```c
for (i = 0; i < limit; ++i)
    body(i);
```

Do not preserve the more assembly-shaped `if`/`do-while` form merely because it mirrors the final branches when the ordinary loop produces the same target and better fits the surrounding source.

Splitting index scaling and field offset into locals can create separate pseudos and change the order of address arithmetic. This is useful when the target holds `index * elementSize` and a fixed field offset in different registers, but the locals should represent real intermediates rather than arbitrary numbers chosen only to shuffle allocation.

A `while (1)` loop and a `do { ... } while (1)` loop have different entry structure even though neither has a normal exit test. A `do` loop necessarily enters the body before the backedge; a `while` loop is represented with a header test position. Jump optimization may simplify both, but it need not produce identical block order.

A small inline helper can cause an address expression to be expanded at each use after inlining rather than preserved in one explicitly reused local. This can encourage recomputation, but it is not a guaranteed anti-CSE device; inspect the RTL or final instructions before documenting that effect.

### 6.17 Switches, shared cases, and tail merging

Switch case values, source case order, fallthrough, shared labels, and duplicated bodies all affect the initial label and block sequence. The compiler may emit a jump table, comparison tree, or linear tests depending on the case set and target heuristics, then later jump passes may reorder or merge blocks.

Do not combine duplicate case bodies into fallthrough merely because the statements are identical if the target contains distinct case entries followed by duplicated code. Conversely, use a shared label or fallthrough when the target clearly shares the same block.

Some cases may share code with `default` after different entry tests. Represent that relationship explicitly instead of duplicating or merging code according to style preference.

The final jump optimization pass runs after allocation and reload with cross-jumping enabled. `find_cross_jump` and `do_cross_jump` in `gcc/jump.c` search for matching instruction suffixes at different control-flow exits and redirect them to one shared tail. Tail merging therefore depends on the final RTL instructions, register identities, death information, and intervening opaque operations.

A source change can enable or prevent cross-jumping without changing high-level behavior. A plain volatile empty asm can break suffix identity; a more verbose branch can create two identical tails that are later merged; a shared source label can establish the join earlier. When the mismatch is a duplicated or missing tail, compare the post-reload instruction suffixes instead of adding allocator tricks blindly.

### 6.18 Statement expressions, macros, and source boundaries

GNU statement expressions are parsed as braced groups within an expression. The front end creates a block and, when needed, a `BIND_EXPR` whose value is the final expression in the group. This gives the construct its own binding scope and can alter temporary lifetime, expression expansion, and the point at which side effects and values are connected to the enclosing expression.

```c
result = ({
    temporary = expression;
    temporary;
});
```

A statement expression is not interchangeable with `do { ... } while (0)`. The former is an expression with a value; the latter is a statement wrapper normally used by macros. Ordinary braces, a statement expression, and a loop wrapper can create different front-end trees even when their visible side effects are similar.

Statement expressions can affect whether a macro argument is evaluated once, whether a temporary is scoped to the macro, whether a promoted type becomes the expression result, and whether two calls share an intermediate. They can also perturb loads or allocation even when the final value is simple. State the specific reason the statement expression remains; do not describe it generically as “forcing order” unless the measured instruction sequence establishes that result.

Extra parentheses around an ordinary function call do not change its semantics or tree in a useful way. Parentheses can matter when a macro expands to a statement expression or another syntactically sensitive construct. Before preserving a form such as `(SomeMacro(...));`, inspect the macro expansion and explain the actual boundary it creates.

Do not hide a local matching workaround inside a shared macro unless every caller requires the same expansion and each affected function has been reverified. A macro signature or body change is one source decision but can independently alter code generation at every call site.

### 6.19 Empirical source-form experiments

This table is not a checklist to run through whenever a function fails to match. Do not begin cycling through dummy assignments, empty loops, statement expressions, volatile accesses, asm barriers, or declaration-order changes until the structural workflow in Sections 6.1 through 6.3 has been exhausted and the remaining mismatch has been classified.

Each experiment must answer a specific diagnosed question, such as whether one value must remain live across a call, whether an address must be recomputed, whether two tails must remain distinct, or whether the target uses a tied-output arithmetic pattern. Change one independent source property, compare the complete function, and revert the experiment when it does not improve the intended difference without creating a new one elsewhere.

The following experiments have understandable effects through the compiler stages described above, but no individual source transformation guarantees a particular final instruction sequence. Record the exact before-and-after instruction difference and retain the transformation only when its semantic validity and local code-generation purpose are both clear.

| Target symptom | Candidate experiment | What can legitimately be claimed |
|---|---|---|
| Value dies too early | Add an empty asm register input at the desired point | The operand is materialized and marked used at that asm point |
| One hard register must be unavailable briefly | Add a narrow hard-register clobber | The named hard register is clobbered and unavailable across the asm |
| Memory value is reused but the target reloads it | Add a narrow `memory` clobber or a semantically justified volatile access | Memory knowledge is invalidated at that point; exact reload choice remains allocator-dependent |
| Scalar should occupy stack storage | Recover an actual array, address-taken object, aggregate, or volatile local | The object becomes addressable memory; do not invent a false type solely for frame shape |
| Two values use the wrong registers | Change declaration order, split or reuse a temporary, or adjust one live range | Pseudo numbering, births, deaths, references, and conflicts change; the resulting assignment must be measured |
| Add operands are reversed or a move is missing | Try three-address versus copy-then-compound-add source | The backend has both tied-output and three-register add alternatives |
| Logical destination register is wrong | Reuse or separate the first operand around `\|`, `^`, or `&` | Thumb logical patterns tie the output to one input |
| Target uses `bic`, `eor`, or `mvn` | Express the verified Boolean algebra in the corresponding `and-not`, xor, or complement form | The backend directly recognizes those RTL forms; earlier canonicalization must still be checked |
| Constant is loaded from the wrong place | Compare direct use, a local constant or pointer, and a fixed-register local | The source changes pseudo lifetime and rematerialization opportunities; pool versus register is not guaranteed |
| Loop address setup differs | Compare pointer induction, indexed access, split scale/offset locals, or equivalent start and bound forms | The loop optimizer sees different induction and invariant expressions |
| Block order or shared tail differs | Reproduce the target with nested conditions, `break`, a shared label, or an explicit `goto` | The CFG changes; `goto` does not disable analysis |
| Identical tails merge when they should not | Isolate a real differing operation or, as a last resort, a volatile empty asm | Cross-jumping requires identical final RTL suffixes |
| Tails fail to merge | Make the source tails truly identical and remove artificial barriers | Final cross-jumping may share them after reload |
| Narrow load or extension differs | Correct the field, pointer, cast, bit-field base type, or expression promotion | Type and mode determine load width and extension opportunities |
| Argument setup order differs | Compute side-effect-free arguments in explicit locals before the call | The local statements impose source sequencing before unspecified argument evaluation |
| Return register contains the wrong Boolean form | Return a comparison or a verified normalized Boolean value | A comparison produces a normalized truth value; arbitrary nonzero flags do not |

No-op arithmetic, redundant initialization, always-true branches, empty loops, raw pointer re-spelling, and identity inline wrappers belong in this empirical category. Do not attach a compiler-source explanation unless an RTL dump or a specific pass implementation demonstrates the claimed mechanism in the function being matched.

### 6.20 Unsafe or misleading techniques

Do not use an untied empty-asm output as though it preserved the previous C value. Do not use an incompatible function prototype, missing return from a non-void function, invalid linker symbol, false struct type, out-of-bounds array expression, or undefined signed arithmetic merely because the current binary happens to match.

Do not describe `goto` as disabling data-flow analysis, `volatile` as forcing a particular register, a `memory` clobber as a hardware barrier, or declaration order as guaranteeing a register swap. These are broader claims than the compiler source supports.

Do not treat `global != global` as always false when the object may be volatile, and do not combine or split hardware-register writes under the assumption that ordinary algebra preserves observable behavior.

Do not use algebraic identities without proving their domain. `value % power` and `value & (power - 1)` require the correct unsigned or nonnegative range; `left + right` and `left | right` require non-overlapping bits; reordered subtraction can change signed-overflow behavior; shifts require valid counts and signedness.

Do not preserve a bizarre source form only because it once matched an earlier version of the surrounding function. Re-test it after type, control-flow, macro, or declaration changes, remove it when natural C matches, and keep the surviving comment narrowly factual.

### 6.21 Manual inline instructions and assembly fallback

Emitting a real instruction or retaining an assembly implementation is the final fallback, not the next step after ordinary C misses by one or two instructions. First re-check the algorithm, control flow, types, aggregates, prototypes, source boundaries, natural expression variants, and narrowly targeted compiler-steering experiments. A small diff can still be the symptom of an incorrect reconstruction rather than evidence that the original source contained assembly.

Inline assembly that emits a real instruction is different from an empty compiler-steering asm. It may be appropriate for a hardware operation, software interrupt, exact ABI fragment, instruction unavailable to C, or a final small matching gap whose operands and side effects are fully understood.

Before emitting a real instruction, verify the operand modes, low- versus high-register constraints, input/output ties, memory effects, call-clobbered registers, and any condition-code dependency under this compiler. Use only constraint forms supported by the bundled compiler and confirm the complete generated function; do not assume modern GCC inline-asm behavior.

An inline `bl` is especially dangerous because the compiler does not automatically infer the ordinary call ABI from text in an asm template. Every value destroyed or produced by the call must be represented by the constraints and surrounding source. Prefer a correctly typed C call whenever it can match.

A `NAKED` function has no compiler-generated prologue or epilogue. Its body should be assembly that establishes its own stack, register preservation, return, and interworking behavior. Do not mix ordinary C locals or control flow into a naked body and assume the compiler will maintain the ABI.

Remove manual assembly when ordinary compiler-checked C produces the target. A small remaining mismatch is not by itself evidence that hand-written assembly is the correct recovered source.

### 6.22 Non-local effects and verification discipline

A matching edit can change instructions far from the edited line because CSE, loop optimization, liveness, allocation, reload, and final cross-jumping operate on the whole function. One new pseudo can change allocator priority; one longer live range can add a callee-saved push; one memory barrier can invalidate values in several blocks; one changed register can prevent two tails from cross-jumping.

After every meaningful experiment, compare the complete function and identify the earliest new divergence. Do not stop when the originally targeted instruction matches if the prologue, another block, call setup, spill sequence, or epilogue has changed.

Keep a concise experiment log outside the source while matching. Record the one source variable changed, the first instruction difference before and after, and whether the rest of the function remained stable. Source comments should describe only the final surviving constraint, not the sequence of failed attempts.

Prefer, in order, a corrected type or prototype, faithful control flow, genuine intermediate variable, natural expression spelling, narrow compiler constraint, and only then manual assembly or `NONMATCHING`. The goal is not merely to force the bytes but to recover the most defensible source that produces them.

## 7. `NONMATCHING` functions

### 7.1 Purpose and branch polarity

Use `NONMATCHING` when the behavior is sufficiently understood to provide readable C but the source cannot yet reproduce the reference instructions within a reasonable and reviewable scope.

Follow the repository's established polarity: the default matching build retains the known matching assembly, while the `NONMATCHING` configuration compiles the readable best-effort C.

```c
#ifndef NONMATCHING
NAKED bool32 sub_08153184(void)
{
    asm(".include \"asm/nonmatching/sub_08153184.inc\"");
}
#else
bool32 sub_08153184(void)
{
    /* Readable best-effort C. */
}
#endif
```

Do not invert the guard or invent a second convention in one file.

### 7.2 Requirements for the readable branch

The readable branch must have the same function signature, calling convention, return type, and externally visible contract as the matching branch. Every control path must return or terminate correctly.

Write the clearest faithful C supported by the current understanding. Do not fill the readable branch with speculative register tricks merely to improve a percentage while it remains explicitly nonmatching.

Preserve known original behavior, including verified bugs, unless the branch is clearly documented as incomplete. Do not use the readable branch as a place to implement a behavioral fix that the matching build does not contain.

Keep shared declarations, constants, and helper semantics consistent between branches. Avoid duplicating large unrelated regions when only one function or expression requires conditional source.

### 7.3 Documenting the remaining mismatch

Record the first meaningful instruction difference, the mismatch category, and the strongest source hypothesis currently supported. A useful note says that the remaining difference concerns stack argument placement, a callee-saved register, branch topology, or a particular reload; “compiler problem” is not useful.

Link an existing decomp.me scratch when one is available and relevant. Do not create or cite a fake URL, and do not quote a match percentage that was not measured against the correct target.

Do not preserve a development diary in the source. Keep detailed experimentation in the pull request or scratch; source comments should explain only the surviving constraint.

### 7.4 Building the readable configuration

`make compare` validates the default matching branches and does not prove that code under `#else` for `NONMATCHING` compiles. Before submission, build and link the whole project with `NONMATCHING` defined.

If the repository does not provide a dedicated target, add `-DNONMATCHING` to the existing preprocessor flags in a local, uncommitted build-system change, run the complete build, and then revert the local change. Do not replace the existing flags, include paths, or required defines.

The `NONMATCHING` build is not expected to match the ROM. It is required to compile and link successfully without relying on stale objects.

When converting a function from assembly to matching C, remove the obsolete conditional branch, assembly include, stale scratch note, and any workaround that existed only for the nonmatching version.

## 8. `TODO` and `FIXME` comments

### 8.1 Use actionable categories

A technical-debt comment should belong to one of four categories: a verified original bug or undefined behavior that must be preserved, an unresolved semantic or layout question, a matching-specific source workaround that may later be removed, or a temporary build/platform limitation with a clear removal condition.

Do not use `TODO` as a substitute for understanding ordinary code. Do not add speculative warnings, personal reactions, vague doubts, or notes such as “might not be needed” without identifying what would prove removal safe.

### 8.2 Verified original bugs and undefined behavior

A verified original bug or preserved instance of undefined behavior must be marked with `TODO` and state the concrete condition and incorrect access, operation, or result. Use a normal searchable `TODO` rather than an unmarked explanatory comment so that future bug-fix and UB-cleanup work can find every known case. For example:

```c
// TODO: Original bug: reads one element past the end of gUnk_08361A6E when unk6 is 8.
```

For intentionally preserved undefined behavior required for a match, name the operation and the matching constraint as specifically as the evidence permits:

```c
// TODO: Original UB: this signed left shift is required to reproduce the target instructions; the tested defined alternatives do not match.
```

Preserve the original behavior in ordinary decompilation. Do not add a bounds check, clamp, fallback, or reordered access unless the pull request is explicitly a behavioral-fix project.

Check whether the apparent bug is truly in the original binary rather than introduced by an incorrect provisional type or array bound. A declaration that is too small can make a valid access look out of bounds.

### 8.3 Semantic uncertainty

A semantic `TODO` must identify the unresolved fact and the evidence still needed. Prefer “Determine whether this field is a read cursor or decoded-run offset by tracing the remaining writer” over “Figure out unk0.”

Do not rename a symbol speculatively and leave a `TODO` questioning the name. Preserve the unknown name until the evidence supports the rename.

When a type is only partially recovered, document the verified layout and leave uncertain fields unknown. Do not turn a hypothesis into a field name merely to reduce the number of unknowns.

### 8.4 Matching debt

A matching-debt comment must identify the exact unnatural construct and its measured purpose. For example:

```c
// TODO(match): Remove the r4 constraint if this function still matches after the surrounding types are recovered.
```

A comment that says only “required for matching” is incomplete when the instruction difference is known. State whether the construct controls a register identity, reload, stack slot, branch shape, address materialization, or instruction form.

Do not leave a stale removal comment after the function has changed. Re-test whether the workaround is still needed, then either remove it or update the comment with the current reason.

If a matching source form must retain verified undefined behavior because every tested defined alternative changes the target, mark it with a local `TODO` at the smallest relevant scope. Identify the undefined operation and the instruction or layout constraint that requires the form. Do not use only `TODO(match)` or an ordinary matching comment for such a case: preserved UB belongs in the searchable original-bug/UB backlog even when the reason it remains is matching.

### 8.5 Temporary build or platform workarounds

A temporary workaround must name the affected configuration and the condition that allows removal. Do not let a host-platform workaround silently alter the matching target or become the default source path.

Keep portable or modern builds separate from the authoritative matching build. A workaround that is necessary only outside the matching configuration must be guarded and documented accordingly.

### 8.6 Comment quality

Write comments for future contributors in professional, factual English. Do not include conversational reactions, jokes, reviewer-directed remarks, praise, blame, or a chronological log of failed attempts.

A useful comment records an established invariant, verified bug, layout fact, original behavior, or precise reason an unnatural matching construct remains. A comment that merely restates the code should be omitted.

When a review finding may apply to several analogous sites, search the class of code and update every affected comment rather than fixing only the line that received the review comment.

## 9. Data decompilation and assets

### 9.1 Choose the correct source form and owner

Raw or only partially understood ROM data may remain in assembly under `data/`. Recovered typed data belongs in C, normally in the owning source file when it is private to that translation unit or under `src/data/<subsystem>/` when it is a separately compiled shared data unit. Do not move data merely to reduce the reported `incbin` count; move it when its type, boundary, placement, and references are understood well enough to express safely.

Use source ownership evidence rather than directory aesthetics. Linker order, adjacency to one subsystem's code or constants, shared static types, pointer references, and original translation-unit boundaries are stronger evidence than a convenient filename.

A data-only C file must be included in the build and placed explicitly in `linker.ld` at the same point as the input section it replaces. Do not rely on a wildcard whose ordering may differ across tools or hosts.

If data is used only by one C file and the recovered linker order supports the same original translation unit, prefer defining it in that file and making it `static` where possible. If it must remain a separate input object to preserve ordering or ownership, expose only the declarations actually required by other translation units.

### 9.2 Establish exact boundaries before converting

Determine the start and end of every converted object from multiple forms of evidence: symbol addresses, the next known symbol, linker order, consumer copy sizes, element stride, pointer targets, relocation entries, sentinels, authoritative counts, and alignment. Do not define an array by consuming all bytes up to an arbitrary later label.

When a raw assembly file contains several objects, convert only a range whose complete boundary is established. Preserve the unconverted prefix and suffix exactly, or move a tightly related group together when splitting it would create an artificial input-section boundary or unresolved padding.

A consumer that copies or initializes only part of a region does not establish the complete object size. Compare every reader, writer, initializer, copy path, and address computation. Distinguish logical entry count from allocated capacity, spare records, sentinels, and trailing padding.

For pointer tables, confirm the number of pointers, the target type, the target addresses, and whether the low Thumb bit is significant. For packed streams or scripts, prove the terminator and command widths before assigning a record type.

Record the original address range during the work. After conversion, verify both endpoints and the addresses of all following symbols, not only the contents of the new object.

### 9.3 Recover the most specific justified type

Use the real element type when it is established. Pointer tables should be arrays of the correct pointer type; function-pointer tables require the exact callable prototype; repeated records should use a struct whose size and offsets are proven; strings should use character arrays or pointers according to their actual storage; and palettes or encoded fields should use established repository types and constants when those types preserve the representation.

Do not use `u32[]` merely because the data is word-aligned, and do not force an attractive struct over a region whose internal boundaries remain uncertain. A conservative integer or byte array is better than a false type.

Use `const` when the original object is read-only. Omitting `const` can move an object from `.rodata` to `.data`, change relocations, and break linker placement. Do not add `const` to writable data merely to obtain the desired section.

Preserve pointer semantics through relocations. Prefer symbolic pointers and function pointers over hard-coded ROM addresses when the original data is relocatable in the object file. Verify the linked values after relocation; matching unrelocated bytes with zero placeholders is not sufficient.

Use explicit padding fields or byte arrays only when padding bytes belong to the recovered object. Do not absorb linker-inserted inter-object padding into the preceding struct merely to make the byte count convenient.

### 9.4 Preserve order, section, and visibility

Preserve the exact order of objects within each input section and the exact order of input objects in `linker.ld`. Reordering two equal-sized tables still changes every pointer or address that refers to them.

Keep read-only typed data in `.rodata`, writable initialized data in `.data`, and uninitialized storage in the appropriate `NOLOAD` or `.bss` region according to the original memory map. Do not use section attributes to force an object into a desired location unless the ordinary type and declaration cannot express the verified original placement.

Do not convert a global symbol to `static` until all C, assembly, raw-data, linker, and encoded pointer references have been checked. Conversely, do not export every recovered object by default; retain private linkage when the source and reference evidence supports it.

When one assembly input file is replaced by several C object files, remember that each new input section creates another linker placement boundary. This can change alignment and padding even when the declared objects themselves have the same sizes. Group data to preserve the original input-section structure unless separate original translation units are supported by the layout.

### 9.5 Probable unresolved `.data` region

The still-raw range represented by `data/data_2.s` runs from `0x08D60980` through `0x08D6DD04` (end-exclusive). The file begins at `gUnk_08D60980`; its final raw block begins at `0x08D6DCAC` with length `0x58`; and the next ROM object, the first embedded multiboot image, begins at `0x08D6DD04`. The linker currently places `data/data_2.o(.rodata)` after the final small library `.rodata` fragments. This is the current raw representation of a region that has not yet been fully recovered into its final typed source objects; it should not be read as a completed claim that every recovered object in the range belongs in `.rodata`.

Treat this range as a strong working hypothesis for the game's unresolved original `.data` region, not as a blanket proof that every byte has already been classified. Existing matching work has provided object-specific evidence that data in this region can require writable `.data` placement for referencing code to reproduce the original output. When decompiling an understood object from this range, first test its natural initialized non-`const` declaration and ordinary `.data` emission rather than preserving the current raw `.rodata` wrapper or forcing a custom section attribute. Reconstruct the linker order so that a verified `.data` object remains at its original ROM address; do not leave the recovered object in the linker's current terminal `.data` block if doing so moves it away from the `0x08D60980–0x08D6DD04` range.

Recover this region incrementally. For each object, verify its mutability from all references, the compiler-emitted input section, linker position, alignment, relocations, and the code generation of functions that reference it. If object-specific evidence contradicts `.data`, follow that evidence; the range hypothesis is a guide for investigation, not permission to misclassify read-only or embedded payload data.

ROM proximity is therefore not a sufficient source-boundary rule. Objects from one translation unit can be widely separated in the final image when the compiler emits them into different sections, while objects that are adjacent in the current raw assembly are not necessarily one original C object or one source file. Infer original source ownership and section class together from references, declarations, section behavior, linker order, neighboring symbols, and matching results.

### 9.6 Linker-script alignment rules

The ROM `.rodata` output section is declared as `.rodata ALIGN(4) : SUBALIGN(4)`. The output section therefore begins on a 4-byte boundary, and each contributing input section is placed with 4-byte subalignment. The final `. = ALIGN(4)` before the section closes also rounds the end of `.rodata` to a 4-byte boundary before the following `.data` output section, which is itself aligned to 4 bytes.

`SUBALIGN(4)` applies to input sections, not to every symbol declared inside one C or assembly file. Within an input `.rodata` section, the compiler or assembler still determines each symbol's alignment and any padding between symbols. Do not insert four-byte padding between every recovered object merely because the linker uses `SUBALIGN(4)`.

Creating a new C file creates a new input-section contribution. Under `SUBALIGN(4)`, that contribution begins at a 4-byte boundary. If a datum originally began at a non-four-byte offset inside an existing raw input section, moving it into a separate object will change its address; keep it grouped with adjacent data or otherwise preserve the original section structure.

Conversely, do not depend on a new object boundary to supply padding that was part of the original data object. Establish whether bytes are object padding, explicit filler, or linker padding before deciding where they belong.

The `.text` output section begins at 4-byte alignment, and the EWRAM and IWRAM output sections are also declared with 4-byte alignment. Within IWRAM, explicit `. = ALIGN(16)` and `. = ALIGN(4)` directives mark verified placement boundaries for particular input sections or symbols. Do not remove, weaken, or generalize these directives; each one is part of the reproduced memory map.

In ARM GNU assembly, the argument to the existing `.align` directive is a power-of-two exponent, so `.align 2` requests 4-byte alignment. Do not rewrite `.align 2` as `.align 4` under the assumption that the argument is a byte count. When adding or preserving assembly alignment, follow the syntax already used by the surrounding file and verify the resulting symbol addresses.

Do not add `__attribute__((aligned(...)))`, packed layout, or custom sections merely to silence a mismatch. Use an explicit alignment attribute only when the original symbol's alignment exceeds or differs from what its type and input-section placement would otherwise provide, and verify both `__alignof__`/object metadata and the linked address.

### 9.7 Partial `incbin` replacement

When replacing part of an `incbin`, calculate the exact original start, converted length, and remaining range. Update the assembly offsets so that no byte is duplicated or omitted. Review the first bytes before the converted range and the first bytes after it to catch off-by-one and alignment mistakes.

Do not leave two definitions for the same ROM range. Remove the replaced bytes from the raw source, remove obsolete linker symbols or declarations, and search for stale references to the old address-derived symbol.

If the converted C object introduces relocations, compare the fully linked ROM rather than only the object payload. Inspect the relocation table when a pointer value or function address differs unexpectedly.

If a raw range contains mixed typed data and opaque payload, it is acceptable to convert only the established portion. Do not invent a type for the remainder to make the conversion appear complete.

### 9.8 Data validation

Use a dependency-aware clean build after changing C data, assembly data, linker entries, headers that define data types, or generated asset inputs. A stale object can conceal a missing dependency or an incorrect linker update.

Verify all of the following before submission:

- The complete linked ROM comparison succeeds for every affected target.
- Every converted symbol starts at its original address.
- The first unaffected symbol after the converted range remains at its original address.
- The converted range, its leading boundary, its trailing boundary, and all alignment bytes match the original ROM.
- Pointer and function-pointer entries resolve to the correct linked targets, including the Thumb bit where applicable.
- The object-file section, alignment, size, symbol binding, and relocations agree with the intended representation.
- No converted byte remains duplicated in an `incbin`, and no original byte has been dropped.
- All declarations, array counts, struct sizes, and linker entries describe the same range.

Use tools such as the linker map, `nm`, `objdump`, or `readelf` to inspect symbol addresses, section alignment, binding, and relocation records when the change is not trivial. ROM equality is required, but these intermediate checks make layout mistakes attributable instead of merely detecting that the final image moved.

### 9.9 Asset-type inference from program behavior

Agents may decompile non-code assets, including compressed graphics-related data, when the asset type and boundaries can be recovered from program behavior. Do not classify an opaque blob as tiles, a tilemap, a palette, or another asset merely because its bytes look plausible, its size is familiar, or a generic compression signature is present.

Start from every reference to the blob and follow the consumer data flow. Identify any established decompression, DMA, `CpuSet`, graphics-loading, palette-loading, background, sprite, or map helper; determine the destination object or hardware region; and inspect how the decompressed or copied bytes are subsequently indexed. A destination in palette memory is strong evidence for palette data; a destination in BG or OBJ tile memory together with tile-index consumers supports tile graphics; a screen-block or tilemap buffer consumed as map entries supports tilemap data. Named functions, established descriptor types, BG/OBJ register setup, copy length, bit depth, dimensions, and neighboring tables should corroborate the interpretation rather than substitute for it.

For compressed data, separate the compression format from the payload type. A known decompressor can establish how to recover the bytes without establishing whether the result is tiles, a tilemap, a palette, text, or another structure. Determine the payload from its destinations and consumers after decompression.

Once the format, dimensions or record layout, and exact source range are established, convert the raw data to the repository's existing editable asset format and use the existing build conversion rules where possible. Verify an exact round trip from the checked-in source asset through the normal build pipeline to the original linked bytes. If the consumer evidence does not establish the interpretation with reasonable confidence, leave the data raw and document what remains unknown instead of inventing an asset representation.

### 9.10 Generated asset sources

Do not hand-edit converted binary assets, generated assembly, object files, linked outputs, or other build artifacts. Edit the source asset or configuration that generates them.

Do not force-add ignored generated files merely to make a local build reproducible. A pull request should contain the editable source and any required build-rule change, not a cache of local outputs.

When replacing raw or hand-written generated content with an editable source format, verify both the generated bytes and the dependency path that regenerates them from a clean state.

### 9.11 Scope and reporting for data pull requests

Limit a data pull request to one table, one raw range, or one tightly related group unless a shared type or recoverable original input-section boundary makes a larger unit necessary. A large byte count does not justify combining unrelated interpretations.

The pull-request description must state the original address range, old and new source files, recovered type and count, boundary evidence, linker-script change, alignment assumptions, and exact validation performed. Distinguish verified semantic fields from offsets or values that remain unknown.

If an alignment or grouping choice is made solely to preserve placement and its original source-level meaning remains uncertain, say so. Do not describe a linker necessity as proof that two tables were conceptually one object.

## 10. Formatting and documentation style

### 10.1 C formatting

Follow the style of the file being edited. Do not reformat unrelated code.

- Put a space after `if`, `while`, `for`, `switch`, and `do`.
- Put a space between `)` and `{`.
- Put spaces around `?` and `:` in conditional expressions.
- Put a space after `//`.
- Do not indent `case` and `default` relative to their `switch` when following the repository's established style.
- Keep multi-statement macro formatting consistent with nearby macros.
- Use tabs for assembly indentation.
- Do not leave stray blank lines or two consecutive blank lines.
- End every text file with a newline.

```c
switch (obj->subtype) {
case 0:
    DoSomething(obj);
    break;
default:
    break;
}
```

### 10.2 Markdown prose

Format Markdown like ordinary prose. Keep each complete prose paragraph on one physical source line, without manual wrapping at a column limit and without inserting source line breaks after individual sentences or clauses.

Start a new physical line only when beginning a new paragraph or when required by Markdown syntax. Separate prose paragraphs with a blank line. Headings, lists, tables, block quotes, and code blocks follow their normal syntax.

Keep paragraphs reasonably focused. If a paragraph contains several independent rules, split it into real paragraphs or a list rather than placing an enormous unrelated block on one line.

### 10.3 Documentation content

Explain the final design and the evidence that justifies it. Do not turn repository documentation or a pull-request description into a chronological transcript of experiments.

Mention a discarded attempt only when it explains a surviving non-obvious constraint, a remaining limitation, or why an apparently simpler implementation is incorrect.

Use precise technical verbs. Avoid vague phrases such as “handles stuff,” “does things,” “one answer to several questions,” or “it seems fine.” State what is read, written, selected, compared, preserved, or left unresolved.

## 11. Validation

### 11.1 Compare during development

Compare the affected object or function after every meaningful code-generation change. This shortens feedback and makes causation easier to establish.

Do not rely only on instruction count, percentage, or the absence of compiler errors. Inspect the instruction diff and confirm that relocations, literal references, and symbol targets are correct where relevant.

Use a clean enough dependency state for the type of file changed. A quick build is useful only when it is guaranteed to include the edited inputs.

### 11.2 Final ROM verification

For every change that can affect compilation, linking, data, assets, or ROM contents, perform a dependency-aware non-modern build and run:

```sh
make compare -j$(nproc)
```

Do not use `NODEP=1` or `MODERN=1` for final verification. `NODEP=1` is only an iteration shortcut when changes are limited to `.c` or `.s`; changes to other inputs can be ignored. The modern build is not the authoritative matching target.

When headers, linker scripts, data, assets, build rules, generator inputs, shared declarations, or configuration changed, remove stale build products or perform a clean rebuild before trusting the result.

The top-level `make compare` sets `COMPARE=1` and propagates that setting through the multiboot targets that are dependencies of the main ROM, so the normal full comparison is expected to validate the main ROM and the auxiliary ROMs reached through that dependency chain. A successful full comparison should produce the repository's six expected checksum `OK` results: `katam.gba`, `payload.gba`, `speed_eaters.gba`, `unk_8D94B9C.gba`, `unk_8E1FE28.gba`, and `unk_8E8490C.gba`.

Do not replace the top-level comparison with ad-hoc subdirectory builds for ordinary final verification. If you are diagnosing an auxiliary target directly or have intentionally changed its dependency path, an explicit root target with `COMPARE=1` can be useful, but the pull-request report must distinguish that focused check from the final top-level `make compare`. Do not claim that all outputs match unless all six expected checksum checks succeeded on the final commit.

### 11.3 Validate `NONMATCHING`

Build and link the complete project with `NONMATCHING` defined after the final source changes. This is a separate compileability check; it does not and should not pass ROM comparison.

Ensure that every readable branch uses current declarations and helpers, contains no stale symbol names, and has no missing return path hidden by the default matching build.

### 11.4 Mechanical checks

Before submission:

- Run `git diff --check`.
- Inspect `git status --short` for accidental generated, temporary, editor, or personal files.
- Review the complete final diff against the pull-request base.
- Search the entire tree for stale old symbol names after a rename.
- Search analogous files and call sites when a review finding may apply to a class of code rather than one commented line.
- Recheck every touched `TODO`, `FIXME`, `NONMATCHING`, inline-assembly construct, and matching comment for accuracy.
- Confirm that every claimed test was actually run on the final commit.

Documentation-only changes do not require a ROM rebuild when they cannot affect the build, but they still require the mechanical checks and a careful source and rendered review.

If the required ROM or toolchain is unavailable, state exactly which verification was not run and why. Never claim a match based on reasoning alone.

## 12. Pull requests and review communication

### 12.1 Pull-request scope

Use one pull request for one coherent system or objective. As rough guidance, code decompilation should usually cover one file or a small related group, data decompilation one table or related group, and semantic renaming one subsystem with a reviewable number of decisions.

Large mechanical diffs are acceptable when they propagate a small number of independently reviewable decisions. Large collections of speculative names, unrelated cleanups, or mixed decompilation tasks are not.

Do not stack dependent pull requests without maintainer agreement. Normally, wait for the current pull request to be merged before opening the next change that depends on it.

### 12.2 Pull-request description

State plainly when the work was AI-assisted.

The description should explain:

- What changed and what did not change.
- Why the selected scope forms one coherent unit.
- The concrete evidence for semantic names, types, layouts, and source boundaries.
- Any matching constructs or unusual source forms that remain and the exact reason they are required.
- The exact validation commands and results.
- Any unresolved uncertainty, untested configuration, or deliberately retained unknown symbol.

Keep binary verification and semantic rationale in separate statements. Do not describe a successful build as proof that a name or type is correct.

Write the rationale for the final patch. Do not include a complete diary of failed approaches unless one is necessary to explain a surviving constraint or remaining limitation.

### 12.3 Reporting matching work

When a function still differs, show the relevant instruction-level diff rather than merely saying that it failed. Identify the first divergence, mismatch category, source change tested, and whether the change affected any other instructions.

Do not report a combined experiment as proof about each independent site. If one source change was applied globally, distinguish a genuinely mechanical propagation from several independent code-generation hypotheses.

When a function becomes matching, state the target and comparison method. Do not claim broader compiler or source-authenticity conclusions than the result establishes.

### 12.4 Responding to review

Address the underlying class of issue, not only the exact line on which the reviewer commented. Search for analogous instances and state whether they were checked.

When a review comment is based on an incorrect premise, explain the counterevidence rather than applying a harmful change for compliance. When the reviewer is correct, make the change and describe the result without overstating what was verified.

Do not let an AI-generated response substitute confidence for evidence. Re-open the implementation and verify every factual statement made in a review reply.

### 12.5 Repository hygiene

Commit only files that belong to the repository and the scope of the pull request. Do not commit `baserom.gba`, built ROMs, ELFs, maps, symbols, object files, generated assets, editor configuration, personal ignore rules, scratch scripts, decompilation-tool output, or temporary comparison files.

Do not edit generated outputs when an editable source exists. Do not modify unrelated files merely to make the diff look cleaner.

## 13. When evidence is incomplete

Stop at the strongest conclusion the evidence supports. Preserve unknown names, fields, types, and source boundaries when resolving them would require speculation.

In the pull request, state:

- What was inspected.
- What the evidence establishes.
- What competing interpretations remain possible.
- What was deliberately left unchanged.
- What additional evidence would resolve the uncertainty.

A precise question supported by evidence is useful. A guess presented as fact may impede future decompilation work and should not be committed.
