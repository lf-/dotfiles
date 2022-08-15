module NixPrefetchGitHub.Main where

import HsUtils.App (HasManager)
import HsUtils.Github
import Options.Applicative
import RIO
import RIO.ByteString.Lazy (putStrLn)
import RIO.Process
import RIO.Text qualified as T
import qualified Data.ByteString.Char8 as BS8

prefetchUrl :: (HasProcessContext env, HasLogFunc env) => Text -> RIO env Text
prefetchUrl url = do
  theProc <-
    proc "nix-prefetch-url" ["--type", "sha256", "--name", "source", "--unpack", T.unpack url] $
      \p -> pure $ setStderr closed p
  stderr <- readProcessStdout_ theProc
  fromEither . decodeUtf8' . BS8.strip . toStrictBytes $ stderr

data Args = Args
  { userRepo :: Text
  , verbose :: Bool
  }

args :: Parser Args
args =
  Args
    <$> argument str (metavar "REPO")
    <*> switch (long "verbose" <> short 'v' <> help "Verbose mode")

runApp :: (HasLogFunc env, HasManager env, HasGithubToken env, HasProcessContext env) => Args -> RIO env ()
runApp args = do
  (user, repo) <- parseUserRepo $ T.split (== '/') args.userRepo
  res <-
    executeGraphQL $
      QueryRepositoryDefaultBranchParams
        { owner = user
        , name = repo
        , explicitBranch = False
        , branch = ""
        }

  let
    defaultBranch = res.repository.defaultBranchRef
    userRepoUrl = "https://github.com/" <> user <> "/" <> repo
    rev = defaultBranch.target.oid
  sha256 <- prefetchUrl (userRepoUrl <> "/archive/" <> rev <> ".tar.gz")
  putStrLn . fromStrictBytes
    . encodeUtf8
    $ T.unlines
      [ "fetchFromGitHub {"
      , "  owner = " <> quoted user <> ";"
      , "  repo = " <> quoted repo <> ";"
      , "  # " <> userRepoUrl <> "/tree/" <> defaultBranch.name
      , "  rev = " <> quoted rev <> ";"
      , "  sha256 = " <> quoted sha256 <> ";"
      , "}"
      ]
 where
  parseUserRepo [user, repo] = pure (user, repo)
  parseUserRepo _ = throwString "user/repo is invalid"

  -- FIXME: this is obviously no good
  quoted s = "\"" <> s <> "\""

main :: IO ()
main = do
  args <- execParser (info args (progDesc "Makes you a fetchFromGitHub"))
  logOpts <- logOptionsHandle stderr args.verbose
  runGithubApp logOpts $
    runApp args
