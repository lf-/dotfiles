{-# LANGUAGE QuasiQuotes #-}

module HsUtils.Github where

import Control.Arrow (left)
import Data.Aeson (FromJSON, ToJSON (..), Value (..))
import Data.Aeson qualified as A
import Data.Aeson.KeyMap qualified as A
import Data.Aeson.Types qualified as A
import Data.Generics.Product (HasField' (field'))
import Data.Typeable (typeRep)
import Network.HTTP.Client (Manager, ManagerSettings (..), Request (..), RequestBody (..), Response (..), httpLbs, parseRequest_)
import Network.HTTP.Client.TLS
import RIO
import RIO.Process
import RIO.Text qualified as T
import Text.RawString.QQ (r)

import HsUtils.App
import qualified RIO.ByteString as BS
import RIO.Char (ord)

githubApi :: Text
githubApi = "https://api.github.com"

githubApiRoute :: Text -> Text
githubApiRoute t = githubApi <> t

newtype GithubToken = GithubToken {unGithubToken :: ByteString} deriving (Show)

data GithubApp = GithubApp
  { manager :: Manager
  , token :: GithubToken
  , logFunc :: LogFunc
  , processContext :: ProcessContext
  }
  deriving stock (Generic)

instance HasLogFunc GithubApp where
  logFuncL = field' @"logFunc"

instance HasManager GithubApp where
  managerL = field' @"manager"

class HasGithubToken env where
  githubTokenL :: Lens' env GithubToken

instance HasGithubToken GithubApp where
  githubTokenL = field' @"token"

instance HasProcessContext GithubApp where
  processContextL = field' @"processContext"

w8 :: Char -> Word8
w8 = fromIntegral . ord

{- | Nicks the token from the github gh tool. This kind of is terrible, and
 should use a system secret service, but there AREN'T ANY BINDINGS FOR ANY
 >:(
-}
getGithubToken :: (HasProcessContext env, HasLogFunc env) => RIO env GithubToken
getGithubToken = do
  tok <- proc "gh" ["auth", "token", "-h", "github.com"] \conf -> do
    readProcessStdout_ conf
  pure . GithubToken . BS.dropWhileEnd (`elem` [w8 '\r', w8 '\n']) . toStrictBytes $ tok

runGithubApp :: (MonadUnliftIO m, MonadThrow m) => LogOptions -> RIO GithubApp ret -> m ret
runGithubApp logOpts act = do
  let settings =
        tlsManagerSettings
          { managerModifyRequest = \r ->
              pure $
                r {requestHeaders = ("User-Agent", "hsutils <https://github.com/lf-/dotfiles") : r.requestHeaders}
          }
  manager <- newTlsManagerWith settings
  processContext <- mkDefaultProcessContext
  withLogFunc logOpts $ \logFunc ->
    runRIO GithubApp {token = error "fake token", manager, logFunc, processContext} do
      token <- getGithubToken
      runRIO GithubApp {token, manager, logFunc, processContext} act

class
  (FromJSON (ResultType query), ToJSON (GraphQLParams query), Display (GraphQLParams query), Typeable query) =>
  GraphQLQuery query
  where
  data ResultType query
  data GraphQLParams query

  graphqlQuery :: Text

data QueryRepositoryDefaultBranch = QueryRepositoryDefaultBranch

data BranchTarget = BranchTarget
  { oid :: Text
  }
  deriving stock (Show, Generic)

instance FromJSON BranchTarget

data RepoBranchRef = RepoBranchRef
  { name :: Text
  , target :: BranchTarget
  }
  deriving stock (Show, Generic)

instance FromJSON RepoBranchRef

data RepoDefaultBranchRepository = RepoDefaultBranchRepository
  { defaultBranchRef :: RepoBranchRef
  , ref :: Maybe RepoBranchRef
  }
  deriving stock (Show, Generic)

instance FromJSON RepoDefaultBranchRepository

instance GraphQLQuery QueryRepositoryDefaultBranch where
  data ResultType QueryRepositoryDefaultBranch = QueryRepositoryDefaultBranchResult
    { repository :: RepoDefaultBranchRepository
    }
    deriving stock (Show, Generic)
  data GraphQLParams QueryRepositoryDefaultBranch = QueryRepositoryDefaultBranchParams
    { owner :: Text
    , name :: Text
    , explicitBranch :: Bool
    , branch :: Text
    }
    deriving stock (Show, Generic)

  graphqlQuery =
    [r|
query ($name: String = "", $owner: String = "", $explicitBranch: Boolean = false, $branch: String = "") {
  repository(name: $name, owner: $owner) {
    defaultBranchRef {
      name
      target {
        oid
      }
    }
    ref(qualifiedName: $branch) @include(if: $explicitBranch) {
      name
      target {
        oid
      }
    }
  }
}
    |]

instance Display (GraphQLParams QueryRepositoryDefaultBranch) where
  display = displayShow

instance FromJSON (ResultType QueryRepositoryDefaultBranch) where
  parseJSON = A.genericParseJSON A.defaultOptions

instance ToJSON (GraphQLParams QueryRepositoryDefaultBranch) where
  toJSON = A.genericToJSON A.defaultOptions

executeGraphQL ::
  forall query env.
  ( HasLogFunc env
  , GraphQLQuery query
  , HasManager env
  , HasGithubToken env
  ) =>
  GraphQLParams query ->
  RIO env (ResultType query)
executeGraphQL params = do
  manager <- asks (view managerL)
  token <- asks (view githubTokenL)
  logDebug $ "Github GraphQL " <> displayShow (typeRep (Proxy @query)) <> " with " <> display params
  let body =
        A.object
          [ ("query", String (graphqlQuery @query))
          , ("variables", toJSON params)
          ]
      req =
        (parseRequest_ (T.unpack $ githubApiRoute "/graphql"))
          { method = "POST"
          , requestBody = RequestBodyLBS $ A.encode body
          , requestHeaders =
              [ ("content-type", "application/json")
              , ("authorization", "bearer " <> unGithubToken token)
              ]
          }
  res <- liftIO $ httpLbs req manager
  fromEither . left JsonDecodeFailed $ decodeResp res.responseBody
 where
  getData = A.withObject "graphql top level" \obj -> do
    d <- maybe (fail "missing 'data' field") pure $ A.lookup "data" obj
    A.parseJSON d
  decodeResp resp = do
    resp' <- A.eitherDecode resp
    A.parseEither getData resp'
