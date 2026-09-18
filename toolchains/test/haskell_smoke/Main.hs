{-# LANGUAGE CPP #-}
{-# LANGUAGE ForeignFunctionInterface #-}

-- | Proves @toolchains//:haskell@ compiles, links and runs a binary against
-- the boot packages in @toolchains//haskell@. No exact-version assertion on
-- purpose, so @update_hermetic_toolchain@ bumps do not have to edit this.
module Main (main) where

import Data.Version (showVersion)
import System.Exit (exitFailure)
import System.Info (compilerName, compilerVersion)

-- Reaching this means the toolchain's @-pgmP@ preprocessor ran.
#if !defined(__GLASGOW_HASKELL__)
#error "the Haskell preprocessor did not run under GHC"
#endif

-- Exercises the C compiler behind @-pgml@ and the rts package's @-lm@ in
-- @exported_linker_flags@.
foreign import ccall unsafe "math.h sqrt" c_sqrt :: Double -> Double

main :: IO ()
main = do
  check (compilerName == "ghc") ("unexpected compiler: " ++ compilerName)
  check (c_sqrt 1764 == 42) "the C toolchain is not doing arithmetic"
  putStrLn ("ok: " ++ compilerName ++ " " ++ showVersion compilerVersion)

check :: Bool -> String -> IO ()
check True _ = pure ()
check False message = putStrLn ("FAIL: " ++ message) >> exitFailure
