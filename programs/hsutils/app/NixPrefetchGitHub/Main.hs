module NixPrefetchGitHub.Main (main) where

import Data.ByteString.Char8 qualified as BS8
import HsUtils.App (HasManager, decodeThrow)
import HsUtils.Github
import HsUtils.NixHash (HashWithAlgorithm (SHA256), hashFromBase32, hashToSri)
import HsUtils.NixPrefetchGit.Types (NixPrefetchGitOutput (..))
import Import
import Options.Applicative
import RIO.Char qualified as Char
import RIO.Partial (fromJust)
import RIO.Process
import RIO.Text qualified as T

data PrefetchUrlWtf = PrefetchUrlWtf Text deriving (Show)
instance Exception PrefetchUrlWtf

data ShouldUnpack = DontUnpack | Unpack deriving (Show)

prefetchUrl :: (HasProcessContext env, HasLogFunc env) => ShouldUnpack -> Text -> RIO env Text
prefetchUrl shouldUnpack url = do
  theProc <-
    proc "nix-prefetch-url" args $
      \p -> pure $ setStderr closed p
  stdout <- readProcessStdout_ theProc
  fromEither . decodeUtf8' . BS8.strip . toStrictBytes $ stdout
 where
  args = ["--type", "sha256", "--name", "source"] <> unpackArg <> [T.unpack url]
  unpackArg = case shouldUnpack of
    Unpack -> ["--unpack"]
    DontUnpack -> []

prefetchGit :: (HasProcessContext env, HasLogFunc env) => Text -> RIO env Text
prefetchGit url = do
  theProc <-
    proc "nix-prefetch-git" args $
      \p -> pure $ setStderr inherit p
  stdout <- readProcessStdout_ theProc
  (.sha256) <$> (decodeThrow @NixPrefetchGitOutput $ stdout)
 where
  -- due to jackage we can't specify the name, which means this doesn't work
  -- with flakes lol
  --
  -- but I'd have to write a parser for base64 hashes to deal with flakes and
  -- nix flake prefetch.
  args = ["--hash", "sha256", T.unpack url]

data Format = FetchFromGitHub | FetchTarball | FetchUrlZip | Cabal deriving (Eq, Show)

parseFormat :: ReadM Format
parseFormat = eitherReader $ parse . fmap Char.toLower
 where
  parse = \case
    "fetchfromgithub" -> Right FetchFromGitHub
    "fetchtarball" -> Right FetchTarball
    "fetchurlzip" -> Right FetchUrlZip
    "cabal" -> Right Cabal
    "source-repository-package" -> Right Cabal
    _ -> Left "unrecognized format; fetchtarball, fetchFromGitHub, fetchUrlZip, cabal are supported"

data Args = Args
  { userRepo :: Text
  , format :: Format
  , verbose :: Bool
  , branch :: Maybe Text
  , shouldUnpack :: ShouldUnpack
  }
  deriving (Show)

args :: Parser Args
args =
  Args
    <$> argument str (metavar "REPO")
    <*> option parseFormat (long "format" <> short 'f' <> help "Output format")
    <*> switch (long "verbose" <> short 'v' <> help "Verbose mode")
    <*> option (Just <$> str) (long "branch" <> short 'b' <> help "Branch to fetch" <> value Nothing)
    <*> (toShouldUnpack <$> switch (long "no-unpack" <> short 'n' <> help "Don't unpack the archive"))
 where
  toShouldUnpack True = DontUnpack
  toShouldUnpack False = Unpack

data ArchiveMeta = ArchiveMeta
  { branch :: RepoBranchRef
  , user :: Text
  , repo :: Text
  , userRepoUrl :: Text
  , rev :: Text
  , sha256 :: Text
  , shouldUnpack :: ShouldUnpack
  }

-- FIXME: this is obviously no good
quoted :: Text -> Text
quoted s = "\"" <> s <> "\""

treeUrl :: Text -> Text -> Text
treeUrl userRepoUrl branchName = userRepoUrl <> "/tree/" <> branchName

fetchTarballOutput :: ArchiveMeta -> Text
fetchTarballOutput ArchiveMeta {..} =
  T.unlines
    [ "fetchTarball {"
    , "  # " <> treeUrl userRepoUrl branch.name
    , "  url = " <> quoted archiveUrl <> ";"
    , "  sha256 = " <> quoted sha256 <> ";"
    , -- undocumented; https://github.com/NixOS/nix/issues/904
      "  name = " <> quoted "source" <> ";"
    , "};"
    ]
 where
  archiveUrl = userRepoUrl <> "/archive/" <> rev <> ".tar.gz"

fetchZipOutput :: ArchiveMeta -> Text
fetchZipOutput ArchiveMeta {..} =
  T.unlines
    [ "fetchurl {"
    , "  # " <> treeUrl userRepoUrl branch.name
    , "  url = " <> quoted archiveUrl <> ";"
    , "  sha256 = " <> quoted sha256 <> ";"
    , -- undocumented; https://github.com/NixOS/nix/issues/904
      "  name = " <> quoted "source" <> ";"
    , "};"
    ]
 where
  archiveUrl = userRepoUrl <> "/archive/" <> rev <> ".zip"

fetchFromGitHubOutput :: ArchiveMeta -> Text
fetchFromGitHubOutput ArchiveMeta {..} =
  T.unlines
    [ "fetchFromGitHub {"
    , "  owner = " <> quoted user <> ";"
    , "  repo = " <> quoted repo <> ";"
    , "  # " <> treeUrl userRepoUrl branch.name
    , "  rev = " <> quoted rev <> ";"
    , "  sha256 = " <> quoted sha256 <> ";"
    , "};"
    ]

cabalOutput :: ArchiveMeta -> Text
cabalOutput ArchiveMeta {..} =
  T.unlines
    [ ""
    , "source-repository-package"
    , "  -- " <> treeUrl userRepoUrl branch.name
    , "  type: git"
    , "  location: " <> "https://github.com/" <> user <> "/" <> repo <> ".git"
    , "  tag: " <> rev
    , "  --sha256: " <> sha256
    ]

sha256ToSri :: Text -> Maybe Text
sha256ToSri sha256 = hashToSri . SHA256 <$> (hashFromBase32 $ encodeUtf8 sha256)

getArchiveMeta ::
  (HasProcessContext env, HasLogFunc env) =>
  FetchType ->
  Text ->
  Text ->
  RepoBranchRef ->
  ShouldUnpack ->
  RIO env ArchiveMeta
getArchiveMeta archiveType user repo branch shouldUnpack = do
  sha256_ <- fetch archiveType
  -- turns the hash into a SRI so it looks like it's from a modern nix >:)
  sha256 <-
    if archiveType /= Git
      then sha256ToSri sha256_ `orThrow` PrefetchUrlWtf "hash not decodable"
      else pure sha256_
  pure $ ArchiveMeta {..}
 where
  userRepoUrl = "https://github.com/" <> user <> "/" <> repo
  rev = branch.target.oid

  fetch Tarball = prefetchUrl shouldUnpack tarballUrl
  fetch Zip = prefetchUrl shouldUnpack zipUrl
  fetch Git = prefetchGit gitUrl

  -- FIXME: uhh what about private repos
  gitUrl = "git@github.com:" <> user <> "/" <> repo
  tarballUrl = userRepoUrl <> "/archive/" <> rev <> ".tar.gz"
  zipUrl = userRepoUrl <> "/archive/" <> rev <> ".zip"

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

data FetchType = Zip | Tarball | Git deriving stock (Show, Eq)

fetchType :: Format -> FetchType
fetchType FetchFromGitHub = Tarball
fetchType FetchTarball = Tarball
fetchType FetchUrlZip = Zip
fetchType Cabal = Git

runApp :: (HasLogFunc env, HasManager env, HasGithubToken env, HasProcessContext env) => Args -> RIO env ()
runApp args = do
  logDebug $ displayShow args
  (user, repo) <- parseUserRepo $ T.split (== '/') args.userRepo
  res <- getBranchTip user repo args.branch
  let theFetchType = fetchType args.format

  tm <- getArchiveMeta theFetchType user repo res args.shouldUnpack
  let formatted = case args.format of
        FetchFromGitHub -> fetchFromGitHubOutput tm
        FetchTarball -> fetchTarballOutput tm
        FetchUrlZip -> fetchZipOutput tm
        Cabal -> cabalOutput tm
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
