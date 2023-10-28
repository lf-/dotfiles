{- This file was auto-generated from protos/perfetto/trace/ftrace/ftrace_stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields where
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
atraceErrors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "atraceErrors" a) =>
  Lens.Family2.LensLike' f s a
atraceErrors = Data.ProtoLens.Field.field @"atraceErrors"
bytesRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesRead" a) =>
  Lens.Family2.LensLike' f s a
bytesRead = Data.ProtoLens.Field.field @"bytesRead"
commitOverrun ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commitOverrun" a) =>
  Lens.Family2.LensLike' f s a
commitOverrun = Data.ProtoLens.Field.field @"commitOverrun"
cpu ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpu" a) =>
  Lens.Family2.LensLike' f s a
cpu = Data.ProtoLens.Field.field @"cpu"
cpuStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpuStats" a) =>
  Lens.Family2.LensLike' f s a
cpuStats = Data.ProtoLens.Field.field @"cpuStats"
droppedEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "droppedEvents" a) =>
  Lens.Family2.LensLike' f s a
droppedEvents = Data.ProtoLens.Field.field @"droppedEvents"
entries ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "entries" a) =>
  Lens.Family2.LensLike' f s a
entries = Data.ProtoLens.Field.field @"entries"
failedFtraceEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "failedFtraceEvents" a) =>
  Lens.Family2.LensLike' f s a
failedFtraceEvents
  = Data.ProtoLens.Field.field @"failedFtraceEvents"
kernelSymbolsMemKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kernelSymbolsMemKb" a) =>
  Lens.Family2.LensLike' f s a
kernelSymbolsMemKb
  = Data.ProtoLens.Field.field @"kernelSymbolsMemKb"
kernelSymbolsParsed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kernelSymbolsParsed" a) =>
  Lens.Family2.LensLike' f s a
kernelSymbolsParsed
  = Data.ProtoLens.Field.field @"kernelSymbolsParsed"
maybe'atraceErrors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'atraceErrors" a) =>
  Lens.Family2.LensLike' f s a
maybe'atraceErrors
  = Data.ProtoLens.Field.field @"maybe'atraceErrors"
maybe'bytesRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytesRead" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytesRead = Data.ProtoLens.Field.field @"maybe'bytesRead"
maybe'commitOverrun ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commitOverrun" a) =>
  Lens.Family2.LensLike' f s a
maybe'commitOverrun
  = Data.ProtoLens.Field.field @"maybe'commitOverrun"
maybe'cpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpu" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpu = Data.ProtoLens.Field.field @"maybe'cpu"
maybe'droppedEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'droppedEvents" a) =>
  Lens.Family2.LensLike' f s a
maybe'droppedEvents
  = Data.ProtoLens.Field.field @"maybe'droppedEvents"
maybe'entries ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'entries" a) =>
  Lens.Family2.LensLike' f s a
maybe'entries = Data.ProtoLens.Field.field @"maybe'entries"
maybe'kernelSymbolsMemKb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kernelSymbolsMemKb" a) =>
  Lens.Family2.LensLike' f s a
maybe'kernelSymbolsMemKb
  = Data.ProtoLens.Field.field @"maybe'kernelSymbolsMemKb"
maybe'kernelSymbolsParsed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kernelSymbolsParsed" a) =>
  Lens.Family2.LensLike' f s a
maybe'kernelSymbolsParsed
  = Data.ProtoLens.Field.field @"maybe'kernelSymbolsParsed"
maybe'nowTs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'nowTs" a) =>
  Lens.Family2.LensLike' f s a
maybe'nowTs = Data.ProtoLens.Field.field @"maybe'nowTs"
maybe'oldestEventTs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oldestEventTs" a) =>
  Lens.Family2.LensLike' f s a
maybe'oldestEventTs
  = Data.ProtoLens.Field.field @"maybe'oldestEventTs"
maybe'overrun ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'overrun" a) =>
  Lens.Family2.LensLike' f s a
maybe'overrun = Data.ProtoLens.Field.field @"maybe'overrun"
maybe'phase ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'phase" a) =>
  Lens.Family2.LensLike' f s a
maybe'phase = Data.ProtoLens.Field.field @"maybe'phase"
maybe'preserveFtraceBuffer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'preserveFtraceBuffer" a) =>
  Lens.Family2.LensLike' f s a
maybe'preserveFtraceBuffer
  = Data.ProtoLens.Field.field @"maybe'preserveFtraceBuffer"
maybe'readEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'readEvents" a) =>
  Lens.Family2.LensLike' f s a
maybe'readEvents = Data.ProtoLens.Field.field @"maybe'readEvents"
nowTs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "nowTs" a) =>
  Lens.Family2.LensLike' f s a
nowTs = Data.ProtoLens.Field.field @"nowTs"
oldestEventTs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "oldestEventTs" a) =>
  Lens.Family2.LensLike' f s a
oldestEventTs = Data.ProtoLens.Field.field @"oldestEventTs"
overrun ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "overrun" a) =>
  Lens.Family2.LensLike' f s a
overrun = Data.ProtoLens.Field.field @"overrun"
phase ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "phase" a) =>
  Lens.Family2.LensLike' f s a
phase = Data.ProtoLens.Field.field @"phase"
preserveFtraceBuffer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "preserveFtraceBuffer" a) =>
  Lens.Family2.LensLike' f s a
preserveFtraceBuffer
  = Data.ProtoLens.Field.field @"preserveFtraceBuffer"
readEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readEvents" a) =>
  Lens.Family2.LensLike' f s a
readEvents = Data.ProtoLens.Field.field @"readEvents"
unknownFtraceEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unknownFtraceEvents" a) =>
  Lens.Family2.LensLike' f s a
unknownFtraceEvents
  = Data.ProtoLens.Field.field @"unknownFtraceEvents"
vec'cpuStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'cpuStats" a) =>
  Lens.Family2.LensLike' f s a
vec'cpuStats = Data.ProtoLens.Field.field @"vec'cpuStats"
vec'failedFtraceEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'failedFtraceEvents" a) =>
  Lens.Family2.LensLike' f s a
vec'failedFtraceEvents
  = Data.ProtoLens.Field.field @"vec'failedFtraceEvents"
vec'unknownFtraceEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'unknownFtraceEvents" a) =>
  Lens.Family2.LensLike' f s a
vec'unknownFtraceEvents
  = Data.ProtoLens.Field.field @"vec'unknownFtraceEvents"