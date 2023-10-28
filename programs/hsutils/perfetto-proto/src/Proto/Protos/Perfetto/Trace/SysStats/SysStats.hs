{- This file was auto-generated from protos/perfetto/trace/sys_stats/sys_stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.SysStats.SysStats (
        SysStats(), SysStats'BuddyInfo(), SysStats'CpuTimes(),
        SysStats'DevfreqValue(), SysStats'DiskStat(),
        SysStats'InterruptCount(), SysStats'MeminfoValue(),
        SysStats'VmstatValue()
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
import qualified Proto.Protos.Perfetto.Common.SysStatsCounters
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.meminfo' @:: Lens' SysStats [SysStats'MeminfoValue]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'meminfo' @:: Lens' SysStats (Data.Vector.Vector SysStats'MeminfoValue)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vmstat' @:: Lens' SysStats [SysStats'VmstatValue]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'vmstat' @:: Lens' SysStats (Data.Vector.Vector SysStats'VmstatValue)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.cpuStat' @:: Lens' SysStats [SysStats'CpuTimes]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'cpuStat' @:: Lens' SysStats (Data.Vector.Vector SysStats'CpuTimes)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.numForks' @:: Lens' SysStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'numForks' @:: Lens' SysStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.numIrqTotal' @:: Lens' SysStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'numIrqTotal' @:: Lens' SysStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.numIrq' @:: Lens' SysStats [SysStats'InterruptCount]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'numIrq' @:: Lens' SysStats (Data.Vector.Vector SysStats'InterruptCount)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.numSoftirqTotal' @:: Lens' SysStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'numSoftirqTotal' @:: Lens' SysStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.numSoftirq' @:: Lens' SysStats [SysStats'InterruptCount]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'numSoftirq' @:: Lens' SysStats (Data.Vector.Vector SysStats'InterruptCount)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.collectionEndTimestamp' @:: Lens' SysStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'collectionEndTimestamp' @:: Lens' SysStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.devfreq' @:: Lens' SysStats [SysStats'DevfreqValue]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'devfreq' @:: Lens' SysStats (Data.Vector.Vector SysStats'DevfreqValue)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.cpufreqKhz' @:: Lens' SysStats [Data.Word.Word32]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'cpufreqKhz' @:: Lens' SysStats (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.buddyInfo' @:: Lens' SysStats [SysStats'BuddyInfo]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'buddyInfo' @:: Lens' SysStats (Data.Vector.Vector SysStats'BuddyInfo)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.diskStat' @:: Lens' SysStats [SysStats'DiskStat]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'diskStat' @:: Lens' SysStats (Data.Vector.Vector SysStats'DiskStat)@ -}
data SysStats
  = SysStats'_constructor {_SysStats'meminfo :: !(Data.Vector.Vector SysStats'MeminfoValue),
                           _SysStats'vmstat :: !(Data.Vector.Vector SysStats'VmstatValue),
                           _SysStats'cpuStat :: !(Data.Vector.Vector SysStats'CpuTimes),
                           _SysStats'numForks :: !(Prelude.Maybe Data.Word.Word64),
                           _SysStats'numIrqTotal :: !(Prelude.Maybe Data.Word.Word64),
                           _SysStats'numIrq :: !(Data.Vector.Vector SysStats'InterruptCount),
                           _SysStats'numSoftirqTotal :: !(Prelude.Maybe Data.Word.Word64),
                           _SysStats'numSoftirq :: !(Data.Vector.Vector SysStats'InterruptCount),
                           _SysStats'collectionEndTimestamp :: !(Prelude.Maybe Data.Word.Word64),
                           _SysStats'devfreq :: !(Data.Vector.Vector SysStats'DevfreqValue),
                           _SysStats'cpufreqKhz :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                           _SysStats'buddyInfo :: !(Data.Vector.Vector SysStats'BuddyInfo),
                           _SysStats'diskStat :: !(Data.Vector.Vector SysStats'DiskStat),
                           _SysStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SysStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SysStats "meminfo" [SysStats'MeminfoValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'meminfo (\ x__ y__ -> x__ {_SysStats'meminfo = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats "vec'meminfo" (Data.Vector.Vector SysStats'MeminfoValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'meminfo (\ x__ y__ -> x__ {_SysStats'meminfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "vmstat" [SysStats'VmstatValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'vmstat (\ x__ y__ -> x__ {_SysStats'vmstat = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats "vec'vmstat" (Data.Vector.Vector SysStats'VmstatValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'vmstat (\ x__ y__ -> x__ {_SysStats'vmstat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "cpuStat" [SysStats'CpuTimes] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'cpuStat (\ x__ y__ -> x__ {_SysStats'cpuStat = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats "vec'cpuStat" (Data.Vector.Vector SysStats'CpuTimes) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'cpuStat (\ x__ y__ -> x__ {_SysStats'cpuStat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "numForks" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numForks (\ x__ y__ -> x__ {_SysStats'numForks = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats "maybe'numForks" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numForks (\ x__ y__ -> x__ {_SysStats'numForks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "numIrqTotal" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numIrqTotal
           (\ x__ y__ -> x__ {_SysStats'numIrqTotal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats "maybe'numIrqTotal" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numIrqTotal
           (\ x__ y__ -> x__ {_SysStats'numIrqTotal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "numIrq" [SysStats'InterruptCount] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numIrq (\ x__ y__ -> x__ {_SysStats'numIrq = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats "vec'numIrq" (Data.Vector.Vector SysStats'InterruptCount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numIrq (\ x__ y__ -> x__ {_SysStats'numIrq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "numSoftirqTotal" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numSoftirqTotal
           (\ x__ y__ -> x__ {_SysStats'numSoftirqTotal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats "maybe'numSoftirqTotal" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numSoftirqTotal
           (\ x__ y__ -> x__ {_SysStats'numSoftirqTotal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "numSoftirq" [SysStats'InterruptCount] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numSoftirq
           (\ x__ y__ -> x__ {_SysStats'numSoftirq = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats "vec'numSoftirq" (Data.Vector.Vector SysStats'InterruptCount) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'numSoftirq
           (\ x__ y__ -> x__ {_SysStats'numSoftirq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "collectionEndTimestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'collectionEndTimestamp
           (\ x__ y__ -> x__ {_SysStats'collectionEndTimestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats "maybe'collectionEndTimestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'collectionEndTimestamp
           (\ x__ y__ -> x__ {_SysStats'collectionEndTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "devfreq" [SysStats'DevfreqValue] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'devfreq (\ x__ y__ -> x__ {_SysStats'devfreq = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats "vec'devfreq" (Data.Vector.Vector SysStats'DevfreqValue) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'devfreq (\ x__ y__ -> x__ {_SysStats'devfreq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "cpufreqKhz" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'cpufreqKhz
           (\ x__ y__ -> x__ {_SysStats'cpufreqKhz = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats "vec'cpufreqKhz" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'cpufreqKhz
           (\ x__ y__ -> x__ {_SysStats'cpufreqKhz = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "buddyInfo" [SysStats'BuddyInfo] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'buddyInfo (\ x__ y__ -> x__ {_SysStats'buddyInfo = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats "vec'buddyInfo" (Data.Vector.Vector SysStats'BuddyInfo) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'buddyInfo (\ x__ y__ -> x__ {_SysStats'buddyInfo = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats "diskStat" [SysStats'DiskStat] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'diskStat (\ x__ y__ -> x__ {_SysStats'diskStat = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats "vec'diskStat" (Data.Vector.Vector SysStats'DiskStat) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'diskStat (\ x__ y__ -> x__ {_SysStats'diskStat = y__}))
        Prelude.id
instance Data.ProtoLens.Message SysStats where
  messageName _ = Data.Text.pack "perfetto.protos.SysStats"
  packedMessageDescriptor _
    = "\n\
      \\bSysStats\DC2@\n\
      \\ameminfo\CAN\SOH \ETX(\v2&.perfetto.protos.SysStats.MeminfoValueR\ameminfo\DC2=\n\
      \\ACKvmstat\CAN\STX \ETX(\v2%.perfetto.protos.SysStats.VmstatValueR\ACKvmstat\DC2=\n\
      \\bcpu_stat\CAN\ETX \ETX(\v2\".perfetto.protos.SysStats.CpuTimesR\acpuStat\DC2\ESC\n\
      \\tnum_forks\CAN\EOT \SOH(\EOTR\bnumForks\DC2\"\n\
      \\rnum_irq_total\CAN\ENQ \SOH(\EOTR\vnumIrqTotal\DC2A\n\
      \\anum_irq\CAN\ACK \ETX(\v2(.perfetto.protos.SysStats.InterruptCountR\ACKnumIrq\DC2*\n\
      \\DC1num_softirq_total\CAN\a \SOH(\EOTR\SInumSoftirqTotal\DC2I\n\
      \\vnum_softirq\CAN\b \ETX(\v2(.perfetto.protos.SysStats.InterruptCountR\n\
      \numSoftirq\DC28\n\
      \\CANcollection_end_timestamp\CAN\t \SOH(\EOTR\SYNcollectionEndTimestamp\DC2@\n\
      \\adevfreq\CAN\n\
      \ \ETX(\v2&.perfetto.protos.SysStats.DevfreqValueR\adevfreq\DC2\US\n\
      \\vcpufreq_khz\CAN\v \ETX(\rR\n\
      \cpufreqKhz\DC2B\n\
      \\n\
      \buddy_info\CAN\f \ETX(\v2#.perfetto.protos.SysStats.BuddyInfoR\tbuddyInfo\DC2?\n\
      \\tdisk_stat\CAN\r \ETX(\v2\".perfetto.protos.SysStats.DiskStatR\bdiskStat\SUBX\n\
      \\fMeminfoValue\DC22\n\
      \\ETXkey\CAN\SOH \SOH(\SO2 .perfetto.protos.MeminfoCountersR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue\SUBV\n\
      \\vVmstatValue\DC21\n\
      \\ETXkey\CAN\SOH \SOH(\SO2\US.perfetto.protos.VmstatCountersR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue\SUB\239\SOH\n\
      \\bCpuTimes\DC2\NAK\n\
      \\ACKcpu_id\CAN\SOH \SOH(\rR\ENQcpuId\DC2\ETB\n\
      \\auser_ns\CAN\STX \SOH(\EOTR\ACKuserNs\DC2 \n\
      \\fuser_nice_ns\CAN\ETX \SOH(\EOTR\n\
      \userNiceNs\DC2$\n\
      \\SOsystem_mode_ns\CAN\EOT \SOH(\EOTR\fsystemModeNs\DC2\ETB\n\
      \\aidle_ns\CAN\ENQ \SOH(\EOTR\ACKidleNs\DC2\FS\n\
      \\n\
      \io_wait_ns\CAN\ACK \SOH(\EOTR\bioWaitNs\DC2\NAK\n\
      \\ACKirq_ns\CAN\a \SOH(\EOTR\ENQirqNs\DC2\GS\n\
      \\n\
      \softirq_ns\CAN\b \SOH(\EOTR\tsoftirqNs\SUB8\n\
      \\SOInterruptCount\DC2\DLE\n\
      \\ETXirq\CAN\SOH \SOH(\ENQR\ETXirq\DC2\DC4\n\
      \\ENQcount\CAN\STX \SOH(\EOTR\ENQcount\SUB6\n\
      \\fDevfreqValue\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue\SUBT\n\
      \\tBuddyInfo\DC2\DC2\n\
      \\EOTnode\CAN\SOH \SOH(\tR\EOTnode\DC2\DC2\n\
      \\EOTzone\CAN\STX \SOH(\tR\EOTzone\DC2\US\n\
      \\vorder_pages\CAN\ETX \ETX(\rR\n\
      \orderPages\SUB\207\STX\n\
      \\bDiskStat\DC2\US\n\
      \\vdevice_name\CAN\SOH \SOH(\tR\n\
      \deviceName\DC2!\n\
      \\fread_sectors\CAN\STX \SOH(\EOTR\vreadSectors\DC2 \n\
      \\fread_time_ms\CAN\ETX \SOH(\EOTR\n\
      \readTimeMs\DC2#\n\
      \\rwrite_sectors\CAN\EOT \SOH(\EOTR\fwriteSectors\DC2\"\n\
      \\rwrite_time_ms\CAN\ENQ \SOH(\EOTR\vwriteTimeMs\DC2'\n\
      \\SIdiscard_sectors\CAN\ACK \SOH(\EOTR\SOdiscardSectors\DC2&\n\
      \\SIdiscard_time_ms\CAN\a \SOH(\EOTR\rdiscardTimeMs\DC2\US\n\
      \\vflush_count\CAN\b \SOH(\EOTR\n\
      \flushCount\DC2\"\n\
      \\rflush_time_ms\CAN\t \SOH(\EOTR\vflushTimeMs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        meminfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "meminfo"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SysStats'MeminfoValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"meminfo")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        vmstat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vmstat"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SysStats'VmstatValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"vmstat")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        cpuStat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_stat"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SysStats'CpuTimes)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"cpuStat")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        numForks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_forks"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numForks")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        numIrqTotal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_irq_total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numIrqTotal")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        numIrq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_irq"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SysStats'InterruptCount)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"numIrq")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        numSoftirqTotal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_softirq_total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numSoftirqTotal")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        numSoftirq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_softirq"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SysStats'InterruptCount)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"numSoftirq")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        collectionEndTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "collection_end_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'collectionEndTimestamp")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        devfreq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "devfreq"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SysStats'DevfreqValue)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"devfreq")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        cpufreqKhz__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpufreq_khz"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"cpufreqKhz")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        buddyInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "buddy_info"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SysStats'BuddyInfo)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"buddyInfo")) ::
              Data.ProtoLens.FieldDescriptor SysStats
        diskStat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "disk_stat"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor SysStats'DiskStat)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"diskStat")) ::
              Data.ProtoLens.FieldDescriptor SysStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, meminfo__field_descriptor),
           (Data.ProtoLens.Tag 2, vmstat__field_descriptor),
           (Data.ProtoLens.Tag 3, cpuStat__field_descriptor),
           (Data.ProtoLens.Tag 4, numForks__field_descriptor),
           (Data.ProtoLens.Tag 5, numIrqTotal__field_descriptor),
           (Data.ProtoLens.Tag 6, numIrq__field_descriptor),
           (Data.ProtoLens.Tag 7, numSoftirqTotal__field_descriptor),
           (Data.ProtoLens.Tag 8, numSoftirq__field_descriptor),
           (Data.ProtoLens.Tag 9, collectionEndTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 10, devfreq__field_descriptor),
           (Data.ProtoLens.Tag 11, cpufreqKhz__field_descriptor),
           (Data.ProtoLens.Tag 12, buddyInfo__field_descriptor),
           (Data.ProtoLens.Tag 13, diskStat__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SysStats'_unknownFields
        (\ x__ y__ -> x__ {_SysStats'_unknownFields = y__})
  defMessage
    = SysStats'_constructor
        {_SysStats'meminfo = Data.Vector.Generic.empty,
         _SysStats'vmstat = Data.Vector.Generic.empty,
         _SysStats'cpuStat = Data.Vector.Generic.empty,
         _SysStats'numForks = Prelude.Nothing,
         _SysStats'numIrqTotal = Prelude.Nothing,
         _SysStats'numIrq = Data.Vector.Generic.empty,
         _SysStats'numSoftirqTotal = Prelude.Nothing,
         _SysStats'numSoftirq = Data.Vector.Generic.empty,
         _SysStats'collectionEndTimestamp = Prelude.Nothing,
         _SysStats'devfreq = Data.Vector.Generic.empty,
         _SysStats'cpufreqKhz = Data.Vector.Generic.empty,
         _SysStats'buddyInfo = Data.Vector.Generic.empty,
         _SysStats'diskStat = Data.Vector.Generic.empty,
         _SysStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SysStats
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SysStats'BuddyInfo
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SysStats'CpuTimes
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SysStats'DevfreqValue
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SysStats'DiskStat
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SysStats'MeminfoValue
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SysStats'InterruptCount
                               -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SysStats'InterruptCount
                                  -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld SysStats'VmstatValue
                                     -> Data.ProtoLens.Encoding.Bytes.Parser SysStats
        loop
          x
          mutable'buddyInfo
          mutable'cpuStat
          mutable'cpufreqKhz
          mutable'devfreq
          mutable'diskStat
          mutable'meminfo
          mutable'numIrq
          mutable'numSoftirq
          mutable'vmstat
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'buddyInfo <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'buddyInfo)
                      frozen'cpuStat <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'cpuStat)
                      frozen'cpufreqKhz <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'cpufreqKhz)
                      frozen'devfreq <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'devfreq)
                      frozen'diskStat <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'diskStat)
                      frozen'meminfo <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                             mutable'meminfo)
                      frozen'numIrq <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'numIrq)
                      frozen'numSoftirq <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'numSoftirq)
                      frozen'vmstat <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'vmstat)
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
                              (Data.ProtoLens.Field.field @"vec'buddyInfo") frozen'buddyInfo
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'cpuStat") frozen'cpuStat
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'cpufreqKhz") frozen'cpufreqKhz
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'devfreq") frozen'devfreq
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'diskStat")
                                          frozen'diskStat
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'meminfo")
                                             frozen'meminfo
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"vec'numIrq")
                                                frozen'numIrq
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field @"vec'numSoftirq")
                                                   frozen'numSoftirq
                                                   (Lens.Family2.set
                                                      (Data.ProtoLens.Field.field @"vec'vmstat")
                                                      frozen'vmstat x))))))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "meminfo"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'meminfo y)
                                loop
                                  x mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq mutable'diskStat v mutable'numIrq
                                  mutable'numSoftirq mutable'vmstat
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "vmstat"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'vmstat y)
                                loop
                                  x mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq mutable'diskStat mutable'meminfo mutable'numIrq
                                  mutable'numSoftirq v
                        26
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "cpu_stat"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'cpuStat y)
                                loop
                                  x mutable'buddyInfo v mutable'cpufreqKhz mutable'devfreq
                                  mutable'diskStat mutable'meminfo mutable'numIrq mutable'numSoftirq
                                  mutable'vmstat
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "num_forks"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numForks") y x)
                                  mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq mutable'diskStat mutable'meminfo mutable'numIrq
                                  mutable'numSoftirq mutable'vmstat
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "num_irq_total"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numIrqTotal") y x)
                                  mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq mutable'diskStat mutable'meminfo mutable'numIrq
                                  mutable'numSoftirq mutable'vmstat
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "num_irq"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'numIrq y)
                                loop
                                  x mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq mutable'diskStat mutable'meminfo v
                                  mutable'numSoftirq mutable'vmstat
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "num_softirq_total"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"numSoftirqTotal") y x)
                                  mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq mutable'diskStat mutable'meminfo mutable'numIrq
                                  mutable'numSoftirq mutable'vmstat
                        66
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "num_softirq"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'numSoftirq y)
                                loop
                                  x mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq mutable'diskStat mutable'meminfo mutable'numIrq v
                                  mutable'vmstat
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt
                                       "collection_end_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"collectionEndTimestamp") y x)
                                  mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq mutable'diskStat mutable'meminfo mutable'numIrq
                                  mutable'numSoftirq mutable'vmstat
                        82
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "devfreq"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'devfreq y)
                                loop
                                  x mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz v
                                  mutable'diskStat mutable'meminfo mutable'numIrq mutable'numSoftirq
                                  mutable'vmstat
                        88
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "cpufreq_khz"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'cpufreqKhz y)
                                loop
                                  x mutable'buddyInfo mutable'cpuStat v mutable'devfreq
                                  mutable'diskStat mutable'meminfo mutable'numIrq mutable'numSoftirq
                                  mutable'vmstat
                        90
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
                                                                    "cpufreq_khz"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'cpufreqKhz)
                                loop
                                  x mutable'buddyInfo mutable'cpuStat y mutable'devfreq
                                  mutable'diskStat mutable'meminfo mutable'numIrq mutable'numSoftirq
                                  mutable'vmstat
                        98
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "buddy_info"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'buddyInfo y)
                                loop
                                  x v mutable'cpuStat mutable'cpufreqKhz mutable'devfreq
                                  mutable'diskStat mutable'meminfo mutable'numIrq mutable'numSoftirq
                                  mutable'vmstat
                        106
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "disk_stat"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'diskStat y)
                                loop
                                  x mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq v mutable'meminfo mutable'numIrq
                                  mutable'numSoftirq mutable'vmstat
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'buddyInfo mutable'cpuStat mutable'cpufreqKhz
                                  mutable'devfreq mutable'diskStat mutable'meminfo mutable'numIrq
                                  mutable'numSoftirq mutable'vmstat
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'buddyInfo <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'cpuStat <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'cpufreqKhz <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'devfreq <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'diskStat <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'meminfo <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                   Data.ProtoLens.Encoding.Growing.new
              mutable'numIrq <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'numSoftirq <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'vmstat <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'buddyInfo mutable'cpuStat
                mutable'cpufreqKhz mutable'devfreq mutable'diskStat mutable'meminfo
                mutable'numIrq mutable'numSoftirq mutable'vmstat)
          "SysStats"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'meminfo") _x))
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'vmstat") _x))
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
                      (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'cpuStat") _x))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'numForks") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'numIrqTotal") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               (\ _v
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.ProtoLens.encodeMessage _v))
                               (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'numIrq") _x))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'numSoftirqTotal") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                     (\ _v
                                        -> (Data.Monoid.<>)
                                             (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                             ((Prelude..)
                                                (\ bs
                                                   -> (Data.Monoid.<>)
                                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                           (Prelude.fromIntegral
                                                              (Data.ByteString.length bs)))
                                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                Data.ProtoLens.encodeMessage _v))
                                     (Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'numSoftirq") _x))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field
                                               @"maybe'collectionEndTimestamp")
                                            _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     ((Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                           (\ _v
                                              -> (Data.Monoid.<>)
                                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                   ((Prelude..)
                                                      (\ bs
                                                         -> (Data.Monoid.<>)
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 (Prelude.fromIntegral
                                                                    (Data.ByteString.length bs)))
                                                              (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                 bs))
                                                      Data.ProtoLens.encodeMessage _v))
                                           (Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"vec'devfreq") _x))
                                        ((Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                              (\ _v
                                                 -> (Data.Monoid.<>)
                                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                                                      ((Prelude..)
                                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                                         Prelude.fromIntegral _v))
                                              (Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"vec'cpufreqKhz") _x))
                                           ((Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                 (\ _v
                                                    -> (Data.Monoid.<>)
                                                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                            98)
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
                                                    (Data.ProtoLens.Field.field @"vec'buddyInfo")
                                                    _x))
                                              ((Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    (\ _v
                                                       -> (Data.Monoid.<>)
                                                            (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                               106)
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
                                                       (Data.ProtoLens.Field.field @"vec'diskStat")
                                                       _x))
                                                 (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                    (Lens.Family2.view
                                                       Data.ProtoLens.unknownFields _x))))))))))))))
instance Control.DeepSeq.NFData SysStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SysStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SysStats'meminfo x__)
                (Control.DeepSeq.deepseq
                   (_SysStats'vmstat x__)
                   (Control.DeepSeq.deepseq
                      (_SysStats'cpuStat x__)
                      (Control.DeepSeq.deepseq
                         (_SysStats'numForks x__)
                         (Control.DeepSeq.deepseq
                            (_SysStats'numIrqTotal x__)
                            (Control.DeepSeq.deepseq
                               (_SysStats'numIrq x__)
                               (Control.DeepSeq.deepseq
                                  (_SysStats'numSoftirqTotal x__)
                                  (Control.DeepSeq.deepseq
                                     (_SysStats'numSoftirq x__)
                                     (Control.DeepSeq.deepseq
                                        (_SysStats'collectionEndTimestamp x__)
                                        (Control.DeepSeq.deepseq
                                           (_SysStats'devfreq x__)
                                           (Control.DeepSeq.deepseq
                                              (_SysStats'cpufreqKhz x__)
                                              (Control.DeepSeq.deepseq
                                                 (_SysStats'buddyInfo x__)
                                                 (Control.DeepSeq.deepseq
                                                    (_SysStats'diskStat x__) ())))))))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.node' @:: Lens' SysStats'BuddyInfo Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'node' @:: Lens' SysStats'BuddyInfo (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.zone' @:: Lens' SysStats'BuddyInfo Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'zone' @:: Lens' SysStats'BuddyInfo (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.orderPages' @:: Lens' SysStats'BuddyInfo [Data.Word.Word32]@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.vec'orderPages' @:: Lens' SysStats'BuddyInfo (Data.Vector.Unboxed.Vector Data.Word.Word32)@ -}
data SysStats'BuddyInfo
  = SysStats'BuddyInfo'_constructor {_SysStats'BuddyInfo'node :: !(Prelude.Maybe Data.Text.Text),
                                     _SysStats'BuddyInfo'zone :: !(Prelude.Maybe Data.Text.Text),
                                     _SysStats'BuddyInfo'orderPages :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                     _SysStats'BuddyInfo'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SysStats'BuddyInfo where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SysStats'BuddyInfo "node" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'BuddyInfo'node
           (\ x__ y__ -> x__ {_SysStats'BuddyInfo'node = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'BuddyInfo "maybe'node" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'BuddyInfo'node
           (\ x__ y__ -> x__ {_SysStats'BuddyInfo'node = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'BuddyInfo "zone" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'BuddyInfo'zone
           (\ x__ y__ -> x__ {_SysStats'BuddyInfo'zone = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'BuddyInfo "maybe'zone" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'BuddyInfo'zone
           (\ x__ y__ -> x__ {_SysStats'BuddyInfo'zone = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'BuddyInfo "orderPages" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'BuddyInfo'orderPages
           (\ x__ y__ -> x__ {_SysStats'BuddyInfo'orderPages = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField SysStats'BuddyInfo "vec'orderPages" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'BuddyInfo'orderPages
           (\ x__ y__ -> x__ {_SysStats'BuddyInfo'orderPages = y__}))
        Prelude.id
instance Data.ProtoLens.Message SysStats'BuddyInfo where
  messageName _ = Data.Text.pack "perfetto.protos.SysStats.BuddyInfo"
  packedMessageDescriptor _
    = "\n\
      \\tBuddyInfo\DC2\DC2\n\
      \\EOTnode\CAN\SOH \SOH(\tR\EOTnode\DC2\DC2\n\
      \\EOTzone\CAN\STX \SOH(\tR\EOTzone\DC2\US\n\
      \\vorder_pages\CAN\ETX \ETX(\rR\n\
      \orderPages"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        node__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "node"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'node")) ::
              Data.ProtoLens.FieldDescriptor SysStats'BuddyInfo
        zone__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zone"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'zone")) ::
              Data.ProtoLens.FieldDescriptor SysStats'BuddyInfo
        orderPages__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "order_pages"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"orderPages")) ::
              Data.ProtoLens.FieldDescriptor SysStats'BuddyInfo
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, node__field_descriptor),
           (Data.ProtoLens.Tag 2, zone__field_descriptor),
           (Data.ProtoLens.Tag 3, orderPages__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SysStats'BuddyInfo'_unknownFields
        (\ x__ y__ -> x__ {_SysStats'BuddyInfo'_unknownFields = y__})
  defMessage
    = SysStats'BuddyInfo'_constructor
        {_SysStats'BuddyInfo'node = Prelude.Nothing,
         _SysStats'BuddyInfo'zone = Prelude.Nothing,
         _SysStats'BuddyInfo'orderPages = Data.Vector.Generic.empty,
         _SysStats'BuddyInfo'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SysStats'BuddyInfo
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
             -> Data.ProtoLens.Encoding.Bytes.Parser SysStats'BuddyInfo
        loop x mutable'orderPages
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'orderPages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'orderPages)
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
                              (Data.ProtoLens.Field.field @"vec'orderPages") frozen'orderPages
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "node"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"node") y x)
                                  mutable'orderPages
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "zone"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"zone") y x)
                                  mutable'orderPages
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "order_pages"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'orderPages y)
                                loop x v
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
                                                                    "order_pages"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'orderPages)
                                loop x y
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'orderPages
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'orderPages <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'orderPages)
          "BuddyInfo"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'node") _x
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
                          Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'zone") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                      (\ _v
                         -> (Data.Monoid.<>)
                              (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                              ((Prelude..)
                                 Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'orderPages") _x))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData SysStats'BuddyInfo where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SysStats'BuddyInfo'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SysStats'BuddyInfo'node x__)
                (Control.DeepSeq.deepseq
                   (_SysStats'BuddyInfo'zone x__)
                   (Control.DeepSeq.deepseq (_SysStats'BuddyInfo'orderPages x__) ())))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.cpuId' @:: Lens' SysStats'CpuTimes Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'cpuId' @:: Lens' SysStats'CpuTimes (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.userNs' @:: Lens' SysStats'CpuTimes Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'userNs' @:: Lens' SysStats'CpuTimes (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.userNiceNs' @:: Lens' SysStats'CpuTimes Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'userNiceNs' @:: Lens' SysStats'CpuTimes (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.systemModeNs' @:: Lens' SysStats'CpuTimes Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'systemModeNs' @:: Lens' SysStats'CpuTimes (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.idleNs' @:: Lens' SysStats'CpuTimes Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'idleNs' @:: Lens' SysStats'CpuTimes (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.ioWaitNs' @:: Lens' SysStats'CpuTimes Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'ioWaitNs' @:: Lens' SysStats'CpuTimes (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.irqNs' @:: Lens' SysStats'CpuTimes Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'irqNs' @:: Lens' SysStats'CpuTimes (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.softirqNs' @:: Lens' SysStats'CpuTimes Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'softirqNs' @:: Lens' SysStats'CpuTimes (Prelude.Maybe Data.Word.Word64)@ -}
data SysStats'CpuTimes
  = SysStats'CpuTimes'_constructor {_SysStats'CpuTimes'cpuId :: !(Prelude.Maybe Data.Word.Word32),
                                    _SysStats'CpuTimes'userNs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'CpuTimes'userNiceNs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'CpuTimes'systemModeNs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'CpuTimes'idleNs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'CpuTimes'ioWaitNs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'CpuTimes'irqNs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'CpuTimes'softirqNs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'CpuTimes'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SysStats'CpuTimes where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "cpuId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'cpuId
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'cpuId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "maybe'cpuId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'cpuId
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'cpuId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "userNs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'userNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'userNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "maybe'userNs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'userNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'userNs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "userNiceNs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'userNiceNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'userNiceNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "maybe'userNiceNs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'userNiceNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'userNiceNs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "systemModeNs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'systemModeNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'systemModeNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "maybe'systemModeNs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'systemModeNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'systemModeNs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "idleNs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'idleNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'idleNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "maybe'idleNs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'idleNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'idleNs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "ioWaitNs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'ioWaitNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'ioWaitNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "maybe'ioWaitNs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'ioWaitNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'ioWaitNs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "irqNs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'irqNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'irqNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "maybe'irqNs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'irqNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'irqNs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "softirqNs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'softirqNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'softirqNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'CpuTimes "maybe'softirqNs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'CpuTimes'softirqNs
           (\ x__ y__ -> x__ {_SysStats'CpuTimes'softirqNs = y__}))
        Prelude.id
instance Data.ProtoLens.Message SysStats'CpuTimes where
  messageName _ = Data.Text.pack "perfetto.protos.SysStats.CpuTimes"
  packedMessageDescriptor _
    = "\n\
      \\bCpuTimes\DC2\NAK\n\
      \\ACKcpu_id\CAN\SOH \SOH(\rR\ENQcpuId\DC2\ETB\n\
      \\auser_ns\CAN\STX \SOH(\EOTR\ACKuserNs\DC2 \n\
      \\fuser_nice_ns\CAN\ETX \SOH(\EOTR\n\
      \userNiceNs\DC2$\n\
      \\SOsystem_mode_ns\CAN\EOT \SOH(\EOTR\fsystemModeNs\DC2\ETB\n\
      \\aidle_ns\CAN\ENQ \SOH(\EOTR\ACKidleNs\DC2\FS\n\
      \\n\
      \io_wait_ns\CAN\ACK \SOH(\EOTR\bioWaitNs\DC2\NAK\n\
      \\ACKirq_ns\CAN\a \SOH(\EOTR\ENQirqNs\DC2\GS\n\
      \\n\
      \softirq_ns\CAN\b \SOH(\EOTR\tsoftirqNs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cpuId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpuId")) ::
              Data.ProtoLens.FieldDescriptor SysStats'CpuTimes
        userNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'userNs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'CpuTimes
        userNiceNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "user_nice_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'userNiceNs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'CpuTimes
        systemModeNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "system_mode_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'systemModeNs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'CpuTimes
        idleNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "idle_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'idleNs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'CpuTimes
        ioWaitNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "io_wait_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ioWaitNs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'CpuTimes
        irqNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "irq_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'irqNs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'CpuTimes
        softirqNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "softirq_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'softirqNs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'CpuTimes
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cpuId__field_descriptor),
           (Data.ProtoLens.Tag 2, userNs__field_descriptor),
           (Data.ProtoLens.Tag 3, userNiceNs__field_descriptor),
           (Data.ProtoLens.Tag 4, systemModeNs__field_descriptor),
           (Data.ProtoLens.Tag 5, idleNs__field_descriptor),
           (Data.ProtoLens.Tag 6, ioWaitNs__field_descriptor),
           (Data.ProtoLens.Tag 7, irqNs__field_descriptor),
           (Data.ProtoLens.Tag 8, softirqNs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SysStats'CpuTimes'_unknownFields
        (\ x__ y__ -> x__ {_SysStats'CpuTimes'_unknownFields = y__})
  defMessage
    = SysStats'CpuTimes'_constructor
        {_SysStats'CpuTimes'cpuId = Prelude.Nothing,
         _SysStats'CpuTimes'userNs = Prelude.Nothing,
         _SysStats'CpuTimes'userNiceNs = Prelude.Nothing,
         _SysStats'CpuTimes'systemModeNs = Prelude.Nothing,
         _SysStats'CpuTimes'idleNs = Prelude.Nothing,
         _SysStats'CpuTimes'ioWaitNs = Prelude.Nothing,
         _SysStats'CpuTimes'irqNs = Prelude.Nothing,
         _SysStats'CpuTimes'softirqNs = Prelude.Nothing,
         _SysStats'CpuTimes'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SysStats'CpuTimes
          -> Data.ProtoLens.Encoding.Bytes.Parser SysStats'CpuTimes
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
                                       "cpu_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpuId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "user_ns"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"userNs") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "user_nice_ns"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"userNiceNs") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "system_mode_ns"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"systemModeNs") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "idle_ns"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"idleNs") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "io_wait_ns"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ioWaitNs") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "irq_ns"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"irqNs") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "softirq_ns"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"softirqNs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "CpuTimes"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'cpuId") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'userNs") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'userNiceNs") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'systemModeNs") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'idleNs") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'ioWaitNs") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'irqNs") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'softirqNs") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData SysStats'CpuTimes where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SysStats'CpuTimes'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SysStats'CpuTimes'cpuId x__)
                (Control.DeepSeq.deepseq
                   (_SysStats'CpuTimes'userNs x__)
                   (Control.DeepSeq.deepseq
                      (_SysStats'CpuTimes'userNiceNs x__)
                      (Control.DeepSeq.deepseq
                         (_SysStats'CpuTimes'systemModeNs x__)
                         (Control.DeepSeq.deepseq
                            (_SysStats'CpuTimes'idleNs x__)
                            (Control.DeepSeq.deepseq
                               (_SysStats'CpuTimes'ioWaitNs x__)
                               (Control.DeepSeq.deepseq
                                  (_SysStats'CpuTimes'irqNs x__)
                                  (Control.DeepSeq.deepseq
                                     (_SysStats'CpuTimes'softirqNs x__) ()))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.key' @:: Lens' SysStats'DevfreqValue Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'key' @:: Lens' SysStats'DevfreqValue (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.value' @:: Lens' SysStats'DevfreqValue Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'value' @:: Lens' SysStats'DevfreqValue (Prelude.Maybe Data.Word.Word64)@ -}
data SysStats'DevfreqValue
  = SysStats'DevfreqValue'_constructor {_SysStats'DevfreqValue'key :: !(Prelude.Maybe Data.Text.Text),
                                        _SysStats'DevfreqValue'value :: !(Prelude.Maybe Data.Word.Word64),
                                        _SysStats'DevfreqValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SysStats'DevfreqValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SysStats'DevfreqValue "key" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DevfreqValue'key
           (\ x__ y__ -> x__ {_SysStats'DevfreqValue'key = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DevfreqValue "maybe'key" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DevfreqValue'key
           (\ x__ y__ -> x__ {_SysStats'DevfreqValue'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'DevfreqValue "value" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DevfreqValue'value
           (\ x__ y__ -> x__ {_SysStats'DevfreqValue'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DevfreqValue "maybe'value" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DevfreqValue'value
           (\ x__ y__ -> x__ {_SysStats'DevfreqValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message SysStats'DevfreqValue where
  messageName _
    = Data.Text.pack "perfetto.protos.SysStats.DevfreqValue"
  packedMessageDescriptor _
    = "\n\
      \\fDevfreqValue\DC2\DLE\n\
      \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DevfreqValue
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DevfreqValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SysStats'DevfreqValue'_unknownFields
        (\ x__ y__ -> x__ {_SysStats'DevfreqValue'_unknownFields = y__})
  defMessage
    = SysStats'DevfreqValue'_constructor
        {_SysStats'DevfreqValue'key = Prelude.Nothing,
         _SysStats'DevfreqValue'value = Prelude.Nothing,
         _SysStats'DevfreqValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SysStats'DevfreqValue
          -> Data.ProtoLens.Encoding.Bytes.Parser SysStats'DevfreqValue
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DevfreqValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'key") _x
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
                          Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SysStats'DevfreqValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SysStats'DevfreqValue'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SysStats'DevfreqValue'key x__)
                (Control.DeepSeq.deepseq (_SysStats'DevfreqValue'value x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.deviceName' @:: Lens' SysStats'DiskStat Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'deviceName' @:: Lens' SysStats'DiskStat (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.readSectors' @:: Lens' SysStats'DiskStat Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'readSectors' @:: Lens' SysStats'DiskStat (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.readTimeMs' @:: Lens' SysStats'DiskStat Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'readTimeMs' @:: Lens' SysStats'DiskStat (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.writeSectors' @:: Lens' SysStats'DiskStat Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'writeSectors' @:: Lens' SysStats'DiskStat (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.writeTimeMs' @:: Lens' SysStats'DiskStat Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'writeTimeMs' @:: Lens' SysStats'DiskStat (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.discardSectors' @:: Lens' SysStats'DiskStat Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'discardSectors' @:: Lens' SysStats'DiskStat (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.discardTimeMs' @:: Lens' SysStats'DiskStat Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'discardTimeMs' @:: Lens' SysStats'DiskStat (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.flushCount' @:: Lens' SysStats'DiskStat Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'flushCount' @:: Lens' SysStats'DiskStat (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.flushTimeMs' @:: Lens' SysStats'DiskStat Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'flushTimeMs' @:: Lens' SysStats'DiskStat (Prelude.Maybe Data.Word.Word64)@ -}
data SysStats'DiskStat
  = SysStats'DiskStat'_constructor {_SysStats'DiskStat'deviceName :: !(Prelude.Maybe Data.Text.Text),
                                    _SysStats'DiskStat'readSectors :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'DiskStat'readTimeMs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'DiskStat'writeSectors :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'DiskStat'writeTimeMs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'DiskStat'discardSectors :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'DiskStat'discardTimeMs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'DiskStat'flushCount :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'DiskStat'flushTimeMs :: !(Prelude.Maybe Data.Word.Word64),
                                    _SysStats'DiskStat'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SysStats'DiskStat where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "deviceName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'deviceName
           (\ x__ y__ -> x__ {_SysStats'DiskStat'deviceName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "maybe'deviceName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'deviceName
           (\ x__ y__ -> x__ {_SysStats'DiskStat'deviceName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "readSectors" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'readSectors
           (\ x__ y__ -> x__ {_SysStats'DiskStat'readSectors = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "maybe'readSectors" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'readSectors
           (\ x__ y__ -> x__ {_SysStats'DiskStat'readSectors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "readTimeMs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'readTimeMs
           (\ x__ y__ -> x__ {_SysStats'DiskStat'readTimeMs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "maybe'readTimeMs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'readTimeMs
           (\ x__ y__ -> x__ {_SysStats'DiskStat'readTimeMs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "writeSectors" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'writeSectors
           (\ x__ y__ -> x__ {_SysStats'DiskStat'writeSectors = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "maybe'writeSectors" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'writeSectors
           (\ x__ y__ -> x__ {_SysStats'DiskStat'writeSectors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "writeTimeMs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'writeTimeMs
           (\ x__ y__ -> x__ {_SysStats'DiskStat'writeTimeMs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "maybe'writeTimeMs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'writeTimeMs
           (\ x__ y__ -> x__ {_SysStats'DiskStat'writeTimeMs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "discardSectors" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'discardSectors
           (\ x__ y__ -> x__ {_SysStats'DiskStat'discardSectors = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "maybe'discardSectors" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'discardSectors
           (\ x__ y__ -> x__ {_SysStats'DiskStat'discardSectors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "discardTimeMs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'discardTimeMs
           (\ x__ y__ -> x__ {_SysStats'DiskStat'discardTimeMs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "maybe'discardTimeMs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'discardTimeMs
           (\ x__ y__ -> x__ {_SysStats'DiskStat'discardTimeMs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "flushCount" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'flushCount
           (\ x__ y__ -> x__ {_SysStats'DiskStat'flushCount = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "maybe'flushCount" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'flushCount
           (\ x__ y__ -> x__ {_SysStats'DiskStat'flushCount = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "flushTimeMs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'flushTimeMs
           (\ x__ y__ -> x__ {_SysStats'DiskStat'flushTimeMs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'DiskStat "maybe'flushTimeMs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'DiskStat'flushTimeMs
           (\ x__ y__ -> x__ {_SysStats'DiskStat'flushTimeMs = y__}))
        Prelude.id
instance Data.ProtoLens.Message SysStats'DiskStat where
  messageName _ = Data.Text.pack "perfetto.protos.SysStats.DiskStat"
  packedMessageDescriptor _
    = "\n\
      \\bDiskStat\DC2\US\n\
      \\vdevice_name\CAN\SOH \SOH(\tR\n\
      \deviceName\DC2!\n\
      \\fread_sectors\CAN\STX \SOH(\EOTR\vreadSectors\DC2 \n\
      \\fread_time_ms\CAN\ETX \SOH(\EOTR\n\
      \readTimeMs\DC2#\n\
      \\rwrite_sectors\CAN\EOT \SOH(\EOTR\fwriteSectors\DC2\"\n\
      \\rwrite_time_ms\CAN\ENQ \SOH(\EOTR\vwriteTimeMs\DC2'\n\
      \\SIdiscard_sectors\CAN\ACK \SOH(\EOTR\SOdiscardSectors\DC2&\n\
      \\SIdiscard_time_ms\CAN\a \SOH(\EOTR\rdiscardTimeMs\DC2\US\n\
      \\vflush_count\CAN\b \SOH(\EOTR\n\
      \flushCount\DC2\"\n\
      \\rflush_time_ms\CAN\t \SOH(\EOTR\vflushTimeMs"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        deviceName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "device_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'deviceName")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DiskStat
        readSectors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_sectors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readSectors")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DiskStat
        readTimeMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_time_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readTimeMs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DiskStat
        writeSectors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "write_sectors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'writeSectors")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DiskStat
        writeTimeMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "write_time_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'writeTimeMs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DiskStat
        discardSectors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "discard_sectors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'discardSectors")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DiskStat
        discardTimeMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "discard_time_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'discardTimeMs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DiskStat
        flushCount__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flush_count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flushCount")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DiskStat
        flushTimeMs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "flush_time_ms"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'flushTimeMs")) ::
              Data.ProtoLens.FieldDescriptor SysStats'DiskStat
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, deviceName__field_descriptor),
           (Data.ProtoLens.Tag 2, readSectors__field_descriptor),
           (Data.ProtoLens.Tag 3, readTimeMs__field_descriptor),
           (Data.ProtoLens.Tag 4, writeSectors__field_descriptor),
           (Data.ProtoLens.Tag 5, writeTimeMs__field_descriptor),
           (Data.ProtoLens.Tag 6, discardSectors__field_descriptor),
           (Data.ProtoLens.Tag 7, discardTimeMs__field_descriptor),
           (Data.ProtoLens.Tag 8, flushCount__field_descriptor),
           (Data.ProtoLens.Tag 9, flushTimeMs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SysStats'DiskStat'_unknownFields
        (\ x__ y__ -> x__ {_SysStats'DiskStat'_unknownFields = y__})
  defMessage
    = SysStats'DiskStat'_constructor
        {_SysStats'DiskStat'deviceName = Prelude.Nothing,
         _SysStats'DiskStat'readSectors = Prelude.Nothing,
         _SysStats'DiskStat'readTimeMs = Prelude.Nothing,
         _SysStats'DiskStat'writeSectors = Prelude.Nothing,
         _SysStats'DiskStat'writeTimeMs = Prelude.Nothing,
         _SysStats'DiskStat'discardSectors = Prelude.Nothing,
         _SysStats'DiskStat'discardTimeMs = Prelude.Nothing,
         _SysStats'DiskStat'flushCount = Prelude.Nothing,
         _SysStats'DiskStat'flushTimeMs = Prelude.Nothing,
         _SysStats'DiskStat'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SysStats'DiskStat
          -> Data.ProtoLens.Encoding.Bytes.Parser SysStats'DiskStat
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
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "device_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"deviceName") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "read_sectors"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readSectors") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "read_time_ms"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readTimeMs") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "write_sectors"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"writeSectors") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "write_time_ms"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"writeTimeMs") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "discard_sectors"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"discardSectors") y x)
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "discard_time_ms"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"discardTimeMs") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "flush_count"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"flushCount") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "flush_time_ms"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"flushTimeMs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "DiskStat"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'deviceName") _x
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
                          Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'readSectors") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'readTimeMs") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'writeSectors") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'writeTimeMs") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'discardSectors") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view
                                      (Data.ProtoLens.Field.field @"maybe'discardTimeMs") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'flushCount") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'flushTimeMs") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData SysStats'DiskStat where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SysStats'DiskStat'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SysStats'DiskStat'deviceName x__)
                (Control.DeepSeq.deepseq
                   (_SysStats'DiskStat'readSectors x__)
                   (Control.DeepSeq.deepseq
                      (_SysStats'DiskStat'readTimeMs x__)
                      (Control.DeepSeq.deepseq
                         (_SysStats'DiskStat'writeSectors x__)
                         (Control.DeepSeq.deepseq
                            (_SysStats'DiskStat'writeTimeMs x__)
                            (Control.DeepSeq.deepseq
                               (_SysStats'DiskStat'discardSectors x__)
                               (Control.DeepSeq.deepseq
                                  (_SysStats'DiskStat'discardTimeMs x__)
                                  (Control.DeepSeq.deepseq
                                     (_SysStats'DiskStat'flushCount x__)
                                     (Control.DeepSeq.deepseq
                                        (_SysStats'DiskStat'flushTimeMs x__) ())))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.irq' @:: Lens' SysStats'InterruptCount Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'irq' @:: Lens' SysStats'InterruptCount (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.count' @:: Lens' SysStats'InterruptCount Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'count' @:: Lens' SysStats'InterruptCount (Prelude.Maybe Data.Word.Word64)@ -}
data SysStats'InterruptCount
  = SysStats'InterruptCount'_constructor {_SysStats'InterruptCount'irq :: !(Prelude.Maybe Data.Int.Int32),
                                          _SysStats'InterruptCount'count :: !(Prelude.Maybe Data.Word.Word64),
                                          _SysStats'InterruptCount'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SysStats'InterruptCount where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SysStats'InterruptCount "irq" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'InterruptCount'irq
           (\ x__ y__ -> x__ {_SysStats'InterruptCount'irq = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'InterruptCount "maybe'irq" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'InterruptCount'irq
           (\ x__ y__ -> x__ {_SysStats'InterruptCount'irq = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'InterruptCount "count" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'InterruptCount'count
           (\ x__ y__ -> x__ {_SysStats'InterruptCount'count = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'InterruptCount "maybe'count" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'InterruptCount'count
           (\ x__ y__ -> x__ {_SysStats'InterruptCount'count = y__}))
        Prelude.id
instance Data.ProtoLens.Message SysStats'InterruptCount where
  messageName _
    = Data.Text.pack "perfetto.protos.SysStats.InterruptCount"
  packedMessageDescriptor _
    = "\n\
      \\SOInterruptCount\DC2\DLE\n\
      \\ETXirq\CAN\SOH \SOH(\ENQR\ETXirq\DC2\DC4\n\
      \\ENQcount\CAN\STX \SOH(\EOTR\ENQcount"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        irq__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "irq"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'irq")) ::
              Data.ProtoLens.FieldDescriptor SysStats'InterruptCount
        count__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'count")) ::
              Data.ProtoLens.FieldDescriptor SysStats'InterruptCount
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, irq__field_descriptor),
           (Data.ProtoLens.Tag 2, count__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SysStats'InterruptCount'_unknownFields
        (\ x__ y__ -> x__ {_SysStats'InterruptCount'_unknownFields = y__})
  defMessage
    = SysStats'InterruptCount'_constructor
        {_SysStats'InterruptCount'irq = Prelude.Nothing,
         _SysStats'InterruptCount'count = Prelude.Nothing,
         _SysStats'InterruptCount'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SysStats'InterruptCount
          -> Data.ProtoLens.Encoding.Bytes.Parser SysStats'InterruptCount
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
                                       "irq"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"irq") y x)
                        16
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
          (do loop Data.ProtoLens.defMessage) "InterruptCount"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'irq") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'count") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SysStats'InterruptCount where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SysStats'InterruptCount'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SysStats'InterruptCount'irq x__)
                (Control.DeepSeq.deepseq (_SysStats'InterruptCount'count x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.key' @:: Lens' SysStats'MeminfoValue Proto.Protos.Perfetto.Common.SysStatsCounters.MeminfoCounters@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'key' @:: Lens' SysStats'MeminfoValue (Prelude.Maybe Proto.Protos.Perfetto.Common.SysStatsCounters.MeminfoCounters)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.value' @:: Lens' SysStats'MeminfoValue Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'value' @:: Lens' SysStats'MeminfoValue (Prelude.Maybe Data.Word.Word64)@ -}
data SysStats'MeminfoValue
  = SysStats'MeminfoValue'_constructor {_SysStats'MeminfoValue'key :: !(Prelude.Maybe Proto.Protos.Perfetto.Common.SysStatsCounters.MeminfoCounters),
                                        _SysStats'MeminfoValue'value :: !(Prelude.Maybe Data.Word.Word64),
                                        _SysStats'MeminfoValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SysStats'MeminfoValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SysStats'MeminfoValue "key" Proto.Protos.Perfetto.Common.SysStatsCounters.MeminfoCounters where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'MeminfoValue'key
           (\ x__ y__ -> x__ {_SysStats'MeminfoValue'key = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'MeminfoValue "maybe'key" (Prelude.Maybe Proto.Protos.Perfetto.Common.SysStatsCounters.MeminfoCounters) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'MeminfoValue'key
           (\ x__ y__ -> x__ {_SysStats'MeminfoValue'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'MeminfoValue "value" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'MeminfoValue'value
           (\ x__ y__ -> x__ {_SysStats'MeminfoValue'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'MeminfoValue "maybe'value" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'MeminfoValue'value
           (\ x__ y__ -> x__ {_SysStats'MeminfoValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message SysStats'MeminfoValue where
  messageName _
    = Data.Text.pack "perfetto.protos.SysStats.MeminfoValue"
  packedMessageDescriptor _
    = "\n\
      \\fMeminfoValue\DC22\n\
      \\ETXkey\CAN\SOH \SOH(\SO2 .perfetto.protos.MeminfoCountersR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Common.SysStatsCounters.MeminfoCounters)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor SysStats'MeminfoValue
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor SysStats'MeminfoValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SysStats'MeminfoValue'_unknownFields
        (\ x__ y__ -> x__ {_SysStats'MeminfoValue'_unknownFields = y__})
  defMessage
    = SysStats'MeminfoValue'_constructor
        {_SysStats'MeminfoValue'key = Prelude.Nothing,
         _SysStats'MeminfoValue'value = Prelude.Nothing,
         _SysStats'MeminfoValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SysStats'MeminfoValue
          -> Data.ProtoLens.Encoding.Bytes.Parser SysStats'MeminfoValue
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MeminfoValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'key") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SysStats'MeminfoValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SysStats'MeminfoValue'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SysStats'MeminfoValue'key x__)
                (Control.DeepSeq.deepseq (_SysStats'MeminfoValue'value x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.key' @:: Lens' SysStats'VmstatValue Proto.Protos.Perfetto.Common.SysStatsCounters.VmstatCounters@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'key' @:: Lens' SysStats'VmstatValue (Prelude.Maybe Proto.Protos.Perfetto.Common.SysStatsCounters.VmstatCounters)@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.value' @:: Lens' SysStats'VmstatValue Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields.maybe'value' @:: Lens' SysStats'VmstatValue (Prelude.Maybe Data.Word.Word64)@ -}
data SysStats'VmstatValue
  = SysStats'VmstatValue'_constructor {_SysStats'VmstatValue'key :: !(Prelude.Maybe Proto.Protos.Perfetto.Common.SysStatsCounters.VmstatCounters),
                                       _SysStats'VmstatValue'value :: !(Prelude.Maybe Data.Word.Word64),
                                       _SysStats'VmstatValue'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show SysStats'VmstatValue where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField SysStats'VmstatValue "key" Proto.Protos.Perfetto.Common.SysStatsCounters.VmstatCounters where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'VmstatValue'key
           (\ x__ y__ -> x__ {_SysStats'VmstatValue'key = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'VmstatValue "maybe'key" (Prelude.Maybe Proto.Protos.Perfetto.Common.SysStatsCounters.VmstatCounters) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'VmstatValue'key
           (\ x__ y__ -> x__ {_SysStats'VmstatValue'key = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField SysStats'VmstatValue "value" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'VmstatValue'value
           (\ x__ y__ -> x__ {_SysStats'VmstatValue'value = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField SysStats'VmstatValue "maybe'value" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _SysStats'VmstatValue'value
           (\ x__ y__ -> x__ {_SysStats'VmstatValue'value = y__}))
        Prelude.id
instance Data.ProtoLens.Message SysStats'VmstatValue where
  messageName _
    = Data.Text.pack "perfetto.protos.SysStats.VmstatValue"
  packedMessageDescriptor _
    = "\n\
      \\vVmstatValue\DC21\n\
      \\ETXkey\CAN\SOH \SOH(\SO2\US.perfetto.protos.VmstatCountersR\ETXkey\DC2\DC4\n\
      \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        key__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "key"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Common.SysStatsCounters.VmstatCounters)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'key")) ::
              Data.ProtoLens.FieldDescriptor SysStats'VmstatValue
        value__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'value")) ::
              Data.ProtoLens.FieldDescriptor SysStats'VmstatValue
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, key__field_descriptor),
           (Data.ProtoLens.Tag 2, value__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _SysStats'VmstatValue'_unknownFields
        (\ x__ y__ -> x__ {_SysStats'VmstatValue'_unknownFields = y__})
  defMessage
    = SysStats'VmstatValue'_constructor
        {_SysStats'VmstatValue'key = Prelude.Nothing,
         _SysStats'VmstatValue'value = Prelude.Nothing,
         _SysStats'VmstatValue'_unknownFields = []}
  parseMessage
    = let
        loop ::
          SysStats'VmstatValue
          -> Data.ProtoLens.Encoding.Bytes.Parser SysStats'VmstatValue
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
                                       "key"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"key") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "value"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"value") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "VmstatValue"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'key") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData SysStats'VmstatValue where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_SysStats'VmstatValue'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_SysStats'VmstatValue'key x__)
                (Control.DeepSeq.deepseq (_SysStats'VmstatValue'value x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \/protos/perfetto/trace/sys_stats/sys_stats.proto\DC2\SIperfetto.protos\SUB/protos/perfetto/common/sys_stats_counters.proto\"\165\r\n\
    \\bSysStats\DC2@\n\
    \\ameminfo\CAN\SOH \ETX(\v2&.perfetto.protos.SysStats.MeminfoValueR\ameminfo\DC2=\n\
    \\ACKvmstat\CAN\STX \ETX(\v2%.perfetto.protos.SysStats.VmstatValueR\ACKvmstat\DC2=\n\
    \\bcpu_stat\CAN\ETX \ETX(\v2\".perfetto.protos.SysStats.CpuTimesR\acpuStat\DC2\ESC\n\
    \\tnum_forks\CAN\EOT \SOH(\EOTR\bnumForks\DC2\"\n\
    \\rnum_irq_total\CAN\ENQ \SOH(\EOTR\vnumIrqTotal\DC2A\n\
    \\anum_irq\CAN\ACK \ETX(\v2(.perfetto.protos.SysStats.InterruptCountR\ACKnumIrq\DC2*\n\
    \\DC1num_softirq_total\CAN\a \SOH(\EOTR\SInumSoftirqTotal\DC2I\n\
    \\vnum_softirq\CAN\b \ETX(\v2(.perfetto.protos.SysStats.InterruptCountR\n\
    \numSoftirq\DC28\n\
    \\CANcollection_end_timestamp\CAN\t \SOH(\EOTR\SYNcollectionEndTimestamp\DC2@\n\
    \\adevfreq\CAN\n\
    \ \ETX(\v2&.perfetto.protos.SysStats.DevfreqValueR\adevfreq\DC2\US\n\
    \\vcpufreq_khz\CAN\v \ETX(\rR\n\
    \cpufreqKhz\DC2B\n\
    \\n\
    \buddy_info\CAN\f \ETX(\v2#.perfetto.protos.SysStats.BuddyInfoR\tbuddyInfo\DC2?\n\
    \\tdisk_stat\CAN\r \ETX(\v2\".perfetto.protos.SysStats.DiskStatR\bdiskStat\SUBX\n\
    \\fMeminfoValue\DC22\n\
    \\ETXkey\CAN\SOH \SOH(\SO2 .perfetto.protos.MeminfoCountersR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue\SUBV\n\
    \\vVmstatValue\DC21\n\
    \\ETXkey\CAN\SOH \SOH(\SO2\US.perfetto.protos.VmstatCountersR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue\SUB\239\SOH\n\
    \\bCpuTimes\DC2\NAK\n\
    \\ACKcpu_id\CAN\SOH \SOH(\rR\ENQcpuId\DC2\ETB\n\
    \\auser_ns\CAN\STX \SOH(\EOTR\ACKuserNs\DC2 \n\
    \\fuser_nice_ns\CAN\ETX \SOH(\EOTR\n\
    \userNiceNs\DC2$\n\
    \\SOsystem_mode_ns\CAN\EOT \SOH(\EOTR\fsystemModeNs\DC2\ETB\n\
    \\aidle_ns\CAN\ENQ \SOH(\EOTR\ACKidleNs\DC2\FS\n\
    \\n\
    \io_wait_ns\CAN\ACK \SOH(\EOTR\bioWaitNs\DC2\NAK\n\
    \\ACKirq_ns\CAN\a \SOH(\EOTR\ENQirqNs\DC2\GS\n\
    \\n\
    \softirq_ns\CAN\b \SOH(\EOTR\tsoftirqNs\SUB8\n\
    \\SOInterruptCount\DC2\DLE\n\
    \\ETXirq\CAN\SOH \SOH(\ENQR\ETXirq\DC2\DC4\n\
    \\ENQcount\CAN\STX \SOH(\EOTR\ENQcount\SUB6\n\
    \\fDevfreqValue\DC2\DLE\n\
    \\ETXkey\CAN\SOH \SOH(\tR\ETXkey\DC2\DC4\n\
    \\ENQvalue\CAN\STX \SOH(\EOTR\ENQvalue\SUBT\n\
    \\tBuddyInfo\DC2\DC2\n\
    \\EOTnode\CAN\SOH \SOH(\tR\EOTnode\DC2\DC2\n\
    \\EOTzone\CAN\STX \SOH(\tR\EOTzone\DC2\US\n\
    \\vorder_pages\CAN\ETX \ETX(\rR\n\
    \orderPages\SUB\207\STX\n\
    \\bDiskStat\DC2\US\n\
    \\vdevice_name\CAN\SOH \SOH(\tR\n\
    \deviceName\DC2!\n\
    \\fread_sectors\CAN\STX \SOH(\EOTR\vreadSectors\DC2 \n\
    \\fread_time_ms\CAN\ETX \SOH(\EOTR\n\
    \readTimeMs\DC2#\n\
    \\rwrite_sectors\CAN\EOT \SOH(\EOTR\fwriteSectors\DC2\"\n\
    \\rwrite_time_ms\CAN\ENQ \SOH(\EOTR\vwriteTimeMs\DC2'\n\
    \\SIdiscard_sectors\CAN\ACK \SOH(\EOTR\SOdiscardSectors\DC2&\n\
    \\SIdiscard_time_ms\CAN\a \SOH(\EOTR\rdiscardTimeMs\DC2\US\n\
    \\vflush_count\CAN\b \SOH(\EOTR\n\
    \flushCount\DC2\"\n\
    \\rflush_time_ms\CAN\t \SOH(\EOTR\vflushTimeMsJ\187*\n\
    \\a\DC2\ENQ\DLE\NUL\133\SOH\SOH\n\
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
    \\SOH\STX\DC2\ETX\DC1\NUL\CAN\n\
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DC3\NUL9\n\
    \\186\SOH\n\
    \\STX\EOT\NUL\DC2\ENQ\CAN\NUL\133\SOH\SOH\SUB\172\SOH Various Linux system stat counters from /proc.\n\
    \ The fields in this message can be reported at different rates and with\n\
    \ different granularity. See sys_stats_config.proto.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\CAN\b\DLE\n\
    \>\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\SUB\STX\GS\ETX\SUB0 Counters from /proc/meminfo. Values are in KB.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\SUB\n\
    \\SYN\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\ESC\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\ESC\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX\ESC\r\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\ESC\GS \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\ESC#$\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\FS\EOT\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX\FS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\FS\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\FS\DC4\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\FS\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\RS\STX$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\RS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX\RS\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\RS\CAN\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\RS\"#\n\
    \I\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT!\STX$\ETX\SUB; Counter from /proc/vmstat. Units are often pages, not KB.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX!\n\
    \\NAK\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETX\"\EOT$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\EOT\DC2\ETX\"\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ACK\DC2\ETX\"\r\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETX\"\FS\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETX\"\"#\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETX#\EOT\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\EOT\DC2\ETX#\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETX#\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETX#\DC4\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETX#\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX%\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX%\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX%\ETB\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX% !\n\
    \B\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\EOT(\STX?\ETX\SUB4 Times in each mode, since boot. Unit: nanoseconds.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\ETX(\n\
    \\DC2\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\ETX)\EOT\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\EOT\DC2\ETX)\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\ETX)\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\ETX)\DC4\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\ETX)\GS\RS\n\
    \)\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\ETX,\EOT \SUB\SUB Time spent in user mode.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\EOT\DC2\ETX,\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\ETX,\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\ETX,\DC4\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\ETX,\RS\US\n\
    \4\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\ETX/\EOT%\SUB% Time spent in user mode (low prio).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\EOT\DC2\ETX/\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ENQ\DC2\ETX/\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\ETX/\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\ETX/#$\n\
    \+\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\ETX2\EOT'\SUB\FS Time spent in system mode.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\EOT\DC2\ETX2\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ENQ\DC2\ETX2\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\ETX2\DC4\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\ETX2%&\n\
    \-\n\
    \\ACK\EOT\NUL\ETX\STX\STX\EOT\DC2\ETX5\EOT \SUB\RS Time spent in the idle task.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\EOT\DC2\ETX5\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ENQ\DC2\ETX5\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\SOH\DC2\ETX5\DC4\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\EOT\ETX\DC2\ETX5\RS\US\n\
    \,\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ENQ\DC2\ETX8\EOT#\SUB\GS Time spent waiting for I/O.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\EOT\DC2\ETX8\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\ENQ\DC2\ETX8\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\SOH\DC2\ETX8\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ENQ\ETX\DC2\ETX8!\"\n\
    \1\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ACK\DC2\ETX;\EOT\US\SUB\" Time spent servicing interrupts.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\EOT\DC2\ETX;\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\ENQ\DC2\ETX;\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\SOH\DC2\ETX;\DC4\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\ACK\ETX\DC2\ETX;\GS\RS\n\
    \/\n\
    \\ACK\EOT\NUL\ETX\STX\STX\a\DC2\ETX>\EOT#\SUB  Time spent servicing softirqs.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\a\EOT\DC2\ETX>\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\a\ENQ\DC2\ETX>\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\a\SOH\DC2\ETX>\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\STX\STX\a\ETX\DC2\ETX>!\"\n\
    \!\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXA\STX!\SUB\DC4 One entry per cpu.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXA\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXA\DC4\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXA\US \n\
    \f\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXE\STX \SUBY Num processes forked since boot.\n\
    \ Populated only if FORK_COUNT in config.stat_counters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXE\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXE\RS\US\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\ETX\DC2\EOTG\STXJ\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\ETX\SOH\DC2\ETXG\n\
    \\CAN\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\NUL\DC2\ETXH\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\EOT\DC2\ETXH\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ENQ\DC2\ETXH\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\SOH\DC2\ETXH\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\NUL\ETX\DC2\ETXH\EM\SUB\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ETX\STX\SOH\DC2\ETXI\EOT\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\EOT\DC2\ETXI\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ENQ\DC2\ETXI\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\SOH\DC2\ETXI\DC4\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ETX\STX\SOH\ETX\DC2\ETXI\FS\GS\n\
    \\155\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXP\STX$\SUB( Total num of irqs serviced since boot.\n\
    \2d Number of interrupts, broken by IRQ number.\n\
    \ Populated only if IRQ_COUNTS in config.stat_counters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETXP\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXP\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXP\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXP\"#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXQ\STX&\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ACK\DC2\ETXQ\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXQ\SUB!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXQ$%\n\
    \\156\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXW\STX(\SUB# Total num of softirqs since boot.\n\
    \2j Number of softirqs, broken by softirq number.\n\
    \ Populated only if SOFTIRQ_COUNTS in config.stat_counters.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETXW\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETXW\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXW\DC2#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXW&'\n\
    \!\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETXZ\STX*\SUB\DC4 Per-softirq count.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ACK\DC2\ETXZ\v\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETXZ\SUB%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETXZ()\n\
    \\150\SOH\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX_\STX/\SUB\136\SOH The time at which we finish collecting this set of samples;\n\
    \ the top-level packet timestamp is the time at which\n\
    \ we begin collection.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\ETX_\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX_\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX_\DC2*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX_-.\n\
    \C\n\
    \\EOT\EOT\NUL\ETX\EOT\DC2\EOTb\STXe\ETX\SUB5 Frequencies for /sys/class/devfreq/ entries in kHz.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\EOT\SOH\DC2\ETXb\n\
    \\SYN\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\NUL\DC2\ETXc\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\EOT\DC2\ETXc\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ENQ\DC2\ETXc\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\SOH\DC2\ETXc\DC4\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\NUL\ETX\DC2\ETXc\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\EOT\STX\SOH\DC2\ETXd\EOT\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\EOT\DC2\ETXd\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\ENQ\DC2\ETXd\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\SOH\DC2\ETXd\DC4\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\EOT\STX\SOH\ETX\DC2\ETXd\FS\GS\n\
    \$\n\
    \\EOT\EOT\NUL\STX\t\DC2\ETXh\STX%\SUB\ETB One entry per device.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\EOT\DC2\ETXh\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ACK\DC2\ETXh\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\SOH\DC2\ETXh\CAN\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\t\ETX\DC2\ETXh\"$\n\
    \\150\SOH\n\
    \\EOT\EOT\NUL\STX\n\
    \\DC2\ETXm\STX#\SUB\136\SOH Cpu current frequency from\n\
    \ /sys/devices/system/cpu/cpu*/cpufreq/cpuinfo_cur_freq in kHz.\n\
    \ One entry per cpu. Report 0 for offline cpu\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\EOT\DC2\ETXm\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ENQ\DC2\ETXm\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\SOH\DC2\ETXm\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\n\
    \\ETX\DC2\ETXm \"\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\ENQ\DC2\EOTo\STXs\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\ENQ\SOH\DC2\ETXo\n\
    \\DC3\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\NUL\DC2\ETXp\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\EOT\DC2\ETXp\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\ENQ\DC2\ETXp\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\SOH\DC2\ETXp\DC4\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\NUL\ETX\DC2\ETXp\ESC\FS\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\SOH\DC2\ETXq\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\EOT\DC2\ETXq\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\ENQ\DC2\ETXq\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\SOH\DC2\ETXq\DC4\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\SOH\ETX\DC2\ETXq\ESC\FS\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ENQ\STX\STX\DC2\ETXr\EOT$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\STX\EOT\DC2\ETXr\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\STX\ENQ\DC2\ETXr\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\STX\SOH\DC2\ETXr\DC4\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ENQ\STX\STX\ETX\DC2\ETXr\"#\n\
    \/\n\
    \\EOT\EOT\NUL\STX\v\DC2\ETXu\STX%\SUB\" One entry per each node's zones.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\EOT\DC2\ETXu\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ACK\DC2\ETXu\v\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\SOH\DC2\ETXu\NAK\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\v\ETX\DC2\ETXu\"$\n\
    \/\n\
    \\EOT\EOT\NUL\ETX\ACK\DC2\ENQx\STX\130\SOH\ETX\SUB  Counters from /proc/diskstats.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\ACK\SOH\DC2\ETXx\n\
    \\DC2\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\NUL\DC2\ETXy\EOT$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\EOT\DC2\ETXy\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\ENQ\DC2\ETXy\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\SOH\DC2\ETXy\DC4\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\NUL\ETX\DC2\ETXy\"#\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\SOH\DC2\ETXz\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\SOH\EOT\DC2\ETXz\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\SOH\ENQ\DC2\ETXz\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\SOH\SOH\DC2\ETXz\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\SOH\ETX\DC2\ETXz#$\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\STX\DC2\ETX{\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\STX\EOT\DC2\ETX{\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\STX\ENQ\DC2\ETX{\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\STX\SOH\DC2\ETX{\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\STX\ETX\DC2\ETX{#$\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\ETX\DC2\ETX|\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ETX\EOT\DC2\ETX|\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ETX\ENQ\DC2\ETX|\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ETX\SOH\DC2\ETX|\DC4!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ETX\ETX\DC2\ETX|$%\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\EOT\DC2\ETX}\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\EOT\EOT\DC2\ETX}\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\EOT\ENQ\DC2\ETX}\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\EOT\SOH\DC2\ETX}\DC4!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\EOT\ETX\DC2\ETX}$%\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\ENQ\DC2\ETX~\EOT(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ENQ\EOT\DC2\ETX~\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ENQ\ENQ\DC2\ETX~\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ENQ\SOH\DC2\ETX~\DC4#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ENQ\ETX\DC2\ETX~&'\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\ACK\DC2\ETX\DEL\EOT(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ACK\EOT\DC2\ETX\DEL\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ACK\ENQ\DC2\ETX\DEL\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ACK\SOH\DC2\ETX\DEL\DC4#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\ACK\STX\ACK\ETX\DC2\ETX\DEL&'\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\a\DC2\EOT\128\SOH\EOT$\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\a\EOT\DC2\EOT\128\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\a\ENQ\DC2\EOT\128\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\a\SOH\DC2\EOT\128\SOH\DC4\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\a\ETX\DC2\EOT\128\SOH\"#\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\ACK\STX\b\DC2\EOT\129\SOH\EOT&\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\b\EOT\DC2\EOT\129\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\b\ENQ\DC2\EOT\129\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\b\SOH\DC2\EOT\129\SOH\DC4!\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\ACK\STX\b\ETX\DC2\EOT\129\SOH$%\n\
    \*\n\
    \\EOT\EOT\NUL\STX\f\DC2\EOT\132\SOH\STX#\SUB\FS One entry per disk device.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\EOT\DC2\EOT\132\SOH\STX\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ACK\DC2\EOT\132\SOH\v\DC3\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\SOH\DC2\EOT\132\SOH\DC4\GS\n\
    \\r\n\
    \\ENQ\EOT\NUL\STX\f\ETX\DC2\EOT\132\SOH \""