{- This file was auto-generated from protos/perfetto/trace/track_event/counter_descriptor.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor (
        CounterDescriptor(), CounterDescriptor'BuiltinCounterType(..),
        CounterDescriptor'BuiltinCounterType(), CounterDescriptor'Unit(..),
        CounterDescriptor'Unit()
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
     
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.type'' @:: Lens' CounterDescriptor CounterDescriptor'BuiltinCounterType@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.maybe'type'' @:: Lens' CounterDescriptor (Prelude.Maybe CounterDescriptor'BuiltinCounterType)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.categories' @:: Lens' CounterDescriptor [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.vec'categories' @:: Lens' CounterDescriptor (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.unit' @:: Lens' CounterDescriptor CounterDescriptor'Unit@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.maybe'unit' @:: Lens' CounterDescriptor (Prelude.Maybe CounterDescriptor'Unit)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.unitName' @:: Lens' CounterDescriptor Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.maybe'unitName' @:: Lens' CounterDescriptor (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.unitMultiplier' @:: Lens' CounterDescriptor Data.Int.Int64@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.maybe'unitMultiplier' @:: Lens' CounterDescriptor (Prelude.Maybe Data.Int.Int64)@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.isIncremental' @:: Lens' CounterDescriptor Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TrackEvent.CounterDescriptor_Fields.maybe'isIncremental' @:: Lens' CounterDescriptor (Prelude.Maybe Prelude.Bool)@ -}
data CounterDescriptor
  = CounterDescriptor'_constructor {_CounterDescriptor'type' :: !(Prelude.Maybe CounterDescriptor'BuiltinCounterType),
                                    _CounterDescriptor'categories :: !(Data.Vector.Vector Data.Text.Text),
                                    _CounterDescriptor'unit :: !(Prelude.Maybe CounterDescriptor'Unit),
                                    _CounterDescriptor'unitName :: !(Prelude.Maybe Data.Text.Text),
                                    _CounterDescriptor'unitMultiplier :: !(Prelude.Maybe Data.Int.Int64),
                                    _CounterDescriptor'isIncremental :: !(Prelude.Maybe Prelude.Bool),
                                    _CounterDescriptor'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show CounterDescriptor where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField CounterDescriptor "type'" CounterDescriptor'BuiltinCounterType where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'type'
           (\ x__ y__ -> x__ {_CounterDescriptor'type' = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CounterDescriptor "maybe'type'" (Prelude.Maybe CounterDescriptor'BuiltinCounterType) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'type'
           (\ x__ y__ -> x__ {_CounterDescriptor'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CounterDescriptor "categories" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'categories
           (\ x__ y__ -> x__ {_CounterDescriptor'categories = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField CounterDescriptor "vec'categories" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'categories
           (\ x__ y__ -> x__ {_CounterDescriptor'categories = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CounterDescriptor "unit" CounterDescriptor'Unit where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'unit
           (\ x__ y__ -> x__ {_CounterDescriptor'unit = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CounterDescriptor "maybe'unit" (Prelude.Maybe CounterDescriptor'Unit) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'unit
           (\ x__ y__ -> x__ {_CounterDescriptor'unit = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CounterDescriptor "unitName" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'unitName
           (\ x__ y__ -> x__ {_CounterDescriptor'unitName = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CounterDescriptor "maybe'unitName" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'unitName
           (\ x__ y__ -> x__ {_CounterDescriptor'unitName = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CounterDescriptor "unitMultiplier" Data.Int.Int64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'unitMultiplier
           (\ x__ y__ -> x__ {_CounterDescriptor'unitMultiplier = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CounterDescriptor "maybe'unitMultiplier" (Prelude.Maybe Data.Int.Int64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'unitMultiplier
           (\ x__ y__ -> x__ {_CounterDescriptor'unitMultiplier = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField CounterDescriptor "isIncremental" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'isIncremental
           (\ x__ y__ -> x__ {_CounterDescriptor'isIncremental = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField CounterDescriptor "maybe'isIncremental" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _CounterDescriptor'isIncremental
           (\ x__ y__ -> x__ {_CounterDescriptor'isIncremental = y__}))
        Prelude.id
instance Data.ProtoLens.Message CounterDescriptor where
  messageName _ = Data.Text.pack "perfetto.protos.CounterDescriptor"
  packedMessageDescriptor _
    = "\n\
      \\DC1CounterDescriptor\DC2I\n\
      \\EOTtype\CAN\SOH \SOH(\SO25.perfetto.protos.CounterDescriptor.BuiltinCounterTypeR\EOTtype\DC2\RS\n\
      \\n\
      \categories\CAN\STX \ETX(\tR\n\
      \categories\DC2;\n\
      \\EOTunit\CAN\ETX \SOH(\SO2'.perfetto.protos.CounterDescriptor.UnitR\EOTunit\DC2\ESC\n\
      \\tunit_name\CAN\ACK \SOH(\tR\bunitName\DC2'\n\
      \\SIunit_multiplier\CAN\EOT \SOH(\ETXR\SOunitMultiplier\DC2%\n\
      \\SOis_incremental\CAN\ENQ \SOH(\bR\risIncremental\"o\n\
      \\DC2BuiltinCounterType\DC2\ETB\n\
      \\DC3COUNTER_UNSPECIFIED\DLE\NUL\DC2\SUB\n\
      \\SYNCOUNTER_THREAD_TIME_NS\DLE\SOH\DC2$\n\
      \ COUNTER_THREAD_INSTRUCTION_COUNT\DLE\STX\"S\n\
      \\EOTUnit\DC2\DC4\n\
      \\DLEUNIT_UNSPECIFIED\DLE\NUL\DC2\DLE\n\
      \\fUNIT_TIME_NS\DLE\SOH\DC2\SO\n\
      \\n\
      \UNIT_COUNT\DLE\STX\DC2\DC3\n\
      \\SIUNIT_SIZE_BYTES\DLE\ETX"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor CounterDescriptor'BuiltinCounterType)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'type'")) ::
              Data.ProtoLens.FieldDescriptor CounterDescriptor
        categories__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "categories"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"categories")) ::
              Data.ProtoLens.FieldDescriptor CounterDescriptor
        unit__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unit"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor CounterDescriptor'Unit)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unit")) ::
              Data.ProtoLens.FieldDescriptor CounterDescriptor
        unitName__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unit_name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unitName")) ::
              Data.ProtoLens.FieldDescriptor CounterDescriptor
        unitMultiplier__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unit_multiplier"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unitMultiplier")) ::
              Data.ProtoLens.FieldDescriptor CounterDescriptor
        isIncremental__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_incremental"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isIncremental")) ::
              Data.ProtoLens.FieldDescriptor CounterDescriptor
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, type'__field_descriptor),
           (Data.ProtoLens.Tag 2, categories__field_descriptor),
           (Data.ProtoLens.Tag 3, unit__field_descriptor),
           (Data.ProtoLens.Tag 6, unitName__field_descriptor),
           (Data.ProtoLens.Tag 4, unitMultiplier__field_descriptor),
           (Data.ProtoLens.Tag 5, isIncremental__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _CounterDescriptor'_unknownFields
        (\ x__ y__ -> x__ {_CounterDescriptor'_unknownFields = y__})
  defMessage
    = CounterDescriptor'_constructor
        {_CounterDescriptor'type' = Prelude.Nothing,
         _CounterDescriptor'categories = Data.Vector.Generic.empty,
         _CounterDescriptor'unit = Prelude.Nothing,
         _CounterDescriptor'unitName = Prelude.Nothing,
         _CounterDescriptor'unitMultiplier = Prelude.Nothing,
         _CounterDescriptor'isIncremental = Prelude.Nothing,
         _CounterDescriptor'_unknownFields = []}
  parseMessage
    = let
        loop ::
          CounterDescriptor
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
             -> Data.ProtoLens.Encoding.Bytes.Parser CounterDescriptor
        loop x mutable'categories
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'categories <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                             (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                mutable'categories)
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
                              (Data.ProtoLens.Field.field @"vec'categories") frozen'categories
                              x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                                  mutable'categories
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "categories"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'categories y)
                                loop x v
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "unit"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unit") y x)
                                  mutable'categories
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
                                       "unit_name"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"unitName") y x)
                                  mutable'categories
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "unit_multiplier"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unitMultiplier") y x)
                                  mutable'categories
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_incremental"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"isIncremental") y x)
                                  mutable'categories
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'categories
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'categories <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'categories)
          "CounterDescriptor"
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
                              Data.Text.Encoding.encodeUtf8 _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'categories") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'unit") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             ((Prelude..)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                                Prelude.fromEnum _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'unitName") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
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
                                (Data.ProtoLens.Field.field @"maybe'unitMultiplier") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just _v)
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      _v))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'isIncremental") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (\ b -> if b then 1 else 0) _v))
                            (Data.ProtoLens.Encoding.Wire.buildFieldSet
                               (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))))
instance Control.DeepSeq.NFData CounterDescriptor where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_CounterDescriptor'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_CounterDescriptor'type' x__)
                (Control.DeepSeq.deepseq
                   (_CounterDescriptor'categories x__)
                   (Control.DeepSeq.deepseq
                      (_CounterDescriptor'unit x__)
                      (Control.DeepSeq.deepseq
                         (_CounterDescriptor'unitName x__)
                         (Control.DeepSeq.deepseq
                            (_CounterDescriptor'unitMultiplier x__)
                            (Control.DeepSeq.deepseq
                               (_CounterDescriptor'isIncremental x__) ()))))))
data CounterDescriptor'BuiltinCounterType
  = CounterDescriptor'COUNTER_UNSPECIFIED |
    CounterDescriptor'COUNTER_THREAD_TIME_NS |
    CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CounterDescriptor'BuiltinCounterType where
  maybeToEnum 0 = Prelude.Just CounterDescriptor'COUNTER_UNSPECIFIED
  maybeToEnum 1
    = Prelude.Just CounterDescriptor'COUNTER_THREAD_TIME_NS
  maybeToEnum 2
    = Prelude.Just CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT
  maybeToEnum _ = Prelude.Nothing
  showEnum CounterDescriptor'COUNTER_UNSPECIFIED
    = "COUNTER_UNSPECIFIED"
  showEnum CounterDescriptor'COUNTER_THREAD_TIME_NS
    = "COUNTER_THREAD_TIME_NS"
  showEnum CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT
    = "COUNTER_THREAD_INSTRUCTION_COUNT"
  readEnum k
    | (Prelude.==) k "COUNTER_UNSPECIFIED"
    = Prelude.Just CounterDescriptor'COUNTER_UNSPECIFIED
    | (Prelude.==) k "COUNTER_THREAD_TIME_NS"
    = Prelude.Just CounterDescriptor'COUNTER_THREAD_TIME_NS
    | (Prelude.==) k "COUNTER_THREAD_INSTRUCTION_COUNT"
    = Prelude.Just CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CounterDescriptor'BuiltinCounterType where
  minBound = CounterDescriptor'COUNTER_UNSPECIFIED
  maxBound = CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT
instance Prelude.Enum CounterDescriptor'BuiltinCounterType where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BuiltinCounterType: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum CounterDescriptor'COUNTER_UNSPECIFIED = 0
  fromEnum CounterDescriptor'COUNTER_THREAD_TIME_NS = 1
  fromEnum CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT = 2
  succ CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT
    = Prelude.error
        "CounterDescriptor'BuiltinCounterType.succ: bad argument CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT. This value would be out of bounds."
  succ CounterDescriptor'COUNTER_UNSPECIFIED
    = CounterDescriptor'COUNTER_THREAD_TIME_NS
  succ CounterDescriptor'COUNTER_THREAD_TIME_NS
    = CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT
  pred CounterDescriptor'COUNTER_UNSPECIFIED
    = Prelude.error
        "CounterDescriptor'BuiltinCounterType.pred: bad argument CounterDescriptor'COUNTER_UNSPECIFIED. This value would be out of bounds."
  pred CounterDescriptor'COUNTER_THREAD_TIME_NS
    = CounterDescriptor'COUNTER_UNSPECIFIED
  pred CounterDescriptor'COUNTER_THREAD_INSTRUCTION_COUNT
    = CounterDescriptor'COUNTER_THREAD_TIME_NS
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CounterDescriptor'BuiltinCounterType where
  fieldDefault = CounterDescriptor'COUNTER_UNSPECIFIED
instance Control.DeepSeq.NFData CounterDescriptor'BuiltinCounterType where
  rnf x__ = Prelude.seq x__ ()
data CounterDescriptor'Unit
  = CounterDescriptor'UNIT_UNSPECIFIED |
    CounterDescriptor'UNIT_TIME_NS |
    CounterDescriptor'UNIT_COUNT |
    CounterDescriptor'UNIT_SIZE_BYTES
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum CounterDescriptor'Unit where
  maybeToEnum 0 = Prelude.Just CounterDescriptor'UNIT_UNSPECIFIED
  maybeToEnum 1 = Prelude.Just CounterDescriptor'UNIT_TIME_NS
  maybeToEnum 2 = Prelude.Just CounterDescriptor'UNIT_COUNT
  maybeToEnum 3 = Prelude.Just CounterDescriptor'UNIT_SIZE_BYTES
  maybeToEnum _ = Prelude.Nothing
  showEnum CounterDescriptor'UNIT_UNSPECIFIED = "UNIT_UNSPECIFIED"
  showEnum CounterDescriptor'UNIT_TIME_NS = "UNIT_TIME_NS"
  showEnum CounterDescriptor'UNIT_COUNT = "UNIT_COUNT"
  showEnum CounterDescriptor'UNIT_SIZE_BYTES = "UNIT_SIZE_BYTES"
  readEnum k
    | (Prelude.==) k "UNIT_UNSPECIFIED"
    = Prelude.Just CounterDescriptor'UNIT_UNSPECIFIED
    | (Prelude.==) k "UNIT_TIME_NS"
    = Prelude.Just CounterDescriptor'UNIT_TIME_NS
    | (Prelude.==) k "UNIT_COUNT"
    = Prelude.Just CounterDescriptor'UNIT_COUNT
    | (Prelude.==) k "UNIT_SIZE_BYTES"
    = Prelude.Just CounterDescriptor'UNIT_SIZE_BYTES
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded CounterDescriptor'Unit where
  minBound = CounterDescriptor'UNIT_UNSPECIFIED
  maxBound = CounterDescriptor'UNIT_SIZE_BYTES
instance Prelude.Enum CounterDescriptor'Unit where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum Unit: " (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum CounterDescriptor'UNIT_UNSPECIFIED = 0
  fromEnum CounterDescriptor'UNIT_TIME_NS = 1
  fromEnum CounterDescriptor'UNIT_COUNT = 2
  fromEnum CounterDescriptor'UNIT_SIZE_BYTES = 3
  succ CounterDescriptor'UNIT_SIZE_BYTES
    = Prelude.error
        "CounterDescriptor'Unit.succ: bad argument CounterDescriptor'UNIT_SIZE_BYTES. This value would be out of bounds."
  succ CounterDescriptor'UNIT_UNSPECIFIED
    = CounterDescriptor'UNIT_TIME_NS
  succ CounterDescriptor'UNIT_TIME_NS = CounterDescriptor'UNIT_COUNT
  succ CounterDescriptor'UNIT_COUNT
    = CounterDescriptor'UNIT_SIZE_BYTES
  pred CounterDescriptor'UNIT_UNSPECIFIED
    = Prelude.error
        "CounterDescriptor'Unit.pred: bad argument CounterDescriptor'UNIT_UNSPECIFIED. This value would be out of bounds."
  pred CounterDescriptor'UNIT_TIME_NS
    = CounterDescriptor'UNIT_UNSPECIFIED
  pred CounterDescriptor'UNIT_COUNT = CounterDescriptor'UNIT_TIME_NS
  pred CounterDescriptor'UNIT_SIZE_BYTES
    = CounterDescriptor'UNIT_COUNT
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault CounterDescriptor'Unit where
  fieldDefault = CounterDescriptor'UNIT_UNSPECIFIED
instance Control.DeepSeq.NFData CounterDescriptor'Unit where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \:protos/perfetto/trace/track_event/counter_descriptor.proto\DC2\SIperfetto.protos\"\238\ETX\n\
    \\DC1CounterDescriptor\DC2I\n\
    \\EOTtype\CAN\SOH \SOH(\SO25.perfetto.protos.CounterDescriptor.BuiltinCounterTypeR\EOTtype\DC2\RS\n\
    \\n\
    \categories\CAN\STX \ETX(\tR\n\
    \categories\DC2;\n\
    \\EOTunit\CAN\ETX \SOH(\SO2'.perfetto.protos.CounterDescriptor.UnitR\EOTunit\DC2\ESC\n\
    \\tunit_name\CAN\ACK \SOH(\tR\bunitName\DC2'\n\
    \\SIunit_multiplier\CAN\EOT \SOH(\ETXR\SOunitMultiplier\DC2%\n\
    \\SOis_incremental\CAN\ENQ \SOH(\bR\risIncremental\"o\n\
    \\DC2BuiltinCounterType\DC2\ETB\n\
    \\DC3COUNTER_UNSPECIFIED\DLE\NUL\DC2\SUB\n\
    \\SYNCOUNTER_THREAD_TIME_NS\DLE\SOH\DC2$\n\
    \ COUNTER_THREAD_INSTRUCTION_COUNT\DLE\STX\"S\n\
    \\EOTUnit\DC2\DC4\n\
    \\DLEUNIT_UNSPECIFIED\DLE\NUL\DC2\DLE\n\
    \\fUNIT_TIME_NS\DLE\SOH\DC2\SO\n\
    \\n\
    \UNIT_COUNT\DLE\STX\DC2\DC3\n\
    \\SIUNIT_SIZE_BYTES\DLE\ETXJ\199\RS\n\
    \\ACK\DC2\EOT\DLE\NUL^\SOH\n\
    \\215\EOT\n\
    \\SOH\f\DC2\ETX\DLE\NUL\DC22\204\EOT\n\
    \ Copyright (C) 2020 The Android Open Source Project\n\
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
    \\187\ENQ\n\
    \\STX\EOT\NUL\DC2\EOT\"\NUL^\SOH\SUB\174\ENQ Defines properties of a counter track, e.g. for built-in counters (thread\n\
    \ time, instruction count, ..) or user-specified counters (e.g. memory usage of\n\
    \ a specific app component).\n\
    \\n\
    \ Counter tracks only support TYPE_COUNTER track events, which specify new\n\
    \ values for the counter. For counters that require per-slice values, counter\n\
    \ values can instead be provided in a more efficient encoding via TrackEvent's\n\
    \ |extra_counter_track_uuids| and |extra_counter_values| fields. However,\n\
    \ slice-type events cannot be emitted onto a counter track.\n\
    \\n\
    \ Values for counters that are only emitted on a single packet sequence can\n\
    \ optionally be delta-encoded, see |is_incremental|.\n\
    \\n\
    \ Next id: 7.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\"\b\EM\n\
    \\233\SOH\n\
    \\EOT\EOT\NUL\EOT\NUL\DC2\EOT&\STX1\ETX\SUB\218\SOH Built-in counters, usually with special meaning in the client library,\n\
    \ trace processor, legacy JSON format, or UI. Trace processor will infer a\n\
    \ track name from the enum value if none is provided in TrackDescriptor.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\NUL\SOH\DC2\ETX&\a\EM\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\NUL\DC2\ETX'\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX'\EOT\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX'\SUB\ESC\n\
    \\166\SOH\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\SOH\DC2\ETX-\EOT\US\SUB\ETB implies UNIT_TIME_NS.\n\
    \2~ Thread-scoped counters. The thread's track should be specified via\n\
    \ |parent_uuid| in the TrackDescriptor for such a counter.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX-\EOT\SUB\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX-\GS\RS\n\
    \$\n\
    \\ACK\EOT\NUL\EOT\NUL\STX\STX\DC2\ETX0\EOT)\SUB\NAK implies UNIT_COUNT.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX0\EOT$\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\NUL\STX\STX\STX\DC2\ETX0'(\n\
    \u\n\
    \\EOT\EOT\NUL\EOT\SOH\DC2\EOT5\STX;\ETX\SUBg Type of the values for the counters - to supply lower granularity units,\n\
    \ see also |unit_multiplier|.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\EOT\SOH\SOH\DC2\ETX5\a\v\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\NUL\DC2\ETX6\EOT\EM\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\SOH\DC2\ETX6\EOT\DC4\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\NUL\STX\DC2\ETX6\ETB\CAN\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\SOH\DC2\ETX7\EOT\NAK\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\SOH\DC2\ETX7\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\SOH\STX\DC2\ETX7\DC3\DC4\n\
    \\r\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\STX\DC2\ETX8\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\SOH\DC2\ETX8\EOT\SO\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\STX\STX\DC2\ETX8\DC1\DC2\n\
    \A\n\
    \\ACK\EOT\NUL\EOT\SOH\STX\ETX\DC2\ETX9\EOT\CAN\"2 TODO(eseckler): Support more units as necessary.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ETX\SOH\DC2\ETX9\EOT\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\EOT\SOH\STX\ETX\STX\DC2\ETX9\SYN\ETB\n\
    \\233\SOH\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX@\STX'\SUB\219\SOH For built-in counters (e.g. thread time). Custom user-specified counters\n\
    \ (e.g. those emitted by TRACE_COUNTER macros of the client library)\n\
    \ shouldn't set this, and instead provide a counter name via TrackDescriptor.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX@\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETX@\v\GS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX@\RS\"\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX@%&\n\
    \\196\SOH\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXE\STX!\SUB\182\SOH Names of categories of the counter (usually for user-specified counters).\n\
    \ In the client library, categories are a way to turn groups of individual\n\
    \ counters (or events) on or off.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXE\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETXE\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXE\DC2\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXE\US \n\
    \]\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETXI\STX\EM\SUBP Type of the counter's values. Built-in counters imply a value for this\n\
    \ field.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETXI\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ACK\DC2\ETXI\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETXI\DLE\DC4\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETXI\ETB\CAN\n\
    \r\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETXM\STX \SUBe In order to use a unit not defined as a part of |Unit|, a free-form unit\n\
    \ name can be used instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETXM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETXM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETXM\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETXM\RS\US\n\
    \\137\SOH\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETXQ\STX%\SUB| Multiplication factor of this counter's values, e.g. to supply\n\
    \ COUNTER_THREAD_TIME_NS timestamps in microseconds instead.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETXQ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ENQ\DC2\ETXQ\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETXQ\DC1 \n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETXQ#$\n\
    \\255\ETX\n\
    \\EOT\EOT\NUL\STX\ENQ\DC2\ETXZ\STX#\SUB\241\ETX Whether values for this counter are provided as delta values. Only\n\
    \ supported for counters that are emitted on a single packet-sequence (e.g.\n\
    \ thread time). Counter values in subsequent packets on the current packet\n\
    \ sequence will be interpreted as delta values from the sequence's most\n\
    \ recent value for the counter. When incremental state is cleared, the\n\
    \ counter value is considered to be reset to 0. Thus, the first value after\n\
    \ incremental state is cleared is effectively an absolute value.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\EOT\DC2\ETXZ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ENQ\DC2\ETXZ\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\SOH\DC2\ETXZ\DLE\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ENQ\ETX\DC2\ETXZ!\""