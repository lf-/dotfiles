-- | What some packages need beyond their cabal file. See "Hackage2Buck.Fixups"
-- for the building blocks.
module Hackage2Buck.Config
  ( fixups
  ) where

import Hackage2Buck.Fixups

fixups :: Fixups
fixups =
  forPackage "network" (configureDoneBy "//third_party/haskell/fixups/network:config")
