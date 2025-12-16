#!/usr/bin/env cabal
{-# LANGUAGE GHC2021 #-}
{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE DuplicateRecordFields #-}
{-# LANGUAGE OverloadedRecordDot #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PartialTypeSignatures #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE NoFieldSelectors #-}
{-# OPTIONS_GHC -Wall -Wunused-binds #-}

{- cabal:
build-depends: aeson
             , vector
             , base
             , time
             , containers
             , text
             , bytestring
-}

import Control.Monad (msum)
import Control.Monad.ST (runST)
import Data.Aeson (KeyValue (..), (.:), (.:?), (.!=))
import Data.Aeson qualified as A
import Data.Aeson.KeyMap qualified as KM
import Data.Aeson.Types (parseEither)
import Data.ByteString.Lazy qualified as BS
import Data.ByteString.Lazy.Char8 qualified as BS
import Data.Map (Map)
import Data.Map qualified as Map
import Data.Maybe (fromMaybe)
import Data.STRef (STRef, modifySTRef', newSTRef, readSTRef)
import Data.Text (Text)
import Data.Text qualified as T
import Data.Time (UTCTime, diffUTCTime, nominalDiffTimeToSeconds)
import Data.Time.Format.ISO8601 (iso8601ParseM)
import Data.Vector qualified as V
import GHC.Stack (HasCallStack)
import System.Environment
import Prelude hiding (id)

data Phase
  = AsyncStart
  | AsyncEnd
  deriving stock (Show)

instance A.ToJSON Phase where
  toJSON AsyncStart = "b"
  toJSON AsyncEnd = "e"

newtype Micros = Micros Float
  deriving stock (Show)
  deriving newtype (A.ToJSON)

newtype Pid = Pid Int
  deriving stock (Show)
  deriving newtype (A.ToJSON, Num)

newtype Tid = Tid Int
  deriving stock (Show)
  deriving newtype (A.ToJSON, Num)

pidAsTid :: Pid -> Tid
pidAsTid (Pid p) = Tid p

-- | 'specialized' field for async events
data AsyncEventMeta = AsyncEventMeta
  { id :: Text
  }
  deriving stock (Show)

instance A.ToJSON AsyncEventMeta where
  toJSON AsyncEventMeta {..} = A.object ["id" .= id]

-- | <https://docs.google.com/document/d/1CvAClvFfyA5R-PhYUmn5OOQtYMH4h6I0nSsKchNAySU/preview>
data TraceEvent a = TraceEvent
  { name :: Maybe Text,
    cat :: Maybe Text,
    ph :: Phase,
    ts :: Micros,
    pid :: Pid,
    tid :: Tid,
    args :: KM.KeyMap A.Value,
    specialized :: a
  }

data ErasedTraceEvent = forall a. (A.ToJSON a) => ErasedTraceEvent (TraceEvent a)

instance A.ToJSON ErasedTraceEvent where
  toJSON (ErasedTraceEvent e) = A.toJSON e

instance (A.ToJSON a) => A.ToJSON (TraceEvent a) where
  toJSON TraceEvent {..} =
    A.Object $
      KM.fromList
        [ "ph" .= ph,
          "ts" .= ts,
          "pid" .= pid,
          "tid" .= tid,
          "args" .= args
        ]
        <> ("name" .=? name)
        <> ("cat" .=? cat)
        <> forceObject (A.toJSON specialized)
    where
      infixl 9 .=?
      n .=? (Just v) = KM.singleton n (A.toJSON v)
      _ .=? Nothing = KM.empty
      forceObject (A.Object o) = o
      forceObject _ = error "not object"

data TraceData = TraceData
  { traceEvents :: V.Vector ErasedTraceEvent,
    otherData :: Map Text Text
  }

instance A.ToJSON TraceData where
  toJSON TraceData {..} =
    A.object
      [ "traceEvents" .= traceEvents,
        "otherData" .= otherData
      ]

-- | intercept event
data Event
  = Start !StartEvent
  | Terminate !TerminateEvent
  deriving stock (Show)

data StartEvent = StartEvent
  { executable :: Text,
    arguments :: V.Vector Text,
    startTime :: UTCTime,
    pid :: Int,
    ppid :: Int
  }
  deriving stock (Show)

data TerminateEvent = TerminateEvent
  {status :: Text, endTime :: UTCTime}
  deriving stock (Show)

procOne :: BS.ByteString -> Either String (Text, Event)
procOne d =
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
                [ parseTerminated timestamp <$> terminated,
                  parseStarted timestamp <$> started
                ]
          pure (rid, r)
      )
  where
    parseTerminated endTime = A.withObject "terminated" \o -> do
      status <- o .:? "status" .!= "???"
      pure $ Terminate TerminateEvent {..}
    parseStarted startTime = A.withObject "started" \o -> do
      exe <- o .: "execution"
      executable <- exe .: "executable"
      arguments <- exe .: "arguments"
      pid <- o .: "pid"
      ppid <- o .: "ppid"
      pure $ Start StartEvent {..}

truncatePathName :: Text -> Text
truncatePathName t | T.length t > 30 = "..." <> T.takeEnd 30 t
truncatePathName t = T.takeEnd 30 t

throwLeft :: (HasCallStack) => Either String a -> a
throwLeft (Left a) = error a
throwLeft (Right v) = v

proc :: BS.ByteString -> V.Vector (Text, Event)
proc d = V.fromList . throwLeft $ mapM procOne (filter (not . BS.null) $ BS.lines d)

baseEv :: Phase -> Micros -> a -> TraceEvent a
baseEv ph ts specialized =
  TraceEvent
    { pid = 1,
      tid = 1,
      name = Nothing,
      cat = Nothing,
      ph,
      ts,
      args = KM.empty,
      specialized
    }

convertTs :: UTCTime -> UTCTime -> Micros
convertTs tsBase utcTs =
  let seconds = nominalDiffTimeToSeconds $ utcTs `diffUTCTime` tsBase
      microsPerSecond = 1e6
   in Micros . realToFrac $ seconds * microsPerSecond

expectJust :: [Char] -> Maybe a -> a
expectJust _msg (Just a) = a
expectJust msg Nothing = error msg

data TraceState s = TraceState
  {ridToPpidMap :: STRef s (Map Text Pid)}

toTracing :: UTCTime -> Map Text Pid -> (Text, Event) -> ErasedTraceEvent
toTracing tsBase _ridToPidMap (evId, Start StartEvent {..}) =
  ErasedTraceEvent $
    (baseEv AsyncStart (convertTs tsBase startTime) (AsyncEventMeta {id = evId}))
      { name = Just (truncatePathName executable),
        tid = Tid ppid,
        args =
          KM.fromList
            [ "executable" .= executable,
              "arguments" .= arguments
            ]
      }
toTracing tsBase ridToPpidMap (evId, Terminate TerminateEvent {..}) =
  let base = baseEv AsyncEnd (convertTs tsBase endTime) (AsyncEventMeta {id = evId})
   in ErasedTraceEvent $
        base {tid = pidAsTid . expectJust "should have seen proc start event" $ Map.lookup evId ridToPpidMap}

extractTime :: Event -> UTCTime
extractTime (Start StartEvent {startTime}) = startTime
extractTime (Terminate TerminateEvent {endTime}) = endTime

allToTracing :: V.Vector (Text, Event) -> V.Vector ErasedTraceEvent
allToTracing v =
  let firstTs = extractTime . snd $ V.head v
      go state (evId, ev) = do
        case ev of
          Start StartEvent {ppid} -> modifySTRef' state.ridToPpidMap (Map.insert evId (Pid ppid))
          _ -> pure ()
        ridToPpidMap <- readSTRef state.ridToPpidMap
        pure $ toTracing firstTs ridToPpidMap (evId, ev)
   in runST $ do
        ridToPpidMap <- newSTRef Map.empty
        let state = TraceState {ridToPpidMap}
        V.mapM (go state) v

main :: IO ()
main = do
  [file] <- getArgs
  fc <- BS.readFile file
  let evs = allToTracing $ proc fc
  BS.putStr $ A.encode (TraceData {traceEvents = evs, otherData = Map.empty})
