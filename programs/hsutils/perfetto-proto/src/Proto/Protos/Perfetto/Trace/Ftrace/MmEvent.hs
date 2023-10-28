{- This file was auto-generated from protos/perfetto/trace/ftrace/mm_event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.MmEvent (
        MmEventRecordFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.MmEvent_Fields.avgLat' @:: Lens' MmEventRecordFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.MmEvent_Fields.maybe'avgLat' @:: Lens' MmEventRecordFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.MmEvent_Fields.count' @:: Lens' MmEventRecordFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.MmEvent_Fields.maybe'count' @:: Lens' MmEventRecordFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.MmEvent_Fields.maxLat' @:: Lens' MmEventRecordFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.MmEvent_Fields.maybe'maxLat' @:: Lens' MmEventRecordFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.MmEvent_Fields.type'' @:: Lens' MmEventRecordFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.MmEvent_Fields.maybe'type'' @:: Lens' MmEventRecordFtraceEvent (Prelude.Maybe Data.Word.Word32)@ -}
data MmEventRecordFtraceEvent
  = MmEventRecordFtraceEvent'_constructor {_MmEventRecordFtraceEvent'avgLat :: !(Prelude.Maybe Data.Word.Word32),
                                           _MmEventRecordFtraceEvent'count :: !(Prelude.Maybe Data.Word.Word32),
                                           _MmEventRecordFtraceEvent'maxLat :: !(Prelude.Maybe Data.Word.Word32),
                                           _MmEventRecordFtraceEvent'type' :: !(Prelude.Maybe Data.Word.Word32),
                                           _MmEventRecordFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show MmEventRecordFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField MmEventRecordFtraceEvent "avgLat" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmEventRecordFtraceEvent'avgLat
           (\ x__ y__ -> x__ {_MmEventRecordFtraceEvent'avgLat = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmEventRecordFtraceEvent "maybe'avgLat" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmEventRecordFtraceEvent'avgLat
           (\ x__ y__ -> x__ {_MmEventRecordFtraceEvent'avgLat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmEventRecordFtraceEvent "count" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmEventRecordFtraceEvent'count
           (\ x__ y__ -> x__ {_MmEventRecordFtraceEvent'count = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmEventRecordFtraceEvent "maybe'count" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmEventRecordFtraceEvent'count
           (\ x__ y__ -> x__ {_MmEventRecordFtraceEvent'count = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmEventRecordFtraceEvent "maxLat" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmEventRecordFtraceEvent'maxLat
           (\ x__ y__ -> x__ {_MmEventRecordFtraceEvent'maxLat = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmEventRecordFtraceEvent "maybe'maxLat" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmEventRecordFtraceEvent'maxLat
           (\ x__ y__ -> x__ {_MmEventRecordFtraceEvent'maxLat = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField MmEventRecordFtraceEvent "type'" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmEventRecordFtraceEvent'type'
           (\ x__ y__ -> x__ {_MmEventRecordFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField MmEventRecordFtraceEvent "maybe'type'" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _MmEventRecordFtraceEvent'type'
           (\ x__ y__ -> x__ {_MmEventRecordFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message MmEventRecordFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.MmEventRecordFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\CANMmEventRecordFtraceEvent\DC2\ETB\n\
      \\aavg_lat\CAN\SOH \SOH(\rR\ACKavgLat\DC2\DC4\n\
      \\ENQcount\CAN\STX \SOH(\rR\ENQcount\DC2\ETB\n\
      \\amax_lat\CAN\ETX \SOH(\rR\ACKmaxLat\DC2\DC2\n\
      \\EOTtype\CAN\EOT \SOH(\rR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        avgLat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "avg_lat"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'avgLat")) ::
              Data.ProtoLens.FieldDescriptor MmEventRecordFtraceEvent
        count__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "count"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'count")) ::
              Data.ProtoLens.FieldDescriptor MmEventRecordFtraceEvent
        maxLat__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "max_lat"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'maxLat")) ::
              Data.ProtoLens.FieldDescriptor MmEventRecordFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor MmEventRecordFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, avgLat__field_descriptor),
           (Data.ProtoLens.Tag 2, count__field_descriptor),
           (Data.ProtoLens.Tag 3, maxLat__field_descriptor),
           (Data.ProtoLens.Tag 4, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _MmEventRecordFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_MmEventRecordFtraceEvent'_unknownFields = y__})
  defMessage
    = MmEventRecordFtraceEvent'_constructor
        {_MmEventRecordFtraceEvent'avgLat = Prelude.Nothing,
         _MmEventRecordFtraceEvent'count = Prelude.Nothing,
         _MmEventRecordFtraceEvent'maxLat = Prelude.Nothing,
         _MmEventRecordFtraceEvent'type' = Prelude.Nothing,
         _MmEventRecordFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          MmEventRecordFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser MmEventRecordFtraceEvent
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
                                       "avg_lat"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"avgLat") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "count"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"count") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "max_lat"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"maxLat") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "type"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "MmEventRecordFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'avgLat") _x
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
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'maxLat") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData MmEventRecordFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_MmEventRecordFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_MmEventRecordFtraceEvent'avgLat x__)
                (Control.DeepSeq.deepseq
                   (_MmEventRecordFtraceEvent'count x__)
                   (Control.DeepSeq.deepseq
                      (_MmEventRecordFtraceEvent'maxLat x__)
                      (Control.DeepSeq.deepseq
                         (_MmEventRecordFtraceEvent'type' x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \+protos/perfetto/trace/ftrace/mm_event.proto\DC2\SIperfetto.protos\"v\n\
    \\CANMmEventRecordFtraceEvent\DC2\ETB\n\
    \\aavg_lat\CAN\SOH \SOH(\rR\ACKavgLat\DC2\DC4\n\
    \\ENQcount\CAN\STX \SOH(\rR\ENQcount\DC2\ETB\n\
    \\amax_lat\CAN\ETX \SOH(\rR\ACKmaxLat\DC2\DC2\n\
    \\EOTtype\CAN\EOT \SOH(\rR\EOTtypeJ\161\ETX\n\
    \\ACK\DC2\EOT\EOT\NUL\f\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\f\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b \n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC2\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\SUB\ESC\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\FS\GS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v\EM\SUB"