-- | The platforms the hermetic GHC toolchain ships for.
module Hackage2Buck.Platforms
  ( Plat (..)
  , allPlats
  , platKey
  , platCabal
  , hostPlat
  ) where

import Distribution.System (Arch (..), OS (..), Platform (..))
import System.Info qualified

data Plat = Aarch64Darwin | Aarch64Linux | X86_64Linux
  deriving (Eq, Ord, Show, Enum, Bounded)

allPlats :: [Plat]
allPlats = [minBound .. maxBound]

-- | GHC's download flavour; the keys of @toolchains//haskell:boot_packages.json@.
platKey :: Plat -> String
platKey = \case
  Aarch64Darwin -> "aarch64-apple-darwin"
  Aarch64Linux -> "aarch64-deb12-linux"
  X86_64Linux -> "x86_64-deb12-linux"

platCabal :: Plat -> Platform
platCabal = \case
  Aarch64Darwin -> Platform AArch64 OSX
  Aarch64Linux -> Platform AArch64 Linux
  X86_64Linux -> Platform X86_64 Linux

hostPlat :: Either String Plat
hostPlat = case (System.Info.os, System.Info.arch) of
  ("darwin", "aarch64") -> Right Aarch64Darwin
  ("linux", "aarch64") -> Right Aarch64Linux
  ("linux", "x86_64") -> Right X86_64Linux
  (o, a) -> Left ("no hermetic GHC for host " <> a <> "-" <> o)
