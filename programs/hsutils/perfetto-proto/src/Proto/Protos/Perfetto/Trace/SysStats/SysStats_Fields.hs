{- This file was auto-generated from protos/perfetto/trace/sys_stats/sys_stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.SysStats.SysStats_Fields where
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
buddyInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "buddyInfo" a) =>
  Lens.Family2.LensLike' f s a
buddyInfo = Data.ProtoLens.Field.field @"buddyInfo"
collectionEndTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "collectionEndTimestamp" a) =>
  Lens.Family2.LensLike' f s a
collectionEndTimestamp
  = Data.ProtoLens.Field.field @"collectionEndTimestamp"
count ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "count" a) =>
  Lens.Family2.LensLike' f s a
count = Data.ProtoLens.Field.field @"count"
cpuId ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpuId" a) =>
  Lens.Family2.LensLike' f s a
cpuId = Data.ProtoLens.Field.field @"cpuId"
cpuStat ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpuStat" a) =>
  Lens.Family2.LensLike' f s a
cpuStat = Data.ProtoLens.Field.field @"cpuStat"
cpufreqKhz ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpufreqKhz" a) =>
  Lens.Family2.LensLike' f s a
cpufreqKhz = Data.ProtoLens.Field.field @"cpufreqKhz"
devfreq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "devfreq" a) =>
  Lens.Family2.LensLike' f s a
devfreq = Data.ProtoLens.Field.field @"devfreq"
deviceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "deviceName" a) =>
  Lens.Family2.LensLike' f s a
deviceName = Data.ProtoLens.Field.field @"deviceName"
discardSectors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "discardSectors" a) =>
  Lens.Family2.LensLike' f s a
discardSectors = Data.ProtoLens.Field.field @"discardSectors"
discardTimeMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "discardTimeMs" a) =>
  Lens.Family2.LensLike' f s a
discardTimeMs = Data.ProtoLens.Field.field @"discardTimeMs"
diskStat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "diskStat" a) =>
  Lens.Family2.LensLike' f s a
diskStat = Data.ProtoLens.Field.field @"diskStat"
flushCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "flushCount" a) =>
  Lens.Family2.LensLike' f s a
flushCount = Data.ProtoLens.Field.field @"flushCount"
flushTimeMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "flushTimeMs" a) =>
  Lens.Family2.LensLike' f s a
flushTimeMs = Data.ProtoLens.Field.field @"flushTimeMs"
idleNs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "idleNs" a) =>
  Lens.Family2.LensLike' f s a
idleNs = Data.ProtoLens.Field.field @"idleNs"
ioWaitNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ioWaitNs" a) =>
  Lens.Family2.LensLike' f s a
ioWaitNs = Data.ProtoLens.Field.field @"ioWaitNs"
irq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "irq" a) =>
  Lens.Family2.LensLike' f s a
irq = Data.ProtoLens.Field.field @"irq"
irqNs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "irqNs" a) =>
  Lens.Family2.LensLike' f s a
irqNs = Data.ProtoLens.Field.field @"irqNs"
key ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "key" a) =>
  Lens.Family2.LensLike' f s a
key = Data.ProtoLens.Field.field @"key"
maybe'collectionEndTimestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'collectionEndTimestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'collectionEndTimestamp
  = Data.ProtoLens.Field.field @"maybe'collectionEndTimestamp"
maybe'count ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'count" a) =>
  Lens.Family2.LensLike' f s a
maybe'count = Data.ProtoLens.Field.field @"maybe'count"
maybe'cpuId ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuId" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuId = Data.ProtoLens.Field.field @"maybe'cpuId"
maybe'deviceName ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'deviceName" a) =>
  Lens.Family2.LensLike' f s a
maybe'deviceName = Data.ProtoLens.Field.field @"maybe'deviceName"
maybe'discardSectors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'discardSectors" a) =>
  Lens.Family2.LensLike' f s a
maybe'discardSectors
  = Data.ProtoLens.Field.field @"maybe'discardSectors"
maybe'discardTimeMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'discardTimeMs" a) =>
  Lens.Family2.LensLike' f s a
maybe'discardTimeMs
  = Data.ProtoLens.Field.field @"maybe'discardTimeMs"
maybe'flushCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flushCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'flushCount = Data.ProtoLens.Field.field @"maybe'flushCount"
maybe'flushTimeMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'flushTimeMs" a) =>
  Lens.Family2.LensLike' f s a
maybe'flushTimeMs = Data.ProtoLens.Field.field @"maybe'flushTimeMs"
maybe'idleNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'idleNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'idleNs = Data.ProtoLens.Field.field @"maybe'idleNs"
maybe'ioWaitNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ioWaitNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'ioWaitNs = Data.ProtoLens.Field.field @"maybe'ioWaitNs"
maybe'irq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'irq" a) =>
  Lens.Family2.LensLike' f s a
maybe'irq = Data.ProtoLens.Field.field @"maybe'irq"
maybe'irqNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'irqNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'irqNs = Data.ProtoLens.Field.field @"maybe'irqNs"
maybe'key ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'key" a) =>
  Lens.Family2.LensLike' f s a
maybe'key = Data.ProtoLens.Field.field @"maybe'key"
maybe'node ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'node" a) =>
  Lens.Family2.LensLike' f s a
maybe'node = Data.ProtoLens.Field.field @"maybe'node"
maybe'numForks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numForks" a) =>
  Lens.Family2.LensLike' f s a
maybe'numForks = Data.ProtoLens.Field.field @"maybe'numForks"
maybe'numIrqTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numIrqTotal" a) =>
  Lens.Family2.LensLike' f s a
maybe'numIrqTotal = Data.ProtoLens.Field.field @"maybe'numIrqTotal"
maybe'numSoftirqTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'numSoftirqTotal" a) =>
  Lens.Family2.LensLike' f s a
maybe'numSoftirqTotal
  = Data.ProtoLens.Field.field @"maybe'numSoftirqTotal"
maybe'readSectors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'readSectors" a) =>
  Lens.Family2.LensLike' f s a
maybe'readSectors = Data.ProtoLens.Field.field @"maybe'readSectors"
maybe'readTimeMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'readTimeMs" a) =>
  Lens.Family2.LensLike' f s a
maybe'readTimeMs = Data.ProtoLens.Field.field @"maybe'readTimeMs"
maybe'softirqNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'softirqNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'softirqNs = Data.ProtoLens.Field.field @"maybe'softirqNs"
maybe'systemModeNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'systemModeNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'systemModeNs
  = Data.ProtoLens.Field.field @"maybe'systemModeNs"
maybe'userNiceNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'userNiceNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'userNiceNs = Data.ProtoLens.Field.field @"maybe'userNiceNs"
maybe'userNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'userNs" a) =>
  Lens.Family2.LensLike' f s a
maybe'userNs = Data.ProtoLens.Field.field @"maybe'userNs"
maybe'value ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'value" a) =>
  Lens.Family2.LensLike' f s a
maybe'value = Data.ProtoLens.Field.field @"maybe'value"
maybe'writeSectors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'writeSectors" a) =>
  Lens.Family2.LensLike' f s a
maybe'writeSectors
  = Data.ProtoLens.Field.field @"maybe'writeSectors"
maybe'writeTimeMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'writeTimeMs" a) =>
  Lens.Family2.LensLike' f s a
maybe'writeTimeMs = Data.ProtoLens.Field.field @"maybe'writeTimeMs"
maybe'zone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'zone" a) =>
  Lens.Family2.LensLike' f s a
maybe'zone = Data.ProtoLens.Field.field @"maybe'zone"
meminfo ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "meminfo" a) =>
  Lens.Family2.LensLike' f s a
meminfo = Data.ProtoLens.Field.field @"meminfo"
node ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "node" a) =>
  Lens.Family2.LensLike' f s a
node = Data.ProtoLens.Field.field @"node"
numForks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numForks" a) =>
  Lens.Family2.LensLike' f s a
numForks = Data.ProtoLens.Field.field @"numForks"
numIrq ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "numIrq" a) =>
  Lens.Family2.LensLike' f s a
numIrq = Data.ProtoLens.Field.field @"numIrq"
numIrqTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numIrqTotal" a) =>
  Lens.Family2.LensLike' f s a
numIrqTotal = Data.ProtoLens.Field.field @"numIrqTotal"
numSoftirq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numSoftirq" a) =>
  Lens.Family2.LensLike' f s a
numSoftirq = Data.ProtoLens.Field.field @"numSoftirq"
numSoftirqTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "numSoftirqTotal" a) =>
  Lens.Family2.LensLike' f s a
numSoftirqTotal = Data.ProtoLens.Field.field @"numSoftirqTotal"
orderPages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "orderPages" a) =>
  Lens.Family2.LensLike' f s a
orderPages = Data.ProtoLens.Field.field @"orderPages"
readSectors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readSectors" a) =>
  Lens.Family2.LensLike' f s a
readSectors = Data.ProtoLens.Field.field @"readSectors"
readTimeMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "readTimeMs" a) =>
  Lens.Family2.LensLike' f s a
readTimeMs = Data.ProtoLens.Field.field @"readTimeMs"
softirqNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "softirqNs" a) =>
  Lens.Family2.LensLike' f s a
softirqNs = Data.ProtoLens.Field.field @"softirqNs"
systemModeNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "systemModeNs" a) =>
  Lens.Family2.LensLike' f s a
systemModeNs = Data.ProtoLens.Field.field @"systemModeNs"
userNiceNs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "userNiceNs" a) =>
  Lens.Family2.LensLike' f s a
userNiceNs = Data.ProtoLens.Field.field @"userNiceNs"
userNs ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "userNs" a) =>
  Lens.Family2.LensLike' f s a
userNs = Data.ProtoLens.Field.field @"userNs"
value ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "value" a) =>
  Lens.Family2.LensLike' f s a
value = Data.ProtoLens.Field.field @"value"
vec'buddyInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'buddyInfo" a) =>
  Lens.Family2.LensLike' f s a
vec'buddyInfo = Data.ProtoLens.Field.field @"vec'buddyInfo"
vec'cpuStat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'cpuStat" a) =>
  Lens.Family2.LensLike' f s a
vec'cpuStat = Data.ProtoLens.Field.field @"vec'cpuStat"
vec'cpufreqKhz ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'cpufreqKhz" a) =>
  Lens.Family2.LensLike' f s a
vec'cpufreqKhz = Data.ProtoLens.Field.field @"vec'cpufreqKhz"
vec'devfreq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'devfreq" a) =>
  Lens.Family2.LensLike' f s a
vec'devfreq = Data.ProtoLens.Field.field @"vec'devfreq"
vec'diskStat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'diskStat" a) =>
  Lens.Family2.LensLike' f s a
vec'diskStat = Data.ProtoLens.Field.field @"vec'diskStat"
vec'meminfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'meminfo" a) =>
  Lens.Family2.LensLike' f s a
vec'meminfo = Data.ProtoLens.Field.field @"vec'meminfo"
vec'numIrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'numIrq" a) =>
  Lens.Family2.LensLike' f s a
vec'numIrq = Data.ProtoLens.Field.field @"vec'numIrq"
vec'numSoftirq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'numSoftirq" a) =>
  Lens.Family2.LensLike' f s a
vec'numSoftirq = Data.ProtoLens.Field.field @"vec'numSoftirq"
vec'orderPages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'orderPages" a) =>
  Lens.Family2.LensLike' f s a
vec'orderPages = Data.ProtoLens.Field.field @"vec'orderPages"
vec'vmstat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vec'vmstat" a) =>
  Lens.Family2.LensLike' f s a
vec'vmstat = Data.ProtoLens.Field.field @"vec'vmstat"
vmstat ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vmstat" a) =>
  Lens.Family2.LensLike' f s a
vmstat = Data.ProtoLens.Field.field @"vmstat"
writeSectors ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "writeSectors" a) =>
  Lens.Family2.LensLike' f s a
writeSectors = Data.ProtoLens.Field.field @"writeSectors"
writeTimeMs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "writeTimeMs" a) =>
  Lens.Family2.LensLike' f s a
writeTimeMs = Data.ProtoLens.Field.field @"writeTimeMs"
zone ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "zone" a) =>
  Lens.Family2.LensLike' f s a
zone = Data.ProtoLens.Field.field @"zone"