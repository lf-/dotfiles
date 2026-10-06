-- | GHC's boot packages, from @toolchains//haskell:boot_packages.json@: these
-- come with the toolchain, so they are never fetched from Hackage.
module Hackage2Buck.Boot
  ( Boot (..)
  , readBoot
  , bootNames
  ) where

import Data.Aeson (FromJSON (..), eitherDecodeFileStrict, withObject, (.:))
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Data.Set (Set)
import Distribution.Parsec (eitherParsec)
import Distribution.Types.PackageName (PackageName, mkPackageName)
import Distribution.Types.Version (Version)
import Hackage2Buck.Platforms

data Boot = Boot
  { bootGhcVersion :: Version
  , bootPackages :: Map Plat (Map PackageName Version)
  }

newtype BootFile = BootFile (String, Map String (Map String String))

instance FromJSON BootFile where
  parseJSON = withObject "boot_packages.json" $ \o -> do
    ghc <- o .: "ghc_version"
    pkgs <- o .: "packages"
    versions <- traverse (traverse (withObject "boot package" (.: "version"))) pkgs
    pure (BootFile (ghc, versions))

readBoot :: FilePath -> IO Boot
readBoot path = either (fail . ((path <> ": ") <>)) pure =<< parse <$> eitherDecodeFileStrict path
  where
    parse decoded = do
      BootFile (ghc, pkgs) <- decoded
      ghcVersion <- eitherParsec ghc
      byPlat <- traverse (forPlat pkgs) allPlats
      pure (Boot ghcVersion (Map.fromList (zip allPlats byPlat)))
    forPlat pkgs plat = case Map.lookup (platKey plat) pkgs of
      Nothing -> Left ("no '" <> platKey plat <> "' entry")
      Just m -> Map.mapKeys mkPackageName <$> traverse eitherParsec m

-- | Boot packages on any platform.
bootNames :: Boot -> Set PackageName
bootNames = foldMap Map.keysSet . bootPackages
