-- | @discover@: which third_party/haskell packages the repo's Haskell targets
-- name, read off their declared @deps@ so that packages not generated yet
-- still count.
module Hackage2Buck.Discover
  ( discover
  , writePackages
  ) where

import Data.Aeson (Value (..), eitherDecode)
import Data.Aeson.KeyMap qualified as KeyMap
import Data.Foldable (toList)
import Data.List (intercalate, stripPrefix)
import Data.Maybe (mapMaybe)
import Data.Set (Set)
import Data.Set qualified as Set
import Data.Text qualified as T
import Distribution.Types.PackageName (PackageName, mkPackageName, unPackageName)
import Hackage2Buck.Packages
import System.IO (hPutStrLn, stderr)
import System.Process.Typed (proc, readProcessStdout_, setWorkingDir)

-- | The new @packages.json@ contents. Newly named packages are added; ones no
-- longer named are only dropped with @prune@, and warned about otherwise.
discover :: FilePath -> Set PackageName -> Bool -> Packages -> IO Packages
discover repoRoot boots prune pkgs = do
  out <-
    readProcessStdout_ . setWorkingDir repoRoot $
      proc
        "buck2"
        [ "uquery"
        , "kind('haskell_(library|binary)', //...) - //third_party/haskell:"
        , "--output-attribute"
        , "^deps$"
        , "--json"
        ]
  value <- either (fail . ("buck2 uquery: " <>)) pure (eitherDecode out)
  let named = Set.fromList (map mkPackageName (mapMaybe package (strings value))) `Set.difference` boots
      before = Set.fromList (map mkPackageName (discovered pkgs))
      stale = before `Set.difference` named
  mapM_ (\p -> hPutStrLn stderr ("added " <> unPackageName p)) (Set.toList (named `Set.difference` before))
  mapM_
    (\p -> hPutStrLn stderr ((if prune then "pruned " else "no longer used (keep with no --prune): ") <> unPackageName p))
    (Set.toList stale)
  let kept = if prune then named else named <> before
  pure pkgs {discovered = map unPackageName (Set.toList kept)}
  where
    package label = stripPrefix "root//third_party/haskell:" label

-- | Every string anywhere in a JSON value: deps under a select() come out
-- nested.
strings :: Value -> [String]
strings = \case
  String s -> [T.unpack s]
  Array xs -> concatMap strings (toList xs)
  Object o -> concatMap strings (KeyMap.elems o)
  _ -> []

writePackages :: FilePath -> Packages -> IO ()
writePackages path pkgs =
  writeFile path $
    "{\n"
      <> field "discovered" (discovered pkgs)
      <> ",\n"
      <> field "extra" (extra pkgs)
      <> "\n}\n"
  where
    field :: String -> [String] -> String
    field key = \case
      [] -> "    " <> show key <> ": []"
      xs -> "    " <> show key <> ": [\n" <> intercalate ",\n" ["        " <> show x | x <- xs] <> "\n    ]"
