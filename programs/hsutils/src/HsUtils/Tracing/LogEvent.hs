module HsUtils.Tracing.LogEvent where

import Data.Time (UTCTime)
import Import

-- \| Micros since boot
newtype TimestampMonotonic = TimestampMonotonic Word64

newtype Pid = Pid {unPid :: Word32}
  deriving newtype (Num)
  deriving stock (Show)

newtype Uid = Uid {unUid :: Word32}
  -- sucks that we can add these, but haskell's class hierarchy is bad
  deriving newtype (Num)
  deriving stock (Show)

levelCorrespondences :: [(Integer, LogEventLevel)]
levelCorrespondences =
  [ (0, Emerg)
  , (1, Alert)
  , (2, Crit)
  , (3, Err)
  , (4, Warn)
  , (5, Notice)
  , (6, Info)
  , (7, Debug)
  ]

levelFromInt :: Integer -> Maybe LogEventLevel
levelFromInt = flip lookup levelCorrespondences

data LogEventLevel
  = Emerg
  | Alert
  | Crit
  | Err
  | Warn
  | Notice
  | Info
  | Debug
  deriving stock (Show, Eq)

data EventKind = Kernel | User

data LogEvent = LogEvent
  { timestamp :: TimestampMonotonic
  , timestampRealtime :: UTCTime
  , kind :: EventKind
  , pid :: Pid
  , uid :: Uid
  , source :: Maybe ByteString
  , message :: ByteString
  , level :: LogEventLevel
  , textFields :: [(ByteString, ByteString)]
  }
