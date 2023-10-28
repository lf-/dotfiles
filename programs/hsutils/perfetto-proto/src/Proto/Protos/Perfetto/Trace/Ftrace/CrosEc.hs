{- This file was auto-generated from protos/perfetto/trace/ftrace/cros_ec.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.CrosEc (
        CrosEcSensorhubDataFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.currentTime' @:: Lens' CrosEcSensorhubDataFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.maybe'currentTime' @:: Lens' CrosEcSensorhubDataFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.currentTimestamp' @:: Lens' CrosEcSensorhubDataFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.maybe'currentTimestamp' @:: Lens' CrosEcSensorhubDataFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.delta' @:: Lens' CrosEcSensorhubDataFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.maybe'delta' @:: Lens' CrosEcSensorhubDataFtraceEvent (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.ecFifoTimestamp' @:: Lens' CrosEcSensorhubDataFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.maybe'ecFifoTimestamp' @:: Lens' CrosEcSensorhubDataFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.ecSensorNum' @:: Lens' CrosEcSensorhubDataFtraceEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.maybe'ecSensorNum' @:: Lens' CrosEcSensorhubDataFtraceEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.fifoTimestamp' @:: Lens' CrosEcSensorhubDataFtraceEvent Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.CrosEc_Fields.maybe'fifoTimestamp' @:: Lens' CrosEcSensorhubDataFtraceEvent (Prelude.Maybe Data.Int.Int64)@ -}
data CrosEcSensorhubDataFtraceEvent
  = CrosEcSensorhubDataFtraceEvent'_constructor {_CrosEcSensorhubDataFtraceEvent'currentTime :: !(Prelude.Maybe Data.Int.Int64),
                                                 _CrosEcSensorhubDataFtraceEvent'currentTimestamp :: !(Prelude.Maybe Data.Int.Int64),
                                                 _CrosEcSensorhubDataFtraceEvent'delta :: !(Prelude.Maybe Data.Int.Int64),
                                                 _CrosEcSensorhubDataFtraceEvent'ecFifoTimestamp :: !(Prelude.Maybe Data.Word.Word32),
                                                 _CrosEcSensorhubDataFtraceEvent'ecSensorNum :: !(Prelude.Maybe Data.Word.Word32),
                                                 _CrosEcSensorhubDataFtraceEvent'fifoTimestamp :: !(Prelude.Maybe Data.Int.Int64),
                                                 _CrosEcSensorhubDataFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CrosEcSensorhubDataFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "currentTime" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'currentTime
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'currentTime = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "maybe'currentTime" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'currentTime
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'currentTime = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "currentTimestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'currentTimestamp
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'currentTimestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "maybe'currentTimestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'currentTimestamp
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'currentTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "delta" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'delta
           (\ x__ y__ -> x__ {_CrosEcSensorhubDataFtraceEvent'delta = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "maybe'delta" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'delta
           (\ x__ y__ -> x__ {_CrosEcSensorhubDataFtraceEvent'delta = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "ecFifoTimestamp" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'ecFifoTimestamp
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'ecFifoTimestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "maybe'ecFifoTimestamp" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'ecFifoTimestamp
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'ecFifoTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "ecSensorNum" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'ecSensorNum
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'ecSensorNum = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "maybe'ecSensorNum" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'ecSensorNum
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'ecSensorNum = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "fifoTimestamp" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'fifoTimestamp
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'fifoTimestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CrosEcSensorhubDataFtraceEvent "maybe'fifoTimestamp" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CrosEcSensorhubDataFtraceEvent'fifoTimestamp
           (\ x__ y__
              -> x__ {_CrosEcSensorhubDataFtraceEvent'fifoTimestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Message CrosEcSensorhubDataFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CrosEcSensorhubDataFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\RSCrosEcSensorhubDataFtraceEvent\DC2!\n\
      \\fcurrent_time\CAN\SOH \SOH(\ETXR\vcurrentTime\DC2+\n\
      \\DC1current_timestamp\CAN\STX \SOH(\ETXR\DLEcurrentTimestamp\DC2\DC4\n\
      \\ENQdelta\CAN\ETX \SOH(\ETXR\ENQdelta\DC2*\n\
      \\DC1ec_fifo_timestamp\CAN\EOT \SOH(\rR\SIecFifoTimestamp\DC2\"\n\
      \\rec_sensor_num\CAN\ENQ \SOH(\rR\vecSensorNum\DC2%\n\
      \\SOfifo_timestamp\CAN\ACK \SOH(\ETXR\rfifoTimestamp"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        currentTime__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_time"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentTime")) ::
              Data.ProtoLens.FieldDescriptor CrosEcSensorhubDataFtraceEvent
        currentTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "current_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'currentTimestamp")) ::
              Data.ProtoLens.FieldDescriptor CrosEcSensorhubDataFtraceEvent
        delta__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "delta"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'delta")) ::
              Data.ProtoLens.FieldDescriptor CrosEcSensorhubDataFtraceEvent
        ecFifoTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ec_fifo_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ecFifoTimestamp")) ::
              Data.ProtoLens.FieldDescriptor CrosEcSensorhubDataFtraceEvent
        ecSensorNum__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "ec_sensor_num"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'ecSensorNum")) ::
              Data.ProtoLens.FieldDescriptor CrosEcSensorhubDataFtraceEvent
        fifoTimestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "fifo_timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'fifoTimestamp")) ::
              Data.ProtoLens.FieldDescriptor CrosEcSensorhubDataFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, currentTime__field_descriptor),
           (Data.ProtoLens.Tag 2, currentTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 3, delta__field_descriptor),
           (Data.ProtoLens.Tag 4, ecFifoTimestamp__field_descriptor),
           (Data.ProtoLens.Tag 5, ecSensorNum__field_descriptor),
           (Data.ProtoLens.Tag 6, fifoTimestamp__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CrosEcSensorhubDataFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_CrosEcSensorhubDataFtraceEvent'_unknownFields = y__})
  defMessage
    = CrosEcSensorhubDataFtraceEvent'_constructor
        {_CrosEcSensorhubDataFtraceEvent'currentTime = Prelude.Nothing,
         _CrosEcSensorhubDataFtraceEvent'currentTimestamp = Prelude.Nothing,
         _CrosEcSensorhubDataFtraceEvent'delta = Prelude.Nothing,
         _CrosEcSensorhubDataFtraceEvent'ecFifoTimestamp = Prelude.Nothing,
         _CrosEcSensorhubDataFtraceEvent'ecSensorNum = Prelude.Nothing,
         _CrosEcSensorhubDataFtraceEvent'fifoTimestamp = Prelude.Nothing,
         _CrosEcSensorhubDataFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CrosEcSensorhubDataFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CrosEcSensorhubDataFtraceEvent
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
                                       "current_time"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"currentTime") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "current_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"currentTimestamp") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "delta"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"delta") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ec_fifo_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"ecFifoTimestamp") y x)
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "ec_sensor_num"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"ecSensorNum") y x)
                        48
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "fifo_timestamp"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"fifoTimestamp") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage)
          "CrosEcSensorhubDataFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view
                    (Data.ProtoLens.Field.field @"maybe'currentTime") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'currentTimestamp") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'delta") _x
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
                             (Data.ProtoLens.Field.field @"maybe'ecFifoTimestamp") _x
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
                                (Data.ProtoLens.Field.field @"maybe'ecSensorNum") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'fifoTimestamp") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData CrosEcSensorhubDataFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CrosEcSensorhubDataFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CrosEcSensorhubDataFtraceEvent'currentTime x__)
                (Control.DeepSeq.deepseq
                   (_CrosEcSensorhubDataFtraceEvent'currentTimestamp x__)
                   (Control.DeepSeq.deepseq
                      (_CrosEcSensorhubDataFtraceEvent'delta x__)
                      (Control.DeepSeq.deepseq
                         (_CrosEcSensorhubDataFtraceEvent'ecFifoTimestamp x__)
                         (Control.DeepSeq.deepseq
                            (_CrosEcSensorhubDataFtraceEvent'ecSensorNum x__)
                            (Control.DeepSeq.deepseq
                               (_CrosEcSensorhubDataFtraceEvent'fifoTimestamp x__) ()))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*protos/perfetto/trace/ftrace/cros_ec.proto\DC2\SIperfetto.protos\"\253\SOH\n\
    \\RSCrosEcSensorhubDataFtraceEvent\DC2!\n\
    \\fcurrent_time\CAN\SOH \SOH(\ETXR\vcurrentTime\DC2+\n\
    \\DC1current_timestamp\CAN\STX \SOH(\ETXR\DLEcurrentTimestamp\DC2\DC4\n\
    \\ENQdelta\CAN\ETX \SOH(\ETXR\ENQdelta\DC2*\n\
    \\DC1ec_fifo_timestamp\CAN\EOT \SOH(\rR\SIecFifoTimestamp\DC2\"\n\
    \\rec_sensor_num\CAN\ENQ \SOH(\rR\vecSensorNum\DC2%\n\
    \\SOfifo_timestamp\CAN\ACK \SOH(\ETXR\rfifoTimestampJ\171\EOT\n\
    \\ACK\DC2\EOT\EOT\NUL\SO\SOH\n\
    \a\n\
    \\SOH\f\DC2\ETX\EOT\NUL\DC22W Autogenerated by:\n\
    \ ../../src/tools/ftrace_proto_gen/ftrace_proto_gen.cc\n\
    \ Do not edit.\n\
    \\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\ENQ\NUL\CAN\n\
    \\n\
    \\n\
    \\STX\EOT\NUL\DC2\EOT\a\NUL\SO\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b !\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX'\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t%&\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX(\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v&'\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX\f\STX$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX\f\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETX\f\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX\f\DC2\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX\f\"#\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETX\r\STX$\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETX\r\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETX\r\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETX\r\DC1\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETX\r\"#"