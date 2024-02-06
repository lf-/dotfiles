module HsUtils.Tracing.LogEvent where

import Import
import Data.Time (UTCTime)

data Timestamp =
  -- | Micros since boot
  TimestampMonotonic Word64
  -- | Realtime
  | TimestampRealtime UTCTime

newtype Pid = Pid Word32
  deriving newtype Num
  deriving stock Show

newtype Uid = Uid Word32
  -- sucks that we can add these, but haskell's class hierarchy is bad
  deriving newtype Num
  deriving stock Show

data LogEvent = LogEvent
  { timestamp :: Timestamp
  , pid :: Pid
  , uid :: Uid
  , textFields :: [(ByteString, ByteString)]
  }
