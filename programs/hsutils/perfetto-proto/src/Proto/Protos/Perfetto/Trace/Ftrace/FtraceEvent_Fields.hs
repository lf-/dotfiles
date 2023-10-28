{- This file was auto-generated from protos/perfetto/trace/ftrace/ftrace_event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent_Fields where
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
import qualified Proto.Protos.Perfetto.Trace.Ftrace.AndroidFs
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Binder
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Block
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Cgroup
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Clk
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Cma
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Compaction
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Cpuhp
import qualified Proto.Protos.Perfetto.Trace.Ftrace.CrosEc
import qualified Proto.Protos.Perfetto.Trace.Ftrace.DmaFence
import qualified Proto.Protos.Perfetto.Trace.Ftrace.DmabufHeap
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Dpu
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Drm
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Ext4
import qualified Proto.Protos.Perfetto.Trace.Ftrace.F2fs
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Fastrpc
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Fence
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Filemap
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Ftrace
import qualified Proto.Protos.Perfetto.Trace.Ftrace.G2d
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Generic
import qualified Proto.Protos.Perfetto.Trace.Ftrace.GpuMem
import qualified Proto.Protos.Perfetto.Trace.Ftrace.GpuScheduler
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Hyp
import qualified Proto.Protos.Perfetto.Trace.Ftrace.I2c
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Ion
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Ipi
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Irq
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Kmem
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Kvm
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Lowmemorykiller
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Lwis
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Mali
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Mdss
import qualified Proto.Protos.Perfetto.Trace.Ftrace.MmEvent
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Net
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Oom
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Panel
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Power
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Printk
import qualified Proto.Protos.Perfetto.Trace.Ftrace.RawSyscalls
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Regulator
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Samsung
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Sched
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Scm
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Sde
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Signal
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Skb
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Sock
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Sync
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Synthetic
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Systrace
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Task
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Tcp
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Thermal
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Trusty
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Ufs
import qualified Proto.Protos.Perfetto.Trace.Ftrace.V4l2
import qualified Proto.Protos.Perfetto.Trace.Ftrace.VirtioGpu
import qualified Proto.Protos.Perfetto.Trace.Ftrace.VirtioVideo
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Vmscan
import qualified Proto.Protos.Perfetto.Trace.Ftrace.Workqueue
allocPagesIommuEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocPagesIommuEnd" a) =>
  Lens.Family2.LensLike' f s a
allocPagesIommuEnd
  = Data.ProtoLens.Field.field @"allocPagesIommuEnd"
allocPagesIommuFail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocPagesIommuFail" a) =>
  Lens.Family2.LensLike' f s a
allocPagesIommuFail
  = Data.ProtoLens.Field.field @"allocPagesIommuFail"
allocPagesIommuStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocPagesIommuStart" a) =>
  Lens.Family2.LensLike' f s a
allocPagesIommuStart
  = Data.ProtoLens.Field.field @"allocPagesIommuStart"
allocPagesSysEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocPagesSysEnd" a) =>
  Lens.Family2.LensLike' f s a
allocPagesSysEnd = Data.ProtoLens.Field.field @"allocPagesSysEnd"
allocPagesSysFail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocPagesSysFail" a) =>
  Lens.Family2.LensLike' f s a
allocPagesSysFail = Data.ProtoLens.Field.field @"allocPagesSysFail"
allocPagesSysStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "allocPagesSysStart" a) =>
  Lens.Family2.LensLike' f s a
allocPagesSysStart
  = Data.ProtoLens.Field.field @"allocPagesSysStart"
androidFsDatareadEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "androidFsDatareadEnd" a) =>
  Lens.Family2.LensLike' f s a
androidFsDatareadEnd
  = Data.ProtoLens.Field.field @"androidFsDatareadEnd"
androidFsDatareadStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "androidFsDatareadStart" a) =>
  Lens.Family2.LensLike' f s a
androidFsDatareadStart
  = Data.ProtoLens.Field.field @"androidFsDatareadStart"
androidFsDatawriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "androidFsDatawriteEnd" a) =>
  Lens.Family2.LensLike' f s a
androidFsDatawriteEnd
  = Data.ProtoLens.Field.field @"androidFsDatawriteEnd"
androidFsDatawriteStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "androidFsDatawriteStart" a) =>
  Lens.Family2.LensLike' f s a
androidFsDatawriteStart
  = Data.ProtoLens.Field.field @"androidFsDatawriteStart"
androidFsFsyncEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "androidFsFsyncEnd" a) =>
  Lens.Family2.LensLike' f s a
androidFsFsyncEnd = Data.ProtoLens.Field.field @"androidFsFsyncEnd"
androidFsFsyncStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "androidFsFsyncStart" a) =>
  Lens.Family2.LensLike' f s a
androidFsFsyncStart
  = Data.ProtoLens.Field.field @"androidFsFsyncStart"
binderCommand ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binderCommand" a) =>
  Lens.Family2.LensLike' f s a
binderCommand = Data.ProtoLens.Field.field @"binderCommand"
binderLock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binderLock" a) =>
  Lens.Family2.LensLike' f s a
binderLock = Data.ProtoLens.Field.field @"binderLock"
binderLocked ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binderLocked" a) =>
  Lens.Family2.LensLike' f s a
binderLocked = Data.ProtoLens.Field.field @"binderLocked"
binderReturn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binderReturn" a) =>
  Lens.Family2.LensLike' f s a
binderReturn = Data.ProtoLens.Field.field @"binderReturn"
binderSetPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binderSetPriority" a) =>
  Lens.Family2.LensLike' f s a
binderSetPriority = Data.ProtoLens.Field.field @"binderSetPriority"
binderTransaction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binderTransaction" a) =>
  Lens.Family2.LensLike' f s a
binderTransaction = Data.ProtoLens.Field.field @"binderTransaction"
binderTransactionAllocBuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binderTransactionAllocBuf" a) =>
  Lens.Family2.LensLike' f s a
binderTransactionAllocBuf
  = Data.ProtoLens.Field.field @"binderTransactionAllocBuf"
binderTransactionReceived ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binderTransactionReceived" a) =>
  Lens.Family2.LensLike' f s a
binderTransactionReceived
  = Data.ProtoLens.Field.field @"binderTransactionReceived"
binderUnlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "binderUnlock" a) =>
  Lens.Family2.LensLike' f s a
binderUnlock = Data.ProtoLens.Field.field @"binderUnlock"
blockBioBackmerge ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockBioBackmerge" a) =>
  Lens.Family2.LensLike' f s a
blockBioBackmerge = Data.ProtoLens.Field.field @"blockBioBackmerge"
blockBioBounce ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockBioBounce" a) =>
  Lens.Family2.LensLike' f s a
blockBioBounce = Data.ProtoLens.Field.field @"blockBioBounce"
blockBioComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockBioComplete" a) =>
  Lens.Family2.LensLike' f s a
blockBioComplete = Data.ProtoLens.Field.field @"blockBioComplete"
blockBioFrontmerge ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockBioFrontmerge" a) =>
  Lens.Family2.LensLike' f s a
blockBioFrontmerge
  = Data.ProtoLens.Field.field @"blockBioFrontmerge"
blockBioQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockBioQueue" a) =>
  Lens.Family2.LensLike' f s a
blockBioQueue = Data.ProtoLens.Field.field @"blockBioQueue"
blockBioRemap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockBioRemap" a) =>
  Lens.Family2.LensLike' f s a
blockBioRemap = Data.ProtoLens.Field.field @"blockBioRemap"
blockDirtyBuffer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockDirtyBuffer" a) =>
  Lens.Family2.LensLike' f s a
blockDirtyBuffer = Data.ProtoLens.Field.field @"blockDirtyBuffer"
blockGetrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockGetrq" a) =>
  Lens.Family2.LensLike' f s a
blockGetrq = Data.ProtoLens.Field.field @"blockGetrq"
blockPlug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockPlug" a) =>
  Lens.Family2.LensLike' f s a
blockPlug = Data.ProtoLens.Field.field @"blockPlug"
blockRqAbort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockRqAbort" a) =>
  Lens.Family2.LensLike' f s a
blockRqAbort = Data.ProtoLens.Field.field @"blockRqAbort"
blockRqComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockRqComplete" a) =>
  Lens.Family2.LensLike' f s a
blockRqComplete = Data.ProtoLens.Field.field @"blockRqComplete"
blockRqInsert ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockRqInsert" a) =>
  Lens.Family2.LensLike' f s a
blockRqInsert = Data.ProtoLens.Field.field @"blockRqInsert"
blockRqIssue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockRqIssue" a) =>
  Lens.Family2.LensLike' f s a
blockRqIssue = Data.ProtoLens.Field.field @"blockRqIssue"
blockRqRemap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockRqRemap" a) =>
  Lens.Family2.LensLike' f s a
blockRqRemap = Data.ProtoLens.Field.field @"blockRqRemap"
blockRqRequeue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockRqRequeue" a) =>
  Lens.Family2.LensLike' f s a
blockRqRequeue = Data.ProtoLens.Field.field @"blockRqRequeue"
blockSleeprq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockSleeprq" a) =>
  Lens.Family2.LensLike' f s a
blockSleeprq = Data.ProtoLens.Field.field @"blockSleeprq"
blockSplit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockSplit" a) =>
  Lens.Family2.LensLike' f s a
blockSplit = Data.ProtoLens.Field.field @"blockSplit"
blockTouchBuffer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockTouchBuffer" a) =>
  Lens.Family2.LensLike' f s a
blockTouchBuffer = Data.ProtoLens.Field.field @"blockTouchBuffer"
blockUnplug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "blockUnplug" a) =>
  Lens.Family2.LensLike' f s a
blockUnplug = Data.ProtoLens.Field.field @"blockUnplug"
cdevUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cdevUpdate" a) =>
  Lens.Family2.LensLike' f s a
cdevUpdate = Data.ProtoLens.Field.field @"cdevUpdate"
cgroupAttachTask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cgroupAttachTask" a) =>
  Lens.Family2.LensLike' f s a
cgroupAttachTask = Data.ProtoLens.Field.field @"cgroupAttachTask"
cgroupDestroyRoot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cgroupDestroyRoot" a) =>
  Lens.Family2.LensLike' f s a
cgroupDestroyRoot = Data.ProtoLens.Field.field @"cgroupDestroyRoot"
cgroupMkdir ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cgroupMkdir" a) =>
  Lens.Family2.LensLike' f s a
cgroupMkdir = Data.ProtoLens.Field.field @"cgroupMkdir"
cgroupRelease ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cgroupRelease" a) =>
  Lens.Family2.LensLike' f s a
cgroupRelease = Data.ProtoLens.Field.field @"cgroupRelease"
cgroupRemount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cgroupRemount" a) =>
  Lens.Family2.LensLike' f s a
cgroupRemount = Data.ProtoLens.Field.field @"cgroupRemount"
cgroupRename ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cgroupRename" a) =>
  Lens.Family2.LensLike' f s a
cgroupRename = Data.ProtoLens.Field.field @"cgroupRename"
cgroupRmdir ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cgroupRmdir" a) =>
  Lens.Family2.LensLike' f s a
cgroupRmdir = Data.ProtoLens.Field.field @"cgroupRmdir"
cgroupSetupRoot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cgroupSetupRoot" a) =>
  Lens.Family2.LensLike' f s a
cgroupSetupRoot = Data.ProtoLens.Field.field @"cgroupSetupRoot"
cgroupTransferTasks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cgroupTransferTasks" a) =>
  Lens.Family2.LensLike' f s a
cgroupTransferTasks
  = Data.ProtoLens.Field.field @"cgroupTransferTasks"
clkDisable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clkDisable" a) =>
  Lens.Family2.LensLike' f s a
clkDisable = Data.ProtoLens.Field.field @"clkDisable"
clkEnable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clkEnable" a) =>
  Lens.Family2.LensLike' f s a
clkEnable = Data.ProtoLens.Field.field @"clkEnable"
clkSetRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clkSetRate" a) =>
  Lens.Family2.LensLike' f s a
clkSetRate = Data.ProtoLens.Field.field @"clkSetRate"
clockDisable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clockDisable" a) =>
  Lens.Family2.LensLike' f s a
clockDisable = Data.ProtoLens.Field.field @"clockDisable"
clockEnable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clockEnable" a) =>
  Lens.Family2.LensLike' f s a
clockEnable = Data.ProtoLens.Field.field @"clockEnable"
clockSetRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "clockSetRate" a) =>
  Lens.Family2.LensLike' f s a
clockSetRate = Data.ProtoLens.Field.field @"clockSetRate"
cmaAllocInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cmaAllocInfo" a) =>
  Lens.Family2.LensLike' f s a
cmaAllocInfo = Data.ProtoLens.Field.field @"cmaAllocInfo"
cmaAllocStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cmaAllocStart" a) =>
  Lens.Family2.LensLike' f s a
cmaAllocStart = Data.ProtoLens.Field.field @"cmaAllocStart"
commonFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "commonFlags" a) =>
  Lens.Family2.LensLike' f s a
commonFlags = Data.ProtoLens.Field.field @"commonFlags"
console ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "console" a) =>
  Lens.Family2.LensLike' f s a
console = Data.ProtoLens.Field.field @"console"
cpuFrequency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpuFrequency" a) =>
  Lens.Family2.LensLike' f s a
cpuFrequency = Data.ProtoLens.Field.field @"cpuFrequency"
cpuFrequencyLimits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpuFrequencyLimits" a) =>
  Lens.Family2.LensLike' f s a
cpuFrequencyLimits
  = Data.ProtoLens.Field.field @"cpuFrequencyLimits"
cpuIdle ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cpuIdle" a) =>
  Lens.Family2.LensLike' f s a
cpuIdle = Data.ProtoLens.Field.field @"cpuIdle"
cpuhpEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpuhpEnter" a) =>
  Lens.Family2.LensLike' f s a
cpuhpEnter = Data.ProtoLens.Field.field @"cpuhpEnter"
cpuhpExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpuhpExit" a) =>
  Lens.Family2.LensLike' f s a
cpuhpExit = Data.ProtoLens.Field.field @"cpuhpExit"
cpuhpLatency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpuhpLatency" a) =>
  Lens.Family2.LensLike' f s a
cpuhpLatency = Data.ProtoLens.Field.field @"cpuhpLatency"
cpuhpMultiEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpuhpMultiEnter" a) =>
  Lens.Family2.LensLike' f s a
cpuhpMultiEnter = Data.ProtoLens.Field.field @"cpuhpMultiEnter"
cpuhpPause ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "cpuhpPause" a) =>
  Lens.Family2.LensLike' f s a
cpuhpPause = Data.ProtoLens.Field.field @"cpuhpPause"
crosEcSensorhubData ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "crosEcSensorhubData" a) =>
  Lens.Family2.LensLike' f s a
crosEcSensorhubData
  = Data.ProtoLens.Field.field @"crosEcSensorhubData"
dmaAllocContiguousRetry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dmaAllocContiguousRetry" a) =>
  Lens.Family2.LensLike' f s a
dmaAllocContiguousRetry
  = Data.ProtoLens.Field.field @"dmaAllocContiguousRetry"
dmaFenceEmit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dmaFenceEmit" a) =>
  Lens.Family2.LensLike' f s a
dmaFenceEmit = Data.ProtoLens.Field.field @"dmaFenceEmit"
dmaFenceInit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dmaFenceInit" a) =>
  Lens.Family2.LensLike' f s a
dmaFenceInit = Data.ProtoLens.Field.field @"dmaFenceInit"
dmaFenceSignaled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dmaFenceSignaled" a) =>
  Lens.Family2.LensLike' f s a
dmaFenceSignaled = Data.ProtoLens.Field.field @"dmaFenceSignaled"
dmaFenceWaitEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dmaFenceWaitEnd" a) =>
  Lens.Family2.LensLike' f s a
dmaFenceWaitEnd = Data.ProtoLens.Field.field @"dmaFenceWaitEnd"
dmaFenceWaitStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dmaFenceWaitStart" a) =>
  Lens.Family2.LensLike' f s a
dmaFenceWaitStart = Data.ProtoLens.Field.field @"dmaFenceWaitStart"
dmaHeapStat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dmaHeapStat" a) =>
  Lens.Family2.LensLike' f s a
dmaHeapStat = Data.ProtoLens.Field.field @"dmaHeapStat"
dpuTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dpuTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
dpuTracingMarkWrite
  = Data.ProtoLens.Field.field @"dpuTracingMarkWrite"
drmRunJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drmRunJob" a) =>
  Lens.Family2.LensLike' f s a
drmRunJob = Data.ProtoLens.Field.field @"drmRunJob"
drmSchedJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drmSchedJob" a) =>
  Lens.Family2.LensLike' f s a
drmSchedJob = Data.ProtoLens.Field.field @"drmSchedJob"
drmSchedProcessJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drmSchedProcessJob" a) =>
  Lens.Family2.LensLike' f s a
drmSchedProcessJob
  = Data.ProtoLens.Field.field @"drmSchedProcessJob"
drmVblankEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drmVblankEvent" a) =>
  Lens.Family2.LensLike' f s a
drmVblankEvent = Data.ProtoLens.Field.field @"drmVblankEvent"
drmVblankEventDelivered ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "drmVblankEventDelivered" a) =>
  Lens.Family2.LensLike' f s a
drmVblankEventDelivered
  = Data.ProtoLens.Field.field @"drmVblankEventDelivered"
dsiCmdFifoStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "dsiCmdFifoStatus" a) =>
  Lens.Family2.LensLike' f s a
dsiCmdFifoStatus = Data.ProtoLens.Field.field @"dsiCmdFifoStatus"
dsiRx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dsiRx" a) =>
  Lens.Family2.LensLike' f s a
dsiRx = Data.ProtoLens.Field.field @"dsiRx"
dsiTx ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dsiTx" a) =>
  Lens.Family2.LensLike' f s a
dsiTx = Data.ProtoLens.Field.field @"dsiTx"
ext4AllocDaBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4AllocDaBlocks" a) =>
  Lens.Family2.LensLike' f s a
ext4AllocDaBlocks = Data.ProtoLens.Field.field @"ext4AllocDaBlocks"
ext4AllocateBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4AllocateBlocks" a) =>
  Lens.Family2.LensLike' f s a
ext4AllocateBlocks
  = Data.ProtoLens.Field.field @"ext4AllocateBlocks"
ext4AllocateInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4AllocateInode" a) =>
  Lens.Family2.LensLike' f s a
ext4AllocateInode = Data.ProtoLens.Field.field @"ext4AllocateInode"
ext4BeginOrderedTruncate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4BeginOrderedTruncate" a) =>
  Lens.Family2.LensLike' f s a
ext4BeginOrderedTruncate
  = Data.ProtoLens.Field.field @"ext4BeginOrderedTruncate"
ext4CollapseRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4CollapseRange" a) =>
  Lens.Family2.LensLike' f s a
ext4CollapseRange = Data.ProtoLens.Field.field @"ext4CollapseRange"
ext4DaReleaseSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DaReleaseSpace" a) =>
  Lens.Family2.LensLike' f s a
ext4DaReleaseSpace
  = Data.ProtoLens.Field.field @"ext4DaReleaseSpace"
ext4DaReserveSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DaReserveSpace" a) =>
  Lens.Family2.LensLike' f s a
ext4DaReserveSpace
  = Data.ProtoLens.Field.field @"ext4DaReserveSpace"
ext4DaUpdateReserveSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DaUpdateReserveSpace" a) =>
  Lens.Family2.LensLike' f s a
ext4DaUpdateReserveSpace
  = Data.ProtoLens.Field.field @"ext4DaUpdateReserveSpace"
ext4DaWriteBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DaWriteBegin" a) =>
  Lens.Family2.LensLike' f s a
ext4DaWriteBegin = Data.ProtoLens.Field.field @"ext4DaWriteBegin"
ext4DaWriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DaWriteEnd" a) =>
  Lens.Family2.LensLike' f s a
ext4DaWriteEnd = Data.ProtoLens.Field.field @"ext4DaWriteEnd"
ext4DaWritePages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DaWritePages" a) =>
  Lens.Family2.LensLike' f s a
ext4DaWritePages = Data.ProtoLens.Field.field @"ext4DaWritePages"
ext4DaWritePagesExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DaWritePagesExtent" a) =>
  Lens.Family2.LensLike' f s a
ext4DaWritePagesExtent
  = Data.ProtoLens.Field.field @"ext4DaWritePagesExtent"
ext4DirectIOEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DirectIOEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4DirectIOEnter = Data.ProtoLens.Field.field @"ext4DirectIOEnter"
ext4DirectIOExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DirectIOExit" a) =>
  Lens.Family2.LensLike' f s a
ext4DirectIOExit = Data.ProtoLens.Field.field @"ext4DirectIOExit"
ext4DiscardBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DiscardBlocks" a) =>
  Lens.Family2.LensLike' f s a
ext4DiscardBlocks = Data.ProtoLens.Field.field @"ext4DiscardBlocks"
ext4DiscardPreallocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DiscardPreallocations" a) =>
  Lens.Family2.LensLike' f s a
ext4DiscardPreallocations
  = Data.ProtoLens.Field.field @"ext4DiscardPreallocations"
ext4DropInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4DropInode" a) =>
  Lens.Family2.LensLike' f s a
ext4DropInode = Data.ProtoLens.Field.field @"ext4DropInode"
ext4EsCacheExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsCacheExtent" a) =>
  Lens.Family2.LensLike' f s a
ext4EsCacheExtent = Data.ProtoLens.Field.field @"ext4EsCacheExtent"
ext4EsFindDelayedExtentRangeEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsFindDelayedExtentRangeEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4EsFindDelayedExtentRangeEnter
  = Data.ProtoLens.Field.field @"ext4EsFindDelayedExtentRangeEnter"
ext4EsFindDelayedExtentRangeExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsFindDelayedExtentRangeExit" a) =>
  Lens.Family2.LensLike' f s a
ext4EsFindDelayedExtentRangeExit
  = Data.ProtoLens.Field.field @"ext4EsFindDelayedExtentRangeExit"
ext4EsInsertExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsInsertExtent" a) =>
  Lens.Family2.LensLike' f s a
ext4EsInsertExtent
  = Data.ProtoLens.Field.field @"ext4EsInsertExtent"
ext4EsLookupExtentEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsLookupExtentEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4EsLookupExtentEnter
  = Data.ProtoLens.Field.field @"ext4EsLookupExtentEnter"
ext4EsLookupExtentExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsLookupExtentExit" a) =>
  Lens.Family2.LensLike' f s a
ext4EsLookupExtentExit
  = Data.ProtoLens.Field.field @"ext4EsLookupExtentExit"
ext4EsRemoveExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsRemoveExtent" a) =>
  Lens.Family2.LensLike' f s a
ext4EsRemoveExtent
  = Data.ProtoLens.Field.field @"ext4EsRemoveExtent"
ext4EsShrink ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsShrink" a) =>
  Lens.Family2.LensLike' f s a
ext4EsShrink = Data.ProtoLens.Field.field @"ext4EsShrink"
ext4EsShrinkCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsShrinkCount" a) =>
  Lens.Family2.LensLike' f s a
ext4EsShrinkCount = Data.ProtoLens.Field.field @"ext4EsShrinkCount"
ext4EsShrinkScanEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsShrinkScanEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4EsShrinkScanEnter
  = Data.ProtoLens.Field.field @"ext4EsShrinkScanEnter"
ext4EsShrinkScanExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EsShrinkScanExit" a) =>
  Lens.Family2.LensLike' f s a
ext4EsShrinkScanExit
  = Data.ProtoLens.Field.field @"ext4EsShrinkScanExit"
ext4EvictInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4EvictInode" a) =>
  Lens.Family2.LensLike' f s a
ext4EvictInode = Data.ProtoLens.Field.field @"ext4EvictInode"
ext4ExtConvertToInitializedEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtConvertToInitializedEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtConvertToInitializedEnter
  = Data.ProtoLens.Field.field @"ext4ExtConvertToInitializedEnter"
ext4ExtConvertToInitializedFastpath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtConvertToInitializedFastpath" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtConvertToInitializedFastpath
  = Data.ProtoLens.Field.field @"ext4ExtConvertToInitializedFastpath"
ext4ExtHandleUnwrittenExtents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtHandleUnwrittenExtents" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtHandleUnwrittenExtents
  = Data.ProtoLens.Field.field @"ext4ExtHandleUnwrittenExtents"
ext4ExtInCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtInCache" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtInCache = Data.ProtoLens.Field.field @"ext4ExtInCache"
ext4ExtLoadExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtLoadExtent" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtLoadExtent = Data.ProtoLens.Field.field @"ext4ExtLoadExtent"
ext4ExtMapBlocksEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtMapBlocksEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtMapBlocksEnter
  = Data.ProtoLens.Field.field @"ext4ExtMapBlocksEnter"
ext4ExtMapBlocksExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtMapBlocksExit" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtMapBlocksExit
  = Data.ProtoLens.Field.field @"ext4ExtMapBlocksExit"
ext4ExtPutInCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtPutInCache" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtPutInCache = Data.ProtoLens.Field.field @"ext4ExtPutInCache"
ext4ExtRemoveSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtRemoveSpace" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtRemoveSpace
  = Data.ProtoLens.Field.field @"ext4ExtRemoveSpace"
ext4ExtRemoveSpaceDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtRemoveSpaceDone" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtRemoveSpaceDone
  = Data.ProtoLens.Field.field @"ext4ExtRemoveSpaceDone"
ext4ExtRmIdx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtRmIdx" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtRmIdx = Data.ProtoLens.Field.field @"ext4ExtRmIdx"
ext4ExtRmLeaf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtRmLeaf" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtRmLeaf = Data.ProtoLens.Field.field @"ext4ExtRmLeaf"
ext4ExtShowExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ExtShowExtent" a) =>
  Lens.Family2.LensLike' f s a
ext4ExtShowExtent = Data.ProtoLens.Field.field @"ext4ExtShowExtent"
ext4FallocateEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4FallocateEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4FallocateEnter
  = Data.ProtoLens.Field.field @"ext4FallocateEnter"
ext4FallocateExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4FallocateExit" a) =>
  Lens.Family2.LensLike' f s a
ext4FallocateExit = Data.ProtoLens.Field.field @"ext4FallocateExit"
ext4FindDelallocRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4FindDelallocRange" a) =>
  Lens.Family2.LensLike' f s a
ext4FindDelallocRange
  = Data.ProtoLens.Field.field @"ext4FindDelallocRange"
ext4Forget ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4Forget" a) =>
  Lens.Family2.LensLike' f s a
ext4Forget = Data.ProtoLens.Field.field @"ext4Forget"
ext4FreeBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4FreeBlocks" a) =>
  Lens.Family2.LensLike' f s a
ext4FreeBlocks = Data.ProtoLens.Field.field @"ext4FreeBlocks"
ext4FreeInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4FreeInode" a) =>
  Lens.Family2.LensLike' f s a
ext4FreeInode = Data.ProtoLens.Field.field @"ext4FreeInode"
ext4GetImpliedClusterAllocExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4GetImpliedClusterAllocExit" a) =>
  Lens.Family2.LensLike' f s a
ext4GetImpliedClusterAllocExit
  = Data.ProtoLens.Field.field @"ext4GetImpliedClusterAllocExit"
ext4GetReservedClusterAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4GetReservedClusterAlloc" a) =>
  Lens.Family2.LensLike' f s a
ext4GetReservedClusterAlloc
  = Data.ProtoLens.Field.field @"ext4GetReservedClusterAlloc"
ext4IndMapBlocksEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4IndMapBlocksEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4IndMapBlocksEnter
  = Data.ProtoLens.Field.field @"ext4IndMapBlocksEnter"
ext4IndMapBlocksExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4IndMapBlocksExit" a) =>
  Lens.Family2.LensLike' f s a
ext4IndMapBlocksExit
  = Data.ProtoLens.Field.field @"ext4IndMapBlocksExit"
ext4InsertRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4InsertRange" a) =>
  Lens.Family2.LensLike' f s a
ext4InsertRange = Data.ProtoLens.Field.field @"ext4InsertRange"
ext4Invalidatepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4Invalidatepage" a) =>
  Lens.Family2.LensLike' f s a
ext4Invalidatepage
  = Data.ProtoLens.Field.field @"ext4Invalidatepage"
ext4JournalStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4JournalStart" a) =>
  Lens.Family2.LensLike' f s a
ext4JournalStart = Data.ProtoLens.Field.field @"ext4JournalStart"
ext4JournalStartReserved ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4JournalStartReserved" a) =>
  Lens.Family2.LensLike' f s a
ext4JournalStartReserved
  = Data.ProtoLens.Field.field @"ext4JournalStartReserved"
ext4JournalledInvalidatepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4JournalledInvalidatepage" a) =>
  Lens.Family2.LensLike' f s a
ext4JournalledInvalidatepage
  = Data.ProtoLens.Field.field @"ext4JournalledInvalidatepage"
ext4JournalledWriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4JournalledWriteEnd" a) =>
  Lens.Family2.LensLike' f s a
ext4JournalledWriteEnd
  = Data.ProtoLens.Field.field @"ext4JournalledWriteEnd"
ext4LoadInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4LoadInode" a) =>
  Lens.Family2.LensLike' f s a
ext4LoadInode = Data.ProtoLens.Field.field @"ext4LoadInode"
ext4LoadInodeBitmap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4LoadInodeBitmap" a) =>
  Lens.Family2.LensLike' f s a
ext4LoadInodeBitmap
  = Data.ProtoLens.Field.field @"ext4LoadInodeBitmap"
ext4MarkInodeDirty ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MarkInodeDirty" a) =>
  Lens.Family2.LensLike' f s a
ext4MarkInodeDirty
  = Data.ProtoLens.Field.field @"ext4MarkInodeDirty"
ext4MbBitmapLoad ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MbBitmapLoad" a) =>
  Lens.Family2.LensLike' f s a
ext4MbBitmapLoad = Data.ProtoLens.Field.field @"ext4MbBitmapLoad"
ext4MbBuddyBitmapLoad ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MbBuddyBitmapLoad" a) =>
  Lens.Family2.LensLike' f s a
ext4MbBuddyBitmapLoad
  = Data.ProtoLens.Field.field @"ext4MbBuddyBitmapLoad"
ext4MbDiscardPreallocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MbDiscardPreallocations" a) =>
  Lens.Family2.LensLike' f s a
ext4MbDiscardPreallocations
  = Data.ProtoLens.Field.field @"ext4MbDiscardPreallocations"
ext4MbNewGroupPa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MbNewGroupPa" a) =>
  Lens.Family2.LensLike' f s a
ext4MbNewGroupPa = Data.ProtoLens.Field.field @"ext4MbNewGroupPa"
ext4MbNewInodePa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MbNewInodePa" a) =>
  Lens.Family2.LensLike' f s a
ext4MbNewInodePa = Data.ProtoLens.Field.field @"ext4MbNewInodePa"
ext4MbReleaseGroupPa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MbReleaseGroupPa" a) =>
  Lens.Family2.LensLike' f s a
ext4MbReleaseGroupPa
  = Data.ProtoLens.Field.field @"ext4MbReleaseGroupPa"
ext4MbReleaseInodePa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MbReleaseInodePa" a) =>
  Lens.Family2.LensLike' f s a
ext4MbReleaseInodePa
  = Data.ProtoLens.Field.field @"ext4MbReleaseInodePa"
ext4MballocAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MballocAlloc" a) =>
  Lens.Family2.LensLike' f s a
ext4MballocAlloc = Data.ProtoLens.Field.field @"ext4MballocAlloc"
ext4MballocDiscard ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MballocDiscard" a) =>
  Lens.Family2.LensLike' f s a
ext4MballocDiscard
  = Data.ProtoLens.Field.field @"ext4MballocDiscard"
ext4MballocFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MballocFree" a) =>
  Lens.Family2.LensLike' f s a
ext4MballocFree = Data.ProtoLens.Field.field @"ext4MballocFree"
ext4MballocPrealloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4MballocPrealloc" a) =>
  Lens.Family2.LensLike' f s a
ext4MballocPrealloc
  = Data.ProtoLens.Field.field @"ext4MballocPrealloc"
ext4OtherInodeUpdateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4OtherInodeUpdateTime" a) =>
  Lens.Family2.LensLike' f s a
ext4OtherInodeUpdateTime
  = Data.ProtoLens.Field.field @"ext4OtherInodeUpdateTime"
ext4PunchHole ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4PunchHole" a) =>
  Lens.Family2.LensLike' f s a
ext4PunchHole = Data.ProtoLens.Field.field @"ext4PunchHole"
ext4ReadBlockBitmapLoad ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ReadBlockBitmapLoad" a) =>
  Lens.Family2.LensLike' f s a
ext4ReadBlockBitmapLoad
  = Data.ProtoLens.Field.field @"ext4ReadBlockBitmapLoad"
ext4Readpage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4Readpage" a) =>
  Lens.Family2.LensLike' f s a
ext4Readpage = Data.ProtoLens.Field.field @"ext4Readpage"
ext4Releasepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4Releasepage" a) =>
  Lens.Family2.LensLike' f s a
ext4Releasepage = Data.ProtoLens.Field.field @"ext4Releasepage"
ext4RemoveBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4RemoveBlocks" a) =>
  Lens.Family2.LensLike' f s a
ext4RemoveBlocks = Data.ProtoLens.Field.field @"ext4RemoveBlocks"
ext4RequestBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4RequestBlocks" a) =>
  Lens.Family2.LensLike' f s a
ext4RequestBlocks = Data.ProtoLens.Field.field @"ext4RequestBlocks"
ext4RequestInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4RequestInode" a) =>
  Lens.Family2.LensLike' f s a
ext4RequestInode = Data.ProtoLens.Field.field @"ext4RequestInode"
ext4SyncFileEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4SyncFileEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4SyncFileEnter = Data.ProtoLens.Field.field @"ext4SyncFileEnter"
ext4SyncFileExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4SyncFileExit" a) =>
  Lens.Family2.LensLike' f s a
ext4SyncFileExit = Data.ProtoLens.Field.field @"ext4SyncFileExit"
ext4SyncFs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4SyncFs" a) =>
  Lens.Family2.LensLike' f s a
ext4SyncFs = Data.ProtoLens.Field.field @"ext4SyncFs"
ext4TrimAllFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4TrimAllFree" a) =>
  Lens.Family2.LensLike' f s a
ext4TrimAllFree = Data.ProtoLens.Field.field @"ext4TrimAllFree"
ext4TrimExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4TrimExtent" a) =>
  Lens.Family2.LensLike' f s a
ext4TrimExtent = Data.ProtoLens.Field.field @"ext4TrimExtent"
ext4TruncateEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4TruncateEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4TruncateEnter = Data.ProtoLens.Field.field @"ext4TruncateEnter"
ext4TruncateExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4TruncateExit" a) =>
  Lens.Family2.LensLike' f s a
ext4TruncateExit = Data.ProtoLens.Field.field @"ext4TruncateExit"
ext4UnlinkEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4UnlinkEnter" a) =>
  Lens.Family2.LensLike' f s a
ext4UnlinkEnter = Data.ProtoLens.Field.field @"ext4UnlinkEnter"
ext4UnlinkExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4UnlinkExit" a) =>
  Lens.Family2.LensLike' f s a
ext4UnlinkExit = Data.ProtoLens.Field.field @"ext4UnlinkExit"
ext4WriteBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4WriteBegin" a) =>
  Lens.Family2.LensLike' f s a
ext4WriteBegin = Data.ProtoLens.Field.field @"ext4WriteBegin"
ext4WriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4WriteEnd" a) =>
  Lens.Family2.LensLike' f s a
ext4WriteEnd = Data.ProtoLens.Field.field @"ext4WriteEnd"
ext4Writepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4Writepage" a) =>
  Lens.Family2.LensLike' f s a
ext4Writepage = Data.ProtoLens.Field.field @"ext4Writepage"
ext4Writepages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4Writepages" a) =>
  Lens.Family2.LensLike' f s a
ext4Writepages = Data.ProtoLens.Field.field @"ext4Writepages"
ext4WritepagesResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4WritepagesResult" a) =>
  Lens.Family2.LensLike' f s a
ext4WritepagesResult
  = Data.ProtoLens.Field.field @"ext4WritepagesResult"
ext4ZeroRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ext4ZeroRange" a) =>
  Lens.Family2.LensLike' f s a
ext4ZeroRange = Data.ProtoLens.Field.field @"ext4ZeroRange"
f2fsDoSubmitBio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsDoSubmitBio" a) =>
  Lens.Family2.LensLike' f s a
f2fsDoSubmitBio = Data.ProtoLens.Field.field @"f2fsDoSubmitBio"
f2fsEvictInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsEvictInode" a) =>
  Lens.Family2.LensLike' f s a
f2fsEvictInode = Data.ProtoLens.Field.field @"f2fsEvictInode"
f2fsFallocate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsFallocate" a) =>
  Lens.Family2.LensLike' f s a
f2fsFallocate = Data.ProtoLens.Field.field @"f2fsFallocate"
f2fsGetDataBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsGetDataBlock" a) =>
  Lens.Family2.LensLike' f s a
f2fsGetDataBlock = Data.ProtoLens.Field.field @"f2fsGetDataBlock"
f2fsGetVictim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsGetVictim" a) =>
  Lens.Family2.LensLike' f s a
f2fsGetVictim = Data.ProtoLens.Field.field @"f2fsGetVictim"
f2fsIget ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsIget" a) =>
  Lens.Family2.LensLike' f s a
f2fsIget = Data.ProtoLens.Field.field @"f2fsIget"
f2fsIgetExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsIgetExit" a) =>
  Lens.Family2.LensLike' f s a
f2fsIgetExit = Data.ProtoLens.Field.field @"f2fsIgetExit"
f2fsIostat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsIostat" a) =>
  Lens.Family2.LensLike' f s a
f2fsIostat = Data.ProtoLens.Field.field @"f2fsIostat"
f2fsIostatLatency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsIostatLatency" a) =>
  Lens.Family2.LensLike' f s a
f2fsIostatLatency = Data.ProtoLens.Field.field @"f2fsIostatLatency"
f2fsNewInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsNewInode" a) =>
  Lens.Family2.LensLike' f s a
f2fsNewInode = Data.ProtoLens.Field.field @"f2fsNewInode"
f2fsReadpage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsReadpage" a) =>
  Lens.Family2.LensLike' f s a
f2fsReadpage = Data.ProtoLens.Field.field @"f2fsReadpage"
f2fsReserveNewBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsReserveNewBlock" a) =>
  Lens.Family2.LensLike' f s a
f2fsReserveNewBlock
  = Data.ProtoLens.Field.field @"f2fsReserveNewBlock"
f2fsSetPageDirty ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsSetPageDirty" a) =>
  Lens.Family2.LensLike' f s a
f2fsSetPageDirty = Data.ProtoLens.Field.field @"f2fsSetPageDirty"
f2fsSubmitWritePage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsSubmitWritePage" a) =>
  Lens.Family2.LensLike' f s a
f2fsSubmitWritePage
  = Data.ProtoLens.Field.field @"f2fsSubmitWritePage"
f2fsSyncFileEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsSyncFileEnter" a) =>
  Lens.Family2.LensLike' f s a
f2fsSyncFileEnter = Data.ProtoLens.Field.field @"f2fsSyncFileEnter"
f2fsSyncFileExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsSyncFileExit" a) =>
  Lens.Family2.LensLike' f s a
f2fsSyncFileExit = Data.ProtoLens.Field.field @"f2fsSyncFileExit"
f2fsSyncFs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsSyncFs" a) =>
  Lens.Family2.LensLike' f s a
f2fsSyncFs = Data.ProtoLens.Field.field @"f2fsSyncFs"
f2fsTruncate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncate" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncate = Data.ProtoLens.Field.field @"f2fsTruncate"
f2fsTruncateBlocksEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncateBlocksEnter" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncateBlocksEnter
  = Data.ProtoLens.Field.field @"f2fsTruncateBlocksEnter"
f2fsTruncateBlocksExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncateBlocksExit" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncateBlocksExit
  = Data.ProtoLens.Field.field @"f2fsTruncateBlocksExit"
f2fsTruncateDataBlocksRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncateDataBlocksRange" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncateDataBlocksRange
  = Data.ProtoLens.Field.field @"f2fsTruncateDataBlocksRange"
f2fsTruncateInodeBlocksEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncateInodeBlocksEnter" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncateInodeBlocksEnter
  = Data.ProtoLens.Field.field @"f2fsTruncateInodeBlocksEnter"
f2fsTruncateInodeBlocksExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncateInodeBlocksExit" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncateInodeBlocksExit
  = Data.ProtoLens.Field.field @"f2fsTruncateInodeBlocksExit"
f2fsTruncateNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncateNode" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncateNode = Data.ProtoLens.Field.field @"f2fsTruncateNode"
f2fsTruncateNodesEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncateNodesEnter" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncateNodesEnter
  = Data.ProtoLens.Field.field @"f2fsTruncateNodesEnter"
f2fsTruncateNodesExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncateNodesExit" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncateNodesExit
  = Data.ProtoLens.Field.field @"f2fsTruncateNodesExit"
f2fsTruncatePartialNodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsTruncatePartialNodes" a) =>
  Lens.Family2.LensLike' f s a
f2fsTruncatePartialNodes
  = Data.ProtoLens.Field.field @"f2fsTruncatePartialNodes"
f2fsUnlinkEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsUnlinkEnter" a) =>
  Lens.Family2.LensLike' f s a
f2fsUnlinkEnter = Data.ProtoLens.Field.field @"f2fsUnlinkEnter"
f2fsUnlinkExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsUnlinkExit" a) =>
  Lens.Family2.LensLike' f s a
f2fsUnlinkExit = Data.ProtoLens.Field.field @"f2fsUnlinkExit"
f2fsVmPageMkwrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsVmPageMkwrite" a) =>
  Lens.Family2.LensLike' f s a
f2fsVmPageMkwrite = Data.ProtoLens.Field.field @"f2fsVmPageMkwrite"
f2fsWriteBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsWriteBegin" a) =>
  Lens.Family2.LensLike' f s a
f2fsWriteBegin = Data.ProtoLens.Field.field @"f2fsWriteBegin"
f2fsWriteCheckpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsWriteCheckpoint" a) =>
  Lens.Family2.LensLike' f s a
f2fsWriteCheckpoint
  = Data.ProtoLens.Field.field @"f2fsWriteCheckpoint"
f2fsWriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "f2fsWriteEnd" a) =>
  Lens.Family2.LensLike' f s a
f2fsWriteEnd = Data.ProtoLens.Field.field @"f2fsWriteEnd"
fastrpcDmaStat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fastrpcDmaStat" a) =>
  Lens.Family2.LensLike' f s a
fastrpcDmaStat = Data.ProtoLens.Field.field @"fastrpcDmaStat"
fenceDestroy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fenceDestroy" a) =>
  Lens.Family2.LensLike' f s a
fenceDestroy = Data.ProtoLens.Field.field @"fenceDestroy"
fenceEnableSignal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fenceEnableSignal" a) =>
  Lens.Family2.LensLike' f s a
fenceEnableSignal = Data.ProtoLens.Field.field @"fenceEnableSignal"
fenceInit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fenceInit" a) =>
  Lens.Family2.LensLike' f s a
fenceInit = Data.ProtoLens.Field.field @"fenceInit"
fenceSignaled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "fenceSignaled" a) =>
  Lens.Family2.LensLike' f s a
fenceSignaled = Data.ProtoLens.Field.field @"fenceSignaled"
funcgraphEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "funcgraphEntry" a) =>
  Lens.Family2.LensLike' f s a
funcgraphEntry = Data.ProtoLens.Field.field @"funcgraphEntry"
funcgraphExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "funcgraphExit" a) =>
  Lens.Family2.LensLike' f s a
funcgraphExit = Data.ProtoLens.Field.field @"funcgraphExit"
g2dTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "g2dTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
g2dTracingMarkWrite
  = Data.ProtoLens.Field.field @"g2dTracingMarkWrite"
generic ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "generic" a) =>
  Lens.Family2.LensLike' f s a
generic = Data.ProtoLens.Field.field @"generic"
gpuFrequency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gpuFrequency" a) =>
  Lens.Family2.LensLike' f s a
gpuFrequency = Data.ProtoLens.Field.field @"gpuFrequency"
gpuMemTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "gpuMemTotal" a) =>
  Lens.Family2.LensLike' f s a
gpuMemTotal = Data.ProtoLens.Field.field @"gpuMemTotal"
hostHcall ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostHcall" a) =>
  Lens.Family2.LensLike' f s a
hostHcall = Data.ProtoLens.Field.field @"hostHcall"
hostMemAbort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hostMemAbort" a) =>
  Lens.Family2.LensLike' f s a
hostMemAbort = Data.ProtoLens.Field.field @"hostMemAbort"
hostSmc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hostSmc" a) =>
  Lens.Family2.LensLike' f s a
hostSmc = Data.ProtoLens.Field.field @"hostSmc"
hypEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "hypEnter" a) =>
  Lens.Family2.LensLike' f s a
hypEnter = Data.ProtoLens.Field.field @"hypEnter"
hypExit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "hypExit" a) =>
  Lens.Family2.LensLike' f s a
hypExit = Data.ProtoLens.Field.field @"hypExit"
i2cRead ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "i2cRead" a) =>
  Lens.Family2.LensLike' f s a
i2cRead = Data.ProtoLens.Field.field @"i2cRead"
i2cReply ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "i2cReply" a) =>
  Lens.Family2.LensLike' f s a
i2cReply = Data.ProtoLens.Field.field @"i2cReply"
i2cResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "i2cResult" a) =>
  Lens.Family2.LensLike' f s a
i2cResult = Data.ProtoLens.Field.field @"i2cResult"
i2cWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "i2cWrite" a) =>
  Lens.Family2.LensLike' f s a
i2cWrite = Data.ProtoLens.Field.field @"i2cWrite"
inetSockSetState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "inetSockSetState" a) =>
  Lens.Family2.LensLike' f s a
inetSockSetState = Data.ProtoLens.Field.field @"inetSockSetState"
iommuMapRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "iommuMapRange" a) =>
  Lens.Family2.LensLike' f s a
iommuMapRange = Data.ProtoLens.Field.field @"iommuMapRange"
iommuSecPtblMapRangeEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "iommuSecPtblMapRangeEnd" a) =>
  Lens.Family2.LensLike' f s a
iommuSecPtblMapRangeEnd
  = Data.ProtoLens.Field.field @"iommuSecPtblMapRangeEnd"
iommuSecPtblMapRangeStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "iommuSecPtblMapRangeStart" a) =>
  Lens.Family2.LensLike' f s a
iommuSecPtblMapRangeStart
  = Data.ProtoLens.Field.field @"iommuSecPtblMapRangeStart"
ionAllocBufferEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionAllocBufferEnd" a) =>
  Lens.Family2.LensLike' f s a
ionAllocBufferEnd = Data.ProtoLens.Field.field @"ionAllocBufferEnd"
ionAllocBufferFail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionAllocBufferFail" a) =>
  Lens.Family2.LensLike' f s a
ionAllocBufferFail
  = Data.ProtoLens.Field.field @"ionAllocBufferFail"
ionAllocBufferFallback ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionAllocBufferFallback" a) =>
  Lens.Family2.LensLike' f s a
ionAllocBufferFallback
  = Data.ProtoLens.Field.field @"ionAllocBufferFallback"
ionAllocBufferStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionAllocBufferStart" a) =>
  Lens.Family2.LensLike' f s a
ionAllocBufferStart
  = Data.ProtoLens.Field.field @"ionAllocBufferStart"
ionBufferCreate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionBufferCreate" a) =>
  Lens.Family2.LensLike' f s a
ionBufferCreate = Data.ProtoLens.Field.field @"ionBufferCreate"
ionBufferDestroy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionBufferDestroy" a) =>
  Lens.Family2.LensLike' f s a
ionBufferDestroy = Data.ProtoLens.Field.field @"ionBufferDestroy"
ionCpAllocRetry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionCpAllocRetry" a) =>
  Lens.Family2.LensLike' f s a
ionCpAllocRetry = Data.ProtoLens.Field.field @"ionCpAllocRetry"
ionCpSecureBufferEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionCpSecureBufferEnd" a) =>
  Lens.Family2.LensLike' f s a
ionCpSecureBufferEnd
  = Data.ProtoLens.Field.field @"ionCpSecureBufferEnd"
ionCpSecureBufferStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionCpSecureBufferStart" a) =>
  Lens.Family2.LensLike' f s a
ionCpSecureBufferStart
  = Data.ProtoLens.Field.field @"ionCpSecureBufferStart"
ionHeapGrow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionHeapGrow" a) =>
  Lens.Family2.LensLike' f s a
ionHeapGrow = Data.ProtoLens.Field.field @"ionHeapGrow"
ionHeapShrink ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionHeapShrink" a) =>
  Lens.Family2.LensLike' f s a
ionHeapShrink = Data.ProtoLens.Field.field @"ionHeapShrink"
ionPrefetching ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionPrefetching" a) =>
  Lens.Family2.LensLike' f s a
ionPrefetching = Data.ProtoLens.Field.field @"ionPrefetching"
ionSecureCmaAddToPoolEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionSecureCmaAddToPoolEnd" a) =>
  Lens.Family2.LensLike' f s a
ionSecureCmaAddToPoolEnd
  = Data.ProtoLens.Field.field @"ionSecureCmaAddToPoolEnd"
ionSecureCmaAddToPoolStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionSecureCmaAddToPoolStart" a) =>
  Lens.Family2.LensLike' f s a
ionSecureCmaAddToPoolStart
  = Data.ProtoLens.Field.field @"ionSecureCmaAddToPoolStart"
ionSecureCmaAllocateEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionSecureCmaAllocateEnd" a) =>
  Lens.Family2.LensLike' f s a
ionSecureCmaAllocateEnd
  = Data.ProtoLens.Field.field @"ionSecureCmaAllocateEnd"
ionSecureCmaAllocateStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionSecureCmaAllocateStart" a) =>
  Lens.Family2.LensLike' f s a
ionSecureCmaAllocateStart
  = Data.ProtoLens.Field.field @"ionSecureCmaAllocateStart"
ionSecureCmaShrinkPoolEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionSecureCmaShrinkPoolEnd" a) =>
  Lens.Family2.LensLike' f s a
ionSecureCmaShrinkPoolEnd
  = Data.ProtoLens.Field.field @"ionSecureCmaShrinkPoolEnd"
ionSecureCmaShrinkPoolStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ionSecureCmaShrinkPoolStart" a) =>
  Lens.Family2.LensLike' f s a
ionSecureCmaShrinkPoolStart
  = Data.ProtoLens.Field.field @"ionSecureCmaShrinkPoolStart"
ionStat ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ionStat" a) =>
  Lens.Family2.LensLike' f s a
ionStat = Data.ProtoLens.Field.field @"ionStat"
ipiEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ipiEntry" a) =>
  Lens.Family2.LensLike' f s a
ipiEntry = Data.ProtoLens.Field.field @"ipiEntry"
ipiExit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "ipiExit" a) =>
  Lens.Family2.LensLike' f s a
ipiExit = Data.ProtoLens.Field.field @"ipiExit"
ipiRaise ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ipiRaise" a) =>
  Lens.Family2.LensLike' f s a
ipiRaise = Data.ProtoLens.Field.field @"ipiRaise"
irqHandlerEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "irqHandlerEntry" a) =>
  Lens.Family2.LensLike' f s a
irqHandlerEntry = Data.ProtoLens.Field.field @"irqHandlerEntry"
irqHandlerExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "irqHandlerExit" a) =>
  Lens.Family2.LensLike' f s a
irqHandlerExit = Data.ProtoLens.Field.field @"irqHandlerExit"
kfree ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "kfree" a) =>
  Lens.Family2.LensLike' f s a
kfree = Data.ProtoLens.Field.field @"kfree"
kfreeSkb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kfreeSkb" a) =>
  Lens.Family2.LensLike' f s a
kfreeSkb = Data.ProtoLens.Field.field @"kfreeSkb"
kmalloc ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "kmalloc" a) =>
  Lens.Family2.LensLike' f s a
kmalloc = Data.ProtoLens.Field.field @"kmalloc"
kmallocNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kmallocNode" a) =>
  Lens.Family2.LensLike' f s a
kmallocNode = Data.ProtoLens.Field.field @"kmallocNode"
kmemCacheAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kmemCacheAlloc" a) =>
  Lens.Family2.LensLike' f s a
kmemCacheAlloc = Data.ProtoLens.Field.field @"kmemCacheAlloc"
kmemCacheAllocNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kmemCacheAllocNode" a) =>
  Lens.Family2.LensLike' f s a
kmemCacheAllocNode
  = Data.ProtoLens.Field.field @"kmemCacheAllocNode"
kmemCacheFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kmemCacheFree" a) =>
  Lens.Family2.LensLike' f s a
kmemCacheFree = Data.ProtoLens.Field.field @"kmemCacheFree"
kvmAccessFault ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmAccessFault" a) =>
  Lens.Family2.LensLike' f s a
kvmAccessFault = Data.ProtoLens.Field.field @"kvmAccessFault"
kvmAckIrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmAckIrq" a) =>
  Lens.Family2.LensLike' f s a
kvmAckIrq = Data.ProtoLens.Field.field @"kvmAckIrq"
kvmAgeHva ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmAgeHva" a) =>
  Lens.Family2.LensLike' f s a
kvmAgeHva = Data.ProtoLens.Field.field @"kvmAgeHva"
kvmAgePage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmAgePage" a) =>
  Lens.Family2.LensLike' f s a
kvmAgePage = Data.ProtoLens.Field.field @"kvmAgePage"
kvmArmClearDebug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmArmClearDebug" a) =>
  Lens.Family2.LensLike' f s a
kvmArmClearDebug = Data.ProtoLens.Field.field @"kvmArmClearDebug"
kvmArmSetDreg32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmArmSetDreg32" a) =>
  Lens.Family2.LensLike' f s a
kvmArmSetDreg32 = Data.ProtoLens.Field.field @"kvmArmSetDreg32"
kvmArmSetRegset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmArmSetRegset" a) =>
  Lens.Family2.LensLike' f s a
kvmArmSetRegset = Data.ProtoLens.Field.field @"kvmArmSetRegset"
kvmArmSetupDebug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmArmSetupDebug" a) =>
  Lens.Family2.LensLike' f s a
kvmArmSetupDebug = Data.ProtoLens.Field.field @"kvmArmSetupDebug"
kvmEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmEntry" a) =>
  Lens.Family2.LensLike' f s a
kvmEntry = Data.ProtoLens.Field.field @"kvmEntry"
kvmExit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "kvmExit" a) =>
  Lens.Family2.LensLike' f s a
kvmExit = Data.ProtoLens.Field.field @"kvmExit"
kvmFpu ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "kvmFpu" a) =>
  Lens.Family2.LensLike' f s a
kvmFpu = Data.ProtoLens.Field.field @"kvmFpu"
kvmGetTimerMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmGetTimerMap" a) =>
  Lens.Family2.LensLike' f s a
kvmGetTimerMap = Data.ProtoLens.Field.field @"kvmGetTimerMap"
kvmGuestFault ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmGuestFault" a) =>
  Lens.Family2.LensLike' f s a
kvmGuestFault = Data.ProtoLens.Field.field @"kvmGuestFault"
kvmHandleSysReg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmHandleSysReg" a) =>
  Lens.Family2.LensLike' f s a
kvmHandleSysReg = Data.ProtoLens.Field.field @"kvmHandleSysReg"
kvmHvcArm64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmHvcArm64" a) =>
  Lens.Family2.LensLike' f s a
kvmHvcArm64 = Data.ProtoLens.Field.field @"kvmHvcArm64"
kvmIrqLine ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmIrqLine" a) =>
  Lens.Family2.LensLike' f s a
kvmIrqLine = Data.ProtoLens.Field.field @"kvmIrqLine"
kvmMmio ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "kvmMmio" a) =>
  Lens.Family2.LensLike' f s a
kvmMmio = Data.ProtoLens.Field.field @"kvmMmio"
kvmMmioEmulate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmMmioEmulate" a) =>
  Lens.Family2.LensLike' f s a
kvmMmioEmulate = Data.ProtoLens.Field.field @"kvmMmioEmulate"
kvmSetGuestDebug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmSetGuestDebug" a) =>
  Lens.Family2.LensLike' f s a
kvmSetGuestDebug = Data.ProtoLens.Field.field @"kvmSetGuestDebug"
kvmSetIrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmSetIrq" a) =>
  Lens.Family2.LensLike' f s a
kvmSetIrq = Data.ProtoLens.Field.field @"kvmSetIrq"
kvmSetSpteHva ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmSetSpteHva" a) =>
  Lens.Family2.LensLike' f s a
kvmSetSpteHva = Data.ProtoLens.Field.field @"kvmSetSpteHva"
kvmSetWayFlush ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmSetWayFlush" a) =>
  Lens.Family2.LensLike' f s a
kvmSetWayFlush = Data.ProtoLens.Field.field @"kvmSetWayFlush"
kvmSysAccess ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmSysAccess" a) =>
  Lens.Family2.LensLike' f s a
kvmSysAccess = Data.ProtoLens.Field.field @"kvmSysAccess"
kvmTestAgeHva ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmTestAgeHva" a) =>
  Lens.Family2.LensLike' f s a
kvmTestAgeHva = Data.ProtoLens.Field.field @"kvmTestAgeHva"
kvmTimerEmulate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmTimerEmulate" a) =>
  Lens.Family2.LensLike' f s a
kvmTimerEmulate = Data.ProtoLens.Field.field @"kvmTimerEmulate"
kvmTimerHrtimerExpire ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmTimerHrtimerExpire" a) =>
  Lens.Family2.LensLike' f s a
kvmTimerHrtimerExpire
  = Data.ProtoLens.Field.field @"kvmTimerHrtimerExpire"
kvmTimerRestoreState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmTimerRestoreState" a) =>
  Lens.Family2.LensLike' f s a
kvmTimerRestoreState
  = Data.ProtoLens.Field.field @"kvmTimerRestoreState"
kvmTimerSaveState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmTimerSaveState" a) =>
  Lens.Family2.LensLike' f s a
kvmTimerSaveState = Data.ProtoLens.Field.field @"kvmTimerSaveState"
kvmTimerUpdateIrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmTimerUpdateIrq" a) =>
  Lens.Family2.LensLike' f s a
kvmTimerUpdateIrq = Data.ProtoLens.Field.field @"kvmTimerUpdateIrq"
kvmToggleCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmToggleCache" a) =>
  Lens.Family2.LensLike' f s a
kvmToggleCache = Data.ProtoLens.Field.field @"kvmToggleCache"
kvmUnmapHvaRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmUnmapHvaRange" a) =>
  Lens.Family2.LensLike' f s a
kvmUnmapHvaRange = Data.ProtoLens.Field.field @"kvmUnmapHvaRange"
kvmUserspaceExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmUserspaceExit" a) =>
  Lens.Family2.LensLike' f s a
kvmUserspaceExit = Data.ProtoLens.Field.field @"kvmUserspaceExit"
kvmVcpuWakeup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmVcpuWakeup" a) =>
  Lens.Family2.LensLike' f s a
kvmVcpuWakeup = Data.ProtoLens.Field.field @"kvmVcpuWakeup"
kvmWfxArm64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "kvmWfxArm64" a) =>
  Lens.Family2.LensLike' f s a
kvmWfxArm64 = Data.ProtoLens.Field.field @"kvmWfxArm64"
lowmemoryKill ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lowmemoryKill" a) =>
  Lens.Family2.LensLike' f s a
lowmemoryKill = Data.ProtoLens.Field.field @"lowmemoryKill"
lwisTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "lwisTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
lwisTracingMarkWrite
  = Data.ProtoLens.Field.field @"lwisTracingMarkWrite"
maliMaliCSFINTERRUPTEND ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maliMaliCSFINTERRUPTEND" a) =>
  Lens.Family2.LensLike' f s a
maliMaliCSFINTERRUPTEND
  = Data.ProtoLens.Field.field @"maliMaliCSFINTERRUPTEND"
maliMaliCSFINTERRUPTSTART ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maliMaliCSFINTERRUPTSTART" a) =>
  Lens.Family2.LensLike' f s a
maliMaliCSFINTERRUPTSTART
  = Data.ProtoLens.Field.field @"maliMaliCSFINTERRUPTSTART"
maliMaliKCPUCQSSET ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maliMaliKCPUCQSSET" a) =>
  Lens.Family2.LensLike' f s a
maliMaliKCPUCQSSET
  = Data.ProtoLens.Field.field @"maliMaliKCPUCQSSET"
maliMaliKCPUCQSWAITEND ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maliMaliKCPUCQSWAITEND" a) =>
  Lens.Family2.LensLike' f s a
maliMaliKCPUCQSWAITEND
  = Data.ProtoLens.Field.field @"maliMaliKCPUCQSWAITEND"
maliMaliKCPUCQSWAITSTART ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maliMaliKCPUCQSWAITSTART" a) =>
  Lens.Family2.LensLike' f s a
maliMaliKCPUCQSWAITSTART
  = Data.ProtoLens.Field.field @"maliMaliKCPUCQSWAITSTART"
maliMaliKCPUFENCESIGNAL ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maliMaliKCPUFENCESIGNAL" a) =>
  Lens.Family2.LensLike' f s a
maliMaliKCPUFENCESIGNAL
  = Data.ProtoLens.Field.field @"maliMaliKCPUFENCESIGNAL"
maliMaliKCPUFENCEWAITEND ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maliMaliKCPUFENCEWAITEND" a) =>
  Lens.Family2.LensLike' f s a
maliMaliKCPUFENCEWAITEND
  = Data.ProtoLens.Field.field @"maliMaliKCPUFENCEWAITEND"
maliMaliKCPUFENCEWAITSTART ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maliMaliKCPUFENCEWAITSTART" a) =>
  Lens.Family2.LensLike' f s a
maliMaliKCPUFENCEWAITSTART
  = Data.ProtoLens.Field.field @"maliMaliKCPUFENCEWAITSTART"
maliTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maliTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
maliTracingMarkWrite
  = Data.ProtoLens.Field.field @"maliTracingMarkWrite"
markVictim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "markVictim" a) =>
  Lens.Family2.LensLike' f s a
markVictim = Data.ProtoLens.Field.field @"markVictim"
maybe'allocPagesIommuEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocPagesIommuEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocPagesIommuEnd
  = Data.ProtoLens.Field.field @"maybe'allocPagesIommuEnd"
maybe'allocPagesIommuFail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocPagesIommuFail" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocPagesIommuFail
  = Data.ProtoLens.Field.field @"maybe'allocPagesIommuFail"
maybe'allocPagesIommuStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocPagesIommuStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocPagesIommuStart
  = Data.ProtoLens.Field.field @"maybe'allocPagesIommuStart"
maybe'allocPagesSysEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocPagesSysEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocPagesSysEnd
  = Data.ProtoLens.Field.field @"maybe'allocPagesSysEnd"
maybe'allocPagesSysFail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocPagesSysFail" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocPagesSysFail
  = Data.ProtoLens.Field.field @"maybe'allocPagesSysFail"
maybe'allocPagesSysStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'allocPagesSysStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'allocPagesSysStart
  = Data.ProtoLens.Field.field @"maybe'allocPagesSysStart"
maybe'androidFsDatareadEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'androidFsDatareadEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'androidFsDatareadEnd
  = Data.ProtoLens.Field.field @"maybe'androidFsDatareadEnd"
maybe'androidFsDatareadStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'androidFsDatareadStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'androidFsDatareadStart
  = Data.ProtoLens.Field.field @"maybe'androidFsDatareadStart"
maybe'androidFsDatawriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'androidFsDatawriteEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'androidFsDatawriteEnd
  = Data.ProtoLens.Field.field @"maybe'androidFsDatawriteEnd"
maybe'androidFsDatawriteStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'androidFsDatawriteStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'androidFsDatawriteStart
  = Data.ProtoLens.Field.field @"maybe'androidFsDatawriteStart"
maybe'androidFsFsyncEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'androidFsFsyncEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'androidFsFsyncEnd
  = Data.ProtoLens.Field.field @"maybe'androidFsFsyncEnd"
maybe'androidFsFsyncStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'androidFsFsyncStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'androidFsFsyncStart
  = Data.ProtoLens.Field.field @"maybe'androidFsFsyncStart"
maybe'binderCommand ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binderCommand" a) =>
  Lens.Family2.LensLike' f s a
maybe'binderCommand
  = Data.ProtoLens.Field.field @"maybe'binderCommand"
maybe'binderLock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binderLock" a) =>
  Lens.Family2.LensLike' f s a
maybe'binderLock = Data.ProtoLens.Field.field @"maybe'binderLock"
maybe'binderLocked ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binderLocked" a) =>
  Lens.Family2.LensLike' f s a
maybe'binderLocked
  = Data.ProtoLens.Field.field @"maybe'binderLocked"
maybe'binderReturn ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binderReturn" a) =>
  Lens.Family2.LensLike' f s a
maybe'binderReturn
  = Data.ProtoLens.Field.field @"maybe'binderReturn"
maybe'binderSetPriority ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binderSetPriority" a) =>
  Lens.Family2.LensLike' f s a
maybe'binderSetPriority
  = Data.ProtoLens.Field.field @"maybe'binderSetPriority"
maybe'binderTransaction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binderTransaction" a) =>
  Lens.Family2.LensLike' f s a
maybe'binderTransaction
  = Data.ProtoLens.Field.field @"maybe'binderTransaction"
maybe'binderTransactionAllocBuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binderTransactionAllocBuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'binderTransactionAllocBuf
  = Data.ProtoLens.Field.field @"maybe'binderTransactionAllocBuf"
maybe'binderTransactionReceived ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binderTransactionReceived" a) =>
  Lens.Family2.LensLike' f s a
maybe'binderTransactionReceived
  = Data.ProtoLens.Field.field @"maybe'binderTransactionReceived"
maybe'binderUnlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'binderUnlock" a) =>
  Lens.Family2.LensLike' f s a
maybe'binderUnlock
  = Data.ProtoLens.Field.field @"maybe'binderUnlock"
maybe'blockBioBackmerge ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockBioBackmerge" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockBioBackmerge
  = Data.ProtoLens.Field.field @"maybe'blockBioBackmerge"
maybe'blockBioBounce ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockBioBounce" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockBioBounce
  = Data.ProtoLens.Field.field @"maybe'blockBioBounce"
maybe'blockBioComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockBioComplete" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockBioComplete
  = Data.ProtoLens.Field.field @"maybe'blockBioComplete"
maybe'blockBioFrontmerge ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockBioFrontmerge" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockBioFrontmerge
  = Data.ProtoLens.Field.field @"maybe'blockBioFrontmerge"
maybe'blockBioQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockBioQueue" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockBioQueue
  = Data.ProtoLens.Field.field @"maybe'blockBioQueue"
maybe'blockBioRemap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockBioRemap" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockBioRemap
  = Data.ProtoLens.Field.field @"maybe'blockBioRemap"
maybe'blockDirtyBuffer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockDirtyBuffer" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockDirtyBuffer
  = Data.ProtoLens.Field.field @"maybe'blockDirtyBuffer"
maybe'blockGetrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockGetrq" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockGetrq = Data.ProtoLens.Field.field @"maybe'blockGetrq"
maybe'blockPlug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockPlug" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockPlug = Data.ProtoLens.Field.field @"maybe'blockPlug"
maybe'blockRqAbort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockRqAbort" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockRqAbort
  = Data.ProtoLens.Field.field @"maybe'blockRqAbort"
maybe'blockRqComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockRqComplete" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockRqComplete
  = Data.ProtoLens.Field.field @"maybe'blockRqComplete"
maybe'blockRqInsert ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockRqInsert" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockRqInsert
  = Data.ProtoLens.Field.field @"maybe'blockRqInsert"
maybe'blockRqIssue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockRqIssue" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockRqIssue
  = Data.ProtoLens.Field.field @"maybe'blockRqIssue"
maybe'blockRqRemap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockRqRemap" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockRqRemap
  = Data.ProtoLens.Field.field @"maybe'blockRqRemap"
maybe'blockRqRequeue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockRqRequeue" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockRqRequeue
  = Data.ProtoLens.Field.field @"maybe'blockRqRequeue"
maybe'blockSleeprq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockSleeprq" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockSleeprq
  = Data.ProtoLens.Field.field @"maybe'blockSleeprq"
maybe'blockSplit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockSplit" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockSplit = Data.ProtoLens.Field.field @"maybe'blockSplit"
maybe'blockTouchBuffer ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockTouchBuffer" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockTouchBuffer
  = Data.ProtoLens.Field.field @"maybe'blockTouchBuffer"
maybe'blockUnplug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'blockUnplug" a) =>
  Lens.Family2.LensLike' f s a
maybe'blockUnplug = Data.ProtoLens.Field.field @"maybe'blockUnplug"
maybe'cdevUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cdevUpdate" a) =>
  Lens.Family2.LensLike' f s a
maybe'cdevUpdate = Data.ProtoLens.Field.field @"maybe'cdevUpdate"
maybe'cgroupAttachTask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cgroupAttachTask" a) =>
  Lens.Family2.LensLike' f s a
maybe'cgroupAttachTask
  = Data.ProtoLens.Field.field @"maybe'cgroupAttachTask"
maybe'cgroupDestroyRoot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cgroupDestroyRoot" a) =>
  Lens.Family2.LensLike' f s a
maybe'cgroupDestroyRoot
  = Data.ProtoLens.Field.field @"maybe'cgroupDestroyRoot"
maybe'cgroupMkdir ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cgroupMkdir" a) =>
  Lens.Family2.LensLike' f s a
maybe'cgroupMkdir = Data.ProtoLens.Field.field @"maybe'cgroupMkdir"
maybe'cgroupRelease ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cgroupRelease" a) =>
  Lens.Family2.LensLike' f s a
maybe'cgroupRelease
  = Data.ProtoLens.Field.field @"maybe'cgroupRelease"
maybe'cgroupRemount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cgroupRemount" a) =>
  Lens.Family2.LensLike' f s a
maybe'cgroupRemount
  = Data.ProtoLens.Field.field @"maybe'cgroupRemount"
maybe'cgroupRename ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cgroupRename" a) =>
  Lens.Family2.LensLike' f s a
maybe'cgroupRename
  = Data.ProtoLens.Field.field @"maybe'cgroupRename"
maybe'cgroupRmdir ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cgroupRmdir" a) =>
  Lens.Family2.LensLike' f s a
maybe'cgroupRmdir = Data.ProtoLens.Field.field @"maybe'cgroupRmdir"
maybe'cgroupSetupRoot ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cgroupSetupRoot" a) =>
  Lens.Family2.LensLike' f s a
maybe'cgroupSetupRoot
  = Data.ProtoLens.Field.field @"maybe'cgroupSetupRoot"
maybe'cgroupTransferTasks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cgroupTransferTasks" a) =>
  Lens.Family2.LensLike' f s a
maybe'cgroupTransferTasks
  = Data.ProtoLens.Field.field @"maybe'cgroupTransferTasks"
maybe'clkDisable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clkDisable" a) =>
  Lens.Family2.LensLike' f s a
maybe'clkDisable = Data.ProtoLens.Field.field @"maybe'clkDisable"
maybe'clkEnable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clkEnable" a) =>
  Lens.Family2.LensLike' f s a
maybe'clkEnable = Data.ProtoLens.Field.field @"maybe'clkEnable"
maybe'clkSetRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clkSetRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'clkSetRate = Data.ProtoLens.Field.field @"maybe'clkSetRate"
maybe'clockDisable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clockDisable" a) =>
  Lens.Family2.LensLike' f s a
maybe'clockDisable
  = Data.ProtoLens.Field.field @"maybe'clockDisable"
maybe'clockEnable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clockEnable" a) =>
  Lens.Family2.LensLike' f s a
maybe'clockEnable = Data.ProtoLens.Field.field @"maybe'clockEnable"
maybe'clockSetRate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'clockSetRate" a) =>
  Lens.Family2.LensLike' f s a
maybe'clockSetRate
  = Data.ProtoLens.Field.field @"maybe'clockSetRate"
maybe'cmaAllocInfo ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cmaAllocInfo" a) =>
  Lens.Family2.LensLike' f s a
maybe'cmaAllocInfo
  = Data.ProtoLens.Field.field @"maybe'cmaAllocInfo"
maybe'cmaAllocStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cmaAllocStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'cmaAllocStart
  = Data.ProtoLens.Field.field @"maybe'cmaAllocStart"
maybe'commonFlags ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'commonFlags" a) =>
  Lens.Family2.LensLike' f s a
maybe'commonFlags = Data.ProtoLens.Field.field @"maybe'commonFlags"
maybe'console ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'console" a) =>
  Lens.Family2.LensLike' f s a
maybe'console = Data.ProtoLens.Field.field @"maybe'console"
maybe'cpuFrequency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuFrequency" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuFrequency
  = Data.ProtoLens.Field.field @"maybe'cpuFrequency"
maybe'cpuFrequencyLimits ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuFrequencyLimits" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuFrequencyLimits
  = Data.ProtoLens.Field.field @"maybe'cpuFrequencyLimits"
maybe'cpuIdle ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuIdle" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuIdle = Data.ProtoLens.Field.field @"maybe'cpuIdle"
maybe'cpuhpEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuhpEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuhpEnter = Data.ProtoLens.Field.field @"maybe'cpuhpEnter"
maybe'cpuhpExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuhpExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuhpExit = Data.ProtoLens.Field.field @"maybe'cpuhpExit"
maybe'cpuhpLatency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuhpLatency" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuhpLatency
  = Data.ProtoLens.Field.field @"maybe'cpuhpLatency"
maybe'cpuhpMultiEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuhpMultiEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuhpMultiEnter
  = Data.ProtoLens.Field.field @"maybe'cpuhpMultiEnter"
maybe'cpuhpPause ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'cpuhpPause" a) =>
  Lens.Family2.LensLike' f s a
maybe'cpuhpPause = Data.ProtoLens.Field.field @"maybe'cpuhpPause"
maybe'crosEcSensorhubData ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'crosEcSensorhubData" a) =>
  Lens.Family2.LensLike' f s a
maybe'crosEcSensorhubData
  = Data.ProtoLens.Field.field @"maybe'crosEcSensorhubData"
maybe'dmaAllocContiguousRetry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dmaAllocContiguousRetry" a) =>
  Lens.Family2.LensLike' f s a
maybe'dmaAllocContiguousRetry
  = Data.ProtoLens.Field.field @"maybe'dmaAllocContiguousRetry"
maybe'dmaFenceEmit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dmaFenceEmit" a) =>
  Lens.Family2.LensLike' f s a
maybe'dmaFenceEmit
  = Data.ProtoLens.Field.field @"maybe'dmaFenceEmit"
maybe'dmaFenceInit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dmaFenceInit" a) =>
  Lens.Family2.LensLike' f s a
maybe'dmaFenceInit
  = Data.ProtoLens.Field.field @"maybe'dmaFenceInit"
maybe'dmaFenceSignaled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dmaFenceSignaled" a) =>
  Lens.Family2.LensLike' f s a
maybe'dmaFenceSignaled
  = Data.ProtoLens.Field.field @"maybe'dmaFenceSignaled"
maybe'dmaFenceWaitEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dmaFenceWaitEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'dmaFenceWaitEnd
  = Data.ProtoLens.Field.field @"maybe'dmaFenceWaitEnd"
maybe'dmaFenceWaitStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dmaFenceWaitStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'dmaFenceWaitStart
  = Data.ProtoLens.Field.field @"maybe'dmaFenceWaitStart"
maybe'dmaHeapStat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dmaHeapStat" a) =>
  Lens.Family2.LensLike' f s a
maybe'dmaHeapStat = Data.ProtoLens.Field.field @"maybe'dmaHeapStat"
maybe'dpuTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dpuTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'dpuTracingMarkWrite
  = Data.ProtoLens.Field.field @"maybe'dpuTracingMarkWrite"
maybe'drmRunJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drmRunJob" a) =>
  Lens.Family2.LensLike' f s a
maybe'drmRunJob = Data.ProtoLens.Field.field @"maybe'drmRunJob"
maybe'drmSchedJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drmSchedJob" a) =>
  Lens.Family2.LensLike' f s a
maybe'drmSchedJob = Data.ProtoLens.Field.field @"maybe'drmSchedJob"
maybe'drmSchedProcessJob ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drmSchedProcessJob" a) =>
  Lens.Family2.LensLike' f s a
maybe'drmSchedProcessJob
  = Data.ProtoLens.Field.field @"maybe'drmSchedProcessJob"
maybe'drmVblankEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drmVblankEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'drmVblankEvent
  = Data.ProtoLens.Field.field @"maybe'drmVblankEvent"
maybe'drmVblankEventDelivered ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'drmVblankEventDelivered" a) =>
  Lens.Family2.LensLike' f s a
maybe'drmVblankEventDelivered
  = Data.ProtoLens.Field.field @"maybe'drmVblankEventDelivered"
maybe'dsiCmdFifoStatus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dsiCmdFifoStatus" a) =>
  Lens.Family2.LensLike' f s a
maybe'dsiCmdFifoStatus
  = Data.ProtoLens.Field.field @"maybe'dsiCmdFifoStatus"
maybe'dsiRx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dsiRx" a) =>
  Lens.Family2.LensLike' f s a
maybe'dsiRx = Data.ProtoLens.Field.field @"maybe'dsiRx"
maybe'dsiTx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'dsiTx" a) =>
  Lens.Family2.LensLike' f s a
maybe'dsiTx = Data.ProtoLens.Field.field @"maybe'dsiTx"
maybe'event ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'event" a) =>
  Lens.Family2.LensLike' f s a
maybe'event = Data.ProtoLens.Field.field @"maybe'event"
maybe'ext4AllocDaBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4AllocDaBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4AllocDaBlocks
  = Data.ProtoLens.Field.field @"maybe'ext4AllocDaBlocks"
maybe'ext4AllocateBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4AllocateBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4AllocateBlocks
  = Data.ProtoLens.Field.field @"maybe'ext4AllocateBlocks"
maybe'ext4AllocateInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4AllocateInode" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4AllocateInode
  = Data.ProtoLens.Field.field @"maybe'ext4AllocateInode"
maybe'ext4BeginOrderedTruncate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4BeginOrderedTruncate" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4BeginOrderedTruncate
  = Data.ProtoLens.Field.field @"maybe'ext4BeginOrderedTruncate"
maybe'ext4CollapseRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4CollapseRange" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4CollapseRange
  = Data.ProtoLens.Field.field @"maybe'ext4CollapseRange"
maybe'ext4DaReleaseSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DaReleaseSpace" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DaReleaseSpace
  = Data.ProtoLens.Field.field @"maybe'ext4DaReleaseSpace"
maybe'ext4DaReserveSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DaReserveSpace" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DaReserveSpace
  = Data.ProtoLens.Field.field @"maybe'ext4DaReserveSpace"
maybe'ext4DaUpdateReserveSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DaUpdateReserveSpace" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DaUpdateReserveSpace
  = Data.ProtoLens.Field.field @"maybe'ext4DaUpdateReserveSpace"
maybe'ext4DaWriteBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DaWriteBegin" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DaWriteBegin
  = Data.ProtoLens.Field.field @"maybe'ext4DaWriteBegin"
maybe'ext4DaWriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DaWriteEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DaWriteEnd
  = Data.ProtoLens.Field.field @"maybe'ext4DaWriteEnd"
maybe'ext4DaWritePages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DaWritePages" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DaWritePages
  = Data.ProtoLens.Field.field @"maybe'ext4DaWritePages"
maybe'ext4DaWritePagesExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DaWritePagesExtent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DaWritePagesExtent
  = Data.ProtoLens.Field.field @"maybe'ext4DaWritePagesExtent"
maybe'ext4DirectIOEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DirectIOEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DirectIOEnter
  = Data.ProtoLens.Field.field @"maybe'ext4DirectIOEnter"
maybe'ext4DirectIOExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DirectIOExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DirectIOExit
  = Data.ProtoLens.Field.field @"maybe'ext4DirectIOExit"
maybe'ext4DiscardBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DiscardBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DiscardBlocks
  = Data.ProtoLens.Field.field @"maybe'ext4DiscardBlocks"
maybe'ext4DiscardPreallocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DiscardPreallocations" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DiscardPreallocations
  = Data.ProtoLens.Field.field @"maybe'ext4DiscardPreallocations"
maybe'ext4DropInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4DropInode" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4DropInode
  = Data.ProtoLens.Field.field @"maybe'ext4DropInode"
maybe'ext4EsCacheExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsCacheExtent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsCacheExtent
  = Data.ProtoLens.Field.field @"maybe'ext4EsCacheExtent"
maybe'ext4EsFindDelayedExtentRangeEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsFindDelayedExtentRangeEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsFindDelayedExtentRangeEnter
  = Data.ProtoLens.Field.field
      @"maybe'ext4EsFindDelayedExtentRangeEnter"
maybe'ext4EsFindDelayedExtentRangeExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsFindDelayedExtentRangeExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsFindDelayedExtentRangeExit
  = Data.ProtoLens.Field.field
      @"maybe'ext4EsFindDelayedExtentRangeExit"
maybe'ext4EsInsertExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsInsertExtent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsInsertExtent
  = Data.ProtoLens.Field.field @"maybe'ext4EsInsertExtent"
maybe'ext4EsLookupExtentEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsLookupExtentEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsLookupExtentEnter
  = Data.ProtoLens.Field.field @"maybe'ext4EsLookupExtentEnter"
maybe'ext4EsLookupExtentExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsLookupExtentExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsLookupExtentExit
  = Data.ProtoLens.Field.field @"maybe'ext4EsLookupExtentExit"
maybe'ext4EsRemoveExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsRemoveExtent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsRemoveExtent
  = Data.ProtoLens.Field.field @"maybe'ext4EsRemoveExtent"
maybe'ext4EsShrink ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsShrink" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsShrink
  = Data.ProtoLens.Field.field @"maybe'ext4EsShrink"
maybe'ext4EsShrinkCount ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsShrinkCount" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsShrinkCount
  = Data.ProtoLens.Field.field @"maybe'ext4EsShrinkCount"
maybe'ext4EsShrinkScanEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsShrinkScanEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsShrinkScanEnter
  = Data.ProtoLens.Field.field @"maybe'ext4EsShrinkScanEnter"
maybe'ext4EsShrinkScanExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EsShrinkScanExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EsShrinkScanExit
  = Data.ProtoLens.Field.field @"maybe'ext4EsShrinkScanExit"
maybe'ext4EvictInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4EvictInode" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4EvictInode
  = Data.ProtoLens.Field.field @"maybe'ext4EvictInode"
maybe'ext4ExtConvertToInitializedEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtConvertToInitializedEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtConvertToInitializedEnter
  = Data.ProtoLens.Field.field
      @"maybe'ext4ExtConvertToInitializedEnter"
maybe'ext4ExtConvertToInitializedFastpath ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtConvertToInitializedFastpath" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtConvertToInitializedFastpath
  = Data.ProtoLens.Field.field
      @"maybe'ext4ExtConvertToInitializedFastpath"
maybe'ext4ExtHandleUnwrittenExtents ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtHandleUnwrittenExtents" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtHandleUnwrittenExtents
  = Data.ProtoLens.Field.field @"maybe'ext4ExtHandleUnwrittenExtents"
maybe'ext4ExtInCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtInCache" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtInCache
  = Data.ProtoLens.Field.field @"maybe'ext4ExtInCache"
maybe'ext4ExtLoadExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtLoadExtent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtLoadExtent
  = Data.ProtoLens.Field.field @"maybe'ext4ExtLoadExtent"
maybe'ext4ExtMapBlocksEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtMapBlocksEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtMapBlocksEnter
  = Data.ProtoLens.Field.field @"maybe'ext4ExtMapBlocksEnter"
maybe'ext4ExtMapBlocksExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtMapBlocksExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtMapBlocksExit
  = Data.ProtoLens.Field.field @"maybe'ext4ExtMapBlocksExit"
maybe'ext4ExtPutInCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtPutInCache" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtPutInCache
  = Data.ProtoLens.Field.field @"maybe'ext4ExtPutInCache"
maybe'ext4ExtRemoveSpace ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtRemoveSpace" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtRemoveSpace
  = Data.ProtoLens.Field.field @"maybe'ext4ExtRemoveSpace"
maybe'ext4ExtRemoveSpaceDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtRemoveSpaceDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtRemoveSpaceDone
  = Data.ProtoLens.Field.field @"maybe'ext4ExtRemoveSpaceDone"
maybe'ext4ExtRmIdx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtRmIdx" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtRmIdx
  = Data.ProtoLens.Field.field @"maybe'ext4ExtRmIdx"
maybe'ext4ExtRmLeaf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtRmLeaf" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtRmLeaf
  = Data.ProtoLens.Field.field @"maybe'ext4ExtRmLeaf"
maybe'ext4ExtShowExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ExtShowExtent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ExtShowExtent
  = Data.ProtoLens.Field.field @"maybe'ext4ExtShowExtent"
maybe'ext4FallocateEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4FallocateEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4FallocateEnter
  = Data.ProtoLens.Field.field @"maybe'ext4FallocateEnter"
maybe'ext4FallocateExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4FallocateExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4FallocateExit
  = Data.ProtoLens.Field.field @"maybe'ext4FallocateExit"
maybe'ext4FindDelallocRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4FindDelallocRange" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4FindDelallocRange
  = Data.ProtoLens.Field.field @"maybe'ext4FindDelallocRange"
maybe'ext4Forget ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4Forget" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4Forget = Data.ProtoLens.Field.field @"maybe'ext4Forget"
maybe'ext4FreeBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4FreeBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4FreeBlocks
  = Data.ProtoLens.Field.field @"maybe'ext4FreeBlocks"
maybe'ext4FreeInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4FreeInode" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4FreeInode
  = Data.ProtoLens.Field.field @"maybe'ext4FreeInode"
maybe'ext4GetImpliedClusterAllocExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4GetImpliedClusterAllocExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4GetImpliedClusterAllocExit
  = Data.ProtoLens.Field.field
      @"maybe'ext4GetImpliedClusterAllocExit"
maybe'ext4GetReservedClusterAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4GetReservedClusterAlloc" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4GetReservedClusterAlloc
  = Data.ProtoLens.Field.field @"maybe'ext4GetReservedClusterAlloc"
maybe'ext4IndMapBlocksEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4IndMapBlocksEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4IndMapBlocksEnter
  = Data.ProtoLens.Field.field @"maybe'ext4IndMapBlocksEnter"
maybe'ext4IndMapBlocksExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4IndMapBlocksExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4IndMapBlocksExit
  = Data.ProtoLens.Field.field @"maybe'ext4IndMapBlocksExit"
maybe'ext4InsertRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4InsertRange" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4InsertRange
  = Data.ProtoLens.Field.field @"maybe'ext4InsertRange"
maybe'ext4Invalidatepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4Invalidatepage" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4Invalidatepage
  = Data.ProtoLens.Field.field @"maybe'ext4Invalidatepage"
maybe'ext4JournalStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4JournalStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4JournalStart
  = Data.ProtoLens.Field.field @"maybe'ext4JournalStart"
maybe'ext4JournalStartReserved ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4JournalStartReserved" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4JournalStartReserved
  = Data.ProtoLens.Field.field @"maybe'ext4JournalStartReserved"
maybe'ext4JournalledInvalidatepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4JournalledInvalidatepage" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4JournalledInvalidatepage
  = Data.ProtoLens.Field.field @"maybe'ext4JournalledInvalidatepage"
maybe'ext4JournalledWriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4JournalledWriteEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4JournalledWriteEnd
  = Data.ProtoLens.Field.field @"maybe'ext4JournalledWriteEnd"
maybe'ext4LoadInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4LoadInode" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4LoadInode
  = Data.ProtoLens.Field.field @"maybe'ext4LoadInode"
maybe'ext4LoadInodeBitmap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4LoadInodeBitmap" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4LoadInodeBitmap
  = Data.ProtoLens.Field.field @"maybe'ext4LoadInodeBitmap"
maybe'ext4MarkInodeDirty ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MarkInodeDirty" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MarkInodeDirty
  = Data.ProtoLens.Field.field @"maybe'ext4MarkInodeDirty"
maybe'ext4MbBitmapLoad ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MbBitmapLoad" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MbBitmapLoad
  = Data.ProtoLens.Field.field @"maybe'ext4MbBitmapLoad"
maybe'ext4MbBuddyBitmapLoad ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MbBuddyBitmapLoad" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MbBuddyBitmapLoad
  = Data.ProtoLens.Field.field @"maybe'ext4MbBuddyBitmapLoad"
maybe'ext4MbDiscardPreallocations ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MbDiscardPreallocations" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MbDiscardPreallocations
  = Data.ProtoLens.Field.field @"maybe'ext4MbDiscardPreallocations"
maybe'ext4MbNewGroupPa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MbNewGroupPa" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MbNewGroupPa
  = Data.ProtoLens.Field.field @"maybe'ext4MbNewGroupPa"
maybe'ext4MbNewInodePa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MbNewInodePa" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MbNewInodePa
  = Data.ProtoLens.Field.field @"maybe'ext4MbNewInodePa"
maybe'ext4MbReleaseGroupPa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MbReleaseGroupPa" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MbReleaseGroupPa
  = Data.ProtoLens.Field.field @"maybe'ext4MbReleaseGroupPa"
maybe'ext4MbReleaseInodePa ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MbReleaseInodePa" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MbReleaseInodePa
  = Data.ProtoLens.Field.field @"maybe'ext4MbReleaseInodePa"
maybe'ext4MballocAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MballocAlloc" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MballocAlloc
  = Data.ProtoLens.Field.field @"maybe'ext4MballocAlloc"
maybe'ext4MballocDiscard ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MballocDiscard" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MballocDiscard
  = Data.ProtoLens.Field.field @"maybe'ext4MballocDiscard"
maybe'ext4MballocFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MballocFree" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MballocFree
  = Data.ProtoLens.Field.field @"maybe'ext4MballocFree"
maybe'ext4MballocPrealloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4MballocPrealloc" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4MballocPrealloc
  = Data.ProtoLens.Field.field @"maybe'ext4MballocPrealloc"
maybe'ext4OtherInodeUpdateTime ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4OtherInodeUpdateTime" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4OtherInodeUpdateTime
  = Data.ProtoLens.Field.field @"maybe'ext4OtherInodeUpdateTime"
maybe'ext4PunchHole ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4PunchHole" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4PunchHole
  = Data.ProtoLens.Field.field @"maybe'ext4PunchHole"
maybe'ext4ReadBlockBitmapLoad ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ReadBlockBitmapLoad" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ReadBlockBitmapLoad
  = Data.ProtoLens.Field.field @"maybe'ext4ReadBlockBitmapLoad"
maybe'ext4Readpage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4Readpage" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4Readpage
  = Data.ProtoLens.Field.field @"maybe'ext4Readpage"
maybe'ext4Releasepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4Releasepage" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4Releasepage
  = Data.ProtoLens.Field.field @"maybe'ext4Releasepage"
maybe'ext4RemoveBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4RemoveBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4RemoveBlocks
  = Data.ProtoLens.Field.field @"maybe'ext4RemoveBlocks"
maybe'ext4RequestBlocks ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4RequestBlocks" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4RequestBlocks
  = Data.ProtoLens.Field.field @"maybe'ext4RequestBlocks"
maybe'ext4RequestInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4RequestInode" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4RequestInode
  = Data.ProtoLens.Field.field @"maybe'ext4RequestInode"
maybe'ext4SyncFileEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4SyncFileEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4SyncFileEnter
  = Data.ProtoLens.Field.field @"maybe'ext4SyncFileEnter"
maybe'ext4SyncFileExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4SyncFileExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4SyncFileExit
  = Data.ProtoLens.Field.field @"maybe'ext4SyncFileExit"
maybe'ext4SyncFs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4SyncFs" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4SyncFs = Data.ProtoLens.Field.field @"maybe'ext4SyncFs"
maybe'ext4TrimAllFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4TrimAllFree" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4TrimAllFree
  = Data.ProtoLens.Field.field @"maybe'ext4TrimAllFree"
maybe'ext4TrimExtent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4TrimExtent" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4TrimExtent
  = Data.ProtoLens.Field.field @"maybe'ext4TrimExtent"
maybe'ext4TruncateEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4TruncateEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4TruncateEnter
  = Data.ProtoLens.Field.field @"maybe'ext4TruncateEnter"
maybe'ext4TruncateExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4TruncateExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4TruncateExit
  = Data.ProtoLens.Field.field @"maybe'ext4TruncateExit"
maybe'ext4UnlinkEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4UnlinkEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4UnlinkEnter
  = Data.ProtoLens.Field.field @"maybe'ext4UnlinkEnter"
maybe'ext4UnlinkExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4UnlinkExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4UnlinkExit
  = Data.ProtoLens.Field.field @"maybe'ext4UnlinkExit"
maybe'ext4WriteBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4WriteBegin" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4WriteBegin
  = Data.ProtoLens.Field.field @"maybe'ext4WriteBegin"
maybe'ext4WriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4WriteEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4WriteEnd
  = Data.ProtoLens.Field.field @"maybe'ext4WriteEnd"
maybe'ext4Writepage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4Writepage" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4Writepage
  = Data.ProtoLens.Field.field @"maybe'ext4Writepage"
maybe'ext4Writepages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4Writepages" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4Writepages
  = Data.ProtoLens.Field.field @"maybe'ext4Writepages"
maybe'ext4WritepagesResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4WritepagesResult" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4WritepagesResult
  = Data.ProtoLens.Field.field @"maybe'ext4WritepagesResult"
maybe'ext4ZeroRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ext4ZeroRange" a) =>
  Lens.Family2.LensLike' f s a
maybe'ext4ZeroRange
  = Data.ProtoLens.Field.field @"maybe'ext4ZeroRange"
maybe'f2fsDoSubmitBio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsDoSubmitBio" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsDoSubmitBio
  = Data.ProtoLens.Field.field @"maybe'f2fsDoSubmitBio"
maybe'f2fsEvictInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsEvictInode" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsEvictInode
  = Data.ProtoLens.Field.field @"maybe'f2fsEvictInode"
maybe'f2fsFallocate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsFallocate" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsFallocate
  = Data.ProtoLens.Field.field @"maybe'f2fsFallocate"
maybe'f2fsGetDataBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsGetDataBlock" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsGetDataBlock
  = Data.ProtoLens.Field.field @"maybe'f2fsGetDataBlock"
maybe'f2fsGetVictim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsGetVictim" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsGetVictim
  = Data.ProtoLens.Field.field @"maybe'f2fsGetVictim"
maybe'f2fsIget ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsIget" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsIget = Data.ProtoLens.Field.field @"maybe'f2fsIget"
maybe'f2fsIgetExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsIgetExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsIgetExit
  = Data.ProtoLens.Field.field @"maybe'f2fsIgetExit"
maybe'f2fsIostat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsIostat" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsIostat = Data.ProtoLens.Field.field @"maybe'f2fsIostat"
maybe'f2fsIostatLatency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsIostatLatency" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsIostatLatency
  = Data.ProtoLens.Field.field @"maybe'f2fsIostatLatency"
maybe'f2fsNewInode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsNewInode" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsNewInode
  = Data.ProtoLens.Field.field @"maybe'f2fsNewInode"
maybe'f2fsReadpage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsReadpage" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsReadpage
  = Data.ProtoLens.Field.field @"maybe'f2fsReadpage"
maybe'f2fsReserveNewBlock ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsReserveNewBlock" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsReserveNewBlock
  = Data.ProtoLens.Field.field @"maybe'f2fsReserveNewBlock"
maybe'f2fsSetPageDirty ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsSetPageDirty" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsSetPageDirty
  = Data.ProtoLens.Field.field @"maybe'f2fsSetPageDirty"
maybe'f2fsSubmitWritePage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsSubmitWritePage" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsSubmitWritePage
  = Data.ProtoLens.Field.field @"maybe'f2fsSubmitWritePage"
maybe'f2fsSyncFileEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsSyncFileEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsSyncFileEnter
  = Data.ProtoLens.Field.field @"maybe'f2fsSyncFileEnter"
maybe'f2fsSyncFileExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsSyncFileExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsSyncFileExit
  = Data.ProtoLens.Field.field @"maybe'f2fsSyncFileExit"
maybe'f2fsSyncFs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsSyncFs" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsSyncFs = Data.ProtoLens.Field.field @"maybe'f2fsSyncFs"
maybe'f2fsTruncate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncate" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncate
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncate"
maybe'f2fsTruncateBlocksEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncateBlocksEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncateBlocksEnter
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncateBlocksEnter"
maybe'f2fsTruncateBlocksExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncateBlocksExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncateBlocksExit
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncateBlocksExit"
maybe'f2fsTruncateDataBlocksRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncateDataBlocksRange" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncateDataBlocksRange
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncateDataBlocksRange"
maybe'f2fsTruncateInodeBlocksEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncateInodeBlocksEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncateInodeBlocksEnter
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncateInodeBlocksEnter"
maybe'f2fsTruncateInodeBlocksExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncateInodeBlocksExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncateInodeBlocksExit
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncateInodeBlocksExit"
maybe'f2fsTruncateNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncateNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncateNode
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncateNode"
maybe'f2fsTruncateNodesEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncateNodesEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncateNodesEnter
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncateNodesEnter"
maybe'f2fsTruncateNodesExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncateNodesExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncateNodesExit
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncateNodesExit"
maybe'f2fsTruncatePartialNodes ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsTruncatePartialNodes" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsTruncatePartialNodes
  = Data.ProtoLens.Field.field @"maybe'f2fsTruncatePartialNodes"
maybe'f2fsUnlinkEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsUnlinkEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsUnlinkEnter
  = Data.ProtoLens.Field.field @"maybe'f2fsUnlinkEnter"
maybe'f2fsUnlinkExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsUnlinkExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsUnlinkExit
  = Data.ProtoLens.Field.field @"maybe'f2fsUnlinkExit"
maybe'f2fsVmPageMkwrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsVmPageMkwrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsVmPageMkwrite
  = Data.ProtoLens.Field.field @"maybe'f2fsVmPageMkwrite"
maybe'f2fsWriteBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsWriteBegin" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsWriteBegin
  = Data.ProtoLens.Field.field @"maybe'f2fsWriteBegin"
maybe'f2fsWriteCheckpoint ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsWriteCheckpoint" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsWriteCheckpoint
  = Data.ProtoLens.Field.field @"maybe'f2fsWriteCheckpoint"
maybe'f2fsWriteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'f2fsWriteEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'f2fsWriteEnd
  = Data.ProtoLens.Field.field @"maybe'f2fsWriteEnd"
maybe'fastrpcDmaStat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fastrpcDmaStat" a) =>
  Lens.Family2.LensLike' f s a
maybe'fastrpcDmaStat
  = Data.ProtoLens.Field.field @"maybe'fastrpcDmaStat"
maybe'fenceDestroy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fenceDestroy" a) =>
  Lens.Family2.LensLike' f s a
maybe'fenceDestroy
  = Data.ProtoLens.Field.field @"maybe'fenceDestroy"
maybe'fenceEnableSignal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fenceEnableSignal" a) =>
  Lens.Family2.LensLike' f s a
maybe'fenceEnableSignal
  = Data.ProtoLens.Field.field @"maybe'fenceEnableSignal"
maybe'fenceInit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fenceInit" a) =>
  Lens.Family2.LensLike' f s a
maybe'fenceInit = Data.ProtoLens.Field.field @"maybe'fenceInit"
maybe'fenceSignaled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'fenceSignaled" a) =>
  Lens.Family2.LensLike' f s a
maybe'fenceSignaled
  = Data.ProtoLens.Field.field @"maybe'fenceSignaled"
maybe'funcgraphEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'funcgraphEntry" a) =>
  Lens.Family2.LensLike' f s a
maybe'funcgraphEntry
  = Data.ProtoLens.Field.field @"maybe'funcgraphEntry"
maybe'funcgraphExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'funcgraphExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'funcgraphExit
  = Data.ProtoLens.Field.field @"maybe'funcgraphExit"
maybe'g2dTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'g2dTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'g2dTracingMarkWrite
  = Data.ProtoLens.Field.field @"maybe'g2dTracingMarkWrite"
maybe'generic ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'generic" a) =>
  Lens.Family2.LensLike' f s a
maybe'generic = Data.ProtoLens.Field.field @"maybe'generic"
maybe'gpuFrequency ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gpuFrequency" a) =>
  Lens.Family2.LensLike' f s a
maybe'gpuFrequency
  = Data.ProtoLens.Field.field @"maybe'gpuFrequency"
maybe'gpuMemTotal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'gpuMemTotal" a) =>
  Lens.Family2.LensLike' f s a
maybe'gpuMemTotal = Data.ProtoLens.Field.field @"maybe'gpuMemTotal"
maybe'hostHcall ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostHcall" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostHcall = Data.ProtoLens.Field.field @"maybe'hostHcall"
maybe'hostMemAbort ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostMemAbort" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostMemAbort
  = Data.ProtoLens.Field.field @"maybe'hostMemAbort"
maybe'hostSmc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hostSmc" a) =>
  Lens.Family2.LensLike' f s a
maybe'hostSmc = Data.ProtoLens.Field.field @"maybe'hostSmc"
maybe'hypEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hypEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'hypEnter = Data.ProtoLens.Field.field @"maybe'hypEnter"
maybe'hypExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'hypExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'hypExit = Data.ProtoLens.Field.field @"maybe'hypExit"
maybe'i2cRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'i2cRead" a) =>
  Lens.Family2.LensLike' f s a
maybe'i2cRead = Data.ProtoLens.Field.field @"maybe'i2cRead"
maybe'i2cReply ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'i2cReply" a) =>
  Lens.Family2.LensLike' f s a
maybe'i2cReply = Data.ProtoLens.Field.field @"maybe'i2cReply"
maybe'i2cResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'i2cResult" a) =>
  Lens.Family2.LensLike' f s a
maybe'i2cResult = Data.ProtoLens.Field.field @"maybe'i2cResult"
maybe'i2cWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'i2cWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'i2cWrite = Data.ProtoLens.Field.field @"maybe'i2cWrite"
maybe'inetSockSetState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'inetSockSetState" a) =>
  Lens.Family2.LensLike' f s a
maybe'inetSockSetState
  = Data.ProtoLens.Field.field @"maybe'inetSockSetState"
maybe'iommuMapRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iommuMapRange" a) =>
  Lens.Family2.LensLike' f s a
maybe'iommuMapRange
  = Data.ProtoLens.Field.field @"maybe'iommuMapRange"
maybe'iommuSecPtblMapRangeEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iommuSecPtblMapRangeEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'iommuSecPtblMapRangeEnd
  = Data.ProtoLens.Field.field @"maybe'iommuSecPtblMapRangeEnd"
maybe'iommuSecPtblMapRangeStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'iommuSecPtblMapRangeStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'iommuSecPtblMapRangeStart
  = Data.ProtoLens.Field.field @"maybe'iommuSecPtblMapRangeStart"
maybe'ionAllocBufferEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionAllocBufferEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionAllocBufferEnd
  = Data.ProtoLens.Field.field @"maybe'ionAllocBufferEnd"
maybe'ionAllocBufferFail ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionAllocBufferFail" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionAllocBufferFail
  = Data.ProtoLens.Field.field @"maybe'ionAllocBufferFail"
maybe'ionAllocBufferFallback ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionAllocBufferFallback" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionAllocBufferFallback
  = Data.ProtoLens.Field.field @"maybe'ionAllocBufferFallback"
maybe'ionAllocBufferStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionAllocBufferStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionAllocBufferStart
  = Data.ProtoLens.Field.field @"maybe'ionAllocBufferStart"
maybe'ionBufferCreate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionBufferCreate" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionBufferCreate
  = Data.ProtoLens.Field.field @"maybe'ionBufferCreate"
maybe'ionBufferDestroy ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionBufferDestroy" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionBufferDestroy
  = Data.ProtoLens.Field.field @"maybe'ionBufferDestroy"
maybe'ionCpAllocRetry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionCpAllocRetry" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionCpAllocRetry
  = Data.ProtoLens.Field.field @"maybe'ionCpAllocRetry"
maybe'ionCpSecureBufferEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionCpSecureBufferEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionCpSecureBufferEnd
  = Data.ProtoLens.Field.field @"maybe'ionCpSecureBufferEnd"
maybe'ionCpSecureBufferStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionCpSecureBufferStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionCpSecureBufferStart
  = Data.ProtoLens.Field.field @"maybe'ionCpSecureBufferStart"
maybe'ionHeapGrow ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionHeapGrow" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionHeapGrow = Data.ProtoLens.Field.field @"maybe'ionHeapGrow"
maybe'ionHeapShrink ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionHeapShrink" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionHeapShrink
  = Data.ProtoLens.Field.field @"maybe'ionHeapShrink"
maybe'ionPrefetching ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionPrefetching" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionPrefetching
  = Data.ProtoLens.Field.field @"maybe'ionPrefetching"
maybe'ionSecureCmaAddToPoolEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionSecureCmaAddToPoolEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionSecureCmaAddToPoolEnd
  = Data.ProtoLens.Field.field @"maybe'ionSecureCmaAddToPoolEnd"
maybe'ionSecureCmaAddToPoolStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionSecureCmaAddToPoolStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionSecureCmaAddToPoolStart
  = Data.ProtoLens.Field.field @"maybe'ionSecureCmaAddToPoolStart"
maybe'ionSecureCmaAllocateEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionSecureCmaAllocateEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionSecureCmaAllocateEnd
  = Data.ProtoLens.Field.field @"maybe'ionSecureCmaAllocateEnd"
maybe'ionSecureCmaAllocateStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionSecureCmaAllocateStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionSecureCmaAllocateStart
  = Data.ProtoLens.Field.field @"maybe'ionSecureCmaAllocateStart"
maybe'ionSecureCmaShrinkPoolEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionSecureCmaShrinkPoolEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionSecureCmaShrinkPoolEnd
  = Data.ProtoLens.Field.field @"maybe'ionSecureCmaShrinkPoolEnd"
maybe'ionSecureCmaShrinkPoolStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionSecureCmaShrinkPoolStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionSecureCmaShrinkPoolStart
  = Data.ProtoLens.Field.field @"maybe'ionSecureCmaShrinkPoolStart"
maybe'ionStat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ionStat" a) =>
  Lens.Family2.LensLike' f s a
maybe'ionStat = Data.ProtoLens.Field.field @"maybe'ionStat"
maybe'ipiEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ipiEntry" a) =>
  Lens.Family2.LensLike' f s a
maybe'ipiEntry = Data.ProtoLens.Field.field @"maybe'ipiEntry"
maybe'ipiExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ipiExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'ipiExit = Data.ProtoLens.Field.field @"maybe'ipiExit"
maybe'ipiRaise ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ipiRaise" a) =>
  Lens.Family2.LensLike' f s a
maybe'ipiRaise = Data.ProtoLens.Field.field @"maybe'ipiRaise"
maybe'irqHandlerEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'irqHandlerEntry" a) =>
  Lens.Family2.LensLike' f s a
maybe'irqHandlerEntry
  = Data.ProtoLens.Field.field @"maybe'irqHandlerEntry"
maybe'irqHandlerExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'irqHandlerExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'irqHandlerExit
  = Data.ProtoLens.Field.field @"maybe'irqHandlerExit"
maybe'kfree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kfree" a) =>
  Lens.Family2.LensLike' f s a
maybe'kfree = Data.ProtoLens.Field.field @"maybe'kfree"
maybe'kfreeSkb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kfreeSkb" a) =>
  Lens.Family2.LensLike' f s a
maybe'kfreeSkb = Data.ProtoLens.Field.field @"maybe'kfreeSkb"
maybe'kmalloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kmalloc" a) =>
  Lens.Family2.LensLike' f s a
maybe'kmalloc = Data.ProtoLens.Field.field @"maybe'kmalloc"
maybe'kmallocNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kmallocNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'kmallocNode = Data.ProtoLens.Field.field @"maybe'kmallocNode"
maybe'kmemCacheAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kmemCacheAlloc" a) =>
  Lens.Family2.LensLike' f s a
maybe'kmemCacheAlloc
  = Data.ProtoLens.Field.field @"maybe'kmemCacheAlloc"
maybe'kmemCacheAllocNode ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kmemCacheAllocNode" a) =>
  Lens.Family2.LensLike' f s a
maybe'kmemCacheAllocNode
  = Data.ProtoLens.Field.field @"maybe'kmemCacheAllocNode"
maybe'kmemCacheFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kmemCacheFree" a) =>
  Lens.Family2.LensLike' f s a
maybe'kmemCacheFree
  = Data.ProtoLens.Field.field @"maybe'kmemCacheFree"
maybe'kvmAccessFault ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmAccessFault" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmAccessFault
  = Data.ProtoLens.Field.field @"maybe'kvmAccessFault"
maybe'kvmAckIrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmAckIrq" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmAckIrq = Data.ProtoLens.Field.field @"maybe'kvmAckIrq"
maybe'kvmAgeHva ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmAgeHva" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmAgeHva = Data.ProtoLens.Field.field @"maybe'kvmAgeHva"
maybe'kvmAgePage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmAgePage" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmAgePage = Data.ProtoLens.Field.field @"maybe'kvmAgePage"
maybe'kvmArmClearDebug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmArmClearDebug" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmArmClearDebug
  = Data.ProtoLens.Field.field @"maybe'kvmArmClearDebug"
maybe'kvmArmSetDreg32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmArmSetDreg32" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmArmSetDreg32
  = Data.ProtoLens.Field.field @"maybe'kvmArmSetDreg32"
maybe'kvmArmSetRegset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmArmSetRegset" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmArmSetRegset
  = Data.ProtoLens.Field.field @"maybe'kvmArmSetRegset"
maybe'kvmArmSetupDebug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmArmSetupDebug" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmArmSetupDebug
  = Data.ProtoLens.Field.field @"maybe'kvmArmSetupDebug"
maybe'kvmEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmEntry" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmEntry = Data.ProtoLens.Field.field @"maybe'kvmEntry"
maybe'kvmExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmExit = Data.ProtoLens.Field.field @"maybe'kvmExit"
maybe'kvmFpu ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmFpu" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmFpu = Data.ProtoLens.Field.field @"maybe'kvmFpu"
maybe'kvmGetTimerMap ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmGetTimerMap" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmGetTimerMap
  = Data.ProtoLens.Field.field @"maybe'kvmGetTimerMap"
maybe'kvmGuestFault ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmGuestFault" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmGuestFault
  = Data.ProtoLens.Field.field @"maybe'kvmGuestFault"
maybe'kvmHandleSysReg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmHandleSysReg" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmHandleSysReg
  = Data.ProtoLens.Field.field @"maybe'kvmHandleSysReg"
maybe'kvmHvcArm64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmHvcArm64" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmHvcArm64 = Data.ProtoLens.Field.field @"maybe'kvmHvcArm64"
maybe'kvmIrqLine ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmIrqLine" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmIrqLine = Data.ProtoLens.Field.field @"maybe'kvmIrqLine"
maybe'kvmMmio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmMmio" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmMmio = Data.ProtoLens.Field.field @"maybe'kvmMmio"
maybe'kvmMmioEmulate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmMmioEmulate" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmMmioEmulate
  = Data.ProtoLens.Field.field @"maybe'kvmMmioEmulate"
maybe'kvmSetGuestDebug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmSetGuestDebug" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmSetGuestDebug
  = Data.ProtoLens.Field.field @"maybe'kvmSetGuestDebug"
maybe'kvmSetIrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmSetIrq" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmSetIrq = Data.ProtoLens.Field.field @"maybe'kvmSetIrq"
maybe'kvmSetSpteHva ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmSetSpteHva" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmSetSpteHva
  = Data.ProtoLens.Field.field @"maybe'kvmSetSpteHva"
maybe'kvmSetWayFlush ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmSetWayFlush" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmSetWayFlush
  = Data.ProtoLens.Field.field @"maybe'kvmSetWayFlush"
maybe'kvmSysAccess ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmSysAccess" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmSysAccess
  = Data.ProtoLens.Field.field @"maybe'kvmSysAccess"
maybe'kvmTestAgeHva ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmTestAgeHva" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmTestAgeHva
  = Data.ProtoLens.Field.field @"maybe'kvmTestAgeHva"
maybe'kvmTimerEmulate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmTimerEmulate" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmTimerEmulate
  = Data.ProtoLens.Field.field @"maybe'kvmTimerEmulate"
maybe'kvmTimerHrtimerExpire ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmTimerHrtimerExpire" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmTimerHrtimerExpire
  = Data.ProtoLens.Field.field @"maybe'kvmTimerHrtimerExpire"
maybe'kvmTimerRestoreState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmTimerRestoreState" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmTimerRestoreState
  = Data.ProtoLens.Field.field @"maybe'kvmTimerRestoreState"
maybe'kvmTimerSaveState ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmTimerSaveState" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmTimerSaveState
  = Data.ProtoLens.Field.field @"maybe'kvmTimerSaveState"
maybe'kvmTimerUpdateIrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmTimerUpdateIrq" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmTimerUpdateIrq
  = Data.ProtoLens.Field.field @"maybe'kvmTimerUpdateIrq"
maybe'kvmToggleCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmToggleCache" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmToggleCache
  = Data.ProtoLens.Field.field @"maybe'kvmToggleCache"
maybe'kvmUnmapHvaRange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmUnmapHvaRange" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmUnmapHvaRange
  = Data.ProtoLens.Field.field @"maybe'kvmUnmapHvaRange"
maybe'kvmUserspaceExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmUserspaceExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmUserspaceExit
  = Data.ProtoLens.Field.field @"maybe'kvmUserspaceExit"
maybe'kvmVcpuWakeup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmVcpuWakeup" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmVcpuWakeup
  = Data.ProtoLens.Field.field @"maybe'kvmVcpuWakeup"
maybe'kvmWfxArm64 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'kvmWfxArm64" a) =>
  Lens.Family2.LensLike' f s a
maybe'kvmWfxArm64 = Data.ProtoLens.Field.field @"maybe'kvmWfxArm64"
maybe'lowmemoryKill ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lowmemoryKill" a) =>
  Lens.Family2.LensLike' f s a
maybe'lowmemoryKill
  = Data.ProtoLens.Field.field @"maybe'lowmemoryKill"
maybe'lwisTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'lwisTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'lwisTracingMarkWrite
  = Data.ProtoLens.Field.field @"maybe'lwisTracingMarkWrite"
maybe'maliMaliCSFINTERRUPTEND ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maliMaliCSFINTERRUPTEND" a) =>
  Lens.Family2.LensLike' f s a
maybe'maliMaliCSFINTERRUPTEND
  = Data.ProtoLens.Field.field @"maybe'maliMaliCSFINTERRUPTEND"
maybe'maliMaliCSFINTERRUPTSTART ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maliMaliCSFINTERRUPTSTART" a) =>
  Lens.Family2.LensLike' f s a
maybe'maliMaliCSFINTERRUPTSTART
  = Data.ProtoLens.Field.field @"maybe'maliMaliCSFINTERRUPTSTART"
maybe'maliMaliKCPUCQSSET ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maliMaliKCPUCQSSET" a) =>
  Lens.Family2.LensLike' f s a
maybe'maliMaliKCPUCQSSET
  = Data.ProtoLens.Field.field @"maybe'maliMaliKCPUCQSSET"
maybe'maliMaliKCPUCQSWAITEND ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maliMaliKCPUCQSWAITEND" a) =>
  Lens.Family2.LensLike' f s a
maybe'maliMaliKCPUCQSWAITEND
  = Data.ProtoLens.Field.field @"maybe'maliMaliKCPUCQSWAITEND"
maybe'maliMaliKCPUCQSWAITSTART ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maliMaliKCPUCQSWAITSTART" a) =>
  Lens.Family2.LensLike' f s a
maybe'maliMaliKCPUCQSWAITSTART
  = Data.ProtoLens.Field.field @"maybe'maliMaliKCPUCQSWAITSTART"
maybe'maliMaliKCPUFENCESIGNAL ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maliMaliKCPUFENCESIGNAL" a) =>
  Lens.Family2.LensLike' f s a
maybe'maliMaliKCPUFENCESIGNAL
  = Data.ProtoLens.Field.field @"maybe'maliMaliKCPUFENCESIGNAL"
maybe'maliMaliKCPUFENCEWAITEND ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maliMaliKCPUFENCEWAITEND" a) =>
  Lens.Family2.LensLike' f s a
maybe'maliMaliKCPUFENCEWAITEND
  = Data.ProtoLens.Field.field @"maybe'maliMaliKCPUFENCEWAITEND"
maybe'maliMaliKCPUFENCEWAITSTART ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maliMaliKCPUFENCEWAITSTART" a) =>
  Lens.Family2.LensLike' f s a
maybe'maliMaliKCPUFENCEWAITSTART
  = Data.ProtoLens.Field.field @"maybe'maliMaliKCPUFENCEWAITSTART"
maybe'maliTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'maliTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'maliTracingMarkWrite
  = Data.ProtoLens.Field.field @"maybe'maliTracingMarkWrite"
maybe'markVictim ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'markVictim" a) =>
  Lens.Family2.LensLike' f s a
maybe'markVictim = Data.ProtoLens.Field.field @"maybe'markVictim"
maybe'mdpCmdKickoff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpCmdKickoff" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpCmdKickoff
  = Data.ProtoLens.Field.field @"maybe'mdpCmdKickoff"
maybe'mdpCmdPingpongDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpCmdPingpongDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpCmdPingpongDone
  = Data.ProtoLens.Field.field @"maybe'mdpCmdPingpongDone"
maybe'mdpCmdReadptrDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpCmdReadptrDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpCmdReadptrDone
  = Data.ProtoLens.Field.field @"maybe'mdpCmdReadptrDone"
maybe'mdpCmdReleaseBw ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpCmdReleaseBw" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpCmdReleaseBw
  = Data.ProtoLens.Field.field @"maybe'mdpCmdReleaseBw"
maybe'mdpCmdWaitPingpong ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpCmdWaitPingpong" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpCmdWaitPingpong
  = Data.ProtoLens.Field.field @"maybe'mdpCmdWaitPingpong"
maybe'mdpCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpCommit" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpCommit = Data.ProtoLens.Field.field @"maybe'mdpCommit"
maybe'mdpCompareBw ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpCompareBw" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpCompareBw
  = Data.ProtoLens.Field.field @"maybe'mdpCompareBw"
maybe'mdpMisrCrc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpMisrCrc" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpMisrCrc = Data.ProtoLens.Field.field @"maybe'mdpMisrCrc"
maybe'mdpMixerUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpMixerUpdate" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpMixerUpdate
  = Data.ProtoLens.Field.field @"maybe'mdpMixerUpdate"
maybe'mdpPerfPrefillCalc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpPerfPrefillCalc" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpPerfPrefillCalc
  = Data.ProtoLens.Field.field @"maybe'mdpPerfPrefillCalc"
maybe'mdpPerfSetOt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpPerfSetOt" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpPerfSetOt
  = Data.ProtoLens.Field.field @"maybe'mdpPerfSetOt"
maybe'mdpPerfSetPanicLuts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpPerfSetPanicLuts" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpPerfSetPanicLuts
  = Data.ProtoLens.Field.field @"maybe'mdpPerfSetPanicLuts"
maybe'mdpPerfSetQosLuts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpPerfSetQosLuts" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpPerfSetQosLuts
  = Data.ProtoLens.Field.field @"maybe'mdpPerfSetQosLuts"
maybe'mdpPerfSetWmLevels ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpPerfSetWmLevels" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpPerfSetWmLevels
  = Data.ProtoLens.Field.field @"maybe'mdpPerfSetWmLevels"
maybe'mdpPerfUpdateBus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpPerfUpdateBus" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpPerfUpdateBus
  = Data.ProtoLens.Field.field @"maybe'mdpPerfUpdateBus"
maybe'mdpSsppChange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpSsppChange" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpSsppChange
  = Data.ProtoLens.Field.field @"maybe'mdpSsppChange"
maybe'mdpSsppSet ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpSsppSet" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpSsppSet = Data.ProtoLens.Field.field @"maybe'mdpSsppSet"
maybe'mdpTraceCounter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpTraceCounter" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpTraceCounter
  = Data.ProtoLens.Field.field @"maybe'mdpTraceCounter"
maybe'mdpVideoUnderrunDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mdpVideoUnderrunDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'mdpVideoUnderrunDone
  = Data.ProtoLens.Field.field @"maybe'mdpVideoUnderrunDone"
maybe'migratePagesEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'migratePagesEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'migratePagesEnd
  = Data.ProtoLens.Field.field @"maybe'migratePagesEnd"
maybe'migratePagesStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'migratePagesStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'migratePagesStart
  = Data.ProtoLens.Field.field @"maybe'migratePagesStart"
maybe'migrateRetry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'migrateRetry" a) =>
  Lens.Family2.LensLike' f s a
maybe'migrateRetry
  = Data.ProtoLens.Field.field @"maybe'migrateRetry"
maybe'mmCompactionBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionBegin" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionBegin
  = Data.ProtoLens.Field.field @"maybe'mmCompactionBegin"
maybe'mmCompactionDeferCompaction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionDeferCompaction" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionDeferCompaction
  = Data.ProtoLens.Field.field @"maybe'mmCompactionDeferCompaction"
maybe'mmCompactionDeferReset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionDeferReset" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionDeferReset
  = Data.ProtoLens.Field.field @"maybe'mmCompactionDeferReset"
maybe'mmCompactionDeferred ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionDeferred" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionDeferred
  = Data.ProtoLens.Field.field @"maybe'mmCompactionDeferred"
maybe'mmCompactionEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionEnd
  = Data.ProtoLens.Field.field @"maybe'mmCompactionEnd"
maybe'mmCompactionFinished ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionFinished" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionFinished
  = Data.ProtoLens.Field.field @"maybe'mmCompactionFinished"
maybe'mmCompactionIsolateFreepages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionIsolateFreepages" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionIsolateFreepages
  = Data.ProtoLens.Field.field @"maybe'mmCompactionIsolateFreepages"
maybe'mmCompactionIsolateMigratepages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionIsolateMigratepages" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionIsolateMigratepages
  = Data.ProtoLens.Field.field
      @"maybe'mmCompactionIsolateMigratepages"
maybe'mmCompactionKcompactdSleep ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionKcompactdSleep" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionKcompactdSleep
  = Data.ProtoLens.Field.field @"maybe'mmCompactionKcompactdSleep"
maybe'mmCompactionKcompactdWake ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionKcompactdWake" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionKcompactdWake
  = Data.ProtoLens.Field.field @"maybe'mmCompactionKcompactdWake"
maybe'mmCompactionMigratepages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionMigratepages" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionMigratepages
  = Data.ProtoLens.Field.field @"maybe'mmCompactionMigratepages"
maybe'mmCompactionSuitable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionSuitable" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionSuitable
  = Data.ProtoLens.Field.field @"maybe'mmCompactionSuitable"
maybe'mmCompactionTryToCompactPages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionTryToCompactPages" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionTryToCompactPages
  = Data.ProtoLens.Field.field @"maybe'mmCompactionTryToCompactPages"
maybe'mmCompactionWakeupKcompactd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmCompactionWakeupKcompactd" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmCompactionWakeupKcompactd
  = Data.ProtoLens.Field.field @"maybe'mmCompactionWakeupKcompactd"
maybe'mmEventRecord ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmEventRecord" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmEventRecord
  = Data.ProtoLens.Field.field @"maybe'mmEventRecord"
maybe'mmFilemapAddToPageCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmFilemapAddToPageCache" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmFilemapAddToPageCache
  = Data.ProtoLens.Field.field @"maybe'mmFilemapAddToPageCache"
maybe'mmFilemapDeleteFromPageCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmFilemapDeleteFromPageCache" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmFilemapDeleteFromPageCache
  = Data.ProtoLens.Field.field @"maybe'mmFilemapDeleteFromPageCache"
maybe'mmPageAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmPageAlloc" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmPageAlloc = Data.ProtoLens.Field.field @"maybe'mmPageAlloc"
maybe'mmPageAllocExtfrag ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmPageAllocExtfrag" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmPageAllocExtfrag
  = Data.ProtoLens.Field.field @"maybe'mmPageAllocExtfrag"
maybe'mmPageAllocZoneLocked ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmPageAllocZoneLocked" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmPageAllocZoneLocked
  = Data.ProtoLens.Field.field @"maybe'mmPageAllocZoneLocked"
maybe'mmPageFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmPageFree" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmPageFree = Data.ProtoLens.Field.field @"maybe'mmPageFree"
maybe'mmPageFreeBatched ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmPageFreeBatched" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmPageFreeBatched
  = Data.ProtoLens.Field.field @"maybe'mmPageFreeBatched"
maybe'mmPagePcpuDrain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmPagePcpuDrain" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmPagePcpuDrain
  = Data.ProtoLens.Field.field @"maybe'mmPagePcpuDrain"
maybe'mmShrinkSlabEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmShrinkSlabEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmShrinkSlabEnd
  = Data.ProtoLens.Field.field @"maybe'mmShrinkSlabEnd"
maybe'mmShrinkSlabStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmShrinkSlabStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmShrinkSlabStart
  = Data.ProtoLens.Field.field @"maybe'mmShrinkSlabStart"
maybe'mmVmscanDirectReclaimBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmVmscanDirectReclaimBegin" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmVmscanDirectReclaimBegin
  = Data.ProtoLens.Field.field @"maybe'mmVmscanDirectReclaimBegin"
maybe'mmVmscanDirectReclaimEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmVmscanDirectReclaimEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmVmscanDirectReclaimEnd
  = Data.ProtoLens.Field.field @"maybe'mmVmscanDirectReclaimEnd"
maybe'mmVmscanKswapdSleep ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmVmscanKswapdSleep" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmVmscanKswapdSleep
  = Data.ProtoLens.Field.field @"maybe'mmVmscanKswapdSleep"
maybe'mmVmscanKswapdWake ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'mmVmscanKswapdWake" a) =>
  Lens.Family2.LensLike' f s a
maybe'mmVmscanKswapdWake
  = Data.ProtoLens.Field.field @"maybe'mmVmscanKswapdWake"
maybe'napiGroReceiveEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'napiGroReceiveEntry" a) =>
  Lens.Family2.LensLike' f s a
maybe'napiGroReceiveEntry
  = Data.ProtoLens.Field.field @"maybe'napiGroReceiveEntry"
maybe'napiGroReceiveExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'napiGroReceiveExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'napiGroReceiveExit
  = Data.ProtoLens.Field.field @"maybe'napiGroReceiveExit"
maybe'netDevXmit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'netDevXmit" a) =>
  Lens.Family2.LensLike' f s a
maybe'netDevXmit = Data.ProtoLens.Field.field @"maybe'netDevXmit"
maybe'netifReceiveSkb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'netifReceiveSkb" a) =>
  Lens.Family2.LensLike' f s a
maybe'netifReceiveSkb
  = Data.ProtoLens.Field.field @"maybe'netifReceiveSkb"
maybe'oomScoreAdjUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'oomScoreAdjUpdate" a) =>
  Lens.Family2.LensLike' f s a
maybe'oomScoreAdjUpdate
  = Data.ProtoLens.Field.field @"maybe'oomScoreAdjUpdate"
maybe'pid ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'pid" a) =>
  Lens.Family2.LensLike' f s a
maybe'pid = Data.ProtoLens.Field.field @"maybe'pid"
maybe'print ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'print" a) =>
  Lens.Family2.LensLike' f s a
maybe'print = Data.ProtoLens.Field.field @"maybe'print"
maybe'regulatorDisable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regulatorDisable" a) =>
  Lens.Family2.LensLike' f s a
maybe'regulatorDisable
  = Data.ProtoLens.Field.field @"maybe'regulatorDisable"
maybe'regulatorDisableComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regulatorDisableComplete" a) =>
  Lens.Family2.LensLike' f s a
maybe'regulatorDisableComplete
  = Data.ProtoLens.Field.field @"maybe'regulatorDisableComplete"
maybe'regulatorEnable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regulatorEnable" a) =>
  Lens.Family2.LensLike' f s a
maybe'regulatorEnable
  = Data.ProtoLens.Field.field @"maybe'regulatorEnable"
maybe'regulatorEnableComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regulatorEnableComplete" a) =>
  Lens.Family2.LensLike' f s a
maybe'regulatorEnableComplete
  = Data.ProtoLens.Field.field @"maybe'regulatorEnableComplete"
maybe'regulatorEnableDelay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regulatorEnableDelay" a) =>
  Lens.Family2.LensLike' f s a
maybe'regulatorEnableDelay
  = Data.ProtoLens.Field.field @"maybe'regulatorEnableDelay"
maybe'regulatorSetVoltage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regulatorSetVoltage" a) =>
  Lens.Family2.LensLike' f s a
maybe'regulatorSetVoltage
  = Data.ProtoLens.Field.field @"maybe'regulatorSetVoltage"
maybe'regulatorSetVoltageComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'regulatorSetVoltageComplete" a) =>
  Lens.Family2.LensLike' f s a
maybe'regulatorSetVoltageComplete
  = Data.ProtoLens.Field.field @"maybe'regulatorSetVoltageComplete"
maybe'rotatorBwAoAsContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rotatorBwAoAsContext" a) =>
  Lens.Family2.LensLike' f s a
maybe'rotatorBwAoAsContext
  = Data.ProtoLens.Field.field @"maybe'rotatorBwAoAsContext"
maybe'rssStat ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rssStat" a) =>
  Lens.Family2.LensLike' f s a
maybe'rssStat = Data.ProtoLens.Field.field @"maybe'rssStat"
maybe'rssStatThrottled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'rssStatThrottled" a) =>
  Lens.Family2.LensLike' f s a
maybe'rssStatThrottled
  = Data.ProtoLens.Field.field @"maybe'rssStatThrottled"
maybe'samsungTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'samsungTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'samsungTracingMarkWrite
  = Data.ProtoLens.Field.field @"maybe'samsungTracingMarkWrite"
maybe'schedBlockedReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedBlockedReason" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedBlockedReason
  = Data.ProtoLens.Field.field @"maybe'schedBlockedReason"
maybe'schedCpuHotplug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedCpuHotplug" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedCpuHotplug
  = Data.ProtoLens.Field.field @"maybe'schedCpuHotplug"
maybe'schedCpuUtilCfs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedCpuUtilCfs" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedCpuUtilCfs
  = Data.ProtoLens.Field.field @"maybe'schedCpuUtilCfs"
maybe'schedPiSetprio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedPiSetprio" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedPiSetprio
  = Data.ProtoLens.Field.field @"maybe'schedPiSetprio"
maybe'schedProcessExec ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedProcessExec" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedProcessExec
  = Data.ProtoLens.Field.field @"maybe'schedProcessExec"
maybe'schedProcessExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedProcessExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedProcessExit
  = Data.ProtoLens.Field.field @"maybe'schedProcessExit"
maybe'schedProcessFork ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedProcessFork" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedProcessFork
  = Data.ProtoLens.Field.field @"maybe'schedProcessFork"
maybe'schedProcessFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedProcessFree" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedProcessFree
  = Data.ProtoLens.Field.field @"maybe'schedProcessFree"
maybe'schedProcessHang ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedProcessHang" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedProcessHang
  = Data.ProtoLens.Field.field @"maybe'schedProcessHang"
maybe'schedProcessWait ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedProcessWait" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedProcessWait
  = Data.ProtoLens.Field.field @"maybe'schedProcessWait"
maybe'schedSwitch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedSwitch" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedSwitch = Data.ProtoLens.Field.field @"maybe'schedSwitch"
maybe'schedWakeup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedWakeup" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedWakeup = Data.ProtoLens.Field.field @"maybe'schedWakeup"
maybe'schedWakeupNew ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedWakeupNew" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedWakeupNew
  = Data.ProtoLens.Field.field @"maybe'schedWakeupNew"
maybe'schedWaking ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'schedWaking" a) =>
  Lens.Family2.LensLike' f s a
maybe'schedWaking = Data.ProtoLens.Field.field @"maybe'schedWaking"
maybe'scmCallEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scmCallEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'scmCallEnd = Data.ProtoLens.Field.field @"maybe'scmCallEnd"
maybe'scmCallStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'scmCallStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'scmCallStart
  = Data.ProtoLens.Field.field @"maybe'scmCallStart"
maybe'sdeSdeEvtlog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sdeSdeEvtlog" a) =>
  Lens.Family2.LensLike' f s a
maybe'sdeSdeEvtlog
  = Data.ProtoLens.Field.field @"maybe'sdeSdeEvtlog"
maybe'sdeSdePerfCalcCrtc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sdeSdePerfCalcCrtc" a) =>
  Lens.Family2.LensLike' f s a
maybe'sdeSdePerfCalcCrtc
  = Data.ProtoLens.Field.field @"maybe'sdeSdePerfCalcCrtc"
maybe'sdeSdePerfCrtcUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sdeSdePerfCrtcUpdate" a) =>
  Lens.Family2.LensLike' f s a
maybe'sdeSdePerfCrtcUpdate
  = Data.ProtoLens.Field.field @"maybe'sdeSdePerfCrtcUpdate"
maybe'sdeSdePerfSetQosLuts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sdeSdePerfSetQosLuts" a) =>
  Lens.Family2.LensLike' f s a
maybe'sdeSdePerfSetQosLuts
  = Data.ProtoLens.Field.field @"maybe'sdeSdePerfSetQosLuts"
maybe'sdeSdePerfUpdateBus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sdeSdePerfUpdateBus" a) =>
  Lens.Family2.LensLike' f s a
maybe'sdeSdePerfUpdateBus
  = Data.ProtoLens.Field.field @"maybe'sdeSdePerfUpdateBus"
maybe'sdeTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sdeTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'sdeTracingMarkWrite
  = Data.ProtoLens.Field.field @"maybe'sdeTracingMarkWrite"
maybe'signalDeliver ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'signalDeliver" a) =>
  Lens.Family2.LensLike' f s a
maybe'signalDeliver
  = Data.ProtoLens.Field.field @"maybe'signalDeliver"
maybe'signalGenerate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'signalGenerate" a) =>
  Lens.Family2.LensLike' f s a
maybe'signalGenerate
  = Data.ProtoLens.Field.field @"maybe'signalGenerate"
maybe'smbusRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'smbusRead" a) =>
  Lens.Family2.LensLike' f s a
maybe'smbusRead = Data.ProtoLens.Field.field @"maybe'smbusRead"
maybe'smbusReply ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'smbusReply" a) =>
  Lens.Family2.LensLike' f s a
maybe'smbusReply = Data.ProtoLens.Field.field @"maybe'smbusReply"
maybe'smbusResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'smbusResult" a) =>
  Lens.Family2.LensLike' f s a
maybe'smbusResult = Data.ProtoLens.Field.field @"maybe'smbusResult"
maybe'smbusWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'smbusWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'smbusWrite = Data.ProtoLens.Field.field @"maybe'smbusWrite"
maybe'softirqEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'softirqEntry" a) =>
  Lens.Family2.LensLike' f s a
maybe'softirqEntry
  = Data.ProtoLens.Field.field @"maybe'softirqEntry"
maybe'softirqExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'softirqExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'softirqExit = Data.ProtoLens.Field.field @"maybe'softirqExit"
maybe'softirqRaise ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'softirqRaise" a) =>
  Lens.Family2.LensLike' f s a
maybe'softirqRaise
  = Data.ProtoLens.Field.field @"maybe'softirqRaise"
maybe'suspendResume ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'suspendResume" a) =>
  Lens.Family2.LensLike' f s a
maybe'suspendResume
  = Data.ProtoLens.Field.field @"maybe'suspendResume"
maybe'suspendResumeMinimal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'suspendResumeMinimal" a) =>
  Lens.Family2.LensLike' f s a
maybe'suspendResumeMinimal
  = Data.ProtoLens.Field.field @"maybe'suspendResumeMinimal"
maybe'syncPt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'syncPt" a) =>
  Lens.Family2.LensLike' f s a
maybe'syncPt = Data.ProtoLens.Field.field @"maybe'syncPt"
maybe'syncTimeline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'syncTimeline" a) =>
  Lens.Family2.LensLike' f s a
maybe'syncTimeline
  = Data.ProtoLens.Field.field @"maybe'syncTimeline"
maybe'syncWait ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'syncWait" a) =>
  Lens.Family2.LensLike' f s a
maybe'syncWait = Data.ProtoLens.Field.field @"maybe'syncWait"
maybe'sysEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sysEnter" a) =>
  Lens.Family2.LensLike' f s a
maybe'sysEnter = Data.ProtoLens.Field.field @"maybe'sysEnter"
maybe'sysExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'sysExit" a) =>
  Lens.Family2.LensLike' f s a
maybe'sysExit = Data.ProtoLens.Field.field @"maybe'sysExit"
maybe'taskNewtask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'taskNewtask" a) =>
  Lens.Family2.LensLike' f s a
maybe'taskNewtask = Data.ProtoLens.Field.field @"maybe'taskNewtask"
maybe'taskRename ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'taskRename" a) =>
  Lens.Family2.LensLike' f s a
maybe'taskRename = Data.ProtoLens.Field.field @"maybe'taskRename"
maybe'tcpRetransmitSkb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tcpRetransmitSkb" a) =>
  Lens.Family2.LensLike' f s a
maybe'tcpRetransmitSkb
  = Data.ProtoLens.Field.field @"maybe'tcpRetransmitSkb"
maybe'thermalTemperature ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'thermalTemperature" a) =>
  Lens.Family2.LensLike' f s a
maybe'thermalTemperature
  = Data.ProtoLens.Field.field @"maybe'thermalTemperature"
maybe'timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'timestamp" a) =>
  Lens.Family2.LensLike' f s a
maybe'timestamp = Data.ProtoLens.Field.field @"maybe'timestamp"
maybe'tracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'tracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'tracingMarkWrite
  = Data.ProtoLens.Field.field @"maybe'tracingMarkWrite"
maybe'trapReg ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trapReg" a) =>
  Lens.Family2.LensLike' f s a
maybe'trapReg = Data.ProtoLens.Field.field @"maybe'trapReg"
maybe'trustyEnqueueNop ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyEnqueueNop" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyEnqueueNop
  = Data.ProtoLens.Field.field @"maybe'trustyEnqueueNop"
maybe'trustyIpcConnect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyIpcConnect" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyIpcConnect
  = Data.ProtoLens.Field.field @"maybe'trustyIpcConnect"
maybe'trustyIpcConnectEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyIpcConnectEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyIpcConnectEnd
  = Data.ProtoLens.Field.field @"maybe'trustyIpcConnectEnd"
maybe'trustyIpcHandleEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyIpcHandleEvent" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyIpcHandleEvent
  = Data.ProtoLens.Field.field @"maybe'trustyIpcHandleEvent"
maybe'trustyIpcPoll ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyIpcPoll" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyIpcPoll
  = Data.ProtoLens.Field.field @"maybe'trustyIpcPoll"
maybe'trustyIpcRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyIpcRead" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyIpcRead
  = Data.ProtoLens.Field.field @"maybe'trustyIpcRead"
maybe'trustyIpcReadEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyIpcReadEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyIpcReadEnd
  = Data.ProtoLens.Field.field @"maybe'trustyIpcReadEnd"
maybe'trustyIpcRx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyIpcRx" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyIpcRx = Data.ProtoLens.Field.field @"maybe'trustyIpcRx"
maybe'trustyIpcWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyIpcWrite" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyIpcWrite
  = Data.ProtoLens.Field.field @"maybe'trustyIpcWrite"
maybe'trustyIrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyIrq" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyIrq = Data.ProtoLens.Field.field @"maybe'trustyIrq"
maybe'trustyReclaimMemory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyReclaimMemory" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyReclaimMemory
  = Data.ProtoLens.Field.field @"maybe'trustyReclaimMemory"
maybe'trustyReclaimMemoryDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyReclaimMemoryDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyReclaimMemoryDone
  = Data.ProtoLens.Field.field @"maybe'trustyReclaimMemoryDone"
maybe'trustyShareMemory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyShareMemory" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyShareMemory
  = Data.ProtoLens.Field.field @"maybe'trustyShareMemory"
maybe'trustyShareMemoryDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyShareMemoryDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyShareMemoryDone
  = Data.ProtoLens.Field.field @"maybe'trustyShareMemoryDone"
maybe'trustySmc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustySmc" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustySmc = Data.ProtoLens.Field.field @"maybe'trustySmc"
maybe'trustySmcDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustySmcDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustySmcDone
  = Data.ProtoLens.Field.field @"maybe'trustySmcDone"
maybe'trustyStdCall32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyStdCall32" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyStdCall32
  = Data.ProtoLens.Field.field @"maybe'trustyStdCall32"
maybe'trustyStdCall32Done ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'trustyStdCall32Done" a) =>
  Lens.Family2.LensLike' f s a
maybe'trustyStdCall32Done
  = Data.ProtoLens.Field.field @"maybe'trustyStdCall32Done"
maybe'ufshcdClkGating ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ufshcdClkGating" a) =>
  Lens.Family2.LensLike' f s a
maybe'ufshcdClkGating
  = Data.ProtoLens.Field.field @"maybe'ufshcdClkGating"
maybe'ufshcdCommand ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'ufshcdCommand" a) =>
  Lens.Family2.LensLike' f s a
maybe'ufshcdCommand
  = Data.ProtoLens.Field.field @"maybe'ufshcdCommand"
maybe'v4l2Dqbuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'v4l2Dqbuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'v4l2Dqbuf = Data.ProtoLens.Field.field @"maybe'v4l2Dqbuf"
maybe'v4l2Qbuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'v4l2Qbuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'v4l2Qbuf = Data.ProtoLens.Field.field @"maybe'v4l2Qbuf"
maybe'vb2V4l2BufDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vb2V4l2BufDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'vb2V4l2BufDone
  = Data.ProtoLens.Field.field @"maybe'vb2V4l2BufDone"
maybe'vb2V4l2BufQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vb2V4l2BufQueue" a) =>
  Lens.Family2.LensLike' f s a
maybe'vb2V4l2BufQueue
  = Data.ProtoLens.Field.field @"maybe'vb2V4l2BufQueue"
maybe'vb2V4l2Dqbuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vb2V4l2Dqbuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'vb2V4l2Dqbuf
  = Data.ProtoLens.Field.field @"maybe'vb2V4l2Dqbuf"
maybe'vb2V4l2Qbuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vb2V4l2Qbuf" a) =>
  Lens.Family2.LensLike' f s a
maybe'vb2V4l2Qbuf = Data.ProtoLens.Field.field @"maybe'vb2V4l2Qbuf"
maybe'vgicUpdateIrqPending ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'vgicUpdateIrqPending" a) =>
  Lens.Family2.LensLike' f s a
maybe'vgicUpdateIrqPending
  = Data.ProtoLens.Field.field @"maybe'vgicUpdateIrqPending"
maybe'virtioGpuCmdQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'virtioGpuCmdQueue" a) =>
  Lens.Family2.LensLike' f s a
maybe'virtioGpuCmdQueue
  = Data.ProtoLens.Field.field @"maybe'virtioGpuCmdQueue"
maybe'virtioGpuCmdResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'virtioGpuCmdResponse" a) =>
  Lens.Family2.LensLike' f s a
maybe'virtioGpuCmdResponse
  = Data.ProtoLens.Field.field @"maybe'virtioGpuCmdResponse"
maybe'virtioVideoCmd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'virtioVideoCmd" a) =>
  Lens.Family2.LensLike' f s a
maybe'virtioVideoCmd
  = Data.ProtoLens.Field.field @"maybe'virtioVideoCmd"
maybe'virtioVideoCmdDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'virtioVideoCmdDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'virtioVideoCmdDone
  = Data.ProtoLens.Field.field @"maybe'virtioVideoCmdDone"
maybe'virtioVideoResourceQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'virtioVideoResourceQueue" a) =>
  Lens.Family2.LensLike' f s a
maybe'virtioVideoResourceQueue
  = Data.ProtoLens.Field.field @"maybe'virtioVideoResourceQueue"
maybe'virtioVideoResourceQueueDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'virtioVideoResourceQueueDone" a) =>
  Lens.Family2.LensLike' f s a
maybe'virtioVideoResourceQueueDone
  = Data.ProtoLens.Field.field @"maybe'virtioVideoResourceQueueDone"
maybe'wakeupSourceActivate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wakeupSourceActivate" a) =>
  Lens.Family2.LensLike' f s a
maybe'wakeupSourceActivate
  = Data.ProtoLens.Field.field @"maybe'wakeupSourceActivate"
maybe'wakeupSourceDeactivate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'wakeupSourceDeactivate" a) =>
  Lens.Family2.LensLike' f s a
maybe'wakeupSourceDeactivate
  = Data.ProtoLens.Field.field @"maybe'wakeupSourceDeactivate"
maybe'workqueueActivateWork ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workqueueActivateWork" a) =>
  Lens.Family2.LensLike' f s a
maybe'workqueueActivateWork
  = Data.ProtoLens.Field.field @"maybe'workqueueActivateWork"
maybe'workqueueExecuteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workqueueExecuteEnd" a) =>
  Lens.Family2.LensLike' f s a
maybe'workqueueExecuteEnd
  = Data.ProtoLens.Field.field @"maybe'workqueueExecuteEnd"
maybe'workqueueExecuteStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workqueueExecuteStart" a) =>
  Lens.Family2.LensLike' f s a
maybe'workqueueExecuteStart
  = Data.ProtoLens.Field.field @"maybe'workqueueExecuteStart"
maybe'workqueueQueueWork ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'workqueueQueueWork" a) =>
  Lens.Family2.LensLike' f s a
maybe'workqueueQueueWork
  = Data.ProtoLens.Field.field @"maybe'workqueueQueueWork"
maybe'zero ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "maybe'zero" a) =>
  Lens.Family2.LensLike' f s a
maybe'zero = Data.ProtoLens.Field.field @"maybe'zero"
mdpCmdKickoff ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpCmdKickoff" a) =>
  Lens.Family2.LensLike' f s a
mdpCmdKickoff = Data.ProtoLens.Field.field @"mdpCmdKickoff"
mdpCmdPingpongDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpCmdPingpongDone" a) =>
  Lens.Family2.LensLike' f s a
mdpCmdPingpongDone
  = Data.ProtoLens.Field.field @"mdpCmdPingpongDone"
mdpCmdReadptrDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpCmdReadptrDone" a) =>
  Lens.Family2.LensLike' f s a
mdpCmdReadptrDone = Data.ProtoLens.Field.field @"mdpCmdReadptrDone"
mdpCmdReleaseBw ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpCmdReleaseBw" a) =>
  Lens.Family2.LensLike' f s a
mdpCmdReleaseBw = Data.ProtoLens.Field.field @"mdpCmdReleaseBw"
mdpCmdWaitPingpong ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpCmdWaitPingpong" a) =>
  Lens.Family2.LensLike' f s a
mdpCmdWaitPingpong
  = Data.ProtoLens.Field.field @"mdpCmdWaitPingpong"
mdpCommit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpCommit" a) =>
  Lens.Family2.LensLike' f s a
mdpCommit = Data.ProtoLens.Field.field @"mdpCommit"
mdpCompareBw ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpCompareBw" a) =>
  Lens.Family2.LensLike' f s a
mdpCompareBw = Data.ProtoLens.Field.field @"mdpCompareBw"
mdpMisrCrc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpMisrCrc" a) =>
  Lens.Family2.LensLike' f s a
mdpMisrCrc = Data.ProtoLens.Field.field @"mdpMisrCrc"
mdpMixerUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpMixerUpdate" a) =>
  Lens.Family2.LensLike' f s a
mdpMixerUpdate = Data.ProtoLens.Field.field @"mdpMixerUpdate"
mdpPerfPrefillCalc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpPerfPrefillCalc" a) =>
  Lens.Family2.LensLike' f s a
mdpPerfPrefillCalc
  = Data.ProtoLens.Field.field @"mdpPerfPrefillCalc"
mdpPerfSetOt ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpPerfSetOt" a) =>
  Lens.Family2.LensLike' f s a
mdpPerfSetOt = Data.ProtoLens.Field.field @"mdpPerfSetOt"
mdpPerfSetPanicLuts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpPerfSetPanicLuts" a) =>
  Lens.Family2.LensLike' f s a
mdpPerfSetPanicLuts
  = Data.ProtoLens.Field.field @"mdpPerfSetPanicLuts"
mdpPerfSetQosLuts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpPerfSetQosLuts" a) =>
  Lens.Family2.LensLike' f s a
mdpPerfSetQosLuts = Data.ProtoLens.Field.field @"mdpPerfSetQosLuts"
mdpPerfSetWmLevels ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpPerfSetWmLevels" a) =>
  Lens.Family2.LensLike' f s a
mdpPerfSetWmLevels
  = Data.ProtoLens.Field.field @"mdpPerfSetWmLevels"
mdpPerfUpdateBus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpPerfUpdateBus" a) =>
  Lens.Family2.LensLike' f s a
mdpPerfUpdateBus = Data.ProtoLens.Field.field @"mdpPerfUpdateBus"
mdpSsppChange ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpSsppChange" a) =>
  Lens.Family2.LensLike' f s a
mdpSsppChange = Data.ProtoLens.Field.field @"mdpSsppChange"
mdpSsppSet ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpSsppSet" a) =>
  Lens.Family2.LensLike' f s a
mdpSsppSet = Data.ProtoLens.Field.field @"mdpSsppSet"
mdpTraceCounter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpTraceCounter" a) =>
  Lens.Family2.LensLike' f s a
mdpTraceCounter = Data.ProtoLens.Field.field @"mdpTraceCounter"
mdpVideoUnderrunDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mdpVideoUnderrunDone" a) =>
  Lens.Family2.LensLike' f s a
mdpVideoUnderrunDone
  = Data.ProtoLens.Field.field @"mdpVideoUnderrunDone"
migratePagesEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "migratePagesEnd" a) =>
  Lens.Family2.LensLike' f s a
migratePagesEnd = Data.ProtoLens.Field.field @"migratePagesEnd"
migratePagesStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "migratePagesStart" a) =>
  Lens.Family2.LensLike' f s a
migratePagesStart = Data.ProtoLens.Field.field @"migratePagesStart"
migrateRetry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "migrateRetry" a) =>
  Lens.Family2.LensLike' f s a
migrateRetry = Data.ProtoLens.Field.field @"migrateRetry"
mmCompactionBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionBegin" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionBegin = Data.ProtoLens.Field.field @"mmCompactionBegin"
mmCompactionDeferCompaction ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionDeferCompaction" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionDeferCompaction
  = Data.ProtoLens.Field.field @"mmCompactionDeferCompaction"
mmCompactionDeferReset ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionDeferReset" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionDeferReset
  = Data.ProtoLens.Field.field @"mmCompactionDeferReset"
mmCompactionDeferred ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionDeferred" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionDeferred
  = Data.ProtoLens.Field.field @"mmCompactionDeferred"
mmCompactionEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionEnd" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionEnd = Data.ProtoLens.Field.field @"mmCompactionEnd"
mmCompactionFinished ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionFinished" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionFinished
  = Data.ProtoLens.Field.field @"mmCompactionFinished"
mmCompactionIsolateFreepages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionIsolateFreepages" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionIsolateFreepages
  = Data.ProtoLens.Field.field @"mmCompactionIsolateFreepages"
mmCompactionIsolateMigratepages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionIsolateMigratepages" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionIsolateMigratepages
  = Data.ProtoLens.Field.field @"mmCompactionIsolateMigratepages"
mmCompactionKcompactdSleep ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionKcompactdSleep" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionKcompactdSleep
  = Data.ProtoLens.Field.field @"mmCompactionKcompactdSleep"
mmCompactionKcompactdWake ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionKcompactdWake" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionKcompactdWake
  = Data.ProtoLens.Field.field @"mmCompactionKcompactdWake"
mmCompactionMigratepages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionMigratepages" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionMigratepages
  = Data.ProtoLens.Field.field @"mmCompactionMigratepages"
mmCompactionSuitable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionSuitable" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionSuitable
  = Data.ProtoLens.Field.field @"mmCompactionSuitable"
mmCompactionTryToCompactPages ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionTryToCompactPages" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionTryToCompactPages
  = Data.ProtoLens.Field.field @"mmCompactionTryToCompactPages"
mmCompactionWakeupKcompactd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmCompactionWakeupKcompactd" a) =>
  Lens.Family2.LensLike' f s a
mmCompactionWakeupKcompactd
  = Data.ProtoLens.Field.field @"mmCompactionWakeupKcompactd"
mmEventRecord ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmEventRecord" a) =>
  Lens.Family2.LensLike' f s a
mmEventRecord = Data.ProtoLens.Field.field @"mmEventRecord"
mmFilemapAddToPageCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmFilemapAddToPageCache" a) =>
  Lens.Family2.LensLike' f s a
mmFilemapAddToPageCache
  = Data.ProtoLens.Field.field @"mmFilemapAddToPageCache"
mmFilemapDeleteFromPageCache ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmFilemapDeleteFromPageCache" a) =>
  Lens.Family2.LensLike' f s a
mmFilemapDeleteFromPageCache
  = Data.ProtoLens.Field.field @"mmFilemapDeleteFromPageCache"
mmPageAlloc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmPageAlloc" a) =>
  Lens.Family2.LensLike' f s a
mmPageAlloc = Data.ProtoLens.Field.field @"mmPageAlloc"
mmPageAllocExtfrag ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmPageAllocExtfrag" a) =>
  Lens.Family2.LensLike' f s a
mmPageAllocExtfrag
  = Data.ProtoLens.Field.field @"mmPageAllocExtfrag"
mmPageAllocZoneLocked ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmPageAllocZoneLocked" a) =>
  Lens.Family2.LensLike' f s a
mmPageAllocZoneLocked
  = Data.ProtoLens.Field.field @"mmPageAllocZoneLocked"
mmPageFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmPageFree" a) =>
  Lens.Family2.LensLike' f s a
mmPageFree = Data.ProtoLens.Field.field @"mmPageFree"
mmPageFreeBatched ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmPageFreeBatched" a) =>
  Lens.Family2.LensLike' f s a
mmPageFreeBatched = Data.ProtoLens.Field.field @"mmPageFreeBatched"
mmPagePcpuDrain ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmPagePcpuDrain" a) =>
  Lens.Family2.LensLike' f s a
mmPagePcpuDrain = Data.ProtoLens.Field.field @"mmPagePcpuDrain"
mmShrinkSlabEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmShrinkSlabEnd" a) =>
  Lens.Family2.LensLike' f s a
mmShrinkSlabEnd = Data.ProtoLens.Field.field @"mmShrinkSlabEnd"
mmShrinkSlabStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmShrinkSlabStart" a) =>
  Lens.Family2.LensLike' f s a
mmShrinkSlabStart = Data.ProtoLens.Field.field @"mmShrinkSlabStart"
mmVmscanDirectReclaimBegin ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmVmscanDirectReclaimBegin" a) =>
  Lens.Family2.LensLike' f s a
mmVmscanDirectReclaimBegin
  = Data.ProtoLens.Field.field @"mmVmscanDirectReclaimBegin"
mmVmscanDirectReclaimEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmVmscanDirectReclaimEnd" a) =>
  Lens.Family2.LensLike' f s a
mmVmscanDirectReclaimEnd
  = Data.ProtoLens.Field.field @"mmVmscanDirectReclaimEnd"
mmVmscanKswapdSleep ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmVmscanKswapdSleep" a) =>
  Lens.Family2.LensLike' f s a
mmVmscanKswapdSleep
  = Data.ProtoLens.Field.field @"mmVmscanKswapdSleep"
mmVmscanKswapdWake ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "mmVmscanKswapdWake" a) =>
  Lens.Family2.LensLike' f s a
mmVmscanKswapdWake
  = Data.ProtoLens.Field.field @"mmVmscanKswapdWake"
napiGroReceiveEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "napiGroReceiveEntry" a) =>
  Lens.Family2.LensLike' f s a
napiGroReceiveEntry
  = Data.ProtoLens.Field.field @"napiGroReceiveEntry"
napiGroReceiveExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "napiGroReceiveExit" a) =>
  Lens.Family2.LensLike' f s a
napiGroReceiveExit
  = Data.ProtoLens.Field.field @"napiGroReceiveExit"
netDevXmit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "netDevXmit" a) =>
  Lens.Family2.LensLike' f s a
netDevXmit = Data.ProtoLens.Field.field @"netDevXmit"
netifReceiveSkb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "netifReceiveSkb" a) =>
  Lens.Family2.LensLike' f s a
netifReceiveSkb = Data.ProtoLens.Field.field @"netifReceiveSkb"
oomScoreAdjUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "oomScoreAdjUpdate" a) =>
  Lens.Family2.LensLike' f s a
oomScoreAdjUpdate = Data.ProtoLens.Field.field @"oomScoreAdjUpdate"
pid ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "pid" a) =>
  Lens.Family2.LensLike' f s a
pid = Data.ProtoLens.Field.field @"pid"
print ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "print" a) =>
  Lens.Family2.LensLike' f s a
print = Data.ProtoLens.Field.field @"print"
regulatorDisable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regulatorDisable" a) =>
  Lens.Family2.LensLike' f s a
regulatorDisable = Data.ProtoLens.Field.field @"regulatorDisable"
regulatorDisableComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regulatorDisableComplete" a) =>
  Lens.Family2.LensLike' f s a
regulatorDisableComplete
  = Data.ProtoLens.Field.field @"regulatorDisableComplete"
regulatorEnable ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regulatorEnable" a) =>
  Lens.Family2.LensLike' f s a
regulatorEnable = Data.ProtoLens.Field.field @"regulatorEnable"
regulatorEnableComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regulatorEnableComplete" a) =>
  Lens.Family2.LensLike' f s a
regulatorEnableComplete
  = Data.ProtoLens.Field.field @"regulatorEnableComplete"
regulatorEnableDelay ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regulatorEnableDelay" a) =>
  Lens.Family2.LensLike' f s a
regulatorEnableDelay
  = Data.ProtoLens.Field.field @"regulatorEnableDelay"
regulatorSetVoltage ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regulatorSetVoltage" a) =>
  Lens.Family2.LensLike' f s a
regulatorSetVoltage
  = Data.ProtoLens.Field.field @"regulatorSetVoltage"
regulatorSetVoltageComplete ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "regulatorSetVoltageComplete" a) =>
  Lens.Family2.LensLike' f s a
regulatorSetVoltageComplete
  = Data.ProtoLens.Field.field @"regulatorSetVoltageComplete"
rotatorBwAoAsContext ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rotatorBwAoAsContext" a) =>
  Lens.Family2.LensLike' f s a
rotatorBwAoAsContext
  = Data.ProtoLens.Field.field @"rotatorBwAoAsContext"
rssStat ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "rssStat" a) =>
  Lens.Family2.LensLike' f s a
rssStat = Data.ProtoLens.Field.field @"rssStat"
rssStatThrottled ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "rssStatThrottled" a) =>
  Lens.Family2.LensLike' f s a
rssStatThrottled = Data.ProtoLens.Field.field @"rssStatThrottled"
samsungTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "samsungTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
samsungTracingMarkWrite
  = Data.ProtoLens.Field.field @"samsungTracingMarkWrite"
schedBlockedReason ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedBlockedReason" a) =>
  Lens.Family2.LensLike' f s a
schedBlockedReason
  = Data.ProtoLens.Field.field @"schedBlockedReason"
schedCpuHotplug ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedCpuHotplug" a) =>
  Lens.Family2.LensLike' f s a
schedCpuHotplug = Data.ProtoLens.Field.field @"schedCpuHotplug"
schedCpuUtilCfs ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedCpuUtilCfs" a) =>
  Lens.Family2.LensLike' f s a
schedCpuUtilCfs = Data.ProtoLens.Field.field @"schedCpuUtilCfs"
schedPiSetprio ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedPiSetprio" a) =>
  Lens.Family2.LensLike' f s a
schedPiSetprio = Data.ProtoLens.Field.field @"schedPiSetprio"
schedProcessExec ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedProcessExec" a) =>
  Lens.Family2.LensLike' f s a
schedProcessExec = Data.ProtoLens.Field.field @"schedProcessExec"
schedProcessExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedProcessExit" a) =>
  Lens.Family2.LensLike' f s a
schedProcessExit = Data.ProtoLens.Field.field @"schedProcessExit"
schedProcessFork ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedProcessFork" a) =>
  Lens.Family2.LensLike' f s a
schedProcessFork = Data.ProtoLens.Field.field @"schedProcessFork"
schedProcessFree ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedProcessFree" a) =>
  Lens.Family2.LensLike' f s a
schedProcessFree = Data.ProtoLens.Field.field @"schedProcessFree"
schedProcessHang ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedProcessHang" a) =>
  Lens.Family2.LensLike' f s a
schedProcessHang = Data.ProtoLens.Field.field @"schedProcessHang"
schedProcessWait ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedProcessWait" a) =>
  Lens.Family2.LensLike' f s a
schedProcessWait = Data.ProtoLens.Field.field @"schedProcessWait"
schedSwitch ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedSwitch" a) =>
  Lens.Family2.LensLike' f s a
schedSwitch = Data.ProtoLens.Field.field @"schedSwitch"
schedWakeup ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedWakeup" a) =>
  Lens.Family2.LensLike' f s a
schedWakeup = Data.ProtoLens.Field.field @"schedWakeup"
schedWakeupNew ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedWakeupNew" a) =>
  Lens.Family2.LensLike' f s a
schedWakeupNew = Data.ProtoLens.Field.field @"schedWakeupNew"
schedWaking ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "schedWaking" a) =>
  Lens.Family2.LensLike' f s a
schedWaking = Data.ProtoLens.Field.field @"schedWaking"
scmCallEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scmCallEnd" a) =>
  Lens.Family2.LensLike' f s a
scmCallEnd = Data.ProtoLens.Field.field @"scmCallEnd"
scmCallStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "scmCallStart" a) =>
  Lens.Family2.LensLike' f s a
scmCallStart = Data.ProtoLens.Field.field @"scmCallStart"
sdeSdeEvtlog ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sdeSdeEvtlog" a) =>
  Lens.Family2.LensLike' f s a
sdeSdeEvtlog = Data.ProtoLens.Field.field @"sdeSdeEvtlog"
sdeSdePerfCalcCrtc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sdeSdePerfCalcCrtc" a) =>
  Lens.Family2.LensLike' f s a
sdeSdePerfCalcCrtc
  = Data.ProtoLens.Field.field @"sdeSdePerfCalcCrtc"
sdeSdePerfCrtcUpdate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sdeSdePerfCrtcUpdate" a) =>
  Lens.Family2.LensLike' f s a
sdeSdePerfCrtcUpdate
  = Data.ProtoLens.Field.field @"sdeSdePerfCrtcUpdate"
sdeSdePerfSetQosLuts ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sdeSdePerfSetQosLuts" a) =>
  Lens.Family2.LensLike' f s a
sdeSdePerfSetQosLuts
  = Data.ProtoLens.Field.field @"sdeSdePerfSetQosLuts"
sdeSdePerfUpdateBus ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sdeSdePerfUpdateBus" a) =>
  Lens.Family2.LensLike' f s a
sdeSdePerfUpdateBus
  = Data.ProtoLens.Field.field @"sdeSdePerfUpdateBus"
sdeTracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sdeTracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
sdeTracingMarkWrite
  = Data.ProtoLens.Field.field @"sdeTracingMarkWrite"
signalDeliver ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signalDeliver" a) =>
  Lens.Family2.LensLike' f s a
signalDeliver = Data.ProtoLens.Field.field @"signalDeliver"
signalGenerate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "signalGenerate" a) =>
  Lens.Family2.LensLike' f s a
signalGenerate = Data.ProtoLens.Field.field @"signalGenerate"
smbusRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "smbusRead" a) =>
  Lens.Family2.LensLike' f s a
smbusRead = Data.ProtoLens.Field.field @"smbusRead"
smbusReply ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "smbusReply" a) =>
  Lens.Family2.LensLike' f s a
smbusReply = Data.ProtoLens.Field.field @"smbusReply"
smbusResult ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "smbusResult" a) =>
  Lens.Family2.LensLike' f s a
smbusResult = Data.ProtoLens.Field.field @"smbusResult"
smbusWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "smbusWrite" a) =>
  Lens.Family2.LensLike' f s a
smbusWrite = Data.ProtoLens.Field.field @"smbusWrite"
softirqEntry ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "softirqEntry" a) =>
  Lens.Family2.LensLike' f s a
softirqEntry = Data.ProtoLens.Field.field @"softirqEntry"
softirqExit ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "softirqExit" a) =>
  Lens.Family2.LensLike' f s a
softirqExit = Data.ProtoLens.Field.field @"softirqExit"
softirqRaise ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "softirqRaise" a) =>
  Lens.Family2.LensLike' f s a
softirqRaise = Data.ProtoLens.Field.field @"softirqRaise"
suspendResume ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "suspendResume" a) =>
  Lens.Family2.LensLike' f s a
suspendResume = Data.ProtoLens.Field.field @"suspendResume"
suspendResumeMinimal ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "suspendResumeMinimal" a) =>
  Lens.Family2.LensLike' f s a
suspendResumeMinimal
  = Data.ProtoLens.Field.field @"suspendResumeMinimal"
syncPt ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "syncPt" a) =>
  Lens.Family2.LensLike' f s a
syncPt = Data.ProtoLens.Field.field @"syncPt"
syncTimeline ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "syncTimeline" a) =>
  Lens.Family2.LensLike' f s a
syncTimeline = Data.ProtoLens.Field.field @"syncTimeline"
syncWait ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "syncWait" a) =>
  Lens.Family2.LensLike' f s a
syncWait = Data.ProtoLens.Field.field @"syncWait"
sysEnter ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "sysEnter" a) =>
  Lens.Family2.LensLike' f s a
sysEnter = Data.ProtoLens.Field.field @"sysEnter"
sysExit ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "sysExit" a) =>
  Lens.Family2.LensLike' f s a
sysExit = Data.ProtoLens.Field.field @"sysExit"
taskNewtask ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskNewtask" a) =>
  Lens.Family2.LensLike' f s a
taskNewtask = Data.ProtoLens.Field.field @"taskNewtask"
taskRename ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "taskRename" a) =>
  Lens.Family2.LensLike' f s a
taskRename = Data.ProtoLens.Field.field @"taskRename"
tcpRetransmitSkb ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tcpRetransmitSkb" a) =>
  Lens.Family2.LensLike' f s a
tcpRetransmitSkb = Data.ProtoLens.Field.field @"tcpRetransmitSkb"
thermalTemperature ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "thermalTemperature" a) =>
  Lens.Family2.LensLike' f s a
thermalTemperature
  = Data.ProtoLens.Field.field @"thermalTemperature"
timestamp ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "timestamp" a) =>
  Lens.Family2.LensLike' f s a
timestamp = Data.ProtoLens.Field.field @"timestamp"
tracingMarkWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "tracingMarkWrite" a) =>
  Lens.Family2.LensLike' f s a
tracingMarkWrite = Data.ProtoLens.Field.field @"tracingMarkWrite"
trapReg ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "trapReg" a) =>
  Lens.Family2.LensLike' f s a
trapReg = Data.ProtoLens.Field.field @"trapReg"
trustyEnqueueNop ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyEnqueueNop" a) =>
  Lens.Family2.LensLike' f s a
trustyEnqueueNop = Data.ProtoLens.Field.field @"trustyEnqueueNop"
trustyIpcConnect ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyIpcConnect" a) =>
  Lens.Family2.LensLike' f s a
trustyIpcConnect = Data.ProtoLens.Field.field @"trustyIpcConnect"
trustyIpcConnectEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyIpcConnectEnd" a) =>
  Lens.Family2.LensLike' f s a
trustyIpcConnectEnd
  = Data.ProtoLens.Field.field @"trustyIpcConnectEnd"
trustyIpcHandleEvent ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyIpcHandleEvent" a) =>
  Lens.Family2.LensLike' f s a
trustyIpcHandleEvent
  = Data.ProtoLens.Field.field @"trustyIpcHandleEvent"
trustyIpcPoll ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyIpcPoll" a) =>
  Lens.Family2.LensLike' f s a
trustyIpcPoll = Data.ProtoLens.Field.field @"trustyIpcPoll"
trustyIpcRead ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyIpcRead" a) =>
  Lens.Family2.LensLike' f s a
trustyIpcRead = Data.ProtoLens.Field.field @"trustyIpcRead"
trustyIpcReadEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyIpcReadEnd" a) =>
  Lens.Family2.LensLike' f s a
trustyIpcReadEnd = Data.ProtoLens.Field.field @"trustyIpcReadEnd"
trustyIpcRx ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyIpcRx" a) =>
  Lens.Family2.LensLike' f s a
trustyIpcRx = Data.ProtoLens.Field.field @"trustyIpcRx"
trustyIpcWrite ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyIpcWrite" a) =>
  Lens.Family2.LensLike' f s a
trustyIpcWrite = Data.ProtoLens.Field.field @"trustyIpcWrite"
trustyIrq ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyIrq" a) =>
  Lens.Family2.LensLike' f s a
trustyIrq = Data.ProtoLens.Field.field @"trustyIrq"
trustyReclaimMemory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyReclaimMemory" a) =>
  Lens.Family2.LensLike' f s a
trustyReclaimMemory
  = Data.ProtoLens.Field.field @"trustyReclaimMemory"
trustyReclaimMemoryDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyReclaimMemoryDone" a) =>
  Lens.Family2.LensLike' f s a
trustyReclaimMemoryDone
  = Data.ProtoLens.Field.field @"trustyReclaimMemoryDone"
trustyShareMemory ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyShareMemory" a) =>
  Lens.Family2.LensLike' f s a
trustyShareMemory = Data.ProtoLens.Field.field @"trustyShareMemory"
trustyShareMemoryDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyShareMemoryDone" a) =>
  Lens.Family2.LensLike' f s a
trustyShareMemoryDone
  = Data.ProtoLens.Field.field @"trustyShareMemoryDone"
trustySmc ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustySmc" a) =>
  Lens.Family2.LensLike' f s a
trustySmc = Data.ProtoLens.Field.field @"trustySmc"
trustySmcDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustySmcDone" a) =>
  Lens.Family2.LensLike' f s a
trustySmcDone = Data.ProtoLens.Field.field @"trustySmcDone"
trustyStdCall32 ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyStdCall32" a) =>
  Lens.Family2.LensLike' f s a
trustyStdCall32 = Data.ProtoLens.Field.field @"trustyStdCall32"
trustyStdCall32Done ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "trustyStdCall32Done" a) =>
  Lens.Family2.LensLike' f s a
trustyStdCall32Done
  = Data.ProtoLens.Field.field @"trustyStdCall32Done"
ufshcdClkGating ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ufshcdClkGating" a) =>
  Lens.Family2.LensLike' f s a
ufshcdClkGating = Data.ProtoLens.Field.field @"ufshcdClkGating"
ufshcdCommand ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "ufshcdCommand" a) =>
  Lens.Family2.LensLike' f s a
ufshcdCommand = Data.ProtoLens.Field.field @"ufshcdCommand"
v4l2Dqbuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "v4l2Dqbuf" a) =>
  Lens.Family2.LensLike' f s a
v4l2Dqbuf = Data.ProtoLens.Field.field @"v4l2Dqbuf"
v4l2Qbuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "v4l2Qbuf" a) =>
  Lens.Family2.LensLike' f s a
v4l2Qbuf = Data.ProtoLens.Field.field @"v4l2Qbuf"
vb2V4l2BufDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vb2V4l2BufDone" a) =>
  Lens.Family2.LensLike' f s a
vb2V4l2BufDone = Data.ProtoLens.Field.field @"vb2V4l2BufDone"
vb2V4l2BufQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vb2V4l2BufQueue" a) =>
  Lens.Family2.LensLike' f s a
vb2V4l2BufQueue = Data.ProtoLens.Field.field @"vb2V4l2BufQueue"
vb2V4l2Dqbuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vb2V4l2Dqbuf" a) =>
  Lens.Family2.LensLike' f s a
vb2V4l2Dqbuf = Data.ProtoLens.Field.field @"vb2V4l2Dqbuf"
vb2V4l2Qbuf ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vb2V4l2Qbuf" a) =>
  Lens.Family2.LensLike' f s a
vb2V4l2Qbuf = Data.ProtoLens.Field.field @"vb2V4l2Qbuf"
vgicUpdateIrqPending ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "vgicUpdateIrqPending" a) =>
  Lens.Family2.LensLike' f s a
vgicUpdateIrqPending
  = Data.ProtoLens.Field.field @"vgicUpdateIrqPending"
virtioGpuCmdQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "virtioGpuCmdQueue" a) =>
  Lens.Family2.LensLike' f s a
virtioGpuCmdQueue = Data.ProtoLens.Field.field @"virtioGpuCmdQueue"
virtioGpuCmdResponse ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "virtioGpuCmdResponse" a) =>
  Lens.Family2.LensLike' f s a
virtioGpuCmdResponse
  = Data.ProtoLens.Field.field @"virtioGpuCmdResponse"
virtioVideoCmd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "virtioVideoCmd" a) =>
  Lens.Family2.LensLike' f s a
virtioVideoCmd = Data.ProtoLens.Field.field @"virtioVideoCmd"
virtioVideoCmdDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "virtioVideoCmdDone" a) =>
  Lens.Family2.LensLike' f s a
virtioVideoCmdDone
  = Data.ProtoLens.Field.field @"virtioVideoCmdDone"
virtioVideoResourceQueue ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "virtioVideoResourceQueue" a) =>
  Lens.Family2.LensLike' f s a
virtioVideoResourceQueue
  = Data.ProtoLens.Field.field @"virtioVideoResourceQueue"
virtioVideoResourceQueueDone ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "virtioVideoResourceQueueDone" a) =>
  Lens.Family2.LensLike' f s a
virtioVideoResourceQueueDone
  = Data.ProtoLens.Field.field @"virtioVideoResourceQueueDone"
wakeupSourceActivate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wakeupSourceActivate" a) =>
  Lens.Family2.LensLike' f s a
wakeupSourceActivate
  = Data.ProtoLens.Field.field @"wakeupSourceActivate"
wakeupSourceDeactivate ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "wakeupSourceDeactivate" a) =>
  Lens.Family2.LensLike' f s a
wakeupSourceDeactivate
  = Data.ProtoLens.Field.field @"wakeupSourceDeactivate"
workqueueActivateWork ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workqueueActivateWork" a) =>
  Lens.Family2.LensLike' f s a
workqueueActivateWork
  = Data.ProtoLens.Field.field @"workqueueActivateWork"
workqueueExecuteEnd ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workqueueExecuteEnd" a) =>
  Lens.Family2.LensLike' f s a
workqueueExecuteEnd
  = Data.ProtoLens.Field.field @"workqueueExecuteEnd"
workqueueExecuteStart ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workqueueExecuteStart" a) =>
  Lens.Family2.LensLike' f s a
workqueueExecuteStart
  = Data.ProtoLens.Field.field @"workqueueExecuteStart"
workqueueQueueWork ::
  forall f s a.
  (Prelude.Functor f,
   Data.ProtoLens.Field.HasField s "workqueueQueueWork" a) =>
  Lens.Family2.LensLike' f s a
workqueueQueueWork
  = Data.ProtoLens.Field.field @"workqueueQueueWork"
zero ::
  forall f s a.
  (Prelude.Functor f, Data.ProtoLens.Field.HasField s "zero" a) =>
  Lens.Family2.LensLike' f s a
zero = Data.ProtoLens.Field.field @"zero"