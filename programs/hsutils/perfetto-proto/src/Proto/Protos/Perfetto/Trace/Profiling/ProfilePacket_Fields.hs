{- This file was auto-generated from protos/perfetto/trace/profiling/profile_packet.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields where
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
import qualified Proto.Protos.Perfetto.Common.PerfEvents
import qualified Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon
address ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "address" a) =>
  Lens.Family2.LensLike' f s a
address = Data.ProtoLens.Field.field @"address"
allocCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocCount" a) =>
  Lens.Family2.LensLike' f s a
allocCount = Data.ProtoLens.Field.field @"allocCount"
buckets ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "buckets" a) =>
  Lens.Family2.LensLike' f s a
buckets = Data.ProtoLens.Field.field @"buckets"
bufferCorrupted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bufferCorrupted" a) =>
  Lens.Family2.LensLike' f s a
bufferCorrupted = Data.ProtoLens.Field.field @"bufferCorrupted"
bufferOverran ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "bufferOverran" a) =>
  Lens.Family2.LensLike' f s a
bufferOverran = Data.ProtoLens.Field.field @"bufferOverran"
callstackId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "callstackId" a) =>
  Lens.Family2.LensLike' f s a
callstackId = Data.ProtoLens.Field.field @"callstackId"
callstackIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "callstackIid" a) =>
  Lens.Family2.LensLike' f s a
callstackIid = Data.ProtoLens.Field.field @"callstackIid"
callstacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "callstacks" a) =>
  Lens.Family2.LensLike' f s a
callstacks = Data.ProtoLens.Field.field @"callstacks"
chosenProcessShard ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "chosenProcessShard" a) =>
  Lens.Family2.LensLike' f s a
chosenProcessShard
  = Data.ProtoLens.Field.field @"chosenProcessShard"
clientError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientError" a) =>
  Lens.Family2.LensLike' f s a
clientError = Data.ProtoLens.Field.field @"clientError"
clientSpinlockBlockedUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clientSpinlockBlockedUs" a) =>
  Lens.Family2.LensLike' f s a
clientSpinlockBlockedUs
  = Data.ProtoLens.Field.field @"clientSpinlockBlockedUs"
clockMonotonicCoarseTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clockMonotonicCoarseTimestamp" a) =>
  Lens.Family2.LensLike' f s a
clockMonotonicCoarseTimestamp
  = Data.ProtoLens.Field.field @"clockMonotonicCoarseTimestamp"
continued ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "continued" a) =>
  Lens.Family2.LensLike' f s a
continued = Data.ProtoLens.Field.field @"continued"
count ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "count" a) =>
  Lens.Family2.LensLike' f s a
count = Data.ProtoLens.Field.field @"count"
cpu ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpu" a) =>
  Lens.Family2.LensLike' f s a
cpu = Data.ProtoLens.Field.field @"cpu"
cpuMode ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpuMode" a) =>
  Lens.Family2.LensLike' f s a
cpuMode = Data.ProtoLens.Field.field @"cpuMode"
disconnected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "disconnected" a) =>
  Lens.Family2.LensLike' f s a
disconnected = Data.ProtoLens.Field.field @"disconnected"
frames ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "frames" a) =>
  Lens.Family2.LensLike' f s a
frames = Data.ProtoLens.Field.field @"frames"
freeCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "freeCount" a) =>
  Lens.Family2.LensLike' f s a
freeCount = Data.ProtoLens.Field.field @"freeCount"
fromStartup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fromStartup" a) =>
  Lens.Family2.LensLike' f s a
fromStartup = Data.ProtoLens.Field.field @"fromStartup"
heapId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "heapId" a) =>
  Lens.Family2.LensLike' f s a
heapId = Data.ProtoLens.Field.field @"heapId"
heapName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heapName" a) =>
  Lens.Family2.LensLike' f s a
heapName = Data.ProtoLens.Field.field @"heapName"
heapSamples ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "heapSamples" a) =>
  Lens.Family2.LensLike' f s a
heapSamples = Data.ProtoLens.Field.field @"heapSamples"
hitGuardrail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hitGuardrail" a) =>
  Lens.Family2.LensLike' f s a
hitGuardrail = Data.ProtoLens.Field.field @"hitGuardrail"
index ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "index" a) =>
  Lens.Family2.LensLike' f s a
index = Data.ProtoLens.Field.field @"index"
kernelRecordsLost ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kernelRecordsLost" a) =>
  Lens.Family2.LensLike' f s a
kernelRecordsLost = Data.ProtoLens.Field.field @"kernelRecordsLost"
mapReparses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mapReparses" a) =>
  Lens.Family2.LensLike' f s a
mapReparses = Data.ProtoLens.Field.field @"mapReparses"
mappings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mappings" a) =>
  Lens.Family2.LensLike' f s a
mappings = Data.ProtoLens.Field.field @"mappings"
maxBucket ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maxBucket" a) =>
  Lens.Family2.LensLike' f s a
maxBucket = Data.ProtoLens.Field.field @"maxBucket"
maybe'allocCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocCount = Data.ProtoLens.Field.field @"maybe'allocCount"
maybe'bufferCorrupted ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bufferCorrupted" a) =>
  Lens.Family2.LensLike' f s a
maybe'bufferCorrupted
  = Data.ProtoLens.Field.field @"maybe'bufferCorrupted"
maybe'bufferOverran ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'bufferOverran" a) =>
  Lens.Family2.LensLike' f s a
maybe'bufferOverran
  = Data.ProtoLens.Field.field @"maybe'bufferOverran"
maybe'callstackId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'callstackId" a) =>
  Lens.Family2.LensLike' f s a
maybe'callstackId = Data.ProtoLens.Field.field @"maybe'callstackId"
maybe'callstackIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'callstackIid" a) =>
  Lens.Family2.LensLike' f s a
maybe'callstackIid
  = Data.ProtoLens.Field.field @"maybe'callstackIid"
maybe'chosenProcessShard ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'chosenProcessShard" a) =>
  Lens.Family2.LensLike' f s a
maybe'chosenProcessShard
  = Data.ProtoLens.Field.field @"maybe'chosenProcessShard"
maybe'clientError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clientError" a) =>
  Lens.Family2.LensLike' f s a
maybe'clientError = Data.ProtoLens.Field.field @"maybe'clientError"
maybe'clientSpinlockBlockedUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clientSpinlockBlockedUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'clientSpinlockBlockedUs
  = Data.ProtoLens.Field.field @"maybe'clientSpinlockBlockedUs"
maybe'continued ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'continued" a) =>
  Lens.Family2.LensLike' f s a
maybe'continued = Data.ProtoLens.Field.field @"maybe'continued"
maybe'count ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'count" a) =>
  Lens.Family2.LensLike' f s a
maybe'count = Data.ProtoLens.Field.field @"maybe'count"
maybe'cpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpu" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpu = Data.ProtoLens.Field.field @"maybe'cpu"
maybe'cpuMode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuMode" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuMode = Data.ProtoLens.Field.field @"maybe'cpuMode"
maybe'disconnected ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'disconnected" a) =>
  Lens.Family2.LensLike' f s a
maybe'disconnected
  = Data.ProtoLens.Field.field @"maybe'disconnected"
maybe'freeCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'freeCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'freeCount = Data.ProtoLens.Field.field @"maybe'freeCount"
maybe'fromStartup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fromStartup" a) =>
  Lens.Family2.LensLike' f s a
maybe'fromStartup = Data.ProtoLens.Field.field @"maybe'fromStartup"
maybe'heapName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'heapName" a) =>
  Lens.Family2.LensLike' f s a
maybe'heapName = Data.ProtoLens.Field.field @"maybe'heapName"
maybe'heapSamples ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'heapSamples" a) =>
  Lens.Family2.LensLike' f s a
maybe'heapSamples = Data.ProtoLens.Field.field @"maybe'heapSamples"
maybe'hitGuardrail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hitGuardrail" a) =>
  Lens.Family2.LensLike' f s a
maybe'hitGuardrail
  = Data.ProtoLens.Field.field @"maybe'hitGuardrail"
maybe'index ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'index" a) =>
  Lens.Family2.LensLike' f s a
maybe'index = Data.ProtoLens.Field.field @"maybe'index"
maybe'kernelRecordsLost ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kernelRecordsLost" a) =>
  Lens.Family2.LensLike' f s a
maybe'kernelRecordsLost
  = Data.ProtoLens.Field.field @"maybe'kernelRecordsLost"
maybe'mapReparses ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mapReparses" a) =>
  Lens.Family2.LensLike' f s a
maybe'mapReparses = Data.ProtoLens.Field.field @"maybe'mapReparses"
maybe'maxBucket ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maxBucket" a) =>
  Lens.Family2.LensLike' f s a
maybe'maxBucket = Data.ProtoLens.Field.field @"maybe'maxBucket"
maybe'optionalSampleSkippedReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'optionalSampleSkippedReason" a) =>
  Lens.Family2.LensLike' f s a
maybe'optionalSampleSkippedReason
  = Data.ProtoLens.Field.field @"maybe'optionalSampleSkippedReason"
maybe'optionalSourceStopReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'optionalSourceStopReason" a) =>
  Lens.Family2.LensLike' f s a
maybe'optionalSourceStopReason
  = Data.ProtoLens.Field.field @"maybe'optionalSourceStopReason"
maybe'optionalUnwindError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'optionalUnwindError" a) =>
  Lens.Family2.LensLike' f s a
maybe'optionalUnwindError
  = Data.ProtoLens.Field.field @"maybe'optionalUnwindError"
maybe'origSamplingIntervalBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'origSamplingIntervalBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'origSamplingIntervalBytes
  = Data.ProtoLens.Field.field @"maybe'origSamplingIntervalBytes"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'processPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'processPriority" a) =>
  Lens.Family2.LensLike' f s a
maybe'processPriority
  = Data.ProtoLens.Field.field @"maybe'processPriority"
maybe'processShardCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'processShardCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'processShardCount
  = Data.ProtoLens.Field.field @"maybe'processShardCount"
maybe'producerEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'producerEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'producerEvent
  = Data.ProtoLens.Field.field @"maybe'producerEvent"
maybe'rejectedConcurrent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rejectedConcurrent" a) =>
  Lens.Family2.LensLike' f s a
maybe'rejectedConcurrent
  = Data.ProtoLens.Field.field @"maybe'rejectedConcurrent"
maybe'sampleSkippedReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sampleSkippedReason" a) =>
  Lens.Family2.LensLike' f s a
maybe'sampleSkippedReason
  = Data.ProtoLens.Field.field @"maybe'sampleSkippedReason"
maybe'samplingIntervalBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'samplingIntervalBytes" a) =>
  Lens.Family2.LensLike' f s a
maybe'samplingIntervalBytes
  = Data.ProtoLens.Field.field @"maybe'samplingIntervalBytes"
maybe'selfAllocated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'selfAllocated" a) =>
  Lens.Family2.LensLike' f s a
maybe'selfAllocated
  = Data.ProtoLens.Field.field @"maybe'selfAllocated"
maybe'selfFreed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'selfFreed" a) =>
  Lens.Family2.LensLike' f s a
maybe'selfFreed = Data.ProtoLens.Field.field @"maybe'selfFreed"
maybe'selfMax ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'selfMax" a) =>
  Lens.Family2.LensLike' f s a
maybe'selfMax = Data.ProtoLens.Field.field @"maybe'selfMax"
maybe'selfMaxCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'selfMaxCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'selfMaxCount
  = Data.ProtoLens.Field.field @"maybe'selfMaxCount"
maybe'sourceStopReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sourceStopReason" a) =>
  Lens.Family2.LensLike' f s a
maybe'sourceStopReason
  = Data.ProtoLens.Field.field @"maybe'sourceStopReason"
maybe'stats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'stats" a) =>
  Lens.Family2.LensLike' f s a
maybe'stats = Data.ProtoLens.Field.field @"maybe'stats"
maybe'tid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tid" a) =>
  Lens.Family2.LensLike' f s a
maybe'tid = Data.ProtoLens.Field.field @"maybe'tid"
maybe'timebase ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timebase" a) =>
  Lens.Family2.LensLike' f s a
maybe'timebase = Data.ProtoLens.Field.field @"maybe'timebase"
maybe'timebaseCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timebaseCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'timebaseCount
  = Data.ProtoLens.Field.field @"maybe'timebaseCount"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'totalUnwindingTimeUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'totalUnwindingTimeUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'totalUnwindingTimeUs
  = Data.ProtoLens.Field.field @"maybe'totalUnwindingTimeUs"
maybe'unwindError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unwindError" a) =>
  Lens.Family2.LensLike' f s a
maybe'unwindError = Data.ProtoLens.Field.field @"maybe'unwindError"
maybe'unwindingErrors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unwindingErrors" a) =>
  Lens.Family2.LensLike' f s a
maybe'unwindingErrors
  = Data.ProtoLens.Field.field @"maybe'unwindingErrors"
maybe'unwindingTimeUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'unwindingTimeUs" a) =>
  Lens.Family2.LensLike' f s a
maybe'unwindingTimeUs
  = Data.ProtoLens.Field.field @"maybe'unwindingTimeUs"
maybe'upperLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'upperLimit" a) =>
  Lens.Family2.LensLike' f s a
maybe'upperLimit = Data.ProtoLens.Field.field @"maybe'upperLimit"
origSamplingIntervalBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "origSamplingIntervalBytes" a) =>
  Lens.Family2.LensLike' f s a
origSamplingIntervalBytes
  = Data.ProtoLens.Field.field @"origSamplingIntervalBytes"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
processDumps ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processDumps" a) =>
  Lens.Family2.LensLike' f s a
processDumps = Data.ProtoLens.Field.field @"processDumps"
processPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processPriority" a) =>
  Lens.Family2.LensLike' f s a
processPriority = Data.ProtoLens.Field.field @"processPriority"
processShardCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processShardCount" a) =>
  Lens.Family2.LensLike' f s a
processShardCount = Data.ProtoLens.Field.field @"processShardCount"
producerEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "producerEvent" a) =>
  Lens.Family2.LensLike' f s a
producerEvent = Data.ProtoLens.Field.field @"producerEvent"
rejectedConcurrent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rejectedConcurrent" a) =>
  Lens.Family2.LensLike' f s a
rejectedConcurrent
  = Data.ProtoLens.Field.field @"rejectedConcurrent"
sampleSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sampleSize" a) =>
  Lens.Family2.LensLike' f s a
sampleSize = Data.ProtoLens.Field.field @"sampleSize"
sampleSkippedReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sampleSkippedReason" a) =>
  Lens.Family2.LensLike' f s a
sampleSkippedReason
  = Data.ProtoLens.Field.field @"sampleSkippedReason"
samples ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "samples" a) =>
  Lens.Family2.LensLike' f s a
samples = Data.ProtoLens.Field.field @"samples"
samplingIntervalBytes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "samplingIntervalBytes" a) =>
  Lens.Family2.LensLike' f s a
samplingIntervalBytes
  = Data.ProtoLens.Field.field @"samplingIntervalBytes"
selfAllocated ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "selfAllocated" a) =>
  Lens.Family2.LensLike' f s a
selfAllocated = Data.ProtoLens.Field.field @"selfAllocated"
selfFreed ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "selfFreed" a) =>
  Lens.Family2.LensLike' f s a
selfFreed = Data.ProtoLens.Field.field @"selfFreed"
selfMax ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "selfMax" a) =>
  Lens.Family2.LensLike' f s a
selfMax = Data.ProtoLens.Field.field @"selfMax"
selfMaxCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "selfMaxCount" a) =>
  Lens.Family2.LensLike' f s a
selfMaxCount = Data.ProtoLens.Field.field @"selfMaxCount"
sequenceNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sequenceNumber" a) =>
  Lens.Family2.LensLike' f s a
sequenceNumber = Data.ProtoLens.Field.field @"sequenceNumber"
size ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "size" a) =>
  Lens.Family2.LensLike' f s a
size = Data.ProtoLens.Field.field @"size"
sourceStopReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sourceStopReason" a) =>
  Lens.Family2.LensLike' f s a
sourceStopReason = Data.ProtoLens.Field.field @"sourceStopReason"
stats ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stats" a) =>
  Lens.Family2.LensLike' f s a
stats = Data.ProtoLens.Field.field @"stats"
strings ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "strings" a) =>
  Lens.Family2.LensLike' f s a
strings = Data.ProtoLens.Field.field @"strings"
tid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "tid" a) =>
  Lens.Family2.LensLike' f s a
tid = Data.ProtoLens.Field.field @"tid"
timebase ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timebase" a) =>
  Lens.Family2.LensLike' f s a
timebase = Data.ProtoLens.Field.field @"timebase"
timebaseCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timebaseCount" a) =>
  Lens.Family2.LensLike' f s a
timebaseCount = Data.ProtoLens.Field.field @"timebaseCount"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
timestampDeltaUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestampDeltaUs" a) =>
  Lens.Family2.LensLike' f s a
timestampDeltaUs = Data.ProtoLens.Field.field @"timestampDeltaUs"
totalUnwindingTimeUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "totalUnwindingTimeUs" a) =>
  Lens.Family2.LensLike' f s a
totalUnwindingTimeUs
  = Data.ProtoLens.Field.field @"totalUnwindingTimeUs"
unwindError ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unwindError" a) =>
  Lens.Family2.LensLike' f s a
unwindError = Data.ProtoLens.Field.field @"unwindError"
unwindingErrors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unwindingErrors" a) =>
  Lens.Family2.LensLike' f s a
unwindingErrors = Data.ProtoLens.Field.field @"unwindingErrors"
unwindingTimeUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "unwindingTimeUs" a) =>
  Lens.Family2.LensLike' f s a
unwindingTimeUs = Data.ProtoLens.Field.field @"unwindingTimeUs"
upperLimit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "upperLimit" a) =>
  Lens.Family2.LensLike' f s a
upperLimit = Data.ProtoLens.Field.field @"upperLimit"
vec'address ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'address" a) =>
  Lens.Family2.LensLike' f s a
vec'address = Data.ProtoLens.Field.field @"vec'address"
vec'buckets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'buckets" a) =>
  Lens.Family2.LensLike' f s a
vec'buckets = Data.ProtoLens.Field.field @"vec'buckets"
vec'callstackIid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'callstackIid" a) =>
  Lens.Family2.LensLike' f s a
vec'callstackIid = Data.ProtoLens.Field.field @"vec'callstackIid"
vec'callstacks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'callstacks" a) =>
  Lens.Family2.LensLike' f s a
vec'callstacks = Data.ProtoLens.Field.field @"vec'callstacks"
vec'clockMonotonicCoarseTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'clockMonotonicCoarseTimestamp" a) =>
  Lens.Family2.LensLike' f s a
vec'clockMonotonicCoarseTimestamp
  = Data.ProtoLens.Field.field @"vec'clockMonotonicCoarseTimestamp"
vec'frames ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'frames" a) =>
  Lens.Family2.LensLike' f s a
vec'frames = Data.ProtoLens.Field.field @"vec'frames"
vec'heapId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'heapId" a) =>
  Lens.Family2.LensLike' f s a
vec'heapId = Data.ProtoLens.Field.field @"vec'heapId"
vec'mappings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'mappings" a) =>
  Lens.Family2.LensLike' f s a
vec'mappings = Data.ProtoLens.Field.field @"vec'mappings"
vec'processDumps ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'processDumps" a) =>
  Lens.Family2.LensLike' f s a
vec'processDumps = Data.ProtoLens.Field.field @"vec'processDumps"
vec'sampleSize ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'sampleSize" a) =>
  Lens.Family2.LensLike' f s a
vec'sampleSize = Data.ProtoLens.Field.field @"vec'sampleSize"
vec'samples ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'samples" a) =>
  Lens.Family2.LensLike' f s a
vec'samples = Data.ProtoLens.Field.field @"vec'samples"
vec'sequenceNumber ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'sequenceNumber" a) =>
  Lens.Family2.LensLike' f s a
vec'sequenceNumber
  = Data.ProtoLens.Field.field @"vec'sequenceNumber"
vec'size ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'size" a) =>
  Lens.Family2.LensLike' f s a
vec'size = Data.ProtoLens.Field.field @"vec'size"
vec'strings ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'strings" a) =>
  Lens.Family2.LensLike' f s a
vec'strings = Data.ProtoLens.Field.field @"vec'strings"
vec'timestampDeltaUs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'timestampDeltaUs" a) =>
  Lens.Family2.LensLike' f s a
vec'timestampDeltaUs
  = Data.ProtoLens.Field.field @"vec'timestampDeltaUs"