{- This file was auto-generated from protos/perfetto/trace/android/android_log.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Android.AndroidLog (
        AndroidLogPacket(), AndroidLogPacket'LogEvent(),
        AndroidLogPacket'LogEvent'Arg(),
        AndroidLogPacket'LogEvent'Arg'Value(..),
        _AndroidLogPacket'LogEvent'Arg'IntValue,
        _AndroidLogPacket'LogEvent'Arg'FloatValue,
        _AndroidLogPacket'LogEvent'Arg'StringValue,
        AndroidLogPacket'Stats()
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
import qualified Proto.Protos.Perfetto.Common.AndroidLogConstants
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.events' @:: Lens' AndroidLogPacket [AndroidLogPacket'LogEvent]@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.vec'events' @:: Lens' AndroidLogPacket (Data.Vector.Vector AndroidLogPacket'LogEvent)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.stats' @:: Lens' AndroidLogPacket AndroidLogPacket'Stats@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'stats' @:: Lens' AndroidLogPacket (Prelude.Maybe AndroidLogPacket'Stats)@ -}
data AndroidLogPacket
  = AndroidLogPacket'_constructor {_AndroidLogPacket'events :: !(Data.Vector.Vector AndroidLogPacket'LogEvent),
                                   _AndroidLogPacket'stats :: !(Prelude.Maybe AndroidLogPacket'Stats),
                                   _AndroidLogPacket'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidLogPacket where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndroidLogPacket "events" [AndroidLogPacket'LogEvent] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'events
           (\ x__ y__ -> x__ {_AndroidLogPacket'events = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AndroidLogPacket "vec'events" (Data.Vector.Vector AndroidLogPacket'LogEvent) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'events
           (\ x__ y__ -> x__ {_AndroidLogPacket'events = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket "stats" AndroidLogPacket'Stats where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'stats
           (\ x__ y__ -> x__ {_AndroidLogPacket'stats = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField AndroidLogPacket "maybe'stats" (Prelude.Maybe AndroidLogPacket'Stats) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'stats
           (\ x__ y__ -> x__ {_AndroidLogPacket'stats = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndroidLogPacket where
  messageName _ = Data.Text.pack "perfetto.protos.AndroidLogPacket"
  packedMessageDescriptor _
    = "\n\
      \\DLEAndroidLogPacket\DC2B\n\
      \\ACKevents\CAN\SOH \ETX(\v2*.perfetto.protos.AndroidLogPacket.LogEventR\ACKevents\DC2=\n\
      \\ENQstats\CAN\STX \SOH(\v2'.perfetto.protos.AndroidLogPacket.StatsR\ENQstats\SUB\201\ETX\n\
      \\bLogEvent\DC24\n\
      \\ACKlog_id\CAN\SOH \SOH(\SO2\GS.perfetto.protos.AndroidLogIdR\ENQlogId\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DLE\n\
      \\ETXtid\CAN\ETX \SOH(\ENQR\ETXtid\DC2\DLE\n\
      \\ETXuid\CAN\EOT \SOH(\ENQR\ETXuid\DC2\FS\n\
      \\ttimestamp\CAN\ENQ \SOH(\EOTR\ttimestamp\DC2\DLE\n\
      \\ETXtag\CAN\ACK \SOH(\tR\ETXtag\DC27\n\
      \\EOTprio\CAN\a \SOH(\SO2#.perfetto.protos.AndroidLogPriorityR\EOTprio\DC2\CAN\n\
      \\amessage\CAN\b \SOH(\tR\amessage\DC2B\n\
      \\EOTargs\CAN\t \ETX(\v2..perfetto.protos.AndroidLogPacket.LogEvent.ArgR\EOTargs\SUB\137\SOH\n\
      \\ETXArg\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\GS\n\
      \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValue\DC2!\n\
      \\vfloat_value\CAN\ETX \SOH(\STXH\NULR\n\
      \floatValue\DC2#\n\
      \\fstring_value\CAN\EOT \SOH(\tH\NULR\vstringValueB\a\n\
      \\ENQvalue\SUBd\n\
      \\ENQStats\DC2\ESC\n\
      \\tnum_total\CAN\SOH \SOH(\EOTR\bnumTotal\DC2\GS\n\
      \\n\
      \num_failed\CAN\STX \SOH(\EOTR\tnumFailed\DC2\US\n\
      \\vnum_skipped\CAN\ETX \SOH(\EOTR\n\
      \numSkipped"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        events__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "events"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AndroidLogPacket'LogEvent)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"events")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket
        stats__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stats"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AndroidLogPacket'Stats)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stats")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, events__field_descriptor),
           (Data.ProtoLens.Tag 2, stats__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidLogPacket'_unknownFields
        (\ x__ y__ -> x__ {_AndroidLogPacket'_unknownFields = y__})
  defMessage
    = AndroidLogPacket'_constructor
        {_AndroidLogPacket'events = Data.Vector.Generic.empty,
         _AndroidLogPacket'stats = Prelude.Nothing,
         _AndroidLogPacket'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidLogPacket
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AndroidLogPacket'LogEvent
             -> Data.ProtoLens.Encoding.Bytes.Parser AndroidLogPacket
        loop x mutable'events
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'events)
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
                              (Data.ProtoLens.Field.field @"vec'events") frozen'events x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "events"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'events y)
                                loop x v
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "stats"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stats") y x)
                                  mutable'events
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'events
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'events <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'events)
          "AndroidLogPacket"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'events") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'stats") _x
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
                             Data.ProtoLens.encodeMessage _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AndroidLogPacket where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidLogPacket'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidLogPacket'events x__)
                (Control.DeepSeq.deepseq (_AndroidLogPacket'stats x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.logId' @:: Lens' AndroidLogPacket'LogEvent Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogId@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'logId' @:: Lens' AndroidLogPacket'LogEvent (Prelude.Maybe Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogId)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.pid' @:: Lens' AndroidLogPacket'LogEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'pid' @:: Lens' AndroidLogPacket'LogEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.tid' @:: Lens' AndroidLogPacket'LogEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'tid' @:: Lens' AndroidLogPacket'LogEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.uid' @:: Lens' AndroidLogPacket'LogEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'uid' @:: Lens' AndroidLogPacket'LogEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.timestamp' @:: Lens' AndroidLogPacket'LogEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'timestamp' @:: Lens' AndroidLogPacket'LogEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.tag' @:: Lens' AndroidLogPacket'LogEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'tag' @:: Lens' AndroidLogPacket'LogEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.prio' @:: Lens' AndroidLogPacket'LogEvent Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogPriority@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'prio' @:: Lens' AndroidLogPacket'LogEvent (Prelude.Maybe Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogPriority)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.message' @:: Lens' AndroidLogPacket'LogEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'message' @:: Lens' AndroidLogPacket'LogEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.args' @:: Lens' AndroidLogPacket'LogEvent [AndroidLogPacket'LogEvent'Arg]@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.vec'args' @:: Lens' AndroidLogPacket'LogEvent (Data.Vector.Vector AndroidLogPacket'LogEvent'Arg)@ -}
data AndroidLogPacket'LogEvent
  = AndroidLogPacket'LogEvent'_constructor {_AndroidLogPacket'LogEvent'logId :: !(Prelude.Maybe Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogId),
                                            _AndroidLogPacket'LogEvent'pid :: !(Prelude.Maybe Data.Int.Int32),
                                            _AndroidLogPacket'LogEvent'tid :: !(Prelude.Maybe Data.Int.Int32),
                                            _AndroidLogPacket'LogEvent'uid :: !(Prelude.Maybe Data.Int.Int32),
                                            _AndroidLogPacket'LogEvent'timestamp :: !(Prelude.Maybe Data.Word.Word64),
                                            _AndroidLogPacket'LogEvent'tag :: !(Prelude.Maybe Data.Text.Text),
                                            _AndroidLogPacket'LogEvent'prio :: !(Prelude.Maybe Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogPriority),
                                            _AndroidLogPacket'LogEvent'message :: !(Prelude.Maybe Data.Text.Text),
                                            _AndroidLogPacket'LogEvent'args :: !(Data.Vector.Vector AndroidLogPacket'LogEvent'Arg),
                                            _AndroidLogPacket'LogEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidLogPacket'LogEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "logId" Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogId where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'logId
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'logId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "maybe'logId" (Prelude.Maybe Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogId) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'logId
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'logId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "pid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'pid
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'pid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "maybe'pid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'pid
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'pid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "tid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'tid
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'tid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "maybe'tid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'tid
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'tid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "uid" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'uid
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'uid = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "maybe'uid" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'uid
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'uid = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "timestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'timestamp
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "maybe'timestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'timestamp
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "tag" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'tag
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'tag = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "maybe'tag" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'tag
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'tag = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "prio" Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogPriority where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'prio
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'prio = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "maybe'prio" (Prelude.Maybe Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogPriority) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'prio
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'prio = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "message" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'message
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'message = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "maybe'message" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'message
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'message = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "args" [AndroidLogPacket'LogEvent'Arg] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'args
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'args = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent "vec'args" (Data.Vector.Vector AndroidLogPacket'LogEvent'Arg) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'args
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'args = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndroidLogPacket'LogEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.AndroidLogPacket.LogEvent"
  packedMessageDescriptor _
    = "\n\
      \\bLogEvent\DC24\n\
      \\ACKlog_id\CAN\SOH \SOH(\SO2\GS.perfetto.protos.AndroidLogIdR\ENQlogId\DC2\DLE\n\
      \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DLE\n\
      \\ETXtid\CAN\ETX \SOH(\ENQR\ETXtid\DC2\DLE\n\
      \\ETXuid\CAN\EOT \SOH(\ENQR\ETXuid\DC2\FS\n\
      \\ttimestamp\CAN\ENQ \SOH(\EOTR\ttimestamp\DC2\DLE\n\
      \\ETXtag\CAN\ACK \SOH(\tR\ETXtag\DC27\n\
      \\EOTprio\CAN\a \SOH(\SO2#.perfetto.protos.AndroidLogPriorityR\EOTprio\DC2\CAN\n\
      \\amessage\CAN\b \SOH(\tR\amessage\DC2B\n\
      \\EOTargs\CAN\t \ETX(\v2..perfetto.protos.AndroidLogPacket.LogEvent.ArgR\EOTargs\SUB\137\SOH\n\
      \\ETXArg\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\GS\n\
      \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValue\DC2!\n\
      \\vfloat_value\CAN\ETX \SOH(\STXH\NULR\n\
      \floatValue\DC2#\n\
      \\fstring_value\CAN\EOT \SOH(\tH\NULR\vstringValueB\a\n\
      \\ENQvalue"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        logId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "log_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogId)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'logId")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent
        pid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "pid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'pid")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent
        tid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tid")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent
        uid__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "uid"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'uid")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent
        tag__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "tag"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tag")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent
        prio__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "prio"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Common.AndroidLogConstants.AndroidLogPriority)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'prio")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent
        message__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "message"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'message")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent
        args__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "args"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor AndroidLogPacket'LogEvent'Arg)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"args")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, logId__field_descriptor),
           (Data.ProtoLens.Tag 2, pid__field_descriptor),
           (Data.ProtoLens.Tag 3, tid__field_descriptor),
           (Data.ProtoLens.Tag 4, uid__field_descriptor),
           (Data.ProtoLens.Tag 5, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 6, tag__field_descriptor),
           (Data.ProtoLens.Tag 7, prio__field_descriptor),
           (Data.ProtoLens.Tag 8, message__field_descriptor),
           (Data.ProtoLens.Tag 9, args__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidLogPacket'LogEvent'_unknownFields
        (\ x__ y__
           -> x__ {_AndroidLogPacket'LogEvent'_unknownFields = y__})
  defMessage
    = AndroidLogPacket'LogEvent'_constructor
        {_AndroidLogPacket'LogEvent'logId = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'pid = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'tid = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'uid = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'timestamp = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'tag = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'prio = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'message = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'args = Data.Vector.Generic.empty,
         _AndroidLogPacket'LogEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidLogPacket'LogEvent
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld AndroidLogPacket'LogEvent'Arg
             -> Data.ProtoLens.Encoding.Bytes.Parser AndroidLogPacket'LogEvent
        loop x mutable'args
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'args <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'args)
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
                              (Data.ProtoLens.Field.field @"vec'args") frozen'args x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "log_id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"logId") y x)
                                  mutable'args
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "pid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"pid") y x)
                                  mutable'args
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "tid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tid") y x)
                                  mutable'args
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "uid"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"uid") y x)
                                  mutable'args
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                                  mutable'args
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "tag"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tag") y x)
                                  mutable'args
                        56
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "prio"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"prio") y x)
                                  mutable'args
                        66
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "message"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"message") y x)
                                  mutable'args
                        74
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "args"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'args y)
                                loop x v
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'args
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'args <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'args)
          "LogEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'logId") _x
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
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'uid") _x
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
                                (Data.ProtoLens.Field.field @"maybe'timestamp") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tag") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
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
                            ((Data.Monoid.<>)
                               (case
                                    Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'prio") _x
                                of
                                  Prelude.Nothing -> Data.Monoid.mempty
                                  (Prelude.Just _v)
                                    -> (Data.Monoid.<>)
                                         (Data.ProtoLens.Encoding.Bytes.putVarInt 56)
                                         ((Prelude..)
                                            ((Prelude..)
                                               Data.ProtoLens.Encoding.Bytes.putVarInt
                                               Prelude.fromIntegral)
                                            Prelude.fromEnum _v))
                               ((Data.Monoid.<>)
                                  (case
                                       Lens.Family2.view
                                         (Data.ProtoLens.Field.field @"maybe'message") _x
                                   of
                                     Prelude.Nothing -> Data.Monoid.mempty
                                     (Prelude.Just _v)
                                       -> (Data.Monoid.<>)
                                            (Data.ProtoLens.Encoding.Bytes.putVarInt 66)
                                            ((Prelude..)
                                               (\ bs
                                                  -> (Data.Monoid.<>)
                                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          (Prelude.fromIntegral
                                                             (Data.ByteString.length bs)))
                                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                               Data.Text.Encoding.encodeUtf8 _v))
                                  ((Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                                        (\ _v
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
                                                   Data.ProtoLens.encodeMessage _v))
                                        (Lens.Family2.view
                                           (Data.ProtoLens.Field.field @"vec'args") _x))
                                     (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                        (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))))
instance Control.DeepSeq.NFData AndroidLogPacket'LogEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidLogPacket'LogEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidLogPacket'LogEvent'logId x__)
                (Control.DeepSeq.deepseq
                   (_AndroidLogPacket'LogEvent'pid x__)
                   (Control.DeepSeq.deepseq
                      (_AndroidLogPacket'LogEvent'tid x__)
                      (Control.DeepSeq.deepseq
                         (_AndroidLogPacket'LogEvent'uid x__)
                         (Control.DeepSeq.deepseq
                            (_AndroidLogPacket'LogEvent'timestamp x__)
                            (Control.DeepSeq.deepseq
                               (_AndroidLogPacket'LogEvent'tag x__)
                               (Control.DeepSeq.deepseq
                                  (_AndroidLogPacket'LogEvent'prio x__)
                                  (Control.DeepSeq.deepseq
                                     (_AndroidLogPacket'LogEvent'message x__)
                                     (Control.DeepSeq.deepseq
                                        (_AndroidLogPacket'LogEvent'args x__) ())))))))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.name' @:: Lens' AndroidLogPacket'LogEvent'Arg Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'name' @:: Lens' AndroidLogPacket'LogEvent'Arg (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'value' @:: Lens' AndroidLogPacket'LogEvent'Arg (Prelude.Maybe AndroidLogPacket'LogEvent'Arg'Value)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'intValue' @:: Lens' AndroidLogPacket'LogEvent'Arg (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.intValue' @:: Lens' AndroidLogPacket'LogEvent'Arg Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'floatValue' @:: Lens' AndroidLogPacket'LogEvent'Arg (Prelude.Maybe Prelude.Float)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.floatValue' @:: Lens' AndroidLogPacket'LogEvent'Arg Prelude.Float@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'stringValue' @:: Lens' AndroidLogPacket'LogEvent'Arg (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.stringValue' @:: Lens' AndroidLogPacket'LogEvent'Arg Data.Text.Text@ -}
data AndroidLogPacket'LogEvent'Arg
  = AndroidLogPacket'LogEvent'Arg'_constructor {_AndroidLogPacket'LogEvent'Arg'name :: !(Prelude.Maybe Data.Text.Text),
                                                _AndroidLogPacket'LogEvent'Arg'value :: !(Prelude.Maybe AndroidLogPacket'LogEvent'Arg'Value),
                                                _AndroidLogPacket'LogEvent'Arg'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidLogPacket'LogEvent'Arg where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data AndroidLogPacket'LogEvent'Arg'Value
  = AndroidLogPacket'LogEvent'Arg'IntValue !Data.Int.Int64 |
    AndroidLogPacket'LogEvent'Arg'FloatValue !Prelude.Float |
    AndroidLogPacket'LogEvent'Arg'StringValue !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent'Arg "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'Arg'name
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'Arg'name = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent'Arg "maybe'name" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'Arg'name
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'Arg'name = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent'Arg "maybe'value" (Prelude.Maybe AndroidLogPacket'LogEvent'Arg'Value) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'Arg'value
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'Arg'value = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent'Arg "maybe'intValue" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'Arg'value
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'Arg'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AndroidLogPacket'LogEvent'Arg'IntValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap AndroidLogPacket'LogEvent'Arg'IntValue y__))
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent'Arg "intValue" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'Arg'value
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'Arg'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AndroidLogPacket'LogEvent'Arg'IntValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap AndroidLogPacket'LogEvent'Arg'IntValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent'Arg "maybe'floatValue" (Prelude.Maybe Prelude.Float) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'Arg'value
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'Arg'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AndroidLogPacket'LogEvent'Arg'FloatValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap AndroidLogPacket'LogEvent'Arg'FloatValue y__))
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent'Arg "floatValue" Prelude.Float where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'Arg'value
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'Arg'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AndroidLogPacket'LogEvent'Arg'FloatValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap AndroidLogPacket'LogEvent'Arg'FloatValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent'Arg "maybe'stringValue" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'Arg'value
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'Arg'value = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (AndroidLogPacket'LogEvent'Arg'StringValue x__val))
                     -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__
              -> Prelude.fmap AndroidLogPacket'LogEvent'Arg'StringValue y__))
instance Data.ProtoLens.Field.HasField AndroidLogPacket'LogEvent'Arg "stringValue" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'LogEvent'Arg'value
           (\ x__ y__ -> x__ {_AndroidLogPacket'LogEvent'Arg'value = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (AndroidLogPacket'LogEvent'Arg'StringValue x__val))
                        -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__
                 -> Prelude.fmap AndroidLogPacket'LogEvent'Arg'StringValue y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message AndroidLogPacket'LogEvent'Arg where
  messageName _
    = Data.Text.pack "perfetto.protos.AndroidLogPacket.LogEvent.Arg"
  packedMessageDescriptor _
    = "\n\
      \\ETXArg\DC2\DC2\n\
      \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\GS\n\
      \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValue\DC2!\n\
      \\vfloat_value\CAN\ETX \SOH(\STXH\NULR\n\
      \floatValue\DC2#\n\
      \\fstring_value\CAN\EOT \SOH(\tH\NULR\vstringValueB\a\n\
      \\ENQvalue"
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
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent'Arg
        intValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "int_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'intValue")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent'Arg
        floatValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "float_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.FloatField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Float)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'floatValue")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent'Arg
        stringValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "string_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'stringValue")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'LogEvent'Arg
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, name__field_descriptor),
           (Data.ProtoLens.Tag 2, intValue__field_descriptor),
           (Data.ProtoLens.Tag 3, floatValue__field_descriptor),
           (Data.ProtoLens.Tag 4, stringValue__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidLogPacket'LogEvent'Arg'_unknownFields
        (\ x__ y__
           -> x__ {_AndroidLogPacket'LogEvent'Arg'_unknownFields = y__})
  defMessage
    = AndroidLogPacket'LogEvent'Arg'_constructor
        {_AndroidLogPacket'LogEvent'Arg'name = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'Arg'value = Prelude.Nothing,
         _AndroidLogPacket'LogEvent'Arg'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidLogPacket'LogEvent'Arg
          -> Data.ProtoLens.Encoding.Bytes.Parser AndroidLogPacket'LogEvent'Arg
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
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "int_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"intValue") y x)
                        29
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Data.ProtoLens.Encoding.Bytes.wordToFloat
                                          Data.ProtoLens.Encoding.Bytes.getFixed32)
                                       "float_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"floatValue") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "string_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"stringValue") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Arg"
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'value") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just (AndroidLogPacket'LogEvent'Arg'IntValue v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral v)
                   (Prelude.Just (AndroidLogPacket'LogEvent'Arg'FloatValue v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 29)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putFixed32
                             Data.ProtoLens.Encoding.Bytes.floatToWord v)
                   (Prelude.Just (AndroidLogPacket'LogEvent'Arg'StringValue v))
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                          ((Prelude..)
                             (\ bs
                                -> (Data.Monoid.<>)
                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                        (Prelude.fromIntegral (Data.ByteString.length bs)))
                                     (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Data.Text.Encoding.encodeUtf8 v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData AndroidLogPacket'LogEvent'Arg where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidLogPacket'LogEvent'Arg'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidLogPacket'LogEvent'Arg'name x__)
                (Control.DeepSeq.deepseq
                   (_AndroidLogPacket'LogEvent'Arg'value x__) ()))
instance Control.DeepSeq.NFData AndroidLogPacket'LogEvent'Arg'Value where
  rnf (AndroidLogPacket'LogEvent'Arg'IntValue x__)
    = Control.DeepSeq.rnf x__
  rnf (AndroidLogPacket'LogEvent'Arg'FloatValue x__)
    = Control.DeepSeq.rnf x__
  rnf (AndroidLogPacket'LogEvent'Arg'StringValue x__)
    = Control.DeepSeq.rnf x__
_AndroidLogPacket'LogEvent'Arg'IntValue ::
  Data.ProtoLens.Prism.Prism' AndroidLogPacket'LogEvent'Arg'Value Data.Int.Int64
_AndroidLogPacket'LogEvent'Arg'IntValue
  = Data.ProtoLens.Prism.prism'
      AndroidLogPacket'LogEvent'Arg'IntValue
      (\ p__
         -> case p__ of
              (AndroidLogPacket'LogEvent'Arg'IntValue p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AndroidLogPacket'LogEvent'Arg'FloatValue ::
  Data.ProtoLens.Prism.Prism' AndroidLogPacket'LogEvent'Arg'Value Prelude.Float
_AndroidLogPacket'LogEvent'Arg'FloatValue
  = Data.ProtoLens.Prism.prism'
      AndroidLogPacket'LogEvent'Arg'FloatValue
      (\ p__
         -> case p__ of
              (AndroidLogPacket'LogEvent'Arg'FloatValue p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_AndroidLogPacket'LogEvent'Arg'StringValue ::
  Data.ProtoLens.Prism.Prism' AndroidLogPacket'LogEvent'Arg'Value Data.Text.Text
_AndroidLogPacket'LogEvent'Arg'StringValue
  = Data.ProtoLens.Prism.prism'
      AndroidLogPacket'LogEvent'Arg'StringValue
      (\ p__
         -> case p__ of
              (AndroidLogPacket'LogEvent'Arg'StringValue p__val)
                -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.numTotal' @:: Lens' AndroidLogPacket'Stats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'numTotal' @:: Lens' AndroidLogPacket'Stats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.numFailed' @:: Lens' AndroidLogPacket'Stats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'numFailed' @:: Lens' AndroidLogPacket'Stats (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.numSkipped' @:: Lens' AndroidLogPacket'Stats Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Android.AndroidLog_Fields.maybe'numSkipped' @:: Lens' AndroidLogPacket'Stats (Prelude.Maybe Data.Word.Word64)@ -}
data AndroidLogPacket'Stats
  = AndroidLogPacket'Stats'_constructor {_AndroidLogPacket'Stats'numTotal :: !(Prelude.Maybe Data.Word.Word64),
                                         _AndroidLogPacket'Stats'numFailed :: !(Prelude.Maybe Data.Word.Word64),
                                         _AndroidLogPacket'Stats'numSkipped :: !(Prelude.Maybe Data.Word.Word64),
                                         _AndroidLogPacket'Stats'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show AndroidLogPacket'Stats where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField AndroidLogPacket'Stats "numTotal" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'Stats'numTotal
           (\ x__ y__ -> x__ {_AndroidLogPacket'Stats'numTotal = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'Stats "maybe'numTotal" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'Stats'numTotal
           (\ x__ y__ -> x__ {_AndroidLogPacket'Stats'numTotal = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'Stats "numFailed" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'Stats'numFailed
           (\ x__ y__ -> x__ {_AndroidLogPacket'Stats'numFailed = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'Stats "maybe'numFailed" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'Stats'numFailed
           (\ x__ y__ -> x__ {_AndroidLogPacket'Stats'numFailed = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField AndroidLogPacket'Stats "numSkipped" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'Stats'numSkipped
           (\ x__ y__ -> x__ {_AndroidLogPacket'Stats'numSkipped = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField AndroidLogPacket'Stats "maybe'numSkipped" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _AndroidLogPacket'Stats'numSkipped
           (\ x__ y__ -> x__ {_AndroidLogPacket'Stats'numSkipped = y__}))
        Prelude.id
instance Data.ProtoLens.Message AndroidLogPacket'Stats where
  messageName _
    = Data.Text.pack "perfetto.protos.AndroidLogPacket.Stats"
  packedMessageDescriptor _
    = "\n\
      \\ENQStats\DC2\ESC\n\
      \\tnum_total\CAN\SOH \SOH(\EOTR\bnumTotal\DC2\GS\n\
      \\n\
      \num_failed\CAN\STX \SOH(\EOTR\tnumFailed\DC2\US\n\
      \\vnum_skipped\CAN\ETX \SOH(\EOTR\n\
      \numSkipped"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        numTotal__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_total"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numTotal")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'Stats
        numFailed__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_failed"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numFailed")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'Stats
        numSkipped__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "num_skipped"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'numSkipped")) ::
              Data.ProtoLens.FieldDescriptor AndroidLogPacket'Stats
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, numTotal__field_descriptor),
           (Data.ProtoLens.Tag 2, numFailed__field_descriptor),
           (Data.ProtoLens.Tag 3, numSkipped__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _AndroidLogPacket'Stats'_unknownFields
        (\ x__ y__ -> x__ {_AndroidLogPacket'Stats'_unknownFields = y__})
  defMessage
    = AndroidLogPacket'Stats'_constructor
        {_AndroidLogPacket'Stats'numTotal = Prelude.Nothing,
         _AndroidLogPacket'Stats'numFailed = Prelude.Nothing,
         _AndroidLogPacket'Stats'numSkipped = Prelude.Nothing,
         _AndroidLogPacket'Stats'_unknownFields = []}
  parseMessage
    = let
        loop ::
          AndroidLogPacket'Stats
          -> Data.ProtoLens.Encoding.Bytes.Parser AndroidLogPacket'Stats
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "num_total"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numTotal") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "num_failed"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numFailed") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "num_skipped"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"numSkipped") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Stats"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'numTotal") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'numFailed") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'numSkipped") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData AndroidLogPacket'Stats where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_AndroidLogPacket'Stats'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_AndroidLogPacket'Stats'numTotal x__)
                (Control.DeepSeq.deepseq
                   (_AndroidLogPacket'Stats'numFailed x__)
                   (Control.DeepSeq.deepseq
                      (_AndroidLogPacket'Stats'numSkipped x__) ())))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \/protos/perfetto/trace/android/android_log.proto\DC2\SIperfetto.protos\SUB2protos/perfetto/common/android_log_constants.proto\"\199\ENQ\n\
    \\DLEAndroidLogPacket\DC2B\n\
    \\ACKevents\CAN\SOH \ETX(\v2*.perfetto.protos.AndroidLogPacket.LogEventR\ACKevents\DC2=\n\
    \\ENQstats\CAN\STX \SOH(\v2'.perfetto.protos.AndroidLogPacket.StatsR\ENQstats\SUB\201\ETX\n\
    \\bLogEvent\DC24\n\
    \\ACKlog_id\CAN\SOH \SOH(\SO2\GS.perfetto.protos.AndroidLogIdR\ENQlogId\DC2\DLE\n\
    \\ETXpid\CAN\STX \SOH(\ENQR\ETXpid\DC2\DLE\n\
    \\ETXtid\CAN\ETX \SOH(\ENQR\ETXtid\DC2\DLE\n\
    \\ETXuid\CAN\EOT \SOH(\ENQR\ETXuid\DC2\FS\n\
    \\ttimestamp\CAN\ENQ \SOH(\EOTR\ttimestamp\DC2\DLE\n\
    \\ETXtag\CAN\ACK \SOH(\tR\ETXtag\DC27\n\
    \\EOTprio\CAN\a \SOH(\SO2#.perfetto.protos.AndroidLogPriorityR\EOTprio\DC2\CAN\n\
    \\amessage\CAN\b \SOH(\tR\amessage\DC2B\n\
    \\EOTargs\CAN\t \ETX(\v2..perfetto.protos.AndroidLogPacket.LogEvent.ArgR\EOTargs\SUB\137\SOH\n\
    \\ETXArg\DC2\DC2\n\
    \\EOTname\CAN\SOH \SOH(\tR\EOTname\DC2\GS\n\
    \\tint_value\CAN\STX \SOH(\ETXH\NULR\bintValue\DC2!\n\
    \\vfloat_value\CAN\ETX \SOH(\STXH\NULR\n\
    \floatValue\DC2#\n\
    \\fstring_value\CAN\EOT \SOH(\tH\NULR\vstringValueB\a\n\
    \\ENQvalue\SUBd\n\
    \\ENQStats\DC2\ESC\n\
    \\tnum_total\CAN\SOH \SOH(\EOTR\bnumTotal\DC2\GS\n\
    \\n\
    \num_failed\CAN\STX \SOH(\EOTR\tnumFailed\DC2\US\n\
    \\vnum_skipped\CAN\ETX \SOH(\EOTR\n\
    \numSkippedJ\178\EM\n\
    \\ACK\DC2\EOT\DLE\NULL\SOH\n\
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
    \\STX\ETX\NUL\DC2\ETX\DC3\NUL<\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NULL\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\CAN\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\SYN\STX9\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\SYN\n\
    \\DC2\n\
    \P\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX\CAN\EOT%\SUBA The log buffer (e.g. MAIN, SYSTEM, RADIO) the event comes from.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX\CAN\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ACK\DC2\ETX\CAN\r\EM\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX\CAN\SUB \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX\CAN#$\n\
    \L\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX\ESC\EOT\ESC\SUB= PID (TGID), TID and UID of the task that emitted the event.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX\ESC\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX\ESC\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX\ESC\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX\ESC\EM\SUB\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX\FS\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX\FS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX\FS\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX\FS\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX\FS\EM\SUB\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETX\GS\EOT\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\ETX\GS\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETX\GS\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX\GS\DC3\SYN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX\GS\EM\SUB\n\
    \\228\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETX\"\EOT\"\SUB\212\SOH Timestamp [ns]. The clock source is CLOCK_REALTIME, unlike many other\n\
    \ Perfetto trace events that instead use CLOCK_BOOTTIME. The trace\n\
    \ processor will take care of realigning clocks using the ClockSnapshot(s).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\EOT\DC2\ETX\"\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ENQ\DC2\ETX\"\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETX\"\DC4\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETX\" !\n\
    \\233\SOH\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETX'\EOT\FS\SUB\217\SOH When log_id == LID_EVENTS, |tag| corresponds to the event name defined in\n\
    \ the second column of /system/etc/event-log-tags. For all other events,\n\
    \ |tag| is the app-specified argument passed to __android_log_write().\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\EOT\DC2\ETX'\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ENQ\DC2\ETX'\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETX'\DC4\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETX'\SUB\ESC\n\
    \1\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\ETX*\EOT)\SUB\" Empty when log_id == LID_EVENTS.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\EOT\DC2\ETX*\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ACK\DC2\ETX*\r\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\ETX* $\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\ETX*'(\n\
    \1\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\a\DC2\ETX-\EOT \SUB\" Empty when log_id == LID_EVENTS.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\EOT\DC2\ETX-\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ENQ\DC2\ETX-\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\SOH\DC2\ETX-\DC4\ESC\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\a\ETX\DC2\ETX-\RS\US\n\
    \\SO\n\
    \\ACK\EOT\NUL\ETX\NUL\ETX\NUL\DC2\EOT/\EOT6\ENQ\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\ETX\NUL\SOH\DC2\ETX/\f\SI\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\DC2\ETX0\ACK\US\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX0\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX0\SI\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX0\SYN\SUB\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX0\GS\RS\n\
    \\DLE\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\b\NUL\DC2\EOT1\ACK5\a\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\b\NUL\SOH\DC2\ETX1\f\DC1\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\DC2\ETX2\b\FS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX2\b\r\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX2\SO\ETB\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX2\SUB\ESC\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\STX\DC2\ETX3\b\RS\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX3\b\r\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX3\SO\EM\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX3\FS\GS\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\ETX\NUL\STX\ETX\DC2\ETX4\b \n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETX4\b\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX4\SI\ESC\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX4\RS\US\n\
    \:\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\b\DC2\ETX8\EOT\SUB\SUB+ Only populated when log_id == LID_EVENTS.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\EOT\DC2\ETX8\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\ACK\DC2\ETX8\r\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\SOH\DC2\ETX8\DC1\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\b\ETX\DC2\ETX8\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX;\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX;\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX;\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX;\DC4\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX;\GS\RS\n\
    \\214\SOH\n\
    \\EOT\EOT\NUL\ETX\SOH\DC2\EOT@\STXJ\ETX\SUB\199\SOH Stats are emitted only upon Flush() and are monotonic (i.e. they are\n\
    \ absolute counters since the beginning of the lifetime of the tracing\n\
    \ session and NOT relative to the previous Stats snapshot).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\SOH\SOH\DC2\ETX@\n\
    \\SI\n\
    \\152\SOH\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\NUL\DC2\ETXC\EOT\"\SUB\136\SOH Total number of log events seen, including errors and skipped entries\n\
    \ (num of events stored in the trace = total - failed - skipped).\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\EOT\DC2\ETXC\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ENQ\DC2\ETXC\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\SOH\DC2\ETXC\DC4\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\NUL\ETX\DC2\ETXC !\n\
    \!\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\SOH\DC2\ETXF\EOT#\SUB\DC2 Parser failures.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\EOT\DC2\ETXF\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ENQ\DC2\ETXF\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\SOH\DC2\ETXF\DC4\RS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\SOH\ETX\DC2\ETXF!\"\n\
    \1\n\
    \\ACK\EOT\NUL\ETX\SOH\STX\STX\DC2\ETXI\EOT$\SUB\" Messages skipped due to filters.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\EOT\DC2\ETXI\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ENQ\DC2\ETXI\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\SOH\DC2\ETXI\DC4\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\SOH\STX\STX\ETX\DC2\ETXI\"#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXK\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXK\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXK\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXK\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXK\EM\SUB"