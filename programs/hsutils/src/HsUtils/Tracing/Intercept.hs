module HsUtils.Tracing.Intercept (Event (..), StartEvent (..), TerminateEvent (..), parseOne) where

import Control.Monad (msum)
import Data.Aeson ((.:), (.:?))
import Data.Aeson qualified as A
import Data.Aeson.Types (parseEither)
import Data.ByteString.Lazy qualified as BS
import Data.Maybe (fromMaybe)
import Data.Text (Text)
import Data.Time (UTCTime)
import Data.Time.Format.ISO8601 (iso8601ParseM)
import Data.Vector qualified as V
import Prelude hiding (id)

-- | intercept event
data Event
  = Start !StartEvent
  | Terminate !TerminateEvent
  deriving stock (Show)

data StartEvent = StartEvent
  { executable :: Text
  , arguments :: V.Vector Text
  , startTime :: UTCTime
  , pid :: Int
  , ppid :: Int
  }
  deriving stock (Show)

data TerminateEvent = TerminateEvent
  {status :: Text, endTime :: UTCTime}
  deriving stock (Show)

parseOne :: BS.ByteString -> Either String (Text, Event)
parseOne d =
  A.eitherDecode @A.Value d
    >>= parseEither
      ( A.withObject "run" \o -> do
          rid <- o .: "rid"
          started <- o .:? "started"
          terminated <- o .:? "terminated"
          timestamp <- iso8601ParseM =<< o .: "timestamp"

          r <-
            fromMaybe (fail "unmatched variant") $
              msum @[] @Maybe
                [ parseTerminated timestamp <$> terminated
                , parseStarted timestamp <$> started
                ]
          pure (rid, r)
      )
 where
  parseTerminated endTime = A.withObject "terminated" \o -> do
    status <- o .: "status"
    pure $ Terminate TerminateEvent {..}
  parseStarted startTime = A.withObject "started" \o -> do
    exe <- o .: "execution"
    executable <- exe .: "executable"
    arguments <- exe .: "arguments"
    pid <- o .: "pid"
    ppid <- o .: "ppid"
    pure $ Start StartEvent {..}
