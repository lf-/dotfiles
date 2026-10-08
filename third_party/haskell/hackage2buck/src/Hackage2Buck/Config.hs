-- | What some packages need beyond their cabal file. See "Hackage2Buck.Fixups"
-- for the building blocks.
module Hackage2Buck.Config
  ( fixups
  ) where

import Hackage2Buck.Fixups
import Hackage2Buck.Platforms

fixups :: Fixups
fixups =
  forPackage "network" (configureDoneBy "//third_party/haskell/fixups/network:config")
    <> forPackage "unix-time" (configureDoneBy "//third_party/haskell/fixups/unix-time:config")
    <> forPackage "entropy" (setupDoneBy entropyDefines)

-- | entropy's Setup.hs compile checks: RDRAND on x86-64, getrandom(2) in
-- glibc, and getentropy(3), which glibc and darwin both have.
entropyDefines :: Plat -> [String]
entropyDefines = \case
  X86_64Linux -> ["-DHAVE_RDRAND"] <> glibc
  Aarch64Linux -> glibc
  Aarch64Darwin -> ["-DHAVE_GETENTROPY"]
  where
    glibc = ["-DHAVE_GETRANDOM", "-DHAVE_LIBC_GETRANDOM", "-DHAVE_GETENTROPY"]
