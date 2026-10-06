module Main (main) where

import Data.List (isInfixOf)
import Language.Haskell.HsColour (Output (..), hscolour)
import Language.Haskell.HsColour.Colourise (defaultColourPrefs)

-- CSS output rather than ANSI so the assertion is plain text.
main :: IO ()
main = do
  let html = hscolour CSS defaultColourPrefs False True "" False "main = pure ()"
  putStrLn html
  if "<span class='hs-definition'>main</span>" `isInfixOf` html
    then pure ()
    else error "hscolour did not mark `main` as a definition"
