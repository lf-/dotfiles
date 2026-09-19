/* The `_sync` outline atomics, which zig's compiler_rt does not ship.
 *
 * GCC's `-moutline-atomics` (on by default in Debian's aarch64 gcc) turns every
 * atomic read-modify-write into a call to a helper in libgcc, one per operation,
 * width and memory order: `__aarch64_<op><width>_<order>`.  GHC's aarch64 Linux
 * bindist is built by that gcc, so `libHSrts.a` alone references 108 of them.
 *
 * zig's compiler_rt (`lib/compiler_rt/aarch64_outline_atomics.zig`) implements
 * four of the five orders -- `relax`, `acq`, `rel`, `acq_rel` -- covering 92 of
 * those.  It has no `_sync` family at all, which is the one GCC emits for the
 * legacy `__sync_*` builtins, so linking GHC's RTS with `zig cc` fails on the
 * remaining 16: `{ldadd,ldclr,ldeor,ldset}` x `{1,2,4,8}`.  (`cas` and `swp`
 * have no `_sync` form, which is why they are absent below.)
 *
 * ## What these are, and the caveat
 *
 * Each one is a tail branch to the `_acq_rel` helper of the same operation and
 * width.  That is exact on any core with LSE atomics (ARMv8.1 and later, which
 * is everything server-class): there, both orders lower to the same single
 * `ld<op>al` instruction.
 *
 * It is *not* exact on the pre-LSE LL/SC fallback path, where libgcc's `_sync`
 * helpers end with a `dmb ish` that the `_acq_rel` ones do not have.  On such a
 * core these aliases are one full barrier weaker than a `__sync_*` builtin
 * promises.  This is a deliberate, accepted trade -- see the `-moutline-atomics`
 * comment in `hermetic_haskell_toolchain.bzl`.  If we ever run Haskell on
 * pre-LSE aarch64, these have to become real implementations.
 *
 * ## Why a branch rather than an alias
 *
 * The outline-atomic helpers do not use the ordinary AAPCS: a call is allowed to
 * clobber only x0, x1, x16, x17, x30 and the flags, because gcc emits the call
 * sites assuming everything else survives.  A `b` touches no registers at all,
 * so it preserves that contract; and when the linker has to insert a range
 * extension thunk, the thunk uses x16/x17, which are already in the clobber set.
 *
 * `.set`-style aliasing would be tidier but cannot work here: the target symbol
 * is defined in a different object (zig's compiler_rt), and ELF `.set` needs a
 * definition in the same translation unit.
 */

	.text

	/* \op and \width pick the helper; `\()` ends the macro argument so that
	 * the literal suffix is not read as part of the parameter name. */
	.macro	sync_alias op, width
	.globl	__aarch64_\op\width\()_sync
	.hidden	__aarch64_\op\width\()_sync
	.type	__aarch64_\op\width\()_sync, %function
__aarch64_\op\width\()_sync:
	b	__aarch64_\op\width\()_acq_rel
	.size	__aarch64_\op\width\()_sync, . - __aarch64_\op\width\()_sync
	.endm

	sync_alias	ldadd, 1
	sync_alias	ldadd, 2
	sync_alias	ldadd, 4
	sync_alias	ldadd, 8

	sync_alias	ldclr, 1
	sync_alias	ldclr, 2
	sync_alias	ldclr, 4
	sync_alias	ldclr, 8

	sync_alias	ldeor, 1
	sync_alias	ldeor, 2
	sync_alias	ldeor, 4
	sync_alias	ldeor, 8

	sync_alias	ldset, 1
	sync_alias	ldset, 2
	sync_alias	ldset, 4
	sync_alias	ldset, 8

	/* Nothing here needs an executable stack; say so or lld warns. */
	.section	.note.GNU-stack, "", %progbits
