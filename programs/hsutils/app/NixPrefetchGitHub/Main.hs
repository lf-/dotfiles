module NixPrefetchGitHub.Main (main) where

import Data.ByteString.Char8 qualified as BS8
import HsUtils.App (HasManager)
import HsUtils.Github
import Options.Applicative
import RIO.Partial (fromJust)
import RIO.Process
import RIO.Text qualified as T
import qualified RIO.Char as Char
import HsUtils.NixHash (hashFromBase32, HashWithAlgorithm (SHA256), hashToSri)
import Import

data PrefetchUrlWtf = PrefetchUrlWtf Text deriving (Show)
instance Exception PrefetchUrlWtf

prefetchUrl :: (HasProcessContext env, HasLogFunc env) => Text -> RIO env Text
prefetchUrl url = do
  theProc <-
    proc "nix-prefetch-url" ["--type", "sha256", "--name", "source", "--unpack", T.unpack url] $
      \p -> pure $ setStderr closed p
  stderr <- readProcessStdout_ theProc
  fromEither . decodeUtf8' . BS8.strip . toStrictBytes $ stderr

data Format = FetchFromGitHub | FetchTarball deriving (Eq, Show)

parseFormat :: ReadM Format
parseFormat = eitherReader $ parse . fmap Char.toLower
 where
 parse = \case
  "fetchfromgithub" -> Right FetchFromGitHub
  "fetchtarball" -> Right FetchTarball
  _ -> Left "unrecognized format; fetchtarball and fetchFromGitHub are supported"

data Args = Args
  { userRepo :: Text
  , format :: Format
  , verbose :: Bool
  , branch :: Maybe Text
  } deriving (Show)

args :: Parser Args
args =
  Args
    <$> argument str (metavar "REPO")
    <*> option parseFormat (long "format" <> short 'f' <> help "Output format")
    <*> switch (long "verbose" <> short 'v' <> help "Verbose mode")
    <*> option (Just <$> str) (long "branch" <> short 'b' <> help "Branch to fetch" <> value Nothing)

data TarballMeta = TarballMeta
  { branch :: RepoBranchRef
  , user :: Text
  , repo :: Text
  , userRepoUrl :: Text
  , rev :: Text
  , sha256 :: Text
  }

-- FIXME: this is obviously no good
quoted :: Text -> Text
quoted s = "\"" <> s <> "\""

treeUrl :: Text -> Text -> Text
treeUrl userRepoUrl branchName = userRepoUrl <> "/tree/" <> branchName

fetchTarballOutput :: TarballMeta -> Text
fetchTarballOutput TarballMeta {..} =
  T.unlines [
    "fetchTarball {",
    "  # " <> treeUrl userRepoUrl branch.name,
    "  url = " <> quoted archiveUrl <> ";",
    "  sha256 = " <> quoted sha256 <> ";",
    -- undocumented; https://github.com/NixOS/nix/issues/904
    "  name = " <> quoted "source" <> ";",
    "}"
  ]
  where
  archiveUrl = userRepoUrl <> "/archive/" <> rev <> ".tar.gz"

fetchFromGitHubOutput :: TarballMeta -> Text
fetchFromGitHubOutput TarballMeta {..} =
  T.unlines
    [ "fetchFromGitHub {"
    , "  owner = " <> quoted user <> ";"
    , "  repo = " <> quoted repo <> ";"
    , "  # " <> treeUrl userRepoUrl branch.name
    , "  rev = " <> quoted rev <> ";"
    , "  sha256 = " <> quoted sha256 <> ";"
    , "}"
    ]

getTarballMeta ::
  (HasProcessContext env, HasLogFunc env) =>
  Text ->
  Text ->
  RepoBranchRef ->
  RIO env TarballMeta
getTarballMeta user repo branch = do
  let userRepoUrl = "https://github.com/" <> user <> "/" <> repo
      rev = branch.target.oid
  sha256_ <- prefetchUrl (userRepoUrl <> "/archive/" <> rev <> ".tar.gz")
  -- turns the hash into a SRI so it looks like it's from a modern nix >:)
  sha256 <- hashToSri . SHA256 <$> (hashFromBase32 $ encodeUtf8 sha256_) `orThrow` PrefetchUrlWtf "hash not decodable"
  pure $ TarballMeta {..}

getBranchTip ::
  (HasGithubToken env, HasManager env, HasLogFunc env) =>
  Text ->
  Text ->
  Maybe Text ->
  RIO env RepoBranchRef
getBranchTip owner name branch = do
  res <-
    executeGraphQL $
      QueryRepositoryDefaultBranchParams
        { owner
        , name
        , explicitBranch = not $ isNothing branch
        , branch = fromMaybe "" branch
        }
  let whichBranch = case branch of
        Nothing -> res.repository.defaultBranchRef
        Just _ -> fromJust res.repository.ref
  pure $ whichBranch

runApp :: (HasLogFunc env, HasManager env, HasGithubToken env, HasProcessContext env) => Args -> RIO env ()
runApp args = do
  logDebug $ displayShow args
  (user, repo) <- parseUserRepo $ T.split (== '/') args.userRepo
  res <- getBranchTip user repo args.branch

  tm <- getTarballMeta user repo res
  let
    formatted = case args.format of
      FetchFromGitHub -> fetchFromGitHubOutput tm
      FetchTarball -> fetchTarballOutput tm
  putStrLn formatted
 where
  parseUserRepo [user, repo] = pure (user, repo)
  parseUserRepo _ = throwString "user/repo is invalid"

main :: IO ()
main = do
  args <- execParser (info args (progDesc "Makes you a fetchFromGitHub"))
  logOpts <- logOptionsHandle stderr args.verbose
  runGithubApp logOpts $
    runApp args
