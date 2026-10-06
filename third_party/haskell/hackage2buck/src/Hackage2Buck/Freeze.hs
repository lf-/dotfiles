-- | @cabal.project.freeze@, the lock file: one version per package, plus the
-- flag assignment the solver chose.
module Hackage2Buck.Freeze
  ( Freeze (..)
  , readFreeze
  , parseFreeze
  ) where

import Data.Char (isSpace)
import Data.List (dropWhileEnd, isPrefixOf, stripPrefix)
import Data.Map.Strict (Map)
import Data.Map.Strict qualified as Map
import Distribution.Parsec (eitherParsec, explicitEitherParsec)
import Distribution.Types.Flag (FlagAssignment, parsecFlagAssignment)
import Distribution.Types.PackageName (PackageName, mkPackageName)
import Distribution.Types.Version (Version)

data Freeze = Freeze
  { freezeVersions :: Map PackageName Version
  , freezeFlags :: Map PackageName FlagAssignment
  }
  deriving (Show)

readFreeze :: FilePath -> IO Freeze
readFreeze path = either (fail . ((path <> ": ") <>)) pure . parseFreeze =<< readFile path

-- | Reads only the @constraints:@ field, whose entries are either
-- @any.<pkg> ==<version>@ or @<pkg> +flag -flag@.
parseFreeze :: String -> Either String Freeze
parseFreeze contents = foldr addEntry (Right (Freeze mempty mempty)) entries
  where
    entries = filter (not . null) (map trim (splitOn ',' (constraintsField (lines contents))))

    addEntry entry acc = do
      Freeze vs fs <- acc
      case words entry of
        [qualified, '=' : '=' : v] -> do
          let name = mkPackageName (unqualify qualified)
          version <- eitherParsec v
          pure (Freeze (Map.insert name version vs) fs)
        qualified : flags@(_ : _) -> do
          let name = mkPackageName (unqualify qualified)
          assignment <- explicitEitherParsec parsecFlagAssignment (unwords flags)
          pure (Freeze vs (Map.insertWith (<>) name assignment fs))
        _ -> Left ("unrecognised constraint: " <> entry)

    unqualify q = maybe q id (stripPrefix "any." q)

-- | The field's value: its first line plus every indented continuation line.
constraintsField :: [String] -> String
constraintsField ls = case break (field `isPrefixOf`) ls of
  (_, first : rest) ->
    unwords (drop (length field) first : takeWhile (\l -> take 1 l == " ") rest)
  _ -> ""
  where
    field = "constraints:" :: String

splitOn :: Char -> String -> [String]
splitOn c s = case break (== c) s of
  (a, _ : b) -> a : splitOn c b
  (a, []) -> [a]

trim :: String -> String
trim = dropWhileEnd isSpace . dropWhile isSpace
