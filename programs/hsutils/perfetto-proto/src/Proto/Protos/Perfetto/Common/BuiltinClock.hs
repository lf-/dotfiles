{- This file was auto-generated from protos/perfetto/common/builtin_clock.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Common.BuiltinClock (
        BuiltinClock(..), BuiltinClock()
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
data BuiltinClock
  = BUILTIN_CLOCK_UNKNOWN |
    BUILTIN_CLOCK_REALTIME |
    BUILTIN_CLOCK_REALTIME_COARSE |
    BUILTIN_CLOCK_MONOTONIC |
    BUILTIN_CLOCK_MONOTONIC_COARSE |
    BUILTIN_CLOCK_MONOTONIC_RAW |
    BUILTIN_CLOCK_BOOTTIME |
    BUILTIN_CLOCK_MAX_ID
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum BuiltinClock where
  maybeToEnum 0 = Prelude.Just BUILTIN_CLOCK_UNKNOWN
  maybeToEnum 1 = Prelude.Just BUILTIN_CLOCK_REALTIME
  maybeToEnum 2 = Prelude.Just BUILTIN_CLOCK_REALTIME_COARSE
  maybeToEnum 3 = Prelude.Just BUILTIN_CLOCK_MONOTONIC
  maybeToEnum 4 = Prelude.Just BUILTIN_CLOCK_MONOTONIC_COARSE
  maybeToEnum 5 = Prelude.Just BUILTIN_CLOCK_MONOTONIC_RAW
  maybeToEnum 6 = Prelude.Just BUILTIN_CLOCK_BOOTTIME
  maybeToEnum 63 = Prelude.Just BUILTIN_CLOCK_MAX_ID
  maybeToEnum _ = Prelude.Nothing
  showEnum BUILTIN_CLOCK_UNKNOWN = "BUILTIN_CLOCK_UNKNOWN"
  showEnum BUILTIN_CLOCK_REALTIME = "BUILTIN_CLOCK_REALTIME"
  showEnum BUILTIN_CLOCK_REALTIME_COARSE
    = "BUILTIN_CLOCK_REALTIME_COARSE"
  showEnum BUILTIN_CLOCK_MONOTONIC = "BUILTIN_CLOCK_MONOTONIC"
  showEnum BUILTIN_CLOCK_MONOTONIC_COARSE
    = "BUILTIN_CLOCK_MONOTONIC_COARSE"
  showEnum BUILTIN_CLOCK_MONOTONIC_RAW
    = "BUILTIN_CLOCK_MONOTONIC_RAW"
  showEnum BUILTIN_CLOCK_BOOTTIME = "BUILTIN_CLOCK_BOOTTIME"
  showEnum BUILTIN_CLOCK_MAX_ID = "BUILTIN_CLOCK_MAX_ID"
  readEnum k
    | (Prelude.==) k "BUILTIN_CLOCK_UNKNOWN"
    = Prelude.Just BUILTIN_CLOCK_UNKNOWN
    | (Prelude.==) k "BUILTIN_CLOCK_REALTIME"
    = Prelude.Just BUILTIN_CLOCK_REALTIME
    | (Prelude.==) k "BUILTIN_CLOCK_REALTIME_COARSE"
    = Prelude.Just BUILTIN_CLOCK_REALTIME_COARSE
    | (Prelude.==) k "BUILTIN_CLOCK_MONOTONIC"
    = Prelude.Just BUILTIN_CLOCK_MONOTONIC
    | (Prelude.==) k "BUILTIN_CLOCK_MONOTONIC_COARSE"
    = Prelude.Just BUILTIN_CLOCK_MONOTONIC_COARSE
    | (Prelude.==) k "BUILTIN_CLOCK_MONOTONIC_RAW"
    = Prelude.Just BUILTIN_CLOCK_MONOTONIC_RAW
    | (Prelude.==) k "BUILTIN_CLOCK_BOOTTIME"
    = Prelude.Just BUILTIN_CLOCK_BOOTTIME
    | (Prelude.==) k "BUILTIN_CLOCK_MAX_ID"
    = Prelude.Just BUILTIN_CLOCK_MAX_ID
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded BuiltinClock where
  minBound = BUILTIN_CLOCK_UNKNOWN
  maxBound = BUILTIN_CLOCK_MAX_ID
instance Prelude.Enum BuiltinClock where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BuiltinClock: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum BUILTIN_CLOCK_UNKNOWN = 0
  fromEnum BUILTIN_CLOCK_REALTIME = 1
  fromEnum BUILTIN_CLOCK_REALTIME_COARSE = 2
  fromEnum BUILTIN_CLOCK_MONOTONIC = 3
  fromEnum BUILTIN_CLOCK_MONOTONIC_COARSE = 4
  fromEnum BUILTIN_CLOCK_MONOTONIC_RAW = 5
  fromEnum BUILTIN_CLOCK_BOOTTIME = 6
  fromEnum BUILTIN_CLOCK_MAX_ID = 63
  succ BUILTIN_CLOCK_MAX_ID
    = Prelude.error
        "BuiltinClock.succ: bad argument BUILTIN_CLOCK_MAX_ID. This value would be out of bounds."
  succ BUILTIN_CLOCK_UNKNOWN = BUILTIN_CLOCK_REALTIME
  succ BUILTIN_CLOCK_REALTIME = BUILTIN_CLOCK_REALTIME_COARSE
  succ BUILTIN_CLOCK_REALTIME_COARSE = BUILTIN_CLOCK_MONOTONIC
  succ BUILTIN_CLOCK_MONOTONIC = BUILTIN_CLOCK_MONOTONIC_COARSE
  succ BUILTIN_CLOCK_MONOTONIC_COARSE = BUILTIN_CLOCK_MONOTONIC_RAW
  succ BUILTIN_CLOCK_MONOTONIC_RAW = BUILTIN_CLOCK_BOOTTIME
  succ BUILTIN_CLOCK_BOOTTIME = BUILTIN_CLOCK_MAX_ID
  pred BUILTIN_CLOCK_UNKNOWN
    = Prelude.error
        "BuiltinClock.pred: bad argument BUILTIN_CLOCK_UNKNOWN. This value would be out of bounds."
  pred BUILTIN_CLOCK_REALTIME = BUILTIN_CLOCK_UNKNOWN
  pred BUILTIN_CLOCK_REALTIME_COARSE = BUILTIN_CLOCK_REALTIME
  pred BUILTIN_CLOCK_MONOTONIC = BUILTIN_CLOCK_REALTIME_COARSE
  pred BUILTIN_CLOCK_MONOTONIC_COARSE = BUILTIN_CLOCK_MONOTONIC
  pred BUILTIN_CLOCK_MONOTONIC_RAW = BUILTIN_CLOCK_MONOTONIC_COARSE
  pred BUILTIN_CLOCK_BOOTTIME = BUILTIN_CLOCK_MONOTONIC_RAW
  pred BUILTIN_CLOCK_MAX_ID = BUILTIN_CLOCK_BOOTTIME
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault BuiltinClock where
  fieldDefault = BUILTIN_CLOCK_UNKNOWN
instance Control.DeepSeq.NFData BuiltinClock where
  rnf x__ = Prelude.seq x__ ()