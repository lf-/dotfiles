{- This file was auto-generated from protos/perfetto/trace/trace_packet.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TracePacket (
        TracePacket(), TracePacket'Data(..),
        TracePacket'OptionalTrustedUid(..),
        TracePacket'OptionalTrustedPacketSequenceId(..),
        _TracePacket'ProcessTree, _TracePacket'ProcessStats,
        _TracePacket'InodeFileMap, _TracePacket'ClockSnapshot,
        _TracePacket'SysStats, _TracePacket'TrackEvent,
        _TracePacket'TraceUuid, _TracePacket'FtraceStats,
        _TracePacket'TraceStats, _TracePacket'AndroidLog,
        _TracePacket'TrackDescriptor, _TracePacket'FtraceEvents,
        _TracePacket'SynchronizationMarker, _TracePacket'CompressedPackets,
        _TracePacket'ExtensionDescriptor, _TracePacket'ForTesting,
        _TracePacket'TrustedUid, _TracePacket'TrustedPacketSequenceId,
        TracePacket'SequenceFlags(..), TracePacket'SequenceFlags()
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
import qualified Proto.Protos.Perfetto.Common.TraceStats
import qualified Proto.Protos.Perfetto.Trace.Android.AndroidLog
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
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.timestamp' @:: Lens' TracePacket Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'timestamp' @:: Lens' TracePacket (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.timestampClockId' @:: Lens' TracePacket Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'timestampClockId' @:: Lens' TracePacket (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.trustedPid' @:: Lens' TracePacket Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'trustedPid' @:: Lens' TracePacket (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.internedData' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.InternedData.InternedData.InternedData@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'internedData' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.InternedData.InternedData.InternedData)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.sequenceFlags' @:: Lens' TracePacket Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'sequenceFlags' @:: Lens' TracePacket (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.incrementalStateCleared' @:: Lens' TracePacket Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'incrementalStateCleared' @:: Lens' TracePacket (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.tracePacketDefaults' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.TracePacketDefaults.TracePacketDefaults@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'tracePacketDefaults' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.TracePacketDefaults.TracePacketDefaults)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.previousPacketDropped' @:: Lens' TracePacket Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'previousPacketDropped' @:: Lens' TracePacket (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.firstPacketOnSequence' @:: Lens' TracePacket Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'firstPacketOnSequence' @:: Lens' TracePacket (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'data'' @:: Lens' TracePacket (Prelude.Maybe TracePacket'Data)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'processTree' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.Ps.ProcessTree.ProcessTree)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.processTree' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.Ps.ProcessTree.ProcessTree@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'processStats' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.Ps.ProcessStats.ProcessStats)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.processStats' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.Ps.ProcessStats.ProcessStats@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'inodeFileMap' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap.InodeFileMap)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.inodeFileMap' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap.InodeFileMap@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'clockSnapshot' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.ClockSnapshot.ClockSnapshot)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.clockSnapshot' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.ClockSnapshot.ClockSnapshot@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'sysStats' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.SysStats.SysStats.SysStats)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.sysStats' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.SysStats.SysStats.SysStats@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'trackEvent' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEvent)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.trackEvent' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEvent@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'traceUuid' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.TraceUuid.TraceUuid)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.traceUuid' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.TraceUuid.TraceUuid@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'ftraceStats' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats.FtraceStats)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.ftraceStats' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats.FtraceStats@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'traceStats' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Common.TraceStats.TraceStats)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.traceStats' @:: Lens' TracePacket Proto.Protos.Perfetto.Common.TraceStats.TraceStats@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'androidLog' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.Android.AndroidLog.AndroidLogPacket)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.androidLog' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.Android.AndroidLog.AndroidLogPacket@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'trackDescriptor' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor.TrackDescriptor)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.trackDescriptor' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor.TrackDescriptor@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'ftraceEvents' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle.FtraceEventBundle)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.ftraceEvents' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle.FtraceEventBundle@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'synchronizationMarker' @:: Lens' TracePacket (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.synchronizationMarker' @:: Lens' TracePacket Data.ByteString.ByteString@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'compressedPackets' @:: Lens' TracePacket (Prelude.Maybe Data.ByteString.ByteString)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.compressedPackets' @:: Lens' TracePacket Data.ByteString.ByteString@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'extensionDescriptor' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.ExtensionDescriptor.ExtensionDescriptor)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.extensionDescriptor' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.ExtensionDescriptor.ExtensionDescriptor@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'forTesting' @:: Lens' TracePacket (Prelude.Maybe Proto.Protos.Perfetto.Trace.TestEvent.TestEvent)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.forTesting' @:: Lens' TracePacket Proto.Protos.Perfetto.Trace.TestEvent.TestEvent@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'optionalTrustedUid' @:: Lens' TracePacket (Prelude.Maybe TracePacket'OptionalTrustedUid)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'trustedUid' @:: Lens' TracePacket (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.trustedUid' @:: Lens' TracePacket Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'optionalTrustedPacketSequenceId' @:: Lens' TracePacket (Prelude.Maybe TracePacket'OptionalTrustedPacketSequenceId)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.maybe'trustedPacketSequenceId' @:: Lens' TracePacket (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.TracePacket_Fields.trustedPacketSequenceId' @:: Lens' TracePacket Data.Word.Word32@ -}
data TracePacket
  = TracePacket'_constructor {_TracePacket'timestamp :: !(Prelude.Maybe Data.Word.Word64),
                              _TracePacket'timestampClockId :: !(Prelude.Maybe Data.Word.Word32),
                              _TracePacket'trustedPid :: !(Prelude.Maybe Data.Int.Int32),
                              _TracePacket'internedData :: !(Prelude.Maybe Proto.Protos.Perfetto.Trace.InternedData.InternedData.InternedData),
                              _TracePacket'sequenceFlags :: !(Prelude.Maybe Data.Word.Word32),
                              _TracePacket'incrementalStateCleared :: !(Prelude.Maybe Prelude.Bool),
                              _TracePacket'tracePacketDefaults :: !(Prelude.Maybe Proto.Protos.Perfetto.Trace.TracePacketDefaults.TracePacketDefaults),
                              _TracePacket'previousPacketDropped :: !(Prelude.Maybe Prelude.Bool),
                              _TracePacket'firstPacketOnSequence :: !(Prelude.Maybe Prelude.Bool),
                              _TracePacket'data' :: !(Prelude.Maybe TracePacket'Data),
                              _TracePacket'optionalTrustedUid :: !(Prelude.Maybe TracePacket'OptionalTrustedUid),
                              _TracePacket'optionalTrustedPacketSequenceId :: !(Prelude.Maybe TracePacket'OptionalTrustedPacketSequenceId),
                              _TracePacket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TracePacket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data TracePacket'Data
  = TracePacket'ProcessTree !Proto.Protos.Perfetto.Trace.Ps.ProcessTree.ProcessTree |
    TracePacket'ProcessStats !Proto.Protos.Perfetto.Trace.Ps.ProcessStats.ProcessStats |
    TracePacket'InodeFileMap !Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap.InodeFileMap |
    TracePacket'ClockSnapshot !Proto.Protos.Perfetto.Trace.ClockSnapshot.ClockSnapshot |
    TracePacket'SysStats !Proto.Protos.Perfetto.Trace.SysStats.SysStats.SysStats |
    TracePacket'TrackEvent !Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEvent |
    TracePacket'TraceUuid !Proto.Protos.Perfetto.Trace.TraceUuid.TraceUuid |
    TracePacket'FtraceStats !Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats.FtraceStats |
    TracePacket'TraceStats !Proto.Protos.Perfetto.Common.TraceStats.TraceStats |
    TracePacket'AndroidLog !Proto.Protos.Perfetto.Trace.Android.AndroidLog.AndroidLogPacket |
    TracePacket'TrackDescriptor !Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor.TrackDescriptor |
    TracePacket'FtraceEvents !Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle.FtraceEventBundle |
    TracePacket'SynchronizationMarker !Data.ByteString.ByteString |
    TracePacket'CompressedPackets !Data.ByteString.ByteString |
    TracePacket'ExtensionDescriptor !Proto.Protos.Perfetto.Trace.ExtensionDescriptor.ExtensionDescriptor |
    TracePacket'ForTesting !Proto.Protos.Perfetto.Trace.TestEvent.TestEvent
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data TracePacket'OptionalTrustedUid
  = TracePacket'TrustedUid !Data.Int.Int32
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data TracePacket'OptionalTrustedPacketSequenceId
  = TracePacket'TrustedPacketSequenceId !Data.Word.Word32
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField TracePacket "timestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'timestamp
           (\ x__ y__ -> x__ {_TracePacket'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracePacket "maybe'timestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'timestamp
           (\ x__ y__ -> x__ {_TracePacket'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "timestampClockId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'timestampClockId
           (\ x__ y__ -> x__ {_TracePacket'timestampClockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracePacket "maybe'timestampClockId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'timestampClockId
           (\ x__ y__ -> x__ {_TracePacket'timestampClockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "trustedPid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'trustedPid
           (\ x__ y__ -> x__ {_TracePacket'trustedPid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracePacket "maybe'trustedPid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'trustedPid
           (\ x__ y__ -> x__ {_TracePacket'trustedPid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "internedData" Proto.Protos.Perfetto.Trace.InternedData.InternedData.InternedData where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'internedData
           (\ x__ y__ -> x__ {_TracePacket'internedData = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TracePacket "maybe'internedData" (Prelude.Maybe Proto.Protos.Perfetto.Trace.InternedData.InternedData.InternedData) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'internedData
           (\ x__ y__ -> x__ {_TracePacket'internedData = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "sequenceFlags" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'sequenceFlags
           (\ x__ y__ -> x__ {_TracePacket'sequenceFlags = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracePacket "maybe'sequenceFlags" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'sequenceFlags
           (\ x__ y__ -> x__ {_TracePacket'sequenceFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "incrementalStateCleared" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'incrementalStateCleared
           (\ x__ y__ -> x__ {_TracePacket'incrementalStateCleared = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracePacket "maybe'incrementalStateCleared" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'incrementalStateCleared
           (\ x__ y__ -> x__ {_TracePacket'incrementalStateCleared = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "tracePacketDefaults" Proto.Protos.Perfetto.Trace.TracePacketDefaults.TracePacketDefaults where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'tracePacketDefaults
           (\ x__ y__ -> x__ {_TracePacket'tracePacketDefaults = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TracePacket "maybe'tracePacketDefaults" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TracePacketDefaults.TracePacketDefaults) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'tracePacketDefaults
           (\ x__ y__ -> x__ {_TracePacket'tracePacketDefaults = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "previousPacketDropped" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'previousPacketDropped
           (\ x__ y__ -> x__ {_TracePacket'previousPacketDropped = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracePacket "maybe'previousPacketDropped" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'previousPacketDropped
           (\ x__ y__ -> x__ {_TracePacket'previousPacketDropped = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "firstPacketOnSequence" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'firstPacketOnSequence
           (\ x__ y__ -> x__ {_TracePacket'firstPacketOnSequence = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TracePacket "maybe'firstPacketOnSequence" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'firstPacketOnSequence
           (\ x__ y__ -> x__ {_TracePacket'firstPacketOnSequence = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "maybe'data'" (Prelude.Maybe TracePacket'Data) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "maybe'processTree" (Prelude.Maybe Proto.Protos.Perfetto.Trace.Ps.ProcessTree.ProcessTree) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'ProcessTree x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'ProcessTree y__))
instance Data.ProtoLens.Field.HasField TracePacket "processTree" Proto.Protos.Perfetto.Trace.Ps.ProcessTree.ProcessTree where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'ProcessTree x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'ProcessTree y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'processStats" (Prelude.Maybe Proto.Protos.Perfetto.Trace.Ps.ProcessStats.ProcessStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'ProcessStats x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'ProcessStats y__))
instance Data.ProtoLens.Field.HasField TracePacket "processStats" Proto.Protos.Perfetto.Trace.Ps.ProcessStats.ProcessStats where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'ProcessStats x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'ProcessStats y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'inodeFileMap" (Prelude.Maybe Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap.InodeFileMap) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'InodeFileMap x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'InodeFileMap y__))
instance Data.ProtoLens.Field.HasField TracePacket "inodeFileMap" Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap.InodeFileMap where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'InodeFileMap x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'InodeFileMap y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'clockSnapshot" (Prelude.Maybe Proto.Protos.Perfetto.Trace.ClockSnapshot.ClockSnapshot) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'ClockSnapshot x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'ClockSnapshot y__))
instance Data.ProtoLens.Field.HasField TracePacket "clockSnapshot" Proto.Protos.Perfetto.Trace.ClockSnapshot.ClockSnapshot where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'ClockSnapshot x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'ClockSnapshot y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'sysStats" (Prelude.Maybe Proto.Protos.Perfetto.Trace.SysStats.SysStats.SysStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'SysStats x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'SysStats y__))
instance Data.ProtoLens.Field.HasField TracePacket "sysStats" Proto.Protos.Perfetto.Trace.SysStats.SysStats.SysStats where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'SysStats x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'SysStats y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'trackEvent" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'TrackEvent x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'TrackEvent y__))
instance Data.ProtoLens.Field.HasField TracePacket "trackEvent" Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'TrackEvent x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'TrackEvent y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'traceUuid" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TraceUuid.TraceUuid) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'TraceUuid x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'TraceUuid y__))
instance Data.ProtoLens.Field.HasField TracePacket "traceUuid" Proto.Protos.Perfetto.Trace.TraceUuid.TraceUuid where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'TraceUuid x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'TraceUuid y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'ftraceStats" (Prelude.Maybe Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats.FtraceStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'FtraceStats x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'FtraceStats y__))
instance Data.ProtoLens.Field.HasField TracePacket "ftraceStats" Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats.FtraceStats where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'FtraceStats x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'FtraceStats y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'traceStats" (Prelude.Maybe Proto.Protos.Perfetto.Common.TraceStats.TraceStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'TraceStats x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'TraceStats y__))
instance Data.ProtoLens.Field.HasField TracePacket "traceStats" Proto.Protos.Perfetto.Common.TraceStats.TraceStats where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'TraceStats x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'TraceStats y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'androidLog" (Prelude.Maybe Proto.Protos.Perfetto.Trace.Android.AndroidLog.AndroidLogPacket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'AndroidLog x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'AndroidLog y__))
instance Data.ProtoLens.Field.HasField TracePacket "androidLog" Proto.Protos.Perfetto.Trace.Android.AndroidLog.AndroidLogPacket where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'AndroidLog x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'AndroidLog y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'trackDescriptor" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor.TrackDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'TrackDescriptor x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'TrackDescriptor y__))
instance Data.ProtoLens.Field.HasField TracePacket "trackDescriptor" Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor.TrackDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'TrackDescriptor x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'TrackDescriptor y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'ftraceEvents" (Prelude.Maybe Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle.FtraceEventBundle) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'FtraceEvents x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'FtraceEvents y__))
instance Data.ProtoLens.Field.HasField TracePacket "ftraceEvents" Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle.FtraceEventBundle where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'FtraceEvents x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'FtraceEvents y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'synchronizationMarker" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'SynchronizationMarker x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'SynchronizationMarker y__))
instance Data.ProtoLens.Field.HasField TracePacket "synchronizationMarker" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'SynchronizationMarker x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'SynchronizationMarker y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'compressedPackets" (Prelude.Maybe Data.ByteString.ByteString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'CompressedPackets x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'CompressedPackets y__))
instance Data.ProtoLens.Field.HasField TracePacket "compressedPackets" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'CompressedPackets x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'CompressedPackets y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'extensionDescriptor" (Prelude.Maybe Proto.Protos.Perfetto.Trace.ExtensionDescriptor.ExtensionDescriptor) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'ExtensionDescriptor x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'ExtensionDescriptor y__))
instance Data.ProtoLens.Field.HasField TracePacket "extensionDescriptor" Proto.Protos.Perfetto.Trace.ExtensionDescriptor.ExtensionDescriptor where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'ExtensionDescriptor x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'ExtensionDescriptor y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'forTesting" (Prelude.Maybe Proto.Protos.Perfetto.Trace.TestEvent.TestEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'ForTesting x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'ForTesting y__))
instance Data.ProtoLens.Field.HasField TracePacket "forTesting" Proto.Protos.Perfetto.Trace.TestEvent.TestEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'data' (\ x__ y__ -> x__ {_TracePacket'data' = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'ForTesting x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'ForTesting y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'optionalTrustedUid" (Prelude.Maybe TracePacket'OptionalTrustedUid) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'optionalTrustedUid
           (\ x__ y__ -> x__ {_TracePacket'optionalTrustedUid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "maybe'trustedUid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'optionalTrustedUid
           (\ x__ y__ -> x__ {_TracePacket'optionalTrustedUid = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'TrustedUid x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'TrustedUid y__))
instance Data.ProtoLens.Field.HasField TracePacket "trustedUid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'optionalTrustedUid
           (\ x__ y__ -> x__ {_TracePacket'optionalTrustedUid = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'TrustedUid x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'TrustedUid y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField TracePacket "maybe'optionalTrustedPacketSequenceId" (Prelude.Maybe TracePacket'OptionalTrustedPacketSequenceId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'optionalTrustedPacketSequenceId
           (\ x__ y__
              -> x__ {_TracePacket'optionalTrustedPacketSequenceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TracePacket "maybe'trustedPacketSequenceId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'optionalTrustedPacketSequenceId
           (\ x__ y__
              -> x__ {_TracePacket'optionalTrustedPacketSequenceId = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (TracePacket'TrustedPacketSequenceId x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap TracePacket'TrustedPacketSequenceId y__))
instance Data.ProtoLens.Field.HasField TracePacket "trustedPacketSequenceId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TracePacket'optionalTrustedPacketSequenceId
           (\ x__ y__
              -> x__ {_TracePacket'optionalTrustedPacketSequenceId = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (TracePacket'TrustedPacketSequenceId x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap TracePacket'TrustedPacketSequenceId y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message TracePacket where
  messageName _ = Data.Text.pack "perfetto.protos.TracePacket"
  packedMessageDescriptor _
    = "\n\
      \\vTracePacket\DC2\FS\n\
      \\ttimestamp\CAN\b \SOH(\EOTR\ttimestamp\DC2,\n\
      \\DC2timestamp_clock_id\CAN: \SOH(\rR\DLEtimestampClockId\DC2A\n\
      \\fprocess_tree\CAN\STX \SOH(\v2\FS.perfetto.protos.ProcessTreeH\NULR\vprocessTree\DC2D\n\
      \\rprocess_stats\CAN\t \SOH(\v2\GS.perfetto.protos.ProcessStatsH\NULR\fprocessStats\DC2E\n\
      \\SOinode_file_map\CAN\EOT \SOH(\v2\GS.perfetto.protos.InodeFileMapH\NULR\finodeFileMap\DC2G\n\
      \\SOclock_snapshot\CAN\ACK \SOH(\v2\RS.perfetto.protos.ClockSnapshotH\NULR\rclockSnapshot\DC28\n\
      \\tsys_stats\CAN\a \SOH(\v2\EM.perfetto.protos.SysStatsH\NULR\bsysStats\DC2>\n\
      \\vtrack_event\CAN\v \SOH(\v2\ESC.perfetto.protos.TrackEventH\NULR\n\
      \trackEvent\DC2;\n\
      \\n\
      \trace_uuid\CANY \SOH(\v2\SUB.perfetto.protos.TraceUuidH\NULR\ttraceUuid\DC2A\n\
      \\fftrace_stats\CAN\" \SOH(\v2\FS.perfetto.protos.FtraceStatsH\NULR\vftraceStats\DC2>\n\
      \\vtrace_stats\CAN# \SOH(\v2\ESC.perfetto.protos.TraceStatsH\NULR\n\
      \traceStats\DC2D\n\
      \\vandroid_log\CAN' \SOH(\v2!.perfetto.protos.AndroidLogPacketH\NULR\n\
      \androidLog\DC2M\n\
      \\DLEtrack_descriptor\CAN< \SOH(\v2 .perfetto.protos.TrackDescriptorH\NULR\SItrackDescriptor\DC2I\n\
      \\rftrace_events\CAN\SOH \SOH(\v2\".perfetto.protos.FtraceEventBundleH\NULR\fftraceEvents\DC27\n\
      \\SYNsynchronization_marker\CAN$ \SOH(\fH\NULR\NAKsynchronizationMarker\DC2/\n\
      \\DC2compressed_packets\CAN2 \SOH(\fH\NULR\DC1compressedPackets\DC2Y\n\
      \\DC4extension_descriptor\CANH \SOH(\v2$.perfetto.protos.ExtensionDescriptorH\NULR\DC3extensionDescriptor\DC2>\n\
      \\vfor_testing\CAN\132\a \SOH(\v2\SUB.perfetto.protos.TestEventH\NULR\n\
      \forTesting\DC2!\n\
      \\vtrusted_uid\CAN\ETX \SOH(\ENQH\SOHR\n\
      \trustedUid\DC2=\n\
      \\SUBtrusted_packet_sequence_id\CAN\n\
      \ \SOH(\rH\STXR\ETBtrustedPacketSequenceId\DC2\US\n\
      \\vtrusted_pid\CANO \SOH(\ENQR\n\
      \trustedPid\DC2B\n\
      \\rinterned_data\CAN\f \SOH(\v2\GS.perfetto.protos.InternedDataR\finternedData\DC2%\n\
      \\SOsequence_flags\CAN\r \SOH(\rR\rsequenceFlags\DC2:\n\
      \\EMincremental_state_cleared\CAN) \SOH(\bR\ETBincrementalStateCleared\DC2X\n\
      \\NAKtrace_packet_defaults\CAN; \SOH(\v2$.perfetto.protos.TracePacketDefaultsR\DC3tracePacketDefaults\DC26\n\
      \\ETBprevious_packet_dropped\CAN* \SOH(\bR\NAKpreviousPacketDropped\DC27\n\
      \\CANfirst_packet_on_sequence\CANW \SOH(\bR\NAKfirstPacketOnSequence\"h\n\
      \\rSequenceFlags\DC2\DC3\n\
      \\SISEQ_UNSPECIFIED\DLE\NUL\DC2!\n\
      \\GSSEQ_INCREMENTAL_STATE_CLEARED\DLE\SOH\DC2\US\n\
      \\ESCSEQ_NEEDS_INCREMENTAL_STATE\DLE\STXB\ACK\n\
      \\EOTdataB\SYN\n\
      \\DC4optional_trusted_uidB%\n\
      \#optional_trusted_packet_sequence_id"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        timestampClockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp_clock_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestampClockId")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        trustedPid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trusted_pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trustedPid")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        internedData__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "interned_data"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.InternedData.InternedData.InternedData)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'internedData")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        sequenceFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sequenceFlags")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        incrementalStateCleared__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "incremental_state_cleared"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'incrementalStateCleared")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        tracePacketDefaults__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_packet_defaults"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TracePacketDefaults.TracePacketDefaults)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tracePacketDefaults")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        previousPacketDropped__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "previous_packet_dropped"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'previousPacketDropped")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        firstPacketOnSequence__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "first_packet_on_sequence"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'firstPacketOnSequence")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        processTree__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_tree"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Ps.ProcessTree.ProcessTree)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processTree")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        processStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Ps.ProcessStats.ProcessStats)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processStats")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        inodeFileMap__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inode_file_map"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap.InodeFileMap)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inodeFileMap")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        clockSnapshot__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clock_snapshot"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.ClockSnapshot.ClockSnapshot)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clockSnapshot")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        sysStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sys_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.SysStats.SysStats.SysStats)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sysStats")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        trackEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "track_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trackEvent")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        traceUuid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_uuid"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TraceUuid.TraceUuid)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceUuid")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        ftraceStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ftrace_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats.FtraceStats)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ftraceStats")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        traceStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Common.TraceStats.TraceStats)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceStats")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        androidLog__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "android_log"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Android.AndroidLog.AndroidLogPacket)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'androidLog")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        trackDescriptor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "track_descriptor"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor.TrackDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trackDescriptor")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        ftraceEvents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ftrace_events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle.FtraceEventBundle)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ftraceEvents")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        synchronizationMarker__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "synchronization_marker"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'synchronizationMarker")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        compressedPackets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compressed_packets"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'compressedPackets")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        extensionDescriptor__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "extension_descriptor"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.ExtensionDescriptor.ExtensionDescriptor)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'extensionDescriptor")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        forTesting__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "for_testing"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TestEvent.TestEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'forTesting")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        trustedUid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trusted_uid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trustedUid")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
        trustedPacketSequenceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trusted_packet_sequence_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'trustedPacketSequenceId")) ::
              Data.ProtoLens.FieldDescriptor TracePacket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 8, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 58, timestampClockId__field_descriptor),
           (Data.ProtoLens.Tag 79, trustedPid__field_descriptor),
           (Data.ProtoLens.Tag 12, internedData__field_descriptor),
           (Data.ProtoLens.Tag 13, sequenceFlags__field_descriptor),
           (Data.ProtoLens.Tag 41, incrementalStateCleared__field_descriptor),
           (Data.ProtoLens.Tag 59, tracePacketDefaults__field_descriptor),
           (Data.ProtoLens.Tag 42, previousPacketDropped__field_descriptor),
           (Data.ProtoLens.Tag 87, firstPacketOnSequence__field_descriptor),
           (Data.ProtoLens.Tag 2, processTree__field_descriptor),
           (Data.ProtoLens.Tag 9, processStats__field_descriptor),
           (Data.ProtoLens.Tag 4, inodeFileMap__field_descriptor),
           (Data.ProtoLens.Tag 6, clockSnapshot__field_descriptor),
           (Data.ProtoLens.Tag 7, sysStats__field_descriptor),
           (Data.ProtoLens.Tag 11, trackEvent__field_descriptor),
           (Data.ProtoLens.Tag 89, traceUuid__field_descriptor),
           (Data.ProtoLens.Tag 34, ftraceStats__field_descriptor),
           (Data.ProtoLens.Tag 35, traceStats__field_descriptor),
           (Data.ProtoLens.Tag 39, androidLog__field_descriptor),
           (Data.ProtoLens.Tag 60, trackDescriptor__field_descriptor),
           (Data.ProtoLens.Tag 1, ftraceEvents__field_descriptor),
           (Data.ProtoLens.Tag 36, synchronizationMarker__field_descriptor),
           (Data.ProtoLens.Tag 50, compressedPackets__field_descriptor),
           (Data.ProtoLens.Tag 72, extensionDescriptor__field_descriptor),
           (Data.ProtoLens.Tag 900, forTesting__field_descriptor),
           (Data.ProtoLens.Tag 3, trustedUid__field_descriptor),
           (Data.ProtoLens.Tag 10, trustedPacketSequenceId__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TracePacket'_unknownFields
        (\ x__ y__ -> x__ {_TracePacket'_unknownFields = y__})
  defMessage
    = TracePacket'_constructor
        {_TracePacket'timestamp = Prelude.Nothing,
         _TracePacket'timestampClockId = Prelude.Nothing,
         _TracePacket'trustedPid = Prelude.Nothing,
         _TracePacket'internedData = Prelude.Nothing,
         _TracePacket'sequenceFlags = Prelude.Nothing,
         _TracePacket'incrementalStateCleared = Prelude.Nothing,
         _TracePacket'tracePacketDefaults = Prelude.Nothing,
         _TracePacket'previousPacketDropped = Prelude.Nothing,
         _TracePacket'firstPacketOnSequence = Prelude.Nothing,
         _TracePacket'data' = Prelude.Nothing,
         _TracePacket'optionalTrustedUid = Prelude.Nothing,
         _TracePacket'optionalTrustedPacketSequenceId = Prelude.Nothing,
         _TracePacket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TracePacket -> Data.ProtoLens.Encoding.Bytes.Parser TracePacket
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        464
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "timestamp_clock_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timestampClockId") y x)
                        632
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "trusted_pid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"trustedPid") y x)
                        98
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "interned_data"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"internedData") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "sequence_flags"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sequenceFlags") y x)
                        328
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "incremental_state_cleared"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"incrementalStateCleared") y x)
                        474
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trace_packet_defaults"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tracePacketDefaults") y x)
                        336
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "previous_packet_dropped"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"previousPacketDropped") y x)
                        696
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "first_packet_on_sequence"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"firstPacketOnSequence") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "process_tree"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"processTree") y x)
                        74
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "process_stats"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"processStats") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "inode_file_map"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inodeFileMap") y x)
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "clock_snapshot"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clockSnapshot") y x)
                        58
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "sys_stats"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sysStats") y x)
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "track_event"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"trackEvent") y x)
                        714
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trace_uuid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"traceUuid") y x)
                        274
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ftrace_stats"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ftraceStats") y x)
                        282
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "trace_stats"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"traceStats") y x)
                        314
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "android_log"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"androidLog") y x)
                        482
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "track_descriptor"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"trackDescriptor") y x)
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "ftrace_events"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ftraceEvents") y x)
                        290
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "synchronization_marker"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"synchronizationMarker") y x)
                        402
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "compressed_packets"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"compressedPackets") y x)
                        578
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "extension_descriptor"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"extensionDescriptor") y x)
                        7202
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "for_testing"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"forTesting") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "trusted_uid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"trustedUid") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "trusted_packet_sequence_id"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"trustedPacketSequenceId") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TracePacket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'timestamp") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'timestampClockId") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 464)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'trustedPid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 632)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'internedData") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'sequenceFlags") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'incrementalStateCleared") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 328)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (\ b -> if b then 1 else 0) _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'tracePacketDefaults") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 474)
                                         ((Prelude..)
                                            (\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Data.ProtoLens.encodeMessage _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'previousPacketDropped")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 336)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0) _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'firstPacketOnSequence")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 696)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (\ b -> if b then 1 else 0) _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'data'") _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just (TracePacket'ProcessTree v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'ProcessStats v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'InodeFileMap v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'ClockSnapshot v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'SysStats v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'TrackEvent v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'TraceUuid v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 714)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'FtraceStats v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 274)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'TraceStats v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 282)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'AndroidLog v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 314)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'TrackDescriptor v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 482)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'FtraceEvents v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'SynchronizationMarker v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 290)
                                                  ((\ bs
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              (Prelude.fromIntegral
                                                                 (Data.ByteString.length bs)))
                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                              bs))
                                                     v)
                                           (Prelude.Just (TracePacket'CompressedPackets v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 402)
                                                  ((\ bs
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              (Prelude.fromIntegral
                                                                 (Data.ByteString.length bs)))
                                                           (Data.ProtoLens.Encoding.Bytes.putBytes
                                                              bs))
                                                     v)
                                           (Prelude.Just (TracePacket'ExtensionDescriptor v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 578)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v)
                                           (Prelude.Just (TracePacket'ForTesting v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 7202)
                                                  ((Prelude..)
                                                     (\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                     Data.ProtoLens.encodeMessage v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'optionalTrustedUid")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just (TracePacket'TrustedUid v))
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'optionalTrustedPacketSequenceId")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just (TracePacket'TrustedPacketSequenceId v))
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                        ((Prelude..)
                                                           Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           Prelude.fromIntegral v))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData TracePacket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TracePacket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TracePacket'timestamp x__)
                (Control.DeepSeq.deepseq
                   (_TracePacket'timestampClockId x__)
                   (Control.DeepSeq.deepseq
                      (_TracePacket'trustedPid x__)
                      (Control.DeepSeq.deepseq
                         (_TracePacket'internedData x__)
                         (Control.DeepSeq.deepseq
                            (_TracePacket'sequenceFlags x__)
                            (Control.DeepSeq.deepseq
                               (_TracePacket'incrementalStateCleared x__)
                               (Control.DeepSeq.deepseq
                                  (_TracePacket'tracePacketDefaults x__)
                                  (Control.DeepSeq.deepseq
                                     (_TracePacket'previousPacketDropped x__)
                                     (Control.DeepSeq.deepseq
                                        (_TracePacket'firstPacketOnSequence x__)
                                        (Control.DeepSeq.deepseq
                                           (_TracePacket'data' x__)
                                           (Control.DeepSeq.deepseq
                                              (_TracePacket'optionalTrustedUid x__)
                                              (Control.DeepSeq.deepseq
                                                 (_TracePacket'optionalTrustedPacketSequenceId x__)
                                                 ()))))))))))))
instance Control.DeepSeq.NFData TracePacket'Data where
  rnf (TracePacket'ProcessTree x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'ProcessStats x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'InodeFileMap x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'ClockSnapshot x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'SysStats x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'TrackEvent x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'TraceUuid x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'FtraceStats x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'TraceStats x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'AndroidLog x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'TrackDescriptor x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'FtraceEvents x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'SynchronizationMarker x__)
    = Control.DeepSeq.rnf x__
  rnf (TracePacket'CompressedPackets x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'ExtensionDescriptor x__) = Control.DeepSeq.rnf x__
  rnf (TracePacket'ForTesting x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData TracePacket'OptionalTrustedUid where
  rnf (TracePacket'TrustedUid x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData TracePacket'OptionalTrustedPacketSequenceId where
  rnf (TracePacket'TrustedPacketSequenceId x__)
    = Control.DeepSeq.rnf x__
_TracePacket'ProcessTree ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.Ps.ProcessTree.ProcessTree
_TracePacket'ProcessTree
  = Data.ProtoLens.Prism.prism'
      TracePacket'ProcessTree
      (\ p__
         -> case p__ of
              (TracePacket'ProcessTree p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'ProcessStats ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.Ps.ProcessStats.ProcessStats
_TracePacket'ProcessStats
  = Data.ProtoLens.Prism.prism'
      TracePacket'ProcessStats
      (\ p__
         -> case p__ of
              (TracePacket'ProcessStats p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'InodeFileMap ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.Filesystem.InodeFileMap.InodeFileMap
_TracePacket'InodeFileMap
  = Data.ProtoLens.Prism.prism'
      TracePacket'InodeFileMap
      (\ p__
         -> case p__ of
              (TracePacket'InodeFileMap p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'ClockSnapshot ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.ClockSnapshot.ClockSnapshot
_TracePacket'ClockSnapshot
  = Data.ProtoLens.Prism.prism'
      TracePacket'ClockSnapshot
      (\ p__
         -> case p__ of
              (TracePacket'ClockSnapshot p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'SysStats ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.SysStats.SysStats.SysStats
_TracePacket'SysStats
  = Data.ProtoLens.Prism.prism'
      TracePacket'SysStats
      (\ p__
         -> case p__ of
              (TracePacket'SysStats p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'TrackEvent ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.TrackEvent.TrackEvent.TrackEvent
_TracePacket'TrackEvent
  = Data.ProtoLens.Prism.prism'
      TracePacket'TrackEvent
      (\ p__
         -> case p__ of
              (TracePacket'TrackEvent p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'TraceUuid ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.TraceUuid.TraceUuid
_TracePacket'TraceUuid
  = Data.ProtoLens.Prism.prism'
      TracePacket'TraceUuid
      (\ p__
         -> case p__ of
              (TracePacket'TraceUuid p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'FtraceStats ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats.FtraceStats
_TracePacket'FtraceStats
  = Data.ProtoLens.Prism.prism'
      TracePacket'FtraceStats
      (\ p__
         -> case p__ of
              (TracePacket'FtraceStats p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'TraceStats ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Common.TraceStats.TraceStats
_TracePacket'TraceStats
  = Data.ProtoLens.Prism.prism'
      TracePacket'TraceStats
      (\ p__
         -> case p__ of
              (TracePacket'TraceStats p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'AndroidLog ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.Android.AndroidLog.AndroidLogPacket
_TracePacket'AndroidLog
  = Data.ProtoLens.Prism.prism'
      TracePacket'AndroidLog
      (\ p__
         -> case p__ of
              (TracePacket'AndroidLog p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'TrackDescriptor ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.TrackEvent.TrackDescriptor.TrackDescriptor
_TracePacket'TrackDescriptor
  = Data.ProtoLens.Prism.prism'
      TracePacket'TrackDescriptor
      (\ p__
         -> case p__ of
              (TracePacket'TrackDescriptor p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'FtraceEvents ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle.FtraceEventBundle
_TracePacket'FtraceEvents
  = Data.ProtoLens.Prism.prism'
      TracePacket'FtraceEvents
      (\ p__
         -> case p__ of
              (TracePacket'FtraceEvents p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'SynchronizationMarker ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Data.ByteString.ByteString
_TracePacket'SynchronizationMarker
  = Data.ProtoLens.Prism.prism'
      TracePacket'SynchronizationMarker
      (\ p__
         -> case p__ of
              (TracePacket'SynchronizationMarker p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'CompressedPackets ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Data.ByteString.ByteString
_TracePacket'CompressedPackets
  = Data.ProtoLens.Prism.prism'
      TracePacket'CompressedPackets
      (\ p__
         -> case p__ of
              (TracePacket'CompressedPackets p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'ExtensionDescriptor ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.ExtensionDescriptor.ExtensionDescriptor
_TracePacket'ExtensionDescriptor
  = Data.ProtoLens.Prism.prism'
      TracePacket'ExtensionDescriptor
      (\ p__
         -> case p__ of
              (TracePacket'ExtensionDescriptor p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'ForTesting ::
  Data.ProtoLens.Prism.Prism' TracePacket'Data Proto.Protos.Perfetto.Trace.TestEvent.TestEvent
_TracePacket'ForTesting
  = Data.ProtoLens.Prism.prism'
      TracePacket'ForTesting
      (\ p__
         -> case p__ of
              (TracePacket'ForTesting p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_TracePacket'TrustedUid ::
  Data.ProtoLens.Prism.Prism' TracePacket'OptionalTrustedUid Data.Int.Int32
_TracePacket'TrustedUid
  = Data.ProtoLens.Prism.prism'
      TracePacket'TrustedUid
      (\ p__
         -> case p__ of
              (TracePacket'TrustedUid p__val) -> Prelude.Just p__val)
_TracePacket'TrustedPacketSequenceId ::
  Data.ProtoLens.Prism.Prism' TracePacket'OptionalTrustedPacketSequenceId Data.Word.Word32
_TracePacket'TrustedPacketSequenceId
  = Data.ProtoLens.Prism.prism'
      TracePacket'TrustedPacketSequenceId
      (\ p__
         -> case p__ of
              (TracePacket'TrustedPacketSequenceId p__val)
                -> Prelude.Just p__val)
data TracePacket'SequenceFlags
  = TracePacket'SEQ_UNSPECIFIED |
    TracePacket'SEQ_INCREMENTAL_STATE_CLEARED |
    TracePacket'SEQ_NEEDS_INCREMENTAL_STATE
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TracePacket'SequenceFlags where
  maybeToEnum 0 = Prelude.Just TracePacket'SEQ_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just TracePacket'SEQ_INCREMENTAL_STATE_CLEARED
  maybeToEnum 2
    = Prelude.Just TracePacket'SEQ_NEEDS_INCREMENTAL_STATE
  maybeToEnum _ = Prelude.Nothing
  showEnum TracePacket'SEQ_UNSPECIFIED = "SEQ_UNSPECIFIED"
  showEnum TracePacket'SEQ_INCREMENTAL_STATE_CLEARED
    = "SEQ_INCREMENTAL_STATE_CLEARED"
  showEnum TracePacket'SEQ_NEEDS_INCREMENTAL_STATE
    = "SEQ_NEEDS_INCREMENTAL_STATE"
  readEnum k
    | (Prelude.==) k "SEQ_UNSPECIFIED"
    = Prelude.Just TracePacket'SEQ_UNSPECIFIED
    | (Prelude.==) k "SEQ_INCREMENTAL_STATE_CLEARED"
    = Prelude.Just TracePacket'SEQ_INCREMENTAL_STATE_CLEARED
    | (Prelude.==) k "SEQ_NEEDS_INCREMENTAL_STATE"
    = Prelude.Just TracePacket'SEQ_NEEDS_INCREMENTAL_STATE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TracePacket'SequenceFlags where
  minBound = TracePacket'SEQ_UNSPECIFIED
  maxBound = TracePacket'SEQ_NEEDS_INCREMENTAL_STATE
instance Prelude.Enum TracePacket'SequenceFlags where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum SequenceFlags: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TracePacket'SEQ_UNSPECIFIED = 0
  fromEnum TracePacket'SEQ_INCREMENTAL_STATE_CLEARED = 1
  fromEnum TracePacket'SEQ_NEEDS_INCREMENTAL_STATE = 2
  succ TracePacket'SEQ_NEEDS_INCREMENTAL_STATE
    = Prelude.error
        "TracePacket'SequenceFlags.succ: bad argument TracePacket'SEQ_NEEDS_INCREMENTAL_STATE. This value would be out of bounds."
  succ TracePacket'SEQ_UNSPECIFIED
    = TracePacket'SEQ_INCREMENTAL_STATE_CLEARED
  succ TracePacket'SEQ_INCREMENTAL_STATE_CLEARED
    = TracePacket'SEQ_NEEDS_INCREMENTAL_STATE
  pred TracePacket'SEQ_UNSPECIFIED
    = Prelude.error
        "TracePacket'SequenceFlags.pred: bad argument TracePacket'SEQ_UNSPECIFIED. This value would be out of bounds."
  pred TracePacket'SEQ_INCREMENTAL_STATE_CLEARED
    = TracePacket'SEQ_UNSPECIFIED
  pred TracePacket'SEQ_NEEDS_INCREMENTAL_STATE
    = TracePacket'SEQ_INCREMENTAL_STATE_CLEARED
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TracePacket'SequenceFlags where
  fieldDefault = TracePacket'SEQ_UNSPECIFIED
instance Control.DeepSeq.NFData TracePacket'SequenceFlags where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(protos/perfetto/trace/trace_packet.proto\DC2\SIperfetto.protos\SUB(protos/perfetto/common/trace_stats.proto\SUB0protos/perfetto/trace/extension_descriptor.proto\SUB/protos/perfetto/trace/android/android_log.proto\SUB*protos/perfetto/trace/clock_snapshot.proto\SUB5protos/perfetto/trace/filesystem/inode_file_map.proto\SUB6protos/perfetto/trace/ftrace/ftrace_event_bundle.proto\SUB/protos/perfetto/trace/ftrace/ftrace_stats.proto\SUB7protos/perfetto/trace/interned_data/interned_data.proto\SUB,protos/perfetto/trace/ps/process_stats.proto\SUB+protos/perfetto/trace/ps/process_tree.proto\SUB/protos/perfetto/trace/sys_stats/sys_stats.proto\SUB1protos/perfetto/trace/trace_packet_defaults.proto\SUB8protos/perfetto/trace/track_event/track_descriptor.proto\SUB3protos/perfetto/trace/track_event/track_event.proto\SUB&protos/perfetto/trace/trace_uuid.proto\SUB&protos/perfetto/trace/test_event.proto\"\183\SO\n\
    \\vTracePacket\DC2\FS\n\
    \\ttimestamp\CAN\b \SOH(\EOTR\ttimestamp\DC2,\n\
    \\DC2timestamp_clock_id\CAN: \SOH(\rR\DLEtimestampClockId\DC2A\n\
    \\fprocess_tree\CAN\STX \SOH(\v2\FS.perfetto.protos.ProcessTreeH\NULR\vprocessTree\DC2D\n\
    \\rprocess_stats\CAN\t \SOH(\v2\GS.perfetto.protos.ProcessStatsH\NULR\fprocessStats\DC2E\n\
    \\SOinode_file_map\CAN\EOT \SOH(\v2\GS.perfetto.protos.InodeFileMapH\NULR\finodeFileMap\DC2G\n\
    \\SOclock_snapshot\CAN\ACK \SOH(\v2\RS.perfetto.protos.ClockSnapshotH\NULR\rclockSnapshot\DC28\n\
    \\tsys_stats\CAN\a \SOH(\v2\EM.perfetto.protos.SysStatsH\NULR\bsysStats\DC2>\n\
    \\vtrack_event\CAN\v \SOH(\v2\ESC.perfetto.protos.TrackEventH\NULR\n\
    \trackEvent\DC2;\n\
    \\n\
    \trace_uuid\CANY \SOH(\v2\SUB.perfetto.protos.TraceUuidH\NULR\ttraceUuid\DC2A\n\
    \\fftrace_stats\CAN\" \SOH(\v2\FS.perfetto.protos.FtraceStatsH\NULR\vftraceStats\DC2>\n\
    \\vtrace_stats\CAN# \SOH(\v2\ESC.perfetto.protos.TraceStatsH\NULR\n\
    \traceStats\DC2D\n\
    \\vandroid_log\CAN' \SOH(\v2!.perfetto.protos.AndroidLogPacketH\NULR\n\
    \androidLog\DC2M\n\
    \\DLEtrack_descriptor\CAN< \SOH(\v2 .perfetto.protos.TrackDescriptorH\NULR\SItrackDescriptor\DC2I\n\
    \\rftrace_events\CAN\SOH \SOH(\v2\".perfetto.protos.FtraceEventBundleH\NULR\fftraceEvents\DC27\n\
    \\SYNsynchronization_marker\CAN$ \SOH(\fH\NULR\NAKsynchronizationMarker\DC2/\n\
    \\DC2compressed_packets\CAN2 \SOH(\fH\NULR\DC1compressedPackets\DC2Y\n\
    \\DC4extension_descriptor\CANH \SOH(\v2$.perfetto.protos.ExtensionDescriptorH\NULR\DC3extensionDescriptor\DC2>\n\
    \\vfor_testing\CAN\132\a \SOH(\v2\SUB.perfetto.protos.TestEventH\NULR\n\
    \forTesting\DC2!\n\
    \\vtrusted_uid\CAN\ETX \SOH(\ENQH\SOHR\n\
    \trustedUid\DC2=\n\
    \\SUBtrusted_packet_sequence_id\CAN\n\
    \ \SOH(\rH\STXR\ETBtrustedPacketSequenceId\DC2\US\n\
    \\vtrusted_pid\CANO \SOH(\ENQR\n\
    \trustedPid\DC2B\n\
    \\rinterned_data\CAN\f \SOH(\v2\GS.perfetto.protos.InternedDataR\finternedData\DC2%\n\
    \\SOsequence_flags\CAN\r \SOH(\rR\rsequenceFlags\DC2:\n\
    \\EMincremental_state_cleared\CAN) \SOH(\bR\ETBincrementalStateCleared\DC2X\n\
    \\NAKtrace_packet_defaults\CAN; \SOH(\v2$.perfetto.protos.TracePacketDefaultsR\DC3tracePacketDefaults\DC26\n\
    \\ETBprevious_packet_dropped\CAN* \SOH(\bR\NAKpreviousPacketDropped\DC27\n\
    \\CANfirst_packet_on_sequence\CANW \SOH(\bR\NAKfirstPacketOnSequence\"h\n\
    \\rSequenceFlags\DC2\DC3\n\
    \\SISEQ_UNSPECIFIED\DLE\NUL\DC2!\n\
    \\GSSEQ_INCREMENTAL_STATE_CLEARED\DLE\SOH\DC2\US\n\
    \\ESCSEQ_NEEDS_INCREMENTAL_STATE\DLE\STXB\ACK\n\
    \\EOTdataB\SYN\n\
    \\DC4optional_trusted_uidB%\n\
    \#optional_trusted_packet_sequence_idJ\148s\n\
    \\a\DC2\ENQ\DLE\NUL\197\STX\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2017 The Android Open Source Project\n\
    \\n\
    \ Licensed under the Apache License, Version 2.0 (the \"License\");\n\
    \ you may not use this file except in compliance with the License.\n\
    \ You may obtain a copy of the License at\n\
    \\n\
    \      http://www.apache.org/licenses/LICENSE-2.0\n\
    \\n\
    \ Unless required by applicable law or agreed to in writing, software\n\
    \ distributed under the License is distributed on an \"AS IS\" BASIS,\n\
    \ WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.\n\
    \ See the License for the specific language governing permissions and\n\
    \ limitations under the License.\n\
    \\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DC2\NUL2\n\
    \@\n\
    \\STX\ETX\SOH\DC2\ETX\DC4\NUL:\SUB5 import \"protos/perfetto/config/trace_config.proto\";\n\
    \\n\
    \Y\n\
    \\STX\ETX\STX\DC2\ETX\SYN\NUL9\SUBN import \"protos/perfetto/trace/android/android_game_intervention_list.proto\";\n\
    \\n\
    \\234\ACK\n\
    \\STX\ETX\ETX\DC2\ETX$\NUL4\SUB\222\ACK import \"protos/perfetto/trace/android/android_system_property.proto\";\n\
    \ import \"protos/perfetto/trace/android/camera_event.proto\";\n\
    \ import \"protos/perfetto/trace/android/frame_timeline_event.proto\";\n\
    \ import \"protos/perfetto/trace/android/gpu_mem_event.proto\";\n\
    \ import \"protos/perfetto/trace/android/graphics_frame_event.proto\";\n\
    \ import \"protos/perfetto/trace/android/initial_display_state.proto\";\n\
    \ import \"protos/perfetto/trace/android/network_trace.proto\";\n\
    \ import \"protos/perfetto/trace/android/packages_list.proto\";\n\
    \ import \"protos/perfetto/trace/android/surfaceflinger_layers.proto\";\n\
    \ import \"protos/perfetto/trace/android/surfaceflinger_transactions.proto\";\n\
    \ import \"protos/perfetto/trace/chrome/chrome_benchmark_metadata.proto\";\n\
    \ import \"protos/perfetto/trace/chrome/chrome_metadata.proto\";\n\
    \ import \"protos/perfetto/trace/chrome/chrome_trace_event.proto\";\n\
    \\n\
    \G\n\
    \\STX\ETX\EOT\DC2\ETX&\NUL?\SUB< import \"protos/perfetto/trace/etw/etw_event_bundle.proto\";\n\
    \\n\
    \\t\n\
    \\STX\ETX\ENQ\DC2\ETX'\NUL@\n\
    \\t\n\
    \\STX\ETX\ACK\DC2\ETX(\NUL9\n\
    \\185\STX\n\
    \\STX\ETX\a\DC2\ETX.\NULA\SUB\173\STX import \"protos/perfetto/trace/gpu/gpu_counter_event.proto\";\n\
    \ import \"protos/perfetto/trace/gpu/gpu_log.proto\";\n\
    \ import \"protos/perfetto/trace/gpu/gpu_render_stage_event.proto\";\n\
    \ import \"protos/perfetto/trace/gpu/vulkan_memory_event.proto\";\n\
    \ import \"protos/perfetto/trace/gpu/vulkan_api_event.proto\";\n\
    \\n\
    \\201\ACK\n\
    \\STX\ETX\b\DC2\ETX<\NUL6\SUB\189\ACK import \"protos/perfetto/trace/memory_graph.proto\";\n\
    \ import \"protos/perfetto/trace/perfetto/perfetto_metatrace.proto\";\n\
    \ import \"protos/perfetto/trace/perfetto/tracing_service_event.proto\";\n\
    \ import \"protos/perfetto/trace/power/android_energy_estimation_breakdown.proto\";\n\
    \ import \"protos/perfetto/trace/power/android_entity_state_residency.proto\";\n\
    \ import \"protos/perfetto/trace/power/battery_counters.proto\";\n\
    \ import \"protos/perfetto/trace/power/power_rails.proto\";\n\
    \ import \"protos/perfetto/trace/statsd/statsd_atom.proto\";\n\
    \ import \"protos/perfetto/trace/profiling/deobfuscation.proto\";\n\
    \ import \"protos/perfetto/trace/profiling/heap_graph.proto\";\n\
    \ import \"protos/perfetto/trace/profiling/profile_common.proto\";\n\
    \ import \"protos/perfetto/trace/profiling/profile_packet.proto\";\n\
    \ import \"protos/perfetto/trace/profiling/smaps.proto\";\n\
    \\n\
    \\t\n\
    \\STX\ETX\t\DC2\ETX=\NUL5\n\
    \\t\n\
    \\STX\ETX\n\
    \\DC2\ETX>\NUL9\n\
    \z\n\
    \\STX\ETX\v\DC2\ETXA\NUL;\SUBo import \"protos/perfetto/trace/system_info.proto\";\n\
    \ import \"protos/perfetto/trace/system_info/cpu_info.proto\";\n\
    \\n\
    \\220\SOH\n\
    \\STX\ETX\f\DC2\ETXE\NULB\SUB\208\SOH import \"protos/perfetto/trace/track_event/process_descriptor.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/range_of_interest.proto\";\n\
    \ import \"protos/perfetto/trace/track_event/thread_descriptor.proto\";\n\
    \\n\
    \\t\n\
    \\STX\ETX\r\DC2\ETXF\NUL=\n\
    \P\n\
    \\STX\ETX\SO\DC2\ETXH\NUL0\SUBE import \"protos/perfetto/trace/translation/translation_table.proto\";\n\
    \\n\
    \l\n\
    \\STX\ETX\SI\DC2\ETXJ\NUL0\SUB/ import \"protos/perfetto/trace/trigger.proto\";\n\
    \\"0 import \"protos/perfetto/trace/ui_state.proto\";\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETXM\NUL\CAN\n\
    \\213\a\n\
    \\STX\EOT\NUL\DC2\ENQd\NUL\197\STX\SOH\SUB\199\a TracePacket is the root object of a Perfetto trace.\n\
    \ A Perfetto trace is a linear sequence of TracePacket(s).\n\
    \\n\
    \ The tracing service guarantees that all TracePacket(s) written by a given\n\
    \ TraceWriter are seen in-order, without gaps or duplicates. If, for any\n\
    \ reason, a TraceWriter sequence becomes invalid, no more packets are returned\n\
    \ to the Consumer (or written into the trace file).\n\
    \ TracePacket(s) written by different TraceWriter(s), hence even different\n\
    \ data sources, can be seen in arbitrary order.\n\
    \ The consumer can re-establish a total order, if interested, using the packet\n\
    \ timestamps, after having synchronized the different clocks onto a global\n\
    \ clock.\n\
    \\n\
    \ The tracing service is agnostic of the content of TracePacket, with the\n\
    \ exception of few fields (e.g.. trusted_*, trace_config) that are written by\n\
    \ the service itself.\n\
    \\n\
    \ See the [Buffers and Dataflow](/docs/concepts/buffers.md) doc for details.\n\
    \\n\
    \ Next reserved id: 14 (up to 15).\n\
    \ Next id: 96.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXd\b\DC3\n\
    \\222\STX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXk\STX \SUB\208\STX The timestamp of the TracePacket.\n\
    \ By default this timestamps refers to the trace clock (CLOCK_BOOTTIME on\n\
    \ Android). It can be overridden using a different timestamp_clock_id.\n\
    \ The clock domain definition in ClockSnapshot can also override:\n\
    \ - The unit (default: 1ns).\n\
    \ - The absolute vs delta encoding (default: absolute timestamp).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXk\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETXk\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXk\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXk\RS\US\n\
    \\194\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXr\STX*\SUB\180\STX Specifies the ID of the clock used for the TracePacket |timestamp|. Can be\n\
    \ one of the built-in types from ClockSnapshot::BuiltinClocks, or a\n\
    \ producer-defined clock id.\n\
    \ If unspecified and if no default per-sequence value has been provided via\n\
    \ TracePacketDefaults, it defaults to BuiltinClocks::BOOTTIME.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXr\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXr\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXr\DC2$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXr')\n\
    \\r\n\
    \\EOT\EOT\NUL\b\NUL\DC2\ENQt\STX\229\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\b\NUL\SOH\DC2\ETXt\b\f\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXu\EOT!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXu\EOT\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXu\DLE\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXu\US \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXv\EOT#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXv\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXv\DC1\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXv!\"\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXw\EOT$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXw\EOT\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXw\DC1\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXw\"#\n\
    \3\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXy\EOT%\SUB& ChromeEventBundle chrome_events = 5;\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXy\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXy\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXy#$\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXz\EOT\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ACK\DC2\ETXz\EOT\f\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXz\r\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXz\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX{\EOT \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETX{\EOT\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX{\SI\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX{\GS\US\n\
    \\131\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT\128\SOH\EOT\RS2u IDs up to 15 are reserved. They take only one byte to encode their\n\
    \ preamble so should be used for frequent events.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ACK\DC2\EOT\128\SOH\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\128\SOH\SO\CAN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\128\SOH\ESC\GS\n\
    \.\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT\130\SOH\EOT\"\SUB  TraceConfig trace_config = 33;\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\EOT\130\SOH\EOT\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\130\SOH\DLE\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\130\SOH\US!\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOT\131\SOH\EOT \n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ACK\DC2\EOT\131\SOH\EOT\SO\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\131\SOH\SI\SUB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\131\SOH\GS\US\n\
    \\132\f\n\
    \\EOT\EOT\NUL\STX\v\DC2\EOT\137\SOH\EOT&\SUB\181\SOH ProfilePacket profile_packet = 37;\n\
    \ StreamingAllocation streaming_allocation = 74;\n\
    \ StreamingFree streaming_free = 75;\n\
    \ BatteryCounters battery = 38;\n\
    \ PowerRails power_rails = 40;\n\
    \\"\189\n\
    \ SystemInfo system_info = 45;\n\
    \ Trigger trigger = 46;\n\
    \ PackagesList packages_list = 47;\n\
    \ ChromeBenchmarkMetadata chrome_benchmark_metadata = 48;\n\
    \ PerfettoMetatrace perfetto_metatrace = 49;\n\
    \ ChromeMetadataPacket chrome_metadata = 51;\n\
    \ GpuCounterEvent gpu_counter_event = 52;\n\
    \ GpuRenderStageEvent gpu_render_stage_event = 53;\n\
    \ StreamingProfilePacket streaming_profile_packet = 54;\n\
    \ HeapGraph heap_graph = 56;\n\
    \ GraphicsFrameEvent graphics_frame_event = 57;\n\
    \ VulkanMemoryEvent vulkan_memory_event = 62;\n\
    \ GpuLog gpu_log = 63;\n\
    \ VulkanApiEvent vulkan_api_event = 65;\n\
    \ PerfSample perf_sample = 66;\n\
    \ CpuInfo cpu_info = 67;\n\
    \ SmapsPacket smaps_packet = 68;\n\
    \ TracingServiceEvent service_event = 69;\n\
    \ InitialDisplayState initial_display_state = 70;\n\
    \ GpuMemTotalEvent gpu_mem_total_event = 71;\n\
    \ MemoryTrackerSnapshot memory_tracker_snapshot = 73;\n\
    \ FrameTimelineEvent frame_timeline_event = 76;\n\
    \ AndroidEnergyEstimationBreakdown android_energy_estimation_breakdown = 77;\n\
    \ UiState ui_state = 78;\n\
    \ AndroidCameraFrameEvent android_camera_frame_event = 80;\n\
    \ AndroidCameraSessionStats android_camera_session_stats = 81;\n\
    \ TranslationTable translation_table = 82;\n\
    \ AndroidGameInterventionList android_game_intervention_list = 83;\n\
    \ StatsdAtom statsd_atom = 84;\n\
    \ AndroidSystemProperty android_system_property = 86;\n\
    \ EntityStateResidency entity_state_residency = 91;\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\EOT\137\SOH\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\EOT\137\SOH\NAK \n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\EOT\137\SOH#%\n\
    \\211\SOH\n\
    \\EOT\EOT\NUL\STX\f\DC2\EOT\176\SOH\EOT*\SUB\SUB Only used by TrackEvent.\n\
    \2\168\SOH Only used in profile packets.\n\
    \ ProfiledFrameSymbols profiled_frame_symbols = 55;\n\
    \ ModuleSymbols module_symbols = 61;\n\
    \ DeobfuscationMapping deobfuscation_mapping = 64;\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\EOT\176\SOH\EOT\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\176\SOH\DC4$\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\EOT\176\SOH')\n\
    \\241\SOH\n\
    \\EOT\EOT\NUL\STX\r\DC2\EOT\185\SOH\EOT(\SUB5 Events from the Linux kernel ftrace infrastructure.\n\
    \2V Deprecated, use TrackDescriptor instead.\n\
    \ ProcessDescriptor process_descriptor = 43;\n\
    \2T Deprecated, use TrackDescriptor instead.\n\
    \ ThreadDescriptor thread_descriptor = 44;\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ACK\DC2\EOT\185\SOH\EOT\NAK\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\EOT\185\SOH\SYN#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\EOT\185\SOH&'\n\
    \\137\STX\n\
    \\EOT\EOT\NUL\STX\SO\DC2\EOT\191\SOH\EOT&\SUB\250\SOH This field is emitted at periodic intervals (~10s) and\n\
    \ contains always the binary representation of the UUID\n\
    \ {82477a76-b28d-42ba-81dc-33326d57a079}. This is used to be able to\n\
    \ efficiently partition long traces without having to fully parse them.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ENQ\DC2\EOT\191\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\EOT\191\SOH\n\
    \ \n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\EOT\191\SOH#%\n\
    \\188\SOH\n\
    \\EOT\EOT\NUL\STX\SI\DC2\EOT\196\SOH\EOT\"\SUB\173\SOH Zero or more proto encoded trace packets compressed using deflate.\n\
    \ Each compressed_packets TracePacket (including the two field ids and\n\
    \ sizes) should be less than 512KB.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ENQ\DC2\EOT\196\SOH\EOT\t\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\EOT\196\SOH\n\
    \\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\EOT\196\SOH\US!\n\
    \\242\STX\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\EOT\203\SOH\EOT2\SUB\227\STX Data sources can extend the trace proto with custom extension protos (see\n\
    \ docs/design-docs/extensions.md). When they do that, the descriptor of\n\
    \ their extension proto descriptor is serialized in this packet. This\n\
    \ allows trace_processor to deserialize extended messages using reflection\n\
    \ even if the extension proto is not checked in the Perfetto repo.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\EOT\203\SOH\EOT\ETB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\EOT\203\SOH\CAN,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\EOT\203\SOH/1\n\
    \\154\a\n\
    \\EOT\EOT\NUL\STX\DC1\DC2\EOT\228\SOH\EOT \SUB\175\STX This field is only used for testing.\n\
    \ In previous versions of this proto this field had the id 268435455\n\
    \ This caused many problems:\n\
    \ - protozero decoder does not handle field ids larger than 999.\n\
    \ - old versions of protoc produce Java bindings with syntax errors when\n\
    \   the field id is large enough.\n\
    \2f Represents a single packet sent or received by the network.\n\
    \ NetworkPacketEvent network_packet = 88;\n\
    \2r Represents one or more packets sent or received by the network.\n\
    \ NetworkPacketBundle network_packet_bundle = 92;\n\
    \2\161\SOH The \"range of interest\" for track events. See the message definition\n\
    \ comments for more details.\n\
    \ TrackEventRangeOfInterest track_event_range_of_interest = 90;\n\
    \2\132\SOH Winscope traces\n\
    \ LayersSnapshotProto surfaceflinger_layers_snapshot = 93;\n\
    \ TransactionTraceEntry surfaceflinger_transactions = 94;\n\
    \2S Events from the Windows etw infrastructure.\n\
    \ EtwTraceEventBundle etw_events = 95;\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ACK\DC2\EOT\228\SOH\EOT\r\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\SOH\DC2\EOT\228\SOH\SO\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC1\ETX\DC2\EOT\228\SOH\FS\US\n\
    \\205\SOH\n\
    \\EOT\EOT\NUL\b\SOH\DC2\EOT\236\SOH\STX7\SUB\190\SOH Trusted user id of the producer which generated this packet. Keep in sync\n\
    \ with TrustedPacket.trusted_uid.\n\
    \\n\
    \ TODO(eseckler): Emit this field in a PacketSequenceDescriptor message\n\
    \ instead.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\SOH\SOH\DC2\EOT\236\SOH\b\FS\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\DC2\DC2\EOT\236\SOH\US5\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ENQ\DC2\EOT\236\SOH\US$\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\SOH\DC2\EOT\236\SOH%0\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC2\ETX\DC2\EOT\236\SOH34\n\
    \\140\STX\n\
    \\EOT\EOT\NUL\b\STX\DC2\ACK\242\SOH\STX\244\SOH\ETX\SUB\251\SOH Service-assigned identifier of the packet sequence this packet belongs to.\n\
    \ Uniquely identifies a producer + writer pair within the tracing session. A\n\
    \ value of zero denotes an invalid ID. Keep in sync with\n\
    \ TrustedPacket.trusted_packet_sequence_id.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\b\STX\SOH\DC2\EOT\242\SOH\b+\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\DC3\DC2\EOT\243\SOH\EOT+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ENQ\DC2\EOT\243\SOH\EOT\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\SOH\DC2\EOT\243\SOH\v%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC3\ETX\DC2\EOT\243\SOH(*\n\
    \h\n\
    \\EOT\EOT\NUL\STX\DC4\DC2\EOT\248\SOH\STX\"\SUBZ Trusted process id of the producer which generated this packet, written by\n\
    \ the service.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\EOT\DC2\EOT\248\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ENQ\DC2\EOT\248\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\SOH\DC2\EOT\248\SOH\DC1\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DC4\ETX\DC2\EOT\248\SOH\US!\n\
    \\242\STX\n\
    \\EOT\EOT\NUL\STX\NAK\DC2\EOT\255\SOH\STX+\SUB\227\STX Incrementally emitted interned data, valid only on the packet's sequence\n\
    \ (packets with the same |trusted_packet_sequence_id|). The writer will\n\
    \ usually emit new interned data in the same TracePacket that first refers to\n\
    \ it (since the last reset of interning state). It may also be emitted\n\
    \ proactively in advance of referring to them in later packets.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\EOT\DC2\EOT\255\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ACK\DC2\EOT\255\SOH\v\ETB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\SOH\DC2\EOT\255\SOH\CAN%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\NAK\ETX\DC2\EOT\255\SOH(*\n\
    \\SO\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\ACK\129\STX\STX\154\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\EOT\129\STX\a\DC4\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\EOT\130\STX\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\130\STX\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\130\STX\SYN\ETB\n\
    \\252\ENQ\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\EOT\146\STX\EOT&\SUB\235\ENQ Set by the writer to indicate that it will re-emit any incremental data\n\
    \ for the packet's sequence before referring to it again. This includes\n\
    \ interned data as well as periodically emitted data like\n\
    \ Process/ThreadDescriptors. This flag only affects the current packet\n\
    \ sequence (see |trusted_packet_sequence_id|).\n\
    \\n\
    \ When set, this TracePacket and subsequent TracePackets on the same\n\
    \ sequence will not refer to any incremental data emitted before this\n\
    \ TracePacket. For example, previously emitted interned data will be\n\
    \ re-emitted if it is referred to again.\n\
    \\n\
    \ When the reader detects packet loss (|previous_packet_dropped|), it needs\n\
    \ to skip packets in the sequence until the next one with this flag set, to\n\
    \ ensure intact incremental data.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\146\STX\EOT!\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\146\STX$%\n\
    \\217\STX\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\EOT\153\STX\EOT$\SUB\200\STX This packet requires incremental state, such as TracePacketDefaults or\n\
    \ InternedData, to be parsed correctly. The trace reader should skip this\n\
    \ packet if incremental state is not valid on this sequence, i.e. if no\n\
    \ packet with the SEQ_INCREMENTAL_STATE_CLEARED flag has been seen on the\n\
    \ current |trusted_packet_sequence_id|.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\EOT\153\STX\EOT\US\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\EOT\153\STX\"#\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\SYN\DC2\EOT\155\STX\STX&\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\EOT\DC2\EOT\155\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ENQ\DC2\EOT\155\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\SOH\DC2\EOT\155\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SYN\ETX\DC2\EOT\155\STX#%\n\
    \R\n\
    \\EOT\EOT\NUL\STX\ETB\DC2\EOT\158\STX\STX/\SUBD DEPRECATED. Moved to SequenceFlags::SEQ_INCREMENTAL_STATE_CLEARED.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\EOT\DC2\EOT\158\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\ENQ\DC2\EOT\158\STX\v\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\SOH\DC2\EOT\158\STX\DLE)\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETB\ETX\DC2\EOT\158\STX,.\n\
    \\247\ETX\n\
    \\EOT\EOT\NUL\STX\CAN\DC2\EOT\168\STX\STX:\SUB\232\ETX Default values for fields of later TracePackets emitted on this packet's\n\
    \ sequence (TracePackets with the same |trusted_packet_sequence_id|).\n\
    \ It must be reemitted when incremental state is cleared (see\n\
    \ |incremental_state_cleared|).\n\
    \ Requires that any future packet emitted on the same sequence specifies\n\
    \ the SEQ_NEEDS_INCREMENTAL_STATE flag.\n\
    \ TracePacketDefaults always override the global defaults for any future\n\
    \ packet on this sequence (regardless of SEQ_NEEDS_INCREMENTAL_STATE).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\EOT\DC2\EOT\168\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\ACK\DC2\EOT\168\STX\v\RS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\SOH\DC2\EOT\168\STX\US4\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\CAN\ETX\DC2\EOT\168\STX79\n\
    \\221\EOT\n\
    \\EOT\EOT\NUL\STX\EM\DC2\EOT\181\STX\STX-\SUB\206\EOT Flag set by the service if, for the current packet sequence (see\n\
    \ |trusted_packet_sequence_id|), either:\n\
    \ * this is the first packet, or\n\
    \ * one or multiple packets were dropped since the last packet that the\n\
    \   consumer read from the sequence. This can happen if chunks in the trace\n\
    \   buffer are overridden before the consumer could read them when the trace\n\
    \   is configured in ring buffer mode.\n\
    \\n\
    \ When packet loss occurs, incrementally emitted data (including interned\n\
    \ data) on the sequence should be considered invalid up until the next packet\n\
    \ with SEQ_INCREMENTAL_STATE_CLEARED set.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\EOT\DC2\EOT\181\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\ENQ\DC2\EOT\181\STX\v\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\SOH\DC2\EOT\181\STX\DLE'\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EM\ETX\DC2\EOT\181\STX*,\n\
    \\141\ENQ\n\
    \\EOT\EOT\NUL\STX\SUB\DC2\EOT\196\STX\STX.\SUB\254\EOT Flag set by a producer (starting from SDK v29) if, for the current packet\n\
    \ sequence (see |trusted_packet_sequence_id|), this is the first packet.\n\
    \\n\
    \ This flag can be used for distinguishing the two situations when\n\
    \ processing the trace:\n\
    \ 1. There are no prior events for the sequence because of data loss, e.g.\n\
    \    due to ring buffer wrapping.\n\
    \ 2. There are no prior events for the sequence because it didn't start\n\
    \    before this packet (= there's definitely no preceeding data loss).\n\
    \\n\
    \ Given that older SDK versions do not support this flag, this flag not\n\
    \ being present for a particular sequence does not necessarily imply data\n\
    \ loss.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\EOT\DC2\EOT\196\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\ENQ\DC2\EOT\196\STX\v\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\SOH\DC2\EOT\196\STX\DLE(\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SUB\ETX\DC2\EOT\196\STX+-"