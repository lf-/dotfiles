{- This file was auto-generated from protos/perfetto/trace/ftrace/ftrace_event_bundle.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle (
        FtraceClock(..), FtraceClock(), FtraceEventBundle(),
        FtraceEventBundle'CompactSched()
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
import qualified Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent
data FtraceClock
  = FTRACE_CLOCK_UNSPECIFIED |
    FTRACE_CLOCK_UNKNOWN |
    FTRACE_CLOCK_GLOBAL |
    FTRACE_CLOCK_LOCAL |
    FTRACE_CLOCK_MONO_RAW
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FtraceClock where
  maybeToEnum 0 = Prelude.Just FTRACE_CLOCK_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just FTRACE_CLOCK_UNKNOWN
  maybeToEnum 2 = Prelude.Just FTRACE_CLOCK_GLOBAL
  maybeToEnum 3 = Prelude.Just FTRACE_CLOCK_LOCAL
  maybeToEnum 4 = Prelude.Just FTRACE_CLOCK_MONO_RAW
  maybeToEnum _ = Prelude.Nothing
  showEnum FTRACE_CLOCK_UNSPECIFIED = "FTRACE_CLOCK_UNSPECIFIED"
  showEnum FTRACE_CLOCK_UNKNOWN = "FTRACE_CLOCK_UNKNOWN"
  showEnum FTRACE_CLOCK_GLOBAL = "FTRACE_CLOCK_GLOBAL"
  showEnum FTRACE_CLOCK_LOCAL = "FTRACE_CLOCK_LOCAL"
  showEnum FTRACE_CLOCK_MONO_RAW = "FTRACE_CLOCK_MONO_RAW"
  readEnum k
    | (Prelude.==) k "FTRACE_CLOCK_UNSPECIFIED"
    = Prelude.Just FTRACE_CLOCK_UNSPECIFIED
    | (Prelude.==) k "FTRACE_CLOCK_UNKNOWN"
    = Prelude.Just FTRACE_CLOCK_UNKNOWN
    | (Prelude.==) k "FTRACE_CLOCK_GLOBAL"
    = Prelude.Just FTRACE_CLOCK_GLOBAL
    | (Prelude.==) k "FTRACE_CLOCK_LOCAL"
    = Prelude.Just FTRACE_CLOCK_LOCAL
    | (Prelude.==) k "FTRACE_CLOCK_MONO_RAW"
    = Prelude.Just FTRACE_CLOCK_MONO_RAW
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FtraceClock where
  minBound = FTRACE_CLOCK_UNSPECIFIED
  maxBound = FTRACE_CLOCK_MONO_RAW
instance Prelude.Enum FtraceClock where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum FtraceClock: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum FTRACE_CLOCK_UNSPECIFIED = 0
  fromEnum FTRACE_CLOCK_UNKNOWN = 1
  fromEnum FTRACE_CLOCK_GLOBAL = 2
  fromEnum FTRACE_CLOCK_LOCAL = 3
  fromEnum FTRACE_CLOCK_MONO_RAW = 4
  succ FTRACE_CLOCK_MONO_RAW
    = Prelude.error
        "FtraceClock.succ: bad argument FTRACE_CLOCK_MONO_RAW. This value would be out of bounds."
  succ FTRACE_CLOCK_UNSPECIFIED = FTRACE_CLOCK_UNKNOWN
  succ FTRACE_CLOCK_UNKNOWN = FTRACE_CLOCK_GLOBAL
  succ FTRACE_CLOCK_GLOBAL = FTRACE_CLOCK_LOCAL
  succ FTRACE_CLOCK_LOCAL = FTRACE_CLOCK_MONO_RAW
  pred FTRACE_CLOCK_UNSPECIFIED
    = Prelude.error
        "FtraceClock.pred: bad argument FTRACE_CLOCK_UNSPECIFIED. This value would be out of bounds."
  pred FTRACE_CLOCK_UNKNOWN = FTRACE_CLOCK_UNSPECIFIED
  pred FTRACE_CLOCK_GLOBAL = FTRACE_CLOCK_UNKNOWN
  pred FTRACE_CLOCK_LOCAL = FTRACE_CLOCK_GLOBAL
  pred FTRACE_CLOCK_MONO_RAW = FTRACE_CLOCK_LOCAL
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FtraceClock where
  fieldDefault = FTRACE_CLOCK_UNSPECIFIED
instance Control.DeepSeq.NFData FtraceClock where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.cpu' @:: Lens' FtraceEventBundle Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.maybe'cpu' @:: Lens' FtraceEventBundle (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.event' @:: Lens' FtraceEventBundle [Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent.FtraceEvent]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'event' @:: Lens' FtraceEventBundle (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent.FtraceEvent)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.lostEvents' @:: Lens' FtraceEventBundle Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.maybe'lostEvents' @:: Lens' FtraceEventBundle (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.compactSched' @:: Lens' FtraceEventBundle FtraceEventBundle'CompactSched@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.maybe'compactSched' @:: Lens' FtraceEventBundle (Prelude.Maybe FtraceEventBundle'CompactSched)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.ftraceClock' @:: Lens' FtraceEventBundle FtraceClock@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.maybe'ftraceClock' @:: Lens' FtraceEventBundle (Prelude.Maybe FtraceClock)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.ftraceTimestamp' @:: Lens' FtraceEventBundle Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.maybe'ftraceTimestamp' @:: Lens' FtraceEventBundle (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.bootTimestamp' @:: Lens' FtraceEventBundle Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.maybe'bootTimestamp' @:: Lens' FtraceEventBundle (Prelude.Maybe Data.Int.Int64)@ -}
data FtraceEventBundle
  = FtraceEventBundle'_constructor {_FtraceEventBundle'cpu :: !(Prelude.Maybe Data.Word.Word32),
                                    _FtraceEventBundle'event :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent.FtraceEvent),
                                    _FtraceEventBundle'lostEvents :: !(Prelude.Maybe Prelude.Bool),
                                    _FtraceEventBundle'compactSched :: !(Prelude.Maybe FtraceEventBundle'CompactSched),
                                    _FtraceEventBundle'ftraceClock :: !(Prelude.Maybe FtraceClock),
                                    _FtraceEventBundle'ftraceTimestamp :: !(Prelude.Maybe Data.Int.Int64),
                                    _FtraceEventBundle'bootTimestamp :: !(Prelude.Maybe Data.Int.Int64),
                                    _FtraceEventBundle'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FtraceEventBundle where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FtraceEventBundle "cpu" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'cpu
           (\ x__ y__ -> x__ {_FtraceEventBundle'cpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceEventBundle "maybe'cpu" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'cpu
           (\ x__ y__ -> x__ {_FtraceEventBundle'cpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle "event" [Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent.FtraceEvent] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'event
           (\ x__ y__ -> x__ {_FtraceEventBundle'event = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle "vec'event" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent.FtraceEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'event
           (\ x__ y__ -> x__ {_FtraceEventBundle'event = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle "lostEvents" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'lostEvents
           (\ x__ y__ -> x__ {_FtraceEventBundle'lostEvents = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceEventBundle "maybe'lostEvents" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'lostEvents
           (\ x__ y__ -> x__ {_FtraceEventBundle'lostEvents = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle "compactSched" FtraceEventBundle'CompactSched where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'compactSched
           (\ x__ y__ -> x__ {_FtraceEventBundle'compactSched = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField FtraceEventBundle "maybe'compactSched" (Prelude.Maybe FtraceEventBundle'CompactSched) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'compactSched
           (\ x__ y__ -> x__ {_FtraceEventBundle'compactSched = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle "ftraceClock" FtraceClock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'ftraceClock
           (\ x__ y__ -> x__ {_FtraceEventBundle'ftraceClock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceEventBundle "maybe'ftraceClock" (Prelude.Maybe FtraceClock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'ftraceClock
           (\ x__ y__ -> x__ {_FtraceEventBundle'ftraceClock = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle "ftraceTimestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'ftraceTimestamp
           (\ x__ y__ -> x__ {_FtraceEventBundle'ftraceTimestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceEventBundle "maybe'ftraceTimestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'ftraceTimestamp
           (\ x__ y__ -> x__ {_FtraceEventBundle'ftraceTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle "bootTimestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'bootTimestamp
           (\ x__ y__ -> x__ {_FtraceEventBundle'bootTimestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceEventBundle "maybe'bootTimestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'bootTimestamp
           (\ x__ y__ -> x__ {_FtraceEventBundle'bootTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message FtraceEventBundle where
  messageName _ = Data.Text.pack "perfetto.protos.FtraceEventBundle"
  packedMessageDescriptor _
    = "\n\
      \\DC1FtraceEventBundle\DC2\DLE\n\
      \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC22\n\
      \\ENQevent\CAN\STX \ETX(\v2\FS.perfetto.protos.FtraceEventR\ENQevent\DC2\US\n\
      \\vlost_events\CAN\ETX \SOH(\bR\n\
      \lostEvents\DC2T\n\
      \\rcompact_sched\CAN\EOT \SOH(\v2/.perfetto.protos.FtraceEventBundle.CompactSchedR\fcompactSched\DC2?\n\
      \\fftrace_clock\CAN\ENQ \SOH(\SO2\FS.perfetto.protos.FtraceClockR\vftraceClock\DC2)\n\
      \\DLEftrace_timestamp\CAN\ACK \SOH(\ETXR\SIftraceTimestamp\DC2%\n\
      \\SOboot_timestamp\CAN\a \SOH(\ETXR\rbootTimestamp\SUB\174\EOT\n\
      \\fCompactSched\DC2!\n\
      \\fintern_table\CAN\ENQ \ETX(\tR\vinternTable\DC2-\n\
      \\DLEswitch_timestamp\CAN\SOH \ETX(\EOTR\SIswitchTimestampB\STX\DLE\SOH\DC2.\n\
      \\DC1switch_prev_state\CAN\STX \ETX(\ETXR\SIswitchPrevStateB\STX\DLE\SOH\DC2*\n\
      \\SIswitch_next_pid\CAN\ETX \ETX(\ENQR\rswitchNextPidB\STX\DLE\SOH\DC2,\n\
      \\DLEswitch_next_prio\CAN\EOT \ETX(\ENQR\SOswitchNextPrioB\STX\DLE\SOH\DC27\n\
      \\SYNswitch_next_comm_index\CAN\ACK \ETX(\rR\DC3switchNextCommIndexB\STX\DLE\SOH\DC2-\n\
      \\DLEwaking_timestamp\CAN\a \ETX(\EOTR\SIwakingTimestampB\STX\DLE\SOH\DC2!\n\
      \\n\
      \waking_pid\CAN\b \ETX(\ENQR\twakingPidB\STX\DLE\SOH\DC2.\n\
      \\DC1waking_target_cpu\CAN\t \ETX(\ENQR\SIwakingTargetCpuB\STX\DLE\SOH\DC2#\n\
      \\vwaking_prio\CAN\n\
      \ \ETX(\ENQR\n\
      \wakingPrioB\STX\DLE\SOH\DC2.\n\
      \\DC1waking_comm_index\CAN\v \ETX(\rR\SIwakingCommIndexB\STX\DLE\SOH\DC22\n\
      \\DC3waking_common_flags\CAN\f \ETX(\rR\DC1wakingCommonFlagsB\STX\DLE\SOH"
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
              Data.ProtoLens.FieldDescriptor FtraceEventBundle
        event__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "event"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent.FtraceEvent)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"event")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle
        lostEvents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "lost_events"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'lostEvents")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle
        compactSched__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "compact_sched"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FtraceEventBundle'CompactSched)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'compactSched")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle
        ftraceClock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ftrace_clock"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor FtraceClock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ftraceClock")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle
        ftraceTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ftrace_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ftraceTimestamp")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle
        bootTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "boot_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bootTimestamp")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cpu__field_descriptor),
           (Data.ProtoLens.Tag 2, event__field_descriptor),
           (Data.ProtoLens.Tag 3, lostEvents__field_descriptor),
           (Data.ProtoLens.Tag 4, compactSched__field_descriptor),
           (Data.ProtoLens.Tag 5, ftraceClock__field_descriptor),
           (Data.ProtoLens.Tag 6, ftraceTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 7, bootTimestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FtraceEventBundle'_unknownFields
        (\ x__ y__ -> x__ {_FtraceEventBundle'_unknownFields = y__})
  defMessage
    = FtraceEventBundle'_constructor
        {_FtraceEventBundle'cpu = Prelude.Nothing,
         _FtraceEventBundle'event = Data.Vector.Generic.empty,
         _FtraceEventBundle'lostEvents = Prelude.Nothing,
         _FtraceEventBundle'compactSched = Prelude.Nothing,
         _FtraceEventBundle'ftraceClock = Prelude.Nothing,
         _FtraceEventBundle'ftraceTimestamp = Prelude.Nothing,
         _FtraceEventBundle'bootTimestamp = Prelude.Nothing,
         _FtraceEventBundle'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FtraceEventBundle
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.Ftrace.FtraceEvent.FtraceEvent
             -> Data.ProtoLens.Encoding.Bytes.Parser FtraceEventBundle
        loop x mutable'event
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'event <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'event)
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
                              (Data.ProtoLens.Field.field @"vec'event") frozen'event x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cpu"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"cpu") y x)
                                  mutable'event
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "event"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'event y)
                                loop x v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "lost_events"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"lostEvents") y x)
                                  mutable'event
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "compact_sched"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"compactSched") y x)
                                  mutable'event
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "ftrace_clock"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ftraceClock") y x)
                                  mutable'event
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ftrace_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ftraceTimestamp") y x)
                                  mutable'event
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "boot_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"bootTimestamp") y x)
                                  mutable'event
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'event
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'event <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'event)
          "FtraceEventBundle"
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'event") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'lostEvents") _x
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
                             (Data.ProtoLens.Field.field @"maybe'compactSched") _x
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
                                (Data.ProtoLens.Field.field @"maybe'ftraceClock") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral)
                                      Prelude.fromEnum _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'ftraceTimestamp") _x
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
                                      (Data.ProtoLens.Field.field @"maybe'bootTimestamp") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putVarInt
                                            Prelude.fromIntegral _v))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData FtraceEventBundle where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FtraceEventBundle'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FtraceEventBundle'cpu x__)
                (Control.DeepSeq.deepseq
                   (_FtraceEventBundle'event x__)
                   (Control.DeepSeq.deepseq
                      (_FtraceEventBundle'lostEvents x__)
                      (Control.DeepSeq.deepseq
                         (_FtraceEventBundle'compactSched x__)
                         (Control.DeepSeq.deepseq
                            (_FtraceEventBundle'ftraceClock x__)
                            (Control.DeepSeq.deepseq
                               (_FtraceEventBundle'ftraceTimestamp x__)
                               (Control.DeepSeq.deepseq
                                  (_FtraceEventBundle'bootTimestamp x__) ())))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.internTable' @:: Lens' FtraceEventBundle'CompactSched [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'internTable' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.switchTimestamp' @:: Lens' FtraceEventBundle'CompactSched [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'switchTimestamp' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.switchPrevState' @:: Lens' FtraceEventBundle'CompactSched [Data.Int.Int64]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'switchPrevState' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.switchNextPid' @:: Lens' FtraceEventBundle'CompactSched [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'switchNextPid' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.switchNextPrio' @:: Lens' FtraceEventBundle'CompactSched [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'switchNextPrio' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.switchNextCommIndex' @:: Lens' FtraceEventBundle'CompactSched [Data.Word.Word32]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'switchNextCommIndex' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.wakingTimestamp' @:: Lens' FtraceEventBundle'CompactSched [Data.Word.Word64]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'wakingTimestamp' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.wakingPid' @:: Lens' FtraceEventBundle'CompactSched [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'wakingPid' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.wakingTargetCpu' @:: Lens' FtraceEventBundle'CompactSched [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'wakingTargetCpu' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.wakingPrio' @:: Lens' FtraceEventBundle'CompactSched [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'wakingPrio' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.wakingCommIndex' @:: Lens' FtraceEventBundle'CompactSched [Data.Word.Word32]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'wakingCommIndex' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.wakingCommonFlags' @:: Lens' FtraceEventBundle'CompactSched [Data.Word.Word32]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceEventBundle_Fields.vec'wakingCommonFlags' @:: Lens' FtraceEventBundle'CompactSched (Data.Vector.Unboxed.Vector Data.Word.Word32)@ -}
data FtraceEventBundle'CompactSched
  = FtraceEventBundle'CompactSched'_constructor {_FtraceEventBundle'CompactSched'internTable :: !(Data.Vector.Vector Data.Text.Text),
                                                 _FtraceEventBundle'CompactSched'switchTimestamp :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                                 _FtraceEventBundle'CompactSched'switchPrevState :: !(Data.Vector.Unboxed.Vector Data.Int.Int64),
                                                 _FtraceEventBundle'CompactSched'switchNextPid :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                                 _FtraceEventBundle'CompactSched'switchNextPrio :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                                 _FtraceEventBundle'CompactSched'switchNextCommIndex :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                                 _FtraceEventBundle'CompactSched'wakingTimestamp :: !(Data.Vector.Unboxed.Vector Data.Word.Word64),
                                                 _FtraceEventBundle'CompactSched'wakingPid :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                                 _FtraceEventBundle'CompactSched'wakingTargetCpu :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                                 _FtraceEventBundle'CompactSched'wakingPrio :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                                 _FtraceEventBundle'CompactSched'wakingCommIndex :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                                 _FtraceEventBundle'CompactSched'wakingCommonFlags :: !(Data.Vector.Unboxed.Vector Data.Word.Word32),
                                                 _FtraceEventBundle'CompactSched'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FtraceEventBundle'CompactSched where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "internTable" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'internTable
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'internTable = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'internTable" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'internTable
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'internTable = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "switchTimestamp" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchTimestamp
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'switchTimestamp = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'switchTimestamp" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchTimestamp
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'switchTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "switchPrevState" [Data.Int.Int64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchPrevState
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'switchPrevState = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'switchPrevState" (Data.Vector.Unboxed.Vector Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchPrevState
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'switchPrevState = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "switchNextPid" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchNextPid
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'switchNextPid = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'switchNextPid" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchNextPid
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'switchNextPid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "switchNextPrio" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchNextPrio
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'switchNextPrio = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'switchNextPrio" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchNextPrio
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'switchNextPrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "switchNextCommIndex" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchNextCommIndex
           (\ x__ y__
              -> x__
                   {_FtraceEventBundle'CompactSched'switchNextCommIndex = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'switchNextCommIndex" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'switchNextCommIndex
           (\ x__ y__
              -> x__
                   {_FtraceEventBundle'CompactSched'switchNextCommIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "wakingTimestamp" [Data.Word.Word64] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingTimestamp
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingTimestamp = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'wakingTimestamp" (Data.Vector.Unboxed.Vector Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingTimestamp
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "wakingPid" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingPid
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingPid = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'wakingPid" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingPid
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingPid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "wakingTargetCpu" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingTargetCpu
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingTargetCpu = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'wakingTargetCpu" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingTargetCpu
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingTargetCpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "wakingPrio" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingPrio
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingPrio = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'wakingPrio" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingPrio
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingPrio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "wakingCommIndex" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingCommIndex
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingCommIndex = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'wakingCommIndex" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingCommIndex
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingCommIndex = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "wakingCommonFlags" [Data.Word.Word32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingCommonFlags
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingCommonFlags = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceEventBundle'CompactSched "vec'wakingCommonFlags" (Data.Vector.Unboxed.Vector Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceEventBundle'CompactSched'wakingCommonFlags
           (\ x__ y__
              -> x__ {_FtraceEventBundle'CompactSched'wakingCommonFlags = y__}))
        Prelude.id
instance Data.ProtoLens.Message FtraceEventBundle'CompactSched where
  messageName _
    = Data.Text.pack "perfetto.protos.FtraceEventBundle.CompactSched"
  packedMessageDescriptor _
    = "\n\
      \\fCompactSched\DC2!\n\
      \\fintern_table\CAN\ENQ \ETX(\tR\vinternTable\DC2-\n\
      \\DLEswitch_timestamp\CAN\SOH \ETX(\EOTR\SIswitchTimestampB\STX\DLE\SOH\DC2.\n\
      \\DC1switch_prev_state\CAN\STX \ETX(\ETXR\SIswitchPrevStateB\STX\DLE\SOH\DC2*\n\
      \\SIswitch_next_pid\CAN\ETX \ETX(\ENQR\rswitchNextPidB\STX\DLE\SOH\DC2,\n\
      \\DLEswitch_next_prio\CAN\EOT \ETX(\ENQR\SOswitchNextPrioB\STX\DLE\SOH\DC27\n\
      \\SYNswitch_next_comm_index\CAN\ACK \ETX(\rR\DC3switchNextCommIndexB\STX\DLE\SOH\DC2-\n\
      \\DLEwaking_timestamp\CAN\a \ETX(\EOTR\SIwakingTimestampB\STX\DLE\SOH\DC2!\n\
      \\n\
      \waking_pid\CAN\b \ETX(\ENQR\twakingPidB\STX\DLE\SOH\DC2.\n\
      \\DC1waking_target_cpu\CAN\t \ETX(\ENQR\SIwakingTargetCpuB\STX\DLE\SOH\DC2#\n\
      \\vwaking_prio\CAN\n\
      \ \ETX(\ENQR\n\
      \wakingPrioB\STX\DLE\SOH\DC2.\n\
      \\DC1waking_comm_index\CAN\v \ETX(\rR\SIwakingCommIndexB\STX\DLE\SOH\DC22\n\
      \\DC3waking_common_flags\CAN\f \ETX(\rR\DC1wakingCommonFlagsB\STX\DLE\SOH"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        internTable__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "intern_table"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"internTable")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        switchTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "switch_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"switchTimestamp")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        switchPrevState__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "switch_prev_state"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"switchPrevState")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        switchNextPid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "switch_next_pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"switchNextPid")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        switchNextPrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "switch_next_prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"switchNextPrio")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        switchNextCommIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "switch_next_comm_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"switchNextCommIndex")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        wakingTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "waking_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"wakingTimestamp")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        wakingPid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "waking_pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"wakingPid")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        wakingTargetCpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "waking_target_cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"wakingTargetCpu")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        wakingPrio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "waking_prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"wakingPrio")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        wakingCommIndex__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "waking_comm_index"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"wakingCommIndex")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
        wakingCommonFlags__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "waking_common_flags"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed
                 (Data.ProtoLens.Field.field @"wakingCommonFlags")) ::
              Data.ProtoLens.FieldDescriptor FtraceEventBundle'CompactSched
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 5, internTable__field_descriptor),
           (Data.ProtoLens.Tag 1, switchTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 2, switchPrevState__field_descriptor),
           (Data.ProtoLens.Tag 3, switchNextPid__field_descriptor),
           (Data.ProtoLens.Tag 4, switchNextPrio__field_descriptor),
           (Data.ProtoLens.Tag 6, switchNextCommIndex__field_descriptor),
           (Data.ProtoLens.Tag 7, wakingTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 8, wakingPid__field_descriptor),
           (Data.ProtoLens.Tag 9, wakingTargetCpu__field_descriptor),
           (Data.ProtoLens.Tag 10, wakingPrio__field_descriptor),
           (Data.ProtoLens.Tag 11, wakingCommIndex__field_descriptor),
           (Data.ProtoLens.Tag 12, wakingCommonFlags__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FtraceEventBundle'CompactSched'_unknownFields
        (\ x__ y__
           -> x__ {_FtraceEventBundle'CompactSched'_unknownFields = y__})
  defMessage
    = FtraceEventBundle'CompactSched'_constructor
        {_FtraceEventBundle'CompactSched'internTable = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'switchTimestamp = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'switchPrevState = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'switchNextPid = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'switchNextPrio = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'switchNextCommIndex = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'wakingTimestamp = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'wakingPid = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'wakingTargetCpu = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'wakingPrio = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'wakingCommIndex = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'wakingCommonFlags = Data.Vector.Generic.empty,
         _FtraceEventBundle'CompactSched'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FtraceEventBundle'CompactSched
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                      -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int64
                         -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                            -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                               -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word32
                                  -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                                     -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                                        -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                                           -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Word.Word64
                                              -> Data.ProtoLens.Encoding.Bytes.Parser FtraceEventBundle'CompactSched
        loop
          x
          mutable'internTable
          mutable'switchNextCommIndex
          mutable'switchNextPid
          mutable'switchNextPrio
          mutable'switchPrevState
          mutable'switchTimestamp
          mutable'wakingCommIndex
          mutable'wakingCommonFlags
          mutable'wakingPid
          mutable'wakingPrio
          mutable'wakingTargetCpu
          mutable'wakingTimestamp
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'internTable <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'internTable)
                      frozen'switchNextCommIndex <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'switchNextCommIndex)
                      frozen'switchNextPid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                   mutable'switchNextPid)
                      frozen'switchNextPrio <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                 (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                    mutable'switchNextPrio)
                      frozen'switchPrevState <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'switchPrevState)
                      frozen'switchTimestamp <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'switchTimestamp)
                      frozen'wakingCommIndex <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'wakingCommIndex)
                      frozen'wakingCommonFlags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                    (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                       mutable'wakingCommonFlags)
                      frozen'wakingPid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'wakingPid)
                      frozen'wakingPrio <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'wakingPrio)
                      frozen'wakingTargetCpu <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'wakingTargetCpu)
                      frozen'wakingTimestamp <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'wakingTimestamp)
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
                              (Data.ProtoLens.Field.field @"vec'internTable") frozen'internTable
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'switchNextCommIndex")
                                 frozen'switchNextCommIndex
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'switchNextPid")
                                    frozen'switchNextPid
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'switchNextPrio")
                                       frozen'switchNextPrio
                                       (Lens.Family2.set
                                          (Data.ProtoLens.Field.field @"vec'switchPrevState")
                                          frozen'switchPrevState
                                          (Lens.Family2.set
                                             (Data.ProtoLens.Field.field @"vec'switchTimestamp")
                                             frozen'switchTimestamp
                                             (Lens.Family2.set
                                                (Data.ProtoLens.Field.field @"vec'wakingCommIndex")
                                                frozen'wakingCommIndex
                                                (Lens.Family2.set
                                                   (Data.ProtoLens.Field.field
                                                      @"vec'wakingCommonFlags")
                                                   frozen'wakingCommonFlags
                                                   (Lens.Family2.set
                                                      (Data.ProtoLens.Field.field @"vec'wakingPid")
                                                      frozen'wakingPid
                                                      (Lens.Family2.set
                                                         (Data.ProtoLens.Field.field
                                                            @"vec'wakingPrio")
                                                         frozen'wakingPrio
                                                         (Lens.Family2.set
                                                            (Data.ProtoLens.Field.field
                                                               @"vec'wakingTargetCpu")
                                                            frozen'wakingTargetCpu
                                                            (Lens.Family2.set
                                                               (Data.ProtoLens.Field.field
                                                                  @"vec'wakingTimestamp")
                                                               frozen'wakingTimestamp x)))))))))))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        42
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "intern_table"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'internTable y)
                                loop
                                  x v mutable'switchNextCommIndex mutable'switchNextPid
                                  mutable'switchNextPrio mutable'switchPrevState
                                  mutable'switchTimestamp mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "switch_timestamp"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'switchTimestamp y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState v mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
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
                                                                    "switch_timestamp"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'switchTimestamp)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState y mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
                        16
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "switch_prev_state"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'switchPrevState y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio v
                                  mutable'switchTimestamp mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
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
                                                                    "switch_prev_state"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'switchPrevState)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio y
                                  mutable'switchTimestamp mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
                        24
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "switch_next_pid"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'switchNextPid y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex v
                                  mutable'switchNextPrio mutable'switchPrevState
                                  mutable'switchTimestamp mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
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
                                                                    "switch_next_pid"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'switchNextPid)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex y
                                  mutable'switchNextPrio mutable'switchPrevState
                                  mutable'switchTimestamp mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
                        32
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "switch_next_prio"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'switchNextPrio y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid v mutable'switchPrevState
                                  mutable'switchTimestamp mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
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
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "switch_next_prio"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'switchNextPrio)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid y mutable'switchPrevState
                                  mutable'switchTimestamp mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "switch_next_comm_index"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'switchNextCommIndex y)
                                loop
                                  x mutable'internTable v mutable'switchNextPid
                                  mutable'switchNextPrio mutable'switchPrevState
                                  mutable'switchTimestamp mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
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
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "switch_next_comm_index"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'switchNextCommIndex)
                                loop
                                  x mutable'internTable y mutable'switchNextPid
                                  mutable'switchNextPrio mutable'switchPrevState
                                  mutable'switchTimestamp mutable'wakingCommIndex
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
                        56
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        Data.ProtoLens.Encoding.Bytes.getVarInt "waking_timestamp"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'wakingTimestamp y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex mutable'wakingCommonFlags
                                  mutable'wakingPid mutable'wakingPrio mutable'wakingTargetCpu v
                        58
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
                                                                    "waking_timestamp"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'wakingTimestamp)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex mutable'wakingCommonFlags
                                  mutable'wakingPid mutable'wakingPrio mutable'wakingTargetCpu y
                        64
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "waking_pid"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'wakingPid y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex mutable'wakingCommonFlags v
                                  mutable'wakingPrio mutable'wakingTargetCpu mutable'wakingTimestamp
                        66
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
                                                                    "waking_pid"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'wakingPid)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex mutable'wakingCommonFlags y
                                  mutable'wakingPrio mutable'wakingTargetCpu mutable'wakingTimestamp
                        72
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "waking_target_cpu"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'wakingTargetCpu y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex mutable'wakingCommonFlags
                                  mutable'wakingPid mutable'wakingPrio v mutable'wakingTimestamp
                        74
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
                                                                    "waking_target_cpu"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'wakingTargetCpu)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex mutable'wakingCommonFlags
                                  mutable'wakingPid mutable'wakingPrio y mutable'wakingTimestamp
                        80
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "waking_prio"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'wakingPrio y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex mutable'wakingCommonFlags
                                  mutable'wakingPid v mutable'wakingTargetCpu
                                  mutable'wakingTimestamp
                        82
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
                                                                    "waking_prio"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'wakingPrio)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex mutable'wakingCommonFlags
                                  mutable'wakingPid y mutable'wakingTargetCpu
                                  mutable'wakingTimestamp
                        88
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "waking_comm_index"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'wakingCommIndex y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp v
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
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
                                                                    "waking_comm_index"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'wakingCommIndex)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp y
                                  mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
                        96
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "waking_common_flags"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'wakingCommonFlags y)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex v mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
                        98
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
                                                                    "waking_common_flags"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'wakingCommonFlags)
                                loop
                                  x mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex y mutable'wakingPid mutable'wakingPrio
                                  mutable'wakingTargetCpu mutable'wakingTimestamp
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'internTable mutable'switchNextCommIndex
                                  mutable'switchNextPid mutable'switchNextPrio
                                  mutable'switchPrevState mutable'switchTimestamp
                                  mutable'wakingCommIndex mutable'wakingCommonFlags
                                  mutable'wakingPid mutable'wakingPrio mutable'wakingTargetCpu
                                  mutable'wakingTimestamp
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'internTable <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       Data.ProtoLens.Encoding.Growing.new
              mutable'switchNextCommIndex <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              mutable'switchNextPid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
              mutable'switchNextPrio <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                          Data.ProtoLens.Encoding.Growing.new
              mutable'switchPrevState <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'switchTimestamp <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'wakingCommIndex <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'wakingCommonFlags <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             Data.ProtoLens.Encoding.Growing.new
              mutable'wakingPid <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'wakingPrio <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              mutable'wakingTargetCpu <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              mutable'wakingTimestamp <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'internTable
                mutable'switchNextCommIndex mutable'switchNextPid
                mutable'switchNextPrio mutable'switchPrevState
                mutable'switchTimestamp mutable'wakingCommIndex
                mutable'wakingCommonFlags mutable'wakingPid mutable'wakingPrio
                mutable'wakingTargetCpu mutable'wakingTimestamp)
          "CompactSched"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                (\ _v
                   -> (Data.Monoid.<>)
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
                        ((Prelude..)
                           (\ bs
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt
                                      (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view
                   (Data.ProtoLens.Field.field @"vec'internTable") _x))
             ((Data.Monoid.<>)
                (let
                   p = Lens.Family2.view
                         (Data.ProtoLens.Field.field @"vec'switchTimestamp") _x
                 in
                   if Data.Vector.Generic.null p then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
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
                            (Data.ProtoLens.Field.field @"vec'switchPrevState") _x
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
                                     ((Prelude..)
                                        Data.ProtoLens.Encoding.Bytes.putVarInt
                                        Prelude.fromIntegral)
                                     p))))
                   ((Data.Monoid.<>)
                      (let
                         p = Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'switchNextPid") _x
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
                      ((Data.Monoid.<>)
                         (let
                            p = Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'switchNextPrio") _x
                          in
                            if Data.Vector.Generic.null p then
                                Data.Monoid.mempty
                            else
                                (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
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
                         ((Data.Monoid.<>)
                            (let
                               p = Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'switchNextCommIndex") _x
                             in
                               if Data.Vector.Generic.null p then
                                   Data.Monoid.mempty
                               else
                                   (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                            ((Data.Monoid.<>)
                               (let
                                  p = Lens.Family2.view
                                        (Data.ProtoLens.Field.field @"vec'wakingTimestamp") _x
                                in
                                  if Data.Vector.Generic.null p then
                                      Data.Monoid.mempty
                                  else
                                      (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                        ((\ bs
                                            -> (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                    (Prelude.fromIntegral
                                                       (Data.ByteString.length bs)))
                                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                           (Data.ProtoLens.Encoding.Bytes.runBuilder
                                              (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                 Data.ProtoLens.Encoding.Bytes.putVarInt p))))
                               ((Data.Monoid.<>)
                                  (let
                                     p = Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'wakingPid") _x
                                   in
                                     if Data.Vector.Generic.null p then
                                         Data.Monoid.mempty
                                     else
                                         (Data.Monoid.<>)
                                           (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                           ((\ bs
                                               -> (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       (Prelude.fromIntegral
                                                          (Data.ByteString.length bs)))
                                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                              (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                    ((Prelude..)
                                                       Data.ProtoLens.Encoding.Bytes.putVarInt
                                                       Prelude.fromIntegral)
                                                    p))))
                                  ((Data.Monoid.<>)
                                     (let
                                        p = Lens.Family2.view
                                              (Data.ProtoLens.Field.field @"vec'wakingTargetCpu") _x
                                      in
                                        if Data.Vector.Generic.null p then
                                            Data.Monoid.mempty
                                        else
                                            (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt 74)
                                              ((\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                 (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                    (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                       ((Prelude..)
                                                          Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          Prelude.fromIntegral)
                                                       p))))
                                     ((Data.Monoid.<>)
                                        (let
                                           p = Lens.Family2.view
                                                 (Data.ProtoLens.Field.field @"vec'wakingPrio") _x
                                         in
                                           if Data.Vector.Generic.null p then
                                               Data.Monoid.mempty
                                           else
                                               (Data.Monoid.<>)
                                                 (Data.ProtoLens.Encoding.Bytes.putVarInt 82)
                                                 ((\ bs
                                                     -> (Data.Monoid.<>)
                                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             (Prelude.fromIntegral
                                                                (Data.ByteString.length bs)))
                                                          (Data.ProtoLens.Encoding.Bytes.putBytes
                                                             bs))
                                                    (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                       (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                          ((Prelude..)
                                                             Data.ProtoLens.Encoding.Bytes.putVarInt
                                                             Prelude.fromIntegral)
                                                          p))))
                                        ((Data.Monoid.<>)
                                           (let
                                              p = Lens.Family2.view
                                                    (Data.ProtoLens.Field.field
                                                       @"vec'wakingCommIndex")
                                                    _x
                                            in
                                              if Data.Vector.Generic.null p then
                                                  Data.Monoid.mempty
                                              else
                                                  (Data.Monoid.<>)
                                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 90)
                                                    ((\ bs
                                                        -> (Data.Monoid.<>)
                                                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                (Prelude.fromIntegral
                                                                   (Data.ByteString.length bs)))
                                                             (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                bs))
                                                       (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                          (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                             ((Prelude..)
                                                                Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                Prelude.fromIntegral)
                                                             p))))
                                           ((Data.Monoid.<>)
                                              (let
                                                 p = Lens.Family2.view
                                                       (Data.ProtoLens.Field.field
                                                          @"vec'wakingCommonFlags")
                                                       _x
                                               in
                                                 if Data.Vector.Generic.null p then
                                                     Data.Monoid.mempty
                                                 else
                                                     (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 98)
                                                       ((\ bs
                                                           -> (Data.Monoid.<>)
                                                                (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   (Prelude.fromIntegral
                                                                      (Data.ByteString.length bs)))
                                                                (Data.ProtoLens.Encoding.Bytes.putBytes
                                                                   bs))
                                                          (Data.ProtoLens.Encoding.Bytes.runBuilder
                                                             (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                                                ((Prelude..)
                                                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                   Prelude.fromIntegral)
                                                                p))))
                                              (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                                 (Lens.Family2.view
                                                    Data.ProtoLens.unknownFields _x)))))))))))))
instance Control.DeepSeq.NFData FtraceEventBundle'CompactSched where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FtraceEventBundle'CompactSched'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FtraceEventBundle'CompactSched'internTable x__)
                (Control.DeepSeq.deepseq
                   (_FtraceEventBundle'CompactSched'switchTimestamp x__)
                   (Control.DeepSeq.deepseq
                      (_FtraceEventBundle'CompactSched'switchPrevState x__)
                      (Control.DeepSeq.deepseq
                         (_FtraceEventBundle'CompactSched'switchNextPid x__)
                         (Control.DeepSeq.deepseq
                            (_FtraceEventBundle'CompactSched'switchNextPrio x__)
                            (Control.DeepSeq.deepseq
                               (_FtraceEventBundle'CompactSched'switchNextCommIndex x__)
                               (Control.DeepSeq.deepseq
                                  (_FtraceEventBundle'CompactSched'wakingTimestamp x__)
                                  (Control.DeepSeq.deepseq
                                     (_FtraceEventBundle'CompactSched'wakingPid x__)
                                     (Control.DeepSeq.deepseq
                                        (_FtraceEventBundle'CompactSched'wakingTargetCpu x__)
                                        (Control.DeepSeq.deepseq
                                           (_FtraceEventBundle'CompactSched'wakingPrio x__)
                                           (Control.DeepSeq.deepseq
                                              (_FtraceEventBundle'CompactSched'wakingCommIndex x__)
                                              (Control.DeepSeq.deepseq
                                                 (_FtraceEventBundle'CompactSched'wakingCommonFlags
                                                    x__)
                                                 ()))))))))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \6protos/perfetto/trace/ftrace/ftrace_event_bundle.proto\DC2\SIperfetto.protos\SUB/protos/perfetto/trace/ftrace/ftrace_event.proto\"\148\a\n\
    \\DC1FtraceEventBundle\DC2\DLE\n\
    \\ETXcpu\CAN\SOH \SOH(\rR\ETXcpu\DC22\n\
    \\ENQevent\CAN\STX \ETX(\v2\FS.perfetto.protos.FtraceEventR\ENQevent\DC2\US\n\
    \\vlost_events\CAN\ETX \SOH(\bR\n\
    \lostEvents\DC2T\n\
    \\rcompact_sched\CAN\EOT \SOH(\v2/.perfetto.protos.FtraceEventBundle.CompactSchedR\fcompactSched\DC2?\n\
    \\fftrace_clock\CAN\ENQ \SOH(\SO2\FS.perfetto.protos.FtraceClockR\vftraceClock\DC2)\n\
    \\DLEftrace_timestamp\CAN\ACK \SOH(\ETXR\SIftraceTimestamp\DC2%\n\
    \\SOboot_timestamp\CAN\a \SOH(\ETXR\rbootTimestamp\SUB\174\EOT\n\
    \\fCompactSched\DC2!\n\
    \\fintern_table\CAN\ENQ \ETX(\tR\vinternTable\DC2-\n\
    \\DLEswitch_timestamp\CAN\SOH \ETX(\EOTR\SIswitchTimestampB\STX\DLE\SOH\DC2.\n\
    \\DC1switch_prev_state\CAN\STX \ETX(\ETXR\SIswitchPrevStateB\STX\DLE\SOH\DC2*\n\
    \\SIswitch_next_pid\CAN\ETX \ETX(\ENQR\rswitchNextPidB\STX\DLE\SOH\DC2,\n\
    \\DLEswitch_next_prio\CAN\EOT \ETX(\ENQR\SOswitchNextPrioB\STX\DLE\SOH\DC27\n\
    \\SYNswitch_next_comm_index\CAN\ACK \ETX(\rR\DC3switchNextCommIndexB\STX\DLE\SOH\DC2-\n\
    \\DLEwaking_timestamp\CAN\a \ETX(\EOTR\SIwakingTimestampB\STX\DLE\SOH\DC2!\n\
    \\n\
    \waking_pid\CAN\b \ETX(\ENQR\twakingPidB\STX\DLE\SOH\DC2.\n\
    \\DC1waking_target_cpu\CAN\t \ETX(\ENQR\SIwakingTargetCpuB\STX\DLE\SOH\DC2#\n\
    \\vwaking_prio\CAN\n\
    \ \ETX(\ENQR\n\
    \wakingPrioB\STX\DLE\SOH\DC2.\n\
    \\DC1waking_comm_index\CAN\v \ETX(\rR\SIwakingCommIndexB\STX\DLE\SOH\DC22\n\
    \\DC3waking_common_flags\CAN\f \ETX(\rR\DC1wakingCommonFlagsB\STX\DLE\SOH*\145\SOH\n\
    \\vFtraceClock\DC2\FS\n\
    \\CANFTRACE_CLOCK_UNSPECIFIED\DLE\NUL\DC2\CAN\n\
    \\DC4FTRACE_CLOCK_UNKNOWN\DLE\SOH\DC2\ETB\n\
    \\DC3FTRACE_CLOCK_GLOBAL\DLE\STX\DC2\SYN\n\
    \\DC2FTRACE_CLOCK_LOCAL\DLE\ETX\DC2\EM\n\
    \\NAKFTRACE_CLOCK_MONO_RAW\DLE\EOTJ\147+\n\
    \\ACK\DC2\EOT\DLE\NULl\SOH\n\
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
    \\STX\ETX\NUL\DC2\ETX\DC2\NUL9\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DC4\NUL\CAN\n\
    \\233\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\EM\NULb\SOH\SUB\220\SOH The result of tracing one or more ftrace data pages from a single per-cpu\n\
    \ kernel ring buffer. If collating multiple pages' worth of events, all of\n\
    \ them come from contiguous pages, with no kernel data loss in between.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\EM\b\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SUB\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\SUB\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SUB\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SUB\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SUB\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\ESC\STX!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\ESC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETX\ESC\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\ESC\ETB\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\ESC\US \n\
    \\179\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX \STX \SUB\165\SOH Set to true if there was data loss between the last time we've read from\n\
    \ the corresponding per-cpu kernel buffer, and the earliest event recorded\n\
    \ in this bundle.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX \STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX \v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX \DLE\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX \RS\US\n\
    \\252\SOH\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT&\STX@\ETX\SUB\237\SOH Optionally-enabled compact encoding of a batch of scheduling events. Only\n\
    \ a subset of events & their fields is recorded.\n\
    \ All fields (except comms) are stored in a structure-of-arrays form, one\n\
    \ entry in each repeated field per event.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX&\n\
    \\SYN\n\
    \B\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX(\EOT%\SUB3 Interned table of unique strings for this bundle.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX(\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX(\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX(\DC4 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX(#$\n\
    \\164\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX-\EOT9\SUB\148\SOH Delta-encoded timestamps across all sched_switch events within this\n\
    \ bundle. The first is absolute, each next one is relative to its\n\
    \ predecessor.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX-\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX-\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX-\DC4$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX-'(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\b\DC2\ETX-)8\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\SOH\b\STX\DC2\ETX-*7\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX.\EOT9\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX.\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX.\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX.\DC3$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX.'(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\b\DC2\ETX.)8\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\STX\b\STX\DC2\ETX.*7\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETX/\EOT7\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\ETX/\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETX/\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX/\DC3\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX/%&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\b\DC2\ETX/'6\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\ETX\b\STX\DC2\ETX/(5\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETX0\EOT8\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\EOT\DC2\ETX0\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ENQ\DC2\ETX0\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETX0\DC3#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETX0&'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\b\DC2\ETX0(7\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\EOT\b\STX\DC2\ETX0)6\n\
    \m\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETX3\EOT?\SUB^ One per event, index into |intern_table| corresponding to the\n\
    \ next_comm field of the event.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\EOT\DC2\ETX3\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ENQ\DC2\ETX3\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETX3\DC4*\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETX3-.\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\b\DC2\ETX3/>\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\ENQ\b\STX\DC2\ETX30=\n\
    \\164\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\ETX8\EOT9\SUB\148\SOH Delta-encoded timestamps across all sched_waking events within this\n\
    \ bundle. The first is absolute, each next one is relative to its\n\
    \ predecessor.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\EOT\DC2\ETX8\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ENQ\DC2\ETX8\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\ETX8\DC4$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\ETX8'(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\b\DC2\ETX8)8\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\ACK\b\STX\DC2\ETX8*7\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\a\DC2\ETX9\EOT2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\EOT\DC2\ETX9\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ENQ\DC2\ETX9\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\SOH\DC2\ETX9\DC3\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ETX\DC2\ETX9 !\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\b\DC2\ETX9\"1\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\a\b\STX\DC2\ETX9#0\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\b\DC2\ETX:\EOT9\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\EOT\DC2\ETX:\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\ENQ\DC2\ETX:\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\SOH\DC2\ETX:\DC3$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\ETX\DC2\ETX:'(\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\b\DC2\ETX:)8\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\b\b\STX\DC2\ETX:*7\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\t\DC2\ETX;\EOT4\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\EOT\DC2\ETX;\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\ENQ\DC2\ETX;\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\SOH\DC2\ETX;\DC3\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\ETX\DC2\ETX;!#\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\t\b\DC2\ETX;$3\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\t\b\STX\DC2\ETX;%2\n\
    \h\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\n\
    \\DC2\ETX>\EOT;\SUBY One per event, index into |intern_table| corresponding to the\n\
    \ comm field of the event.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\EOT\DC2\ETX>\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\ENQ\DC2\ETX>\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\SOH\DC2\ETX>\DC4%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\ETX\DC2\ETX>(*\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\n\
    \\b\DC2\ETX>+:\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\n\
    \\b\STX\DC2\ETX>,9\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\v\DC2\ETX?\EOT=\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\EOT\DC2\ETX?\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\ENQ\DC2\ETX?\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\SOH\DC2\ETX?\DC4'\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\ETX\DC2\ETX?*,\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\v\b\DC2\ETX?-<\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\STX\v\b\STX\DC2\ETX?.;\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXA\STX*\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETXA\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ACK\DC2\ETXA\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXA\CAN%\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXA()\n\
    \\139\ACK\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXN\STX(\SUB\253\ENQ traced_probes always sets the ftrace_clock to \"boot\". That is not available\n\
    \ in older kernels (v3.x). In that case we fallback on \"global\" or \"local\".\n\
    \ When we do that, we report the fallback clock in each bundle so we can do\n\
    \ proper clock syncing at parsing time in TraceProcessor. We cannot use the\n\
    \ TracePacket timestamp_clock_id because: (1) there is no per-packet\n\
    \ timestamp for ftrace bundles; (2) \"global\" does not match CLOCK_MONOTONIC.\n\
    \ Having a dedicated and explicit flag allows us to correct further misakes\n\
    \ in future by looking at the kernel version.\n\
    \ This field has been introduced in perfetto v19 / Android T (13).\n\
    \ This field is omitted when the ftrace clock is just \"boot\", as that is the\n\
    \ default assumption (and for consistency with the past).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETXN\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXN\ETB#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXN&'\n\
    \\129\EOT\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXZ\STX&\SUB\243\ETX The timestamp according to the ftrace clock, taken at the same instant\n\
    \ as |boot_timestamp|. This is used to sync ftrace events when a non-boot\n\
    \ clock is used as the ftrace clock. We don't use the ClockSnapshot packet\n\
    \ because the ftrace global/local clocks don't match any of the clock_gettime\n\
    \ domains and can be only read by traced_probes.\n\
    \\n\
    \ Only set when |ftrace_clock| != FTRACE_CLOCK_UNSPECIFIED.\n\
    \\n\
    \ Implementation note: Populated by reading the 'now ts:' field in\n\
    \ tracefs/per_cpu/cpuX/stat.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXZ\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXZ\DC1!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXZ$%\n\
    \\224\SOH\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETXa\STX$\SUB\210\SOH The timestamp according to CLOCK_BOOTTIME, taken at the same instant as\n\
    \ |ftrace_timestamp|. See documentation of |ftrace_timestamp| for\n\
    \ more info.\n\
    \\n\
    \ Only set when |ftrace_clock| != FTRACE_CLOCK_UNSPECIFIED.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETXa\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETXa\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETXa\DC1\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETXa\"#\n\
    \\n\
    \\n\
    \\STX\ENQ\NUL\DC2\EOTd\NULl\SOH\n\
    \\n\
    \\n\
    \\ETX\ENQ\NUL\SOH\DC2\ETXd\ENQ\DLE\n\
    \\163\SOH\n\
    \\EOT\ENQ\NUL\STX\NUL\DC2\ETXg\STX\US\SUB\149\SOH There is no FTRACE_CLOCK_BOOT entry as that's the default assumption. When\n\
    \ the ftrace clock is \"boot\", it's just omitted (so UNSPECIFIED == BOOT).\n\
    \\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\SOH\DC2\ETXg\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\NUL\STX\DC2\ETXg\GS\RS\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\SOH\DC2\ETXh\STX\ESC\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\SOH\DC2\ETXh\STX\SYN\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\SOH\STX\DC2\ETXh\EM\SUB\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\STX\DC2\ETXi\STX\SUB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\SOH\DC2\ETXi\STX\NAK\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\STX\STX\DC2\ETXi\CAN\EM\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\ETX\DC2\ETXj\STX\EM\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\SOH\DC2\ETXj\STX\DC4\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\ETX\STX\DC2\ETXj\ETB\CAN\n\
    \\v\n\
    \\EOT\ENQ\NUL\STX\EOT\DC2\ETXk\STX\FS\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\SOH\DC2\ETXk\STX\ETB\n\
    \\f\n\
    \\ENQ\ENQ\NUL\STX\EOT\STX\DC2\ETXk\SUB\ESC"