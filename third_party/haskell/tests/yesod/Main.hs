{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}

module Main (main) where

import Control.Monad.Trans.Reader (runReaderT)
import Data.ByteString.Builder (toLazyByteString)
import Data.ByteString.Lazy qualified as BL
import Data.IORef (modifyIORef', newIORef, readIORef)
import Data.Text (Text)
import Data.Text qualified as T
import Database.Esqueleto.Experimental
  ( from
  , renderQuerySelect
  , table
  , val
  , where_
  , (==.)
  , (^.)
  )
import Database.Persist (getEntityDBName, unEntityNameDB, unFieldNameDB)
import Database.Persist.Sql (SqlBackend)
import Database.Persist.SqlBackend (MkSqlBackendArgs (..), mkSqlBackend)
import Database.Persist.TH (mkPersist, persistLowerCase, share, sqlSettings)
import Network.HTTP.Types (status200)
import Network.Wai (Request, defaultRequest, responseStatus, responseToStream, setPath)
import Network.Wai.Internal (ResponseReceived (..))
import Yesod.Core
  ( HandlerFor
  , Yesod (..)
  , mkYesod
  , parseRoutes
  , renderRoute
  , toWaiAppPlain
  )

share
  [mkPersist sqlSettings]
  [persistLowerCase|
Person
  name Text
  age Int
|]

data App = App

mkYesod
  "App"
  [parseRoutes|
/hello/#Text HelloR GET
|]

instance Yesod App where
  -- The default reads (or writes) a client session key file.
  makeSessionBackend _ = pure Nothing

getHelloR :: Text -> HandlerFor App Text
getHelloR name = pure ("hello, " <> name)

-- | Enough of a backend for esqueleto to render SQL against; it never talks
-- to a database.
renderOnly :: IO SqlBackend
renderOnly = do
  stmts <- newIORef mempty
  pure $
    mkSqlBackend
      MkSqlBackendArgs
        { connPrepare = \_ -> fail "renderOnly: no database"
        , connInsertSql = \_ _ -> error "renderOnly: no database"
        , connStmtMap = stmts
        , connClose = pure ()
        , connMigrateSql = \_ _ _ -> pure (Right [])
        , connBegin = \_ _ -> pure ()
        , connCommit = \_ -> pure ()
        , connRollback = \_ -> pure ()
        , connEscapeFieldName = \f -> "\"" <> unFieldNameDB f <> "\""
        , connEscapeTableName = \e -> "\"" <> unEntityNameDB (getEntityDBName e) <> "\""
        , connEscapeRawName = \n -> "\"" <> n <> "\""
        , connNoLimit = ""
        , connRDBMS = "render-only"
        , connLimitOffset = \_ sql -> sql
        , connLogFunc = \_ _ _ _ -> pure ()
        }

request :: Request
request = setPath defaultRequest "/hello/buck"

expect :: String -> Bool -> IO ()
expect what ok = if ok then putStrLn ("ok: " <> what) else error ("failed: " <> what)

main :: IO ()
main = do
  -- Yesod: a request through the WAI application.
  app <- toWaiAppPlain App
  body <- newIORef mempty
  _ <- app request $ \response -> do
    expect "status 200" (responseStatus response == status200)
    let (_, _, withBody) = responseToStream response
    withBody $ \stream -> stream (\chunk -> modifyIORef' body (<> chunk)) (pure ())
    pure ResponseReceived
  text <- BL.toStrict . toLazyByteString <$> readIORef body
  print text
  expect "yesod response body" (text == "hello, buck")

  -- persistent's TH, and esqueleto rendering a query over it.
  backend <- renderOnly
  (sql, params) <-
    flip runReaderT backend . renderQuerySelect $ do
      p <- from (table @Person)
      where_ (p ^. PersonAge ==. val 30)
      pure (p ^. PersonName)
  putStrLn (T.unpack sql)
  print params
  expect "esqueleto SQL" ("\"person\".\"age\" = ?" `T.isInfixOf` sql)
  expect "esqueleto params" (length params == 1)
