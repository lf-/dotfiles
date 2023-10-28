{- This file was auto-generated from protos/perfetto/trace/ftrace/thermal.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.Ftrace.Thermal (
        CdevUpdateFtraceEvent(), ThermalTemperatureFtraceEvent()
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
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.target' @:: Lens' CdevUpdateFtraceEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.maybe'target' @:: Lens' CdevUpdateFtraceEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.type'' @:: Lens' CdevUpdateFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.maybe'type'' @:: Lens' CdevUpdateFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data CdevUpdateFtraceEvent
  = CdevUpdateFtraceEvent'_constructor {_CdevUpdateFtraceEvent'target :: !(Prelude.Maybe Data.Word.Word64),
                                        _CdevUpdateFtraceEvent'type' :: !(Prelude.Maybe Data.Text.Text),
                                        _CdevUpdateFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CdevUpdateFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CdevUpdateFtraceEvent "target" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CdevUpdateFtraceEvent'target
           (\ x__ y__ -> x__ {_CdevUpdateFtraceEvent'target = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CdevUpdateFtraceEvent "maybe'target" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CdevUpdateFtraceEvent'target
           (\ x__ y__ -> x__ {_CdevUpdateFtraceEvent'target = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CdevUpdateFtraceEvent "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CdevUpdateFtraceEvent'type'
           (\ x__ y__ -> x__ {_CdevUpdateFtraceEvent'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CdevUpdateFtraceEvent "maybe'type'" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CdevUpdateFtraceEvent'type'
           (\ x__ y__ -> x__ {_CdevUpdateFtraceEvent'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Message CdevUpdateFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.CdevUpdateFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\NAKCdevUpdateFtraceEvent\DC2\SYN\n\
      \\ACKtarget\CAN\SOH \SOH(\EOTR\ACKtarget\DC2\DC2\n\
      \\EOTtype\CAN\STX \SOH(\tR\EOTtype"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        target__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "target"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'target")) ::
              Data.ProtoLens.FieldDescriptor CdevUpdateFtraceEvent
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor CdevUpdateFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, target__field_descriptor),
           (Data.ProtoLens.Tag 2, type'__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CdevUpdateFtraceEvent'_unknownFields
        (\ x__ y__ -> x__ {_CdevUpdateFtraceEvent'_unknownFields = y__})
  defMessage
    = CdevUpdateFtraceEvent'_constructor
        {_CdevUpdateFtraceEvent'target = Prelude.Nothing,
         _CdevUpdateFtraceEvent'type' = Prelude.Nothing,
         _CdevUpdateFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CdevUpdateFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser CdevUpdateFtraceEvent
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
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "target"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"target") y x)
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
          (do loop Data.ProtoLens.defMessage) "CdevUpdateFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'target") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'type'") _x
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
instance Control.DeepSeq.NFData CdevUpdateFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CdevUpdateFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CdevUpdateFtraceEvent'target x__)
                (Control.DeepSeq.deepseq (_CdevUpdateFtraceEvent'type' x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.id' @:: Lens' ThermalTemperatureFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.maybe'id' @:: Lens' ThermalTemperatureFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.temp' @:: Lens' ThermalTemperatureFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.maybe'temp' @:: Lens' ThermalTemperatureFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.tempPrev' @:: Lens' ThermalTemperatureFtraceEvent Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.maybe'tempPrev' @:: Lens' ThermalTemperatureFtraceEvent (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.thermalZone' @:: Lens' ThermalTemperatureFtraceEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.Ftrace.Thermal_Fields.maybe'thermalZone' @:: Lens' ThermalTemperatureFtraceEvent (Prelude.Maybe Data.Text.Text)@ -}
data ThermalTemperatureFtraceEvent
  = ThermalTemperatureFtraceEvent'_constructor {_ThermalTemperatureFtraceEvent'id :: !(Prelude.Maybe Data.Int.Int32),
                                                _ThermalTemperatureFtraceEvent'temp :: !(Prelude.Maybe Data.Int.Int32),
                                                _ThermalTemperatureFtraceEvent'tempPrev :: !(Prelude.Maybe Data.Int.Int32),
                                                _ThermalTemperatureFtraceEvent'thermalZone :: !(Prelude.Maybe Data.Text.Text),
                                                _ThermalTemperatureFtraceEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ThermalTemperatureFtraceEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ThermalTemperatureFtraceEvent "id" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThermalTemperatureFtraceEvent'id
           (\ x__ y__ -> x__ {_ThermalTemperatureFtraceEvent'id = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThermalTemperatureFtraceEvent "maybe'id" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThermalTemperatureFtraceEvent'id
           (\ x__ y__ -> x__ {_ThermalTemperatureFtraceEvent'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThermalTemperatureFtraceEvent "temp" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThermalTemperatureFtraceEvent'temp
           (\ x__ y__ -> x__ {_ThermalTemperatureFtraceEvent'temp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThermalTemperatureFtraceEvent "maybe'temp" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThermalTemperatureFtraceEvent'temp
           (\ x__ y__ -> x__ {_ThermalTemperatureFtraceEvent'temp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThermalTemperatureFtraceEvent "tempPrev" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThermalTemperatureFtraceEvent'tempPrev
           (\ x__ y__ -> x__ {_ThermalTemperatureFtraceEvent'tempPrev = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThermalTemperatureFtraceEvent "maybe'tempPrev" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThermalTemperatureFtraceEvent'tempPrev
           (\ x__ y__ -> x__ {_ThermalTemperatureFtraceEvent'tempPrev = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ThermalTemperatureFtraceEvent "thermalZone" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThermalTemperatureFtraceEvent'thermalZone
           (\ x__ y__
              -> x__ {_ThermalTemperatureFtraceEvent'thermalZone = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ThermalTemperatureFtraceEvent "maybe'thermalZone" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ThermalTemperatureFtraceEvent'thermalZone
           (\ x__ y__
              -> x__ {_ThermalTemperatureFtraceEvent'thermalZone = y__}))
        Prelude.id
instance Data.ProtoLens.Message ThermalTemperatureFtraceEvent where
  messageName _
    = Data.Text.pack "perfetto.protos.ThermalTemperatureFtraceEvent"
  packedMessageDescriptor _
    = "\n\
      \\GSThermalTemperatureFtraceEvent\DC2\SO\n\
      \\STXid\CAN\SOH \SOH(\ENQR\STXid\DC2\DC2\n\
      \\EOTtemp\CAN\STX \SOH(\ENQR\EOTtemp\DC2\ESC\n\
      \\ttemp_prev\CAN\ETX \SOH(\ENQR\btempPrev\DC2!\n\
      \\fthermal_zone\CAN\EOT \SOH(\tR\vthermalZone"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'id")) ::
              Data.ProtoLens.FieldDescriptor ThermalTemperatureFtraceEvent
        temp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "temp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'temp")) ::
              Data.ProtoLens.FieldDescriptor ThermalTemperatureFtraceEvent
        tempPrev__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "temp_prev"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'tempPrev")) ::
              Data.ProtoLens.FieldDescriptor ThermalTemperatureFtraceEvent
        thermalZone__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "thermal_zone"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'thermalZone")) ::
              Data.ProtoLens.FieldDescriptor ThermalTemperatureFtraceEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, id__field_descriptor),
           (Data.ProtoLens.Tag 2, temp__field_descriptor),
           (Data.ProtoLens.Tag 3, tempPrev__field_descriptor),
           (Data.ProtoLens.Tag 4, thermalZone__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ThermalTemperatureFtraceEvent'_unknownFields
        (\ x__ y__
           -> x__ {_ThermalTemperatureFtraceEvent'_unknownFields = y__})
  defMessage
    = ThermalTemperatureFtraceEvent'_constructor
        {_ThermalTemperatureFtraceEvent'id = Prelude.Nothing,
         _ThermalTemperatureFtraceEvent'temp = Prelude.Nothing,
         _ThermalTemperatureFtraceEvent'tempPrev = Prelude.Nothing,
         _ThermalTemperatureFtraceEvent'thermalZone = Prelude.Nothing,
         _ThermalTemperatureFtraceEvent'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ThermalTemperatureFtraceEvent
          -> Data.ProtoLens.Encoding.Bytes.Parser ThermalTemperatureFtraceEvent
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
                                       "id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "temp"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"temp") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "temp_prev"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"tempPrev") y x)
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
                                       "thermal_zone"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"thermalZone") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "ThermalTemperatureFtraceEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'id") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                       ((Prelude..)
                          Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'temp") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'tempPrev") _x
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
                             (Data.ProtoLens.Field.field @"maybe'thermalZone") _x
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
                                   Data.Text.Encoding.encodeUtf8 _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ThermalTemperatureFtraceEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ThermalTemperatureFtraceEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ThermalTemperatureFtraceEvent'id x__)
                (Control.DeepSeq.deepseq
                   (_ThermalTemperatureFtraceEvent'temp x__)
                   (Control.DeepSeq.deepseq
                      (_ThermalTemperatureFtraceEvent'tempPrev x__)
                      (Control.DeepSeq.deepseq
                         (_ThermalTemperatureFtraceEvent'thermalZone x__) ()))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*protos/perfetto/trace/ftrace/thermal.proto\DC2\SIperfetto.protos\"\131\SOH\n\
    \\GSThermalTemperatureFtraceEvent\DC2\SO\n\
    \\STXid\CAN\SOH \SOH(\ENQR\STXid\DC2\DC2\n\
    \\EOTtemp\CAN\STX \SOH(\ENQR\EOTtemp\DC2\ESC\n\
    \\ttemp_prev\CAN\ETX \SOH(\ENQR\btempPrev\DC2!\n\
    \\fthermal_zone\CAN\EOT \SOH(\tR\vthermalZone\"C\n\
    \\NAKCdevUpdateFtraceEvent\DC2\SYN\n\
    \\ACKtarget\CAN\SOH \SOH(\EOTR\ACKtarget\DC2\DC2\n\
    \\EOTtype\CAN\STX \SOH(\tR\EOTtypeJ\195\EOT\n\
    \\ACK\DC2\EOT\EOT\NUL\DLE\SOH\n\
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
    \\ETX\EOT\NUL\SOH\DC2\ETX\a\b%\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\b\STX\CAN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\b\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\b\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\b\DC1\DC3\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\b\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\t\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\t\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\t\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\t\DC1\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\t\CAN\EM\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\n\
    \\STX\US\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\n\
    \\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\n\
    \\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\n\
    \\DC1\SUB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\n\
    \\GS\RS\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\v\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\v\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\v\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\v\DC2\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\v!\"\n\
    \\n\
    \\n\
    \\STX\EOT\SOH\DC2\EOT\r\NUL\DLE\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\r\b\GS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\SO\STX\GS\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\EOT\DC2\ETX\SO\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\SO\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\SO\DC2\CAN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\SO\ESC\FS\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\SI\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\EOT\DC2\ETX\SI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\SI\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\SI\DC2\SYN\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\SI\EM\SUB"