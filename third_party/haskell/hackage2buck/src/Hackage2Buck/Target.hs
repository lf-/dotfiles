-- | One generated @third_party_haskell_library@, before rendering: what
-- fixups get to edit.
module Hackage2Buck.Target
  ( PlatBuild (..)
  , Target (..)
  ) where

import Data.Map.Strict (Map)
import Distribution.Types.BuildType (BuildType)
import Distribution.Types.PackageName (PackageName)
import Distribution.Types.Version (Version)
import Hackage2Buck.Platforms (Plat)

-- | What one platform's finalized library component builds. Paths are
-- relative to the sdist root.
data PlatBuild = PlatBuild
  { pbHsSourceDirs :: [FilePath]
  , pbSrcs :: [FilePath]
  , pbHscSrcs :: [FilePath]
  , pbCSrcs :: [FilePath]
  , pbIncludeDirs :: [FilePath]
  , pbDeps :: [PackageName]
  , pbCompilerFlags :: [String]
  , pbCppFlags :: [String]
  , pbCcFlags :: [String]
  }
  deriving (Eq, Show)

data Target = Target
  { tName :: PackageName
  , tVersion :: Version
  , tSha256 :: String
  , tBuildType :: BuildType
  -- ^ Anything but @Simple@ is an error, unless a fixup stands in for it.
  , tCxxDeps :: [String]
  -- ^ Non-Hackage header providers, added by fixups.
  , tByPlat :: Map Plat PlatBuild
  }
