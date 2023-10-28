{- This file was auto-generated from protos/perfetto/trace/profiling/profile_packet.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket (
        PerfSample(), PerfSample'OptionalUnwindError(..),
        PerfSample'OptionalSampleSkippedReason(..),
        _PerfSample'UnwindError, _PerfSample'SampleSkippedReason,
        PerfSample'ProducerEvent(),
        PerfSample'ProducerEvent'OptionalSourceStopReason(..),
        _PerfSample'ProducerEvent'SourceStopReason,
        PerfSample'ProducerEvent'DataSourceStopReason(..),
        PerfSample'ProducerEvent'DataSourceStopReason(),
        PerfSample'SampleSkipReason(..), PerfSample'SampleSkipReason(),
        PerfSampleDefaults(), ProfilePacket(), ProfilePacket'HeapSample(),
        ProfilePacket'Histogram(), ProfilePacket'Histogram'Bucket(),
        ProfilePacket'ProcessHeapSamples(),
        ProfilePacket'ProcessHeapSamples'ClientError(..),
        ProfilePacket'ProcessHeapSamples'ClientError(),
        ProfilePacket'ProcessStats(), Profiling(), Profiling'CpuMode(..),
        Profiling'CpuMode(), Profiling'StackUnwindError(..),
        Profiling'StackUnwindError(), StreamingAllocation(),
        StreamingFree(), StreamingProfilePacket()
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
import qualified Proto.Protos.Perfetto.Common.PerfEvents
import qualified Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.cpu' @:: Lens' PerfSample Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'cpu' @:: Lens' PerfSample (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.pid' @:: Lens' PerfSample Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'pid' @:: Lens' PerfSample (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.tid' @:: Lens' PerfSample Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'tid' @:: Lens' PerfSample (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.cpuMode' @:: Lens' PerfSample Profiling'CpuMode@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'cpuMode' @:: Lens' PerfSample (Prelude.Maybe Profiling'CpuMode)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.timebaseCount' @:: Lens' PerfSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'timebaseCount' @:: Lens' PerfSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.callstackIid' @:: Lens' PerfSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'callstackIid' @:: Lens' PerfSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.kernelRecordsLost' @:: Lens' PerfSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'kernelRecordsLost' @:: Lens' PerfSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.producerEvent' @:: Lens' PerfSample PerfSample'ProducerEvent@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'producerEvent' @:: Lens' PerfSample (Prelude.Maybe PerfSample'ProducerEvent)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'optionalUnwindError' @:: Lens' PerfSample (Prelude.Maybe PerfSample'OptionalUnwindError)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'unwindError' @:: Lens' PerfSample (Prelude.Maybe Profiling'StackUnwindError)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.unwindError' @:: Lens' PerfSample Profiling'StackUnwindError@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'optionalSampleSkippedReason' @:: Lens' PerfSample (Prelude.Maybe PerfSample'OptionalSampleSkippedReason)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'sampleSkippedReason' @:: Lens' PerfSample (Prelude.Maybe PerfSample'SampleSkipReason)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.sampleSkippedReason' @:: Lens' PerfSample PerfSample'SampleSkipReason@ -}
data PerfSample
  = PerfSample'_constructor {_PerfSample'cpu :: !(Prelude.Maybe Data.Word.Word32),
                             _PerfSample'pid :: !(Prelude.Maybe Data.Word.Word32),
                             _PerfSample'tid :: !(Prelude.Maybe Data.Word.Word32),
                             _PerfSample'cpuMode :: !(Prelude.Maybe Profiling'CpuMode),
                             _PerfSample'timebaseCount :: !(Prelude.Maybe Data.Word.Word64),
                             _PerfSample'callstackIid :: !(Prelude.Maybe Data.Word.Word64),
                             _PerfSample'kernelRecordsLost :: !(Prelude.Maybe Data.Word.Word64),
                             _PerfSample'producerEvent :: !(Prelude.Maybe PerfSample'ProducerEvent),
                             _PerfSample'optionalUnwindError :: !(Prelude.Maybe PerfSample'OptionalUnwindError),
                             _PerfSample'optionalSampleSkippedReason :: !(Prelude.Maybe PerfSample'OptionalSampleSkippedReason),
                             _PerfSample'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerfSample where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PerfSample'OptionalUnwindError
  = PerfSample'UnwindError !Profiling'StackUnwindError
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data PerfSample'OptionalSampleSkippedReason
  = PerfSample'SampleSkippedReason !PerfSample'SampleSkipReason
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PerfSample "cpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'cpu (\ x__ y__ -> x__ {_PerfSample'cpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfSample "maybe'cpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'cpu (\ x__ y__ -> x__ {_PerfSample'cpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "pid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'pid (\ x__ y__ -> x__ {_PerfSample'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfSample "maybe'pid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'pid (\ x__ y__ -> x__ {_PerfSample'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "tid" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'tid (\ x__ y__ -> x__ {_PerfSample'tid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfSample "maybe'tid" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'tid (\ x__ y__ -> x__ {_PerfSample'tid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "cpuMode" Profiling'CpuMode where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'cpuMode (\ x__ y__ -> x__ {_PerfSample'cpuMode = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfSample "maybe'cpuMode" (Prelude.Maybe Profiling'CpuMode) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'cpuMode (\ x__ y__ -> x__ {_PerfSample'cpuMode = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "timebaseCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'timebaseCount
           (\ x__ y__ -> x__ {_PerfSample'timebaseCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfSample "maybe'timebaseCount" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'timebaseCount
           (\ x__ y__ -> x__ {_PerfSample'timebaseCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "callstackIid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'callstackIid
           (\ x__ y__ -> x__ {_PerfSample'callstackIid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfSample "maybe'callstackIid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'callstackIid
           (\ x__ y__ -> x__ {_PerfSample'callstackIid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "kernelRecordsLost" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'kernelRecordsLost
           (\ x__ y__ -> x__ {_PerfSample'kernelRecordsLost = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfSample "maybe'kernelRecordsLost" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'kernelRecordsLost
           (\ x__ y__ -> x__ {_PerfSample'kernelRecordsLost = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "producerEvent" PerfSample'ProducerEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'producerEvent
           (\ x__ y__ -> x__ {_PerfSample'producerEvent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PerfSample "maybe'producerEvent" (Prelude.Maybe PerfSample'ProducerEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'producerEvent
           (\ x__ y__ -> x__ {_PerfSample'producerEvent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "maybe'optionalUnwindError" (Prelude.Maybe PerfSample'OptionalUnwindError) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'optionalUnwindError
           (\ x__ y__ -> x__ {_PerfSample'optionalUnwindError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "maybe'unwindError" (Prelude.Maybe Profiling'StackUnwindError) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'optionalUnwindError
           (\ x__ y__ -> x__ {_PerfSample'optionalUnwindError = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerfSample'UnwindError x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerfSample'UnwindError y__))
instance Data.ProtoLens.Field.HasField PerfSample "unwindError" Profiling'StackUnwindError where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'optionalUnwindError
           (\ x__ y__ -> x__ {_PerfSample'optionalUnwindError = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerfSample'UnwindError x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerfSample'UnwindError y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField PerfSample "maybe'optionalSampleSkippedReason" (Prelude.Maybe PerfSample'OptionalSampleSkippedReason) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'optionalSampleSkippedReason
           (\ x__ y__ -> x__ {_PerfSample'optionalSampleSkippedReason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample "maybe'sampleSkippedReason" (Prelude.Maybe PerfSample'SampleSkipReason) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'optionalSampleSkippedReason
           (\ x__ y__ -> x__ {_PerfSample'optionalSampleSkippedReason = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerfSample'SampleSkippedReason x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerfSample'SampleSkippedReason y__))
instance Data.ProtoLens.Field.HasField PerfSample "sampleSkippedReason" PerfSample'SampleSkipReason where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'optionalSampleSkippedReason
           (\ x__ y__ -> x__ {_PerfSample'optionalSampleSkippedReason = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerfSample'SampleSkippedReason x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerfSample'SampleSkippedReason y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message PerfSample where
  messageName _ = Data.Text.pack "perfetto.protos.PerfSample"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \PerfSample\DC2\DLE\n\
      \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\rR\ETXpid\DC2\DLE\n\
      \\ETXtid\CAN\ETX \SOH(\rR\ETXtid\DC2=\n\
      \\bcpu_mode\CAN\ENQ \SOH(\SO2\".perfetto.protos.Profiling.CpuModeR\acpuMode\DC2%\n\
      \\SOtimebase_count\CAN\ACK \SOH(\EOTR\rtimebaseCount\DC2#\n\
      \\rcallstack_iid\CAN\EOT \SOH(\EOTR\fcallstackIid\DC2P\n\
      \\funwind_error\CAN\DLE \SOH(\SO2+.perfetto.protos.Profiling.StackUnwindErrorH\NULR\vunwindError\DC2.\n\
      \\DC3kernel_records_lost\CAN\DC1 \SOH(\EOTR\DC1kernelRecordsLost\DC2b\n\
      \\NAKsample_skipped_reason\CAN\DC2 \SOH(\SO2,.perfetto.protos.PerfSample.SampleSkipReasonH\SOHR\DC3sampleSkippedReason\DC2P\n\
      \\SOproducer_event\CAN\DC3 \SOH(\v2).perfetto.protos.PerfSample.ProducerEventR\rproducerEvent\SUB\238\SOH\n\
      \\rProducerEvent\DC2n\n\
      \\DC2source_stop_reason\CAN\SOH \SOH(\SO2>.perfetto.protos.PerfSample.ProducerEvent.DataSourceStopReasonH\NULR\DLEsourceStopReason\"N\n\
      \\DC4DataSourceStopReason\DC2\EM\n\
      \\NAKPROFILER_STOP_UNKNOWN\DLE\NUL\DC2\ESC\n\
      \\ETBPROFILER_STOP_GUARDRAIL\DLE\SOHB\GS\n\
      \\ESCoptional_source_stop_reason\"\141\SOH\n\
      \\DLESampleSkipReason\DC2\EM\n\
      \\NAKPROFILER_SKIP_UNKNOWN\DLE\NUL\DC2\FS\n\
      \\CANPROFILER_SKIP_READ_STAGE\DLE\SOH\DC2\RS\n\
      \\SUBPROFILER_SKIP_UNWIND_STAGE\DLE\STX\DC2 \n\
      \\FSPROFILER_SKIP_UNWIND_ENQUEUE\DLE\ETXB\ETB\n\
      \\NAKoptional_unwind_errorB \n\
      \\RSoptional_sample_skipped_reason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpu")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
        tid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tid")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
        cpuMode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_mode"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Profiling'CpuMode)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuMode")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
        timebaseCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timebase_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timebaseCount")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
        callstackIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callstack_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callstackIid")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
        kernelRecordsLost__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kernel_records_lost"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kernelRecordsLost")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
        producerEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "producer_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PerfSample'ProducerEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'producerEvent")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
        unwindError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unwind_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Profiling'StackUnwindError)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unwindError")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
        sampleSkippedReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sample_skipped_reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor PerfSample'SampleSkipReason)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sampleSkippedReason")) ::
              Data.ProtoLens.FieldDescriptor PerfSample
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cpu__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, tid__field_descriptor),
           (Data.ProtoLens.Tag 5, cpuMode__field_descriptor),
           (Data.ProtoLens.Tag 6, timebaseCount__field_descriptor),
           (Data.ProtoLens.Tag 4, callstackIid__field_descriptor),
           (Data.ProtoLens.Tag 17, kernelRecordsLost__field_descriptor),
           (Data.ProtoLens.Tag 19, producerEvent__field_descriptor),
           (Data.ProtoLens.Tag 16, unwindError__field_descriptor),
           (Data.ProtoLens.Tag 18, sampleSkippedReason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerfSample'_unknownFields
        (\ x__ y__ -> x__ {_PerfSample'_unknownFields = y__})
  defMessage
    = PerfSample'_constructor
        {_PerfSample'cpu = Prelude.Nothing,
         _PerfSample'pid = Prelude.Nothing,
         _PerfSample'tid = Prelude.Nothing,
         _PerfSample'cpuMode = Prelude.Nothing,
         _PerfSample'timebaseCount = Prelude.Nothing,
         _PerfSample'callstackIid = Prelude.Nothing,
         _PerfSample'kernelRecordsLost = Prelude.Nothing,
         _PerfSample'producerEvent = Prelude.Nothing,
         _PerfSample'optionalUnwindError = Prelude.Nothing,
         _PerfSample'optionalSampleSkippedReason = Prelude.Nothing,
         _PerfSample'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerfSample -> Data.ProtoLens.Encoding.Bytes.Parser PerfSample
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpu") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tid"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"tid") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "cpu_mode"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpuMode") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "timebase_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timebaseCount") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "callstack_iid"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"callstackIid") y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "kernel_records_lost"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"kernelRecordsLost") y x)
                        154
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "producer_event"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"producerEvent") y x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "unwind_error"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unwindError") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "sample_skipped_reason"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sampleSkippedReason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PerfSample"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpu") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tid") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpuMode") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                ((Prelude..)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                   Prelude.fromEnum _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'timebaseCount") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'callstackIid") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'kernelRecordsLost") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 136)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'producerEvent") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 154)
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
                                            (Data.ProtoLens.Field.field
                                               @"maybe'optionalUnwindError")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just (PerfSample'UnwindError v))
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 128)
                                               ((Prelude..)
                                                  ((Prelude..)
                                                     Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     Prelude.fromIntegral)
                                                  Prelude.fromEnum v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'optionalSampleSkippedReason")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just (PerfSample'SampleSkippedReason v))
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 144)
                                                  ((Prelude..)
                                                     ((Prelude..)
                                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        Prelude.fromIntegral)
                                                     Prelude.fromEnum v))
                                        (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                           (Lens.Family2.view
                                              Data.ProtoLens.unknownFields _x)))))))))))
instance Control.DeepSeq.NFData PerfSample where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerfSample'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PerfSample'cpu x__)
                (Control.DeepSeq.deepseq
                   (_PerfSample'pid x__)
                   (Control.DeepSeq.deepseq
                      (_PerfSample'tid x__)
                      (Control.DeepSeq.deepseq
                         (_PerfSample'cpuMode x__)
                         (Control.DeepSeq.deepseq
                            (_PerfSample'timebaseCount x__)
                            (Control.DeepSeq.deepseq
                               (_PerfSample'callstackIid x__)
                               (Control.DeepSeq.deepseq
                                  (_PerfSample'kernelRecordsLost x__)
                                  (Control.DeepSeq.deepseq
                                     (_PerfSample'producerEvent x__)
                                     (Control.DeepSeq.deepseq
                                        (_PerfSample'optionalUnwindError x__)
                                        (Control.DeepSeq.deepseq
                                           (_PerfSample'optionalSampleSkippedReason x__)
                                           ()))))))))))
instance Control.DeepSeq.NFData PerfSample'OptionalUnwindError where
  rnf (PerfSample'UnwindError x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData PerfSample'OptionalSampleSkippedReason where
  rnf (PerfSample'SampleSkippedReason x__) = Control.DeepSeq.rnf x__
_PerfSample'UnwindError ::
  Data.ProtoLens.Prism.Prism' PerfSample'OptionalUnwindError Profiling'StackUnwindError
_PerfSample'UnwindError
  = Data.ProtoLens.Prism.prism'
      PerfSample'UnwindError
      (\ p__
         -> case p__ of
              (PerfSample'UnwindError p__val) -> Prelude.Just p__val)
_PerfSample'SampleSkippedReason ::
  Data.ProtoLens.Prism.Prism' PerfSample'OptionalSampleSkippedReason PerfSample'SampleSkipReason
_PerfSample'SampleSkippedReason
  = Data.ProtoLens.Prism.prism'
      PerfSample'SampleSkippedReason
      (\ p__
         -> case p__ of
              (PerfSample'SampleSkippedReason p__val) -> Prelude.Just p__val)
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'optionalSourceStopReason' @:: Lens' PerfSample'ProducerEvent (Prelude.Maybe PerfSample'ProducerEvent'OptionalSourceStopReason)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'sourceStopReason' @:: Lens' PerfSample'ProducerEvent (Prelude.Maybe PerfSample'ProducerEvent'DataSourceStopReason)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.sourceStopReason' @:: Lens' PerfSample'ProducerEvent PerfSample'ProducerEvent'DataSourceStopReason@ -}
data PerfSample'ProducerEvent
  = PerfSample'ProducerEvent'_constructor {_PerfSample'ProducerEvent'optionalSourceStopReason :: !(Prelude.Maybe PerfSample'ProducerEvent'OptionalSourceStopReason),
                                           _PerfSample'ProducerEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerfSample'ProducerEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PerfSample'ProducerEvent'OptionalSourceStopReason
  = PerfSample'ProducerEvent'SourceStopReason !PerfSample'ProducerEvent'DataSourceStopReason
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PerfSample'ProducerEvent "maybe'optionalSourceStopReason" (Prelude.Maybe PerfSample'ProducerEvent'OptionalSourceStopReason) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'ProducerEvent'optionalSourceStopReason
           (\ x__ y__
              -> x__ {_PerfSample'ProducerEvent'optionalSourceStopReason = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSample'ProducerEvent "maybe'sourceStopReason" (Prelude.Maybe PerfSample'ProducerEvent'DataSourceStopReason) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'ProducerEvent'optionalSourceStopReason
           (\ x__ y__
              -> x__ {_PerfSample'ProducerEvent'optionalSourceStopReason = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerfSample'ProducerEvent'SourceStopReason x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap PerfSample'ProducerEvent'SourceStopReason y__))
instance Data.ProtoLens.Field.HasField PerfSample'ProducerEvent "sourceStopReason" PerfSample'ProducerEvent'DataSourceStopReason where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSample'ProducerEvent'optionalSourceStopReason
           (\ x__ y__
              -> x__ {_PerfSample'ProducerEvent'optionalSourceStopReason = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerfSample'ProducerEvent'SourceStopReason x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap PerfSample'ProducerEvent'SourceStopReason y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message PerfSample'ProducerEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.PerfSample.ProducerEvent"
  packedMessageDescriptor _
    = "\n\
      \\rProducerEvent\DC2n\n\
      \\DC2source_stop_reason\CAN\SOH \SOH(\SO2>.perfetto.protos.PerfSample.ProducerEvent.DataSourceStopReasonH\NULR\DLEsourceStopReason\"N\n\
      \\DC4DataSourceStopReason\DC2\EM\n\
      \\NAKPROFILER_STOP_UNKNOWN\DLE\NUL\DC2\ESC\n\
      \\ETBPROFILER_STOP_GUARDRAIL\DLE\SOHB\GS\n\
      \\ESCoptional_source_stop_reason"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sourceStopReason__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "source_stop_reason"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor PerfSample'ProducerEvent'DataSourceStopReason)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sourceStopReason")) ::
              Data.ProtoLens.FieldDescriptor PerfSample'ProducerEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sourceStopReason__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerfSample'ProducerEvent'_unknownFields
        (\ x__ y__ -> x__ {_PerfSample'ProducerEvent'_unknownFields = y__})
  defMessage
    = PerfSample'ProducerEvent'_constructor
        {_PerfSample'ProducerEvent'optionalSourceStopReason = Prelude.Nothing,
         _PerfSample'ProducerEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerfSample'ProducerEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser PerfSample'ProducerEvent
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "source_stop_reason"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"sourceStopReason") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProducerEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'optionalSourceStopReason") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just (PerfSample'ProducerEvent'SourceStopReason v))
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData PerfSample'ProducerEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerfSample'ProducerEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PerfSample'ProducerEvent'optionalSourceStopReason x__) ())
instance Control.DeepSeq.NFData PerfSample'ProducerEvent'OptionalSourceStopReason where
  rnf (PerfSample'ProducerEvent'SourceStopReason x__)
    = Control.DeepSeq.rnf x__
_PerfSample'ProducerEvent'SourceStopReason ::
  Data.ProtoLens.Prism.Prism' PerfSample'ProducerEvent'OptionalSourceStopReason PerfSample'ProducerEvent'DataSourceStopReason
_PerfSample'ProducerEvent'SourceStopReason
  = Data.ProtoLens.Prism.prism'
      PerfSample'ProducerEvent'SourceStopReason
      (\ p__
         -> case p__ of
              (PerfSample'ProducerEvent'SourceStopReason p__val)
                -> Prelude.Just p__val)
data PerfSample'ProducerEvent'DataSourceStopReason
  = PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN |
    PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum PerfSample'ProducerEvent'DataSourceStopReason where
  maybeToEnum 0
    = Prelude.Just PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN
  maybeToEnum 1
    = Prelude.Just PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL
  maybeToEnum _ = Prelude.Nothing
  showEnum PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN
    = "PROFILER_STOP_UNKNOWN"
  showEnum PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL
    = "PROFILER_STOP_GUARDRAIL"
  readEnum k
    | (Prelude.==) k "PROFILER_STOP_UNKNOWN"
    = Prelude.Just PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN
    | (Prelude.==) k "PROFILER_STOP_GUARDRAIL"
    = Prelude.Just PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded PerfSample'ProducerEvent'DataSourceStopReason where
  minBound = PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN
  maxBound = PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL
instance Prelude.Enum PerfSample'ProducerEvent'DataSourceStopReason where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum DataSourceStopReason: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN = 0
  fromEnum PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL = 1
  succ PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL
    = Prelude.error
        "PerfSample'ProducerEvent'DataSourceStopReason.succ: bad argument PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL. This value would be out of bounds."
  succ PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN
    = PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL
  pred PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN
    = Prelude.error
        "PerfSample'ProducerEvent'DataSourceStopReason.pred: bad argument PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN. This value would be out of bounds."
  pred PerfSample'ProducerEvent'PROFILER_STOP_GUARDRAIL
    = PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault PerfSample'ProducerEvent'DataSourceStopReason where
  fieldDefault = PerfSample'ProducerEvent'PROFILER_STOP_UNKNOWN
instance Control.DeepSeq.NFData PerfSample'ProducerEvent'DataSourceStopReason where
  rnf x__ = Prelude.seq x__ ()
data PerfSample'SampleSkipReason
  = PerfSample'PROFILER_SKIP_UNKNOWN |
    PerfSample'PROFILER_SKIP_READ_STAGE |
    PerfSample'PROFILER_SKIP_UNWIND_STAGE |
    PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum PerfSample'SampleSkipReason where
  maybeToEnum 0 = Prelude.Just PerfSample'PROFILER_SKIP_UNKNOWN
  maybeToEnum 1 = Prelude.Just PerfSample'PROFILER_SKIP_READ_STAGE
  maybeToEnum 2 = Prelude.Just PerfSample'PROFILER_SKIP_UNWIND_STAGE
  maybeToEnum 3
    = Prelude.Just PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE
  maybeToEnum _ = Prelude.Nothing
  showEnum PerfSample'PROFILER_SKIP_UNKNOWN = "PROFILER_SKIP_UNKNOWN"
  showEnum PerfSample'PROFILER_SKIP_READ_STAGE
    = "PROFILER_SKIP_READ_STAGE"
  showEnum PerfSample'PROFILER_SKIP_UNWIND_STAGE
    = "PROFILER_SKIP_UNWIND_STAGE"
  showEnum PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE
    = "PROFILER_SKIP_UNWIND_ENQUEUE"
  readEnum k
    | (Prelude.==) k "PROFILER_SKIP_UNKNOWN"
    = Prelude.Just PerfSample'PROFILER_SKIP_UNKNOWN
    | (Prelude.==) k "PROFILER_SKIP_READ_STAGE"
    = Prelude.Just PerfSample'PROFILER_SKIP_READ_STAGE
    | (Prelude.==) k "PROFILER_SKIP_UNWIND_STAGE"
    = Prelude.Just PerfSample'PROFILER_SKIP_UNWIND_STAGE
    | (Prelude.==) k "PROFILER_SKIP_UNWIND_ENQUEUE"
    = Prelude.Just PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded PerfSample'SampleSkipReason where
  minBound = PerfSample'PROFILER_SKIP_UNKNOWN
  maxBound = PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE
instance Prelude.Enum PerfSample'SampleSkipReason where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum SampleSkipReason: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PerfSample'PROFILER_SKIP_UNKNOWN = 0
  fromEnum PerfSample'PROFILER_SKIP_READ_STAGE = 1
  fromEnum PerfSample'PROFILER_SKIP_UNWIND_STAGE = 2
  fromEnum PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE = 3
  succ PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE
    = Prelude.error
        "PerfSample'SampleSkipReason.succ: bad argument PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE. This value would be out of bounds."
  succ PerfSample'PROFILER_SKIP_UNKNOWN
    = PerfSample'PROFILER_SKIP_READ_STAGE
  succ PerfSample'PROFILER_SKIP_READ_STAGE
    = PerfSample'PROFILER_SKIP_UNWIND_STAGE
  succ PerfSample'PROFILER_SKIP_UNWIND_STAGE
    = PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE
  pred PerfSample'PROFILER_SKIP_UNKNOWN
    = Prelude.error
        "PerfSample'SampleSkipReason.pred: bad argument PerfSample'PROFILER_SKIP_UNKNOWN. This value would be out of bounds."
  pred PerfSample'PROFILER_SKIP_READ_STAGE
    = PerfSample'PROFILER_SKIP_UNKNOWN
  pred PerfSample'PROFILER_SKIP_UNWIND_STAGE
    = PerfSample'PROFILER_SKIP_READ_STAGE
  pred PerfSample'PROFILER_SKIP_UNWIND_ENQUEUE
    = PerfSample'PROFILER_SKIP_UNWIND_STAGE
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault PerfSample'SampleSkipReason where
  fieldDefault = PerfSample'PROFILER_SKIP_UNKNOWN
instance Control.DeepSeq.NFData PerfSample'SampleSkipReason where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.timebase' @:: Lens' PerfSampleDefaults Proto.Protos.Perfetto.Common.PerfEvents.PerfEvents'Timebase@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'timebase' @:: Lens' PerfSampleDefaults (Prelude.Maybe Proto.Protos.Perfetto.Common.PerfEvents.PerfEvents'Timebase)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.processShardCount' @:: Lens' PerfSampleDefaults Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'processShardCount' @:: Lens' PerfSampleDefaults (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.chosenProcessShard' @:: Lens' PerfSampleDefaults Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'chosenProcessShard' @:: Lens' PerfSampleDefaults (Prelude.Maybe Data.Word.Word32)@ -}
data PerfSampleDefaults
  = PerfSampleDefaults'_constructor {_PerfSampleDefaults'timebase :: !(Prelude.Maybe Proto.Protos.Perfetto.Common.PerfEvents.PerfEvents'Timebase),
                                     _PerfSampleDefaults'processShardCount :: !(Prelude.Maybe Data.Word.Word32),
                                     _PerfSampleDefaults'chosenProcessShard :: !(Prelude.Maybe Data.Word.Word32),
                                     _PerfSampleDefaults'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerfSampleDefaults where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PerfSampleDefaults "timebase" Proto.Protos.Perfetto.Common.PerfEvents.PerfEvents'Timebase where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSampleDefaults'timebase
           (\ x__ y__ -> x__ {_PerfSampleDefaults'timebase = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField PerfSampleDefaults "maybe'timebase" (Prelude.Maybe Proto.Protos.Perfetto.Common.PerfEvents.PerfEvents'Timebase) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSampleDefaults'timebase
           (\ x__ y__ -> x__ {_PerfSampleDefaults'timebase = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSampleDefaults "processShardCount" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSampleDefaults'processShardCount
           (\ x__ y__ -> x__ {_PerfSampleDefaults'processShardCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfSampleDefaults "maybe'processShardCount" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSampleDefaults'processShardCount
           (\ x__ y__ -> x__ {_PerfSampleDefaults'processShardCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfSampleDefaults "chosenProcessShard" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSampleDefaults'chosenProcessShard
           (\ x__ y__ -> x__ {_PerfSampleDefaults'chosenProcessShard = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfSampleDefaults "maybe'chosenProcessShard" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfSampleDefaults'chosenProcessShard
           (\ x__ y__ -> x__ {_PerfSampleDefaults'chosenProcessShard = y__}))
        Prelude.id
instance Data.ProtoLens.Message PerfSampleDefaults where
  messageName _ = Data.Text.pack "perfetto.protos.PerfSampleDefaults"
  packedMessageDescriptor _
    = "\n\
      \\DC2PerfSampleDefaults\DC2@\n\
      \\btimebase\CAN\SOH \SOH(\v2$.perfetto.protos.PerfEvents.TimebaseR\btimebase\DC2.\n\
      \\DC3process_shard_count\CAN\STX \SOH(\rR\DC1processShardCount\DC20\n\
      \\DC4chosen_process_shard\CAN\ETX \SOH(\rR\DC2chosenProcessShard"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timebase__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timebase"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Common.PerfEvents.PerfEvents'Timebase)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timebase")) ::
              Data.ProtoLens.FieldDescriptor PerfSampleDefaults
        processShardCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_shard_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processShardCount")) ::
              Data.ProtoLens.FieldDescriptor PerfSampleDefaults
        chosenProcessShard__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chosen_process_shard"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chosenProcessShard")) ::
              Data.ProtoLens.FieldDescriptor PerfSampleDefaults
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, timebase__field_descriptor),
           (Data.ProtoLens.Tag 2, processShardCount__field_descriptor),
           (Data.ProtoLens.Tag 3, chosenProcessShard__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerfSampleDefaults'_unknownFields
        (\ x__ y__ -> x__ {_PerfSampleDefaults'_unknownFields = y__})
  defMessage
    = PerfSampleDefaults'_constructor
        {_PerfSampleDefaults'timebase = Prelude.Nothing,
         _PerfSampleDefaults'processShardCount = Prelude.Nothing,
         _PerfSampleDefaults'chosenProcessShard = Prelude.Nothing,
         _PerfSampleDefaults'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerfSampleDefaults
          -> Data.ProtoLens.Encoding.Bytes.Parser PerfSampleDefaults
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
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "timebase"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timebase") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "process_shard_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"processShardCount") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "chosen_process_shard"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chosenProcessShard") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "PerfSampleDefaults"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'timebase") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                       (Data.ProtoLens.Field.field @"maybe'processShardCount") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'chosenProcessShard") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData PerfSampleDefaults where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerfSampleDefaults'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PerfSampleDefaults'timebase x__)
                (Control.DeepSeq.deepseq
                   (_PerfSampleDefaults'processShardCount x__)
                   (Control.DeepSeq.deepseq
                      (_PerfSampleDefaults'chosenProcessShard x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.strings' @:: Lens' ProfilePacket [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'strings' @:: Lens' ProfilePacket (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.mappings' @:: Lens' ProfilePacket [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'mappings' @:: Lens' ProfilePacket (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.frames' @:: Lens' ProfilePacket [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'frames' @:: Lens' ProfilePacket (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.callstacks' @:: Lens' ProfilePacket [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'callstacks' @:: Lens' ProfilePacket (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.processDumps' @:: Lens' ProfilePacket [ProfilePacket'ProcessHeapSamples]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'processDumps' @:: Lens' ProfilePacket (Data.Vector.Vector ProfilePacket'ProcessHeapSamples)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.continued' @:: Lens' ProfilePacket Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'continued' @:: Lens' ProfilePacket (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.index' @:: Lens' ProfilePacket Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'index' @:: Lens' ProfilePacket (Prelude.Maybe Data.Word.Word64)@ -}
data ProfilePacket
  = ProfilePacket'_constructor {_ProfilePacket'strings :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString),
                                _ProfilePacket'mappings :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping),
                                _ProfilePacket'frames :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame),
                                _ProfilePacket'callstacks :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack),
                                _ProfilePacket'processDumps :: !(Data.Vector.Vector ProfilePacket'ProcessHeapSamples),
                                _ProfilePacket'continued :: !(Prelude.Maybe Prelude.Bool),
                                _ProfilePacket'index :: !(Prelude.Maybe Data.Word.Word64),
                                _ProfilePacket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProfilePacket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProfilePacket "strings" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'strings
           (\ x__ y__ -> x__ {_ProfilePacket'strings = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfilePacket "vec'strings" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'strings
           (\ x__ y__ -> x__ {_ProfilePacket'strings = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket "mappings" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'mappings
           (\ x__ y__ -> x__ {_ProfilePacket'mappings = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfilePacket "vec'mappings" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'mappings
           (\ x__ y__ -> x__ {_ProfilePacket'mappings = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket "frames" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'frames
           (\ x__ y__ -> x__ {_ProfilePacket'frames = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfilePacket "vec'frames" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'frames
           (\ x__ y__ -> x__ {_ProfilePacket'frames = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket "callstacks" [Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'callstacks
           (\ x__ y__ -> x__ {_ProfilePacket'callstacks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfilePacket "vec'callstacks" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'callstacks
           (\ x__ y__ -> x__ {_ProfilePacket'callstacks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket "processDumps" [ProfilePacket'ProcessHeapSamples] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'processDumps
           (\ x__ y__ -> x__ {_ProfilePacket'processDumps = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfilePacket "vec'processDumps" (Data.Vector.Vector ProfilePacket'ProcessHeapSamples) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'processDumps
           (\ x__ y__ -> x__ {_ProfilePacket'processDumps = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket "continued" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'continued
           (\ x__ y__ -> x__ {_ProfilePacket'continued = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket "maybe'continued" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'continued
           (\ x__ y__ -> x__ {_ProfilePacket'continued = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket "index" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'index
           (\ x__ y__ -> x__ {_ProfilePacket'index = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket "maybe'index" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'index
           (\ x__ y__ -> x__ {_ProfilePacket'index = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProfilePacket where
  messageName _ = Data.Text.pack "perfetto.protos.ProfilePacket"
  packedMessageDescriptor _
    = "\n\
      \\rProfilePacket\DC29\n\
      \\astrings\CAN\SOH \ETX(\v2\US.perfetto.protos.InternedStringR\astrings\DC24\n\
      \\bmappings\CAN\EOT \ETX(\v2\CAN.perfetto.protos.MappingR\bmappings\DC2.\n\
      \\ACKframes\CAN\STX \ETX(\v2\SYN.perfetto.protos.FrameR\ACKframes\DC2:\n\
      \\n\
      \callstacks\CAN\ETX \ETX(\v2\SUB.perfetto.protos.CallstackR\n\
      \callstacks\DC2V\n\
      \\rprocess_dumps\CAN\ENQ \ETX(\v21.perfetto.protos.ProfilePacket.ProcessHeapSamplesR\fprocessDumps\DC2\FS\n\
      \\tcontinued\CAN\ACK \SOH(\bR\tcontinued\DC2\DC4\n\
      \\ENQindex\CAN\a \SOH(\EOTR\ENQindex\SUB\154\STX\n\
      \\n\
      \HeapSample\DC2!\n\
      \\fcallstack_id\CAN\SOH \SOH(\EOTR\vcallstackId\DC2%\n\
      \\SOself_allocated\CAN\STX \SOH(\EOTR\rselfAllocated\DC2\GS\n\
      \\n\
      \self_freed\CAN\ETX \SOH(\EOTR\tselfFreed\DC2\EM\n\
      \\bself_max\CAN\b \SOH(\EOTR\aselfMax\DC2$\n\
      \\SOself_max_count\CAN\t \SOH(\EOTR\fselfMaxCount\DC2\FS\n\
      \\ttimestamp\CAN\EOT \SOH(\EOTR\ttimestamp\DC2\US\n\
      \\valloc_count\CAN\ENQ \SOH(\EOTR\n\
      \allocCount\DC2\GS\n\
      \\n\
      \free_count\CAN\ACK \SOH(\EOTR\tfreeCountJ\EOT\b\a\DLE\b\SUB\182\SOH\n\
      \\tHistogram\DC2I\n\
      \\abuckets\CAN\SOH \ETX(\v2/.perfetto.protos.ProfilePacket.Histogram.BucketR\abuckets\SUB^\n\
      \\ACKBucket\DC2\US\n\
      \\vupper_limit\CAN\SOH \SOH(\EOTR\n\
      \upperLimit\DC2\GS\n\
      \\n\
      \max_bucket\CAN\STX \SOH(\bR\tmaxBucket\DC2\DC4\n\
      \\ENQcount\CAN\ETX \SOH(\EOTR\ENQcount\SUB\201\STX\n\
      \\fProcessStats\DC2)\n\
      \\DLEunwinding_errors\CAN\SOH \SOH(\EOTR\SIunwindingErrors\DC2!\n\
      \\fheap_samples\CAN\STX \SOH(\EOTR\vheapSamples\DC2!\n\
      \\fmap_reparses\CAN\ETX \SOH(\EOTR\vmapReparses\DC2T\n\
      \\DC1unwinding_time_us\CAN\EOT \SOH(\v2(.perfetto.protos.ProfilePacket.HistogramR\SIunwindingTimeUs\DC25\n\
      \\ETBtotal_unwinding_time_us\CAN\ENQ \SOH(\EOTR\DC4totalUnwindingTimeUs\DC2;\n\
      \\SUBclient_spinlock_blocked_us\CAN\ACK \SOH(\EOTR\ETBclientSpinlockBlockedUs\SUB\158\ACK\n\
      \\DC2ProcessHeapSamples\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\EOTR\ETXpid\DC2!\n\
      \\ffrom_startup\CAN\ETX \SOH(\bR\vfromStartup\DC2/\n\
      \\DC3rejected_concurrent\CAN\EOT \SOH(\bR\DC2rejectedConcurrent\DC2\"\n\
      \\fdisconnected\CAN\ACK \SOH(\bR\fdisconnected\DC2%\n\
      \\SObuffer_overran\CAN\a \SOH(\bR\rbufferOverran\DC2`\n\
      \\fclient_error\CAN\SO \SOH(\SO2=.perfetto.protos.ProfilePacket.ProcessHeapSamples.ClientErrorR\vclientError\DC2)\n\
      \\DLEbuffer_corrupted\CAN\b \SOH(\bR\SIbufferCorrupted\DC2#\n\
      \\rhit_guardrail\CAN\n\
      \ \SOH(\bR\fhitGuardrail\DC2\ESC\n\
      \\theap_name\CAN\v \SOH(\tR\bheapName\DC26\n\
      \\ETBsampling_interval_bytes\CAN\f \SOH(\EOTR\NAKsamplingIntervalBytes\DC2?\n\
      \\FSorig_sampling_interval_bytes\CAN\r \SOH(\EOTR\EMorigSamplingIntervalBytes\DC2\FS\n\
      \\ttimestamp\CAN\t \SOH(\EOTR\ttimestamp\DC2A\n\
      \\ENQstats\CAN\ENQ \SOH(\v2+.perfetto.protos.ProfilePacket.ProcessStatsR\ENQstats\DC2C\n\
      \\asamples\CAN\STX \ETX(\v2).perfetto.protos.ProfilePacket.HeapSampleR\asamples\"i\n\
      \\vClientError\DC2\NAK\n\
      \\DC1CLIENT_ERROR_NONE\DLE\NUL\DC2\FS\n\
      \\CANCLIENT_ERROR_HIT_TIMEOUT\DLE\SOH\DC2%\n\
      \!CLIENT_ERROR_INVALID_STACK_BOUNDS\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        strings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "strings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"strings")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket
        mappings__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "mappings"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"mappings")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket
        frames__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "frames"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"frames")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket
        callstacks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callstacks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"callstacks")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket
        processDumps__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_dumps"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProfilePacket'ProcessHeapSamples)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"processDumps")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket
        continued__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "continued"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'continued")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket
        index__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'index")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, strings__field_descriptor),
           (Data.ProtoLens.Tag 4, mappings__field_descriptor),
           (Data.ProtoLens.Tag 2, frames__field_descriptor),
           (Data.ProtoLens.Tag 3, callstacks__field_descriptor),
           (Data.ProtoLens.Tag 5, processDumps__field_descriptor),
           (Data.ProtoLens.Tag 6, continued__field_descriptor),
           (Data.ProtoLens.Tag 7, index__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProfilePacket'_unknownFields
        (\ x__ y__ -> x__ {_ProfilePacket'_unknownFields = y__})
  defMessage
    = ProfilePacket'_constructor
        {_ProfilePacket'strings = Data.Vector.Generic.empty,
         _ProfilePacket'mappings = Data.Vector.Generic.empty,
         _ProfilePacket'frames = Data.Vector.Generic.empty,
         _ProfilePacket'callstacks = Data.Vector.Generic.empty,
         _ProfilePacket'processDumps = Data.Vector.Generic.empty,
         _ProfilePacket'continued = Prelude.Nothing,
         _ProfilePacket'index = Prelude.Nothing,
         _ProfilePacket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProfilePacket
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Callstack
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Frame
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.Mapping
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProfilePacket'ProcessHeapSamples
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Profiling.ProfileCommon.InternedString
                         -> Data.ProtoLens.Encoding.Bytes.Parser ProfilePacket
        loop
          x
          mutable'callstacks
          mutable'frames
          mutable'mappings
          mutable'processDumps
          mutable'strings
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'callstacks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'callstacks)
                      frozen'frames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'frames)
                      frozen'mappings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'mappings)
                      frozen'processDumps <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'processDumps)
                      frozen'strings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'strings)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'callstacks") frozen'callstacks
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'frames") frozen'frames
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'mappings") frozen'mappings
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'processDumps")
                                       frozen'processDumps
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'strings") frozen'strings
                                          x))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "strings"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'strings y)
                                loop
                                  x mutable'callstacks mutable'frames mutable'mappings
                                  mutable'processDumps v
                        34
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "mappings"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'mappings y)
                                loop
                                  x mutable'callstacks mutable'frames v mutable'processDumps
                                  mutable'strings
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "frames"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'frames y)
                                loop
                                  x mutable'callstacks v mutable'mappings mutable'processDumps
                                  mutable'strings
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "callstacks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'callstacks y)
                                loop
                                  x v mutable'frames mutable'mappings mutable'processDumps
                                  mutable'strings
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "process_dumps"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'processDumps y)
                                loop
                                  x mutable'callstacks mutable'frames mutable'mappings v
                                  mutable'strings
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "continued"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"continued") y x)
                                  mutable'callstacks mutable'frames mutable'mappings
                                  mutable'processDumps mutable'strings
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "index"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"index") y x)
                                  mutable'callstacks mutable'frames mutable'mappings
                                  mutable'processDumps mutable'strings
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'callstacks mutable'frames mutable'mappings
                                  mutable'processDumps mutable'strings
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'callstacks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'frames <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'mappings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'processDumps <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'strings <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'callstacks mutable'frames
                mutable'mappings mutable'processDumps mutable'strings)
          "ProfilePacket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'strings") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'mappings") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'frames") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                 ((Prelude..)
                                    (\ bs
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (Prelude.fromIntegral (Data.ByteString.length bs)))
                                            (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                    Data.ProtoLens.encodeMessage _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'callstacks") _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                    ((Prelude..)
                                       (\ bs
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  (Prelude.fromIntegral
                                                     (Data.ByteString.length bs)))
                                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                       Data.ProtoLens.encodeMessage _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'processDumps") _x))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'continued") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (\ b -> if b then 1 else 0) _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'index") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData ProfilePacket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProfilePacket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProfilePacket'strings x__)
                (Control.DeepSeq.deepseq
                   (_ProfilePacket'mappings x__)
                   (Control.DeepSeq.deepseq
                      (_ProfilePacket'frames x__)
                      (Control.DeepSeq.deepseq
                         (_ProfilePacket'callstacks x__)
                         (Control.DeepSeq.deepseq
                            (_ProfilePacket'processDumps x__)
                            (Control.DeepSeq.deepseq
                               (_ProfilePacket'continued x__)
                               (Control.DeepSeq.deepseq (_ProfilePacket'index x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.callstackId' @:: Lens' ProfilePacket'HeapSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'callstackId' @:: Lens' ProfilePacket'HeapSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.selfAllocated' @:: Lens' ProfilePacket'HeapSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'selfAllocated' @:: Lens' ProfilePacket'HeapSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.selfFreed' @:: Lens' ProfilePacket'HeapSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'selfFreed' @:: Lens' ProfilePacket'HeapSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.selfMax' @:: Lens' ProfilePacket'HeapSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'selfMax' @:: Lens' ProfilePacket'HeapSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.selfMaxCount' @:: Lens' ProfilePacket'HeapSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'selfMaxCount' @:: Lens' ProfilePacket'HeapSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.timestamp' @:: Lens' ProfilePacket'HeapSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'timestamp' @:: Lens' ProfilePacket'HeapSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.allocCount' @:: Lens' ProfilePacket'HeapSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'allocCount' @:: Lens' ProfilePacket'HeapSample (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.freeCount' @:: Lens' ProfilePacket'HeapSample Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'freeCount' @:: Lens' ProfilePacket'HeapSample (Prelude.Maybe Data.Word.Word64)@ -}
data ProfilePacket'HeapSample
  = ProfilePacket'HeapSample'_constructor {_ProfilePacket'HeapSample'callstackId :: !(Prelude.Maybe Data.Word.Word64),
                                           _ProfilePacket'HeapSample'selfAllocated :: !(Prelude.Maybe Data.Word.Word64),
                                           _ProfilePacket'HeapSample'selfFreed :: !(Prelude.Maybe Data.Word.Word64),
                                           _ProfilePacket'HeapSample'selfMax :: !(Prelude.Maybe Data.Word.Word64),
                                           _ProfilePacket'HeapSample'selfMaxCount :: !(Prelude.Maybe Data.Word.Word64),
                                           _ProfilePacket'HeapSample'timestamp :: !(Prelude.Maybe Data.Word.Word64),
                                           _ProfilePacket'HeapSample'allocCount :: !(Prelude.Maybe Data.Word.Word64),
                                           _ProfilePacket'HeapSample'freeCount :: !(Prelude.Maybe Data.Word.Word64),
                                           _ProfilePacket'HeapSample'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProfilePacket'HeapSample where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "callstackId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'callstackId
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'callstackId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "maybe'callstackId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'callstackId
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'callstackId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "selfAllocated" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'selfAllocated
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'selfAllocated = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "maybe'selfAllocated" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'selfAllocated
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'selfAllocated = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "selfFreed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'selfFreed
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'selfFreed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "maybe'selfFreed" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'selfFreed
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'selfFreed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "selfMax" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'selfMax
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'selfMax = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "maybe'selfMax" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'selfMax
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'selfMax = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "selfMaxCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'selfMaxCount
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'selfMaxCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "maybe'selfMaxCount" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'selfMaxCount
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'selfMaxCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "timestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'timestamp
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "maybe'timestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'timestamp
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "allocCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'allocCount
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'allocCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "maybe'allocCount" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'allocCount
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'allocCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "freeCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'freeCount
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'freeCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'HeapSample "maybe'freeCount" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'HeapSample'freeCount
           (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'freeCount = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProfilePacket'HeapSample where
  messageName _
    = Data.Text.pack "perfetto.protos.ProfilePacket.HeapSample"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \HeapSample\DC2!\n\
      \\fcallstack_id\CAN\SOH \SOH(\EOTR\vcallstackId\DC2%\n\
      \\SOself_allocated\CAN\STX \SOH(\EOTR\rselfAllocated\DC2\GS\n\
      \\n\
      \self_freed\CAN\ETX \SOH(\EOTR\tselfFreed\DC2\EM\n\
      \\bself_max\CAN\b \SOH(\EOTR\aselfMax\DC2$\n\
      \\SOself_max_count\CAN\t \SOH(\EOTR\fselfMaxCount\DC2\FS\n\
      \\ttimestamp\CAN\EOT \SOH(\EOTR\ttimestamp\DC2\US\n\
      \\valloc_count\CAN\ENQ \SOH(\EOTR\n\
      \allocCount\DC2\GS\n\
      \\n\
      \free_count\CAN\ACK \SOH(\EOTR\tfreeCountJ\EOT\b\a\DLE\b"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        callstackId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callstack_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'callstackId")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'HeapSample
        selfAllocated__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "self_allocated"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'selfAllocated")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'HeapSample
        selfFreed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "self_freed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'selfFreed")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'HeapSample
        selfMax__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "self_max"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'selfMax")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'HeapSample
        selfMaxCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "self_max_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'selfMaxCount")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'HeapSample
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'HeapSample
        allocCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alloc_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'allocCount")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'HeapSample
        freeCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "free_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'freeCount")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'HeapSample
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, callstackId__field_descriptor),
           (Data.ProtoLens.Tag 2, selfAllocated__field_descriptor),
           (Data.ProtoLens.Tag 3, selfFreed__field_descriptor),
           (Data.ProtoLens.Tag 8, selfMax__field_descriptor),
           (Data.ProtoLens.Tag 9, selfMaxCount__field_descriptor),
           (Data.ProtoLens.Tag 4, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 5, allocCount__field_descriptor),
           (Data.ProtoLens.Tag 6, freeCount__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProfilePacket'HeapSample'_unknownFields
        (\ x__ y__ -> x__ {_ProfilePacket'HeapSample'_unknownFields = y__})
  defMessage
    = ProfilePacket'HeapSample'_constructor
        {_ProfilePacket'HeapSample'callstackId = Prelude.Nothing,
         _ProfilePacket'HeapSample'selfAllocated = Prelude.Nothing,
         _ProfilePacket'HeapSample'selfFreed = Prelude.Nothing,
         _ProfilePacket'HeapSample'selfMax = Prelude.Nothing,
         _ProfilePacket'HeapSample'selfMaxCount = Prelude.Nothing,
         _ProfilePacket'HeapSample'timestamp = Prelude.Nothing,
         _ProfilePacket'HeapSample'allocCount = Prelude.Nothing,
         _ProfilePacket'HeapSample'freeCount = Prelude.Nothing,
         _ProfilePacket'HeapSample'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProfilePacket'HeapSample
          -> Data.ProtoLens.Encoding.Bytes.Parser ProfilePacket'HeapSample
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "callstack_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"callstackId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "self_allocated"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"selfAllocated") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "self_freed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"selfFreed") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "self_max"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"selfMax") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "self_max_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"selfMaxCount") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "alloc_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"allocCount") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "free_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"freeCount") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "HeapSample"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'callstackId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'selfAllocated") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'selfFreed") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'selfMax") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'selfMaxCount") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'timestamp") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'allocCount") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'freeCount") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData ProfilePacket'HeapSample where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProfilePacket'HeapSample'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProfilePacket'HeapSample'callstackId x__)
                (Control.DeepSeq.deepseq
                   (_ProfilePacket'HeapSample'selfAllocated x__)
                   (Control.DeepSeq.deepseq
                      (_ProfilePacket'HeapSample'selfFreed x__)
                      (Control.DeepSeq.deepseq
                         (_ProfilePacket'HeapSample'selfMax x__)
                         (Control.DeepSeq.deepseq
                            (_ProfilePacket'HeapSample'selfMaxCount x__)
                            (Control.DeepSeq.deepseq
                               (_ProfilePacket'HeapSample'timestamp x__)
                               (Control.DeepSeq.deepseq
                                  (_ProfilePacket'HeapSample'allocCount x__)
                                  (Control.DeepSeq.deepseq
                                     (_ProfilePacket'HeapSample'freeCount x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.buckets' @:: Lens' ProfilePacket'Histogram [ProfilePacket'Histogram'Bucket]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'buckets' @:: Lens' ProfilePacket'Histogram (Data.Vector.Vector ProfilePacket'Histogram'Bucket)@ -}
data ProfilePacket'Histogram
  = ProfilePacket'Histogram'_constructor {_ProfilePacket'Histogram'buckets :: !(Data.Vector.Vector ProfilePacket'Histogram'Bucket),
                                          _ProfilePacket'Histogram'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProfilePacket'Histogram where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProfilePacket'Histogram "buckets" [ProfilePacket'Histogram'Bucket] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'Histogram'buckets
           (\ x__ y__ -> x__ {_ProfilePacket'Histogram'buckets = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfilePacket'Histogram "vec'buckets" (Data.Vector.Vector ProfilePacket'Histogram'Bucket) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'Histogram'buckets
           (\ x__ y__ -> x__ {_ProfilePacket'Histogram'buckets = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProfilePacket'Histogram where
  messageName _
    = Data.Text.pack "perfetto.protos.ProfilePacket.Histogram"
  packedMessageDescriptor _
    = "\n\
      \\tHistogram\DC2I\n\
      \\abuckets\CAN\SOH \ETX(\v2/.perfetto.protos.ProfilePacket.Histogram.BucketR\abuckets\SUB^\n\
      \\ACKBucket\DC2\US\n\
      \\vupper_limit\CAN\SOH \SOH(\EOTR\n\
      \upperLimit\DC2\GS\n\
      \\n\
      \max_bucket\CAN\STX \SOH(\bR\tmaxBucket\DC2\DC4\n\
      \\ENQcount\CAN\ETX \SOH(\EOTR\ENQcount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        buckets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buckets"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProfilePacket'Histogram'Bucket)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"buckets")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'Histogram
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, buckets__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProfilePacket'Histogram'_unknownFields
        (\ x__ y__ -> x__ {_ProfilePacket'Histogram'_unknownFields = y__})
  defMessage
    = ProfilePacket'Histogram'_constructor
        {_ProfilePacket'Histogram'buckets = Data.Vector.Generic.empty,
         _ProfilePacket'Histogram'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProfilePacket'Histogram
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProfilePacket'Histogram'Bucket
             -> Data.ProtoLens.Encoding.Bytes.Parser ProfilePacket'Histogram
        loop x mutable'buckets
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'buckets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'buckets)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'buckets") frozen'buckets x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "buckets"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'buckets y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'buckets
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'buckets <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'buckets)
          "Histogram"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.ProtoLens.encodeMessage _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'buckets") _x))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData ProfilePacket'Histogram where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProfilePacket'Histogram'_unknownFields x__)
             (Control.DeepSeq.deepseq (_ProfilePacket'Histogram'buckets x__) ())
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.upperLimit' @:: Lens' ProfilePacket'Histogram'Bucket Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'upperLimit' @:: Lens' ProfilePacket'Histogram'Bucket (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maxBucket' @:: Lens' ProfilePacket'Histogram'Bucket Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'maxBucket' @:: Lens' ProfilePacket'Histogram'Bucket (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.count' @:: Lens' ProfilePacket'Histogram'Bucket Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'count' @:: Lens' ProfilePacket'Histogram'Bucket (Prelude.Maybe Data.Word.Word64)@ -}
data ProfilePacket'Histogram'Bucket
  = ProfilePacket'Histogram'Bucket'_constructor {_ProfilePacket'Histogram'Bucket'upperLimit :: !(Prelude.Maybe Data.Word.Word64),
                                                 _ProfilePacket'Histogram'Bucket'maxBucket :: !(Prelude.Maybe Prelude.Bool),
                                                 _ProfilePacket'Histogram'Bucket'count :: !(Prelude.Maybe Data.Word.Word64),
                                                 _ProfilePacket'Histogram'Bucket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProfilePacket'Histogram'Bucket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProfilePacket'Histogram'Bucket "upperLimit" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'Histogram'Bucket'upperLimit
           (\ x__ y__
              -> x__ {_ProfilePacket'Histogram'Bucket'upperLimit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'Histogram'Bucket "maybe'upperLimit" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'Histogram'Bucket'upperLimit
           (\ x__ y__
              -> x__ {_ProfilePacket'Histogram'Bucket'upperLimit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'Histogram'Bucket "maxBucket" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'Histogram'Bucket'maxBucket
           (\ x__ y__
              -> x__ {_ProfilePacket'Histogram'Bucket'maxBucket = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'Histogram'Bucket "maybe'maxBucket" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'Histogram'Bucket'maxBucket
           (\ x__ y__
              -> x__ {_ProfilePacket'Histogram'Bucket'maxBucket = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'Histogram'Bucket "count" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'Histogram'Bucket'count
           (\ x__ y__ -> x__ {_ProfilePacket'Histogram'Bucket'count = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'Histogram'Bucket "maybe'count" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'Histogram'Bucket'count
           (\ x__ y__ -> x__ {_ProfilePacket'Histogram'Bucket'count = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProfilePacket'Histogram'Bucket where
  messageName _
    = Data.Text.pack "perfetto.protos.ProfilePacket.Histogram.Bucket"
  packedMessageDescriptor _
    = "\n\
      \\ACKBucket\DC2\US\n\
      \\vupper_limit\CAN\SOH \SOH(\EOTR\n\
      \upperLimit\DC2\GS\n\
      \\n\
      \max_bucket\CAN\STX \SOH(\bR\tmaxBucket\DC2\DC4\n\
      \\ENQcount\CAN\ETX \SOH(\EOTR\ENQcount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        upperLimit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "upper_limit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'upperLimit")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'Histogram'Bucket
        maxBucket__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_bucket"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxBucket")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'Histogram'Bucket
        count__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'count")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'Histogram'Bucket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, upperLimit__field_descriptor),
           (Data.ProtoLens.Tag 2, maxBucket__field_descriptor),
           (Data.ProtoLens.Tag 3, count__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProfilePacket'Histogram'Bucket'_unknownFields
        (\ x__ y__
           -> x__ {_ProfilePacket'Histogram'Bucket'_unknownFields = y__})
  defMessage
    = ProfilePacket'Histogram'Bucket'_constructor
        {_ProfilePacket'Histogram'Bucket'upperLimit = Prelude.Nothing,
         _ProfilePacket'Histogram'Bucket'maxBucket = Prelude.Nothing,
         _ProfilePacket'Histogram'Bucket'count = Prelude.Nothing,
         _ProfilePacket'Histogram'Bucket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProfilePacket'Histogram'Bucket
          -> Data.ProtoLens.Encoding.Bytes.Parser ProfilePacket'Histogram'Bucket
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "upper_limit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"upperLimit") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_bucket"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"maxBucket") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "count"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"count") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Bucket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'upperLimit") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'maxBucket") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'count") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData ProfilePacket'Histogram'Bucket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProfilePacket'Histogram'Bucket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProfilePacket'Histogram'Bucket'upperLimit x__)
                (Control.DeepSeq.deepseq
                   (_ProfilePacket'Histogram'Bucket'maxBucket x__)
                   (Control.DeepSeq.deepseq
                      (_ProfilePacket'Histogram'Bucket'count x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.pid' @:: Lens' ProfilePacket'ProcessHeapSamples Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'pid' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.fromStartup' @:: Lens' ProfilePacket'ProcessHeapSamples Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'fromStartup' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.rejectedConcurrent' @:: Lens' ProfilePacket'ProcessHeapSamples Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'rejectedConcurrent' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.disconnected' @:: Lens' ProfilePacket'ProcessHeapSamples Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'disconnected' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.bufferOverran' @:: Lens' ProfilePacket'ProcessHeapSamples Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'bufferOverran' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.clientError' @:: Lens' ProfilePacket'ProcessHeapSamples ProfilePacket'ProcessHeapSamples'ClientError@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'clientError' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe ProfilePacket'ProcessHeapSamples'ClientError)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.bufferCorrupted' @:: Lens' ProfilePacket'ProcessHeapSamples Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'bufferCorrupted' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.hitGuardrail' @:: Lens' ProfilePacket'ProcessHeapSamples Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'hitGuardrail' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.heapName' @:: Lens' ProfilePacket'ProcessHeapSamples Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'heapName' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.samplingIntervalBytes' @:: Lens' ProfilePacket'ProcessHeapSamples Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'samplingIntervalBytes' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.origSamplingIntervalBytes' @:: Lens' ProfilePacket'ProcessHeapSamples Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'origSamplingIntervalBytes' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.timestamp' @:: Lens' ProfilePacket'ProcessHeapSamples Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'timestamp' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.stats' @:: Lens' ProfilePacket'ProcessHeapSamples ProfilePacket'ProcessStats@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'stats' @:: Lens' ProfilePacket'ProcessHeapSamples (Prelude.Maybe ProfilePacket'ProcessStats)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.samples' @:: Lens' ProfilePacket'ProcessHeapSamples [ProfilePacket'HeapSample]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'samples' @:: Lens' ProfilePacket'ProcessHeapSamples (Data.Vector.Vector ProfilePacket'HeapSample)@ -}
data ProfilePacket'ProcessHeapSamples
  = ProfilePacket'ProcessHeapSamples'_constructor {_ProfilePacket'ProcessHeapSamples'pid :: !(Prelude.Maybe Data.Word.Word64),
                                                   _ProfilePacket'ProcessHeapSamples'fromStartup :: !(Prelude.Maybe Prelude.Bool),
                                                   _ProfilePacket'ProcessHeapSamples'rejectedConcurrent :: !(Prelude.Maybe Prelude.Bool),
                                                   _ProfilePacket'ProcessHeapSamples'disconnected :: !(Prelude.Maybe Prelude.Bool),
                                                   _ProfilePacket'ProcessHeapSamples'bufferOverran :: !(Prelude.Maybe Prelude.Bool),
                                                   _ProfilePacket'ProcessHeapSamples'clientError :: !(Prelude.Maybe ProfilePacket'ProcessHeapSamples'ClientError),
                                                   _ProfilePacket'ProcessHeapSamples'bufferCorrupted :: !(Prelude.Maybe Prelude.Bool),
                                                   _ProfilePacket'ProcessHeapSamples'hitGuardrail :: !(Prelude.Maybe Prelude.Bool),
                                                   _ProfilePacket'ProcessHeapSamples'heapName :: !(Prelude.Maybe Data.Text.Text),
                                                   _ProfilePacket'ProcessHeapSamples'samplingIntervalBytes :: !(Prelude.Maybe Data.Word.Word64),
                                                   _ProfilePacket'ProcessHeapSamples'origSamplingIntervalBytes :: !(Prelude.Maybe Data.Word.Word64),
                                                   _ProfilePacket'ProcessHeapSamples'timestamp :: !(Prelude.Maybe Data.Word.Word64),
                                                   _ProfilePacket'ProcessHeapSamples'stats :: !(Prelude.Maybe ProfilePacket'ProcessStats),
                                                   _ProfilePacket'ProcessHeapSamples'samples :: !(Data.Vector.Vector ProfilePacket'HeapSample),
                                                   _ProfilePacket'ProcessHeapSamples'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProfilePacket'ProcessHeapSamples where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "pid" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'pid
           (\ x__ y__ -> x__ {_ProfilePacket'ProcessHeapSamples'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'pid" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'pid
           (\ x__ y__ -> x__ {_ProfilePacket'ProcessHeapSamples'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "fromStartup" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'fromStartup
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'fromStartup = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'fromStartup" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'fromStartup
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'fromStartup = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "rejectedConcurrent" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'rejectedConcurrent
           (\ x__ y__
              -> x__
                   {_ProfilePacket'ProcessHeapSamples'rejectedConcurrent = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'rejectedConcurrent" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'rejectedConcurrent
           (\ x__ y__
              -> x__
                   {_ProfilePacket'ProcessHeapSamples'rejectedConcurrent = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "disconnected" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'disconnected
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'disconnected = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'disconnected" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'disconnected
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'disconnected = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "bufferOverran" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'bufferOverran
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'bufferOverran = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'bufferOverran" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'bufferOverran
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'bufferOverran = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "clientError" ProfilePacket'ProcessHeapSamples'ClientError where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'clientError
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'clientError = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'clientError" (Prelude.Maybe ProfilePacket'ProcessHeapSamples'ClientError) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'clientError
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'clientError = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "bufferCorrupted" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'bufferCorrupted
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'bufferCorrupted = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'bufferCorrupted" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'bufferCorrupted
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'bufferCorrupted = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "hitGuardrail" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'hitGuardrail
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'hitGuardrail = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'hitGuardrail" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'hitGuardrail
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'hitGuardrail = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "heapName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'heapName
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'heapName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'heapName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'heapName
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'heapName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "samplingIntervalBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'samplingIntervalBytes
           (\ x__ y__
              -> x__
                   {_ProfilePacket'ProcessHeapSamples'samplingIntervalBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'samplingIntervalBytes" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'samplingIntervalBytes
           (\ x__ y__
              -> x__
                   {_ProfilePacket'ProcessHeapSamples'samplingIntervalBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "origSamplingIntervalBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'origSamplingIntervalBytes
           (\ x__ y__
              -> x__
                   {_ProfilePacket'ProcessHeapSamples'origSamplingIntervalBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'origSamplingIntervalBytes" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'origSamplingIntervalBytes
           (\ x__ y__
              -> x__
                   {_ProfilePacket'ProcessHeapSamples'origSamplingIntervalBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "timestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'timestamp
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'timestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'timestamp
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "stats" ProfilePacket'ProcessStats where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'stats
           (\ x__ y__ -> x__ {_ProfilePacket'ProcessHeapSamples'stats = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "maybe'stats" (Prelude.Maybe ProfilePacket'ProcessStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'stats
           (\ x__ y__ -> x__ {_ProfilePacket'ProcessHeapSamples'stats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "samples" [ProfilePacket'HeapSample] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'samples
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'samples = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessHeapSamples "vec'samples" (Data.Vector.Vector ProfilePacket'HeapSample) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessHeapSamples'samples
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessHeapSamples'samples = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProfilePacket'ProcessHeapSamples where
  messageName _
    = Data.Text.pack "perfetto.protos.ProfilePacket.ProcessHeapSamples"
  packedMessageDescriptor _
    = "\n\
      \\DC2ProcessHeapSamples\DC2\DLE\n\
      \\ETXpid\CAN\SOH \SOH(\EOTR\ETXpid\DC2!\n\
      \\ffrom_startup\CAN\ETX \SOH(\bR\vfromStartup\DC2/\n\
      \\DC3rejected_concurrent\CAN\EOT \SOH(\bR\DC2rejectedConcurrent\DC2\"\n\
      \\fdisconnected\CAN\ACK \SOH(\bR\fdisconnected\DC2%\n\
      \\SObuffer_overran\CAN\a \SOH(\bR\rbufferOverran\DC2`\n\
      \\fclient_error\CAN\SO \SOH(\SO2=.perfetto.protos.ProfilePacket.ProcessHeapSamples.ClientErrorR\vclientError\DC2)\n\
      \\DLEbuffer_corrupted\CAN\b \SOH(\bR\SIbufferCorrupted\DC2#\n\
      \\rhit_guardrail\CAN\n\
      \ \SOH(\bR\fhitGuardrail\DC2\ESC\n\
      \\theap_name\CAN\v \SOH(\tR\bheapName\DC26\n\
      \\ETBsampling_interval_bytes\CAN\f \SOH(\EOTR\NAKsamplingIntervalBytes\DC2?\n\
      \\FSorig_sampling_interval_bytes\CAN\r \SOH(\EOTR\EMorigSamplingIntervalBytes\DC2\FS\n\
      \\ttimestamp\CAN\t \SOH(\EOTR\ttimestamp\DC2A\n\
      \\ENQstats\CAN\ENQ \SOH(\v2+.perfetto.protos.ProfilePacket.ProcessStatsR\ENQstats\DC2C\n\
      \\asamples\CAN\STX \ETX(\v2).perfetto.protos.ProfilePacket.HeapSampleR\asamples\"i\n\
      \\vClientError\DC2\NAK\n\
      \\DC1CLIENT_ERROR_NONE\DLE\NUL\DC2\FS\n\
      \\CANCLIENT_ERROR_HIT_TIMEOUT\DLE\SOH\DC2%\n\
      \!CLIENT_ERROR_INVALID_STACK_BOUNDS\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        fromStartup__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "from_startup"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fromStartup")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        rejectedConcurrent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "rejected_concurrent"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rejectedConcurrent")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        disconnected__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disconnected"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'disconnected")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        bufferOverran__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_overran"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufferOverran")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        clientError__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_error"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor ProfilePacket'ProcessHeapSamples'ClientError)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clientError")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        bufferCorrupted__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_corrupted"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufferCorrupted")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        hitGuardrail__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "hit_guardrail"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'hitGuardrail")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        heapName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapName")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        samplingIntervalBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sampling_interval_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'samplingIntervalBytes")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        origSamplingIntervalBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "orig_sampling_interval_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'origSamplingIntervalBytes")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        stats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProfilePacket'ProcessStats)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stats")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
        samples__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "samples"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProfilePacket'HeapSample)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"samples")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessHeapSamples
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, fromStartup__field_descriptor),
           (Data.ProtoLens.Tag 4, rejectedConcurrent__field_descriptor),
           (Data.ProtoLens.Tag 6, disconnected__field_descriptor),
           (Data.ProtoLens.Tag 7, bufferOverran__field_descriptor),
           (Data.ProtoLens.Tag 14, clientError__field_descriptor),
           (Data.ProtoLens.Tag 8, bufferCorrupted__field_descriptor),
           (Data.ProtoLens.Tag 10, hitGuardrail__field_descriptor),
           (Data.ProtoLens.Tag 11, heapName__field_descriptor),
           (Data.ProtoLens.Tag 12, samplingIntervalBytes__field_descriptor),
           (Data.ProtoLens.Tag 13, 
            origSamplingIntervalBytes__field_descriptor),
           (Data.ProtoLens.Tag 9, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 5, stats__field_descriptor),
           (Data.ProtoLens.Tag 2, samples__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProfilePacket'ProcessHeapSamples'_unknownFields
        (\ x__ y__
           -> x__ {_ProfilePacket'ProcessHeapSamples'_unknownFields = y__})
  defMessage
    = ProfilePacket'ProcessHeapSamples'_constructor
        {_ProfilePacket'ProcessHeapSamples'pid = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'fromStartup = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'rejectedConcurrent = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'disconnected = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'bufferOverran = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'clientError = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'bufferCorrupted = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'hitGuardrail = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'heapName = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'samplingIntervalBytes = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'origSamplingIntervalBytes = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'timestamp = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'stats = Prelude.Nothing,
         _ProfilePacket'ProcessHeapSamples'samples = Data.Vector.Generic.empty,
         _ProfilePacket'ProcessHeapSamples'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProfilePacket'ProcessHeapSamples
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ProfilePacket'HeapSample
             -> Data.ProtoLens.Encoding.Bytes.Parser ProfilePacket'ProcessHeapSamples
        loop x mutable'samples
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'samples <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'samples)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'samples") frozen'samples x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "pid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                                  mutable'samples
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "from_startup"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"fromStartup") y x)
                                  mutable'samples
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "rejected_concurrent"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"rejectedConcurrent") y x)
                                  mutable'samples
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "disconnected"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"disconnected") y x)
                                  mutable'samples
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "buffer_overran"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bufferOverran") y x)
                                  mutable'samples
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "client_error"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"clientError") y x)
                                  mutable'samples
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "buffer_corrupted"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bufferCorrupted") y x)
                                  mutable'samples
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "hit_guardrail"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"hitGuardrail") y x)
                                  mutable'samples
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "heap_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapName") y x)
                                  mutable'samples
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "sampling_interval_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"samplingIntervalBytes") y x)
                                  mutable'samples
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "orig_sampling_interval_bytes"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"origSamplingIntervalBytes") y x)
                                  mutable'samples
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                                  mutable'samples
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stats"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stats") y x)
                                  mutable'samples
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "samples"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'samples y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'samples
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'samples <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'samples)
          "ProcessHeapSamples"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'pid") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'fromStartup") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                             _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'rejectedConcurrent") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt (\ b -> if b then 1 else 0)
                                _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'disconnected") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (\ b -> if b then 1 else 0) _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'bufferOverran") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (\ b -> if b then 1 else 0) _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'clientError") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 112)
                                      ((Prelude..)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral)
                                         Prelude.fromEnum _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'bufferCorrupted") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (\ b -> if b then 1 else 0) _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'hitGuardrail") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0) _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'heapName") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
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
                                                  Data.Text.Encoding.encodeUtf8 _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field
                                                  @"maybe'samplingIntervalBytes")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'origSamplingIntervalBytes")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field @"maybe'timestamp")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field @"maybe'stats")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              42)
                                                           ((Prelude..)
                                                              (\ bs
                                                                 -> (Data.Monoid.<>)
                                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                         (Prelude.fromIntegral
                                                                            (Data.ByteString.length
                                                                               bs)))
                                                                      (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                         bs))
                                                              Data.ProtoLens.encodeMessage _v))
                                                 ((Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                       (\ _v
                                                          -> (Data.Monoid.<>)
                                                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                  18)
                                                               ((Prelude..)
                                                                  (\ bs
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             (Prelude.fromIntegral
                                                                                (Data.ByteString.length
                                                                                   bs)))
                                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                             bs))
                                                                  Data.ProtoLens.encodeMessage _v))
                                                       (Lens.Family2.view
                                                          (Data.ProtoLens.Field.field
                                                             @"vec'samples")
                                                          _x))
                                                    (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                       (Lens.Family2.view
                                                          Data.ProtoLens.unknownFields
                                                          _x)))))))))))))))
instance Control.DeepSeq.NFData ProfilePacket'ProcessHeapSamples where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProfilePacket'ProcessHeapSamples'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProfilePacket'ProcessHeapSamples'pid x__)
                (Control.DeepSeq.deepseq
                   (_ProfilePacket'ProcessHeapSamples'fromStartup x__)
                   (Control.DeepSeq.deepseq
                      (_ProfilePacket'ProcessHeapSamples'rejectedConcurrent x__)
                      (Control.DeepSeq.deepseq
                         (_ProfilePacket'ProcessHeapSamples'disconnected x__)
                         (Control.DeepSeq.deepseq
                            (_ProfilePacket'ProcessHeapSamples'bufferOverran x__)
                            (Control.DeepSeq.deepseq
                               (_ProfilePacket'ProcessHeapSamples'clientError x__)
                               (Control.DeepSeq.deepseq
                                  (_ProfilePacket'ProcessHeapSamples'bufferCorrupted x__)
                                  (Control.DeepSeq.deepseq
                                     (_ProfilePacket'ProcessHeapSamples'hitGuardrail x__)
                                     (Control.DeepSeq.deepseq
                                        (_ProfilePacket'ProcessHeapSamples'heapName x__)
                                        (Control.DeepSeq.deepseq
                                           (_ProfilePacket'ProcessHeapSamples'samplingIntervalBytes
                                              x__)
                                           (Control.DeepSeq.deepseq
                                              (_ProfilePacket'ProcessHeapSamples'origSamplingIntervalBytes
                                                 x__)
                                              (Control.DeepSeq.deepseq
                                                 (_ProfilePacket'ProcessHeapSamples'timestamp x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_ProfilePacket'ProcessHeapSamples'stats x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_ProfilePacket'ProcessHeapSamples'samples
                                                          x__)
                                                       ()))))))))))))))
data ProfilePacket'ProcessHeapSamples'ClientError
  = ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE |
    ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_HIT_TIMEOUT |
    ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ProfilePacket'ProcessHeapSamples'ClientError where
  maybeToEnum 0
    = Prelude.Just ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE
  maybeToEnum 1
    = Prelude.Just
        ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_HIT_TIMEOUT
  maybeToEnum 2
    = Prelude.Just
        ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS
  maybeToEnum _ = Prelude.Nothing
  showEnum ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE
    = "CLIENT_ERROR_NONE"
  showEnum ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_HIT_TIMEOUT
    = "CLIENT_ERROR_HIT_TIMEOUT"
  showEnum
    ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS
    = "CLIENT_ERROR_INVALID_STACK_BOUNDS"
  readEnum k
    | (Prelude.==) k "CLIENT_ERROR_NONE"
    = Prelude.Just ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE
    | (Prelude.==) k "CLIENT_ERROR_HIT_TIMEOUT"
    = Prelude.Just
        ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_HIT_TIMEOUT
    | (Prelude.==) k "CLIENT_ERROR_INVALID_STACK_BOUNDS"
    = Prelude.Just
        ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ProfilePacket'ProcessHeapSamples'ClientError where
  minBound = ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE
  maxBound
    = ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS
instance Prelude.Enum ProfilePacket'ProcessHeapSamples'ClientError where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum ClientError: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE = 0
  fromEnum ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_HIT_TIMEOUT
    = 1
  fromEnum
    ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS
    = 2
  succ
    ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS
    = Prelude.error
        "ProfilePacket'ProcessHeapSamples'ClientError.succ: bad argument ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS. This value would be out of bounds."
  succ ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE
    = ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_HIT_TIMEOUT
  succ ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_HIT_TIMEOUT
    = ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS
  pred ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE
    = Prelude.error
        "ProfilePacket'ProcessHeapSamples'ClientError.pred: bad argument ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE. This value would be out of bounds."
  pred ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_HIT_TIMEOUT
    = ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE
  pred
    ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_INVALID_STACK_BOUNDS
    = ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_HIT_TIMEOUT
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ProfilePacket'ProcessHeapSamples'ClientError where
  fieldDefault = ProfilePacket'ProcessHeapSamples'CLIENT_ERROR_NONE
instance Control.DeepSeq.NFData ProfilePacket'ProcessHeapSamples'ClientError where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.unwindingErrors' @:: Lens' ProfilePacket'ProcessStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'unwindingErrors' @:: Lens' ProfilePacket'ProcessStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.heapSamples' @:: Lens' ProfilePacket'ProcessStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'heapSamples' @:: Lens' ProfilePacket'ProcessStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.mapReparses' @:: Lens' ProfilePacket'ProcessStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'mapReparses' @:: Lens' ProfilePacket'ProcessStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.unwindingTimeUs' @:: Lens' ProfilePacket'ProcessStats ProfilePacket'Histogram@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'unwindingTimeUs' @:: Lens' ProfilePacket'ProcessStats (Prelude.Maybe ProfilePacket'Histogram)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.totalUnwindingTimeUs' @:: Lens' ProfilePacket'ProcessStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'totalUnwindingTimeUs' @:: Lens' ProfilePacket'ProcessStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.clientSpinlockBlockedUs' @:: Lens' ProfilePacket'ProcessStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'clientSpinlockBlockedUs' @:: Lens' ProfilePacket'ProcessStats (Prelude.Maybe Data.Word.Word64)@ -}
data ProfilePacket'ProcessStats
  = ProfilePacket'ProcessStats'_constructor {_ProfilePacket'ProcessStats'unwindingErrors :: !(Prelude.Maybe Data.Word.Word64),
                                             _ProfilePacket'ProcessStats'heapSamples :: !(Prelude.Maybe Data.Word.Word64),
                                             _ProfilePacket'ProcessStats'mapReparses :: !(Prelude.Maybe Data.Word.Word64),
                                             _ProfilePacket'ProcessStats'unwindingTimeUs :: !(Prelude.Maybe ProfilePacket'Histogram),
                                             _ProfilePacket'ProcessStats'totalUnwindingTimeUs :: !(Prelude.Maybe Data.Word.Word64),
                                             _ProfilePacket'ProcessStats'clientSpinlockBlockedUs :: !(Prelude.Maybe Data.Word.Word64),
                                             _ProfilePacket'ProcessStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ProfilePacket'ProcessStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "unwindingErrors" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'unwindingErrors
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessStats'unwindingErrors = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "maybe'unwindingErrors" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'unwindingErrors
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessStats'unwindingErrors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "heapSamples" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'heapSamples
           (\ x__ y__ -> x__ {_ProfilePacket'ProcessStats'heapSamples = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "maybe'heapSamples" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'heapSamples
           (\ x__ y__ -> x__ {_ProfilePacket'ProcessStats'heapSamples = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "mapReparses" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'mapReparses
           (\ x__ y__ -> x__ {_ProfilePacket'ProcessStats'mapReparses = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "maybe'mapReparses" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'mapReparses
           (\ x__ y__ -> x__ {_ProfilePacket'ProcessStats'mapReparses = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "unwindingTimeUs" ProfilePacket'Histogram where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'unwindingTimeUs
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessStats'unwindingTimeUs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "maybe'unwindingTimeUs" (Prelude.Maybe ProfilePacket'Histogram) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'unwindingTimeUs
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessStats'unwindingTimeUs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "totalUnwindingTimeUs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'totalUnwindingTimeUs
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessStats'totalUnwindingTimeUs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "maybe'totalUnwindingTimeUs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'totalUnwindingTimeUs
           (\ x__ y__
              -> x__ {_ProfilePacket'ProcessStats'totalUnwindingTimeUs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "clientSpinlockBlockedUs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'clientSpinlockBlockedUs
           (\ x__ y__
              -> x__
                   {_ProfilePacket'ProcessStats'clientSpinlockBlockedUs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ProfilePacket'ProcessStats "maybe'clientSpinlockBlockedUs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ProfilePacket'ProcessStats'clientSpinlockBlockedUs
           (\ x__ y__
              -> x__
                   {_ProfilePacket'ProcessStats'clientSpinlockBlockedUs = y__}))
        Prelude.id
instance Data.ProtoLens.Message ProfilePacket'ProcessStats where
  messageName _
    = Data.Text.pack "perfetto.protos.ProfilePacket.ProcessStats"
  packedMessageDescriptor _
    = "\n\
      \\fProcessStats\DC2)\n\
      \\DLEunwinding_errors\CAN\SOH \SOH(\EOTR\SIunwindingErrors\DC2!\n\
      \\fheap_samples\CAN\STX \SOH(\EOTR\vheapSamples\DC2!\n\
      \\fmap_reparses\CAN\ETX \SOH(\EOTR\vmapReparses\DC2T\n\
      \\DC1unwinding_time_us\CAN\EOT \SOH(\v2(.perfetto.protos.ProfilePacket.HistogramR\SIunwindingTimeUs\DC25\n\
      \\ETBtotal_unwinding_time_us\CAN\ENQ \SOH(\EOTR\DC4totalUnwindingTimeUs\DC2;\n\
      \\SUBclient_spinlock_blocked_us\CAN\ACK \SOH(\EOTR\ETBclientSpinlockBlockedUs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        unwindingErrors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unwinding_errors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unwindingErrors")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessStats
        heapSamples__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_samples"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'heapSamples")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessStats
        mapReparses__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "map_reparses"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'mapReparses")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessStats
        unwindingTimeUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unwinding_time_us"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ProfilePacket'Histogram)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unwindingTimeUs")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessStats
        totalUnwindingTimeUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_unwinding_time_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'totalUnwindingTimeUs")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessStats
        clientSpinlockBlockedUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "client_spinlock_blocked_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clientSpinlockBlockedUs")) ::
              Data.ProtoLens.FieldDescriptor ProfilePacket'ProcessStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, unwindingErrors__field_descriptor),
           (Data.ProtoLens.Tag 2, heapSamples__field_descriptor),
           (Data.ProtoLens.Tag 3, mapReparses__field_descriptor),
           (Data.ProtoLens.Tag 4, unwindingTimeUs__field_descriptor),
           (Data.ProtoLens.Tag 5, totalUnwindingTimeUs__field_descriptor),
           (Data.ProtoLens.Tag 6, clientSpinlockBlockedUs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ProfilePacket'ProcessStats'_unknownFields
        (\ x__ y__
           -> x__ {_ProfilePacket'ProcessStats'_unknownFields = y__})
  defMessage
    = ProfilePacket'ProcessStats'_constructor
        {_ProfilePacket'ProcessStats'unwindingErrors = Prelude.Nothing,
         _ProfilePacket'ProcessStats'heapSamples = Prelude.Nothing,
         _ProfilePacket'ProcessStats'mapReparses = Prelude.Nothing,
         _ProfilePacket'ProcessStats'unwindingTimeUs = Prelude.Nothing,
         _ProfilePacket'ProcessStats'totalUnwindingTimeUs = Prelude.Nothing,
         _ProfilePacket'ProcessStats'clientSpinlockBlockedUs = Prelude.Nothing,
         _ProfilePacket'ProcessStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ProfilePacket'ProcessStats
          -> Data.ProtoLens.Encoding.Bytes.Parser ProfilePacket'ProcessStats
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
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "unwinding_errors"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unwindingErrors") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "heap_samples"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"heapSamples") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "map_reparses"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"mapReparses") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "unwinding_time_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unwindingTimeUs") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "total_unwinding_time_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalUnwindingTimeUs") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "client_spinlock_blocked_us"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"clientSpinlockBlockedUs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ProcessStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'unwindingErrors") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'heapSamples") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'mapReparses") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'unwindingTimeUs") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                                (Data.ProtoLens.Field.field @"maybe'totalUnwindingTimeUs") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'clientSpinlockBlockedUs") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData ProfilePacket'ProcessStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ProfilePacket'ProcessStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ProfilePacket'ProcessStats'unwindingErrors x__)
                (Control.DeepSeq.deepseq
                   (_ProfilePacket'ProcessStats'heapSamples x__)
                   (Control.DeepSeq.deepseq
                      (_ProfilePacket'ProcessStats'mapReparses x__)
                      (Control.DeepSeq.deepseq
                         (_ProfilePacket'ProcessStats'unwindingTimeUs x__)
                         (Control.DeepSeq.deepseq
                            (_ProfilePacket'ProcessStats'totalUnwindingTimeUs x__)
                            (Control.DeepSeq.deepseq
                               (_ProfilePacket'ProcessStats'clientSpinlockBlockedUs x__) ()))))))
{- | Fields :
      -}
data Profiling
  = Profiling'_constructor {_Profiling'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Profiling where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message Profiling where
  messageName _ = Data.Text.pack "perfetto.protos.Profiling"
  packedMessageDescriptor _
    = "\n\
      \\tProfiling\"|\n\
      \\aCpuMode\DC2\DLE\n\
      \\fMODE_UNKNOWN\DLE\NUL\DC2\SI\n\
      \\vMODE_KERNEL\DLE\SOH\DC2\r\n\
      \\tMODE_USER\DLE\STX\DC2\DC3\n\
      \\SIMODE_HYPERVISOR\DLE\ETX\DC2\NAK\n\
      \\DC1MODE_GUEST_KERNEL\DLE\EOT\DC2\DC3\n\
      \\SIMODE_GUEST_USER\DLE\ENQ\"\132\EOT\n\
      \\DLEStackUnwindError\DC2\CAN\n\
      \\DC4UNWIND_ERROR_UNKNOWN\DLE\NUL\DC2\NAK\n\
      \\DC1UNWIND_ERROR_NONE\DLE\SOH\DC2\US\n\
      \\ESCUNWIND_ERROR_MEMORY_INVALID\DLE\STX\DC2\FS\n\
      \\CANUNWIND_ERROR_UNWIND_INFO\DLE\ETX\DC2\FS\n\
      \\CANUNWIND_ERROR_UNSUPPORTED\DLE\EOT\DC2\FS\n\
      \\CANUNWIND_ERROR_INVALID_MAP\DLE\ENQ\DC2$\n\
      \ UNWIND_ERROR_MAX_FRAMES_EXCEEDED\DLE\ACK\DC2\US\n\
      \\ESCUNWIND_ERROR_REPEATED_FRAME\DLE\a\DC2\FS\n\
      \\CANUNWIND_ERROR_INVALID_ELF\DLE\b\DC2\FS\n\
      \\CANUNWIND_ERROR_SYSTEM_CALL\DLE\t\DC2\US\n\
      \\ESCUNWIND_ERROR_THREAD_TIMEOUT\DLE\n\
      \\DC2&\n\
      \\"UNWIND_ERROR_THREAD_DOES_NOT_EXIST\DLE\v\DC2\EM\n\
      \\NAKUNWIND_ERROR_BAD_ARCH\DLE\f\DC2\ESC\n\
      \\ETBUNWIND_ERROR_MAPS_PARSE\DLE\r\DC2\"\n\
      \\RSUNWIND_ERROR_INVALID_PARAMETER\DLE\SO\DC2\FS\n\
      \\CANUNWIND_ERROR_PTRACE_CALL\DLE\SI"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Profiling'_unknownFields
        (\ x__ y__ -> x__ {_Profiling'_unknownFields = y__})
  defMessage
    = Profiling'_constructor {_Profiling'_unknownFields = []}
  parseMessage
    = let
        loop :: Profiling -> Data.ProtoLens.Encoding.Bytes.Parser Profiling
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
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Profiling"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData Profiling where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_Profiling'_unknownFields x__) ()
data Profiling'CpuMode
  = Profiling'MODE_UNKNOWN |
    Profiling'MODE_KERNEL |
    Profiling'MODE_USER |
    Profiling'MODE_HYPERVISOR |
    Profiling'MODE_GUEST_KERNEL |
    Profiling'MODE_GUEST_USER
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Profiling'CpuMode where
  maybeToEnum 0 = Prelude.Just Profiling'MODE_UNKNOWN
  maybeToEnum 1 = Prelude.Just Profiling'MODE_KERNEL
  maybeToEnum 2 = Prelude.Just Profiling'MODE_USER
  maybeToEnum 3 = Prelude.Just Profiling'MODE_HYPERVISOR
  maybeToEnum 4 = Prelude.Just Profiling'MODE_GUEST_KERNEL
  maybeToEnum 5 = Prelude.Just Profiling'MODE_GUEST_USER
  maybeToEnum _ = Prelude.Nothing
  showEnum Profiling'MODE_UNKNOWN = "MODE_UNKNOWN"
  showEnum Profiling'MODE_KERNEL = "MODE_KERNEL"
  showEnum Profiling'MODE_USER = "MODE_USER"
  showEnum Profiling'MODE_HYPERVISOR = "MODE_HYPERVISOR"
  showEnum Profiling'MODE_GUEST_KERNEL = "MODE_GUEST_KERNEL"
  showEnum Profiling'MODE_GUEST_USER = "MODE_GUEST_USER"
  readEnum k
    | (Prelude.==) k "MODE_UNKNOWN"
    = Prelude.Just Profiling'MODE_UNKNOWN
    | (Prelude.==) k "MODE_KERNEL" = Prelude.Just Profiling'MODE_KERNEL
    | (Prelude.==) k "MODE_USER" = Prelude.Just Profiling'MODE_USER
    | (Prelude.==) k "MODE_HYPERVISOR"
    = Prelude.Just Profiling'MODE_HYPERVISOR
    | (Prelude.==) k "MODE_GUEST_KERNEL"
    = Prelude.Just Profiling'MODE_GUEST_KERNEL
    | (Prelude.==) k "MODE_GUEST_USER"
    = Prelude.Just Profiling'MODE_GUEST_USER
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Profiling'CpuMode where
  minBound = Profiling'MODE_UNKNOWN
  maxBound = Profiling'MODE_GUEST_USER
instance Prelude.Enum Profiling'CpuMode where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum CpuMode: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum Profiling'MODE_UNKNOWN = 0
  fromEnum Profiling'MODE_KERNEL = 1
  fromEnum Profiling'MODE_USER = 2
  fromEnum Profiling'MODE_HYPERVISOR = 3
  fromEnum Profiling'MODE_GUEST_KERNEL = 4
  fromEnum Profiling'MODE_GUEST_USER = 5
  succ Profiling'MODE_GUEST_USER
    = Prelude.error
        "Profiling'CpuMode.succ: bad argument Profiling'MODE_GUEST_USER. This value would be out of bounds."
  succ Profiling'MODE_UNKNOWN = Profiling'MODE_KERNEL
  succ Profiling'MODE_KERNEL = Profiling'MODE_USER
  succ Profiling'MODE_USER = Profiling'MODE_HYPERVISOR
  succ Profiling'MODE_HYPERVISOR = Profiling'MODE_GUEST_KERNEL
  succ Profiling'MODE_GUEST_KERNEL = Profiling'MODE_GUEST_USER
  pred Profiling'MODE_UNKNOWN
    = Prelude.error
        "Profiling'CpuMode.pred: bad argument Profiling'MODE_UNKNOWN. This value would be out of bounds."
  pred Profiling'MODE_KERNEL = Profiling'MODE_UNKNOWN
  pred Profiling'MODE_USER = Profiling'MODE_KERNEL
  pred Profiling'MODE_HYPERVISOR = Profiling'MODE_USER
  pred Profiling'MODE_GUEST_KERNEL = Profiling'MODE_HYPERVISOR
  pred Profiling'MODE_GUEST_USER = Profiling'MODE_GUEST_KERNEL
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Profiling'CpuMode where
  fieldDefault = Profiling'MODE_UNKNOWN
instance Control.DeepSeq.NFData Profiling'CpuMode where
  rnf x__ = Prelude.seq x__ ()
data Profiling'StackUnwindError
  = Profiling'UNWIND_ERROR_UNKNOWN |
    Profiling'UNWIND_ERROR_NONE |
    Profiling'UNWIND_ERROR_MEMORY_INVALID |
    Profiling'UNWIND_ERROR_UNWIND_INFO |
    Profiling'UNWIND_ERROR_UNSUPPORTED |
    Profiling'UNWIND_ERROR_INVALID_MAP |
    Profiling'UNWIND_ERROR_MAX_FRAMES_EXCEEDED |
    Profiling'UNWIND_ERROR_REPEATED_FRAME |
    Profiling'UNWIND_ERROR_INVALID_ELF |
    Profiling'UNWIND_ERROR_SYSTEM_CALL |
    Profiling'UNWIND_ERROR_THREAD_TIMEOUT |
    Profiling'UNWIND_ERROR_THREAD_DOES_NOT_EXIST |
    Profiling'UNWIND_ERROR_BAD_ARCH |
    Profiling'UNWIND_ERROR_MAPS_PARSE |
    Profiling'UNWIND_ERROR_INVALID_PARAMETER |
    Profiling'UNWIND_ERROR_PTRACE_CALL
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Profiling'StackUnwindError where
  maybeToEnum 0 = Prelude.Just Profiling'UNWIND_ERROR_UNKNOWN
  maybeToEnum 1 = Prelude.Just Profiling'UNWIND_ERROR_NONE
  maybeToEnum 2 = Prelude.Just Profiling'UNWIND_ERROR_MEMORY_INVALID
  maybeToEnum 3 = Prelude.Just Profiling'UNWIND_ERROR_UNWIND_INFO
  maybeToEnum 4 = Prelude.Just Profiling'UNWIND_ERROR_UNSUPPORTED
  maybeToEnum 5 = Prelude.Just Profiling'UNWIND_ERROR_INVALID_MAP
  maybeToEnum 6
    = Prelude.Just Profiling'UNWIND_ERROR_MAX_FRAMES_EXCEEDED
  maybeToEnum 7 = Prelude.Just Profiling'UNWIND_ERROR_REPEATED_FRAME
  maybeToEnum 8 = Prelude.Just Profiling'UNWIND_ERROR_INVALID_ELF
  maybeToEnum 9 = Prelude.Just Profiling'UNWIND_ERROR_SYSTEM_CALL
  maybeToEnum 10 = Prelude.Just Profiling'UNWIND_ERROR_THREAD_TIMEOUT
  maybeToEnum 11
    = Prelude.Just Profiling'UNWIND_ERROR_THREAD_DOES_NOT_EXIST
  maybeToEnum 12 = Prelude.Just Profiling'UNWIND_ERROR_BAD_ARCH
  maybeToEnum 13 = Prelude.Just Profiling'UNWIND_ERROR_MAPS_PARSE
  maybeToEnum 14
    = Prelude.Just Profiling'UNWIND_ERROR_INVALID_PARAMETER
  maybeToEnum 15 = Prelude.Just Profiling'UNWIND_ERROR_PTRACE_CALL
  maybeToEnum _ = Prelude.Nothing
  showEnum Profiling'UNWIND_ERROR_UNKNOWN = "UNWIND_ERROR_UNKNOWN"
  showEnum Profiling'UNWIND_ERROR_NONE = "UNWIND_ERROR_NONE"
  showEnum Profiling'UNWIND_ERROR_MEMORY_INVALID
    = "UNWIND_ERROR_MEMORY_INVALID"
  showEnum Profiling'UNWIND_ERROR_UNWIND_INFO
    = "UNWIND_ERROR_UNWIND_INFO"
  showEnum Profiling'UNWIND_ERROR_UNSUPPORTED
    = "UNWIND_ERROR_UNSUPPORTED"
  showEnum Profiling'UNWIND_ERROR_INVALID_MAP
    = "UNWIND_ERROR_INVALID_MAP"
  showEnum Profiling'UNWIND_ERROR_MAX_FRAMES_EXCEEDED
    = "UNWIND_ERROR_MAX_FRAMES_EXCEEDED"
  showEnum Profiling'UNWIND_ERROR_REPEATED_FRAME
    = "UNWIND_ERROR_REPEATED_FRAME"
  showEnum Profiling'UNWIND_ERROR_INVALID_ELF
    = "UNWIND_ERROR_INVALID_ELF"
  showEnum Profiling'UNWIND_ERROR_SYSTEM_CALL
    = "UNWIND_ERROR_SYSTEM_CALL"
  showEnum Profiling'UNWIND_ERROR_THREAD_TIMEOUT
    = "UNWIND_ERROR_THREAD_TIMEOUT"
  showEnum Profiling'UNWIND_ERROR_THREAD_DOES_NOT_EXIST
    = "UNWIND_ERROR_THREAD_DOES_NOT_EXIST"
  showEnum Profiling'UNWIND_ERROR_BAD_ARCH = "UNWIND_ERROR_BAD_ARCH"
  showEnum Profiling'UNWIND_ERROR_MAPS_PARSE
    = "UNWIND_ERROR_MAPS_PARSE"
  showEnum Profiling'UNWIND_ERROR_INVALID_PARAMETER
    = "UNWIND_ERROR_INVALID_PARAMETER"
  showEnum Profiling'UNWIND_ERROR_PTRACE_CALL
    = "UNWIND_ERROR_PTRACE_CALL"
  readEnum k
    | (Prelude.==) k "UNWIND_ERROR_UNKNOWN"
    = Prelude.Just Profiling'UNWIND_ERROR_UNKNOWN
    | (Prelude.==) k "UNWIND_ERROR_NONE"
    = Prelude.Just Profiling'UNWIND_ERROR_NONE
    | (Prelude.==) k "UNWIND_ERROR_MEMORY_INVALID"
    = Prelude.Just Profiling'UNWIND_ERROR_MEMORY_INVALID
    | (Prelude.==) k "UNWIND_ERROR_UNWIND_INFO"
    = Prelude.Just Profiling'UNWIND_ERROR_UNWIND_INFO
    | (Prelude.==) k "UNWIND_ERROR_UNSUPPORTED"
    = Prelude.Just Profiling'UNWIND_ERROR_UNSUPPORTED
    | (Prelude.==) k "UNWIND_ERROR_INVALID_MAP"
    = Prelude.Just Profiling'UNWIND_ERROR_INVALID_MAP
    | (Prelude.==) k "UNWIND_ERROR_MAX_FRAMES_EXCEEDED"
    = Prelude.Just Profiling'UNWIND_ERROR_MAX_FRAMES_EXCEEDED
    | (Prelude.==) k "UNWIND_ERROR_REPEATED_FRAME"
    = Prelude.Just Profiling'UNWIND_ERROR_REPEATED_FRAME
    | (Prelude.==) k "UNWIND_ERROR_INVALID_ELF"
    = Prelude.Just Profiling'UNWIND_ERROR_INVALID_ELF
    | (Prelude.==) k "UNWIND_ERROR_SYSTEM_CALL"
    = Prelude.Just Profiling'UNWIND_ERROR_SYSTEM_CALL
    | (Prelude.==) k "UNWIND_ERROR_THREAD_TIMEOUT"
    = Prelude.Just Profiling'UNWIND_ERROR_THREAD_TIMEOUT
    | (Prelude.==) k "UNWIND_ERROR_THREAD_DOES_NOT_EXIST"
    = Prelude.Just Profiling'UNWIND_ERROR_THREAD_DOES_NOT_EXIST
    | (Prelude.==) k "UNWIND_ERROR_BAD_ARCH"
    = Prelude.Just Profiling'UNWIND_ERROR_BAD_ARCH
    | (Prelude.==) k "UNWIND_ERROR_MAPS_PARSE"
    = Prelude.Just Profiling'UNWIND_ERROR_MAPS_PARSE
    | (Prelude.==) k "UNWIND_ERROR_INVALID_PARAMETER"
    = Prelude.Just Profiling'UNWIND_ERROR_INVALID_PARAMETER
    | (Prelude.==) k "UNWIND_ERROR_PTRACE_CALL"
    = Prelude.Just Profiling'UNWIND_ERROR_PTRACE_CALL
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Profiling'StackUnwindError where
  minBound = Profiling'UNWIND_ERROR_UNKNOWN
  maxBound = Profiling'UNWIND_ERROR_PTRACE_CALL
instance Prelude.Enum Profiling'StackUnwindError where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum StackUnwindError: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum Profiling'UNWIND_ERROR_UNKNOWN = 0
  fromEnum Profiling'UNWIND_ERROR_NONE = 1
  fromEnum Profiling'UNWIND_ERROR_MEMORY_INVALID = 2
  fromEnum Profiling'UNWIND_ERROR_UNWIND_INFO = 3
  fromEnum Profiling'UNWIND_ERROR_UNSUPPORTED = 4
  fromEnum Profiling'UNWIND_ERROR_INVALID_MAP = 5
  fromEnum Profiling'UNWIND_ERROR_MAX_FRAMES_EXCEEDED = 6
  fromEnum Profiling'UNWIND_ERROR_REPEATED_FRAME = 7
  fromEnum Profiling'UNWIND_ERROR_INVALID_ELF = 8
  fromEnum Profiling'UNWIND_ERROR_SYSTEM_CALL = 9
  fromEnum Profiling'UNWIND_ERROR_THREAD_TIMEOUT = 10
  fromEnum Profiling'UNWIND_ERROR_THREAD_DOES_NOT_EXIST = 11
  fromEnum Profiling'UNWIND_ERROR_BAD_ARCH = 12
  fromEnum Profiling'UNWIND_ERROR_MAPS_PARSE = 13
  fromEnum Profiling'UNWIND_ERROR_INVALID_PARAMETER = 14
  fromEnum Profiling'UNWIND_ERROR_PTRACE_CALL = 15
  succ Profiling'UNWIND_ERROR_PTRACE_CALL
    = Prelude.error
        "Profiling'StackUnwindError.succ: bad argument Profiling'UNWIND_ERROR_PTRACE_CALL. This value would be out of bounds."
  succ Profiling'UNWIND_ERROR_UNKNOWN = Profiling'UNWIND_ERROR_NONE
  succ Profiling'UNWIND_ERROR_NONE
    = Profiling'UNWIND_ERROR_MEMORY_INVALID
  succ Profiling'UNWIND_ERROR_MEMORY_INVALID
    = Profiling'UNWIND_ERROR_UNWIND_INFO
  succ Profiling'UNWIND_ERROR_UNWIND_INFO
    = Profiling'UNWIND_ERROR_UNSUPPORTED
  succ Profiling'UNWIND_ERROR_UNSUPPORTED
    = Profiling'UNWIND_ERROR_INVALID_MAP
  succ Profiling'UNWIND_ERROR_INVALID_MAP
    = Profiling'UNWIND_ERROR_MAX_FRAMES_EXCEEDED
  succ Profiling'UNWIND_ERROR_MAX_FRAMES_EXCEEDED
    = Profiling'UNWIND_ERROR_REPEATED_FRAME
  succ Profiling'UNWIND_ERROR_REPEATED_FRAME
    = Profiling'UNWIND_ERROR_INVALID_ELF
  succ Profiling'UNWIND_ERROR_INVALID_ELF
    = Profiling'UNWIND_ERROR_SYSTEM_CALL
  succ Profiling'UNWIND_ERROR_SYSTEM_CALL
    = Profiling'UNWIND_ERROR_THREAD_TIMEOUT
  succ Profiling'UNWIND_ERROR_THREAD_TIMEOUT
    = Profiling'UNWIND_ERROR_THREAD_DOES_NOT_EXIST
  succ Profiling'UNWIND_ERROR_THREAD_DOES_NOT_EXIST
    = Profiling'UNWIND_ERROR_BAD_ARCH
  succ Profiling'UNWIND_ERROR_BAD_ARCH
    = Profiling'UNWIND_ERROR_MAPS_PARSE
  succ Profiling'UNWIND_ERROR_MAPS_PARSE
    = Profiling'UNWIND_ERROR_INVALID_PARAMETER
  succ Profiling'UNWIND_ERROR_INVALID_PARAMETER
    = Profiling'UNWIND_ERROR_PTRACE_CALL
  pred Profiling'UNWIND_ERROR_UNKNOWN
    = Prelude.error
        "Profiling'StackUnwindError.pred: bad argument Profiling'UNWIND_ERROR_UNKNOWN. This value would be out of bounds."
  pred Profiling'UNWIND_ERROR_NONE = Profiling'UNWIND_ERROR_UNKNOWN
  pred Profiling'UNWIND_ERROR_MEMORY_INVALID
    = Profiling'UNWIND_ERROR_NONE
  pred Profiling'UNWIND_ERROR_UNWIND_INFO
    = Profiling'UNWIND_ERROR_MEMORY_INVALID
  pred Profiling'UNWIND_ERROR_UNSUPPORTED
    = Profiling'UNWIND_ERROR_UNWIND_INFO
  pred Profiling'UNWIND_ERROR_INVALID_MAP
    = Profiling'UNWIND_ERROR_UNSUPPORTED
  pred Profiling'UNWIND_ERROR_MAX_FRAMES_EXCEEDED
    = Profiling'UNWIND_ERROR_INVALID_MAP
  pred Profiling'UNWIND_ERROR_REPEATED_FRAME
    = Profiling'UNWIND_ERROR_MAX_FRAMES_EXCEEDED
  pred Profiling'UNWIND_ERROR_INVALID_ELF
    = Profiling'UNWIND_ERROR_REPEATED_FRAME
  pred Profiling'UNWIND_ERROR_SYSTEM_CALL
    = Profiling'UNWIND_ERROR_INVALID_ELF
  pred Profiling'UNWIND_ERROR_THREAD_TIMEOUT
    = Profiling'UNWIND_ERROR_SYSTEM_CALL
  pred Profiling'UNWIND_ERROR_THREAD_DOES_NOT_EXIST
    = Profiling'UNWIND_ERROR_THREAD_TIMEOUT
  pred Profiling'UNWIND_ERROR_BAD_ARCH
    = Profiling'UNWIND_ERROR_THREAD_DOES_NOT_EXIST
  pred Profiling'UNWIND_ERROR_MAPS_PARSE
    = Profiling'UNWIND_ERROR_BAD_ARCH
  pred Profiling'UNWIND_ERROR_INVALID_PARAMETER
    = Profiling'UNWIND_ERROR_MAPS_PARSE
  pred Profiling'UNWIND_ERROR_PTRACE_CALL
    = Profiling'UNWIND_ERROR_INVALID_PARAMETER
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Profiling'StackUnwindError where
  fieldDefault = Profiling'UNWIND_ERROR_UNKNOWN
instance Control.DeepSeq.NFData Profiling'StackUnwindError where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.address' @:: Lens' StreamingAllocation [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'address' @:: Lens' StreamingAllocation (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.size' @:: Lens' StreamingAllocation [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'size' @:: Lens' StreamingAllocation (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.sampleSize' @:: Lens' StreamingAllocation [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'sampleSize' @:: Lens' StreamingAllocation (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.clockMonotonicCoarseTimestamp' @:: Lens' StreamingAllocation [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'clockMonotonicCoarseTimestamp' @:: Lens' StreamingAllocation (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.heapId' @:: Lens' StreamingAllocation [Data.Word.Word32]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'heapId' @:: Lens' StreamingAllocation (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.sequenceNumber' @:: Lens' StreamingAllocation [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'sequenceNumber' @:: Lens' StreamingAllocation (Data.Vector.Unboxed.Vector Data.Word.Word64)@ -}
data StreamingAllocation
  = StreamingAllocation'_constructor {_StreamingAllocation'address :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                      _StreamingAllocation'size :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                      _StreamingAllocation'sampleSize :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                      _StreamingAllocation'clockMonotonicCoarseTimestamp :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                      _StreamingAllocation'heapId :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                      _StreamingAllocation'sequenceNumber :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                      _StreamingAllocation'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamingAllocation where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamingAllocation "address" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'address
           (\ x__ y__ -> x__ {_StreamingAllocation'address = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingAllocation "vec'address" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'address
           (\ x__ y__ -> x__ {_StreamingAllocation'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingAllocation "size" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'size
           (\ x__ y__ -> x__ {_StreamingAllocation'size = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingAllocation "vec'size" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'size
           (\ x__ y__ -> x__ {_StreamingAllocation'size = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingAllocation "sampleSize" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'sampleSize
           (\ x__ y__ -> x__ {_StreamingAllocation'sampleSize = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingAllocation "vec'sampleSize" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'sampleSize
           (\ x__ y__ -> x__ {_StreamingAllocation'sampleSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingAllocation "clockMonotonicCoarseTimestamp" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'clockMonotonicCoarseTimestamp
           (\ x__ y__
              -> x__ {_StreamingAllocation'clockMonotonicCoarseTimestamp = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingAllocation "vec'clockMonotonicCoarseTimestamp" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'clockMonotonicCoarseTimestamp
           (\ x__ y__
              -> x__ {_StreamingAllocation'clockMonotonicCoarseTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingAllocation "heapId" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'heapId
           (\ x__ y__ -> x__ {_StreamingAllocation'heapId = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingAllocation "vec'heapId" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'heapId
           (\ x__ y__ -> x__ {_StreamingAllocation'heapId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingAllocation "sequenceNumber" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'sequenceNumber
           (\ x__ y__ -> x__ {_StreamingAllocation'sequenceNumber = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingAllocation "vec'sequenceNumber" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingAllocation'sequenceNumber
           (\ x__ y__ -> x__ {_StreamingAllocation'sequenceNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamingAllocation where
  messageName _
    = Data.Text.pack "perfetto.protos.StreamingAllocation"
  packedMessageDescriptor _
    = "\n\
      \\DC3StreamingAllocation\DC2\CAN\n\
      \\aaddress\CAN\SOH \ETX(\EOTR\aaddress\DC2\DC2\n\
      \\EOTsize\CAN\STX \ETX(\EOTR\EOTsize\DC2\US\n\
      \\vsample_size\CAN\ETX \ETX(\EOTR\n\
      \sampleSize\DC2G\n\
      \ clock_monotonic_coarse_timestamp\CAN\EOT \ETX(\EOTR\GSclockMonotonicCoarseTimestamp\DC2\ETB\n\
      \\aheap_id\CAN\ENQ \ETX(\rR\ACKheapId\DC2'\n\
      \\SIsequence_number\CAN\ACK \ETX(\EOTR\SOsequenceNumber"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor StreamingAllocation
        size__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"size")) ::
              Data.ProtoLens.FieldDescriptor StreamingAllocation
        sampleSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sample_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sampleSize")) ::
              Data.ProtoLens.FieldDescriptor StreamingAllocation
        clockMonotonicCoarseTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clock_monotonic_coarse_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"clockMonotonicCoarseTimestamp")) ::
              Data.ProtoLens.FieldDescriptor StreamingAllocation
        heapId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"heapId")) ::
              Data.ProtoLens.FieldDescriptor StreamingAllocation
        sequenceNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sequenceNumber")) ::
              Data.ProtoLens.FieldDescriptor StreamingAllocation
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, size__field_descriptor),
           (Data.ProtoLens.Tag 3, sampleSize__field_descriptor),
           (Data.ProtoLens.Tag 4, 
            clockMonotonicCoarseTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 5, heapId__field_descriptor),
           (Data.ProtoLens.Tag 6, sequenceNumber__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamingAllocation'_unknownFields
        (\ x__ y__ -> x__ {_StreamingAllocation'_unknownFields = y__})
  defMessage
    = StreamingAllocation'_constructor
        {_StreamingAllocation'address = Data.Vector.Generic.empty,
         _StreamingAllocation'size = Data.Vector.Generic.empty,
         _StreamingAllocation'sampleSize = Data.Vector.Generic.empty,
         _StreamingAllocation'clockMonotonicCoarseTimestamp = Data.Vector.Generic.empty,
         _StreamingAllocation'heapId = Data.Vector.Generic.empty,
         _StreamingAllocation'sequenceNumber = Data.Vector.Generic.empty,
         _StreamingAllocation'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamingAllocation
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                            -> Data.ProtoLens.Encoding.Bytes.Parser StreamingAllocation
        loop
          x
          mutable'address
          mutable'clockMonotonicCoarseTimestamp
          mutable'heapId
          mutable'sampleSize
          mutable'sequenceNumber
          mutable'size
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'address)
                      frozen'clockMonotonicCoarseTimestamp <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                   mutable'clockMonotonicCoarseTimestamp)
                      frozen'heapId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'heapId)
                      frozen'sampleSize <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'sampleSize)
                      frozen'sequenceNumber <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'sequenceNumber)
                      frozen'size <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'size)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'address") frozen'address
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'clockMonotonicCoarseTimestamp")
                                 frozen'clockMonotonicCoarseTimestamp
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'heapId") frozen'heapId
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'sampleSize")
                                       frozen'sampleSize
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'sequenceNumber")
                                          frozen'sequenceNumber
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'size") frozen'size
                                             x)))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "address"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'address y)
                                loop
                                  x v mutable'clockMonotonicCoarseTimestamp mutable'heapId
                                  mutable'sampleSize mutable'sequenceNumber mutable'size
                        10
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "address"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'address)
                                loop
                                  x y mutable'clockMonotonicCoarseTimestamp mutable'heapId
                                  mutable'sampleSize mutable'sequenceNumber mutable'size
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "size"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'size y)
                                loop
                                  x mutable'address mutable'clockMonotonicCoarseTimestamp
                                  mutable'heapId mutable'sampleSize mutable'sequenceNumber v
                        18
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "size"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'size)
                                loop
                                  x mutable'address mutable'clockMonotonicCoarseTimestamp
                                  mutable'heapId mutable'sampleSize mutable'sequenceNumber y
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "sample_size"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'sampleSize y)
                                loop
                                  x mutable'address mutable'clockMonotonicCoarseTimestamp
                                  mutable'heapId v mutable'sequenceNumber mutable'size
                        26
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "sample_size"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'sampleSize)
                                loop
                                  x mutable'address mutable'clockMonotonicCoarseTimestamp
                                  mutable'heapId y mutable'sequenceNumber mutable'size
                        32
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt
                                        "clock_monotonic_coarse_timestamp"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'clockMonotonicCoarseTimestamp y)
                                loop
                                  x mutable'address v mutable'heapId mutable'sampleSize
                                  mutable'sequenceNumber mutable'size
                        34
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "clock_monotonic_coarse_timestamp"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'clockMonotonicCoarseTimestamp)
                                loop
                                  x mutable'address y mutable'heapId mutable'sampleSize
                                  mutable'sequenceNumber mutable'size
                        40
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "heap_id"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'heapId y)
                                loop
                                  x mutable'address mutable'clockMonotonicCoarseTimestamp v
                                  mutable'sampleSize mutable'sequenceNumber mutable'size
                        42
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "heap_id"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'heapId)
                                loop
                                  x mutable'address mutable'clockMonotonicCoarseTimestamp y
                                  mutable'sampleSize mutable'sequenceNumber mutable'size
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "sequence_number"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sequenceNumber y)
                                loop
                                  x mutable'address mutable'clockMonotonicCoarseTimestamp
                                  mutable'heapId mutable'sampleSize v mutable'size
                        50
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "sequence_number"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'sequenceNumber)
                                loop
                                  x mutable'address mutable'clockMonotonicCoarseTimestamp
                                  mutable'heapId mutable'sampleSize y mutable'size
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'address mutable'clockMonotonicCoarseTimestamp
                                  mutable'heapId mutable'sampleSize mutable'sequenceNumber
                                  mutable'size
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'clockMonotonicCoarseTimestamp <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                         Data.ProtoLens.Encoding.Growing.new
              mutable'heapId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'sampleSize <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'sequenceNumber <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'size <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'address
                mutable'clockMonotonicCoarseTimestamp mutable'heapId
                mutable'sampleSize mutable'sequenceNumber mutable'size)
          "StreamingAllocation"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'address") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'size") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'sampleSize") _x))
                   ((Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                         (\ _v
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'clockMonotonicCoarseTimestamp")
                            _x))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                    ((Prelude..)
                                       Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                       _v))
                            (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'heapId") _x))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'sequenceNumber") _x))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData StreamingAllocation where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamingAllocation'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamingAllocation'address x__)
                (Control.DeepSeq.deepseq
                   (_StreamingAllocation'size x__)
                   (Control.DeepSeq.deepseq
                      (_StreamingAllocation'sampleSize x__)
                      (Control.DeepSeq.deepseq
                         (_StreamingAllocation'clockMonotonicCoarseTimestamp x__)
                         (Control.DeepSeq.deepseq
                            (_StreamingAllocation'heapId x__)
                            (Control.DeepSeq.deepseq
                               (_StreamingAllocation'sequenceNumber x__) ()))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.address' @:: Lens' StreamingFree [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'address' @:: Lens' StreamingFree (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.heapId' @:: Lens' StreamingFree [Data.Word.Word32]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'heapId' @:: Lens' StreamingFree (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.sequenceNumber' @:: Lens' StreamingFree [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'sequenceNumber' @:: Lens' StreamingFree (Data.Vector.Unboxed.Vector Data.Word.Word64)@ -}
data StreamingFree
  = StreamingFree'_constructor {_StreamingFree'address :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                _StreamingFree'heapId :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                _StreamingFree'sequenceNumber :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                _StreamingFree'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamingFree where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamingFree "address" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingFree'address
           (\ x__ y__ -> x__ {_StreamingFree'address = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingFree "vec'address" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingFree'address
           (\ x__ y__ -> x__ {_StreamingFree'address = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingFree "heapId" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingFree'heapId
           (\ x__ y__ -> x__ {_StreamingFree'heapId = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingFree "vec'heapId" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingFree'heapId
           (\ x__ y__ -> x__ {_StreamingFree'heapId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingFree "sequenceNumber" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingFree'sequenceNumber
           (\ x__ y__ -> x__ {_StreamingFree'sequenceNumber = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingFree "vec'sequenceNumber" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingFree'sequenceNumber
           (\ x__ y__ -> x__ {_StreamingFree'sequenceNumber = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamingFree where
  messageName _ = Data.Text.pack "perfetto.protos.StreamingFree"
  packedMessageDescriptor _
    = "\n\
      \\rStreamingFree\DC2\CAN\n\
      \\aaddress\CAN\SOH \ETX(\EOTR\aaddress\DC2\ETB\n\
      \\aheap_id\CAN\STX \ETX(\rR\ACKheapId\DC2'\n\
      \\SIsequence_number\CAN\ETX \ETX(\EOTR\SOsequenceNumber"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        address__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "address"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"address")) ::
              Data.ProtoLens.FieldDescriptor StreamingFree
        heapId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "heap_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"heapId")) ::
              Data.ProtoLens.FieldDescriptor StreamingFree
        sequenceNumber__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence_number"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"sequenceNumber")) ::
              Data.ProtoLens.FieldDescriptor StreamingFree
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, address__field_descriptor),
           (Data.ProtoLens.Tag 2, heapId__field_descriptor),
           (Data.ProtoLens.Tag 3, sequenceNumber__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamingFree'_unknownFields
        (\ x__ y__ -> x__ {_StreamingFree'_unknownFields = y__})
  defMessage
    = StreamingFree'_constructor
        {_StreamingFree'address = Data.Vector.Generic.empty,
         _StreamingFree'heapId = Data.Vector.Generic.empty,
         _StreamingFree'sequenceNumber = Data.Vector.Generic.empty,
         _StreamingFree'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamingFree
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                   -> Data.ProtoLens.Encoding.Bytes.Parser StreamingFree
        loop x mutable'address mutable'heapId mutable'sequenceNumber
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'address)
                      frozen'heapId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'heapId)
                      frozen'sequenceNumber <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'sequenceNumber)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'address") frozen'address
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'heapId") frozen'heapId
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'sequenceNumber")
                                    frozen'sequenceNumber x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "address"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'address y)
                                loop x v mutable'heapId mutable'sequenceNumber
                        10
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "address"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'address)
                                loop x y mutable'heapId mutable'sequenceNumber
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "heap_id"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'heapId y)
                                loop x mutable'address v mutable'sequenceNumber
                        18
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "heap_id"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'heapId)
                                loop x mutable'address y mutable'sequenceNumber
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "sequence_number"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'sequenceNumber y)
                                loop x mutable'address mutable'heapId v
                        26
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "sequence_number"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'sequenceNumber)
                                loop x mutable'address mutable'heapId y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'address mutable'heapId mutable'sequenceNumber
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'address <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'heapId <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'sequenceNumber <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'address mutable'heapId
                mutable'sequenceNumber)
          "StreamingFree"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'address") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                           ((Prelude..)
                              Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'heapId") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'sequenceNumber") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData StreamingFree where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamingFree'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamingFree'address x__)
                (Control.DeepSeq.deepseq
                   (_StreamingFree'heapId x__)
                   (Control.DeepSeq.deepseq (_StreamingFree'sequenceNumber x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.callstackIid' @:: Lens' StreamingProfilePacket [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'callstackIid' @:: Lens' StreamingProfilePacket (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.timestampDeltaUs' @:: Lens' StreamingProfilePacket [Data.Int.Int64]@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.vec'timestampDeltaUs' @:: Lens' StreamingProfilePacket (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.processPriority' @:: Lens' StreamingProfilePacket Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Profiling.ProfilePacket_Fields.maybe'processPriority' @:: Lens' StreamingProfilePacket (Prelude.Maybe Data.Int.Int32)@ -}
data StreamingProfilePacket
  = StreamingProfilePacket'_constructor {_StreamingProfilePacket'callstackIid :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                         _StreamingProfilePacket'timestampDeltaUs :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                                         _StreamingProfilePacket'processPriority :: !(Prelude.Maybe Data.Int.Int32),
                                         _StreamingProfilePacket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show StreamingProfilePacket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField StreamingProfilePacket "callstackIid" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingProfilePacket'callstackIid
           (\ x__ y__ -> x__ {_StreamingProfilePacket'callstackIid = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingProfilePacket "vec'callstackIid" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingProfilePacket'callstackIid
           (\ x__ y__ -> x__ {_StreamingProfilePacket'callstackIid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingProfilePacket "timestampDeltaUs" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingProfilePacket'timestampDeltaUs
           (\ x__ y__
              -> x__ {_StreamingProfilePacket'timestampDeltaUs = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField StreamingProfilePacket "vec'timestampDeltaUs" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingProfilePacket'timestampDeltaUs
           (\ x__ y__
              -> x__ {_StreamingProfilePacket'timestampDeltaUs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField StreamingProfilePacket "processPriority" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingProfilePacket'processPriority
           (\ x__ y__ -> x__ {_StreamingProfilePacket'processPriority = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField StreamingProfilePacket "maybe'processPriority" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _StreamingProfilePacket'processPriority
           (\ x__ y__ -> x__ {_StreamingProfilePacket'processPriority = y__}))
        Prelude.id
instance Data.ProtoLens.Message StreamingProfilePacket where
  messageName _
    = Data.Text.pack "perfetto.protos.StreamingProfilePacket"
  packedMessageDescriptor _
    = "\n\
      \\SYNStreamingProfilePacket\DC2#\n\
      \\rcallstack_iid\CAN\SOH \ETX(\EOTR\fcallstackIid\DC2,\n\
      \\DC2timestamp_delta_us\CAN\STX \ETX(\ETXR\DLEtimestampDeltaUs\DC2)\n\
      \\DLEprocess_priority\CAN\ETX \SOH(\ENQR\SIprocessPriority"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        callstackIid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "callstack_iid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"callstackIid")) ::
              Data.ProtoLens.FieldDescriptor StreamingProfilePacket
        timestampDeltaUs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp_delta_us"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"timestampDeltaUs")) ::
              Data.ProtoLens.FieldDescriptor StreamingProfilePacket
        processPriority__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "process_priority"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'processPriority")) ::
              Data.ProtoLens.FieldDescriptor StreamingProfilePacket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, callstackIid__field_descriptor),
           (Data.ProtoLens.Tag 2, timestampDeltaUs__field_descriptor),
           (Data.ProtoLens.Tag 3, processPriority__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _StreamingProfilePacket'_unknownFields
        (\ x__ y__ -> x__ {_StreamingProfilePacket'_unknownFields = y__})
  defMessage
    = StreamingProfilePacket'_constructor
        {_StreamingProfilePacket'callstackIid = Data.Vector.Generic.empty,
         _StreamingProfilePacket'timestampDeltaUs = Data.Vector.Generic.empty,
         _StreamingProfilePacket'processPriority = Prelude.Nothing,
         _StreamingProfilePacket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          StreamingProfilePacket
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                -> Data.ProtoLens.Encoding.Bytes.Parser StreamingProfilePacket
        loop x mutable'callstackIid mutable'timestampDeltaUs
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'callstackIid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'callstackIid)
                      frozen'timestampDeltaUs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'timestampDeltaUs)
                      (let missing = []
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
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'callstackIid")
                              frozen'callstackIid
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'timestampDeltaUs")
                                 frozen'timestampDeltaUs x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "callstack_iid"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'callstackIid y)
                                loop x v mutable'timestampDeltaUs
                        10
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    Data.ProtoLens.Encoding.Bytes.getVarInt
                                                                    "callstack_iid"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'callstackIid)
                                loop x y mutable'timestampDeltaUs
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "timestamp_delta_us"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'timestampDeltaUs y)
                                loop x mutable'callstackIid v
                        18
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "timestamp_delta_us"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'timestampDeltaUs)
                                loop x mutable'callstackIid y
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "process_priority"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"processPriority") y x)
                                  mutable'callstackIid mutable'timestampDeltaUs
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'callstackIid mutable'timestampDeltaUs
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'callstackIid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'timestampDeltaUs <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'callstackIid
                mutable'timestampDeltaUs)
          "StreamingProfilePacket"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'callstackIid") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                           ((Prelude..)
                              Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'timestampDeltaUs") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'processPriority") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData StreamingProfilePacket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_StreamingProfilePacket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_StreamingProfilePacket'callstackIid x__)
                (Control.DeepSeq.deepseq
                   (_StreamingProfilePacket'timestampDeltaUs x__)
                   (Control.DeepSeq.deepseq
                      (_StreamingProfilePacket'processPriority x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \4protos/perfetto/trace/profiling/profile_packet.proto\DC2\SIperfetto.protos\SUB(protos/perfetto/common/perf_events.proto\SUB4protos/perfetto/trace/profiling/profile_common.proto\"\187\SI\n\
    \\rProfilePacket\DC29\n\
    \\astrings\CAN\SOH \ETX(\v2\US.perfetto.protos.InternedStringR\astrings\DC24\n\
    \\bmappings\CAN\EOT \ETX(\v2\CAN.perfetto.protos.MappingR\bmappings\DC2.\n\
    \\ACKframes\CAN\STX \ETX(\v2\SYN.perfetto.protos.FrameR\ACKframes\DC2:\n\
    \\n\
    \callstacks\CAN\ETX \ETX(\v2\SUB.perfetto.protos.CallstackR\n\
    \callstacks\DC2V\n\
    \\rprocess_dumps\CAN\ENQ \ETX(\v21.perfetto.protos.ProfilePacket.ProcessHeapSamplesR\fprocessDumps\DC2\FS\n\
    \\tcontinued\CAN\ACK \SOH(\bR\tcontinued\DC2\DC4\n\
    \\ENQindex\CAN\a \SOH(\EOTR\ENQindex\SUB\154\STX\n\
    \\n\
    \HeapSample\DC2!\n\
    \\fcallstack_id\CAN\SOH \SOH(\EOTR\vcallstackId\DC2%\n\
    \\SOself_allocated\CAN\STX \SOH(\EOTR\rselfAllocated\DC2\GS\n\
    \\n\
    \self_freed\CAN\ETX \SOH(\EOTR\tselfFreed\DC2\EM\n\
    \\bself_max\CAN\b \SOH(\EOTR\aselfMax\DC2$\n\
    \\SOself_max_count\CAN\t \SOH(\EOTR\fselfMaxCount\DC2\FS\n\
    \\ttimestamp\CAN\EOT \SOH(\EOTR\ttimestamp\DC2\US\n\
    \\valloc_count\CAN\ENQ \SOH(\EOTR\n\
    \allocCount\DC2\GS\n\
    \\n\
    \free_count\CAN\ACK \SOH(\EOTR\tfreeCountJ\EOT\b\a\DLE\b\SUB\182\SOH\n\
    \\tHistogram\DC2I\n\
    \\abuckets\CAN\SOH \ETX(\v2/.perfetto.protos.ProfilePacket.Histogram.BucketR\abuckets\SUB^\n\
    \\ACKBucket\DC2\US\n\
    \\vupper_limit\CAN\SOH \SOH(\EOTR\n\
    \upperLimit\DC2\GS\n\
    \\n\
    \max_bucket\CAN\STX \SOH(\bR\tmaxBucket\DC2\DC4\n\
    \\ENQcount\CAN\ETX \SOH(\EOTR\ENQcount\SUB\201\STX\n\
    \\fProcessStats\DC2)\n\
    \\DLEunwinding_errors\CAN\SOH \SOH(\EOTR\SIunwindingErrors\DC2!\n\
    \\fheap_samples\CAN\STX \SOH(\EOTR\vheapSamples\DC2!\n\
    \\fmap_reparses\CAN\ETX \SOH(\EOTR\vmapReparses\DC2T\n\
    \\DC1unwinding_time_us\CAN\EOT \SOH(\v2(.perfetto.protos.ProfilePacket.HistogramR\SIunwindingTimeUs\DC25\n\
    \\ETBtotal_unwinding_time_us\CAN\ENQ \SOH(\EOTR\DC4totalUnwindingTimeUs\DC2;\n\
    \\SUBclient_spinlock_blocked_us\CAN\ACK \SOH(\EOTR\ETBclientSpinlockBlockedUs\SUB\158\ACK\n\
    \\DC2ProcessHeapSamples\DC2\DLE\n\
    \\ETXpid\CAN\SOH \SOH(\EOTR\ETXpid\DC2!\n\
    \\ffrom_startup\CAN\ETX \SOH(\bR\vfromStartup\DC2/\n\
    \\DC3rejected_concurrent\CAN\EOT \SOH(\bR\DC2rejectedConcurrent\DC2\"\n\
    \\fdisconnected\CAN\ACK \SOH(\bR\fdisconnected\DC2%\n\
    \\SObuffer_overran\CAN\a \SOH(\bR\rbufferOverran\DC2`\n\
    \\fclient_error\CAN\SO \SOH(\SO2=.perfetto.protos.ProfilePacket.ProcessHeapSamples.ClientErrorR\vclientError\DC2)\n\
    \\DLEbuffer_corrupted\CAN\b \SOH(\bR\SIbufferCorrupted\DC2#\n\
    \\rhit_guardrail\CAN\n\
    \ \SOH(\bR\fhitGuardrail\DC2\ESC\n\
    \\theap_name\CAN\v \SOH(\tR\bheapName\DC26\n\
    \\ETBsampling_interval_bytes\CAN\f \SOH(\EOTR\NAKsamplingIntervalBytes\DC2?\n\
    \\FSorig_sampling_interval_bytes\CAN\r \SOH(\EOTR\EMorigSamplingIntervalBytes\DC2\FS\n\
    \\ttimestamp\CAN\t \SOH(\EOTR\ttimestamp\DC2A\n\
    \\ENQstats\CAN\ENQ \SOH(\v2+.perfetto.protos.ProfilePacket.ProcessStatsR\ENQstats\DC2C\n\
    \\asamples\CAN\STX \ETX(\v2).perfetto.protos.ProfilePacket.HeapSampleR\asamples\"i\n\
    \\vClientError\DC2\NAK\n\
    \\DC1CLIENT_ERROR_NONE\DLE\NUL\DC2\FS\n\
    \\CANCLIENT_ERROR_HIT_TIMEOUT\DLE\SOH\DC2%\n\
    \!CLIENT_ERROR_INVALID_STACK_BOUNDS\DLE\STX\"\239\SOH\n\
    \\DC3StreamingAllocation\DC2\CAN\n\
    \\aaddress\CAN\SOH \ETX(\EOTR\aaddress\DC2\DC2\n\
    \\EOTsize\CAN\STX \ETX(\EOTR\EOTsize\DC2\US\n\
    \\vsample_size\CAN\ETX \ETX(\EOTR\n\
    \sampleSize\DC2G\n\
    \ clock_monotonic_coarse_timestamp\CAN\EOT \ETX(\EOTR\GSclockMonotonicCoarseTimestamp\DC2\ETB\n\
    \\aheap_id\CAN\ENQ \ETX(\rR\ACKheapId\DC2'\n\
    \\SIsequence_number\CAN\ACK \ETX(\EOTR\SOsequenceNumber\"k\n\
    \\rStreamingFree\DC2\CAN\n\
    \\aaddress\CAN\SOH \ETX(\EOTR\aaddress\DC2\ETB\n\
    \\aheap_id\CAN\STX \ETX(\rR\ACKheapId\DC2'\n\
    \\SIsequence_number\CAN\ETX \ETX(\EOTR\SOsequenceNumber\"\150\SOH\n\
    \\SYNStreamingProfilePacket\DC2#\n\
    \\rcallstack_iid\CAN\SOH \ETX(\EOTR\fcallstackIid\DC2,\n\
    \\DC2timestamp_delta_us\CAN\STX \ETX(\ETXR\DLEtimestampDeltaUs\DC2)\n\
    \\DLEprocess_priority\CAN\ETX \SOH(\ENQR\SIprocessPriority\"\144\ENQ\n\
    \\tProfiling\"|\n\
    \\aCpuMode\DC2\DLE\n\
    \\fMODE_UNKNOWN\DLE\NUL\DC2\SI\n\
    \\vMODE_KERNEL\DLE\SOH\DC2\r\n\
    \\tMODE_USER\DLE\STX\DC2\DC3\n\
    \\SIMODE_HYPERVISOR\DLE\ETX\DC2\NAK\n\
    \\DC1MODE_GUEST_KERNEL\DLE\EOT\DC2\DC3\n\
    \\SIMODE_GUEST_USER\DLE\ENQ\"\132\EOT\n\
    \\DLEStackUnwindError\DC2\CAN\n\
    \\DC4UNWIND_ERROR_UNKNOWN\DLE\NUL\DC2\NAK\n\
    \\DC1UNWIND_ERROR_NONE\DLE\SOH\DC2\US\n\
    \\ESCUNWIND_ERROR_MEMORY_INVALID\DLE\STX\DC2\FS\n\
    \\CANUNWIND_ERROR_UNWIND_INFO\DLE\ETX\DC2\FS\n\
    \\CANUNWIND_ERROR_UNSUPPORTED\DLE\EOT\DC2\FS\n\
    \\CANUNWIND_ERROR_INVALID_MAP\DLE\ENQ\DC2$\n\
    \ UNWIND_ERROR_MAX_FRAMES_EXCEEDED\DLE\ACK\DC2\US\n\
    \\ESCUNWIND_ERROR_REPEATED_FRAME\DLE\a\DC2\FS\n\
    \\CANUNWIND_ERROR_INVALID_ELF\DLE\b\DC2\FS\n\
    \\CANUNWIND_ERROR_SYSTEM_CALL\DLE\t\DC2\US\n\
    \\ESCUNWIND_ERROR_THREAD_TIMEOUT\DLE\n\
    \\DC2&\n\
    \\"UNWIND_ERROR_THREAD_DOES_NOT_EXIST\DLE\v\DC2\EM\n\
    \\NAKUNWIND_ERROR_BAD_ARCH\DLE\f\DC2\ESC\n\
    \\ETBUNWIND_ERROR_MAPS_PARSE\DLE\r\DC2\"\n\
    \\RSUNWIND_ERROR_INVALID_PARAMETER\DLE\SO\DC2\FS\n\
    \\CANUNWIND_ERROR_PTRACE_CALL\DLE\SI\"\193\a\n\
    \\n\
    \PerfSample\DC2\DLE\n\
    \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\rR\ETXpid\DC2\DLE\n\
    \\ETXtid\CAN\ETX \SOH(\rR\ETXtid\DC2=\n\
    \\bcpu_mode\CAN\ENQ \SOH(\SO2\".perfetto.protos.Profiling.CpuModeR\acpuMode\DC2%\n\
    \\SOtimebase_count\CAN\ACK \SOH(\EOTR\rtimebaseCount\DC2#\n\
    \\rcallstack_iid\CAN\EOT \SOH(\EOTR\fcallstackIid\DC2P\n\
    \\funwind_error\CAN\DLE \SOH(\SO2+.perfetto.protos.Profiling.StackUnwindErrorH\NULR\vunwindError\DC2.\n\
    \\DC3kernel_records_lost\CAN\DC1 \SOH(\EOTR\DC1kernelRecordsLost\DC2b\n\
    \\NAKsample_skipped_reason\CAN\DC2 \SOH(\SO2,.perfetto.protos.PerfSample.SampleSkipReasonH\SOHR\DC3sampleSkippedReason\DC2P\n\
    \\SOproducer_event\CAN\DC3 \SOH(\v2).perfetto.protos.PerfSample.ProducerEventR\rproducerEvent\SUB\238\SOH\n\
    \\rProducerEvent\DC2n\n\
    \\DC2source_stop_reason\CAN\SOH \SOH(\SO2>.perfetto.protos.PerfSample.ProducerEvent.DataSourceStopReasonH\NULR\DLEsourceStopReason\"N\n\
    \\DC4DataSourceStopReason\DC2\EM\n\
    \\NAKPROFILER_STOP_UNKNOWN\DLE\NUL\DC2\ESC\n\
    \\ETBPROFILER_STOP_GUARDRAIL\DLE\SOHB\GS\n\
    \\ESCoptional_source_stop_reason\"\141\SOH\n\
    \\DLESampleSkipReason\DC2\EM\n\
    \\NAKPROFILER_SKIP_UNKNOWN\DLE\NUL\DC2\FS\n\
    \\CANPROFILER_SKIP_READ_STAGE\DLE\SOH\DC2\RS\n\
    \\SUBPROFILER_SKIP_UNWIND_STAGE\DLE\STX\DC2 \n\
    \\FSPROFILER_SKIP_UNWIND_ENQUEUE\DLE\ETXB\ETB\n\
    \\NAKoptional_unwind_errorB \n\
    \\RSoptional_sample_skipped_reason\"\184\SOH\n\
    \\DC2PerfSampleDefaults\DC2@\n\
    \\btimebase\CAN\SOH \SOH(\v2$.perfetto.protos.PerfEvents.TimebaseR\btimebase\DC2.\n\
    \\DC3process_shard_count\CAN\STX \SOH(\rR\DC1processShardCount\DC20\n\
    \\DC4chosen_process_shard\CAN\ETX \SOH(\rR\DC2chosenProcessShardJ\145\134\SOH\n\
    \\a\DC2\ENQ\DLE\NUL\234\STX\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2018 The Android Open Source Project\n\
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
    \\t\n\
    \\STX\ETX\SOH\DC2\ETX\DC3\NUL>\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\NAK\NUL\CAN\n\
    \\221\DC4\n\
    \\STX\EOT\NUL\DC2\ENQK\NUL\211\SOH\SOH\SUB\219\b The packet emitted by heapprofd for each heap snapshot. A snapshot can\n\
    \ involve more than one ProfilePacket if the snapshot is big (when |continued|\n\
    \ is true). The cardinality and grouping is as follows:\n\
    \ A ProfilePacket contains:\n\
    \  - 1+ per-process heap snapshots (ProcessHeapSamples). Normally there is only\n\
    \    one heap per process (the main malloc/free heap), but there can be more if\n\
    \    the process is using the heapprofd API to profile custom allocators.\n\
    \  - Globally interned strings, mappings and frames (to allow de-duplicating\n\
    \    frames/mapping in common between different processes).\n\
    \ A ProcessHeapSamples contains:\n\
    \  - The process and heap identifier.\n\
    \  - A number of HeapSample, one for each callsite that had some alloc/frees.\n\
    \  - Statistics about heapprofd internals (e.g., sampling/unwinding timings).\n\
    \ A HeapSample contains statistics about callsites:\n\
    \  - Total number of bytes allocated and freed from that callsite.\n\
    \  - Total number of alloc/free calls sampled.\n\
    \  - Stats at the local maximum when dump_at_max = true.\n\
    \ See https://perfetto.dev/docs/data-sources/native-heap-profiler for more.\n\
    \2\241\v This file contains a mixture of messages emitted by various sampling\n\
    \ profilers:\n\
    \\n\
    \ Memory allocator profiling\n\
    \ ----------------\n\
    \ ProfilePacket:\n\
    \   The packet emitted by heapprofd, which started off as a native heap\n\
    \   (malloc/free) profiler, but now supports custom allocators as well. Each\n\
    \   packet contains a preaggregated state of the heap at snapshot time, which\n\
    \   report the total allocated/free bytes per callstack (plus other info such\n\
    \   as the number of samples).\n\
    \ StreamingAllocation/StreamingFree:\n\
    \   Emitted by heapprofd when configured in streaming mode (i.e. when\n\
    \   stream_allocations = true). This is only for local testing, and doesn't\n\
    \   report callstacks (only address time and size of each alloc/free). It can\n\
    \   lead to enormous traces, as it contains the stream of each alloc/free call.\n\
    \\n\
    \ Callstack sampling\n\
    \ ------------------\n\
    \ StreamingProfilePacket:\n\
    \   The packet emitted by the chromium in-process sampling profiler, which is\n\
    \   based on periodically sending a signal to itself, and unwinding the stack\n\
    \   in the signal handler. Each packet contains a series of individual stack\n\
    \   samples for a Chromium thread.\n\
    \\n\
    \ Callstack and performance counter sampling\n\
    \ ---------------------\n\
    \ PerfSample:\n\
    \   The packet emitted by traced_perf sampling performance profiler based on\n\
    \   the perf_event_open syscall. Each packet represents an individual sample\n\
    \   of a performance counter (which might be a timer), and optionally a\n\
    \   callstack of the process that was scheduled at the time of the sample.\n\
    \\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETXK\b\NAK\n\
    \\154\ETX\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXS\STX&\SUB\140\ETX The following interning tables are only used in Android version Q.\n\
    \ In newer versions, these tables are in InternedData\n\
    \ (see protos/perfetto/trace/interned_data) and are shared across\n\
    \ multiple ProfilePackets.\n\
    \ For backwards compatibility, consumers need to first look up interned\n\
    \ data in the tables within the ProfilePacket, and then, if they are empty,\n\
    \ look up in the InternedData instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXS\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXS\SUB!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXS$%\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXT\STX \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXT\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXT\v\DC2\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXT\DC3\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXT\RS\US\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXU\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXU\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXU\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXU\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXV\STX$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETXV\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXV\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXV\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXV\"#\n\
    \\SUB\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOTY\STXr\ETX\SUB\f Next ID: 9\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETXY\n\
    \\DC4\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETXZ\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETXZ\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETXZ\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETXZ\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETXZ#$\n\
    \3\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\\\EOT'\SUB$ bytes allocated at this callstack.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX\\\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\\\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\\\DC4\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\\%&\n\
    \H\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX^\EOT#\SUB9 bytes allocated at this callstack that have been freed.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX^\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX^\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX^\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX^!\"\n\
    \%\n\
    \\ENQ\EOT\NUL\ETX\NUL\t\DC2\ETX`\EOT\SI\SUB\ETB deprecated self_idle.\n\
    \\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\t\NUL\DC2\ETX`\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\SOH\DC2\ETX`\r\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\t\NUL\STX\DC2\ETX`\r\SO\n\
    \\135\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETXe\EOT!\SUB\247\SOH Bytes allocated by this callstack but not freed at the time the malloc\n\
    \ heap usage of this process was maximal. This is only set if dump_at_max\n\
    \ is true in HeapprofdConfig. In that case, self_allocated, self_freed and\n\
    \ self_idle will not be set.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\ETXe\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETXe\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETXe\DC4\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETXe\US \n\
    \\159\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETXj\EOT'\SUB\143\STX Number of allocations that were sampled at this callstack but not freed\n\
    \ at the time the malloc heap usage of this process was maximal. This is\n\
    \ only set if dump_at_max is true in HeapprofdConfig. In that case,\n\
    \ self_allocated, self_freed and self_idle will not be set.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\EOT\DC2\ETXj\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ENQ\DC2\ETXj\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETXj\DC4\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETXj%&\n\
    \ \n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETXl\EOT\"\SUB\DC1 timestamp [opt]\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\EOT\DC2\ETXl\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ENQ\DC2\ETXl\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETXl\DC4\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETXl !\n\
    \K\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\ETXn\EOT$\SUB< Number of allocations that were sampled at this callstack.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\EOT\DC2\ETXn\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ENQ\DC2\ETXn\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\ETXn\DC4\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\ETXn\"#\n\
    \a\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\a\DC2\ETXq\EOT#\SUBR Number of allocations that were sampled at this callstack that have been\n\
    \ freed.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\EOT\DC2\ETXq\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ENQ\DC2\ETXq\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\SOH\DC2\ETXq\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ETX\DC2\ETXq!\"\n\
    \\r\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\ENQt\STX\130\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXt\n\
    \\DC3\n\
    \\SI\n\
    \\ACK\EOT\NUL\ETX\SOH\ETX\NUL\DC2\ENQu\EOT\128\SOH\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\ETX\NUL\SOH\DC2\ETXu\f\DC2\n\
    \\174\SOH\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\DC2\ETXy\ACK&\SUB\156\SOH This bucket counts values from the previous bucket's (or -infinity if\n\
    \ this is the first bucket) upper_limit (inclusive) to this upper_limit\n\
    \ (exclusive).\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\EOT\DC2\ETXy\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\ENQ\DC2\ETXy\SI\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\SOH\DC2\ETXy\SYN!\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\NUL\ETX\DC2\ETXy$%\n\
    \\181\SOH\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\DC2\ETX}\ACK#\SUB\163\SOH This is the highest bucket. This is set instead of the upper_limit. Any\n\
    \ values larger or equal to the previous bucket's upper_limit are counted\n\
    \ in this bucket.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\EOT\DC2\ETX}\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\ENQ\DC2\ETX}\SI\DC3\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\SOH\DC2\ETX}\DC4\RS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\SOH\ETX\DC2\ETX}!\"\n\
    \>\n\
    \\b\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\DC2\ETX\DEL\ACK \SUB- Number of values that fall into this range.\n\
    \\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\EOT\DC2\ETX\DEL\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\ENQ\DC2\ETX\DEL\SI\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\SOH\DC2\ETX\DEL\SYN\ESC\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\SOH\ETX\NUL\STX\STX\ETX\DC2\ETX\DEL\RS\US\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\EOT\129\SOH\EOT \n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\EOT\DC2\EOT\129\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\EOT\129\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\EOT\129\SOH\DC4\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\EOT\129\SOH\RS\US\n\
    \\SO\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\ACK\132\SOH\STX\139\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\EOT\132\SOH\n\
    \\SYN\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\EOT\133\SOH\EOT)\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\EOT\DC2\EOT\133\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\EOT\133\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\EOT\133\SOH\DC4$\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\EOT\133\SOH'(\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\EOT\134\SOH\EOT%\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\EOT\DC2\EOT\134\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\EOT\134\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\EOT\134\SOH\DC4 \n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\EOT\134\SOH#$\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\EOT\135\SOH\EOT%\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\EOT\DC2\EOT\135\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ENQ\DC2\EOT\135\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\EOT\135\SOH\DC4 \n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\EOT\135\SOH#$\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\EOT\136\SOH\EOT-\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\EOT\DC2\EOT\136\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ACK\DC2\EOT\136\SOH\r\SYN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\EOT\136\SOH\ETB(\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\EOT\136\SOH+,\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\EOT\DC2\EOT\137\SOH\EOT0\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\EOT\DC2\EOT\137\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ENQ\DC2\EOT\137\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\SOH\DC2\EOT\137\SOH\DC4+\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ETX\DC2\EOT\137\SOH./\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ENQ\DC2\EOT\138\SOH\EOT3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\EOT\DC2\EOT\138\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\ENQ\DC2\EOT\138\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\SOH\DC2\EOT\138\SOH\DC4.\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\ETX\DC2\EOT\138\SOH12\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\141\SOH\STX0\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\EOT\141\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\EOT\141\SOH\v\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\141\SOH\RS+\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\141\SOH./\n\
    \\SO\n\
    \\EOT\EOT\NUL\ETX\ETX\DC2\ACK\142\SOH\STX\199\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\ETX\SOH\DC2\EOT\142\SOH\n\
    \\FS\n\
    \\DLE\n\
    \\ACK\EOT\NUL\ETX\ETX\EOT\NUL\DC2\ACK\143\SOH\EOT\147\SOH\ENQ\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\EOT\NUL\SOH\DC2\EOT\143\SOH\t\DC4\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\ETX\EOT\NUL\STX\NUL\DC2\EOT\144\SOH\ACK\FS\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\ETX\EOT\NUL\STX\NUL\SOH\DC2\EOT\144\SOH\ACK\ETB\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\ETX\EOT\NUL\STX\NUL\STX\DC2\EOT\144\SOH\SUB\ESC\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\ETX\EOT\NUL\STX\SOH\DC2\EOT\145\SOH\ACK#\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\ETX\EOT\NUL\STX\SOH\SOH\DC2\EOT\145\SOH\ACK\RS\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\ETX\EOT\NUL\STX\SOH\STX\DC2\EOT\145\SOH!\"\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\ETX\EOT\NUL\STX\STX\DC2\EOT\146\SOH\ACK,\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\ETX\EOT\NUL\STX\STX\SOH\DC2\EOT\146\SOH\ACK'\n\
    \\DC1\n\
    \\t\EOT\NUL\ETX\ETX\EOT\NUL\STX\STX\STX\DC2\EOT\146\SOH*+\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\NUL\DC2\EOT\148\SOH\EOT\FS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\EOT\DC2\EOT\148\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ENQ\DC2\EOT\148\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\SOH\DC2\EOT\148\SOH\DC4\ETB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ETX\DC2\EOT\148\SOH\SUB\ESC\n\
    \}\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\SOH\DC2\EOT\152\SOH\EOT#\SUBm This process was profiled from startup.\n\
    \ If false, this process was already running when profiling started.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\EOT\DC2\EOT\152\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ENQ\DC2\EOT\152\SOH\r\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\SOH\DC2\EOT\152\SOH\DC2\RS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ETX\DC2\EOT\152\SOH!\"\n\
    \\129\SOH\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\STX\DC2\EOT\156\SOH\EOT*\SUBq This process was not profiled because a concurrent session was active.\n\
    \ If this is true, samples will be empty.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\EOT\DC2\EOT\156\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ENQ\DC2\EOT\156\SOH\r\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\SOH\DC2\EOT\156\SOH\DC2%\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\STX\ETX\DC2\EOT\156\SOH()\n\
    \y\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\ETX\DC2\EOT\160\SOH\EOT#\SUBi This process disconnected while it was profiled.\n\
    \ If false, the process outlived the profiling session.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ETX\EOT\DC2\EOT\160\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ETX\ENQ\DC2\EOT\160\SOH\r\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ETX\SOH\DC2\EOT\160\SOH\DC2\RS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ETX\ETX\DC2\EOT\160\SOH!\"\n\
    \\175\SOH\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\EOT\DC2\EOT\166\SOH\EOT%\SUB\158\SOH If disconnected, this disconnect was caused by the client overrunning\n\
    \ the buffer.\n\
    \ Equivalent to client_error == CLIENT_ERROR_HIT_TIMEOUT\n\
    \ on new S builds.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\EOT\EOT\DC2\EOT\166\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\EOT\ENQ\DC2\EOT\166\SOH\r\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\EOT\SOH\DC2\EOT\166\SOH\DC2 \n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\EOT\ETX\DC2\EOT\166\SOH#$\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\ENQ\DC2\EOT\168\SOH\EOT+\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ENQ\EOT\DC2\EOT\168\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ENQ\ACK\DC2\EOT\168\SOH\r\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ENQ\SOH\DC2\EOT\168\SOH\EM%\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ENQ\ETX\DC2\EOT\168\SOH(*\n\
    \\174\SOH\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\ACK\DC2\EOT\173\SOH\EOT'\SUB\157\SOH If disconnected, this disconnected was caused by the shared memory\n\
    \ buffer being corrupted. THIS IS ALWAYS A BUG IN HEAPPROFD OR CLIENT\n\
    \ MEMORY CORRUPTION.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ACK\EOT\DC2\EOT\173\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ACK\ENQ\DC2\EOT\173\SOH\r\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ACK\SOH\DC2\EOT\173\SOH\DC2\"\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\ACK\ETX\DC2\EOT\173\SOH%&\n\
    \\DEL\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\a\DC2\EOT\177\SOH\EOT%\SUBo If disconnected, this disconnect was caused by heapprofd exceeding\n\
    \ guardrails during this profiling session.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\a\EOT\DC2\EOT\177\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\a\ENQ\DC2\EOT\177\SOH\r\DC1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\a\SOH\DC2\EOT\177\SOH\DC2\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\a\ETX\DC2\EOT\177\SOH\"$\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\b\DC2\EOT\179\SOH\EOT#\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\b\EOT\DC2\EOT\179\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\b\ENQ\DC2\EOT\179\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\b\SOH\DC2\EOT\179\SOH\DC4\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\b\ETX\DC2\EOT\179\SOH \"\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\t\DC2\EOT\180\SOH\EOT1\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\t\EOT\DC2\EOT\180\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\t\ENQ\DC2\EOT\180\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\t\SOH\DC2\EOT\180\SOH\DC4+\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\t\ETX\DC2\EOT\180\SOH.0\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\n\
    \\DC2\EOT\181\SOH\EOT6\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\n\
    \\EOT\DC2\EOT\181\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\n\
    \\ENQ\DC2\EOT\181\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\n\
    \\SOH\DC2\EOT\181\SOH\DC40\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\n\
    \\ETX\DC2\EOT\181\SOH35\n\
    \\143\EOT\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\v\DC2\EOT\193\SOH\EOT\"\SUB\254\ETX Timestamp of the state of the target process that this dump represents.\n\
    \ This can be different to the timestamp of the TracePackets for various\n\
    \ reasons:\n\
    \ * If disconnected is set above, this is the timestamp of last state\n\
    \   heapprofd had of the process before it disconnected.\n\
    \ * Otherwise, if the rate of events produced by the process is high,\n\
    \   heapprofd might be behind.\n\
    \\n\
    \ TODO(fmayer): This is MONOTONIC_COARSE. Refactor ClockSnapshot::Clock\n\
    \               to have a type enum that we can reuse here.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\v\EOT\DC2\EOT\193\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\v\ENQ\DC2\EOT\193\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\v\SOH\DC2\EOT\193\SOH\DC4\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\v\ETX\DC2\EOT\193\SOH !\n\
    \+\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\f\DC2\EOT\196\SOH\EOT$\SUB\ESC Metadata about heapprofd.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\f\EOT\DC2\EOT\196\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\f\ACK\DC2\EOT\196\SOH\r\EM\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\f\SOH\DC2\EOT\196\SOH\SUB\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\f\ETX\DC2\EOT\196\SOH\"#\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\r\DC2\EOT\198\SOH\EOT$\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\r\EOT\DC2\EOT\198\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\r\ACK\DC2\EOT\198\SOH\r\ETB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\r\SOH\DC2\EOT\198\SOH\CAN\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ETX\STX\r\ETX\DC2\EOT\198\SOH\"#\n\
    \\226\SOH\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\205\SOH\STX\RS\SUB\211\SOH If this is true, the next ProfilePacket in this package_sequence_id is a\n\
    \ continuation of this one.\n\
    \ To get all samples for a process, accummulate its\n\
    \ ProcessHeapSamples.samples until you see continued=false.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\EOT\205\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\EOT\205\SOH\v\SI\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\205\SOH\DLE\EM\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\EOT\205\SOH\FS\GS\n\
    \\139\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\210\SOH\STX\FS\SUB} Index of this ProfilePacket on its package_sequence_id. Can be used\n\
    \ to detect dropped data.\n\
    \ Verify these are consecutive.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\EOT\210\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\EOT\210\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\210\SOH\DC2\ETB\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\210\SOH\SUB\ESC\n\
    \\129\SOH\n\
    \\STX\EOT\SOH\DC2\ACK\215\SOH\NUL\223\SOH\SOH\SUBs Packet emitted by heapprofd when stream_allocations = true. Only for local\n\
    \ testing. Doesn't report the callsite.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\SOH\SOH\DC2\EOT\215\SOH\b\ESC\n\
    \,\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\EOT\217\SOH\STX\RS\SUB\RS TODO(fmayer): Add callstack.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\EOT\217\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\EOT\217\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\EOT\217\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\EOT\217\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\EOT\218\SOH\STX\ESC\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\EOT\218\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\EOT\218\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\EOT\218\SOH\DC2\SYN\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\EOT\218\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\STX\DC2\EOT\219\SOH\STX\"\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\EOT\219\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\EOT\219\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\EOT\219\SOH\DC2\GS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\EOT\219\SOH !\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\EOT\220\SOH\STX7\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\EOT\220\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\EOT\220\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\EOT\220\SOH\DC22\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\EOT\220\SOH56\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\EOT\221\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\EOT\221\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\EOT\221\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\EOT\221\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\EOT\221\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\EOT\222\SOH\STX&\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\EOT\222\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\EOT\222\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\EOT\222\SOH\DC2!\n\
    \\r\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\EOT\222\SOH$%\n\
    \\129\SOH\n\
    \\STX\EOT\STX\DC2\ACK\227\SOH\NUL\232\SOH\SOH\SUBs Packet emitted by heapprofd when stream_allocations = true. Only for local\n\
    \ testing. Doesn't report the callsite.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\STX\SOH\DC2\EOT\227\SOH\b\NAK\n\
    \,\n\
    \\EOT\EOT\STX\STX\NUL\DC2\EOT\229\SOH\STX\RS\SUB\RS TODO(fmayer): Add callstack.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\EOT\DC2\EOT\229\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ENQ\DC2\EOT\229\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\EOT\229\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\EOT\229\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\STX\STX\SOH\DC2\EOT\230\SOH\STX\RS\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\EOT\DC2\EOT\230\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ENQ\DC2\EOT\230\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\EOT\230\SOH\DC2\EM\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\EOT\230\SOH\FS\GS\n\
    \\f\n\
    \\EOT\EOT\STX\STX\STX\DC2\EOT\231\SOH\STX&\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\EOT\DC2\EOT\231\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\EOT\231\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\EOT\231\SOH\DC2!\n\
    \\r\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\EOT\231\SOH$%\n\
    \\219\SOH\n\
    \\STX\EOT\ETX\DC2\ACK\237\SOH\NUL\244\SOH\SOH\SUB\204\SOH Packet emitted by the chromium in-process signal-based callstack sampler.\n\
    \ Represents a series of individual stack samples (sampled at discrete points\n\
    \ in time), rather than aggregated over an interval.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ETX\SOH\DC2\EOT\237\SOH\b\RS\n\
    \2\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\EOT\239\SOH\STX$\SUB$ Index into InternedData.callstacks\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\EOT\239\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\EOT\239\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\EOT\239\SOH\DC2\US\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\EOT\239\SOH\"#\n\
    \\145\SOH\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\EOT\242\SOH\STX(\SUB\130\SOH TODO(eseckler): ThreadDescriptor-based timestamps are deprecated. Replace\n\
    \ this with ClockSnapshot-based delta encoding instead.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\EOT\242\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ENQ\DC2\EOT\242\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\EOT\242\SOH\DC1#\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\EOT\242\SOH&'\n\
    \\f\n\
    \\EOT\EOT\ETX\STX\STX\DC2\EOT\243\SOH\STX&\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\EOT\DC2\EOT\243\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ENQ\DC2\EOT\243\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\SOH\DC2\EOT\243\SOH\DC1!\n\
    \\r\n\
    \\ENQ\EOT\ETX\STX\STX\ETX\DC2\EOT\243\SOH$%\n\
    \2\n\
    \\STX\EOT\EOT\DC2\ACK\247\SOH\NUL\150\STX\SOH\SUB$ Namespace for the contained enums.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\EOT\SOH\DC2\EOT\247\SOH\b\DC1\n\
    \\SO\n\
    \\EOT\EOT\EOT\EOT\NUL\DC2\ACK\248\SOH\STX\128\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\EOT\EOT\NUL\SOH\DC2\EOT\248\SOH\a\SO\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\NUL\DC2\EOT\249\SOH\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\NUL\SOH\DC2\EOT\249\SOH\EOT\DLE\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\NUL\STX\DC2\EOT\249\SOH\DC3\DC4\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\SOH\DC2\EOT\250\SOH\EOT\DC4\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\SOH\SOH\DC2\EOT\250\SOH\EOT\SI\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\SOH\STX\DC2\EOT\250\SOH\DC2\DC3\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\STX\DC2\EOT\251\SOH\EOT\DC2\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\STX\SOH\DC2\EOT\251\SOH\EOT\r\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\STX\STX\DC2\EOT\251\SOH\DLE\DC1\n\
    \V\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\ETX\DC2\EOT\253\SOH\EOT\CAN\SUBF The following values aren't expected, but included for completeness:\n\
    \\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\ETX\SOH\DC2\EOT\253\SOH\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\ETX\STX\DC2\EOT\253\SOH\SYN\ETB\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\EOT\DC2\EOT\254\SOH\EOT\SUB\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\EOT\SOH\DC2\EOT\254\SOH\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\EOT\STX\DC2\EOT\254\SOH\CAN\EM\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\NUL\STX\ENQ\DC2\EOT\255\SOH\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\ENQ\SOH\DC2\EOT\255\SOH\EOT\DC3\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\NUL\STX\ENQ\STX\DC2\EOT\255\SOH\SYN\ETB\n\
    \\128\SOH\n\
    \\EOT\EOT\EOT\EOT\SOH\DC2\ACK\132\STX\STX\149\STX\ETX\SUBp Enumeration of libunwindstack's error codes.\n\
    \ NB: the integral representations of the two enums are different.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\EOT\EOT\SOH\SOH\DC2\EOT\132\STX\a\ETB\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\NUL\DC2\EOT\133\STX\EOT\GS\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\NUL\SOH\DC2\EOT\133\STX\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\NUL\STX\DC2\EOT\133\STX\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\SOH\DC2\EOT\134\STX\EOT\SUB\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\SOH\SOH\DC2\EOT\134\STX\EOT\NAK\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\SOH\STX\DC2\EOT\134\STX\CAN\EM\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\STX\DC2\EOT\135\STX\EOT$\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\STX\SOH\DC2\EOT\135\STX\EOT\US\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\STX\STX\DC2\EOT\135\STX\"#\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\ETX\DC2\EOT\136\STX\EOT!\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\ETX\SOH\DC2\EOT\136\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\ETX\STX\DC2\EOT\136\STX\US \n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\EOT\DC2\EOT\137\STX\EOT!\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\EOT\SOH\DC2\EOT\137\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\EOT\STX\DC2\EOT\137\STX\US \n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\ENQ\DC2\EOT\138\STX\EOT!\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\ENQ\SOH\DC2\EOT\138\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\ENQ\STX\DC2\EOT\138\STX\US \n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\ACK\DC2\EOT\139\STX\EOT)\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\ACK\SOH\DC2\EOT\139\STX\EOT$\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\ACK\STX\DC2\EOT\139\STX'(\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\a\DC2\EOT\140\STX\EOT$\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\a\SOH\DC2\EOT\140\STX\EOT\US\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\a\STX\DC2\EOT\140\STX\"#\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\b\DC2\EOT\141\STX\EOT!\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\b\SOH\DC2\EOT\141\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\b\STX\DC2\EOT\141\STX\US \n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\t\DC2\EOT\142\STX\EOT!\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\t\SOH\DC2\EOT\142\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\t\STX\DC2\EOT\142\STX\US \n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\n\
    \\DC2\EOT\143\STX\EOT%\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\n\
    \\SOH\DC2\EOT\143\STX\EOT\US\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\n\
    \\STX\DC2\EOT\143\STX\"$\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\v\DC2\EOT\144\STX\EOT,\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\v\SOH\DC2\EOT\144\STX\EOT&\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\v\STX\DC2\EOT\144\STX)+\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\f\DC2\EOT\145\STX\EOT\US\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\f\SOH\DC2\EOT\145\STX\EOT\EM\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\f\STX\DC2\EOT\145\STX\FS\RS\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\r\DC2\EOT\146\STX\EOT!\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\r\SOH\DC2\EOT\146\STX\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\r\STX\DC2\EOT\146\STX\RS \n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\SO\DC2\EOT\147\STX\EOT(\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\SO\SOH\DC2\EOT\147\STX\EOT\"\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\SO\STX\DC2\EOT\147\STX%'\n\
    \\SO\n\
    \\ACK\EOT\EOT\EOT\SOH\STX\SI\DC2\EOT\148\STX\EOT\"\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\SI\SOH\DC2\EOT\148\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\EOT\EOT\SOH\STX\SI\STX\DC2\EOT\148\STX\US!\n\
    \\233\ENQ\n\
    \\STX\EOT\ENQ\DC2\ACK\166\STX\NUL\222\STX\SOH\SUB\218\ENQ Packet emitted by the traced_perf sampling performance profiler, which\n\
    \ gathers data via the perf_event_open syscall. Each packet contains an\n\
    \ individual sample with a counter value, and optionally a\n\
    \ callstack.\n\
    \\n\
    \ Timestamps are within the root packet. The config can specify the clock, or\n\
    \ the implementation will default to CLOCK_MONOTONIC_RAW. Within the Android R\n\
    \ timeframe, the default was CLOCK_BOOTTIME.\n\
    \\n\
    \ There are several distinct views of this message:\n\
    \ * indication of kernel buffer data loss (kernel_records_lost set)\n\
    \ * indication of skipped samples (sample_skipped_reason set)\n\
    \ * notable event in the sampling implementation (producer_event set)\n\
    \ * normal sample (timebase_count set, typically also callstack_iid)\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ENQ\SOH\DC2\EOT\166\STX\b\DC2\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\EOT\167\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\EOT\DC2\EOT\167\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\EOT\167\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\EOT\167\STX\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\EOT\167\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\SOH\DC2\EOT\168\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\EOT\DC2\EOT\168\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ENQ\DC2\EOT\168\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\SOH\DC2\EOT\168\STX\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\SOH\ETX\DC2\EOT\168\STX\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\STX\DC2\EOT\169\STX\STX\SUB\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\EOT\DC2\EOT\169\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ENQ\DC2\EOT\169\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\SOH\DC2\EOT\169\STX\DC2\NAK\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\STX\ETX\DC2\EOT\169\STX\CAN\EM\n\
    \@\n\
    \\EOT\EOT\ENQ\STX\ETX\DC2\EOT\172\STX\STX*\SUB2 Execution state that the process was sampled at.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\EOT\DC2\EOT\172\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ACK\DC2\EOT\172\STX\v\FS\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\SOH\DC2\EOT\172\STX\GS%\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ETX\ETX\DC2\EOT\172\STX()\n\
    \Z\n\
    \\EOT\EOT\ENQ\STX\EOT\DC2\EOT\175\STX\STX%\SUBL Value of the timebase counter (since the event was configured, no deltas).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\EOT\DC2\EOT\175\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ENQ\DC2\EOT\175\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\SOH\DC2\EOT\175\STX\DC2 \n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\EOT\ETX\DC2\EOT\175\STX#$\n\
    \\146\SOH\n\
    \\EOT\EOT\ENQ\STX\ENQ\DC2\EOT\179\STX\STX$\SUB\131\SOH Unwound callstack. Might be partial, in which case a synthetic \"error\"\n\
    \ frame is appended, and |unwind_error| is set accordingly.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\EOT\DC2\EOT\179\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ENQ\DC2\EOT\179\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\SOH\DC2\EOT\179\STX\DC2\US\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ENQ\ETX\DC2\EOT\179\STX\"#\n\
    \}\n\
    \\EOT\EOT\ENQ\b\NUL\DC2\EOT\183\STX\STXO\SUBo If set, stack unwinding was incomplete due to an error.\n\
    \ Unset values should be treated as UNWIND_ERROR_NONE.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\NUL\SOH\DC2\EOT\183\STX\b\GS\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\ACK\DC2\EOT\183\STX M\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ACK\DC2\EOT\183\STX :\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\SOH\DC2\EOT\183\STX;G\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\ACK\ETX\DC2\EOT\183\STXJL\n\
    \\176\ACK\n\
    \\EOT\EOT\ENQ\STX\a\DC2\EOT\197\STX\STX+\SUB\161\ACK If set, indicates that this message is not a sample, but rather an\n\
    \ indication of data loss in the ring buffer allocated for |cpu|. Such data\n\
    \ loss occurs when the kernel has insufficient ring buffer capacity to write\n\
    \ a record (which gets discarded). A record in this context is an individual\n\
    \ ring buffer entry, and counts more than just sample records.\n\
    \\n\
    \ The |timestamp| of the packet corresponds to the time that the producer\n\
    \ wrote the packet for trace-sorting purposes alone, and should not be\n\
    \ interpreted relative to the sample timestamps. This field is sufficient to\n\
    \ detect that *some* kernel data loss happened within the trace, but not the\n\
    \ specific time bounds of that loss (which would require tracking precedessor\n\
    \ & successor timestamps, which is not deemed necessary at the moment).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\EOT\DC2\EOT\197\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ENQ\DC2\EOT\197\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\SOH\DC2\EOT\197\STX\DC2%\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\a\ETX\DC2\EOT\197\STX(*\n\
    \o\n\
    \\EOT\EOT\ENQ\EOT\NUL\DC2\ACK\201\STX\STX\206\STX\ETX\SUB_ If set, indicates that the profiler encountered a sample that was relevant,\n\
    \ but was skipped.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\EOT\NUL\SOH\DC2\EOT\201\STX\a\ETB\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\NUL\DC2\EOT\202\STX\EOT\RS\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\NUL\SOH\DC2\EOT\202\STX\EOT\EM\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\NUL\STX\DC2\EOT\202\STX\FS\GS\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\SOH\DC2\EOT\203\STX\EOT!\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\203\STX\EOT\FS\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\SOH\STX\DC2\EOT\203\STX\US \n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\STX\DC2\EOT\204\STX\EOT#\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\204\STX\EOT\RS\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\STX\STX\DC2\EOT\204\STX!\"\n\
    \\SO\n\
    \\ACK\EOT\ENQ\EOT\NUL\STX\ETX\DC2\EOT\205\STX\EOT%\n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\205\STX\EOT \n\
    \\SI\n\
    \\a\EOT\ENQ\EOT\NUL\STX\ETX\STX\DC2\EOT\205\STX#$\n\
    \\SO\n\
    \\EOT\EOT\ENQ\b\SOH\DC2\ACK\207\STX\STX\209\STX\ETX\n\
    \\r\n\
    \\ENQ\EOT\ENQ\b\SOH\SOH\DC2\EOT\207\STX\b&\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\b\DC2\EOT\208\STX\EOT0\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\ACK\DC2\EOT\208\STX\EOT\DC4\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\SOH\DC2\EOT\208\STX\NAK*\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\b\ETX\DC2\EOT\208\STX-/\n\
    \E\n\
    \\EOT\EOT\ENQ\ETX\NUL\DC2\ACK\212\STX\STX\220\STX\ETX\SUB5 A notable event within the sampling implementation.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\ETX\NUL\SOH\DC2\EOT\212\STX\n\
    \\ETB\n\
    \\DLE\n\
    \\ACK\EOT\ENQ\ETX\NUL\EOT\NUL\DC2\ACK\213\STX\EOT\216\STX\ENQ\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\EOT\NUL\SOH\DC2\EOT\213\STX\t\GS\n\
    \\DLE\n\
    \\b\EOT\ENQ\ETX\NUL\EOT\NUL\STX\NUL\DC2\EOT\214\STX\ACK \n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\214\STX\ACK\ESC\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\214\STX\RS\US\n\
    \\DLE\n\
    \\b\EOT\ENQ\ETX\NUL\EOT\NUL\STX\SOH\DC2\EOT\215\STX\ACK\"\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\215\STX\ACK\GS\n\
    \\DC1\n\
    \\t\EOT\ENQ\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\215\STX !\n\
    \\DLE\n\
    \\ACK\EOT\ENQ\ETX\NUL\b\NUL\DC2\ACK\217\STX\EOT\219\STX\ENQ\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\b\NUL\SOH\DC2\EOT\217\STX\n\
    \%\n\
    \\SO\n\
    \\ACK\EOT\ENQ\ETX\NUL\STX\NUL\DC2\EOT\218\STX\ACK2\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ACK\DC2\EOT\218\STX\ACK\SUB\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\SOH\DC2\EOT\218\STX\ESC-\n\
    \\SI\n\
    \\a\EOT\ENQ\ETX\NUL\STX\NUL\ETX\DC2\EOT\218\STX01\n\
    \\f\n\
    \\EOT\EOT\ENQ\STX\t\DC2\EOT\221\STX\STX-\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\t\EOT\DC2\EOT\221\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\t\ACK\DC2\EOT\221\STX\v\CAN\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\t\SOH\DC2\EOT\221\STX\EM'\n\
    \\r\n\
    \\ENQ\EOT\ENQ\STX\t\ETX\DC2\EOT\221\STX*,\n\
    \3\n\
    \\STX\EOT\ACK\DC2\ACK\225\STX\NUL\234\STX\SOH\SUB% Submessage for TracePacketDefaults.\n\
    \\n\
    \\v\n\
    \\ETX\EOT\ACK\SOH\DC2\EOT\225\STX\b\SUB\n\
    \\156\SOH\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\EOT\228\STX\STX,\SUB\141\SOH The sampling timebase. Might not be identical to the data source config if\n\
    \ the implementation decided to default/override some parameters.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\EOT\DC2\EOT\228\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ACK\DC2\EOT\228\STX\v\RS\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\EOT\228\STX\US'\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\EOT\228\STX*+\n\
    \\162\SOH\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\EOT\232\STX\STX*\SUB\147\SOH If the config requested process sharding, report back the count and which\n\
    \ of those bins was selected. Never changes for the duration of a trace.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\EOT\232\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ENQ\DC2\EOT\232\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\EOT\232\STX\DC2%\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\EOT\232\STX()\n\
    \\f\n\
    \\EOT\EOT\ACK\STX\STX\DC2\EOT\233\STX\STX+\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\EOT\DC2\EOT\233\STX\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\EOT\233\STX\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\EOT\233\STX\DC2&\n\
    \\r\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\EOT\233\STX)*"