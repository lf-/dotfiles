{- This file was auto-generated from protos/perfetto/common/perf_events.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Common.PerfEvents_Fields where
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
config ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "config" a) =>
  Lens.Family2.LensLike' f s a
config = Data.ProtoLens.Field.field @"config"
config1 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "config1" a) =>
  Lens.Family2.LensLike' f s a
config1 = Data.ProtoLens.Field.field @"config1"
config2 ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "config2" a) =>
  Lens.Family2.LensLike' f s a
config2 = Data.ProtoLens.Field.field @"config2"
counter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "counter" a) =>
  Lens.Family2.LensLike' f s a
counter = Data.ProtoLens.Field.field @"counter"
filter ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "filter" a) =>
  Lens.Family2.LensLike' f s a
filter = Data.ProtoLens.Field.field @"filter"
frequency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "frequency" a) =>
  Lens.Family2.LensLike' f s a
frequency = Data.ProtoLens.Field.field @"frequency"
maybe'config ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'config" a) =>
  Lens.Family2.LensLike' f s a
maybe'config = Data.ProtoLens.Field.field @"maybe'config"
maybe'config1 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'config1" a) =>
  Lens.Family2.LensLike' f s a
maybe'config1 = Data.ProtoLens.Field.field @"maybe'config1"
maybe'config2 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'config2" a) =>
  Lens.Family2.LensLike' f s a
maybe'config2 = Data.ProtoLens.Field.field @"maybe'config2"
maybe'counter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'counter" a) =>
  Lens.Family2.LensLike' f s a
maybe'counter = Data.ProtoLens.Field.field @"maybe'counter"
maybe'event ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'event" a) =>
  Lens.Family2.LensLike' f s a
maybe'event = Data.ProtoLens.Field.field @"maybe'event"
maybe'filter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filter" a) =>
  Lens.Family2.LensLike' f s a
maybe'filter = Data.ProtoLens.Field.field @"maybe'filter"
maybe'frequency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'frequency" a) =>
  Lens.Family2.LensLike' f s a
maybe'frequency = Data.ProtoLens.Field.field @"maybe'frequency"
maybe'interval ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'interval" a) =>
  Lens.Family2.LensLike' f s a
maybe'interval = Data.ProtoLens.Field.field @"maybe'interval"
maybe'name ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'name" a) =>
  Lens.Family2.LensLike' f s a
maybe'name = Data.ProtoLens.Field.field @"maybe'name"
maybe'period ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'period" a) =>
  Lens.Family2.LensLike' f s a
maybe'period = Data.ProtoLens.Field.field @"maybe'period"
maybe'rawEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rawEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'rawEvent = Data.ProtoLens.Field.field @"maybe'rawEvent"
maybe'timestampClock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestampClock" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestampClock
  = Data.ProtoLens.Field.field @"maybe'timestampClock"
maybe'tracepoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tracepoint" a) =>
  Lens.Family2.LensLike' f s a
maybe'tracepoint = Data.ProtoLens.Field.field @"maybe'tracepoint"
maybe'type' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'type'" a) =>
  Lens.Family2.LensLike' f s a
maybe'type' = Data.ProtoLens.Field.field @"maybe'type'"
name ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
  Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
period ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "period" a) =>
  Lens.Family2.LensLike' f s a
period = Data.ProtoLens.Field.field @"period"
rawEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rawEvent" a) =>
  Lens.Family2.LensLike' f s a
rawEvent = Data.ProtoLens.Field.field @"rawEvent"
timestampClock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestampClock" a) =>
  Lens.Family2.LensLike' f s a
timestampClock = Data.ProtoLens.Field.field @"timestampClock"
tracepoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tracepoint" a) =>
  Lens.Family2.LensLike' f s a
tracepoint = Data.ProtoLens.Field.field @"tracepoint"
type' ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
  Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"