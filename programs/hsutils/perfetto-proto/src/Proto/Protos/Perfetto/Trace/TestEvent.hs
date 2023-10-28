{- This file was auto-generated from protos/perfetto/trace/test_event.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Protos.Perfetto.Trace.TestEvent (
        TestEvent(), TestEvent'TestPayload()
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
import qualified Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.str' @:: Lens' TestEvent Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.maybe'str' @:: Lens' TestEvent (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.seqValue' @:: Lens' TestEvent Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.maybe'seqValue' @:: Lens' TestEvent (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.counter' @:: Lens' TestEvent Data.Word.Word64@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.maybe'counter' @:: Lens' TestEvent (Prelude.Maybe Data.Word.Word64)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.isLast' @:: Lens' TestEvent Prelude.Bool@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.maybe'isLast' @:: Lens' TestEvent (Prelude.Maybe Prelude.Bool)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.payload' @:: Lens' TestEvent TestEvent'TestPayload@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.maybe'payload' @:: Lens' TestEvent (Prelude.Maybe TestEvent'TestPayload)@ -}
data TestEvent
  = TestEvent'_constructor {_TestEvent'str :: !(Prelude.Maybe Data.Text.Text),
                            _TestEvent'seqValue :: !(Prelude.Maybe Data.Word.Word32),
                            _TestEvent'counter :: !(Prelude.Maybe Data.Word.Word64),
                            _TestEvent'isLast :: !(Prelude.Maybe Prelude.Bool),
                            _TestEvent'payload :: !(Prelude.Maybe TestEvent'TestPayload),
                            _TestEvent'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestEvent where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestEvent "str" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'str (\ x__ y__ -> x__ {_TestEvent'str = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TestEvent "maybe'str" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'str (\ x__ y__ -> x__ {_TestEvent'str = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent "seqValue" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'seqValue (\ x__ y__ -> x__ {_TestEvent'seqValue = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TestEvent "maybe'seqValue" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'seqValue (\ x__ y__ -> x__ {_TestEvent'seqValue = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent "counter" Data.Word.Word64 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'counter (\ x__ y__ -> x__ {_TestEvent'counter = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TestEvent "maybe'counter" (Prelude.Maybe Data.Word.Word64) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'counter (\ x__ y__ -> x__ {_TestEvent'counter = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent "isLast" Prelude.Bool where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'isLast (\ x__ y__ -> x__ {_TestEvent'isLast = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TestEvent "maybe'isLast" (Prelude.Maybe Prelude.Bool) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'isLast (\ x__ y__ -> x__ {_TestEvent'isLast = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent "payload" TestEvent'TestPayload where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'payload (\ x__ y__ -> x__ {_TestEvent'payload = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField TestEvent "maybe'payload" (Prelude.Maybe TestEvent'TestPayload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'payload (\ x__ y__ -> x__ {_TestEvent'payload = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestEvent where
  messageName _ = Data.Text.pack "perfetto.protos.TestEvent"
  packedMessageDescriptor _
    = "\n\
      \\tTestEvent\DC2\DLE\n\
      \\ETXstr\CAN\SOH \SOH(\tR\ETXstr\DC2\ESC\n\
      \\tseq_value\CAN\STX \SOH(\rR\bseqValue\DC2\CAN\n\
      \\acounter\CAN\ETX \SOH(\EOTR\acounter\DC2\ETB\n\
      \\ais_last\CAN\EOT \SOH(\bR\ACKisLast\DC2@\n\
      \\apayload\CAN\ENQ \SOH(\v2&.perfetto.protos.TestEvent.TestPayloadR\apayload\SUB\207\STX\n\
      \\vTestPayload\DC2\DLE\n\
      \\ETXstr\CAN\SOH \ETX(\tR\ETXstr\DC2>\n\
      \\ACKnested\CAN\STX \ETX(\v2&.perfetto.protos.TestEvent.TestPayloadR\ACKnested\DC2#\n\
      \\rsingle_string\CAN\EOT \SOH(\tR\fsingleString\DC2\GS\n\
      \\n\
      \single_int\CAN\ENQ \SOH(\ENQR\tsingleInt\DC2#\n\
      \\rrepeated_ints\CAN\ACK \ETX(\ENQR\frepeatedInts\DC26\n\
      \\ETBremaining_nesting_depth\CAN\ETX \SOH(\rR\NAKremainingNestingDepth\DC2M\n\
      \\DC1debug_annotations\CAN\a \ETX(\v2 .perfetto.protos.DebugAnnotationR\DLEdebugAnnotations"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        str__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "str"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'str")) ::
              Data.ProtoLens.FieldDescriptor TestEvent
        seqValue__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "seq_value"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'seqValue")) ::
              Data.ProtoLens.FieldDescriptor TestEvent
        counter__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "counter"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt64Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word64)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'counter")) ::
              Data.ProtoLens.FieldDescriptor TestEvent
        isLast__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "is_last"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BoolField ::
                 Data.ProtoLens.FieldTypeDescriptor Prelude.Bool)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'isLast")) ::
              Data.ProtoLens.FieldDescriptor TestEvent
        payload__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "payload"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestEvent'TestPayload)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'payload")) ::
              Data.ProtoLens.FieldDescriptor TestEvent
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, str__field_descriptor),
           (Data.ProtoLens.Tag 2, seqValue__field_descriptor),
           (Data.ProtoLens.Tag 3, counter__field_descriptor),
           (Data.ProtoLens.Tag 4, isLast__field_descriptor),
           (Data.ProtoLens.Tag 5, payload__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestEvent'_unknownFields
        (\ x__ y__ -> x__ {_TestEvent'_unknownFields = y__})
  defMessage
    = TestEvent'_constructor
        {_TestEvent'str = Prelude.Nothing,
         _TestEvent'seqValue = Prelude.Nothing,
         _TestEvent'counter = Prelude.Nothing,
         _TestEvent'isLast = Prelude.Nothing,
         _TestEvent'payload = Prelude.Nothing,
         _TestEvent'_unknownFields = []}
  parseMessage
    = let
        loop :: TestEvent -> Data.ProtoLens.Encoding.Bytes.Parser TestEvent
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
                                       "str"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"str") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "seq_value"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"seqValue") y x)
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       Data.ProtoLens.Encoding.Bytes.getVarInt "counter"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"counter") y x)
                        32
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          ((Prelude./=) 0) Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "is_last"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"isLast") y x)
                        42
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "payload"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"payload") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "TestEvent"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'str") _x
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
                     Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'seqValue") _x
                 of
                   Prelude.Nothing -> Data.Monoid.mempty
                   (Prelude.Just _v)
                     -> (Data.Monoid.<>)
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                          ((Prelude..)
                             Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'counter") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just _v)
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt _v))
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'isLast") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 32)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt
                                   (\ b -> if b then 1 else 0) _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'payload") _x
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
                                      Data.ProtoLens.encodeMessage _v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData TestEvent where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestEvent'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestEvent'str x__)
                (Control.DeepSeq.deepseq
                   (_TestEvent'seqValue x__)
                   (Control.DeepSeq.deepseq
                      (_TestEvent'counter x__)
                      (Control.DeepSeq.deepseq
                         (_TestEvent'isLast x__)
                         (Control.DeepSeq.deepseq (_TestEvent'payload x__) ())))))
{- | Fields :
     
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.str' @:: Lens' TestEvent'TestPayload [Data.Text.Text]@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.vec'str' @:: Lens' TestEvent'TestPayload (Data.Vector.Vector Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.nested' @:: Lens' TestEvent'TestPayload [TestEvent'TestPayload]@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.vec'nested' @:: Lens' TestEvent'TestPayload (Data.Vector.Vector TestEvent'TestPayload)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.singleString' @:: Lens' TestEvent'TestPayload Data.Text.Text@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.maybe'singleString' @:: Lens' TestEvent'TestPayload (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.singleInt' @:: Lens' TestEvent'TestPayload Data.Int.Int32@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.maybe'singleInt' @:: Lens' TestEvent'TestPayload (Prelude.Maybe Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.repeatedInts' @:: Lens' TestEvent'TestPayload [Data.Int.Int32]@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.vec'repeatedInts' @:: Lens' TestEvent'TestPayload (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.remainingNestingDepth' @:: Lens' TestEvent'TestPayload Data.Word.Word32@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.maybe'remainingNestingDepth' @:: Lens' TestEvent'TestPayload (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.debugAnnotations' @:: Lens' TestEvent'TestPayload [Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation]@
         * 'Proto.Protos.Perfetto.Trace.TestEvent_Fields.vec'debugAnnotations' @:: Lens' TestEvent'TestPayload (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation)@ -}
data TestEvent'TestPayload
  = TestEvent'TestPayload'_constructor {_TestEvent'TestPayload'str :: !(Data.Vector.Vector Data.Text.Text),
                                        _TestEvent'TestPayload'nested :: !(Data.Vector.Vector TestEvent'TestPayload),
                                        _TestEvent'TestPayload'singleString :: !(Prelude.Maybe Data.Text.Text),
                                        _TestEvent'TestPayload'singleInt :: !(Prelude.Maybe Data.Int.Int32),
                                        _TestEvent'TestPayload'repeatedInts :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                                        _TestEvent'TestPayload'remainingNestingDepth :: !(Prelude.Maybe Data.Word.Word32),
                                        _TestEvent'TestPayload'debugAnnotations :: !(Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation),
                                        _TestEvent'TestPayload'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show TestEvent'TestPayload where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "str" [Data.Text.Text] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'str
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'str = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "vec'str" (Data.Vector.Vector Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'str
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'str = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "nested" [TestEvent'TestPayload] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'nested
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'nested = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "vec'nested" (Data.Vector.Vector TestEvent'TestPayload) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'nested
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'nested = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "singleString" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'singleString
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'singleString = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "maybe'singleString" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'singleString
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'singleString = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "singleInt" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'singleInt
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'singleInt = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "maybe'singleInt" (Prelude.Maybe Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'singleInt
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'singleInt = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "repeatedInts" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'repeatedInts
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'repeatedInts = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "vec'repeatedInts" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'repeatedInts
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'repeatedInts = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "remainingNestingDepth" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'remainingNestingDepth
           (\ x__ y__
              -> x__ {_TestEvent'TestPayload'remainingNestingDepth = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault)
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "maybe'remainingNestingDepth" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'remainingNestingDepth
           (\ x__ y__
              -> x__ {_TestEvent'TestPayload'remainingNestingDepth = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "debugAnnotations" [Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'debugAnnotations
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'debugAnnotations = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField TestEvent'TestPayload "vec'debugAnnotations" (Data.Vector.Vector Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _TestEvent'TestPayload'debugAnnotations
           (\ x__ y__ -> x__ {_TestEvent'TestPayload'debugAnnotations = y__}))
        Prelude.id
instance Data.ProtoLens.Message TestEvent'TestPayload where
  messageName _
    = Data.Text.pack "perfetto.protos.TestEvent.TestPayload"
  packedMessageDescriptor _
    = "\n\
      \\vTestPayload\DC2\DLE\n\
      \\ETXstr\CAN\SOH \ETX(\tR\ETXstr\DC2>\n\
      \\ACKnested\CAN\STX \ETX(\v2&.perfetto.protos.TestEvent.TestPayloadR\ACKnested\DC2#\n\
      \\rsingle_string\CAN\EOT \SOH(\tR\fsingleString\DC2\GS\n\
      \\n\
      \single_int\CAN\ENQ \SOH(\ENQR\tsingleInt\DC2#\n\
      \\rrepeated_ints\CAN\ACK \ETX(\ENQR\frepeatedInts\DC26\n\
      \\ETBremaining_nesting_depth\CAN\ETX \SOH(\rR\NAKremainingNestingDepth\DC2M\n\
      \\DC1debug_annotations\CAN\a \ETX(\v2 .perfetto.protos.DebugAnnotationR\DLEdebugAnnotations"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        str__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "str"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"str")) ::
              Data.ProtoLens.FieldDescriptor TestEvent'TestPayload
        nested__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "nested"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor TestEvent'TestPayload)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"nested")) ::
              Data.ProtoLens.FieldDescriptor TestEvent'TestPayload
        singleString__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "single_string"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'singleString")) ::
              Data.ProtoLens.FieldDescriptor TestEvent'TestPayload
        singleInt__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "single_int"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'singleInt")) ::
              Data.ProtoLens.FieldDescriptor TestEvent'TestPayload
        repeatedInts__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "repeated_ints"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"repeatedInts")) ::
              Data.ProtoLens.FieldDescriptor TestEvent'TestPayload
        remainingNestingDepth__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "remaining_nesting_depth"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'remainingNestingDepth")) ::
              Data.ProtoLens.FieldDescriptor TestEvent'TestPayload
        debugAnnotations__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "debug_annotations"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"debugAnnotations")) ::
              Data.ProtoLens.FieldDescriptor TestEvent'TestPayload
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, str__field_descriptor),
           (Data.ProtoLens.Tag 2, nested__field_descriptor),
           (Data.ProtoLens.Tag 4, singleString__field_descriptor),
           (Data.ProtoLens.Tag 5, singleInt__field_descriptor),
           (Data.ProtoLens.Tag 6, repeatedInts__field_descriptor),
           (Data.ProtoLens.Tag 3, remainingNestingDepth__field_descriptor),
           (Data.ProtoLens.Tag 7, debugAnnotations__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _TestEvent'TestPayload'_unknownFields
        (\ x__ y__ -> x__ {_TestEvent'TestPayload'_unknownFields = y__})
  defMessage
    = TestEvent'TestPayload'_constructor
        {_TestEvent'TestPayload'str = Data.Vector.Generic.empty,
         _TestEvent'TestPayload'nested = Data.Vector.Generic.empty,
         _TestEvent'TestPayload'singleString = Prelude.Nothing,
         _TestEvent'TestPayload'singleInt = Prelude.Nothing,
         _TestEvent'TestPayload'repeatedInts = Data.Vector.Generic.empty,
         _TestEvent'TestPayload'remainingNestingDepth = Prelude.Nothing,
         _TestEvent'TestPayload'debugAnnotations = Data.Vector.Generic.empty,
         _TestEvent'TestPayload'_unknownFields = []}
  parseMessage
    = let
        loop ::
          TestEvent'TestPayload
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Proto.Protos.Perfetto.Trace.TrackEvent.DebugAnnotation.DebugAnnotation
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld TestEvent'TestPayload
                -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                   -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Text.Text
                      -> Data.ProtoLens.Encoding.Bytes.Parser TestEvent'TestPayload
        loop
          x
          mutable'debugAnnotations
          mutable'nested
          mutable'repeatedInts
          mutable'str
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'debugAnnotations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                   (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                      mutable'debugAnnotations)
                      frozen'nested <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                            mutable'nested)
                      frozen'repeatedInts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                  mutable'repeatedInts)
                      frozen'str <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                      (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'str)
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
                              (Data.ProtoLens.Field.field @"vec'debugAnnotations")
                              frozen'debugAnnotations
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'nested") frozen'nested
                                 (Lens.Family2.set
                                    (Data.ProtoLens.Field.field @"vec'repeatedInts")
                                    frozen'repeatedInts
                                    (Lens.Family2.set
                                       (Data.ProtoLens.Field.field @"vec'str") frozen'str x)))))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                        Data.ProtoLens.Encoding.Bytes.getBytes
                                                          (Prelude.fromIntegral len)
                                            Data.ProtoLens.Encoding.Bytes.runEither
                                              (case Data.Text.Encoding.decodeUtf8' value of
                                                 (Prelude.Left err)
                                                   -> Prelude.Left (Prelude.show err)
                                                 (Prelude.Right r) -> Prelude.Right r))
                                        "str"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'str y)
                                loop
                                  x mutable'debugAnnotations mutable'nested mutable'repeatedInts v
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "nested"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'nested y)
                                loop x mutable'debugAnnotations v mutable'repeatedInts mutable'str
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
                                       "single_string"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"singleString") y x)
                                  mutable'debugAnnotations mutable'nested mutable'repeatedInts
                                  mutable'str
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "single_int"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"singleInt") y x)
                                  mutable'debugAnnotations mutable'nested mutable'repeatedInts
                                  mutable'str
                        48
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "repeated_ints"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'repeatedInts y)
                                loop x mutable'debugAnnotations mutable'nested v mutable'str
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
                                                                    "repeated_ints"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'repeatedInts)
                                loop x mutable'debugAnnotations mutable'nested y mutable'str
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "remaining_nesting_depth"
                                loop
                                  (Lens.Family2.set
                                     (Data.ProtoLens.Field.field @"remainingNestingDepth") y x)
                                  mutable'debugAnnotations mutable'nested mutable'repeatedInts
                                  mutable'str
                        58
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "debug_annotations"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append
                                          mutable'debugAnnotations y)
                                loop x v mutable'nested mutable'repeatedInts mutable'str
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'debugAnnotations mutable'nested mutable'repeatedInts
                                  mutable'str
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'debugAnnotations <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            Data.ProtoLens.Encoding.Growing.new
              mutable'nested <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                  Data.ProtoLens.Encoding.Growing.new
              mutable'repeatedInts <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        Data.ProtoLens.Encoding.Growing.new
              mutable'str <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                               Data.ProtoLens.Encoding.Growing.new
              loop
                Data.ProtoLens.defMessage mutable'debugAnnotations mutable'nested
                mutable'repeatedInts mutable'str)
          "TestPayload"
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
                           Data.Text.Encoding.encodeUtf8 _v))
                (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'str") _x))
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
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'nested") _x))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view
                          (Data.ProtoLens.Field.field @"maybe'singleString") _x
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
                   ((Data.Monoid.<>)
                      (case
                           Lens.Family2.view
                             (Data.ProtoLens.Field.field @"maybe'singleInt") _x
                       of
                         Prelude.Nothing -> Data.Monoid.mempty
                         (Prelude.Just _v)
                           -> (Data.Monoid.<>)
                                (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                                ((Prelude..)
                                   Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                      ((Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                            (\ _v
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt 48)
                                    ((Prelude..)
                                       Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                       _v))
                            (Lens.Family2.view
                               (Data.ProtoLens.Field.field @"vec'repeatedInts") _x))
                         ((Data.Monoid.<>)
                            (case
                                 Lens.Family2.view
                                   (Data.ProtoLens.Field.field @"maybe'remainingNestingDepth") _x
                             of
                               Prelude.Nothing -> Data.Monoid.mempty
                               (Prelude.Just _v)
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                      ((Prelude..)
                                         Data.ProtoLens.Encoding.Bytes.putVarInt
                                         Prelude.fromIntegral _v))
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
                                             Data.ProtoLens.encodeMessage _v))
                                  (Lens.Family2.view
                                     (Data.ProtoLens.Field.field @"vec'debugAnnotations") _x))
                               (Data.ProtoLens.Encoding.Wire.buildFieldSet
                                  (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))))
instance Control.DeepSeq.NFData TestEvent'TestPayload where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_TestEvent'TestPayload'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_TestEvent'TestPayload'str x__)
                (Control.DeepSeq.deepseq
                   (_TestEvent'TestPayload'nested x__)
                   (Control.DeepSeq.deepseq
                      (_TestEvent'TestPayload'singleString x__)
                      (Control.DeepSeq.deepseq
                         (_TestEvent'TestPayload'singleInt x__)
                         (Control.DeepSeq.deepseq
                            (_TestEvent'TestPayload'repeatedInts x__)
                            (Control.DeepSeq.deepseq
                               (_TestEvent'TestPayload'remainingNestingDepth x__)
                               (Control.DeepSeq.deepseq
                                  (_TestEvent'TestPayload'debugAnnotations x__) ())))))))
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \&protos/perfetto/trace/test_event.proto\DC2\SIperfetto.protos\SUB8protos/perfetto/trace/track_event/debug_annotation.proto\"\129\EOT\n\
    \\tTestEvent\DC2\DLE\n\
    \\ETXstr\CAN\SOH \SOH(\tR\ETXstr\DC2\ESC\n\
    \\tseq_value\CAN\STX \SOH(\rR\bseqValue\DC2\CAN\n\
    \\acounter\CAN\ETX \SOH(\EOTR\acounter\DC2\ETB\n\
    \\ais_last\CAN\EOT \SOH(\bR\ACKisLast\DC2@\n\
    \\apayload\CAN\ENQ \SOH(\v2&.perfetto.protos.TestEvent.TestPayloadR\apayload\SUB\207\STX\n\
    \\vTestPayload\DC2\DLE\n\
    \\ETXstr\CAN\SOH \ETX(\tR\ETXstr\DC2>\n\
    \\ACKnested\CAN\STX \ETX(\v2&.perfetto.protos.TestEvent.TestPayloadR\ACKnested\DC2#\n\
    \\rsingle_string\CAN\EOT \SOH(\tR\fsingleString\DC2\GS\n\
    \\n\
    \single_int\CAN\ENQ \SOH(\ENQR\tsingleInt\DC2#\n\
    \\rrepeated_ints\CAN\ACK \ETX(\ENQR\frepeatedInts\DC26\n\
    \\ETBremaining_nesting_depth\CAN\ETX \SOH(\rR\NAKremainingNestingDepth\DC2M\n\
    \\DC1debug_annotations\CAN\a \ETX(\v2 .perfetto.protos.DebugAnnotationR\DLEdebugAnnotationsJ\204\SO\n\
    \\ACK\DC2\EOT\DLE\NUL3\SOH\n\
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
    \\STX\ETX\NUL\DC2\ETX\DC2\NULB\n\
    \\b\n\
    \\SOH\STX\DC2\ETX\DC4\NUL\CAN\n\
    \)\n\
    \\STX\EOT\NUL\DC2\EOT\ETB\NUL3\SOH\SUB\GS Event used by testing code.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\ETB\b\DC1\n\
    \.\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\EM\STX\SUB\SUB! Arbitrary string used in tests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\EOT\DC2\ETX\EM\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\EM\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\EM\DC2\NAK\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\EM\CAN\EM\n\
    \M\n\
    \\EOT\EOT\NUL\STX\SOH\DC2\ETX\FS\STX \SUB@ The current value of the random number sequence used in tests.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\EOT\DC2\ETX\FS\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ENQ\DC2\ETX\FS\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\SOH\DC2\ETX\FS\DC2\ESC\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\SOH\ETX\DC2\ETX\FS\RS\US\n\
    \6\n\
    \\EOT\EOT\NUL\STX\STX\DC2\ETX\US\STX\RS\SUB) Monotonically increased on each packet.\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\EOT\DC2\ETX\US\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ENQ\DC2\ETX\US\v\DC1\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\SOH\DC2\ETX\US\DC2\EM\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\STX\ETX\DC2\ETX\US\FS\GS\n\
    \I\n\
    \\EOT\EOT\NUL\STX\ETX\DC2\ETX\"\STX\FS\SUB< No more packets should follow (from the current sequence).\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\EOT\DC2\ETX\"\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ENQ\DC2\ETX\"\v\SI\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\SOH\DC2\ETX\"\DLE\ETB\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\ETX\ETX\DC2\ETX\"\SUB\ESC\n\
    \\f\n\
    \\EOT\EOT\NUL\ETX\NUL\DC2\EOT$\STX1\ETX\n\
    \\f\n\
    \\ENQ\EOT\NUL\ETX\NUL\SOH\DC2\ETX$\n\
    \\NAK\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\NUL\DC2\ETX%\EOT\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\EOT\DC2\ETX%\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ENQ\DC2\ETX%\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\SOH\DC2\ETX%\DC4\ETB\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\NUL\ETX\DC2\ETX%\SUB\ESC\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\SOH\DC2\ETX&\EOT$\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\EOT\DC2\ETX&\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ACK\DC2\ETX&\r\CAN\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\SOH\DC2\ETX&\EM\US\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\SOH\ETX\DC2\ETX&\"#\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\STX\DC2\ETX(\EOT&\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\EOT\DC2\ETX(\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ENQ\DC2\ETX(\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\SOH\DC2\ETX(\DC4!\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\STX\ETX\DC2\ETX($%\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ETX\DC2\ETX*\EOT\"\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\EOT\DC2\ETX*\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ENQ\DC2\ETX*\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\SOH\DC2\ETX*\DC3\GS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ETX\ETX\DC2\ETX* !\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\EOT\DC2\ETX+\EOT%\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\EOT\DC2\ETX+\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ENQ\DC2\ETX+\r\DC2\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\SOH\DC2\ETX+\DC3 \n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\EOT\ETX\DC2\ETX+#$\n\
    \?\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ENQ\DC2\ETX.\EOT0\SUB0 When 0 this is the bottom-most nested message.\n\
    \\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\EOT\DC2\ETX.\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ENQ\DC2\ETX.\r\DC3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\SOH\DC2\ETX.\DC4+\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ENQ\ETX\DC2\ETX../\n\
    \\r\n\
    \\ACK\EOT\NUL\ETX\NUL\STX\ACK\DC2\ETX0\EOT3\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\EOT\DC2\ETX0\EOT\f\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ACK\DC2\ETX0\r\FS\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\SOH\DC2\ETX0\GS.\n\
    \\SO\n\
    \\a\EOT\NUL\ETX\NUL\STX\ACK\ETX\DC2\ETX012\n\
    \\v\n\
    \\EOT\EOT\NUL\STX\EOT\DC2\ETX2\STX#\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\EOT\DC2\ETX2\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ACK\DC2\ETX2\v\SYN\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\SOH\DC2\ETX2\ETB\RS\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\EOT\ETX\DC2\ETX2!\""