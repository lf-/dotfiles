# First-party Haskell: the prelude rules with the repo's GHC flags.
#
# Flags are snowydeer's `default_ghc_flags`: Haskell2010 plus a fixed set of
# extensions, and `-Weverything -Werror` minus the warnings that are noise.
# Third-party code (`//third_party/haskell`) keeps its own cabal flags instead.
# A target's own `compiler_flags` come after these, so they can add to or
# override them.

DEFAULT_EXTENSIONS = [
    "Haskell2010",
    "BangPatterns",
    "BlockArguments",
    "DataKinds",
    "DefaultSignatures",
    "DeriveAnyClass",
    "DeriveFunctor",
    "DeriveGeneric",
    "DeriveLift",
    "DeriveTraversable",
    "DerivingStrategies",
    "DerivingVia",
    "FlexibleContexts",
    "FlexibleInstances",
    "GADTs",
    "GeneralizedNewtypeDeriving",
    "ImportQualifiedPost",
    "InstanceSigs",
    "LambdaCase",
    "MultiParamTypeClasses",
    "MultiWayIf",
    "NamedFieldPuns",
    "NegativeLiterals",
    "NumericUnderscores",
    "OverloadedLabels",
    "OverloadedStrings",
    "PartialTypeSignatures",
    "PatternSynonyms",
    "RankNTypes",
    "RecordWildCards",
    "RoleAnnotations",
    "ScopedTypeVariables",
    "StandaloneDeriving",
    "TypeApplications",
    "TypeFamilies",
    "UndecidableInstances",
    "ViewPatterns",
    "OverloadedRecordDot",
    "TypeOperators",
    # On by default, and it makes `label` a reserved word.
    "NoForeignFunctionInterface",
]

DEFAULT_GHC_FLAGS = ["-X" + ext for ext in DEFAULT_EXTENSIONS] + [
    "-fobject-determinism",
    "-Werror",
    "-Weverything",
    # Turns off the stricter -Wmissing-signatures; see GHC #14794.
    "-Wno-missing-exported-signatures",
    # Explicit export lists for every module: a pain for large modules.
    "-Wno-missing-export-lists",
    # Explicit imports of every name, `$` included: too strict.
    "-Wno-missing-import-lists",
    # GHC failing to specialise; fixing it means fixing the libraries.
    "-Wno-missed-specialisations",
    "-Wno-all-missed-specialisations",
    # Safe Haskell.
    "-Wno-unsafe",
    "-Wno-missing-safe-haskell-mode",
    # Polymorphic local bindings are fine.
    "-Wno-missing-local-signatures",
    "-Wno-monomorphism-restriction",
    "-Wno-unused-packages",
    # GHC #23297.
    "-Wno-operator-whitespace",
    "-Wno-missing-kind-signatures",
    # Not in snowydeer's list: Mercury imports its own prelude everywhere,
    # this repo uses base's.
    "-Wno-implicit-prelude",
    # Combines poorly with DuplicateRecordFields.
    "-Wno-ambiguous-fields",
    "-fwarn-tabs",
    # Diagnostics at the end of the build, not lost in its output.
    "-fdefer-diagnostics",
    "-fdiagnostics-color=always",
]

def depot_haskell_library(compiler_flags = [], **kwargs):
    native.haskell_library(compiler_flags = DEFAULT_GHC_FLAGS + compiler_flags, **kwargs)

def depot_haskell_binary(compiler_flags = [], **kwargs):
    native.haskell_binary(compiler_flags = DEFAULT_GHC_FLAGS + compiler_flags, **kwargs)
