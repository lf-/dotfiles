-- | @packages.json@: the packages the repo asks for.
module Hackage2Buck.Packages
  ( Packages (..)
  , readPackages
  , requested
  ) where

import Data.Aeson (FromJSON (..), eitherDecodeFileStrict, withObject, (.:))
import Data.Set (Set)
import Data.Set qualified as Set
import Distribution.Types.PackageName (PackageName, mkPackageName)

data Packages = Packages
  { discovered :: [String]
  -- ^ Owned by @hackage2buck discover@.
  , extra :: [String]
  -- ^ Hand-edited: packages the graph cannot see, e.g. ones only another
  -- platform needs.
  }

instance FromJSON Packages where
  parseJSON = withObject "packages.json" $ \o -> Packages <$> o .: "discovered" <*> o .: "extra"

readPackages :: FilePath -> IO Packages
readPackages path = either (fail . ((path <> ": ") <>)) pure =<< eitherDecodeFileStrict path

requested :: Packages -> Set PackageName
requested p = Set.fromList (map mkPackageName (discovered p <> extra p))
