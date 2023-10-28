{- This file was auto-generated from protos/perfetto/trace/clock_snapshot.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.ClockSnapshot (
        ClockSnapshot(), ClockSnapshot'Clock(),
        ClockSnapshot'Clock'BuiltinClocks(..),
        ClockSnapshot'Clock'BuiltinClocks()
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
import qualified Proto.Protos.Perfetto.Common.BuiltinClock
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.clocks' @:: Lens' ClockSnapshot [ClockSnapshot'Clock]@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.vec'clocks' @:: Lens' ClockSnapshot (Data.Vector.Vector ClockSnapshot'Clock)@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.primaryTraceClock' @:: Lens' ClockSnapshot Proto.Protos.Perfetto.Common.BuiltinClock.BuiltinClock@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.maybe'primaryTraceClock' @:: Lens' ClockSnapshot (Prelude.Maybe Proto.Protos.Perfetto.Common.BuiltinClock.BuiltinClock)@ -}
data ClockSnapshot
  = ClockSnapshot'_constructor {_ClockSnapshot'clocks :: !(Data.Vector.Vector ClockSnapshot'Clock),
                                _ClockSnapshot'primaryTraceClock :: !(Prelude.Maybe Proto.Protos.Perfetto.Common.BuiltinClock.BuiltinClock),
                                _ClockSnapshot'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClockSnapshot where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClockSnapshot "clocks" [ClockSnapshot'Clock] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'clocks
           (\ x__ y__ -> x__ {_ClockSnapshot'clocks = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField ClockSnapshot "vec'clocks" (Data.Vector.Vector ClockSnapshot'Clock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'clocks
           (\ x__ y__ -> x__ {_ClockSnapshot'clocks = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockSnapshot "primaryTraceClock" Proto.Protos.Perfetto.Common.BuiltinClock.BuiltinClock where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'primaryTraceClock
           (\ x__ y__ -> x__ {_ClockSnapshot'primaryTraceClock = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockSnapshot "maybe'primaryTraceClock" (Prelude.Maybe Proto.Protos.Perfetto.Common.BuiltinClock.BuiltinClock) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'primaryTraceClock
           (\ x__ y__ -> x__ {_ClockSnapshot'primaryTraceClock = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClockSnapshot where
  messageName _ = Data.Text.pack "perfetto.protos.ClockSnapshot"
  packedMessageDescriptor _
    = "\n\
      \\rClockSnapshot\DC2<\n\
      \\ACKclocks\CAN\SOH \ETX(\v2$.perfetto.protos.ClockSnapshot.ClockR\ACKclocks\DC2M\n\
      \\DC3primary_trace_clock\CAN\STX \SOH(\SO2\GS.perfetto.protos.BuiltinClockR\DC1primaryTraceClock\SUB\195\STX\n\
      \\ENQClock\DC2\EM\n\
      \\bclock_id\CAN\SOH \SOH(\rR\aclockId\DC2\FS\n\
      \\ttimestamp\CAN\STX \SOH(\EOTR\ttimestamp\DC2%\n\
      \\SOis_incremental\CAN\ETX \SOH(\bR\risIncremental\DC2,\n\
      \\DC2unit_multiplier_ns\CAN\EOT \SOH(\EOTR\DLEunitMultiplierNs\"\171\SOH\n\
      \\rBuiltinClocks\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\f\n\
      \\bREALTIME\DLE\SOH\DC2\DC3\n\
      \\SIREALTIME_COARSE\DLE\STX\DC2\r\n\
      \\tMONOTONIC\DLE\ETX\DC2\DC4\n\
      \\DLEMONOTONIC_COARSE\DLE\EOT\DC2\DC1\n\
      \\rMONOTONIC_RAW\DLE\ENQ\DC2\f\n\
      \\bBOOTTIME\DLE\ACK\DC2\CAN\n\
      \\DC4BUILTIN_CLOCK_MAX_ID\DLE?\"\EOT\b\a\DLE\a\"\EOT\b\b\DLE\b"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clocks__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clocks"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor ClockSnapshot'Clock)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"clocks")) ::
              Data.ProtoLens.FieldDescriptor ClockSnapshot
        primaryTraceClock__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "primary_trace_clock"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Common.BuiltinClock.BuiltinClock)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'primaryTraceClock")) ::
              Data.ProtoLens.FieldDescriptor ClockSnapshot
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clocks__field_descriptor),
           (Data.ProtoLens.Tag 2, primaryTraceClock__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClockSnapshot'_unknownFields
        (\ x__ y__ -> x__ {_ClockSnapshot'_unknownFields = y__})
  defMessage
    = ClockSnapshot'_constructor
        {_ClockSnapshot'clocks = Data.Vector.Generic.empty,
         _ClockSnapshot'primaryTraceClock = Prelude.Nothing,
         _ClockSnapshot'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClockSnapshot
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld ClockSnapshot'Clock
             -> Data.ProtoLens.Encoding.Bytes.Parser ClockSnapshot
        loop x mutable'clocks
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'clocks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'clocks)
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
                              (Data.ProtoLens.Field.field @"vec'clocks") frozen'clocks x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "clocks"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'clocks y)
                                loop x v
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "primary_trace_clock"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"primaryTraceClock") y x)
                                  mutable'clocks
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'clocks
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'clocks <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'clocks)
          "ClockSnapshot"
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
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'clocks") _x))
             ((Data.Monoid.<>)
                (case
                     Lens.Family2.view
                       (Data.ProtoLens.Field.field @"maybe'primaryTraceClock") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             ((Prelude..)
                                Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                             Prelude.fromEnum _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData ClockSnapshot where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClockSnapshot'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClockSnapshot'clocks x__)
                (Control.DeepSeq.deepseq
                   (_ClockSnapshot'primaryTraceClock x__) ()))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.clockId' @:: Lens' ClockSnapshot'Clock Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.maybe'clockId' @:: Lens' ClockSnapshot'Clock (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.timestamp' @:: Lens' ClockSnapshot'Clock Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.maybe'timestamp' @:: Lens' ClockSnapshot'Clock (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.isIncremental' @:: Lens' ClockSnapshot'Clock Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.maybe'isIncremental' @:: Lens' ClockSnapshot'Clock (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.unitMultiplierNs' @:: Lens' ClockSnapshot'Clock Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.ClockSnapshot_Fields.maybe'unitMultiplierNs' @:: Lens' ClockSnapshot'Clock (Prelude.Maybe Data.Word.Word64)@ -}
data ClockSnapshot'Clock
  = ClockSnapshot'Clock'_constructor {_ClockSnapshot'Clock'clockId :: !(Prelude.Maybe Data.Word.Word32),
                                      _ClockSnapshot'Clock'timestamp :: !(Prelude.Maybe Data.Word.Word64),
                                      _ClockSnapshot'Clock'isIncremental :: !(Prelude.Maybe Prelude.Bool),
                                      _ClockSnapshot'Clock'unitMultiplierNs :: !(Prelude.Maybe Data.Word.Word64),
                                      _ClockSnapshot'Clock'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show ClockSnapshot'Clock where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField ClockSnapshot'Clock "clockId" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'Clock'clockId
           (\ x__ y__ -> x__ {_ClockSnapshot'Clock'clockId = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockSnapshot'Clock "maybe'clockId" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'Clock'clockId
           (\ x__ y__ -> x__ {_ClockSnapshot'Clock'clockId = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockSnapshot'Clock "timestamp" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'Clock'timestamp
           (\ x__ y__ -> x__ {_ClockSnapshot'Clock'timestamp = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockSnapshot'Clock "maybe'timestamp" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'Clock'timestamp
           (\ x__ y__ -> x__ {_ClockSnapshot'Clock'timestamp = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockSnapshot'Clock "isIncremental" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'Clock'isIncremental
           (\ x__ y__ -> x__ {_ClockSnapshot'Clock'isIncremental = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockSnapshot'Clock "maybe'isIncremental" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'Clock'isIncremental
           (\ x__ y__ -> x__ {_ClockSnapshot'Clock'isIncremental = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField ClockSnapshot'Clock "unitMultiplierNs" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'Clock'unitMultiplierNs
           (\ x__ y__ -> x__ {_ClockSnapshot'Clock'unitMultiplierNs = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField ClockSnapshot'Clock "maybe'unitMultiplierNs" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _ClockSnapshot'Clock'unitMultiplierNs
           (\ x__ y__ -> x__ {_ClockSnapshot'Clock'unitMultiplierNs = y__}))
        Prelude.id
instance Data.ProtoLens.Message ClockSnapshot'Clock where
  messageName _
    = Data.Text.pack "perfetto.protos.ClockSnapshot.Clock"
  packedMessageDescriptor _
    = "\n\
      \\ENQClock\DC2\EM\n\
      \\bclock_id\CAN\SOH \SOH(\rR\aclockId\DC2\FS\n\
      \\ttimestamp\CAN\STX \SOH(\EOTR\ttimestamp\DC2%\n\
      \\SOis_incremental\CAN\ETX \SOH(\bR\risIncremental\DC2,\n\
      \\DC2unit_multiplier_ns\CAN\EOT \SOH(\EOTR\DLEunitMultiplierNs\"\171\SOH\n\
      \\rBuiltinClocks\DC2\v\n\
      \\aUNKNOWN\DLE\NUL\DC2\f\n\
      \\bREALTIME\DLE\SOH\DC2\DC3\n\
      \\SIREALTIME_COARSE\DLE\STX\DC2\r\n\
      \\tMONOTONIC\DLE\ETX\DC2\DC4\n\
      \\DLEMONOTONIC_COARSE\DLE\EOT\DC2\DC1\n\
      \\rMONOTONIC_RAW\DLE\ENQ\DC2\f\n\
      \\bBOOTTIME\DLE\ACK\DC2\CAN\n\
      \\DC4BUILTIN_CLOCK_MAX_ID\DLE?\"\EOT\b\a\DLE\a\"\EOT\b\b\DLE\b"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        clockId__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "clock_id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'clockId")) ::
              Data.ProtoLens.FieldDescriptor ClockSnapshot'Clock
        timestamp__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "timestamp"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'timestamp")) ::
              Data.ProtoLens.FieldDescriptor ClockSnapshot'Clock
        isIncremental__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_incremental"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isIncremental")) ::
              Data.ProtoLens.FieldDescriptor ClockSnapshot'Clock
        unitMultiplierNs__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "unit_multiplier_ns"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'unitMultiplierNs")) ::
              Data.ProtoLens.FieldDescriptor ClockSnapshot'Clock
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, clockId__field_descriptor),
           (Data.ProtoLens.Tag 2, timestamp__field_descriptor),
           (Data.ProtoLens.Tag 3, isIncremental__field_descriptor),
           (Data.ProtoLens.Tag 4, unitMultiplierNs__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _ClockSnapshot'Clock'_unknownFields
        (\ x__ y__ -> x__ {_ClockSnapshot'Clock'_unknownFields = y__})
  defMessage
    = ClockSnapshot'Clock'_constructor
        {_ClockSnapshot'Clock'clockId = Prelude.Nothing,
         _ClockSnapshot'Clock'timestamp = Prelude.Nothing,
         _ClockSnapshot'Clock'isIncremental = Prelude.Nothing,
         _ClockSnapshot'Clock'unitMultiplierNs = Prelude.Nothing,
         _ClockSnapshot'Clock'_unknownFields = []}
  parseMessage
    = let
        loop ::
          ClockSnapshot'Clock
          -> Data.ProtoLens.Encoding.Bytes.Parser ClockSnapshot'Clock
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
                                       "clock_id"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"clockId") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "timestamp"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"timestamp") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_incremental"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"isIncremental") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "unit_multiplier_ns"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"unitMultiplierNs") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Clock"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'clockId") _x
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
                       (Data.ProtoLens.Field.field @"maybe'timestamp") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'isIncremental") _x
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
                             (Data.ProtoLens.Field.field @"maybe'unitMultiplierNs") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                      (Data.ProtoLens.Encoding.Wire.buildFieldSet
                         (Lens.Family2.view Data.ProtoLens.unknownFields _x)))))
instance Control.DeepSeq.NFData ClockSnapshot'Clock where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_ClockSnapshot'Clock'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_ClockSnapshot'Clock'clockId x__)
                (Control.DeepSeq.deepseq
                   (_ClockSnapshot'Clock'timestamp x__)
                   (Control.DeepSeq.deepseq
                      (_ClockSnapshot'Clock'isIncremental x__)
                      (Control.DeepSeq.deepseq
                         (_ClockSnapshot'Clock'unitMultiplierNs x__) ()))))
data ClockSnapshot'Clock'BuiltinClocks
  = ClockSnapshot'Clock'UNKNOWN |
    ClockSnapshot'Clock'REALTIME |
    ClockSnapshot'Clock'REALTIME_COARSE |
    ClockSnapshot'Clock'MONOTONIC |
    ClockSnapshot'Clock'MONOTONIC_COARSE |
    ClockSnapshot'Clock'MONOTONIC_RAW |
    ClockSnapshot'Clock'BOOTTIME |
    ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum ClockSnapshot'Clock'BuiltinClocks where
  maybeToEnum 0 = Prelude.Just ClockSnapshot'Clock'UNKNOWN
  maybeToEnum 1 = Prelude.Just ClockSnapshot'Clock'REALTIME
  maybeToEnum 2 = Prelude.Just ClockSnapshot'Clock'REALTIME_COARSE
  maybeToEnum 3 = Prelude.Just ClockSnapshot'Clock'MONOTONIC
  maybeToEnum 4 = Prelude.Just ClockSnapshot'Clock'MONOTONIC_COARSE
  maybeToEnum 5 = Prelude.Just ClockSnapshot'Clock'MONOTONIC_RAW
  maybeToEnum 6 = Prelude.Just ClockSnapshot'Clock'BOOTTIME
  maybeToEnum 63
    = Prelude.Just ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID
  maybeToEnum _ = Prelude.Nothing
  showEnum ClockSnapshot'Clock'UNKNOWN = "UNKNOWN"
  showEnum ClockSnapshot'Clock'REALTIME = "REALTIME"
  showEnum ClockSnapshot'Clock'REALTIME_COARSE = "REALTIME_COARSE"
  showEnum ClockSnapshot'Clock'MONOTONIC = "MONOTONIC"
  showEnum ClockSnapshot'Clock'MONOTONIC_COARSE = "MONOTONIC_COARSE"
  showEnum ClockSnapshot'Clock'MONOTONIC_RAW = "MONOTONIC_RAW"
  showEnum ClockSnapshot'Clock'BOOTTIME = "BOOTTIME"
  showEnum ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID
    = "BUILTIN_CLOCK_MAX_ID"
  readEnum k
    | (Prelude.==) k "UNKNOWN"
    = Prelude.Just ClockSnapshot'Clock'UNKNOWN
    | (Prelude.==) k "REALTIME"
    = Prelude.Just ClockSnapshot'Clock'REALTIME
    | (Prelude.==) k "REALTIME_COARSE"
    = Prelude.Just ClockSnapshot'Clock'REALTIME_COARSE
    | (Prelude.==) k "MONOTONIC"
    = Prelude.Just ClockSnapshot'Clock'MONOTONIC
    | (Prelude.==) k "MONOTONIC_COARSE"
    = Prelude.Just ClockSnapshot'Clock'MONOTONIC_COARSE
    | (Prelude.==) k "MONOTONIC_RAW"
    = Prelude.Just ClockSnapshot'Clock'MONOTONIC_RAW
    | (Prelude.==) k "BOOTTIME"
    = Prelude.Just ClockSnapshot'Clock'BOOTTIME
    | (Prelude.==) k "BUILTIN_CLOCK_MAX_ID"
    = Prelude.Just ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded ClockSnapshot'Clock'BuiltinClocks where
  minBound = ClockSnapshot'Clock'UNKNOWN
  maxBound = ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID
instance Prelude.Enum ClockSnapshot'Clock'BuiltinClocks where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BuiltinClocks: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum ClockSnapshot'Clock'UNKNOWN = 0
  fromEnum ClockSnapshot'Clock'REALTIME = 1
  fromEnum ClockSnapshot'Clock'REALTIME_COARSE = 2
  fromEnum ClockSnapshot'Clock'MONOTONIC = 3
  fromEnum ClockSnapshot'Clock'MONOTONIC_COARSE = 4
  fromEnum ClockSnapshot'Clock'MONOTONIC_RAW = 5
  fromEnum ClockSnapshot'Clock'BOOTTIME = 6
  fromEnum ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID = 63
  succ ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID
    = Prelude.error
        "ClockSnapshot'Clock'BuiltinClocks.succ: bad argument ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID. This value would be out of bounds."
  succ ClockSnapshot'Clock'UNKNOWN = ClockSnapshot'Clock'REALTIME
  succ ClockSnapshot'Clock'REALTIME
    = ClockSnapshot'Clock'REALTIME_COARSE
  succ ClockSnapshot'Clock'REALTIME_COARSE
    = ClockSnapshot'Clock'MONOTONIC
  succ ClockSnapshot'Clock'MONOTONIC
    = ClockSnapshot'Clock'MONOTONIC_COARSE
  succ ClockSnapshot'Clock'MONOTONIC_COARSE
    = ClockSnapshot'Clock'MONOTONIC_RAW
  succ ClockSnapshot'Clock'MONOTONIC_RAW
    = ClockSnapshot'Clock'BOOTTIME
  succ ClockSnapshot'Clock'BOOTTIME
    = ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID
  pred ClockSnapshot'Clock'UNKNOWN
    = Prelude.error
        "ClockSnapshot'Clock'BuiltinClocks.pred: bad argument ClockSnapshot'Clock'UNKNOWN. This value would be out of bounds."
  pred ClockSnapshot'Clock'REALTIME = ClockSnapshot'Clock'UNKNOWN
  pred ClockSnapshot'Clock'REALTIME_COARSE
    = ClockSnapshot'Clock'REALTIME
  pred ClockSnapshot'Clock'MONOTONIC
    = ClockSnapshot'Clock'REALTIME_COARSE
  pred ClockSnapshot'Clock'MONOTONIC_COARSE
    = ClockSnapshot'Clock'MONOTONIC
  pred ClockSnapshot'Clock'MONOTONIC_RAW
    = ClockSnapshot'Clock'MONOTONIC_COARSE
  pred ClockSnapshot'Clock'BOOTTIME
    = ClockSnapshot'Clock'MONOTONIC_RAW
  pred ClockSnapshot'Clock'BUILTIN_CLOCK_MAX_ID
    = ClockSnapshot'Clock'BOOTTIME
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault ClockSnapshot'Clock'BuiltinClocks where
  fieldDefault = ClockSnapshot'Clock'UNKNOWN
instance Control.DeepSeq.NFData ClockSnapshot'Clock'BuiltinClocks where
  rnf x__ = Prelude.seq x__ ()
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \*protos/perfetto/trace/clock_snapshot.proto\DC2\SIperfetto.protos\SUB*protos/perfetto/common/builtin_clock.proto\"\226\ETX\n\
    \\rClockSnapshot\DC2<\n\
    \\ACKclocks\CAN\SOH \ETX(\v2$.perfetto.protos.ClockSnapshot.ClockR\ACKclocks\DC2M\n\
    \\DC3primary_trace_clock\CAN\STX \SOH(\SO2\GS.perfetto.protos.BuiltinClockR\DC1primaryTraceClock\SUB\195\STX\n\
    \\ENQClock\DC2\EM\n\
    \\bclock_id\CAN\SOH \SOH(\rR\aclockId\DC2\FS\n\
    \\ttimestamp\CAN\STX \SOH(\EOTR\ttimestamp\DC2%\n\
    \\SOis_incremental\CAN\ETX \SOH(\bR\risIncremental\DC2,\n\
    \\DC2unit_multiplier_ns\CAN\EOT \SOH(\EOTR\DLEunitMultiplierNs\"\171\SOH\n\
    \\rBuiltinClocks\DC2\v\n\
    \\aUNKNOWN\DLE\NUL\DC2\f\n\
    \\bREALTIME\DLE\SOH\DC2\DC3\n\
    \\SIREALTIME_COARSE\DLE\STX\DC2\r\n\
    \\tMONOTONIC\DLE\ETX\DC2\DC4\n\
    \\DLEMONOTONIC_COARSE\DLE\EOT\DC2\DC1\n\
    \\rMONOTONIC_RAW\DLE\ENQ\DC2\f\n\
    \\bBOOTTIME\DLE\ACK\DC2\CAN\n\
    \\DC4BUILTIN_CLOCK_MAX_ID\DLE?\"\EOT\b\a\DLE\a\"\EOT\b\b\DLE\bJ\221\SUB\n\
    \\ACK\DC2\EOT\DLE\NULK\SOH\n\
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
    \\t\n\
    \\STX\ETX\NUL\DC2\ETX\DC2\NUL4\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DC4\NUL\CAN\n\
    \H\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NULK\SOH\SUB< A snapshot of clock readings to allow for trace alignment.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\NAK\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT\CAN\STXC\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX\CAN\n\
    \\SI\n\
    \S\n\
    \\ACK\EOT\NUL\ETX\NUL\EOT\NUL\DC2\EOT\SUB\EOT%\ENQ\SUBC DEPRECATED. This enum has moved to ../common/builtin_clock.proto.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\EOT\NUL\SOH\DC2\ETX\SUB\t\SYN\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\DC2\ETX\ESC\ACK\DC2\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\SOH\DC2\ETX\ESC\ACK\r\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\NUL\STX\DC2\ETX\ESC\DLE\DC1\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\DC2\ETX\FS\ACK\DC3\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\SOH\STX\DC2\ETX\FS\DC1\DC2\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\DC2\ETX\GS\ACK\SUB\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\SOH\DC2\ETX\GS\ACK\NAK\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\STX\STX\DC2\ETX\GS\CAN\EM\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\ETX\DC2\ETX\RS\ACK\DC4\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ETX\SOH\DC2\ETX\RS\ACK\SI\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ETX\STX\DC2\ETX\RS\DC2\DC3\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\EOT\DC2\ETX\US\ACK\ESC\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\EOT\SOH\DC2\ETX\US\ACK\SYN\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\EOT\STX\DC2\ETX\US\EM\SUB\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\ENQ\DC2\ETX \ACK\CAN\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ENQ\SOH\DC2\ETX \ACK\DC3\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ENQ\STX\DC2\ETX \SYN\ETB\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\ACK\DC2\ETX!\ACK\DC3\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ACK\SOH\DC2\ETX!\ACK\SO\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\ACK\STX\DC2\ETX!\DC1\DC2\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\STX\a\DC2\ETX\"\ACK \n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\a\SOH\DC2\ETX\"\ACK\SUB\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\STX\a\STX\DC2\ETX\"\GS\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\EOT\NUL\EOT\DC2\ETX$\ACK\DC4\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\EOT\NUL\DC2\ETX$\SI\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\EOT\NUL\SOH\DC2\ETX$\SI\DLE\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\EOT\NUL\STX\DC2\ETX$\SI\DLE\n\
    \\SI\n\
    \\b\EOT\NUL\ETX\NUL\EOT\NUL\EOT\SOH\DC2\ETX$\DC2\DC3\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\EOT\SOH\SOH\DC2\ETX$\DC2\DC3\n\
    \\DLE\n\
    \\t\EOT\NUL\ETX\NUL\EOT\NUL\EOT\SOH\STX\DC2\ETX$\DC2\DC3\n\
    \\176\EOT\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX0\EOT!\SUB\160\EOT Clock IDs have the following semantic:\n\
    \ [1, 63]:    Builtin types, see BuiltinClock from\n\
    \             ../common/builtin_clock.proto.\n\
    \ [64, 127]:  User-defined clocks. These clocks are sequence-scoped. They\n\
    \             are only valid within the same |trusted_packet_sequence_id|\n\
    \             (i.e. only for TracePacket(s) emitted by the same TraceWriter\n\
    \             that emitted the clock snapshot).\n\
    \ [128, MAX]: Reserved for future use. The idea is to allow global clock\n\
    \             IDs and setting this ID to hash(full_clock_name) & ~127.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX0\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX0\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX0\DC4\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX0\US \n\
    \r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX4\EOT\"\SUBc Absolute timestamp. Unit is ns unless specified otherwise by the\n\
    \ unit_multiplier_ns field below.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX4\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ENQ\DC2\ETX4\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX4\DC4\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX4 !\n\
    \\131\ETX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX<\EOT%\SUB\243\STX When true each TracePacket's timestamp should be interpreted as a delta\n\
    \ from the last TracePacket's timestamp (referencing this clock) emitted by\n\
    \ the same packet_sequence_id. Should only be used for user-defined\n\
    \ sequence-local clocks. The first packet timestamp after each\n\
    \ ClockSnapshot that contains this clock is relative to the |timestamp| in\n\
    \ the ClockSnapshot.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX<\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX<\r\DC1\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX<\DC2 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX<#$\n\
    \\143\STX\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETXB\EOT+\SUB\255\SOH Allows to specify a custom unit different than the default (ns) for this\n\
    \ clock domain. A multiplier of 1000 means that a timestamp = 3 should be\n\
    \ interpreted as 3000 ns = 3 us. All snapshots for the same clock within a\n\
    \ trace need to use the same unit.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\ETXB\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETXB\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETXB\DC4&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETXB)*\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETXD\STX\FS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETXD\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ACK\DC2\ETXD\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETXD\DC1\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETXD\SUB\ESC\n\
    \\174\STX\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETXJ\STX0\SUB\160\STX The authoritative clock domain for the trace. Defaults to BOOTTIME, but can\n\
    \ be overridden in TraceConfig's builtin_data_sources. Trace processor will\n\
    \ attempt to translate packet/event timestamps from various data sources (and\n\
    \ their chosen clock domains) to this domain during import.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETXJ\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ACK\DC2\ETXJ\v\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETXJ\CAN+\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETXJ./"