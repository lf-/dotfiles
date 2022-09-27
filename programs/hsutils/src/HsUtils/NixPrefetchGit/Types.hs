{-# LANGUAGE TemplateHaskell #-}
module HsUtils.NixPrefetchGit.Types where
import RIO
import Data.Aeson.TH

data NixPrefetchGitOutput = NixPrefetchGitOutput
  { url :: Text
  , rev :: Text
  , date :: Text
  , path :: Text
  , sha256 :: Text
  , fetchLFS :: Bool
  , fetchSubmodules :: Bool
  , deepClone :: Bool
  , leaveDotGit :: Bool
  }
  deriving stock (Show)

$(deriveJSON defaultOptions ''NixPrefetchGitOutput)
