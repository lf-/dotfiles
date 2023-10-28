{- This file was auto-generated from protos/perfetto/common/trace_stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Common.TraceStats_Fields where
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
abiViolations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "abiViolations" a) =>
  Lens.Family2.LensLike' f s a
abiViolations = Data.ProtoLens.Field.field @"abiViolations"
bufferSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bufferSize" a) =>
  Lens.Family2.LensLike' f s a
bufferSize = Data.ProtoLens.Field.field @"bufferSize"
bufferStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bufferStats" a) =>
  Lens.Family2.LensLike' f s a
bufferStats = Data.ProtoLens.Field.field @"bufferStats"
bytesOverwritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesOverwritten" a) =>
  Lens.Family2.LensLike' f s a
bytesOverwritten = Data.ProtoLens.Field.field @"bytesOverwritten"
bytesRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesRead" a) =>
  Lens.Family2.LensLike' f s a
bytesRead = Data.ProtoLens.Field.field @"bytesRead"
bytesWritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bytesWritten" a) =>
  Lens.Family2.LensLike' f s a
bytesWritten = Data.ProtoLens.Field.field @"bytesWritten"
chunkPayloadHistogramCounts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunkPayloadHistogramCounts" a) =>
  Lens.Family2.LensLike' f s a
chunkPayloadHistogramCounts
  = Data.ProtoLens.Field.field @"chunkPayloadHistogramCounts"
chunkPayloadHistogramDef ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunkPayloadHistogramDef" a) =>
  Lens.Family2.LensLike' f s a
chunkPayloadHistogramDef
  = Data.ProtoLens.Field.field @"chunkPayloadHistogramDef"
chunkPayloadHistogramSum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunkPayloadHistogramSum" a) =>
  Lens.Family2.LensLike' f s a
chunkPayloadHistogramSum
  = Data.ProtoLens.Field.field @"chunkPayloadHistogramSum"
chunksCommittedOutOfOrder ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunksCommittedOutOfOrder" a) =>
  Lens.Family2.LensLike' f s a
chunksCommittedOutOfOrder
  = Data.ProtoLens.Field.field @"chunksCommittedOutOfOrder"
chunksDiscarded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunksDiscarded" a) =>
  Lens.Family2.LensLike' f s a
chunksDiscarded = Data.ProtoLens.Field.field @"chunksDiscarded"
chunksOverwritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunksOverwritten" a) =>
  Lens.Family2.LensLike' f s a
chunksOverwritten = Data.ProtoLens.Field.field @"chunksOverwritten"
chunksRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunksRead" a) =>
  Lens.Family2.LensLike' f s a
chunksRead = Data.ProtoLens.Field.field @"chunksRead"
chunksRewritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunksRewritten" a) =>
  Lens.Family2.LensLike' f s a
chunksRewritten = Data.ProtoLens.Field.field @"chunksRewritten"
chunksWritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chunksWritten" a) =>
  Lens.Family2.LensLike' f s a
chunksWritten = Data.ProtoLens.Field.field @"chunksWritten"
dataSourcesRegistered ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataSourcesRegistered" a) =>
  Lens.Family2.LensLike' f s a
dataSourcesRegistered
  = Data.ProtoLens.Field.field @"dataSourcesRegistered"
dataSourcesSeen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dataSourcesSeen" a) =>
  Lens.Family2.LensLike' f s a
dataSourcesSeen = Data.ProtoLens.Field.field @"dataSourcesSeen"
errors ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "errors" a) =>
  Lens.Family2.LensLike' f s a
errors = Data.ProtoLens.Field.field @"errors"
filterStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "filterStats" a) =>
  Lens.Family2.LensLike' f s a
filterStats = Data.ProtoLens.Field.field @"filterStats"
finalFlushOutcome ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "finalFlushOutcome" a) =>
  Lens.Family2.LensLike' f s a
finalFlushOutcome = Data.ProtoLens.Field.field @"finalFlushOutcome"
flushesFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "flushesFailed" a) =>
  Lens.Family2.LensLike' f s a
flushesFailed = Data.ProtoLens.Field.field @"flushesFailed"
flushesRequested ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "flushesRequested" a) =>
  Lens.Family2.LensLike' f s a
flushesRequested = Data.ProtoLens.Field.field @"flushesRequested"
flushesSucceeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "flushesSucceeded" a) =>
  Lens.Family2.LensLike' f s a
flushesSucceeded = Data.ProtoLens.Field.field @"flushesSucceeded"
inputBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inputBytes" a) =>
  Lens.Family2.LensLike' f s a
inputBytes = Data.ProtoLens.Field.field @"inputBytes"
inputPackets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inputPackets" a) =>
  Lens.Family2.LensLike' f s a
inputPackets = Data.ProtoLens.Field.field @"inputPackets"
invalidPackets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "invalidPackets" a) =>
  Lens.Family2.LensLike' f s a
invalidPackets = Data.ProtoLens.Field.field @"invalidPackets"
maybe'abiViolations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'abiViolations" a) =>
  Lens.Family2.LensLike' f s a
maybe'abiViolations
  = Data.ProtoLens.Field.field @"maybe'abiViolations"
maybe'bufferSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bufferSize" a) =>
  Lens.Family2.LensLike' f s a
maybe'bufferSize = Data.ProtoLens.Field.field @"maybe'bufferSize"
maybe'bytesOverwritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytesOverwritten" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytesOverwritten
  = Data.ProtoLens.Field.field @"maybe'bytesOverwritten"
maybe'bytesRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytesRead" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytesRead = Data.ProtoLens.Field.field @"maybe'bytesRead"
maybe'bytesWritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bytesWritten" a) =>
  Lens.Family2.LensLike' f s a
maybe'bytesWritten
  = Data.ProtoLens.Field.field @"maybe'bytesWritten"
maybe'chunksCommittedOutOfOrder ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chunksCommittedOutOfOrder" a) =>
  Lens.Family2.LensLike' f s a
maybe'chunksCommittedOutOfOrder
  = Data.ProtoLens.Field.field @"maybe'chunksCommittedOutOfOrder"
maybe'chunksDiscarded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chunksDiscarded" a) =>
  Lens.Family2.LensLike' f s a
maybe'chunksDiscarded
  = Data.ProtoLens.Field.field @"maybe'chunksDiscarded"
maybe'chunksOverwritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chunksOverwritten" a) =>
  Lens.Family2.LensLike' f s a
maybe'chunksOverwritten
  = Data.ProtoLens.Field.field @"maybe'chunksOverwritten"
maybe'chunksRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chunksRead" a) =>
  Lens.Family2.LensLike' f s a
maybe'chunksRead = Data.ProtoLens.Field.field @"maybe'chunksRead"
maybe'chunksRewritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chunksRewritten" a) =>
  Lens.Family2.LensLike' f s a
maybe'chunksRewritten
  = Data.ProtoLens.Field.field @"maybe'chunksRewritten"
maybe'chunksWritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chunksWritten" a) =>
  Lens.Family2.LensLike' f s a
maybe'chunksWritten
  = Data.ProtoLens.Field.field @"maybe'chunksWritten"
maybe'dataSourcesRegistered ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataSourcesRegistered" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataSourcesRegistered
  = Data.ProtoLens.Field.field @"maybe'dataSourcesRegistered"
maybe'dataSourcesSeen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dataSourcesSeen" a) =>
  Lens.Family2.LensLike' f s a
maybe'dataSourcesSeen
  = Data.ProtoLens.Field.field @"maybe'dataSourcesSeen"
maybe'errors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'errors" a) =>
  Lens.Family2.LensLike' f s a
maybe'errors = Data.ProtoLens.Field.field @"maybe'errors"
maybe'filterStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'filterStats" a) =>
  Lens.Family2.LensLike' f s a
maybe'filterStats = Data.ProtoLens.Field.field @"maybe'filterStats"
maybe'finalFlushOutcome ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'finalFlushOutcome" a) =>
  Lens.Family2.LensLike' f s a
maybe'finalFlushOutcome
  = Data.ProtoLens.Field.field @"maybe'finalFlushOutcome"
maybe'flushesFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flushesFailed" a) =>
  Lens.Family2.LensLike' f s a
maybe'flushesFailed
  = Data.ProtoLens.Field.field @"maybe'flushesFailed"
maybe'flushesRequested ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flushesRequested" a) =>
  Lens.Family2.LensLike' f s a
maybe'flushesRequested
  = Data.ProtoLens.Field.field @"maybe'flushesRequested"
maybe'flushesSucceeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flushesSucceeded" a) =>
  Lens.Family2.LensLike' f s a
maybe'flushesSucceeded
  = Data.ProtoLens.Field.field @"maybe'flushesSucceeded"
maybe'inputBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inputBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'inputBytes = Data.ProtoLens.Field.field @"maybe'inputBytes"
maybe'inputPackets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inputPackets" a) =>
  Lens.Family2.LensLike' f s a
maybe'inputPackets
  = Data.ProtoLens.Field.field @"maybe'inputPackets"
maybe'invalidPackets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'invalidPackets" a) =>
  Lens.Family2.LensLike' f s a
maybe'invalidPackets
  = Data.ProtoLens.Field.field @"maybe'invalidPackets"
maybe'outputBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'outputBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'outputBytes = Data.ProtoLens.Field.field @"maybe'outputBytes"
maybe'paddingBytesCleared ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'paddingBytesCleared" a) =>
  Lens.Family2.LensLike' f s a
maybe'paddingBytesCleared
  = Data.ProtoLens.Field.field @"maybe'paddingBytesCleared"
maybe'paddingBytesWritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'paddingBytesWritten" a) =>
  Lens.Family2.LensLike' f s a
maybe'paddingBytesWritten
  = Data.ProtoLens.Field.field @"maybe'paddingBytesWritten"
maybe'patchesDiscarded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'patchesDiscarded" a) =>
  Lens.Family2.LensLike' f s a
maybe'patchesDiscarded
  = Data.ProtoLens.Field.field @"maybe'patchesDiscarded"
maybe'patchesFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'patchesFailed" a) =>
  Lens.Family2.LensLike' f s a
maybe'patchesFailed
  = Data.ProtoLens.Field.field @"maybe'patchesFailed"
maybe'patchesSucceeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'patchesSucceeded" a) =>
  Lens.Family2.LensLike' f s a
maybe'patchesSucceeded
  = Data.ProtoLens.Field.field @"maybe'patchesSucceeded"
maybe'producersConnected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'producersConnected" a) =>
  Lens.Family2.LensLike' f s a
maybe'producersConnected
  = Data.ProtoLens.Field.field @"maybe'producersConnected"
maybe'producersSeen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'producersSeen" a) =>
  Lens.Family2.LensLike' f s a
maybe'producersSeen
  = Data.ProtoLens.Field.field @"maybe'producersSeen"
maybe'readaheadsFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'readaheadsFailed" a) =>
  Lens.Family2.LensLike' f s a
maybe'readaheadsFailed
  = Data.ProtoLens.Field.field @"maybe'readaheadsFailed"
maybe'readaheadsSucceeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'readaheadsSucceeded" a) =>
  Lens.Family2.LensLike' f s a
maybe'readaheadsSucceeded
  = Data.ProtoLens.Field.field @"maybe'readaheadsSucceeded"
maybe'sequenceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sequenceId" a) =>
  Lens.Family2.LensLike' f s a
maybe'sequenceId = Data.ProtoLens.Field.field @"maybe'sequenceId"
maybe'timeTakenNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timeTakenNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'timeTakenNs = Data.ProtoLens.Field.field @"maybe'timeTakenNs"
maybe'totalBuffers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'totalBuffers" a) =>
  Lens.Family2.LensLike' f s a
maybe'totalBuffers
  = Data.ProtoLens.Field.field @"maybe'totalBuffers"
maybe'traceWriterPacketLoss ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'traceWriterPacketLoss" a) =>
  Lens.Family2.LensLike' f s a
maybe'traceWriterPacketLoss
  = Data.ProtoLens.Field.field @"maybe'traceWriterPacketLoss"
maybe'tracingSessions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tracingSessions" a) =>
  Lens.Family2.LensLike' f s a
maybe'tracingSessions
  = Data.ProtoLens.Field.field @"maybe'tracingSessions"
maybe'writeWrapCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'writeWrapCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'writeWrapCount
  = Data.ProtoLens.Field.field @"maybe'writeWrapCount"
outputBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "outputBytes" a) =>
  Lens.Family2.LensLike' f s a
outputBytes = Data.ProtoLens.Field.field @"outputBytes"
paddingBytesCleared ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paddingBytesCleared" a) =>
  Lens.Family2.LensLike' f s a
paddingBytesCleared
  = Data.ProtoLens.Field.field @"paddingBytesCleared"
paddingBytesWritten ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "paddingBytesWritten" a) =>
  Lens.Family2.LensLike' f s a
paddingBytesWritten
  = Data.ProtoLens.Field.field @"paddingBytesWritten"
patchesDiscarded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "patchesDiscarded" a) =>
  Lens.Family2.LensLike' f s a
patchesDiscarded = Data.ProtoLens.Field.field @"patchesDiscarded"
patchesFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "patchesFailed" a) =>
  Lens.Family2.LensLike' f s a
patchesFailed = Data.ProtoLens.Field.field @"patchesFailed"
patchesSucceeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "patchesSucceeded" a) =>
  Lens.Family2.LensLike' f s a
patchesSucceeded = Data.ProtoLens.Field.field @"patchesSucceeded"
producersConnected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "producersConnected" a) =>
  Lens.Family2.LensLike' f s a
producersConnected
  = Data.ProtoLens.Field.field @"producersConnected"
producersSeen ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "producersSeen" a) =>
  Lens.Family2.LensLike' f s a
producersSeen = Data.ProtoLens.Field.field @"producersSeen"
readaheadsFailed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readaheadsFailed" a) =>
  Lens.Family2.LensLike' f s a
readaheadsFailed = Data.ProtoLens.Field.field @"readaheadsFailed"
readaheadsSucceeded ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readaheadsSucceeded" a) =>
  Lens.Family2.LensLike' f s a
readaheadsSucceeded
  = Data.ProtoLens.Field.field @"readaheadsSucceeded"
sequenceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sequenceId" a) =>
  Lens.Family2.LensLike' f s a
sequenceId = Data.ProtoLens.Field.field @"sequenceId"
timeTakenNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timeTakenNs" a) =>
  Lens.Family2.LensLike' f s a
timeTakenNs = Data.ProtoLens.Field.field @"timeTakenNs"
totalBuffers ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalBuffers" a) =>
  Lens.Family2.LensLike' f s a
totalBuffers = Data.ProtoLens.Field.field @"totalBuffers"
traceWriterPacketLoss ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traceWriterPacketLoss" a) =>
  Lens.Family2.LensLike' f s a
traceWriterPacketLoss
  = Data.ProtoLens.Field.field @"traceWriterPacketLoss"
tracingSessions ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tracingSessions" a) =>
  Lens.Family2.LensLike' f s a
tracingSessions = Data.ProtoLens.Field.field @"tracingSessions"
vec'bufferStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'bufferStats" a) =>
  Lens.Family2.LensLike' f s a
vec'bufferStats = Data.ProtoLens.Field.field @"vec'bufferStats"
vec'chunkPayloadHistogramCounts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'chunkPayloadHistogramCounts" a) =>
  Lens.Family2.LensLike' f s a
vec'chunkPayloadHistogramCounts
  = Data.ProtoLens.Field.field @"vec'chunkPayloadHistogramCounts"
vec'chunkPayloadHistogramDef ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'chunkPayloadHistogramDef" a) =>
  Lens.Family2.LensLike' f s a
vec'chunkPayloadHistogramDef
  = Data.ProtoLens.Field.field @"vec'chunkPayloadHistogramDef"
vec'chunkPayloadHistogramSum ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'chunkPayloadHistogramSum" a) =>
  Lens.Family2.LensLike' f s a
vec'chunkPayloadHistogramSum
  = Data.ProtoLens.Field.field @"vec'chunkPayloadHistogramSum"
vec'writerStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'writerStats" a) =>
  Lens.Family2.LensLike' f s a
vec'writerStats = Data.ProtoLens.Field.field @"vec'writerStats"
writeWrapCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "writeWrapCount" a) =>
  Lens.Family2.LensLike' f s a
writeWrapCount = Data.ProtoLens.Field.field @"writeWrapCount"
writerStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "writerStats" a) =>
  Lens.Family2.LensLike' f s a
writerStats = Data.ProtoLens.Field.field @"writerStats"