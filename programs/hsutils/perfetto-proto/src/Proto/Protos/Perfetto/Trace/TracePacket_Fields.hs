{- This file was auto-generated from protos/perfetto/trace/trace_packet.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TracePacket_Fields where
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
import qualified Proto.Protos.Perfetto.Common.TraceStats
import qualified Proto.Protos.Perfetto.Trace.ClockSnapshot
import qualified Proto.Protos.Perfetto.Trace.ExtensionDescriptor
import qualified Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap
import qualified Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle
import qualified Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats
import qualified Proto.Protos.Perfetto.Trace.InternedData.InternedData
import qualified Proto.Protos.Perfetto.Trace.Ps.ProcessStats
import qualified Proto.Protos.Perfetto.Trace.Ps.ProcessTree
import qualified Proto.Protos.Perfetto.Trace.SysStats.SysStats
import qualified Proto.Protos.Perfetto.Trace.TestEvent
import qualified Proto.Protos.Perfetto.Trace.TracePacketDefaults
import qualified Proto.Protos.Perfetto.Trace.TraceUuid
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent
clockSnapshot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clockSnapshot" a) =>
  Lens.Family2.LensLike' f s a
clockSnapshot = Data.ProtoLens.Field.field @"clockSnapshot"
compressedPackets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "compressedPackets" a) =>
  Lens.Family2.LensLike' f s a
compressedPackets = Data.ProtoLens.Field.field @"compressedPackets"
extensionDescriptor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "extensionDescriptor" a) =>
  Lens.Family2.LensLike' f s a
extensionDescriptor
  = Data.ProtoLens.Field.field @"extensionDescriptor"
firstPacketOnSequence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "firstPacketOnSequence" a) =>
  Lens.Family2.LensLike' f s a
firstPacketOnSequence
  = Data.ProtoLens.Field.field @"firstPacketOnSequence"
forTesting ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "forTesting" a) =>
  Lens.Family2.LensLike' f s a
forTesting = Data.ProtoLens.Field.field @"forTesting"
ftraceEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ftraceEvents" a) =>
  Lens.Family2.LensLike' f s a
ftraceEvents = Data.ProtoLens.Field.field @"ftraceEvents"
ftraceStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ftraceStats" a) =>
  Lens.Family2.LensLike' f s a
ftraceStats = Data.ProtoLens.Field.field @"ftraceStats"
incrementalStateCleared ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "incrementalStateCleared" a) =>
  Lens.Family2.LensLike' f s a
incrementalStateCleared
  = Data.ProtoLens.Field.field @"incrementalStateCleared"
inodeFileMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inodeFileMap" a) =>
  Lens.Family2.LensLike' f s a
inodeFileMap = Data.ProtoLens.Field.field @"inodeFileMap"
internedData ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "internedData" a) =>
  Lens.Family2.LensLike' f s a
internedData = Data.ProtoLens.Field.field @"internedData"
maybe'clockSnapshot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clockSnapshot" a) =>
  Lens.Family2.LensLike' f s a
maybe'clockSnapshot
  = Data.ProtoLens.Field.field @"maybe'clockSnapshot"
maybe'compressedPackets ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'compressedPackets" a) =>
  Lens.Family2.LensLike' f s a
maybe'compressedPackets
  = Data.ProtoLens.Field.field @"maybe'compressedPackets"
maybe'data' ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'data'" a) =>
  Lens.Family2.LensLike' f s a
maybe'data' = Data.ProtoLens.Field.field @"maybe'data'"
maybe'extensionDescriptor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'extensionDescriptor" a) =>
  Lens.Family2.LensLike' f s a
maybe'extensionDescriptor
  = Data.ProtoLens.Field.field @"maybe'extensionDescriptor"
maybe'firstPacketOnSequence ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'firstPacketOnSequence" a) =>
  Lens.Family2.LensLike' f s a
maybe'firstPacketOnSequence
  = Data.ProtoLens.Field.field @"maybe'firstPacketOnSequence"
maybe'forTesting ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'forTesting" a) =>
  Lens.Family2.LensLike' f s a
maybe'forTesting = Data.ProtoLens.Field.field @"maybe'forTesting"
maybe'ftraceEvents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ftraceEvents" a) =>
  Lens.Family2.LensLike' f s a
maybe'ftraceEvents
  = Data.ProtoLens.Field.field @"maybe'ftraceEvents"
maybe'ftraceStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ftraceStats" a) =>
  Lens.Family2.LensLike' f s a
maybe'ftraceStats = Data.ProtoLens.Field.field @"maybe'ftraceStats"
maybe'incrementalStateCleared ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'incrementalStateCleared" a) =>
  Lens.Family2.LensLike' f s a
maybe'incrementalStateCleared
  = Data.ProtoLens.Field.field @"maybe'incrementalStateCleared"
maybe'inodeFileMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inodeFileMap" a) =>
  Lens.Family2.LensLike' f s a
maybe'inodeFileMap
  = Data.ProtoLens.Field.field @"maybe'inodeFileMap"
maybe'internedData ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'internedData" a) =>
  Lens.Family2.LensLike' f s a
maybe'internedData
  = Data.ProtoLens.Field.field @"maybe'internedData"
maybe'optionalTrustedPacketSequenceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'optionalTrustedPacketSequenceId" a) =>
  Lens.Family2.LensLike' f s a
maybe'optionalTrustedPacketSequenceId
  = Data.ProtoLens.Field.field
      @"maybe'optionalTrustedPacketSequenceId"
maybe'optionalTrustedUid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'optionalTrustedUid" a) =>
  Lens.Family2.LensLike' f s a
maybe'optionalTrustedUid
  = Data.ProtoLens.Field.field @"maybe'optionalTrustedUid"
maybe'previousPacketDropped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'previousPacketDropped" a) =>
  Lens.Family2.LensLike' f s a
maybe'previousPacketDropped
  = Data.ProtoLens.Field.field @"maybe'previousPacketDropped"
maybe'processStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'processStats" a) =>
  Lens.Family2.LensLike' f s a
maybe'processStats
  = Data.ProtoLens.Field.field @"maybe'processStats"
maybe'processTree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'processTree" a) =>
  Lens.Family2.LensLike' f s a
maybe'processTree = Data.ProtoLens.Field.field @"maybe'processTree"
maybe'sequenceFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sequenceFlags" a) =>
  Lens.Family2.LensLike' f s a
maybe'sequenceFlags
  = Data.ProtoLens.Field.field @"maybe'sequenceFlags"
maybe'synchronizationMarker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'synchronizationMarker" a) =>
  Lens.Family2.LensLike' f s a
maybe'synchronizationMarker
  = Data.ProtoLens.Field.field @"maybe'synchronizationMarker"
maybe'sysStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sysStats" a) =>
  Lens.Family2.LensLike' f s a
maybe'sysStats = Data.ProtoLens.Field.field @"maybe'sysStats"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'timestampClockId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestampClockId" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestampClockId
  = Data.ProtoLens.Field.field @"maybe'timestampClockId"
maybe'tracePacketDefaults ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tracePacketDefaults" a) =>
  Lens.Family2.LensLike' f s a
maybe'tracePacketDefaults
  = Data.ProtoLens.Field.field @"maybe'tracePacketDefaults"
maybe'traceStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'traceStats" a) =>
  Lens.Family2.LensLike' f s a
maybe'traceStats = Data.ProtoLens.Field.field @"maybe'traceStats"
maybe'traceUuid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'traceUuid" a) =>
  Lens.Family2.LensLike' f s a
maybe'traceUuid = Data.ProtoLens.Field.field @"maybe'traceUuid"
maybe'trackDescriptor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trackDescriptor" a) =>
  Lens.Family2.LensLike' f s a
maybe'trackDescriptor
  = Data.ProtoLens.Field.field @"maybe'trackDescriptor"
maybe'trackEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trackEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'trackEvent = Data.ProtoLens.Field.field @"maybe'trackEvent"
maybe'trustedPacketSequenceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustedPacketSequenceId" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustedPacketSequenceId
  = Data.ProtoLens.Field.field @"maybe'trustedPacketSequenceId"
maybe'trustedPid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustedPid" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustedPid = Data.ProtoLens.Field.field @"maybe'trustedPid"
maybe'trustedUid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustedUid" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustedUid = Data.ProtoLens.Field.field @"maybe'trustedUid"
previousPacketDropped ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "previousPacketDropped" a) =>
  Lens.Family2.LensLike' f s a
previousPacketDropped
  = Data.ProtoLens.Field.field @"previousPacketDropped"
processStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processStats" a) =>
  Lens.Family2.LensLike' f s a
processStats = Data.ProtoLens.Field.field @"processStats"
processTree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "processTree" a) =>
  Lens.Family2.LensLike' f s a
processTree = Data.ProtoLens.Field.field @"processTree"
sequenceFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sequenceFlags" a) =>
  Lens.Family2.LensLike' f s a
sequenceFlags = Data.ProtoLens.Field.field @"sequenceFlags"
synchronizationMarker ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "synchronizationMarker" a) =>
  Lens.Family2.LensLike' f s a
synchronizationMarker
  = Data.ProtoLens.Field.field @"synchronizationMarker"
sysStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sysStats" a) =>
  Lens.Family2.LensLike' f s a
sysStats = Data.ProtoLens.Field.field @"sysStats"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
timestampClockId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestampClockId" a) =>
  Lens.Family2.LensLike' f s a
timestampClockId = Data.ProtoLens.Field.field @"timestampClockId"
tracePacketDefaults ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tracePacketDefaults" a) =>
  Lens.Family2.LensLike' f s a
tracePacketDefaults
  = Data.ProtoLens.Field.field @"tracePacketDefaults"
traceStats ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traceStats" a) =>
  Lens.Family2.LensLike' f s a
traceStats = Data.ProtoLens.Field.field @"traceStats"
traceUuid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "traceUuid" a) =>
  Lens.Family2.LensLike' f s a
traceUuid = Data.ProtoLens.Field.field @"traceUuid"
trackDescriptor ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trackDescriptor" a) =>
  Lens.Family2.LensLike' f s a
trackDescriptor = Data.ProtoLens.Field.field @"trackDescriptor"
trackEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trackEvent" a) =>
  Lens.Family2.LensLike' f s a
trackEvent = Data.ProtoLens.Field.field @"trackEvent"
trustedPacketSequenceId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustedPacketSequenceId" a) =>
  Lens.Family2.LensLike' f s a
trustedPacketSequenceId
  = Data.ProtoLens.Field.field @"trustedPacketSequenceId"
trustedPid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustedPid" a) =>
  Lens.Family2.LensLike' f s a
trustedPid = Data.ProtoLens.Field.field @"trustedPid"
trustedUid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustedUid" a) =>
  Lens.Family2.LensLike' f s a
trustedUid = Data.ProtoLens.Field.field @"trustedUid"