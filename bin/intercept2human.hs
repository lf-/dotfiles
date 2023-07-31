#!/usr/bin/env cabal
{- cabal:
build-depends: aeson
             , vector
             , base
             , time
             , containers
             , text
             , bytestring
-}
{-# LANGUAGE GHC2021 #-}
{-# LANGUAGE BlockArguments #-}
{-# LANGUAGE DerivingStrategies #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- |
-- Script that processes @events.json@ from @intercept(1)@ (from the @bear@
-- package), and displays them nicely.
module Main where

import Data.Maybe (fromMaybe)
import Control.Monad (msum)
import Data.Aeson
import Data.Aeson.Types (parseEither)
import Data.ByteString.Lazy.Char8 qualified as BS
import GHC.Stack (HasCallStack)
import Data.Either (fromRight)
import Data.Fixed (showFixed)
import Data.Map.Strict qualified as Map
import Data.Text (Text)
import Data.Text qualified as T
import Data.Text.Encoding qualified as T
import Data.Time
import Data.Time.Format.ISO8601 (iso8601ParseM)
import Data.Vector (Vector)
import Data.Vector qualified as V
import System.Environment (getArgs)

data Event
  = Start !StartEvent
  | Terminate !TerminateEvent
  | StartAndTerminate !(StartEvent, TerminateEvent)
  deriving stock (Show)

instance Semigroup Event where
  Start s <> Terminate e = StartAndTerminate (s, e)
  Terminate e <> Start s = StartAndTerminate (s, e)
  l <> r = error $ "duplicate " <> show l <> show r

data StartEvent = StartEvent
  { executable :: Text
  , arguments :: Vector Text
  , startTime :: UTCTime
  , pid :: Int
  , ppid :: Int
  }
  deriving stock (Show)

data TerminateEvent = TerminateEvent
  {status :: Text, endTime :: UTCTime}
  deriving stock (Show)

procOne :: BS.ByteString -> Either String (Text, Event)
procOne d =
  eitherDecode @Value d
    >>= parseEither
      ( withObject "run" \o -> do
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
    parseTerminated endTime = withObject "terminated" \o -> do
      status <- o .: "status"
      pure $ Terminate TerminateEvent {..}
    parseStarted startTime = withObject "started" \o -> do
      exe <- o .: "execution"
      executable <- exe .: "executable"
      arguments <- exe .: "arguments"
      pid <- o .: "pid"
      ppid <- o .: "ppid"
      pure $ Start StartEvent {..}

throwLeft :: HasCallStack => Either String a -> a
throwLeft (Left a) = error a
throwLeft (Right v) = v

proc :: BS.ByteString -> Map.Map Text Event
proc d =
  let events = throwLeft $ mapM procOne (filter (not . BS.null) $ BS.lines d)
   in Map.fromListWith (<>) events

render ((time, rid), r) =
  case r of
    (StartAndTerminate (StartEvent {..}, TerminateEvent {..})) ->
      ( "\n"
          <> squareBrackets
            ( BS.pack (show status)
                `space` text rid
                `space` (time $ endTime `diffUTCTime` startTime)
                `space` ("pid=" <> (text . T.pack $ show pid))
                `space` ("ppid=" <> (text . T.pack $ show ppid))
            )
      )
        <> "\n> "
        <> text executable
        <> "\n  "
        <> text (T.intercalate "\n  " . V.toList $ V.drop 1 arguments)
    _ -> error "wtf" -- BS.pack $ show r
  where
    text = BS.fromStrict . T.encodeUtf8
    squareBrackets s = "[" <> s <> "]"
    space a b = a <> " " <> b
    millisecond = 0.001
    msec t = nominalDiffTimeToSeconds t / millisecond
    time t = BS.pack $ (showFixed True $ msec t) <> " ms"

main :: IO ()
main = do
  [file] <- getArgs
  f <- BS.readFile file
  let mapped = proc f
      mappedWithKeys = Map.foldlWithKey' rekey Map.empty mapped
  mapM_ (BS.putStrLn . render) $ Map.toList mappedWithKeys
  where
    rekey m k v = case v of
      StartAndTerminate (s, t) -> m <> Map.singleton (startTime s, k) v
      _ -> m
