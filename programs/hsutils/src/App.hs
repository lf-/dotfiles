module App where

import Network.HTTP.Client (HasHttpManager (getHttpManager), Manager)
import Network.HTTP.Client.TLS
import RIO
import RIO.Directory (getXdgDirectory, XdgDirectory (XdgConfig))
import qualified Data.Yaml as YAML
import Data.Aeson (Options(..), defaultOptions, camelTo2, genericParseJSON, FromJSON)
import qualified RIO.HashMap as HM
import qualified RIO.Text as T

newtype GithubToken = GithubToken {unGithubToken :: Text} deriving (Show)

data GithubApp = GithubApp
  { manager :: Manager
  , token :: GithubToken
  }

class HasManager env where
  managerL :: Lens' env Manager

instance HasManager GithubApp where
  managerL = lens (.manager) (\app mgr -> app {manager = mgr})

snakeCaseOptions :: Options
snakeCaseOptions = defaultOptions { fieldLabelModifier = camelTo2 '_' }

data GhHostsEntry = GhHostsEntry
  { user :: Text
  , oauthToken :: Text
  } deriving (Generic, Show)

instance FromJSON GhHostsEntry where
  parseJSON = genericParseJSON snakeCaseOptions

-- | Nicks the token from the github gh tool. This kind of is terrible, and
-- should use a system secret service, but there AREN'T ANY BINDINGS FOR ANY
-- >:(
getGithubToken :: (MonadIO m, MonadThrow m) => m GithubToken
getGithubToken = do
  configPath <- liftIO $ getXdgDirectory XdgConfig "gh/hosts.yml"
  configContent <- readFileBinary configPath

  parsed <- YAML.decodeThrow configContent
  githubComConfig <- fromEither $ maybe (Left $ YAML.YamlException "missing github.com key") Right $ HM.lookup (T.pack "github.com") parsed
  undefined

