module Main (main) where

import Data.ByteString.Lazy.Char8 qualified as BL
import Data.Char (isSpace)
import Data.List (dropWhileEnd)
import Hackage2Buck.Boot
import Hackage2Buck.Freeze
import Hackage2Buck.Generate
import Hackage2Buck.Packages
import Hackage2Buck.Platforms
import Hackage2Buck.Solve
import Options.Applicative
import System.FilePath ((</>))
import System.Process.Typed (proc, readProcessStdout_)

data Command = Solve | Generate | Regen

main :: IO ()
main = do
  cmd <-
    execParser . flip info (progDesc "Generate //third_party/haskell/BUCK from a cabal solve") . (<**> helper) $
      hsubparser
        ( command "solve" (info (pure Solve) (progDesc "Re-solve into stub/cabal.project.freeze and download sdists"))
            <> command "generate" (info (pure Generate) (progDesc "Write BUCK from the freeze file; no network"))
            <> command "regen" (info (pure Regen) (progDesc "solve, then generate"))
        )
  root <- trim . BL.unpack <$> readProcessStdout_ (proc "buck2" ["root", "--kind", "project"])
  host <- either fail pure hostPlat
  let haskellDir = root </> "third_party" </> "haskell"
      stubDir = haskellDir </> "stub"
  boot <- readBoot (root </> "toolchains" </> "haskell" </> "boot_packages.json")
  pkgs <- readPackages (haskellDir </> "packages.json")
  let doSolve = solve boot host pkgs stubDir =<< hermeticGhc root host (bootGhcVersion boot)
      doGenerate = do
        freeze <- readFreeze (stubDir </> "cabal.project.freeze")
        generate boot freeze (requested pkgs) (haskellDir </> "BUCK")
  case cmd of
    Solve -> doSolve
    Generate -> doGenerate
    Regen -> doSolve >> doGenerate
  where
    trim = dropWhileEnd isSpace . dropWhile isSpace
