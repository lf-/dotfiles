{- This file was auto-generated from protos/perfetto/trace/ftrace/ftrace_stats.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats (
        FtraceCpuStats(), FtraceStats(), FtraceStats'Phase(..),
        FtraceStats'Phase()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.cpu' @:: Lens' FtraceCpuStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'cpu' @:: Lens' FtraceCpuStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.entries' @:: Lens' FtraceCpuStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'entries' @:: Lens' FtraceCpuStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.overrun' @:: Lens' FtraceCpuStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'overrun' @:: Lens' FtraceCpuStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.commitOverrun' @:: Lens' FtraceCpuStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'commitOverrun' @:: Lens' FtraceCpuStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.bytesRead' @:: Lens' FtraceCpuStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'bytesRead' @:: Lens' FtraceCpuStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.oldestEventTs' @:: Lens' FtraceCpuStats Prelude.Double@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'oldestEventTs' @:: Lens' FtraceCpuStats (Prelude.Maybe Prelude.Double)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.nowTs' @:: Lens' FtraceCpuStats Prelude.Double@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'nowTs' @:: Lens' FtraceCpuStats (Prelude.Maybe Prelude.Double)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.droppedEvents' @:: Lens' FtraceCpuStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'droppedEvents' @:: Lens' FtraceCpuStats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.readEvents' @:: Lens' FtraceCpuStats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'readEvents' @:: Lens' FtraceCpuStats (Prelude.Maybe Data.Word.Word64)@ -}
data FtraceCpuStats
  = FtraceCpuStats'_constructor {_FtraceCpuStats'cpu :: !(Prelude.Maybe Data.Word.Word64),
                                 _FtraceCpuStats'entries :: !(Prelude.Maybe Data.Word.Word64),
                                 _FtraceCpuStats'overrun :: !(Prelude.Maybe Data.Word.Word64),
                                 _FtraceCpuStats'commitOverrun :: !(Prelude.Maybe Data.Word.Word64),
                                 _FtraceCpuStats'bytesRead :: !(Prelude.Maybe Data.Word.Word64),
                                 _FtraceCpuStats'oldestEventTs :: !(Prelude.Maybe Prelude.Double),
                                 _FtraceCpuStats'nowTs :: !(Prelude.Maybe Prelude.Double),
                                 _FtraceCpuStats'droppedEvents :: !(Prelude.Maybe Data.Word.Word64),
                                 _FtraceCpuStats'readEvents :: !(Prelude.Maybe Data.Word.Word64),
                                 _FtraceCpuStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FtraceCpuStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FtraceCpuStats "cpu" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'cpu (\ x__ y__ -> x__ {_FtraceCpuStats'cpu = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceCpuStats "maybe'cpu" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'cpu (\ x__ y__ -> x__ {_FtraceCpuStats'cpu = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceCpuStats "entries" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'entries
           (\ x__ y__ -> x__ {_FtraceCpuStats'entries = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceCpuStats "maybe'entries" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'entries
           (\ x__ y__ -> x__ {_FtraceCpuStats'entries = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceCpuStats "overrun" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'overrun
           (\ x__ y__ -> x__ {_FtraceCpuStats'overrun = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceCpuStats "maybe'overrun" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'overrun
           (\ x__ y__ -> x__ {_FtraceCpuStats'overrun = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceCpuStats "commitOverrun" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'commitOverrun
           (\ x__ y__ -> x__ {_FtraceCpuStats'commitOverrun = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceCpuStats "maybe'commitOverrun" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'commitOverrun
           (\ x__ y__ -> x__ {_FtraceCpuStats'commitOverrun = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceCpuStats "bytesRead" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'bytesRead
           (\ x__ y__ -> x__ {_FtraceCpuStats'bytesRead = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceCpuStats "maybe'bytesRead" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'bytesRead
           (\ x__ y__ -> x__ {_FtraceCpuStats'bytesRead = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceCpuStats "oldestEventTs" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'oldestEventTs
           (\ x__ y__ -> x__ {_FtraceCpuStats'oldestEventTs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceCpuStats "maybe'oldestEventTs" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'oldestEventTs
           (\ x__ y__ -> x__ {_FtraceCpuStats'oldestEventTs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceCpuStats "nowTs" Prelude.Double where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'nowTs
           (\ x__ y__ -> x__ {_FtraceCpuStats'nowTs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceCpuStats "maybe'nowTs" (Prelude.Maybe Prelude.Double) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'nowTs
           (\ x__ y__ -> x__ {_FtraceCpuStats'nowTs = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceCpuStats "droppedEvents" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'droppedEvents
           (\ x__ y__ -> x__ {_FtraceCpuStats'droppedEvents = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceCpuStats "maybe'droppedEvents" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'droppedEvents
           (\ x__ y__ -> x__ {_FtraceCpuStats'droppedEvents = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceCpuStats "readEvents" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'readEvents
           (\ x__ y__ -> x__ {_FtraceCpuStats'readEvents = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceCpuStats "maybe'readEvents" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceCpuStats'readEvents
           (\ x__ y__ -> x__ {_FtraceCpuStats'readEvents = y__}))
        Prelude.id
instance Data.ProtoLens.Message FtraceCpuStats where
  messageName _ = Data.Text.pack "perfetto.protos.FtraceCpuStats"
  packedMessageDescriptor _
    = "\n\
      \\SOFtraceCpuStats\DC2\DLE\n\
      \\ETXcpu\CAN\SOH \SOH(\EOTR\ETXcpu\DC2\CAN\n\
      \\aentries\CAN\STX \SOH(\EOTR\aentries\DC2\CAN\n\
      \\aoverrun\CAN\ETX \SOH(\EOTR\aoverrun\DC2%\n\
      \\SOcommit_overrun\CAN\EOT \SOH(\EOTR\rcommitOverrun\DC2\GS\n\
      \\n\
      \bytes_read\CAN\ENQ \SOH(\EOTR\tbytesRead\DC2&\n\
      \\SIoldest_event_ts\CAN\ACK \SOH(\SOHR\roldestEventTs\DC2\NAK\n\
      \\ACKnow_ts\CAN\a \SOH(\SOHR\ENQnowTs\DC2%\n\
      \\SOdropped_events\CAN\b \SOH(\EOTR\rdroppedEvents\DC2\US\n\
      \\vread_events\CAN\t \SOH(\EOTR\n\
      \readEvents"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        cpu__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'cpu")) ::
              Data.ProtoLens.FieldDescriptor FtraceCpuStats
        entries__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "entries"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'entries")) ::
              Data.ProtoLens.FieldDescriptor FtraceCpuStats
        overrun__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "overrun"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'overrun")) ::
              Data.ProtoLens.FieldDescriptor FtraceCpuStats
        commitOverrun__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "commit_overrun"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'commitOverrun")) ::
              Data.ProtoLens.FieldDescriptor FtraceCpuStats
        bytesRead__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "bytes_read"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'bytesRead")) ::
              Data.ProtoLens.FieldDescriptor FtraceCpuStats
        oldestEventTs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "oldest_event_ts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'oldestEventTs")) ::
              Data.ProtoLens.FieldDescriptor FtraceCpuStats
        nowTs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "now_ts"
              (Data.ProtoLens.ScalarField Data.ProtoLens.DoubleField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Double)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'nowTs")) ::
              Data.ProtoLens.FieldDescriptor FtraceCpuStats
        droppedEvents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dropped_events"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'droppedEvents")) ::
              Data.ProtoLens.FieldDescriptor FtraceCpuStats
        readEvents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "read_events"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'readEvents")) ::
              Data.ProtoLens.FieldDescriptor FtraceCpuStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, cpu__field_descriptor),
           (Data.ProtoLens.Tag 2, entries__field_descriptor),
           (Data.ProtoLens.Tag 3, overrun__field_descriptor),
           (Data.ProtoLens.Tag 4, commitOverrun__field_descriptor),
           (Data.ProtoLens.Tag 5, bytesRead__field_descriptor),
           (Data.ProtoLens.Tag 6, oldestEventTs__field_descriptor),
           (Data.ProtoLens.Tag 7, nowTs__field_descriptor),
           (Data.ProtoLens.Tag 8, droppedEvents__field_descriptor),
           (Data.ProtoLens.Tag 9, readEvents__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FtraceCpuStats'_unknownFields
        (\ x__ y__ -> x__ {_FtraceCpuStats'_unknownFields = y__})
  defMessage
    = FtraceCpuStats'_constructor
        {_FtraceCpuStats'cpu = Prelude.Nothing,
         _FtraceCpuStats'entries = Prelude.Nothing,
         _FtraceCpuStats'overrun = Prelude.Nothing,
         _FtraceCpuStats'commitOverrun = Prelude.Nothing,
         _FtraceCpuStats'bytesRead = Prelude.Nothing,
         _FtraceCpuStats'oldestEventTs = Prelude.Nothing,
         _FtraceCpuStats'nowTs = Prelude.Nothing,
         _FtraceCpuStats'droppedEvents = Prelude.Nothing,
         _FtraceCpuStats'readEvents = Prelude.Nothing,
         _FtraceCpuStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FtraceCpuStats
          -> Data.ProtoLens.Encoding.Bytes.Parser FtraceCpuStats
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "cpu"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cpu") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "entries"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"entries") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "overrun"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"overrun") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "commit_overrun"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"commitOverrun") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "bytes_read"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"bytesRead") y x)
                        49
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "oldest_event_ts"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"oldestEventTs") y x)
                        57
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToDouble
                                          Data.ProtoLens.Encoding.Bytes.getFixed64)
                                       "now_ts"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"nowTs") y x)
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "dropped_events"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"droppedEvents") y x)
                        72
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "read_events"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"readEvents") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FtraceCpuStats"
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
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'entries") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'overrun") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'commitOverrun") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'bytesRead") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'oldestEventTs") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 49)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putFixed64
                                         Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'nowTs") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 57)
                                         ((Prelude..)
                                            Data.ProtoLens.Encoding.Bytes.putFixed64
                                            Data.ProtoLens.Encoding.Bytes.doubleToWord _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'droppedEvents") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                  ((Data.Monoid.<>)
                                     (case
                                          Lens.Family2.view
                                            (Data.ProtoLens.Field.field @"maybe'readEvents") _x
                                      of
                                        Prelude.Nothing -> Data.Monoid.mempty
                                        (Prelude.Just _v)
                                          -> (Data.Monoid.<>)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt 72)
                                               (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData FtraceCpuStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FtraceCpuStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FtraceCpuStats'cpu x__)
                (Control.DeepSeq.deepseq
                   (_FtraceCpuStats'entries x__)
                   (Control.DeepSeq.deepseq
                      (_FtraceCpuStats'overrun x__)
                      (Control.DeepSeq.deepseq
                         (_FtraceCpuStats'commitOverrun x__)
                         (Control.DeepSeq.deepseq
                            (_FtraceCpuStats'bytesRead x__)
                            (Control.DeepSeq.deepseq
                               (_FtraceCpuStats'oldestEventTs x__)
                               (Control.DeepSeq.deepseq
                                  (_FtraceCpuStats'nowTs x__)
                                  (Control.DeepSeq.deepseq
                                     (_FtraceCpuStats'droppedEvents x__)
                                     (Control.DeepSeq.deepseq
                                        (_FtraceCpuStats'readEvents x__) ())))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.phase' @:: Lens' FtraceStats FtraceStats'Phase@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'phase' @:: Lens' FtraceStats (Prelude.Maybe FtraceStats'Phase)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.cpuStats' @:: Lens' FtraceStats [FtraceCpuStats]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.vec'cpuStats' @:: Lens' FtraceStats (Data.Vector.Vector FtraceCpuStats)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.kernelSymbolsParsed' @:: Lens' FtraceStats Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'kernelSymbolsParsed' @:: Lens' FtraceStats (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.kernelSymbolsMemKb' @:: Lens' FtraceStats Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'kernelSymbolsMemKb' @:: Lens' FtraceStats (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.atraceErrors' @:: Lens' FtraceStats Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'atraceErrors' @:: Lens' FtraceStats (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.unknownFtraceEvents' @:: Lens' FtraceStats [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.vec'unknownFtraceEvents' @:: Lens' FtraceStats (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.failedFtraceEvents' @:: Lens' FtraceStats [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.vec'failedFtraceEvents' @:: Lens' FtraceStats (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.preserveFtraceBuffer' @:: Lens' FtraceStats Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.FtraceStats_Fields.maybe'preserveFtraceBuffer' @:: Lens' FtraceStats (Prelude.Maybe Prelude.Bool)@ -}
data FtraceStats
  = FtraceStats'_constructor {_FtraceStats'phase :: !(Prelude.Maybe FtraceStats'Phase),
                              _FtraceStats'cpuStats :: !(Data.Vector.Vector FtraceCpuStats),
                              _FtraceStats'kernelSymbolsParsed :: !(Prelude.Maybe Data.Word.Word32),
                              _FtraceStats'kernelSymbolsMemKb :: !(Prelude.Maybe Data.Word.Word32),
                              _FtraceStats'atraceErrors :: !(Prelude.Maybe Data.Text.Text),
                              _FtraceStats'unknownFtraceEvents :: !(Data.Vector.Vector Data.Text.Text),
                              _FtraceStats'failedFtraceEvents :: !(Data.Vector.Vector Data.Text.Text),
                              _FtraceStats'preserveFtraceBuffer :: !(Prelude.Maybe Prelude.Bool),
                              _FtraceStats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FtraceStats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FtraceStats "phase" FtraceStats'Phase where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'phase (\ x__ y__ -> x__ {_FtraceStats'phase = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceStats "maybe'phase" (Prelude.Maybe FtraceStats'Phase) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'phase (\ x__ y__ -> x__ {_FtraceStats'phase = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceStats "cpuStats" [FtraceCpuStats] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'cpuStats
           (\ x__ y__ -> x__ {_FtraceStats'cpuStats = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceStats "vec'cpuStats" (Data.Vector.Vector FtraceCpuStats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'cpuStats
           (\ x__ y__ -> x__ {_FtraceStats'cpuStats = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceStats "kernelSymbolsParsed" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'kernelSymbolsParsed
           (\ x__ y__ -> x__ {_FtraceStats'kernelSymbolsParsed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceStats "maybe'kernelSymbolsParsed" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'kernelSymbolsParsed
           (\ x__ y__ -> x__ {_FtraceStats'kernelSymbolsParsed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceStats "kernelSymbolsMemKb" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'kernelSymbolsMemKb
           (\ x__ y__ -> x__ {_FtraceStats'kernelSymbolsMemKb = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceStats "maybe'kernelSymbolsMemKb" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'kernelSymbolsMemKb
           (\ x__ y__ -> x__ {_FtraceStats'kernelSymbolsMemKb = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceStats "atraceErrors" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'atraceErrors
           (\ x__ y__ -> x__ {_FtraceStats'atraceErrors = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceStats "maybe'atraceErrors" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'atraceErrors
           (\ x__ y__ -> x__ {_FtraceStats'atraceErrors = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceStats "unknownFtraceEvents" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'unknownFtraceEvents
           (\ x__ y__ -> x__ {_FtraceStats'unknownFtraceEvents = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceStats "vec'unknownFtraceEvents" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'unknownFtraceEvents
           (\ x__ y__ -> x__ {_FtraceStats'unknownFtraceEvents = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceStats "failedFtraceEvents" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'failedFtraceEvents
           (\ x__ y__ -> x__ {_FtraceStats'failedFtraceEvents = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField FtraceStats "vec'failedFtraceEvents" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'failedFtraceEvents
           (\ x__ y__ -> x__ {_FtraceStats'failedFtraceEvents = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField FtraceStats "preserveFtraceBuffer" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'preserveFtraceBuffer
           (\ x__ y__ -> x__ {_FtraceStats'preserveFtraceBuffer = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField FtraceStats "maybe'preserveFtraceBuffer" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FtraceStats'preserveFtraceBuffer
           (\ x__ y__ -> x__ {_FtraceStats'preserveFtraceBuffer = y__}))
        Prelude.id
instance Data.ProtoLens.Message FtraceStats where
  messageName _ = Data.Text.pack "perfetto.protos.FtraceStats"
  packedMessageDescriptor _
    = "\n\
      \\vFtraceStats\DC28\n\
      \\ENQphase\CAN\SOH \SOH(\SO2\".perfetto.protos.FtraceStats.PhaseR\ENQphase\DC2<\n\
      \\tcpu_stats\CAN\STX \ETX(\v2\US.perfetto.protos.FtraceCpuStatsR\bcpuStats\DC22\n\
      \\NAKkernel_symbols_parsed\CAN\ETX \SOH(\rR\DC3kernelSymbolsParsed\DC21\n\
      \\NAKkernel_symbols_mem_kb\CAN\EOT \SOH(\rR\DC2kernelSymbolsMemKb\DC2#\n\
      \\ratrace_errors\CAN\ENQ \SOH(\tR\fatraceErrors\DC22\n\
      \\NAKunknown_ftrace_events\CAN\ACK \ETX(\tR\DC3unknownFtraceEvents\DC20\n\
      \\DC4failed_ftrace_events\CAN\a \ETX(\tR\DC2failedFtraceEvents\DC24\n\
      \\SYNpreserve_ftrace_buffer\CAN\b \SOH(\bR\DC4preserveFtraceBuffer\">\n\
      \\ENQPhase\DC2\SI\n\
      \\vUNSPECIFIED\DLE\NUL\DC2\DC2\n\
      \\SOSTART_OF_TRACE\DLE\SOH\DC2\DLE\n\
      \\fEND_OF_TRACE\DLE\STX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        phase__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "phase"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor FtraceStats'Phase)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'phase")) ::
              Data.ProtoLens.FieldDescriptor FtraceStats
        cpuStats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cpu_stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor FtraceCpuStats)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"cpuStats")) ::
              Data.ProtoLens.FieldDescriptor FtraceStats
        kernelSymbolsParsed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kernel_symbols_parsed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kernelSymbolsParsed")) ::
              Data.ProtoLens.FieldDescriptor FtraceStats
        kernelSymbolsMemKb__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "kernel_symbols_mem_kb"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'kernelSymbolsMemKb")) ::
              Data.ProtoLens.FieldDescriptor FtraceStats
        atraceErrors__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "atrace_errors"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'atraceErrors")) ::
              Data.ProtoLens.FieldDescriptor FtraceStats
        unknownFtraceEvents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unknown_ftrace_events"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"unknownFtraceEvents")) ::
              Data.ProtoLens.FieldDescriptor FtraceStats
        failedFtraceEvents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "failed_ftrace_events"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"failedFtraceEvents")) ::
              Data.ProtoLens.FieldDescriptor FtraceStats
        preserveFtraceBuffer__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "preserve_ftrace_buffer"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'preserveFtraceBuffer")) ::
              Data.ProtoLens.FieldDescriptor FtraceStats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, phase__field_descriptor),
           (Data.ProtoLens.Tag 2, cpuStats__field_descriptor),
           (Data.ProtoLens.Tag 3, kernelSymbolsParsed__field_descriptor),
           (Data.ProtoLens.Tag 4, kernelSymbolsMemKb__field_descriptor),
           (Data.ProtoLens.Tag 5, atraceErrors__field_descriptor),
           (Data.ProtoLens.Tag 6, unknownFtraceEvents__field_descriptor),
           (Data.ProtoLens.Tag 7, failedFtraceEvents__field_descriptor),
           (Data.ProtoLens.Tag 8, preserveFtraceBuffer__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FtraceStats'_unknownFields
        (\ x__ y__ -> x__ {_FtraceStats'_unknownFields = y__})
  defMessage
    = FtraceStats'_constructor
        {_FtraceStats'phase = Prelude.Nothing,
         _FtraceStats'cpuStats = Data.Vector.Generic.empty,
         _FtraceStats'kernelSymbolsParsed = Prelude.Nothing,
         _FtraceStats'kernelSymbolsMemKb = Prelude.Nothing,
         _FtraceStats'atraceErrors = Prelude.Nothing,
         _FtraceStats'unknownFtraceEvents = Data.Vector.Generic.empty,
         _FtraceStats'failedFtraceEvents = Data.Vector.Generic.empty,
         _FtraceStats'preserveFtraceBuffer = Prelude.Nothing,
         _FtraceStats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FtraceStats
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld FtraceCpuStats
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                   -> Data.ProtoLens.Encoding.Bytes.Parser FtraceStats
        loop
          x
          mutable'cpuStats
          mutable'failedFtraceEvents
          mutable'unknownFtraceEvents
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'cpuStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                           (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                              mutable'cpuStats)
                      frozen'failedFtraceEvents <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                     (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                        mutable'failedFtraceEvents)
                      frozen'unknownFtraceEvents <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                         mutable'unknownFtraceEvents)
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
                              (Data.ProtoLens.Field.field @"vec'cpuStats") frozen'cpuStats
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'failedFtraceEvents")
                                 frozen'failedFtraceEvents
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'unknownFtraceEvents")
                                    frozen'unknownFtraceEvents x))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "phase"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"phase") y x)
                                  mutable'cpuStats mutable'failedFtraceEvents
                                  mutable'unknownFtraceEvents
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "cpu_stats"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'cpuStats y)
                                loop x v mutable'failedFtraceEvents mutable'unknownFtraceEvents
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kernel_symbols_parsed"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"kernelSymbolsParsed") y x)
                                  mutable'cpuStats mutable'failedFtraceEvents
                                  mutable'unknownFtraceEvents
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "kernel_symbols_mem_kb"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"kernelSymbolsMemKb") y x)
                                  mutable'cpuStats mutable'failedFtraceEvents
                                  mutable'unknownFtraceEvents
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "atrace_errors"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"atraceErrors") y x)
                                  mutable'cpuStats mutable'failedFtraceEvents
                                  mutable'unknownFtraceEvents
                        50
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "unknown_ftrace_events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'unknownFtraceEvents y)
                                loop x mutable'cpuStats mutable'failedFtraceEvents v
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "failed_ftrace_events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'failedFtraceEvents y)
                                loop x mutable'cpuStats v mutable'unknownFtraceEvents
                        64
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "preserve_ftrace_buffer"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"preserveFtraceBuffer") y x)
                                  mutable'cpuStats mutable'failedFtraceEvents
                                  mutable'unknownFtraceEvents
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'cpuStats mutable'failedFtraceEvents
                                  mutable'unknownFtraceEvents
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'cpuStats <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                    Data.ProtoLens.Encoding.Growing.new
              mutable'failedFtraceEvents <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              Data.ProtoLens.Encoding.Growing.new
              mutable'unknownFtraceEvents <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'cpuStats
                mutable'failedFtraceEvents mutable'unknownFtraceEvents)
          "FtraceStats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'phase") _x
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
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'cpuStats") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'kernelSymbolsParsed") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'kernelSymbolsMemKb") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view
                                (Data.ProtoLens.Field.field @"maybe'atraceErrors") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 42)
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
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                                       ((Prelude..)
                                          (\ bs
                                             -> (Data.Monoid.<>)
                                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                     (Prelude.fromIntegral
                                                        (Data.ByteString.length bs)))
                                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                          Data.Text.Encoding.encodeUtf8 _v))
                               (Lens.Family2.view
                                  (Data.ProtoLens.Field.field @"vec'unknownFtraceEvents") _x))
                            ((Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                  (\ _v
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt 58)
                                          ((Prelude..)
                                             (\ bs
                                                -> (Data.Monoid.<>)
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                             Data.Text.Encoding.encodeUtf8 _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'failedFtraceEvents") _x))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'preserveFtraceBuffer")
                                         _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 64)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               (\ b -> if b then 1 else 0) _v))
                                  (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                     (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))))
instance Control.DeepSeq.NFData FtraceStats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FtraceStats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_FtraceStats'phase x__)
                (Control.DeepSeq.deepseq
                   (_FtraceStats'cpuStats x__)
                   (Control.DeepSeq.deepseq
                      (_FtraceStats'kernelSymbolsParsed x__)
                      (Control.DeepSeq.deepseq
                         (_FtraceStats'kernelSymbolsMemKb x__)
                         (Control.DeepSeq.deepseq
                            (_FtraceStats'atraceErrors x__)
                            (Control.DeepSeq.deepseq
                               (_FtraceStats'unknownFtraceEvents x__)
                               (Control.DeepSeq.deepseq
                                  (_FtraceStats'failedFtraceEvents x__)
                                  (Control.DeepSeq.deepseq
                                     (_FtraceStats'preserveFtraceBuffer x__) ()))))))))
data FtraceStats'Phase
  = FtraceStats'UNSPECIFIED |
    FtraceStats'START_OF_TRACE |
    FtraceStats'END_OF_TRACE
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum FtraceStats'Phase where
  maybeToEnum 0 = Prelude.Just FtraceStats'UNSPECIFIED
  maybeToEnum 1 = Prelude.Just FtraceStats'START_OF_TRACE
  maybeToEnum 2 = Prelude.Just FtraceStats'END_OF_TRACE
  maybeToEnum _ = Prelude.Nothing
  showEnum FtraceStats'UNSPECIFIED = "UNSPECIFIED"
  showEnum FtraceStats'START_OF_TRACE = "START_OF_TRACE"
  showEnum FtraceStats'END_OF_TRACE = "END_OF_TRACE"
  readEnum k
    | (Prelude.==) k "UNSPECIFIED"
    = Prelude.Just FtraceStats'UNSPECIFIED
    | (Prelude.==) k "START_OF_TRACE"
    = Prelude.Just FtraceStats'START_OF_TRACE
    | (Prelude.==) k "END_OF_TRACE"
    = Prelude.Just FtraceStats'END_OF_TRACE
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded FtraceStats'Phase where
  minBound = FtraceStats'UNSPECIFIED
  maxBound = FtraceStats'END_OF_TRACE
instance Prelude.Enum FtraceStats'Phase where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Phase: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum FtraceStats'UNSPECIFIED = 0
  fromEnum FtraceStats'START_OF_TRACE = 1
  fromEnum FtraceStats'END_OF_TRACE = 2
  succ FtraceStats'END_OF_TRACE
    = Prelude.error
        "FtraceStats'Phase.succ: bad argument FtraceStats'END_OF_TRACE. This value would be out of bounds."
  succ FtraceStats'UNSPECIFIED = FtraceStats'START_OF_TRACE
  succ FtraceStats'START_OF_TRACE = FtraceStats'END_OF_TRACE
  pred FtraceStats'UNSPECIFIED
    = Prelude.error
        "FtraceStats'Phase.pred: bad argument FtraceStats'UNSPECIFIED. This value would be out of bounds."
  pred FtraceStats'START_OF_TRACE = FtraceStats'UNSPECIFIED
  pred FtraceStats'END_OF_TRACE = FtraceStats'START_OF_TRACE
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault FtraceStats'Phase where
  fieldDefault = FtraceStats'UNSPECIFIED
instance Control.DeepSeq.NFData FtraceStats'Phase where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \/protos/perfetto/trace/ftrace/ftrace_stats.proto\DC2\SIperfetto.protos\"\163\STX\n\
    \\SOFtraceCpuStats\DC2\DLE\n\
    \\ETXcpu\CAN\SOH \SOH(\EOTR\ETXcpu\DC2\CAN\n\
    \\aentries\CAN\STX \SOH(\EOTR\aentries\DC2\CAN\n\
    \\aoverrun\CAN\ETX \SOH(\EOTR\aoverrun\DC2%\n\
    \\SOcommit_overrun\CAN\EOT \SOH(\EOTR\rcommitOverrun\DC2\GS\n\
    \\n\
    \bytes_read\CAN\ENQ \SOH(\EOTR\tbytesRead\DC2&\n\
    \\SIoldest_event_ts\CAN\ACK \SOH(\SOHR\roldestEventTs\DC2\NAK\n\
    \\ACKnow_ts\CAN\a \SOH(\SOHR\ENQnowTs\DC2%\n\
    \\SOdropped_events\CAN\b \SOH(\EOTR\rdroppedEvents\DC2\US\n\
    \\vread_events\CAN\t \SOH(\EOTR\n\
    \readEvents\"\237\ETX\n\
    \\vFtraceStats\DC28\n\
    \\ENQphase\CAN\SOH \SOH(\SO2\".perfetto.protos.FtraceStats.PhaseR\ENQphase\DC2<\n\
    \\tcpu_stats\CAN\STX \ETX(\v2\US.perfetto.protos.FtraceCpuStatsR\bcpuStats\DC22\n\
    \\NAKkernel_symbols_parsed\CAN\ETX \SOH(\rR\DC3kernelSymbolsParsed\DC21\n\
    \\NAKkernel_symbols_mem_kb\CAN\EOT \SOH(\rR\DC2kernelSymbolsMemKb\DC2#\n\
    \\ratrace_errors\CAN\ENQ \SOH(\tR\fatraceErrors\DC22\n\
    \\NAKunknown_ftrace_events\CAN\ACK \ETX(\tR\DC3unknownFtraceEvents\DC20\n\
    \\DC4failed_ftrace_events\CAN\a \ETX(\tR\DC2failedFtraceEvents\DC24\n\
    \\SYNpreserve_ftrace_buffer\CAN\b \SOH(\bR\DC4preserveFtraceBuffer\">\n\
    \\ENQPhase\DC2\SI\n\
    \\vUNSPECIFIED\DLE\NUL\DC2\DC2\n\
    \\SOSTART_OF_TRACE\DLE\SOH\DC2\DLE\n\
    \\fEND_OF_TRACE\DLE\STXJ\246\US\n\
    \\ACK\DC2\EOT\DLE\NULb\SOH\n\
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
    \\131\SOH\n\
    \\STX\EOT\NUL\DC2\EOT\SYN\NUL7\SOH\SUBw Per-CPU stats for the ftrace data source gathered from the kernel from\n\
    \ /sys/kernel/debug/tracing/per_cpu/cpuX/stats.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\SYN\b\SYN\n\
    \\EM\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\CAN\STX\SUB\SUB\f CPU index.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\CAN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\CAN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\CAN\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\CAN\CAN\EM\n\
    \\182\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\GS\STX\RS\SUB\168\SOH Number of entries still in the kernel buffer. Ideally this should be close\n\
    \ to zero, as events are consumed regularly and moved into the userspace\n\
    \ buffers (or file).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\GS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\GS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\GS\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\GS\FS\GS\n\
    \\133\SOH\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX!\STX\RS\SUBx Number of events lost in kernel buffers due to overwriting of old events\n\
    \ before userspace had a chance to drain them.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX!\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX!\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX!\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX!\FS\GS\n\
    \|\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX%\STX%\SUBo This should always be zero. If not the buffer size is way too small or\n\
    \ something went wrong with the tracer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX%\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX%\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX%\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX%#$\n\
    \5\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX(\STX!\SUB( Bytes actually read (not overwritten).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX(\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX(\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX(\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX(\US \n\
    \K\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX+\STX&\SUB> The timestamp for the oldest event still in the ring buffer.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX+\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX+\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX+\DC2!\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX+$%\n\
    \%\n\
    \\EOT\EOT\NUL\STX\ACK\DC2\ETX.\STX\GS\SUB\CAN The current timestamp.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\EOT\DC2\ETX.\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ENQ\DC2\ETX.\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\SOH\DC2\ETX.\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ACK\ETX\DC2\ETX.\ESC\FS\n\
    \\219\SOH\n\
    \\EOT\EOT\NUL\STX\a\DC2\ETX3\STX%\SUB\205\SOH If the kernel buffer has overwrite mode disabled, this will show the number\n\
    \ of new events that were lost because the buffer was full. This is similar\n\
    \ to |overrun| but only for the overwrite=false case.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\EOT\DC2\ETX3\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ENQ\DC2\ETX3\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\SOH\DC2\ETX3\DC2 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\a\ETX\DC2\ETX3#$\n\
    \)\n\
    \\EOT\EOT\NUL\STX\b\DC2\ETX6\STX\"\SUB\FS The number of events read.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\EOT\DC2\ETX6\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ENQ\DC2\ETX6\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\SOH\DC2\ETX6\DC2\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\b\ETX\DC2\ETX6 !\n\
    \(\n\
    \\STX\EOT\SOH\DC2\EOT:\NULb\SOH\SUB\FS Ftrace stats for all CPUs.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX:\b\DC3\n\
    \\f\n\
    \\EOT\EOT\SOH\EOT\NUL\DC2\EOT;\STX?\ETX\n\
    \\f\n\
    \\ENQ\EOT\SOH\EOT\NUL\SOH\DC2\ETX;\a\f\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\NUL\DC2\ETX<\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\SOH\DC2\ETX<\EOT\SI\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\NUL\STX\DC2\ETX<\DC2\DC3\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\SOH\DC2\ETX=\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\SOH\DC2\ETX=\EOT\DC2\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\SOH\STX\DC2\ETX=\NAK\SYN\n\
    \\r\n\
    \\ACK\EOT\SOH\EOT\NUL\STX\STX\DC2\ETX>\EOT\NAK\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\SOH\DC2\ETX>\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\SOH\EOT\NUL\STX\STX\STX\DC2\ETX>\DC3\DC4\n\
    \\130\SOH\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETXC\STX\ESC\SUBu Tells when stats were sampled. There should be one sample at the beginning\n\
    \ of the trace and one sample at the end.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETXC\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ACK\DC2\ETXC\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETXC\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETXC\EM\SUB\n\
    \6\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETXF\STX(\SUB) Per-CPU stats (one entry for each CPU).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETXF\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ACK\DC2\ETXF\v\EM\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETXF\SUB#\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETXF&'\n\
    \\252\STX\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETXN\STX,\SUB\238\STX When FtraceConfig.symbolize_ksyms = true, this records the number of\n\
    \ symbols parsed from /proc/kallsyms, whether they have been seen in the\n\
    \ trace or not. It can be used to debug kptr_restrict or security-related\n\
    \ errors.\n\
    \ Note: this will be valid only when phase = END_OF_TRACE. The symbolizer is\n\
    \ initialized. When START_OF_TRACE is emitted it is not ready yet.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\EOT\DC2\ETXN\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETXN\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETXN\DC2'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETXN*+\n\
    \W\n\
    \\EOT\EOT\SOH\STX\ETX\DC2\ETXQ\STX,\SUBJ The memory used by the kernel symbolizer (KernelSymbolMap.size_bytes()).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ENQ\DC2\ETXQ\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\SOH\DC2\ETXQ\DC2'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ETX\ETX\DC2\ETXQ*+\n\
    \\151\SOH\n\
    \\EOT\EOT\SOH\STX\EOT\DC2\ETXU\STX$\SUB\137\SOH Atrace errors (even non-fatal ones) are reported here. A typical example is\n\
    \ one or more atrace categories not available on the device.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\EOT\DC2\ETXU\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ENQ\DC2\ETXU\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\SOH\DC2\ETXU\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\EOT\ETX\DC2\ETXU\"#\n\
    \O\n\
    \\EOT\EOT\SOH\STX\ENQ\DC2\ETXX\STX,\SUBB Ftrace events requested by the config but not present on device.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\EOT\DC2\ETXX\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ENQ\DC2\ETXX\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\SOH\DC2\ETXX\DC2'\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ENQ\ETX\DC2\ETXX*+\n\
    \\208\SOH\n\
    \\EOT\EOT\SOH\STX\ACK\DC2\ETX]\STX+\SUB\194\SOH Ftrace events requested by the config and present on device, but which we\n\
    \ failed to enable due to permissions, or due to a conflicting option\n\
    \ (currently FtraceConfig.disable_generic_events).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\EOT\DC2\ETX]\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ENQ\DC2\ETX]\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\SOH\DC2\ETX]\DC2&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\ACK\ETX\DC2\ETX])*\n\
    \~\n\
    \\EOT\EOT\SOH\STX\a\DC2\ETXa\STX+\SUBq The data source was configured to preserve existing events in the ftrace\n\
    \ buffer before the start of the trace.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\EOT\DC2\ETXa\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ENQ\DC2\ETXa\v\SI\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\SOH\DC2\ETXa\DLE&\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\a\ETX\DC2\ETXa)*"