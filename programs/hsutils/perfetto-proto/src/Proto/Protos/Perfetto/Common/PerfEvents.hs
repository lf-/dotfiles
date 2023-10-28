{- This file was auto-generated from protos/perfetto/common/perf_events.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Common.PerfEvents (
        PerfEvents(), PerfEvents'Counter(..), PerfEvents'Counter(),
        PerfEvents'PerfClock(..), PerfEvents'PerfClock(),
        PerfEvents'RawEvent(), PerfEvents'Timebase(),
        PerfEvents'Timebase'Interval(..), PerfEvents'Timebase'Event(..),
        _PerfEvents'Timebase'Frequency, _PerfEvents'Timebase'Period,
        _PerfEvents'Timebase'Counter, _PerfEvents'Timebase'Tracepoint,
        _PerfEvents'Timebase'RawEvent, PerfEvents'Tracepoint()
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
      -}
data PerfEvents
  = PerfEvents'_constructor {_PerfEvents'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerfEvents where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message PerfEvents where
  messageName _ = Data.Text.pack "perfetto.protos.PerfEvents"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \PerfEvents\SUB\141\ETX\n\
      \\bTimebase\DC2\RS\n\
      \\tfrequency\CAN\STX \SOH(\EOTH\NULR\tfrequency\DC2\CAN\n\
      \\ACKperiod\CAN\SOH \SOH(\EOTH\NULR\ACKperiod\DC2?\n\
      \\acounter\CAN\EOT \SOH(\SO2#.perfetto.protos.PerfEvents.CounterH\SOHR\acounter\DC2H\n\
      \\n\
      \tracepoint\CAN\ETX \SOH(\v2&.perfetto.protos.PerfEvents.TracepointH\SOHR\n\
      \tracepoint\DC2C\n\
      \\traw_event\CAN\ENQ \SOH(\v2$.perfetto.protos.PerfEvents.RawEventH\SOHR\brawEvent\DC2N\n\
      \\SItimestamp_clock\CAN\v \SOH(\SO2%.perfetto.protos.PerfEvents.PerfClockR\SOtimestampClock\DC2\DC2\n\
      \\EOTname\CAN\n\
      \ \SOH(\tR\EOTnameB\n\
      \\n\
      \\bintervalB\a\n\
      \\ENQevent\SUB8\n\
      \\n\
      \Tracepoint\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
      \\ACKfilter\CAN\STX \SOH(\tR\ACKfilter\SUBj\n\
      \\bRawEvent\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\rR\EOTtype\DC2\SYN\n\
      \\ACKconfig\CAN\STX \SOH(\EOTR\ACKconfig\DC2\CAN\n\
      \\aconfig1\CAN\ETX \SOH(\EOTR\aconfig1\DC2\CAN\n\
      \\aconfig2\CAN\EOT \SOH(\EOTR\aconfig2\"\232\ETX\n\
      \\aCounter\DC2\DC3\n\
      \\SIUNKNOWN_COUNTER\DLE\NUL\DC2\DLE\n\
      \\fSW_CPU_CLOCK\DLE\SOH\DC2\DC2\n\
      \\SOSW_PAGE_FAULTS\DLE\STX\DC2\DC1\n\
      \\rSW_TASK_CLOCK\DLE\ETX\DC2\ETB\n\
      \\DC3SW_CONTEXT_SWITCHES\DLE\EOT\DC2\NAK\n\
      \\DC1SW_CPU_MIGRATIONS\DLE\ENQ\DC2\SYN\n\
      \\DC2SW_PAGE_FAULTS_MIN\DLE\ACK\DC2\SYN\n\
      \\DC2SW_PAGE_FAULTS_MAJ\DLE\a\DC2\ETB\n\
      \\DC3SW_ALIGNMENT_FAULTS\DLE\b\DC2\ETB\n\
      \\DC3SW_EMULATION_FAULTS\DLE\t\DC2\f\n\
      \\bSW_DUMMY\DLE\DC4\DC2\DC1\n\
      \\rHW_CPU_CYCLES\DLE\n\
      \\DC2\DC3\n\
      \\SIHW_INSTRUCTIONS\DLE\v\DC2\ETB\n\
      \\DC3HW_CACHE_REFERENCES\DLE\f\DC2\DC3\n\
      \\SIHW_CACHE_MISSES\DLE\r\DC2\SUB\n\
      \\SYNHW_BRANCH_INSTRUCTIONS\DLE\SO\DC2\DC4\n\
      \\DLEHW_BRANCH_MISSES\DLE\SI\DC2\DC1\n\
      \\rHW_BUS_CYCLES\DLE\DLE\DC2\RS\n\
      \\SUBHW_STALLED_CYCLES_FRONTEND\DLE\DC1\DC2\GS\n\
      \\EMHW_STALLED_CYCLES_BACKEND\DLE\DC2\DC2\NAK\n\
      \\DC1HW_REF_CPU_CYCLES\DLE\DC3\"\141\SOH\n\
      \\tPerfClock\DC2\SYN\n\
      \\DC2UNKNOWN_PERF_CLOCK\DLE\NUL\DC2\ETB\n\
      \\DC3PERF_CLOCK_REALTIME\DLE\SOH\DC2\CAN\n\
      \\DC4PERF_CLOCK_MONOTONIC\DLE\STX\DC2\FS\n\
      \\CANPERF_CLOCK_MONOTONIC_RAW\DLE\ETX\DC2\ETB\n\
      \\DC3PERF_CLOCK_BOOTTIME\DLE\EOT"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerfEvents'_unknownFields
        (\ x__ y__ -> x__ {_PerfEvents'_unknownFields = y__})
  defMessage
    = PerfEvents'_constructor {_PerfEvents'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerfEvents -> Data.ProtoLens.Encoding.Bytes.Parser PerfEvents
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
          (do loop Data.ProtoLens.defMessage) "PerfEvents"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData PerfEvents where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_PerfEvents'_unknownFields x__) ()
data PerfEvents'Counter
  = PerfEvents'UNKNOWN_COUNTER |
    PerfEvents'SW_CPU_CLOCK |
    PerfEvents'SW_PAGE_FAULTS |
    PerfEvents'SW_TASK_CLOCK |
    PerfEvents'SW_CONTEXT_SWITCHES |
    PerfEvents'SW_CPU_MIGRATIONS |
    PerfEvents'SW_PAGE_FAULTS_MIN |
    PerfEvents'SW_PAGE_FAULTS_MAJ |
    PerfEvents'SW_ALIGNMENT_FAULTS |
    PerfEvents'SW_EMULATION_FAULTS |
    PerfEvents'HW_CPU_CYCLES |
    PerfEvents'HW_INSTRUCTIONS |
    PerfEvents'HW_CACHE_REFERENCES |
    PerfEvents'HW_CACHE_MISSES |
    PerfEvents'HW_BRANCH_INSTRUCTIONS |
    PerfEvents'HW_BRANCH_MISSES |
    PerfEvents'HW_BUS_CYCLES |
    PerfEvents'HW_STALLED_CYCLES_FRONTEND |
    PerfEvents'HW_STALLED_CYCLES_BACKEND |
    PerfEvents'HW_REF_CPU_CYCLES |
    PerfEvents'SW_DUMMY
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum PerfEvents'Counter where
  maybeToEnum 0 = Prelude.Just PerfEvents'UNKNOWN_COUNTER
  maybeToEnum 1 = Prelude.Just PerfEvents'SW_CPU_CLOCK
  maybeToEnum 2 = Prelude.Just PerfEvents'SW_PAGE_FAULTS
  maybeToEnum 3 = Prelude.Just PerfEvents'SW_TASK_CLOCK
  maybeToEnum 4 = Prelude.Just PerfEvents'SW_CONTEXT_SWITCHES
  maybeToEnum 5 = Prelude.Just PerfEvents'SW_CPU_MIGRATIONS
  maybeToEnum 6 = Prelude.Just PerfEvents'SW_PAGE_FAULTS_MIN
  maybeToEnum 7 = Prelude.Just PerfEvents'SW_PAGE_FAULTS_MAJ
  maybeToEnum 8 = Prelude.Just PerfEvents'SW_ALIGNMENT_FAULTS
  maybeToEnum 9 = Prelude.Just PerfEvents'SW_EMULATION_FAULTS
  maybeToEnum 10 = Prelude.Just PerfEvents'HW_CPU_CYCLES
  maybeToEnum 11 = Prelude.Just PerfEvents'HW_INSTRUCTIONS
  maybeToEnum 12 = Prelude.Just PerfEvents'HW_CACHE_REFERENCES
  maybeToEnum 13 = Prelude.Just PerfEvents'HW_CACHE_MISSES
  maybeToEnum 14 = Prelude.Just PerfEvents'HW_BRANCH_INSTRUCTIONS
  maybeToEnum 15 = Prelude.Just PerfEvents'HW_BRANCH_MISSES
  maybeToEnum 16 = Prelude.Just PerfEvents'HW_BUS_CYCLES
  maybeToEnum 17 = Prelude.Just PerfEvents'HW_STALLED_CYCLES_FRONTEND
  maybeToEnum 18 = Prelude.Just PerfEvents'HW_STALLED_CYCLES_BACKEND
  maybeToEnum 19 = Prelude.Just PerfEvents'HW_REF_CPU_CYCLES
  maybeToEnum 20 = Prelude.Just PerfEvents'SW_DUMMY
  maybeToEnum _ = Prelude.Nothing
  showEnum PerfEvents'UNKNOWN_COUNTER = "UNKNOWN_COUNTER"
  showEnum PerfEvents'SW_CPU_CLOCK = "SW_CPU_CLOCK"
  showEnum PerfEvents'SW_PAGE_FAULTS = "SW_PAGE_FAULTS"
  showEnum PerfEvents'SW_TASK_CLOCK = "SW_TASK_CLOCK"
  showEnum PerfEvents'SW_CONTEXT_SWITCHES = "SW_CONTEXT_SWITCHES"
  showEnum PerfEvents'SW_CPU_MIGRATIONS = "SW_CPU_MIGRATIONS"
  showEnum PerfEvents'SW_PAGE_FAULTS_MIN = "SW_PAGE_FAULTS_MIN"
  showEnum PerfEvents'SW_PAGE_FAULTS_MAJ = "SW_PAGE_FAULTS_MAJ"
  showEnum PerfEvents'SW_ALIGNMENT_FAULTS = "SW_ALIGNMENT_FAULTS"
  showEnum PerfEvents'SW_EMULATION_FAULTS = "SW_EMULATION_FAULTS"
  showEnum PerfEvents'SW_DUMMY = "SW_DUMMY"
  showEnum PerfEvents'HW_CPU_CYCLES = "HW_CPU_CYCLES"
  showEnum PerfEvents'HW_INSTRUCTIONS = "HW_INSTRUCTIONS"
  showEnum PerfEvents'HW_CACHE_REFERENCES = "HW_CACHE_REFERENCES"
  showEnum PerfEvents'HW_CACHE_MISSES = "HW_CACHE_MISSES"
  showEnum PerfEvents'HW_BRANCH_INSTRUCTIONS
    = "HW_BRANCH_INSTRUCTIONS"
  showEnum PerfEvents'HW_BRANCH_MISSES = "HW_BRANCH_MISSES"
  showEnum PerfEvents'HW_BUS_CYCLES = "HW_BUS_CYCLES"
  showEnum PerfEvents'HW_STALLED_CYCLES_FRONTEND
    = "HW_STALLED_CYCLES_FRONTEND"
  showEnum PerfEvents'HW_STALLED_CYCLES_BACKEND
    = "HW_STALLED_CYCLES_BACKEND"
  showEnum PerfEvents'HW_REF_CPU_CYCLES = "HW_REF_CPU_CYCLES"
  readEnum k
    | (Prelude.==) k "UNKNOWN_COUNTER"
    = Prelude.Just PerfEvents'UNKNOWN_COUNTER
    | (Prelude.==) k "SW_CPU_CLOCK"
    = Prelude.Just PerfEvents'SW_CPU_CLOCK
    | (Prelude.==) k "SW_PAGE_FAULTS"
    = Prelude.Just PerfEvents'SW_PAGE_FAULTS
    | (Prelude.==) k "SW_TASK_CLOCK"
    = Prelude.Just PerfEvents'SW_TASK_CLOCK
    | (Prelude.==) k "SW_CONTEXT_SWITCHES"
    = Prelude.Just PerfEvents'SW_CONTEXT_SWITCHES
    | (Prelude.==) k "SW_CPU_MIGRATIONS"
    = Prelude.Just PerfEvents'SW_CPU_MIGRATIONS
    | (Prelude.==) k "SW_PAGE_FAULTS_MIN"
    = Prelude.Just PerfEvents'SW_PAGE_FAULTS_MIN
    | (Prelude.==) k "SW_PAGE_FAULTS_MAJ"
    = Prelude.Just PerfEvents'SW_PAGE_FAULTS_MAJ
    | (Prelude.==) k "SW_ALIGNMENT_FAULTS"
    = Prelude.Just PerfEvents'SW_ALIGNMENT_FAULTS
    | (Prelude.==) k "SW_EMULATION_FAULTS"
    = Prelude.Just PerfEvents'SW_EMULATION_FAULTS
    | (Prelude.==) k "SW_DUMMY" = Prelude.Just PerfEvents'SW_DUMMY
    | (Prelude.==) k "HW_CPU_CYCLES"
    = Prelude.Just PerfEvents'HW_CPU_CYCLES
    | (Prelude.==) k "HW_INSTRUCTIONS"
    = Prelude.Just PerfEvents'HW_INSTRUCTIONS
    | (Prelude.==) k "HW_CACHE_REFERENCES"
    = Prelude.Just PerfEvents'HW_CACHE_REFERENCES
    | (Prelude.==) k "HW_CACHE_MISSES"
    = Prelude.Just PerfEvents'HW_CACHE_MISSES
    | (Prelude.==) k "HW_BRANCH_INSTRUCTIONS"
    = Prelude.Just PerfEvents'HW_BRANCH_INSTRUCTIONS
    | (Prelude.==) k "HW_BRANCH_MISSES"
    = Prelude.Just PerfEvents'HW_BRANCH_MISSES
    | (Prelude.==) k "HW_BUS_CYCLES"
    = Prelude.Just PerfEvents'HW_BUS_CYCLES
    | (Prelude.==) k "HW_STALLED_CYCLES_FRONTEND"
    = Prelude.Just PerfEvents'HW_STALLED_CYCLES_FRONTEND
    | (Prelude.==) k "HW_STALLED_CYCLES_BACKEND"
    = Prelude.Just PerfEvents'HW_STALLED_CYCLES_BACKEND
    | (Prelude.==) k "HW_REF_CPU_CYCLES"
    = Prelude.Just PerfEvents'HW_REF_CPU_CYCLES
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded PerfEvents'Counter where
  minBound = PerfEvents'UNKNOWN_COUNTER
  maxBound = PerfEvents'SW_DUMMY
instance Prelude.Enum PerfEvents'Counter where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Counter: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PerfEvents'UNKNOWN_COUNTER = 0
  fromEnum PerfEvents'SW_CPU_CLOCK = 1
  fromEnum PerfEvents'SW_PAGE_FAULTS = 2
  fromEnum PerfEvents'SW_TASK_CLOCK = 3
  fromEnum PerfEvents'SW_CONTEXT_SWITCHES = 4
  fromEnum PerfEvents'SW_CPU_MIGRATIONS = 5
  fromEnum PerfEvents'SW_PAGE_FAULTS_MIN = 6
  fromEnum PerfEvents'SW_PAGE_FAULTS_MAJ = 7
  fromEnum PerfEvents'SW_ALIGNMENT_FAULTS = 8
  fromEnum PerfEvents'SW_EMULATION_FAULTS = 9
  fromEnum PerfEvents'HW_CPU_CYCLES = 10
  fromEnum PerfEvents'HW_INSTRUCTIONS = 11
  fromEnum PerfEvents'HW_CACHE_REFERENCES = 12
  fromEnum PerfEvents'HW_CACHE_MISSES = 13
  fromEnum PerfEvents'HW_BRANCH_INSTRUCTIONS = 14
  fromEnum PerfEvents'HW_BRANCH_MISSES = 15
  fromEnum PerfEvents'HW_BUS_CYCLES = 16
  fromEnum PerfEvents'HW_STALLED_CYCLES_FRONTEND = 17
  fromEnum PerfEvents'HW_STALLED_CYCLES_BACKEND = 18
  fromEnum PerfEvents'HW_REF_CPU_CYCLES = 19
  fromEnum PerfEvents'SW_DUMMY = 20
  succ PerfEvents'SW_DUMMY
    = Prelude.error
        "PerfEvents'Counter.succ: bad argument PerfEvents'SW_DUMMY. This value would be out of bounds."
  succ PerfEvents'UNKNOWN_COUNTER = PerfEvents'SW_CPU_CLOCK
  succ PerfEvents'SW_CPU_CLOCK = PerfEvents'SW_PAGE_FAULTS
  succ PerfEvents'SW_PAGE_FAULTS = PerfEvents'SW_TASK_CLOCK
  succ PerfEvents'SW_TASK_CLOCK = PerfEvents'SW_CONTEXT_SWITCHES
  succ PerfEvents'SW_CONTEXT_SWITCHES = PerfEvents'SW_CPU_MIGRATIONS
  succ PerfEvents'SW_CPU_MIGRATIONS = PerfEvents'SW_PAGE_FAULTS_MIN
  succ PerfEvents'SW_PAGE_FAULTS_MIN = PerfEvents'SW_PAGE_FAULTS_MAJ
  succ PerfEvents'SW_PAGE_FAULTS_MAJ = PerfEvents'SW_ALIGNMENT_FAULTS
  succ PerfEvents'SW_ALIGNMENT_FAULTS
    = PerfEvents'SW_EMULATION_FAULTS
  succ PerfEvents'SW_EMULATION_FAULTS = PerfEvents'HW_CPU_CYCLES
  succ PerfEvents'HW_CPU_CYCLES = PerfEvents'HW_INSTRUCTIONS
  succ PerfEvents'HW_INSTRUCTIONS = PerfEvents'HW_CACHE_REFERENCES
  succ PerfEvents'HW_CACHE_REFERENCES = PerfEvents'HW_CACHE_MISSES
  succ PerfEvents'HW_CACHE_MISSES = PerfEvents'HW_BRANCH_INSTRUCTIONS
  succ PerfEvents'HW_BRANCH_INSTRUCTIONS
    = PerfEvents'HW_BRANCH_MISSES
  succ PerfEvents'HW_BRANCH_MISSES = PerfEvents'HW_BUS_CYCLES
  succ PerfEvents'HW_BUS_CYCLES
    = PerfEvents'HW_STALLED_CYCLES_FRONTEND
  succ PerfEvents'HW_STALLED_CYCLES_FRONTEND
    = PerfEvents'HW_STALLED_CYCLES_BACKEND
  succ PerfEvents'HW_STALLED_CYCLES_BACKEND
    = PerfEvents'HW_REF_CPU_CYCLES
  succ PerfEvents'HW_REF_CPU_CYCLES = PerfEvents'SW_DUMMY
  pred PerfEvents'UNKNOWN_COUNTER
    = Prelude.error
        "PerfEvents'Counter.pred: bad argument PerfEvents'UNKNOWN_COUNTER. This value would be out of bounds."
  pred PerfEvents'SW_CPU_CLOCK = PerfEvents'UNKNOWN_COUNTER
  pred PerfEvents'SW_PAGE_FAULTS = PerfEvents'SW_CPU_CLOCK
  pred PerfEvents'SW_TASK_CLOCK = PerfEvents'SW_PAGE_FAULTS
  pred PerfEvents'SW_CONTEXT_SWITCHES = PerfEvents'SW_TASK_CLOCK
  pred PerfEvents'SW_CPU_MIGRATIONS = PerfEvents'SW_CONTEXT_SWITCHES
  pred PerfEvents'SW_PAGE_FAULTS_MIN = PerfEvents'SW_CPU_MIGRATIONS
  pred PerfEvents'SW_PAGE_FAULTS_MAJ = PerfEvents'SW_PAGE_FAULTS_MIN
  pred PerfEvents'SW_ALIGNMENT_FAULTS = PerfEvents'SW_PAGE_FAULTS_MAJ
  pred PerfEvents'SW_EMULATION_FAULTS
    = PerfEvents'SW_ALIGNMENT_FAULTS
  pred PerfEvents'HW_CPU_CYCLES = PerfEvents'SW_EMULATION_FAULTS
  pred PerfEvents'HW_INSTRUCTIONS = PerfEvents'HW_CPU_CYCLES
  pred PerfEvents'HW_CACHE_REFERENCES = PerfEvents'HW_INSTRUCTIONS
  pred PerfEvents'HW_CACHE_MISSES = PerfEvents'HW_CACHE_REFERENCES
  pred PerfEvents'HW_BRANCH_INSTRUCTIONS = PerfEvents'HW_CACHE_MISSES
  pred PerfEvents'HW_BRANCH_MISSES
    = PerfEvents'HW_BRANCH_INSTRUCTIONS
  pred PerfEvents'HW_BUS_CYCLES = PerfEvents'HW_BRANCH_MISSES
  pred PerfEvents'HW_STALLED_CYCLES_FRONTEND
    = PerfEvents'HW_BUS_CYCLES
  pred PerfEvents'HW_STALLED_CYCLES_BACKEND
    = PerfEvents'HW_STALLED_CYCLES_FRONTEND
  pred PerfEvents'HW_REF_CPU_CYCLES
    = PerfEvents'HW_STALLED_CYCLES_BACKEND
  pred PerfEvents'SW_DUMMY = PerfEvents'HW_REF_CPU_CYCLES
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault PerfEvents'Counter where
  fieldDefault = PerfEvents'UNKNOWN_COUNTER
instance Control.DeepSeq.NFData PerfEvents'Counter where
  rnf x__ = Prelude.seq x__ ()
data PerfEvents'PerfClock
  = PerfEvents'UNKNOWN_PERF_CLOCK |
    PerfEvents'PERF_CLOCK_REALTIME |
    PerfEvents'PERF_CLOCK_MONOTONIC |
    PerfEvents'PERF_CLOCK_MONOTONIC_RAW |
    PerfEvents'PERF_CLOCK_BOOTTIME
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum PerfEvents'PerfClock where
  maybeToEnum 0 = Prelude.Just PerfEvents'UNKNOWN_PERF_CLOCK
  maybeToEnum 1 = Prelude.Just PerfEvents'PERF_CLOCK_REALTIME
  maybeToEnum 2 = Prelude.Just PerfEvents'PERF_CLOCK_MONOTONIC
  maybeToEnum 3 = Prelude.Just PerfEvents'PERF_CLOCK_MONOTONIC_RAW
  maybeToEnum 4 = Prelude.Just PerfEvents'PERF_CLOCK_BOOTTIME
  maybeToEnum _ = Prelude.Nothing
  showEnum PerfEvents'UNKNOWN_PERF_CLOCK = "UNKNOWN_PERF_CLOCK"
  showEnum PerfEvents'PERF_CLOCK_REALTIME = "PERF_CLOCK_REALTIME"
  showEnum PerfEvents'PERF_CLOCK_MONOTONIC = "PERF_CLOCK_MONOTONIC"
  showEnum PerfEvents'PERF_CLOCK_MONOTONIC_RAW
    = "PERF_CLOCK_MONOTONIC_RAW"
  showEnum PerfEvents'PERF_CLOCK_BOOTTIME = "PERF_CLOCK_BOOTTIME"
  readEnum k
    | (Prelude.==) k "UNKNOWN_PERF_CLOCK"
    = Prelude.Just PerfEvents'UNKNOWN_PERF_CLOCK
    | (Prelude.==) k "PERF_CLOCK_REALTIME"
    = Prelude.Just PerfEvents'PERF_CLOCK_REALTIME
    | (Prelude.==) k "PERF_CLOCK_MONOTONIC"
    = Prelude.Just PerfEvents'PERF_CLOCK_MONOTONIC
    | (Prelude.==) k "PERF_CLOCK_MONOTONIC_RAW"
    = Prelude.Just PerfEvents'PERF_CLOCK_MONOTONIC_RAW
    | (Prelude.==) k "PERF_CLOCK_BOOTTIME"
    = Prelude.Just PerfEvents'PERF_CLOCK_BOOTTIME
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded PerfEvents'PerfClock where
  minBound = PerfEvents'UNKNOWN_PERF_CLOCK
  maxBound = PerfEvents'PERF_CLOCK_BOOTTIME
instance Prelude.Enum PerfEvents'PerfClock where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum PerfClock: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum PerfEvents'UNKNOWN_PERF_CLOCK = 0
  fromEnum PerfEvents'PERF_CLOCK_REALTIME = 1
  fromEnum PerfEvents'PERF_CLOCK_MONOTONIC = 2
  fromEnum PerfEvents'PERF_CLOCK_MONOTONIC_RAW = 3
  fromEnum PerfEvents'PERF_CLOCK_BOOTTIME = 4
  succ PerfEvents'PERF_CLOCK_BOOTTIME
    = Prelude.error
        "PerfEvents'PerfClock.succ: bad argument PerfEvents'PERF_CLOCK_BOOTTIME. This value would be out of bounds."
  succ PerfEvents'UNKNOWN_PERF_CLOCK = PerfEvents'PERF_CLOCK_REALTIME
  succ PerfEvents'PERF_CLOCK_REALTIME
    = PerfEvents'PERF_CLOCK_MONOTONIC
  succ PerfEvents'PERF_CLOCK_MONOTONIC
    = PerfEvents'PERF_CLOCK_MONOTONIC_RAW
  succ PerfEvents'PERF_CLOCK_MONOTONIC_RAW
    = PerfEvents'PERF_CLOCK_BOOTTIME
  pred PerfEvents'UNKNOWN_PERF_CLOCK
    = Prelude.error
        "PerfEvents'PerfClock.pred: bad argument PerfEvents'UNKNOWN_PERF_CLOCK. This value would be out of bounds."
  pred PerfEvents'PERF_CLOCK_REALTIME = PerfEvents'UNKNOWN_PERF_CLOCK
  pred PerfEvents'PERF_CLOCK_MONOTONIC
    = PerfEvents'PERF_CLOCK_REALTIME
  pred PerfEvents'PERF_CLOCK_MONOTONIC_RAW
    = PerfEvents'PERF_CLOCK_MONOTONIC
  pred PerfEvents'PERF_CLOCK_BOOTTIME
    = PerfEvents'PERF_CLOCK_MONOTONIC_RAW
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault PerfEvents'PerfClock where
  fieldDefault = PerfEvents'UNKNOWN_PERF_CLOCK
instance Control.DeepSeq.NFData PerfEvents'PerfClock where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.type'' @:: Lens' PerfEvents'RawEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'type'' @:: Lens' PerfEvents'RawEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.config' @:: Lens' PerfEvents'RawEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'config' @:: Lens' PerfEvents'RawEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.config1' @:: Lens' PerfEvents'RawEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'config1' @:: Lens' PerfEvents'RawEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.config2' @:: Lens' PerfEvents'RawEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'config2' @:: Lens' PerfEvents'RawEvent (Prelude.Maybe Data.Word.Word64)@ -}
data PerfEvents'RawEvent
  = PerfEvents'RawEvent'_constructor {_PerfEvents'RawEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                      _PerfEvents'RawEvent'config :: !(Prelude.Maybe Data.Word.Word64),
                                      _PerfEvents'RawEvent'config1 :: !(Prelude.Maybe Data.Word.Word64),
                                      _PerfEvents'RawEvent'config2 :: !(Prelude.Maybe Data.Word.Word64),
                                      _PerfEvents'RawEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerfEvents'RawEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PerfEvents'RawEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'RawEvent'type'
           (\ x__ y__ -> x__ {_PerfEvents'RawEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfEvents'RawEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'RawEvent'type'
           (\ x__ y__ -> x__ {_PerfEvents'RawEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfEvents'RawEvent "config" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'RawEvent'config
           (\ x__ y__ -> x__ {_PerfEvents'RawEvent'config = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfEvents'RawEvent "maybe'config" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'RawEvent'config
           (\ x__ y__ -> x__ {_PerfEvents'RawEvent'config = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfEvents'RawEvent "config1" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'RawEvent'config1
           (\ x__ y__ -> x__ {_PerfEvents'RawEvent'config1 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfEvents'RawEvent "maybe'config1" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'RawEvent'config1
           (\ x__ y__ -> x__ {_PerfEvents'RawEvent'config1 = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfEvents'RawEvent "config2" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'RawEvent'config2
           (\ x__ y__ -> x__ {_PerfEvents'RawEvent'config2 = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfEvents'RawEvent "maybe'config2" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'RawEvent'config2
           (\ x__ y__ -> x__ {_PerfEvents'RawEvent'config2 = y__}))
        Prelude.id
instance Data.ProtoLens.Message PerfEvents'RawEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.PerfEvents.RawEvent"
  packedMessageDescriptor _
    = "\n\
      \\bRawEvent\DC2\DC2\n\
      \\EOTtype\CAN\SOH \SOH(\rR\EOTtype\DC2\SYN\n\
      \\ACKconfig\CAN\STX \SOH(\EOTR\ACKconfig\DC2\CAN\n\
      \\aconfig1\CAN\ETX \SOH(\EOTR\aconfig1\DC2\CAN\n\
      \\aconfig2\CAN\EOT \SOH(\EOTR\aconfig2"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'RawEvent
        config__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'RawEvent
        config1__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config1"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config1")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'RawEvent
        config2__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "config2"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'config2")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'RawEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, config__field_descriptor),
           (Data.ProtoLens.Tag 3, config1__field_descriptor),
           (Data.ProtoLens.Tag 4, config2__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerfEvents'RawEvent'_unknownFields
        (\ x__ y__ -> x__ {_PerfEvents'RawEvent'_unknownFields = y__})
  defMessage
    = PerfEvents'RawEvent'_constructor
        {_PerfEvents'RawEvent'type' = Prelude.Nothing,
         _PerfEvents'RawEvent'config = Prelude.Nothing,
         _PerfEvents'RawEvent'config1 = Prelude.Nothing,
         _PerfEvents'RawEvent'config2 = Prelude.Nothing,
         _PerfEvents'RawEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerfEvents'RawEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser PerfEvents'RawEvent
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
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "config"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "config1"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config1") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "config2"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"config2") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "RawEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config1") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'config2") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData PerfEvents'RawEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerfEvents'RawEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PerfEvents'RawEvent'type' x__)
                (Control.DeepSeq.deepseq
                   (_PerfEvents'RawEvent'config x__)
                   (Control.DeepSeq.deepseq
                      (_PerfEvents'RawEvent'config1 x__)
                      (Control.DeepSeq.deepseq (_PerfEvents'RawEvent'config2 x__) ()))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.timestampClock' @:: Lens' PerfEvents'Timebase PerfEvents'PerfClock@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'timestampClock' @:: Lens' PerfEvents'Timebase (Prelude.Maybe PerfEvents'PerfClock)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.name' @:: Lens' PerfEvents'Timebase Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'name' @:: Lens' PerfEvents'Timebase (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'interval' @:: Lens' PerfEvents'Timebase (Prelude.Maybe PerfEvents'Timebase'Interval)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'frequency' @:: Lens' PerfEvents'Timebase (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.frequency' @:: Lens' PerfEvents'Timebase Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'period' @:: Lens' PerfEvents'Timebase (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.period' @:: Lens' PerfEvents'Timebase Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'event' @:: Lens' PerfEvents'Timebase (Prelude.Maybe PerfEvents'Timebase'Event)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'counter' @:: Lens' PerfEvents'Timebase (Prelude.Maybe PerfEvents'Counter)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.counter' @:: Lens' PerfEvents'Timebase PerfEvents'Counter@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'tracepoint' @:: Lens' PerfEvents'Timebase (Prelude.Maybe PerfEvents'Tracepoint)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.tracepoint' @:: Lens' PerfEvents'Timebase PerfEvents'Tracepoint@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'rawEvent' @:: Lens' PerfEvents'Timebase (Prelude.Maybe PerfEvents'RawEvent)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.rawEvent' @:: Lens' PerfEvents'Timebase PerfEvents'RawEvent@ -}
data PerfEvents'Timebase
  = PerfEvents'Timebase'_constructor {_PerfEvents'Timebase'timestampClock :: !(Prelude.Maybe PerfEvents'PerfClock),
                                      _PerfEvents'Timebase'name :: !(Prelude.Maybe Data.Text.Text),
                                      _PerfEvents'Timebase'interval :: !(Prelude.Maybe PerfEvents'Timebase'Interval),
                                      _PerfEvents'Timebase'event :: !(Prelude.Maybe PerfEvents'Timebase'Event),
                                      _PerfEvents'Timebase'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerfEvents'Timebase where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data PerfEvents'Timebase'Interval
  = PerfEvents'Timebase'Frequency !Data.Word.Word64 |
    PerfEvents'Timebase'Period !Data.Word.Word64
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
data PerfEvents'Timebase'Event
  = PerfEvents'Timebase'Counter !PerfEvents'Counter |
    PerfEvents'Timebase'Tracepoint !PerfEvents'Tracepoint |
    PerfEvents'Timebase'RawEvent !PerfEvents'RawEvent
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "timestampClock" PerfEvents'PerfClock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'timestampClock
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'timestampClock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "maybe'timestampClock" (Prelude.Maybe PerfEvents'PerfClock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'timestampClock
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'timestampClock = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'name
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'name
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "maybe'interval" (Prelude.Maybe PerfEvents'Timebase'Interval) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'interval
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'interval = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "maybe'frequency" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'interval
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'interval = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerfEvents'Timebase'Frequency x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'Frequency y__))
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "frequency" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'interval
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'interval = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerfEvents'Timebase'Frequency x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'Frequency y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "maybe'period" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'interval
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'interval = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerfEvents'Timebase'Period x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'Period y__))
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "period" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'interval
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'interval = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerfEvents'Timebase'Period x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'Period y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "maybe'event" (Prelude.Maybe PerfEvents'Timebase'Event) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'event
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'event = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "maybe'counter" (Prelude.Maybe PerfEvents'Counter) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'event
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerfEvents'Timebase'Counter x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'Counter y__))
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "counter" PerfEvents'Counter where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'event
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerfEvents'Timebase'Counter x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'Counter y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "maybe'tracepoint" (Prelude.Maybe PerfEvents'Tracepoint) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'event
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerfEvents'Timebase'Tracepoint x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'Tracepoint y__))
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "tracepoint" PerfEvents'Tracepoint where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'event
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerfEvents'Timebase'Tracepoint x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'Tracepoint y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "maybe'rawEvent" (Prelude.Maybe PerfEvents'RawEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'event
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'event = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (PerfEvents'Timebase'RawEvent x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'RawEvent y__))
instance Data.ProtoLens.Field.HasField PerfEvents'Timebase "rawEvent" PerfEvents'RawEvent where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Timebase'event
           (\ x__ y__ -> x__ {_PerfEvents'Timebase'event = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (PerfEvents'Timebase'RawEvent x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap PerfEvents'Timebase'RawEvent y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage))
instance Data.ProtoLens.Message PerfEvents'Timebase where
  messageName _
    = Data.Text.pack "perfetto.protos.PerfEvents.Timebase"
  packedMessageDescriptor _
    = "\n\
      \\bTimebase\DC2\RS\n\
      \\tfrequency\CAN\STX \SOH(\EOTH\NULR\tfrequency\DC2\CAN\n\
      \\ACKperiod\CAN\SOH \SOH(\EOTH\NULR\ACKperiod\DC2?\n\
      \\acounter\CAN\EOT \SOH(\SO2#.perfetto.protos.PerfEvents.CounterH\SOHR\acounter\DC2H\n\
      \\n\
      \tracepoint\CAN\ETX \SOH(\v2&.perfetto.protos.PerfEvents.TracepointH\SOHR\n\
      \tracepoint\DC2C\n\
      \\traw_event\CAN\ENQ \SOH(\v2$.perfetto.protos.PerfEvents.RawEventH\SOHR\brawEvent\DC2N\n\
      \\SItimestamp_clock\CAN\v \SOH(\SO2%.perfetto.protos.PerfEvents.PerfClockR\SOtimestampClock\DC2\DC2\n\
      \\EOTname\CAN\n\
      \ \SOH(\tR\EOTnameB\n\
      \\n\
      \\bintervalB\a\n\
      \\ENQevent"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        timestampClock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp_clock"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor PerfEvents'PerfClock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestampClock")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'Timebase
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'Timebase
        frequency__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "frequency"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'frequency")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'Timebase
        period__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "period"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'period")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'Timebase
        counter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "counter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor PerfEvents'Counter)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'counter")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'Timebase
        tracepoint__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tracepoint"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PerfEvents'Tracepoint)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tracepoint")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'Timebase
        rawEvent__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "raw_event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor PerfEvents'RawEvent)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'rawEvent")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'Timebase
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 11, timestampClock__field_descriptor),
           (Data.ProtoLens.Tag 10, name__field_descriptor),
           (Data.ProtoLens.Tag 2, frequency__field_descriptor),
           (Data.ProtoLens.Tag 1, period__field_descriptor),
           (Data.ProtoLens.Tag 4, counter__field_descriptor),
           (Data.ProtoLens.Tag 3, tracepoint__field_descriptor),
           (Data.ProtoLens.Tag 5, rawEvent__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerfEvents'Timebase'_unknownFields
        (\ x__ y__ -> x__ {_PerfEvents'Timebase'_unknownFields = y__})
  defMessage
    = PerfEvents'Timebase'_constructor
        {_PerfEvents'Timebase'timestampClock = Prelude.Nothing,
         _PerfEvents'Timebase'name = Prelude.Nothing,
         _PerfEvents'Timebase'interval = Prelude.Nothing,
         _PerfEvents'Timebase'event = Prelude.Nothing,
         _PerfEvents'Timebase'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerfEvents'Timebase
          -> Data.ProtoLens.Encoding.Bytes.Parser PerfEvents'Timebase
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
                        88
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "timestamp_clock"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"timestampClock") y x)
                        82
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "frequency"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"frequency") y x)
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "period"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"period") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "counter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"counter") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "tracepoint"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tracepoint") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "raw_event"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"rawEvent") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Timebase"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'timestampClock") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 88)
                       ((Prelude..)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                          Prelude.fromEnum _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'interval") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (PerfEvents'Timebase'Frequency v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt v)
                      (Prelude.Just (PerfEvents'Timebase'Period v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'event") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just (PerfEvents'Timebase'Counter v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                   Prelude.fromEnum v)
                         (Prelude.Just (PerfEvents'Timebase'Tracepoint v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v)
                         (Prelude.Just (PerfEvents'Timebase'RawEvent v))
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                                ((Prelude..)
                                   (\ bs
                                      -> (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                                           (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                   Data.ProtoLens.encodeMessage v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData PerfEvents'Timebase where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerfEvents'Timebase'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PerfEvents'Timebase'timestampClock x__)
                (Control.DeepSeq.deepseq
                   (_PerfEvents'Timebase'name x__)
                   (Control.DeepSeq.deepseq
                      (_PerfEvents'Timebase'interval x__)
                      (Control.DeepSeq.deepseq (_PerfEvents'Timebase'event x__) ()))))
instance Control.DeepSeq.NFData PerfEvents'Timebase'Interval where
  rnf (PerfEvents'Timebase'Frequency x__) = Control.DeepSeq.rnf x__
  rnf (PerfEvents'Timebase'Period x__) = Control.DeepSeq.rnf x__
instance Control.DeepSeq.NFData PerfEvents'Timebase'Event where
  rnf (PerfEvents'Timebase'Counter x__) = Control.DeepSeq.rnf x__
  rnf (PerfEvents'Timebase'Tracepoint x__) = Control.DeepSeq.rnf x__
  rnf (PerfEvents'Timebase'RawEvent x__) = Control.DeepSeq.rnf x__
_PerfEvents'Timebase'Frequency ::
  Data.ProtoLens.Prism.Prism' PerfEvents'Timebase'Interval Data.Word.Word64
_PerfEvents'Timebase'Frequency
  = Data.ProtoLens.Prism.prism'
      PerfEvents'Timebase'Frequency
      (\ p__
         -> case p__ of
              (PerfEvents'Timebase'Frequency p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerfEvents'Timebase'Period ::
  Data.ProtoLens.Prism.Prism' PerfEvents'Timebase'Interval Data.Word.Word64
_PerfEvents'Timebase'Period
  = Data.ProtoLens.Prism.prism'
      PerfEvents'Timebase'Period
      (\ p__
         -> case p__ of
              (PerfEvents'Timebase'Period p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerfEvents'Timebase'Counter ::
  Data.ProtoLens.Prism.Prism' PerfEvents'Timebase'Event PerfEvents'Counter
_PerfEvents'Timebase'Counter
  = Data.ProtoLens.Prism.prism'
      PerfEvents'Timebase'Counter
      (\ p__
         -> case p__ of
              (PerfEvents'Timebase'Counter p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerfEvents'Timebase'Tracepoint ::
  Data.ProtoLens.Prism.Prism' PerfEvents'Timebase'Event PerfEvents'Tracepoint
_PerfEvents'Timebase'Tracepoint
  = Data.ProtoLens.Prism.prism'
      PerfEvents'Timebase'Tracepoint
      (\ p__
         -> case p__ of
              (PerfEvents'Timebase'Tracepoint p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_PerfEvents'Timebase'RawEvent ::
  Data.ProtoLens.Prism.Prism' PerfEvents'Timebase'Event PerfEvents'RawEvent
_PerfEvents'Timebase'RawEvent
  = Data.ProtoLens.Prism.prism'
      PerfEvents'Timebase'RawEvent
      (\ p__
         -> case p__ of
              (PerfEvents'Timebase'RawEvent p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.name' @:: Lens' PerfEvents'Tracepoint Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'name' @:: Lens' PerfEvents'Tracepoint (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.filter' @:: Lens' PerfEvents'Tracepoint Data.Text.Text@
         * 'Proto.Protos.Perfetto.Common.PerfEvents_Fields.maybe'filter' @:: Lens' PerfEvents'Tracepoint (Prelude.Maybe Data.Text.Text)@ -}
data PerfEvents'Tracepoint
  = PerfEvents'Tracepoint'_constructor {_PerfEvents'Tracepoint'name :: !(Prelude.Maybe Data.Text.Text),
                                        _PerfEvents'Tracepoint'filter :: !(Prelude.Maybe Data.Text.Text),
                                        _PerfEvents'Tracepoint'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show PerfEvents'Tracepoint where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField PerfEvents'Tracepoint "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Tracepoint'name
           (\ x__ y__ -> x__ {_PerfEvents'Tracepoint'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfEvents'Tracepoint "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Tracepoint'name
           (\ x__ y__ -> x__ {_PerfEvents'Tracepoint'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField PerfEvents'Tracepoint "filter" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Tracepoint'filter
           (\ x__ y__ -> x__ {_PerfEvents'Tracepoint'filter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField PerfEvents'Tracepoint "maybe'filter" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _PerfEvents'Tracepoint'filter
           (\ x__ y__ -> x__ {_PerfEvents'Tracepoint'filter = y__}))
        Prelude.id
instance Data.ProtoLens.Message PerfEvents'Tracepoint where
  messageName _
    = Data.Text.pack "perfetto.protos.PerfEvents.Tracepoint"
  packedMessageDescriptor _
    = "\n\
      \\n\
      \Tracepoint\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
      \\ACKfilter\CAN\STX \SOH(\tR\ACKfilter"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'name")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'Tracepoint
        filter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "filter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'filter")) ::
              Data.ProtoLens.FieldDescriptor PerfEvents'Tracepoint
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, filter__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _PerfEvents'Tracepoint'_unknownFields
        (\ x__ y__ -> x__ {_PerfEvents'Tracepoint'_unknownFields = y__})
  defMessage
    = PerfEvents'Tracepoint'_constructor
        {_PerfEvents'Tracepoint'name = Prelude.Nothing,
         _PerfEvents'Tracepoint'filter = Prelude.Nothing,
         _PerfEvents'Tracepoint'_unknownFields = []}
  parseMessage
    = let
        loop ::
          PerfEvents'Tracepoint
          -> Data.ProtoLens.Encoding.Bytes.Parser PerfEvents'Tracepoint
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
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
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
                                       "filter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"filter") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Tracepoint"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'name") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'filter") _x
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
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData PerfEvents'Tracepoint where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_PerfEvents'Tracepoint'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_PerfEvents'Tracepoint'name x__)
                (Control.DeepSeq.deepseq (_PerfEvents'Tracepoint'filter x__) ()))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \(protos/perfetto/common/perf_events.proto\DC2\SIperfetto.protos\"\189\t\n\
    \\n\
    \PerfEvents\SUB\141\ETX\n\
    \\bTimebase\DC2\RS\n\
    \\tfrequency\CAN\STX \SOH(\EOTH\NULR\tfrequency\DC2\CAN\n\
    \\ACKperiod\CAN\SOH \SOH(\EOTH\NULR\ACKperiod\DC2?\n\
    \\acounter\CAN\EOT \SOH(\SO2#.perfetto.protos.PerfEvents.CounterH\SOHR\acounter\DC2H\n\
    \\n\
    \tracepoint\CAN\ETX \SOH(\v2&.perfetto.protos.PerfEvents.TracepointH\SOHR\n\
    \tracepoint\DC2C\n\
    \\traw_event\CAN\ENQ \SOH(\v2$.perfetto.protos.PerfEvents.RawEventH\SOHR\brawEvent\DC2N\n\
    \\SItimestamp_clock\CAN\v \SOH(\SO2%.perfetto.protos.PerfEvents.PerfClockR\SOtimestampClock\DC2\DC2\n\
    \\EOTname\CAN\n\
    \ \SOH(\tR\EOTnameB\n\
    \\n\
    \\bintervalB\a\n\
    \\ENQevent\SUB8\n\
    \\n\
    \Tracepoint\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\SYN\n\
    \\ACKfilter\CAN\STX \SOH(\tR\ACKfilter\SUBj\n\
    \\bRawEvent\DC2\DC2\n\
    \\EOTtype\CAN\SOH \SOH(\rR\EOTtype\DC2\SYN\n\
    \\ACKconfig\CAN\STX \SOH(\EOTR\ACKconfig\DC2\CAN\n\
    \\aconfig1\CAN\ETX \SOH(\EOTR\aconfig1\DC2\CAN\n\
    \\aconfig2\CAN\EOT \SOH(\EOTR\aconfig2\"\232\ETX\n\
    \\aCounter\DC2\DC3\n\
    \\SIUNKNOWN_COUNTER\DLE\NUL\DC2\DLE\n\
    \\fSW_CPU_CLOCK\DLE\SOH\DC2\DC2\n\
    \\SOSW_PAGE_FAULTS\DLE\STX\DC2\DC1\n\
    \\rSW_TASK_CLOCK\DLE\ETX\DC2\ETB\n\
    \\DC3SW_CONTEXT_SWITCHES\DLE\EOT\DC2\NAK\n\
    \\DC1SW_CPU_MIGRATIONS\DLE\ENQ\DC2\SYN\n\
    \\DC2SW_PAGE_FAULTS_MIN\DLE\ACK\DC2\SYN\n\
    \\DC2SW_PAGE_FAULTS_MAJ\DLE\a\DC2\ETB\n\
    \\DC3SW_ALIGNMENT_FAULTS\DLE\b\DC2\ETB\n\
    \\DC3SW_EMULATION_FAULTS\DLE\t\DC2\f\n\
    \\bSW_DUMMY\DLE\DC4\DC2\DC1\n\
    \\rHW_CPU_CYCLES\DLE\n\
    \\DC2\DC3\n\
    \\SIHW_INSTRUCTIONS\DLE\v\DC2\ETB\n\
    \\DC3HW_CACHE_REFERENCES\DLE\f\DC2\DC3\n\
    \\SIHW_CACHE_MISSES\DLE\r\DC2\SUB\n\
    \\SYNHW_BRANCH_INSTRUCTIONS\DLE\SO\DC2\DC4\n\
    \\DLEHW_BRANCH_MISSES\DLE\SI\DC2\DC1\n\
    \\rHW_BUS_CYCLES\DLE\DLE\DC2\RS\n\
    \\SUBHW_STALLED_CYCLES_FRONTEND\DLE\DC1\DC2\GS\n\
    \\EMHW_STALLED_CYCLES_BACKEND\DLE\DC2\DC2\NAK\n\
    \\DC1HW_REF_CPU_CYCLES\DLE\DC3\"\141\SOH\n\
    \\tPerfClock\DC2\SYN\n\
    \\DC2UNKNOWN_PERF_CLOCK\DLE\NUL\DC2\ETB\n\
    \\DC3PERF_CLOCK_REALTIME\DLE\SOH\DC2\CAN\n\
    \\DC4PERF_CLOCK_MONOTONIC\DLE\STX\DC2\FS\n\
    \\CANPERF_CLOCK_MONOTONIC_RAW\DLE\ETX\DC2\ETB\n\
    \\DC3PERF_CLOCK_BOOTTIME\DLE\EOTJ\222/\n\
    \\a\DC2\ENQ\DLE\NUL\152\SOH\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2021 The Android Open Source Project\n\
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
    \\SUB\n\
    \\STX\EOT\NUL\DC2\ENQ\NAK\NUL\152\SOH\SOH\SUB\r Next id: 12\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\DC2\n\
    \x\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\CAN\STX@\ETX\SUBj What event to sample on, and how often. Commented from the perspective of\n\
    \ its use in |PerfEventConfig|.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\CAN\n\
    \\DC2\n\
    \\208\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\b\NUL\DC2\EOT\FS\EOT)\ENQ\SUB\191\SOH How often the per-cpu sampling will occur. Not guaranteed to be honored\n\
    \ as the kernel can throttle the sampling rate if it's too high.\n\
    \ If unset, an implementation-defined default is used.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX\FS\n\
    \\DC2\n\
    \\201\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX#\ACK\ESC\SUB\185\STX Per-cpu sampling frequency in Hz, as requested from the kernel. Not the\n\
    \ same as 1/period.\n\
    \ Details: the actual sampling will still be based on a period, but the\n\
    \ kernel will dynamically adjust it based on the observed event rate, to\n\
    \ approximate this frequency. Works best with steady-rate events like\n\
    \ timers.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX#\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX#\r\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX#\EM\SUB\n\
    \\162\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX(\ACK\CAN\SUB\146\SOH Per-cpu sampling will occur every |period| counts of |event|.\n\
    \ Prefer |frequency| by default, as it's easier to oversample with a\n\
    \ fixed period.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX(\ACK\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX(\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX(\SYN\ETB\n\
    \\218\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\b\SOH\DC2\EOT/\EOT3\ENQ\SUB\201\SOH Counting event to use as a timebase for the sampling.\n\
    \ If unset, implies the CPU timer (SW_CPU_CLOCK) as the event,\n\
    \ which is what you usually want.\n\
    \ See common/perf_events.proto for the definitions.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\b\SOH\SOH\DC2\ETX/\n\
    \\SI\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX0\ACK\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ACK\DC2\ETX0\ACK\r\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX0\SO\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX0\CAN\EM\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETX1\ACK \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ACK\DC2\ETX1\ACK\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX1\DC1\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX1\RS\US\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETX2\ACK\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ACK\DC2\ETX2\ACK\SO\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETX2\SI\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETX2\ESC\FS\n\
    \\194\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETX:\EOT,\SUB\178\STX If set, samples will be timestamped with the given clock.\n\
    \ If unset, the clock is chosen by the implementation.\n\
    \ For software events, prefer PERF_CLOCK_BOOTTIME. However it cannot be\n\
    \ used for hardware events (due to interrupt safety), for which the\n\
    \ recommendation is to use one of the monotonic clocks.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\EOT\DC2\ETX:\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ACK\DC2\ETX:\r\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETX:\ETB&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETX:)+\n\
    \\190\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\ETX?\EOT\RS\SUB\174\SOH Optional arbitrary name for the event, to identify it in the parsed\n\
    \ trace. Does *not* affect the profiling itself. If unset, the trace\n\
    \ parser will choose a suitable name.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\EOT\DC2\ETX?\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ENQ\DC2\ETX?\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\ETX?\DC4\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\ETX?\ESC\GS\n\
    \\201\STX\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOTH\STXt\ETX\SUB\186\STX Builtin counter names from the uapi header. Commented with their perf tool\n\
    \ aliases.\n\
    \ TODO(rsavitski): consider generating enums for cache events (should be\n\
    \ finite), and generally make this list as extensive as possible. Excluding\n\
    \ things like dynamic PMUs since those don't fit into a static enum.\n\
    \ Next id: 21\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETXH\a\SO\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETXI\EOT\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETXI\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETXI\SYN\ETB\n\
    \\SUB\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETXL\EOT\NAK\SUB\v cpu-clock\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETXL\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETXL\DC3\DC4\n\
    \$\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETXN\EOT\ETB\SUB\NAK page-faults, faults\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETXN\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETXN\NAK\SYN\n\
    \\ESC\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ETX\DC2\ETXP\EOT\SYN\SUB\f task-clock\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETXP\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ETX\STX\DC2\ETXP\DC4\NAK\n\
    \%\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\EOT\DC2\ETXR\EOT\FS\SUB\SYN context-switches, cs\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETXR\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\EOT\STX\DC2\ETXR\SUB\ESC\n\
    \+\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ENQ\DC2\ETXT\EOT\SUB\SUB\FS cpu-migrations, migrations\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\SOH\DC2\ETXT\EOT\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ENQ\STX\DC2\ETXT\CAN\EM\n\
    \\GS\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\ACK\DC2\ETXV\EOT\ESC\SUB\SO minor-faults\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ACK\SOH\DC2\ETXV\EOT\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\ACK\STX\DC2\ETXV\EM\SUB\n\
    \\GS\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\a\DC2\ETXX\EOT\ESC\SUB\SO major-faults\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\a\SOH\DC2\ETXX\EOT\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\a\STX\DC2\ETXX\EM\SUB\n\
    \!\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\b\DC2\ETXZ\EOT\FS\SUB\DC2 alignment-faults\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\b\SOH\DC2\ETXZ\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\b\STX\DC2\ETXZ\SUB\ESC\n\
    \!\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\t\DC2\ETX\\\EOT\FS\SUB\DC2 emulation-faults\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\t\SOH\DC2\ETX\\\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\t\STX\DC2\ETX\\\SUB\ESC\n\
    \\SYN\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\n\
    \\DC2\ETX^\EOT\DC2\SUB\a dummy\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\n\
    \\SOH\DC2\ETX^\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\n\
    \\STX\DC2\ETX^\SI\DC1\n\
    \#\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\v\DC2\ETXa\EOT\ETB\SUB\DC4 cpu-cycles, cycles\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\v\SOH\DC2\ETXa\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\v\STX\DC2\ETXa\DC4\SYN\n\
    \\GS\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\f\DC2\ETXc\EOT\EM\SUB\SO instructions\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\f\SOH\DC2\ETXc\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\f\STX\DC2\ETXc\SYN\CAN\n\
    \!\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\r\DC2\ETXe\EOT\GS\SUB\DC2 cache-references\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\r\SOH\DC2\ETXe\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\r\STX\DC2\ETXe\SUB\FS\n\
    \\GS\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SO\DC2\ETXg\EOT\EM\SUB\SO cache-misses\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SO\SOH\DC2\ETXg\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SO\STX\DC2\ETXg\SYN\CAN\n\
    \.\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SI\DC2\ETXi\EOT \SUB\US branch-instructions, branches\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SI\SOH\DC2\ETXi\EOT\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SI\STX\DC2\ETXi\GS\US\n\
    \\RS\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\DLE\DC2\ETXk\EOT\SUB\SUB\SI branch-misses\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DLE\SOH\DC2\ETXk\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DLE\STX\DC2\ETXk\ETB\EM\n\
    \\ESC\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\DC1\DC2\ETXm\EOT\ETB\SUB\f bus-cycles\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DC1\SOH\DC2\ETXm\EOT\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DC1\STX\DC2\ETXm\DC4\SYN\n\
    \>\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\DC2\DC2\ETXo\EOT$\SUB/ stalled-cycles-frontend, idle-cycles-frontend\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DC2\SOH\DC2\ETXo\EOT\RS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DC2\STX\DC2\ETXo!#\n\
    \<\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\DC3\DC2\ETXq\EOT#\SUB- stalled-cycles-backend, idle-cycles-backend\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DC3\SOH\DC2\ETXq\EOT\GS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DC3\STX\DC2\ETXq \"\n\
    \\ESC\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\DC4\DC2\ETXs\EOT\ESC\SUB\f ref-cycles\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DC4\SOH\DC2\ETXs\EOT\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\DC4\STX\DC2\ETXs\CAN\SUB\n\
    \\r\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\ENQv\STX\130\SOH\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETXv\n\
    \\DC4\n\
    \u\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETXz\EOT\GS\SUBf Group and name for the tracepoint, acceptable forms:\n\
    \ * \"sched/sched_switch\"\n\
    \ * \"sched:sched_switch\"\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\EOT\DC2\ETXz\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETXz\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXz\DC4\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXz\ESC\FS\n\
    \\208\STX\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\EOT\129\SOH\EOT\US\SUB\191\STX Optional field-level filter for the tracepoint. Only events matching this\n\
    \ filter will be counted (and therefore contribute to the sampling period).\n\
    \ Example: \"prev_pid >= 42 && next_pid == 0\".\n\
    \ For full syntax, see kernel documentation on \"Event filtering\":\n\
    \ https://www.kernel.org/doc/Documentation/trace/events.txt\n\
    \\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\EOT\DC2\EOT\129\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\EOT\129\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\EOT\129\SOH\DC4\SUB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\EOT\129\SOH\GS\RS\n\
    \\197\SOH\n\
    \\EOT\EOT\NUL\ETX\STX\DC2\ACK\135\SOH\STX\140\SOH\ETX\SUB\180\SOH Syscall-level description of the event, propagated to the perf_event_attr\n\
    \ struct. Primarily for local use-cases, since the event availability and\n\
    \ encoding is hardware-specific.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\ETX\STX\SOH\DC2\EOT\135\SOH\n\
    \\DC2\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\NUL\DC2\EOT\136\SOH\EOT\GS\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\EOT\DC2\EOT\136\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ENQ\DC2\EOT\136\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\SOH\DC2\EOT\136\SOH\DC4\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\NUL\ETX\DC2\EOT\136\SOH\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\SOH\DC2\EOT\137\SOH\EOT\US\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\EOT\DC2\EOT\137\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ENQ\DC2\EOT\137\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\SOH\DC2\EOT\137\SOH\DC4\SUB\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\SOH\ETX\DC2\EOT\137\SOH\GS\RS\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\STX\DC2\EOT\138\SOH\EOT \n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\EOT\DC2\EOT\138\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ENQ\DC2\EOT\138\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\SOH\DC2\EOT\138\SOH\DC4\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\STX\ETX\DC2\EOT\138\SOH\RS\US\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\STX\STX\ETX\DC2\EOT\139\SOH\EOT \n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\EOT\DC2\EOT\139\SOH\EOT\f\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ENQ\DC2\EOT\139\SOH\r\DC3\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\SOH\DC2\EOT\139\SOH\DC4\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\ETX\STX\STX\ETX\ETX\DC2\EOT\139\SOH\RS\US\n\
    \\217\SOH\n\
    \\EOT\EOT\NUL\EOT\SOH\DC2\ACK\145\SOH\STX\151\SOH\ETX\SUB\200\SOH Subset of clocks that is supported by perf timestamping.\n\
    \ CLOCK_TAI is excluded since it's not expected to be used in practice, but\n\
    \ would require additions to the trace clock synchronisation logic.\n\
    \\n\
    \\r\n\
    \\ENQ\EOT\NUL\EOT\SOH\SOH\DC2\EOT\145\SOH\a\DLE\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\NUL\DC2\EOT\146\SOH\EOT\ESC\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\SOH\DC2\EOT\146\SOH\EOT\SYN\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\STX\DC2\EOT\146\SOH\EM\SUB\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\SOH\DC2\EOT\147\SOH\EOT\FS\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\SOH\DC2\EOT\147\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\STX\DC2\EOT\147\SOH\SUB\ESC\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\STX\DC2\EOT\148\SOH\EOT\GS\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\SOH\DC2\EOT\148\SOH\EOT\CAN\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\STX\DC2\EOT\148\SOH\ESC\FS\n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\ETX\DC2\EOT\149\SOH\EOT!\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\ETX\SOH\DC2\EOT\149\SOH\EOT\FS\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\ETX\STX\DC2\EOT\149\SOH\US \n\
    \\SO\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\EOT\DC2\EOT\150\SOH\EOT\FS\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\EOT\SOH\DC2\EOT\150\SOH\EOT\ETB\n\
    \\SI\n\
    \\a\EOT\NUL\EOT\SOH\STX\EOT\STX\DC2\EOT\150\SOH\SUB\ESC"