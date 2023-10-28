{- This file was auto-generated from protos/perfetto/common/trace_stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Common.TraceStats (
        TraceStats(), TraceStats'BufferStats(), TraceStats'FilterStats(),
        TraceStats'FinalFlushOutcome(..), TraceStats'FinalFlushOutcome(),
        TraceStats'WriterStats()
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
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.bufferStats' @:: Lens' TraceStats [TraceStats'BufferStats]@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.vec'bufferStats' @:: Lens' TraceStats (Data.Vector.Vector TraceStats'BufferStats)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunkPayloadHistogramDef' @:: Lens' TraceStats [Data.Int.Int64]@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.vec'chunkPayloadHistogramDef' @:: Lens' TraceStats (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.writerStats' @:: Lens' TraceStats [TraceStats'WriterStats]@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.vec'writerStats' @:: Lens' TraceStats (Data.Vector.Vector TraceStats'WriterStats)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.producersConnected' @:: Lens' TraceStats Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'producersConnected' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.producersSeen' @:: Lens' TraceStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'producersSeen' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.dataSourcesRegistered' @:: Lens' TraceStats Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'dataSourcesRegistered' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.dataSourcesSeen' @:: Lens' TraceStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'dataSourcesSeen' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.tracingSessions' @:: Lens' TraceStats Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'tracingSessions' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.totalBuffers' @:: Lens' TraceStats Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'totalBuffers' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunksDiscarded' @:: Lens' TraceStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'chunksDiscarded' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.patchesDiscarded' @:: Lens' TraceStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'patchesDiscarded' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.invalidPackets' @:: Lens' TraceStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'invalidPackets' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.filterStats' @:: Lens' TraceStats TraceStats'FilterStats@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'filterStats' @:: Lens' TraceStats (Prelude.Maybe TraceStats'FilterStats)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.flushesRequested' @:: Lens' TraceStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'flushesRequested' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.flushesSucceeded' @:: Lens' TraceStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'flushesSucceeded' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.flushesFailed' @:: Lens' TraceStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'flushesFailed' @:: Lens' TraceStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.finalFlushOutcome' @:: Lens' TraceStats TraceStats'FinalFlushOutcome@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'finalFlushOutcome' @:: Lens' TraceStats (Prelude.Maybe TraceStats'FinalFlushOutcome)@ -}
data TraceStats
  = TraceStats'_constructor {_TraceStats'bufferStats :: !(Data.Vector.Vector TraceStats'BufferStats),
                             _TraceStats'chunkPayloadHistogramDef :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                             _TraceStats'writerStats :: !(Data.Vector.Vector TraceStats'WriterStats),
                             _TraceStats'producersConnected :: !(Prelude.Maybe Data.Word.Word32),
                             _TraceStats'producersSeen :: !(Prelude.Maybe Data.Word.Word64),
                             _TraceStats'dataSourcesRegistered :: !(Prelude.Maybe Data.Word.Word32),
                             _TraceStats'dataSourcesSeen :: !(Prelude.Maybe Data.Word.Word64),
                             _TraceStats'tracingSessions :: !(Prelude.Maybe Data.Word.Word32),
                             _TraceStats'totalBuffers :: !(Prelude.Maybe Data.Word.Word32),
                             _TraceStats'chunksDiscarded :: !(Prelude.Maybe Data.Word.Word64),
                             _TraceStats'patchesDiscarded :: !(Prelude.Maybe Data.Word.Word64),
                             _TraceStats'invalidPackets :: !(Prelude.Maybe Data.Word.Word64),
                             _TraceStats'filterStats :: !(Prelude.Maybe TraceStats'FilterStats),
                             _TraceStats'flushesRequested :: !(Prelude.Maybe Data.Word.Word64),
                             _TraceStats'flushesSucceeded :: !(Prelude.Maybe Data.Word.Word64),
                             _TraceStats'flushesFailed :: !(Prelude.Maybe Data.Word.Word64),
                             _TraceStats'finalFlushOutcome :: !(Prelude.Maybe TraceStats'FinalFlushOutcome),
                             _TraceStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TraceStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TraceStats "bufferStats" [TraceStats'BufferStats] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'bufferStats
           (\ x__ y__ -> x__ {_TraceStats'bufferStats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TraceStats "vec'bufferStats" (Data.Vector.Vector TraceStats'BufferStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'bufferStats
           (\ x__ y__ -> x__ {_TraceStats'bufferStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "chunkPayloadHistogramDef" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'chunkPayloadHistogramDef
           (\ x__ y__ -> x__ {_TraceStats'chunkPayloadHistogramDef = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TraceStats "vec'chunkPayloadHistogramDef" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'chunkPayloadHistogramDef
           (\ x__ y__ -> x__ {_TraceStats'chunkPayloadHistogramDef = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "writerStats" [TraceStats'WriterStats] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'writerStats
           (\ x__ y__ -> x__ {_TraceStats'writerStats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TraceStats "vec'writerStats" (Data.Vector.Vector TraceStats'WriterStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'writerStats
           (\ x__ y__ -> x__ {_TraceStats'writerStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "producersConnected" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'producersConnected
           (\ x__ y__ -> x__ {_TraceStats'producersConnected = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'producersConnected" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'producersConnected
           (\ x__ y__ -> x__ {_TraceStats'producersConnected = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "producersSeen" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'producersSeen
           (\ x__ y__ -> x__ {_TraceStats'producersSeen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'producersSeen" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'producersSeen
           (\ x__ y__ -> x__ {_TraceStats'producersSeen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "dataSourcesRegistered" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'dataSourcesRegistered
           (\ x__ y__ -> x__ {_TraceStats'dataSourcesRegistered = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'dataSourcesRegistered" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'dataSourcesRegistered
           (\ x__ y__ -> x__ {_TraceStats'dataSourcesRegistered = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "dataSourcesSeen" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'dataSourcesSeen
           (\ x__ y__ -> x__ {_TraceStats'dataSourcesSeen = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'dataSourcesSeen" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'dataSourcesSeen
           (\ x__ y__ -> x__ {_TraceStats'dataSourcesSeen = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "tracingSessions" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'tracingSessions
           (\ x__ y__ -> x__ {_TraceStats'tracingSessions = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'tracingSessions" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'tracingSessions
           (\ x__ y__ -> x__ {_TraceStats'tracingSessions = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "totalBuffers" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'totalBuffers
           (\ x__ y__ -> x__ {_TraceStats'totalBuffers = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'totalBuffers" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'totalBuffers
           (\ x__ y__ -> x__ {_TraceStats'totalBuffers = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "chunksDiscarded" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'chunksDiscarded
           (\ x__ y__ -> x__ {_TraceStats'chunksDiscarded = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'chunksDiscarded" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'chunksDiscarded
           (\ x__ y__ -> x__ {_TraceStats'chunksDiscarded = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "patchesDiscarded" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'patchesDiscarded
           (\ x__ y__ -> x__ {_TraceStats'patchesDiscarded = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'patchesDiscarded" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'patchesDiscarded
           (\ x__ y__ -> x__ {_TraceStats'patchesDiscarded = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "invalidPackets" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'invalidPackets
           (\ x__ y__ -> x__ {_TraceStats'invalidPackets = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'invalidPackets" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'invalidPackets
           (\ x__ y__ -> x__ {_TraceStats'invalidPackets = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "filterStats" TraceStats'FilterStats where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'filterStats
           (\ x__ y__ -> x__ {_TraceStats'filterStats = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'filterStats" (Prelude.Maybe TraceStats'FilterStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'filterStats
           (\ x__ y__ -> x__ {_TraceStats'filterStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "flushesRequested" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'flushesRequested
           (\ x__ y__ -> x__ {_TraceStats'flushesRequested = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'flushesRequested" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'flushesRequested
           (\ x__ y__ -> x__ {_TraceStats'flushesRequested = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "flushesSucceeded" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'flushesSucceeded
           (\ x__ y__ -> x__ {_TraceStats'flushesSucceeded = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'flushesSucceeded" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'flushesSucceeded
           (\ x__ y__ -> x__ {_TraceStats'flushesSucceeded = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "flushesFailed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'flushesFailed
           (\ x__ y__ -> x__ {_TraceStats'flushesFailed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'flushesFailed" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'flushesFailed
           (\ x__ y__ -> x__ {_TraceStats'flushesFailed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats "finalFlushOutcome" TraceStats'FinalFlushOutcome where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'finalFlushOutcome
           (\ x__ y__ -> x__ {_TraceStats'finalFlushOutcome = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats "maybe'finalFlushOutcome" (Prelude.Maybe TraceStats'FinalFlushOutcome) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'finalFlushOutcome
           (\ x__ y__ -> x__ {_TraceStats'finalFlushOutcome = y__}))
        Prelude.id
instance Data.ProtoLens.Message TraceStats where
  messageName _ = Data.Text.pack "perfetto.protos.TraceStats"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \TraceStats\DC2J\n\
      \\fbuffer_stats\CAN\SOH \ETX(\v2'.perfetto.protos.TraceStats.BufferStatsR\vbufferStats\DC2=\n\
      \\ESCchunk_payload_histogram_def\CAN\DC1 \ETX(\ETXR\CANchunkPayloadHistogramDef\DC2J\n\
      \\fwriter_stats\CAN\DC2 \ETX(\v2'.perfetto.protos.TraceStats.WriterStatsR\vwriterStats\DC2/\n\
      \\DC3producers_connected\CAN\STX \SOH(\rR\DC2producersConnected\DC2%\n\
      \\SOproducers_seen\CAN\ETX \SOH(\EOTR\rproducersSeen\DC26\n\
      \\ETBdata_sources_registered\CAN\EOT \SOH(\rR\NAKdataSourcesRegistered\DC2*\n\
      \\DC1data_sources_seen\CAN\ENQ \SOH(\EOTR\SIdataSourcesSeen\DC2)\n\
      \\DLEtracing_sessions\CAN\ACK \SOH(\rR\SItracingSessions\DC2#\n\
      \\rtotal_buffers\CAN\a \SOH(\rR\ftotalBuffers\DC2)\n\
      \\DLEchunks_discarded\CAN\b \SOH(\EOTR\SIchunksDiscarded\DC2+\n\
      \\DC1patches_discarded\CAN\t \SOH(\EOTR\DLEpatchesDiscarded\DC2'\n\
      \\SIinvalid_packets\CAN\n\
      \ \SOH(\EOTR\SOinvalidPackets\DC2J\n\
      \\ffilter_stats\CAN\v \SOH(\v2'.perfetto.protos.TraceStats.FilterStatsR\vfilterStats\DC2+\n\
      \\DC1flushes_requested\CAN\f \SOH(\EOTR\DLEflushesRequested\DC2+\n\
      \\DC1flushes_succeeded\CAN\r \SOH(\EOTR\DLEflushesSucceeded\DC2%\n\
      \\SOflushes_failed\CAN\SO \SOH(\EOTR\rflushesFailed\DC2]\n\
      \\DC3final_flush_outcome\CAN\SI \SOH(\SO2-.perfetto.protos.TraceStats.FinalFlushOutcomeR\DC1finalFlushOutcome\SUB\212\ACK\n\
      \\vBufferStats\DC2\US\n\
      \\vbuffer_size\CAN\f \SOH(\EOTR\n\
      \bufferSize\DC2#\n\
      \\rbytes_written\CAN\SOH \SOH(\EOTR\fbytesWritten\DC2+\n\
      \\DC1bytes_overwritten\CAN\r \SOH(\EOTR\DLEbytesOverwritten\DC2\GS\n\
      \\n\
      \bytes_read\CAN\SO \SOH(\EOTR\tbytesRead\DC22\n\
      \\NAKpadding_bytes_written\CAN\SI \SOH(\EOTR\DC3paddingBytesWritten\DC22\n\
      \\NAKpadding_bytes_cleared\CAN\DLE \SOH(\EOTR\DC3paddingBytesCleared\DC2%\n\
      \\SOchunks_written\CAN\STX \SOH(\EOTR\rchunksWritten\DC2)\n\
      \\DLEchunks_rewritten\CAN\n\
      \ \SOH(\EOTR\SIchunksRewritten\DC2-\n\
      \\DC2chunks_overwritten\CAN\ETX \SOH(\EOTR\DC1chunksOverwritten\DC2)\n\
      \\DLEchunks_discarded\CAN\DC2 \SOH(\EOTR\SIchunksDiscarded\DC2\US\n\
      \\vchunks_read\CAN\DC1 \SOH(\EOTR\n\
      \chunksRead\DC2@\n\
      \\GSchunks_committed_out_of_order\CAN\v \SOH(\EOTR\EMchunksCommittedOutOfOrder\DC2(\n\
      \\DLEwrite_wrap_count\CAN\EOT \SOH(\EOTR\SOwriteWrapCount\DC2+\n\
      \\DC1patches_succeeded\CAN\ENQ \SOH(\EOTR\DLEpatchesSucceeded\DC2%\n\
      \\SOpatches_failed\CAN\ACK \SOH(\EOTR\rpatchesFailed\DC21\n\
      \\DC4readaheads_succeeded\CAN\a \SOH(\EOTR\DC3readaheadsSucceeded\DC2+\n\
      \\DC1readaheads_failed\CAN\b \SOH(\EOTR\DLEreadaheadsFailed\DC2%\n\
      \\SOabi_violations\CAN\t \SOH(\EOTR\rabiViolations\DC27\n\
      \\CANtrace_writer_packet_loss\CAN\DC3 \SOH(\EOTR\NAKtraceWriterPacketLoss\SUB\186\SOH\n\
      \\vWriterStats\DC2\US\n\
      \\vsequence_id\CAN\SOH \SOH(\EOTR\n\
      \sequenceId\DC2G\n\
      \\RSchunk_payload_histogram_counts\CAN\STX \ETX(\EOTR\ESCchunkPayloadHistogramCountsB\STX\DLE\SOH\DC2A\n\
      \\ESCchunk_payload_histogram_sum\CAN\ETX \ETX(\ETXR\CANchunkPayloadHistogramSumB\STX\DLE\SOH\SUB\178\SOH\n\
      \\vFilterStats\DC2#\n\
      \\rinput_packets\CAN\SOH \SOH(\EOTR\finputPackets\DC2\US\n\
      \\vinput_bytes\CAN\STX \SOH(\EOTR\n\
      \inputBytes\DC2!\n\
      \\foutput_bytes\CAN\ETX \SOH(\EOTR\voutputBytes\DC2\SYN\n\
      \\ACKerrors\CAN\EOT \SOH(\EOTR\ACKerrors\DC2\"\n\
      \\rtime_taken_ns\CAN\ENQ \SOH(\EOTR\vtimeTakenNs\"c\n\
      \\DC1FinalFlushOutcome\DC2\ESC\n\
      \\ETBFINAL_FLUSH_UNSPECIFIED\DLE\NUL\DC2\EM\n\
      \\NAKFINAL_FLUSH_SUCCEEDED\DLE\SOH\DC2\SYN\n\
      \\DC2FINAL_FLUSH_FAILED\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bufferStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TraceStats'BufferStats)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"bufferStats")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        chunkPayloadHistogramDef__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_payload_histogram_def"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"chunkPayloadHistogramDef")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        writerStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "writer_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TraceStats'WriterStats)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"writerStats")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        producersConnected__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "producers_connected"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'producersConnected")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        producersSeen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "producers_seen"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'producersSeen")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        dataSourcesRegistered__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_sources_registered"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSourcesRegistered")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        dataSourcesSeen__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "data_sources_seen"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'dataSourcesSeen")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        tracingSessions__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tracing_sessions"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tracingSessions")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        totalBuffers__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "total_buffers"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'totalBuffers")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        chunksDiscarded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunks_discarded"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunksDiscarded")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        patchesDiscarded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patches_discarded"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'patchesDiscarded")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        invalidPackets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "invalid_packets"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'invalidPackets")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        filterStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TraceStats'FilterStats)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filterStats")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        flushesRequested__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flushes_requested"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flushesRequested")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        flushesSucceeded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flushes_succeeded"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flushesSucceeded")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        flushesFailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flushes_failed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flushesFailed")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
        finalFlushOutcome__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "final_flush_outcome"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor TraceStats'FinalFlushOutcome)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'finalFlushOutcome")) ::
              Data.ProtoLens.FieldDescriptor TraceStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, bufferStats__field_descriptor),
           (Data.ProtoLens.Tag 17, 
            chunkPayloadHistogramDef__field_descriptor),
           (Data.ProtoLens.Tag 18, writerStats__field_descriptor),
           (Data.ProtoLens.Tag 2, producersConnected__field_descriptor),
           (Data.ProtoLens.Tag 3, producersSeen__field_descriptor),
           (Data.ProtoLens.Tag 4, dataSourcesRegistered__field_descriptor),
           (Data.ProtoLens.Tag 5, dataSourcesSeen__field_descriptor),
           (Data.ProtoLens.Tag 6, tracingSessions__field_descriptor),
           (Data.ProtoLens.Tag 7, totalBuffers__field_descriptor),
           (Data.ProtoLens.Tag 8, chunksDiscarded__field_descriptor),
           (Data.ProtoLens.Tag 9, patchesDiscarded__field_descriptor),
           (Data.ProtoLens.Tag 10, invalidPackets__field_descriptor),
           (Data.ProtoLens.Tag 11, filterStats__field_descriptor),
           (Data.ProtoLens.Tag 12, flushesRequested__field_descriptor),
           (Data.ProtoLens.Tag 13, flushesSucceeded__field_descriptor),
           (Data.ProtoLens.Tag 14, flushesFailed__field_descriptor),
           (Data.ProtoLens.Tag 15, finalFlushOutcome__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TraceStats'_unknownFields
        (\ x__ y__ -> x__ {_TraceStats'_unknownFields = y__})
  defMessage
    = TraceStats'_constructor
        {_TraceStats'bufferStats = Data.Vector.Generic.empty,
         _TraceStats'chunkPayloadHistogramDef = Data.Vector.Generic.empty,
         _TraceStats'writerStats = Data.Vector.Generic.empty,
         _TraceStats'producersConnected = Prelude.Nothing,
         _TraceStats'producersSeen = Prelude.Nothing,
         _TraceStats'dataSourcesRegistered = Prelude.Nothing,
         _TraceStats'dataSourcesSeen = Prelude.Nothing,
         _TraceStats'tracingSessions = Prelude.Nothing,
         _TraceStats'totalBuffers = Prelude.Nothing,
         _TraceStats'chunksDiscarded = Prelude.Nothing,
         _TraceStats'patchesDiscarded = Prelude.Nothing,
         _TraceStats'invalidPackets = Prelude.Nothing,
         _TraceStats'filterStats = Prelude.Nothing,
         _TraceStats'flushesRequested = Prelude.Nothing,
         _TraceStats'flushesSucceeded = Prelude.Nothing,
         _TraceStats'flushesFailed = Prelude.Nothing,
         _TraceStats'finalFlushOutcome = Prelude.Nothing,
         _TraceStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TraceStats
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TraceStats'BufferStats
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TraceStats'WriterStats
                   -> Data.ProtoLens.Encoding.Bytes.Parser TraceStats
        loop
          x
          mutable'bufferStats
          mutable'chunkPayloadHistogramDef
          mutable'writerStats
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'bufferStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'bufferStats)
                      frozen'chunkPayloadHistogramDef <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                              mutable'chunkPayloadHistogramDef)
                      frozen'writerStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'writerStats)
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
                              (Data.ProtoLens.Field.field @"vec'bufferStats") frozen'bufferStats
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'chunkPayloadHistogramDef")
                                 frozen'chunkPayloadHistogramDef
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'writerStats")
                                    frozen'writerStats x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "buffer_stats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'bufferStats y)
                                loop x v mutable'chunkPayloadHistogramDef mutable'writerStats
                        136
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "chunk_payload_histogram_def"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'chunkPayloadHistogramDef y)
                                loop x mutable'bufferStats v mutable'writerStats
                        138
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
                                                                    "chunk_payload_histogram_def"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'chunkPayloadHistogramDef)
                                loop x mutable'bufferStats y mutable'writerStats
                        146
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "writer_stats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'writerStats y)
                                loop x mutable'bufferStats mutable'chunkPayloadHistogramDef v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "producers_connected"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"producersConnected") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "producers_seen"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"producersSeen") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "data_sources_registered"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dataSourcesRegistered") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "data_sources_seen"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"dataSourcesSeen") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tracing_sessions"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"tracingSessions") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "total_buffers"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"totalBuffers") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "chunks_discarded"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chunksDiscarded") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "patches_discarded"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"patchesDiscarded") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "invalid_packets"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"invalidPackets") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        90
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "filter_stats"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"filterStats") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "flushes_requested"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"flushesRequested") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "flushes_succeeded"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"flushesSucceeded") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "flushes_failed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"flushesFailed") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "final_flush_outcome"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"finalFlushOutcome") y x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'bufferStats mutable'chunkPayloadHistogramDef
                                  mutable'writerStats
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'bufferStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'chunkPayloadHistogramDef <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    Data.ProtoLens.Encoding.Growing.new
              mutable'writerStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'bufferStats
                mutable'chunkPayloadHistogramDef mutable'writerStats)
          "TraceStats"
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
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'bufferStats") _x))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 136)
                           ((Prelude..)
                              Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'chunkPayloadHistogramDef") _x))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 146)
                              ((Prelude..)
                                 (\ bs
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                                         (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                 Data.ProtoLens.encodeMessage _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'writerStats") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'producersConnected") _x
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
                                (Data.ProtoLens.Field.field @"maybe'producersSeen") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'dataSourcesRegistered") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'dataSourcesSeen") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'tracingSessions") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'totalBuffers") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                               ((Prelude..)
                                                  Data.ProtoLens.Encoding.Bytes.putVarInt
                                                  Prelude.fromIntegral _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'chunksDiscarded")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field
                                                     @"maybe'patchesDiscarded")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'invalidPackets")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'filterStats")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              90)
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
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'flushesRequested")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 96)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'flushesSucceeded")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    104)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'flushesFailed")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       112)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'finalFlushOutcome")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          120)
                                                                       ((Prelude..)
                                                                          ((Prelude..)
                                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             Prelude.fromIntegral)
                                                                          Prelude.fromEnum _v))
                                                             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                (Lens.Family2.view
                                                                   Data.ProtoLens.unknownFields
                                                                   _x))))))))))))))))))
instance Control.DeepSeq.NFData TraceStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TraceStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TraceStats'bufferStats x__)
                (Control.DeepSeq.deepseq
                   (_TraceStats'chunkPayloadHistogramDef x__)
                   (Control.DeepSeq.deepseq
                      (_TraceStats'writerStats x__)
                      (Control.DeepSeq.deepseq
                         (_TraceStats'producersConnected x__)
                         (Control.DeepSeq.deepseq
                            (_TraceStats'producersSeen x__)
                            (Control.DeepSeq.deepseq
                               (_TraceStats'dataSourcesRegistered x__)
                               (Control.DeepSeq.deepseq
                                  (_TraceStats'dataSourcesSeen x__)
                                  (Control.DeepSeq.deepseq
                                     (_TraceStats'tracingSessions x__)
                                     (Control.DeepSeq.deepseq
                                        (_TraceStats'totalBuffers x__)
                                        (Control.DeepSeq.deepseq
                                           (_TraceStats'chunksDiscarded x__)
                                           (Control.DeepSeq.deepseq
                                              (_TraceStats'patchesDiscarded x__)
                                              (Control.DeepSeq.deepseq
                                                 (_TraceStats'invalidPackets x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_TraceStats'filterStats x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_TraceStats'flushesRequested x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_TraceStats'flushesSucceeded x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_TraceStats'flushesFailed x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_TraceStats'finalFlushOutcome x__)
                                                                ())))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.bufferSize' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'bufferSize' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.bytesWritten' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'bytesWritten' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.bytesOverwritten' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'bytesOverwritten' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.bytesRead' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'bytesRead' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.paddingBytesWritten' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'paddingBytesWritten' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.paddingBytesCleared' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'paddingBytesCleared' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunksWritten' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'chunksWritten' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunksRewritten' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'chunksRewritten' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunksOverwritten' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'chunksOverwritten' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunksDiscarded' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'chunksDiscarded' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunksRead' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'chunksRead' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunksCommittedOutOfOrder' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'chunksCommittedOutOfOrder' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.writeWrapCount' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'writeWrapCount' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.patchesSucceeded' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'patchesSucceeded' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.patchesFailed' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'patchesFailed' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.readaheadsSucceeded' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'readaheadsSucceeded' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.readaheadsFailed' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'readaheadsFailed' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.abiViolations' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'abiViolations' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.traceWriterPacketLoss' @:: Lens' TraceStats'BufferStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'traceWriterPacketLoss' @:: Lens' TraceStats'BufferStats (Prelude.Maybe Data.Word.Word64)@ -}
data TraceStats'BufferStats
  = TraceStats'BufferStats'_constructor {_TraceStats'BufferStats'bufferSize :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'bytesWritten :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'bytesOverwritten :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'bytesRead :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'paddingBytesWritten :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'paddingBytesCleared :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'chunksWritten :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'chunksRewritten :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'chunksOverwritten :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'chunksDiscarded :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'chunksRead :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'chunksCommittedOutOfOrder :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'writeWrapCount :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'patchesSucceeded :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'patchesFailed :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'readaheadsSucceeded :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'readaheadsFailed :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'abiViolations :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'traceWriterPacketLoss :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'BufferStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TraceStats'BufferStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "bufferSize" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'bufferSize
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'bufferSize = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'bufferSize" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'bufferSize
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'bufferSize = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "bytesWritten" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'bytesWritten
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'bytesWritten = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'bytesWritten" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'bytesWritten
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'bytesWritten = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "bytesOverwritten" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'bytesOverwritten
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'bytesOverwritten = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'bytesOverwritten" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'bytesOverwritten
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'bytesOverwritten = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "bytesRead" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'bytesRead
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'bytesRead = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'bytesRead" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'bytesRead
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'bytesRead = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "paddingBytesWritten" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'paddingBytesWritten
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'paddingBytesWritten = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'paddingBytesWritten" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'paddingBytesWritten
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'paddingBytesWritten = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "paddingBytesCleared" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'paddingBytesCleared
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'paddingBytesCleared = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'paddingBytesCleared" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'paddingBytesCleared
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'paddingBytesCleared = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "chunksWritten" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksWritten
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'chunksWritten = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'chunksWritten" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksWritten
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'chunksWritten = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "chunksRewritten" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksRewritten
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'chunksRewritten = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'chunksRewritten" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksRewritten
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'chunksRewritten = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "chunksOverwritten" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksOverwritten
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'chunksOverwritten = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'chunksOverwritten" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksOverwritten
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'chunksOverwritten = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "chunksDiscarded" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksDiscarded
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'chunksDiscarded = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'chunksDiscarded" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksDiscarded
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'chunksDiscarded = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "chunksRead" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksRead
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'chunksRead = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'chunksRead" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksRead
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'chunksRead = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "chunksCommittedOutOfOrder" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksCommittedOutOfOrder
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'chunksCommittedOutOfOrder = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'chunksCommittedOutOfOrder" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'chunksCommittedOutOfOrder
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'chunksCommittedOutOfOrder = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "writeWrapCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'writeWrapCount
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'writeWrapCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'writeWrapCount" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'writeWrapCount
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'writeWrapCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "patchesSucceeded" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'patchesSucceeded
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'patchesSucceeded = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'patchesSucceeded" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'patchesSucceeded
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'patchesSucceeded = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "patchesFailed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'patchesFailed
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'patchesFailed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'patchesFailed" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'patchesFailed
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'patchesFailed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "readaheadsSucceeded" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'readaheadsSucceeded
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'readaheadsSucceeded = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'readaheadsSucceeded" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'readaheadsSucceeded
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'readaheadsSucceeded = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "readaheadsFailed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'readaheadsFailed
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'readaheadsFailed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'readaheadsFailed" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'readaheadsFailed
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'readaheadsFailed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "abiViolations" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'abiViolations
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'abiViolations = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'abiViolations" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'abiViolations
           (\ x__ y__ -> x__ {_TraceStats'BufferStats'abiViolations = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "traceWriterPacketLoss" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'traceWriterPacketLoss
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'traceWriterPacketLoss = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'BufferStats "maybe'traceWriterPacketLoss" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'BufferStats'traceWriterPacketLoss
           (\ x__ y__
              -> x__ {_TraceStats'BufferStats'traceWriterPacketLoss = y__}))
        Prelude.id
instance Data.ProtoLens.Message TraceStats'BufferStats where
  messageName _
    = Data.Text.pack "perfetto.protos.TraceStats.BufferStats"
  packedMessageDescriptor _
    = "\n\
      \\vBufferStats\DC2\US\n\
      \\vbuffer_size\CAN\f \SOH(\EOTR\n\
      \bufferSize\DC2#\n\
      \\rbytes_written\CAN\SOH \SOH(\EOTR\fbytesWritten\DC2+\n\
      \\DC1bytes_overwritten\CAN\r \SOH(\EOTR\DLEbytesOverwritten\DC2\GS\n\
      \\n\
      \bytes_read\CAN\SO \SOH(\EOTR\tbytesRead\DC22\n\
      \\NAKpadding_bytes_written\CAN\SI \SOH(\EOTR\DC3paddingBytesWritten\DC22\n\
      \\NAKpadding_bytes_cleared\CAN\DLE \SOH(\EOTR\DC3paddingBytesCleared\DC2%\n\
      \\SOchunks_written\CAN\STX \SOH(\EOTR\rchunksWritten\DC2)\n\
      \\DLEchunks_rewritten\CAN\n\
      \ \SOH(\EOTR\SIchunksRewritten\DC2-\n\
      \\DC2chunks_overwritten\CAN\ETX \SOH(\EOTR\DC1chunksOverwritten\DC2)\n\
      \\DLEchunks_discarded\CAN\DC2 \SOH(\EOTR\SIchunksDiscarded\DC2\US\n\
      \\vchunks_read\CAN\DC1 \SOH(\EOTR\n\
      \chunksRead\DC2@\n\
      \\GSchunks_committed_out_of_order\CAN\v \SOH(\EOTR\EMchunksCommittedOutOfOrder\DC2(\n\
      \\DLEwrite_wrap_count\CAN\EOT \SOH(\EOTR\SOwriteWrapCount\DC2+\n\
      \\DC1patches_succeeded\CAN\ENQ \SOH(\EOTR\DLEpatchesSucceeded\DC2%\n\
      \\SOpatches_failed\CAN\ACK \SOH(\EOTR\rpatchesFailed\DC21\n\
      \\DC4readaheads_succeeded\CAN\a \SOH(\EOTR\DC3readaheadsSucceeded\DC2+\n\
      \\DC1readaheads_failed\CAN\b \SOH(\EOTR\DLEreadaheadsFailed\DC2%\n\
      \\SOabi_violations\CAN\t \SOH(\EOTR\rabiViolations\DC27\n\
      \\CANtrace_writer_packet_loss\CAN\DC3 \SOH(\EOTR\NAKtraceWriterPacketLoss"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        bufferSize__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buffer_size"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bufferSize")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        bytesWritten__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_written"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesWritten")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        bytesOverwritten__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_overwritten"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesOverwritten")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        bytesRead__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_read"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesRead")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        paddingBytesWritten__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "padding_bytes_written"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'paddingBytesWritten")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        paddingBytesCleared__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "padding_bytes_cleared"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'paddingBytesCleared")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        chunksWritten__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunks_written"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunksWritten")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        chunksRewritten__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunks_rewritten"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunksRewritten")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        chunksOverwritten__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunks_overwritten"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunksOverwritten")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        chunksDiscarded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunks_discarded"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunksDiscarded")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        chunksRead__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunks_read"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunksRead")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        chunksCommittedOutOfOrder__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunks_committed_out_of_order"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'chunksCommittedOutOfOrder")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        writeWrapCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "write_wrap_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'writeWrapCount")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        patchesSucceeded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patches_succeeded"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'patchesSucceeded")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        patchesFailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "patches_failed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'patchesFailed")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        readaheadsSucceeded__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "readaheads_succeeded"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readaheadsSucceeded")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        readaheadsFailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "readaheads_failed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readaheadsFailed")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        abiViolations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "abi_violations"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'abiViolations")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
        traceWriterPacketLoss__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "trace_writer_packet_loss"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'traceWriterPacketLoss")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'BufferStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 12, bufferSize__field_descriptor),
           (Data.ProtoLens.Tag 1, bytesWritten__field_descriptor),
           (Data.ProtoLens.Tag 13, bytesOverwritten__field_descriptor),
           (Data.ProtoLens.Tag 14, bytesRead__field_descriptor),
           (Data.ProtoLens.Tag 15, paddingBytesWritten__field_descriptor),
           (Data.ProtoLens.Tag 16, paddingBytesCleared__field_descriptor),
           (Data.ProtoLens.Tag 2, chunksWritten__field_descriptor),
           (Data.ProtoLens.Tag 10, chunksRewritten__field_descriptor),
           (Data.ProtoLens.Tag 3, chunksOverwritten__field_descriptor),
           (Data.ProtoLens.Tag 18, chunksDiscarded__field_descriptor),
           (Data.ProtoLens.Tag 17, chunksRead__field_descriptor),
           (Data.ProtoLens.Tag 11, 
            chunksCommittedOutOfOrder__field_descriptor),
           (Data.ProtoLens.Tag 4, writeWrapCount__field_descriptor),
           (Data.ProtoLens.Tag 5, patchesSucceeded__field_descriptor),
           (Data.ProtoLens.Tag 6, patchesFailed__field_descriptor),
           (Data.ProtoLens.Tag 7, readaheadsSucceeded__field_descriptor),
           (Data.ProtoLens.Tag 8, readaheadsFailed__field_descriptor),
           (Data.ProtoLens.Tag 9, abiViolations__field_descriptor),
           (Data.ProtoLens.Tag 19, traceWriterPacketLoss__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TraceStats'BufferStats'_unknownFields
        (\ x__ y__ -> x__ {_TraceStats'BufferStats'_unknownFields = y__})
  defMessage
    = TraceStats'BufferStats'_constructor
        {_TraceStats'BufferStats'bufferSize = Prelude.Nothing,
         _TraceStats'BufferStats'bytesWritten = Prelude.Nothing,
         _TraceStats'BufferStats'bytesOverwritten = Prelude.Nothing,
         _TraceStats'BufferStats'bytesRead = Prelude.Nothing,
         _TraceStats'BufferStats'paddingBytesWritten = Prelude.Nothing,
         _TraceStats'BufferStats'paddingBytesCleared = Prelude.Nothing,
         _TraceStats'BufferStats'chunksWritten = Prelude.Nothing,
         _TraceStats'BufferStats'chunksRewritten = Prelude.Nothing,
         _TraceStats'BufferStats'chunksOverwritten = Prelude.Nothing,
         _TraceStats'BufferStats'chunksDiscarded = Prelude.Nothing,
         _TraceStats'BufferStats'chunksRead = Prelude.Nothing,
         _TraceStats'BufferStats'chunksCommittedOutOfOrder = Prelude.Nothing,
         _TraceStats'BufferStats'writeWrapCount = Prelude.Nothing,
         _TraceStats'BufferStats'patchesSucceeded = Prelude.Nothing,
         _TraceStats'BufferStats'patchesFailed = Prelude.Nothing,
         _TraceStats'BufferStats'readaheadsSucceeded = Prelude.Nothing,
         _TraceStats'BufferStats'readaheadsFailed = Prelude.Nothing,
         _TraceStats'BufferStats'abiViolations = Prelude.Nothing,
         _TraceStats'BufferStats'traceWriterPacketLoss = Prelude.Nothing,
         _TraceStats'BufferStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TraceStats'BufferStats
          -> Data.ProtoLens.Encoding.Bytes.Parser TraceStats'BufferStats
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
                        96
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "buffer_size"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bufferSize") y x)
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_written"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bytesWritten") y x)
                        104
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_overwritten"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bytesOverwritten") y x)
                        112
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_read"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesRead") y x)
                        120
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "padding_bytes_written"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paddingBytesWritten") y x)
                        128
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "padding_bytes_cleared"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"paddingBytesCleared") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "chunks_written"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chunksWritten") y x)
                        80
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "chunks_rewritten"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chunksRewritten") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "chunks_overwritten"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chunksOverwritten") y x)
                        144
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "chunks_discarded"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chunksDiscarded") y x)
                        136
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "chunks_read"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"chunksRead") y x)
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "chunks_committed_out_of_order"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"chunksCommittedOutOfOrder") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "write_wrap_count"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"writeWrapCount") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "patches_succeeded"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"patchesSucceeded") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "patches_failed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"patchesFailed") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "readaheads_succeeded"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"readaheadsSucceeded") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "readaheads_failed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"readaheadsFailed") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "abi_violations"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"abiViolations") y x)
                        152
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "trace_writer_packet_loss"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"traceWriterPacketLoss") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "BufferStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'bufferSize") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 96)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'bytesWritten") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'bytesOverwritten") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 104)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'bytesRead") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 112)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'paddingBytesWritten") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 120)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'paddingBytesCleared") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 128)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'chunksWritten") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'chunksRewritten") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 80)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'chunksOverwritten")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     ((Data.Monoid.<>)
                                        (case
                                             Lens.Family2.view
                                               (Data.ProtoLens.Field.field @"maybe'chunksDiscarded")
                                               _x
                                         of
                                           Prelude.Nothing -> Data.Monoid.mempty
                                           (Prelude.Just _v)
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 144)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                        ((Data.Monoid.<>)
                                           (case
                                                Lens.Family2.view
                                                  (Data.ProtoLens.Field.field @"maybe'chunksRead")
                                                  _x
                                            of
                                              Prelude.Nothing -> Data.Monoid.mempty
                                              (Prelude.Just _v)
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 136)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                           ((Data.Monoid.<>)
                                              (case
                                                   Lens.Family2.view
                                                     (Data.ProtoLens.Field.field
                                                        @"maybe'chunksCommittedOutOfOrder")
                                                     _x
                                               of
                                                 Prelude.Nothing -> Data.Monoid.mempty
                                                 (Prelude.Just _v)
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           _v))
                                              ((Data.Monoid.<>)
                                                 (case
                                                      Lens.Family2.view
                                                        (Data.ProtoLens.Field.field
                                                           @"maybe'writeWrapCount")
                                                        _x
                                                  of
                                                    Prelude.Nothing -> Data.Monoid.mempty
                                                    (Prelude.Just _v)
                                                      -> (Data.Monoid.<>)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              32)
                                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                              _v))
                                                 ((Data.Monoid.<>)
                                                    (case
                                                         Lens.Family2.view
                                                           (Data.ProtoLens.Field.field
                                                              @"maybe'patchesSucceeded")
                                                           _x
                                                     of
                                                       Prelude.Nothing -> Data.Monoid.mempty
                                                       (Prelude.Just _v)
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 40)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 _v))
                                                    ((Data.Monoid.<>)
                                                       (case
                                                            Lens.Family2.view
                                                              (Data.ProtoLens.Field.field
                                                                 @"maybe'patchesFailed")
                                                              _x
                                                        of
                                                          Prelude.Nothing -> Data.Monoid.mempty
                                                          (Prelude.Just _v)
                                                            -> (Data.Monoid.<>)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    48)
                                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                    _v))
                                                       ((Data.Monoid.<>)
                                                          (case
                                                               Lens.Family2.view
                                                                 (Data.ProtoLens.Field.field
                                                                    @"maybe'readaheadsSucceeded")
                                                                 _x
                                                           of
                                                             Prelude.Nothing -> Data.Monoid.mempty
                                                             (Prelude.Just _v)
                                                               -> (Data.Monoid.<>)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       56)
                                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                       _v))
                                                          ((Data.Monoid.<>)
                                                             (case
                                                                  Lens.Family2.view
                                                                    (Data.ProtoLens.Field.field
                                                                       @"maybe'readaheadsFailed")
                                                                    _x
                                                              of
                                                                Prelude.Nothing
                                                                  -> Data.Monoid.mempty
                                                                (Prelude.Just _v)
                                                                  -> (Data.Monoid.<>)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          64)
                                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                          _v))
                                                             ((Data.Monoid.<>)
                                                                (case
                                                                     Lens.Family2.view
                                                                       (Data.ProtoLens.Field.field
                                                                          @"maybe'abiViolations")
                                                                       _x
                                                                 of
                                                                   Prelude.Nothing
                                                                     -> Data.Monoid.mempty
                                                                   (Prelude.Just _v)
                                                                     -> (Data.Monoid.<>)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             72)
                                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                             _v))
                                                                ((Data.Monoid.<>)
                                                                   (case
                                                                        Lens.Family2.view
                                                                          (Data.ProtoLens.Field.field
                                                                             @"maybe'traceWriterPacketLoss")
                                                                          _x
                                                                    of
                                                                      Prelude.Nothing
                                                                        -> Data.Monoid.mempty
                                                                      (Prelude.Just _v)
                                                                        -> (Data.Monoid.<>)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                152)
                                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                                _v))
                                                                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                                      (Lens.Family2.view
                                                                         Data.ProtoLens.unknownFields
                                                                         _x))))))))))))))))))))
instance Control.DeepSeq.NFData TraceStats'BufferStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TraceStats'BufferStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TraceStats'BufferStats'bufferSize x__)
                (Control.DeepSeq.deepseq
                   (_TraceStats'BufferStats'bytesWritten x__)
                   (Control.DeepSeq.deepseq
                      (_TraceStats'BufferStats'bytesOverwritten x__)
                      (Control.DeepSeq.deepseq
                         (_TraceStats'BufferStats'bytesRead x__)
                         (Control.DeepSeq.deepseq
                            (_TraceStats'BufferStats'paddingBytesWritten x__)
                            (Control.DeepSeq.deepseq
                               (_TraceStats'BufferStats'paddingBytesCleared x__)
                               (Control.DeepSeq.deepseq
                                  (_TraceStats'BufferStats'chunksWritten x__)
                                  (Control.DeepSeq.deepseq
                                     (_TraceStats'BufferStats'chunksRewritten x__)
                                     (Control.DeepSeq.deepseq
                                        (_TraceStats'BufferStats'chunksOverwritten x__)
                                        (Control.DeepSeq.deepseq
                                           (_TraceStats'BufferStats'chunksDiscarded x__)
                                           (Control.DeepSeq.deepseq
                                              (_TraceStats'BufferStats'chunksRead x__)
                                              (Control.DeepSeq.deepseq
                                                 (_TraceStats'BufferStats'chunksCommittedOutOfOrder
                                                    x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_TraceStats'BufferStats'writeWrapCount x__)
                                                    (Control.DeepSeq.deepseq
                                                       (_TraceStats'BufferStats'patchesSucceeded
                                                          x__)
                                                       (Control.DeepSeq.deepseq
                                                          (_TraceStats'BufferStats'patchesFailed
                                                             x__)
                                                          (Control.DeepSeq.deepseq
                                                             (_TraceStats'BufferStats'readaheadsSucceeded
                                                                x__)
                                                             (Control.DeepSeq.deepseq
                                                                (_TraceStats'BufferStats'readaheadsFailed
                                                                   x__)
                                                                (Control.DeepSeq.deepseq
                                                                   (_TraceStats'BufferStats'abiViolations
                                                                      x__)
                                                                   (Control.DeepSeq.deepseq
                                                                      (_TraceStats'BufferStats'traceWriterPacketLoss
                                                                         x__)
                                                                      ())))))))))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.inputPackets' @:: Lens' TraceStats'FilterStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'inputPackets' @:: Lens' TraceStats'FilterStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.inputBytes' @:: Lens' TraceStats'FilterStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'inputBytes' @:: Lens' TraceStats'FilterStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.outputBytes' @:: Lens' TraceStats'FilterStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'outputBytes' @:: Lens' TraceStats'FilterStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.errors' @:: Lens' TraceStats'FilterStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'errors' @:: Lens' TraceStats'FilterStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.timeTakenNs' @:: Lens' TraceStats'FilterStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'timeTakenNs' @:: Lens' TraceStats'FilterStats (Prelude.Maybe Data.Word.Word64)@ -}
data TraceStats'FilterStats
  = TraceStats'FilterStats'_constructor {_TraceStats'FilterStats'inputPackets :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'FilterStats'inputBytes :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'FilterStats'outputBytes :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'FilterStats'errors :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'FilterStats'timeTakenNs :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'FilterStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TraceStats'FilterStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "inputPackets" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'inputPackets
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'inputPackets = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "maybe'inputPackets" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'inputPackets
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'inputPackets = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "inputBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'inputBytes
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'inputBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "maybe'inputBytes" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'inputBytes
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'inputBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "outputBytes" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'outputBytes
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'outputBytes = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "maybe'outputBytes" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'outputBytes
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'outputBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "errors" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'errors
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'errors = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "maybe'errors" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'errors
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'errors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "timeTakenNs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'timeTakenNs
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'timeTakenNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'FilterStats "maybe'timeTakenNs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'FilterStats'timeTakenNs
           (\ x__ y__ -> x__ {_TraceStats'FilterStats'timeTakenNs = y__}))
        Prelude.id
instance Data.ProtoLens.Message TraceStats'FilterStats where
  messageName _
    = Data.Text.pack "perfetto.protos.TraceStats.FilterStats"
  packedMessageDescriptor _
    = "\n\
      \\vFilterStats\DC2#\n\
      \\rinput_packets\CAN\SOH \SOH(\EOTR\finputPackets\DC2\US\n\
      \\vinput_bytes\CAN\STX \SOH(\EOTR\n\
      \inputBytes\DC2!\n\
      \\foutput_bytes\CAN\ETX \SOH(\EOTR\voutputBytes\DC2\SYN\n\
      \\ACKerrors\CAN\EOT \SOH(\EOTR\ACKerrors\DC2\"\n\
      \\rtime_taken_ns\CAN\ENQ \SOH(\EOTR\vtimeTakenNs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inputPackets__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input_packets"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inputPackets")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'FilterStats
        inputBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "input_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'inputBytes")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'FilterStats
        outputBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "output_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'outputBytes")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'FilterStats
        errors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "errors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'errors")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'FilterStats
        timeTakenNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "time_taken_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timeTakenNs")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'FilterStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inputPackets__field_descriptor),
           (Data.ProtoLens.Tag 2, inputBytes__field_descriptor),
           (Data.ProtoLens.Tag 3, outputBytes__field_descriptor),
           (Data.ProtoLens.Tag 4, errors__field_descriptor),
           (Data.ProtoLens.Tag 5, timeTakenNs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TraceStats'FilterStats'_unknownFields
        (\ x__ y__ -> x__ {_TraceStats'FilterStats'_unknownFields = y__})
  defMessage
    = TraceStats'FilterStats'_constructor
        {_TraceStats'FilterStats'inputPackets = Prelude.Nothing,
         _TraceStats'FilterStats'inputBytes = Prelude.Nothing,
         _TraceStats'FilterStats'outputBytes = Prelude.Nothing,
         _TraceStats'FilterStats'errors = Prelude.Nothing,
         _TraceStats'FilterStats'timeTakenNs = Prelude.Nothing,
         _TraceStats'FilterStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TraceStats'FilterStats
          -> Data.ProtoLens.Encoding.Bytes.Parser TraceStats'FilterStats
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "input_packets"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"inputPackets") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "input_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"inputBytes") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "output_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"outputBytes") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "errors"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"errors") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "time_taken_ns"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timeTakenNs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FilterStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'inputPackets") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'inputBytes") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'outputBytes") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'errors") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'timeTakenNs") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData TraceStats'FilterStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TraceStats'FilterStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TraceStats'FilterStats'inputPackets x__)
                (Control.DeepSeq.deepseq
                   (_TraceStats'FilterStats'inputBytes x__)
                   (Control.DeepSeq.deepseq
                      (_TraceStats'FilterStats'outputBytes x__)
                      (Control.DeepSeq.deepseq
                         (_TraceStats'FilterStats'errors x__)
                         (Control.DeepSeq.deepseq
                            (_TraceStats'FilterStats'timeTakenNs x__) ())))))
data TraceStats'FinalFlushOutcome
  = TraceStats'FINAL_FLUSH_UNSPECIFIED |
    TraceStats'FINAL_FLUSH_SUCCEEDED |
    TraceStats'FINAL_FLUSH_FAILED
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum TraceStats'FinalFlushOutcome where
  maybeToEnum 0 = Prelude.Just TraceStats'FINAL_FLUSH_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just TraceStats'FINAL_FLUSH_SUCCEEDED
  maybeToEnum 2 = Prelude.Just TraceStats'FINAL_FLUSH_FAILED
  maybeToEnum _ = Prelude.Nothing
  showEnum TraceStats'FINAL_FLUSH_UNSPECIFIED
    = "FINAL_FLUSH_UNSPECIFIED"
  showEnum TraceStats'FINAL_FLUSH_SUCCEEDED = "FINAL_FLUSH_SUCCEEDED"
  showEnum TraceStats'FINAL_FLUSH_FAILED = "FINAL_FLUSH_FAILED"
  readEnum k
    | (Prelude.==) k "FINAL_FLUSH_UNSPECIFIED"
    = Prelude.Just TraceStats'FINAL_FLUSH_UNSPECIFIED
    | (Prelude.==) k "FINAL_FLUSH_SUCCEEDED"
    = Prelude.Just TraceStats'FINAL_FLUSH_SUCCEEDED
    | (Prelude.==) k "FINAL_FLUSH_FAILED"
    = Prelude.Just TraceStats'FINAL_FLUSH_FAILED
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded TraceStats'FinalFlushOutcome where
  minBound = TraceStats'FINAL_FLUSH_UNSPECIFIED
  maxBound = TraceStats'FINAL_FLUSH_FAILED
instance Prelude.Enum TraceStats'FinalFlushOutcome where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum FinalFlushOutcome: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum TraceStats'FINAL_FLUSH_UNSPECIFIED = 0
  fromEnum TraceStats'FINAL_FLUSH_SUCCEEDED = 1
  fromEnum TraceStats'FINAL_FLUSH_FAILED = 2
  succ TraceStats'FINAL_FLUSH_FAILED
    = Prelude.error
        "TraceStats'FinalFlushOutcome.succ: bad argument TraceStats'FINAL_FLUSH_FAILED. This value would be out of bounds."
  succ TraceStats'FINAL_FLUSH_UNSPECIFIED
    = TraceStats'FINAL_FLUSH_SUCCEEDED
  succ TraceStats'FINAL_FLUSH_SUCCEEDED
    = TraceStats'FINAL_FLUSH_FAILED
  pred TraceStats'FINAL_FLUSH_UNSPECIFIED
    = Prelude.error
        "TraceStats'FinalFlushOutcome.pred: bad argument TraceStats'FINAL_FLUSH_UNSPECIFIED. This value would be out of bounds."
  pred TraceStats'FINAL_FLUSH_SUCCEEDED
    = TraceStats'FINAL_FLUSH_UNSPECIFIED
  pred TraceStats'FINAL_FLUSH_FAILED
    = TraceStats'FINAL_FLUSH_SUCCEEDED
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault TraceStats'FinalFlushOutcome where
  fieldDefault = TraceStats'FINAL_FLUSH_UNSPECIFIED
instance Control.DeepSeq.NFData TraceStats'FinalFlushOutcome where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.sequenceId' @:: Lens' TraceStats'WriterStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.maybe'sequenceId' @:: Lens' TraceStats'WriterStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunkPayloadHistogramCounts' @:: Lens' TraceStats'WriterStats [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.vec'chunkPayloadHistogramCounts' @:: Lens' TraceStats'WriterStats (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.chunkPayloadHistogramSum' @:: Lens' TraceStats'WriterStats [Data.Int.Int64]@
         * 'Proto.Protos.Perfetto.Common.TraceStats_Fields.vec'chunkPayloadHistogramSum' @:: Lens' TraceStats'WriterStats (Data.Vector.Unboxed.Vector Data.Int.Int64)@ -}
data TraceStats'WriterStats
  = TraceStats'WriterStats'_constructor {_TraceStats'WriterStats'sequenceId :: !(Prelude.Maybe Data.Word.Word64),
                                         _TraceStats'WriterStats'chunkPayloadHistogramCounts :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                         _TraceStats'WriterStats'chunkPayloadHistogramSum :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                                         _TraceStats'WriterStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TraceStats'WriterStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TraceStats'WriterStats "sequenceId" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'WriterStats'sequenceId
           (\ x__ y__ -> x__ {_TraceStats'WriterStats'sequenceId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TraceStats'WriterStats "maybe'sequenceId" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'WriterStats'sequenceId
           (\ x__ y__ -> x__ {_TraceStats'WriterStats'sequenceId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'WriterStats "chunkPayloadHistogramCounts" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'WriterStats'chunkPayloadHistogramCounts
           (\ x__ y__
              -> x__
                   {_TraceStats'WriterStats'chunkPayloadHistogramCounts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TraceStats'WriterStats "vec'chunkPayloadHistogramCounts" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'WriterStats'chunkPayloadHistogramCounts
           (\ x__ y__
              -> x__
                   {_TraceStats'WriterStats'chunkPayloadHistogramCounts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TraceStats'WriterStats "chunkPayloadHistogramSum" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'WriterStats'chunkPayloadHistogramSum
           (\ x__ y__
              -> x__ {_TraceStats'WriterStats'chunkPayloadHistogramSum = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TraceStats'WriterStats "vec'chunkPayloadHistogramSum" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TraceStats'WriterStats'chunkPayloadHistogramSum
           (\ x__ y__
              -> x__ {_TraceStats'WriterStats'chunkPayloadHistogramSum = y__}))
        Prelude.id
instance Data.ProtoLens.Message TraceStats'WriterStats where
  messageName _
    = Data.Text.pack "perfetto.protos.TraceStats.WriterStats"
  packedMessageDescriptor _
    = "\n\
      \\vWriterStats\DC2\US\n\
      \\vsequence_id\CAN\SOH \SOH(\EOTR\n\
      \sequenceId\DC2G\n\
      \\RSchunk_payload_histogram_counts\CAN\STX \ETX(\EOTR\ESCchunkPayloadHistogramCountsB\STX\DLE\SOH\DC2A\n\
      \\ESCchunk_payload_histogram_sum\CAN\ETX \ETX(\ETXR\CANchunkPayloadHistogramSumB\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        sequenceId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "sequence_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'sequenceId")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'WriterStats
        chunkPayloadHistogramCounts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_payload_histogram_counts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"chunkPayloadHistogramCounts")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'WriterStats
        chunkPayloadHistogramSum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "chunk_payload_histogram_sum"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"chunkPayloadHistogramSum")) ::
              Data.ProtoLens.FieldDescriptor TraceStats'WriterStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, sequenceId__field_descriptor),
           (Data.ProtoLens.Tag 2, 
            chunkPayloadHistogramCounts__field_descriptor),
           (Data.ProtoLens.Tag 3, chunkPayloadHistogramSum__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TraceStats'WriterStats'_unknownFields
        (\ x__ y__ -> x__ {_TraceStats'WriterStats'_unknownFields = y__})
  defMessage
    = TraceStats'WriterStats'_constructor
        {_TraceStats'WriterStats'sequenceId = Prelude.Nothing,
         _TraceStats'WriterStats'chunkPayloadHistogramCounts = Data.Vector.Generic.empty,
         _TraceStats'WriterStats'chunkPayloadHistogramSum = Data.Vector.Generic.empty,
         _TraceStats'WriterStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TraceStats'WriterStats
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                -> Data.ProtoLens.Encoding.Bytes.Parser TraceStats'WriterStats
        loop
          x
          mutable'chunkPayloadHistogramCounts
          mutable'chunkPayloadHistogramSum
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'chunkPayloadHistogramCounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                                 mutable'chunkPayloadHistogramCounts)
                      frozen'chunkPayloadHistogramSum <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                              mutable'chunkPayloadHistogramSum)
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
                              (Data.ProtoLens.Field.field @"vec'chunkPayloadHistogramCounts")
                              frozen'chunkPayloadHistogramCounts
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'chunkPayloadHistogramSum")
                                 frozen'chunkPayloadHistogramSum x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "sequence_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"sequenceId") y x)
                                  mutable'chunkPayloadHistogramCounts
                                  mutable'chunkPayloadHistogramSum
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt
                                        "chunk_payload_histogram_counts"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'chunkPayloadHistogramCounts y)
                                loop x v mutable'chunkPayloadHistogramSum
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
                                                                    "chunk_payload_histogram_counts"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'chunkPayloadHistogramCounts)
                                loop x y mutable'chunkPayloadHistogramSum
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "chunk_payload_histogram_sum"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'chunkPayloadHistogramSum y)
                                loop x mutable'chunkPayloadHistogramCounts v
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
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "chunk_payload_histogram_sum"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'chunkPayloadHistogramSum)
                                loop x mutable'chunkPayloadHistogramCounts y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'chunkPayloadHistogramCounts
                                  mutable'chunkPayloadHistogramSum
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'chunkPayloadHistogramCounts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                       Data.ProtoLens.Encoding.Growing.new
              mutable'chunkPayloadHistogramSum <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'chunkPayloadHistogramCounts
                mutable'chunkPayloadHistogramSum)
          "WriterStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'sequenceId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (let
                   p = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'chunkPayloadHistogramCounts") _x
                 in
                   if Data.Vector.Generic.null p then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            (Data.ProtoLens.Encoding.Bytes.runBuilder
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  Data.ProtoLens.Encoding.Bytes.putVarInt p))))
                ((Data.Monoid.<>)
                   (let
                      p = Lens.Family2.view
                            (Data.ProtoLens.Field.field @"vec'chunkPayloadHistogramSum") _x
                    in
                      if Data.Vector.Generic.null p then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               (Data.ProtoLens.Encoding.Bytes.runBuilder
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     p))))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData TraceStats'WriterStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TraceStats'WriterStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TraceStats'WriterStats'sequenceId x__)
                (Control.DeepSeq.deepseq
                   (_TraceStats'WriterStats'chunkPayloadHistogramCounts x__)
                   (Control.DeepSeq.deepseq
                      (_TraceStats'WriterStats'chunkPayloadHistogramSum x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(protos/perfetto/common/trace_stats.proto\DC2\SIperfetto.protos\"\202\DC1\n\
    \\n\
    \TraceStats\DC2J\n\
    \\fbuffer_stats\CAN\SOH \ETX(\v2'.perfetto.protos.TraceStats.BufferStatsR\vbufferStats\DC2=\n\
    \\ESCchunk_payload_histogram_def\CAN\DC1 \ETX(\ETXR\CANchunkPayloadHistogramDef\DC2J\n\
    \\fwriter_stats\CAN\DC2 \ETX(\v2'.perfetto.protos.TraceStats.WriterStatsR\vwriterStats\DC2/\n\
    \\DC3producers_connected\CAN\STX \SOH(\rR\DC2producersConnected\DC2%\n\
    \\SOproducers_seen\CAN\ETX \SOH(\EOTR\rproducersSeen\DC26\n\
    \\ETBdata_sources_registered\CAN\EOT \SOH(\rR\NAKdataSourcesRegistered\DC2*\n\
    \\DC1data_sources_seen\CAN\ENQ \SOH(\EOTR\SIdataSourcesSeen\DC2)\n\
    \\DLEtracing_sessions\CAN\ACK \SOH(\rR\SItracingSessions\DC2#\n\
    \\rtotal_buffers\CAN\a \SOH(\rR\ftotalBuffers\DC2)\n\
    \\DLEchunks_discarded\CAN\b \SOH(\EOTR\SIchunksDiscarded\DC2+\n\
    \\DC1patches_discarded\CAN\t \SOH(\EOTR\DLEpatchesDiscarded\DC2'\n\
    \\SIinvalid_packets\CAN\n\
    \ \SOH(\EOTR\SOinvalidPackets\DC2J\n\
    \\ffilter_stats\CAN\v \SOH(\v2'.perfetto.protos.TraceStats.FilterStatsR\vfilterStats\DC2+\n\
    \\DC1flushes_requested\CAN\f \SOH(\EOTR\DLEflushesRequested\DC2+\n\
    \\DC1flushes_succeeded\CAN\r \SOH(\EOTR\DLEflushesSucceeded\DC2%\n\
    \\SOflushes_failed\CAN\SO \SOH(\EOTR\rflushesFailed\DC2]\n\
    \\DC3final_flush_outcome\CAN\SI \SOH(\SO2-.perfetto.protos.TraceStats.FinalFlushOutcomeR\DC1finalFlushOutcome\SUB\212\ACK\n\
    \\vBufferStats\DC2\US\n\
    \\vbuffer_size\CAN\f \SOH(\EOTR\n\
    \bufferSize\DC2#\n\
    \\rbytes_written\CAN\SOH \SOH(\EOTR\fbytesWritten\DC2+\n\
    \\DC1bytes_overwritten\CAN\r \SOH(\EOTR\DLEbytesOverwritten\DC2\GS\n\
    \\n\
    \bytes_read\CAN\SO \SOH(\EOTR\tbytesRead\DC22\n\
    \\NAKpadding_bytes_written\CAN\SI \SOH(\EOTR\DC3paddingBytesWritten\DC22\n\
    \\NAKpadding_bytes_cleared\CAN\DLE \SOH(\EOTR\DC3paddingBytesCleared\DC2%\n\
    \\SOchunks_written\CAN\STX \SOH(\EOTR\rchunksWritten\DC2)\n\
    \\DLEchunks_rewritten\CAN\n\
    \ \SOH(\EOTR\SIchunksRewritten\DC2-\n\
    \\DC2chunks_overwritten\CAN\ETX \SOH(\EOTR\DC1chunksOverwritten\DC2)\n\
    \\DLEchunks_discarded\CAN\DC2 \SOH(\EOTR\SIchunksDiscarded\DC2\US\n\
    \\vchunks_read\CAN\DC1 \SOH(\EOTR\n\
    \chunksRead\DC2@\n\
    \\GSchunks_committed_out_of_order\CAN\v \SOH(\EOTR\EMchunksCommittedOutOfOrder\DC2(\n\
    \\DLEwrite_wrap_count\CAN\EOT \SOH(\EOTR\SOwriteWrapCount\DC2+\n\
    \\DC1patches_succeeded\CAN\ENQ \SOH(\EOTR\DLEpatchesSucceeded\DC2%\n\
    \\SOpatches_failed\CAN\ACK \SOH(\EOTR\rpatchesFailed\DC21\n\
    \\DC4readaheads_succeeded\CAN\a \SOH(\EOTR\DC3readaheadsSucceeded\DC2+\n\
    \\DC1readaheads_failed\CAN\b \SOH(\EOTR\DLEreadaheadsFailed\DC2%\n\
    \\SOabi_violations\CAN\t \SOH(\EOTR\rabiViolations\DC27\n\
    \\CANtrace_writer_packet_loss\CAN\DC3 \SOH(\EOTR\NAKtraceWriterPacketLoss\SUB\186\SOH\n\
    \\vWriterStats\DC2\US\n\
    \\vsequence_id\CAN\SOH \SOH(\EOTR\n\
    \sequenceId\DC2G\n\
    \\RSchunk_payload_histogram_counts\CAN\STX \ETX(\EOTR\ESCchunkPayloadHistogramCountsB\STX\DLE\SOH\DC2A\n\
    \\ESCchunk_payload_histogram_sum\CAN\ETX \ETX(\ETXR\CANchunkPayloadHistogramSumB\STX\DLE\SOH\SUB\178\SOH\n\
    \\vFilterStats\DC2#\n\
    \\rinput_packets\CAN\SOH \SOH(\EOTR\finputPackets\DC2\US\n\
    \\vinput_bytes\CAN\STX \SOH(\EOTR\n\
    \inputBytes\DC2!\n\
    \\foutput_bytes\CAN\ETX \SOH(\EOTR\voutputBytes\DC2\SYN\n\
    \\ACKerrors\CAN\EOT \SOH(\EOTR\ACKerrors\DC2\"\n\
    \\rtime_taken_ns\CAN\ENQ \SOH(\EOTR\vtimeTakenNs\"c\n\
    \\DC1FinalFlushOutcome\DC2\ESC\n\
    \\ETBFINAL_FLUSH_UNSPECIFIED\DLE\NUL\DC2\EM\n\
    \\NAKFINAL_FLUSH_SUCCEEDED\DLE\SOH\DC2\SYN\n\
    \\DC2FINAL_FLUSH_FAILED\DLE\STXJ\189P\n\
    \\a\DC2\ENQ\DLE\NUL\215\SOH\SOH\n\
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
    \\b\n\
    \\SOH\STX\DC2\ETX\DC2\NUL\CAN\n\
    \R\n\
    \\STX\EOT\NUL\DC2\ENQ\ETB\NUL\215\SOH\SOH\SUBE Statistics for the internals of the tracing service.\n\
    \\n\
    \ Next id: 19.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\DC2\n\
    \7\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\ESC\STXx\ETX\SUB) From TraceBuffer::Stats.\n\
    \\n\
    \ Next id: 20.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\ESC\n\
    \\NAK\n\
    \6\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\GS\EOT%\SUB' Size of the circular buffer in bytes.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\GS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX\GS\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\GS\DC4\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\GS\"$\n\
    \V\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX \EOT&\SUBG Num. bytes written into the circular buffer, including chunk headers.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX \EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX \r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX \DC4!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX $%\n\
    \W\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX#\EOT+\SUBH Num. bytes overwritten before they have been read (i.e. loss of data).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX#\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX#\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX#\DC4%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX#(*\n\
    \\224\ACK\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETX3\EOT$\SUB\208\ACK Total size of chunks that were fully read from the circular buffer by the\n\
    \ consumer. This may not be equal to |bytes_written| either in the middle\n\
    \ of tracing, or if |chunks_overwritten| is non-zero. Note that this is the\n\
    \ size of the chunks read from the buffer, including chunk headers, which\n\
    \ will be different from the total size of packets returned to the\n\
    \ consumer.\n\
    \\n\
    \ The current utilization of the trace buffer (mid-tracing) can be obtained\n\
    \ by subtracting |bytes_read| and |bytes_overwritten| from |bytes_written|,\n\
    \ adding the difference of |padding_bytes_written| and\n\
    \ |padding_bytes_cleared|, and comparing this sum to the |buffer_size|.\n\
    \ Note that this represents the total size of buffered data in the buffer,\n\
    \ yet this data may be spread non-contiguously through the buffer and may\n\
    \ be overridden before the utilization reaches 100%.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\ETX3\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETX3\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX3\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX3!#\n\
    \b\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETX7\EOT/\SUBS Num. bytes that were allocated as padding between chunks in the circular\n\
    \ buffer.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\EOT\DC2\ETX7\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ENQ\DC2\ETX7\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETX7\DC4)\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETX7,.\n\
    \\129\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETX?\EOT/\SUB\241\SOH Num. of padding bytes that were removed from the circular buffer when\n\
    \ they were overwritten.\n\
    \\n\
    \ The difference between |padding_bytes_written| and\n\
    \ |padding_bytes_cleared| denotes the total size of padding currently\n\
    \ present in the buffer.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\EOT\DC2\ETX?\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ENQ\DC2\ETX?\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETX?\DC4)\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETX?,.\n\
    \B\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\ETXB\EOT'\SUB3 Num. chunks (!= packets) written into the buffer.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\EOT\DC2\ETXB\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ENQ\DC2\ETXB\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\ETXB\DC4\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\ETXB%&\n\
    \\152\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\a\DC2\ETXF\EOT*\SUB\136\SOH Num. chunks (!= packets) rewritten into the buffer. This means we rewrote\n\
    \ the same chunk with additional packets appended to the end.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\EOT\DC2\ETXF\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ENQ\DC2\ETXF\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\SOH\DC2\ETXF\DC4$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ETX\DC2\ETXF')\n\
    \X\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\b\DC2\ETXI\EOT+\SUBI Num. chunks overwritten before they have been read (i.e. loss of data).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\EOT\DC2\ETXI\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\ENQ\DC2\ETXI\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\SOH\DC2\ETXI\DC4&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\ETX\DC2\ETXI)*\n\
    \\132\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\t\DC2\ETXM\EOT*\SUBu Num. chunks discarded (i.e. loss of data). Can be > 0 only when a buffer\n\
    \ is configured with FillPolicy == DISCARD.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\EOT\DC2\ETXM\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\ENQ\DC2\ETXM\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\SOH\DC2\ETXM\DC4$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\ETX\DC2\ETXM')\n\
    \\222\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\n\
    \\DC2\ETXR\EOT%\SUB\206\SOH Num. chunks (!= packets) that were fully read from the circular buffer by\n\
    \ the consumer. This may not be equal to |chunks_written| either in the\n\
    \ middle of tracing, or if |chunks_overwritten| is non-zero.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\EOT\DC2\ETXR\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\ENQ\DC2\ETXR\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\SOH\DC2\ETXR\DC4\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\ETX\DC2\ETXR\"$\n\
    \>\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\v\DC2\ETXU\EOT7\SUB/ Num. chunks that were committed out of order.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\EOT\DC2\ETXU\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\ENQ\DC2\ETXU\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\SOH\DC2\ETXU\DC41\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\ETX\DC2\ETXU46\n\
    \;\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\f\DC2\ETXX\EOT)\SUB, Num. times the ring buffer wrapped around.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\f\EOT\DC2\ETXX\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\f\ENQ\DC2\ETXX\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\f\SOH\DC2\ETXX\DC4$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\f\ETX\DC2\ETXX'(\n\
    \?\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\r\DC2\ETX[\EOT*\SUB0 Num. out-of-band (OOB) patches that succeeded.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\r\EOT\DC2\ETX[\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\r\ENQ\DC2\ETX[\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\r\SOH\DC2\ETX[\DC4%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\r\ETX\DC2\ETX[()\n\
    \R\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SO\DC2\ETX^\EOT'\SUBC Num. OOB patches that failed (e.g., the chunk to patch was gone).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SO\EOT\DC2\ETX^\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SO\ENQ\DC2\ETX^\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SO\SOH\DC2\ETX^\DC4\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SO\ETX\DC2\ETX^%&\n\
    \q\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SI\DC2\ETXb\EOT-\SUBb Num. readaheads (for large multi-chunk packet reads) that ended up in a\n\
    \ successful packet read.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SI\EOT\DC2\ETXb\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SI\ENQ\DC2\ETXb\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SI\SOH\DC2\ETXb\DC4(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SI\ETX\DC2\ETXb+,\n\
    \\243\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\DLE\DC2\ETXi\EOT*\SUB\227\STX Num. readaheads aborted because of missing chunks in the sequence stream.\n\
    \ Note that a small number > 0 is totally expected: occasionally, when\n\
    \ issuing a read, the very last packet in a sequence might be incomplete\n\
    \ (because the producer is still writing it while we read). The read will\n\
    \ stop at that point, for that sequence, increasing this counter.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DLE\EOT\DC2\ETXi\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DLE\ENQ\DC2\ETXi\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DLE\SOH\DC2\ETXi\DC4%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DLE\ETX\DC2\ETXi()\n\
    \\187\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\DC1\DC2\ETXn\EOT'\SUB\171\SOH Num. of violations of the SharedMemoryABI found while writing or reading\n\
    \ the buffer. This is an indication of either a bug in the producer(s) or\n\
    \ malicious producer(s).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DC1\EOT\DC2\ETXn\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DC1\ENQ\DC2\ETXn\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DC1\SOH\DC2\ETXn\DC4\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DC1\ETX\DC2\ETXn%&\n\
    \\133\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\DC2\DC2\ETXw\EOT2\SUB\190\STX Num. of times the service detected packet loss on a trace writer\n\
    \ sequence. This is usually caused by exhaustion of available chunks in the\n\
    \ writer process's SMB. Note that this relies on the client's TraceWriter\n\
    \ indicating this loss to the service -- packets lost for other reasons are\n\
    \ not reflected in this stat.\n\
    \25 The fields below have been introduced in Android R.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DC2\EOT\DC2\ETXw\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DC2\ENQ\DC2\ETXw\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DC2\SOH\DC2\ETXw\DC4,\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\DC2\ETX\DC2\ETXw/1\n\
    \I\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX{\STX(\SUB< Stats for the TraceBuffer(s) of the current trace session.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX{\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX{\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX{\ETB#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX{&'\n\
    \\133\SOH\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\ENQ\DEL\STX\138\SOH\ETX\SUBv Per TraceWriter stat. Each {producer, trace writer} tuple is publicly\n\
    \ visible as a unique sequence ID in the trace.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX\DEL\n\
    \\NAK\n\
    \\139\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\EOT\130\SOH\EOT$\SUB{ This matches the TracePacket.trusted_packet_sequence_id and is used to\n\
    \ correlate the stats with the actual packet types.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\EOT\DC2\EOT\130\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\EOT\130\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\EOT\130\SOH\DC4\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\EOT\130\SOH\"#\n\
    \\253\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\EOT\136\SOH\EOTG\SUB\236\SOH These two arrays have the same cardinality and match the cardinality of\n\
    \ chunk_payload_histogram_def + 1 (for the overflow bucket, see below).\n\
    \ `sum` contains the SUM(entries) and `counts` contains the COUNT(entries)\n\
    \ for each bucket.\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\EOT\DC2\EOT\136\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\EOT\136\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\EOT\136\SOH\DC42\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\EOT\136\SOH56\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\b\DC2\EOT\136\SOH7F\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\SOH\STX\SOH\b\STX\DC2\EOT\136\SOH8E\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\EOT\137\SOH\EOTC\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\EOT\DC2\EOT\137\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ENQ\DC2\EOT\137\SOH\r\DC2\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\EOT\137\SOH\DC3.\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\EOT\137\SOH12\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\b\DC2\EOT\137\SOH3B\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\SOH\STX\STX\b\STX\DC2\EOT\137\SOH4A\n\
    \\146\EOT\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\EOT\148\SOH\STX2\SUB\131\EOT The thresholds of each the `writer_stats` histogram buckets. This is\n\
    \ emitted only once as all WriterStats share the same bucket layout.\n\
    \ This field has the same cardinality of the\n\
    \ `writer_stats.chunk_payload_histogram_{counts,sum}` - 1.\n\
    \ (The -1 is because the last overflow bucket is not reported in the _def).\n\
    \ An array of values [10, 100, 1000] in the _def array means that there are\n\
    \ four buckets (3 + the implicit overflow bucket):\n\
    \ [0]: x <= 10; [1]: 100 < x <= 1000; [2]: 1000 < x <= 1000; [3]: x > 1000.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\EOT\148\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\EOT\148\SOH\v\DLE\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\EOT\148\SOH\DC1,\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\EOT\148\SOH/1\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\STX\DC2\EOT\149\SOH\STX)\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\EOT\149\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\EOT\149\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\EOT\149\SOH\ETB#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\EOT\149\SOH&(\n\
    \l\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\EOT\153\SOH\STX*\SUB^ Num. producers connected (whether they are involved in the current tracing\n\
    \ session or not).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\EOT\153\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\EOT\153\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\EOT\153\SOH\DC2%\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\EOT\153\SOH()\n\
    \\146\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\EOT\157\SOH\STX%\SUB\131\SOH Num. producers ever seen for all trace sessions since startup (it's a good\n\
    \ proxy for inferring num. producers crashed / killed).\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\EOT\157\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\EOT\157\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\EOT\157\SOH\DC2 \n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\EOT\157\SOH#$\n\
    \D\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\EOT\160\SOH\STX.\SUB6 Num. data sources registered for all trace sessions.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\EOT\160\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\EOT\160\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\EOT\160\SOH\DC2)\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\EOT\160\SOH,-\n\
    \Q\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\EOT\163\SOH\STX(\SUBC Num. data sources ever seen for all trace sessions since startup.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\EOT\163\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\EOT\163\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\EOT\163\SOH\DC2#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\EOT\163\SOH&'\n\
    \:\n\
    \\EOT\EOT\NUL\STX\a\DC2\EOT\166\SOH\STX'\SUB, Num. concurrently active tracing sessions.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\EOT\166\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\EOT\166\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\EOT\166\SOH\DC2\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\EOT\166\SOH%&\n\
    \\174\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\EOT\171\SOH\STX$\SUB\159\SOH Num. buffers for all tracing session (not just the current one). This will\n\
    \ be >= buffer_stats.size(), because the latter is only about the current\n\
    \ session.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\EOT\171\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\EOT\171\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\EOT\171\SOH\DC2\US\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\EOT\171\SOH\"#\n\
    \\223\SOH\n\
    \\EOT\EOT\NUL\STX\t\DC2\EOT\177\SOH\STX'\SUB\153\SOH Num. chunks that were discarded by the service before attempting to commit\n\
    \ them to a buffer, e.g. because the producer specified an invalid buffer ID.\n\
    \25 The fields below have been introduced in Android Q.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\EOT\DC2\EOT\177\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ENQ\DC2\EOT\177\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\EOT\177\SOH\DC2\"\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\EOT\177\SOH%&\n\
    \\168\SOH\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\EOT\181\SOH\STX(\SUB\153\SOH Num. patches that were discarded by the service before attempting to apply\n\
    \ them to a buffer, e.g. because the producer specified an invalid buffer ID.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\EOT\DC2\EOT\181\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\EOT\181\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\EOT\181\SOH\DC2#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\EOT\181\SOH&'\n\
    \u\n\
    \\EOT\EOT\NUL\STX\v\DC2\EOT\185\SOH\STX'\SUBg Packets that failed validation of the TrustedPacket. If this is > 0, there\n\
    \ is a bug in the producer.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\EOT\DC2\EOT\185\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ENQ\DC2\EOT\185\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\EOT\185\SOH\DC2!\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\EOT\185\SOH$&\n\
    \P\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\ACK\188\SOH\STX\194\SOH\ETX\SUB@ This is set only when the TraceConfig specifies a TraceFilter.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\EOT\188\SOH\n\
    \\NAK\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\EOT\189\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\EOT\DC2\EOT\189\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\EOT\189\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\EOT\189\SOH\DC4!\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\EOT\189\SOH$%\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\EOT\190\SOH\EOT$\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\EOT\DC2\EOT\190\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\EOT\190\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\EOT\190\SOH\DC4\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\EOT\190\SOH\"#\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\EOT\191\SOH\EOT%\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\EOT\DC2\EOT\191\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ENQ\DC2\EOT\191\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\EOT\191\SOH\DC4 \n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\EOT\191\SOH#$\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\EOT\192\SOH\EOT\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\EOT\DC2\EOT\192\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ENQ\DC2\EOT\192\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\EOT\192\SOH\DC4\SUB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\EOT\192\SOH\GS\RS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\EOT\DC2\EOT\193\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\EOT\DC2\EOT\193\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ENQ\DC2\EOT\193\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\SOH\DC2\EOT\193\SOH\DC4!\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ETX\DC2\EOT\193\SOH$%\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\f\DC2\EOT\195\SOH\STX)\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\EOT\DC2\EOT\195\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\EOT\195\SOH\v\SYN\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\195\SOH\ETB#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\EOT\195\SOH&(\n\
    \\154\SOH\n\
    \\EOT\EOT\NUL\STX\r\DC2\EOT\199\SOH\STX)\SUB\139\SOH Count of Flush() requests (either from the Consumer, or self-induced\n\
    \ periodic flushes). The final Flush() is also included in the count.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\EOT\DC2\EOT\199\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ENQ\DC2\EOT\199\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\SOH\DC2\EOT\199\SOH\DC2#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\r\ETX\DC2\EOT\199\SOH&(\n\
    \\153\SOH\n\
    \\EOT\EOT\NUL\STX\SO\DC2\EOT\203\SOH\STX)\SUB\138\SOH The count of the Flush() requests that were completed successfully.\n\
    \ In a well behaving trace this should always be == `flush_requests`.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\EOT\DC2\EOT\203\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ENQ\DC2\EOT\203\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\SOH\DC2\EOT\203\SOH\DC2#\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SO\ETX\DC2\EOT\203\SOH&(\n\
    \\136\SOH\n\
    \\EOT\EOT\NUL\STX\SI\DC2\EOT\207\SOH\STX&\SUBz The count of the Flush() requests that failed (in most timed out).\n\
    \ In a well behaving trace this should always be == 0.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\EOT\DC2\EOT\207\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ENQ\DC2\EOT\207\SOH\v\DC1\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\SOH\DC2\EOT\207\SOH\DC2 \n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\SI\ETX\DC2\EOT\207\SOH#%\n\
    \\SO\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\ACK\209\SOH\STX\213\SOH\ETX\n\
    \\r\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\EOT\209\SOH\a\CAN\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\EOT\210\SOH\EOT \n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\EOT\210\SOH\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\EOT\210\SOH\RS\US\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\EOT\211\SOH\EOT\RS\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\EOT\211\SOH\EOT\EM\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\EOT\211\SOH\FS\GS\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\EOT\212\SOH\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\EOT\212\SOH\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\EOT\212\SOH\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\NUL\STX\DLE\DC2\EOT\214\SOH\STX6\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\EOT\DC2\EOT\214\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ACK\DC2\EOT\214\SOH\v\FS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\SOH\DC2\EOT\214\SOH\GS0\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\DLE\ETX\DC2\EOT\214\SOH35"