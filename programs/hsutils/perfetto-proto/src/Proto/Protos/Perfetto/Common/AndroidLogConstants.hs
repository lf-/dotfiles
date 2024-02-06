{- This file was auto-generated from protos/perfetto/common/android_log_constants.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Common.AndroidLogConstants (
        AndroidLogId(..), AndroidLogId(), AndroidLogPriority(..),
        AndroidLogPriority()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
data AndroidLogId
  = LID_DEFAULT |
    LID_RADIO |
    LID_EVENTS |
    LID_SYSTEM |
    LID_CRASH |
    LID_STATS |
    LID_SECURITY |
    LID_KERNEL
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum AndroidLogId where
  maybeToEnum 0 = Prelude.Just LID_DEFAULT
  maybeToEnum 1 = Prelude.Just LID_RADIO
  maybeToEnum 2 = Prelude.Just LID_EVENTS
  maybeToEnum 3 = Prelude.Just LID_SYSTEM
  maybeToEnum 4 = Prelude.Just LID_CRASH
  maybeToEnum 5 = Prelude.Just LID_STATS
  maybeToEnum 6 = Prelude.Just LID_SECURITY
  maybeToEnum 7 = Prelude.Just LID_KERNEL
  maybeToEnum _ = Prelude.Nothing
  showEnum LID_DEFAULT = "LID_DEFAULT"
  showEnum LID_RADIO = "LID_RADIO"
  showEnum LID_EVENTS = "LID_EVENTS"
  showEnum LID_SYSTEM = "LID_SYSTEM"
  showEnum LID_CRASH = "LID_CRASH"
  showEnum LID_STATS = "LID_STATS"
  showEnum LID_SECURITY = "LID_SECURITY"
  showEnum LID_KERNEL = "LID_KERNEL"
  readEnum k
    | (Prelude.==) k "LID_DEFAULT" = Prelude.Just LID_DEFAULT
    | (Prelude.==) k "LID_RADIO" = Prelude.Just LID_RADIO
    | (Prelude.==) k "LID_EVENTS" = Prelude.Just LID_EVENTS
    | (Prelude.==) k "LID_SYSTEM" = Prelude.Just LID_SYSTEM
    | (Prelude.==) k "LID_CRASH" = Prelude.Just LID_CRASH
    | (Prelude.==) k "LID_STATS" = Prelude.Just LID_STATS
    | (Prelude.==) k "LID_SECURITY" = Prelude.Just LID_SECURITY
    | (Prelude.==) k "LID_KERNEL" = Prelude.Just LID_KERNEL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded AndroidLogId where
  minBound = LID_DEFAULT
  maxBound = LID_KERNEL
instance Prelude.Enum AndroidLogId where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum AndroidLogId: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum LID_DEFAULT = 0
  fromEnum LID_RADIO = 1
  fromEnum LID_EVENTS = 2
  fromEnum LID_SYSTEM = 3
  fromEnum LID_CRASH = 4
  fromEnum LID_STATS = 5
  fromEnum LID_SECURITY = 6
  fromEnum LID_KERNEL = 7
  succ LID_KERNEL
    = Prelude.error
        "AndroidLogId.succ: bad argument LID_KERNEL. This value would be out of bounds."
  succ LID_DEFAULT = LID_RADIO
  succ LID_RADIO = LID_EVENTS
  succ LID_EVENTS = LID_SYSTEM
  succ LID_SYSTEM = LID_CRASH
  succ LID_CRASH = LID_STATS
  succ LID_STATS = LID_SECURITY
  succ LID_SECURITY = LID_KERNEL
  pred LID_DEFAULT
    = Prelude.error
        "AndroidLogId.pred: bad argument LID_DEFAULT. This value would be out of bounds."
  pred LID_RADIO = LID_DEFAULT
  pred LID_EVENTS = LID_RADIO
  pred LID_SYSTEM = LID_EVENTS
  pred LID_CRASH = LID_SYSTEM
  pred LID_STATS = LID_CRASH
  pred LID_SECURITY = LID_STATS
  pred LID_KERNEL = LID_SECURITY
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault AndroidLogId where
  fieldDefault = LID_DEFAULT
instance Control.DeepSeq.NFData AndroidLogId where
  rnf x__ = Prelude.seq x__ ()
data AndroidLogPriority
  = PRIO_UNSPECIFIED |
    PRIO_UNUSED |
    PRIO_VERBOSE |
    PRIO_DEBUG |
    PRIO_INFO |
    PRIO_WARN |
    PRIO_ERROR |
    PRIO_FATAL
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum AndroidLogPriority where
  maybeToEnum 0 = Prelude.Just PRIO_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just PRIO_UNUSED
  maybeToEnum 2 = Prelude.Just PRIO_VERBOSE
  maybeToEnum 3 = Prelude.Just PRIO_DEBUG
  maybeToEnum 4 = Prelude.Just PRIO_INFO
  maybeToEnum 5 = Prelude.Just PRIO_WARN
  maybeToEnum 6 = Prelude.Just PRIO_ERROR
  maybeToEnum 7 = Prelude.Just PRIO_FATAL
  maybeToEnum _ = Prelude.Nothing
  showEnum PRIO_UNSPECIFIED = "PRIO_UNSPECIFIED"
  showEnum PRIO_UNUSED = "PRIO_UNUSED"
  showEnum PRIO_VERBOSE = "PRIO_VERBOSE"
  showEnum PRIO_DEBUG = "PRIO_DEBUG"
  showEnum PRIO_INFO = "PRIO_INFO"
  showEnum PRIO_WARN = "PRIO_WARN"
  showEnum PRIO_ERROR = "PRIO_ERROR"
  showEnum PRIO_FATAL = "PRIO_FATAL"
  readEnum k
    | (Prelude.==) k "PRIO_UNSPECIFIED" = Prelude.Just PRIO_UNSPECIFIED
    | (Prelude.==) k "PRIO_UNUSED" = Prelude.Just PRIO_UNUSED
    | (Prelude.==) k "PRIO_VERBOSE" = Prelude.Just PRIO_VERBOSE
    | (Prelude.==) k "PRIO_DEBUG" = Prelude.Just PRIO_DEBUG
    | (Prelude.==) k "PRIO_INFO" = Prelude.Just PRIO_INFO
    | (Prelude.==) k "PRIO_WARN" = Prelude.Just PRIO_WARN
    | (Prelude.==) k "PRIO_ERROR" = Prelude.Just PRIO_ERROR
    | (Prelude.==) k "PRIO_FATAL" = Prelude.Just PRIO_FATAL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded AndroidLogPriority where
  minBound = PRIO_UNSPECIFIED
  maxBound = PRIO_FATAL
instance Prelude.Enum AndroidLogPriority where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum AndroidLogPriority: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PRIO_UNSPECIFIED = 0
  fromEnum PRIO_UNUSED = 1
  fromEnum PRIO_VERBOSE = 2
  fromEnum PRIO_DEBUG = 3
  fromEnum PRIO_INFO = 4
  fromEnum PRIO_WARN = 5
  fromEnum PRIO_ERROR = 6
  fromEnum PRIO_FATAL = 7
  succ PRIO_FATAL
    = Prelude.error
        "AndroidLogPriority.succ: bad argument PRIO_FATAL. This value would be out of bounds."
  succ PRIO_UNSPECIFIED = PRIO_UNUSED
  succ PRIO_UNUSED = PRIO_VERBOSE
  succ PRIO_VERBOSE = PRIO_DEBUG
  succ PRIO_DEBUG = PRIO_INFO
  succ PRIO_INFO = PRIO_WARN
  succ PRIO_WARN = PRIO_ERROR
  succ PRIO_ERROR = PRIO_FATAL
  pred PRIO_UNSPECIFIED
    = Prelude.error
        "AndroidLogPriority.pred: bad argument PRIO_UNSPECIFIED. This value would be out of bounds."
  pred PRIO_UNUSED = PRIO_UNSPECIFIED
  pred PRIO_VERBOSE = PRIO_UNUSED
  pred PRIO_DEBUG = PRIO_VERBOSE
  pred PRIO_INFO = PRIO_DEBUG
  pred PRIO_WARN = PRIO_INFO
  pred PRIO_ERROR = PRIO_WARN
  pred PRIO_FATAL = PRIO_ERROR
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault AndroidLogPriority where
  fieldDefault = PRIO_UNSPECIFIED
instance Control.DeepSeq.NFData AndroidLogPriority where
  rnf x__ = Prelude.seq x__ ()