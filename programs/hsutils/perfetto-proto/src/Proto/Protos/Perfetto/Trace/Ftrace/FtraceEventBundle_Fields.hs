{- This file was auto-generated from protos/perfetto/trace/ftrace/ftrace_event_bundle.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields where
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
import qualified Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent
bootTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bootTimestamp" a) =>
  Lens.Family2.LensLike' f s a
bootTimestamp = Data.ProtoLens.Field.field @"bootTimestamp"
compactSched ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "compactSched" a) =>
  Lens.Family2.LensLike' f s a
compactSched = Data.ProtoLens.Field.field @"compactSched"
cpu ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpu" a) =>
  Lens.Family2.LensLike' f s a
cpu = Data.ProtoLens.Field.field @"cpu"
event ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "event" a) =>
  Lens.Family2.LensLike' f s a
event = Data.ProtoLens.Field.field @"event"
ftraceClock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ftraceClock" a) =>
  Lens.Family2.LensLike' f s a
ftraceClock = Data.ProtoLens.Field.field @"ftraceClock"
ftraceTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ftraceTimestamp" a) =>
  Lens.Family2.LensLike' f s a
ftraceTimestamp = Data.ProtoLens.Field.field @"ftraceTimestamp"
internTable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "internTable" a) =>
  Lens.Family2.LensLike' f s a
internTable = Data.ProtoLens.Field.field @"internTable"
lostEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lostEvents" a) =>
  Lens.Family2.LensLike' f s a
lostEvents = Data.ProtoLens.Field.field @"lostEvents"
maybe'bootTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bootTimestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'bootTimestamp
  = Data.ProtoLens.Field.field @"maybe'bootTimestamp"
maybe'compactSched ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'compactSched" a) =>
  Lens.Family2.LensLike' f s a
maybe'compactSched
  = Data.ProtoLens.Field.field @"maybe'compactSched"
maybe'cpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpu" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpu = Data.ProtoLens.Field.field @"maybe'cpu"
maybe'ftraceClock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ftraceClock" a) =>
  Lens.Family2.LensLike' f s a
maybe'ftraceClock = Data.ProtoLens.Field.field @"maybe'ftraceClock"
maybe'ftraceTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ftraceTimestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'ftraceTimestamp
  = Data.ProtoLens.Field.field @"maybe'ftraceTimestamp"
maybe'lostEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lostEvents" a) =>
  Lens.Family2.LensLike' f s a
maybe'lostEvents = Data.ProtoLens.Field.field @"maybe'lostEvents"
switchNextCommIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "switchNextCommIndex" a) =>
  Lens.Family2.LensLike' f s a
switchNextCommIndex
  = Data.ProtoLens.Field.field @"switchNextCommIndex"
switchNextPid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "switchNextPid" a) =>
  Lens.Family2.LensLike' f s a
switchNextPid = Data.ProtoLens.Field.field @"switchNextPid"
switchNextPrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "switchNextPrio" a) =>
  Lens.Family2.LensLike' f s a
switchNextPrio = Data.ProtoLens.Field.field @"switchNextPrio"
switchPrevState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "switchPrevState" a) =>
  Lens.Family2.LensLike' f s a
switchPrevState = Data.ProtoLens.Field.field @"switchPrevState"
switchTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "switchTimestamp" a) =>
  Lens.Family2.LensLike' f s a
switchTimestamp = Data.ProtoLens.Field.field @"switchTimestamp"
vec'event ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'event" a) =>
  Lens.Family2.LensLike' f s a
vec'event = Data.ProtoLens.Field.field @"vec'event"
vec'internTable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'internTable" a) =>
  Lens.Family2.LensLike' f s a
vec'internTable = Data.ProtoLens.Field.field @"vec'internTable"
vec'switchNextCommIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'switchNextCommIndex" a) =>
  Lens.Family2.LensLike' f s a
vec'switchNextCommIndex
  = Data.ProtoLens.Field.field @"vec'switchNextCommIndex"
vec'switchNextPid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'switchNextPid" a) =>
  Lens.Family2.LensLike' f s a
vec'switchNextPid = Data.ProtoLens.Field.field @"vec'switchNextPid"
vec'switchNextPrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'switchNextPrio" a) =>
  Lens.Family2.LensLike' f s a
vec'switchNextPrio
  = Data.ProtoLens.Field.field @"vec'switchNextPrio"
vec'switchPrevState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'switchPrevState" a) =>
  Lens.Family2.LensLike' f s a
vec'switchPrevState
  = Data.ProtoLens.Field.field @"vec'switchPrevState"
vec'switchTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'switchTimestamp" a) =>
  Lens.Family2.LensLike' f s a
vec'switchTimestamp
  = Data.ProtoLens.Field.field @"vec'switchTimestamp"
vec'wakingCommIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'wakingCommIndex" a) =>
  Lens.Family2.LensLike' f s a
vec'wakingCommIndex
  = Data.ProtoLens.Field.field @"vec'wakingCommIndex"
vec'wakingCommonFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'wakingCommonFlags" a) =>
  Lens.Family2.LensLike' f s a
vec'wakingCommonFlags
  = Data.ProtoLens.Field.field @"vec'wakingCommonFlags"
vec'wakingPid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'wakingPid" a) =>
  Lens.Family2.LensLike' f s a
vec'wakingPid = Data.ProtoLens.Field.field @"vec'wakingPid"
vec'wakingPrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'wakingPrio" a) =>
  Lens.Family2.LensLike' f s a
vec'wakingPrio = Data.ProtoLens.Field.field @"vec'wakingPrio"
vec'wakingTargetCpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'wakingTargetCpu" a) =>
  Lens.Family2.LensLike' f s a
vec'wakingTargetCpu
  = Data.ProtoLens.Field.field @"vec'wakingTargetCpu"
vec'wakingTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'wakingTimestamp" a) =>
  Lens.Family2.LensLike' f s a
vec'wakingTimestamp
  = Data.ProtoLens.Field.field @"vec'wakingTimestamp"
wakingCommIndex ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wakingCommIndex" a) =>
  Lens.Family2.LensLike' f s a
wakingCommIndex = Data.ProtoLens.Field.field @"wakingCommIndex"
wakingCommonFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wakingCommonFlags" a) =>
  Lens.Family2.LensLike' f s a
wakingCommonFlags = Data.ProtoLens.Field.field @"wakingCommonFlags"
wakingPid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wakingPid" a) =>
  Lens.Family2.LensLike' f s a
wakingPid = Data.ProtoLens.Field.field @"wakingPid"
wakingPrio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wakingPrio" a) =>
  Lens.Family2.LensLike' f s a
wakingPrio = Data.ProtoLens.Field.field @"wakingPrio"
wakingTargetCpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wakingTargetCpu" a) =>
  Lens.Family2.LensLike' f s a
wakingTargetCpu = Data.ProtoLens.Field.field @"wakingTargetCpu"
wakingTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wakingTimestamp" a) =>
  Lens.Family2.LensLike' f s a
wakingTimestamp = Data.ProtoLens.Field.field @"wakingTimestamp"