-- | Building blocks for what some packages need beyond their cabal file; the
-- fixups themselves are in "Hackage2Buck.Config". Fixups for one package
-- compose, so they can be built from small pieces.
module Hackage2Buck.Fixups
  ( Fixups
  , forPackage
  , applyFixups
  , fixedPackages
  , configureDoneBy
  , setupDoneBy
  ) where

import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Monoid (Endo (..))
import Data.Set (Set)
import Distribution.Types.BuildType (BuildType (Simple))
import Distribution.Types.PackageName (PackageName, mkPackageName)
import Hackage2Buck.Platforms (Plat)
import Hackage2Buck.Target

newtype Fixups = Fixups (Map PackageName (Endo Target))

-- | Both sides' fixups apply, not just the left's.
instance Semigroup Fixups where
  Fixups a <> Fixups b = Fixups (Map.unionWith (<>) a b)

instance Monoid Fixups where
  mempty = Fixups mempty

forPackage :: String -> (Target -> Target) -> Fixups
forPackage name f = Fixups (Map.singleton (mkPackageName name) (Endo f))

applyFixups :: Fixups -> Target -> Target
applyFixups (Fixups fs) t = maybe t (`appEndo` t) (Map.lookup (tName t) fs)

fixedPackages :: Fixups -> Set PackageName
fixedPackages (Fixups fs) = Map.keysSet fs

-- | The package's @Configure@ step only generates headers, and @label@
-- provides them instead.
configureDoneBy :: String -> Target -> Target
configureDoneBy label t = t {tBuildType = Simple, tCxxDeps = tCxxDeps t <> [label]}

-- | The package's @Custom@ setup only probes the C compiler for @-D@ defines,
-- and @defines@ answers those probes for each platform. They go to GHC's CPP
-- and the C sources alike, as such setups pass them to both.
setupDoneBy :: (Plat -> [String]) -> Target -> Target
setupDoneBy defines t =
  t
    { tBuildType = Simple
    , tByPlat = Map.mapWithKey (\p b -> b {pbCppFlags = pbCppFlags b <> defines p}) (tByPlat t)
    }
